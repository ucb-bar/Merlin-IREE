module {
  func.func @integer_mm(%arg0: !torch.vtensor<[2,32],si8>, %arg1: !torch.vtensor<[32,3],si8>) -> !torch.vtensor<[2,3],si32> {
    %0 = torch.aten.mm %arg0, %arg1 : !torch.vtensor<[2,32],si8>, !torch.vtensor<[32,3],si8> -> !torch.vtensor<[2,3],si32>
    return %0 : !torch.vtensor<[2,3],si32>
  }
  func.func @mean(%arg0: !torch.vtensor<[2,64],f32>) -> !torch.vtensor<[2,1],f32> {
    %int64 = torch.constant.int 64
    %none = torch.constant.none
    %true = torch.constant.bool true
    %int-1 = torch.constant.int -1
    %0 = torch.prim.ListConstruct %int-1 : (!torch.int) -> !torch.list<int>
    %1 = torch.aten.sum.dim_IntList %arg0, %0, %true, %none : !torch.vtensor<[2,64],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[2,1],f32>
    %2 = torch.aten.div.Scalar %1, %int64 : !torch.vtensor<[2,1],f32>, !torch.int -> !torch.vtensor<[2,1],f32>
    return %2 : !torch.vtensor<[2,1],f32>
  }
  func.func @silu(%arg0: !torch.vtensor<[1,33],f32>) -> !torch.vtensor<[1,33],f32> {
    %0 = torch.aten.sigmoid %arg0 : !torch.vtensor<[1,33],f32> -> !torch.vtensor<[1,33],f32>
    %1 = torch.aten.mul.Tensor %0, %arg0 : !torch.vtensor<[1,33],f32>, !torch.vtensor<[1,33],f32> -> !torch.vtensor<[1,33],f32>
    return %1 : !torch.vtensor<[1,33],f32>
  }
  func.func @softmax(%arg0: !torch.vtensor<[2,16],f32>) -> !torch.vtensor<[2,16],f32> {
    %none = torch.constant.none
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %int-1 = torch.constant.int -1
    %true = torch.constant.bool true
    %values, %indices = torch.aten.max.dim %arg0, %int-1, %true : !torch.vtensor<[2,16],f32>, !torch.int, !torch.bool -> !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],si64>
    %0 = torch.aten.sub.Tensor %arg0, %values, %float1.000000e00 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,16],f32>
    %1 = torch.aten.exp %0 : !torch.vtensor<[2,16],f32> -> !torch.vtensor<[2,16],f32>
    %2 = torch.prim.ListConstruct %int-1 : (!torch.int) -> !torch.list<int>
    %3 = torch.aten.sum.dim_IntList %1, %2, %true, %none : !torch.vtensor<[2,16],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[2,1],f32>
    %4 = torch.aten.div.Tensor %1, %3 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,16],f32>
    return %4 : !torch.vtensor<[2,16],f32>
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
    %0 = torch.vtensor.literal(dense<[0.000000e+00, 1.000000e+00, 2.000000e+00]> : tensor<3xf32>) : !torch.vtensor<[3],f32>
    %1 = torch.aten.sin %0 : !torch.vtensor<[3],f32> -> !torch.vtensor<[3],f32>
    return %1 : !torch.vtensor<[3],f32>
  }
  func.func @dynamic_trig(%arg0: !torch.vtensor<[3],f32>) -> !torch.vtensor<[3],f32> {
    %0 = torch.aten.sin %arg0 : !torch.vtensor<[3],f32> -> !torch.vtensor<[3],f32>
    return %0 : !torch.vtensor<[3],f32>
  }
  func.func @softmax_explicit_f32(%arg0: !torch.vtensor<[2,16],f32>) -> !torch.vtensor<[2,16],f32> {
    %none = torch.constant.none
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %int-1 = torch.constant.int -1
    %true = torch.constant.bool true
    %values, %indices = torch.aten.max.dim %arg0, %int-1, %true : !torch.vtensor<[2,16],f32>, !torch.int, !torch.bool -> !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],si64>
    %0 = torch.aten.sub.Tensor %arg0, %values, %float1.000000e00 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,16],f32>
    %1 = torch.aten.exp %0 : !torch.vtensor<[2,16],f32> -> !torch.vtensor<[2,16],f32>
    %2 = torch.prim.ListConstruct %int-1 : (!torch.int) -> !torch.list<int>
    %3 = torch.aten.sum.dim_IntList %1, %2, %true, %none : !torch.vtensor<[2,16],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[2,1],f32>
    %4 = torch.aten.div.Tensor %1, %3 : !torch.vtensor<[2,16],f32>, !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,16],f32>
    return %4 : !torch.vtensor<[2,16],f32>
  }
}

