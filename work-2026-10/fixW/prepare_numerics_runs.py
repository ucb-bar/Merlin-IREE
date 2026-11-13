from pathlib import Path
R=Path('/home/loren/work/runs/fixW')
for model,refthreads in [('tinyllama',16),('smolvla',24)]:
 D=R/model;target='tinyllama.elf' if model=='tinyllama' else 'smolvla-gemmini.elf';newtarget=target.replace('.elf','-numerics.elf')
 p=D/'CMakeLists.txt';s=p.read_text();extra=[]
 for line in s.splitlines():
  if line.startswith(('add_executable(','target_link_libraries(','target_link_options(')):
   extra.append(line.replace(target,newtarget).replace('embed.S','embed-numerics.S'))
 p.write_text(s+'\n'+'\n'.join(extra)+'\n')
 (D/'embed-numerics.S').write_text((D/'embed.S').read_text().replace('model.vmfb','numerics.vmfb'))
 buildname='build_runtime.sh' if model=='tinyllama' else 'build_runner.sh'
 (D/'build_numerics_runner.sh').write_text((D/buildname).read_text().replace(target,newtarget))
 (D/'run_spike_numerics.sh').write_text((D/'run_spike.sh').read_text().replace(target,newtarget).replace('spike.log','spike-numerics.log').replace('spike.stderr','spike-numerics.stderr').replace('spike.exit','spike-numerics.exit').replace('spike-time.log','spike-numerics-time.log').replace('spike-exit.txt','spike-numerics-exit.txt').replace('taskset -c 1 ','taskset -c 0 '))
 s=(D/'compile_model.sh').read_text().replace('bash compile.sh','bash compile_numerics.sh').replace('model.vmfb','numerics.vmfb').replace('/intermediates','/numerics-intermediates')
 opts=f' --torch-pytorch-cpu-numerics --torch-pytorch-cpu-reference-threads={refthreads} --torch-pytorch-cpu-constant-math-library=/home/loren/work/runs/smolvla/venv/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so --iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false'
 if model=='smolvla':opts+=' --iree-opt-const-eval=false'
 (D/'compile_numerics_model.sh').write_text(s.rstrip()+opts+'\n')
 (D/'compile_numerics.sh').write_text((D/'compile.sh').read_text().replace('/fixW/build/','/fixW/build-numerics/'))
