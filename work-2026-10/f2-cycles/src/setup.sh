#!/bin/bash
# One-time setup on merlin-compute-1 under /scratch/loren/f2cyc (F2 cycle campaign 2026-10-28).
set -euo pipefail
W=/scratch/loren/f2cyc; cd $W
[ -d compiler/tools ] || { mkdir -p compiler && zstd -dc compiler.tar.zst | tar xf - -C compiler; }
[ -d iree-latest ] || zstd -dc rt.tar.zst | tar xf -
SRC=$W/iree-latest/source/Merlin-IREE/third_party/iree_bar
# PERFX instrumentation (inactive unless PERFX_TRACE=1 is defined): smA/runtime-full/local_executable.c
L=$SRC/runtime/src/iree/hal/local/local_executable.c
[ -f $L.orig ] || cp $L $L.orig
cp $W/src/local_executable.perfx.c $L
# Toolchain root for the toolchain file: prebuilt clang-23 (snapshot bundle) + llvm binutils.
T=/scratch/loren/core-aten-snap/phase1-prep/toolchain/.conda-env/riscv-tools
mkdir -p $W/clang/bin
ln -sf $W/iree-latest/prebuilt/bin/clang-23 $W/clang/bin/clang
ln -sf $W/iree-latest/prebuilt/bin/clang-23 $W/clang/bin/clang++
for t in ar ranlib strip; do
  for c in /usr/bin/llvm-$t-18 /usr/bin/llvm-$t $T/bin/llvm-$t; do [ -x $c ] && { ln -sf $c $W/clang/bin/llvm-$t; break; }; done
  [ -e $W/clang/bin/llvm-$t ] || ln -sf $T/bin/riscv64-unknown-elf-$t $W/clang/bin/llvm-$t
done
ls -la $W/clang/bin
sha256sum compiler/tools/iree-compile compiler/lib/libIREECompiler.so $W/iree-latest/prebuilt/bin/clang-23 $L $L.orig
