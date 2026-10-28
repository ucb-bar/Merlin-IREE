#!/bin/bash
# aws-57: keep F2 data flowing to garden while runs finish (no instance stop here)
cd /scratch2/loren/f2-cycles
for i in $(seq 1 24); do
  date -u +%T >> tools/sync-loop.log
  bash tools/sync >> tools/sync-loop.log 2>&1
  python3 src/collect.py . >> tools/sync-loop.log 2>&1
  python3 src/make_tables.py . >> tools/sync-loop.log 2>&1
  sleep 600
done
