// RUN: iree-opt %s --iree-plugin=gemmini --pass-pipeline='builtin.module(func.func(gemmini-lower-tile-to-isa))' | FileCheck %s

// gemmini.matmul_tile is a tensor-domain op today, so the
// gemmini-lower-tile-to-isa pass has nothing to bridge until a separate
// bufferization step lowers it to memrefs. This lit fixture is the
// minimal smoke that the pass is registered and runs without crashing on
// a function that contains a recovered (tensor-domain) matmul_tile op.
// See docs/dev_blog/2026-03-11-gemmini-workstream-log.md for the
// bufferization roadmap.

// CHECK-LABEL: func.func @matmul_tile_pass_through
func.func @matmul_tile_pass_through(%lhs: tensor<16x32xi8>, %rhs: tensor<64x32xi8>) -> tensor<16x64xi32> {
  // CHECK: gemmini.matmul_tile
  %0 = gemmini.matmul_tile %lhs, %rhs {dataflow = #gemmini.dataflow<os>, lhsZeroPoint = 0 : i64, rhsZeroPoint = 0 : i64, tileM = 16 : i64, tileN = 16 : i64, tileK = 16 : i64} : tensor<16x32xi8>, tensor<64x32xi8> -> tensor<16x64xi32>
  return %0 : tensor<16x64xi32>
}

// -----

// Bufferized int8 matmul is a supported Gemmini operation.

// CHECK-LABEL: func.func @bufferized_i8_matmul
func.func @bufferized_i8_matmul(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>,
    %out: memref<16x16xi32>) {
  // A caller-provided `outs` buffer is a live accumulator (for example, a
  // bias broadcast from another dispatch), so it is also Gemmini's D input.
  // CHECK: gemmini.tile_matmul %{{.*}}, %{{.*}}, %[[OUT:.*]], %[[OUT]]
  // CHECK-NOT: linalg.matmul
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%out : memref<16x16xi32>)
  return
}

// -----

// View-like wrappers preserve caller-backed storage provenance.

// CHECK-LABEL: func.func @bufferized_i8_matmul_caller_view
func.func @bufferized_i8_matmul_caller_view(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>,
    %out: memref<16x16xi32>) {
  // CHECK: %[[ALIGNED:.*]] = memref.assume_alignment %{{.*}}, 64
  // CHECK: gemmini.tile_matmul %{{.*}}, %{{.*}}, %[[ALIGNED]], %[[ALIGNED]]
  // CHECK-NOT: linalg.matmul
  %aligned = memref.assume_alignment %out, 64 : memref<16x16xi32>
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%aligned : memref<16x16xi32>)
  return
}

// -----

// A fresh local output remains overwrite-only; it must not be read as D.

// CHECK-LABEL: func.func @bufferized_i8_matmul_local_output
func.func @bufferized_i8_matmul_local_output(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>) {
  // CHECK: %[[OUT:.*]] = memref.alloca() : memref<16x16xi32>
  // CHECK: %[[EMPTY:.*]] = memref.alloca() : memref<0x0xi32>
  // CHECK: gemmini.tile_matmul %{{.*}}, %{{.*}}, %[[OUT]], %[[EMPTY]]
  // CHECK-NOT: linalg.matmul
  %out = memref.alloca() : memref<16x16xi32>
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%out : memref<16x16xi32>)
  return
}

// -----

// A dynamic alloca's size operand is not storage provenance.

// CHECK-LABEL: func.func @bufferized_i8_matmul_dynamic_local_output
func.func @bufferized_i8_matmul_dynamic_local_output(
    %lhs: memref<16x32xi8>, %rhs: memref<32x?xi8>, %n: index) {
  // CHECK: %[[OUT:.*]] = memref.alloca(%{{.*}}) : memref<16x?xi32>
  // CHECK: %[[EMPTY:.*]] = memref.alloca() : memref<0x0xi32>
  // CHECK: gemmini.tile_matmul %{{.*}}, %{{.*}}, %[[OUT]], %[[EMPTY]]
  // CHECK-NOT: linalg.matmul
  %out = memref.alloca(%n) : memref<16x?xi32>
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x?xi8>)
      outs(%out : memref<16x?xi32>)
  return
}

// -----

// A plain f32 matmul is not representable by the classic int8 Gemmini
// datapath and must remain available to the ordinary CPU lowering.

// CHECK-LABEL: func.func @bufferized_f32_matmul
func.func @bufferized_f32_matmul(
    %lhs: memref<16x32xf32>, %rhs: memref<32x16xf32>,
    %out: memref<16x16xf32>) {
  // CHECK-NOT: gemmini.tile_matmul
  // CHECK: linalg.matmul
  linalg.matmul ins(%lhs, %rhs : memref<16x32xf32>, memref<32x16xf32>)
      outs(%out : memref<16x16xf32>)
  return
}

// -----

// The importer may split a symmetric QDQ rescale over two identity-indexed
// generics. Both generics are folded into Gemmini's accumulator scale.

// CHECK-LABEL: func.func @bufferized_i8_matmul_split_qdq
func.func @bufferized_i8_matmul_split_qdq(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>,
    %acc: memref<16x16xi32>, %scaled: memref<16x16xf32>,
    %out: memref<16x16xi8>) {
  %scale_in = arith.constant 2.500000e-01 : f32
  %scale_out = arith.constant 5.000000e-01 : f32
  %zero = arith.constant 0.000000e+00 : f32
  %clip_lo = arith.constant -1.280000e+02 : f32
  %clip_hi = arith.constant 1.270000e+02 : f32
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%acc : memref<16x16xi32>)
  linalg.generic {
      indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d0, d1)>],
      iterator_types = ["parallel", "parallel"]}
      ins(%acc : memref<16x16xi32>) outs(%scaled : memref<16x16xf32>) {
    ^bb0(%in: i32, %unused: f32):
      %f = arith.sitofp %in : i32 to f32
      %s = arith.mulf %f, %scale_in : f32
      linalg.yield %s : f32
  }
  linalg.generic {
      indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d0, d1)>],
      iterator_types = ["parallel", "parallel"]}
      ins(%scaled : memref<16x16xf32>) outs(%out : memref<16x16xi8>) {
    ^bb0(%in: f32, %unused: i8):
      %q = arith.divf %in, %scale_out : f32
      %r = math.roundeven %q : f32
      %z = arith.addf %r, %zero : f32
      %lo = arith.maximumf %z, %clip_lo : f32
      %hi = arith.minimumf %lo, %clip_hi : f32
      %i = arith.fptosi %hi : f32 to i8
      linalg.yield %i : i8
  }
  // CHECK: gemmini.tile_matmul %{{.*}}, %{{.*}}, %{{.*}}, %{{.*}} {
  // CHECK-SAME: accScale = 5.000000e-01 : f32
  // CHECK-NOT: arith.sitofp
  // CHECK-NOT: linalg.generic
  // CHECK: return
  return
}

// -----

// A non-zero output zero-point is outside the symmetric Gemmini contract, so
// the two scalar generics must remain for the CPU lowering.

// CHECK-LABEL: func.func @split_qdq_nonzero_zero_point
func.func @split_qdq_nonzero_zero_point(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>,
    %acc: memref<16x16xi32>, %scaled: memref<16x16xf32>,
    %out: memref<16x16xi8>) {
  %scale_in = arith.constant 2.500000e-01 : f32
  %scale_out = arith.constant 5.000000e-01 : f32
  %one = arith.constant 1.000000e+00 : f32
  %clip_lo = arith.constant -1.280000e+02 : f32
  %clip_hi = arith.constant 1.270000e+02 : f32
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%acc : memref<16x16xi32>)
  linalg.generic {
      indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d0, d1)>],
      iterator_types = ["parallel", "parallel"]}
      ins(%acc : memref<16x16xi32>) outs(%scaled : memref<16x16xf32>) {
    ^bb0(%in: i32, %unused: f32):
      %f = arith.sitofp %in : i32 to f32
      %s = arith.mulf %f, %scale_in : f32
      linalg.yield %s : f32
  }
  linalg.generic {
      indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d0, d1)>],
      iterator_types = ["parallel", "parallel"]}
      ins(%scaled : memref<16x16xf32>) outs(%out : memref<16x16xi8>) {
    ^bb0(%in: f32, %unused: i8):
      %q = arith.divf %in, %scale_out : f32
      %r = math.roundeven %q : f32
      %z = arith.addf %r, %one : f32
      %lo = arith.maximumf %z, %clip_lo : f32
      %hi = arith.minimumf %lo, %clip_hi : f32
      %i = arith.fptosi %hi : f32 to i8
      linalg.yield %i : i8
  }
  // CHECK: gemmini.tile_matmul
  // CHECK: linalg.generic
  // CHECK: arith.sitofp
  // CHECK: linalg.generic
  // CHECK: return
  return
}

// -----

// A QDQ prefix may be followed by a dequantization to f32 in the same
// generic. Gemmini produces the i8 intermediate; only the f32 tail remains.

// CHECK-LABEL: func.func @qdq_prefix_with_f32_tail
func.func @qdq_prefix_with_f32_tail(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>,
    %acc: memref<16x16xi32>, %out: memref<16x16xf32>) {
  %scale_in = arith.constant 2.500000e-01 : f32
  %scale_out = arith.constant 5.000000e-01 : f32
  %zero = arith.constant 0.000000e+00 : f32
  %clip_lo = arith.constant -1.280000e+02 : f32
  %clip_hi = arith.constant 1.270000e+02 : f32
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%acc : memref<16x16xi32>)
  linalg.generic {
      indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d0, d1)>],
      iterator_types = ["parallel", "parallel"]}
      ins(%acc : memref<16x16xi32>) outs(%out : memref<16x16xf32>) {
    ^bb0(%in: i32, %unused: f32):
      %f = arith.sitofp %in : i32 to f32
      %s = arith.mulf %f, %scale_in : f32
      %q = arith.divf %s, %scale_out : f32
      %r = math.roundeven %q : f32
      %z = arith.addf %r, %zero : f32
      %lo = arith.maximumf %z, %clip_lo : f32
      %hi = arith.minimumf %lo, %clip_hi : f32
      %i = arith.fptosi %hi : f32 to i8
      %dq = arith.sitofp %i : i8 to f32
      %result = arith.mulf %dq, %scale_out : f32
      linalg.yield %result : f32
  }
  // CHECK: gemmini.tile_matmul
  // CHECK: linalg.generic
  // CHECK-NOT: arith.sitofp %{{.*}} : i32 to f32
  // CHECK: arith.sitofp %{{.*}} : i8 to f32
  // CHECK: return
  return
}

// -----

// Residual chains can place unrelated work before the matmul's QDQ prefix and
// can carry the matmul accumulator as a non-first input.

// CHECK-LABEL: func.func @qdq_prefix_after_residual_work
func.func @qdq_prefix_after_residual_work(
    %lhs: memref<16x32xi8>, %rhs: memref<32x16xi8>,
    %acc: memref<16x16xi32>, %residual: memref<16x16xi8>,
    %out: memref<16x16xi8>) {
  %scale_in = arith.constant 2.500000e-01 : f32
  %scale_out = arith.constant 5.000000e-01 : f32
  %residual_scale = arith.constant 1.250000e-01 : f32
  %zero = arith.constant 0.000000e+00 : f32
  %clip_lo = arith.constant -1.280000e+02 : f32
  %clip_hi = arith.constant 1.270000e+02 : f32
  linalg.matmul ins(%lhs, %rhs : memref<16x32xi8>, memref<32x16xi8>)
      outs(%acc : memref<16x16xi32>)
  linalg.generic {
      indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d0, d1)>,
                       affine_map<(d0, d1) -> (d1, d0)>],
      iterator_types = ["parallel", "parallel"]}
      ins(%residual, %acc : memref<16x16xi8>, memref<16x16xi32>)
      outs(%out : memref<16x16xi8>) {
    ^bb0(%res: i8, %in: i32, %unused: i8):
      %rf = arith.sitofp %res : i8 to f32
      %rs = arith.mulf %rf, %residual_scale : f32
      %f = arith.sitofp %in : i32 to f32
      %s = arith.mulf %f, %scale_in : f32
      %q = arith.divf %s, %scale_out : f32
      %r = math.roundeven %q : f32
      %z = arith.addf %r, %zero : f32
      %lo = arith.maximumf %z, %clip_lo : f32
      %hi = arith.minimumf %lo, %clip_hi : f32
      %i = arith.fptosi %hi : f32 to i8
      %if = arith.sitofp %i : i8 to f32
      %sum = arith.addf %if, %rs : f32
      %final = arith.fptosi %sum : f32 to i8
      linalg.yield %final : i8
  }
  // CHECK: gemmini.tile_matmul
  // CHECK: linalg.generic
  // CHECK-NOT: arith.sitofp %{{.*}} : i32 to f32
  // CHECK: arith.sitofp %{{.*}} : i8 to f32
  // CHECK: return
  return
}
