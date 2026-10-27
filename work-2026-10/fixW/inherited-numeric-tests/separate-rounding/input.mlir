module {func.func @main(%arg: !torch.vtensor<[32768,3],f32>) -> !torch.vtensor<[32768],f32> {
%axis = torch.constant.int 1
%zero = torch.constant.int 0
%one = torch.constant.int 1
%two = torch.constant.int 2
%a = torch.aten.select.int %arg, %axis, %zero : !torch.vtensor<[32768,3],f32>, !torch.int, !torch.int -> !torch.vtensor<[32768],f32>
%b = torch.aten.select.int %arg, %axis, %one : !torch.vtensor<[32768,3],f32>, !torch.int, !torch.int -> !torch.vtensor<[32768],f32>
%c = torch.aten.select.int %arg, %axis, %two : !torch.vtensor<[32768,3],f32>, !torch.int, !torch.int -> !torch.vtensor<[32768],f32>
%p = torch.aten.mul.Tensor %a, %b : !torch.vtensor<[32768],f32>, !torch.vtensor<[32768],f32> -> !torch.vtensor<[32768],f32>
%result = torch.aten.add.Tensor %p, %c, %one : !torch.vtensor<[32768],f32>, !torch.vtensor<[32768],f32>, !torch.int -> !torch.vtensor<[32768],f32>
return %result : !torch.vtensor<[32768],f32>
}}
