; ModuleID = 'resnet50_q_int8_linked'
source_filename = "resnet50_q_int8_linked"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown-eabi-elf"

%iree_hal_executable_library_header_t = type { i32, ptr, i32, i32 }
%iree_hal_executable_dispatch_attrs_v0_t = type { i64, i16, i8, i8, i32, i32, i16, i16, i64, i64, i64, i64, i64 }
%iree_hal_executable_source_location_v0_t = type { i32, i32, ptr }
%iree_hal_executable_stage_location_table_v0_t = type { i32, ptr, ptr }
%iree_hal_executable_library_v0_t = type { ptr, %iree_hal_executable_import_table_v0_t, %iree_hal_executable_export_table_v0_t, %iree_hal_executable_constant_table_v0_t, %iree_hal_executable_source_file_table_v0_t }
%iree_hal_executable_import_table_v0_t = type { i32, ptr }
%iree_hal_executable_export_table_v0_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%iree_hal_executable_constant_table_v0_t = type { i32 }
%iree_hal_executable_source_file_table_v0_t = type { i32, ptr }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%iree_hal_executable_workgroup_state_v0_t = type { i32, i32, i16, i16, i32, ptr, i32 }

@0 = private constant [23 x i8] c"resnet50_q_int8_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [176 x ptr] [ptr @_initializer_0_dispatch_0_transpose_64x64_i8, ptr @_initializer_1_dispatch_0_transpose_64x256_i8, ptr @_initializer_2_dispatch_0_transpose_64x256_i8, ptr @_initializer_3_dispatch_0_transpose_256x64_i8, ptr @_initializer_4_dispatch_0_transpose_64x256_i8, ptr @_initializer_5_dispatch_0_transpose_256x64_i8, ptr @_initializer_6_dispatch_0_transpose_64x256_i8, ptr @_initializer_7_dispatch_0_transpose_256x128_i8, ptr @_initializer_8_dispatch_0_transpose_256x512_i8, ptr @_initializer_9_dispatch_0_transpose_128x512_i8, ptr @_initializer_10_dispatch_0_transpose_512x128_i8, ptr @_initializer_11_dispatch_0_transpose_128x512_i8, ptr @_initializer_12_dispatch_0_transpose_512x128_i8, ptr @_initializer_13_dispatch_0_transpose_128x512_i8, ptr @_initializer_14_dispatch_0_transpose_512x128_i8, ptr @_initializer_15_dispatch_0_transpose_128x512_i8, ptr @_initializer_16_dispatch_0_transpose_512x256_i8, ptr @_initializer_17_dispatch_0_transpose_512x1024_i8, ptr @_initializer_18_dispatch_0_transpose_256x1024_i8, ptr @_initializer_19_dispatch_0_transpose_1024x256_i8, ptr @_initializer_20_dispatch_0_transpose_256x1024_i8, ptr @_initializer_21_dispatch_0_transpose_1024x256_i8, ptr @_initializer_22_dispatch_0_transpose_256x1024_i8, ptr @_initializer_23_dispatch_0_transpose_1024x256_i8, ptr @_initializer_24_dispatch_0_transpose_256x1024_i8, ptr @_initializer_25_dispatch_0_transpose_1024x256_i8, ptr @_initializer_26_dispatch_0_transpose_256x1024_i8, ptr @_initializer_27_dispatch_0_transpose_1024x256_i8, ptr @_initializer_28_dispatch_0_transpose_256x1024_i8, ptr @_initializer_29_dispatch_0_transpose_1024x512_i8, ptr @_initializer_30_dispatch_0_transpose_1024x2048_i8, ptr @_initializer_31_dispatch_0_transpose_512x2048_i8, ptr @_initializer_32_dispatch_0_transpose_2048x512_i8, ptr @_initializer_33_dispatch_0_transpose_512x2048_i8, ptr @_initializer_34_dispatch_0_transpose_2048x512_i8, ptr @_initializer_35_dispatch_0_transpose_512x2048_i8, ptr @_initializer_36_dispatch_0_transpose_2048x1000_i8, ptr @_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32, ptr @_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32, ptr @_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8", ptr @"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32", ptr @"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8", ptr @"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32", ptr @"main_graph$async_dispatch_4_slow_memcpy", ptr @"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32", ptr @"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32", ptr @"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_8_slow_memcpy", ptr @"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8", ptr @"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32", ptr @"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", ptr @"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", ptr @"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", ptr @"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", ptr @"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", ptr @"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", ptr @"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", ptr @"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", ptr @"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_29_generic_28x28x256_i8", ptr @"main_graph$async_dispatch_30_slow_memcpy", ptr @"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", ptr @"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", ptr @"main_graph$async_dispatch_37_slow_memcpy", ptr @"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", ptr @"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", ptr @"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", ptr @"main_graph$async_dispatch_55_generic_14x14x512_i8", ptr @"main_graph$async_dispatch_56_slow_memcpy", ptr @"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", ptr @"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_62_slow_memcpy", ptr @"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_87_generic_7x7x1024_i8", ptr @"main_graph$async_dispatch_88_slow_memcpy", ptr @"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", ptr @"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", ptr @"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", ptr @"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", ptr @"main_graph$async_dispatch_94_slow_memcpy", ptr @"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", ptr @"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", ptr @"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", ptr @"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", ptr @"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", ptr @"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", ptr @"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", ptr @"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", ptr @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", ptr @"main_graph$async_dispatch_105_elementwise_1000_i8xf32"]
@iree_hal_executable_library_query_v0_attrs = private constant [176 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [45 x i8] c"_initializer_0_dispatch_0_transpose_64x64_i8\00", align 1
@2 = private constant [46 x i8] c"_initializer_1_dispatch_0_transpose_64x256_i8\00", align 1
@3 = private constant [46 x i8] c"_initializer_2_dispatch_0_transpose_64x256_i8\00", align 1
@4 = private constant [46 x i8] c"_initializer_3_dispatch_0_transpose_256x64_i8\00", align 1
@5 = private constant [46 x i8] c"_initializer_4_dispatch_0_transpose_64x256_i8\00", align 1
@6 = private constant [46 x i8] c"_initializer_5_dispatch_0_transpose_256x64_i8\00", align 1
@7 = private constant [46 x i8] c"_initializer_6_dispatch_0_transpose_64x256_i8\00", align 1
@8 = private constant [47 x i8] c"_initializer_7_dispatch_0_transpose_256x128_i8\00", align 1
@9 = private constant [47 x i8] c"_initializer_8_dispatch_0_transpose_256x512_i8\00", align 1
@10 = private constant [47 x i8] c"_initializer_9_dispatch_0_transpose_128x512_i8\00", align 1
@11 = private constant [48 x i8] c"_initializer_10_dispatch_0_transpose_512x128_i8\00", align 1
@12 = private constant [48 x i8] c"_initializer_11_dispatch_0_transpose_128x512_i8\00", align 1
@13 = private constant [48 x i8] c"_initializer_12_dispatch_0_transpose_512x128_i8\00", align 1
@14 = private constant [48 x i8] c"_initializer_13_dispatch_0_transpose_128x512_i8\00", align 1
@15 = private constant [48 x i8] c"_initializer_14_dispatch_0_transpose_512x128_i8\00", align 1
@16 = private constant [48 x i8] c"_initializer_15_dispatch_0_transpose_128x512_i8\00", align 1
@17 = private constant [48 x i8] c"_initializer_16_dispatch_0_transpose_512x256_i8\00", align 1
@18 = private constant [49 x i8] c"_initializer_17_dispatch_0_transpose_512x1024_i8\00", align 1
@19 = private constant [49 x i8] c"_initializer_18_dispatch_0_transpose_256x1024_i8\00", align 1
@20 = private constant [49 x i8] c"_initializer_19_dispatch_0_transpose_1024x256_i8\00", align 1
@21 = private constant [49 x i8] c"_initializer_20_dispatch_0_transpose_256x1024_i8\00", align 1
@22 = private constant [49 x i8] c"_initializer_21_dispatch_0_transpose_1024x256_i8\00", align 1
@23 = private constant [49 x i8] c"_initializer_22_dispatch_0_transpose_256x1024_i8\00", align 1
@24 = private constant [49 x i8] c"_initializer_23_dispatch_0_transpose_1024x256_i8\00", align 1
@25 = private constant [49 x i8] c"_initializer_24_dispatch_0_transpose_256x1024_i8\00", align 1
@26 = private constant [49 x i8] c"_initializer_25_dispatch_0_transpose_1024x256_i8\00", align 1
@27 = private constant [49 x i8] c"_initializer_26_dispatch_0_transpose_256x1024_i8\00", align 1
@28 = private constant [49 x i8] c"_initializer_27_dispatch_0_transpose_1024x256_i8\00", align 1
@29 = private constant [49 x i8] c"_initializer_28_dispatch_0_transpose_256x1024_i8\00", align 1
@30 = private constant [49 x i8] c"_initializer_29_dispatch_0_transpose_1024x512_i8\00", align 1
@31 = private constant [50 x i8] c"_initializer_30_dispatch_0_transpose_1024x2048_i8\00", align 1
@32 = private constant [49 x i8] c"_initializer_31_dispatch_0_transpose_512x2048_i8\00", align 1
@33 = private constant [49 x i8] c"_initializer_32_dispatch_0_transpose_2048x512_i8\00", align 1
@34 = private constant [49 x i8] c"_initializer_33_dispatch_0_transpose_512x2048_i8\00", align 1
@35 = private constant [49 x i8] c"_initializer_34_dispatch_0_transpose_2048x512_i8\00", align 1
@36 = private constant [49 x i8] c"_initializer_35_dispatch_0_transpose_512x2048_i8\00", align 1
@37 = private constant [50 x i8] c"_initializer_36_dispatch_0_transpose_2048x1000_i8\00", align 1
@38 = private constant [61 x i8] c"_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@39 = private constant [61 x i8] c"_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@40 = private constant [61 x i8] c"_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@41 = private constant [61 x i8] c"_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@42 = private constant [61 x i8] c"_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@43 = private constant [61 x i8] c"_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@44 = private constant [61 x i8] c"_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@45 = private constant [61 x i8] c"_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@46 = private constant [61 x i8] c"_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@47 = private constant [61 x i8] c"_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@48 = private constant [61 x i8] c"_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@49 = private constant [61 x i8] c"_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@50 = private constant [61 x i8] c"_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@51 = private constant [61 x i8] c"_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32\00", align 1
@52 = private constant [62 x i8] c"_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@53 = private constant [61 x i8] c"_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@54 = private constant [62 x i8] c"_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@55 = private constant [61 x i8] c"_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@56 = private constant [61 x i8] c"_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@57 = private constant [62 x i8] c"_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@58 = private constant [61 x i8] c"_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@59 = private constant [61 x i8] c"_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@60 = private constant [62 x i8] c"_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@61 = private constant [61 x i8] c"_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@62 = private constant [61 x i8] c"_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@63 = private constant [62 x i8] c"_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@64 = private constant [61 x i8] c"_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@65 = private constant [61 x i8] c"_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@66 = private constant [62 x i8] c"_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@67 = private constant [61 x i8] c"_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@68 = private constant [61 x i8] c"_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@69 = private constant [62 x i8] c"_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@70 = private constant [61 x i8] c"_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32\00", align 1
@71 = private constant [61 x i8] c"_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@72 = private constant [60 x i8] c"_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@73 = private constant [61 x i8] c"_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@74 = private constant [60 x i8] c"_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@75 = private constant [60 x i8] c"_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@76 = private constant [61 x i8] c"_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@77 = private constant [60 x i8] c"_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@78 = private constant [60 x i8] c"_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@79 = private constant [61 x i8] c"_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@80 = private constant [67 x i8] c"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8\00", align 1
@81 = private constant [63 x i8] c"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32\00", align 1
@82 = private constant [53 x i8] c"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8\00", align 1
@83 = private constant [58 x i8] c"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32\00", align 1
@84 = private constant [40 x i8] c"main_graph$async_dispatch_4_slow_memcpy\00", align 1
@85 = private constant [50 x i8] c"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32\00", align 1
@86 = private constant [56 x i8] c"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32\00", align 1
@87 = private constant [63 x i8] c"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32\00", align 1
@88 = private constant [40 x i8] c"main_graph$async_dispatch_8_slow_memcpy\00", align 1
@89 = private constant [52 x i8] c"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8\00", align 1
@90 = private constant [58 x i8] c"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32\00", align 1
@91 = private constant [64 x i8] c"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32\00", align 1
@92 = private constant [58 x i8] c"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32\00", align 1
@93 = private constant [58 x i8] c"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32\00", align 1
@94 = private constant [58 x i8] c"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32\00", align 1
@95 = private constant [53 x i8] c"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8\00", align 1
@96 = private constant [58 x i8] c"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32\00", align 1
@97 = private constant [64 x i8] c"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32\00", align 1
@98 = private constant [58 x i8] c"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32\00", align 1
@99 = private constant [58 x i8] c"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32\00", align 1
@100 = private constant [53 x i8] c"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8\00", align 1
@101 = private constant [58 x i8] c"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32\00", align 1
@102 = private constant [64 x i8] c"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32\00", align 1
@103 = private constant [58 x i8] c"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32\00", align 1
@104 = private constant [64 x i8] c"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32\00", align 1
@105 = private constant [59 x i8] c"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32\00", align 1
@106 = private constant [63 x i8] c"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32\00", align 1
@107 = private constant [50 x i8] c"main_graph$async_dispatch_29_generic_28x28x256_i8\00", align 1
@108 = private constant [41 x i8] c"main_graph$async_dispatch_30_slow_memcpy\00", align 1
@109 = private constant [54 x i8] c"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8\00", align 1
@110 = private constant [59 x i8] c"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32\00", align 1
@111 = private constant [63 x i8] c"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32\00", align 1
@112 = private constant [58 x i8] c"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32\00", align 1
@113 = private constant [58 x i8] c"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32\00", align 1
@114 = private constant [58 x i8] c"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32\00", align 1
@115 = private constant [41 x i8] c"main_graph$async_dispatch_37_slow_memcpy\00", align 1
@116 = private constant [54 x i8] c"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8\00", align 1
@117 = private constant [59 x i8] c"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32\00", align 1
@118 = private constant [63 x i8] c"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32\00", align 1
@119 = private constant [58 x i8] c"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32\00", align 1
@120 = private constant [58 x i8] c"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32\00", align 1
@121 = private constant [54 x i8] c"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8\00", align 1
@122 = private constant [59 x i8] c"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32\00", align 1
@123 = private constant [63 x i8] c"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32\00", align 1
@124 = private constant [58 x i8] c"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32\00", align 1
@125 = private constant [58 x i8] c"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32\00", align 1
@126 = private constant [54 x i8] c"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8\00", align 1
@127 = private constant [59 x i8] c"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32\00", align 1
@128 = private constant [63 x i8] c"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32\00", align 1
@129 = private constant [58 x i8] c"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32\00", align 1
@130 = private constant [58 x i8] c"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32\00", align 1
@131 = private constant [50 x i8] c"main_graph$async_dispatch_55_generic_14x14x512_i8\00", align 1
@132 = private constant [41 x i8] c"main_graph$async_dispatch_56_slow_memcpy\00", align 1
@133 = private constant [54 x i8] c"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8\00", align 1
@134 = private constant [59 x i8] c"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32\00", align 1
@135 = private constant [59 x i8] c"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32\00", align 1
@136 = private constant [59 x i8] c"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32\00", align 1
@137 = private constant [59 x i8] c"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32\00", align 1
@138 = private constant [41 x i8] c"main_graph$async_dispatch_62_slow_memcpy\00", align 1
@139 = private constant [54 x i8] c"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8\00", align 1
@140 = private constant [59 x i8] c"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32\00", align 1
@141 = private constant [59 x i8] c"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32\00", align 1
@142 = private constant [59 x i8] c"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32\00", align 1
@143 = private constant [54 x i8] c"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8\00", align 1
@144 = private constant [59 x i8] c"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32\00", align 1
@145 = private constant [59 x i8] c"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32\00", align 1
@146 = private constant [59 x i8] c"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32\00", align 1
@147 = private constant [54 x i8] c"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8\00", align 1
@148 = private constant [59 x i8] c"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32\00", align 1
@149 = private constant [59 x i8] c"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32\00", align 1
@150 = private constant [59 x i8] c"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32\00", align 1
@151 = private constant [54 x i8] c"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8\00", align 1
@152 = private constant [59 x i8] c"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32\00", align 1
@153 = private constant [59 x i8] c"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32\00", align 1
@154 = private constant [59 x i8] c"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32\00", align 1
@155 = private constant [54 x i8] c"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8\00", align 1
@156 = private constant [59 x i8] c"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32\00", align 1
@157 = private constant [59 x i8] c"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32\00", align 1
@158 = private constant [59 x i8] c"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32\00", align 1
@159 = private constant [49 x i8] c"main_graph$async_dispatch_87_generic_7x7x1024_i8\00", align 1
@160 = private constant [41 x i8] c"main_graph$async_dispatch_88_slow_memcpy\00", align 1
@161 = private constant [52 x i8] c"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8\00", align 1
@162 = private constant [58 x i8] c"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32\00", align 1
@163 = private constant [58 x i8] c"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32\00", align 1
@164 = private constant [59 x i8] c"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32\00", align 1
@165 = private constant [58 x i8] c"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32\00", align 1
@166 = private constant [41 x i8] c"main_graph$async_dispatch_94_slow_memcpy\00", align 1
@167 = private constant [52 x i8] c"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8\00", align 1
@168 = private constant [58 x i8] c"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32\00", align 1
@169 = private constant [58 x i8] c"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32\00", align 1
@170 = private constant [58 x i8] c"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32\00", align 1
@171 = private constant [53 x i8] c"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8\00", align 1
@172 = private constant [59 x i8] c"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32\00", align 1
@173 = private constant [59 x i8] c"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32\00", align 1
@174 = private constant [58 x i8] c"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32\00", align 1
@175 = private constant [59 x i8] c"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32\00", align 1
@176 = private constant [54 x i8] c"main_graph$async_dispatch_105_elementwise_1000_i8xf32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [176 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15, ptr @16, ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53, ptr @54, ptr @55, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164, ptr @165, ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174, ptr @175, ptr @176]
@177 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@178 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@179 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@180 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@181 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@182 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@183 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@184 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@185 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@186 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@187 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@188 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@189 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@190 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@191 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@192 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@193 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@194 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@195 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@196 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@197 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@198 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@199 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@200 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@201 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@202 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@203 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@204 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@205 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@206 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@207 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@208 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@209 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@210 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@211 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@212 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@213 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@214 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@215 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@216 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@217 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@218 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@219 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@220 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@221 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@222 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@223 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@224 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@225 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@226 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@227 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@228 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@229 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@230 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@231 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@232 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@233 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@234 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@235 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@236 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@237 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@238 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@239 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@240 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@241 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@242 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@243 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@244 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@245 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@246 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@247 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@248 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@249 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@250 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@251 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@252 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@253 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@254 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@255 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@256 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@257 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@258 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@259 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@260 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@261 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@262 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@263 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@264 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@265 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@266 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@267 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@268 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@269 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@270 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@271 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@272 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@273 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@274 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@275 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@276 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@277 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@278 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@279 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@280 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@281 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@282 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@283 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@284 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@285 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@286 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@287 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@288 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@289 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@290 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@291 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@292 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@293 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@294 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@295 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@296 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@297 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@298 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@299 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@300 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@301 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@302 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@303 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@304 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@305 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@306 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@307 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@308 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@309 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@310 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@311 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@312 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@313 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@314 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@315 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@316 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@317 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@318 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@319 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@320 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@321 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@322 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@323 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@324 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@325 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@326 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@327 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@328 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@329 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@330 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@331 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@332 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@333 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@334 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@335 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@336 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@337 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@338 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@339 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@340 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@341 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@342 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@343 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@344 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@345 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@346 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@347 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@348 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@349 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@350 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@351 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@352 = private constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [176 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 691, i32 61, ptr @177 }, %iree_hal_executable_source_location_v0_t { i32 692, i32 61, ptr @178 }, %iree_hal_executable_source_location_v0_t { i32 706, i32 61, ptr @179 }, %iree_hal_executable_source_location_v0_t { i32 715, i32 61, ptr @180 }, %iree_hal_executable_source_location_v0_t { i32 727, i32 61, ptr @181 }, %iree_hal_executable_source_location_v0_t { i32 736, i32 61, ptr @182 }, %iree_hal_executable_source_location_v0_t { i32 748, i32 61, ptr @183 }, %iree_hal_executable_source_location_v0_t { i32 757, i32 61, ptr @184 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @185 }, %iree_hal_executable_source_location_v0_t { i32 772, i32 61, ptr @186 }, %iree_hal_executable_source_location_v0_t { i32 781, i32 61, ptr @187 }, %iree_hal_executable_source_location_v0_t { i32 793, i32 61, ptr @188 }, %iree_hal_executable_source_location_v0_t { i32 802, i32 61, ptr @189 }, %iree_hal_executable_source_location_v0_t { i32 814, i32 61, ptr @190 }, %iree_hal_executable_source_location_v0_t { i32 823, i32 61, ptr @191 }, %iree_hal_executable_source_location_v0_t { i32 835, i32 61, ptr @192 }, %iree_hal_executable_source_location_v0_t { i32 844, i32 61, ptr @193 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @194 }, %iree_hal_executable_source_location_v0_t { i32 859, i32 61, ptr @195 }, %iree_hal_executable_source_location_v0_t { i32 868, i32 61, ptr @196 }, %iree_hal_executable_source_location_v0_t { i32 880, i32 61, ptr @197 }, %iree_hal_executable_source_location_v0_t { i32 889, i32 61, ptr @198 }, %iree_hal_executable_source_location_v0_t { i32 901, i32 61, ptr @199 }, %iree_hal_executable_source_location_v0_t { i32 910, i32 61, ptr @200 }, %iree_hal_executable_source_location_v0_t { i32 922, i32 61, ptr @201 }, %iree_hal_executable_source_location_v0_t { i32 931, i32 61, ptr @202 }, %iree_hal_executable_source_location_v0_t { i32 943, i32 61, ptr @203 }, %iree_hal_executable_source_location_v0_t { i32 952, i32 61, ptr @204 }, %iree_hal_executable_source_location_v0_t { i32 964, i32 61, ptr @205 }, %iree_hal_executable_source_location_v0_t { i32 973, i32 61, ptr @206 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @207 }, %iree_hal_executable_source_location_v0_t { i32 988, i32 61, ptr @208 }, %iree_hal_executable_source_location_v0_t { i32 997, i32 61, ptr @209 }, %iree_hal_executable_source_location_v0_t { i32 1009, i32 61, ptr @210 }, %iree_hal_executable_source_location_v0_t { i32 1018, i32 61, ptr @211 }, %iree_hal_executable_source_location_v0_t { i32 1030, i32 61, ptr @212 }, %iree_hal_executable_source_location_v0_t { i32 1045, i32 61, ptr @213 }, %iree_hal_executable_source_location_v0_t { i32 691, i32 61, ptr @214 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @215 }, %iree_hal_executable_source_location_v0_t { i32 715, i32 61, ptr @216 }, %iree_hal_executable_source_location_v0_t { i32 721, i32 61, ptr @217 }, %iree_hal_executable_source_location_v0_t { i32 736, i32 61, ptr @218 }, %iree_hal_executable_source_location_v0_t { i32 742, i32 61, ptr @219 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @220 }, %iree_hal_executable_source_location_v0_t { i32 781, i32 61, ptr @221 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @222 }, %iree_hal_executable_source_location_v0_t { i32 802, i32 61, ptr @223 }, %iree_hal_executable_source_location_v0_t { i32 808, i32 61, ptr @224 }, %iree_hal_executable_source_location_v0_t { i32 823, i32 61, ptr @225 }, %iree_hal_executable_source_location_v0_t { i32 829, i32 61, ptr @226 }, %iree_hal_executable_source_location_v0_t { i32 844, i32 61, ptr @227 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @228 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @229 }, %iree_hal_executable_source_location_v0_t { i32 859, i32 61, ptr @230 }, %iree_hal_executable_source_location_v0_t { i32 868, i32 61, ptr @231 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @232 }, %iree_hal_executable_source_location_v0_t { i32 880, i32 61, ptr @233 }, %iree_hal_executable_source_location_v0_t { i32 889, i32 61, ptr @234 }, %iree_hal_executable_source_location_v0_t { i32 895, i32 61, ptr @235 }, %iree_hal_executable_source_location_v0_t { i32 901, i32 61, ptr @236 }, %iree_hal_executable_source_location_v0_t { i32 910, i32 61, ptr @237 }, %iree_hal_executable_source_location_v0_t { i32 916, i32 61, ptr @238 }, %iree_hal_executable_source_location_v0_t { i32 922, i32 61, ptr @239 }, %iree_hal_executable_source_location_v0_t { i32 931, i32 61, ptr @240 }, %iree_hal_executable_source_location_v0_t { i32 937, i32 61, ptr @241 }, %iree_hal_executable_source_location_v0_t { i32 943, i32 61, ptr @242 }, %iree_hal_executable_source_location_v0_t { i32 952, i32 61, ptr @243 }, %iree_hal_executable_source_location_v0_t { i32 958, i32 61, ptr @244 }, %iree_hal_executable_source_location_v0_t { i32 964, i32 61, ptr @245 }, %iree_hal_executable_source_location_v0_t { i32 973, i32 61, ptr @246 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @247 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @248 }, %iree_hal_executable_source_location_v0_t { i32 988, i32 61, ptr @249 }, %iree_hal_executable_source_location_v0_t { i32 997, i32 61, ptr @250 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @251 }, %iree_hal_executable_source_location_v0_t { i32 1009, i32 61, ptr @252 }, %iree_hal_executable_source_location_v0_t { i32 1018, i32 61, ptr @253 }, %iree_hal_executable_source_location_v0_t { i32 1024, i32 61, ptr @254 }, %iree_hal_executable_source_location_v0_t { i32 1030, i32 61, ptr @255 }, %iree_hal_executable_source_location_v0_t { i32 574, i32 61, ptr @256 }, %iree_hal_executable_source_location_v0_t { i32 682, i32 61, ptr @257 }, %iree_hal_executable_source_location_v0_t { i32 682, i32 61, ptr @258 }, %iree_hal_executable_source_location_v0_t { i32 682, i32 61, ptr @259 }, %iree_hal_executable_source_location_v0_t { i32 688, i32 61, ptr @260 }, %iree_hal_executable_source_location_v0_t { i32 688, i32 61, ptr @261 }, %iree_hal_executable_source_location_v0_t { i32 691, i32 61, ptr @262 }, %iree_hal_executable_source_location_v0_t { i32 692, i32 61, ptr @263 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @264 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @265 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @266 }, %iree_hal_executable_source_location_v0_t { i32 706, i32 61, ptr @267 }, %iree_hal_executable_source_location_v0_t { i32 706, i32 61, ptr @268 }, %iree_hal_executable_source_location_v0_t { i32 692, i32 61, ptr @269 }, %iree_hal_executable_source_location_v0_t { i32 715, i32 61, ptr @270 }, %iree_hal_executable_source_location_v0_t { i32 721, i32 61, ptr @271 }, %iree_hal_executable_source_location_v0_t { i32 721, i32 61, ptr @272 }, %iree_hal_executable_source_location_v0_t { i32 727, i32 61, ptr @273 }, %iree_hal_executable_source_location_v0_t { i32 727, i32 61, ptr @274 }, %iree_hal_executable_source_location_v0_t { i32 736, i32 61, ptr @275 }, %iree_hal_executable_source_location_v0_t { i32 742, i32 61, ptr @276 }, %iree_hal_executable_source_location_v0_t { i32 742, i32 61, ptr @277 }, %iree_hal_executable_source_location_v0_t { i32 748, i32 61, ptr @278 }, %iree_hal_executable_source_location_v0_t { i32 748, i32 61, ptr @279 }, %iree_hal_executable_source_location_v0_t { i32 757, i32 61, ptr @280 }, %iree_hal_executable_source_location_v0_t { i32 757, i32 61, ptr @281 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @282 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @283 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @284 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @285 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @286 }, %iree_hal_executable_source_location_v0_t { i32 772, i32 61, ptr @287 }, %iree_hal_executable_source_location_v0_t { i32 772, i32 61, ptr @288 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @289 }, %iree_hal_executable_source_location_v0_t { i32 781, i32 61, ptr @290 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @291 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @292 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @293 }, %iree_hal_executable_source_location_v0_t { i32 793, i32 61, ptr @294 }, %iree_hal_executable_source_location_v0_t { i32 793, i32 61, ptr @295 }, %iree_hal_executable_source_location_v0_t { i32 802, i32 61, ptr @296 }, %iree_hal_executable_source_location_v0_t { i32 808, i32 61, ptr @297 }, %iree_hal_executable_source_location_v0_t { i32 808, i32 61, ptr @298 }, %iree_hal_executable_source_location_v0_t { i32 814, i32 61, ptr @299 }, %iree_hal_executable_source_location_v0_t { i32 814, i32 61, ptr @300 }, %iree_hal_executable_source_location_v0_t { i32 823, i32 61, ptr @301 }, %iree_hal_executable_source_location_v0_t { i32 829, i32 61, ptr @302 }, %iree_hal_executable_source_location_v0_t { i32 829, i32 61, ptr @303 }, %iree_hal_executable_source_location_v0_t { i32 835, i32 61, ptr @304 }, %iree_hal_executable_source_location_v0_t { i32 835, i32 61, ptr @305 }, %iree_hal_executable_source_location_v0_t { i32 844, i32 61, ptr @306 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @307 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @308 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @309 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @310 }, %iree_hal_executable_source_location_v0_t { i32 859, i32 61, ptr @311 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @312 }, %iree_hal_executable_source_location_v0_t { i32 868, i32 61, ptr @313 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @314 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @315 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @316 }, %iree_hal_executable_source_location_v0_t { i32 880, i32 61, ptr @317 }, %iree_hal_executable_source_location_v0_t { i32 889, i32 61, ptr @318 }, %iree_hal_executable_source_location_v0_t { i32 895, i32 61, ptr @319 }, %iree_hal_executable_source_location_v0_t { i32 895, i32 61, ptr @320 }, %iree_hal_executable_source_location_v0_t { i32 901, i32 61, ptr @321 }, %iree_hal_executable_source_location_v0_t { i32 910, i32 61, ptr @322 }, %iree_hal_executable_source_location_v0_t { i32 916, i32 61, ptr @323 }, %iree_hal_executable_source_location_v0_t { i32 916, i32 61, ptr @324 }, %iree_hal_executable_source_location_v0_t { i32 922, i32 61, ptr @325 }, %iree_hal_executable_source_location_v0_t { i32 931, i32 61, ptr @326 }, %iree_hal_executable_source_location_v0_t { i32 937, i32 61, ptr @327 }, %iree_hal_executable_source_location_v0_t { i32 937, i32 61, ptr @328 }, %iree_hal_executable_source_location_v0_t { i32 943, i32 61, ptr @329 }, %iree_hal_executable_source_location_v0_t { i32 952, i32 61, ptr @330 }, %iree_hal_executable_source_location_v0_t { i32 958, i32 61, ptr @331 }, %iree_hal_executable_source_location_v0_t { i32 958, i32 61, ptr @332 }, %iree_hal_executable_source_location_v0_t { i32 964, i32 61, ptr @333 }, %iree_hal_executable_source_location_v0_t { i32 973, i32 61, ptr @334 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @335 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @336 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @337 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @338 }, %iree_hal_executable_source_location_v0_t { i32 988, i32 61, ptr @339 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @340 }, %iree_hal_executable_source_location_v0_t { i32 997, i32 61, ptr @341 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @342 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @343 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @344 }, %iree_hal_executable_source_location_v0_t { i32 1009, i32 61, ptr @345 }, %iree_hal_executable_source_location_v0_t { i32 1018, i32 61, ptr @346 }, %iree_hal_executable_source_location_v0_t { i32 1024, i32 61, ptr @347 }, %iree_hal_executable_source_location_v0_t { i32 1024, i32 61, ptr @348 }, %iree_hal_executable_source_location_v0_t { i32 1030, i32 61, ptr @349 }, %iree_hal_executable_source_location_v0_t { i32 1039, i32 61, ptr @350 }, %iree_hal_executable_source_location_v0_t { i32 1045, i32 61, ptr @351 }, %iree_hal_executable_source_location_v0_t { i32 1047, i32 61, ptr @352 }]
@iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [176 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 176, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @_initializer_0_dispatch_0_transpose_64x64_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !178 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !254
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !254
  %6 = load ptr, ptr %5, align 8, !dbg !254
  %7 = getelementptr i8, ptr %6, i64 91136, !dbg !254
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !254
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !254
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !254
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !254
  %11 = load ptr, ptr %10, align 8, !dbg !254
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !254
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !254
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !254
  %14 = zext i32 %13 to i64, !dbg !254
  %15 = mul nsw i64 %14, 2, !dbg !254
  br label %16, !dbg !254

16:                                               ; preds = %32, %3
  %17 = phi i64 [ %33, %32 ], [ 0, %3 ], !dbg !254
  %18 = icmp slt i64 %17, 2, !dbg !254
  br i1 %18, label %19, label %34, !dbg !254

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %31, %22 ], [ 0, %16 ], !dbg !254
  %21 = icmp slt i64 %20, 64, !dbg !254
  br i1 %21, label %22, label %32, !dbg !254

22:                                               ; preds = %19
  %23 = add i64 %15, %17, !dbg !254
  %24 = mul nuw nsw i64 %20, 64, !dbg !254
  %25 = add nuw nsw i64 %24, %23, !dbg !254
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 %25, !dbg !254
  %27 = load i8, ptr %26, align 1, !dbg !254
  %28 = mul nuw nsw i64 %23, 64, !dbg !254
  %29 = add nuw nsw i64 %28, %20, !dbg !254
  %30 = getelementptr inbounds nuw i8, ptr %11, i64 %29, !dbg !254
  store i8 %27, ptr %30, align 1, !dbg !254
  %31 = add i64 %20, 1, !dbg !254
  br label %19, !dbg !254

32:                                               ; preds = %19
  %33 = add i64 %17, 1, !dbg !254
  br label %16, !dbg !254

34:                                               ; preds = %16
  ret i32 0, !dbg !254
}

define internal i32 @_initializer_1_dispatch_0_transpose_64x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !255 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !256
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !256
  %6 = load ptr, ptr %5, align 8, !dbg !256
  %7 = getelementptr i8, ptr %6, i64 95232, !dbg !256
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !256
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !256
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !256
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !256
  %11 = load ptr, ptr %10, align 8, !dbg !256
  %12 = getelementptr i8, ptr %11, i64 4096, !dbg !256
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !256
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !256
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !256
  %15 = zext i32 %14 to i64, !dbg !256
  %16 = sdiv i64 %15, 4, !dbg !256
  %17 = mul i64 %16, 4, !dbg !256
  %18 = icmp ne i64 %15, %17, !dbg !256
  %19 = icmp slt i64 %15, 0, !dbg !256
  %20 = and i1 %18, %19, !dbg !256
  %21 = add i64 %16, -1, !dbg !256
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !256
  %23 = srem i64 %15, 4, !dbg !256
  %24 = icmp slt i64 %23, 0, !dbg !256
  %25 = add nsw i64 %23, 4, !dbg !256
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !256
  %27 = mul nsw i64 %22, 8, !dbg !256
  %28 = mul nsw i64 %26, 64, !dbg !256
  br label %29, !dbg !256

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !256
  %31 = icmp slt i64 %30, 8, !dbg !256
  br i1 %31, label %32, label %48, !dbg !256

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !256
  %34 = icmp slt i64 %33, 64, !dbg !256
  br i1 %34, label %35, label %46, !dbg !256

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !256
  %37 = add i64 %27, %30, !dbg !256
  %38 = mul nuw nsw i64 %36, 64, !dbg !256
  %39 = add nuw nsw i64 %38, %37, !dbg !256
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !256
  %41 = load i8, ptr %40, align 1, !dbg !256
  %42 = mul nuw nsw i64 %37, 256, !dbg !256
  %43 = add nuw nsw i64 %42, %36, !dbg !256
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !256
  store i8 %41, ptr %44, align 1, !dbg !256
  %45 = add i64 %33, 1, !dbg !256
  br label %32, !dbg !256

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !256
  br label %29, !dbg !256

48:                                               ; preds = %29
  ret i32 0, !dbg !256
}

define internal i32 @_initializer_2_dispatch_0_transpose_64x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !257 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !258
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !258
  %6 = load ptr, ptr %5, align 8, !dbg !258
  %7 = getelementptr i8, ptr %6, i64 111616, !dbg !258
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !258
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !258
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !258
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !258
  %11 = load ptr, ptr %10, align 8, !dbg !258
  %12 = getelementptr i8, ptr %11, i64 20480, !dbg !258
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !258
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !258
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !258
  %15 = zext i32 %14 to i64, !dbg !258
  %16 = sdiv i64 %15, 4, !dbg !258
  %17 = mul i64 %16, 4, !dbg !258
  %18 = icmp ne i64 %15, %17, !dbg !258
  %19 = icmp slt i64 %15, 0, !dbg !258
  %20 = and i1 %18, %19, !dbg !258
  %21 = add i64 %16, -1, !dbg !258
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !258
  %23 = srem i64 %15, 4, !dbg !258
  %24 = icmp slt i64 %23, 0, !dbg !258
  %25 = add nsw i64 %23, 4, !dbg !258
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !258
  %27 = mul nsw i64 %22, 8, !dbg !258
  %28 = mul nsw i64 %26, 64, !dbg !258
  br label %29, !dbg !258

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !258
  %31 = icmp slt i64 %30, 8, !dbg !258
  br i1 %31, label %32, label %48, !dbg !258

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !258
  %34 = icmp slt i64 %33, 64, !dbg !258
  br i1 %34, label %35, label %46, !dbg !258

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !258
  %37 = add i64 %27, %30, !dbg !258
  %38 = mul nuw nsw i64 %36, 64, !dbg !258
  %39 = add nuw nsw i64 %38, %37, !dbg !258
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !258
  %41 = load i8, ptr %40, align 1, !dbg !258
  %42 = mul nuw nsw i64 %37, 256, !dbg !258
  %43 = add nuw nsw i64 %42, %36, !dbg !258
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !258
  store i8 %41, ptr %44, align 1, !dbg !258
  %45 = add i64 %33, 1, !dbg !258
  br label %32, !dbg !258

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !258
  br label %29, !dbg !258

48:                                               ; preds = %29
  ret i32 0, !dbg !258
}

define internal i32 @_initializer_3_dispatch_0_transpose_256x64_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !259 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !260
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !260
  %6 = load ptr, ptr %5, align 8, !dbg !260
  %7 = getelementptr i8, ptr %6, i64 128000, !dbg !260
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !260
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !260
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !260
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !260
  %11 = load ptr, ptr %10, align 8, !dbg !260
  %12 = getelementptr i8, ptr %11, i64 36864, !dbg !260
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !260
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !260
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !260
  %15 = zext i32 %14 to i64, !dbg !260
  %16 = mul nsw i64 %15, 8, !dbg !260
  br label %17, !dbg !260

17:                                               ; preds = %33, %3
  %18 = phi i64 [ %34, %33 ], [ 0, %3 ], !dbg !260
  %19 = icmp slt i64 %18, 8, !dbg !260
  br i1 %19, label %20, label %35, !dbg !260

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %32, %23 ], [ 0, %17 ], !dbg !260
  %22 = icmp slt i64 %21, 64, !dbg !260
  br i1 %22, label %23, label %33, !dbg !260

23:                                               ; preds = %20
  %24 = add i64 %16, %18, !dbg !260
  %25 = mul nuw nsw i64 %21, 256, !dbg !260
  %26 = add nuw nsw i64 %25, %24, !dbg !260
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 %26, !dbg !260
  %28 = load i8, ptr %27, align 1, !dbg !260
  %29 = mul nuw nsw i64 %24, 64, !dbg !260
  %30 = add nuw nsw i64 %29, %21, !dbg !260
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 %30, !dbg !260
  store i8 %28, ptr %31, align 1, !dbg !260
  %32 = add i64 %21, 1, !dbg !260
  br label %20, !dbg !260

33:                                               ; preds = %20
  %34 = add i64 %18, 1, !dbg !260
  br label %17, !dbg !260

35:                                               ; preds = %17
  ret i32 0, !dbg !260
}

define internal i32 @_initializer_4_dispatch_0_transpose_64x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !261 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !262
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !262
  %6 = load ptr, ptr %5, align 8, !dbg !262
  %7 = getelementptr i8, ptr %6, i64 144384, !dbg !262
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !262
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !262
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !262
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !262
  %11 = load ptr, ptr %10, align 8, !dbg !262
  %12 = getelementptr i8, ptr %11, i64 53248, !dbg !262
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !262
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !262
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !262
  %15 = zext i32 %14 to i64, !dbg !262
  %16 = sdiv i64 %15, 4, !dbg !262
  %17 = mul i64 %16, 4, !dbg !262
  %18 = icmp ne i64 %15, %17, !dbg !262
  %19 = icmp slt i64 %15, 0, !dbg !262
  %20 = and i1 %18, %19, !dbg !262
  %21 = add i64 %16, -1, !dbg !262
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !262
  %23 = srem i64 %15, 4, !dbg !262
  %24 = icmp slt i64 %23, 0, !dbg !262
  %25 = add nsw i64 %23, 4, !dbg !262
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !262
  %27 = mul nsw i64 %22, 8, !dbg !262
  %28 = mul nsw i64 %26, 64, !dbg !262
  br label %29, !dbg !262

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !262
  %31 = icmp slt i64 %30, 8, !dbg !262
  br i1 %31, label %32, label %48, !dbg !262

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !262
  %34 = icmp slt i64 %33, 64, !dbg !262
  br i1 %34, label %35, label %46, !dbg !262

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !262
  %37 = add i64 %27, %30, !dbg !262
  %38 = mul nuw nsw i64 %36, 64, !dbg !262
  %39 = add nuw nsw i64 %38, %37, !dbg !262
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !262
  %41 = load i8, ptr %40, align 1, !dbg !262
  %42 = mul nuw nsw i64 %37, 256, !dbg !262
  %43 = add nuw nsw i64 %42, %36, !dbg !262
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !262
  store i8 %41, ptr %44, align 1, !dbg !262
  %45 = add i64 %33, 1, !dbg !262
  br label %32, !dbg !262

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !262
  br label %29, !dbg !262

48:                                               ; preds = %29
  ret i32 0, !dbg !262
}

define internal i32 @_initializer_5_dispatch_0_transpose_256x64_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !263 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !264
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !264
  %6 = load ptr, ptr %5, align 8, !dbg !264
  %7 = getelementptr i8, ptr %6, i64 160768, !dbg !264
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !264
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !264
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !264
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !264
  %11 = load ptr, ptr %10, align 8, !dbg !264
  %12 = getelementptr i8, ptr %11, i64 69632, !dbg !264
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !264
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !264
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !264
  %15 = zext i32 %14 to i64, !dbg !264
  %16 = mul nsw i64 %15, 8, !dbg !264
  br label %17, !dbg !264

17:                                               ; preds = %33, %3
  %18 = phi i64 [ %34, %33 ], [ 0, %3 ], !dbg !264
  %19 = icmp slt i64 %18, 8, !dbg !264
  br i1 %19, label %20, label %35, !dbg !264

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %32, %23 ], [ 0, %17 ], !dbg !264
  %22 = icmp slt i64 %21, 64, !dbg !264
  br i1 %22, label %23, label %33, !dbg !264

23:                                               ; preds = %20
  %24 = add i64 %16, %18, !dbg !264
  %25 = mul nuw nsw i64 %21, 256, !dbg !264
  %26 = add nuw nsw i64 %25, %24, !dbg !264
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 %26, !dbg !264
  %28 = load i8, ptr %27, align 1, !dbg !264
  %29 = mul nuw nsw i64 %24, 64, !dbg !264
  %30 = add nuw nsw i64 %29, %21, !dbg !264
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 %30, !dbg !264
  store i8 %28, ptr %31, align 1, !dbg !264
  %32 = add i64 %21, 1, !dbg !264
  br label %20, !dbg !264

33:                                               ; preds = %20
  %34 = add i64 %18, 1, !dbg !264
  br label %17, !dbg !264

35:                                               ; preds = %17
  ret i32 0, !dbg !264
}

define internal i32 @_initializer_6_dispatch_0_transpose_64x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !265 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !266
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !266
  %6 = load ptr, ptr %5, align 8, !dbg !266
  %7 = getelementptr i8, ptr %6, i64 177152, !dbg !266
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !266
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !266
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !266
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !266
  %11 = load ptr, ptr %10, align 8, !dbg !266
  %12 = getelementptr i8, ptr %11, i64 86016, !dbg !266
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !266
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !266
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !266
  %15 = zext i32 %14 to i64, !dbg !266
  %16 = sdiv i64 %15, 4, !dbg !266
  %17 = mul i64 %16, 4, !dbg !266
  %18 = icmp ne i64 %15, %17, !dbg !266
  %19 = icmp slt i64 %15, 0, !dbg !266
  %20 = and i1 %18, %19, !dbg !266
  %21 = add i64 %16, -1, !dbg !266
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !266
  %23 = srem i64 %15, 4, !dbg !266
  %24 = icmp slt i64 %23, 0, !dbg !266
  %25 = add nsw i64 %23, 4, !dbg !266
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !266
  %27 = mul nsw i64 %22, 8, !dbg !266
  %28 = mul nsw i64 %26, 64, !dbg !266
  br label %29, !dbg !266

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !266
  %31 = icmp slt i64 %30, 8, !dbg !266
  br i1 %31, label %32, label %48, !dbg !266

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !266
  %34 = icmp slt i64 %33, 64, !dbg !266
  br i1 %34, label %35, label %46, !dbg !266

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !266
  %37 = add i64 %27, %30, !dbg !266
  %38 = mul nuw nsw i64 %36, 64, !dbg !266
  %39 = add nuw nsw i64 %38, %37, !dbg !266
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !266
  %41 = load i8, ptr %40, align 1, !dbg !266
  %42 = mul nuw nsw i64 %37, 256, !dbg !266
  %43 = add nuw nsw i64 %42, %36, !dbg !266
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !266
  store i8 %41, ptr %44, align 1, !dbg !266
  %45 = add i64 %33, 1, !dbg !266
  br label %32, !dbg !266

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !266
  br label %29, !dbg !266

48:                                               ; preds = %29
  ret i32 0, !dbg !266
}

define internal i32 @_initializer_7_dispatch_0_transpose_256x128_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !267 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !268
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !268
  %6 = load ptr, ptr %5, align 8, !dbg !268
  %7 = getelementptr i8, ptr %6, i64 193536, !dbg !268
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !268
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !268
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !268
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !268
  %11 = load ptr, ptr %10, align 8, !dbg !268
  %12 = getelementptr i8, ptr %11, i64 102400, !dbg !268
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !268
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !268
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !268
  %15 = zext i32 %14 to i64, !dbg !268
  %16 = sdiv i64 %15, 2, !dbg !268
  %17 = mul i64 %16, 2, !dbg !268
  %18 = icmp ne i64 %15, %17, !dbg !268
  %19 = icmp slt i64 %15, 0, !dbg !268
  %20 = and i1 %18, %19, !dbg !268
  %21 = add i64 %16, -1, !dbg !268
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !268
  %23 = srem i64 %15, 2, !dbg !268
  %24 = icmp slt i64 %23, 0, !dbg !268
  %25 = add nsw i64 %23, 2, !dbg !268
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !268
  %27 = mul nsw i64 %22, 16, !dbg !268
  %28 = mul nsw i64 %26, 64, !dbg !268
  br label %29, !dbg !268

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !268
  %31 = icmp slt i64 %30, 16, !dbg !268
  br i1 %31, label %32, label %48, !dbg !268

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !268
  %34 = icmp slt i64 %33, 64, !dbg !268
  br i1 %34, label %35, label %46, !dbg !268

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !268
  %37 = add i64 %27, %30, !dbg !268
  %38 = mul nuw nsw i64 %36, 256, !dbg !268
  %39 = add nuw nsw i64 %38, %37, !dbg !268
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !268
  %41 = load i8, ptr %40, align 1, !dbg !268
  %42 = mul nuw nsw i64 %37, 128, !dbg !268
  %43 = add nuw nsw i64 %42, %36, !dbg !268
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !268
  store i8 %41, ptr %44, align 1, !dbg !268
  %45 = add i64 %33, 1, !dbg !268
  br label %32, !dbg !268

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !268
  br label %29, !dbg !268

48:                                               ; preds = %29
  ret i32 0, !dbg !268
}

define internal i32 @_initializer_8_dispatch_0_transpose_256x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !269 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !270
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !270
  %6 = load ptr, ptr %5, align 8, !dbg !270
  %7 = getelementptr i8, ptr %6, i64 226304, !dbg !270
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !270
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !270
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !270
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !270
  %11 = load ptr, ptr %10, align 8, !dbg !270
  %12 = getelementptr i8, ptr %11, i64 135168, !dbg !270
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !270
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !270
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !270
  %15 = zext i32 %14 to i64, !dbg !270
  %16 = sdiv i64 %15, 8, !dbg !270
  %17 = mul i64 %16, 8, !dbg !270
  %18 = icmp ne i64 %15, %17, !dbg !270
  %19 = icmp slt i64 %15, 0, !dbg !270
  %20 = and i1 %18, %19, !dbg !270
  %21 = add i64 %16, -1, !dbg !270
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !270
  %23 = srem i64 %15, 8, !dbg !270
  %24 = icmp slt i64 %23, 0, !dbg !270
  %25 = add nsw i64 %23, 8, !dbg !270
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !270
  %27 = mul nsw i64 %22, 64, !dbg !270
  %28 = mul nsw i64 %26, 64, !dbg !270
  br label %29, !dbg !270

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !270
  %31 = icmp slt i64 %30, 64, !dbg !270
  br i1 %31, label %32, label %48, !dbg !270

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !270
  %34 = icmp slt i64 %33, 64, !dbg !270
  br i1 %34, label %35, label %46, !dbg !270

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !270
  %37 = add i64 %27, %30, !dbg !270
  %38 = mul nuw nsw i64 %36, 256, !dbg !270
  %39 = add nuw nsw i64 %38, %37, !dbg !270
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !270
  %41 = load i8, ptr %40, align 1, !dbg !270
  %42 = mul nuw nsw i64 %37, 512, !dbg !270
  %43 = add nuw nsw i64 %42, %36, !dbg !270
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !270
  store i8 %41, ptr %44, align 1, !dbg !270
  %45 = add i64 %33, 1, !dbg !270
  br label %32, !dbg !270

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !270
  br label %29, !dbg !270

48:                                               ; preds = %29
  ret i32 0, !dbg !270
}

define internal i32 @_initializer_9_dispatch_0_transpose_128x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !271 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !272
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !272
  %6 = load ptr, ptr %5, align 8, !dbg !272
  %7 = getelementptr i8, ptr %6, i64 357376, !dbg !272
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !272
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !272
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !272
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !272
  %11 = load ptr, ptr %10, align 8, !dbg !272
  %12 = getelementptr i8, ptr %11, i64 266240, !dbg !272
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !272
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !272
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !272
  %15 = zext i32 %14 to i64, !dbg !272
  %16 = sdiv i64 %15, 8, !dbg !272
  %17 = mul i64 %16, 8, !dbg !272
  %18 = icmp ne i64 %15, %17, !dbg !272
  %19 = icmp slt i64 %15, 0, !dbg !272
  %20 = and i1 %18, %19, !dbg !272
  %21 = add i64 %16, -1, !dbg !272
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !272
  %23 = srem i64 %15, 8, !dbg !272
  %24 = icmp slt i64 %23, 0, !dbg !272
  %25 = add nsw i64 %23, 8, !dbg !272
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !272
  %27 = mul nsw i64 %22, 32, !dbg !272
  %28 = mul nsw i64 %26, 64, !dbg !272
  br label %29, !dbg !272

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !272
  %31 = icmp slt i64 %30, 32, !dbg !272
  br i1 %31, label %32, label %48, !dbg !272

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !272
  %34 = icmp slt i64 %33, 64, !dbg !272
  br i1 %34, label %35, label %46, !dbg !272

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !272
  %37 = add i64 %27, %30, !dbg !272
  %38 = mul nuw nsw i64 %36, 128, !dbg !272
  %39 = add nuw nsw i64 %38, %37, !dbg !272
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !272
  %41 = load i8, ptr %40, align 1, !dbg !272
  %42 = mul nuw nsw i64 %37, 512, !dbg !272
  %43 = add nuw nsw i64 %42, %36, !dbg !272
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !272
  store i8 %41, ptr %44, align 1, !dbg !272
  %45 = add i64 %33, 1, !dbg !272
  br label %32, !dbg !272

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !272
  br label %29, !dbg !272

48:                                               ; preds = %29
  ret i32 0, !dbg !272
}

define internal i32 @_initializer_10_dispatch_0_transpose_512x128_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !273 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !274
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !274
  %6 = load ptr, ptr %5, align 8, !dbg !274
  %7 = getelementptr i8, ptr %6, i64 422912, !dbg !274
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !274
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !274
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !274
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !274
  %11 = load ptr, ptr %10, align 8, !dbg !274
  %12 = getelementptr i8, ptr %11, i64 331776, !dbg !274
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !274
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !274
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !274
  %15 = zext i32 %14 to i64, !dbg !274
  %16 = sdiv i64 %15, 2, !dbg !274
  %17 = mul i64 %16, 2, !dbg !274
  %18 = icmp ne i64 %15, %17, !dbg !274
  %19 = icmp slt i64 %15, 0, !dbg !274
  %20 = and i1 %18, %19, !dbg !274
  %21 = add i64 %16, -1, !dbg !274
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !274
  %23 = srem i64 %15, 2, !dbg !274
  %24 = icmp slt i64 %23, 0, !dbg !274
  %25 = add nsw i64 %23, 2, !dbg !274
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !274
  %27 = mul nsw i64 %22, 32, !dbg !274
  %28 = mul nsw i64 %26, 64, !dbg !274
  br label %29, !dbg !274

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !274
  %31 = icmp slt i64 %30, 32, !dbg !274
  br i1 %31, label %32, label %48, !dbg !274

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !274
  %34 = icmp slt i64 %33, 64, !dbg !274
  br i1 %34, label %35, label %46, !dbg !274

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !274
  %37 = add i64 %27, %30, !dbg !274
  %38 = mul nuw nsw i64 %36, 512, !dbg !274
  %39 = add nuw nsw i64 %38, %37, !dbg !274
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !274
  %41 = load i8, ptr %40, align 1, !dbg !274
  %42 = mul nuw nsw i64 %37, 128, !dbg !274
  %43 = add nuw nsw i64 %42, %36, !dbg !274
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !274
  store i8 %41, ptr %44, align 1, !dbg !274
  %45 = add i64 %33, 1, !dbg !274
  br label %32, !dbg !274

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !274
  br label %29, !dbg !274

48:                                               ; preds = %29
  ret i32 0, !dbg !274
}

define internal i32 @_initializer_11_dispatch_0_transpose_128x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !275 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !276
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !276
  %6 = load ptr, ptr %5, align 8, !dbg !276
  %7 = getelementptr i8, ptr %6, i64 488448, !dbg !276
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !276
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !276
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !276
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !276
  %11 = load ptr, ptr %10, align 8, !dbg !276
  %12 = getelementptr i8, ptr %11, i64 397312, !dbg !276
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !276
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !276
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !276
  %15 = zext i32 %14 to i64, !dbg !276
  %16 = sdiv i64 %15, 8, !dbg !276
  %17 = mul i64 %16, 8, !dbg !276
  %18 = icmp ne i64 %15, %17, !dbg !276
  %19 = icmp slt i64 %15, 0, !dbg !276
  %20 = and i1 %18, %19, !dbg !276
  %21 = add i64 %16, -1, !dbg !276
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !276
  %23 = srem i64 %15, 8, !dbg !276
  %24 = icmp slt i64 %23, 0, !dbg !276
  %25 = add nsw i64 %23, 8, !dbg !276
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !276
  %27 = mul nsw i64 %22, 32, !dbg !276
  %28 = mul nsw i64 %26, 64, !dbg !276
  br label %29, !dbg !276

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !276
  %31 = icmp slt i64 %30, 32, !dbg !276
  br i1 %31, label %32, label %48, !dbg !276

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !276
  %34 = icmp slt i64 %33, 64, !dbg !276
  br i1 %34, label %35, label %46, !dbg !276

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !276
  %37 = add i64 %27, %30, !dbg !276
  %38 = mul nuw nsw i64 %36, 128, !dbg !276
  %39 = add nuw nsw i64 %38, %37, !dbg !276
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !276
  %41 = load i8, ptr %40, align 1, !dbg !276
  %42 = mul nuw nsw i64 %37, 512, !dbg !276
  %43 = add nuw nsw i64 %42, %36, !dbg !276
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !276
  store i8 %41, ptr %44, align 1, !dbg !276
  %45 = add i64 %33, 1, !dbg !276
  br label %32, !dbg !276

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !276
  br label %29, !dbg !276

48:                                               ; preds = %29
  ret i32 0, !dbg !276
}

define internal i32 @_initializer_12_dispatch_0_transpose_512x128_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !277 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !278
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !278
  %6 = load ptr, ptr %5, align 8, !dbg !278
  %7 = getelementptr i8, ptr %6, i64 553984, !dbg !278
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !278
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !278
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !278
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !278
  %11 = load ptr, ptr %10, align 8, !dbg !278
  %12 = getelementptr i8, ptr %11, i64 462848, !dbg !278
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !278
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !278
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !278
  %15 = zext i32 %14 to i64, !dbg !278
  %16 = sdiv i64 %15, 2, !dbg !278
  %17 = mul i64 %16, 2, !dbg !278
  %18 = icmp ne i64 %15, %17, !dbg !278
  %19 = icmp slt i64 %15, 0, !dbg !278
  %20 = and i1 %18, %19, !dbg !278
  %21 = add i64 %16, -1, !dbg !278
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !278
  %23 = srem i64 %15, 2, !dbg !278
  %24 = icmp slt i64 %23, 0, !dbg !278
  %25 = add nsw i64 %23, 2, !dbg !278
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !278
  %27 = mul nsw i64 %22, 32, !dbg !278
  %28 = mul nsw i64 %26, 64, !dbg !278
  br label %29, !dbg !278

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !278
  %31 = icmp slt i64 %30, 32, !dbg !278
  br i1 %31, label %32, label %48, !dbg !278

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !278
  %34 = icmp slt i64 %33, 64, !dbg !278
  br i1 %34, label %35, label %46, !dbg !278

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !278
  %37 = add i64 %27, %30, !dbg !278
  %38 = mul nuw nsw i64 %36, 512, !dbg !278
  %39 = add nuw nsw i64 %38, %37, !dbg !278
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !278
  %41 = load i8, ptr %40, align 1, !dbg !278
  %42 = mul nuw nsw i64 %37, 128, !dbg !278
  %43 = add nuw nsw i64 %42, %36, !dbg !278
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !278
  store i8 %41, ptr %44, align 1, !dbg !278
  %45 = add i64 %33, 1, !dbg !278
  br label %32, !dbg !278

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !278
  br label %29, !dbg !278

48:                                               ; preds = %29
  ret i32 0, !dbg !278
}

define internal i32 @_initializer_13_dispatch_0_transpose_128x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !279 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !280
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !280
  %6 = load ptr, ptr %5, align 8, !dbg !280
  %7 = getelementptr i8, ptr %6, i64 619520, !dbg !280
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !280
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !280
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !280
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !280
  %11 = load ptr, ptr %10, align 8, !dbg !280
  %12 = getelementptr i8, ptr %11, i64 528384, !dbg !280
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !280
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !280
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !280
  %15 = zext i32 %14 to i64, !dbg !280
  %16 = sdiv i64 %15, 8, !dbg !280
  %17 = mul i64 %16, 8, !dbg !280
  %18 = icmp ne i64 %15, %17, !dbg !280
  %19 = icmp slt i64 %15, 0, !dbg !280
  %20 = and i1 %18, %19, !dbg !280
  %21 = add i64 %16, -1, !dbg !280
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !280
  %23 = srem i64 %15, 8, !dbg !280
  %24 = icmp slt i64 %23, 0, !dbg !280
  %25 = add nsw i64 %23, 8, !dbg !280
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !280
  %27 = mul nsw i64 %22, 32, !dbg !280
  %28 = mul nsw i64 %26, 64, !dbg !280
  br label %29, !dbg !280

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !280
  %31 = icmp slt i64 %30, 32, !dbg !280
  br i1 %31, label %32, label %48, !dbg !280

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !280
  %34 = icmp slt i64 %33, 64, !dbg !280
  br i1 %34, label %35, label %46, !dbg !280

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !280
  %37 = add i64 %27, %30, !dbg !280
  %38 = mul nuw nsw i64 %36, 128, !dbg !280
  %39 = add nuw nsw i64 %38, %37, !dbg !280
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !280
  %41 = load i8, ptr %40, align 1, !dbg !280
  %42 = mul nuw nsw i64 %37, 512, !dbg !280
  %43 = add nuw nsw i64 %42, %36, !dbg !280
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !280
  store i8 %41, ptr %44, align 1, !dbg !280
  %45 = add i64 %33, 1, !dbg !280
  br label %32, !dbg !280

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !280
  br label %29, !dbg !280

48:                                               ; preds = %29
  ret i32 0, !dbg !280
}

define internal i32 @_initializer_14_dispatch_0_transpose_512x128_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !281 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !282
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !282
  %6 = load ptr, ptr %5, align 8, !dbg !282
  %7 = getelementptr i8, ptr %6, i64 685056, !dbg !282
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !282
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !282
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !282
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !282
  %11 = load ptr, ptr %10, align 8, !dbg !282
  %12 = getelementptr i8, ptr %11, i64 593920, !dbg !282
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !282
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !282
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !282
  %15 = zext i32 %14 to i64, !dbg !282
  %16 = sdiv i64 %15, 2, !dbg !282
  %17 = mul i64 %16, 2, !dbg !282
  %18 = icmp ne i64 %15, %17, !dbg !282
  %19 = icmp slt i64 %15, 0, !dbg !282
  %20 = and i1 %18, %19, !dbg !282
  %21 = add i64 %16, -1, !dbg !282
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !282
  %23 = srem i64 %15, 2, !dbg !282
  %24 = icmp slt i64 %23, 0, !dbg !282
  %25 = add nsw i64 %23, 2, !dbg !282
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !282
  %27 = mul nsw i64 %22, 32, !dbg !282
  %28 = mul nsw i64 %26, 64, !dbg !282
  br label %29, !dbg !282

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !282
  %31 = icmp slt i64 %30, 32, !dbg !282
  br i1 %31, label %32, label %48, !dbg !282

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !282
  %34 = icmp slt i64 %33, 64, !dbg !282
  br i1 %34, label %35, label %46, !dbg !282

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !282
  %37 = add i64 %27, %30, !dbg !282
  %38 = mul nuw nsw i64 %36, 512, !dbg !282
  %39 = add nuw nsw i64 %38, %37, !dbg !282
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !282
  %41 = load i8, ptr %40, align 1, !dbg !282
  %42 = mul nuw nsw i64 %37, 128, !dbg !282
  %43 = add nuw nsw i64 %42, %36, !dbg !282
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !282
  store i8 %41, ptr %44, align 1, !dbg !282
  %45 = add i64 %33, 1, !dbg !282
  br label %32, !dbg !282

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !282
  br label %29, !dbg !282

48:                                               ; preds = %29
  ret i32 0, !dbg !282
}

define internal i32 @_initializer_15_dispatch_0_transpose_128x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !283 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !284
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !284
  %6 = load ptr, ptr %5, align 8, !dbg !284
  %7 = getelementptr i8, ptr %6, i64 750592, !dbg !284
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !284
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !284
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !284
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !284
  %11 = load ptr, ptr %10, align 8, !dbg !284
  %12 = getelementptr i8, ptr %11, i64 659456, !dbg !284
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !284
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !284
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !284
  %15 = zext i32 %14 to i64, !dbg !284
  %16 = sdiv i64 %15, 8, !dbg !284
  %17 = mul i64 %16, 8, !dbg !284
  %18 = icmp ne i64 %15, %17, !dbg !284
  %19 = icmp slt i64 %15, 0, !dbg !284
  %20 = and i1 %18, %19, !dbg !284
  %21 = add i64 %16, -1, !dbg !284
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !284
  %23 = srem i64 %15, 8, !dbg !284
  %24 = icmp slt i64 %23, 0, !dbg !284
  %25 = add nsw i64 %23, 8, !dbg !284
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !284
  %27 = mul nsw i64 %22, 32, !dbg !284
  %28 = mul nsw i64 %26, 64, !dbg !284
  br label %29, !dbg !284

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !284
  %31 = icmp slt i64 %30, 32, !dbg !284
  br i1 %31, label %32, label %48, !dbg !284

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !284
  %34 = icmp slt i64 %33, 64, !dbg !284
  br i1 %34, label %35, label %46, !dbg !284

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !284
  %37 = add i64 %27, %30, !dbg !284
  %38 = mul nuw nsw i64 %36, 128, !dbg !284
  %39 = add nuw nsw i64 %38, %37, !dbg !284
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !284
  %41 = load i8, ptr %40, align 1, !dbg !284
  %42 = mul nuw nsw i64 %37, 512, !dbg !284
  %43 = add nuw nsw i64 %42, %36, !dbg !284
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !284
  store i8 %41, ptr %44, align 1, !dbg !284
  %45 = add i64 %33, 1, !dbg !284
  br label %32, !dbg !284

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !284
  br label %29, !dbg !284

48:                                               ; preds = %29
  ret i32 0, !dbg !284
}

define internal i32 @_initializer_16_dispatch_0_transpose_512x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !285 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !286
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !286
  %6 = load ptr, ptr %5, align 8, !dbg !286
  %7 = getelementptr i8, ptr %6, i64 816128, !dbg !286
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !286
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !286
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !286
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !286
  %11 = load ptr, ptr %10, align 8, !dbg !286
  %12 = getelementptr i8, ptr %11, i64 724992, !dbg !286
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !286
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !286
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !286
  %15 = zext i32 %14 to i64, !dbg !286
  %16 = sdiv i64 %15, 4, !dbg !286
  %17 = mul i64 %16, 4, !dbg !286
  %18 = icmp ne i64 %15, %17, !dbg !286
  %19 = icmp slt i64 %15, 0, !dbg !286
  %20 = and i1 %18, %19, !dbg !286
  %21 = add i64 %16, -1, !dbg !286
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !286
  %23 = srem i64 %15, 4, !dbg !286
  %24 = icmp slt i64 %23, 0, !dbg !286
  %25 = add nsw i64 %23, 4, !dbg !286
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !286
  %27 = mul nsw i64 %22, 64, !dbg !286
  %28 = mul nsw i64 %26, 64, !dbg !286
  br label %29, !dbg !286

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !286
  %31 = icmp slt i64 %30, 64, !dbg !286
  br i1 %31, label %32, label %48, !dbg !286

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !286
  %34 = icmp slt i64 %33, 64, !dbg !286
  br i1 %34, label %35, label %46, !dbg !286

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !286
  %37 = add i64 %27, %30, !dbg !286
  %38 = mul nuw nsw i64 %36, 512, !dbg !286
  %39 = add nuw nsw i64 %38, %37, !dbg !286
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !286
  %41 = load i8, ptr %40, align 1, !dbg !286
  %42 = mul nuw nsw i64 %37, 256, !dbg !286
  %43 = add nuw nsw i64 %42, %36, !dbg !286
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !286
  store i8 %41, ptr %44, align 1, !dbg !286
  %45 = add i64 %33, 1, !dbg !286
  br label %32, !dbg !286

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !286
  br label %29, !dbg !286

48:                                               ; preds = %29
  ret i32 0, !dbg !286
}

define internal i32 @_initializer_17_dispatch_0_transpose_512x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !287 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !288
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !288
  %6 = load ptr, ptr %5, align 8, !dbg !288
  %7 = getelementptr i8, ptr %6, i64 947200, !dbg !288
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !288
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !288
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !288
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !288
  %11 = load ptr, ptr %10, align 8, !dbg !288
  %12 = getelementptr i8, ptr %11, i64 856064, !dbg !288
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !288
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !288
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !288
  %15 = zext i32 %14 to i64, !dbg !288
  %16 = sdiv i64 %15, 16, !dbg !288
  %17 = mul i64 %16, 16, !dbg !288
  %18 = icmp ne i64 %15, %17, !dbg !288
  %19 = icmp slt i64 %15, 0, !dbg !288
  %20 = and i1 %18, %19, !dbg !288
  %21 = add i64 %16, -1, !dbg !288
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !288
  %23 = srem i64 %15, 16, !dbg !288
  %24 = icmp slt i64 %23, 0, !dbg !288
  %25 = add nsw i64 %23, 16, !dbg !288
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !288
  %27 = mul nsw i64 %22, 64, !dbg !288
  %28 = mul nsw i64 %26, 64, !dbg !288
  br label %29, !dbg !288

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !288
  %31 = icmp slt i64 %30, 64, !dbg !288
  br i1 %31, label %32, label %48, !dbg !288

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !288
  %34 = icmp slt i64 %33, 64, !dbg !288
  br i1 %34, label %35, label %46, !dbg !288

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !288
  %37 = add i64 %27, %30, !dbg !288
  %38 = mul nuw nsw i64 %36, 512, !dbg !288
  %39 = add nuw nsw i64 %38, %37, !dbg !288
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !288
  %41 = load i8, ptr %40, align 1, !dbg !288
  %42 = mul nuw nsw i64 %37, 1024, !dbg !288
  %43 = add nuw nsw i64 %42, %36, !dbg !288
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !288
  store i8 %41, ptr %44, align 1, !dbg !288
  %45 = add i64 %33, 1, !dbg !288
  br label %32, !dbg !288

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !288
  br label %29, !dbg !288

48:                                               ; preds = %29
  ret i32 0, !dbg !288
}

define internal i32 @_initializer_18_dispatch_0_transpose_256x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !289 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !290
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !290
  %6 = load ptr, ptr %5, align 8, !dbg !290
  %7 = getelementptr i8, ptr %6, i64 1471488, !dbg !290
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !290
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !290
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !290
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !290
  %11 = load ptr, ptr %10, align 8, !dbg !290
  %12 = getelementptr i8, ptr %11, i64 1380352, !dbg !290
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !290
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !290
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !290
  %15 = zext i32 %14 to i64, !dbg !290
  %16 = sdiv i64 %15, 16, !dbg !290
  %17 = mul i64 %16, 16, !dbg !290
  %18 = icmp ne i64 %15, %17, !dbg !290
  %19 = icmp slt i64 %15, 0, !dbg !290
  %20 = and i1 %18, %19, !dbg !290
  %21 = add i64 %16, -1, !dbg !290
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !290
  %23 = srem i64 %15, 16, !dbg !290
  %24 = icmp slt i64 %23, 0, !dbg !290
  %25 = add nsw i64 %23, 16, !dbg !290
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !290
  %27 = mul nsw i64 %22, 64, !dbg !290
  %28 = mul nsw i64 %26, 64, !dbg !290
  br label %29, !dbg !290

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !290
  %31 = icmp slt i64 %30, 64, !dbg !290
  br i1 %31, label %32, label %48, !dbg !290

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !290
  %34 = icmp slt i64 %33, 64, !dbg !290
  br i1 %34, label %35, label %46, !dbg !290

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !290
  %37 = add i64 %27, %30, !dbg !290
  %38 = mul nuw nsw i64 %36, 256, !dbg !290
  %39 = add nuw nsw i64 %38, %37, !dbg !290
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !290
  %41 = load i8, ptr %40, align 1, !dbg !290
  %42 = mul nuw nsw i64 %37, 1024, !dbg !290
  %43 = add nuw nsw i64 %42, %36, !dbg !290
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !290
  store i8 %41, ptr %44, align 1, !dbg !290
  %45 = add i64 %33, 1, !dbg !290
  br label %32, !dbg !290

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !290
  br label %29, !dbg !290

48:                                               ; preds = %29
  ret i32 0, !dbg !290
}

define internal i32 @_initializer_19_dispatch_0_transpose_1024x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !291 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !292
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !292
  %6 = load ptr, ptr %5, align 8, !dbg !292
  %7 = getelementptr i8, ptr %6, i64 1733632, !dbg !292
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !292
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !292
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !292
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !292
  %11 = load ptr, ptr %10, align 8, !dbg !292
  %12 = getelementptr i8, ptr %11, i64 1642496, !dbg !292
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !292
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !292
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !292
  %15 = zext i32 %14 to i64, !dbg !292
  %16 = sdiv i64 %15, 4, !dbg !292
  %17 = mul i64 %16, 4, !dbg !292
  %18 = icmp ne i64 %15, %17, !dbg !292
  %19 = icmp slt i64 %15, 0, !dbg !292
  %20 = and i1 %18, %19, !dbg !292
  %21 = add i64 %16, -1, !dbg !292
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !292
  %23 = srem i64 %15, 4, !dbg !292
  %24 = icmp slt i64 %23, 0, !dbg !292
  %25 = add nsw i64 %23, 4, !dbg !292
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !292
  %27 = mul nsw i64 %22, 64, !dbg !292
  %28 = mul nsw i64 %26, 64, !dbg !292
  br label %29, !dbg !292

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !292
  %31 = icmp slt i64 %30, 64, !dbg !292
  br i1 %31, label %32, label %48, !dbg !292

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !292
  %34 = icmp slt i64 %33, 64, !dbg !292
  br i1 %34, label %35, label %46, !dbg !292

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !292
  %37 = add i64 %27, %30, !dbg !292
  %38 = mul nuw nsw i64 %36, 1024, !dbg !292
  %39 = add nuw nsw i64 %38, %37, !dbg !292
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !292
  %41 = load i8, ptr %40, align 1, !dbg !292
  %42 = mul nuw nsw i64 %37, 256, !dbg !292
  %43 = add nuw nsw i64 %42, %36, !dbg !292
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !292
  store i8 %41, ptr %44, align 1, !dbg !292
  %45 = add i64 %33, 1, !dbg !292
  br label %32, !dbg !292

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !292
  br label %29, !dbg !292

48:                                               ; preds = %29
  ret i32 0, !dbg !292
}

define internal i32 @_initializer_20_dispatch_0_transpose_256x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !293 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !294
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !294
  %6 = load ptr, ptr %5, align 8, !dbg !294
  %7 = getelementptr i8, ptr %6, i64 1995776, !dbg !294
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !294
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !294
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !294
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !294
  %11 = load ptr, ptr %10, align 8, !dbg !294
  %12 = getelementptr i8, ptr %11, i64 1904640, !dbg !294
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !294
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !294
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !294
  %15 = zext i32 %14 to i64, !dbg !294
  %16 = sdiv i64 %15, 16, !dbg !294
  %17 = mul i64 %16, 16, !dbg !294
  %18 = icmp ne i64 %15, %17, !dbg !294
  %19 = icmp slt i64 %15, 0, !dbg !294
  %20 = and i1 %18, %19, !dbg !294
  %21 = add i64 %16, -1, !dbg !294
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !294
  %23 = srem i64 %15, 16, !dbg !294
  %24 = icmp slt i64 %23, 0, !dbg !294
  %25 = add nsw i64 %23, 16, !dbg !294
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !294
  %27 = mul nsw i64 %22, 64, !dbg !294
  %28 = mul nsw i64 %26, 64, !dbg !294
  br label %29, !dbg !294

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !294
  %31 = icmp slt i64 %30, 64, !dbg !294
  br i1 %31, label %32, label %48, !dbg !294

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !294
  %34 = icmp slt i64 %33, 64, !dbg !294
  br i1 %34, label %35, label %46, !dbg !294

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !294
  %37 = add i64 %27, %30, !dbg !294
  %38 = mul nuw nsw i64 %36, 256, !dbg !294
  %39 = add nuw nsw i64 %38, %37, !dbg !294
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !294
  %41 = load i8, ptr %40, align 1, !dbg !294
  %42 = mul nuw nsw i64 %37, 1024, !dbg !294
  %43 = add nuw nsw i64 %42, %36, !dbg !294
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !294
  store i8 %41, ptr %44, align 1, !dbg !294
  %45 = add i64 %33, 1, !dbg !294
  br label %32, !dbg !294

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !294
  br label %29, !dbg !294

48:                                               ; preds = %29
  ret i32 0, !dbg !294
}

define internal i32 @_initializer_21_dispatch_0_transpose_1024x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !295 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !296
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !296
  %6 = load ptr, ptr %5, align 8, !dbg !296
  %7 = getelementptr i8, ptr %6, i64 2257920, !dbg !296
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !296
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !296
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !296
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !296
  %11 = load ptr, ptr %10, align 8, !dbg !296
  %12 = getelementptr i8, ptr %11, i64 2166784, !dbg !296
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !296
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !296
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !296
  %15 = zext i32 %14 to i64, !dbg !296
  %16 = sdiv i64 %15, 4, !dbg !296
  %17 = mul i64 %16, 4, !dbg !296
  %18 = icmp ne i64 %15, %17, !dbg !296
  %19 = icmp slt i64 %15, 0, !dbg !296
  %20 = and i1 %18, %19, !dbg !296
  %21 = add i64 %16, -1, !dbg !296
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !296
  %23 = srem i64 %15, 4, !dbg !296
  %24 = icmp slt i64 %23, 0, !dbg !296
  %25 = add nsw i64 %23, 4, !dbg !296
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !296
  %27 = mul nsw i64 %22, 64, !dbg !296
  %28 = mul nsw i64 %26, 64, !dbg !296
  br label %29, !dbg !296

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !296
  %31 = icmp slt i64 %30, 64, !dbg !296
  br i1 %31, label %32, label %48, !dbg !296

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !296
  %34 = icmp slt i64 %33, 64, !dbg !296
  br i1 %34, label %35, label %46, !dbg !296

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !296
  %37 = add i64 %27, %30, !dbg !296
  %38 = mul nuw nsw i64 %36, 1024, !dbg !296
  %39 = add nuw nsw i64 %38, %37, !dbg !296
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !296
  %41 = load i8, ptr %40, align 1, !dbg !296
  %42 = mul nuw nsw i64 %37, 256, !dbg !296
  %43 = add nuw nsw i64 %42, %36, !dbg !296
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !296
  store i8 %41, ptr %44, align 1, !dbg !296
  %45 = add i64 %33, 1, !dbg !296
  br label %32, !dbg !296

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !296
  br label %29, !dbg !296

48:                                               ; preds = %29
  ret i32 0, !dbg !296
}

define internal i32 @_initializer_22_dispatch_0_transpose_256x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !297 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !298
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !298
  %6 = load ptr, ptr %5, align 8, !dbg !298
  %7 = getelementptr i8, ptr %6, i64 2520064, !dbg !298
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !298
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !298
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !298
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !298
  %11 = load ptr, ptr %10, align 8, !dbg !298
  %12 = getelementptr i8, ptr %11, i64 2428928, !dbg !298
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !298
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !298
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !298
  %15 = zext i32 %14 to i64, !dbg !298
  %16 = sdiv i64 %15, 16, !dbg !298
  %17 = mul i64 %16, 16, !dbg !298
  %18 = icmp ne i64 %15, %17, !dbg !298
  %19 = icmp slt i64 %15, 0, !dbg !298
  %20 = and i1 %18, %19, !dbg !298
  %21 = add i64 %16, -1, !dbg !298
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !298
  %23 = srem i64 %15, 16, !dbg !298
  %24 = icmp slt i64 %23, 0, !dbg !298
  %25 = add nsw i64 %23, 16, !dbg !298
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !298
  %27 = mul nsw i64 %22, 64, !dbg !298
  %28 = mul nsw i64 %26, 64, !dbg !298
  br label %29, !dbg !298

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !298
  %31 = icmp slt i64 %30, 64, !dbg !298
  br i1 %31, label %32, label %48, !dbg !298

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !298
  %34 = icmp slt i64 %33, 64, !dbg !298
  br i1 %34, label %35, label %46, !dbg !298

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !298
  %37 = add i64 %27, %30, !dbg !298
  %38 = mul nuw nsw i64 %36, 256, !dbg !298
  %39 = add nuw nsw i64 %38, %37, !dbg !298
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !298
  %41 = load i8, ptr %40, align 1, !dbg !298
  %42 = mul nuw nsw i64 %37, 1024, !dbg !298
  %43 = add nuw nsw i64 %42, %36, !dbg !298
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !298
  store i8 %41, ptr %44, align 1, !dbg !298
  %45 = add i64 %33, 1, !dbg !298
  br label %32, !dbg !298

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !298
  br label %29, !dbg !298

48:                                               ; preds = %29
  ret i32 0, !dbg !298
}

define internal i32 @_initializer_23_dispatch_0_transpose_1024x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !299 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !300
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !300
  %6 = load ptr, ptr %5, align 8, !dbg !300
  %7 = getelementptr i8, ptr %6, i64 2782208, !dbg !300
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !300
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !300
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !300
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !300
  %11 = load ptr, ptr %10, align 8, !dbg !300
  %12 = getelementptr i8, ptr %11, i64 2691072, !dbg !300
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !300
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !300
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !300
  %15 = zext i32 %14 to i64, !dbg !300
  %16 = sdiv i64 %15, 4, !dbg !300
  %17 = mul i64 %16, 4, !dbg !300
  %18 = icmp ne i64 %15, %17, !dbg !300
  %19 = icmp slt i64 %15, 0, !dbg !300
  %20 = and i1 %18, %19, !dbg !300
  %21 = add i64 %16, -1, !dbg !300
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !300
  %23 = srem i64 %15, 4, !dbg !300
  %24 = icmp slt i64 %23, 0, !dbg !300
  %25 = add nsw i64 %23, 4, !dbg !300
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !300
  %27 = mul nsw i64 %22, 64, !dbg !300
  %28 = mul nsw i64 %26, 64, !dbg !300
  br label %29, !dbg !300

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !300
  %31 = icmp slt i64 %30, 64, !dbg !300
  br i1 %31, label %32, label %48, !dbg !300

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !300
  %34 = icmp slt i64 %33, 64, !dbg !300
  br i1 %34, label %35, label %46, !dbg !300

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !300
  %37 = add i64 %27, %30, !dbg !300
  %38 = mul nuw nsw i64 %36, 1024, !dbg !300
  %39 = add nuw nsw i64 %38, %37, !dbg !300
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !300
  %41 = load i8, ptr %40, align 1, !dbg !300
  %42 = mul nuw nsw i64 %37, 256, !dbg !300
  %43 = add nuw nsw i64 %42, %36, !dbg !300
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !300
  store i8 %41, ptr %44, align 1, !dbg !300
  %45 = add i64 %33, 1, !dbg !300
  br label %32, !dbg !300

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !300
  br label %29, !dbg !300

48:                                               ; preds = %29
  ret i32 0, !dbg !300
}

define internal i32 @_initializer_24_dispatch_0_transpose_256x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !301 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !302
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !302
  %6 = load ptr, ptr %5, align 8, !dbg !302
  %7 = getelementptr i8, ptr %6, i64 3044352, !dbg !302
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !302
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !302
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !302
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !302
  %11 = load ptr, ptr %10, align 8, !dbg !302
  %12 = getelementptr i8, ptr %11, i64 2953216, !dbg !302
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !302
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !302
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !302
  %15 = zext i32 %14 to i64, !dbg !302
  %16 = sdiv i64 %15, 16, !dbg !302
  %17 = mul i64 %16, 16, !dbg !302
  %18 = icmp ne i64 %15, %17, !dbg !302
  %19 = icmp slt i64 %15, 0, !dbg !302
  %20 = and i1 %18, %19, !dbg !302
  %21 = add i64 %16, -1, !dbg !302
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !302
  %23 = srem i64 %15, 16, !dbg !302
  %24 = icmp slt i64 %23, 0, !dbg !302
  %25 = add nsw i64 %23, 16, !dbg !302
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !302
  %27 = mul nsw i64 %22, 64, !dbg !302
  %28 = mul nsw i64 %26, 64, !dbg !302
  br label %29, !dbg !302

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !302
  %31 = icmp slt i64 %30, 64, !dbg !302
  br i1 %31, label %32, label %48, !dbg !302

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !302
  %34 = icmp slt i64 %33, 64, !dbg !302
  br i1 %34, label %35, label %46, !dbg !302

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !302
  %37 = add i64 %27, %30, !dbg !302
  %38 = mul nuw nsw i64 %36, 256, !dbg !302
  %39 = add nuw nsw i64 %38, %37, !dbg !302
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !302
  %41 = load i8, ptr %40, align 1, !dbg !302
  %42 = mul nuw nsw i64 %37, 1024, !dbg !302
  %43 = add nuw nsw i64 %42, %36, !dbg !302
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !302
  store i8 %41, ptr %44, align 1, !dbg !302
  %45 = add i64 %33, 1, !dbg !302
  br label %32, !dbg !302

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !302
  br label %29, !dbg !302

48:                                               ; preds = %29
  ret i32 0, !dbg !302
}

define internal i32 @_initializer_25_dispatch_0_transpose_1024x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !303 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !304
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !304
  %6 = load ptr, ptr %5, align 8, !dbg !304
  %7 = getelementptr i8, ptr %6, i64 3306496, !dbg !304
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !304
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !304
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !304
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !304
  %11 = load ptr, ptr %10, align 8, !dbg !304
  %12 = getelementptr i8, ptr %11, i64 3215360, !dbg !304
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !304
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !304
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !304
  %15 = zext i32 %14 to i64, !dbg !304
  %16 = sdiv i64 %15, 4, !dbg !304
  %17 = mul i64 %16, 4, !dbg !304
  %18 = icmp ne i64 %15, %17, !dbg !304
  %19 = icmp slt i64 %15, 0, !dbg !304
  %20 = and i1 %18, %19, !dbg !304
  %21 = add i64 %16, -1, !dbg !304
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !304
  %23 = srem i64 %15, 4, !dbg !304
  %24 = icmp slt i64 %23, 0, !dbg !304
  %25 = add nsw i64 %23, 4, !dbg !304
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !304
  %27 = mul nsw i64 %22, 64, !dbg !304
  %28 = mul nsw i64 %26, 64, !dbg !304
  br label %29, !dbg !304

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !304
  %31 = icmp slt i64 %30, 64, !dbg !304
  br i1 %31, label %32, label %48, !dbg !304

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !304
  %34 = icmp slt i64 %33, 64, !dbg !304
  br i1 %34, label %35, label %46, !dbg !304

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !304
  %37 = add i64 %27, %30, !dbg !304
  %38 = mul nuw nsw i64 %36, 1024, !dbg !304
  %39 = add nuw nsw i64 %38, %37, !dbg !304
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !304
  %41 = load i8, ptr %40, align 1, !dbg !304
  %42 = mul nuw nsw i64 %37, 256, !dbg !304
  %43 = add nuw nsw i64 %42, %36, !dbg !304
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !304
  store i8 %41, ptr %44, align 1, !dbg !304
  %45 = add i64 %33, 1, !dbg !304
  br label %32, !dbg !304

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !304
  br label %29, !dbg !304

48:                                               ; preds = %29
  ret i32 0, !dbg !304
}

define internal i32 @_initializer_26_dispatch_0_transpose_256x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !305 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !306
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !306
  %6 = load ptr, ptr %5, align 8, !dbg !306
  %7 = getelementptr i8, ptr %6, i64 3568640, !dbg !306
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !306
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !306
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !306
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !306
  %11 = load ptr, ptr %10, align 8, !dbg !306
  %12 = getelementptr i8, ptr %11, i64 3477504, !dbg !306
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !306
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !306
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !306
  %15 = zext i32 %14 to i64, !dbg !306
  %16 = sdiv i64 %15, 16, !dbg !306
  %17 = mul i64 %16, 16, !dbg !306
  %18 = icmp ne i64 %15, %17, !dbg !306
  %19 = icmp slt i64 %15, 0, !dbg !306
  %20 = and i1 %18, %19, !dbg !306
  %21 = add i64 %16, -1, !dbg !306
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !306
  %23 = srem i64 %15, 16, !dbg !306
  %24 = icmp slt i64 %23, 0, !dbg !306
  %25 = add nsw i64 %23, 16, !dbg !306
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !306
  %27 = mul nsw i64 %22, 64, !dbg !306
  %28 = mul nsw i64 %26, 64, !dbg !306
  br label %29, !dbg !306

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !306
  %31 = icmp slt i64 %30, 64, !dbg !306
  br i1 %31, label %32, label %48, !dbg !306

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !306
  %34 = icmp slt i64 %33, 64, !dbg !306
  br i1 %34, label %35, label %46, !dbg !306

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !306
  %37 = add i64 %27, %30, !dbg !306
  %38 = mul nuw nsw i64 %36, 256, !dbg !306
  %39 = add nuw nsw i64 %38, %37, !dbg !306
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !306
  %41 = load i8, ptr %40, align 1, !dbg !306
  %42 = mul nuw nsw i64 %37, 1024, !dbg !306
  %43 = add nuw nsw i64 %42, %36, !dbg !306
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !306
  store i8 %41, ptr %44, align 1, !dbg !306
  %45 = add i64 %33, 1, !dbg !306
  br label %32, !dbg !306

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !306
  br label %29, !dbg !306

48:                                               ; preds = %29
  ret i32 0, !dbg !306
}

define internal i32 @_initializer_27_dispatch_0_transpose_1024x256_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !307 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !308
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !308
  %6 = load ptr, ptr %5, align 8, !dbg !308
  %7 = getelementptr i8, ptr %6, i64 3830784, !dbg !308
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !308
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !308
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !308
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !308
  %11 = load ptr, ptr %10, align 8, !dbg !308
  %12 = getelementptr i8, ptr %11, i64 3739648, !dbg !308
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !308
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !308
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !308
  %15 = zext i32 %14 to i64, !dbg !308
  %16 = sdiv i64 %15, 4, !dbg !308
  %17 = mul i64 %16, 4, !dbg !308
  %18 = icmp ne i64 %15, %17, !dbg !308
  %19 = icmp slt i64 %15, 0, !dbg !308
  %20 = and i1 %18, %19, !dbg !308
  %21 = add i64 %16, -1, !dbg !308
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !308
  %23 = srem i64 %15, 4, !dbg !308
  %24 = icmp slt i64 %23, 0, !dbg !308
  %25 = add nsw i64 %23, 4, !dbg !308
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !308
  %27 = mul nsw i64 %22, 64, !dbg !308
  %28 = mul nsw i64 %26, 64, !dbg !308
  br label %29, !dbg !308

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !308
  %31 = icmp slt i64 %30, 64, !dbg !308
  br i1 %31, label %32, label %48, !dbg !308

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !308
  %34 = icmp slt i64 %33, 64, !dbg !308
  br i1 %34, label %35, label %46, !dbg !308

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !308
  %37 = add i64 %27, %30, !dbg !308
  %38 = mul nuw nsw i64 %36, 1024, !dbg !308
  %39 = add nuw nsw i64 %38, %37, !dbg !308
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !308
  %41 = load i8, ptr %40, align 1, !dbg !308
  %42 = mul nuw nsw i64 %37, 256, !dbg !308
  %43 = add nuw nsw i64 %42, %36, !dbg !308
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !308
  store i8 %41, ptr %44, align 1, !dbg !308
  %45 = add i64 %33, 1, !dbg !308
  br label %32, !dbg !308

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !308
  br label %29, !dbg !308

48:                                               ; preds = %29
  ret i32 0, !dbg !308
}

define internal i32 @_initializer_28_dispatch_0_transpose_256x1024_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !309 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !310
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !310
  %6 = load ptr, ptr %5, align 8, !dbg !310
  %7 = getelementptr i8, ptr %6, i64 4092928, !dbg !310
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !310
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !310
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !310
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !310
  %11 = load ptr, ptr %10, align 8, !dbg !310
  %12 = getelementptr i8, ptr %11, i64 4001792, !dbg !310
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !310
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !310
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !310
  %15 = zext i32 %14 to i64, !dbg !310
  %16 = sdiv i64 %15, 16, !dbg !310
  %17 = mul i64 %16, 16, !dbg !310
  %18 = icmp ne i64 %15, %17, !dbg !310
  %19 = icmp slt i64 %15, 0, !dbg !310
  %20 = and i1 %18, %19, !dbg !310
  %21 = add i64 %16, -1, !dbg !310
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !310
  %23 = srem i64 %15, 16, !dbg !310
  %24 = icmp slt i64 %23, 0, !dbg !310
  %25 = add nsw i64 %23, 16, !dbg !310
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !310
  %27 = mul nsw i64 %22, 64, !dbg !310
  %28 = mul nsw i64 %26, 64, !dbg !310
  br label %29, !dbg !310

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !310
  %31 = icmp slt i64 %30, 64, !dbg !310
  br i1 %31, label %32, label %48, !dbg !310

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !310
  %34 = icmp slt i64 %33, 64, !dbg !310
  br i1 %34, label %35, label %46, !dbg !310

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !310
  %37 = add i64 %27, %30, !dbg !310
  %38 = mul nuw nsw i64 %36, 256, !dbg !310
  %39 = add nuw nsw i64 %38, %37, !dbg !310
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !310
  %41 = load i8, ptr %40, align 1, !dbg !310
  %42 = mul nuw nsw i64 %37, 1024, !dbg !310
  %43 = add nuw nsw i64 %42, %36, !dbg !310
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !310
  store i8 %41, ptr %44, align 1, !dbg !310
  %45 = add i64 %33, 1, !dbg !310
  br label %32, !dbg !310

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !310
  br label %29, !dbg !310

48:                                               ; preds = %29
  ret i32 0, !dbg !310
}

define internal i32 @_initializer_29_dispatch_0_transpose_1024x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !311 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !312
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !312
  %6 = load ptr, ptr %5, align 8, !dbg !312
  %7 = getelementptr i8, ptr %6, i64 4355072, !dbg !312
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !312
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !312
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !312
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !312
  %11 = load ptr, ptr %10, align 8, !dbg !312
  %12 = getelementptr i8, ptr %11, i64 4263936, !dbg !312
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !312
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !312
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !312
  %15 = zext i32 %14 to i64, !dbg !312
  %16 = sdiv i64 %15, 8, !dbg !312
  %17 = mul i64 %16, 8, !dbg !312
  %18 = icmp ne i64 %15, %17, !dbg !312
  %19 = icmp slt i64 %15, 0, !dbg !312
  %20 = and i1 %18, %19, !dbg !312
  %21 = add i64 %16, -1, !dbg !312
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !312
  %23 = srem i64 %15, 8, !dbg !312
  %24 = icmp slt i64 %23, 0, !dbg !312
  %25 = add nsw i64 %23, 8, !dbg !312
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !312
  %27 = mul nsw i64 %22, 64, !dbg !312
  %28 = mul nsw i64 %26, 64, !dbg !312
  br label %29, !dbg !312

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !312
  %31 = icmp slt i64 %30, 64, !dbg !312
  br i1 %31, label %32, label %48, !dbg !312

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !312
  %34 = icmp slt i64 %33, 64, !dbg !312
  br i1 %34, label %35, label %46, !dbg !312

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !312
  %37 = add i64 %27, %30, !dbg !312
  %38 = mul nuw nsw i64 %36, 1024, !dbg !312
  %39 = add nuw nsw i64 %38, %37, !dbg !312
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !312
  %41 = load i8, ptr %40, align 1, !dbg !312
  %42 = mul nuw nsw i64 %37, 512, !dbg !312
  %43 = add nuw nsw i64 %42, %36, !dbg !312
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !312
  store i8 %41, ptr %44, align 1, !dbg !312
  %45 = add i64 %33, 1, !dbg !312
  br label %32, !dbg !312

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !312
  br label %29, !dbg !312

48:                                               ; preds = %29
  ret i32 0, !dbg !312
}

define internal i32 @_initializer_30_dispatch_0_transpose_1024x2048_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !313 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !314
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !314
  %6 = load ptr, ptr %5, align 8, !dbg !314
  %7 = getelementptr i8, ptr %6, i64 4879360, !dbg !314
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !314
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !314
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !314
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !314
  %11 = load ptr, ptr %10, align 8, !dbg !314
  %12 = getelementptr i8, ptr %11, i64 4788224, !dbg !314
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !314
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !314
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !314
  %15 = zext i32 %14 to i64, !dbg !314
  %16 = sdiv i64 %15, 32, !dbg !314
  %17 = mul i64 %16, 32, !dbg !314
  %18 = icmp ne i64 %15, %17, !dbg !314
  %19 = icmp slt i64 %15, 0, !dbg !314
  %20 = and i1 %18, %19, !dbg !314
  %21 = add i64 %16, -1, !dbg !314
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !314
  %23 = srem i64 %15, 32, !dbg !314
  %24 = icmp slt i64 %23, 0, !dbg !314
  %25 = add nsw i64 %23, 32, !dbg !314
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !314
  %27 = mul nsw i64 %22, 64, !dbg !314
  %28 = mul nsw i64 %26, 64, !dbg !314
  br label %29, !dbg !314

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !314
  %31 = icmp slt i64 %30, 64, !dbg !314
  br i1 %31, label %32, label %48, !dbg !314

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !314
  %34 = icmp slt i64 %33, 64, !dbg !314
  br i1 %34, label %35, label %46, !dbg !314

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !314
  %37 = add i64 %27, %30, !dbg !314
  %38 = mul nuw nsw i64 %36, 1024, !dbg !314
  %39 = add nuw nsw i64 %38, %37, !dbg !314
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !314
  %41 = load i8, ptr %40, align 1, !dbg !314
  %42 = mul nuw nsw i64 %37, 2048, !dbg !314
  %43 = add nuw nsw i64 %42, %36, !dbg !314
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !314
  store i8 %41, ptr %44, align 1, !dbg !314
  %45 = add i64 %33, 1, !dbg !314
  br label %32, !dbg !314

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !314
  br label %29, !dbg !314

48:                                               ; preds = %29
  ret i32 0, !dbg !314
}

define internal i32 @_initializer_31_dispatch_0_transpose_512x2048_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !315 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !316
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !316
  %6 = load ptr, ptr %5, align 8, !dbg !316
  %7 = getelementptr i8, ptr %6, i64 6976512, !dbg !316
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !316
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !316
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !316
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !316
  %11 = load ptr, ptr %10, align 8, !dbg !316
  %12 = getelementptr i8, ptr %11, i64 6885376, !dbg !316
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !316
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !316
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !316
  %15 = zext i32 %14 to i64, !dbg !316
  %16 = sdiv i64 %15, 32, !dbg !316
  %17 = mul i64 %16, 32, !dbg !316
  %18 = icmp ne i64 %15, %17, !dbg !316
  %19 = icmp slt i64 %15, 0, !dbg !316
  %20 = and i1 %18, %19, !dbg !316
  %21 = add i64 %16, -1, !dbg !316
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !316
  %23 = srem i64 %15, 32, !dbg !316
  %24 = icmp slt i64 %23, 0, !dbg !316
  %25 = add nsw i64 %23, 32, !dbg !316
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !316
  %27 = mul nsw i64 %22, 64, !dbg !316
  %28 = mul nsw i64 %26, 64, !dbg !316
  br label %29, !dbg !316

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !316
  %31 = icmp slt i64 %30, 64, !dbg !316
  br i1 %31, label %32, label %48, !dbg !316

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !316
  %34 = icmp slt i64 %33, 64, !dbg !316
  br i1 %34, label %35, label %46, !dbg !316

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !316
  %37 = add i64 %27, %30, !dbg !316
  %38 = mul nuw nsw i64 %36, 512, !dbg !316
  %39 = add nuw nsw i64 %38, %37, !dbg !316
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !316
  %41 = load i8, ptr %40, align 1, !dbg !316
  %42 = mul nuw nsw i64 %37, 2048, !dbg !316
  %43 = add nuw nsw i64 %42, %36, !dbg !316
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !316
  store i8 %41, ptr %44, align 1, !dbg !316
  %45 = add i64 %33, 1, !dbg !316
  br label %32, !dbg !316

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !316
  br label %29, !dbg !316

48:                                               ; preds = %29
  ret i32 0, !dbg !316
}

define internal i32 @_initializer_32_dispatch_0_transpose_2048x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !317 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !318
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !318
  %6 = load ptr, ptr %5, align 8, !dbg !318
  %7 = getelementptr i8, ptr %6, i64 8025088, !dbg !318
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !318
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !318
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !318
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !318
  %11 = load ptr, ptr %10, align 8, !dbg !318
  %12 = getelementptr i8, ptr %11, i64 7933952, !dbg !318
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !318
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !318
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !318
  %15 = zext i32 %14 to i64, !dbg !318
  %16 = sdiv i64 %15, 8, !dbg !318
  %17 = mul i64 %16, 8, !dbg !318
  %18 = icmp ne i64 %15, %17, !dbg !318
  %19 = icmp slt i64 %15, 0, !dbg !318
  %20 = and i1 %18, %19, !dbg !318
  %21 = add i64 %16, -1, !dbg !318
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !318
  %23 = srem i64 %15, 8, !dbg !318
  %24 = icmp slt i64 %23, 0, !dbg !318
  %25 = add nsw i64 %23, 8, !dbg !318
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !318
  %27 = mul nsw i64 %22, 64, !dbg !318
  %28 = mul nsw i64 %26, 64, !dbg !318
  br label %29, !dbg !318

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !318
  %31 = icmp slt i64 %30, 64, !dbg !318
  br i1 %31, label %32, label %48, !dbg !318

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !318
  %34 = icmp slt i64 %33, 64, !dbg !318
  br i1 %34, label %35, label %46, !dbg !318

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !318
  %37 = add i64 %27, %30, !dbg !318
  %38 = mul nuw nsw i64 %36, 2048, !dbg !318
  %39 = add nuw nsw i64 %38, %37, !dbg !318
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !318
  %41 = load i8, ptr %40, align 1, !dbg !318
  %42 = mul nuw nsw i64 %37, 512, !dbg !318
  %43 = add nuw nsw i64 %42, %36, !dbg !318
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !318
  store i8 %41, ptr %44, align 1, !dbg !318
  %45 = add i64 %33, 1, !dbg !318
  br label %32, !dbg !318

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !318
  br label %29, !dbg !318

48:                                               ; preds = %29
  ret i32 0, !dbg !318
}

define internal i32 @_initializer_33_dispatch_0_transpose_512x2048_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !319 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !320
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !320
  %6 = load ptr, ptr %5, align 8, !dbg !320
  %7 = getelementptr i8, ptr %6, i64 9073664, !dbg !320
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !320
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !320
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !320
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !320
  %11 = load ptr, ptr %10, align 8, !dbg !320
  %12 = getelementptr i8, ptr %11, i64 8982528, !dbg !320
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !320
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !320
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !320
  %15 = zext i32 %14 to i64, !dbg !320
  %16 = sdiv i64 %15, 32, !dbg !320
  %17 = mul i64 %16, 32, !dbg !320
  %18 = icmp ne i64 %15, %17, !dbg !320
  %19 = icmp slt i64 %15, 0, !dbg !320
  %20 = and i1 %18, %19, !dbg !320
  %21 = add i64 %16, -1, !dbg !320
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !320
  %23 = srem i64 %15, 32, !dbg !320
  %24 = icmp slt i64 %23, 0, !dbg !320
  %25 = add nsw i64 %23, 32, !dbg !320
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !320
  %27 = mul nsw i64 %22, 64, !dbg !320
  %28 = mul nsw i64 %26, 64, !dbg !320
  br label %29, !dbg !320

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !320
  %31 = icmp slt i64 %30, 64, !dbg !320
  br i1 %31, label %32, label %48, !dbg !320

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !320
  %34 = icmp slt i64 %33, 64, !dbg !320
  br i1 %34, label %35, label %46, !dbg !320

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !320
  %37 = add i64 %27, %30, !dbg !320
  %38 = mul nuw nsw i64 %36, 512, !dbg !320
  %39 = add nuw nsw i64 %38, %37, !dbg !320
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !320
  %41 = load i8, ptr %40, align 1, !dbg !320
  %42 = mul nuw nsw i64 %37, 2048, !dbg !320
  %43 = add nuw nsw i64 %42, %36, !dbg !320
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !320
  store i8 %41, ptr %44, align 1, !dbg !320
  %45 = add i64 %33, 1, !dbg !320
  br label %32, !dbg !320

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !320
  br label %29, !dbg !320

48:                                               ; preds = %29
  ret i32 0, !dbg !320
}

define internal i32 @_initializer_34_dispatch_0_transpose_2048x512_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !321 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !322
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !322
  %6 = load ptr, ptr %5, align 8, !dbg !322
  %7 = getelementptr i8, ptr %6, i64 10122240, !dbg !322
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !322
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !322
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !322
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !322
  %11 = load ptr, ptr %10, align 8, !dbg !322
  %12 = getelementptr i8, ptr %11, i64 10031104, !dbg !322
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !322
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !322
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !322
  %15 = zext i32 %14 to i64, !dbg !322
  %16 = sdiv i64 %15, 8, !dbg !322
  %17 = mul i64 %16, 8, !dbg !322
  %18 = icmp ne i64 %15, %17, !dbg !322
  %19 = icmp slt i64 %15, 0, !dbg !322
  %20 = and i1 %18, %19, !dbg !322
  %21 = add i64 %16, -1, !dbg !322
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !322
  %23 = srem i64 %15, 8, !dbg !322
  %24 = icmp slt i64 %23, 0, !dbg !322
  %25 = add nsw i64 %23, 8, !dbg !322
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !322
  %27 = mul nsw i64 %22, 64, !dbg !322
  %28 = mul nsw i64 %26, 64, !dbg !322
  br label %29, !dbg !322

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !322
  %31 = icmp slt i64 %30, 64, !dbg !322
  br i1 %31, label %32, label %48, !dbg !322

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !322
  %34 = icmp slt i64 %33, 64, !dbg !322
  br i1 %34, label %35, label %46, !dbg !322

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !322
  %37 = add i64 %27, %30, !dbg !322
  %38 = mul nuw nsw i64 %36, 2048, !dbg !322
  %39 = add nuw nsw i64 %38, %37, !dbg !322
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !322
  %41 = load i8, ptr %40, align 1, !dbg !322
  %42 = mul nuw nsw i64 %37, 512, !dbg !322
  %43 = add nuw nsw i64 %42, %36, !dbg !322
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !322
  store i8 %41, ptr %44, align 1, !dbg !322
  %45 = add i64 %33, 1, !dbg !322
  br label %32, !dbg !322

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !322
  br label %29, !dbg !322

48:                                               ; preds = %29
  ret i32 0, !dbg !322
}

define internal i32 @_initializer_35_dispatch_0_transpose_512x2048_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !323 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !324
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !324
  %6 = load ptr, ptr %5, align 8, !dbg !324
  %7 = getelementptr i8, ptr %6, i64 11170816, !dbg !324
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !324
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !324
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !324
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !324
  %11 = load ptr, ptr %10, align 8, !dbg !324
  %12 = getelementptr i8, ptr %11, i64 11079680, !dbg !324
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !324
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !324
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !324
  %15 = zext i32 %14 to i64, !dbg !324
  %16 = sdiv i64 %15, 32, !dbg !324
  %17 = mul i64 %16, 32, !dbg !324
  %18 = icmp ne i64 %15, %17, !dbg !324
  %19 = icmp slt i64 %15, 0, !dbg !324
  %20 = and i1 %18, %19, !dbg !324
  %21 = add i64 %16, -1, !dbg !324
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !324
  %23 = srem i64 %15, 32, !dbg !324
  %24 = icmp slt i64 %23, 0, !dbg !324
  %25 = add nsw i64 %23, 32, !dbg !324
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !324
  %27 = mul nsw i64 %22, 64, !dbg !324
  %28 = mul nsw i64 %26, 64, !dbg !324
  br label %29, !dbg !324

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !324
  %31 = icmp slt i64 %30, 64, !dbg !324
  br i1 %31, label %32, label %48, !dbg !324

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !324
  %34 = icmp slt i64 %33, 64, !dbg !324
  br i1 %34, label %35, label %46, !dbg !324

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !324
  %37 = add i64 %27, %30, !dbg !324
  %38 = mul nuw nsw i64 %36, 512, !dbg !324
  %39 = add nuw nsw i64 %38, %37, !dbg !324
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !324
  %41 = load i8, ptr %40, align 1, !dbg !324
  %42 = mul nuw nsw i64 %37, 2048, !dbg !324
  %43 = add nuw nsw i64 %42, %36, !dbg !324
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !324
  store i8 %41, ptr %44, align 1, !dbg !324
  %45 = add i64 %33, 1, !dbg !324
  br label %32, !dbg !324

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !324
  br label %29, !dbg !324

48:                                               ; preds = %29
  ret i32 0, !dbg !324
}

define internal i32 @_initializer_36_dispatch_0_transpose_2048x1000_i8(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !325 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !326
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !326
  %6 = load ptr, ptr %5, align 8, !dbg !326
  %7 = getelementptr i8, ptr %6, i64 12219392, !dbg !326
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !326
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !326
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !326
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !326
  %11 = load ptr, ptr %10, align 8, !dbg !326
  %12 = getelementptr i8, ptr %11, i64 12128256, !dbg !326
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !326
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !326
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !326
  %15 = zext i32 %14 to i64, !dbg !326
  %16 = sdiv i64 %15, 20, !dbg !326
  %17 = mul i64 %16, 20, !dbg !326
  %18 = icmp ne i64 %15, %17, !dbg !326
  %19 = icmp slt i64 %15, 0, !dbg !326
  %20 = and i1 %18, %19, !dbg !326
  %21 = add i64 %16, -1, !dbg !326
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !326
  %23 = srem i64 %15, 20, !dbg !326
  %24 = icmp slt i64 %23, 0, !dbg !326
  %25 = add nsw i64 %23, 20, !dbg !326
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !326
  %27 = mul nsw i64 %22, 64, !dbg !326
  %28 = mul nsw i64 %26, 50, !dbg !326
  br label %29, !dbg !326

29:                                               ; preds = %46, %3
  %30 = phi i64 [ %47, %46 ], [ 0, %3 ], !dbg !326
  %31 = icmp slt i64 %30, 64, !dbg !326
  br i1 %31, label %32, label %48, !dbg !326

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %45, %35 ], [ 0, %29 ], !dbg !326
  %34 = icmp slt i64 %33, 50, !dbg !326
  br i1 %34, label %35, label %46, !dbg !326

35:                                               ; preds = %32
  %36 = add i64 %28, %33, !dbg !326
  %37 = add i64 %27, %30, !dbg !326
  %38 = mul nuw nsw i64 %36, 2048, !dbg !326
  %39 = add nuw nsw i64 %38, %37, !dbg !326
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !326
  %41 = load i8, ptr %40, align 1, !dbg !326
  %42 = mul nuw nsw i64 %37, 1000, !dbg !326
  %43 = add nuw nsw i64 %42, %36, !dbg !326
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43, !dbg !326
  store i8 %41, ptr %44, align 1, !dbg !326
  %45 = add i64 %33, 1, !dbg !326
  br label %32, !dbg !326

46:                                               ; preds = %32
  %47 = add i64 %30, 1, !dbg !326
  br label %29, !dbg !326

48:                                               ; preds = %29
  ret i32 0, !dbg !326
}

define internal i32 @_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !327 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !328
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !328
  %6 = load ptr, ptr %5, align 8, !dbg !328
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !328
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !328
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !328
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !328
  %10 = load ptr, ptr %9, align 8, !dbg !328
  %11 = getelementptr i32, ptr %10, i64 3544064, !dbg !328
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !328
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !328
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !328
  %14 = zext i32 %13 to i64, !dbg !328
  %15 = mul nsw i64 %14, 64, !dbg !328
  br label %16, !dbg !328

16:                                               ; preds = %30, %3
  %17 = phi i64 [ %31, %30 ], [ 0, %3 ], !dbg !328
  %18 = icmp slt i64 %17, 64, !dbg !328
  br i1 %18, label %19, label %32, !dbg !328

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %29, %22 ], [ 0, %16 ], !dbg !328
  %21 = icmp slt i64 %20, 64, !dbg !328
  br i1 %21, label %22, label %30, !dbg !328

22:                                               ; preds = %19
  %23 = getelementptr i32, ptr %6, i64 %20, !dbg !328
  %24 = load <2 x i32>, ptr %23, align 4, !dbg !328
  %25 = add i64 %15, %17, !dbg !328
  %26 = mul i64 %25, 64, !dbg !328
  %27 = add i64 %26, %20, !dbg !328
  %28 = getelementptr i32, ptr %11, i64 %27, !dbg !328
  store <2 x i32> %24, ptr %28, align 4, !dbg !328
  %29 = add i64 %20, 2, !dbg !328
  br label %19, !dbg !328

30:                                               ; preds = %19
  %31 = add i64 %17, 1, !dbg !328
  br label %16, !dbg !328

32:                                               ; preds = %16
  ret i32 0, !dbg !328
}

define internal i32 @_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !329 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !330
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !330
  %6 = load ptr, ptr %5, align 8, !dbg !330
  %7 = getelementptr i32, ptr %6, i64 64, !dbg !330
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !330
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !330
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !330
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !330
  %11 = load ptr, ptr %10, align 8, !dbg !330
  %12 = getelementptr i32, ptr %11, i64 3744768, !dbg !330
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !330
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !330
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !330
  %15 = zext i32 %14 to i64, !dbg !330
  %16 = mul nsw i64 %15, 64, !dbg !330
  br label %17, !dbg !330

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !330
  %19 = icmp slt i64 %18, 64, !dbg !330
  br i1 %19, label %20, label %33, !dbg !330

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !330
  %22 = icmp slt i64 %21, 64, !dbg !330
  br i1 %22, label %23, label %31, !dbg !330

23:                                               ; preds = %20
  %24 = getelementptr i32, ptr %7, i64 %21, !dbg !330
  %25 = load <2 x i32>, ptr %24, align 4, !dbg !330
  %26 = add i64 %16, %18, !dbg !330
  %27 = mul i64 %26, 64, !dbg !330
  %28 = add i64 %27, %21, !dbg !330
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !330
  store <2 x i32> %25, ptr %29, align 4, !dbg !330
  %30 = add i64 %21, 2, !dbg !330
  br label %20, !dbg !330

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !330
  br label %17, !dbg !330

33:                                               ; preds = %17
  ret i32 0, !dbg !330
}

define internal i32 @_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !331 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !332
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !332
  %6 = load ptr, ptr %5, align 8, !dbg !332
  %7 = getelementptr i32, ptr %6, i64 128, !dbg !332
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !332
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !332
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !332
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !332
  %11 = load ptr, ptr %10, align 8, !dbg !332
  %12 = getelementptr i32, ptr %11, i64 3945472, !dbg !332
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !332
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !332
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !332
  %15 = zext i32 %14 to i64, !dbg !332
  %16 = mul nsw i64 %15, 64, !dbg !332
  br label %17, !dbg !332

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !332
  %19 = icmp slt i64 %18, 64, !dbg !332
  br i1 %19, label %20, label %33, !dbg !332

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !332
  %22 = icmp slt i64 %21, 64, !dbg !332
  br i1 %22, label %23, label %31, !dbg !332

23:                                               ; preds = %20
  %24 = getelementptr i32, ptr %7, i64 %21, !dbg !332
  %25 = load <2 x i32>, ptr %24, align 4, !dbg !332
  %26 = add i64 %16, %18, !dbg !332
  %27 = mul i64 %26, 64, !dbg !332
  %28 = add i64 %27, %21, !dbg !332
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !332
  store <2 x i32> %25, ptr %29, align 4, !dbg !332
  %30 = add i64 %21, 2, !dbg !332
  br label %20, !dbg !332

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !332
  br label %17, !dbg !332

33:                                               ; preds = %17
  ret i32 0, !dbg !332
}

define internal i32 @_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !333 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !334
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !334
  %6 = load ptr, ptr %5, align 8, !dbg !334
  %7 = getelementptr i32, ptr %6, i64 192, !dbg !334
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !334
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !334
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !334
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !334
  %11 = load ptr, ptr %10, align 8, !dbg !334
  %12 = getelementptr i32, ptr %11, i64 4146176, !dbg !334
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !334
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !334
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !334
  %15 = zext i32 %14 to i64, !dbg !334
  %16 = mul nsw i64 %15, 64, !dbg !334
  br label %17, !dbg !334

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !334
  %19 = icmp slt i64 %18, 64, !dbg !334
  br i1 %19, label %20, label %33, !dbg !334

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !334
  %22 = icmp slt i64 %21, 64, !dbg !334
  br i1 %22, label %23, label %31, !dbg !334

23:                                               ; preds = %20
  %24 = getelementptr i32, ptr %7, i64 %21, !dbg !334
  %25 = load <2 x i32>, ptr %24, align 4, !dbg !334
  %26 = add i64 %16, %18, !dbg !334
  %27 = mul i64 %26, 64, !dbg !334
  %28 = add i64 %27, %21, !dbg !334
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !334
  store <2 x i32> %25, ptr %29, align 4, !dbg !334
  %30 = add i64 %21, 2, !dbg !334
  br label %20, !dbg !334

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !334
  br label %17, !dbg !334

33:                                               ; preds = %17
  ret i32 0, !dbg !334
}

define internal i32 @_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !335 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !336
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !336
  %6 = load ptr, ptr %5, align 8, !dbg !336
  %7 = getelementptr i32, ptr %6, i64 256, !dbg !336
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !336
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !336
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !336
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !336
  %11 = load ptr, ptr %10, align 8, !dbg !336
  %12 = getelementptr i32, ptr %11, i64 4346880, !dbg !336
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !336
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !336
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !336
  %15 = zext i32 %14 to i64, !dbg !336
  %16 = mul nsw i64 %15, 64, !dbg !336
  br label %17, !dbg !336

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !336
  %19 = icmp slt i64 %18, 64, !dbg !336
  br i1 %19, label %20, label %33, !dbg !336

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !336
  %22 = icmp slt i64 %21, 64, !dbg !336
  br i1 %22, label %23, label %31, !dbg !336

23:                                               ; preds = %20
  %24 = getelementptr i32, ptr %7, i64 %21, !dbg !336
  %25 = load <2 x i32>, ptr %24, align 4, !dbg !336
  %26 = add i64 %16, %18, !dbg !336
  %27 = mul i64 %26, 64, !dbg !336
  %28 = add i64 %27, %21, !dbg !336
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !336
  store <2 x i32> %25, ptr %29, align 4, !dbg !336
  %30 = add i64 %21, 2, !dbg !336
  br label %20, !dbg !336

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !336
  br label %17, !dbg !336

33:                                               ; preds = %17
  ret i32 0, !dbg !336
}

define internal i32 @_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !337 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !338
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !338
  %6 = load ptr, ptr %5, align 8, !dbg !338
  %7 = getelementptr i32, ptr %6, i64 320, !dbg !338
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !338
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !338
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !338
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !338
  %11 = load ptr, ptr %10, align 8, !dbg !338
  %12 = getelementptr i32, ptr %11, i64 4547584, !dbg !338
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !338
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !338
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !338
  %15 = zext i32 %14 to i64, !dbg !338
  %16 = mul nsw i64 %15, 64, !dbg !338
  br label %17, !dbg !338

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !338
  %19 = icmp slt i64 %18, 64, !dbg !338
  br i1 %19, label %20, label %33, !dbg !338

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !338
  %22 = icmp slt i64 %21, 64, !dbg !338
  br i1 %22, label %23, label %31, !dbg !338

23:                                               ; preds = %20
  %24 = getelementptr i32, ptr %7, i64 %21, !dbg !338
  %25 = load <2 x i32>, ptr %24, align 4, !dbg !338
  %26 = add i64 %16, %18, !dbg !338
  %27 = mul i64 %26, 64, !dbg !338
  %28 = add i64 %27, %21, !dbg !338
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !338
  store <2 x i32> %25, ptr %29, align 4, !dbg !338
  %30 = add i64 %21, 2, !dbg !338
  br label %20, !dbg !338

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !338
  br label %17, !dbg !338

33:                                               ; preds = %17
  ret i32 0, !dbg !338
}

define internal i32 @_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !339 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !340
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !340
  %6 = load ptr, ptr %5, align 8, !dbg !340
  %7 = getelementptr i32, ptr %6, i64 384, !dbg !340
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !340
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !340
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !340
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !340
  %11 = load ptr, ptr %10, align 8, !dbg !340
  %12 = getelementptr i32, ptr %11, i64 4748288, !dbg !340
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !340
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !340
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !340
  %15 = zext i32 %14 to i64, !dbg !340
  %16 = sdiv i64 %15, 2, !dbg !340
  %17 = mul i64 %16, 2, !dbg !340
  %18 = icmp ne i64 %15, %17, !dbg !340
  %19 = icmp slt i64 %15, 0, !dbg !340
  %20 = and i1 %18, %19, !dbg !340
  %21 = add i64 %16, -1, !dbg !340
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !340
  %23 = srem i64 %15, 2, !dbg !340
  %24 = icmp slt i64 %23, 0, !dbg !340
  %25 = add nsw i64 %23, 2, !dbg !340
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !340
  %27 = mul nsw i64 %22, 112, !dbg !340
  %28 = mul nsw i64 %26, 64, !dbg !340
  br label %29, !dbg !340

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !340
  %31 = icmp slt i64 %30, 112, !dbg !340
  br i1 %31, label %32, label %46, !dbg !340

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !340
  %34 = icmp slt i64 %33, 64, !dbg !340
  br i1 %34, label %35, label %44, !dbg !340

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !340
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !340
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !340
  %39 = add i64 %27, %30, !dbg !340
  %40 = mul i64 %39, 128, !dbg !340
  %41 = add i64 %40, %36, !dbg !340
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !340
  store <2 x i32> %38, ptr %42, align 4, !dbg !340
  %43 = add i64 %33, 2, !dbg !340
  br label %32, !dbg !340

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !340
  br label %29, !dbg !340

46:                                               ; preds = %29
  ret i32 0, !dbg !340
}

define internal i32 @_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !341 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !342
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !342
  %6 = load ptr, ptr %5, align 8, !dbg !342
  %7 = getelementptr i32, ptr %6, i64 512, !dbg !342
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !342
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !342
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !342
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !342
  %11 = load ptr, ptr %10, align 8, !dbg !342
  %12 = getelementptr i32, ptr %11, i64 4848640, !dbg !342
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !342
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !342
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !342
  %15 = zext i32 %14 to i64, !dbg !342
  %16 = sdiv i64 %15, 2, !dbg !342
  %17 = mul i64 %16, 2, !dbg !342
  %18 = icmp ne i64 %15, %17, !dbg !342
  %19 = icmp slt i64 %15, 0, !dbg !342
  %20 = and i1 %18, %19, !dbg !342
  %21 = add i64 %16, -1, !dbg !342
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !342
  %23 = srem i64 %15, 2, !dbg !342
  %24 = icmp slt i64 %23, 0, !dbg !342
  %25 = add nsw i64 %23, 2, !dbg !342
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !342
  %27 = mul nsw i64 %22, 112, !dbg !342
  %28 = mul nsw i64 %26, 64, !dbg !342
  br label %29, !dbg !342

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !342
  %31 = icmp slt i64 %30, 112, !dbg !342
  br i1 %31, label %32, label %46, !dbg !342

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !342
  %34 = icmp slt i64 %33, 64, !dbg !342
  br i1 %34, label %35, label %44, !dbg !342

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !342
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !342
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !342
  %39 = add i64 %27, %30, !dbg !342
  %40 = mul i64 %39, 128, !dbg !342
  %41 = add i64 %40, %36, !dbg !342
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !342
  store <2 x i32> %38, ptr %42, align 4, !dbg !342
  %43 = add i64 %33, 2, !dbg !342
  br label %32, !dbg !342

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !342
  br label %29, !dbg !342

46:                                               ; preds = %29
  ret i32 0, !dbg !342
}

define internal i32 @_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !343 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !344
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !344
  %6 = load ptr, ptr %5, align 8, !dbg !344
  %7 = getelementptr i32, ptr %6, i64 640, !dbg !344
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !344
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !344
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !344
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !344
  %11 = load ptr, ptr %10, align 8, !dbg !344
  %12 = getelementptr i32, ptr %11, i64 4948992, !dbg !344
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !344
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !344
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !344
  %15 = zext i32 %14 to i64, !dbg !344
  %16 = sdiv i64 %15, 2, !dbg !344
  %17 = mul i64 %16, 2, !dbg !344
  %18 = icmp ne i64 %15, %17, !dbg !344
  %19 = icmp slt i64 %15, 0, !dbg !344
  %20 = and i1 %18, %19, !dbg !344
  %21 = add i64 %16, -1, !dbg !344
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !344
  %23 = srem i64 %15, 2, !dbg !344
  %24 = icmp slt i64 %23, 0, !dbg !344
  %25 = add nsw i64 %23, 2, !dbg !344
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !344
  %27 = mul nsw i64 %22, 112, !dbg !344
  %28 = mul nsw i64 %26, 64, !dbg !344
  br label %29, !dbg !344

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !344
  %31 = icmp slt i64 %30, 112, !dbg !344
  br i1 %31, label %32, label %46, !dbg !344

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !344
  %34 = icmp slt i64 %33, 64, !dbg !344
  br i1 %34, label %35, label %44, !dbg !344

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !344
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !344
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !344
  %39 = add i64 %27, %30, !dbg !344
  %40 = mul i64 %39, 128, !dbg !344
  %41 = add i64 %40, %36, !dbg !344
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !344
  store <2 x i32> %38, ptr %42, align 4, !dbg !344
  %43 = add i64 %33, 2, !dbg !344
  br label %32, !dbg !344

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !344
  br label %29, !dbg !344

46:                                               ; preds = %29
  ret i32 0, !dbg !344
}

define internal i32 @_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !345 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !346
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !346
  %6 = load ptr, ptr %5, align 8, !dbg !346
  %7 = getelementptr i32, ptr %6, i64 768, !dbg !346
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !346
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !346
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !346
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !346
  %11 = load ptr, ptr %10, align 8, !dbg !346
  %12 = getelementptr i32, ptr %11, i64 5049344, !dbg !346
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !346
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !346
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !346
  %15 = zext i32 %14 to i64, !dbg !346
  %16 = sdiv i64 %15, 2, !dbg !346
  %17 = mul i64 %16, 2, !dbg !346
  %18 = icmp ne i64 %15, %17, !dbg !346
  %19 = icmp slt i64 %15, 0, !dbg !346
  %20 = and i1 %18, %19, !dbg !346
  %21 = add i64 %16, -1, !dbg !346
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !346
  %23 = srem i64 %15, 2, !dbg !346
  %24 = icmp slt i64 %23, 0, !dbg !346
  %25 = add nsw i64 %23, 2, !dbg !346
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !346
  %27 = mul nsw i64 %22, 112, !dbg !346
  %28 = mul nsw i64 %26, 64, !dbg !346
  br label %29, !dbg !346

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !346
  %31 = icmp slt i64 %30, 112, !dbg !346
  br i1 %31, label %32, label %46, !dbg !346

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !346
  %34 = icmp slt i64 %33, 64, !dbg !346
  br i1 %34, label %35, label %44, !dbg !346

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !346
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !346
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !346
  %39 = add i64 %27, %30, !dbg !346
  %40 = mul i64 %39, 128, !dbg !346
  %41 = add i64 %40, %36, !dbg !346
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !346
  store <2 x i32> %38, ptr %42, align 4, !dbg !346
  %43 = add i64 %33, 2, !dbg !346
  br label %32, !dbg !346

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !346
  br label %29, !dbg !346

46:                                               ; preds = %29
  ret i32 0, !dbg !346
}

define internal i32 @_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !347 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !348
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !348
  %6 = load ptr, ptr %5, align 8, !dbg !348
  %7 = getelementptr i32, ptr %6, i64 896, !dbg !348
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !348
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !348
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !348
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !348
  %11 = load ptr, ptr %10, align 8, !dbg !348
  %12 = getelementptr i32, ptr %11, i64 5149696, !dbg !348
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !348
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !348
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !348
  %15 = zext i32 %14 to i64, !dbg !348
  %16 = sdiv i64 %15, 2, !dbg !348
  %17 = mul i64 %16, 2, !dbg !348
  %18 = icmp ne i64 %15, %17, !dbg !348
  %19 = icmp slt i64 %15, 0, !dbg !348
  %20 = and i1 %18, %19, !dbg !348
  %21 = add i64 %16, -1, !dbg !348
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !348
  %23 = srem i64 %15, 2, !dbg !348
  %24 = icmp slt i64 %23, 0, !dbg !348
  %25 = add nsw i64 %23, 2, !dbg !348
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !348
  %27 = mul nsw i64 %22, 112, !dbg !348
  %28 = mul nsw i64 %26, 64, !dbg !348
  br label %29, !dbg !348

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !348
  %31 = icmp slt i64 %30, 112, !dbg !348
  br i1 %31, label %32, label %46, !dbg !348

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !348
  %34 = icmp slt i64 %33, 64, !dbg !348
  br i1 %34, label %35, label %44, !dbg !348

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !348
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !348
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !348
  %39 = add i64 %27, %30, !dbg !348
  %40 = mul i64 %39, 128, !dbg !348
  %41 = add i64 %40, %36, !dbg !348
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !348
  store <2 x i32> %38, ptr %42, align 4, !dbg !348
  %43 = add i64 %33, 2, !dbg !348
  br label %32, !dbg !348

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !348
  br label %29, !dbg !348

46:                                               ; preds = %29
  ret i32 0, !dbg !348
}

define internal i32 @_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !349 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !350
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !350
  %6 = load ptr, ptr %5, align 8, !dbg !350
  %7 = getelementptr i32, ptr %6, i64 1024, !dbg !350
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !350
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !350
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !350
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !350
  %11 = load ptr, ptr %10, align 8, !dbg !350
  %12 = getelementptr i32, ptr %11, i64 5250048, !dbg !350
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !350
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !350
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !350
  %15 = zext i32 %14 to i64, !dbg !350
  %16 = sdiv i64 %15, 2, !dbg !350
  %17 = mul i64 %16, 2, !dbg !350
  %18 = icmp ne i64 %15, %17, !dbg !350
  %19 = icmp slt i64 %15, 0, !dbg !350
  %20 = and i1 %18, %19, !dbg !350
  %21 = add i64 %16, -1, !dbg !350
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !350
  %23 = srem i64 %15, 2, !dbg !350
  %24 = icmp slt i64 %23, 0, !dbg !350
  %25 = add nsw i64 %23, 2, !dbg !350
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !350
  %27 = mul nsw i64 %22, 112, !dbg !350
  %28 = mul nsw i64 %26, 64, !dbg !350
  br label %29, !dbg !350

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !350
  %31 = icmp slt i64 %30, 112, !dbg !350
  br i1 %31, label %32, label %46, !dbg !350

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !350
  %34 = icmp slt i64 %33, 64, !dbg !350
  br i1 %34, label %35, label %44, !dbg !350

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !350
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !350
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !350
  %39 = add i64 %27, %30, !dbg !350
  %40 = mul i64 %39, 128, !dbg !350
  %41 = add i64 %40, %36, !dbg !350
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !350
  store <2 x i32> %38, ptr %42, align 4, !dbg !350
  %43 = add i64 %33, 2, !dbg !350
  br label %32, !dbg !350

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !350
  br label %29, !dbg !350

46:                                               ; preds = %29
  ret i32 0, !dbg !350
}

define internal i32 @_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !351 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !352
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !352
  %6 = load ptr, ptr %5, align 8, !dbg !352
  %7 = getelementptr i32, ptr %6, i64 1152, !dbg !352
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !352
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !352
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !352
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !352
  %11 = load ptr, ptr %10, align 8, !dbg !352
  %12 = getelementptr i32, ptr %11, i64 5350400, !dbg !352
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !352
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !352
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !352
  %15 = zext i32 %14 to i64, !dbg !352
  %16 = sdiv i64 %15, 2, !dbg !352
  %17 = mul i64 %16, 2, !dbg !352
  %18 = icmp ne i64 %15, %17, !dbg !352
  %19 = icmp slt i64 %15, 0, !dbg !352
  %20 = and i1 %18, %19, !dbg !352
  %21 = add i64 %16, -1, !dbg !352
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !352
  %23 = srem i64 %15, 2, !dbg !352
  %24 = icmp slt i64 %23, 0, !dbg !352
  %25 = add nsw i64 %23, 2, !dbg !352
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !352
  %27 = mul nsw i64 %22, 112, !dbg !352
  %28 = mul nsw i64 %26, 64, !dbg !352
  br label %29, !dbg !352

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !352
  %31 = icmp slt i64 %30, 112, !dbg !352
  br i1 %31, label %32, label %46, !dbg !352

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !352
  %34 = icmp slt i64 %33, 64, !dbg !352
  br i1 %34, label %35, label %44, !dbg !352

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !352
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !352
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !352
  %39 = add i64 %27, %30, !dbg !352
  %40 = mul i64 %39, 128, !dbg !352
  %41 = add i64 %40, %36, !dbg !352
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !352
  store <2 x i32> %38, ptr %42, align 4, !dbg !352
  %43 = add i64 %33, 2, !dbg !352
  br label %32, !dbg !352

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !352
  br label %29, !dbg !352

46:                                               ; preds = %29
  ret i32 0, !dbg !352
}

define internal i32 @_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !353 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !354
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !354
  %6 = load ptr, ptr %5, align 8, !dbg !354
  %7 = getelementptr i32, ptr %6, i64 1280, !dbg !354
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !354
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !354
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !354
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !354
  %11 = load ptr, ptr %10, align 8, !dbg !354
  %12 = getelementptr i32, ptr %11, i64 5450752, !dbg !354
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !354
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !354
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !354
  %15 = zext i32 %14 to i64, !dbg !354
  %16 = sdiv i64 %15, 4, !dbg !354
  %17 = mul i64 %16, 4, !dbg !354
  %18 = icmp ne i64 %15, %17, !dbg !354
  %19 = icmp slt i64 %15, 0, !dbg !354
  %20 = and i1 %18, %19, !dbg !354
  %21 = add i64 %16, -1, !dbg !354
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !354
  %23 = srem i64 %15, 4, !dbg !354
  %24 = icmp slt i64 %23, 0, !dbg !354
  %25 = add nsw i64 %23, 4, !dbg !354
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !354
  %27 = mul nsw i64 %22, 112, !dbg !354
  %28 = mul nsw i64 %26, 64, !dbg !354
  br label %29, !dbg !354

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !354
  %31 = icmp slt i64 %30, 112, !dbg !354
  br i1 %31, label %32, label %46, !dbg !354

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !354
  %34 = icmp slt i64 %33, 64, !dbg !354
  br i1 %34, label %35, label %44, !dbg !354

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !354
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !354
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !354
  %39 = add i64 %27, %30, !dbg !354
  %40 = mul i64 %39, 256, !dbg !354
  %41 = add i64 %40, %36, !dbg !354
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !354
  store <2 x i32> %38, ptr %42, align 4, !dbg !354
  %43 = add i64 %33, 2, !dbg !354
  br label %32, !dbg !354

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !354
  br label %29, !dbg !354

46:                                               ; preds = %29
  ret i32 0, !dbg !354
}

define internal i32 @_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !355 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !356
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !356
  %6 = load ptr, ptr %5, align 8, !dbg !356
  %7 = getelementptr i32, ptr %6, i64 1536, !dbg !356
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !356
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !356
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !356
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !356
  %11 = load ptr, ptr %10, align 8, !dbg !356
  %12 = getelementptr i32, ptr %11, i64 5651456, !dbg !356
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !356
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !356
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !356
  %15 = zext i32 %14 to i64, !dbg !356
  %16 = sdiv i64 %15, 16, !dbg !356
  %17 = mul i64 %16, 16, !dbg !356
  %18 = icmp ne i64 %15, %17, !dbg !356
  %19 = icmp slt i64 %15, 0, !dbg !356
  %20 = and i1 %18, %19, !dbg !356
  %21 = add i64 %16, -1, !dbg !356
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !356
  %23 = srem i64 %15, 16, !dbg !356
  %24 = icmp slt i64 %23, 0, !dbg !356
  %25 = add nsw i64 %23, 16, !dbg !356
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !356
  %27 = mul nsw i64 %22, 98, !dbg !356
  %28 = mul nsw i64 %26, 64, !dbg !356
  br label %29, !dbg !356

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !356
  %31 = icmp slt i64 %30, 98, !dbg !356
  br i1 %31, label %32, label %46, !dbg !356

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !356
  %34 = icmp slt i64 %33, 64, !dbg !356
  br i1 %34, label %35, label %44, !dbg !356

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !356
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !356
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !356
  %39 = add i64 %27, %30, !dbg !356
  %40 = mul i64 %39, 1024, !dbg !356
  %41 = add i64 %40, %36, !dbg !356
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !356
  store <2 x i32> %38, ptr %42, align 4, !dbg !356
  %43 = add i64 %33, 2, !dbg !356
  br label %32, !dbg !356

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !356
  br label %29, !dbg !356

46:                                               ; preds = %29
  ret i32 0, !dbg !356
}

define internal i32 @_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !357 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !358
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !358
  %6 = load ptr, ptr %5, align 8, !dbg !358
  %7 = getelementptr i32, ptr %6, i64 2560, !dbg !358
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !358
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !358
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !358
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !358
  %11 = load ptr, ptr %10, align 8, !dbg !358
  %12 = getelementptr i32, ptr %11, i64 5852160, !dbg !358
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !358
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !358
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !358
  %15 = zext i32 %14 to i64, !dbg !358
  %16 = sdiv i64 %15, 4, !dbg !358
  %17 = mul i64 %16, 4, !dbg !358
  %18 = icmp ne i64 %15, %17, !dbg !358
  %19 = icmp slt i64 %15, 0, !dbg !358
  %20 = and i1 %18, %19, !dbg !358
  %21 = add i64 %16, -1, !dbg !358
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !358
  %23 = srem i64 %15, 4, !dbg !358
  %24 = icmp slt i64 %23, 0, !dbg !358
  %25 = add nsw i64 %23, 4, !dbg !358
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !358
  %27 = mul nsw i64 %22, 112, !dbg !358
  %28 = mul nsw i64 %26, 64, !dbg !358
  %29 = mul nsw i64 %22, -112, !dbg !358
  %30 = add i64 %29, 196, !dbg !358
  %31 = icmp slt i64 %30, 112, !dbg !358
  %32 = select i1 %31, i64 %30, i64 112, !dbg !358
  br label %33, !dbg !358

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !358
  %35 = icmp slt i64 %34, %32, !dbg !358
  br i1 %35, label %36, label %50, !dbg !358

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !358
  %38 = icmp slt i64 %37, 64, !dbg !358
  br i1 %38, label %39, label %48, !dbg !358

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !358
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !358
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !358
  %43 = add i64 %27, %34, !dbg !358
  %44 = mul i64 %43, 256, !dbg !358
  %45 = add i64 %44, %40, !dbg !358
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !358
  store <2 x i32> %42, ptr %46, align 4, !dbg !358
  %47 = add i64 %37, 2, !dbg !358
  br label %36, !dbg !358

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !358
  br label %33, !dbg !358

50:                                               ; preds = %33
  ret i32 0, !dbg !358
}

define internal i32 @_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !359 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !360
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !360
  %6 = load ptr, ptr %5, align 8, !dbg !360
  %7 = getelementptr i32, ptr %6, i64 2816, !dbg !360
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !360
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !360
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !360
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !360
  %11 = load ptr, ptr %10, align 8, !dbg !360
  %12 = getelementptr i32, ptr %11, i64 5902336, !dbg !360
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !360
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !360
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !360
  %15 = zext i32 %14 to i64, !dbg !360
  %16 = sdiv i64 %15, 16, !dbg !360
  %17 = mul i64 %16, 16, !dbg !360
  %18 = icmp ne i64 %15, %17, !dbg !360
  %19 = icmp slt i64 %15, 0, !dbg !360
  %20 = and i1 %18, %19, !dbg !360
  %21 = add i64 %16, -1, !dbg !360
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !360
  %23 = srem i64 %15, 16, !dbg !360
  %24 = icmp slt i64 %23, 0, !dbg !360
  %25 = add nsw i64 %23, 16, !dbg !360
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !360
  %27 = mul nsw i64 %22, 98, !dbg !360
  %28 = mul nsw i64 %26, 64, !dbg !360
  br label %29, !dbg !360

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !360
  %31 = icmp slt i64 %30, 98, !dbg !360
  br i1 %31, label %32, label %46, !dbg !360

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !360
  %34 = icmp slt i64 %33, 64, !dbg !360
  br i1 %34, label %35, label %44, !dbg !360

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !360
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !360
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !360
  %39 = add i64 %27, %30, !dbg !360
  %40 = mul i64 %39, 1024, !dbg !360
  %41 = add i64 %40, %36, !dbg !360
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !360
  store <2 x i32> %38, ptr %42, align 4, !dbg !360
  %43 = add i64 %33, 2, !dbg !360
  br label %32, !dbg !360

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !360
  br label %29, !dbg !360

46:                                               ; preds = %29
  ret i32 0, !dbg !360
}

define internal i32 @_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !361 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !362
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !362
  %6 = load ptr, ptr %5, align 8, !dbg !362
  %7 = getelementptr i32, ptr %6, i64 3840, !dbg !362
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !362
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !362
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !362
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !362
  %11 = load ptr, ptr %10, align 8, !dbg !362
  %12 = getelementptr i32, ptr %11, i64 6103040, !dbg !362
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !362
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !362
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !362
  %15 = zext i32 %14 to i64, !dbg !362
  %16 = sdiv i64 %15, 4, !dbg !362
  %17 = mul i64 %16, 4, !dbg !362
  %18 = icmp ne i64 %15, %17, !dbg !362
  %19 = icmp slt i64 %15, 0, !dbg !362
  %20 = and i1 %18, %19, !dbg !362
  %21 = add i64 %16, -1, !dbg !362
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !362
  %23 = srem i64 %15, 4, !dbg !362
  %24 = icmp slt i64 %23, 0, !dbg !362
  %25 = add nsw i64 %23, 4, !dbg !362
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !362
  %27 = mul nsw i64 %22, 112, !dbg !362
  %28 = mul nsw i64 %26, 64, !dbg !362
  %29 = mul nsw i64 %22, -112, !dbg !362
  %30 = add i64 %29, 196, !dbg !362
  %31 = icmp slt i64 %30, 112, !dbg !362
  %32 = select i1 %31, i64 %30, i64 112, !dbg !362
  br label %33, !dbg !362

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !362
  %35 = icmp slt i64 %34, %32, !dbg !362
  br i1 %35, label %36, label %50, !dbg !362

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !362
  %38 = icmp slt i64 %37, 64, !dbg !362
  br i1 %38, label %39, label %48, !dbg !362

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !362
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !362
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !362
  %43 = add i64 %27, %34, !dbg !362
  %44 = mul i64 %43, 256, !dbg !362
  %45 = add i64 %44, %40, !dbg !362
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !362
  store <2 x i32> %42, ptr %46, align 4, !dbg !362
  %47 = add i64 %37, 2, !dbg !362
  br label %36, !dbg !362

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !362
  br label %33, !dbg !362

50:                                               ; preds = %33
  ret i32 0, !dbg !362
}

define internal i32 @_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !363 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !364
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !364
  %6 = load ptr, ptr %5, align 8, !dbg !364
  %7 = getelementptr i32, ptr %6, i64 4096, !dbg !364
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !364
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !364
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !364
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !364
  %11 = load ptr, ptr %10, align 8, !dbg !364
  %12 = getelementptr i32, ptr %11, i64 6153216, !dbg !364
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !364
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !364
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !364
  %15 = zext i32 %14 to i64, !dbg !364
  %16 = sdiv i64 %15, 4, !dbg !364
  %17 = mul i64 %16, 4, !dbg !364
  %18 = icmp ne i64 %15, %17, !dbg !364
  %19 = icmp slt i64 %15, 0, !dbg !364
  %20 = and i1 %18, %19, !dbg !364
  %21 = add i64 %16, -1, !dbg !364
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !364
  %23 = srem i64 %15, 4, !dbg !364
  %24 = icmp slt i64 %23, 0, !dbg !364
  %25 = add nsw i64 %23, 4, !dbg !364
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !364
  %27 = mul nsw i64 %22, 112, !dbg !364
  %28 = mul nsw i64 %26, 64, !dbg !364
  %29 = mul nsw i64 %22, -112, !dbg !364
  %30 = add i64 %29, 196, !dbg !364
  %31 = icmp slt i64 %30, 112, !dbg !364
  %32 = select i1 %31, i64 %30, i64 112, !dbg !364
  br label %33, !dbg !364

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !364
  %35 = icmp slt i64 %34, %32, !dbg !364
  br i1 %35, label %36, label %50, !dbg !364

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !364
  %38 = icmp slt i64 %37, 64, !dbg !364
  br i1 %38, label %39, label %48, !dbg !364

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !364
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !364
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !364
  %43 = add i64 %27, %34, !dbg !364
  %44 = mul i64 %43, 256, !dbg !364
  %45 = add i64 %44, %40, !dbg !364
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !364
  store <2 x i32> %42, ptr %46, align 4, !dbg !364
  %47 = add i64 %37, 2, !dbg !364
  br label %36, !dbg !364

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !364
  br label %33, !dbg !364

50:                                               ; preds = %33
  ret i32 0, !dbg !364
}

define internal i32 @_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !365 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !366
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !366
  %6 = load ptr, ptr %5, align 8, !dbg !366
  %7 = getelementptr i32, ptr %6, i64 4352, !dbg !366
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !366
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !366
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !366
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !366
  %11 = load ptr, ptr %10, align 8, !dbg !366
  %12 = getelementptr i32, ptr %11, i64 6203392, !dbg !366
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !366
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !366
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !366
  %15 = zext i32 %14 to i64, !dbg !366
  %16 = sdiv i64 %15, 16, !dbg !366
  %17 = mul i64 %16, 16, !dbg !366
  %18 = icmp ne i64 %15, %17, !dbg !366
  %19 = icmp slt i64 %15, 0, !dbg !366
  %20 = and i1 %18, %19, !dbg !366
  %21 = add i64 %16, -1, !dbg !366
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !366
  %23 = srem i64 %15, 16, !dbg !366
  %24 = icmp slt i64 %23, 0, !dbg !366
  %25 = add nsw i64 %23, 16, !dbg !366
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !366
  %27 = mul nsw i64 %22, 98, !dbg !366
  %28 = mul nsw i64 %26, 64, !dbg !366
  br label %29, !dbg !366

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !366
  %31 = icmp slt i64 %30, 98, !dbg !366
  br i1 %31, label %32, label %46, !dbg !366

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !366
  %34 = icmp slt i64 %33, 64, !dbg !366
  br i1 %34, label %35, label %44, !dbg !366

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !366
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !366
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !366
  %39 = add i64 %27, %30, !dbg !366
  %40 = mul i64 %39, 1024, !dbg !366
  %41 = add i64 %40, %36, !dbg !366
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !366
  store <2 x i32> %38, ptr %42, align 4, !dbg !366
  %43 = add i64 %33, 2, !dbg !366
  br label %32, !dbg !366

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !366
  br label %29, !dbg !366

46:                                               ; preds = %29
  ret i32 0, !dbg !366
}

define internal i32 @_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !367 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !368
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !368
  %6 = load ptr, ptr %5, align 8, !dbg !368
  %7 = getelementptr i32, ptr %6, i64 5376, !dbg !368
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !368
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !368
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !368
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !368
  %11 = load ptr, ptr %10, align 8, !dbg !368
  %12 = getelementptr i32, ptr %11, i64 6404096, !dbg !368
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !368
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !368
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !368
  %15 = zext i32 %14 to i64, !dbg !368
  %16 = sdiv i64 %15, 4, !dbg !368
  %17 = mul i64 %16, 4, !dbg !368
  %18 = icmp ne i64 %15, %17, !dbg !368
  %19 = icmp slt i64 %15, 0, !dbg !368
  %20 = and i1 %18, %19, !dbg !368
  %21 = add i64 %16, -1, !dbg !368
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !368
  %23 = srem i64 %15, 4, !dbg !368
  %24 = icmp slt i64 %23, 0, !dbg !368
  %25 = add nsw i64 %23, 4, !dbg !368
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !368
  %27 = mul nsw i64 %22, 112, !dbg !368
  %28 = mul nsw i64 %26, 64, !dbg !368
  %29 = mul nsw i64 %22, -112, !dbg !368
  %30 = add i64 %29, 196, !dbg !368
  %31 = icmp slt i64 %30, 112, !dbg !368
  %32 = select i1 %31, i64 %30, i64 112, !dbg !368
  br label %33, !dbg !368

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !368
  %35 = icmp slt i64 %34, %32, !dbg !368
  br i1 %35, label %36, label %50, !dbg !368

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !368
  %38 = icmp slt i64 %37, 64, !dbg !368
  br i1 %38, label %39, label %48, !dbg !368

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !368
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !368
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !368
  %43 = add i64 %27, %34, !dbg !368
  %44 = mul i64 %43, 256, !dbg !368
  %45 = add i64 %44, %40, !dbg !368
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !368
  store <2 x i32> %42, ptr %46, align 4, !dbg !368
  %47 = add i64 %37, 2, !dbg !368
  br label %36, !dbg !368

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !368
  br label %33, !dbg !368

50:                                               ; preds = %33
  ret i32 0, !dbg !368
}

define internal i32 @_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !369 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !370
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !370
  %6 = load ptr, ptr %5, align 8, !dbg !370
  %7 = getelementptr i32, ptr %6, i64 5632, !dbg !370
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !370
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !370
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !370
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !370
  %11 = load ptr, ptr %10, align 8, !dbg !370
  %12 = getelementptr i32, ptr %11, i64 6454272, !dbg !370
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !370
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !370
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !370
  %15 = zext i32 %14 to i64, !dbg !370
  %16 = sdiv i64 %15, 4, !dbg !370
  %17 = mul i64 %16, 4, !dbg !370
  %18 = icmp ne i64 %15, %17, !dbg !370
  %19 = icmp slt i64 %15, 0, !dbg !370
  %20 = and i1 %18, %19, !dbg !370
  %21 = add i64 %16, -1, !dbg !370
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !370
  %23 = srem i64 %15, 4, !dbg !370
  %24 = icmp slt i64 %23, 0, !dbg !370
  %25 = add nsw i64 %23, 4, !dbg !370
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !370
  %27 = mul nsw i64 %22, 112, !dbg !370
  %28 = mul nsw i64 %26, 64, !dbg !370
  %29 = mul nsw i64 %22, -112, !dbg !370
  %30 = add i64 %29, 196, !dbg !370
  %31 = icmp slt i64 %30, 112, !dbg !370
  %32 = select i1 %31, i64 %30, i64 112, !dbg !370
  br label %33, !dbg !370

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !370
  %35 = icmp slt i64 %34, %32, !dbg !370
  br i1 %35, label %36, label %50, !dbg !370

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !370
  %38 = icmp slt i64 %37, 64, !dbg !370
  br i1 %38, label %39, label %48, !dbg !370

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !370
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !370
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !370
  %43 = add i64 %27, %34, !dbg !370
  %44 = mul i64 %43, 256, !dbg !370
  %45 = add i64 %44, %40, !dbg !370
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !370
  store <2 x i32> %42, ptr %46, align 4, !dbg !370
  %47 = add i64 %37, 2, !dbg !370
  br label %36, !dbg !370

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !370
  br label %33, !dbg !370

50:                                               ; preds = %33
  ret i32 0, !dbg !370
}

define internal i32 @_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !371 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !372
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !372
  %6 = load ptr, ptr %5, align 8, !dbg !372
  %7 = getelementptr i32, ptr %6, i64 5888, !dbg !372
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !372
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !372
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !372
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !372
  %11 = load ptr, ptr %10, align 8, !dbg !372
  %12 = getelementptr i32, ptr %11, i64 6504448, !dbg !372
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !372
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !372
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !372
  %15 = zext i32 %14 to i64, !dbg !372
  %16 = sdiv i64 %15, 16, !dbg !372
  %17 = mul i64 %16, 16, !dbg !372
  %18 = icmp ne i64 %15, %17, !dbg !372
  %19 = icmp slt i64 %15, 0, !dbg !372
  %20 = and i1 %18, %19, !dbg !372
  %21 = add i64 %16, -1, !dbg !372
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !372
  %23 = srem i64 %15, 16, !dbg !372
  %24 = icmp slt i64 %23, 0, !dbg !372
  %25 = add nsw i64 %23, 16, !dbg !372
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !372
  %27 = mul nsw i64 %22, 98, !dbg !372
  %28 = mul nsw i64 %26, 64, !dbg !372
  br label %29, !dbg !372

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !372
  %31 = icmp slt i64 %30, 98, !dbg !372
  br i1 %31, label %32, label %46, !dbg !372

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !372
  %34 = icmp slt i64 %33, 64, !dbg !372
  br i1 %34, label %35, label %44, !dbg !372

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !372
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !372
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !372
  %39 = add i64 %27, %30, !dbg !372
  %40 = mul i64 %39, 1024, !dbg !372
  %41 = add i64 %40, %36, !dbg !372
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !372
  store <2 x i32> %38, ptr %42, align 4, !dbg !372
  %43 = add i64 %33, 2, !dbg !372
  br label %32, !dbg !372

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !372
  br label %29, !dbg !372

46:                                               ; preds = %29
  ret i32 0, !dbg !372
}

define internal i32 @_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !373 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !374
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !374
  %6 = load ptr, ptr %5, align 8, !dbg !374
  %7 = getelementptr i32, ptr %6, i64 6912, !dbg !374
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !374
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !374
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !374
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !374
  %11 = load ptr, ptr %10, align 8, !dbg !374
  %12 = getelementptr i32, ptr %11, i64 6705152, !dbg !374
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !374
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !374
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !374
  %15 = zext i32 %14 to i64, !dbg !374
  %16 = sdiv i64 %15, 4, !dbg !374
  %17 = mul i64 %16, 4, !dbg !374
  %18 = icmp ne i64 %15, %17, !dbg !374
  %19 = icmp slt i64 %15, 0, !dbg !374
  %20 = and i1 %18, %19, !dbg !374
  %21 = add i64 %16, -1, !dbg !374
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !374
  %23 = srem i64 %15, 4, !dbg !374
  %24 = icmp slt i64 %23, 0, !dbg !374
  %25 = add nsw i64 %23, 4, !dbg !374
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !374
  %27 = mul nsw i64 %22, 112, !dbg !374
  %28 = mul nsw i64 %26, 64, !dbg !374
  %29 = mul nsw i64 %22, -112, !dbg !374
  %30 = add i64 %29, 196, !dbg !374
  %31 = icmp slt i64 %30, 112, !dbg !374
  %32 = select i1 %31, i64 %30, i64 112, !dbg !374
  br label %33, !dbg !374

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !374
  %35 = icmp slt i64 %34, %32, !dbg !374
  br i1 %35, label %36, label %50, !dbg !374

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !374
  %38 = icmp slt i64 %37, 64, !dbg !374
  br i1 %38, label %39, label %48, !dbg !374

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !374
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !374
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !374
  %43 = add i64 %27, %34, !dbg !374
  %44 = mul i64 %43, 256, !dbg !374
  %45 = add i64 %44, %40, !dbg !374
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !374
  store <2 x i32> %42, ptr %46, align 4, !dbg !374
  %47 = add i64 %37, 2, !dbg !374
  br label %36, !dbg !374

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !374
  br label %33, !dbg !374

50:                                               ; preds = %33
  ret i32 0, !dbg !374
}

define internal i32 @_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !375 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !376
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !376
  %6 = load ptr, ptr %5, align 8, !dbg !376
  %7 = getelementptr i32, ptr %6, i64 7168, !dbg !376
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !376
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !376
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !376
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !376
  %11 = load ptr, ptr %10, align 8, !dbg !376
  %12 = getelementptr i32, ptr %11, i64 6755328, !dbg !376
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !376
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !376
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !376
  %15 = zext i32 %14 to i64, !dbg !376
  %16 = sdiv i64 %15, 4, !dbg !376
  %17 = mul i64 %16, 4, !dbg !376
  %18 = icmp ne i64 %15, %17, !dbg !376
  %19 = icmp slt i64 %15, 0, !dbg !376
  %20 = and i1 %18, %19, !dbg !376
  %21 = add i64 %16, -1, !dbg !376
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !376
  %23 = srem i64 %15, 4, !dbg !376
  %24 = icmp slt i64 %23, 0, !dbg !376
  %25 = add nsw i64 %23, 4, !dbg !376
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !376
  %27 = mul nsw i64 %22, 112, !dbg !376
  %28 = mul nsw i64 %26, 64, !dbg !376
  %29 = mul nsw i64 %22, -112, !dbg !376
  %30 = add i64 %29, 196, !dbg !376
  %31 = icmp slt i64 %30, 112, !dbg !376
  %32 = select i1 %31, i64 %30, i64 112, !dbg !376
  br label %33, !dbg !376

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !376
  %35 = icmp slt i64 %34, %32, !dbg !376
  br i1 %35, label %36, label %50, !dbg !376

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !376
  %38 = icmp slt i64 %37, 64, !dbg !376
  br i1 %38, label %39, label %48, !dbg !376

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !376
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !376
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !376
  %43 = add i64 %27, %34, !dbg !376
  %44 = mul i64 %43, 256, !dbg !376
  %45 = add i64 %44, %40, !dbg !376
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !376
  store <2 x i32> %42, ptr %46, align 4, !dbg !376
  %47 = add i64 %37, 2, !dbg !376
  br label %36, !dbg !376

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !376
  br label %33, !dbg !376

50:                                               ; preds = %33
  ret i32 0, !dbg !376
}

define internal i32 @_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !377 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !378
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !378
  %6 = load ptr, ptr %5, align 8, !dbg !378
  %7 = getelementptr i32, ptr %6, i64 7424, !dbg !378
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !378
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !378
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !378
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !378
  %11 = load ptr, ptr %10, align 8, !dbg !378
  %12 = getelementptr i32, ptr %11, i64 6805504, !dbg !378
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !378
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !378
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !378
  %15 = zext i32 %14 to i64, !dbg !378
  %16 = sdiv i64 %15, 16, !dbg !378
  %17 = mul i64 %16, 16, !dbg !378
  %18 = icmp ne i64 %15, %17, !dbg !378
  %19 = icmp slt i64 %15, 0, !dbg !378
  %20 = and i1 %18, %19, !dbg !378
  %21 = add i64 %16, -1, !dbg !378
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !378
  %23 = srem i64 %15, 16, !dbg !378
  %24 = icmp slt i64 %23, 0, !dbg !378
  %25 = add nsw i64 %23, 16, !dbg !378
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !378
  %27 = mul nsw i64 %22, 98, !dbg !378
  %28 = mul nsw i64 %26, 64, !dbg !378
  br label %29, !dbg !378

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !378
  %31 = icmp slt i64 %30, 98, !dbg !378
  br i1 %31, label %32, label %46, !dbg !378

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !378
  %34 = icmp slt i64 %33, 64, !dbg !378
  br i1 %34, label %35, label %44, !dbg !378

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !378
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !378
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !378
  %39 = add i64 %27, %30, !dbg !378
  %40 = mul i64 %39, 1024, !dbg !378
  %41 = add i64 %40, %36, !dbg !378
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !378
  store <2 x i32> %38, ptr %42, align 4, !dbg !378
  %43 = add i64 %33, 2, !dbg !378
  br label %32, !dbg !378

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !378
  br label %29, !dbg !378

46:                                               ; preds = %29
  ret i32 0, !dbg !378
}

define internal i32 @_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !379 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !380
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !380
  %6 = load ptr, ptr %5, align 8, !dbg !380
  %7 = getelementptr i32, ptr %6, i64 8448, !dbg !380
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !380
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !380
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !380
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !380
  %11 = load ptr, ptr %10, align 8, !dbg !380
  %12 = getelementptr i32, ptr %11, i64 7006208, !dbg !380
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !380
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !380
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !380
  %15 = zext i32 %14 to i64, !dbg !380
  %16 = sdiv i64 %15, 4, !dbg !380
  %17 = mul i64 %16, 4, !dbg !380
  %18 = icmp ne i64 %15, %17, !dbg !380
  %19 = icmp slt i64 %15, 0, !dbg !380
  %20 = and i1 %18, %19, !dbg !380
  %21 = add i64 %16, -1, !dbg !380
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !380
  %23 = srem i64 %15, 4, !dbg !380
  %24 = icmp slt i64 %23, 0, !dbg !380
  %25 = add nsw i64 %23, 4, !dbg !380
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !380
  %27 = mul nsw i64 %22, 112, !dbg !380
  %28 = mul nsw i64 %26, 64, !dbg !380
  %29 = mul nsw i64 %22, -112, !dbg !380
  %30 = add i64 %29, 196, !dbg !380
  %31 = icmp slt i64 %30, 112, !dbg !380
  %32 = select i1 %31, i64 %30, i64 112, !dbg !380
  br label %33, !dbg !380

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !380
  %35 = icmp slt i64 %34, %32, !dbg !380
  br i1 %35, label %36, label %50, !dbg !380

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !380
  %38 = icmp slt i64 %37, 64, !dbg !380
  br i1 %38, label %39, label %48, !dbg !380

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !380
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !380
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !380
  %43 = add i64 %27, %34, !dbg !380
  %44 = mul i64 %43, 256, !dbg !380
  %45 = add i64 %44, %40, !dbg !380
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !380
  store <2 x i32> %42, ptr %46, align 4, !dbg !380
  %47 = add i64 %37, 2, !dbg !380
  br label %36, !dbg !380

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !380
  br label %33, !dbg !380

50:                                               ; preds = %33
  ret i32 0, !dbg !380
}

define internal i32 @_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !381 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !382
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !382
  %6 = load ptr, ptr %5, align 8, !dbg !382
  %7 = getelementptr i32, ptr %6, i64 8704, !dbg !382
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !382
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !382
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !382
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !382
  %11 = load ptr, ptr %10, align 8, !dbg !382
  %12 = getelementptr i32, ptr %11, i64 7056384, !dbg !382
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !382
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !382
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !382
  %15 = zext i32 %14 to i64, !dbg !382
  %16 = sdiv i64 %15, 4, !dbg !382
  %17 = mul i64 %16, 4, !dbg !382
  %18 = icmp ne i64 %15, %17, !dbg !382
  %19 = icmp slt i64 %15, 0, !dbg !382
  %20 = and i1 %18, %19, !dbg !382
  %21 = add i64 %16, -1, !dbg !382
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !382
  %23 = srem i64 %15, 4, !dbg !382
  %24 = icmp slt i64 %23, 0, !dbg !382
  %25 = add nsw i64 %23, 4, !dbg !382
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !382
  %27 = mul nsw i64 %22, 112, !dbg !382
  %28 = mul nsw i64 %26, 64, !dbg !382
  %29 = mul nsw i64 %22, -112, !dbg !382
  %30 = add i64 %29, 196, !dbg !382
  %31 = icmp slt i64 %30, 112, !dbg !382
  %32 = select i1 %31, i64 %30, i64 112, !dbg !382
  br label %33, !dbg !382

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !382
  %35 = icmp slt i64 %34, %32, !dbg !382
  br i1 %35, label %36, label %50, !dbg !382

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !382
  %38 = icmp slt i64 %37, 64, !dbg !382
  br i1 %38, label %39, label %48, !dbg !382

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !382
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !382
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !382
  %43 = add i64 %27, %34, !dbg !382
  %44 = mul i64 %43, 256, !dbg !382
  %45 = add i64 %44, %40, !dbg !382
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !382
  store <2 x i32> %42, ptr %46, align 4, !dbg !382
  %47 = add i64 %37, 2, !dbg !382
  br label %36, !dbg !382

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !382
  br label %33, !dbg !382

50:                                               ; preds = %33
  ret i32 0, !dbg !382
}

define internal i32 @_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !383 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !384
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !384
  %6 = load ptr, ptr %5, align 8, !dbg !384
  %7 = getelementptr i32, ptr %6, i64 8960, !dbg !384
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !384
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !384
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !384
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !384
  %11 = load ptr, ptr %10, align 8, !dbg !384
  %12 = getelementptr i32, ptr %11, i64 7106560, !dbg !384
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !384
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !384
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !384
  %15 = zext i32 %14 to i64, !dbg !384
  %16 = sdiv i64 %15, 16, !dbg !384
  %17 = mul i64 %16, 16, !dbg !384
  %18 = icmp ne i64 %15, %17, !dbg !384
  %19 = icmp slt i64 %15, 0, !dbg !384
  %20 = and i1 %18, %19, !dbg !384
  %21 = add i64 %16, -1, !dbg !384
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !384
  %23 = srem i64 %15, 16, !dbg !384
  %24 = icmp slt i64 %23, 0, !dbg !384
  %25 = add nsw i64 %23, 16, !dbg !384
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !384
  %27 = mul nsw i64 %22, 98, !dbg !384
  %28 = mul nsw i64 %26, 64, !dbg !384
  br label %29, !dbg !384

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !384
  %31 = icmp slt i64 %30, 98, !dbg !384
  br i1 %31, label %32, label %46, !dbg !384

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !384
  %34 = icmp slt i64 %33, 64, !dbg !384
  br i1 %34, label %35, label %44, !dbg !384

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !384
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !384
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !384
  %39 = add i64 %27, %30, !dbg !384
  %40 = mul i64 %39, 1024, !dbg !384
  %41 = add i64 %40, %36, !dbg !384
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !384
  store <2 x i32> %38, ptr %42, align 4, !dbg !384
  %43 = add i64 %33, 2, !dbg !384
  br label %32, !dbg !384

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !384
  br label %29, !dbg !384

46:                                               ; preds = %29
  ret i32 0, !dbg !384
}

define internal i32 @_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !385 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !386
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !386
  %6 = load ptr, ptr %5, align 8, !dbg !386
  %7 = getelementptr i32, ptr %6, i64 9984, !dbg !386
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !386
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !386
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !386
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !386
  %11 = load ptr, ptr %10, align 8, !dbg !386
  %12 = getelementptr i32, ptr %11, i64 7307264, !dbg !386
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !386
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !386
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !386
  %15 = zext i32 %14 to i64, !dbg !386
  %16 = sdiv i64 %15, 4, !dbg !386
  %17 = mul i64 %16, 4, !dbg !386
  %18 = icmp ne i64 %15, %17, !dbg !386
  %19 = icmp slt i64 %15, 0, !dbg !386
  %20 = and i1 %18, %19, !dbg !386
  %21 = add i64 %16, -1, !dbg !386
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !386
  %23 = srem i64 %15, 4, !dbg !386
  %24 = icmp slt i64 %23, 0, !dbg !386
  %25 = add nsw i64 %23, 4, !dbg !386
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !386
  %27 = mul nsw i64 %22, 112, !dbg !386
  %28 = mul nsw i64 %26, 64, !dbg !386
  %29 = mul nsw i64 %22, -112, !dbg !386
  %30 = add i64 %29, 196, !dbg !386
  %31 = icmp slt i64 %30, 112, !dbg !386
  %32 = select i1 %31, i64 %30, i64 112, !dbg !386
  br label %33, !dbg !386

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !386
  %35 = icmp slt i64 %34, %32, !dbg !386
  br i1 %35, label %36, label %50, !dbg !386

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !386
  %38 = icmp slt i64 %37, 64, !dbg !386
  br i1 %38, label %39, label %48, !dbg !386

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !386
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !386
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !386
  %43 = add i64 %27, %34, !dbg !386
  %44 = mul i64 %43, 256, !dbg !386
  %45 = add i64 %44, %40, !dbg !386
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !386
  store <2 x i32> %42, ptr %46, align 4, !dbg !386
  %47 = add i64 %37, 2, !dbg !386
  br label %36, !dbg !386

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !386
  br label %33, !dbg !386

50:                                               ; preds = %33
  ret i32 0, !dbg !386
}

define internal i32 @_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !387 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !388
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !388
  %6 = load ptr, ptr %5, align 8, !dbg !388
  %7 = getelementptr i32, ptr %6, i64 10240, !dbg !388
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !388
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !388
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !388
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !388
  %11 = load ptr, ptr %10, align 8, !dbg !388
  %12 = getelementptr i32, ptr %11, i64 7357440, !dbg !388
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !388
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !388
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !388
  %15 = zext i32 %14 to i64, !dbg !388
  %16 = sdiv i64 %15, 4, !dbg !388
  %17 = mul i64 %16, 4, !dbg !388
  %18 = icmp ne i64 %15, %17, !dbg !388
  %19 = icmp slt i64 %15, 0, !dbg !388
  %20 = and i1 %18, %19, !dbg !388
  %21 = add i64 %16, -1, !dbg !388
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !388
  %23 = srem i64 %15, 4, !dbg !388
  %24 = icmp slt i64 %23, 0, !dbg !388
  %25 = add nsw i64 %23, 4, !dbg !388
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !388
  %27 = mul nsw i64 %22, 112, !dbg !388
  %28 = mul nsw i64 %26, 64, !dbg !388
  %29 = mul nsw i64 %22, -112, !dbg !388
  %30 = add i64 %29, 196, !dbg !388
  %31 = icmp slt i64 %30, 112, !dbg !388
  %32 = select i1 %31, i64 %30, i64 112, !dbg !388
  br label %33, !dbg !388

33:                                               ; preds = %48, %3
  %34 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !388
  %35 = icmp slt i64 %34, %32, !dbg !388
  br i1 %35, label %36, label %50, !dbg !388

36:                                               ; preds = %39, %33
  %37 = phi i64 [ %47, %39 ], [ 0, %33 ], !dbg !388
  %38 = icmp slt i64 %37, 64, !dbg !388
  br i1 %38, label %39, label %48, !dbg !388

39:                                               ; preds = %36
  %40 = add i64 %37, %28, !dbg !388
  %41 = getelementptr i32, ptr %7, i64 %40, !dbg !388
  %42 = load <2 x i32>, ptr %41, align 4, !dbg !388
  %43 = add i64 %27, %34, !dbg !388
  %44 = mul i64 %43, 256, !dbg !388
  %45 = add i64 %44, %40, !dbg !388
  %46 = getelementptr i32, ptr %12, i64 %45, !dbg !388
  store <2 x i32> %42, ptr %46, align 4, !dbg !388
  %47 = add i64 %37, 2, !dbg !388
  br label %36, !dbg !388

48:                                               ; preds = %36
  %49 = add i64 %34, 1, !dbg !388
  br label %33, !dbg !388

50:                                               ; preds = %33
  ret i32 0, !dbg !388
}

define internal i32 @_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !389 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !390
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !390
  %6 = load ptr, ptr %5, align 8, !dbg !390
  %7 = getelementptr i32, ptr %6, i64 10496, !dbg !390
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !390
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !390
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !390
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !390
  %11 = load ptr, ptr %10, align 8, !dbg !390
  %12 = getelementptr i32, ptr %11, i64 7407616, !dbg !390
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !390
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !390
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !390
  %15 = zext i32 %14 to i64, !dbg !390
  %16 = sdiv i64 %15, 16, !dbg !390
  %17 = mul i64 %16, 16, !dbg !390
  %18 = icmp ne i64 %15, %17, !dbg !390
  %19 = icmp slt i64 %15, 0, !dbg !390
  %20 = and i1 %18, %19, !dbg !390
  %21 = add i64 %16, -1, !dbg !390
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !390
  %23 = srem i64 %15, 16, !dbg !390
  %24 = icmp slt i64 %23, 0, !dbg !390
  %25 = add nsw i64 %23, 16, !dbg !390
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !390
  %27 = mul nsw i64 %22, 98, !dbg !390
  %28 = mul nsw i64 %26, 64, !dbg !390
  br label %29, !dbg !390

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !390
  %31 = icmp slt i64 %30, 98, !dbg !390
  br i1 %31, label %32, label %46, !dbg !390

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !390
  %34 = icmp slt i64 %33, 64, !dbg !390
  br i1 %34, label %35, label %44, !dbg !390

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !390
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !390
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !390
  %39 = add i64 %27, %30, !dbg !390
  %40 = mul i64 %39, 1024, !dbg !390
  %41 = add i64 %40, %36, !dbg !390
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !390
  store <2 x i32> %38, ptr %42, align 4, !dbg !390
  %43 = add i64 %33, 2, !dbg !390
  br label %32, !dbg !390

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !390
  br label %29, !dbg !390

46:                                               ; preds = %29
  ret i32 0, !dbg !390
}

define internal i32 @_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !391 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !392
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !392
  %6 = load ptr, ptr %5, align 8, !dbg !392
  %7 = getelementptr i32, ptr %6, i64 11520, !dbg !392
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !392
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !392
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !392
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !392
  %11 = load ptr, ptr %10, align 8, !dbg !392
  %12 = getelementptr i32, ptr %11, i64 7608320, !dbg !392
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !392
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !392
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !392
  %15 = zext i32 %14 to i64, !dbg !392
  %16 = sdiv i64 %15, 8, !dbg !392
  %17 = mul i64 %16, 8, !dbg !392
  %18 = icmp ne i64 %15, %17, !dbg !392
  %19 = icmp slt i64 %15, 0, !dbg !392
  %20 = and i1 %18, %19, !dbg !392
  %21 = add i64 %16, -1, !dbg !392
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !392
  %23 = srem i64 %15, 8, !dbg !392
  %24 = icmp slt i64 %23, 0, !dbg !392
  %25 = add nsw i64 %23, 8, !dbg !392
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !392
  %27 = mul nsw i64 %22, 98, !dbg !392
  %28 = mul nsw i64 %26, 64, !dbg !392
  br label %29, !dbg !392

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !392
  %31 = icmp slt i64 %30, 98, !dbg !392
  br i1 %31, label %32, label %46, !dbg !392

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !392
  %34 = icmp slt i64 %33, 64, !dbg !392
  br i1 %34, label %35, label %44, !dbg !392

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !392
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !392
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !392
  %39 = add i64 %27, %30, !dbg !392
  %40 = mul i64 %39, 512, !dbg !392
  %41 = add i64 %40, %36, !dbg !392
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !392
  store <2 x i32> %38, ptr %42, align 4, !dbg !392
  %43 = add i64 %33, 2, !dbg !392
  br label %32, !dbg !392

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !392
  br label %29, !dbg !392

46:                                               ; preds = %29
  ret i32 0, !dbg !392
}

define internal i32 @_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !393 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !394
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !394
  %6 = load ptr, ptr %5, align 8, !dbg !394
  %7 = getelementptr i32, ptr %6, i64 12032, !dbg !394
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !394
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !394
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !394
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !394
  %11 = load ptr, ptr %10, align 8, !dbg !394
  %12 = getelementptr i32, ptr %11, i64 7708672, !dbg !394
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !394
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !394
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !394
  %15 = zext i32 %14 to i64, !dbg !394
  %16 = mul nsw i64 %15, 128, !dbg !394
  br label %17, !dbg !394

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !394
  %19 = icmp slt i64 %18, 49, !dbg !394
  br i1 %19, label %20, label %33, !dbg !394

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !394
  %22 = icmp slt i64 %21, 128, !dbg !394
  br i1 %22, label %23, label %31, !dbg !394

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !394
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !394
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !394
  %27 = mul i64 %18, 2048, !dbg !394
  %28 = add i64 %27, %24, !dbg !394
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !394
  store <2 x i32> %26, ptr %29, align 4, !dbg !394
  %30 = add i64 %21, 2, !dbg !394
  br label %20, !dbg !394

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !394
  br label %17, !dbg !394

33:                                               ; preds = %17
  ret i32 0, !dbg !394
}

define internal i32 @_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !395 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !396
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !396
  %6 = load ptr, ptr %5, align 8, !dbg !396
  %7 = getelementptr i32, ptr %6, i64 14080, !dbg !396
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !396
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !396
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !396
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !396
  %11 = load ptr, ptr %10, align 8, !dbg !396
  %12 = getelementptr i32, ptr %11, i64 7809024, !dbg !396
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !396
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !396
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !396
  %15 = zext i32 %14 to i64, !dbg !396
  %16 = mul nsw i64 %15, 128, !dbg !396
  br label %17, !dbg !396

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !396
  %19 = icmp slt i64 %18, 49, !dbg !396
  br i1 %19, label %20, label %33, !dbg !396

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !396
  %22 = icmp slt i64 %21, 128, !dbg !396
  br i1 %22, label %23, label %31, !dbg !396

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !396
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !396
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !396
  %27 = mul i64 %18, 512, !dbg !396
  %28 = add i64 %27, %24, !dbg !396
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !396
  store <2 x i32> %26, ptr %29, align 4, !dbg !396
  %30 = add i64 %21, 2, !dbg !396
  br label %20, !dbg !396

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !396
  br label %17, !dbg !396

33:                                               ; preds = %17
  ret i32 0, !dbg !396
}

define internal i32 @_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !397 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !398
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !398
  %6 = load ptr, ptr %5, align 8, !dbg !398
  %7 = getelementptr i32, ptr %6, i64 14592, !dbg !398
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !398
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !398
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !398
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !398
  %11 = load ptr, ptr %10, align 8, !dbg !398
  %12 = getelementptr i32, ptr %11, i64 7834112, !dbg !398
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !398
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !398
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !398
  %15 = zext i32 %14 to i64, !dbg !398
  %16 = mul nsw i64 %15, 128, !dbg !398
  br label %17, !dbg !398

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !398
  %19 = icmp slt i64 %18, 49, !dbg !398
  br i1 %19, label %20, label %33, !dbg !398

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !398
  %22 = icmp slt i64 %21, 128, !dbg !398
  br i1 %22, label %23, label %31, !dbg !398

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !398
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !398
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !398
  %27 = mul i64 %18, 2048, !dbg !398
  %28 = add i64 %27, %24, !dbg !398
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !398
  store <2 x i32> %26, ptr %29, align 4, !dbg !398
  %30 = add i64 %21, 2, !dbg !398
  br label %20, !dbg !398

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !398
  br label %17, !dbg !398

33:                                               ; preds = %17
  ret i32 0, !dbg !398
}

define internal i32 @_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !399 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !400
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !400
  %6 = load ptr, ptr %5, align 8, !dbg !400
  %7 = getelementptr i32, ptr %6, i64 16640, !dbg !400
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !400
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !400
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !400
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !400
  %11 = load ptr, ptr %10, align 8, !dbg !400
  %12 = getelementptr i32, ptr %11, i64 7934464, !dbg !400
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !400
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !400
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !400
  %15 = zext i32 %14 to i64, !dbg !400
  %16 = mul nsw i64 %15, 128, !dbg !400
  br label %17, !dbg !400

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !400
  %19 = icmp slt i64 %18, 49, !dbg !400
  br i1 %19, label %20, label %33, !dbg !400

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !400
  %22 = icmp slt i64 %21, 128, !dbg !400
  br i1 %22, label %23, label %31, !dbg !400

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !400
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !400
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !400
  %27 = mul i64 %18, 512, !dbg !400
  %28 = add i64 %27, %24, !dbg !400
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !400
  store <2 x i32> %26, ptr %29, align 4, !dbg !400
  %30 = add i64 %21, 2, !dbg !400
  br label %20, !dbg !400

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !400
  br label %17, !dbg !400

33:                                               ; preds = %17
  ret i32 0, !dbg !400
}

define internal i32 @_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !401 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !402
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !402
  %6 = load ptr, ptr %5, align 8, !dbg !402
  %7 = getelementptr i32, ptr %6, i64 17152, !dbg !402
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !402
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !402
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !402
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !402
  %11 = load ptr, ptr %10, align 8, !dbg !402
  %12 = getelementptr i32, ptr %11, i64 7959552, !dbg !402
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !402
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !402
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !402
  %15 = zext i32 %14 to i64, !dbg !402
  %16 = mul nsw i64 %15, 128, !dbg !402
  br label %17, !dbg !402

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !402
  %19 = icmp slt i64 %18, 49, !dbg !402
  br i1 %19, label %20, label %33, !dbg !402

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !402
  %22 = icmp slt i64 %21, 128, !dbg !402
  br i1 %22, label %23, label %31, !dbg !402

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !402
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !402
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !402
  %27 = mul i64 %18, 512, !dbg !402
  %28 = add i64 %27, %24, !dbg !402
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !402
  store <2 x i32> %26, ptr %29, align 4, !dbg !402
  %30 = add i64 %21, 2, !dbg !402
  br label %20, !dbg !402

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !402
  br label %17, !dbg !402

33:                                               ; preds = %17
  ret i32 0, !dbg !402
}

define internal i32 @_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !403 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !404
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !404
  %6 = load ptr, ptr %5, align 8, !dbg !404
  %7 = getelementptr i32, ptr %6, i64 17664, !dbg !404
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !404
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !404
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !404
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !404
  %11 = load ptr, ptr %10, align 8, !dbg !404
  %12 = getelementptr i32, ptr %11, i64 7984640, !dbg !404
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !404
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !404
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !404
  %15 = zext i32 %14 to i64, !dbg !404
  %16 = mul nsw i64 %15, 128, !dbg !404
  br label %17, !dbg !404

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !404
  %19 = icmp slt i64 %18, 49, !dbg !404
  br i1 %19, label %20, label %33, !dbg !404

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !404
  %22 = icmp slt i64 %21, 128, !dbg !404
  br i1 %22, label %23, label %31, !dbg !404

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !404
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !404
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !404
  %27 = mul i64 %18, 2048, !dbg !404
  %28 = add i64 %27, %24, !dbg !404
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !404
  store <2 x i32> %26, ptr %29, align 4, !dbg !404
  %30 = add i64 %21, 2, !dbg !404
  br label %20, !dbg !404

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !404
  br label %17, !dbg !404

33:                                               ; preds = %17
  ret i32 0, !dbg !404
}

define internal i32 @_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !405 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !406
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !406
  %6 = load ptr, ptr %5, align 8, !dbg !406
  %7 = getelementptr i32, ptr %6, i64 19712, !dbg !406
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !406
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !406
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !406
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !406
  %11 = load ptr, ptr %10, align 8, !dbg !406
  %12 = getelementptr i32, ptr %11, i64 8084992, !dbg !406
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !406
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !406
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !406
  %15 = zext i32 %14 to i64, !dbg !406
  %16 = mul nsw i64 %15, 128, !dbg !406
  br label %17, !dbg !406

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !406
  %19 = icmp slt i64 %18, 49, !dbg !406
  br i1 %19, label %20, label %33, !dbg !406

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !406
  %22 = icmp slt i64 %21, 128, !dbg !406
  br i1 %22, label %23, label %31, !dbg !406

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !406
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !406
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !406
  %27 = mul i64 %18, 512, !dbg !406
  %28 = add i64 %27, %24, !dbg !406
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !406
  store <2 x i32> %26, ptr %29, align 4, !dbg !406
  %30 = add i64 %21, 2, !dbg !406
  br label %20, !dbg !406

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !406
  br label %17, !dbg !406

33:                                               ; preds = %17
  ret i32 0, !dbg !406
}

define internal i32 @_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !407 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !408
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !408
  %6 = load ptr, ptr %5, align 8, !dbg !408
  %7 = getelementptr i32, ptr %6, i64 20224, !dbg !408
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !408
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !408
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !408
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !408
  %11 = load ptr, ptr %10, align 8, !dbg !408
  %12 = getelementptr i32, ptr %11, i64 8110080, !dbg !408
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !408
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !408
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !408
  %15 = zext i32 %14 to i64, !dbg !408
  %16 = mul nsw i64 %15, 128, !dbg !408
  br label %17, !dbg !408

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !408
  %19 = icmp slt i64 %18, 49, !dbg !408
  br i1 %19, label %20, label %33, !dbg !408

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !408
  %22 = icmp slt i64 %21, 128, !dbg !408
  br i1 %22, label %23, label %31, !dbg !408

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !408
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !408
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !408
  %27 = mul i64 %18, 512, !dbg !408
  %28 = add i64 %27, %24, !dbg !408
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !408
  store <2 x i32> %26, ptr %29, align 4, !dbg !408
  %30 = add i64 %21, 2, !dbg !408
  br label %20, !dbg !408

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !408
  br label %17, !dbg !408

33:                                               ; preds = %17
  ret i32 0, !dbg !408
}

define internal i32 @_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !409 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !410
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !410
  %6 = load ptr, ptr %5, align 8, !dbg !410
  %7 = getelementptr i32, ptr %6, i64 20736, !dbg !410
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !410
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !410
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !410
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !410
  %11 = load ptr, ptr %10, align 8, !dbg !410
  %12 = getelementptr i32, ptr %11, i64 8135168, !dbg !410
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !410
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !410
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !410
  %15 = zext i32 %14 to i64, !dbg !410
  %16 = mul nsw i64 %15, 128, !dbg !410
  br label %17, !dbg !410

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !410
  %19 = icmp slt i64 %18, 49, !dbg !410
  br i1 %19, label %20, label %33, !dbg !410

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !410
  %22 = icmp slt i64 %21, 128, !dbg !410
  br i1 %22, label %23, label %31, !dbg !410

23:                                               ; preds = %20
  %24 = add i64 %21, %16, !dbg !410
  %25 = getelementptr i32, ptr %7, i64 %24, !dbg !410
  %26 = load <2 x i32>, ptr %25, align 4, !dbg !410
  %27 = mul i64 %18, 2048, !dbg !410
  %28 = add i64 %27, %24, !dbg !410
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !410
  store <2 x i32> %26, ptr %29, align 4, !dbg !410
  %30 = add i64 %21, 2, !dbg !410
  br label %20, !dbg !410

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !410
  br label %17, !dbg !410

33:                                               ; preds = %17
  ret i32 0, !dbg !410
}

define internal i32 @"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !411 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !412
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !412
  %6 = load ptr, ptr %5, align 8, !dbg !412
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !412
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !413
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !413
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !413
  %10 = load ptr, ptr %9, align 8, !dbg !413
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !413
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !412
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !412
  %13 = zext i32 %12 to i64, !dbg !412
  %14 = sdiv i64 %13, 16, !dbg !412
  %15 = mul i64 %14, 16, !dbg !412
  %16 = icmp ne i64 %13, %15, !dbg !412
  %17 = icmp slt i64 %13, 0, !dbg !412
  %18 = and i1 %16, %17, !dbg !412
  %19 = add i64 %14, -1, !dbg !412
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !412
  %21 = srem i64 %13, 16, !dbg !412
  %22 = icmp slt i64 %21, 0, !dbg !412
  %23 = add nsw i64 %21, 16, !dbg !412
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !412
  %25 = sdiv i64 %24, 4, !dbg !412
  %26 = srem i64 %13, 4, !dbg !412
  %27 = icmp slt i64 %26, 0, !dbg !412
  %28 = add nsw i64 %26, 4, !dbg !412
  %29 = select i1 %27, i64 %28, i64 %26, !dbg !412
  %30 = mul nsw i64 %20, 2, !dbg !412
  %31 = mul nsw i64 %25, 56, !dbg !412
  %32 = mul nsw i64 %29, 56, !dbg !412
  %33 = mul nsw i64 %20, -2, !dbg !412
  %34 = add i64 %33, 3, !dbg !412
  %35 = icmp slt i64 %34, 2, !dbg !412
  %36 = select i1 %35, i64 %34, i64 2, !dbg !412
  br label %37, !dbg !412

37:                                               ; preds = %126, %3
  %38 = phi i64 [ %127, %126 ], [ 0, %3 ], !dbg !412
  %39 = icmp slt i64 %38, %36, !dbg !412
  br i1 %39, label %40, label %128, !dbg !412

40:                                               ; preds = %37
  %41 = add i64 %38, %30, !dbg !412
  br label %42, !dbg !412

42:                                               ; preds = %124, %40
  %43 = phi i64 [ %125, %124 ], [ 0, %40 ], !dbg !412
  %44 = icmp slt i64 %43, 56, !dbg !412
  br i1 %44, label %45, label %126, !dbg !412

45:                                               ; preds = %42
  %46 = add i64 %43, %31, !dbg !412
  br label %47, !dbg !412

47:                                               ; preds = %50, %45
  %48 = phi i64 [ %123, %50 ], [ 0, %45 ], !dbg !412
  %49 = icmp slt i64 %48, 56, !dbg !412
  br i1 %49, label %50, label %124, !dbg !412

50:                                               ; preds = %47
  %51 = add i64 %48, %32, !dbg !412
  %52 = mul i64 %41, 50176, !dbg !412
  %53 = mul i64 %46, 224, !dbg !412
  %54 = add i64 %52, %53, !dbg !412
  %55 = add i64 %54, %51, !dbg !412
  %56 = getelementptr float, ptr %6, i64 %55, !dbg !412
  %57 = load <2 x float>, ptr %56, align 4, !dbg !412
  %58 = fdiv <2 x float> %57, splat (float 0x3FA264FD40000000), !dbg !412
  %59 = bitcast <2 x float> %58 to <2 x i32>, !dbg !412
  %60 = call <2 x float> @llvm.round.v2f32(<2 x float> %58), !dbg !412
  %61 = bitcast <2 x float> %60 to <2 x i32>, !dbg !412
  %62 = lshr <2 x i32> %59, splat (i32 23), !dbg !412
  %63 = and <2 x i32> %62, splat (i32 255), !dbg !412
  %64 = sub <2 x i32> %63, splat (i32 127), !dbg !412
  %65 = lshr <2 x i32> %61, splat (i32 23), !dbg !412
  %66 = and <2 x i32> %65, splat (i32 255), !dbg !412
  %67 = sub <2 x i32> %66, splat (i32 127), !dbg !412
  %68 = icmp eq <2 x i32> %67, zeroinitializer, !dbg !412
  %69 = sub <2 x i32> %67, splat (i32 1), !dbg !412
  %70 = icmp sgt <2 x i32> %69, zeroinitializer, !dbg !412
  %71 = select <2 x i1> %70, <2 x i32> %69, <2 x i32> zeroinitializer, !dbg !412
  %72 = icmp slt <2 x i32> %71, splat (i32 31), !dbg !412
  %73 = select <2 x i1> %72, <2 x i32> %71, <2 x i32> splat (i32 31), !dbg !412
  %74 = lshr <2 x i32> splat (i32 8388607), %73, !dbg !412
  %75 = and <2 x i32> %61, %74, !dbg !412
  %76 = icmp ne <2 x i32> %75, zeroinitializer, !dbg !412
  %77 = or <2 x i1> %76, %68, !dbg !412
  %78 = icmp eq <2 x i32> %64, splat (i32 -1), !dbg !412
  %79 = icmp sgt <2 x i32> %64, zeroinitializer, !dbg !412
  %80 = select <2 x i1> %79, <2 x i32> %64, <2 x i32> zeroinitializer, !dbg !412
  %81 = icmp slt <2 x i32> %80, splat (i32 31), !dbg !412
  %82 = select <2 x i1> %81, <2 x i32> %80, <2 x i32> splat (i32 31), !dbg !412
  %83 = lshr <2 x i32> splat (i32 4194304), %82, !dbg !412
  %84 = select <2 x i1> %78, <2 x i32> zeroinitializer, <2 x i32> %83, !dbg !412
  %85 = lshr <2 x i32> splat (i32 8388607), %82, !dbg !412
  %86 = and <2 x i32> %59, %85, !dbg !412
  %87 = icmp eq <2 x i32> %86, %84, !dbg !412
  %88 = icmp sge <2 x i32> %64, splat (i32 -1), !dbg !412
  %89 = icmp slt <2 x i32> %64, splat (i32 23), !dbg !412
  %90 = and <2 x i1> %87, %89, !dbg !412
  %91 = and <2 x i1> %90, %88, !dbg !412
  %92 = call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %58), !dbg !412
  %93 = fsub contract <2 x float> %60, %92, !dbg !412
  %94 = and <2 x i1> %77, %91, !dbg !412
  %95 = select <2 x i1> %94, <2 x float> %93, <2 x float> %60, !dbg !412
  %96 = call <2 x float> @llvm.copysign.v2f32(<2 x float> %95, <2 x float> %58), !dbg !412
  %97 = fadd contract <2 x float> %96, zeroinitializer, !dbg !412
  %98 = fcmp ugt <2 x float> %97, splat (float -1.280000e+02), !dbg !412
  %99 = select <2 x i1> %98, <2 x float> %97, <2 x float> splat (float -1.280000e+02), !dbg !412
  %100 = select <2 x i1> zeroinitializer, <2 x float> splat (float -1.280000e+02), <2 x float> %99, !dbg !412
  %101 = fcmp ult <2 x float> %100, splat (float 1.270000e+02), !dbg !412
  %102 = select <2 x i1> %101, <2 x float> %100, <2 x float> splat (float 1.270000e+02), !dbg !412
  %103 = select <2 x i1> zeroinitializer, <2 x float> splat (float 1.270000e+02), <2 x float> %102, !dbg !412
  %104 = fptosi <2 x float> %103 to <2 x i8>, !dbg !412
  %105 = extractelement <2 x i8> %104, i64 0, !dbg !412
  %106 = insertelement <1 x i8> poison, i8 %105, i64 0, !dbg !412
  %107 = extractelement <2 x i8> %104, i64 1, !dbg !412
  %108 = insertelement <1 x i8> poison, i8 %107, i64 0, !dbg !412
  %109 = add i64 %46, 3, !dbg !412
  %110 = add i64 %51, 3, !dbg !412
  %111 = mul i64 %109, 690, !dbg !412
  %112 = mul i64 %110, 3, !dbg !412
  %113 = add i64 %111, %112, !dbg !412
  %114 = add i64 %113, %41, !dbg !412
  %115 = getelementptr i8, ptr %10, i64 %114, !dbg !412
  store <1 x i8> %106, ptr %115, align 1, !dbg !412
  %116 = add i64 %48, 1, !dbg !412
  %117 = add i64 %32, %116, !dbg !412
  %118 = add i64 %117, 3, !dbg !412
  %119 = mul i64 %118, 3, !dbg !412
  %120 = add i64 %111, %119, !dbg !412
  %121 = add i64 %120, %41, !dbg !412
  %122 = getelementptr i8, ptr %10, i64 %121, !dbg !412
  store <1 x i8> %108, ptr %122, align 1, !dbg !412
  %123 = add i64 %48, 2, !dbg !412
  br label %47, !dbg !412

124:                                              ; preds = %47
  %125 = add i64 %43, 1, !dbg !412
  br label %42, !dbg !412

126:                                              ; preds = %42
  %127 = add i64 %38, 1, !dbg !412
  br label %37, !dbg !412

128:                                              ; preds = %37
  ret i32 0, !dbg !412
}

define internal i32 @"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !414 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !415
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !415
  %6 = load ptr, ptr %5, align 8, !dbg !415
  %7 = getelementptr i32, ptr %6, i64 1008, !dbg !415
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !415
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !415
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !415
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !415
  %11 = load ptr, ptr %10, align 8, !dbg !415
  %12 = getelementptr i32, ptr %11, i64 39680, !dbg !415
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !415
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !415
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !415
  %15 = zext i32 %14 to i64, !dbg !415
  %16 = mul nsw i64 %15, 64, !dbg !415
  br label %17, !dbg !415

17:                                               ; preds = %31, %3
  %18 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !415
  %19 = icmp slt i64 %18, 64, !dbg !415
  br i1 %19, label %20, label %33, !dbg !415

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %30, %23 ], [ 0, %17 ], !dbg !415
  %22 = icmp slt i64 %21, 64, !dbg !415
  br i1 %22, label %23, label %31, !dbg !415

23:                                               ; preds = %20
  %24 = getelementptr i32, ptr %7, i64 %21, !dbg !415
  %25 = load <2 x i32>, ptr %24, align 4, !dbg !415
  %26 = add i64 %16, %18, !dbg !415
  %27 = mul i64 %26, 64, !dbg !415
  %28 = add i64 %27, %21, !dbg !415
  %29 = getelementptr i32, ptr %12, i64 %28, !dbg !415
  store <2 x i32> %25, ptr %29, align 4, !dbg !415
  %30 = add i64 %21, 2, !dbg !415
  br label %20, !dbg !415

31:                                               ; preds = %20
  %32 = add i64 %18, 1, !dbg !415
  br label %17, !dbg !415

33:                                               ; preds = %17
  ret i32 0, !dbg !415
}

define internal i32 @"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !416 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !417
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !417
  %6 = load ptr, ptr %5, align 8, !dbg !417
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !417
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !418
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !418
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !418
  %10 = load ptr, ptr %9, align 8, !dbg !418
  %11 = getelementptr i8, ptr %10, i64 3369984, !dbg !418
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !418
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !418
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !418
  %14 = zext i32 %13 to i64, !dbg !418
  %15 = sdiv i64 %14, 4, !dbg !418
  %16 = mul i64 %15, 4, !dbg !418
  %17 = icmp ne i64 %14, %16, !dbg !418
  %18 = icmp slt i64 %14, 0, !dbg !418
  %19 = and i1 %17, %18, !dbg !418
  %20 = add i64 %15, -1, !dbg !418
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !418
  %22 = srem i64 %14, 4, !dbg !418
  %23 = icmp slt i64 %22, 0, !dbg !418
  %24 = add nsw i64 %22, 4, !dbg !418
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !418
  %26 = mul nsw i64 %21, 16, !dbg !418
  %27 = mul nsw i64 %25, 28, !dbg !418
  br label %28, !dbg !418

28:                                               ; preds = %78, %3
  %29 = phi i64 [ %79, %78 ], [ 0, %3 ], !dbg !418
  %30 = icmp slt i64 %29, 16, !dbg !418
  br i1 %30, label %31, label %80, !dbg !418

31:                                               ; preds = %76, %28
  %32 = phi i64 [ %77, %76 ], [ 0, %28 ], !dbg !418
  %33 = icmp slt i64 %32, 28, !dbg !418
  br i1 %33, label %34, label %78, !dbg !418

34:                                               ; preds = %74, %31
  %35 = phi i64 [ %75, %74 ], [ 0, %31 ], !dbg !418
  %36 = icmp slt i64 %35, 7, !dbg !418
  br i1 %36, label %37, label %76, !dbg !418

37:                                               ; preds = %34
  %38 = mul nsw i64 %29, 2, !dbg !418
  %39 = add i64 %38, %35, !dbg !418
  %40 = mul nsw i64 %21, 32, !dbg !418
  %41 = add i64 %39, %40, !dbg !418
  br label %42, !dbg !418

42:                                               ; preds = %72, %37
  %43 = phi i64 [ %73, %72 ], [ 0, %37 ], !dbg !418
  %44 = icmp slt i64 %43, 7, !dbg !418
  br i1 %44, label %45, label %74, !dbg !418

45:                                               ; preds = %42
  %46 = mul nsw i64 %32, 2, !dbg !418
  %47 = add i64 %46, %43, !dbg !418
  %48 = mul nsw i64 %25, 56, !dbg !418
  %49 = add i64 %47, %48, !dbg !418
  br label %50, !dbg !418

50:                                               ; preds = %53, %45
  %51 = phi i64 [ %71, %53 ], [ 0, %45 ], !dbg !418
  %52 = icmp slt i64 %51, 3, !dbg !418
  br i1 %52, label %53, label %72, !dbg !418

53:                                               ; preds = %50
  %54 = mul nuw nsw i64 %41, 690, !dbg !418
  %55 = mul nuw nsw i64 %49, 3, !dbg !418
  %56 = add nuw nsw i64 %54, %55, !dbg !418
  %57 = add nuw nsw i64 %56, %51, !dbg !418
  %58 = getelementptr inbounds nuw i8, ptr %6, i64 %57, !dbg !418
  %59 = load i8, ptr %58, align 1, !dbg !418
  %60 = add i64 %26, %29, !dbg !418
  %61 = add i64 %27, %32, !dbg !418
  %62 = mul nuw nsw i64 %60, 16464, !dbg !418
  %63 = mul nuw nsw i64 %61, 147, !dbg !418
  %64 = add nuw nsw i64 %62, %63, !dbg !418
  %65 = mul nuw nsw i64 %35, 21, !dbg !418
  %66 = add nuw nsw i64 %64, %65, !dbg !418
  %67 = mul nuw nsw i64 %43, 3, !dbg !418
  %68 = add nuw nsw i64 %66, %67, !dbg !418
  %69 = add nuw nsw i64 %68, %51, !dbg !418
  %70 = getelementptr inbounds nuw i8, ptr %11, i64 %69, !dbg !418
  store i8 %59, ptr %70, align 1, !dbg !418
  %71 = add i64 %51, 1, !dbg !418
  br label %50, !dbg !418

72:                                               ; preds = %50
  %73 = add i64 %43, 1, !dbg !418
  br label %42, !dbg !418

74:                                               ; preds = %42
  %75 = add i64 %35, 1, !dbg !418
  br label %34, !dbg !418

76:                                               ; preds = %34
  %77 = add i64 %32, 1, !dbg !418
  br label %31, !dbg !418

78:                                               ; preds = %31
  %79 = add i64 %29, 1, !dbg !418
  br label %28, !dbg !418

80:                                               ; preds = %28
  ret i32 0, !dbg !418
}

define internal i32 @"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !419 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !420
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !420
  %6 = load ptr, ptr %5, align 8, !dbg !420
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !420
  %8 = load ptr, ptr %7, align 8, !dbg !420
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !420
  %10 = load ptr, ptr %9, align 8, !dbg !420
  %11 = getelementptr float, ptr %10, i64 1303488, !dbg !420
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !420
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !420
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !420
  %14 = zext i32 %13 to i64, !dbg !420
  %15 = sdiv i64 %14, 4, !dbg !420
  %16 = mul i64 %15, 4, !dbg !420
  %17 = icmp ne i64 %14, %16, !dbg !420
  %18 = icmp slt i64 %14, 0, !dbg !420
  %19 = and i1 %17, %18, !dbg !420
  %20 = add i64 %15, -1, !dbg !420
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !420
  %22 = srem i64 %14, 4, !dbg !420
  %23 = icmp slt i64 %22, 0, !dbg !420
  %24 = add nsw i64 %22, 4, !dbg !420
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !420
  %26 = mul nsw i64 %21, 16, !dbg !420
  %27 = mul nsw i64 %25, 16, !dbg !420
  %28 = alloca i8, i64 256, align 1, !dbg !420
  %29 = mul nsw i64 %26, 147, !dbg !420
  %30 = add i64 %29, 3369984, !dbg !420
  %31 = ptrtoint ptr %6 to i64, !dbg !420
  %32 = add i64 %31, %30, !dbg !420
  %33 = add i64 %27, 4288, !dbg !420
  %34 = ptrtoint ptr %8 to i64, !dbg !420
  %35 = add i64 %34, %33, !dbg !420
  %36 = ptrtoint ptr %28 to i64, !dbg !420
  %37 = mul nsw i64 %26, 64, !dbg !420
  %38 = add i64 %37, %27, !dbg !420
  %39 = add i64 %38, 39680, !dbg !420
  %40 = mul i64 %39, 4, !dbg !420
  %41 = add i64 %31, %40, !dbg !420
  %42 = and i64 %32, 9223372036854775807, !dbg !420
  %43 = and i64 %35, 9223372036854775807, !dbg !420
  %44 = and i64 %36, 9223372036854775807, !dbg !420
  %45 = and i64 %41, 9223372036854775807, !dbg !420
  call void asm sideeffect "fence", ""(), !dbg !420
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !420
  call void @llvm.riscv.config(i64 2, i64 4278046838545711120), !dbg !420
  call void @llvm.riscv.config(i64 4575657221409472769, i64 147), !dbg !420
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !420
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !420
  call void @llvm.riscv.loop.ws.config.bounds(i64 55834574848, i64 42949738497), !dbg !420
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %42, i64 %43), !dbg !420
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %45, i64 %44), !dbg !420
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 147, i64 64), !dbg !420
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 16), !dbg !420
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !420
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !420
  call void asm sideeffect "fence", ""(), !dbg !420
  br label %46, !dbg !421

46:                                               ; preds = %112, %3
  %47 = phi i64 [ %113, %112 ], [ 0, %3 ], !dbg !421
  %48 = icmp slt i64 %47, 16, !dbg !421
  br i1 %48, label %49, label %114, !dbg !421

49:                                               ; preds = %52, %46
  %50 = phi i64 [ %111, %52 ], [ 0, %46 ], !dbg !421
  %51 = icmp slt i64 %50, 16, !dbg !421
  br i1 %51, label %52, label %112, !dbg !421

52:                                               ; preds = %49
  %53 = mul nuw nsw i64 %47, 16, !dbg !421
  %54 = add nuw nsw i64 %53, %50, !dbg !421
  %55 = getelementptr inbounds nuw i8, ptr %28, i64 %54, !dbg !421
  %56 = load i8, ptr %55, align 1, !dbg !421
  %57 = icmp sgt i8 %56, 0, !dbg !422
  %58 = select i1 %57, i8 %56, i8 0, !dbg !422
  %59 = sitofp i8 %58 to float, !dbg !422
  %60 = bitcast float %59 to i32, !dbg !423
  %61 = call float @llvm.round.f32(float %59), !dbg !423
  %62 = bitcast float %61 to i32, !dbg !423
  %63 = lshr i32 %60, 23, !dbg !423
  %64 = and i32 %63, 255, !dbg !423
  %65 = sub i32 %64, 127, !dbg !423
  %66 = lshr i32 %62, 23, !dbg !423
  %67 = and i32 %66, 255, !dbg !423
  %68 = sub i32 %67, 127, !dbg !423
  %69 = icmp eq i32 %68, 0, !dbg !423
  %70 = sub i32 %67, 128, !dbg !423
  %71 = icmp sgt i32 %70, 0, !dbg !423
  %72 = select i1 %71, i32 %70, i32 0, !dbg !423
  %73 = icmp slt i32 %72, 31, !dbg !423
  %74 = select i1 %73, i32 %72, i32 31, !dbg !423
  %75 = lshr i32 8388607, %74, !dbg !423
  %76 = and i32 %62, %75, !dbg !423
  %77 = icmp ne i32 %76, 0, !dbg !423
  %78 = or i1 %77, %69, !dbg !423
  %79 = icmp eq i32 %65, -1, !dbg !423
  %80 = icmp sgt i32 %65, 0, !dbg !423
  %81 = select i1 %80, i32 %65, i32 0, !dbg !423
  %82 = icmp slt i32 %81, 31, !dbg !423
  %83 = select i1 %82, i32 %81, i32 31, !dbg !423
  %84 = lshr i32 4194304, %83, !dbg !423
  %85 = select i1 %79, i32 0, i32 %84, !dbg !423
  %86 = lshr i32 8388607, %83, !dbg !423
  %87 = and i32 %60, %86, !dbg !423
  %88 = icmp eq i32 %87, %85, !dbg !423
  %89 = icmp sge i32 %65, -1, !dbg !423
  %90 = icmp slt i32 %65, 23, !dbg !423
  %91 = and i1 %88, %90, !dbg !423
  %92 = and i1 %91, %89, !dbg !423
  %93 = call float @llvm.copysign.f32(float 1.000000e+00, float %59), !dbg !423
  %94 = fsub contract float %61, %93, !dbg !423
  %95 = and i1 %78, %92, !dbg !423
  %96 = select i1 %95, float %94, float %61, !dbg !423
  %97 = call float @llvm.copysign.f32(float %96, float %59), !dbg !423
  %98 = fadd contract float %97, 0.000000e+00, !dbg !423
  %99 = fcmp ugt float %98, -1.280000e+02, !dbg !423
  %100 = select i1 %99, float %98, float -1.280000e+02, !dbg !423
  %101 = fcmp ult float %100, 1.270000e+02, !dbg !423
  %102 = select i1 %101, float %100, float 1.270000e+02, !dbg !423
  %103 = fptosi float %102 to i8, !dbg !423
  %104 = sitofp i8 %103 to float, !dbg !421
  %105 = fmul contract float %104, 0x3FD76BBD60000000, !dbg !421
  %106 = add i64 %26, %47, !dbg !421
  %107 = add i64 %27, %50, !dbg !421
  %108 = mul nuw nsw i64 %106, 64, !dbg !421
  %109 = add nuw nsw i64 %108, %107, !dbg !421
  %110 = getelementptr inbounds nuw float, ptr %11, i64 %109, !dbg !421
  store float %105, ptr %110, align 4, !dbg !421
  %111 = add i64 %50, 1, !dbg !421
  br label %49, !dbg !421

112:                                              ; preds = %49
  %113 = add i64 %47, 1, !dbg !421
  br label %46, !dbg !421

114:                                              ; preds = %46
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !420
  ret i32 0, !dbg !420
}

define internal i32 @"main_graph$async_dispatch_4_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !424 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !425
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !425
  %6 = load ptr, ptr %5, align 8, !dbg !425
  %7 = getelementptr float, ptr %6, i64 1303488, !dbg !425
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !425
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !426
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !426
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !426
  %11 = load ptr, ptr %10, align 8, !dbg !426
  %12 = getelementptr float, ptr %11, i64 2106304, !dbg !426
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !426
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !426
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !426
  %15 = zext i32 %14 to i64, !dbg !426
  %16 = sdiv i64 %15, 2, !dbg !426
  %17 = mul i64 %16, 2, !dbg !426
  %18 = icmp ne i64 %15, %17, !dbg !426
  %19 = icmp slt i64 %15, 0, !dbg !426
  %20 = and i1 %18, %19, !dbg !426
  %21 = add i64 %16, -1, !dbg !426
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !426
  %23 = srem i64 %15, 2, !dbg !426
  %24 = icmp slt i64 %23, 0, !dbg !426
  %25 = add nsw i64 %23, 2, !dbg !426
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !426
  %27 = mul nsw i64 %22, 8, !dbg !426
  %28 = mul nsw i64 %26, 56, !dbg !426
  br label %29, !dbg !426

29:                                               ; preds = %57, %3
  %30 = phi i64 [ %58, %57 ], [ 0, %3 ], !dbg !426
  %31 = icmp slt i64 %30, 8, !dbg !426
  br i1 %31, label %32, label %59, !dbg !426

32:                                               ; preds = %55, %29
  %33 = phi i64 [ %56, %55 ], [ 0, %29 ], !dbg !426
  %34 = icmp slt i64 %33, 56, !dbg !426
  br i1 %34, label %35, label %57, !dbg !426

35:                                               ; preds = %38, %32
  %36 = phi i64 [ %54, %38 ], [ 0, %32 ], !dbg !426
  %37 = icmp slt i64 %36, 64, !dbg !426
  br i1 %37, label %38, label %55, !dbg !426

38:                                               ; preds = %35
  %39 = add i64 %27, %30, !dbg !426
  %40 = add i64 %28, %33, !dbg !426
  %41 = mul i64 %39, 7168, !dbg !426
  %42 = mul i64 %40, 64, !dbg !426
  %43 = add i64 %41, %42, !dbg !426
  %44 = add i64 %43, %36, !dbg !426
  %45 = getelementptr float, ptr %7, i64 %44, !dbg !426
  %46 = load <2 x float>, ptr %45, align 4, !dbg !426
  %47 = add i64 %39, 1, !dbg !426
  %48 = add i64 %40, 1, !dbg !426
  %49 = mul i64 %47, 7296, !dbg !426
  %50 = mul i64 %48, 64, !dbg !426
  %51 = add i64 %49, %50, !dbg !426
  %52 = add i64 %51, %36, !dbg !426
  %53 = getelementptr float, ptr %12, i64 %52, !dbg !426
  store <2 x float> %46, ptr %53, align 4, !dbg !426
  %54 = add i64 %36, 2, !dbg !426
  br label %35, !dbg !426

55:                                               ; preds = %35
  %56 = add i64 %33, 1, !dbg !426
  br label %32, !dbg !426

57:                                               ; preds = %32
  %58 = add i64 %30, 1, !dbg !426
  br label %29, !dbg !426

59:                                               ; preds = %29
  ret i32 0, !dbg !426
}

define internal i32 @"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !427 {
  %4 = alloca float, i64 2, align 64, !dbg !428
  %5 = alloca float, i64 2, align 64, !dbg !428
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !428
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !428
  %8 = load ptr, ptr %7, align 8, !dbg !428
  %9 = getelementptr float, ptr %8, i64 2106304, !dbg !428
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !428
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !428
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !428
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !428
  %13 = load ptr, ptr %12, align 8, !dbg !428
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !428
  %14 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !428
  %15 = extractvalue %iree_hal_executable_workgroup_state_v0_t %14, 0, !dbg !428
  %16 = zext i32 %15 to i64, !dbg !428
  %17 = sdiv i64 %16, 4, !dbg !428
  %18 = mul i64 %17, 4, !dbg !428
  %19 = icmp ne i64 %16, %18, !dbg !428
  %20 = icmp slt i64 %16, 0, !dbg !428
  %21 = and i1 %19, %20, !dbg !428
  %22 = add i64 %17, -1, !dbg !428
  %23 = select i1 %21, i64 %22, i64 %17, !dbg !428
  %24 = srem i64 %16, 4, !dbg !428
  %25 = icmp slt i64 %24, 0, !dbg !428
  %26 = add nsw i64 %24, 4, !dbg !428
  %27 = select i1 %25, i64 %26, i64 %24, !dbg !428
  %28 = sdiv i64 %27, 2, !dbg !428
  %29 = srem i64 %16, 2, !dbg !428
  %30 = icmp slt i64 %29, 0, !dbg !428
  %31 = add nsw i64 %29, 2, !dbg !428
  %32 = select i1 %30, i64 %31, i64 %29, !dbg !428
  %33 = mul nsw i64 %23, 8, !dbg !428
  %34 = mul nsw i64 %28, 28, !dbg !428
  %35 = mul nsw i64 %32, 28, !dbg !428
  %36 = getelementptr float, ptr %5, i64 0
  store <2 x float> splat (float 0xFFF0000000000000), ptr %36, align 4
  br label %37, !dbg !428

37:                                               ; preds = %176, %3
  %38 = phi i64 [ %177, %176 ], [ 0, %3 ], !dbg !428
  %39 = icmp slt i64 %38, 8, !dbg !428
  br i1 %39, label %40, label %178, !dbg !428

40:                                               ; preds = %37
  %41 = add i64 %38, %33, !dbg !428
  br label %42, !dbg !428

42:                                               ; preds = %174, %40
  %43 = phi i64 [ %175, %174 ], [ 0, %40 ], !dbg !428
  %44 = icmp slt i64 %43, 28, !dbg !428
  br i1 %44, label %45, label %176, !dbg !428

45:                                               ; preds = %106, %42
  %46 = phi i64 [ %173, %106 ], [ 0, %42 ], !dbg !428
  %47 = icmp slt i64 %46, 28, !dbg !428
  br i1 %47, label %48, label %174, !dbg !428

48:                                               ; preds = %51, %45
  %49 = phi i64 [ %56, %51 ], [ 0, %45 ], !dbg !428
  %50 = icmp slt i64 %49, 2, !dbg !428
  br i1 %50, label %51, label %57, !dbg !428

51:                                               ; preds = %48
  %52 = add nuw nsw i64 0, %49, !dbg !428
  %53 = getelementptr inbounds nuw float, ptr %5, i64 %52, !dbg !428
  %54 = load float, ptr %53, align 4, !dbg !428
  %55 = getelementptr inbounds nuw float, ptr %4, i64 %52, !dbg !428
  store float %54, ptr %55, align 4, !dbg !428
  %56 = add i64 %49, 1, !dbg !428
  br label %48, !dbg !428

57:                                               ; preds = %104, %48
  %58 = phi i64 [ %105, %104 ], [ 0, %48 ], !dbg !428
  %59 = icmp slt i64 %58, 3, !dbg !428
  br i1 %59, label %60, label %106, !dbg !428

60:                                               ; preds = %57
  %61 = mul nsw i64 %43, 2, !dbg !428
  %62 = mul nsw i64 %28, 56, !dbg !428
  %63 = add i64 %61, %62, !dbg !428
  %64 = add i64 %63, %58, !dbg !428
  br label %65, !dbg !428

65:                                               ; preds = %102, %60
  %66 = phi i64 [ %103, %102 ], [ 0, %60 ], !dbg !428
  %67 = icmp slt i64 %66, 3, !dbg !428
  br i1 %67, label %68, label %104, !dbg !428

68:                                               ; preds = %65
  %69 = sub i64 3, %66, !dbg !428
  %70 = icmp slt i64 %69, 2, !dbg !428
  %71 = select i1 %70, i64 %69, i64 2, !dbg !428
  %72 = mul nsw i64 %46, 2, !dbg !428
  %73 = mul nsw i64 %32, 56, !dbg !428
  %74 = add i64 %72, %73, !dbg !428
  %75 = add i64 %74, %66, !dbg !428
  br label %76, !dbg !428

76:                                               ; preds = %100, %68
  %77 = phi i64 [ %101, %100 ], [ 0, %68 ], !dbg !428
  %78 = icmp slt i64 %77, 2, !dbg !428
  br i1 %78, label %79, label %102, !dbg !428

79:                                               ; preds = %82, %76
  %80 = phi i64 [ %99, %82 ], [ 0, %76 ], !dbg !428
  %81 = icmp slt i64 %80, %71, !dbg !428
  br i1 %81, label %82, label %100, !dbg !428

82:                                               ; preds = %79
  %83 = mul nsw i64 %77, 2, !dbg !428
  %84 = add i64 %75, %83, !dbg !428
  %85 = add i64 %84, %80, !dbg !428
  %86 = mul nuw nsw i64 %64, 7296, !dbg !428
  %87 = mul nuw nsw i64 %85, 64, !dbg !428
  %88 = add nuw nsw i64 %86, %87, !dbg !428
  %89 = add nuw nsw i64 %88, %41, !dbg !428
  %90 = getelementptr inbounds nuw float, ptr %9, i64 %89, !dbg !428
  %91 = load float, ptr %90, align 4, !dbg !428
  %92 = add nuw nsw i64 0, %77, !dbg !428
  %93 = getelementptr inbounds nuw float, ptr %4, i64 %92, !dbg !428
  %94 = load float, ptr %93, align 4, !dbg !428
  %95 = fcmp ugt float %94, %91
  %96 = select i1 %95, float %94, float %91
  %97 = fcmp uno float %91, %91
  %98 = select i1 %97, float %91, float %96
  store float %98, ptr %93, align 4, !dbg !428
  %99 = add i64 %80, 1, !dbg !428
  br label %79, !dbg !428

100:                                              ; preds = %79
  %101 = add i64 %77, 1, !dbg !428
  br label %76, !dbg !428

102:                                              ; preds = %76
  %103 = add i64 %66, 2, !dbg !428
  br label %65, !dbg !428

104:                                              ; preds = %65
  %105 = add i64 %58, 1, !dbg !428
  br label %57, !dbg !428

106:                                              ; preds = %57
  %107 = getelementptr float, ptr %4, i64 0, !dbg !429
  %108 = load <2 x float>, ptr %107, align 4, !dbg !429
  %109 = fdiv <2 x float> %108, splat (float 0x3FD76BBD60000000), !dbg !429
  %110 = bitcast <2 x float> %109 to <2 x i32>, !dbg !429
  %111 = call <2 x float> @llvm.round.v2f32(<2 x float> %109), !dbg !429
  %112 = bitcast <2 x float> %111 to <2 x i32>, !dbg !429
  %113 = lshr <2 x i32> %110, splat (i32 23), !dbg !429
  %114 = and <2 x i32> %113, splat (i32 255), !dbg !429
  %115 = sub <2 x i32> %114, splat (i32 127), !dbg !429
  %116 = lshr <2 x i32> %112, splat (i32 23), !dbg !429
  %117 = and <2 x i32> %116, splat (i32 255), !dbg !429
  %118 = sub <2 x i32> %117, splat (i32 127), !dbg !429
  %119 = icmp eq <2 x i32> %118, zeroinitializer, !dbg !429
  %120 = sub <2 x i32> %118, splat (i32 1), !dbg !429
  %121 = icmp sgt <2 x i32> %120, zeroinitializer, !dbg !429
  %122 = select <2 x i1> %121, <2 x i32> %120, <2 x i32> zeroinitializer, !dbg !429
  %123 = icmp slt <2 x i32> %122, splat (i32 31), !dbg !429
  %124 = select <2 x i1> %123, <2 x i32> %122, <2 x i32> splat (i32 31), !dbg !429
  %125 = lshr <2 x i32> splat (i32 8388607), %124, !dbg !429
  %126 = and <2 x i32> %112, %125, !dbg !429
  %127 = icmp ne <2 x i32> %126, zeroinitializer, !dbg !429
  %128 = or <2 x i1> %127, %119, !dbg !429
  %129 = icmp eq <2 x i32> %115, splat (i32 -1), !dbg !429
  %130 = icmp sgt <2 x i32> %115, zeroinitializer, !dbg !429
  %131 = select <2 x i1> %130, <2 x i32> %115, <2 x i32> zeroinitializer, !dbg !429
  %132 = icmp slt <2 x i32> %131, splat (i32 31), !dbg !429
  %133 = select <2 x i1> %132, <2 x i32> %131, <2 x i32> splat (i32 31), !dbg !429
  %134 = lshr <2 x i32> splat (i32 4194304), %133, !dbg !429
  %135 = select <2 x i1> %129, <2 x i32> zeroinitializer, <2 x i32> %134, !dbg !429
  %136 = lshr <2 x i32> splat (i32 8388607), %133, !dbg !429
  %137 = and <2 x i32> %110, %136, !dbg !429
  %138 = icmp eq <2 x i32> %137, %135, !dbg !429
  %139 = icmp sge <2 x i32> %115, splat (i32 -1), !dbg !429
  %140 = icmp slt <2 x i32> %115, splat (i32 23), !dbg !429
  %141 = and <2 x i1> %138, %140, !dbg !429
  %142 = and <2 x i1> %141, %139, !dbg !429
  %143 = call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %109), !dbg !429
  %144 = fsub contract <2 x float> %111, %143, !dbg !429
  %145 = and <2 x i1> %128, %142, !dbg !429
  %146 = select <2 x i1> %145, <2 x float> %144, <2 x float> %111, !dbg !429
  %147 = call <2 x float> @llvm.copysign.v2f32(<2 x float> %146, <2 x float> %109), !dbg !429
  %148 = fadd contract <2 x float> %147, zeroinitializer, !dbg !429
  %149 = fcmp ugt <2 x float> %148, splat (float -1.280000e+02), !dbg !429
  %150 = select <2 x i1> %149, <2 x float> %148, <2 x float> splat (float -1.280000e+02), !dbg !429
  %151 = select <2 x i1> zeroinitializer, <2 x float> splat (float -1.280000e+02), <2 x float> %150, !dbg !429
  %152 = fcmp ult <2 x float> %151, splat (float 1.270000e+02), !dbg !429
  %153 = select <2 x i1> %152, <2 x float> %151, <2 x float> splat (float 1.270000e+02), !dbg !429
  %154 = select <2 x i1> zeroinitializer, <2 x float> splat (float 1.270000e+02), <2 x float> %153, !dbg !429
  %155 = fptosi <2 x float> %154 to <2 x i8>, !dbg !429
  %156 = extractelement <2 x i8> %155, i64 0, !dbg !428
  %157 = insertelement <1 x i8> poison, i8 %156, i64 0, !dbg !428
  %158 = extractelement <2 x i8> %155, i64 1, !dbg !428
  %159 = insertelement <1 x i8> poison, i8 %158, i64 0, !dbg !428
  %160 = add i64 %34, %43, !dbg !428
  %161 = add i64 %35, %46, !dbg !428
  %162 = mul i64 %160, 3584, !dbg !428
  %163 = mul i64 %161, 64, !dbg !428
  %164 = add i64 %162, %163, !dbg !428
  %165 = add i64 %164, %41, !dbg !428
  %166 = getelementptr i8, ptr %13, i64 %165, !dbg !428
  store <1 x i8> %157, ptr %166, align 1, !dbg !428
  %167 = add i64 %46, 1, !dbg !428
  %168 = add i64 %35, %167, !dbg !428
  %169 = mul i64 %168, 64, !dbg !428
  %170 = add i64 %162, %169, !dbg !428
  %171 = add i64 %170, %41, !dbg !428
  %172 = getelementptr i8, ptr %13, i64 %171, !dbg !428
  store <1 x i8> %159, ptr %172, align 1, !dbg !428
  %173 = add i64 %46, 2, !dbg !428
  br label %45, !dbg !428

174:                                              ; preds = %45
  %175 = add i64 %43, 1, !dbg !428
  br label %42, !dbg !428

176:                                              ; preds = %42
  %177 = add i64 %38, 1, !dbg !428
  br label %37, !dbg !428

178:                                              ; preds = %37
  ret i32 0, !dbg !428
}

define internal i32 @"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !430 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !431
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !431
  %6 = load ptr, ptr %5, align 8, !dbg !431
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !431
  %8 = load ptr, ptr %7, align 8, !dbg !431
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !431
  %10 = load ptr, ptr %9, align 8, !dbg !431
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !431
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !431
  %13 = zext i32 %12 to i64, !dbg !431
  %14 = sdiv i64 %13, 4, !dbg !431
  %15 = mul i64 %14, 4, !dbg !431
  %16 = icmp ne i64 %13, %15, !dbg !431
  %17 = icmp slt i64 %13, 0, !dbg !431
  %18 = and i1 %16, %17, !dbg !431
  %19 = add i64 %14, -1, !dbg !431
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !431
  %21 = srem i64 %13, 4, !dbg !431
  %22 = icmp slt i64 %21, 0, !dbg !431
  %23 = add nsw i64 %21, 4, !dbg !431
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !431
  %25 = mul nsw i64 %20, 16, !dbg !431
  %26 = mul nsw i64 %24, 16, !dbg !431
  %27 = mul nsw i64 %25, 64, !dbg !431
  %28 = ptrtoint ptr %6 to i64, !dbg !431
  %29 = add i64 %28, %27, !dbg !431
  %30 = ptrtoint ptr %8 to i64, !dbg !431
  %31 = add i64 %30, %26, !dbg !431
  %32 = add i64 %27, %26, !dbg !431
  %33 = add i64 %32, 200704, !dbg !431
  %34 = ptrtoint ptr %10 to i64, !dbg !431
  %35 = add i64 %34, %33, !dbg !431
  %36 = add i64 %32, 3544064, !dbg !431
  %37 = mul i64 %36, 4, !dbg !431
  %38 = add i64 %30, %37, !dbg !431
  %39 = and i64 %29, 9223372036854775807, !dbg !431
  %40 = and i64 %31, 9223372036854775807, !dbg !431
  %41 = and i64 %35, 9223372036854775807, !dbg !431
  %42 = and i64 %38, 9223372036854775807, !dbg !431
  call void asm sideeffect "fence", ""(), !dbg !431
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !431
  call void @llvm.riscv.config(i64 6, i64 4373150234956529728), !dbg !431
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !431
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !431
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !431
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !431
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %39, i64 %40), !dbg !431
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %42, i64 %41), !dbg !431
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64), !dbg !431
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !431
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !431
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !431
  call void asm sideeffect "fence", ""(), !dbg !431
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !431
  ret i32 0, !dbg !431
}

define internal i32 @"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !432 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !433
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !433
  %6 = load ptr, ptr %5, align 8, !dbg !433
  %7 = getelementptr i32, ptr %6, i64 3424, !dbg !433
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !433
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !433
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !433
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !433
  %11 = load ptr, ptr %10, align 8, !dbg !433
  %12 = getelementptr i32, ptr %11, i64 100352, !dbg !433
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !433
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !433
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !433
  %15 = zext i32 %14 to i64, !dbg !433
  %16 = sdiv i64 %15, 4, !dbg !433
  %17 = mul i64 %16, 4, !dbg !433
  %18 = icmp ne i64 %15, %17, !dbg !433
  %19 = icmp slt i64 %15, 0, !dbg !433
  %20 = and i1 %18, %19, !dbg !433
  %21 = add i64 %16, -1, !dbg !433
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !433
  %23 = srem i64 %15, 4, !dbg !433
  %24 = icmp slt i64 %23, 0, !dbg !433
  %25 = add nsw i64 %23, 4, !dbg !433
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !433
  %27 = mul nsw i64 %22, 64, !dbg !433
  %28 = mul nsw i64 %26, 64, !dbg !433
  br label %29, !dbg !433

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !433
  %31 = icmp slt i64 %30, 64, !dbg !433
  br i1 %31, label %32, label %46, !dbg !433

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !433
  %34 = icmp slt i64 %33, 64, !dbg !433
  br i1 %34, label %35, label %44, !dbg !433

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !433
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !433
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !433
  %39 = add i64 %27, %30, !dbg !433
  %40 = mul i64 %39, 256, !dbg !433
  %41 = add i64 %40, %36, !dbg !433
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !433
  store <2 x i32> %38, ptr %42, align 4, !dbg !433
  %43 = add i64 %33, 2, !dbg !433
  br label %32, !dbg !433

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !433
  br label %29, !dbg !433

46:                                               ; preds = %29
  ret i32 0, !dbg !433
}

define internal i32 @"main_graph$async_dispatch_8_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !434 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !435
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !435
  %6 = load i32, ptr %5, align 4, !dbg !435
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !436
  %8 = load i32, ptr %7, align 4, !dbg !436
  %9 = zext i32 %6 to i64, !dbg !435
  %10 = zext i32 %8 to i64, !dbg !436
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !435
  %12 = load ptr, ptr %11, align 8, !dbg !435
  %13 = mul i64 %9, 8, !dbg !435
  %14 = udiv i64 %13, 8, !dbg !435
  %15 = getelementptr i8, ptr %12, i64 %14, !dbg !435
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !435
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !436
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !436
  %18 = getelementptr ptr, ptr %17, i32 1, !dbg !436
  %19 = load ptr, ptr %18, align 8, !dbg !436
  %20 = mul i64 %10, 8, !dbg !436
  %21 = udiv i64 %20, 8, !dbg !436
  %22 = getelementptr i8, ptr %19, i64 %21, !dbg !436
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !436
  %23 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !436
  %24 = extractvalue %iree_hal_executable_workgroup_state_v0_t %23, 0, !dbg !436
  %25 = zext i32 %24 to i64, !dbg !436
  %26 = mul nsw i64 %25, 2, !dbg !436
  br label %27, !dbg !436

27:                                               ; preds = %54, %3
  %28 = phi i64 [ %55, %54 ], [ 0, %3 ], !dbg !436
  %29 = icmp slt i64 %28, 2, !dbg !436
  br i1 %29, label %30, label %56, !dbg !436

30:                                               ; preds = %52, %27
  %31 = phi i64 [ %53, %52 ], [ 0, %27 ], !dbg !436
  %32 = icmp slt i64 %31, 56, !dbg !436
  br i1 %32, label %33, label %54, !dbg !436

33:                                               ; preds = %36, %30
  %34 = phi i64 [ %51, %36 ], [ 0, %30 ], !dbg !436
  %35 = icmp slt i64 %34, 64, !dbg !436
  br i1 %35, label %36, label %52, !dbg !436

36:                                               ; preds = %33
  %37 = add i64 %26, %28, !dbg !436
  %38 = mul i64 %37, 3584, !dbg !436
  %39 = mul i64 %31, 64, !dbg !436
  %40 = add i64 %38, %39, !dbg !436
  %41 = add i64 %40, %34, !dbg !436
  %42 = getelementptr i8, ptr %15, i64 %41, !dbg !436
  %43 = load <2 x i8>, ptr %42, align 1, !dbg !436
  %44 = add i64 %37, 1, !dbg !436
  %45 = add i64 %31, 1, !dbg !436
  %46 = mul i64 %44, 3712, !dbg !436
  %47 = mul i64 %45, 64, !dbg !436
  %48 = add i64 %46, %47, !dbg !436
  %49 = add i64 %48, %34, !dbg !436
  %50 = getelementptr i8, ptr %22, i64 %49, !dbg !436
  store <2 x i8> %43, ptr %50, align 1, !dbg !436
  %51 = add i64 %34, 2, !dbg !436
  br label %33, !dbg !436

52:                                               ; preds = %33
  %53 = add i64 %31, 1, !dbg !436
  br label %30, !dbg !436

54:                                               ; preds = %30
  %55 = add i64 %28, 1, !dbg !436
  br label %27, !dbg !436

56:                                               ; preds = %27
  ret i32 0, !dbg !436
}

define internal i32 @"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !437 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !438
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !438
  %6 = load ptr, ptr %5, align 8, !dbg !438
  %7 = getelementptr i8, ptr %6, i64 3612672, !dbg !438
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !438
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !438
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !438
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !438
  %11 = load ptr, ptr %10, align 8, !dbg !438
  %12 = getelementptr i8, ptr %11, i64 3827968, !dbg !438
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !438
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !438
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !438
  %15 = zext i32 %14 to i64, !dbg !438
  %16 = sdiv i64 %15, 4, !dbg !438
  %17 = mul i64 %16, 4, !dbg !438
  %18 = icmp ne i64 %15, %17, !dbg !438
  %19 = icmp slt i64 %15, 0, !dbg !438
  %20 = and i1 %18, %19, !dbg !438
  %21 = add i64 %16, -1, !dbg !438
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !438
  %23 = srem i64 %15, 4, !dbg !438
  %24 = icmp slt i64 %23, 0, !dbg !438
  %25 = add nsw i64 %23, 4, !dbg !438
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !438
  %27 = sdiv i64 %26, 2, !dbg !438
  %28 = srem i64 %15, 2, !dbg !438
  %29 = icmp slt i64 %28, 0, !dbg !438
  %30 = add nsw i64 %28, 2, !dbg !438
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !438
  %32 = mul nsw i64 %22, 8, !dbg !438
  %33 = mul nsw i64 %27, 28, !dbg !438
  %34 = mul nsw i64 %31, 32, !dbg !438
  br label %35, !dbg !438

35:                                               ; preds = %89, %3
  %36 = phi i64 [ %90, %89 ], [ 0, %3 ], !dbg !438
  %37 = icmp slt i64 %36, 8, !dbg !438
  br i1 %37, label %38, label %91, !dbg !438

38:                                               ; preds = %87, %35
  %39 = phi i64 [ %88, %87 ], [ 0, %35 ], !dbg !438
  %40 = icmp slt i64 %39, 28, !dbg !438
  br i1 %40, label %41, label %89, !dbg !438

41:                                               ; preds = %85, %38
  %42 = phi i64 [ %86, %85 ], [ 0, %38 ], !dbg !438
  %43 = icmp slt i64 %42, 3, !dbg !438
  br i1 %43, label %44, label %87, !dbg !438

44:                                               ; preds = %41
  %45 = add i64 %36, %42, !dbg !438
  %46 = add i64 %45, %32, !dbg !438
  br label %47, !dbg !438

47:                                               ; preds = %83, %44
  %48 = phi i64 [ %84, %83 ], [ 0, %44 ], !dbg !438
  %49 = icmp slt i64 %48, 3, !dbg !438
  br i1 %49, label %50, label %85, !dbg !438

50:                                               ; preds = %47
  %51 = add i64 %39, %48, !dbg !438
  %52 = add i64 %51, %33, !dbg !438
  br label %53, !dbg !438

53:                                               ; preds = %81, %50
  %54 = phi i64 [ %82, %81 ], [ 0, %50 ], !dbg !438
  %55 = icmp slt i64 %54, 32, !dbg !438
  br i1 %55, label %56, label %83, !dbg !438

56:                                               ; preds = %53
  %57 = add i64 %54, %34, !dbg !438
  br label %58, !dbg !438

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %80, %61 ], [ 0, %56 ], !dbg !438
  %60 = icmp slt i64 %59, 8, !dbg !438
  br i1 %60, label %61, label %81, !dbg !438

61:                                               ; preds = %58
  %62 = add i64 %57, %59, !dbg !438
  %63 = mul nuw nsw i64 %46, 3712, !dbg !438
  %64 = mul nuw nsw i64 %52, 64, !dbg !438
  %65 = add nuw nsw i64 %63, %64, !dbg !438
  %66 = add nuw nsw i64 %65, %62, !dbg !438
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 %66, !dbg !438
  %68 = load i8, ptr %67, align 1, !dbg !438
  %69 = add i64 %32, %36, !dbg !438
  %70 = add i64 %33, %39, !dbg !438
  %71 = mul nuw nsw i64 %69, 32256, !dbg !438
  %72 = mul nuw nsw i64 %70, 576, !dbg !438
  %73 = add nuw nsw i64 %71, %72, !dbg !438
  %74 = mul nuw nsw i64 %42, 192, !dbg !438
  %75 = add nuw nsw i64 %73, %74, !dbg !438
  %76 = mul nuw nsw i64 %48, 64, !dbg !438
  %77 = add nuw nsw i64 %75, %76, !dbg !438
  %78 = add nuw nsw i64 %77, %62, !dbg !438
  %79 = getelementptr inbounds nuw i8, ptr %12, i64 %78, !dbg !438
  store i8 %68, ptr %79, align 1, !dbg !438
  %80 = add i64 %59, 1, !dbg !438
  br label %58, !dbg !438

81:                                               ; preds = %58
  %82 = add i64 %54, 8, !dbg !438
  br label %53, !dbg !438

83:                                               ; preds = %53
  %84 = add i64 %48, 1, !dbg !438
  br label %47, !dbg !438

85:                                               ; preds = %47
  %86 = add i64 %42, 1, !dbg !438
  br label %41, !dbg !438

87:                                               ; preds = %41
  %88 = add i64 %39, 1, !dbg !438
  br label %38, !dbg !438

89:                                               ; preds = %38
  %90 = add i64 %36, 1, !dbg !438
  br label %35, !dbg !438

91:                                               ; preds = %35
  ret i32 0, !dbg !438
}

define internal i32 @"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !439 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !440
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !440
  %6 = load ptr, ptr %5, align 8, !dbg !440
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !440
  %8 = load ptr, ptr %7, align 8, !dbg !440
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !440
  %10 = load ptr, ptr %9, align 8, !dbg !440
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !440
  %12 = load ptr, ptr %11, align 8, !dbg !440
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !440
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !440
  %15 = zext i32 %14 to i64, !dbg !440
  %16 = sdiv i64 %15, 4, !dbg !440
  %17 = mul i64 %16, 4, !dbg !440
  %18 = icmp ne i64 %15, %17, !dbg !440
  %19 = icmp slt i64 %15, 0, !dbg !440
  %20 = and i1 %18, %19, !dbg !440
  %21 = add i64 %16, -1, !dbg !440
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !440
  %23 = srem i64 %15, 4, !dbg !440
  %24 = icmp slt i64 %23, 0, !dbg !440
  %25 = add nsw i64 %23, 4, !dbg !440
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !440
  %27 = mul nsw i64 %22, 16, !dbg !440
  %28 = mul nsw i64 %26, 16, !dbg !440
  %29 = mul nsw i64 %27, 576, !dbg !440
  %30 = add i64 %29, 3827968, !dbg !440
  %31 = ptrtoint ptr %6 to i64, !dbg !440
  %32 = add i64 %31, %30, !dbg !440
  %33 = add i64 %28, 14720, !dbg !440
  %34 = ptrtoint ptr %8 to i64, !dbg !440
  %35 = add i64 %34, %33, !dbg !440
  %36 = mul nsw i64 %27, 64, !dbg !440
  %37 = add i64 %36, %28, !dbg !440
  %38 = add i64 %37, 200704, !dbg !440
  %39 = ptrtoint ptr %12 to i64, !dbg !440
  %40 = add i64 %39, %38, !dbg !440
  %41 = add i64 %37, 3744768, !dbg !440
  %42 = ptrtoint ptr %10 to i64, !dbg !440
  %43 = mul i64 %41, 4, !dbg !440
  %44 = add i64 %42, %43, !dbg !440
  %45 = and i64 %32, 9223372036854775807, !dbg !440
  %46 = and i64 %35, 9223372036854775807, !dbg !440
  %47 = and i64 %40, 9223372036854775807, !dbg !440
  %48 = and i64 %44, 9223372036854775807, !dbg !440
  call void asm sideeffect "fence", ""(), !dbg !440
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !440
  call void @llvm.riscv.config(i64 6, i64 4300889321461776448), !dbg !440
  call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !440
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !440
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !440
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !440
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %45, i64 %46), !dbg !440
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %48, i64 %47), !dbg !440
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 64), !dbg !440
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !440
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !440
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !440
  call void asm sideeffect "fence", ""(), !dbg !440
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !440
  ret i32 0, !dbg !440
}

define internal i32 @"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !441 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !442
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !442
  %6 = load ptr, ptr %5, align 8, !dbg !442
  %7 = getelementptr i32, ptr %6, i64 12896, !dbg !442
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !442
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !442
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !442
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !442
  %11 = load ptr, ptr %10, align 8, !dbg !442
  %12 = getelementptr i32, ptr %11, i64 1408576, !dbg !442
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !442
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !442
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !442
  %15 = zext i32 %14 to i64, !dbg !442
  %16 = sdiv i64 %15, 4, !dbg !442
  %17 = mul i64 %16, 4, !dbg !442
  %18 = icmp ne i64 %15, %17, !dbg !442
  %19 = icmp slt i64 %15, 0, !dbg !442
  %20 = and i1 %18, %19, !dbg !442
  %21 = add i64 %16, -1, !dbg !442
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !442
  %23 = srem i64 %15, 4, !dbg !442
  %24 = icmp slt i64 %23, 0, !dbg !442
  %25 = add nsw i64 %23, 4, !dbg !442
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !442
  %27 = mul nsw i64 %22, 64, !dbg !442
  %28 = mul nsw i64 %26, 64, !dbg !442
  br label %29, !dbg !442

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !442
  %31 = icmp slt i64 %30, 64, !dbg !442
  br i1 %31, label %32, label %46, !dbg !442

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !442
  %34 = icmp slt i64 %33, 64, !dbg !442
  br i1 %34, label %35, label %44, !dbg !442

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !442
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !442
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !442
  %39 = add i64 %27, %30, !dbg !442
  %40 = mul i64 %39, 256, !dbg !442
  %41 = add i64 %40, %36, !dbg !442
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !442
  store <2 x i32> %38, ptr %42, align 4, !dbg !442
  %43 = add i64 %33, 2, !dbg !442
  br label %32, !dbg !442

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !442
  br label %29, !dbg !442

46:                                               ; preds = %29
  ret i32 0, !dbg !442
}

define internal i32 @"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !443 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !444
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !444
  %6 = load ptr, ptr %5, align 8, !dbg !444
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !444
  %8 = load ptr, ptr %7, align 8, !dbg !444
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !444
  %10 = load ptr, ptr %9, align 8, !dbg !444
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !444
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !444
  %13 = zext i32 %12 to i64, !dbg !444
  %14 = sdiv i64 %13, 16, !dbg !444
  %15 = mul i64 %14, 16, !dbg !444
  %16 = icmp ne i64 %13, %15, !dbg !444
  %17 = icmp slt i64 %13, 0, !dbg !444
  %18 = and i1 %16, %17, !dbg !444
  %19 = add i64 %14, -1, !dbg !444
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !444
  %21 = srem i64 %13, 16, !dbg !444
  %22 = icmp slt i64 %21, 0, !dbg !444
  %23 = add nsw i64 %21, 16, !dbg !444
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !444
  %25 = mul nsw i64 %20, 16, !dbg !444
  %26 = mul nsw i64 %24, 16, !dbg !444
  %27 = mul nsw i64 %25, 64, !dbg !444
  %28 = add i64 %27, 200704, !dbg !444
  %29 = ptrtoint ptr %6 to i64, !dbg !444
  %30 = add i64 %29, %28, !dbg !444
  %31 = add i64 %26, 20480, !dbg !444
  %32 = ptrtoint ptr %8 to i64, !dbg !444
  %33 = add i64 %32, %31, !dbg !444
  %34 = mul nsw i64 %25, 256, !dbg !444
  %35 = add i64 %34, %26, !dbg !444
  %36 = add i64 %35, 3612672, !dbg !444
  %37 = ptrtoint ptr %10 to i64, !dbg !444
  %38 = add i64 %37, %36, !dbg !444
  %39 = add i64 %35, 1408576, !dbg !444
  %40 = mul i64 %39, 4, !dbg !444
  %41 = add i64 %29, %40, !dbg !444
  %42 = and i64 %30, 9223372036854775807, !dbg !444
  %43 = and i64 %33, 9223372036854775807, !dbg !444
  %44 = and i64 %38, 9223372036854775807, !dbg !444
  %45 = and i64 %41, 9223372036854775807, !dbg !444
  call void asm sideeffect "fence", ""(), !dbg !444
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !444
  call void @llvm.riscv.config(i64 2, i64 4369228045052018944), !dbg !444
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !444
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !444
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !444
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !444
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %42, i64 %43), !dbg !444
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %45, i64 %44), !dbg !444
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !444
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !444
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !444
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !444
  call void asm sideeffect "fence", ""(), !dbg !444
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !444
  ret i32 0, !dbg !444
}

define internal i32 @"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !445 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !446
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !446
  %6 = load ptr, ptr %5, align 8, !dbg !446
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !446
  %8 = load ptr, ptr %7, align 8, !dbg !446
  %9 = getelementptr i8, ptr %6, i64 3612672, !dbg !447
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !447
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !446
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !446
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !446
  %13 = load ptr, ptr %12, align 8, !dbg !446
  %14 = getelementptr i8, ptr %13, i64 4415488, !dbg !446
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !446
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !446
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !446
  %17 = zext i32 %16 to i64, !dbg !446
  %18 = sdiv i64 %17, 16, !dbg !446
  %19 = mul i64 %18, 16, !dbg !446
  %20 = icmp ne i64 %17, %19, !dbg !446
  %21 = icmp slt i64 %17, 0, !dbg !446
  %22 = and i1 %20, %21, !dbg !446
  %23 = add i64 %18, -1, !dbg !446
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !446
  %25 = srem i64 %17, 16, !dbg !446
  %26 = icmp slt i64 %25, 0, !dbg !446
  %27 = add nsw i64 %25, 16, !dbg !446
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !446
  %29 = mul nsw i64 %24, 16, !dbg !446
  %30 = mul nsw i64 %28, 16, !dbg !446
  %31 = alloca i8, i64 256, align 1, !dbg !446
  %32 = mul nsw i64 %29, 64, !dbg !446
  %33 = ptrtoint ptr %6 to i64, !dbg !446
  %34 = add i64 %33, %32, !dbg !446
  %35 = add i64 %30, 4096, !dbg !446
  %36 = ptrtoint ptr %8 to i64, !dbg !446
  %37 = add i64 %36, %35, !dbg !446
  %38 = ptrtoint ptr %31 to i64, !dbg !446
  %39 = mul nsw i64 %29, 256, !dbg !446
  %40 = add i64 %39, %30, !dbg !446
  %41 = add i64 %40, 100352, !dbg !446
  %42 = mul i64 %41, 4, !dbg !446
  %43 = add i64 %33, %42, !dbg !446
  %44 = and i64 %34, 9223372036854775807, !dbg !446
  %45 = and i64 %37, 9223372036854775807, !dbg !446
  %46 = and i64 %38, 9223372036854775807, !dbg !446
  %47 = and i64 %43, 9223372036854775807, !dbg !446
  call void asm sideeffect "fence", ""(), !dbg !446
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !446
  call void @llvm.riscv.config(i64 2, i64 4362042388672151568), !dbg !446
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !446
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !446
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !446
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !446
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !446
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !446
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !446
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 16), !dbg !446
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !446
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !446
  call void asm sideeffect "fence", ""(), !dbg !446
  br label %48, !dbg !448

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !448
  %50 = icmp slt i64 %49, 16, !dbg !448
  br i1 %50, label %51, label %166, !dbg !448

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !448
  %53 = icmp slt i64 %52, 16, !dbg !448
  br i1 %53, label %54, label %164, !dbg !448

54:                                               ; preds = %51
  %55 = add i64 %29, %49, !dbg !448
  %56 = add i64 %30, %52, !dbg !448
  %57 = mul nuw nsw i64 %55, 256, !dbg !448
  %58 = add nuw nsw i64 %57, %56, !dbg !448
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 %58, !dbg !448
  %60 = load i8, ptr %59, align 1, !dbg !448
  %61 = mul nuw nsw i64 %49, 16, !dbg !448
  %62 = add nuw nsw i64 %61, %52, !dbg !448
  %63 = getelementptr inbounds nuw i8, ptr %31, i64 %62, !dbg !448
  %64 = load i8, ptr %63, align 1, !dbg !448
  %65 = sitofp i8 %64 to float, !dbg !449
  %66 = fmul contract float %65, 0x3FD655CE20000000, !dbg !449
  %67 = sitofp i8 %60 to float, !dbg !450
  %68 = fmul contract float %67, 0x3FC2362F20000000, !dbg !450
  %69 = fadd contract float %68, %66, !dbg !451
  %70 = fdiv float %69, 0x3FC6854B40000000, !dbg !452
  %71 = bitcast float %70 to i32, !dbg !452
  %72 = call float @llvm.round.f32(float %70), !dbg !452
  %73 = bitcast float %72 to i32, !dbg !452
  %74 = lshr i32 %71, 23, !dbg !452
  %75 = and i32 %74, 255, !dbg !452
  %76 = sub i32 %75, 127, !dbg !452
  %77 = lshr i32 %73, 23, !dbg !452
  %78 = and i32 %77, 255, !dbg !452
  %79 = sub i32 %78, 127, !dbg !452
  %80 = icmp eq i32 %79, 0, !dbg !452
  %81 = sub i32 %78, 128, !dbg !452
  %82 = icmp sgt i32 %81, 0, !dbg !452
  %83 = select i1 %82, i32 %81, i32 0, !dbg !452
  %84 = icmp slt i32 %83, 31, !dbg !452
  %85 = select i1 %84, i32 %83, i32 31, !dbg !452
  %86 = lshr i32 8388607, %85, !dbg !452
  %87 = and i32 %73, %86, !dbg !452
  %88 = icmp ne i32 %87, 0, !dbg !452
  %89 = or i1 %88, %80, !dbg !452
  %90 = icmp eq i32 %76, -1, !dbg !452
  %91 = icmp sgt i32 %76, 0, !dbg !452
  %92 = select i1 %91, i32 %76, i32 0, !dbg !452
  %93 = icmp slt i32 %92, 31, !dbg !452
  %94 = select i1 %93, i32 %92, i32 31, !dbg !452
  %95 = lshr i32 4194304, %94, !dbg !452
  %96 = select i1 %90, i32 0, i32 %95, !dbg !452
  %97 = lshr i32 8388607, %94, !dbg !452
  %98 = and i32 %71, %97, !dbg !452
  %99 = icmp eq i32 %98, %96, !dbg !452
  %100 = icmp sge i32 %76, -1, !dbg !452
  %101 = icmp slt i32 %76, 23, !dbg !452
  %102 = and i1 %99, %101, !dbg !452
  %103 = and i1 %102, %100, !dbg !452
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !452
  %105 = fsub contract float %72, %104, !dbg !452
  %106 = and i1 %89, %103, !dbg !452
  %107 = select i1 %106, float %105, float %72, !dbg !452
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !452
  %109 = fadd contract float %108, 0.000000e+00, !dbg !452
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !452
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !452
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !452
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !452
  %114 = fptosi float %113 to i8, !dbg !452
  %115 = icmp sgt i8 %114, 0, !dbg !453
  %116 = select i1 %115, i8 %114, i8 0, !dbg !453
  %117 = sitofp i8 %116 to float, !dbg !453
  %118 = bitcast float %117 to i32, !dbg !448
  %119 = call float @llvm.round.f32(float %117), !dbg !448
  %120 = bitcast float %119 to i32, !dbg !448
  %121 = lshr i32 %118, 23, !dbg !448
  %122 = and i32 %121, 255, !dbg !448
  %123 = sub i32 %122, 127, !dbg !448
  %124 = lshr i32 %120, 23, !dbg !448
  %125 = and i32 %124, 255, !dbg !448
  %126 = sub i32 %125, 127, !dbg !448
  %127 = icmp eq i32 %126, 0, !dbg !448
  %128 = sub i32 %125, 128, !dbg !448
  %129 = icmp sgt i32 %128, 0, !dbg !448
  %130 = select i1 %129, i32 %128, i32 0, !dbg !448
  %131 = icmp slt i32 %130, 31, !dbg !448
  %132 = select i1 %131, i32 %130, i32 31, !dbg !448
  %133 = lshr i32 8388607, %132, !dbg !448
  %134 = and i32 %120, %133, !dbg !448
  %135 = icmp ne i32 %134, 0, !dbg !448
  %136 = or i1 %135, %127, !dbg !448
  %137 = icmp eq i32 %123, -1, !dbg !448
  %138 = icmp sgt i32 %123, 0, !dbg !448
  %139 = select i1 %138, i32 %123, i32 0, !dbg !448
  %140 = icmp slt i32 %139, 31, !dbg !448
  %141 = select i1 %140, i32 %139, i32 31, !dbg !448
  %142 = lshr i32 4194304, %141, !dbg !448
  %143 = select i1 %137, i32 0, i32 %142, !dbg !448
  %144 = lshr i32 8388607, %141, !dbg !448
  %145 = and i32 %118, %144, !dbg !448
  %146 = icmp eq i32 %145, %143, !dbg !448
  %147 = icmp sge i32 %123, -1, !dbg !448
  %148 = icmp slt i32 %123, 23, !dbg !448
  %149 = and i1 %146, %148, !dbg !448
  %150 = and i1 %149, %147, !dbg !448
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !448
  %152 = fsub contract float %119, %151, !dbg !448
  %153 = and i1 %136, %150, !dbg !448
  %154 = select i1 %153, float %152, float %119, !dbg !448
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !448
  %156 = fadd contract float %155, 0.000000e+00, !dbg !448
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !448
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !448
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !448
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !448
  %161 = fptosi float %160 to i8, !dbg !448
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %58, !dbg !448
  store i8 %161, ptr %162, align 1, !dbg !448
  %163 = add i64 %52, 1, !dbg !448
  br label %51, !dbg !448

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !448
  br label %48, !dbg !448

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !446
  ret i32 0, !dbg !446
}

define internal i32 @"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !454 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !455
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !455
  %6 = load ptr, ptr %5, align 8, !dbg !455
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !455
  %8 = load ptr, ptr %7, align 8, !dbg !455
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !455
  %10 = load ptr, ptr %9, align 8, !dbg !455
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !455
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !455
  %13 = zext i32 %12 to i64, !dbg !455
  %14 = sdiv i64 %13, 4, !dbg !455
  %15 = mul i64 %14, 4, !dbg !455
  %16 = icmp ne i64 %13, %15, !dbg !455
  %17 = icmp slt i64 %13, 0, !dbg !455
  %18 = and i1 %16, %17, !dbg !455
  %19 = add i64 %14, -1, !dbg !455
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !455
  %21 = srem i64 %13, 4, !dbg !455
  %22 = icmp slt i64 %21, 0, !dbg !455
  %23 = add nsw i64 %21, 4, !dbg !455
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !455
  %25 = mul nsw i64 %20, 16, !dbg !455
  %26 = mul nsw i64 %24, 16, !dbg !455
  %27 = mul nsw i64 %25, 256, !dbg !455
  %28 = add i64 %27, 4415488, !dbg !455
  %29 = ptrtoint ptr %6 to i64, !dbg !455
  %30 = add i64 %29, %28, !dbg !455
  %31 = add i64 %26, 36864, !dbg !455
  %32 = ptrtoint ptr %8 to i64, !dbg !455
  %33 = add i64 %32, %31, !dbg !455
  %34 = mul nsw i64 %25, 64, !dbg !455
  %35 = add i64 %34, %26, !dbg !455
  %36 = ptrtoint ptr %10 to i64, !dbg !455
  %37 = add i64 %36, %35, !dbg !455
  %38 = add i64 %35, 3945472, !dbg !455
  %39 = mul i64 %38, 4, !dbg !455
  %40 = add i64 %32, %39, !dbg !455
  %41 = and i64 %30, 9223372036854775807, !dbg !455
  %42 = and i64 %33, 9223372036854775807, !dbg !455
  %43 = and i64 %37, 9223372036854775807, !dbg !455
  %44 = and i64 %40, 9223372036854775807, !dbg !455
  call void asm sideeffect "fence", ""(), !dbg !455
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !455
  call void @llvm.riscv.config(i64 6, i64 4403959177832038464), !dbg !455
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !455
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !455
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !455
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !455
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !455
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !455
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 64), !dbg !455
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !455
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !455
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !455
  call void asm sideeffect "fence", ""(), !dbg !455
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !455
  ret i32 0, !dbg !455
}

define internal i32 @"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !456 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !457
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !457
  %6 = load ptr, ptr %5, align 8, !dbg !457
  %7 = getelementptr i8, ptr %6, i64 200704, !dbg !457
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !457
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !457
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !457
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !457
  %11 = load ptr, ptr %10, align 8, !dbg !457
  %12 = getelementptr i8, ptr %11, i64 416000, !dbg !457
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !457
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !457
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !457
  %15 = zext i32 %14 to i64, !dbg !457
  %16 = sdiv i64 %15, 4, !dbg !457
  %17 = mul i64 %16, 4, !dbg !457
  %18 = icmp ne i64 %15, %17, !dbg !457
  %19 = icmp slt i64 %15, 0, !dbg !457
  %20 = and i1 %18, %19, !dbg !457
  %21 = add i64 %16, -1, !dbg !457
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !457
  %23 = srem i64 %15, 4, !dbg !457
  %24 = icmp slt i64 %23, 0, !dbg !457
  %25 = add nsw i64 %23, 4, !dbg !457
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !457
  %27 = sdiv i64 %26, 2, !dbg !457
  %28 = srem i64 %15, 2, !dbg !457
  %29 = icmp slt i64 %28, 0, !dbg !457
  %30 = add nsw i64 %28, 2, !dbg !457
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !457
  %32 = mul nsw i64 %22, 8, !dbg !457
  %33 = mul nsw i64 %27, 28, !dbg !457
  %34 = mul nsw i64 %31, 32, !dbg !457
  br label %35, !dbg !457

35:                                               ; preds = %89, %3
  %36 = phi i64 [ %90, %89 ], [ 0, %3 ], !dbg !457
  %37 = icmp slt i64 %36, 8, !dbg !457
  br i1 %37, label %38, label %91, !dbg !457

38:                                               ; preds = %87, %35
  %39 = phi i64 [ %88, %87 ], [ 0, %35 ], !dbg !457
  %40 = icmp slt i64 %39, 28, !dbg !457
  br i1 %40, label %41, label %89, !dbg !457

41:                                               ; preds = %85, %38
  %42 = phi i64 [ %86, %85 ], [ 0, %38 ], !dbg !457
  %43 = icmp slt i64 %42, 3, !dbg !457
  br i1 %43, label %44, label %87, !dbg !457

44:                                               ; preds = %41
  %45 = add i64 %36, %42, !dbg !457
  %46 = add i64 %45, %32, !dbg !457
  br label %47, !dbg !457

47:                                               ; preds = %83, %44
  %48 = phi i64 [ %84, %83 ], [ 0, %44 ], !dbg !457
  %49 = icmp slt i64 %48, 3, !dbg !457
  br i1 %49, label %50, label %85, !dbg !457

50:                                               ; preds = %47
  %51 = add i64 %39, %48, !dbg !457
  %52 = add i64 %51, %33, !dbg !457
  br label %53, !dbg !457

53:                                               ; preds = %81, %50
  %54 = phi i64 [ %82, %81 ], [ 0, %50 ], !dbg !457
  %55 = icmp slt i64 %54, 32, !dbg !457
  br i1 %55, label %56, label %83, !dbg !457

56:                                               ; preds = %53
  %57 = add i64 %54, %34, !dbg !457
  br label %58, !dbg !457

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %80, %61 ], [ 0, %56 ], !dbg !457
  %60 = icmp slt i64 %59, 8, !dbg !457
  br i1 %60, label %61, label %81, !dbg !457

61:                                               ; preds = %58
  %62 = add i64 %57, %59, !dbg !457
  %63 = mul nuw nsw i64 %46, 3712, !dbg !457
  %64 = mul nuw nsw i64 %52, 64, !dbg !457
  %65 = add nuw nsw i64 %63, %64, !dbg !457
  %66 = add nuw nsw i64 %65, %62, !dbg !457
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 %66, !dbg !457
  %68 = load i8, ptr %67, align 1, !dbg !457
  %69 = add i64 %32, %36, !dbg !457
  %70 = add i64 %33, %39, !dbg !457
  %71 = mul nuw nsw i64 %69, 32256, !dbg !457
  %72 = mul nuw nsw i64 %70, 576, !dbg !457
  %73 = add nuw nsw i64 %71, %72, !dbg !457
  %74 = mul nuw nsw i64 %42, 192, !dbg !457
  %75 = add nuw nsw i64 %73, %74, !dbg !457
  %76 = mul nuw nsw i64 %48, 64, !dbg !457
  %77 = add nuw nsw i64 %75, %76, !dbg !457
  %78 = add nuw nsw i64 %77, %62, !dbg !457
  %79 = getelementptr inbounds nuw i8, ptr %12, i64 %78, !dbg !457
  store i8 %68, ptr %79, align 1, !dbg !457
  %80 = add i64 %59, 1, !dbg !457
  br label %58, !dbg !457

81:                                               ; preds = %58
  %82 = add i64 %54, 8, !dbg !457
  br label %53, !dbg !457

83:                                               ; preds = %53
  %84 = add i64 %48, 1, !dbg !457
  br label %47, !dbg !457

85:                                               ; preds = %47
  %86 = add i64 %42, 1, !dbg !457
  br label %41, !dbg !457

87:                                               ; preds = %41
  %88 = add i64 %39, 1, !dbg !457
  br label %38, !dbg !457

89:                                               ; preds = %38
  %90 = add i64 %36, 1, !dbg !457
  br label %35, !dbg !457

91:                                               ; preds = %35
  ret i32 0, !dbg !457
}

define internal i32 @"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !458 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !459
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !459
  %6 = load ptr, ptr %5, align 8, !dbg !459
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !459
  %8 = load ptr, ptr %7, align 8, !dbg !459
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !459
  %10 = load ptr, ptr %9, align 8, !dbg !459
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !459
  %12 = load ptr, ptr %11, align 8, !dbg !459
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !459
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !459
  %15 = zext i32 %14 to i64, !dbg !459
  %16 = sdiv i64 %15, 4, !dbg !459
  %17 = mul i64 %16, 4, !dbg !459
  %18 = icmp ne i64 %15, %17, !dbg !459
  %19 = icmp slt i64 %15, 0, !dbg !459
  %20 = and i1 %18, %19, !dbg !459
  %21 = add i64 %16, -1, !dbg !459
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !459
  %23 = srem i64 %15, 4, !dbg !459
  %24 = icmp slt i64 %23, 0, !dbg !459
  %25 = add nsw i64 %23, 4, !dbg !459
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !459
  %27 = mul nsw i64 %22, 16, !dbg !459
  %28 = mul nsw i64 %26, 16, !dbg !459
  %29 = mul nsw i64 %27, 576, !dbg !459
  %30 = add i64 %29, 416000, !dbg !459
  %31 = ptrtoint ptr %6 to i64, !dbg !459
  %32 = add i64 %31, %30, !dbg !459
  %33 = add i64 %28, 52608, !dbg !459
  %34 = ptrtoint ptr %8 to i64, !dbg !459
  %35 = add i64 %34, %33, !dbg !459
  %36 = mul nsw i64 %27, 64, !dbg !459
  %37 = add i64 %36, %28, !dbg !459
  %38 = ptrtoint ptr %12 to i64, !dbg !459
  %39 = add i64 %38, %37, !dbg !459
  %40 = add i64 %37, 4146176, !dbg !459
  %41 = ptrtoint ptr %10 to i64, !dbg !459
  %42 = mul i64 %40, 4, !dbg !459
  %43 = add i64 %41, %42, !dbg !459
  %44 = and i64 %32, 9223372036854775807, !dbg !459
  %45 = and i64 %35, 9223372036854775807, !dbg !459
  %46 = and i64 %39, 9223372036854775807, !dbg !459
  %47 = and i64 %43, 9223372036854775807, !dbg !459
  call void asm sideeffect "fence", ""(), !dbg !459
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !459
  call void @llvm.riscv.config(i64 6, i64 4335775094539288640), !dbg !459
  call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !459
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !459
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !459
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !459
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !459
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !459
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 64), !dbg !459
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !459
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !459
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !459
  call void asm sideeffect "fence", ""(), !dbg !459
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !459
  ret i32 0, !dbg !459
}

define internal i32 @"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !460 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !461
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !461
  %6 = load ptr, ptr %5, align 8, !dbg !461
  %7 = getelementptr i32, ptr %6, i64 22368, !dbg !461
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !461
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !461
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !461
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !461
  %11 = load ptr, ptr %10, align 8, !dbg !461
  %12 = getelementptr i32, ptr %11, i64 1304576, !dbg !461
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !461
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !461
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !461
  %15 = zext i32 %14 to i64, !dbg !461
  %16 = sdiv i64 %15, 4, !dbg !461
  %17 = mul i64 %16, 4, !dbg !461
  %18 = icmp ne i64 %15, %17, !dbg !461
  %19 = icmp slt i64 %15, 0, !dbg !461
  %20 = and i1 %18, %19, !dbg !461
  %21 = add i64 %16, -1, !dbg !461
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !461
  %23 = srem i64 %15, 4, !dbg !461
  %24 = icmp slt i64 %23, 0, !dbg !461
  %25 = add nsw i64 %23, 4, !dbg !461
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !461
  %27 = mul nsw i64 %22, 64, !dbg !461
  %28 = mul nsw i64 %26, 64, !dbg !461
  br label %29, !dbg !461

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !461
  %31 = icmp slt i64 %30, 64, !dbg !461
  br i1 %31, label %32, label %46, !dbg !461

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !461
  %34 = icmp slt i64 %33, 64, !dbg !461
  br i1 %34, label %35, label %44, !dbg !461

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !461
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !461
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !461
  %39 = add i64 %27, %30, !dbg !461
  %40 = mul i64 %39, 256, !dbg !461
  %41 = add i64 %40, %36, !dbg !461
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !461
  store <2 x i32> %38, ptr %42, align 4, !dbg !461
  %43 = add i64 %33, 2, !dbg !461
  br label %32, !dbg !461

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !461
  br label %29, !dbg !461

46:                                               ; preds = %29
  ret i32 0, !dbg !461
}

define internal i32 @"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !462 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !463
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !463
  %6 = load ptr, ptr %5, align 8, !dbg !463
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !463
  %8 = load ptr, ptr %7, align 8, !dbg !463
  %9 = getelementptr i8, ptr %6, i64 4415488, !dbg !464
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !464
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !463
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !463
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !463
  %13 = load ptr, ptr %12, align 8, !dbg !463
  %14 = getelementptr i8, ptr %13, i64 200704, !dbg !463
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !463
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !463
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !463
  %17 = zext i32 %16 to i64, !dbg !463
  %18 = sdiv i64 %17, 16, !dbg !463
  %19 = mul i64 %18, 16, !dbg !463
  %20 = icmp ne i64 %17, %19, !dbg !463
  %21 = icmp slt i64 %17, 0, !dbg !463
  %22 = and i1 %20, %21, !dbg !463
  %23 = add i64 %18, -1, !dbg !463
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !463
  %25 = srem i64 %17, 16, !dbg !463
  %26 = icmp slt i64 %25, 0, !dbg !463
  %27 = add nsw i64 %25, 16, !dbg !463
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !463
  %29 = mul nsw i64 %24, 16, !dbg !463
  %30 = mul nsw i64 %28, 16, !dbg !463
  %31 = alloca i8, i64 256, align 1, !dbg !463
  %32 = mul nsw i64 %29, 64, !dbg !463
  %33 = ptrtoint ptr %6 to i64, !dbg !463
  %34 = add i64 %33, %32, !dbg !463
  %35 = add i64 %30, 53248, !dbg !463
  %36 = ptrtoint ptr %8 to i64, !dbg !463
  %37 = add i64 %36, %35, !dbg !463
  %38 = ptrtoint ptr %31 to i64, !dbg !463
  %39 = mul nsw i64 %29, 256, !dbg !463
  %40 = add i64 %39, %30, !dbg !463
  %41 = add i64 %40, 1304576, !dbg !463
  %42 = mul i64 %41, 4, !dbg !463
  %43 = add i64 %33, %42, !dbg !463
  %44 = and i64 %34, 9223372036854775807, !dbg !463
  %45 = and i64 %37, 9223372036854775807, !dbg !463
  %46 = and i64 %38, 9223372036854775807, !dbg !463
  %47 = and i64 %43, 9223372036854775807, !dbg !463
  call void asm sideeffect "fence", ""(), !dbg !463
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !463
  call void @llvm.riscv.config(i64 2, i64 4348637409194278928), !dbg !463
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !463
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !463
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !463
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !463
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !463
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !463
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !463
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 16), !dbg !463
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !463
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !463
  call void asm sideeffect "fence", ""(), !dbg !463
  br label %48, !dbg !465

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !465
  %50 = icmp slt i64 %49, 16, !dbg !465
  br i1 %50, label %51, label %166, !dbg !465

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !465
  %53 = icmp slt i64 %52, 16, !dbg !465
  br i1 %53, label %54, label %164, !dbg !465

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !465
  %56 = add nuw nsw i64 %55, %52, !dbg !465
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !465
  %58 = load i8, ptr %57, align 1, !dbg !465
  %59 = add i64 %29, %49, !dbg !465
  %60 = add i64 %30, %52, !dbg !465
  %61 = mul nuw nsw i64 %59, 256, !dbg !465
  %62 = add nuw nsw i64 %61, %60, !dbg !465
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !465
  %64 = load i8, ptr %63, align 1, !dbg !465
  %65 = sitofp i8 %64 to float, !dbg !466
  %66 = fmul contract float %65, 0x3FC6854B40000000, !dbg !466
  %67 = sitofp i8 %58 to float, !dbg !467
  %68 = fmul contract float %67, 0x3FCD1B93A0000000, !dbg !467
  %69 = fadd contract float %68, %66, !dbg !468
  %70 = fdiv float %69, 0x3FCA4557E0000000, !dbg !469
  %71 = bitcast float %70 to i32, !dbg !469
  %72 = call float @llvm.round.f32(float %70), !dbg !469
  %73 = bitcast float %72 to i32, !dbg !469
  %74 = lshr i32 %71, 23, !dbg !469
  %75 = and i32 %74, 255, !dbg !469
  %76 = sub i32 %75, 127, !dbg !469
  %77 = lshr i32 %73, 23, !dbg !469
  %78 = and i32 %77, 255, !dbg !469
  %79 = sub i32 %78, 127, !dbg !469
  %80 = icmp eq i32 %79, 0, !dbg !469
  %81 = sub i32 %78, 128, !dbg !469
  %82 = icmp sgt i32 %81, 0, !dbg !469
  %83 = select i1 %82, i32 %81, i32 0, !dbg !469
  %84 = icmp slt i32 %83, 31, !dbg !469
  %85 = select i1 %84, i32 %83, i32 31, !dbg !469
  %86 = lshr i32 8388607, %85, !dbg !469
  %87 = and i32 %73, %86, !dbg !469
  %88 = icmp ne i32 %87, 0, !dbg !469
  %89 = or i1 %88, %80, !dbg !469
  %90 = icmp eq i32 %76, -1, !dbg !469
  %91 = icmp sgt i32 %76, 0, !dbg !469
  %92 = select i1 %91, i32 %76, i32 0, !dbg !469
  %93 = icmp slt i32 %92, 31, !dbg !469
  %94 = select i1 %93, i32 %92, i32 31, !dbg !469
  %95 = lshr i32 4194304, %94, !dbg !469
  %96 = select i1 %90, i32 0, i32 %95, !dbg !469
  %97 = lshr i32 8388607, %94, !dbg !469
  %98 = and i32 %71, %97, !dbg !469
  %99 = icmp eq i32 %98, %96, !dbg !469
  %100 = icmp sge i32 %76, -1, !dbg !469
  %101 = icmp slt i32 %76, 23, !dbg !469
  %102 = and i1 %99, %101, !dbg !469
  %103 = and i1 %102, %100, !dbg !469
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !469
  %105 = fsub contract float %72, %104, !dbg !469
  %106 = and i1 %89, %103, !dbg !469
  %107 = select i1 %106, float %105, float %72, !dbg !469
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !469
  %109 = fadd contract float %108, 0.000000e+00, !dbg !469
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !469
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !469
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !469
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !469
  %114 = fptosi float %113 to i8, !dbg !469
  %115 = icmp sgt i8 %114, 0, !dbg !470
  %116 = select i1 %115, i8 %114, i8 0, !dbg !470
  %117 = sitofp i8 %116 to float, !dbg !470
  %118 = bitcast float %117 to i32, !dbg !465
  %119 = call float @llvm.round.f32(float %117), !dbg !465
  %120 = bitcast float %119 to i32, !dbg !465
  %121 = lshr i32 %118, 23, !dbg !465
  %122 = and i32 %121, 255, !dbg !465
  %123 = sub i32 %122, 127, !dbg !465
  %124 = lshr i32 %120, 23, !dbg !465
  %125 = and i32 %124, 255, !dbg !465
  %126 = sub i32 %125, 127, !dbg !465
  %127 = icmp eq i32 %126, 0, !dbg !465
  %128 = sub i32 %125, 128, !dbg !465
  %129 = icmp sgt i32 %128, 0, !dbg !465
  %130 = select i1 %129, i32 %128, i32 0, !dbg !465
  %131 = icmp slt i32 %130, 31, !dbg !465
  %132 = select i1 %131, i32 %130, i32 31, !dbg !465
  %133 = lshr i32 8388607, %132, !dbg !465
  %134 = and i32 %120, %133, !dbg !465
  %135 = icmp ne i32 %134, 0, !dbg !465
  %136 = or i1 %135, %127, !dbg !465
  %137 = icmp eq i32 %123, -1, !dbg !465
  %138 = icmp sgt i32 %123, 0, !dbg !465
  %139 = select i1 %138, i32 %123, i32 0, !dbg !465
  %140 = icmp slt i32 %139, 31, !dbg !465
  %141 = select i1 %140, i32 %139, i32 31, !dbg !465
  %142 = lshr i32 4194304, %141, !dbg !465
  %143 = select i1 %137, i32 0, i32 %142, !dbg !465
  %144 = lshr i32 8388607, %141, !dbg !465
  %145 = and i32 %118, %144, !dbg !465
  %146 = icmp eq i32 %145, %143, !dbg !465
  %147 = icmp sge i32 %123, -1, !dbg !465
  %148 = icmp slt i32 %123, 23, !dbg !465
  %149 = and i1 %146, %148, !dbg !465
  %150 = and i1 %149, %147, !dbg !465
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !465
  %152 = fsub contract float %119, %151, !dbg !465
  %153 = and i1 %136, %150, !dbg !465
  %154 = select i1 %153, float %152, float %119, !dbg !465
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !465
  %156 = fadd contract float %155, 0.000000e+00, !dbg !465
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !465
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !465
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !465
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !465
  %161 = fptosi float %160 to i8, !dbg !465
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !465
  store i8 %161, ptr %162, align 1, !dbg !465
  %163 = add i64 %52, 1, !dbg !465
  br label %51, !dbg !465

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !465
  br label %48, !dbg !465

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !463
  ret i32 0, !dbg !463
}

define internal i32 @"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !471 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !472
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !472
  %6 = load ptr, ptr %5, align 8, !dbg !472
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !472
  %8 = load ptr, ptr %7, align 8, !dbg !472
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !472
  %10 = load ptr, ptr %9, align 8, !dbg !472
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !472
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !472
  %13 = zext i32 %12 to i64, !dbg !472
  %14 = sdiv i64 %13, 4, !dbg !472
  %15 = mul i64 %14, 4, !dbg !472
  %16 = icmp ne i64 %13, %15, !dbg !472
  %17 = icmp slt i64 %13, 0, !dbg !472
  %18 = and i1 %16, %17, !dbg !472
  %19 = add i64 %14, -1, !dbg !472
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !472
  %21 = srem i64 %13, 4, !dbg !472
  %22 = icmp slt i64 %21, 0, !dbg !472
  %23 = add nsw i64 %21, 4, !dbg !472
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !472
  %25 = mul nsw i64 %20, 16, !dbg !472
  %26 = mul nsw i64 %24, 16, !dbg !472
  %27 = mul nsw i64 %25, 256, !dbg !472
  %28 = add i64 %27, 200704, !dbg !472
  %29 = ptrtoint ptr %6 to i64, !dbg !472
  %30 = add i64 %29, %28, !dbg !472
  %31 = add i64 %26, 69632, !dbg !472
  %32 = ptrtoint ptr %8 to i64, !dbg !472
  %33 = add i64 %32, %31, !dbg !472
  %34 = mul nsw i64 %25, 64, !dbg !472
  %35 = add i64 %34, %26, !dbg !472
  %36 = ptrtoint ptr %10 to i64, !dbg !472
  %37 = add i64 %36, %35, !dbg !472
  %38 = add i64 %35, 4346880, !dbg !472
  %39 = mul i64 %38, 4, !dbg !472
  %40 = add i64 %32, %39, !dbg !472
  %41 = and i64 %30, 9223372036854775807, !dbg !472
  %42 = and i64 %33, 9223372036854775807, !dbg !472
  %43 = and i64 %37, 9223372036854775807, !dbg !472
  %44 = and i64 %40, 9223372036854775807, !dbg !472
  call void asm sideeffect "fence", ""(), !dbg !472
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !472
  call void @llvm.riscv.config(i64 6, i64 4412924569875120192), !dbg !472
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !472
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !472
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !472
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !472
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !472
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !472
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 64), !dbg !472
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !472
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !472
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !472
  call void asm sideeffect "fence", ""(), !dbg !472
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !472
  ret i32 0, !dbg !472
}

define internal i32 @"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !473 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !474
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !474
  %6 = load ptr, ptr %5, align 8, !dbg !474
  %7 = getelementptr i8, ptr %6, i64 1003520, !dbg !474
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !474
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !474
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !474
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !474
  %11 = load ptr, ptr %10, align 8, !dbg !474
  %12 = getelementptr i8, ptr %11, i64 1218816, !dbg !474
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !474
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !474
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !474
  %15 = zext i32 %14 to i64, !dbg !474
  %16 = sdiv i64 %15, 4, !dbg !474
  %17 = mul i64 %16, 4, !dbg !474
  %18 = icmp ne i64 %15, %17, !dbg !474
  %19 = icmp slt i64 %15, 0, !dbg !474
  %20 = and i1 %18, %19, !dbg !474
  %21 = add i64 %16, -1, !dbg !474
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !474
  %23 = srem i64 %15, 4, !dbg !474
  %24 = icmp slt i64 %23, 0, !dbg !474
  %25 = add nsw i64 %23, 4, !dbg !474
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !474
  %27 = sdiv i64 %26, 2, !dbg !474
  %28 = srem i64 %15, 2, !dbg !474
  %29 = icmp slt i64 %28, 0, !dbg !474
  %30 = add nsw i64 %28, 2, !dbg !474
  %31 = select i1 %29, i64 %30, i64 %28, !dbg !474
  %32 = mul nsw i64 %22, 8, !dbg !474
  %33 = mul nsw i64 %27, 28, !dbg !474
  %34 = mul nsw i64 %31, 32, !dbg !474
  br label %35, !dbg !474

35:                                               ; preds = %89, %3
  %36 = phi i64 [ %90, %89 ], [ 0, %3 ], !dbg !474
  %37 = icmp slt i64 %36, 8, !dbg !474
  br i1 %37, label %38, label %91, !dbg !474

38:                                               ; preds = %87, %35
  %39 = phi i64 [ %88, %87 ], [ 0, %35 ], !dbg !474
  %40 = icmp slt i64 %39, 28, !dbg !474
  br i1 %40, label %41, label %89, !dbg !474

41:                                               ; preds = %85, %38
  %42 = phi i64 [ %86, %85 ], [ 0, %38 ], !dbg !474
  %43 = icmp slt i64 %42, 3, !dbg !474
  br i1 %43, label %44, label %87, !dbg !474

44:                                               ; preds = %41
  %45 = add i64 %36, %42, !dbg !474
  %46 = add i64 %45, %32, !dbg !474
  br label %47, !dbg !474

47:                                               ; preds = %83, %44
  %48 = phi i64 [ %84, %83 ], [ 0, %44 ], !dbg !474
  %49 = icmp slt i64 %48, 3, !dbg !474
  br i1 %49, label %50, label %85, !dbg !474

50:                                               ; preds = %47
  %51 = add i64 %39, %48, !dbg !474
  %52 = add i64 %51, %33, !dbg !474
  br label %53, !dbg !474

53:                                               ; preds = %81, %50
  %54 = phi i64 [ %82, %81 ], [ 0, %50 ], !dbg !474
  %55 = icmp slt i64 %54, 32, !dbg !474
  br i1 %55, label %56, label %83, !dbg !474

56:                                               ; preds = %53
  %57 = add i64 %54, %34, !dbg !474
  br label %58, !dbg !474

58:                                               ; preds = %61, %56
  %59 = phi i64 [ %80, %61 ], [ 0, %56 ], !dbg !474
  %60 = icmp slt i64 %59, 8, !dbg !474
  br i1 %60, label %61, label %81, !dbg !474

61:                                               ; preds = %58
  %62 = add i64 %57, %59, !dbg !474
  %63 = mul nuw nsw i64 %46, 3712, !dbg !474
  %64 = mul nuw nsw i64 %52, 64, !dbg !474
  %65 = add nuw nsw i64 %63, %64, !dbg !474
  %66 = add nuw nsw i64 %65, %62, !dbg !474
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 %66, !dbg !474
  %68 = load i8, ptr %67, align 1, !dbg !474
  %69 = add i64 %32, %36, !dbg !474
  %70 = add i64 %33, %39, !dbg !474
  %71 = mul nuw nsw i64 %69, 32256, !dbg !474
  %72 = mul nuw nsw i64 %70, 576, !dbg !474
  %73 = add nuw nsw i64 %71, %72, !dbg !474
  %74 = mul nuw nsw i64 %42, 192, !dbg !474
  %75 = add nuw nsw i64 %73, %74, !dbg !474
  %76 = mul nuw nsw i64 %48, 64, !dbg !474
  %77 = add nuw nsw i64 %75, %76, !dbg !474
  %78 = add nuw nsw i64 %77, %62, !dbg !474
  %79 = getelementptr inbounds nuw i8, ptr %12, i64 %78, !dbg !474
  store i8 %68, ptr %79, align 1, !dbg !474
  %80 = add i64 %59, 1, !dbg !474
  br label %58, !dbg !474

81:                                               ; preds = %58
  %82 = add i64 %54, 8, !dbg !474
  br label %53, !dbg !474

83:                                               ; preds = %53
  %84 = add i64 %48, 1, !dbg !474
  br label %47, !dbg !474

85:                                               ; preds = %47
  %86 = add i64 %42, 1, !dbg !474
  br label %41, !dbg !474

87:                                               ; preds = %41
  %88 = add i64 %39, 1, !dbg !474
  br label %38, !dbg !474

89:                                               ; preds = %38
  %90 = add i64 %36, 1, !dbg !474
  br label %35, !dbg !474

91:                                               ; preds = %35
  ret i32 0, !dbg !474
}

define internal i32 @"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !475 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !476
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !476
  %6 = load ptr, ptr %5, align 8, !dbg !476
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !476
  %8 = load ptr, ptr %7, align 8, !dbg !476
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !476
  %10 = load ptr, ptr %9, align 8, !dbg !476
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !476
  %12 = load ptr, ptr %11, align 8, !dbg !476
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !476
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !476
  %15 = zext i32 %14 to i64, !dbg !476
  %16 = sdiv i64 %15, 4, !dbg !476
  %17 = mul i64 %16, 4, !dbg !476
  %18 = icmp ne i64 %15, %17, !dbg !476
  %19 = icmp slt i64 %15, 0, !dbg !476
  %20 = and i1 %18, %19, !dbg !476
  %21 = add i64 %16, -1, !dbg !476
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !476
  %23 = srem i64 %15, 4, !dbg !476
  %24 = icmp slt i64 %23, 0, !dbg !476
  %25 = add nsw i64 %23, 4, !dbg !476
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !476
  %27 = mul nsw i64 %22, 16, !dbg !476
  %28 = mul nsw i64 %26, 16, !dbg !476
  %29 = mul nsw i64 %27, 576, !dbg !476
  %30 = add i64 %29, 1218816, !dbg !476
  %31 = ptrtoint ptr %6 to i64, !dbg !476
  %32 = add i64 %31, %30, !dbg !476
  %33 = add i64 %28, 90496, !dbg !476
  %34 = ptrtoint ptr %8 to i64, !dbg !476
  %35 = add i64 %34, %33, !dbg !476
  %36 = mul nsw i64 %27, 64, !dbg !476
  %37 = add i64 %36, %28, !dbg !476
  %38 = ptrtoint ptr %12 to i64, !dbg !476
  %39 = add i64 %38, %37, !dbg !476
  %40 = add i64 %37, 4547584, !dbg !476
  %41 = ptrtoint ptr %10 to i64, !dbg !476
  %42 = mul i64 %40, 4, !dbg !476
  %43 = add i64 %41, %42, !dbg !476
  %44 = and i64 %32, 9223372036854775807, !dbg !476
  %45 = and i64 %35, 9223372036854775807, !dbg !476
  %46 = and i64 %39, 9223372036854775807, !dbg !476
  %47 = and i64 %43, 9223372036854775807, !dbg !476
  call void asm sideeffect "fence", ""(), !dbg !476
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !476
  call void @llvm.riscv.config(i64 6, i64 4316232396342034496), !dbg !476
  call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !476
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !476
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !476
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !476
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !476
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !476
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 64), !dbg !476
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !476
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !476
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !476
  call void asm sideeffect "fence", ""(), !dbg !476
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !476
  ret i32 0, !dbg !476
}

define internal i32 @"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !477 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !478
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !478
  %6 = load ptr, ptr %5, align 8, !dbg !478
  %7 = getelementptr i32, ptr %6, i64 31840, !dbg !478
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !478
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !478
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !478
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !478
  %11 = load ptr, ptr %10, align 8, !dbg !478
  %12 = getelementptr i32, ptr %11, i64 756288, !dbg !478
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !478
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !478
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !478
  %15 = zext i32 %14 to i64, !dbg !478
  %16 = sdiv i64 %15, 4, !dbg !478
  %17 = mul i64 %16, 4, !dbg !478
  %18 = icmp ne i64 %15, %17, !dbg !478
  %19 = icmp slt i64 %15, 0, !dbg !478
  %20 = and i1 %18, %19, !dbg !478
  %21 = add i64 %16, -1, !dbg !478
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !478
  %23 = srem i64 %15, 4, !dbg !478
  %24 = icmp slt i64 %23, 0, !dbg !478
  %25 = add nsw i64 %23, 4, !dbg !478
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !478
  %27 = mul nsw i64 %22, 64, !dbg !478
  %28 = mul nsw i64 %26, 64, !dbg !478
  br label %29, !dbg !478

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !478
  %31 = icmp slt i64 %30, 64, !dbg !478
  br i1 %31, label %32, label %46, !dbg !478

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !478
  %34 = icmp slt i64 %33, 64, !dbg !478
  br i1 %34, label %35, label %44, !dbg !478

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !478
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !478
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !478
  %39 = add i64 %27, %30, !dbg !478
  %40 = mul i64 %39, 256, !dbg !478
  %41 = add i64 %40, %36, !dbg !478
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !478
  store <2 x i32> %38, ptr %42, align 4, !dbg !478
  %43 = add i64 %33, 2, !dbg !478
  br label %32, !dbg !478

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !478
  br label %29, !dbg !478

46:                                               ; preds = %29
  ret i32 0, !dbg !478
}

define internal i32 @"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !479 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !480
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !480
  %6 = load ptr, ptr %5, align 8, !dbg !480
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !480
  %8 = load ptr, ptr %7, align 8, !dbg !480
  %9 = getelementptr i8, ptr %6, i64 200704, !dbg !481
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !481
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !480
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !480
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !480
  %13 = load ptr, ptr %12, align 8, !dbg !480
  %14 = getelementptr i8, ptr %13, i64 1003520, !dbg !480
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !480
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !480
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !480
  %17 = zext i32 %16 to i64, !dbg !480
  %18 = sdiv i64 %17, 16, !dbg !480
  %19 = mul i64 %18, 16, !dbg !480
  %20 = icmp ne i64 %17, %19, !dbg !480
  %21 = icmp slt i64 %17, 0, !dbg !480
  %22 = and i1 %20, %21, !dbg !480
  %23 = add i64 %18, -1, !dbg !480
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !480
  %25 = srem i64 %17, 16, !dbg !480
  %26 = icmp slt i64 %25, 0, !dbg !480
  %27 = add nsw i64 %25, 16, !dbg !480
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !480
  %29 = mul nsw i64 %24, 16, !dbg !480
  %30 = mul nsw i64 %28, 16, !dbg !480
  %31 = alloca i8, i64 256, align 1, !dbg !480
  %32 = mul nsw i64 %29, 64, !dbg !480
  %33 = ptrtoint ptr %6 to i64, !dbg !480
  %34 = add i64 %33, %32, !dbg !480
  %35 = add i64 %30, 86016, !dbg !480
  %36 = ptrtoint ptr %8 to i64, !dbg !480
  %37 = add i64 %36, %35, !dbg !480
  %38 = ptrtoint ptr %31 to i64, !dbg !480
  %39 = mul nsw i64 %29, 256, !dbg !480
  %40 = add i64 %39, %30, !dbg !480
  %41 = add i64 %40, 756288, !dbg !480
  %42 = mul i64 %41, 4, !dbg !480
  %43 = add i64 %33, %42, !dbg !480
  %44 = and i64 %34, 9223372036854775807, !dbg !480
  %45 = and i64 %37, 9223372036854775807, !dbg !480
  %46 = and i64 %38, 9223372036854775807, !dbg !480
  %47 = and i64 %43, 9223372036854775807, !dbg !480
  call void asm sideeffect "fence", ""(), !dbg !480
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !480
  call void @llvm.riscv.config(i64 2, i64 4365372689133600784), !dbg !480
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !480
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !480
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !480
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !480
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !480
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !480
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !480
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 16), !dbg !480
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !480
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !480
  call void asm sideeffect "fence", ""(), !dbg !480
  br label %48, !dbg !482

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !482
  %50 = icmp slt i64 %49, 16, !dbg !482
  br i1 %50, label %51, label %166, !dbg !482

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !482
  %53 = icmp slt i64 %52, 16, !dbg !482
  br i1 %53, label %54, label %164, !dbg !482

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !482
  %56 = add nuw nsw i64 %55, %52, !dbg !482
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !482
  %58 = load i8, ptr %57, align 1, !dbg !482
  %59 = add i64 %29, %49, !dbg !482
  %60 = add i64 %30, %52, !dbg !482
  %61 = mul nuw nsw i64 %59, 256, !dbg !482
  %62 = add nuw nsw i64 %61, %60, !dbg !482
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !482
  %64 = load i8, ptr %63, align 1, !dbg !482
  %65 = sitofp i8 %64 to float, !dbg !483
  %66 = fmul contract float %65, 0x3FCA4557E0000000, !dbg !483
  %67 = sitofp i8 %58 to float, !dbg !484
  %68 = fmul contract float %67, 0x3FC7EB3C80000000, !dbg !484
  %69 = fadd contract float %68, %66, !dbg !485
  %70 = fdiv float %69, 0x3FC876B8C0000000, !dbg !486
  %71 = bitcast float %70 to i32, !dbg !486
  %72 = call float @llvm.round.f32(float %70), !dbg !486
  %73 = bitcast float %72 to i32, !dbg !486
  %74 = lshr i32 %71, 23, !dbg !486
  %75 = and i32 %74, 255, !dbg !486
  %76 = sub i32 %75, 127, !dbg !486
  %77 = lshr i32 %73, 23, !dbg !486
  %78 = and i32 %77, 255, !dbg !486
  %79 = sub i32 %78, 127, !dbg !486
  %80 = icmp eq i32 %79, 0, !dbg !486
  %81 = sub i32 %78, 128, !dbg !486
  %82 = icmp sgt i32 %81, 0, !dbg !486
  %83 = select i1 %82, i32 %81, i32 0, !dbg !486
  %84 = icmp slt i32 %83, 31, !dbg !486
  %85 = select i1 %84, i32 %83, i32 31, !dbg !486
  %86 = lshr i32 8388607, %85, !dbg !486
  %87 = and i32 %73, %86, !dbg !486
  %88 = icmp ne i32 %87, 0, !dbg !486
  %89 = or i1 %88, %80, !dbg !486
  %90 = icmp eq i32 %76, -1, !dbg !486
  %91 = icmp sgt i32 %76, 0, !dbg !486
  %92 = select i1 %91, i32 %76, i32 0, !dbg !486
  %93 = icmp slt i32 %92, 31, !dbg !486
  %94 = select i1 %93, i32 %92, i32 31, !dbg !486
  %95 = lshr i32 4194304, %94, !dbg !486
  %96 = select i1 %90, i32 0, i32 %95, !dbg !486
  %97 = lshr i32 8388607, %94, !dbg !486
  %98 = and i32 %71, %97, !dbg !486
  %99 = icmp eq i32 %98, %96, !dbg !486
  %100 = icmp sge i32 %76, -1, !dbg !486
  %101 = icmp slt i32 %76, 23, !dbg !486
  %102 = and i1 %99, %101, !dbg !486
  %103 = and i1 %102, %100, !dbg !486
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !486
  %105 = fsub contract float %72, %104, !dbg !486
  %106 = and i1 %89, %103, !dbg !486
  %107 = select i1 %106, float %105, float %72, !dbg !486
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !486
  %109 = fadd contract float %108, 0.000000e+00, !dbg !486
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !486
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !486
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !486
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !486
  %114 = fptosi float %113 to i8, !dbg !486
  %115 = icmp sgt i8 %114, 0, !dbg !487
  %116 = select i1 %115, i8 %114, i8 0, !dbg !487
  %117 = sitofp i8 %116 to float, !dbg !487
  %118 = bitcast float %117 to i32, !dbg !482
  %119 = call float @llvm.round.f32(float %117), !dbg !482
  %120 = bitcast float %119 to i32, !dbg !482
  %121 = lshr i32 %118, 23, !dbg !482
  %122 = and i32 %121, 255, !dbg !482
  %123 = sub i32 %122, 127, !dbg !482
  %124 = lshr i32 %120, 23, !dbg !482
  %125 = and i32 %124, 255, !dbg !482
  %126 = sub i32 %125, 127, !dbg !482
  %127 = icmp eq i32 %126, 0, !dbg !482
  %128 = sub i32 %125, 128, !dbg !482
  %129 = icmp sgt i32 %128, 0, !dbg !482
  %130 = select i1 %129, i32 %128, i32 0, !dbg !482
  %131 = icmp slt i32 %130, 31, !dbg !482
  %132 = select i1 %131, i32 %130, i32 31, !dbg !482
  %133 = lshr i32 8388607, %132, !dbg !482
  %134 = and i32 %120, %133, !dbg !482
  %135 = icmp ne i32 %134, 0, !dbg !482
  %136 = or i1 %135, %127, !dbg !482
  %137 = icmp eq i32 %123, -1, !dbg !482
  %138 = icmp sgt i32 %123, 0, !dbg !482
  %139 = select i1 %138, i32 %123, i32 0, !dbg !482
  %140 = icmp slt i32 %139, 31, !dbg !482
  %141 = select i1 %140, i32 %139, i32 31, !dbg !482
  %142 = lshr i32 4194304, %141, !dbg !482
  %143 = select i1 %137, i32 0, i32 %142, !dbg !482
  %144 = lshr i32 8388607, %141, !dbg !482
  %145 = and i32 %118, %144, !dbg !482
  %146 = icmp eq i32 %145, %143, !dbg !482
  %147 = icmp sge i32 %123, -1, !dbg !482
  %148 = icmp slt i32 %123, 23, !dbg !482
  %149 = and i1 %146, %148, !dbg !482
  %150 = and i1 %149, %147, !dbg !482
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !482
  %152 = fsub contract float %119, %151, !dbg !482
  %153 = and i1 %136, %150, !dbg !482
  %154 = select i1 %153, float %152, float %119, !dbg !482
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !482
  %156 = fadd contract float %155, 0.000000e+00, !dbg !482
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !482
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !482
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !482
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !482
  %161 = fptosi float %160 to i8, !dbg !482
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !482
  store i8 %161, ptr %162, align 1, !dbg !482
  %163 = add i64 %52, 1, !dbg !482
  br label %51, !dbg !482

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !482
  br label %48, !dbg !482

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !480
  ret i32 0, !dbg !480
}

define internal i32 @"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !488 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !489
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !489
  %6 = load ptr, ptr %5, align 8, !dbg !489
  %7 = getelementptr i32, ptr %6, i64 32096, !dbg !489
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !489
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !489
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !489
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !489
  %11 = load ptr, ptr %10, align 8, !dbg !489
  %12 = getelementptr i32, ptr %11, i64 1559104, !dbg !489
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !489
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !489
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !489
  %15 = zext i32 %14 to i64, !dbg !489
  %16 = sdiv i64 %15, 2, !dbg !489
  %17 = mul i64 %16, 2, !dbg !489
  %18 = icmp ne i64 %15, %17, !dbg !489
  %19 = icmp slt i64 %15, 0, !dbg !489
  %20 = and i1 %18, %19, !dbg !489
  %21 = add i64 %16, -1, !dbg !489
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !489
  %23 = srem i64 %15, 2, !dbg !489
  %24 = icmp slt i64 %23, 0, !dbg !489
  %25 = add nsw i64 %23, 2, !dbg !489
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !489
  %27 = mul nsw i64 %22, 64, !dbg !489
  %28 = mul nsw i64 %26, 64, !dbg !489
  br label %29, !dbg !489

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !489
  %31 = icmp slt i64 %30, 64, !dbg !489
  br i1 %31, label %32, label %46, !dbg !489

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !489
  %34 = icmp slt i64 %33, 64, !dbg !489
  br i1 %34, label %35, label %44, !dbg !489

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !489
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !489
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !489
  %39 = add i64 %27, %30, !dbg !489
  %40 = mul i64 %39, 128, !dbg !489
  %41 = add i64 %40, %36, !dbg !489
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !489
  store <2 x i32> %38, ptr %42, align 4, !dbg !489
  %43 = add i64 %33, 2, !dbg !489
  br label %32, !dbg !489

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !489
  br label %29, !dbg !489

46:                                               ; preds = %29
  ret i32 0, !dbg !489
}

define internal i32 @"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !490 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !491
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !491
  %6 = load ptr, ptr %5, align 8, !dbg !491
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !491
  %8 = load ptr, ptr %7, align 8, !dbg !491
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !491
  %10 = load ptr, ptr %9, align 8, !dbg !491
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !491
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !491
  %13 = zext i32 %12 to i64, !dbg !491
  %14 = sdiv i64 %13, 8, !dbg !491
  %15 = mul i64 %14, 8, !dbg !491
  %16 = icmp ne i64 %13, %15, !dbg !491
  %17 = icmp slt i64 %13, 0, !dbg !491
  %18 = and i1 %16, %17, !dbg !491
  %19 = add i64 %14, -1, !dbg !491
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !491
  %21 = srem i64 %13, 8, !dbg !491
  %22 = icmp slt i64 %21, 0, !dbg !491
  %23 = add nsw i64 %21, 8, !dbg !491
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !491
  %25 = mul nsw i64 %20, 16, !dbg !491
  %26 = mul nsw i64 %24, 16, !dbg !491
  %27 = mul nsw i64 %25, 256, !dbg !491
  %28 = add i64 %27, 1003520, !dbg !491
  %29 = ptrtoint ptr %6 to i64, !dbg !491
  %30 = add i64 %29, %28, !dbg !491
  %31 = add i64 %26, 102400, !dbg !491
  %32 = ptrtoint ptr %8 to i64, !dbg !491
  %33 = add i64 %32, %31, !dbg !491
  %34 = mul nsw i64 %25, 128, !dbg !491
  %35 = add i64 %34, %26, !dbg !491
  %36 = ptrtoint ptr %10 to i64, !dbg !491
  %37 = add i64 %36, %35, !dbg !491
  %38 = add i64 %35, 1559104, !dbg !491
  %39 = mul i64 %38, 4, !dbg !491
  %40 = add i64 %29, %39, !dbg !491
  %41 = and i64 %30, 9223372036854775807, !dbg !491
  %42 = and i64 %33, 9223372036854775807, !dbg !491
  %43 = and i64 %37, 9223372036854775807, !dbg !491
  %44 = and i64 %40, 9223372036854775807, !dbg !491
  call void asm sideeffect "fence", ""(), !dbg !491
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !491
  call void @llvm.riscv.config(i64 6, i64 4351571370073653376), !dbg !491
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !491
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !491
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !491
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !491
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !491
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !491
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 128), !dbg !491
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !491
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !491
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !491
  call void asm sideeffect "fence", ""(), !dbg !491
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !491
  ret i32 0, !dbg !491
}

define internal i32 @"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !492 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !493
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !493
  %6 = load ptr, ptr %5, align 8, !dbg !493
  %7 = getelementptr i32, ptr %6, i64 32224, !dbg !493
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !493
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !493
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !493
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !493
  %11 = load ptr, ptr %10, align 8, !dbg !493
  %12 = getelementptr i32, ptr %11, i64 451584, !dbg !493
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !493
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !493
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !493
  %15 = zext i32 %14 to i64, !dbg !493
  %16 = sdiv i64 %15, 8, !dbg !493
  %17 = mul i64 %16, 8, !dbg !493
  %18 = icmp ne i64 %15, %17, !dbg !493
  %19 = icmp slt i64 %15, 0, !dbg !493
  %20 = and i1 %18, %19, !dbg !493
  %21 = add i64 %16, -1, !dbg !493
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !493
  %23 = srem i64 %15, 8, !dbg !493
  %24 = icmp slt i64 %23, 0, !dbg !493
  %25 = add nsw i64 %23, 8, !dbg !493
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !493
  %27 = mul nsw i64 %22, 112, !dbg !493
  %28 = mul nsw i64 %26, 64, !dbg !493
  br label %29, !dbg !493

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !493
  %31 = icmp slt i64 %30, 112, !dbg !493
  br i1 %31, label %32, label %46, !dbg !493

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !493
  %34 = icmp slt i64 %33, 64, !dbg !493
  br i1 %34, label %35, label %44, !dbg !493

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !493
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !493
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !493
  %39 = add i64 %27, %30, !dbg !493
  %40 = mul i64 %39, 512, !dbg !493
  %41 = add i64 %40, %36, !dbg !493
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !493
  store <2 x i32> %38, ptr %42, align 4, !dbg !493
  %43 = add i64 %33, 2, !dbg !493
  br label %32, !dbg !493

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !493
  br label %29, !dbg !493

46:                                               ; preds = %29
  ret i32 0, !dbg !493
}

define internal i32 @"main_graph$async_dispatch_29_generic_28x28x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !494 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !495
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !495
  %6 = load ptr, ptr %5, align 8, !dbg !495
  %7 = getelementptr i8, ptr %6, i64 1003520, !dbg !495
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !495
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !496
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !496
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !496
  %11 = load ptr, ptr %10, align 8, !dbg !496
  %12 = getelementptr i8, ptr %11, i64 401408, !dbg !496
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !496
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !496
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !496
  %15 = zext i32 %14 to i64, !dbg !496
  %16 = sdiv i64 %15, 8, !dbg !496
  %17 = mul i64 %16, 8, !dbg !496
  %18 = icmp ne i64 %15, %17, !dbg !496
  %19 = icmp slt i64 %15, 0, !dbg !496
  %20 = and i1 %18, %19, !dbg !496
  %21 = add i64 %16, -1, !dbg !496
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !496
  %23 = srem i64 %15, 8, !dbg !496
  %24 = icmp slt i64 %23, 0, !dbg !496
  %25 = add nsw i64 %23, 8, !dbg !496
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !496
  %27 = mul nsw i64 %22, 7, !dbg !496
  %28 = mul nsw i64 %26, 32, !dbg !496
  br label %29, !dbg !496

29:                                               ; preds = %68, %3
  %30 = phi i64 [ %69, %68 ], [ 0, %3 ], !dbg !496
  %31 = icmp slt i64 %30, 7, !dbg !496
  br i1 %31, label %32, label %70, !dbg !496

32:                                               ; preds = %29
  %33 = mul nsw i64 %30, 2, !dbg !496
  %34 = mul nsw i64 %22, 14, !dbg !496
  %35 = add i64 %33, %34, !dbg !496
  br label %36, !dbg !496

36:                                               ; preds = %66, %32
  %37 = phi i64 [ %67, %66 ], [ 0, %32 ], !dbg !496
  %38 = icmp slt i64 %37, 28, !dbg !496
  br i1 %38, label %39, label %68, !dbg !496

39:                                               ; preds = %36
  %40 = mul nsw i64 %37, 2, !dbg !496
  br label %41, !dbg !496

41:                                               ; preds = %64, %39
  %42 = phi i64 [ %65, %64 ], [ 0, %39 ], !dbg !496
  %43 = icmp slt i64 %42, 32, !dbg !496
  br i1 %43, label %44, label %66, !dbg !496

44:                                               ; preds = %41
  %45 = add i64 %42, %28, !dbg !496
  br label %46, !dbg !496

46:                                               ; preds = %49, %44
  %47 = phi i64 [ %63, %49 ], [ 0, %44 ], !dbg !496
  %48 = icmp slt i64 %47, 8, !dbg !496
  br i1 %48, label %49, label %64, !dbg !496

49:                                               ; preds = %46
  %50 = add i64 %45, %47, !dbg !496
  %51 = mul nuw nsw i64 %35, 14336, !dbg !496
  %52 = mul nuw nsw i64 %40, 256, !dbg !496
  %53 = add nuw nsw i64 %51, %52, !dbg !496
  %54 = add nuw nsw i64 %53, %50, !dbg !496
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 %54, !dbg !496
  %56 = load i8, ptr %55, align 1, !dbg !496
  %57 = add i64 %27, %30, !dbg !496
  %58 = mul nuw nsw i64 %57, 7168, !dbg !496
  %59 = mul nuw nsw i64 %37, 256, !dbg !496
  %60 = add nuw nsw i64 %58, %59, !dbg !496
  %61 = add nuw nsw i64 %60, %50, !dbg !496
  %62 = getelementptr inbounds nuw i8, ptr %12, i64 %61, !dbg !496
  store i8 %56, ptr %62, align 1, !dbg !496
  %63 = add i64 %47, 1, !dbg !496
  br label %46, !dbg !496

64:                                               ; preds = %46
  %65 = add i64 %42, 8, !dbg !496
  br label %41, !dbg !496

66:                                               ; preds = %41
  %67 = add i64 %37, 1, !dbg !496
  br label %36, !dbg !496

68:                                               ; preds = %36
  %69 = add i64 %30, 1, !dbg !496
  br label %29, !dbg !496

70:                                               ; preds = %29
  ret i32 0, !dbg !496
}

define internal i32 @"main_graph$async_dispatch_30_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !497 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !498
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !498
  %6 = load ptr, ptr %5, align 8, !dbg !498
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !498
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !499
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !499
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !499
  %10 = load ptr, ptr %9, align 8, !dbg !499
  %11 = getelementptr i8, ptr %10, i64 3411968, !dbg !499
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !499
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !499
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !499
  %14 = zext i32 %13 to i64, !dbg !499
  %15 = sdiv i64 %14, 2, !dbg !499
  %16 = mul i64 %15, 2, !dbg !499
  %17 = icmp ne i64 %14, %16, !dbg !499
  %18 = icmp slt i64 %14, 0, !dbg !499
  %19 = and i1 %17, %18, !dbg !499
  %20 = add i64 %15, -1, !dbg !499
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !499
  %22 = srem i64 %14, 2, !dbg !499
  %23 = icmp slt i64 %22, 0, !dbg !499
  %24 = add nsw i64 %22, 2, !dbg !499
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !499
  %26 = mul nsw i64 %21, 4, !dbg !499
  %27 = mul nsw i64 %25, 64, !dbg !499
  br label %28, !dbg !499

28:                                               ; preds = %56, %3
  %29 = phi i64 [ %57, %56 ], [ 0, %3 ], !dbg !499
  %30 = icmp slt i64 %29, 4, !dbg !499
  br i1 %30, label %31, label %58, !dbg !499

31:                                               ; preds = %54, %28
  %32 = phi i64 [ %55, %54 ], [ 0, %28 ], !dbg !499
  %33 = icmp slt i64 %32, 56, !dbg !499
  br i1 %33, label %34, label %56, !dbg !499

34:                                               ; preds = %37, %31
  %35 = phi i64 [ %53, %37 ], [ 0, %31 ], !dbg !499
  %36 = icmp slt i64 %35, 64, !dbg !499
  br i1 %36, label %37, label %54, !dbg !499

37:                                               ; preds = %34
  %38 = add i64 %26, %29, !dbg !499
  %39 = add i64 %27, %35, !dbg !499
  %40 = mul i64 %38, 7168, !dbg !499
  %41 = mul i64 %32, 128, !dbg !499
  %42 = add i64 %40, %41, !dbg !499
  %43 = add i64 %42, %39, !dbg !499
  %44 = getelementptr i8, ptr %6, i64 %43, !dbg !499
  %45 = load <2 x i8>, ptr %44, align 1, !dbg !499
  %46 = add i64 %38, 1, !dbg !499
  %47 = add i64 %32, 1, !dbg !499
  %48 = mul i64 %46, 7424, !dbg !499
  %49 = mul i64 %47, 128, !dbg !499
  %50 = add i64 %48, %49, !dbg !499
  %51 = add i64 %50, %39, !dbg !499
  %52 = getelementptr i8, ptr %11, i64 %51, !dbg !499
  store <2 x i8> %45, ptr %52, align 1, !dbg !499
  %53 = add i64 %35, 2, !dbg !499
  br label %34, !dbg !499

54:                                               ; preds = %34
  %55 = add i64 %32, 1, !dbg !499
  br label %31, !dbg !499

56:                                               ; preds = %31
  %57 = add i64 %29, 1, !dbg !499
  br label %28, !dbg !499

58:                                               ; preds = %28
  ret i32 0, !dbg !499
}

define internal i32 @"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !500 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !501
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !501
  %6 = load ptr, ptr %5, align 8, !dbg !501
  %7 = getelementptr i8, ptr %6, i64 3411968, !dbg !501
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !501
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !501
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !501
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !501
  %11 = load ptr, ptr %10, align 8, !dbg !501
  %12 = getelementptr i8, ptr %11, i64 602112, !dbg !501
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !501
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !501
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !501
  %15 = zext i32 %14 to i64, !dbg !501
  %16 = sdiv i64 %15, 4, !dbg !501
  %17 = mul i64 %16, 4, !dbg !501
  %18 = icmp ne i64 %15, %17, !dbg !501
  %19 = icmp slt i64 %15, 0, !dbg !501
  %20 = and i1 %18, %19, !dbg !501
  %21 = add i64 %16, -1, !dbg !501
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !501
  %23 = srem i64 %15, 4, !dbg !501
  %24 = icmp slt i64 %23, 0, !dbg !501
  %25 = add nsw i64 %23, 4, !dbg !501
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !501
  %27 = mul nsw i64 %22, 4, !dbg !501
  %28 = mul nsw i64 %26, 32, !dbg !501
  br label %29, !dbg !501

29:                                               ; preds = %84, %3
  %30 = phi i64 [ %85, %84 ], [ 0, %3 ], !dbg !501
  %31 = icmp slt i64 %30, 4, !dbg !501
  br i1 %31, label %32, label %86, !dbg !501

32:                                               ; preds = %82, %29
  %33 = phi i64 [ %83, %82 ], [ 0, %29 ], !dbg !501
  %34 = icmp slt i64 %33, 28, !dbg !501
  br i1 %34, label %35, label %84, !dbg !501

35:                                               ; preds = %80, %32
  %36 = phi i64 [ %81, %80 ], [ 0, %32 ], !dbg !501
  %37 = icmp slt i64 %36, 3, !dbg !501
  br i1 %37, label %38, label %82, !dbg !501

38:                                               ; preds = %35
  %39 = mul nsw i64 %30, 2, !dbg !501
  %40 = add i64 %39, %36, !dbg !501
  %41 = mul nsw i64 %22, 8, !dbg !501
  %42 = add i64 %40, %41, !dbg !501
  br label %43, !dbg !501

43:                                               ; preds = %78, %38
  %44 = phi i64 [ %79, %78 ], [ 0, %38 ], !dbg !501
  %45 = icmp slt i64 %44, 3, !dbg !501
  br i1 %45, label %46, label %80, !dbg !501

46:                                               ; preds = %43
  %47 = mul nsw i64 %33, 2, !dbg !501
  %48 = add i64 %47, %44, !dbg !501
  br label %49, !dbg !501

49:                                               ; preds = %76, %46
  %50 = phi i64 [ %77, %76 ], [ 0, %46 ], !dbg !501
  %51 = icmp slt i64 %50, 32, !dbg !501
  br i1 %51, label %52, label %78, !dbg !501

52:                                               ; preds = %49
  %53 = add i64 %50, %28, !dbg !501
  br label %54, !dbg !501

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %75, %57 ], [ 0, %52 ], !dbg !501
  %56 = icmp slt i64 %55, 8, !dbg !501
  br i1 %56, label %57, label %76, !dbg !501

57:                                               ; preds = %54
  %58 = add i64 %53, %55, !dbg !501
  %59 = mul nuw nsw i64 %42, 7424, !dbg !501
  %60 = mul nuw nsw i64 %48, 128, !dbg !501
  %61 = add nuw nsw i64 %59, %60, !dbg !501
  %62 = add nuw nsw i64 %61, %58, !dbg !501
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 %62, !dbg !501
  %64 = load i8, ptr %63, align 1, !dbg !501
  %65 = add i64 %27, %30, !dbg !501
  %66 = mul nuw nsw i64 %65, 32256, !dbg !501
  %67 = mul nuw nsw i64 %33, 1152, !dbg !501
  %68 = add nuw nsw i64 %66, %67, !dbg !501
  %69 = mul nuw nsw i64 %36, 384, !dbg !501
  %70 = add nuw nsw i64 %68, %69, !dbg !501
  %71 = mul nuw nsw i64 %44, 128, !dbg !501
  %72 = add nuw nsw i64 %70, %71, !dbg !501
  %73 = add nuw nsw i64 %72, %58, !dbg !501
  %74 = getelementptr inbounds nuw i8, ptr %12, i64 %73, !dbg !501
  store i8 %64, ptr %74, align 1, !dbg !501
  %75 = add i64 %55, 1, !dbg !501
  br label %54, !dbg !501

76:                                               ; preds = %54
  %77 = add i64 %50, 8, !dbg !501
  br label %49, !dbg !501

78:                                               ; preds = %49
  %79 = add i64 %44, 1, !dbg !501
  br label %43, !dbg !501

80:                                               ; preds = %43
  %81 = add i64 %36, 1, !dbg !501
  br label %35, !dbg !501

82:                                               ; preds = %35
  %83 = add i64 %33, 1, !dbg !501
  br label %32, !dbg !501

84:                                               ; preds = %32
  %85 = add i64 %30, 1, !dbg !501
  br label %29, !dbg !501

86:                                               ; preds = %29
  ret i32 0, !dbg !501
}

define internal i32 @"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !502 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !503
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !503
  %6 = load ptr, ptr %5, align 8, !dbg !503
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !503
  %8 = load ptr, ptr %7, align 8, !dbg !503
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !503
  %10 = load ptr, ptr %9, align 8, !dbg !503
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !503
  %12 = load ptr, ptr %11, align 8, !dbg !503
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !503
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !503
  %15 = zext i32 %14 to i64, !dbg !503
  %16 = sdiv i64 %15, 8, !dbg !503
  %17 = mul i64 %16, 8, !dbg !503
  %18 = icmp ne i64 %15, %17, !dbg !503
  %19 = icmp slt i64 %15, 0, !dbg !503
  %20 = and i1 %18, %19, !dbg !503
  %21 = add i64 %16, -1, !dbg !503
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !503
  %23 = srem i64 %15, 8, !dbg !503
  %24 = icmp slt i64 %23, 0, !dbg !503
  %25 = add nsw i64 %23, 8, !dbg !503
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !503
  %27 = mul nsw i64 %22, 16, !dbg !503
  %28 = mul nsw i64 %26, 16, !dbg !503
  %29 = mul nsw i64 %27, 1152, !dbg !503
  %30 = add i64 %29, 602112, !dbg !503
  %31 = ptrtoint ptr %6 to i64, !dbg !503
  %32 = add i64 %31, %30, !dbg !503
  %33 = add i64 %28, 130944, !dbg !503
  %34 = ptrtoint ptr %8 to i64, !dbg !503
  %35 = add i64 %34, %33, !dbg !503
  %36 = mul nsw i64 %27, 128, !dbg !503
  %37 = add i64 %36, %28, !dbg !503
  %38 = add i64 %37, 1505280, !dbg !503
  %39 = ptrtoint ptr %12 to i64, !dbg !503
  %40 = add i64 %39, %38, !dbg !503
  %41 = add i64 %37, 4748288, !dbg !503
  %42 = ptrtoint ptr %10 to i64, !dbg !503
  %43 = mul i64 %41, 4, !dbg !503
  %44 = add i64 %42, %43, !dbg !503
  %45 = and i64 %32, 9223372036854775807, !dbg !503
  %46 = and i64 %35, 9223372036854775807, !dbg !503
  %47 = and i64 %40, 9223372036854775807, !dbg !503
  %48 = and i64 %44, 9223372036854775807, !dbg !503
  call void asm sideeffect "fence", ""(), !dbg !503
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !503
  call void @llvm.riscv.config(i64 6, i64 4254254918749126784), !dbg !503
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !503
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !503
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !503
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !503
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %45, i64 %46), !dbg !503
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %48, i64 %47), !dbg !503
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !503
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !503
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !503
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !503
  call void asm sideeffect "fence", ""(), !dbg !503
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !503
  ret i32 0, !dbg !503
}

define internal i32 @"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !504 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !505
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !505
  %6 = load ptr, ptr %5, align 8, !dbg !505
  %7 = getelementptr i32, ptr %6, i64 69600, !dbg !505
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !505
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !505
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !505
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !505
  %11 = load ptr, ptr %10, align 8, !dbg !505
  %12 = getelementptr i32, ptr %11, i64 852992, !dbg !505
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !505
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !505
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !505
  %15 = zext i32 %14 to i64, !dbg !505
  %16 = sdiv i64 %15, 8, !dbg !505
  %17 = mul i64 %16, 8, !dbg !505
  %18 = icmp ne i64 %15, %17, !dbg !505
  %19 = icmp slt i64 %15, 0, !dbg !505
  %20 = and i1 %18, %19, !dbg !505
  %21 = add i64 %16, -1, !dbg !505
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !505
  %23 = srem i64 %15, 8, !dbg !505
  %24 = icmp slt i64 %23, 0, !dbg !505
  %25 = add nsw i64 %23, 8, !dbg !505
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !505
  %27 = mul nsw i64 %22, 112, !dbg !505
  %28 = mul nsw i64 %26, 64, !dbg !505
  br label %29, !dbg !505

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !505
  %31 = icmp slt i64 %30, 112, !dbg !505
  br i1 %31, label %32, label %46, !dbg !505

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !505
  %34 = icmp slt i64 %33, 64, !dbg !505
  br i1 %34, label %35, label %44, !dbg !505

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !505
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !505
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !505
  %39 = add i64 %27, %30, !dbg !505
  %40 = mul i64 %39, 512, !dbg !505
  %41 = add i64 %40, %36, !dbg !505
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !505
  store <2 x i32> %38, ptr %42, align 4, !dbg !505
  %43 = add i64 %33, 2, !dbg !505
  br label %32, !dbg !505

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !505
  br label %29, !dbg !505

46:                                               ; preds = %29
  ret i32 0, !dbg !505
}

define internal i32 @"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !506 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !507
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !507
  %6 = load ptr, ptr %5, align 8, !dbg !507
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !507
  %8 = load ptr, ptr %7, align 8, !dbg !507
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !507
  %10 = load ptr, ptr %9, align 8, !dbg !507
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !507
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !507
  %13 = zext i32 %12 to i64, !dbg !507
  %14 = sdiv i64 %13, 32, !dbg !507
  %15 = mul i64 %14, 32, !dbg !507
  %16 = icmp ne i64 %13, %15, !dbg !507
  %17 = icmp slt i64 %13, 0, !dbg !507
  %18 = and i1 %16, %17, !dbg !507
  %19 = add i64 %14, -1, !dbg !507
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !507
  %21 = srem i64 %13, 32, !dbg !507
  %22 = icmp slt i64 %21, 0, !dbg !507
  %23 = add nsw i64 %21, 32, !dbg !507
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !507
  %25 = mul nsw i64 %20, 16, !dbg !507
  %26 = mul nsw i64 %24, 16, !dbg !507
  %27 = mul nsw i64 %25, 128, !dbg !507
  %28 = add i64 %27, 1505280, !dbg !507
  %29 = ptrtoint ptr %6 to i64, !dbg !507
  %30 = add i64 %29, %28, !dbg !507
  %31 = add i64 %26, 266240, !dbg !507
  %32 = ptrtoint ptr %8 to i64, !dbg !507
  %33 = add i64 %32, %31, !dbg !507
  %34 = mul nsw i64 %25, 512, !dbg !507
  %35 = add i64 %34, %26, !dbg !507
  %36 = ptrtoint ptr %10 to i64, !dbg !507
  %37 = add i64 %36, %35, !dbg !507
  %38 = add i64 %35, 852992, !dbg !507
  %39 = mul i64 %38, 4, !dbg !507
  %40 = add i64 %29, %39, !dbg !507
  %41 = and i64 %30, 9223372036854775807, !dbg !507
  %42 = and i64 %33, 9223372036854775807, !dbg !507
  %43 = and i64 %37, 9223372036854775807, !dbg !507
  %44 = and i64 %40, 9223372036854775807, !dbg !507
  call void asm sideeffect "fence", ""(), !dbg !507
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !507
  call void @llvm.riscv.config(i64 2, i64 4339748824051352064), !dbg !507
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !507
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !507
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !507
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !507
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !507
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !507
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !507
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !507
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !507
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !507
  call void asm sideeffect "fence", ""(), !dbg !507
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !507
  ret i32 0, !dbg !507
}

define internal i32 @"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !508 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !509
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !509
  %6 = load ptr, ptr %5, align 8, !dbg !509
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !509
  %8 = load ptr, ptr %7, align 8, !dbg !509
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !510
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !509
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !509
  %11 = getelementptr ptr, ptr %10, i32 2, !dbg !509
  %12 = load ptr, ptr %11, align 8, !dbg !509
  %13 = getelementptr i8, ptr %12, i64 602112, !dbg !509
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !509
  %14 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !509
  %15 = extractvalue %iree_hal_executable_workgroup_state_v0_t %14, 0, !dbg !509
  %16 = zext i32 %15 to i64, !dbg !509
  %17 = sdiv i64 %16, 32, !dbg !509
  %18 = mul i64 %17, 32, !dbg !509
  %19 = icmp ne i64 %16, %18, !dbg !509
  %20 = icmp slt i64 %16, 0, !dbg !509
  %21 = and i1 %19, %20, !dbg !509
  %22 = add i64 %17, -1, !dbg !509
  %23 = select i1 %21, i64 %22, i64 %17, !dbg !509
  %24 = srem i64 %16, 32, !dbg !509
  %25 = icmp slt i64 %24, 0, !dbg !509
  %26 = add nsw i64 %24, 32, !dbg !509
  %27 = select i1 %25, i64 %26, i64 %24, !dbg !509
  %28 = mul nsw i64 %23, 16, !dbg !509
  %29 = mul nsw i64 %27, 16, !dbg !509
  %30 = alloca i8, i64 256, align 1, !dbg !509
  %31 = mul nsw i64 %28, 256, !dbg !509
  %32 = add i64 %31, 401408, !dbg !509
  %33 = ptrtoint ptr %6 to i64, !dbg !509
  %34 = add i64 %33, %32, !dbg !509
  %35 = add i64 %29, 135168, !dbg !509
  %36 = ptrtoint ptr %8 to i64, !dbg !509
  %37 = add i64 %36, %35, !dbg !509
  %38 = ptrtoint ptr %30 to i64, !dbg !509
  %39 = mul nsw i64 %28, 512, !dbg !509
  %40 = add i64 %39, %29, !dbg !509
  %41 = add i64 %40, 451584, !dbg !509
  %42 = mul i64 %41, 4, !dbg !509
  %43 = add i64 %33, %42, !dbg !509
  %44 = and i64 %34, 9223372036854775807, !dbg !509
  %45 = and i64 %37, 9223372036854775807, !dbg !509
  %46 = and i64 %38, 9223372036854775807, !dbg !509
  %47 = and i64 %43, 9223372036854775807, !dbg !509
  call void asm sideeffect "fence", ""(), !dbg !509
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !509
  call void @llvm.riscv.config(i64 2, i64 4360734781583917072), !dbg !509
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !509
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !509
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !509
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !509
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !509
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !509
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 512), !dbg !509
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !509
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !509
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !509
  call void asm sideeffect "fence", ""(), !dbg !509
  br label %48, !dbg !511

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !511
  %50 = icmp slt i64 %49, 16, !dbg !511
  br i1 %50, label %51, label %166, !dbg !511

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !511
  %53 = icmp slt i64 %52, 16, !dbg !511
  br i1 %53, label %54, label %164, !dbg !511

54:                                               ; preds = %51
  %55 = add i64 %28, %49, !dbg !511
  %56 = add i64 %29, %52, !dbg !511
  %57 = mul nuw nsw i64 %55, 512, !dbg !511
  %58 = add nuw nsw i64 %57, %56, !dbg !511
  %59 = getelementptr inbounds nuw i8, ptr %6, i64 %58, !dbg !511
  %60 = load i8, ptr %59, align 1, !dbg !511
  %61 = mul nuw nsw i64 %49, 16, !dbg !511
  %62 = add nuw nsw i64 %61, %52, !dbg !511
  %63 = getelementptr inbounds nuw i8, ptr %30, i64 %62, !dbg !511
  %64 = load i8, ptr %63, align 1, !dbg !511
  %65 = sitofp i8 %64 to float, !dbg !512
  %66 = fmul contract float %65, 0x3FC3A62100000000, !dbg !512
  %67 = sitofp i8 %60 to float, !dbg !513
  %68 = fmul contract float %67, 0x3FC0057A80000000, !dbg !513
  %69 = fadd contract float %68, %66, !dbg !514
  %70 = fdiv float %69, 0x3FC51838A0000000, !dbg !515
  %71 = bitcast float %70 to i32, !dbg !515
  %72 = call float @llvm.round.f32(float %70), !dbg !515
  %73 = bitcast float %72 to i32, !dbg !515
  %74 = lshr i32 %71, 23, !dbg !515
  %75 = and i32 %74, 255, !dbg !515
  %76 = sub i32 %75, 127, !dbg !515
  %77 = lshr i32 %73, 23, !dbg !515
  %78 = and i32 %77, 255, !dbg !515
  %79 = sub i32 %78, 127, !dbg !515
  %80 = icmp eq i32 %79, 0, !dbg !515
  %81 = sub i32 %78, 128, !dbg !515
  %82 = icmp sgt i32 %81, 0, !dbg !515
  %83 = select i1 %82, i32 %81, i32 0, !dbg !515
  %84 = icmp slt i32 %83, 31, !dbg !515
  %85 = select i1 %84, i32 %83, i32 31, !dbg !515
  %86 = lshr i32 8388607, %85, !dbg !515
  %87 = and i32 %73, %86, !dbg !515
  %88 = icmp ne i32 %87, 0, !dbg !515
  %89 = or i1 %88, %80, !dbg !515
  %90 = icmp eq i32 %76, -1, !dbg !515
  %91 = icmp sgt i32 %76, 0, !dbg !515
  %92 = select i1 %91, i32 %76, i32 0, !dbg !515
  %93 = icmp slt i32 %92, 31, !dbg !515
  %94 = select i1 %93, i32 %92, i32 31, !dbg !515
  %95 = lshr i32 4194304, %94, !dbg !515
  %96 = select i1 %90, i32 0, i32 %95, !dbg !515
  %97 = lshr i32 8388607, %94, !dbg !515
  %98 = and i32 %71, %97, !dbg !515
  %99 = icmp eq i32 %98, %96, !dbg !515
  %100 = icmp sge i32 %76, -1, !dbg !515
  %101 = icmp slt i32 %76, 23, !dbg !515
  %102 = and i1 %99, %101, !dbg !515
  %103 = and i1 %102, %100, !dbg !515
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !515
  %105 = fsub contract float %72, %104, !dbg !515
  %106 = and i1 %89, %103, !dbg !515
  %107 = select i1 %106, float %105, float %72, !dbg !515
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !515
  %109 = fadd contract float %108, 0.000000e+00, !dbg !515
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !515
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !515
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !515
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !515
  %114 = fptosi float %113 to i8, !dbg !515
  %115 = icmp sgt i8 %114, 0, !dbg !516
  %116 = select i1 %115, i8 %114, i8 0, !dbg !516
  %117 = sitofp i8 %116 to float, !dbg !516
  %118 = bitcast float %117 to i32, !dbg !511
  %119 = call float @llvm.round.f32(float %117), !dbg !511
  %120 = bitcast float %119 to i32, !dbg !511
  %121 = lshr i32 %118, 23, !dbg !511
  %122 = and i32 %121, 255, !dbg !511
  %123 = sub i32 %122, 127, !dbg !511
  %124 = lshr i32 %120, 23, !dbg !511
  %125 = and i32 %124, 255, !dbg !511
  %126 = sub i32 %125, 127, !dbg !511
  %127 = icmp eq i32 %126, 0, !dbg !511
  %128 = sub i32 %125, 128, !dbg !511
  %129 = icmp sgt i32 %128, 0, !dbg !511
  %130 = select i1 %129, i32 %128, i32 0, !dbg !511
  %131 = icmp slt i32 %130, 31, !dbg !511
  %132 = select i1 %131, i32 %130, i32 31, !dbg !511
  %133 = lshr i32 8388607, %132, !dbg !511
  %134 = and i32 %120, %133, !dbg !511
  %135 = icmp ne i32 %134, 0, !dbg !511
  %136 = or i1 %135, %127, !dbg !511
  %137 = icmp eq i32 %123, -1, !dbg !511
  %138 = icmp sgt i32 %123, 0, !dbg !511
  %139 = select i1 %138, i32 %123, i32 0, !dbg !511
  %140 = icmp slt i32 %139, 31, !dbg !511
  %141 = select i1 %140, i32 %139, i32 31, !dbg !511
  %142 = lshr i32 4194304, %141, !dbg !511
  %143 = select i1 %137, i32 0, i32 %142, !dbg !511
  %144 = lshr i32 8388607, %141, !dbg !511
  %145 = and i32 %118, %144, !dbg !511
  %146 = icmp eq i32 %145, %143, !dbg !511
  %147 = icmp sge i32 %123, -1, !dbg !511
  %148 = icmp slt i32 %123, 23, !dbg !511
  %149 = and i1 %146, %148, !dbg !511
  %150 = and i1 %149, %147, !dbg !511
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !511
  %152 = fsub contract float %119, %151, !dbg !511
  %153 = and i1 %136, %150, !dbg !511
  %154 = select i1 %153, float %152, float %119, !dbg !511
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !511
  %156 = fadd contract float %155, 0.000000e+00, !dbg !511
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !511
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !511
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !511
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !511
  %161 = fptosi float %160 to i8, !dbg !511
  %162 = getelementptr inbounds nuw i8, ptr %13, i64 %58, !dbg !511
  store i8 %161, ptr %162, align 1, !dbg !511
  %163 = add i64 %52, 1, !dbg !511
  br label %51, !dbg !511

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !511
  br label %48, !dbg !511

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !509
  ret i32 0, !dbg !509
}

define internal i32 @"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !517 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !518
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !518
  %6 = load ptr, ptr %5, align 8, !dbg !518
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !518
  %8 = load ptr, ptr %7, align 8, !dbg !518
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !518
  %10 = load ptr, ptr %9, align 8, !dbg !518
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !518
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !518
  %13 = zext i32 %12 to i64, !dbg !518
  %14 = sdiv i64 %13, 8, !dbg !518
  %15 = mul i64 %14, 8, !dbg !518
  %16 = icmp ne i64 %13, %15, !dbg !518
  %17 = icmp slt i64 %13, 0, !dbg !518
  %18 = and i1 %16, %17, !dbg !518
  %19 = add i64 %14, -1, !dbg !518
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !518
  %21 = srem i64 %13, 8, !dbg !518
  %22 = icmp slt i64 %21, 0, !dbg !518
  %23 = add nsw i64 %21, 8, !dbg !518
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !518
  %25 = mul nsw i64 %20, 16, !dbg !518
  %26 = mul nsw i64 %24, 16, !dbg !518
  %27 = mul nsw i64 %25, 512, !dbg !518
  %28 = add i64 %27, 602112, !dbg !518
  %29 = ptrtoint ptr %6 to i64, !dbg !518
  %30 = add i64 %29, %28, !dbg !518
  %31 = add i64 %26, 331776, !dbg !518
  %32 = ptrtoint ptr %8 to i64, !dbg !518
  %33 = add i64 %32, %31, !dbg !518
  %34 = mul nsw i64 %25, 128, !dbg !518
  %35 = add i64 %34, %26, !dbg !518
  %36 = ptrtoint ptr %10 to i64, !dbg !518
  %37 = add i64 %36, %35, !dbg !518
  %38 = add i64 %35, 4848640, !dbg !518
  %39 = mul i64 %38, 4, !dbg !518
  %40 = add i64 %32, %39, !dbg !518
  %41 = and i64 %30, 9223372036854775807, !dbg !518
  %42 = and i64 %33, 9223372036854775807, !dbg !518
  %43 = and i64 %37, 9223372036854775807, !dbg !518
  %44 = and i64 %40, 9223372036854775807, !dbg !518
  call void asm sideeffect "fence", ""(), !dbg !518
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !518
  call void @llvm.riscv.config(i64 6, i64 4355096271208317056), !dbg !518
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !518
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !518
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !518
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !518
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !518
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !518
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 128), !dbg !518
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !518
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !518
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !518
  call void asm sideeffect "fence", ""(), !dbg !518
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !518
  ret i32 0, !dbg !518
}

define internal i32 @"main_graph$async_dispatch_37_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !519 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !520
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !520
  %6 = load i32, ptr %5, align 4, !dbg !520
  %7 = zext i32 %6 to i64, !dbg !520
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !521
  %9 = load ptr, ptr %8, align 8, !dbg !521
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !521
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !520
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !520
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !520
  %13 = load ptr, ptr %12, align 8, !dbg !520
  %14 = mul i64 %7, 8, !dbg !520
  %15 = udiv i64 %14, 8, !dbg !520
  %16 = getelementptr i8, ptr %13, i64 %15, !dbg !520
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !520
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !520
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !520
  %19 = zext i32 %18 to i64, !dbg !520
  %20 = sdiv i64 %19, 2, !dbg !520
  %21 = mul i64 %20, 2, !dbg !520
  %22 = icmp ne i64 %19, %21, !dbg !520
  %23 = icmp slt i64 %19, 0, !dbg !520
  %24 = and i1 %22, %23, !dbg !520
  %25 = add i64 %20, -1, !dbg !520
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !520
  %27 = srem i64 %19, 2, !dbg !520
  %28 = icmp slt i64 %27, 0, !dbg !520
  %29 = add nsw i64 %27, 2, !dbg !520
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !520
  %31 = mul nsw i64 %26, 4, !dbg !520
  %32 = mul nsw i64 %30, 64, !dbg !520
  br label %33, !dbg !520

33:                                               ; preds = %61, %3
  %34 = phi i64 [ %62, %61 ], [ 0, %3 ], !dbg !520
  %35 = icmp slt i64 %34, 4, !dbg !520
  br i1 %35, label %36, label %63, !dbg !520

36:                                               ; preds = %59, %33
  %37 = phi i64 [ %60, %59 ], [ 0, %33 ], !dbg !520
  %38 = icmp slt i64 %37, 28, !dbg !520
  br i1 %38, label %39, label %61, !dbg !520

39:                                               ; preds = %42, %36
  %40 = phi i64 [ %58, %42 ], [ 0, %36 ], !dbg !520
  %41 = icmp slt i64 %40, 64, !dbg !520
  br i1 %41, label %42, label %59, !dbg !520

42:                                               ; preds = %39
  %43 = add i64 %31, %34, !dbg !520
  %44 = add i64 %32, %40, !dbg !520
  %45 = mul i64 %43, 3584, !dbg !520
  %46 = mul i64 %37, 128, !dbg !520
  %47 = add i64 %45, %46, !dbg !520
  %48 = add i64 %47, %44, !dbg !520
  %49 = getelementptr i8, ptr %9, i64 %48, !dbg !520
  %50 = load <2 x i8>, ptr %49, align 1, !dbg !520
  %51 = add i64 %43, 1, !dbg !520
  %52 = add i64 %37, 1, !dbg !520
  %53 = mul i64 %51, 3840, !dbg !520
  %54 = mul i64 %52, 128, !dbg !520
  %55 = add i64 %53, %54, !dbg !520
  %56 = add i64 %55, %44, !dbg !520
  %57 = getelementptr i8, ptr %16, i64 %56, !dbg !520
  store <2 x i8> %50, ptr %57, align 1, !dbg !520
  %58 = add i64 %40, 2, !dbg !520
  br label %39, !dbg !520

59:                                               ; preds = %39
  %60 = add i64 %37, 1, !dbg !520
  br label %36, !dbg !520

61:                                               ; preds = %36
  %62 = add i64 %34, 1, !dbg !520
  br label %33, !dbg !520

63:                                               ; preds = %33
  ret i32 0, !dbg !520
}

define internal i32 @"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !522 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !523
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !523
  %6 = load ptr, ptr %5, align 8, !dbg !523
  %7 = getelementptr i8, ptr %6, i64 100352, !dbg !523
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !523
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !523
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !523
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !523
  %11 = load ptr, ptr %10, align 8, !dbg !523
  %12 = getelementptr i8, ptr %11, i64 1003520, !dbg !523
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !523
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !523
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !523
  %15 = zext i32 %14 to i64, !dbg !523
  %16 = sdiv i64 %15, 4, !dbg !523
  %17 = mul i64 %16, 4, !dbg !523
  %18 = icmp ne i64 %15, %17, !dbg !523
  %19 = icmp slt i64 %15, 0, !dbg !523
  %20 = and i1 %18, %19, !dbg !523
  %21 = add i64 %16, -1, !dbg !523
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !523
  %23 = srem i64 %15, 4, !dbg !523
  %24 = icmp slt i64 %23, 0, !dbg !523
  %25 = add nsw i64 %23, 4, !dbg !523
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !523
  %27 = mul nsw i64 %22, 4, !dbg !523
  %28 = mul nsw i64 %26, 32, !dbg !523
  br label %29, !dbg !523

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !523
  %31 = icmp slt i64 %30, 4, !dbg !523
  br i1 %31, label %32, label %83, !dbg !523

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !523
  %34 = icmp slt i64 %33, 28, !dbg !523
  br i1 %34, label %35, label %81, !dbg !523

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !523
  %37 = icmp slt i64 %36, 3, !dbg !523
  br i1 %37, label %38, label %79, !dbg !523

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !523
  %40 = add i64 %39, %27, !dbg !523
  br label %41, !dbg !523

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !523
  %43 = icmp slt i64 %42, 3, !dbg !523
  br i1 %43, label %44, label %77, !dbg !523

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !523
  br label %46, !dbg !523

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !523
  %48 = icmp slt i64 %47, 32, !dbg !523
  br i1 %48, label %49, label %75, !dbg !523

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !523
  br label %51, !dbg !523

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !523
  %53 = icmp slt i64 %52, 8, !dbg !523
  br i1 %53, label %54, label %73, !dbg !523

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !523
  %56 = mul nuw nsw i64 %40, 3840, !dbg !523
  %57 = mul nuw nsw i64 %45, 128, !dbg !523
  %58 = add nuw nsw i64 %56, %57, !dbg !523
  %59 = add nuw nsw i64 %58, %55, !dbg !523
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !523
  %61 = load i8, ptr %60, align 1, !dbg !523
  %62 = add i64 %27, %30, !dbg !523
  %63 = mul nuw nsw i64 %62, 32256, !dbg !523
  %64 = mul nuw nsw i64 %33, 1152, !dbg !523
  %65 = add nuw nsw i64 %63, %64, !dbg !523
  %66 = mul nuw nsw i64 %36, 384, !dbg !523
  %67 = add nuw nsw i64 %65, %66, !dbg !523
  %68 = mul nuw nsw i64 %42, 128, !dbg !523
  %69 = add nuw nsw i64 %67, %68, !dbg !523
  %70 = add nuw nsw i64 %69, %55, !dbg !523
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !523
  store i8 %61, ptr %71, align 1, !dbg !523
  %72 = add i64 %52, 1, !dbg !523
  br label %51, !dbg !523

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !523
  br label %46, !dbg !523

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !523
  br label %41, !dbg !523

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !523
  br label %35, !dbg !523

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !523
  br label %32, !dbg !523

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !523
  br label %29, !dbg !523

83:                                               ; preds = %29
  ret i32 0, !dbg !523
}

define internal i32 @"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !524 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !525
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !525
  %6 = load ptr, ptr %5, align 8, !dbg !525
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !525
  %8 = load ptr, ptr %7, align 8, !dbg !525
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !525
  %10 = load ptr, ptr %9, align 8, !dbg !525
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !525
  %12 = load ptr, ptr %11, align 8, !dbg !525
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !525
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !525
  %15 = zext i32 %14 to i64, !dbg !525
  %16 = sdiv i64 %15, 8, !dbg !525
  %17 = mul i64 %16, 8, !dbg !525
  %18 = icmp ne i64 %15, %17, !dbg !525
  %19 = icmp slt i64 %15, 0, !dbg !525
  %20 = and i1 %18, %19, !dbg !525
  %21 = add i64 %16, -1, !dbg !525
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !525
  %23 = srem i64 %15, 8, !dbg !525
  %24 = icmp slt i64 %23, 0, !dbg !525
  %25 = add nsw i64 %23, 8, !dbg !525
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !525
  %27 = mul nsw i64 %22, 16, !dbg !525
  %28 = mul nsw i64 %26, 16, !dbg !525
  %29 = mul nsw i64 %27, 1152, !dbg !525
  %30 = add i64 %29, 1003520, !dbg !525
  %31 = ptrtoint ptr %6 to i64, !dbg !525
  %32 = add i64 %31, %30, !dbg !525
  %33 = add i64 %28, 280448, !dbg !525
  %34 = ptrtoint ptr %8 to i64, !dbg !525
  %35 = add i64 %34, %33, !dbg !525
  %36 = mul nsw i64 %27, 128, !dbg !525
  %37 = add i64 %36, %28, !dbg !525
  %38 = ptrtoint ptr %12 to i64, !dbg !525
  %39 = add i64 %38, %37, !dbg !525
  %40 = add i64 %37, 4948992, !dbg !525
  %41 = ptrtoint ptr %10 to i64, !dbg !525
  %42 = mul i64 %40, 4, !dbg !525
  %43 = add i64 %41, %42, !dbg !525
  %44 = and i64 %32, 9223372036854775807, !dbg !525
  %45 = and i64 %35, 9223372036854775807, !dbg !525
  %46 = and i64 %39, 9223372036854775807, !dbg !525
  %47 = and i64 %43, 9223372036854775807, !dbg !525
  call void asm sideeffect "fence", ""(), !dbg !525
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !525
  call void @llvm.riscv.config(i64 6, i64 4300939233276723328), !dbg !525
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !525
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !525
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !525
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !525
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !525
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !525
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !525
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !525
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !525
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !525
  call void asm sideeffect "fence", ""(), !dbg !525
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !525
  ret i32 0, !dbg !525
}

define internal i32 @"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !526 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !527
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !527
  %6 = load ptr, ptr %5, align 8, !dbg !527
  %7 = getelementptr i32, ptr %6, i64 106976, !dbg !527
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !527
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !527
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !527
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !527
  %11 = load ptr, ptr %10, align 8, !dbg !527
  %12 = getelementptr i32, ptr %11, i64 476672, !dbg !527
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !527
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !527
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !527
  %15 = zext i32 %14 to i64, !dbg !527
  %16 = sdiv i64 %15, 8, !dbg !527
  %17 = mul i64 %16, 8, !dbg !527
  %18 = icmp ne i64 %15, %17, !dbg !527
  %19 = icmp slt i64 %15, 0, !dbg !527
  %20 = and i1 %18, %19, !dbg !527
  %21 = add i64 %16, -1, !dbg !527
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !527
  %23 = srem i64 %15, 8, !dbg !527
  %24 = icmp slt i64 %23, 0, !dbg !527
  %25 = add nsw i64 %23, 8, !dbg !527
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !527
  %27 = mul nsw i64 %22, 112, !dbg !527
  %28 = mul nsw i64 %26, 64, !dbg !527
  br label %29, !dbg !527

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !527
  %31 = icmp slt i64 %30, 112, !dbg !527
  br i1 %31, label %32, label %46, !dbg !527

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !527
  %34 = icmp slt i64 %33, 64, !dbg !527
  br i1 %34, label %35, label %44, !dbg !527

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !527
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !527
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !527
  %39 = add i64 %27, %30, !dbg !527
  %40 = mul i64 %39, 512, !dbg !527
  %41 = add i64 %40, %36, !dbg !527
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !527
  store <2 x i32> %38, ptr %42, align 4, !dbg !527
  %43 = add i64 %33, 2, !dbg !527
  br label %32, !dbg !527

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !527
  br label %29, !dbg !527

46:                                               ; preds = %29
  ret i32 0, !dbg !527
}

define internal i32 @"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !528 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !529
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !529
  %6 = load ptr, ptr %5, align 8, !dbg !529
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !529
  %8 = load ptr, ptr %7, align 8, !dbg !529
  %9 = getelementptr i8, ptr %6, i64 602112, !dbg !530
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !530
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !529
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !529
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !529
  %13 = load ptr, ptr %12, align 8, !dbg !529
  %14 = getelementptr i8, ptr %13, i64 100352, !dbg !529
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !529
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !529
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !529
  %17 = zext i32 %16 to i64, !dbg !529
  %18 = sdiv i64 %17, 32, !dbg !529
  %19 = mul i64 %18, 32, !dbg !529
  %20 = icmp ne i64 %17, %19, !dbg !529
  %21 = icmp slt i64 %17, 0, !dbg !529
  %22 = and i1 %20, %21, !dbg !529
  %23 = add i64 %18, -1, !dbg !529
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !529
  %25 = srem i64 %17, 32, !dbg !529
  %26 = icmp slt i64 %25, 0, !dbg !529
  %27 = add nsw i64 %25, 32, !dbg !529
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !529
  %29 = mul nsw i64 %24, 16, !dbg !529
  %30 = mul nsw i64 %28, 16, !dbg !529
  %31 = alloca i8, i64 256, align 1, !dbg !529
  %32 = mul nsw i64 %29, 128, !dbg !529
  %33 = ptrtoint ptr %6 to i64, !dbg !529
  %34 = add i64 %33, %32, !dbg !529
  %35 = add i64 %30, 397312, !dbg !529
  %36 = ptrtoint ptr %8 to i64, !dbg !529
  %37 = add i64 %36, %35, !dbg !529
  %38 = ptrtoint ptr %31 to i64, !dbg !529
  %39 = mul nsw i64 %29, 512, !dbg !529
  %40 = add i64 %39, %30, !dbg !529
  %41 = add i64 %40, 476672, !dbg !529
  %42 = mul i64 %41, 4, !dbg !529
  %43 = add i64 %33, %42, !dbg !529
  %44 = and i64 %34, 9223372036854775807, !dbg !529
  %45 = and i64 %37, 9223372036854775807, !dbg !529
  %46 = and i64 %38, 9223372036854775807, !dbg !529
  %47 = and i64 %43, 9223372036854775807, !dbg !529
  call void asm sideeffect "fence", ""(), !dbg !529
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !529
  call void @llvm.riscv.config(i64 2, i64 4332268051878641680), !dbg !529
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !529
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !529
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !529
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !529
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !529
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !529
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !529
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !529
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !529
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !529
  call void asm sideeffect "fence", ""(), !dbg !529
  br label %48, !dbg !531

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !531
  %50 = icmp slt i64 %49, 16, !dbg !531
  br i1 %50, label %51, label %166, !dbg !531

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !531
  %53 = icmp slt i64 %52, 16, !dbg !531
  br i1 %53, label %54, label %164, !dbg !531

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !531
  %56 = add nuw nsw i64 %55, %52, !dbg !531
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !531
  %58 = load i8, ptr %57, align 1, !dbg !531
  %59 = add i64 %29, %49, !dbg !531
  %60 = add i64 %30, %52, !dbg !531
  %61 = mul nuw nsw i64 %59, 512, !dbg !531
  %62 = add nuw nsw i64 %61, %60, !dbg !531
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !531
  %64 = load i8, ptr %63, align 1, !dbg !531
  %65 = sitofp i8 %64 to float, !dbg !532
  %66 = fmul contract float %65, 0x3FC51838A0000000, !dbg !532
  %67 = sitofp i8 %58 to float, !dbg !533
  %68 = fmul contract float %67, 0x3FBDF7D760000000, !dbg !533
  %69 = fadd contract float %68, %66, !dbg !534
  %70 = fdiv float %69, 0x3FC25528C0000000, !dbg !535
  %71 = bitcast float %70 to i32, !dbg !535
  %72 = call float @llvm.round.f32(float %70), !dbg !535
  %73 = bitcast float %72 to i32, !dbg !535
  %74 = lshr i32 %71, 23, !dbg !535
  %75 = and i32 %74, 255, !dbg !535
  %76 = sub i32 %75, 127, !dbg !535
  %77 = lshr i32 %73, 23, !dbg !535
  %78 = and i32 %77, 255, !dbg !535
  %79 = sub i32 %78, 127, !dbg !535
  %80 = icmp eq i32 %79, 0, !dbg !535
  %81 = sub i32 %78, 128, !dbg !535
  %82 = icmp sgt i32 %81, 0, !dbg !535
  %83 = select i1 %82, i32 %81, i32 0, !dbg !535
  %84 = icmp slt i32 %83, 31, !dbg !535
  %85 = select i1 %84, i32 %83, i32 31, !dbg !535
  %86 = lshr i32 8388607, %85, !dbg !535
  %87 = and i32 %73, %86, !dbg !535
  %88 = icmp ne i32 %87, 0, !dbg !535
  %89 = or i1 %88, %80, !dbg !535
  %90 = icmp eq i32 %76, -1, !dbg !535
  %91 = icmp sgt i32 %76, 0, !dbg !535
  %92 = select i1 %91, i32 %76, i32 0, !dbg !535
  %93 = icmp slt i32 %92, 31, !dbg !535
  %94 = select i1 %93, i32 %92, i32 31, !dbg !535
  %95 = lshr i32 4194304, %94, !dbg !535
  %96 = select i1 %90, i32 0, i32 %95, !dbg !535
  %97 = lshr i32 8388607, %94, !dbg !535
  %98 = and i32 %71, %97, !dbg !535
  %99 = icmp eq i32 %98, %96, !dbg !535
  %100 = icmp sge i32 %76, -1, !dbg !535
  %101 = icmp slt i32 %76, 23, !dbg !535
  %102 = and i1 %99, %101, !dbg !535
  %103 = and i1 %102, %100, !dbg !535
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !535
  %105 = fsub contract float %72, %104, !dbg !535
  %106 = and i1 %89, %103, !dbg !535
  %107 = select i1 %106, float %105, float %72, !dbg !535
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !535
  %109 = fadd contract float %108, 0.000000e+00, !dbg !535
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !535
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !535
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !535
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !535
  %114 = fptosi float %113 to i8, !dbg !535
  %115 = icmp sgt i8 %114, 0, !dbg !536
  %116 = select i1 %115, i8 %114, i8 0, !dbg !536
  %117 = sitofp i8 %116 to float, !dbg !536
  %118 = bitcast float %117 to i32, !dbg !531
  %119 = call float @llvm.round.f32(float %117), !dbg !531
  %120 = bitcast float %119 to i32, !dbg !531
  %121 = lshr i32 %118, 23, !dbg !531
  %122 = and i32 %121, 255, !dbg !531
  %123 = sub i32 %122, 127, !dbg !531
  %124 = lshr i32 %120, 23, !dbg !531
  %125 = and i32 %124, 255, !dbg !531
  %126 = sub i32 %125, 127, !dbg !531
  %127 = icmp eq i32 %126, 0, !dbg !531
  %128 = sub i32 %125, 128, !dbg !531
  %129 = icmp sgt i32 %128, 0, !dbg !531
  %130 = select i1 %129, i32 %128, i32 0, !dbg !531
  %131 = icmp slt i32 %130, 31, !dbg !531
  %132 = select i1 %131, i32 %130, i32 31, !dbg !531
  %133 = lshr i32 8388607, %132, !dbg !531
  %134 = and i32 %120, %133, !dbg !531
  %135 = icmp ne i32 %134, 0, !dbg !531
  %136 = or i1 %135, %127, !dbg !531
  %137 = icmp eq i32 %123, -1, !dbg !531
  %138 = icmp sgt i32 %123, 0, !dbg !531
  %139 = select i1 %138, i32 %123, i32 0, !dbg !531
  %140 = icmp slt i32 %139, 31, !dbg !531
  %141 = select i1 %140, i32 %139, i32 31, !dbg !531
  %142 = lshr i32 4194304, %141, !dbg !531
  %143 = select i1 %137, i32 0, i32 %142, !dbg !531
  %144 = lshr i32 8388607, %141, !dbg !531
  %145 = and i32 %118, %144, !dbg !531
  %146 = icmp eq i32 %145, %143, !dbg !531
  %147 = icmp sge i32 %123, -1, !dbg !531
  %148 = icmp slt i32 %123, 23, !dbg !531
  %149 = and i1 %146, %148, !dbg !531
  %150 = and i1 %149, %147, !dbg !531
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !531
  %152 = fsub contract float %119, %151, !dbg !531
  %153 = and i1 %136, %150, !dbg !531
  %154 = select i1 %153, float %152, float %119, !dbg !531
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !531
  %156 = fadd contract float %155, 0.000000e+00, !dbg !531
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !531
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !531
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !531
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !531
  %161 = fptosi float %160 to i8, !dbg !531
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !531
  store i8 %161, ptr %162, align 1, !dbg !531
  %163 = add i64 %52, 1, !dbg !531
  br label %51, !dbg !531

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !531
  br label %48, !dbg !531

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !529
  ret i32 0, !dbg !529
}

define internal i32 @"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !537 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !538
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !538
  %6 = load ptr, ptr %5, align 8, !dbg !538
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !538
  %8 = load ptr, ptr %7, align 8, !dbg !538
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !538
  %10 = load ptr, ptr %9, align 8, !dbg !538
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !538
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !538
  %13 = zext i32 %12 to i64, !dbg !538
  %14 = sdiv i64 %13, 8, !dbg !538
  %15 = mul i64 %14, 8, !dbg !538
  %16 = icmp ne i64 %13, %15, !dbg !538
  %17 = icmp slt i64 %13, 0, !dbg !538
  %18 = and i1 %16, %17, !dbg !538
  %19 = add i64 %14, -1, !dbg !538
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !538
  %21 = srem i64 %13, 8, !dbg !538
  %22 = icmp slt i64 %21, 0, !dbg !538
  %23 = add nsw i64 %21, 8, !dbg !538
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !538
  %25 = mul nsw i64 %20, 16, !dbg !538
  %26 = mul nsw i64 %24, 16, !dbg !538
  %27 = mul nsw i64 %25, 512, !dbg !538
  %28 = add i64 %27, 100352, !dbg !538
  %29 = ptrtoint ptr %6 to i64, !dbg !538
  %30 = add i64 %29, %28, !dbg !538
  %31 = add i64 %26, 462848, !dbg !538
  %32 = ptrtoint ptr %8 to i64, !dbg !538
  %33 = add i64 %32, %31, !dbg !538
  %34 = mul nsw i64 %25, 128, !dbg !538
  %35 = add i64 %34, %26, !dbg !538
  %36 = ptrtoint ptr %10 to i64, !dbg !538
  %37 = add i64 %36, %35, !dbg !538
  %38 = add i64 %35, 5049344, !dbg !538
  %39 = mul i64 %38, 4, !dbg !538
  %40 = add i64 %32, %39, !dbg !538
  %41 = and i64 %30, 9223372036854775807, !dbg !538
  %42 = and i64 %33, 9223372036854775807, !dbg !538
  %43 = and i64 %37, 9223372036854775807, !dbg !538
  %44 = and i64 %40, 9223372036854775807, !dbg !538
  call void asm sideeffect "fence", ""(), !dbg !538
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !538
  call void @llvm.riscv.config(i64 6, i64 4361453647440117888), !dbg !538
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !538
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !538
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !538
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !538
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !538
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !538
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 128), !dbg !538
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !538
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !538
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !538
  call void asm sideeffect "fence", ""(), !dbg !538
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !538
  ret i32 0, !dbg !538
}

define internal i32 @"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !539 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !540
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !540
  %6 = load ptr, ptr %5, align 8, !dbg !540
  %7 = getelementptr i8, ptr %6, i64 501760, !dbg !540
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !540
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !540
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !540
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !540
  %11 = load ptr, ptr %10, align 8, !dbg !540
  %12 = getelementptr i8, ptr %11, i64 616960, !dbg !540
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !540
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !540
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !540
  %15 = zext i32 %14 to i64, !dbg !540
  %16 = sdiv i64 %15, 4, !dbg !540
  %17 = mul i64 %16, 4, !dbg !540
  %18 = icmp ne i64 %15, %17, !dbg !540
  %19 = icmp slt i64 %15, 0, !dbg !540
  %20 = and i1 %18, %19, !dbg !540
  %21 = add i64 %16, -1, !dbg !540
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !540
  %23 = srem i64 %15, 4, !dbg !540
  %24 = icmp slt i64 %23, 0, !dbg !540
  %25 = add nsw i64 %23, 4, !dbg !540
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !540
  %27 = mul nsw i64 %22, 4, !dbg !540
  %28 = mul nsw i64 %26, 32, !dbg !540
  br label %29, !dbg !540

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !540
  %31 = icmp slt i64 %30, 4, !dbg !540
  br i1 %31, label %32, label %83, !dbg !540

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !540
  %34 = icmp slt i64 %33, 28, !dbg !540
  br i1 %34, label %35, label %81, !dbg !540

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !540
  %37 = icmp slt i64 %36, 3, !dbg !540
  br i1 %37, label %38, label %79, !dbg !540

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !540
  %40 = add i64 %39, %27, !dbg !540
  br label %41, !dbg !540

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !540
  %43 = icmp slt i64 %42, 3, !dbg !540
  br i1 %43, label %44, label %77, !dbg !540

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !540
  br label %46, !dbg !540

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !540
  %48 = icmp slt i64 %47, 32, !dbg !540
  br i1 %48, label %49, label %75, !dbg !540

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !540
  br label %51, !dbg !540

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !540
  %53 = icmp slt i64 %52, 8, !dbg !540
  br i1 %53, label %54, label %73, !dbg !540

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !540
  %56 = mul nuw nsw i64 %40, 3840, !dbg !540
  %57 = mul nuw nsw i64 %45, 128, !dbg !540
  %58 = add nuw nsw i64 %56, %57, !dbg !540
  %59 = add nuw nsw i64 %58, %55, !dbg !540
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !540
  %61 = load i8, ptr %60, align 1, !dbg !540
  %62 = add i64 %27, %30, !dbg !540
  %63 = mul nuw nsw i64 %62, 32256, !dbg !540
  %64 = mul nuw nsw i64 %33, 1152, !dbg !540
  %65 = add nuw nsw i64 %63, %64, !dbg !540
  %66 = mul nuw nsw i64 %36, 384, !dbg !540
  %67 = add nuw nsw i64 %65, %66, !dbg !540
  %68 = mul nuw nsw i64 %42, 128, !dbg !540
  %69 = add nuw nsw i64 %67, %68, !dbg !540
  %70 = add nuw nsw i64 %69, %55, !dbg !540
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !540
  store i8 %61, ptr %71, align 1, !dbg !540
  %72 = add i64 %52, 1, !dbg !540
  br label %51, !dbg !540

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !540
  br label %46, !dbg !540

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !540
  br label %41, !dbg !540

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !540
  br label %35, !dbg !540

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !540
  br label %32, !dbg !540

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !540
  br label %29, !dbg !540

83:                                               ; preds = %29
  ret i32 0, !dbg !540
}

define internal i32 @"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !541 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !542
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !542
  %6 = load ptr, ptr %5, align 8, !dbg !542
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !542
  %8 = load ptr, ptr %7, align 8, !dbg !542
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !542
  %10 = load ptr, ptr %9, align 8, !dbg !542
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !542
  %12 = load ptr, ptr %11, align 8, !dbg !542
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !542
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !542
  %15 = zext i32 %14 to i64, !dbg !542
  %16 = sdiv i64 %15, 8, !dbg !542
  %17 = mul i64 %16, 8, !dbg !542
  %18 = icmp ne i64 %15, %17, !dbg !542
  %19 = icmp slt i64 %15, 0, !dbg !542
  %20 = and i1 %18, %19, !dbg !542
  %21 = add i64 %16, -1, !dbg !542
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !542
  %23 = srem i64 %15, 8, !dbg !542
  %24 = icmp slt i64 %23, 0, !dbg !542
  %25 = add nsw i64 %23, 8, !dbg !542
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !542
  %27 = mul nsw i64 %22, 16, !dbg !542
  %28 = mul nsw i64 %26, 16, !dbg !542
  %29 = mul nsw i64 %27, 1152, !dbg !542
  %30 = add i64 %29, 616960, !dbg !542
  %31 = ptrtoint ptr %6 to i64, !dbg !542
  %32 = add i64 %31, %30, !dbg !542
  %33 = add i64 %28, 429952, !dbg !542
  %34 = ptrtoint ptr %8 to i64, !dbg !542
  %35 = add i64 %34, %33, !dbg !542
  %36 = mul nsw i64 %27, 128, !dbg !542
  %37 = add i64 %36, %28, !dbg !542
  %38 = ptrtoint ptr %12 to i64, !dbg !542
  %39 = add i64 %38, %37, !dbg !542
  %40 = add i64 %37, 5149696, !dbg !542
  %41 = ptrtoint ptr %10 to i64, !dbg !542
  %42 = mul i64 %40, 4, !dbg !542
  %43 = add i64 %41, %42, !dbg !542
  %44 = and i64 %32, 9223372036854775807, !dbg !542
  %45 = and i64 %35, 9223372036854775807, !dbg !542
  %46 = and i64 %39, 9223372036854775807, !dbg !542
  %47 = and i64 %43, 9223372036854775807, !dbg !542
  call void asm sideeffect "fence", ""(), !dbg !542
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !542
  call void @llvm.riscv.config(i64 6, i64 4312540919195762816), !dbg !542
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !542
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !542
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !542
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !542
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !542
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !542
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !542
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !542
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !542
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !542
  call void asm sideeffect "fence", ""(), !dbg !542
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !542
  ret i32 0, !dbg !542
}

define internal i32 @"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !543 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !544
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !544
  %6 = load ptr, ptr %5, align 8, !dbg !544
  %7 = getelementptr i32, ptr %6, i64 144352, !dbg !544
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !544
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !544
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !544
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !544
  %11 = load ptr, ptr %10, align 8, !dbg !544
  %12 = getelementptr i32, ptr %11, i64 380032, !dbg !544
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !544
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !544
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !544
  %15 = zext i32 %14 to i64, !dbg !544
  %16 = sdiv i64 %15, 8, !dbg !544
  %17 = mul i64 %16, 8, !dbg !544
  %18 = icmp ne i64 %15, %17, !dbg !544
  %19 = icmp slt i64 %15, 0, !dbg !544
  %20 = and i1 %18, %19, !dbg !544
  %21 = add i64 %16, -1, !dbg !544
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !544
  %23 = srem i64 %15, 8, !dbg !544
  %24 = icmp slt i64 %23, 0, !dbg !544
  %25 = add nsw i64 %23, 8, !dbg !544
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !544
  %27 = mul nsw i64 %22, 112, !dbg !544
  %28 = mul nsw i64 %26, 64, !dbg !544
  br label %29, !dbg !544

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !544
  %31 = icmp slt i64 %30, 112, !dbg !544
  br i1 %31, label %32, label %46, !dbg !544

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !544
  %34 = icmp slt i64 %33, 64, !dbg !544
  br i1 %34, label %35, label %44, !dbg !544

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !544
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !544
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !544
  %39 = add i64 %27, %30, !dbg !544
  %40 = mul i64 %39, 512, !dbg !544
  %41 = add i64 %40, %36, !dbg !544
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !544
  store <2 x i32> %38, ptr %42, align 4, !dbg !544
  %43 = add i64 %33, 2, !dbg !544
  br label %32, !dbg !544

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !544
  br label %29, !dbg !544

46:                                               ; preds = %29
  ret i32 0, !dbg !544
}

define internal i32 @"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !545 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !546
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !546
  %6 = load ptr, ptr %5, align 8, !dbg !546
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !546
  %8 = load ptr, ptr %7, align 8, !dbg !546
  %9 = getelementptr i8, ptr %6, i64 100352, !dbg !547
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !547
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !546
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !546
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !546
  %13 = load ptr, ptr %12, align 8, !dbg !546
  %14 = getelementptr i8, ptr %13, i64 501760, !dbg !546
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !546
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !546
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !546
  %17 = zext i32 %16 to i64, !dbg !546
  %18 = sdiv i64 %17, 32, !dbg !546
  %19 = mul i64 %18, 32, !dbg !546
  %20 = icmp ne i64 %17, %19, !dbg !546
  %21 = icmp slt i64 %17, 0, !dbg !546
  %22 = and i1 %20, %21, !dbg !546
  %23 = add i64 %18, -1, !dbg !546
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !546
  %25 = srem i64 %17, 32, !dbg !546
  %26 = icmp slt i64 %25, 0, !dbg !546
  %27 = add nsw i64 %25, 32, !dbg !546
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !546
  %29 = mul nsw i64 %24, 16, !dbg !546
  %30 = mul nsw i64 %28, 16, !dbg !546
  %31 = alloca i8, i64 256, align 1, !dbg !546
  %32 = mul nsw i64 %29, 128, !dbg !546
  %33 = ptrtoint ptr %6 to i64, !dbg !546
  %34 = add i64 %33, %32, !dbg !546
  %35 = add i64 %30, 528384, !dbg !546
  %36 = ptrtoint ptr %8 to i64, !dbg !546
  %37 = add i64 %36, %35, !dbg !546
  %38 = ptrtoint ptr %31 to i64, !dbg !546
  %39 = mul nsw i64 %29, 512, !dbg !546
  %40 = add i64 %39, %30, !dbg !546
  %41 = add i64 %40, 380032, !dbg !546
  %42 = mul i64 %41, 4, !dbg !546
  %43 = add i64 %33, %42, !dbg !546
  %44 = and i64 %34, 9223372036854775807, !dbg !546
  %45 = and i64 %37, 9223372036854775807, !dbg !546
  %46 = and i64 %38, 9223372036854775807, !dbg !546
  %47 = and i64 %43, 9223372036854775807, !dbg !546
  call void asm sideeffect "fence", ""(), !dbg !546
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !546
  call void @llvm.riscv.config(i64 2, i64 4375419300538744848), !dbg !546
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !546
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !546
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !546
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !546
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !546
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !546
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !546
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !546
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !546
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !546
  call void asm sideeffect "fence", ""(), !dbg !546
  br label %48, !dbg !548

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !548
  %50 = icmp slt i64 %49, 16, !dbg !548
  br i1 %50, label %51, label %166, !dbg !548

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !548
  %53 = icmp slt i64 %52, 16, !dbg !548
  br i1 %53, label %54, label %164, !dbg !548

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !548
  %56 = add nuw nsw i64 %55, %52, !dbg !548
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !548
  %58 = load i8, ptr %57, align 1, !dbg !548
  %59 = add i64 %29, %49, !dbg !548
  %60 = add i64 %30, %52, !dbg !548
  %61 = mul nuw nsw i64 %59, 512, !dbg !548
  %62 = add nuw nsw i64 %61, %60, !dbg !548
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !548
  %64 = load i8, ptr %63, align 1, !dbg !548
  %65 = sitofp i8 %64 to float, !dbg !549
  %66 = fmul contract float %65, 0x3FC25528C0000000, !dbg !549
  %67 = sitofp i8 %58 to float, !dbg !550
  %68 = fmul contract float %67, 0x3FB1D9BD40000000, !dbg !550
  %69 = fadd contract float %68, %66, !dbg !551
  %70 = fdiv float %69, 0x3FC2B63480000000, !dbg !552
  %71 = bitcast float %70 to i32, !dbg !552
  %72 = call float @llvm.round.f32(float %70), !dbg !552
  %73 = bitcast float %72 to i32, !dbg !552
  %74 = lshr i32 %71, 23, !dbg !552
  %75 = and i32 %74, 255, !dbg !552
  %76 = sub i32 %75, 127, !dbg !552
  %77 = lshr i32 %73, 23, !dbg !552
  %78 = and i32 %77, 255, !dbg !552
  %79 = sub i32 %78, 127, !dbg !552
  %80 = icmp eq i32 %79, 0, !dbg !552
  %81 = sub i32 %78, 128, !dbg !552
  %82 = icmp sgt i32 %81, 0, !dbg !552
  %83 = select i1 %82, i32 %81, i32 0, !dbg !552
  %84 = icmp slt i32 %83, 31, !dbg !552
  %85 = select i1 %84, i32 %83, i32 31, !dbg !552
  %86 = lshr i32 8388607, %85, !dbg !552
  %87 = and i32 %73, %86, !dbg !552
  %88 = icmp ne i32 %87, 0, !dbg !552
  %89 = or i1 %88, %80, !dbg !552
  %90 = icmp eq i32 %76, -1, !dbg !552
  %91 = icmp sgt i32 %76, 0, !dbg !552
  %92 = select i1 %91, i32 %76, i32 0, !dbg !552
  %93 = icmp slt i32 %92, 31, !dbg !552
  %94 = select i1 %93, i32 %92, i32 31, !dbg !552
  %95 = lshr i32 4194304, %94, !dbg !552
  %96 = select i1 %90, i32 0, i32 %95, !dbg !552
  %97 = lshr i32 8388607, %94, !dbg !552
  %98 = and i32 %71, %97, !dbg !552
  %99 = icmp eq i32 %98, %96, !dbg !552
  %100 = icmp sge i32 %76, -1, !dbg !552
  %101 = icmp slt i32 %76, 23, !dbg !552
  %102 = and i1 %99, %101, !dbg !552
  %103 = and i1 %102, %100, !dbg !552
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !552
  %105 = fsub contract float %72, %104, !dbg !552
  %106 = and i1 %89, %103, !dbg !552
  %107 = select i1 %106, float %105, float %72, !dbg !552
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !552
  %109 = fadd contract float %108, 0.000000e+00, !dbg !552
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !552
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !552
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !552
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !552
  %114 = fptosi float %113 to i8, !dbg !552
  %115 = icmp sgt i8 %114, 0, !dbg !553
  %116 = select i1 %115, i8 %114, i8 0, !dbg !553
  %117 = sitofp i8 %116 to float, !dbg !553
  %118 = bitcast float %117 to i32, !dbg !548
  %119 = call float @llvm.round.f32(float %117), !dbg !548
  %120 = bitcast float %119 to i32, !dbg !548
  %121 = lshr i32 %118, 23, !dbg !548
  %122 = and i32 %121, 255, !dbg !548
  %123 = sub i32 %122, 127, !dbg !548
  %124 = lshr i32 %120, 23, !dbg !548
  %125 = and i32 %124, 255, !dbg !548
  %126 = sub i32 %125, 127, !dbg !548
  %127 = icmp eq i32 %126, 0, !dbg !548
  %128 = sub i32 %125, 128, !dbg !548
  %129 = icmp sgt i32 %128, 0, !dbg !548
  %130 = select i1 %129, i32 %128, i32 0, !dbg !548
  %131 = icmp slt i32 %130, 31, !dbg !548
  %132 = select i1 %131, i32 %130, i32 31, !dbg !548
  %133 = lshr i32 8388607, %132, !dbg !548
  %134 = and i32 %120, %133, !dbg !548
  %135 = icmp ne i32 %134, 0, !dbg !548
  %136 = or i1 %135, %127, !dbg !548
  %137 = icmp eq i32 %123, -1, !dbg !548
  %138 = icmp sgt i32 %123, 0, !dbg !548
  %139 = select i1 %138, i32 %123, i32 0, !dbg !548
  %140 = icmp slt i32 %139, 31, !dbg !548
  %141 = select i1 %140, i32 %139, i32 31, !dbg !548
  %142 = lshr i32 4194304, %141, !dbg !548
  %143 = select i1 %137, i32 0, i32 %142, !dbg !548
  %144 = lshr i32 8388607, %141, !dbg !548
  %145 = and i32 %118, %144, !dbg !548
  %146 = icmp eq i32 %145, %143, !dbg !548
  %147 = icmp sge i32 %123, -1, !dbg !548
  %148 = icmp slt i32 %123, 23, !dbg !548
  %149 = and i1 %146, %148, !dbg !548
  %150 = and i1 %149, %147, !dbg !548
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !548
  %152 = fsub contract float %119, %151, !dbg !548
  %153 = and i1 %136, %150, !dbg !548
  %154 = select i1 %153, float %152, float %119, !dbg !548
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !548
  %156 = fadd contract float %155, 0.000000e+00, !dbg !548
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !548
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !548
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !548
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !548
  %161 = fptosi float %160 to i8, !dbg !548
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !548
  store i8 %161, ptr %162, align 1, !dbg !548
  %163 = add i64 %52, 1, !dbg !548
  br label %51, !dbg !548

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !548
  br label %48, !dbg !548

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !546
  ret i32 0, !dbg !546
}

define internal i32 @"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !554 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !555
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !555
  %6 = load ptr, ptr %5, align 8, !dbg !555
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !555
  %8 = load ptr, ptr %7, align 8, !dbg !555
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !555
  %10 = load ptr, ptr %9, align 8, !dbg !555
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !555
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !555
  %13 = zext i32 %12 to i64, !dbg !555
  %14 = sdiv i64 %13, 8, !dbg !555
  %15 = mul i64 %14, 8, !dbg !555
  %16 = icmp ne i64 %13, %15, !dbg !555
  %17 = icmp slt i64 %13, 0, !dbg !555
  %18 = and i1 %16, %17, !dbg !555
  %19 = add i64 %14, -1, !dbg !555
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !555
  %21 = srem i64 %13, 8, !dbg !555
  %22 = icmp slt i64 %21, 0, !dbg !555
  %23 = add nsw i64 %21, 8, !dbg !555
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !555
  %25 = mul nsw i64 %20, 16, !dbg !555
  %26 = mul nsw i64 %24, 16, !dbg !555
  %27 = mul nsw i64 %25, 512, !dbg !555
  %28 = add i64 %27, 501760, !dbg !555
  %29 = ptrtoint ptr %6 to i64, !dbg !555
  %30 = add i64 %29, %28, !dbg !555
  %31 = add i64 %26, 593920, !dbg !555
  %32 = ptrtoint ptr %8 to i64, !dbg !555
  %33 = add i64 %32, %31, !dbg !555
  %34 = mul nsw i64 %25, 128, !dbg !555
  %35 = add i64 %34, %26, !dbg !555
  %36 = ptrtoint ptr %10 to i64, !dbg !555
  %37 = add i64 %36, %35, !dbg !555
  %38 = add i64 %35, 5250048, !dbg !555
  %39 = mul i64 %38, 4, !dbg !555
  %40 = add i64 %32, %39, !dbg !555
  %41 = and i64 %30, 9223372036854775807, !dbg !555
  %42 = and i64 %33, 9223372036854775807, !dbg !555
  %43 = and i64 %37, 9223372036854775807, !dbg !555
  %44 = and i64 %40, 9223372036854775807, !dbg !555
  call void asm sideeffect "fence", ""(), !dbg !555
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !555
  call void @llvm.riscv.config(i64 6, i64 4338570916385521792), !dbg !555
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !555
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !555
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !555
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !555
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !555
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !555
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 128), !dbg !555
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !555
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !555
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !555
  call void asm sideeffect "fence", ""(), !dbg !555
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !555
  ret i32 0, !dbg !555
}

define internal i32 @"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !556 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !557
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !557
  %6 = load ptr, ptr %5, align 8, !dbg !557
  %7 = getelementptr i8, ptr %6, i64 100352, !dbg !557
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !557
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !557
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !557
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !557
  %11 = load ptr, ptr %10, align 8, !dbg !557
  %12 = getelementptr i8, ptr %11, i64 903168, !dbg !557
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !557
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !557
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !557
  %15 = zext i32 %14 to i64, !dbg !557
  %16 = sdiv i64 %15, 4, !dbg !557
  %17 = mul i64 %16, 4, !dbg !557
  %18 = icmp ne i64 %15, %17, !dbg !557
  %19 = icmp slt i64 %15, 0, !dbg !557
  %20 = and i1 %18, %19, !dbg !557
  %21 = add i64 %16, -1, !dbg !557
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !557
  %23 = srem i64 %15, 4, !dbg !557
  %24 = icmp slt i64 %23, 0, !dbg !557
  %25 = add nsw i64 %23, 4, !dbg !557
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !557
  %27 = mul nsw i64 %22, 4, !dbg !557
  %28 = mul nsw i64 %26, 32, !dbg !557
  br label %29, !dbg !557

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !557
  %31 = icmp slt i64 %30, 4, !dbg !557
  br i1 %31, label %32, label %83, !dbg !557

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !557
  %34 = icmp slt i64 %33, 28, !dbg !557
  br i1 %34, label %35, label %81, !dbg !557

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !557
  %37 = icmp slt i64 %36, 3, !dbg !557
  br i1 %37, label %38, label %79, !dbg !557

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !557
  %40 = add i64 %39, %27, !dbg !557
  br label %41, !dbg !557

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !557
  %43 = icmp slt i64 %42, 3, !dbg !557
  br i1 %43, label %44, label %77, !dbg !557

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !557
  br label %46, !dbg !557

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !557
  %48 = icmp slt i64 %47, 32, !dbg !557
  br i1 %48, label %49, label %75, !dbg !557

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !557
  br label %51, !dbg !557

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !557
  %53 = icmp slt i64 %52, 8, !dbg !557
  br i1 %53, label %54, label %73, !dbg !557

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !557
  %56 = mul nuw nsw i64 %40, 3840, !dbg !557
  %57 = mul nuw nsw i64 %45, 128, !dbg !557
  %58 = add nuw nsw i64 %56, %57, !dbg !557
  %59 = add nuw nsw i64 %58, %55, !dbg !557
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !557
  %61 = load i8, ptr %60, align 1, !dbg !557
  %62 = add i64 %27, %30, !dbg !557
  %63 = mul nuw nsw i64 %62, 32256, !dbg !557
  %64 = mul nuw nsw i64 %33, 1152, !dbg !557
  %65 = add nuw nsw i64 %63, %64, !dbg !557
  %66 = mul nuw nsw i64 %36, 384, !dbg !557
  %67 = add nuw nsw i64 %65, %66, !dbg !557
  %68 = mul nuw nsw i64 %42, 128, !dbg !557
  %69 = add nuw nsw i64 %67, %68, !dbg !557
  %70 = add nuw nsw i64 %69, %55, !dbg !557
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !557
  store i8 %61, ptr %71, align 1, !dbg !557
  %72 = add i64 %52, 1, !dbg !557
  br label %51, !dbg !557

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !557
  br label %46, !dbg !557

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !557
  br label %41, !dbg !557

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !557
  br label %35, !dbg !557

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !557
  br label %32, !dbg !557

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !557
  br label %29, !dbg !557

83:                                               ; preds = %29
  ret i32 0, !dbg !557
}

define internal i32 @"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !558 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !559
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !559
  %6 = load ptr, ptr %5, align 8, !dbg !559
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !559
  %8 = load ptr, ptr %7, align 8, !dbg !559
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !559
  %10 = load ptr, ptr %9, align 8, !dbg !559
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !559
  %12 = load ptr, ptr %11, align 8, !dbg !559
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !559
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !559
  %15 = zext i32 %14 to i64, !dbg !559
  %16 = sdiv i64 %15, 8, !dbg !559
  %17 = mul i64 %16, 8, !dbg !559
  %18 = icmp ne i64 %15, %17, !dbg !559
  %19 = icmp slt i64 %15, 0, !dbg !559
  %20 = and i1 %18, %19, !dbg !559
  %21 = add i64 %16, -1, !dbg !559
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !559
  %23 = srem i64 %15, 8, !dbg !559
  %24 = icmp slt i64 %23, 0, !dbg !559
  %25 = add nsw i64 %23, 8, !dbg !559
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !559
  %27 = mul nsw i64 %22, 16, !dbg !559
  %28 = mul nsw i64 %26, 16, !dbg !559
  %29 = mul nsw i64 %27, 1152, !dbg !559
  %30 = add i64 %29, 903168, !dbg !559
  %31 = ptrtoint ptr %6 to i64, !dbg !559
  %32 = add i64 %31, %30, !dbg !559
  %33 = add i64 %28, 579456, !dbg !559
  %34 = ptrtoint ptr %8 to i64, !dbg !559
  %35 = add i64 %34, %33, !dbg !559
  %36 = mul nsw i64 %27, 128, !dbg !559
  %37 = add i64 %36, %28, !dbg !559
  %38 = ptrtoint ptr %12 to i64, !dbg !559
  %39 = add i64 %38, %37, !dbg !559
  %40 = add i64 %37, 5350400, !dbg !559
  %41 = ptrtoint ptr %10 to i64, !dbg !559
  %42 = mul i64 %40, 4, !dbg !559
  %43 = add i64 %41, %42, !dbg !559
  %44 = and i64 %32, 9223372036854775807, !dbg !559
  %45 = and i64 %35, 9223372036854775807, !dbg !559
  %46 = and i64 %39, 9223372036854775807, !dbg !559
  %47 = and i64 %43, 9223372036854775807, !dbg !559
  call void asm sideeffect "fence", ""(), !dbg !559
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !559
  call void @llvm.riscv.config(i64 6, i64 4287705167727427712), !dbg !559
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !559
  call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !559
  call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !559
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !559
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !559
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !559
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !559
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !559
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !559
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !559
  call void asm sideeffect "fence", ""(), !dbg !559
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !559
  ret i32 0, !dbg !559
}

define internal i32 @"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !560 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !561
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !561
  %6 = load ptr, ptr %5, align 8, !dbg !561
  %7 = getelementptr i32, ptr %6, i64 181728, !dbg !561
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !561
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !561
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !561
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !561
  %11 = load ptr, ptr %10, align 8, !dbg !561
  %12 = getelementptr i32, ptr %11, i64 451584, !dbg !561
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !561
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !561
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !561
  %15 = zext i32 %14 to i64, !dbg !561
  %16 = sdiv i64 %15, 8, !dbg !561
  %17 = mul i64 %16, 8, !dbg !561
  %18 = icmp ne i64 %15, %17, !dbg !561
  %19 = icmp slt i64 %15, 0, !dbg !561
  %20 = and i1 %18, %19, !dbg !561
  %21 = add i64 %16, -1, !dbg !561
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !561
  %23 = srem i64 %15, 8, !dbg !561
  %24 = icmp slt i64 %23, 0, !dbg !561
  %25 = add nsw i64 %23, 8, !dbg !561
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !561
  %27 = mul nsw i64 %22, 112, !dbg !561
  %28 = mul nsw i64 %26, 64, !dbg !561
  br label %29, !dbg !561

29:                                               ; preds = %44, %3
  %30 = phi i64 [ %45, %44 ], [ 0, %3 ], !dbg !561
  %31 = icmp slt i64 %30, 112, !dbg !561
  br i1 %31, label %32, label %46, !dbg !561

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %43, %35 ], [ 0, %29 ], !dbg !561
  %34 = icmp slt i64 %33, 64, !dbg !561
  br i1 %34, label %35, label %44, !dbg !561

35:                                               ; preds = %32
  %36 = add i64 %33, %28, !dbg !561
  %37 = getelementptr i32, ptr %7, i64 %36, !dbg !561
  %38 = load <2 x i32>, ptr %37, align 4, !dbg !561
  %39 = add i64 %27, %30, !dbg !561
  %40 = mul i64 %39, 512, !dbg !561
  %41 = add i64 %40, %36, !dbg !561
  %42 = getelementptr i32, ptr %12, i64 %41, !dbg !561
  store <2 x i32> %38, ptr %42, align 4, !dbg !561
  %43 = add i64 %33, 2, !dbg !561
  br label %32, !dbg !561

44:                                               ; preds = %32
  %45 = add i64 %30, 1, !dbg !561
  br label %29, !dbg !561

46:                                               ; preds = %29
  ret i32 0, !dbg !561
}

define internal i32 @"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !562 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !563
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !563
  %6 = load ptr, ptr %5, align 8, !dbg !563
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !563
  %8 = load ptr, ptr %7, align 8, !dbg !563
  %9 = getelementptr i8, ptr %6, i64 501760, !dbg !564
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !564
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !563
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !563
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !563
  %13 = load ptr, ptr %12, align 8, !dbg !563
  %14 = getelementptr i8, ptr %13, i64 100352, !dbg !563
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !563
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !563
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !563
  %17 = zext i32 %16 to i64, !dbg !563
  %18 = sdiv i64 %17, 32, !dbg !563
  %19 = mul i64 %18, 32, !dbg !563
  %20 = icmp ne i64 %17, %19, !dbg !563
  %21 = icmp slt i64 %17, 0, !dbg !563
  %22 = and i1 %20, %21, !dbg !563
  %23 = add i64 %18, -1, !dbg !563
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !563
  %25 = srem i64 %17, 32, !dbg !563
  %26 = icmp slt i64 %25, 0, !dbg !563
  %27 = add nsw i64 %25, 32, !dbg !563
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !563
  %29 = mul nsw i64 %24, 16, !dbg !563
  %30 = mul nsw i64 %28, 16, !dbg !563
  %31 = alloca i8, i64 256, align 1, !dbg !563
  %32 = mul nsw i64 %29, 128, !dbg !563
  %33 = ptrtoint ptr %6 to i64, !dbg !563
  %34 = add i64 %33, %32, !dbg !563
  %35 = add i64 %30, 659456, !dbg !563
  %36 = ptrtoint ptr %8 to i64, !dbg !563
  %37 = add i64 %36, %35, !dbg !563
  %38 = ptrtoint ptr %31 to i64, !dbg !563
  %39 = mul nsw i64 %29, 512, !dbg !563
  %40 = add i64 %39, %30, !dbg !563
  %41 = add i64 %40, 451584, !dbg !563
  %42 = mul i64 %41, 4, !dbg !563
  %43 = add i64 %33, %42, !dbg !563
  %44 = and i64 %34, 9223372036854775807, !dbg !563
  %45 = and i64 %37, 9223372036854775807, !dbg !563
  %46 = and i64 %38, 9223372036854775807, !dbg !563
  %47 = and i64 %43, 9223372036854775807, !dbg !563
  call void asm sideeffect "fence", ""(), !dbg !563
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !563
  call void @llvm.riscv.config(i64 2, i64 4353230588954542096), !dbg !563
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !563
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !563
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !563
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !563
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !563
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !563
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !563
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !563
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !563
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !563
  call void asm sideeffect "fence", ""(), !dbg !563
  br label %48, !dbg !565

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !565
  %50 = icmp slt i64 %49, 16, !dbg !565
  br i1 %50, label %51, label %166, !dbg !565

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !565
  %53 = icmp slt i64 %52, 16, !dbg !565
  br i1 %53, label %54, label %164, !dbg !565

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !565
  %56 = add nuw nsw i64 %55, %52, !dbg !565
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !565
  %58 = load i8, ptr %57, align 1, !dbg !565
  %59 = add i64 %29, %49, !dbg !565
  %60 = add i64 %30, %52, !dbg !565
  %61 = mul nuw nsw i64 %59, 512, !dbg !565
  %62 = add nuw nsw i64 %61, %60, !dbg !565
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !565
  %64 = load i8, ptr %63, align 1, !dbg !565
  %65 = sitofp i8 %64 to float, !dbg !566
  %66 = fmul contract float %65, 0x3FC2B63480000000, !dbg !566
  %67 = sitofp i8 %58 to float, !dbg !567
  %68 = fmul contract float %67, 0x3FB03947A0000000, !dbg !567
  %69 = fadd contract float %68, %66, !dbg !568
  %70 = fdiv float %69, 0x3FC1DCE100000000, !dbg !569
  %71 = bitcast float %70 to i32, !dbg !569
  %72 = call float @llvm.round.f32(float %70), !dbg !569
  %73 = bitcast float %72 to i32, !dbg !569
  %74 = lshr i32 %71, 23, !dbg !569
  %75 = and i32 %74, 255, !dbg !569
  %76 = sub i32 %75, 127, !dbg !569
  %77 = lshr i32 %73, 23, !dbg !569
  %78 = and i32 %77, 255, !dbg !569
  %79 = sub i32 %78, 127, !dbg !569
  %80 = icmp eq i32 %79, 0, !dbg !569
  %81 = sub i32 %78, 128, !dbg !569
  %82 = icmp sgt i32 %81, 0, !dbg !569
  %83 = select i1 %82, i32 %81, i32 0, !dbg !569
  %84 = icmp slt i32 %83, 31, !dbg !569
  %85 = select i1 %84, i32 %83, i32 31, !dbg !569
  %86 = lshr i32 8388607, %85, !dbg !569
  %87 = and i32 %73, %86, !dbg !569
  %88 = icmp ne i32 %87, 0, !dbg !569
  %89 = or i1 %88, %80, !dbg !569
  %90 = icmp eq i32 %76, -1, !dbg !569
  %91 = icmp sgt i32 %76, 0, !dbg !569
  %92 = select i1 %91, i32 %76, i32 0, !dbg !569
  %93 = icmp slt i32 %92, 31, !dbg !569
  %94 = select i1 %93, i32 %92, i32 31, !dbg !569
  %95 = lshr i32 4194304, %94, !dbg !569
  %96 = select i1 %90, i32 0, i32 %95, !dbg !569
  %97 = lshr i32 8388607, %94, !dbg !569
  %98 = and i32 %71, %97, !dbg !569
  %99 = icmp eq i32 %98, %96, !dbg !569
  %100 = icmp sge i32 %76, -1, !dbg !569
  %101 = icmp slt i32 %76, 23, !dbg !569
  %102 = and i1 %99, %101, !dbg !569
  %103 = and i1 %102, %100, !dbg !569
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !569
  %105 = fsub contract float %72, %104, !dbg !569
  %106 = and i1 %89, %103, !dbg !569
  %107 = select i1 %106, float %105, float %72, !dbg !569
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !569
  %109 = fadd contract float %108, 0.000000e+00, !dbg !569
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !569
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !569
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !569
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !569
  %114 = fptosi float %113 to i8, !dbg !569
  %115 = icmp sgt i8 %114, 0, !dbg !570
  %116 = select i1 %115, i8 %114, i8 0, !dbg !570
  %117 = sitofp i8 %116 to float, !dbg !570
  %118 = bitcast float %117 to i32, !dbg !565
  %119 = call float @llvm.round.f32(float %117), !dbg !565
  %120 = bitcast float %119 to i32, !dbg !565
  %121 = lshr i32 %118, 23, !dbg !565
  %122 = and i32 %121, 255, !dbg !565
  %123 = sub i32 %122, 127, !dbg !565
  %124 = lshr i32 %120, 23, !dbg !565
  %125 = and i32 %124, 255, !dbg !565
  %126 = sub i32 %125, 127, !dbg !565
  %127 = icmp eq i32 %126, 0, !dbg !565
  %128 = sub i32 %125, 128, !dbg !565
  %129 = icmp sgt i32 %128, 0, !dbg !565
  %130 = select i1 %129, i32 %128, i32 0, !dbg !565
  %131 = icmp slt i32 %130, 31, !dbg !565
  %132 = select i1 %131, i32 %130, i32 31, !dbg !565
  %133 = lshr i32 8388607, %132, !dbg !565
  %134 = and i32 %120, %133, !dbg !565
  %135 = icmp ne i32 %134, 0, !dbg !565
  %136 = or i1 %135, %127, !dbg !565
  %137 = icmp eq i32 %123, -1, !dbg !565
  %138 = icmp sgt i32 %123, 0, !dbg !565
  %139 = select i1 %138, i32 %123, i32 0, !dbg !565
  %140 = icmp slt i32 %139, 31, !dbg !565
  %141 = select i1 %140, i32 %139, i32 31, !dbg !565
  %142 = lshr i32 4194304, %141, !dbg !565
  %143 = select i1 %137, i32 0, i32 %142, !dbg !565
  %144 = lshr i32 8388607, %141, !dbg !565
  %145 = and i32 %118, %144, !dbg !565
  %146 = icmp eq i32 %145, %143, !dbg !565
  %147 = icmp sge i32 %123, -1, !dbg !565
  %148 = icmp slt i32 %123, 23, !dbg !565
  %149 = and i1 %146, %148, !dbg !565
  %150 = and i1 %149, %147, !dbg !565
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !565
  %152 = fsub contract float %119, %151, !dbg !565
  %153 = and i1 %136, %150, !dbg !565
  %154 = select i1 %153, float %152, float %119, !dbg !565
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !565
  %156 = fadd contract float %155, 0.000000e+00, !dbg !565
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !565
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !565
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !565
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !565
  %161 = fptosi float %160 to i8, !dbg !565
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !565
  store i8 %161, ptr %162, align 1, !dbg !565
  %163 = add i64 %52, 1, !dbg !565
  br label %51, !dbg !565

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !565
  br label %48, !dbg !565

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !563
  ret i32 0, !dbg !563
}

define internal i32 @"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !571 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !572
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !572
  %6 = load ptr, ptr %5, align 8, !dbg !572
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !572
  %8 = load ptr, ptr %7, align 8, !dbg !572
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !572
  %10 = load ptr, ptr %9, align 8, !dbg !572
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !572
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !572
  %13 = zext i32 %12 to i64, !dbg !572
  %14 = sdiv i64 %13, 16, !dbg !572
  %15 = mul i64 %14, 16, !dbg !572
  %16 = icmp ne i64 %13, %15, !dbg !572
  %17 = icmp slt i64 %13, 0, !dbg !572
  %18 = and i1 %16, %17, !dbg !572
  %19 = add i64 %14, -1, !dbg !572
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !572
  %21 = srem i64 %13, 16, !dbg !572
  %22 = icmp slt i64 %21, 0, !dbg !572
  %23 = add nsw i64 %21, 16, !dbg !572
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !572
  %25 = mul nsw i64 %20, 16, !dbg !572
  %26 = mul nsw i64 %24, 16, !dbg !572
  %27 = mul nsw i64 %25, 512, !dbg !572
  %28 = add i64 %27, 100352, !dbg !572
  %29 = ptrtoint ptr %6 to i64, !dbg !572
  %30 = add i64 %29, %28, !dbg !572
  %31 = add i64 %26, 724992, !dbg !572
  %32 = ptrtoint ptr %8 to i64, !dbg !572
  %33 = add i64 %32, %31, !dbg !572
  %34 = mul nsw i64 %25, 256, !dbg !572
  %35 = add i64 %34, %26, !dbg !572
  %36 = add i64 %35, 501760, !dbg !572
  %37 = ptrtoint ptr %10 to i64, !dbg !572
  %38 = add i64 %37, %36, !dbg !572
  %39 = add i64 %35, 5450752, !dbg !572
  %40 = mul i64 %39, 4, !dbg !572
  %41 = add i64 %32, %40, !dbg !572
  %42 = and i64 %30, 9223372036854775807, !dbg !572
  %43 = and i64 %33, 9223372036854775807, !dbg !572
  %44 = and i64 %38, 9223372036854775807, !dbg !572
  %45 = and i64 %41, 9223372036854775807, !dbg !572
  call void asm sideeffect "fence", ""(), !dbg !572
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !572
  call void @llvm.riscv.config(i64 6, i64 4351522793993535744), !dbg !572
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !572
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !572
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !572
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !572
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %42, i64 %43), !dbg !572
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %45, i64 %44), !dbg !572
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 256), !dbg !572
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !572
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !572
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !572
  call void asm sideeffect "fence", ""(), !dbg !572
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !572
  ret i32 0, !dbg !572
}

define internal i32 @"main_graph$async_dispatch_55_generic_14x14x512_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !573 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !574
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !574
  %6 = load ptr, ptr %5, align 8, !dbg !574
  %7 = getelementptr i8, ptr %6, i64 100352, !dbg !574
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !574
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !575
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !575
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !575
  %11 = load ptr, ptr %10, align 8, !dbg !575
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !575
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !575
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !575
  %14 = zext i32 %13 to i64, !dbg !575
  %15 = sdiv i64 %14, 16, !dbg !575
  %16 = mul i64 %15, 16, !dbg !575
  %17 = icmp ne i64 %14, %16, !dbg !575
  %18 = icmp slt i64 %14, 0, !dbg !575
  %19 = and i1 %17, %18, !dbg !575
  %20 = add i64 %15, -1, !dbg !575
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !575
  %22 = srem i64 %14, 16, !dbg !575
  %23 = icmp slt i64 %22, 0, !dbg !575
  %24 = add nsw i64 %22, 16, !dbg !575
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !575
  %26 = mul nsw i64 %21, 7, !dbg !575
  %27 = mul nsw i64 %25, 32, !dbg !575
  br label %28, !dbg !575

28:                                               ; preds = %67, %3
  %29 = phi i64 [ %68, %67 ], [ 0, %3 ], !dbg !575
  %30 = icmp slt i64 %29, 7, !dbg !575
  br i1 %30, label %31, label %69, !dbg !575

31:                                               ; preds = %28
  %32 = mul nsw i64 %29, 2, !dbg !575
  %33 = mul nsw i64 %21, 14, !dbg !575
  %34 = add i64 %32, %33, !dbg !575
  br label %35, !dbg !575

35:                                               ; preds = %65, %31
  %36 = phi i64 [ %66, %65 ], [ 0, %31 ], !dbg !575
  %37 = icmp slt i64 %36, 14, !dbg !575
  br i1 %37, label %38, label %67, !dbg !575

38:                                               ; preds = %35
  %39 = mul nsw i64 %36, 2, !dbg !575
  br label %40, !dbg !575

40:                                               ; preds = %63, %38
  %41 = phi i64 [ %64, %63 ], [ 0, %38 ], !dbg !575
  %42 = icmp slt i64 %41, 32, !dbg !575
  br i1 %42, label %43, label %65, !dbg !575

43:                                               ; preds = %40
  %44 = add i64 %41, %27, !dbg !575
  br label %45, !dbg !575

45:                                               ; preds = %48, %43
  %46 = phi i64 [ %62, %48 ], [ 0, %43 ], !dbg !575
  %47 = icmp slt i64 %46, 8, !dbg !575
  br i1 %47, label %48, label %63, !dbg !575

48:                                               ; preds = %45
  %49 = add i64 %44, %46, !dbg !575
  %50 = mul nuw nsw i64 %34, 14336, !dbg !575
  %51 = mul nuw nsw i64 %39, 512, !dbg !575
  %52 = add nuw nsw i64 %50, %51, !dbg !575
  %53 = add nuw nsw i64 %52, %49, !dbg !575
  %54 = getelementptr inbounds nuw i8, ptr %7, i64 %53, !dbg !575
  %55 = load i8, ptr %54, align 1, !dbg !575
  %56 = add i64 %26, %29, !dbg !575
  %57 = mul nuw nsw i64 %56, 7168, !dbg !575
  %58 = mul nuw nsw i64 %36, 512, !dbg !575
  %59 = add nuw nsw i64 %57, %58, !dbg !575
  %60 = add nuw nsw i64 %59, %49, !dbg !575
  %61 = getelementptr inbounds nuw i8, ptr %11, i64 %60, !dbg !575
  store i8 %55, ptr %61, align 1, !dbg !575
  %62 = add i64 %46, 1, !dbg !575
  br label %45, !dbg !575

63:                                               ; preds = %45
  %64 = add i64 %41, 8, !dbg !575
  br label %40, !dbg !575

65:                                               ; preds = %40
  %66 = add i64 %36, 1, !dbg !575
  br label %35, !dbg !575

67:                                               ; preds = %35
  %68 = add i64 %29, 1, !dbg !575
  br label %28, !dbg !575

69:                                               ; preds = %28
  ret i32 0, !dbg !575
}

define internal i32 @"main_graph$async_dispatch_56_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !576 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !577
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !577
  %6 = load ptr, ptr %5, align 8, !dbg !577
  %7 = getelementptr i8, ptr %6, i64 501760, !dbg !577
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !577
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !578
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !578
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !578
  %11 = load ptr, ptr %10, align 8, !dbg !578
  %12 = getelementptr i8, ptr %11, i64 702464, !dbg !578
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !578
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !578
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !578
  %15 = zext i32 %14 to i64, !dbg !578
  %16 = sdiv i64 %15, 4, !dbg !578
  %17 = mul i64 %16, 4, !dbg !578
  %18 = icmp ne i64 %15, %17, !dbg !578
  %19 = icmp slt i64 %15, 0, !dbg !578
  %20 = and i1 %18, %19, !dbg !578
  %21 = add i64 %16, -1, !dbg !578
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !578
  %23 = srem i64 %15, 4, !dbg !578
  %24 = icmp slt i64 %23, 0, !dbg !578
  %25 = add nsw i64 %23, 4, !dbg !578
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !578
  %27 = mul nsw i64 %22, 4, !dbg !578
  %28 = mul nsw i64 %26, 64, !dbg !578
  br label %29, !dbg !578

29:                                               ; preds = %57, %3
  %30 = phi i64 [ %58, %57 ], [ 0, %3 ], !dbg !578
  %31 = icmp slt i64 %30, 4, !dbg !578
  br i1 %31, label %32, label %59, !dbg !578

32:                                               ; preds = %55, %29
  %33 = phi i64 [ %56, %55 ], [ 0, %29 ], !dbg !578
  %34 = icmp slt i64 %33, 28, !dbg !578
  br i1 %34, label %35, label %57, !dbg !578

35:                                               ; preds = %38, %32
  %36 = phi i64 [ %54, %38 ], [ 0, %32 ], !dbg !578
  %37 = icmp slt i64 %36, 64, !dbg !578
  br i1 %37, label %38, label %55, !dbg !578

38:                                               ; preds = %35
  %39 = add i64 %27, %30, !dbg !578
  %40 = add i64 %28, %36, !dbg !578
  %41 = mul i64 %39, 7168, !dbg !578
  %42 = mul i64 %33, 256, !dbg !578
  %43 = add i64 %41, %42, !dbg !578
  %44 = add i64 %43, %40, !dbg !578
  %45 = getelementptr i8, ptr %7, i64 %44, !dbg !578
  %46 = load <2 x i8>, ptr %45, align 1, !dbg !578
  %47 = add i64 %39, 1, !dbg !578
  %48 = add i64 %33, 1, !dbg !578
  %49 = mul i64 %47, 7680, !dbg !578
  %50 = mul i64 %48, 256, !dbg !578
  %51 = add i64 %49, %50, !dbg !578
  %52 = add i64 %51, %40, !dbg !578
  %53 = getelementptr i8, ptr %12, i64 %52, !dbg !578
  store <2 x i8> %46, ptr %53, align 1, !dbg !578
  %54 = add i64 %36, 2, !dbg !578
  br label %35, !dbg !578

55:                                               ; preds = %35
  %56 = add i64 %33, 1, !dbg !578
  br label %32, !dbg !578

57:                                               ; preds = %32
  %58 = add i64 %30, 1, !dbg !578
  br label %29, !dbg !578

59:                                               ; preds = %29
  ret i32 0, !dbg !578
}

define internal i32 @"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !579 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !580
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !580
  %6 = load ptr, ptr %5, align 8, !dbg !580
  %7 = getelementptr i8, ptr %6, i64 702464, !dbg !580
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !580
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !580
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !580
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !580
  %11 = load ptr, ptr %10, align 8, !dbg !580
  %12 = getelementptr i8, ptr %11, i64 100352, !dbg !580
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !580
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !580
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !580
  %15 = zext i32 %14 to i64, !dbg !580
  %16 = sdiv i64 %15, 8, !dbg !580
  %17 = mul i64 %16, 8, !dbg !580
  %18 = icmp ne i64 %15, %17, !dbg !580
  %19 = icmp slt i64 %15, 0, !dbg !580
  %20 = and i1 %18, %19, !dbg !580
  %21 = add i64 %16, -1, !dbg !580
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !580
  %23 = srem i64 %15, 8, !dbg !580
  %24 = icmp slt i64 %23, 0, !dbg !580
  %25 = add nsw i64 %23, 8, !dbg !580
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !580
  %27 = mul nsw i64 %22, 2, !dbg !580
  %28 = mul nsw i64 %26, 32, !dbg !580
  br label %29, !dbg !580

29:                                               ; preds = %84, %3
  %30 = phi i64 [ %85, %84 ], [ 0, %3 ], !dbg !580
  %31 = icmp slt i64 %30, 2, !dbg !580
  br i1 %31, label %32, label %86, !dbg !580

32:                                               ; preds = %82, %29
  %33 = phi i64 [ %83, %82 ], [ 0, %29 ], !dbg !580
  %34 = icmp slt i64 %33, 14, !dbg !580
  br i1 %34, label %35, label %84, !dbg !580

35:                                               ; preds = %80, %32
  %36 = phi i64 [ %81, %80 ], [ 0, %32 ], !dbg !580
  %37 = icmp slt i64 %36, 3, !dbg !580
  br i1 %37, label %38, label %82, !dbg !580

38:                                               ; preds = %35
  %39 = mul nsw i64 %30, 2, !dbg !580
  %40 = add i64 %39, %36, !dbg !580
  %41 = mul nsw i64 %22, 4, !dbg !580
  %42 = add i64 %40, %41, !dbg !580
  br label %43, !dbg !580

43:                                               ; preds = %78, %38
  %44 = phi i64 [ %79, %78 ], [ 0, %38 ], !dbg !580
  %45 = icmp slt i64 %44, 3, !dbg !580
  br i1 %45, label %46, label %80, !dbg !580

46:                                               ; preds = %43
  %47 = mul nsw i64 %33, 2, !dbg !580
  %48 = add i64 %47, %44, !dbg !580
  br label %49, !dbg !580

49:                                               ; preds = %76, %46
  %50 = phi i64 [ %77, %76 ], [ 0, %46 ], !dbg !580
  %51 = icmp slt i64 %50, 32, !dbg !580
  br i1 %51, label %52, label %78, !dbg !580

52:                                               ; preds = %49
  %53 = add i64 %50, %28, !dbg !580
  br label %54, !dbg !580

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %75, %57 ], [ 0, %52 ], !dbg !580
  %56 = icmp slt i64 %55, 8, !dbg !580
  br i1 %56, label %57, label %76, !dbg !580

57:                                               ; preds = %54
  %58 = add i64 %53, %55, !dbg !580
  %59 = mul nuw nsw i64 %42, 7680, !dbg !580
  %60 = mul nuw nsw i64 %48, 256, !dbg !580
  %61 = add nuw nsw i64 %59, %60, !dbg !580
  %62 = add nuw nsw i64 %61, %58, !dbg !580
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 %62, !dbg !580
  %64 = load i8, ptr %63, align 1, !dbg !580
  %65 = add i64 %27, %30, !dbg !580
  %66 = mul nuw nsw i64 %65, 32256, !dbg !580
  %67 = mul nuw nsw i64 %33, 2304, !dbg !580
  %68 = add nuw nsw i64 %66, %67, !dbg !580
  %69 = mul nuw nsw i64 %36, 768, !dbg !580
  %70 = add nuw nsw i64 %68, %69, !dbg !580
  %71 = mul nuw nsw i64 %44, 256, !dbg !580
  %72 = add nuw nsw i64 %70, %71, !dbg !580
  %73 = add nuw nsw i64 %72, %58, !dbg !580
  %74 = getelementptr inbounds nuw i8, ptr %12, i64 %73, !dbg !580
  store i8 %64, ptr %74, align 1, !dbg !580
  %75 = add i64 %55, 1, !dbg !580
  br label %54, !dbg !580

76:                                               ; preds = %54
  %77 = add i64 %50, 8, !dbg !580
  br label %49, !dbg !580

78:                                               ; preds = %49
  %79 = add i64 %44, 1, !dbg !580
  br label %43, !dbg !580

80:                                               ; preds = %43
  %81 = add i64 %36, 1, !dbg !580
  br label %35, !dbg !580

82:                                               ; preds = %35
  %83 = add i64 %33, 1, !dbg !580
  br label %32, !dbg !580

84:                                               ; preds = %32
  %85 = add i64 %30, 1, !dbg !580
  br label %29, !dbg !580

86:                                               ; preds = %29
  ret i32 0, !dbg !580
}

define internal i32 @"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !581 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !582
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !582
  %6 = load ptr, ptr %5, align 8, !dbg !582
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !582
  %8 = load ptr, ptr %7, align 8, !dbg !582
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !582
  %10 = load ptr, ptr %9, align 8, !dbg !582
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !582
  %12 = load ptr, ptr %11, align 8, !dbg !582
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !582
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !582
  %15 = zext i32 %14 to i64, !dbg !582
  %16 = sdiv i64 %15, 16, !dbg !582
  %17 = mul i64 %16, 16, !dbg !582
  %18 = icmp ne i64 %15, %17, !dbg !582
  %19 = icmp slt i64 %15, 0, !dbg !582
  %20 = and i1 %18, %19, !dbg !582
  %21 = add i64 %16, -1, !dbg !582
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !582
  %23 = srem i64 %15, 16, !dbg !582
  %24 = icmp slt i64 %23, 0, !dbg !582
  %25 = add nsw i64 %23, 16, !dbg !582
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !582
  %27 = mul nsw i64 %22, 4, !dbg !582
  %28 = mul nsw i64 %26, 16, !dbg !582
  %29 = mul nsw i64 %27, 2304, !dbg !582
  %30 = add i64 %29, 100352, !dbg !582
  %31 = ptrtoint ptr %6 to i64, !dbg !582
  %32 = add i64 %31, %30, !dbg !582
  %33 = add i64 %28, 728960, !dbg !582
  %34 = ptrtoint ptr %8 to i64, !dbg !582
  %35 = add i64 %34, %33, !dbg !582
  %36 = mul nsw i64 %27, 256, !dbg !582
  %37 = add i64 %36, %28, !dbg !582
  %38 = add i64 %37, 551936, !dbg !582
  %39 = ptrtoint ptr %12 to i64, !dbg !582
  %40 = add i64 %39, %38, !dbg !582
  %41 = add i64 %37, 5852160, !dbg !582
  %42 = ptrtoint ptr %10 to i64, !dbg !582
  %43 = mul i64 %41, 4, !dbg !582
  %44 = add i64 %42, %43, !dbg !582
  %45 = and i64 %32, 9223372036854775807, !dbg !582
  %46 = and i64 %35, 9223372036854775807, !dbg !582
  %47 = and i64 %40, 9223372036854775807, !dbg !582
  %48 = and i64 %44, 9223372036854775807, !dbg !582
  call void asm sideeffect "fence", ""(), !dbg !582
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !582
  call void @llvm.riscv.config(i64 6, i64 4307713612178260224), !dbg !582
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !582
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !582
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !582
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !582
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %45, i64 %46), !dbg !582
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %48, i64 0), !dbg !582
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !582
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !582
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !582
  %49 = add i64 %45, 2048, !dbg !582
  %50 = add i64 %46, 524288, !dbg !582
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !582
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %49, i64 %50), !dbg !582
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %47), !dbg !582
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !582
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !582
  call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !582
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !582
  call void asm sideeffect "fence", ""(), !dbg !582
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !582
  ret i32 0, !dbg !582
}

define internal i32 @"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !583 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !584
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !584
  %6 = load ptr, ptr %5, align 8, !dbg !584
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !584
  %8 = load ptr, ptr %7, align 8, !dbg !584
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !584
  %10 = load ptr, ptr %9, align 8, !dbg !584
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !584
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !584
  %13 = zext i32 %12 to i64, !dbg !584
  %14 = sdiv i64 %13, 64, !dbg !584
  %15 = mul i64 %14, 64, !dbg !584
  %16 = icmp ne i64 %13, %15, !dbg !584
  %17 = icmp slt i64 %13, 0, !dbg !584
  %18 = and i1 %16, %17, !dbg !584
  %19 = add i64 %14, -1, !dbg !584
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !584
  %21 = srem i64 %13, 64, !dbg !584
  %22 = icmp slt i64 %21, 0, !dbg !584
  %23 = add nsw i64 %21, 64, !dbg !584
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !584
  %25 = mul nsw i64 %20, 4, !dbg !584
  %26 = mul nsw i64 %24, 16, !dbg !584
  %27 = mul nsw i64 %25, 256, !dbg !584
  %28 = add i64 %27, 551936, !dbg !584
  %29 = ptrtoint ptr %6 to i64, !dbg !584
  %30 = add i64 %29, %28, !dbg !584
  %31 = add i64 %26, 1380352, !dbg !584
  %32 = ptrtoint ptr %8 to i64, !dbg !584
  %33 = add i64 %32, %31, !dbg !584
  %34 = mul nsw i64 %25, 1024, !dbg !584
  %35 = add i64 %34, %26, !dbg !584
  %36 = add i64 %35, 100352, !dbg !584
  %37 = ptrtoint ptr %10 to i64, !dbg !584
  %38 = add i64 %37, %36, !dbg !584
  %39 = add i64 %35, 5902336, !dbg !584
  %40 = mul i64 %39, 4, !dbg !584
  %41 = add i64 %32, %40, !dbg !584
  %42 = and i64 %30, 9223372036854775807, !dbg !584
  %43 = and i64 %33, 9223372036854775807, !dbg !584
  %44 = and i64 %38, 9223372036854775807, !dbg !584
  %45 = and i64 %41, 9223372036854775807, !dbg !584
  call void asm sideeffect "fence", ""(), !dbg !584
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !584
  call void @llvm.riscv.config(i64 2, i64 4312053161234793472), !dbg !584
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !584
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !584
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !584
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !584
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %42, i64 %43), !dbg !584
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %45, i64 %44), !dbg !584
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !584
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 1024), !dbg !584
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !584
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !584
  call void asm sideeffect "fence", ""(), !dbg !584
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !584
  ret i32 0, !dbg !584
}

define internal i32 @"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !585 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !586
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !586
  %6 = load ptr, ptr %5, align 8, !dbg !586
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !586
  %8 = load ptr, ptr %7, align 8, !dbg !586
  %9 = getelementptr i8, ptr %6, i64 100352, !dbg !587
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !587
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !586
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !586
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !586
  %13 = load ptr, ptr %12, align 8, !dbg !586
  %14 = getelementptr i8, ptr %13, i64 301056, !dbg !586
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !586
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !586
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !586
  %17 = zext i32 %16 to i64, !dbg !586
  %18 = sdiv i64 %17, 64, !dbg !586
  %19 = mul i64 %18, 64, !dbg !586
  %20 = icmp ne i64 %17, %19, !dbg !586
  %21 = icmp slt i64 %17, 0, !dbg !586
  %22 = and i1 %20, %21, !dbg !586
  %23 = add i64 %18, -1, !dbg !586
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !586
  %25 = srem i64 %17, 64, !dbg !586
  %26 = icmp slt i64 %25, 0, !dbg !586
  %27 = add nsw i64 %25, 64, !dbg !586
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !586
  %29 = mul nsw i64 %24, 4, !dbg !586
  %30 = mul nsw i64 %28, 16, !dbg !586
  %31 = alloca i8, i64 64, align 1, !dbg !586
  %32 = mul nsw i64 %29, 512, !dbg !586
  %33 = ptrtoint ptr %6 to i64, !dbg !586
  %34 = add i64 %33, %32, !dbg !586
  %35 = add i64 %30, 856064, !dbg !586
  %36 = ptrtoint ptr %8 to i64, !dbg !586
  %37 = add i64 %36, %35, !dbg !586
  %38 = ptrtoint ptr %31 to i64, !dbg !586
  %39 = mul nsw i64 %29, 1024, !dbg !586
  %40 = add i64 %39, %30, !dbg !586
  %41 = add i64 %40, 5651456, !dbg !586
  %42 = mul i64 %41, 4, !dbg !586
  %43 = add i64 %36, %42, !dbg !586
  %44 = and i64 %34, 9223372036854775807, !dbg !586
  %45 = and i64 %37, 9223372036854775807, !dbg !586
  %46 = and i64 %38, 9223372036854775807, !dbg !586
  %47 = and i64 %43, 9223372036854775807, !dbg !586
  call void asm sideeffect "fence", ""(), !dbg !586
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !586
  call void @llvm.riscv.config(i64 2, i64 4377657231903031312), !dbg !586
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !586
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !586
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !586
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 137439019009), !dbg !586
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !586
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !586
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 1024), !dbg !586
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !586
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !586
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !586
  call void asm sideeffect "fence", ""(), !dbg !586
  br label %48, !dbg !588

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !588
  %50 = icmp slt i64 %49, 4, !dbg !588
  br i1 %50, label %51, label %166, !dbg !588

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !588
  %53 = icmp slt i64 %52, 16, !dbg !588
  br i1 %53, label %54, label %164, !dbg !588

54:                                               ; preds = %51
  %55 = add i64 %29, %49, !dbg !588
  %56 = add i64 %30, %52, !dbg !588
  %57 = mul nuw nsw i64 %55, 1024, !dbg !588
  %58 = add nuw nsw i64 %57, %56, !dbg !588
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 %58, !dbg !588
  %60 = load i8, ptr %59, align 1, !dbg !588
  %61 = mul nuw nsw i64 %49, 16, !dbg !588
  %62 = add nuw nsw i64 %61, %52, !dbg !588
  %63 = getelementptr inbounds nuw i8, ptr %31, i64 %62, !dbg !588
  %64 = load i8, ptr %63, align 1, !dbg !588
  %65 = sitofp i8 %64 to float, !dbg !589
  %66 = fmul contract float %65, 0x3FAE2EB9E0000000, !dbg !589
  %67 = sitofp i8 %60 to float, !dbg !590
  %68 = fmul contract float %67, 0x3FB3FBD380000000, !dbg !590
  %69 = fadd contract float %68, %66, !dbg !591
  %70 = fdiv float %69, 0x3FB432EDA0000000, !dbg !592
  %71 = bitcast float %70 to i32, !dbg !592
  %72 = call float @llvm.round.f32(float %70), !dbg !592
  %73 = bitcast float %72 to i32, !dbg !592
  %74 = lshr i32 %71, 23, !dbg !592
  %75 = and i32 %74, 255, !dbg !592
  %76 = sub i32 %75, 127, !dbg !592
  %77 = lshr i32 %73, 23, !dbg !592
  %78 = and i32 %77, 255, !dbg !592
  %79 = sub i32 %78, 127, !dbg !592
  %80 = icmp eq i32 %79, 0, !dbg !592
  %81 = sub i32 %78, 128, !dbg !592
  %82 = icmp sgt i32 %81, 0, !dbg !592
  %83 = select i1 %82, i32 %81, i32 0, !dbg !592
  %84 = icmp slt i32 %83, 31, !dbg !592
  %85 = select i1 %84, i32 %83, i32 31, !dbg !592
  %86 = lshr i32 8388607, %85, !dbg !592
  %87 = and i32 %73, %86, !dbg !592
  %88 = icmp ne i32 %87, 0, !dbg !592
  %89 = or i1 %88, %80, !dbg !592
  %90 = icmp eq i32 %76, -1, !dbg !592
  %91 = icmp sgt i32 %76, 0, !dbg !592
  %92 = select i1 %91, i32 %76, i32 0, !dbg !592
  %93 = icmp slt i32 %92, 31, !dbg !592
  %94 = select i1 %93, i32 %92, i32 31, !dbg !592
  %95 = lshr i32 4194304, %94, !dbg !592
  %96 = select i1 %90, i32 0, i32 %95, !dbg !592
  %97 = lshr i32 8388607, %94, !dbg !592
  %98 = and i32 %71, %97, !dbg !592
  %99 = icmp eq i32 %98, %96, !dbg !592
  %100 = icmp sge i32 %76, -1, !dbg !592
  %101 = icmp slt i32 %76, 23, !dbg !592
  %102 = and i1 %99, %101, !dbg !592
  %103 = and i1 %102, %100, !dbg !592
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !592
  %105 = fsub contract float %72, %104, !dbg !592
  %106 = and i1 %89, %103, !dbg !592
  %107 = select i1 %106, float %105, float %72, !dbg !592
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !592
  %109 = fadd contract float %108, 0.000000e+00, !dbg !592
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !592
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !592
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !592
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !592
  %114 = fptosi float %113 to i8, !dbg !592
  %115 = icmp sgt i8 %114, 0, !dbg !593
  %116 = select i1 %115, i8 %114, i8 0, !dbg !593
  %117 = sitofp i8 %116 to float, !dbg !593
  %118 = bitcast float %117 to i32, !dbg !588
  %119 = call float @llvm.round.f32(float %117), !dbg !588
  %120 = bitcast float %119 to i32, !dbg !588
  %121 = lshr i32 %118, 23, !dbg !588
  %122 = and i32 %121, 255, !dbg !588
  %123 = sub i32 %122, 127, !dbg !588
  %124 = lshr i32 %120, 23, !dbg !588
  %125 = and i32 %124, 255, !dbg !588
  %126 = sub i32 %125, 127, !dbg !588
  %127 = icmp eq i32 %126, 0, !dbg !588
  %128 = sub i32 %125, 128, !dbg !588
  %129 = icmp sgt i32 %128, 0, !dbg !588
  %130 = select i1 %129, i32 %128, i32 0, !dbg !588
  %131 = icmp slt i32 %130, 31, !dbg !588
  %132 = select i1 %131, i32 %130, i32 31, !dbg !588
  %133 = lshr i32 8388607, %132, !dbg !588
  %134 = and i32 %120, %133, !dbg !588
  %135 = icmp ne i32 %134, 0, !dbg !588
  %136 = or i1 %135, %127, !dbg !588
  %137 = icmp eq i32 %123, -1, !dbg !588
  %138 = icmp sgt i32 %123, 0, !dbg !588
  %139 = select i1 %138, i32 %123, i32 0, !dbg !588
  %140 = icmp slt i32 %139, 31, !dbg !588
  %141 = select i1 %140, i32 %139, i32 31, !dbg !588
  %142 = lshr i32 4194304, %141, !dbg !588
  %143 = select i1 %137, i32 0, i32 %142, !dbg !588
  %144 = lshr i32 8388607, %141, !dbg !588
  %145 = and i32 %118, %144, !dbg !588
  %146 = icmp eq i32 %145, %143, !dbg !588
  %147 = icmp sge i32 %123, -1, !dbg !588
  %148 = icmp slt i32 %123, 23, !dbg !588
  %149 = and i1 %146, %148, !dbg !588
  %150 = and i1 %149, %147, !dbg !588
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !588
  %152 = fsub contract float %119, %151, !dbg !588
  %153 = and i1 %136, %150, !dbg !588
  %154 = select i1 %153, float %152, float %119, !dbg !588
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !588
  %156 = fadd contract float %155, 0.000000e+00, !dbg !588
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !588
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !588
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !588
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !588
  %161 = fptosi float %160 to i8, !dbg !588
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %58, !dbg !588
  store i8 %161, ptr %162, align 1, !dbg !588
  %163 = add i64 %52, 1, !dbg !588
  br label %51, !dbg !588

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !588
  br label %48, !dbg !588

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !586
  ret i32 0, !dbg !586
}

define internal i32 @"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !594 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !595
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !595
  %6 = load ptr, ptr %5, align 8, !dbg !595
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !595
  %8 = load ptr, ptr %7, align 8, !dbg !595
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !595
  %10 = load ptr, ptr %9, align 8, !dbg !595
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !595
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !595
  %13 = zext i32 %12 to i64, !dbg !595
  %14 = sdiv i64 %13, 16, !dbg !595
  %15 = mul i64 %14, 16, !dbg !595
  %16 = icmp ne i64 %13, %15, !dbg !595
  %17 = icmp slt i64 %13, 0, !dbg !595
  %18 = and i1 %16, %17, !dbg !595
  %19 = add i64 %14, -1, !dbg !595
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !595
  %21 = srem i64 %13, 16, !dbg !595
  %22 = icmp slt i64 %21, 0, !dbg !595
  %23 = add nsw i64 %21, 16, !dbg !595
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !595
  %25 = mul nsw i64 %20, 4, !dbg !595
  %26 = mul nsw i64 %24, 16, !dbg !595
  %27 = mul nsw i64 %25, 1024, !dbg !595
  %28 = add i64 %27, 301056, !dbg !595
  %29 = ptrtoint ptr %6 to i64, !dbg !595
  %30 = add i64 %29, %28, !dbg !595
  %31 = add i64 %26, 1642496, !dbg !595
  %32 = ptrtoint ptr %8 to i64, !dbg !595
  %33 = add i64 %32, %31, !dbg !595
  %34 = mul nsw i64 %25, 256, !dbg !595
  %35 = add i64 %34, %26, !dbg !595
  %36 = ptrtoint ptr %10 to i64, !dbg !595
  %37 = add i64 %36, %35, !dbg !595
  %38 = add i64 %35, 6103040, !dbg !595
  %39 = mul i64 %38, 4, !dbg !595
  %40 = add i64 %32, %39, !dbg !595
  %41 = and i64 %30, 9223372036854775807, !dbg !595
  %42 = and i64 %33, 9223372036854775807, !dbg !595
  %43 = and i64 %37, 9223372036854775807, !dbg !595
  %44 = and i64 %40, 9223372036854775807, !dbg !595
  call void asm sideeffect "fence", ""(), !dbg !595
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !595
  call void @llvm.riscv.config(i64 6, i64 4331193305032294656), !dbg !595
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !595
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !595
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !595
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !595
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !595
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !595
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !595
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !595
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !595
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !595
  call void asm sideeffect "fence", ""(), !dbg !595
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !595
  ret i32 0, !dbg !595
}

define internal i32 @"main_graph$async_dispatch_62_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !596 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !597
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !597
  %6 = load i32, ptr %5, align 4, !dbg !597
  %7 = zext i32 %6 to i64, !dbg !597
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !598
  %9 = load ptr, ptr %8, align 8, !dbg !598
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !598
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !597
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !597
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !597
  %13 = load ptr, ptr %12, align 8, !dbg !597
  %14 = mul i64 %7, 8, !dbg !597
  %15 = udiv i64 %14, 8, !dbg !597
  %16 = getelementptr i8, ptr %13, i64 %15, !dbg !597
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !597
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !597
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !597
  %19 = zext i32 %18 to i64, !dbg !597
  %20 = sdiv i64 %19, 4, !dbg !597
  %21 = mul i64 %20, 4, !dbg !597
  %22 = icmp ne i64 %19, %21, !dbg !597
  %23 = icmp slt i64 %19, 0, !dbg !597
  %24 = and i1 %22, %23, !dbg !597
  %25 = add i64 %20, -1, !dbg !597
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !597
  %27 = srem i64 %19, 4, !dbg !597
  %28 = icmp slt i64 %27, 0, !dbg !597
  %29 = add nsw i64 %27, 4, !dbg !597
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !597
  %31 = mul nsw i64 %26, 8, !dbg !597
  %32 = mul nsw i64 %30, 64, !dbg !597
  %33 = mul nsw i64 %26, -8, !dbg !597
  %34 = add i64 %33, 14, !dbg !597
  %35 = icmp slt i64 %34, 8, !dbg !597
  %36 = select i1 %35, i64 %34, i64 8, !dbg !597
  br label %37, !dbg !597

37:                                               ; preds = %65, %3
  %38 = phi i64 [ %66, %65 ], [ 0, %3 ], !dbg !597
  %39 = icmp slt i64 %38, %36, !dbg !597
  br i1 %39, label %40, label %67, !dbg !597

40:                                               ; preds = %63, %37
  %41 = phi i64 [ %64, %63 ], [ 0, %37 ], !dbg !597
  %42 = icmp slt i64 %41, 14, !dbg !597
  br i1 %42, label %43, label %65, !dbg !597

43:                                               ; preds = %46, %40
  %44 = phi i64 [ %62, %46 ], [ 0, %40 ], !dbg !597
  %45 = icmp slt i64 %44, 64, !dbg !597
  br i1 %45, label %46, label %63, !dbg !597

46:                                               ; preds = %43
  %47 = add i64 %31, %38, !dbg !597
  %48 = add i64 %32, %44, !dbg !597
  %49 = mul i64 %47, 3584, !dbg !597
  %50 = mul i64 %41, 256, !dbg !597
  %51 = add i64 %49, %50, !dbg !597
  %52 = add i64 %51, %48, !dbg !597
  %53 = getelementptr i8, ptr %9, i64 %52, !dbg !597
  %54 = load <2 x i8>, ptr %53, align 1, !dbg !597
  %55 = add i64 %47, 1, !dbg !597
  %56 = add i64 %41, 1, !dbg !597
  %57 = mul i64 %55, 4096, !dbg !597
  %58 = mul i64 %56, 256, !dbg !597
  %59 = add i64 %57, %58, !dbg !597
  %60 = add i64 %59, %48, !dbg !597
  %61 = getelementptr i8, ptr %16, i64 %60, !dbg !597
  store <2 x i8> %54, ptr %61, align 1, !dbg !597
  %62 = add i64 %44, 2, !dbg !597
  br label %43, !dbg !597

63:                                               ; preds = %43
  %64 = add i64 %41, 1, !dbg !597
  br label %40, !dbg !597

65:                                               ; preds = %40
  %66 = add i64 %38, 1, !dbg !597
  br label %37, !dbg !597

67:                                               ; preds = %37
  ret i32 0, !dbg !597
}

define internal i32 @"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !599 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !600
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !600
  %6 = load ptr, ptr %5, align 8, !dbg !600
  %7 = getelementptr i8, ptr %6, i64 50176, !dbg !600
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !600
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !600
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !600
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !600
  %11 = load ptr, ptr %10, align 8, !dbg !600
  %12 = getelementptr i8, ptr %11, i64 501760, !dbg !600
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !600
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !600
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !600
  %15 = zext i32 %14 to i64, !dbg !600
  %16 = sdiv i64 %15, 8, !dbg !600
  %17 = mul i64 %16, 8, !dbg !600
  %18 = icmp ne i64 %15, %17, !dbg !600
  %19 = icmp slt i64 %15, 0, !dbg !600
  %20 = and i1 %18, %19, !dbg !600
  %21 = add i64 %16, -1, !dbg !600
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !600
  %23 = srem i64 %15, 8, !dbg !600
  %24 = icmp slt i64 %23, 0, !dbg !600
  %25 = add nsw i64 %23, 8, !dbg !600
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !600
  %27 = mul nsw i64 %22, 2, !dbg !600
  %28 = mul nsw i64 %26, 32, !dbg !600
  br label %29, !dbg !600

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !600
  %31 = icmp slt i64 %30, 2, !dbg !600
  br i1 %31, label %32, label %83, !dbg !600

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !600
  %34 = icmp slt i64 %33, 14, !dbg !600
  br i1 %34, label %35, label %81, !dbg !600

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !600
  %37 = icmp slt i64 %36, 3, !dbg !600
  br i1 %37, label %38, label %79, !dbg !600

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !600
  %40 = add i64 %39, %27, !dbg !600
  br label %41, !dbg !600

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !600
  %43 = icmp slt i64 %42, 3, !dbg !600
  br i1 %43, label %44, label %77, !dbg !600

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !600
  br label %46, !dbg !600

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !600
  %48 = icmp slt i64 %47, 32, !dbg !600
  br i1 %48, label %49, label %75, !dbg !600

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !600
  br label %51, !dbg !600

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !600
  %53 = icmp slt i64 %52, 8, !dbg !600
  br i1 %53, label %54, label %73, !dbg !600

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !600
  %56 = mul nuw nsw i64 %40, 4096, !dbg !600
  %57 = mul nuw nsw i64 %45, 256, !dbg !600
  %58 = add nuw nsw i64 %56, %57, !dbg !600
  %59 = add nuw nsw i64 %58, %55, !dbg !600
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !600
  %61 = load i8, ptr %60, align 1, !dbg !600
  %62 = add i64 %27, %30, !dbg !600
  %63 = mul nuw nsw i64 %62, 32256, !dbg !600
  %64 = mul nuw nsw i64 %33, 2304, !dbg !600
  %65 = add nuw nsw i64 %63, %64, !dbg !600
  %66 = mul nuw nsw i64 %36, 768, !dbg !600
  %67 = add nuw nsw i64 %65, %66, !dbg !600
  %68 = mul nuw nsw i64 %42, 256, !dbg !600
  %69 = add nuw nsw i64 %67, %68, !dbg !600
  %70 = add nuw nsw i64 %69, %55, !dbg !600
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !600
  store i8 %61, ptr %71, align 1, !dbg !600
  %72 = add i64 %52, 1, !dbg !600
  br label %51, !dbg !600

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !600
  br label %46, !dbg !600

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !600
  br label %41, !dbg !600

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !600
  br label %35, !dbg !600

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !600
  br label %32, !dbg !600

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !600
  br label %29, !dbg !600

83:                                               ; preds = %29
  ret i32 0, !dbg !600
}

define internal i32 @"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !601 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !602
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !602
  %6 = load ptr, ptr %5, align 8, !dbg !602
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !602
  %8 = load ptr, ptr %7, align 8, !dbg !602
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !602
  %10 = load ptr, ptr %9, align 8, !dbg !602
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !602
  %12 = load ptr, ptr %11, align 8, !dbg !602
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !602
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !602
  %15 = zext i32 %14 to i64, !dbg !602
  %16 = sdiv i64 %15, 16, !dbg !602
  %17 = mul i64 %16, 16, !dbg !602
  %18 = icmp ne i64 %15, %17, !dbg !602
  %19 = icmp slt i64 %15, 0, !dbg !602
  %20 = and i1 %18, %19, !dbg !602
  %21 = add i64 %16, -1, !dbg !602
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !602
  %23 = srem i64 %15, 16, !dbg !602
  %24 = icmp slt i64 %23, 0, !dbg !602
  %25 = add nsw i64 %23, 16, !dbg !602
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !602
  %27 = mul nsw i64 %22, 4, !dbg !602
  %28 = mul nsw i64 %26, 16, !dbg !602
  %29 = mul nsw i64 %27, 2304, !dbg !602
  %30 = add i64 %29, 501760, !dbg !602
  %31 = ptrtoint ptr %6 to i64, !dbg !602
  %32 = add i64 %31, %30, !dbg !602
  %33 = add i64 %28, 1318784, !dbg !602
  %34 = ptrtoint ptr %8 to i64, !dbg !602
  %35 = add i64 %34, %33, !dbg !602
  %36 = mul nsw i64 %27, 256, !dbg !602
  %37 = add i64 %36, %28, !dbg !602
  %38 = ptrtoint ptr %12 to i64, !dbg !602
  %39 = add i64 %38, %37, !dbg !602
  %40 = add i64 %37, 6153216, !dbg !602
  %41 = ptrtoint ptr %10 to i64, !dbg !602
  %42 = mul i64 %40, 4, !dbg !602
  %43 = add i64 %41, %42, !dbg !602
  %44 = and i64 %32, 9223372036854775807, !dbg !602
  %45 = and i64 %35, 9223372036854775807, !dbg !602
  %46 = and i64 %39, 9223372036854775807, !dbg !602
  %47 = and i64 %43, 9223372036854775807, !dbg !602
  call void asm sideeffect "fence", ""(), !dbg !602
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !602
  call void @llvm.riscv.config(i64 6, i64 4348042023647838464), !dbg !602
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !602
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !602
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !602
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !602
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !602
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 0), !dbg !602
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !602
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !602
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !602
  %48 = add i64 %44, 2048, !dbg !602
  %49 = add i64 %45, 524288, !dbg !602
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !602
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !602
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %46), !dbg !602
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !602
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !602
  call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !602
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !602
  call void asm sideeffect "fence", ""(), !dbg !602
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !602
  ret i32 0, !dbg !602
}

define internal i32 @"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !603 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !604
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !604
  %6 = load ptr, ptr %5, align 8, !dbg !604
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !604
  %8 = load ptr, ptr %7, align 8, !dbg !604
  %9 = getelementptr i8, ptr %6, i64 301056, !dbg !605
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !605
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !604
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !604
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !604
  %13 = load ptr, ptr %12, align 8, !dbg !604
  %14 = getelementptr i8, ptr %13, i64 50176, !dbg !604
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !604
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !604
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !604
  %17 = zext i32 %16 to i64, !dbg !604
  %18 = sdiv i64 %17, 64, !dbg !604
  %19 = mul i64 %18, 64, !dbg !604
  %20 = icmp ne i64 %17, %19, !dbg !604
  %21 = icmp slt i64 %17, 0, !dbg !604
  %22 = and i1 %20, %21, !dbg !604
  %23 = add i64 %18, -1, !dbg !604
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !604
  %25 = srem i64 %17, 64, !dbg !604
  %26 = icmp slt i64 %25, 0, !dbg !604
  %27 = add nsw i64 %25, 64, !dbg !604
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !604
  %29 = mul nsw i64 %24, 4, !dbg !604
  %30 = mul nsw i64 %28, 16, !dbg !604
  %31 = alloca i8, i64 64, align 1, !dbg !604
  %32 = mul nsw i64 %29, 256, !dbg !604
  %33 = ptrtoint ptr %6 to i64, !dbg !604
  %34 = add i64 %33, %32, !dbg !604
  %35 = add i64 %30, 1904640, !dbg !604
  %36 = ptrtoint ptr %8 to i64, !dbg !604
  %37 = add i64 %36, %35, !dbg !604
  %38 = ptrtoint ptr %31 to i64, !dbg !604
  %39 = mul nsw i64 %29, 1024, !dbg !604
  %40 = add i64 %39, %30, !dbg !604
  %41 = add i64 %40, 6203392, !dbg !604
  %42 = mul i64 %41, 4, !dbg !604
  %43 = add i64 %36, %42, !dbg !604
  %44 = and i64 %34, 9223372036854775807, !dbg !604
  %45 = and i64 %37, 9223372036854775807, !dbg !604
  %46 = and i64 %38, 9223372036854775807, !dbg !604
  %47 = and i64 %43, 9223372036854775807, !dbg !604
  call void asm sideeffect "fence", ""(), !dbg !604
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !604
  call void @llvm.riscv.config(i64 2, i64 4337200486810648592), !dbg !604
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !604
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !604
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !604
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !604
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !604
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !604
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !604
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !604
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !604
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !604
  call void asm sideeffect "fence", ""(), !dbg !604
  br label %48, !dbg !606

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !606
  %50 = icmp slt i64 %49, 4, !dbg !606
  br i1 %50, label %51, label %166, !dbg !606

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !606
  %53 = icmp slt i64 %52, 16, !dbg !606
  br i1 %53, label %54, label %164, !dbg !606

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !606
  %56 = add nuw nsw i64 %55, %52, !dbg !606
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !606
  %58 = load i8, ptr %57, align 1, !dbg !606
  %59 = add i64 %29, %49, !dbg !606
  %60 = add i64 %30, %52, !dbg !606
  %61 = mul nuw nsw i64 %59, 1024, !dbg !606
  %62 = add nuw nsw i64 %61, %60, !dbg !606
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !606
  %64 = load i8, ptr %63, align 1, !dbg !606
  %65 = sitofp i8 %64 to float, !dbg !607
  %66 = fmul contract float %65, 0x3FB432EDA0000000, !dbg !607
  %67 = sitofp i8 %58 to float, !dbg !608
  %68 = fmul contract float %67, 0x3FB37444C0000000, !dbg !608
  %69 = fadd contract float %68, %66, !dbg !609
  %70 = fdiv float %69, 0x3FB442A3E0000000, !dbg !610
  %71 = bitcast float %70 to i32, !dbg !610
  %72 = call float @llvm.round.f32(float %70), !dbg !610
  %73 = bitcast float %72 to i32, !dbg !610
  %74 = lshr i32 %71, 23, !dbg !610
  %75 = and i32 %74, 255, !dbg !610
  %76 = sub i32 %75, 127, !dbg !610
  %77 = lshr i32 %73, 23, !dbg !610
  %78 = and i32 %77, 255, !dbg !610
  %79 = sub i32 %78, 127, !dbg !610
  %80 = icmp eq i32 %79, 0, !dbg !610
  %81 = sub i32 %78, 128, !dbg !610
  %82 = icmp sgt i32 %81, 0, !dbg !610
  %83 = select i1 %82, i32 %81, i32 0, !dbg !610
  %84 = icmp slt i32 %83, 31, !dbg !610
  %85 = select i1 %84, i32 %83, i32 31, !dbg !610
  %86 = lshr i32 8388607, %85, !dbg !610
  %87 = and i32 %73, %86, !dbg !610
  %88 = icmp ne i32 %87, 0, !dbg !610
  %89 = or i1 %88, %80, !dbg !610
  %90 = icmp eq i32 %76, -1, !dbg !610
  %91 = icmp sgt i32 %76, 0, !dbg !610
  %92 = select i1 %91, i32 %76, i32 0, !dbg !610
  %93 = icmp slt i32 %92, 31, !dbg !610
  %94 = select i1 %93, i32 %92, i32 31, !dbg !610
  %95 = lshr i32 4194304, %94, !dbg !610
  %96 = select i1 %90, i32 0, i32 %95, !dbg !610
  %97 = lshr i32 8388607, %94, !dbg !610
  %98 = and i32 %71, %97, !dbg !610
  %99 = icmp eq i32 %98, %96, !dbg !610
  %100 = icmp sge i32 %76, -1, !dbg !610
  %101 = icmp slt i32 %76, 23, !dbg !610
  %102 = and i1 %99, %101, !dbg !610
  %103 = and i1 %102, %100, !dbg !610
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !610
  %105 = fsub contract float %72, %104, !dbg !610
  %106 = and i1 %89, %103, !dbg !610
  %107 = select i1 %106, float %105, float %72, !dbg !610
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !610
  %109 = fadd contract float %108, 0.000000e+00, !dbg !610
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !610
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !610
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !610
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !610
  %114 = fptosi float %113 to i8, !dbg !610
  %115 = icmp sgt i8 %114, 0, !dbg !611
  %116 = select i1 %115, i8 %114, i8 0, !dbg !611
  %117 = sitofp i8 %116 to float, !dbg !611
  %118 = bitcast float %117 to i32, !dbg !606
  %119 = call float @llvm.round.f32(float %117), !dbg !606
  %120 = bitcast float %119 to i32, !dbg !606
  %121 = lshr i32 %118, 23, !dbg !606
  %122 = and i32 %121, 255, !dbg !606
  %123 = sub i32 %122, 127, !dbg !606
  %124 = lshr i32 %120, 23, !dbg !606
  %125 = and i32 %124, 255, !dbg !606
  %126 = sub i32 %125, 127, !dbg !606
  %127 = icmp eq i32 %126, 0, !dbg !606
  %128 = sub i32 %125, 128, !dbg !606
  %129 = icmp sgt i32 %128, 0, !dbg !606
  %130 = select i1 %129, i32 %128, i32 0, !dbg !606
  %131 = icmp slt i32 %130, 31, !dbg !606
  %132 = select i1 %131, i32 %130, i32 31, !dbg !606
  %133 = lshr i32 8388607, %132, !dbg !606
  %134 = and i32 %120, %133, !dbg !606
  %135 = icmp ne i32 %134, 0, !dbg !606
  %136 = or i1 %135, %127, !dbg !606
  %137 = icmp eq i32 %123, -1, !dbg !606
  %138 = icmp sgt i32 %123, 0, !dbg !606
  %139 = select i1 %138, i32 %123, i32 0, !dbg !606
  %140 = icmp slt i32 %139, 31, !dbg !606
  %141 = select i1 %140, i32 %139, i32 31, !dbg !606
  %142 = lshr i32 4194304, %141, !dbg !606
  %143 = select i1 %137, i32 0, i32 %142, !dbg !606
  %144 = lshr i32 8388607, %141, !dbg !606
  %145 = and i32 %118, %144, !dbg !606
  %146 = icmp eq i32 %145, %143, !dbg !606
  %147 = icmp sge i32 %123, -1, !dbg !606
  %148 = icmp slt i32 %123, 23, !dbg !606
  %149 = and i1 %146, %148, !dbg !606
  %150 = and i1 %149, %147, !dbg !606
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !606
  %152 = fsub contract float %119, %151, !dbg !606
  %153 = and i1 %136, %150, !dbg !606
  %154 = select i1 %153, float %152, float %119, !dbg !606
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !606
  %156 = fadd contract float %155, 0.000000e+00, !dbg !606
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !606
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !606
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !606
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !606
  %161 = fptosi float %160 to i8, !dbg !606
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !606
  store i8 %161, ptr %162, align 1, !dbg !606
  %163 = add i64 %52, 1, !dbg !606
  br label %51, !dbg !606

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !606
  br label %48, !dbg !606

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !604
  ret i32 0, !dbg !604
}

define internal i32 @"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !612 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !613
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !613
  %6 = load ptr, ptr %5, align 8, !dbg !613
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !613
  %8 = load ptr, ptr %7, align 8, !dbg !613
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !613
  %10 = load ptr, ptr %9, align 8, !dbg !613
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !613
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !613
  %13 = zext i32 %12 to i64, !dbg !613
  %14 = sdiv i64 %13, 16, !dbg !613
  %15 = mul i64 %14, 16, !dbg !613
  %16 = icmp ne i64 %13, %15, !dbg !613
  %17 = icmp slt i64 %13, 0, !dbg !613
  %18 = and i1 %16, %17, !dbg !613
  %19 = add i64 %14, -1, !dbg !613
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !613
  %21 = srem i64 %13, 16, !dbg !613
  %22 = icmp slt i64 %21, 0, !dbg !613
  %23 = add nsw i64 %21, 16, !dbg !613
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !613
  %25 = mul nsw i64 %20, 4, !dbg !613
  %26 = mul nsw i64 %24, 16, !dbg !613
  %27 = mul nsw i64 %25, 1024, !dbg !613
  %28 = add i64 %27, 50176, !dbg !613
  %29 = ptrtoint ptr %6 to i64, !dbg !613
  %30 = add i64 %29, %28, !dbg !613
  %31 = add i64 %26, 2166784, !dbg !613
  %32 = ptrtoint ptr %8 to i64, !dbg !613
  %33 = add i64 %32, %31, !dbg !613
  %34 = mul nsw i64 %25, 256, !dbg !613
  %35 = add i64 %34, %26, !dbg !613
  %36 = ptrtoint ptr %10 to i64, !dbg !613
  %37 = add i64 %36, %35, !dbg !613
  %38 = add i64 %35, 6404096, !dbg !613
  %39 = mul i64 %38, 4, !dbg !613
  %40 = add i64 %32, %39, !dbg !613
  %41 = and i64 %30, 9223372036854775807, !dbg !613
  %42 = and i64 %33, 9223372036854775807, !dbg !613
  %43 = and i64 %37, 9223372036854775807, !dbg !613
  %44 = and i64 %40, 9223372036854775807, !dbg !613
  call void asm sideeffect "fence", ""(), !dbg !613
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !613
  call void @llvm.riscv.config(i64 6, i64 4332150240925712640), !dbg !613
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !613
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !613
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !613
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !613
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !613
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !613
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !613
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !613
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !613
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !613
  call void asm sideeffect "fence", ""(), !dbg !613
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !613
  ret i32 0, !dbg !613
}

define internal i32 @"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !614 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !615
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !615
  %6 = load ptr, ptr %5, align 8, !dbg !615
  %7 = getelementptr i8, ptr %6, i64 250880, !dbg !615
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !615
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !615
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !615
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !615
  %11 = load ptr, ptr %10, align 8, !dbg !615
  %12 = getelementptr i8, ptr %11, i64 316416, !dbg !615
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !615
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !615
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !615
  %15 = zext i32 %14 to i64, !dbg !615
  %16 = sdiv i64 %15, 8, !dbg !615
  %17 = mul i64 %16, 8, !dbg !615
  %18 = icmp ne i64 %15, %17, !dbg !615
  %19 = icmp slt i64 %15, 0, !dbg !615
  %20 = and i1 %18, %19, !dbg !615
  %21 = add i64 %16, -1, !dbg !615
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !615
  %23 = srem i64 %15, 8, !dbg !615
  %24 = icmp slt i64 %23, 0, !dbg !615
  %25 = add nsw i64 %23, 8, !dbg !615
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !615
  %27 = mul nsw i64 %22, 2, !dbg !615
  %28 = mul nsw i64 %26, 32, !dbg !615
  br label %29, !dbg !615

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !615
  %31 = icmp slt i64 %30, 2, !dbg !615
  br i1 %31, label %32, label %83, !dbg !615

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !615
  %34 = icmp slt i64 %33, 14, !dbg !615
  br i1 %34, label %35, label %81, !dbg !615

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !615
  %37 = icmp slt i64 %36, 3, !dbg !615
  br i1 %37, label %38, label %79, !dbg !615

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !615
  %40 = add i64 %39, %27, !dbg !615
  br label %41, !dbg !615

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !615
  %43 = icmp slt i64 %42, 3, !dbg !615
  br i1 %43, label %44, label %77, !dbg !615

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !615
  br label %46, !dbg !615

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !615
  %48 = icmp slt i64 %47, 32, !dbg !615
  br i1 %48, label %49, label %75, !dbg !615

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !615
  br label %51, !dbg !615

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !615
  %53 = icmp slt i64 %52, 8, !dbg !615
  br i1 %53, label %54, label %73, !dbg !615

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !615
  %56 = mul nuw nsw i64 %40, 4096, !dbg !615
  %57 = mul nuw nsw i64 %45, 256, !dbg !615
  %58 = add nuw nsw i64 %56, %57, !dbg !615
  %59 = add nuw nsw i64 %58, %55, !dbg !615
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !615
  %61 = load i8, ptr %60, align 1, !dbg !615
  %62 = add i64 %27, %30, !dbg !615
  %63 = mul nuw nsw i64 %62, 32256, !dbg !615
  %64 = mul nuw nsw i64 %33, 2304, !dbg !615
  %65 = add nuw nsw i64 %63, %64, !dbg !615
  %66 = mul nuw nsw i64 %36, 768, !dbg !615
  %67 = add nuw nsw i64 %65, %66, !dbg !615
  %68 = mul nuw nsw i64 %42, 256, !dbg !615
  %69 = add nuw nsw i64 %67, %68, !dbg !615
  %70 = add nuw nsw i64 %69, %55, !dbg !615
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !615
  store i8 %61, ptr %71, align 1, !dbg !615
  %72 = add i64 %52, 1, !dbg !615
  br label %51, !dbg !615

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !615
  br label %46, !dbg !615

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !615
  br label %41, !dbg !615

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !615
  br label %35, !dbg !615

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !615
  br label %32, !dbg !615

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !615
  br label %29, !dbg !615

83:                                               ; preds = %29
  ret i32 0, !dbg !615
}

define internal i32 @"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !616 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !617
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !617
  %6 = load ptr, ptr %5, align 8, !dbg !617
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !617
  %8 = load ptr, ptr %7, align 8, !dbg !617
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !617
  %10 = load ptr, ptr %9, align 8, !dbg !617
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !617
  %12 = load ptr, ptr %11, align 8, !dbg !617
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !617
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !617
  %15 = zext i32 %14 to i64, !dbg !617
  %16 = sdiv i64 %15, 16, !dbg !617
  %17 = mul i64 %16, 16, !dbg !617
  %18 = icmp ne i64 %15, %17, !dbg !617
  %19 = icmp slt i64 %15, 0, !dbg !617
  %20 = and i1 %18, %19, !dbg !617
  %21 = add i64 %16, -1, !dbg !617
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !617
  %23 = srem i64 %15, 16, !dbg !617
  %24 = icmp slt i64 %23, 0, !dbg !617
  %25 = add nsw i64 %23, 16, !dbg !617
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !617
  %27 = mul nsw i64 %22, 4, !dbg !617
  %28 = mul nsw i64 %26, 16, !dbg !617
  %29 = mul nsw i64 %27, 2304, !dbg !617
  %30 = add i64 %29, 316416, !dbg !617
  %31 = ptrtoint ptr %6 to i64, !dbg !617
  %32 = add i64 %31, %30, !dbg !617
  %33 = add i64 %28, 1908608, !dbg !617
  %34 = ptrtoint ptr %8 to i64, !dbg !617
  %35 = add i64 %34, %33, !dbg !617
  %36 = mul nsw i64 %27, 256, !dbg !617
  %37 = add i64 %36, %28, !dbg !617
  %38 = ptrtoint ptr %12 to i64, !dbg !617
  %39 = add i64 %38, %37, !dbg !617
  %40 = add i64 %37, 6454272, !dbg !617
  %41 = ptrtoint ptr %10 to i64, !dbg !617
  %42 = mul i64 %40, 4, !dbg !617
  %43 = add i64 %41, %42, !dbg !617
  %44 = and i64 %32, 9223372036854775807, !dbg !617
  %45 = and i64 %35, 9223372036854775807, !dbg !617
  %46 = and i64 %39, 9223372036854775807, !dbg !617
  %47 = and i64 %43, 9223372036854775807, !dbg !617
  call void asm sideeffect "fence", ""(), !dbg !617
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !617
  call void @llvm.riscv.config(i64 6, i64 4288824930126004480), !dbg !617
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !617
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !617
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !617
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !617
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !617
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 0), !dbg !617
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !617
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !617
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !617
  %48 = add i64 %44, 2048, !dbg !617
  %49 = add i64 %45, 524288, !dbg !617
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !617
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !617
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %46), !dbg !617
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !617
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !617
  call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !617
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !617
  call void asm sideeffect "fence", ""(), !dbg !617
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !617
  ret i32 0, !dbg !617
}

define internal i32 @"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !618 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !619
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !619
  %6 = load ptr, ptr %5, align 8, !dbg !619
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !619
  %8 = load ptr, ptr %7, align 8, !dbg !619
  %9 = getelementptr i8, ptr %6, i64 50176, !dbg !620
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !620
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !619
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !619
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !619
  %13 = load ptr, ptr %12, align 8, !dbg !619
  %14 = getelementptr i8, ptr %13, i64 250880, !dbg !619
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !619
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !619
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !619
  %17 = zext i32 %16 to i64, !dbg !619
  %18 = sdiv i64 %17, 64, !dbg !619
  %19 = mul i64 %18, 64, !dbg !619
  %20 = icmp ne i64 %17, %19, !dbg !619
  %21 = icmp slt i64 %17, 0, !dbg !619
  %22 = and i1 %20, %21, !dbg !619
  %23 = add i64 %18, -1, !dbg !619
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !619
  %25 = srem i64 %17, 64, !dbg !619
  %26 = icmp slt i64 %25, 0, !dbg !619
  %27 = add nsw i64 %25, 64, !dbg !619
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !619
  %29 = mul nsw i64 %24, 4, !dbg !619
  %30 = mul nsw i64 %28, 16, !dbg !619
  %31 = alloca i8, i64 64, align 1, !dbg !619
  %32 = mul nsw i64 %29, 256, !dbg !619
  %33 = ptrtoint ptr %6 to i64, !dbg !619
  %34 = add i64 %33, %32, !dbg !619
  %35 = add i64 %30, 2428928, !dbg !619
  %36 = ptrtoint ptr %8 to i64, !dbg !619
  %37 = add i64 %36, %35, !dbg !619
  %38 = ptrtoint ptr %31 to i64, !dbg !619
  %39 = mul nsw i64 %29, 1024, !dbg !619
  %40 = add i64 %39, %30, !dbg !619
  %41 = add i64 %40, 6504448, !dbg !619
  %42 = mul i64 %41, 4, !dbg !619
  %43 = add i64 %36, %42, !dbg !619
  %44 = and i64 %34, 9223372036854775807, !dbg !619
  %45 = and i64 %37, 9223372036854775807, !dbg !619
  %46 = and i64 %38, 9223372036854775807, !dbg !619
  %47 = and i64 %43, 9223372036854775807, !dbg !619
  call void asm sideeffect "fence", ""(), !dbg !619
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !619
  call void @llvm.riscv.config(i64 2, i64 4369865826220638224), !dbg !619
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !619
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !619
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !619
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !619
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !619
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !619
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !619
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !619
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !619
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !619
  call void asm sideeffect "fence", ""(), !dbg !619
  br label %48, !dbg !621

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !621
  %50 = icmp slt i64 %49, 4, !dbg !621
  br i1 %50, label %51, label %166, !dbg !621

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !621
  %53 = icmp slt i64 %52, 16, !dbg !621
  br i1 %53, label %54, label %164, !dbg !621

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !621
  %56 = add nuw nsw i64 %55, %52, !dbg !621
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !621
  %58 = load i8, ptr %57, align 1, !dbg !621
  %59 = add i64 %29, %49, !dbg !621
  %60 = add i64 %30, %52, !dbg !621
  %61 = mul nuw nsw i64 %59, 1024, !dbg !621
  %62 = add nuw nsw i64 %61, %60, !dbg !621
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !621
  %64 = load i8, ptr %63, align 1, !dbg !621
  %65 = sitofp i8 %64 to float, !dbg !622
  %66 = fmul contract float %65, 0x3FB442A3E0000000, !dbg !622
  %67 = sitofp i8 %58 to float, !dbg !623
  %68 = fmul contract float %67, 0x3FB96CEE00000000, !dbg !623
  %69 = fadd contract float %68, %66, !dbg !624
  %70 = fdiv float %69, 0x3FC2B669A0000000, !dbg !625
  %71 = bitcast float %70 to i32, !dbg !625
  %72 = call float @llvm.round.f32(float %70), !dbg !625
  %73 = bitcast float %72 to i32, !dbg !625
  %74 = lshr i32 %71, 23, !dbg !625
  %75 = and i32 %74, 255, !dbg !625
  %76 = sub i32 %75, 127, !dbg !625
  %77 = lshr i32 %73, 23, !dbg !625
  %78 = and i32 %77, 255, !dbg !625
  %79 = sub i32 %78, 127, !dbg !625
  %80 = icmp eq i32 %79, 0, !dbg !625
  %81 = sub i32 %78, 128, !dbg !625
  %82 = icmp sgt i32 %81, 0, !dbg !625
  %83 = select i1 %82, i32 %81, i32 0, !dbg !625
  %84 = icmp slt i32 %83, 31, !dbg !625
  %85 = select i1 %84, i32 %83, i32 31, !dbg !625
  %86 = lshr i32 8388607, %85, !dbg !625
  %87 = and i32 %73, %86, !dbg !625
  %88 = icmp ne i32 %87, 0, !dbg !625
  %89 = or i1 %88, %80, !dbg !625
  %90 = icmp eq i32 %76, -1, !dbg !625
  %91 = icmp sgt i32 %76, 0, !dbg !625
  %92 = select i1 %91, i32 %76, i32 0, !dbg !625
  %93 = icmp slt i32 %92, 31, !dbg !625
  %94 = select i1 %93, i32 %92, i32 31, !dbg !625
  %95 = lshr i32 4194304, %94, !dbg !625
  %96 = select i1 %90, i32 0, i32 %95, !dbg !625
  %97 = lshr i32 8388607, %94, !dbg !625
  %98 = and i32 %71, %97, !dbg !625
  %99 = icmp eq i32 %98, %96, !dbg !625
  %100 = icmp sge i32 %76, -1, !dbg !625
  %101 = icmp slt i32 %76, 23, !dbg !625
  %102 = and i1 %99, %101, !dbg !625
  %103 = and i1 %102, %100, !dbg !625
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !625
  %105 = fsub contract float %72, %104, !dbg !625
  %106 = and i1 %89, %103, !dbg !625
  %107 = select i1 %106, float %105, float %72, !dbg !625
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !625
  %109 = fadd contract float %108, 0.000000e+00, !dbg !625
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !625
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !625
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !625
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !625
  %114 = fptosi float %113 to i8, !dbg !625
  %115 = icmp sgt i8 %114, 0, !dbg !626
  %116 = select i1 %115, i8 %114, i8 0, !dbg !626
  %117 = sitofp i8 %116 to float, !dbg !626
  %118 = bitcast float %117 to i32, !dbg !621
  %119 = call float @llvm.round.f32(float %117), !dbg !621
  %120 = bitcast float %119 to i32, !dbg !621
  %121 = lshr i32 %118, 23, !dbg !621
  %122 = and i32 %121, 255, !dbg !621
  %123 = sub i32 %122, 127, !dbg !621
  %124 = lshr i32 %120, 23, !dbg !621
  %125 = and i32 %124, 255, !dbg !621
  %126 = sub i32 %125, 127, !dbg !621
  %127 = icmp eq i32 %126, 0, !dbg !621
  %128 = sub i32 %125, 128, !dbg !621
  %129 = icmp sgt i32 %128, 0, !dbg !621
  %130 = select i1 %129, i32 %128, i32 0, !dbg !621
  %131 = icmp slt i32 %130, 31, !dbg !621
  %132 = select i1 %131, i32 %130, i32 31, !dbg !621
  %133 = lshr i32 8388607, %132, !dbg !621
  %134 = and i32 %120, %133, !dbg !621
  %135 = icmp ne i32 %134, 0, !dbg !621
  %136 = or i1 %135, %127, !dbg !621
  %137 = icmp eq i32 %123, -1, !dbg !621
  %138 = icmp sgt i32 %123, 0, !dbg !621
  %139 = select i1 %138, i32 %123, i32 0, !dbg !621
  %140 = icmp slt i32 %139, 31, !dbg !621
  %141 = select i1 %140, i32 %139, i32 31, !dbg !621
  %142 = lshr i32 4194304, %141, !dbg !621
  %143 = select i1 %137, i32 0, i32 %142, !dbg !621
  %144 = lshr i32 8388607, %141, !dbg !621
  %145 = and i32 %118, %144, !dbg !621
  %146 = icmp eq i32 %145, %143, !dbg !621
  %147 = icmp sge i32 %123, -1, !dbg !621
  %148 = icmp slt i32 %123, 23, !dbg !621
  %149 = and i1 %146, %148, !dbg !621
  %150 = and i1 %149, %147, !dbg !621
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !621
  %152 = fsub contract float %119, %151, !dbg !621
  %153 = and i1 %136, %150, !dbg !621
  %154 = select i1 %153, float %152, float %119, !dbg !621
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !621
  %156 = fadd contract float %155, 0.000000e+00, !dbg !621
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !621
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !621
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !621
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !621
  %161 = fptosi float %160 to i8, !dbg !621
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !621
  store i8 %161, ptr %162, align 1, !dbg !621
  %163 = add i64 %52, 1, !dbg !621
  br label %51, !dbg !621

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !621
  br label %48, !dbg !621

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !619
  ret i32 0, !dbg !619
}

define internal i32 @"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !627 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !628
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !628
  %6 = load ptr, ptr %5, align 8, !dbg !628
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !628
  %8 = load ptr, ptr %7, align 8, !dbg !628
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !628
  %10 = load ptr, ptr %9, align 8, !dbg !628
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !628
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !628
  %13 = zext i32 %12 to i64, !dbg !628
  %14 = sdiv i64 %13, 16, !dbg !628
  %15 = mul i64 %14, 16, !dbg !628
  %16 = icmp ne i64 %13, %15, !dbg !628
  %17 = icmp slt i64 %13, 0, !dbg !628
  %18 = and i1 %16, %17, !dbg !628
  %19 = add i64 %14, -1, !dbg !628
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !628
  %21 = srem i64 %13, 16, !dbg !628
  %22 = icmp slt i64 %21, 0, !dbg !628
  %23 = add nsw i64 %21, 16, !dbg !628
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !628
  %25 = mul nsw i64 %20, 4, !dbg !628
  %26 = mul nsw i64 %24, 16, !dbg !628
  %27 = mul nsw i64 %25, 1024, !dbg !628
  %28 = add i64 %27, 250880, !dbg !628
  %29 = ptrtoint ptr %6 to i64, !dbg !628
  %30 = add i64 %29, %28, !dbg !628
  %31 = add i64 %26, 2691072, !dbg !628
  %32 = ptrtoint ptr %8 to i64, !dbg !628
  %33 = add i64 %32, %31, !dbg !628
  %34 = mul nsw i64 %25, 256, !dbg !628
  %35 = add i64 %34, %26, !dbg !628
  %36 = ptrtoint ptr %10 to i64, !dbg !628
  %37 = add i64 %36, %35, !dbg !628
  %38 = add i64 %35, 6705152, !dbg !628
  %39 = mul i64 %38, 4, !dbg !628
  %40 = add i64 %32, %39, !dbg !628
  %41 = and i64 %30, 9223372036854775807, !dbg !628
  %42 = and i64 %33, 9223372036854775807, !dbg !628
  %43 = and i64 %37, 9223372036854775807, !dbg !628
  %44 = and i64 %40, 9223372036854775807, !dbg !628
  call void asm sideeffect "fence", ""(), !dbg !628
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !628
  call void @llvm.riscv.config(i64 6, i64 4263493105640014080), !dbg !628
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !628
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !628
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !628
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !628
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !628
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !628
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !628
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !628
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !628
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !628
  call void asm sideeffect "fence", ""(), !dbg !628
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !628
  ret i32 0, !dbg !628
}

define internal i32 @"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !629 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !630
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !630
  %6 = load ptr, ptr %5, align 8, !dbg !630
  %7 = getelementptr i8, ptr %6, i64 50176, !dbg !630
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !630
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !630
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !630
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !630
  %11 = load ptr, ptr %10, align 8, !dbg !630
  %12 = getelementptr i8, ptr %11, i64 451584, !dbg !630
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !630
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !630
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !630
  %15 = zext i32 %14 to i64, !dbg !630
  %16 = sdiv i64 %15, 8, !dbg !630
  %17 = mul i64 %16, 8, !dbg !630
  %18 = icmp ne i64 %15, %17, !dbg !630
  %19 = icmp slt i64 %15, 0, !dbg !630
  %20 = and i1 %18, %19, !dbg !630
  %21 = add i64 %16, -1, !dbg !630
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !630
  %23 = srem i64 %15, 8, !dbg !630
  %24 = icmp slt i64 %23, 0, !dbg !630
  %25 = add nsw i64 %23, 8, !dbg !630
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !630
  %27 = mul nsw i64 %22, 2, !dbg !630
  %28 = mul nsw i64 %26, 32, !dbg !630
  br label %29, !dbg !630

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !630
  %31 = icmp slt i64 %30, 2, !dbg !630
  br i1 %31, label %32, label %83, !dbg !630

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !630
  %34 = icmp slt i64 %33, 14, !dbg !630
  br i1 %34, label %35, label %81, !dbg !630

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !630
  %37 = icmp slt i64 %36, 3, !dbg !630
  br i1 %37, label %38, label %79, !dbg !630

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !630
  %40 = add i64 %39, %27, !dbg !630
  br label %41, !dbg !630

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !630
  %43 = icmp slt i64 %42, 3, !dbg !630
  br i1 %43, label %44, label %77, !dbg !630

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !630
  br label %46, !dbg !630

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !630
  %48 = icmp slt i64 %47, 32, !dbg !630
  br i1 %48, label %49, label %75, !dbg !630

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !630
  br label %51, !dbg !630

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !630
  %53 = icmp slt i64 %52, 8, !dbg !630
  br i1 %53, label %54, label %73, !dbg !630

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !630
  %56 = mul nuw nsw i64 %40, 4096, !dbg !630
  %57 = mul nuw nsw i64 %45, 256, !dbg !630
  %58 = add nuw nsw i64 %56, %57, !dbg !630
  %59 = add nuw nsw i64 %58, %55, !dbg !630
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !630
  %61 = load i8, ptr %60, align 1, !dbg !630
  %62 = add i64 %27, %30, !dbg !630
  %63 = mul nuw nsw i64 %62, 32256, !dbg !630
  %64 = mul nuw nsw i64 %33, 2304, !dbg !630
  %65 = add nuw nsw i64 %63, %64, !dbg !630
  %66 = mul nuw nsw i64 %36, 768, !dbg !630
  %67 = add nuw nsw i64 %65, %66, !dbg !630
  %68 = mul nuw nsw i64 %42, 256, !dbg !630
  %69 = add nuw nsw i64 %67, %68, !dbg !630
  %70 = add nuw nsw i64 %69, %55, !dbg !630
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !630
  store i8 %61, ptr %71, align 1, !dbg !630
  %72 = add i64 %52, 1, !dbg !630
  br label %51, !dbg !630

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !630
  br label %46, !dbg !630

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !630
  br label %41, !dbg !630

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !630
  br label %35, !dbg !630

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !630
  br label %32, !dbg !630

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !630
  br label %29, !dbg !630

83:                                               ; preds = %29
  ret i32 0, !dbg !630
}

define internal i32 @"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !631 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !632
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !632
  %6 = load ptr, ptr %5, align 8, !dbg !632
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !632
  %8 = load ptr, ptr %7, align 8, !dbg !632
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !632
  %10 = load ptr, ptr %9, align 8, !dbg !632
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !632
  %12 = load ptr, ptr %11, align 8, !dbg !632
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !632
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !632
  %15 = zext i32 %14 to i64, !dbg !632
  %16 = sdiv i64 %15, 16, !dbg !632
  %17 = mul i64 %16, 16, !dbg !632
  %18 = icmp ne i64 %15, %17, !dbg !632
  %19 = icmp slt i64 %15, 0, !dbg !632
  %20 = and i1 %18, %19, !dbg !632
  %21 = add i64 %16, -1, !dbg !632
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !632
  %23 = srem i64 %15, 16, !dbg !632
  %24 = icmp slt i64 %23, 0, !dbg !632
  %25 = add nsw i64 %23, 16, !dbg !632
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !632
  %27 = mul nsw i64 %22, 4, !dbg !632
  %28 = mul nsw i64 %26, 16, !dbg !632
  %29 = mul nsw i64 %27, 2304, !dbg !632
  %30 = add i64 %29, 451584, !dbg !632
  %31 = ptrtoint ptr %6 to i64, !dbg !632
  %32 = add i64 %31, %30, !dbg !632
  %33 = add i64 %28, 2498432, !dbg !632
  %34 = ptrtoint ptr %8 to i64, !dbg !632
  %35 = add i64 %34, %33, !dbg !632
  %36 = mul nsw i64 %27, 256, !dbg !632
  %37 = add i64 %36, %28, !dbg !632
  %38 = ptrtoint ptr %12 to i64, !dbg !632
  %39 = add i64 %38, %37, !dbg !632
  %40 = add i64 %37, 6755328, !dbg !632
  %41 = ptrtoint ptr %10 to i64, !dbg !632
  %42 = mul i64 %40, 4, !dbg !632
  %43 = add i64 %41, %42, !dbg !632
  %44 = and i64 %32, 9223372036854775807, !dbg !632
  %45 = and i64 %35, 9223372036854775807, !dbg !632
  %46 = and i64 %39, 9223372036854775807, !dbg !632
  %47 = and i64 %43, 9223372036854775807, !dbg !632
  call void asm sideeffect "fence", ""(), !dbg !632
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !632
  call void @llvm.riscv.config(i64 6, i64 4323524580795744512), !dbg !632
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !632
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !632
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !632
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !632
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !632
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 0), !dbg !632
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !632
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !632
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !632
  %48 = add i64 %44, 2048, !dbg !632
  %49 = add i64 %45, 524288, !dbg !632
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !632
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !632
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %46), !dbg !632
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !632
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !632
  call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !632
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !632
  call void asm sideeffect "fence", ""(), !dbg !632
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !632
  ret i32 0, !dbg !632
}

define internal i32 @"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !633 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !634
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !634
  %6 = load ptr, ptr %5, align 8, !dbg !634
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !634
  %8 = load ptr, ptr %7, align 8, !dbg !634
  %9 = getelementptr i8, ptr %6, i64 250880, !dbg !635
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !635
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !634
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !634
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !634
  %13 = load ptr, ptr %12, align 8, !dbg !634
  %14 = getelementptr i8, ptr %13, i64 50176, !dbg !634
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !634
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !634
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !634
  %17 = zext i32 %16 to i64, !dbg !634
  %18 = sdiv i64 %17, 64, !dbg !634
  %19 = mul i64 %18, 64, !dbg !634
  %20 = icmp ne i64 %17, %19, !dbg !634
  %21 = icmp slt i64 %17, 0, !dbg !634
  %22 = and i1 %20, %21, !dbg !634
  %23 = add i64 %18, -1, !dbg !634
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !634
  %25 = srem i64 %17, 64, !dbg !634
  %26 = icmp slt i64 %25, 0, !dbg !634
  %27 = add nsw i64 %25, 64, !dbg !634
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !634
  %29 = mul nsw i64 %24, 4, !dbg !634
  %30 = mul nsw i64 %28, 16, !dbg !634
  %31 = alloca i8, i64 64, align 1, !dbg !634
  %32 = mul nsw i64 %29, 256, !dbg !634
  %33 = ptrtoint ptr %6 to i64, !dbg !634
  %34 = add i64 %33, %32, !dbg !634
  %35 = add i64 %30, 2953216, !dbg !634
  %36 = ptrtoint ptr %8 to i64, !dbg !634
  %37 = add i64 %36, %35, !dbg !634
  %38 = ptrtoint ptr %31 to i64, !dbg !634
  %39 = mul nsw i64 %29, 1024, !dbg !634
  %40 = add i64 %39, %30, !dbg !634
  %41 = add i64 %40, 6805504, !dbg !634
  %42 = mul i64 %41, 4, !dbg !634
  %43 = add i64 %36, %42, !dbg !634
  %44 = and i64 %34, 9223372036854775807, !dbg !634
  %45 = and i64 %37, 9223372036854775807, !dbg !634
  %46 = and i64 %38, 9223372036854775807, !dbg !634
  %47 = and i64 %43, 9223372036854775807, !dbg !634
  call void asm sideeffect "fence", ""(), !dbg !634
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !634
  call void @llvm.riscv.config(i64 2, i64 4346944990216192016), !dbg !634
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !634
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !634
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !634
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !634
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !634
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !634
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !634
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !634
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !634
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !634
  call void asm sideeffect "fence", ""(), !dbg !634
  br label %48, !dbg !636

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !636
  %50 = icmp slt i64 %49, 4, !dbg !636
  br i1 %50, label %51, label %166, !dbg !636

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !636
  %53 = icmp slt i64 %52, 16, !dbg !636
  br i1 %53, label %54, label %164, !dbg !636

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !636
  %56 = add nuw nsw i64 %55, %52, !dbg !636
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !636
  %58 = load i8, ptr %57, align 1, !dbg !636
  %59 = add i64 %29, %49, !dbg !636
  %60 = add i64 %30, %52, !dbg !636
  %61 = mul nuw nsw i64 %59, 1024, !dbg !636
  %62 = add nuw nsw i64 %61, %60, !dbg !636
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !636
  %64 = load i8, ptr %63, align 1, !dbg !636
  %65 = sitofp i8 %64 to float, !dbg !637
  %66 = fmul contract float %65, 0x3FC2B669A0000000, !dbg !637
  %67 = sitofp i8 %58 to float, !dbg !638
  %68 = fmul contract float %67, 0x3FD862E880000000, !dbg !638
  %69 = fadd contract float %68, %66, !dbg !639
  %70 = fdiv float %69, 0x3FD86BBA20000000, !dbg !640
  %71 = bitcast float %70 to i32, !dbg !640
  %72 = call float @llvm.round.f32(float %70), !dbg !640
  %73 = bitcast float %72 to i32, !dbg !640
  %74 = lshr i32 %71, 23, !dbg !640
  %75 = and i32 %74, 255, !dbg !640
  %76 = sub i32 %75, 127, !dbg !640
  %77 = lshr i32 %73, 23, !dbg !640
  %78 = and i32 %77, 255, !dbg !640
  %79 = sub i32 %78, 127, !dbg !640
  %80 = icmp eq i32 %79, 0, !dbg !640
  %81 = sub i32 %78, 128, !dbg !640
  %82 = icmp sgt i32 %81, 0, !dbg !640
  %83 = select i1 %82, i32 %81, i32 0, !dbg !640
  %84 = icmp slt i32 %83, 31, !dbg !640
  %85 = select i1 %84, i32 %83, i32 31, !dbg !640
  %86 = lshr i32 8388607, %85, !dbg !640
  %87 = and i32 %73, %86, !dbg !640
  %88 = icmp ne i32 %87, 0, !dbg !640
  %89 = or i1 %88, %80, !dbg !640
  %90 = icmp eq i32 %76, -1, !dbg !640
  %91 = icmp sgt i32 %76, 0, !dbg !640
  %92 = select i1 %91, i32 %76, i32 0, !dbg !640
  %93 = icmp slt i32 %92, 31, !dbg !640
  %94 = select i1 %93, i32 %92, i32 31, !dbg !640
  %95 = lshr i32 4194304, %94, !dbg !640
  %96 = select i1 %90, i32 0, i32 %95, !dbg !640
  %97 = lshr i32 8388607, %94, !dbg !640
  %98 = and i32 %71, %97, !dbg !640
  %99 = icmp eq i32 %98, %96, !dbg !640
  %100 = icmp sge i32 %76, -1, !dbg !640
  %101 = icmp slt i32 %76, 23, !dbg !640
  %102 = and i1 %99, %101, !dbg !640
  %103 = and i1 %102, %100, !dbg !640
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !640
  %105 = fsub contract float %72, %104, !dbg !640
  %106 = and i1 %89, %103, !dbg !640
  %107 = select i1 %106, float %105, float %72, !dbg !640
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !640
  %109 = fadd contract float %108, 0.000000e+00, !dbg !640
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !640
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !640
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !640
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !640
  %114 = fptosi float %113 to i8, !dbg !640
  %115 = icmp sgt i8 %114, 0, !dbg !641
  %116 = select i1 %115, i8 %114, i8 0, !dbg !641
  %117 = sitofp i8 %116 to float, !dbg !641
  %118 = bitcast float %117 to i32, !dbg !636
  %119 = call float @llvm.round.f32(float %117), !dbg !636
  %120 = bitcast float %119 to i32, !dbg !636
  %121 = lshr i32 %118, 23, !dbg !636
  %122 = and i32 %121, 255, !dbg !636
  %123 = sub i32 %122, 127, !dbg !636
  %124 = lshr i32 %120, 23, !dbg !636
  %125 = and i32 %124, 255, !dbg !636
  %126 = sub i32 %125, 127, !dbg !636
  %127 = icmp eq i32 %126, 0, !dbg !636
  %128 = sub i32 %125, 128, !dbg !636
  %129 = icmp sgt i32 %128, 0, !dbg !636
  %130 = select i1 %129, i32 %128, i32 0, !dbg !636
  %131 = icmp slt i32 %130, 31, !dbg !636
  %132 = select i1 %131, i32 %130, i32 31, !dbg !636
  %133 = lshr i32 8388607, %132, !dbg !636
  %134 = and i32 %120, %133, !dbg !636
  %135 = icmp ne i32 %134, 0, !dbg !636
  %136 = or i1 %135, %127, !dbg !636
  %137 = icmp eq i32 %123, -1, !dbg !636
  %138 = icmp sgt i32 %123, 0, !dbg !636
  %139 = select i1 %138, i32 %123, i32 0, !dbg !636
  %140 = icmp slt i32 %139, 31, !dbg !636
  %141 = select i1 %140, i32 %139, i32 31, !dbg !636
  %142 = lshr i32 4194304, %141, !dbg !636
  %143 = select i1 %137, i32 0, i32 %142, !dbg !636
  %144 = lshr i32 8388607, %141, !dbg !636
  %145 = and i32 %118, %144, !dbg !636
  %146 = icmp eq i32 %145, %143, !dbg !636
  %147 = icmp sge i32 %123, -1, !dbg !636
  %148 = icmp slt i32 %123, 23, !dbg !636
  %149 = and i1 %146, %148, !dbg !636
  %150 = and i1 %149, %147, !dbg !636
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !636
  %152 = fsub contract float %119, %151, !dbg !636
  %153 = and i1 %136, %150, !dbg !636
  %154 = select i1 %153, float %152, float %119, !dbg !636
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !636
  %156 = fadd contract float %155, 0.000000e+00, !dbg !636
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !636
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !636
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !636
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !636
  %161 = fptosi float %160 to i8, !dbg !636
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !636
  store i8 %161, ptr %162, align 1, !dbg !636
  %163 = add i64 %52, 1, !dbg !636
  br label %51, !dbg !636

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !636
  br label %48, !dbg !636

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !634
  ret i32 0, !dbg !634
}

define internal i32 @"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !642 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !643
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !643
  %6 = load ptr, ptr %5, align 8, !dbg !643
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !643
  %8 = load ptr, ptr %7, align 8, !dbg !643
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !643
  %10 = load ptr, ptr %9, align 8, !dbg !643
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !643
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !643
  %13 = zext i32 %12 to i64, !dbg !643
  %14 = sdiv i64 %13, 16, !dbg !643
  %15 = mul i64 %14, 16, !dbg !643
  %16 = icmp ne i64 %13, %15, !dbg !643
  %17 = icmp slt i64 %13, 0, !dbg !643
  %18 = and i1 %16, %17, !dbg !643
  %19 = add i64 %14, -1, !dbg !643
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !643
  %21 = srem i64 %13, 16, !dbg !643
  %22 = icmp slt i64 %21, 0, !dbg !643
  %23 = add nsw i64 %21, 16, !dbg !643
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !643
  %25 = mul nsw i64 %20, 4, !dbg !643
  %26 = mul nsw i64 %24, 16, !dbg !643
  %27 = mul nsw i64 %25, 1024, !dbg !643
  %28 = add i64 %27, 50176, !dbg !643
  %29 = ptrtoint ptr %6 to i64, !dbg !643
  %30 = add i64 %29, %28, !dbg !643
  %31 = add i64 %26, 3215360, !dbg !643
  %32 = ptrtoint ptr %8 to i64, !dbg !643
  %33 = add i64 %32, %31, !dbg !643
  %34 = mul nsw i64 %25, 256, !dbg !643
  %35 = add i64 %34, %26, !dbg !643
  %36 = ptrtoint ptr %10 to i64, !dbg !643
  %37 = add i64 %36, %35, !dbg !643
  %38 = add i64 %35, 7006208, !dbg !643
  %39 = mul i64 %38, 4, !dbg !643
  %40 = add i64 %32, %39, !dbg !643
  %41 = and i64 %30, 9223372036854775807, !dbg !643
  %42 = and i64 %33, 9223372036854775807, !dbg !643
  %43 = and i64 %37, 9223372036854775807, !dbg !643
  %44 = and i64 %40, 9223372036854775807, !dbg !643
  call void asm sideeffect "fence", ""(), !dbg !643
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !643
  call void @llvm.riscv.config(i64 6, i64 4299884659891765504), !dbg !643
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !643
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !643
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !643
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !643
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !643
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !643
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !643
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !643
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !643
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !643
  call void asm sideeffect "fence", ""(), !dbg !643
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !643
  ret i32 0, !dbg !643
}

define internal i32 @"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !644 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !645
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !645
  %6 = load ptr, ptr %5, align 8, !dbg !645
  %7 = getelementptr i8, ptr %6, i64 250880, !dbg !645
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !645
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !645
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !645
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !645
  %11 = load ptr, ptr %10, align 8, !dbg !645
  %12 = getelementptr i8, ptr %11, i64 316416, !dbg !645
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !645
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !645
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !645
  %15 = zext i32 %14 to i64, !dbg !645
  %16 = sdiv i64 %15, 8, !dbg !645
  %17 = mul i64 %16, 8, !dbg !645
  %18 = icmp ne i64 %15, %17, !dbg !645
  %19 = icmp slt i64 %15, 0, !dbg !645
  %20 = and i1 %18, %19, !dbg !645
  %21 = add i64 %16, -1, !dbg !645
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !645
  %23 = srem i64 %15, 8, !dbg !645
  %24 = icmp slt i64 %23, 0, !dbg !645
  %25 = add nsw i64 %23, 8, !dbg !645
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !645
  %27 = mul nsw i64 %22, 2, !dbg !645
  %28 = mul nsw i64 %26, 32, !dbg !645
  br label %29, !dbg !645

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !645
  %31 = icmp slt i64 %30, 2, !dbg !645
  br i1 %31, label %32, label %83, !dbg !645

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !645
  %34 = icmp slt i64 %33, 14, !dbg !645
  br i1 %34, label %35, label %81, !dbg !645

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !645
  %37 = icmp slt i64 %36, 3, !dbg !645
  br i1 %37, label %38, label %79, !dbg !645

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !645
  %40 = add i64 %39, %27, !dbg !645
  br label %41, !dbg !645

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !645
  %43 = icmp slt i64 %42, 3, !dbg !645
  br i1 %43, label %44, label %77, !dbg !645

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !645
  br label %46, !dbg !645

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !645
  %48 = icmp slt i64 %47, 32, !dbg !645
  br i1 %48, label %49, label %75, !dbg !645

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !645
  br label %51, !dbg !645

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !645
  %53 = icmp slt i64 %52, 8, !dbg !645
  br i1 %53, label %54, label %73, !dbg !645

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !645
  %56 = mul nuw nsw i64 %40, 4096, !dbg !645
  %57 = mul nuw nsw i64 %45, 256, !dbg !645
  %58 = add nuw nsw i64 %56, %57, !dbg !645
  %59 = add nuw nsw i64 %58, %55, !dbg !645
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !645
  %61 = load i8, ptr %60, align 1, !dbg !645
  %62 = add i64 %27, %30, !dbg !645
  %63 = mul nuw nsw i64 %62, 32256, !dbg !645
  %64 = mul nuw nsw i64 %33, 2304, !dbg !645
  %65 = add nuw nsw i64 %63, %64, !dbg !645
  %66 = mul nuw nsw i64 %36, 768, !dbg !645
  %67 = add nuw nsw i64 %65, %66, !dbg !645
  %68 = mul nuw nsw i64 %42, 256, !dbg !645
  %69 = add nuw nsw i64 %67, %68, !dbg !645
  %70 = add nuw nsw i64 %69, %55, !dbg !645
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !645
  store i8 %61, ptr %71, align 1, !dbg !645
  %72 = add i64 %52, 1, !dbg !645
  br label %51, !dbg !645

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !645
  br label %46, !dbg !645

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !645
  br label %41, !dbg !645

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !645
  br label %35, !dbg !645

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !645
  br label %32, !dbg !645

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !645
  br label %29, !dbg !645

83:                                               ; preds = %29
  ret i32 0, !dbg !645
}

define internal i32 @"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !646 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !647
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !647
  %6 = load ptr, ptr %5, align 8, !dbg !647
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !647
  %8 = load ptr, ptr %7, align 8, !dbg !647
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !647
  %10 = load ptr, ptr %9, align 8, !dbg !647
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !647
  %12 = load ptr, ptr %11, align 8, !dbg !647
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !647
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !647
  %15 = zext i32 %14 to i64, !dbg !647
  %16 = sdiv i64 %15, 16, !dbg !647
  %17 = mul i64 %16, 16, !dbg !647
  %18 = icmp ne i64 %15, %17, !dbg !647
  %19 = icmp slt i64 %15, 0, !dbg !647
  %20 = and i1 %18, %19, !dbg !647
  %21 = add i64 %16, -1, !dbg !647
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !647
  %23 = srem i64 %15, 16, !dbg !647
  %24 = icmp slt i64 %23, 0, !dbg !647
  %25 = add nsw i64 %23, 16, !dbg !647
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !647
  %27 = mul nsw i64 %22, 4, !dbg !647
  %28 = mul nsw i64 %26, 16, !dbg !647
  %29 = mul nsw i64 %27, 2304, !dbg !647
  %30 = add i64 %29, 316416, !dbg !647
  %31 = ptrtoint ptr %6 to i64, !dbg !647
  %32 = add i64 %31, %30, !dbg !647
  %33 = add i64 %28, 3088256, !dbg !647
  %34 = ptrtoint ptr %8 to i64, !dbg !647
  %35 = add i64 %34, %33, !dbg !647
  %36 = mul nsw i64 %27, 256, !dbg !647
  %37 = add i64 %36, %28, !dbg !647
  %38 = ptrtoint ptr %12 to i64, !dbg !647
  %39 = add i64 %38, %37, !dbg !647
  %40 = add i64 %37, 7056384, !dbg !647
  %41 = ptrtoint ptr %10 to i64, !dbg !647
  %42 = mul i64 %40, 4, !dbg !647
  %43 = add i64 %41, %42, !dbg !647
  %44 = and i64 %32, 9223372036854775807, !dbg !647
  %45 = and i64 %35, 9223372036854775807, !dbg !647
  %46 = and i64 %39, 9223372036854775807, !dbg !647
  %47 = and i64 %43, 9223372036854775807, !dbg !647
  call void asm sideeffect "fence", ""(), !dbg !647
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !647
  call void @llvm.riscv.config(i64 6, i64 4336734637477855488), !dbg !647
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !647
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !647
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !647
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !647
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !647
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 0), !dbg !647
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !647
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !647
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !647
  %48 = add i64 %44, 2048, !dbg !647
  %49 = add i64 %45, 524288, !dbg !647
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !647
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !647
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %46), !dbg !647
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !647
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !647
  call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !647
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !647
  call void asm sideeffect "fence", ""(), !dbg !647
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !647
  ret i32 0, !dbg !647
}

define internal i32 @"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !648 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !649
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !649
  %6 = load ptr, ptr %5, align 8, !dbg !649
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !649
  %8 = load ptr, ptr %7, align 8, !dbg !649
  %9 = getelementptr i8, ptr %6, i64 50176, !dbg !650
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !650
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !649
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !649
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !649
  %13 = load ptr, ptr %12, align 8, !dbg !649
  %14 = getelementptr i8, ptr %13, i64 250880, !dbg !649
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !649
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !649
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !649
  %17 = zext i32 %16 to i64, !dbg !649
  %18 = sdiv i64 %17, 64, !dbg !649
  %19 = mul i64 %18, 64, !dbg !649
  %20 = icmp ne i64 %17, %19, !dbg !649
  %21 = icmp slt i64 %17, 0, !dbg !649
  %22 = and i1 %20, %21, !dbg !649
  %23 = add i64 %18, -1, !dbg !649
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !649
  %25 = srem i64 %17, 64, !dbg !649
  %26 = icmp slt i64 %25, 0, !dbg !649
  %27 = add nsw i64 %25, 64, !dbg !649
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !649
  %29 = mul nsw i64 %24, 4, !dbg !649
  %30 = mul nsw i64 %28, 16, !dbg !649
  %31 = alloca i8, i64 64, align 1, !dbg !649
  %32 = mul nsw i64 %29, 256, !dbg !649
  %33 = ptrtoint ptr %6 to i64, !dbg !649
  %34 = add i64 %33, %32, !dbg !649
  %35 = add i64 %30, 3477504, !dbg !649
  %36 = ptrtoint ptr %8 to i64, !dbg !649
  %37 = add i64 %36, %35, !dbg !649
  %38 = ptrtoint ptr %31 to i64, !dbg !649
  %39 = mul nsw i64 %29, 1024, !dbg !649
  %40 = add i64 %39, %30, !dbg !649
  %41 = add i64 %40, 7106560, !dbg !649
  %42 = mul i64 %41, 4, !dbg !649
  %43 = add i64 %36, %42, !dbg !649
  %44 = and i64 %34, 9223372036854775807, !dbg !649
  %45 = and i64 %37, 9223372036854775807, !dbg !649
  %46 = and i64 %38, 9223372036854775807, !dbg !649
  %47 = and i64 %43, 9223372036854775807, !dbg !649
  call void asm sideeffect "fence", ""(), !dbg !649
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !649
  call void @llvm.riscv.config(i64 2, i64 4334667469718290448), !dbg !649
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !649
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !649
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !649
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !649
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !649
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !649
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !649
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !649
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !649
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !649
  call void asm sideeffect "fence", ""(), !dbg !649
  br label %48, !dbg !651

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !651
  %50 = icmp slt i64 %49, 4, !dbg !651
  br i1 %50, label %51, label %166, !dbg !651

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !651
  %53 = icmp slt i64 %52, 16, !dbg !651
  br i1 %53, label %54, label %164, !dbg !651

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !651
  %56 = add nuw nsw i64 %55, %52, !dbg !651
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !651
  %58 = load i8, ptr %57, align 1, !dbg !651
  %59 = add i64 %29, %49, !dbg !651
  %60 = add i64 %30, %52, !dbg !651
  %61 = mul nuw nsw i64 %59, 1024, !dbg !651
  %62 = add nuw nsw i64 %61, %60, !dbg !651
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !651
  %64 = load i8, ptr %63, align 1, !dbg !651
  %65 = sitofp i8 %64 to float, !dbg !652
  %66 = fmul contract float %65, 0x3FD86BBA20000000, !dbg !652
  %67 = sitofp i8 %58 to float, !dbg !653
  %68 = fmul contract float %67, 0x3FD5AC49E0000000, !dbg !653
  %69 = fadd contract float %68, %66, !dbg !654
  %70 = fdiv float %69, 0x3FD25EEE20000000, !dbg !655
  %71 = bitcast float %70 to i32, !dbg !655
  %72 = call float @llvm.round.f32(float %70), !dbg !655
  %73 = bitcast float %72 to i32, !dbg !655
  %74 = lshr i32 %71, 23, !dbg !655
  %75 = and i32 %74, 255, !dbg !655
  %76 = sub i32 %75, 127, !dbg !655
  %77 = lshr i32 %73, 23, !dbg !655
  %78 = and i32 %77, 255, !dbg !655
  %79 = sub i32 %78, 127, !dbg !655
  %80 = icmp eq i32 %79, 0, !dbg !655
  %81 = sub i32 %78, 128, !dbg !655
  %82 = icmp sgt i32 %81, 0, !dbg !655
  %83 = select i1 %82, i32 %81, i32 0, !dbg !655
  %84 = icmp slt i32 %83, 31, !dbg !655
  %85 = select i1 %84, i32 %83, i32 31, !dbg !655
  %86 = lshr i32 8388607, %85, !dbg !655
  %87 = and i32 %73, %86, !dbg !655
  %88 = icmp ne i32 %87, 0, !dbg !655
  %89 = or i1 %88, %80, !dbg !655
  %90 = icmp eq i32 %76, -1, !dbg !655
  %91 = icmp sgt i32 %76, 0, !dbg !655
  %92 = select i1 %91, i32 %76, i32 0, !dbg !655
  %93 = icmp slt i32 %92, 31, !dbg !655
  %94 = select i1 %93, i32 %92, i32 31, !dbg !655
  %95 = lshr i32 4194304, %94, !dbg !655
  %96 = select i1 %90, i32 0, i32 %95, !dbg !655
  %97 = lshr i32 8388607, %94, !dbg !655
  %98 = and i32 %71, %97, !dbg !655
  %99 = icmp eq i32 %98, %96, !dbg !655
  %100 = icmp sge i32 %76, -1, !dbg !655
  %101 = icmp slt i32 %76, 23, !dbg !655
  %102 = and i1 %99, %101, !dbg !655
  %103 = and i1 %102, %100, !dbg !655
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !655
  %105 = fsub contract float %72, %104, !dbg !655
  %106 = and i1 %89, %103, !dbg !655
  %107 = select i1 %106, float %105, float %72, !dbg !655
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !655
  %109 = fadd contract float %108, 0.000000e+00, !dbg !655
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !655
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !655
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !655
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !655
  %114 = fptosi float %113 to i8, !dbg !655
  %115 = icmp sgt i8 %114, 0, !dbg !656
  %116 = select i1 %115, i8 %114, i8 0, !dbg !656
  %117 = sitofp i8 %116 to float, !dbg !656
  %118 = bitcast float %117 to i32, !dbg !651
  %119 = call float @llvm.round.f32(float %117), !dbg !651
  %120 = bitcast float %119 to i32, !dbg !651
  %121 = lshr i32 %118, 23, !dbg !651
  %122 = and i32 %121, 255, !dbg !651
  %123 = sub i32 %122, 127, !dbg !651
  %124 = lshr i32 %120, 23, !dbg !651
  %125 = and i32 %124, 255, !dbg !651
  %126 = sub i32 %125, 127, !dbg !651
  %127 = icmp eq i32 %126, 0, !dbg !651
  %128 = sub i32 %125, 128, !dbg !651
  %129 = icmp sgt i32 %128, 0, !dbg !651
  %130 = select i1 %129, i32 %128, i32 0, !dbg !651
  %131 = icmp slt i32 %130, 31, !dbg !651
  %132 = select i1 %131, i32 %130, i32 31, !dbg !651
  %133 = lshr i32 8388607, %132, !dbg !651
  %134 = and i32 %120, %133, !dbg !651
  %135 = icmp ne i32 %134, 0, !dbg !651
  %136 = or i1 %135, %127, !dbg !651
  %137 = icmp eq i32 %123, -1, !dbg !651
  %138 = icmp sgt i32 %123, 0, !dbg !651
  %139 = select i1 %138, i32 %123, i32 0, !dbg !651
  %140 = icmp slt i32 %139, 31, !dbg !651
  %141 = select i1 %140, i32 %139, i32 31, !dbg !651
  %142 = lshr i32 4194304, %141, !dbg !651
  %143 = select i1 %137, i32 0, i32 %142, !dbg !651
  %144 = lshr i32 8388607, %141, !dbg !651
  %145 = and i32 %118, %144, !dbg !651
  %146 = icmp eq i32 %145, %143, !dbg !651
  %147 = icmp sge i32 %123, -1, !dbg !651
  %148 = icmp slt i32 %123, 23, !dbg !651
  %149 = and i1 %146, %148, !dbg !651
  %150 = and i1 %149, %147, !dbg !651
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !651
  %152 = fsub contract float %119, %151, !dbg !651
  %153 = and i1 %136, %150, !dbg !651
  %154 = select i1 %153, float %152, float %119, !dbg !651
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !651
  %156 = fadd contract float %155, 0.000000e+00, !dbg !651
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !651
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !651
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !651
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !651
  %161 = fptosi float %160 to i8, !dbg !651
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !651
  store i8 %161, ptr %162, align 1, !dbg !651
  %163 = add i64 %52, 1, !dbg !651
  br label %51, !dbg !651

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !651
  br label %48, !dbg !651

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !649
  ret i32 0, !dbg !649
}

define internal i32 @"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !657 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !658
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !658
  %6 = load ptr, ptr %5, align 8, !dbg !658
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !658
  %8 = load ptr, ptr %7, align 8, !dbg !658
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !658
  %10 = load ptr, ptr %9, align 8, !dbg !658
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !658
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !658
  %13 = zext i32 %12 to i64, !dbg !658
  %14 = sdiv i64 %13, 16, !dbg !658
  %15 = mul i64 %14, 16, !dbg !658
  %16 = icmp ne i64 %13, %15, !dbg !658
  %17 = icmp slt i64 %13, 0, !dbg !658
  %18 = and i1 %16, %17, !dbg !658
  %19 = add i64 %14, -1, !dbg !658
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !658
  %21 = srem i64 %13, 16, !dbg !658
  %22 = icmp slt i64 %21, 0, !dbg !658
  %23 = add nsw i64 %21, 16, !dbg !658
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !658
  %25 = mul nsw i64 %20, 4, !dbg !658
  %26 = mul nsw i64 %24, 16, !dbg !658
  %27 = mul nsw i64 %25, 1024, !dbg !658
  %28 = add i64 %27, 250880, !dbg !658
  %29 = ptrtoint ptr %6 to i64, !dbg !658
  %30 = add i64 %29, %28, !dbg !658
  %31 = add i64 %26, 3739648, !dbg !658
  %32 = ptrtoint ptr %8 to i64, !dbg !658
  %33 = add i64 %32, %31, !dbg !658
  %34 = mul nsw i64 %25, 256, !dbg !658
  %35 = add i64 %34, %26, !dbg !658
  %36 = ptrtoint ptr %10 to i64, !dbg !658
  %37 = add i64 %36, %35, !dbg !658
  %38 = add i64 %35, 7307264, !dbg !658
  %39 = mul i64 %38, 4, !dbg !658
  %40 = add i64 %32, %39, !dbg !658
  %41 = and i64 %30, 9223372036854775807, !dbg !658
  %42 = and i64 %33, 9223372036854775807, !dbg !658
  %43 = and i64 %37, 9223372036854775807, !dbg !658
  %44 = and i64 %40, 9223372036854775807, !dbg !658
  call void asm sideeffect "fence", ""(), !dbg !658
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !658
  call void @llvm.riscv.config(i64 6, i64 4327234689510146304), !dbg !658
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !658
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !658
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !658
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !658
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !658
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !658
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !658
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !658
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !658
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !658
  call void asm sideeffect "fence", ""(), !dbg !658
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !658
  ret i32 0, !dbg !658
}

define internal i32 @"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !659 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !660
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !660
  %6 = load ptr, ptr %5, align 8, !dbg !660
  %7 = getelementptr i8, ptr %6, i64 50176, !dbg !660
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !660
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !660
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !660
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !660
  %11 = load ptr, ptr %10, align 8, !dbg !660
  %12 = getelementptr i8, ptr %11, i64 451584, !dbg !660
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !660
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !660
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !660
  %15 = zext i32 %14 to i64, !dbg !660
  %16 = sdiv i64 %15, 8, !dbg !660
  %17 = mul i64 %16, 8, !dbg !660
  %18 = icmp ne i64 %15, %17, !dbg !660
  %19 = icmp slt i64 %15, 0, !dbg !660
  %20 = and i1 %18, %19, !dbg !660
  %21 = add i64 %16, -1, !dbg !660
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !660
  %23 = srem i64 %15, 8, !dbg !660
  %24 = icmp slt i64 %23, 0, !dbg !660
  %25 = add nsw i64 %23, 8, !dbg !660
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !660
  %27 = mul nsw i64 %22, 2, !dbg !660
  %28 = mul nsw i64 %26, 32, !dbg !660
  br label %29, !dbg !660

29:                                               ; preds = %81, %3
  %30 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !660
  %31 = icmp slt i64 %30, 2, !dbg !660
  br i1 %31, label %32, label %83, !dbg !660

32:                                               ; preds = %79, %29
  %33 = phi i64 [ %80, %79 ], [ 0, %29 ], !dbg !660
  %34 = icmp slt i64 %33, 14, !dbg !660
  br i1 %34, label %35, label %81, !dbg !660

35:                                               ; preds = %77, %32
  %36 = phi i64 [ %78, %77 ], [ 0, %32 ], !dbg !660
  %37 = icmp slt i64 %36, 3, !dbg !660
  br i1 %37, label %38, label %79, !dbg !660

38:                                               ; preds = %35
  %39 = add i64 %30, %36, !dbg !660
  %40 = add i64 %39, %27, !dbg !660
  br label %41, !dbg !660

41:                                               ; preds = %75, %38
  %42 = phi i64 [ %76, %75 ], [ 0, %38 ], !dbg !660
  %43 = icmp slt i64 %42, 3, !dbg !660
  br i1 %43, label %44, label %77, !dbg !660

44:                                               ; preds = %41
  %45 = add i64 %33, %42, !dbg !660
  br label %46, !dbg !660

46:                                               ; preds = %73, %44
  %47 = phi i64 [ %74, %73 ], [ 0, %44 ], !dbg !660
  %48 = icmp slt i64 %47, 32, !dbg !660
  br i1 %48, label %49, label %75, !dbg !660

49:                                               ; preds = %46
  %50 = add i64 %47, %28, !dbg !660
  br label %51, !dbg !660

51:                                               ; preds = %54, %49
  %52 = phi i64 [ %72, %54 ], [ 0, %49 ], !dbg !660
  %53 = icmp slt i64 %52, 8, !dbg !660
  br i1 %53, label %54, label %73, !dbg !660

54:                                               ; preds = %51
  %55 = add i64 %50, %52, !dbg !660
  %56 = mul nuw nsw i64 %40, 4096, !dbg !660
  %57 = mul nuw nsw i64 %45, 256, !dbg !660
  %58 = add nuw nsw i64 %56, %57, !dbg !660
  %59 = add nuw nsw i64 %58, %55, !dbg !660
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 %59, !dbg !660
  %61 = load i8, ptr %60, align 1, !dbg !660
  %62 = add i64 %27, %30, !dbg !660
  %63 = mul nuw nsw i64 %62, 32256, !dbg !660
  %64 = mul nuw nsw i64 %33, 2304, !dbg !660
  %65 = add nuw nsw i64 %63, %64, !dbg !660
  %66 = mul nuw nsw i64 %36, 768, !dbg !660
  %67 = add nuw nsw i64 %65, %66, !dbg !660
  %68 = mul nuw nsw i64 %42, 256, !dbg !660
  %69 = add nuw nsw i64 %67, %68, !dbg !660
  %70 = add nuw nsw i64 %69, %55, !dbg !660
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 %70, !dbg !660
  store i8 %61, ptr %71, align 1, !dbg !660
  %72 = add i64 %52, 1, !dbg !660
  br label %51, !dbg !660

73:                                               ; preds = %51
  %74 = add i64 %47, 8, !dbg !660
  br label %46, !dbg !660

75:                                               ; preds = %46
  %76 = add i64 %42, 1, !dbg !660
  br label %41, !dbg !660

77:                                               ; preds = %41
  %78 = add i64 %36, 1, !dbg !660
  br label %35, !dbg !660

79:                                               ; preds = %35
  %80 = add i64 %33, 1, !dbg !660
  br label %32, !dbg !660

81:                                               ; preds = %32
  %82 = add i64 %30, 1, !dbg !660
  br label %29, !dbg !660

83:                                               ; preds = %29
  ret i32 0, !dbg !660
}

define internal i32 @"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !661 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !662
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !662
  %6 = load ptr, ptr %5, align 8, !dbg !662
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !662
  %8 = load ptr, ptr %7, align 8, !dbg !662
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !662
  %10 = load ptr, ptr %9, align 8, !dbg !662
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !662
  %12 = load ptr, ptr %11, align 8, !dbg !662
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !662
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !662
  %15 = zext i32 %14 to i64, !dbg !662
  %16 = sdiv i64 %15, 16, !dbg !662
  %17 = mul i64 %16, 16, !dbg !662
  %18 = icmp ne i64 %15, %17, !dbg !662
  %19 = icmp slt i64 %15, 0, !dbg !662
  %20 = and i1 %18, %19, !dbg !662
  %21 = add i64 %16, -1, !dbg !662
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !662
  %23 = srem i64 %15, 16, !dbg !662
  %24 = icmp slt i64 %23, 0, !dbg !662
  %25 = add nsw i64 %23, 16, !dbg !662
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !662
  %27 = mul nsw i64 %22, 4, !dbg !662
  %28 = mul nsw i64 %26, 16, !dbg !662
  %29 = mul nsw i64 %27, 2304, !dbg !662
  %30 = add i64 %29, 451584, !dbg !662
  %31 = ptrtoint ptr %6 to i64, !dbg !662
  %32 = add i64 %31, %30, !dbg !662
  %33 = add i64 %28, 3678080, !dbg !662
  %34 = ptrtoint ptr %8 to i64, !dbg !662
  %35 = add i64 %34, %33, !dbg !662
  %36 = mul nsw i64 %27, 256, !dbg !662
  %37 = add i64 %36, %28, !dbg !662
  %38 = ptrtoint ptr %12 to i64, !dbg !662
  %39 = add i64 %38, %37, !dbg !662
  %40 = add i64 %37, 7357440, !dbg !662
  %41 = ptrtoint ptr %10 to i64, !dbg !662
  %42 = mul i64 %40, 4, !dbg !662
  %43 = add i64 %41, %42, !dbg !662
  %44 = and i64 %32, 9223372036854775807, !dbg !662
  %45 = and i64 %35, 9223372036854775807, !dbg !662
  %46 = and i64 %39, 9223372036854775807, !dbg !662
  %47 = and i64 %43, 9223372036854775807, !dbg !662
  call void asm sideeffect "fence", ""(), !dbg !662
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !662
  call void @llvm.riscv.config(i64 6, i64 4301800941155254528), !dbg !662
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !662
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !662
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !662
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !662
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !662
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 0), !dbg !662
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !662
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !662
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !662
  %48 = add i64 %44, 2048, !dbg !662
  %49 = add i64 %45, 524288, !dbg !662
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !662
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !662
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %46), !dbg !662
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !662
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !662
  call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !662
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !662
  call void asm sideeffect "fence", ""(), !dbg !662
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !662
  ret i32 0, !dbg !662
}

define internal i32 @"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !663 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !664
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !664
  %6 = load ptr, ptr %5, align 8, !dbg !664
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !664
  %8 = load ptr, ptr %7, align 8, !dbg !664
  %9 = getelementptr i8, ptr %6, i64 250880, !dbg !665
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !665
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !664
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !664
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !664
  %13 = load ptr, ptr %12, align 8, !dbg !664
  %14 = getelementptr i8, ptr %13, i64 50176, !dbg !664
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !664
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !664
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !664
  %17 = zext i32 %16 to i64, !dbg !664
  %18 = sdiv i64 %17, 64, !dbg !664
  %19 = mul i64 %18, 64, !dbg !664
  %20 = icmp ne i64 %17, %19, !dbg !664
  %21 = icmp slt i64 %17, 0, !dbg !664
  %22 = and i1 %20, %21, !dbg !664
  %23 = add i64 %18, -1, !dbg !664
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !664
  %25 = srem i64 %17, 64, !dbg !664
  %26 = icmp slt i64 %25, 0, !dbg !664
  %27 = add nsw i64 %25, 64, !dbg !664
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !664
  %29 = mul nsw i64 %24, 4, !dbg !664
  %30 = mul nsw i64 %28, 16, !dbg !664
  %31 = alloca i8, i64 64, align 1, !dbg !664
  %32 = mul nsw i64 %29, 256, !dbg !664
  %33 = ptrtoint ptr %6 to i64, !dbg !664
  %34 = add i64 %33, %32, !dbg !664
  %35 = add i64 %30, 4001792, !dbg !664
  %36 = ptrtoint ptr %8 to i64, !dbg !664
  %37 = add i64 %36, %35, !dbg !664
  %38 = ptrtoint ptr %31 to i64, !dbg !664
  %39 = mul nsw i64 %29, 1024, !dbg !664
  %40 = add i64 %39, %30, !dbg !664
  %41 = add i64 %40, 7407616, !dbg !664
  %42 = mul i64 %41, 4, !dbg !664
  %43 = add i64 %36, %42, !dbg !664
  %44 = and i64 %34, 9223372036854775807, !dbg !664
  %45 = and i64 %37, 9223372036854775807, !dbg !664
  %46 = and i64 %38, 9223372036854775807, !dbg !664
  %47 = and i64 %43, 9223372036854775807, !dbg !664
  call void asm sideeffect "fence", ""(), !dbg !664
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !664
  call void @llvm.riscv.config(i64 2, i64 4325975959149740048), !dbg !664
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !664
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !664
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !664
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !664
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !664
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 %46), !dbg !664
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !664
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !664
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !664
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !664
  call void asm sideeffect "fence", ""(), !dbg !664
  br label %48, !dbg !666

48:                                               ; preds = %164, %3
  %49 = phi i64 [ %165, %164 ], [ 0, %3 ], !dbg !666
  %50 = icmp slt i64 %49, 4, !dbg !666
  br i1 %50, label %51, label %166, !dbg !666

51:                                               ; preds = %54, %48
  %52 = phi i64 [ %163, %54 ], [ 0, %48 ], !dbg !666
  %53 = icmp slt i64 %52, 16, !dbg !666
  br i1 %53, label %54, label %164, !dbg !666

54:                                               ; preds = %51
  %55 = mul nuw nsw i64 %49, 16, !dbg !666
  %56 = add nuw nsw i64 %55, %52, !dbg !666
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 %56, !dbg !666
  %58 = load i8, ptr %57, align 1, !dbg !666
  %59 = add i64 %29, %49, !dbg !666
  %60 = add i64 %30, %52, !dbg !666
  %61 = mul nuw nsw i64 %59, 1024, !dbg !666
  %62 = add nuw nsw i64 %61, %60, !dbg !666
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 %62, !dbg !666
  %64 = load i8, ptr %63, align 1, !dbg !666
  %65 = sitofp i8 %64 to float, !dbg !667
  %66 = fmul contract float %65, 0x3FD25EEE20000000, !dbg !667
  %67 = sitofp i8 %58 to float, !dbg !668
  %68 = fmul contract float %67, 0x3FC2A196A0000000, !dbg !668
  %69 = fadd contract float %68, %66, !dbg !669
  %70 = fdiv float %69, 0x3FD0AF8140000000, !dbg !670
  %71 = bitcast float %70 to i32, !dbg !670
  %72 = call float @llvm.round.f32(float %70), !dbg !670
  %73 = bitcast float %72 to i32, !dbg !670
  %74 = lshr i32 %71, 23, !dbg !670
  %75 = and i32 %74, 255, !dbg !670
  %76 = sub i32 %75, 127, !dbg !670
  %77 = lshr i32 %73, 23, !dbg !670
  %78 = and i32 %77, 255, !dbg !670
  %79 = sub i32 %78, 127, !dbg !670
  %80 = icmp eq i32 %79, 0, !dbg !670
  %81 = sub i32 %78, 128, !dbg !670
  %82 = icmp sgt i32 %81, 0, !dbg !670
  %83 = select i1 %82, i32 %81, i32 0, !dbg !670
  %84 = icmp slt i32 %83, 31, !dbg !670
  %85 = select i1 %84, i32 %83, i32 31, !dbg !670
  %86 = lshr i32 8388607, %85, !dbg !670
  %87 = and i32 %73, %86, !dbg !670
  %88 = icmp ne i32 %87, 0, !dbg !670
  %89 = or i1 %88, %80, !dbg !670
  %90 = icmp eq i32 %76, -1, !dbg !670
  %91 = icmp sgt i32 %76, 0, !dbg !670
  %92 = select i1 %91, i32 %76, i32 0, !dbg !670
  %93 = icmp slt i32 %92, 31, !dbg !670
  %94 = select i1 %93, i32 %92, i32 31, !dbg !670
  %95 = lshr i32 4194304, %94, !dbg !670
  %96 = select i1 %90, i32 0, i32 %95, !dbg !670
  %97 = lshr i32 8388607, %94, !dbg !670
  %98 = and i32 %71, %97, !dbg !670
  %99 = icmp eq i32 %98, %96, !dbg !670
  %100 = icmp sge i32 %76, -1, !dbg !670
  %101 = icmp slt i32 %76, 23, !dbg !670
  %102 = and i1 %99, %101, !dbg !670
  %103 = and i1 %102, %100, !dbg !670
  %104 = call float @llvm.copysign.f32(float 1.000000e+00, float %70), !dbg !670
  %105 = fsub contract float %72, %104, !dbg !670
  %106 = and i1 %89, %103, !dbg !670
  %107 = select i1 %106, float %105, float %72, !dbg !670
  %108 = call float @llvm.copysign.f32(float %107, float %70), !dbg !670
  %109 = fadd contract float %108, 0.000000e+00, !dbg !670
  %110 = fcmp ugt float %109, -1.280000e+02, !dbg !670
  %111 = select i1 %110, float %109, float -1.280000e+02, !dbg !670
  %112 = fcmp ult float %111, 1.270000e+02, !dbg !670
  %113 = select i1 %112, float %111, float 1.270000e+02, !dbg !670
  %114 = fptosi float %113 to i8, !dbg !670
  %115 = icmp sgt i8 %114, 0, !dbg !671
  %116 = select i1 %115, i8 %114, i8 0, !dbg !671
  %117 = sitofp i8 %116 to float, !dbg !671
  %118 = bitcast float %117 to i32, !dbg !666
  %119 = call float @llvm.round.f32(float %117), !dbg !666
  %120 = bitcast float %119 to i32, !dbg !666
  %121 = lshr i32 %118, 23, !dbg !666
  %122 = and i32 %121, 255, !dbg !666
  %123 = sub i32 %122, 127, !dbg !666
  %124 = lshr i32 %120, 23, !dbg !666
  %125 = and i32 %124, 255, !dbg !666
  %126 = sub i32 %125, 127, !dbg !666
  %127 = icmp eq i32 %126, 0, !dbg !666
  %128 = sub i32 %125, 128, !dbg !666
  %129 = icmp sgt i32 %128, 0, !dbg !666
  %130 = select i1 %129, i32 %128, i32 0, !dbg !666
  %131 = icmp slt i32 %130, 31, !dbg !666
  %132 = select i1 %131, i32 %130, i32 31, !dbg !666
  %133 = lshr i32 8388607, %132, !dbg !666
  %134 = and i32 %120, %133, !dbg !666
  %135 = icmp ne i32 %134, 0, !dbg !666
  %136 = or i1 %135, %127, !dbg !666
  %137 = icmp eq i32 %123, -1, !dbg !666
  %138 = icmp sgt i32 %123, 0, !dbg !666
  %139 = select i1 %138, i32 %123, i32 0, !dbg !666
  %140 = icmp slt i32 %139, 31, !dbg !666
  %141 = select i1 %140, i32 %139, i32 31, !dbg !666
  %142 = lshr i32 4194304, %141, !dbg !666
  %143 = select i1 %137, i32 0, i32 %142, !dbg !666
  %144 = lshr i32 8388607, %141, !dbg !666
  %145 = and i32 %118, %144, !dbg !666
  %146 = icmp eq i32 %145, %143, !dbg !666
  %147 = icmp sge i32 %123, -1, !dbg !666
  %148 = icmp slt i32 %123, 23, !dbg !666
  %149 = and i1 %146, %148, !dbg !666
  %150 = and i1 %149, %147, !dbg !666
  %151 = call float @llvm.copysign.f32(float 1.000000e+00, float %117), !dbg !666
  %152 = fsub contract float %119, %151, !dbg !666
  %153 = and i1 %136, %150, !dbg !666
  %154 = select i1 %153, float %152, float %119, !dbg !666
  %155 = call float @llvm.copysign.f32(float %154, float %117), !dbg !666
  %156 = fadd contract float %155, 0.000000e+00, !dbg !666
  %157 = fcmp ugt float %156, -1.280000e+02, !dbg !666
  %158 = select i1 %157, float %156, float -1.280000e+02, !dbg !666
  %159 = fcmp ult float %158, 1.270000e+02, !dbg !666
  %160 = select i1 %159, float %158, float 1.270000e+02, !dbg !666
  %161 = fptosi float %160 to i8, !dbg !666
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 %62, !dbg !666
  store i8 %161, ptr %162, align 1, !dbg !666
  %163 = add i64 %52, 1, !dbg !666
  br label %51, !dbg !666

164:                                              ; preds = %51
  %165 = add i64 %49, 1, !dbg !666
  br label %48, !dbg !666

166:                                              ; preds = %48
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !664
  ret i32 0, !dbg !664
}

define internal i32 @"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !672 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !673
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !673
  %6 = load ptr, ptr %5, align 8, !dbg !673
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !673
  %8 = load ptr, ptr %7, align 8, !dbg !673
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !673
  %10 = load ptr, ptr %9, align 8, !dbg !673
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !673
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !673
  %13 = zext i32 %12 to i64, !dbg !673
  %14 = sdiv i64 %13, 32, !dbg !673
  %15 = mul i64 %14, 32, !dbg !673
  %16 = icmp ne i64 %13, %15, !dbg !673
  %17 = icmp slt i64 %13, 0, !dbg !673
  %18 = and i1 %16, %17, !dbg !673
  %19 = add i64 %14, -1, !dbg !673
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !673
  %21 = srem i64 %13, 32, !dbg !673
  %22 = icmp slt i64 %21, 0, !dbg !673
  %23 = add nsw i64 %21, 32, !dbg !673
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !673
  %25 = mul nsw i64 %20, 4, !dbg !673
  %26 = mul nsw i64 %24, 16, !dbg !673
  %27 = mul nsw i64 %25, 1024, !dbg !673
  %28 = add i64 %27, 50176, !dbg !673
  %29 = ptrtoint ptr %6 to i64, !dbg !673
  %30 = add i64 %29, %28, !dbg !673
  %31 = add i64 %26, 4263936, !dbg !673
  %32 = ptrtoint ptr %8 to i64, !dbg !673
  %33 = add i64 %32, %31, !dbg !673
  %34 = mul nsw i64 %25, 512, !dbg !673
  %35 = add i64 %34, %26, !dbg !673
  %36 = add i64 %35, 250880, !dbg !673
  %37 = ptrtoint ptr %10 to i64, !dbg !673
  %38 = add i64 %37, %36, !dbg !673
  %39 = add i64 %35, 7608320, !dbg !673
  %40 = mul i64 %39, 4, !dbg !673
  %41 = add i64 %32, %40, !dbg !673
  %42 = and i64 %30, 9223372036854775807, !dbg !673
  %43 = and i64 %33, 9223372036854775807, !dbg !673
  %44 = and i64 %38, 9223372036854775807, !dbg !673
  %45 = and i64 %41, 9223372036854775807, !dbg !673
  call void asm sideeffect "fence", ""(), !dbg !673
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !673
  call void @llvm.riscv.config(i64 6, i64 4355773819479130624), !dbg !673
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !673
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !673
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !673
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !673
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %42, i64 %43), !dbg !673
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %45, i64 %44), !dbg !673
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 512), !dbg !673
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !673
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !673
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !673
  call void asm sideeffect "fence", ""(), !dbg !673
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !673
  ret i32 0, !dbg !673
}

define internal i32 @"main_graph$async_dispatch_87_generic_7x7x1024_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !674 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !675
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !675
  %6 = load ptr, ptr %5, align 8, !dbg !675
  %7 = getelementptr i8, ptr %6, i64 50176, !dbg !675
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !675
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !676
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !676
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !676
  %11 = load ptr, ptr %10, align 8, !dbg !676
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !676
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !676
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !676
  %14 = zext i32 %13 to i64, !dbg !676
  %15 = mul nsw i64 %14, 32, !dbg !676
  br label %16, !dbg !676

16:                                               ; preds = %52, %3
  %17 = phi i64 [ %53, %52 ], [ 0, %3 ], !dbg !676
  %18 = icmp slt i64 %17, 7, !dbg !676
  br i1 %18, label %19, label %54, !dbg !676

19:                                               ; preds = %16
  %20 = mul nsw i64 %17, 2, !dbg !676
  br label %21, !dbg !676

21:                                               ; preds = %50, %19
  %22 = phi i64 [ %51, %50 ], [ 0, %19 ], !dbg !676
  %23 = icmp slt i64 %22, 7, !dbg !676
  br i1 %23, label %24, label %52, !dbg !676

24:                                               ; preds = %21
  %25 = mul nsw i64 %22, 2, !dbg !676
  br label %26, !dbg !676

26:                                               ; preds = %48, %24
  %27 = phi i64 [ %49, %48 ], [ 0, %24 ], !dbg !676
  %28 = icmp slt i64 %27, 32, !dbg !676
  br i1 %28, label %29, label %50, !dbg !676

29:                                               ; preds = %26
  %30 = add i64 %27, %15, !dbg !676
  br label %31, !dbg !676

31:                                               ; preds = %34, %29
  %32 = phi i64 [ %47, %34 ], [ 0, %29 ], !dbg !676
  %33 = icmp slt i64 %32, 8, !dbg !676
  br i1 %33, label %34, label %48, !dbg !676

34:                                               ; preds = %31
  %35 = add i64 %30, %32, !dbg !676
  %36 = mul nuw nsw i64 %20, 14336, !dbg !676
  %37 = mul nuw nsw i64 %25, 1024, !dbg !676
  %38 = add nuw nsw i64 %36, %37, !dbg !676
  %39 = add nuw nsw i64 %38, %35, !dbg !676
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39, !dbg !676
  %41 = load i8, ptr %40, align 1, !dbg !676
  %42 = mul nuw nsw i64 %17, 7168, !dbg !676
  %43 = mul nuw nsw i64 %22, 1024, !dbg !676
  %44 = add nuw nsw i64 %42, %43, !dbg !676
  %45 = add nuw nsw i64 %44, %35, !dbg !676
  %46 = getelementptr inbounds nuw i8, ptr %11, i64 %45, !dbg !676
  store i8 %41, ptr %46, align 1, !dbg !676
  %47 = add i64 %32, 1, !dbg !676
  br label %31, !dbg !676

48:                                               ; preds = %31
  %49 = add i64 %27, 8, !dbg !676
  br label %26, !dbg !676

50:                                               ; preds = %26
  %51 = add i64 %22, 1, !dbg !676
  br label %21, !dbg !676

52:                                               ; preds = %21
  %53 = add i64 %17, 1, !dbg !676
  br label %16, !dbg !676

54:                                               ; preds = %16
  ret i32 0, !dbg !676
}

define internal i32 @"main_graph$async_dispatch_88_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !677 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !678
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !678
  %6 = load ptr, ptr %5, align 8, !dbg !678
  %7 = getelementptr i8, ptr %6, i64 250880, !dbg !678
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !678
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !679
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !679
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !679
  %11 = load ptr, ptr %10, align 8, !dbg !679
  %12 = getelementptr i8, ptr %11, i64 351232, !dbg !679
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !679
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !679
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !679
  %15 = zext i32 %14 to i64, !dbg !679
  %16 = sdiv i64 %15, 8, !dbg !679
  %17 = mul i64 %16, 8, !dbg !679
  %18 = icmp ne i64 %15, %17, !dbg !679
  %19 = icmp slt i64 %15, 0, !dbg !679
  %20 = and i1 %18, %19, !dbg !679
  %21 = add i64 %16, -1, !dbg !679
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !679
  %23 = srem i64 %15, 8, !dbg !679
  %24 = icmp slt i64 %23, 0, !dbg !679
  %25 = add nsw i64 %23, 8, !dbg !679
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !679
  %27 = mul nsw i64 %22, 8, !dbg !679
  %28 = mul nsw i64 %26, 64, !dbg !679
  %29 = mul nsw i64 %22, -8, !dbg !679
  %30 = add i64 %29, 14, !dbg !679
  %31 = icmp slt i64 %30, 8, !dbg !679
  %32 = select i1 %31, i64 %30, i64 8, !dbg !679
  br label %33, !dbg !679

33:                                               ; preds = %61, %3
  %34 = phi i64 [ %62, %61 ], [ 0, %3 ], !dbg !679
  %35 = icmp slt i64 %34, %32, !dbg !679
  br i1 %35, label %36, label %63, !dbg !679

36:                                               ; preds = %59, %33
  %37 = phi i64 [ %60, %59 ], [ 0, %33 ], !dbg !679
  %38 = icmp slt i64 %37, 14, !dbg !679
  br i1 %38, label %39, label %61, !dbg !679

39:                                               ; preds = %42, %36
  %40 = phi i64 [ %58, %42 ], [ 0, %36 ], !dbg !679
  %41 = icmp slt i64 %40, 64, !dbg !679
  br i1 %41, label %42, label %59, !dbg !679

42:                                               ; preds = %39
  %43 = add i64 %27, %34, !dbg !679
  %44 = add i64 %28, %40, !dbg !679
  %45 = mul i64 %43, 7168, !dbg !679
  %46 = mul i64 %37, 512, !dbg !679
  %47 = add i64 %45, %46, !dbg !679
  %48 = add i64 %47, %44, !dbg !679
  %49 = getelementptr i8, ptr %7, i64 %48, !dbg !679
  %50 = load <2 x i8>, ptr %49, align 1, !dbg !679
  %51 = add i64 %43, 1, !dbg !679
  %52 = add i64 %37, 1, !dbg !679
  %53 = mul i64 %51, 8192, !dbg !679
  %54 = mul i64 %52, 512, !dbg !679
  %55 = add i64 %53, %54, !dbg !679
  %56 = add i64 %55, %44, !dbg !679
  %57 = getelementptr i8, ptr %12, i64 %56, !dbg !679
  store <2 x i8> %50, ptr %57, align 1, !dbg !679
  %58 = add i64 %40, 2, !dbg !679
  br label %39, !dbg !679

59:                                               ; preds = %39
  %60 = add i64 %37, 1, !dbg !679
  br label %36, !dbg !679

61:                                               ; preds = %36
  %62 = add i64 %34, 1, !dbg !679
  br label %33, !dbg !679

63:                                               ; preds = %33
  ret i32 0, !dbg !679
}

define internal i32 @"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !680 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !681
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !681
  %6 = load ptr, ptr %5, align 8, !dbg !681
  %7 = getelementptr i8, ptr %6, i64 351232, !dbg !681
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !681
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !681
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !681
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !681
  %11 = load ptr, ptr %10, align 8, !dbg !681
  %12 = getelementptr i8, ptr %11, i64 50176, !dbg !681
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !681
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !681
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !681
  %15 = zext i32 %14 to i64, !dbg !681
  %16 = sdiv i64 %15, 16, !dbg !681
  %17 = mul i64 %16, 16, !dbg !681
  %18 = icmp ne i64 %15, %17, !dbg !681
  %19 = icmp slt i64 %15, 0, !dbg !681
  %20 = and i1 %18, %19, !dbg !681
  %21 = add i64 %16, -1, !dbg !681
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !681
  %23 = srem i64 %15, 16, !dbg !681
  %24 = icmp slt i64 %23, 0, !dbg !681
  %25 = add nsw i64 %23, 16, !dbg !681
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !681
  %27 = mul nsw i64 %26, 32, !dbg !681
  br label %28, !dbg !681

28:                                               ; preds = %75, %3
  %29 = phi i64 [ %76, %75 ], [ 0, %3 ], !dbg !681
  %30 = icmp slt i64 %29, 7, !dbg !681
  br i1 %30, label %31, label %77, !dbg !681

31:                                               ; preds = %73, %28
  %32 = phi i64 [ %74, %73 ], [ 0, %28 ], !dbg !681
  %33 = icmp slt i64 %32, 3, !dbg !681
  br i1 %33, label %34, label %75, !dbg !681

34:                                               ; preds = %31
  %35 = mul nsw i64 %22, 2, !dbg !681
  %36 = add i64 %32, %35, !dbg !681
  br label %37, !dbg !681

37:                                               ; preds = %71, %34
  %38 = phi i64 [ %72, %71 ], [ 0, %34 ], !dbg !681
  %39 = icmp slt i64 %38, 3, !dbg !681
  br i1 %39, label %40, label %73, !dbg !681

40:                                               ; preds = %37
  %41 = mul nsw i64 %29, 2, !dbg !681
  %42 = add i64 %41, %38, !dbg !681
  br label %43, !dbg !681

43:                                               ; preds = %69, %40
  %44 = phi i64 [ %70, %69 ], [ 0, %40 ], !dbg !681
  %45 = icmp slt i64 %44, 32, !dbg !681
  br i1 %45, label %46, label %71, !dbg !681

46:                                               ; preds = %43
  %47 = add i64 %44, %27, !dbg !681
  br label %48, !dbg !681

48:                                               ; preds = %51, %46
  %49 = phi i64 [ %68, %51 ], [ 0, %46 ], !dbg !681
  %50 = icmp slt i64 %49, 8, !dbg !681
  br i1 %50, label %51, label %69, !dbg !681

51:                                               ; preds = %48
  %52 = add i64 %47, %49, !dbg !681
  %53 = mul nuw nsw i64 %36, 8192, !dbg !681
  %54 = mul nuw nsw i64 %42, 512, !dbg !681
  %55 = add nuw nsw i64 %53, %54, !dbg !681
  %56 = add nuw nsw i64 %55, %52, !dbg !681
  %57 = getelementptr inbounds nuw i8, ptr %7, i64 %56, !dbg !681
  %58 = load i8, ptr %57, align 1, !dbg !681
  %59 = mul nuw nsw i64 %22, 32256, !dbg !681
  %60 = mul nuw nsw i64 %29, 4608, !dbg !681
  %61 = add nuw nsw i64 %59, %60, !dbg !681
  %62 = mul nuw nsw i64 %32, 1536, !dbg !681
  %63 = add nuw nsw i64 %61, %62, !dbg !681
  %64 = mul nuw nsw i64 %38, 512, !dbg !681
  %65 = add nuw nsw i64 %63, %64, !dbg !681
  %66 = add nuw nsw i64 %65, %52, !dbg !681
  %67 = getelementptr inbounds nuw i8, ptr %12, i64 %66, !dbg !681
  store i8 %58, ptr %67, align 1, !dbg !681
  %68 = add i64 %49, 1, !dbg !681
  br label %48, !dbg !681

69:                                               ; preds = %48
  %70 = add i64 %44, 8, !dbg !681
  br label %43, !dbg !681

71:                                               ; preds = %43
  %72 = add i64 %38, 1, !dbg !681
  br label %37, !dbg !681

73:                                               ; preds = %37
  %74 = add i64 %32, 1, !dbg !681
  br label %31, !dbg !681

75:                                               ; preds = %31
  %76 = add i64 %29, 1, !dbg !681
  br label %28, !dbg !681

77:                                               ; preds = %28
  ret i32 0, !dbg !681
}

define internal i32 @"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !682 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !683
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !683
  %6 = load ptr, ptr %5, align 8, !dbg !683
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !683
  %8 = load ptr, ptr %7, align 8, !dbg !683
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !683
  %10 = load ptr, ptr %9, align 8, !dbg !683
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !683
  %12 = load ptr, ptr %11, align 8, !dbg !683
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !683
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !683
  %15 = zext i32 %14 to i64, !dbg !683
  %16 = sdiv i64 %15, 32, !dbg !683
  %17 = mul i64 %16, 32, !dbg !683
  %18 = icmp ne i64 %15, %17, !dbg !683
  %19 = icmp slt i64 %15, 0, !dbg !683
  %20 = and i1 %18, %19, !dbg !683
  %21 = add i64 %16, -1, !dbg !683
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !683
  %23 = srem i64 %15, 32, !dbg !683
  %24 = icmp slt i64 %23, 0, !dbg !683
  %25 = add nsw i64 %23, 32, !dbg !683
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !683
  %27 = mul nsw i64 %26, 16, !dbg !683
  %28 = mul nsw i64 %22, 4608, !dbg !683
  %29 = add i64 %28, 50176, !dbg !683
  %30 = ptrtoint ptr %6 to i64, !dbg !683
  %31 = add i64 %30, %29, !dbg !683
  %32 = add i64 %27, 4267904, !dbg !683
  %33 = ptrtoint ptr %8 to i64, !dbg !683
  %34 = add i64 %33, %32, !dbg !683
  %35 = mul nsw i64 %22, 512, !dbg !683
  %36 = add i64 %35, %27, !dbg !683
  %37 = add i64 %36, 275968, !dbg !683
  %38 = ptrtoint ptr %12 to i64, !dbg !683
  %39 = add i64 %38, %37, !dbg !683
  %40 = add i64 %36, 7809024, !dbg !683
  %41 = ptrtoint ptr %10 to i64, !dbg !683
  %42 = mul i64 %40, 4, !dbg !683
  %43 = add i64 %41, %42, !dbg !683
  %44 = and i64 %31, 9223372036854775807, !dbg !683
  %45 = and i64 %34, 9223372036854775807, !dbg !683
  %46 = and i64 %39, 9223372036854775807, !dbg !683
  %47 = and i64 %43, 9223372036854775807, !dbg !683
  call void asm sideeffect "fence", ""(), !dbg !683
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !683
  call void @llvm.riscv.config(i64 6, i64 4275887694061502976), !dbg !683
  call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !683
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !683
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !683
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !683
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %44, i64 %45), !dbg !683
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %47, i64 0), !dbg !683
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !683
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !683
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !683
  %48 = add i64 %44, 2048, !dbg !683
  %49 = add i64 %45, 1048576, !dbg !683
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !683
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !683
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !683
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !683
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !683
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !683
  %50 = add i64 %44, 4096, !dbg !683
  %51 = add i64 %45, 2097152, !dbg !683
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !683
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %50, i64 %51), !dbg !683
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %46), !dbg !683
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !683
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !683
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !683
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !683
  call void asm sideeffect "fence", ""(), !dbg !683
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !683
  ret i32 0, !dbg !683
}

define internal i32 @"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !684 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !685
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !685
  %6 = load ptr, ptr %5, align 8, !dbg !685
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !685
  %8 = load ptr, ptr %7, align 8, !dbg !685
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !685
  %10 = load ptr, ptr %9, align 8, !dbg !685
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !685
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !685
  %13 = zext i32 %12 to i64, !dbg !685
  %14 = sdiv i64 %13, 128, !dbg !685
  %15 = mul i64 %14, 128, !dbg !685
  %16 = icmp ne i64 %13, %15, !dbg !685
  %17 = icmp slt i64 %13, 0, !dbg !685
  %18 = and i1 %16, %17, !dbg !685
  %19 = add i64 %14, -1, !dbg !685
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !685
  %21 = srem i64 %13, 128, !dbg !685
  %22 = icmp slt i64 %21, 0, !dbg !685
  %23 = add nsw i64 %21, 128, !dbg !685
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !685
  %25 = mul nsw i64 %24, 16, !dbg !685
  %26 = mul nsw i64 %20, 512, !dbg !685
  %27 = add i64 %26, 275968, !dbg !685
  %28 = ptrtoint ptr %6 to i64, !dbg !685
  %29 = add i64 %28, %27, !dbg !685
  %30 = add i64 %25, 6885376, !dbg !685
  %31 = ptrtoint ptr %8 to i64, !dbg !685
  %32 = add i64 %31, %30, !dbg !685
  %33 = mul nsw i64 %20, 2048, !dbg !685
  %34 = add i64 %33, %25, !dbg !685
  %35 = add i64 %34, 50176, !dbg !685
  %36 = ptrtoint ptr %10 to i64, !dbg !685
  %37 = add i64 %36, %35, !dbg !685
  %38 = add i64 %34, 7834112, !dbg !685
  %39 = mul i64 %38, 4, !dbg !685
  %40 = add i64 %31, %39, !dbg !685
  %41 = and i64 %29, 9223372036854775807, !dbg !685
  %42 = and i64 %32, 9223372036854775807, !dbg !685
  %43 = and i64 %37, 9223372036854775807, !dbg !685
  %44 = and i64 %40, 9223372036854775807, !dbg !685
  call void asm sideeffect "fence", ""(), !dbg !685
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !685
  call void @llvm.riscv.config(i64 2, i64 4319000794822084608), !dbg !685
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !685
  call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !685
  call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !685
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !685
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %41, i64 %42), !dbg !685
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %44, i64 %43), !dbg !685
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 2048), !dbg !685
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 2048), !dbg !685
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !685
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !685
  call void asm sideeffect "fence", ""(), !dbg !685
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !685
  ret i32 0, !dbg !685
}

define internal i32 @"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !686 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !687
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !687
  %6 = load ptr, ptr %5, align 8, !dbg !687
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !687
  %8 = load ptr, ptr %7, align 8, !dbg !687
  %9 = getelementptr i8, ptr %6, i64 50176, !dbg !688
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !688
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !687
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !687
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !687
  %13 = load ptr, ptr %12, align 8, !dbg !687
  %14 = getelementptr i8, ptr %13, i64 150528, !dbg !687
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !687
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !687
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !687
  %17 = zext i32 %16 to i64, !dbg !687
  %18 = sdiv i64 %17, 128, !dbg !687
  %19 = mul i64 %18, 128, !dbg !687
  %20 = icmp ne i64 %17, %19, !dbg !687
  %21 = icmp slt i64 %17, 0, !dbg !687
  %22 = and i1 %20, %21, !dbg !687
  %23 = add i64 %18, -1, !dbg !687
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !687
  %25 = srem i64 %17, 128, !dbg !687
  %26 = icmp slt i64 %25, 0, !dbg !687
  %27 = add nsw i64 %25, 128, !dbg !687
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !687
  %29 = mul nsw i64 %28, 16, !dbg !687
  %30 = alloca i8, i64 16, align 1, !dbg !687
  %31 = mul nsw i64 %24, 1024, !dbg !687
  %32 = ptrtoint ptr %6 to i64, !dbg !687
  %33 = add i64 %32, %31, !dbg !687
  %34 = add i64 %29, 4788224, !dbg !687
  %35 = ptrtoint ptr %8 to i64, !dbg !687
  %36 = add i64 %35, %34, !dbg !687
  %37 = ptrtoint ptr %30 to i64, !dbg !687
  %38 = mul nsw i64 %24, 2048, !dbg !687
  %39 = add i64 %38, %29, !dbg !687
  %40 = add i64 %39, 7708672, !dbg !687
  %41 = mul i64 %40, 4, !dbg !687
  %42 = add i64 %35, %41, !dbg !687
  %43 = and i64 %33, 9223372036854775807, !dbg !687
  %44 = and i64 %36, 9223372036854775807, !dbg !687
  %45 = and i64 %37, 9223372036854775807, !dbg !687
  %46 = and i64 %42, 9223372036854775807, !dbg !687
  call void asm sideeffect "fence", ""(), !dbg !687
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !687
  call void @llvm.riscv.config(i64 2, i64 4312260011154735120), !dbg !687
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !687
  call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !687
  call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !687
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 274877972481), !dbg !687
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %43, i64 %44), !dbg !687
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %46, i64 %45), !dbg !687
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 2048), !dbg !687
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 16), !dbg !687
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !687
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !687
  call void asm sideeffect "fence", ""(), !dbg !687
  br label %47, !dbg !689

47:                                               ; preds = %50, %3
  %48 = phi i64 [ %157, %50 ], [ 0, %3 ], !dbg !689
  %49 = icmp slt i64 %48, 16, !dbg !689
  br i1 %49, label %50, label %158, !dbg !689

50:                                               ; preds = %47
  %51 = add i64 %29, %48, !dbg !689
  %52 = mul nuw nsw i64 %24, 2048, !dbg !689
  %53 = add nuw nsw i64 %52, %51, !dbg !689
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 %53, !dbg !689
  %55 = load i8, ptr %54, align 1, !dbg !689
  %56 = add nuw nsw i64 0, %48, !dbg !689
  %57 = getelementptr inbounds nuw i8, ptr %30, i64 %56, !dbg !689
  %58 = load i8, ptr %57, align 1, !dbg !689
  %59 = sitofp i8 %58 to float, !dbg !690
  %60 = fmul contract float %59, 0x3FE33CB880000000, !dbg !690
  %61 = sitofp i8 %55 to float, !dbg !691
  %62 = fmul contract float %61, 0x3FC0FDF6C0000000, !dbg !691
  %63 = fadd contract float %62, %60, !dbg !692
  %64 = fdiv float %63, 0x3FE413DDC0000000, !dbg !693
  %65 = bitcast float %64 to i32, !dbg !693
  %66 = call float @llvm.round.f32(float %64), !dbg !693
  %67 = bitcast float %66 to i32, !dbg !693
  %68 = lshr i32 %65, 23, !dbg !693
  %69 = and i32 %68, 255, !dbg !693
  %70 = sub i32 %69, 127, !dbg !693
  %71 = lshr i32 %67, 23, !dbg !693
  %72 = and i32 %71, 255, !dbg !693
  %73 = sub i32 %72, 127, !dbg !693
  %74 = icmp eq i32 %73, 0, !dbg !693
  %75 = sub i32 %72, 128, !dbg !693
  %76 = icmp sgt i32 %75, 0, !dbg !693
  %77 = select i1 %76, i32 %75, i32 0, !dbg !693
  %78 = icmp slt i32 %77, 31, !dbg !693
  %79 = select i1 %78, i32 %77, i32 31, !dbg !693
  %80 = lshr i32 8388607, %79, !dbg !693
  %81 = and i32 %67, %80, !dbg !693
  %82 = icmp ne i32 %81, 0, !dbg !693
  %83 = or i1 %82, %74, !dbg !693
  %84 = icmp eq i32 %70, -1, !dbg !693
  %85 = icmp sgt i32 %70, 0, !dbg !693
  %86 = select i1 %85, i32 %70, i32 0, !dbg !693
  %87 = icmp slt i32 %86, 31, !dbg !693
  %88 = select i1 %87, i32 %86, i32 31, !dbg !693
  %89 = lshr i32 4194304, %88, !dbg !693
  %90 = select i1 %84, i32 0, i32 %89, !dbg !693
  %91 = lshr i32 8388607, %88, !dbg !693
  %92 = and i32 %65, %91, !dbg !693
  %93 = icmp eq i32 %92, %90, !dbg !693
  %94 = icmp sge i32 %70, -1, !dbg !693
  %95 = icmp slt i32 %70, 23, !dbg !693
  %96 = and i1 %93, %95, !dbg !693
  %97 = and i1 %96, %94, !dbg !693
  %98 = call float @llvm.copysign.f32(float 1.000000e+00, float %64), !dbg !693
  %99 = fsub contract float %66, %98, !dbg !693
  %100 = and i1 %83, %97, !dbg !693
  %101 = select i1 %100, float %99, float %66, !dbg !693
  %102 = call float @llvm.copysign.f32(float %101, float %64), !dbg !693
  %103 = fadd contract float %102, 0.000000e+00, !dbg !693
  %104 = fcmp ugt float %103, -1.280000e+02, !dbg !693
  %105 = select i1 %104, float %103, float -1.280000e+02, !dbg !693
  %106 = fcmp ult float %105, 1.270000e+02, !dbg !693
  %107 = select i1 %106, float %105, float 1.270000e+02, !dbg !693
  %108 = fptosi float %107 to i8, !dbg !693
  %109 = icmp sgt i8 %108, 0, !dbg !694
  %110 = select i1 %109, i8 %108, i8 0, !dbg !694
  %111 = sitofp i8 %110 to float, !dbg !694
  %112 = bitcast float %111 to i32, !dbg !689
  %113 = call float @llvm.round.f32(float %111), !dbg !689
  %114 = bitcast float %113 to i32, !dbg !689
  %115 = lshr i32 %112, 23, !dbg !689
  %116 = and i32 %115, 255, !dbg !689
  %117 = sub i32 %116, 127, !dbg !689
  %118 = lshr i32 %114, 23, !dbg !689
  %119 = and i32 %118, 255, !dbg !689
  %120 = sub i32 %119, 127, !dbg !689
  %121 = icmp eq i32 %120, 0, !dbg !689
  %122 = sub i32 %119, 128, !dbg !689
  %123 = icmp sgt i32 %122, 0, !dbg !689
  %124 = select i1 %123, i32 %122, i32 0, !dbg !689
  %125 = icmp slt i32 %124, 31, !dbg !689
  %126 = select i1 %125, i32 %124, i32 31, !dbg !689
  %127 = lshr i32 8388607, %126, !dbg !689
  %128 = and i32 %114, %127, !dbg !689
  %129 = icmp ne i32 %128, 0, !dbg !689
  %130 = or i1 %129, %121, !dbg !689
  %131 = icmp eq i32 %117, -1, !dbg !689
  %132 = icmp sgt i32 %117, 0, !dbg !689
  %133 = select i1 %132, i32 %117, i32 0, !dbg !689
  %134 = icmp slt i32 %133, 31, !dbg !689
  %135 = select i1 %134, i32 %133, i32 31, !dbg !689
  %136 = lshr i32 4194304, %135, !dbg !689
  %137 = select i1 %131, i32 0, i32 %136, !dbg !689
  %138 = lshr i32 8388607, %135, !dbg !689
  %139 = and i32 %112, %138, !dbg !689
  %140 = icmp eq i32 %139, %137, !dbg !689
  %141 = icmp sge i32 %117, -1, !dbg !689
  %142 = icmp slt i32 %117, 23, !dbg !689
  %143 = and i1 %140, %142, !dbg !689
  %144 = and i1 %143, %141, !dbg !689
  %145 = call float @llvm.copysign.f32(float 1.000000e+00, float %111), !dbg !689
  %146 = fsub contract float %113, %145, !dbg !689
  %147 = and i1 %130, %144, !dbg !689
  %148 = select i1 %147, float %146, float %113, !dbg !689
  %149 = call float @llvm.copysign.f32(float %148, float %111), !dbg !689
  %150 = fadd contract float %149, 0.000000e+00, !dbg !689
  %151 = fcmp ugt float %150, -1.280000e+02, !dbg !689
  %152 = select i1 %151, float %150, float -1.280000e+02, !dbg !689
  %153 = fcmp ult float %152, 1.270000e+02, !dbg !689
  %154 = select i1 %153, float %152, float 1.270000e+02, !dbg !689
  %155 = fptosi float %154 to i8, !dbg !689
  %156 = getelementptr inbounds nuw i8, ptr %14, i64 %53, !dbg !689
  store i8 %155, ptr %156, align 1, !dbg !689
  %157 = add i64 %48, 1, !dbg !689
  br label %47, !dbg !689

158:                                              ; preds = %47
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !687
  ret i32 0, !dbg !687
}

define internal i32 @"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !695 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !696
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !696
  %6 = load ptr, ptr %5, align 8, !dbg !696
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !696
  %8 = load ptr, ptr %7, align 8, !dbg !696
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !696
  %10 = load ptr, ptr %9, align 8, !dbg !696
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !696
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !696
  %13 = zext i32 %12 to i64, !dbg !696
  %14 = sdiv i64 %13, 32, !dbg !696
  %15 = mul i64 %14, 32, !dbg !696
  %16 = icmp ne i64 %13, %15, !dbg !696
  %17 = icmp slt i64 %13, 0, !dbg !696
  %18 = and i1 %16, %17, !dbg !696
  %19 = add i64 %14, -1, !dbg !696
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !696
  %21 = srem i64 %13, 32, !dbg !696
  %22 = icmp slt i64 %21, 0, !dbg !696
  %23 = add nsw i64 %21, 32, !dbg !696
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !696
  %25 = mul nsw i64 %24, 16, !dbg !696
  %26 = mul nsw i64 %20, 2048, !dbg !696
  %27 = add i64 %26, 150528, !dbg !696
  %28 = ptrtoint ptr %6 to i64, !dbg !696
  %29 = add i64 %28, %27, !dbg !696
  %30 = add i64 %25, 7933952, !dbg !696
  %31 = ptrtoint ptr %8 to i64, !dbg !696
  %32 = add i64 %31, %30, !dbg !696
  %33 = mul nsw i64 %20, 512, !dbg !696
  %34 = add i64 %33, %25, !dbg !696
  %35 = ptrtoint ptr %10 to i64, !dbg !696
  %36 = add i64 %35, %34, !dbg !696
  %37 = add i64 %34, 7934464, !dbg !696
  %38 = mul i64 %37, 4, !dbg !696
  %39 = add i64 %31, %38, !dbg !696
  %40 = and i64 %29, 9223372036854775807, !dbg !696
  %41 = and i64 %32, 9223372036854775807, !dbg !696
  %42 = and i64 %36, 9223372036854775807, !dbg !696
  %43 = and i64 %39, 9223372036854775807, !dbg !696
  call void asm sideeffect "fence", ""(), !dbg !696
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !696
  call void @llvm.riscv.config(i64 6, i64 4335228504116298240), !dbg !696
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !696
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !696
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !696
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !696
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %40, i64 %41), !dbg !696
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %43, i64 %42), !dbg !696
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 512), !dbg !696
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !696
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !696
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !696
  call void asm sideeffect "fence", ""(), !dbg !696
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !696
  ret i32 0, !dbg !696
}

define internal i32 @"main_graph$async_dispatch_94_slow_memcpy"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !697 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !698
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !698
  %6 = load i32, ptr %5, align 4, !dbg !698
  %7 = zext i32 %6 to i64, !dbg !698
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !699
  %9 = load ptr, ptr %8, align 8, !dbg !699
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !699
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !698
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !698
  %12 = getelementptr ptr, ptr %11, i32 1, !dbg !698
  %13 = load ptr, ptr %12, align 8, !dbg !698
  %14 = mul i64 %7, 8, !dbg !698
  %15 = udiv i64 %14, 8, !dbg !698
  %16 = getelementptr i8, ptr %13, i64 %15, !dbg !698
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !698
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !698
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !698
  %19 = zext i32 %18 to i64, !dbg !698
  %20 = mul nsw i64 %19, 128, !dbg !698
  br label %21, !dbg !698

21:                                               ; preds = %48, %3
  %22 = phi i64 [ %49, %48 ], [ 0, %3 ], !dbg !698
  %23 = icmp slt i64 %22, 7, !dbg !698
  br i1 %23, label %24, label %50, !dbg !698

24:                                               ; preds = %46, %21
  %25 = phi i64 [ %47, %46 ], [ 0, %21 ], !dbg !698
  %26 = icmp slt i64 %25, 7, !dbg !698
  br i1 %26, label %27, label %48, !dbg !698

27:                                               ; preds = %30, %24
  %28 = phi i64 [ %45, %30 ], [ 0, %24 ], !dbg !698
  %29 = icmp slt i64 %28, 128, !dbg !698
  br i1 %29, label %30, label %46, !dbg !698

30:                                               ; preds = %27
  %31 = add i64 %20, %28, !dbg !698
  %32 = mul i64 %22, 3584, !dbg !698
  %33 = mul i64 %25, 512, !dbg !698
  %34 = add i64 %32, %33, !dbg !698
  %35 = add i64 %34, %31, !dbg !698
  %36 = getelementptr i8, ptr %9, i64 %35, !dbg !698
  %37 = load <2 x i8>, ptr %36, align 1, !dbg !698
  %38 = add i64 %22, 1, !dbg !698
  %39 = add i64 %25, 1, !dbg !698
  %40 = mul i64 %38, 4608, !dbg !698
  %41 = mul i64 %39, 512, !dbg !698
  %42 = add i64 %40, %41, !dbg !698
  %43 = add i64 %42, %31, !dbg !698
  %44 = getelementptr i8, ptr %16, i64 %43, !dbg !698
  store <2 x i8> %37, ptr %44, align 1, !dbg !698
  %45 = add i64 %28, 2, !dbg !698
  br label %27, !dbg !698

46:                                               ; preds = %27
  %47 = add i64 %25, 1, !dbg !698
  br label %24, !dbg !698

48:                                               ; preds = %24
  %49 = add i64 %22, 1, !dbg !698
  br label %21, !dbg !698

50:                                               ; preds = %21
  ret i32 0, !dbg !698
}

define internal i32 @"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !700 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !701
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !701
  %6 = load ptr, ptr %5, align 8, !dbg !701
  %7 = getelementptr i8, ptr %6, i64 25088, !dbg !701
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !701
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !701
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !701
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !701
  %11 = load ptr, ptr %10, align 8, !dbg !701
  %12 = getelementptr i8, ptr %11, i64 250880, !dbg !701
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !701
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !701
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !701
  %15 = zext i32 %14 to i64, !dbg !701
  %16 = sdiv i64 %15, 16, !dbg !701
  %17 = mul i64 %16, 16, !dbg !701
  %18 = icmp ne i64 %15, %17, !dbg !701
  %19 = icmp slt i64 %15, 0, !dbg !701
  %20 = and i1 %18, %19, !dbg !701
  %21 = add i64 %16, -1, !dbg !701
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !701
  %23 = srem i64 %15, 16, !dbg !701
  %24 = icmp slt i64 %23, 0, !dbg !701
  %25 = add nsw i64 %23, 16, !dbg !701
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !701
  %27 = mul nsw i64 %26, 32, !dbg !701
  br label %28, !dbg !701

28:                                               ; preds = %73, %3
  %29 = phi i64 [ %74, %73 ], [ 0, %3 ], !dbg !701
  %30 = icmp slt i64 %29, 7, !dbg !701
  br i1 %30, label %31, label %75, !dbg !701

31:                                               ; preds = %71, %28
  %32 = phi i64 [ %72, %71 ], [ 0, %28 ], !dbg !701
  %33 = icmp slt i64 %32, 3, !dbg !701
  br i1 %33, label %34, label %73, !dbg !701

34:                                               ; preds = %31
  %35 = add i64 %32, %22, !dbg !701
  br label %36, !dbg !701

36:                                               ; preds = %69, %34
  %37 = phi i64 [ %70, %69 ], [ 0, %34 ], !dbg !701
  %38 = icmp slt i64 %37, 3, !dbg !701
  br i1 %38, label %39, label %71, !dbg !701

39:                                               ; preds = %36
  %40 = add i64 %29, %37, !dbg !701
  br label %41, !dbg !701

41:                                               ; preds = %67, %39
  %42 = phi i64 [ %68, %67 ], [ 0, %39 ], !dbg !701
  %43 = icmp slt i64 %42, 32, !dbg !701
  br i1 %43, label %44, label %69, !dbg !701

44:                                               ; preds = %41
  %45 = add i64 %42, %27, !dbg !701
  br label %46, !dbg !701

46:                                               ; preds = %49, %44
  %47 = phi i64 [ %66, %49 ], [ 0, %44 ], !dbg !701
  %48 = icmp slt i64 %47, 8, !dbg !701
  br i1 %48, label %49, label %67, !dbg !701

49:                                               ; preds = %46
  %50 = add i64 %45, %47, !dbg !701
  %51 = mul nuw nsw i64 %35, 4608, !dbg !701
  %52 = mul nuw nsw i64 %40, 512, !dbg !701
  %53 = add nuw nsw i64 %51, %52, !dbg !701
  %54 = add nuw nsw i64 %53, %50, !dbg !701
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 %54, !dbg !701
  %56 = load i8, ptr %55, align 1, !dbg !701
  %57 = mul nuw nsw i64 %22, 32256, !dbg !701
  %58 = mul nuw nsw i64 %29, 4608, !dbg !701
  %59 = add nuw nsw i64 %57, %58, !dbg !701
  %60 = mul nuw nsw i64 %32, 1536, !dbg !701
  %61 = add nuw nsw i64 %59, %60, !dbg !701
  %62 = mul nuw nsw i64 %37, 512, !dbg !701
  %63 = add nuw nsw i64 %61, %62, !dbg !701
  %64 = add nuw nsw i64 %63, %50, !dbg !701
  %65 = getelementptr inbounds nuw i8, ptr %12, i64 %64, !dbg !701
  store i8 %56, ptr %65, align 1, !dbg !701
  %66 = add i64 %47, 1, !dbg !701
  br label %46, !dbg !701

67:                                               ; preds = %46
  %68 = add i64 %42, 8, !dbg !701
  br label %41, !dbg !701

69:                                               ; preds = %41
  %70 = add i64 %37, 1, !dbg !701
  br label %36, !dbg !701

71:                                               ; preds = %36
  %72 = add i64 %32, 1, !dbg !701
  br label %31, !dbg !701

73:                                               ; preds = %31
  %74 = add i64 %29, 1, !dbg !701
  br label %28, !dbg !701

75:                                               ; preds = %28
  ret i32 0, !dbg !701
}

define internal i32 @"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !702 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !703
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !703
  %6 = load ptr, ptr %5, align 8, !dbg !703
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !703
  %8 = load ptr, ptr %7, align 8, !dbg !703
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !703
  %10 = load ptr, ptr %9, align 8, !dbg !703
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !703
  %12 = load ptr, ptr %11, align 8, !dbg !703
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !703
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !703
  %15 = zext i32 %14 to i64, !dbg !703
  %16 = sdiv i64 %15, 32, !dbg !703
  %17 = mul i64 %16, 32, !dbg !703
  %18 = icmp ne i64 %15, %17, !dbg !703
  %19 = icmp slt i64 %15, 0, !dbg !703
  %20 = and i1 %18, %19, !dbg !703
  %21 = add i64 %16, -1, !dbg !703
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !703
  %23 = srem i64 %15, 32, !dbg !703
  %24 = icmp slt i64 %23, 0, !dbg !703
  %25 = add nsw i64 %23, 32, !dbg !703
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !703
  %27 = mul nsw i64 %26, 16, !dbg !703
  %28 = mul nsw i64 %22, 4608, !dbg !703
  %29 = add i64 %28, 250880, !dbg !703
  %30 = ptrtoint ptr %6 to i64, !dbg !703
  %31 = add i64 %30, %29, !dbg !703
  %32 = add i64 %27, 6627200, !dbg !703
  %33 = ptrtoint ptr %8 to i64, !dbg !703
  %34 = add i64 %33, %32, !dbg !703
  %35 = mul nsw i64 %22, 512, !dbg !703
  %36 = add i64 %35, %27, !dbg !703
  %37 = ptrtoint ptr %12 to i64, !dbg !703
  %38 = add i64 %37, %36, !dbg !703
  %39 = add i64 %36, 7959552, !dbg !703
  %40 = ptrtoint ptr %10 to i64, !dbg !703
  %41 = mul i64 %39, 4, !dbg !703
  %42 = add i64 %40, %41, !dbg !703
  %43 = and i64 %31, 9223372036854775807, !dbg !703
  %44 = and i64 %34, 9223372036854775807, !dbg !703
  %45 = and i64 %38, 9223372036854775807, !dbg !703
  %46 = and i64 %42, 9223372036854775807, !dbg !703
  call void asm sideeffect "fence", ""(), !dbg !703
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !703
  call void @llvm.riscv.config(i64 6, i64 4322067556090249728), !dbg !703
  call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !703
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !703
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !703
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !703
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %43, i64 %44), !dbg !703
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %46, i64 0), !dbg !703
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !703
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !703
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !703
  %47 = add i64 %43, 2048, !dbg !703
  %48 = add i64 %44, 1048576, !dbg !703
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !703
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %47, i64 %48), !dbg !703
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !703
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !703
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !703
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !703
  %49 = add i64 %43, 4096, !dbg !703
  %50 = add i64 %44, 2097152, !dbg !703
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !703
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %49, i64 %50), !dbg !703
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %45), !dbg !703
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !703
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !703
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !703
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !703
  call void asm sideeffect "fence", ""(), !dbg !703
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !703
  ret i32 0, !dbg !703
}

define internal i32 @"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !704 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !705
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !705
  %6 = load ptr, ptr %5, align 8, !dbg !705
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !705
  %8 = load ptr, ptr %7, align 8, !dbg !705
  %9 = getelementptr i8, ptr %6, i64 150528, !dbg !706
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !706
  %10 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !705
  %11 = extractvalue %iree_hal_executable_dispatch_state_v0_t %10, 10, !dbg !705
  %12 = getelementptr ptr, ptr %11, i32 2, !dbg !705
  %13 = load ptr, ptr %12, align 8, !dbg !705
  %14 = getelementptr i8, ptr %13, i64 25088, !dbg !705
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !705
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !705
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !705
  %17 = zext i32 %16 to i64, !dbg !705
  %18 = sdiv i64 %17, 128, !dbg !705
  %19 = mul i64 %18, 128, !dbg !705
  %20 = icmp ne i64 %17, %19, !dbg !705
  %21 = icmp slt i64 %17, 0, !dbg !705
  %22 = and i1 %20, %21, !dbg !705
  %23 = add i64 %18, -1, !dbg !705
  %24 = select i1 %22, i64 %23, i64 %18, !dbg !705
  %25 = srem i64 %17, 128, !dbg !705
  %26 = icmp slt i64 %25, 0, !dbg !705
  %27 = add nsw i64 %25, 128, !dbg !705
  %28 = select i1 %26, i64 %27, i64 %25, !dbg !705
  %29 = mul nsw i64 %28, 16, !dbg !705
  %30 = alloca i8, i64 16, align 1, !dbg !705
  %31 = mul nsw i64 %24, 512, !dbg !705
  %32 = ptrtoint ptr %6 to i64, !dbg !705
  %33 = add i64 %32, %31, !dbg !705
  %34 = add i64 %29, 8982528, !dbg !705
  %35 = ptrtoint ptr %8 to i64, !dbg !705
  %36 = add i64 %35, %34, !dbg !705
  %37 = ptrtoint ptr %30 to i64, !dbg !705
  %38 = mul nsw i64 %24, 2048, !dbg !705
  %39 = add i64 %38, %29, !dbg !705
  %40 = add i64 %39, 7984640, !dbg !705
  %41 = mul i64 %40, 4, !dbg !705
  %42 = add i64 %35, %41, !dbg !705
  %43 = and i64 %33, 9223372036854775807, !dbg !705
  %44 = and i64 %36, 9223372036854775807, !dbg !705
  %45 = and i64 %37, 9223372036854775807, !dbg !705
  %46 = and i64 %42, 9223372036854775807, !dbg !705
  call void asm sideeffect "fence", ""(), !dbg !705
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !705
  call void @llvm.riscv.config(i64 2, i64 4322185736410365968), !dbg !705
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !705
  call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !705
  call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !705
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !705
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %43, i64 %44), !dbg !705
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %46, i64 %45), !dbg !705
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 2048), !dbg !705
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 16), !dbg !705
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !705
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !705
  call void asm sideeffect "fence", ""(), !dbg !705
  br label %47, !dbg !707

47:                                               ; preds = %50, %3
  %48 = phi i64 [ %157, %50 ], [ 0, %3 ], !dbg !707
  %49 = icmp slt i64 %48, 16, !dbg !707
  br i1 %49, label %50, label %158, !dbg !707

50:                                               ; preds = %47
  %51 = add nuw nsw i64 0, %48, !dbg !707
  %52 = getelementptr inbounds nuw i8, ptr %30, i64 %51, !dbg !707
  %53 = load i8, ptr %52, align 1, !dbg !707
  %54 = add i64 %29, %48, !dbg !707
  %55 = mul nuw nsw i64 %24, 2048, !dbg !707
  %56 = add nuw nsw i64 %55, %54, !dbg !707
  %57 = getelementptr inbounds nuw i8, ptr %9, i64 %56, !dbg !707
  %58 = load i8, ptr %57, align 1, !dbg !707
  %59 = sitofp i8 %58 to float, !dbg !708
  %60 = fmul contract float %59, 0x3FE413DDC0000000, !dbg !708
  %61 = sitofp i8 %53 to float, !dbg !709
  %62 = fmul contract float %61, 0x3FD52E4880000000, !dbg !709
  %63 = fadd contract float %62, %60, !dbg !710
  %64 = fdiv float %63, 0x3FE0F08C80000000, !dbg !711
  %65 = bitcast float %64 to i32, !dbg !711
  %66 = call float @llvm.round.f32(float %64), !dbg !711
  %67 = bitcast float %66 to i32, !dbg !711
  %68 = lshr i32 %65, 23, !dbg !711
  %69 = and i32 %68, 255, !dbg !711
  %70 = sub i32 %69, 127, !dbg !711
  %71 = lshr i32 %67, 23, !dbg !711
  %72 = and i32 %71, 255, !dbg !711
  %73 = sub i32 %72, 127, !dbg !711
  %74 = icmp eq i32 %73, 0, !dbg !711
  %75 = sub i32 %72, 128, !dbg !711
  %76 = icmp sgt i32 %75, 0, !dbg !711
  %77 = select i1 %76, i32 %75, i32 0, !dbg !711
  %78 = icmp slt i32 %77, 31, !dbg !711
  %79 = select i1 %78, i32 %77, i32 31, !dbg !711
  %80 = lshr i32 8388607, %79, !dbg !711
  %81 = and i32 %67, %80, !dbg !711
  %82 = icmp ne i32 %81, 0, !dbg !711
  %83 = or i1 %82, %74, !dbg !711
  %84 = icmp eq i32 %70, -1, !dbg !711
  %85 = icmp sgt i32 %70, 0, !dbg !711
  %86 = select i1 %85, i32 %70, i32 0, !dbg !711
  %87 = icmp slt i32 %86, 31, !dbg !711
  %88 = select i1 %87, i32 %86, i32 31, !dbg !711
  %89 = lshr i32 4194304, %88, !dbg !711
  %90 = select i1 %84, i32 0, i32 %89, !dbg !711
  %91 = lshr i32 8388607, %88, !dbg !711
  %92 = and i32 %65, %91, !dbg !711
  %93 = icmp eq i32 %92, %90, !dbg !711
  %94 = icmp sge i32 %70, -1, !dbg !711
  %95 = icmp slt i32 %70, 23, !dbg !711
  %96 = and i1 %93, %95, !dbg !711
  %97 = and i1 %96, %94, !dbg !711
  %98 = call float @llvm.copysign.f32(float 1.000000e+00, float %64), !dbg !711
  %99 = fsub contract float %66, %98, !dbg !711
  %100 = and i1 %83, %97, !dbg !711
  %101 = select i1 %100, float %99, float %66, !dbg !711
  %102 = call float @llvm.copysign.f32(float %101, float %64), !dbg !711
  %103 = fadd contract float %102, 0.000000e+00, !dbg !711
  %104 = fcmp ugt float %103, -1.280000e+02, !dbg !711
  %105 = select i1 %104, float %103, float -1.280000e+02, !dbg !711
  %106 = fcmp ult float %105, 1.270000e+02, !dbg !711
  %107 = select i1 %106, float %105, float 1.270000e+02, !dbg !711
  %108 = fptosi float %107 to i8, !dbg !711
  %109 = icmp sgt i8 %108, 0, !dbg !712
  %110 = select i1 %109, i8 %108, i8 0, !dbg !712
  %111 = sitofp i8 %110 to float, !dbg !712
  %112 = bitcast float %111 to i32, !dbg !707
  %113 = call float @llvm.round.f32(float %111), !dbg !707
  %114 = bitcast float %113 to i32, !dbg !707
  %115 = lshr i32 %112, 23, !dbg !707
  %116 = and i32 %115, 255, !dbg !707
  %117 = sub i32 %116, 127, !dbg !707
  %118 = lshr i32 %114, 23, !dbg !707
  %119 = and i32 %118, 255, !dbg !707
  %120 = sub i32 %119, 127, !dbg !707
  %121 = icmp eq i32 %120, 0, !dbg !707
  %122 = sub i32 %119, 128, !dbg !707
  %123 = icmp sgt i32 %122, 0, !dbg !707
  %124 = select i1 %123, i32 %122, i32 0, !dbg !707
  %125 = icmp slt i32 %124, 31, !dbg !707
  %126 = select i1 %125, i32 %124, i32 31, !dbg !707
  %127 = lshr i32 8388607, %126, !dbg !707
  %128 = and i32 %114, %127, !dbg !707
  %129 = icmp ne i32 %128, 0, !dbg !707
  %130 = or i1 %129, %121, !dbg !707
  %131 = icmp eq i32 %117, -1, !dbg !707
  %132 = icmp sgt i32 %117, 0, !dbg !707
  %133 = select i1 %132, i32 %117, i32 0, !dbg !707
  %134 = icmp slt i32 %133, 31, !dbg !707
  %135 = select i1 %134, i32 %133, i32 31, !dbg !707
  %136 = lshr i32 4194304, %135, !dbg !707
  %137 = select i1 %131, i32 0, i32 %136, !dbg !707
  %138 = lshr i32 8388607, %135, !dbg !707
  %139 = and i32 %112, %138, !dbg !707
  %140 = icmp eq i32 %139, %137, !dbg !707
  %141 = icmp sge i32 %117, -1, !dbg !707
  %142 = icmp slt i32 %117, 23, !dbg !707
  %143 = and i1 %140, %142, !dbg !707
  %144 = and i1 %143, %141, !dbg !707
  %145 = call float @llvm.copysign.f32(float 1.000000e+00, float %111), !dbg !707
  %146 = fsub contract float %113, %145, !dbg !707
  %147 = and i1 %130, %144, !dbg !707
  %148 = select i1 %147, float %146, float %113, !dbg !707
  %149 = call float @llvm.copysign.f32(float %148, float %111), !dbg !707
  %150 = fadd contract float %149, 0.000000e+00, !dbg !707
  %151 = fcmp ugt float %150, -1.280000e+02, !dbg !707
  %152 = select i1 %151, float %150, float -1.280000e+02, !dbg !707
  %153 = fcmp ult float %152, 1.270000e+02, !dbg !707
  %154 = select i1 %153, float %152, float 1.270000e+02, !dbg !707
  %155 = fptosi float %154 to i8, !dbg !707
  %156 = getelementptr inbounds nuw i8, ptr %14, i64 %56, !dbg !707
  store i8 %155, ptr %156, align 1, !dbg !707
  %157 = add i64 %48, 1, !dbg !707
  br label %47, !dbg !707

158:                                              ; preds = %47
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !705
  ret i32 0, !dbg !705
}

define internal i32 @"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !713 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !714
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !714
  %6 = load ptr, ptr %5, align 8, !dbg !714
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !714
  %8 = load ptr, ptr %7, align 8, !dbg !714
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !714
  %10 = load ptr, ptr %9, align 8, !dbg !714
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !714
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !714
  %13 = zext i32 %12 to i64, !dbg !714
  %14 = sdiv i64 %13, 32, !dbg !714
  %15 = mul i64 %14, 32, !dbg !714
  %16 = icmp ne i64 %13, %15, !dbg !714
  %17 = icmp slt i64 %13, 0, !dbg !714
  %18 = and i1 %16, %17, !dbg !714
  %19 = add i64 %14, -1, !dbg !714
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !714
  %21 = srem i64 %13, 32, !dbg !714
  %22 = icmp slt i64 %21, 0, !dbg !714
  %23 = add nsw i64 %21, 32, !dbg !714
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !714
  %25 = mul nsw i64 %24, 16, !dbg !714
  %26 = mul nsw i64 %20, 2048, !dbg !714
  %27 = add i64 %26, 25088, !dbg !714
  %28 = ptrtoint ptr %6 to i64, !dbg !714
  %29 = add i64 %28, %27, !dbg !714
  %30 = add i64 %25, 10031104, !dbg !714
  %31 = ptrtoint ptr %8 to i64, !dbg !714
  %32 = add i64 %31, %30, !dbg !714
  %33 = mul nsw i64 %20, 512, !dbg !714
  %34 = add i64 %33, %25, !dbg !714
  %35 = ptrtoint ptr %10 to i64, !dbg !714
  %36 = add i64 %35, %34, !dbg !714
  %37 = add i64 %34, 8084992, !dbg !714
  %38 = mul i64 %37, 4, !dbg !714
  %39 = add i64 %31, %38, !dbg !714
  %40 = and i64 %29, 9223372036854775807, !dbg !714
  %41 = and i64 %32, 9223372036854775807, !dbg !714
  %42 = and i64 %36, 9223372036854775807, !dbg !714
  %43 = and i64 %39, 9223372036854775807, !dbg !714
  call void asm sideeffect "fence", ""(), !dbg !714
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !714
  call void @llvm.riscv.config(i64 6, i64 4336665608763474432), !dbg !714
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !714
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !714
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !714
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !714
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %40, i64 %41), !dbg !714
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %43, i64 %42), !dbg !714
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 512), !dbg !714
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !714
  call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !714
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !714
  call void asm sideeffect "fence", ""(), !dbg !714
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !714
  ret i32 0, !dbg !714
}

define internal i32 @"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !715 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !716
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !716
  %6 = load ptr, ptr %5, align 8, !dbg !716
  %7 = getelementptr i8, ptr %6, i64 125440, !dbg !716
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !716
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !716
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !716
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !716
  %11 = load ptr, ptr %10, align 8, !dbg !716
  %12 = getelementptr i8, ptr %11, i64 166912, !dbg !716
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !716
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !716
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !716
  %15 = zext i32 %14 to i64, !dbg !716
  %16 = sdiv i64 %15, 16, !dbg !716
  %17 = mul i64 %16, 16, !dbg !716
  %18 = icmp ne i64 %15, %17, !dbg !716
  %19 = icmp slt i64 %15, 0, !dbg !716
  %20 = and i1 %18, %19, !dbg !716
  %21 = add i64 %16, -1, !dbg !716
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !716
  %23 = srem i64 %15, 16, !dbg !716
  %24 = icmp slt i64 %23, 0, !dbg !716
  %25 = add nsw i64 %23, 16, !dbg !716
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !716
  %27 = mul nsw i64 %26, 32, !dbg !716
  br label %28, !dbg !716

28:                                               ; preds = %73, %3
  %29 = phi i64 [ %74, %73 ], [ 0, %3 ], !dbg !716
  %30 = icmp slt i64 %29, 7, !dbg !716
  br i1 %30, label %31, label %75, !dbg !716

31:                                               ; preds = %71, %28
  %32 = phi i64 [ %72, %71 ], [ 0, %28 ], !dbg !716
  %33 = icmp slt i64 %32, 3, !dbg !716
  br i1 %33, label %34, label %73, !dbg !716

34:                                               ; preds = %31
  %35 = add i64 %32, %22, !dbg !716
  br label %36, !dbg !716

36:                                               ; preds = %69, %34
  %37 = phi i64 [ %70, %69 ], [ 0, %34 ], !dbg !716
  %38 = icmp slt i64 %37, 3, !dbg !716
  br i1 %38, label %39, label %71, !dbg !716

39:                                               ; preds = %36
  %40 = add i64 %29, %37, !dbg !716
  br label %41, !dbg !716

41:                                               ; preds = %67, %39
  %42 = phi i64 [ %68, %67 ], [ 0, %39 ], !dbg !716
  %43 = icmp slt i64 %42, 32, !dbg !716
  br i1 %43, label %44, label %69, !dbg !716

44:                                               ; preds = %41
  %45 = add i64 %42, %27, !dbg !716
  br label %46, !dbg !716

46:                                               ; preds = %49, %44
  %47 = phi i64 [ %66, %49 ], [ 0, %44 ], !dbg !716
  %48 = icmp slt i64 %47, 8, !dbg !716
  br i1 %48, label %49, label %67, !dbg !716

49:                                               ; preds = %46
  %50 = add i64 %45, %47, !dbg !716
  %51 = mul nuw nsw i64 %35, 4608, !dbg !716
  %52 = mul nuw nsw i64 %40, 512, !dbg !716
  %53 = add nuw nsw i64 %51, %52, !dbg !716
  %54 = add nuw nsw i64 %53, %50, !dbg !716
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 %54, !dbg !716
  %56 = load i8, ptr %55, align 1, !dbg !716
  %57 = mul nuw nsw i64 %22, 32256, !dbg !716
  %58 = mul nuw nsw i64 %29, 4608, !dbg !716
  %59 = add nuw nsw i64 %57, %58, !dbg !716
  %60 = mul nuw nsw i64 %32, 1536, !dbg !716
  %61 = add nuw nsw i64 %59, %60, !dbg !716
  %62 = mul nuw nsw i64 %37, 512, !dbg !716
  %63 = add nuw nsw i64 %61, %62, !dbg !716
  %64 = add nuw nsw i64 %63, %50, !dbg !716
  %65 = getelementptr inbounds nuw i8, ptr %12, i64 %64, !dbg !716
  store i8 %56, ptr %65, align 1, !dbg !716
  %66 = add i64 %47, 1, !dbg !716
  br label %46, !dbg !716

67:                                               ; preds = %46
  %68 = add i64 %42, 8, !dbg !716
  br label %41, !dbg !716

69:                                               ; preds = %41
  %70 = add i64 %37, 1, !dbg !716
  br label %36, !dbg !716

71:                                               ; preds = %36
  %72 = add i64 %32, 1, !dbg !716
  br label %31, !dbg !716

73:                                               ; preds = %31
  %74 = add i64 %29, 1, !dbg !716
  br label %28, !dbg !716

75:                                               ; preds = %28
  ret i32 0, !dbg !716
}

define internal i32 @"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !717 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !718
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !718
  %6 = load ptr, ptr %5, align 8, !dbg !718
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !718
  %8 = load ptr, ptr %7, align 8, !dbg !718
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !718
  %10 = load ptr, ptr %9, align 8, !dbg !718
  %11 = getelementptr ptr, ptr %5, i32 3, !dbg !718
  %12 = load ptr, ptr %11, align 8, !dbg !718
  %13 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !718
  %14 = extractvalue %iree_hal_executable_workgroup_state_v0_t %13, 0, !dbg !718
  %15 = zext i32 %14 to i64, !dbg !718
  %16 = sdiv i64 %15, 32, !dbg !718
  %17 = mul i64 %16, 32, !dbg !718
  %18 = icmp ne i64 %15, %17, !dbg !718
  %19 = icmp slt i64 %15, 0, !dbg !718
  %20 = and i1 %18, %19, !dbg !718
  %21 = add i64 %16, -1, !dbg !718
  %22 = select i1 %20, i64 %21, i64 %16, !dbg !718
  %23 = srem i64 %15, 32, !dbg !718
  %24 = icmp slt i64 %23, 0, !dbg !718
  %25 = add nsw i64 %23, 32, !dbg !718
  %26 = select i1 %24, i64 %25, i64 %23, !dbg !718
  %27 = mul nsw i64 %26, 16, !dbg !718
  %28 = mul nsw i64 %22, 4608, !dbg !718
  %29 = add i64 %28, 166912, !dbg !718
  %30 = ptrtoint ptr %6 to i64, !dbg !718
  %31 = add i64 %30, %29, !dbg !718
  %32 = add i64 %27, 8986496, !dbg !718
  %33 = ptrtoint ptr %8 to i64, !dbg !718
  %34 = add i64 %33, %32, !dbg !718
  %35 = mul nsw i64 %22, 512, !dbg !718
  %36 = add i64 %35, %27, !dbg !718
  %37 = ptrtoint ptr %12 to i64, !dbg !718
  %38 = add i64 %37, %36, !dbg !718
  %39 = add i64 %36, 8110080, !dbg !718
  %40 = ptrtoint ptr %10 to i64, !dbg !718
  %41 = mul i64 %39, 4, !dbg !718
  %42 = add i64 %40, %41, !dbg !718
  %43 = and i64 %31, 9223372036854775807, !dbg !718
  %44 = and i64 %34, 9223372036854775807, !dbg !718
  %45 = and i64 %38, 9223372036854775807, !dbg !718
  %46 = and i64 %42, 9223372036854775807, !dbg !718
  call void asm sideeffect "fence", ""(), !dbg !718
  call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !718
  call void @llvm.riscv.config(i64 6, i64 4372741096371913216), !dbg !718
  call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !718
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !718
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !718
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !718
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %43, i64 %44), !dbg !718
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %46, i64 0), !dbg !718
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !718
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !718
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !718
  %47 = add i64 %43, 2048, !dbg !718
  %48 = add i64 %44, 1048576, !dbg !718
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !718
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %47, i64 %48), !dbg !718
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !718
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !718
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !718
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !718
  %49 = add i64 %43, 4096, !dbg !718
  %50 = add i64 %44, 2097152, !dbg !718
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !718
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %49, i64 %50), !dbg !718
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %45), !dbg !718
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !718
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !718
  call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !718
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !718
  call void asm sideeffect "fence", ""(), !dbg !718
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !718
  ret i32 0, !dbg !718
}

define internal i32 @"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !719 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !720
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !720
  %6 = load ptr, ptr %5, align 8, !dbg !720
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !720
  %8 = load ptr, ptr %7, align 8, !dbg !720
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !720
  %10 = load ptr, ptr %9, align 8, !dbg !720
  %11 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !720
  %12 = extractvalue %iree_hal_executable_workgroup_state_v0_t %11, 0, !dbg !720
  %13 = zext i32 %12 to i64, !dbg !720
  %14 = sdiv i64 %13, 128, !dbg !720
  %15 = mul i64 %14, 128, !dbg !720
  %16 = icmp ne i64 %13, %15, !dbg !720
  %17 = icmp slt i64 %13, 0, !dbg !720
  %18 = and i1 %16, %17, !dbg !720
  %19 = add i64 %14, -1, !dbg !720
  %20 = select i1 %18, i64 %19, i64 %14, !dbg !720
  %21 = srem i64 %13, 128, !dbg !720
  %22 = icmp slt i64 %21, 0, !dbg !720
  %23 = add nsw i64 %21, 128, !dbg !720
  %24 = select i1 %22, i64 %23, i64 %21, !dbg !720
  %25 = mul nsw i64 %24, 16, !dbg !720
  %26 = mul nsw i64 %20, 512, !dbg !720
  %27 = ptrtoint ptr %6 to i64, !dbg !720
  %28 = add i64 %27, %26, !dbg !720
  %29 = add i64 %25, 11079680, !dbg !720
  %30 = ptrtoint ptr %8 to i64, !dbg !720
  %31 = add i64 %30, %29, !dbg !720
  %32 = mul nsw i64 %20, 2048, !dbg !720
  %33 = add i64 %32, %25, !dbg !720
  %34 = add i64 %33, 125440, !dbg !720
  %35 = ptrtoint ptr %10 to i64, !dbg !720
  %36 = add i64 %35, %34, !dbg !720
  %37 = add i64 %33, 8135168, !dbg !720
  %38 = mul i64 %37, 4, !dbg !720
  %39 = add i64 %30, %38, !dbg !720
  %40 = and i64 %28, 9223372036854775807, !dbg !720
  %41 = and i64 %31, 9223372036854775807, !dbg !720
  %42 = and i64 %36, 9223372036854775807, !dbg !720
  %43 = and i64 %39, 9223372036854775807, !dbg !720
  call void asm sideeffect "fence", ""(), !dbg !720
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !720
  call void @llvm.riscv.config(i64 2, i64 4334783386590644224), !dbg !720
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !720
  call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !720
  call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !720
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !720
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %40, i64 %41), !dbg !720
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %43, i64 %42), !dbg !720
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 2048), !dbg !720
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 2048), !dbg !720
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !720
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !720
  call void asm sideeffect "fence", ""(), !dbg !720
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !720
  ret i32 0, !dbg !720
}

define internal i32 @"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !721 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !722
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !722
  %6 = load ptr, ptr %5, align 8, !dbg !722
  %7 = getelementptr i8, ptr %6, i64 125440, !dbg !722
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !722
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !723
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !723
  %10 = load ptr, ptr %9, align 8, !dbg !723
  %11 = getelementptr i8, ptr %10, i64 25088, !dbg !723
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !723
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !724
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !724
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !724
  %15 = load ptr, ptr %14, align 8, !dbg !724
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !724
  %16 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !724
  %17 = extractvalue %iree_hal_executable_workgroup_state_v0_t %16, 0, !dbg !724
  %18 = zext i32 %17 to i64, !dbg !724
  %19 = mul nsw i64 %18, 32, !dbg !724
  br label %20, !dbg !724

20:                                               ; preds = %179, %3
  %21 = phi i64 [ %276, %179 ], [ 0, %3 ], !dbg !724
  %22 = icmp slt i64 %21, 32, !dbg !724
  br i1 %22, label %23, label %277, !dbg !724

23:                                               ; preds = %20
  %24 = add i64 %21, %19, !dbg !724
  br label %25, !dbg !724

25:                                               ; preds = %29, %23
  %26 = phi i64 [ %178, %29 ], [ 0, %23 ], !dbg !724
  %27 = phi <8 x float> [ %177, %29 ], [ zeroinitializer, %23 ], !dbg !724
  %28 = icmp slt i64 %26, 49, !dbg !724
  br i1 %28, label %29, label %179, !dbg !724

29:                                               ; preds = %25
  %30 = mul i64 %26, 2048, !dbg !724
  %31 = add i64 %30, %24, !dbg !724
  %32 = getelementptr i8, ptr %7, i64 %31, !dbg !724
  %33 = load <8 x i8>, ptr %32, align 1, !dbg !724
  %34 = getelementptr i8, ptr %11, i64 %31, !dbg !724
  %35 = load <8 x i8>, ptr %34, align 1, !dbg !724
  %36 = sitofp <8 x i8> %35 to <8 x float>, !dbg !725
  %37 = fmul contract <8 x float> %36, splat (float 0x3FE0F08C80000000), !dbg !725
  %38 = sitofp <8 x i8> %33 to <8 x float>, !dbg !726
  %39 = fmul contract <8 x float> %38, splat (float 0x3FD88E1BA0000000), !dbg !726
  %40 = fadd contract <8 x float> %39, %37, !dbg !727
  %41 = fdiv <8 x float> %40, splat (float 0x3FC33B6480000000), !dbg !728
  %42 = bitcast <8 x float> %41 to <8 x i32>, !dbg !728
  %43 = call <8 x float> @llvm.round.v8f32(<8 x float> %41), !dbg !728
  %44 = bitcast <8 x float> %43 to <8 x i32>, !dbg !728
  %45 = lshr <8 x i32> %42, splat (i32 23), !dbg !728
  %46 = and <8 x i32> %45, splat (i32 255), !dbg !728
  %47 = sub <8 x i32> %46, splat (i32 127), !dbg !728
  %48 = lshr <8 x i32> %44, splat (i32 23), !dbg !728
  %49 = and <8 x i32> %48, splat (i32 255), !dbg !728
  %50 = sub <8 x i32> %49, splat (i32 127), !dbg !728
  %51 = icmp eq <8 x i32> %50, zeroinitializer, !dbg !728
  %52 = sub <8 x i32> %50, splat (i32 1), !dbg !728
  %53 = icmp sgt <8 x i32> %52, zeroinitializer, !dbg !728
  %54 = select <8 x i1> %53, <8 x i32> %52, <8 x i32> zeroinitializer, !dbg !728
  %55 = icmp slt <8 x i32> %54, splat (i32 31), !dbg !728
  %56 = select <8 x i1> %55, <8 x i32> %54, <8 x i32> splat (i32 31), !dbg !728
  %57 = lshr <8 x i32> splat (i32 8388607), %56, !dbg !728
  %58 = and <8 x i32> %44, %57, !dbg !728
  %59 = icmp ne <8 x i32> %58, zeroinitializer, !dbg !728
  %60 = or <8 x i1> %59, %51, !dbg !728
  %61 = icmp eq <8 x i32> %47, splat (i32 -1), !dbg !728
  %62 = icmp sgt <8 x i32> %47, zeroinitializer, !dbg !728
  %63 = select <8 x i1> %62, <8 x i32> %47, <8 x i32> zeroinitializer, !dbg !728
  %64 = icmp slt <8 x i32> %63, splat (i32 31), !dbg !728
  %65 = select <8 x i1> %64, <8 x i32> %63, <8 x i32> splat (i32 31), !dbg !728
  %66 = lshr <8 x i32> splat (i32 4194304), %65, !dbg !728
  %67 = select <8 x i1> %61, <8 x i32> zeroinitializer, <8 x i32> %66, !dbg !728
  %68 = lshr <8 x i32> splat (i32 8388607), %65, !dbg !728
  %69 = and <8 x i32> %42, %68, !dbg !728
  %70 = icmp eq <8 x i32> %69, %67, !dbg !728
  %71 = icmp sge <8 x i32> %47, splat (i32 -1), !dbg !728
  %72 = icmp slt <8 x i32> %47, splat (i32 23), !dbg !728
  %73 = and <8 x i1> %70, %72, !dbg !728
  %74 = and <8 x i1> %73, %71, !dbg !728
  %75 = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %41), !dbg !728
  %76 = fsub contract <8 x float> %43, %75, !dbg !728
  %77 = and <8 x i1> %60, %74, !dbg !728
  %78 = select <8 x i1> %77, <8 x float> %76, <8 x float> %43, !dbg !728
  %79 = call <8 x float> @llvm.copysign.v8f32(<8 x float> %78, <8 x float> %41), !dbg !728
  %80 = fadd contract <8 x float> %79, zeroinitializer, !dbg !728
  %81 = fcmp ugt <8 x float> %80, splat (float -1.280000e+02), !dbg !728
  %82 = select <8 x i1> %81, <8 x float> %80, <8 x float> splat (float -1.280000e+02), !dbg !728
  %83 = select <8 x i1> zeroinitializer, <8 x float> splat (float -1.280000e+02), <8 x float> %82, !dbg !728
  %84 = fcmp ult <8 x float> %83, splat (float 1.270000e+02), !dbg !728
  %85 = select <8 x i1> %84, <8 x float> %83, <8 x float> splat (float 1.270000e+02), !dbg !728
  %86 = select <8 x i1> zeroinitializer, <8 x float> splat (float 1.270000e+02), <8 x float> %85, !dbg !728
  %87 = fptosi <8 x float> %86 to <8 x i8>, !dbg !728
  %88 = icmp sgt <8 x i8> %87, zeroinitializer, !dbg !729
  %89 = select <8 x i1> %88, <8 x i8> %87, <8 x i8> zeroinitializer, !dbg !729
  %90 = sitofp <8 x i8> %89 to <8 x float>, !dbg !729
  %91 = bitcast <8 x float> %90 to <8 x i32>, !dbg !730
  %92 = call <8 x float> @llvm.round.v8f32(<8 x float> %90), !dbg !730
  %93 = bitcast <8 x float> %92 to <8 x i32>, !dbg !730
  %94 = lshr <8 x i32> %91, splat (i32 23), !dbg !730
  %95 = and <8 x i32> %94, splat (i32 255), !dbg !730
  %96 = sub <8 x i32> %95, splat (i32 127), !dbg !730
  %97 = lshr <8 x i32> %93, splat (i32 23), !dbg !730
  %98 = and <8 x i32> %97, splat (i32 255), !dbg !730
  %99 = sub <8 x i32> %98, splat (i32 127), !dbg !730
  %100 = icmp eq <8 x i32> %99, zeroinitializer, !dbg !730
  %101 = sub <8 x i32> %99, splat (i32 1), !dbg !730
  %102 = icmp sgt <8 x i32> %101, zeroinitializer, !dbg !730
  %103 = select <8 x i1> %102, <8 x i32> %101, <8 x i32> zeroinitializer, !dbg !730
  %104 = icmp slt <8 x i32> %103, splat (i32 31), !dbg !730
  %105 = select <8 x i1> %104, <8 x i32> %103, <8 x i32> splat (i32 31), !dbg !730
  %106 = lshr <8 x i32> splat (i32 8388607), %105, !dbg !730
  %107 = and <8 x i32> %93, %106, !dbg !730
  %108 = icmp ne <8 x i32> %107, zeroinitializer, !dbg !730
  %109 = or <8 x i1> %108, %100, !dbg !730
  %110 = icmp eq <8 x i32> %96, splat (i32 -1), !dbg !730
  %111 = icmp sgt <8 x i32> %96, zeroinitializer, !dbg !730
  %112 = select <8 x i1> %111, <8 x i32> %96, <8 x i32> zeroinitializer, !dbg !730
  %113 = icmp slt <8 x i32> %112, splat (i32 31), !dbg !730
  %114 = select <8 x i1> %113, <8 x i32> %112, <8 x i32> splat (i32 31), !dbg !730
  %115 = lshr <8 x i32> splat (i32 4194304), %114, !dbg !730
  %116 = select <8 x i1> %110, <8 x i32> zeroinitializer, <8 x i32> %115, !dbg !730
  %117 = lshr <8 x i32> splat (i32 8388607), %114, !dbg !730
  %118 = and <8 x i32> %91, %117, !dbg !730
  %119 = icmp eq <8 x i32> %118, %116, !dbg !730
  %120 = icmp sge <8 x i32> %96, splat (i32 -1), !dbg !730
  %121 = icmp slt <8 x i32> %96, splat (i32 23), !dbg !730
  %122 = and <8 x i1> %119, %121, !dbg !730
  %123 = and <8 x i1> %122, %120, !dbg !730
  %124 = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %90), !dbg !730
  %125 = fsub contract <8 x float> %92, %124, !dbg !730
  %126 = and <8 x i1> %109, %123, !dbg !730
  %127 = select <8 x i1> %126, <8 x float> %125, <8 x float> %92, !dbg !730
  %128 = call <8 x float> @llvm.copysign.v8f32(<8 x float> %127, <8 x float> %90), !dbg !730
  %129 = fadd contract <8 x float> %128, zeroinitializer, !dbg !730
  %130 = fcmp ugt <8 x float> %129, splat (float -1.280000e+02), !dbg !730
  %131 = select <8 x i1> %130, <8 x float> %129, <8 x float> splat (float -1.280000e+02), !dbg !730
  %132 = select <8 x i1> zeroinitializer, <8 x float> splat (float -1.280000e+02), <8 x float> %131, !dbg !730
  %133 = fcmp ult <8 x float> %132, splat (float 1.270000e+02), !dbg !730
  %134 = select <8 x i1> %133, <8 x float> %132, <8 x float> splat (float 1.270000e+02), !dbg !730
  %135 = select <8 x i1> zeroinitializer, <8 x float> splat (float 1.270000e+02), <8 x float> %134, !dbg !730
  %136 = fptosi <8 x float> %135 to <8 x i8>, !dbg !730
  %137 = sitofp <8 x i8> %136 to <8 x float>, !dbg !731
  %138 = extractelement <8 x float> %137, i64 0
  %139 = extractelement <8 x float> %27, i64 0
  %140 = fmul contract float %138, 0x3FC33B6480000000
  %141 = fadd contract float %140, %139
  %142 = extractelement <8 x float> %137, i64 1
  %143 = extractelement <8 x float> %27, i64 1
  %144 = fmul contract float %142, 0x3FC33B6480000000
  %145 = fadd contract float %144, %143
  %146 = extractelement <8 x float> %137, i64 2
  %147 = extractelement <8 x float> %27, i64 2
  %148 = fmul contract float %146, 0x3FC33B6480000000
  %149 = fadd contract float %148, %147
  %150 = extractelement <8 x float> %137, i64 3
  %151 = extractelement <8 x float> %27, i64 3
  %152 = fmul contract float %150, 0x3FC33B6480000000
  %153 = fadd contract float %152, %151
  %154 = extractelement <8 x float> %137, i64 4
  %155 = extractelement <8 x float> %27, i64 4
  %156 = fmul contract float %154, 0x3FC33B6480000000
  %157 = fadd contract float %156, %155
  %158 = extractelement <8 x float> %137, i64 5
  %159 = extractelement <8 x float> %27, i64 5
  %160 = fmul contract float %158, 0x3FC33B6480000000
  %161 = fadd contract float %160, %159
  %162 = extractelement <8 x float> %137, i64 6
  %163 = extractelement <8 x float> %27, i64 6
  %164 = fmul contract float %162, 0x3FC33B6480000000
  %165 = fadd contract float %164, %163
  %166 = extractelement <8 x float> %137, i64 7
  %167 = extractelement <8 x float> %27, i64 7
  %168 = fmul contract float %166, 0x3FC33B6480000000
  %169 = fadd contract float %168, %167
  %170 = insertelement <8 x float> poison, float %141, i64 0
  %171 = insertelement <8 x float> %170, float %145, i64 1
  %172 = insertelement <8 x float> %171, float %149, i64 2
  %173 = insertelement <8 x float> %172, float %153, i64 3
  %174 = insertelement <8 x float> %173, float %157, i64 4
  %175 = insertelement <8 x float> %174, float %161, i64 5
  %176 = insertelement <8 x float> %175, float %165, i64 6
  %177 = insertelement <8 x float> %176, float %169, i64 7
  %178 = add i64 %26, 1, !dbg !724
  br label %25, !dbg !724

179:                                              ; preds = %25
  %180 = fdiv <8 x float> %27, splat (float 4.900000e+01), !dbg !724
  %181 = fdiv <8 x float> %180, splat (float 0x3FB1D22E00000000), !dbg !732
  %182 = bitcast <8 x float> %181 to <8 x i32>, !dbg !732
  %183 = call <8 x float> @llvm.round.v8f32(<8 x float> %181), !dbg !732
  %184 = bitcast <8 x float> %183 to <8 x i32>, !dbg !732
  %185 = lshr <8 x i32> %182, splat (i32 23), !dbg !732
  %186 = and <8 x i32> %185, splat (i32 255), !dbg !732
  %187 = sub <8 x i32> %186, splat (i32 127), !dbg !732
  %188 = lshr <8 x i32> %184, splat (i32 23), !dbg !732
  %189 = and <8 x i32> %188, splat (i32 255), !dbg !732
  %190 = sub <8 x i32> %189, splat (i32 127), !dbg !732
  %191 = icmp eq <8 x i32> %190, zeroinitializer, !dbg !732
  %192 = sub <8 x i32> %190, splat (i32 1), !dbg !732
  %193 = icmp sgt <8 x i32> %192, zeroinitializer, !dbg !732
  %194 = select <8 x i1> %193, <8 x i32> %192, <8 x i32> zeroinitializer, !dbg !732
  %195 = icmp slt <8 x i32> %194, splat (i32 31), !dbg !732
  %196 = select <8 x i1> %195, <8 x i32> %194, <8 x i32> splat (i32 31), !dbg !732
  %197 = lshr <8 x i32> splat (i32 8388607), %196, !dbg !732
  %198 = and <8 x i32> %184, %197, !dbg !732
  %199 = icmp ne <8 x i32> %198, zeroinitializer, !dbg !732
  %200 = or <8 x i1> %199, %191, !dbg !732
  %201 = icmp eq <8 x i32> %187, splat (i32 -1), !dbg !732
  %202 = icmp sgt <8 x i32> %187, zeroinitializer, !dbg !732
  %203 = select <8 x i1> %202, <8 x i32> %187, <8 x i32> zeroinitializer, !dbg !732
  %204 = icmp slt <8 x i32> %203, splat (i32 31), !dbg !732
  %205 = select <8 x i1> %204, <8 x i32> %203, <8 x i32> splat (i32 31), !dbg !732
  %206 = lshr <8 x i32> splat (i32 4194304), %205, !dbg !732
  %207 = select <8 x i1> %201, <8 x i32> zeroinitializer, <8 x i32> %206, !dbg !732
  %208 = lshr <8 x i32> splat (i32 8388607), %205, !dbg !732
  %209 = and <8 x i32> %182, %208, !dbg !732
  %210 = icmp eq <8 x i32> %209, %207, !dbg !732
  %211 = icmp sge <8 x i32> %187, splat (i32 -1), !dbg !732
  %212 = icmp slt <8 x i32> %187, splat (i32 23), !dbg !732
  %213 = and <8 x i1> %210, %212, !dbg !732
  %214 = and <8 x i1> %213, %211, !dbg !732
  %215 = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %181), !dbg !732
  %216 = fsub contract <8 x float> %183, %215, !dbg !732
  %217 = and <8 x i1> %200, %214, !dbg !732
  %218 = select <8 x i1> %217, <8 x float> %216, <8 x float> %183, !dbg !732
  %219 = call <8 x float> @llvm.copysign.v8f32(<8 x float> %218, <8 x float> %181), !dbg !732
  %220 = fadd contract <8 x float> %219, zeroinitializer, !dbg !732
  %221 = fcmp ugt <8 x float> %220, splat (float -1.280000e+02), !dbg !732
  %222 = select <8 x i1> %221, <8 x float> %220, <8 x float> splat (float -1.280000e+02), !dbg !732
  %223 = select <8 x i1> zeroinitializer, <8 x float> splat (float -1.280000e+02), <8 x float> %222, !dbg !732
  %224 = fcmp ult <8 x float> %223, splat (float 1.270000e+02), !dbg !732
  %225 = select <8 x i1> %224, <8 x float> %223, <8 x float> splat (float 1.270000e+02), !dbg !732
  %226 = select <8 x i1> zeroinitializer, <8 x float> splat (float 1.270000e+02), <8 x float> %225, !dbg !732
  %227 = fptosi <8 x float> %226 to <8 x i8>, !dbg !732
  %228 = sitofp <8 x i8> %227 to <8 x float>, !dbg !733
  %229 = bitcast <8 x float> %228 to <8 x i32>, !dbg !734
  %230 = call <8 x float> @llvm.round.v8f32(<8 x float> %228), !dbg !734
  %231 = bitcast <8 x float> %230 to <8 x i32>, !dbg !734
  %232 = lshr <8 x i32> %229, splat (i32 23), !dbg !734
  %233 = and <8 x i32> %232, splat (i32 255), !dbg !734
  %234 = sub <8 x i32> %233, splat (i32 127), !dbg !734
  %235 = lshr <8 x i32> %231, splat (i32 23), !dbg !734
  %236 = and <8 x i32> %235, splat (i32 255), !dbg !734
  %237 = sub <8 x i32> %236, splat (i32 127), !dbg !734
  %238 = icmp eq <8 x i32> %237, zeroinitializer, !dbg !734
  %239 = sub <8 x i32> %237, splat (i32 1), !dbg !734
  %240 = icmp sgt <8 x i32> %239, zeroinitializer, !dbg !734
  %241 = select <8 x i1> %240, <8 x i32> %239, <8 x i32> zeroinitializer, !dbg !734
  %242 = icmp slt <8 x i32> %241, splat (i32 31), !dbg !734
  %243 = select <8 x i1> %242, <8 x i32> %241, <8 x i32> splat (i32 31), !dbg !734
  %244 = lshr <8 x i32> splat (i32 8388607), %243, !dbg !734
  %245 = and <8 x i32> %231, %244, !dbg !734
  %246 = icmp ne <8 x i32> %245, zeroinitializer, !dbg !734
  %247 = or <8 x i1> %246, %238, !dbg !734
  %248 = icmp eq <8 x i32> %234, splat (i32 -1), !dbg !734
  %249 = icmp sgt <8 x i32> %234, zeroinitializer, !dbg !734
  %250 = select <8 x i1> %249, <8 x i32> %234, <8 x i32> zeroinitializer, !dbg !734
  %251 = icmp slt <8 x i32> %250, splat (i32 31), !dbg !734
  %252 = select <8 x i1> %251, <8 x i32> %250, <8 x i32> splat (i32 31), !dbg !734
  %253 = lshr <8 x i32> splat (i32 4194304), %252, !dbg !734
  %254 = select <8 x i1> %248, <8 x i32> zeroinitializer, <8 x i32> %253, !dbg !734
  %255 = lshr <8 x i32> splat (i32 8388607), %252, !dbg !734
  %256 = and <8 x i32> %229, %255, !dbg !734
  %257 = icmp eq <8 x i32> %256, %254, !dbg !734
  %258 = icmp sge <8 x i32> %234, splat (i32 -1), !dbg !734
  %259 = icmp slt <8 x i32> %234, splat (i32 23), !dbg !734
  %260 = and <8 x i1> %257, %259, !dbg !734
  %261 = and <8 x i1> %260, %258, !dbg !734
  %262 = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %228), !dbg !734
  %263 = fsub contract <8 x float> %230, %262, !dbg !734
  %264 = and <8 x i1> %247, %261, !dbg !734
  %265 = select <8 x i1> %264, <8 x float> %263, <8 x float> %230, !dbg !734
  %266 = call <8 x float> @llvm.copysign.v8f32(<8 x float> %265, <8 x float> %228), !dbg !734
  %267 = fadd contract <8 x float> %266, zeroinitializer, !dbg !734
  %268 = fcmp ugt <8 x float> %267, splat (float -1.280000e+02), !dbg !734
  %269 = select <8 x i1> %268, <8 x float> %267, <8 x float> splat (float -1.280000e+02), !dbg !734
  %270 = select <8 x i1> zeroinitializer, <8 x float> splat (float -1.280000e+02), <8 x float> %269, !dbg !734
  %271 = fcmp ult <8 x float> %270, splat (float 1.270000e+02), !dbg !734
  %272 = select <8 x i1> %271, <8 x float> %270, <8 x float> splat (float 1.270000e+02), !dbg !734
  %273 = select <8 x i1> zeroinitializer, <8 x float> splat (float 1.270000e+02), <8 x float> %272, !dbg !734
  %274 = fptosi <8 x float> %273 to <8 x i8>, !dbg !734
  %275 = getelementptr i8, ptr %15, i64 %24, !dbg !724
  store <8 x i8> %274, ptr %275, align 1, !dbg !724
  %276 = add i64 %21, 8, !dbg !724
  br label %20, !dbg !724

277:                                              ; preds = %20
  ret i32 0, !dbg !724
}

define internal i32 @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !735 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !736
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !736
  %6 = load ptr, ptr %5, align 8, !dbg !736
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !736
  %8 = load ptr, ptr %7, align 8, !dbg !736
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !737
  %10 = load ptr, ptr %9, align 8, !dbg !737
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !737
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !736
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !736
  %13 = getelementptr ptr, ptr %12, i32 3, !dbg !736
  %14 = load ptr, ptr %13, align 8, !dbg !736
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !736
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !736
  %17 = zext i32 %16 to i64, !dbg !736
  %18 = mul nsw i64 %17, 8, !dbg !736
  %19 = alloca i32, i64 8, align 4, !dbg !736
  br label %20, !dbg !736

20:                                               ; preds = %23, %3
  %21 = phi i64 [ %70, %23 ], [ 0, %3 ], !dbg !736
  %22 = icmp slt i64 %21, 8, !dbg !736
  br i1 %22, label %23, label %71, !dbg !736

23:                                               ; preds = %20
  %24 = add i64 %18, %21, !dbg !736
  %25 = add nuw nsw i64 0, %24, !dbg !736
  %26 = getelementptr inbounds nuw float, ptr %10, i64 %25, !dbg !736
  %27 = load float, ptr %26, align 4, !dbg !736
  %28 = fdiv float %27, 0x3F46F92680000000, !dbg !736
  %29 = bitcast float %28 to i32, !dbg !736
  %30 = call float @llvm.round.f32(float %28), !dbg !736
  %31 = bitcast float %30 to i32, !dbg !736
  %32 = lshr i32 %29, 23, !dbg !736
  %33 = and i32 %32, 255, !dbg !736
  %34 = sub i32 %33, 127, !dbg !736
  %35 = lshr i32 %31, 23, !dbg !736
  %36 = and i32 %35, 255, !dbg !736
  %37 = sub i32 %36, 127, !dbg !736
  %38 = icmp eq i32 %37, 0, !dbg !736
  %39 = sub i32 %36, 128, !dbg !736
  %40 = icmp sgt i32 %39, 0, !dbg !736
  %41 = select i1 %40, i32 %39, i32 0, !dbg !736
  %42 = icmp slt i32 %41, 31, !dbg !736
  %43 = select i1 %42, i32 %41, i32 31, !dbg !736
  %44 = lshr i32 8388607, %43, !dbg !736
  %45 = and i32 %31, %44, !dbg !736
  %46 = icmp ne i32 %45, 0, !dbg !736
  %47 = or i1 %46, %38, !dbg !736
  %48 = icmp eq i32 %34, -1, !dbg !736
  %49 = icmp sgt i32 %34, 0, !dbg !736
  %50 = select i1 %49, i32 %34, i32 0, !dbg !736
  %51 = icmp slt i32 %50, 31, !dbg !736
  %52 = select i1 %51, i32 %50, i32 31, !dbg !736
  %53 = lshr i32 4194304, %52, !dbg !736
  %54 = select i1 %48, i32 0, i32 %53, !dbg !736
  %55 = lshr i32 8388607, %52, !dbg !736
  %56 = and i32 %29, %55, !dbg !736
  %57 = icmp eq i32 %56, %54, !dbg !736
  %58 = icmp sge i32 %34, -1, !dbg !736
  %59 = icmp slt i32 %34, 23, !dbg !736
  %60 = and i1 %57, %59, !dbg !736
  %61 = and i1 %60, %58, !dbg !736
  %62 = call float @llvm.copysign.f32(float 1.000000e+00, float %28), !dbg !736
  %63 = fsub contract float %30, %62, !dbg !736
  %64 = and i1 %47, %61, !dbg !736
  %65 = select i1 %64, float %63, float %30, !dbg !736
  %66 = call float @llvm.copysign.f32(float %65, float %28), !dbg !736
  %67 = fptosi float %66 to i32, !dbg !736
  %68 = add nuw nsw i64 0, %21, !dbg !736
  %69 = getelementptr inbounds nuw i32, ptr %19, i64 %68, !dbg !736
  store i32 %67, ptr %69, align 4, !dbg !736
  %70 = add i64 %21, 1, !dbg !736
  br label %20, !dbg !736

71:                                               ; preds = %20
  %72 = ptrtoint ptr %6 to i64, !dbg !736
  %73 = add i64 %18, 12128256, !dbg !736
  %74 = ptrtoint ptr %8 to i64, !dbg !736
  %75 = add i64 %74, %73, !dbg !736
  %76 = add i64 %18, 2048, !dbg !736
  %77 = ptrtoint ptr %14 to i64, !dbg !736
  %78 = add i64 %77, %76, !dbg !736
  %79 = ptrtoint ptr %19 to i64, !dbg !736
  %80 = and i64 %72, 9223372036854775807, !dbg !736
  %81 = and i64 %75, 9223372036854775807, !dbg !736
  %82 = and i64 %78, 9223372036854775807, !dbg !736
  %83 = and i64 %79, 9223372036854775807, !dbg !736
  call void asm sideeffect "fence", ""(), !dbg !736
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !736
  call void @llvm.riscv.config(i64 2, i64 4362093211020166120), !dbg !736
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !736
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1000), !dbg !736
  call void @llvm.riscv.config(i64 4575657221409472785, i64 32), !dbg !736
  call void @llvm.riscv.loop.ws.config.bounds(i64 524303, i64 549755879425), !dbg !736
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %80, i64 %81), !dbg !736
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %83, i64 %82), !dbg !736
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 1000), !dbg !736
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 8, i64 1000), !dbg !736
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !736
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !736
  call void asm sideeffect "fence", ""(), !dbg !736
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !736
  ret i32 0, !dbg !736
}

define internal i32 @"main_graph$async_dispatch_105_elementwise_1000_i8xf32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !738 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !739
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !739
  %6 = load ptr, ptr %5, align 8, !dbg !739
  %7 = getelementptr i8, ptr %6, i64 2048, !dbg !739
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !739
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !739
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !739
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !739
  %11 = load ptr, ptr %10, align 8, !dbg !739
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !739
  br label %12, !dbg !739

12:                                               ; preds = %15, %3
  %13 = phi i64 [ %21, %15 ], [ 0, %3 ], !dbg !739
  %14 = icmp slt i64 %13, 1000, !dbg !739
  br i1 %14, label %15, label %22, !dbg !739

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %7, i64 %13, !dbg !739
  %17 = load <2 x i8>, ptr %16, align 1, !dbg !739
  %18 = sitofp <2 x i8> %17 to <2 x float>, !dbg !739
  %19 = fmul contract <2 x float> %18, splat (float 0x3FA56C0FA0000000), !dbg !739
  %20 = getelementptr float, ptr %11, i64 %13, !dbg !739
  store <2 x float> %19, ptr %20, align 4, !dbg !739
  %21 = add i64 %13, 2, !dbg !739
  br label %12, !dbg !739

22:                                               ; preds = %12
  ret i32 0, !dbg !739
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.config(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.bounds(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.addrs.ab(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.addrs.dc(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.strides.ab(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.strides.dc(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws(i64, i64) #3

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.flush(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #4 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { nounwind willreturn "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #4 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!llvm.module.flags = !{!177}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "resnet50.q.int8.mlir", directory: "/home/loren/work/runs/resnet50/artifacts")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!12 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!13 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!14 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!15 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!16 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!17 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!18 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!19 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!20 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!21 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!22 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!23 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!24 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!25 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!26 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!27 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!28 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!29 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!30 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!31 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!32 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!33 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!34 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!35 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!36 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!37 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!38 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!39 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!40 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!41 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!42 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!43 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!44 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!45 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!46 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!47 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!48 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!49 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!50 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!51 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!52 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!53 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!54 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!55 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!56 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!57 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!58 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!59 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!60 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!61 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!62 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!63 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!64 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!65 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!66 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!67 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!68 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!69 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!70 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!71 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!72 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!73 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!74 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!75 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!76 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!77 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!78 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!79 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!80 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!81 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!82 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!83 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!84 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!85 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!86 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!87 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!88 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!89 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!90 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!91 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!92 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!93 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!94 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!95 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!96 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!97 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!98 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!99 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!100 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!101 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!102 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!103 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!104 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!105 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!106 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!107 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!108 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!109 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!110 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!111 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!112 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!113 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!114 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!115 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!116 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!117 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!118 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!119 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!120 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!121 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!122 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!123 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!124 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!125 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!126 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!127 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!128 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!129 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!130 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!131 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!132 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!133 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!134 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!135 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!136 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!137 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!138 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!139 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!140 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!141 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!142 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!143 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!144 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!145 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!146 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!147 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!148 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!149 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!150 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!151 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!152 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!153 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!154 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!155 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!156 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!157 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!158 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!159 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!160 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!161 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!162 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!163 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!164 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!165 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!166 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!167 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!168 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!169 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!170 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!171 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!172 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!173 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!174 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!175 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!176 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!177 = !{i32 2, !"Debug Info Version", i32 3}
!178 = distinct !DISubprogram(name: "_initializer_0_dispatch_0_transpose_64x64_i8", linkageName: "_initializer_0_dispatch_0_transpose_64x64_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = !DISubroutineType(cc: DW_CC_normal, types: !180)
!180 = !{!181, !182, !213, !242}
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !186, file: !186, line: 246, size: 768, elements: !187)
!186 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!187 = !{!188, !196, !199, !202, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DICompositeType(tag: DW_TAG_array_type, scope: !186, file: !186, line: 227, baseType: !192, size: 2048, elements: !194)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !193)
!193 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!194 = !{!195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !205, offset: 256)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !186, file: !186, line: 227, size: 512, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, scope: !186, file: !186, line: 227, baseType: !209, size: 512, elements: !211)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !210)
!210 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !186, file: !186, line: 275, size: 384, elements: !217)
!217 = !{!218, !219, !220, !223, !224, !225, !226, !227, !230, !231, !232, !237}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !192, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !192, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !221, size: 16, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !222)
!222 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !221, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !192, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !192, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !221, size: 16, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !228, size: 8, offset: 176)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !229)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !228, size: 8, offset: 184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !189, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_array_type, scope: !186, file: !186, line: 227, baseType: !236, size: 4096, elements: !194)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_array_type, scope: !186, file: !186, line: 227, baseType: !241, size: 4096, elements: !194)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !209)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !186, file: !186, line: 321, size: 256, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !192, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !192, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !221, size: 16, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !221, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !192, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !197, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !192, size: 32, offset: 192)
!254 = !DILocation(line: 691, column: 12, scope: !178)
!255 = distinct !DISubprogram(name: "_initializer_1_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_1_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!256 = !DILocation(line: 692, column: 12, scope: !255)
!257 = distinct !DISubprogram(name: "_initializer_2_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_2_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3)
!258 = !DILocation(line: 706, column: 12, scope: !257)
!259 = distinct !DISubprogram(name: "_initializer_3_dispatch_0_transpose_256x64_i8", linkageName: "_initializer_3_dispatch_0_transpose_256x64_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!260 = !DILocation(line: 715, column: 12, scope: !259)
!261 = distinct !DISubprogram(name: "_initializer_4_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_4_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5)
!262 = !DILocation(line: 727, column: 12, scope: !261)
!263 = distinct !DISubprogram(name: "_initializer_5_dispatch_0_transpose_256x64_i8", linkageName: "_initializer_5_dispatch_0_transpose_256x64_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!264 = !DILocation(line: 736, column: 12, scope: !263)
!265 = distinct !DISubprogram(name: "_initializer_6_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_6_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!266 = !DILocation(line: 748, column: 12, scope: !265)
!267 = distinct !DISubprogram(name: "_initializer_7_dispatch_0_transpose_256x128_i8", linkageName: "_initializer_7_dispatch_0_transpose_256x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!268 = !DILocation(line: 757, column: 12, scope: !267)
!269 = distinct !DISubprogram(name: "_initializer_8_dispatch_0_transpose_256x512_i8", linkageName: "_initializer_8_dispatch_0_transpose_256x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!270 = !DILocation(line: 758, column: 12, scope: !269)
!271 = distinct !DISubprogram(name: "_initializer_9_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_9_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!272 = !DILocation(line: 772, column: 12, scope: !271)
!273 = distinct !DISubprogram(name: "_initializer_10_dispatch_0_transpose_512x128_i8", linkageName: "_initializer_10_dispatch_0_transpose_512x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!274 = !DILocation(line: 781, column: 12, scope: !273)
!275 = distinct !DISubprogram(name: "_initializer_11_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_11_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!276 = !DILocation(line: 793, column: 12, scope: !275)
!277 = distinct !DISubprogram(name: "_initializer_12_dispatch_0_transpose_512x128_i8", linkageName: "_initializer_12_dispatch_0_transpose_512x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!278 = !DILocation(line: 802, column: 12, scope: !277)
!279 = distinct !DISubprogram(name: "_initializer_13_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_13_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!280 = !DILocation(line: 814, column: 12, scope: !279)
!281 = distinct !DISubprogram(name: "_initializer_14_dispatch_0_transpose_512x128_i8", linkageName: "_initializer_14_dispatch_0_transpose_512x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!282 = !DILocation(line: 823, column: 12, scope: !281)
!283 = distinct !DISubprogram(name: "_initializer_15_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_15_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!284 = !DILocation(line: 835, column: 12, scope: !283)
!285 = distinct !DISubprogram(name: "_initializer_16_dispatch_0_transpose_512x256_i8", linkageName: "_initializer_16_dispatch_0_transpose_512x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!286 = !DILocation(line: 844, column: 12, scope: !285)
!287 = distinct !DISubprogram(name: "_initializer_17_dispatch_0_transpose_512x1024_i8", linkageName: "_initializer_17_dispatch_0_transpose_512x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!288 = !DILocation(line: 845, column: 12, scope: !287)
!289 = distinct !DISubprogram(name: "_initializer_18_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_18_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!290 = !DILocation(line: 859, column: 12, scope: !289)
!291 = distinct !DISubprogram(name: "_initializer_19_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_19_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!292 = !DILocation(line: 868, column: 12, scope: !291)
!293 = distinct !DISubprogram(name: "_initializer_20_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_20_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21)
!294 = !DILocation(line: 880, column: 12, scope: !293)
!295 = distinct !DISubprogram(name: "_initializer_21_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_21_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!296 = !DILocation(line: 889, column: 12, scope: !295)
!297 = distinct !DISubprogram(name: "_initializer_22_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_22_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23)
!298 = !DILocation(line: 901, column: 12, scope: !297)
!299 = distinct !DISubprogram(name: "_initializer_23_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_23_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!300 = !DILocation(line: 910, column: 12, scope: !299)
!301 = distinct !DISubprogram(name: "_initializer_24_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_24_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25)
!302 = !DILocation(line: 922, column: 12, scope: !301)
!303 = distinct !DISubprogram(name: "_initializer_25_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_25_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!304 = !DILocation(line: 931, column: 12, scope: !303)
!305 = distinct !DISubprogram(name: "_initializer_26_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_26_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!306 = !DILocation(line: 943, column: 12, scope: !305)
!307 = distinct !DISubprogram(name: "_initializer_27_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_27_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!308 = !DILocation(line: 952, column: 12, scope: !307)
!309 = distinct !DISubprogram(name: "_initializer_28_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_28_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!310 = !DILocation(line: 964, column: 12, scope: !309)
!311 = distinct !DISubprogram(name: "_initializer_29_dispatch_0_transpose_1024x512_i8", linkageName: "_initializer_29_dispatch_0_transpose_1024x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!312 = !DILocation(line: 973, column: 12, scope: !311)
!313 = distinct !DISubprogram(name: "_initializer_30_dispatch_0_transpose_1024x2048_i8", linkageName: "_initializer_30_dispatch_0_transpose_1024x2048_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31)
!314 = !DILocation(line: 974, column: 12, scope: !313)
!315 = distinct !DISubprogram(name: "_initializer_31_dispatch_0_transpose_512x2048_i8", linkageName: "_initializer_31_dispatch_0_transpose_512x2048_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32)
!316 = !DILocation(line: 988, column: 12, scope: !315)
!317 = distinct !DISubprogram(name: "_initializer_32_dispatch_0_transpose_2048x512_i8", linkageName: "_initializer_32_dispatch_0_transpose_2048x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33)
!318 = !DILocation(line: 997, column: 12, scope: !317)
!319 = distinct !DISubprogram(name: "_initializer_33_dispatch_0_transpose_512x2048_i8", linkageName: "_initializer_33_dispatch_0_transpose_512x2048_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!320 = !DILocation(line: 1009, column: 13, scope: !319)
!321 = distinct !DISubprogram(name: "_initializer_34_dispatch_0_transpose_2048x512_i8", linkageName: "_initializer_34_dispatch_0_transpose_2048x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !35)
!322 = !DILocation(line: 1018, column: 13, scope: !321)
!323 = distinct !DISubprogram(name: "_initializer_35_dispatch_0_transpose_512x2048_i8", linkageName: "_initializer_35_dispatch_0_transpose_512x2048_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36)
!324 = !DILocation(line: 1030, column: 13, scope: !323)
!325 = distinct !DISubprogram(name: "_initializer_36_dispatch_0_transpose_2048x1000_i8", linkageName: "_initializer_36_dispatch_0_transpose_2048x1000_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37)
!326 = !DILocation(line: 1045, column: 13, scope: !325)
!327 = distinct !DISubprogram(name: "_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38)
!328 = !DILocation(line: 691, column: 12, scope: !327)
!329 = distinct !DISubprogram(name: "_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!330 = !DILocation(line: 700, column: 12, scope: !329)
!331 = distinct !DISubprogram(name: "_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!332 = !DILocation(line: 715, column: 12, scope: !331)
!333 = distinct !DISubprogram(name: "_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41)
!334 = !DILocation(line: 721, column: 12, scope: !333)
!335 = distinct !DISubprogram(name: "_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42)
!336 = !DILocation(line: 736, column: 12, scope: !335)
!337 = distinct !DISubprogram(name: "_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43)
!338 = !DILocation(line: 742, column: 12, scope: !337)
!339 = distinct !DISubprogram(name: "_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!340 = !DILocation(line: 766, column: 12, scope: !339)
!341 = distinct !DISubprogram(name: "_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45)
!342 = !DILocation(line: 781, column: 12, scope: !341)
!343 = distinct !DISubprogram(name: "_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46)
!344 = !DILocation(line: 787, column: 12, scope: !343)
!345 = distinct !DISubprogram(name: "_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47)
!346 = !DILocation(line: 802, column: 12, scope: !345)
!347 = distinct !DISubprogram(name: "_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48)
!348 = !DILocation(line: 808, column: 12, scope: !347)
!349 = distinct !DISubprogram(name: "_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49)
!350 = !DILocation(line: 823, column: 12, scope: !349)
!351 = distinct !DISubprogram(name: "_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50)
!352 = !DILocation(line: 829, column: 12, scope: !351)
!353 = distinct !DISubprogram(name: "_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32", linkageName: "_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51)
!354 = !DILocation(line: 844, column: 12, scope: !353)
!355 = distinct !DISubprogram(name: "_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !52)
!356 = !DILocation(line: 845, column: 12, scope: !355)
!357 = distinct !DISubprogram(name: "_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53)
!358 = !DILocation(line: 853, column: 12, scope: !357)
!359 = distinct !DISubprogram(name: "_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54)
!360 = !DILocation(line: 859, column: 12, scope: !359)
!361 = distinct !DISubprogram(name: "_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55)
!362 = !DILocation(line: 868, column: 12, scope: !361)
!363 = distinct !DISubprogram(name: "_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56)
!364 = !DILocation(line: 874, column: 12, scope: !363)
!365 = distinct !DISubprogram(name: "_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57)
!366 = !DILocation(line: 880, column: 12, scope: !365)
!367 = distinct !DISubprogram(name: "_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58)
!368 = !DILocation(line: 889, column: 12, scope: !367)
!369 = distinct !DISubprogram(name: "_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!370 = !DILocation(line: 895, column: 12, scope: !369)
!371 = distinct !DISubprogram(name: "_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!372 = !DILocation(line: 901, column: 12, scope: !371)
!373 = distinct !DISubprogram(name: "_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61)
!374 = !DILocation(line: 910, column: 12, scope: !373)
!375 = distinct !DISubprogram(name: "_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62)
!376 = !DILocation(line: 916, column: 12, scope: !375)
!377 = distinct !DISubprogram(name: "_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63)
!378 = !DILocation(line: 922, column: 12, scope: !377)
!379 = distinct !DISubprogram(name: "_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64)
!380 = !DILocation(line: 931, column: 12, scope: !379)
!381 = distinct !DISubprogram(name: "_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65)
!382 = !DILocation(line: 937, column: 12, scope: !381)
!383 = distinct !DISubprogram(name: "_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!384 = !DILocation(line: 943, column: 12, scope: !383)
!385 = distinct !DISubprogram(name: "_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67)
!386 = !DILocation(line: 952, column: 12, scope: !385)
!387 = distinct !DISubprogram(name: "_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68)
!388 = !DILocation(line: 958, column: 12, scope: !387)
!389 = distinct !DISubprogram(name: "_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69)
!390 = !DILocation(line: 964, column: 12, scope: !389)
!391 = distinct !DISubprogram(name: "_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32", linkageName: "_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70)
!392 = !DILocation(line: 973, column: 12, scope: !391)
!393 = distinct !DISubprogram(name: "_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71)
!394 = !DILocation(line: 974, column: 12, scope: !393)
!395 = distinct !DISubprogram(name: "_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72)
!396 = !DILocation(line: 982, column: 12, scope: !395)
!397 = distinct !DISubprogram(name: "_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73)
!398 = !DILocation(line: 988, column: 12, scope: !397)
!399 = distinct !DISubprogram(name: "_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!400 = !DILocation(line: 997, column: 12, scope: !399)
!401 = distinct !DISubprogram(name: "_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!402 = !DILocation(line: 1003, column: 12, scope: !401)
!403 = distinct !DISubprogram(name: "_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!404 = !DILocation(line: 1009, column: 13, scope: !403)
!405 = distinct !DISubprogram(name: "_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77)
!406 = !DILocation(line: 1018, column: 13, scope: !405)
!407 = distinct !DISubprogram(name: "_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78)
!408 = !DILocation(line: 1024, column: 13, scope: !407)
!409 = distinct !DISubprogram(name: "_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79)
!410 = !DILocation(line: 1030, column: 13, scope: !409)
!411 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8", linkageName: "main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80)
!412 = !DILocation(line: 574, column: 12, scope: !411)
!413 = !DILocation(line: 682, column: 12, scope: !411)
!414 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32", linkageName: "main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81)
!415 = !DILocation(line: 682, column: 12, scope: !414)
!416 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_generic_112x112x7x7x3_i8", linkageName: "main_graph$async_dispatch_2_generic_112x112x7x7x3_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82)
!417 = !DILocation(line: 574, column: 12, scope: !416)
!418 = !DILocation(line: 682, column: 12, scope: !416)
!419 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32", linkageName: "main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83)
!420 = !DILocation(line: 682, column: 12, scope: !419)
!421 = !DILocation(line: 687, column: 12, scope: !419)
!422 = !DILocation(line: 685, column: 12, scope: !419)
!423 = !DILocation(line: 686, column: 12, scope: !419)
!424 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_slow_memcpy", linkageName: "main_graph$async_dispatch_4_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84)
!425 = !DILocation(line: 687, column: 12, scope: !424)
!426 = !DILocation(line: 688, column: 12, scope: !424)
!427 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_64x56x56x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_64x56x56x3x3_f32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85)
!428 = !DILocation(line: 688, column: 12, scope: !427)
!429 = !DILocation(line: 689, column: 12, scope: !427)
!430 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86)
!431 = !DILocation(line: 691, column: 12, scope: !430)
!432 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87)
!433 = !DILocation(line: 692, column: 12, scope: !432)
!434 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_slow_memcpy", linkageName: "main_graph$async_dispatch_8_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88)
!435 = !DILocation(line: 698, column: 12, scope: !434)
!436 = !DILocation(line: 700, column: 12, scope: !434)
!437 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_9_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89)
!438 = !DILocation(line: 700, column: 12, scope: !437)
!439 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90)
!440 = !DILocation(line: 700, column: 12, scope: !439)
!441 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !91)
!442 = !DILocation(line: 706, column: 12, scope: !441)
!443 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92)
!444 = !DILocation(line: 706, column: 12, scope: !443)
!445 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !93)
!446 = !DILocation(line: 692, column: 12, scope: !445)
!447 = !DILocation(line: 706, column: 12, scope: !445)
!448 = !DILocation(line: 713, column: 12, scope: !445)
!449 = !DILocation(line: 696, column: 12, scope: !445)
!450 = !DILocation(line: 708, column: 12, scope: !445)
!451 = !DILocation(line: 709, column: 12, scope: !445)
!452 = !DILocation(line: 710, column: 12, scope: !445)
!453 = !DILocation(line: 712, column: 12, scope: !445)
!454 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!455 = !DILocation(line: 715, column: 12, scope: !454)
!456 = distinct !DISubprogram(name: "main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95)
!457 = !DILocation(line: 721, column: 12, scope: !456)
!458 = distinct !DISubprogram(name: "main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96)
!459 = !DILocation(line: 721, column: 12, scope: !458)
!460 = distinct !DISubprogram(name: "main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97)
!461 = !DILocation(line: 727, column: 12, scope: !460)
!462 = distinct !DISubprogram(name: "main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98)
!463 = !DILocation(line: 727, column: 12, scope: !462)
!464 = !DILocation(line: 692, column: 12, scope: !462)
!465 = !DILocation(line: 734, column: 12, scope: !462)
!466 = !DILocation(line: 714, column: 12, scope: !462)
!467 = !DILocation(line: 729, column: 12, scope: !462)
!468 = !DILocation(line: 730, column: 12, scope: !462)
!469 = !DILocation(line: 731, column: 12, scope: !462)
!470 = !DILocation(line: 733, column: 12, scope: !462)
!471 = distinct !DISubprogram(name: "main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99)
!472 = !DILocation(line: 736, column: 12, scope: !471)
!473 = distinct !DISubprogram(name: "main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100)
!474 = !DILocation(line: 742, column: 12, scope: !473)
!475 = distinct !DISubprogram(name: "main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101)
!476 = !DILocation(line: 742, column: 12, scope: !475)
!477 = distinct !DISubprogram(name: "main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102)
!478 = !DILocation(line: 748, column: 12, scope: !477)
!479 = distinct !DISubprogram(name: "main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103)
!480 = !DILocation(line: 748, column: 12, scope: !479)
!481 = !DILocation(line: 727, column: 12, scope: !479)
!482 = !DILocation(line: 755, column: 12, scope: !479)
!483 = !DILocation(line: 735, column: 12, scope: !479)
!484 = !DILocation(line: 750, column: 12, scope: !479)
!485 = !DILocation(line: 751, column: 12, scope: !479)
!486 = !DILocation(line: 752, column: 12, scope: !479)
!487 = !DILocation(line: 754, column: 12, scope: !479)
!488 = distinct !DISubprogram(name: "main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", linkageName: "main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !104)
!489 = !DILocation(line: 757, column: 12, scope: !488)
!490 = distinct !DISubprogram(name: "main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!491 = !DILocation(line: 757, column: 12, scope: !490)
!492 = distinct !DISubprogram(name: "main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!493 = !DILocation(line: 758, column: 12, scope: !492)
!494 = distinct !DISubprogram(name: "main_graph$async_dispatch_29_generic_28x28x256_i8", linkageName: "main_graph$async_dispatch_29_generic_28x28x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107)
!495 = !DILocation(line: 755, column: 12, scope: !494)
!496 = !DILocation(line: 758, column: 12, scope: !494)
!497 = distinct !DISubprogram(name: "main_graph$async_dispatch_30_slow_memcpy", linkageName: "main_graph$async_dispatch_30_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108)
!498 = !DILocation(line: 764, column: 12, scope: !497)
!499 = !DILocation(line: 766, column: 12, scope: !497)
!500 = distinct !DISubprogram(name: "main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109)
!501 = !DILocation(line: 766, column: 12, scope: !500)
!502 = distinct !DISubprogram(name: "main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !110)
!503 = !DILocation(line: 766, column: 12, scope: !502)
!504 = distinct !DISubprogram(name: "main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111)
!505 = !DILocation(line: 772, column: 12, scope: !504)
!506 = distinct !DISubprogram(name: "main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112)
!507 = !DILocation(line: 772, column: 12, scope: !506)
!508 = distinct !DISubprogram(name: "main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113)
!509 = !DILocation(line: 758, column: 12, scope: !508)
!510 = !DILocation(line: 772, column: 12, scope: !508)
!511 = !DILocation(line: 779, column: 12, scope: !508)
!512 = !DILocation(line: 762, column: 12, scope: !508)
!513 = !DILocation(line: 774, column: 12, scope: !508)
!514 = !DILocation(line: 775, column: 12, scope: !508)
!515 = !DILocation(line: 776, column: 12, scope: !508)
!516 = !DILocation(line: 778, column: 12, scope: !508)
!517 = distinct !DISubprogram(name: "main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114)
!518 = !DILocation(line: 781, column: 12, scope: !517)
!519 = distinct !DISubprogram(name: "main_graph$async_dispatch_37_slow_memcpy", linkageName: "main_graph$async_dispatch_37_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115)
!520 = !DILocation(line: 787, column: 12, scope: !519)
!521 = !DILocation(line: 785, column: 12, scope: !519)
!522 = distinct !DISubprogram(name: "main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116)
!523 = !DILocation(line: 787, column: 12, scope: !522)
!524 = distinct !DISubprogram(name: "main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117)
!525 = !DILocation(line: 787, column: 12, scope: !524)
!526 = distinct !DISubprogram(name: "main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !118)
!527 = !DILocation(line: 793, column: 12, scope: !526)
!528 = distinct !DISubprogram(name: "main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119)
!529 = !DILocation(line: 793, column: 12, scope: !528)
!530 = !DILocation(line: 758, column: 12, scope: !528)
!531 = !DILocation(line: 800, column: 12, scope: !528)
!532 = !DILocation(line: 780, column: 12, scope: !528)
!533 = !DILocation(line: 795, column: 12, scope: !528)
!534 = !DILocation(line: 796, column: 12, scope: !528)
!535 = !DILocation(line: 797, column: 12, scope: !528)
!536 = !DILocation(line: 799, column: 12, scope: !528)
!537 = distinct !DISubprogram(name: "main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120)
!538 = !DILocation(line: 802, column: 12, scope: !537)
!539 = distinct !DISubprogram(name: "main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121)
!540 = !DILocation(line: 808, column: 12, scope: !539)
!541 = distinct !DISubprogram(name: "main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122)
!542 = !DILocation(line: 808, column: 12, scope: !541)
!543 = distinct !DISubprogram(name: "main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123)
!544 = !DILocation(line: 814, column: 12, scope: !543)
!545 = distinct !DISubprogram(name: "main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !124)
!546 = !DILocation(line: 814, column: 12, scope: !545)
!547 = !DILocation(line: 793, column: 12, scope: !545)
!548 = !DILocation(line: 821, column: 12, scope: !545)
!549 = !DILocation(line: 801, column: 12, scope: !545)
!550 = !DILocation(line: 816, column: 12, scope: !545)
!551 = !DILocation(line: 817, column: 12, scope: !545)
!552 = !DILocation(line: 818, column: 12, scope: !545)
!553 = !DILocation(line: 820, column: 12, scope: !545)
!554 = distinct !DISubprogram(name: "main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125)
!555 = !DILocation(line: 823, column: 12, scope: !554)
!556 = distinct !DISubprogram(name: "main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126)
!557 = !DILocation(line: 829, column: 12, scope: !556)
!558 = distinct !DISubprogram(name: "main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127)
!559 = !DILocation(line: 829, column: 12, scope: !558)
!560 = distinct !DISubprogram(name: "main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !128)
!561 = !DILocation(line: 835, column: 12, scope: !560)
!562 = distinct !DISubprogram(name: "main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129)
!563 = !DILocation(line: 835, column: 12, scope: !562)
!564 = !DILocation(line: 814, column: 12, scope: !562)
!565 = !DILocation(line: 842, column: 12, scope: !562)
!566 = !DILocation(line: 822, column: 12, scope: !562)
!567 = !DILocation(line: 837, column: 12, scope: !562)
!568 = !DILocation(line: 838, column: 12, scope: !562)
!569 = !DILocation(line: 839, column: 12, scope: !562)
!570 = !DILocation(line: 841, column: 12, scope: !562)
!571 = distinct !DISubprogram(name: "main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130)
!572 = !DILocation(line: 844, column: 12, scope: !571)
!573 = distinct !DISubprogram(name: "main_graph$async_dispatch_55_generic_14x14x512_i8", linkageName: "main_graph$async_dispatch_55_generic_14x14x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !131)
!574 = !DILocation(line: 842, column: 12, scope: !573)
!575 = !DILocation(line: 845, column: 12, scope: !573)
!576 = distinct !DISubprogram(name: "main_graph$async_dispatch_56_slow_memcpy", linkageName: "main_graph$async_dispatch_56_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132)
!577 = !DILocation(line: 851, column: 12, scope: !576)
!578 = !DILocation(line: 853, column: 12, scope: !576)
!579 = distinct !DISubprogram(name: "main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133)
!580 = !DILocation(line: 853, column: 12, scope: !579)
!581 = distinct !DISubprogram(name: "main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134)
!582 = !DILocation(line: 853, column: 12, scope: !581)
!583 = distinct !DISubprogram(name: "main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135)
!584 = !DILocation(line: 859, column: 12, scope: !583)
!585 = distinct !DISubprogram(name: "main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136)
!586 = !DILocation(line: 845, column: 12, scope: !585)
!587 = !DILocation(line: 859, column: 12, scope: !585)
!588 = !DILocation(line: 866, column: 12, scope: !585)
!589 = !DILocation(line: 849, column: 12, scope: !585)
!590 = !DILocation(line: 861, column: 12, scope: !585)
!591 = !DILocation(line: 862, column: 12, scope: !585)
!592 = !DILocation(line: 863, column: 12, scope: !585)
!593 = !DILocation(line: 865, column: 12, scope: !585)
!594 = distinct !DISubprogram(name: "main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137)
!595 = !DILocation(line: 868, column: 12, scope: !594)
!596 = distinct !DISubprogram(name: "main_graph$async_dispatch_62_slow_memcpy", linkageName: "main_graph$async_dispatch_62_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !138)
!597 = !DILocation(line: 874, column: 12, scope: !596)
!598 = !DILocation(line: 872, column: 12, scope: !596)
!599 = distinct !DISubprogram(name: "main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !139)
!600 = !DILocation(line: 874, column: 12, scope: !599)
!601 = distinct !DISubprogram(name: "main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140)
!602 = !DILocation(line: 874, column: 12, scope: !601)
!603 = distinct !DISubprogram(name: "main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141)
!604 = !DILocation(line: 880, column: 12, scope: !603)
!605 = !DILocation(line: 845, column: 12, scope: !603)
!606 = !DILocation(line: 887, column: 12, scope: !603)
!607 = !DILocation(line: 867, column: 12, scope: !603)
!608 = !DILocation(line: 882, column: 12, scope: !603)
!609 = !DILocation(line: 883, column: 12, scope: !603)
!610 = !DILocation(line: 884, column: 12, scope: !603)
!611 = !DILocation(line: 886, column: 12, scope: !603)
!612 = distinct !DISubprogram(name: "main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !142)
!613 = !DILocation(line: 889, column: 12, scope: !612)
!614 = distinct !DISubprogram(name: "main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143)
!615 = !DILocation(line: 895, column: 12, scope: !614)
!616 = distinct !DISubprogram(name: "main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144)
!617 = !DILocation(line: 895, column: 12, scope: !616)
!618 = distinct !DISubprogram(name: "main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145)
!619 = !DILocation(line: 901, column: 12, scope: !618)
!620 = !DILocation(line: 880, column: 12, scope: !618)
!621 = !DILocation(line: 908, column: 12, scope: !618)
!622 = !DILocation(line: 888, column: 12, scope: !618)
!623 = !DILocation(line: 903, column: 12, scope: !618)
!624 = !DILocation(line: 904, column: 12, scope: !618)
!625 = !DILocation(line: 905, column: 12, scope: !618)
!626 = !DILocation(line: 907, column: 12, scope: !618)
!627 = distinct !DISubprogram(name: "main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146)
!628 = !DILocation(line: 910, column: 12, scope: !627)
!629 = distinct !DISubprogram(name: "main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147)
!630 = !DILocation(line: 916, column: 12, scope: !629)
!631 = distinct !DISubprogram(name: "main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148)
!632 = !DILocation(line: 916, column: 12, scope: !631)
!633 = distinct !DISubprogram(name: "main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149)
!634 = !DILocation(line: 922, column: 12, scope: !633)
!635 = !DILocation(line: 901, column: 12, scope: !633)
!636 = !DILocation(line: 929, column: 12, scope: !633)
!637 = !DILocation(line: 909, column: 12, scope: !633)
!638 = !DILocation(line: 924, column: 12, scope: !633)
!639 = !DILocation(line: 925, column: 12, scope: !633)
!640 = !DILocation(line: 926, column: 12, scope: !633)
!641 = !DILocation(line: 928, column: 12, scope: !633)
!642 = distinct !DISubprogram(name: "main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150)
!643 = !DILocation(line: 931, column: 12, scope: !642)
!644 = distinct !DISubprogram(name: "main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151)
!645 = !DILocation(line: 937, column: 12, scope: !644)
!646 = distinct !DISubprogram(name: "main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152)
!647 = !DILocation(line: 937, column: 12, scope: !646)
!648 = distinct !DISubprogram(name: "main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153)
!649 = !DILocation(line: 943, column: 12, scope: !648)
!650 = !DILocation(line: 922, column: 12, scope: !648)
!651 = !DILocation(line: 950, column: 12, scope: !648)
!652 = !DILocation(line: 930, column: 12, scope: !648)
!653 = !DILocation(line: 945, column: 12, scope: !648)
!654 = !DILocation(line: 946, column: 12, scope: !648)
!655 = !DILocation(line: 947, column: 12, scope: !648)
!656 = !DILocation(line: 949, column: 12, scope: !648)
!657 = distinct !DISubprogram(name: "main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154)
!658 = !DILocation(line: 952, column: 12, scope: !657)
!659 = distinct !DISubprogram(name: "main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155)
!660 = !DILocation(line: 958, column: 12, scope: !659)
!661 = distinct !DISubprogram(name: "main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156)
!662 = !DILocation(line: 958, column: 12, scope: !661)
!663 = distinct !DISubprogram(name: "main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157)
!664 = !DILocation(line: 964, column: 12, scope: !663)
!665 = !DILocation(line: 943, column: 12, scope: !663)
!666 = !DILocation(line: 971, column: 12, scope: !663)
!667 = !DILocation(line: 951, column: 12, scope: !663)
!668 = !DILocation(line: 966, column: 12, scope: !663)
!669 = !DILocation(line: 967, column: 12, scope: !663)
!670 = !DILocation(line: 968, column: 12, scope: !663)
!671 = !DILocation(line: 970, column: 12, scope: !663)
!672 = distinct !DISubprogram(name: "main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158)
!673 = !DILocation(line: 973, column: 12, scope: !672)
!674 = distinct !DISubprogram(name: "main_graph$async_dispatch_87_generic_7x7x1024_i8", linkageName: "main_graph$async_dispatch_87_generic_7x7x1024_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159)
!675 = !DILocation(line: 971, column: 12, scope: !674)
!676 = !DILocation(line: 974, column: 12, scope: !674)
!677 = distinct !DISubprogram(name: "main_graph$async_dispatch_88_slow_memcpy", linkageName: "main_graph$async_dispatch_88_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160)
!678 = !DILocation(line: 980, column: 12, scope: !677)
!679 = !DILocation(line: 982, column: 12, scope: !677)
!680 = distinct !DISubprogram(name: "main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161)
!681 = !DILocation(line: 982, column: 12, scope: !680)
!682 = distinct !DISubprogram(name: "main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !162)
!683 = !DILocation(line: 982, column: 12, scope: !682)
!684 = distinct !DISubprogram(name: "main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163)
!685 = !DILocation(line: 988, column: 12, scope: !684)
!686 = distinct !DISubprogram(name: "main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164)
!687 = !DILocation(line: 974, column: 12, scope: !686)
!688 = !DILocation(line: 988, column: 12, scope: !686)
!689 = !DILocation(line: 995, column: 12, scope: !686)
!690 = !DILocation(line: 978, column: 12, scope: !686)
!691 = !DILocation(line: 990, column: 12, scope: !686)
!692 = !DILocation(line: 991, column: 12, scope: !686)
!693 = !DILocation(line: 992, column: 12, scope: !686)
!694 = !DILocation(line: 994, column: 12, scope: !686)
!695 = distinct !DISubprogram(name: "main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165)
!696 = !DILocation(line: 997, column: 12, scope: !695)
!697 = distinct !DISubprogram(name: "main_graph$async_dispatch_94_slow_memcpy", linkageName: "main_graph$async_dispatch_94_slow_memcpy", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166)
!698 = !DILocation(line: 1003, column: 12, scope: !697)
!699 = !DILocation(line: 1001, column: 12, scope: !697)
!700 = distinct !DISubprogram(name: "main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167)
!701 = !DILocation(line: 1003, column: 12, scope: !700)
!702 = distinct !DISubprogram(name: "main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168)
!703 = !DILocation(line: 1003, column: 12, scope: !702)
!704 = distinct !DISubprogram(name: "main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!705 = !DILocation(line: 1009, column: 13, scope: !704)
!706 = !DILocation(line: 974, column: 12, scope: !704)
!707 = !DILocation(line: 1016, column: 13, scope: !704)
!708 = !DILocation(line: 996, column: 12, scope: !704)
!709 = !DILocation(line: 1011, column: 13, scope: !704)
!710 = !DILocation(line: 1012, column: 13, scope: !704)
!711 = !DILocation(line: 1013, column: 13, scope: !704)
!712 = !DILocation(line: 1015, column: 13, scope: !704)
!713 = distinct !DISubprogram(name: "main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170)
!714 = !DILocation(line: 1018, column: 13, scope: !713)
!715 = distinct !DISubprogram(name: "main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171)
!716 = !DILocation(line: 1024, column: 13, scope: !715)
!717 = distinct !DISubprogram(name: "main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172)
!718 = !DILocation(line: 1024, column: 13, scope: !717)
!719 = distinct !DISubprogram(name: "main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173)
!720 = !DILocation(line: 1030, column: 13, scope: !719)
!721 = distinct !DISubprogram(name: "main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", linkageName: "main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174)
!722 = !DILocation(line: 1030, column: 13, scope: !721)
!723 = !DILocation(line: 1009, column: 13, scope: !721)
!724 = !DILocation(line: 1039, column: 13, scope: !721)
!725 = !DILocation(line: 1017, column: 13, scope: !721)
!726 = !DILocation(line: 1032, column: 13, scope: !721)
!727 = !DILocation(line: 1033, column: 13, scope: !721)
!728 = !DILocation(line: 1034, column: 13, scope: !721)
!729 = !DILocation(line: 1036, column: 13, scope: !721)
!730 = !DILocation(line: 1037, column: 13, scope: !721)
!731 = !DILocation(line: 1038, column: 13, scope: !721)
!732 = !DILocation(line: 1040, column: 13, scope: !721)
!733 = !DILocation(line: 1041, column: 13, scope: !721)
!734 = !DILocation(line: 1043, column: 13, scope: !721)
!735 = distinct !DISubprogram(name: "main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175)
!736 = !DILocation(line: 1045, column: 13, scope: !735)
!737 = !DILocation(line: 1046, column: 13, scope: !735)
!738 = distinct !DISubprogram(name: "main_graph$async_dispatch_105_elementwise_1000_i8xf32", linkageName: "main_graph$async_dispatch_105_elementwise_1000_i8xf32", scope: !1, file: !1, line: 1, type: !179, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176)
!739 = !DILocation(line: 1047, column: 13, scope: !738)
