module {func.func @main(%arg: !torch.vtensor<[1,32,16,16],f32>) -> !torch.vtensor<[1,32,16,16],f32> {
%axis = torch.constant.int -1
%dtype = torch.constant.int 6
%result = torch.aten.softmax.int %arg, %axis, %dtype : !torch.vtensor<[1,32,16,16],f32>, !torch.int, !torch.int -> !torch.vtensor<[1,32,16,16],f32>
return %result : !torch.vtensor<[1,32,16,16],f32>
}}
