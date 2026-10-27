from pathlib import Path
import numpy as np
R=Path('/home/loren/work/runs/fixW');S=R/'repro';D=R/'repro-i32';D.mkdir(exist_ok=True)
text=(S/'model.mlir').read_text();text=text[:text.index('%ef =')]+'''return %c : tensor<32x40xi32>
}}\n''';text=text.replace('-> tensor<32x40xf32> attributes','-> tensor<32x40xi32> attributes');(D/'model.mlir').write_text(text)
a=np.fromfile(S/'input.bin',dtype='i1').reshape(32,24);b=np.load(S/'b.npy');a.tofile(D/'input.bin');np.save(D/'b.npy',b);(a.astype('i4')@b.astype('i4')).astype('<i4').tofile(D/'golden.i32')
for name in ['runner.c','libc_strict.c','iree_runtime_plugin.cmake','embed.S','build_runtime.sh','run_spike.sh','compile_baseline.sh','compile_fixed.sh']:
 s=(S/name).read_text().replace(str(S),str(D))
 if name=='runner.c':s=s.replace('float* result = (float*)malloc','int32_t* result = (int32_t*)malloc').replace('const float* golden = (const float*)','const int32_t* golden = (const int32_t*)')
 if name=='runner.c':s=s.replace('!isfinite(result[i]) || ','').replace('fabsf(result[i] - golden[i])','fabsf((float)result[i] - (float)golden[i])').replace('sizeof(float)','sizeof(int32_t)').replace('RESNET50_INT8','MATMUL_I32').replace('LOGIT %d','ELEMENT %d').replace('input=1x3x224x224','input=32x24xi8 output=32x40xi32')
 if name=='embed.S':s=s.replace('golden.f32','golden.i32')
 if name=='build_runtime.sh':s=s.replace('0-23','4-23').replace('-j24','-j20')
 if name in ['compile_baseline.sh','compile_fixed.sh']:s=s.replace('0-23','4-23').replace('number-of-threads=24','number-of-threads=20')
 if name=='run_spike.sh':s=s.replace('taskset -c 0 ','taskset -c 0 ')
 (D/name).write_text(s)
for name in ['clang','deps','toolchain']:(D/name).symlink_to((S/name).resolve())
