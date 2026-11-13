module {func.func @main(%arg: !torch.vtensor<[1,16,2048],f32>) -> !torch.vtensor<[1,16,1],f32> {
%axis = torch.constant.int -1
%ds = torch.prim.ListConstruct %axis : (!torch.int) -> !torch.list<int>
%keep = torch.constant.bool true
%none = torch.constant.none
%result = torch.aten.mean.dim %arg, %ds, %keep, %none : !torch.vtensor<[1,16,2048],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[1,16,1],f32>
return %result : !torch.vtensor<[1,16,1],f32>
}}
