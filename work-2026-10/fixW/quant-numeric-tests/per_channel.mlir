module { func.func @main(%x: !torch.vtensor<[3,5],f32>) -> (!torch.vtensor<[5],f32>, !torch.vtensor<[5],f32>, !torch.vtensor<[3,5],si8>) {
%map = torch.constant.str "SYMMETRIC"
%dt = torch.constant.int 1
%lo = torch.constant.int -127
%hi = torch.constant.int 127
%eps = torch.constant.float 1.000000e-05
%none = torch.constant.none
%keep = torch.constant.bool false
%b0 = torch.constant.int 3
%b1 = torch.constant.int 1
%block = torch.prim.ListConstruct %b0, %b1 : (!torch.int, !torch.int) -> !torch.list<int>
%p:2 = torch.operator "torch.torchao.choose_qparams_affine"(%x, %map, %block, %dt, %lo, %hi, %eps, %none, %none, %keep) : (!torch.vtensor<[3,5],f32>, !torch.str, !torch.list<int>, !torch.int, !torch.int, !torch.int, !torch.float, !torch.none, !torch.none, !torch.bool) -> (!torch.vtensor<[5],f32>, !torch.vtensor<[5],f32>)
%q = torch.operator "torch.torchao.quantize_affine"(%x, %block, %p#0, %p#1, %dt, %lo, %hi) : (!torch.vtensor<[3,5],f32>, !torch.list<int>, !torch.vtensor<[5],f32>, !torch.vtensor<[5],f32>, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[3,5],si8>
return %p#0, %p#1, %q : !torch.vtensor<[5],f32>, !torch.vtensor<[5],f32>, !torch.vtensor<[3,5],si8>
}
}