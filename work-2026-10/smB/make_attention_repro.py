from pathlib import Path
import re,shutil
R=Path('/home/loren/work/runs/smB');s=(R/'sdpa-full-input.mlir').read_text();c=s[s.index('    %cst ='):s.index('    %0 = hal.tensor.import')];b=s[s.index('    %extracted_slice ='):s.index('    %extracted_slice_50 =')];b=b.replace('256','4')
b=re.sub(r'(tensor.extract_slice %0.*)tensor<1x12x1024x64xf32>',r'\1tensor<1x12x4x64xf32>',b)
b=b.replace('tensor<1x1x1024x1024xf32>','tensor<1x1x4x1024xf32>')
s='module {\n  func.func @main(%0: tensor<1x12x4x64xf32>, %1: tensor<1x12x1024x64xf32>, %2: tensor<1x12x1024x64xf32>, %3: tensor<1x1x4x1024xf32>) -> tensor<1x12x4x64xf32> {\n'+c+b+'    return %expanded : tensor<1x12x4x64xf32>\n  }\n}\n';(R/'attention.mlir').write_text(s)
S=R.parent/'probeP1/micro-sdpa-0/runtime';D=R/'attention-runtime';D.mkdir(exist_ok=True)
for name in ['runner.c','embed.S','iree_runtime_plugin.cmake','libc_strict.c','build_runtime.sh','run_spike.sh']:
 t=(S/name).read_text().replace(str(S),str(D)).replace('80-87','24-47').replace('81 ','24 ').replace('-j8','-j24')
 t=t.replace(str(S.parent/'input'),str(D/'input'))
 (D/name).write_text(t)
for n in ['clang','deps','toolchain']:(D/n).symlink_to((S/n).resolve())
for p in S.glob('*.bin'):shutil.copy2(p,D/p.name)
for n in ['golden.f32']:shutil.copy2(S/n,D/n)

for p in S.parent.glob('input[0-3].bin'):shutil.copy2(p,D/p.name)
