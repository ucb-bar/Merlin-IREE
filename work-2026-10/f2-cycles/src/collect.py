#!/usr/bin/env python3
"""collect.py ROOT : parse FireSim uartlogs under ROOT/runs and build the campaign CSVs in ROOT/.
Every number comes from a run log; each row cites its log file. Pure Python (no NumPy)."""
import csv, json, os, re, statistics, sys
from collections import defaultdict

ROOT = sys.argv[1] if len(sys.argv) > 1 else "/scratch2/loren/f2-cycles"
RUNS = os.path.join(ROOT, "runs")
APPS = os.path.join(ROOT, "apps")
PEAK = 256  # MAC/cycle, Gemmini DIM16


def lines(path):
    with open(path, errors="replace") as f:
        for l in f:
            yield l.rstrip("\r\n").replace("\r", "")


def parse_trace(it):
    """consume PERFX rows after a TRACE_BEGIN line until PERFX_END"""
    rows = []
    for l in it:
        if l.startswith("PERFX_END"):
            break
        if l.startswith("PERFX,"):
            p = l.split(",", 8)
            rows.append(dict(seq=int(p[1]), begin=int(p[2]), end=int(p[3]), ordinal=int(p[4]),
                             wg=(int(p[5]), int(p[6]), int(p[7])), name=p[8]))
        elif l.startswith("PERFX_TRACE"):
            m = re.search(r"count=(\d+) dropped=(\d+)", l)
            if m and int(m.group(2)):
                raise SystemExit(f"dropped trace records: {l}")
    return rows


def parse_kernels(path):
    cases = defaultdict(lambda: dict(cyc={}, ins={}, check=None, sums=None, trace={}, error=None))
    it = lines(path)
    for l in it:
        if l.startswith("CASE "):
            _, n, i, c, r = l.split()
            cases[n]["cyc"][int(i)] = int(c); cases[n]["ins"][int(i)] = int(r)
        elif l.startswith("CHECK "):
            p = l.split(); cases[p[1]]["check"] = int(p[2]); cases[p[1]]["sums"] = p[3:]
        elif l.startswith("CASE_ERROR"):
            cases[l.split()[1]]["error"] = l
        elif l.startswith("TRACE_BEGIN"):
            _, n, i = l.split(); cases[n]["trace"][int(i)] = parse_trace(it)
    return cases


def parse_model(path):
    inv = {}; checks = defaultdict(list); trace = {}; meta = {}
    it = lines(path)
    for l in it:
        if l.startswith("MODEL_BEGIN"):
            meta = dict(kv.split("=", 1) for kv in l.split()[2:] if "=" in kv)
        elif l.startswith("INVOKE "):
            p = l.split(); inv[int(p[1])] = dict(kv.split("=") for kv in p[2:])
        elif l.startswith("CHECK "):
            p = l.split(); checks[int(p[1])].append(dict(kv.split("=", 1) for kv in p[2:] if "=" in kv))
        elif l.startswith("TRACE_BEGIN"):
            trace[int(l.split()[1])] = parse_trace(it)
        elif l.startswith("MODEL_DONE") or l.startswith("MODEL_FAILED"):
            meta["done"] = l
    return meta, inv, checks, trace


def classes(app):
    p = os.path.join(APPS, app, "dispatch-classes.json")
    return json.load(open(p)) if os.path.exists(p) else {}


def short(name):
    return re.sub(r"^.*_dispatch_\d+_", "", name)


def macs_of(name):
    s = short(name)
    m = re.match(r"(batch_)?matmul_([0-9x]+)_", s)
    if not m:
        return 0
    d = [int(x) for x in m.group(2).split("x")]
    r = 1
    for x in d:
        r *= x
    return r


def rel(p):
    return os.path.relpath(p, ROOT)


def kernel_tables():
    cj = json.load(open(os.path.join(APPS, "kernels", "cases.json")))
    meta = {c["name"]: c for c in cj}
    plain = os.path.join(RUNS, "r1-kernels-plain", "uartlog")
    trace = os.path.join(RUNS, "r1-kernels-trace", "uartlog")
    P = parse_kernels(plain) if os.path.exists(plain) else {}
    T = parse_kernels(trace) if os.path.exists(trace) else {}
    cls = classes("kernels")
    fx = os.path.join(ROOT, "verify", "cases.fixed.json")  # expectations from the closure-fixed generator
    fixed = {c["name"]: c["expect"] for c in json.load(open(fx))} if os.path.exists(fx) else {}
    rows = []
    for name, c in meta.items():
        p = P.get(name)
        row = dict(kernel=name, set=c["set"], dtype=c["dtype"], shape=" ; ".join("x".join(map(str, s)) for _, s, _ in c["inputs"]),
                   MACs=c["macs"], note=c["note"])
        if not p or 0 not in p["cyc"]:
            row.update(status=(p or {}).get("error") or "not measured", log=rel(plain)); rows.append(row); continue
        warm = [p["cyc"][i] for i in sorted(p["cyc"]) if i > 0]
        wi = [p["ins"][i] for i in sorted(p["ins"]) if i > 0]
        med = statistics.median(warm)
        row.update(cold_cycles=p["cyc"][0], warm_median=med, warm_min=min(warm), warm_max=max(warm), warm_runs=len(warm),
                   cold_instret=p["ins"][0], warm_instret_median=statistics.median(wi),
                   MACs_per_cycle=round(c["macs"] / med, 4), pct_of_256_peak=round(100 * c["macs"] / med / PEAK, 4),
                   check=("PASS bitwise" if [int(x) for x in (p["sums"] or [])] == fixed.get(name, c["expect"]) else "FAIL")
                   + ("" if p["check"] == 0 else " (runner flag 1: generator expectation bug, see RESULT.md)" if [int(x) for x in (p["sums"] or [])] == fixed.get(name) else ""),
                   log=rel(plain))
        t = T.get(name)
        if t and any(i > 0 for i in t["trace"]):
            per = []
            for i in sorted(t["trace"]):
                if i == 0:
                    continue
                g = r_ = 0; nd = 0; ng = 0
                for d in t["trace"][i]:
                    dur = d["end"] - d["begin"]; nd += 1
                    if cls.get(d["name"], {}).get("placement") == "Gemmini":
                        g += dur; ng += 1
                    else:
                        r_ += dur
                per.append((g, r_, nd, ng))
            gm = statistics.median(x[0] for x in per); rm = statistics.median(x[1] for x in per)
            tw = statistics.median(t["cyc"][i] for i in t["cyc"] if i > 0)
            names = sorted({short(d["name"]) + ":" + cls.get(d["name"], {}).get("placement", "?") for d in t["trace"][1]})
            row.update(trace_warm_median=tw, gemmini_dispatch_cycles=gm, rocket_dispatch_cycles=rm,
                       outside_dispatch_cycles=tw - gm - rm, dispatches=per[0][2], gemmini_dispatches=per[0][3],
                       placement=("Gemmini" if per[0][3] == per[0][2] else "Rocket" if per[0][3] == 0 else "mixed"),
                       dispatch_names=" | ".join(names), trace_log=rel(trace))
        rows.append(row)
    return rows


# ---- in-model attribution ---------------------------------------------------------------------
# list kernel -> (model, list of dispatch short-name regexes, how)
KMAP = {
    "gemm_12544_256_64": ("resnet", [r"^matmul_3136x64x256_i8xi8xi32$"], "b1 analogue of the b4 1x1 conv 256->64 @56x56 (M=3136 not 12544)"),
    "gemm_12544_64_256": ("resnet", [r"^matmul_3136x256x64_i8xi8xi32$"], "b1 analogue (M=3136 not 12544)"),
    "gemm_3136_512_128": ("resnet", [r"^matmul_784x128x512_i8xi8xi32$"], "b1 analogue (M=784 not 3136)"),
    "gemm_3136_128_512": ("resnet", [r"^matmul_784x512x128_i8xi8xi32$"], "b1 analogue (M=784 not 3136)"),
    "gemm_784_256_1024": ("resnet", [r"^matmul_196x1024x256_i8xi8xi32$"], "b1 analogue (M=196 not 784)"),
    "conv_56_64": ("resnet", [r"^generic_56x56x3x3x64_i8$", r"^matmul_3136x64x576_i8xi8xi32$"], "b1: im2col gather (Rocket) + matmul 3136x64x576"),
    "conv_28_128": ("resnet", [r"^generic_28x28x3x3x128_i8$", r"^matmul_784x128x1152_i8xi8xi32$"], "b1: im2col + matmul 784x128x1152 (incl. the stride-2 entry conv with the same GEMM shape)"),
    "conv_14_256": ("resnet", [r"^generic_14x14x3x3x256_i8$", r"^matmul_196x256x2304_i8xi8xi32$"], "b1: im2col + matmul 196x256x2304 (incl. stride-2 entry conv)"),
    "mm_down": ("tiny", [r"^matmul_16x2048x5632_i8xi8xi32$"], "exact shape"),
    "mm_gu_pair": ("tiny", [r"^matmul_16x5632x2048_i8xi8xi32$"], "gate+up: 2 dispatches per layer"),
    "mm_o": ("tiny", [r"^matmul_16x2048x2048_i8xi8xi32$#o"], "exact shape; q and o have the identical shape and are told apart by order within each layer (2nd 16x2048x2048 dispatch = o): an assumption"),
    "mm_qkv": ("tiny", [r"^matmul_16x2048x2048_i8xi8xi32$#q", r"^matmul_16x256x2048_i8xi8xi32$"], "model runs q (16x2048x2048, 1st of the two same-shape dispatches per layer: an assumption) and k,v (16x2048x256 each) as 3 dispatches"),
    "att_qk": ("tiny", [r"^batch_matmul_32x16x16x64_f32$"], "FP32 in the model (Rocket)"),
    "att_pv": ("tiny", [r"^batch_matmul_32x16x64x16_f32$"], "FP32 in the model (Rocket)"),
    "mm_lm": ("tiny", [r"^batch_matmul_1x16x32000x2048_f32$"], "FP32 in the model, 16 rows (no KV cache) not 1"),
}


# SmolVLA has none of the 16 exact shapes (hidden 960/720/768, 15 heads); analogue rows by family.
KMAP_EXTRA = [
    ("att_qk", ("smol", [r"^batch_matmul_\d+x\d+x\d+x64_f32$"], "SmolVLA analogue: fp32 QK^T batch_matmuls, head dim 64 (15 heads, seq 241/291/50); not the TinyLlama shape")),
    ("att_pv", ("smol", [r"^batch_matmul_\d+x\d+x64x\d+_f32$"], "SmolVLA analogue: fp32 PV batch_matmuls (N=64)")),
    ("int8 linears (all)", ("smol", [r"^matmul_\d+x\d+x\d+_i8xi8xi32$"], "SmolVLA: every int8 projection/MLP matmul (vision M=1024, VLM M=241, expert M=50); mm_* analogues")),
    ("int8 linears (all)", ("tiny", [r"^matmul_\d+x\d+x\d+_i8xi8xi32$"], "TinyLlama: every int8 projection/MLP matmul (sum of mm_qkv, mm_o, mm_gu, mm_down)")),
    ("int8 contractions (all)", ("resnet", [r"^matmul_\d+x\d+x\d+_i8xi8xi32$"], "ResNet-50: every int8 conv/fc matmul (53 convs + fc)")),
]


def shape_rows(app, model, trace_rows, cls, invoke_total, log, inv):
    agg = {}
    for d in trace_rows:
        s = short(d["name"])
        if not re.match(r"(batch_)?matmul|conv|attention|generic_.*x3x3x|mmt4d", s):
            continue
        a = agg.setdefault(s, dict(model=model, app=app, invoke=inv, dispatch_shape=s, placement=cls.get(d["name"], {}).get("placement", "?"),
                                   calls=0, cycles_total=0, MACs_total=0, log=log))
        a["calls"] += 1; a["cycles_total"] += d["end"] - d["begin"]; a["MACs_total"] += macs_of(d["name"])
    out = []
    for a in sorted(agg.values(), key=lambda a: -a["cycles_total"]):
        a["cycles_per_call"] = round(a["cycles_total"] / a["calls"], 1)
        a["MACs_per_cycle"] = round(a["MACs_total"] / a["cycles_total"], 4) if a["MACs_total"] else ""
        a["pct_of_256_peak"] = round(100 * a["MACs_total"] / a["cycles_total"] / PEAK, 4) if a["MACs_total"] else ""
        a["pct_of_model_invoke"] = round(100 * a["cycles_total"] / invoke_total, 4)
        out.append(a)
    return out


def model_inmodel(model, trace_rows, cls, invoke_total, log):
    """aggregate one invoke's dispatches by list kernel"""
    out = []
    seq = [(short(d["name"]), d) for d in trace_rows]
    # tag q/o alternation for tinyllama 16x2048x2048
    k = 0; tagged = []
    for s, d in seq:
        t = s
        if s == "matmul_16x2048x2048_i8xi8xi32":
            t = s + ("#q" if k % 2 == 0 else "#o"); k += 1
        tagged.append((t, s, d))
    for kern, (m, pats, how) in [(k, v) for k, v in KMAP.items()] + KMAP_EXTRA:
        if not model.startswith(m):
            continue
        def hit(p, t, s):
            if "#" in p:
                base, tag = p.split("#")
                return re.match(base, s) is not None and t.endswith("#" + tag)
            return re.match(p, s) is not None
        sel = [(t, s, d) for t, s, d in tagged if any(hit(p, t, s) for p in pats)]
        if not sel:
            out.append(dict(kernel=kern, model=model, status="no matching dispatch", how=how, log=log)); continue
        tot = sum(d["end"] - d["begin"] for _, _, d in sel)
        g = sum(d["end"] - d["begin"] for _, s, d in sel if cls.get(d["name"], {}).get("placement") == "Gemmini")
        macs = sum(macs_of(d["name"]) for _, _, d in sel)
        dt = sorted({re.search(r"_([a-z0-9]+(x[a-z0-9]+)*)$", s).group(1) for _, s, _ in sel})
        pls = sorted({cls.get(d["name"], {}).get("placement", "?") for _, _, d in sel})
        nmain = len([1 for t, s, d in sel if hit(pats[0] if kern == "mm_qkv" else pats[-1], t, s)])
        mains = [d["end"] - d["begin"] for t, s, d in sel if re.match(r"(batch_)?matmul", s)]
        out.append(dict(main_dispatch_min=min(mains) if mains else "", main_dispatch_median=statistics.median(mains) if mains else "",
                        main_dispatch_max=max(mains) if mains else "", kernel=kern, model=model, dispatch_shapes=" + ".join(sorted({s for _, s, _ in sel})), dtypes="/".join(dt),
                        placement="+".join(pls), dispatches=len(sel), calls=nmain if kern != "mm_gu_pair" else nmain // 2,
                        cycles_total=tot, gemmini_cycles=g, rocket_cycles=tot - g,
                        cycles_per_call=round(tot / max(1, (nmain if kern != "mm_gu_pair" else nmain // 2)), 1),
                        MACs_total=macs, MACs_per_cycle=round(macs / tot, 4) if tot else "",
                        pct_of_256_peak=round(100 * macs / tot / PEAK, 4) if tot else "",
                        pct_of_model_invoke=round(100 * tot / invoke_total, 4), how=how, log=log))
    return out


def main():
    os.makedirs(ROOT, exist_ok=True)
    kr = kernel_tables()
    keys = ["kernel", "set", "dtype", "shape", "MACs", "cold_cycles", "warm_median", "warm_min", "warm_max", "warm_runs",
            "MACs_per_cycle", "pct_of_256_peak", "cold_instret", "warm_instret_median", "check", "placement", "dispatches",
            "gemmini_dispatches", "gemmini_dispatch_cycles", "rocket_dispatch_cycles", "outside_dispatch_cycles",
            "trace_warm_median", "dispatch_names", "note", "status", "log", "trace_log"]
    with open(os.path.join(ROOT, "kernels-all-cases.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, keys, extrasaction="ignore"); w.writeheader(); [w.writerow(r) for r in kr]
    # models
    mrows = []; inm = []; shp = []
    for app, model in (("resnet", "ResNet-50 INT8 (ONNX QDQ, b1; kprofC flag set)"), ("resnetfx", "ResNet-50 INT8 (ONNX QDQ, b1; fixW ResNet flag set)"), ("tiny", "TinyLlama-1.1B INT8 (torchao dyn, seq16)"), ("smol", "SmolVLA INT8 (1 denoise step)")):
        cls = classes(app)
        for var in ("plain", "trace"):
            import glob
            cands = sorted(glob.glob(os.path.join(RUNS, f"r*-{app}-{var}", "uartlog")))
            if not cands:
                continue
            path = cands[-1]
            meta, inv, checks, trace = parse_model(path)
            for i in sorted(inv):
                tr = trace.get(i) or []
                ng = sum(1 for d in tr if cls.get(d["name"], {}).get("placement") == "Gemmini")
                gcy = sum(d["end"] - d["begin"] for d in tr if cls.get(d["name"], {}).get("placement") == "Gemmini")
                rcy = sum(d["end"] - d["begin"] for d in tr if cls.get(d["name"], {}).get("placement") != "Gemmini")
                ch = checks.get(i, [])
                mrows.append(dict(model=model, app=app, run=os.path.basename(os.path.dirname(path)), variant=var, invoke=("cold" if i == 0 else f"warm{i}"),
                                  cycles=inv[i]["cycles"], instret=inv[i]["instret"],
                                  dispatches=len(tr) if tr else "", gemmini_dispatches=ng if tr else "", rocket_dispatches=len(tr) - ng if tr else "",
                                  gemmini_dispatch_cycles=gcy if tr else "", rocket_dispatch_cycles=rcy if tr else "",
                                  outside_dispatch_cycles=int(inv[i]["cycles"]) - gcy - rcy if tr else "",
                                  check="; ".join(f"out{j}: errors={c.get('errors')} max_abs={c.get('max_abs')} argmax={c.get('argmax')}/{c.get('ref_argmax')}" for j, c in enumerate(ch)),
                                  load_cycles=meta.get("load_cycles", ""), log=rel(path)))
                if var == "trace" and tr:
                    shp += shape_rows(app, model, tr, cls, int(inv[i]["cycles"]), rel(path), "cold" if i == 0 else f"warm{i}")
                    for r in model_inmodel(app, tr, cls, int(inv[i]["cycles"]), rel(path)):
                        r["invoke"] = "cold" if i == 0 else f"warm{i}"
                        inm.append(r)
    mk = ["model", "app", "run", "variant", "invoke", "cycles", "instret", "dispatches", "gemmini_dispatches", "rocket_dispatches",
          "gemmini_dispatch_cycles", "rocket_dispatch_cycles", "outside_dispatch_cycles", "load_cycles", "check", "log"]
    with open(os.path.join(ROOT, "models-total-cycles.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, mk, extrasaction="ignore"); w.writeheader(); [w.writerow(r) for r in mrows]
    if not any(r["model"] == "smol" for r in inm):
        for kern in ["att_qk", "att_pv", "int8 linears (all)"] + [k for k in KMAP]:
            inm.append(dict(kernel=kern, model="smol", invoke="-", status="not measured: SmolVLA runs timed out (rc 124, 14400 s) before invoke 0 ended",
                            how=("none of the 16 exact shapes occur in SmolVLA (hidden 960/720/768, 15/12 heads); analogue rows would come from the trace"),
                            log="runs/r1-smol-trace/driver.err"))
    ik = ["kernel", "model", "invoke", "dispatch_shapes", "dtypes", "placement", "calls", "dispatches", "cycles_per_call",
          "cycles_total", "main_dispatch_min", "main_dispatch_median", "main_dispatch_max", "gemmini_cycles", "rocket_cycles", "MACs_total", "MACs_per_cycle", "pct_of_256_peak",
          "pct_of_model_invoke", "how", "status", "log"]
    with open(os.path.join(ROOT, "kernels-in-model.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, ik, extrasaction="ignore"); w.writeheader(); [w.writerow(r) for r in inm]
    sk = ["model", "app", "invoke", "dispatch_shape", "placement", "calls", "cycles_per_call", "cycles_total", "MACs_total",
          "MACs_per_cycle", "pct_of_256_peak", "pct_of_model_invoke", "log"]
    with open(os.path.join(ROOT, "models-contraction-shapes.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, sk, extrasaction="ignore"); w.writeheader(); [w.writerow(r) for r in shp]
    print(len(kr), "kernel cases;", len(mrows), "model rows;", len(inm), "in-model rows")


if __name__ == "__main__":
    main()
