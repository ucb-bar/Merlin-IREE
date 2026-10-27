module {
  llvm.func @add_fastmath_flags() -> f32 {
    %0 = llvm.mlir.constant(3.000000e+00 : f32) : f32
    %1 = llvm.mlir.constant(6.000000e+00 : f32) : f32
    %2 = llvm.fmul %0, %0 {fastmathFlags = #llvm.fastmath<contract>} : f32
    %3 = llvm.fadd %2, %1 {fastmathFlags = #llvm.fastmath<contract>} : f32
    llvm.return %3 : f32
  }
}

// -----
module {
  llvm.func @preserve_existing_flags(%arg0: f32, %arg1: f32) -> f32 {
    %0 = llvm.fmul %arg0, %arg1 {fastmathFlags = #llvm.fastmath<nnan, contract>} : f32
    llvm.return %0 : f32
  }
}

