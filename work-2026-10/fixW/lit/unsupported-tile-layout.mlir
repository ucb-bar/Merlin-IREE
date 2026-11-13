// RUN: iree-opt %s --iree-plugin=gemmini --pass-pipeline='builtin.module(func.func(merlin-gemmini-legalize-for-llvm-export{loop-ws=true}))' > %t 2>&1; test $? -ne 0
// RUN: FileCheck %s < %t
// CHECK: requires static nonnegative row strides and unit inner strides

// Dynamic workgroup offsets and physical leading dimensions survive a tile.
func.func @unsupported_inner_stride(
    %a: memref<16x24xi8, strided<[48, 2], offset: ?>>,
    %b: memref<24x8xi8, strided<[40, 1], offset: ?>>,
    %c: memref<16x8xi32, strided<[40, 1], offset: ?>>,
    %d: memref<1x8xi32, strided<[40, 1], offset: ?>>) {
  gemmini.tile_matmul %a, %b, %c, %d {
    aScaleFactor = 1.0 : f32, bScaleFactor = 1.0 : f32,
    dScaleFactor = 1.0 : f32, act = 0 : i64,
    accScale = 1.0 : f32, bertScale = 0.0 : f32,
    dataflow = 1 : i64, repeatingBias = true
  } : memref<16x24xi8, strided<[48, 2], offset: ?>>,
      memref<24x8xi8, strided<[40, 1], offset: ?>>,
      memref<16x8xi32, strided<[40, 1], offset: ?>>,
      memref<1x8xi32, strided<[40, 1], offset: ?>>
  return
}
