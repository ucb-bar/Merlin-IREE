module {
  func.func @elementwise$unary(%arg0: !torch.vtensor<[],f32>) -> !torch.vtensor<[],f32> {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[],f32> -> tensor<f32>
    %c1 = arith.constant 1 : index
    %1 = tensor.empty() : tensor<f32>
    %2 = linalg.generic {indexing_maps = [affine_map<() -> ()>, affine_map<() -> ()>], iterator_types = []} ins(%0 : tensor<f32>) outs(%1 : tensor<f32>) {
    ^bb0(%in: f32, %out: f32):
      %4 = math.tanh %in : f32
      linalg.yield %4 : f32
    } -> tensor<f32>
    %cast = tensor.cast %2 : tensor<f32> to tensor<f32>
    %3 = torch_c.from_builtin_tensor %cast : tensor<f32> -> !torch.vtensor<[],f32>
    return %3 : !torch.vtensor<[],f32>
  }
}
// -----
module {
  func.func @elementwise$binary(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?],f32>) -> !torch.vtensor<[?,?],f32> {
    %0 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[?],f32> -> tensor<?xf32>
    %1 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[?,?],f32> -> tensor<?x?xf32>
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %1, %c0 : tensor<?x?xf32>
    %c1_0 = arith.constant 1 : index
    %dim_1 = tensor.dim %1, %c1_0 : tensor<?x?xf32>
    %c0_2 = arith.constant 0 : index
    %dim_3 = tensor.dim %0, %c0_2 : tensor<?xf32>
    %2 = arith.cmpi eq, %dim_1, %dim_3 : index
    cf.assert %2, "mismatched size for broadcast"
    %3 = tensor.empty(%dim, %dim_1) : tensor<?x?xf32>
    %4 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1, %0 : tensor<?x?xf32>, tensor<?xf32>) outs(%3 : tensor<?x?xf32>) {
    ^bb0(%in: f32, %in_4: f32, %out: f32):
      %6 = arith.mulf %in, %in_4 : f32
      linalg.yield %6 : f32
    } -> tensor<?x?xf32>
    %cast = tensor.cast %4 : tensor<?x?xf32> to tensor<?x?xf32>
    %5 = torch_c.from_builtin_tensor %cast : tensor<?x?xf32> -> !torch.vtensor<[?,?],f32>
    return %5 : !torch.vtensor<[?,?],f32>
  }
}
// -----
module {
  func.func @elementwise$ternary(%arg0: !torch.vtensor<[?,?,?],f32>, %arg1: !torch.vtensor<[?,?],f32>, %arg2: !torch.vtensor<[?],f32>) -> !torch.vtensor<[?,?,?],f32> {
    %0 = torch_c.to_builtin_tensor %arg2 : !torch.vtensor<[?],f32> -> tensor<?xf32>
    %1 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[?,?],f32> -> tensor<?x?xf32>
    %2 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[?,?,?],f32> -> tensor<?x?x?xf32>
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %2, %c0 : tensor<?x?x?xf32>
    %c1_0 = arith.constant 1 : index
    %dim_1 = tensor.dim %2, %c1_0 : tensor<?x?x?xf32>
    %c2 = arith.constant 2 : index
    %dim_2 = tensor.dim %2, %c2 : tensor<?x?x?xf32>
    %c0_3 = arith.constant 0 : index
    %dim_4 = tensor.dim %1, %c0_3 : tensor<?x?xf32>
    %3 = arith.cmpi eq, %dim_1, %dim_4 : index
    cf.assert %3, "mismatched size for broadcast"
    %c1_5 = arith.constant 1 : index
    %dim_6 = tensor.dim %1, %c1_5 : tensor<?x?xf32>
    %4 = arith.cmpi eq, %dim_2, %dim_6 : index
    cf.assert %4, "mismatched size for broadcast"
    %c0_7 = arith.constant 0 : index
    %dim_8 = tensor.dim %0, %c0_7 : tensor<?xf32>
    %5 = arith.cmpi eq, %dim_2, %dim_8 : index
    cf.assert %5, "mismatched size for broadcast"
    %6 = tensor.empty(%dim, %dim_1, %dim_2) : tensor<?x?x?xf32>
    %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %1, %0 : tensor<?x?x?xf32>, tensor<?x?xf32>, tensor<?xf32>) outs(%6 : tensor<?x?x?xf32>) {
    ^bb0(%in: f32, %in_9: f32, %in_10: f32, %out: f32):
      %9 = arith.subf %in_9, %in : f32
      %10 = arith.mulf %9, %in_10 : f32
      %11 = arith.addf %in, %10 : f32
      linalg.yield %11 : f32
    } -> tensor<?x?x?xf32>
    %cast = tensor.cast %7 : tensor<?x?x?xf32> to tensor<?x?x?xf32>
    %8 = torch_c.from_builtin_tensor %cast : tensor<?x?x?xf32> -> !torch.vtensor<[?,?,?],f32>
    return %8 : !torch.vtensor<[?,?,?],f32>
  }
}
// -----
module {
  func.func @elementwise$with_scalar_capture(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.vtensor<[],f32>) -> !torch.vtensor<[?],f32> {
    %0 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[],f32> -> tensor<f32>
    %1 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[?],f32> -> tensor<?xf32>
    %int1 = torch.constant.int 1
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %1, %c0 : tensor<?xf32>
    %2 = tensor.empty(%dim) : tensor<?xf32>
    %3 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%1, %0 : tensor<?xf32>, tensor<f32>) outs(%2 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %5 = arith.sitofp %c1_i64 : i64 to f32
      %6 = arith.mulf %in_0, %5 : f32
      %7 = arith.addf %in, %6 : f32
      linalg.yield %7 : f32
    } -> tensor<?xf32>
    %cast = tensor.cast %3 : tensor<?xf32> to tensor<?xf32>
    %4 = torch_c.from_builtin_tensor %cast : tensor<?xf32> -> !torch.vtensor<[?],f32>
    return %4 : !torch.vtensor<[?],f32>
  }
}
// -----
module {
  func.func @elementwise$static_1(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.vtensor<[1],f32>) -> !torch.vtensor<[?],f32> {
    %0 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[1],f32> -> tensor<1xf32>
    %1 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[?],f32> -> tensor<?xf32>
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %1, %c0 : tensor<?xf32>
    %2 = tensor.empty(%dim) : tensor<?xf32>
    %3 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%1, %0 : tensor<?xf32>, tensor<1xf32>) outs(%2 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %5 = arith.mulf %in, %in_0 : f32
      linalg.yield %5 : f32
    } -> tensor<?xf32>
    %cast = tensor.cast %3 : tensor<?xf32> to tensor<?xf32>
    %4 = torch_c.from_builtin_tensor %cast : tensor<?xf32> -> !torch.vtensor<[?],f32>
    return %4 : !torch.vtensor<[?],f32>
  }
}
// -----
module {
  func.func @elementwise_sinh(%arg0: !torch.vtensor<[3],f32>) -> !torch.vtensor<[3],f32> {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[3],f32> -> tensor<3xf32>
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %1 = tensor.empty() : tensor<3xf32>
    %2 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%0 : tensor<3xf32>) outs(%1 : tensor<3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %4 = math.sinh %in : f32
      linalg.yield %4 : f32
    } -> tensor<3xf32>
    %cast = tensor.cast %2 : tensor<3xf32> to tensor<3xf32>
    %3 = torch_c.from_builtin_tensor %cast : tensor<3xf32> -> !torch.vtensor<[3],f32>
    return %3 : !torch.vtensor<[3],f32>
  }
}
// -----
module {
  func.func @elementwise_todtype_bf162f16(%arg0: !torch.vtensor<[1,?,32,128],bf16>) -> !torch.vtensor<[1,?,32,128],f16> {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,?,32,128],bf16> -> tensor<1x?x32x128xbf16>
    %int5 = torch.constant.int 5
    %false = torch.constant.bool false
    %none = torch.constant.none
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1_0 = arith.constant 1 : index
    %c1_1 = arith.constant 1 : index
    %dim = tensor.dim %0, %c1_1 : tensor<1x?x32x128xbf16>
    %c2 = arith.constant 2 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c128 = arith.constant 128 : index
    %1 = tensor.empty(%dim) : tensor<1x?x32x128xf16>
    %2 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%0 : tensor<1x?x32x128xbf16>) outs(%1 : tensor<1x?x32x128xf16>) {
    ^bb0(%in: bf16, %out: f16):
      %4 = arith.extf %in : bf16 to f32
      %5 = arith.truncf %4 : f32 to f16
      linalg.yield %5 : f16
    } -> tensor<1x?x32x128xf16>
    %cast = tensor.cast %2 : tensor<1x?x32x128xf16> to tensor<1x?x32x128xf16>
    %3 = torch_c.from_builtin_tensor %cast : tensor<1x?x32x128xf16> -> !torch.vtensor<[1,?,32,128],f16>
    return %3 : !torch.vtensor<[1,?,32,128],f16>
  }
}
// -----
module {
  func.func @elementwise_add_non_broadcast_unit_dims(%arg0: !torch.vtensor<[6,1],bf16>, %arg1: !torch.vtensor<[1],bf16>) -> !torch.vtensor<[6,1],bf16> {
    %0 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[1],bf16> -> tensor<1xbf16>
    %1 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[6,1],bf16> -> tensor<6x1xbf16>
    %int1 = torch.constant.int 1
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c6 = arith.constant 6 : index
    %c1_0 = arith.constant 1 : index
    %c1_1 = arith.constant 1 : index
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %2 = arith.cmpi eq, %c1_1, %c1_3 : index
    cf.assert %2, "mismatched size for broadcast"
    %3 = tensor.empty() : tensor<6x1xbf16>
    %4 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1, %0 : tensor<6x1xbf16>, tensor<1xbf16>) outs(%3 : tensor<6x1xbf16>) {
    ^bb0(%in: bf16, %in_4: bf16, %out: bf16):
      %6 = arith.sitofp %c1_i64 : i64 to bf16
      %7 = arith.mulf %in_4, %6 : bf16
      %8 = arith.addf %in, %7 : bf16
      linalg.yield %8 : bf16
    } -> tensor<6x1xbf16>
    %cast = tensor.cast %4 : tensor<6x1xbf16> to tensor<6x1xbf16>
    %5 = torch_c.from_builtin_tensor %cast : tensor<6x1xbf16> -> !torch.vtensor<[6,1],bf16>
    return %5 : !torch.vtensor<[6,1],bf16>
  }
}
// -----
module {
  func.func @gelu_tanh_beta(%arg0: !torch.vtensor<[7],f32>) -> !torch.vtensor<[7],f32> {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[7],f32> -> tensor<7xf32>
    %str = torch.constant.str "tanh"
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %1 = tensor.empty() : tensor<7xf32>
    %2 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} ins(%0 : tensor<7xf32>) outs(%1 : tensor<7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %c3_i64 = arith.constant 3 : i64
      %4 = math.fpowi %in, %c3_i64 : f32, i64
      %cst = arith.constant 4.471500e-02 : f32
      %5 = arith.mulf %4, %cst : f32
      %6 = arith.addf %in, %5 : f32
      %cst_0 = arith.constant 0.797884583 : f32
      %7 = arith.mulf %cst_0, %6 : f32
      %8 = math.tanh %7 : f32
      %cst_1 = arith.constant 1.000000e+00 : f32
      %9 = arith.addf %cst_1, %8 : f32
      %cst_2 = arith.constant 5.000000e-01 : f32
      %10 = arith.mulf %cst_2, %9 : f32
      %11 = arith.mulf %in, %10 : f32
      linalg.yield %11 : f32
    } -> tensor<7xf32>
    %cast = tensor.cast %2 : tensor<7xf32> to tensor<7xf32>
    %3 = torch_c.from_builtin_tensor %cast : tensor<7xf32> -> !torch.vtensor<[7],f32>
    return %3 : !torch.vtensor<[7],f32>
  }
}
