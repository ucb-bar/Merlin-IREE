module { func.func @main(%x: !torch.vtensor<[1,11],f32>) -> (!torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1,11],si8>) {
%map = torch.constant.str "SYMMETRIC"
%dt = torch.constant.int 1
%lo = torch.constant.int -127
%hi = torch.constant.int 127
%eps = torch.constant.float 1.000000e-05
%none = torch.constant.none
%keep = torch.constant.bool false
%b0 = torch.constant.int 1
%b1 = torch.constant.int 11
%block = torch.prim.ListConstruct %b0, %b1 : (!torch.int, !torch.int) -> !torch.list<int>
%sc = torch.vtensor.literal(dense<1.00000000e+00> : tensor<1xf32>) : !torch.vtensor<[1],f32>
%zp = torch.vtensor.literal(dense<0.00000000e+00> : tensor<1xf32>) : !torch.vtensor<[1],f32>
%q = torch.operator "torch.torchao.quantize_affine"(%x, %block, %sc, %zp, %dt, %lo, %hi) : (!torch.vtensor<[1,11],f32>, !torch.list<int>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,11],si8>
return %sc, %zp, %q : !torch.vtensor<[1],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1,11],si8>
}
}