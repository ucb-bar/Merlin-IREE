module {func.func @main(%x: !torch.vtensor<[4097],f32>) -> !torch.vtensor<[4097],f32> {
%approx = torch.constant.str "tanh"
%y = torch.aten.gelu %x, %approx : !torch.vtensor<[4097],f32>, !torch.str -> !torch.vtensor<[4097],f32>
return %y : !torch.vtensor<[4097],f32>
}}