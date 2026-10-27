#!/usr/bin/env bash
set -euo pipefail
R=/home/loren/work/runs/attE1
C=/home/loren/work/runs/fixW/build-numerics/tools/iree-compile
export LD_LIBRARY_PATH=/home/loren/work/runs/fixW/build-numerics/lib
BASE=(--iree-hal-target-device=local --iree-hal-local-target-device-backends=llvm-cpu --iree-llvmcpu-target-triple=riscv64-unknown-elf --iree-llvmcpu-target-abi=lp64d --iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c --iree-llvmcpu-target-vector-width-in-bytes=8 --iree-opt-data-tiling=false --iree-dispatch-creation-data-tiling=false --iree-llvmcpu-enable-ukernels=none --iree-llvmcpu-link-ukernel-bitcode=false --iree-execution-model=async-internal --iree-llvmcpu-link-embedded=true --iree-plugin=gemmini --iree-gemmini-enable --iree-gemmini-lower-back-to-iree=false --iree-gemmini-use-loop-ws=true --iree-gemmini-mx-format=disabled --iree-llvmcpu-number-of-threads=4)
runone(){
 name=$1; shift
 out="$R/matmul-$name.vmfb"
 taskset -c 24-27 "$C" "$R/matmul.mlir" "${BASE[@]}" "$@" -o "$out" > "$R/matmul-$name.compile.log" 2>&1 || { echo "$name COMPILE_FAIL" >> "$R/sweep-results.txt"; return 0; }
 sed "s#matmul-baseline.vmfb#matmul-$name.vmfb#" "$R/runtime/embed.S" > "$R/runtime/embed.S.tmp"; mv "$R/runtime/embed.S.tmp" "$R/runtime/embed.S"
 cp "$out" "$R/runtime/resnet.vmfb"
 bash "$R/runtime/build_runtime.sh" > "$R/matmul-$name.runtime-build.log" 2>&1
 cp "$R/runtime/build/runtime/plugins/resnet" "$R/runtime/resnet50-gemR.elf"
 export PATH="$R/runtime/deps/usr/bin:$PATH"
 export LD_LIBRARY_PATH="$R/runtime/deps/lib:/home/loren/work/chipyard/generators/gemmini/software/libgemmini:/home/loren/work/chipyard/.conda-env/riscv-tools/lib"
 taskset -c 24 /home/loren/work/chipyard/.conda-env/riscv-tools/bin/spike --isa=rv64gc_zicntr --extension=gemmini "$R/runtime/resnet50-gemR.elf" > "$R/matmul-$name.spike.log" 2> "$R/matmul-$name.spike.stderr"
 grep MATMUL_RESULT "$R/matmul-$name.spike.log" >> "$R/sweep-results.txt"
}
: > "$R/sweep-results.txt"
runone unroll --iree-llvmcpu-loop-unrolling
runone vectorizer --iree-llvmcpu-loop-vectorization
runone slp --iree-llvmcpu-slp-vectorization
runone vec4 --iree-llvmcpu-target-vector-width-in-bytes=4
runone vec16 --iree-llvmcpu-target-vector-width-in-bytes=16
runone opt0 --iree-llvmcpu-mlir-opt-level=0
runone opt3 --iree-llvmcpu-mlir-opt-level=3
runone globalopt3 --iree-opt-level=3
runone data-tiling --iree-opt-data-tiling --iree-llvmcpu-matmul-tile-bytes=4096
runone ukernels --iree-llvmcpu-enable-ukernels=all
runone opt-O0 --iree-llvmcpu-mlir-opt-level=O0
runone opt-O3 --iree-llvmcpu-mlir-opt-level=O3
runone global-O3 --iree-opt-level=O3
runone dist4 --iree-llvmcpu-distribution-size=4
runone dist16 --iree-llvmcpu-distribution-size=16
runone dist64 --iree-llvmcpu-distribution-size=64
runone aggressive-dist --iree-llvmcpu-riscv-aggressive-distribution
