#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @integer_mm(%arg0: !torch.vtensor<[2,32],si8>, %arg1: !torch.vtensor<[32,3],si8>) -> !torch.vtensor<[2,3],si32> {
    %0 = torch.aten.mm %arg0, %arg1 : !torch.vtensor<[2,32],si8>, !torch.vtensor<[32,3],si8> -> !torch.vtensor<[2,3],si32>
    return %0 : !torch.vtensor<[2,3],si32>
  }
  func.func @mean(%arg0: !torch.vtensor<[2,64],f32>) -> !torch.vtensor<[2,1],f32> {
    %0 = torch.vtensor.literal(dense<0.000000e+00> : tensor<2x1xf32>) : !torch.vtensor<[2,1],f32>
    %1 = torch.vtensor.literal(dense<0.000000e+00> : tensor<2x8xf32>) : !torch.vtensor<[2,8],f32>
    %float6.400000e01 = torch.constant.float 6.400000e+01
    %int7 = torch.constant.int 7
    %int6 = torch.constant.int 6
    %int5 = torch.constant.int 5
    %int4 = torch.constant.int 4
    %int3 = torch.constant.int 3
    %int2 = torch.constant.int 2
    %int64 = torch.constant.int 64
    %int56 = torch.constant.int 56
    %int48 = torch.constant.int 48
    %int40 = torch.constant.int 40
    %int32 = torch.constant.int 32
    %int24 = torch.constant.int 24
    %int16 = torch.constant.int 16
    %int8 = torch.constant.int 8
    %int0 = torch.constant.int 0
    %int1 = torch.constant.int 1
    %2 = torch.aten.slice.Tensor %arg0, %int1, %int0, %int8, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %3 = torch.aten.slice.Tensor %arg0, %int1, %int0, %int8, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %4 = torch.aten.add.Tensor %1, %3, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %5 = torch.aten.slice.Tensor %arg0, %int1, %int8, %int16, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %6 = torch.aten.add.Tensor %1, %5, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %7 = torch.aten.slice.Tensor %arg0, %int1, %int16, %int24, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %8 = torch.aten.add.Tensor %1, %7, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %9 = torch.aten.slice.Tensor %arg0, %int1, %int24, %int32, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %10 = torch.aten.add.Tensor %1, %9, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %11 = torch.aten.slice.Tensor %arg0, %int1, %int32, %int40, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %12 = torch.aten.add.Tensor %4, %11, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %13 = torch.aten.slice.Tensor %arg0, %int1, %int40, %int48, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %14 = torch.aten.add.Tensor %6, %13, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %15 = torch.aten.slice.Tensor %arg0, %int1, %int48, %int56, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %16 = torch.aten.add.Tensor %8, %15, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %17 = torch.aten.slice.Tensor %arg0, %int1, %int56, %int64, %int1 : !torch.vtensor<[2,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %18 = torch.aten.add.Tensor %10, %17, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %19 = torch.aten.add.Tensor %12, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %20 = torch.aten.add.Tensor %14, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %21 = torch.aten.add.Tensor %16, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %22 = torch.aten.add.Tensor %18, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %23 = torch.aten.add.Tensor %19, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %24 = torch.aten.add.Tensor %20, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %25 = torch.aten.add.Tensor %21, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %26 = torch.aten.add.Tensor %22, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %27 = torch.aten.add.Tensor %23, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %28 = torch.aten.add.Tensor %24, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %29 = torch.aten.add.Tensor %25, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %30 = torch.aten.add.Tensor %26, %1, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %31 = torch.aten.add.Tensor %27, %28, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %32 = torch.aten.add.Tensor %31, %29, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %33 = torch.aten.add.Tensor %32, %30, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %34 = torch.aten.slice.Tensor %33, %int1, %int0, %int1, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %35 = torch.aten.add.Tensor %0, %34, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %36 = torch.aten.slice.Tensor %33, %int1, %int1, %int2, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %37 = torch.aten.add.Tensor %35, %36, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %38 = torch.aten.slice.Tensor %33, %int1, %int2, %int3, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %39 = torch.aten.add.Tensor %37, %38, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %40 = torch.aten.slice.Tensor %33, %int1, %int3, %int4, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %41 = torch.aten.add.Tensor %39, %40, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %42 = torch.aten.slice.Tensor %33, %int1, %int4, %int5, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %43 = torch.aten.add.Tensor %41, %42, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %44 = torch.aten.slice.Tensor %33, %int1, %int5, %int6, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %45 = torch.aten.add.Tensor %43, %44, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %46 = torch.aten.slice.Tensor %33, %int1, %int6, %int7, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %47 = torch.aten.add.Tensor %45, %46, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %48 = torch.aten.slice.Tensor %33, %int1, %int7, %int8, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %49 = torch.aten.add.Tensor %47, %48, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %50 = torch.aten.div.Scalar %49, %float6.400000e01 : !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,1],f32>
    return %50 : !torch.vtensor<[2,1],f32>
  }
  func.func @silu(%arg0: !torch.vtensor<[1,33],f32>) -> !torch.vtensor<[1,33],f32> {
    %c32 = arith.constant 32 : index
    %c33 = arith.constant 33 : index
    %c52_i64 = arith.constant 52 : i64
    %c1023_i64 = arith.constant 1023 : i64
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %cst_1 = arith.constant 0.16666666666666666 : f64
    %cst_2 = arith.constant 0.041666666666666664 : f64
    %cst_3 = arith.constant 0.0083333333333333332 : f64
    %cst_4 = arith.constant 0.0013888888888888889 : f64
    %cst_5 = arith.constant 1.9841269841269841E-4 : f64
    %cst_6 = arith.constant 2.4801587301587302E-5 : f64
    %cst_7 = arith.constant 2.7557319223985893E-6 : f64
    %cst_8 = arith.constant 2.7557319223985888E-7 : f64
    %cst_9 = arith.constant 2.505210838544172E-8 : f64
    %cst_10 = arith.constant 2.08767569878681E-9 : f64
    %cst_11 = arith.constant 1.6059043836821613E-10 : f64
    %cst_12 = arith.constant 1.1470745597729725E-11 : f64
    %cst_13 = arith.constant -2.3190468138462996E-17 : f64
    %cst_14 = arith.constant -0.69314718055994529 : f64
    %cst_15 = arith.constant 1.4426950408889634 : f64
    %cst_16 = arith.constant 0x7F800000 : f32
    %c23_i32 = arith.constant 23 : i32
    %c127_i32 = arith.constant 127 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst_17 = arith.constant 1.000000e+00 : f32
    %cst_18 = arith.constant 5.000000e-01 : f32
    %cst_19 = arith.constant 0.166666672 : f32
    %cst_20 = arith.constant 0.0416664854 : f32
    %cst_21 = arith.constant 0.00833336077 : f32
    %cst_22 = arith.constant 0.00139304355 : f32
    %cst_23 = arith.constant 1.98527618E-4 : f32
    %cst_24 = arith.constant -1.42860677E-6 : f32
    %cst_25 = arith.constant -0.693145751 : f32
    %cst_26 = arith.constant 1.44269502 : f32
    %cst_27 = arith.constant 0.000000e+00 : f32
    %cst_28 = arith.constant 1.000000e+02 : f32
    %cst_29 = arith.constant -1.040000e+02 : f32
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,33],f32> -> tensor<1x33xf32>
    %1 = tensor.empty() : tensor<1x33xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%0 : tensor<1x33xf32>) outs(%1 : tensor<1x33xf32>) {
    ^bb0(%in: f32, %out: f32):
      %4 = arith.negf %in : f32
      %5 = arith.cmpf uno, %4, %4 : f32
      %6 = arith.select %5, %cst_27, %4 : f32
      %7 = arith.cmpf olt, %6, %cst_29 : f32
      %8 = arith.select %7, %cst_29, %6 : f32
      %9 = arith.cmpf ogt, %8, %cst_28 : f32
      %10 = arith.select %9, %cst_28, %8 : f32
      %11 = arith.mulf %10, %cst_26 : f32
      %12 = math.roundeven %11 : f32
      %13 = arith.fptosi %12 : f32 to i32
      %14 = math.fma %12, %cst_25, %10 : f32
      %15 = math.fma %12, %cst_24, %14 : f32
      %16 = math.fma %cst_23, %15, %cst_22 : f32
      %17 = math.fma %16, %15, %cst_21 : f32
      %18 = math.fma %17, %15, %cst_20 : f32
      %19 = math.fma %18, %15, %cst_19 : f32
      %20 = math.fma %19, %15, %cst_18 : f32
      %21 = arith.mulf %15, %15 : f32
      %22 = math.fma %21, %20, %15 : f32
      %23 = arith.addf %22, %cst_17 : f32
      %24 = arith.shrsi %13, %c1_i32 : i32
      %25 = arith.subi %13, %24 : i32
      %26 = arith.addi %24, %c127_i32 : i32
      %27 = arith.shli %26, %c23_i32 : i32
      %28 = arith.bitcast %27 : i32 to f32
      %29 = arith.mulf %23, %28 : f32
      %30 = arith.addi %25, %c127_i32 : i32
      %31 = arith.shli %30, %c23_i32 : i32
      %32 = arith.bitcast %31 : i32 to f32
      %33 = arith.mulf %29, %32 : f32
      %34 = arith.cmpf olt, %10, %cst_29 : f32
      %35 = arith.select %34, %cst_27, %33 : f32
      %36 = arith.cmpf ogt, %10, %cst_28 : f32
      %37 = arith.select %36, %cst_16, %35 : f32
      %38 = arith.extf %10 : f32 to f64
      %39 = arith.mulf %38, %cst_15 : f64
      %40 = math.roundeven %39 : f64
      %41 = arith.fptosi %40 : f64 to i64
      %42 = math.fma %40, %cst_14, %38 : f64
      %43 = math.fma %40, %cst_13, %42 : f64
      %44 = math.fma %cst_12, %43, %cst_11 : f64
      %45 = math.fma %44, %43, %cst_10 : f64
      %46 = math.fma %45, %43, %cst_9 : f64
      %47 = math.fma %46, %43, %cst_8 : f64
      %48 = math.fma %47, %43, %cst_7 : f64
      %49 = math.fma %48, %43, %cst_6 : f64
      %50 = math.fma %49, %43, %cst_5 : f64
      %51 = math.fma %50, %43, %cst_4 : f64
      %52 = math.fma %51, %43, %cst_3 : f64
      %53 = math.fma %52, %43, %cst_2 : f64
      %54 = math.fma %53, %43, %cst_1 : f64
      %55 = math.fma %54, %43, %cst_0 : f64
      %56 = math.fma %55, %43, %cst : f64
      %57 = math.fma %56, %43, %cst : f64
      %58 = arith.addi %41, %c1023_i64 : i64
      %59 = arith.shli %58, %c52_i64 : i64
      %60 = arith.bitcast %59 : i64 to f64
      %61 = arith.mulf %57, %60 : f64
      %62 = arith.truncf %61 : f64 to f32
      %63 = linalg.index 1 : index
      %64 = arith.cmpi uge, %63, %c32 : index
      %65 = arith.cmpi ult, %63, %c33 : index
      %66 = arith.andi %64, %65 : i1
      %67 = arith.select %66, %62, %37 : f32
      %68 = arith.addf %67, %cst_17 : f32
      %69 = arith.divf %in, %68 : f32
      %70 = arith.select %5, %4, %69 : f32
      linalg.yield %70 : f32
    } -> tensor<1x33xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x33xf32> -> !torch.vtensor<[1,33],f32>
    return %3 : !torch.vtensor<[1,33],f32>
  }
  func.func @softmax(%arg0: !torch.vtensor<[2,16],f32>) -> !torch.vtensor<[2,16],f32> {
    %int2 = torch.constant.int 2
    %int4 = torch.constant.int 4
    %int16 = torch.constant.int 16
    %int8 = torch.constant.int 8
    %int0 = torch.constant.int 0
    %cst = arith.constant 0x7F800000 : f32
    %c23_i32 = arith.constant 23 : i32
    %c127_i32 = arith.constant 127 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 5.000000e-01 : f32
    %cst_2 = arith.constant 0.166666672 : f32
    %cst_3 = arith.constant 0.0416664854 : f32
    %cst_4 = arith.constant 0.00833336077 : f32
    %cst_5 = arith.constant 0.00139304355 : f32
    %cst_6 = arith.constant 1.98527618E-4 : f32
    %cst_7 = arith.constant -1.42860677E-6 : f32
    %cst_8 = arith.constant -0.693145751 : f32
    %cst_9 = arith.constant 1.44269502 : f32
    %cst_10 = arith.constant 0.000000e+00 : f32
    %cst_11 = arith.constant 1.000000e+02 : f32
    %cst_12 = arith.constant -1.040000e+02 : f32
    %int1 = torch.constant.int 1
    %true = torch.constant.bool true
    %values, %indices = torch.aten.max.dim %arg0, %int1, %true : !torch.vtensor<[2,16],f32>, !torch.int, !torch.bool -> !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],si64>
    %0 = torch.aten.sub.Tensor %arg0, %values, %int1 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,16],f32>
    %1 = torch_c.to_builtin_tensor %0 : !torch.vtensor<[2,16],f32> -> tensor<2x16xf32>
    %2 = tensor.empty() : tensor<2x16xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%1 : tensor<2x16xf32>) outs(%2 : tensor<2x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = arith.cmpf uno, %in, %in : f32
      %20 = arith.select %19, %cst_10, %in : f32
      %21 = arith.cmpf olt, %20, %cst_12 : f32
      %22 = arith.select %21, %cst_12, %20 : f32
      %23 = arith.cmpf ogt, %22, %cst_11 : f32
      %24 = arith.select %23, %cst_11, %22 : f32
      %25 = arith.mulf %24, %cst_9 : f32
      %26 = math.roundeven %25 : f32
      %27 = arith.fptosi %26 : f32 to i32
      %28 = math.fma %26, %cst_8, %24 : f32
      %29 = math.fma %26, %cst_7, %28 : f32
      %30 = math.fma %cst_6, %29, %cst_5 : f32
      %31 = math.fma %30, %29, %cst_4 : f32
      %32 = math.fma %31, %29, %cst_3 : f32
      %33 = math.fma %32, %29, %cst_2 : f32
      %34 = math.fma %33, %29, %cst_1 : f32
      %35 = arith.mulf %29, %29 : f32
      %36 = math.fma %35, %34, %29 : f32
      %37 = arith.addf %36, %cst_0 : f32
      %38 = arith.shrsi %27, %c1_i32 : i32
      %39 = arith.subi %27, %38 : i32
      %40 = arith.addi %38, %c127_i32 : i32
      %41 = arith.shli %40, %c23_i32 : i32
      %42 = arith.bitcast %41 : i32 to f32
      %43 = arith.mulf %37, %42 : f32
      %44 = arith.addi %39, %c127_i32 : i32
      %45 = arith.shli %44, %c23_i32 : i32
      %46 = arith.bitcast %45 : i32 to f32
      %47 = arith.mulf %43, %46 : f32
      %48 = arith.cmpf olt, %24, %cst_12 : f32
      %49 = arith.select %48, %cst_10, %47 : f32
      %50 = arith.cmpf ogt, %24, %cst_11 : f32
      %51 = arith.select %50, %cst, %49 : f32
      %52 = arith.select %19, %in, %51 : f32
      linalg.yield %52 : f32
    } -> tensor<2x16xf32>
    %4 = torch_c.from_builtin_tensor %3 : tensor<2x16xf32> -> !torch.vtensor<[2,16],f32>
    %5 = torch.aten.slice.Tensor %4, %int1, %int0, %int8, %int1 : !torch.vtensor<[2,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %6 = torch.aten.slice.Tensor %4, %int1, %int8, %int16, %int1 : !torch.vtensor<[2,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %7 = torch.aten.add.Tensor %5, %6, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %8 = torch.aten.slice.Tensor %7, %int1, %int0, %int4, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,4],f32>
    %9 = torch.aten.slice.Tensor %7, %int1, %int4, %int8, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,4],f32>
    %10 = torch.aten.add.Tensor %8, %9, %int1 : !torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>, !torch.int -> !torch.vtensor<[2,4],f32>
    %11 = torch.aten.slice.Tensor %10, %int1, %int0, %int2, %int1 : !torch.vtensor<[2,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,2],f32>
    %12 = torch.aten.slice.Tensor %10, %int1, %int2, %int4, %int1 : !torch.vtensor<[2,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,2],f32>
    %13 = torch.aten.add.Tensor %11, %12, %int1 : !torch.vtensor<[2,2],f32>, !torch.vtensor<[2,2],f32>, !torch.int -> !torch.vtensor<[2,2],f32>
    %14 = torch.aten.slice.Tensor %13, %int1, %int0, %int1, %int1 : !torch.vtensor<[2,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %15 = torch.aten.slice.Tensor %13, %int1, %int1, %int2, %int1 : !torch.vtensor<[2,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %16 = torch.aten.add.Tensor %14, %15, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %17 = torch.aten.reciprocal %16 : !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,1],f32>
    %18 = torch.aten.mul.Tensor %4, %17 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,16],f32>
    return %18 : !torch.vtensor<[2,16],f32>
  }
  func.func @unsupported_mean(%arg0: !torch.vtensor<[2,7],f32>) -> !torch.vtensor<[2,1],f32> {
    %int7 = torch.constant.int 7
    %none = torch.constant.none
    %true = torch.constant.bool true
    %int-1 = torch.constant.int -1
    %0 = torch.prim.ListConstruct %int-1 : (!torch.int) -> !torch.list<int>
    %1 = torch.aten.sum.dim_IntList %arg0, %0, %true, %none : !torch.vtensor<[2,7],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[2,1],f32>
    %2 = torch.aten.div.Scalar %1, %int7 : !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    return %2 : !torch.vtensor<[2,1],f32>
  }
  func.func @static_trig() -> !torch.vtensor<[3],f32> {
    %0 = torch.vtensor.literal(dense<[0.000000e+00, 0.841470957, 0.909297406]> : tensor<3xf32>) : !torch.vtensor<[3],f32>
    return %0 : !torch.vtensor<[3],f32>
  }
  func.func @dynamic_trig(%arg0: !torch.vtensor<[3],f32>) -> !torch.vtensor<[3],f32> {
    %0 = torch.aten.sin %arg0 : !torch.vtensor<[3],f32> -> !torch.vtensor<[3],f32>
    return %0 : !torch.vtensor<[3],f32>
  }
  func.func @softmax_explicit_f32(%arg0: !torch.vtensor<[2,16],f32>) -> !torch.vtensor<[2,16],f32> {
    %int2 = torch.constant.int 2
    %int4 = torch.constant.int 4
    %int16 = torch.constant.int 16
    %int8 = torch.constant.int 8
    %int0 = torch.constant.int 0
    %cst = arith.constant 0x7F800000 : f32
    %c23_i32 = arith.constant 23 : i32
    %c127_i32 = arith.constant 127 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 5.000000e-01 : f32
    %cst_2 = arith.constant 0.166666672 : f32
    %cst_3 = arith.constant 0.0416664854 : f32
    %cst_4 = arith.constant 0.00833336077 : f32
    %cst_5 = arith.constant 0.00139304355 : f32
    %cst_6 = arith.constant 1.98527618E-4 : f32
    %cst_7 = arith.constant -1.42860677E-6 : f32
    %cst_8 = arith.constant -0.693145751 : f32
    %cst_9 = arith.constant 1.44269502 : f32
    %cst_10 = arith.constant 0.000000e+00 : f32
    %cst_11 = arith.constant 1.000000e+02 : f32
    %cst_12 = arith.constant -1.040000e+02 : f32
    %int1 = torch.constant.int 1
    %true = torch.constant.bool true
    %values, %indices = torch.aten.max.dim %arg0, %int1, %true : !torch.vtensor<[2,16],f32>, !torch.int, !torch.bool -> !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],si64>
    %0 = torch.aten.sub.Tensor %arg0, %values, %int1 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,16],f32>
    %1 = torch_c.to_builtin_tensor %0 : !torch.vtensor<[2,16],f32> -> tensor<2x16xf32>
    %2 = tensor.empty() : tensor<2x16xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%1 : tensor<2x16xf32>) outs(%2 : tensor<2x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = arith.cmpf uno, %in, %in : f32
      %20 = arith.select %19, %cst_10, %in : f32
      %21 = arith.cmpf olt, %20, %cst_12 : f32
      %22 = arith.select %21, %cst_12, %20 : f32
      %23 = arith.cmpf ogt, %22, %cst_11 : f32
      %24 = arith.select %23, %cst_11, %22 : f32
      %25 = arith.mulf %24, %cst_9 : f32
      %26 = math.roundeven %25 : f32
      %27 = arith.fptosi %26 : f32 to i32
      %28 = math.fma %26, %cst_8, %24 : f32
      %29 = math.fma %26, %cst_7, %28 : f32
      %30 = math.fma %cst_6, %29, %cst_5 : f32
      %31 = math.fma %30, %29, %cst_4 : f32
      %32 = math.fma %31, %29, %cst_3 : f32
      %33 = math.fma %32, %29, %cst_2 : f32
      %34 = math.fma %33, %29, %cst_1 : f32
      %35 = arith.mulf %29, %29 : f32
      %36 = math.fma %35, %34, %29 : f32
      %37 = arith.addf %36, %cst_0 : f32
      %38 = arith.shrsi %27, %c1_i32 : i32
      %39 = arith.subi %27, %38 : i32
      %40 = arith.addi %38, %c127_i32 : i32
      %41 = arith.shli %40, %c23_i32 : i32
      %42 = arith.bitcast %41 : i32 to f32
      %43 = arith.mulf %37, %42 : f32
      %44 = arith.addi %39, %c127_i32 : i32
      %45 = arith.shli %44, %c23_i32 : i32
      %46 = arith.bitcast %45 : i32 to f32
      %47 = arith.mulf %43, %46 : f32
      %48 = arith.cmpf olt, %24, %cst_12 : f32
      %49 = arith.select %48, %cst_10, %47 : f32
      %50 = arith.cmpf ogt, %24, %cst_11 : f32
      %51 = arith.select %50, %cst, %49 : f32
      %52 = arith.select %19, %in, %51 : f32
      linalg.yield %52 : f32
    } -> tensor<2x16xf32>
    %4 = torch_c.from_builtin_tensor %3 : tensor<2x16xf32> -> !torch.vtensor<[2,16],f32>
    %5 = torch.aten.slice.Tensor %4, %int1, %int0, %int8, %int1 : !torch.vtensor<[2,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %6 = torch.aten.slice.Tensor %4, %int1, %int8, %int16, %int1 : !torch.vtensor<[2,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,8],f32>
    %7 = torch.aten.add.Tensor %5, %6, %int1 : !torch.vtensor<[2,8],f32>, !torch.vtensor<[2,8],f32>, !torch.int -> !torch.vtensor<[2,8],f32>
    %8 = torch.aten.slice.Tensor %7, %int1, %int0, %int4, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,4],f32>
    %9 = torch.aten.slice.Tensor %7, %int1, %int4, %int8, %int1 : !torch.vtensor<[2,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,4],f32>
    %10 = torch.aten.add.Tensor %8, %9, %int1 : !torch.vtensor<[2,4],f32>, !torch.vtensor<[2,4],f32>, !torch.int -> !torch.vtensor<[2,4],f32>
    %11 = torch.aten.slice.Tensor %10, %int1, %int0, %int2, %int1 : !torch.vtensor<[2,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,2],f32>
    %12 = torch.aten.slice.Tensor %10, %int1, %int2, %int4, %int1 : !torch.vtensor<[2,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,2],f32>
    %13 = torch.aten.add.Tensor %11, %12, %int1 : !torch.vtensor<[2,2],f32>, !torch.vtensor<[2,2],f32>, !torch.int -> !torch.vtensor<[2,2],f32>
    %14 = torch.aten.slice.Tensor %13, %int1, %int0, %int1, %int1 : !torch.vtensor<[2,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %15 = torch.aten.slice.Tensor %13, %int1, %int1, %int2, %int1 : !torch.vtensor<[2,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[2,1],f32>
    %16 = torch.aten.add.Tensor %14, %15, %int1 : !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    %17 = torch.aten.reciprocal %16 : !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,1],f32>
    %18 = torch.aten.mul.Tensor %4, %17 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,16],f32>
    return %18 : !torch.vtensor<[2,16],f32>
  }
}

