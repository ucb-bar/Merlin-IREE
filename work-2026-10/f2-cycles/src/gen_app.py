#!/usr/bin/env python3
"""gen_app.py APPDIR NAME ENTRY NINV ATOL RTOL --vmfb PATH --in PATH:DTYPE:DIMxDIM... --ref PATH ...
Writes APPDIR/{runner.c (copy), cfg.h, embed.S}."""
import argparse, os, shutil
ap = argparse.ArgumentParser()
ap.add_argument("appdir"); ap.add_argument("name"); ap.add_argument("entry"); ap.add_argument("ninv", type=int)
ap.add_argument("atol", type=float); ap.add_argument("rtol", type=float)
ap.add_argument("--vmfb", required=True); ap.add_argument("--in", dest="ins", action="append", default=[])
ap.add_argument("--ref", action="append", default=[])
a = ap.parse_args()
ET = {"f32": ("IREE_HAL_ELEMENT_TYPE_FLOAT_32", 4), "i64": ("IREE_HAL_ELEMENT_TYPE_SINT_64", 8),
      "bf16": ("IREE_HAL_ELEMENT_TYPE_BFLOAT_16", 2), "i1": ("IREE_HAL_ELEMENT_TYPE_BOOL_8", 1),
      "i8": ("IREE_HAL_ELEMENT_TYPE_SINT_8", 1), "i32": ("IREE_HAL_ELEMENT_TYPE_SINT_32", 4)}
os.makedirs(a.appdir, exist_ok=True)
shutil.copy(os.path.join(os.path.dirname(os.path.abspath(__file__)), "runner_model.c"), os.path.join(a.appdir, "runner.c"))
S = [".section .vmfb_data,\"a\",@progbits", ".balign 64", ".global model_vmfb_payload", "model_vmfb_payload:",
     f'.incbin "{a.vmfb}"', ".global model_vmfb_payload_end", "model_vmfb_payload_end:",
     ".section .rodata,\"a\",@progbits", ".balign 8", ".global model_vmfb_start", "model_vmfb_start: .quad model_vmfb_payload",
     ".global model_vmfb_end", "model_vmfb_end: .quad model_vmfb_payload_end"]
H = [f'#define MODEL_NAME "{a.name}"', f'#define ENTRY "{a.entry}"', f"#define NINV {a.ninv}",
     f"#define ATOL {a.atol}f", f"#define RTOL {a.rtol}f", f"#define NIN {len(a.ins)}", f"#define NOUT {len(a.ref)}"]
ins = []
for j, spec in enumerate(a.ins):
    path, dt, shp = spec.split(":")
    dims = [int(x) for x in shp.split("x")]
    n = 1
    for d in dims: n *= d
    sz = os.path.getsize(path)
    assert sz == n * ET[dt][1], (path, sz, n, dt)
    S += [".section .rodata,\"a\",@progbits", ".balign 64", f".global in{j}_s", f"in{j}_s:", f'.incbin "{path}"', f".global in{j}_e", f"in{j}_e:"]
    H += [f"extern const uint8_t in{j}_s[], in{j}_e[];"]
    ins.append(f"{{in{j}_s, in{j}_e, {len(dims)}, {{{', '.join(map(str, dims))}}}, {ET[dt][0]}}}")
refs = []
for k, path in enumerate(a.ref):
    S += [".section .rodata,\"a\",@progbits", ".balign 64", f".global ref{k}_s", f"ref{k}_s:", f'.incbin "{path}"', f".global ref{k}_e", f"ref{k}_e:"]
    H += [f"extern const uint8_t ref{k}_s[], ref{k}_e[];"]
    refs.append(f"{{ref{k}_s, ref{k}_e}}")
H += ["static const min_t INPUTS[] = {" + ", ".join(ins) + "};", "static const mref_t REFS[] = {" + ", ".join(refs) + "};"]
open(os.path.join(a.appdir, "embed.S"), "w").write("\n".join(S) + "\n")
open(os.path.join(a.appdir, "cfg.h"), "w").write("\n".join(H) + "\n")
print("ok", a.appdir)
