module {func.func @main(%arg: !torch.vtensor<[1,16,5632],f32>) -> !torch.vtensor<[1,16,5632],f32> {
%result = torch.aten.silu %arg : !torch.vtensor<[1,16,5632],f32> -> !torch.vtensor<[1,16,5632],f32>
return %result : !torch.vtensor<[1,16,5632],f32>
}}
