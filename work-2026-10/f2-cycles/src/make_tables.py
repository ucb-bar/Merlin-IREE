#!/usr/bin/env python3
"""make_tables.py ROOT : from kernels-all-cases.csv (+ in-model + dispatch classes) write
kernels-A-int8.csv (the 16 kernels, int8) and kernels-B-native-dtype.csv (each kernel in the dtype(s) it
has inside the three compiled models, with placement), plus markdown tables in tables.md."""
import csv, json, os, re, sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else "/scratch2/loren/f2-cycles"
K = {r["kernel"]: r for r in csv.DictReader(open(os.path.join(ROOT, "kernels-all-cases.csv")))}

# The 16 requested kernels -> Set A case(s) (int8). att_* use the per-head form (kprofC's form) as primary.
LIST = [
    ("gemm 512x512x512", "gemm_512_512_512"), ("gemm 12544x256x64", "gemm_12544_256_64"),
    ("gemm 12544x64x256", "gemm_12544_64_256"), ("gemm 3136x512x128", "gemm_3136_512_128"),
    ("gemm 3136x128x512", "gemm_3136_128_512"), ("gemm 784x256x1024", "gemm_784_256_1024"),
    ("conv 3x3 56x56 64->64 b4", "conv_56_64"), ("conv 3x3 28x28 128->128 b4", "conv_28_128"),
    ("conv 3x3 14x14 256->256 b4", "conv_14_256"), ("att_pv (32 heads)", "att_pv_perhead"),
    ("att_qk (32 heads)", "att_qk_perhead"), ("mm_down 16x5632x2048", "mm_down"),
    ("mm_gu 16x2048x5632 x2", "mm_gu_pair"), ("mm_o 16x2048x2048", "mm_o"),
    ("mm_qkv 16x2048x(2048+256+256)", "mm_qkv"), ("mm_lm 1x2048x32000", "mm_lm"),
]
EXTRA_A = ["att_pv_bmm", "att_qk_bmm", "mm_gu"]

# Native dtype per kernel, from tonight's compiled model IR (dispatch names + placement, apps/*/dispatch-classes.json)
# and the exporters' op audits (models/*/NOTES.md / opcounts). (case, dtype, models, placement, how it occurs)
NATIVE = {
    "gemm_512_512_512": [(None, "-", "none", "-", "not present in ResNet-50, TinyLlama or SmolVLA (no 512x512x512 contraction)")],
    "gemm_12544_256_64": [("gemm_12544_256_64", "int8 (i8xi8->i32)", "ResNet-50", "Gemmini", "1x1 conv 256->64 @56x56; in the b1 model as matmul_3136x64x256")],
    "gemm_12544_64_256": [("gemm_12544_64_256", "int8 (i8xi8->i32)", "ResNet-50", "Gemmini", "1x1 conv 64->256 @56x56; b1: matmul_3136x256x64")],
    "gemm_3136_512_128": [("gemm_3136_512_128", "int8 (i8xi8->i32)", "ResNet-50", "Gemmini", "1x1 conv 512->128 @28x28; b1: matmul_784x128x512")],
    "gemm_3136_128_512": [("gemm_3136_128_512", "int8 (i8xi8->i32)", "ResNet-50", "Gemmini", "1x1 conv 128->512 @28x28; b1: matmul_784x512x128")],
    "gemm_784_256_1024": [("gemm_784_256_1024", "int8 (i8xi8->i32)", "ResNet-50", "Gemmini", "1x1 conv 256->1024 @14x14; b1: matmul_196x1024x256")],
    "conv_56_64": [("conv_56_64", "int8 (i8xi8->i32)", "ResNet-50", "Rocket im2col + Gemmini matmul", "3x3 conv via img2col; b1: generic_56x56x3x3x64 + matmul_3136x64x576")],
    "conv_28_128": [("conv_28_128", "int8 (i8xi8->i32)", "ResNet-50", "Rocket im2col + Gemmini matmul", "b1: generic_28x28x3x3x128 + matmul_784x128x1152")],
    "conv_14_256": [("conv_14_256", "int8 (i8xi8->i32)", "ResNet-50", "Rocket im2col + Gemmini matmul", "b1: generic_14x14x3x3x256 + matmul_196x256x2304")],
    "att_pv_perhead": [("att_pv_f32_bmm", "fp32", "TinyLlama", "Rocket (scalar)", "batch_matmul_32x16x64x16_f32 (eager attention, not quantized); SmolVLA attention is also fp32 but with other shapes (15 heads)")],
    "att_qk_perhead": [("att_qk_f32_bmm", "fp32", "TinyLlama", "Rocket (scalar)", "batch_matmul_32x16x16x64_f32; SmolVLA attention fp32, other shapes")],
    "mm_down": [("mm_down", "int8 (i8xi8->i32)", "TinyLlama", "Gemmini", "matmul_16x2048x5632 (+ Rocket dynamic-quant/dequant dispatches around it)")],
    "mm_gu_pair": [("mm_gu_pair", "int8 (i8xi8->i32)", "TinyLlama", "Gemmini", "2x matmul_16x5632x2048 per layer")],
    "mm_o": [("mm_o", "int8 (i8xi8->i32)", "TinyLlama", "Gemmini", "matmul_16x2048x2048")],
    "mm_qkv": [("mm_qkv", "int8 (i8xi8->i32)", "TinyLlama", "Gemmini", "model runs q 16x2048x2048 + k,v 16x2048x256 as 3 separate dispatches")],
    "mm_lm": [("mm_lm_f32", "fp32", "TinyLlama", "Rocket (scalar)", "lm_head left unquantized by the exporter: batch_matmul_1x16x32000x2048_f32 (16 rows in the model)")],
}


def fnum(x):
    try:
        return float(x)
    except Exception:
        return None


def main():
    A = []
    for label, case in LIST + [(c, c) for c in EXTRA_A]:
        r = K.get(case, {})
        A.append(dict(kernel=label, case=case, dtype=r.get("dtype", ""), shape=r.get("shape", ""), MACs=r.get("MACs", ""),
                      cold_cycles=r.get("cold_cycles", ""), warm_median=r.get("warm_median", ""), warm_min=r.get("warm_min", ""),
                      warm_max=r.get("warm_max", ""), MACs_per_cycle=r.get("MACs_per_cycle", ""), pct_of_256_peak=r.get("pct_of_256_peak", ""),
                      placement=r.get("placement", ""), dispatches=r.get("dispatches", ""), gemmini_dispatch_cycles=r.get("gemmini_dispatch_cycles", ""),
                      rocket_dispatch_cycles=r.get("rocket_dispatch_cycles", ""), warm_instret_median=r.get("warm_instret_median", ""),
                      check=r.get("check", ""), extra=("" if (label, case) in LIST else "extra form"), note=r.get("note", ""),
                      log=r.get("log", ""), trace_log=r.get("trace_log", "")))
    ak = list(A[0].keys())
    with open(os.path.join(ROOT, "kernels-A-int8.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, ak); w.writeheader(); [w.writerow(r) for r in A]
    B = []
    for label, case in LIST:
        for (bc, dt, models, pl, how) in NATIVE[case]:
            r = K.get(bc, {}) if bc else {}
            B.append(dict(kernel=label, native_case=bc or "-", dtype=dt, models=models, placement=pl,
                          measured_placement=r.get("placement", ""), shape=r.get("shape", ""), MACs=r.get("MACs", ""),
                          cold_cycles=r.get("cold_cycles", ""), warm_median=r.get("warm_median", ""), warm_min=r.get("warm_min", ""),
                          warm_max=r.get("warm_max", ""), MACs_per_cycle=r.get("MACs_per_cycle", ""),
                          pct_of_256_peak=(r.get("pct_of_256_peak", "") if "Gemmini" in pl else ""),
                          same_binary_as_setA=("yes" if bc == case else "no" if bc else ""), how_it_occurs=how,
                          check=r.get("check", ""), log=r.get("log", "")))
    bk = list(B[0].keys())
    with open(os.path.join(ROOT, "kernels-B-native-dtype.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, bk); w.writeheader(); [w.writerow(r) for r in B]

    def md(rows, cols, hdr=None):
        out = ["| " + " | ".join(hdr or cols) + " |", "|" + "---|" * len(cols)]
        for r in rows:
            out.append("| " + " | ".join(str(r.get(c, "")) for c in cols) + " |")
        return "\n".join(out)
    T = ["### Set A: int8 standalone (i8 x i8 -> i32), 1 cold + 5 warm invokes, rdcycle around iree_vm_invoke",
         md(A, ["kernel", "cold_cycles", "warm_median", "warm_min", "warm_max", "MACs_per_cycle", "pct_of_256_peak", "placement", "check"]),
         "", "### Set B: native dtype as in the compiled models",
         md(B, ["kernel", "dtype", "models", "placement", "native_case", "cold_cycles", "warm_median", "MACs_per_cycle", "pct_of_256_peak", "check"])]
    p = os.path.join(ROOT, "models-total-cycles.csv")
    if os.path.exists(p):
        M = list(csv.DictReader(open(p)))
        T += ["", "### Models (whole invoke, rdcycle around iree_vm_invoke)",
              md(M, ["app", "variant", "invoke", "cycles", "instret", "dispatches", "gemmini_dispatches", "gemmini_dispatch_cycles", "rocket_dispatch_cycles", "check"])]
    p = os.path.join(ROOT, "kernels-in-model.csv")
    if os.path.exists(p):
        I = [r for r in csv.DictReader(open(p)) if r["invoke"] == "warm1"]
        T += ["", "### Kernels as used inside the models (trace build, warm invoke)",
              md(I, ["kernel", "model", "dispatch_shapes", "dtypes", "placement", "calls", "cycles_per_call", "main_dispatch_min", "main_dispatch_max", "cycles_total", "MACs_per_cycle", "pct_of_256_peak", "pct_of_model_invoke"])]
    open(os.path.join(ROOT, "tables.md"), "w").write("\n".join(T) + "\n")
    print("tables written")


if __name__ == "__main__":
    main()
