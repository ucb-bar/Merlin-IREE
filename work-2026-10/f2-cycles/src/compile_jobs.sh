#!/bin/bash
# Launch the RV64 Gemmini compiles (nohup); logs next to outputs.
W=/scratch/loren/f2cyc; S=$W/src
TORCHLIB=$W/venv-tl/lib/python3.12/site-packages/torch/lib/libtorch_cpu.so
NUM="--torch-pytorch-cpu-numerics --torch-pytorch-cpu-constant-math-library=$TORCHLIB"
job() { # name dir input output cpus nt execmodel extra...
  local n=$1 d=$2 in=$3 out=$4 c=$5 t=$6 em=$7; shift 7
  mkdir -p $d; cd $d
  nohup env CPUS=$c NT=$t EXEC_MODEL=$em bash -c "echo START \$(date -u +%FT%TZ); echo CMD $S/compile_rv.sh $in $out $*; /usr/bin/time -v bash $S/compile_rv.sh $in $out $*; rc=\$?; echo RC \$rc END \$(date -u +%FT%TZ); [ \$rc = 0 ] && touch payload.stamp" > $d/compile-$n.log 2>&1 &
  echo "$n pid $!"
}
case $1 in
 kernels) job kernels $W/apps/kernels $W/apps/kernels/kernels.mlir $W/apps/kernels/kernels.vmfb 24-31 8 async-internal --iree-hal-dump-executable-intermediates-to=$W/apps/kernels/ir ;;
 resnet) job resnet $W/apps/resnet $W/models/resnet50/resnet50.q.int8.mlir $W/apps/resnet/model.vmfb 32-35 4 async-external --iree-hal-dump-executable-intermediates-to=$W/apps/resnet/ir ;;
 tiny) job tiny $W/apps/tiny $W/models/tinyllama/model.mlir $W/apps/tiny/model.vmfb 36-41 6 async-external --iree-hal-dump-executable-intermediates-to=$W/apps/tiny/ir $NUM --torch-pytorch-cpu-reference-threads=6 ;;
 smol) job smol $W/apps/smol $W/models/smolvla/smolVLA.q.int8.mlir $W/apps/smol/model.vmfb ${SMOLCPUS:-36-41} 6 async-external --iree-hal-dump-executable-intermediates-to=$W/apps/smol/ir $NUM --torch-pytorch-cpu-reference-threads=6 --iree-opt-const-eval=false ;;
esac
