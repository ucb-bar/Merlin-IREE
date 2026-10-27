// RUN: iree-opt %s --iree-plugin=gemmini --pass-pipeline='builtin.module(func.func(gemmini-lower-tile-to-isa))' | FileCheck %s

// Quantized matmul + bias-add + rescale (i32→i8) fold into a single
// gemmini.tile_matmul with fullC=false + accScale=in/out. Mirrors the
// post-bufferization shape that dronet's conv→matmul→rescale dispatches
// emit. See LowerTileToISA.cpp::tryMatchI32ToI8Rescale.

#desc = #hal.descriptor_type<storage_buffer>

// CHECK-LABEL: func.func @late_epilogue_views
func.func @late_epilogue_views(
    %A: memref<16x32xi8, strided<[32, 1], offset: 0>, #desc>,
    %B: memref<32x16xi8, #desc>,
    %bias_base: memref<32x16xi32, #desc>,
    %out_base: memref<32x16xi8, #desc>) {
  %c0_i32 = arith.constant 0 : i32
  %cst_in = arith.constant 6.25015527E-5 : f32
  %cst_out = arith.constant 2.5029665E-2 : f32
  %cst_zp = arith.constant 0.0 : f32
  %cst_lo = arith.constant -1.280000e+02 : f32
  %cst_hi = arith.constant 1.270000e+02 : f32
  %acc = memref.alloca() : memref<16x16xi32>
  %biased = memref.alloca() : memref<16x16xi32>
  linalg.fill ins(%c0_i32 : i32) outs(%acc : memref<16x16xi32>)
  linalg.matmul ins(%A, %B : memref<16x32xi8, strided<[32, 1], offset: 0>, #desc>, memref<32x16xi8, #desc>) outs(%acc : memref<16x16xi32>)
  %bias = memref.subview %bias_base[0, 0] [16, 16] [1, 1] : memref<32x16xi32, #desc> to memref<16x16xi32, strided<[16, 1], offset: 0>, #desc>
  %out = memref.subview %out_base[0, 0] [16, 16] [1, 1] : memref<32x16xi8, #desc> to memref<16x16xi8, strided<[16, 1], offset: 0>, #desc>

  linalg.generic {
    indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                     affine_map<(d0, d1) -> (d0, d1)>,
                     affine_map<(d0, d1) -> (d0, d1)>],
    iterator_types = ["parallel", "parallel"]
  } ins(%acc, %bias : memref<16x16xi32>, memref<16x16xi32, strided<[16, 1], offset: 0>, #desc>)
    outs(%biased : memref<16x16xi32>) {
  ^bb0(%in: i32, %in_b: i32, %o: i32):
    %s = arith.addi %in, %in_b : i32
    linalg.yield %s : i32
  }
  linalg.generic {
    indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                     affine_map<(d0, d1) -> (d0, d1)>],
    iterator_types = ["parallel", "parallel"]
  } ins(%biased : memref<16x16xi32>)
    outs(%out : memref<16x16xi8, strided<[16, 1], offset: 0>, #desc>) {
  ^bb0(%in: i32, %o: i8):
    %a = arith.sitofp %in : i32 to f32
    %b = arith.mulf %a, %cst_in : f32
    %c = arith.divf %b, %cst_out : f32
    %d = math.roundeven %c : f32
    %e = arith.addf %d, %cst_zp : f32
    %f = arith.maximumf %e, %cst_lo : f32
    %g = arith.minimumf %f, %cst_hi : f32
    %h = arith.fptosi %g : f32 to i8
    linalg.yield %h : i8
  }
  return
}

// CHECK: memref.subview
// CHECK: memref.subview
// CHECK: gemmini.tile_matmul
// CHECK-SAME: accScale = 0.00249709
// CHECK-SAME: act = 0 : i64
// fullC=false is the default (TableGen DefaultValuedAttr) and elided.
// CHECK-NOT: fullC = true
// The bias buffer is forwarded as the tile_matmul's dArray operand.
// CHECK-SAME: memref<16x16xi8
// CHECK-SAME: memref<16x16xi32

