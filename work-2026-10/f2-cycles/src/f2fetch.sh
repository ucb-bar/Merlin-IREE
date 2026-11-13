#!/bin/bash
# f2fetch.sh F2_IP RUNID : copy run outputs (not the ELF) back to /scratch/loren/f2cyc/runs/RUNID; print status.
set -uo pipefail
IP=$1; R=$2; O="-o BatchMode=yes -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10"
L=/scratch/loren/f2cyc/runs/$R; mkdir -p $L
ssh $O ubuntu@$IP "cd /var/tmp/f2cyc/$R && tar cf - --exclude=prog.elf ." | tar xf - -C $L
echo "$R rc=$(cat $L/rc 2>/dev/null || echo running) start=$(cat $L/start 2>/dev/null) end=$(cat $L/end 2>/dev/null) uart_lines=$(wc -l < $L/uartlog 2>/dev/null)"
