#!/bin/bash
set -euo pipefail
cd /home/loren/work/runs/fixW/resnet
bash compile.sh /home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir "$PWD/resnet.vmfb" --iree-gemmini-dim=16 --iree-gemmini-addr-len=32 --iree-gemmini-bank-num=4 --iree-gemmini-bank-rows=2048 --iree-gemmini-acc-rows=512 --iree-gemmini-elem-bits=8 --iree-gemmini-acc-bits=32 '--iree-preprocessing-pass-pipeline=builtin.module(util.func(iree-preprocessing-convert-conv-to-channels-last),util.func(iree-global-opt-quantized-conv-to-conv),util.func(iree-global-opt-convert-conv2d-to-img2col))' --iree-hal-dump-executable-intermediates-to="$PWD/intermediates"
