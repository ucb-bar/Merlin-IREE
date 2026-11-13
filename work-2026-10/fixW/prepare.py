from pathlib import Path
R=Path('/home/loren/work/runs/fixW')
p=R/'src/compiler/src/merlin/Dialect/Gemmini/Transforms/LegalizeForLLVMExport.cpp'
s=p.read_text();s=s.replace('#include "iree/compiler/Dialect/HAL/IR/HALOps.h"','#include "iree/compiler/Dialect/HAL/IR/HALOps.h"\n#include "iree/compiler/Codegen/Dialect/Codegen/IR/IREECodegenOps.h"')
a=s.index('// FIX (2026-05-19)');b=s.index('template <typename IntrOp',a);s=s[:a]+s[b:]
a=s.index('\t\tStridedLayoutAttr aArrayLayout =');b=s.index('\t\t// 2026-05-21 Bug A fix attempt:',a)
s=s[:a]+'''        Location loc = tileMatMulOp.getLoc();
        IntegerType i64Type = rewriter.getI64Type();
        // A workgroup tile is a view, not a packed allocation. Keep the
        // physical row stride, and reject layouts the DMA cannot express.
        auto rowStride = [](MemRefType type) -> FailureOr<int64_t> {
          SmallVector<int64_t> strides;
          int64_t offset;
          if (type.getRank() != 2 ||
              failed(getStridesAndOffset(type, strides, offset)) ||
              strides[1] != 1 || ShapedType::isDynamic(strides[0]) ||
              strides[0] < 0)
            return failure();
          return strides[0];
        };
        auto aStride = rowStride(aArrayType), bStride = rowStride(bArrayType);
        auto cStride = rowStride(cArrayType), dStride = rowStride(dArrayType);
        if (failed(aStride) || failed(bStride) || failed(cStride) || failed(dStride))
          return tileMatMulOp.emitOpError(
              "requires static nonnegative row strides and unit inner strides");
        // IREE's metadata op preserves binding byte offsets until binding
        // optimization is complete. Its offset is in elements and includes
        // subview offsets, including runtime workgroup indices. Extract the
        // pointer from the returned zero-offset base, then add the offset
        // exactly once. Do not walk back separately to the binding.
        auto address = [&](Value memref) -> Value {
          auto metadata = rewriter.create<
              mlir::iree_compiler::IREE::Codegen::ExtractStridedMetadataOp>(loc, memref);
          Value base = rewriter.create<memref::ExtractAlignedPointerAsIndexOp>(
              loc, metadata.getBaseBuffer());
          auto type = cast<MemRefType>(memref.getType());
          Value bytes = rewriter.create<arith::ConstantIndexOp>(
              loc, type.getElementTypeBitWidth() / 8);
          Value offset = rewriter.create<arith::MulIOp>(loc, metadata.getOffset(), bytes);
          Value pointer = rewriter.create<arith::AddIOp>(loc, base, offset);
          return rewriter.create<arith::IndexCastOp>(loc, i64Type, pointer);
        };
        Value aArrayindexCastOp = address(aArray);
        Value bArrayindexCastOp = address(bArray);
        Value cArrayindexCastOp = address(cArray);
        Value dArrayindexCastOp = address(dArray);
'''+s[b:]
s=s.replace('size_t strideA = aArrayShape[1];','size_t strideA = *aStride;').replace('size_t strideB = bArrayShape[1];','size_t strideB = *bStride;').replace('size_t strideC = cArrayShape[1];','size_t strideC = *cStride;').replace('size_t strideD = dArrayShape[1];','size_t strideD = *dStride;')
p.write_text(s)
