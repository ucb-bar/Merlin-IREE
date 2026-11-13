#!/usr/bin/env python3
"""Generate the standalone kernel suite for the F2 cycle campaign (2026-10-28).

Writes kernels.mlir (one public func per case), cases.h (case table for runner_kernels.c) and
cases.json (shapes, MACs, expected output checksums computed with NumPy from the SAME
deterministic inputs the runner generates on the target).

Inputs: element i of a tensor with seed s is  ((splitmix64(s*0x100000001B3 + i) >> 33) % 31) - 15,
an integer in [-15, 15]; int8 tensors store it as i8, f32 tensors as the exact float. All fp32
products/sums stay below 2^24 in magnitude, so fp32 results are exact and order-independent.
Output checksum: sum_i u64(out_bits_i) * ((i % 65521) + 1)  mod 2^64, where out_bits_i is the
sign-extended i32 value (int outputs) or the u32 IEEE bit pattern (f32 outputs).

Usage: gen_kernels.py OUTDIR [--only name,name] [--no-expect]
"""
import argparse
import json
import os
import sys

import numpy as np

MASK = (1 << 64) - 1


def splitmix_vals(seed, n):
    i = np.arange(n, dtype=np.uint64)
    with np.errstate(over="ignore"):
        z = np.uint64((seed * 0x100000001B3) & MASK) + i
        z = z + np.uint64(0x9E3779B97F4A7C15)
        z = (z ^ (z >> np.uint64(30))) * np.uint64(0xBF58476D1CE4E5B9)
        z = (z ^ (z >> np.uint64(27))) * np.uint64(0x94D049BB133111EB)
        z = z ^ (z >> np.uint64(31))
    return ((z >> np.uint64(33)) % np.uint64(31)).astype(np.int64) - 15


def checksum(arr):
    flat = arr.reshape(-1)
    if flat.dtype == np.float32:
        bits = flat.view(np.uint32).astype(np.uint64)
    else:
        bits = flat.astype(np.int64).view(np.uint64)
    w = (np.arange(flat.size, dtype=np.uint64) % np.uint64(65521)) + np.uint64(1)
    with np.errstate(over="ignore"):
        return int(np.sum(bits * w, dtype=np.uint64))


def mk(seed, shape, dtype):
    v = splitmix_vals(seed, int(np.prod(shape))).reshape(shape)
    return v.astype(np.float32) if dtype == "f32" else v.astype(np.int64)


CASES = []


def case(name, set_, kind, inputs, out_shape, dtype, macs, mlir_body, ref, note=""):
    CASES.append(dict(name=name, set=set_, kind=kind, inputs=inputs, out_shape=out_shape,
                      dtype=dtype, macs=macs, mlir=mlir_body, ref=ref, note=note))


def t(shape, et):
    return "tensor<" + "x".join(str(d) for d in shape) + "x" + et + ">"


def matmul_func(fn, M, K, N, et="i8", acc="i32"):
    zero = "0" if acc == "i32" else "0.0"
    op = "linalg.matmul"
    return f"""
  func.func @{fn}(%a: {t([M,K],et)}, %b: {t([K,N],et)}) -> {t([M,N],acc)} {{
    %z = arith.constant {zero} : {acc}
    %e = tensor.empty() : {t([M,N],acc)}
    %f = linalg.fill ins(%z : {acc}) outs(%e : {t([M,N],acc)}) -> {t([M,N],acc)}
    %r = {op} ins(%a, %b : {t([M,K],et)}, {t([K,N],et)}) outs(%f : {t([M,N],acc)}) -> {t([M,N],acc)}
    return %r : {t([M,N],acc)}
  }}"""


def matmul_pair_func(fn, M, K, N):
    return f"""
  func.func @{fn}(%a: {t([M,K],'i8')}, %b: {t([K,N],'i8')}, %c: {t([K,N],'i8')}) -> ({t([M,N],'i32')}, {t([M,N],'i32')}) {{
    %z = arith.constant 0 : i32
    %e = tensor.empty() : {t([M,N],'i32')}
    %f = linalg.fill ins(%z : i32) outs(%e : {t([M,N],'i32')}) -> {t([M,N],'i32')}
    %r = linalg.matmul ins(%a, %b : {t([M,K],'i8')}, {t([K,N],'i8')}) outs(%f : {t([M,N],'i32')}) -> {t([M,N],'i32')}
    %s = linalg.matmul ins(%a, %c : {t([M,K],'i8')}, {t([K,N],'i8')}) outs(%f : {t([M,N],'i32')}) -> {t([M,N],'i32')}
    return %r, %s : {t([M,N],'i32')}, {t([M,N],'i32')}
  }}"""


def bmm_func(fn, B, M, K, N, et, acc):
    zero = "0" if acc == "i32" else "0.0"
    return f"""
  func.func @{fn}(%a: {t([B,M,K],et)}, %b: {t([B,K,N],et)}) -> {t([B,M,N],acc)} {{
    %z = arith.constant {zero} : {acc}
    %e = tensor.empty() : {t([B,M,N],acc)}
    %f = linalg.fill ins(%z : {acc}) outs(%e : {t([B,M,N],acc)}) -> {t([B,M,N],acc)}
    %r = linalg.batch_matmul ins(%a, %b : {t([B,M,K],et)}, {t([B,K,N],et)}) outs(%f : {t([B,M,N],acc)}) -> {t([B,M,N],acc)}
    return %r : {t([B,M,N],acc)}
  }}"""


def perhead_func(fn, B, M, K, N, et, acc):
    """32 independent rank-2 matmuls (one per head), results re-assembled; mirrors kprofC's
    'each head is compiled as a rank-2 matmul'."""
    zero = "0" if acc == "i32" else "0.0"
    lines = [f"  func.func @{fn}(%a: {t([B,M,K],et)}, %b: {t([B,K,N],et)}) -> {t([B,M,N],acc)} {{",
             f"    %z = arith.constant {zero} : {acc}",
             f"    %e2 = tensor.empty() : {t([M,N],acc)}",
             f"    %f2 = linalg.fill ins(%z : {acc}) outs(%e2 : {t([M,N],acc)}) -> {t([M,N],acc)}",
             f"    %o0 = tensor.empty() : {t([B,M,N],acc)}"]
    for h in range(B):
        lines += [
            f"    %a{h} = tensor.extract_slice %a[{h},0,0] [1,{M},{K}] [1,1,1] : {t([B,M,K],et)} to {t([M,K],et)}",
            f"    %b{h} = tensor.extract_slice %b[{h},0,0] [1,{K},{N}] [1,1,1] : {t([B,K,N],et)} to {t([K,N],et)}",
            f"    %m{h} = linalg.matmul ins(%a{h}, %b{h} : {t([M,K],et)}, {t([K,N],et)}) outs(%f2 : {t([M,N],acc)}) -> {t([M,N],acc)}",
            f"    %o{h+1} = tensor.insert_slice %m{h} into %o{h}[{h},0,0] [1,{M},{N}] [1,1,1] : {t([M,N],acc)} into {t([B,M,N],acc)}"]
    lines += [f"    return %o{B} : {t([B,M,N],acc)}", "  }"]
    return "\n" + "\n".join(lines)


def conv_func(fn, Nb, H, C, F):
    """SAME 3x3 conv as explicit pad + im2col (linalg.generic gather) + i8 matmul. The direct named op
    (linalg.conv_2d_nhwc_hwcf / _q, i8 x i8 -> i32) fails in this compiler's
    iree-global-opt-convert-conv2d-to-img2col pass ('arith.addi' op requires the same type for all
    operands and results: addi(i8, i32)); the explicit form is what that pass is meant to emit."""
    Hp = H + 2
    P = Nb * H * H
    return f"""
  func.func @{fn}(%x: {t([Nb,H,H,C],'i8')}, %w: {t([3,3,C,F],'i8')}) -> {t([Nb,H,H,F],'i32')} {{
    %c0 = arith.constant 0 : i8
    %z = arith.constant 0 : i32
    %p = tensor.pad %x low[0,1,1,0] high[0,1,1,0] {{
    ^bb0(%i: index, %j: index, %k: index, %l: index):
      tensor.yield %c0 : i8
    }} : {t([Nb,H,H,C],'i8')} to {t([Nb,Hp,Hp,C],'i8')}
    %ce = tensor.empty() : {t([Nb,H,H,3,3,C],'i8')}
    %col = linalg.generic {{indexing_maps = [affine_map<(n,h,w,kh,kw,c) -> (n,h+kh,w+kw,c)>, affine_map<(n,h,w,kh,kw,c) -> (n,h,w,kh,kw,c)>],
        iterator_types = ["parallel","parallel","parallel","parallel","parallel","parallel"]}}
        ins(%p : {t([Nb,Hp,Hp,C],'i8')}) outs(%ce : {t([Nb,H,H,3,3,C],'i8')}) {{
    ^bb0(%in: i8, %o: i8):
      linalg.yield %in : i8
    }} -> {t([Nb,H,H,3,3,C],'i8')}
    %a = tensor.collapse_shape %col [[0,1,2],[3,4,5]] : {t([Nb,H,H,3,3,C],'i8')} into {t([P,9*C],'i8')}
    %b = tensor.collapse_shape %w [[0,1,2],[3]] : {t([3,3,C,F],'i8')} into {t([9*C,F],'i8')}
    %e = tensor.empty() : {t([P,F],'i32')}
    %f = linalg.fill ins(%z : i32) outs(%e : {t([P,F],'i32')}) -> {t([P,F],'i32')}
    %m = linalg.matmul ins(%a, %b : {t([P,9*C],'i8')}, {t([9*C,F],'i8')}) outs(%f : {t([P,F],'i32')}) -> {t([P,F],'i32')}
    %r = tensor.expand_shape %m [[0,1,2],[3]] output_shape [{Nb},{H},{H},{F}] : {t([P,F],'i32')} into {t([Nb,H,H,F],'i32')}
    return %r : {t([Nb,H,H,F],'i32')}
  }}"""


def conv_ref(x, w):
    Nb, H, _, C = x.shape
    F = w.shape[3]
    xp = np.pad(x, ((0, 0), (1, 1), (1, 1), (0, 0)))
    cols = np.empty((Nb, H, H, 3, 3, C), dtype=np.int64)
    for dy in range(3):
        for dx in range(3):
            cols[:, :, :, dy, dx, :] = xp[:, dy:dy + H, dx:dx + H, :]
    return (cols.reshape(Nb * H * H, 9 * C) @ w.reshape(9 * C, F)).reshape(Nb, H, H, F)


seed = [100]


def nseed():
    seed[0] += 1
    return seed[0]


def gemm(name, M, K, N, set_="A"):
    s1, s2 = nseed(), nseed()
    case(name, set_, "gemm", [(s1, [M, K], "i8"), (s2, [K, N], "i8")], [[M, N]], "i8xi8->i32", M * K * N,
         matmul_func(name, M, K, N),
         lambda s1=s1, s2=s2: [mk(s1, [M, K], "i8") @ mk(s2, [K, N], "i8")])


def build_cases():
    gemm("gemm_512_512_512", 512, 512, 512)
    gemm("gemm_12544_256_64", 12544, 256, 64)
    gemm("gemm_12544_64_256", 12544, 64, 256)
    gemm("gemm_3136_512_128", 3136, 512, 128)
    gemm("gemm_3136_128_512", 3136, 128, 512)
    gemm("gemm_784_256_1024", 784, 256, 1024)
    for H, C in ((56, 64), (28, 128), (14, 256)):
        s1, s2 = nseed(), nseed()
        nm = f"conv_{H}_{C}"
        case(nm, "A", "conv", [(s1, [4, H, H, C], "i8"), (s2, [3, 3, C, C], "i8")], [[4, H, H, C]],
             "i8xi8->i32", 4 * H * H * C * C * 9, conv_func(nm, 4, H, C, C),
             lambda s1=s1, s2=s2, H=H, C=C: [conv_ref(mk(s1, [4, H, H, C], "i8"), mk(s2, [3, 3, C, C], "i8"))],
             note="NHWC batch 4, 3x3, stride 1, SAME (pad inside the function)")
    # Attention, TinyLlama prefill: 32 heads, seq 16, head dim 64.
    for et, acc, tag, set_ in (("i8", "i32", "", "A"), ("f32", "f32", "_f32", "B")):
        dt = "i8xi8->i32" if et == "i8" else "f32xf32->f32"
        for form in ("perhead", "bmm"):
            for kn, (M, K, N) in (("att_qk", (16, 64, 16)), ("att_pv", (16, 16, 64))):
                s1, s2 = nseed(), nseed()
                nm = f"{kn}{tag}_{form}"
                fn = perhead_func if form == "perhead" else bmm_func
                case(nm, set_, "attention", [(s1, [32, M, K], et), (s2, [32, K, N], et)], [[32, M, N]], dt,
                     32 * M * K * N, fn(nm, 32, M, K, N, et, acc),
                     lambda s1=s1, s2=s2, M=M, K=K, N=N, et=et: [
                         np.matmul(mk(s1, [32, M, K], et), mk(s2, [32, K, N], et)).astype(
                             np.float32 if et == "f32" else np.int64)],
                     note=("32 rank-2 matmuls (one per head)" if form == "perhead" else "linalg.batch_matmul, 32 heads"))
    gemm("mm_down", 16, 5632, 2048)
    gemm("mm_gu", 16, 2048, 5632)
    s1, s2, s3 = nseed(), nseed(), nseed()
    case("mm_gu_pair", "A", "gemm", [(s1, [16, 2048], "i8"), (s2, [2048, 5632], "i8"), (s3, [2048, 5632], "i8")],
         [[16, 5632], [16, 5632]], "i8xi8->i32", 2 * 16 * 2048 * 5632, matmul_pair_func("mm_gu_pair", 16, 2048, 5632),
         lambda s1=s1, s2=s2, s3=s3: [mk(s1, [16, 2048], "i8") @ mk(s2, [2048, 5632], "i8"), mk(s1, [16, 2048], "i8") @ mk(s3, [2048, 5632], "i8")],
         note="gate and up projections, two matmuls in one invoke")
    gemm("mm_o", 16, 2048, 2048)
    gemm("mm_qkv", 16, 2048, 2048 + 256 + 256)
    gemm("mm_lm", 1, 2048, 32000)
    s1, s2 = nseed(), nseed()
    case("mm_lm_f32", "B", "gemm", [(s1, [1, 2048], "f32"), (s2, [2048, 32000], "f32")], [[1, 32000]],
         "f32xf32->f32", 2048 * 32000, matmul_func("mm_lm_f32", 1, 2048, 32000, "f32", "f32"),
         lambda s1=s1, s2=s2: [mk(s1, [1, 2048], "f32") @ mk(s2, [2048, 32000], "f32")])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("outdir")
    ap.add_argument("--only", default="")
    ap.add_argument("--no-expect", action="store_true")
    a = ap.parse_args()
    build_cases()
    sel = [c for c in CASES if not a.only or c["name"] in a.only.split(",")]
    os.makedirs(a.outdir, exist_ok=True)
    with open(os.path.join(a.outdir, "kernels.mlir"), "w") as f:
        f.write("module {" + "".join(c["mlir"] for c in sel) + "\n}\n")
    meta = []
    for c in sel:
        exp = []
        if not a.no_expect:
            for arr in c["ref"]():
                if c["dtype"].endswith("f32"):
                    arr = arr.astype(np.float32)
                else:
                    assert np.abs(arr).max() < 2**31
                exp.append(checksum(arr))
        meta.append(dict(name=c["name"], set=c["set"], kind=c["kind"], dtype=c["dtype"], macs=c["macs"],
                         inputs=c["inputs"], out_shapes=c["out_shape"], expect=exp, note=c["note"]))
        print(c["name"], exp, file=sys.stderr, flush=True)
    with open(os.path.join(a.outdir, "cases.json"), "w") as f:
        json.dump(meta, f, indent=1)
    et = {"i8": "IREE_HAL_ELEMENT_TYPE_SINT_8", "f32": "IREE_HAL_ELEMENT_TYPE_FLOAT_32"}
    with open(os.path.join(a.outdir, "cases.h"), "w") as f:
        f.write("// generated by gen_kernels.py\n")
        for k, c in enumerate(meta):
            for j, (s, shp, dt) in enumerate(c["inputs"]):
                f.write(f"static const iree_hal_dim_t S{k}_{j}[] = {{{', '.join(map(str, shp))}}};\n")
        f.write("static const kcase_t CASES[] = {\n")
        for k, c in enumerate(meta):
            ins = ", ".join(f"{{{s}ull, {len(shp)}, S{k}_{j}, {et[dt]}}}" for j, (s, shp, dt) in enumerate(c["inputs"]))
            exp = ", ".join(f"{e}ull" for e in c["expect"]) or "0"
            fl = 1 if c["dtype"].endswith("f32") else 0
            f.write(f'  {{"{c["name"]}", "module.{c["name"]}", {len(c["inputs"])}, {{{ins}}}, {len(c["out_shapes"])}, {fl}, {{{exp}}}, {0 if a.no_expect else 1}}},\n')
        f.write("};\n#define NCASES " + str(len(meta)) + "\n")


if __name__ == "__main__":
    main()
