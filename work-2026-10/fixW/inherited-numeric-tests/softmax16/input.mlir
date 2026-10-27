module {func.func @main(%arg: !torch.vtensor<[1,32,16,16],f32>) -> !torch.vtensor<[1,32,16,16],f32> {
%axis = torch.constant.int -1
%none = torch.constant.none
%result = torch.aten.softmax.int %arg, %axis, %none : !torch.vtensor<[1,32,16,16],f32>, !torch.int, !torch.none -> !torch.vtensor<[1,32,16,16],f32>
return %result : !torch.vtensor<[1,32,16,16],f32>
}}
