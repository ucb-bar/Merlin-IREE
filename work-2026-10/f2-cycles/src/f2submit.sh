#!/bin/bash
# f2submit.sh F2_IP RUNID ELF : copy ELF to the F2 host (VPC ssh, forwarded agent) and start it detached
# through the host's own /opt/f2run/f2-exec (slot lock + AFI reload + FireSim-f2 + RUN_TIMEOUT).
set -euo pipefail
IP=$1; R=$2; E=$3
O="-o BatchMode=yes -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10"
D=/var/tmp/f2cyc/$R
ssh $O ubuntu@$IP "test ! -e $D && mkdir -p $D"
scp -q $O "$E" ubuntu@$IP:$D/prog.elf
ssh $O ubuntu@$IP "cd $D && sha256sum prog.elf > elf.sha256 && cp /opt/f2run/f2run.conf . && hostname > host && (fpga-describe-local-image-slots -H; for s in 0 1; do fpga-describe-local-image -S \$s -H | tail -1; done) > fpga-before.txt 2>&1; nohup bash -c 'date -u +%FT%TZ > start; /opt/f2run/f2-exec < prog.elf > uartlog 2> driver.err; echo \$? > rc; date -u +%FT%TZ > end' > /dev/null 2>&1 < /dev/null & echo submitted $R on \$(hostname) \$(cat elf.sha256)"
