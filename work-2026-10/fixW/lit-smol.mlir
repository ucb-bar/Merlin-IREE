#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d2)>
module {
  func.func @recipe0(%arg0: !torch.vtensor<[1,3,512,512],f32>, %arg1: !torch.vtensor<[768,3,16,16],f32>, %arg2: !torch.vtensor<[768],f32>) -> !torch.vtensor<[1,768,32,32],f32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c768 = arith.constant 768 : index
    %c48 = arith.constant 48 : index
    %c16 = arith.constant 16 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,3,512,512],f32> -> tensor<1x3x512x512xf32>
    %1 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[768,3,16,16],f32> -> tensor<768x3x16x16xf32>
    %2 = torch_c.to_builtin_tensor %arg2 : !torch.vtensor<[768],f32> -> tensor<768xf32>
    %3 = tensor.empty() : tensor<1x768x32x32xf32>
    %4 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%3 : tensor<1x768x32x32xf32>) {
    ^bb0(%out: f32):
      %6 = linalg.index 1 : index
      %7 = linalg.index 2 : index
      %8 = linalg.index 3 : index
      %9 = scf.for %arg3 = %c0 to %c768 step %c1 iter_args(%arg4 = %cst) -> (f32) {
        %11 = arith.divui %arg3, %c48 : index
        %12 = arith.remui %arg3, %c48 : index
        %13 = arith.divui %12, %c3 : index
        %14 = arith.remui %12, %c3 : index
        %15 = arith.muli %7, %c16 : index
        %16 = arith.addi %15, %11 : index
        %17 = arith.muli %8, %c16 : index
        %18 = arith.addi %17, %13 : index
        %extracted_0 = tensor.extract %0[%c0, %14, %16, %18] : tensor<1x3x512x512xf32>
        %extracted_1 = tensor.extract %1[%6, %14, %11, %13] : tensor<768x3x16x16xf32>
        %19 = math.fma %extracted_0, %extracted_1, %arg4 : f32
        scf.yield %19 : f32
      }
      %extracted = tensor.extract %2[%6] : tensor<768xf32>
      %10 = arith.addf %9, %extracted : f32
      linalg.yield %10 : f32
    } -> tensor<1x768x32x32xf32>
    %5 = torch_c.from_builtin_tensor %4 : tensor<1x768x32x32xf32> -> !torch.vtensor<[1,768,32,32],f32>
    return %5 : !torch.vtensor<[1,768,32,32],f32>
  }
  func.func @recipe1(%arg0: !torch.vtensor<[1,1024,768],f32>, %arg1: !torch.vtensor<[768],f32>, %arg2: !torch.vtensor<[768],f32>) -> !torch.vtensor<[1,1024,768],f32> {
    %cst = arith.constant dense<6.720000e+02> : tensor<1x1024x1xf32>
    %cst_0 = arith.constant dense<1.250000e-01> : tensor<1x1024x1xf32>
    %cst_1 = arith.constant dense<5.760000e+02> : tensor<1x1024x1xf32>
    %cst_2 = arith.constant dense<0.142857149> : tensor<1x1024x1xf32>
    %cst_3 = arith.constant dense<4.800000e+02> : tensor<1x1024x1xf32>
    %cst_4 = arith.constant dense<0.166666672> : tensor<1x1024x1xf32>
    %cst_5 = arith.constant dense<3.840000e+02> : tensor<1x1024x1xf32>
    %cst_6 = arith.constant dense<2.000000e-01> : tensor<1x1024x1xf32>
    %cst_7 = arith.constant dense<2.880000e+02> : tensor<1x1024x1xf32>
    %cst_8 = arith.constant dense<2.500000e-01> : tensor<1x1024x1xf32>
    %cst_9 = arith.constant dense<1.920000e+02> : tensor<1x1024x1xf32>
    %cst_10 = arith.constant dense<0.333333343> : tensor<1x1024x1xf32>
    %cst_11 = arith.constant dense<9.600000e+01> : tensor<1x1024x1xf32>
    %cst_12 = arith.constant dense<5.000000e-01> : tensor<1x1024x1xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1x1024x1xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<1x1024x1xf32>
    %cst_15 = arith.constant dense<6.250000e-02> : tensor<1x1024x8xf32>
    %cst_16 = arith.constant dense<0.0666666701> : tensor<1x1024x8xf32>
    %cst_17 = arith.constant dense<0.0714285746> : tensor<1x1024x8xf32>
    %cst_18 = arith.constant dense<0.0769230798> : tensor<1x1024x8xf32>
    %cst_19 = arith.constant dense<0.0833333358> : tensor<1x1024x8xf32>
    %cst_20 = arith.constant dense<0.0909090936> : tensor<1x1024x8xf32>
    %cst_21 = arith.constant dense<1.000000e-01> : tensor<1x1024x8xf32>
    %cst_22 = arith.constant dense<0.111111112> : tensor<1x1024x8xf32>
    %cst_23 = arith.constant dense<1.250000e-01> : tensor<1x1024x8xf32>
    %cst_24 = arith.constant dense<0.142857149> : tensor<1x1024x8xf32>
    %cst_25 = arith.constant dense<0.166666672> : tensor<1x1024x8xf32>
    %cst_26 = arith.constant dense<2.000000e-01> : tensor<1x1024x8xf32>
    %cst_27 = arith.constant dense<2.500000e-01> : tensor<1x1024x8xf32>
    %cst_28 = arith.constant dense<0.333333343> : tensor<1x1024x8xf32>
    %cst_29 = arith.constant dense<5.000000e-01> : tensor<1x1024x8xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<1x1024x8xf32>
    %cst_31 = arith.constant dense<1.000000e+00> : tensor<1x1024x8xf32>
    %0 = torch.vtensor.literal(dense<7.680000e+02> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %1 = torch.vtensor.literal(dense<1.250000e-01> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %2 = torch.vtensor.literal(dense<0.142857149> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %int7 = torch.constant.int 7
    %3 = torch.vtensor.literal(dense<0.166666672> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %int6 = torch.constant.int 6
    %4 = torch.vtensor.literal(dense<2.000000e-01> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %int5 = torch.constant.int 5
    %5 = torch.vtensor.literal(dense<2.500000e-01> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %int4 = torch.constant.int 4
    %6 = torch.vtensor.literal(dense<0.333333343> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %int3 = torch.constant.int 3
    %7 = torch.vtensor.literal(dense<5.000000e-01> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %8 = torch.vtensor.literal(dense<1.000000e+00> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %9 = torch.vtensor.literal(dense<0.000000e+00> : tensor<1x1024x1xf32>) : !torch.vtensor<[1,1024,1],f32>
    %10 = torch.vtensor.literal(dense<0.666666686> : tensor<1x1024x8xf32>) : !torch.vtensor<[1,1024,8],f32>
    %int760 = torch.constant.int 760
    %int752 = torch.constant.int 752
    %int744 = torch.constant.int 744
    %int736 = torch.constant.int 736
    %int728 = torch.constant.int 728
    %int720 = torch.constant.int 720
    %int712 = torch.constant.int 712
    %int704 = torch.constant.int 704
    %int696 = torch.constant.int 696
    %int688 = torch.constant.int 688
    %int680 = torch.constant.int 680
    %int672 = torch.constant.int 672
    %int664 = torch.constant.int 664
    %int656 = torch.constant.int 656
    %int648 = torch.constant.int 648
    %int640 = torch.constant.int 640
    %int632 = torch.constant.int 632
    %int624 = torch.constant.int 624
    %int616 = torch.constant.int 616
    %int608 = torch.constant.int 608
    %int600 = torch.constant.int 600
    %int592 = torch.constant.int 592
    %int584 = torch.constant.int 584
    %int576 = torch.constant.int 576
    %int568 = torch.constant.int 568
    %int560 = torch.constant.int 560
    %int552 = torch.constant.int 552
    %int544 = torch.constant.int 544
    %int536 = torch.constant.int 536
    %int528 = torch.constant.int 528
    %int520 = torch.constant.int 520
    %11 = torch.vtensor.literal(dense<3.200000e+01> : tensor<1x1024x8xf32>) : !torch.vtensor<[1,1024,8],f32>
    %int512 = torch.constant.int 512
    %int504 = torch.constant.int 504
    %int496 = torch.constant.int 496
    %int488 = torch.constant.int 488
    %int480 = torch.constant.int 480
    %int472 = torch.constant.int 472
    %int464 = torch.constant.int 464
    %int456 = torch.constant.int 456
    %int448 = torch.constant.int 448
    %int440 = torch.constant.int 440
    %int432 = torch.constant.int 432
    %int424 = torch.constant.int 424
    %int416 = torch.constant.int 416
    %int408 = torch.constant.int 408
    %int400 = torch.constant.int 400
    %int392 = torch.constant.int 392
    %int384 = torch.constant.int 384
    %int376 = torch.constant.int 376
    %int368 = torch.constant.int 368
    %int360 = torch.constant.int 360
    %int352 = torch.constant.int 352
    %int344 = torch.constant.int 344
    %int336 = torch.constant.int 336
    %int328 = torch.constant.int 328
    %int320 = torch.constant.int 320
    %int312 = torch.constant.int 312
    %int304 = torch.constant.int 304
    %int296 = torch.constant.int 296
    %int288 = torch.constant.int 288
    %int280 = torch.constant.int 280
    %int272 = torch.constant.int 272
    %int264 = torch.constant.int 264
    %12 = torch.vtensor.literal(dense<1.600000e+01> : tensor<1x1024x8xf32>) : !torch.vtensor<[1,1024,8],f32>
    %int256 = torch.constant.int 256
    %int248 = torch.constant.int 248
    %int240 = torch.constant.int 240
    %int232 = torch.constant.int 232
    %int224 = torch.constant.int 224
    %int216 = torch.constant.int 216
    %int208 = torch.constant.int 208
    %int200 = torch.constant.int 200
    %int192 = torch.constant.int 192
    %int184 = torch.constant.int 184
    %int176 = torch.constant.int 176
    %int168 = torch.constant.int 168
    %int160 = torch.constant.int 160
    %int152 = torch.constant.int 152
    %int144 = torch.constant.int 144
    %int136 = torch.constant.int 136
    %int128 = torch.constant.int 128
    %int120 = torch.constant.int 120
    %int112 = torch.constant.int 112
    %int104 = torch.constant.int 104
    %int96 = torch.constant.int 96
    %int88 = torch.constant.int 88
    %int80 = torch.constant.int 80
    %int72 = torch.constant.int 72
    %int64 = torch.constant.int 64
    %int56 = torch.constant.int 56
    %int48 = torch.constant.int 48
    %int40 = torch.constant.int 40
    %int32 = torch.constant.int 32
    %int24 = torch.constant.int 24
    %13 = torch.vtensor.literal(dense<5.000000e-01> : tensor<1x1024x8xf32>) : !torch.vtensor<[1,1024,8],f32>
    %int16 = torch.constant.int 16
    %14 = torch.vtensor.literal(dense<1.000000e+00> : tensor<1x1024x8xf32>) : !torch.vtensor<[1,1024,8],f32>
    %int8 = torch.constant.int 8
    %int0 = torch.constant.int 0
    %15 = torch.vtensor.literal(dense<0.000000e+00> : tensor<1x1024x8xf32>) : !torch.vtensor<[1,1024,8],f32>
    %int2 = torch.constant.int 2
    %int1 = torch.constant.int 1
    %float9.999990e-07 = torch.constant.float 9.9999999999999995E-7
    %int768 = torch.constant.int 768
    %16 = torch.aten.slice.Tensor %arg0, %int2, %int0, %int8, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %17 = torch.aten.sub.Tensor %16, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %18 = torch_c.to_builtin_tensor %17 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %19 = tensor.empty() : tensor<1x1024x8xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31, %18, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%19 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %21 = torch_c.from_builtin_tensor %20 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %22 = torch.aten.sub.Tensor %16, %21, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %23 = torch_c.to_builtin_tensor %17 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %24 = torch_c.to_builtin_tensor %22 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %25 = tensor.empty() : tensor<1x1024x8xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%23, %24, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%25 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %27 = torch_c.from_builtin_tensor %26 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %28 = torch.aten.slice.Tensor %arg0, %int2, %int8, %int16, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %29 = torch.aten.sub.Tensor %28, %21, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %30 = torch_c.to_builtin_tensor %29 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %31 = torch_c.to_builtin_tensor %21 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %32 = tensor.empty() : tensor<1x1024x8xf32>
    %33 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_29, %30, %31 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%32 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %34 = torch_c.from_builtin_tensor %33 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %35 = torch.aten.sub.Tensor %28, %34, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %36 = torch_c.to_builtin_tensor %29 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %37 = torch_c.to_builtin_tensor %35 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %38 = torch_c.to_builtin_tensor %27 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %39 = tensor.empty() : tensor<1x1024x8xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%36, %37, %38 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%39 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %41 = torch_c.from_builtin_tensor %40 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %42 = torch.aten.slice.Tensor %arg0, %int2, %int16, %int24, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %43 = torch.aten.sub.Tensor %42, %34, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %44 = torch_c.to_builtin_tensor %43 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %45 = torch_c.to_builtin_tensor %34 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %46 = tensor.empty() : tensor<1x1024x8xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_28, %44, %45 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%46 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %48 = torch_c.from_builtin_tensor %47 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %49 = torch.aten.sub.Tensor %42, %48, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %50 = torch_c.to_builtin_tensor %43 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %51 = torch_c.to_builtin_tensor %49 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %52 = torch_c.to_builtin_tensor %41 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %53 = tensor.empty() : tensor<1x1024x8xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%50, %51, %52 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%53 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %55 = torch_c.from_builtin_tensor %54 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %56 = torch.aten.slice.Tensor %arg0, %int2, %int24, %int32, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %57 = torch.aten.sub.Tensor %56, %48, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %58 = torch_c.to_builtin_tensor %57 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %59 = torch_c.to_builtin_tensor %48 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %60 = tensor.empty() : tensor<1x1024x8xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_27, %58, %59 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%60 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %62 = torch_c.from_builtin_tensor %61 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %63 = torch.aten.sub.Tensor %56, %62, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %64 = torch_c.to_builtin_tensor %57 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %65 = torch_c.to_builtin_tensor %63 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %66 = torch_c.to_builtin_tensor %55 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %67 = tensor.empty() : tensor<1x1024x8xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%64, %65, %66 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%67 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %69 = torch_c.from_builtin_tensor %68 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %70 = torch.aten.slice.Tensor %arg0, %int2, %int32, %int40, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %71 = torch.aten.sub.Tensor %70, %62, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %72 = torch_c.to_builtin_tensor %71 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %73 = torch_c.to_builtin_tensor %62 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %74 = tensor.empty() : tensor<1x1024x8xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26, %72, %73 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%74 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %76 = torch_c.from_builtin_tensor %75 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %77 = torch.aten.sub.Tensor %70, %76, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %78 = torch_c.to_builtin_tensor %71 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %79 = torch_c.to_builtin_tensor %77 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %80 = torch_c.to_builtin_tensor %69 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %81 = tensor.empty() : tensor<1x1024x8xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%78, %79, %80 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%81 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %83 = torch_c.from_builtin_tensor %82 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %84 = torch.aten.slice.Tensor %arg0, %int2, %int40, %int48, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %85 = torch.aten.sub.Tensor %84, %76, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %86 = torch_c.to_builtin_tensor %85 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %87 = torch_c.to_builtin_tensor %76 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %88 = tensor.empty() : tensor<1x1024x8xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %86, %87 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%88 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %90 = torch_c.from_builtin_tensor %89 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %91 = torch.aten.sub.Tensor %84, %90, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %92 = torch_c.to_builtin_tensor %85 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %93 = torch_c.to_builtin_tensor %91 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %94 = torch_c.to_builtin_tensor %83 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %95 = tensor.empty() : tensor<1x1024x8xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%92, %93, %94 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%95 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %97 = torch_c.from_builtin_tensor %96 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %98 = torch.aten.slice.Tensor %arg0, %int2, %int48, %int56, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %99 = torch.aten.sub.Tensor %98, %90, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %100 = torch_c.to_builtin_tensor %99 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %101 = torch_c.to_builtin_tensor %90 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %102 = tensor.empty() : tensor<1x1024x8xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_24, %100, %101 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%102 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %104 = torch_c.from_builtin_tensor %103 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %105 = torch.aten.sub.Tensor %98, %104, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %106 = torch_c.to_builtin_tensor %99 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %107 = torch_c.to_builtin_tensor %105 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %108 = torch_c.to_builtin_tensor %97 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %109 = tensor.empty() : tensor<1x1024x8xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%106, %107, %108 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%109 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %111 = torch_c.from_builtin_tensor %110 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %112 = torch.aten.slice.Tensor %arg0, %int2, %int56, %int64, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %113 = torch.aten.sub.Tensor %112, %104, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %114 = torch_c.to_builtin_tensor %113 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %115 = torch_c.to_builtin_tensor %104 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %116 = tensor.empty() : tensor<1x1024x8xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %114, %115 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%116 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %118 = torch_c.from_builtin_tensor %117 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %119 = torch.aten.sub.Tensor %112, %118, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %120 = torch_c.to_builtin_tensor %113 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %121 = torch_c.to_builtin_tensor %119 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %122 = torch_c.to_builtin_tensor %111 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %123 = tensor.empty() : tensor<1x1024x8xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%120, %121, %122 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%123 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %125 = torch_c.from_builtin_tensor %124 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %126 = torch.aten.slice.Tensor %arg0, %int2, %int64, %int72, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %127 = torch.aten.sub.Tensor %126, %118, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %128 = torch_c.to_builtin_tensor %127 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %129 = torch_c.to_builtin_tensor %118 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %130 = tensor.empty() : tensor<1x1024x8xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_22, %128, %129 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%130 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %132 = torch_c.from_builtin_tensor %131 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %133 = torch.aten.sub.Tensor %126, %132, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %134 = torch_c.to_builtin_tensor %127 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %135 = torch_c.to_builtin_tensor %133 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %136 = torch_c.to_builtin_tensor %125 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %137 = tensor.empty() : tensor<1x1024x8xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%134, %135, %136 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%137 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %139 = torch_c.from_builtin_tensor %138 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %140 = torch.aten.slice.Tensor %arg0, %int2, %int72, %int80, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %141 = torch.aten.sub.Tensor %140, %132, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %142 = torch_c.to_builtin_tensor %141 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %143 = torch_c.to_builtin_tensor %132 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %144 = tensor.empty() : tensor<1x1024x8xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_21, %142, %143 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%144 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %146 = torch_c.from_builtin_tensor %145 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %147 = torch.aten.sub.Tensor %140, %146, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %148 = torch_c.to_builtin_tensor %141 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %149 = torch_c.to_builtin_tensor %147 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %150 = torch_c.to_builtin_tensor %139 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %151 = tensor.empty() : tensor<1x1024x8xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%148, %149, %150 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%151 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %153 = torch_c.from_builtin_tensor %152 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %154 = torch.aten.slice.Tensor %arg0, %int2, %int80, %int88, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %155 = torch.aten.sub.Tensor %154, %146, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %156 = torch_c.to_builtin_tensor %155 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %157 = torch_c.to_builtin_tensor %146 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %158 = tensor.empty() : tensor<1x1024x8xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_20, %156, %157 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%158 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %160 = torch_c.from_builtin_tensor %159 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %161 = torch.aten.sub.Tensor %154, %160, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %162 = torch_c.to_builtin_tensor %155 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %163 = torch_c.to_builtin_tensor %161 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %164 = torch_c.to_builtin_tensor %153 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %165 = tensor.empty() : tensor<1x1024x8xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%162, %163, %164 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%165 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %167 = torch_c.from_builtin_tensor %166 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %168 = torch.aten.slice.Tensor %arg0, %int2, %int88, %int96, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %169 = torch.aten.sub.Tensor %168, %160, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %170 = torch_c.to_builtin_tensor %169 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %171 = torch_c.to_builtin_tensor %160 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %172 = tensor.empty() : tensor<1x1024x8xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_19, %170, %171 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%172 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %174 = torch_c.from_builtin_tensor %173 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %175 = torch.aten.sub.Tensor %168, %174, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %176 = torch_c.to_builtin_tensor %169 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %177 = torch_c.to_builtin_tensor %175 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %178 = torch_c.to_builtin_tensor %167 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %179 = tensor.empty() : tensor<1x1024x8xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%176, %177, %178 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%179 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %181 = torch_c.from_builtin_tensor %180 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %182 = torch.aten.slice.Tensor %arg0, %int2, %int96, %int104, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %183 = torch.aten.sub.Tensor %182, %174, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %184 = torch_c.to_builtin_tensor %183 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %185 = torch_c.to_builtin_tensor %174 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %186 = tensor.empty() : tensor<1x1024x8xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_18, %184, %185 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%186 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %188 = torch_c.from_builtin_tensor %187 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %189 = torch.aten.sub.Tensor %182, %188, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %190 = torch_c.to_builtin_tensor %183 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %191 = torch_c.to_builtin_tensor %189 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %192 = torch_c.to_builtin_tensor %181 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %193 = tensor.empty() : tensor<1x1024x8xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%190, %191, %192 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%193 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %195 = torch_c.from_builtin_tensor %194 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %196 = torch.aten.slice.Tensor %arg0, %int2, %int104, %int112, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %197 = torch.aten.sub.Tensor %196, %188, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %198 = torch_c.to_builtin_tensor %197 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %199 = torch_c.to_builtin_tensor %188 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %200 = tensor.empty() : tensor<1x1024x8xf32>
    %201 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_17, %198, %199 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%200 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %202 = torch_c.from_builtin_tensor %201 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %203 = torch.aten.sub.Tensor %196, %202, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %204 = torch_c.to_builtin_tensor %197 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %205 = torch_c.to_builtin_tensor %203 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %206 = torch_c.to_builtin_tensor %195 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %207 = tensor.empty() : tensor<1x1024x8xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%204, %205, %206 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%207 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %209 = torch_c.from_builtin_tensor %208 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %210 = torch.aten.slice.Tensor %arg0, %int2, %int112, %int120, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %211 = torch.aten.sub.Tensor %210, %202, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %212 = torch_c.to_builtin_tensor %211 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %213 = torch_c.to_builtin_tensor %202 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %214 = tensor.empty() : tensor<1x1024x8xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_16, %212, %213 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%214 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %216 = torch_c.from_builtin_tensor %215 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %217 = torch.aten.sub.Tensor %210, %216, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %218 = torch_c.to_builtin_tensor %211 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %219 = torch_c.to_builtin_tensor %217 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %220 = torch_c.to_builtin_tensor %209 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %221 = tensor.empty() : tensor<1x1024x8xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%218, %219, %220 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%221 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %223 = torch_c.from_builtin_tensor %222 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %224 = torch.aten.slice.Tensor %arg0, %int2, %int120, %int128, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %225 = torch.aten.sub.Tensor %224, %216, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %226 = torch_c.to_builtin_tensor %225 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %227 = torch_c.to_builtin_tensor %216 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %228 = tensor.empty() : tensor<1x1024x8xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_15, %226, %227 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%228 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %230 = torch_c.from_builtin_tensor %229 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %231 = torch.aten.sub.Tensor %224, %230, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %232 = torch_c.to_builtin_tensor %225 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %233 = torch_c.to_builtin_tensor %231 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %234 = torch_c.to_builtin_tensor %223 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %235 = tensor.empty() : tensor<1x1024x8xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%232, %233, %234 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%235 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %237 = torch_c.from_builtin_tensor %236 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %238 = torch.aten.sub.Tensor %230, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %239 = torch.aten.mul.Tensor %14, %238 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %240 = torch.aten.mul.Tensor %238, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %241 = torch.aten.add.Tensor %15, %239, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %242 = torch.aten.add.Tensor %15, %237, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %243 = torch_c.to_builtin_tensor %240 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %244 = torch_c.to_builtin_tensor %239 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %245 = torch_c.to_builtin_tensor %242 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %246 = tensor.empty() : tensor<1x1024x8xf32>
    %247 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%243, %244, %245 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%246 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %248 = torch_c.from_builtin_tensor %247 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %249 = torch.aten.slice.Tensor %arg0, %int2, %int128, %int136, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %250 = torch.aten.sub.Tensor %249, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %251 = torch_c.to_builtin_tensor %250 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %252 = tensor.empty() : tensor<1x1024x8xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31, %251, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%252 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %254 = torch_c.from_builtin_tensor %253 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %255 = torch.aten.sub.Tensor %249, %254, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %256 = torch_c.to_builtin_tensor %250 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %257 = torch_c.to_builtin_tensor %255 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %258 = tensor.empty() : tensor<1x1024x8xf32>
    %259 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%256, %257, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%258 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %260 = torch_c.from_builtin_tensor %259 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %261 = torch.aten.slice.Tensor %arg0, %int2, %int136, %int144, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %262 = torch.aten.sub.Tensor %261, %254, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %263 = torch_c.to_builtin_tensor %262 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %264 = torch_c.to_builtin_tensor %254 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %265 = tensor.empty() : tensor<1x1024x8xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_29, %263, %264 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%265 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %267 = torch_c.from_builtin_tensor %266 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %268 = torch.aten.sub.Tensor %261, %267, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %269 = torch_c.to_builtin_tensor %262 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %270 = torch_c.to_builtin_tensor %268 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %271 = torch_c.to_builtin_tensor %260 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %272 = tensor.empty() : tensor<1x1024x8xf32>
    %273 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %270, %271 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%272 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %274 = torch_c.from_builtin_tensor %273 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %275 = torch.aten.slice.Tensor %arg0, %int2, %int144, %int152, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %276 = torch.aten.sub.Tensor %275, %267, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %277 = torch_c.to_builtin_tensor %276 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %278 = torch_c.to_builtin_tensor %267 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %279 = tensor.empty() : tensor<1x1024x8xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_28, %277, %278 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%279 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %281 = torch_c.from_builtin_tensor %280 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %282 = torch.aten.sub.Tensor %275, %281, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %283 = torch_c.to_builtin_tensor %276 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %284 = torch_c.to_builtin_tensor %282 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %285 = torch_c.to_builtin_tensor %274 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %286 = tensor.empty() : tensor<1x1024x8xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%283, %284, %285 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%286 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %288 = torch_c.from_builtin_tensor %287 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %289 = torch.aten.slice.Tensor %arg0, %int2, %int152, %int160, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %290 = torch.aten.sub.Tensor %289, %281, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %291 = torch_c.to_builtin_tensor %290 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %292 = torch_c.to_builtin_tensor %281 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %293 = tensor.empty() : tensor<1x1024x8xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_27, %291, %292 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%293 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %295 = torch_c.from_builtin_tensor %294 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %296 = torch.aten.sub.Tensor %289, %295, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %297 = torch_c.to_builtin_tensor %290 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %298 = torch_c.to_builtin_tensor %296 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %299 = torch_c.to_builtin_tensor %288 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %300 = tensor.empty() : tensor<1x1024x8xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%297, %298, %299 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%300 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %302 = torch_c.from_builtin_tensor %301 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %303 = torch.aten.slice.Tensor %arg0, %int2, %int160, %int168, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %304 = torch.aten.sub.Tensor %303, %295, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %305 = torch_c.to_builtin_tensor %304 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %306 = torch_c.to_builtin_tensor %295 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %307 = tensor.empty() : tensor<1x1024x8xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26, %305, %306 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%307 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %309 = torch_c.from_builtin_tensor %308 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %310 = torch.aten.sub.Tensor %303, %309, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %311 = torch_c.to_builtin_tensor %304 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %312 = torch_c.to_builtin_tensor %310 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %313 = torch_c.to_builtin_tensor %302 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %314 = tensor.empty() : tensor<1x1024x8xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%311, %312, %313 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%314 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %316 = torch_c.from_builtin_tensor %315 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %317 = torch.aten.slice.Tensor %arg0, %int2, %int168, %int176, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %318 = torch.aten.sub.Tensor %317, %309, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %319 = torch_c.to_builtin_tensor %318 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %320 = torch_c.to_builtin_tensor %309 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %321 = tensor.empty() : tensor<1x1024x8xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %319, %320 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%321 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %323 = torch_c.from_builtin_tensor %322 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %324 = torch.aten.sub.Tensor %317, %323, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %325 = torch_c.to_builtin_tensor %318 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %326 = torch_c.to_builtin_tensor %324 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %327 = torch_c.to_builtin_tensor %316 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %328 = tensor.empty() : tensor<1x1024x8xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%325, %326, %327 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%328 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %330 = torch_c.from_builtin_tensor %329 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %331 = torch.aten.slice.Tensor %arg0, %int2, %int176, %int184, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %332 = torch.aten.sub.Tensor %331, %323, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %333 = torch_c.to_builtin_tensor %332 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %334 = torch_c.to_builtin_tensor %323 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %335 = tensor.empty() : tensor<1x1024x8xf32>
    %336 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_24, %333, %334 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%335 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %337 = torch_c.from_builtin_tensor %336 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %338 = torch.aten.sub.Tensor %331, %337, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %339 = torch_c.to_builtin_tensor %332 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %340 = torch_c.to_builtin_tensor %338 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %341 = torch_c.to_builtin_tensor %330 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %342 = tensor.empty() : tensor<1x1024x8xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%339, %340, %341 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%342 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %344 = torch_c.from_builtin_tensor %343 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %345 = torch.aten.slice.Tensor %arg0, %int2, %int184, %int192, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %346 = torch.aten.sub.Tensor %345, %337, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %347 = torch_c.to_builtin_tensor %346 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %348 = torch_c.to_builtin_tensor %337 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %349 = tensor.empty() : tensor<1x1024x8xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %347, %348 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%349 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %351 = torch_c.from_builtin_tensor %350 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %352 = torch.aten.sub.Tensor %345, %351, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %353 = torch_c.to_builtin_tensor %346 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %354 = torch_c.to_builtin_tensor %352 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %355 = torch_c.to_builtin_tensor %344 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %356 = tensor.empty() : tensor<1x1024x8xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%353, %354, %355 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%356 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %358 = torch_c.from_builtin_tensor %357 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %359 = torch.aten.slice.Tensor %arg0, %int2, %int192, %int200, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %360 = torch.aten.sub.Tensor %359, %351, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %361 = torch_c.to_builtin_tensor %360 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %362 = torch_c.to_builtin_tensor %351 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %363 = tensor.empty() : tensor<1x1024x8xf32>
    %364 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_22, %361, %362 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%363 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %365 = torch_c.from_builtin_tensor %364 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %366 = torch.aten.sub.Tensor %359, %365, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %367 = torch_c.to_builtin_tensor %360 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %368 = torch_c.to_builtin_tensor %366 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %369 = torch_c.to_builtin_tensor %358 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %370 = tensor.empty() : tensor<1x1024x8xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%367, %368, %369 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%370 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %372 = torch_c.from_builtin_tensor %371 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %373 = torch.aten.slice.Tensor %arg0, %int2, %int200, %int208, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %374 = torch.aten.sub.Tensor %373, %365, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %375 = torch_c.to_builtin_tensor %374 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %376 = torch_c.to_builtin_tensor %365 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %377 = tensor.empty() : tensor<1x1024x8xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_21, %375, %376 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%377 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %379 = torch_c.from_builtin_tensor %378 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %380 = torch.aten.sub.Tensor %373, %379, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %381 = torch_c.to_builtin_tensor %374 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %382 = torch_c.to_builtin_tensor %380 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %383 = torch_c.to_builtin_tensor %372 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %384 = tensor.empty() : tensor<1x1024x8xf32>
    %385 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%381, %382, %383 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%384 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %386 = torch_c.from_builtin_tensor %385 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %387 = torch.aten.slice.Tensor %arg0, %int2, %int208, %int216, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %388 = torch.aten.sub.Tensor %387, %379, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %389 = torch_c.to_builtin_tensor %388 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %390 = torch_c.to_builtin_tensor %379 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %391 = tensor.empty() : tensor<1x1024x8xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_20, %389, %390 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%391 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %393 = torch_c.from_builtin_tensor %392 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %394 = torch.aten.sub.Tensor %387, %393, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %395 = torch_c.to_builtin_tensor %388 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %396 = torch_c.to_builtin_tensor %394 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %397 = torch_c.to_builtin_tensor %386 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %398 = tensor.empty() : tensor<1x1024x8xf32>
    %399 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%395, %396, %397 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%398 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %400 = torch_c.from_builtin_tensor %399 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %401 = torch.aten.slice.Tensor %arg0, %int2, %int216, %int224, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %402 = torch.aten.sub.Tensor %401, %393, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %403 = torch_c.to_builtin_tensor %402 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %404 = torch_c.to_builtin_tensor %393 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %405 = tensor.empty() : tensor<1x1024x8xf32>
    %406 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_19, %403, %404 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%405 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %407 = torch_c.from_builtin_tensor %406 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %408 = torch.aten.sub.Tensor %401, %407, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %409 = torch_c.to_builtin_tensor %402 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %410 = torch_c.to_builtin_tensor %408 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %411 = torch_c.to_builtin_tensor %400 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %412 = tensor.empty() : tensor<1x1024x8xf32>
    %413 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%409, %410, %411 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%412 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %414 = torch_c.from_builtin_tensor %413 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %415 = torch.aten.slice.Tensor %arg0, %int2, %int224, %int232, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %416 = torch.aten.sub.Tensor %415, %407, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %417 = torch_c.to_builtin_tensor %416 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %418 = torch_c.to_builtin_tensor %407 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %419 = tensor.empty() : tensor<1x1024x8xf32>
    %420 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_18, %417, %418 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%419 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %421 = torch_c.from_builtin_tensor %420 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %422 = torch.aten.sub.Tensor %415, %421, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %423 = torch_c.to_builtin_tensor %416 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %424 = torch_c.to_builtin_tensor %422 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %425 = torch_c.to_builtin_tensor %414 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %426 = tensor.empty() : tensor<1x1024x8xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%423, %424, %425 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%426 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %428 = torch_c.from_builtin_tensor %427 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %429 = torch.aten.slice.Tensor %arg0, %int2, %int232, %int240, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %430 = torch.aten.sub.Tensor %429, %421, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %431 = torch_c.to_builtin_tensor %430 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %432 = torch_c.to_builtin_tensor %421 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %433 = tensor.empty() : tensor<1x1024x8xf32>
    %434 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_17, %431, %432 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%433 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %435 = torch_c.from_builtin_tensor %434 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %436 = torch.aten.sub.Tensor %429, %435, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %437 = torch_c.to_builtin_tensor %430 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %438 = torch_c.to_builtin_tensor %436 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %439 = torch_c.to_builtin_tensor %428 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %440 = tensor.empty() : tensor<1x1024x8xf32>
    %441 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%437, %438, %439 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%440 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %442 = torch_c.from_builtin_tensor %441 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %443 = torch.aten.slice.Tensor %arg0, %int2, %int240, %int248, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %444 = torch.aten.sub.Tensor %443, %435, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %445 = torch_c.to_builtin_tensor %444 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %446 = torch_c.to_builtin_tensor %435 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %447 = tensor.empty() : tensor<1x1024x8xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_16, %445, %446 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%447 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %449 = torch_c.from_builtin_tensor %448 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %450 = torch.aten.sub.Tensor %443, %449, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %451 = torch_c.to_builtin_tensor %444 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %452 = torch_c.to_builtin_tensor %450 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %453 = torch_c.to_builtin_tensor %442 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %454 = tensor.empty() : tensor<1x1024x8xf32>
    %455 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%451, %452, %453 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%454 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %456 = torch_c.from_builtin_tensor %455 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %457 = torch.aten.slice.Tensor %arg0, %int2, %int248, %int256, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %458 = torch.aten.sub.Tensor %457, %449, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %459 = torch_c.to_builtin_tensor %458 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %460 = torch_c.to_builtin_tensor %449 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %461 = tensor.empty() : tensor<1x1024x8xf32>
    %462 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_15, %459, %460 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%461 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %463 = torch_c.from_builtin_tensor %462 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %464 = torch.aten.sub.Tensor %457, %463, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %465 = torch_c.to_builtin_tensor %458 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %466 = torch_c.to_builtin_tensor %464 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %467 = torch_c.to_builtin_tensor %456 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %468 = tensor.empty() : tensor<1x1024x8xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%465, %466, %467 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%468 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %470 = torch_c.from_builtin_tensor %469 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %471 = torch.aten.sub.Tensor %463, %241, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %472 = torch.aten.mul.Tensor %13, %471 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %473 = torch.aten.mul.Tensor %471, %12 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %474 = torch.aten.add.Tensor %241, %472, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %475 = torch.aten.add.Tensor %248, %470, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %476 = torch_c.to_builtin_tensor %473 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %477 = torch_c.to_builtin_tensor %472 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %478 = torch_c.to_builtin_tensor %475 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %479 = tensor.empty() : tensor<1x1024x8xf32>
    %480 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%476, %477, %478 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%479 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %481 = torch_c.from_builtin_tensor %480 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %482 = torch.aten.sub.Tensor %474, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %483 = torch.aten.mul.Tensor %14, %482 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %484 = torch.aten.mul.Tensor %482, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %485 = torch.aten.add.Tensor %15, %483, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %486 = torch.aten.add.Tensor %15, %481, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %487 = torch_c.to_builtin_tensor %484 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %488 = torch_c.to_builtin_tensor %483 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %489 = torch_c.to_builtin_tensor %486 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %490 = tensor.empty() : tensor<1x1024x8xf32>
    %491 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%487, %488, %489 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%490 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %492 = torch_c.from_builtin_tensor %491 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %493 = torch.aten.slice.Tensor %arg0, %int2, %int256, %int264, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %494 = torch.aten.sub.Tensor %493, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %495 = torch_c.to_builtin_tensor %494 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %496 = tensor.empty() : tensor<1x1024x8xf32>
    %497 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31, %495, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%496 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %498 = torch_c.from_builtin_tensor %497 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %499 = torch.aten.sub.Tensor %493, %498, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %500 = torch_c.to_builtin_tensor %494 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %501 = torch_c.to_builtin_tensor %499 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %502 = tensor.empty() : tensor<1x1024x8xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%500, %501, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%502 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %504 = torch_c.from_builtin_tensor %503 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %505 = torch.aten.slice.Tensor %arg0, %int2, %int264, %int272, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %506 = torch.aten.sub.Tensor %505, %498, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %507 = torch_c.to_builtin_tensor %506 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %508 = torch_c.to_builtin_tensor %498 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %509 = tensor.empty() : tensor<1x1024x8xf32>
    %510 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_29, %507, %508 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%509 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %511 = torch_c.from_builtin_tensor %510 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %512 = torch.aten.sub.Tensor %505, %511, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %513 = torch_c.to_builtin_tensor %506 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %514 = torch_c.to_builtin_tensor %512 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %515 = torch_c.to_builtin_tensor %504 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %516 = tensor.empty() : tensor<1x1024x8xf32>
    %517 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%513, %514, %515 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%516 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %518 = torch_c.from_builtin_tensor %517 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %519 = torch.aten.slice.Tensor %arg0, %int2, %int272, %int280, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %520 = torch.aten.sub.Tensor %519, %511, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %521 = torch_c.to_builtin_tensor %520 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %522 = torch_c.to_builtin_tensor %511 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %523 = tensor.empty() : tensor<1x1024x8xf32>
    %524 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_28, %521, %522 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%523 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %525 = torch_c.from_builtin_tensor %524 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %526 = torch.aten.sub.Tensor %519, %525, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %527 = torch_c.to_builtin_tensor %520 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %528 = torch_c.to_builtin_tensor %526 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %529 = torch_c.to_builtin_tensor %518 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %530 = tensor.empty() : tensor<1x1024x8xf32>
    %531 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%527, %528, %529 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%530 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %532 = torch_c.from_builtin_tensor %531 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %533 = torch.aten.slice.Tensor %arg0, %int2, %int280, %int288, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %534 = torch.aten.sub.Tensor %533, %525, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %535 = torch_c.to_builtin_tensor %534 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %536 = torch_c.to_builtin_tensor %525 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %537 = tensor.empty() : tensor<1x1024x8xf32>
    %538 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_27, %535, %536 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%537 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %539 = torch_c.from_builtin_tensor %538 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %540 = torch.aten.sub.Tensor %533, %539, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %541 = torch_c.to_builtin_tensor %534 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %542 = torch_c.to_builtin_tensor %540 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %543 = torch_c.to_builtin_tensor %532 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %544 = tensor.empty() : tensor<1x1024x8xf32>
    %545 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%541, %542, %543 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%544 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %546 = torch_c.from_builtin_tensor %545 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %547 = torch.aten.slice.Tensor %arg0, %int2, %int288, %int296, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %548 = torch.aten.sub.Tensor %547, %539, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %549 = torch_c.to_builtin_tensor %548 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %550 = torch_c.to_builtin_tensor %539 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %551 = tensor.empty() : tensor<1x1024x8xf32>
    %552 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26, %549, %550 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%551 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %553 = torch_c.from_builtin_tensor %552 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %554 = torch.aten.sub.Tensor %547, %553, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %555 = torch_c.to_builtin_tensor %548 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %556 = torch_c.to_builtin_tensor %554 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %557 = torch_c.to_builtin_tensor %546 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %558 = tensor.empty() : tensor<1x1024x8xf32>
    %559 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%555, %556, %557 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%558 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %560 = torch_c.from_builtin_tensor %559 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %561 = torch.aten.slice.Tensor %arg0, %int2, %int296, %int304, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %562 = torch.aten.sub.Tensor %561, %553, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %563 = torch_c.to_builtin_tensor %562 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %564 = torch_c.to_builtin_tensor %553 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %565 = tensor.empty() : tensor<1x1024x8xf32>
    %566 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %563, %564 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%565 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %567 = torch_c.from_builtin_tensor %566 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %568 = torch.aten.sub.Tensor %561, %567, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %569 = torch_c.to_builtin_tensor %562 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %570 = torch_c.to_builtin_tensor %568 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %571 = torch_c.to_builtin_tensor %560 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %572 = tensor.empty() : tensor<1x1024x8xf32>
    %573 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%569, %570, %571 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%572 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %574 = torch_c.from_builtin_tensor %573 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %575 = torch.aten.slice.Tensor %arg0, %int2, %int304, %int312, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %576 = torch.aten.sub.Tensor %575, %567, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %577 = torch_c.to_builtin_tensor %576 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %578 = torch_c.to_builtin_tensor %567 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %579 = tensor.empty() : tensor<1x1024x8xf32>
    %580 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_24, %577, %578 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%579 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %581 = torch_c.from_builtin_tensor %580 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %582 = torch.aten.sub.Tensor %575, %581, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %583 = torch_c.to_builtin_tensor %576 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %584 = torch_c.to_builtin_tensor %582 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %585 = torch_c.to_builtin_tensor %574 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %586 = tensor.empty() : tensor<1x1024x8xf32>
    %587 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%583, %584, %585 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%586 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %588 = torch_c.from_builtin_tensor %587 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %589 = torch.aten.slice.Tensor %arg0, %int2, %int312, %int320, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %590 = torch.aten.sub.Tensor %589, %581, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %591 = torch_c.to_builtin_tensor %590 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %592 = torch_c.to_builtin_tensor %581 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %593 = tensor.empty() : tensor<1x1024x8xf32>
    %594 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %591, %592 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%593 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %595 = torch_c.from_builtin_tensor %594 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %596 = torch.aten.sub.Tensor %589, %595, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %597 = torch_c.to_builtin_tensor %590 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %598 = torch_c.to_builtin_tensor %596 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %599 = torch_c.to_builtin_tensor %588 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %600 = tensor.empty() : tensor<1x1024x8xf32>
    %601 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%597, %598, %599 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%600 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %602 = torch_c.from_builtin_tensor %601 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %603 = torch.aten.slice.Tensor %arg0, %int2, %int320, %int328, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %604 = torch.aten.sub.Tensor %603, %595, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %605 = torch_c.to_builtin_tensor %604 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %606 = torch_c.to_builtin_tensor %595 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %607 = tensor.empty() : tensor<1x1024x8xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_22, %605, %606 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%607 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %609 = torch_c.from_builtin_tensor %608 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %610 = torch.aten.sub.Tensor %603, %609, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %611 = torch_c.to_builtin_tensor %604 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %612 = torch_c.to_builtin_tensor %610 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %613 = torch_c.to_builtin_tensor %602 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %614 = tensor.empty() : tensor<1x1024x8xf32>
    %615 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%611, %612, %613 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%614 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %616 = torch_c.from_builtin_tensor %615 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %617 = torch.aten.slice.Tensor %arg0, %int2, %int328, %int336, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %618 = torch.aten.sub.Tensor %617, %609, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %619 = torch_c.to_builtin_tensor %618 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %620 = torch_c.to_builtin_tensor %609 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %621 = tensor.empty() : tensor<1x1024x8xf32>
    %622 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_21, %619, %620 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%621 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %623 = torch_c.from_builtin_tensor %622 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %624 = torch.aten.sub.Tensor %617, %623, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %625 = torch_c.to_builtin_tensor %618 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %626 = torch_c.to_builtin_tensor %624 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %627 = torch_c.to_builtin_tensor %616 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %628 = tensor.empty() : tensor<1x1024x8xf32>
    %629 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%625, %626, %627 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%628 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %630 = torch_c.from_builtin_tensor %629 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %631 = torch.aten.slice.Tensor %arg0, %int2, %int336, %int344, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %632 = torch.aten.sub.Tensor %631, %623, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %633 = torch_c.to_builtin_tensor %632 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %634 = torch_c.to_builtin_tensor %623 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %635 = tensor.empty() : tensor<1x1024x8xf32>
    %636 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_20, %633, %634 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%635 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %637 = torch_c.from_builtin_tensor %636 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %638 = torch.aten.sub.Tensor %631, %637, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %639 = torch_c.to_builtin_tensor %632 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %640 = torch_c.to_builtin_tensor %638 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %641 = torch_c.to_builtin_tensor %630 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %642 = tensor.empty() : tensor<1x1024x8xf32>
    %643 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%639, %640, %641 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%642 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %644 = torch_c.from_builtin_tensor %643 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %645 = torch.aten.slice.Tensor %arg0, %int2, %int344, %int352, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %646 = torch.aten.sub.Tensor %645, %637, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %647 = torch_c.to_builtin_tensor %646 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %648 = torch_c.to_builtin_tensor %637 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %649 = tensor.empty() : tensor<1x1024x8xf32>
    %650 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_19, %647, %648 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%649 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %651 = torch_c.from_builtin_tensor %650 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %652 = torch.aten.sub.Tensor %645, %651, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %653 = torch_c.to_builtin_tensor %646 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %654 = torch_c.to_builtin_tensor %652 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %655 = torch_c.to_builtin_tensor %644 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %656 = tensor.empty() : tensor<1x1024x8xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%653, %654, %655 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%656 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %658 = torch_c.from_builtin_tensor %657 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %659 = torch.aten.slice.Tensor %arg0, %int2, %int352, %int360, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %660 = torch.aten.sub.Tensor %659, %651, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %661 = torch_c.to_builtin_tensor %660 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %662 = torch_c.to_builtin_tensor %651 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %663 = tensor.empty() : tensor<1x1024x8xf32>
    %664 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_18, %661, %662 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%663 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %665 = torch_c.from_builtin_tensor %664 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %666 = torch.aten.sub.Tensor %659, %665, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %667 = torch_c.to_builtin_tensor %660 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %668 = torch_c.to_builtin_tensor %666 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %669 = torch_c.to_builtin_tensor %658 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %670 = tensor.empty() : tensor<1x1024x8xf32>
    %671 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%667, %668, %669 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%670 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %672 = torch_c.from_builtin_tensor %671 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %673 = torch.aten.slice.Tensor %arg0, %int2, %int360, %int368, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %674 = torch.aten.sub.Tensor %673, %665, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %675 = torch_c.to_builtin_tensor %674 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %676 = torch_c.to_builtin_tensor %665 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %677 = tensor.empty() : tensor<1x1024x8xf32>
    %678 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_17, %675, %676 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%677 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %679 = torch_c.from_builtin_tensor %678 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %680 = torch.aten.sub.Tensor %673, %679, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %681 = torch_c.to_builtin_tensor %674 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %682 = torch_c.to_builtin_tensor %680 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %683 = torch_c.to_builtin_tensor %672 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %684 = tensor.empty() : tensor<1x1024x8xf32>
    %685 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%681, %682, %683 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%684 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %686 = torch_c.from_builtin_tensor %685 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %687 = torch.aten.slice.Tensor %arg0, %int2, %int368, %int376, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %688 = torch.aten.sub.Tensor %687, %679, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %689 = torch_c.to_builtin_tensor %688 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %690 = torch_c.to_builtin_tensor %679 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %691 = tensor.empty() : tensor<1x1024x8xf32>
    %692 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_16, %689, %690 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%691 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %693 = torch_c.from_builtin_tensor %692 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %694 = torch.aten.sub.Tensor %687, %693, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %695 = torch_c.to_builtin_tensor %688 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %696 = torch_c.to_builtin_tensor %694 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %697 = torch_c.to_builtin_tensor %686 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %698 = tensor.empty() : tensor<1x1024x8xf32>
    %699 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%695, %696, %697 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%698 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %700 = torch_c.from_builtin_tensor %699 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %701 = torch.aten.slice.Tensor %arg0, %int2, %int376, %int384, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %702 = torch.aten.sub.Tensor %701, %693, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %703 = torch_c.to_builtin_tensor %702 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %704 = torch_c.to_builtin_tensor %693 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %705 = tensor.empty() : tensor<1x1024x8xf32>
    %706 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_15, %703, %704 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%705 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %707 = torch_c.from_builtin_tensor %706 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %708 = torch.aten.sub.Tensor %701, %707, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %709 = torch_c.to_builtin_tensor %702 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %710 = torch_c.to_builtin_tensor %708 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %711 = torch_c.to_builtin_tensor %700 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %712 = tensor.empty() : tensor<1x1024x8xf32>
    %713 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%709, %710, %711 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%712 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %714 = torch_c.from_builtin_tensor %713 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %715 = torch.aten.sub.Tensor %707, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %716 = torch.aten.mul.Tensor %14, %715 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %717 = torch.aten.mul.Tensor %715, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %718 = torch.aten.add.Tensor %15, %716, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %719 = torch.aten.add.Tensor %15, %714, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %720 = torch_c.to_builtin_tensor %717 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %721 = torch_c.to_builtin_tensor %716 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %722 = torch_c.to_builtin_tensor %719 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %723 = tensor.empty() : tensor<1x1024x8xf32>
    %724 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%720, %721, %722 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%723 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %725 = torch_c.from_builtin_tensor %724 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %726 = torch.aten.slice.Tensor %arg0, %int2, %int384, %int392, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %727 = torch.aten.sub.Tensor %726, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %728 = torch_c.to_builtin_tensor %727 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %729 = tensor.empty() : tensor<1x1024x8xf32>
    %730 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31, %728, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%729 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %731 = torch_c.from_builtin_tensor %730 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %732 = torch.aten.sub.Tensor %726, %731, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %733 = torch_c.to_builtin_tensor %727 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %734 = torch_c.to_builtin_tensor %732 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %735 = tensor.empty() : tensor<1x1024x8xf32>
    %736 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%733, %734, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%735 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %737 = torch_c.from_builtin_tensor %736 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %738 = torch.aten.slice.Tensor %arg0, %int2, %int392, %int400, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %739 = torch.aten.sub.Tensor %738, %731, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %740 = torch_c.to_builtin_tensor %739 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %741 = torch_c.to_builtin_tensor %731 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %742 = tensor.empty() : tensor<1x1024x8xf32>
    %743 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_29, %740, %741 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%742 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %744 = torch_c.from_builtin_tensor %743 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %745 = torch.aten.sub.Tensor %738, %744, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %746 = torch_c.to_builtin_tensor %739 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %747 = torch_c.to_builtin_tensor %745 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %748 = torch_c.to_builtin_tensor %737 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %749 = tensor.empty() : tensor<1x1024x8xf32>
    %750 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%746, %747, %748 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%749 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %751 = torch_c.from_builtin_tensor %750 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %752 = torch.aten.slice.Tensor %arg0, %int2, %int400, %int408, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %753 = torch.aten.sub.Tensor %752, %744, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %754 = torch_c.to_builtin_tensor %753 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %755 = torch_c.to_builtin_tensor %744 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %756 = tensor.empty() : tensor<1x1024x8xf32>
    %757 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_28, %754, %755 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%756 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %758 = torch_c.from_builtin_tensor %757 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %759 = torch.aten.sub.Tensor %752, %758, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %760 = torch_c.to_builtin_tensor %753 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %761 = torch_c.to_builtin_tensor %759 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %762 = torch_c.to_builtin_tensor %751 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %763 = tensor.empty() : tensor<1x1024x8xf32>
    %764 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%760, %761, %762 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%763 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %765 = torch_c.from_builtin_tensor %764 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %766 = torch.aten.slice.Tensor %arg0, %int2, %int408, %int416, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %767 = torch.aten.sub.Tensor %766, %758, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %768 = torch_c.to_builtin_tensor %767 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %769 = torch_c.to_builtin_tensor %758 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %770 = tensor.empty() : tensor<1x1024x8xf32>
    %771 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_27, %768, %769 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%770 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %772 = torch_c.from_builtin_tensor %771 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %773 = torch.aten.sub.Tensor %766, %772, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %774 = torch_c.to_builtin_tensor %767 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %775 = torch_c.to_builtin_tensor %773 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %776 = torch_c.to_builtin_tensor %765 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %777 = tensor.empty() : tensor<1x1024x8xf32>
    %778 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%774, %775, %776 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%777 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %779 = torch_c.from_builtin_tensor %778 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %780 = torch.aten.slice.Tensor %arg0, %int2, %int416, %int424, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %781 = torch.aten.sub.Tensor %780, %772, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %782 = torch_c.to_builtin_tensor %781 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %783 = torch_c.to_builtin_tensor %772 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %784 = tensor.empty() : tensor<1x1024x8xf32>
    %785 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26, %782, %783 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%784 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %786 = torch_c.from_builtin_tensor %785 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %787 = torch.aten.sub.Tensor %780, %786, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %788 = torch_c.to_builtin_tensor %781 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %789 = torch_c.to_builtin_tensor %787 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %790 = torch_c.to_builtin_tensor %779 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %791 = tensor.empty() : tensor<1x1024x8xf32>
    %792 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%788, %789, %790 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%791 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %793 = torch_c.from_builtin_tensor %792 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %794 = torch.aten.slice.Tensor %arg0, %int2, %int424, %int432, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %795 = torch.aten.sub.Tensor %794, %786, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %796 = torch_c.to_builtin_tensor %795 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %797 = torch_c.to_builtin_tensor %786 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %798 = tensor.empty() : tensor<1x1024x8xf32>
    %799 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %796, %797 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%798 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %800 = torch_c.from_builtin_tensor %799 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %801 = torch.aten.sub.Tensor %794, %800, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %802 = torch_c.to_builtin_tensor %795 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %803 = torch_c.to_builtin_tensor %801 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %804 = torch_c.to_builtin_tensor %793 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %805 = tensor.empty() : tensor<1x1024x8xf32>
    %806 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%802, %803, %804 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%805 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %807 = torch_c.from_builtin_tensor %806 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %808 = torch.aten.slice.Tensor %arg0, %int2, %int432, %int440, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %809 = torch.aten.sub.Tensor %808, %800, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %810 = torch_c.to_builtin_tensor %809 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %811 = torch_c.to_builtin_tensor %800 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %812 = tensor.empty() : tensor<1x1024x8xf32>
    %813 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_24, %810, %811 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%812 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %814 = torch_c.from_builtin_tensor %813 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %815 = torch.aten.sub.Tensor %808, %814, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %816 = torch_c.to_builtin_tensor %809 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %817 = torch_c.to_builtin_tensor %815 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %818 = torch_c.to_builtin_tensor %807 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %819 = tensor.empty() : tensor<1x1024x8xf32>
    %820 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%816, %817, %818 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%819 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %821 = torch_c.from_builtin_tensor %820 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %822 = torch.aten.slice.Tensor %arg0, %int2, %int440, %int448, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %823 = torch.aten.sub.Tensor %822, %814, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %824 = torch_c.to_builtin_tensor %823 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %825 = torch_c.to_builtin_tensor %814 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %826 = tensor.empty() : tensor<1x1024x8xf32>
    %827 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %824, %825 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%826 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %828 = torch_c.from_builtin_tensor %827 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %829 = torch.aten.sub.Tensor %822, %828, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %830 = torch_c.to_builtin_tensor %823 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %831 = torch_c.to_builtin_tensor %829 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %832 = torch_c.to_builtin_tensor %821 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %833 = tensor.empty() : tensor<1x1024x8xf32>
    %834 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%830, %831, %832 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%833 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %835 = torch_c.from_builtin_tensor %834 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %836 = torch.aten.slice.Tensor %arg0, %int2, %int448, %int456, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %837 = torch.aten.sub.Tensor %836, %828, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %838 = torch_c.to_builtin_tensor %837 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %839 = torch_c.to_builtin_tensor %828 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %840 = tensor.empty() : tensor<1x1024x8xf32>
    %841 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_22, %838, %839 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%840 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %842 = torch_c.from_builtin_tensor %841 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %843 = torch.aten.sub.Tensor %836, %842, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %844 = torch_c.to_builtin_tensor %837 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %845 = torch_c.to_builtin_tensor %843 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %846 = torch_c.to_builtin_tensor %835 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %847 = tensor.empty() : tensor<1x1024x8xf32>
    %848 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%844, %845, %846 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%847 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %849 = torch_c.from_builtin_tensor %848 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %850 = torch.aten.slice.Tensor %arg0, %int2, %int456, %int464, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %851 = torch.aten.sub.Tensor %850, %842, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %852 = torch_c.to_builtin_tensor %851 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %853 = torch_c.to_builtin_tensor %842 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %854 = tensor.empty() : tensor<1x1024x8xf32>
    %855 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_21, %852, %853 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%854 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %856 = torch_c.from_builtin_tensor %855 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %857 = torch.aten.sub.Tensor %850, %856, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %858 = torch_c.to_builtin_tensor %851 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %859 = torch_c.to_builtin_tensor %857 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %860 = torch_c.to_builtin_tensor %849 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %861 = tensor.empty() : tensor<1x1024x8xf32>
    %862 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%858, %859, %860 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%861 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %863 = torch_c.from_builtin_tensor %862 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %864 = torch.aten.slice.Tensor %arg0, %int2, %int464, %int472, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %865 = torch.aten.sub.Tensor %864, %856, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %866 = torch_c.to_builtin_tensor %865 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %867 = torch_c.to_builtin_tensor %856 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %868 = tensor.empty() : tensor<1x1024x8xf32>
    %869 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_20, %866, %867 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%868 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %870 = torch_c.from_builtin_tensor %869 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %871 = torch.aten.sub.Tensor %864, %870, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %872 = torch_c.to_builtin_tensor %865 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %873 = torch_c.to_builtin_tensor %871 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %874 = torch_c.to_builtin_tensor %863 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %875 = tensor.empty() : tensor<1x1024x8xf32>
    %876 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%872, %873, %874 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%875 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %877 = torch_c.from_builtin_tensor %876 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %878 = torch.aten.slice.Tensor %arg0, %int2, %int472, %int480, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %879 = torch.aten.sub.Tensor %878, %870, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %880 = torch_c.to_builtin_tensor %879 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %881 = torch_c.to_builtin_tensor %870 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %882 = tensor.empty() : tensor<1x1024x8xf32>
    %883 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_19, %880, %881 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%882 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %884 = torch_c.from_builtin_tensor %883 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %885 = torch.aten.sub.Tensor %878, %884, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %886 = torch_c.to_builtin_tensor %879 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %887 = torch_c.to_builtin_tensor %885 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %888 = torch_c.to_builtin_tensor %877 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %889 = tensor.empty() : tensor<1x1024x8xf32>
    %890 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%886, %887, %888 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%889 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %891 = torch_c.from_builtin_tensor %890 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %892 = torch.aten.slice.Tensor %arg0, %int2, %int480, %int488, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %893 = torch.aten.sub.Tensor %892, %884, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %894 = torch_c.to_builtin_tensor %893 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %895 = torch_c.to_builtin_tensor %884 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %896 = tensor.empty() : tensor<1x1024x8xf32>
    %897 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_18, %894, %895 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%896 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %898 = torch_c.from_builtin_tensor %897 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %899 = torch.aten.sub.Tensor %892, %898, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %900 = torch_c.to_builtin_tensor %893 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %901 = torch_c.to_builtin_tensor %899 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %902 = torch_c.to_builtin_tensor %891 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %903 = tensor.empty() : tensor<1x1024x8xf32>
    %904 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%900, %901, %902 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%903 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %905 = torch_c.from_builtin_tensor %904 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %906 = torch.aten.slice.Tensor %arg0, %int2, %int488, %int496, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %907 = torch.aten.sub.Tensor %906, %898, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %908 = torch_c.to_builtin_tensor %907 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %909 = torch_c.to_builtin_tensor %898 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %910 = tensor.empty() : tensor<1x1024x8xf32>
    %911 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_17, %908, %909 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%910 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %912 = torch_c.from_builtin_tensor %911 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %913 = torch.aten.sub.Tensor %906, %912, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %914 = torch_c.to_builtin_tensor %907 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %915 = torch_c.to_builtin_tensor %913 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %916 = torch_c.to_builtin_tensor %905 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %917 = tensor.empty() : tensor<1x1024x8xf32>
    %918 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%914, %915, %916 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%917 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %919 = torch_c.from_builtin_tensor %918 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %920 = torch.aten.slice.Tensor %arg0, %int2, %int496, %int504, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %921 = torch.aten.sub.Tensor %920, %912, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %922 = torch_c.to_builtin_tensor %921 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %923 = torch_c.to_builtin_tensor %912 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %924 = tensor.empty() : tensor<1x1024x8xf32>
    %925 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_16, %922, %923 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%924 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %926 = torch_c.from_builtin_tensor %925 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %927 = torch.aten.sub.Tensor %920, %926, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %928 = torch_c.to_builtin_tensor %921 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %929 = torch_c.to_builtin_tensor %927 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %930 = torch_c.to_builtin_tensor %919 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %931 = tensor.empty() : tensor<1x1024x8xf32>
    %932 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%928, %929, %930 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%931 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %933 = torch_c.from_builtin_tensor %932 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %934 = torch.aten.slice.Tensor %arg0, %int2, %int504, %int512, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %935 = torch.aten.sub.Tensor %934, %926, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %936 = torch_c.to_builtin_tensor %935 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %937 = torch_c.to_builtin_tensor %926 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %938 = tensor.empty() : tensor<1x1024x8xf32>
    %939 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_15, %936, %937 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%938 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %940 = torch_c.from_builtin_tensor %939 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %941 = torch.aten.sub.Tensor %934, %940, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %942 = torch_c.to_builtin_tensor %935 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %943 = torch_c.to_builtin_tensor %941 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %944 = torch_c.to_builtin_tensor %933 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %945 = tensor.empty() : tensor<1x1024x8xf32>
    %946 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%942, %943, %944 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%945 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %947 = torch_c.from_builtin_tensor %946 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %948 = torch.aten.sub.Tensor %940, %718, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %949 = torch.aten.mul.Tensor %13, %948 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %950 = torch.aten.mul.Tensor %948, %12 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %951 = torch.aten.add.Tensor %718, %949, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %952 = torch.aten.add.Tensor %725, %947, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %953 = torch_c.to_builtin_tensor %950 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %954 = torch_c.to_builtin_tensor %949 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %955 = torch_c.to_builtin_tensor %952 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %956 = tensor.empty() : tensor<1x1024x8xf32>
    %957 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%953, %954, %955 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%956 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %958 = torch_c.from_builtin_tensor %957 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %959 = torch.aten.sub.Tensor %951, %485, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %960 = torch.aten.mul.Tensor %13, %959 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %961 = torch.aten.mul.Tensor %959, %11 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %962 = torch.aten.add.Tensor %485, %960, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %963 = torch.aten.add.Tensor %492, %958, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %964 = torch_c.to_builtin_tensor %961 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %965 = torch_c.to_builtin_tensor %960 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %966 = torch_c.to_builtin_tensor %963 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %967 = tensor.empty() : tensor<1x1024x8xf32>
    %968 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%964, %965, %966 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%967 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %969 = torch_c.from_builtin_tensor %968 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %970 = torch.aten.sub.Tensor %962, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %971 = torch.aten.mul.Tensor %14, %970 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %972 = torch.aten.mul.Tensor %970, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %973 = torch.aten.add.Tensor %15, %971, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %974 = torch.aten.add.Tensor %15, %969, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %975 = torch_c.to_builtin_tensor %972 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %976 = torch_c.to_builtin_tensor %971 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %977 = torch_c.to_builtin_tensor %974 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %978 = tensor.empty() : tensor<1x1024x8xf32>
    %979 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%975, %976, %977 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%978 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %980 = torch_c.from_builtin_tensor %979 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %981 = torch.aten.slice.Tensor %arg0, %int2, %int512, %int520, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %982 = torch.aten.sub.Tensor %981, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %983 = torch_c.to_builtin_tensor %982 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %984 = tensor.empty() : tensor<1x1024x8xf32>
    %985 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31, %983, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%984 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %986 = torch_c.from_builtin_tensor %985 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %987 = torch.aten.sub.Tensor %981, %986, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %988 = torch_c.to_builtin_tensor %982 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %989 = torch_c.to_builtin_tensor %987 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %990 = tensor.empty() : tensor<1x1024x8xf32>
    %991 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%988, %989, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%990 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %992 = torch_c.from_builtin_tensor %991 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %993 = torch.aten.slice.Tensor %arg0, %int2, %int520, %int528, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %994 = torch.aten.sub.Tensor %993, %986, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %995 = torch_c.to_builtin_tensor %994 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %996 = torch_c.to_builtin_tensor %986 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %997 = tensor.empty() : tensor<1x1024x8xf32>
    %998 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_29, %995, %996 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%997 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %999 = torch_c.from_builtin_tensor %998 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1000 = torch.aten.sub.Tensor %993, %999, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1001 = torch_c.to_builtin_tensor %994 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1002 = torch_c.to_builtin_tensor %1000 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1003 = torch_c.to_builtin_tensor %992 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1004 = tensor.empty() : tensor<1x1024x8xf32>
    %1005 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1001, %1002, %1003 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1004 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1006 = torch_c.from_builtin_tensor %1005 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1007 = torch.aten.slice.Tensor %arg0, %int2, %int528, %int536, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1008 = torch.aten.sub.Tensor %1007, %999, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1009 = torch_c.to_builtin_tensor %1008 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1010 = torch_c.to_builtin_tensor %999 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1011 = tensor.empty() : tensor<1x1024x8xf32>
    %1012 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_28, %1009, %1010 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1011 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1013 = torch_c.from_builtin_tensor %1012 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1014 = torch.aten.sub.Tensor %1007, %1013, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1015 = torch_c.to_builtin_tensor %1008 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1016 = torch_c.to_builtin_tensor %1014 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1017 = torch_c.to_builtin_tensor %1006 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1018 = tensor.empty() : tensor<1x1024x8xf32>
    %1019 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1015, %1016, %1017 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1018 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1020 = torch_c.from_builtin_tensor %1019 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1021 = torch.aten.slice.Tensor %arg0, %int2, %int536, %int544, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1022 = torch.aten.sub.Tensor %1021, %1013, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1023 = torch_c.to_builtin_tensor %1022 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1024 = torch_c.to_builtin_tensor %1013 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1025 = tensor.empty() : tensor<1x1024x8xf32>
    %1026 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_27, %1023, %1024 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1025 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1027 = torch_c.from_builtin_tensor %1026 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1028 = torch.aten.sub.Tensor %1021, %1027, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1029 = torch_c.to_builtin_tensor %1022 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1030 = torch_c.to_builtin_tensor %1028 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1031 = torch_c.to_builtin_tensor %1020 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1032 = tensor.empty() : tensor<1x1024x8xf32>
    %1033 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1029, %1030, %1031 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1032 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1034 = torch_c.from_builtin_tensor %1033 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1035 = torch.aten.slice.Tensor %arg0, %int2, %int544, %int552, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1036 = torch.aten.sub.Tensor %1035, %1027, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1037 = torch_c.to_builtin_tensor %1036 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1038 = torch_c.to_builtin_tensor %1027 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1039 = tensor.empty() : tensor<1x1024x8xf32>
    %1040 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26, %1037, %1038 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1039 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1041 = torch_c.from_builtin_tensor %1040 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1042 = torch.aten.sub.Tensor %1035, %1041, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1043 = torch_c.to_builtin_tensor %1036 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1044 = torch_c.to_builtin_tensor %1042 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1045 = torch_c.to_builtin_tensor %1034 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1046 = tensor.empty() : tensor<1x1024x8xf32>
    %1047 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1043, %1044, %1045 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1046 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1048 = torch_c.from_builtin_tensor %1047 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1049 = torch.aten.slice.Tensor %arg0, %int2, %int552, %int560, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1050 = torch.aten.sub.Tensor %1049, %1041, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1051 = torch_c.to_builtin_tensor %1050 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1052 = torch_c.to_builtin_tensor %1041 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1053 = tensor.empty() : tensor<1x1024x8xf32>
    %1054 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %1051, %1052 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1053 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1055 = torch_c.from_builtin_tensor %1054 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1056 = torch.aten.sub.Tensor %1049, %1055, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1057 = torch_c.to_builtin_tensor %1050 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1058 = torch_c.to_builtin_tensor %1056 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1059 = torch_c.to_builtin_tensor %1048 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1060 = tensor.empty() : tensor<1x1024x8xf32>
    %1061 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1057, %1058, %1059 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1060 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1062 = torch_c.from_builtin_tensor %1061 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1063 = torch.aten.slice.Tensor %arg0, %int2, %int560, %int568, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1064 = torch.aten.sub.Tensor %1063, %1055, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1065 = torch_c.to_builtin_tensor %1064 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1066 = torch_c.to_builtin_tensor %1055 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1067 = tensor.empty() : tensor<1x1024x8xf32>
    %1068 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_24, %1065, %1066 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1067 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1069 = torch_c.from_builtin_tensor %1068 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1070 = torch.aten.sub.Tensor %1063, %1069, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1071 = torch_c.to_builtin_tensor %1064 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1072 = torch_c.to_builtin_tensor %1070 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1073 = torch_c.to_builtin_tensor %1062 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1074 = tensor.empty() : tensor<1x1024x8xf32>
    %1075 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1071, %1072, %1073 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1074 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1076 = torch_c.from_builtin_tensor %1075 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1077 = torch.aten.slice.Tensor %arg0, %int2, %int568, %int576, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1078 = torch.aten.sub.Tensor %1077, %1069, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1079 = torch_c.to_builtin_tensor %1078 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1080 = torch_c.to_builtin_tensor %1069 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1081 = tensor.empty() : tensor<1x1024x8xf32>
    %1082 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %1079, %1080 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1081 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1083 = torch_c.from_builtin_tensor %1082 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1084 = torch.aten.sub.Tensor %1077, %1083, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1085 = torch_c.to_builtin_tensor %1078 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1086 = torch_c.to_builtin_tensor %1084 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1087 = torch_c.to_builtin_tensor %1076 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1088 = tensor.empty() : tensor<1x1024x8xf32>
    %1089 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1085, %1086, %1087 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1088 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1090 = torch_c.from_builtin_tensor %1089 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1091 = torch.aten.slice.Tensor %arg0, %int2, %int576, %int584, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1092 = torch.aten.sub.Tensor %1091, %1083, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1093 = torch_c.to_builtin_tensor %1092 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1094 = torch_c.to_builtin_tensor %1083 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1095 = tensor.empty() : tensor<1x1024x8xf32>
    %1096 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_22, %1093, %1094 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1095 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1097 = torch_c.from_builtin_tensor %1096 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1098 = torch.aten.sub.Tensor %1091, %1097, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1099 = torch_c.to_builtin_tensor %1092 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1100 = torch_c.to_builtin_tensor %1098 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1101 = torch_c.to_builtin_tensor %1090 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1102 = tensor.empty() : tensor<1x1024x8xf32>
    %1103 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1099, %1100, %1101 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1102 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1104 = torch_c.from_builtin_tensor %1103 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1105 = torch.aten.slice.Tensor %arg0, %int2, %int584, %int592, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1106 = torch.aten.sub.Tensor %1105, %1097, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1107 = torch_c.to_builtin_tensor %1106 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1108 = torch_c.to_builtin_tensor %1097 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1109 = tensor.empty() : tensor<1x1024x8xf32>
    %1110 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_21, %1107, %1108 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1109 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1111 = torch_c.from_builtin_tensor %1110 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1112 = torch.aten.sub.Tensor %1105, %1111, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1113 = torch_c.to_builtin_tensor %1106 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1114 = torch_c.to_builtin_tensor %1112 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1115 = torch_c.to_builtin_tensor %1104 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1116 = tensor.empty() : tensor<1x1024x8xf32>
    %1117 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1113, %1114, %1115 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1116 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1118 = torch_c.from_builtin_tensor %1117 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1119 = torch.aten.slice.Tensor %arg0, %int2, %int592, %int600, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1120 = torch.aten.sub.Tensor %1119, %1111, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1121 = torch_c.to_builtin_tensor %1120 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1122 = torch_c.to_builtin_tensor %1111 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1123 = tensor.empty() : tensor<1x1024x8xf32>
    %1124 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_20, %1121, %1122 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1123 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1125 = torch_c.from_builtin_tensor %1124 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1126 = torch.aten.sub.Tensor %1119, %1125, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1127 = torch_c.to_builtin_tensor %1120 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1128 = torch_c.to_builtin_tensor %1126 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1129 = torch_c.to_builtin_tensor %1118 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1130 = tensor.empty() : tensor<1x1024x8xf32>
    %1131 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1127, %1128, %1129 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1130 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1132 = torch_c.from_builtin_tensor %1131 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1133 = torch.aten.slice.Tensor %arg0, %int2, %int600, %int608, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1134 = torch.aten.sub.Tensor %1133, %1125, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1135 = torch_c.to_builtin_tensor %1134 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1136 = torch_c.to_builtin_tensor %1125 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1137 = tensor.empty() : tensor<1x1024x8xf32>
    %1138 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_19, %1135, %1136 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1137 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1139 = torch_c.from_builtin_tensor %1138 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1140 = torch.aten.sub.Tensor %1133, %1139, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1141 = torch_c.to_builtin_tensor %1134 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1142 = torch_c.to_builtin_tensor %1140 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1143 = torch_c.to_builtin_tensor %1132 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1144 = tensor.empty() : tensor<1x1024x8xf32>
    %1145 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1141, %1142, %1143 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1144 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1146 = torch_c.from_builtin_tensor %1145 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1147 = torch.aten.slice.Tensor %arg0, %int2, %int608, %int616, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1148 = torch.aten.sub.Tensor %1147, %1139, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1149 = torch_c.to_builtin_tensor %1148 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1150 = torch_c.to_builtin_tensor %1139 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1151 = tensor.empty() : tensor<1x1024x8xf32>
    %1152 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_18, %1149, %1150 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1151 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1153 = torch_c.from_builtin_tensor %1152 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1154 = torch.aten.sub.Tensor %1147, %1153, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1155 = torch_c.to_builtin_tensor %1148 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1156 = torch_c.to_builtin_tensor %1154 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1157 = torch_c.to_builtin_tensor %1146 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1158 = tensor.empty() : tensor<1x1024x8xf32>
    %1159 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1155, %1156, %1157 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1158 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1160 = torch_c.from_builtin_tensor %1159 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1161 = torch.aten.slice.Tensor %arg0, %int2, %int616, %int624, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1162 = torch.aten.sub.Tensor %1161, %1153, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1163 = torch_c.to_builtin_tensor %1162 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1164 = torch_c.to_builtin_tensor %1153 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1165 = tensor.empty() : tensor<1x1024x8xf32>
    %1166 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_17, %1163, %1164 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1165 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1167 = torch_c.from_builtin_tensor %1166 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1168 = torch.aten.sub.Tensor %1161, %1167, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1169 = torch_c.to_builtin_tensor %1162 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1170 = torch_c.to_builtin_tensor %1168 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1171 = torch_c.to_builtin_tensor %1160 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1172 = tensor.empty() : tensor<1x1024x8xf32>
    %1173 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1169, %1170, %1171 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1172 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1174 = torch_c.from_builtin_tensor %1173 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1175 = torch.aten.slice.Tensor %arg0, %int2, %int624, %int632, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1176 = torch.aten.sub.Tensor %1175, %1167, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1177 = torch_c.to_builtin_tensor %1176 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1178 = torch_c.to_builtin_tensor %1167 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1179 = tensor.empty() : tensor<1x1024x8xf32>
    %1180 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_16, %1177, %1178 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1179 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1181 = torch_c.from_builtin_tensor %1180 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1182 = torch.aten.sub.Tensor %1175, %1181, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1183 = torch_c.to_builtin_tensor %1176 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1184 = torch_c.to_builtin_tensor %1182 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1185 = torch_c.to_builtin_tensor %1174 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1186 = tensor.empty() : tensor<1x1024x8xf32>
    %1187 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1183, %1184, %1185 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1186 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1188 = torch_c.from_builtin_tensor %1187 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1189 = torch.aten.slice.Tensor %arg0, %int2, %int632, %int640, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1190 = torch.aten.sub.Tensor %1189, %1181, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1191 = torch_c.to_builtin_tensor %1190 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1192 = torch_c.to_builtin_tensor %1181 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1193 = tensor.empty() : tensor<1x1024x8xf32>
    %1194 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_15, %1191, %1192 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1193 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1195 = torch_c.from_builtin_tensor %1194 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1196 = torch.aten.sub.Tensor %1189, %1195, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1197 = torch_c.to_builtin_tensor %1190 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1198 = torch_c.to_builtin_tensor %1196 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1199 = torch_c.to_builtin_tensor %1188 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1200 = tensor.empty() : tensor<1x1024x8xf32>
    %1201 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1197, %1198, %1199 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1200 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1202 = torch_c.from_builtin_tensor %1201 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1203 = torch.aten.sub.Tensor %1195, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1204 = torch.aten.mul.Tensor %14, %1203 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1205 = torch.aten.mul.Tensor %1203, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1206 = torch.aten.add.Tensor %15, %1204, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1207 = torch.aten.add.Tensor %15, %1202, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1208 = torch_c.to_builtin_tensor %1205 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1209 = torch_c.to_builtin_tensor %1204 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1210 = torch_c.to_builtin_tensor %1207 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1211 = tensor.empty() : tensor<1x1024x8xf32>
    %1212 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1208, %1209, %1210 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1211 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1213 = torch_c.from_builtin_tensor %1212 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1214 = torch.aten.slice.Tensor %arg0, %int2, %int640, %int648, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1215 = torch.aten.sub.Tensor %1214, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1216 = torch_c.to_builtin_tensor %1215 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1217 = tensor.empty() : tensor<1x1024x8xf32>
    %1218 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_31, %1216, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1217 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1219 = torch_c.from_builtin_tensor %1218 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1220 = torch.aten.sub.Tensor %1214, %1219, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1221 = torch_c.to_builtin_tensor %1215 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1222 = torch_c.to_builtin_tensor %1220 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1223 = tensor.empty() : tensor<1x1024x8xf32>
    %1224 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1221, %1222, %cst_30 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1223 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1225 = torch_c.from_builtin_tensor %1224 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1226 = torch.aten.slice.Tensor %arg0, %int2, %int648, %int656, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1227 = torch.aten.sub.Tensor %1226, %1219, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1228 = torch_c.to_builtin_tensor %1227 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1229 = torch_c.to_builtin_tensor %1219 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1230 = tensor.empty() : tensor<1x1024x8xf32>
    %1231 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_29, %1228, %1229 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1230 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1232 = torch_c.from_builtin_tensor %1231 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1233 = torch.aten.sub.Tensor %1226, %1232, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1234 = torch_c.to_builtin_tensor %1227 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1235 = torch_c.to_builtin_tensor %1233 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1236 = torch_c.to_builtin_tensor %1225 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1237 = tensor.empty() : tensor<1x1024x8xf32>
    %1238 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1234, %1235, %1236 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1237 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1239 = torch_c.from_builtin_tensor %1238 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1240 = torch.aten.slice.Tensor %arg0, %int2, %int656, %int664, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1241 = torch.aten.sub.Tensor %1240, %1232, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1242 = torch_c.to_builtin_tensor %1241 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1243 = torch_c.to_builtin_tensor %1232 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1244 = tensor.empty() : tensor<1x1024x8xf32>
    %1245 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_28, %1242, %1243 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1244 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1246 = torch_c.from_builtin_tensor %1245 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1247 = torch.aten.sub.Tensor %1240, %1246, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1248 = torch_c.to_builtin_tensor %1241 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1249 = torch_c.to_builtin_tensor %1247 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1250 = torch_c.to_builtin_tensor %1239 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1251 = tensor.empty() : tensor<1x1024x8xf32>
    %1252 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1248, %1249, %1250 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1251 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1253 = torch_c.from_builtin_tensor %1252 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1254 = torch.aten.slice.Tensor %arg0, %int2, %int664, %int672, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1255 = torch.aten.sub.Tensor %1254, %1246, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1256 = torch_c.to_builtin_tensor %1255 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1257 = torch_c.to_builtin_tensor %1246 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1258 = tensor.empty() : tensor<1x1024x8xf32>
    %1259 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_27, %1256, %1257 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1258 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1260 = torch_c.from_builtin_tensor %1259 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1261 = torch.aten.sub.Tensor %1254, %1260, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1262 = torch_c.to_builtin_tensor %1255 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1263 = torch_c.to_builtin_tensor %1261 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1264 = torch_c.to_builtin_tensor %1253 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1265 = tensor.empty() : tensor<1x1024x8xf32>
    %1266 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1262, %1263, %1264 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1265 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1267 = torch_c.from_builtin_tensor %1266 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1268 = torch.aten.slice.Tensor %arg0, %int2, %int672, %int680, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1269 = torch.aten.sub.Tensor %1268, %1260, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1270 = torch_c.to_builtin_tensor %1269 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1271 = torch_c.to_builtin_tensor %1260 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1272 = tensor.empty() : tensor<1x1024x8xf32>
    %1273 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_26, %1270, %1271 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1272 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1274 = torch_c.from_builtin_tensor %1273 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1275 = torch.aten.sub.Tensor %1268, %1274, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1276 = torch_c.to_builtin_tensor %1269 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1277 = torch_c.to_builtin_tensor %1275 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1278 = torch_c.to_builtin_tensor %1267 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1279 = tensor.empty() : tensor<1x1024x8xf32>
    %1280 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1276, %1277, %1278 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1279 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1281 = torch_c.from_builtin_tensor %1280 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1282 = torch.aten.slice.Tensor %arg0, %int2, %int680, %int688, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1283 = torch.aten.sub.Tensor %1282, %1274, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1284 = torch_c.to_builtin_tensor %1283 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1285 = torch_c.to_builtin_tensor %1274 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1286 = tensor.empty() : tensor<1x1024x8xf32>
    %1287 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %1284, %1285 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1286 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1288 = torch_c.from_builtin_tensor %1287 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1289 = torch.aten.sub.Tensor %1282, %1288, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1290 = torch_c.to_builtin_tensor %1283 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1291 = torch_c.to_builtin_tensor %1289 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1292 = torch_c.to_builtin_tensor %1281 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1293 = tensor.empty() : tensor<1x1024x8xf32>
    %1294 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1290, %1291, %1292 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1293 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1295 = torch_c.from_builtin_tensor %1294 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1296 = torch.aten.slice.Tensor %arg0, %int2, %int688, %int696, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1297 = torch.aten.sub.Tensor %1296, %1288, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1298 = torch_c.to_builtin_tensor %1297 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1299 = torch_c.to_builtin_tensor %1288 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1300 = tensor.empty() : tensor<1x1024x8xf32>
    %1301 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_24, %1298, %1299 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1300 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1302 = torch_c.from_builtin_tensor %1301 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1303 = torch.aten.sub.Tensor %1296, %1302, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1304 = torch_c.to_builtin_tensor %1297 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1305 = torch_c.to_builtin_tensor %1303 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1306 = torch_c.to_builtin_tensor %1295 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1307 = tensor.empty() : tensor<1x1024x8xf32>
    %1308 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1304, %1305, %1306 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1307 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1309 = torch_c.from_builtin_tensor %1308 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1310 = torch.aten.slice.Tensor %arg0, %int2, %int696, %int704, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1311 = torch.aten.sub.Tensor %1310, %1302, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1312 = torch_c.to_builtin_tensor %1311 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1313 = torch_c.to_builtin_tensor %1302 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1314 = tensor.empty() : tensor<1x1024x8xf32>
    %1315 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %1312, %1313 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1314 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1316 = torch_c.from_builtin_tensor %1315 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1317 = torch.aten.sub.Tensor %1310, %1316, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1318 = torch_c.to_builtin_tensor %1311 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1319 = torch_c.to_builtin_tensor %1317 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1320 = torch_c.to_builtin_tensor %1309 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1321 = tensor.empty() : tensor<1x1024x8xf32>
    %1322 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1318, %1319, %1320 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1321 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1323 = torch_c.from_builtin_tensor %1322 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1324 = torch.aten.slice.Tensor %arg0, %int2, %int704, %int712, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1325 = torch.aten.sub.Tensor %1324, %1316, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1326 = torch_c.to_builtin_tensor %1325 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1327 = torch_c.to_builtin_tensor %1316 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1328 = tensor.empty() : tensor<1x1024x8xf32>
    %1329 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_22, %1326, %1327 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1328 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1330 = torch_c.from_builtin_tensor %1329 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1331 = torch.aten.sub.Tensor %1324, %1330, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1332 = torch_c.to_builtin_tensor %1325 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1333 = torch_c.to_builtin_tensor %1331 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1334 = torch_c.to_builtin_tensor %1323 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1335 = tensor.empty() : tensor<1x1024x8xf32>
    %1336 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1332, %1333, %1334 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1335 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1337 = torch_c.from_builtin_tensor %1336 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1338 = torch.aten.slice.Tensor %arg0, %int2, %int712, %int720, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1339 = torch.aten.sub.Tensor %1338, %1330, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1340 = torch_c.to_builtin_tensor %1339 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1341 = torch_c.to_builtin_tensor %1330 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1342 = tensor.empty() : tensor<1x1024x8xf32>
    %1343 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_21, %1340, %1341 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1342 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1344 = torch_c.from_builtin_tensor %1343 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1345 = torch.aten.sub.Tensor %1338, %1344, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1346 = torch_c.to_builtin_tensor %1339 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1347 = torch_c.to_builtin_tensor %1345 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1348 = torch_c.to_builtin_tensor %1337 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1349 = tensor.empty() : tensor<1x1024x8xf32>
    %1350 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1346, %1347, %1348 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1349 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1351 = torch_c.from_builtin_tensor %1350 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1352 = torch.aten.slice.Tensor %arg0, %int2, %int720, %int728, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1353 = torch.aten.sub.Tensor %1352, %1344, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1354 = torch_c.to_builtin_tensor %1353 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1355 = torch_c.to_builtin_tensor %1344 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1356 = tensor.empty() : tensor<1x1024x8xf32>
    %1357 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_20, %1354, %1355 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1356 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1358 = torch_c.from_builtin_tensor %1357 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1359 = torch.aten.sub.Tensor %1352, %1358, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1360 = torch_c.to_builtin_tensor %1353 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1361 = torch_c.to_builtin_tensor %1359 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1362 = torch_c.to_builtin_tensor %1351 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1363 = tensor.empty() : tensor<1x1024x8xf32>
    %1364 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1360, %1361, %1362 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1363 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1365 = torch_c.from_builtin_tensor %1364 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1366 = torch.aten.slice.Tensor %arg0, %int2, %int728, %int736, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1367 = torch.aten.sub.Tensor %1366, %1358, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1368 = torch_c.to_builtin_tensor %1367 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1369 = torch_c.to_builtin_tensor %1358 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1370 = tensor.empty() : tensor<1x1024x8xf32>
    %1371 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_19, %1368, %1369 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1370 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1372 = torch_c.from_builtin_tensor %1371 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1373 = torch.aten.sub.Tensor %1366, %1372, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1374 = torch_c.to_builtin_tensor %1367 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1375 = torch_c.to_builtin_tensor %1373 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1376 = torch_c.to_builtin_tensor %1365 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1377 = tensor.empty() : tensor<1x1024x8xf32>
    %1378 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1374, %1375, %1376 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1377 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1379 = torch_c.from_builtin_tensor %1378 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1380 = torch.aten.slice.Tensor %arg0, %int2, %int736, %int744, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1381 = torch.aten.sub.Tensor %1380, %1372, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1382 = torch_c.to_builtin_tensor %1381 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1383 = torch_c.to_builtin_tensor %1372 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1384 = tensor.empty() : tensor<1x1024x8xf32>
    %1385 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_18, %1382, %1383 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1384 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1386 = torch_c.from_builtin_tensor %1385 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1387 = torch.aten.sub.Tensor %1380, %1386, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1388 = torch_c.to_builtin_tensor %1381 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1389 = torch_c.to_builtin_tensor %1387 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1390 = torch_c.to_builtin_tensor %1379 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1391 = tensor.empty() : tensor<1x1024x8xf32>
    %1392 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1388, %1389, %1390 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1391 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1393 = torch_c.from_builtin_tensor %1392 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1394 = torch.aten.slice.Tensor %arg0, %int2, %int744, %int752, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1395 = torch.aten.sub.Tensor %1394, %1386, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1396 = torch_c.to_builtin_tensor %1395 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1397 = torch_c.to_builtin_tensor %1386 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1398 = tensor.empty() : tensor<1x1024x8xf32>
    %1399 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_17, %1396, %1397 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1398 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1400 = torch_c.from_builtin_tensor %1399 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1401 = torch.aten.sub.Tensor %1394, %1400, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1402 = torch_c.to_builtin_tensor %1395 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1403 = torch_c.to_builtin_tensor %1401 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1404 = torch_c.to_builtin_tensor %1393 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1405 = tensor.empty() : tensor<1x1024x8xf32>
    %1406 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1402, %1403, %1404 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1405 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1407 = torch_c.from_builtin_tensor %1406 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1408 = torch.aten.slice.Tensor %arg0, %int2, %int752, %int760, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1409 = torch.aten.sub.Tensor %1408, %1400, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1410 = torch_c.to_builtin_tensor %1409 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1411 = torch_c.to_builtin_tensor %1400 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1412 = tensor.empty() : tensor<1x1024x8xf32>
    %1413 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_16, %1410, %1411 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1412 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1414 = torch_c.from_builtin_tensor %1413 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1415 = torch.aten.sub.Tensor %1408, %1414, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1416 = torch_c.to_builtin_tensor %1409 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1417 = torch_c.to_builtin_tensor %1415 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1418 = torch_c.to_builtin_tensor %1407 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1419 = tensor.empty() : tensor<1x1024x8xf32>
    %1420 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1416, %1417, %1418 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1419 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1421 = torch_c.from_builtin_tensor %1420 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1422 = torch.aten.slice.Tensor %arg0, %int2, %int760, %int768, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1423 = torch.aten.sub.Tensor %1422, %1414, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1424 = torch_c.to_builtin_tensor %1423 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1425 = torch_c.to_builtin_tensor %1414 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1426 = tensor.empty() : tensor<1x1024x8xf32>
    %1427 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_15, %1424, %1425 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1426 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1428 = torch_c.from_builtin_tensor %1427 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1429 = torch.aten.sub.Tensor %1422, %1428, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1430 = torch_c.to_builtin_tensor %1423 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1431 = torch_c.to_builtin_tensor %1429 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1432 = torch_c.to_builtin_tensor %1421 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1433 = tensor.empty() : tensor<1x1024x8xf32>
    %1434 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1430, %1431, %1432 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1433 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1435 = torch_c.from_builtin_tensor %1434 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1436 = torch.aten.sub.Tensor %1428, %1206, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1437 = torch.aten.mul.Tensor %13, %1436 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1438 = torch.aten.mul.Tensor %1436, %12 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1439 = torch.aten.add.Tensor %1206, %1437, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1440 = torch.aten.add.Tensor %1213, %1435, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1441 = torch_c.to_builtin_tensor %1438 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1442 = torch_c.to_builtin_tensor %1437 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1443 = torch_c.to_builtin_tensor %1440 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1444 = tensor.empty() : tensor<1x1024x8xf32>
    %1445 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1441, %1442, %1443 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1444 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1446 = torch_c.from_builtin_tensor %1445 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1447 = torch.aten.sub.Tensor %1439, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1448 = torch.aten.mul.Tensor %14, %1447 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1449 = torch.aten.mul.Tensor %1447, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1450 = torch.aten.add.Tensor %15, %1448, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1451 = torch.aten.add.Tensor %15, %1446, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1452 = torch_c.to_builtin_tensor %1449 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1453 = torch_c.to_builtin_tensor %1448 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1454 = torch_c.to_builtin_tensor %1451 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1455 = tensor.empty() : tensor<1x1024x8xf32>
    %1456 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1452, %1453, %1454 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1455 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1457 = torch_c.from_builtin_tensor %1456 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1458 = torch.aten.sub.Tensor %1450, %15, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1459 = torch.aten.mul.Tensor %14, %1458 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1460 = torch.aten.mul.Tensor %1458, %15 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1461 = torch.aten.add.Tensor %15, %1459, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1462 = torch.aten.add.Tensor %15, %1457, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1463 = torch_c.to_builtin_tensor %1460 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1464 = torch_c.to_builtin_tensor %1459 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1465 = torch_c.to_builtin_tensor %1462 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1466 = tensor.empty() : tensor<1x1024x8xf32>
    %1467 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1463, %1464, %1465 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1466 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1468 = torch_c.from_builtin_tensor %1467 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1469 = torch.aten.sub.Tensor %973, %1461, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1470 = torch.aten.mul.Tensor %10, %1469 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1471 = torch.aten.mul.Tensor %1469, %11 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32> -> !torch.vtensor<[1,1024,8],f32>
    %1472 = torch.aten.add.Tensor %1461, %1470, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1473 = torch.aten.add.Tensor %1468, %980, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.vtensor<[1,1024,8],f32>, !torch.int -> !torch.vtensor<[1,1024,8],f32>
    %1474 = torch_c.to_builtin_tensor %1471 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1475 = torch_c.to_builtin_tensor %1470 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1476 = torch_c.to_builtin_tensor %1473 : !torch.vtensor<[1,1024,8],f32> -> tensor<1x1024x8xf32>
    %1477 = tensor.empty() : tensor<1x1024x8xf32>
    %1478 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1474, %1475, %1476 : tensor<1x1024x8xf32>, tensor<1x1024x8xf32>, tensor<1x1024x8xf32>) outs(%1477 : tensor<1x1024x8xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x8xf32>
    %1479 = torch_c.from_builtin_tensor %1478 : tensor<1x1024x8xf32> -> !torch.vtensor<[1,1024,8],f32>
    %1480 = torch.aten.slice.Tensor %1472, %int2, %int0, %int1, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1481 = torch.aten.slice.Tensor %1479, %int2, %int0, %int1, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1482 = torch.aten.sub.Tensor %1480, %9, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1483 = torch_c.to_builtin_tensor %1482 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1484 = tensor.empty() : tensor<1x1024x1xf32>
    %1485 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_14, %1483, %cst_13 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1484 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1486 = torch_c.from_builtin_tensor %1485 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1487 = torch.aten.mul.Tensor %1482, %1482 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1488 = torch.aten.mul.Tensor %1487, %8 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1489 = torch_c.to_builtin_tensor %1488 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1490 = torch_c.to_builtin_tensor %1481 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1491 = tensor.empty() : tensor<1x1024x1xf32>
    %1492 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1489, %cst_13, %1490 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1491 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1493 = torch_c.from_builtin_tensor %1492 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1494 = torch.aten.add.Tensor %9, %1493, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1495 = torch.aten.slice.Tensor %1472, %int2, %int1, %int2, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1496 = torch.aten.slice.Tensor %1479, %int2, %int1, %int2, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1497 = torch.aten.sub.Tensor %1495, %1486, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1498 = torch_c.to_builtin_tensor %1497 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1499 = torch_c.to_builtin_tensor %1486 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1500 = tensor.empty() : tensor<1x1024x1xf32>
    %1501 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_12, %1498, %1499 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1500 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1502 = torch_c.from_builtin_tensor %1501 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1503 = torch.aten.mul.Tensor %1497, %1497 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1504 = torch.aten.mul.Tensor %1503, %7 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1505 = torch_c.to_builtin_tensor %1504 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1506 = torch_c.to_builtin_tensor %1496 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1507 = tensor.empty() : tensor<1x1024x1xf32>
    %1508 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1505, %cst_11, %1506 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1507 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1509 = torch_c.from_builtin_tensor %1508 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1510 = torch.aten.add.Tensor %1494, %1509, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1511 = torch.aten.slice.Tensor %1472, %int2, %int2, %int3, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1512 = torch.aten.slice.Tensor %1479, %int2, %int2, %int3, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1513 = torch.aten.sub.Tensor %1511, %1502, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1514 = torch_c.to_builtin_tensor %1513 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1515 = torch_c.to_builtin_tensor %1502 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1516 = tensor.empty() : tensor<1x1024x1xf32>
    %1517 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_10, %1514, %1515 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1516 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1518 = torch_c.from_builtin_tensor %1517 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1519 = torch.aten.mul.Tensor %1513, %1513 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1520 = torch.aten.mul.Tensor %1519, %6 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1521 = torch_c.to_builtin_tensor %1520 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1522 = torch_c.to_builtin_tensor %1512 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1523 = tensor.empty() : tensor<1x1024x1xf32>
    %1524 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1521, %cst_9, %1522 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1523 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1525 = torch_c.from_builtin_tensor %1524 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1526 = torch.aten.add.Tensor %1510, %1525, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1527 = torch.aten.slice.Tensor %1472, %int2, %int3, %int4, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1528 = torch.aten.slice.Tensor %1479, %int2, %int3, %int4, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1529 = torch.aten.sub.Tensor %1527, %1518, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1530 = torch_c.to_builtin_tensor %1529 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1531 = torch_c.to_builtin_tensor %1518 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1532 = tensor.empty() : tensor<1x1024x1xf32>
    %1533 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_8, %1530, %1531 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1532 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1534 = torch_c.from_builtin_tensor %1533 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1535 = torch.aten.mul.Tensor %1529, %1529 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1536 = torch.aten.mul.Tensor %1535, %5 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1537 = torch_c.to_builtin_tensor %1536 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1538 = torch_c.to_builtin_tensor %1528 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1539 = tensor.empty() : tensor<1x1024x1xf32>
    %1540 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1537, %cst_7, %1538 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1539 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1541 = torch_c.from_builtin_tensor %1540 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1542 = torch.aten.add.Tensor %1526, %1541, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1543 = torch.aten.slice.Tensor %1472, %int2, %int4, %int5, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1544 = torch.aten.slice.Tensor %1479, %int2, %int4, %int5, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1545 = torch.aten.sub.Tensor %1543, %1534, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1546 = torch_c.to_builtin_tensor %1545 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1547 = torch_c.to_builtin_tensor %1534 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1548 = tensor.empty() : tensor<1x1024x1xf32>
    %1549 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6, %1546, %1547 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1548 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1550 = torch_c.from_builtin_tensor %1549 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1551 = torch.aten.mul.Tensor %1545, %1545 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1552 = torch.aten.mul.Tensor %1551, %4 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1553 = torch_c.to_builtin_tensor %1552 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1554 = torch_c.to_builtin_tensor %1544 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1555 = tensor.empty() : tensor<1x1024x1xf32>
    %1556 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1553, %cst_5, %1554 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1555 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1557 = torch_c.from_builtin_tensor %1556 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1558 = torch.aten.add.Tensor %1542, %1557, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1559 = torch.aten.slice.Tensor %1472, %int2, %int5, %int6, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1560 = torch.aten.slice.Tensor %1479, %int2, %int5, %int6, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1561 = torch.aten.sub.Tensor %1559, %1550, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1562 = torch_c.to_builtin_tensor %1561 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1563 = torch_c.to_builtin_tensor %1550 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1564 = tensor.empty() : tensor<1x1024x1xf32>
    %1565 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4, %1562, %1563 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1564 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1566 = torch_c.from_builtin_tensor %1565 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1567 = torch.aten.mul.Tensor %1561, %1561 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1568 = torch.aten.mul.Tensor %1567, %3 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1569 = torch_c.to_builtin_tensor %1568 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1570 = torch_c.to_builtin_tensor %1560 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1571 = tensor.empty() : tensor<1x1024x1xf32>
    %1572 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1569, %cst_3, %1570 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1571 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1573 = torch_c.from_builtin_tensor %1572 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1574 = torch.aten.add.Tensor %1558, %1573, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1575 = torch.aten.slice.Tensor %1472, %int2, %int6, %int7, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1576 = torch.aten.slice.Tensor %1479, %int2, %int6, %int7, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1577 = torch.aten.sub.Tensor %1575, %1566, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1578 = torch_c.to_builtin_tensor %1577 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1579 = torch_c.to_builtin_tensor %1566 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1580 = tensor.empty() : tensor<1x1024x1xf32>
    %1581 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_2, %1578, %1579 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1580 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1582 = torch_c.from_builtin_tensor %1581 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1583 = torch.aten.mul.Tensor %1577, %1577 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1584 = torch.aten.mul.Tensor %1583, %2 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1585 = torch_c.to_builtin_tensor %1584 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1586 = torch_c.to_builtin_tensor %1576 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1587 = tensor.empty() : tensor<1x1024x1xf32>
    %1588 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1585, %cst_1, %1586 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1587 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1589 = torch_c.from_builtin_tensor %1588 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1590 = torch.aten.add.Tensor %1574, %1589, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1591 = torch.aten.slice.Tensor %1472, %int2, %int7, %int8, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1592 = torch.aten.slice.Tensor %1479, %int2, %int7, %int8, %int1 : !torch.vtensor<[1,1024,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1593 = torch.aten.sub.Tensor %1591, %1582, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1594 = torch_c.to_builtin_tensor %1593 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1595 = torch_c.to_builtin_tensor %1582 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1596 = tensor.empty() : tensor<1x1024x1xf32>
    %1597 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_0, %1594, %1595 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1596 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1598 = torch_c.from_builtin_tensor %1597 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1599 = torch.aten.mul.Tensor %1593, %1593 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1600 = torch.aten.mul.Tensor %1599, %1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1601 = torch_c.to_builtin_tensor %1600 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1602 = torch_c.to_builtin_tensor %1592 : !torch.vtensor<[1,1024,1],f32> -> tensor<1x1024x1xf32>
    %1603 = tensor.empty() : tensor<1x1024x1xf32>
    %1604 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1601, %cst, %1602 : tensor<1x1024x1xf32>, tensor<1x1024x1xf32>, tensor<1x1024x1xf32>) outs(%1603 : tensor<1x1024x1xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x1xf32>
    %1605 = torch_c.from_builtin_tensor %1604 : tensor<1x1024x1xf32> -> !torch.vtensor<[1,1024,1],f32>
    %1606 = torch.aten.add.Tensor %1590, %1605, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1607 = torch.aten.div.Tensor %1606, %0 : !torch.vtensor<[1,1024,1],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1608 = torch.aten.add.Scalar %1607, %float9.999990e-07, %int1 : !torch.vtensor<[1,1024,1],f32>, !torch.float, !torch.int -> !torch.vtensor<[1,1024,1],f32>
    %1609 = torch.aten.rsqrt %1608 : !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,1],f32>
    %1610 = torch.aten.sub.Tensor %arg0, %1598, %int1 : !torch.vtensor<[1,1024,768],f32>, !torch.vtensor<[1,1024,1],f32>, !torch.int -> !torch.vtensor<[1,1024,768],f32>
    %1611 = torch.aten.mul.Tensor %1610, %1609 : !torch.vtensor<[1,1024,768],f32>, !torch.vtensor<[1,1024,1],f32> -> !torch.vtensor<[1,1024,768],f32>
    %1612 = torch.aten.mul.Tensor %1611, %arg1 : !torch.vtensor<[1,1024,768],f32>, !torch.vtensor<[768],f32> -> !torch.vtensor<[1,1024,768],f32>
    %1613 = torch_c.to_builtin_tensor %1611 : !torch.vtensor<[1,1024,768],f32> -> tensor<1x1024x768xf32>
    %1614 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[768],f32> -> tensor<768xf32>
    %1615 = torch_c.to_builtin_tensor %arg2 : !torch.vtensor<[768],f32> -> tensor<768xf32>
    %1616 = tensor.empty() : tensor<1x1024x768xf32>
    %1617 = linalg.generic {indexing_maps = [#map1, #map2, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1613, %1614, %1615 : tensor<1x1024x768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%1616 : tensor<1x1024x768xf32>) {
    ^bb0(%in: f32, %in_32: f32, %in_33: f32, %out: f32):
      %1619 = math.fma %in, %in_32, %in_33 : f32
      linalg.yield %1619 : f32
    } -> tensor<1x1024x768xf32>
    %1618 = torch_c.from_builtin_tensor %1617 : tensor<1x1024x768xf32> -> !torch.vtensor<[1,1024,768],f32>
    return %1618 : !torch.vtensor<[1,1024,768],f32>
  }
  func.func @recipe2(%arg0: !torch.vtensor<[1,12,1024,64],f32>, %arg1: !torch.vtensor<[1,12,1024,64],f32>, %arg2: !torch.vtensor<[1,12,1024,64],f32>, %arg3: !torch.vtensor<[1,1,1024,1024],f32>) -> !torch.vtensor<[1,12,1024,64],f32> {
    %int768 = torch.constant.int 768
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.021660849396613134 : f64
    %cst_1 = arith.constant 2.3459809789509004E-4 : f64
    %cst_2 = arith.constant 1.6938359250920212E-6 : f64
    %c47_i64 = arith.constant 47 : i64
    %c31_i64 = arith.constant 31 : i64
    %cst_3 = arith.constant dense<[4607182418800017408, 4607140297302181236, 4607100335213349135, 4607062579818421073, 4607027079437701499, 4606993883449571754, 4606963042313658936, 4606934607594512097, 4606908631985796885, 4606885169335019979, 4606864274668794914, 4606846004218661165, 4606830415447468583, 4606817567076339586, 4606807519112221737, 4606800332876043653, 4606796071031487437, 4606794797614391156, 4606796578062795143, 4606801479247646227, 4606809569504174299, 4606820918663955941, 4606835598087680144, 4606853680698631517, 4606875241016906669, 4606900355194379847, 4606929101050434204, 4606961558108475497, 4606997807633245319, 4607037932668951391, 4607082018078232794, 4607130150581978432]> : tensor<32xi64>
    %cst_4 = arith.constant 0x4338000000000000 : f64
    %cst_5 = arith.constant 46.166241308446828 : f64
    %int1024 = torch.constant.int 1024
    %c384 = arith.constant 384 : index
    %c192 = arith.constant 192 : index
    %int4 = torch.constant.int 4
    %int16 = torch.constant.int 16
    %int8 = torch.constant.int 8
    %c16 = arith.constant 16 : index
    %cst_6 = arith.constant 2.000000e+00 : f32
    %cst_7 = arith.constant 0.000000e+00 : f32
    %c23_i32 = arith.constant 23 : i32
    %c127_i32 = arith.constant 127 : i32
    %cst_8 = arith.constant 1.000000e+00 : f32
    %cst_9 = arith.constant 0.999999701 : f32
    %cst_10 = arith.constant 0.499991506 : f32
    %cst_11 = arith.constant 0.166676521 : f32
    %cst_12 = arith.constant 0.0418978222 : f32
    %cst_13 = arith.constant 0.00828929059 : f32
    %cst_14 = arith.constant 0.693147182 : f32
    %cst_15 = arith.constant 5.000000e-01 : f32
    %cst_16 = arith.constant 1.44269502 : f32
    %cst_17 = arith.constant 88.7228394 : f32
    %cst_18 = arith.constant -87.3365478 : f32
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %int3 = torch.constant.int 3
    %int512 = torch.constant.int 512
    %int64 = torch.constant.int 64
    %int12 = torch.constant.int 12
    %float1.250000e-01 = torch.constant.float 1.250000e-01
    %int1 = torch.constant.int 1
    %int2 = torch.constant.int 2
    %int0 = torch.constant.int 0
    %int256 = torch.constant.int 256
    %0 = torch.aten.slice.Tensor %arg0, %int2, %int0, %int256, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,256,64],f32>
    %1 = torch.prim.ListConstruct %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %2 = torch.aten.view %0, %1 : !torch.vtensor<[1,12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[12,256,64],f32>
    %3 = torch.aten.slice.Tensor %arg1, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %4 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %5 = torch.aten.view %3, %4 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %6 = torch.aten.transpose.int %5, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %7 = torch.aten.bmm %2, %6 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %8 = torch.aten.mul.Scalar %7, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %9 = torch.aten.slice.Tensor %arg3, %int2, %int0, %int256, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %10 = torch.aten.slice.Tensor %9, %int3, %int0, %int512, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %11 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %12 = torch.aten.view %10, %11 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %13 = torch.aten.add.Tensor %8, %12, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %14 = torch_c.to_builtin_tensor %13 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %15 = tensor.empty() : tensor<12x256x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %14[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %14[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %17 = torch_c.from_builtin_tensor %16 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %18 = torch.aten.sub.Tensor %13, %17, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %19 = torch_c.to_builtin_tensor %18 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %20 = tensor.empty() : tensor<12x256x512xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%19 : tensor<12x256x512xf32>) outs(%20 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %22 = torch_c.from_builtin_tensor %21 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %23 = torch_c.to_builtin_tensor %22 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %24 = tensor.empty() : tensor<12x256x16xf32>
    %25 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%24 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %23[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %26 = torch_c.from_builtin_tensor %25 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %27 = torch.aten.slice.Tensor %26, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %28 = torch.aten.slice.Tensor %26, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %29 = torch.aten.add.Tensor %27, %28, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %30 = torch.aten.slice.Tensor %29, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %31 = torch.aten.slice.Tensor %29, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %32 = torch.aten.add.Tensor %30, %31, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %33 = torch.aten.slice.Tensor %32, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %34 = torch.aten.slice.Tensor %32, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %35 = torch.aten.add.Tensor %33, %34, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %36 = torch.aten.slice.Tensor %35, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %37 = torch.aten.slice.Tensor %35, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %38 = torch.aten.add.Tensor %36, %37, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %39 = torch.aten.slice.Tensor %arg2, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %40 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %41 = torch.aten.view %39, %40 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %42 = torch_c.to_builtin_tensor %22 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %43 = torch_c.to_builtin_tensor %41 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %44 = tensor.empty() : tensor<12x256x64xf32>
    %45 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%44 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %42[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %43[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %437, %cst_7 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %42[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %43[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %42[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %43[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %46 = torch_c.from_builtin_tensor %45 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %47 = torch.aten.slice.Tensor %arg1, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %48 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %49 = torch.aten.view %47, %48 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %50 = torch.aten.transpose.int %49, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %51 = torch.aten.bmm %2, %50 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %52 = torch.aten.mul.Scalar %51, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %53 = torch.aten.slice.Tensor %arg3, %int2, %int0, %int256, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %54 = torch.aten.slice.Tensor %53, %int3, %int512, %int1024, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %55 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %56 = torch.aten.view %54, %55 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %57 = torch.aten.add.Tensor %52, %56, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %58 = torch_c.to_builtin_tensor %57 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %59 = tensor.empty() : tensor<12x256x1xf32>
    %60 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%59 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %58[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %58[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %61 = torch_c.from_builtin_tensor %60 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %62 = torch.aten.maximum %61, %17 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %63 = torch.aten.sub.Tensor %57, %62, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %64 = torch_c.to_builtin_tensor %63 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %65 = tensor.empty() : tensor<12x256x512xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%64 : tensor<12x256x512xf32>) outs(%65 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %67 = torch_c.from_builtin_tensor %66 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %68 = torch_c.to_builtin_tensor %67 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %69 = tensor.empty() : tensor<12x256x16xf32>
    %70 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%69 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %68[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %71 = torch_c.from_builtin_tensor %70 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %72 = torch.aten.slice.Tensor %71, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %73 = torch.aten.slice.Tensor %71, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %74 = torch.aten.add.Tensor %72, %73, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %75 = torch.aten.slice.Tensor %74, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %76 = torch.aten.slice.Tensor %74, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %77 = torch.aten.add.Tensor %75, %76, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %78 = torch.aten.slice.Tensor %77, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %79 = torch.aten.slice.Tensor %77, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %80 = torch.aten.add.Tensor %78, %79, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %81 = torch.aten.slice.Tensor %80, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %82 = torch.aten.slice.Tensor %80, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %83 = torch.aten.add.Tensor %81, %82, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %84 = torch.aten.slice.Tensor %arg2, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %85 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %86 = torch.aten.view %84, %85 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %87 = torch.aten.sub.Tensor %17, %62, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %88 = torch_c.to_builtin_tensor %87 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %89 = tensor.empty() : tensor<12x256x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%88 : tensor<12x256x1xf32>) outs(%89 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.extf %in : f32 to f64
      %435 = arith.mulf %434, %cst_5 : f64
      %436 = arith.addf %435, %cst_4 : f64
      %437 = arith.bitcast %436 : f64 to i64
      %438 = arith.subf %436, %cst_4 : f64
      %439 = arith.subf %435, %438 : f64
      %440 = arith.andi %437, %c31_i64 : i64
      %441 = arith.index_cast %440 : i64 to index
      %extracted = tensor.extract %cst_3[%441] : tensor<32xi64>
      %442 = arith.shli %437, %c47_i64 : i64
      %443 = arith.addi %extracted, %442 : i64
      %444 = arith.bitcast %443 : i64 to f64
      %445 = math.fma %cst_2, %439, %cst_1 : f64
      %446 = arith.mulf %439, %439 : f64
      %447 = math.fma %cst_0, %439, %cst : f64
      %448 = math.fma %445, %446, %447 : f64
      %449 = arith.mulf %448, %444 : f64
      %450 = arith.truncf %449 : f64 to f32
      linalg.yield %450 : f32
    } -> tensor<12x256x1xf32>
    %91 = torch_c.from_builtin_tensor %90 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %92 = torch_c.to_builtin_tensor %91 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %93 = torch_c.to_builtin_tensor %38 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %94 = torch_c.to_builtin_tensor %83 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %95 = tensor.empty() : tensor<12x256x1xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%92, %93, %94 : tensor<12x256x1xf32>, tensor<12x256x1xf32>, tensor<12x256x1xf32>) outs(%95 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %in_19: f32, %in_20: f32, %out: f32):
      %434 = math.fma %in, %in_19, %in_20 : f32
      linalg.yield %434 : f32
    } -> tensor<12x256x1xf32>
    %97 = torch_c.from_builtin_tensor %96 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %98 = torch.aten.mul.Tensor %46, %91 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %99 = torch_c.to_builtin_tensor %67 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %100 = torch_c.to_builtin_tensor %86 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %101 = torch_c.to_builtin_tensor %98 : !torch.vtensor<[12,256,64],f32> -> tensor<12x256x64xf32>
    %102 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%101 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %99[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %100[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %out, %437 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %99[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %100[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %99[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %100[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %103 = torch_c.from_builtin_tensor %102 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %104 = torch.aten.reciprocal %97 : !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %105 = torch.aten.mul.Tensor %103, %104 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %106 = torch.prim.ListConstruct %int1, %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %107 = torch.aten.view %105, %106 : !torch.vtensor<[12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[1,12,256,64],f32>
    %108 = torch.aten.slice.Tensor %arg0, %int2, %int256, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,256,64],f32>
    %109 = torch.prim.ListConstruct %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %110 = torch.aten.view %108, %109 : !torch.vtensor<[1,12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[12,256,64],f32>
    %111 = torch.aten.slice.Tensor %arg1, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %112 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %113 = torch.aten.view %111, %112 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %114 = torch.aten.transpose.int %113, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %115 = torch.aten.bmm %110, %114 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %116 = torch.aten.mul.Scalar %115, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %117 = torch.aten.slice.Tensor %arg3, %int2, %int256, %int512, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %118 = torch.aten.slice.Tensor %117, %int3, %int0, %int512, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %119 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %120 = torch.aten.view %118, %119 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %121 = torch.aten.add.Tensor %116, %120, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %122 = torch_c.to_builtin_tensor %121 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %123 = tensor.empty() : tensor<12x256x1xf32>
    %124 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%123 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %122[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %122[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %125 = torch_c.from_builtin_tensor %124 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %126 = torch.aten.sub.Tensor %121, %125, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %127 = torch_c.to_builtin_tensor %126 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %128 = tensor.empty() : tensor<12x256x512xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%127 : tensor<12x256x512xf32>) outs(%128 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %130 = torch_c.from_builtin_tensor %129 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %131 = torch_c.to_builtin_tensor %130 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %132 = tensor.empty() : tensor<12x256x16xf32>
    %133 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%132 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %131[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %134 = torch_c.from_builtin_tensor %133 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %135 = torch.aten.slice.Tensor %134, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %136 = torch.aten.slice.Tensor %134, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %137 = torch.aten.add.Tensor %135, %136, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %138 = torch.aten.slice.Tensor %137, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %139 = torch.aten.slice.Tensor %137, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %140 = torch.aten.add.Tensor %138, %139, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %141 = torch.aten.slice.Tensor %140, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %142 = torch.aten.slice.Tensor %140, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %143 = torch.aten.add.Tensor %141, %142, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %144 = torch.aten.slice.Tensor %143, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %145 = torch.aten.slice.Tensor %143, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %146 = torch.aten.add.Tensor %144, %145, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %147 = torch.aten.slice.Tensor %arg2, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %148 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %149 = torch.aten.view %147, %148 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %150 = torch_c.to_builtin_tensor %130 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %151 = torch_c.to_builtin_tensor %149 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %152 = tensor.empty() : tensor<12x256x64xf32>
    %153 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%152 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %150[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %151[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %437, %cst_7 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %150[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %151[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %150[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %151[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %154 = torch_c.from_builtin_tensor %153 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %155 = torch.aten.slice.Tensor %arg1, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %156 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %157 = torch.aten.view %155, %156 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %158 = torch.aten.transpose.int %157, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %159 = torch.aten.bmm %110, %158 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %160 = torch.aten.mul.Scalar %159, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %161 = torch.aten.slice.Tensor %arg3, %int2, %int256, %int512, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %162 = torch.aten.slice.Tensor %161, %int3, %int512, %int1024, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %163 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %164 = torch.aten.view %162, %163 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %165 = torch.aten.add.Tensor %160, %164, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %166 = torch_c.to_builtin_tensor %165 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %167 = tensor.empty() : tensor<12x256x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%167 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %166[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %166[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %169 = torch_c.from_builtin_tensor %168 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %170 = torch.aten.maximum %169, %125 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %171 = torch.aten.sub.Tensor %165, %170, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %172 = torch_c.to_builtin_tensor %171 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %173 = tensor.empty() : tensor<12x256x512xf32>
    %174 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%172 : tensor<12x256x512xf32>) outs(%173 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %175 = torch_c.from_builtin_tensor %174 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %176 = torch_c.to_builtin_tensor %175 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %177 = tensor.empty() : tensor<12x256x16xf32>
    %178 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%177 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %176[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %179 = torch_c.from_builtin_tensor %178 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %180 = torch.aten.slice.Tensor %179, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %181 = torch.aten.slice.Tensor %179, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %182 = torch.aten.add.Tensor %180, %181, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %183 = torch.aten.slice.Tensor %182, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %184 = torch.aten.slice.Tensor %182, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %185 = torch.aten.add.Tensor %183, %184, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %186 = torch.aten.slice.Tensor %185, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %187 = torch.aten.slice.Tensor %185, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %188 = torch.aten.add.Tensor %186, %187, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %189 = torch.aten.slice.Tensor %188, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %190 = torch.aten.slice.Tensor %188, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %191 = torch.aten.add.Tensor %189, %190, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %192 = torch.aten.slice.Tensor %arg2, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %193 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %194 = torch.aten.view %192, %193 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %195 = torch.aten.sub.Tensor %125, %170, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %196 = torch_c.to_builtin_tensor %195 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %197 = tensor.empty() : tensor<12x256x1xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%196 : tensor<12x256x1xf32>) outs(%197 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.extf %in : f32 to f64
      %435 = arith.mulf %434, %cst_5 : f64
      %436 = arith.addf %435, %cst_4 : f64
      %437 = arith.bitcast %436 : f64 to i64
      %438 = arith.subf %436, %cst_4 : f64
      %439 = arith.subf %435, %438 : f64
      %440 = arith.andi %437, %c31_i64 : i64
      %441 = arith.index_cast %440 : i64 to index
      %extracted = tensor.extract %cst_3[%441] : tensor<32xi64>
      %442 = arith.shli %437, %c47_i64 : i64
      %443 = arith.addi %extracted, %442 : i64
      %444 = arith.bitcast %443 : i64 to f64
      %445 = math.fma %cst_2, %439, %cst_1 : f64
      %446 = arith.mulf %439, %439 : f64
      %447 = math.fma %cst_0, %439, %cst : f64
      %448 = math.fma %445, %446, %447 : f64
      %449 = arith.mulf %448, %444 : f64
      %450 = arith.truncf %449 : f64 to f32
      linalg.yield %450 : f32
    } -> tensor<12x256x1xf32>
    %199 = torch_c.from_builtin_tensor %198 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %200 = torch_c.to_builtin_tensor %199 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %201 = torch_c.to_builtin_tensor %146 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %202 = torch_c.to_builtin_tensor %191 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %203 = tensor.empty() : tensor<12x256x1xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%200, %201, %202 : tensor<12x256x1xf32>, tensor<12x256x1xf32>, tensor<12x256x1xf32>) outs(%203 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %in_19: f32, %in_20: f32, %out: f32):
      %434 = math.fma %in, %in_19, %in_20 : f32
      linalg.yield %434 : f32
    } -> tensor<12x256x1xf32>
    %205 = torch_c.from_builtin_tensor %204 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %206 = torch.aten.mul.Tensor %154, %199 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %207 = torch_c.to_builtin_tensor %175 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %208 = torch_c.to_builtin_tensor %194 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %209 = torch_c.to_builtin_tensor %206 : !torch.vtensor<[12,256,64],f32> -> tensor<12x256x64xf32>
    %210 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%209 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %207[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %208[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %out, %437 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %207[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %208[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %207[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %208[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %211 = torch_c.from_builtin_tensor %210 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %212 = torch.aten.reciprocal %205 : !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %213 = torch.aten.mul.Tensor %211, %212 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %214 = torch.prim.ListConstruct %int1, %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %215 = torch.aten.view %213, %214 : !torch.vtensor<[12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[1,12,256,64],f32>
    %216 = torch.aten.slice.Tensor %arg0, %int2, %int512, %int768, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,256,64],f32>
    %217 = torch.prim.ListConstruct %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %218 = torch.aten.view %216, %217 : !torch.vtensor<[1,12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[12,256,64],f32>
    %219 = torch.aten.slice.Tensor %arg1, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %220 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %221 = torch.aten.view %219, %220 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %222 = torch.aten.transpose.int %221, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %223 = torch.aten.bmm %218, %222 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %224 = torch.aten.mul.Scalar %223, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %225 = torch.aten.slice.Tensor %arg3, %int2, %int512, %int768, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %226 = torch.aten.slice.Tensor %225, %int3, %int0, %int512, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %227 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %228 = torch.aten.view %226, %227 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %229 = torch.aten.add.Tensor %224, %228, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %230 = torch_c.to_builtin_tensor %229 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %231 = tensor.empty() : tensor<12x256x1xf32>
    %232 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%231 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %230[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %230[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %233 = torch_c.from_builtin_tensor %232 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %234 = torch.aten.sub.Tensor %229, %233, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %235 = torch_c.to_builtin_tensor %234 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %236 = tensor.empty() : tensor<12x256x512xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%235 : tensor<12x256x512xf32>) outs(%236 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %238 = torch_c.from_builtin_tensor %237 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %239 = torch_c.to_builtin_tensor %238 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %240 = tensor.empty() : tensor<12x256x16xf32>
    %241 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%240 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %239[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %242 = torch_c.from_builtin_tensor %241 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %243 = torch.aten.slice.Tensor %242, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %244 = torch.aten.slice.Tensor %242, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %245 = torch.aten.add.Tensor %243, %244, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %246 = torch.aten.slice.Tensor %245, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %247 = torch.aten.slice.Tensor %245, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %248 = torch.aten.add.Tensor %246, %247, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %249 = torch.aten.slice.Tensor %248, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %250 = torch.aten.slice.Tensor %248, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %251 = torch.aten.add.Tensor %249, %250, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %252 = torch.aten.slice.Tensor %251, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %253 = torch.aten.slice.Tensor %251, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %254 = torch.aten.add.Tensor %252, %253, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %255 = torch.aten.slice.Tensor %arg2, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %256 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %257 = torch.aten.view %255, %256 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %258 = torch_c.to_builtin_tensor %238 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %259 = torch_c.to_builtin_tensor %257 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %260 = tensor.empty() : tensor<12x256x64xf32>
    %261 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%260 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %258[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %259[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %437, %cst_7 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %258[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %259[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %258[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %259[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %262 = torch_c.from_builtin_tensor %261 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %263 = torch.aten.slice.Tensor %arg1, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %264 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %265 = torch.aten.view %263, %264 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %266 = torch.aten.transpose.int %265, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %267 = torch.aten.bmm %218, %266 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %268 = torch.aten.mul.Scalar %267, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %269 = torch.aten.slice.Tensor %arg3, %int2, %int512, %int768, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %270 = torch.aten.slice.Tensor %269, %int3, %int512, %int1024, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %271 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %272 = torch.aten.view %270, %271 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %273 = torch.aten.add.Tensor %268, %272, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %274 = torch_c.to_builtin_tensor %273 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %275 = tensor.empty() : tensor<12x256x1xf32>
    %276 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%275 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %274[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %274[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %277 = torch_c.from_builtin_tensor %276 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %278 = torch.aten.maximum %277, %233 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %279 = torch.aten.sub.Tensor %273, %278, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %280 = torch_c.to_builtin_tensor %279 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %281 = tensor.empty() : tensor<12x256x512xf32>
    %282 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280 : tensor<12x256x512xf32>) outs(%281 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %283 = torch_c.from_builtin_tensor %282 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %284 = torch_c.to_builtin_tensor %283 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %285 = tensor.empty() : tensor<12x256x16xf32>
    %286 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%285 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %284[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %287 = torch_c.from_builtin_tensor %286 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %288 = torch.aten.slice.Tensor %287, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %289 = torch.aten.slice.Tensor %287, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %290 = torch.aten.add.Tensor %288, %289, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %291 = torch.aten.slice.Tensor %290, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %292 = torch.aten.slice.Tensor %290, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %293 = torch.aten.add.Tensor %291, %292, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %294 = torch.aten.slice.Tensor %293, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %295 = torch.aten.slice.Tensor %293, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %296 = torch.aten.add.Tensor %294, %295, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %297 = torch.aten.slice.Tensor %296, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %298 = torch.aten.slice.Tensor %296, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %299 = torch.aten.add.Tensor %297, %298, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %300 = torch.aten.slice.Tensor %arg2, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %301 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %302 = torch.aten.view %300, %301 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %303 = torch.aten.sub.Tensor %233, %278, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %304 = torch_c.to_builtin_tensor %303 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %305 = tensor.empty() : tensor<12x256x1xf32>
    %306 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%304 : tensor<12x256x1xf32>) outs(%305 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.extf %in : f32 to f64
      %435 = arith.mulf %434, %cst_5 : f64
      %436 = arith.addf %435, %cst_4 : f64
      %437 = arith.bitcast %436 : f64 to i64
      %438 = arith.subf %436, %cst_4 : f64
      %439 = arith.subf %435, %438 : f64
      %440 = arith.andi %437, %c31_i64 : i64
      %441 = arith.index_cast %440 : i64 to index
      %extracted = tensor.extract %cst_3[%441] : tensor<32xi64>
      %442 = arith.shli %437, %c47_i64 : i64
      %443 = arith.addi %extracted, %442 : i64
      %444 = arith.bitcast %443 : i64 to f64
      %445 = math.fma %cst_2, %439, %cst_1 : f64
      %446 = arith.mulf %439, %439 : f64
      %447 = math.fma %cst_0, %439, %cst : f64
      %448 = math.fma %445, %446, %447 : f64
      %449 = arith.mulf %448, %444 : f64
      %450 = arith.truncf %449 : f64 to f32
      linalg.yield %450 : f32
    } -> tensor<12x256x1xf32>
    %307 = torch_c.from_builtin_tensor %306 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %308 = torch_c.to_builtin_tensor %307 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %309 = torch_c.to_builtin_tensor %254 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %310 = torch_c.to_builtin_tensor %299 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %311 = tensor.empty() : tensor<12x256x1xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%308, %309, %310 : tensor<12x256x1xf32>, tensor<12x256x1xf32>, tensor<12x256x1xf32>) outs(%311 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %in_19: f32, %in_20: f32, %out: f32):
      %434 = math.fma %in, %in_19, %in_20 : f32
      linalg.yield %434 : f32
    } -> tensor<12x256x1xf32>
    %313 = torch_c.from_builtin_tensor %312 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %314 = torch.aten.mul.Tensor %262, %307 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %315 = torch_c.to_builtin_tensor %283 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %316 = torch_c.to_builtin_tensor %302 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %317 = torch_c.to_builtin_tensor %314 : !torch.vtensor<[12,256,64],f32> -> tensor<12x256x64xf32>
    %318 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%317 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %315[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %316[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %out, %437 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %315[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %316[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %315[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %316[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %319 = torch_c.from_builtin_tensor %318 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %320 = torch.aten.reciprocal %313 : !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %321 = torch.aten.mul.Tensor %319, %320 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %322 = torch.prim.ListConstruct %int1, %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %323 = torch.aten.view %321, %322 : !torch.vtensor<[12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[1,12,256,64],f32>
    %324 = torch.aten.slice.Tensor %arg0, %int2, %int768, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,256,64],f32>
    %325 = torch.prim.ListConstruct %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %326 = torch.aten.view %324, %325 : !torch.vtensor<[1,12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[12,256,64],f32>
    %327 = torch.aten.slice.Tensor %arg1, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %328 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %329 = torch.aten.view %327, %328 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %330 = torch.aten.transpose.int %329, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %331 = torch.aten.bmm %326, %330 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %332 = torch.aten.mul.Scalar %331, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %333 = torch.aten.slice.Tensor %arg3, %int2, %int768, %int1024, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %334 = torch.aten.slice.Tensor %333, %int3, %int0, %int512, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %335 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %336 = torch.aten.view %334, %335 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %337 = torch.aten.add.Tensor %332, %336, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %338 = torch_c.to_builtin_tensor %337 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %339 = tensor.empty() : tensor<12x256x1xf32>
    %340 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%339 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %338[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %338[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %341 = torch_c.from_builtin_tensor %340 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %342 = torch.aten.sub.Tensor %337, %341, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %343 = torch_c.to_builtin_tensor %342 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %344 = tensor.empty() : tensor<12x256x512xf32>
    %345 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%343 : tensor<12x256x512xf32>) outs(%344 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %346 = torch_c.from_builtin_tensor %345 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %347 = torch_c.to_builtin_tensor %346 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %348 = tensor.empty() : tensor<12x256x16xf32>
    %349 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%348 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %347[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %350 = torch_c.from_builtin_tensor %349 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %351 = torch.aten.slice.Tensor %350, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %352 = torch.aten.slice.Tensor %350, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %353 = torch.aten.add.Tensor %351, %352, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %354 = torch.aten.slice.Tensor %353, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %355 = torch.aten.slice.Tensor %353, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %356 = torch.aten.add.Tensor %354, %355, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %357 = torch.aten.slice.Tensor %356, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %358 = torch.aten.slice.Tensor %356, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %359 = torch.aten.add.Tensor %357, %358, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %360 = torch.aten.slice.Tensor %359, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %361 = torch.aten.slice.Tensor %359, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %362 = torch.aten.add.Tensor %360, %361, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %363 = torch.aten.slice.Tensor %arg2, %int2, %int0, %int512, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %364 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %365 = torch.aten.view %363, %364 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %366 = torch_c.to_builtin_tensor %346 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %367 = torch_c.to_builtin_tensor %365 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %368 = tensor.empty() : tensor<12x256x64xf32>
    %369 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%368 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %366[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %367[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %437, %cst_7 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %366[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %367[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %366[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %367[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %370 = torch_c.from_builtin_tensor %369 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %371 = torch.aten.slice.Tensor %arg1, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %372 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %373 = torch.aten.view %371, %372 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %374 = torch.aten.transpose.int %373, %int1, %int2 : !torch.vtensor<[12,512,64],f32>, !torch.int, !torch.int -> !torch.vtensor<[12,64,512],f32>
    %375 = torch.aten.bmm %326, %374 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,64,512],f32> -> !torch.vtensor<[12,256,512],f32>
    %376 = torch.aten.mul.Scalar %375, %float1.250000e-01 : !torch.vtensor<[12,256,512],f32>, !torch.float -> !torch.vtensor<[12,256,512],f32>
    %377 = torch.aten.slice.Tensor %arg3, %int2, %int768, %int1024, %int1 : !torch.vtensor<[1,1,1024,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,1024],f32>
    %378 = torch.aten.slice.Tensor %377, %int3, %int512, %int1024, %int1 : !torch.vtensor<[1,1,256,1024],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,1,256,512],f32>
    %379 = torch.prim.ListConstruct %int1, %int256, %int512 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %380 = torch.aten.view %378, %379 : !torch.vtensor<[1,1,256,512],f32>, !torch.list<int> -> !torch.vtensor<[1,256,512],f32>
    %381 = torch.aten.add.Tensor %376, %380, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[1,256,512],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %382 = torch_c.to_builtin_tensor %381 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %383 = tensor.empty() : tensor<12x256x1xf32>
    %384 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%383 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %extracted = tensor.extract %382[%434, %435, %c0] : tensor<12x256x512xf32>
      %436 = scf.for %arg4 = %c1 to %c512 step %c1 iter_args(%arg5 = %extracted) -> (f32) {
        %extracted_19 = tensor.extract %382[%434, %435, %arg4] : tensor<12x256x512xf32>
        %437 = arith.maximumf %extracted_19, %arg5 : f32
        scf.yield %437 : f32
      }
      linalg.yield %436 : f32
    } -> tensor<12x256x1xf32>
    %385 = torch_c.from_builtin_tensor %384 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %386 = torch.aten.maximum %385, %341 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %387 = torch.aten.sub.Tensor %381, %386, %int1 : !torch.vtensor<[12,256,512],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,512],f32>
    %388 = torch_c.to_builtin_tensor %387 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %389 = tensor.empty() : tensor<12x256x512xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%388 : tensor<12x256x512xf32>) outs(%389 : tensor<12x256x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.minimumf %in, %cst_17 : f32
      %435 = arith.maximumf %434, %cst_18 : f32
      %436 = math.fma %435, %cst_16, %cst_15 : f32
      %437 = math.floor %436 : f32
      %438 = arith.negf %437 : f32
      %439 = math.fma %438, %cst_14, %435 : f32
      %440 = math.fma %439, %cst_13, %cst_12 : f32
      %441 = math.fma %439, %440, %cst_11 : f32
      %442 = math.fma %439, %441, %cst_10 : f32
      %443 = math.fma %439, %442, %cst_9 : f32
      %444 = math.fma %439, %443, %cst_8 : f32
      %445 = arith.subf %437, %cst_8 : f32
      %446 = arith.fptosi %445 : f32 to i32
      %447 = arith.addi %446, %c127_i32 : i32
      %448 = arith.shli %447, %c23_i32 : i32
      %449 = arith.bitcast %448 : i32 to f32
      %450 = arith.cmpf olt, %in, %cst_18 : f32
      %451 = arith.select %450, %cst_7, %449 : f32
      %452 = arith.mulf %444, %451 : f32
      %453 = arith.mulf %452, %cst_6 : f32
      linalg.yield %453 : f32
    } -> tensor<12x256x512xf32>
    %391 = torch_c.from_builtin_tensor %390 : tensor<12x256x512xf32> -> !torch.vtensor<[12,256,512],f32>
    %392 = torch_c.to_builtin_tensor %391 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %393 = tensor.empty() : tensor<12x256x16xf32>
    %394 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%393 : tensor<12x256x16xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c512 step %c16 iter_args(%arg5 = %cst_7) -> (f32) {
        %438 = arith.addi %arg4, %436 : index
        %extracted = tensor.extract %392[%434, %435, %438] : tensor<12x256x512xf32>
        %439 = arith.addf %arg5, %extracted : f32
        scf.yield %439 : f32
      }
      linalg.yield %437 : f32
    } -> tensor<12x256x16xf32>
    %395 = torch_c.from_builtin_tensor %394 : tensor<12x256x16xf32> -> !torch.vtensor<[12,256,16],f32>
    %396 = torch.aten.slice.Tensor %395, %int2, %int0, %int8, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %397 = torch.aten.slice.Tensor %395, %int2, %int8, %int16, %int1 : !torch.vtensor<[12,256,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %398 = torch.aten.add.Tensor %396, %397, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.vtensor<[12,256,8],f32>, !torch.int -> !torch.vtensor<[12,256,8],f32>
    %399 = torch.aten.slice.Tensor %398, %int2, %int0, %int4, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %400 = torch.aten.slice.Tensor %398, %int2, %int4, %int8, %int1 : !torch.vtensor<[12,256,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %401 = torch.aten.add.Tensor %399, %400, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.vtensor<[12,256,4],f32>, !torch.int -> !torch.vtensor<[12,256,4],f32>
    %402 = torch.aten.slice.Tensor %401, %int2, %int0, %int2, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %403 = torch.aten.slice.Tensor %401, %int2, %int2, %int4, %int1 : !torch.vtensor<[12,256,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %404 = torch.aten.add.Tensor %402, %403, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.vtensor<[12,256,2],f32>, !torch.int -> !torch.vtensor<[12,256,2],f32>
    %405 = torch.aten.slice.Tensor %404, %int2, %int0, %int1, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %406 = torch.aten.slice.Tensor %404, %int2, %int1, %int2, %int1 : !torch.vtensor<[12,256,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %407 = torch.aten.add.Tensor %405, %406, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %408 = torch.aten.slice.Tensor %arg2, %int2, %int512, %int1024, %int1 : !torch.vtensor<[1,12,1024,64],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,12,512,64],f32>
    %409 = torch.prim.ListConstruct %int12, %int512, %int64 : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %410 = torch.aten.view %408, %409 : !torch.vtensor<[1,12,512,64],f32>, !torch.list<int> -> !torch.vtensor<[12,512,64],f32>
    %411 = torch.aten.sub.Tensor %341, %386, %int1 : !torch.vtensor<[12,256,1],f32>, !torch.vtensor<[12,256,1],f32>, !torch.int -> !torch.vtensor<[12,256,1],f32>
    %412 = torch_c.to_builtin_tensor %411 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %413 = tensor.empty() : tensor<12x256x1xf32>
    %414 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%412 : tensor<12x256x1xf32>) outs(%413 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %434 = arith.extf %in : f32 to f64
      %435 = arith.mulf %434, %cst_5 : f64
      %436 = arith.addf %435, %cst_4 : f64
      %437 = arith.bitcast %436 : f64 to i64
      %438 = arith.subf %436, %cst_4 : f64
      %439 = arith.subf %435, %438 : f64
      %440 = arith.andi %437, %c31_i64 : i64
      %441 = arith.index_cast %440 : i64 to index
      %extracted = tensor.extract %cst_3[%441] : tensor<32xi64>
      %442 = arith.shli %437, %c47_i64 : i64
      %443 = arith.addi %extracted, %442 : i64
      %444 = arith.bitcast %443 : i64 to f64
      %445 = math.fma %cst_2, %439, %cst_1 : f64
      %446 = arith.mulf %439, %439 : f64
      %447 = math.fma %cst_0, %439, %cst : f64
      %448 = math.fma %445, %446, %447 : f64
      %449 = arith.mulf %448, %444 : f64
      %450 = arith.truncf %449 : f64 to f32
      linalg.yield %450 : f32
    } -> tensor<12x256x1xf32>
    %415 = torch_c.from_builtin_tensor %414 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %416 = torch_c.to_builtin_tensor %415 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %417 = torch_c.to_builtin_tensor %362 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %418 = torch_c.to_builtin_tensor %407 : !torch.vtensor<[12,256,1],f32> -> tensor<12x256x1xf32>
    %419 = tensor.empty() : tensor<12x256x1xf32>
    %420 = linalg.generic {indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%416, %417, %418 : tensor<12x256x1xf32>, tensor<12x256x1xf32>, tensor<12x256x1xf32>) outs(%419 : tensor<12x256x1xf32>) {
    ^bb0(%in: f32, %in_19: f32, %in_20: f32, %out: f32):
      %434 = math.fma %in, %in_19, %in_20 : f32
      linalg.yield %434 : f32
    } -> tensor<12x256x1xf32>
    %421 = torch_c.from_builtin_tensor %420 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    %422 = torch.aten.mul.Tensor %370, %415 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %423 = torch_c.to_builtin_tensor %391 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %424 = torch_c.to_builtin_tensor %410 : !torch.vtensor<[12,512,64],f32> -> tensor<12x512x64xf32>
    %425 = torch_c.to_builtin_tensor %422 : !torch.vtensor<[12,256,64],f32> -> tensor<12x256x64xf32>
    %426 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%425 : tensor<12x256x64xf32>) {
    ^bb0(%out: f32):
      %434 = linalg.index 0 : index
      %435 = linalg.index 1 : index
      %436 = linalg.index 2 : index
      %437 = scf.for %arg4 = %c0 to %c192 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %423[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %424[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %438 = arith.addf %out, %437 : f32
      %439 = scf.for %arg4 = %c192 to %c384 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %423[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %424[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %440 = arith.addf %438, %439 : f32
      %441 = scf.for %arg4 = %c384 to %c512 step %c1 iter_args(%arg5 = %cst_7) -> (f32) {
        %extracted = tensor.extract %423[%434, %435, %arg4] : tensor<12x256x512xf32>
        %extracted_19 = tensor.extract %424[%434, %arg4, %436] : tensor<12x512x64xf32>
        %443 = math.fma %extracted, %extracted_19, %arg5 : f32
        scf.yield %443 : f32
      }
      %442 = arith.addf %440, %441 : f32
      linalg.yield %442 : f32
    } -> tensor<12x256x64xf32>
    %427 = torch_c.from_builtin_tensor %426 : tensor<12x256x64xf32> -> !torch.vtensor<[12,256,64],f32>
    %428 = torch.aten.reciprocal %421 : !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,1],f32>
    %429 = torch.aten.mul.Tensor %427, %428 : !torch.vtensor<[12,256,64],f32>, !torch.vtensor<[12,256,1],f32> -> !torch.vtensor<[12,256,64],f32>
    %430 = torch.prim.ListConstruct %int1, %int12, %int256, %int64 : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %431 = torch.aten.view %429, %430 : !torch.vtensor<[12,256,64],f32>, !torch.list<int> -> !torch.vtensor<[1,12,256,64],f32>
    %432 = torch.prim.ListConstruct %107, %215, %323, %431 : (!torch.vtensor<[1,12,256,64],f32>, !torch.vtensor<[1,12,256,64],f32>, !torch.vtensor<[1,12,256,64],f32>, !torch.vtensor<[1,12,256,64],f32>) -> !torch.list<vtensor>
    %433 = torch.aten.cat %432, %int2 : !torch.list<vtensor>, !torch.int -> !torch.vtensor<[1,12,1024,64],f32>
    return %433 : !torch.vtensor<[1,12,1024,64],f32>
  }
  func.func @recipe3(%arg0: !torch.vtensor<[1,1024,3072],f32>) -> !torch.vtensor<[1,1024,3072],f32> {
    %cst = arith.constant 8.664340e+00 : f32
    %c23_i32 = arith.constant 23 : i32
    %c127_i32 = arith.constant 127 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 5.000000e-01 : f32
    %cst_2 = arith.constant 0.166666657 : f32
    %cst_3 = arith.constant 0.0416663736 : f32
    %cst_4 = arith.constant 0.0083334567 : f32
    %cst_5 = arith.constant 0.00139425648 : f32
    %cst_6 = arith.constant 1.98096022E-4 : f32
    %cst_7 = arith.constant -1.42860677E-6 : f32
    %cst_8 = arith.constant -0.693145751 : f32
    %cst_9 = arith.constant 0.000000e+00 : f32
    %cst_10 = arith.constant 1.44269502 : f32
    %cst_11 = arith.constant 0.797884583 : f32
    %cst_12 = arith.constant 4.471500e-02 : f32
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,1024,3072],f32> -> tensor<1x1024x3072xf32>
    %1 = tensor.empty() : tensor<1x1024x3072xf32>
    %2 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<1x1024x3072xf32>) outs(%1 : tensor<1x1024x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %4 = arith.mulf %in, %in : f32
      %5 = arith.mulf %4, %in : f32
      %6 = math.fma %cst_12, %5, %in : f32
      %7 = arith.mulf %6, %cst_11 : f32
      %8 = math.absf %7 : f32
      %9 = arith.mulf %8, %cst_10 : f32
      %10 = math.roundeven %9 : f32
      %11 = arith.fptosi %10 : f32 to i32
      %12 = arith.mulf %10, %cst_8 : f32
      %13 = arith.addf %8, %12 : f32
      %14 = arith.subf %13, %8 : f32
      %15 = arith.subf %13, %14 : f32
      %16 = arith.subf %8, %15 : f32
      %17 = arith.subf %12, %14 : f32
      %18 = arith.addf %16, %17 : f32
      %19 = arith.addf %18, %cst_9 : f32
      %20 = arith.mulf %10, %cst_7 : f32
      %21 = arith.addf %13, %20 : f32
      %22 = arith.subf %21, %13 : f32
      %23 = arith.subf %21, %22 : f32
      %24 = arith.subf %13, %23 : f32
      %25 = arith.subf %20, %22 : f32
      %26 = arith.addf %24, %25 : f32
      %27 = arith.addf %26, %19 : f32
      %28 = math.fma %cst_6, %21, %cst_5 : f32
      %29 = math.fma %28, %21, %cst_4 : f32
      %30 = math.fma %29, %21, %cst_3 : f32
      %31 = arith.mulf %21, %30 : f32
      %32 = arith.negf %31 : f32
      %33 = math.fma %21, %30, %32 : f32
      %34 = math.fma %27, %30, %33 : f32
      %35 = arith.addf %31, %cst_2 : f32
      %36 = arith.subf %35, %31 : f32
      %37 = arith.subf %35, %36 : f32
      %38 = arith.subf %31, %37 : f32
      %39 = arith.subf %cst_2, %36 : f32
      %40 = arith.addf %38, %39 : f32
      %41 = arith.addf %40, %34 : f32
      %42 = arith.mulf %21, %35 : f32
      %43 = arith.negf %42 : f32
      %44 = math.fma %21, %35, %43 : f32
      %45 = math.fma %27, %35, %44 : f32
      %46 = math.fma %21, %41, %45 : f32
      %47 = arith.addf %42, %cst_1 : f32
      %48 = arith.subf %47, %42 : f32
      %49 = arith.subf %47, %48 : f32
      %50 = arith.subf %42, %49 : f32
      %51 = arith.subf %cst_1, %48 : f32
      %52 = arith.addf %50, %51 : f32
      %53 = arith.addf %52, %46 : f32
      %54 = arith.mulf %21, %21 : f32
      %55 = arith.addf %21, %21 : f32
      %56 = arith.negf %54 : f32
      %57 = math.fma %21, %21, %56 : f32
      %58 = math.fma %55, %27, %57 : f32
      %59 = arith.mulf %54, %47 : f32
      %60 = arith.negf %59 : f32
      %61 = math.fma %54, %47, %60 : f32
      %62 = math.fma %58, %47, %61 : f32
      %63 = math.fma %54, %53, %62 : f32
      %64 = arith.addf %21, %59 : f32
      %65 = arith.subf %64, %21 : f32
      %66 = arith.subf %64, %65 : f32
      %67 = arith.subf %21, %66 : f32
      %68 = arith.subf %59, %65 : f32
      %69 = arith.addf %67, %68 : f32
      %70 = arith.addf %27, %63 : f32
      %71 = arith.addf %69, %70 : f32
      %72 = arith.addf %64, %cst_0 : f32
      %73 = arith.subf %cst_0, %72 : f32
      %74 = arith.addf %73, %64 : f32
      %75 = arith.addf %74, %71 : f32
      %76 = arith.shrsi %11, %c1_i32 : i32
      %77 = arith.subi %11, %76 : i32
      %78 = arith.addi %76, %c127_i32 : i32
      %79 = arith.shli %78, %c23_i32 : i32
      %80 = arith.bitcast %79 : i32 to f32
      %81 = arith.addi %77, %c127_i32 : i32
      %82 = arith.shli %81, %c23_i32 : i32
      %83 = arith.bitcast %82 : i32 to f32
      %84 = arith.mulf %72, %80 : f32
      %85 = arith.mulf %84, %83 : f32
      %86 = arith.mulf %75, %80 : f32
      %87 = arith.mulf %86, %83 : f32
      %88 = arith.divf %cst_0, %85 : f32
      %89 = arith.negf %87 : f32
      %90 = arith.negf %85 : f32
      %91 = math.fma %90, %88, %cst_0 : f32
      %92 = math.fma %89, %88, %91 : f32
      %93 = arith.mulf %88, %92 : f32
      %94 = arith.negf %88 : f32
      %95 = arith.negf %93 : f32
      %96 = arith.addf %85, %94 : f32
      %97 = arith.subf %85, %96 : f32
      %98 = arith.addf %97, %94 : f32
      %99 = arith.addf %98, %87 : f32
      %100 = arith.addf %99, %95 : f32
      %101 = arith.addf %85, %88 : f32
      %102 = arith.subf %85, %101 : f32
      %103 = arith.addf %102, %88 : f32
      %104 = arith.addf %103, %87 : f32
      %105 = arith.addf %104, %93 : f32
      %106 = arith.divf %cst_0, %101 : f32
      %107 = arith.mulf %96, %106 : f32
      %108 = arith.negf %107 : f32
      %109 = math.fma %106, %96, %108 : f32
      %110 = arith.negf %105 : f32
      %111 = arith.negf %101 : f32
      %112 = math.fma %111, %106, %cst_0 : f32
      %113 = math.fma %110, %106, %112 : f32
      %114 = math.fma %100, %106, %109 : f32
      %115 = math.fma %107, %113, %114 : f32
      %116 = arith.addf %107, %115 : f32
      %117 = arith.cmpf ogt, %8, %cst : f32
      %118 = arith.cmpf uno, %116, %116 : f32
      %119 = arith.ori %117, %118 : i1
      %120 = arith.select %119, %cst_0, %116 : f32
      %121 = math.copysign %120, %7 : f32
      %122 = arith.addf %121, %cst_0 : f32
      %123 = arith.mulf %in, %cst_1 : f32
      %124 = arith.mulf %123, %122 : f32
      linalg.yield %124 : f32
    } -> tensor<1x1024x3072xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x1024x3072xf32> -> !torch.vtensor<[1,1024,3072],f32>
    return %3 : !torch.vtensor<[1,1024,3072],f32>
  }
  func.func @recipe4(%arg0: !torch.vtensor<[1,15,291,291],f32>) -> !torch.vtensor<[1,15,291,291],f32> {
    %int2 = torch.constant.int 2
    %int4 = torch.constant.int 4
    %int8 = torch.constant.int 8
    %int13 = torch.constant.int 13
    %int291 = torch.constant.int 291
    %int288 = torch.constant.int 288
    %int272 = torch.constant.int 272
    %int256 = torch.constant.int 256
    %int240 = torch.constant.int 240
    %int224 = torch.constant.int 224
    %int208 = torch.constant.int 208
    %int192 = torch.constant.int 192
    %int176 = torch.constant.int 176
    %int160 = torch.constant.int 160
    %int144 = torch.constant.int 144
    %int128 = torch.constant.int 128
    %int112 = torch.constant.int 112
    %int96 = torch.constant.int 96
    %int80 = torch.constant.int 80
    %int64 = torch.constant.int 64
    %int48 = torch.constant.int 48
    %int32 = torch.constant.int 32
    %int16 = torch.constant.int 16
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
    %c291 = arith.constant 291 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %int3 = torch.constant.int 3
    %int1 = torch.constant.int 1
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,291,291],f32> -> tensor<1x15x291x291xf32>
    %1 = tensor.empty() : tensor<1x15x291x1xf32>
    %2 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1 : tensor<1x15x291x1xf32>) {
    ^bb0(%out: f32):
      %62 = linalg.index 1 : index
      %63 = linalg.index 2 : index
      %extracted = tensor.extract %0[%c0, %62, %63, %c0] : tensor<1x15x291x291xf32>
      %64 = scf.for %arg1 = %c1 to %c291 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_13 = tensor.extract %0[%c0, %62, %63, %arg1] : tensor<1x15x291x291xf32>
        %65 = arith.maximumf %extracted_13, %arg2 : f32
        scf.yield %65 : f32
      }
      linalg.yield %64 : f32
    } -> tensor<1x15x291x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x15x291x1xf32> -> !torch.vtensor<[1,15,291,1],f32>
    %4 = torch.aten.sub.Tensor %arg0, %3, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.vtensor<[1,15,291,1],f32>, !torch.int -> !torch.vtensor<[1,15,291,291],f32>
    %5 = torch_c.to_builtin_tensor %4 : !torch.vtensor<[1,15,291,291],f32> -> tensor<1x15x291x291xf32>
    %6 = tensor.empty() : tensor<1x15x291x291xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x15x291x291xf32>) outs(%6 : tensor<1x15x291x291xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf uno, %in, %in : f32
      %63 = arith.select %62, %cst_10, %in : f32
      %64 = arith.cmpf olt, %63, %cst_12 : f32
      %65 = arith.select %64, %cst_12, %63 : f32
      %66 = arith.cmpf ogt, %65, %cst_11 : f32
      %67 = arith.select %66, %cst_11, %65 : f32
      %68 = arith.mulf %67, %cst_9 : f32
      %69 = math.roundeven %68 : f32
      %70 = arith.fptosi %69 : f32 to i32
      %71 = math.fma %69, %cst_8, %67 : f32
      %72 = math.fma %69, %cst_7, %71 : f32
      %73 = math.fma %cst_6, %72, %cst_5 : f32
      %74 = math.fma %73, %72, %cst_4 : f32
      %75 = math.fma %74, %72, %cst_3 : f32
      %76 = math.fma %75, %72, %cst_2 : f32
      %77 = math.fma %76, %72, %cst_1 : f32
      %78 = arith.mulf %72, %72 : f32
      %79 = math.fma %78, %77, %72 : f32
      %80 = arith.addf %79, %cst_0 : f32
      %81 = arith.shrsi %70, %c1_i32 : i32
      %82 = arith.subi %70, %81 : i32
      %83 = arith.addi %81, %c127_i32 : i32
      %84 = arith.shli %83, %c23_i32 : i32
      %85 = arith.bitcast %84 : i32 to f32
      %86 = arith.mulf %80, %85 : f32
      %87 = arith.addi %82, %c127_i32 : i32
      %88 = arith.shli %87, %c23_i32 : i32
      %89 = arith.bitcast %88 : i32 to f32
      %90 = arith.mulf %86, %89 : f32
      %91 = arith.cmpf olt, %67, %cst_12 : f32
      %92 = arith.select %91, %cst_10, %90 : f32
      %93 = arith.cmpf ogt, %67, %cst_11 : f32
      %94 = arith.select %93, %cst, %92 : f32
      %95 = arith.select %62, %in, %94 : f32
      linalg.yield %95 : f32
    } -> tensor<1x15x291x291xf32>
    %8 = torch_c.from_builtin_tensor %7 : tensor<1x15x291x291xf32> -> !torch.vtensor<[1,15,291,291],f32>
    %9 = torch.aten.slice.Tensor %8, %int3, %int0, %int16, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %10 = torch.aten.slice.Tensor %8, %int3, %int16, %int32, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %11 = torch.aten.add.Tensor %9, %10, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %12 = torch.aten.slice.Tensor %8, %int3, %int32, %int48, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %13 = torch.aten.add.Tensor %11, %12, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %14 = torch.aten.slice.Tensor %8, %int3, %int48, %int64, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %15 = torch.aten.add.Tensor %13, %14, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %16 = torch.aten.slice.Tensor %8, %int3, %int64, %int80, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %17 = torch.aten.add.Tensor %15, %16, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %18 = torch.aten.slice.Tensor %8, %int3, %int80, %int96, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %19 = torch.aten.add.Tensor %17, %18, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %20 = torch.aten.slice.Tensor %8, %int3, %int96, %int112, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %21 = torch.aten.add.Tensor %19, %20, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %22 = torch.aten.slice.Tensor %8, %int3, %int112, %int128, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %23 = torch.aten.add.Tensor %21, %22, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %24 = torch.aten.slice.Tensor %8, %int3, %int128, %int144, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %25 = torch.aten.add.Tensor %23, %24, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %26 = torch.aten.slice.Tensor %8, %int3, %int144, %int160, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %27 = torch.aten.add.Tensor %25, %26, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %28 = torch.aten.slice.Tensor %8, %int3, %int160, %int176, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %29 = torch.aten.add.Tensor %27, %28, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %30 = torch.aten.slice.Tensor %8, %int3, %int176, %int192, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %31 = torch.aten.add.Tensor %29, %30, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %32 = torch.aten.slice.Tensor %8, %int3, %int192, %int208, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %33 = torch.aten.add.Tensor %31, %32, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %34 = torch.aten.slice.Tensor %8, %int3, %int208, %int224, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %35 = torch.aten.add.Tensor %33, %34, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %36 = torch.aten.slice.Tensor %8, %int3, %int224, %int240, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %37 = torch.aten.add.Tensor %35, %36, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %38 = torch.aten.slice.Tensor %8, %int3, %int240, %int256, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %39 = torch.aten.add.Tensor %37, %38, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %40 = torch.aten.slice.Tensor %8, %int3, %int256, %int272, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %41 = torch.aten.add.Tensor %39, %40, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %42 = torch.aten.slice.Tensor %8, %int3, %int272, %int288, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %43 = torch.aten.add.Tensor %41, %42, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %44 = torch.aten.slice.Tensor %8, %int3, %int288, %int291, %int1 : !torch.vtensor<[1,15,291,291],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,3],f32>
    %45 = torch.prim.ListConstruct %int0, %int13 : (!torch.int, !torch.int) -> !torch.list<int>
    %46 = torch.aten.constant_pad_nd %44, %45, %int0 : !torch.vtensor<[1,15,291,3],f32>, !torch.list<int>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %47 = torch.aten.add.Tensor %43, %46, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.vtensor<[1,15,291,16],f32>, !torch.int -> !torch.vtensor<[1,15,291,16],f32>
    %48 = torch.aten.slice.Tensor %47, %int3, %int0, %int8, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,8],f32>
    %49 = torch.aten.slice.Tensor %47, %int3, %int8, %int16, %int1 : !torch.vtensor<[1,15,291,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,8],f32>
    %50 = torch.aten.add.Tensor %48, %49, %int1 : !torch.vtensor<[1,15,291,8],f32>, !torch.vtensor<[1,15,291,8],f32>, !torch.int -> !torch.vtensor<[1,15,291,8],f32>
    %51 = torch.aten.slice.Tensor %50, %int3, %int0, %int4, %int1 : !torch.vtensor<[1,15,291,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,4],f32>
    %52 = torch.aten.slice.Tensor %50, %int3, %int4, %int8, %int1 : !torch.vtensor<[1,15,291,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,4],f32>
    %53 = torch.aten.add.Tensor %51, %52, %int1 : !torch.vtensor<[1,15,291,4],f32>, !torch.vtensor<[1,15,291,4],f32>, !torch.int -> !torch.vtensor<[1,15,291,4],f32>
    %54 = torch.aten.slice.Tensor %53, %int3, %int0, %int2, %int1 : !torch.vtensor<[1,15,291,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,2],f32>
    %55 = torch.aten.slice.Tensor %53, %int3, %int2, %int4, %int1 : !torch.vtensor<[1,15,291,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,2],f32>
    %56 = torch.aten.add.Tensor %54, %55, %int1 : !torch.vtensor<[1,15,291,2],f32>, !torch.vtensor<[1,15,291,2],f32>, !torch.int -> !torch.vtensor<[1,15,291,2],f32>
    %57 = torch.aten.slice.Tensor %56, %int3, %int0, %int1, %int1 : !torch.vtensor<[1,15,291,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,1],f32>
    %58 = torch.aten.slice.Tensor %56, %int3, %int1, %int2, %int1 : !torch.vtensor<[1,15,291,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,291,1],f32>
    %59 = torch.aten.add.Tensor %57, %58, %int1 : !torch.vtensor<[1,15,291,1],f32>, !torch.vtensor<[1,15,291,1],f32>, !torch.int -> !torch.vtensor<[1,15,291,1],f32>
    %60 = torch.aten.reciprocal %59 : !torch.vtensor<[1,15,291,1],f32> -> !torch.vtensor<[1,15,291,1],f32>
    %61 = torch.aten.mul.Tensor %8, %60 : !torch.vtensor<[1,15,291,291],f32>, !torch.vtensor<[1,15,291,1],f32> -> !torch.vtensor<[1,15,291,291],f32>
    return %61 : !torch.vtensor<[1,15,291,291],f32>
  }
  func.func @recipe5(%arg0: !torch.vtensor<[1,15,291,291],f32>, %arg1: !torch.vtensor<[1,15,291,64],f32>) -> !torch.vtensor<[1,15,291,64],f32> {
    %c291 = arith.constant 291 : index
    %c290 = arith.constant 290 : index
    %c145 = arith.constant 145 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,291,291],f32> -> tensor<1x15x291x291xf32>
    %1 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[1,15,291,64],f32> -> tensor<1x15x291x64xf32>
    %2 = tensor.empty() : tensor<1x15x291x64xf32>
    %3 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%2 : tensor<1x15x291x64xf32>) {
    ^bb0(%out: f32):
      %5 = linalg.index 1 : index
      %6 = linalg.index 2 : index
      %7 = linalg.index 3 : index
      %8 = scf.for %arg2 = %c0 to %c145 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x291x291xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x291x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %9 = scf.for %arg2 = %c145 to %c290 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x291x291xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x291x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %10 = arith.addf %8, %9 : f32
      %11 = scf.for %arg2 = %c290 to %c291 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x291x291xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x291x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %12 = arith.addf %10, %11 : f32
      linalg.yield %12 : f32
    } -> tensor<1x15x291x64xf32>
    %4 = torch_c.from_builtin_tensor %3 : tensor<1x15x291x64xf32> -> !torch.vtensor<[1,15,291,64],f32>
    return %4 : !torch.vtensor<[1,15,291,64],f32>
  }
  func.func @recipe6(%arg0: !torch.vtensor<[1,15,241,241],f32>) -> !torch.vtensor<[1,15,241,241],f32> {
    %int2 = torch.constant.int 2
    %int4 = torch.constant.int 4
    %int8 = torch.constant.int 8
    %int15 = torch.constant.int 15
    %int241 = torch.constant.int 241
    %int240 = torch.constant.int 240
    %int224 = torch.constant.int 224
    %int208 = torch.constant.int 208
    %int192 = torch.constant.int 192
    %int176 = torch.constant.int 176
    %int160 = torch.constant.int 160
    %int144 = torch.constant.int 144
    %int128 = torch.constant.int 128
    %int112 = torch.constant.int 112
    %int96 = torch.constant.int 96
    %int80 = torch.constant.int 80
    %int64 = torch.constant.int 64
    %int48 = torch.constant.int 48
    %int32 = torch.constant.int 32
    %int16 = torch.constant.int 16
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
    %c241 = arith.constant 241 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %int3 = torch.constant.int 3
    %int1 = torch.constant.int 1
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,241,241],f32> -> tensor<1x15x241x241xf32>
    %1 = tensor.empty() : tensor<1x15x241x1xf32>
    %2 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1 : tensor<1x15x241x1xf32>) {
    ^bb0(%out: f32):
      %56 = linalg.index 1 : index
      %57 = linalg.index 2 : index
      %extracted = tensor.extract %0[%c0, %56, %57, %c0] : tensor<1x15x241x241xf32>
      %58 = scf.for %arg1 = %c1 to %c241 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_13 = tensor.extract %0[%c0, %56, %57, %arg1] : tensor<1x15x241x241xf32>
        %59 = arith.maximumf %extracted_13, %arg2 : f32
        scf.yield %59 : f32
      }
      linalg.yield %58 : f32
    } -> tensor<1x15x241x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x15x241x1xf32> -> !torch.vtensor<[1,15,241,1],f32>
    %4 = torch.aten.sub.Tensor %arg0, %3, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.vtensor<[1,15,241,1],f32>, !torch.int -> !torch.vtensor<[1,15,241,241],f32>
    %5 = torch_c.to_builtin_tensor %4 : !torch.vtensor<[1,15,241,241],f32> -> tensor<1x15x241x241xf32>
    %6 = tensor.empty() : tensor<1x15x241x241xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x15x241x241xf32>) outs(%6 : tensor<1x15x241x241xf32>) {
    ^bb0(%in: f32, %out: f32):
      %56 = arith.cmpf uno, %in, %in : f32
      %57 = arith.select %56, %cst_10, %in : f32
      %58 = arith.cmpf olt, %57, %cst_12 : f32
      %59 = arith.select %58, %cst_12, %57 : f32
      %60 = arith.cmpf ogt, %59, %cst_11 : f32
      %61 = arith.select %60, %cst_11, %59 : f32
      %62 = arith.mulf %61, %cst_9 : f32
      %63 = math.roundeven %62 : f32
      %64 = arith.fptosi %63 : f32 to i32
      %65 = math.fma %63, %cst_8, %61 : f32
      %66 = math.fma %63, %cst_7, %65 : f32
      %67 = math.fma %cst_6, %66, %cst_5 : f32
      %68 = math.fma %67, %66, %cst_4 : f32
      %69 = math.fma %68, %66, %cst_3 : f32
      %70 = math.fma %69, %66, %cst_2 : f32
      %71 = math.fma %70, %66, %cst_1 : f32
      %72 = arith.mulf %66, %66 : f32
      %73 = math.fma %72, %71, %66 : f32
      %74 = arith.addf %73, %cst_0 : f32
      %75 = arith.shrsi %64, %c1_i32 : i32
      %76 = arith.subi %64, %75 : i32
      %77 = arith.addi %75, %c127_i32 : i32
      %78 = arith.shli %77, %c23_i32 : i32
      %79 = arith.bitcast %78 : i32 to f32
      %80 = arith.mulf %74, %79 : f32
      %81 = arith.addi %76, %c127_i32 : i32
      %82 = arith.shli %81, %c23_i32 : i32
      %83 = arith.bitcast %82 : i32 to f32
      %84 = arith.mulf %80, %83 : f32
      %85 = arith.cmpf olt, %61, %cst_12 : f32
      %86 = arith.select %85, %cst_10, %84 : f32
      %87 = arith.cmpf ogt, %61, %cst_11 : f32
      %88 = arith.select %87, %cst, %86 : f32
      %89 = arith.select %56, %in, %88 : f32
      linalg.yield %89 : f32
    } -> tensor<1x15x241x241xf32>
    %8 = torch_c.from_builtin_tensor %7 : tensor<1x15x241x241xf32> -> !torch.vtensor<[1,15,241,241],f32>
    %9 = torch.aten.slice.Tensor %8, %int3, %int0, %int16, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %10 = torch.aten.slice.Tensor %8, %int3, %int16, %int32, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %11 = torch.aten.add.Tensor %9, %10, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %12 = torch.aten.slice.Tensor %8, %int3, %int32, %int48, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %13 = torch.aten.add.Tensor %11, %12, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %14 = torch.aten.slice.Tensor %8, %int3, %int48, %int64, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %15 = torch.aten.add.Tensor %13, %14, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %16 = torch.aten.slice.Tensor %8, %int3, %int64, %int80, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %17 = torch.aten.add.Tensor %15, %16, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %18 = torch.aten.slice.Tensor %8, %int3, %int80, %int96, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %19 = torch.aten.add.Tensor %17, %18, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %20 = torch.aten.slice.Tensor %8, %int3, %int96, %int112, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %21 = torch.aten.add.Tensor %19, %20, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %22 = torch.aten.slice.Tensor %8, %int3, %int112, %int128, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %23 = torch.aten.add.Tensor %21, %22, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %24 = torch.aten.slice.Tensor %8, %int3, %int128, %int144, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %25 = torch.aten.add.Tensor %23, %24, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %26 = torch.aten.slice.Tensor %8, %int3, %int144, %int160, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %27 = torch.aten.add.Tensor %25, %26, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %28 = torch.aten.slice.Tensor %8, %int3, %int160, %int176, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %29 = torch.aten.add.Tensor %27, %28, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %30 = torch.aten.slice.Tensor %8, %int3, %int176, %int192, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %31 = torch.aten.add.Tensor %29, %30, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %32 = torch.aten.slice.Tensor %8, %int3, %int192, %int208, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %33 = torch.aten.add.Tensor %31, %32, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %34 = torch.aten.slice.Tensor %8, %int3, %int208, %int224, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %35 = torch.aten.add.Tensor %33, %34, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %36 = torch.aten.slice.Tensor %8, %int3, %int224, %int240, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %37 = torch.aten.add.Tensor %35, %36, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %38 = torch.aten.slice.Tensor %8, %int3, %int240, %int241, %int1 : !torch.vtensor<[1,15,241,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,1],f32>
    %39 = torch.prim.ListConstruct %int0, %int15 : (!torch.int, !torch.int) -> !torch.list<int>
    %40 = torch.aten.constant_pad_nd %38, %39, %int0 : !torch.vtensor<[1,15,241,1],f32>, !torch.list<int>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %41 = torch.aten.add.Tensor %37, %40, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.vtensor<[1,15,241,16],f32>, !torch.int -> !torch.vtensor<[1,15,241,16],f32>
    %42 = torch.aten.slice.Tensor %41, %int3, %int0, %int8, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,8],f32>
    %43 = torch.aten.slice.Tensor %41, %int3, %int8, %int16, %int1 : !torch.vtensor<[1,15,241,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,8],f32>
    %44 = torch.aten.add.Tensor %42, %43, %int1 : !torch.vtensor<[1,15,241,8],f32>, !torch.vtensor<[1,15,241,8],f32>, !torch.int -> !torch.vtensor<[1,15,241,8],f32>
    %45 = torch.aten.slice.Tensor %44, %int3, %int0, %int4, %int1 : !torch.vtensor<[1,15,241,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,4],f32>
    %46 = torch.aten.slice.Tensor %44, %int3, %int4, %int8, %int1 : !torch.vtensor<[1,15,241,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,4],f32>
    %47 = torch.aten.add.Tensor %45, %46, %int1 : !torch.vtensor<[1,15,241,4],f32>, !torch.vtensor<[1,15,241,4],f32>, !torch.int -> !torch.vtensor<[1,15,241,4],f32>
    %48 = torch.aten.slice.Tensor %47, %int3, %int0, %int2, %int1 : !torch.vtensor<[1,15,241,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,2],f32>
    %49 = torch.aten.slice.Tensor %47, %int3, %int2, %int4, %int1 : !torch.vtensor<[1,15,241,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,2],f32>
    %50 = torch.aten.add.Tensor %48, %49, %int1 : !torch.vtensor<[1,15,241,2],f32>, !torch.vtensor<[1,15,241,2],f32>, !torch.int -> !torch.vtensor<[1,15,241,2],f32>
    %51 = torch.aten.slice.Tensor %50, %int3, %int0, %int1, %int1 : !torch.vtensor<[1,15,241,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,1],f32>
    %52 = torch.aten.slice.Tensor %50, %int3, %int1, %int2, %int1 : !torch.vtensor<[1,15,241,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,241,1],f32>
    %53 = torch.aten.add.Tensor %51, %52, %int1 : !torch.vtensor<[1,15,241,1],f32>, !torch.vtensor<[1,15,241,1],f32>, !torch.int -> !torch.vtensor<[1,15,241,1],f32>
    %54 = torch.aten.reciprocal %53 : !torch.vtensor<[1,15,241,1],f32> -> !torch.vtensor<[1,15,241,1],f32>
    %55 = torch.aten.mul.Tensor %8, %54 : !torch.vtensor<[1,15,241,241],f32>, !torch.vtensor<[1,15,241,1],f32> -> !torch.vtensor<[1,15,241,241],f32>
    return %55 : !torch.vtensor<[1,15,241,241],f32>
  }
  func.func @recipe7(%arg0: !torch.vtensor<[1,15,241,241],f32>, %arg1: !torch.vtensor<[1,15,241,64],f32>) -> !torch.vtensor<[1,15,241,64],f32> {
    %c241 = arith.constant 241 : index
    %c240 = arith.constant 240 : index
    %c120 = arith.constant 120 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,241,241],f32> -> tensor<1x15x241x241xf32>
    %1 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[1,15,241,64],f32> -> tensor<1x15x241x64xf32>
    %2 = tensor.empty() : tensor<1x15x241x64xf32>
    %3 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%2 : tensor<1x15x241x64xf32>) {
    ^bb0(%out: f32):
      %5 = linalg.index 1 : index
      %6 = linalg.index 2 : index
      %7 = linalg.index 3 : index
      %8 = scf.for %arg2 = %c0 to %c120 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x241x241xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x241x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %9 = scf.for %arg2 = %c120 to %c240 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x241x241xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x241x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %10 = arith.addf %8, %9 : f32
      %11 = scf.for %arg2 = %c240 to %c241 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x241x241xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x241x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %12 = arith.addf %10, %11 : f32
      linalg.yield %12 : f32
    } -> tensor<1x15x241x64xf32>
    %4 = torch_c.from_builtin_tensor %3 : tensor<1x15x241x64xf32> -> !torch.vtensor<[1,15,241,64],f32>
    return %4 : !torch.vtensor<[1,15,241,64],f32>
  }
  func.func @recipe8(%arg0: !torch.vtensor<[1,15,50,241],f32>) -> !torch.vtensor<[1,15,50,241],f32> {
    %int2 = torch.constant.int 2
    %int4 = torch.constant.int 4
    %int8 = torch.constant.int 8
    %int15 = torch.constant.int 15
    %int241 = torch.constant.int 241
    %int240 = torch.constant.int 240
    %int224 = torch.constant.int 224
    %int208 = torch.constant.int 208
    %int192 = torch.constant.int 192
    %int176 = torch.constant.int 176
    %int160 = torch.constant.int 160
    %int144 = torch.constant.int 144
    %int128 = torch.constant.int 128
    %int112 = torch.constant.int 112
    %int96 = torch.constant.int 96
    %int80 = torch.constant.int 80
    %int64 = torch.constant.int 64
    %int48 = torch.constant.int 48
    %int32 = torch.constant.int 32
    %int16 = torch.constant.int 16
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
    %c241 = arith.constant 241 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %int3 = torch.constant.int 3
    %int1 = torch.constant.int 1
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,50,241],f32> -> tensor<1x15x50x241xf32>
    %1 = tensor.empty() : tensor<1x15x50x1xf32>
    %2 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1 : tensor<1x15x50x1xf32>) {
    ^bb0(%out: f32):
      %56 = linalg.index 1 : index
      %57 = linalg.index 2 : index
      %extracted = tensor.extract %0[%c0, %56, %57, %c0] : tensor<1x15x50x241xf32>
      %58 = scf.for %arg1 = %c1 to %c241 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_13 = tensor.extract %0[%c0, %56, %57, %arg1] : tensor<1x15x50x241xf32>
        %59 = arith.maximumf %extracted_13, %arg2 : f32
        scf.yield %59 : f32
      }
      linalg.yield %58 : f32
    } -> tensor<1x15x50x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x15x50x1xf32> -> !torch.vtensor<[1,15,50,1],f32>
    %4 = torch.aten.sub.Tensor %arg0, %3, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.vtensor<[1,15,50,1],f32>, !torch.int -> !torch.vtensor<[1,15,50,241],f32>
    %5 = torch_c.to_builtin_tensor %4 : !torch.vtensor<[1,15,50,241],f32> -> tensor<1x15x50x241xf32>
    %6 = tensor.empty() : tensor<1x15x50x241xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x15x50x241xf32>) outs(%6 : tensor<1x15x50x241xf32>) {
    ^bb0(%in: f32, %out: f32):
      %56 = arith.cmpf uno, %in, %in : f32
      %57 = arith.select %56, %cst_10, %in : f32
      %58 = arith.cmpf olt, %57, %cst_12 : f32
      %59 = arith.select %58, %cst_12, %57 : f32
      %60 = arith.cmpf ogt, %59, %cst_11 : f32
      %61 = arith.select %60, %cst_11, %59 : f32
      %62 = arith.mulf %61, %cst_9 : f32
      %63 = math.roundeven %62 : f32
      %64 = arith.fptosi %63 : f32 to i32
      %65 = math.fma %63, %cst_8, %61 : f32
      %66 = math.fma %63, %cst_7, %65 : f32
      %67 = math.fma %cst_6, %66, %cst_5 : f32
      %68 = math.fma %67, %66, %cst_4 : f32
      %69 = math.fma %68, %66, %cst_3 : f32
      %70 = math.fma %69, %66, %cst_2 : f32
      %71 = math.fma %70, %66, %cst_1 : f32
      %72 = arith.mulf %66, %66 : f32
      %73 = math.fma %72, %71, %66 : f32
      %74 = arith.addf %73, %cst_0 : f32
      %75 = arith.shrsi %64, %c1_i32 : i32
      %76 = arith.subi %64, %75 : i32
      %77 = arith.addi %75, %c127_i32 : i32
      %78 = arith.shli %77, %c23_i32 : i32
      %79 = arith.bitcast %78 : i32 to f32
      %80 = arith.mulf %74, %79 : f32
      %81 = arith.addi %76, %c127_i32 : i32
      %82 = arith.shli %81, %c23_i32 : i32
      %83 = arith.bitcast %82 : i32 to f32
      %84 = arith.mulf %80, %83 : f32
      %85 = arith.cmpf olt, %61, %cst_12 : f32
      %86 = arith.select %85, %cst_10, %84 : f32
      %87 = arith.cmpf ogt, %61, %cst_11 : f32
      %88 = arith.select %87, %cst, %86 : f32
      %89 = arith.select %56, %in, %88 : f32
      linalg.yield %89 : f32
    } -> tensor<1x15x50x241xf32>
    %8 = torch_c.from_builtin_tensor %7 : tensor<1x15x50x241xf32> -> !torch.vtensor<[1,15,50,241],f32>
    %9 = torch.aten.slice.Tensor %8, %int3, %int0, %int16, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %10 = torch.aten.slice.Tensor %8, %int3, %int16, %int32, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %11 = torch.aten.add.Tensor %9, %10, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %12 = torch.aten.slice.Tensor %8, %int3, %int32, %int48, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %13 = torch.aten.add.Tensor %11, %12, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %14 = torch.aten.slice.Tensor %8, %int3, %int48, %int64, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %15 = torch.aten.add.Tensor %13, %14, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %16 = torch.aten.slice.Tensor %8, %int3, %int64, %int80, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %17 = torch.aten.add.Tensor %15, %16, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %18 = torch.aten.slice.Tensor %8, %int3, %int80, %int96, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %19 = torch.aten.add.Tensor %17, %18, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %20 = torch.aten.slice.Tensor %8, %int3, %int96, %int112, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %21 = torch.aten.add.Tensor %19, %20, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %22 = torch.aten.slice.Tensor %8, %int3, %int112, %int128, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %23 = torch.aten.add.Tensor %21, %22, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %24 = torch.aten.slice.Tensor %8, %int3, %int128, %int144, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %25 = torch.aten.add.Tensor %23, %24, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %26 = torch.aten.slice.Tensor %8, %int3, %int144, %int160, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %27 = torch.aten.add.Tensor %25, %26, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %28 = torch.aten.slice.Tensor %8, %int3, %int160, %int176, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %29 = torch.aten.add.Tensor %27, %28, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %30 = torch.aten.slice.Tensor %8, %int3, %int176, %int192, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %31 = torch.aten.add.Tensor %29, %30, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %32 = torch.aten.slice.Tensor %8, %int3, %int192, %int208, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %33 = torch.aten.add.Tensor %31, %32, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %34 = torch.aten.slice.Tensor %8, %int3, %int208, %int224, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %35 = torch.aten.add.Tensor %33, %34, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %36 = torch.aten.slice.Tensor %8, %int3, %int224, %int240, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %37 = torch.aten.add.Tensor %35, %36, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %38 = torch.aten.slice.Tensor %8, %int3, %int240, %int241, %int1 : !torch.vtensor<[1,15,50,241],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,1],f32>
    %39 = torch.prim.ListConstruct %int0, %int15 : (!torch.int, !torch.int) -> !torch.list<int>
    %40 = torch.aten.constant_pad_nd %38, %39, %int0 : !torch.vtensor<[1,15,50,1],f32>, !torch.list<int>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %41 = torch.aten.add.Tensor %37, %40, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.vtensor<[1,15,50,16],f32>, !torch.int -> !torch.vtensor<[1,15,50,16],f32>
    %42 = torch.aten.slice.Tensor %41, %int3, %int0, %int8, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,8],f32>
    %43 = torch.aten.slice.Tensor %41, %int3, %int8, %int16, %int1 : !torch.vtensor<[1,15,50,16],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,8],f32>
    %44 = torch.aten.add.Tensor %42, %43, %int1 : !torch.vtensor<[1,15,50,8],f32>, !torch.vtensor<[1,15,50,8],f32>, !torch.int -> !torch.vtensor<[1,15,50,8],f32>
    %45 = torch.aten.slice.Tensor %44, %int3, %int0, %int4, %int1 : !torch.vtensor<[1,15,50,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,4],f32>
    %46 = torch.aten.slice.Tensor %44, %int3, %int4, %int8, %int1 : !torch.vtensor<[1,15,50,8],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,4],f32>
    %47 = torch.aten.add.Tensor %45, %46, %int1 : !torch.vtensor<[1,15,50,4],f32>, !torch.vtensor<[1,15,50,4],f32>, !torch.int -> !torch.vtensor<[1,15,50,4],f32>
    %48 = torch.aten.slice.Tensor %47, %int3, %int0, %int2, %int1 : !torch.vtensor<[1,15,50,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,2],f32>
    %49 = torch.aten.slice.Tensor %47, %int3, %int2, %int4, %int1 : !torch.vtensor<[1,15,50,4],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,2],f32>
    %50 = torch.aten.add.Tensor %48, %49, %int1 : !torch.vtensor<[1,15,50,2],f32>, !torch.vtensor<[1,15,50,2],f32>, !torch.int -> !torch.vtensor<[1,15,50,2],f32>
    %51 = torch.aten.slice.Tensor %50, %int3, %int0, %int1, %int1 : !torch.vtensor<[1,15,50,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,1],f32>
    %52 = torch.aten.slice.Tensor %50, %int3, %int1, %int2, %int1 : !torch.vtensor<[1,15,50,2],f32>, !torch.int, !torch.int, !torch.int, !torch.int -> !torch.vtensor<[1,15,50,1],f32>
    %53 = torch.aten.add.Tensor %51, %52, %int1 : !torch.vtensor<[1,15,50,1],f32>, !torch.vtensor<[1,15,50,1],f32>, !torch.int -> !torch.vtensor<[1,15,50,1],f32>
    %54 = torch.aten.reciprocal %53 : !torch.vtensor<[1,15,50,1],f32> -> !torch.vtensor<[1,15,50,1],f32>
    %55 = torch.aten.mul.Tensor %8, %54 : !torch.vtensor<[1,15,50,241],f32>, !torch.vtensor<[1,15,50,1],f32> -> !torch.vtensor<[1,15,50,241],f32>
    return %55 : !torch.vtensor<[1,15,50,241],f32>
  }
  func.func @recipe9(%arg0: !torch.vtensor<[1,15,50,241],f32>, %arg1: !torch.vtensor<[1,15,241,64],f32>) -> !torch.vtensor<[1,15,50,64],f32> {
    %c241 = arith.constant 241 : index
    %c240 = arith.constant 240 : index
    %c120 = arith.constant 120 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,50,241],f32> -> tensor<1x15x50x241xf32>
    %1 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[1,15,241,64],f32> -> tensor<1x15x241x64xf32>
    %2 = tensor.empty() : tensor<1x15x50x64xf32>
    %3 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%2 : tensor<1x15x50x64xf32>) {
    ^bb0(%out: f32):
      %5 = linalg.index 1 : index
      %6 = linalg.index 2 : index
      %7 = linalg.index 3 : index
      %8 = scf.for %arg2 = %c0 to %c120 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x50x241xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x241x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %9 = scf.for %arg2 = %c120 to %c240 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x50x241xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x241x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %10 = arith.addf %8, %9 : f32
      %11 = scf.for %arg2 = %c240 to %c241 step %c1 iter_args(%arg3 = %cst) -> (f32) {
        %extracted = tensor.extract %0[%c0, %5, %6, %arg2] : tensor<1x15x50x241xf32>
        %extracted_0 = tensor.extract %1[%c0, %5, %arg2, %7] : tensor<1x15x241x64xf32>
        %13 = math.fma %extracted, %extracted_0, %arg3 : f32
        scf.yield %13 : f32
      }
      %12 = arith.addf %10, %11 : f32
      linalg.yield %12 : f32
    } -> tensor<1x15x50x64xf32>
    %4 = torch_c.from_builtin_tensor %3 : tensor<1x15x50x64xf32> -> !torch.vtensor<[1,15,50,64],f32>
    return %4 : !torch.vtensor<[1,15,50,64],f32>
  }
  func.func @recipe10(%arg0: !torch.vtensor<[12,256,512],f32>) -> !torch.vtensor<[12,256,1],f32> {
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[12,256,512],f32> -> tensor<12x256x512xf32>
    %1 = tensor.empty() : tensor<12x256x1xf32>
    %2 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<12x256x1xf32>) {
    ^bb0(%out: f32):
      %4 = linalg.index 0 : index
      %5 = linalg.index 1 : index
      %extracted = tensor.extract %0[%4, %5, %c0] : tensor<12x256x512xf32>
      %6 = scf.for %arg1 = %c1 to %c512 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_0 = tensor.extract %0[%4, %5, %arg1] : tensor<12x256x512xf32>
        %7 = arith.maximumf %extracted_0, %arg2 : f32
        scf.yield %7 : f32
      }
      linalg.yield %6 : f32
    } -> tensor<12x256x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<12x256x1xf32> -> !torch.vtensor<[12,256,1],f32>
    return %3 : !torch.vtensor<[12,256,1],f32>
  }
  func.func @recipe11(%arg0: !torch.vtensor<[1,15,291,291],f32>) -> !torch.vtensor<[1,15,291,1],f32> {
    %c291 = arith.constant 291 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,291,291],f32> -> tensor<1x15x291x291xf32>
    %1 = tensor.empty() : tensor<1x15x291x1xf32>
    %2 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1 : tensor<1x15x291x1xf32>) {
    ^bb0(%out: f32):
      %4 = linalg.index 1 : index
      %5 = linalg.index 2 : index
      %extracted = tensor.extract %0[%c0, %4, %5, %c0] : tensor<1x15x291x291xf32>
      %6 = scf.for %arg1 = %c1 to %c291 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_0 = tensor.extract %0[%c0, %4, %5, %arg1] : tensor<1x15x291x291xf32>
        %7 = arith.maximumf %extracted_0, %arg2 : f32
        scf.yield %7 : f32
      }
      linalg.yield %6 : f32
    } -> tensor<1x15x291x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x15x291x1xf32> -> !torch.vtensor<[1,15,291,1],f32>
    return %3 : !torch.vtensor<[1,15,291,1],f32>
  }
  func.func @recipe12(%arg0: !torch.vtensor<[1,15,241,241],f32>) -> !torch.vtensor<[1,15,241,1],f32> {
    %c241 = arith.constant 241 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,241,241],f32> -> tensor<1x15x241x241xf32>
    %1 = tensor.empty() : tensor<1x15x241x1xf32>
    %2 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1 : tensor<1x15x241x1xf32>) {
    ^bb0(%out: f32):
      %4 = linalg.index 1 : index
      %5 = linalg.index 2 : index
      %extracted = tensor.extract %0[%c0, %4, %5, %c0] : tensor<1x15x241x241xf32>
      %6 = scf.for %arg1 = %c1 to %c241 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_0 = tensor.extract %0[%c0, %4, %5, %arg1] : tensor<1x15x241x241xf32>
        %7 = arith.maximumf %extracted_0, %arg2 : f32
        scf.yield %7 : f32
      }
      linalg.yield %6 : f32
    } -> tensor<1x15x241x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x15x241x1xf32> -> !torch.vtensor<[1,15,241,1],f32>
    return %3 : !torch.vtensor<[1,15,241,1],f32>
  }
  func.func @recipe13(%arg0: !torch.vtensor<[1,15,50,241],f32>) -> !torch.vtensor<[1,15,50,1],f32> {
    %c241 = arith.constant 241 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,15,50,241],f32> -> tensor<1x15x50x241xf32>
    %1 = tensor.empty() : tensor<1x15x50x1xf32>
    %2 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%1 : tensor<1x15x50x1xf32>) {
    ^bb0(%out: f32):
      %4 = linalg.index 1 : index
      %5 = linalg.index 2 : index
      %extracted = tensor.extract %0[%c0, %4, %5, %c0] : tensor<1x15x50x241xf32>
      %6 = scf.for %arg1 = %c1 to %c241 step %c1 iter_args(%arg2 = %extracted) -> (f32) {
        %extracted_0 = tensor.extract %0[%c0, %4, %5, %arg1] : tensor<1x15x50x241xf32>
        %7 = arith.maximumf %extracted_0, %arg2 : f32
        scf.yield %7 : f32
      }
      linalg.yield %6 : f32
    } -> tensor<1x15x50x1xf32>
    %3 = torch_c.from_builtin_tensor %2 : tensor<1x15x50x1xf32> -> !torch.vtensor<[1,15,50,1],f32>
    return %3 : !torch.vtensor<[1,15,50,1],f32>
  }
  func.func @gelu_exact_fallback(%arg0: !torch.vtensor<[1,1024,3072],f32>) -> !torch.vtensor<[1,1024,3072],f32> {
    %str = torch.constant.str "none"
    %0 = torch.aten.gelu %arg0, %str : !torch.vtensor<[1,1024,3072],f32>, !torch.str -> !torch.vtensor<[1,1024,3072],f32>
    return %0 : !torch.vtensor<[1,1024,3072],f32>
  }
  func.func @dynamic_rope_fallback(%arg0: !torch.vtensor<[1,291,1,32],f32>) -> !torch.vtensor<[1,291,1,32],f32> {
    %0 = torch.aten.sin %arg0 : !torch.vtensor<[1,291,1,32],f32> -> !torch.vtensor<[1,291,1,32],f32>
    return %0 : !torch.vtensor<[1,291,1,32],f32>
  }
  func.func @conv_bf16_source(%arg0: !torch.vtensor<[1,3,512,512],bf16>, %arg1: !torch.vtensor<[768,3,16,16],f32>, %arg2: !torch.vtensor<[768],f32>) -> !torch.vtensor<[1,768,32,32],f32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c768 = arith.constant 768 : index
    %c48 = arith.constant 48 : index
    %c16 = arith.constant 16 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %int6 = torch.constant.int 6
    %false = torch.constant.bool false
    %none = torch.constant.none
    %0 = torch.aten.to.dtype %arg0, %int6, %false, %false, %none : !torch.vtensor<[1,3,512,512],bf16>, !torch.int, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,3,512,512],f32>
    %1 = torch_c.to_builtin_tensor %arg0 : !torch.vtensor<[1,3,512,512],bf16> -> tensor<1x3x512x512xbf16>
    %2 = torch_c.to_builtin_tensor %arg1 : !torch.vtensor<[768,3,16,16],f32> -> tensor<768x3x16x16xf32>
    %3 = torch_c.to_builtin_tensor %arg2 : !torch.vtensor<[768],f32> -> tensor<768xf32>
    %4 = tensor.empty() : tensor<1x768x32x32xf32>
    %5 = linalg.generic {indexing_maps = [#map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%4 : tensor<1x768x32x32xf32>) {
    ^bb0(%out: f32):
      %7 = linalg.index 1 : index
      %8 = linalg.index 2 : index
      %9 = linalg.index 3 : index
      %10 = scf.for %arg3 = %c0 to %c768 step %c1 iter_args(%arg4 = %cst) -> (f32) {
        %12 = arith.divui %arg3, %c48 : index
        %13 = arith.remui %arg3, %c48 : index
        %14 = arith.divui %13, %c3 : index
        %15 = arith.remui %13, %c3 : index
        %16 = arith.muli %8, %c16 : index
        %17 = arith.addi %16, %12 : index
        %18 = arith.muli %9, %c16 : index
        %19 = arith.addi %18, %14 : index
        %extracted_0 = tensor.extract %1[%c0, %15, %17, %19] : tensor<1x3x512x512xbf16>
        %20 = arith.extf %extracted_0 : bf16 to f32
        %extracted_1 = tensor.extract %2[%7, %15, %12, %14] : tensor<768x3x16x16xf32>
        %21 = math.fma %20, %extracted_1, %arg4 : f32
        scf.yield %21 : f32
      }
      %extracted = tensor.extract %3[%7] : tensor<768xf32>
      %11 = arith.addf %10, %extracted : f32
      linalg.yield %11 : f32
    } -> tensor<1x768x32x32xf32>
    %6 = torch_c.from_builtin_tensor %5 : tensor<1x768x32x32xf32> -> !torch.vtensor<[1,768,32,32],f32>
    return %6 : !torch.vtensor<[1,768,32,32],f32>
  }
}

