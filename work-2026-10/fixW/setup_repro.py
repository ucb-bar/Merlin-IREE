from pathlib import Path
import numpy as np
R=Path('/home/loren/work/runs/fixW'); D=R/'repro';D.mkdir(exist_ok=True)
a=np.random.default_rng(123).integers(-8,9,(32,24),dtype=np.int8);b=np.random.default_rng(456).integers(-8,9,(24,40),dtype=np.int8)
a.tofile(D/'input.bin');(a.astype('i4')@b.astype('i4')).astype('f4').tofile(D/'golden.f32');np.save(D/'b.npy',b)
(D/'model.mlir').write_text('''module { func.func @main_graph(%a: tensor<32x24xi8>) -> tensor<32x40xf32> {
%b = arith.constant dense<'''+str(b.tolist())+'''> : tensor<24x40xi8>
%z = arith.constant 0 : i32
%e = tensor.empty() : tensor<32x40xi32>
%i = linalg.fill ins(%z : i32) outs(%e : tensor<32x40xi32>) -> tensor<32x40xi32>
%c = linalg.matmul ins(%a, %b : tensor<32x24xi8>, tensor<24x40xi8>) outs(%i : tensor<32x40xi32>) -> tensor<32x40xi32>
%ef = tensor.empty() : tensor<32x40xf32>
%f = linalg.generic {indexing_maps = [affine_map<(d0,d1)->(d0,d1)>,affine_map<(d0,d1)->(d0,d1)>], iterator_types = ["parallel","parallel"]} ins(%c : tensor<32x40xi32>) outs(%ef : tensor<32x40xf32>) { ^bb0(%x:i32,%unused:f32): %y = arith.sitofp %x : i32 to f32
linalg.yield %y : f32 } -> tensor<32x40xf32>
return %f : tensor<32x40xf32>
}}''')
for name in ['runner.c','libc_strict.c','iree_runtime_plugin.cmake','embed.S','build_runtime.sh','run_spike.sh']:
 s=(Path('/home/loren/work/runs/gemR')/name).read_text().replace('/home/loren/work/runs/gemR',str(D)).replace('24-29','0-23').replace('-j6','-j24').replace('taskset -c 24 ','taskset -c 0 ').replace('fixK/src','fixW/src').replace('gemR_resnet','fixW_repro_resnet')
 if name=='runner.c':
  s=s.replace('150528u * sizeof(float)','768u').replace('1000u','1280u').replace('1000;','1280;').replace('iree_hal_dim_t shape[4] = {1, 3, 224, 224};','iree_hal_dim_t shape[2] = {32, 24};').replace('device_allocator(device), 4, shape','device_allocator(device), 2, shape').replace('IREE_HAL_ELEMENT_TYPE_FLOAT_32','IREE_HAL_ELEMENT_TYPE_SINT_8').replace('0.8f + fabsf(golden[i]) * 0.1f','0.0f')
 if name=='embed.S':s=s.replace('/home/loren/work/runs/resnet50/artifacts/resnet50_input.f32',str(D/'input.bin'))
 (D/name).write_text(s)
# Reuse local toolchain/dependencies read-only. No shared build directory.
for name in ['clang','deps','toolchain']:
 (D/name).symlink_to(Path('/home/loren/work/runs/gemR')/name)
s=Path('/home/loren/work/runs/gemR/compile.sh').read_text().replace('24-29','0-23').replace('number-of-threads=6','number-of-threads=24')
(D/'compile_baseline.sh').write_text(s)
