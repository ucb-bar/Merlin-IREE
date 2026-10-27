from pathlib import Path
import subprocess,json
R=Path(__file__).resolve().parent;T=R/'src/third_party/iree_bar/third_party/torch-mlir';I=R/'src/third_party/iree_bar';OPT=str(R/'build-numerics/tools/iree-opt');FC='/home/loren/work/iree-latest/bin/FileCheck'
cases=[('smol',T/'test/Dialect/Torch/pytorch-cpu-smol.mlir',['--torch-decompose-complex-ops','--torch-pytorch-cpu-numerics'],'CHECK'),('cpu',T/'test/Dialect/Torch/pytorch-cpu-numerics.mlir',['--torch-decompose-complex-ops','--torch-pytorch-cpu-numerics'],'CHECK'),('mm-default',T/'test/Dialect/Torch/pytorch-cpu-numerics.mlir',['--torch-decompose-complex-ops'],'MM'),('fmf',I/'compiler/src/iree/compiler/Codegen/Common/test/add_fmfs.mlir',['--iree-codegen-add-fast-math-flags','--split-input-file'],'CHECK'),('quant',T/'test/Dialect/TorchConversion/convert-custom-quant-op.mlir',['--pass-pipeline=builtin.module(func.func(torch-convert-custom-quant-op))','--split-input-file','--verify-diagnostics'],'FIX'),('gelu',T/'test/Conversion/TorchToLinalg/elementwise.mlir',['--convert-torch-to-linalg','--split-input-file','--mlir-print-local-scope','--verify-diagnostics'],'CHECK')]
results=[];commands=[]
for name,source,flags,prefix in cases:
 cmd=['taskset','-c','3',OPT,str(source),*flags];commands.append(cmd)
 with (R/f'lit-{name}.mlir').open('w') as out,(R/f'lit-{name}.log').open('w') as err:code=subprocess.call(cmd,stdout=out,stderr=err)
 check=[FC,str(source),'--check-prefix='+prefix];commands.append(check)
 with (R/f'lit-{name}.mlir').open() as inp,(R/f'lit-{name}-check.log').open('w') as out:status=subprocess.call(check,stdin=inp,stdout=out,stderr=subprocess.STDOUT)
 results.append(dict(name=name,opt_exit=code,check_exit=status,pass_test=code==0 and status==0));print(results[-1],flush=True)
(R/'lit-results.json').write_text(json.dumps(results,indent=2));(R/'lit-commands.json').write_text(json.dumps(commands,indent=2))
raise SystemExit(0 if all(r['pass_test'] for r in results) else 2)
