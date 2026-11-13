#!/usr/bin/env bash
set -euo pipefail
R=/home/loren/work/runs/attE1; C=/home/loren/work/runs/fixW/build-numerics/tools/iree-compile
export LD_LIBRARY_PATH=/home/loren/work/runs/fixW/build-numerics/lib
BASE=(--iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu --iree-llvmcpu-target-triple=riscv64-unknown-elf --iree-llvmcpu-target-abi=lp64d --iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c --iree-llvmcpu-target-vector-width-in-bytes=8 --iree-opt-data-tiling=false --iree-dispatch-creation-data-tiling=false --iree-llvmcpu-enable-ukernels=none --iree-llvmcpu-link-ukernel-bitcode=false --iree-execution-model=async-internal --iree-llvmcpu-link-embedded=true --iree-plugin=gemmini --iree-gemmini-enable --iree-gemmini-lower-back-to-iree=false --iree-gemmini-use-loop-ws=true --iree-gemmini-mx-format=disabled --iree-llvmcpu-number-of-threads=4)
: > "$R/conv-results.txt"
for spec in 'unroll|--iree-llvmcpu-loop-unrolling' 'vectorizer|--iree-llvmcpu-loop-vectorization' 'data|--iree-opt-data-tiling' 'ukernels|--iree-llvmcpu-enable-ukernels=all'; do
 name=${spec%%|*}; flag=${spec#*|}; out="$R/conv-$name.vmfb"
 taskset -c 24-27 "$C" "$R/conv.mlir" "${BASE[@]}" "$flag" -o "$out" > "$R/conv-$name.compile.log" 2>&1 || { echo "$name COMPILE_FAIL" >> "$R/conv-results.txt"; continue; }
 sed "s#conv-[^\"]*\.vmfb#conv-$name.vmfb#" "$R/runtime/embed.S" > "$R/runtime/embed.S.tmp"; mv "$R/runtime/embed.S.tmp" "$R/runtime/embed.S"
 cp "$out" "$R/runtime/resnet.vmfb"
 bash "$R/runtime/build_runtime.sh" > "$R/conv-$name.runtime-build.log" 2>&1
 cp "$R/runtime/build/runtime/plugins/resnet" "$R/runtime/resnet50-gemR.elf"
 export PATH="$R/runtime/deps/usr/bin:$PATH"; export LD_LIBRARY_PATH="$R/runtime/deps/lib:/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib"
 taskset -c 24 /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike --isa=rv64gc_zicntr --extension=gemmini "$R/runtime/resnet50-gemR.elf" > "$R/conv-$name.spike.log" 2> "$R/conv-$name.spike.stderr"
 grep CONV_RESULT "$R/conv-$name.spike.log" >> "$R/conv-results.txt"
done
