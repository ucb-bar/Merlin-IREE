from pathlib import Path
s=Path('runs/smB/sdpa-full-input.mlir').read_text()
const=s[s.index('    %cst ='):s.index('    %0 = hal.tensor.import')]
body=s[s.index('    %10 = tensor.empty()'):s.index('    %14 = tensor.empty()')]
s='module {\n  func.func @main(%9: tensor<12x4x512xf32>) -> tensor<12x4x512xf32> {\n'+const+'    %5 = tensor.empty() : tensor<12x4x512xf32>\n'+body.replace('256','4')+'    return %13 : tensor<12x4x512xf32>\n  }\n}\n'
Path('runs/smB/repro.mlir').write_text(s)
