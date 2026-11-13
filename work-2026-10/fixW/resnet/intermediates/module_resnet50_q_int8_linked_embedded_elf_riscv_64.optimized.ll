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
%struct.exp2f_data = type { [32 x i64], double, [3 x double], double, double, [3 x double] }
%struct.powf_log2_data = type { [16 x %struct.anon], [5 x double] }
%struct.anon = type { double, double }

@0 = internal constant [23 x i8] c"resnet50_q_int8_linked\00", align 1
@iree_hal_executable_library_query_v0_header = internal constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = internal constant [176 x ptr] [ptr @_initializer_0_dispatch_0_transpose_64x64_i8, ptr @_initializer_1_dispatch_0_transpose_64x256_i8, ptr @_initializer_2_dispatch_0_transpose_64x256_i8, ptr @_initializer_3_dispatch_0_transpose_256x64_i8, ptr @_initializer_4_dispatch_0_transpose_64x256_i8, ptr @_initializer_5_dispatch_0_transpose_256x64_i8, ptr @_initializer_6_dispatch_0_transpose_64x256_i8, ptr @_initializer_7_dispatch_0_transpose_256x128_i8, ptr @_initializer_8_dispatch_0_transpose_256x512_i8, ptr @_initializer_9_dispatch_0_transpose_128x512_i8, ptr @_initializer_10_dispatch_0_transpose_512x128_i8, ptr @_initializer_11_dispatch_0_transpose_128x512_i8, ptr @_initializer_12_dispatch_0_transpose_512x128_i8, ptr @_initializer_13_dispatch_0_transpose_128x512_i8, ptr @_initializer_14_dispatch_0_transpose_512x128_i8, ptr @_initializer_15_dispatch_0_transpose_128x512_i8, ptr @_initializer_16_dispatch_0_transpose_512x256_i8, ptr @_initializer_17_dispatch_0_transpose_512x1024_i8, ptr @_initializer_18_dispatch_0_transpose_256x1024_i8, ptr @_initializer_19_dispatch_0_transpose_1024x256_i8, ptr @_initializer_20_dispatch_0_transpose_256x1024_i8, ptr @_initializer_21_dispatch_0_transpose_1024x256_i8, ptr @_initializer_22_dispatch_0_transpose_256x1024_i8, ptr @_initializer_23_dispatch_0_transpose_1024x256_i8, ptr @_initializer_24_dispatch_0_transpose_256x1024_i8, ptr @_initializer_25_dispatch_0_transpose_1024x256_i8, ptr @_initializer_26_dispatch_0_transpose_256x1024_i8, ptr @_initializer_27_dispatch_0_transpose_1024x256_i8, ptr @_initializer_28_dispatch_0_transpose_256x1024_i8, ptr @_initializer_29_dispatch_0_transpose_1024x512_i8, ptr @_initializer_30_dispatch_0_transpose_1024x2048_i8, ptr @_initializer_31_dispatch_0_transpose_512x2048_i8, ptr @_initializer_32_dispatch_0_transpose_2048x512_i8, ptr @_initializer_33_dispatch_0_transpose_512x2048_i8, ptr @_initializer_34_dispatch_0_transpose_2048x512_i8, ptr @_initializer_35_dispatch_0_transpose_512x2048_i8, ptr @_initializer_36_dispatch_0_transpose_2048x1000_i8, ptr @_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32, ptr @_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32, ptr @_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32, ptr @_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32, ptr @_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32, ptr @_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32, ptr @_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32, ptr @_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32, ptr @"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8", ptr @"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32", ptr @"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8", ptr @"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32", ptr @"main_graph$async_dispatch_4_slow_memcpy", ptr @"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32", ptr @"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32", ptr @"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_8_slow_memcpy", ptr @"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8", ptr @"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32", ptr @"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", ptr @"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", ptr @"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", ptr @"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", ptr @"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", ptr @"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", ptr @"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", ptr @"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", ptr @"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", ptr @"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", ptr @"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_29_generic_28x28x256_i8", ptr @"main_graph$async_dispatch_30_slow_memcpy", ptr @"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", ptr @"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", ptr @"main_graph$async_dispatch_37_slow_memcpy", ptr @"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", ptr @"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", ptr @"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", ptr @"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", ptr @"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", ptr @"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", ptr @"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", ptr @"main_graph$async_dispatch_55_generic_14x14x512_i8", ptr @"main_graph$async_dispatch_56_slow_memcpy", ptr @"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", ptr @"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_62_slow_memcpy", ptr @"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", ptr @"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", ptr @"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", ptr @"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_87_generic_7x7x1024_i8", ptr @"main_graph$async_dispatch_88_slow_memcpy", ptr @"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", ptr @"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", ptr @"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", ptr @"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", ptr @"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", ptr @"main_graph$async_dispatch_94_slow_memcpy", ptr @"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", ptr @"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", ptr @"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", ptr @"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", ptr @"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", ptr @"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", ptr @"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", ptr @"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", ptr @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", ptr @"main_graph$async_dispatch_105_elementwise_1000_i8xf32"]
@iree_hal_executable_library_query_v0_attrs = internal constant [176 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 4, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = internal constant [45 x i8] c"_initializer_0_dispatch_0_transpose_64x64_i8\00", align 1
@2 = internal constant [46 x i8] c"_initializer_1_dispatch_0_transpose_64x256_i8\00", align 1
@3 = internal constant [46 x i8] c"_initializer_2_dispatch_0_transpose_64x256_i8\00", align 1
@4 = internal constant [46 x i8] c"_initializer_3_dispatch_0_transpose_256x64_i8\00", align 1
@5 = internal constant [46 x i8] c"_initializer_4_dispatch_0_transpose_64x256_i8\00", align 1
@6 = internal constant [46 x i8] c"_initializer_5_dispatch_0_transpose_256x64_i8\00", align 1
@7 = internal constant [46 x i8] c"_initializer_6_dispatch_0_transpose_64x256_i8\00", align 1
@8 = internal constant [47 x i8] c"_initializer_7_dispatch_0_transpose_256x128_i8\00", align 1
@9 = internal constant [47 x i8] c"_initializer_8_dispatch_0_transpose_256x512_i8\00", align 1
@10 = internal constant [47 x i8] c"_initializer_9_dispatch_0_transpose_128x512_i8\00", align 1
@11 = internal constant [48 x i8] c"_initializer_10_dispatch_0_transpose_512x128_i8\00", align 1
@12 = internal constant [48 x i8] c"_initializer_11_dispatch_0_transpose_128x512_i8\00", align 1
@13 = internal constant [48 x i8] c"_initializer_12_dispatch_0_transpose_512x128_i8\00", align 1
@14 = internal constant [48 x i8] c"_initializer_13_dispatch_0_transpose_128x512_i8\00", align 1
@15 = internal constant [48 x i8] c"_initializer_14_dispatch_0_transpose_512x128_i8\00", align 1
@16 = internal constant [48 x i8] c"_initializer_15_dispatch_0_transpose_128x512_i8\00", align 1
@17 = internal constant [48 x i8] c"_initializer_16_dispatch_0_transpose_512x256_i8\00", align 1
@18 = internal constant [49 x i8] c"_initializer_17_dispatch_0_transpose_512x1024_i8\00", align 1
@19 = internal constant [49 x i8] c"_initializer_18_dispatch_0_transpose_256x1024_i8\00", align 1
@20 = internal constant [49 x i8] c"_initializer_19_dispatch_0_transpose_1024x256_i8\00", align 1
@21 = internal constant [49 x i8] c"_initializer_20_dispatch_0_transpose_256x1024_i8\00", align 1
@22 = internal constant [49 x i8] c"_initializer_21_dispatch_0_transpose_1024x256_i8\00", align 1
@23 = internal constant [49 x i8] c"_initializer_22_dispatch_0_transpose_256x1024_i8\00", align 1
@24 = internal constant [49 x i8] c"_initializer_23_dispatch_0_transpose_1024x256_i8\00", align 1
@25 = internal constant [49 x i8] c"_initializer_24_dispatch_0_transpose_256x1024_i8\00", align 1
@26 = internal constant [49 x i8] c"_initializer_25_dispatch_0_transpose_1024x256_i8\00", align 1
@27 = internal constant [49 x i8] c"_initializer_26_dispatch_0_transpose_256x1024_i8\00", align 1
@28 = internal constant [49 x i8] c"_initializer_27_dispatch_0_transpose_1024x256_i8\00", align 1
@29 = internal constant [49 x i8] c"_initializer_28_dispatch_0_transpose_256x1024_i8\00", align 1
@30 = internal constant [49 x i8] c"_initializer_29_dispatch_0_transpose_1024x512_i8\00", align 1
@31 = internal constant [50 x i8] c"_initializer_30_dispatch_0_transpose_1024x2048_i8\00", align 1
@32 = internal constant [49 x i8] c"_initializer_31_dispatch_0_transpose_512x2048_i8\00", align 1
@33 = internal constant [49 x i8] c"_initializer_32_dispatch_0_transpose_2048x512_i8\00", align 1
@34 = internal constant [49 x i8] c"_initializer_33_dispatch_0_transpose_512x2048_i8\00", align 1
@35 = internal constant [49 x i8] c"_initializer_34_dispatch_0_transpose_2048x512_i8\00", align 1
@36 = internal constant [49 x i8] c"_initializer_35_dispatch_0_transpose_512x2048_i8\00", align 1
@37 = internal constant [50 x i8] c"_initializer_36_dispatch_0_transpose_2048x1000_i8\00", align 1
@38 = internal constant [61 x i8] c"_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@39 = internal constant [61 x i8] c"_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@40 = internal constant [61 x i8] c"_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@41 = internal constant [61 x i8] c"_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@42 = internal constant [61 x i8] c"_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@43 = internal constant [61 x i8] c"_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32\00", align 1
@44 = internal constant [61 x i8] c"_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@45 = internal constant [61 x i8] c"_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@46 = internal constant [61 x i8] c"_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@47 = internal constant [61 x i8] c"_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@48 = internal constant [61 x i8] c"_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@49 = internal constant [61 x i8] c"_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@50 = internal constant [61 x i8] c"_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32\00", align 1
@51 = internal constant [61 x i8] c"_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32\00", align 1
@52 = internal constant [62 x i8] c"_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@53 = internal constant [61 x i8] c"_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@54 = internal constant [62 x i8] c"_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@55 = internal constant [61 x i8] c"_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@56 = internal constant [61 x i8] c"_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@57 = internal constant [62 x i8] c"_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@58 = internal constant [61 x i8] c"_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@59 = internal constant [61 x i8] c"_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@60 = internal constant [62 x i8] c"_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@61 = internal constant [61 x i8] c"_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@62 = internal constant [61 x i8] c"_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@63 = internal constant [62 x i8] c"_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@64 = internal constant [61 x i8] c"_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@65 = internal constant [61 x i8] c"_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@66 = internal constant [62 x i8] c"_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@67 = internal constant [61 x i8] c"_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@68 = internal constant [61 x i8] c"_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32\00", align 1
@69 = internal constant [62 x i8] c"_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32\00", align 1
@70 = internal constant [61 x i8] c"_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32\00", align 1
@71 = internal constant [61 x i8] c"_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@72 = internal constant [60 x i8] c"_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@73 = internal constant [61 x i8] c"_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@74 = internal constant [60 x i8] c"_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@75 = internal constant [60 x i8] c"_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@76 = internal constant [61 x i8] c"_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@77 = internal constant [60 x i8] c"_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@78 = internal constant [60 x i8] c"_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32\00", align 1
@79 = internal constant [61 x i8] c"_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32\00", align 1
@80 = internal constant [67 x i8] c"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8\00", align 1
@81 = internal constant [63 x i8] c"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32\00", align 1
@82 = internal constant [53 x i8] c"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8\00", align 1
@83 = internal constant [58 x i8] c"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32\00", align 1
@84 = internal constant [40 x i8] c"main_graph$async_dispatch_4_slow_memcpy\00", align 1
@85 = internal constant [50 x i8] c"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32\00", align 1
@86 = internal constant [56 x i8] c"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32\00", align 1
@87 = internal constant [63 x i8] c"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32\00", align 1
@88 = internal constant [40 x i8] c"main_graph$async_dispatch_8_slow_memcpy\00", align 1
@89 = internal constant [52 x i8] c"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8\00", align 1
@90 = internal constant [58 x i8] c"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32\00", align 1
@91 = internal constant [64 x i8] c"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32\00", align 1
@92 = internal constant [58 x i8] c"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32\00", align 1
@93 = internal constant [58 x i8] c"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32\00", align 1
@94 = internal constant [58 x i8] c"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32\00", align 1
@95 = internal constant [53 x i8] c"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8\00", align 1
@96 = internal constant [58 x i8] c"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32\00", align 1
@97 = internal constant [64 x i8] c"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32\00", align 1
@98 = internal constant [58 x i8] c"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32\00", align 1
@99 = internal constant [58 x i8] c"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32\00", align 1
@100 = internal constant [53 x i8] c"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8\00", align 1
@101 = internal constant [58 x i8] c"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32\00", align 1
@102 = internal constant [64 x i8] c"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32\00", align 1
@103 = internal constant [58 x i8] c"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32\00", align 1
@104 = internal constant [64 x i8] c"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32\00", align 1
@105 = internal constant [59 x i8] c"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32\00", align 1
@106 = internal constant [63 x i8] c"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32\00", align 1
@107 = internal constant [50 x i8] c"main_graph$async_dispatch_29_generic_28x28x256_i8\00", align 1
@108 = internal constant [41 x i8] c"main_graph$async_dispatch_30_slow_memcpy\00", align 1
@109 = internal constant [54 x i8] c"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8\00", align 1
@110 = internal constant [59 x i8] c"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32\00", align 1
@111 = internal constant [63 x i8] c"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32\00", align 1
@112 = internal constant [58 x i8] c"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32\00", align 1
@113 = internal constant [58 x i8] c"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32\00", align 1
@114 = internal constant [58 x i8] c"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32\00", align 1
@115 = internal constant [41 x i8] c"main_graph$async_dispatch_37_slow_memcpy\00", align 1
@116 = internal constant [54 x i8] c"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8\00", align 1
@117 = internal constant [59 x i8] c"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32\00", align 1
@118 = internal constant [63 x i8] c"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32\00", align 1
@119 = internal constant [58 x i8] c"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32\00", align 1
@120 = internal constant [58 x i8] c"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32\00", align 1
@121 = internal constant [54 x i8] c"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8\00", align 1
@122 = internal constant [59 x i8] c"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32\00", align 1
@123 = internal constant [63 x i8] c"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32\00", align 1
@124 = internal constant [58 x i8] c"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32\00", align 1
@125 = internal constant [58 x i8] c"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32\00", align 1
@126 = internal constant [54 x i8] c"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8\00", align 1
@127 = internal constant [59 x i8] c"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32\00", align 1
@128 = internal constant [63 x i8] c"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32\00", align 1
@129 = internal constant [58 x i8] c"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32\00", align 1
@130 = internal constant [58 x i8] c"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32\00", align 1
@131 = internal constant [50 x i8] c"main_graph$async_dispatch_55_generic_14x14x512_i8\00", align 1
@132 = internal constant [41 x i8] c"main_graph$async_dispatch_56_slow_memcpy\00", align 1
@133 = internal constant [54 x i8] c"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8\00", align 1
@134 = internal constant [59 x i8] c"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32\00", align 1
@135 = internal constant [59 x i8] c"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32\00", align 1
@136 = internal constant [59 x i8] c"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32\00", align 1
@137 = internal constant [59 x i8] c"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32\00", align 1
@138 = internal constant [41 x i8] c"main_graph$async_dispatch_62_slow_memcpy\00", align 1
@139 = internal constant [54 x i8] c"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8\00", align 1
@140 = internal constant [59 x i8] c"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32\00", align 1
@141 = internal constant [59 x i8] c"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32\00", align 1
@142 = internal constant [59 x i8] c"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32\00", align 1
@143 = internal constant [54 x i8] c"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8\00", align 1
@144 = internal constant [59 x i8] c"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32\00", align 1
@145 = internal constant [59 x i8] c"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32\00", align 1
@146 = internal constant [59 x i8] c"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32\00", align 1
@147 = internal constant [54 x i8] c"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8\00", align 1
@148 = internal constant [59 x i8] c"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32\00", align 1
@149 = internal constant [59 x i8] c"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32\00", align 1
@150 = internal constant [59 x i8] c"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32\00", align 1
@151 = internal constant [54 x i8] c"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8\00", align 1
@152 = internal constant [59 x i8] c"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32\00", align 1
@153 = internal constant [59 x i8] c"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32\00", align 1
@154 = internal constant [59 x i8] c"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32\00", align 1
@155 = internal constant [54 x i8] c"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8\00", align 1
@156 = internal constant [59 x i8] c"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32\00", align 1
@157 = internal constant [59 x i8] c"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32\00", align 1
@158 = internal constant [59 x i8] c"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32\00", align 1
@159 = internal constant [49 x i8] c"main_graph$async_dispatch_87_generic_7x7x1024_i8\00", align 1
@160 = internal constant [41 x i8] c"main_graph$async_dispatch_88_slow_memcpy\00", align 1
@161 = internal constant [52 x i8] c"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8\00", align 1
@162 = internal constant [58 x i8] c"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32\00", align 1
@163 = internal constant [58 x i8] c"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32\00", align 1
@164 = internal constant [59 x i8] c"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32\00", align 1
@165 = internal constant [58 x i8] c"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32\00", align 1
@166 = internal constant [41 x i8] c"main_graph$async_dispatch_94_slow_memcpy\00", align 1
@167 = internal constant [52 x i8] c"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8\00", align 1
@168 = internal constant [58 x i8] c"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32\00", align 1
@169 = internal constant [58 x i8] c"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32\00", align 1
@170 = internal constant [58 x i8] c"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32\00", align 1
@171 = internal constant [53 x i8] c"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8\00", align 1
@172 = internal constant [59 x i8] c"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32\00", align 1
@173 = internal constant [59 x i8] c"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32\00", align 1
@174 = internal constant [58 x i8] c"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32\00", align 1
@175 = internal constant [59 x i8] c"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32\00", align 1
@176 = internal constant [54 x i8] c"main_graph$async_dispatch_105_elementwise_1000_i8xf32\00", align 1
@iree_hal_executable_library_query_v0_names = internal constant [176 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15, ptr @16, ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53, ptr @54, ptr @55, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164, ptr @165, ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174, ptr @175, ptr @176]
@177 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@178 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@179 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@180 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@181 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@182 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@183 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@184 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@185 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@186 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@187 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@188 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@189 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@190 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@191 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@192 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@193 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@194 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@195 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@196 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@197 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@198 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@199 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@200 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@201 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@202 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@203 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@204 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@205 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@206 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@207 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@208 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@209 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@210 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@211 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@212 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@213 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@214 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@215 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@216 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@217 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@218 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@219 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@220 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@221 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@222 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@223 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@224 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@225 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@226 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@227 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@228 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@229 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@230 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@231 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@232 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@233 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@234 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@235 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@236 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@237 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@238 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@239 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@240 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@241 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@242 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@243 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@244 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@245 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@246 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@247 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@248 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@249 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@250 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@251 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@252 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@253 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@254 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@255 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@256 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@257 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@258 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@259 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@260 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@261 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@262 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@263 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@264 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@265 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@266 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@267 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@268 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@269 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@270 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@271 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@272 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@273 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@274 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@275 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@276 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@277 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@278 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@279 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@280 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@281 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@282 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@283 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@284 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@285 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@286 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@287 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@288 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@289 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@290 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@291 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@292 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@293 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@294 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@295 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@296 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@297 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@298 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@299 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@300 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@301 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@302 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@303 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@304 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@305 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@306 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@307 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@308 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@309 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@310 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@311 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@312 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@313 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@314 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@315 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@316 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@317 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@318 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@319 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@320 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@321 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@322 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@323 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@324 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@325 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@326 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@327 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@328 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@329 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@330 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@331 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@332 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@333 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@334 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@335 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@336 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@337 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@338 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@339 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@340 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@341 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@342 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@343 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@344 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@345 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@346 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@347 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@348 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@349 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@350 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@351 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@352 = internal constant [62 x i8] c"/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = internal constant [176 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 691, i32 61, ptr @177 }, %iree_hal_executable_source_location_v0_t { i32 692, i32 61, ptr @178 }, %iree_hal_executable_source_location_v0_t { i32 706, i32 61, ptr @179 }, %iree_hal_executable_source_location_v0_t { i32 715, i32 61, ptr @180 }, %iree_hal_executable_source_location_v0_t { i32 727, i32 61, ptr @181 }, %iree_hal_executable_source_location_v0_t { i32 736, i32 61, ptr @182 }, %iree_hal_executable_source_location_v0_t { i32 748, i32 61, ptr @183 }, %iree_hal_executable_source_location_v0_t { i32 757, i32 61, ptr @184 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @185 }, %iree_hal_executable_source_location_v0_t { i32 772, i32 61, ptr @186 }, %iree_hal_executable_source_location_v0_t { i32 781, i32 61, ptr @187 }, %iree_hal_executable_source_location_v0_t { i32 793, i32 61, ptr @188 }, %iree_hal_executable_source_location_v0_t { i32 802, i32 61, ptr @189 }, %iree_hal_executable_source_location_v0_t { i32 814, i32 61, ptr @190 }, %iree_hal_executable_source_location_v0_t { i32 823, i32 61, ptr @191 }, %iree_hal_executable_source_location_v0_t { i32 835, i32 61, ptr @192 }, %iree_hal_executable_source_location_v0_t { i32 844, i32 61, ptr @193 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @194 }, %iree_hal_executable_source_location_v0_t { i32 859, i32 61, ptr @195 }, %iree_hal_executable_source_location_v0_t { i32 868, i32 61, ptr @196 }, %iree_hal_executable_source_location_v0_t { i32 880, i32 61, ptr @197 }, %iree_hal_executable_source_location_v0_t { i32 889, i32 61, ptr @198 }, %iree_hal_executable_source_location_v0_t { i32 901, i32 61, ptr @199 }, %iree_hal_executable_source_location_v0_t { i32 910, i32 61, ptr @200 }, %iree_hal_executable_source_location_v0_t { i32 922, i32 61, ptr @201 }, %iree_hal_executable_source_location_v0_t { i32 931, i32 61, ptr @202 }, %iree_hal_executable_source_location_v0_t { i32 943, i32 61, ptr @203 }, %iree_hal_executable_source_location_v0_t { i32 952, i32 61, ptr @204 }, %iree_hal_executable_source_location_v0_t { i32 964, i32 61, ptr @205 }, %iree_hal_executable_source_location_v0_t { i32 973, i32 61, ptr @206 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @207 }, %iree_hal_executable_source_location_v0_t { i32 988, i32 61, ptr @208 }, %iree_hal_executable_source_location_v0_t { i32 997, i32 61, ptr @209 }, %iree_hal_executable_source_location_v0_t { i32 1009, i32 61, ptr @210 }, %iree_hal_executable_source_location_v0_t { i32 1018, i32 61, ptr @211 }, %iree_hal_executable_source_location_v0_t { i32 1030, i32 61, ptr @212 }, %iree_hal_executable_source_location_v0_t { i32 1045, i32 61, ptr @213 }, %iree_hal_executable_source_location_v0_t { i32 691, i32 61, ptr @214 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @215 }, %iree_hal_executable_source_location_v0_t { i32 715, i32 61, ptr @216 }, %iree_hal_executable_source_location_v0_t { i32 721, i32 61, ptr @217 }, %iree_hal_executable_source_location_v0_t { i32 736, i32 61, ptr @218 }, %iree_hal_executable_source_location_v0_t { i32 742, i32 61, ptr @219 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @220 }, %iree_hal_executable_source_location_v0_t { i32 781, i32 61, ptr @221 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @222 }, %iree_hal_executable_source_location_v0_t { i32 802, i32 61, ptr @223 }, %iree_hal_executable_source_location_v0_t { i32 808, i32 61, ptr @224 }, %iree_hal_executable_source_location_v0_t { i32 823, i32 61, ptr @225 }, %iree_hal_executable_source_location_v0_t { i32 829, i32 61, ptr @226 }, %iree_hal_executable_source_location_v0_t { i32 844, i32 61, ptr @227 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @228 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @229 }, %iree_hal_executable_source_location_v0_t { i32 859, i32 61, ptr @230 }, %iree_hal_executable_source_location_v0_t { i32 868, i32 61, ptr @231 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @232 }, %iree_hal_executable_source_location_v0_t { i32 880, i32 61, ptr @233 }, %iree_hal_executable_source_location_v0_t { i32 889, i32 61, ptr @234 }, %iree_hal_executable_source_location_v0_t { i32 895, i32 61, ptr @235 }, %iree_hal_executable_source_location_v0_t { i32 901, i32 61, ptr @236 }, %iree_hal_executable_source_location_v0_t { i32 910, i32 61, ptr @237 }, %iree_hal_executable_source_location_v0_t { i32 916, i32 61, ptr @238 }, %iree_hal_executable_source_location_v0_t { i32 922, i32 61, ptr @239 }, %iree_hal_executable_source_location_v0_t { i32 931, i32 61, ptr @240 }, %iree_hal_executable_source_location_v0_t { i32 937, i32 61, ptr @241 }, %iree_hal_executable_source_location_v0_t { i32 943, i32 61, ptr @242 }, %iree_hal_executable_source_location_v0_t { i32 952, i32 61, ptr @243 }, %iree_hal_executable_source_location_v0_t { i32 958, i32 61, ptr @244 }, %iree_hal_executable_source_location_v0_t { i32 964, i32 61, ptr @245 }, %iree_hal_executable_source_location_v0_t { i32 973, i32 61, ptr @246 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @247 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @248 }, %iree_hal_executable_source_location_v0_t { i32 988, i32 61, ptr @249 }, %iree_hal_executable_source_location_v0_t { i32 997, i32 61, ptr @250 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @251 }, %iree_hal_executable_source_location_v0_t { i32 1009, i32 61, ptr @252 }, %iree_hal_executable_source_location_v0_t { i32 1018, i32 61, ptr @253 }, %iree_hal_executable_source_location_v0_t { i32 1024, i32 61, ptr @254 }, %iree_hal_executable_source_location_v0_t { i32 1030, i32 61, ptr @255 }, %iree_hal_executable_source_location_v0_t { i32 574, i32 61, ptr @256 }, %iree_hal_executable_source_location_v0_t { i32 682, i32 61, ptr @257 }, %iree_hal_executable_source_location_v0_t { i32 682, i32 61, ptr @258 }, %iree_hal_executable_source_location_v0_t { i32 682, i32 61, ptr @259 }, %iree_hal_executable_source_location_v0_t { i32 688, i32 61, ptr @260 }, %iree_hal_executable_source_location_v0_t { i32 688, i32 61, ptr @261 }, %iree_hal_executable_source_location_v0_t { i32 691, i32 61, ptr @262 }, %iree_hal_executable_source_location_v0_t { i32 692, i32 61, ptr @263 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @264 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @265 }, %iree_hal_executable_source_location_v0_t { i32 700, i32 61, ptr @266 }, %iree_hal_executable_source_location_v0_t { i32 706, i32 61, ptr @267 }, %iree_hal_executable_source_location_v0_t { i32 706, i32 61, ptr @268 }, %iree_hal_executable_source_location_v0_t { i32 692, i32 61, ptr @269 }, %iree_hal_executable_source_location_v0_t { i32 715, i32 61, ptr @270 }, %iree_hal_executable_source_location_v0_t { i32 721, i32 61, ptr @271 }, %iree_hal_executable_source_location_v0_t { i32 721, i32 61, ptr @272 }, %iree_hal_executable_source_location_v0_t { i32 727, i32 61, ptr @273 }, %iree_hal_executable_source_location_v0_t { i32 727, i32 61, ptr @274 }, %iree_hal_executable_source_location_v0_t { i32 736, i32 61, ptr @275 }, %iree_hal_executable_source_location_v0_t { i32 742, i32 61, ptr @276 }, %iree_hal_executable_source_location_v0_t { i32 742, i32 61, ptr @277 }, %iree_hal_executable_source_location_v0_t { i32 748, i32 61, ptr @278 }, %iree_hal_executable_source_location_v0_t { i32 748, i32 61, ptr @279 }, %iree_hal_executable_source_location_v0_t { i32 757, i32 61, ptr @280 }, %iree_hal_executable_source_location_v0_t { i32 757, i32 61, ptr @281 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @282 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @283 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @284 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @285 }, %iree_hal_executable_source_location_v0_t { i32 766, i32 61, ptr @286 }, %iree_hal_executable_source_location_v0_t { i32 772, i32 61, ptr @287 }, %iree_hal_executable_source_location_v0_t { i32 772, i32 61, ptr @288 }, %iree_hal_executable_source_location_v0_t { i32 758, i32 61, ptr @289 }, %iree_hal_executable_source_location_v0_t { i32 781, i32 61, ptr @290 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @291 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @292 }, %iree_hal_executable_source_location_v0_t { i32 787, i32 61, ptr @293 }, %iree_hal_executable_source_location_v0_t { i32 793, i32 61, ptr @294 }, %iree_hal_executable_source_location_v0_t { i32 793, i32 61, ptr @295 }, %iree_hal_executable_source_location_v0_t { i32 802, i32 61, ptr @296 }, %iree_hal_executable_source_location_v0_t { i32 808, i32 61, ptr @297 }, %iree_hal_executable_source_location_v0_t { i32 808, i32 61, ptr @298 }, %iree_hal_executable_source_location_v0_t { i32 814, i32 61, ptr @299 }, %iree_hal_executable_source_location_v0_t { i32 814, i32 61, ptr @300 }, %iree_hal_executable_source_location_v0_t { i32 823, i32 61, ptr @301 }, %iree_hal_executable_source_location_v0_t { i32 829, i32 61, ptr @302 }, %iree_hal_executable_source_location_v0_t { i32 829, i32 61, ptr @303 }, %iree_hal_executable_source_location_v0_t { i32 835, i32 61, ptr @304 }, %iree_hal_executable_source_location_v0_t { i32 835, i32 61, ptr @305 }, %iree_hal_executable_source_location_v0_t { i32 844, i32 61, ptr @306 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @307 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @308 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @309 }, %iree_hal_executable_source_location_v0_t { i32 853, i32 61, ptr @310 }, %iree_hal_executable_source_location_v0_t { i32 859, i32 61, ptr @311 }, %iree_hal_executable_source_location_v0_t { i32 845, i32 61, ptr @312 }, %iree_hal_executable_source_location_v0_t { i32 868, i32 61, ptr @313 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @314 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @315 }, %iree_hal_executable_source_location_v0_t { i32 874, i32 61, ptr @316 }, %iree_hal_executable_source_location_v0_t { i32 880, i32 61, ptr @317 }, %iree_hal_executable_source_location_v0_t { i32 889, i32 61, ptr @318 }, %iree_hal_executable_source_location_v0_t { i32 895, i32 61, ptr @319 }, %iree_hal_executable_source_location_v0_t { i32 895, i32 61, ptr @320 }, %iree_hal_executable_source_location_v0_t { i32 901, i32 61, ptr @321 }, %iree_hal_executable_source_location_v0_t { i32 910, i32 61, ptr @322 }, %iree_hal_executable_source_location_v0_t { i32 916, i32 61, ptr @323 }, %iree_hal_executable_source_location_v0_t { i32 916, i32 61, ptr @324 }, %iree_hal_executable_source_location_v0_t { i32 922, i32 61, ptr @325 }, %iree_hal_executable_source_location_v0_t { i32 931, i32 61, ptr @326 }, %iree_hal_executable_source_location_v0_t { i32 937, i32 61, ptr @327 }, %iree_hal_executable_source_location_v0_t { i32 937, i32 61, ptr @328 }, %iree_hal_executable_source_location_v0_t { i32 943, i32 61, ptr @329 }, %iree_hal_executable_source_location_v0_t { i32 952, i32 61, ptr @330 }, %iree_hal_executable_source_location_v0_t { i32 958, i32 61, ptr @331 }, %iree_hal_executable_source_location_v0_t { i32 958, i32 61, ptr @332 }, %iree_hal_executable_source_location_v0_t { i32 964, i32 61, ptr @333 }, %iree_hal_executable_source_location_v0_t { i32 973, i32 61, ptr @334 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @335 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @336 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @337 }, %iree_hal_executable_source_location_v0_t { i32 982, i32 61, ptr @338 }, %iree_hal_executable_source_location_v0_t { i32 988, i32 61, ptr @339 }, %iree_hal_executable_source_location_v0_t { i32 974, i32 61, ptr @340 }, %iree_hal_executable_source_location_v0_t { i32 997, i32 61, ptr @341 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @342 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @343 }, %iree_hal_executable_source_location_v0_t { i32 1003, i32 61, ptr @344 }, %iree_hal_executable_source_location_v0_t { i32 1009, i32 61, ptr @345 }, %iree_hal_executable_source_location_v0_t { i32 1018, i32 61, ptr @346 }, %iree_hal_executable_source_location_v0_t { i32 1024, i32 61, ptr @347 }, %iree_hal_executable_source_location_v0_t { i32 1024, i32 61, ptr @348 }, %iree_hal_executable_source_location_v0_t { i32 1030, i32 61, ptr @349 }, %iree_hal_executable_source_location_v0_t { i32 1039, i32 61, ptr @350 }, %iree_hal_executable_source_location_v0_t { i32 1045, i32 61, ptr @351 }, %iree_hal_executable_source_location_v0_t { i32 1047, i32 61, ptr @352 }]
@iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names = internal constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names" = internal constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations" = internal constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = internal constant [176 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_0_dispatch_0_transpose_64x64_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_1_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_2_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_3_dispatch_0_transpose_256x64_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_4_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_5_dispatch_0_transpose_256x64_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_6_dispatch_0_transpose_64x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_7_dispatch_0_transpose_256x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_8_dispatch_0_transpose_256x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_9_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_10_dispatch_0_transpose_512x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_11_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_12_dispatch_0_transpose_512x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_13_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_14_dispatch_0_transpose_512x128_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_15_dispatch_0_transpose_128x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_16_dispatch_0_transpose_512x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_17_dispatch_0_transpose_512x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_18_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_19_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_20_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_21_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_22_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_23_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_24_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_25_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_26_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_27_dispatch_0_transpose_1024x256_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_28_dispatch_0_transpose_256x1024_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_29_dispatch_0_transpose_1024x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_30_dispatch_0_transpose_1024x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_31_dispatch_0_transpose_512x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_32_dispatch_0_transpose_2048x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_33_dispatch_0_transpose_512x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_34_dispatch_0_transpose_2048x512_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_35_dispatch_0_transpose_512x2048_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_36_dispatch_0_transpose_2048x1000_i8_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_43_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_44_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_45_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_46_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_47_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_48_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_49_dispatch_0_elementwise_broadcast_784x128_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_50_dispatch_0_elementwise_broadcast_784x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_52_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_54_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_55_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_57_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_58_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_60_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_61_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_63_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_64_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_66_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_67_dispatch_0_elementwise_broadcast_196x256_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_69_dispatch_0_elementwise_broadcast_196x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_71_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_73_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_74_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_76_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_77_dispatch_0_elementwise_broadcast_49x512_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_names, ptr @iree_hal_executable_library_query_v0__initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_generic_112x112x7x7x3_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_4_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_5_conv_64x56x56x3x3_f32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_8_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_9_generic_56x56x3x3x64_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_16_generic_56x56x3x3x64_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_22_generic_56x56x3x3x64_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_29_generic_28x28x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_30_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_31_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_37_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_38_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_44_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_50_generic_28x28x3x3x128_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_55_generic_14x14x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_56_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_57_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_62_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_63_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_68_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_73_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_78_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_83_generic_14x14x3x3x256_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_87_generic_7x7x1024_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_88_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_89_generic_7x7x3x3x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_94_slow_memcpy_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_95_generic_7x7x3x3x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_100_generic_7x7x3x3x512_i8_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32_stage_source_locations" }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_names", ptr @"iree_hal_executable_library_query_v0_main_graph$async_dispatch_105_elementwise_1000_i8xf32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = internal constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 176, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }
@__exp2f_data = internal local_unnamed_addr constant %struct.exp2f_data { [32 x i64] [i64 4607182418800017408, i64 4607140297302181236, i64 4607100335213349135, i64 4607062579818421073, i64 4607027079437701499, i64 4606993883449571754, i64 4606963042313658936, i64 4606934607594512097, i64 4606908631985796885, i64 4606885169335019979, i64 4606864274668794914, i64 4606846004218661165, i64 4606830415447468583, i64 4606817567076339586, i64 4606807519112221737, i64 4606800332876043653, i64 4606796071031487437, i64 4606794797614391156, i64 4606796578062795143, i64 4606801479247646227, i64 4606809569504174299, i64 4606820918663955941, i64 4606835598087680144, i64 4606853680698631517, i64 4606875241016906669, i64 4606900355194379847, i64 4606929101050434204, i64 4606961558108475497, i64 4606997807633245319, i64 4607037932668951391, i64 4607082018078232794, i64 4607130150581978432], double 0x42E8000000000000, [3 x double] [double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3, double 0x3FE62E42FF0C52D6], double 0x4338000000000000, double 0x40471547652B82FE, [3 x double] [double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3, double 0x3F962E42FF0C52D6] }, align 8
@__powf_log2_data = internal local_unnamed_addr constant %struct.powf_log2_data { [16 x %struct.anon] [%struct.anon { double 0x3FF661EC79F8F3BE, double 0xBFDEFEC65B963019 }, %struct.anon { double 0x3FF571ED4AAF883D, double 0xBFDB0B6832D4FCA4 }, %struct.anon { double 0x3FF49539F0F010B0, double 0xBFD7418B0A1FB77B }, %struct.anon { double 0x3FF3C995B0B80385, double 0xBFD39DE91A6DCF7B }, %struct.anon { double 0x3FF30D190C8864A5, double 0xBFD01D9BF3F2B631 }, %struct.anon { double 0x3FF25E227B0B8EA0, double 0xBFC97C1D1B3B7AF0 }, %struct.anon { double 0x3FF1BB4A4A1A343F, double 0xBFC2F9E393AF3C9F }, %struct.anon { double 0x3FF12358F08AE5BA, double 0xBFB960CBBF788D5C }, %struct.anon { double 0x3FF0953F419900A7, double 0xBFAA6F9DB6475FCE }, %struct.anon { double 1.000000e+00, double 0.000000e+00 }, %struct.anon { double 0x3FEE608CFD9A47AC, double 0x3FB338CA9F24F53D }, %struct.anon { double 0x3FECA4B31F026AA0, double 0x3FC476A9543891BA }, %struct.anon { double 0x3FEB2036576AFCE6, double 0x3FCE840B4AC4E4D2 }, %struct.anon { double 0x3FE9C2D163A1AA2D, double 0x3FD40645F0C6651C }, %struct.anon { double 0x3FE886E6037841ED, double 0x3FD88E9C2C1B9FF8 }, %struct.anon { double 0x3FE767DCF5534862, double 0x3FDCE0A44EB17BCC }], [5 x double] [double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8, double 0x3FF71547652AB82B] }, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_0_dispatch_0_transpose_64x64_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !183 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !259
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !259
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !259
  %5 = getelementptr i8, ptr %4, i64 91136, !dbg !259
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !259
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !259
  %7 = load ptr, ptr %6, align 8, !dbg !259
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !259
  %8 = load i32, ptr %2, align 16, !dbg !259
  %9 = zext i32 %8 to i64, !dbg !259
  %10 = shl nuw nsw i64 %9, 1, !dbg !259
  br label %.preheader, !dbg !259

.preheader:                                       ; preds = %3, %21
  %exitcond23.not = phi i1 [ false, %3 ], [ true, %21 ]
  %11 = phi i64 [ 0, %3 ], [ 1, %21 ]
  %12 = or disjoint i64 %11, %10
  %invariant.gep = getelementptr i8, ptr %5, i64 %12, !dbg !259
  %13 = shl nuw nsw i64 %12, 6
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 %13
  br label %15, !dbg !259

15:                                               ; preds = %.preheader, %15
  %16 = phi i64 [ 0, %.preheader ], [ %20, %15 ]
  %17 = shl nuw nsw i64 %16, 6, !dbg !259
  %gep = getelementptr i8, ptr %invariant.gep, i64 %17, !dbg !259
  %18 = load i8, ptr %gep, align 1, !dbg !259
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 %16, !dbg !259
  store i8 %18, ptr %19, align 1, !dbg !259
  %20 = add nuw nsw i64 %16, 1, !dbg !259
  %exitcond.not = icmp eq i64 %20, 64, !dbg !259
  br i1 %exitcond.not, label %21, label %15, !dbg !259

21:                                               ; preds = %15
  br i1 %exitcond23.not, label %22, label %.preheader, !dbg !259

22:                                               ; preds = %21
  ret i32 0, !dbg !259
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_1_dispatch_0_transpose_64x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !260 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !261
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !261
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !261
  %5 = getelementptr i8, ptr %4, i64 95232, !dbg !261
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !261
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !261
  %7 = load ptr, ptr %6, align 8, !dbg !261
  %8 = getelementptr i8, ptr %7, i64 4096, !dbg !261
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !261
  %9 = load i32, ptr %2, align 16, !dbg !261
  %10 = zext i32 %9 to i64, !dbg !261
  %11 = shl nuw nsw i64 %10, 1, !dbg !261
  %12 = and i64 %11, 8589934584, !dbg !261
  %13 = shl nuw nsw i64 %10, 6, !dbg !261
  %14 = and i64 %13, 192, !dbg !261
  br label %.preheader, !dbg !261

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !261
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !261

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !261
  %22 = shl nuw nsw i64 %21, 6, !dbg !261
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !261
  %23 = load i8, ptr %gep, align 1, !dbg !261
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !261
  store i8 %23, ptr %24, align 1, !dbg !261
  %25 = add nuw nsw i64 %20, 1, !dbg !261
  %exitcond.not = icmp eq i64 %25, 64, !dbg !261
  br i1 %exitcond.not, label %26, label %19, !dbg !261

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !261
  %exitcond23.not = icmp eq i64 %27, 8, !dbg !261
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !261

28:                                               ; preds = %26
  ret i32 0, !dbg !261
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_2_dispatch_0_transpose_64x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !262 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !263
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !263
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !263
  %5 = getelementptr i8, ptr %4, i64 111616, !dbg !263
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !263
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !263
  %7 = load ptr, ptr %6, align 8, !dbg !263
  %8 = getelementptr i8, ptr %7, i64 20480, !dbg !263
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !263
  %9 = load i32, ptr %2, align 16, !dbg !263
  %10 = zext i32 %9 to i64, !dbg !263
  %11 = shl nuw nsw i64 %10, 1, !dbg !263
  %12 = and i64 %11, 8589934584, !dbg !263
  %13 = shl nuw nsw i64 %10, 6, !dbg !263
  %14 = and i64 %13, 192, !dbg !263
  br label %.preheader, !dbg !263

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !263
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !263

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !263
  %22 = shl nuw nsw i64 %21, 6, !dbg !263
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !263
  %23 = load i8, ptr %gep, align 1, !dbg !263
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !263
  store i8 %23, ptr %24, align 1, !dbg !263
  %25 = add nuw nsw i64 %20, 1, !dbg !263
  %exitcond.not = icmp eq i64 %25, 64, !dbg !263
  br i1 %exitcond.not, label %26, label %19, !dbg !263

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !263
  %exitcond23.not = icmp eq i64 %27, 8, !dbg !263
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !263

28:                                               ; preds = %26
  ret i32 0, !dbg !263
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_3_dispatch_0_transpose_256x64_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !264 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !265
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !265
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !265
  %5 = getelementptr i8, ptr %4, i64 128000, !dbg !265
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !265
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !265
  %7 = load ptr, ptr %6, align 8, !dbg !265
  %8 = getelementptr i8, ptr %7, i64 36864, !dbg !265
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !265
  %9 = load i32, ptr %2, align 16, !dbg !265
  %10 = zext i32 %9 to i64, !dbg !265
  %11 = shl nuw nsw i64 %10, 3, !dbg !265
  br label %.preheader, !dbg !265

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %13 = add nuw nsw i64 %12, %11
  %invariant.gep = getelementptr i8, ptr %5, i64 %13, !dbg !265
  %14 = shl nuw nsw i64 %13, 6
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 %14
  br label %16, !dbg !265

16:                                               ; preds = %.preheader, %16
  %17 = phi i64 [ 0, %.preheader ], [ %21, %16 ]
  %18 = shl nuw nsw i64 %17, 8, !dbg !265
  %gep = getelementptr i8, ptr %invariant.gep, i64 %18, !dbg !265
  %19 = load i8, ptr %gep, align 1, !dbg !265
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 %17, !dbg !265
  store i8 %19, ptr %20, align 1, !dbg !265
  %21 = add nuw nsw i64 %17, 1, !dbg !265
  %exitcond.not = icmp eq i64 %21, 64, !dbg !265
  br i1 %exitcond.not, label %22, label %16, !dbg !265

22:                                               ; preds = %16
  %23 = add nuw nsw i64 %12, 1, !dbg !265
  %exitcond23.not = icmp eq i64 %23, 8, !dbg !265
  br i1 %exitcond23.not, label %24, label %.preheader, !dbg !265

24:                                               ; preds = %22
  ret i32 0, !dbg !265
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_4_dispatch_0_transpose_64x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !266 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !267
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !267
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !267
  %5 = getelementptr i8, ptr %4, i64 144384, !dbg !267
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !267
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !267
  %7 = load ptr, ptr %6, align 8, !dbg !267
  %8 = getelementptr i8, ptr %7, i64 53248, !dbg !267
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !267
  %9 = load i32, ptr %2, align 16, !dbg !267
  %10 = zext i32 %9 to i64, !dbg !267
  %11 = shl nuw nsw i64 %10, 1, !dbg !267
  %12 = and i64 %11, 8589934584, !dbg !267
  %13 = shl nuw nsw i64 %10, 6, !dbg !267
  %14 = and i64 %13, 192, !dbg !267
  br label %.preheader, !dbg !267

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !267
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !267

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !267
  %22 = shl nuw nsw i64 %21, 6, !dbg !267
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !267
  %23 = load i8, ptr %gep, align 1, !dbg !267
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !267
  store i8 %23, ptr %24, align 1, !dbg !267
  %25 = add nuw nsw i64 %20, 1, !dbg !267
  %exitcond.not = icmp eq i64 %25, 64, !dbg !267
  br i1 %exitcond.not, label %26, label %19, !dbg !267

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !267
  %exitcond23.not = icmp eq i64 %27, 8, !dbg !267
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !267

28:                                               ; preds = %26
  ret i32 0, !dbg !267
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_5_dispatch_0_transpose_256x64_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !268 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !269
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !269
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !269
  %5 = getelementptr i8, ptr %4, i64 160768, !dbg !269
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !269
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !269
  %7 = load ptr, ptr %6, align 8, !dbg !269
  %8 = getelementptr i8, ptr %7, i64 69632, !dbg !269
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !269
  %9 = load i32, ptr %2, align 16, !dbg !269
  %10 = zext i32 %9 to i64, !dbg !269
  %11 = shl nuw nsw i64 %10, 3, !dbg !269
  br label %.preheader, !dbg !269

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %13 = add nuw nsw i64 %12, %11
  %invariant.gep = getelementptr i8, ptr %5, i64 %13, !dbg !269
  %14 = shl nuw nsw i64 %13, 6
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 %14
  br label %16, !dbg !269

16:                                               ; preds = %.preheader, %16
  %17 = phi i64 [ 0, %.preheader ], [ %21, %16 ]
  %18 = shl nuw nsw i64 %17, 8, !dbg !269
  %gep = getelementptr i8, ptr %invariant.gep, i64 %18, !dbg !269
  %19 = load i8, ptr %gep, align 1, !dbg !269
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 %17, !dbg !269
  store i8 %19, ptr %20, align 1, !dbg !269
  %21 = add nuw nsw i64 %17, 1, !dbg !269
  %exitcond.not = icmp eq i64 %21, 64, !dbg !269
  br i1 %exitcond.not, label %22, label %16, !dbg !269

22:                                               ; preds = %16
  %23 = add nuw nsw i64 %12, 1, !dbg !269
  %exitcond23.not = icmp eq i64 %23, 8, !dbg !269
  br i1 %exitcond23.not, label %24, label %.preheader, !dbg !269

24:                                               ; preds = %22
  ret i32 0, !dbg !269
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_6_dispatch_0_transpose_64x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !270 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !271
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !271
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !271
  %5 = getelementptr i8, ptr %4, i64 177152, !dbg !271
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !271
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !271
  %7 = load ptr, ptr %6, align 8, !dbg !271
  %8 = getelementptr i8, ptr %7, i64 86016, !dbg !271
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !271
  %9 = load i32, ptr %2, align 16, !dbg !271
  %10 = zext i32 %9 to i64, !dbg !271
  %11 = shl nuw nsw i64 %10, 1, !dbg !271
  %12 = and i64 %11, 8589934584, !dbg !271
  %13 = shl nuw nsw i64 %10, 6, !dbg !271
  %14 = and i64 %13, 192, !dbg !271
  br label %.preheader, !dbg !271

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !271
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !271

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !271
  %22 = shl nuw nsw i64 %21, 6, !dbg !271
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !271
  %23 = load i8, ptr %gep, align 1, !dbg !271
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !271
  store i8 %23, ptr %24, align 1, !dbg !271
  %25 = add nuw nsw i64 %20, 1, !dbg !271
  %exitcond.not = icmp eq i64 %25, 64, !dbg !271
  br i1 %exitcond.not, label %26, label %19, !dbg !271

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !271
  %exitcond23.not = icmp eq i64 %27, 8, !dbg !271
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !271

28:                                               ; preds = %26
  ret i32 0, !dbg !271
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_7_dispatch_0_transpose_256x128_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !272 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !273
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !273
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !273
  %5 = getelementptr i8, ptr %4, i64 193536, !dbg !273
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !273
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !273
  %7 = load ptr, ptr %6, align 8, !dbg !273
  %8 = getelementptr i8, ptr %7, i64 102400, !dbg !273
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !273
  %9 = load i32, ptr %2, align 16, !dbg !273
  %10 = zext i32 %9 to i64, !dbg !273
  %11 = shl nuw nsw i64 %10, 3, !dbg !273
  %12 = and i64 %11, 34359738352, !dbg !273
  %13 = shl nuw nsw i64 %10, 6, !dbg !273
  %14 = and i64 %13, 64, !dbg !273
  br label %.preheader, !dbg !273

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !273
  %17 = shl nuw nsw i64 %16, 7
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !273

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !273
  %22 = shl nuw nsw i64 %21, 8, !dbg !273
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !273
  %23 = load i8, ptr %gep, align 1, !dbg !273
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !273
  store i8 %23, ptr %24, align 1, !dbg !273
  %25 = add nuw nsw i64 %20, 1, !dbg !273
  %exitcond.not = icmp eq i64 %25, 64, !dbg !273
  br i1 %exitcond.not, label %26, label %19, !dbg !273

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !273
  %exitcond23.not = icmp eq i64 %27, 16, !dbg !273
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !273

28:                                               ; preds = %26
  ret i32 0, !dbg !273
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_8_dispatch_0_transpose_256x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !274 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !275
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !275
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !275
  %5 = getelementptr i8, ptr %4, i64 226304, !dbg !275
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !275
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !275
  %7 = load ptr, ptr %6, align 8, !dbg !275
  %8 = getelementptr i8, ptr %7, i64 135168, !dbg !275
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !275
  %9 = load i32, ptr %2, align 16, !dbg !275
  %10 = zext i32 %9 to i64, !dbg !275
  %11 = shl nuw nsw i64 %10, 3, !dbg !275
  %12 = and i64 %11, 34359738304, !dbg !275
  %13 = shl nuw nsw i64 %10, 6, !dbg !275
  %14 = and i64 %13, 448, !dbg !275
  br label %.preheader, !dbg !275

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !275
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !275

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !275
  %22 = shl nuw nsw i64 %21, 8, !dbg !275
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !275
  %23 = load i8, ptr %gep, align 1, !dbg !275
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !275
  store i8 %23, ptr %24, align 1, !dbg !275
  %25 = add nuw nsw i64 %20, 1, !dbg !275
  %exitcond.not = icmp eq i64 %25, 64, !dbg !275
  br i1 %exitcond.not, label %26, label %19, !dbg !275

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !275
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !275
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !275

28:                                               ; preds = %26
  ret i32 0, !dbg !275
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_9_dispatch_0_transpose_128x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !276 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !277
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !277
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !277
  %5 = getelementptr i8, ptr %4, i64 357376, !dbg !277
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !277
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !277
  %7 = load ptr, ptr %6, align 8, !dbg !277
  %8 = getelementptr i8, ptr %7, i64 266240, !dbg !277
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !277
  %9 = load i32, ptr %2, align 16, !dbg !277
  %10 = zext i32 %9 to i64, !dbg !277
  %11 = shl nuw nsw i64 %10, 2, !dbg !277
  %12 = and i64 %11, 17179869152, !dbg !277
  %13 = shl nuw nsw i64 %10, 6, !dbg !277
  %14 = and i64 %13, 448, !dbg !277
  br label %.preheader, !dbg !277

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !277
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !277

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !277
  %22 = shl nuw nsw i64 %21, 7, !dbg !277
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !277
  %23 = load i8, ptr %gep, align 1, !dbg !277
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !277
  store i8 %23, ptr %24, align 1, !dbg !277
  %25 = add nuw nsw i64 %20, 1, !dbg !277
  %exitcond.not = icmp eq i64 %25, 64, !dbg !277
  br i1 %exitcond.not, label %26, label %19, !dbg !277

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !277
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !277
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !277

28:                                               ; preds = %26
  ret i32 0, !dbg !277
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_10_dispatch_0_transpose_512x128_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !278 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !279
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !279
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !279
  %5 = getelementptr i8, ptr %4, i64 422912, !dbg !279
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !279
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !279
  %7 = load ptr, ptr %6, align 8, !dbg !279
  %8 = getelementptr i8, ptr %7, i64 331776, !dbg !279
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !279
  %9 = load i32, ptr %2, align 16, !dbg !279
  %10 = zext i32 %9 to i64, !dbg !279
  %11 = shl nuw nsw i64 %10, 4, !dbg !279
  %12 = and i64 %11, 68719476704, !dbg !279
  %13 = shl nuw nsw i64 %10, 6, !dbg !279
  %14 = and i64 %13, 64, !dbg !279
  br label %.preheader, !dbg !279

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !279
  %17 = shl nuw nsw i64 %16, 7
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !279

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !279
  %22 = shl nuw nsw i64 %21, 9, !dbg !279
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !279
  %23 = load i8, ptr %gep, align 1, !dbg !279
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !279
  store i8 %23, ptr %24, align 1, !dbg !279
  %25 = add nuw nsw i64 %20, 1, !dbg !279
  %exitcond.not = icmp eq i64 %25, 64, !dbg !279
  br i1 %exitcond.not, label %26, label %19, !dbg !279

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !279
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !279
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !279

28:                                               ; preds = %26
  ret i32 0, !dbg !279
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_11_dispatch_0_transpose_128x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !280 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !281
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !281
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !281
  %5 = getelementptr i8, ptr %4, i64 488448, !dbg !281
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !281
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !281
  %7 = load ptr, ptr %6, align 8, !dbg !281
  %8 = getelementptr i8, ptr %7, i64 397312, !dbg !281
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !281
  %9 = load i32, ptr %2, align 16, !dbg !281
  %10 = zext i32 %9 to i64, !dbg !281
  %11 = shl nuw nsw i64 %10, 2, !dbg !281
  %12 = and i64 %11, 17179869152, !dbg !281
  %13 = shl nuw nsw i64 %10, 6, !dbg !281
  %14 = and i64 %13, 448, !dbg !281
  br label %.preheader, !dbg !281

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !281
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !281

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !281
  %22 = shl nuw nsw i64 %21, 7, !dbg !281
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !281
  %23 = load i8, ptr %gep, align 1, !dbg !281
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !281
  store i8 %23, ptr %24, align 1, !dbg !281
  %25 = add nuw nsw i64 %20, 1, !dbg !281
  %exitcond.not = icmp eq i64 %25, 64, !dbg !281
  br i1 %exitcond.not, label %26, label %19, !dbg !281

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !281
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !281
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !281

28:                                               ; preds = %26
  ret i32 0, !dbg !281
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_12_dispatch_0_transpose_512x128_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !282 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !283
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !283
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !283
  %5 = getelementptr i8, ptr %4, i64 553984, !dbg !283
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !283
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !283
  %7 = load ptr, ptr %6, align 8, !dbg !283
  %8 = getelementptr i8, ptr %7, i64 462848, !dbg !283
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !283
  %9 = load i32, ptr %2, align 16, !dbg !283
  %10 = zext i32 %9 to i64, !dbg !283
  %11 = shl nuw nsw i64 %10, 4, !dbg !283
  %12 = and i64 %11, 68719476704, !dbg !283
  %13 = shl nuw nsw i64 %10, 6, !dbg !283
  %14 = and i64 %13, 64, !dbg !283
  br label %.preheader, !dbg !283

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !283
  %17 = shl nuw nsw i64 %16, 7
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !283

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !283
  %22 = shl nuw nsw i64 %21, 9, !dbg !283
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !283
  %23 = load i8, ptr %gep, align 1, !dbg !283
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !283
  store i8 %23, ptr %24, align 1, !dbg !283
  %25 = add nuw nsw i64 %20, 1, !dbg !283
  %exitcond.not = icmp eq i64 %25, 64, !dbg !283
  br i1 %exitcond.not, label %26, label %19, !dbg !283

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !283
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !283
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !283

28:                                               ; preds = %26
  ret i32 0, !dbg !283
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_13_dispatch_0_transpose_128x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !284 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !285
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !285
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !285
  %5 = getelementptr i8, ptr %4, i64 619520, !dbg !285
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !285
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !285
  %7 = load ptr, ptr %6, align 8, !dbg !285
  %8 = getelementptr i8, ptr %7, i64 528384, !dbg !285
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !285
  %9 = load i32, ptr %2, align 16, !dbg !285
  %10 = zext i32 %9 to i64, !dbg !285
  %11 = shl nuw nsw i64 %10, 2, !dbg !285
  %12 = and i64 %11, 17179869152, !dbg !285
  %13 = shl nuw nsw i64 %10, 6, !dbg !285
  %14 = and i64 %13, 448, !dbg !285
  br label %.preheader, !dbg !285

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !285
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !285

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !285
  %22 = shl nuw nsw i64 %21, 7, !dbg !285
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !285
  %23 = load i8, ptr %gep, align 1, !dbg !285
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !285
  store i8 %23, ptr %24, align 1, !dbg !285
  %25 = add nuw nsw i64 %20, 1, !dbg !285
  %exitcond.not = icmp eq i64 %25, 64, !dbg !285
  br i1 %exitcond.not, label %26, label %19, !dbg !285

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !285
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !285
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !285

28:                                               ; preds = %26
  ret i32 0, !dbg !285
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_14_dispatch_0_transpose_512x128_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !286 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !287
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !287
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !287
  %5 = getelementptr i8, ptr %4, i64 685056, !dbg !287
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !287
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !287
  %7 = load ptr, ptr %6, align 8, !dbg !287
  %8 = getelementptr i8, ptr %7, i64 593920, !dbg !287
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !287
  %9 = load i32, ptr %2, align 16, !dbg !287
  %10 = zext i32 %9 to i64, !dbg !287
  %11 = shl nuw nsw i64 %10, 4, !dbg !287
  %12 = and i64 %11, 68719476704, !dbg !287
  %13 = shl nuw nsw i64 %10, 6, !dbg !287
  %14 = and i64 %13, 64, !dbg !287
  br label %.preheader, !dbg !287

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !287
  %17 = shl nuw nsw i64 %16, 7
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !287

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !287
  %22 = shl nuw nsw i64 %21, 9, !dbg !287
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !287
  %23 = load i8, ptr %gep, align 1, !dbg !287
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !287
  store i8 %23, ptr %24, align 1, !dbg !287
  %25 = add nuw nsw i64 %20, 1, !dbg !287
  %exitcond.not = icmp eq i64 %25, 64, !dbg !287
  br i1 %exitcond.not, label %26, label %19, !dbg !287

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !287
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !287
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !287

28:                                               ; preds = %26
  ret i32 0, !dbg !287
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_15_dispatch_0_transpose_128x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !288 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !289
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !289
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !289
  %5 = getelementptr i8, ptr %4, i64 750592, !dbg !289
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !289
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !289
  %7 = load ptr, ptr %6, align 8, !dbg !289
  %8 = getelementptr i8, ptr %7, i64 659456, !dbg !289
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !289
  %9 = load i32, ptr %2, align 16, !dbg !289
  %10 = zext i32 %9 to i64, !dbg !289
  %11 = shl nuw nsw i64 %10, 2, !dbg !289
  %12 = and i64 %11, 17179869152, !dbg !289
  %13 = shl nuw nsw i64 %10, 6, !dbg !289
  %14 = and i64 %13, 448, !dbg !289
  br label %.preheader, !dbg !289

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !289
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !289

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !289
  %22 = shl nuw nsw i64 %21, 7, !dbg !289
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !289
  %23 = load i8, ptr %gep, align 1, !dbg !289
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !289
  store i8 %23, ptr %24, align 1, !dbg !289
  %25 = add nuw nsw i64 %20, 1, !dbg !289
  %exitcond.not = icmp eq i64 %25, 64, !dbg !289
  br i1 %exitcond.not, label %26, label %19, !dbg !289

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !289
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !289
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !289

28:                                               ; preds = %26
  ret i32 0, !dbg !289
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_16_dispatch_0_transpose_512x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !290 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !291
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !291
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !291
  %5 = getelementptr i8, ptr %4, i64 816128, !dbg !291
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !291
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !291
  %7 = load ptr, ptr %6, align 8, !dbg !291
  %8 = getelementptr i8, ptr %7, i64 724992, !dbg !291
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !291
  %9 = load i32, ptr %2, align 16, !dbg !291
  %10 = zext i32 %9 to i64, !dbg !291
  %11 = shl nuw nsw i64 %10, 4, !dbg !291
  %12 = and i64 %11, 68719476672, !dbg !291
  %13 = shl nuw nsw i64 %10, 6, !dbg !291
  %14 = and i64 %13, 192, !dbg !291
  br label %.preheader, !dbg !291

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !291
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !291

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !291
  %22 = shl nuw nsw i64 %21, 9, !dbg !291
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !291
  %23 = load i8, ptr %gep, align 1, !dbg !291
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !291
  store i8 %23, ptr %24, align 1, !dbg !291
  %25 = add nuw nsw i64 %20, 1, !dbg !291
  %exitcond.not = icmp eq i64 %25, 64, !dbg !291
  br i1 %exitcond.not, label %26, label %19, !dbg !291

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !291
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !291
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !291

28:                                               ; preds = %26
  ret i32 0, !dbg !291
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_17_dispatch_0_transpose_512x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !292 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !293
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !293
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !293
  %5 = getelementptr i8, ptr %4, i64 947200, !dbg !293
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !293
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !293
  %7 = load ptr, ptr %6, align 8, !dbg !293
  %8 = getelementptr i8, ptr %7, i64 856064, !dbg !293
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !293
  %9 = load i32, ptr %2, align 16, !dbg !293
  %10 = zext i32 %9 to i64, !dbg !293
  %11 = shl nuw nsw i64 %10, 2, !dbg !293
  %12 = and i64 %11, 17179869120, !dbg !293
  %13 = shl nuw nsw i64 %10, 6, !dbg !293
  %14 = and i64 %13, 960, !dbg !293
  br label %.preheader, !dbg !293

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !293
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !293

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !293
  %22 = shl nuw nsw i64 %21, 9, !dbg !293
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !293
  %23 = load i8, ptr %gep, align 1, !dbg !293
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !293
  store i8 %23, ptr %24, align 1, !dbg !293
  %25 = add nuw nsw i64 %20, 1, !dbg !293
  %exitcond.not = icmp eq i64 %25, 64, !dbg !293
  br i1 %exitcond.not, label %26, label %19, !dbg !293

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !293
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !293
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !293

28:                                               ; preds = %26
  ret i32 0, !dbg !293
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_18_dispatch_0_transpose_256x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !294 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !295
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !295
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !295
  %5 = getelementptr i8, ptr %4, i64 1471488, !dbg !295
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !295
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !295
  %7 = load ptr, ptr %6, align 8, !dbg !295
  %8 = getelementptr i8, ptr %7, i64 1380352, !dbg !295
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !295
  %9 = load i32, ptr %2, align 16, !dbg !295
  %10 = zext i32 %9 to i64, !dbg !295
  %11 = shl nuw nsw i64 %10, 2, !dbg !295
  %12 = and i64 %11, 17179869120, !dbg !295
  %13 = shl nuw nsw i64 %10, 6, !dbg !295
  %14 = and i64 %13, 960, !dbg !295
  br label %.preheader, !dbg !295

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !295
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !295

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !295
  %22 = shl nuw nsw i64 %21, 8, !dbg !295
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !295
  %23 = load i8, ptr %gep, align 1, !dbg !295
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !295
  store i8 %23, ptr %24, align 1, !dbg !295
  %25 = add nuw nsw i64 %20, 1, !dbg !295
  %exitcond.not = icmp eq i64 %25, 64, !dbg !295
  br i1 %exitcond.not, label %26, label %19, !dbg !295

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !295
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !295
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !295

28:                                               ; preds = %26
  ret i32 0, !dbg !295
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_19_dispatch_0_transpose_1024x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !296 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !297
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !297
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !297
  %5 = getelementptr i8, ptr %4, i64 1733632, !dbg !297
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !297
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !297
  %7 = load ptr, ptr %6, align 8, !dbg !297
  %8 = getelementptr i8, ptr %7, i64 1642496, !dbg !297
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !297
  %9 = load i32, ptr %2, align 16, !dbg !297
  %10 = zext i32 %9 to i64, !dbg !297
  %11 = shl nuw nsw i64 %10, 4, !dbg !297
  %12 = and i64 %11, 68719476672, !dbg !297
  %13 = shl nuw nsw i64 %10, 6, !dbg !297
  %14 = and i64 %13, 192, !dbg !297
  br label %.preheader, !dbg !297

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !297
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !297

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !297
  %22 = shl nuw nsw i64 %21, 10, !dbg !297
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !297
  %23 = load i8, ptr %gep, align 1, !dbg !297
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !297
  store i8 %23, ptr %24, align 1, !dbg !297
  %25 = add nuw nsw i64 %20, 1, !dbg !297
  %exitcond.not = icmp eq i64 %25, 64, !dbg !297
  br i1 %exitcond.not, label %26, label %19, !dbg !297

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !297
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !297
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !297

28:                                               ; preds = %26
  ret i32 0, !dbg !297
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_20_dispatch_0_transpose_256x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !298 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !299
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !299
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !299
  %5 = getelementptr i8, ptr %4, i64 1995776, !dbg !299
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !299
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !299
  %7 = load ptr, ptr %6, align 8, !dbg !299
  %8 = getelementptr i8, ptr %7, i64 1904640, !dbg !299
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !299
  %9 = load i32, ptr %2, align 16, !dbg !299
  %10 = zext i32 %9 to i64, !dbg !299
  %11 = shl nuw nsw i64 %10, 2, !dbg !299
  %12 = and i64 %11, 17179869120, !dbg !299
  %13 = shl nuw nsw i64 %10, 6, !dbg !299
  %14 = and i64 %13, 960, !dbg !299
  br label %.preheader, !dbg !299

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !299
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !299

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !299
  %22 = shl nuw nsw i64 %21, 8, !dbg !299
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !299
  %23 = load i8, ptr %gep, align 1, !dbg !299
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !299
  store i8 %23, ptr %24, align 1, !dbg !299
  %25 = add nuw nsw i64 %20, 1, !dbg !299
  %exitcond.not = icmp eq i64 %25, 64, !dbg !299
  br i1 %exitcond.not, label %26, label %19, !dbg !299

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !299
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !299
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !299

28:                                               ; preds = %26
  ret i32 0, !dbg !299
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_21_dispatch_0_transpose_1024x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !300 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !301
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !301
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !301
  %5 = getelementptr i8, ptr %4, i64 2257920, !dbg !301
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !301
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !301
  %7 = load ptr, ptr %6, align 8, !dbg !301
  %8 = getelementptr i8, ptr %7, i64 2166784, !dbg !301
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !301
  %9 = load i32, ptr %2, align 16, !dbg !301
  %10 = zext i32 %9 to i64, !dbg !301
  %11 = shl nuw nsw i64 %10, 4, !dbg !301
  %12 = and i64 %11, 68719476672, !dbg !301
  %13 = shl nuw nsw i64 %10, 6, !dbg !301
  %14 = and i64 %13, 192, !dbg !301
  br label %.preheader, !dbg !301

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !301
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !301

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !301
  %22 = shl nuw nsw i64 %21, 10, !dbg !301
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !301
  %23 = load i8, ptr %gep, align 1, !dbg !301
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !301
  store i8 %23, ptr %24, align 1, !dbg !301
  %25 = add nuw nsw i64 %20, 1, !dbg !301
  %exitcond.not = icmp eq i64 %25, 64, !dbg !301
  br i1 %exitcond.not, label %26, label %19, !dbg !301

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !301
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !301
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !301

28:                                               ; preds = %26
  ret i32 0, !dbg !301
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_22_dispatch_0_transpose_256x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !302 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !303
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !303
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !303
  %5 = getelementptr i8, ptr %4, i64 2520064, !dbg !303
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !303
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !303
  %7 = load ptr, ptr %6, align 8, !dbg !303
  %8 = getelementptr i8, ptr %7, i64 2428928, !dbg !303
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !303
  %9 = load i32, ptr %2, align 16, !dbg !303
  %10 = zext i32 %9 to i64, !dbg !303
  %11 = shl nuw nsw i64 %10, 2, !dbg !303
  %12 = and i64 %11, 17179869120, !dbg !303
  %13 = shl nuw nsw i64 %10, 6, !dbg !303
  %14 = and i64 %13, 960, !dbg !303
  br label %.preheader, !dbg !303

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !303
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !303

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !303
  %22 = shl nuw nsw i64 %21, 8, !dbg !303
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !303
  %23 = load i8, ptr %gep, align 1, !dbg !303
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !303
  store i8 %23, ptr %24, align 1, !dbg !303
  %25 = add nuw nsw i64 %20, 1, !dbg !303
  %exitcond.not = icmp eq i64 %25, 64, !dbg !303
  br i1 %exitcond.not, label %26, label %19, !dbg !303

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !303
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !303
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !303

28:                                               ; preds = %26
  ret i32 0, !dbg !303
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_23_dispatch_0_transpose_1024x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !304 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !305
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !305
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !305
  %5 = getelementptr i8, ptr %4, i64 2782208, !dbg !305
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !305
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !305
  %7 = load ptr, ptr %6, align 8, !dbg !305
  %8 = getelementptr i8, ptr %7, i64 2691072, !dbg !305
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !305
  %9 = load i32, ptr %2, align 16, !dbg !305
  %10 = zext i32 %9 to i64, !dbg !305
  %11 = shl nuw nsw i64 %10, 4, !dbg !305
  %12 = and i64 %11, 68719476672, !dbg !305
  %13 = shl nuw nsw i64 %10, 6, !dbg !305
  %14 = and i64 %13, 192, !dbg !305
  br label %.preheader, !dbg !305

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !305
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !305

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !305
  %22 = shl nuw nsw i64 %21, 10, !dbg !305
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !305
  %23 = load i8, ptr %gep, align 1, !dbg !305
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !305
  store i8 %23, ptr %24, align 1, !dbg !305
  %25 = add nuw nsw i64 %20, 1, !dbg !305
  %exitcond.not = icmp eq i64 %25, 64, !dbg !305
  br i1 %exitcond.not, label %26, label %19, !dbg !305

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !305
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !305
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !305

28:                                               ; preds = %26
  ret i32 0, !dbg !305
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_24_dispatch_0_transpose_256x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !306 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !307
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !307
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !307
  %5 = getelementptr i8, ptr %4, i64 3044352, !dbg !307
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !307
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !307
  %7 = load ptr, ptr %6, align 8, !dbg !307
  %8 = getelementptr i8, ptr %7, i64 2953216, !dbg !307
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !307
  %9 = load i32, ptr %2, align 16, !dbg !307
  %10 = zext i32 %9 to i64, !dbg !307
  %11 = shl nuw nsw i64 %10, 2, !dbg !307
  %12 = and i64 %11, 17179869120, !dbg !307
  %13 = shl nuw nsw i64 %10, 6, !dbg !307
  %14 = and i64 %13, 960, !dbg !307
  br label %.preheader, !dbg !307

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !307
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !307

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !307
  %22 = shl nuw nsw i64 %21, 8, !dbg !307
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !307
  %23 = load i8, ptr %gep, align 1, !dbg !307
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !307
  store i8 %23, ptr %24, align 1, !dbg !307
  %25 = add nuw nsw i64 %20, 1, !dbg !307
  %exitcond.not = icmp eq i64 %25, 64, !dbg !307
  br i1 %exitcond.not, label %26, label %19, !dbg !307

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !307
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !307
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !307

28:                                               ; preds = %26
  ret i32 0, !dbg !307
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_25_dispatch_0_transpose_1024x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !308 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !309
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !309
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !309
  %5 = getelementptr i8, ptr %4, i64 3306496, !dbg !309
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !309
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !309
  %7 = load ptr, ptr %6, align 8, !dbg !309
  %8 = getelementptr i8, ptr %7, i64 3215360, !dbg !309
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !309
  %9 = load i32, ptr %2, align 16, !dbg !309
  %10 = zext i32 %9 to i64, !dbg !309
  %11 = shl nuw nsw i64 %10, 4, !dbg !309
  %12 = and i64 %11, 68719476672, !dbg !309
  %13 = shl nuw nsw i64 %10, 6, !dbg !309
  %14 = and i64 %13, 192, !dbg !309
  br label %.preheader, !dbg !309

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !309
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !309

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !309
  %22 = shl nuw nsw i64 %21, 10, !dbg !309
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !309
  %23 = load i8, ptr %gep, align 1, !dbg !309
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !309
  store i8 %23, ptr %24, align 1, !dbg !309
  %25 = add nuw nsw i64 %20, 1, !dbg !309
  %exitcond.not = icmp eq i64 %25, 64, !dbg !309
  br i1 %exitcond.not, label %26, label %19, !dbg !309

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !309
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !309
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !309

28:                                               ; preds = %26
  ret i32 0, !dbg !309
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_26_dispatch_0_transpose_256x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !310 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !311
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !311
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !311
  %5 = getelementptr i8, ptr %4, i64 3568640, !dbg !311
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !311
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !311
  %7 = load ptr, ptr %6, align 8, !dbg !311
  %8 = getelementptr i8, ptr %7, i64 3477504, !dbg !311
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !311
  %9 = load i32, ptr %2, align 16, !dbg !311
  %10 = zext i32 %9 to i64, !dbg !311
  %11 = shl nuw nsw i64 %10, 2, !dbg !311
  %12 = and i64 %11, 17179869120, !dbg !311
  %13 = shl nuw nsw i64 %10, 6, !dbg !311
  %14 = and i64 %13, 960, !dbg !311
  br label %.preheader, !dbg !311

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !311
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !311

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !311
  %22 = shl nuw nsw i64 %21, 8, !dbg !311
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !311
  %23 = load i8, ptr %gep, align 1, !dbg !311
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !311
  store i8 %23, ptr %24, align 1, !dbg !311
  %25 = add nuw nsw i64 %20, 1, !dbg !311
  %exitcond.not = icmp eq i64 %25, 64, !dbg !311
  br i1 %exitcond.not, label %26, label %19, !dbg !311

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !311
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !311
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !311

28:                                               ; preds = %26
  ret i32 0, !dbg !311
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_27_dispatch_0_transpose_1024x256_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !312 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !313
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !313
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !313
  %5 = getelementptr i8, ptr %4, i64 3830784, !dbg !313
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !313
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !313
  %7 = load ptr, ptr %6, align 8, !dbg !313
  %8 = getelementptr i8, ptr %7, i64 3739648, !dbg !313
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !313
  %9 = load i32, ptr %2, align 16, !dbg !313
  %10 = zext i32 %9 to i64, !dbg !313
  %11 = shl nuw nsw i64 %10, 4, !dbg !313
  %12 = and i64 %11, 68719476672, !dbg !313
  %13 = shl nuw nsw i64 %10, 6, !dbg !313
  %14 = and i64 %13, 192, !dbg !313
  br label %.preheader, !dbg !313

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !313
  %17 = shl nuw nsw i64 %16, 8
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !313

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !313
  %22 = shl nuw nsw i64 %21, 10, !dbg !313
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !313
  %23 = load i8, ptr %gep, align 1, !dbg !313
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !313
  store i8 %23, ptr %24, align 1, !dbg !313
  %25 = add nuw nsw i64 %20, 1, !dbg !313
  %exitcond.not = icmp eq i64 %25, 64, !dbg !313
  br i1 %exitcond.not, label %26, label %19, !dbg !313

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !313
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !313
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !313

28:                                               ; preds = %26
  ret i32 0, !dbg !313
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_28_dispatch_0_transpose_256x1024_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !314 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !315
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !315
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !315
  %5 = getelementptr i8, ptr %4, i64 4092928, !dbg !315
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !315
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !315
  %7 = load ptr, ptr %6, align 8, !dbg !315
  %8 = getelementptr i8, ptr %7, i64 4001792, !dbg !315
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !315
  %9 = load i32, ptr %2, align 16, !dbg !315
  %10 = zext i32 %9 to i64, !dbg !315
  %11 = shl nuw nsw i64 %10, 2, !dbg !315
  %12 = and i64 %11, 17179869120, !dbg !315
  %13 = shl nuw nsw i64 %10, 6, !dbg !315
  %14 = and i64 %13, 960, !dbg !315
  br label %.preheader, !dbg !315

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !315
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !315

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !315
  %22 = shl nuw nsw i64 %21, 8, !dbg !315
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !315
  %23 = load i8, ptr %gep, align 1, !dbg !315
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !315
  store i8 %23, ptr %24, align 1, !dbg !315
  %25 = add nuw nsw i64 %20, 1, !dbg !315
  %exitcond.not = icmp eq i64 %25, 64, !dbg !315
  br i1 %exitcond.not, label %26, label %19, !dbg !315

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !315
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !315
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !315

28:                                               ; preds = %26
  ret i32 0, !dbg !315
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_29_dispatch_0_transpose_1024x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !316 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !317
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !317
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !317
  %5 = getelementptr i8, ptr %4, i64 4355072, !dbg !317
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !317
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !317
  %7 = load ptr, ptr %6, align 8, !dbg !317
  %8 = getelementptr i8, ptr %7, i64 4263936, !dbg !317
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !317
  %9 = load i32, ptr %2, align 16, !dbg !317
  %10 = zext i32 %9 to i64, !dbg !317
  %11 = shl nuw nsw i64 %10, 3, !dbg !317
  %12 = and i64 %11, 34359738304, !dbg !317
  %13 = shl nuw nsw i64 %10, 6, !dbg !317
  %14 = and i64 %13, 448, !dbg !317
  br label %.preheader, !dbg !317

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !317
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !317

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !317
  %22 = shl nuw nsw i64 %21, 10, !dbg !317
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !317
  %23 = load i8, ptr %gep, align 1, !dbg !317
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !317
  store i8 %23, ptr %24, align 1, !dbg !317
  %25 = add nuw nsw i64 %20, 1, !dbg !317
  %exitcond.not = icmp eq i64 %25, 64, !dbg !317
  br i1 %exitcond.not, label %26, label %19, !dbg !317

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !317
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !317
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !317

28:                                               ; preds = %26
  ret i32 0, !dbg !317
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_30_dispatch_0_transpose_1024x2048_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !318 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !319
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !319
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !319
  %5 = getelementptr i8, ptr %4, i64 4879360, !dbg !319
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !319
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !319
  %7 = load ptr, ptr %6, align 8, !dbg !319
  %8 = getelementptr i8, ptr %7, i64 4788224, !dbg !319
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !319
  %9 = load i32, ptr %2, align 16, !dbg !319
  %10 = zext i32 %9 to i64, !dbg !319
  %11 = shl nuw nsw i64 %10, 1, !dbg !319
  %12 = and i64 %11, 8589934528, !dbg !319
  %13 = shl nuw nsw i64 %10, 6, !dbg !319
  %14 = and i64 %13, 1984, !dbg !319
  br label %.preheader, !dbg !319

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !319
  %17 = shl nuw nsw i64 %16, 11
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !319

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !319
  %22 = shl nuw nsw i64 %21, 10, !dbg !319
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !319
  %23 = load i8, ptr %gep, align 1, !dbg !319
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !319
  store i8 %23, ptr %24, align 1, !dbg !319
  %25 = add nuw nsw i64 %20, 1, !dbg !319
  %exitcond.not = icmp eq i64 %25, 64, !dbg !319
  br i1 %exitcond.not, label %26, label %19, !dbg !319

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !319
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !319
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !319

28:                                               ; preds = %26
  ret i32 0, !dbg !319
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_31_dispatch_0_transpose_512x2048_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !320 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !321
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !321
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !321
  %5 = getelementptr i8, ptr %4, i64 6976512, !dbg !321
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !321
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !321
  %7 = load ptr, ptr %6, align 8, !dbg !321
  %8 = getelementptr i8, ptr %7, i64 6885376, !dbg !321
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !321
  %9 = load i32, ptr %2, align 16, !dbg !321
  %10 = zext i32 %9 to i64, !dbg !321
  %11 = shl nuw nsw i64 %10, 1, !dbg !321
  %12 = and i64 %11, 8589934528, !dbg !321
  %13 = shl nuw nsw i64 %10, 6, !dbg !321
  %14 = and i64 %13, 1984, !dbg !321
  br label %.preheader, !dbg !321

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !321
  %17 = shl nuw nsw i64 %16, 11
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !321

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !321
  %22 = shl nuw nsw i64 %21, 9, !dbg !321
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !321
  %23 = load i8, ptr %gep, align 1, !dbg !321
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !321
  store i8 %23, ptr %24, align 1, !dbg !321
  %25 = add nuw nsw i64 %20, 1, !dbg !321
  %exitcond.not = icmp eq i64 %25, 64, !dbg !321
  br i1 %exitcond.not, label %26, label %19, !dbg !321

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !321
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !321
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !321

28:                                               ; preds = %26
  ret i32 0, !dbg !321
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_32_dispatch_0_transpose_2048x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !322 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !323
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !323
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !323
  %5 = getelementptr i8, ptr %4, i64 8025088, !dbg !323
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !323
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !323
  %7 = load ptr, ptr %6, align 8, !dbg !323
  %8 = getelementptr i8, ptr %7, i64 7933952, !dbg !323
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !323
  %9 = load i32, ptr %2, align 16, !dbg !323
  %10 = zext i32 %9 to i64, !dbg !323
  %11 = shl nuw nsw i64 %10, 3, !dbg !323
  %12 = and i64 %11, 34359738304, !dbg !323
  %13 = shl nuw nsw i64 %10, 6, !dbg !323
  %14 = and i64 %13, 448, !dbg !323
  br label %.preheader, !dbg !323

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !323
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !323

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !323
  %22 = shl nuw nsw i64 %21, 11, !dbg !323
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !323
  %23 = load i8, ptr %gep, align 1, !dbg !323
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !323
  store i8 %23, ptr %24, align 1, !dbg !323
  %25 = add nuw nsw i64 %20, 1, !dbg !323
  %exitcond.not = icmp eq i64 %25, 64, !dbg !323
  br i1 %exitcond.not, label %26, label %19, !dbg !323

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !323
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !323
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !323

28:                                               ; preds = %26
  ret i32 0, !dbg !323
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_33_dispatch_0_transpose_512x2048_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !324 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !325
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !325
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !325
  %5 = getelementptr i8, ptr %4, i64 9073664, !dbg !325
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !325
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !325
  %7 = load ptr, ptr %6, align 8, !dbg !325
  %8 = getelementptr i8, ptr %7, i64 8982528, !dbg !325
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !325
  %9 = load i32, ptr %2, align 16, !dbg !325
  %10 = zext i32 %9 to i64, !dbg !325
  %11 = shl nuw nsw i64 %10, 1, !dbg !325
  %12 = and i64 %11, 8589934528, !dbg !325
  %13 = shl nuw nsw i64 %10, 6, !dbg !325
  %14 = and i64 %13, 1984, !dbg !325
  br label %.preheader, !dbg !325

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !325
  %17 = shl nuw nsw i64 %16, 11
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !325

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !325
  %22 = shl nuw nsw i64 %21, 9, !dbg !325
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !325
  %23 = load i8, ptr %gep, align 1, !dbg !325
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !325
  store i8 %23, ptr %24, align 1, !dbg !325
  %25 = add nuw nsw i64 %20, 1, !dbg !325
  %exitcond.not = icmp eq i64 %25, 64, !dbg !325
  br i1 %exitcond.not, label %26, label %19, !dbg !325

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !325
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !325
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !325

28:                                               ; preds = %26
  ret i32 0, !dbg !325
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_34_dispatch_0_transpose_2048x512_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !326 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !327
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !327
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !327
  %5 = getelementptr i8, ptr %4, i64 10122240, !dbg !327
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !327
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !327
  %7 = load ptr, ptr %6, align 8, !dbg !327
  %8 = getelementptr i8, ptr %7, i64 10031104, !dbg !327
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !327
  %9 = load i32, ptr %2, align 16, !dbg !327
  %10 = zext i32 %9 to i64, !dbg !327
  %11 = shl nuw nsw i64 %10, 3, !dbg !327
  %12 = and i64 %11, 34359738304, !dbg !327
  %13 = shl nuw nsw i64 %10, 6, !dbg !327
  %14 = and i64 %13, 448, !dbg !327
  br label %.preheader, !dbg !327

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !327
  %17 = shl nuw nsw i64 %16, 9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !327

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !327
  %22 = shl nuw nsw i64 %21, 11, !dbg !327
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !327
  %23 = load i8, ptr %gep, align 1, !dbg !327
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !327
  store i8 %23, ptr %24, align 1, !dbg !327
  %25 = add nuw nsw i64 %20, 1, !dbg !327
  %exitcond.not = icmp eq i64 %25, 64, !dbg !327
  br i1 %exitcond.not, label %26, label %19, !dbg !327

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !327
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !327
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !327

28:                                               ; preds = %26
  ret i32 0, !dbg !327
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_35_dispatch_0_transpose_512x2048_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !328 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !329
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !329
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !329
  %5 = getelementptr i8, ptr %4, i64 11170816, !dbg !329
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !329
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !329
  %7 = load ptr, ptr %6, align 8, !dbg !329
  %8 = getelementptr i8, ptr %7, i64 11079680, !dbg !329
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !329
  %9 = load i32, ptr %2, align 16, !dbg !329
  %10 = zext i32 %9 to i64, !dbg !329
  %11 = shl nuw nsw i64 %10, 1, !dbg !329
  %12 = and i64 %11, 8589934528, !dbg !329
  %13 = shl nuw nsw i64 %10, 6, !dbg !329
  %14 = and i64 %13, 1984, !dbg !329
  br label %.preheader, !dbg !329

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %16, !dbg !329
  %17 = shl nuw nsw i64 %16, 11
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %19, !dbg !329

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 0, %.preheader ], [ %25, %19 ]
  %21 = or disjoint i64 %20, %14, !dbg !329
  %22 = shl nuw nsw i64 %21, 9, !dbg !329
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !329
  %23 = load i8, ptr %gep, align 1, !dbg !329
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %21, !dbg !329
  store i8 %23, ptr %24, align 1, !dbg !329
  %25 = add nuw nsw i64 %20, 1, !dbg !329
  %exitcond.not = icmp eq i64 %25, 64, !dbg !329
  br i1 %exitcond.not, label %26, label %19, !dbg !329

26:                                               ; preds = %19
  %27 = add nuw nsw i64 %15, 1, !dbg !329
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !329
  br i1 %exitcond23.not, label %28, label %.preheader, !dbg !329

28:                                               ; preds = %26
  ret i32 0, !dbg !329
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_36_dispatch_0_transpose_2048x1000_i8(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !330 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !331
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !331
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !331
  %5 = getelementptr i8, ptr %4, i64 12219392, !dbg !331
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !331
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !331
  %7 = load ptr, ptr %6, align 8, !dbg !331
  %8 = getelementptr i8, ptr %7, i64 12128256, !dbg !331
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !331
  %9 = load i32, ptr %2, align 16, !dbg !331
  %.frozen = freeze i32 %9, !dbg !331
  %10 = udiv i32 %.frozen, 20, !dbg !331
  %.zext = zext nneg i32 %10 to i64, !dbg !331
  %11 = mul i32 %10, 20, !dbg !331
  %.decomposed = sub i32 %.frozen, %11, !dbg !331
  %12 = shl nuw nsw i64 %.zext, 6, !dbg !331
  %narrow = mul nuw nsw i32 %.decomposed, 50, !dbg !331
  %13 = zext nneg i32 %narrow to i64, !dbg !331
  br label %.preheader, !dbg !331

.preheader:                                       ; preds = %3, %25
  %14 = phi i64 [ 0, %3 ], [ %26, %25 ]
  %15 = add nuw nsw i64 %14, %12
  %invariant.gep = getelementptr i8, ptr %5, i64 %15, !dbg !331
  %16 = mul nuw nsw i64 %15, 1000
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 %16
  br label %18, !dbg !331

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = add nuw nsw i64 %19, %13, !dbg !331
  %21 = shl nuw nsw i64 %20, 11, !dbg !331
  %gep = getelementptr i8, ptr %invariant.gep, i64 %21, !dbg !331
  %22 = load i8, ptr %gep, align 1, !dbg !331
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %20, !dbg !331
  store i8 %22, ptr %23, align 1, !dbg !331
  %24 = add nuw nsw i64 %19, 1, !dbg !331
  %exitcond.not = icmp eq i64 %24, 50, !dbg !331
  br i1 %exitcond.not, label %25, label %18, !dbg !331

25:                                               ; preds = %18
  %26 = add nuw nsw i64 %14, 1, !dbg !331
  %exitcond25.not = icmp eq i64 %26, 64, !dbg !331
  br i1 %exitcond25.not, label %27, label %.preheader, !dbg !331

27:                                               ; preds = %25
  ret i32 0, !dbg !331
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !332 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !333
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !333
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !333
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !333
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !333
  %6 = load ptr, ptr %5, align 8, !dbg !333
  %7 = getelementptr i8, ptr %6, i64 14176256, !dbg !333
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !333
  %8 = load i32, ptr %2, align 16, !dbg !333
  %9 = zext i32 %8 to i64, !dbg !333
  %.idx = shl nuw nsw i64 %9, 14
  %10 = getelementptr i8, ptr %7, i64 %.idx
  br label %.preheader, !dbg !333

.preheader:                                       ; preds = %3, %20
  %11 = phi i64 [ 0, %3 ], [ %21, %20 ]
  %.idx23 = shl i64 %11, 8
  %12 = getelementptr i8, ptr %10, i64 %.idx23
  br label %13, !dbg !333

13:                                               ; preds = %.preheader, %13
  %14 = phi i64 [ 0, %.preheader ], [ %18, %13 ]
  %15 = getelementptr [4 x i8], ptr %4, i64 %14, !dbg !333
  %16 = load <2 x i32>, ptr %15, align 8, !dbg !333
  %17 = getelementptr [4 x i8], ptr %12, i64 %14, !dbg !333
  store <2 x i32> %16, ptr %17, align 8, !dbg !333
  %18 = add nuw nsw i64 %14, 2, !dbg !333
  %19 = icmp samesign ult i64 %14, 62, !dbg !333
  br i1 %19, label %13, label %20, !dbg !333

20:                                               ; preds = %13
  %21 = add nuw nsw i64 %11, 1, !dbg !333
  %exitcond.not = icmp eq i64 %21, 64, !dbg !333
  br i1 %exitcond.not, label %22, label %.preheader, !dbg !333

22:                                               ; preds = %20
  ret i32 0, !dbg !333
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !334 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !335
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !335
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !335
  %5 = getelementptr i8, ptr %4, i64 256, !dbg !335
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !335
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !335
  %7 = load ptr, ptr %6, align 8, !dbg !335
  %8 = getelementptr i8, ptr %7, i64 14979072, !dbg !335
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !335
  %9 = load i32, ptr %2, align 16, !dbg !335
  %10 = zext i32 %9 to i64, !dbg !335
  %.idx = shl nuw nsw i64 %10, 14
  %11 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader, !dbg !335

.preheader:                                       ; preds = %3, %21
  %12 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %.idx23 = shl i64 %12, 8
  %13 = getelementptr i8, ptr %11, i64 %.idx23
  br label %14, !dbg !335

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %19, %14 ]
  %16 = getelementptr [4 x i8], ptr %5, i64 %15, !dbg !335
  %17 = load <2 x i32>, ptr %16, align 8, !dbg !335
  %18 = getelementptr [4 x i8], ptr %13, i64 %15, !dbg !335
  store <2 x i32> %17, ptr %18, align 8, !dbg !335
  %19 = add nuw nsw i64 %15, 2, !dbg !335
  %20 = icmp samesign ult i64 %15, 62, !dbg !335
  br i1 %20, label %14, label %21, !dbg !335

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1, !dbg !335
  %exitcond.not = icmp eq i64 %22, 64, !dbg !335
  br i1 %exitcond.not, label %23, label %.preheader, !dbg !335

23:                                               ; preds = %21
  ret i32 0, !dbg !335
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !336 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !337
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !337
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !337
  %5 = getelementptr i8, ptr %4, i64 512, !dbg !337
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !337
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !337
  %7 = load ptr, ptr %6, align 8, !dbg !337
  %8 = getelementptr i8, ptr %7, i64 15781888, !dbg !337
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !337
  %9 = load i32, ptr %2, align 16, !dbg !337
  %10 = zext i32 %9 to i64, !dbg !337
  %.idx = shl nuw nsw i64 %10, 14
  %11 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader, !dbg !337

.preheader:                                       ; preds = %3, %21
  %12 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %.idx23 = shl i64 %12, 8
  %13 = getelementptr i8, ptr %11, i64 %.idx23
  br label %14, !dbg !337

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %19, %14 ]
  %16 = getelementptr [4 x i8], ptr %5, i64 %15, !dbg !337
  %17 = load <2 x i32>, ptr %16, align 8, !dbg !337
  %18 = getelementptr [4 x i8], ptr %13, i64 %15, !dbg !337
  store <2 x i32> %17, ptr %18, align 8, !dbg !337
  %19 = add nuw nsw i64 %15, 2, !dbg !337
  %20 = icmp samesign ult i64 %15, 62, !dbg !337
  br i1 %20, label %14, label %21, !dbg !337

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1, !dbg !337
  %exitcond.not = icmp eq i64 %22, 64, !dbg !337
  br i1 %exitcond.not, label %23, label %.preheader, !dbg !337

23:                                               ; preds = %21
  ret i32 0, !dbg !337
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !338 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !339
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !339
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !339
  %5 = getelementptr i8, ptr %4, i64 768, !dbg !339
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !339
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !339
  %7 = load ptr, ptr %6, align 8, !dbg !339
  %8 = getelementptr i8, ptr %7, i64 16584704, !dbg !339
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !339
  %9 = load i32, ptr %2, align 16, !dbg !339
  %10 = zext i32 %9 to i64, !dbg !339
  %.idx = shl nuw nsw i64 %10, 14
  %11 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader, !dbg !339

.preheader:                                       ; preds = %3, %21
  %12 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %.idx23 = shl i64 %12, 8
  %13 = getelementptr i8, ptr %11, i64 %.idx23
  br label %14, !dbg !339

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %19, %14 ]
  %16 = getelementptr [4 x i8], ptr %5, i64 %15, !dbg !339
  %17 = load <2 x i32>, ptr %16, align 8, !dbg !339
  %18 = getelementptr [4 x i8], ptr %13, i64 %15, !dbg !339
  store <2 x i32> %17, ptr %18, align 8, !dbg !339
  %19 = add nuw nsw i64 %15, 2, !dbg !339
  %20 = icmp samesign ult i64 %15, 62, !dbg !339
  br i1 %20, label %14, label %21, !dbg !339

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1, !dbg !339
  %exitcond.not = icmp eq i64 %22, 64, !dbg !339
  br i1 %exitcond.not, label %23, label %.preheader, !dbg !339

23:                                               ; preds = %21
  ret i32 0, !dbg !339
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !340 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !341
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !341
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !341
  %5 = getelementptr i8, ptr %4, i64 1024, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !341
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !341
  %7 = load ptr, ptr %6, align 8, !dbg !341
  %8 = getelementptr i8, ptr %7, i64 17387520, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !341
  %9 = load i32, ptr %2, align 16, !dbg !341
  %10 = zext i32 %9 to i64, !dbg !341
  %.idx = shl nuw nsw i64 %10, 14
  %11 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader, !dbg !341

.preheader:                                       ; preds = %3, %21
  %12 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %.idx23 = shl i64 %12, 8
  %13 = getelementptr i8, ptr %11, i64 %.idx23
  br label %14, !dbg !341

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %19, %14 ]
  %16 = getelementptr [4 x i8], ptr %5, i64 %15, !dbg !341
  %17 = load <2 x i32>, ptr %16, align 8, !dbg !341
  %18 = getelementptr [4 x i8], ptr %13, i64 %15, !dbg !341
  store <2 x i32> %17, ptr %18, align 8, !dbg !341
  %19 = add nuw nsw i64 %15, 2, !dbg !341
  %20 = icmp samesign ult i64 %15, 62, !dbg !341
  br i1 %20, label %14, label %21, !dbg !341

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1, !dbg !341
  %exitcond.not = icmp eq i64 %22, 64, !dbg !341
  br i1 %exitcond.not, label %23, label %.preheader, !dbg !341

23:                                               ; preds = %21
  ret i32 0, !dbg !341
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !342 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !343
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !343
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !343
  %5 = getelementptr i8, ptr %4, i64 1280, !dbg !343
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !343
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !343
  %7 = load ptr, ptr %6, align 8, !dbg !343
  %8 = getelementptr i8, ptr %7, i64 18190336, !dbg !343
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !343
  %9 = load i32, ptr %2, align 16, !dbg !343
  %10 = zext i32 %9 to i64, !dbg !343
  %.idx = shl nuw nsw i64 %10, 14
  %11 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader, !dbg !343

.preheader:                                       ; preds = %3, %21
  %12 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %.idx23 = shl i64 %12, 8
  %13 = getelementptr i8, ptr %11, i64 %.idx23
  br label %14, !dbg !343

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %19, %14 ]
  %16 = getelementptr [4 x i8], ptr %5, i64 %15, !dbg !343
  %17 = load <2 x i32>, ptr %16, align 8, !dbg !343
  %18 = getelementptr [4 x i8], ptr %13, i64 %15, !dbg !343
  store <2 x i32> %17, ptr %18, align 8, !dbg !343
  %19 = add nuw nsw i64 %15, 2, !dbg !343
  %20 = icmp samesign ult i64 %15, 62, !dbg !343
  br i1 %20, label %14, label %21, !dbg !343

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1, !dbg !343
  %exitcond.not = icmp eq i64 %22, 64, !dbg !343
  br i1 %exitcond.not, label %23, label %.preheader, !dbg !343

23:                                               ; preds = %21
  ret i32 0, !dbg !343
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !344 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !345
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !345
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !345
  %5 = getelementptr i8, ptr %4, i64 1536, !dbg !345
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !345
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !345
  %7 = load ptr, ptr %6, align 8, !dbg !345
  %8 = getelementptr i8, ptr %7, i64 18993152, !dbg !345
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !345
  %9 = load i32, ptr %2, align 16, !dbg !345
  %10 = zext i32 %9 to i64, !dbg !345
  %11 = lshr i64 %10, 1, !dbg !345
  %12 = mul nuw nsw i64 %11, 112, !dbg !345
  %13 = shl nuw nsw i64 %10, 6, !dbg !345
  %14 = and i64 %13, 64, !dbg !345
  br label %.preheader, !dbg !345

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !345

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !345
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !345
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !345
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !345
  store <2 x i32> %22, ptr %23, align 8, !dbg !345
  %24 = add nuw nsw i64 %19, 2, !dbg !345
  %25 = icmp samesign ult i64 %19, 62, !dbg !345
  br i1 %25, label %18, label %26, !dbg !345

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !345
  %exitcond.not = icmp eq i64 %27, 112, !dbg !345
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !345

28:                                               ; preds = %26
  ret i32 0, !dbg !345
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !346 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !347
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !347
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !347
  %5 = getelementptr i8, ptr %4, i64 2048, !dbg !347
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !347
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !347
  %7 = load ptr, ptr %6, align 8, !dbg !347
  %8 = getelementptr i8, ptr %7, i64 19394560, !dbg !347
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !347
  %9 = load i32, ptr %2, align 16, !dbg !347
  %10 = zext i32 %9 to i64, !dbg !347
  %11 = lshr i64 %10, 1, !dbg !347
  %12 = mul nuw nsw i64 %11, 112, !dbg !347
  %13 = shl nuw nsw i64 %10, 6, !dbg !347
  %14 = and i64 %13, 64, !dbg !347
  br label %.preheader, !dbg !347

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !347

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !347
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !347
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !347
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !347
  store <2 x i32> %22, ptr %23, align 8, !dbg !347
  %24 = add nuw nsw i64 %19, 2, !dbg !347
  %25 = icmp samesign ult i64 %19, 62, !dbg !347
  br i1 %25, label %18, label %26, !dbg !347

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !347
  %exitcond.not = icmp eq i64 %27, 112, !dbg !347
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !347

28:                                               ; preds = %26
  ret i32 0, !dbg !347
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !348 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !349
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !349
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !349
  %5 = getelementptr i8, ptr %4, i64 2560, !dbg !349
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !349
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !349
  %7 = load ptr, ptr %6, align 8, !dbg !349
  %8 = getelementptr i8, ptr %7, i64 19795968, !dbg !349
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !349
  %9 = load i32, ptr %2, align 16, !dbg !349
  %10 = zext i32 %9 to i64, !dbg !349
  %11 = lshr i64 %10, 1, !dbg !349
  %12 = mul nuw nsw i64 %11, 112, !dbg !349
  %13 = shl nuw nsw i64 %10, 6, !dbg !349
  %14 = and i64 %13, 64, !dbg !349
  br label %.preheader, !dbg !349

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !349

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !349
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !349
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !349
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !349
  store <2 x i32> %22, ptr %23, align 8, !dbg !349
  %24 = add nuw nsw i64 %19, 2, !dbg !349
  %25 = icmp samesign ult i64 %19, 62, !dbg !349
  br i1 %25, label %18, label %26, !dbg !349

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !349
  %exitcond.not = icmp eq i64 %27, 112, !dbg !349
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !349

28:                                               ; preds = %26
  ret i32 0, !dbg !349
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !350 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !351
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !351
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !351
  %5 = getelementptr i8, ptr %4, i64 3072, !dbg !351
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !351
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !351
  %7 = load ptr, ptr %6, align 8, !dbg !351
  %8 = getelementptr i8, ptr %7, i64 20197376, !dbg !351
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !351
  %9 = load i32, ptr %2, align 16, !dbg !351
  %10 = zext i32 %9 to i64, !dbg !351
  %11 = lshr i64 %10, 1, !dbg !351
  %12 = mul nuw nsw i64 %11, 112, !dbg !351
  %13 = shl nuw nsw i64 %10, 6, !dbg !351
  %14 = and i64 %13, 64, !dbg !351
  br label %.preheader, !dbg !351

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !351

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !351
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !351
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !351
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !351
  store <2 x i32> %22, ptr %23, align 8, !dbg !351
  %24 = add nuw nsw i64 %19, 2, !dbg !351
  %25 = icmp samesign ult i64 %19, 62, !dbg !351
  br i1 %25, label %18, label %26, !dbg !351

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !351
  %exitcond.not = icmp eq i64 %27, 112, !dbg !351
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !351

28:                                               ; preds = %26
  ret i32 0, !dbg !351
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !352 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !353
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !353
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !353
  %5 = getelementptr i8, ptr %4, i64 3584, !dbg !353
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !353
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !353
  %7 = load ptr, ptr %6, align 8, !dbg !353
  %8 = getelementptr i8, ptr %7, i64 20598784, !dbg !353
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !353
  %9 = load i32, ptr %2, align 16, !dbg !353
  %10 = zext i32 %9 to i64, !dbg !353
  %11 = lshr i64 %10, 1, !dbg !353
  %12 = mul nuw nsw i64 %11, 112, !dbg !353
  %13 = shl nuw nsw i64 %10, 6, !dbg !353
  %14 = and i64 %13, 64, !dbg !353
  br label %.preheader, !dbg !353

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !353

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !353
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !353
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !353
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !353
  store <2 x i32> %22, ptr %23, align 8, !dbg !353
  %24 = add nuw nsw i64 %19, 2, !dbg !353
  %25 = icmp samesign ult i64 %19, 62, !dbg !353
  br i1 %25, label %18, label %26, !dbg !353

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !353
  %exitcond.not = icmp eq i64 %27, 112, !dbg !353
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !353

28:                                               ; preds = %26
  ret i32 0, !dbg !353
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !354 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !355
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !355
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !355
  %5 = getelementptr i8, ptr %4, i64 4096, !dbg !355
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !355
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !355
  %7 = load ptr, ptr %6, align 8, !dbg !355
  %8 = getelementptr i8, ptr %7, i64 21000192, !dbg !355
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !355
  %9 = load i32, ptr %2, align 16, !dbg !355
  %10 = zext i32 %9 to i64, !dbg !355
  %11 = lshr i64 %10, 1, !dbg !355
  %12 = mul nuw nsw i64 %11, 112, !dbg !355
  %13 = shl nuw nsw i64 %10, 6, !dbg !355
  %14 = and i64 %13, 64, !dbg !355
  br label %.preheader, !dbg !355

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !355

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !355
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !355
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !355
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !355
  store <2 x i32> %22, ptr %23, align 8, !dbg !355
  %24 = add nuw nsw i64 %19, 2, !dbg !355
  %25 = icmp samesign ult i64 %19, 62, !dbg !355
  br i1 %25, label %18, label %26, !dbg !355

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !355
  %exitcond.not = icmp eq i64 %27, 112, !dbg !355
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !355

28:                                               ; preds = %26
  ret i32 0, !dbg !355
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !356 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !357
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !357
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !357
  %5 = getelementptr i8, ptr %4, i64 4608, !dbg !357
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !357
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !357
  %7 = load ptr, ptr %6, align 8, !dbg !357
  %8 = getelementptr i8, ptr %7, i64 21401600, !dbg !357
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !357
  %9 = load i32, ptr %2, align 16, !dbg !357
  %10 = zext i32 %9 to i64, !dbg !357
  %11 = lshr i64 %10, 1, !dbg !357
  %12 = mul nuw nsw i64 %11, 112, !dbg !357
  %13 = shl nuw nsw i64 %10, 6, !dbg !357
  %14 = and i64 %13, 64, !dbg !357
  br label %.preheader, !dbg !357

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !357

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !357
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !357
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !357
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !357
  store <2 x i32> %22, ptr %23, align 8, !dbg !357
  %24 = add nuw nsw i64 %19, 2, !dbg !357
  %25 = icmp samesign ult i64 %19, 62, !dbg !357
  br i1 %25, label %18, label %26, !dbg !357

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !357
  %exitcond.not = icmp eq i64 %27, 112, !dbg !357
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !357

28:                                               ; preds = %26
  ret i32 0, !dbg !357
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !358 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !359
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !359
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !359
  %5 = getelementptr i8, ptr %4, i64 5120, !dbg !359
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !359
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !359
  %7 = load ptr, ptr %6, align 8, !dbg !359
  %8 = getelementptr i8, ptr %7, i64 21803008, !dbg !359
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !359
  %9 = load i32, ptr %2, align 16, !dbg !359
  %10 = zext i32 %9 to i64, !dbg !359
  %11 = lshr i64 %10, 2, !dbg !359
  %12 = mul nuw nsw i64 %11, 112, !dbg !359
  %13 = shl nuw nsw i64 %10, 6, !dbg !359
  %14 = and i64 %13, 192, !dbg !359
  br label %.preheader, !dbg !359

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !359

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !359
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !359
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !359
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !359
  store <2 x i32> %22, ptr %23, align 8, !dbg !359
  %24 = add nuw nsw i64 %19, 2, !dbg !359
  %25 = icmp samesign ult i64 %19, 62, !dbg !359
  br i1 %25, label %18, label %26, !dbg !359

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !359
  %exitcond.not = icmp eq i64 %27, 112, !dbg !359
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !359

28:                                               ; preds = %26
  ret i32 0, !dbg !359
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !360 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !361
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !361
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !361
  %5 = getelementptr i8, ptr %4, i64 6144, !dbg !361
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !361
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !361
  %7 = load ptr, ptr %6, align 8, !dbg !361
  %8 = getelementptr i8, ptr %7, i64 22605824, !dbg !361
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !361
  %9 = load i32, ptr %2, align 16, !dbg !361
  %10 = zext i32 %9 to i64, !dbg !361
  %11 = lshr i64 %10, 4, !dbg !361
  %12 = mul nuw nsw i64 %11, 98, !dbg !361
  %13 = shl nuw nsw i64 %10, 6, !dbg !361
  %14 = and i64 %13, 960, !dbg !361
  br label %.preheader, !dbg !361

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !361

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !361
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !361
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !361
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !361
  store <2 x i32> %22, ptr %23, align 8, !dbg !361
  %24 = add nuw nsw i64 %19, 2, !dbg !361
  %25 = icmp samesign ult i64 %19, 62, !dbg !361
  br i1 %25, label %18, label %26, !dbg !361

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !361
  %exitcond.not = icmp eq i64 %27, 98, !dbg !361
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !361

28:                                               ; preds = %26
  ret i32 0, !dbg !361
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !362 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !363
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !363
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !363
  %5 = getelementptr i8, ptr %4, i64 10240, !dbg !363
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !363
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !363
  %7 = load ptr, ptr %6, align 8, !dbg !363
  %8 = getelementptr i8, ptr %7, i64 23408640, !dbg !363
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !363
  %9 = load i32, ptr %2, align 16, !dbg !363
  %10 = zext i32 %9 to i64, !dbg !363
  %11 = lshr i64 %10, 2, !dbg !363
  %12 = mul nuw nsw i64 %11, 112, !dbg !363
  %13 = shl nuw nsw i64 %10, 6, !dbg !363
  %14 = and i64 %13, 192, !dbg !363
  %15 = mul nsw i64 %11, -112, !dbg !363
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !363
  %17 = icmp samesign ugt i64 %16, -196, !dbg !363
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !363

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !363

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !363

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !363
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !363
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !363
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !363
  store <2 x i32> %26, ptr %27, align 8, !dbg !363
  %28 = add nuw nsw i64 %23, 2, !dbg !363
  %29 = icmp samesign ult i64 %23, 62, !dbg !363
  br i1 %29, label %22, label %30, !dbg !363

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !363
  %exitcond.not = icmp eq i64 %19, %18, !dbg !363
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !363

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !363
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !364 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !365
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !365
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !365
  %5 = getelementptr i8, ptr %4, i64 11264, !dbg !365
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !365
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !365
  %7 = load ptr, ptr %6, align 8, !dbg !365
  %8 = getelementptr i8, ptr %7, i64 23609344, !dbg !365
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !365
  %9 = load i32, ptr %2, align 16, !dbg !365
  %10 = zext i32 %9 to i64, !dbg !365
  %11 = lshr i64 %10, 4, !dbg !365
  %12 = mul nuw nsw i64 %11, 98, !dbg !365
  %13 = shl nuw nsw i64 %10, 6, !dbg !365
  %14 = and i64 %13, 960, !dbg !365
  br label %.preheader, !dbg !365

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !365

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !365
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !365
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !365
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !365
  store <2 x i32> %22, ptr %23, align 8, !dbg !365
  %24 = add nuw nsw i64 %19, 2, !dbg !365
  %25 = icmp samesign ult i64 %19, 62, !dbg !365
  br i1 %25, label %18, label %26, !dbg !365

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !365
  %exitcond.not = icmp eq i64 %27, 98, !dbg !365
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !365

28:                                               ; preds = %26
  ret i32 0, !dbg !365
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !366 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !367
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !367
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !367
  %5 = getelementptr i8, ptr %4, i64 15360, !dbg !367
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !367
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !367
  %7 = load ptr, ptr %6, align 8, !dbg !367
  %8 = getelementptr i8, ptr %7, i64 24412160, !dbg !367
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !367
  %9 = load i32, ptr %2, align 16, !dbg !367
  %10 = zext i32 %9 to i64, !dbg !367
  %11 = lshr i64 %10, 2, !dbg !367
  %12 = mul nuw nsw i64 %11, 112, !dbg !367
  %13 = shl nuw nsw i64 %10, 6, !dbg !367
  %14 = and i64 %13, 192, !dbg !367
  %15 = mul nsw i64 %11, -112, !dbg !367
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !367
  %17 = icmp samesign ugt i64 %16, -196, !dbg !367
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !367

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !367

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !367

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !367
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !367
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !367
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !367
  store <2 x i32> %26, ptr %27, align 8, !dbg !367
  %28 = add nuw nsw i64 %23, 2, !dbg !367
  %29 = icmp samesign ult i64 %23, 62, !dbg !367
  br i1 %29, label %22, label %30, !dbg !367

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !367
  %exitcond.not = icmp eq i64 %19, %18, !dbg !367
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !367

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !367
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !368 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !369
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !369
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !369
  %5 = getelementptr i8, ptr %4, i64 16384, !dbg !369
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !369
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !369
  %7 = load ptr, ptr %6, align 8, !dbg !369
  %8 = getelementptr i8, ptr %7, i64 24612864, !dbg !369
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !369
  %9 = load i32, ptr %2, align 16, !dbg !369
  %10 = zext i32 %9 to i64, !dbg !369
  %11 = lshr i64 %10, 2, !dbg !369
  %12 = mul nuw nsw i64 %11, 112, !dbg !369
  %13 = shl nuw nsw i64 %10, 6, !dbg !369
  %14 = and i64 %13, 192, !dbg !369
  %15 = mul nsw i64 %11, -112, !dbg !369
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !369
  %17 = icmp samesign ugt i64 %16, -196, !dbg !369
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !369

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !369

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !369

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !369
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !369
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !369
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !369
  store <2 x i32> %26, ptr %27, align 8, !dbg !369
  %28 = add nuw nsw i64 %23, 2, !dbg !369
  %29 = icmp samesign ult i64 %23, 62, !dbg !369
  br i1 %29, label %22, label %30, !dbg !369

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !369
  %exitcond.not = icmp eq i64 %19, %18, !dbg !369
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !369

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !369
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !370 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !371
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !371
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !371
  %5 = getelementptr i8, ptr %4, i64 17408, !dbg !371
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !371
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !371
  %7 = load ptr, ptr %6, align 8, !dbg !371
  %8 = getelementptr i8, ptr %7, i64 24813568, !dbg !371
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !371
  %9 = load i32, ptr %2, align 16, !dbg !371
  %10 = zext i32 %9 to i64, !dbg !371
  %11 = lshr i64 %10, 4, !dbg !371
  %12 = mul nuw nsw i64 %11, 98, !dbg !371
  %13 = shl nuw nsw i64 %10, 6, !dbg !371
  %14 = and i64 %13, 960, !dbg !371
  br label %.preheader, !dbg !371

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !371

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !371
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !371
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !371
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !371
  store <2 x i32> %22, ptr %23, align 8, !dbg !371
  %24 = add nuw nsw i64 %19, 2, !dbg !371
  %25 = icmp samesign ult i64 %19, 62, !dbg !371
  br i1 %25, label %18, label %26, !dbg !371

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !371
  %exitcond.not = icmp eq i64 %27, 98, !dbg !371
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !371

28:                                               ; preds = %26
  ret i32 0, !dbg !371
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !372 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !373
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !373
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !373
  %5 = getelementptr i8, ptr %4, i64 21504, !dbg !373
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !373
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !373
  %7 = load ptr, ptr %6, align 8, !dbg !373
  %8 = getelementptr i8, ptr %7, i64 25616384, !dbg !373
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !373
  %9 = load i32, ptr %2, align 16, !dbg !373
  %10 = zext i32 %9 to i64, !dbg !373
  %11 = lshr i64 %10, 2, !dbg !373
  %12 = mul nuw nsw i64 %11, 112, !dbg !373
  %13 = shl nuw nsw i64 %10, 6, !dbg !373
  %14 = and i64 %13, 192, !dbg !373
  %15 = mul nsw i64 %11, -112, !dbg !373
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !373
  %17 = icmp samesign ugt i64 %16, -196, !dbg !373
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !373

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !373

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !373

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !373
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !373
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !373
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !373
  store <2 x i32> %26, ptr %27, align 8, !dbg !373
  %28 = add nuw nsw i64 %23, 2, !dbg !373
  %29 = icmp samesign ult i64 %23, 62, !dbg !373
  br i1 %29, label %22, label %30, !dbg !373

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !373
  %exitcond.not = icmp eq i64 %19, %18, !dbg !373
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !373

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !373
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !374 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !375
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !375
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !375
  %5 = getelementptr i8, ptr %4, i64 22528, !dbg !375
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !375
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !375
  %7 = load ptr, ptr %6, align 8, !dbg !375
  %8 = getelementptr i8, ptr %7, i64 25817088, !dbg !375
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !375
  %9 = load i32, ptr %2, align 16, !dbg !375
  %10 = zext i32 %9 to i64, !dbg !375
  %11 = lshr i64 %10, 2, !dbg !375
  %12 = mul nuw nsw i64 %11, 112, !dbg !375
  %13 = shl nuw nsw i64 %10, 6, !dbg !375
  %14 = and i64 %13, 192, !dbg !375
  %15 = mul nsw i64 %11, -112, !dbg !375
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !375
  %17 = icmp samesign ugt i64 %16, -196, !dbg !375
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !375

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !375

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !375

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !375
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !375
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !375
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !375
  store <2 x i32> %26, ptr %27, align 8, !dbg !375
  %28 = add nuw nsw i64 %23, 2, !dbg !375
  %29 = icmp samesign ult i64 %23, 62, !dbg !375
  br i1 %29, label %22, label %30, !dbg !375

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !375
  %exitcond.not = icmp eq i64 %19, %18, !dbg !375
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !375

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !375
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !376 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !377
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !377
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !377
  %5 = getelementptr i8, ptr %4, i64 23552, !dbg !377
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !377
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !377
  %7 = load ptr, ptr %6, align 8, !dbg !377
  %8 = getelementptr i8, ptr %7, i64 26017792, !dbg !377
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !377
  %9 = load i32, ptr %2, align 16, !dbg !377
  %10 = zext i32 %9 to i64, !dbg !377
  %11 = lshr i64 %10, 4, !dbg !377
  %12 = mul nuw nsw i64 %11, 98, !dbg !377
  %13 = shl nuw nsw i64 %10, 6, !dbg !377
  %14 = and i64 %13, 960, !dbg !377
  br label %.preheader, !dbg !377

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !377

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !377
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !377
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !377
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !377
  store <2 x i32> %22, ptr %23, align 8, !dbg !377
  %24 = add nuw nsw i64 %19, 2, !dbg !377
  %25 = icmp samesign ult i64 %19, 62, !dbg !377
  br i1 %25, label %18, label %26, !dbg !377

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !377
  %exitcond.not = icmp eq i64 %27, 98, !dbg !377
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !377

28:                                               ; preds = %26
  ret i32 0, !dbg !377
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !378 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !379
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !379
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !379
  %5 = getelementptr i8, ptr %4, i64 27648, !dbg !379
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !379
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !379
  %7 = load ptr, ptr %6, align 8, !dbg !379
  %8 = getelementptr i8, ptr %7, i64 26820608, !dbg !379
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !379
  %9 = load i32, ptr %2, align 16, !dbg !379
  %10 = zext i32 %9 to i64, !dbg !379
  %11 = lshr i64 %10, 2, !dbg !379
  %12 = mul nuw nsw i64 %11, 112, !dbg !379
  %13 = shl nuw nsw i64 %10, 6, !dbg !379
  %14 = and i64 %13, 192, !dbg !379
  %15 = mul nsw i64 %11, -112, !dbg !379
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !379
  %17 = icmp samesign ugt i64 %16, -196, !dbg !379
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !379

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !379

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !379

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !379
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !379
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !379
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !379
  store <2 x i32> %26, ptr %27, align 8, !dbg !379
  %28 = add nuw nsw i64 %23, 2, !dbg !379
  %29 = icmp samesign ult i64 %23, 62, !dbg !379
  br i1 %29, label %22, label %30, !dbg !379

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !379
  %exitcond.not = icmp eq i64 %19, %18, !dbg !379
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !379

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !379
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !380 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !381
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !381
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !381
  %5 = getelementptr i8, ptr %4, i64 28672, !dbg !381
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !381
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !381
  %7 = load ptr, ptr %6, align 8, !dbg !381
  %8 = getelementptr i8, ptr %7, i64 27021312, !dbg !381
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !381
  %9 = load i32, ptr %2, align 16, !dbg !381
  %10 = zext i32 %9 to i64, !dbg !381
  %11 = lshr i64 %10, 2, !dbg !381
  %12 = mul nuw nsw i64 %11, 112, !dbg !381
  %13 = shl nuw nsw i64 %10, 6, !dbg !381
  %14 = and i64 %13, 192, !dbg !381
  %15 = mul nsw i64 %11, -112, !dbg !381
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !381
  %17 = icmp samesign ugt i64 %16, -196, !dbg !381
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !381

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !381

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !381

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !381
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !381
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !381
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !381
  store <2 x i32> %26, ptr %27, align 8, !dbg !381
  %28 = add nuw nsw i64 %23, 2, !dbg !381
  %29 = icmp samesign ult i64 %23, 62, !dbg !381
  br i1 %29, label %22, label %30, !dbg !381

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !381
  %exitcond.not = icmp eq i64 %19, %18, !dbg !381
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !381

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !381
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !382 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !383
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !383
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !383
  %5 = getelementptr i8, ptr %4, i64 29696, !dbg !383
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !383
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !383
  %7 = load ptr, ptr %6, align 8, !dbg !383
  %8 = getelementptr i8, ptr %7, i64 27222016, !dbg !383
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !383
  %9 = load i32, ptr %2, align 16, !dbg !383
  %10 = zext i32 %9 to i64, !dbg !383
  %11 = lshr i64 %10, 4, !dbg !383
  %12 = mul nuw nsw i64 %11, 98, !dbg !383
  %13 = shl nuw nsw i64 %10, 6, !dbg !383
  %14 = and i64 %13, 960, !dbg !383
  br label %.preheader, !dbg !383

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !383

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !383
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !383
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !383
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !383
  store <2 x i32> %22, ptr %23, align 8, !dbg !383
  %24 = add nuw nsw i64 %19, 2, !dbg !383
  %25 = icmp samesign ult i64 %19, 62, !dbg !383
  br i1 %25, label %18, label %26, !dbg !383

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !383
  %exitcond.not = icmp eq i64 %27, 98, !dbg !383
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !383

28:                                               ; preds = %26
  ret i32 0, !dbg !383
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !384 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !385
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !385
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !385
  %5 = getelementptr i8, ptr %4, i64 33792, !dbg !385
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !385
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !385
  %7 = load ptr, ptr %6, align 8, !dbg !385
  %8 = getelementptr i8, ptr %7, i64 28024832, !dbg !385
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !385
  %9 = load i32, ptr %2, align 16, !dbg !385
  %10 = zext i32 %9 to i64, !dbg !385
  %11 = lshr i64 %10, 2, !dbg !385
  %12 = mul nuw nsw i64 %11, 112, !dbg !385
  %13 = shl nuw nsw i64 %10, 6, !dbg !385
  %14 = and i64 %13, 192, !dbg !385
  %15 = mul nsw i64 %11, -112, !dbg !385
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !385
  %17 = icmp samesign ugt i64 %16, -196, !dbg !385
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !385

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !385

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !385

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !385
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !385
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !385
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !385
  store <2 x i32> %26, ptr %27, align 8, !dbg !385
  %28 = add nuw nsw i64 %23, 2, !dbg !385
  %29 = icmp samesign ult i64 %23, 62, !dbg !385
  br i1 %29, label %22, label %30, !dbg !385

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !385
  %exitcond.not = icmp eq i64 %19, %18, !dbg !385
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !385

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !385
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !386 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !387
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !387
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !387
  %5 = getelementptr i8, ptr %4, i64 34816, !dbg !387
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !387
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !387
  %7 = load ptr, ptr %6, align 8, !dbg !387
  %8 = getelementptr i8, ptr %7, i64 28225536, !dbg !387
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !387
  %9 = load i32, ptr %2, align 16, !dbg !387
  %10 = zext i32 %9 to i64, !dbg !387
  %11 = lshr i64 %10, 2, !dbg !387
  %12 = mul nuw nsw i64 %11, 112, !dbg !387
  %13 = shl nuw nsw i64 %10, 6, !dbg !387
  %14 = and i64 %13, 192, !dbg !387
  %15 = mul nsw i64 %11, -112, !dbg !387
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !387
  %17 = icmp samesign ugt i64 %16, -196, !dbg !387
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !387

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !387

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !387

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !387
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !387
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !387
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !387
  store <2 x i32> %26, ptr %27, align 8, !dbg !387
  %28 = add nuw nsw i64 %23, 2, !dbg !387
  %29 = icmp samesign ult i64 %23, 62, !dbg !387
  br i1 %29, label %22, label %30, !dbg !387

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !387
  %exitcond.not = icmp eq i64 %19, %18, !dbg !387
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !387

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !387
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !388 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !389
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !389
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !389
  %5 = getelementptr i8, ptr %4, i64 35840, !dbg !389
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !389
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !389
  %7 = load ptr, ptr %6, align 8, !dbg !389
  %8 = getelementptr i8, ptr %7, i64 28426240, !dbg !389
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !389
  %9 = load i32, ptr %2, align 16, !dbg !389
  %10 = zext i32 %9 to i64, !dbg !389
  %11 = lshr i64 %10, 4, !dbg !389
  %12 = mul nuw nsw i64 %11, 98, !dbg !389
  %13 = shl nuw nsw i64 %10, 6, !dbg !389
  %14 = and i64 %13, 960, !dbg !389
  br label %.preheader, !dbg !389

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !389

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !389
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !389
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !389
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !389
  store <2 x i32> %22, ptr %23, align 8, !dbg !389
  %24 = add nuw nsw i64 %19, 2, !dbg !389
  %25 = icmp samesign ult i64 %19, 62, !dbg !389
  br i1 %25, label %18, label %26, !dbg !389

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !389
  %exitcond.not = icmp eq i64 %27, 98, !dbg !389
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !389

28:                                               ; preds = %26
  ret i32 0, !dbg !389
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !390 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !391
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !391
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !391
  %5 = getelementptr i8, ptr %4, i64 39936, !dbg !391
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !391
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !391
  %7 = load ptr, ptr %6, align 8, !dbg !391
  %8 = getelementptr i8, ptr %7, i64 29229056, !dbg !391
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !391
  %9 = load i32, ptr %2, align 16, !dbg !391
  %10 = zext i32 %9 to i64, !dbg !391
  %11 = lshr i64 %10, 2, !dbg !391
  %12 = mul nuw nsw i64 %11, 112, !dbg !391
  %13 = shl nuw nsw i64 %10, 6, !dbg !391
  %14 = and i64 %13, 192, !dbg !391
  %15 = mul nsw i64 %11, -112, !dbg !391
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !391
  %17 = icmp samesign ugt i64 %16, -196, !dbg !391
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !391

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !391

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !391

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !391
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !391
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !391
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !391
  store <2 x i32> %26, ptr %27, align 8, !dbg !391
  %28 = add nuw nsw i64 %23, 2, !dbg !391
  %29 = icmp samesign ult i64 %23, 62, !dbg !391
  br i1 %29, label %22, label %30, !dbg !391

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !391
  %exitcond.not = icmp eq i64 %19, %18, !dbg !391
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !391

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !391
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !392 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !393
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !393
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !393
  %5 = getelementptr i8, ptr %4, i64 40960, !dbg !393
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !393
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !393
  %7 = load ptr, ptr %6, align 8, !dbg !393
  %8 = getelementptr i8, ptr %7, i64 29429760, !dbg !393
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !393
  %9 = load i32, ptr %2, align 16, !dbg !393
  %10 = zext i32 %9 to i64, !dbg !393
  %11 = lshr i64 %10, 2, !dbg !393
  %12 = mul nuw nsw i64 %11, 112, !dbg !393
  %13 = shl nuw nsw i64 %10, 6, !dbg !393
  %14 = and i64 %13, 192, !dbg !393
  %15 = mul nsw i64 %11, -112, !dbg !393
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 -84), !dbg !393
  %17 = icmp samesign ugt i64 %16, -196, !dbg !393
  br i1 %17, label %.preheader.preheader, label %._crit_edge, !dbg !393

.preheader.preheader:                             ; preds = %3
  %18 = add nsw i64 %16, 195
  br label %.preheader, !dbg !393

.preheader:                                       ; preds = %.preheader.preheader, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %.preheader.preheader ]
  %20 = add nuw nsw i64 %19, %12
  %.idx = shl i64 %20, 10
  %21 = getelementptr i8, ptr %8, i64 %.idx
  br label %22, !dbg !393

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = or disjoint i64 %23, %14, !dbg !393
  %25 = getelementptr [4 x i8], ptr %5, i64 %24, !dbg !393
  %26 = load <2 x i32>, ptr %25, align 8, !dbg !393
  %27 = getelementptr [4 x i8], ptr %21, i64 %24, !dbg !393
  store <2 x i32> %26, ptr %27, align 8, !dbg !393
  %28 = add nuw nsw i64 %23, 2, !dbg !393
  %29 = icmp samesign ult i64 %23, 62, !dbg !393
  br i1 %29, label %22, label %30, !dbg !393

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %19, 1, !dbg !393
  %exitcond.not = icmp eq i64 %19, %18, !dbg !393
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !393

._crit_edge:                                      ; preds = %30, %3
  ret i32 0, !dbg !393
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !394 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !395
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !395
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !395
  %5 = getelementptr i8, ptr %4, i64 41984, !dbg !395
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !395
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !395
  %7 = load ptr, ptr %6, align 8, !dbg !395
  %8 = getelementptr i8, ptr %7, i64 29630464, !dbg !395
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !395
  %9 = load i32, ptr %2, align 16, !dbg !395
  %10 = zext i32 %9 to i64, !dbg !395
  %11 = lshr i64 %10, 4, !dbg !395
  %12 = mul nuw nsw i64 %11, 98, !dbg !395
  %13 = shl nuw nsw i64 %10, 6, !dbg !395
  %14 = and i64 %13, 960, !dbg !395
  br label %.preheader, !dbg !395

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 12
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !395

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !395
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !395
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !395
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !395
  store <2 x i32> %22, ptr %23, align 8, !dbg !395
  %24 = add nuw nsw i64 %19, 2, !dbg !395
  %25 = icmp samesign ult i64 %19, 62, !dbg !395
  br i1 %25, label %18, label %26, !dbg !395

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !395
  %exitcond.not = icmp eq i64 %27, 98, !dbg !395
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !395

28:                                               ; preds = %26
  ret i32 0, !dbg !395
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !396 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !397
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !397
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !397
  %5 = getelementptr i8, ptr %4, i64 46080, !dbg !397
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !397
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !397
  %7 = load ptr, ptr %6, align 8, !dbg !397
  %8 = getelementptr i8, ptr %7, i64 30433280, !dbg !397
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !397
  %9 = load i32, ptr %2, align 16, !dbg !397
  %10 = zext i32 %9 to i64, !dbg !397
  %11 = lshr i64 %10, 3, !dbg !397
  %12 = mul nuw nsw i64 %11, 98, !dbg !397
  %13 = shl nuw nsw i64 %10, 6, !dbg !397
  %14 = and i64 %13, 448, !dbg !397
  br label %.preheader, !dbg !397

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !397

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !397
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !397
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !397
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !397
  store <2 x i32> %22, ptr %23, align 8, !dbg !397
  %24 = add nuw nsw i64 %19, 2, !dbg !397
  %25 = icmp samesign ult i64 %19, 62, !dbg !397
  br i1 %25, label %18, label %26, !dbg !397

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !397
  %exitcond.not = icmp eq i64 %27, 98, !dbg !397
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !397

28:                                               ; preds = %26
  ret i32 0, !dbg !397
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !398 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !399
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !399
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !399
  %5 = getelementptr i8, ptr %4, i64 48128, !dbg !399
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !399
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !399
  %7 = load ptr, ptr %6, align 8, !dbg !399
  %8 = getelementptr i8, ptr %7, i64 30834688, !dbg !399
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !399
  %9 = load i32, ptr %2, align 16, !dbg !399
  %10 = zext i32 %9 to i64, !dbg !399
  %11 = shl nuw nsw i64 %10, 7, !dbg !399
  br label %.preheader, !dbg !399

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 13
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !399

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !399
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !399
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !399
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !399
  store <2 x i32> %18, ptr %19, align 8, !dbg !399
  %20 = add nuw nsw i64 %15, 2, !dbg !399
  %21 = icmp samesign ult i64 %15, 126, !dbg !399
  br i1 %21, label %14, label %22, !dbg !399

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !399
  %exitcond.not = icmp eq i64 %23, 49, !dbg !399
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !399

24:                                               ; preds = %22
  ret i32 0, !dbg !399
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !400 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !401
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !401
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !401
  %5 = getelementptr i8, ptr %4, i64 56320, !dbg !401
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !401
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !401
  %7 = load ptr, ptr %6, align 8, !dbg !401
  %8 = getelementptr i8, ptr %7, i64 31236096, !dbg !401
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !401
  %9 = load i32, ptr %2, align 16, !dbg !401
  %10 = zext i32 %9 to i64, !dbg !401
  %11 = shl nuw nsw i64 %10, 7, !dbg !401
  br label %.preheader, !dbg !401

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 11
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !401

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !401
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !401
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !401
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !401
  store <2 x i32> %18, ptr %19, align 8, !dbg !401
  %20 = add nuw nsw i64 %15, 2, !dbg !401
  %21 = icmp samesign ult i64 %15, 126, !dbg !401
  br i1 %21, label %14, label %22, !dbg !401

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !401
  %exitcond.not = icmp eq i64 %23, 49, !dbg !401
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !401

24:                                               ; preds = %22
  ret i32 0, !dbg !401
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !402 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !403
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !403
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !403
  %5 = getelementptr i8, ptr %4, i64 58368, !dbg !403
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !403
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !403
  %7 = load ptr, ptr %6, align 8, !dbg !403
  %8 = getelementptr i8, ptr %7, i64 31336448, !dbg !403
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !403
  %9 = load i32, ptr %2, align 16, !dbg !403
  %10 = zext i32 %9 to i64, !dbg !403
  %11 = shl nuw nsw i64 %10, 7, !dbg !403
  br label %.preheader, !dbg !403

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 13
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !403

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !403
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !403
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !403
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !403
  store <2 x i32> %18, ptr %19, align 8, !dbg !403
  %20 = add nuw nsw i64 %15, 2, !dbg !403
  %21 = icmp samesign ult i64 %15, 126, !dbg !403
  br i1 %21, label %14, label %22, !dbg !403

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !403
  %exitcond.not = icmp eq i64 %23, 49, !dbg !403
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !403

24:                                               ; preds = %22
  ret i32 0, !dbg !403
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !404 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !405
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !405
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !405
  %5 = getelementptr i8, ptr %4, i64 66560, !dbg !405
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !405
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !405
  %7 = load ptr, ptr %6, align 8, !dbg !405
  %8 = getelementptr i8, ptr %7, i64 31737856, !dbg !405
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !405
  %9 = load i32, ptr %2, align 16, !dbg !405
  %10 = zext i32 %9 to i64, !dbg !405
  %11 = shl nuw nsw i64 %10, 7, !dbg !405
  br label %.preheader, !dbg !405

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 11
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !405

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !405
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !405
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !405
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !405
  store <2 x i32> %18, ptr %19, align 8, !dbg !405
  %20 = add nuw nsw i64 %15, 2, !dbg !405
  %21 = icmp samesign ult i64 %15, 126, !dbg !405
  br i1 %21, label %14, label %22, !dbg !405

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !405
  %exitcond.not = icmp eq i64 %23, 49, !dbg !405
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !405

24:                                               ; preds = %22
  ret i32 0, !dbg !405
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !406 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !407
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !407
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !407
  %5 = getelementptr i8, ptr %4, i64 68608, !dbg !407
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !407
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !407
  %7 = load ptr, ptr %6, align 8, !dbg !407
  %8 = getelementptr i8, ptr %7, i64 31838208, !dbg !407
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !407
  %9 = load i32, ptr %2, align 16, !dbg !407
  %10 = zext i32 %9 to i64, !dbg !407
  %11 = shl nuw nsw i64 %10, 7, !dbg !407
  br label %.preheader, !dbg !407

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 11
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !407

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !407
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !407
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !407
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !407
  store <2 x i32> %18, ptr %19, align 8, !dbg !407
  %20 = add nuw nsw i64 %15, 2, !dbg !407
  %21 = icmp samesign ult i64 %15, 126, !dbg !407
  br i1 %21, label %14, label %22, !dbg !407

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !407
  %exitcond.not = icmp eq i64 %23, 49, !dbg !407
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !407

24:                                               ; preds = %22
  ret i32 0, !dbg !407
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !408 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !409
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !409
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !409
  %5 = getelementptr i8, ptr %4, i64 70656, !dbg !409
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !409
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !409
  %7 = load ptr, ptr %6, align 8, !dbg !409
  %8 = getelementptr i8, ptr %7, i64 31938560, !dbg !409
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !409
  %9 = load i32, ptr %2, align 16, !dbg !409
  %10 = zext i32 %9 to i64, !dbg !409
  %11 = shl nuw nsw i64 %10, 7, !dbg !409
  br label %.preheader, !dbg !409

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 13
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !409

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !409
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !409
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !409
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !409
  store <2 x i32> %18, ptr %19, align 8, !dbg !409
  %20 = add nuw nsw i64 %15, 2, !dbg !409
  %21 = icmp samesign ult i64 %15, 126, !dbg !409
  br i1 %21, label %14, label %22, !dbg !409

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !409
  %exitcond.not = icmp eq i64 %23, 49, !dbg !409
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !409

24:                                               ; preds = %22
  ret i32 0, !dbg !409
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !410 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !411
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !411
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !411
  %5 = getelementptr i8, ptr %4, i64 78848, !dbg !411
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !411
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !411
  %7 = load ptr, ptr %6, align 8, !dbg !411
  %8 = getelementptr i8, ptr %7, i64 32339968, !dbg !411
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !411
  %9 = load i32, ptr %2, align 16, !dbg !411
  %10 = zext i32 %9 to i64, !dbg !411
  %11 = shl nuw nsw i64 %10, 7, !dbg !411
  br label %.preheader, !dbg !411

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 11
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !411

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !411
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !411
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !411
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !411
  store <2 x i32> %18, ptr %19, align 8, !dbg !411
  %20 = add nuw nsw i64 %15, 2, !dbg !411
  %21 = icmp samesign ult i64 %15, 126, !dbg !411
  br i1 %21, label %14, label %22, !dbg !411

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !411
  %exitcond.not = icmp eq i64 %23, 49, !dbg !411
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !411

24:                                               ; preds = %22
  ret i32 0, !dbg !411
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !412 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !413
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !413
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !413
  %5 = getelementptr i8, ptr %4, i64 80896, !dbg !413
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !413
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !413
  %7 = load ptr, ptr %6, align 8, !dbg !413
  %8 = getelementptr i8, ptr %7, i64 32440320, !dbg !413
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !413
  %9 = load i32, ptr %2, align 16, !dbg !413
  %10 = zext i32 %9 to i64, !dbg !413
  %11 = shl nuw nsw i64 %10, 7, !dbg !413
  br label %.preheader, !dbg !413

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 11
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !413

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !413
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !413
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !413
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !413
  store <2 x i32> %18, ptr %19, align 8, !dbg !413
  %20 = add nuw nsw i64 %15, 2, !dbg !413
  %21 = icmp samesign ult i64 %15, 126, !dbg !413
  br i1 %21, label %14, label %22, !dbg !413

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !413
  %exitcond.not = icmp eq i64 %23, 49, !dbg !413
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !413

24:                                               ; preds = %22
  ret i32 0, !dbg !413
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !414 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !415
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !415
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !415
  %5 = getelementptr i8, ptr %4, i64 82944, !dbg !415
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !415
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !415
  %7 = load ptr, ptr %6, align 8, !dbg !415
  %8 = getelementptr i8, ptr %7, i64 32540672, !dbg !415
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !415
  %9 = load i32, ptr %2, align 16, !dbg !415
  %10 = zext i32 %9 to i64, !dbg !415
  %11 = shl nuw nsw i64 %10, 7, !dbg !415
  br label %.preheader, !dbg !415

.preheader:                                       ; preds = %3, %22
  %12 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.idx = shl i64 %12, 13
  %13 = getelementptr i8, ptr %8, i64 %.idx
  br label %14, !dbg !415

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %20, %14 ]
  %16 = add nuw nsw i64 %15, %11, !dbg !415
  %17 = getelementptr [4 x i8], ptr %5, i64 %16, !dbg !415
  %18 = load <2 x i32>, ptr %17, align 8, !dbg !415
  %19 = getelementptr [4 x i8], ptr %13, i64 %16, !dbg !415
  store <2 x i32> %18, ptr %19, align 8, !dbg !415
  %20 = add nuw nsw i64 %15, 2, !dbg !415
  %21 = icmp samesign ult i64 %15, 126, !dbg !415
  br i1 %21, label %14, label %22, !dbg !415

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %12, 1, !dbg !415
  %exitcond.not = icmp eq i64 %23, 49, !dbg !415
  br i1 %exitcond.not, label %24, label %.preheader, !dbg !415

24:                                               ; preds = %22
  ret i32 0, !dbg !415
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !416 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !417
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !417
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !417
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !417
  %5 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !418
  %6 = load ptr, ptr %5, align 8, !dbg !418
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !418
  %7 = load i32, ptr %2, align 16, !dbg !417
  %8 = zext i32 %7 to i64, !dbg !417
  %9 = lshr i64 %8, 2, !dbg !417
  %10 = and i64 %9, 3, !dbg !417
  %11 = and i64 %8, 3, !dbg !417
  %12 = lshr i64 %8, 3, !dbg !417
  %13 = and i64 %12, 536870910, !dbg !417
  %14 = mul nuw nsw i64 %10, 56, !dbg !417
  %15 = mul nuw nsw i64 %11, 56, !dbg !417
  %16 = icmp samesign ult i64 %13, 3, !dbg !417
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !417

.lr.ph:                                           ; preds = %3
  %17 = sub nuw nsw i64 3, %13, !dbg !417
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 2), !dbg !417
  %19 = or disjoint i64 %15, 1
  br label %20, !dbg !417

20:                                               ; preds = %.lr.ph, %87
  %21 = phi i64 [ 0, %.lr.ph ], [ %88, %87 ]
  %22 = add nuw nsw i64 %21, %13, !dbg !417
  %.idx = mul nuw nsw i64 %22, 200704
  %23 = getelementptr i8, ptr %4, i64 %.idx
  br label %24, !dbg !417

24:                                               ; preds = %20, %85
  %25 = phi i64 [ 0, %20 ], [ %86, %85 ]
  %26 = add nuw nsw i64 %25, %14, !dbg !417
  %.idx25 = mul nuw nsw i64 %26, 896
  %27 = getelementptr i8, ptr %23, i64 %.idx25
  %28 = mul nuw nsw i64 %26, 690
  %29 = getelementptr i8, ptr %6, i64 %28
  %30 = getelementptr i8, ptr %29, i64 2070
  br label %31, !dbg !417

31:                                               ; preds = %24, %31
  %32 = phi i64 [ 0, %24 ], [ %83, %31 ]
  %33 = add nuw nsw i64 %32, %15, !dbg !417
  %34 = getelementptr [4 x i8], ptr %27, i64 %33, !dbg !417
  %35 = load <2 x float>, ptr %34, align 8, !dbg !417
  %36 = fdiv <2 x float> %35, splat (float 0x3FA264FD40000000), !dbg !417
  %37 = bitcast <2 x float> %36 to <2 x i32>, !dbg !417
  %38 = tail call <2 x float> @llvm.round.v2f32(<2 x float> %36), !dbg !417
  %39 = bitcast <2 x float> %38 to <2 x i32>, !dbg !417
  %40 = lshr <2 x i32> %37, splat (i32 23), !dbg !417
  %41 = and <2 x i32> %40, splat (i32 255), !dbg !417
  %42 = add nsw <2 x i32> %41, splat (i32 -127), !dbg !417
  %43 = lshr <2 x i32> %39, splat (i32 23), !dbg !417
  %44 = and <2 x i32> %43, splat (i32 255), !dbg !417
  %45 = icmp eq <2 x i32> %44, splat (i32 127), !dbg !417
  %46 = tail call <2 x i32> @llvm.usub.sat.v2i32(<2 x i32> %44, <2 x i32> splat (i32 128)), !dbg !417
  %47 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %46, <2 x i32> splat (i32 31)), !dbg !417
  %48 = lshr <2 x i32> splat (i32 8388607), %47, !dbg !417
  %49 = and <2 x i32> %48, %39, !dbg !417
  %50 = icmp ne <2 x i32> %49, zeroinitializer, !dbg !417
  %51 = or <2 x i1> %45, %50, !dbg !417
  %52 = icmp eq <2 x i32> %42, splat (i32 -1), !dbg !417
  %53 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %42, <2 x i32> zeroinitializer), !dbg !417
  %54 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %53, <2 x i32> splat (i32 31)), !dbg !417
  %55 = lshr <2 x i32> splat (i32 4194304), %54, !dbg !417
  %56 = select <2 x i1> %52, <2 x i32> zeroinitializer, <2 x i32> %55, !dbg !417
  %57 = lshr <2 x i32> splat (i32 8388607), %54, !dbg !417
  %58 = and <2 x i32> %57, %37, !dbg !417
  %59 = icmp eq <2 x i32> %58, %56, !dbg !417
  %60 = add nsw <2 x i32> %41, splat (i32 -126), !dbg !417
  %61 = icmp ult <2 x i32> %60, splat (i32 24), !dbg !417
  %62 = and <2 x i1> %61, %59, !dbg !417
  %63 = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %36), !dbg !417
  %64 = fsub contract <2 x float> %38, %63, !dbg !417
  %65 = and <2 x i1> %51, %62, !dbg !417
  %66 = select <2 x i1> %65, <2 x float> %64, <2 x float> %38, !dbg !417
  %67 = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %66, <2 x float> %36), !dbg !417
  %68 = fadd contract <2 x float> %67, zeroinitializer, !dbg !417
  %.inv = fcmp ole <2 x float> %68, splat (float -1.280000e+02), !dbg !417
  %69 = select <2 x i1> %.inv, <2 x float> splat (float -1.280000e+02), <2 x float> %68, !dbg !417
  %.inv26 = fcmp oge <2 x float> %69, splat (float 1.270000e+02), !dbg !417
  %70 = select <2 x i1> %.inv26, <2 x float> splat (float 1.270000e+02), <2 x float> %69, !dbg !417
  %71 = fptosi <2 x float> %70 to <2 x i8>, !dbg !417
  %72 = shufflevector <2 x i8> %71, <2 x i8> poison, <1 x i32> zeroinitializer, !dbg !417
  %73 = shufflevector <2 x i8> %71, <2 x i8> poison, <1 x i32> <i32 1>, !dbg !417
  %74 = mul nuw nsw i64 %33, 3, !dbg !417
  %75 = getelementptr i8, ptr %30, i64 %74, !dbg !417
  %76 = getelementptr i8, ptr %75, i64 9, !dbg !417
  %77 = getelementptr i8, ptr %76, i64 %22, !dbg !417
  store <1 x i8> %72, ptr %77, align 1, !dbg !417
  %78 = add nuw nsw i64 %19, %32, !dbg !417
  %79 = mul nuw nsw i64 %78, 3, !dbg !417
  %80 = getelementptr i8, ptr %30, i64 %79, !dbg !417
  %81 = getelementptr i8, ptr %80, i64 9, !dbg !417
  %82 = getelementptr i8, ptr %81, i64 %22, !dbg !417
  store <1 x i8> %73, ptr %82, align 1, !dbg !417
  %83 = add nuw nsw i64 %32, 2, !dbg !417
  %84 = icmp samesign ult i64 %32, 54, !dbg !417
  br i1 %84, label %31, label %85, !dbg !417

85:                                               ; preds = %31
  %86 = add nuw nsw i64 %25, 1, !dbg !417
  %exitcond.not = icmp eq i64 %86, 56, !dbg !417
  br i1 %exitcond.not, label %87, label %24, !dbg !417

87:                                               ; preds = %85
  %88 = add nuw nsw i64 %21, 1, !dbg !417
  %exitcond27.not = icmp eq i64 %88, %18, !dbg !417
  br i1 %exitcond27.not, label %._crit_edge, label %20, !dbg !417

._crit_edge:                                      ; preds = %87, %3
  ret i32 0, !dbg !417
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !419 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !420
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !420
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !420
  %5 = getelementptr i8, ptr %4, i64 4032, !dbg !420
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !420
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !420
  %7 = load ptr, ptr %6, align 8, !dbg !420
  %8 = getelementptr i8, ptr %7, i64 158720, !dbg !420
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !420
  %9 = load i32, ptr %2, align 16, !dbg !420
  %10 = zext i32 %9 to i64, !dbg !420
  %.idx = shl nuw nsw i64 %10, 14
  %11 = getelementptr i8, ptr %8, i64 %.idx
  br label %.preheader, !dbg !420

.preheader:                                       ; preds = %3, %21
  %12 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %.idx23 = shl i64 %12, 8
  %13 = getelementptr i8, ptr %11, i64 %.idx23
  br label %14, !dbg !420

14:                                               ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %.preheader ], [ %19, %14 ]
  %16 = getelementptr [4 x i8], ptr %5, i64 %15, !dbg !420
  %17 = load <2 x i32>, ptr %16, align 8, !dbg !420
  %18 = getelementptr [4 x i8], ptr %13, i64 %15, !dbg !420
  store <2 x i32> %17, ptr %18, align 8, !dbg !420
  %19 = add nuw nsw i64 %15, 2, !dbg !420
  %20 = icmp samesign ult i64 %15, 62, !dbg !420
  br i1 %20, label %14, label %21, !dbg !420

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1, !dbg !420
  %exitcond.not = icmp eq i64 %22, 64, !dbg !420
  br i1 %exitcond.not, label %23, label %.preheader, !dbg !420

23:                                               ; preds = %21
  ret i32 0, !dbg !420
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_2_generic_112x112x7x7x3_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !421 {
  %.elt21 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !422
  %.unpack22 = load ptr, ptr %.elt21, align 16, !dbg !422
  %4 = load ptr, ptr %.unpack22, align 8, !dbg !422
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !422
  %5 = getelementptr i8, ptr %.unpack22, i64 8, !dbg !423
  %6 = load ptr, ptr %5, align 8, !dbg !423
  %7 = getelementptr i8, ptr %6, i64 3369984, !dbg !423
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !423
  %8 = load i32, ptr %2, align 16, !dbg !423
  %9 = zext i32 %8 to i64, !dbg !423
  %10 = lshr i64 %9, 2, !dbg !423
  %11 = and i64 %9, 3, !dbg !423
  %12 = shl nuw nsw i64 %10, 4, !dbg !423
  %13 = mul nuw nsw i64 %11, 28, !dbg !423
  %14 = shl nuw nsw i64 %10, 5
  %15 = mul nuw nsw i64 %11, 56
  br label %.preheader25, !dbg !423

.preheader25:                                     ; preds = %3, %54
  %16 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = add nuw nsw i64 %17, %14
  %19 = add nuw nsw i64 %16, %12
  %20 = mul nuw nsw i64 %19, 16464
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 %20
  br label %.preheader, !dbg !423

.preheader:                                       ; preds = %.preheader25, %52
  %22 = phi i64 [ 0, %.preheader25 ], [ %53, %52 ]
  %23 = shl nuw nsw i64 %22, 1
  %24 = add nuw nsw i64 %23, %15
  %25 = add nuw nsw i64 %22, %13
  %26 = mul nuw nsw i64 %25, 147
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %26
  br label %28, !dbg !423

28:                                               ; preds = %.preheader, %50
  %29 = phi i64 [ 0, %.preheader ], [ %51, %50 ]
  %30 = add nuw nsw i64 %18, %29, !dbg !423
  %31 = mul nuw nsw i64 %30, 690
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 %31
  %33 = mul nuw nsw i64 %29, 21
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 %33
  br label %35, !dbg !423

35:                                               ; preds = %28, %48
  %36 = phi i64 [ 0, %28 ], [ %49, %48 ]
  %37 = add nuw nsw i64 %24, %36, !dbg !423
  %38 = mul nuw nsw i64 %37, 3
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 %38
  %40 = mul nuw nsw i64 %36, 3
  %41 = getelementptr inbounds nuw i8, ptr %34, i64 %40
  br label %42, !dbg !423

42:                                               ; preds = %35, %42
  %43 = phi i64 [ 0, %35 ], [ %47, %42 ]
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43, !dbg !423
  %45 = load i8, ptr %44, align 1, !dbg !423
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 %43, !dbg !423
  store i8 %45, ptr %46, align 1, !dbg !423
  %47 = add nuw nsw i64 %43, 1, !dbg !423
  %exitcond.not = icmp eq i64 %47, 3, !dbg !423
  br i1 %exitcond.not, label %48, label %42, !dbg !423

48:                                               ; preds = %42
  %49 = add nuw nsw i64 %36, 1, !dbg !423
  %exitcond26.not = icmp eq i64 %49, 7, !dbg !423
  br i1 %exitcond26.not, label %50, label %35, !dbg !423

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %29, 1, !dbg !423
  %exitcond27.not = icmp eq i64 %51, 7, !dbg !423
  br i1 %exitcond27.not, label %52, label %28, !dbg !423

52:                                               ; preds = %50
  %53 = add nuw nsw i64 %22, 1, !dbg !423
  %exitcond28.not = icmp eq i64 %53, 28, !dbg !423
  br i1 %exitcond28.not, label %54, label %.preheader, !dbg !423

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %16, 1, !dbg !423
  %exitcond29.not = icmp eq i64 %55, 16, !dbg !423
  br i1 %exitcond29.not, label %56, label %.preheader25, !dbg !423

56:                                               ; preds = %54
  ret i32 0, !dbg !423
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !424 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !425
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !425
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !425
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !425
  %6 = load ptr, ptr %5, align 8, !dbg !425
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !425
  %8 = load ptr, ptr %7, align 8, !dbg !425
  %9 = getelementptr i8, ptr %8, i64 5213952, !dbg !425
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !425
  %10 = load i32, ptr %2, align 16, !dbg !425
  %11 = zext i32 %10 to i64, !dbg !425
  %12 = shl nuw nsw i64 %11, 2, !dbg !425
  %13 = and i64 %12, 17179869168, !dbg !425
  %14 = shl nuw nsw i64 %11, 4, !dbg !425
  %15 = and i64 %14, 48, !dbg !425
  %16 = alloca [256 x i8], align 1, !dbg !425
  %17 = mul nuw nsw i64 %13, 147, !dbg !425
  %18 = ptrtoint ptr %4 to i64, !dbg !425
  %19 = add i64 %18, 3369984, !dbg !425
  %20 = add i64 %19, %17, !dbg !425
  %21 = ptrtoint ptr %6 to i64, !dbg !425
  %22 = add i64 %21, 4288, !dbg !425
  %23 = add i64 %22, %15, !dbg !425
  %24 = ptrtoint ptr %16 to i64, !dbg !425
  %25 = shl nuw nsw i64 %13, 8, !dbg !425
  %26 = shl nuw nsw i64 %15, 2, !dbg !425
  %27 = add i64 %18, 158720, !dbg !425
  %28 = add i64 %27, %26, !dbg !425
  %29 = add i64 %28, %25, !dbg !425
  %30 = and i64 %20, 9223372036854775807, !dbg !425
  %31 = and i64 %23, 9223372036854775807, !dbg !425
  %32 = and i64 %24, 9223372036854775807, !dbg !425
  %33 = and i64 %29, 9223372036854775807, !dbg !425
  call void asm sideeffect "fence", ""() #14, !dbg !425
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !425
  call void @llvm.riscv.config(i64 2, i64 4278046838545711120), !dbg !425
  call void @llvm.riscv.config(i64 4575657221409472769, i64 147), !dbg !425
  call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !425
  call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !425
  call void @llvm.riscv.loop.ws.config.bounds(i64 55834574848, i64 42949738497), !dbg !425
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !425
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !425
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 147, i64 64), !dbg !425
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 16), !dbg !425
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !425
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !425
  call void asm sideeffect "fence", ""() #14, !dbg !425
  %invariant.gep25 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %15, !dbg !426
  br label %.preheader, !dbg !426

.preheader:                                       ; preds = %3, %75
  %34 = phi i64 [ 0, %3 ], [ %76, %75 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 %35
  %37 = add nuw nsw i64 %34, %13
  %.idx = shl nuw nsw i64 %37, 8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep25, i64 %.idx, !dbg !426
  br label %38, !dbg !426

38:                                               ; preds = %.preheader, %38
  %39 = phi i64 [ 0, %.preheader ], [ %74, %38 ]
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 %39, !dbg !426
  %41 = load i8, ptr %40, align 1, !dbg !426
  %42 = call i8 @llvm.smax.i8(i8 %41, i8 0), !dbg !427
  %43 = uitofp nneg i8 %42 to float, !dbg !427
  %44 = bitcast float %43 to i32, !dbg !428
  %45 = lshr i32 %44, 23, !dbg !428
  %46 = add nsw i32 %45, -127, !dbg !428
  %47 = icmp eq i32 %46, 0, !dbg !428
  %48 = call i32 @llvm.usub.sat.i32(i32 %45, i32 128), !dbg !428
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 31), !dbg !428
  %50 = lshr i32 8388607, %49, !dbg !428
  %51 = and i32 %50, %44, !dbg !428
  %52 = icmp ne i32 %51, 0, !dbg !428
  %53 = or i1 %47, %52, !dbg !428
  %54 = icmp eq i32 %46, -1, !dbg !428
  %55 = call i32 @llvm.smax.i32(i32 %46, i32 0), !dbg !428
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !428
  %57 = lshr i32 4194304, %56, !dbg !428
  %58 = select i1 %54, i32 0, i32 %57, !dbg !428
  %59 = lshr i32 8388607, %56, !dbg !428
  %60 = and i32 %59, %44, !dbg !428
  %61 = icmp eq i32 %60, %58, !dbg !428
  %62 = add nsw i32 %44, -1056964608, !dbg !428
  %63 = icmp ult i32 %62, 201326592, !dbg !428
  %64 = and i1 %63, %61, !dbg !428
  %65 = add nsw i8 %42, -1, !dbg !428
  %66 = sitofp i8 %65 to float, !dbg !428
  %67 = and i1 %53, %64, !dbg !428
  %68 = call float @llvm.fabs.f32(float %66), !dbg !428
  %69 = select i1 %67, float %68, float %43, !dbg !428
  %.inv = fcmp oge float %69, 1.270000e+02, !dbg !428
  %70 = select i1 %.inv, float 1.270000e+02, float %69, !dbg !428
  %71 = fptosi float %70 to i8, !dbg !428
  %72 = sitofp i8 %71 to float, !dbg !426
  %73 = fmul nnan contract float %72, 0x3FD76BBD60000000, !dbg !426
  %gep24 = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %39, !dbg !426
  store float %73, ptr %gep24, align 4, !dbg !426
  %74 = add nuw nsw i64 %39, 1, !dbg !426
  %exitcond.not = icmp eq i64 %74, 16, !dbg !426
  br i1 %exitcond.not, label %75, label %38, !dbg !426

75:                                               ; preds = %38
  %76 = add nuw nsw i64 %34, 1, !dbg !426
  %exitcond26.not = icmp eq i64 %76, 16, !dbg !426
  br i1 %exitcond26.not, label %77, label %.preheader, !dbg !426

77:                                               ; preds = %75
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !425
  ret i32 0, !dbg !425
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_4_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !429 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !430
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !430
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !430
  %5 = getelementptr i8, ptr %4, i64 5213952, !dbg !430
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !430
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !431
  %7 = load ptr, ptr %6, align 8, !dbg !431
  %8 = getelementptr i8, ptr %7, i64 8425216, !dbg !431
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !431
  %9 = load i32, ptr %2, align 16, !dbg !431
  %10 = zext i32 %9 to i64, !dbg !431
  %11 = shl nuw nsw i64 %10, 2, !dbg !431
  %12 = and i64 %11, 17179869176, !dbg !431
  %13 = trunc i32 %9 to i1, !dbg !431
  %14 = select i1 %13, i64 56, i64 0, !dbg !431
  br label %.preheader26, !dbg !431

.preheader26:                                     ; preds = %3, %33
  %15 = phi i64 [ 0, %3 ], [ %34, %33 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = mul nuw nsw i64 %16, 28672
  %17 = getelementptr i8, ptr %5, i64 %.idx
  %.idx24 = mul nuw nsw i64 %16, 29184
  %18 = getelementptr i8, ptr %8, i64 %.idx24
  br label %.preheader, !dbg !431

.preheader:                                       ; preds = %.preheader26, %31
  %19 = phi i64 [ 0, %.preheader26 ], [ %32, %31 ]
  %20 = add nuw nsw i64 %19, %14
  %.idx23 = shl i64 %20, 8
  %21 = getelementptr i8, ptr %17, i64 %.idx23
  %22 = getelementptr i8, ptr %18, i64 %.idx23
  %23 = getelementptr i8, ptr %22, i64 29440
  br label %24, !dbg !431

24:                                               ; preds = %.preheader, %24
  %25 = phi i64 [ 0, %.preheader ], [ %29, %24 ]
  %26 = getelementptr [4 x i8], ptr %21, i64 %25, !dbg !431
  %27 = load <2 x float>, ptr %26, align 8, !dbg !431
  %28 = getelementptr [4 x i8], ptr %23, i64 %25, !dbg !431
  store <2 x float> %27, ptr %28, align 8, !dbg !431
  %29 = add nuw nsw i64 %25, 2, !dbg !431
  %30 = icmp samesign ult i64 %25, 62, !dbg !431
  br i1 %30, label %24, label %31, !dbg !431

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %19, 1, !dbg !431
  %exitcond.not = icmp eq i64 %32, 56, !dbg !431
  br i1 %exitcond.not, label %33, label %.preheader, !dbg !431

33:                                               ; preds = %31
  %34 = add nuw nsw i64 %15, 1, !dbg !431
  %exitcond27.not = icmp eq i64 %34, 8, !dbg !431
  br i1 %exitcond27.not, label %35, label %.preheader26, !dbg !431

35:                                               ; preds = %33
  ret i32 0, !dbg !431
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_5_conv_64x56x56x3x3_f32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !432 {
  %.sroa.048 = alloca <2 x float>, align 64, !dbg !433
  %.elt23 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !433
  %.unpack24 = load ptr, ptr %.elt23, align 16, !dbg !433
  %4 = load ptr, ptr %.unpack24, align 8, !dbg !433
  %5 = getelementptr i8, ptr %4, i64 8425216, !dbg !433
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !433
  %6 = getelementptr i8, ptr %.unpack24, i64 8, !dbg !433
  %7 = load ptr, ptr %6, align 8, !dbg !433
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !433
  %8 = load i32, ptr %2, align 16, !dbg !433
  %9 = zext i32 %8 to i64, !dbg !433
  %10 = lshr i64 %9, 1, !dbg !433
  %11 = and i64 %10, 1, !dbg !433
  %12 = and i64 %9, 1, !dbg !433
  %13 = shl nuw nsw i64 %9, 1, !dbg !433
  %14 = and i64 %13, 8589934584, !dbg !433
  %15 = mul nuw nsw i64 %11, 28, !dbg !433
  %16 = mul nuw nsw i64 %12, 28, !dbg !433
  %17 = mul nuw nsw i64 %11, 56
  %18 = mul nuw nsw i64 %12, 56
  %19 = or disjoint i64 %16, 1
  %.sroa.048.4.gep47.sroa_idx50 = getelementptr inbounds nuw i8, ptr %.sroa.048, i64 4, !dbg !433
  %.sroa.048.4..sroa_idx49 = getelementptr inbounds nuw i8, ptr %.sroa.048, i64 4
  br label %20, !dbg !433

20:                                               ; preds = %3, %97
  %21 = phi i64 [ 0, %3 ], [ %98, %97 ]
  %22 = or disjoint i64 %21, %14, !dbg !433
  %invariant.gep33 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %22
  %invariant.gep45 = getelementptr i8, ptr %7, i64 %22, !dbg !433
  br label %.preheader32, !dbg !433

.preheader32:                                     ; preds = %20, %95
  %23 = phi i64 [ 0, %20 ], [ %96, %95 ]
  %24 = shl nuw nsw i64 %23, 1
  %25 = add nuw nsw i64 %24, %17
  %26 = add nuw nsw i64 %23, %15
  %27 = mul nuw nsw i64 %26, 3584
  %gep46 = getelementptr i8, ptr %invariant.gep45, i64 %27, !dbg !433
  br label %.preheader31, !dbg !433

.preheader31:                                     ; preds = %.preheader32, %50
  %28 = phi i64 [ 0, %.preheader32 ], [ %93, %50 ]
  store float 0xFFF0000000000000, ptr %.sroa.048, align 64, !dbg !433
  store float 0xFFF0000000000000, ptr %.sroa.048.4..sroa_idx49, align 4, !dbg !433
  br label %.preheader30, !dbg !433

.preheader30:                                     ; preds = %.preheader31, %48
  %29 = phi i64 [ %49, %48 ], [ 0, %.preheader31 ]
  %30 = add nuw nsw i64 %25, %29, !dbg !433
  %.idx = mul nuw nsw i64 %30, 29184
  %gep34 = getelementptr inbounds nuw i8, ptr %invariant.gep33, i64 %.idx
  br label %31, !dbg !433

31:                                               ; preds = %.preheader30, %47
  %32 = phi i1 [ true, %.preheader30 ], [ false, %47 ]
  %33 = phi i64 [ 0, %.preheader30 ], [ 2, %47 ]
  %34 = or disjoint i64 %33, %18
  br label %.preheader, !dbg !433

.preheader:                                       ; preds = %31, %46
  %exitcond.not = phi i1 [ false, %31 ], [ true, %46 ]
  %.sroa.phi = phi ptr [ %.sroa.048, %31 ], [ %.sroa.048.4.gep47.sroa_idx50, %46 ]
  %35 = phi i64 [ 0, %31 ], [ 1, %46 ]
  %reass.add = or disjoint i64 %35, %28
  %reass.mul = shl nuw i64 %reass.add, 1
  %36 = add nuw nsw i64 %34, %reass.mul
  %.promoted = load float, ptr %.sroa.phi, align 4
  br label %37, !dbg !433

37:                                               ; preds = %.preheader, %37
  %38 = phi i1 [ %32, %.preheader ], [ false, %37 ]
  %39 = phi i64 [ 0, %.preheader ], [ 1, %37 ]
  %40 = phi float [ %.promoted, %.preheader ], [ %45, %37 ]
  %41 = or disjoint i64 %36, %39, !dbg !433
  %.idx28 = shl nuw nsw i64 %41, 8, !dbg !433
  %gep = getelementptr inbounds nuw i8, ptr %gep34, i64 %.idx28, !dbg !433
  %42 = load float, ptr %gep, align 4, !dbg !433
  %.inv29 = fcmp ole float %40, %42
  %43 = fcmp uno float %42, 0.000000e+00
  %44 = select i1 %43, i1 true, i1 %.inv29
  %45 = select i1 %44, float %42, float %40
  br i1 %38, label %37, label %46, !dbg !433

46:                                               ; preds = %37
  store float %45, ptr %.sroa.phi, align 4, !dbg !433
  br i1 %exitcond.not, label %47, label %.preheader, !dbg !433

47:                                               ; preds = %46
  br i1 %32, label %31, label %48, !dbg !433

48:                                               ; preds = %47
  %49 = add nuw nsw i64 %29, 1, !dbg !433
  %exitcond38.not = icmp eq i64 %49, 3, !dbg !433
  br i1 %exitcond38.not, label %50, label %.preheader30, !dbg !433

50:                                               ; preds = %48
  %.sroa.048.0..sroa.048.0. = load <2 x float>, ptr %.sroa.048, align 64, !dbg !434
  %51 = fdiv <2 x float> %.sroa.048.0..sroa.048.0., splat (float 0x3FD76BBD60000000), !dbg !434
  %52 = bitcast <2 x float> %51 to <2 x i32>, !dbg !434
  %53 = tail call <2 x float> @llvm.round.v2f32(<2 x float> %51), !dbg !434
  %54 = bitcast <2 x float> %53 to <2 x i32>, !dbg !434
  %55 = lshr <2 x i32> %52, splat (i32 23), !dbg !434
  %56 = and <2 x i32> %55, splat (i32 255), !dbg !434
  %57 = add nsw <2 x i32> %56, splat (i32 -127), !dbg !434
  %58 = lshr <2 x i32> %54, splat (i32 23), !dbg !434
  %59 = and <2 x i32> %58, splat (i32 255), !dbg !434
  %60 = icmp eq <2 x i32> %59, splat (i32 127), !dbg !434
  %61 = tail call <2 x i32> @llvm.usub.sat.v2i32(<2 x i32> %59, <2 x i32> splat (i32 128)), !dbg !434
  %62 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %61, <2 x i32> splat (i32 31)), !dbg !434
  %63 = lshr <2 x i32> splat (i32 8388607), %62, !dbg !434
  %64 = and <2 x i32> %63, %54, !dbg !434
  %65 = icmp ne <2 x i32> %64, zeroinitializer, !dbg !434
  %66 = or <2 x i1> %60, %65, !dbg !434
  %67 = icmp eq <2 x i32> %57, splat (i32 -1), !dbg !434
  %68 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %57, <2 x i32> zeroinitializer), !dbg !434
  %69 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %68, <2 x i32> splat (i32 31)), !dbg !434
  %70 = lshr <2 x i32> splat (i32 4194304), %69, !dbg !434
  %71 = select <2 x i1> %67, <2 x i32> zeroinitializer, <2 x i32> %70, !dbg !434
  %72 = lshr <2 x i32> splat (i32 8388607), %69, !dbg !434
  %73 = and <2 x i32> %72, %52, !dbg !434
  %74 = icmp eq <2 x i32> %73, %71, !dbg !434
  %75 = add nsw <2 x i32> %56, splat (i32 -126), !dbg !434
  %76 = icmp ult <2 x i32> %75, splat (i32 24), !dbg !434
  %77 = and <2 x i1> %76, %74, !dbg !434
  %78 = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %51), !dbg !434
  %79 = fsub contract <2 x float> %53, %78, !dbg !434
  %80 = and <2 x i1> %66, %77, !dbg !434
  %81 = select <2 x i1> %80, <2 x float> %79, <2 x float> %53, !dbg !434
  %82 = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %81, <2 x float> %51), !dbg !434
  %83 = fadd contract <2 x float> %82, zeroinitializer, !dbg !434
  %.inv = fcmp ole <2 x float> %83, splat (float -1.280000e+02), !dbg !434
  %84 = select <2 x i1> %.inv, <2 x float> splat (float -1.280000e+02), <2 x float> %83, !dbg !434
  %.inv27 = fcmp oge <2 x float> %84, splat (float 1.270000e+02), !dbg !434
  %85 = select <2 x i1> %.inv27, <2 x float> splat (float 1.270000e+02), <2 x float> %84, !dbg !434
  %86 = fptosi <2 x float> %85 to <2 x i8>, !dbg !434
  %87 = shufflevector <2 x i8> %86, <2 x i8> poison, <1 x i32> zeroinitializer, !dbg !433
  %88 = shufflevector <2 x i8> %86, <2 x i8> poison, <1 x i32> <i32 1>, !dbg !433
  %89 = add nuw nsw i64 %28, %16, !dbg !433
  %90 = shl i64 %89, 6, !dbg !433
  %gep35 = getelementptr i8, ptr %gep46, i64 %90, !dbg !433
  store <1 x i8> %87, ptr %gep35, align 1, !dbg !433
  %91 = add nuw nsw i64 %19, %28, !dbg !433
  %92 = shl i64 %91, 6, !dbg !433
  %gep37 = getelementptr i8, ptr %gep46, i64 %92, !dbg !433
  store <1 x i8> %88, ptr %gep37, align 1, !dbg !433
  %93 = add nuw nsw i64 %28, 2, !dbg !433
  %94 = icmp samesign ult i64 %28, 26, !dbg !433
  br i1 %94, label %.preheader31, label %95, !dbg !433

95:                                               ; preds = %50
  %96 = add nuw nsw i64 %23, 1, !dbg !433
  %exitcond39.not = icmp eq i64 %96, 28, !dbg !433
  br i1 %exitcond39.not, label %97, label %.preheader32, !dbg !433

97:                                               ; preds = %95
  %98 = add nuw nsw i64 %21, 1, !dbg !433
  %exitcond40.not = icmp eq i64 %98, 8, !dbg !433
  br i1 %exitcond40.not, label %99, label %20, !dbg !433

99:                                               ; preds = %97
  ret i32 0, !dbg !433
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !435 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !436
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !436
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !436
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !436
  %6 = load ptr, ptr %5, align 8, !dbg !436
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !436
  %8 = load ptr, ptr %7, align 8, !dbg !436
  %9 = load i32, ptr %2, align 16, !dbg !436
  %10 = zext i32 %9 to i64, !dbg !436
  %11 = shl nuw nsw i64 %10, 8, !dbg !436
  %12 = and i64 %11, 1099511626752, !dbg !436
  %13 = shl nuw nsw i64 %10, 4, !dbg !436
  %14 = and i64 %13, 48, !dbg !436
  %15 = ptrtoint ptr %4 to i64, !dbg !436
  %16 = add i64 %12, %15, !dbg !436
  %17 = ptrtoint ptr %6 to i64, !dbg !436
  %18 = add i64 %14, %17, !dbg !436
  %19 = or disjoint i64 %12, %14, !dbg !436
  %20 = ptrtoint ptr %8 to i64, !dbg !436
  %21 = add i64 %20, 200704, !dbg !436
  %22 = add i64 %21, %19, !dbg !436
  %23 = shl nuw nsw i64 %19, 2, !dbg !436
  %24 = add i64 %17, 14176256, !dbg !436
  %25 = add i64 %24, %23, !dbg !436
  %26 = and i64 %16, 9223372036854775807, !dbg !436
  %27 = and i64 %18, 9223372036854775807, !dbg !436
  %28 = and i64 %22, 9223372036854775807, !dbg !436
  %29 = and i64 %25, 9223372036854775807, !dbg !436
  tail call void asm sideeffect "fence", ""() #14, !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !436
  tail call void @llvm.riscv.config(i64 6, i64 4373150234956529728), !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %26, i64 %27), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %29, i64 %28), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 64), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !436
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !436
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !436
  tail call void asm sideeffect "fence", ""() #14, !dbg !436
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !436
  ret i32 0, !dbg !436
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !437 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !438
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !438
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !438
  %5 = getelementptr i8, ptr %4, i64 13696, !dbg !438
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !438
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !438
  %7 = load ptr, ptr %6, align 8, !dbg !438
  %8 = getelementptr i8, ptr %7, i64 401408, !dbg !438
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !438
  %9 = load i32, ptr %2, align 16, !dbg !438
  %10 = zext i32 %9 to i64, !dbg !438
  %11 = shl nuw nsw i64 %10, 4, !dbg !438
  %12 = and i64 %11, 68719476672, !dbg !438
  %13 = shl nuw nsw i64 %10, 6, !dbg !438
  %14 = and i64 %13, 192, !dbg !438
  br label %.preheader, !dbg !438

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !438

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !438
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !438
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !438
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !438
  store <2 x i32> %22, ptr %23, align 8, !dbg !438
  %24 = add nuw nsw i64 %19, 2, !dbg !438
  %25 = icmp samesign ult i64 %19, 62, !dbg !438
  br i1 %25, label %18, label %26, !dbg !438

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !438
  %exitcond.not = icmp eq i64 %27, 64, !dbg !438
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !438

28:                                               ; preds = %26
  ret i32 0, !dbg !438
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_8_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !439 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !440
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !440
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !440
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !440
  %4 = load i32, ptr %.unpack18, align 4, !dbg !440
  %5 = getelementptr i8, ptr %.unpack18, i64 4, !dbg !441
  %6 = load i32, ptr %5, align 4, !dbg !441
  %7 = zext i32 %4 to i64, !dbg !440
  %8 = zext i32 %6 to i64, !dbg !441
  %9 = load ptr, ptr %.unpack20, align 8, !dbg !440
  %10 = getelementptr i8, ptr %9, i64 %7, !dbg !440
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !440
  %11 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !441
  %12 = load ptr, ptr %11, align 8, !dbg !441
  %13 = getelementptr i8, ptr %12, i64 %8, !dbg !441
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 64) ], !dbg !441
  %14 = load i32, ptr %2, align 16, !dbg !441
  %15 = zext i32 %14 to i64, !dbg !441
  %16 = shl nuw nsw i64 %15, 1, !dbg !441
  br label %.preheader23, !dbg !441

.preheader23:                                     ; preds = %3, %37
  %exitcond24.not = phi i1 [ false, %3 ], [ true, %37 ]
  %17 = phi i64 [ 0, %3 ], [ 1, %37 ]
  %18 = or disjoint i64 %17, %16
  %19 = mul nuw nsw i64 %18, 3584
  %20 = getelementptr i8, ptr %10, i64 %19
  %21 = mul nuw nsw i64 %18, 3712
  %22 = getelementptr i8, ptr %13, i64 %21
  br label %.preheader, !dbg !441

.preheader:                                       ; preds = %.preheader23, %35
  %23 = phi i64 [ 0, %.preheader23 ], [ %36, %35 ]
  %24 = shl i64 %23, 6
  %25 = getelementptr i8, ptr %20, i64 %24
  %26 = getelementptr i8, ptr %22, i64 %24
  %27 = getelementptr i8, ptr %26, i64 3776
  br label %28, !dbg !441

28:                                               ; preds = %.preheader, %28
  %29 = phi i64 [ 0, %.preheader ], [ %33, %28 ]
  %30 = getelementptr i8, ptr %25, i64 %29, !dbg !441
  %31 = load <2 x i8>, ptr %30, align 2, !dbg !441
  %32 = getelementptr i8, ptr %27, i64 %29, !dbg !441
  store <2 x i8> %31, ptr %32, align 2, !dbg !441
  %33 = add nuw nsw i64 %29, 2, !dbg !441
  %34 = icmp samesign ult i64 %29, 62, !dbg !441
  br i1 %34, label %28, label %35, !dbg !441

35:                                               ; preds = %28
  %36 = add nuw nsw i64 %23, 1, !dbg !441
  %exitcond.not = icmp eq i64 %36, 56, !dbg !441
  br i1 %exitcond.not, label %37, label %.preheader, !dbg !441

37:                                               ; preds = %35
  br i1 %exitcond24.not, label %38, label %.preheader23, !dbg !441

38:                                               ; preds = %37
  ret i32 0, !dbg !441
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_9_generic_56x56x3x3x64_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !442 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !443
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !443
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !443
  %5 = getelementptr i8, ptr %4, i64 3612672, !dbg !443
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !443
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !443
  %7 = load ptr, ptr %6, align 8, !dbg !443
  %8 = getelementptr i8, ptr %7, i64 3827968, !dbg !443
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !443
  %9 = load i32, ptr %2, align 16, !dbg !443
  %10 = zext i32 %9 to i64, !dbg !443
  %11 = shl nuw nsw i64 %10, 1, !dbg !443
  %12 = and i64 %11, 8589934584, !dbg !443
  %13 = and i64 %10, 2, !dbg !443
  %.not = icmp eq i64 %13, 0, !dbg !443
  %14 = select i1 %.not, i64 0, i64 28, !dbg !443
  %15 = shl nuw nsw i64 %10, 5, !dbg !443
  %16 = and i64 %15, 32, !dbg !443
  br label %.preheader26, !dbg !443

.preheader26:                                     ; preds = %3, %58
  %17 = phi i64 [ 0, %3 ], [ %59, %58 ]
  %18 = add nuw nsw i64 %17, %12
  %19 = mul nuw nsw i64 %18, 32256
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %19
  br label %.preheader, !dbg !443

.preheader:                                       ; preds = %.preheader26, %56
  %21 = phi i64 [ 0, %.preheader26 ], [ %57, %56 ]
  %22 = add nuw nsw i64 %21, %14
  %23 = mul nuw nsw i64 %22, 576
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  br label %25, !dbg !443

25:                                               ; preds = %.preheader, %54
  %26 = phi i64 [ 0, %.preheader ], [ %55, %54 ]
  %27 = add nuw nsw i64 %18, %26, !dbg !443
  %28 = mul nuw nsw i64 %27, 3712
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %28
  %30 = mul nuw nsw i64 %26, 192
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !443

32:                                               ; preds = %25, %52
  %33 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %34 = add nuw nsw i64 %22, %33, !dbg !443
  %35 = shl nuw nsw i64 %34, 6
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 %35
  %37 = shl nuw nsw i64 %33, 6
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 %37
  br label %39, !dbg !443

39:                                               ; preds = %32, %49
  %40 = phi i64 [ 0, %32 ], [ %50, %49 ]
  %41 = or disjoint i64 %40, %16, !dbg !443
  br label %42, !dbg !443

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %48, %42 ]
  %44 = or disjoint i64 %41, %43, !dbg !443
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 %44, !dbg !443
  %46 = load i8, ptr %45, align 1, !dbg !443
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 %44, !dbg !443
  store i8 %46, ptr %47, align 1, !dbg !443
  %48 = add nuw nsw i64 %43, 1, !dbg !443
  %exitcond.not = icmp eq i64 %48, 8, !dbg !443
  br i1 %exitcond.not, label %49, label %42, !dbg !443

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %40, 8, !dbg !443
  %51 = icmp samesign ult i64 %40, 24, !dbg !443
  br i1 %51, label %39, label %52, !dbg !443

52:                                               ; preds = %49
  %53 = add nuw nsw i64 %33, 1, !dbg !443
  %exitcond27.not = icmp eq i64 %53, 3, !dbg !443
  br i1 %exitcond27.not, label %54, label %32, !dbg !443

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %26, 1, !dbg !443
  %exitcond28.not = icmp eq i64 %55, 3, !dbg !443
  br i1 %exitcond28.not, label %56, label %25, !dbg !443

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %21, 1, !dbg !443
  %exitcond29.not = icmp eq i64 %57, 28, !dbg !443
  br i1 %exitcond29.not, label %58, label %.preheader, !dbg !443

58:                                               ; preds = %56
  %59 = add nuw nsw i64 %17, 1, !dbg !443
  %exitcond30.not = icmp eq i64 %59, 8, !dbg !443
  br i1 %exitcond30.not, label %60, label %.preheader26, !dbg !443

60:                                               ; preds = %58
  ret i32 0, !dbg !443
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !444 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !445
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !445
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !445
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !445
  %6 = load ptr, ptr %5, align 8, !dbg !445
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !445
  %8 = load ptr, ptr %7, align 8, !dbg !445
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !445
  %10 = load ptr, ptr %9, align 8, !dbg !445
  %11 = load i32, ptr %2, align 16, !dbg !445
  %12 = zext i32 %11 to i64, !dbg !445
  %13 = shl nuw nsw i64 %12, 2, !dbg !445
  %14 = and i64 %13, 17179869168, !dbg !445
  %15 = shl nuw nsw i64 %12, 4, !dbg !445
  %16 = and i64 %15, 48, !dbg !445
  %17 = mul nuw nsw i64 %14, 576, !dbg !445
  %18 = ptrtoint ptr %4 to i64, !dbg !445
  %19 = add i64 %18, 3827968, !dbg !445
  %20 = add i64 %19, %17, !dbg !445
  %21 = ptrtoint ptr %6 to i64, !dbg !445
  %22 = add i64 %21, 14720, !dbg !445
  %23 = add i64 %22, %16, !dbg !445
  %24 = shl nuw nsw i64 %14, 6, !dbg !445
  %25 = or disjoint i64 %24, %16, !dbg !445
  %26 = ptrtoint ptr %10 to i64, !dbg !445
  %27 = add i64 %26, 200704, !dbg !445
  %28 = add i64 %27, %25, !dbg !445
  %29 = ptrtoint ptr %8 to i64, !dbg !445
  %30 = shl nuw nsw i64 %25, 2, !dbg !445
  %31 = add i64 %29, 14979072, !dbg !445
  %32 = add i64 %31, %30, !dbg !445
  %33 = and i64 %20, 9223372036854775807, !dbg !445
  %34 = and i64 %23, 9223372036854775807, !dbg !445
  %35 = and i64 %28, 9223372036854775807, !dbg !445
  %36 = and i64 %32, 9223372036854775807, !dbg !445
  tail call void asm sideeffect "fence", ""() #14, !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !445
  tail call void @llvm.riscv.config(i64 6, i64 4300889321461776448), !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %33, i64 %34), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %36, i64 %35), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 64), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !445
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !445
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !445
  tail call void asm sideeffect "fence", ""() #14, !dbg !445
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !445
  ret i32 0, !dbg !445
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !446 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !447
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !447
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !447
  %5 = getelementptr i8, ptr %4, i64 51584, !dbg !447
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !447
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !447
  %7 = load ptr, ptr %6, align 8, !dbg !447
  %8 = getelementptr i8, ptr %7, i64 5634304, !dbg !447
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !447
  %9 = load i32, ptr %2, align 16, !dbg !447
  %10 = zext i32 %9 to i64, !dbg !447
  %11 = shl nuw nsw i64 %10, 4, !dbg !447
  %12 = and i64 %11, 68719476672, !dbg !447
  %13 = shl nuw nsw i64 %10, 6, !dbg !447
  %14 = and i64 %13, 192, !dbg !447
  br label %.preheader, !dbg !447

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !447

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !447
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !447
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !447
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !447
  store <2 x i32> %22, ptr %23, align 8, !dbg !447
  %24 = add nuw nsw i64 %19, 2, !dbg !447
  %25 = icmp samesign ult i64 %19, 62, !dbg !447
  br i1 %25, label %18, label %26, !dbg !447

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !447
  %exitcond.not = icmp eq i64 %27, 64, !dbg !447
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !447

28:                                               ; preds = %26
  ret i32 0, !dbg !447
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !448 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !449
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !449
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !449
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !449
  %6 = load ptr, ptr %5, align 8, !dbg !449
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !449
  %8 = load ptr, ptr %7, align 8, !dbg !449
  %9 = load i32, ptr %2, align 16, !dbg !449
  %10 = zext i32 %9 to i64, !dbg !449
  %11 = and i64 %10, 4294967280, !dbg !449
  %12 = shl nuw nsw i64 %10, 4, !dbg !449
  %13 = and i64 %12, 240, !dbg !449
  %14 = shl nuw nsw i64 %11, 6, !dbg !449
  %15 = ptrtoint ptr %4 to i64, !dbg !449
  %16 = add i64 %15, 200704, !dbg !449
  %17 = add i64 %16, %14, !dbg !449
  %18 = ptrtoint ptr %6 to i64, !dbg !449
  %19 = add i64 %18, 20480, !dbg !449
  %20 = add i64 %19, %13, !dbg !449
  %21 = shl nuw nsw i64 %11, 8, !dbg !449
  %22 = or disjoint i64 %21, %13, !dbg !449
  %23 = ptrtoint ptr %8 to i64, !dbg !449
  %24 = add i64 %23, 3612672, !dbg !449
  %25 = add i64 %24, %22, !dbg !449
  %26 = shl nuw nsw i64 %22, 2, !dbg !449
  %27 = add i64 %15, 5634304, !dbg !449
  %28 = add i64 %27, %26, !dbg !449
  %29 = and i64 %17, 9223372036854775807, !dbg !449
  %30 = and i64 %20, 9223372036854775807, !dbg !449
  %31 = and i64 %25, 9223372036854775807, !dbg !449
  %32 = and i64 %28, 9223372036854775807, !dbg !449
  tail call void asm sideeffect "fence", ""() #14, !dbg !449
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !449
  tail call void @llvm.riscv.config(i64 2, i64 4369228045052018944), !dbg !449
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !449
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !449
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !449
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !449
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !449
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !449
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !449
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !449
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !449
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !449
  tail call void asm sideeffect "fence", ""() #14, !dbg !449
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !449
  ret i32 0, !dbg !449
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !450 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !451
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !451
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !451
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !451
  %6 = load ptr, ptr %5, align 8, !dbg !451
  %7 = getelementptr i8, ptr %4, i64 3612672, !dbg !452
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !452
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !451
  %9 = load ptr, ptr %8, align 8, !dbg !451
  %10 = getelementptr i8, ptr %9, i64 4415488, !dbg !451
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !451
  %11 = load i32, ptr %2, align 16, !dbg !451
  %12 = zext i32 %11 to i64, !dbg !451
  %13 = and i64 %12, 4294967280, !dbg !451
  %14 = shl nuw nsw i64 %12, 4, !dbg !451
  %15 = and i64 %14, 240, !dbg !451
  %16 = alloca [256 x i8], align 1, !dbg !451
  %17 = shl nuw nsw i64 %13, 6, !dbg !451
  %18 = ptrtoint ptr %4 to i64, !dbg !451
  %19 = add i64 %17, %18, !dbg !451
  %20 = ptrtoint ptr %6 to i64, !dbg !451
  %21 = add i64 %20, 4096, !dbg !451
  %22 = add i64 %21, %15, !dbg !451
  %23 = ptrtoint ptr %16 to i64, !dbg !451
  %24 = shl nuw nsw i64 %13, 10, !dbg !451
  %25 = shl nuw nsw i64 %15, 2, !dbg !451
  %26 = add i64 %18, 401408, !dbg !451
  %27 = add i64 %26, %24, !dbg !451
  %28 = add i64 %27, %25, !dbg !451
  %29 = and i64 %19, 9223372036854775807, !dbg !451
  %30 = and i64 %22, 9223372036854775807, !dbg !451
  %31 = and i64 %23, 9223372036854775807, !dbg !451
  %32 = and i64 %28, 9223372036854775807, !dbg !451
  call void asm sideeffect "fence", ""() #14, !dbg !451
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !451
  call void @llvm.riscv.config(i64 2, i64 4362042388672151568), !dbg !451
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !451
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !451
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !451
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !451
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !451
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !451
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !451
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 16), !dbg !451
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !451
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !451
  call void asm sideeffect "fence", ""() #14, !dbg !451
  br label %.preheader, !dbg !453

.preheader:                                       ; preds = %3, %117
  %33 = phi i64 [ 0, %3 ], [ %118, %117 ]
  %34 = add nuw nsw i64 %33, %13
  %35 = shl nuw nsw i64 %34, 8
  %invariant.op = or disjoint i64 %35, %15, !dbg !453
  %36 = shl nuw nsw i64 %33, 4
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 %36
  br label %38, !dbg !453

38:                                               ; preds = %.preheader, %38
  %39 = phi i64 [ 0, %.preheader ], [ %116, %38 ]
  %.reass = add nuw nsw i64 %39, %invariant.op
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !453
  %41 = load i8, ptr %40, align 1, !dbg !453
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 %39, !dbg !453
  %43 = load i8, ptr %42, align 1, !dbg !453
  %44 = sitofp i8 %43 to float, !dbg !454
  %45 = fmul nnan contract float %44, 0x3FD655CE20000000, !dbg !454
  %46 = sitofp i8 %41 to float, !dbg !455
  %47 = fmul nnan contract float %46, 0x3FC2362F20000000, !dbg !455
  %48 = fadd contract float %47, %45, !dbg !456
  %49 = fdiv float %48, 0x3FC6854B40000000, !dbg !457
  %50 = bitcast float %49 to i32, !dbg !457
  %51 = call float @llvm.round.f32(float %49), !dbg !457
  %52 = bitcast float %51 to i32, !dbg !457
  %53 = lshr i32 %50, 23, !dbg !457
  %54 = and i32 %53, 255, !dbg !457
  %55 = add nsw i32 %54, -127, !dbg !457
  %56 = lshr i32 %52, 23, !dbg !457
  %57 = and i32 %56, 255, !dbg !457
  %58 = icmp eq i32 %57, 127, !dbg !457
  %59 = call i32 @llvm.usub.sat.i32(i32 %57, i32 128), !dbg !457
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 31), !dbg !457
  %61 = lshr i32 8388607, %60, !dbg !457
  %62 = and i32 %61, %52, !dbg !457
  %63 = icmp ne i32 %62, 0, !dbg !457
  %64 = or i1 %58, %63, !dbg !457
  %65 = icmp eq i32 %55, -1, !dbg !457
  %66 = call i32 @llvm.smax.i32(i32 %55, i32 0), !dbg !457
  %67 = call i32 @llvm.umin.i32(i32 %66, i32 31), !dbg !457
  %68 = lshr i32 4194304, %67, !dbg !457
  %69 = select i1 %65, i32 0, i32 %68, !dbg !457
  %70 = lshr i32 8388607, %67, !dbg !457
  %71 = and i32 %70, %50, !dbg !457
  %72 = icmp eq i32 %71, %69, !dbg !457
  %73 = add nsw i32 %54, -126, !dbg !457
  %74 = icmp ult i32 %73, 24, !dbg !457
  %75 = and i1 %74, %72, !dbg !457
  %76 = call float @llvm.copysign.f32(float 1.000000e+00, float %49), !dbg !457
  %77 = and i1 %64, %75, !dbg !457
  %78 = select i1 %77, float %76, float 0.000000e+00, !dbg !457
  %79 = fsub contract float %51, %78, !dbg !457
  %80 = call float @llvm.copysign.f32(float %79, float %49), !dbg !457
  %81 = fadd contract float %80, 0.000000e+00, !dbg !457
  %.inv = fcmp ole float %81, -1.280000e+02, !dbg !457
  %82 = select i1 %.inv, float -1.280000e+02, float %81, !dbg !457
  %.inv23 = fcmp oge float %82, 1.270000e+02, !dbg !457
  %83 = select i1 %.inv23, float 1.270000e+02, float %82, !dbg !457
  %84 = fptosi float %83 to i8, !dbg !457
  %85 = call i8 @llvm.smax.i8(i8 %84, i8 0), !dbg !458
  %86 = uitofp nneg i8 %85 to float, !dbg !458
  %87 = bitcast float %86 to i32, !dbg !453
  %88 = lshr i32 %87, 23, !dbg !453
  %89 = add nsw i32 %88, -127, !dbg !453
  %90 = icmp eq i32 %89, 0, !dbg !453
  %91 = call i32 @llvm.usub.sat.i32(i32 %88, i32 128), !dbg !453
  %92 = call i32 @llvm.umin.i32(i32 %91, i32 31), !dbg !453
  %93 = lshr i32 8388607, %92, !dbg !453
  %94 = and i32 %93, %87, !dbg !453
  %95 = icmp ne i32 %94, 0, !dbg !453
  %96 = or i1 %90, %95, !dbg !453
  %97 = icmp eq i32 %89, -1, !dbg !453
  %98 = call i32 @llvm.smax.i32(i32 %89, i32 0), !dbg !453
  %99 = call i32 @llvm.umin.i32(i32 %98, i32 31), !dbg !453
  %100 = lshr i32 4194304, %99, !dbg !453
  %101 = select i1 %97, i32 0, i32 %100, !dbg !453
  %102 = lshr i32 8388607, %99, !dbg !453
  %103 = and i32 %102, %87, !dbg !453
  %104 = icmp eq i32 %103, %101, !dbg !453
  %105 = add nsw i32 %87, -1056964608, !dbg !453
  %106 = icmp ult i32 %105, 201326592, !dbg !453
  %107 = and i1 %106, %104, !dbg !453
  %108 = add nsw i8 %85, -1, !dbg !453
  %109 = sitofp i8 %108 to float, !dbg !453
  %110 = and i1 %96, %107, !dbg !453
  %111 = call float @llvm.fabs.f32(float %109), !dbg !453
  %112 = select i1 %110, float %111, float %86, !dbg !453
  %.inv24 = fcmp oge float %112, 1.270000e+02, !dbg !453
  %113 = select i1 %.inv24, float 1.270000e+02, float %112, !dbg !453
  %114 = fptosi float %113 to i8, !dbg !453
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !453
  store i8 %114, ptr %115, align 1, !dbg !453
  %116 = add nuw nsw i64 %39, 1, !dbg !453
  %exitcond.not = icmp eq i64 %116, 16, !dbg !453
  br i1 %exitcond.not, label %117, label %38, !dbg !453

117:                                              ; preds = %38
  %118 = add nuw nsw i64 %33, 1, !dbg !453
  %exitcond25.not = icmp eq i64 %118, 16, !dbg !453
  br i1 %exitcond25.not, label %119, label %.preheader, !dbg !453

119:                                              ; preds = %117
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !451
  ret i32 0, !dbg !451
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !459 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !460
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !460
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !460
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !460
  %6 = load ptr, ptr %5, align 8, !dbg !460
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !460
  %8 = load ptr, ptr %7, align 8, !dbg !460
  %9 = load i32, ptr %2, align 16, !dbg !460
  %10 = zext i32 %9 to i64, !dbg !460
  %11 = shl nuw nsw i64 %10, 2, !dbg !460
  %12 = and i64 %11, 17179869168, !dbg !460
  %13 = shl nuw nsw i64 %10, 4, !dbg !460
  %14 = and i64 %13, 48, !dbg !460
  %15 = shl nuw nsw i64 %12, 8, !dbg !460
  %16 = ptrtoint ptr %4 to i64, !dbg !460
  %17 = add i64 %16, 4415488, !dbg !460
  %18 = add i64 %17, %15, !dbg !460
  %19 = ptrtoint ptr %6 to i64, !dbg !460
  %20 = add i64 %19, 36864, !dbg !460
  %21 = add i64 %20, %14, !dbg !460
  %22 = shl nuw nsw i64 %12, 6, !dbg !460
  %23 = or disjoint i64 %22, %14, !dbg !460
  %24 = ptrtoint ptr %8 to i64, !dbg !460
  %25 = add i64 %23, %24, !dbg !460
  %26 = shl nuw nsw i64 %23, 2, !dbg !460
  %27 = add i64 %19, 15781888, !dbg !460
  %28 = add i64 %27, %26, !dbg !460
  %29 = and i64 %18, 9223372036854775807, !dbg !460
  %30 = and i64 %21, 9223372036854775807, !dbg !460
  %31 = and i64 %25, 9223372036854775807, !dbg !460
  %32 = and i64 %28, 9223372036854775807, !dbg !460
  tail call void asm sideeffect "fence", ""() #14, !dbg !460
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !460
  tail call void @llvm.riscv.config(i64 6, i64 4403959177832038464), !dbg !460
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !460
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !460
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !460
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !460
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !460
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !460
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 64), !dbg !460
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !460
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !460
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !460
  tail call void asm sideeffect "fence", ""() #14, !dbg !460
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !460
  ret i32 0, !dbg !460
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !461 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !462
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !462
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !462
  %5 = getelementptr i8, ptr %4, i64 200704, !dbg !462
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !462
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !462
  %7 = load ptr, ptr %6, align 8, !dbg !462
  %8 = getelementptr i8, ptr %7, i64 416000, !dbg !462
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !462
  %9 = load i32, ptr %2, align 16, !dbg !462
  %10 = zext i32 %9 to i64, !dbg !462
  %11 = shl nuw nsw i64 %10, 1, !dbg !462
  %12 = and i64 %11, 8589934584, !dbg !462
  %13 = and i64 %10, 2, !dbg !462
  %.not = icmp eq i64 %13, 0, !dbg !462
  %14 = select i1 %.not, i64 0, i64 28, !dbg !462
  %15 = shl nuw nsw i64 %10, 5, !dbg !462
  %16 = and i64 %15, 32, !dbg !462
  br label %.preheader26, !dbg !462

.preheader26:                                     ; preds = %3, %58
  %17 = phi i64 [ 0, %3 ], [ %59, %58 ]
  %18 = add nuw nsw i64 %17, %12
  %19 = mul nuw nsw i64 %18, 32256
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %19
  br label %.preheader, !dbg !462

.preheader:                                       ; preds = %.preheader26, %56
  %21 = phi i64 [ 0, %.preheader26 ], [ %57, %56 ]
  %22 = add nuw nsw i64 %21, %14
  %23 = mul nuw nsw i64 %22, 576
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  br label %25, !dbg !462

25:                                               ; preds = %.preheader, %54
  %26 = phi i64 [ 0, %.preheader ], [ %55, %54 ]
  %27 = add nuw nsw i64 %18, %26, !dbg !462
  %28 = mul nuw nsw i64 %27, 3712
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %28
  %30 = mul nuw nsw i64 %26, 192
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !462

32:                                               ; preds = %25, %52
  %33 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %34 = add nuw nsw i64 %22, %33, !dbg !462
  %35 = shl nuw nsw i64 %34, 6
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 %35
  %37 = shl nuw nsw i64 %33, 6
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 %37
  br label %39, !dbg !462

39:                                               ; preds = %32, %49
  %40 = phi i64 [ 0, %32 ], [ %50, %49 ]
  %41 = or disjoint i64 %40, %16, !dbg !462
  br label %42, !dbg !462

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %48, %42 ]
  %44 = or disjoint i64 %41, %43, !dbg !462
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 %44, !dbg !462
  %46 = load i8, ptr %45, align 1, !dbg !462
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 %44, !dbg !462
  store i8 %46, ptr %47, align 1, !dbg !462
  %48 = add nuw nsw i64 %43, 1, !dbg !462
  %exitcond.not = icmp eq i64 %48, 8, !dbg !462
  br i1 %exitcond.not, label %49, label %42, !dbg !462

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %40, 8, !dbg !462
  %51 = icmp samesign ult i64 %40, 24, !dbg !462
  br i1 %51, label %39, label %52, !dbg !462

52:                                               ; preds = %49
  %53 = add nuw nsw i64 %33, 1, !dbg !462
  %exitcond27.not = icmp eq i64 %53, 3, !dbg !462
  br i1 %exitcond27.not, label %54, label %32, !dbg !462

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %26, 1, !dbg !462
  %exitcond28.not = icmp eq i64 %55, 3, !dbg !462
  br i1 %exitcond28.not, label %56, label %25, !dbg !462

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %21, 1, !dbg !462
  %exitcond29.not = icmp eq i64 %57, 28, !dbg !462
  br i1 %exitcond29.not, label %58, label %.preheader, !dbg !462

58:                                               ; preds = %56
  %59 = add nuw nsw i64 %17, 1, !dbg !462
  %exitcond30.not = icmp eq i64 %59, 8, !dbg !462
  br i1 %exitcond30.not, label %60, label %.preheader26, !dbg !462

60:                                               ; preds = %58
  ret i32 0, !dbg !462
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !463 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !464
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !464
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !464
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !464
  %6 = load ptr, ptr %5, align 8, !dbg !464
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !464
  %8 = load ptr, ptr %7, align 8, !dbg !464
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !464
  %10 = load ptr, ptr %9, align 8, !dbg !464
  %11 = load i32, ptr %2, align 16, !dbg !464
  %12 = zext i32 %11 to i64, !dbg !464
  %13 = shl nuw nsw i64 %12, 2, !dbg !464
  %14 = and i64 %13, 17179869168, !dbg !464
  %15 = shl nuw nsw i64 %12, 4, !dbg !464
  %16 = and i64 %15, 48, !dbg !464
  %17 = mul nuw nsw i64 %14, 576, !dbg !464
  %18 = ptrtoint ptr %4 to i64, !dbg !464
  %19 = add i64 %18, 416000, !dbg !464
  %20 = add i64 %19, %17, !dbg !464
  %21 = ptrtoint ptr %6 to i64, !dbg !464
  %22 = add i64 %21, 52608, !dbg !464
  %23 = add i64 %22, %16, !dbg !464
  %24 = shl nuw nsw i64 %14, 6, !dbg !464
  %25 = or disjoint i64 %24, %16, !dbg !464
  %26 = ptrtoint ptr %10 to i64, !dbg !464
  %27 = add i64 %25, %26, !dbg !464
  %28 = ptrtoint ptr %8 to i64, !dbg !464
  %29 = shl nuw nsw i64 %25, 2, !dbg !464
  %30 = add i64 %28, 16584704, !dbg !464
  %31 = add i64 %30, %29, !dbg !464
  %32 = and i64 %20, 9223372036854775807, !dbg !464
  %33 = and i64 %23, 9223372036854775807, !dbg !464
  %34 = and i64 %27, 9223372036854775807, !dbg !464
  %35 = and i64 %31, 9223372036854775807, !dbg !464
  tail call void asm sideeffect "fence", ""() #14, !dbg !464
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !464
  tail call void @llvm.riscv.config(i64 6, i64 4335775094539288640), !dbg !464
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !464
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !464
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !464
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !464
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !464
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 %34), !dbg !464
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 64), !dbg !464
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !464
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !464
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !464
  tail call void asm sideeffect "fence", ""() #14, !dbg !464
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !464
  ret i32 0, !dbg !464
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !465 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !466
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !466
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !466
  %5 = getelementptr i8, ptr %4, i64 89472, !dbg !466
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !466
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !466
  %7 = load ptr, ptr %6, align 8, !dbg !466
  %8 = getelementptr i8, ptr %7, i64 5218304, !dbg !466
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !466
  %9 = load i32, ptr %2, align 16, !dbg !466
  %10 = zext i32 %9 to i64, !dbg !466
  %11 = shl nuw nsw i64 %10, 4, !dbg !466
  %12 = and i64 %11, 68719476672, !dbg !466
  %13 = shl nuw nsw i64 %10, 6, !dbg !466
  %14 = and i64 %13, 192, !dbg !466
  br label %.preheader, !dbg !466

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !466

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !466
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !466
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !466
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !466
  store <2 x i32> %22, ptr %23, align 8, !dbg !466
  %24 = add nuw nsw i64 %19, 2, !dbg !466
  %25 = icmp samesign ult i64 %19, 62, !dbg !466
  br i1 %25, label %18, label %26, !dbg !466

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !466
  %exitcond.not = icmp eq i64 %27, 64, !dbg !466
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !466

28:                                               ; preds = %26
  ret i32 0, !dbg !466
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !467 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !468
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !468
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !468
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !468
  %6 = load ptr, ptr %5, align 8, !dbg !468
  %7 = getelementptr i8, ptr %4, i64 4415488, !dbg !469
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !469
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !468
  %9 = load ptr, ptr %8, align 8, !dbg !468
  %10 = getelementptr i8, ptr %9, i64 200704, !dbg !468
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !468
  %11 = load i32, ptr %2, align 16, !dbg !468
  %12 = zext i32 %11 to i64, !dbg !468
  %13 = and i64 %12, 4294967280, !dbg !468
  %14 = shl nuw nsw i64 %12, 4, !dbg !468
  %15 = and i64 %14, 240, !dbg !468
  %16 = alloca [256 x i8], align 1, !dbg !468
  %17 = shl nuw nsw i64 %13, 6, !dbg !468
  %18 = ptrtoint ptr %4 to i64, !dbg !468
  %19 = add i64 %17, %18, !dbg !468
  %20 = ptrtoint ptr %6 to i64, !dbg !468
  %21 = add i64 %20, 53248, !dbg !468
  %22 = add i64 %21, %15, !dbg !468
  %23 = ptrtoint ptr %16 to i64, !dbg !468
  %24 = shl nuw nsw i64 %13, 10, !dbg !468
  %25 = shl nuw nsw i64 %15, 2, !dbg !468
  %26 = add i64 %18, 5218304, !dbg !468
  %27 = add i64 %26, %24, !dbg !468
  %28 = add i64 %27, %25, !dbg !468
  %29 = and i64 %19, 9223372036854775807, !dbg !468
  %30 = and i64 %22, 9223372036854775807, !dbg !468
  %31 = and i64 %23, 9223372036854775807, !dbg !468
  %32 = and i64 %28, 9223372036854775807, !dbg !468
  call void asm sideeffect "fence", ""() #14, !dbg !468
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !468
  call void @llvm.riscv.config(i64 2, i64 4348637409194278928), !dbg !468
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !468
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !468
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !468
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !468
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !468
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !468
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !468
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 16), !dbg !468
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !468
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !468
  call void asm sideeffect "fence", ""() #14, !dbg !468
  br label %.preheader, !dbg !470

.preheader:                                       ; preds = %3, %117
  %33 = phi i64 [ 0, %3 ], [ %118, %117 ]
  %34 = shl nuw nsw i64 %33, 4
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 %34
  %36 = add nuw nsw i64 %33, %13
  %37 = shl nuw nsw i64 %36, 8
  %invariant.op = or disjoint i64 %37, %15, !dbg !470
  br label %38, !dbg !470

38:                                               ; preds = %.preheader, %38
  %39 = phi i64 [ 0, %.preheader ], [ %116, %38 ]
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 %39, !dbg !470
  %41 = load i8, ptr %40, align 1, !dbg !470
  %.reass = add nuw nsw i64 %39, %invariant.op
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !470
  %43 = load i8, ptr %42, align 1, !dbg !470
  %44 = sitofp i8 %43 to float, !dbg !471
  %45 = fmul nnan contract float %44, 0x3FC6854B40000000, !dbg !471
  %46 = sitofp i8 %41 to float, !dbg !472
  %47 = fmul nnan contract float %46, 0x3FCD1B93A0000000, !dbg !472
  %48 = fadd contract float %47, %45, !dbg !473
  %49 = fdiv float %48, 0x3FCA4557E0000000, !dbg !474
  %50 = bitcast float %49 to i32, !dbg !474
  %51 = call float @llvm.round.f32(float %49), !dbg !474
  %52 = bitcast float %51 to i32, !dbg !474
  %53 = lshr i32 %50, 23, !dbg !474
  %54 = and i32 %53, 255, !dbg !474
  %55 = add nsw i32 %54, -127, !dbg !474
  %56 = lshr i32 %52, 23, !dbg !474
  %57 = and i32 %56, 255, !dbg !474
  %58 = icmp eq i32 %57, 127, !dbg !474
  %59 = call i32 @llvm.usub.sat.i32(i32 %57, i32 128), !dbg !474
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 31), !dbg !474
  %61 = lshr i32 8388607, %60, !dbg !474
  %62 = and i32 %61, %52, !dbg !474
  %63 = icmp ne i32 %62, 0, !dbg !474
  %64 = or i1 %58, %63, !dbg !474
  %65 = icmp eq i32 %55, -1, !dbg !474
  %66 = call i32 @llvm.smax.i32(i32 %55, i32 0), !dbg !474
  %67 = call i32 @llvm.umin.i32(i32 %66, i32 31), !dbg !474
  %68 = lshr i32 4194304, %67, !dbg !474
  %69 = select i1 %65, i32 0, i32 %68, !dbg !474
  %70 = lshr i32 8388607, %67, !dbg !474
  %71 = and i32 %70, %50, !dbg !474
  %72 = icmp eq i32 %71, %69, !dbg !474
  %73 = add nsw i32 %54, -126, !dbg !474
  %74 = icmp ult i32 %73, 24, !dbg !474
  %75 = and i1 %74, %72, !dbg !474
  %76 = call float @llvm.copysign.f32(float 1.000000e+00, float %49), !dbg !474
  %77 = and i1 %64, %75, !dbg !474
  %78 = select i1 %77, float %76, float 0.000000e+00, !dbg !474
  %79 = fsub contract float %51, %78, !dbg !474
  %80 = call float @llvm.copysign.f32(float %79, float %49), !dbg !474
  %81 = fadd contract float %80, 0.000000e+00, !dbg !474
  %.inv = fcmp ole float %81, -1.280000e+02, !dbg !474
  %82 = select i1 %.inv, float -1.280000e+02, float %81, !dbg !474
  %.inv23 = fcmp oge float %82, 1.270000e+02, !dbg !474
  %83 = select i1 %.inv23, float 1.270000e+02, float %82, !dbg !474
  %84 = fptosi float %83 to i8, !dbg !474
  %85 = call i8 @llvm.smax.i8(i8 %84, i8 0), !dbg !475
  %86 = uitofp nneg i8 %85 to float, !dbg !475
  %87 = bitcast float %86 to i32, !dbg !470
  %88 = lshr i32 %87, 23, !dbg !470
  %89 = add nsw i32 %88, -127, !dbg !470
  %90 = icmp eq i32 %89, 0, !dbg !470
  %91 = call i32 @llvm.usub.sat.i32(i32 %88, i32 128), !dbg !470
  %92 = call i32 @llvm.umin.i32(i32 %91, i32 31), !dbg !470
  %93 = lshr i32 8388607, %92, !dbg !470
  %94 = and i32 %93, %87, !dbg !470
  %95 = icmp ne i32 %94, 0, !dbg !470
  %96 = or i1 %90, %95, !dbg !470
  %97 = icmp eq i32 %89, -1, !dbg !470
  %98 = call i32 @llvm.smax.i32(i32 %89, i32 0), !dbg !470
  %99 = call i32 @llvm.umin.i32(i32 %98, i32 31), !dbg !470
  %100 = lshr i32 4194304, %99, !dbg !470
  %101 = select i1 %97, i32 0, i32 %100, !dbg !470
  %102 = lshr i32 8388607, %99, !dbg !470
  %103 = and i32 %102, %87, !dbg !470
  %104 = icmp eq i32 %103, %101, !dbg !470
  %105 = add nsw i32 %87, -1056964608, !dbg !470
  %106 = icmp ult i32 %105, 201326592, !dbg !470
  %107 = and i1 %106, %104, !dbg !470
  %108 = add nsw i8 %85, -1, !dbg !470
  %109 = sitofp i8 %108 to float, !dbg !470
  %110 = and i1 %96, %107, !dbg !470
  %111 = call float @llvm.fabs.f32(float %109), !dbg !470
  %112 = select i1 %110, float %111, float %86, !dbg !470
  %.inv24 = fcmp oge float %112, 1.270000e+02, !dbg !470
  %113 = select i1 %.inv24, float 1.270000e+02, float %112, !dbg !470
  %114 = fptosi float %113 to i8, !dbg !470
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !470
  store i8 %114, ptr %115, align 1, !dbg !470
  %116 = add nuw nsw i64 %39, 1, !dbg !470
  %exitcond.not = icmp eq i64 %116, 16, !dbg !470
  br i1 %exitcond.not, label %117, label %38, !dbg !470

117:                                              ; preds = %38
  %118 = add nuw nsw i64 %33, 1, !dbg !470
  %exitcond25.not = icmp eq i64 %118, 16, !dbg !470
  br i1 %exitcond25.not, label %119, label %.preheader, !dbg !470

119:                                              ; preds = %117
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !468
  ret i32 0, !dbg !468
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !476 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !477
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !477
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !477
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !477
  %6 = load ptr, ptr %5, align 8, !dbg !477
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !477
  %8 = load ptr, ptr %7, align 8, !dbg !477
  %9 = load i32, ptr %2, align 16, !dbg !477
  %10 = zext i32 %9 to i64, !dbg !477
  %11 = shl nuw nsw i64 %10, 2, !dbg !477
  %12 = and i64 %11, 17179869168, !dbg !477
  %13 = shl nuw nsw i64 %10, 4, !dbg !477
  %14 = and i64 %13, 48, !dbg !477
  %15 = shl nuw nsw i64 %12, 8, !dbg !477
  %16 = ptrtoint ptr %4 to i64, !dbg !477
  %17 = add i64 %16, 200704, !dbg !477
  %18 = add i64 %17, %15, !dbg !477
  %19 = ptrtoint ptr %6 to i64, !dbg !477
  %20 = add i64 %19, 69632, !dbg !477
  %21 = add i64 %20, %14, !dbg !477
  %22 = shl nuw nsw i64 %12, 6, !dbg !477
  %23 = or disjoint i64 %22, %14, !dbg !477
  %24 = ptrtoint ptr %8 to i64, !dbg !477
  %25 = add i64 %23, %24, !dbg !477
  %26 = shl nuw nsw i64 %23, 2, !dbg !477
  %27 = add i64 %19, 17387520, !dbg !477
  %28 = add i64 %27, %26, !dbg !477
  %29 = and i64 %18, 9223372036854775807, !dbg !477
  %30 = and i64 %21, 9223372036854775807, !dbg !477
  %31 = and i64 %25, 9223372036854775807, !dbg !477
  %32 = and i64 %28, 9223372036854775807, !dbg !477
  tail call void asm sideeffect "fence", ""() #14, !dbg !477
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !477
  tail call void @llvm.riscv.config(i64 6, i64 4412924569875120192), !dbg !477
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !477
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !477
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !477
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !477
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !477
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !477
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 64), !dbg !477
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !477
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !477
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !477
  tail call void asm sideeffect "fence", ""() #14, !dbg !477
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !477
  ret i32 0, !dbg !477
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !478 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !479
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !479
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !479
  %5 = getelementptr i8, ptr %4, i64 1003520, !dbg !479
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !479
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !479
  %7 = load ptr, ptr %6, align 8, !dbg !479
  %8 = getelementptr i8, ptr %7, i64 1218816, !dbg !479
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !479
  %9 = load i32, ptr %2, align 16, !dbg !479
  %10 = zext i32 %9 to i64, !dbg !479
  %11 = shl nuw nsw i64 %10, 1, !dbg !479
  %12 = and i64 %11, 8589934584, !dbg !479
  %13 = and i64 %10, 2, !dbg !479
  %.not = icmp eq i64 %13, 0, !dbg !479
  %14 = select i1 %.not, i64 0, i64 28, !dbg !479
  %15 = shl nuw nsw i64 %10, 5, !dbg !479
  %16 = and i64 %15, 32, !dbg !479
  br label %.preheader26, !dbg !479

.preheader26:                                     ; preds = %3, %58
  %17 = phi i64 [ 0, %3 ], [ %59, %58 ]
  %18 = add nuw nsw i64 %17, %12
  %19 = mul nuw nsw i64 %18, 32256
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %19
  br label %.preheader, !dbg !479

.preheader:                                       ; preds = %.preheader26, %56
  %21 = phi i64 [ 0, %.preheader26 ], [ %57, %56 ]
  %22 = add nuw nsw i64 %21, %14
  %23 = mul nuw nsw i64 %22, 576
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  br label %25, !dbg !479

25:                                               ; preds = %.preheader, %54
  %26 = phi i64 [ 0, %.preheader ], [ %55, %54 ]
  %27 = add nuw nsw i64 %18, %26, !dbg !479
  %28 = mul nuw nsw i64 %27, 3712
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %28
  %30 = mul nuw nsw i64 %26, 192
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !479

32:                                               ; preds = %25, %52
  %33 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %34 = add nuw nsw i64 %22, %33, !dbg !479
  %35 = shl nuw nsw i64 %34, 6
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 %35
  %37 = shl nuw nsw i64 %33, 6
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 %37
  br label %39, !dbg !479

39:                                               ; preds = %32, %49
  %40 = phi i64 [ 0, %32 ], [ %50, %49 ]
  %41 = or disjoint i64 %40, %16, !dbg !479
  br label %42, !dbg !479

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %48, %42 ]
  %44 = or disjoint i64 %41, %43, !dbg !479
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 %44, !dbg !479
  %46 = load i8, ptr %45, align 1, !dbg !479
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 %44, !dbg !479
  store i8 %46, ptr %47, align 1, !dbg !479
  %48 = add nuw nsw i64 %43, 1, !dbg !479
  %exitcond.not = icmp eq i64 %48, 8, !dbg !479
  br i1 %exitcond.not, label %49, label %42, !dbg !479

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %40, 8, !dbg !479
  %51 = icmp samesign ult i64 %40, 24, !dbg !479
  br i1 %51, label %39, label %52, !dbg !479

52:                                               ; preds = %49
  %53 = add nuw nsw i64 %33, 1, !dbg !479
  %exitcond27.not = icmp eq i64 %53, 3, !dbg !479
  br i1 %exitcond27.not, label %54, label %32, !dbg !479

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %26, 1, !dbg !479
  %exitcond28.not = icmp eq i64 %55, 3, !dbg !479
  br i1 %exitcond28.not, label %56, label %25, !dbg !479

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %21, 1, !dbg !479
  %exitcond29.not = icmp eq i64 %57, 28, !dbg !479
  br i1 %exitcond29.not, label %58, label %.preheader, !dbg !479

58:                                               ; preds = %56
  %59 = add nuw nsw i64 %17, 1, !dbg !479
  %exitcond30.not = icmp eq i64 %59, 8, !dbg !479
  br i1 %exitcond30.not, label %60, label %.preheader26, !dbg !479

60:                                               ; preds = %58
  ret i32 0, !dbg !479
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !480 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !481
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !481
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !481
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !481
  %6 = load ptr, ptr %5, align 8, !dbg !481
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !481
  %8 = load ptr, ptr %7, align 8, !dbg !481
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !481
  %10 = load ptr, ptr %9, align 8, !dbg !481
  %11 = load i32, ptr %2, align 16, !dbg !481
  %12 = zext i32 %11 to i64, !dbg !481
  %13 = shl nuw nsw i64 %12, 2, !dbg !481
  %14 = and i64 %13, 17179869168, !dbg !481
  %15 = shl nuw nsw i64 %12, 4, !dbg !481
  %16 = and i64 %15, 48, !dbg !481
  %17 = mul nuw nsw i64 %14, 576, !dbg !481
  %18 = ptrtoint ptr %4 to i64, !dbg !481
  %19 = add i64 %18, 1218816, !dbg !481
  %20 = add i64 %19, %17, !dbg !481
  %21 = ptrtoint ptr %6 to i64, !dbg !481
  %22 = add i64 %21, 90496, !dbg !481
  %23 = add i64 %22, %16, !dbg !481
  %24 = shl nuw nsw i64 %14, 6, !dbg !481
  %25 = or disjoint i64 %24, %16, !dbg !481
  %26 = ptrtoint ptr %10 to i64, !dbg !481
  %27 = add i64 %25, %26, !dbg !481
  %28 = ptrtoint ptr %8 to i64, !dbg !481
  %29 = shl nuw nsw i64 %25, 2, !dbg !481
  %30 = add i64 %28, 18190336, !dbg !481
  %31 = add i64 %30, %29, !dbg !481
  %32 = and i64 %20, 9223372036854775807, !dbg !481
  %33 = and i64 %23, 9223372036854775807, !dbg !481
  %34 = and i64 %27, 9223372036854775807, !dbg !481
  %35 = and i64 %31, 9223372036854775807, !dbg !481
  tail call void asm sideeffect "fence", ""() #14, !dbg !481
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !481
  tail call void @llvm.riscv.config(i64 6, i64 4316232396342034496), !dbg !481
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !481
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 64), !dbg !481
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 256), !dbg !481
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !481
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !481
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 %34), !dbg !481
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 64), !dbg !481
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 64, i64 64), !dbg !481
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !481
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !481
  tail call void asm sideeffect "fence", ""() #14, !dbg !481
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !481
  ret i32 0, !dbg !481
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !482 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !483
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !483
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !483
  %5 = getelementptr i8, ptr %4, i64 127360, !dbg !483
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !483
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !483
  %7 = load ptr, ptr %6, align 8, !dbg !483
  %8 = getelementptr i8, ptr %7, i64 3025152, !dbg !483
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !483
  %9 = load i32, ptr %2, align 16, !dbg !483
  %10 = zext i32 %9 to i64, !dbg !483
  %11 = shl nuw nsw i64 %10, 4, !dbg !483
  %12 = and i64 %11, 68719476672, !dbg !483
  %13 = shl nuw nsw i64 %10, 6, !dbg !483
  %14 = and i64 %13, 192, !dbg !483
  br label %.preheader, !dbg !483

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !483

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !483
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !483
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !483
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !483
  store <2 x i32> %22, ptr %23, align 8, !dbg !483
  %24 = add nuw nsw i64 %19, 2, !dbg !483
  %25 = icmp samesign ult i64 %19, 62, !dbg !483
  br i1 %25, label %18, label %26, !dbg !483

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !483
  %exitcond.not = icmp eq i64 %27, 64, !dbg !483
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !483

28:                                               ; preds = %26
  ret i32 0, !dbg !483
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !484 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !485
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !485
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !485
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !485
  %6 = load ptr, ptr %5, align 8, !dbg !485
  %7 = getelementptr i8, ptr %4, i64 200704, !dbg !486
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !486
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !485
  %9 = load ptr, ptr %8, align 8, !dbg !485
  %10 = getelementptr i8, ptr %9, i64 1003520, !dbg !485
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !485
  %11 = load i32, ptr %2, align 16, !dbg !485
  %12 = zext i32 %11 to i64, !dbg !485
  %13 = and i64 %12, 4294967280, !dbg !485
  %14 = shl nuw nsw i64 %12, 4, !dbg !485
  %15 = and i64 %14, 240, !dbg !485
  %16 = alloca [256 x i8], align 1, !dbg !485
  %17 = shl nuw nsw i64 %13, 6, !dbg !485
  %18 = ptrtoint ptr %4 to i64, !dbg !485
  %19 = add i64 %17, %18, !dbg !485
  %20 = ptrtoint ptr %6 to i64, !dbg !485
  %21 = add i64 %20, 86016, !dbg !485
  %22 = add i64 %21, %15, !dbg !485
  %23 = ptrtoint ptr %16 to i64, !dbg !485
  %24 = shl nuw nsw i64 %13, 10, !dbg !485
  %25 = shl nuw nsw i64 %15, 2, !dbg !485
  %26 = add i64 %18, 3025152, !dbg !485
  %27 = add i64 %26, %24, !dbg !485
  %28 = add i64 %27, %25, !dbg !485
  %29 = and i64 %19, 9223372036854775807, !dbg !485
  %30 = and i64 %22, 9223372036854775807, !dbg !485
  %31 = and i64 %23, 9223372036854775807, !dbg !485
  %32 = and i64 %28, 9223372036854775807, !dbg !485
  call void asm sideeffect "fence", ""() #14, !dbg !485
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !485
  call void @llvm.riscv.config(i64 2, i64 4365372689133600784), !dbg !485
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !485
  call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !485
  call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !485
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !485
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !485
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !485
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 256), !dbg !485
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 16), !dbg !485
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !485
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !485
  call void asm sideeffect "fence", ""() #14, !dbg !485
  br label %.preheader, !dbg !487

.preheader:                                       ; preds = %3, %117
  %33 = phi i64 [ 0, %3 ], [ %118, %117 ]
  %34 = shl nuw nsw i64 %33, 4
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 %34
  %36 = add nuw nsw i64 %33, %13
  %37 = shl nuw nsw i64 %36, 8
  %invariant.op = or disjoint i64 %37, %15, !dbg !487
  br label %38, !dbg !487

38:                                               ; preds = %.preheader, %38
  %39 = phi i64 [ 0, %.preheader ], [ %116, %38 ]
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 %39, !dbg !487
  %41 = load i8, ptr %40, align 1, !dbg !487
  %.reass = add nuw nsw i64 %39, %invariant.op
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !487
  %43 = load i8, ptr %42, align 1, !dbg !487
  %44 = sitofp i8 %43 to float, !dbg !488
  %45 = fmul nnan contract float %44, 0x3FCA4557E0000000, !dbg !488
  %46 = sitofp i8 %41 to float, !dbg !489
  %47 = fmul nnan contract float %46, 0x3FC7EB3C80000000, !dbg !489
  %48 = fadd contract float %47, %45, !dbg !490
  %49 = fdiv float %48, 0x3FC876B8C0000000, !dbg !491
  %50 = bitcast float %49 to i32, !dbg !491
  %51 = call float @llvm.round.f32(float %49), !dbg !491
  %52 = bitcast float %51 to i32, !dbg !491
  %53 = lshr i32 %50, 23, !dbg !491
  %54 = and i32 %53, 255, !dbg !491
  %55 = add nsw i32 %54, -127, !dbg !491
  %56 = lshr i32 %52, 23, !dbg !491
  %57 = and i32 %56, 255, !dbg !491
  %58 = icmp eq i32 %57, 127, !dbg !491
  %59 = call i32 @llvm.usub.sat.i32(i32 %57, i32 128), !dbg !491
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 31), !dbg !491
  %61 = lshr i32 8388607, %60, !dbg !491
  %62 = and i32 %61, %52, !dbg !491
  %63 = icmp ne i32 %62, 0, !dbg !491
  %64 = or i1 %58, %63, !dbg !491
  %65 = icmp eq i32 %55, -1, !dbg !491
  %66 = call i32 @llvm.smax.i32(i32 %55, i32 0), !dbg !491
  %67 = call i32 @llvm.umin.i32(i32 %66, i32 31), !dbg !491
  %68 = lshr i32 4194304, %67, !dbg !491
  %69 = select i1 %65, i32 0, i32 %68, !dbg !491
  %70 = lshr i32 8388607, %67, !dbg !491
  %71 = and i32 %70, %50, !dbg !491
  %72 = icmp eq i32 %71, %69, !dbg !491
  %73 = add nsw i32 %54, -126, !dbg !491
  %74 = icmp ult i32 %73, 24, !dbg !491
  %75 = and i1 %74, %72, !dbg !491
  %76 = call float @llvm.copysign.f32(float 1.000000e+00, float %49), !dbg !491
  %77 = and i1 %64, %75, !dbg !491
  %78 = select i1 %77, float %76, float 0.000000e+00, !dbg !491
  %79 = fsub contract float %51, %78, !dbg !491
  %80 = call float @llvm.copysign.f32(float %79, float %49), !dbg !491
  %81 = fadd contract float %80, 0.000000e+00, !dbg !491
  %.inv = fcmp ole float %81, -1.280000e+02, !dbg !491
  %82 = select i1 %.inv, float -1.280000e+02, float %81, !dbg !491
  %.inv23 = fcmp oge float %82, 1.270000e+02, !dbg !491
  %83 = select i1 %.inv23, float 1.270000e+02, float %82, !dbg !491
  %84 = fptosi float %83 to i8, !dbg !491
  %85 = call i8 @llvm.smax.i8(i8 %84, i8 0), !dbg !492
  %86 = uitofp nneg i8 %85 to float, !dbg !492
  %87 = bitcast float %86 to i32, !dbg !487
  %88 = lshr i32 %87, 23, !dbg !487
  %89 = add nsw i32 %88, -127, !dbg !487
  %90 = icmp eq i32 %89, 0, !dbg !487
  %91 = call i32 @llvm.usub.sat.i32(i32 %88, i32 128), !dbg !487
  %92 = call i32 @llvm.umin.i32(i32 %91, i32 31), !dbg !487
  %93 = lshr i32 8388607, %92, !dbg !487
  %94 = and i32 %93, %87, !dbg !487
  %95 = icmp ne i32 %94, 0, !dbg !487
  %96 = or i1 %90, %95, !dbg !487
  %97 = icmp eq i32 %89, -1, !dbg !487
  %98 = call i32 @llvm.smax.i32(i32 %89, i32 0), !dbg !487
  %99 = call i32 @llvm.umin.i32(i32 %98, i32 31), !dbg !487
  %100 = lshr i32 4194304, %99, !dbg !487
  %101 = select i1 %97, i32 0, i32 %100, !dbg !487
  %102 = lshr i32 8388607, %99, !dbg !487
  %103 = and i32 %102, %87, !dbg !487
  %104 = icmp eq i32 %103, %101, !dbg !487
  %105 = add nsw i32 %87, -1056964608, !dbg !487
  %106 = icmp ult i32 %105, 201326592, !dbg !487
  %107 = and i1 %106, %104, !dbg !487
  %108 = add nsw i8 %85, -1, !dbg !487
  %109 = sitofp i8 %108 to float, !dbg !487
  %110 = and i1 %96, %107, !dbg !487
  %111 = call float @llvm.fabs.f32(float %109), !dbg !487
  %112 = select i1 %110, float %111, float %86, !dbg !487
  %.inv24 = fcmp oge float %112, 1.270000e+02, !dbg !487
  %113 = select i1 %.inv24, float 1.270000e+02, float %112, !dbg !487
  %114 = fptosi float %113 to i8, !dbg !487
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !487
  store i8 %114, ptr %115, align 1, !dbg !487
  %116 = add nuw nsw i64 %39, 1, !dbg !487
  %exitcond.not = icmp eq i64 %116, 16, !dbg !487
  br i1 %exitcond.not, label %117, label %38, !dbg !487

117:                                              ; preds = %38
  %118 = add nuw nsw i64 %33, 1, !dbg !487
  %exitcond25.not = icmp eq i64 %118, 16, !dbg !487
  br i1 %exitcond25.not, label %119, label %.preheader, !dbg !487

119:                                              ; preds = %117
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !485
  ret i32 0, !dbg !485
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !493 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !494
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !494
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !494
  %5 = getelementptr i8, ptr %4, i64 128384, !dbg !494
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !494
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !494
  %7 = load ptr, ptr %6, align 8, !dbg !494
  %8 = getelementptr i8, ptr %7, i64 6236416, !dbg !494
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !494
  %9 = load i32, ptr %2, align 16, !dbg !494
  %10 = zext i32 %9 to i64, !dbg !494
  %11 = shl nuw nsw i64 %10, 5, !dbg !494
  %12 = and i64 %11, 137438953408, !dbg !494
  %13 = shl nuw nsw i64 %10, 6, !dbg !494
  %14 = and i64 %13, 64, !dbg !494
  br label %.preheader, !dbg !494

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !494

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !494
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !494
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !494
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !494
  store <2 x i32> %22, ptr %23, align 8, !dbg !494
  %24 = add nuw nsw i64 %19, 2, !dbg !494
  %25 = icmp samesign ult i64 %19, 62, !dbg !494
  br i1 %25, label %18, label %26, !dbg !494

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !494
  %exitcond.not = icmp eq i64 %27, 64, !dbg !494
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !494

28:                                               ; preds = %26
  ret i32 0, !dbg !494
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !495 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !496
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !496
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !496
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !496
  %6 = load ptr, ptr %5, align 8, !dbg !496
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !496
  %8 = load ptr, ptr %7, align 8, !dbg !496
  %9 = load i32, ptr %2, align 16, !dbg !496
  %10 = zext i32 %9 to i64, !dbg !496
  %11 = shl nuw nsw i64 %10, 1, !dbg !496
  %12 = and i64 %11, 8589934576, !dbg !496
  %13 = shl nuw nsw i64 %10, 4, !dbg !496
  %14 = and i64 %13, 112, !dbg !496
  %15 = shl nuw nsw i64 %12, 8, !dbg !496
  %16 = ptrtoint ptr %4 to i64, !dbg !496
  %17 = add i64 %16, 1003520, !dbg !496
  %18 = add i64 %17, %15, !dbg !496
  %19 = ptrtoint ptr %6 to i64, !dbg !496
  %20 = add i64 %19, 102400, !dbg !496
  %21 = add i64 %20, %14, !dbg !496
  %22 = shl nuw nsw i64 %12, 7, !dbg !496
  %23 = or disjoint i64 %22, %14, !dbg !496
  %24 = ptrtoint ptr %8 to i64, !dbg !496
  %25 = add i64 %23, %24, !dbg !496
  %26 = shl nuw nsw i64 %23, 2, !dbg !496
  %27 = add i64 %16, 6236416, !dbg !496
  %28 = add i64 %27, %26, !dbg !496
  %29 = and i64 %18, 9223372036854775807, !dbg !496
  %30 = and i64 %21, 9223372036854775807, !dbg !496
  %31 = and i64 %25, 9223372036854775807, !dbg !496
  %32 = and i64 %28, 9223372036854775807, !dbg !496
  tail call void asm sideeffect "fence", ""() #14, !dbg !496
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !496
  tail call void @llvm.riscv.config(i64 6, i64 4351571370073653376), !dbg !496
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !496
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !496
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !496
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !496
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !496
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !496
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 128), !dbg !496
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !496
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !496
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !496
  tail call void asm sideeffect "fence", ""() #14, !dbg !496
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !496
  ret i32 0, !dbg !496
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !497 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !498
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !498
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !498
  %5 = getelementptr i8, ptr %4, i64 128896, !dbg !498
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !498
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !498
  %7 = load ptr, ptr %6, align 8, !dbg !498
  %8 = getelementptr i8, ptr %7, i64 1806336, !dbg !498
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !498
  %9 = load i32, ptr %2, align 16, !dbg !498
  %10 = zext i32 %9 to i64, !dbg !498
  %11 = lshr i64 %10, 3, !dbg !498
  %12 = mul nuw nsw i64 %11, 112, !dbg !498
  %13 = shl nuw nsw i64 %10, 6, !dbg !498
  %14 = and i64 %13, 448, !dbg !498
  br label %.preheader, !dbg !498

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !498

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !498
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !498
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !498
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !498
  store <2 x i32> %22, ptr %23, align 8, !dbg !498
  %24 = add nuw nsw i64 %19, 2, !dbg !498
  %25 = icmp samesign ult i64 %19, 62, !dbg !498
  br i1 %25, label %18, label %26, !dbg !498

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !498
  %exitcond.not = icmp eq i64 %27, 112, !dbg !498
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !498

28:                                               ; preds = %26
  ret i32 0, !dbg !498
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_29_generic_28x28x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !499 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !500
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !500
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !500
  %5 = getelementptr i8, ptr %4, i64 1003520, !dbg !500
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !500
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !501
  %7 = load ptr, ptr %6, align 8, !dbg !501
  %8 = getelementptr i8, ptr %7, i64 401408, !dbg !501
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !501
  %9 = load i32, ptr %2, align 16, !dbg !501
  %10 = zext i32 %9 to i64, !dbg !501
  %11 = lshr i64 %10, 3, !dbg !501
  %12 = mul nuw nsw i64 %11, 7, !dbg !501
  %13 = shl nuw nsw i64 %10, 5, !dbg !501
  %14 = and i64 %13, 224, !dbg !501
  %15 = mul nuw nsw i64 %11, 14
  br label %16, !dbg !501

16:                                               ; preds = %3, %45
  %17 = phi i64 [ 0, %3 ], [ %46, %45 ]
  %18 = shl nuw nsw i64 %17, 1, !dbg !501
  %19 = add nuw nsw i64 %18, %15, !dbg !501
  %20 = mul nuw nsw i64 %19, 14336
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 %20
  %22 = add nuw nsw i64 %17, %12
  %23 = mul nuw nsw i64 %22, 7168
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 %23
  br label %.preheader, !dbg !501

.preheader:                                       ; preds = %16, %43
  %25 = phi i64 [ 0, %16 ], [ %44, %43 ]
  %26 = shl nuw nsw i64 %25, 9
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %26
  %28 = shl nuw nsw i64 %25, 8
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 %28
  br label %30, !dbg !501

30:                                               ; preds = %.preheader, %40
  %31 = phi i64 [ 0, %.preheader ], [ %41, %40 ]
  %32 = or disjoint i64 %31, %14, !dbg !501
  br label %33, !dbg !501

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %39, %33 ]
  %35 = or disjoint i64 %32, %34, !dbg !501
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 %35, !dbg !501
  %37 = load i8, ptr %36, align 1, !dbg !501
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %35, !dbg !501
  store i8 %37, ptr %38, align 1, !dbg !501
  %39 = add nuw nsw i64 %34, 1, !dbg !501
  %exitcond.not = icmp eq i64 %39, 8, !dbg !501
  br i1 %exitcond.not, label %40, label %33, !dbg !501

40:                                               ; preds = %33
  %41 = add nuw nsw i64 %31, 8, !dbg !501
  %42 = icmp samesign ult i64 %31, 24, !dbg !501
  br i1 %42, label %30, label %43, !dbg !501

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %25, 1, !dbg !501
  %exitcond26.not = icmp eq i64 %44, 28, !dbg !501
  br i1 %exitcond26.not, label %45, label %.preheader, !dbg !501

45:                                               ; preds = %43
  %46 = add nuw nsw i64 %17, 1, !dbg !501
  %exitcond27.not = icmp eq i64 %46, 7, !dbg !501
  br i1 %exitcond27.not, label %47, label %16, !dbg !501

47:                                               ; preds = %45
  ret i32 0, !dbg !501
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_30_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !502 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !503
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !503
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !503
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !503
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !504
  %6 = load ptr, ptr %5, align 8, !dbg !504
  %7 = getelementptr i8, ptr %6, i64 3411968, !dbg !504
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !504
  %8 = load i32, ptr %2, align 16, !dbg !504
  %9 = zext i32 %8 to i64, !dbg !504
  %10 = shl nuw nsw i64 %9, 1, !dbg !504
  %11 = and i64 %10, 8589934588, !dbg !504
  %12 = shl nuw nsw i64 %9, 6, !dbg !504
  %13 = and i64 %12, 64, !dbg !504
  br label %.preheader23, !dbg !504

.preheader23:                                     ; preds = %3, %35
  %14 = phi i64 [ 0, %3 ], [ %36, %35 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = mul nuw nsw i64 %15, 7168
  %17 = getelementptr i8, ptr %4, i64 %16
  %18 = mul nuw nsw i64 %15, 7424
  %19 = getelementptr i8, ptr %7, i64 %18
  br label %.preheader, !dbg !504

.preheader:                                       ; preds = %.preheader23, %33
  %20 = phi i64 [ 0, %.preheader23 ], [ %34, %33 ]
  %21 = shl i64 %20, 7
  %22 = getelementptr i8, ptr %17, i64 %21
  %23 = getelementptr i8, ptr %19, i64 %21
  %24 = getelementptr i8, ptr %23, i64 7552
  br label %25, !dbg !504

25:                                               ; preds = %.preheader, %25
  %26 = phi i64 [ 0, %.preheader ], [ %31, %25 ]
  %27 = or disjoint i64 %26, %13, !dbg !504
  %28 = getelementptr i8, ptr %22, i64 %27, !dbg !504
  %29 = load <2 x i8>, ptr %28, align 2, !dbg !504
  %30 = getelementptr i8, ptr %24, i64 %27, !dbg !504
  store <2 x i8> %29, ptr %30, align 2, !dbg !504
  %31 = add nuw nsw i64 %26, 2, !dbg !504
  %32 = icmp samesign ult i64 %26, 62, !dbg !504
  br i1 %32, label %25, label %33, !dbg !504

33:                                               ; preds = %25
  %34 = add nuw nsw i64 %20, 1, !dbg !504
  %exitcond.not = icmp eq i64 %34, 56, !dbg !504
  br i1 %exitcond.not, label %35, label %.preheader, !dbg !504

35:                                               ; preds = %33
  %36 = add nuw nsw i64 %14, 1, !dbg !504
  %exitcond24.not = icmp eq i64 %36, 4, !dbg !504
  br i1 %exitcond24.not, label %37, label %.preheader23, !dbg !504

37:                                               ; preds = %35
  ret i32 0, !dbg !504
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !505 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !506
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !506
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !506
  %5 = getelementptr i8, ptr %4, i64 3411968, !dbg !506
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !506
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !506
  %7 = load ptr, ptr %6, align 8, !dbg !506
  %8 = getelementptr i8, ptr %7, i64 602112, !dbg !506
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !506
  %9 = load i32, ptr %2, align 16, !dbg !506
  %10 = zext i32 %9 to i64, !dbg !506
  %11 = and i64 %10, 4294967292, !dbg !506
  %12 = shl nuw nsw i64 %10, 5, !dbg !506
  %13 = and i64 %12, 96, !dbg !506
  br label %.preheader27, !dbg !506

.preheader27:                                     ; preds = %3, %52
  %14 = phi i64 [ 0, %3 ], [ %53, %52 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = shl nuw i64 %15, 1
  %17 = mul nuw nsw i64 %15, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader26, !dbg !506

.preheader26:                                     ; preds = %.preheader27, %50
  %19 = phi i64 [ 0, %.preheader27 ], [ %51, %50 ]
  %20 = shl i64 %19, 8
  %invariant.gep = getelementptr i8, ptr %5, i64 %20, !dbg !506
  %21 = mul nuw nsw i64 %19, 1152
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 %21
  br label %23, !dbg !506

23:                                               ; preds = %.preheader26, %48
  %24 = phi i64 [ 0, %.preheader26 ], [ %49, %48 ]
  %25 = add nuw nsw i64 %16, %24, !dbg !506
  %26 = mul nuw nsw i64 %25, 7424
  %gep = getelementptr i8, ptr %invariant.gep, i64 %26
  %27 = mul nuw nsw i64 %24, 384
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 %27
  br label %.preheader, !dbg !506

.preheader:                                       ; preds = %23, %46
  %29 = phi i64 [ 0, %23 ], [ %47, %46 ]
  %30 = shl nuw nsw i64 %29, 7
  %31 = getelementptr i8, ptr %gep, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 %30
  br label %33, !dbg !506

33:                                               ; preds = %.preheader, %43
  %34 = phi i64 [ 0, %.preheader ], [ %44, %43 ]
  %35 = or disjoint i64 %34, %13, !dbg !506
  br label %36, !dbg !506

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %42, %36 ]
  %38 = or disjoint i64 %35, %37, !dbg !506
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 %38, !dbg !506
  %40 = load i8, ptr %39, align 1, !dbg !506
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 %38, !dbg !506
  store i8 %40, ptr %41, align 1, !dbg !506
  %42 = add nuw nsw i64 %37, 1, !dbg !506
  %exitcond.not = icmp eq i64 %42, 8, !dbg !506
  br i1 %exitcond.not, label %43, label %36, !dbg !506

43:                                               ; preds = %36
  %44 = add nuw nsw i64 %34, 8, !dbg !506
  %45 = icmp samesign ult i64 %34, 24, !dbg !506
  br i1 %45, label %33, label %46, !dbg !506

46:                                               ; preds = %43
  %47 = add nuw nsw i64 %29, 1, !dbg !506
  %exitcond28.not = icmp eq i64 %47, 3, !dbg !506
  br i1 %exitcond28.not, label %48, label %.preheader, !dbg !506

48:                                               ; preds = %46
  %49 = add nuw nsw i64 %24, 1, !dbg !506
  %exitcond29.not = icmp eq i64 %49, 3, !dbg !506
  br i1 %exitcond29.not, label %50, label %23, !dbg !506

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %19, 1, !dbg !506
  %exitcond30.not = icmp eq i64 %51, 28, !dbg !506
  br i1 %exitcond30.not, label %52, label %.preheader26, !dbg !506

52:                                               ; preds = %50
  %53 = add nuw nsw i64 %14, 1, !dbg !506
  %exitcond31.not = icmp eq i64 %53, 4, !dbg !506
  br i1 %exitcond31.not, label %54, label %.preheader27, !dbg !506

54:                                               ; preds = %52
  ret i32 0, !dbg !506
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !507 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !508
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !508
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !508
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !508
  %6 = load ptr, ptr %5, align 8, !dbg !508
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !508
  %8 = load ptr, ptr %7, align 8, !dbg !508
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !508
  %10 = load ptr, ptr %9, align 8, !dbg !508
  %11 = load i32, ptr %2, align 16, !dbg !508
  %12 = zext i32 %11 to i64, !dbg !508
  %13 = shl nuw nsw i64 %12, 1, !dbg !508
  %14 = and i64 %13, 8589934576, !dbg !508
  %15 = shl nuw nsw i64 %12, 4, !dbg !508
  %16 = and i64 %15, 112, !dbg !508
  %17 = mul nuw nsw i64 %14, 1152, !dbg !508
  %18 = ptrtoint ptr %4 to i64, !dbg !508
  %19 = add i64 %18, 602112, !dbg !508
  %20 = add i64 %19, %17, !dbg !508
  %21 = ptrtoint ptr %6 to i64, !dbg !508
  %22 = add i64 %21, 130944, !dbg !508
  %23 = add i64 %22, %16, !dbg !508
  %24 = shl nuw nsw i64 %14, 7, !dbg !508
  %25 = or disjoint i64 %24, %16, !dbg !508
  %26 = ptrtoint ptr %10 to i64, !dbg !508
  %27 = add i64 %26, 1505280, !dbg !508
  %28 = add i64 %27, %25, !dbg !508
  %29 = ptrtoint ptr %8 to i64, !dbg !508
  %30 = shl nuw nsw i64 %25, 2, !dbg !508
  %31 = add i64 %29, 18993152, !dbg !508
  %32 = add i64 %31, %30, !dbg !508
  %33 = and i64 %20, 9223372036854775807, !dbg !508
  %34 = and i64 %23, 9223372036854775807, !dbg !508
  %35 = and i64 %28, 9223372036854775807, !dbg !508
  %36 = and i64 %32, 9223372036854775807, !dbg !508
  tail call void asm sideeffect "fence", ""() #14, !dbg !508
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !508
  tail call void @llvm.riscv.config(i64 6, i64 4254254918749126784), !dbg !508
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !508
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !508
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !508
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !508
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %33, i64 %34), !dbg !508
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %36, i64 %35), !dbg !508
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !508
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !508
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !508
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !508
  tail call void asm sideeffect "fence", ""() #14, !dbg !508
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !508
  ret i32 0, !dbg !508
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !509 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !510
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !510
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !510
  %5 = getelementptr i8, ptr %4, i64 278400, !dbg !510
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !510
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !510
  %7 = load ptr, ptr %6, align 8, !dbg !510
  %8 = getelementptr i8, ptr %7, i64 3411968, !dbg !510
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !510
  %9 = load i32, ptr %2, align 16, !dbg !510
  %10 = zext i32 %9 to i64, !dbg !510
  %11 = lshr i64 %10, 3, !dbg !510
  %12 = mul nuw nsw i64 %11, 112, !dbg !510
  %13 = shl nuw nsw i64 %10, 6, !dbg !510
  %14 = and i64 %13, 448, !dbg !510
  br label %.preheader, !dbg !510

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !510

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !510
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !510
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !510
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !510
  store <2 x i32> %22, ptr %23, align 8, !dbg !510
  %24 = add nuw nsw i64 %19, 2, !dbg !510
  %25 = icmp samesign ult i64 %19, 62, !dbg !510
  br i1 %25, label %18, label %26, !dbg !510

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !510
  %exitcond.not = icmp eq i64 %27, 112, !dbg !510
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !510

28:                                               ; preds = %26
  ret i32 0, !dbg !510
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !511 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !512
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !512
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !512
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !512
  %6 = load ptr, ptr %5, align 8, !dbg !512
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !512
  %8 = load ptr, ptr %7, align 8, !dbg !512
  %9 = load i32, ptr %2, align 16, !dbg !512
  %10 = zext i32 %9 to i64, !dbg !512
  %11 = lshr i64 %10, 1, !dbg !512
  %12 = and i64 %11, 2147483632, !dbg !512
  %13 = shl nuw nsw i64 %10, 4, !dbg !512
  %14 = and i64 %13, 496, !dbg !512
  %15 = shl nuw nsw i64 %12, 7, !dbg !512
  %16 = ptrtoint ptr %4 to i64, !dbg !512
  %17 = add i64 %16, 1505280, !dbg !512
  %18 = add i64 %17, %15, !dbg !512
  %19 = ptrtoint ptr %6 to i64, !dbg !512
  %20 = add i64 %19, 266240, !dbg !512
  %21 = add i64 %20, %14, !dbg !512
  %22 = shl nuw nsw i64 %12, 9, !dbg !512
  %23 = or disjoint i64 %22, %14, !dbg !512
  %24 = ptrtoint ptr %8 to i64, !dbg !512
  %25 = add i64 %23, %24, !dbg !512
  %26 = shl nuw nsw i64 %23, 2, !dbg !512
  %27 = add i64 %16, 3411968, !dbg !512
  %28 = add i64 %27, %26, !dbg !512
  %29 = and i64 %18, 9223372036854775807, !dbg !512
  %30 = and i64 %21, 9223372036854775807, !dbg !512
  %31 = and i64 %25, 9223372036854775807, !dbg !512
  %32 = and i64 %28, 9223372036854775807, !dbg !512
  tail call void asm sideeffect "fence", ""() #14, !dbg !512
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !512
  tail call void @llvm.riscv.config(i64 2, i64 4339748824051352064), !dbg !512
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !512
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !512
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !512
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !512
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !512
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !512
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !512
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !512
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !512
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !512
  tail call void asm sideeffect "fence", ""() #14, !dbg !512
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !512
  ret i32 0, !dbg !512
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !513 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !514
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !514
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !514
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !514
  %6 = load ptr, ptr %5, align 8, !dbg !514
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !515
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !514
  %8 = load ptr, ptr %7, align 8, !dbg !514
  %9 = getelementptr i8, ptr %8, i64 602112, !dbg !514
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !514
  %10 = load i32, ptr %2, align 16, !dbg !514
  %11 = zext i32 %10 to i64, !dbg !514
  %12 = lshr i64 %11, 1, !dbg !514
  %13 = and i64 %12, 2147483632, !dbg !514
  %14 = shl nuw nsw i64 %11, 4, !dbg !514
  %15 = and i64 %14, 496, !dbg !514
  %16 = alloca [256 x i8], align 1, !dbg !514
  %17 = shl nuw nsw i64 %13, 8, !dbg !514
  %18 = ptrtoint ptr %4 to i64, !dbg !514
  %19 = add i64 %18, 401408, !dbg !514
  %20 = add i64 %19, %17, !dbg !514
  %21 = ptrtoint ptr %6 to i64, !dbg !514
  %22 = add i64 %21, 135168, !dbg !514
  %23 = add i64 %22, %15, !dbg !514
  %24 = ptrtoint ptr %16 to i64, !dbg !514
  %25 = shl nuw nsw i64 %13, 11, !dbg !514
  %26 = shl nuw nsw i64 %15, 2, !dbg !514
  %27 = add i64 %18, 1806336, !dbg !514
  %28 = add i64 %27, %26, !dbg !514
  %29 = add i64 %28, %25, !dbg !514
  %30 = and i64 %20, 9223372036854775744, !dbg !514
  %31 = and i64 %23, 9223372036854775807, !dbg !514
  %32 = and i64 %24, 9223372036854775807, !dbg !514
  %33 = and i64 %29, 9223372036854775744, !dbg !514
  call void asm sideeffect "fence", ""() #14, !dbg !514
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !514
  call void @llvm.riscv.config(i64 2, i64 4360734781583917072), !dbg !514
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !514
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !514
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !514
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !514
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !514
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !514
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 512), !dbg !514
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !514
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !514
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !514
  call void asm sideeffect "fence", ""() #14, !dbg !514
  br label %.preheader, !dbg !516

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = add nuw nsw i64 %34, %13
  %36 = shl nuw nsw i64 %35, 9
  %invariant.op = or disjoint i64 %36, %15, !dbg !516
  %37 = shl nuw nsw i64 %34, 4
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 %37
  br label %39, !dbg !516

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %.reass = add nuw nsw i64 %40, %invariant.op
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 %.reass, !dbg !516
  %42 = load i8, ptr %41, align 1, !dbg !516
  %43 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !516
  %44 = load i8, ptr %43, align 1, !dbg !516
  %45 = sitofp i8 %44 to float, !dbg !517
  %46 = fmul nnan contract float %45, 0x3FC3A62100000000, !dbg !517
  %47 = sitofp i8 %42 to float, !dbg !518
  %48 = fmul nnan contract float %47, 0x3FC0057A80000000, !dbg !518
  %49 = fadd contract float %48, %46, !dbg !519
  %50 = fdiv float %49, 0x3FC51838A0000000, !dbg !520
  %51 = bitcast float %50 to i32, !dbg !520
  %52 = call float @llvm.round.f32(float %50), !dbg !520
  %53 = bitcast float %52 to i32, !dbg !520
  %54 = lshr i32 %51, 23, !dbg !520
  %55 = and i32 %54, 255, !dbg !520
  %56 = add nsw i32 %55, -127, !dbg !520
  %57 = lshr i32 %53, 23, !dbg !520
  %58 = and i32 %57, 255, !dbg !520
  %59 = icmp eq i32 %58, 127, !dbg !520
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !520
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !520
  %62 = lshr i32 8388607, %61, !dbg !520
  %63 = and i32 %62, %53, !dbg !520
  %64 = icmp ne i32 %63, 0, !dbg !520
  %65 = or i1 %59, %64, !dbg !520
  %66 = icmp eq i32 %56, -1, !dbg !520
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !520
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !520
  %69 = lshr i32 4194304, %68, !dbg !520
  %70 = select i1 %66, i32 0, i32 %69, !dbg !520
  %71 = lshr i32 8388607, %68, !dbg !520
  %72 = and i32 %71, %51, !dbg !520
  %73 = icmp eq i32 %72, %70, !dbg !520
  %74 = add nsw i32 %55, -126, !dbg !520
  %75 = icmp ult i32 %74, 24, !dbg !520
  %76 = and i1 %75, %73, !dbg !520
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !520
  %78 = and i1 %65, %76, !dbg !520
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !520
  %80 = fsub contract float %52, %79, !dbg !520
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !520
  %82 = fadd contract float %81, 0.000000e+00, !dbg !520
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !520
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !520
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !520
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !520
  %85 = fptosi float %84 to i8, !dbg !520
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !521
  %87 = uitofp nneg i8 %86 to float, !dbg !521
  %88 = bitcast float %87 to i32, !dbg !516
  %89 = lshr i32 %88, 23, !dbg !516
  %90 = add nsw i32 %89, -127, !dbg !516
  %91 = icmp eq i32 %90, 0, !dbg !516
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !516
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !516
  %94 = lshr i32 8388607, %93, !dbg !516
  %95 = and i32 %94, %88, !dbg !516
  %96 = icmp ne i32 %95, 0, !dbg !516
  %97 = or i1 %91, %96, !dbg !516
  %98 = icmp eq i32 %90, -1, !dbg !516
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !516
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !516
  %101 = lshr i32 4194304, %100, !dbg !516
  %102 = select i1 %98, i32 0, i32 %101, !dbg !516
  %103 = lshr i32 8388607, %100, !dbg !516
  %104 = and i32 %103, %88, !dbg !516
  %105 = icmp eq i32 %104, %102, !dbg !516
  %106 = add nsw i32 %88, -1056964608, !dbg !516
  %107 = icmp ult i32 %106, 201326592, !dbg !516
  %108 = and i1 %107, %105, !dbg !516
  %109 = add nsw i8 %86, -1, !dbg !516
  %110 = sitofp i8 %109 to float, !dbg !516
  %111 = and i1 %97, %108, !dbg !516
  %112 = call float @llvm.fabs.f32(float %110), !dbg !516
  %113 = select i1 %111, float %112, float %87, !dbg !516
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !516
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !516
  %115 = fptosi float %114 to i8, !dbg !516
  %116 = getelementptr inbounds nuw i8, ptr %9, i64 %.reass, !dbg !516
  store i8 %115, ptr %116, align 1, !dbg !516
  %117 = add nuw nsw i64 %40, 1, !dbg !516
  %exitcond.not = icmp eq i64 %117, 16, !dbg !516
  br i1 %exitcond.not, label %118, label %39, !dbg !516

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !516
  %exitcond25.not = icmp eq i64 %119, 16, !dbg !516
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !516

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !514
  ret i32 0, !dbg !514
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !522 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !523
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !523
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !523
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !523
  %6 = load ptr, ptr %5, align 8, !dbg !523
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !523
  %8 = load ptr, ptr %7, align 8, !dbg !523
  %9 = load i32, ptr %2, align 16, !dbg !523
  %10 = zext i32 %9 to i64, !dbg !523
  %11 = shl nuw nsw i64 %10, 1, !dbg !523
  %12 = and i64 %11, 8589934576, !dbg !523
  %13 = shl nuw nsw i64 %10, 4, !dbg !523
  %14 = and i64 %13, 112, !dbg !523
  %15 = shl nuw nsw i64 %12, 9, !dbg !523
  %16 = ptrtoint ptr %4 to i64, !dbg !523
  %17 = add i64 %16, 602112, !dbg !523
  %18 = add i64 %17, %15, !dbg !523
  %19 = ptrtoint ptr %6 to i64, !dbg !523
  %20 = add i64 %19, 331776, !dbg !523
  %21 = add i64 %20, %14, !dbg !523
  %22 = shl nuw nsw i64 %12, 7, !dbg !523
  %23 = or disjoint i64 %22, %14, !dbg !523
  %24 = ptrtoint ptr %8 to i64, !dbg !523
  %25 = add i64 %23, %24, !dbg !523
  %26 = shl nuw nsw i64 %23, 2, !dbg !523
  %27 = add i64 %19, 19394560, !dbg !523
  %28 = add i64 %27, %26, !dbg !523
  %29 = and i64 %18, 9223372036854775807, !dbg !523
  %30 = and i64 %21, 9223372036854775807, !dbg !523
  %31 = and i64 %25, 9223372036854775807, !dbg !523
  %32 = and i64 %28, 9223372036854775807, !dbg !523
  tail call void asm sideeffect "fence", ""() #14, !dbg !523
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !523
  tail call void @llvm.riscv.config(i64 6, i64 4355096271208317056), !dbg !523
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !523
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !523
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !523
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !523
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !523
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !523
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 128), !dbg !523
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !523
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !523
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !523
  tail call void asm sideeffect "fence", ""() #14, !dbg !523
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !523
  ret i32 0, !dbg !523
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_37_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !524 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !525
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !525
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !525
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !525
  %4 = load i32, ptr %.unpack18, align 4, !dbg !525
  %5 = zext i32 %4 to i64, !dbg !525
  %6 = load ptr, ptr %.unpack20, align 8, !dbg !526
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !526
  %7 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !525
  %8 = load ptr, ptr %7, align 8, !dbg !525
  %9 = getelementptr i8, ptr %8, i64 %5, !dbg !525
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !525
  %10 = load i32, ptr %2, align 16, !dbg !525
  %11 = zext i32 %10 to i64, !dbg !525
  %12 = shl nuw nsw i64 %11, 1, !dbg !525
  %13 = and i64 %12, 8589934588, !dbg !525
  %14 = shl nuw nsw i64 %11, 6, !dbg !525
  %15 = and i64 %14, 64, !dbg !525
  br label %.preheader23, !dbg !525

.preheader23:                                     ; preds = %3, %37
  %16 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %17 = add nuw nsw i64 %16, %13
  %18 = mul nuw nsw i64 %17, 3584
  %19 = getelementptr i8, ptr %6, i64 %18
  %20 = mul nuw nsw i64 %17, 3840
  %21 = getelementptr i8, ptr %9, i64 %20
  br label %.preheader, !dbg !525

.preheader:                                       ; preds = %.preheader23, %35
  %22 = phi i64 [ 0, %.preheader23 ], [ %36, %35 ]
  %23 = shl i64 %22, 7
  %24 = getelementptr i8, ptr %19, i64 %23
  %25 = getelementptr i8, ptr %21, i64 %23
  %26 = getelementptr i8, ptr %25, i64 3968
  br label %27, !dbg !525

27:                                               ; preds = %.preheader, %27
  %28 = phi i64 [ 0, %.preheader ], [ %33, %27 ]
  %29 = or disjoint i64 %28, %15, !dbg !525
  %30 = getelementptr i8, ptr %24, i64 %29, !dbg !525
  %31 = load <2 x i8>, ptr %30, align 2, !dbg !525
  %32 = getelementptr i8, ptr %26, i64 %29, !dbg !525
  store <2 x i8> %31, ptr %32, align 2, !dbg !525
  %33 = add nuw nsw i64 %28, 2, !dbg !525
  %34 = icmp samesign ult i64 %28, 62, !dbg !525
  br i1 %34, label %27, label %35, !dbg !525

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %22, 1, !dbg !525
  %exitcond.not = icmp eq i64 %36, 28, !dbg !525
  br i1 %exitcond.not, label %37, label %.preheader, !dbg !525

37:                                               ; preds = %35
  %38 = add nuw nsw i64 %16, 1, !dbg !525
  %exitcond24.not = icmp eq i64 %38, 4, !dbg !525
  br i1 %exitcond24.not, label %39, label %.preheader23, !dbg !525

39:                                               ; preds = %37
  ret i32 0, !dbg !525
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !527 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !528
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !528
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !528
  %5 = getelementptr i8, ptr %4, i64 100352, !dbg !528
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !528
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !528
  %7 = load ptr, ptr %6, align 8, !dbg !528
  %8 = getelementptr i8, ptr %7, i64 1003520, !dbg !528
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !528
  %9 = load i32, ptr %2, align 16, !dbg !528
  %10 = zext i32 %9 to i64, !dbg !528
  %11 = and i64 %10, 4294967292, !dbg !528
  %12 = shl nuw nsw i64 %10, 5, !dbg !528
  %13 = and i64 %12, 96, !dbg !528
  br label %.preheader26, !dbg !528

.preheader26:                                     ; preds = %3, %54
  %14 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = mul nuw nsw i64 %15, 32256
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 %16
  br label %.preheader, !dbg !528

.preheader:                                       ; preds = %.preheader26, %52
  %18 = phi i64 [ 0, %.preheader26 ], [ %53, %52 ]
  %19 = mul nuw nsw i64 %18, 1152
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  br label %21, !dbg !528

21:                                               ; preds = %.preheader, %50
  %22 = phi i64 [ 0, %.preheader ], [ %51, %50 ]
  %23 = add nuw nsw i64 %15, %22, !dbg !528
  %24 = mul nuw nsw i64 %23, 3840
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 %24
  %26 = mul nuw nsw i64 %22, 384
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  br label %28, !dbg !528

28:                                               ; preds = %21, %48
  %29 = phi i64 [ 0, %21 ], [ %49, %48 ]
  %30 = add nuw nsw i64 %29, %18, !dbg !528
  %31 = shl nuw nsw i64 %30, 7
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 %31
  %33 = shl nuw nsw i64 %29, 7
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 %33
  br label %35, !dbg !528

35:                                               ; preds = %28, %45
  %36 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %37 = or disjoint i64 %36, %13, !dbg !528
  br label %38, !dbg !528

38:                                               ; preds = %35, %38
  %39 = phi i64 [ 0, %35 ], [ %44, %38 ]
  %40 = or disjoint i64 %37, %39, !dbg !528
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 %40, !dbg !528
  %42 = load i8, ptr %41, align 1, !dbg !528
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 %40, !dbg !528
  store i8 %42, ptr %43, align 1, !dbg !528
  %44 = add nuw nsw i64 %39, 1, !dbg !528
  %exitcond.not = icmp eq i64 %44, 8, !dbg !528
  br i1 %exitcond.not, label %45, label %38, !dbg !528

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %36, 8, !dbg !528
  %47 = icmp samesign ult i64 %36, 24, !dbg !528
  br i1 %47, label %35, label %48, !dbg !528

48:                                               ; preds = %45
  %49 = add nuw nsw i64 %29, 1, !dbg !528
  %exitcond27.not = icmp eq i64 %49, 3, !dbg !528
  br i1 %exitcond27.not, label %50, label %28, !dbg !528

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %22, 1, !dbg !528
  %exitcond28.not = icmp eq i64 %51, 3, !dbg !528
  br i1 %exitcond28.not, label %52, label %21, !dbg !528

52:                                               ; preds = %50
  %53 = add nuw nsw i64 %18, 1, !dbg !528
  %exitcond29.not = icmp eq i64 %53, 28, !dbg !528
  br i1 %exitcond29.not, label %54, label %.preheader, !dbg !528

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %14, 1, !dbg !528
  %exitcond30.not = icmp eq i64 %55, 4, !dbg !528
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !528

56:                                               ; preds = %54
  ret i32 0, !dbg !528
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !529 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !530
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !530
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !530
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !530
  %6 = load ptr, ptr %5, align 8, !dbg !530
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !530
  %8 = load ptr, ptr %7, align 8, !dbg !530
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !530
  %10 = load ptr, ptr %9, align 8, !dbg !530
  %11 = load i32, ptr %2, align 16, !dbg !530
  %12 = zext i32 %11 to i64, !dbg !530
  %13 = shl nuw nsw i64 %12, 1, !dbg !530
  %14 = and i64 %13, 8589934576, !dbg !530
  %15 = shl nuw nsw i64 %12, 4, !dbg !530
  %16 = and i64 %15, 112, !dbg !530
  %17 = mul nuw nsw i64 %14, 1152, !dbg !530
  %18 = ptrtoint ptr %4 to i64, !dbg !530
  %19 = add i64 %18, 1003520, !dbg !530
  %20 = add i64 %19, %17, !dbg !530
  %21 = ptrtoint ptr %6 to i64, !dbg !530
  %22 = add i64 %21, 280448, !dbg !530
  %23 = add i64 %22, %16, !dbg !530
  %24 = shl nuw nsw i64 %14, 7, !dbg !530
  %25 = or disjoint i64 %24, %16, !dbg !530
  %26 = ptrtoint ptr %10 to i64, !dbg !530
  %27 = add i64 %25, %26, !dbg !530
  %28 = ptrtoint ptr %8 to i64, !dbg !530
  %29 = shl nuw nsw i64 %25, 2, !dbg !530
  %30 = add i64 %28, 19795968, !dbg !530
  %31 = add i64 %30, %29, !dbg !530
  %32 = and i64 %20, 9223372036854775807, !dbg !530
  %33 = and i64 %23, 9223372036854775807, !dbg !530
  %34 = and i64 %27, 9223372036854775807, !dbg !530
  %35 = and i64 %31, 9223372036854775807, !dbg !530
  tail call void asm sideeffect "fence", ""() #14, !dbg !530
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !530
  tail call void @llvm.riscv.config(i64 6, i64 4300939233276723328), !dbg !530
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !530
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !530
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !530
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !530
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !530
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 %34), !dbg !530
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !530
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !530
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !530
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !530
  tail call void asm sideeffect "fence", ""() #14, !dbg !530
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !530
  ret i32 0, !dbg !530
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !531 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !532
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !532
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !532
  %5 = getelementptr i8, ptr %4, i64 427904, !dbg !532
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !532
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !532
  %7 = load ptr, ptr %6, align 8, !dbg !532
  %8 = getelementptr i8, ptr %7, i64 1906688, !dbg !532
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !532
  %9 = load i32, ptr %2, align 16, !dbg !532
  %10 = zext i32 %9 to i64, !dbg !532
  %11 = lshr i64 %10, 3, !dbg !532
  %12 = mul nuw nsw i64 %11, 112, !dbg !532
  %13 = shl nuw nsw i64 %10, 6, !dbg !532
  %14 = and i64 %13, 448, !dbg !532
  br label %.preheader, !dbg !532

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !532

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !532
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !532
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !532
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !532
  store <2 x i32> %22, ptr %23, align 8, !dbg !532
  %24 = add nuw nsw i64 %19, 2, !dbg !532
  %25 = icmp samesign ult i64 %19, 62, !dbg !532
  br i1 %25, label %18, label %26, !dbg !532

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !532
  %exitcond.not = icmp eq i64 %27, 112, !dbg !532
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !532

28:                                               ; preds = %26
  ret i32 0, !dbg !532
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !533 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !534
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !534
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !534
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !534
  %6 = load ptr, ptr %5, align 8, !dbg !534
  %7 = getelementptr i8, ptr %4, i64 602112, !dbg !535
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !535
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !534
  %9 = load ptr, ptr %8, align 8, !dbg !534
  %10 = getelementptr i8, ptr %9, i64 100352, !dbg !534
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !534
  %11 = load i32, ptr %2, align 16, !dbg !534
  %12 = zext i32 %11 to i64, !dbg !534
  %13 = lshr i64 %12, 1, !dbg !534
  %14 = and i64 %13, 2147483632, !dbg !534
  %15 = shl nuw nsw i64 %12, 4, !dbg !534
  %16 = and i64 %15, 496, !dbg !534
  %17 = alloca [256 x i8], align 1, !dbg !534
  %18 = shl nuw nsw i64 %14, 7, !dbg !534
  %19 = ptrtoint ptr %4 to i64, !dbg !534
  %20 = add i64 %18, %19, !dbg !534
  %21 = ptrtoint ptr %6 to i64, !dbg !534
  %22 = add i64 %21, 397312, !dbg !534
  %23 = add i64 %22, %16, !dbg !534
  %24 = ptrtoint ptr %17 to i64, !dbg !534
  %25 = shl nuw nsw i64 %14, 11, !dbg !534
  %26 = shl nuw nsw i64 %16, 2, !dbg !534
  %27 = add i64 %19, 1906688, !dbg !534
  %28 = add i64 %27, %26, !dbg !534
  %29 = add i64 %28, %25, !dbg !534
  %30 = and i64 %20, 9223372036854775807, !dbg !534
  %31 = and i64 %23, 9223372036854775807, !dbg !534
  %32 = and i64 %24, 9223372036854775807, !dbg !534
  %33 = and i64 %29, 9223372036854775807, !dbg !534
  call void asm sideeffect "fence", ""() #14, !dbg !534
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !534
  call void @llvm.riscv.config(i64 2, i64 4332268051878641680), !dbg !534
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !534
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !534
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !534
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !534
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !534
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !534
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !534
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !534
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !534
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !534
  call void asm sideeffect "fence", ""() #14, !dbg !534
  br label %.preheader, !dbg !536

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 9
  %invariant.op = or disjoint i64 %38, %16, !dbg !536
  br label %39, !dbg !536

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !536
  %42 = load i8, ptr %41, align 1, !dbg !536
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !536
  %44 = load i8, ptr %43, align 1, !dbg !536
  %45 = sitofp i8 %44 to float, !dbg !537
  %46 = fmul nnan contract float %45, 0x3FC51838A0000000, !dbg !537
  %47 = sitofp i8 %42 to float, !dbg !538
  %48 = fmul nnan contract float %47, 0x3FBDF7D760000000, !dbg !538
  %49 = fadd contract float %48, %46, !dbg !539
  %50 = fdiv float %49, 0x3FC25528C0000000, !dbg !540
  %51 = bitcast float %50 to i32, !dbg !540
  %52 = call float @llvm.round.f32(float %50), !dbg !540
  %53 = bitcast float %52 to i32, !dbg !540
  %54 = lshr i32 %51, 23, !dbg !540
  %55 = and i32 %54, 255, !dbg !540
  %56 = add nsw i32 %55, -127, !dbg !540
  %57 = lshr i32 %53, 23, !dbg !540
  %58 = and i32 %57, 255, !dbg !540
  %59 = icmp eq i32 %58, 127, !dbg !540
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !540
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !540
  %62 = lshr i32 8388607, %61, !dbg !540
  %63 = and i32 %62, %53, !dbg !540
  %64 = icmp ne i32 %63, 0, !dbg !540
  %65 = or i1 %59, %64, !dbg !540
  %66 = icmp eq i32 %56, -1, !dbg !540
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !540
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !540
  %69 = lshr i32 4194304, %68, !dbg !540
  %70 = select i1 %66, i32 0, i32 %69, !dbg !540
  %71 = lshr i32 8388607, %68, !dbg !540
  %72 = and i32 %71, %51, !dbg !540
  %73 = icmp eq i32 %72, %70, !dbg !540
  %74 = add nsw i32 %55, -126, !dbg !540
  %75 = icmp ult i32 %74, 24, !dbg !540
  %76 = and i1 %75, %73, !dbg !540
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !540
  %78 = and i1 %65, %76, !dbg !540
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !540
  %80 = fsub contract float %52, %79, !dbg !540
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !540
  %82 = fadd contract float %81, 0.000000e+00, !dbg !540
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !540
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !540
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !540
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !540
  %85 = fptosi float %84 to i8, !dbg !540
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !541
  %87 = uitofp nneg i8 %86 to float, !dbg !541
  %88 = bitcast float %87 to i32, !dbg !536
  %89 = lshr i32 %88, 23, !dbg !536
  %90 = add nsw i32 %89, -127, !dbg !536
  %91 = icmp eq i32 %90, 0, !dbg !536
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !536
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !536
  %94 = lshr i32 8388607, %93, !dbg !536
  %95 = and i32 %94, %88, !dbg !536
  %96 = icmp ne i32 %95, 0, !dbg !536
  %97 = or i1 %91, %96, !dbg !536
  %98 = icmp eq i32 %90, -1, !dbg !536
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !536
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !536
  %101 = lshr i32 4194304, %100, !dbg !536
  %102 = select i1 %98, i32 0, i32 %101, !dbg !536
  %103 = lshr i32 8388607, %100, !dbg !536
  %104 = and i32 %103, %88, !dbg !536
  %105 = icmp eq i32 %104, %102, !dbg !536
  %106 = add nsw i32 %88, -1056964608, !dbg !536
  %107 = icmp ult i32 %106, 201326592, !dbg !536
  %108 = and i1 %107, %105, !dbg !536
  %109 = add nsw i8 %86, -1, !dbg !536
  %110 = sitofp i8 %109 to float, !dbg !536
  %111 = and i1 %97, %108, !dbg !536
  %112 = call float @llvm.fabs.f32(float %110), !dbg !536
  %113 = select i1 %111, float %112, float %87, !dbg !536
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !536
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !536
  %115 = fptosi float %114 to i8, !dbg !536
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !536
  store i8 %115, ptr %116, align 1, !dbg !536
  %117 = add nuw nsw i64 %40, 1, !dbg !536
  %exitcond.not = icmp eq i64 %117, 16, !dbg !536
  br i1 %exitcond.not, label %118, label %39, !dbg !536

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !536
  %exitcond25.not = icmp eq i64 %119, 16, !dbg !536
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !536

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !534
  ret i32 0, !dbg !534
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !542 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !543
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !543
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !543
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !543
  %6 = load ptr, ptr %5, align 8, !dbg !543
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !543
  %8 = load ptr, ptr %7, align 8, !dbg !543
  %9 = load i32, ptr %2, align 16, !dbg !543
  %10 = zext i32 %9 to i64, !dbg !543
  %11 = shl nuw nsw i64 %10, 1, !dbg !543
  %12 = and i64 %11, 8589934576, !dbg !543
  %13 = shl nuw nsw i64 %10, 4, !dbg !543
  %14 = and i64 %13, 112, !dbg !543
  %15 = shl nuw nsw i64 %12, 9, !dbg !543
  %16 = ptrtoint ptr %4 to i64, !dbg !543
  %17 = add i64 %16, 100352, !dbg !543
  %18 = add i64 %17, %15, !dbg !543
  %19 = ptrtoint ptr %6 to i64, !dbg !543
  %20 = add i64 %19, 462848, !dbg !543
  %21 = add i64 %20, %14, !dbg !543
  %22 = shl nuw nsw i64 %12, 7, !dbg !543
  %23 = or disjoint i64 %22, %14, !dbg !543
  %24 = ptrtoint ptr %8 to i64, !dbg !543
  %25 = add i64 %23, %24, !dbg !543
  %26 = shl nuw nsw i64 %23, 2, !dbg !543
  %27 = add i64 %19, 20197376, !dbg !543
  %28 = add i64 %27, %26, !dbg !543
  %29 = and i64 %18, 9223372036854775807, !dbg !543
  %30 = and i64 %21, 9223372036854775807, !dbg !543
  %31 = and i64 %25, 9223372036854775807, !dbg !543
  %32 = and i64 %28, 9223372036854775807, !dbg !543
  tail call void asm sideeffect "fence", ""() #14, !dbg !543
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !543
  tail call void @llvm.riscv.config(i64 6, i64 4361453647440117888), !dbg !543
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !543
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !543
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !543
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !543
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !543
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !543
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 128), !dbg !543
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !543
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !543
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !543
  tail call void asm sideeffect "fence", ""() #14, !dbg !543
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !543
  ret i32 0, !dbg !543
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !544 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !545
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !545
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !545
  %5 = getelementptr i8, ptr %4, i64 501760, !dbg !545
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !545
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !545
  %7 = load ptr, ptr %6, align 8, !dbg !545
  %8 = getelementptr i8, ptr %7, i64 616960, !dbg !545
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !545
  %9 = load i32, ptr %2, align 16, !dbg !545
  %10 = zext i32 %9 to i64, !dbg !545
  %11 = and i64 %10, 4294967292, !dbg !545
  %12 = shl nuw nsw i64 %10, 5, !dbg !545
  %13 = and i64 %12, 96, !dbg !545
  br label %.preheader26, !dbg !545

.preheader26:                                     ; preds = %3, %54
  %14 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = mul nuw nsw i64 %15, 32256
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 %16
  br label %.preheader, !dbg !545

.preheader:                                       ; preds = %.preheader26, %52
  %18 = phi i64 [ 0, %.preheader26 ], [ %53, %52 ]
  %19 = mul nuw nsw i64 %18, 1152
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  br label %21, !dbg !545

21:                                               ; preds = %.preheader, %50
  %22 = phi i64 [ 0, %.preheader ], [ %51, %50 ]
  %23 = add nuw nsw i64 %15, %22, !dbg !545
  %24 = mul nuw nsw i64 %23, 3840
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 %24
  %26 = mul nuw nsw i64 %22, 384
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  br label %28, !dbg !545

28:                                               ; preds = %21, %48
  %29 = phi i64 [ 0, %21 ], [ %49, %48 ]
  %30 = add nuw nsw i64 %29, %18, !dbg !545
  %31 = shl nuw nsw i64 %30, 7
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 %31
  %33 = shl nuw nsw i64 %29, 7
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 %33
  br label %35, !dbg !545

35:                                               ; preds = %28, %45
  %36 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %37 = or disjoint i64 %36, %13, !dbg !545
  br label %38, !dbg !545

38:                                               ; preds = %35, %38
  %39 = phi i64 [ 0, %35 ], [ %44, %38 ]
  %40 = or disjoint i64 %37, %39, !dbg !545
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 %40, !dbg !545
  %42 = load i8, ptr %41, align 1, !dbg !545
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 %40, !dbg !545
  store i8 %42, ptr %43, align 1, !dbg !545
  %44 = add nuw nsw i64 %39, 1, !dbg !545
  %exitcond.not = icmp eq i64 %44, 8, !dbg !545
  br i1 %exitcond.not, label %45, label %38, !dbg !545

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %36, 8, !dbg !545
  %47 = icmp samesign ult i64 %36, 24, !dbg !545
  br i1 %47, label %35, label %48, !dbg !545

48:                                               ; preds = %45
  %49 = add nuw nsw i64 %29, 1, !dbg !545
  %exitcond27.not = icmp eq i64 %49, 3, !dbg !545
  br i1 %exitcond27.not, label %50, label %28, !dbg !545

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %22, 1, !dbg !545
  %exitcond28.not = icmp eq i64 %51, 3, !dbg !545
  br i1 %exitcond28.not, label %52, label %21, !dbg !545

52:                                               ; preds = %50
  %53 = add nuw nsw i64 %18, 1, !dbg !545
  %exitcond29.not = icmp eq i64 %53, 28, !dbg !545
  br i1 %exitcond29.not, label %54, label %.preheader, !dbg !545

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %14, 1, !dbg !545
  %exitcond30.not = icmp eq i64 %55, 4, !dbg !545
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !545

56:                                               ; preds = %54
  ret i32 0, !dbg !545
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !546 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !547
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !547
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !547
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !547
  %6 = load ptr, ptr %5, align 8, !dbg !547
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !547
  %8 = load ptr, ptr %7, align 8, !dbg !547
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !547
  %10 = load ptr, ptr %9, align 8, !dbg !547
  %11 = load i32, ptr %2, align 16, !dbg !547
  %12 = zext i32 %11 to i64, !dbg !547
  %13 = shl nuw nsw i64 %12, 1, !dbg !547
  %14 = and i64 %13, 8589934576, !dbg !547
  %15 = shl nuw nsw i64 %12, 4, !dbg !547
  %16 = and i64 %15, 112, !dbg !547
  %17 = mul nuw nsw i64 %14, 1152, !dbg !547
  %18 = ptrtoint ptr %4 to i64, !dbg !547
  %19 = add i64 %18, 616960, !dbg !547
  %20 = add i64 %19, %17, !dbg !547
  %21 = ptrtoint ptr %6 to i64, !dbg !547
  %22 = add i64 %21, 429952, !dbg !547
  %23 = add i64 %22, %16, !dbg !547
  %24 = shl nuw nsw i64 %14, 7, !dbg !547
  %25 = or disjoint i64 %24, %16, !dbg !547
  %26 = ptrtoint ptr %10 to i64, !dbg !547
  %27 = add i64 %25, %26, !dbg !547
  %28 = ptrtoint ptr %8 to i64, !dbg !547
  %29 = shl nuw nsw i64 %25, 2, !dbg !547
  %30 = add i64 %28, 20598784, !dbg !547
  %31 = add i64 %30, %29, !dbg !547
  %32 = and i64 %20, 9223372036854775807, !dbg !547
  %33 = and i64 %23, 9223372036854775807, !dbg !547
  %34 = and i64 %27, 9223372036854775807, !dbg !547
  %35 = and i64 %31, 9223372036854775807, !dbg !547
  tail call void asm sideeffect "fence", ""() #14, !dbg !547
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !547
  tail call void @llvm.riscv.config(i64 6, i64 4312540919195762816), !dbg !547
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !547
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !547
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !547
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !547
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !547
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 %34), !dbg !547
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !547
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !547
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !547
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !547
  tail call void asm sideeffect "fence", ""() #14, !dbg !547
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !547
  ret i32 0, !dbg !547
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !548 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !549
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !549
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !549
  %5 = getelementptr i8, ptr %4, i64 577408, !dbg !549
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !549
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !549
  %7 = load ptr, ptr %6, align 8, !dbg !549
  %8 = getelementptr i8, ptr %7, i64 1520128, !dbg !549
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !549
  %9 = load i32, ptr %2, align 16, !dbg !549
  %10 = zext i32 %9 to i64, !dbg !549
  %11 = lshr i64 %10, 3, !dbg !549
  %12 = mul nuw nsw i64 %11, 112, !dbg !549
  %13 = shl nuw nsw i64 %10, 6, !dbg !549
  %14 = and i64 %13, 448, !dbg !549
  br label %.preheader, !dbg !549

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !549

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !549
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !549
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !549
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !549
  store <2 x i32> %22, ptr %23, align 8, !dbg !549
  %24 = add nuw nsw i64 %19, 2, !dbg !549
  %25 = icmp samesign ult i64 %19, 62, !dbg !549
  br i1 %25, label %18, label %26, !dbg !549

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !549
  %exitcond.not = icmp eq i64 %27, 112, !dbg !549
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !549

28:                                               ; preds = %26
  ret i32 0, !dbg !549
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !550 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !551
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !551
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !551
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !551
  %6 = load ptr, ptr %5, align 8, !dbg !551
  %7 = getelementptr i8, ptr %4, i64 100352, !dbg !552
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !552
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !551
  %9 = load ptr, ptr %8, align 8, !dbg !551
  %10 = getelementptr i8, ptr %9, i64 501760, !dbg !551
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !551
  %11 = load i32, ptr %2, align 16, !dbg !551
  %12 = zext i32 %11 to i64, !dbg !551
  %13 = lshr i64 %12, 1, !dbg !551
  %14 = and i64 %13, 2147483632, !dbg !551
  %15 = shl nuw nsw i64 %12, 4, !dbg !551
  %16 = and i64 %15, 496, !dbg !551
  %17 = alloca [256 x i8], align 1, !dbg !551
  %18 = shl nuw nsw i64 %14, 7, !dbg !551
  %19 = ptrtoint ptr %4 to i64, !dbg !551
  %20 = add i64 %18, %19, !dbg !551
  %21 = ptrtoint ptr %6 to i64, !dbg !551
  %22 = add i64 %21, 528384, !dbg !551
  %23 = add i64 %22, %16, !dbg !551
  %24 = ptrtoint ptr %17 to i64, !dbg !551
  %25 = shl nuw nsw i64 %14, 11, !dbg !551
  %26 = shl nuw nsw i64 %16, 2, !dbg !551
  %27 = add i64 %19, 1520128, !dbg !551
  %28 = add i64 %27, %26, !dbg !551
  %29 = add i64 %28, %25, !dbg !551
  %30 = and i64 %20, 9223372036854775807, !dbg !551
  %31 = and i64 %23, 9223372036854775807, !dbg !551
  %32 = and i64 %24, 9223372036854775807, !dbg !551
  %33 = and i64 %29, 9223372036854775807, !dbg !551
  call void asm sideeffect "fence", ""() #14, !dbg !551
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !551
  call void @llvm.riscv.config(i64 2, i64 4375419300538744848), !dbg !551
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !551
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !551
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !551
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !551
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !551
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !551
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !551
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !551
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !551
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !551
  call void asm sideeffect "fence", ""() #14, !dbg !551
  br label %.preheader, !dbg !553

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 9
  %invariant.op = or disjoint i64 %38, %16, !dbg !553
  br label %39, !dbg !553

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !553
  %42 = load i8, ptr %41, align 1, !dbg !553
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !553
  %44 = load i8, ptr %43, align 1, !dbg !553
  %45 = sitofp i8 %44 to float, !dbg !554
  %46 = fmul nnan contract float %45, 0x3FC25528C0000000, !dbg !554
  %47 = sitofp i8 %42 to float, !dbg !555
  %48 = fmul nnan contract float %47, 0x3FB1D9BD40000000, !dbg !555
  %49 = fadd contract float %48, %46, !dbg !556
  %50 = fdiv float %49, 0x3FC2B63480000000, !dbg !557
  %51 = bitcast float %50 to i32, !dbg !557
  %52 = call float @llvm.round.f32(float %50), !dbg !557
  %53 = bitcast float %52 to i32, !dbg !557
  %54 = lshr i32 %51, 23, !dbg !557
  %55 = and i32 %54, 255, !dbg !557
  %56 = add nsw i32 %55, -127, !dbg !557
  %57 = lshr i32 %53, 23, !dbg !557
  %58 = and i32 %57, 255, !dbg !557
  %59 = icmp eq i32 %58, 127, !dbg !557
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !557
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !557
  %62 = lshr i32 8388607, %61, !dbg !557
  %63 = and i32 %62, %53, !dbg !557
  %64 = icmp ne i32 %63, 0, !dbg !557
  %65 = or i1 %59, %64, !dbg !557
  %66 = icmp eq i32 %56, -1, !dbg !557
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !557
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !557
  %69 = lshr i32 4194304, %68, !dbg !557
  %70 = select i1 %66, i32 0, i32 %69, !dbg !557
  %71 = lshr i32 8388607, %68, !dbg !557
  %72 = and i32 %71, %51, !dbg !557
  %73 = icmp eq i32 %72, %70, !dbg !557
  %74 = add nsw i32 %55, -126, !dbg !557
  %75 = icmp ult i32 %74, 24, !dbg !557
  %76 = and i1 %75, %73, !dbg !557
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !557
  %78 = and i1 %65, %76, !dbg !557
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !557
  %80 = fsub contract float %52, %79, !dbg !557
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !557
  %82 = fadd contract float %81, 0.000000e+00, !dbg !557
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !557
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !557
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !557
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !557
  %85 = fptosi float %84 to i8, !dbg !557
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !558
  %87 = uitofp nneg i8 %86 to float, !dbg !558
  %88 = bitcast float %87 to i32, !dbg !553
  %89 = lshr i32 %88, 23, !dbg !553
  %90 = add nsw i32 %89, -127, !dbg !553
  %91 = icmp eq i32 %90, 0, !dbg !553
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !553
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !553
  %94 = lshr i32 8388607, %93, !dbg !553
  %95 = and i32 %94, %88, !dbg !553
  %96 = icmp ne i32 %95, 0, !dbg !553
  %97 = or i1 %91, %96, !dbg !553
  %98 = icmp eq i32 %90, -1, !dbg !553
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !553
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !553
  %101 = lshr i32 4194304, %100, !dbg !553
  %102 = select i1 %98, i32 0, i32 %101, !dbg !553
  %103 = lshr i32 8388607, %100, !dbg !553
  %104 = and i32 %103, %88, !dbg !553
  %105 = icmp eq i32 %104, %102, !dbg !553
  %106 = add nsw i32 %88, -1056964608, !dbg !553
  %107 = icmp ult i32 %106, 201326592, !dbg !553
  %108 = and i1 %107, %105, !dbg !553
  %109 = add nsw i8 %86, -1, !dbg !553
  %110 = sitofp i8 %109 to float, !dbg !553
  %111 = and i1 %97, %108, !dbg !553
  %112 = call float @llvm.fabs.f32(float %110), !dbg !553
  %113 = select i1 %111, float %112, float %87, !dbg !553
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !553
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !553
  %115 = fptosi float %114 to i8, !dbg !553
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !553
  store i8 %115, ptr %116, align 1, !dbg !553
  %117 = add nuw nsw i64 %40, 1, !dbg !553
  %exitcond.not = icmp eq i64 %117, 16, !dbg !553
  br i1 %exitcond.not, label %118, label %39, !dbg !553

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !553
  %exitcond25.not = icmp eq i64 %119, 16, !dbg !553
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !553

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !551
  ret i32 0, !dbg !551
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !559 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !560
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !560
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !560
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !560
  %6 = load ptr, ptr %5, align 8, !dbg !560
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !560
  %8 = load ptr, ptr %7, align 8, !dbg !560
  %9 = load i32, ptr %2, align 16, !dbg !560
  %10 = zext i32 %9 to i64, !dbg !560
  %11 = shl nuw nsw i64 %10, 1, !dbg !560
  %12 = and i64 %11, 8589934576, !dbg !560
  %13 = shl nuw nsw i64 %10, 4, !dbg !560
  %14 = and i64 %13, 112, !dbg !560
  %15 = shl nuw nsw i64 %12, 9, !dbg !560
  %16 = ptrtoint ptr %4 to i64, !dbg !560
  %17 = add i64 %16, 501760, !dbg !560
  %18 = add i64 %17, %15, !dbg !560
  %19 = ptrtoint ptr %6 to i64, !dbg !560
  %20 = add i64 %19, 593920, !dbg !560
  %21 = add i64 %20, %14, !dbg !560
  %22 = shl nuw nsw i64 %12, 7, !dbg !560
  %23 = or disjoint i64 %22, %14, !dbg !560
  %24 = ptrtoint ptr %8 to i64, !dbg !560
  %25 = add i64 %23, %24, !dbg !560
  %26 = shl nuw nsw i64 %23, 2, !dbg !560
  %27 = add i64 %19, 21000192, !dbg !560
  %28 = add i64 %27, %26, !dbg !560
  %29 = and i64 %18, 9223372036854775807, !dbg !560
  %30 = and i64 %21, 9223372036854775807, !dbg !560
  %31 = and i64 %25, 9223372036854775807, !dbg !560
  %32 = and i64 %28, 9223372036854775807, !dbg !560
  tail call void asm sideeffect "fence", ""() #14, !dbg !560
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !560
  tail call void @llvm.riscv.config(i64 6, i64 4338570916385521792), !dbg !560
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !560
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !560
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !560
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !560
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !560
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !560
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 128), !dbg !560
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !560
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !560
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !560
  tail call void asm sideeffect "fence", ""() #14, !dbg !560
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !560
  ret i32 0, !dbg !560
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !561 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !562
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !562
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !562
  %5 = getelementptr i8, ptr %4, i64 100352, !dbg !562
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !562
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !562
  %7 = load ptr, ptr %6, align 8, !dbg !562
  %8 = getelementptr i8, ptr %7, i64 903168, !dbg !562
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !562
  %9 = load i32, ptr %2, align 16, !dbg !562
  %10 = zext i32 %9 to i64, !dbg !562
  %11 = and i64 %10, 4294967292, !dbg !562
  %12 = shl nuw nsw i64 %10, 5, !dbg !562
  %13 = and i64 %12, 96, !dbg !562
  br label %.preheader26, !dbg !562

.preheader26:                                     ; preds = %3, %54
  %14 = phi i64 [ 0, %3 ], [ %55, %54 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = mul nuw nsw i64 %15, 32256
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 %16
  br label %.preheader, !dbg !562

.preheader:                                       ; preds = %.preheader26, %52
  %18 = phi i64 [ 0, %.preheader26 ], [ %53, %52 ]
  %19 = mul nuw nsw i64 %18, 1152
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  br label %21, !dbg !562

21:                                               ; preds = %.preheader, %50
  %22 = phi i64 [ 0, %.preheader ], [ %51, %50 ]
  %23 = add nuw nsw i64 %15, %22, !dbg !562
  %24 = mul nuw nsw i64 %23, 3840
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 %24
  %26 = mul nuw nsw i64 %22, 384
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  br label %28, !dbg !562

28:                                               ; preds = %21, %48
  %29 = phi i64 [ 0, %21 ], [ %49, %48 ]
  %30 = add nuw nsw i64 %29, %18, !dbg !562
  %31 = shl nuw nsw i64 %30, 7
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 %31
  %33 = shl nuw nsw i64 %29, 7
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 %33
  br label %35, !dbg !562

35:                                               ; preds = %28, %45
  %36 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %37 = or disjoint i64 %36, %13, !dbg !562
  br label %38, !dbg !562

38:                                               ; preds = %35, %38
  %39 = phi i64 [ 0, %35 ], [ %44, %38 ]
  %40 = or disjoint i64 %37, %39, !dbg !562
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 %40, !dbg !562
  %42 = load i8, ptr %41, align 1, !dbg !562
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 %40, !dbg !562
  store i8 %42, ptr %43, align 1, !dbg !562
  %44 = add nuw nsw i64 %39, 1, !dbg !562
  %exitcond.not = icmp eq i64 %44, 8, !dbg !562
  br i1 %exitcond.not, label %45, label %38, !dbg !562

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %36, 8, !dbg !562
  %47 = icmp samesign ult i64 %36, 24, !dbg !562
  br i1 %47, label %35, label %48, !dbg !562

48:                                               ; preds = %45
  %49 = add nuw nsw i64 %29, 1, !dbg !562
  %exitcond27.not = icmp eq i64 %49, 3, !dbg !562
  br i1 %exitcond27.not, label %50, label %28, !dbg !562

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %22, 1, !dbg !562
  %exitcond28.not = icmp eq i64 %51, 3, !dbg !562
  br i1 %exitcond28.not, label %52, label %21, !dbg !562

52:                                               ; preds = %50
  %53 = add nuw nsw i64 %18, 1, !dbg !562
  %exitcond29.not = icmp eq i64 %53, 28, !dbg !562
  br i1 %exitcond29.not, label %54, label %.preheader, !dbg !562

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %14, 1, !dbg !562
  %exitcond30.not = icmp eq i64 %55, 4, !dbg !562
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !562

56:                                               ; preds = %54
  ret i32 0, !dbg !562
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !563 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !564
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !564
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !564
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !564
  %6 = load ptr, ptr %5, align 8, !dbg !564
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !564
  %8 = load ptr, ptr %7, align 8, !dbg !564
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !564
  %10 = load ptr, ptr %9, align 8, !dbg !564
  %11 = load i32, ptr %2, align 16, !dbg !564
  %12 = zext i32 %11 to i64, !dbg !564
  %13 = shl nuw nsw i64 %12, 1, !dbg !564
  %14 = and i64 %13, 8589934576, !dbg !564
  %15 = shl nuw nsw i64 %12, 4, !dbg !564
  %16 = and i64 %15, 112, !dbg !564
  %17 = mul nuw nsw i64 %14, 1152, !dbg !564
  %18 = ptrtoint ptr %4 to i64, !dbg !564
  %19 = add i64 %18, 903168, !dbg !564
  %20 = add i64 %19, %17, !dbg !564
  %21 = ptrtoint ptr %6 to i64, !dbg !564
  %22 = add i64 %21, 579456, !dbg !564
  %23 = add i64 %22, %16, !dbg !564
  %24 = shl nuw nsw i64 %14, 7, !dbg !564
  %25 = or disjoint i64 %24, %16, !dbg !564
  %26 = ptrtoint ptr %10 to i64, !dbg !564
  %27 = add i64 %25, %26, !dbg !564
  %28 = ptrtoint ptr %8 to i64, !dbg !564
  %29 = shl nuw nsw i64 %25, 2, !dbg !564
  %30 = add i64 %28, 21401600, !dbg !564
  %31 = add i64 %30, %29, !dbg !564
  %32 = and i64 %20, 9223372036854775807, !dbg !564
  %33 = and i64 %23, 9223372036854775807, !dbg !564
  %34 = and i64 %27, 9223372036854775807, !dbg !564
  %35 = and i64 %31, 9223372036854775807, !dbg !564
  tail call void asm sideeffect "fence", ""() #14, !dbg !564
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !564
  tail call void @llvm.riscv.config(i64 6, i64 4287705167727427712), !dbg !564
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !564
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 128), !dbg !564
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 512), !dbg !564
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !564
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !564
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 %34), !dbg !564
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 128), !dbg !564
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 128, i64 128), !dbg !564
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !564
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !564
  tail call void asm sideeffect "fence", ""() #14, !dbg !564
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !564
  ret i32 0, !dbg !564
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !565 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !566
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !566
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !566
  %5 = getelementptr i8, ptr %4, i64 726912, !dbg !566
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !566
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !566
  %7 = load ptr, ptr %6, align 8, !dbg !566
  %8 = getelementptr i8, ptr %7, i64 1806336, !dbg !566
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !566
  %9 = load i32, ptr %2, align 16, !dbg !566
  %10 = zext i32 %9 to i64, !dbg !566
  %11 = lshr i64 %10, 3, !dbg !566
  %12 = mul nuw nsw i64 %11, 112, !dbg !566
  %13 = shl nuw nsw i64 %10, 6, !dbg !566
  %14 = and i64 %13, 448, !dbg !566
  br label %.preheader, !dbg !566

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !566

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !566
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !566
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !566
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !566
  store <2 x i32> %22, ptr %23, align 8, !dbg !566
  %24 = add nuw nsw i64 %19, 2, !dbg !566
  %25 = icmp samesign ult i64 %19, 62, !dbg !566
  br i1 %25, label %18, label %26, !dbg !566

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !566
  %exitcond.not = icmp eq i64 %27, 112, !dbg !566
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !566

28:                                               ; preds = %26
  ret i32 0, !dbg !566
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !567 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !568
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !568
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !568
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !568
  %6 = load ptr, ptr %5, align 8, !dbg !568
  %7 = getelementptr i8, ptr %4, i64 501760, !dbg !569
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !569
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !568
  %9 = load ptr, ptr %8, align 8, !dbg !568
  %10 = getelementptr i8, ptr %9, i64 100352, !dbg !568
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !568
  %11 = load i32, ptr %2, align 16, !dbg !568
  %12 = zext i32 %11 to i64, !dbg !568
  %13 = lshr i64 %12, 1, !dbg !568
  %14 = and i64 %13, 2147483632, !dbg !568
  %15 = shl nuw nsw i64 %12, 4, !dbg !568
  %16 = and i64 %15, 496, !dbg !568
  %17 = alloca [256 x i8], align 1, !dbg !568
  %18 = shl nuw nsw i64 %14, 7, !dbg !568
  %19 = ptrtoint ptr %4 to i64, !dbg !568
  %20 = add i64 %18, %19, !dbg !568
  %21 = ptrtoint ptr %6 to i64, !dbg !568
  %22 = add i64 %21, 659456, !dbg !568
  %23 = add i64 %22, %16, !dbg !568
  %24 = ptrtoint ptr %17 to i64, !dbg !568
  %25 = shl nuw nsw i64 %14, 11, !dbg !568
  %26 = shl nuw nsw i64 %16, 2, !dbg !568
  %27 = add i64 %19, 1806336, !dbg !568
  %28 = add i64 %27, %26, !dbg !568
  %29 = add i64 %28, %25, !dbg !568
  %30 = and i64 %20, 9223372036854775807, !dbg !568
  %31 = and i64 %23, 9223372036854775807, !dbg !568
  %32 = and i64 %24, 9223372036854775807, !dbg !568
  %33 = and i64 %29, 9223372036854775807, !dbg !568
  call void asm sideeffect "fence", ""() #14, !dbg !568
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !568
  call void @llvm.riscv.config(i64 2, i64 4353230588954542096), !dbg !568
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !568
  call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !568
  call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !568
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !568
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !568
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !568
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 512), !dbg !568
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 16), !dbg !568
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !568
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !568
  call void asm sideeffect "fence", ""() #14, !dbg !568
  br label %.preheader, !dbg !570

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 9
  %invariant.op = or disjoint i64 %38, %16, !dbg !570
  br label %39, !dbg !570

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !570
  %42 = load i8, ptr %41, align 1, !dbg !570
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !570
  %44 = load i8, ptr %43, align 1, !dbg !570
  %45 = sitofp i8 %44 to float, !dbg !571
  %46 = fmul nnan contract float %45, 0x3FC2B63480000000, !dbg !571
  %47 = sitofp i8 %42 to float, !dbg !572
  %48 = fmul nnan contract float %47, 0x3FB03947A0000000, !dbg !572
  %49 = fadd contract float %48, %46, !dbg !573
  %50 = fdiv float %49, 0x3FC1DCE100000000, !dbg !574
  %51 = bitcast float %50 to i32, !dbg !574
  %52 = call float @llvm.round.f32(float %50), !dbg !574
  %53 = bitcast float %52 to i32, !dbg !574
  %54 = lshr i32 %51, 23, !dbg !574
  %55 = and i32 %54, 255, !dbg !574
  %56 = add nsw i32 %55, -127, !dbg !574
  %57 = lshr i32 %53, 23, !dbg !574
  %58 = and i32 %57, 255, !dbg !574
  %59 = icmp eq i32 %58, 127, !dbg !574
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !574
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !574
  %62 = lshr i32 8388607, %61, !dbg !574
  %63 = and i32 %62, %53, !dbg !574
  %64 = icmp ne i32 %63, 0, !dbg !574
  %65 = or i1 %59, %64, !dbg !574
  %66 = icmp eq i32 %56, -1, !dbg !574
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !574
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !574
  %69 = lshr i32 4194304, %68, !dbg !574
  %70 = select i1 %66, i32 0, i32 %69, !dbg !574
  %71 = lshr i32 8388607, %68, !dbg !574
  %72 = and i32 %71, %51, !dbg !574
  %73 = icmp eq i32 %72, %70, !dbg !574
  %74 = add nsw i32 %55, -126, !dbg !574
  %75 = icmp ult i32 %74, 24, !dbg !574
  %76 = and i1 %75, %73, !dbg !574
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !574
  %78 = and i1 %65, %76, !dbg !574
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !574
  %80 = fsub contract float %52, %79, !dbg !574
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !574
  %82 = fadd contract float %81, 0.000000e+00, !dbg !574
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !574
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !574
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !574
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !574
  %85 = fptosi float %84 to i8, !dbg !574
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !575
  %87 = uitofp nneg i8 %86 to float, !dbg !575
  %88 = bitcast float %87 to i32, !dbg !570
  %89 = lshr i32 %88, 23, !dbg !570
  %90 = add nsw i32 %89, -127, !dbg !570
  %91 = icmp eq i32 %90, 0, !dbg !570
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !570
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !570
  %94 = lshr i32 8388607, %93, !dbg !570
  %95 = and i32 %94, %88, !dbg !570
  %96 = icmp ne i32 %95, 0, !dbg !570
  %97 = or i1 %91, %96, !dbg !570
  %98 = icmp eq i32 %90, -1, !dbg !570
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !570
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !570
  %101 = lshr i32 4194304, %100, !dbg !570
  %102 = select i1 %98, i32 0, i32 %101, !dbg !570
  %103 = lshr i32 8388607, %100, !dbg !570
  %104 = and i32 %103, %88, !dbg !570
  %105 = icmp eq i32 %104, %102, !dbg !570
  %106 = add nsw i32 %88, -1056964608, !dbg !570
  %107 = icmp ult i32 %106, 201326592, !dbg !570
  %108 = and i1 %107, %105, !dbg !570
  %109 = add nsw i8 %86, -1, !dbg !570
  %110 = sitofp i8 %109 to float, !dbg !570
  %111 = and i1 %97, %108, !dbg !570
  %112 = call float @llvm.fabs.f32(float %110), !dbg !570
  %113 = select i1 %111, float %112, float %87, !dbg !570
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !570
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !570
  %115 = fptosi float %114 to i8, !dbg !570
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !570
  store i8 %115, ptr %116, align 1, !dbg !570
  %117 = add nuw nsw i64 %40, 1, !dbg !570
  %exitcond.not = icmp eq i64 %117, 16, !dbg !570
  br i1 %exitcond.not, label %118, label %39, !dbg !570

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !570
  %exitcond25.not = icmp eq i64 %119, 16, !dbg !570
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !570

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !568
  ret i32 0, !dbg !568
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !576 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !577
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !577
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !577
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !577
  %6 = load ptr, ptr %5, align 8, !dbg !577
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !577
  %8 = load ptr, ptr %7, align 8, !dbg !577
  %9 = load i32, ptr %2, align 16, !dbg !577
  %10 = zext i32 %9 to i64, !dbg !577
  %11 = and i64 %10, 4294967280, !dbg !577
  %12 = shl nuw nsw i64 %10, 4, !dbg !577
  %13 = and i64 %12, 240, !dbg !577
  %14 = shl nuw nsw i64 %11, 9, !dbg !577
  %15 = ptrtoint ptr %4 to i64, !dbg !577
  %16 = add i64 %15, 100352, !dbg !577
  %17 = add i64 %16, %14, !dbg !577
  %18 = ptrtoint ptr %6 to i64, !dbg !577
  %19 = add i64 %18, 724992, !dbg !577
  %20 = add i64 %19, %13, !dbg !577
  %21 = shl nuw nsw i64 %11, 8, !dbg !577
  %22 = or disjoint i64 %21, %13, !dbg !577
  %23 = ptrtoint ptr %8 to i64, !dbg !577
  %24 = add i64 %23, 501760, !dbg !577
  %25 = add i64 %24, %22, !dbg !577
  %26 = shl nuw nsw i64 %22, 2, !dbg !577
  %27 = add i64 %18, 21803008, !dbg !577
  %28 = add i64 %27, %26, !dbg !577
  %29 = and i64 %17, 9223372036854775807, !dbg !577
  %30 = and i64 %20, 9223372036854775807, !dbg !577
  %31 = and i64 %25, 9223372036854775807, !dbg !577
  %32 = and i64 %28, 9223372036854775807, !dbg !577
  tail call void asm sideeffect "fence", ""() #14, !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !577
  tail call void @llvm.riscv.config(i64 6, i64 4351522793993535744), !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 256), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !577
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !577
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !577
  tail call void asm sideeffect "fence", ""() #14, !dbg !577
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !577
  ret i32 0, !dbg !577
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_55_generic_14x14x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !578 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !579
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !579
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !579
  %5 = getelementptr i8, ptr %4, i64 100352, !dbg !579
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !579
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !580
  %7 = load ptr, ptr %6, align 8, !dbg !580
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !580
  %8 = load i32, ptr %2, align 16, !dbg !580
  %9 = zext i32 %8 to i64, !dbg !580
  %10 = lshr i64 %9, 4, !dbg !580
  %11 = mul nuw nsw i64 %10, 7, !dbg !580
  %12 = shl nuw nsw i64 %9, 5, !dbg !580
  %13 = and i64 %12, 480, !dbg !580
  %14 = mul nuw nsw i64 %10, 14
  br label %15, !dbg !580

15:                                               ; preds = %3, %44
  %16 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %17 = shl nuw nsw i64 %16, 1, !dbg !580
  %18 = add nuw nsw i64 %17, %14, !dbg !580
  %19 = mul nuw nsw i64 %18, 14336
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 %19
  %21 = add nuw nsw i64 %16, %11
  %22 = mul nuw nsw i64 %21, 7168
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 %22
  br label %.preheader, !dbg !580

.preheader:                                       ; preds = %15, %42
  %24 = phi i64 [ 0, %15 ], [ %43, %42 ]
  %25 = shl nuw nsw i64 %24, 10
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %25
  %27 = shl nuw nsw i64 %24, 9
  %28 = getelementptr inbounds nuw i8, ptr %23, i64 %27
  br label %29, !dbg !580

29:                                               ; preds = %.preheader, %39
  %30 = phi i64 [ 0, %.preheader ], [ %40, %39 ]
  %31 = or disjoint i64 %30, %13, !dbg !580
  br label %32, !dbg !580

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %38, %32 ]
  %34 = or disjoint i64 %31, %33, !dbg !580
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 %34, !dbg !580
  %36 = load i8, ptr %35, align 1, !dbg !580
  %37 = getelementptr inbounds nuw i8, ptr %28, i64 %34, !dbg !580
  store i8 %36, ptr %37, align 1, !dbg !580
  %38 = add nuw nsw i64 %33, 1, !dbg !580
  %exitcond.not = icmp eq i64 %38, 8, !dbg !580
  br i1 %exitcond.not, label %39, label %32, !dbg !580

39:                                               ; preds = %32
  %40 = add nuw nsw i64 %30, 8, !dbg !580
  %41 = icmp samesign ult i64 %30, 24, !dbg !580
  br i1 %41, label %29, label %42, !dbg !580

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %24, 1, !dbg !580
  %exitcond26.not = icmp eq i64 %43, 14, !dbg !580
  br i1 %exitcond26.not, label %44, label %.preheader, !dbg !580

44:                                               ; preds = %42
  %45 = add nuw nsw i64 %16, 1, !dbg !580
  %exitcond27.not = icmp eq i64 %45, 7, !dbg !580
  br i1 %exitcond27.not, label %46, label %15, !dbg !580

46:                                               ; preds = %44
  ret i32 0, !dbg !580
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_56_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !581 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !582
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !582
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !582
  %5 = getelementptr i8, ptr %4, i64 501760, !dbg !582
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !582
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !583
  %7 = load ptr, ptr %6, align 8, !dbg !583
  %8 = getelementptr i8, ptr %7, i64 702464, !dbg !583
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !583
  %9 = load i32, ptr %2, align 16, !dbg !583
  %10 = zext i32 %9 to i64, !dbg !583
  %11 = and i64 %10, 4294967292, !dbg !583
  %12 = shl nuw nsw i64 %10, 6, !dbg !583
  %13 = and i64 %12, 192, !dbg !583
  br label %.preheader23, !dbg !583

.preheader23:                                     ; preds = %3, %35
  %14 = phi i64 [ 0, %3 ], [ %36, %35 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = mul nuw nsw i64 %15, 7168
  %17 = getelementptr i8, ptr %5, i64 %16
  %18 = mul nuw nsw i64 %15, 7680
  %19 = getelementptr i8, ptr %8, i64 %18
  br label %.preheader, !dbg !583

.preheader:                                       ; preds = %.preheader23, %33
  %20 = phi i64 [ 0, %.preheader23 ], [ %34, %33 ]
  %21 = shl i64 %20, 8
  %22 = getelementptr i8, ptr %17, i64 %21
  %23 = getelementptr i8, ptr %19, i64 %21
  %24 = getelementptr i8, ptr %23, i64 7936
  br label %25, !dbg !583

25:                                               ; preds = %.preheader, %25
  %26 = phi i64 [ 0, %.preheader ], [ %31, %25 ]
  %27 = or disjoint i64 %26, %13, !dbg !583
  %28 = getelementptr i8, ptr %22, i64 %27, !dbg !583
  %29 = load <2 x i8>, ptr %28, align 2, !dbg !583
  %30 = getelementptr i8, ptr %24, i64 %27, !dbg !583
  store <2 x i8> %29, ptr %30, align 2, !dbg !583
  %31 = add nuw nsw i64 %26, 2, !dbg !583
  %32 = icmp samesign ult i64 %26, 62, !dbg !583
  br i1 %32, label %25, label %33, !dbg !583

33:                                               ; preds = %25
  %34 = add nuw nsw i64 %20, 1, !dbg !583
  %exitcond.not = icmp eq i64 %34, 28, !dbg !583
  br i1 %exitcond.not, label %35, label %.preheader, !dbg !583

35:                                               ; preds = %33
  %36 = add nuw nsw i64 %14, 1, !dbg !583
  %exitcond24.not = icmp eq i64 %36, 4, !dbg !583
  br i1 %exitcond24.not, label %37, label %.preheader23, !dbg !583

37:                                               ; preds = %35
  ret i32 0, !dbg !583
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !584 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !585
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !585
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !585
  %5 = getelementptr i8, ptr %4, i64 702464, !dbg !585
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !585
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !585
  %7 = load ptr, ptr %6, align 8, !dbg !585
  %8 = getelementptr i8, ptr %7, i64 100352, !dbg !585
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !585
  %9 = load i32, ptr %2, align 16, !dbg !585
  %10 = zext i32 %9 to i64, !dbg !585
  %11 = lshr i64 %10, 3, !dbg !585
  %12 = shl nuw nsw i64 %11, 1, !dbg !585
  %13 = shl nuw nsw i64 %10, 5, !dbg !585
  %14 = and i64 %13, 224, !dbg !585
  %15 = shl nuw nsw i64 %11, 2
  br label %.preheader27, !dbg !585

.preheader27:                                     ; preds = %3, %55
  %exitcond31.not = phi i1 [ false, %3 ], [ true, %55 ]
  %16 = phi i64 [ 0, %3 ], [ 1, %55 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = or disjoint i64 %17, %15
  %19 = or disjoint i64 %16, %12
  %20 = mul nuw nsw i64 %19, 32256
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  br label %.preheader26, !dbg !585

.preheader26:                                     ; preds = %.preheader27, %53
  %22 = phi i64 [ 0, %.preheader27 ], [ %54, %53 ]
  %23 = shl i64 %22, 9
  %invariant.gep = getelementptr i8, ptr %5, i64 %23, !dbg !585
  %24 = mul nuw nsw i64 %22, 2304
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 %24
  br label %26, !dbg !585

26:                                               ; preds = %.preheader26, %51
  %27 = phi i64 [ 0, %.preheader26 ], [ %52, %51 ]
  %28 = add nuw nsw i64 %18, %27, !dbg !585
  %29 = mul nuw nsw i64 %28, 7680
  %gep = getelementptr i8, ptr %invariant.gep, i64 %29
  %30 = mul nuw nsw i64 %27, 768
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  br label %.preheader, !dbg !585

.preheader:                                       ; preds = %26, %49
  %32 = phi i64 [ 0, %26 ], [ %50, %49 ]
  %33 = shl nuw nsw i64 %32, 8
  %34 = getelementptr i8, ptr %gep, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 %33
  br label %36, !dbg !585

36:                                               ; preds = %.preheader, %46
  %37 = phi i64 [ 0, %.preheader ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !585
  br label %39, !dbg !585

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !585
  %42 = getelementptr inbounds nuw i8, ptr %34, i64 %41, !dbg !585
  %43 = load i8, ptr %42, align 1, !dbg !585
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !585
  store i8 %43, ptr %44, align 1, !dbg !585
  %45 = add nuw nsw i64 %40, 1, !dbg !585
  %exitcond.not = icmp eq i64 %45, 8, !dbg !585
  br i1 %exitcond.not, label %46, label %39, !dbg !585

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !585
  %48 = icmp samesign ult i64 %37, 24, !dbg !585
  br i1 %48, label %36, label %49, !dbg !585

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %32, 1, !dbg !585
  %exitcond28.not = icmp eq i64 %50, 3, !dbg !585
  br i1 %exitcond28.not, label %51, label %.preheader, !dbg !585

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %27, 1, !dbg !585
  %exitcond29.not = icmp eq i64 %52, 3, !dbg !585
  br i1 %exitcond29.not, label %53, label %26, !dbg !585

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %22, 1, !dbg !585
  %exitcond30.not = icmp eq i64 %54, 14, !dbg !585
  br i1 %exitcond30.not, label %55, label %.preheader26, !dbg !585

55:                                               ; preds = %53
  br i1 %exitcond31.not, label %56, label %.preheader27, !dbg !585

56:                                               ; preds = %55
  ret i32 0, !dbg !585
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !586 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !587
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !587
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !587
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !587
  %6 = load ptr, ptr %5, align 8, !dbg !587
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !587
  %8 = load ptr, ptr %7, align 8, !dbg !587
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !587
  %10 = load ptr, ptr %9, align 8, !dbg !587
  %11 = load i32, ptr %2, align 16, !dbg !587
  %12 = zext i32 %11 to i64, !dbg !587
  %13 = lshr i64 %12, 2, !dbg !587
  %14 = and i64 %13, 1073741820, !dbg !587
  %15 = shl nuw nsw i64 %12, 4, !dbg !587
  %16 = and i64 %15, 240, !dbg !587
  %17 = mul nuw nsw i64 %14, 2304, !dbg !587
  %18 = ptrtoint ptr %4 to i64, !dbg !587
  %19 = add i64 %18, 100352, !dbg !587
  %20 = add i64 %19, %17, !dbg !587
  %21 = ptrtoint ptr %6 to i64, !dbg !587
  %22 = add i64 %21, 728960, !dbg !587
  %23 = add i64 %22, %16, !dbg !587
  %24 = shl nuw nsw i64 %14, 8, !dbg !587
  %25 = or disjoint i64 %24, %16, !dbg !587
  %26 = ptrtoint ptr %10 to i64, !dbg !587
  %27 = add i64 %26, 551936, !dbg !587
  %28 = add i64 %27, %25, !dbg !587
  %29 = ptrtoint ptr %8 to i64, !dbg !587
  %30 = shl nuw nsw i64 %25, 2, !dbg !587
  %31 = add i64 %29, 23408640, !dbg !587
  %32 = add i64 %31, %30, !dbg !587
  %33 = and i64 %20, 9223372036854775807, !dbg !587
  %34 = and i64 %23, 9223372036854775807, !dbg !587
  %35 = and i64 %28, 9223372036854775807, !dbg !587
  %36 = and i64 %32, 9223372036854775807, !dbg !587
  tail call void asm sideeffect "fence", ""() #14, !dbg !587
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !587
  tail call void @llvm.riscv.config(i64 6, i64 4307713612178260224), !dbg !587
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !587
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !587
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %33, i64 %34), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %36, i64 0), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !587
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !587
  %37 = add nuw i64 %33, 2048, !dbg !587
  %38 = add nuw i64 %34, 524288, !dbg !587
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %37, i64 %38), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %35), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !587
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !587
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !587
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !587
  tail call void asm sideeffect "fence", ""() #14, !dbg !587
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !587
  ret i32 0, !dbg !587
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !588 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !589
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !589
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !589
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !589
  %6 = load ptr, ptr %5, align 8, !dbg !589
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !589
  %8 = load ptr, ptr %7, align 8, !dbg !589
  %9 = load i32, ptr %2, align 16, !dbg !589
  %10 = zext i32 %9 to i64, !dbg !589
  %11 = lshr i64 %10, 4, !dbg !589
  %12 = and i64 %11, 268435452, !dbg !589
  %13 = shl nuw nsw i64 %10, 4, !dbg !589
  %14 = and i64 %13, 1008, !dbg !589
  %15 = shl nuw nsw i64 %12, 8, !dbg !589
  %16 = ptrtoint ptr %4 to i64, !dbg !589
  %17 = add i64 %16, 551936, !dbg !589
  %18 = add i64 %17, %15, !dbg !589
  %19 = ptrtoint ptr %6 to i64, !dbg !589
  %20 = add i64 %19, 1380352, !dbg !589
  %21 = add i64 %20, %14, !dbg !589
  %22 = shl nuw nsw i64 %12, 10, !dbg !589
  %23 = or disjoint i64 %22, %14, !dbg !589
  %24 = ptrtoint ptr %8 to i64, !dbg !589
  %25 = add i64 %24, 100352, !dbg !589
  %26 = add i64 %25, %23, !dbg !589
  %27 = shl nuw nsw i64 %23, 2, !dbg !589
  %28 = add i64 %19, 23609344, !dbg !589
  %29 = add i64 %28, %27, !dbg !589
  %30 = and i64 %18, 9223372036854775807, !dbg !589
  %31 = and i64 %21, 9223372036854775807, !dbg !589
  %32 = and i64 %26, 9223372036854775807, !dbg !589
  %33 = and i64 %29, 9223372036854775807, !dbg !589
  tail call void asm sideeffect "fence", ""() #14, !dbg !589
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !589
  tail call void @llvm.riscv.config(i64 2, i64 4312053161234793472), !dbg !589
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !589
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !589
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !589
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !589
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !589
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !589
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !589
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 1024), !dbg !589
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !589
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !589
  tail call void asm sideeffect "fence", ""() #14, !dbg !589
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !589
  ret i32 0, !dbg !589
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !590 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !591
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !591
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !591
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !591
  %6 = load ptr, ptr %5, align 8, !dbg !591
  %7 = getelementptr i8, ptr %4, i64 100352, !dbg !592
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !592
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !591
  %9 = load ptr, ptr %8, align 8, !dbg !591
  %10 = getelementptr i8, ptr %9, i64 301056, !dbg !591
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !591
  %11 = load i32, ptr %2, align 16, !dbg !591
  %12 = zext i32 %11 to i64, !dbg !591
  %13 = lshr i64 %12, 4, !dbg !591
  %14 = and i64 %13, 268435452, !dbg !591
  %15 = shl nuw nsw i64 %12, 4, !dbg !591
  %16 = and i64 %15, 1008, !dbg !591
  %17 = alloca [64 x i8], align 1, !dbg !591
  %18 = shl nuw nsw i64 %14, 9, !dbg !591
  %19 = ptrtoint ptr %4 to i64, !dbg !591
  %20 = add i64 %18, %19, !dbg !591
  %21 = ptrtoint ptr %6 to i64, !dbg !591
  %22 = add i64 %21, 856064, !dbg !591
  %23 = add i64 %22, %16, !dbg !591
  %24 = ptrtoint ptr %17 to i64, !dbg !591
  %25 = shl nuw nsw i64 %14, 12, !dbg !591
  %26 = shl nuw nsw i64 %16, 2, !dbg !591
  %27 = add i64 %21, 22605824, !dbg !591
  %28 = add i64 %27, %26, !dbg !591
  %29 = add i64 %28, %25, !dbg !591
  %30 = and i64 %20, 9223372036854775807, !dbg !591
  %31 = and i64 %23, 9223372036854775807, !dbg !591
  %32 = and i64 %24, 9223372036854775807, !dbg !591
  %33 = and i64 %29, 9223372036854775807, !dbg !591
  call void asm sideeffect "fence", ""() #14, !dbg !591
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !591
  call void @llvm.riscv.config(i64 2, i64 4377657231903031312), !dbg !591
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !591
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !591
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !591
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 137439019009), !dbg !591
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !591
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !591
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 1024), !dbg !591
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !591
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !591
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !591
  call void asm sideeffect "fence", ""() #14, !dbg !591
  br label %.preheader, !dbg !593

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = add nuw nsw i64 %34, %14
  %36 = shl nuw nsw i64 %35, 10
  %invariant.op = or disjoint i64 %36, %16, !dbg !593
  %37 = shl nuw nsw i64 %34, 4
  %38 = getelementptr inbounds nuw i8, ptr %17, i64 %37
  br label %39, !dbg !593

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %.reass = add nuw nsw i64 %40, %invariant.op
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !593
  %42 = load i8, ptr %41, align 1, !dbg !593
  %43 = getelementptr inbounds nuw i8, ptr %38, i64 %40, !dbg !593
  %44 = load i8, ptr %43, align 1, !dbg !593
  %45 = sitofp i8 %44 to float, !dbg !594
  %46 = fmul nnan contract float %45, 0x3FAE2EB9E0000000, !dbg !594
  %47 = sitofp i8 %42 to float, !dbg !595
  %48 = fmul nnan contract float %47, 0x3FB3FBD380000000, !dbg !595
  %49 = fadd contract float %48, %46, !dbg !596
  %50 = fdiv float %49, 0x3FB432EDA0000000, !dbg !597
  %51 = bitcast float %50 to i32, !dbg !597
  %52 = call float @llvm.round.f32(float %50), !dbg !597
  %53 = bitcast float %52 to i32, !dbg !597
  %54 = lshr i32 %51, 23, !dbg !597
  %55 = and i32 %54, 255, !dbg !597
  %56 = add nsw i32 %55, -127, !dbg !597
  %57 = lshr i32 %53, 23, !dbg !597
  %58 = and i32 %57, 255, !dbg !597
  %59 = icmp eq i32 %58, 127, !dbg !597
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !597
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !597
  %62 = lshr i32 8388607, %61, !dbg !597
  %63 = and i32 %62, %53, !dbg !597
  %64 = icmp ne i32 %63, 0, !dbg !597
  %65 = or i1 %59, %64, !dbg !597
  %66 = icmp eq i32 %56, -1, !dbg !597
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !597
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !597
  %69 = lshr i32 4194304, %68, !dbg !597
  %70 = select i1 %66, i32 0, i32 %69, !dbg !597
  %71 = lshr i32 8388607, %68, !dbg !597
  %72 = and i32 %71, %51, !dbg !597
  %73 = icmp eq i32 %72, %70, !dbg !597
  %74 = add nsw i32 %55, -126, !dbg !597
  %75 = icmp ult i32 %74, 24, !dbg !597
  %76 = and i1 %75, %73, !dbg !597
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !597
  %78 = and i1 %65, %76, !dbg !597
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !597
  %80 = fsub contract float %52, %79, !dbg !597
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !597
  %82 = fadd contract float %81, 0.000000e+00, !dbg !597
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !597
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !597
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !597
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !597
  %85 = fptosi float %84 to i8, !dbg !597
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !598
  %87 = uitofp nneg i8 %86 to float, !dbg !598
  %88 = bitcast float %87 to i32, !dbg !593
  %89 = lshr i32 %88, 23, !dbg !593
  %90 = add nsw i32 %89, -127, !dbg !593
  %91 = icmp eq i32 %90, 0, !dbg !593
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !593
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !593
  %94 = lshr i32 8388607, %93, !dbg !593
  %95 = and i32 %94, %88, !dbg !593
  %96 = icmp ne i32 %95, 0, !dbg !593
  %97 = or i1 %91, %96, !dbg !593
  %98 = icmp eq i32 %90, -1, !dbg !593
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !593
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !593
  %101 = lshr i32 4194304, %100, !dbg !593
  %102 = select i1 %98, i32 0, i32 %101, !dbg !593
  %103 = lshr i32 8388607, %100, !dbg !593
  %104 = and i32 %103, %88, !dbg !593
  %105 = icmp eq i32 %104, %102, !dbg !593
  %106 = add nsw i32 %88, -1056964608, !dbg !593
  %107 = icmp ult i32 %106, 201326592, !dbg !593
  %108 = and i1 %107, %105, !dbg !593
  %109 = add nsw i8 %86, -1, !dbg !593
  %110 = sitofp i8 %109 to float, !dbg !593
  %111 = and i1 %97, %108, !dbg !593
  %112 = call float @llvm.fabs.f32(float %110), !dbg !593
  %113 = select i1 %111, float %112, float %87, !dbg !593
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !593
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !593
  %115 = fptosi float %114 to i8, !dbg !593
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !593
  store i8 %115, ptr %116, align 1, !dbg !593
  %117 = add nuw nsw i64 %40, 1, !dbg !593
  %exitcond.not = icmp eq i64 %117, 16, !dbg !593
  br i1 %exitcond.not, label %118, label %39, !dbg !593

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !593
  %exitcond25.not = icmp eq i64 %119, 4, !dbg !593
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !593

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !591
  ret i32 0, !dbg !591
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !599 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !600
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !600
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !600
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !600
  %6 = load ptr, ptr %5, align 8, !dbg !600
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !600
  %8 = load ptr, ptr %7, align 8, !dbg !600
  %9 = load i32, ptr %2, align 16, !dbg !600
  %10 = zext i32 %9 to i64, !dbg !600
  %11 = lshr i64 %10, 2, !dbg !600
  %12 = and i64 %11, 1073741820, !dbg !600
  %13 = shl nuw nsw i64 %10, 4, !dbg !600
  %14 = and i64 %13, 240, !dbg !600
  %15 = shl nuw nsw i64 %12, 10, !dbg !600
  %16 = ptrtoint ptr %4 to i64, !dbg !600
  %17 = add i64 %16, 301056, !dbg !600
  %18 = add i64 %17, %15, !dbg !600
  %19 = ptrtoint ptr %6 to i64, !dbg !600
  %20 = add i64 %19, 1642496, !dbg !600
  %21 = add i64 %20, %14, !dbg !600
  %22 = shl nuw nsw i64 %12, 8, !dbg !600
  %23 = or disjoint i64 %22, %14, !dbg !600
  %24 = ptrtoint ptr %8 to i64, !dbg !600
  %25 = add i64 %23, %24, !dbg !600
  %26 = shl nuw nsw i64 %23, 2, !dbg !600
  %27 = add i64 %19, 24412160, !dbg !600
  %28 = add i64 %27, %26, !dbg !600
  %29 = and i64 %18, 9223372036854775807, !dbg !600
  %30 = and i64 %21, 9223372036854775807, !dbg !600
  %31 = and i64 %25, 9223372036854775807, !dbg !600
  %32 = and i64 %28, 9223372036854775807, !dbg !600
  tail call void asm sideeffect "fence", ""() #14, !dbg !600
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !600
  tail call void @llvm.riscv.config(i64 6, i64 4331193305032294656), !dbg !600
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !600
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !600
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !600
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !600
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !600
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !600
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !600
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !600
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !600
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !600
  tail call void asm sideeffect "fence", ""() #14, !dbg !600
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !600
  ret i32 0, !dbg !600
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_62_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !601 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !602
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !602
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !602
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !602
  %4 = load i32, ptr %.unpack18, align 4, !dbg !602
  %5 = zext i32 %4 to i64, !dbg !602
  %6 = load ptr, ptr %.unpack20, align 8, !dbg !603
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !603
  %7 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !602
  %8 = load ptr, ptr %7, align 8, !dbg !602
  %9 = getelementptr i8, ptr %8, i64 %5, !dbg !602
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !602
  %10 = load i32, ptr %2, align 16, !dbg !602
  %11 = zext i32 %10 to i64, !dbg !602
  %12 = shl nuw nsw i64 %11, 1, !dbg !602
  %13 = and i64 %12, 8589934584, !dbg !602
  %14 = shl nuw nsw i64 %11, 6, !dbg !602
  %15 = and i64 %14, 192, !dbg !602
  %16 = icmp samesign ult i64 %13, 14, !dbg !602
  br i1 %16, label %.preheader23.preheader, label %._crit_edge, !dbg !602

.preheader23.preheader:                           ; preds = %3
  %17 = sub nuw nsw i64 14, %13, !dbg !602
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 8), !dbg !602
  br label %.preheader23, !dbg !602

.preheader23:                                     ; preds = %.preheader23.preheader, %40
  %19 = phi i64 [ %41, %40 ], [ 0, %.preheader23.preheader ]
  %20 = add nuw nsw i64 %19, %13
  %21 = mul nuw nsw i64 %20, 3584
  %22 = getelementptr i8, ptr %6, i64 %21
  %23 = shl i64 %20, 12
  %24 = getelementptr i8, ptr %9, i64 %23
  br label %.preheader, !dbg !602

.preheader:                                       ; preds = %.preheader23, %38
  %25 = phi i64 [ 0, %.preheader23 ], [ %39, %38 ]
  %26 = shl i64 %25, 8
  %27 = getelementptr i8, ptr %22, i64 %26
  %28 = getelementptr i8, ptr %24, i64 %26
  %29 = getelementptr i8, ptr %28, i64 4352
  br label %30, !dbg !602

30:                                               ; preds = %.preheader, %30
  %31 = phi i64 [ 0, %.preheader ], [ %36, %30 ]
  %32 = or disjoint i64 %31, %15, !dbg !602
  %33 = getelementptr i8, ptr %27, i64 %32, !dbg !602
  %34 = load <2 x i8>, ptr %33, align 2, !dbg !602
  %35 = getelementptr i8, ptr %29, i64 %32, !dbg !602
  store <2 x i8> %34, ptr %35, align 2, !dbg !602
  %36 = add nuw nsw i64 %31, 2, !dbg !602
  %37 = icmp samesign ult i64 %31, 62, !dbg !602
  br i1 %37, label %30, label %38, !dbg !602

38:                                               ; preds = %30
  %39 = add nuw nsw i64 %25, 1, !dbg !602
  %exitcond.not = icmp eq i64 %39, 14, !dbg !602
  br i1 %exitcond.not, label %40, label %.preheader, !dbg !602

40:                                               ; preds = %38
  %41 = add nuw nsw i64 %19, 1, !dbg !602
  %exitcond24.not = icmp eq i64 %41, %18, !dbg !602
  br i1 %exitcond24.not, label %._crit_edge, label %.preheader23, !dbg !602

._crit_edge:                                      ; preds = %40, %3
  ret i32 0, !dbg !602
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !604 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !605
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !605
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !605
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !605
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !605
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !605
  %7 = load ptr, ptr %6, align 8, !dbg !605
  %8 = getelementptr i8, ptr %7, i64 501760, !dbg !605
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !605
  %9 = load i32, ptr %2, align 16, !dbg !605
  %10 = zext i32 %9 to i64, !dbg !605
  %11 = lshr i64 %10, 2, !dbg !605
  %12 = and i64 %11, 1073741822, !dbg !605
  %13 = shl nuw nsw i64 %10, 5, !dbg !605
  %14 = and i64 %13, 224, !dbg !605
  br label %.preheader26, !dbg !605

.preheader26:                                     ; preds = %3, %55
  %exitcond30.not = phi i1 [ false, %3 ], [ true, %55 ]
  %15 = phi i64 [ 0, %3 ], [ 1, %55 ]
  %16 = or disjoint i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !605

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 2304
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !605

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !605
  %25 = shl nuw nsw i64 %24, 12
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 768
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !605

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !605
  %32 = shl nuw nsw i64 %31, 8
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !605

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !605
  br label %39, !dbg !605

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !605
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !605
  %43 = load i8, ptr %42, align 1, !dbg !605
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !605
  store i8 %43, ptr %44, align 1, !dbg !605
  %45 = add nuw nsw i64 %40, 1, !dbg !605
  %exitcond.not = icmp eq i64 %45, 8, !dbg !605
  br i1 %exitcond.not, label %46, label %39, !dbg !605

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !605
  %48 = icmp samesign ult i64 %37, 24, !dbg !605
  br i1 %48, label %36, label %49, !dbg !605

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !605
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !605
  br i1 %exitcond27.not, label %51, label %29, !dbg !605

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !605
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !605
  br i1 %exitcond28.not, label %53, label %22, !dbg !605

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !605
  %exitcond29.not = icmp eq i64 %54, 14, !dbg !605
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !605

55:                                               ; preds = %53
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !605

56:                                               ; preds = %55
  ret i32 0, !dbg !605
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !606 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !607
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !607
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !607
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !607
  %6 = load ptr, ptr %5, align 8, !dbg !607
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !607
  %8 = load ptr, ptr %7, align 8, !dbg !607
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !607
  %10 = load ptr, ptr %9, align 8, !dbg !607
  %11 = load i32, ptr %2, align 16, !dbg !607
  %12 = zext i32 %11 to i64, !dbg !607
  %13 = lshr i64 %12, 2, !dbg !607
  %14 = and i64 %13, 1073741820, !dbg !607
  %15 = shl nuw nsw i64 %12, 4, !dbg !607
  %16 = and i64 %15, 240, !dbg !607
  %17 = mul nuw nsw i64 %14, 2304, !dbg !607
  %18 = ptrtoint ptr %4 to i64, !dbg !607
  %19 = add i64 %18, 501760, !dbg !607
  %20 = add i64 %19, %17, !dbg !607
  %21 = ptrtoint ptr %6 to i64, !dbg !607
  %22 = add i64 %21, 1318784, !dbg !607
  %23 = add i64 %22, %16, !dbg !607
  %24 = shl nuw nsw i64 %14, 8, !dbg !607
  %25 = or disjoint i64 %24, %16, !dbg !607
  %26 = ptrtoint ptr %10 to i64, !dbg !607
  %27 = add i64 %25, %26, !dbg !607
  %28 = ptrtoint ptr %8 to i64, !dbg !607
  %29 = shl nuw nsw i64 %25, 2, !dbg !607
  %30 = add i64 %28, 24612864, !dbg !607
  %31 = add i64 %30, %29, !dbg !607
  %32 = and i64 %20, 9223372036854775807, !dbg !607
  %33 = and i64 %23, 9223372036854775807, !dbg !607
  %34 = and i64 %27, 9223372036854775807, !dbg !607
  %35 = and i64 %31, 9223372036854775807, !dbg !607
  tail call void asm sideeffect "fence", ""() #14, !dbg !607
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !607
  tail call void @llvm.riscv.config(i64 6, i64 4348042023647838464), !dbg !607
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !607
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !607
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 0), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !607
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !607
  %36 = add nuw i64 %32, 2048, !dbg !607
  %37 = add nuw i64 %33, 524288, !dbg !607
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %36, i64 %37), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %34), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !607
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !607
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !607
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !607
  tail call void asm sideeffect "fence", ""() #14, !dbg !607
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !607
  ret i32 0, !dbg !607
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !608 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !609
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !609
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !609
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !609
  %6 = load ptr, ptr %5, align 8, !dbg !609
  %7 = getelementptr i8, ptr %4, i64 301056, !dbg !610
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !610
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !609
  %9 = load ptr, ptr %8, align 8, !dbg !609
  %10 = getelementptr i8, ptr %9, i64 50176, !dbg !609
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !609
  %11 = load i32, ptr %2, align 16, !dbg !609
  %12 = zext i32 %11 to i64, !dbg !609
  %13 = lshr i64 %12, 4, !dbg !609
  %14 = and i64 %13, 268435452, !dbg !609
  %15 = shl nuw nsw i64 %12, 4, !dbg !609
  %16 = and i64 %15, 1008, !dbg !609
  %17 = alloca [64 x i8], align 1, !dbg !609
  %18 = shl nuw nsw i64 %14, 8, !dbg !609
  %19 = ptrtoint ptr %4 to i64, !dbg !609
  %20 = add i64 %18, %19, !dbg !609
  %21 = ptrtoint ptr %6 to i64, !dbg !609
  %22 = add i64 %21, 1904640, !dbg !609
  %23 = add i64 %22, %16, !dbg !609
  %24 = ptrtoint ptr %17 to i64, !dbg !609
  %25 = shl nuw nsw i64 %14, 12, !dbg !609
  %26 = shl nuw nsw i64 %16, 2, !dbg !609
  %27 = add i64 %21, 24813568, !dbg !609
  %28 = add i64 %27, %26, !dbg !609
  %29 = add i64 %28, %25, !dbg !609
  %30 = and i64 %20, 9223372036854775807, !dbg !609
  %31 = and i64 %23, 9223372036854775807, !dbg !609
  %32 = and i64 %24, 9223372036854775807, !dbg !609
  %33 = and i64 %29, 9223372036854775807, !dbg !609
  call void asm sideeffect "fence", ""() #14, !dbg !609
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !609
  call void @llvm.riscv.config(i64 2, i64 4337200486810648592), !dbg !609
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !609
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !609
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !609
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !609
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !609
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !609
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !609
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !609
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !609
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !609
  call void asm sideeffect "fence", ""() #14, !dbg !609
  br label %.preheader, !dbg !611

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 10
  %invariant.op = or disjoint i64 %38, %16, !dbg !611
  br label %39, !dbg !611

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !611
  %42 = load i8, ptr %41, align 1, !dbg !611
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !611
  %44 = load i8, ptr %43, align 1, !dbg !611
  %45 = sitofp i8 %44 to float, !dbg !612
  %46 = fmul nnan contract float %45, 0x3FB432EDA0000000, !dbg !612
  %47 = sitofp i8 %42 to float, !dbg !613
  %48 = fmul nnan contract float %47, 0x3FB37444C0000000, !dbg !613
  %49 = fadd contract float %48, %46, !dbg !614
  %50 = fdiv float %49, 0x3FB442A3E0000000, !dbg !615
  %51 = bitcast float %50 to i32, !dbg !615
  %52 = call float @llvm.round.f32(float %50), !dbg !615
  %53 = bitcast float %52 to i32, !dbg !615
  %54 = lshr i32 %51, 23, !dbg !615
  %55 = and i32 %54, 255, !dbg !615
  %56 = add nsw i32 %55, -127, !dbg !615
  %57 = lshr i32 %53, 23, !dbg !615
  %58 = and i32 %57, 255, !dbg !615
  %59 = icmp eq i32 %58, 127, !dbg !615
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !615
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !615
  %62 = lshr i32 8388607, %61, !dbg !615
  %63 = and i32 %62, %53, !dbg !615
  %64 = icmp ne i32 %63, 0, !dbg !615
  %65 = or i1 %59, %64, !dbg !615
  %66 = icmp eq i32 %56, -1, !dbg !615
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !615
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !615
  %69 = lshr i32 4194304, %68, !dbg !615
  %70 = select i1 %66, i32 0, i32 %69, !dbg !615
  %71 = lshr i32 8388607, %68, !dbg !615
  %72 = and i32 %71, %51, !dbg !615
  %73 = icmp eq i32 %72, %70, !dbg !615
  %74 = add nsw i32 %55, -126, !dbg !615
  %75 = icmp ult i32 %74, 24, !dbg !615
  %76 = and i1 %75, %73, !dbg !615
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !615
  %78 = and i1 %65, %76, !dbg !615
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !615
  %80 = fsub contract float %52, %79, !dbg !615
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !615
  %82 = fadd contract float %81, 0.000000e+00, !dbg !615
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !615
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !615
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !615
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !615
  %85 = fptosi float %84 to i8, !dbg !615
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !616
  %87 = uitofp nneg i8 %86 to float, !dbg !616
  %88 = bitcast float %87 to i32, !dbg !611
  %89 = lshr i32 %88, 23, !dbg !611
  %90 = add nsw i32 %89, -127, !dbg !611
  %91 = icmp eq i32 %90, 0, !dbg !611
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !611
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !611
  %94 = lshr i32 8388607, %93, !dbg !611
  %95 = and i32 %94, %88, !dbg !611
  %96 = icmp ne i32 %95, 0, !dbg !611
  %97 = or i1 %91, %96, !dbg !611
  %98 = icmp eq i32 %90, -1, !dbg !611
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !611
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !611
  %101 = lshr i32 4194304, %100, !dbg !611
  %102 = select i1 %98, i32 0, i32 %101, !dbg !611
  %103 = lshr i32 8388607, %100, !dbg !611
  %104 = and i32 %103, %88, !dbg !611
  %105 = icmp eq i32 %104, %102, !dbg !611
  %106 = add nsw i32 %88, -1056964608, !dbg !611
  %107 = icmp ult i32 %106, 201326592, !dbg !611
  %108 = and i1 %107, %105, !dbg !611
  %109 = add nsw i8 %86, -1, !dbg !611
  %110 = sitofp i8 %109 to float, !dbg !611
  %111 = and i1 %97, %108, !dbg !611
  %112 = call float @llvm.fabs.f32(float %110), !dbg !611
  %113 = select i1 %111, float %112, float %87, !dbg !611
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !611
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !611
  %115 = fptosi float %114 to i8, !dbg !611
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !611
  store i8 %115, ptr %116, align 1, !dbg !611
  %117 = add nuw nsw i64 %40, 1, !dbg !611
  %exitcond.not = icmp eq i64 %117, 16, !dbg !611
  br i1 %exitcond.not, label %118, label %39, !dbg !611

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !611
  %exitcond25.not = icmp eq i64 %119, 4, !dbg !611
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !611

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !609
  ret i32 0, !dbg !609
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !617 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !618
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !618
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !618
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !618
  %6 = load ptr, ptr %5, align 8, !dbg !618
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !618
  %8 = load ptr, ptr %7, align 8, !dbg !618
  %9 = load i32, ptr %2, align 16, !dbg !618
  %10 = zext i32 %9 to i64, !dbg !618
  %11 = lshr i64 %10, 2, !dbg !618
  %12 = and i64 %11, 1073741820, !dbg !618
  %13 = shl nuw nsw i64 %10, 4, !dbg !618
  %14 = and i64 %13, 240, !dbg !618
  %15 = shl nuw nsw i64 %12, 10, !dbg !618
  %16 = ptrtoint ptr %4 to i64, !dbg !618
  %17 = add i64 %16, 50176, !dbg !618
  %18 = add i64 %17, %15, !dbg !618
  %19 = ptrtoint ptr %6 to i64, !dbg !618
  %20 = add i64 %19, 2166784, !dbg !618
  %21 = add i64 %20, %14, !dbg !618
  %22 = shl nuw nsw i64 %12, 8, !dbg !618
  %23 = or disjoint i64 %22, %14, !dbg !618
  %24 = ptrtoint ptr %8 to i64, !dbg !618
  %25 = add i64 %23, %24, !dbg !618
  %26 = shl nuw nsw i64 %23, 2, !dbg !618
  %27 = add i64 %19, 25616384, !dbg !618
  %28 = add i64 %27, %26, !dbg !618
  %29 = and i64 %18, 9223372036854775807, !dbg !618
  %30 = and i64 %21, 9223372036854775807, !dbg !618
  %31 = and i64 %25, 9223372036854775807, !dbg !618
  %32 = and i64 %28, 9223372036854775807, !dbg !618
  tail call void asm sideeffect "fence", ""() #14, !dbg !618
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !618
  tail call void @llvm.riscv.config(i64 6, i64 4332150240925712640), !dbg !618
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !618
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !618
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !618
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !618
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !618
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !618
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !618
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !618
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !618
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !618
  tail call void asm sideeffect "fence", ""() #14, !dbg !618
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !618
  ret i32 0, !dbg !618
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !619 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !620
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !620
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !620
  %5 = getelementptr i8, ptr %4, i64 250880, !dbg !620
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !620
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !620
  %7 = load ptr, ptr %6, align 8, !dbg !620
  %8 = getelementptr i8, ptr %7, i64 316416, !dbg !620
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !620
  %9 = load i32, ptr %2, align 16, !dbg !620
  %10 = zext i32 %9 to i64, !dbg !620
  %11 = lshr i64 %10, 2, !dbg !620
  %12 = and i64 %11, 1073741822, !dbg !620
  %13 = shl nuw nsw i64 %10, 5, !dbg !620
  %14 = and i64 %13, 224, !dbg !620
  br label %.preheader26, !dbg !620

.preheader26:                                     ; preds = %3, %55
  %exitcond30.not = phi i1 [ false, %3 ], [ true, %55 ]
  %15 = phi i64 [ 0, %3 ], [ 1, %55 ]
  %16 = or disjoint i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !620

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 2304
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !620

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !620
  %25 = shl nuw nsw i64 %24, 12
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 768
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !620

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !620
  %32 = shl nuw nsw i64 %31, 8
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !620

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !620
  br label %39, !dbg !620

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !620
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !620
  %43 = load i8, ptr %42, align 1, !dbg !620
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !620
  store i8 %43, ptr %44, align 1, !dbg !620
  %45 = add nuw nsw i64 %40, 1, !dbg !620
  %exitcond.not = icmp eq i64 %45, 8, !dbg !620
  br i1 %exitcond.not, label %46, label %39, !dbg !620

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !620
  %48 = icmp samesign ult i64 %37, 24, !dbg !620
  br i1 %48, label %36, label %49, !dbg !620

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !620
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !620
  br i1 %exitcond27.not, label %51, label %29, !dbg !620

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !620
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !620
  br i1 %exitcond28.not, label %53, label %22, !dbg !620

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !620
  %exitcond29.not = icmp eq i64 %54, 14, !dbg !620
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !620

55:                                               ; preds = %53
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !620

56:                                               ; preds = %55
  ret i32 0, !dbg !620
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !621 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !622
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !622
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !622
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !622
  %6 = load ptr, ptr %5, align 8, !dbg !622
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !622
  %8 = load ptr, ptr %7, align 8, !dbg !622
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !622
  %10 = load ptr, ptr %9, align 8, !dbg !622
  %11 = load i32, ptr %2, align 16, !dbg !622
  %12 = zext i32 %11 to i64, !dbg !622
  %13 = lshr i64 %12, 2, !dbg !622
  %14 = and i64 %13, 1073741820, !dbg !622
  %15 = shl nuw nsw i64 %12, 4, !dbg !622
  %16 = and i64 %15, 240, !dbg !622
  %17 = mul nuw nsw i64 %14, 2304, !dbg !622
  %18 = ptrtoint ptr %4 to i64, !dbg !622
  %19 = add i64 %18, 316416, !dbg !622
  %20 = add i64 %19, %17, !dbg !622
  %21 = ptrtoint ptr %6 to i64, !dbg !622
  %22 = add i64 %21, 1908608, !dbg !622
  %23 = add i64 %22, %16, !dbg !622
  %24 = shl nuw nsw i64 %14, 8, !dbg !622
  %25 = or disjoint i64 %24, %16, !dbg !622
  %26 = ptrtoint ptr %10 to i64, !dbg !622
  %27 = add i64 %25, %26, !dbg !622
  %28 = ptrtoint ptr %8 to i64, !dbg !622
  %29 = shl nuw nsw i64 %25, 2, !dbg !622
  %30 = add i64 %28, 25817088, !dbg !622
  %31 = add i64 %30, %29, !dbg !622
  %32 = and i64 %20, 9223372036854775807, !dbg !622
  %33 = and i64 %23, 9223372036854775807, !dbg !622
  %34 = and i64 %27, 9223372036854775807, !dbg !622
  %35 = and i64 %31, 9223372036854775807, !dbg !622
  tail call void asm sideeffect "fence", ""() #14, !dbg !622
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !622
  tail call void @llvm.riscv.config(i64 6, i64 4288824930126004480), !dbg !622
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !622
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !622
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 0), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !622
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !622
  %36 = add nuw i64 %32, 2048, !dbg !622
  %37 = add nuw i64 %33, 524288, !dbg !622
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %36, i64 %37), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %34), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !622
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !622
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !622
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !622
  tail call void asm sideeffect "fence", ""() #14, !dbg !622
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !622
  ret i32 0, !dbg !622
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !623 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !624
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !624
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !624
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !624
  %6 = load ptr, ptr %5, align 8, !dbg !624
  %7 = getelementptr i8, ptr %4, i64 50176, !dbg !625
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !625
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !624
  %9 = load ptr, ptr %8, align 8, !dbg !624
  %10 = getelementptr i8, ptr %9, i64 250880, !dbg !624
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !624
  %11 = load i32, ptr %2, align 16, !dbg !624
  %12 = zext i32 %11 to i64, !dbg !624
  %13 = lshr i64 %12, 4, !dbg !624
  %14 = and i64 %13, 268435452, !dbg !624
  %15 = shl nuw nsw i64 %12, 4, !dbg !624
  %16 = and i64 %15, 1008, !dbg !624
  %17 = alloca [64 x i8], align 1, !dbg !624
  %18 = shl nuw nsw i64 %14, 8, !dbg !624
  %19 = ptrtoint ptr %4 to i64, !dbg !624
  %20 = add i64 %18, %19, !dbg !624
  %21 = ptrtoint ptr %6 to i64, !dbg !624
  %22 = add i64 %21, 2428928, !dbg !624
  %23 = add i64 %22, %16, !dbg !624
  %24 = ptrtoint ptr %17 to i64, !dbg !624
  %25 = shl nuw nsw i64 %14, 12, !dbg !624
  %26 = shl nuw nsw i64 %16, 2, !dbg !624
  %27 = add i64 %21, 26017792, !dbg !624
  %28 = add i64 %27, %26, !dbg !624
  %29 = add i64 %28, %25, !dbg !624
  %30 = and i64 %20, 9223372036854775807, !dbg !624
  %31 = and i64 %23, 9223372036854775807, !dbg !624
  %32 = and i64 %24, 9223372036854775807, !dbg !624
  %33 = and i64 %29, 9223372036854775807, !dbg !624
  call void asm sideeffect "fence", ""() #14, !dbg !624
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !624
  call void @llvm.riscv.config(i64 2, i64 4369865826220638224), !dbg !624
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !624
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !624
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !624
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !624
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !624
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !624
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !624
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !624
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !624
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !624
  call void asm sideeffect "fence", ""() #14, !dbg !624
  br label %.preheader, !dbg !626

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 10
  %invariant.op = or disjoint i64 %38, %16, !dbg !626
  br label %39, !dbg !626

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !626
  %42 = load i8, ptr %41, align 1, !dbg !626
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !626
  %44 = load i8, ptr %43, align 1, !dbg !626
  %45 = sitofp i8 %44 to float, !dbg !627
  %46 = fmul nnan contract float %45, 0x3FB442A3E0000000, !dbg !627
  %47 = sitofp i8 %42 to float, !dbg !628
  %48 = fmul nnan contract float %47, 0x3FB96CEE00000000, !dbg !628
  %49 = fadd contract float %48, %46, !dbg !629
  %50 = fdiv float %49, 0x3FC2B669A0000000, !dbg !630
  %51 = bitcast float %50 to i32, !dbg !630
  %52 = call float @llvm.round.f32(float %50), !dbg !630
  %53 = bitcast float %52 to i32, !dbg !630
  %54 = lshr i32 %51, 23, !dbg !630
  %55 = and i32 %54, 255, !dbg !630
  %56 = add nsw i32 %55, -127, !dbg !630
  %57 = lshr i32 %53, 23, !dbg !630
  %58 = and i32 %57, 255, !dbg !630
  %59 = icmp eq i32 %58, 127, !dbg !630
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !630
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !630
  %62 = lshr i32 8388607, %61, !dbg !630
  %63 = and i32 %62, %53, !dbg !630
  %64 = icmp ne i32 %63, 0, !dbg !630
  %65 = or i1 %59, %64, !dbg !630
  %66 = icmp eq i32 %56, -1, !dbg !630
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !630
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !630
  %69 = lshr i32 4194304, %68, !dbg !630
  %70 = select i1 %66, i32 0, i32 %69, !dbg !630
  %71 = lshr i32 8388607, %68, !dbg !630
  %72 = and i32 %71, %51, !dbg !630
  %73 = icmp eq i32 %72, %70, !dbg !630
  %74 = add nsw i32 %55, -126, !dbg !630
  %75 = icmp ult i32 %74, 24, !dbg !630
  %76 = and i1 %75, %73, !dbg !630
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !630
  %78 = and i1 %65, %76, !dbg !630
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !630
  %80 = fsub contract float %52, %79, !dbg !630
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !630
  %82 = fadd contract float %81, 0.000000e+00, !dbg !630
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !630
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !630
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !630
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !630
  %85 = fptosi float %84 to i8, !dbg !630
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !631
  %87 = uitofp nneg i8 %86 to float, !dbg !631
  %88 = bitcast float %87 to i32, !dbg !626
  %89 = lshr i32 %88, 23, !dbg !626
  %90 = add nsw i32 %89, -127, !dbg !626
  %91 = icmp eq i32 %90, 0, !dbg !626
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !626
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !626
  %94 = lshr i32 8388607, %93, !dbg !626
  %95 = and i32 %94, %88, !dbg !626
  %96 = icmp ne i32 %95, 0, !dbg !626
  %97 = or i1 %91, %96, !dbg !626
  %98 = icmp eq i32 %90, -1, !dbg !626
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !626
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !626
  %101 = lshr i32 4194304, %100, !dbg !626
  %102 = select i1 %98, i32 0, i32 %101, !dbg !626
  %103 = lshr i32 8388607, %100, !dbg !626
  %104 = and i32 %103, %88, !dbg !626
  %105 = icmp eq i32 %104, %102, !dbg !626
  %106 = add nsw i32 %88, -1056964608, !dbg !626
  %107 = icmp ult i32 %106, 201326592, !dbg !626
  %108 = and i1 %107, %105, !dbg !626
  %109 = add nsw i8 %86, -1, !dbg !626
  %110 = sitofp i8 %109 to float, !dbg !626
  %111 = and i1 %97, %108, !dbg !626
  %112 = call float @llvm.fabs.f32(float %110), !dbg !626
  %113 = select i1 %111, float %112, float %87, !dbg !626
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !626
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !626
  %115 = fptosi float %114 to i8, !dbg !626
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !626
  store i8 %115, ptr %116, align 1, !dbg !626
  %117 = add nuw nsw i64 %40, 1, !dbg !626
  %exitcond.not = icmp eq i64 %117, 16, !dbg !626
  br i1 %exitcond.not, label %118, label %39, !dbg !626

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !626
  %exitcond25.not = icmp eq i64 %119, 4, !dbg !626
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !626

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !624
  ret i32 0, !dbg !624
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !632 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !633
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !633
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !633
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !633
  %6 = load ptr, ptr %5, align 8, !dbg !633
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !633
  %8 = load ptr, ptr %7, align 8, !dbg !633
  %9 = load i32, ptr %2, align 16, !dbg !633
  %10 = zext i32 %9 to i64, !dbg !633
  %11 = lshr i64 %10, 2, !dbg !633
  %12 = and i64 %11, 1073741820, !dbg !633
  %13 = shl nuw nsw i64 %10, 4, !dbg !633
  %14 = and i64 %13, 240, !dbg !633
  %15 = shl nuw nsw i64 %12, 10, !dbg !633
  %16 = ptrtoint ptr %4 to i64, !dbg !633
  %17 = add i64 %16, 250880, !dbg !633
  %18 = add i64 %17, %15, !dbg !633
  %19 = ptrtoint ptr %6 to i64, !dbg !633
  %20 = add i64 %19, 2691072, !dbg !633
  %21 = add i64 %20, %14, !dbg !633
  %22 = shl nuw nsw i64 %12, 8, !dbg !633
  %23 = or disjoint i64 %22, %14, !dbg !633
  %24 = ptrtoint ptr %8 to i64, !dbg !633
  %25 = add i64 %23, %24, !dbg !633
  %26 = shl nuw nsw i64 %23, 2, !dbg !633
  %27 = add i64 %19, 26820608, !dbg !633
  %28 = add i64 %27, %26, !dbg !633
  %29 = and i64 %18, 9223372036854775807, !dbg !633
  %30 = and i64 %21, 9223372036854775807, !dbg !633
  %31 = and i64 %25, 9223372036854775807, !dbg !633
  %32 = and i64 %28, 9223372036854775807, !dbg !633
  tail call void asm sideeffect "fence", ""() #14, !dbg !633
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !633
  tail call void @llvm.riscv.config(i64 6, i64 4263493105640014080), !dbg !633
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !633
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !633
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !633
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !633
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !633
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !633
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !633
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !633
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !633
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !633
  tail call void asm sideeffect "fence", ""() #14, !dbg !633
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !633
  ret i32 0, !dbg !633
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !634 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !635
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !635
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !635
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !635
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !635
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !635
  %7 = load ptr, ptr %6, align 8, !dbg !635
  %8 = getelementptr i8, ptr %7, i64 451584, !dbg !635
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !635
  %9 = load i32, ptr %2, align 16, !dbg !635
  %10 = zext i32 %9 to i64, !dbg !635
  %11 = lshr i64 %10, 2, !dbg !635
  %12 = and i64 %11, 1073741822, !dbg !635
  %13 = shl nuw nsw i64 %10, 5, !dbg !635
  %14 = and i64 %13, 224, !dbg !635
  br label %.preheader26, !dbg !635

.preheader26:                                     ; preds = %3, %55
  %exitcond30.not = phi i1 [ false, %3 ], [ true, %55 ]
  %15 = phi i64 [ 0, %3 ], [ 1, %55 ]
  %16 = or disjoint i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !635

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 2304
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !635

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !635
  %25 = shl nuw nsw i64 %24, 12
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 768
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !635

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !635
  %32 = shl nuw nsw i64 %31, 8
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !635

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !635
  br label %39, !dbg !635

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !635
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !635
  %43 = load i8, ptr %42, align 1, !dbg !635
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !635
  store i8 %43, ptr %44, align 1, !dbg !635
  %45 = add nuw nsw i64 %40, 1, !dbg !635
  %exitcond.not = icmp eq i64 %45, 8, !dbg !635
  br i1 %exitcond.not, label %46, label %39, !dbg !635

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !635
  %48 = icmp samesign ult i64 %37, 24, !dbg !635
  br i1 %48, label %36, label %49, !dbg !635

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !635
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !635
  br i1 %exitcond27.not, label %51, label %29, !dbg !635

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !635
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !635
  br i1 %exitcond28.not, label %53, label %22, !dbg !635

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !635
  %exitcond29.not = icmp eq i64 %54, 14, !dbg !635
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !635

55:                                               ; preds = %53
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !635

56:                                               ; preds = %55
  ret i32 0, !dbg !635
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !636 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !637
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !637
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !637
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !637
  %6 = load ptr, ptr %5, align 8, !dbg !637
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !637
  %8 = load ptr, ptr %7, align 8, !dbg !637
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !637
  %10 = load ptr, ptr %9, align 8, !dbg !637
  %11 = load i32, ptr %2, align 16, !dbg !637
  %12 = zext i32 %11 to i64, !dbg !637
  %13 = lshr i64 %12, 2, !dbg !637
  %14 = and i64 %13, 1073741820, !dbg !637
  %15 = shl nuw nsw i64 %12, 4, !dbg !637
  %16 = and i64 %15, 240, !dbg !637
  %17 = mul nuw nsw i64 %14, 2304, !dbg !637
  %18 = ptrtoint ptr %4 to i64, !dbg !637
  %19 = add i64 %18, 451584, !dbg !637
  %20 = add i64 %19, %17, !dbg !637
  %21 = ptrtoint ptr %6 to i64, !dbg !637
  %22 = add i64 %21, 2498432, !dbg !637
  %23 = add i64 %22, %16, !dbg !637
  %24 = shl nuw nsw i64 %14, 8, !dbg !637
  %25 = or disjoint i64 %24, %16, !dbg !637
  %26 = ptrtoint ptr %10 to i64, !dbg !637
  %27 = add i64 %25, %26, !dbg !637
  %28 = ptrtoint ptr %8 to i64, !dbg !637
  %29 = shl nuw nsw i64 %25, 2, !dbg !637
  %30 = add i64 %28, 27021312, !dbg !637
  %31 = add i64 %30, %29, !dbg !637
  %32 = and i64 %20, 9223372036854775807, !dbg !637
  %33 = and i64 %23, 9223372036854775807, !dbg !637
  %34 = and i64 %27, 9223372036854775807, !dbg !637
  %35 = and i64 %31, 9223372036854775807, !dbg !637
  tail call void asm sideeffect "fence", ""() #14, !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !637
  tail call void @llvm.riscv.config(i64 6, i64 4323524580795744512), !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 0), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !637
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !637
  %36 = add nuw i64 %32, 2048, !dbg !637
  %37 = add nuw i64 %33, 524288, !dbg !637
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %36, i64 %37), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %34), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !637
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !637
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !637
  tail call void asm sideeffect "fence", ""() #14, !dbg !637
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !637
  ret i32 0, !dbg !637
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !638 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !639
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !639
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !639
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !639
  %6 = load ptr, ptr %5, align 8, !dbg !639
  %7 = getelementptr i8, ptr %4, i64 250880, !dbg !640
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !640
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !639
  %9 = load ptr, ptr %8, align 8, !dbg !639
  %10 = getelementptr i8, ptr %9, i64 50176, !dbg !639
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !639
  %11 = load i32, ptr %2, align 16, !dbg !639
  %12 = zext i32 %11 to i64, !dbg !639
  %13 = lshr i64 %12, 4, !dbg !639
  %14 = and i64 %13, 268435452, !dbg !639
  %15 = shl nuw nsw i64 %12, 4, !dbg !639
  %16 = and i64 %15, 1008, !dbg !639
  %17 = alloca [64 x i8], align 1, !dbg !639
  %18 = shl nuw nsw i64 %14, 8, !dbg !639
  %19 = ptrtoint ptr %4 to i64, !dbg !639
  %20 = add i64 %18, %19, !dbg !639
  %21 = ptrtoint ptr %6 to i64, !dbg !639
  %22 = add i64 %21, 2953216, !dbg !639
  %23 = add i64 %22, %16, !dbg !639
  %24 = ptrtoint ptr %17 to i64, !dbg !639
  %25 = shl nuw nsw i64 %14, 12, !dbg !639
  %26 = shl nuw nsw i64 %16, 2, !dbg !639
  %27 = add i64 %21, 27222016, !dbg !639
  %28 = add i64 %27, %26, !dbg !639
  %29 = add i64 %28, %25, !dbg !639
  %30 = and i64 %20, 9223372036854775807, !dbg !639
  %31 = and i64 %23, 9223372036854775807, !dbg !639
  %32 = and i64 %24, 9223372036854775807, !dbg !639
  %33 = and i64 %29, 9223372036854775807, !dbg !639
  call void asm sideeffect "fence", ""() #14, !dbg !639
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !639
  call void @llvm.riscv.config(i64 2, i64 4346944990216192016), !dbg !639
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !639
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !639
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !639
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !639
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !639
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !639
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !639
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !639
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !639
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !639
  call void asm sideeffect "fence", ""() #14, !dbg !639
  br label %.preheader, !dbg !641

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 10
  %invariant.op = or disjoint i64 %38, %16, !dbg !641
  br label %39, !dbg !641

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !641
  %42 = load i8, ptr %41, align 1, !dbg !641
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !641
  %44 = load i8, ptr %43, align 1, !dbg !641
  %45 = sitofp i8 %44 to float, !dbg !642
  %46 = fmul nnan contract float %45, 0x3FC2B669A0000000, !dbg !642
  %47 = sitofp i8 %42 to float, !dbg !643
  %48 = fmul nnan contract float %47, 0x3FD862E880000000, !dbg !643
  %49 = fadd contract float %48, %46, !dbg !644
  %50 = fdiv float %49, 0x3FD86BBA20000000, !dbg !645
  %51 = bitcast float %50 to i32, !dbg !645
  %52 = call float @llvm.round.f32(float %50), !dbg !645
  %53 = bitcast float %52 to i32, !dbg !645
  %54 = lshr i32 %51, 23, !dbg !645
  %55 = and i32 %54, 255, !dbg !645
  %56 = add nsw i32 %55, -127, !dbg !645
  %57 = lshr i32 %53, 23, !dbg !645
  %58 = and i32 %57, 255, !dbg !645
  %59 = icmp eq i32 %58, 127, !dbg !645
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !645
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !645
  %62 = lshr i32 8388607, %61, !dbg !645
  %63 = and i32 %62, %53, !dbg !645
  %64 = icmp ne i32 %63, 0, !dbg !645
  %65 = or i1 %59, %64, !dbg !645
  %66 = icmp eq i32 %56, -1, !dbg !645
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !645
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !645
  %69 = lshr i32 4194304, %68, !dbg !645
  %70 = select i1 %66, i32 0, i32 %69, !dbg !645
  %71 = lshr i32 8388607, %68, !dbg !645
  %72 = and i32 %71, %51, !dbg !645
  %73 = icmp eq i32 %72, %70, !dbg !645
  %74 = add nsw i32 %55, -126, !dbg !645
  %75 = icmp ult i32 %74, 24, !dbg !645
  %76 = and i1 %75, %73, !dbg !645
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !645
  %78 = and i1 %65, %76, !dbg !645
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !645
  %80 = fsub contract float %52, %79, !dbg !645
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !645
  %82 = fadd contract float %81, 0.000000e+00, !dbg !645
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !645
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !645
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !645
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !645
  %85 = fptosi float %84 to i8, !dbg !645
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !646
  %87 = uitofp nneg i8 %86 to float, !dbg !646
  %88 = bitcast float %87 to i32, !dbg !641
  %89 = lshr i32 %88, 23, !dbg !641
  %90 = add nsw i32 %89, -127, !dbg !641
  %91 = icmp eq i32 %90, 0, !dbg !641
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !641
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !641
  %94 = lshr i32 8388607, %93, !dbg !641
  %95 = and i32 %94, %88, !dbg !641
  %96 = icmp ne i32 %95, 0, !dbg !641
  %97 = or i1 %91, %96, !dbg !641
  %98 = icmp eq i32 %90, -1, !dbg !641
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !641
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !641
  %101 = lshr i32 4194304, %100, !dbg !641
  %102 = select i1 %98, i32 0, i32 %101, !dbg !641
  %103 = lshr i32 8388607, %100, !dbg !641
  %104 = and i32 %103, %88, !dbg !641
  %105 = icmp eq i32 %104, %102, !dbg !641
  %106 = add nsw i32 %88, -1056964608, !dbg !641
  %107 = icmp ult i32 %106, 201326592, !dbg !641
  %108 = and i1 %107, %105, !dbg !641
  %109 = add nsw i8 %86, -1, !dbg !641
  %110 = sitofp i8 %109 to float, !dbg !641
  %111 = and i1 %97, %108, !dbg !641
  %112 = call float @llvm.fabs.f32(float %110), !dbg !641
  %113 = select i1 %111, float %112, float %87, !dbg !641
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !641
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !641
  %115 = fptosi float %114 to i8, !dbg !641
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !641
  store i8 %115, ptr %116, align 1, !dbg !641
  %117 = add nuw nsw i64 %40, 1, !dbg !641
  %exitcond.not = icmp eq i64 %117, 16, !dbg !641
  br i1 %exitcond.not, label %118, label %39, !dbg !641

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !641
  %exitcond25.not = icmp eq i64 %119, 4, !dbg !641
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !641

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !639
  ret i32 0, !dbg !639
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !647 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !648
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !648
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !648
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !648
  %6 = load ptr, ptr %5, align 8, !dbg !648
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !648
  %8 = load ptr, ptr %7, align 8, !dbg !648
  %9 = load i32, ptr %2, align 16, !dbg !648
  %10 = zext i32 %9 to i64, !dbg !648
  %11 = lshr i64 %10, 2, !dbg !648
  %12 = and i64 %11, 1073741820, !dbg !648
  %13 = shl nuw nsw i64 %10, 4, !dbg !648
  %14 = and i64 %13, 240, !dbg !648
  %15 = shl nuw nsw i64 %12, 10, !dbg !648
  %16 = ptrtoint ptr %4 to i64, !dbg !648
  %17 = add i64 %16, 50176, !dbg !648
  %18 = add i64 %17, %15, !dbg !648
  %19 = ptrtoint ptr %6 to i64, !dbg !648
  %20 = add i64 %19, 3215360, !dbg !648
  %21 = add i64 %20, %14, !dbg !648
  %22 = shl nuw nsw i64 %12, 8, !dbg !648
  %23 = or disjoint i64 %22, %14, !dbg !648
  %24 = ptrtoint ptr %8 to i64, !dbg !648
  %25 = add i64 %23, %24, !dbg !648
  %26 = shl nuw nsw i64 %23, 2, !dbg !648
  %27 = add i64 %19, 28024832, !dbg !648
  %28 = add i64 %27, %26, !dbg !648
  %29 = and i64 %18, 9223372036854775807, !dbg !648
  %30 = and i64 %21, 9223372036854775807, !dbg !648
  %31 = and i64 %25, 9223372036854775807, !dbg !648
  %32 = and i64 %28, 9223372036854775807, !dbg !648
  tail call void asm sideeffect "fence", ""() #14, !dbg !648
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !648
  tail call void @llvm.riscv.config(i64 6, i64 4299884659891765504), !dbg !648
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !648
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !648
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !648
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !648
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !648
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !648
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !648
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !648
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !648
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !648
  tail call void asm sideeffect "fence", ""() #14, !dbg !648
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !648
  ret i32 0, !dbg !648
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !649 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !650
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !650
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !650
  %5 = getelementptr i8, ptr %4, i64 250880, !dbg !650
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !650
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !650
  %7 = load ptr, ptr %6, align 8, !dbg !650
  %8 = getelementptr i8, ptr %7, i64 316416, !dbg !650
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !650
  %9 = load i32, ptr %2, align 16, !dbg !650
  %10 = zext i32 %9 to i64, !dbg !650
  %11 = lshr i64 %10, 2, !dbg !650
  %12 = and i64 %11, 1073741822, !dbg !650
  %13 = shl nuw nsw i64 %10, 5, !dbg !650
  %14 = and i64 %13, 224, !dbg !650
  br label %.preheader26, !dbg !650

.preheader26:                                     ; preds = %3, %55
  %exitcond30.not = phi i1 [ false, %3 ], [ true, %55 ]
  %15 = phi i64 [ 0, %3 ], [ 1, %55 ]
  %16 = or disjoint i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !650

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 2304
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !650

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !650
  %25 = shl nuw nsw i64 %24, 12
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 768
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !650

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !650
  %32 = shl nuw nsw i64 %31, 8
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !650

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !650
  br label %39, !dbg !650

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !650
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !650
  %43 = load i8, ptr %42, align 1, !dbg !650
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !650
  store i8 %43, ptr %44, align 1, !dbg !650
  %45 = add nuw nsw i64 %40, 1, !dbg !650
  %exitcond.not = icmp eq i64 %45, 8, !dbg !650
  br i1 %exitcond.not, label %46, label %39, !dbg !650

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !650
  %48 = icmp samesign ult i64 %37, 24, !dbg !650
  br i1 %48, label %36, label %49, !dbg !650

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !650
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !650
  br i1 %exitcond27.not, label %51, label %29, !dbg !650

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !650
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !650
  br i1 %exitcond28.not, label %53, label %22, !dbg !650

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !650
  %exitcond29.not = icmp eq i64 %54, 14, !dbg !650
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !650

55:                                               ; preds = %53
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !650

56:                                               ; preds = %55
  ret i32 0, !dbg !650
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !651 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !652
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !652
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !652
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !652
  %6 = load ptr, ptr %5, align 8, !dbg !652
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !652
  %8 = load ptr, ptr %7, align 8, !dbg !652
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !652
  %10 = load ptr, ptr %9, align 8, !dbg !652
  %11 = load i32, ptr %2, align 16, !dbg !652
  %12 = zext i32 %11 to i64, !dbg !652
  %13 = lshr i64 %12, 2, !dbg !652
  %14 = and i64 %13, 1073741820, !dbg !652
  %15 = shl nuw nsw i64 %12, 4, !dbg !652
  %16 = and i64 %15, 240, !dbg !652
  %17 = mul nuw nsw i64 %14, 2304, !dbg !652
  %18 = ptrtoint ptr %4 to i64, !dbg !652
  %19 = add i64 %18, 316416, !dbg !652
  %20 = add i64 %19, %17, !dbg !652
  %21 = ptrtoint ptr %6 to i64, !dbg !652
  %22 = add i64 %21, 3088256, !dbg !652
  %23 = add i64 %22, %16, !dbg !652
  %24 = shl nuw nsw i64 %14, 8, !dbg !652
  %25 = or disjoint i64 %24, %16, !dbg !652
  %26 = ptrtoint ptr %10 to i64, !dbg !652
  %27 = add i64 %25, %26, !dbg !652
  %28 = ptrtoint ptr %8 to i64, !dbg !652
  %29 = shl nuw nsw i64 %25, 2, !dbg !652
  %30 = add i64 %28, 28225536, !dbg !652
  %31 = add i64 %30, %29, !dbg !652
  %32 = and i64 %20, 9223372036854775807, !dbg !652
  %33 = and i64 %23, 9223372036854775807, !dbg !652
  %34 = and i64 %27, 9223372036854775807, !dbg !652
  %35 = and i64 %31, 9223372036854775807, !dbg !652
  tail call void asm sideeffect "fence", ""() #14, !dbg !652
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !652
  tail call void @llvm.riscv.config(i64 6, i64 4336734637477855488), !dbg !652
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !652
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !652
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 0), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !652
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !652
  %36 = add nuw i64 %32, 2048, !dbg !652
  %37 = add nuw i64 %33, 524288, !dbg !652
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %36, i64 %37), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %34), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !652
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !652
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !652
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !652
  tail call void asm sideeffect "fence", ""() #14, !dbg !652
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !652
  ret i32 0, !dbg !652
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !653 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !654
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !654
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !654
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !654
  %6 = load ptr, ptr %5, align 8, !dbg !654
  %7 = getelementptr i8, ptr %4, i64 50176, !dbg !655
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !655
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !654
  %9 = load ptr, ptr %8, align 8, !dbg !654
  %10 = getelementptr i8, ptr %9, i64 250880, !dbg !654
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !654
  %11 = load i32, ptr %2, align 16, !dbg !654
  %12 = zext i32 %11 to i64, !dbg !654
  %13 = lshr i64 %12, 4, !dbg !654
  %14 = and i64 %13, 268435452, !dbg !654
  %15 = shl nuw nsw i64 %12, 4, !dbg !654
  %16 = and i64 %15, 1008, !dbg !654
  %17 = alloca [64 x i8], align 1, !dbg !654
  %18 = shl nuw nsw i64 %14, 8, !dbg !654
  %19 = ptrtoint ptr %4 to i64, !dbg !654
  %20 = add i64 %18, %19, !dbg !654
  %21 = ptrtoint ptr %6 to i64, !dbg !654
  %22 = add i64 %21, 3477504, !dbg !654
  %23 = add i64 %22, %16, !dbg !654
  %24 = ptrtoint ptr %17 to i64, !dbg !654
  %25 = shl nuw nsw i64 %14, 12, !dbg !654
  %26 = shl nuw nsw i64 %16, 2, !dbg !654
  %27 = add i64 %21, 28426240, !dbg !654
  %28 = add i64 %27, %26, !dbg !654
  %29 = add i64 %28, %25, !dbg !654
  %30 = and i64 %20, 9223372036854775807, !dbg !654
  %31 = and i64 %23, 9223372036854775807, !dbg !654
  %32 = and i64 %24, 9223372036854775807, !dbg !654
  %33 = and i64 %29, 9223372036854775807, !dbg !654
  call void asm sideeffect "fence", ""() #14, !dbg !654
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !654
  call void @llvm.riscv.config(i64 2, i64 4334667469718290448), !dbg !654
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !654
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !654
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !654
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !654
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !654
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !654
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !654
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !654
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !654
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !654
  call void asm sideeffect "fence", ""() #14, !dbg !654
  br label %.preheader, !dbg !656

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 10
  %invariant.op = or disjoint i64 %38, %16, !dbg !656
  br label %39, !dbg !656

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !656
  %42 = load i8, ptr %41, align 1, !dbg !656
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !656
  %44 = load i8, ptr %43, align 1, !dbg !656
  %45 = sitofp i8 %44 to float, !dbg !657
  %46 = fmul nnan contract float %45, 0x3FD86BBA20000000, !dbg !657
  %47 = sitofp i8 %42 to float, !dbg !658
  %48 = fmul nnan contract float %47, 0x3FD5AC49E0000000, !dbg !658
  %49 = fadd contract float %48, %46, !dbg !659
  %50 = fdiv float %49, 0x3FD25EEE20000000, !dbg !660
  %51 = bitcast float %50 to i32, !dbg !660
  %52 = call float @llvm.round.f32(float %50), !dbg !660
  %53 = bitcast float %52 to i32, !dbg !660
  %54 = lshr i32 %51, 23, !dbg !660
  %55 = and i32 %54, 255, !dbg !660
  %56 = add nsw i32 %55, -127, !dbg !660
  %57 = lshr i32 %53, 23, !dbg !660
  %58 = and i32 %57, 255, !dbg !660
  %59 = icmp eq i32 %58, 127, !dbg !660
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !660
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !660
  %62 = lshr i32 8388607, %61, !dbg !660
  %63 = and i32 %62, %53, !dbg !660
  %64 = icmp ne i32 %63, 0, !dbg !660
  %65 = or i1 %59, %64, !dbg !660
  %66 = icmp eq i32 %56, -1, !dbg !660
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !660
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !660
  %69 = lshr i32 4194304, %68, !dbg !660
  %70 = select i1 %66, i32 0, i32 %69, !dbg !660
  %71 = lshr i32 8388607, %68, !dbg !660
  %72 = and i32 %71, %51, !dbg !660
  %73 = icmp eq i32 %72, %70, !dbg !660
  %74 = add nsw i32 %55, -126, !dbg !660
  %75 = icmp ult i32 %74, 24, !dbg !660
  %76 = and i1 %75, %73, !dbg !660
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !660
  %78 = and i1 %65, %76, !dbg !660
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !660
  %80 = fsub contract float %52, %79, !dbg !660
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !660
  %82 = fadd contract float %81, 0.000000e+00, !dbg !660
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !660
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !660
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !660
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !660
  %85 = fptosi float %84 to i8, !dbg !660
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !661
  %87 = uitofp nneg i8 %86 to float, !dbg !661
  %88 = bitcast float %87 to i32, !dbg !656
  %89 = lshr i32 %88, 23, !dbg !656
  %90 = add nsw i32 %89, -127, !dbg !656
  %91 = icmp eq i32 %90, 0, !dbg !656
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !656
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !656
  %94 = lshr i32 8388607, %93, !dbg !656
  %95 = and i32 %94, %88, !dbg !656
  %96 = icmp ne i32 %95, 0, !dbg !656
  %97 = or i1 %91, %96, !dbg !656
  %98 = icmp eq i32 %90, -1, !dbg !656
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !656
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !656
  %101 = lshr i32 4194304, %100, !dbg !656
  %102 = select i1 %98, i32 0, i32 %101, !dbg !656
  %103 = lshr i32 8388607, %100, !dbg !656
  %104 = and i32 %103, %88, !dbg !656
  %105 = icmp eq i32 %104, %102, !dbg !656
  %106 = add nsw i32 %88, -1056964608, !dbg !656
  %107 = icmp ult i32 %106, 201326592, !dbg !656
  %108 = and i1 %107, %105, !dbg !656
  %109 = add nsw i8 %86, -1, !dbg !656
  %110 = sitofp i8 %109 to float, !dbg !656
  %111 = and i1 %97, %108, !dbg !656
  %112 = call float @llvm.fabs.f32(float %110), !dbg !656
  %113 = select i1 %111, float %112, float %87, !dbg !656
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !656
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !656
  %115 = fptosi float %114 to i8, !dbg !656
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !656
  store i8 %115, ptr %116, align 1, !dbg !656
  %117 = add nuw nsw i64 %40, 1, !dbg !656
  %exitcond.not = icmp eq i64 %117, 16, !dbg !656
  br i1 %exitcond.not, label %118, label %39, !dbg !656

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !656
  %exitcond25.not = icmp eq i64 %119, 4, !dbg !656
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !656

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !654
  ret i32 0, !dbg !654
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !662 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !663
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !663
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !663
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !663
  %6 = load ptr, ptr %5, align 8, !dbg !663
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !663
  %8 = load ptr, ptr %7, align 8, !dbg !663
  %9 = load i32, ptr %2, align 16, !dbg !663
  %10 = zext i32 %9 to i64, !dbg !663
  %11 = lshr i64 %10, 2, !dbg !663
  %12 = and i64 %11, 1073741820, !dbg !663
  %13 = shl nuw nsw i64 %10, 4, !dbg !663
  %14 = and i64 %13, 240, !dbg !663
  %15 = shl nuw nsw i64 %12, 10, !dbg !663
  %16 = ptrtoint ptr %4 to i64, !dbg !663
  %17 = add i64 %16, 250880, !dbg !663
  %18 = add i64 %17, %15, !dbg !663
  %19 = ptrtoint ptr %6 to i64, !dbg !663
  %20 = add i64 %19, 3739648, !dbg !663
  %21 = add i64 %20, %14, !dbg !663
  %22 = shl nuw nsw i64 %12, 8, !dbg !663
  %23 = or disjoint i64 %22, %14, !dbg !663
  %24 = ptrtoint ptr %8 to i64, !dbg !663
  %25 = add i64 %23, %24, !dbg !663
  %26 = shl nuw nsw i64 %23, 2, !dbg !663
  %27 = add i64 %19, 29229056, !dbg !663
  %28 = add i64 %27, %26, !dbg !663
  %29 = and i64 %18, 9223372036854775807, !dbg !663
  %30 = and i64 %21, 9223372036854775807, !dbg !663
  %31 = and i64 %25, 9223372036854775807, !dbg !663
  %32 = and i64 %28, 9223372036854775807, !dbg !663
  tail call void asm sideeffect "fence", ""() #14, !dbg !663
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !663
  tail call void @llvm.riscv.config(i64 6, i64 4327234689510146304), !dbg !663
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !663
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !663
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !663
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !663
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !663
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !663
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 256), !dbg !663
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !663
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !663
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !663
  tail call void asm sideeffect "fence", ""() #14, !dbg !663
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !663
  ret i32 0, !dbg !663
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !664 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !665
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !665
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !665
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !665
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !665
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !665
  %7 = load ptr, ptr %6, align 8, !dbg !665
  %8 = getelementptr i8, ptr %7, i64 451584, !dbg !665
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !665
  %9 = load i32, ptr %2, align 16, !dbg !665
  %10 = zext i32 %9 to i64, !dbg !665
  %11 = lshr i64 %10, 2, !dbg !665
  %12 = and i64 %11, 1073741822, !dbg !665
  %13 = shl nuw nsw i64 %10, 5, !dbg !665
  %14 = and i64 %13, 224, !dbg !665
  br label %.preheader26, !dbg !665

.preheader26:                                     ; preds = %3, %55
  %exitcond30.not = phi i1 [ false, %3 ], [ true, %55 ]
  %15 = phi i64 [ 0, %3 ], [ 1, %55 ]
  %16 = or disjoint i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !665

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 2304
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !665

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !665
  %25 = shl nuw nsw i64 %24, 12
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 768
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !665

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !665
  %32 = shl nuw nsw i64 %31, 8
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !665

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !665
  br label %39, !dbg !665

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !665
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !665
  %43 = load i8, ptr %42, align 1, !dbg !665
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !665
  store i8 %43, ptr %44, align 1, !dbg !665
  %45 = add nuw nsw i64 %40, 1, !dbg !665
  %exitcond.not = icmp eq i64 %45, 8, !dbg !665
  br i1 %exitcond.not, label %46, label %39, !dbg !665

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !665
  %48 = icmp samesign ult i64 %37, 24, !dbg !665
  br i1 %48, label %36, label %49, !dbg !665

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !665
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !665
  br i1 %exitcond27.not, label %51, label %29, !dbg !665

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !665
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !665
  br i1 %exitcond28.not, label %53, label %22, !dbg !665

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !665
  %exitcond29.not = icmp eq i64 %54, 14, !dbg !665
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !665

55:                                               ; preds = %53
  br i1 %exitcond30.not, label %56, label %.preheader26, !dbg !665

56:                                               ; preds = %55
  ret i32 0, !dbg !665
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !666 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !667
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !667
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !667
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !667
  %6 = load ptr, ptr %5, align 8, !dbg !667
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !667
  %8 = load ptr, ptr %7, align 8, !dbg !667
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !667
  %10 = load ptr, ptr %9, align 8, !dbg !667
  %11 = load i32, ptr %2, align 16, !dbg !667
  %12 = zext i32 %11 to i64, !dbg !667
  %13 = lshr i64 %12, 2, !dbg !667
  %14 = and i64 %13, 1073741820, !dbg !667
  %15 = shl nuw nsw i64 %12, 4, !dbg !667
  %16 = and i64 %15, 240, !dbg !667
  %17 = mul nuw nsw i64 %14, 2304, !dbg !667
  %18 = ptrtoint ptr %4 to i64, !dbg !667
  %19 = add i64 %18, 451584, !dbg !667
  %20 = add i64 %19, %17, !dbg !667
  %21 = ptrtoint ptr %6 to i64, !dbg !667
  %22 = add i64 %21, 3678080, !dbg !667
  %23 = add i64 %22, %16, !dbg !667
  %24 = shl nuw nsw i64 %14, 8, !dbg !667
  %25 = or disjoint i64 %24, %16, !dbg !667
  %26 = ptrtoint ptr %10 to i64, !dbg !667
  %27 = add i64 %25, %26, !dbg !667
  %28 = ptrtoint ptr %8 to i64, !dbg !667
  %29 = shl nuw nsw i64 %25, 2, !dbg !667
  %30 = add i64 %28, 29429760, !dbg !667
  %31 = add i64 %30, %29, !dbg !667
  %32 = and i64 %20, 9223372036854775807, !dbg !667
  %33 = and i64 %23, 9223372036854775807, !dbg !667
  %34 = and i64 %27, 9223372036854775807, !dbg !667
  %35 = and i64 %31, 9223372036854775807, !dbg !667
  tail call void asm sideeffect "fence", ""() #14, !dbg !667
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !667
  tail call void @llvm.riscv.config(i64 6, i64 4301800941155254528), !dbg !667
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !667
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 256), !dbg !667
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 1024), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 0), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !667
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !667
  %36 = add nuw i64 %32, 2048, !dbg !667
  %37 = add nuw i64 %33, 524288, !dbg !667
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %36, i64 %37), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %34), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 256), !dbg !667
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 256, i64 256), !dbg !667
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !667
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !667
  tail call void asm sideeffect "fence", ""() #14, !dbg !667
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !667
  ret i32 0, !dbg !667
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !668 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !669
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !669
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !669
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !669
  %6 = load ptr, ptr %5, align 8, !dbg !669
  %7 = getelementptr i8, ptr %4, i64 250880, !dbg !670
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !670
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !669
  %9 = load ptr, ptr %8, align 8, !dbg !669
  %10 = getelementptr i8, ptr %9, i64 50176, !dbg !669
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !669
  %11 = load i32, ptr %2, align 16, !dbg !669
  %12 = zext i32 %11 to i64, !dbg !669
  %13 = lshr i64 %12, 4, !dbg !669
  %14 = and i64 %13, 268435452, !dbg !669
  %15 = shl nuw nsw i64 %12, 4, !dbg !669
  %16 = and i64 %15, 1008, !dbg !669
  %17 = alloca [64 x i8], align 1, !dbg !669
  %18 = shl nuw nsw i64 %14, 8, !dbg !669
  %19 = ptrtoint ptr %4 to i64, !dbg !669
  %20 = add i64 %18, %19, !dbg !669
  %21 = ptrtoint ptr %6 to i64, !dbg !669
  %22 = add i64 %21, 4001792, !dbg !669
  %23 = add i64 %22, %16, !dbg !669
  %24 = ptrtoint ptr %17 to i64, !dbg !669
  %25 = shl nuw nsw i64 %14, 12, !dbg !669
  %26 = shl nuw nsw i64 %16, 2, !dbg !669
  %27 = add i64 %21, 29630464, !dbg !669
  %28 = add i64 %27, %26, !dbg !669
  %29 = add i64 %28, %25, !dbg !669
  %30 = and i64 %20, 9223372036854775807, !dbg !669
  %31 = and i64 %23, 9223372036854775807, !dbg !669
  %32 = and i64 %24, 9223372036854775807, !dbg !669
  %33 = and i64 %29, 9223372036854775807, !dbg !669
  call void asm sideeffect "fence", ""() #14, !dbg !669
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !669
  call void @llvm.riscv.config(i64 2, i64 4325975959149740048), !dbg !669
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !669
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1024), !dbg !669
  call void @llvm.riscv.config(i64 4575657221409472785, i64 4096), !dbg !669
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !669
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !669
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !669
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 1024), !dbg !669
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 1024, i64 16), !dbg !669
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !669
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !669
  call void asm sideeffect "fence", ""() #14, !dbg !669
  br label %.preheader, !dbg !671

.preheader:                                       ; preds = %3, %118
  %34 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %35 = shl nuw nsw i64 %34, 4
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 %35
  %37 = add nuw nsw i64 %34, %14
  %38 = shl nuw nsw i64 %37, 10
  %invariant.op = or disjoint i64 %38, %16, !dbg !671
  br label %39, !dbg !671

39:                                               ; preds = %.preheader, %39
  %40 = phi i64 [ 0, %.preheader ], [ %117, %39 ]
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 %40, !dbg !671
  %42 = load i8, ptr %41, align 1, !dbg !671
  %.reass = add nuw nsw i64 %40, %invariant.op
  %43 = getelementptr inbounds nuw i8, ptr %7, i64 %.reass, !dbg !671
  %44 = load i8, ptr %43, align 1, !dbg !671
  %45 = sitofp i8 %44 to float, !dbg !672
  %46 = fmul nnan contract float %45, 0x3FD25EEE20000000, !dbg !672
  %47 = sitofp i8 %42 to float, !dbg !673
  %48 = fmul nnan contract float %47, 0x3FC2A196A0000000, !dbg !673
  %49 = fadd contract float %48, %46, !dbg !674
  %50 = fdiv float %49, 0x3FD0AF8140000000, !dbg !675
  %51 = bitcast float %50 to i32, !dbg !675
  %52 = call float @llvm.round.f32(float %50), !dbg !675
  %53 = bitcast float %52 to i32, !dbg !675
  %54 = lshr i32 %51, 23, !dbg !675
  %55 = and i32 %54, 255, !dbg !675
  %56 = add nsw i32 %55, -127, !dbg !675
  %57 = lshr i32 %53, 23, !dbg !675
  %58 = and i32 %57, 255, !dbg !675
  %59 = icmp eq i32 %58, 127, !dbg !675
  %60 = call i32 @llvm.usub.sat.i32(i32 %58, i32 128), !dbg !675
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 31), !dbg !675
  %62 = lshr i32 8388607, %61, !dbg !675
  %63 = and i32 %62, %53, !dbg !675
  %64 = icmp ne i32 %63, 0, !dbg !675
  %65 = or i1 %59, %64, !dbg !675
  %66 = icmp eq i32 %56, -1, !dbg !675
  %67 = call i32 @llvm.smax.i32(i32 %56, i32 0), !dbg !675
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 31), !dbg !675
  %69 = lshr i32 4194304, %68, !dbg !675
  %70 = select i1 %66, i32 0, i32 %69, !dbg !675
  %71 = lshr i32 8388607, %68, !dbg !675
  %72 = and i32 %71, %51, !dbg !675
  %73 = icmp eq i32 %72, %70, !dbg !675
  %74 = add nsw i32 %55, -126, !dbg !675
  %75 = icmp ult i32 %74, 24, !dbg !675
  %76 = and i1 %75, %73, !dbg !675
  %77 = call float @llvm.copysign.f32(float 1.000000e+00, float %50), !dbg !675
  %78 = and i1 %65, %76, !dbg !675
  %79 = select i1 %78, float %77, float 0.000000e+00, !dbg !675
  %80 = fsub contract float %52, %79, !dbg !675
  %81 = call float @llvm.copysign.f32(float %80, float %50), !dbg !675
  %82 = fadd contract float %81, 0.000000e+00, !dbg !675
  %.inv = fcmp ole float %82, -1.280000e+02, !dbg !675
  %83 = select i1 %.inv, float -1.280000e+02, float %82, !dbg !675
  %.inv23 = fcmp oge float %83, 1.270000e+02, !dbg !675
  %84 = select i1 %.inv23, float 1.270000e+02, float %83, !dbg !675
  %85 = fptosi float %84 to i8, !dbg !675
  %86 = call i8 @llvm.smax.i8(i8 %85, i8 0), !dbg !676
  %87 = uitofp nneg i8 %86 to float, !dbg !676
  %88 = bitcast float %87 to i32, !dbg !671
  %89 = lshr i32 %88, 23, !dbg !671
  %90 = add nsw i32 %89, -127, !dbg !671
  %91 = icmp eq i32 %90, 0, !dbg !671
  %92 = call i32 @llvm.usub.sat.i32(i32 %89, i32 128), !dbg !671
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 31), !dbg !671
  %94 = lshr i32 8388607, %93, !dbg !671
  %95 = and i32 %94, %88, !dbg !671
  %96 = icmp ne i32 %95, 0, !dbg !671
  %97 = or i1 %91, %96, !dbg !671
  %98 = icmp eq i32 %90, -1, !dbg !671
  %99 = call i32 @llvm.smax.i32(i32 %90, i32 0), !dbg !671
  %100 = call i32 @llvm.umin.i32(i32 %99, i32 31), !dbg !671
  %101 = lshr i32 4194304, %100, !dbg !671
  %102 = select i1 %98, i32 0, i32 %101, !dbg !671
  %103 = lshr i32 8388607, %100, !dbg !671
  %104 = and i32 %103, %88, !dbg !671
  %105 = icmp eq i32 %104, %102, !dbg !671
  %106 = add nsw i32 %88, -1056964608, !dbg !671
  %107 = icmp ult i32 %106, 201326592, !dbg !671
  %108 = and i1 %107, %105, !dbg !671
  %109 = add nsw i8 %86, -1, !dbg !671
  %110 = sitofp i8 %109 to float, !dbg !671
  %111 = and i1 %97, %108, !dbg !671
  %112 = call float @llvm.fabs.f32(float %110), !dbg !671
  %113 = select i1 %111, float %112, float %87, !dbg !671
  %.inv24 = fcmp oge float %113, 1.270000e+02, !dbg !671
  %114 = select i1 %.inv24, float 1.270000e+02, float %113, !dbg !671
  %115 = fptosi float %114 to i8, !dbg !671
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 %.reass, !dbg !671
  store i8 %115, ptr %116, align 1, !dbg !671
  %117 = add nuw nsw i64 %40, 1, !dbg !671
  %exitcond.not = icmp eq i64 %117, 16, !dbg !671
  br i1 %exitcond.not, label %118, label %39, !dbg !671

118:                                              ; preds = %39
  %119 = add nuw nsw i64 %34, 1, !dbg !671
  %exitcond25.not = icmp eq i64 %119, 4, !dbg !671
  br i1 %exitcond25.not, label %120, label %.preheader, !dbg !671

120:                                              ; preds = %118
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !669
  ret i32 0, !dbg !669
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !677 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !678
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !678
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !678
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !678
  %6 = load ptr, ptr %5, align 8, !dbg !678
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !678
  %8 = load ptr, ptr %7, align 8, !dbg !678
  %9 = load i32, ptr %2, align 16, !dbg !678
  %10 = zext i32 %9 to i64, !dbg !678
  %11 = lshr i64 %10, 3, !dbg !678
  %12 = and i64 %11, 536870908, !dbg !678
  %13 = shl nuw nsw i64 %10, 4, !dbg !678
  %14 = and i64 %13, 496, !dbg !678
  %15 = shl nuw nsw i64 %12, 10, !dbg !678
  %16 = ptrtoint ptr %4 to i64, !dbg !678
  %17 = add i64 %16, 50176, !dbg !678
  %18 = add i64 %17, %15, !dbg !678
  %19 = ptrtoint ptr %6 to i64, !dbg !678
  %20 = add i64 %19, 4263936, !dbg !678
  %21 = add i64 %20, %14, !dbg !678
  %22 = shl nuw nsw i64 %12, 9, !dbg !678
  %23 = or disjoint i64 %22, %14, !dbg !678
  %24 = ptrtoint ptr %8 to i64, !dbg !678
  %25 = add i64 %24, 250880, !dbg !678
  %26 = add i64 %25, %23, !dbg !678
  %27 = shl nuw nsw i64 %23, 2, !dbg !678
  %28 = add i64 %19, 30433280, !dbg !678
  %29 = add i64 %28, %27, !dbg !678
  %30 = and i64 %18, 9223372036854775807, !dbg !678
  %31 = and i64 %21, 9223372036854775807, !dbg !678
  %32 = and i64 %26, 9223372036854775807, !dbg !678
  %33 = and i64 %29, 9223372036854775807, !dbg !678
  tail call void asm sideeffect "fence", ""() #14, !dbg !678
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !678
  tail call void @llvm.riscv.config(i64 6, i64 4355773819479130624), !dbg !678
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !678
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !678
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !678
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !678
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %30, i64 %31), !dbg !678
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %33, i64 %32), !dbg !678
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 512), !dbg !678
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !678
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !678
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !678
  tail call void asm sideeffect "fence", ""() #14, !dbg !678
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !678
  ret i32 0, !dbg !678
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_87_generic_7x7x1024_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !679 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !680
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !680
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !680
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !680
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !680
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !681
  %7 = load ptr, ptr %6, align 8, !dbg !681
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !681
  %8 = load i32, ptr %2, align 16, !dbg !681
  %9 = zext i32 %8 to i64, !dbg !681
  %10 = shl nuw nsw i64 %9, 5, !dbg !681
  br label %.preheader26, !dbg !681

.preheader26:                                     ; preds = %3, %36
  %11 = phi i64 [ 0, %3 ], [ %37, %36 ]
  %12 = mul nuw nsw i64 %11, 28672
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 %12
  %14 = mul nuw nsw i64 %11, 7168
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  br label %.preheader, !dbg !681

.preheader:                                       ; preds = %.preheader26, %34
  %16 = phi i64 [ 0, %.preheader26 ], [ %35, %34 ]
  %17 = shl nuw nsw i64 %16, 11
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %17
  %19 = shl nuw nsw i64 %16, 10
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 %19
  br label %21, !dbg !681

21:                                               ; preds = %.preheader, %31
  %22 = phi i64 [ 0, %.preheader ], [ %32, %31 ]
  %23 = add nuw nsw i64 %22, %10, !dbg !681
  br label %24, !dbg !681

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %30, %24 ]
  %26 = add nuw nsw i64 %25, %23, !dbg !681
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 %26, !dbg !681
  %28 = load i8, ptr %27, align 1, !dbg !681
  %29 = getelementptr inbounds nuw i8, ptr %20, i64 %26, !dbg !681
  store i8 %28, ptr %29, align 1, !dbg !681
  %30 = add nuw nsw i64 %25, 1, !dbg !681
  %exitcond.not = icmp eq i64 %30, 8, !dbg !681
  br i1 %exitcond.not, label %31, label %24, !dbg !681

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %22, 8, !dbg !681
  %33 = icmp samesign ult i64 %22, 24, !dbg !681
  br i1 %33, label %21, label %34, !dbg !681

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %16, 1, !dbg !681
  %exitcond27.not = icmp eq i64 %35, 7, !dbg !681
  br i1 %exitcond27.not, label %36, label %.preheader, !dbg !681

36:                                               ; preds = %34
  %37 = add nuw nsw i64 %11, 1, !dbg !681
  %exitcond28.not = icmp eq i64 %37, 7, !dbg !681
  br i1 %exitcond28.not, label %38, label %.preheader26, !dbg !681

38:                                               ; preds = %36
  ret i32 0, !dbg !681
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_88_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !682 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !683
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !683
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !683
  %5 = getelementptr i8, ptr %4, i64 250880, !dbg !683
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !683
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !684
  %7 = load ptr, ptr %6, align 8, !dbg !684
  %8 = getelementptr i8, ptr %7, i64 351232, !dbg !684
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !684
  %9 = load i32, ptr %2, align 16, !dbg !684
  %10 = zext i32 %9 to i64, !dbg !684
  %11 = and i64 %10, 4294967288, !dbg !684
  %12 = shl nuw nsw i64 %10, 6, !dbg !684
  %13 = and i64 %12, 448, !dbg !684
  %14 = icmp samesign ult i64 %11, 14, !dbg !684
  br i1 %14, label %.preheader23.preheader, label %._crit_edge, !dbg !684

.preheader23.preheader:                           ; preds = %3
  %15 = sub nuw nsw i64 14, %11, !dbg !684
  %16 = tail call i64 @llvm.umin.i64(i64 %15, i64 8), !dbg !684
  br label %.preheader23, !dbg !684

.preheader23:                                     ; preds = %.preheader23.preheader, %38
  %17 = phi i64 [ %39, %38 ], [ 0, %.preheader23.preheader ]
  %18 = add nuw nsw i64 %17, %11
  %19 = mul nuw nsw i64 %18, 7168
  %20 = getelementptr i8, ptr %5, i64 %19
  %21 = shl i64 %18, 13
  %22 = getelementptr i8, ptr %8, i64 %21
  br label %.preheader, !dbg !684

.preheader:                                       ; preds = %.preheader23, %36
  %23 = phi i64 [ 0, %.preheader23 ], [ %37, %36 ]
  %24 = shl i64 %23, 9
  %25 = getelementptr i8, ptr %20, i64 %24
  %26 = getelementptr i8, ptr %22, i64 %24
  %27 = getelementptr i8, ptr %26, i64 8704
  br label %28, !dbg !684

28:                                               ; preds = %.preheader, %28
  %29 = phi i64 [ 0, %.preheader ], [ %34, %28 ]
  %30 = or disjoint i64 %29, %13, !dbg !684
  %31 = getelementptr i8, ptr %25, i64 %30, !dbg !684
  %32 = load <2 x i8>, ptr %31, align 2, !dbg !684
  %33 = getelementptr i8, ptr %27, i64 %30, !dbg !684
  store <2 x i8> %32, ptr %33, align 2, !dbg !684
  %34 = add nuw nsw i64 %29, 2, !dbg !684
  %35 = icmp samesign ult i64 %29, 62, !dbg !684
  br i1 %35, label %28, label %36, !dbg !684

36:                                               ; preds = %28
  %37 = add nuw nsw i64 %23, 1, !dbg !684
  %exitcond.not = icmp eq i64 %37, 14, !dbg !684
  br i1 %exitcond.not, label %38, label %.preheader, !dbg !684

38:                                               ; preds = %36
  %39 = add nuw nsw i64 %17, 1, !dbg !684
  %exitcond24.not = icmp eq i64 %39, %16, !dbg !684
  br i1 %exitcond24.not, label %._crit_edge, label %.preheader23, !dbg !684

._crit_edge:                                      ; preds = %38, %3
  ret i32 0, !dbg !684
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !685 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !686
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !686
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !686
  %5 = getelementptr i8, ptr %4, i64 351232, !dbg !686
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !686
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !686
  %7 = load ptr, ptr %6, align 8, !dbg !686
  %8 = getelementptr i8, ptr %7, i64 50176, !dbg !686
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !686
  %9 = load i32, ptr %2, align 16, !dbg !686
  %10 = zext i32 %9 to i64, !dbg !686
  %11 = lshr i64 %10, 4, !dbg !686
  %12 = shl nuw nsw i64 %10, 5, !dbg !686
  %13 = and i64 %12, 480, !dbg !686
  %14 = shl nuw nsw i64 %11, 14
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = mul nuw nsw i64 %11, 32256
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 %16
  br label %.preheader27, !dbg !686

.preheader27:                                     ; preds = %3, %47
  %18 = phi i64 [ 0, %3 ], [ %48, %47 ]
  %19 = shl i64 %18, 10
  %invariant.gep = getelementptr i8, ptr %15, i64 %19, !dbg !686
  %20 = mul nuw nsw i64 %18, 4608
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %20
  br label %.preheader26, !dbg !686

.preheader26:                                     ; preds = %.preheader27, %45
  %22 = phi i64 [ 0, %.preheader27 ], [ %46, %45 ]
  %23 = shl nuw nsw i64 %22, 13
  %gep = getelementptr i8, ptr %invariant.gep, i64 %23
  %24 = mul nuw nsw i64 %22, 1536
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 %24
  br label %.preheader, !dbg !686

.preheader:                                       ; preds = %.preheader26, %43
  %26 = phi i64 [ 0, %.preheader26 ], [ %44, %43 ]
  %27 = shl nuw nsw i64 %26, 9
  %28 = getelementptr i8, ptr %gep, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %27
  br label %30, !dbg !686

30:                                               ; preds = %.preheader, %40
  %31 = phi i64 [ 0, %.preheader ], [ %41, %40 ]
  %32 = or disjoint i64 %31, %13, !dbg !686
  br label %33, !dbg !686

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %39, %33 ]
  %35 = or disjoint i64 %32, %34, !dbg !686
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 %35, !dbg !686
  %37 = load i8, ptr %36, align 1, !dbg !686
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %35, !dbg !686
  store i8 %37, ptr %38, align 1, !dbg !686
  %39 = add nuw nsw i64 %34, 1, !dbg !686
  %exitcond.not = icmp eq i64 %39, 8, !dbg !686
  br i1 %exitcond.not, label %40, label %33, !dbg !686

40:                                               ; preds = %33
  %41 = add nuw nsw i64 %31, 8, !dbg !686
  %42 = icmp samesign ult i64 %31, 24, !dbg !686
  br i1 %42, label %30, label %43, !dbg !686

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %26, 1, !dbg !686
  %exitcond28.not = icmp eq i64 %44, 3, !dbg !686
  br i1 %exitcond28.not, label %45, label %.preheader, !dbg !686

45:                                               ; preds = %43
  %46 = add nuw nsw i64 %22, 1, !dbg !686
  %exitcond29.not = icmp eq i64 %46, 3, !dbg !686
  br i1 %exitcond29.not, label %47, label %.preheader26, !dbg !686

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %18, 1, !dbg !686
  %exitcond30.not = icmp eq i64 %48, 7, !dbg !686
  br i1 %exitcond30.not, label %49, label %.preheader27, !dbg !686

49:                                               ; preds = %47
  ret i32 0, !dbg !686
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !687 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !688
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !688
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !688
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !688
  %6 = load ptr, ptr %5, align 8, !dbg !688
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !688
  %8 = load ptr, ptr %7, align 8, !dbg !688
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !688
  %10 = load ptr, ptr %9, align 8, !dbg !688
  %11 = load i32, ptr %2, align 16, !dbg !688
  %12 = zext i32 %11 to i64, !dbg !688
  %13 = lshr i64 %12, 5, !dbg !688
  %14 = shl nuw nsw i64 %12, 4, !dbg !688
  %15 = and i64 %14, 496, !dbg !688
  %16 = mul nuw nsw i64 %13, 4608, !dbg !688
  %17 = ptrtoint ptr %4 to i64, !dbg !688
  %18 = add i64 %17, 50176, !dbg !688
  %19 = add i64 %18, %16, !dbg !688
  %20 = ptrtoint ptr %6 to i64, !dbg !688
  %21 = add i64 %20, 4267904, !dbg !688
  %22 = add i64 %21, %15, !dbg !688
  %23 = shl nuw nsw i64 %13, 9, !dbg !688
  %24 = or disjoint i64 %23, %15, !dbg !688
  %25 = ptrtoint ptr %10 to i64, !dbg !688
  %26 = add i64 %25, 275968, !dbg !688
  %27 = add i64 %26, %24, !dbg !688
  %28 = ptrtoint ptr %8 to i64, !dbg !688
  %29 = shl nuw nsw i64 %24, 2, !dbg !688
  %30 = add i64 %28, 31236096, !dbg !688
  %31 = add i64 %30, %29, !dbg !688
  %32 = and i64 %19, 9223372036854775807, !dbg !688
  %33 = and i64 %22, 9223372036854775807, !dbg !688
  %34 = and i64 %27, 9223372036854775807, !dbg !688
  %35 = and i64 %31, 9223372036854775807, !dbg !688
  tail call void asm sideeffect "fence", ""() #14, !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !688
  tail call void @llvm.riscv.config(i64 6, i64 4275887694061502976), !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %32, i64 %33), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %35, i64 0), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !688
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !688
  %36 = add nuw i64 %32, 2048, !dbg !688
  %37 = add nuw i64 %33, 1048576, !dbg !688
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %36, i64 %37), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !688
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !688
  %38 = add nuw i64 %32, 4096, !dbg !688
  %39 = add nuw i64 %33, 2097152, !dbg !688
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %38, i64 %39), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %34), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !688
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !688
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !688
  tail call void asm sideeffect "fence", ""() #14, !dbg !688
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !688
  ret i32 0, !dbg !688
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !689 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !690
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !690
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !690
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !690
  %6 = load ptr, ptr %5, align 8, !dbg !690
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !690
  %8 = load ptr, ptr %7, align 8, !dbg !690
  %9 = load i32, ptr %2, align 16, !dbg !690
  %10 = zext i32 %9 to i64, !dbg !690
  %11 = lshr i64 %10, 7, !dbg !690
  %12 = shl nuw nsw i64 %10, 4, !dbg !690
  %13 = and i64 %12, 2032, !dbg !690
  %14 = shl nuw nsw i64 %11, 9, !dbg !690
  %15 = ptrtoint ptr %4 to i64, !dbg !690
  %16 = add i64 %15, 275968, !dbg !690
  %17 = add i64 %16, %14, !dbg !690
  %18 = ptrtoint ptr %6 to i64, !dbg !690
  %19 = add i64 %18, 6885376, !dbg !690
  %20 = add i64 %19, %13, !dbg !690
  %21 = shl nuw nsw i64 %11, 11, !dbg !690
  %22 = or disjoint i64 %21, %13, !dbg !690
  %23 = ptrtoint ptr %8 to i64, !dbg !690
  %24 = add i64 %23, 50176, !dbg !690
  %25 = add i64 %24, %22, !dbg !690
  %26 = shl nuw nsw i64 %22, 2, !dbg !690
  %27 = add i64 %18, 31336448, !dbg !690
  %28 = add i64 %27, %26, !dbg !690
  %29 = and i64 %17, 9223372036854775807, !dbg !690
  %30 = and i64 %20, 9223372036854775807, !dbg !690
  %31 = and i64 %25, 9223372036854775807, !dbg !690
  %32 = and i64 %28, 9223372036854775807, !dbg !690
  tail call void asm sideeffect "fence", ""() #14, !dbg !690
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !690
  tail call void @llvm.riscv.config(i64 2, i64 4319000794822084608), !dbg !690
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !690
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !690
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !690
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !690
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !690
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !690
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 2048), !dbg !690
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 2048), !dbg !690
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !690
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !690
  tail call void asm sideeffect "fence", ""() #14, !dbg !690
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !690
  ret i32 0, !dbg !690
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !691 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !692
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !692
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !692
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !692
  %6 = load ptr, ptr %5, align 8, !dbg !692
  %7 = getelementptr i8, ptr %4, i64 50176, !dbg !693
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !693
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !692
  %9 = load ptr, ptr %8, align 8, !dbg !692
  %10 = getelementptr i8, ptr %9, i64 150528, !dbg !692
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !692
  %11 = load i32, ptr %2, align 16, !dbg !692
  %12 = zext i32 %11 to i64, !dbg !692
  %13 = lshr i64 %12, 7, !dbg !692
  %14 = shl nuw nsw i64 %12, 4, !dbg !692
  %15 = and i64 %14, 2032, !dbg !692
  %16 = alloca [16 x i8], align 1, !dbg !692
  %17 = shl nuw nsw i64 %13, 10, !dbg !692
  %18 = ptrtoint ptr %4 to i64, !dbg !692
  %19 = add i64 %17, %18, !dbg !692
  %20 = ptrtoint ptr %6 to i64, !dbg !692
  %21 = add i64 %20, 4788224, !dbg !692
  %22 = add i64 %21, %15, !dbg !692
  %23 = ptrtoint ptr %16 to i64, !dbg !692
  %24 = shl nuw nsw i64 %13, 11, !dbg !692
  %25 = or disjoint i64 %24, %15, !dbg !692
  %26 = shl nuw nsw i64 %25, 2, !dbg !692
  %27 = add i64 %20, 30834688, !dbg !692
  %28 = add i64 %27, %26, !dbg !692
  %29 = and i64 %19, 9223372036854775807, !dbg !692
  %30 = and i64 %22, 9223372036854775807, !dbg !692
  %31 = and i64 %23, 9223372036854775807, !dbg !692
  %32 = and i64 %28, 9223372036854775807, !dbg !692
  call void asm sideeffect "fence", ""() #14, !dbg !692
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !692
  call void @llvm.riscv.config(i64 2, i64 4312260011154735120), !dbg !692
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !692
  call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !692
  call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !692
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 274877972481), !dbg !692
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !692
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !692
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 2048), !dbg !692
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 16), !dbg !692
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !692
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !692
  call void asm sideeffect "fence", ""() #14, !dbg !692
  br label %33, !dbg !694

33:                                               ; preds = %3, %33
  %34 = phi i64 [ 0, %3 ], [ %112, %33 ]
  %35 = or disjoint i64 %25, %34, !dbg !694
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 %35, !dbg !694
  %37 = load i8, ptr %36, align 1, !dbg !694
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 %34, !dbg !694
  %39 = load i8, ptr %38, align 1, !dbg !694
  %40 = sitofp i8 %39 to float, !dbg !695
  %41 = fmul nnan contract float %40, 0x3FE33CB880000000, !dbg !695
  %42 = sitofp i8 %37 to float, !dbg !696
  %43 = fmul nnan contract float %42, 0x3FC0FDF6C0000000, !dbg !696
  %44 = fadd contract float %43, %41, !dbg !697
  %45 = fdiv float %44, 0x3FE413DDC0000000, !dbg !698
  %46 = bitcast float %45 to i32, !dbg !698
  %47 = call float @llvm.round.f32(float %45), !dbg !698
  %48 = bitcast float %47 to i32, !dbg !698
  %49 = lshr i32 %46, 23, !dbg !698
  %50 = and i32 %49, 255, !dbg !698
  %51 = add nsw i32 %50, -127, !dbg !698
  %52 = lshr i32 %48, 23, !dbg !698
  %53 = and i32 %52, 255, !dbg !698
  %54 = icmp eq i32 %53, 127, !dbg !698
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !698
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !698
  %57 = lshr i32 8388607, %56, !dbg !698
  %58 = and i32 %57, %48, !dbg !698
  %59 = icmp ne i32 %58, 0, !dbg !698
  %60 = or i1 %54, %59, !dbg !698
  %61 = icmp eq i32 %51, -1, !dbg !698
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !698
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !698
  %64 = lshr i32 4194304, %63, !dbg !698
  %65 = select i1 %61, i32 0, i32 %64, !dbg !698
  %66 = lshr i32 8388607, %63, !dbg !698
  %67 = and i32 %66, %46, !dbg !698
  %68 = icmp eq i32 %67, %65, !dbg !698
  %69 = add nsw i32 %50, -126, !dbg !698
  %70 = icmp ult i32 %69, 24, !dbg !698
  %71 = and i1 %70, %68, !dbg !698
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !698
  %73 = and i1 %60, %71, !dbg !698
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !698
  %75 = fsub contract float %47, %74, !dbg !698
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !698
  %77 = fadd contract float %76, 0.000000e+00, !dbg !698
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !698
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !698
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !698
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !698
  %80 = fptosi float %79 to i8, !dbg !698
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !699
  %82 = uitofp nneg i8 %81 to float, !dbg !699
  %83 = bitcast float %82 to i32, !dbg !694
  %84 = lshr i32 %83, 23, !dbg !694
  %85 = add nsw i32 %84, -127, !dbg !694
  %86 = icmp eq i32 %85, 0, !dbg !694
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !694
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !694
  %89 = lshr i32 8388607, %88, !dbg !694
  %90 = and i32 %89, %83, !dbg !694
  %91 = icmp ne i32 %90, 0, !dbg !694
  %92 = or i1 %86, %91, !dbg !694
  %93 = icmp eq i32 %85, -1, !dbg !694
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !694
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !694
  %96 = lshr i32 4194304, %95, !dbg !694
  %97 = select i1 %93, i32 0, i32 %96, !dbg !694
  %98 = lshr i32 8388607, %95, !dbg !694
  %99 = and i32 %98, %83, !dbg !694
  %100 = icmp eq i32 %99, %97, !dbg !694
  %101 = add nsw i32 %83, -1056964608, !dbg !694
  %102 = icmp ult i32 %101, 201326592, !dbg !694
  %103 = and i1 %102, %100, !dbg !694
  %104 = add nsw i8 %81, -1, !dbg !694
  %105 = sitofp i8 %104 to float, !dbg !694
  %106 = and i1 %92, %103, !dbg !694
  %107 = call float @llvm.fabs.f32(float %105), !dbg !694
  %108 = select i1 %106, float %107, float %82, !dbg !694
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !694
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !694
  %110 = fptosi float %109 to i8, !dbg !694
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %35, !dbg !694
  store i8 %110, ptr %111, align 1, !dbg !694
  %112 = add nuw nsw i64 %34, 1, !dbg !694
  %exitcond.not = icmp eq i64 %112, 16, !dbg !694
  br i1 %exitcond.not, label %113, label %33, !dbg !694

113:                                              ; preds = %33
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !692
  ret i32 0, !dbg !692
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !700 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !701
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !701
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !701
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !701
  %6 = load ptr, ptr %5, align 8, !dbg !701
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !701
  %8 = load ptr, ptr %7, align 8, !dbg !701
  %9 = load i32, ptr %2, align 16, !dbg !701
  %10 = zext i32 %9 to i64, !dbg !701
  %11 = lshr i64 %10, 5, !dbg !701
  %12 = shl nuw nsw i64 %10, 4, !dbg !701
  %13 = and i64 %12, 496, !dbg !701
  %14 = shl nuw nsw i64 %11, 11, !dbg !701
  %15 = ptrtoint ptr %4 to i64, !dbg !701
  %16 = add i64 %15, 150528, !dbg !701
  %17 = add i64 %16, %14, !dbg !701
  %18 = ptrtoint ptr %6 to i64, !dbg !701
  %19 = add i64 %18, 7933952, !dbg !701
  %20 = add i64 %19, %13, !dbg !701
  %21 = shl nuw nsw i64 %11, 9, !dbg !701
  %22 = or disjoint i64 %21, %13, !dbg !701
  %23 = ptrtoint ptr %8 to i64, !dbg !701
  %24 = add i64 %22, %23, !dbg !701
  %25 = shl nuw nsw i64 %22, 2, !dbg !701
  %26 = add i64 %18, 31737856, !dbg !701
  %27 = add i64 %26, %25, !dbg !701
  %28 = and i64 %17, 9223372036854775807, !dbg !701
  %29 = and i64 %20, 9223372036854775807, !dbg !701
  %30 = and i64 %24, 9223372036854775807, !dbg !701
  %31 = and i64 %27, 9223372036854775807, !dbg !701
  tail call void asm sideeffect "fence", ""() #14, !dbg !701
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !701
  tail call void @llvm.riscv.config(i64 6, i64 4335228504116298240), !dbg !701
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !701
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !701
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !701
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !701
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %28, i64 %29), !dbg !701
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %31, i64 %30), !dbg !701
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 512), !dbg !701
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !701
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !701
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !701
  tail call void asm sideeffect "fence", ""() #14, !dbg !701
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !701
  ret i32 0, !dbg !701
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_94_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !702 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !703
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !703
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !703
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !703
  %4 = load i32, ptr %.unpack18, align 4, !dbg !703
  %5 = zext i32 %4 to i64, !dbg !703
  %6 = load ptr, ptr %.unpack20, align 8, !dbg !704
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !704
  %7 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !703
  %8 = load ptr, ptr %7, align 8, !dbg !703
  %9 = getelementptr i8, ptr %8, i64 %5, !dbg !703
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !703
  %10 = load i32, ptr %2, align 16, !dbg !703
  %11 = zext i32 %10 to i64, !dbg !703
  %12 = shl nuw nsw i64 %11, 7, !dbg !703
  br label %.preheader23, !dbg !703

.preheader23:                                     ; preds = %3, %33
  %13 = phi i64 [ 0, %3 ], [ %34, %33 ]
  %14 = mul nuw nsw i64 %13, 3584
  %15 = getelementptr i8, ptr %6, i64 %14
  %16 = mul nuw nsw i64 %13, 4608
  %17 = getelementptr i8, ptr %9, i64 %16
  br label %.preheader, !dbg !703

.preheader:                                       ; preds = %.preheader23, %31
  %18 = phi i64 [ 0, %.preheader23 ], [ %32, %31 ]
  %19 = shl i64 %18, 9
  %20 = getelementptr i8, ptr %15, i64 %19
  %21 = getelementptr i8, ptr %17, i64 %19
  %22 = getelementptr i8, ptr %21, i64 5120
  br label %23, !dbg !703

23:                                               ; preds = %.preheader, %23
  %24 = phi i64 [ 0, %.preheader ], [ %29, %23 ]
  %25 = add nuw nsw i64 %24, %12, !dbg !703
  %26 = getelementptr i8, ptr %20, i64 %25, !dbg !703
  %27 = load <2 x i8>, ptr %26, align 2, !dbg !703
  %28 = getelementptr i8, ptr %22, i64 %25, !dbg !703
  store <2 x i8> %27, ptr %28, align 2, !dbg !703
  %29 = add nuw nsw i64 %24, 2, !dbg !703
  %30 = icmp samesign ult i64 %24, 126, !dbg !703
  br i1 %30, label %23, label %31, !dbg !703

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %18, 1, !dbg !703
  %exitcond.not = icmp eq i64 %32, 7, !dbg !703
  br i1 %exitcond.not, label %33, label %.preheader, !dbg !703

33:                                               ; preds = %31
  %34 = add nuw nsw i64 %13, 1, !dbg !703
  %exitcond24.not = icmp eq i64 %34, 7, !dbg !703
  br i1 %exitcond24.not, label %35, label %.preheader23, !dbg !703

35:                                               ; preds = %33
  ret i32 0, !dbg !703
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !705 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !706
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !706
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !706
  %5 = getelementptr i8, ptr %4, i64 25088, !dbg !706
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !706
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !706
  %7 = load ptr, ptr %6, align 8, !dbg !706
  %8 = getelementptr i8, ptr %7, i64 250880, !dbg !706
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !706
  %9 = load i32, ptr %2, align 16, !dbg !706
  %10 = zext i32 %9 to i64, !dbg !706
  %11 = lshr i64 %10, 4, !dbg !706
  %12 = shl nuw nsw i64 %10, 5, !dbg !706
  %13 = and i64 %12, 480, !dbg !706
  %14 = mul nuw nsw i64 %11, 32256
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 %14
  br label %.preheader, !dbg !706

.preheader:                                       ; preds = %3, %50
  %16 = phi i64 [ 0, %3 ], [ %51, %50 ]
  %17 = mul nuw nsw i64 %16, 4608
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %17
  br label %19, !dbg !706

19:                                               ; preds = %.preheader, %48
  %20 = phi i64 [ 0, %.preheader ], [ %49, %48 ]
  %21 = add nuw nsw i64 %20, %11, !dbg !706
  %22 = mul nuw nsw i64 %21, 4608
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 %22
  %24 = mul nuw nsw i64 %20, 1536
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 %24
  br label %26, !dbg !706

26:                                               ; preds = %19, %46
  %27 = phi i64 [ 0, %19 ], [ %47, %46 ]
  %28 = add nuw nsw i64 %27, %16, !dbg !706
  %29 = shl nuw nsw i64 %28, 9
  %30 = getelementptr inbounds nuw i8, ptr %23, i64 %29
  %31 = shl nuw nsw i64 %27, 9
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 %31
  br label %33, !dbg !706

33:                                               ; preds = %26, %43
  %34 = phi i64 [ 0, %26 ], [ %44, %43 ]
  %35 = or disjoint i64 %34, %13, !dbg !706
  br label %36, !dbg !706

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %42, %36 ]
  %38 = or disjoint i64 %35, %37, !dbg !706
  %39 = getelementptr inbounds nuw i8, ptr %30, i64 %38, !dbg !706
  %40 = load i8, ptr %39, align 1, !dbg !706
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 %38, !dbg !706
  store i8 %40, ptr %41, align 1, !dbg !706
  %42 = add nuw nsw i64 %37, 1, !dbg !706
  %exitcond.not = icmp eq i64 %42, 8, !dbg !706
  br i1 %exitcond.not, label %43, label %36, !dbg !706

43:                                               ; preds = %36
  %44 = add nuw nsw i64 %34, 8, !dbg !706
  %45 = icmp samesign ult i64 %34, 24, !dbg !706
  br i1 %45, label %33, label %46, !dbg !706

46:                                               ; preds = %43
  %47 = add nuw nsw i64 %27, 1, !dbg !706
  %exitcond26.not = icmp eq i64 %47, 3, !dbg !706
  br i1 %exitcond26.not, label %48, label %26, !dbg !706

48:                                               ; preds = %46
  %49 = add nuw nsw i64 %20, 1, !dbg !706
  %exitcond27.not = icmp eq i64 %49, 3, !dbg !706
  br i1 %exitcond27.not, label %50, label %19, !dbg !706

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %16, 1, !dbg !706
  %exitcond28.not = icmp eq i64 %51, 7, !dbg !706
  br i1 %exitcond28.not, label %52, label %.preheader, !dbg !706

52:                                               ; preds = %50
  ret i32 0, !dbg !706
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !707 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !708
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !708
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !708
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !708
  %6 = load ptr, ptr %5, align 8, !dbg !708
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !708
  %8 = load ptr, ptr %7, align 8, !dbg !708
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !708
  %10 = load ptr, ptr %9, align 8, !dbg !708
  %11 = load i32, ptr %2, align 16, !dbg !708
  %12 = zext i32 %11 to i64, !dbg !708
  %13 = lshr i64 %12, 5, !dbg !708
  %14 = shl nuw nsw i64 %12, 4, !dbg !708
  %15 = and i64 %14, 496, !dbg !708
  %16 = mul nuw nsw i64 %13, 4608, !dbg !708
  %17 = ptrtoint ptr %4 to i64, !dbg !708
  %18 = add i64 %17, 250880, !dbg !708
  %19 = add i64 %18, %16, !dbg !708
  %20 = ptrtoint ptr %6 to i64, !dbg !708
  %21 = add i64 %20, 6627200, !dbg !708
  %22 = add i64 %21, %15, !dbg !708
  %23 = shl nuw nsw i64 %13, 9, !dbg !708
  %24 = or disjoint i64 %23, %15, !dbg !708
  %25 = ptrtoint ptr %10 to i64, !dbg !708
  %26 = add i64 %24, %25, !dbg !708
  %27 = ptrtoint ptr %8 to i64, !dbg !708
  %28 = shl nuw nsw i64 %24, 2, !dbg !708
  %29 = add i64 %27, 31838208, !dbg !708
  %30 = add i64 %29, %28, !dbg !708
  %31 = and i64 %19, 9223372036854775807, !dbg !708
  %32 = and i64 %22, 9223372036854775807, !dbg !708
  %33 = and i64 %26, 9223372036854775807, !dbg !708
  %34 = and i64 %30, 9223372036854775807, !dbg !708
  tail call void asm sideeffect "fence", ""() #14, !dbg !708
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !708
  tail call void @llvm.riscv.config(i64 6, i64 4322067556090249728), !dbg !708
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !708
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !708
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %31, i64 %32), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %34, i64 0), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !708
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !708
  %35 = add nuw i64 %31, 2048, !dbg !708
  %36 = add nuw i64 %32, 1048576, !dbg !708
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %35, i64 %36), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !708
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !708
  %37 = add nuw i64 %31, 4096, !dbg !708
  %38 = add nuw i64 %32, 2097152, !dbg !708
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %37, i64 %38), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %33), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !708
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !708
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !708
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !708
  tail call void asm sideeffect "fence", ""() #14, !dbg !708
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !708
  ret i32 0, !dbg !708
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !709 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !710
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !710
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !710
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !710
  %6 = load ptr, ptr %5, align 8, !dbg !710
  %7 = getelementptr i8, ptr %4, i64 150528, !dbg !711
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !711
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !710
  %9 = load ptr, ptr %8, align 8, !dbg !710
  %10 = getelementptr i8, ptr %9, i64 25088, !dbg !710
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !710
  %11 = load i32, ptr %2, align 16, !dbg !710
  %12 = zext i32 %11 to i64, !dbg !710
  %13 = lshr i64 %12, 7, !dbg !710
  %14 = shl nuw nsw i64 %12, 4, !dbg !710
  %15 = and i64 %14, 2032, !dbg !710
  %16 = alloca [16 x i8], align 1, !dbg !710
  %17 = shl nuw nsw i64 %13, 9, !dbg !710
  %18 = ptrtoint ptr %4 to i64, !dbg !710
  %19 = add i64 %17, %18, !dbg !710
  %20 = ptrtoint ptr %6 to i64, !dbg !710
  %21 = add i64 %20, 8982528, !dbg !710
  %22 = add i64 %21, %15, !dbg !710
  %23 = ptrtoint ptr %16 to i64, !dbg !710
  %24 = shl nuw nsw i64 %13, 11, !dbg !710
  %25 = or disjoint i64 %24, %15, !dbg !710
  %26 = shl nuw nsw i64 %25, 2, !dbg !710
  %27 = add i64 %20, 31938560, !dbg !710
  %28 = add i64 %27, %26, !dbg !710
  %29 = and i64 %19, 9223372036854775807, !dbg !710
  %30 = and i64 %22, 9223372036854775807, !dbg !710
  %31 = and i64 %23, 9223372036854775807, !dbg !710
  %32 = and i64 %28, 9223372036854775807, !dbg !710
  call void asm sideeffect "fence", ""() #14, !dbg !710
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !710
  call void @llvm.riscv.config(i64 2, i64 4322185736410365968), !dbg !710
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !710
  call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !710
  call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !710
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !710
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %29, i64 %30), !dbg !710
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %32, i64 %31), !dbg !710
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 2048), !dbg !710
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 16), !dbg !710
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !710
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !710
  call void asm sideeffect "fence", ""() #14, !dbg !710
  br label %33, !dbg !712

33:                                               ; preds = %3, %33
  %34 = phi i64 [ 0, %3 ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 %34, !dbg !712
  %36 = load i8, ptr %35, align 1, !dbg !712
  %37 = or disjoint i64 %25, %34, !dbg !712
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !712
  %39 = load i8, ptr %38, align 1, !dbg !712
  %40 = sitofp i8 %39 to float, !dbg !713
  %41 = fmul nnan contract float %40, 0x3FE413DDC0000000, !dbg !713
  %42 = sitofp i8 %36 to float, !dbg !714
  %43 = fmul nnan contract float %42, 0x3FD52E4880000000, !dbg !714
  %44 = fadd contract float %43, %41, !dbg !715
  %45 = fdiv float %44, 0x3FE0F08C80000000, !dbg !716
  %46 = bitcast float %45 to i32, !dbg !716
  %47 = call float @llvm.round.f32(float %45), !dbg !716
  %48 = bitcast float %47 to i32, !dbg !716
  %49 = lshr i32 %46, 23, !dbg !716
  %50 = and i32 %49, 255, !dbg !716
  %51 = add nsw i32 %50, -127, !dbg !716
  %52 = lshr i32 %48, 23, !dbg !716
  %53 = and i32 %52, 255, !dbg !716
  %54 = icmp eq i32 %53, 127, !dbg !716
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !716
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !716
  %57 = lshr i32 8388607, %56, !dbg !716
  %58 = and i32 %57, %48, !dbg !716
  %59 = icmp ne i32 %58, 0, !dbg !716
  %60 = or i1 %54, %59, !dbg !716
  %61 = icmp eq i32 %51, -1, !dbg !716
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !716
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !716
  %64 = lshr i32 4194304, %63, !dbg !716
  %65 = select i1 %61, i32 0, i32 %64, !dbg !716
  %66 = lshr i32 8388607, %63, !dbg !716
  %67 = and i32 %66, %46, !dbg !716
  %68 = icmp eq i32 %67, %65, !dbg !716
  %69 = add nsw i32 %50, -126, !dbg !716
  %70 = icmp ult i32 %69, 24, !dbg !716
  %71 = and i1 %70, %68, !dbg !716
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !716
  %73 = and i1 %60, %71, !dbg !716
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !716
  %75 = fsub contract float %47, %74, !dbg !716
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !716
  %77 = fadd contract float %76, 0.000000e+00, !dbg !716
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !716
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !716
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !716
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !716
  %80 = fptosi float %79 to i8, !dbg !716
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !717
  %82 = uitofp nneg i8 %81 to float, !dbg !717
  %83 = bitcast float %82 to i32, !dbg !712
  %84 = lshr i32 %83, 23, !dbg !712
  %85 = add nsw i32 %84, -127, !dbg !712
  %86 = icmp eq i32 %85, 0, !dbg !712
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !712
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !712
  %89 = lshr i32 8388607, %88, !dbg !712
  %90 = and i32 %89, %83, !dbg !712
  %91 = icmp ne i32 %90, 0, !dbg !712
  %92 = or i1 %86, %91, !dbg !712
  %93 = icmp eq i32 %85, -1, !dbg !712
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !712
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !712
  %96 = lshr i32 4194304, %95, !dbg !712
  %97 = select i1 %93, i32 0, i32 %96, !dbg !712
  %98 = lshr i32 8388607, %95, !dbg !712
  %99 = and i32 %98, %83, !dbg !712
  %100 = icmp eq i32 %99, %97, !dbg !712
  %101 = add nsw i32 %83, -1056964608, !dbg !712
  %102 = icmp ult i32 %101, 201326592, !dbg !712
  %103 = and i1 %102, %100, !dbg !712
  %104 = add nsw i8 %81, -1, !dbg !712
  %105 = sitofp i8 %104 to float, !dbg !712
  %106 = and i1 %92, %103, !dbg !712
  %107 = call float @llvm.fabs.f32(float %105), !dbg !712
  %108 = select i1 %106, float %107, float %82, !dbg !712
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !712
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !712
  %110 = fptosi float %109 to i8, !dbg !712
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !712
  store i8 %110, ptr %111, align 1, !dbg !712
  %112 = add nuw nsw i64 %34, 1, !dbg !712
  %exitcond.not = icmp eq i64 %112, 16, !dbg !712
  br i1 %exitcond.not, label %113, label %33, !dbg !712

113:                                              ; preds = %33
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !710
  ret i32 0, !dbg !710
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !718 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !719
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !719
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !719
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !719
  %6 = load ptr, ptr %5, align 8, !dbg !719
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !719
  %8 = load ptr, ptr %7, align 8, !dbg !719
  %9 = load i32, ptr %2, align 16, !dbg !719
  %10 = zext i32 %9 to i64, !dbg !719
  %11 = lshr i64 %10, 5, !dbg !719
  %12 = shl nuw nsw i64 %10, 4, !dbg !719
  %13 = and i64 %12, 496, !dbg !719
  %14 = shl nuw nsw i64 %11, 11, !dbg !719
  %15 = ptrtoint ptr %4 to i64, !dbg !719
  %16 = add i64 %15, 25088, !dbg !719
  %17 = add i64 %16, %14, !dbg !719
  %18 = ptrtoint ptr %6 to i64, !dbg !719
  %19 = add i64 %18, 10031104, !dbg !719
  %20 = add i64 %19, %13, !dbg !719
  %21 = shl nuw nsw i64 %11, 9, !dbg !719
  %22 = or disjoint i64 %21, %13, !dbg !719
  %23 = ptrtoint ptr %8 to i64, !dbg !719
  %24 = add i64 %22, %23, !dbg !719
  %25 = shl nuw nsw i64 %22, 2, !dbg !719
  %26 = add i64 %18, 32339968, !dbg !719
  %27 = add i64 %26, %25, !dbg !719
  %28 = and i64 %17, 9223372036854775807, !dbg !719
  %29 = and i64 %20, 9223372036854775807, !dbg !719
  %30 = and i64 %24, 9223372036854775807, !dbg !719
  %31 = and i64 %27, 9223372036854775807, !dbg !719
  tail call void asm sideeffect "fence", ""() #14, !dbg !719
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !719
  tail call void @llvm.riscv.config(i64 6, i64 4336665608763474432), !dbg !719
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !719
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !719
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !719
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !719
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %28, i64 %29), !dbg !719
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %31, i64 %30), !dbg !719
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 512), !dbg !719
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !719
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !719
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !719
  tail call void asm sideeffect "fence", ""() #14, !dbg !719
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !719
  ret i32 0, !dbg !719
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !720 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !721
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !721
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !721
  %5 = getelementptr i8, ptr %4, i64 125440, !dbg !721
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !721
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !721
  %7 = load ptr, ptr %6, align 8, !dbg !721
  %8 = getelementptr i8, ptr %7, i64 166912, !dbg !721
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !721
  %9 = load i32, ptr %2, align 16, !dbg !721
  %10 = zext i32 %9 to i64, !dbg !721
  %11 = lshr i64 %10, 4, !dbg !721
  %12 = shl nuw nsw i64 %10, 5, !dbg !721
  %13 = and i64 %12, 480, !dbg !721
  %14 = mul nuw nsw i64 %11, 32256
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 %14
  br label %.preheader, !dbg !721

.preheader:                                       ; preds = %3, %50
  %16 = phi i64 [ 0, %3 ], [ %51, %50 ]
  %17 = mul nuw nsw i64 %16, 4608
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %17
  br label %19, !dbg !721

19:                                               ; preds = %.preheader, %48
  %20 = phi i64 [ 0, %.preheader ], [ %49, %48 ]
  %21 = add nuw nsw i64 %20, %11, !dbg !721
  %22 = mul nuw nsw i64 %21, 4608
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 %22
  %24 = mul nuw nsw i64 %20, 1536
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 %24
  br label %26, !dbg !721

26:                                               ; preds = %19, %46
  %27 = phi i64 [ 0, %19 ], [ %47, %46 ]
  %28 = add nuw nsw i64 %27, %16, !dbg !721
  %29 = shl nuw nsw i64 %28, 9
  %30 = getelementptr inbounds nuw i8, ptr %23, i64 %29
  %31 = shl nuw nsw i64 %27, 9
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 %31
  br label %33, !dbg !721

33:                                               ; preds = %26, %43
  %34 = phi i64 [ 0, %26 ], [ %44, %43 ]
  %35 = or disjoint i64 %34, %13, !dbg !721
  br label %36, !dbg !721

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %42, %36 ]
  %38 = or disjoint i64 %35, %37, !dbg !721
  %39 = getelementptr inbounds nuw i8, ptr %30, i64 %38, !dbg !721
  %40 = load i8, ptr %39, align 1, !dbg !721
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 %38, !dbg !721
  store i8 %40, ptr %41, align 1, !dbg !721
  %42 = add nuw nsw i64 %37, 1, !dbg !721
  %exitcond.not = icmp eq i64 %42, 8, !dbg !721
  br i1 %exitcond.not, label %43, label %36, !dbg !721

43:                                               ; preds = %36
  %44 = add nuw nsw i64 %34, 8, !dbg !721
  %45 = icmp samesign ult i64 %34, 24, !dbg !721
  br i1 %45, label %33, label %46, !dbg !721

46:                                               ; preds = %43
  %47 = add nuw nsw i64 %27, 1, !dbg !721
  %exitcond26.not = icmp eq i64 %47, 3, !dbg !721
  br i1 %exitcond26.not, label %48, label %26, !dbg !721

48:                                               ; preds = %46
  %49 = add nuw nsw i64 %20, 1, !dbg !721
  %exitcond27.not = icmp eq i64 %49, 3, !dbg !721
  br i1 %exitcond27.not, label %50, label %19, !dbg !721

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %16, 1, !dbg !721
  %exitcond28.not = icmp eq i64 %51, 7, !dbg !721
  br i1 %exitcond28.not, label %52, label %.preheader, !dbg !721

52:                                               ; preds = %50
  ret i32 0, !dbg !721
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !722 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !723
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !723
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !723
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !723
  %6 = load ptr, ptr %5, align 8, !dbg !723
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !723
  %8 = load ptr, ptr %7, align 8, !dbg !723
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !723
  %10 = load ptr, ptr %9, align 8, !dbg !723
  %11 = load i32, ptr %2, align 16, !dbg !723
  %12 = zext i32 %11 to i64, !dbg !723
  %13 = lshr i64 %12, 5, !dbg !723
  %14 = shl nuw nsw i64 %12, 4, !dbg !723
  %15 = and i64 %14, 496, !dbg !723
  %16 = mul nuw nsw i64 %13, 4608, !dbg !723
  %17 = ptrtoint ptr %4 to i64, !dbg !723
  %18 = add i64 %17, 166912, !dbg !723
  %19 = add i64 %18, %16, !dbg !723
  %20 = ptrtoint ptr %6 to i64, !dbg !723
  %21 = add i64 %20, 8986496, !dbg !723
  %22 = add i64 %21, %15, !dbg !723
  %23 = shl nuw nsw i64 %13, 9, !dbg !723
  %24 = or disjoint i64 %23, %15, !dbg !723
  %25 = ptrtoint ptr %10 to i64, !dbg !723
  %26 = add i64 %24, %25, !dbg !723
  %27 = ptrtoint ptr %8 to i64, !dbg !723
  %28 = shl nuw nsw i64 %24, 2, !dbg !723
  %29 = add i64 %27, 32440320, !dbg !723
  %30 = add i64 %29, %28, !dbg !723
  %31 = and i64 %19, 9223372036854775807, !dbg !723
  %32 = and i64 %22, 9223372036854775807, !dbg !723
  %33 = and i64 %26, 9223372036854775807, !dbg !723
  %34 = and i64 %30, 9223372036854775807, !dbg !723
  tail call void asm sideeffect "fence", ""() #14, !dbg !723
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !723
  tail call void @llvm.riscv.config(i64 6, i64 4372741096371913216), !dbg !723
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !723
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 512), !dbg !723
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 2048), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %31, i64 %32), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %34, i64 0), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !723
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !723
  %35 = add nuw i64 %31, 2048, !dbg !723
  %36 = add nuw i64 %32, 1048576, !dbg !723
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %35, i64 %36), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !723
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !723
  %37 = add nuw i64 %31, 4096, !dbg !723
  %38 = add nuw i64 %32, 2097152, !dbg !723
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %37, i64 %38), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %33), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 512), !dbg !723
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 512, i64 512), !dbg !723
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !723
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !723
  tail call void asm sideeffect "fence", ""() #14, !dbg !723
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !723
  ret i32 0, !dbg !723
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !724 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !725
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !725
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !725
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !725
  %6 = load ptr, ptr %5, align 8, !dbg !725
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !725
  %8 = load ptr, ptr %7, align 8, !dbg !725
  %9 = load i32, ptr %2, align 16, !dbg !725
  %10 = zext i32 %9 to i64, !dbg !725
  %11 = lshr i64 %10, 7, !dbg !725
  %12 = shl nuw nsw i64 %10, 4, !dbg !725
  %13 = and i64 %12, 2032, !dbg !725
  %14 = shl nuw nsw i64 %11, 9, !dbg !725
  %15 = ptrtoint ptr %4 to i64, !dbg !725
  %16 = add i64 %14, %15, !dbg !725
  %17 = ptrtoint ptr %6 to i64, !dbg !725
  %18 = add i64 %17, 11079680, !dbg !725
  %19 = add i64 %18, %13, !dbg !725
  %20 = shl nuw nsw i64 %11, 11, !dbg !725
  %21 = or disjoint i64 %20, %13, !dbg !725
  %22 = ptrtoint ptr %8 to i64, !dbg !725
  %23 = add i64 %22, 125440, !dbg !725
  %24 = add i64 %23, %21, !dbg !725
  %25 = shl nuw nsw i64 %21, 2, !dbg !725
  %26 = add i64 %17, 32540672, !dbg !725
  %27 = add i64 %26, %25, !dbg !725
  %28 = and i64 %16, 9223372036854775807, !dbg !725
  %29 = and i64 %19, 9223372036854775807, !dbg !725
  %30 = and i64 %24, 9223372036854775807, !dbg !725
  %31 = and i64 %27, 9223372036854775807, !dbg !725
  tail call void asm sideeffect "fence", ""() #14, !dbg !725
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !725
  tail call void @llvm.riscv.config(i64 2, i64 4334783386590644224), !dbg !725
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !725
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 2048), !dbg !725
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 8192), !dbg !725
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !725
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %28, i64 %29), !dbg !725
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %31, i64 %30), !dbg !725
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 2048), !dbg !725
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 2048, i64 2048), !dbg !725
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !725
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !725
  tail call void asm sideeffect "fence", ""() #14, !dbg !725
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !725
  ret i32 0, !dbg !725
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !726 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !727
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !727
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !727
  %5 = getelementptr i8, ptr %4, i64 125440, !dbg !727
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !727
  %6 = getelementptr i8, ptr %4, i64 25088, !dbg !728
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !728
  %7 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !729
  %8 = load ptr, ptr %7, align 8, !dbg !729
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !729
  %9 = load i32, ptr %2, align 16, !dbg !729
  %10 = zext i32 %9 to i64, !dbg !729
  %11 = shl nuw nsw i64 %10, 5, !dbg !729
  br label %12, !dbg !729

12:                                               ; preds = %3, %136
  %13 = phi i64 [ 0, %3 ], [ %207, %136 ]
  %14 = add nuw nsw i64 %13, %11, !dbg !729
  br label %15, !dbg !729

15:                                               ; preds = %12, %15
  %16 = phi <8 x float> [ zeroinitializer, %12 ], [ %134, %15 ]
  %17 = phi i64 [ 0, %12 ], [ %135, %15 ]
  %18 = shl nuw nsw i64 %17, 11, !dbg !729
  %19 = add nuw nsw i64 %18, %14, !dbg !729
  %20 = getelementptr i8, ptr %5, i64 %19, !dbg !729
  %21 = load <8 x i8>, ptr %20, align 8, !dbg !729
  %22 = getelementptr i8, ptr %6, i64 %19, !dbg !729
  %23 = load <8 x i8>, ptr %22, align 8, !dbg !729
  %24 = sitofp <8 x i8> %23 to <8 x float>, !dbg !730
  %25 = fmul nnan contract <8 x float> %24, splat (float 0x3FE0F08C80000000), !dbg !730
  %26 = sitofp <8 x i8> %21 to <8 x float>, !dbg !731
  %27 = fmul nnan contract <8 x float> %26, splat (float 0x3FD88E1BA0000000), !dbg !731
  %28 = fadd contract <8 x float> %27, %25, !dbg !732
  %29 = fdiv <8 x float> %28, splat (float 0x3FC33B6480000000), !dbg !733
  %30 = bitcast <8 x float> %29 to <8 x i32>, !dbg !733
  %31 = tail call <8 x float> @llvm.round.v8f32(<8 x float> %29), !dbg !733
  %32 = bitcast <8 x float> %31 to <8 x i32>, !dbg !733
  %33 = lshr <8 x i32> %30, splat (i32 23), !dbg !733
  %34 = and <8 x i32> %33, splat (i32 255), !dbg !733
  %35 = add nsw <8 x i32> %34, splat (i32 -127), !dbg !733
  %36 = lshr <8 x i32> %32, splat (i32 23), !dbg !733
  %37 = and <8 x i32> %36, splat (i32 255), !dbg !733
  %38 = icmp eq <8 x i32> %37, splat (i32 127), !dbg !733
  %39 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %37, <8 x i32> splat (i32 128)), !dbg !733
  %40 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %39, <8 x i32> splat (i32 31)), !dbg !733
  %41 = lshr <8 x i32> splat (i32 8388607), %40, !dbg !733
  %42 = and <8 x i32> %41, %32, !dbg !733
  %43 = icmp ne <8 x i32> %42, zeroinitializer, !dbg !733
  %44 = or <8 x i1> %38, %43, !dbg !733
  %45 = icmp eq <8 x i32> %35, splat (i32 -1), !dbg !733
  %46 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %35, <8 x i32> zeroinitializer), !dbg !733
  %47 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %46, <8 x i32> splat (i32 31)), !dbg !733
  %48 = lshr <8 x i32> splat (i32 4194304), %47, !dbg !733
  %49 = select <8 x i1> %45, <8 x i32> zeroinitializer, <8 x i32> %48, !dbg !733
  %50 = lshr <8 x i32> splat (i32 8388607), %47, !dbg !733
  %51 = and <8 x i32> %50, %30, !dbg !733
  %52 = icmp eq <8 x i32> %51, %49, !dbg !733
  %53 = add nsw <8 x i32> %34, splat (i32 -126), !dbg !733
  %54 = icmp ult <8 x i32> %53, splat (i32 24), !dbg !733
  %55 = and <8 x i1> %54, %52, !dbg !733
  %56 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %29), !dbg !733
  %57 = and <8 x i1> %44, %55, !dbg !733
  %58 = select <8 x i1> %57, <8 x float> %56, <8 x float> zeroinitializer, !dbg !733
  %59 = fsub contract <8 x float> %31, %58, !dbg !733
  %60 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> %59, <8 x float> %29), !dbg !733
  %61 = fadd contract <8 x float> %60, zeroinitializer, !dbg !733
  %.inv27 = fcmp ole <8 x float> %61, splat (float -1.280000e+02), !dbg !733
  %62 = select <8 x i1> %.inv27, <8 x float> splat (float -1.280000e+02), <8 x float> %61, !dbg !733
  %.inv28 = fcmp oge <8 x float> %62, splat (float 1.270000e+02), !dbg !733
  %63 = select <8 x i1> %.inv28, <8 x float> splat (float 1.270000e+02), <8 x float> %62, !dbg !733
  %64 = fptosi <8 x float> %63 to <8 x i8>, !dbg !733
  %65 = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %64, <8 x i8> zeroinitializer), !dbg !734
  %66 = uitofp nneg <8 x i8> %65 to <8 x float>, !dbg !734
  %67 = bitcast <8 x float> %66 to <8 x i32>, !dbg !735
  %68 = lshr <8 x i32> %67, splat (i32 23), !dbg !735
  %69 = add nsw <8 x i32> %68, splat (i32 -127), !dbg !735
  %70 = icmp eq <8 x i32> %69, zeroinitializer, !dbg !735
  %71 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %68, <8 x i32> splat (i32 128)), !dbg !735
  %72 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %71, <8 x i32> splat (i32 31)), !dbg !735
  %73 = lshr <8 x i32> splat (i32 8388607), %72, !dbg !735
  %74 = and <8 x i32> %73, %67, !dbg !735
  %75 = icmp ne <8 x i32> %74, zeroinitializer, !dbg !735
  %76 = or <8 x i1> %70, %75, !dbg !735
  %77 = icmp eq <8 x i32> %69, splat (i32 -1), !dbg !735
  %78 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %69, <8 x i32> zeroinitializer), !dbg !735
  %79 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %78, <8 x i32> splat (i32 31)), !dbg !735
  %80 = lshr <8 x i32> splat (i32 4194304), %79, !dbg !735
  %81 = select <8 x i1> %77, <8 x i32> zeroinitializer, <8 x i32> %80, !dbg !735
  %82 = lshr <8 x i32> splat (i32 8388607), %79, !dbg !735
  %83 = and <8 x i32> %82, %67, !dbg !735
  %84 = icmp eq <8 x i32> %83, %81, !dbg !735
  %85 = add nsw <8 x i32> %67, splat (i32 -1056964608), !dbg !735
  %86 = icmp ult <8 x i32> %85, splat (i32 201326592), !dbg !735
  %87 = and <8 x i1> %86, %84, !dbg !735
  %88 = fadd contract <8 x float> %66, splat (float -1.000000e+00), !dbg !735
  %89 = and <8 x i1> %76, %87, !dbg !735
  %90 = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %88), !dbg !735
  %91 = select <8 x i1> %89, <8 x float> %90, <8 x float> %66, !dbg !735
  %.inv29 = fcmp oge <8 x float> %91, splat (float 1.270000e+02), !dbg !735
  %92 = select <8 x i1> %.inv29, <8 x float> splat (float 1.270000e+02), <8 x float> %91, !dbg !735
  %93 = fptosi <8 x float> %92 to <8 x i8>, !dbg !735
  %94 = sitofp <8 x i8> %93 to <8 x float>, !dbg !736
  %95 = extractelement <8 x float> %94, i64 0
  %96 = extractelement <8 x float> %16, i64 0
  %97 = fmul nnan contract float %95, 0x3FC33B6480000000
  %98 = fadd contract float %96, %97
  %99 = extractelement <8 x float> %94, i64 1
  %100 = extractelement <8 x float> %16, i64 1
  %101 = fmul nnan contract float %99, 0x3FC33B6480000000
  %102 = fadd contract float %100, %101
  %103 = extractelement <8 x float> %94, i64 2
  %104 = extractelement <8 x float> %16, i64 2
  %105 = fmul nnan contract float %103, 0x3FC33B6480000000
  %106 = fadd contract float %104, %105
  %107 = extractelement <8 x float> %94, i64 3
  %108 = extractelement <8 x float> %16, i64 3
  %109 = fmul nnan contract float %107, 0x3FC33B6480000000
  %110 = fadd contract float %108, %109
  %111 = extractelement <8 x float> %94, i64 4
  %112 = extractelement <8 x float> %16, i64 4
  %113 = fmul nnan contract float %111, 0x3FC33B6480000000
  %114 = fadd contract float %112, %113
  %115 = extractelement <8 x float> %94, i64 5
  %116 = extractelement <8 x float> %16, i64 5
  %117 = fmul nnan contract float %115, 0x3FC33B6480000000
  %118 = fadd contract float %116, %117
  %119 = extractelement <8 x float> %94, i64 6
  %120 = extractelement <8 x float> %16, i64 6
  %121 = fmul nnan contract float %119, 0x3FC33B6480000000
  %122 = fadd contract float %120, %121
  %123 = extractelement <8 x float> %94, i64 7
  %124 = extractelement <8 x float> %16, i64 7
  %125 = fmul nnan contract float %123, 0x3FC33B6480000000
  %126 = fadd contract float %124, %125
  %127 = insertelement <8 x float> poison, float %98, i64 0
  %128 = insertelement <8 x float> %127, float %102, i64 1
  %129 = insertelement <8 x float> %128, float %106, i64 2
  %130 = insertelement <8 x float> %129, float %110, i64 3
  %131 = insertelement <8 x float> %130, float %114, i64 4
  %132 = insertelement <8 x float> %131, float %118, i64 5
  %133 = insertelement <8 x float> %132, float %122, i64 6
  %134 = insertelement <8 x float> %133, float %126, i64 7
  %135 = add nuw nsw i64 %17, 1, !dbg !729
  %exitcond.not = icmp eq i64 %135, 49, !dbg !729
  br i1 %exitcond.not, label %136, label %15, !dbg !729

136:                                              ; preds = %15
  %137 = fdiv <8 x float> %134, splat (float 4.900000e+01), !dbg !729
  %138 = fdiv <8 x float> %137, splat (float 0x3FB1D22E00000000), !dbg !737
  %139 = bitcast <8 x float> %138 to <8 x i32>, !dbg !737
  %140 = tail call <8 x float> @llvm.round.v8f32(<8 x float> %138), !dbg !737
  %141 = bitcast <8 x float> %140 to <8 x i32>, !dbg !737
  %142 = lshr <8 x i32> %139, splat (i32 23), !dbg !737
  %143 = and <8 x i32> %142, splat (i32 255), !dbg !737
  %144 = add nsw <8 x i32> %143, splat (i32 -127), !dbg !737
  %145 = lshr <8 x i32> %141, splat (i32 23), !dbg !737
  %146 = and <8 x i32> %145, splat (i32 255), !dbg !737
  %147 = icmp eq <8 x i32> %146, splat (i32 127), !dbg !737
  %148 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %146, <8 x i32> splat (i32 128)), !dbg !737
  %149 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %148, <8 x i32> splat (i32 31)), !dbg !737
  %150 = lshr <8 x i32> splat (i32 8388607), %149, !dbg !737
  %151 = and <8 x i32> %150, %141, !dbg !737
  %152 = icmp ne <8 x i32> %151, zeroinitializer, !dbg !737
  %153 = or <8 x i1> %147, %152, !dbg !737
  %154 = icmp eq <8 x i32> %144, splat (i32 -1), !dbg !737
  %155 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %144, <8 x i32> zeroinitializer), !dbg !737
  %156 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %155, <8 x i32> splat (i32 31)), !dbg !737
  %157 = lshr <8 x i32> splat (i32 4194304), %156, !dbg !737
  %158 = select <8 x i1> %154, <8 x i32> zeroinitializer, <8 x i32> %157, !dbg !737
  %159 = lshr <8 x i32> splat (i32 8388607), %156, !dbg !737
  %160 = and <8 x i32> %159, %139, !dbg !737
  %161 = icmp eq <8 x i32> %160, %158, !dbg !737
  %162 = add nsw <8 x i32> %143, splat (i32 -126), !dbg !737
  %163 = icmp ult <8 x i32> %162, splat (i32 24), !dbg !737
  %164 = and <8 x i1> %163, %161, !dbg !737
  %165 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %138), !dbg !737
  %166 = fsub contract <8 x float> %140, %165, !dbg !737
  %167 = and <8 x i1> %153, %164, !dbg !737
  %168 = select <8 x i1> %167, <8 x float> %166, <8 x float> %140, !dbg !737
  %169 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> %168, <8 x float> %138), !dbg !737
  %170 = fadd contract <8 x float> %169, zeroinitializer, !dbg !737
  %.inv = fcmp ole <8 x float> %170, splat (float -1.280000e+02), !dbg !737
  %171 = select <8 x i1> %.inv, <8 x float> splat (float -1.280000e+02), <8 x float> %170, !dbg !737
  %.inv24 = fcmp oge <8 x float> %171, splat (float 1.270000e+02), !dbg !737
  %172 = select <8 x i1> %.inv24, <8 x float> splat (float 1.270000e+02), <8 x float> %171, !dbg !737
  %173 = fptosi <8 x float> %172 to <8 x i8>, !dbg !737
  %174 = sitofp <8 x i8> %173 to <8 x float>, !dbg !738
  %175 = bitcast <8 x float> %174 to <8 x i32>, !dbg !739
  %176 = lshr <8 x i32> %175, splat (i32 23), !dbg !739
  %177 = and <8 x i32> %176, splat (i32 255), !dbg !739
  %178 = add nsw <8 x i32> %177, splat (i32 -127), !dbg !739
  %179 = icmp eq <8 x i32> %178, zeroinitializer, !dbg !739
  %180 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %177, <8 x i32> splat (i32 128)), !dbg !739
  %181 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %180, <8 x i32> splat (i32 31)), !dbg !739
  %182 = lshr <8 x i32> splat (i32 8388607), %181, !dbg !739
  %183 = and <8 x i32> %182, %175, !dbg !739
  %184 = icmp ne <8 x i32> %183, zeroinitializer, !dbg !739
  %185 = or <8 x i1> %179, %184, !dbg !739
  %186 = icmp eq <8 x i32> %178, splat (i32 -1), !dbg !739
  %187 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %178, <8 x i32> zeroinitializer), !dbg !739
  %188 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %187, <8 x i32> splat (i32 31)), !dbg !739
  %189 = lshr <8 x i32> splat (i32 4194304), %188, !dbg !739
  %190 = select <8 x i1> %186, <8 x i32> zeroinitializer, <8 x i32> %189, !dbg !739
  %191 = lshr <8 x i32> splat (i32 8388607), %188, !dbg !739
  %192 = and <8 x i32> %191, %175, !dbg !739
  %193 = icmp eq <8 x i32> %192, %190, !dbg !739
  %194 = add nsw <8 x i32> %177, splat (i32 -126), !dbg !739
  %195 = icmp ult <8 x i32> %194, splat (i32 24), !dbg !739
  %196 = and <8 x i1> %195, %193, !dbg !739
  %197 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %174), !dbg !739
  %198 = and <8 x i1> %185, %196, !dbg !739
  %199 = select <8 x i1> %198, <8 x float> %197, <8 x float> zeroinitializer, !dbg !739
  %200 = fsub contract <8 x float> %174, %199, !dbg !739
  %201 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> %200, <8 x float> %174), !dbg !739
  %202 = fadd contract <8 x float> %201, zeroinitializer, !dbg !739
  %.inv25 = fcmp ole <8 x float> %202, splat (float -1.280000e+02), !dbg !739
  %203 = select <8 x i1> %.inv25, <8 x float> splat (float -1.280000e+02), <8 x float> %202, !dbg !739
  %.inv26 = fcmp oge <8 x float> %203, splat (float 1.270000e+02), !dbg !739
  %204 = select <8 x i1> %.inv26, <8 x float> splat (float 1.270000e+02), <8 x float> %203, !dbg !739
  %205 = fptosi <8 x float> %204 to <8 x i8>, !dbg !739
  %206 = getelementptr i8, ptr %8, i64 %14, !dbg !729
  store <8 x i8> %205, ptr %206, align 8, !dbg !729
  %207 = add nuw nsw i64 %13, 8, !dbg !729
  %208 = icmp samesign ult i64 %13, 24, !dbg !729
  br i1 %208, label %12, label %209, !dbg !729

209:                                              ; preds = %136
  ret i32 0, !dbg !729
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !740 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !741
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !741
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !741
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !741
  %6 = load ptr, ptr %5, align 8, !dbg !741
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !742
  %8 = load ptr, ptr %7, align 8, !dbg !742
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !742
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !741
  %10 = load ptr, ptr %9, align 8, !dbg !741
  %11 = load i32, ptr %2, align 16, !dbg !741
  %12 = zext i32 %11 to i64, !dbg !741
  %13 = shl nuw nsw i64 %12, 3, !dbg !741
  %14 = alloca [8 x i32], align 4, !dbg !741
  %15 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %13
  br label %16, !dbg !741

16:                                               ; preds = %3, %16
  %17 = phi i64 [ 0, %3 ], [ %54, %16 ]
  %18 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %17, !dbg !741
  %19 = load float, ptr %18, align 4, !dbg !741
  %20 = fdiv float %19, 0x3F46F92680000000, !dbg !741
  %21 = bitcast float %20 to i32, !dbg !741
  %22 = tail call float @llvm.round.f32(float %20), !dbg !741
  %23 = bitcast float %22 to i32, !dbg !741
  %24 = lshr i32 %21, 23, !dbg !741
  %25 = and i32 %24, 255, !dbg !741
  %26 = add nsw i32 %25, -127, !dbg !741
  %27 = lshr i32 %23, 23, !dbg !741
  %28 = and i32 %27, 255, !dbg !741
  %29 = icmp eq i32 %28, 127, !dbg !741
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %28, i32 128), !dbg !741
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 31), !dbg !741
  %32 = lshr i32 8388607, %31, !dbg !741
  %33 = and i32 %32, %23, !dbg !741
  %34 = icmp ne i32 %33, 0, !dbg !741
  %35 = or i1 %29, %34, !dbg !741
  %36 = icmp eq i32 %26, -1, !dbg !741
  %37 = tail call i32 @llvm.smax.i32(i32 %26, i32 0), !dbg !741
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 31), !dbg !741
  %39 = lshr i32 4194304, %38, !dbg !741
  %40 = select i1 %36, i32 0, i32 %39, !dbg !741
  %41 = lshr i32 8388607, %38, !dbg !741
  %42 = and i32 %41, %21, !dbg !741
  %43 = icmp eq i32 %42, %40, !dbg !741
  %44 = add nsw i32 %25, -126, !dbg !741
  %45 = icmp ult i32 %44, 24, !dbg !741
  %46 = and i1 %45, %43, !dbg !741
  %47 = tail call float @llvm.copysign.f32(float 1.000000e+00, float %20), !dbg !741
  %48 = fsub contract float %22, %47, !dbg !741
  %49 = and i1 %35, %46, !dbg !741
  %50 = select i1 %49, float %48, float %22, !dbg !741
  %51 = tail call float @llvm.copysign.f32(float %50, float %20), !dbg !741
  %52 = fptosi float %51 to i32, !dbg !741
  %53 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %17, !dbg !741
  store i32 %52, ptr %53, align 4, !dbg !741
  %54 = add nuw nsw i64 %17, 1, !dbg !741
  %exitcond.not = icmp eq i64 %54, 8, !dbg !741
  br i1 %exitcond.not, label %55, label %16, !dbg !741

55:                                               ; preds = %16
  %56 = ptrtoint ptr %4 to i64, !dbg !741
  %57 = ptrtoint ptr %6 to i64, !dbg !741
  %58 = add i64 %57, 12128256, !dbg !741
  %59 = add i64 %58, %13, !dbg !741
  %60 = ptrtoint ptr %10 to i64, !dbg !741
  %61 = add i64 %60, 2048, !dbg !741
  %62 = add i64 %61, %13, !dbg !741
  %63 = ptrtoint ptr %14 to i64, !dbg !741
  %64 = and i64 %56, 9223372036854775807, !dbg !741
  %65 = and i64 %59, 9223372036854775807, !dbg !741
  %66 = and i64 %62, 9223372036854775807, !dbg !741
  %67 = and i64 %63, 9223372036854775804, !dbg !741
  call void asm sideeffect "fence", ""() #14, !dbg !741
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !741
  call void @llvm.riscv.config(i64 2, i64 4362093211020166120), !dbg !741
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !741
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1000), !dbg !741
  call void @llvm.riscv.config(i64 4575657221409472785, i64 32), !dbg !741
  call void @llvm.riscv.loop.ws.config.bounds(i64 524303, i64 549755879425), !dbg !741
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %64, i64 %65), !dbg !741
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %67, i64 %66), !dbg !741
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 1000), !dbg !741
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 8, i64 1000), !dbg !741
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !741
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !741
  call void asm sideeffect "fence", ""() #14, !dbg !741
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !741
  ret i32 0, !dbg !741
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_105_elementwise_1000_i8xf32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #0 !dbg !743 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !744
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !744
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !744
  %5 = getelementptr i8, ptr %4, i64 2048, !dbg !744
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !744
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !744
  %7 = load ptr, ptr %6, align 8, !dbg !744
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !744
  br label %8, !dbg !744

8:                                                ; preds = %3, %8
  %9 = phi i64 [ 0, %3 ], [ %15, %8 ]
  %10 = getelementptr i8, ptr %5, i64 %9, !dbg !744
  %11 = load <2 x i8>, ptr %10, align 2, !dbg !744
  %12 = sitofp <2 x i8> %11 to <2 x float>, !dbg !744
  %13 = fmul nnan contract <2 x float> %12, splat (float 0x3FA56C0FA0000000), !dbg !744
  %14 = getelementptr [4 x i8], ptr %7, i64 %9, !dbg !744
  store <2 x float> %13, ptr %14, align 8, !dbg !744
  %15 = add nuw nsw i64 %9, 2, !dbg !744
  %16 = icmp samesign ult i64 %9, 998, !dbg !744
  br i1 %16, label %8, label %17, !dbg !744

17:                                               ; preds = %8
  ret i32 0, !dbg !744
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #3

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.config(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.loop.ws.config.bounds(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.loop.ws.config.addrs.ab(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.loop.ws.config.addrs.dc(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.loop.ws.config.strides.ab(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.loop.ws.config.strides.dc(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.loop.ws(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.riscv.flush(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr readnone captures(none) %1) local_unnamed_addr #5 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #6 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %23, %15, %12, %9
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #6 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %30
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %34

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = lshr i32 %21, 13
  %27 = add nuw nsw i32 %26, 15360
  %28 = select i1 %22, i32 15360, i32 %27
  %29 = add nsw i32 %28, %25
  br label %30

30:                                               ; preds = %17, %12, %15, %1, %7
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %29, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %31, %6
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %30, %9
  %35 = phi i16 [ %11, %9 ], [ %33, %30 ]
  ret i16 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #6 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %9, %12, %15, %23
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__extendhfsf2(float noundef %0) local_unnamed_addr #6 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul nnan float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  ret float %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #6 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %30
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %34

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = lshr i32 %21, 13
  %27 = add nuw nsw i32 %26, 15360
  %28 = select i1 %22, i32 15360, i32 %27
  %29 = add nsw i32 %25, %28
  br label %30

30:                                               ; preds = %17, %15, %12, %7, %1
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %29, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %31, %6
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %9, %30
  %35 = phi i16 [ %11, %9 ], [ %33, %30 ]
  ret i16 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__truncsfhf2(float noundef %0) local_unnamed_addr #6 {
  %2 = alloca i16, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 2139095040
  %5 = and i32 %3, 8388607
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 32768
  switch i32 %4, label %13 [
    i32 2139095040, label %8
    i32 0, label %31
  ]

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = trunc nuw i32 %6 to i16
  %12 = or i16 %11, 32767
  br label %35

13:                                               ; preds = %1
  %14 = lshr exact i32 %4, 23
  %15 = icmp samesign ugt i32 %4, 1191182336
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = icmp samesign ult i32 %4, 947912704
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = and i32 %3, 8192
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4095, i32 4096
  %22 = add nuw nsw i32 %21, %5
  %23 = icmp samesign ugt i32 %22, 8388607
  %24 = select i1 %23, i32 -126, i32 -127
  %25 = add nsw i32 %24, %14
  %26 = shl nsw i32 %25, 10
  %27 = lshr i32 %22, 13
  %28 = add nuw nsw i32 %27, 15360
  %29 = select i1 %23, i32 15360, i32 %28
  %30 = add nsw i32 %26, %29
  br label %31

31:                                               ; preds = %18, %16, %13, %8, %1
  %32 = phi i32 [ 31744, %8 ], [ %4, %1 ], [ %30, %18 ], [ 31744, %13 ], [ 0, %16 ]
  %33 = or i32 %32, %7
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %10, %31
  %36 = phi i16 [ %12, %10 ], [ %34, %31 ]
  store i16 %36, ptr %2, align 4, !tbaa !745
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal double @__extendhfdf2(float noundef %0) local_unnamed_addr #6 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul nnan float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  %31 = fpext float %30 to double
  ret double %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @__truncdfhf2(double noundef %0) local_unnamed_addr #6 {
  %2 = alloca i16, align 4
  %3 = fptrunc double %0 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %4 = bitcast float %3 to i32
  %5 = and i32 %4, 2139095040
  %6 = and i32 %4, 8388607
  %7 = lshr i32 %4, 16
  %8 = and i32 %7, 32768
  switch i32 %5, label %14 [
    i32 2139095040, label %9
    i32 0, label %32
  ]

9:                                                ; preds = %1
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = trunc nuw i32 %7 to i16
  %13 = or i16 %12, 32767
  br label %36

14:                                               ; preds = %1
  %15 = lshr exact i32 %5, 23
  %16 = icmp samesign ugt i32 %5, 1191182336
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = icmp samesign ult i32 %5, 947912704
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = and i32 %4, 8192
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 4095, i32 4096
  %23 = add nuw nsw i32 %22, %6
  %24 = icmp samesign ugt i32 %23, 8388607
  %25 = select i1 %24, i32 -126, i32 -127
  %26 = add nsw i32 %25, %15
  %27 = shl nsw i32 %26, 10
  %28 = lshr i32 %23, 13
  %29 = add nuw nsw i32 %28, 15360
  %30 = select i1 %24, i32 15360, i32 %29
  %31 = add nsw i32 %27, %30
  br label %32

32:                                               ; preds = %19, %17, %14, %9, %1
  %33 = phi i32 [ 31744, %9 ], [ %5, %1 ], [ %31, %19 ], [ 31744, %14 ], [ 0, %17 ]
  %34 = or i32 %33, %8
  %35 = trunc i32 %34 to i16
  br label %36

36:                                               ; preds = %11, %32
  %37 = phi i16 [ %13, %11 ], [ %35, %32 ]
  store i16 %37, ptr %2, align 4, !tbaa !745
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %.0..0..0..0.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef double @fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 {
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef float @__math_invalidf(float noundef %0) local_unnamed_addr #9 {
  %2 = fsub float %0, %0
  %3 = fdiv float %2, %2
  ret float %3
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @__math_oflowf(i32 noundef %0) local_unnamed_addr #10 {
  %2 = alloca float, align 4
  %.not.i = icmp eq i32 %0, 0
  %3 = select i1 %.not.i, float 0x4600000000000000, float 0xC600000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %3, ptr %2, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i = load volatile float, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %4 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..i.i, 0x4600000000000000
  ret float %4
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @__math_xflowf(i32 noundef %0, float noundef %1) local_unnamed_addr #10 {
  %3 = alloca float, align 4
  %.not = icmp eq i32 %0, 0
  %4 = fneg float %1
  %5 = select i1 %.not, float %1, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %5, ptr %3, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = fmul float %1, %.0..0..0..0..0..0..0..0..0..0..i
  ret float %6
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @__math_uflowf(i32 noundef %0) local_unnamed_addr #10 {
  %2 = alloca float, align 4
  %.not.i = icmp eq i32 %0, 0
  %3 = select i1 %.not.i, float 0x3A00000000000000, float 0xBA00000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %3, ptr %2, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i = load volatile float, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %4 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..i.i, 0x3A00000000000000
  ret float %4
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @ceilf(float noundef %0) local_unnamed_addr #10 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = lshr i32 %4, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -127
  %8 = icmp samesign ugt i32 %6, 149
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = icmp samesign ugt i32 %6, 126
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = lshr i32 8388607, %7
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %16, ptr %3, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = icmp slt i32 %4, 0
  %18 = ashr i32 -8388608, %7
  %19 = select i1 %17, i32 0, i32 %12
  %20 = add nuw i32 %19, %4
  %21 = and i32 %20, %18
  %22 = bitcast i32 %21 to float
  br label %26

23:                                               ; preds = %9
  %24 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %24, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not = icmp sgt i32 %4, -1
  br i1 %.not, label %25, label %26

25:                                               ; preds = %23
  %.not18 = icmp eq i32 %4, 0
  %spec.select = select i1 %.not18, float %0, float 1.000000e+00
  br label %26

26:                                               ; preds = %25, %23, %15, %11, %1
  %.0 = phi float [ %0, %1 ], [ %0, %11 ], [ %22, %15 ], [ -0.000000e+00, %23 ], [ %spec.select, %25 ]
  ret float %.0
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @expf(float noundef %0) local_unnamed_addr #10 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = fpext float %0 to double
  %5 = bitcast float %0 to i32
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 2047
  %.not = icmp samesign ult i32 %7, 1067
  br i1 %.not, label %21, label %8, !prof !749

8:                                                ; preds = %1
  %9 = fcmp oeq float %0, 0xFFF0000000000000
  br i1 %9, label %39, label %10

10:                                               ; preds = %8
  %.not34 = icmp samesign ult i32 %7, 2040
  br i1 %.not34, label %13, label %11

11:                                               ; preds = %10
  %12 = fadd float %0, %0
  br label %39

13:                                               ; preds = %10
  %14 = fcmp ogt float %0, 0x40562E42E0000000
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float 0x4600000000000000, ptr %3, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile float, ptr %3, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %16 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i, 0x4600000000000000
  br label %39

17:                                               ; preds = %13
  %18 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float 0x3A00000000000000, ptr %2, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile float, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %20 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i3, 0x3A00000000000000
  br label %39

21:                                               ; preds = %17, %1
  %22 = fmul double %4, 0x40471547652B82FE
  %23 = fadd double %22, 0x4338000000000000
  %24 = bitcast double %23 to i64
  %25 = fadd double %23, 0xC338000000000000
  %26 = fsub double %22, %25
  %27 = and i64 %24, 31
  %28 = getelementptr inbounds nuw [8 x i8], ptr @__exp2f_data, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !750
  %30 = shl i64 %24, 47
  %31 = add i64 %29, %30
  %32 = bitcast i64 %31 to double
  %33 = tail call double @llvm.fmuladd.f64(double %26, double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3)
  %34 = fmul double %26, %26
  %35 = tail call double @llvm.fmuladd.f64(double %26, double 0x3F962E42FF0C52D6, double 1.000000e+00)
  %36 = tail call double @llvm.fmuladd.f64(double %33, double %34, double %35)
  %37 = fmul double %36, %32
  %38 = fptrunc double %37 to float
  br label %39

39:                                               ; preds = %21, %19, %15, %11, %8
  %.0 = phi float [ %12, %11 ], [ %16, %15 ], [ %20, %19 ], [ %38, %21 ], [ 0.000000e+00, %8 ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @feclearexcept(i32 noundef %0) local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @feraiseexcept(i32 noundef %0) local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fetestexcept(i32 noundef %0) local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fegetround() local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @__fesetround(i32 noundef %0) local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fegetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @fesetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #9 {
  ret i32 0
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @floorf(float noundef %0) local_unnamed_addr #10 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = lshr i32 %4, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -127
  %8 = icmp samesign ugt i32 %6, 149
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = icmp samesign ugt i32 %6, 126
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = lshr i32 8388607, %7
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %16, ptr %3, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not1819 = icmp slt i32 %4, 0
  %17 = ashr i32 -8388608, %7
  %18 = select i1 %.not1819, i32 %12, i32 0
  %19 = add nsw i32 %18, %4
  %20 = and i32 %19, %17
  %21 = bitcast i32 %20 to float
  br label %27

22:                                               ; preds = %9
  %23 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %23, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %24 = icmp sgt i32 %4, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %.not = fcmp oeq float %0, 0.000000e+00
  br i1 %.not, label %27, label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %25, %22, %15, %11, %1
  %.0 = phi float [ %0, %1 ], [ %0, %11 ], [ %21, %15 ], [ -1.000000e+00, %26 ], [ %0, %25 ], [ 0.000000e+00, %22 ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @fmaf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #9 {
  %4 = fpext float %0 to double
  %5 = fpext float %1 to double
  %6 = fmul double %4, %5
  %7 = fpext float %2 to double
  %8 = fadd double %6, %7
  %9 = bitcast double %8 to i64
  %10 = and i64 %9, 536870911
  %11 = icmp ne i64 %10, 268435456
  %12 = and i64 %9, 9218868437227405312
  %13 = icmp eq i64 %12, 9218868437227405312
  %or.cond = or i1 %11, %13
  br i1 %or.cond, label %31, label %14

14:                                               ; preds = %3
  %15 = fsub double %8, %6
  %16 = fcmp oeq double %15, %7
  %17 = fsub double %8, %7
  %18 = fcmp oeq double %17, %6
  %or.cond44 = and i1 %16, %18
  br i1 %or.cond44, label %31, label %19

19:                                               ; preds = %14
  %20 = icmp slt i64 %9, 0
  %21 = fcmp uge double %6, %7
  %22 = xor i1 %21, %20
  %23 = fsub double %6, %8
  %24 = fadd double %23, %7
  %25 = fsub double %7, %8
  %26 = fadd double %6, %25
  %.038 = select i1 %22, double %24, double %26
  %27 = fcmp uge double %.038, 0.000000e+00
  %28 = xor i1 %20, %27
  %29 = or disjoint i64 %9, 1
  %30 = add nsw i64 %9, -1
  %.sroa.0.0.in = select i1 %28, i64 %29, i64 %30
  %.sroa.0.0 = bitcast i64 %.sroa.0.0.in to double
  br label %31

31:                                               ; preds = %3, %14, %19
  %.0.in = phi double [ %.sroa.0.0, %19 ], [ %8, %14 ], [ %8, %3 ]
  %.0 = fptrunc double %.0.in to float
  ret float %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(none)
define internal float @fmodf(float noundef %0, float noundef %1) local_unnamed_addr #11 {
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %5 = and i32 %4, 255
  %6 = bitcast float %1 to i32
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  %9 = and i32 %3, -2147483648
  %10 = shl i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = tail call float @llvm.fabs.f32(float %1)
  %14 = bitcast float %13 to i32
  %15 = icmp samesign ugt i32 %14, 2139095040
  %16 = icmp eq i32 %5, 255
  %or.cond = or i1 %15, %16
  br i1 %or.cond, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = fmul float %0, %1
  %19 = fdiv float %18, %18
  br label %83

20:                                               ; preds = %12
  %21 = shl i32 %3, 1
  %.not = icmp ugt i32 %21, %10
  br i1 %.not, label %25, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %21, %10
  %24 = fmul float %0, 0.000000e+00
  %spec.select = select i1 %23, float %24, float %0
  br label %83

25:                                               ; preds = %20
  %.not81 = icmp eq i32 %5, 0
  br i1 %.not81, label %26, label %34

26:                                               ; preds = %25
  %27 = shl i32 %3, 9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %26, %.lr.ph
  %.06586 = phi i32 [ %30, %.lr.ph ], [ %27, %26 ]
  %.07085 = phi i32 [ %29, %.lr.ph ], [ 0, %26 ]
  %29 = add nsw i32 %.07085, -1
  %30 = shl nuw i32 %.06586, 1
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %26
  %.070.lcssa = phi i32 [ 0, %26 ], [ %29, %.lr.ph ]
  %32 = sub i32 1, %.070.lcssa
  %33 = shl i32 %3, %32
  br label %37

34:                                               ; preds = %25
  %35 = and i32 %3, 8388607
  %36 = or disjoint i32 %35, 8388608
  br label %37

37:                                               ; preds = %34, %._crit_edge
  %.171 = phi i32 [ %5, %34 ], [ %.070.lcssa, %._crit_edge ]
  %.0 = phi i32 [ %36, %34 ], [ %33, %._crit_edge ]
  %.not82 = icmp eq i32 %8, 0
  br i1 %.not82, label %38, label %46

38:                                               ; preds = %37
  %39 = shl i32 %6, 9
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %38, %.lr.ph90
  %.16688 = phi i32 [ %42, %.lr.ph90 ], [ %39, %38 ]
  %.06887 = phi i32 [ %41, %.lr.ph90 ], [ 0, %38 ]
  %41 = add nsw i32 %.06887, -1
  %42 = shl nuw i32 %.16688, 1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %.lr.ph90, label %._crit_edge91

._crit_edge91:                                    ; preds = %.lr.ph90, %38
  %.068.lcssa = phi i32 [ 0, %38 ], [ %41, %.lr.ph90 ]
  %44 = sub i32 1, %.068.lcssa
  %45 = shl i32 %6, %44
  br label %49

46:                                               ; preds = %37
  %47 = and i32 %6, 8388607
  %48 = or disjoint i32 %47, 8388608
  br label %49

49:                                               ; preds = %46, %._crit_edge91
  %.sroa.0.0.in = phi i32 [ %48, %46 ], [ %45, %._crit_edge91 ]
  %.169 = phi i32 [ %8, %46 ], [ %.068.lcssa, %._crit_edge91 ]
  %50 = icmp sgt i32 %.171, %.169
  br i1 %50, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %49, %57
  %.194 = phi i32 [ %58, %57 ], [ %.0, %49 ]
  %.27293 = phi i32 [ %59, %57 ], [ %.171, %49 ]
  %51 = sub i32 %.194, %.sroa.0.0.in
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %.lr.ph96
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = fmul float %0, 0.000000e+00
  br label %83

57:                                               ; preds = %53, %.lr.ph96
  %.2 = phi i32 [ %.194, %.lr.ph96 ], [ %51, %53 ]
  %58 = shl i32 %.2, 1
  %59 = add nsw i32 %.27293, -1
  %60 = icmp sgt i32 %59, %.169
  br i1 %60, label %.lr.ph96, label %._crit_edge97

._crit_edge97:                                    ; preds = %57, %49
  %.272.lcssa = phi i32 [ %.171, %49 ], [ %.169, %57 ]
  %.1.lcssa = phi i32 [ %.0, %49 ], [ %58, %57 ]
  %61 = sub i32 %.1.lcssa, %.sroa.0.0.in
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %._crit_edge97
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = fmul float %0, 0.000000e+00
  br label %83

67:                                               ; preds = %63, %._crit_edge97
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge97 ], [ %61, %63 ]
  %68 = icmp ult i32 %.3, 8388608
  br i1 %68, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %67, %.lr.ph103
  %.4101 = phi i32 [ %69, %.lr.ph103 ], [ %.3, %67 ]
  %.373100 = phi i32 [ %70, %.lr.ph103 ], [ %.272.lcssa, %67 ]
  %69 = shl nuw nsw i32 %.4101, 1
  %70 = add nsw i32 %.373100, -1
  %71 = icmp samesign ult i32 %.4101, 4194304
  br i1 %71, label %.lr.ph103, label %._crit_edge104

._crit_edge104:                                   ; preds = %.lr.ph103, %67
  %.373.lcssa = phi i32 [ %.272.lcssa, %67 ], [ %70, %.lr.ph103 ]
  %.4.lcssa = phi i32 [ %.3, %67 ], [ %69, %.lr.ph103 ]
  %72 = icmp sgt i32 %.373.lcssa, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %._crit_edge104
  %74 = add i32 %.4.lcssa, -8388608
  %75 = shl i32 %.373.lcssa, 23
  %76 = or i32 %74, %75
  br label %80

77:                                               ; preds = %._crit_edge104
  %78 = sub i32 1, %.373.lcssa
  %79 = lshr i32 %.4.lcssa, %78
  br label %80

80:                                               ; preds = %77, %73
  %.5 = phi i32 [ %76, %73 ], [ %79, %77 ]
  %81 = or i32 %.5, %9
  %82 = bitcast i32 %81 to float
  br label %83

83:                                               ; preds = %80, %65, %55, %22, %17
  %.067 = phi float [ %19, %17 ], [ %56, %55 ], [ %66, %65 ], [ %82, %80 ], [ %spec.select, %22 ]
  ret float %.067
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: inlinehint nofree nosync nounwind memory(argmem: readwrite)
define internal float @frexpf(float noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #12 {
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %trunc = trunc i32 %4 to i8
  switch i8 %trunc, label %13 [
    i8 0, label %5
    i8 -1, label %19
  ]

5:                                                ; preds = %2
  %6 = fcmp une float %0, 0.000000e+00
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = fmul float %0, 0x43F0000000000000
  %9 = tail call float @frexpf(float noundef %8, ptr noundef %1) #15
  %10 = load i32, ptr %1, align 4, !tbaa !179
  %11 = add nsw i32 %10, -64
  br label %12

12:                                               ; preds = %7, %5
  %storemerge = phi i32 [ %11, %7 ], [ 0, %5 ]
  %.014 = phi float [ %9, %7 ], [ %0, %5 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !179
  br label %19

13:                                               ; preds = %2
  %14 = and i32 %4, 255
  %15 = add nsw i32 %14, -126
  store i32 %15, ptr %1, align 4, !tbaa !179
  %16 = and i32 %3, -2139095041
  %17 = or disjoint i32 %16, 1056964608
  %18 = bitcast i32 %17 to float
  br label %19

19:                                               ; preds = %13, %12, %2
  %.0 = phi float [ %18, %13 ], [ %.014, %12 ], [ %0, %2 ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @ldexpf(float noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp sgt i32 %1, 127
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fmul float %0, 0x47E0000000000000
  %6 = add nsw i32 %1, -127
  %7 = icmp samesign ugt i32 %1, 254
  br i1 %7, label %8, label %scalbnf.exit

8:                                                ; preds = %4
  %9 = fmul float %5, 0x47E0000000000000
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 381)
  %spec.store.select.i = add nsw i32 %10, -254
  br label %scalbnf.exit

11:                                               ; preds = %2
  %12 = icmp slt i32 %1, -126
  br i1 %12, label %13, label %scalbnf.exit

13:                                               ; preds = %11
  %14 = fmul float %0, 0x3990000000000000
  %15 = add nuw nsw i32 %1, 102
  %16 = icmp samesign ult i32 %1, -228
  br i1 %16, label %17, label %scalbnf.exit

17:                                               ; preds = %13
  %18 = fmul float %14, 0x3990000000000000
  %19 = tail call i32 @llvm.umax.i32(i32 %1, i32 -330)
  %spec.store.select1.i = add nuw nsw i32 %19, 204
  br label %scalbnf.exit

scalbnf.exit:                                     ; preds = %4, %8, %11, %13, %17
  %.018.i = phi i32 [ %spec.store.select.i, %8 ], [ %6, %4 ], [ %spec.store.select1.i, %17 ], [ %15, %13 ], [ %1, %11 ]
  %.0.i = phi float [ %9, %8 ], [ %5, %4 ], [ %18, %17 ], [ %14, %13 ], [ %0, %11 ]
  %20 = shl nsw i32 %.018.i, 23
  %21 = add nsw i32 %20, 1065353216
  %22 = bitcast i32 %21 to float
  %23 = fmul float %.0.i, %22
  ret float %23
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal float @scalbnf(float noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp sgt i32 %1, 127
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fmul float %0, 0x47E0000000000000
  %6 = add nsw i32 %1, -127
  %7 = icmp samesign ugt i32 %1, 254
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = fmul float %5, 0x47E0000000000000
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 381)
  %spec.store.select = add nsw i32 %10, -254
  br label %20

11:                                               ; preds = %2
  %12 = icmp slt i32 %1, -126
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = fmul float %0, 0x3990000000000000
  %15 = add nuw nsw i32 %1, 102
  %16 = icmp samesign ult i32 %1, -228
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = fmul float %14, 0x3990000000000000
  %19 = tail call i32 @llvm.umax.i32(i32 %1, i32 -330)
  %spec.store.select1 = add nuw nsw i32 %19, 204
  br label %20

20:                                               ; preds = %17, %13, %11, %8, %4
  %.018 = phi i32 [ %spec.store.select, %8 ], [ %6, %4 ], [ %spec.store.select1, %17 ], [ %15, %13 ], [ %1, %11 ]
  %.0 = phi float [ %9, %8 ], [ %5, %4 ], [ %18, %17 ], [ %14, %13 ], [ %0, %11 ]
  %21 = shl nsw i32 %.018, 23
  %22 = add nsw i32 %21, 1065353216
  %23 = bitcast i32 %22 to float
  %24 = fmul float %.0, %23
  ret float %24
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @powf(float noundef %0, float noundef %1) local_unnamed_addr #10 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = bitcast float %0 to i32
  %7 = bitcast float %1 to i32
  %8 = add i32 %6, -2139095040
  %9 = icmp ult i32 %8, -2130706432
  %.pre = shl i32 %7, 1
  %10 = add i32 %.pre, 16777216
  %11 = icmp ult i32 %10, 16777217
  %or.cond99 = or i1 %9, %11
  br i1 %or.cond99, label %.critedge, label %76, !prof !752

.critedge:                                        ; preds = %2
  %12 = add i32 %.pre, -1
  %13 = icmp ult i32 %12, -16777217
  br i1 %13, label %30, label %14, !prof !749

14:                                               ; preds = %.critedge
  %15 = icmp eq i32 %.pre, 0
  %16 = icmp eq i32 %6, 1065353216
  %or.cond70 = or i1 %16, %15
  br i1 %or.cond70, label %134, label %17

17:                                               ; preds = %14
  %18 = shl i32 %6, 1
  %19 = icmp ugt i32 %18, -16777216
  %20 = icmp samesign ugt i32 %.pre, -16777216
  %or.cond = or i1 %19, %20
  br i1 %or.cond, label %21, label %23

21:                                               ; preds = %17
  %22 = fadd float %0, %1
  br label %134

23:                                               ; preds = %17
  %24 = icmp eq i32 %18, 2130706432
  br i1 %24, label %134, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %18, 2130706432
  %27 = icmp slt i32 %7, 0
  %28 = xor i1 %26, %27
  %29 = fmul float %1, %1
  %spec.select71 = select i1 %28, float 0.000000e+00, float %29
  br label %134

30:                                               ; preds = %.critedge
  %31 = shl i32 %6, 1
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, -16777217
  br i1 %33, label %49, label %34, !prof !749

34:                                               ; preds = %30
  %35 = fmul float %0, %0
  %.not66 = icmp sgt i32 %6, -1
  br i1 %.not66, label %checkint.exit.thread, label %36

36:                                               ; preds = %34
  %37 = lshr i32 %7, 23
  %38 = and i32 %37, 255
  %39 = add nsw i32 %38, -151
  %or.cond92 = icmp ult i32 %39, -24
  br i1 %or.cond92, label %checkint.exit.thread, label %40

40:                                               ; preds = %36
  %41 = sub nuw nsw i32 150, %38
  %42 = shl nuw nsw i32 1, %41
  %43 = add nsw i32 %42, -1
  %44 = and i32 %43, %7
  %.not.i = icmp ne i32 %44, 0
  %45 = and i32 %42, %7
  %.not9.i = icmp eq i32 %45, 0
  %or.cond93 = or i1 %.not9.i, %.not.i
  %46 = fneg float %35
  %spec.select = select i1 %or.cond93, float %35, float %46
  br label %checkint.exit.thread

checkint.exit.thread:                             ; preds = %40, %36, %34
  %.057 = phi float [ %35, %34 ], [ %35, %36 ], [ %spec.select, %40 ]
  %.not67 = icmp sgt i32 %7, -1
  br i1 %.not67, label %134, label %47

47:                                               ; preds = %checkint.exit.thread
  %48 = fdiv float 1.000000e+00, %.057
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store volatile float %48, ptr %5, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..i = load volatile float, ptr %5, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %134

49:                                               ; preds = %30
  %.not64 = icmp sgt i32 %6, -1
  br i1 %.not64, label %69, label %50

50:                                               ; preds = %49
  %51 = lshr i32 %7, 23
  %52 = and i32 %51, 255
  %53 = icmp samesign ult i32 %52, 127
  br i1 %53, label %.thread, label %54

54:                                               ; preds = %50
  %55 = icmp samesign ugt i32 %52, 150
  br i1 %55, label %checkint.exit76.thread85, label %56

56:                                               ; preds = %54
  %57 = sub nuw nsw i32 150, %52
  %58 = shl nuw nsw i32 1, %57
  %59 = add nsw i32 %58, -1
  %60 = and i32 %59, %7
  %.not.i72 = icmp eq i32 %60, 0
  br i1 %.not.i72, label %61, label %.thread

61:                                               ; preds = %56
  %62 = and i32 %58, %7
  %.not9.i74 = icmp eq i32 %62, 0
  br i1 %.not9.i74, label %checkint.exit76.thread85, label %65

.thread:                                          ; preds = %56, %50
  %63 = fsub float %0, %0
  %64 = fdiv float %63, %63
  br label %134

checkint.exit76.thread85:                         ; preds = %61, %54
  br label %65

65:                                               ; preds = %checkint.exit76.thread85, %61
  %66 = phi i32 [ 0, %checkint.exit76.thread85 ], [ 65536, %61 ]
  %67 = tail call float @llvm.fabs.f32(float %0)
  %68 = bitcast float %67 to i32
  br label %69

69:                                               ; preds = %65, %49
  %.154 = phi i32 [ %68, %65 ], [ %6, %49 ]
  %.151 = phi i32 [ %66, %65 ], [ 0, %49 ]
  %70 = icmp ult i32 %.154, 8388608
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = fmul float %0, 0x4160000000000000
  %73 = tail call float @llvm.fabs.f32(float %72)
  %74 = bitcast float %73 to i32
  %75 = add nsw i32 %74, -192937984
  br label %76

76:                                               ; preds = %71, %69, %2
  %.053 = phi i32 [ %75, %71 ], [ %.154, %69 ], [ %6, %2 ]
  %.050 = phi i32 [ %.151, %71 ], [ %.151, %69 ], [ 0, %2 ]
  %77 = add i32 %.053, -1060306944
  %78 = lshr i32 %77, 19
  %79 = and i32 %78, 15
  %80 = and i32 %77, -8388608
  %81 = sub i32 %.053, %80
  %82 = ashr i32 %77, 23
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds nuw [16 x i8], ptr @__powf_log2_data, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !753
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %87 = load double, ptr %86, align 8, !tbaa !756
  %88 = bitcast i32 %81 to float
  %89 = fpext float %88 to double
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %85, double -1.000000e+00)
  %91 = sitofp i32 %82 to double
  %92 = fadd double %87, %91
  %93 = fmul double %90, %90
  %94 = tail call double @llvm.fmuladd.f64(double %90, double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A)
  %95 = tail call double @llvm.fmuladd.f64(double %90, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8)
  %96 = fmul double %93, %93
  %97 = tail call double @llvm.fmuladd.f64(double %90, double 0x3FF71547652AB82B, double %92)
  %98 = tail call double @llvm.fmuladd.f64(double %95, double %93, double %97)
  %99 = tail call double @llvm.fmuladd.f64(double %94, double %96, double %98)
  %100 = fpext float %1 to double
  %101 = fmul double %99, %100
  %102 = bitcast double %101 to i64
  %103 = and i64 %102, 9223231299366420480
  %104 = icmp samesign ugt i64 %103, 4638426141214900224
  br i1 %104, label %105, label %115, !prof !757

105:                                              ; preds = %76
  %106 = fcmp ogt double %101, 0x405FFFFFFFD1D571
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %.not.i.i = icmp eq i32 %.050, 0
  %108 = select i1 %.not.i.i, float 0x4600000000000000, float 0xC600000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %108, ptr %4, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile float, ptr %4, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %109 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i, 0x4600000000000000
  br label %134

110:                                              ; preds = %105
  %111 = fcmp ugt double %101, -1.500000e+02
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %.not.i.i5 = icmp eq i32 %.050, 0
  %113 = select i1 %.not.i.i5, float 0x3A00000000000000, float 0xBA00000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %113, ptr %3, align 4, !tbaa !747
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i6 = load volatile float, ptr %3, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %114 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i6, 0x3A00000000000000
  br label %134

115:                                              ; preds = %110, %76
  %116 = fadd double %101, 0x42E8000000000000
  %117 = bitcast double %116 to i64
  %118 = fadd double %116, 0xC2E8000000000000
  %119 = fsub double %101, %118
  %120 = and i64 %117, 31
  %121 = getelementptr inbounds nuw [8 x i8], ptr @__exp2f_data, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !750
  %123 = zext nneg i32 %.050 to i64
  %124 = add i64 %117, %123
  %125 = shl i64 %124, 47
  %126 = add i64 %122, %125
  %127 = bitcast i64 %126 to double
  %128 = tail call double @llvm.fmuladd.f64(double %119, double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3)
  %129 = fmul double %119, %119
  %130 = tail call double @llvm.fmuladd.f64(double %119, double 0x3FE62E42FF0C52D6, double 1.000000e+00)
  %131 = tail call double @llvm.fmuladd.f64(double %128, double %129, double %130)
  %132 = fmul double %131, %127
  %133 = fptrunc double %132 to float
  br label %134

134:                                              ; preds = %115, %112, %107, %.thread, %47, %checkint.exit.thread, %25, %23, %21, %14
  %.0 = phi float [ %22, %21 ], [ 1.000000e+00, %14 ], [ 1.000000e+00, %23 ], [ %.0..0..0..0..0..0..0..0..0..0..i, %47 ], [ %.057, %checkint.exit.thread ], [ %109, %107 ], [ %114, %112 ], [ %133, %115 ], [ %spec.select71, %25 ], [ %64, %.thread ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef float @rintf(float noundef %0) local_unnamed_addr #9 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2130706432
  %4 = icmp samesign ugt i32 %3, 1249902592
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %.not = icmp sgt i32 %2, -1
  %6 = fadd float %0, 0xC160000000000000
  %7 = fadd float %6, 0x4160000000000000
  %8 = fadd float %0, 0x4160000000000000
  %9 = fadd float %8, 0xC160000000000000
  %.0 = select i1 %.not, float %9, float %7
  %10 = fcmp oeq float %.0, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = select i1 %.not, float 0.000000e+00, float -0.000000e+00
  br label %13

13:                                               ; preds = %11, %5, %1
  %.010 = phi float [ %12, %11 ], [ %0, %1 ], [ %.0, %5 ]
  ret float %.010
}

; Function Attrs: inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite)
define internal float @roundf(float noundef %0) local_unnamed_addr #10 {
  %2 = alloca float, align 4
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %5 = and i32 %4, 255
  %6 = icmp samesign ugt i32 %5, 149
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %spec.select = tail call float @llvm.fabs.f32(float %0)
  %8 = icmp samesign ult i32 %5, 126
  %9 = fadd float %spec.select, 0x4160000000000000
  br i1 %8, label %10, label %12

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %9, ptr %2, align 4, !tbaa !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %11 = fmul float %0, 0.000000e+00
  br label %26

12:                                               ; preds = %7
  %13 = fadd float %9, 0xC160000000000000
  %14 = fsub float %13, %spec.select
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = fadd float %spec.select, %14
  %18 = fadd float %17, -1.000000e+00
  br label %24

19:                                               ; preds = %12
  %20 = fcmp ugt float %14, -5.000000e-01
  %21 = fadd float %spec.select, %14
  br i1 %20, label %24, label %22

22:                                               ; preds = %19
  %23 = fadd float %21, 1.000000e+00
  br label %24

24:                                               ; preds = %22, %19, %16
  %.0 = phi float [ %18, %16 ], [ %23, %22 ], [ %21, %19 ]
  %25 = fneg float %.0
  %.not26 = icmp slt i32 %3, 0
  %spec.select25 = select i1 %.not26, float %25, float %.0
  br label %26

26:                                               ; preds = %24, %10, %1
  %.020 = phi float [ %11, %10 ], [ %spec.select25, %24 ], [ %0, %1 ]
  ret float %.020
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.usub.sat.v2i32(<2 x i32>, <2 x i32>) #13

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nounwind "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #4 = { mustprogress nounwind willreturn "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "nonlazybind" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #10 = { inlinehint nofree norecurse nounwind memory(inaccessiblemem: readwrite) }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(none) }
attributes #12 = { inlinehint nofree nosync nounwind memory(argmem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { inlinehint }

!llvm.dbg.cu = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!llvm.module.flags = !{!177, !178}
!llvm.errno.tbaa = !{!179}

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
!178 = !{i32 1, !"wchar_size", i32 4}
!179 = !{!180, !180, i64 0}
!180 = !{!"int", !181, i64 0}
!181 = !{!"omnipotent char", !182, i64 0}
!182 = !{!"Simple C/C++ TBAA"}
!183 = distinct !DISubprogram(name: "_initializer_0_dispatch_0_transpose_64x64_i8", linkageName: "_initializer_0_dispatch_0_transpose_64x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!184 = !DISubroutineType(cc: DW_CC_normal, types: !185)
!185 = !{!186, !187, !218, !247}
!186 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !191, file: !191, line: 246, size: 768, elements: !192)
!191 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!192 = !{!193, !201, !204, !207, !209}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DICompositeType(tag: DW_TAG_array_type, scope: !191, file: !191, line: 227, baseType: !197, size: 2048, elements: !199)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !198)
!198 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!199 = !{!200}
!200 = !DISubrange(count: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !210, offset: 256)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !191, file: !191, line: 227, size: 512, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_array_type, scope: !191, file: !191, line: 227, baseType: !214, size: 512, elements: !216)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !215)
!215 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!216 = !{!217}
!217 = !DISubrange(count: 8)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !191, file: !191, line: 275, size: 384, elements: !222)
!222 = !{!223, !224, !225, !228, !229, !230, !231, !232, !235, !236, !237, !242}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !197, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !197, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !226, size: 16, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !227)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !226, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !197, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !197, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !226, size: 16, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !233, size: 8, offset: 176)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !234)
!234 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !233, size: 8, offset: 184)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !194, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !238, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_array_type, scope: !191, file: !191, line: 227, baseType: !241, size: 4096, elements: !199)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, scope: !191, file: !191, line: 227, baseType: !246, size: 4096, elements: !199)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !214)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !191, file: !191, line: 321, size: 256, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !197, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !197, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !226, size: 16, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !226, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !197, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !202, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !197, size: 32, offset: 192)
!259 = !DILocation(line: 691, column: 12, scope: !183)
!260 = distinct !DISubprogram(name: "_initializer_1_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_1_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!261 = !DILocation(line: 692, column: 12, scope: !260)
!262 = distinct !DISubprogram(name: "_initializer_2_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_2_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3)
!263 = !DILocation(line: 706, column: 12, scope: !262)
!264 = distinct !DISubprogram(name: "_initializer_3_dispatch_0_transpose_256x64_i8", linkageName: "_initializer_3_dispatch_0_transpose_256x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!265 = !DILocation(line: 715, column: 12, scope: !264)
!266 = distinct !DISubprogram(name: "_initializer_4_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_4_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5)
!267 = !DILocation(line: 727, column: 12, scope: !266)
!268 = distinct !DISubprogram(name: "_initializer_5_dispatch_0_transpose_256x64_i8", linkageName: "_initializer_5_dispatch_0_transpose_256x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!269 = !DILocation(line: 736, column: 12, scope: !268)
!270 = distinct !DISubprogram(name: "_initializer_6_dispatch_0_transpose_64x256_i8", linkageName: "_initializer_6_dispatch_0_transpose_64x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!271 = !DILocation(line: 748, column: 12, scope: !270)
!272 = distinct !DISubprogram(name: "_initializer_7_dispatch_0_transpose_256x128_i8", linkageName: "_initializer_7_dispatch_0_transpose_256x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!273 = !DILocation(line: 757, column: 12, scope: !272)
!274 = distinct !DISubprogram(name: "_initializer_8_dispatch_0_transpose_256x512_i8", linkageName: "_initializer_8_dispatch_0_transpose_256x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!275 = !DILocation(line: 758, column: 12, scope: !274)
!276 = distinct !DISubprogram(name: "_initializer_9_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_9_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!277 = !DILocation(line: 772, column: 12, scope: !276)
!278 = distinct !DISubprogram(name: "_initializer_10_dispatch_0_transpose_512x128_i8", linkageName: "_initializer_10_dispatch_0_transpose_512x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!279 = !DILocation(line: 781, column: 12, scope: !278)
!280 = distinct !DISubprogram(name: "_initializer_11_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_11_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!281 = !DILocation(line: 793, column: 12, scope: !280)
!282 = distinct !DISubprogram(name: "_initializer_12_dispatch_0_transpose_512x128_i8", linkageName: "_initializer_12_dispatch_0_transpose_512x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!283 = !DILocation(line: 802, column: 12, scope: !282)
!284 = distinct !DISubprogram(name: "_initializer_13_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_13_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!285 = !DILocation(line: 814, column: 12, scope: !284)
!286 = distinct !DISubprogram(name: "_initializer_14_dispatch_0_transpose_512x128_i8", linkageName: "_initializer_14_dispatch_0_transpose_512x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!287 = !DILocation(line: 823, column: 12, scope: !286)
!288 = distinct !DISubprogram(name: "_initializer_15_dispatch_0_transpose_128x512_i8", linkageName: "_initializer_15_dispatch_0_transpose_128x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16)
!289 = !DILocation(line: 835, column: 12, scope: !288)
!290 = distinct !DISubprogram(name: "_initializer_16_dispatch_0_transpose_512x256_i8", linkageName: "_initializer_16_dispatch_0_transpose_512x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!291 = !DILocation(line: 844, column: 12, scope: !290)
!292 = distinct !DISubprogram(name: "_initializer_17_dispatch_0_transpose_512x1024_i8", linkageName: "_initializer_17_dispatch_0_transpose_512x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!293 = !DILocation(line: 845, column: 12, scope: !292)
!294 = distinct !DISubprogram(name: "_initializer_18_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_18_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!295 = !DILocation(line: 859, column: 12, scope: !294)
!296 = distinct !DISubprogram(name: "_initializer_19_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_19_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!297 = !DILocation(line: 868, column: 12, scope: !296)
!298 = distinct !DISubprogram(name: "_initializer_20_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_20_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21)
!299 = !DILocation(line: 880, column: 12, scope: !298)
!300 = distinct !DISubprogram(name: "_initializer_21_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_21_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22)
!301 = !DILocation(line: 889, column: 12, scope: !300)
!302 = distinct !DISubprogram(name: "_initializer_22_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_22_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23)
!303 = !DILocation(line: 901, column: 12, scope: !302)
!304 = distinct !DISubprogram(name: "_initializer_23_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_23_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!305 = !DILocation(line: 910, column: 12, scope: !304)
!306 = distinct !DISubprogram(name: "_initializer_24_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_24_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25)
!307 = !DILocation(line: 922, column: 12, scope: !306)
!308 = distinct !DISubprogram(name: "_initializer_25_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_25_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!309 = !DILocation(line: 931, column: 12, scope: !308)
!310 = distinct !DISubprogram(name: "_initializer_26_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_26_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!311 = !DILocation(line: 943, column: 12, scope: !310)
!312 = distinct !DISubprogram(name: "_initializer_27_dispatch_0_transpose_1024x256_i8", linkageName: "_initializer_27_dispatch_0_transpose_1024x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28)
!313 = !DILocation(line: 952, column: 12, scope: !312)
!314 = distinct !DISubprogram(name: "_initializer_28_dispatch_0_transpose_256x1024_i8", linkageName: "_initializer_28_dispatch_0_transpose_256x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!315 = !DILocation(line: 964, column: 12, scope: !314)
!316 = distinct !DISubprogram(name: "_initializer_29_dispatch_0_transpose_1024x512_i8", linkageName: "_initializer_29_dispatch_0_transpose_1024x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!317 = !DILocation(line: 973, column: 12, scope: !316)
!318 = distinct !DISubprogram(name: "_initializer_30_dispatch_0_transpose_1024x2048_i8", linkageName: "_initializer_30_dispatch_0_transpose_1024x2048_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31)
!319 = !DILocation(line: 974, column: 12, scope: !318)
!320 = distinct !DISubprogram(name: "_initializer_31_dispatch_0_transpose_512x2048_i8", linkageName: "_initializer_31_dispatch_0_transpose_512x2048_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32)
!321 = !DILocation(line: 988, column: 12, scope: !320)
!322 = distinct !DISubprogram(name: "_initializer_32_dispatch_0_transpose_2048x512_i8", linkageName: "_initializer_32_dispatch_0_transpose_2048x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33)
!323 = !DILocation(line: 997, column: 12, scope: !322)
!324 = distinct !DISubprogram(name: "_initializer_33_dispatch_0_transpose_512x2048_i8", linkageName: "_initializer_33_dispatch_0_transpose_512x2048_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34)
!325 = !DILocation(line: 1009, column: 13, scope: !324)
!326 = distinct !DISubprogram(name: "_initializer_34_dispatch_0_transpose_2048x512_i8", linkageName: "_initializer_34_dispatch_0_transpose_2048x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !35)
!327 = !DILocation(line: 1018, column: 13, scope: !326)
!328 = distinct !DISubprogram(name: "_initializer_35_dispatch_0_transpose_512x2048_i8", linkageName: "_initializer_35_dispatch_0_transpose_512x2048_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36)
!329 = !DILocation(line: 1030, column: 13, scope: !328)
!330 = distinct !DISubprogram(name: "_initializer_36_dispatch_0_transpose_2048x1000_i8", linkageName: "_initializer_36_dispatch_0_transpose_2048x1000_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37)
!331 = !DILocation(line: 1045, column: 13, scope: !330)
!332 = distinct !DISubprogram(name: "_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_37_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38)
!333 = !DILocation(line: 691, column: 12, scope: !332)
!334 = distinct !DISubprogram(name: "_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_38_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!335 = !DILocation(line: 700, column: 12, scope: !334)
!336 = distinct !DISubprogram(name: "_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_39_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!337 = !DILocation(line: 715, column: 12, scope: !336)
!338 = distinct !DISubprogram(name: "_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_40_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41)
!339 = !DILocation(line: 721, column: 12, scope: !338)
!340 = distinct !DISubprogram(name: "_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_41_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42)
!341 = !DILocation(line: 736, column: 12, scope: !340)
!342 = distinct !DISubprogram(name: "_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32", linkageName: "_initializer_42_dispatch_0_elementwise_broadcast_3136x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43)
!343 = !DILocation(line: 742, column: 12, scope: !342)
!344 = distinct !DISubprogram(name: "_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_43_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!345 = !DILocation(line: 766, column: 12, scope: !344)
!346 = distinct !DISubprogram(name: "_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_44_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45)
!347 = !DILocation(line: 781, column: 12, scope: !346)
!348 = distinct !DISubprogram(name: "_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_45_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46)
!349 = !DILocation(line: 787, column: 12, scope: !348)
!350 = distinct !DISubprogram(name: "_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_46_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47)
!351 = !DILocation(line: 802, column: 12, scope: !350)
!352 = distinct !DISubprogram(name: "_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_47_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48)
!353 = !DILocation(line: 808, column: 12, scope: !352)
!354 = distinct !DISubprogram(name: "_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_48_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49)
!355 = !DILocation(line: 823, column: 12, scope: !354)
!356 = distinct !DISubprogram(name: "_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32", linkageName: "_initializer_49_dispatch_0_elementwise_broadcast_784x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50)
!357 = !DILocation(line: 829, column: 12, scope: !356)
!358 = distinct !DISubprogram(name: "_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32", linkageName: "_initializer_50_dispatch_0_elementwise_broadcast_784x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51)
!359 = !DILocation(line: 844, column: 12, scope: !358)
!360 = distinct !DISubprogram(name: "_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_51_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !52)
!361 = !DILocation(line: 845, column: 12, scope: !360)
!362 = distinct !DISubprogram(name: "_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_52_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53)
!363 = !DILocation(line: 853, column: 12, scope: !362)
!364 = distinct !DISubprogram(name: "_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_53_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54)
!365 = !DILocation(line: 859, column: 12, scope: !364)
!366 = distinct !DISubprogram(name: "_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_54_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55)
!367 = !DILocation(line: 868, column: 12, scope: !366)
!368 = distinct !DISubprogram(name: "_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_55_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56)
!369 = !DILocation(line: 874, column: 12, scope: !368)
!370 = distinct !DISubprogram(name: "_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_56_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57)
!371 = !DILocation(line: 880, column: 12, scope: !370)
!372 = distinct !DISubprogram(name: "_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_57_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58)
!373 = !DILocation(line: 889, column: 12, scope: !372)
!374 = distinct !DISubprogram(name: "_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_58_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!375 = !DILocation(line: 895, column: 12, scope: !374)
!376 = distinct !DISubprogram(name: "_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_59_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!377 = !DILocation(line: 901, column: 12, scope: !376)
!378 = distinct !DISubprogram(name: "_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_60_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61)
!379 = !DILocation(line: 910, column: 12, scope: !378)
!380 = distinct !DISubprogram(name: "_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_61_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62)
!381 = !DILocation(line: 916, column: 12, scope: !380)
!382 = distinct !DISubprogram(name: "_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_62_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63)
!383 = !DILocation(line: 922, column: 12, scope: !382)
!384 = distinct !DISubprogram(name: "_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_63_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64)
!385 = !DILocation(line: 931, column: 12, scope: !384)
!386 = distinct !DISubprogram(name: "_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_64_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65)
!387 = !DILocation(line: 937, column: 12, scope: !386)
!388 = distinct !DISubprogram(name: "_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_65_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!389 = !DILocation(line: 943, column: 12, scope: !388)
!390 = distinct !DISubprogram(name: "_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_66_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67)
!391 = !DILocation(line: 952, column: 12, scope: !390)
!392 = distinct !DISubprogram(name: "_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32", linkageName: "_initializer_67_dispatch_0_elementwise_broadcast_196x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68)
!393 = !DILocation(line: 958, column: 12, scope: !392)
!394 = distinct !DISubprogram(name: "_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32", linkageName: "_initializer_68_dispatch_0_elementwise_broadcast_196x1024_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69)
!395 = !DILocation(line: 964, column: 12, scope: !394)
!396 = distinct !DISubprogram(name: "_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32", linkageName: "_initializer_69_dispatch_0_elementwise_broadcast_196x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70)
!397 = !DILocation(line: 973, column: 12, scope: !396)
!398 = distinct !DISubprogram(name: "_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_70_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71)
!399 = !DILocation(line: 974, column: 12, scope: !398)
!400 = distinct !DISubprogram(name: "_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_71_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72)
!401 = !DILocation(line: 982, column: 12, scope: !400)
!402 = distinct !DISubprogram(name: "_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_72_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73)
!403 = !DILocation(line: 988, column: 12, scope: !402)
!404 = distinct !DISubprogram(name: "_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_73_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!405 = !DILocation(line: 997, column: 12, scope: !404)
!406 = distinct !DISubprogram(name: "_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_74_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75)
!407 = !DILocation(line: 1003, column: 12, scope: !406)
!408 = distinct !DISubprogram(name: "_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_75_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!409 = !DILocation(line: 1009, column: 13, scope: !408)
!410 = distinct !DISubprogram(name: "_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_76_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77)
!411 = !DILocation(line: 1018, column: 13, scope: !410)
!412 = distinct !DISubprogram(name: "_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32", linkageName: "_initializer_77_dispatch_0_elementwise_broadcast_49x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78)
!413 = !DILocation(line: 1024, column: 13, scope: !412)
!414 = distinct !DISubprogram(name: "_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32", linkageName: "_initializer_78_dispatch_0_elementwise_broadcast_49x2048_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79)
!415 = !DILocation(line: 1030, column: 13, scope: !414)
!416 = distinct !DISubprogram(name: "main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8", linkageName: "main_graph$async_dispatch_0_elementwise_transpose_3x224x224_f32xi8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !80)
!417 = !DILocation(line: 574, column: 12, scope: !416)
!418 = !DILocation(line: 682, column: 12, scope: !416)
!419 = distinct !DISubprogram(name: "main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32", linkageName: "main_graph$async_dispatch_1_elementwise_broadcast_12544x64_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81)
!420 = !DILocation(line: 682, column: 12, scope: !419)
!421 = distinct !DISubprogram(name: "main_graph$async_dispatch_2_generic_112x112x7x7x3_i8", linkageName: "main_graph$async_dispatch_2_generic_112x112x7x7x3_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82)
!422 = !DILocation(line: 574, column: 12, scope: !421)
!423 = !DILocation(line: 682, column: 12, scope: !421)
!424 = distinct !DISubprogram(name: "main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32", linkageName: "main_graph$async_dispatch_3_matmul_12544x64x147_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83)
!425 = !DILocation(line: 682, column: 12, scope: !424)
!426 = !DILocation(line: 687, column: 12, scope: !424)
!427 = !DILocation(line: 685, column: 12, scope: !424)
!428 = !DILocation(line: 686, column: 12, scope: !424)
!429 = distinct !DISubprogram(name: "main_graph$async_dispatch_4_slow_memcpy", linkageName: "main_graph$async_dispatch_4_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84)
!430 = !DILocation(line: 687, column: 12, scope: !429)
!431 = !DILocation(line: 688, column: 12, scope: !429)
!432 = distinct !DISubprogram(name: "main_graph$async_dispatch_5_conv_64x56x56x3x3_f32", linkageName: "main_graph$async_dispatch_5_conv_64x56x56x3x3_f32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85)
!433 = !DILocation(line: 688, column: 12, scope: !432)
!434 = !DILocation(line: 689, column: 12, scope: !432)
!435 = distinct !DISubprogram(name: "main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86)
!436 = !DILocation(line: 691, column: 12, scope: !435)
!437 = distinct !DISubprogram(name: "main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_7_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87)
!438 = !DILocation(line: 692, column: 12, scope: !437)
!439 = distinct !DISubprogram(name: "main_graph$async_dispatch_8_slow_memcpy", linkageName: "main_graph$async_dispatch_8_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !88)
!440 = !DILocation(line: 698, column: 12, scope: !439)
!441 = !DILocation(line: 700, column: 12, scope: !439)
!442 = distinct !DISubprogram(name: "main_graph$async_dispatch_9_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_9_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89)
!443 = !DILocation(line: 700, column: 12, scope: !442)
!444 = distinct !DISubprogram(name: "main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90)
!445 = !DILocation(line: 700, column: 12, scope: !444)
!446 = distinct !DISubprogram(name: "main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_11_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !91)
!447 = !DILocation(line: 706, column: 12, scope: !446)
!448 = distinct !DISubprogram(name: "main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92)
!449 = !DILocation(line: 706, column: 12, scope: !448)
!450 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !93)
!451 = !DILocation(line: 692, column: 12, scope: !450)
!452 = !DILocation(line: 706, column: 12, scope: !450)
!453 = !DILocation(line: 713, column: 12, scope: !450)
!454 = !DILocation(line: 696, column: 12, scope: !450)
!455 = !DILocation(line: 708, column: 12, scope: !450)
!456 = !DILocation(line: 709, column: 12, scope: !450)
!457 = !DILocation(line: 710, column: 12, scope: !450)
!458 = !DILocation(line: 712, column: 12, scope: !450)
!459 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!460 = !DILocation(line: 715, column: 12, scope: !459)
!461 = distinct !DISubprogram(name: "main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95)
!462 = !DILocation(line: 721, column: 12, scope: !461)
!463 = distinct !DISubprogram(name: "main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96)
!464 = !DILocation(line: 721, column: 12, scope: !463)
!465 = distinct !DISubprogram(name: "main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97)
!466 = !DILocation(line: 727, column: 12, scope: !465)
!467 = distinct !DISubprogram(name: "main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98)
!468 = !DILocation(line: 727, column: 12, scope: !467)
!469 = !DILocation(line: 692, column: 12, scope: !467)
!470 = !DILocation(line: 734, column: 12, scope: !467)
!471 = !DILocation(line: 714, column: 12, scope: !467)
!472 = !DILocation(line: 729, column: 12, scope: !467)
!473 = !DILocation(line: 730, column: 12, scope: !467)
!474 = !DILocation(line: 731, column: 12, scope: !467)
!475 = !DILocation(line: 733, column: 12, scope: !467)
!476 = distinct !DISubprogram(name: "main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99)
!477 = !DILocation(line: 736, column: 12, scope: !476)
!478 = distinct !DISubprogram(name: "main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100)
!479 = !DILocation(line: 742, column: 12, scope: !478)
!480 = distinct !DISubprogram(name: "main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101)
!481 = !DILocation(line: 742, column: 12, scope: !480)
!482 = distinct !DISubprogram(name: "main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102)
!483 = !DILocation(line: 748, column: 12, scope: !482)
!484 = distinct !DISubprogram(name: "main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103)
!485 = !DILocation(line: 748, column: 12, scope: !484)
!486 = !DILocation(line: 727, column: 12, scope: !484)
!487 = !DILocation(line: 755, column: 12, scope: !484)
!488 = !DILocation(line: 735, column: 12, scope: !484)
!489 = !DILocation(line: 750, column: 12, scope: !484)
!490 = !DILocation(line: 751, column: 12, scope: !484)
!491 = !DILocation(line: 752, column: 12, scope: !484)
!492 = !DILocation(line: 754, column: 12, scope: !484)
!493 = distinct !DISubprogram(name: "main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", linkageName: "main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !104)
!494 = !DILocation(line: 757, column: 12, scope: !493)
!495 = distinct !DISubprogram(name: "main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!496 = !DILocation(line: 757, column: 12, scope: !495)
!497 = distinct !DISubprogram(name: "main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!498 = !DILocation(line: 758, column: 12, scope: !497)
!499 = distinct !DISubprogram(name: "main_graph$async_dispatch_29_generic_28x28x256_i8", linkageName: "main_graph$async_dispatch_29_generic_28x28x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107)
!500 = !DILocation(line: 755, column: 12, scope: !499)
!501 = !DILocation(line: 758, column: 12, scope: !499)
!502 = distinct !DISubprogram(name: "main_graph$async_dispatch_30_slow_memcpy", linkageName: "main_graph$async_dispatch_30_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108)
!503 = !DILocation(line: 764, column: 12, scope: !502)
!504 = !DILocation(line: 766, column: 12, scope: !502)
!505 = distinct !DISubprogram(name: "main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109)
!506 = !DILocation(line: 766, column: 12, scope: !505)
!507 = distinct !DISubprogram(name: "main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !110)
!508 = !DILocation(line: 766, column: 12, scope: !507)
!509 = distinct !DISubprogram(name: "main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111)
!510 = !DILocation(line: 772, column: 12, scope: !509)
!511 = distinct !DISubprogram(name: "main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112)
!512 = !DILocation(line: 772, column: 12, scope: !511)
!513 = distinct !DISubprogram(name: "main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113)
!514 = !DILocation(line: 758, column: 12, scope: !513)
!515 = !DILocation(line: 772, column: 12, scope: !513)
!516 = !DILocation(line: 779, column: 12, scope: !513)
!517 = !DILocation(line: 762, column: 12, scope: !513)
!518 = !DILocation(line: 774, column: 12, scope: !513)
!519 = !DILocation(line: 775, column: 12, scope: !513)
!520 = !DILocation(line: 776, column: 12, scope: !513)
!521 = !DILocation(line: 778, column: 12, scope: !513)
!522 = distinct !DISubprogram(name: "main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114)
!523 = !DILocation(line: 781, column: 12, scope: !522)
!524 = distinct !DISubprogram(name: "main_graph$async_dispatch_37_slow_memcpy", linkageName: "main_graph$async_dispatch_37_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115)
!525 = !DILocation(line: 787, column: 12, scope: !524)
!526 = !DILocation(line: 785, column: 12, scope: !524)
!527 = distinct !DISubprogram(name: "main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116)
!528 = !DILocation(line: 787, column: 12, scope: !527)
!529 = distinct !DISubprogram(name: "main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117)
!530 = !DILocation(line: 787, column: 12, scope: !529)
!531 = distinct !DISubprogram(name: "main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !118)
!532 = !DILocation(line: 793, column: 12, scope: !531)
!533 = distinct !DISubprogram(name: "main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119)
!534 = !DILocation(line: 793, column: 12, scope: !533)
!535 = !DILocation(line: 758, column: 12, scope: !533)
!536 = !DILocation(line: 800, column: 12, scope: !533)
!537 = !DILocation(line: 780, column: 12, scope: !533)
!538 = !DILocation(line: 795, column: 12, scope: !533)
!539 = !DILocation(line: 796, column: 12, scope: !533)
!540 = !DILocation(line: 797, column: 12, scope: !533)
!541 = !DILocation(line: 799, column: 12, scope: !533)
!542 = distinct !DISubprogram(name: "main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120)
!543 = !DILocation(line: 802, column: 12, scope: !542)
!544 = distinct !DISubprogram(name: "main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121)
!545 = !DILocation(line: 808, column: 12, scope: !544)
!546 = distinct !DISubprogram(name: "main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122)
!547 = !DILocation(line: 808, column: 12, scope: !546)
!548 = distinct !DISubprogram(name: "main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123)
!549 = !DILocation(line: 814, column: 12, scope: !548)
!550 = distinct !DISubprogram(name: "main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !124)
!551 = !DILocation(line: 814, column: 12, scope: !550)
!552 = !DILocation(line: 793, column: 12, scope: !550)
!553 = !DILocation(line: 821, column: 12, scope: !550)
!554 = !DILocation(line: 801, column: 12, scope: !550)
!555 = !DILocation(line: 816, column: 12, scope: !550)
!556 = !DILocation(line: 817, column: 12, scope: !550)
!557 = !DILocation(line: 818, column: 12, scope: !550)
!558 = !DILocation(line: 820, column: 12, scope: !550)
!559 = distinct !DISubprogram(name: "main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125)
!560 = !DILocation(line: 823, column: 12, scope: !559)
!561 = distinct !DISubprogram(name: "main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126)
!562 = !DILocation(line: 829, column: 12, scope: !561)
!563 = distinct !DISubprogram(name: "main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127)
!564 = !DILocation(line: 829, column: 12, scope: !563)
!565 = distinct !DISubprogram(name: "main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !128)
!566 = !DILocation(line: 835, column: 12, scope: !565)
!567 = distinct !DISubprogram(name: "main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129)
!568 = !DILocation(line: 835, column: 12, scope: !567)
!569 = !DILocation(line: 814, column: 12, scope: !567)
!570 = !DILocation(line: 842, column: 12, scope: !567)
!571 = !DILocation(line: 822, column: 12, scope: !567)
!572 = !DILocation(line: 837, column: 12, scope: !567)
!573 = !DILocation(line: 838, column: 12, scope: !567)
!574 = !DILocation(line: 839, column: 12, scope: !567)
!575 = !DILocation(line: 841, column: 12, scope: !567)
!576 = distinct !DISubprogram(name: "main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130)
!577 = !DILocation(line: 844, column: 12, scope: !576)
!578 = distinct !DISubprogram(name: "main_graph$async_dispatch_55_generic_14x14x512_i8", linkageName: "main_graph$async_dispatch_55_generic_14x14x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !131)
!579 = !DILocation(line: 842, column: 12, scope: !578)
!580 = !DILocation(line: 845, column: 12, scope: !578)
!581 = distinct !DISubprogram(name: "main_graph$async_dispatch_56_slow_memcpy", linkageName: "main_graph$async_dispatch_56_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132)
!582 = !DILocation(line: 851, column: 12, scope: !581)
!583 = !DILocation(line: 853, column: 12, scope: !581)
!584 = distinct !DISubprogram(name: "main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133)
!585 = !DILocation(line: 853, column: 12, scope: !584)
!586 = distinct !DISubprogram(name: "main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134)
!587 = !DILocation(line: 853, column: 12, scope: !586)
!588 = distinct !DISubprogram(name: "main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135)
!589 = !DILocation(line: 859, column: 12, scope: !588)
!590 = distinct !DISubprogram(name: "main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136)
!591 = !DILocation(line: 845, column: 12, scope: !590)
!592 = !DILocation(line: 859, column: 12, scope: !590)
!593 = !DILocation(line: 866, column: 12, scope: !590)
!594 = !DILocation(line: 849, column: 12, scope: !590)
!595 = !DILocation(line: 861, column: 12, scope: !590)
!596 = !DILocation(line: 862, column: 12, scope: !590)
!597 = !DILocation(line: 863, column: 12, scope: !590)
!598 = !DILocation(line: 865, column: 12, scope: !590)
!599 = distinct !DISubprogram(name: "main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137)
!600 = !DILocation(line: 868, column: 12, scope: !599)
!601 = distinct !DISubprogram(name: "main_graph$async_dispatch_62_slow_memcpy", linkageName: "main_graph$async_dispatch_62_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !138)
!602 = !DILocation(line: 874, column: 12, scope: !601)
!603 = !DILocation(line: 872, column: 12, scope: !601)
!604 = distinct !DISubprogram(name: "main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !139)
!605 = !DILocation(line: 874, column: 12, scope: !604)
!606 = distinct !DISubprogram(name: "main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140)
!607 = !DILocation(line: 874, column: 12, scope: !606)
!608 = distinct !DISubprogram(name: "main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141)
!609 = !DILocation(line: 880, column: 12, scope: !608)
!610 = !DILocation(line: 845, column: 12, scope: !608)
!611 = !DILocation(line: 887, column: 12, scope: !608)
!612 = !DILocation(line: 867, column: 12, scope: !608)
!613 = !DILocation(line: 882, column: 12, scope: !608)
!614 = !DILocation(line: 883, column: 12, scope: !608)
!615 = !DILocation(line: 884, column: 12, scope: !608)
!616 = !DILocation(line: 886, column: 12, scope: !608)
!617 = distinct !DISubprogram(name: "main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !142)
!618 = !DILocation(line: 889, column: 12, scope: !617)
!619 = distinct !DISubprogram(name: "main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143)
!620 = !DILocation(line: 895, column: 12, scope: !619)
!621 = distinct !DISubprogram(name: "main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144)
!622 = !DILocation(line: 895, column: 12, scope: !621)
!623 = distinct !DISubprogram(name: "main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145)
!624 = !DILocation(line: 901, column: 12, scope: !623)
!625 = !DILocation(line: 880, column: 12, scope: !623)
!626 = !DILocation(line: 908, column: 12, scope: !623)
!627 = !DILocation(line: 888, column: 12, scope: !623)
!628 = !DILocation(line: 903, column: 12, scope: !623)
!629 = !DILocation(line: 904, column: 12, scope: !623)
!630 = !DILocation(line: 905, column: 12, scope: !623)
!631 = !DILocation(line: 907, column: 12, scope: !623)
!632 = distinct !DISubprogram(name: "main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146)
!633 = !DILocation(line: 910, column: 12, scope: !632)
!634 = distinct !DISubprogram(name: "main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147)
!635 = !DILocation(line: 916, column: 12, scope: !634)
!636 = distinct !DISubprogram(name: "main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148)
!637 = !DILocation(line: 916, column: 12, scope: !636)
!638 = distinct !DISubprogram(name: "main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149)
!639 = !DILocation(line: 922, column: 12, scope: !638)
!640 = !DILocation(line: 901, column: 12, scope: !638)
!641 = !DILocation(line: 929, column: 12, scope: !638)
!642 = !DILocation(line: 909, column: 12, scope: !638)
!643 = !DILocation(line: 924, column: 12, scope: !638)
!644 = !DILocation(line: 925, column: 12, scope: !638)
!645 = !DILocation(line: 926, column: 12, scope: !638)
!646 = !DILocation(line: 928, column: 12, scope: !638)
!647 = distinct !DISubprogram(name: "main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150)
!648 = !DILocation(line: 931, column: 12, scope: !647)
!649 = distinct !DISubprogram(name: "main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151)
!650 = !DILocation(line: 937, column: 12, scope: !649)
!651 = distinct !DISubprogram(name: "main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152)
!652 = !DILocation(line: 937, column: 12, scope: !651)
!653 = distinct !DISubprogram(name: "main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153)
!654 = !DILocation(line: 943, column: 12, scope: !653)
!655 = !DILocation(line: 922, column: 12, scope: !653)
!656 = !DILocation(line: 950, column: 12, scope: !653)
!657 = !DILocation(line: 930, column: 12, scope: !653)
!658 = !DILocation(line: 945, column: 12, scope: !653)
!659 = !DILocation(line: 946, column: 12, scope: !653)
!660 = !DILocation(line: 947, column: 12, scope: !653)
!661 = !DILocation(line: 949, column: 12, scope: !653)
!662 = distinct !DISubprogram(name: "main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154)
!663 = !DILocation(line: 952, column: 12, scope: !662)
!664 = distinct !DISubprogram(name: "main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155)
!665 = !DILocation(line: 958, column: 12, scope: !664)
!666 = distinct !DISubprogram(name: "main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156)
!667 = !DILocation(line: 958, column: 12, scope: !666)
!668 = distinct !DISubprogram(name: "main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157)
!669 = !DILocation(line: 964, column: 12, scope: !668)
!670 = !DILocation(line: 943, column: 12, scope: !668)
!671 = !DILocation(line: 971, column: 12, scope: !668)
!672 = !DILocation(line: 951, column: 12, scope: !668)
!673 = !DILocation(line: 966, column: 12, scope: !668)
!674 = !DILocation(line: 967, column: 12, scope: !668)
!675 = !DILocation(line: 968, column: 12, scope: !668)
!676 = !DILocation(line: 970, column: 12, scope: !668)
!677 = distinct !DISubprogram(name: "main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158)
!678 = !DILocation(line: 973, column: 12, scope: !677)
!679 = distinct !DISubprogram(name: "main_graph$async_dispatch_87_generic_7x7x1024_i8", linkageName: "main_graph$async_dispatch_87_generic_7x7x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159)
!680 = !DILocation(line: 971, column: 12, scope: !679)
!681 = !DILocation(line: 974, column: 12, scope: !679)
!682 = distinct !DISubprogram(name: "main_graph$async_dispatch_88_slow_memcpy", linkageName: "main_graph$async_dispatch_88_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160)
!683 = !DILocation(line: 980, column: 12, scope: !682)
!684 = !DILocation(line: 982, column: 12, scope: !682)
!685 = distinct !DISubprogram(name: "main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161)
!686 = !DILocation(line: 982, column: 12, scope: !685)
!687 = distinct !DISubprogram(name: "main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !162)
!688 = !DILocation(line: 982, column: 12, scope: !687)
!689 = distinct !DISubprogram(name: "main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163)
!690 = !DILocation(line: 988, column: 12, scope: !689)
!691 = distinct !DISubprogram(name: "main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164)
!692 = !DILocation(line: 974, column: 12, scope: !691)
!693 = !DILocation(line: 988, column: 12, scope: !691)
!694 = !DILocation(line: 995, column: 12, scope: !691)
!695 = !DILocation(line: 978, column: 12, scope: !691)
!696 = !DILocation(line: 990, column: 12, scope: !691)
!697 = !DILocation(line: 991, column: 12, scope: !691)
!698 = !DILocation(line: 992, column: 12, scope: !691)
!699 = !DILocation(line: 994, column: 12, scope: !691)
!700 = distinct !DISubprogram(name: "main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165)
!701 = !DILocation(line: 997, column: 12, scope: !700)
!702 = distinct !DISubprogram(name: "main_graph$async_dispatch_94_slow_memcpy", linkageName: "main_graph$async_dispatch_94_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166)
!703 = !DILocation(line: 1003, column: 12, scope: !702)
!704 = !DILocation(line: 1001, column: 12, scope: !702)
!705 = distinct !DISubprogram(name: "main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167)
!706 = !DILocation(line: 1003, column: 12, scope: !705)
!707 = distinct !DISubprogram(name: "main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168)
!708 = !DILocation(line: 1003, column: 12, scope: !707)
!709 = distinct !DISubprogram(name: "main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!710 = !DILocation(line: 1009, column: 13, scope: !709)
!711 = !DILocation(line: 974, column: 12, scope: !709)
!712 = !DILocation(line: 1016, column: 13, scope: !709)
!713 = !DILocation(line: 996, column: 12, scope: !709)
!714 = !DILocation(line: 1011, column: 13, scope: !709)
!715 = !DILocation(line: 1012, column: 13, scope: !709)
!716 = !DILocation(line: 1013, column: 13, scope: !709)
!717 = !DILocation(line: 1015, column: 13, scope: !709)
!718 = distinct !DISubprogram(name: "main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170)
!719 = !DILocation(line: 1018, column: 13, scope: !718)
!720 = distinct !DISubprogram(name: "main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171)
!721 = !DILocation(line: 1024, column: 13, scope: !720)
!722 = distinct !DISubprogram(name: "main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172)
!723 = !DILocation(line: 1024, column: 13, scope: !722)
!724 = distinct !DISubprogram(name: "main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173)
!725 = !DILocation(line: 1030, column: 13, scope: !724)
!726 = distinct !DISubprogram(name: "main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", linkageName: "main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174)
!727 = !DILocation(line: 1030, column: 13, scope: !726)
!728 = !DILocation(line: 1009, column: 13, scope: !726)
!729 = !DILocation(line: 1039, column: 13, scope: !726)
!730 = !DILocation(line: 1017, column: 13, scope: !726)
!731 = !DILocation(line: 1032, column: 13, scope: !726)
!732 = !DILocation(line: 1033, column: 13, scope: !726)
!733 = !DILocation(line: 1034, column: 13, scope: !726)
!734 = !DILocation(line: 1036, column: 13, scope: !726)
!735 = !DILocation(line: 1037, column: 13, scope: !726)
!736 = !DILocation(line: 1038, column: 13, scope: !726)
!737 = !DILocation(line: 1040, column: 13, scope: !726)
!738 = !DILocation(line: 1041, column: 13, scope: !726)
!739 = !DILocation(line: 1043, column: 13, scope: !726)
!740 = distinct !DISubprogram(name: "main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175)
!741 = !DILocation(line: 1045, column: 13, scope: !740)
!742 = !DILocation(line: 1046, column: 13, scope: !740)
!743 = distinct !DISubprogram(name: "main_graph$async_dispatch_105_elementwise_1000_i8xf32", linkageName: "main_graph$async_dispatch_105_elementwise_1000_i8xf32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176)
!744 = !DILocation(line: 1047, column: 13, scope: !743)
!745 = !{!746, !746, i64 0}
!746 = !{!"short", !181, i64 0}
!747 = !{!748, !748, i64 0}
!748 = !{!"float", !181, i64 0}
!749 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!750 = !{!751, !751, i64 0}
!751 = !{!"long", !181, i64 0}
!752 = !{!"branch_weights", i32 4001, i32 4000000}
!753 = !{!754, !755, i64 0}
!754 = !{!"", !755, i64 0, !755, i64 8}
!755 = !{!"double", !181, i64 0}
!756 = !{!754, !755, i64 8}
!757 = !{!"branch_weights", !"expected", i32 1, i32 2000}
