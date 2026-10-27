from pathlib import Path
import json,hashlib
p=Path(__file__).resolve().parent
files=[p/x for x in ['resnet50-gemR.elf','resnet.vmfb','golden.f32','runner.c','libc_strict.c','embed.S','compile.sh','compile_model.sh','build_runtime.sh','run_spike.sh','dispatch_fpga.sh','analyze.py','audit.json','readelf.txt','timed-region.txt','spike.log','spike-result.json','spike-output.f32','compiler-version.txt','clang-version.txt']]
files += [Path(x) for x in ['/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir','/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.onnx','/home/loren/work/runs/resnet50/artifacts/resnet50_input.f32','/home/loren/work/runs/fixK/models/resnet/output.npy','/home/loren/work/runs/fixK/build/tools/iree-compile','/home/loren/work/runs/fixK/build/lib/libIREECompiler.so','/home/loren/work/chipyard/generators/gemmini/software/libgemmini/libgemmini.so','/home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike']]
files += list((p/'toolchain').rglob('*'))
files += [p/x for x in ['result-manifest.json','oracle-exact.f32','oracle-result.log','oracle-vs-cpu.json','oracle-versions.json','oracle_optimize.py','generate_portable_int8_golden.py','defuse_ort_qlinear.py','classifier-lowering.ll','iree_runtime_plugin.cmake','libiconv-1.18.tar.gz']]
files += [p/'README.md']
files += list((p/'fpga').rglob('*'))
files += [p/x for x in ['REPORT.md','fpga-result.json','fpga-output.f32','fpga-uart-normalized.log','fpga-dispatch-a1.log','fpga-status-final.log','ec2-final.json']]
files = [f for f in files if f.is_file()]
a=[]
for f in files:
 if f.exists():a.append(dict(path=str(f),bytes=f.stat().st_size,sha256=hashlib.sha256(f.read_bytes()).hexdigest()))
(p/'manifest.json').write_text(json.dumps(a,indent=2)+'\n')
(p/'SHA256SUMS').write_text(''.join(f"{x['sha256']}  {x['path']}\n" for x in a))
