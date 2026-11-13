#!/bin/bash
# finish_smol.sh (on compute-1, needs forwarded agent): wait for the SmolVLA compile, then build app + ELFs and submit to F2.
set -uo pipefail
W=/scratch/loren/f2cyc; M=$W/models/smolvla; cd $W
[ "${SKIP_TO_BUILD:-0}" = 1 ] || { until grep -q "^RC" apps/smol/compile-smol.log; do sleep 30; done; }
grep "^RC 0" apps/smol/compile-smol.log || { echo "SMOL COMPILE FAILED"; grep -m5 -i error apps/smol/compile-smol.log; exit 1; }
sha256sum apps/smol/model.vmfb
ARGS=$(python3 - <<PY
import json
d=json.load(open("$M/inputs/inputs.json"))
for i in d["inputs"]:
    print(f'--in $M/inputs/{i["file"]}:{i["mlir_dtype"]}:{"x".join(map(str,i["shape"]))}', end=" ")
PY
)
python3 src/gen_app.py apps/smol smolvla_int8 module.main 2 0.001 0.001 --vmfb $W/apps/smol/model.vmfb $ARGS --ref $M/pytorch.f32.bin || exit 1
touch apps/smol/payload.stamp
python3 src/classify_dispatches.py apps/smol/ir/*.s apps/smol/dispatch-classes.json
bash src/build_rt.sh plain smol > logs/build-plain-smol.log 2>&1 || { tail -20 logs/build-plain-smol.log; exit 1; }
bash src/build_rt.sh trace smol > logs/build-trace-smol.log 2>&1 || { tail -20 logs/build-trace-smol.log; exit 1; }
tail -n1 logs/build-plain-smol.log logs/build-trace-smol.log
# pick hosts: f2-c then f2-a (f2-exec queues if both slots busy)
bash src/f2submit.sh 192.168.3.211 r1-smol-plain build-plain/smol.elf
bash src/f2submit.sh 192.168.3.251 r1-smol-trace build-trace/smol.elf
