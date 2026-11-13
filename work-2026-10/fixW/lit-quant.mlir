#map = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d3, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, 0)>
#map3 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
module {
  func.func @forward(%arg0: !torch.vtensor<[1,1,2],f16>) -> !torch.vtensor<[1,1,2],f16> {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,1,2],f16> -> tensor<1x1x2xf16>
    %1 = torch.vtensor.literal(dense<[[0, 1], [2, 3]]> : tensor<2x2xui8>) : !torch.vtensor<[2,2],ui8>
    %2 = torch_c.to_builtin_tensor %1 : !torch.vtensor<[2,2],ui8> -> tensor<2x2xi8>
    %3 = torch.vtensor.literal(dense<1.000000e+00> : tensor<2x1x1xf16>) : !torch.vtensor<[2,1,1],f16>
    %4 = torch_c.to_builtin_tensor %3 : !torch.vtensor<[2,1,1],f16> -> tensor<2x1x1xf16>
    %5 = torch.vtensor.literal(dense<0.000000e+00> : tensor<2x1x1xf16>) : !torch.vtensor<[2,1,1],f16>
    %6 = torch_c.to_builtin_tensor %5 : !torch.vtensor<[2,1,1],f16> -> tensor<2x1x1xf16>
    %int8 = torch.constant.int 8
    %int2 = torch.constant.int 2
    %expanded = tensor.expand_shape %0 [[0], [1], [2, 3]] output_shape [1, 1, 1, 2] : tensor<1x1x2xf16> into tensor<1x1x1x2xf16>
    %expanded_0 = tensor.expand_shape %2 [[0], [1, 2]] output_shape [2, 1, 2] : tensor<2x2xi8> into tensor<2x1x2xi8>
    %cst = arith.constant 0.000000e+00 : f16
    %7 = tensor.empty() : tensor<1x1x2xf16>
    %8 = linalg.fill ins(%cst : f16) outs(%7 : tensor<1x1x2xf16>) -> tensor<1x1x2xf16>
    %9 = linalg.generic {indexing_maps = [#map, #map1, #map2, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%expanded, %expanded_0, %4, %6 : tensor<1x1x1x2xf16>, tensor<2x1x2xi8>, tensor<2x1x1xf16>, tensor<2x1x1xf16>) outs(%8 : tensor<1x1x2xf16>) {
    ^bb0(%in: f16, %in_1: i8, %in_2: f16, %in_3: f16, %out: f16):
      %11 = arith.sitofp %in_1 : i8 to f16
      %12 = arith.subf %11, %in_3 : f16
      %13 = arith.mulf %12, %in_2 : f16
      %14 = arith.mulf %in, %13 : f16
      %15 = arith.addf %14, %out : f16
      linalg.yield %15 : f16
    } -> tensor<1x1x2xf16>
    %cast = tensor.cast %9 : tensor<1x1x2xf16> to tensor<1x1x2xf16>
    %10 = torch_c.from_builtin_tensor %cast : tensor<1x1x2xf16> -> !torch.vtensor<[1,1,2],f16>
    return %10 : !torch.vtensor<[1,1,2],f16>
  }
}

// -----
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0) -> (d0)>
module {
  func.func @symmetric_per_token(%arg0: !torch.vtensor<[2,4],f32>) -> (!torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>, !torch.vtensor<[2,4],si8>) {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[2,4],f32> -> tensor<2x4xf32>
    %str = torch.constant.str "SYMMETRIC"
    %int1 = torch.constant.int 1
    %int4 = torch.constant.int 4
    %int-127 = torch.constant.int -127
    %int127 = torch.constant.int 127
    %float1.000000e-05 = torch.constant.float 1.000000e-05
    %none = torch.constant.none
    %false = torch.constant.bool false
    %1 = torch.prim.ListConstruct %int1, %int4 : (!torch.int, !torch.int) -> !torch.list<int>
    %cst = arith.constant 0.000000e+00 : f32
    %2 = tensor.empty() : tensor<2xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<2xf32>) -> tensor<2xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "reduction"]} ins(%0 : tensor<2x4xf32>) outs(%3 : tensor<2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = math.absf %in : f32
      %15 = arith.maximumf %14, %out : f32
      linalg.yield %15 : f32
    } -> tensor<2xf32>
    %cst_0 = arith.constant 1.270000e+02 : f32
    %cst_1 = arith.constant 9.99999974E-6 : f32
    %5 = tensor.empty() : tensor<2xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = ["parallel"]} ins(%4 : tensor<2xf32>) outs(%5 : tensor<2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = arith.divf %in, %cst_0 : f32
      %15 = arith.maximumf %14, %cst_1 : f32
      linalg.yield %15 : f32
    } -> tensor<2xf32>
    %7 = torch_c.from_builtin_tensor %6 : tensor<2xf32> -> !torch.vtensor<[2],f32>
    %8 = tensor.empty() : tensor<2xf32>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %9 = linalg.fill ins(%cst_2 : f32) outs(%8 : tensor<2xf32>) -> tensor<2xf32>
    %10 = torch_c.from_builtin_tensor %9 : tensor<2xf32> -> !torch.vtensor<[2],f32>
    %11 = tensor.empty() : tensor<2x4xi8>
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%0, %6, %9 : tensor<2x4xf32>, tensor<2xf32>, tensor<2xf32>) outs(%11 : tensor<2x4xi8>) {
    ^bb0(%in: f32, %in_3: f32, %in_4: f32, %out: i8):
      %cst_5 = arith.constant 1.000000e+00 : f32
      %14 = arith.divf %cst_5, %in_3 : f32
      %15 = arith.mulf %in, %14 : f32
      %16 = math.roundeven %15 : f32
      %17 = arith.addf %16, %in_4 : f32
      %cst_6 = arith.constant -1.270000e+02 : f32
      %cst_7 = arith.constant 1.270000e+02 : f32
      %18 = arith.maximumf %17, %cst_6 : f32
      %19 = arith.minimumf %18, %cst_7 : f32
      %20 = arith.fptosi %19 : f32 to i32
      %21 = arith.trunci %20 : i32 to i8
      linalg.yield %21 : i8
    } -> tensor<2x4xi8>
    %13 = torch_c.from_builtin_tensor %12 : tensor<2x4xi8> -> !torch.vtensor<[2,4],si8>
    return %7, %10, %13 : !torch.vtensor<[2],f32>, !torch.vtensor<[2],f32>, !torch.vtensor<[2,4],si8>
  }
}

// -----
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @symmetric_partial_block(%arg0: !torch.vtensor<[2,8],f32>) -> (!torch.vtensor<[2,2],f32>, !torch.vtensor<[2,2],f32>, !torch.vtensor<[2,8],si8>) {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[2,8],f32> -> tensor<2x8xf32>
    %str = torch.constant.str "SYMMETRIC"
    %int1 = torch.constant.int 1
    %int4 = torch.constant.int 4
    %int-127 = torch.constant.int -127
    %int127 = torch.constant.int 127
    %float1.000000e-05 = torch.constant.float 1.000000e-05
    %none = torch.constant.none
    %false = torch.constant.bool false
    %1 = torch.prim.ListConstruct %int1, %int4 : (!torch.int, !torch.int) -> !torch.list<int>
    %expanded = tensor.expand_shape %0 [[0], [1, 2]] output_shape [2, 2, 4] : tensor<2x8xf32> into tensor<2x2x4xf32>
    %cst = arith.constant 0.000000e+00 : f32
    %2 = tensor.empty() : tensor<2x2xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<2x2xf32>) -> tensor<2x2xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "reduction"]} ins(%expanded : tensor<2x2x4xf32>) outs(%3 : tensor<2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = math.absf %in : f32
      %15 = arith.maximumf %14, %out : f32
      linalg.yield %15 : f32
    } -> tensor<2x2xf32>
    %cst_0 = arith.constant 1.270000e+02 : f32
    %cst_1 = arith.constant 9.99999974E-6 : f32
    %5 = tensor.empty() : tensor<2x2xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = ["parallel", "parallel"]} ins(%4 : tensor<2x2xf32>) outs(%5 : tensor<2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = arith.divf %in, %cst_0 : f32
      %15 = arith.maximumf %14, %cst_1 : f32
      linalg.yield %15 : f32
    } -> tensor<2x2xf32>
    %7 = torch_c.from_builtin_tensor %6 : tensor<2x2xf32> -> !torch.vtensor<[2,2],f32>
    %8 = tensor.empty() : tensor<2x2xf32>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %9 = linalg.fill ins(%cst_2 : f32) outs(%8 : tensor<2x2xf32>) -> tensor<2x2xf32>
    %10 = torch_c.from_builtin_tensor %9 : tensor<2x2xf32> -> !torch.vtensor<[2,2],f32>
    %expanded_3 = tensor.expand_shape %0 [[0], [1, 2]] output_shape [2, 2, 4] : tensor<2x8xf32> into tensor<2x2x4xf32>
    %11 = tensor.empty() : tensor<2x2x4xi8>
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_3, %6, %9 : tensor<2x2x4xf32>, tensor<2x2xf32>, tensor<2x2xf32>) outs(%11 : tensor<2x2x4xi8>) {
    ^bb0(%in: f32, %in_4: f32, %in_5: f32, %out: i8):
      %cst_6 = arith.constant 1.000000e+00 : f32
      %14 = arith.divf %cst_6, %in_4 : f32
      %15 = arith.mulf %in, %14 : f32
      %16 = math.roundeven %15 : f32
      %17 = arith.addf %16, %in_5 : f32
      %cst_7 = arith.constant -1.270000e+02 : f32
      %cst_8 = arith.constant 1.270000e+02 : f32
      %18 = arith.maximumf %17, %cst_7 : f32
      %19 = arith.minimumf %18, %cst_8 : f32
      %20 = arith.fptosi %19 : f32 to i32
      %21 = arith.trunci %20 : i32 to i8
      linalg.yield %21 : i8
    } -> tensor<2x2x4xi8>
    %collapsed = tensor.collapse_shape %12 [[0], [1, 2]] : tensor<2x2x4xi8> into tensor<2x8xi8>
    %13 = torch_c.from_builtin_tensor %collapsed : tensor<2x8xi8> -> !torch.vtensor<[2,8],si8>
    return %7, %10, %13 : !torch.vtensor<[2,2],f32>, !torch.vtensor<[2,2],f32>, !torch.vtensor<[2,8],si8>
  }
}

// -----
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0) -> (d0)>
module {
  func.func @symmetric_per_channel(%arg0: !torch.vtensor<[3,5],f32>) -> (!torch.vtensor<[5],f32>, !torch.vtensor<[5],f32>, !torch.vtensor<[3,5],si8>) {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[3,5],f32> -> tensor<3x5xf32>
    %str = torch.constant.str "SYMMETRIC"
    %int1 = torch.constant.int 1
    %int3 = torch.constant.int 3
    %int-127 = torch.constant.int -127
    %int127 = torch.constant.int 127
    %float1.000000e-05 = torch.constant.float 1.000000e-05
    %none = torch.constant.none
    %false = torch.constant.bool false
    %1 = torch.prim.ListConstruct %int3, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %cst = arith.constant 0.000000e+00 : f32
    %2 = tensor.empty() : tensor<5xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<5xf32>) -> tensor<5xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["reduction", "parallel"]} ins(%0 : tensor<3x5xf32>) outs(%3 : tensor<5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = math.absf %in : f32
      %15 = arith.maximumf %14, %out : f32
      linalg.yield %15 : f32
    } -> tensor<5xf32>
    %cst_0 = arith.constant 1.270000e+02 : f32
    %cst_1 = arith.constant 9.99999974E-6 : f32
    %5 = tensor.empty() : tensor<5xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = ["parallel"]} ins(%4 : tensor<5xf32>) outs(%5 : tensor<5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = arith.divf %in, %cst_0 : f32
      %15 = arith.maximumf %14, %cst_1 : f32
      linalg.yield %15 : f32
    } -> tensor<5xf32>
    %7 = torch_c.from_builtin_tensor %6 : tensor<5xf32> -> !torch.vtensor<[5],f32>
    %8 = tensor.empty() : tensor<5xf32>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %9 = linalg.fill ins(%cst_2 : f32) outs(%8 : tensor<5xf32>) -> tensor<5xf32>
    %10 = torch_c.from_builtin_tensor %9 : tensor<5xf32> -> !torch.vtensor<[5],f32>
    %11 = tensor.empty() : tensor<3x5xi8>
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%0, %6, %9 : tensor<3x5xf32>, tensor<5xf32>, tensor<5xf32>) outs(%11 : tensor<3x5xi8>) {
    ^bb0(%in: f32, %in_3: f32, %in_4: f32, %out: i8):
      %cst_5 = arith.constant 1.000000e+00 : f32
      %14 = arith.divf %cst_5, %in_3 : f32
      %15 = arith.mulf %in, %14 : f32
      %16 = math.roundeven %15 : f32
      %17 = arith.addf %16, %in_4 : f32
      %cst_6 = arith.constant -1.270000e+02 : f32
      %cst_7 = arith.constant 1.270000e+02 : f32
      %18 = arith.maximumf %17, %cst_6 : f32
      %19 = arith.minimumf %18, %cst_7 : f32
      %20 = arith.fptosi %19 : f32 to i32
      %21 = arith.trunci %20 : i32 to i8
      linalg.yield %21 : i8
    } -> tensor<3x5xi8>
    %13 = torch_c.from_builtin_tensor %12 : tensor<3x5xi8> -> !torch.vtensor<[3,5],si8>
    return %7, %10, %13 : !torch.vtensor<[5],f32>, !torch.vtensor<[5],f32>, !torch.vtensor<[3,5],si8>
  }
}

// -----
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0) -> (d0)>
module {
  func.func @symmetric_dynamic_per_token(%arg0: !torch.vtensor<[?,4],f32>) -> (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>, !torch.vtensor<[?,4],si8>) {
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[?,4],f32> -> tensor<?x4xf32>
    %str = torch.constant.str "SYMMETRIC"
    %int1 = torch.constant.int 1
    %int4 = torch.constant.int 4
    %int-127 = torch.constant.int -127
    %int127 = torch.constant.int 127
    %float1.000000e-05 = torch.constant.float 1.000000e-05
    %none = torch.constant.none
    %false = torch.constant.bool false
    %1 = torch.prim.ListConstruct %int1, %int4 : (!torch.int, !torch.int) -> !torch.list<int>
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %0, %c0 : tensor<?x4xf32>
    %cst = arith.constant 0.000000e+00 : f32
    %2 = tensor.empty(%dim) : tensor<?xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<?xf32>) -> tensor<?xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "reduction"]} ins(%0 : tensor<?x4xf32>) outs(%3 : tensor<?xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = math.absf %in : f32
      %15 = arith.maximumf %14, %out : f32
      linalg.yield %15 : f32
    } -> tensor<?xf32>
    %cst_0 = arith.constant 1.270000e+02 : f32
    %cst_1 = arith.constant 9.99999974E-6 : f32
    %5 = tensor.empty(%dim) : tensor<?xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = ["parallel"]} ins(%4 : tensor<?xf32>) outs(%5 : tensor<?xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = arith.divf %in, %cst_0 : f32
      %15 = arith.maximumf %14, %cst_1 : f32
      linalg.yield %15 : f32
    } -> tensor<?xf32>
    %7 = torch_c.from_builtin_tensor %6 : tensor<?xf32> -> !torch.vtensor<[?],f32>
    %8 = tensor.empty(%dim) : tensor<?xf32>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %9 = linalg.fill ins(%cst_2 : f32) outs(%8 : tensor<?xf32>) -> tensor<?xf32>
    %10 = torch_c.from_builtin_tensor %9 : tensor<?xf32> -> !torch.vtensor<[?],f32>
    %c0_3 = arith.constant 0 : index
    %dim_4 = tensor.dim %0, %c0_3 : tensor<?x4xf32>
    %11 = tensor.empty(%dim_4) : tensor<?x4xi8>
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%0, %6, %9 : tensor<?x4xf32>, tensor<?xf32>, tensor<?xf32>) outs(%11 : tensor<?x4xi8>) {
    ^bb0(%in: f32, %in_5: f32, %in_6: f32, %out: i8):
      %cst_7 = arith.constant 1.000000e+00 : f32
      %14 = arith.divf %cst_7, %in_5 : f32
      %15 = arith.mulf %in, %14 : f32
      %16 = math.roundeven %15 : f32
      %17 = arith.addf %16, %in_6 : f32
      %cst_8 = arith.constant -1.270000e+02 : f32
      %cst_9 = arith.constant 1.270000e+02 : f32
      %18 = arith.maximumf %17, %cst_8 : f32
      %19 = arith.minimumf %18, %cst_9 : f32
      %20 = arith.fptosi %19 : f32 to i32
      %21 = arith.trunci %20 : i32 to i8
      linalg.yield %21 : i8
    } -> tensor<?x4xi8>
    %13 = torch_c.from_builtin_tensor %12 : tensor<?x4xi8> -> !torch.vtensor<[?,4],si8>
    return %7, %10, %13 : !torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>, !torch.vtensor<[?,4],si8>
  }
}

