// RUN: iree-opt %s --iree-plugin=gemmini --pass-pipeline='builtin.module(func.func(merlin-gemmini-legalize-for-llvm-export{loop-ws=true}))' | FileCheck %s

// Dynamic workgroup offsets and physical leading dimensions survive a tile.
func.func @strided_tile(
    %a: memref<16x24xi8, strided<[24, 1], offset: ?>>,
    %b: memref<24x8xi8, strided<[40, 1], offset: ?>>,
    %c: memref<16x8xi32, strided<[40, 1], offset: ?>>,
    %d: memref<1x8xi32, strided<[40, 1], offset: ?>>) {
  gemmini.tile_matmul %a, %b, %c, %d {
    aScaleFactor = 1.0 : f32, bScaleFactor = 1.0 : f32,
    dScaleFactor = 1.0 : f32, act = 0 : i64,
    accScale = 1.0 : f32, bertScale = 0.0 : f32,
    dataflow = 1 : i64, repeatingBias = true
  } : memref<16x24xi8, strided<[24, 1], offset: ?>>,
      memref<24x8xi8, strided<[40, 1], offset: ?>>,
      memref<16x8xi32, strided<[40, 1], offset: ?>>,
      memref<1x8xi32, strided<[40, 1], offset: ?>>
  return
}
// CHECK-LABEL: func.func @strided_tile
// CHECK: iree_codegen.extract_strided_metadata %arg0
// CHECK: iree_codegen.extract_strided_metadata %arg1
// CHECK: %[[CBASE:[a-zA-Z0-9_]+]], %[[COFF:[a-zA-Z0-9_]+]], {{.*}} = iree_codegen.extract_strided_metadata %arg2
// CHECK: %[[C4:[a-zA-Z0-9_]+]] = arith.constant 4 : index
// CHECK: arith.muli %[[COFF]], %[[C4]]
// CHECK: %[[DBASE:[a-zA-Z0-9_]+]], %[[DOFF:[a-zA-Z0-9_]+]], {{.*}} = iree_codegen.extract_strided_metadata %arg3
// CHECK: %[[D4:[a-zA-Z0-9_]+]] = arith.constant 4 : index
// CHECK: arith.muli %[[DOFF]], %[[D4]]
// CHECK: gemmini.intr.loop_ws.config_strides_ab %c24_i64{{.*}}, %c40_i64{{.*}}
// CHECK: gemmini.intr.loop_ws.config_strides_dc %c0_i64{{.*}}, %c40_i64{{.*}}
