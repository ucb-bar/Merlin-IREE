// RUN: iree-opt %s --mlir-print-local-scope --mlir-disable-threading --iree-plugin=gemmini --pass-pipeline='builtin.module(func.func(gemmini-attach-compilation-info))' | FileCheck %s

// CHECK-LABEL: func.func @tile_16_5632
// CHECK: distribution = [16, 16, 0]
// CHECK-SAME: iree-codegen-tile-and-distribute-to-workgroups-using-forall-op
func.func @tile_16_5632(%a: tensor<16x2048xi8>, %b: tensor<2048x5632xi8>, %c: tensor<16x5632xi32>) -> tensor<16x5632xi32> {
  %0 = linalg.matmul ins(%a, %b : tensor<16x2048xi8>, tensor<2048x5632xi8>) outs(%c : tensor<16x5632xi32>) -> tensor<16x5632xi32>
  return %0 : tensor<16x5632xi32>
}

// CHECK-LABEL: func.func @tile_64_3136
// CHECK: distribution = [16, 16, 0]
// CHECK-SAME: iree-codegen-tile-and-distribute-to-workgroups-using-forall-op
func.func @tile_64_3136(%a: tensor<64x64xi8>, %b: tensor<64x3136xi8>, %c: tensor<64x3136xi32>) -> tensor<64x3136xi32> {
  %0 = linalg.matmul ins(%a, %b : tensor<64x64xi8>, tensor<64x3136xi8>) outs(%c : tensor<64x3136xi32>) -> tensor<64x3136xi32>
  return %0 : tensor<64x3136xi32>
}

// CHECK-LABEL: func.func @tile_196_49
// CHECK: distribution = [4, 1, 0]
// CHECK-SAME: iree-codegen-tile-and-distribute-to-workgroups-using-forall-op
func.func @tile_196_49(%a: tensor<196x64xi8>, %b: tensor<64x49xi8>, %c: tensor<196x49xi32>) -> tensor<196x49xi32> {
  %0 = linalg.matmul ins(%a, %b : tensor<196x64xi8>, tensor<64x49xi8>) outs(%c : tensor<196x49xi32>) -> tensor<196x49xi32>
  return %0 : tensor<196x49xi32>
}

// CHECK-LABEL: func.func @tile_50_1000
// CHECK: distribution = [2, 8, 0]
// CHECK-SAME: iree-codegen-tile-and-distribute-to-workgroups-using-forall-op
func.func @tile_50_1000(%a: tensor<50x32xi8>, %b: tensor<32x1000xi8>, %c: tensor<50x1000xi32>) -> tensor<50x1000xi32> {
  %0 = linalg.matmul ins(%a, %b : tensor<50x32xi8>, tensor<32x1000xi8>) outs(%c : tensor<50x1000xi32>) -> tensor<50x1000xi32>
  return %0 : tensor<50x1000xi32>
}

