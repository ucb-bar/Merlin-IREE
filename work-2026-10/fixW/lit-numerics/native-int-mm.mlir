// RUN: iree-opt %s --convert-torch-to-linalg | FileCheck %s
// CHECK-LABEL: func.func @int_mm
// CHECK: linalg.matmul
// CHECK-SAME: tensor<?x?xi32>
// CHECK-NOT: torch.aten._int_mm
func.func @int_mm(%a: !torch.vtensor<[2,3],si8>, %b: !torch.vtensor<[3,4],si8>) -> !torch.vtensor<[2,4],si32> {
  %0 = torch.aten._int_mm %a, %b : !torch.vtensor<[2,3],si8>, !torch.vtensor<[3,4],si8> -> !torch.vtensor<[2,4],si32>
  return %0 : !torch.vtensor<[2,4],si32>
}
