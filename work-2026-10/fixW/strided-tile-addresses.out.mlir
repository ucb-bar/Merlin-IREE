module {
  func.func @strided_tile(%arg0: memref<16x24xi8, strided<[24, 1], offset: ?>>, %arg1: memref<24x8xi8, strided<[40, 1], offset: ?>>, %arg2: memref<16x8xi32, strided<[40, 1], offset: ?>>, %arg3: memref<1x8xi32, strided<[40, 1], offset: ?>>) {
    %base_buffer, %offset, %sizes:2, %strides:2 = iree_codegen.extract_strided_metadata %arg0 : memref<16x24xi8, strided<[24, 1], offset: ?>> -> memref<i8>, index, index, index, index, index
    %intptr = memref.extract_aligned_pointer_as_index %base_buffer : memref<i8> -> index
    %c1 = arith.constant 1 : index
    %0 = arith.muli %offset, %c1 : index
    %1 = arith.addi %intptr, %0 : index
    %2 = arith.index_cast %1 : index to i64
    %base_buffer_0, %offset_1, %sizes_2:2, %strides_3:2 = iree_codegen.extract_strided_metadata %arg1 : memref<24x8xi8, strided<[40, 1], offset: ?>> -> memref<i8>, index, index, index, index, index
    %intptr_4 = memref.extract_aligned_pointer_as_index %base_buffer_0 : memref<i8> -> index
    %c1_5 = arith.constant 1 : index
    %3 = arith.muli %offset_1, %c1_5 : index
    %4 = arith.addi %intptr_4, %3 : index
    %5 = arith.index_cast %4 : index to i64
    %base_buffer_6, %offset_7, %sizes_8:2, %strides_9:2 = iree_codegen.extract_strided_metadata %arg2 : memref<16x8xi32, strided<[40, 1], offset: ?>> -> memref<i32>, index, index, index, index, index
    %intptr_10 = memref.extract_aligned_pointer_as_index %base_buffer_6 : memref<i32> -> index
    %c4 = arith.constant 4 : index
    %6 = arith.muli %offset_7, %c4 : index
    %7 = arith.addi %intptr_10, %6 : index
    %8 = arith.index_cast %7 : index to i64
    %base_buffer_11, %offset_12, %sizes_13:2, %strides_14:2 = iree_codegen.extract_strided_metadata %arg3 : memref<1x8xi32, strided<[40, 1], offset: ?>> -> memref<i32>, index, index, index, index, index
    %intptr_15 = memref.extract_aligned_pointer_as_index %base_buffer_11 : memref<i32> -> index
    %c4_16 = arith.constant 4 : index
    %9 = arith.muli %offset_12, %c4_16 : index
    %10 = arith.addi %intptr_15, %9 : index
    %11 = arith.index_cast %10 : index to i64
    %c9223372036854775807_i64 = arith.constant 9223372036854775807 : i64
    %12 = arith.andi %2, %c9223372036854775807_i64 : i64
    %13 = arith.andi %5, %c9223372036854775807_i64 : i64
    %14 = arith.andi %8, %c9223372036854775807_i64 : i64
    %15 = arith.andi %11, %c9223372036854775807_i64 : i64
    llvm.inline_asm has_side_effects asm_dialect = att "fence", ""  : () -> ()
    %c4575657221408489476_i64 = arith.constant 4575657221408489476 : i64
    %c281474976710656_i64 = arith.constant 281474976710656 : i64
    gemmini.intr.config %c4575657221408489476_i64, %c281474976710656_i64
    %c40_i64 = arith.constant 40 : i64
    %c2_i64 = arith.constant 2 : i64
    %c4575657221408423976_i64 = arith.constant 4575657221408423976 : i64
    gemmini.intr.config %c2_i64, %c4575657221408423976_i64
    %c24_i64 = arith.constant 24 : i64
    %c4575657221409472769_i64 = arith.constant 4575657221409472769 : i64
    gemmini.intr.config %c4575657221409472769_i64, %c24_i64
    %c40_i64_17 = arith.constant 40 : i64
    %c4575657221409472777_i64 = arith.constant 4575657221409472777 : i64
    gemmini.intr.config %c4575657221409472777_i64, %c40_i64_17
    %c0_i64 = arith.constant 0 : i64
    %c4575657221409472785_i64 = arith.constant 4575657221409472785 : i64
    gemmini.intr.config %c4575657221409472785_i64, %c0_i64
    %c24_i64_18 = arith.constant 24 : i64
    %c40_i64_19 = arith.constant 40 : i64
    %c40_i64_20 = arith.constant 40 : i64
    %c0_i64_21 = arith.constant 0 : i64
    %c0_i64_22 = arith.constant 0 : i64
    %16 = arith.addi %12, %c0_i64_22 : i64
    %c0_i64_23 = arith.constant 0 : i64
    %17 = arith.addi %13, %c0_i64_23 : i64
    %c0_i64_24 = arith.constant 0 : i64
    %18 = arith.addi %15, %c0_i64_24 : i64
    %c0_i64_25 = arith.constant 0 : i64
    %19 = arith.addi %14, %c0_i64_25 : i64
    %c34360262656_i64 = arith.constant 34360262656 : i64
    %c8590000129_i64 = arith.constant 8590000129 : i64
    gemmini.intr.loop_ws.config_bounds %c34360262656_i64, %c8590000129_i64
    gemmini.intr.loop_ws.config_addrs_ab %16, %17
    gemmini.intr.loop_ws.config_addrs_dc %18, %19
    gemmini.intr.loop_ws.config_strides_ab %c24_i64_18, %c40_i64_19
    gemmini.intr.loop_ws.config_strides_dc %c0_i64_21, %c40_i64_20
    %c327681_i64 = arith.constant 327681 : i64
    %c0_i64_26 = arith.constant 0 : i64
    gemmini.intr.loop_ws %c327681_i64, %c0_i64_26
    %c0_i64_27 = arith.constant 0 : i64
    gemmini.intr.flush %c0_i64_27, %c0_i64_27
    llvm.inline_asm has_side_effects asm_dialect = att "fence", ""  : () -> ()
    return
  }
}

