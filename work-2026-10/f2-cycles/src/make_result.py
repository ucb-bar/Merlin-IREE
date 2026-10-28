#!/usr/bin/env python3
"""make_result.py ROOT STATUS_LINE [F2_STATE_TEXT] : assemble the final RESULT.md from the CSVs, tables.md and the kept
Decisions section of the current RESULT.md (copied to RESULT.progress.md for history)."""
import csv, os, shutil, sys

ROOT, STATUS = sys.argv[1], sys.argv[2]
F2STATE = sys.argv[3] if len(sys.argv) > 3 else "(see aws ec2 describe-instances)"
cur = open(os.path.join(ROOT, "RESULT.md")).read()
shutil.copy(os.path.join(ROOT, "RESULT.md"), os.path.join(ROOT, "RESULT.progress.md"))
dec = open(os.path.join(ROOT, "decisions.md")).read()
M = list(csv.DictReader(open(os.path.join(ROOT, "models-total-cycles.csv"))))


def g(app, var, inv):
    for r in M:
        if r["app"] == app and r["variant"] == var and r["invoke"] == inv:
            return r
    return None


def fmt(x):
    try:
        return f"{int(float(x)):,}"
    except Exception:
        return x or "-"


rows = []
for app, label, primary in (("resnetfx", "ResNet-50 INT8 b1 (fixW recipe; PRIMARY)", True),
                            ("resnet", "ResNet-50 INT8 b1 (kprofC precision flags)", False),
                            ("tiny", "TinyLlama-1.1B INT8 seq16 (fixW recipe)", True),
                            ("smol", "SmolVLA INT8, 1 denoise step (fixW recipe)", True)):
    p, pw, t = g(app, "plain", "cold"), g(app, "plain", "warm1"), g(app, "trace", "warm1") or g(app, "trace", "cold")
    rows.append("| " + " | ".join([label, fmt(p["cycles"]) if p else "not measured", fmt(pw["cycles"]) if pw else "not measured",
                                   fmt(p["instret"]) if p else "-", (t or {}).get("dispatches", "-") or "-",
                                   (t or {}).get("gemmini_dispatches", "-") or "-", fmt((t or {}).get("gemmini_dispatch_cycles")),
                                   fmt((t or {}).get("rocket_dispatch_cycles")), (p or t or {}).get("check", "-"),
                                   (p or {}).get("log", "-")]) + " |")
head = f"""{STATUS}
NEEDS: (a) SmolVLA total: one rerun on ONE F2 instance (both ELFs in its two slots) with RUN_TIMEOUT raised to ~24 h (host edit, recorded); runtime unknown beyond >4 h. DEFAULT TAKEN: not rerun. Optional ~15-min sizing step first: standalone F2 run of the dominant fp32 vision-attention shape (batch_matmul 12x1024x1024x64) via gen_kernels to set the cap. (b) Optional: pick the ResNet reference recipe (fixW flags = primary here; kprofC precision flags also reported).

# F2 cycle campaign: three models + 16 kernels on FireSim F2 (Gemmini DIM16, int8), 2026-10-28

Hardware for every run: hw_config f2_gemmini_rocket_ddr3llc_60mhz, AGFI agfi-02410ef1a8461b435, FireSim-f2 driver md5 52297743...
(merlin-p1-f2-a/b/c). Compiler: fixW build-numerics iree-compile (sha256 6394f9d7... / lib c3c2aba4...), the b89be5a profile's compiler.
Calibration: the b89be5a kernel ELF re-run here reproduces all 36 cold+warm cycle counts exactly (calib/calib-compare.csv).
Cycles = rdcycle around one iree_vm_invoke (inputs resident; model init outside the window). Provenance: PROVENANCE.md.
F2 instances: {F2STATE}

## 1. Three models (run in parallel on three F2 instances; models-total-cycles.csv)
| model | cold invoke cycles | warm invoke cycles | instret (cold) | dispatches | Gemmini dispatches | Gemmini dispatch cycles (warm) | Rocket dispatch cycles (warm) | output check | log |
|---|---|---|---|---|---|---|---|---|---|
""" + "\n".join(rows) + """

Notes:
- ResNet: the kprofC precision flags (--iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false
  --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false) make the fused fp32 requant epilogues inside
  Gemmini dispatches much slower (1.85x whole model). The same MLIR without them (fixW ResNet recipe) gives 2,088,696,169 cycles cold,
  = old perfX 2,088,208,536 (+0.02%) and instret 866,737,786 = old Spike 866,737,398. Controlled check, runs r2-resnetfx-*.
- TinyLlama: the fp32 lm_head (left unquantized by the exporter, 16 rows, no KV cache) is ONE Rocket dispatch of ~10.9 G cycles = ~82%
  of the invoke; all 154 int8 linears together are ~1.58 G cycles on Gemmini (~12%).
- Dispatch "Gemmini" = compiled function contains Gemmini RoCC instructions; its interval includes any fused scalar epilogue.

"""
tables = open(os.path.join(ROOT, "tables.md")).read()
tail = """
## Files
- kernels-A-int8.csv (Set A, the 16 kernels int8 + extra forms), kernels-B-native-dtype.csv (Set B), kernels-all-cases.csv (every case incl. trace split),
  models-total-cycles.csv, kernels-in-model.csv (the 16 kernels as the models run them, + 'all int8 linears' rows; kernels-in-model-int8.csv is an identical copy under the originally requested name - it also holds the fp32 rows, e.g. TinyLlama attention/lm_head),
  models-contraction-shapes.csv (every contraction dispatch shape in each model), calib/calib-compare.csv, verify/cases.fixed.json.
- runs/<run>/ raw uartlog, driver.err (FireSim totals), elf.sha256, f2run.conf, fpga-before.txt, start/end/rc. RESULT.progress.md = running log.
- Sources: src/ (gen_kernels.py, runner_kernels.c, runner_model.c, gen_app.py, compile_rv.sh, build_rt.sh, f2submit.sh, collect.py, make_tables.py).
"""
open(os.path.join(ROOT, "RESULT.md"), "w").write(head + "## 2. Kernel tables\n\n" + tables + "\n" + dec + tail)
print("RESULT.md written")
