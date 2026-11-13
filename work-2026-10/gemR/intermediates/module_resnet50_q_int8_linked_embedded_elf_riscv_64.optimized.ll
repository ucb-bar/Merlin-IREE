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
  %10 = shl nuw nsw i64 %9, 3, !dbg !259
  br label %.preheader, !dbg !259

.preheader:                                       ; preds = %3, %21
  %11 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %12 = add nuw nsw i64 %11, %10
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
  %22 = add nuw nsw i64 %11, 1, !dbg !259
  %exitcond23.not = icmp eq i64 %22, 8, !dbg !259
  br i1 %exitcond23.not, label %23, label %.preheader, !dbg !259

23:                                               ; preds = %21
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !261
  %12 = and i64 %11, 34359738336, !dbg !261
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
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !261
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !263
  %12 = and i64 %11, 34359738336, !dbg !263
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
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !263
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
  %11 = shl nuw nsw i64 %10, 5, !dbg !265
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
  %exitcond23.not = icmp eq i64 %23, 32, !dbg !265
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !267
  %12 = and i64 %11, 34359738336, !dbg !267
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
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !267
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
  %11 = shl nuw nsw i64 %10, 5, !dbg !269
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
  %exitcond23.not = icmp eq i64 %23, 32, !dbg !269
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !271
  %12 = and i64 %11, 34359738336, !dbg !271
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
  %exitcond23.not = icmp eq i64 %27, 32, !dbg !271
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
  %11 = shl nuw nsw i64 %10, 5, !dbg !273
  %12 = and i64 %11, 137438953408, !dbg !273
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !273
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !277
  %12 = and i64 %11, 34359738304, !dbg !277
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !277
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
  %11 = shl nuw nsw i64 %10, 5, !dbg !279
  %12 = and i64 %11, 137438953408, !dbg !279
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !279
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !281
  %12 = and i64 %11, 34359738304, !dbg !281
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !281
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
  %11 = shl nuw nsw i64 %10, 5, !dbg !283
  %12 = and i64 %11, 137438953408, !dbg !283
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !283
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !285
  %12 = and i64 %11, 34359738304, !dbg !285
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !285
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
  %11 = shl nuw nsw i64 %10, 5, !dbg !287
  %12 = and i64 %11, 137438953408, !dbg !287
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !287
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
  %11 = shl nuw nsw i64 %10, 3, !dbg !289
  %12 = and i64 %11, 34359738304, !dbg !289
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
  %exitcond23.not = icmp eq i64 %27, 64, !dbg !289
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !363
  %13 = shl nuw nsw i64 %10, 6, !dbg !363
  %14 = and i64 %13, 192, !dbg !363
  br label %.preheader, !dbg !363

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !363

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !363
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !363
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !363
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !363
  store <2 x i32> %22, ptr %23, align 8, !dbg !363
  %24 = add nuw nsw i64 %19, 2, !dbg !363
  %25 = icmp samesign ult i64 %19, 62, !dbg !363
  br i1 %25, label %18, label %26, !dbg !363

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !363
  %exitcond.not = icmp eq i64 %27, 98, !dbg !363
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !363

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !367
  %13 = shl nuw nsw i64 %10, 6, !dbg !367
  %14 = and i64 %13, 192, !dbg !367
  br label %.preheader, !dbg !367

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !367

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !367
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !367
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !367
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !367
  store <2 x i32> %22, ptr %23, align 8, !dbg !367
  %24 = add nuw nsw i64 %19, 2, !dbg !367
  %25 = icmp samesign ult i64 %19, 62, !dbg !367
  br i1 %25, label %18, label %26, !dbg !367

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !367
  %exitcond.not = icmp eq i64 %27, 98, !dbg !367
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !367

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !369
  %13 = shl nuw nsw i64 %10, 6, !dbg !369
  %14 = and i64 %13, 192, !dbg !369
  br label %.preheader, !dbg !369

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !369

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !369
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !369
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !369
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !369
  store <2 x i32> %22, ptr %23, align 8, !dbg !369
  %24 = add nuw nsw i64 %19, 2, !dbg !369
  %25 = icmp samesign ult i64 %19, 62, !dbg !369
  br i1 %25, label %18, label %26, !dbg !369

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !369
  %exitcond.not = icmp eq i64 %27, 98, !dbg !369
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !369

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !373
  %13 = shl nuw nsw i64 %10, 6, !dbg !373
  %14 = and i64 %13, 192, !dbg !373
  br label %.preheader, !dbg !373

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !373

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !373
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !373
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !373
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !373
  store <2 x i32> %22, ptr %23, align 8, !dbg !373
  %24 = add nuw nsw i64 %19, 2, !dbg !373
  %25 = icmp samesign ult i64 %19, 62, !dbg !373
  br i1 %25, label %18, label %26, !dbg !373

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !373
  %exitcond.not = icmp eq i64 %27, 98, !dbg !373
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !373

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !375
  %13 = shl nuw nsw i64 %10, 6, !dbg !375
  %14 = and i64 %13, 192, !dbg !375
  br label %.preheader, !dbg !375

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !375

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !375
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !375
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !375
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !375
  store <2 x i32> %22, ptr %23, align 8, !dbg !375
  %24 = add nuw nsw i64 %19, 2, !dbg !375
  %25 = icmp samesign ult i64 %19, 62, !dbg !375
  br i1 %25, label %18, label %26, !dbg !375

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !375
  %exitcond.not = icmp eq i64 %27, 98, !dbg !375
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !375

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !379
  %13 = shl nuw nsw i64 %10, 6, !dbg !379
  %14 = and i64 %13, 192, !dbg !379
  br label %.preheader, !dbg !379

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !379

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !379
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !379
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !379
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !379
  store <2 x i32> %22, ptr %23, align 8, !dbg !379
  %24 = add nuw nsw i64 %19, 2, !dbg !379
  %25 = icmp samesign ult i64 %19, 62, !dbg !379
  br i1 %25, label %18, label %26, !dbg !379

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !379
  %exitcond.not = icmp eq i64 %27, 98, !dbg !379
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !379

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !381
  %13 = shl nuw nsw i64 %10, 6, !dbg !381
  %14 = and i64 %13, 192, !dbg !381
  br label %.preheader, !dbg !381

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !381

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !381
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !381
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !381
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !381
  store <2 x i32> %22, ptr %23, align 8, !dbg !381
  %24 = add nuw nsw i64 %19, 2, !dbg !381
  %25 = icmp samesign ult i64 %19, 62, !dbg !381
  br i1 %25, label %18, label %26, !dbg !381

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !381
  %exitcond.not = icmp eq i64 %27, 98, !dbg !381
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !381

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !385
  %13 = shl nuw nsw i64 %10, 6, !dbg !385
  %14 = and i64 %13, 192, !dbg !385
  br label %.preheader, !dbg !385

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !385

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !385
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !385
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !385
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !385
  store <2 x i32> %22, ptr %23, align 8, !dbg !385
  %24 = add nuw nsw i64 %19, 2, !dbg !385
  %25 = icmp samesign ult i64 %19, 62, !dbg !385
  br i1 %25, label %18, label %26, !dbg !385

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !385
  %exitcond.not = icmp eq i64 %27, 98, !dbg !385
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !385

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !387
  %13 = shl nuw nsw i64 %10, 6, !dbg !387
  %14 = and i64 %13, 192, !dbg !387
  br label %.preheader, !dbg !387

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !387

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !387
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !387
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !387
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !387
  store <2 x i32> %22, ptr %23, align 8, !dbg !387
  %24 = add nuw nsw i64 %19, 2, !dbg !387
  %25 = icmp samesign ult i64 %19, 62, !dbg !387
  br i1 %25, label %18, label %26, !dbg !387

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !387
  %exitcond.not = icmp eq i64 %27, 98, !dbg !387
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !387

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !391
  %13 = shl nuw nsw i64 %10, 6, !dbg !391
  %14 = and i64 %13, 192, !dbg !391
  br label %.preheader, !dbg !391

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !391

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !391
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !391
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !391
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !391
  store <2 x i32> %22, ptr %23, align 8, !dbg !391
  %24 = add nuw nsw i64 %19, 2, !dbg !391
  %25 = icmp samesign ult i64 %19, 62, !dbg !391
  br i1 %25, label %18, label %26, !dbg !391

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !391
  %exitcond.not = icmp eq i64 %27, 98, !dbg !391
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !391

28:                                               ; preds = %26
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
  %12 = mul nuw nsw i64 %11, 98, !dbg !393
  %13 = shl nuw nsw i64 %10, 6, !dbg !393
  %14 = and i64 %13, 192, !dbg !393
  br label %.preheader, !dbg !393

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !393

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !393
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !393
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !393
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !393
  store <2 x i32> %22, ptr %23, align 8, !dbg !393
  %24 = add nuw nsw i64 %19, 2, !dbg !393
  %25 = icmp samesign ult i64 %19, 62, !dbg !393
  br i1 %25, label %18, label %26, !dbg !393

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !393
  %exitcond.not = icmp eq i64 %27, 98, !dbg !393
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !393

28:                                               ; preds = %26
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
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !417
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !417
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !417
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !417
  %5 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !418
  %6 = load ptr, ptr %5, align 8, !dbg !418
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !418
  %7 = load i32, ptr %2, align 16, !dbg !417
  %8 = zext i32 %7 to i64, !dbg !417
  %9 = lshr i64 %8, 2, !dbg !417
  %10 = and i64 %8, 3, !dbg !417
  %11 = mul nuw nsw i64 %9, 56, !dbg !417
  %12 = mul nuw nsw i64 %10, 56, !dbg !417
  %13 = or disjoint i64 %12, 1
  br label %.preheader, !dbg !417

.preheader:                                       ; preds = %3, %79
  %14 = phi i64 [ 0, %3 ], [ %80, %79 ]
  %.idx = mul nuw nsw i64 %14, 200704
  %15 = getelementptr i8, ptr %4, i64 %.idx
  br label %16, !dbg !417

16:                                               ; preds = %.preheader, %77
  %17 = phi i64 [ 0, %.preheader ], [ %78, %77 ]
  %18 = add nuw nsw i64 %17, %11, !dbg !417
  %.idx24 = mul nuw nsw i64 %18, 896
  %19 = getelementptr i8, ptr %15, i64 %.idx24
  %20 = mul nuw nsw i64 %18, 690
  %21 = getelementptr i8, ptr %6, i64 %20
  %22 = getelementptr i8, ptr %21, i64 2070
  br label %23, !dbg !417

23:                                               ; preds = %16, %23
  %24 = phi i64 [ 0, %16 ], [ %75, %23 ]
  %25 = add nuw nsw i64 %24, %12, !dbg !417
  %26 = getelementptr [4 x i8], ptr %19, i64 %25, !dbg !417
  %27 = load <2 x float>, ptr %26, align 8, !dbg !417
  %28 = fdiv <2 x float> %27, splat (float 0x3FA264FD40000000), !dbg !417
  %29 = bitcast <2 x float> %28 to <2 x i32>, !dbg !417
  %30 = tail call <2 x float> @llvm.round.v2f32(<2 x float> %28), !dbg !417
  %31 = bitcast <2 x float> %30 to <2 x i32>, !dbg !417
  %32 = lshr <2 x i32> %29, splat (i32 23), !dbg !417
  %33 = and <2 x i32> %32, splat (i32 255), !dbg !417
  %34 = add nsw <2 x i32> %33, splat (i32 -127), !dbg !417
  %35 = lshr <2 x i32> %31, splat (i32 23), !dbg !417
  %36 = and <2 x i32> %35, splat (i32 255), !dbg !417
  %37 = icmp eq <2 x i32> %36, splat (i32 127), !dbg !417
  %38 = tail call <2 x i32> @llvm.usub.sat.v2i32(<2 x i32> %36, <2 x i32> splat (i32 128)), !dbg !417
  %39 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %38, <2 x i32> splat (i32 31)), !dbg !417
  %40 = lshr <2 x i32> splat (i32 8388607), %39, !dbg !417
  %41 = and <2 x i32> %40, %31, !dbg !417
  %42 = icmp ne <2 x i32> %41, zeroinitializer, !dbg !417
  %43 = or <2 x i1> %37, %42, !dbg !417
  %44 = icmp eq <2 x i32> %34, splat (i32 -1), !dbg !417
  %45 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %34, <2 x i32> zeroinitializer), !dbg !417
  %46 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %45, <2 x i32> splat (i32 31)), !dbg !417
  %47 = lshr <2 x i32> splat (i32 4194304), %46, !dbg !417
  %48 = select <2 x i1> %44, <2 x i32> zeroinitializer, <2 x i32> %47, !dbg !417
  %49 = lshr <2 x i32> splat (i32 8388607), %46, !dbg !417
  %50 = and <2 x i32> %49, %29, !dbg !417
  %51 = icmp eq <2 x i32> %50, %48, !dbg !417
  %52 = add nsw <2 x i32> %33, splat (i32 -126), !dbg !417
  %53 = icmp ult <2 x i32> %52, splat (i32 24), !dbg !417
  %54 = and <2 x i1> %53, %51, !dbg !417
  %55 = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %28), !dbg !417
  %56 = fsub contract <2 x float> %30, %55, !dbg !417
  %57 = and <2 x i1> %43, %54, !dbg !417
  %58 = select <2 x i1> %57, <2 x float> %56, <2 x float> %30, !dbg !417
  %59 = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %58, <2 x float> %28), !dbg !417
  %60 = fadd contract <2 x float> %59, zeroinitializer, !dbg !417
  %.inv = fcmp ole <2 x float> %60, splat (float -1.280000e+02), !dbg !417
  %61 = select <2 x i1> %.inv, <2 x float> splat (float -1.280000e+02), <2 x float> %60, !dbg !417
  %.inv25 = fcmp oge <2 x float> %61, splat (float 1.270000e+02), !dbg !417
  %62 = select <2 x i1> %.inv25, <2 x float> splat (float 1.270000e+02), <2 x float> %61, !dbg !417
  %63 = fptosi <2 x float> %62 to <2 x i8>, !dbg !417
  %64 = shufflevector <2 x i8> %63, <2 x i8> poison, <1 x i32> zeroinitializer, !dbg !417
  %65 = shufflevector <2 x i8> %63, <2 x i8> poison, <1 x i32> <i32 1>, !dbg !417
  %66 = mul nuw nsw i64 %25, 3, !dbg !417
  %67 = getelementptr i8, ptr %22, i64 %66, !dbg !417
  %68 = getelementptr i8, ptr %67, i64 9, !dbg !417
  %69 = getelementptr i8, ptr %68, i64 %14, !dbg !417
  store <1 x i8> %64, ptr %69, align 1, !dbg !417
  %70 = add nuw nsw i64 %13, %24, !dbg !417
  %71 = mul nuw nsw i64 %70, 3, !dbg !417
  %72 = getelementptr i8, ptr %22, i64 %71, !dbg !417
  %73 = getelementptr i8, ptr %72, i64 9, !dbg !417
  %74 = getelementptr i8, ptr %73, i64 %14, !dbg !417
  store <1 x i8> %65, ptr %74, align 1, !dbg !417
  %75 = add nuw nsw i64 %24, 2, !dbg !417
  %76 = icmp samesign ult i64 %24, 54, !dbg !417
  br i1 %76, label %23, label %77, !dbg !417

77:                                               ; preds = %23
  %78 = add nuw nsw i64 %17, 1, !dbg !417
  %exitcond.not = icmp eq i64 %78, 56, !dbg !417
  br i1 %exitcond.not, label %79, label %16, !dbg !417

79:                                               ; preds = %77
  %80 = add nuw nsw i64 %14, 1, !dbg !417
  %exitcond26.not = icmp eq i64 %80, 3, !dbg !417
  br i1 %exitcond26.not, label %81, label %.preheader, !dbg !417

81:                                               ; preds = %79
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
  %12 = mul nuw nsw i64 %10, 28, !dbg !423
  %13 = mul nuw nsw i64 %11, 28, !dbg !423
  %14 = mul nuw nsw i64 %10, 56
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
  %exitcond29.not = icmp eq i64 %55, 28, !dbg !423
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
  %17 = ptrtoint ptr %4 to i64, !dbg !425
  %18 = add i64 %17, 3369984, !dbg !425
  %19 = ptrtoint ptr %6 to i64, !dbg !425
  %20 = add i64 %19, 4288, !dbg !425
  %21 = ptrtoint ptr %16 to i64, !dbg !425
  %22 = add i64 %17, 158720, !dbg !425
  %23 = and i64 %18, 9223372036854775807, !dbg !425
  %24 = and i64 %20, 9223372036854775807, !dbg !425
  %25 = and i64 %21, 9223372036854775807, !dbg !425
  %26 = and i64 %22, 9223372036854775807, !dbg !425
  call void asm sideeffect "fence", ""() #14, !dbg !425
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !425
  call void @llvm.riscv.config(i64 2, i64 4278046838545711120), !dbg !425
  call void @llvm.riscv.config(i64 4575657221409472769, i64 147), !dbg !425
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !425
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !425
  call void @llvm.riscv.loop.ws.config.bounds(i64 55834574848, i64 42949738497), !dbg !425
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !425
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !425
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 147, i64 16), !dbg !425
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !425
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !425
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !425
  call void asm sideeffect "fence", ""() #14, !dbg !425
  %27 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %15
  br label %.preheader, !dbg !426

.preheader:                                       ; preds = %3, %71
  %28 = phi i64 [ 0, %3 ], [ %72, %71 ]
  %29 = shl nuw nsw i64 %28, 4
  %30 = getelementptr inbounds nuw i8, ptr %16, i64 %29
  %31 = add nuw nsw i64 %28, %13
  %.idx = shl nuw nsw i64 %31, 8
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 %.idx
  br label %33, !dbg !426

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %70, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %30, i64 %34, !dbg !426
  %36 = load i8, ptr %35, align 1, !dbg !426
  %37 = call i8 @llvm.smax.i8(i8 %36, i8 0), !dbg !427
  %38 = uitofp nneg i8 %37 to float, !dbg !427
  %39 = bitcast float %38 to i32, !dbg !428
  %40 = lshr i32 %39, 23, !dbg !428
  %41 = add nsw i32 %40, -127, !dbg !428
  %42 = icmp eq i32 %41, 0, !dbg !428
  %43 = call i32 @llvm.usub.sat.i32(i32 %40, i32 128), !dbg !428
  %44 = call i32 @llvm.umin.i32(i32 %43, i32 31), !dbg !428
  %45 = lshr i32 8388607, %44, !dbg !428
  %46 = and i32 %45, %39, !dbg !428
  %47 = icmp ne i32 %46, 0, !dbg !428
  %48 = or i1 %42, %47, !dbg !428
  %49 = icmp eq i32 %41, -1, !dbg !428
  %50 = call i32 @llvm.smax.i32(i32 %41, i32 0), !dbg !428
  %51 = call i32 @llvm.umin.i32(i32 %50, i32 31), !dbg !428
  %52 = lshr i32 4194304, %51, !dbg !428
  %53 = select i1 %49, i32 0, i32 %52, !dbg !428
  %54 = lshr i32 8388607, %51, !dbg !428
  %55 = and i32 %54, %39, !dbg !428
  %56 = icmp eq i32 %55, %53, !dbg !428
  %57 = add nsw i32 %39, -1056964608, !dbg !428
  %58 = icmp ult i32 %57, 201326592, !dbg !428
  %59 = and i1 %58, %56, !dbg !428
  %60 = add nsw i8 %37, -1, !dbg !428
  %61 = sitofp i8 %60 to float, !dbg !428
  %62 = and i1 %48, %59, !dbg !428
  %63 = call float @llvm.fabs.f32(float %61), !dbg !428
  %64 = select i1 %62, float %63, float %38, !dbg !428
  %.inv = fcmp oge float %64, 1.270000e+02, !dbg !428
  %65 = select i1 %.inv, float 1.270000e+02, float %64, !dbg !428
  %66 = fptosi float %65 to i8, !dbg !428
  %67 = sitofp i8 %66 to float, !dbg !426
  %68 = fmul nnan contract float %67, 0x3FD76BBD60000000, !dbg !426
  %69 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %34, !dbg !426
  store float %68, ptr %69, align 4, !dbg !426
  %70 = add nuw nsw i64 %34, 1, !dbg !426
  %exitcond.not = icmp eq i64 %70, 16, !dbg !426
  br i1 %exitcond.not, label %71, label %33, !dbg !426

71:                                               ; preds = %33
  %72 = add nuw nsw i64 %28, 1, !dbg !426
  %exitcond23.not = icmp eq i64 %72, 16, !dbg !426
  br i1 %exitcond23.not, label %73, label %.preheader, !dbg !426

73:                                               ; preds = %71
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
  %10 = lshr i32 %9, 1, !dbg !431
  %11 = zext nneg i32 %10 to i64, !dbg !431
  %12 = mul nuw nsw i64 %11, 28, !dbg !431
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
  %exitcond27.not = icmp eq i64 %34, 28, !dbg !431
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
  %13 = shl nuw nsw i64 %9, 3, !dbg !433
  %14 = and i64 %13, 34359738336, !dbg !433
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
  %exitcond40.not = icmp eq i64 %98, 32, !dbg !433
  br i1 %exitcond40.not, label %99, label %20, !dbg !433

99:                                               ; preds = %97
  ret i32 0, !dbg !433
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_6_matmul_3136x64x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !435 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !436
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !436
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !436
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !436
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !436
  %6 = load ptr, ptr %5, align 8, !dbg !436
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !436
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !436
  %8 = load ptr, ptr %7, align 8, !dbg !436
  %9 = ptrtoint ptr %4 to i64, !dbg !436
  %10 = ptrtoint ptr %6 to i64, !dbg !436
  %11 = ptrtoint ptr %8 to i64, !dbg !436
  %12 = add i64 %11, 200704, !dbg !436
  %13 = add i64 %10, 14176256, !dbg !436
  %14 = and i64 %9, 9223372036854775744, !dbg !436
  %15 = and i64 %10, 9223372036854775744, !dbg !436
  %16 = and i64 %12, 9223372036854775807, !dbg !436
  %17 = and i64 %13, 9223372036854775744, !dbg !436
  tail call void asm sideeffect "fence", ""() #14, !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !436
  tail call void @llvm.riscv.config(i64 6, i64 4373150234956529680), !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !436
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %14, i64 %15), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %17, i64 %16), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 16), !dbg !436
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !436
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
  %16 = shl nuw nsw i64 %15, 3, !dbg !441
  br label %.preheader23, !dbg !441

.preheader23:                                     ; preds = %3, %37
  %17 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %18 = add nuw nsw i64 %17, %16
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
  %38 = add nuw nsw i64 %17, 1, !dbg !441
  %exitcond24.not = icmp eq i64 %38, 8, !dbg !441
  br i1 %exitcond24.not, label %39, label %.preheader23, !dbg !441

39:                                               ; preds = %37
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
  %11 = lshr i64 %10, 2, !dbg !443
  %12 = mul nuw nsw i64 %11, 28, !dbg !443
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
  %exitcond30.not = icmp eq i64 %59, 28, !dbg !443
  br i1 %exitcond30.not, label %60, label %.preheader26, !dbg !443

60:                                               ; preds = %58
  ret i32 0, !dbg !443
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_10_matmul_3136x64x576_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !444 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !445
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !445
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !445
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !445
  %6 = load ptr, ptr %5, align 8, !dbg !445
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !445
  %8 = load ptr, ptr %7, align 8, !dbg !445
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !445
  %10 = load ptr, ptr %9, align 8, !dbg !445
  %11 = ptrtoint ptr %4 to i64, !dbg !445
  %12 = add i64 %11, 3827968, !dbg !445
  %13 = ptrtoint ptr %6 to i64, !dbg !445
  %14 = add i64 %13, 14720, !dbg !445
  %15 = ptrtoint ptr %10 to i64, !dbg !445
  %16 = add i64 %15, 200704, !dbg !445
  %17 = ptrtoint ptr %8 to i64, !dbg !445
  %18 = add i64 %17, 14979072, !dbg !445
  %19 = and i64 %12, 9223372036854775807, !dbg !445
  %20 = and i64 %14, 9223372036854775807, !dbg !445
  %21 = and i64 %16, 9223372036854775807, !dbg !445
  %22 = and i64 %18, 9223372036854775807, !dbg !445
  tail call void asm sideeffect "fence", ""() #14, !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !445
  tail call void @llvm.riscv.config(i64 6, i64 4300889321461776400), !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !445
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %19, i64 %20), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %22, i64 %21), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 16), !dbg !445
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !445
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
define internal noundef i32 @"main_graph$async_dispatch_12_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !448 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !449
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !449
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !449
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !450
  %6 = load ptr, ptr %5, align 8, !dbg !450
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !450
  %8 = load ptr, ptr %7, align 8, !dbg !450
  %9 = ptrtoint ptr %4 to i64, !dbg !450
  %10 = add i64 %9, 200704, !dbg !450
  %11 = ptrtoint ptr %6 to i64, !dbg !450
  %12 = add i64 %11, 20480, !dbg !450
  %13 = ptrtoint ptr %8 to i64, !dbg !450
  %14 = add i64 %13, 3612672, !dbg !450
  %15 = add i64 %9, 5634304, !dbg !450
  %16 = and i64 %10, 9223372036854775807, !dbg !450
  %17 = and i64 %12, 9223372036854775807, !dbg !450
  %18 = and i64 %14, 9223372036854775807, !dbg !450
  %19 = and i64 %15, 9223372036854775807, !dbg !450
  tail call void asm sideeffect "fence", ""() #14, !dbg !450
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !450
  tail call void @llvm.riscv.config(i64 2, i64 4369228045052018704), !dbg !450
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !450
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !450
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !450
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !450
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %16, i64 %17), !dbg !450
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %19, i64 %18), !dbg !450
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 16), !dbg !450
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !450
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !450
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !450
  tail call void asm sideeffect "fence", ""() #14, !dbg !450
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !450
  ret i32 0, !dbg !450
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !451 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !452
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !452
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !452
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !452
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !453
  %6 = load ptr, ptr %5, align 8, !dbg !453
  %7 = getelementptr i8, ptr %4, i64 3612672, !dbg !454
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !454
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !453
  %9 = load ptr, ptr %8, align 8, !dbg !453
  %10 = getelementptr i8, ptr %9, i64 4415488, !dbg !453
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !453
  %11 = load i32, ptr %2, align 16, !dbg !453
  %12 = zext i32 %11 to i64, !dbg !453
  %13 = and i64 %12, 4294967280, !dbg !453
  %14 = shl nuw nsw i64 %12, 4, !dbg !453
  %15 = and i64 %14, 240, !dbg !453
  %16 = alloca [256 x i8], align 1, !dbg !453
  %17 = ptrtoint ptr %4 to i64, !dbg !453
  %18 = ptrtoint ptr %6 to i64, !dbg !453
  %19 = add i64 %18, 4096, !dbg !453
  %20 = ptrtoint ptr %16 to i64, !dbg !453
  %21 = add i64 %17, 401408, !dbg !453
  %22 = and i64 %17, 9223372036854775744, !dbg !453
  %23 = and i64 %19, 9223372036854775807, !dbg !453
  %24 = and i64 %20, 9223372036854775807, !dbg !453
  %25 = and i64 %21, 9223372036854775744, !dbg !453
  call void asm sideeffect "fence", ""() #14, !dbg !453
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !453
  call void @llvm.riscv.config(i64 2, i64 4362042388672151568), !dbg !453
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !453
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !453
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !453
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !453
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !453
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %25, i64 %24), !dbg !453
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 16), !dbg !453
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !453
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !453
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !453
  call void asm sideeffect "fence", ""() #14, !dbg !453
  br label %.preheader, !dbg !455

.preheader:                                       ; preds = %3, %112
  %26 = phi i64 [ 0, %3 ], [ %113, %112 ]
  %27 = add nuw nsw i64 %26, %13
  %28 = shl nuw nsw i64 %27, 8
  %29 = or disjoint i64 %28, %15
  %30 = shl nuw nsw i64 %26, 4
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 %30
  br label %32, !dbg !455

32:                                               ; preds = %.preheader, %32
  %33 = phi i64 [ 0, %.preheader ], [ %111, %32 ]
  %34 = add nuw nsw i64 %33, %29, !dbg !455
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 %34, !dbg !455
  %36 = load i8, ptr %35, align 1, !dbg !455
  %37 = getelementptr inbounds nuw i8, ptr %31, i64 %33, !dbg !455
  %38 = load i8, ptr %37, align 1, !dbg !455
  %39 = sitofp i8 %38 to float, !dbg !456
  %40 = fmul nnan contract float %39, 0x3FD655CE20000000, !dbg !456
  %41 = sitofp i8 %36 to float, !dbg !457
  %42 = fmul nnan contract float %41, 0x3FC2362F20000000, !dbg !457
  %43 = fadd contract float %42, %40, !dbg !458
  %44 = fdiv float %43, 0x3FC6854B40000000, !dbg !459
  %45 = bitcast float %44 to i32, !dbg !459
  %46 = call float @llvm.round.f32(float %44), !dbg !459
  %47 = bitcast float %46 to i32, !dbg !459
  %48 = lshr i32 %45, 23, !dbg !459
  %49 = and i32 %48, 255, !dbg !459
  %50 = add nsw i32 %49, -127, !dbg !459
  %51 = lshr i32 %47, 23, !dbg !459
  %52 = and i32 %51, 255, !dbg !459
  %53 = icmp eq i32 %52, 127, !dbg !459
  %54 = call i32 @llvm.usub.sat.i32(i32 %52, i32 128), !dbg !459
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 31), !dbg !459
  %56 = lshr i32 8388607, %55, !dbg !459
  %57 = and i32 %56, %47, !dbg !459
  %58 = icmp ne i32 %57, 0, !dbg !459
  %59 = or i1 %53, %58, !dbg !459
  %60 = icmp eq i32 %50, -1, !dbg !459
  %61 = call i32 @llvm.smax.i32(i32 %50, i32 0), !dbg !459
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 31), !dbg !459
  %63 = lshr i32 4194304, %62, !dbg !459
  %64 = select i1 %60, i32 0, i32 %63, !dbg !459
  %65 = lshr i32 8388607, %62, !dbg !459
  %66 = and i32 %65, %45, !dbg !459
  %67 = icmp eq i32 %66, %64, !dbg !459
  %68 = add nsw i32 %49, -126, !dbg !459
  %69 = icmp ult i32 %68, 24, !dbg !459
  %70 = and i1 %69, %67, !dbg !459
  %71 = call float @llvm.copysign.f32(float 1.000000e+00, float %44), !dbg !459
  %72 = and i1 %59, %70, !dbg !459
  %73 = select i1 %72, float %71, float 0.000000e+00, !dbg !459
  %74 = fsub contract float %46, %73, !dbg !459
  %75 = call float @llvm.copysign.f32(float %74, float %44), !dbg !459
  %76 = fadd contract float %75, 0.000000e+00, !dbg !459
  %.inv = fcmp ole float %76, -1.280000e+02, !dbg !459
  %77 = select i1 %.inv, float -1.280000e+02, float %76, !dbg !459
  %.inv23 = fcmp oge float %77, 1.270000e+02, !dbg !459
  %78 = select i1 %.inv23, float 1.270000e+02, float %77, !dbg !459
  %79 = fptosi float %78 to i8, !dbg !459
  %80 = call i8 @llvm.smax.i8(i8 %79, i8 0), !dbg !460
  %81 = uitofp nneg i8 %80 to float, !dbg !460
  %82 = bitcast float %81 to i32, !dbg !455
  %83 = lshr i32 %82, 23, !dbg !455
  %84 = add nsw i32 %83, -127, !dbg !455
  %85 = icmp eq i32 %84, 0, !dbg !455
  %86 = call i32 @llvm.usub.sat.i32(i32 %83, i32 128), !dbg !455
  %87 = call i32 @llvm.umin.i32(i32 %86, i32 31), !dbg !455
  %88 = lshr i32 8388607, %87, !dbg !455
  %89 = and i32 %88, %82, !dbg !455
  %90 = icmp ne i32 %89, 0, !dbg !455
  %91 = or i1 %85, %90, !dbg !455
  %92 = icmp eq i32 %84, -1, !dbg !455
  %93 = call i32 @llvm.smax.i32(i32 %84, i32 0), !dbg !455
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 31), !dbg !455
  %95 = lshr i32 4194304, %94, !dbg !455
  %96 = select i1 %92, i32 0, i32 %95, !dbg !455
  %97 = lshr i32 8388607, %94, !dbg !455
  %98 = and i32 %97, %82, !dbg !455
  %99 = icmp eq i32 %98, %96, !dbg !455
  %100 = add nsw i32 %82, -1056964608, !dbg !455
  %101 = icmp ult i32 %100, 201326592, !dbg !455
  %102 = and i1 %101, %99, !dbg !455
  %103 = add nsw i8 %80, -1, !dbg !455
  %104 = sitofp i8 %103 to float, !dbg !455
  %105 = and i1 %91, %102, !dbg !455
  %106 = call float @llvm.fabs.f32(float %104), !dbg !455
  %107 = select i1 %105, float %106, float %81, !dbg !455
  %.inv24 = fcmp oge float %107, 1.270000e+02, !dbg !455
  %108 = select i1 %.inv24, float 1.270000e+02, float %107, !dbg !455
  %109 = fptosi float %108 to i8, !dbg !455
  %110 = getelementptr inbounds nuw i8, ptr %10, i64 %34, !dbg !455
  store i8 %109, ptr %110, align 1, !dbg !455
  %111 = add nuw nsw i64 %33, 1, !dbg !455
  %exitcond.not = icmp eq i64 %111, 16, !dbg !455
  br i1 %exitcond.not, label %112, label %32, !dbg !455

112:                                              ; preds = %32
  %113 = add nuw nsw i64 %26, 1, !dbg !455
  %exitcond25.not = icmp eq i64 %113, 16, !dbg !455
  br i1 %exitcond25.not, label %114, label %.preheader, !dbg !455

114:                                              ; preds = %112
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !453
  ret i32 0, !dbg !453
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !461 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !462
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !462
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !462
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !463
  %6 = load ptr, ptr %5, align 8, !dbg !463
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !463
  %8 = load ptr, ptr %7, align 8, !dbg !463
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !463
  %9 = ptrtoint ptr %4 to i64, !dbg !463
  %10 = add i64 %9, 4415488, !dbg !463
  %11 = ptrtoint ptr %6 to i64, !dbg !463
  %12 = add i64 %11, 36864, !dbg !463
  %13 = ptrtoint ptr %8 to i64, !dbg !463
  %14 = add i64 %11, 15781888, !dbg !463
  %15 = and i64 %10, 9223372036854775807, !dbg !463
  %16 = and i64 %12, 9223372036854775807, !dbg !463
  %17 = and i64 %13, 9223372036854775744, !dbg !463
  %18 = and i64 %14, 9223372036854775807, !dbg !463
  tail call void asm sideeffect "fence", ""() #14, !dbg !463
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !463
  tail call void @llvm.riscv.config(i64 6, i64 4403959177832038416), !dbg !463
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !463
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !463
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !463
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !463
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !463
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !463
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !463
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !463
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !463
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !463
  tail call void asm sideeffect "fence", ""() #14, !dbg !463
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !463
  ret i32 0, !dbg !463
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_16_generic_56x56x3x3x64_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !464 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !465
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !465
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !465
  %5 = getelementptr i8, ptr %4, i64 200704, !dbg !465
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !465
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !465
  %7 = load ptr, ptr %6, align 8, !dbg !465
  %8 = getelementptr i8, ptr %7, i64 416000, !dbg !465
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !465
  %9 = load i32, ptr %2, align 16, !dbg !465
  %10 = zext i32 %9 to i64, !dbg !465
  %11 = lshr i64 %10, 2, !dbg !465
  %12 = mul nuw nsw i64 %11, 28, !dbg !465
  %13 = and i64 %10, 2, !dbg !465
  %.not = icmp eq i64 %13, 0, !dbg !465
  %14 = select i1 %.not, i64 0, i64 28, !dbg !465
  %15 = shl nuw nsw i64 %10, 5, !dbg !465
  %16 = and i64 %15, 32, !dbg !465
  br label %.preheader26, !dbg !465

.preheader26:                                     ; preds = %3, %58
  %17 = phi i64 [ 0, %3 ], [ %59, %58 ]
  %18 = add nuw nsw i64 %17, %12
  %19 = mul nuw nsw i64 %18, 32256
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %19
  br label %.preheader, !dbg !465

.preheader:                                       ; preds = %.preheader26, %56
  %21 = phi i64 [ 0, %.preheader26 ], [ %57, %56 ]
  %22 = add nuw nsw i64 %21, %14
  %23 = mul nuw nsw i64 %22, 576
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  br label %25, !dbg !465

25:                                               ; preds = %.preheader, %54
  %26 = phi i64 [ 0, %.preheader ], [ %55, %54 ]
  %27 = add nuw nsw i64 %18, %26, !dbg !465
  %28 = mul nuw nsw i64 %27, 3712
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %28
  %30 = mul nuw nsw i64 %26, 192
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !465

32:                                               ; preds = %25, %52
  %33 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %34 = add nuw nsw i64 %22, %33, !dbg !465
  %35 = shl nuw nsw i64 %34, 6
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 %35
  %37 = shl nuw nsw i64 %33, 6
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 %37
  br label %39, !dbg !465

39:                                               ; preds = %32, %49
  %40 = phi i64 [ 0, %32 ], [ %50, %49 ]
  %41 = or disjoint i64 %40, %16, !dbg !465
  br label %42, !dbg !465

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %48, %42 ]
  %44 = or disjoint i64 %41, %43, !dbg !465
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 %44, !dbg !465
  %46 = load i8, ptr %45, align 1, !dbg !465
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 %44, !dbg !465
  store i8 %46, ptr %47, align 1, !dbg !465
  %48 = add nuw nsw i64 %43, 1, !dbg !465
  %exitcond.not = icmp eq i64 %48, 8, !dbg !465
  br i1 %exitcond.not, label %49, label %42, !dbg !465

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %40, 8, !dbg !465
  %51 = icmp samesign ult i64 %40, 24, !dbg !465
  br i1 %51, label %39, label %52, !dbg !465

52:                                               ; preds = %49
  %53 = add nuw nsw i64 %33, 1, !dbg !465
  %exitcond27.not = icmp eq i64 %53, 3, !dbg !465
  br i1 %exitcond27.not, label %54, label %32, !dbg !465

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %26, 1, !dbg !465
  %exitcond28.not = icmp eq i64 %55, 3, !dbg !465
  br i1 %exitcond28.not, label %56, label %25, !dbg !465

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %21, 1, !dbg !465
  %exitcond29.not = icmp eq i64 %57, 28, !dbg !465
  br i1 %exitcond29.not, label %58, label %.preheader, !dbg !465

58:                                               ; preds = %56
  %59 = add nuw nsw i64 %17, 1, !dbg !465
  %exitcond30.not = icmp eq i64 %59, 28, !dbg !465
  br i1 %exitcond30.not, label %60, label %.preheader26, !dbg !465

60:                                               ; preds = %58
  ret i32 0, !dbg !465
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !466 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !467
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !467
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !467
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !467
  %6 = load ptr, ptr %5, align 8, !dbg !467
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !467
  %8 = load ptr, ptr %7, align 8, !dbg !467
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !467
  %10 = load ptr, ptr %9, align 8, !dbg !467
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !467
  %11 = ptrtoint ptr %4 to i64, !dbg !467
  %12 = add i64 %11, 416000, !dbg !467
  %13 = ptrtoint ptr %6 to i64, !dbg !467
  %14 = add i64 %13, 52608, !dbg !467
  %15 = ptrtoint ptr %10 to i64, !dbg !467
  %16 = ptrtoint ptr %8 to i64, !dbg !467
  %17 = add i64 %16, 16584704, !dbg !467
  %18 = and i64 %12, 9223372036854775807, !dbg !467
  %19 = and i64 %14, 9223372036854775807, !dbg !467
  %20 = and i64 %15, 9223372036854775744, !dbg !467
  %21 = and i64 %17, 9223372036854775807, !dbg !467
  tail call void asm sideeffect "fence", ""() #14, !dbg !467
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !467
  tail call void @llvm.riscv.config(i64 6, i64 4335775094539288592), !dbg !467
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !467
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !467
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !467
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !467
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !467
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 %20), !dbg !467
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 16), !dbg !467
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !467
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !467
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !467
  tail call void asm sideeffect "fence", ""() #14, !dbg !467
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !467
  ret i32 0, !dbg !467
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !468 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !469
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !469
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !469
  %5 = getelementptr i8, ptr %4, i64 89472, !dbg !469
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !469
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !469
  %7 = load ptr, ptr %6, align 8, !dbg !469
  %8 = getelementptr i8, ptr %7, i64 5218304, !dbg !469
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !469
  %9 = load i32, ptr %2, align 16, !dbg !469
  %10 = zext i32 %9 to i64, !dbg !469
  %11 = shl nuw nsw i64 %10, 4, !dbg !469
  %12 = and i64 %11, 68719476672, !dbg !469
  %13 = shl nuw nsw i64 %10, 6, !dbg !469
  %14 = and i64 %13, 192, !dbg !469
  br label %.preheader, !dbg !469

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !469

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !469
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !469
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !469
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !469
  store <2 x i32> %22, ptr %23, align 8, !dbg !469
  %24 = add nuw nsw i64 %19, 2, !dbg !469
  %25 = icmp samesign ult i64 %19, 62, !dbg !469
  br i1 %25, label %18, label %26, !dbg !469

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !469
  %exitcond.not = icmp eq i64 %27, 64, !dbg !469
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !469

28:                                               ; preds = %26
  ret i32 0, !dbg !469
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !470 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !471
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !471
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !471
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !471
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !472
  %6 = load ptr, ptr %5, align 8, !dbg !472
  %7 = getelementptr i8, ptr %4, i64 4415488, !dbg !473
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !473
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !472
  %9 = load ptr, ptr %8, align 8, !dbg !472
  %10 = getelementptr i8, ptr %9, i64 200704, !dbg !472
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !472
  %11 = load i32, ptr %2, align 16, !dbg !472
  %12 = zext i32 %11 to i64, !dbg !472
  %13 = and i64 %12, 4294967280, !dbg !472
  %14 = shl nuw nsw i64 %12, 4, !dbg !472
  %15 = and i64 %14, 240, !dbg !472
  %16 = alloca [256 x i8], align 1, !dbg !472
  %17 = ptrtoint ptr %4 to i64, !dbg !472
  %18 = ptrtoint ptr %6 to i64, !dbg !472
  %19 = add i64 %18, 53248, !dbg !472
  %20 = ptrtoint ptr %16 to i64, !dbg !472
  %21 = add i64 %17, 5218304, !dbg !472
  %22 = and i64 %17, 9223372036854775744, !dbg !472
  %23 = and i64 %19, 9223372036854775807, !dbg !472
  %24 = and i64 %20, 9223372036854775807, !dbg !472
  %25 = and i64 %21, 9223372036854775744, !dbg !472
  call void asm sideeffect "fence", ""() #14, !dbg !472
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !472
  call void @llvm.riscv.config(i64 2, i64 4348637409194278928), !dbg !472
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !472
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !472
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !472
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !472
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !472
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %25, i64 %24), !dbg !472
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 16), !dbg !472
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !472
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !472
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !472
  call void asm sideeffect "fence", ""() #14, !dbg !472
  br label %.preheader, !dbg !474

.preheader:                                       ; preds = %3, %112
  %26 = phi i64 [ 0, %3 ], [ %113, %112 ]
  %27 = shl nuw nsw i64 %26, 4
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 %27
  %29 = add nuw nsw i64 %26, %13
  %30 = shl nuw nsw i64 %29, 8
  %31 = or disjoint i64 %30, %15
  br label %32, !dbg !474

32:                                               ; preds = %.preheader, %32
  %33 = phi i64 [ 0, %.preheader ], [ %111, %32 ]
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 %33, !dbg !474
  %35 = load i8, ptr %34, align 1, !dbg !474
  %36 = add nuw nsw i64 %33, %31, !dbg !474
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 %36, !dbg !474
  %38 = load i8, ptr %37, align 1, !dbg !474
  %39 = sitofp i8 %38 to float, !dbg !475
  %40 = fmul nnan contract float %39, 0x3FC6854B40000000, !dbg !475
  %41 = sitofp i8 %35 to float, !dbg !476
  %42 = fmul nnan contract float %41, 0x3FCD1B93A0000000, !dbg !476
  %43 = fadd contract float %42, %40, !dbg !477
  %44 = fdiv float %43, 0x3FCA4557E0000000, !dbg !478
  %45 = bitcast float %44 to i32, !dbg !478
  %46 = call float @llvm.round.f32(float %44), !dbg !478
  %47 = bitcast float %46 to i32, !dbg !478
  %48 = lshr i32 %45, 23, !dbg !478
  %49 = and i32 %48, 255, !dbg !478
  %50 = add nsw i32 %49, -127, !dbg !478
  %51 = lshr i32 %47, 23, !dbg !478
  %52 = and i32 %51, 255, !dbg !478
  %53 = icmp eq i32 %52, 127, !dbg !478
  %54 = call i32 @llvm.usub.sat.i32(i32 %52, i32 128), !dbg !478
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 31), !dbg !478
  %56 = lshr i32 8388607, %55, !dbg !478
  %57 = and i32 %56, %47, !dbg !478
  %58 = icmp ne i32 %57, 0, !dbg !478
  %59 = or i1 %53, %58, !dbg !478
  %60 = icmp eq i32 %50, -1, !dbg !478
  %61 = call i32 @llvm.smax.i32(i32 %50, i32 0), !dbg !478
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 31), !dbg !478
  %63 = lshr i32 4194304, %62, !dbg !478
  %64 = select i1 %60, i32 0, i32 %63, !dbg !478
  %65 = lshr i32 8388607, %62, !dbg !478
  %66 = and i32 %65, %45, !dbg !478
  %67 = icmp eq i32 %66, %64, !dbg !478
  %68 = add nsw i32 %49, -126, !dbg !478
  %69 = icmp ult i32 %68, 24, !dbg !478
  %70 = and i1 %69, %67, !dbg !478
  %71 = call float @llvm.copysign.f32(float 1.000000e+00, float %44), !dbg !478
  %72 = and i1 %59, %70, !dbg !478
  %73 = select i1 %72, float %71, float 0.000000e+00, !dbg !478
  %74 = fsub contract float %46, %73, !dbg !478
  %75 = call float @llvm.copysign.f32(float %74, float %44), !dbg !478
  %76 = fadd contract float %75, 0.000000e+00, !dbg !478
  %.inv = fcmp ole float %76, -1.280000e+02, !dbg !478
  %77 = select i1 %.inv, float -1.280000e+02, float %76, !dbg !478
  %.inv23 = fcmp oge float %77, 1.270000e+02, !dbg !478
  %78 = select i1 %.inv23, float 1.270000e+02, float %77, !dbg !478
  %79 = fptosi float %78 to i8, !dbg !478
  %80 = call i8 @llvm.smax.i8(i8 %79, i8 0), !dbg !479
  %81 = uitofp nneg i8 %80 to float, !dbg !479
  %82 = bitcast float %81 to i32, !dbg !474
  %83 = lshr i32 %82, 23, !dbg !474
  %84 = add nsw i32 %83, -127, !dbg !474
  %85 = icmp eq i32 %84, 0, !dbg !474
  %86 = call i32 @llvm.usub.sat.i32(i32 %83, i32 128), !dbg !474
  %87 = call i32 @llvm.umin.i32(i32 %86, i32 31), !dbg !474
  %88 = lshr i32 8388607, %87, !dbg !474
  %89 = and i32 %88, %82, !dbg !474
  %90 = icmp ne i32 %89, 0, !dbg !474
  %91 = or i1 %85, %90, !dbg !474
  %92 = icmp eq i32 %84, -1, !dbg !474
  %93 = call i32 @llvm.smax.i32(i32 %84, i32 0), !dbg !474
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 31), !dbg !474
  %95 = lshr i32 4194304, %94, !dbg !474
  %96 = select i1 %92, i32 0, i32 %95, !dbg !474
  %97 = lshr i32 8388607, %94, !dbg !474
  %98 = and i32 %97, %82, !dbg !474
  %99 = icmp eq i32 %98, %96, !dbg !474
  %100 = add nsw i32 %82, -1056964608, !dbg !474
  %101 = icmp ult i32 %100, 201326592, !dbg !474
  %102 = and i1 %101, %99, !dbg !474
  %103 = add nsw i8 %80, -1, !dbg !474
  %104 = sitofp i8 %103 to float, !dbg !474
  %105 = and i1 %91, %102, !dbg !474
  %106 = call float @llvm.fabs.f32(float %104), !dbg !474
  %107 = select i1 %105, float %106, float %81, !dbg !474
  %.inv24 = fcmp oge float %107, 1.270000e+02, !dbg !474
  %108 = select i1 %.inv24, float 1.270000e+02, float %107, !dbg !474
  %109 = fptosi float %108 to i8, !dbg !474
  %110 = getelementptr inbounds nuw i8, ptr %10, i64 %36, !dbg !474
  store i8 %109, ptr %110, align 1, !dbg !474
  %111 = add nuw nsw i64 %33, 1, !dbg !474
  %exitcond.not = icmp eq i64 %111, 16, !dbg !474
  br i1 %exitcond.not, label %112, label %32, !dbg !474

112:                                              ; preds = %32
  %113 = add nuw nsw i64 %26, 1, !dbg !474
  %exitcond25.not = icmp eq i64 %113, 16, !dbg !474
  br i1 %exitcond25.not, label %114, label %.preheader, !dbg !474

114:                                              ; preds = %112
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !472
  ret i32 0, !dbg !472
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !480 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !481
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !481
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !481
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !482
  %6 = load ptr, ptr %5, align 8, !dbg !482
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !482
  %8 = load ptr, ptr %7, align 8, !dbg !482
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !482
  %9 = ptrtoint ptr %4 to i64, !dbg !482
  %10 = add i64 %9, 200704, !dbg !482
  %11 = ptrtoint ptr %6 to i64, !dbg !482
  %12 = add i64 %11, 69632, !dbg !482
  %13 = ptrtoint ptr %8 to i64, !dbg !482
  %14 = add i64 %11, 17387520, !dbg !482
  %15 = and i64 %10, 9223372036854775807, !dbg !482
  %16 = and i64 %12, 9223372036854775807, !dbg !482
  %17 = and i64 %13, 9223372036854775744, !dbg !482
  %18 = and i64 %14, 9223372036854775807, !dbg !482
  tail call void asm sideeffect "fence", ""() #14, !dbg !482
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !482
  tail call void @llvm.riscv.config(i64 6, i64 4412924569875120144), !dbg !482
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !482
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !482
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !482
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !482
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !482
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !482
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !482
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !482
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !482
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !482
  tail call void asm sideeffect "fence", ""() #14, !dbg !482
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !482
  ret i32 0, !dbg !482
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_22_generic_56x56x3x3x64_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !483 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !484
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !484
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !484
  %5 = getelementptr i8, ptr %4, i64 1003520, !dbg !484
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !484
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !484
  %7 = load ptr, ptr %6, align 8, !dbg !484
  %8 = getelementptr i8, ptr %7, i64 1218816, !dbg !484
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !484
  %9 = load i32, ptr %2, align 16, !dbg !484
  %10 = zext i32 %9 to i64, !dbg !484
  %11 = lshr i64 %10, 2, !dbg !484
  %12 = mul nuw nsw i64 %11, 28, !dbg !484
  %13 = and i64 %10, 2, !dbg !484
  %.not = icmp eq i64 %13, 0, !dbg !484
  %14 = select i1 %.not, i64 0, i64 28, !dbg !484
  %15 = shl nuw nsw i64 %10, 5, !dbg !484
  %16 = and i64 %15, 32, !dbg !484
  br label %.preheader26, !dbg !484

.preheader26:                                     ; preds = %3, %58
  %17 = phi i64 [ 0, %3 ], [ %59, %58 ]
  %18 = add nuw nsw i64 %17, %12
  %19 = mul nuw nsw i64 %18, 32256
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 %19
  br label %.preheader, !dbg !484

.preheader:                                       ; preds = %.preheader26, %56
  %21 = phi i64 [ 0, %.preheader26 ], [ %57, %56 ]
  %22 = add nuw nsw i64 %21, %14
  %23 = mul nuw nsw i64 %22, 576
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  br label %25, !dbg !484

25:                                               ; preds = %.preheader, %54
  %26 = phi i64 [ 0, %.preheader ], [ %55, %54 ]
  %27 = add nuw nsw i64 %18, %26, !dbg !484
  %28 = mul nuw nsw i64 %27, 3712
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 %28
  %30 = mul nuw nsw i64 %26, 192
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !484

32:                                               ; preds = %25, %52
  %33 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %34 = add nuw nsw i64 %22, %33, !dbg !484
  %35 = shl nuw nsw i64 %34, 6
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 %35
  %37 = shl nuw nsw i64 %33, 6
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 %37
  br label %39, !dbg !484

39:                                               ; preds = %32, %49
  %40 = phi i64 [ 0, %32 ], [ %50, %49 ]
  %41 = or disjoint i64 %40, %16, !dbg !484
  br label %42, !dbg !484

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %48, %42 ]
  %44 = or disjoint i64 %41, %43, !dbg !484
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 %44, !dbg !484
  %46 = load i8, ptr %45, align 1, !dbg !484
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 %44, !dbg !484
  store i8 %46, ptr %47, align 1, !dbg !484
  %48 = add nuw nsw i64 %43, 1, !dbg !484
  %exitcond.not = icmp eq i64 %48, 8, !dbg !484
  br i1 %exitcond.not, label %49, label %42, !dbg !484

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %40, 8, !dbg !484
  %51 = icmp samesign ult i64 %40, 24, !dbg !484
  br i1 %51, label %39, label %52, !dbg !484

52:                                               ; preds = %49
  %53 = add nuw nsw i64 %33, 1, !dbg !484
  %exitcond27.not = icmp eq i64 %53, 3, !dbg !484
  br i1 %exitcond27.not, label %54, label %32, !dbg !484

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %26, 1, !dbg !484
  %exitcond28.not = icmp eq i64 %55, 3, !dbg !484
  br i1 %exitcond28.not, label %56, label %25, !dbg !484

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %21, 1, !dbg !484
  %exitcond29.not = icmp eq i64 %57, 28, !dbg !484
  br i1 %exitcond29.not, label %58, label %.preheader, !dbg !484

58:                                               ; preds = %56
  %59 = add nuw nsw i64 %17, 1, !dbg !484
  %exitcond30.not = icmp eq i64 %59, 28, !dbg !484
  br i1 %exitcond30.not, label %60, label %.preheader26, !dbg !484

60:                                               ; preds = %58
  ret i32 0, !dbg !484
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !485 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !486
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !486
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !486
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !486
  %6 = load ptr, ptr %5, align 8, !dbg !486
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !486
  %8 = load ptr, ptr %7, align 8, !dbg !486
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !486
  %10 = load ptr, ptr %9, align 8, !dbg !486
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !486
  %11 = ptrtoint ptr %4 to i64, !dbg !486
  %12 = add i64 %11, 1218816, !dbg !486
  %13 = ptrtoint ptr %6 to i64, !dbg !486
  %14 = add i64 %13, 90496, !dbg !486
  %15 = ptrtoint ptr %10 to i64, !dbg !486
  %16 = ptrtoint ptr %8 to i64, !dbg !486
  %17 = add i64 %16, 18190336, !dbg !486
  %18 = and i64 %12, 9223372036854775807, !dbg !486
  %19 = and i64 %14, 9223372036854775807, !dbg !486
  %20 = and i64 %15, 9223372036854775744, !dbg !486
  %21 = and i64 %17, 9223372036854775807, !dbg !486
  tail call void asm sideeffect "fence", ""() #14, !dbg !486
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !486
  tail call void @llvm.riscv.config(i64 6, i64 4316232396342034448), !dbg !486
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 576), !dbg !486
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !486
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !486
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 154618888193), !dbg !486
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !486
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 %20), !dbg !486
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 576, i64 16), !dbg !486
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !486
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !486
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !486
  tail call void asm sideeffect "fence", ""() #14, !dbg !486
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !486
  ret i32 0, !dbg !486
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !487 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !488
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !488
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !488
  %5 = getelementptr i8, ptr %4, i64 127360, !dbg !488
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !488
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !488
  %7 = load ptr, ptr %6, align 8, !dbg !488
  %8 = getelementptr i8, ptr %7, i64 3025152, !dbg !488
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !488
  %9 = load i32, ptr %2, align 16, !dbg !488
  %10 = zext i32 %9 to i64, !dbg !488
  %11 = shl nuw nsw i64 %10, 4, !dbg !488
  %12 = and i64 %11, 68719476672, !dbg !488
  %13 = shl nuw nsw i64 %10, 6, !dbg !488
  %14 = and i64 %13, 192, !dbg !488
  br label %.preheader, !dbg !488

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 10
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !488

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !488
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !488
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !488
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !488
  store <2 x i32> %22, ptr %23, align 8, !dbg !488
  %24 = add nuw nsw i64 %19, 2, !dbg !488
  %25 = icmp samesign ult i64 %19, 62, !dbg !488
  br i1 %25, label %18, label %26, !dbg !488

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !488
  %exitcond.not = icmp eq i64 %27, 64, !dbg !488
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !488

28:                                               ; preds = %26
  ret i32 0, !dbg !488
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !489 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !490
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !490
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !490
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !490
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !491
  %6 = load ptr, ptr %5, align 8, !dbg !491
  %7 = getelementptr i8, ptr %4, i64 200704, !dbg !492
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !492
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !491
  %9 = load ptr, ptr %8, align 8, !dbg !491
  %10 = getelementptr i8, ptr %9, i64 1003520, !dbg !491
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !491
  %11 = load i32, ptr %2, align 16, !dbg !491
  %12 = zext i32 %11 to i64, !dbg !491
  %13 = and i64 %12, 4294967280, !dbg !491
  %14 = shl nuw nsw i64 %12, 4, !dbg !491
  %15 = and i64 %14, 240, !dbg !491
  %16 = alloca [256 x i8], align 1, !dbg !491
  %17 = ptrtoint ptr %4 to i64, !dbg !491
  %18 = ptrtoint ptr %6 to i64, !dbg !491
  %19 = add i64 %18, 86016, !dbg !491
  %20 = ptrtoint ptr %16 to i64, !dbg !491
  %21 = add i64 %17, 3025152, !dbg !491
  %22 = and i64 %17, 9223372036854775744, !dbg !491
  %23 = and i64 %19, 9223372036854775807, !dbg !491
  %24 = and i64 %20, 9223372036854775807, !dbg !491
  %25 = and i64 %21, 9223372036854775744, !dbg !491
  call void asm sideeffect "fence", ""() #14, !dbg !491
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !491
  call void @llvm.riscv.config(i64 2, i64 4365372689133600784), !dbg !491
  call void @llvm.riscv.config(i64 4575657221409472769, i64 64), !dbg !491
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !491
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !491
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 17179934721), !dbg !491
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !491
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %25, i64 %24), !dbg !491
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 64, i64 16), !dbg !491
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !491
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !491
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !491
  call void asm sideeffect "fence", ""() #14, !dbg !491
  br label %.preheader, !dbg !493

.preheader:                                       ; preds = %3, %112
  %26 = phi i64 [ 0, %3 ], [ %113, %112 ]
  %27 = shl nuw nsw i64 %26, 4
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 %27
  %29 = add nuw nsw i64 %26, %13
  %30 = shl nuw nsw i64 %29, 8
  %31 = or disjoint i64 %30, %15
  br label %32, !dbg !493

32:                                               ; preds = %.preheader, %32
  %33 = phi i64 [ 0, %.preheader ], [ %111, %32 ]
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 %33, !dbg !493
  %35 = load i8, ptr %34, align 1, !dbg !493
  %36 = add nuw nsw i64 %33, %31, !dbg !493
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 %36, !dbg !493
  %38 = load i8, ptr %37, align 1, !dbg !493
  %39 = sitofp i8 %38 to float, !dbg !494
  %40 = fmul nnan contract float %39, 0x3FCA4557E0000000, !dbg !494
  %41 = sitofp i8 %35 to float, !dbg !495
  %42 = fmul nnan contract float %41, 0x3FC7EB3C80000000, !dbg !495
  %43 = fadd contract float %42, %40, !dbg !496
  %44 = fdiv float %43, 0x3FC876B8C0000000, !dbg !497
  %45 = bitcast float %44 to i32, !dbg !497
  %46 = call float @llvm.round.f32(float %44), !dbg !497
  %47 = bitcast float %46 to i32, !dbg !497
  %48 = lshr i32 %45, 23, !dbg !497
  %49 = and i32 %48, 255, !dbg !497
  %50 = add nsw i32 %49, -127, !dbg !497
  %51 = lshr i32 %47, 23, !dbg !497
  %52 = and i32 %51, 255, !dbg !497
  %53 = icmp eq i32 %52, 127, !dbg !497
  %54 = call i32 @llvm.usub.sat.i32(i32 %52, i32 128), !dbg !497
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 31), !dbg !497
  %56 = lshr i32 8388607, %55, !dbg !497
  %57 = and i32 %56, %47, !dbg !497
  %58 = icmp ne i32 %57, 0, !dbg !497
  %59 = or i1 %53, %58, !dbg !497
  %60 = icmp eq i32 %50, -1, !dbg !497
  %61 = call i32 @llvm.smax.i32(i32 %50, i32 0), !dbg !497
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 31), !dbg !497
  %63 = lshr i32 4194304, %62, !dbg !497
  %64 = select i1 %60, i32 0, i32 %63, !dbg !497
  %65 = lshr i32 8388607, %62, !dbg !497
  %66 = and i32 %65, %45, !dbg !497
  %67 = icmp eq i32 %66, %64, !dbg !497
  %68 = add nsw i32 %49, -126, !dbg !497
  %69 = icmp ult i32 %68, 24, !dbg !497
  %70 = and i1 %69, %67, !dbg !497
  %71 = call float @llvm.copysign.f32(float 1.000000e+00, float %44), !dbg !497
  %72 = and i1 %59, %70, !dbg !497
  %73 = select i1 %72, float %71, float 0.000000e+00, !dbg !497
  %74 = fsub contract float %46, %73, !dbg !497
  %75 = call float @llvm.copysign.f32(float %74, float %44), !dbg !497
  %76 = fadd contract float %75, 0.000000e+00, !dbg !497
  %.inv = fcmp ole float %76, -1.280000e+02, !dbg !497
  %77 = select i1 %.inv, float -1.280000e+02, float %76, !dbg !497
  %.inv23 = fcmp oge float %77, 1.270000e+02, !dbg !497
  %78 = select i1 %.inv23, float 1.270000e+02, float %77, !dbg !497
  %79 = fptosi float %78 to i8, !dbg !497
  %80 = call i8 @llvm.smax.i8(i8 %79, i8 0), !dbg !498
  %81 = uitofp nneg i8 %80 to float, !dbg !498
  %82 = bitcast float %81 to i32, !dbg !493
  %83 = lshr i32 %82, 23, !dbg !493
  %84 = add nsw i32 %83, -127, !dbg !493
  %85 = icmp eq i32 %84, 0, !dbg !493
  %86 = call i32 @llvm.usub.sat.i32(i32 %83, i32 128), !dbg !493
  %87 = call i32 @llvm.umin.i32(i32 %86, i32 31), !dbg !493
  %88 = lshr i32 8388607, %87, !dbg !493
  %89 = and i32 %88, %82, !dbg !493
  %90 = icmp ne i32 %89, 0, !dbg !493
  %91 = or i1 %85, %90, !dbg !493
  %92 = icmp eq i32 %84, -1, !dbg !493
  %93 = call i32 @llvm.smax.i32(i32 %84, i32 0), !dbg !493
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 31), !dbg !493
  %95 = lshr i32 4194304, %94, !dbg !493
  %96 = select i1 %92, i32 0, i32 %95, !dbg !493
  %97 = lshr i32 8388607, %94, !dbg !493
  %98 = and i32 %97, %82, !dbg !493
  %99 = icmp eq i32 %98, %96, !dbg !493
  %100 = add nsw i32 %82, -1056964608, !dbg !493
  %101 = icmp ult i32 %100, 201326592, !dbg !493
  %102 = and i1 %101, %99, !dbg !493
  %103 = add nsw i8 %80, -1, !dbg !493
  %104 = sitofp i8 %103 to float, !dbg !493
  %105 = and i1 %91, %102, !dbg !493
  %106 = call float @llvm.fabs.f32(float %104), !dbg !493
  %107 = select i1 %105, float %106, float %81, !dbg !493
  %.inv24 = fcmp oge float %107, 1.270000e+02, !dbg !493
  %108 = select i1 %.inv24, float 1.270000e+02, float %107, !dbg !493
  %109 = fptosi float %108 to i8, !dbg !493
  %110 = getelementptr inbounds nuw i8, ptr %10, i64 %36, !dbg !493
  store i8 %109, ptr %110, align 1, !dbg !493
  %111 = add nuw nsw i64 %33, 1, !dbg !493
  %exitcond.not = icmp eq i64 %111, 16, !dbg !493
  br i1 %exitcond.not, label %112, label %32, !dbg !493

112:                                              ; preds = %32
  %113 = add nuw nsw i64 %26, 1, !dbg !493
  %exitcond25.not = icmp eq i64 %113, 16, !dbg !493
  br i1 %exitcond25.not, label %114, label %.preheader, !dbg !493

114:                                              ; preds = %112
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !491
  ret i32 0, !dbg !491
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !499 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !500
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !500
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !500
  %5 = getelementptr i8, ptr %4, i64 128384, !dbg !500
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !500
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !500
  %7 = load ptr, ptr %6, align 8, !dbg !500
  %8 = getelementptr i8, ptr %7, i64 6236416, !dbg !500
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !500
  %9 = load i32, ptr %2, align 16, !dbg !500
  %10 = zext i32 %9 to i64, !dbg !500
  %11 = shl nuw nsw i64 %10, 5, !dbg !500
  %12 = and i64 %11, 137438953408, !dbg !500
  %13 = shl nuw nsw i64 %10, 6, !dbg !500
  %14 = and i64 %13, 64, !dbg !500
  br label %.preheader, !dbg !500

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 9
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !500

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !500
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !500
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !500
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !500
  store <2 x i32> %22, ptr %23, align 8, !dbg !500
  %24 = add nuw nsw i64 %19, 2, !dbg !500
  %25 = icmp samesign ult i64 %19, 62, !dbg !500
  br i1 %25, label %18, label %26, !dbg !500

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !500
  %exitcond.not = icmp eq i64 %27, 64, !dbg !500
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !500

28:                                               ; preds = %26
  ret i32 0, !dbg !500
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !501 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !502
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !502
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !502
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !503
  %6 = load ptr, ptr %5, align 8, !dbg !503
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !503
  %8 = load ptr, ptr %7, align 8, !dbg !503
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !503
  %9 = ptrtoint ptr %4 to i64, !dbg !503
  %10 = add i64 %9, 1003520, !dbg !503
  %11 = ptrtoint ptr %6 to i64, !dbg !503
  %12 = add i64 %11, 102400, !dbg !503
  %13 = ptrtoint ptr %8 to i64, !dbg !503
  %14 = add i64 %9, 6236416, !dbg !503
  %15 = and i64 %10, 9223372036854775807, !dbg !503
  %16 = and i64 %12, 9223372036854775807, !dbg !503
  %17 = and i64 %13, 9223372036854775744, !dbg !503
  %18 = and i64 %14, 9223372036854775807, !dbg !503
  tail call void asm sideeffect "fence", ""() #14, !dbg !503
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !503
  tail call void @llvm.riscv.config(i64 6, i64 4351571370073653264), !dbg !503
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !503
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !503
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !503
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !503
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !503
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !503
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !503
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !503
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !503
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !503
  tail call void asm sideeffect "fence", ""() #14, !dbg !503
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !503
  ret i32 0, !dbg !503
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !504 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !505
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !505
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !505
  %5 = getelementptr i8, ptr %4, i64 128896, !dbg !505
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !505
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !505
  %7 = load ptr, ptr %6, align 8, !dbg !505
  %8 = getelementptr i8, ptr %7, i64 1806336, !dbg !505
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !505
  %9 = load i32, ptr %2, align 16, !dbg !505
  %10 = zext i32 %9 to i64, !dbg !505
  %11 = lshr i64 %10, 3, !dbg !505
  %12 = mul nuw nsw i64 %11, 112, !dbg !505
  %13 = shl nuw nsw i64 %10, 6, !dbg !505
  %14 = and i64 %13, 448, !dbg !505
  br label %.preheader, !dbg !505

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !505

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !505
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !505
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !505
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !505
  store <2 x i32> %22, ptr %23, align 8, !dbg !505
  %24 = add nuw nsw i64 %19, 2, !dbg !505
  %25 = icmp samesign ult i64 %19, 62, !dbg !505
  br i1 %25, label %18, label %26, !dbg !505

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !505
  %exitcond.not = icmp eq i64 %27, 112, !dbg !505
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !505

28:                                               ; preds = %26
  ret i32 0, !dbg !505
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_29_generic_28x28x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !506 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !507
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !507
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !507
  %5 = getelementptr i8, ptr %4, i64 1003520, !dbg !507
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !507
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !508
  %7 = load ptr, ptr %6, align 8, !dbg !508
  %8 = getelementptr i8, ptr %7, i64 401408, !dbg !508
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !508
  %9 = load i32, ptr %2, align 16, !dbg !508
  %10 = zext i32 %9 to i64, !dbg !508
  %11 = shl nuw nsw i64 %10, 5, !dbg !508
  br label %.preheader26, !dbg !508

.preheader26:                                     ; preds = %3, %37
  %12 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %13 = mul nuw nsw i64 %12, 28672
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 %13
  %15 = mul nuw nsw i64 %12, 7168
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 %15
  br label %.preheader, !dbg !508

.preheader:                                       ; preds = %.preheader26, %35
  %17 = phi i64 [ 0, %.preheader26 ], [ %36, %35 ]
  %18 = shl nuw nsw i64 %17, 9
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 %18
  %20 = shl nuw nsw i64 %17, 8
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 %20
  br label %22, !dbg !508

22:                                               ; preds = %.preheader, %32
  %23 = phi i64 [ 0, %.preheader ], [ %33, %32 ]
  %24 = add nuw nsw i64 %23, %11, !dbg !508
  br label %25, !dbg !508

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %31, %25 ]
  %27 = add nuw nsw i64 %26, %24, !dbg !508
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 %27, !dbg !508
  %29 = load i8, ptr %28, align 1, !dbg !508
  %30 = getelementptr inbounds nuw i8, ptr %21, i64 %27, !dbg !508
  store i8 %29, ptr %30, align 1, !dbg !508
  %31 = add nuw nsw i64 %26, 1, !dbg !508
  %exitcond.not = icmp eq i64 %31, 8, !dbg !508
  br i1 %exitcond.not, label %32, label %25, !dbg !508

32:                                               ; preds = %25
  %33 = add nuw nsw i64 %23, 8, !dbg !508
  %34 = icmp samesign ult i64 %23, 24, !dbg !508
  br i1 %34, label %22, label %35, !dbg !508

35:                                               ; preds = %32
  %36 = add nuw nsw i64 %17, 1, !dbg !508
  %exitcond27.not = icmp eq i64 %36, 28, !dbg !508
  br i1 %exitcond27.not, label %37, label %.preheader, !dbg !508

37:                                               ; preds = %35
  %38 = add nuw nsw i64 %12, 1, !dbg !508
  %exitcond28.not = icmp eq i64 %38, 28, !dbg !508
  br i1 %exitcond28.not, label %39, label %.preheader26, !dbg !508

39:                                               ; preds = %37
  ret i32 0, !dbg !508
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_30_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !509 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !510
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !510
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !510
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !510
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !511
  %6 = load ptr, ptr %5, align 8, !dbg !511
  %7 = getelementptr i8, ptr %6, i64 3411968, !dbg !511
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !511
  %8 = load i32, ptr %2, align 16, !dbg !511
  %9 = zext i32 %8 to i64, !dbg !511
  %10 = lshr i64 %9, 1, !dbg !511
  %11 = mul nuw nsw i64 %10, 14, !dbg !511
  %12 = shl nuw nsw i64 %9, 6, !dbg !511
  %13 = and i64 %12, 64, !dbg !511
  br label %.preheader23, !dbg !511

.preheader23:                                     ; preds = %3, %35
  %14 = phi i64 [ 0, %3 ], [ %36, %35 ]
  %15 = add nuw nsw i64 %14, %11
  %16 = mul nuw nsw i64 %15, 7168
  %17 = getelementptr i8, ptr %4, i64 %16
  %18 = mul nuw nsw i64 %15, 7424
  %19 = getelementptr i8, ptr %7, i64 %18
  br label %.preheader, !dbg !511

.preheader:                                       ; preds = %.preheader23, %33
  %20 = phi i64 [ 0, %.preheader23 ], [ %34, %33 ]
  %21 = shl i64 %20, 7
  %22 = getelementptr i8, ptr %17, i64 %21
  %23 = getelementptr i8, ptr %19, i64 %21
  %24 = getelementptr i8, ptr %23, i64 7552
  br label %25, !dbg !511

25:                                               ; preds = %.preheader, %25
  %26 = phi i64 [ 0, %.preheader ], [ %31, %25 ]
  %27 = or disjoint i64 %26, %13, !dbg !511
  %28 = getelementptr i8, ptr %22, i64 %27, !dbg !511
  %29 = load <2 x i8>, ptr %28, align 2, !dbg !511
  %30 = getelementptr i8, ptr %24, i64 %27, !dbg !511
  store <2 x i8> %29, ptr %30, align 2, !dbg !511
  %31 = add nuw nsw i64 %26, 2, !dbg !511
  %32 = icmp samesign ult i64 %26, 62, !dbg !511
  br i1 %32, label %25, label %33, !dbg !511

33:                                               ; preds = %25
  %34 = add nuw nsw i64 %20, 1, !dbg !511
  %exitcond.not = icmp eq i64 %34, 56, !dbg !511
  br i1 %exitcond.not, label %35, label %.preheader, !dbg !511

35:                                               ; preds = %33
  %36 = add nuw nsw i64 %14, 1, !dbg !511
  %exitcond24.not = icmp eq i64 %36, 14, !dbg !511
  br i1 %exitcond24.not, label %37, label %.preheader23, !dbg !511

37:                                               ; preds = %35
  ret i32 0, !dbg !511
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_31_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !512 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !513
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !513
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !513
  %5 = getelementptr i8, ptr %4, i64 3411968, !dbg !513
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !513
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !513
  %7 = load ptr, ptr %6, align 8, !dbg !513
  %8 = getelementptr i8, ptr %7, i64 602112, !dbg !513
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !513
  %9 = load i32, ptr %2, align 16, !dbg !513
  %10 = zext i32 %9 to i64, !dbg !513
  %11 = lshr i64 %10, 2, !dbg !513
  %12 = mul nuw nsw i64 %11, 14, !dbg !513
  %13 = shl nuw nsw i64 %10, 5, !dbg !513
  %14 = and i64 %13, 96, !dbg !513
  %15 = mul nuw nsw i64 %11, 28
  br label %.preheader27, !dbg !513

.preheader27:                                     ; preds = %3, %55
  %16 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = add nuw nsw i64 %17, %15
  %19 = add nuw nsw i64 %16, %12
  %20 = mul nuw nsw i64 %19, 32256
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  br label %.preheader26, !dbg !513

.preheader26:                                     ; preds = %.preheader27, %53
  %22 = phi i64 [ 0, %.preheader27 ], [ %54, %53 ]
  %23 = shl i64 %22, 8
  %invariant.gep = getelementptr i8, ptr %5, i64 %23, !dbg !513
  %24 = mul nuw nsw i64 %22, 1152
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 %24
  br label %26, !dbg !513

26:                                               ; preds = %.preheader26, %51
  %27 = phi i64 [ 0, %.preheader26 ], [ %52, %51 ]
  %28 = add nuw nsw i64 %18, %27, !dbg !513
  %29 = mul nuw nsw i64 %28, 7424
  %gep = getelementptr i8, ptr %invariant.gep, i64 %29
  %30 = mul nuw nsw i64 %27, 384
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  br label %.preheader, !dbg !513

.preheader:                                       ; preds = %26, %49
  %32 = phi i64 [ 0, %26 ], [ %50, %49 ]
  %33 = shl nuw nsw i64 %32, 7
  %34 = getelementptr i8, ptr %gep, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 %33
  br label %36, !dbg !513

36:                                               ; preds = %.preheader, %46
  %37 = phi i64 [ 0, %.preheader ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !513
  br label %39, !dbg !513

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !513
  %42 = getelementptr inbounds nuw i8, ptr %34, i64 %41, !dbg !513
  %43 = load i8, ptr %42, align 1, !dbg !513
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !513
  store i8 %43, ptr %44, align 1, !dbg !513
  %45 = add nuw nsw i64 %40, 1, !dbg !513
  %exitcond.not = icmp eq i64 %45, 8, !dbg !513
  br i1 %exitcond.not, label %46, label %39, !dbg !513

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !513
  %48 = icmp samesign ult i64 %37, 24, !dbg !513
  br i1 %48, label %36, label %49, !dbg !513

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %32, 1, !dbg !513
  %exitcond28.not = icmp eq i64 %50, 3, !dbg !513
  br i1 %exitcond28.not, label %51, label %.preheader, !dbg !513

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %27, 1, !dbg !513
  %exitcond29.not = icmp eq i64 %52, 3, !dbg !513
  br i1 %exitcond29.not, label %53, label %26, !dbg !513

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %22, 1, !dbg !513
  %exitcond30.not = icmp eq i64 %54, 28, !dbg !513
  br i1 %exitcond30.not, label %55, label %.preheader26, !dbg !513

55:                                               ; preds = %53
  %56 = add nuw nsw i64 %16, 1, !dbg !513
  %exitcond31.not = icmp eq i64 %56, 14, !dbg !513
  br i1 %exitcond31.not, label %57, label %.preheader27, !dbg !513

57:                                               ; preds = %55
  ret i32 0, !dbg !513
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !514 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !515
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !515
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !515
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !515
  %6 = load ptr, ptr %5, align 8, !dbg !515
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !515
  %8 = load ptr, ptr %7, align 8, !dbg !515
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !515
  %10 = load ptr, ptr %9, align 8, !dbg !515
  %11 = ptrtoint ptr %4 to i64, !dbg !515
  %12 = add i64 %11, 602112, !dbg !515
  %13 = ptrtoint ptr %6 to i64, !dbg !515
  %14 = add i64 %13, 130944, !dbg !515
  %15 = ptrtoint ptr %10 to i64, !dbg !515
  %16 = add i64 %15, 1505280, !dbg !515
  %17 = ptrtoint ptr %8 to i64, !dbg !515
  %18 = add i64 %17, 18993152, !dbg !515
  %19 = and i64 %12, 9223372036854775807, !dbg !515
  %20 = and i64 %14, 9223372036854775807, !dbg !515
  %21 = and i64 %16, 9223372036854775807, !dbg !515
  %22 = and i64 %18, 9223372036854775807, !dbg !515
  tail call void asm sideeffect "fence", ""() #14, !dbg !515
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !515
  tail call void @llvm.riscv.config(i64 6, i64 4254254918749126672), !dbg !515
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !515
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !515
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !515
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !515
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %19, i64 %20), !dbg !515
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %22, i64 %21), !dbg !515
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 16), !dbg !515
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !515
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !515
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !515
  tail call void asm sideeffect "fence", ""() #14, !dbg !515
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !515
  ret i32 0, !dbg !515
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !516 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !517
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !517
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !517
  %5 = getelementptr i8, ptr %4, i64 278400, !dbg !517
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !517
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !517
  %7 = load ptr, ptr %6, align 8, !dbg !517
  %8 = getelementptr i8, ptr %7, i64 3411968, !dbg !517
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !517
  %9 = load i32, ptr %2, align 16, !dbg !517
  %10 = zext i32 %9 to i64, !dbg !517
  %11 = lshr i64 %10, 3, !dbg !517
  %12 = mul nuw nsw i64 %11, 112, !dbg !517
  %13 = shl nuw nsw i64 %10, 6, !dbg !517
  %14 = and i64 %13, 448, !dbg !517
  br label %.preheader, !dbg !517

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !517

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !517
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !517
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !517
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !517
  store <2 x i32> %22, ptr %23, align 8, !dbg !517
  %24 = add nuw nsw i64 %19, 2, !dbg !517
  %25 = icmp samesign ult i64 %19, 62, !dbg !517
  br i1 %25, label %18, label %26, !dbg !517

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !517
  %exitcond.not = icmp eq i64 %27, 112, !dbg !517
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !517

28:                                               ; preds = %26
  ret i32 0, !dbg !517
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !518 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !519
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !519
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !519
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !520
  %6 = load ptr, ptr %5, align 8, !dbg !520
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !520
  %8 = load ptr, ptr %7, align 8, !dbg !520
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !520
  %9 = ptrtoint ptr %4 to i64, !dbg !520
  %10 = add i64 %9, 1505280, !dbg !520
  %11 = ptrtoint ptr %6 to i64, !dbg !520
  %12 = add i64 %11, 266240, !dbg !520
  %13 = ptrtoint ptr %8 to i64, !dbg !520
  %14 = add i64 %9, 3411968, !dbg !520
  %15 = and i64 %10, 9223372036854775807, !dbg !520
  %16 = and i64 %12, 9223372036854775807, !dbg !520
  %17 = and i64 %13, 9223372036854775744, !dbg !520
  %18 = and i64 %14, 9223372036854775807, !dbg !520
  tail call void asm sideeffect "fence", ""() #14, !dbg !520
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !520
  tail call void @llvm.riscv.config(i64 2, i64 4339748824051351568), !dbg !520
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !520
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !520
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !520
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !520
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !520
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !520
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 16), !dbg !520
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !520
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !520
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !520
  tail call void asm sideeffect "fence", ""() #14, !dbg !520
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !520
  ret i32 0, !dbg !520
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !521 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !522
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !522
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !522
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !522
  %6 = load ptr, ptr %5, align 8, !dbg !522
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !523
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !522
  %8 = load ptr, ptr %7, align 8, !dbg !522
  %9 = getelementptr i8, ptr %8, i64 602112, !dbg !522
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !522
  %10 = load i32, ptr %2, align 16, !dbg !522
  %11 = zext i32 %10 to i64, !dbg !522
  %12 = lshr i64 %11, 1, !dbg !522
  %13 = and i64 %12, 2147483632, !dbg !522
  %14 = shl nuw nsw i64 %11, 4, !dbg !522
  %15 = and i64 %14, 496, !dbg !522
  %16 = alloca [256 x i8], align 1, !dbg !522
  %17 = ptrtoint ptr %4 to i64, !dbg !522
  %18 = add i64 %17, 401408, !dbg !522
  %19 = ptrtoint ptr %6 to i64, !dbg !522
  %20 = add i64 %19, 135168, !dbg !522
  %21 = ptrtoint ptr %16 to i64, !dbg !522
  %22 = add i64 %17, 1806336, !dbg !522
  %23 = and i64 %18, 9223372036854775744, !dbg !522
  %24 = and i64 %20, 9223372036854775807, !dbg !522
  %25 = and i64 %21, 9223372036854775807, !dbg !522
  %26 = and i64 %22, 9223372036854775744, !dbg !522
  call void asm sideeffect "fence", ""() #14, !dbg !522
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !522
  call void @llvm.riscv.config(i64 2, i64 4360734781583917072), !dbg !522
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !522
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !522
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !522
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 68719542273), !dbg !522
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !522
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !522
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !522
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !522
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !522
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !522
  call void asm sideeffect "fence", ""() #14, !dbg !522
  br label %.preheader, !dbg !524

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = add nuw nsw i64 %27, %13
  %29 = shl nuw nsw i64 %28, 9
  %30 = or disjoint i64 %29, %15
  %31 = shl nuw nsw i64 %27, 4
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 %31
  br label %33, !dbg !524

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = add nuw nsw i64 %34, %30, !dbg !524
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 %35, !dbg !524
  %37 = load i8, ptr %36, align 1, !dbg !524
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 %34, !dbg !524
  %39 = load i8, ptr %38, align 1, !dbg !524
  %40 = sitofp i8 %39 to float, !dbg !525
  %41 = fmul nnan contract float %40, 0x3FC3A62100000000, !dbg !525
  %42 = sitofp i8 %37 to float, !dbg !526
  %43 = fmul nnan contract float %42, 0x3FC0057A80000000, !dbg !526
  %44 = fadd contract float %43, %41, !dbg !527
  %45 = fdiv float %44, 0x3FC51838A0000000, !dbg !528
  %46 = bitcast float %45 to i32, !dbg !528
  %47 = call float @llvm.round.f32(float %45), !dbg !528
  %48 = bitcast float %47 to i32, !dbg !528
  %49 = lshr i32 %46, 23, !dbg !528
  %50 = and i32 %49, 255, !dbg !528
  %51 = add nsw i32 %50, -127, !dbg !528
  %52 = lshr i32 %48, 23, !dbg !528
  %53 = and i32 %52, 255, !dbg !528
  %54 = icmp eq i32 %53, 127, !dbg !528
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !528
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !528
  %57 = lshr i32 8388607, %56, !dbg !528
  %58 = and i32 %57, %48, !dbg !528
  %59 = icmp ne i32 %58, 0, !dbg !528
  %60 = or i1 %54, %59, !dbg !528
  %61 = icmp eq i32 %51, -1, !dbg !528
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !528
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !528
  %64 = lshr i32 4194304, %63, !dbg !528
  %65 = select i1 %61, i32 0, i32 %64, !dbg !528
  %66 = lshr i32 8388607, %63, !dbg !528
  %67 = and i32 %66, %46, !dbg !528
  %68 = icmp eq i32 %67, %65, !dbg !528
  %69 = add nsw i32 %50, -126, !dbg !528
  %70 = icmp ult i32 %69, 24, !dbg !528
  %71 = and i1 %70, %68, !dbg !528
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !528
  %73 = and i1 %60, %71, !dbg !528
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !528
  %75 = fsub contract float %47, %74, !dbg !528
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !528
  %77 = fadd contract float %76, 0.000000e+00, !dbg !528
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !528
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !528
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !528
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !528
  %80 = fptosi float %79 to i8, !dbg !528
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !529
  %82 = uitofp nneg i8 %81 to float, !dbg !529
  %83 = bitcast float %82 to i32, !dbg !524
  %84 = lshr i32 %83, 23, !dbg !524
  %85 = add nsw i32 %84, -127, !dbg !524
  %86 = icmp eq i32 %85, 0, !dbg !524
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !524
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !524
  %89 = lshr i32 8388607, %88, !dbg !524
  %90 = and i32 %89, %83, !dbg !524
  %91 = icmp ne i32 %90, 0, !dbg !524
  %92 = or i1 %86, %91, !dbg !524
  %93 = icmp eq i32 %85, -1, !dbg !524
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !524
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !524
  %96 = lshr i32 4194304, %95, !dbg !524
  %97 = select i1 %93, i32 0, i32 %96, !dbg !524
  %98 = lshr i32 8388607, %95, !dbg !524
  %99 = and i32 %98, %83, !dbg !524
  %100 = icmp eq i32 %99, %97, !dbg !524
  %101 = add nsw i32 %83, -1056964608, !dbg !524
  %102 = icmp ult i32 %101, 201326592, !dbg !524
  %103 = and i1 %102, %100, !dbg !524
  %104 = add nsw i8 %81, -1, !dbg !524
  %105 = sitofp i8 %104 to float, !dbg !524
  %106 = and i1 %92, %103, !dbg !524
  %107 = call float @llvm.fabs.f32(float %105), !dbg !524
  %108 = select i1 %106, float %107, float %82, !dbg !524
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !524
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !524
  %110 = fptosi float %109 to i8, !dbg !524
  %111 = getelementptr inbounds nuw i8, ptr %9, i64 %35, !dbg !524
  store i8 %110, ptr %111, align 1, !dbg !524
  %112 = add nuw nsw i64 %34, 1, !dbg !524
  %exitcond.not = icmp eq i64 %112, 16, !dbg !524
  br i1 %exitcond.not, label %113, label %33, !dbg !524

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !524
  %exitcond25.not = icmp eq i64 %114, 16, !dbg !524
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !524

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !522
  ret i32 0, !dbg !522
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !530 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !531
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !531
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !531
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !532
  %6 = load ptr, ptr %5, align 8, !dbg !532
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !532
  %8 = load ptr, ptr %7, align 8, !dbg !532
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !532
  %9 = ptrtoint ptr %4 to i64, !dbg !532
  %10 = add i64 %9, 602112, !dbg !532
  %11 = ptrtoint ptr %6 to i64, !dbg !532
  %12 = add i64 %11, 331776, !dbg !532
  %13 = ptrtoint ptr %8 to i64, !dbg !532
  %14 = add i64 %11, 19394560, !dbg !532
  %15 = and i64 %10, 9223372036854775807, !dbg !532
  %16 = and i64 %12, 9223372036854775807, !dbg !532
  %17 = and i64 %13, 9223372036854775744, !dbg !532
  %18 = and i64 %14, 9223372036854775807, !dbg !532
  tail call void asm sideeffect "fence", ""() #14, !dbg !532
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !532
  tail call void @llvm.riscv.config(i64 6, i64 4355096271208316944), !dbg !532
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !532
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !532
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !532
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !532
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !532
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !532
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !532
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !532
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !532
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !532
  tail call void asm sideeffect "fence", ""() #14, !dbg !532
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !532
  ret i32 0, !dbg !532
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_37_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !533 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !534
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !534
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !534
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !534
  %4 = load i32, ptr %.unpack18, align 4, !dbg !534
  %5 = zext i32 %4 to i64, !dbg !534
  %6 = load ptr, ptr %.unpack20, align 8, !dbg !535
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !535
  %7 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !534
  %8 = load ptr, ptr %7, align 8, !dbg !534
  %9 = getelementptr i8, ptr %8, i64 %5, !dbg !534
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !534
  %10 = load i32, ptr %2, align 16, !dbg !534
  %11 = zext i32 %10 to i64, !dbg !534
  %12 = lshr i64 %11, 1, !dbg !534
  %13 = mul nuw nsw i64 %12, 7, !dbg !534
  %14 = shl nuw nsw i64 %11, 6, !dbg !534
  %15 = and i64 %14, 64, !dbg !534
  br label %.preheader23, !dbg !534

.preheader23:                                     ; preds = %3, %37
  %16 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %17 = add nuw nsw i64 %16, %13
  %18 = mul nuw nsw i64 %17, 3584
  %19 = getelementptr i8, ptr %6, i64 %18
  %20 = mul nuw nsw i64 %17, 3840
  %21 = getelementptr i8, ptr %9, i64 %20
  br label %.preheader, !dbg !534

.preheader:                                       ; preds = %.preheader23, %35
  %22 = phi i64 [ 0, %.preheader23 ], [ %36, %35 ]
  %23 = shl i64 %22, 7
  %24 = getelementptr i8, ptr %19, i64 %23
  %25 = getelementptr i8, ptr %21, i64 %23
  %26 = getelementptr i8, ptr %25, i64 3968
  br label %27, !dbg !534

27:                                               ; preds = %.preheader, %27
  %28 = phi i64 [ 0, %.preheader ], [ %33, %27 ]
  %29 = or disjoint i64 %28, %15, !dbg !534
  %30 = getelementptr i8, ptr %24, i64 %29, !dbg !534
  %31 = load <2 x i8>, ptr %30, align 2, !dbg !534
  %32 = getelementptr i8, ptr %26, i64 %29, !dbg !534
  store <2 x i8> %31, ptr %32, align 2, !dbg !534
  %33 = add nuw nsw i64 %28, 2, !dbg !534
  %34 = icmp samesign ult i64 %28, 62, !dbg !534
  br i1 %34, label %27, label %35, !dbg !534

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %22, 1, !dbg !534
  %exitcond.not = icmp eq i64 %36, 28, !dbg !534
  br i1 %exitcond.not, label %37, label %.preheader, !dbg !534

37:                                               ; preds = %35
  %38 = add nuw nsw i64 %16, 1, !dbg !534
  %exitcond24.not = icmp eq i64 %38, 7, !dbg !534
  br i1 %exitcond24.not, label %39, label %.preheader23, !dbg !534

39:                                               ; preds = %37
  ret i32 0, !dbg !534
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_38_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !536 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !537
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !537
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !537
  %5 = getelementptr i8, ptr %4, i64 100352, !dbg !537
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !537
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !537
  %7 = load ptr, ptr %6, align 8, !dbg !537
  %8 = getelementptr i8, ptr %7, i64 1003520, !dbg !537
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !537
  %9 = load i32, ptr %2, align 16, !dbg !537
  %10 = zext i32 %9 to i64, !dbg !537
  %11 = lshr i64 %10, 2, !dbg !537
  %12 = mul nuw nsw i64 %11, 14, !dbg !537
  %13 = shl nuw nsw i64 %10, 5, !dbg !537
  %14 = and i64 %13, 96, !dbg !537
  br label %.preheader26, !dbg !537

.preheader26:                                     ; preds = %3, %55
  %15 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %16 = add nuw nsw i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !537

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 1152
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !537

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !537
  %25 = mul nuw nsw i64 %24, 3840
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 384
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !537

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !537
  %32 = shl nuw nsw i64 %31, 7
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 7
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !537

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !537
  br label %39, !dbg !537

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !537
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !537
  %43 = load i8, ptr %42, align 1, !dbg !537
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !537
  store i8 %43, ptr %44, align 1, !dbg !537
  %45 = add nuw nsw i64 %40, 1, !dbg !537
  %exitcond.not = icmp eq i64 %45, 8, !dbg !537
  br i1 %exitcond.not, label %46, label %39, !dbg !537

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !537
  %48 = icmp samesign ult i64 %37, 24, !dbg !537
  br i1 %48, label %36, label %49, !dbg !537

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !537
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !537
  br i1 %exitcond27.not, label %51, label %29, !dbg !537

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !537
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !537
  br i1 %exitcond28.not, label %53, label %22, !dbg !537

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !537
  %exitcond29.not = icmp eq i64 %54, 28, !dbg !537
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !537

55:                                               ; preds = %53
  %56 = add nuw nsw i64 %15, 1, !dbg !537
  %exitcond30.not = icmp eq i64 %56, 14, !dbg !537
  br i1 %exitcond30.not, label %57, label %.preheader26, !dbg !537

57:                                               ; preds = %55
  ret i32 0, !dbg !537
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !538 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !539
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !539
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !539
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !539
  %6 = load ptr, ptr %5, align 8, !dbg !539
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !539
  %8 = load ptr, ptr %7, align 8, !dbg !539
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !539
  %10 = load ptr, ptr %9, align 8, !dbg !539
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !539
  %11 = ptrtoint ptr %4 to i64, !dbg !539
  %12 = add i64 %11, 1003520, !dbg !539
  %13 = ptrtoint ptr %6 to i64, !dbg !539
  %14 = add i64 %13, 280448, !dbg !539
  %15 = ptrtoint ptr %10 to i64, !dbg !539
  %16 = ptrtoint ptr %8 to i64, !dbg !539
  %17 = add i64 %16, 19795968, !dbg !539
  %18 = and i64 %12, 9223372036854775807, !dbg !539
  %19 = and i64 %14, 9223372036854775807, !dbg !539
  %20 = and i64 %15, 9223372036854775744, !dbg !539
  %21 = and i64 %17, 9223372036854775807, !dbg !539
  tail call void asm sideeffect "fence", ""() #14, !dbg !539
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !539
  tail call void @llvm.riscv.config(i64 6, i64 4300939233276723216), !dbg !539
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !539
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !539
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !539
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !539
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !539
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 %20), !dbg !539
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 16), !dbg !539
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !539
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !539
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !539
  tail call void asm sideeffect "fence", ""() #14, !dbg !539
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !539
  ret i32 0, !dbg !539
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !540 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !541
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !541
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !541
  %5 = getelementptr i8, ptr %4, i64 427904, !dbg !541
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !541
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !541
  %7 = load ptr, ptr %6, align 8, !dbg !541
  %8 = getelementptr i8, ptr %7, i64 1906688, !dbg !541
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !541
  %9 = load i32, ptr %2, align 16, !dbg !541
  %10 = zext i32 %9 to i64, !dbg !541
  %11 = lshr i64 %10, 3, !dbg !541
  %12 = mul nuw nsw i64 %11, 112, !dbg !541
  %13 = shl nuw nsw i64 %10, 6, !dbg !541
  %14 = and i64 %13, 448, !dbg !541
  br label %.preheader, !dbg !541

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !541

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !541
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !541
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !541
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !541
  store <2 x i32> %22, ptr %23, align 8, !dbg !541
  %24 = add nuw nsw i64 %19, 2, !dbg !541
  %25 = icmp samesign ult i64 %19, 62, !dbg !541
  br i1 %25, label %18, label %26, !dbg !541

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !541
  %exitcond.not = icmp eq i64 %27, 112, !dbg !541
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !541

28:                                               ; preds = %26
  ret i32 0, !dbg !541
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !542 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !543
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !543
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !543
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !543
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !544
  %6 = load ptr, ptr %5, align 8, !dbg !544
  %7 = getelementptr i8, ptr %4, i64 602112, !dbg !545
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !545
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !544
  %9 = load ptr, ptr %8, align 8, !dbg !544
  %10 = getelementptr i8, ptr %9, i64 100352, !dbg !544
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !544
  %11 = load i32, ptr %2, align 16, !dbg !544
  %12 = zext i32 %11 to i64, !dbg !544
  %13 = lshr i64 %12, 1, !dbg !544
  %14 = and i64 %13, 2147483632, !dbg !544
  %15 = shl nuw nsw i64 %12, 4, !dbg !544
  %16 = and i64 %15, 496, !dbg !544
  %17 = alloca [256 x i8], align 1, !dbg !544
  %18 = ptrtoint ptr %4 to i64, !dbg !544
  %19 = ptrtoint ptr %6 to i64, !dbg !544
  %20 = add i64 %19, 397312, !dbg !544
  %21 = ptrtoint ptr %17 to i64, !dbg !544
  %22 = add i64 %18, 1906688, !dbg !544
  %23 = and i64 %18, 9223372036854775744, !dbg !544
  %24 = and i64 %20, 9223372036854775807, !dbg !544
  %25 = and i64 %21, 9223372036854775807, !dbg !544
  %26 = and i64 %22, 9223372036854775744, !dbg !544
  call void asm sideeffect "fence", ""() #14, !dbg !544
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !544
  call void @llvm.riscv.config(i64 2, i64 4332268051878641680), !dbg !544
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !544
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !544
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !544
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !544
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !544
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !544
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 16), !dbg !544
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !544
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !544
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !544
  call void asm sideeffect "fence", ""() #14, !dbg !544
  br label %.preheader, !dbg !546

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 9
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !546

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !546
  %36 = load i8, ptr %35, align 1, !dbg !546
  %37 = add nuw nsw i64 %34, %32, !dbg !546
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !546
  %39 = load i8, ptr %38, align 1, !dbg !546
  %40 = sitofp i8 %39 to float, !dbg !547
  %41 = fmul nnan contract float %40, 0x3FC51838A0000000, !dbg !547
  %42 = sitofp i8 %36 to float, !dbg !548
  %43 = fmul nnan contract float %42, 0x3FBDF7D760000000, !dbg !548
  %44 = fadd contract float %43, %41, !dbg !549
  %45 = fdiv float %44, 0x3FC25528C0000000, !dbg !550
  %46 = bitcast float %45 to i32, !dbg !550
  %47 = call float @llvm.round.f32(float %45), !dbg !550
  %48 = bitcast float %47 to i32, !dbg !550
  %49 = lshr i32 %46, 23, !dbg !550
  %50 = and i32 %49, 255, !dbg !550
  %51 = add nsw i32 %50, -127, !dbg !550
  %52 = lshr i32 %48, 23, !dbg !550
  %53 = and i32 %52, 255, !dbg !550
  %54 = icmp eq i32 %53, 127, !dbg !550
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !550
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !550
  %57 = lshr i32 8388607, %56, !dbg !550
  %58 = and i32 %57, %48, !dbg !550
  %59 = icmp ne i32 %58, 0, !dbg !550
  %60 = or i1 %54, %59, !dbg !550
  %61 = icmp eq i32 %51, -1, !dbg !550
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !550
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !550
  %64 = lshr i32 4194304, %63, !dbg !550
  %65 = select i1 %61, i32 0, i32 %64, !dbg !550
  %66 = lshr i32 8388607, %63, !dbg !550
  %67 = and i32 %66, %46, !dbg !550
  %68 = icmp eq i32 %67, %65, !dbg !550
  %69 = add nsw i32 %50, -126, !dbg !550
  %70 = icmp ult i32 %69, 24, !dbg !550
  %71 = and i1 %70, %68, !dbg !550
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !550
  %73 = and i1 %60, %71, !dbg !550
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !550
  %75 = fsub contract float %47, %74, !dbg !550
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !550
  %77 = fadd contract float %76, 0.000000e+00, !dbg !550
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !550
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !550
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !550
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !550
  %80 = fptosi float %79 to i8, !dbg !550
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !551
  %82 = uitofp nneg i8 %81 to float, !dbg !551
  %83 = bitcast float %82 to i32, !dbg !546
  %84 = lshr i32 %83, 23, !dbg !546
  %85 = add nsw i32 %84, -127, !dbg !546
  %86 = icmp eq i32 %85, 0, !dbg !546
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !546
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !546
  %89 = lshr i32 8388607, %88, !dbg !546
  %90 = and i32 %89, %83, !dbg !546
  %91 = icmp ne i32 %90, 0, !dbg !546
  %92 = or i1 %86, %91, !dbg !546
  %93 = icmp eq i32 %85, -1, !dbg !546
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !546
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !546
  %96 = lshr i32 4194304, %95, !dbg !546
  %97 = select i1 %93, i32 0, i32 %96, !dbg !546
  %98 = lshr i32 8388607, %95, !dbg !546
  %99 = and i32 %98, %83, !dbg !546
  %100 = icmp eq i32 %99, %97, !dbg !546
  %101 = add nsw i32 %83, -1056964608, !dbg !546
  %102 = icmp ult i32 %101, 201326592, !dbg !546
  %103 = and i1 %102, %100, !dbg !546
  %104 = add nsw i8 %81, -1, !dbg !546
  %105 = sitofp i8 %104 to float, !dbg !546
  %106 = and i1 %92, %103, !dbg !546
  %107 = call float @llvm.fabs.f32(float %105), !dbg !546
  %108 = select i1 %106, float %107, float %82, !dbg !546
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !546
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !546
  %110 = fptosi float %109 to i8, !dbg !546
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !546
  store i8 %110, ptr %111, align 1, !dbg !546
  %112 = add nuw nsw i64 %34, 1, !dbg !546
  %exitcond.not = icmp eq i64 %112, 16, !dbg !546
  br i1 %exitcond.not, label %113, label %33, !dbg !546

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !546
  %exitcond25.not = icmp eq i64 %114, 16, !dbg !546
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !546

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !544
  ret i32 0, !dbg !544
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !552 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !553
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !553
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !553
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !554
  %6 = load ptr, ptr %5, align 8, !dbg !554
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !554
  %8 = load ptr, ptr %7, align 8, !dbg !554
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !554
  %9 = ptrtoint ptr %4 to i64, !dbg !554
  %10 = add i64 %9, 100352, !dbg !554
  %11 = ptrtoint ptr %6 to i64, !dbg !554
  %12 = add i64 %11, 462848, !dbg !554
  %13 = ptrtoint ptr %8 to i64, !dbg !554
  %14 = add i64 %11, 20197376, !dbg !554
  %15 = and i64 %10, 9223372036854775807, !dbg !554
  %16 = and i64 %12, 9223372036854775807, !dbg !554
  %17 = and i64 %13, 9223372036854775744, !dbg !554
  %18 = and i64 %14, 9223372036854775807, !dbg !554
  tail call void asm sideeffect "fence", ""() #14, !dbg !554
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !554
  tail call void @llvm.riscv.config(i64 6, i64 4361453647440117776), !dbg !554
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !554
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !554
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !554
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !554
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !554
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !554
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !554
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !554
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !554
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !554
  tail call void asm sideeffect "fence", ""() #14, !dbg !554
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !554
  ret i32 0, !dbg !554
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_44_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !555 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !556
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !556
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !556
  %5 = getelementptr i8, ptr %4, i64 501760, !dbg !556
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !556
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !556
  %7 = load ptr, ptr %6, align 8, !dbg !556
  %8 = getelementptr i8, ptr %7, i64 616960, !dbg !556
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !556
  %9 = load i32, ptr %2, align 16, !dbg !556
  %10 = zext i32 %9 to i64, !dbg !556
  %11 = lshr i64 %10, 2, !dbg !556
  %12 = mul nuw nsw i64 %11, 14, !dbg !556
  %13 = shl nuw nsw i64 %10, 5, !dbg !556
  %14 = and i64 %13, 96, !dbg !556
  br label %.preheader26, !dbg !556

.preheader26:                                     ; preds = %3, %55
  %15 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %16 = add nuw nsw i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !556

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 1152
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !556

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !556
  %25 = mul nuw nsw i64 %24, 3840
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 384
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !556

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !556
  %32 = shl nuw nsw i64 %31, 7
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 7
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !556

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !556
  br label %39, !dbg !556

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !556
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !556
  %43 = load i8, ptr %42, align 1, !dbg !556
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !556
  store i8 %43, ptr %44, align 1, !dbg !556
  %45 = add nuw nsw i64 %40, 1, !dbg !556
  %exitcond.not = icmp eq i64 %45, 8, !dbg !556
  br i1 %exitcond.not, label %46, label %39, !dbg !556

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !556
  %48 = icmp samesign ult i64 %37, 24, !dbg !556
  br i1 %48, label %36, label %49, !dbg !556

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !556
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !556
  br i1 %exitcond27.not, label %51, label %29, !dbg !556

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !556
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !556
  br i1 %exitcond28.not, label %53, label %22, !dbg !556

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !556
  %exitcond29.not = icmp eq i64 %54, 28, !dbg !556
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !556

55:                                               ; preds = %53
  %56 = add nuw nsw i64 %15, 1, !dbg !556
  %exitcond30.not = icmp eq i64 %56, 14, !dbg !556
  br i1 %exitcond30.not, label %57, label %.preheader26, !dbg !556

57:                                               ; preds = %55
  ret i32 0, !dbg !556
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !557 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !558
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !558
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !558
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !558
  %6 = load ptr, ptr %5, align 8, !dbg !558
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !558
  %8 = load ptr, ptr %7, align 8, !dbg !558
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !558
  %10 = load ptr, ptr %9, align 8, !dbg !558
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !558
  %11 = ptrtoint ptr %4 to i64, !dbg !558
  %12 = add i64 %11, 616960, !dbg !558
  %13 = ptrtoint ptr %6 to i64, !dbg !558
  %14 = add i64 %13, 429952, !dbg !558
  %15 = ptrtoint ptr %10 to i64, !dbg !558
  %16 = ptrtoint ptr %8 to i64, !dbg !558
  %17 = add i64 %16, 20598784, !dbg !558
  %18 = and i64 %12, 9223372036854775807, !dbg !558
  %19 = and i64 %14, 9223372036854775807, !dbg !558
  %20 = and i64 %15, 9223372036854775744, !dbg !558
  %21 = and i64 %17, 9223372036854775807, !dbg !558
  tail call void asm sideeffect "fence", ""() #14, !dbg !558
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !558
  tail call void @llvm.riscv.config(i64 6, i64 4312540919195762704), !dbg !558
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !558
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !558
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !558
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !558
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !558
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 %20), !dbg !558
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 16), !dbg !558
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !558
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !558
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !558
  tail call void asm sideeffect "fence", ""() #14, !dbg !558
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !558
  ret i32 0, !dbg !558
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !559 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !560
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !560
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !560
  %5 = getelementptr i8, ptr %4, i64 577408, !dbg !560
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !560
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !560
  %7 = load ptr, ptr %6, align 8, !dbg !560
  %8 = getelementptr i8, ptr %7, i64 1520128, !dbg !560
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !560
  %9 = load i32, ptr %2, align 16, !dbg !560
  %10 = zext i32 %9 to i64, !dbg !560
  %11 = lshr i64 %10, 3, !dbg !560
  %12 = mul nuw nsw i64 %11, 112, !dbg !560
  %13 = shl nuw nsw i64 %10, 6, !dbg !560
  %14 = and i64 %13, 448, !dbg !560
  br label %.preheader, !dbg !560

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !560

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !560
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !560
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !560
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !560
  store <2 x i32> %22, ptr %23, align 8, !dbg !560
  %24 = add nuw nsw i64 %19, 2, !dbg !560
  %25 = icmp samesign ult i64 %19, 62, !dbg !560
  br i1 %25, label %18, label %26, !dbg !560

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !560
  %exitcond.not = icmp eq i64 %27, 112, !dbg !560
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !560

28:                                               ; preds = %26
  ret i32 0, !dbg !560
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !561 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !562
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !562
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !562
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !562
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !563
  %6 = load ptr, ptr %5, align 8, !dbg !563
  %7 = getelementptr i8, ptr %4, i64 100352, !dbg !564
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !564
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !563
  %9 = load ptr, ptr %8, align 8, !dbg !563
  %10 = getelementptr i8, ptr %9, i64 501760, !dbg !563
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !563
  %11 = load i32, ptr %2, align 16, !dbg !563
  %12 = zext i32 %11 to i64, !dbg !563
  %13 = lshr i64 %12, 1, !dbg !563
  %14 = and i64 %13, 2147483632, !dbg !563
  %15 = shl nuw nsw i64 %12, 4, !dbg !563
  %16 = and i64 %15, 496, !dbg !563
  %17 = alloca [256 x i8], align 1, !dbg !563
  %18 = ptrtoint ptr %4 to i64, !dbg !563
  %19 = ptrtoint ptr %6 to i64, !dbg !563
  %20 = add i64 %19, 528384, !dbg !563
  %21 = ptrtoint ptr %17 to i64, !dbg !563
  %22 = add i64 %18, 1520128, !dbg !563
  %23 = and i64 %18, 9223372036854775744, !dbg !563
  %24 = and i64 %20, 9223372036854775807, !dbg !563
  %25 = and i64 %21, 9223372036854775807, !dbg !563
  %26 = and i64 %22, 9223372036854775744, !dbg !563
  call void asm sideeffect "fence", ""() #14, !dbg !563
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !563
  call void @llvm.riscv.config(i64 2, i64 4375419300538744848), !dbg !563
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !563
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !563
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !563
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !563
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !563
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !563
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 16), !dbg !563
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !563
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !563
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !563
  call void asm sideeffect "fence", ""() #14, !dbg !563
  br label %.preheader, !dbg !565

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 9
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !565

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !565
  %36 = load i8, ptr %35, align 1, !dbg !565
  %37 = add nuw nsw i64 %34, %32, !dbg !565
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !565
  %39 = load i8, ptr %38, align 1, !dbg !565
  %40 = sitofp i8 %39 to float, !dbg !566
  %41 = fmul nnan contract float %40, 0x3FC25528C0000000, !dbg !566
  %42 = sitofp i8 %36 to float, !dbg !567
  %43 = fmul nnan contract float %42, 0x3FB1D9BD40000000, !dbg !567
  %44 = fadd contract float %43, %41, !dbg !568
  %45 = fdiv float %44, 0x3FC2B63480000000, !dbg !569
  %46 = bitcast float %45 to i32, !dbg !569
  %47 = call float @llvm.round.f32(float %45), !dbg !569
  %48 = bitcast float %47 to i32, !dbg !569
  %49 = lshr i32 %46, 23, !dbg !569
  %50 = and i32 %49, 255, !dbg !569
  %51 = add nsw i32 %50, -127, !dbg !569
  %52 = lshr i32 %48, 23, !dbg !569
  %53 = and i32 %52, 255, !dbg !569
  %54 = icmp eq i32 %53, 127, !dbg !569
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !569
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !569
  %57 = lshr i32 8388607, %56, !dbg !569
  %58 = and i32 %57, %48, !dbg !569
  %59 = icmp ne i32 %58, 0, !dbg !569
  %60 = or i1 %54, %59, !dbg !569
  %61 = icmp eq i32 %51, -1, !dbg !569
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !569
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !569
  %64 = lshr i32 4194304, %63, !dbg !569
  %65 = select i1 %61, i32 0, i32 %64, !dbg !569
  %66 = lshr i32 8388607, %63, !dbg !569
  %67 = and i32 %66, %46, !dbg !569
  %68 = icmp eq i32 %67, %65, !dbg !569
  %69 = add nsw i32 %50, -126, !dbg !569
  %70 = icmp ult i32 %69, 24, !dbg !569
  %71 = and i1 %70, %68, !dbg !569
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !569
  %73 = and i1 %60, %71, !dbg !569
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !569
  %75 = fsub contract float %47, %74, !dbg !569
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !569
  %77 = fadd contract float %76, 0.000000e+00, !dbg !569
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !569
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !569
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !569
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !569
  %80 = fptosi float %79 to i8, !dbg !569
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !570
  %82 = uitofp nneg i8 %81 to float, !dbg !570
  %83 = bitcast float %82 to i32, !dbg !565
  %84 = lshr i32 %83, 23, !dbg !565
  %85 = add nsw i32 %84, -127, !dbg !565
  %86 = icmp eq i32 %85, 0, !dbg !565
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !565
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !565
  %89 = lshr i32 8388607, %88, !dbg !565
  %90 = and i32 %89, %83, !dbg !565
  %91 = icmp ne i32 %90, 0, !dbg !565
  %92 = or i1 %86, %91, !dbg !565
  %93 = icmp eq i32 %85, -1, !dbg !565
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !565
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !565
  %96 = lshr i32 4194304, %95, !dbg !565
  %97 = select i1 %93, i32 0, i32 %96, !dbg !565
  %98 = lshr i32 8388607, %95, !dbg !565
  %99 = and i32 %98, %83, !dbg !565
  %100 = icmp eq i32 %99, %97, !dbg !565
  %101 = add nsw i32 %83, -1056964608, !dbg !565
  %102 = icmp ult i32 %101, 201326592, !dbg !565
  %103 = and i1 %102, %100, !dbg !565
  %104 = add nsw i8 %81, -1, !dbg !565
  %105 = sitofp i8 %104 to float, !dbg !565
  %106 = and i1 %92, %103, !dbg !565
  %107 = call float @llvm.fabs.f32(float %105), !dbg !565
  %108 = select i1 %106, float %107, float %82, !dbg !565
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !565
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !565
  %110 = fptosi float %109 to i8, !dbg !565
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !565
  store i8 %110, ptr %111, align 1, !dbg !565
  %112 = add nuw nsw i64 %34, 1, !dbg !565
  %exitcond.not = icmp eq i64 %112, 16, !dbg !565
  br i1 %exitcond.not, label %113, label %33, !dbg !565

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !565
  %exitcond25.not = icmp eq i64 %114, 16, !dbg !565
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !565

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !563
  ret i32 0, !dbg !563
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !571 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !572
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !572
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !572
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !573
  %6 = load ptr, ptr %5, align 8, !dbg !573
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !573
  %8 = load ptr, ptr %7, align 8, !dbg !573
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !573
  %9 = ptrtoint ptr %4 to i64, !dbg !573
  %10 = add i64 %9, 501760, !dbg !573
  %11 = ptrtoint ptr %6 to i64, !dbg !573
  %12 = add i64 %11, 593920, !dbg !573
  %13 = ptrtoint ptr %8 to i64, !dbg !573
  %14 = add i64 %11, 21000192, !dbg !573
  %15 = and i64 %10, 9223372036854775807, !dbg !573
  %16 = and i64 %12, 9223372036854775807, !dbg !573
  %17 = and i64 %13, 9223372036854775744, !dbg !573
  %18 = and i64 %14, 9223372036854775807, !dbg !573
  tail call void asm sideeffect "fence", ""() #14, !dbg !573
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !573
  tail call void @llvm.riscv.config(i64 6, i64 4338570916385521680), !dbg !573
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !573
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !573
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !573
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !573
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !573
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !573
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !573
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !573
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !573
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !573
  tail call void asm sideeffect "fence", ""() #14, !dbg !573
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !573
  ret i32 0, !dbg !573
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_50_generic_28x28x3x3x128_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !574 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !575
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !575
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !575
  %5 = getelementptr i8, ptr %4, i64 100352, !dbg !575
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !575
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !575
  %7 = load ptr, ptr %6, align 8, !dbg !575
  %8 = getelementptr i8, ptr %7, i64 903168, !dbg !575
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !575
  %9 = load i32, ptr %2, align 16, !dbg !575
  %10 = zext i32 %9 to i64, !dbg !575
  %11 = lshr i64 %10, 2, !dbg !575
  %12 = mul nuw nsw i64 %11, 14, !dbg !575
  %13 = shl nuw nsw i64 %10, 5, !dbg !575
  %14 = and i64 %13, 96, !dbg !575
  br label %.preheader26, !dbg !575

.preheader26:                                     ; preds = %3, %55
  %15 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %16 = add nuw nsw i64 %15, %12
  %17 = mul nuw nsw i64 %16, 32256
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 %17
  br label %.preheader, !dbg !575

.preheader:                                       ; preds = %.preheader26, %53
  %19 = phi i64 [ 0, %.preheader26 ], [ %54, %53 ]
  %20 = mul nuw nsw i64 %19, 1152
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  br label %22, !dbg !575

22:                                               ; preds = %.preheader, %51
  %23 = phi i64 [ 0, %.preheader ], [ %52, %51 ]
  %24 = add nuw nsw i64 %16, %23, !dbg !575
  %25 = mul nuw nsw i64 %24, 3840
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 %25
  %27 = mul nuw nsw i64 %23, 384
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 %27
  br label %29, !dbg !575

29:                                               ; preds = %22, %49
  %30 = phi i64 [ 0, %22 ], [ %50, %49 ]
  %31 = add nuw nsw i64 %30, %19, !dbg !575
  %32 = shl nuw nsw i64 %31, 7
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 %32
  %34 = shl nuw nsw i64 %30, 7
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 %34
  br label %36, !dbg !575

36:                                               ; preds = %29, %46
  %37 = phi i64 [ 0, %29 ], [ %47, %46 ]
  %38 = or disjoint i64 %37, %14, !dbg !575
  br label %39, !dbg !575

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %45, %39 ]
  %41 = or disjoint i64 %38, %40, !dbg !575
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 %41, !dbg !575
  %43 = load i8, ptr %42, align 1, !dbg !575
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %41, !dbg !575
  store i8 %43, ptr %44, align 1, !dbg !575
  %45 = add nuw nsw i64 %40, 1, !dbg !575
  %exitcond.not = icmp eq i64 %45, 8, !dbg !575
  br i1 %exitcond.not, label %46, label %39, !dbg !575

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %37, 8, !dbg !575
  %48 = icmp samesign ult i64 %37, 24, !dbg !575
  br i1 %48, label %36, label %49, !dbg !575

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %30, 1, !dbg !575
  %exitcond27.not = icmp eq i64 %50, 3, !dbg !575
  br i1 %exitcond27.not, label %51, label %29, !dbg !575

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %23, 1, !dbg !575
  %exitcond28.not = icmp eq i64 %52, 3, !dbg !575
  br i1 %exitcond28.not, label %53, label %22, !dbg !575

53:                                               ; preds = %51
  %54 = add nuw nsw i64 %19, 1, !dbg !575
  %exitcond29.not = icmp eq i64 %54, 28, !dbg !575
  br i1 %exitcond29.not, label %55, label %.preheader, !dbg !575

55:                                               ; preds = %53
  %56 = add nuw nsw i64 %15, 1, !dbg !575
  %exitcond30.not = icmp eq i64 %56, 14, !dbg !575
  br i1 %exitcond30.not, label %57, label %.preheader26, !dbg !575

57:                                               ; preds = %55
  ret i32 0, !dbg !575
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !576 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !577
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !577
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !577
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !577
  %6 = load ptr, ptr %5, align 8, !dbg !577
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !577
  %8 = load ptr, ptr %7, align 8, !dbg !577
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !577
  %10 = load ptr, ptr %9, align 8, !dbg !577
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !577
  %11 = ptrtoint ptr %4 to i64, !dbg !577
  %12 = add i64 %11, 903168, !dbg !577
  %13 = ptrtoint ptr %6 to i64, !dbg !577
  %14 = add i64 %13, 579456, !dbg !577
  %15 = ptrtoint ptr %10 to i64, !dbg !577
  %16 = ptrtoint ptr %8 to i64, !dbg !577
  %17 = add i64 %16, 21401600, !dbg !577
  %18 = and i64 %12, 9223372036854775807, !dbg !577
  %19 = and i64 %14, 9223372036854775807, !dbg !577
  %20 = and i64 %15, 9223372036854775744, !dbg !577
  %21 = and i64 %17, 9223372036854775807, !dbg !577
  tail call void asm sideeffect "fence", ""() #14, !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !577
  tail call void @llvm.riscv.config(i64 6, i64 4287705167727427600), !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1152), !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !577
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 309237710849), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 %20), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1152, i64 16), !dbg !577
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !577
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !577
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !577
  tail call void asm sideeffect "fence", ""() #14, !dbg !577
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !577
  ret i32 0, !dbg !577
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !578 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !579
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !579
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !579
  %5 = getelementptr i8, ptr %4, i64 726912, !dbg !579
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !579
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !579
  %7 = load ptr, ptr %6, align 8, !dbg !579
  %8 = getelementptr i8, ptr %7, i64 1806336, !dbg !579
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !579
  %9 = load i32, ptr %2, align 16, !dbg !579
  %10 = zext i32 %9 to i64, !dbg !579
  %11 = lshr i64 %10, 3, !dbg !579
  %12 = mul nuw nsw i64 %11, 112, !dbg !579
  %13 = shl nuw nsw i64 %10, 6, !dbg !579
  %14 = and i64 %13, 448, !dbg !579
  br label %.preheader, !dbg !579

.preheader:                                       ; preds = %3, %26
  %15 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %16 = add nuw nsw i64 %15, %12
  %.idx = shl i64 %16, 11
  %17 = getelementptr i8, ptr %8, i64 %.idx
  br label %18, !dbg !579

18:                                               ; preds = %.preheader, %18
  %19 = phi i64 [ 0, %.preheader ], [ %24, %18 ]
  %20 = or disjoint i64 %19, %14, !dbg !579
  %21 = getelementptr [4 x i8], ptr %5, i64 %20, !dbg !579
  %22 = load <2 x i32>, ptr %21, align 8, !dbg !579
  %23 = getelementptr [4 x i8], ptr %17, i64 %20, !dbg !579
  store <2 x i32> %22, ptr %23, align 8, !dbg !579
  %24 = add nuw nsw i64 %19, 2, !dbg !579
  %25 = icmp samesign ult i64 %19, 62, !dbg !579
  br i1 %25, label %18, label %26, !dbg !579

26:                                               ; preds = %18
  %27 = add nuw nsw i64 %15, 1, !dbg !579
  %exitcond.not = icmp eq i64 %27, 112, !dbg !579
  br i1 %exitcond.not, label %28, label %.preheader, !dbg !579

28:                                               ; preds = %26
  ret i32 0, !dbg !579
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !580 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !581
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !581
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !581
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !581
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !582
  %6 = load ptr, ptr %5, align 8, !dbg !582
  %7 = getelementptr i8, ptr %4, i64 501760, !dbg !583
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !583
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !582
  %9 = load ptr, ptr %8, align 8, !dbg !582
  %10 = getelementptr i8, ptr %9, i64 100352, !dbg !582
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !582
  %11 = load i32, ptr %2, align 16, !dbg !582
  %12 = zext i32 %11 to i64, !dbg !582
  %13 = lshr i64 %12, 1, !dbg !582
  %14 = and i64 %13, 2147483632, !dbg !582
  %15 = shl nuw nsw i64 %12, 4, !dbg !582
  %16 = and i64 %15, 496, !dbg !582
  %17 = alloca [256 x i8], align 1, !dbg !582
  %18 = ptrtoint ptr %4 to i64, !dbg !582
  %19 = ptrtoint ptr %6 to i64, !dbg !582
  %20 = add i64 %19, 659456, !dbg !582
  %21 = ptrtoint ptr %17 to i64, !dbg !582
  %22 = add i64 %18, 1806336, !dbg !582
  %23 = and i64 %18, 9223372036854775744, !dbg !582
  %24 = and i64 %20, 9223372036854775807, !dbg !582
  %25 = and i64 %21, 9223372036854775807, !dbg !582
  %26 = and i64 %22, 9223372036854775744, !dbg !582
  call void asm sideeffect "fence", ""() #14, !dbg !582
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !582
  call void @llvm.riscv.config(i64 2, i64 4353230588954542096), !dbg !582
  call void @llvm.riscv.config(i64 4575657221409472769, i64 128), !dbg !582
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !582
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !582
  call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 34359803905), !dbg !582
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !582
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !582
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 128, i64 16), !dbg !582
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !582
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !582
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !582
  call void asm sideeffect "fence", ""() #14, !dbg !582
  br label %.preheader, !dbg !584

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 9
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !584

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !584
  %36 = load i8, ptr %35, align 1, !dbg !584
  %37 = add nuw nsw i64 %34, %32, !dbg !584
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !584
  %39 = load i8, ptr %38, align 1, !dbg !584
  %40 = sitofp i8 %39 to float, !dbg !585
  %41 = fmul nnan contract float %40, 0x3FC2B63480000000, !dbg !585
  %42 = sitofp i8 %36 to float, !dbg !586
  %43 = fmul nnan contract float %42, 0x3FB03947A0000000, !dbg !586
  %44 = fadd contract float %43, %41, !dbg !587
  %45 = fdiv float %44, 0x3FC1DCE100000000, !dbg !588
  %46 = bitcast float %45 to i32, !dbg !588
  %47 = call float @llvm.round.f32(float %45), !dbg !588
  %48 = bitcast float %47 to i32, !dbg !588
  %49 = lshr i32 %46, 23, !dbg !588
  %50 = and i32 %49, 255, !dbg !588
  %51 = add nsw i32 %50, -127, !dbg !588
  %52 = lshr i32 %48, 23, !dbg !588
  %53 = and i32 %52, 255, !dbg !588
  %54 = icmp eq i32 %53, 127, !dbg !588
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !588
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !588
  %57 = lshr i32 8388607, %56, !dbg !588
  %58 = and i32 %57, %48, !dbg !588
  %59 = icmp ne i32 %58, 0, !dbg !588
  %60 = or i1 %54, %59, !dbg !588
  %61 = icmp eq i32 %51, -1, !dbg !588
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !588
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !588
  %64 = lshr i32 4194304, %63, !dbg !588
  %65 = select i1 %61, i32 0, i32 %64, !dbg !588
  %66 = lshr i32 8388607, %63, !dbg !588
  %67 = and i32 %66, %46, !dbg !588
  %68 = icmp eq i32 %67, %65, !dbg !588
  %69 = add nsw i32 %50, -126, !dbg !588
  %70 = icmp ult i32 %69, 24, !dbg !588
  %71 = and i1 %70, %68, !dbg !588
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !588
  %73 = and i1 %60, %71, !dbg !588
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !588
  %75 = fsub contract float %47, %74, !dbg !588
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !588
  %77 = fadd contract float %76, 0.000000e+00, !dbg !588
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !588
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !588
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !588
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !588
  %80 = fptosi float %79 to i8, !dbg !588
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !589
  %82 = uitofp nneg i8 %81 to float, !dbg !589
  %83 = bitcast float %82 to i32, !dbg !584
  %84 = lshr i32 %83, 23, !dbg !584
  %85 = add nsw i32 %84, -127, !dbg !584
  %86 = icmp eq i32 %85, 0, !dbg !584
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !584
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !584
  %89 = lshr i32 8388607, %88, !dbg !584
  %90 = and i32 %89, %83, !dbg !584
  %91 = icmp ne i32 %90, 0, !dbg !584
  %92 = or i1 %86, %91, !dbg !584
  %93 = icmp eq i32 %85, -1, !dbg !584
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !584
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !584
  %96 = lshr i32 4194304, %95, !dbg !584
  %97 = select i1 %93, i32 0, i32 %96, !dbg !584
  %98 = lshr i32 8388607, %95, !dbg !584
  %99 = and i32 %98, %83, !dbg !584
  %100 = icmp eq i32 %99, %97, !dbg !584
  %101 = add nsw i32 %83, -1056964608, !dbg !584
  %102 = icmp ult i32 %101, 201326592, !dbg !584
  %103 = and i1 %102, %100, !dbg !584
  %104 = add nsw i8 %81, -1, !dbg !584
  %105 = sitofp i8 %104 to float, !dbg !584
  %106 = and i1 %92, %103, !dbg !584
  %107 = call float @llvm.fabs.f32(float %105), !dbg !584
  %108 = select i1 %106, float %107, float %82, !dbg !584
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !584
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !584
  %110 = fptosi float %109 to i8, !dbg !584
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !584
  store i8 %110, ptr %111, align 1, !dbg !584
  %112 = add nuw nsw i64 %34, 1, !dbg !584
  %exitcond.not = icmp eq i64 %112, 16, !dbg !584
  br i1 %exitcond.not, label %113, label %33, !dbg !584

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !584
  %exitcond25.not = icmp eq i64 %114, 16, !dbg !584
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !584

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !582
  ret i32 0, !dbg !582
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !590 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !591
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !591
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !591
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !592
  %6 = load ptr, ptr %5, align 8, !dbg !592
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !592
  %8 = load ptr, ptr %7, align 8, !dbg !592
  %9 = ptrtoint ptr %4 to i64, !dbg !592
  %10 = add i64 %9, 100352, !dbg !592
  %11 = ptrtoint ptr %6 to i64, !dbg !592
  %12 = add i64 %11, 724992, !dbg !592
  %13 = ptrtoint ptr %8 to i64, !dbg !592
  %14 = add i64 %13, 501760, !dbg !592
  %15 = add i64 %11, 21803008, !dbg !592
  %16 = and i64 %10, 9223372036854775807, !dbg !592
  %17 = and i64 %12, 9223372036854775807, !dbg !592
  %18 = and i64 %14, 9223372036854775807, !dbg !592
  %19 = and i64 %15, 9223372036854775807, !dbg !592
  tail call void asm sideeffect "fence", ""() #14, !dbg !592
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !592
  tail call void @llvm.riscv.config(i64 6, i64 4351522793993535504), !dbg !592
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !592
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !592
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !592
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 0, i64 137439019009), !dbg !592
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %16, i64 %17), !dbg !592
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %19, i64 %18), !dbg !592
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !592
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !592
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !592
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !592
  tail call void asm sideeffect "fence", ""() #14, !dbg !592
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !592
  ret i32 0, !dbg !592
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_55_generic_14x14x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !593 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !594
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !594
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !594
  %5 = getelementptr i8, ptr %4, i64 100352, !dbg !594
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !594
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !595
  %7 = load ptr, ptr %6, align 8, !dbg !595
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !595
  %8 = load i32, ptr %2, align 16, !dbg !595
  %9 = zext i32 %8 to i64, !dbg !595
  %10 = shl nuw nsw i64 %9, 5, !dbg !595
  br label %.preheader26, !dbg !595

.preheader26:                                     ; preds = %3, %36
  %11 = phi i64 [ 0, %3 ], [ %37, %36 ]
  %12 = mul nuw nsw i64 %11, 28672
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 %12
  %14 = mul nuw nsw i64 %11, 7168
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  br label %.preheader, !dbg !595

.preheader:                                       ; preds = %.preheader26, %34
  %16 = phi i64 [ 0, %.preheader26 ], [ %35, %34 ]
  %17 = shl nuw nsw i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %17
  %19 = shl nuw nsw i64 %16, 9
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 %19
  br label %21, !dbg !595

21:                                               ; preds = %.preheader, %31
  %22 = phi i64 [ 0, %.preheader ], [ %32, %31 ]
  %23 = add nuw nsw i64 %22, %10, !dbg !595
  br label %24, !dbg !595

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %30, %24 ]
  %26 = add nuw nsw i64 %25, %23, !dbg !595
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 %26, !dbg !595
  %28 = load i8, ptr %27, align 1, !dbg !595
  %29 = getelementptr inbounds nuw i8, ptr %20, i64 %26, !dbg !595
  store i8 %28, ptr %29, align 1, !dbg !595
  %30 = add nuw nsw i64 %25, 1, !dbg !595
  %exitcond.not = icmp eq i64 %30, 8, !dbg !595
  br i1 %exitcond.not, label %31, label %24, !dbg !595

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %22, 8, !dbg !595
  %33 = icmp samesign ult i64 %22, 24, !dbg !595
  br i1 %33, label %21, label %34, !dbg !595

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %16, 1, !dbg !595
  %exitcond27.not = icmp eq i64 %35, 14, !dbg !595
  br i1 %exitcond27.not, label %36, label %.preheader, !dbg !595

36:                                               ; preds = %34
  %37 = add nuw nsw i64 %11, 1, !dbg !595
  %exitcond28.not = icmp eq i64 %37, 14, !dbg !595
  br i1 %exitcond28.not, label %38, label %.preheader26, !dbg !595

38:                                               ; preds = %36
  ret i32 0, !dbg !595
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_56_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !596 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !597
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !597
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !597
  %5 = getelementptr i8, ptr %4, i64 501760, !dbg !597
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !597
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !598
  %7 = load ptr, ptr %6, align 8, !dbg !598
  %8 = getelementptr i8, ptr %7, i64 702464, !dbg !598
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !598
  %9 = load i32, ptr %2, align 16, !dbg !598
  %10 = zext i32 %9 to i64, !dbg !598
  %11 = lshr i64 %10, 2, !dbg !598
  %12 = mul nuw nsw i64 %11, 14, !dbg !598
  %13 = shl nuw nsw i64 %10, 6, !dbg !598
  %14 = and i64 %13, 192, !dbg !598
  br label %.preheader23, !dbg !598

.preheader23:                                     ; preds = %3, %36
  %15 = phi i64 [ 0, %3 ], [ %37, %36 ]
  %16 = add nuw nsw i64 %15, %12
  %17 = mul nuw nsw i64 %16, 7168
  %18 = getelementptr i8, ptr %5, i64 %17
  %19 = mul nuw nsw i64 %16, 7680
  %20 = getelementptr i8, ptr %8, i64 %19
  br label %.preheader, !dbg !598

.preheader:                                       ; preds = %.preheader23, %34
  %21 = phi i64 [ 0, %.preheader23 ], [ %35, %34 ]
  %22 = shl i64 %21, 8
  %23 = getelementptr i8, ptr %18, i64 %22
  %24 = getelementptr i8, ptr %20, i64 %22
  %25 = getelementptr i8, ptr %24, i64 7936
  br label %26, !dbg !598

26:                                               ; preds = %.preheader, %26
  %27 = phi i64 [ 0, %.preheader ], [ %32, %26 ]
  %28 = or disjoint i64 %27, %14, !dbg !598
  %29 = getelementptr i8, ptr %23, i64 %28, !dbg !598
  %30 = load <2 x i8>, ptr %29, align 2, !dbg !598
  %31 = getelementptr i8, ptr %25, i64 %28, !dbg !598
  store <2 x i8> %30, ptr %31, align 2, !dbg !598
  %32 = add nuw nsw i64 %27, 2, !dbg !598
  %33 = icmp samesign ult i64 %27, 62, !dbg !598
  br i1 %33, label %26, label %34, !dbg !598

34:                                               ; preds = %26
  %35 = add nuw nsw i64 %21, 1, !dbg !598
  %exitcond.not = icmp eq i64 %35, 28, !dbg !598
  br i1 %exitcond.not, label %36, label %.preheader, !dbg !598

36:                                               ; preds = %34
  %37 = add nuw nsw i64 %15, 1, !dbg !598
  %exitcond24.not = icmp eq i64 %37, 14, !dbg !598
  br i1 %exitcond24.not, label %38, label %.preheader23, !dbg !598

38:                                               ; preds = %36
  ret i32 0, !dbg !598
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_57_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !599 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !600
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !600
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !600
  %5 = getelementptr i8, ptr %4, i64 702464, !dbg !600
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !600
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !600
  %7 = load ptr, ptr %6, align 8, !dbg !600
  %8 = getelementptr i8, ptr %7, i64 100352, !dbg !600
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !600
  %9 = load i32, ptr %2, align 16, !dbg !600
  %10 = zext i32 %9 to i64, !dbg !600
  %11 = shl nuw nsw i64 %10, 5, !dbg !600
  br label %.preheader27, !dbg !600

.preheader27:                                     ; preds = %3, %49
  %12 = phi i64 [ 0, %3 ], [ %50, %49 ]
  %13 = shl nuw nsw i64 %12, 1
  %14 = mul nuw nsw i64 %12, 32256
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 %14
  br label %.preheader26, !dbg !600

.preheader26:                                     ; preds = %.preheader27, %47
  %16 = phi i64 [ 0, %.preheader27 ], [ %48, %47 ]
  %17 = shl i64 %16, 9
  %invariant.gep = getelementptr i8, ptr %5, i64 %17, !dbg !600
  %18 = mul nuw nsw i64 %16, 2304
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 %18
  br label %20, !dbg !600

20:                                               ; preds = %.preheader26, %45
  %21 = phi i64 [ 0, %.preheader26 ], [ %46, %45 ]
  %22 = add nuw nsw i64 %21, %13, !dbg !600
  %23 = mul nuw nsw i64 %22, 7680
  %gep = getelementptr i8, ptr %invariant.gep, i64 %23
  %24 = mul nuw nsw i64 %21, 768
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %24
  br label %.preheader, !dbg !600

.preheader:                                       ; preds = %20, %43
  %26 = phi i64 [ 0, %20 ], [ %44, %43 ]
  %27 = shl nuw nsw i64 %26, 8
  %28 = getelementptr i8, ptr %gep, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %27
  br label %30, !dbg !600

30:                                               ; preds = %.preheader, %40
  %31 = phi i64 [ 0, %.preheader ], [ %41, %40 ]
  %32 = add nuw nsw i64 %31, %11, !dbg !600
  br label %33, !dbg !600

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %39, %33 ]
  %35 = add nuw nsw i64 %34, %32, !dbg !600
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 %35, !dbg !600
  %37 = load i8, ptr %36, align 1, !dbg !600
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %35, !dbg !600
  store i8 %37, ptr %38, align 1, !dbg !600
  %39 = add nuw nsw i64 %34, 1, !dbg !600
  %exitcond.not = icmp eq i64 %39, 8, !dbg !600
  br i1 %exitcond.not, label %40, label %33, !dbg !600

40:                                               ; preds = %33
  %41 = add nuw nsw i64 %31, 8, !dbg !600
  %42 = icmp samesign ult i64 %31, 24, !dbg !600
  br i1 %42, label %30, label %43, !dbg !600

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %26, 1, !dbg !600
  %exitcond28.not = icmp eq i64 %44, 3, !dbg !600
  br i1 %exitcond28.not, label %45, label %.preheader, !dbg !600

45:                                               ; preds = %43
  %46 = add nuw nsw i64 %21, 1, !dbg !600
  %exitcond29.not = icmp eq i64 %46, 3, !dbg !600
  br i1 %exitcond29.not, label %47, label %20, !dbg !600

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %16, 1, !dbg !600
  %exitcond30.not = icmp eq i64 %48, 14, !dbg !600
  br i1 %exitcond30.not, label %49, label %.preheader26, !dbg !600

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %12, 1, !dbg !600
  %exitcond31.not = icmp eq i64 %50, 14, !dbg !600
  br i1 %exitcond31.not, label %51, label %.preheader27, !dbg !600

51:                                               ; preds = %49
  ret i32 0, !dbg !600
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !601 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !602
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !602
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !602
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !602
  %6 = load ptr, ptr %5, align 8, !dbg !602
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !602
  %8 = load ptr, ptr %7, align 8, !dbg !602
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !602
  %10 = load ptr, ptr %9, align 8, !dbg !602
  %11 = ptrtoint ptr %4 to i64, !dbg !602
  %12 = add i64 %11, 100352, !dbg !602
  %13 = ptrtoint ptr %6 to i64, !dbg !602
  %14 = add i64 %13, 728960, !dbg !602
  %15 = ptrtoint ptr %10 to i64, !dbg !602
  %16 = add i64 %15, 551936, !dbg !602
  %17 = ptrtoint ptr %8 to i64, !dbg !602
  %18 = add i64 %17, 23408640, !dbg !602
  %19 = and i64 %12, 9223372036854775807, !dbg !602
  %20 = and i64 %14, 9223372036854775807, !dbg !602
  %21 = and i64 %16, 9223372036854775807, !dbg !602
  %22 = and i64 %18, 9223372036854775807, !dbg !602
  tail call void asm sideeffect "fence", ""() #14, !dbg !602
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !602
  tail call void @llvm.riscv.config(i64 6, i64 4307713612178259984), !dbg !602
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !602
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !602
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %19, i64 %20), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %22, i64 0), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !602
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !602
  %23 = add nuw i64 %19, 2048, !dbg !602
  %24 = add nuw i64 %20, 32768, !dbg !602
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %21), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !602
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !602
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !602
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !602
  tail call void asm sideeffect "fence", ""() #14, !dbg !602
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !602
  ret i32 0, !dbg !602
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !603 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !604
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !604
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !604
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !605
  %6 = load ptr, ptr %5, align 8, !dbg !605
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !605
  %8 = load ptr, ptr %7, align 8, !dbg !605
  %9 = ptrtoint ptr %4 to i64, !dbg !605
  %10 = add i64 %9, 551936, !dbg !605
  %11 = ptrtoint ptr %6 to i64, !dbg !605
  %12 = add i64 %11, 1380352, !dbg !605
  %13 = ptrtoint ptr %8 to i64, !dbg !605
  %14 = add i64 %13, 100352, !dbg !605
  %15 = add i64 %11, 23609344, !dbg !605
  %16 = and i64 %10, 9223372036854775807, !dbg !605
  %17 = and i64 %12, 9223372036854775807, !dbg !605
  %18 = and i64 %14, 9223372036854775807, !dbg !605
  %19 = and i64 %15, 9223372036854775807, !dbg !605
  tail call void asm sideeffect "fence", ""() #14, !dbg !605
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !605
  tail call void @llvm.riscv.config(i64 2, i64 4312053161234792464), !dbg !605
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !605
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !605
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !605
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !605
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %16, i64 %17), !dbg !605
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %19, i64 %18), !dbg !605
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !605
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !605
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !605
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !605
  tail call void asm sideeffect "fence", ""() #14, !dbg !605
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !605
  ret i32 0, !dbg !605
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !606 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !607
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !607
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !607
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !607
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !607
  %6 = load ptr, ptr %5, align 8, !dbg !607
  %7 = getelementptr i8, ptr %4, i64 100352, !dbg !608
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !608
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !607
  %9 = load ptr, ptr %8, align 8, !dbg !607
  %10 = getelementptr i8, ptr %9, i64 301056, !dbg !607
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !607
  %11 = load i32, ptr %2, align 16, !dbg !607
  %12 = zext i32 %11 to i64, !dbg !607
  %13 = lshr i64 %12, 4, !dbg !607
  %14 = and i64 %13, 268435452, !dbg !607
  %15 = shl nuw nsw i64 %12, 4, !dbg !607
  %16 = and i64 %15, 1008, !dbg !607
  %17 = alloca [64 x i8], align 1, !dbg !607
  %18 = ptrtoint ptr %4 to i64, !dbg !607
  %19 = ptrtoint ptr %6 to i64, !dbg !607
  %20 = add i64 %19, 856064, !dbg !607
  %21 = ptrtoint ptr %17 to i64, !dbg !607
  %22 = add i64 %19, 22605824, !dbg !607
  %23 = and i64 %18, 9223372036854775744, !dbg !607
  %24 = and i64 %20, 9223372036854775807, !dbg !607
  %25 = and i64 %21, 9223372036854775807, !dbg !607
  %26 = and i64 %22, 9223372036854775807, !dbg !607
  call void asm sideeffect "fence", ""() #14, !dbg !607
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !607
  call void @llvm.riscv.config(i64 2, i64 4377657231903031312), !dbg !607
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !607
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !607
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !607
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 137439019009), !dbg !607
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !607
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !607
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !607
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !607
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !607
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !607
  call void asm sideeffect "fence", ""() #14, !dbg !607
  br label %.preheader, !dbg !609

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = add nuw nsw i64 %27, %14
  %29 = shl nuw nsw i64 %28, 10
  %30 = or disjoint i64 %29, %16
  %31 = shl nuw nsw i64 %27, 4
  %32 = getelementptr inbounds nuw i8, ptr %17, i64 %31
  br label %33, !dbg !609

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = add nuw nsw i64 %34, %30, !dbg !609
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 %35, !dbg !609
  %37 = load i8, ptr %36, align 1, !dbg !609
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 %34, !dbg !609
  %39 = load i8, ptr %38, align 1, !dbg !609
  %40 = sitofp i8 %39 to float, !dbg !610
  %41 = fmul nnan contract float %40, 0x3FAE2EB9E0000000, !dbg !610
  %42 = sitofp i8 %37 to float, !dbg !611
  %43 = fmul nnan contract float %42, 0x3FB3FBD380000000, !dbg !611
  %44 = fadd contract float %43, %41, !dbg !612
  %45 = fdiv float %44, 0x3FB432EDA0000000, !dbg !613
  %46 = bitcast float %45 to i32, !dbg !613
  %47 = call float @llvm.round.f32(float %45), !dbg !613
  %48 = bitcast float %47 to i32, !dbg !613
  %49 = lshr i32 %46, 23, !dbg !613
  %50 = and i32 %49, 255, !dbg !613
  %51 = add nsw i32 %50, -127, !dbg !613
  %52 = lshr i32 %48, 23, !dbg !613
  %53 = and i32 %52, 255, !dbg !613
  %54 = icmp eq i32 %53, 127, !dbg !613
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !613
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !613
  %57 = lshr i32 8388607, %56, !dbg !613
  %58 = and i32 %57, %48, !dbg !613
  %59 = icmp ne i32 %58, 0, !dbg !613
  %60 = or i1 %54, %59, !dbg !613
  %61 = icmp eq i32 %51, -1, !dbg !613
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !613
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !613
  %64 = lshr i32 4194304, %63, !dbg !613
  %65 = select i1 %61, i32 0, i32 %64, !dbg !613
  %66 = lshr i32 8388607, %63, !dbg !613
  %67 = and i32 %66, %46, !dbg !613
  %68 = icmp eq i32 %67, %65, !dbg !613
  %69 = add nsw i32 %50, -126, !dbg !613
  %70 = icmp ult i32 %69, 24, !dbg !613
  %71 = and i1 %70, %68, !dbg !613
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !613
  %73 = and i1 %60, %71, !dbg !613
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !613
  %75 = fsub contract float %47, %74, !dbg !613
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !613
  %77 = fadd contract float %76, 0.000000e+00, !dbg !613
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !613
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !613
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !613
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !613
  %80 = fptosi float %79 to i8, !dbg !613
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !614
  %82 = uitofp nneg i8 %81 to float, !dbg !614
  %83 = bitcast float %82 to i32, !dbg !609
  %84 = lshr i32 %83, 23, !dbg !609
  %85 = add nsw i32 %84, -127, !dbg !609
  %86 = icmp eq i32 %85, 0, !dbg !609
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !609
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !609
  %89 = lshr i32 8388607, %88, !dbg !609
  %90 = and i32 %89, %83, !dbg !609
  %91 = icmp ne i32 %90, 0, !dbg !609
  %92 = or i1 %86, %91, !dbg !609
  %93 = icmp eq i32 %85, -1, !dbg !609
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !609
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !609
  %96 = lshr i32 4194304, %95, !dbg !609
  %97 = select i1 %93, i32 0, i32 %96, !dbg !609
  %98 = lshr i32 8388607, %95, !dbg !609
  %99 = and i32 %98, %83, !dbg !609
  %100 = icmp eq i32 %99, %97, !dbg !609
  %101 = add nsw i32 %83, -1056964608, !dbg !609
  %102 = icmp ult i32 %101, 201326592, !dbg !609
  %103 = and i1 %102, %100, !dbg !609
  %104 = add nsw i8 %81, -1, !dbg !609
  %105 = sitofp i8 %104 to float, !dbg !609
  %106 = and i1 %92, %103, !dbg !609
  %107 = call float @llvm.fabs.f32(float %105), !dbg !609
  %108 = select i1 %106, float %107, float %82, !dbg !609
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !609
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !609
  %110 = fptosi float %109 to i8, !dbg !609
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %35, !dbg !609
  store i8 %110, ptr %111, align 1, !dbg !609
  %112 = add nuw nsw i64 %34, 1, !dbg !609
  %exitcond.not = icmp eq i64 %112, 16, !dbg !609
  br i1 %exitcond.not, label %113, label %33, !dbg !609

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !609
  %exitcond25.not = icmp eq i64 %114, 4, !dbg !609
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !609

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !607
  ret i32 0, !dbg !607
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !615 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !616
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !616
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !616
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !617
  %6 = load ptr, ptr %5, align 8, !dbg !617
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !617
  %8 = load ptr, ptr %7, align 8, !dbg !617
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !617
  %9 = ptrtoint ptr %4 to i64, !dbg !617
  %10 = add i64 %9, 301056, !dbg !617
  %11 = ptrtoint ptr %6 to i64, !dbg !617
  %12 = add i64 %11, 1642496, !dbg !617
  %13 = ptrtoint ptr %8 to i64, !dbg !617
  %14 = add i64 %11, 24412160, !dbg !617
  %15 = and i64 %10, 9223372036854775807, !dbg !617
  %16 = and i64 %12, 9223372036854775807, !dbg !617
  %17 = and i64 %13, 9223372036854775744, !dbg !617
  %18 = and i64 %14, 9223372036854775807, !dbg !617
  tail call void asm sideeffect "fence", ""() #14, !dbg !617
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !617
  tail call void @llvm.riscv.config(i64 6, i64 4331193305032294416), !dbg !617
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !617
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !617
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !617
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !617
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !617
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !617
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !617
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !617
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !617
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !617
  tail call void asm sideeffect "fence", ""() #14, !dbg !617
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !617
  ret i32 0, !dbg !617
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_62_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !618 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !619
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !619
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !619
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !619
  %4 = load i32, ptr %.unpack18, align 4, !dbg !619
  %5 = zext i32 %4 to i64, !dbg !619
  %6 = load ptr, ptr %.unpack20, align 8, !dbg !620
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !620
  %7 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !619
  %8 = load ptr, ptr %7, align 8, !dbg !619
  %9 = getelementptr i8, ptr %8, i64 %5, !dbg !619
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !619
  %10 = load i32, ptr %2, align 16, !dbg !619
  %11 = zext i32 %10 to i64, !dbg !619
  %12 = lshr i64 %11, 2, !dbg !619
  %13 = mul nuw nsw i64 %12, 7, !dbg !619
  %14 = shl nuw nsw i64 %11, 6, !dbg !619
  %15 = and i64 %14, 192, !dbg !619
  br label %.preheader23, !dbg !619

.preheader23:                                     ; preds = %3, %37
  %16 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %17 = add nuw nsw i64 %16, %13
  %18 = mul nuw nsw i64 %17, 3584
  %19 = getelementptr i8, ptr %6, i64 %18
  %20 = shl i64 %17, 12
  %21 = getelementptr i8, ptr %9, i64 %20
  br label %.preheader, !dbg !619

.preheader:                                       ; preds = %.preheader23, %35
  %22 = phi i64 [ 0, %.preheader23 ], [ %36, %35 ]
  %23 = shl i64 %22, 8
  %24 = getelementptr i8, ptr %19, i64 %23
  %25 = getelementptr i8, ptr %21, i64 %23
  %26 = getelementptr i8, ptr %25, i64 4352
  br label %27, !dbg !619

27:                                               ; preds = %.preheader, %27
  %28 = phi i64 [ 0, %.preheader ], [ %33, %27 ]
  %29 = or disjoint i64 %28, %15, !dbg !619
  %30 = getelementptr i8, ptr %24, i64 %29, !dbg !619
  %31 = load <2 x i8>, ptr %30, align 2, !dbg !619
  %32 = getelementptr i8, ptr %26, i64 %29, !dbg !619
  store <2 x i8> %31, ptr %32, align 2, !dbg !619
  %33 = add nuw nsw i64 %28, 2, !dbg !619
  %34 = icmp samesign ult i64 %28, 62, !dbg !619
  br i1 %34, label %27, label %35, !dbg !619

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %22, 1, !dbg !619
  %exitcond.not = icmp eq i64 %36, 14, !dbg !619
  br i1 %exitcond.not, label %37, label %.preheader, !dbg !619

37:                                               ; preds = %35
  %38 = add nuw nsw i64 %16, 1, !dbg !619
  %exitcond24.not = icmp eq i64 %38, 7, !dbg !619
  br i1 %exitcond24.not, label %39, label %.preheader23, !dbg !619

39:                                               ; preds = %37
  ret i32 0, !dbg !619
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_63_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !621 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !622
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !622
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !622
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !622
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !622
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !622
  %7 = load ptr, ptr %6, align 8, !dbg !622
  %8 = getelementptr i8, ptr %7, i64 501760, !dbg !622
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !622
  %9 = load i32, ptr %2, align 16, !dbg !622
  %10 = zext i32 %9 to i64, !dbg !622
  %11 = shl nuw nsw i64 %10, 5, !dbg !622
  br label %.preheader26, !dbg !622

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !622

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 2304
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !622

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !622
  %21 = shl nuw nsw i64 %20, 12
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 768
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !622

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !622
  %28 = shl nuw nsw i64 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 8
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !622

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !622
  br label %35, !dbg !622

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !622
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !622
  %39 = load i8, ptr %38, align 1, !dbg !622
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !622
  store i8 %39, ptr %40, align 1, !dbg !622
  %41 = add nuw nsw i64 %36, 1, !dbg !622
  %exitcond.not = icmp eq i64 %41, 8, !dbg !622
  br i1 %exitcond.not, label %42, label %35, !dbg !622

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !622
  %44 = icmp samesign ult i64 %33, 24, !dbg !622
  br i1 %44, label %32, label %45, !dbg !622

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !622
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !622
  br i1 %exitcond27.not, label %47, label %25, !dbg !622

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !622
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !622
  br i1 %exitcond28.not, label %49, label %18, !dbg !622

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !622
  %exitcond29.not = icmp eq i64 %50, 14, !dbg !622
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !622

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !622
  %exitcond30.not = icmp eq i64 %52, 14, !dbg !622
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !622

53:                                               ; preds = %51
  ret i32 0, !dbg !622
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !623 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !624
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !624
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !624
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !624
  %6 = load ptr, ptr %5, align 8, !dbg !624
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !624
  %8 = load ptr, ptr %7, align 8, !dbg !624
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !624
  %10 = load ptr, ptr %9, align 8, !dbg !624
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !624
  %11 = ptrtoint ptr %4 to i64, !dbg !624
  %12 = add i64 %11, 501760, !dbg !624
  %13 = ptrtoint ptr %6 to i64, !dbg !624
  %14 = add i64 %13, 1318784, !dbg !624
  %15 = ptrtoint ptr %10 to i64, !dbg !624
  %16 = ptrtoint ptr %8 to i64, !dbg !624
  %17 = add i64 %16, 24612864, !dbg !624
  %18 = and i64 %12, 9223372036854775807, !dbg !624
  %19 = and i64 %14, 9223372036854775807, !dbg !624
  %20 = and i64 %15, 9223372036854775744, !dbg !624
  %21 = and i64 %17, 9223372036854775807, !dbg !624
  tail call void asm sideeffect "fence", ""() #14, !dbg !624
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !624
  tail call void @llvm.riscv.config(i64 6, i64 4348042023647838224), !dbg !624
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !624
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !624
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !624
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !624
  %22 = add nuw i64 %18, 2048, !dbg !624
  %23 = add nuw i64 %19, 32768, !dbg !624
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !624
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !624
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !624
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !624
  tail call void asm sideeffect "fence", ""() #14, !dbg !624
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !624
  ret i32 0, !dbg !624
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !625 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !626
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !626
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !626
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !626
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !627
  %6 = load ptr, ptr %5, align 8, !dbg !627
  %7 = getelementptr i8, ptr %4, i64 301056, !dbg !628
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !628
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !627
  %9 = load ptr, ptr %8, align 8, !dbg !627
  %10 = getelementptr i8, ptr %9, i64 50176, !dbg !627
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !627
  %11 = load i32, ptr %2, align 16, !dbg !627
  %12 = zext i32 %11 to i64, !dbg !627
  %13 = lshr i64 %12, 4, !dbg !627
  %14 = and i64 %13, 268435452, !dbg !627
  %15 = shl nuw nsw i64 %12, 4, !dbg !627
  %16 = and i64 %15, 1008, !dbg !627
  %17 = alloca [64 x i8], align 1, !dbg !627
  %18 = ptrtoint ptr %4 to i64, !dbg !627
  %19 = ptrtoint ptr %6 to i64, !dbg !627
  %20 = add i64 %19, 1904640, !dbg !627
  %21 = ptrtoint ptr %17 to i64, !dbg !627
  %22 = add i64 %19, 24813568, !dbg !627
  %23 = and i64 %18, 9223372036854775744, !dbg !627
  %24 = and i64 %20, 9223372036854775807, !dbg !627
  %25 = and i64 %21, 9223372036854775807, !dbg !627
  %26 = and i64 %22, 9223372036854775807, !dbg !627
  call void asm sideeffect "fence", ""() #14, !dbg !627
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !627
  call void @llvm.riscv.config(i64 2, i64 4337200486810648592), !dbg !627
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !627
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !627
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !627
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !627
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !627
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !627
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !627
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !627
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !627
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !627
  call void asm sideeffect "fence", ""() #14, !dbg !627
  br label %.preheader, !dbg !629

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 10
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !629

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !629
  %36 = load i8, ptr %35, align 1, !dbg !629
  %37 = add nuw nsw i64 %34, %32, !dbg !629
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !629
  %39 = load i8, ptr %38, align 1, !dbg !629
  %40 = sitofp i8 %39 to float, !dbg !630
  %41 = fmul nnan contract float %40, 0x3FB432EDA0000000, !dbg !630
  %42 = sitofp i8 %36 to float, !dbg !631
  %43 = fmul nnan contract float %42, 0x3FB37444C0000000, !dbg !631
  %44 = fadd contract float %43, %41, !dbg !632
  %45 = fdiv float %44, 0x3FB442A3E0000000, !dbg !633
  %46 = bitcast float %45 to i32, !dbg !633
  %47 = call float @llvm.round.f32(float %45), !dbg !633
  %48 = bitcast float %47 to i32, !dbg !633
  %49 = lshr i32 %46, 23, !dbg !633
  %50 = and i32 %49, 255, !dbg !633
  %51 = add nsw i32 %50, -127, !dbg !633
  %52 = lshr i32 %48, 23, !dbg !633
  %53 = and i32 %52, 255, !dbg !633
  %54 = icmp eq i32 %53, 127, !dbg !633
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !633
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !633
  %57 = lshr i32 8388607, %56, !dbg !633
  %58 = and i32 %57, %48, !dbg !633
  %59 = icmp ne i32 %58, 0, !dbg !633
  %60 = or i1 %54, %59, !dbg !633
  %61 = icmp eq i32 %51, -1, !dbg !633
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !633
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !633
  %64 = lshr i32 4194304, %63, !dbg !633
  %65 = select i1 %61, i32 0, i32 %64, !dbg !633
  %66 = lshr i32 8388607, %63, !dbg !633
  %67 = and i32 %66, %46, !dbg !633
  %68 = icmp eq i32 %67, %65, !dbg !633
  %69 = add nsw i32 %50, -126, !dbg !633
  %70 = icmp ult i32 %69, 24, !dbg !633
  %71 = and i1 %70, %68, !dbg !633
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !633
  %73 = and i1 %60, %71, !dbg !633
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !633
  %75 = fsub contract float %47, %74, !dbg !633
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !633
  %77 = fadd contract float %76, 0.000000e+00, !dbg !633
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !633
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !633
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !633
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !633
  %80 = fptosi float %79 to i8, !dbg !633
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !634
  %82 = uitofp nneg i8 %81 to float, !dbg !634
  %83 = bitcast float %82 to i32, !dbg !629
  %84 = lshr i32 %83, 23, !dbg !629
  %85 = add nsw i32 %84, -127, !dbg !629
  %86 = icmp eq i32 %85, 0, !dbg !629
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !629
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !629
  %89 = lshr i32 8388607, %88, !dbg !629
  %90 = and i32 %89, %83, !dbg !629
  %91 = icmp ne i32 %90, 0, !dbg !629
  %92 = or i1 %86, %91, !dbg !629
  %93 = icmp eq i32 %85, -1, !dbg !629
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !629
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !629
  %96 = lshr i32 4194304, %95, !dbg !629
  %97 = select i1 %93, i32 0, i32 %96, !dbg !629
  %98 = lshr i32 8388607, %95, !dbg !629
  %99 = and i32 %98, %83, !dbg !629
  %100 = icmp eq i32 %99, %97, !dbg !629
  %101 = add nsw i32 %83, -1056964608, !dbg !629
  %102 = icmp ult i32 %101, 201326592, !dbg !629
  %103 = and i1 %102, %100, !dbg !629
  %104 = add nsw i8 %81, -1, !dbg !629
  %105 = sitofp i8 %104 to float, !dbg !629
  %106 = and i1 %92, %103, !dbg !629
  %107 = call float @llvm.fabs.f32(float %105), !dbg !629
  %108 = select i1 %106, float %107, float %82, !dbg !629
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !629
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !629
  %110 = fptosi float %109 to i8, !dbg !629
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !629
  store i8 %110, ptr %111, align 1, !dbg !629
  %112 = add nuw nsw i64 %34, 1, !dbg !629
  %exitcond.not = icmp eq i64 %112, 16, !dbg !629
  br i1 %exitcond.not, label %113, label %33, !dbg !629

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !629
  %exitcond25.not = icmp eq i64 %114, 4, !dbg !629
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !629

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !627
  ret i32 0, !dbg !627
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !635 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !636
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !636
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !636
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !637
  %6 = load ptr, ptr %5, align 8, !dbg !637
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !637
  %8 = load ptr, ptr %7, align 8, !dbg !637
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !637
  %9 = ptrtoint ptr %4 to i64, !dbg !637
  %10 = add i64 %9, 50176, !dbg !637
  %11 = ptrtoint ptr %6 to i64, !dbg !637
  %12 = add i64 %11, 2166784, !dbg !637
  %13 = ptrtoint ptr %8 to i64, !dbg !637
  %14 = add i64 %11, 25616384, !dbg !637
  %15 = and i64 %10, 9223372036854775807, !dbg !637
  %16 = and i64 %12, 9223372036854775807, !dbg !637
  %17 = and i64 %13, 9223372036854775744, !dbg !637
  %18 = and i64 %14, 9223372036854775807, !dbg !637
  tail call void asm sideeffect "fence", ""() #14, !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !637
  tail call void @llvm.riscv.config(i64 6, i64 4332150240925712400), !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !637
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !637
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !637
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !637
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !637
  tail call void asm sideeffect "fence", ""() #14, !dbg !637
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !637
  ret i32 0, !dbg !637
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_68_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !638 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !639
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !639
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !639
  %5 = getelementptr i8, ptr %4, i64 250880, !dbg !639
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !639
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !639
  %7 = load ptr, ptr %6, align 8, !dbg !639
  %8 = getelementptr i8, ptr %7, i64 316416, !dbg !639
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !639
  %9 = load i32, ptr %2, align 16, !dbg !639
  %10 = zext i32 %9 to i64, !dbg !639
  %11 = shl nuw nsw i64 %10, 5, !dbg !639
  br label %.preheader26, !dbg !639

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !639

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 2304
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !639

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !639
  %21 = shl nuw nsw i64 %20, 12
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 768
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !639

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !639
  %28 = shl nuw nsw i64 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 8
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !639

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !639
  br label %35, !dbg !639

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !639
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !639
  %39 = load i8, ptr %38, align 1, !dbg !639
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !639
  store i8 %39, ptr %40, align 1, !dbg !639
  %41 = add nuw nsw i64 %36, 1, !dbg !639
  %exitcond.not = icmp eq i64 %41, 8, !dbg !639
  br i1 %exitcond.not, label %42, label %35, !dbg !639

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !639
  %44 = icmp samesign ult i64 %33, 24, !dbg !639
  br i1 %44, label %32, label %45, !dbg !639

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !639
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !639
  br i1 %exitcond27.not, label %47, label %25, !dbg !639

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !639
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !639
  br i1 %exitcond28.not, label %49, label %18, !dbg !639

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !639
  %exitcond29.not = icmp eq i64 %50, 14, !dbg !639
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !639

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !639
  %exitcond30.not = icmp eq i64 %52, 14, !dbg !639
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !639

53:                                               ; preds = %51
  ret i32 0, !dbg !639
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !640 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !641
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !641
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !641
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !641
  %6 = load ptr, ptr %5, align 8, !dbg !641
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !641
  %8 = load ptr, ptr %7, align 8, !dbg !641
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !641
  %10 = load ptr, ptr %9, align 8, !dbg !641
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !641
  %11 = ptrtoint ptr %4 to i64, !dbg !641
  %12 = add i64 %11, 316416, !dbg !641
  %13 = ptrtoint ptr %6 to i64, !dbg !641
  %14 = add i64 %13, 1908608, !dbg !641
  %15 = ptrtoint ptr %10 to i64, !dbg !641
  %16 = ptrtoint ptr %8 to i64, !dbg !641
  %17 = add i64 %16, 25817088, !dbg !641
  %18 = and i64 %12, 9223372036854775807, !dbg !641
  %19 = and i64 %14, 9223372036854775807, !dbg !641
  %20 = and i64 %15, 9223372036854775744, !dbg !641
  %21 = and i64 %17, 9223372036854775807, !dbg !641
  tail call void asm sideeffect "fence", ""() #14, !dbg !641
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !641
  tail call void @llvm.riscv.config(i64 6, i64 4288824930126004240), !dbg !641
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !641
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !641
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !641
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !641
  %22 = add nuw i64 %18, 2048, !dbg !641
  %23 = add nuw i64 %19, 32768, !dbg !641
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !641
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !641
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !641
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !641
  tail call void asm sideeffect "fence", ""() #14, !dbg !641
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !641
  ret i32 0, !dbg !641
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !642 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !643
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !643
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !643
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !643
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !644
  %6 = load ptr, ptr %5, align 8, !dbg !644
  %7 = getelementptr i8, ptr %4, i64 50176, !dbg !645
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !645
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !644
  %9 = load ptr, ptr %8, align 8, !dbg !644
  %10 = getelementptr i8, ptr %9, i64 250880, !dbg !644
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !644
  %11 = load i32, ptr %2, align 16, !dbg !644
  %12 = zext i32 %11 to i64, !dbg !644
  %13 = lshr i64 %12, 4, !dbg !644
  %14 = and i64 %13, 268435452, !dbg !644
  %15 = shl nuw nsw i64 %12, 4, !dbg !644
  %16 = and i64 %15, 1008, !dbg !644
  %17 = alloca [64 x i8], align 1, !dbg !644
  %18 = ptrtoint ptr %4 to i64, !dbg !644
  %19 = ptrtoint ptr %6 to i64, !dbg !644
  %20 = add i64 %19, 2428928, !dbg !644
  %21 = ptrtoint ptr %17 to i64, !dbg !644
  %22 = add i64 %19, 26017792, !dbg !644
  %23 = and i64 %18, 9223372036854775744, !dbg !644
  %24 = and i64 %20, 9223372036854775807, !dbg !644
  %25 = and i64 %21, 9223372036854775807, !dbg !644
  %26 = and i64 %22, 9223372036854775807, !dbg !644
  call void asm sideeffect "fence", ""() #14, !dbg !644
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !644
  call void @llvm.riscv.config(i64 2, i64 4369865826220638224), !dbg !644
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !644
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !644
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !644
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !644
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !644
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !644
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !644
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !644
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !644
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !644
  call void asm sideeffect "fence", ""() #14, !dbg !644
  br label %.preheader, !dbg !646

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 10
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !646

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !646
  %36 = load i8, ptr %35, align 1, !dbg !646
  %37 = add nuw nsw i64 %34, %32, !dbg !646
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !646
  %39 = load i8, ptr %38, align 1, !dbg !646
  %40 = sitofp i8 %39 to float, !dbg !647
  %41 = fmul nnan contract float %40, 0x3FB442A3E0000000, !dbg !647
  %42 = sitofp i8 %36 to float, !dbg !648
  %43 = fmul nnan contract float %42, 0x3FB96CEE00000000, !dbg !648
  %44 = fadd contract float %43, %41, !dbg !649
  %45 = fdiv float %44, 0x3FC2B669A0000000, !dbg !650
  %46 = bitcast float %45 to i32, !dbg !650
  %47 = call float @llvm.round.f32(float %45), !dbg !650
  %48 = bitcast float %47 to i32, !dbg !650
  %49 = lshr i32 %46, 23, !dbg !650
  %50 = and i32 %49, 255, !dbg !650
  %51 = add nsw i32 %50, -127, !dbg !650
  %52 = lshr i32 %48, 23, !dbg !650
  %53 = and i32 %52, 255, !dbg !650
  %54 = icmp eq i32 %53, 127, !dbg !650
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !650
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !650
  %57 = lshr i32 8388607, %56, !dbg !650
  %58 = and i32 %57, %48, !dbg !650
  %59 = icmp ne i32 %58, 0, !dbg !650
  %60 = or i1 %54, %59, !dbg !650
  %61 = icmp eq i32 %51, -1, !dbg !650
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !650
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !650
  %64 = lshr i32 4194304, %63, !dbg !650
  %65 = select i1 %61, i32 0, i32 %64, !dbg !650
  %66 = lshr i32 8388607, %63, !dbg !650
  %67 = and i32 %66, %46, !dbg !650
  %68 = icmp eq i32 %67, %65, !dbg !650
  %69 = add nsw i32 %50, -126, !dbg !650
  %70 = icmp ult i32 %69, 24, !dbg !650
  %71 = and i1 %70, %68, !dbg !650
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !650
  %73 = and i1 %60, %71, !dbg !650
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !650
  %75 = fsub contract float %47, %74, !dbg !650
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !650
  %77 = fadd contract float %76, 0.000000e+00, !dbg !650
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !650
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !650
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !650
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !650
  %80 = fptosi float %79 to i8, !dbg !650
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !651
  %82 = uitofp nneg i8 %81 to float, !dbg !651
  %83 = bitcast float %82 to i32, !dbg !646
  %84 = lshr i32 %83, 23, !dbg !646
  %85 = add nsw i32 %84, -127, !dbg !646
  %86 = icmp eq i32 %85, 0, !dbg !646
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !646
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !646
  %89 = lshr i32 8388607, %88, !dbg !646
  %90 = and i32 %89, %83, !dbg !646
  %91 = icmp ne i32 %90, 0, !dbg !646
  %92 = or i1 %86, %91, !dbg !646
  %93 = icmp eq i32 %85, -1, !dbg !646
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !646
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !646
  %96 = lshr i32 4194304, %95, !dbg !646
  %97 = select i1 %93, i32 0, i32 %96, !dbg !646
  %98 = lshr i32 8388607, %95, !dbg !646
  %99 = and i32 %98, %83, !dbg !646
  %100 = icmp eq i32 %99, %97, !dbg !646
  %101 = add nsw i32 %83, -1056964608, !dbg !646
  %102 = icmp ult i32 %101, 201326592, !dbg !646
  %103 = and i1 %102, %100, !dbg !646
  %104 = add nsw i8 %81, -1, !dbg !646
  %105 = sitofp i8 %104 to float, !dbg !646
  %106 = and i1 %92, %103, !dbg !646
  %107 = call float @llvm.fabs.f32(float %105), !dbg !646
  %108 = select i1 %106, float %107, float %82, !dbg !646
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !646
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !646
  %110 = fptosi float %109 to i8, !dbg !646
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !646
  store i8 %110, ptr %111, align 1, !dbg !646
  %112 = add nuw nsw i64 %34, 1, !dbg !646
  %exitcond.not = icmp eq i64 %112, 16, !dbg !646
  br i1 %exitcond.not, label %113, label %33, !dbg !646

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !646
  %exitcond25.not = icmp eq i64 %114, 4, !dbg !646
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !646

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !644
  ret i32 0, !dbg !644
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !652 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !653
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !653
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !653
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !654
  %6 = load ptr, ptr %5, align 8, !dbg !654
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !654
  %8 = load ptr, ptr %7, align 8, !dbg !654
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !654
  %9 = ptrtoint ptr %4 to i64, !dbg !654
  %10 = add i64 %9, 250880, !dbg !654
  %11 = ptrtoint ptr %6 to i64, !dbg !654
  %12 = add i64 %11, 2691072, !dbg !654
  %13 = ptrtoint ptr %8 to i64, !dbg !654
  %14 = add i64 %11, 26820608, !dbg !654
  %15 = and i64 %10, 9223372036854775807, !dbg !654
  %16 = and i64 %12, 9223372036854775807, !dbg !654
  %17 = and i64 %13, 9223372036854775744, !dbg !654
  %18 = and i64 %14, 9223372036854775807, !dbg !654
  tail call void asm sideeffect "fence", ""() #14, !dbg !654
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !654
  tail call void @llvm.riscv.config(i64 6, i64 4263493105640013840), !dbg !654
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !654
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !654
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !654
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !654
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !654
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !654
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !654
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !654
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !654
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !654
  tail call void asm sideeffect "fence", ""() #14, !dbg !654
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !654
  ret i32 0, !dbg !654
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_73_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !655 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !656
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !656
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !656
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !656
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !656
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !656
  %7 = load ptr, ptr %6, align 8, !dbg !656
  %8 = getelementptr i8, ptr %7, i64 451584, !dbg !656
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !656
  %9 = load i32, ptr %2, align 16, !dbg !656
  %10 = zext i32 %9 to i64, !dbg !656
  %11 = shl nuw nsw i64 %10, 5, !dbg !656
  br label %.preheader26, !dbg !656

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !656

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 2304
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !656

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !656
  %21 = shl nuw nsw i64 %20, 12
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 768
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !656

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !656
  %28 = shl nuw nsw i64 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 8
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !656

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !656
  br label %35, !dbg !656

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !656
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !656
  %39 = load i8, ptr %38, align 1, !dbg !656
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !656
  store i8 %39, ptr %40, align 1, !dbg !656
  %41 = add nuw nsw i64 %36, 1, !dbg !656
  %exitcond.not = icmp eq i64 %41, 8, !dbg !656
  br i1 %exitcond.not, label %42, label %35, !dbg !656

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !656
  %44 = icmp samesign ult i64 %33, 24, !dbg !656
  br i1 %44, label %32, label %45, !dbg !656

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !656
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !656
  br i1 %exitcond27.not, label %47, label %25, !dbg !656

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !656
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !656
  br i1 %exitcond28.not, label %49, label %18, !dbg !656

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !656
  %exitcond29.not = icmp eq i64 %50, 14, !dbg !656
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !656

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !656
  %exitcond30.not = icmp eq i64 %52, 14, !dbg !656
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !656

53:                                               ; preds = %51
  ret i32 0, !dbg !656
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !657 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !658
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !658
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !658
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !658
  %6 = load ptr, ptr %5, align 8, !dbg !658
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !658
  %8 = load ptr, ptr %7, align 8, !dbg !658
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !658
  %10 = load ptr, ptr %9, align 8, !dbg !658
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !658
  %11 = ptrtoint ptr %4 to i64, !dbg !658
  %12 = add i64 %11, 451584, !dbg !658
  %13 = ptrtoint ptr %6 to i64, !dbg !658
  %14 = add i64 %13, 2498432, !dbg !658
  %15 = ptrtoint ptr %10 to i64, !dbg !658
  %16 = ptrtoint ptr %8 to i64, !dbg !658
  %17 = add i64 %16, 27021312, !dbg !658
  %18 = and i64 %12, 9223372036854775807, !dbg !658
  %19 = and i64 %14, 9223372036854775807, !dbg !658
  %20 = and i64 %15, 9223372036854775744, !dbg !658
  %21 = and i64 %17, 9223372036854775807, !dbg !658
  tail call void asm sideeffect "fence", ""() #14, !dbg !658
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !658
  tail call void @llvm.riscv.config(i64 6, i64 4323524580795744272), !dbg !658
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !658
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !658
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !658
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !658
  %22 = add nuw i64 %18, 2048, !dbg !658
  %23 = add nuw i64 %19, 32768, !dbg !658
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !658
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !658
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !658
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !658
  tail call void asm sideeffect "fence", ""() #14, !dbg !658
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !658
  ret i32 0, !dbg !658
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !659 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !660
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !660
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !660
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !660
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !661
  %6 = load ptr, ptr %5, align 8, !dbg !661
  %7 = getelementptr i8, ptr %4, i64 250880, !dbg !662
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !662
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !661
  %9 = load ptr, ptr %8, align 8, !dbg !661
  %10 = getelementptr i8, ptr %9, i64 50176, !dbg !661
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !661
  %11 = load i32, ptr %2, align 16, !dbg !661
  %12 = zext i32 %11 to i64, !dbg !661
  %13 = lshr i64 %12, 4, !dbg !661
  %14 = and i64 %13, 268435452, !dbg !661
  %15 = shl nuw nsw i64 %12, 4, !dbg !661
  %16 = and i64 %15, 1008, !dbg !661
  %17 = alloca [64 x i8], align 1, !dbg !661
  %18 = ptrtoint ptr %4 to i64, !dbg !661
  %19 = ptrtoint ptr %6 to i64, !dbg !661
  %20 = add i64 %19, 2953216, !dbg !661
  %21 = ptrtoint ptr %17 to i64, !dbg !661
  %22 = add i64 %19, 27222016, !dbg !661
  %23 = and i64 %18, 9223372036854775744, !dbg !661
  %24 = and i64 %20, 9223372036854775807, !dbg !661
  %25 = and i64 %21, 9223372036854775807, !dbg !661
  %26 = and i64 %22, 9223372036854775807, !dbg !661
  call void asm sideeffect "fence", ""() #14, !dbg !661
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !661
  call void @llvm.riscv.config(i64 2, i64 4346944990216192016), !dbg !661
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !661
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !661
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !661
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !661
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !661
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !661
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !661
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !661
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !661
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !661
  call void asm sideeffect "fence", ""() #14, !dbg !661
  br label %.preheader, !dbg !663

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 10
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !663

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !663
  %36 = load i8, ptr %35, align 1, !dbg !663
  %37 = add nuw nsw i64 %34, %32, !dbg !663
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !663
  %39 = load i8, ptr %38, align 1, !dbg !663
  %40 = sitofp i8 %39 to float, !dbg !664
  %41 = fmul nnan contract float %40, 0x3FC2B669A0000000, !dbg !664
  %42 = sitofp i8 %36 to float, !dbg !665
  %43 = fmul nnan contract float %42, 0x3FD862E880000000, !dbg !665
  %44 = fadd contract float %43, %41, !dbg !666
  %45 = fdiv float %44, 0x3FD86BBA20000000, !dbg !667
  %46 = bitcast float %45 to i32, !dbg !667
  %47 = call float @llvm.round.f32(float %45), !dbg !667
  %48 = bitcast float %47 to i32, !dbg !667
  %49 = lshr i32 %46, 23, !dbg !667
  %50 = and i32 %49, 255, !dbg !667
  %51 = add nsw i32 %50, -127, !dbg !667
  %52 = lshr i32 %48, 23, !dbg !667
  %53 = and i32 %52, 255, !dbg !667
  %54 = icmp eq i32 %53, 127, !dbg !667
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !667
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !667
  %57 = lshr i32 8388607, %56, !dbg !667
  %58 = and i32 %57, %48, !dbg !667
  %59 = icmp ne i32 %58, 0, !dbg !667
  %60 = or i1 %54, %59, !dbg !667
  %61 = icmp eq i32 %51, -1, !dbg !667
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !667
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !667
  %64 = lshr i32 4194304, %63, !dbg !667
  %65 = select i1 %61, i32 0, i32 %64, !dbg !667
  %66 = lshr i32 8388607, %63, !dbg !667
  %67 = and i32 %66, %46, !dbg !667
  %68 = icmp eq i32 %67, %65, !dbg !667
  %69 = add nsw i32 %50, -126, !dbg !667
  %70 = icmp ult i32 %69, 24, !dbg !667
  %71 = and i1 %70, %68, !dbg !667
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !667
  %73 = and i1 %60, %71, !dbg !667
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !667
  %75 = fsub contract float %47, %74, !dbg !667
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !667
  %77 = fadd contract float %76, 0.000000e+00, !dbg !667
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !667
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !667
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !667
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !667
  %80 = fptosi float %79 to i8, !dbg !667
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !668
  %82 = uitofp nneg i8 %81 to float, !dbg !668
  %83 = bitcast float %82 to i32, !dbg !663
  %84 = lshr i32 %83, 23, !dbg !663
  %85 = add nsw i32 %84, -127, !dbg !663
  %86 = icmp eq i32 %85, 0, !dbg !663
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !663
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !663
  %89 = lshr i32 8388607, %88, !dbg !663
  %90 = and i32 %89, %83, !dbg !663
  %91 = icmp ne i32 %90, 0, !dbg !663
  %92 = or i1 %86, %91, !dbg !663
  %93 = icmp eq i32 %85, -1, !dbg !663
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !663
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !663
  %96 = lshr i32 4194304, %95, !dbg !663
  %97 = select i1 %93, i32 0, i32 %96, !dbg !663
  %98 = lshr i32 8388607, %95, !dbg !663
  %99 = and i32 %98, %83, !dbg !663
  %100 = icmp eq i32 %99, %97, !dbg !663
  %101 = add nsw i32 %83, -1056964608, !dbg !663
  %102 = icmp ult i32 %101, 201326592, !dbg !663
  %103 = and i1 %102, %100, !dbg !663
  %104 = add nsw i8 %81, -1, !dbg !663
  %105 = sitofp i8 %104 to float, !dbg !663
  %106 = and i1 %92, %103, !dbg !663
  %107 = call float @llvm.fabs.f32(float %105), !dbg !663
  %108 = select i1 %106, float %107, float %82, !dbg !663
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !663
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !663
  %110 = fptosi float %109 to i8, !dbg !663
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !663
  store i8 %110, ptr %111, align 1, !dbg !663
  %112 = add nuw nsw i64 %34, 1, !dbg !663
  %exitcond.not = icmp eq i64 %112, 16, !dbg !663
  br i1 %exitcond.not, label %113, label %33, !dbg !663

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !663
  %exitcond25.not = icmp eq i64 %114, 4, !dbg !663
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !663

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !661
  ret i32 0, !dbg !661
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !669 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !670
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !670
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !670
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !671
  %6 = load ptr, ptr %5, align 8, !dbg !671
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !671
  %8 = load ptr, ptr %7, align 8, !dbg !671
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !671
  %9 = ptrtoint ptr %4 to i64, !dbg !671
  %10 = add i64 %9, 50176, !dbg !671
  %11 = ptrtoint ptr %6 to i64, !dbg !671
  %12 = add i64 %11, 3215360, !dbg !671
  %13 = ptrtoint ptr %8 to i64, !dbg !671
  %14 = add i64 %11, 28024832, !dbg !671
  %15 = and i64 %10, 9223372036854775807, !dbg !671
  %16 = and i64 %12, 9223372036854775807, !dbg !671
  %17 = and i64 %13, 9223372036854775744, !dbg !671
  %18 = and i64 %14, 9223372036854775807, !dbg !671
  tail call void asm sideeffect "fence", ""() #14, !dbg !671
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !671
  tail call void @llvm.riscv.config(i64 6, i64 4299884659891765264), !dbg !671
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !671
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !671
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !671
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !671
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !671
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !671
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !671
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !671
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !671
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !671
  tail call void asm sideeffect "fence", ""() #14, !dbg !671
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !671
  ret i32 0, !dbg !671
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_78_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !672 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !673
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !673
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !673
  %5 = getelementptr i8, ptr %4, i64 250880, !dbg !673
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !673
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !673
  %7 = load ptr, ptr %6, align 8, !dbg !673
  %8 = getelementptr i8, ptr %7, i64 316416, !dbg !673
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !673
  %9 = load i32, ptr %2, align 16, !dbg !673
  %10 = zext i32 %9 to i64, !dbg !673
  %11 = shl nuw nsw i64 %10, 5, !dbg !673
  br label %.preheader26, !dbg !673

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !673

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 2304
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !673

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !673
  %21 = shl nuw nsw i64 %20, 12
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 768
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !673

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !673
  %28 = shl nuw nsw i64 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 8
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !673

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !673
  br label %35, !dbg !673

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !673
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !673
  %39 = load i8, ptr %38, align 1, !dbg !673
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !673
  store i8 %39, ptr %40, align 1, !dbg !673
  %41 = add nuw nsw i64 %36, 1, !dbg !673
  %exitcond.not = icmp eq i64 %41, 8, !dbg !673
  br i1 %exitcond.not, label %42, label %35, !dbg !673

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !673
  %44 = icmp samesign ult i64 %33, 24, !dbg !673
  br i1 %44, label %32, label %45, !dbg !673

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !673
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !673
  br i1 %exitcond27.not, label %47, label %25, !dbg !673

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !673
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !673
  br i1 %exitcond28.not, label %49, label %18, !dbg !673

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !673
  %exitcond29.not = icmp eq i64 %50, 14, !dbg !673
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !673

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !673
  %exitcond30.not = icmp eq i64 %52, 14, !dbg !673
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !673

53:                                               ; preds = %51
  ret i32 0, !dbg !673
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !674 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !675
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !675
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !675
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !675
  %6 = load ptr, ptr %5, align 8, !dbg !675
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !675
  %8 = load ptr, ptr %7, align 8, !dbg !675
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !675
  %10 = load ptr, ptr %9, align 8, !dbg !675
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !675
  %11 = ptrtoint ptr %4 to i64, !dbg !675
  %12 = add i64 %11, 316416, !dbg !675
  %13 = ptrtoint ptr %6 to i64, !dbg !675
  %14 = add i64 %13, 3088256, !dbg !675
  %15 = ptrtoint ptr %10 to i64, !dbg !675
  %16 = ptrtoint ptr %8 to i64, !dbg !675
  %17 = add i64 %16, 28225536, !dbg !675
  %18 = and i64 %12, 9223372036854775807, !dbg !675
  %19 = and i64 %14, 9223372036854775807, !dbg !675
  %20 = and i64 %15, 9223372036854775744, !dbg !675
  %21 = and i64 %17, 9223372036854775807, !dbg !675
  tail call void asm sideeffect "fence", ""() #14, !dbg !675
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !675
  tail call void @llvm.riscv.config(i64 6, i64 4336734637477855248), !dbg !675
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !675
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !675
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !675
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !675
  %22 = add nuw i64 %18, 2048, !dbg !675
  %23 = add nuw i64 %19, 32768, !dbg !675
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !675
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !675
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !675
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !675
  tail call void asm sideeffect "fence", ""() #14, !dbg !675
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !675
  ret i32 0, !dbg !675
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !676 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !677
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !677
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !677
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !677
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !678
  %6 = load ptr, ptr %5, align 8, !dbg !678
  %7 = getelementptr i8, ptr %4, i64 50176, !dbg !679
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !679
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !678
  %9 = load ptr, ptr %8, align 8, !dbg !678
  %10 = getelementptr i8, ptr %9, i64 250880, !dbg !678
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !678
  %11 = load i32, ptr %2, align 16, !dbg !678
  %12 = zext i32 %11 to i64, !dbg !678
  %13 = lshr i64 %12, 4, !dbg !678
  %14 = and i64 %13, 268435452, !dbg !678
  %15 = shl nuw nsw i64 %12, 4, !dbg !678
  %16 = and i64 %15, 1008, !dbg !678
  %17 = alloca [64 x i8], align 1, !dbg !678
  %18 = ptrtoint ptr %4 to i64, !dbg !678
  %19 = ptrtoint ptr %6 to i64, !dbg !678
  %20 = add i64 %19, 3477504, !dbg !678
  %21 = ptrtoint ptr %17 to i64, !dbg !678
  %22 = add i64 %19, 28426240, !dbg !678
  %23 = and i64 %18, 9223372036854775744, !dbg !678
  %24 = and i64 %20, 9223372036854775807, !dbg !678
  %25 = and i64 %21, 9223372036854775807, !dbg !678
  %26 = and i64 %22, 9223372036854775807, !dbg !678
  call void asm sideeffect "fence", ""() #14, !dbg !678
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !678
  call void @llvm.riscv.config(i64 2, i64 4334667469718290448), !dbg !678
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !678
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !678
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !678
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !678
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !678
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !678
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !678
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !678
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !678
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !678
  call void asm sideeffect "fence", ""() #14, !dbg !678
  br label %.preheader, !dbg !680

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 10
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !680

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !680
  %36 = load i8, ptr %35, align 1, !dbg !680
  %37 = add nuw nsw i64 %34, %32, !dbg !680
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !680
  %39 = load i8, ptr %38, align 1, !dbg !680
  %40 = sitofp i8 %39 to float, !dbg !681
  %41 = fmul nnan contract float %40, 0x3FD86BBA20000000, !dbg !681
  %42 = sitofp i8 %36 to float, !dbg !682
  %43 = fmul nnan contract float %42, 0x3FD5AC49E0000000, !dbg !682
  %44 = fadd contract float %43, %41, !dbg !683
  %45 = fdiv float %44, 0x3FD25EEE20000000, !dbg !684
  %46 = bitcast float %45 to i32, !dbg !684
  %47 = call float @llvm.round.f32(float %45), !dbg !684
  %48 = bitcast float %47 to i32, !dbg !684
  %49 = lshr i32 %46, 23, !dbg !684
  %50 = and i32 %49, 255, !dbg !684
  %51 = add nsw i32 %50, -127, !dbg !684
  %52 = lshr i32 %48, 23, !dbg !684
  %53 = and i32 %52, 255, !dbg !684
  %54 = icmp eq i32 %53, 127, !dbg !684
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !684
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !684
  %57 = lshr i32 8388607, %56, !dbg !684
  %58 = and i32 %57, %48, !dbg !684
  %59 = icmp ne i32 %58, 0, !dbg !684
  %60 = or i1 %54, %59, !dbg !684
  %61 = icmp eq i32 %51, -1, !dbg !684
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !684
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !684
  %64 = lshr i32 4194304, %63, !dbg !684
  %65 = select i1 %61, i32 0, i32 %64, !dbg !684
  %66 = lshr i32 8388607, %63, !dbg !684
  %67 = and i32 %66, %46, !dbg !684
  %68 = icmp eq i32 %67, %65, !dbg !684
  %69 = add nsw i32 %50, -126, !dbg !684
  %70 = icmp ult i32 %69, 24, !dbg !684
  %71 = and i1 %70, %68, !dbg !684
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !684
  %73 = and i1 %60, %71, !dbg !684
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !684
  %75 = fsub contract float %47, %74, !dbg !684
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !684
  %77 = fadd contract float %76, 0.000000e+00, !dbg !684
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !684
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !684
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !684
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !684
  %80 = fptosi float %79 to i8, !dbg !684
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !685
  %82 = uitofp nneg i8 %81 to float, !dbg !685
  %83 = bitcast float %82 to i32, !dbg !680
  %84 = lshr i32 %83, 23, !dbg !680
  %85 = add nsw i32 %84, -127, !dbg !680
  %86 = icmp eq i32 %85, 0, !dbg !680
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !680
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !680
  %89 = lshr i32 8388607, %88, !dbg !680
  %90 = and i32 %89, %83, !dbg !680
  %91 = icmp ne i32 %90, 0, !dbg !680
  %92 = or i1 %86, %91, !dbg !680
  %93 = icmp eq i32 %85, -1, !dbg !680
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !680
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !680
  %96 = lshr i32 4194304, %95, !dbg !680
  %97 = select i1 %93, i32 0, i32 %96, !dbg !680
  %98 = lshr i32 8388607, %95, !dbg !680
  %99 = and i32 %98, %83, !dbg !680
  %100 = icmp eq i32 %99, %97, !dbg !680
  %101 = add nsw i32 %83, -1056964608, !dbg !680
  %102 = icmp ult i32 %101, 201326592, !dbg !680
  %103 = and i1 %102, %100, !dbg !680
  %104 = add nsw i8 %81, -1, !dbg !680
  %105 = sitofp i8 %104 to float, !dbg !680
  %106 = and i1 %92, %103, !dbg !680
  %107 = call float @llvm.fabs.f32(float %105), !dbg !680
  %108 = select i1 %106, float %107, float %82, !dbg !680
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !680
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !680
  %110 = fptosi float %109 to i8, !dbg !680
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !680
  store i8 %110, ptr %111, align 1, !dbg !680
  %112 = add nuw nsw i64 %34, 1, !dbg !680
  %exitcond.not = icmp eq i64 %112, 16, !dbg !680
  br i1 %exitcond.not, label %113, label %33, !dbg !680

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !680
  %exitcond25.not = icmp eq i64 %114, 4, !dbg !680
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !680

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !678
  ret i32 0, !dbg !678
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !686 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !687
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !687
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !687
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !688
  %6 = load ptr, ptr %5, align 8, !dbg !688
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !688
  %8 = load ptr, ptr %7, align 8, !dbg !688
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !688
  %9 = ptrtoint ptr %4 to i64, !dbg !688
  %10 = add i64 %9, 250880, !dbg !688
  %11 = ptrtoint ptr %6 to i64, !dbg !688
  %12 = add i64 %11, 3739648, !dbg !688
  %13 = ptrtoint ptr %8 to i64, !dbg !688
  %14 = add i64 %11, 29229056, !dbg !688
  %15 = and i64 %10, 9223372036854775807, !dbg !688
  %16 = and i64 %12, 9223372036854775807, !dbg !688
  %17 = and i64 %13, 9223372036854775744, !dbg !688
  %18 = and i64 %14, 9223372036854775807, !dbg !688
  tail call void asm sideeffect "fence", ""() #14, !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !688
  tail call void @llvm.riscv.config(i64 6, i64 4327234689510146064), !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !688
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !688
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !688
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !688
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !688
  tail call void asm sideeffect "fence", ""() #14, !dbg !688
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !688
  ret i32 0, !dbg !688
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_83_generic_14x14x3x3x256_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !689 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !690
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !690
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !690
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !690
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !690
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !690
  %7 = load ptr, ptr %6, align 8, !dbg !690
  %8 = getelementptr i8, ptr %7, i64 451584, !dbg !690
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !690
  %9 = load i32, ptr %2, align 16, !dbg !690
  %10 = zext i32 %9 to i64, !dbg !690
  %11 = shl nuw nsw i64 %10, 5, !dbg !690
  br label %.preheader26, !dbg !690

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !690

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 2304
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !690

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !690
  %21 = shl nuw nsw i64 %20, 12
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 768
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !690

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !690
  %28 = shl nuw nsw i64 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 8
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !690

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !690
  br label %35, !dbg !690

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !690
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !690
  %39 = load i8, ptr %38, align 1, !dbg !690
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !690
  store i8 %39, ptr %40, align 1, !dbg !690
  %41 = add nuw nsw i64 %36, 1, !dbg !690
  %exitcond.not = icmp eq i64 %41, 8, !dbg !690
  br i1 %exitcond.not, label %42, label %35, !dbg !690

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !690
  %44 = icmp samesign ult i64 %33, 24, !dbg !690
  br i1 %44, label %32, label %45, !dbg !690

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !690
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !690
  br i1 %exitcond27.not, label %47, label %25, !dbg !690

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !690
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !690
  br i1 %exitcond28.not, label %49, label %18, !dbg !690

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !690
  %exitcond29.not = icmp eq i64 %50, 14, !dbg !690
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !690

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !690
  %exitcond30.not = icmp eq i64 %52, 14, !dbg !690
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !690

53:                                               ; preds = %51
  ret i32 0, !dbg !690
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !691 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !692
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !692
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !692
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !692
  %6 = load ptr, ptr %5, align 8, !dbg !692
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !692
  %8 = load ptr, ptr %7, align 8, !dbg !692
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !692
  %10 = load ptr, ptr %9, align 8, !dbg !692
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !692
  %11 = ptrtoint ptr %4 to i64, !dbg !692
  %12 = add i64 %11, 451584, !dbg !692
  %13 = ptrtoint ptr %6 to i64, !dbg !692
  %14 = add i64 %13, 3678080, !dbg !692
  %15 = ptrtoint ptr %10 to i64, !dbg !692
  %16 = ptrtoint ptr %8 to i64, !dbg !692
  %17 = add i64 %16, 29429760, !dbg !692
  %18 = and i64 %12, 9223372036854775807, !dbg !692
  %19 = and i64 %14, 9223372036854775807, !dbg !692
  %20 = and i64 %15, 9223372036854775744, !dbg !692
  %21 = and i64 %17, 9223372036854775807, !dbg !692
  tail call void asm sideeffect "fence", ""() #14, !dbg !692
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !692
  tail call void @llvm.riscv.config(i64 6, i64 4301800941155254288), !dbg !692
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2304), !dbg !692
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !692
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 549755879425), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !692
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !692
  %22 = add nuw i64 %18, 2048, !dbg !692
  %23 = add nuw i64 %19, 32768, !dbg !692
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2304, i64 16), !dbg !692
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !692
  tail call void @llvm.riscv.loop.ws(i64 655617, i64 0), !dbg !692
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !692
  tail call void asm sideeffect "fence", ""() #14, !dbg !692
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !692
  ret i32 0, !dbg !692
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !693 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !694
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !694
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !694
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !694
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !695
  %6 = load ptr, ptr %5, align 8, !dbg !695
  %7 = getelementptr i8, ptr %4, i64 250880, !dbg !696
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !696
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !695
  %9 = load ptr, ptr %8, align 8, !dbg !695
  %10 = getelementptr i8, ptr %9, i64 50176, !dbg !695
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !695
  %11 = load i32, ptr %2, align 16, !dbg !695
  %12 = zext i32 %11 to i64, !dbg !695
  %13 = lshr i64 %12, 4, !dbg !695
  %14 = and i64 %13, 268435452, !dbg !695
  %15 = shl nuw nsw i64 %12, 4, !dbg !695
  %16 = and i64 %15, 1008, !dbg !695
  %17 = alloca [64 x i8], align 1, !dbg !695
  %18 = ptrtoint ptr %4 to i64, !dbg !695
  %19 = ptrtoint ptr %6 to i64, !dbg !695
  %20 = add i64 %19, 4001792, !dbg !695
  %21 = ptrtoint ptr %17 to i64, !dbg !695
  %22 = add i64 %19, 29630464, !dbg !695
  %23 = and i64 %18, 9223372036854775744, !dbg !695
  %24 = and i64 %20, 9223372036854775807, !dbg !695
  %25 = and i64 %21, 9223372036854775807, !dbg !695
  %26 = and i64 %22, 9223372036854775807, !dbg !695
  call void asm sideeffect "fence", ""() #14, !dbg !695
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !695
  call void @llvm.riscv.config(i64 2, i64 4325975959149740048), !dbg !695
  call void @llvm.riscv.config(i64 4575657221409472769, i64 256), !dbg !695
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !695
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !695
  call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 68719542273), !dbg !695
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !695
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %26, i64 %25), !dbg !695
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 256, i64 16), !dbg !695
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !695
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !695
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !695
  call void asm sideeffect "fence", ""() #14, !dbg !695
  br label %.preheader, !dbg !697

.preheader:                                       ; preds = %3, %113
  %27 = phi i64 [ 0, %3 ], [ %114, %113 ]
  %28 = shl nuw nsw i64 %27, 4
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = add nuw nsw i64 %27, %14
  %31 = shl nuw nsw i64 %30, 10
  %32 = or disjoint i64 %31, %16
  br label %33, !dbg !697

33:                                               ; preds = %.preheader, %33
  %34 = phi i64 [ 0, %.preheader ], [ %112, %33 ]
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %34, !dbg !697
  %36 = load i8, ptr %35, align 1, !dbg !697
  %37 = add nuw nsw i64 %34, %32, !dbg !697
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 %37, !dbg !697
  %39 = load i8, ptr %38, align 1, !dbg !697
  %40 = sitofp i8 %39 to float, !dbg !698
  %41 = fmul nnan contract float %40, 0x3FD25EEE20000000, !dbg !698
  %42 = sitofp i8 %36 to float, !dbg !699
  %43 = fmul nnan contract float %42, 0x3FC2A196A0000000, !dbg !699
  %44 = fadd contract float %43, %41, !dbg !700
  %45 = fdiv float %44, 0x3FD0AF8140000000, !dbg !701
  %46 = bitcast float %45 to i32, !dbg !701
  %47 = call float @llvm.round.f32(float %45), !dbg !701
  %48 = bitcast float %47 to i32, !dbg !701
  %49 = lshr i32 %46, 23, !dbg !701
  %50 = and i32 %49, 255, !dbg !701
  %51 = add nsw i32 %50, -127, !dbg !701
  %52 = lshr i32 %48, 23, !dbg !701
  %53 = and i32 %52, 255, !dbg !701
  %54 = icmp eq i32 %53, 127, !dbg !701
  %55 = call i32 @llvm.usub.sat.i32(i32 %53, i32 128), !dbg !701
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 31), !dbg !701
  %57 = lshr i32 8388607, %56, !dbg !701
  %58 = and i32 %57, %48, !dbg !701
  %59 = icmp ne i32 %58, 0, !dbg !701
  %60 = or i1 %54, %59, !dbg !701
  %61 = icmp eq i32 %51, -1, !dbg !701
  %62 = call i32 @llvm.smax.i32(i32 %51, i32 0), !dbg !701
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 31), !dbg !701
  %64 = lshr i32 4194304, %63, !dbg !701
  %65 = select i1 %61, i32 0, i32 %64, !dbg !701
  %66 = lshr i32 8388607, %63, !dbg !701
  %67 = and i32 %66, %46, !dbg !701
  %68 = icmp eq i32 %67, %65, !dbg !701
  %69 = add nsw i32 %50, -126, !dbg !701
  %70 = icmp ult i32 %69, 24, !dbg !701
  %71 = and i1 %70, %68, !dbg !701
  %72 = call float @llvm.copysign.f32(float 1.000000e+00, float %45), !dbg !701
  %73 = and i1 %60, %71, !dbg !701
  %74 = select i1 %73, float %72, float 0.000000e+00, !dbg !701
  %75 = fsub contract float %47, %74, !dbg !701
  %76 = call float @llvm.copysign.f32(float %75, float %45), !dbg !701
  %77 = fadd contract float %76, 0.000000e+00, !dbg !701
  %.inv = fcmp ole float %77, -1.280000e+02, !dbg !701
  %78 = select i1 %.inv, float -1.280000e+02, float %77, !dbg !701
  %.inv23 = fcmp oge float %78, 1.270000e+02, !dbg !701
  %79 = select i1 %.inv23, float 1.270000e+02, float %78, !dbg !701
  %80 = fptosi float %79 to i8, !dbg !701
  %81 = call i8 @llvm.smax.i8(i8 %80, i8 0), !dbg !702
  %82 = uitofp nneg i8 %81 to float, !dbg !702
  %83 = bitcast float %82 to i32, !dbg !697
  %84 = lshr i32 %83, 23, !dbg !697
  %85 = add nsw i32 %84, -127, !dbg !697
  %86 = icmp eq i32 %85, 0, !dbg !697
  %87 = call i32 @llvm.usub.sat.i32(i32 %84, i32 128), !dbg !697
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 31), !dbg !697
  %89 = lshr i32 8388607, %88, !dbg !697
  %90 = and i32 %89, %83, !dbg !697
  %91 = icmp ne i32 %90, 0, !dbg !697
  %92 = or i1 %86, %91, !dbg !697
  %93 = icmp eq i32 %85, -1, !dbg !697
  %94 = call i32 @llvm.smax.i32(i32 %85, i32 0), !dbg !697
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 31), !dbg !697
  %96 = lshr i32 4194304, %95, !dbg !697
  %97 = select i1 %93, i32 0, i32 %96, !dbg !697
  %98 = lshr i32 8388607, %95, !dbg !697
  %99 = and i32 %98, %83, !dbg !697
  %100 = icmp eq i32 %99, %97, !dbg !697
  %101 = add nsw i32 %83, -1056964608, !dbg !697
  %102 = icmp ult i32 %101, 201326592, !dbg !697
  %103 = and i1 %102, %100, !dbg !697
  %104 = add nsw i8 %81, -1, !dbg !697
  %105 = sitofp i8 %104 to float, !dbg !697
  %106 = and i1 %92, %103, !dbg !697
  %107 = call float @llvm.fabs.f32(float %105), !dbg !697
  %108 = select i1 %106, float %107, float %82, !dbg !697
  %.inv24 = fcmp oge float %108, 1.270000e+02, !dbg !697
  %109 = select i1 %.inv24, float 1.270000e+02, float %108, !dbg !697
  %110 = fptosi float %109 to i8, !dbg !697
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 %37, !dbg !697
  store i8 %110, ptr %111, align 1, !dbg !697
  %112 = add nuw nsw i64 %34, 1, !dbg !697
  %exitcond.not = icmp eq i64 %112, 16, !dbg !697
  br i1 %exitcond.not, label %113, label %33, !dbg !697

113:                                              ; preds = %33
  %114 = add nuw nsw i64 %27, 1, !dbg !697
  %exitcond25.not = icmp eq i64 %114, 4, !dbg !697
  br i1 %exitcond25.not, label %115, label %.preheader, !dbg !697

115:                                              ; preds = %113
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !695
  ret i32 0, !dbg !695
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !703 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !704
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !704
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !704
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !705
  %6 = load ptr, ptr %5, align 8, !dbg !705
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !705
  %8 = load ptr, ptr %7, align 8, !dbg !705
  %9 = ptrtoint ptr %4 to i64, !dbg !705
  %10 = add i64 %9, 50176, !dbg !705
  %11 = ptrtoint ptr %6 to i64, !dbg !705
  %12 = add i64 %11, 4263936, !dbg !705
  %13 = ptrtoint ptr %8 to i64, !dbg !705
  %14 = add i64 %13, 250880, !dbg !705
  %15 = add i64 %11, 30433280, !dbg !705
  %16 = and i64 %10, 9223372036854775807, !dbg !705
  %17 = and i64 %12, 9223372036854775807, !dbg !705
  %18 = and i64 %14, 9223372036854775807, !dbg !705
  %19 = and i64 %15, 9223372036854775807, !dbg !705
  tail call void asm sideeffect "fence", ""() #14, !dbg !705
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !705
  tail call void @llvm.riscv.config(i64 6, i64 4355773819479130128), !dbg !705
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !705
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !705
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !705
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 12, i64 274877972481), !dbg !705
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %16, i64 %17), !dbg !705
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %19, i64 %18), !dbg !705
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !705
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !705
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !705
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !705
  tail call void asm sideeffect "fence", ""() #14, !dbg !705
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !705
  ret i32 0, !dbg !705
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_87_generic_7x7x1024_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !706 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !707
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !707
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !707
  %5 = getelementptr i8, ptr %4, i64 50176, !dbg !707
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !707
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !708
  %7 = load ptr, ptr %6, align 8, !dbg !708
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !708
  %8 = load i32, ptr %2, align 16, !dbg !708
  %9 = zext i32 %8 to i64, !dbg !708
  %10 = shl nuw nsw i64 %9, 5, !dbg !708
  br label %.preheader26, !dbg !708

.preheader26:                                     ; preds = %3, %36
  %11 = phi i64 [ 0, %3 ], [ %37, %36 ]
  %12 = mul nuw nsw i64 %11, 28672
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 %12
  %14 = mul nuw nsw i64 %11, 7168
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 %14
  br label %.preheader, !dbg !708

.preheader:                                       ; preds = %.preheader26, %34
  %16 = phi i64 [ 0, %.preheader26 ], [ %35, %34 ]
  %17 = shl nuw nsw i64 %16, 11
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %17
  %19 = shl nuw nsw i64 %16, 10
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 %19
  br label %21, !dbg !708

21:                                               ; preds = %.preheader, %31
  %22 = phi i64 [ 0, %.preheader ], [ %32, %31 ]
  %23 = add nuw nsw i64 %22, %10, !dbg !708
  br label %24, !dbg !708

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %30, %24 ]
  %26 = add nuw nsw i64 %25, %23, !dbg !708
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 %26, !dbg !708
  %28 = load i8, ptr %27, align 1, !dbg !708
  %29 = getelementptr inbounds nuw i8, ptr %20, i64 %26, !dbg !708
  store i8 %28, ptr %29, align 1, !dbg !708
  %30 = add nuw nsw i64 %25, 1, !dbg !708
  %exitcond.not = icmp eq i64 %30, 8, !dbg !708
  br i1 %exitcond.not, label %31, label %24, !dbg !708

31:                                               ; preds = %24
  %32 = add nuw nsw i64 %22, 8, !dbg !708
  %33 = icmp samesign ult i64 %22, 24, !dbg !708
  br i1 %33, label %21, label %34, !dbg !708

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %16, 1, !dbg !708
  %exitcond27.not = icmp eq i64 %35, 7, !dbg !708
  br i1 %exitcond27.not, label %36, label %.preheader, !dbg !708

36:                                               ; preds = %34
  %37 = add nuw nsw i64 %11, 1, !dbg !708
  %exitcond28.not = icmp eq i64 %37, 7, !dbg !708
  br i1 %exitcond28.not, label %38, label %.preheader26, !dbg !708

38:                                               ; preds = %36
  ret i32 0, !dbg !708
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_88_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !709 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !710
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !710
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !710
  %5 = getelementptr i8, ptr %4, i64 250880, !dbg !710
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !710
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !711
  %7 = load ptr, ptr %6, align 8, !dbg !711
  %8 = getelementptr i8, ptr %7, i64 351232, !dbg !711
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !711
  %9 = load i32, ptr %2, align 16, !dbg !711
  %10 = zext i32 %9 to i64, !dbg !711
  %11 = shl nuw nsw i64 %10, 6, !dbg !711
  br label %.preheader23, !dbg !711

.preheader23:                                     ; preds = %3, %32
  %12 = phi i64 [ 0, %3 ], [ %33, %32 ]
  %13 = mul nuw nsw i64 %12, 7168
  %14 = getelementptr i8, ptr %5, i64 %13
  %15 = shl i64 %12, 13
  %16 = getelementptr i8, ptr %8, i64 %15
  br label %.preheader, !dbg !711

.preheader:                                       ; preds = %.preheader23, %30
  %17 = phi i64 [ 0, %.preheader23 ], [ %31, %30 ]
  %18 = shl i64 %17, 9
  %19 = getelementptr i8, ptr %14, i64 %18
  %20 = getelementptr i8, ptr %16, i64 %18
  %21 = getelementptr i8, ptr %20, i64 8704
  br label %22, !dbg !711

22:                                               ; preds = %.preheader, %22
  %23 = phi i64 [ 0, %.preheader ], [ %28, %22 ]
  %24 = add nuw nsw i64 %23, %11, !dbg !711
  %25 = getelementptr i8, ptr %19, i64 %24, !dbg !711
  %26 = load <2 x i8>, ptr %25, align 2, !dbg !711
  %27 = getelementptr i8, ptr %21, i64 %24, !dbg !711
  store <2 x i8> %26, ptr %27, align 2, !dbg !711
  %28 = add nuw nsw i64 %23, 2, !dbg !711
  %29 = icmp samesign ult i64 %23, 62, !dbg !711
  br i1 %29, label %22, label %30, !dbg !711

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %17, 1, !dbg !711
  %exitcond.not = icmp eq i64 %31, 14, !dbg !711
  br i1 %exitcond.not, label %32, label %.preheader, !dbg !711

32:                                               ; preds = %30
  %33 = add nuw nsw i64 %12, 1, !dbg !711
  %exitcond24.not = icmp eq i64 %33, 14, !dbg !711
  br i1 %exitcond24.not, label %34, label %.preheader23, !dbg !711

34:                                               ; preds = %32
  ret i32 0, !dbg !711
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_89_generic_7x7x3x3x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !712 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !713
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !713
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !713
  %5 = getelementptr i8, ptr %4, i64 351232, !dbg !713
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !713
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !713
  %7 = load ptr, ptr %6, align 8, !dbg !713
  %8 = getelementptr i8, ptr %7, i64 50176, !dbg !713
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !713
  %9 = load i32, ptr %2, align 16, !dbg !713
  %10 = zext i32 %9 to i64, !dbg !713
  %11 = shl nuw nsw i64 %10, 5, !dbg !713
  br label %.preheader28, !dbg !713

.preheader28:                                     ; preds = %3, %48
  %12 = phi i64 [ 0, %3 ], [ %49, %48 ]
  %13 = shl i64 %12, 14
  %14 = getelementptr i8, ptr %5, i64 %13
  %15 = mul nuw nsw i64 %12, 32256
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 %15
  br label %.preheader27, !dbg !713

.preheader27:                                     ; preds = %.preheader28, %46
  %17 = phi i64 [ 0, %.preheader28 ], [ %47, %46 ]
  %18 = shl i64 %17, 10
  %invariant.gep = getelementptr i8, ptr %14, i64 %18, !dbg !713
  %19 = mul nuw nsw i64 %17, 4608
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 %19
  br label %.preheader26, !dbg !713

.preheader26:                                     ; preds = %.preheader27, %44
  %21 = phi i64 [ 0, %.preheader27 ], [ %45, %44 ]
  %22 = shl nuw nsw i64 %21, 13
  %gep = getelementptr i8, ptr %invariant.gep, i64 %22
  %23 = mul nuw nsw i64 %21, 1536
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  br label %.preheader, !dbg !713

.preheader:                                       ; preds = %.preheader26, %42
  %25 = phi i64 [ 0, %.preheader26 ], [ %43, %42 ]
  %26 = shl nuw nsw i64 %25, 9
  %27 = getelementptr i8, ptr %gep, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 %26
  br label %29, !dbg !713

29:                                               ; preds = %.preheader, %39
  %30 = phi i64 [ 0, %.preheader ], [ %40, %39 ]
  %31 = add nuw nsw i64 %30, %11, !dbg !713
  br label %32, !dbg !713

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %38, %32 ]
  %34 = add nuw nsw i64 %33, %31, !dbg !713
  %35 = getelementptr inbounds nuw i8, ptr %27, i64 %34, !dbg !713
  %36 = load i8, ptr %35, align 1, !dbg !713
  %37 = getelementptr inbounds nuw i8, ptr %28, i64 %34, !dbg !713
  store i8 %36, ptr %37, align 1, !dbg !713
  %38 = add nuw nsw i64 %33, 1, !dbg !713
  %exitcond.not = icmp eq i64 %38, 8, !dbg !713
  br i1 %exitcond.not, label %39, label %32, !dbg !713

39:                                               ; preds = %32
  %40 = add nuw nsw i64 %30, 8, !dbg !713
  %41 = icmp samesign ult i64 %30, 24, !dbg !713
  br i1 %41, label %29, label %42, !dbg !713

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %25, 1, !dbg !713
  %exitcond29.not = icmp eq i64 %43, 3, !dbg !713
  br i1 %exitcond29.not, label %44, label %.preheader, !dbg !713

44:                                               ; preds = %42
  %45 = add nuw nsw i64 %21, 1, !dbg !713
  %exitcond30.not = icmp eq i64 %45, 3, !dbg !713
  br i1 %exitcond30.not, label %46, label %.preheader26, !dbg !713

46:                                               ; preds = %44
  %47 = add nuw nsw i64 %17, 1, !dbg !713
  %exitcond31.not = icmp eq i64 %47, 7, !dbg !713
  br i1 %exitcond31.not, label %48, label %.preheader27, !dbg !713

48:                                               ; preds = %46
  %49 = add nuw nsw i64 %12, 1, !dbg !713
  %exitcond32.not = icmp eq i64 %49, 7, !dbg !713
  br i1 %exitcond32.not, label %50, label %.preheader28, !dbg !713

50:                                               ; preds = %48
  ret i32 0, !dbg !713
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !714 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !715
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !715
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !715
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !715
  %6 = load ptr, ptr %5, align 8, !dbg !715
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !715
  %8 = load ptr, ptr %7, align 8, !dbg !715
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !715
  %10 = load ptr, ptr %9, align 8, !dbg !715
  %11 = ptrtoint ptr %4 to i64, !dbg !715
  %12 = add i64 %11, 50176, !dbg !715
  %13 = ptrtoint ptr %6 to i64, !dbg !715
  %14 = add i64 %13, 4267904, !dbg !715
  %15 = ptrtoint ptr %10 to i64, !dbg !715
  %16 = add i64 %15, 275968, !dbg !715
  %17 = ptrtoint ptr %8 to i64, !dbg !715
  %18 = add i64 %17, 31236096, !dbg !715
  %19 = and i64 %12, 9223372036854775807, !dbg !715
  %20 = and i64 %14, 9223372036854775807, !dbg !715
  %21 = and i64 %16, 9223372036854775807, !dbg !715
  %22 = and i64 %18, 9223372036854775807, !dbg !715
  tail call void asm sideeffect "fence", ""() #14, !dbg !715
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !715
  tail call void @llvm.riscv.config(i64 6, i64 4275887694061502480), !dbg !715
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !715
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !715
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %19, i64 %20), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %22, i64 0), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !715
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !715
  %23 = add nuw i64 %19, 2048, !dbg !715
  %24 = add nuw i64 %20, 32768, !dbg !715
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %23, i64 %24), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !715
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !715
  %25 = add nuw i64 %19, 4096, !dbg !715
  %26 = add nuw i64 %20, 65536, !dbg !715
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %25, i64 %26), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %21), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !715
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !715
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !715
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !715
  tail call void asm sideeffect "fence", ""() #14, !dbg !715
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !715
  ret i32 0, !dbg !715
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !716 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !717
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !717
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !717
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !718
  %6 = load ptr, ptr %5, align 8, !dbg !718
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !718
  %8 = load ptr, ptr %7, align 8, !dbg !718
  %9 = ptrtoint ptr %4 to i64, !dbg !718
  %10 = add i64 %9, 275968, !dbg !718
  %11 = ptrtoint ptr %6 to i64, !dbg !718
  %12 = add i64 %11, 6885376, !dbg !718
  %13 = ptrtoint ptr %8 to i64, !dbg !718
  %14 = add i64 %13, 50176, !dbg !718
  %15 = add i64 %11, 31336448, !dbg !718
  %16 = and i64 %10, 9223372036854775807, !dbg !718
  %17 = and i64 %12, 9223372036854775807, !dbg !718
  %18 = and i64 %14, 9223372036854775807, !dbg !718
  %19 = and i64 %15, 9223372036854775807, !dbg !718
  tail call void asm sideeffect "fence", ""() #14, !dbg !718
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !718
  tail call void @llvm.riscv.config(i64 2, i64 4319000794822082576), !dbg !718
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !718
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !718
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !718
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !718
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %16, i64 %17), !dbg !718
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %19, i64 %18), !dbg !718
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !718
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !718
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !718
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !718
  tail call void asm sideeffect "fence", ""() #14, !dbg !718
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !718
  ret i32 0, !dbg !718
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !719 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !720
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !720
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !720
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !720
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !720
  %6 = load ptr, ptr %5, align 8, !dbg !720
  %7 = getelementptr i8, ptr %4, i64 50176, !dbg !721
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !721
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !720
  %9 = load ptr, ptr %8, align 8, !dbg !720
  %10 = getelementptr i8, ptr %9, i64 150528, !dbg !720
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !720
  %11 = load i32, ptr %2, align 16, !dbg !720
  %12 = zext i32 %11 to i64, !dbg !720
  %13 = shl nuw nsw i64 %12, 4, !dbg !720
  %14 = alloca [16 x i8], align 1, !dbg !720
  %15 = ptrtoint ptr %4 to i64, !dbg !720
  %16 = ptrtoint ptr %6 to i64, !dbg !720
  %17 = add i64 %16, 4788224, !dbg !720
  %18 = ptrtoint ptr %14 to i64, !dbg !720
  %19 = add i64 %16, 30834688, !dbg !720
  %20 = and i64 %15, 9223372036854775744, !dbg !720
  %21 = and i64 %17, 9223372036854775807, !dbg !720
  %22 = and i64 %18, 9223372036854775807, !dbg !720
  %23 = and i64 %19, 9223372036854775807, !dbg !720
  call void asm sideeffect "fence", ""() #14, !dbg !720
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !720
  call void @llvm.riscv.config(i64 2, i64 4312260011154735120), !dbg !720
  call void @llvm.riscv.config(i64 4575657221409472769, i64 1024), !dbg !720
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !720
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !720
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 274877972481), !dbg !720
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %20, i64 %21), !dbg !720
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %23, i64 %22), !dbg !720
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 1024, i64 16), !dbg !720
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !720
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !720
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !720
  call void asm sideeffect "fence", ""() #14, !dbg !720
  br label %24, !dbg !722

24:                                               ; preds = %3, %24
  %25 = phi i64 [ 0, %3 ], [ %103, %24 ]
  %26 = add nuw nsw i64 %25, %13, !dbg !722
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 %26, !dbg !722
  %28 = load i8, ptr %27, align 1, !dbg !722
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 %25, !dbg !722
  %30 = load i8, ptr %29, align 1, !dbg !722
  %31 = sitofp i8 %30 to float, !dbg !723
  %32 = fmul nnan contract float %31, 0x3FE33CB880000000, !dbg !723
  %33 = sitofp i8 %28 to float, !dbg !724
  %34 = fmul nnan contract float %33, 0x3FC0FDF6C0000000, !dbg !724
  %35 = fadd contract float %34, %32, !dbg !725
  %36 = fdiv float %35, 0x3FE413DDC0000000, !dbg !726
  %37 = bitcast float %36 to i32, !dbg !726
  %38 = call float @llvm.round.f32(float %36), !dbg !726
  %39 = bitcast float %38 to i32, !dbg !726
  %40 = lshr i32 %37, 23, !dbg !726
  %41 = and i32 %40, 255, !dbg !726
  %42 = add nsw i32 %41, -127, !dbg !726
  %43 = lshr i32 %39, 23, !dbg !726
  %44 = and i32 %43, 255, !dbg !726
  %45 = icmp eq i32 %44, 127, !dbg !726
  %46 = call i32 @llvm.usub.sat.i32(i32 %44, i32 128), !dbg !726
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 31), !dbg !726
  %48 = lshr i32 8388607, %47, !dbg !726
  %49 = and i32 %48, %39, !dbg !726
  %50 = icmp ne i32 %49, 0, !dbg !726
  %51 = or i1 %45, %50, !dbg !726
  %52 = icmp eq i32 %42, -1, !dbg !726
  %53 = call i32 @llvm.smax.i32(i32 %42, i32 0), !dbg !726
  %54 = call i32 @llvm.umin.i32(i32 %53, i32 31), !dbg !726
  %55 = lshr i32 4194304, %54, !dbg !726
  %56 = select i1 %52, i32 0, i32 %55, !dbg !726
  %57 = lshr i32 8388607, %54, !dbg !726
  %58 = and i32 %57, %37, !dbg !726
  %59 = icmp eq i32 %58, %56, !dbg !726
  %60 = add nsw i32 %41, -126, !dbg !726
  %61 = icmp ult i32 %60, 24, !dbg !726
  %62 = and i1 %61, %59, !dbg !726
  %63 = call float @llvm.copysign.f32(float 1.000000e+00, float %36), !dbg !726
  %64 = and i1 %51, %62, !dbg !726
  %65 = select i1 %64, float %63, float 0.000000e+00, !dbg !726
  %66 = fsub contract float %38, %65, !dbg !726
  %67 = call float @llvm.copysign.f32(float %66, float %36), !dbg !726
  %68 = fadd contract float %67, 0.000000e+00, !dbg !726
  %.inv = fcmp ole float %68, -1.280000e+02, !dbg !726
  %69 = select i1 %.inv, float -1.280000e+02, float %68, !dbg !726
  %.inv23 = fcmp oge float %69, 1.270000e+02, !dbg !726
  %70 = select i1 %.inv23, float 1.270000e+02, float %69, !dbg !726
  %71 = fptosi float %70 to i8, !dbg !726
  %72 = call i8 @llvm.smax.i8(i8 %71, i8 0), !dbg !727
  %73 = uitofp nneg i8 %72 to float, !dbg !727
  %74 = bitcast float %73 to i32, !dbg !722
  %75 = lshr i32 %74, 23, !dbg !722
  %76 = add nsw i32 %75, -127, !dbg !722
  %77 = icmp eq i32 %76, 0, !dbg !722
  %78 = call i32 @llvm.usub.sat.i32(i32 %75, i32 128), !dbg !722
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 31), !dbg !722
  %80 = lshr i32 8388607, %79, !dbg !722
  %81 = and i32 %80, %74, !dbg !722
  %82 = icmp ne i32 %81, 0, !dbg !722
  %83 = or i1 %77, %82, !dbg !722
  %84 = icmp eq i32 %76, -1, !dbg !722
  %85 = call i32 @llvm.smax.i32(i32 %76, i32 0), !dbg !722
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 31), !dbg !722
  %87 = lshr i32 4194304, %86, !dbg !722
  %88 = select i1 %84, i32 0, i32 %87, !dbg !722
  %89 = lshr i32 8388607, %86, !dbg !722
  %90 = and i32 %89, %74, !dbg !722
  %91 = icmp eq i32 %90, %88, !dbg !722
  %92 = add nsw i32 %74, -1056964608, !dbg !722
  %93 = icmp ult i32 %92, 201326592, !dbg !722
  %94 = and i1 %93, %91, !dbg !722
  %95 = add nsw i8 %72, -1, !dbg !722
  %96 = sitofp i8 %95 to float, !dbg !722
  %97 = and i1 %83, %94, !dbg !722
  %98 = call float @llvm.fabs.f32(float %96), !dbg !722
  %99 = select i1 %97, float %98, float %73, !dbg !722
  %.inv24 = fcmp oge float %99, 1.270000e+02, !dbg !722
  %100 = select i1 %.inv24, float 1.270000e+02, float %99, !dbg !722
  %101 = fptosi float %100 to i8, !dbg !722
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 %26, !dbg !722
  store i8 %101, ptr %102, align 1, !dbg !722
  %103 = add nuw nsw i64 %25, 1, !dbg !722
  %exitcond.not = icmp eq i64 %103, 16, !dbg !722
  br i1 %exitcond.not, label %104, label %24, !dbg !722

104:                                              ; preds = %24
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !720
  ret i32 0, !dbg !720
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !728 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !729
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !729
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !729
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !730
  %6 = load ptr, ptr %5, align 8, !dbg !730
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !730
  %8 = load ptr, ptr %7, align 8, !dbg !730
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !730
  %9 = ptrtoint ptr %4 to i64, !dbg !730
  %10 = add i64 %9, 150528, !dbg !730
  %11 = ptrtoint ptr %6 to i64, !dbg !730
  %12 = add i64 %11, 7933952, !dbg !730
  %13 = ptrtoint ptr %8 to i64, !dbg !730
  %14 = add i64 %11, 31737856, !dbg !730
  %15 = and i64 %10, 9223372036854775807, !dbg !730
  %16 = and i64 %12, 9223372036854775807, !dbg !730
  %17 = and i64 %13, 9223372036854775744, !dbg !730
  %18 = and i64 %14, 9223372036854775807, !dbg !730
  tail call void asm sideeffect "fence", ""() #14, !dbg !730
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !730
  tail call void @llvm.riscv.config(i64 6, i64 4335228504116297744), !dbg !730
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !730
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !730
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !730
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !730
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !730
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !730
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 16), !dbg !730
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !730
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !730
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !730
  tail call void asm sideeffect "fence", ""() #14, !dbg !730
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !730
  ret i32 0, !dbg !730
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_94_slow_memcpy"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !731 {
  %.elt17 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !732
  %.unpack18 = load ptr, ptr %.elt17, align 8, !dbg !732
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !732
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !732
  %4 = load i32, ptr %.unpack18, align 4, !dbg !732
  %5 = zext i32 %4 to i64, !dbg !732
  %6 = load ptr, ptr %.unpack20, align 8, !dbg !733
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !733
  %7 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !732
  %8 = load ptr, ptr %7, align 8, !dbg !732
  %9 = getelementptr i8, ptr %8, i64 %5, !dbg !732
  call void @llvm.assume(i1 true) [ "align"(ptr %9, i64 64) ], !dbg !732
  %10 = load i32, ptr %2, align 16, !dbg !732
  %11 = zext i32 %10 to i64, !dbg !732
  %12 = shl nuw nsw i64 %11, 7, !dbg !732
  br label %.preheader23, !dbg !732

.preheader23:                                     ; preds = %3, %33
  %13 = phi i64 [ 0, %3 ], [ %34, %33 ]
  %14 = mul nuw nsw i64 %13, 3584
  %15 = getelementptr i8, ptr %6, i64 %14
  %16 = mul nuw nsw i64 %13, 4608
  %17 = getelementptr i8, ptr %9, i64 %16
  br label %.preheader, !dbg !732

.preheader:                                       ; preds = %.preheader23, %31
  %18 = phi i64 [ 0, %.preheader23 ], [ %32, %31 ]
  %19 = shl i64 %18, 9
  %20 = getelementptr i8, ptr %15, i64 %19
  %21 = getelementptr i8, ptr %17, i64 %19
  %22 = getelementptr i8, ptr %21, i64 5120
  br label %23, !dbg !732

23:                                               ; preds = %.preheader, %23
  %24 = phi i64 [ 0, %.preheader ], [ %29, %23 ]
  %25 = add nuw nsw i64 %24, %12, !dbg !732
  %26 = getelementptr i8, ptr %20, i64 %25, !dbg !732
  %27 = load <2 x i8>, ptr %26, align 2, !dbg !732
  %28 = getelementptr i8, ptr %22, i64 %25, !dbg !732
  store <2 x i8> %27, ptr %28, align 2, !dbg !732
  %29 = add nuw nsw i64 %24, 2, !dbg !732
  %30 = icmp samesign ult i64 %24, 126, !dbg !732
  br i1 %30, label %23, label %31, !dbg !732

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %18, 1, !dbg !732
  %exitcond.not = icmp eq i64 %32, 7, !dbg !732
  br i1 %exitcond.not, label %33, label %.preheader, !dbg !732

33:                                               ; preds = %31
  %34 = add nuw nsw i64 %13, 1, !dbg !732
  %exitcond24.not = icmp eq i64 %34, 7, !dbg !732
  br i1 %exitcond24.not, label %35, label %.preheader23, !dbg !732

35:                                               ; preds = %33
  ret i32 0, !dbg !732
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_95_generic_7x7x3x3x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !734 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !735
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !735
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !735
  %5 = getelementptr i8, ptr %4, i64 25088, !dbg !735
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !735
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !735
  %7 = load ptr, ptr %6, align 8, !dbg !735
  %8 = getelementptr i8, ptr %7, i64 250880, !dbg !735
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !735
  %9 = load i32, ptr %2, align 16, !dbg !735
  %10 = zext i32 %9 to i64, !dbg !735
  %11 = shl nuw nsw i64 %10, 5, !dbg !735
  br label %.preheader26, !dbg !735

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !735

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 4608
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !735

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !735
  %21 = mul nuw nsw i64 %20, 4608
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 1536
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !735

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !735
  %28 = shl nuw nsw i64 %27, 9
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 9
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !735

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !735
  br label %35, !dbg !735

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !735
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !735
  %39 = load i8, ptr %38, align 1, !dbg !735
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !735
  store i8 %39, ptr %40, align 1, !dbg !735
  %41 = add nuw nsw i64 %36, 1, !dbg !735
  %exitcond.not = icmp eq i64 %41, 8, !dbg !735
  br i1 %exitcond.not, label %42, label %35, !dbg !735

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !735
  %44 = icmp samesign ult i64 %33, 24, !dbg !735
  br i1 %44, label %32, label %45, !dbg !735

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !735
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !735
  br i1 %exitcond27.not, label %47, label %25, !dbg !735

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !735
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !735
  br i1 %exitcond28.not, label %49, label %18, !dbg !735

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !735
  %exitcond29.not = icmp eq i64 %50, 7, !dbg !735
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !735

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !735
  %exitcond30.not = icmp eq i64 %52, 7, !dbg !735
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !735

53:                                               ; preds = %51
  ret i32 0, !dbg !735
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !736 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !737
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !737
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !737
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !737
  %6 = load ptr, ptr %5, align 8, !dbg !737
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !737
  %8 = load ptr, ptr %7, align 8, !dbg !737
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !737
  %10 = load ptr, ptr %9, align 8, !dbg !737
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !737
  %11 = ptrtoint ptr %4 to i64, !dbg !737
  %12 = add i64 %11, 250880, !dbg !737
  %13 = ptrtoint ptr %6 to i64, !dbg !737
  %14 = add i64 %13, 6627200, !dbg !737
  %15 = ptrtoint ptr %10 to i64, !dbg !737
  %16 = ptrtoint ptr %8 to i64, !dbg !737
  %17 = add i64 %16, 31838208, !dbg !737
  %18 = and i64 %12, 9223372036854775807, !dbg !737
  %19 = and i64 %14, 9223372036854775807, !dbg !737
  %20 = and i64 %15, 9223372036854775744, !dbg !737
  %21 = and i64 %17, 9223372036854775807, !dbg !737
  tail call void asm sideeffect "fence", ""() #14, !dbg !737
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !737
  tail call void @llvm.riscv.config(i64 6, i64 4322067556090249232), !dbg !737
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !737
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !737
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !737
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !737
  %22 = add nuw i64 %18, 2048, !dbg !737
  %23 = add nuw i64 %19, 32768, !dbg !737
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !737
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !737
  %24 = add nuw i64 %18, 4096, !dbg !737
  %25 = add nuw i64 %19, 65536, !dbg !737
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %24, i64 %25), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !737
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !737
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !737
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !737
  tail call void asm sideeffect "fence", ""() #14, !dbg !737
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !737
  ret i32 0, !dbg !737
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !738 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !739
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !739
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !739
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !739
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !740
  %6 = load ptr, ptr %5, align 8, !dbg !740
  %7 = getelementptr i8, ptr %4, i64 150528, !dbg !741
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !741
  %8 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !740
  %9 = load ptr, ptr %8, align 8, !dbg !740
  %10 = getelementptr i8, ptr %9, i64 25088, !dbg !740
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !740
  %11 = load i32, ptr %2, align 16, !dbg !740
  %12 = zext i32 %11 to i64, !dbg !740
  %13 = shl nuw nsw i64 %12, 4, !dbg !740
  %14 = alloca [16 x i8], align 1, !dbg !740
  %15 = ptrtoint ptr %4 to i64, !dbg !740
  %16 = ptrtoint ptr %6 to i64, !dbg !740
  %17 = add i64 %16, 8982528, !dbg !740
  %18 = ptrtoint ptr %14 to i64, !dbg !740
  %19 = add i64 %16, 31938560, !dbg !740
  %20 = and i64 %15, 9223372036854775744, !dbg !740
  %21 = and i64 %17, 9223372036854775807, !dbg !740
  %22 = and i64 %18, 9223372036854775807, !dbg !740
  %23 = and i64 %19, 9223372036854775807, !dbg !740
  call void asm sideeffect "fence", ""() #14, !dbg !740
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !740
  call void @llvm.riscv.config(i64 2, i64 4322185736410365968), !dbg !740
  call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !740
  call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !740
  call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !740
  call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !740
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %20, i64 %21), !dbg !740
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %23, i64 %22), !dbg !740
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !740
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !740
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !740
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !740
  call void asm sideeffect "fence", ""() #14, !dbg !740
  br label %24, !dbg !742

24:                                               ; preds = %3, %24
  %25 = phi i64 [ 0, %3 ], [ %103, %24 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25, !dbg !742
  %27 = load i8, ptr %26, align 1, !dbg !742
  %28 = add nuw nsw i64 %25, %13, !dbg !742
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 %28, !dbg !742
  %30 = load i8, ptr %29, align 1, !dbg !742
  %31 = sitofp i8 %30 to float, !dbg !743
  %32 = fmul nnan contract float %31, 0x3FE413DDC0000000, !dbg !743
  %33 = sitofp i8 %27 to float, !dbg !744
  %34 = fmul nnan contract float %33, 0x3FD52E4880000000, !dbg !744
  %35 = fadd contract float %34, %32, !dbg !745
  %36 = fdiv float %35, 0x3FE0F08C80000000, !dbg !746
  %37 = bitcast float %36 to i32, !dbg !746
  %38 = call float @llvm.round.f32(float %36), !dbg !746
  %39 = bitcast float %38 to i32, !dbg !746
  %40 = lshr i32 %37, 23, !dbg !746
  %41 = and i32 %40, 255, !dbg !746
  %42 = add nsw i32 %41, -127, !dbg !746
  %43 = lshr i32 %39, 23, !dbg !746
  %44 = and i32 %43, 255, !dbg !746
  %45 = icmp eq i32 %44, 127, !dbg !746
  %46 = call i32 @llvm.usub.sat.i32(i32 %44, i32 128), !dbg !746
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 31), !dbg !746
  %48 = lshr i32 8388607, %47, !dbg !746
  %49 = and i32 %48, %39, !dbg !746
  %50 = icmp ne i32 %49, 0, !dbg !746
  %51 = or i1 %45, %50, !dbg !746
  %52 = icmp eq i32 %42, -1, !dbg !746
  %53 = call i32 @llvm.smax.i32(i32 %42, i32 0), !dbg !746
  %54 = call i32 @llvm.umin.i32(i32 %53, i32 31), !dbg !746
  %55 = lshr i32 4194304, %54, !dbg !746
  %56 = select i1 %52, i32 0, i32 %55, !dbg !746
  %57 = lshr i32 8388607, %54, !dbg !746
  %58 = and i32 %57, %37, !dbg !746
  %59 = icmp eq i32 %58, %56, !dbg !746
  %60 = add nsw i32 %41, -126, !dbg !746
  %61 = icmp ult i32 %60, 24, !dbg !746
  %62 = and i1 %61, %59, !dbg !746
  %63 = call float @llvm.copysign.f32(float 1.000000e+00, float %36), !dbg !746
  %64 = and i1 %51, %62, !dbg !746
  %65 = select i1 %64, float %63, float 0.000000e+00, !dbg !746
  %66 = fsub contract float %38, %65, !dbg !746
  %67 = call float @llvm.copysign.f32(float %66, float %36), !dbg !746
  %68 = fadd contract float %67, 0.000000e+00, !dbg !746
  %.inv = fcmp ole float %68, -1.280000e+02, !dbg !746
  %69 = select i1 %.inv, float -1.280000e+02, float %68, !dbg !746
  %.inv23 = fcmp oge float %69, 1.270000e+02, !dbg !746
  %70 = select i1 %.inv23, float 1.270000e+02, float %69, !dbg !746
  %71 = fptosi float %70 to i8, !dbg !746
  %72 = call i8 @llvm.smax.i8(i8 %71, i8 0), !dbg !747
  %73 = uitofp nneg i8 %72 to float, !dbg !747
  %74 = bitcast float %73 to i32, !dbg !742
  %75 = lshr i32 %74, 23, !dbg !742
  %76 = add nsw i32 %75, -127, !dbg !742
  %77 = icmp eq i32 %76, 0, !dbg !742
  %78 = call i32 @llvm.usub.sat.i32(i32 %75, i32 128), !dbg !742
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 31), !dbg !742
  %80 = lshr i32 8388607, %79, !dbg !742
  %81 = and i32 %80, %74, !dbg !742
  %82 = icmp ne i32 %81, 0, !dbg !742
  %83 = or i1 %77, %82, !dbg !742
  %84 = icmp eq i32 %76, -1, !dbg !742
  %85 = call i32 @llvm.smax.i32(i32 %76, i32 0), !dbg !742
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 31), !dbg !742
  %87 = lshr i32 4194304, %86, !dbg !742
  %88 = select i1 %84, i32 0, i32 %87, !dbg !742
  %89 = lshr i32 8388607, %86, !dbg !742
  %90 = and i32 %89, %74, !dbg !742
  %91 = icmp eq i32 %90, %88, !dbg !742
  %92 = add nsw i32 %74, -1056964608, !dbg !742
  %93 = icmp ult i32 %92, 201326592, !dbg !742
  %94 = and i1 %93, %91, !dbg !742
  %95 = add nsw i8 %72, -1, !dbg !742
  %96 = sitofp i8 %95 to float, !dbg !742
  %97 = and i1 %83, %94, !dbg !742
  %98 = call float @llvm.fabs.f32(float %96), !dbg !742
  %99 = select i1 %97, float %98, float %73, !dbg !742
  %.inv24 = fcmp oge float %99, 1.270000e+02, !dbg !742
  %100 = select i1 %.inv24, float 1.270000e+02, float %99, !dbg !742
  %101 = fptosi float %100 to i8, !dbg !742
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 %28, !dbg !742
  store i8 %101, ptr %102, align 1, !dbg !742
  %103 = add nuw nsw i64 %25, 1, !dbg !742
  %exitcond.not = icmp eq i64 %103, 16, !dbg !742
  br i1 %exitcond.not, label %104, label %24, !dbg !742

104:                                              ; preds = %24
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !740
  ret i32 0, !dbg !740
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !748 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !749
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !749
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !749
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !750
  %6 = load ptr, ptr %5, align 8, !dbg !750
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !750
  %8 = load ptr, ptr %7, align 8, !dbg !750
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !750
  %9 = ptrtoint ptr %4 to i64, !dbg !750
  %10 = add i64 %9, 25088, !dbg !750
  %11 = ptrtoint ptr %6 to i64, !dbg !750
  %12 = add i64 %11, 10031104, !dbg !750
  %13 = ptrtoint ptr %8 to i64, !dbg !750
  %14 = add i64 %11, 32339968, !dbg !750
  %15 = and i64 %10, 9223372036854775807, !dbg !750
  %16 = and i64 %12, 9223372036854775807, !dbg !750
  %17 = and i64 %13, 9223372036854775744, !dbg !750
  %18 = and i64 %14, 9223372036854775807, !dbg !750
  tail call void asm sideeffect "fence", ""() #14, !dbg !750
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !750
  tail call void @llvm.riscv.config(i64 6, i64 4336665608763473936), !dbg !750
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !750
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !750
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !750
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !750
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !750
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !750
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 16), !dbg !750
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !750
  tail call void @llvm.riscv.loop.ws(i64 327937, i64 0), !dbg !750
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !750
  tail call void asm sideeffect "fence", ""() #14, !dbg !750
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !750
  ret i32 0, !dbg !750
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_100_generic_7x7x3x3x512_i8"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !751 {
  %.elt22 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !752
  %.unpack23 = load ptr, ptr %.elt22, align 16, !dbg !752
  %4 = load ptr, ptr %.unpack23, align 8, !dbg !752
  %5 = getelementptr i8, ptr %4, i64 125440, !dbg !752
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !752
  %6 = getelementptr i8, ptr %.unpack23, i64 8, !dbg !752
  %7 = load ptr, ptr %6, align 8, !dbg !752
  %8 = getelementptr i8, ptr %7, i64 166912, !dbg !752
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !752
  %9 = load i32, ptr %2, align 16, !dbg !752
  %10 = zext i32 %9 to i64, !dbg !752
  %11 = shl nuw nsw i64 %10, 5, !dbg !752
  br label %.preheader26, !dbg !752

.preheader26:                                     ; preds = %3, %51
  %12 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %13 = mul nuw nsw i64 %12, 32256
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %13
  br label %.preheader, !dbg !752

.preheader:                                       ; preds = %.preheader26, %49
  %15 = phi i64 [ 0, %.preheader26 ], [ %50, %49 ]
  %16 = mul nuw nsw i64 %15, 4608
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  br label %18, !dbg !752

18:                                               ; preds = %.preheader, %47
  %19 = phi i64 [ 0, %.preheader ], [ %48, %47 ]
  %20 = add nuw nsw i64 %19, %12, !dbg !752
  %21 = mul nuw nsw i64 %20, 4608
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  %23 = mul nuw nsw i64 %19, 1536
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 %23
  br label %25, !dbg !752

25:                                               ; preds = %18, %45
  %26 = phi i64 [ 0, %18 ], [ %46, %45 ]
  %27 = add nuw nsw i64 %26, %15, !dbg !752
  %28 = shl nuw nsw i64 %27, 9
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = shl nuw nsw i64 %26, 9
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 %30
  br label %32, !dbg !752

32:                                               ; preds = %25, %42
  %33 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %34 = add nuw nsw i64 %33, %11, !dbg !752
  br label %35, !dbg !752

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %41, %35 ]
  %37 = add nuw nsw i64 %36, %34, !dbg !752
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 %37, !dbg !752
  %39 = load i8, ptr %38, align 1, !dbg !752
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 %37, !dbg !752
  store i8 %39, ptr %40, align 1, !dbg !752
  %41 = add nuw nsw i64 %36, 1, !dbg !752
  %exitcond.not = icmp eq i64 %41, 8, !dbg !752
  br i1 %exitcond.not, label %42, label %35, !dbg !752

42:                                               ; preds = %35
  %43 = add nuw nsw i64 %33, 8, !dbg !752
  %44 = icmp samesign ult i64 %33, 24, !dbg !752
  br i1 %44, label %32, label %45, !dbg !752

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1, !dbg !752
  %exitcond27.not = icmp eq i64 %46, 3, !dbg !752
  br i1 %exitcond27.not, label %47, label %25, !dbg !752

47:                                               ; preds = %45
  %48 = add nuw nsw i64 %19, 1, !dbg !752
  %exitcond28.not = icmp eq i64 %48, 3, !dbg !752
  br i1 %exitcond28.not, label %49, label %18, !dbg !752

49:                                               ; preds = %47
  %50 = add nuw nsw i64 %15, 1, !dbg !752
  %exitcond29.not = icmp eq i64 %50, 7, !dbg !752
  br i1 %exitcond29.not, label %51, label %.preheader, !dbg !752

51:                                               ; preds = %49
  %52 = add nuw nsw i64 %12, 1, !dbg !752
  %exitcond30.not = icmp eq i64 %52, 7, !dbg !752
  br i1 %exitcond30.not, label %53, label %.preheader26, !dbg !752

53:                                               ; preds = %51
  ret i32 0, !dbg !752
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !753 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !754
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !754
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !754
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !754
  %6 = load ptr, ptr %5, align 8, !dbg !754
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !754
  %8 = load ptr, ptr %7, align 8, !dbg !754
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !754
  %10 = load ptr, ptr %9, align 8, !dbg !754
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !754
  %11 = ptrtoint ptr %4 to i64, !dbg !754
  %12 = add i64 %11, 166912, !dbg !754
  %13 = ptrtoint ptr %6 to i64, !dbg !754
  %14 = add i64 %13, 8986496, !dbg !754
  %15 = ptrtoint ptr %10 to i64, !dbg !754
  %16 = ptrtoint ptr %8 to i64, !dbg !754
  %17 = add i64 %16, 32440320, !dbg !754
  %18 = and i64 %12, 9223372036854775807, !dbg !754
  %19 = and i64 %14, 9223372036854775807, !dbg !754
  %20 = and i64 %15, 9223372036854775744, !dbg !754
  %21 = and i64 %17, 9223372036854775807, !dbg !754
  tail call void asm sideeffect "fence", ""() #14, !dbg !754
  tail call void @llvm.riscv.config(i64 4575657221408489484, i64 281474976710656), !dbg !754
  tail call void @llvm.riscv.config(i64 6, i64 4372741096371912720), !dbg !754
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 4608), !dbg !754
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !754
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %18, i64 %19), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %21, i64 0), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !754
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !754
  %22 = add nuw i64 %18, 2048, !dbg !754
  %23 = add nuw i64 %19, 32768, !dbg !754
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 549755879425), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %22, i64 %23), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 0), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !754
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !754
  %24 = add nuw i64 %18, 4096, !dbg !754
  %25 = add nuw i64 %19, 65536, !dbg !754
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %24, i64 %25), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %20), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 4608, i64 16), !dbg !754
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !754
  tail call void @llvm.riscv.loop.ws(i64 257, i64 0), !dbg !754
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !754
  tail call void asm sideeffect "fence", ""() #14, !dbg !754
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !754
  ret i32 0, !dbg !754
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #1 !dbg !755 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !756
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !756
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !756
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !756
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !757
  %6 = load ptr, ptr %5, align 8, !dbg !757
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !757
  %8 = load ptr, ptr %7, align 8, !dbg !757
  %9 = ptrtoint ptr %4 to i64, !dbg !757
  %10 = ptrtoint ptr %6 to i64, !dbg !757
  %11 = add i64 %10, 11079680, !dbg !757
  %12 = ptrtoint ptr %8 to i64, !dbg !757
  %13 = add i64 %12, 125440, !dbg !757
  %14 = add i64 %10, 32540672, !dbg !757
  %15 = and i64 %9, 9223372036854775744, !dbg !757
  %16 = and i64 %11, 9223372036854775807, !dbg !757
  %17 = and i64 %13, 9223372036854775807, !dbg !757
  %18 = and i64 %14, 9223372036854775807, !dbg !757
  tail call void asm sideeffect "fence", ""() #14, !dbg !757
  tail call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !757
  tail call void @llvm.riscv.config(i64 2, i64 4334783386590642192), !dbg !757
  tail call void @llvm.riscv.config(i64 4575657221409472769, i64 512), !dbg !757
  tail call void @llvm.riscv.config(i64 4575657221409472777, i64 16), !dbg !757
  tail call void @llvm.riscv.config(i64 4575657221409472785, i64 64), !dbg !757
  tail call void @llvm.riscv.loop.ws.config.bounds(i64 15, i64 137439019009), !dbg !757
  tail call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %15, i64 %16), !dbg !757
  tail call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %18, i64 %17), !dbg !757
  tail call void @llvm.riscv.loop.ws.config.strides.ab(i64 512, i64 16), !dbg !757
  tail call void @llvm.riscv.loop.ws.config.strides.dc(i64 16, i64 16), !dbg !757
  tail call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !757
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !757
  tail call void asm sideeffect "fence", ""() #14, !dbg !757
  tail call void @llvm.riscv.flush(i64 0, i64 0), !dbg !757
  ret i32 0, !dbg !757
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #0 !dbg !758 {
  %.elt20 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !759
  %.unpack21 = load ptr, ptr %.elt20, align 16, !dbg !759
  %4 = load ptr, ptr %.unpack21, align 8, !dbg !759
  %5 = getelementptr i8, ptr %4, i64 125440, !dbg !759
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !759
  %6 = getelementptr i8, ptr %4, i64 25088, !dbg !760
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !760
  %7 = getelementptr i8, ptr %.unpack21, i64 8, !dbg !761
  %8 = load ptr, ptr %7, align 8, !dbg !761
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !761
  %9 = load i32, ptr %2, align 16, !dbg !761
  %10 = zext i32 %9 to i64, !dbg !761
  %11 = shl nuw nsw i64 %10, 5, !dbg !761
  br label %12, !dbg !761

12:                                               ; preds = %3, %136
  %13 = phi i64 [ 0, %3 ], [ %207, %136 ]
  %14 = add nuw nsw i64 %13, %11, !dbg !761
  br label %15, !dbg !761

15:                                               ; preds = %12, %15
  %16 = phi <8 x float> [ zeroinitializer, %12 ], [ %134, %15 ]
  %17 = phi i64 [ 0, %12 ], [ %135, %15 ]
  %18 = shl nuw nsw i64 %17, 11, !dbg !761
  %19 = add nuw nsw i64 %18, %14, !dbg !761
  %20 = getelementptr i8, ptr %5, i64 %19, !dbg !761
  %21 = load <8 x i8>, ptr %20, align 8, !dbg !761
  %22 = getelementptr i8, ptr %6, i64 %19, !dbg !761
  %23 = load <8 x i8>, ptr %22, align 8, !dbg !761
  %24 = sitofp <8 x i8> %23 to <8 x float>, !dbg !762
  %25 = fmul nnan contract <8 x float> %24, splat (float 0x3FE0F08C80000000), !dbg !762
  %26 = sitofp <8 x i8> %21 to <8 x float>, !dbg !763
  %27 = fmul nnan contract <8 x float> %26, splat (float 0x3FD88E1BA0000000), !dbg !763
  %28 = fadd contract <8 x float> %27, %25, !dbg !764
  %29 = fdiv <8 x float> %28, splat (float 0x3FC33B6480000000), !dbg !765
  %30 = bitcast <8 x float> %29 to <8 x i32>, !dbg !765
  %31 = tail call <8 x float> @llvm.round.v8f32(<8 x float> %29), !dbg !765
  %32 = bitcast <8 x float> %31 to <8 x i32>, !dbg !765
  %33 = lshr <8 x i32> %30, splat (i32 23), !dbg !765
  %34 = and <8 x i32> %33, splat (i32 255), !dbg !765
  %35 = add nsw <8 x i32> %34, splat (i32 -127), !dbg !765
  %36 = lshr <8 x i32> %32, splat (i32 23), !dbg !765
  %37 = and <8 x i32> %36, splat (i32 255), !dbg !765
  %38 = icmp eq <8 x i32> %37, splat (i32 127), !dbg !765
  %39 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %37, <8 x i32> splat (i32 128)), !dbg !765
  %40 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %39, <8 x i32> splat (i32 31)), !dbg !765
  %41 = lshr <8 x i32> splat (i32 8388607), %40, !dbg !765
  %42 = and <8 x i32> %41, %32, !dbg !765
  %43 = icmp ne <8 x i32> %42, zeroinitializer, !dbg !765
  %44 = or <8 x i1> %38, %43, !dbg !765
  %45 = icmp eq <8 x i32> %35, splat (i32 -1), !dbg !765
  %46 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %35, <8 x i32> zeroinitializer), !dbg !765
  %47 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %46, <8 x i32> splat (i32 31)), !dbg !765
  %48 = lshr <8 x i32> splat (i32 4194304), %47, !dbg !765
  %49 = select <8 x i1> %45, <8 x i32> zeroinitializer, <8 x i32> %48, !dbg !765
  %50 = lshr <8 x i32> splat (i32 8388607), %47, !dbg !765
  %51 = and <8 x i32> %50, %30, !dbg !765
  %52 = icmp eq <8 x i32> %51, %49, !dbg !765
  %53 = add nsw <8 x i32> %34, splat (i32 -126), !dbg !765
  %54 = icmp ult <8 x i32> %53, splat (i32 24), !dbg !765
  %55 = and <8 x i1> %54, %52, !dbg !765
  %56 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %29), !dbg !765
  %57 = and <8 x i1> %44, %55, !dbg !765
  %58 = select <8 x i1> %57, <8 x float> %56, <8 x float> zeroinitializer, !dbg !765
  %59 = fsub contract <8 x float> %31, %58, !dbg !765
  %60 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> %59, <8 x float> %29), !dbg !765
  %61 = fadd contract <8 x float> %60, zeroinitializer, !dbg !765
  %.inv27 = fcmp ole <8 x float> %61, splat (float -1.280000e+02), !dbg !765
  %62 = select <8 x i1> %.inv27, <8 x float> splat (float -1.280000e+02), <8 x float> %61, !dbg !765
  %.inv28 = fcmp oge <8 x float> %62, splat (float 1.270000e+02), !dbg !765
  %63 = select <8 x i1> %.inv28, <8 x float> splat (float 1.270000e+02), <8 x float> %62, !dbg !765
  %64 = fptosi <8 x float> %63 to <8 x i8>, !dbg !765
  %65 = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %64, <8 x i8> zeroinitializer), !dbg !766
  %66 = uitofp nneg <8 x i8> %65 to <8 x float>, !dbg !766
  %67 = bitcast <8 x float> %66 to <8 x i32>, !dbg !767
  %68 = lshr <8 x i32> %67, splat (i32 23), !dbg !767
  %69 = add nsw <8 x i32> %68, splat (i32 -127), !dbg !767
  %70 = icmp eq <8 x i32> %69, zeroinitializer, !dbg !767
  %71 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %68, <8 x i32> splat (i32 128)), !dbg !767
  %72 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %71, <8 x i32> splat (i32 31)), !dbg !767
  %73 = lshr <8 x i32> splat (i32 8388607), %72, !dbg !767
  %74 = and <8 x i32> %73, %67, !dbg !767
  %75 = icmp ne <8 x i32> %74, zeroinitializer, !dbg !767
  %76 = or <8 x i1> %70, %75, !dbg !767
  %77 = icmp eq <8 x i32> %69, splat (i32 -1), !dbg !767
  %78 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %69, <8 x i32> zeroinitializer), !dbg !767
  %79 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %78, <8 x i32> splat (i32 31)), !dbg !767
  %80 = lshr <8 x i32> splat (i32 4194304), %79, !dbg !767
  %81 = select <8 x i1> %77, <8 x i32> zeroinitializer, <8 x i32> %80, !dbg !767
  %82 = lshr <8 x i32> splat (i32 8388607), %79, !dbg !767
  %83 = and <8 x i32> %82, %67, !dbg !767
  %84 = icmp eq <8 x i32> %83, %81, !dbg !767
  %85 = add nsw <8 x i32> %67, splat (i32 -1056964608), !dbg !767
  %86 = icmp ult <8 x i32> %85, splat (i32 201326592), !dbg !767
  %87 = and <8 x i1> %86, %84, !dbg !767
  %88 = fadd contract <8 x float> %66, splat (float -1.000000e+00), !dbg !767
  %89 = and <8 x i1> %76, %87, !dbg !767
  %90 = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %88), !dbg !767
  %91 = select <8 x i1> %89, <8 x float> %90, <8 x float> %66, !dbg !767
  %.inv29 = fcmp oge <8 x float> %91, splat (float 1.270000e+02), !dbg !767
  %92 = select <8 x i1> %.inv29, <8 x float> splat (float 1.270000e+02), <8 x float> %91, !dbg !767
  %93 = fptosi <8 x float> %92 to <8 x i8>, !dbg !767
  %94 = sitofp <8 x i8> %93 to <8 x float>, !dbg !768
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
  %135 = add nuw nsw i64 %17, 1, !dbg !761
  %exitcond.not = icmp eq i64 %135, 49, !dbg !761
  br i1 %exitcond.not, label %136, label %15, !dbg !761

136:                                              ; preds = %15
  %137 = fdiv <8 x float> %134, splat (float 4.900000e+01), !dbg !761
  %138 = fdiv <8 x float> %137, splat (float 0x3FB1D22E00000000), !dbg !769
  %139 = bitcast <8 x float> %138 to <8 x i32>, !dbg !769
  %140 = tail call <8 x float> @llvm.round.v8f32(<8 x float> %138), !dbg !769
  %141 = bitcast <8 x float> %140 to <8 x i32>, !dbg !769
  %142 = lshr <8 x i32> %139, splat (i32 23), !dbg !769
  %143 = and <8 x i32> %142, splat (i32 255), !dbg !769
  %144 = add nsw <8 x i32> %143, splat (i32 -127), !dbg !769
  %145 = lshr <8 x i32> %141, splat (i32 23), !dbg !769
  %146 = and <8 x i32> %145, splat (i32 255), !dbg !769
  %147 = icmp eq <8 x i32> %146, splat (i32 127), !dbg !769
  %148 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %146, <8 x i32> splat (i32 128)), !dbg !769
  %149 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %148, <8 x i32> splat (i32 31)), !dbg !769
  %150 = lshr <8 x i32> splat (i32 8388607), %149, !dbg !769
  %151 = and <8 x i32> %150, %141, !dbg !769
  %152 = icmp ne <8 x i32> %151, zeroinitializer, !dbg !769
  %153 = or <8 x i1> %147, %152, !dbg !769
  %154 = icmp eq <8 x i32> %144, splat (i32 -1), !dbg !769
  %155 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %144, <8 x i32> zeroinitializer), !dbg !769
  %156 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %155, <8 x i32> splat (i32 31)), !dbg !769
  %157 = lshr <8 x i32> splat (i32 4194304), %156, !dbg !769
  %158 = select <8 x i1> %154, <8 x i32> zeroinitializer, <8 x i32> %157, !dbg !769
  %159 = lshr <8 x i32> splat (i32 8388607), %156, !dbg !769
  %160 = and <8 x i32> %159, %139, !dbg !769
  %161 = icmp eq <8 x i32> %160, %158, !dbg !769
  %162 = add nsw <8 x i32> %143, splat (i32 -126), !dbg !769
  %163 = icmp ult <8 x i32> %162, splat (i32 24), !dbg !769
  %164 = and <8 x i1> %163, %161, !dbg !769
  %165 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %138), !dbg !769
  %166 = fsub contract <8 x float> %140, %165, !dbg !769
  %167 = and <8 x i1> %153, %164, !dbg !769
  %168 = select <8 x i1> %167, <8 x float> %166, <8 x float> %140, !dbg !769
  %169 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> %168, <8 x float> %138), !dbg !769
  %170 = fadd contract <8 x float> %169, zeroinitializer, !dbg !769
  %.inv = fcmp ole <8 x float> %170, splat (float -1.280000e+02), !dbg !769
  %171 = select <8 x i1> %.inv, <8 x float> splat (float -1.280000e+02), <8 x float> %170, !dbg !769
  %.inv24 = fcmp oge <8 x float> %171, splat (float 1.270000e+02), !dbg !769
  %172 = select <8 x i1> %.inv24, <8 x float> splat (float 1.270000e+02), <8 x float> %171, !dbg !769
  %173 = fptosi <8 x float> %172 to <8 x i8>, !dbg !769
  %174 = sitofp <8 x i8> %173 to <8 x float>, !dbg !770
  %175 = bitcast <8 x float> %174 to <8 x i32>, !dbg !771
  %176 = lshr <8 x i32> %175, splat (i32 23), !dbg !771
  %177 = and <8 x i32> %176, splat (i32 255), !dbg !771
  %178 = add nsw <8 x i32> %177, splat (i32 -127), !dbg !771
  %179 = icmp eq <8 x i32> %178, zeroinitializer, !dbg !771
  %180 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %177, <8 x i32> splat (i32 128)), !dbg !771
  %181 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %180, <8 x i32> splat (i32 31)), !dbg !771
  %182 = lshr <8 x i32> splat (i32 8388607), %181, !dbg !771
  %183 = and <8 x i32> %182, %175, !dbg !771
  %184 = icmp ne <8 x i32> %183, zeroinitializer, !dbg !771
  %185 = or <8 x i1> %179, %184, !dbg !771
  %186 = icmp eq <8 x i32> %178, splat (i32 -1), !dbg !771
  %187 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %178, <8 x i32> zeroinitializer), !dbg !771
  %188 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %187, <8 x i32> splat (i32 31)), !dbg !771
  %189 = lshr <8 x i32> splat (i32 4194304), %188, !dbg !771
  %190 = select <8 x i1> %186, <8 x i32> zeroinitializer, <8 x i32> %189, !dbg !771
  %191 = lshr <8 x i32> splat (i32 8388607), %188, !dbg !771
  %192 = and <8 x i32> %191, %175, !dbg !771
  %193 = icmp eq <8 x i32> %192, %190, !dbg !771
  %194 = add nsw <8 x i32> %177, splat (i32 -126), !dbg !771
  %195 = icmp ult <8 x i32> %194, splat (i32 24), !dbg !771
  %196 = and <8 x i1> %195, %193, !dbg !771
  %197 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 1.000000e+00), <8 x float> %174), !dbg !771
  %198 = and <8 x i1> %185, %196, !dbg !771
  %199 = select <8 x i1> %198, <8 x float> %197, <8 x float> zeroinitializer, !dbg !771
  %200 = fsub contract <8 x float> %174, %199, !dbg !771
  %201 = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> %200, <8 x float> %174), !dbg !771
  %202 = fadd contract <8 x float> %201, zeroinitializer, !dbg !771
  %.inv25 = fcmp ole <8 x float> %202, splat (float -1.280000e+02), !dbg !771
  %203 = select <8 x i1> %.inv25, <8 x float> splat (float -1.280000e+02), <8 x float> %202, !dbg !771
  %.inv26 = fcmp oge <8 x float> %203, splat (float 1.270000e+02), !dbg !771
  %204 = select <8 x i1> %.inv26, <8 x float> splat (float 1.270000e+02), <8 x float> %203, !dbg !771
  %205 = fptosi <8 x float> %204 to <8 x i8>, !dbg !771
  %206 = getelementptr i8, ptr %8, i64 %14, !dbg !761
  store <8 x i8> %205, ptr %206, align 8, !dbg !761
  %207 = add nuw nsw i64 %13, 8, !dbg !761
  %208 = icmp samesign ult i64 %13, 24, !dbg !761
  br i1 %208, label %12, label %209, !dbg !761

209:                                              ; preds = %136
  ret i32 0, !dbg !761
}

; Function Attrs: nounwind
define internal noundef i32 @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2) #1 !dbg !772 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !773
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !773
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !773
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ], !dbg !773
  %5 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !774
  %6 = load ptr, ptr %5, align 8, !dbg !774
  %7 = getelementptr i8, ptr %.unpack20, i64 16, !dbg !775
  %8 = load ptr, ptr %7, align 8, !dbg !775
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !775
  %9 = getelementptr i8, ptr %.unpack20, i64 24, !dbg !774
  %10 = load ptr, ptr %9, align 8, !dbg !774
  %11 = load i32, ptr %2, align 16, !dbg !774
  %12 = zext i32 %11 to i64, !dbg !774
  %13 = alloca [8 x i32], align 4, !dbg !774
  %.idx = shl nuw nsw i64 %12, 5
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx
  br label %15, !dbg !774

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %53, %15 ]
  %17 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %16, !dbg !774
  %18 = load float, ptr %17, align 4, !dbg !774
  %19 = fdiv float %18, 0x3F46F92680000000, !dbg !774
  %20 = bitcast float %19 to i32, !dbg !774
  %21 = tail call float @llvm.round.f32(float %19), !dbg !774
  %22 = bitcast float %21 to i32, !dbg !774
  %23 = lshr i32 %20, 23, !dbg !774
  %24 = and i32 %23, 255, !dbg !774
  %25 = add nsw i32 %24, -127, !dbg !774
  %26 = lshr i32 %22, 23, !dbg !774
  %27 = and i32 %26, 255, !dbg !774
  %28 = icmp eq i32 %27, 127, !dbg !774
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 128), !dbg !774
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 31), !dbg !774
  %31 = lshr i32 8388607, %30, !dbg !774
  %32 = and i32 %31, %22, !dbg !774
  %33 = icmp ne i32 %32, 0, !dbg !774
  %34 = or i1 %28, %33, !dbg !774
  %35 = icmp eq i32 %25, -1, !dbg !774
  %36 = tail call i32 @llvm.smax.i32(i32 %25, i32 0), !dbg !774
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 31), !dbg !774
  %38 = lshr i32 4194304, %37, !dbg !774
  %39 = select i1 %35, i32 0, i32 %38, !dbg !774
  %40 = lshr i32 8388607, %37, !dbg !774
  %41 = and i32 %40, %20, !dbg !774
  %42 = icmp eq i32 %41, %39, !dbg !774
  %43 = add nsw i32 %24, -126, !dbg !774
  %44 = icmp ult i32 %43, 24, !dbg !774
  %45 = and i1 %44, %42, !dbg !774
  %46 = tail call float @llvm.copysign.f32(float 1.000000e+00, float %19), !dbg !774
  %47 = fsub contract float %21, %46, !dbg !774
  %48 = and i1 %34, %45, !dbg !774
  %49 = select i1 %48, float %47, float %21, !dbg !774
  %50 = tail call float @llvm.copysign.f32(float %49, float %19), !dbg !774
  %51 = fptosi float %50 to i32, !dbg !774
  %52 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %16, !dbg !774
  store i32 %51, ptr %52, align 4, !dbg !774
  %53 = add nuw nsw i64 %16, 1, !dbg !774
  %exitcond.not = icmp eq i64 %53, 8, !dbg !774
  br i1 %exitcond.not, label %54, label %15, !dbg !774

54:                                               ; preds = %15
  %55 = ptrtoint ptr %4 to i64, !dbg !774
  %56 = ptrtoint ptr %6 to i64, !dbg !774
  %57 = add i64 %56, 12128256, !dbg !774
  %58 = ptrtoint ptr %10 to i64, !dbg !774
  %59 = add i64 %58, 2048, !dbg !774
  %60 = ptrtoint ptr %13 to i64, !dbg !774
  %61 = and i64 %55, 9223372036854775744, !dbg !774
  %62 = and i64 %57, 9223372036854775807, !dbg !774
  %63 = and i64 %59, 9223372036854775807, !dbg !774
  %64 = and i64 %60, 9223372036854775804, !dbg !774
  call void asm sideeffect "fence", ""() #14, !dbg !774
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !774
  call void @llvm.riscv.config(i64 2, i64 4362093211020165128), !dbg !774
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !774
  call void @llvm.riscv.config(i64 4575657221409472777, i64 8), !dbg !774
  call void @llvm.riscv.config(i64 4575657221409472785, i64 32), !dbg !774
  call void @llvm.riscv.loop.ws.config.bounds(i64 524303, i64 549755879425), !dbg !774
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %61, i64 %62), !dbg !774
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %64, i64 %63), !dbg !774
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 8), !dbg !774
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 8, i64 8), !dbg !774
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !774
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !774
  call void asm sideeffect "fence", ""() #14, !dbg !774
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !774
  ret i32 0, !dbg !774
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none)
define internal noundef i32 @"main_graph$async_dispatch_105_elementwise_1000_i8xf32"(ptr noalias nonnull readnone align 16 captures(none) %0, ptr noalias noundef nonnull readonly align 16 captures(none) %1, ptr noalias nonnull readnone align 16 captures(none) %2) #0 !dbg !776 {
  %.elt19 = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !777
  %.unpack20 = load ptr, ptr %.elt19, align 16, !dbg !777
  %4 = load ptr, ptr %.unpack20, align 8, !dbg !777
  %5 = getelementptr i8, ptr %4, i64 2048, !dbg !777
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 64) ], !dbg !777
  %6 = getelementptr i8, ptr %.unpack20, i64 8, !dbg !777
  %7 = load ptr, ptr %6, align 8, !dbg !777
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !777
  br label %8, !dbg !777

8:                                                ; preds = %3, %8
  %9 = phi i64 [ 0, %3 ], [ %15, %8 ]
  %10 = getelementptr i8, ptr %5, i64 %9, !dbg !777
  %11 = load <2 x i8>, ptr %10, align 2, !dbg !777
  %12 = sitofp <2 x i8> %11 to <2 x float>, !dbg !777
  %13 = fmul nnan contract <2 x float> %12, splat (float 0x3FA56C0FA0000000), !dbg !777
  %14 = getelementptr [4 x i8], ptr %7, i64 %9, !dbg !777
  store <2 x float> %13, ptr %14, align 8, !dbg !777
  %15 = add nuw nsw i64 %9, 2, !dbg !777
  %16 = icmp samesign ult i64 %9, 998, !dbg !777
  br i1 %16, label %8, label %17, !dbg !777

17:                                               ; preds = %8
  ret i32 0, !dbg !777
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
  store i16 %36, ptr %2, align 4, !tbaa !778
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !780
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
  store i16 %37, ptr %2, align 4, !tbaa !778
  %.0..0..0..0. = load float, ptr %2, align 4, !tbaa !780
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
  store volatile float %3, ptr %2, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i = load volatile float, ptr %2, align 4, !tbaa !780
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
  store volatile float %5, ptr %3, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !780
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
  store volatile float %3, ptr %2, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i = load volatile float, ptr %2, align 4, !tbaa !780
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
  store volatile float %16, ptr %3, align 4, !tbaa !780
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
  store volatile float %24, ptr %2, align 4, !tbaa !780
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
  br i1 %.not, label %21, label %8, !prof !782

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
  store volatile float 0x4600000000000000, ptr %3, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile float, ptr %3, align 4, !tbaa !780
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %16 = fmul float %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i, 0x4600000000000000
  br label %39

17:                                               ; preds = %13
  %18 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float 0x3A00000000000000, ptr %2, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile float, ptr %2, align 4, !tbaa !780
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
  %29 = load i64, ptr %28, align 8, !tbaa !783
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
  store volatile float %16, ptr %3, align 4, !tbaa !780
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
  store volatile float %23, ptr %2, align 4, !tbaa !780
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
  br i1 %or.cond99, label %.critedge, label %76, !prof !785

.critedge:                                        ; preds = %2
  %12 = add i32 %.pre, -1
  %13 = icmp ult i32 %12, -16777217
  br i1 %13, label %30, label %14, !prof !782

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
  br i1 %33, label %49, label %34, !prof !782

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
  store volatile float %48, ptr %5, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..i = load volatile float, ptr %5, align 4, !tbaa !780
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
  %85 = load double, ptr %84, align 8, !tbaa !786
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %87 = load double, ptr %86, align 8, !tbaa !789
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
  br i1 %104, label %105, label %115, !prof !790

105:                                              ; preds = %76
  %106 = fcmp ogt double %101, 0x405FFFFFFFD1D571
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %.not.i.i = icmp eq i32 %.050, 0
  %108 = select i1 %.not.i.i, float 0x4600000000000000, float 0xC600000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %108, ptr %4, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile float, ptr %4, align 4, !tbaa !780
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
  store volatile float %113, ptr %3, align 4, !tbaa !780
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i6 = load volatile float, ptr %3, align 4, !tbaa !780
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
  %122 = load i64, ptr %121, align 8, !tbaa !783
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
  store volatile float %9, ptr %2, align 4, !tbaa !780
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
!449 = !DILocation(line: 700, column: 12, scope: !448)
!450 = !DILocation(line: 706, column: 12, scope: !448)
!451 = distinct !DISubprogram(name: "main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_13_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !93)
!452 = !DILocation(line: 691, column: 12, scope: !451)
!453 = !DILocation(line: 692, column: 12, scope: !451)
!454 = !DILocation(line: 706, column: 12, scope: !451)
!455 = !DILocation(line: 713, column: 12, scope: !451)
!456 = !DILocation(line: 696, column: 12, scope: !451)
!457 = !DILocation(line: 708, column: 12, scope: !451)
!458 = !DILocation(line: 709, column: 12, scope: !451)
!459 = !DILocation(line: 710, column: 12, scope: !451)
!460 = !DILocation(line: 712, column: 12, scope: !451)
!461 = distinct !DISubprogram(name: "main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_14_matmul_3136x64x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!462 = !DILocation(line: 692, column: 12, scope: !461)
!463 = !DILocation(line: 715, column: 12, scope: !461)
!464 = distinct !DISubprogram(name: "main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_16_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95)
!465 = !DILocation(line: 721, column: 12, scope: !464)
!466 = distinct !DISubprogram(name: "main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_17_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96)
!467 = !DILocation(line: 721, column: 12, scope: !466)
!468 = distinct !DISubprogram(name: "main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_18_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97)
!469 = !DILocation(line: 727, column: 12, scope: !468)
!470 = distinct !DISubprogram(name: "main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_19_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98)
!471 = !DILocation(line: 721, column: 12, scope: !470)
!472 = !DILocation(line: 727, column: 12, scope: !470)
!473 = !DILocation(line: 692, column: 12, scope: !470)
!474 = !DILocation(line: 734, column: 12, scope: !470)
!475 = !DILocation(line: 714, column: 12, scope: !470)
!476 = !DILocation(line: 729, column: 12, scope: !470)
!477 = !DILocation(line: 730, column: 12, scope: !470)
!478 = !DILocation(line: 731, column: 12, scope: !470)
!479 = !DILocation(line: 733, column: 12, scope: !470)
!480 = distinct !DISubprogram(name: "main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_20_matmul_3136x64x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99)
!481 = !DILocation(line: 727, column: 12, scope: !480)
!482 = !DILocation(line: 736, column: 12, scope: !480)
!483 = distinct !DISubprogram(name: "main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", linkageName: "main_graph$async_dispatch_22_generic_56x56x3x3x64_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100)
!484 = !DILocation(line: 742, column: 12, scope: !483)
!485 = distinct !DISubprogram(name: "main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", linkageName: "main_graph$async_dispatch_23_matmul_3136x64x576_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101)
!486 = !DILocation(line: 742, column: 12, scope: !485)
!487 = distinct !DISubprogram(name: "main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", linkageName: "main_graph$async_dispatch_24_elementwise_broadcast_3136x256_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102)
!488 = !DILocation(line: 748, column: 12, scope: !487)
!489 = distinct !DISubprogram(name: "main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", linkageName: "main_graph$async_dispatch_25_matmul_3136x256x64_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !103)
!490 = !DILocation(line: 742, column: 12, scope: !489)
!491 = !DILocation(line: 748, column: 12, scope: !489)
!492 = !DILocation(line: 727, column: 12, scope: !489)
!493 = !DILocation(line: 755, column: 12, scope: !489)
!494 = !DILocation(line: 735, column: 12, scope: !489)
!495 = !DILocation(line: 750, column: 12, scope: !489)
!496 = !DILocation(line: 751, column: 12, scope: !489)
!497 = !DILocation(line: 752, column: 12, scope: !489)
!498 = !DILocation(line: 754, column: 12, scope: !489)
!499 = distinct !DISubprogram(name: "main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", linkageName: "main_graph$async_dispatch_26_elementwise_broadcast_3136x128_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !104)
!500 = !DILocation(line: 757, column: 12, scope: !499)
!501 = distinct !DISubprogram(name: "main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_27_matmul_3136x128x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!502 = !DILocation(line: 748, column: 12, scope: !501)
!503 = !DILocation(line: 757, column: 12, scope: !501)
!504 = distinct !DISubprogram(name: "main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_28_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!505 = !DILocation(line: 758, column: 12, scope: !504)
!506 = distinct !DISubprogram(name: "main_graph$async_dispatch_29_generic_28x28x256_i8", linkageName: "main_graph$async_dispatch_29_generic_28x28x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107)
!507 = !DILocation(line: 755, column: 12, scope: !506)
!508 = !DILocation(line: 758, column: 12, scope: !506)
!509 = distinct !DISubprogram(name: "main_graph$async_dispatch_30_slow_memcpy", linkageName: "main_graph$async_dispatch_30_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108)
!510 = !DILocation(line: 764, column: 12, scope: !509)
!511 = !DILocation(line: 766, column: 12, scope: !509)
!512 = distinct !DISubprogram(name: "main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_31_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !109)
!513 = !DILocation(line: 766, column: 12, scope: !512)
!514 = distinct !DISubprogram(name: "main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_32_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !110)
!515 = !DILocation(line: 766, column: 12, scope: !514)
!516 = distinct !DISubprogram(name: "main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_33_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111)
!517 = !DILocation(line: 772, column: 12, scope: !516)
!518 = distinct !DISubprogram(name: "main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_34_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !112)
!519 = !DILocation(line: 766, column: 12, scope: !518)
!520 = !DILocation(line: 772, column: 12, scope: !518)
!521 = distinct !DISubprogram(name: "main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_35_matmul_784x512x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113)
!522 = !DILocation(line: 758, column: 12, scope: !521)
!523 = !DILocation(line: 772, column: 12, scope: !521)
!524 = !DILocation(line: 779, column: 12, scope: !521)
!525 = !DILocation(line: 762, column: 12, scope: !521)
!526 = !DILocation(line: 774, column: 12, scope: !521)
!527 = !DILocation(line: 775, column: 12, scope: !521)
!528 = !DILocation(line: 776, column: 12, scope: !521)
!529 = !DILocation(line: 778, column: 12, scope: !521)
!530 = distinct !DISubprogram(name: "main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_36_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114)
!531 = !DILocation(line: 758, column: 12, scope: !530)
!532 = !DILocation(line: 781, column: 12, scope: !530)
!533 = distinct !DISubprogram(name: "main_graph$async_dispatch_37_slow_memcpy", linkageName: "main_graph$async_dispatch_37_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115)
!534 = !DILocation(line: 787, column: 12, scope: !533)
!535 = !DILocation(line: 785, column: 12, scope: !533)
!536 = distinct !DISubprogram(name: "main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_38_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116)
!537 = !DILocation(line: 787, column: 12, scope: !536)
!538 = distinct !DISubprogram(name: "main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_39_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !117)
!539 = !DILocation(line: 787, column: 12, scope: !538)
!540 = distinct !DISubprogram(name: "main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_40_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !118)
!541 = !DILocation(line: 793, column: 12, scope: !540)
!542 = distinct !DISubprogram(name: "main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_41_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119)
!543 = !DILocation(line: 787, column: 12, scope: !542)
!544 = !DILocation(line: 793, column: 12, scope: !542)
!545 = !DILocation(line: 758, column: 12, scope: !542)
!546 = !DILocation(line: 800, column: 12, scope: !542)
!547 = !DILocation(line: 780, column: 12, scope: !542)
!548 = !DILocation(line: 795, column: 12, scope: !542)
!549 = !DILocation(line: 796, column: 12, scope: !542)
!550 = !DILocation(line: 797, column: 12, scope: !542)
!551 = !DILocation(line: 799, column: 12, scope: !542)
!552 = distinct !DISubprogram(name: "main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_42_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120)
!553 = !DILocation(line: 793, column: 12, scope: !552)
!554 = !DILocation(line: 802, column: 12, scope: !552)
!555 = distinct !DISubprogram(name: "main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_44_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121)
!556 = !DILocation(line: 808, column: 12, scope: !555)
!557 = distinct !DISubprogram(name: "main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_45_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122)
!558 = !DILocation(line: 808, column: 12, scope: !557)
!559 = distinct !DISubprogram(name: "main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_46_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123)
!560 = !DILocation(line: 814, column: 12, scope: !559)
!561 = distinct !DISubprogram(name: "main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_47_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !124)
!562 = !DILocation(line: 808, column: 12, scope: !561)
!563 = !DILocation(line: 814, column: 12, scope: !561)
!564 = !DILocation(line: 793, column: 12, scope: !561)
!565 = !DILocation(line: 821, column: 12, scope: !561)
!566 = !DILocation(line: 801, column: 12, scope: !561)
!567 = !DILocation(line: 816, column: 12, scope: !561)
!568 = !DILocation(line: 817, column: 12, scope: !561)
!569 = !DILocation(line: 818, column: 12, scope: !561)
!570 = !DILocation(line: 820, column: 12, scope: !561)
!571 = distinct !DISubprogram(name: "main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_48_matmul_784x128x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125)
!572 = !DILocation(line: 814, column: 12, scope: !571)
!573 = !DILocation(line: 823, column: 12, scope: !571)
!574 = distinct !DISubprogram(name: "main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", linkageName: "main_graph$async_dispatch_50_generic_28x28x3x3x128_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126)
!575 = !DILocation(line: 829, column: 12, scope: !574)
!576 = distinct !DISubprogram(name: "main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", linkageName: "main_graph$async_dispatch_51_matmul_784x128x1152_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127)
!577 = !DILocation(line: 829, column: 12, scope: !576)
!578 = distinct !DISubprogram(name: "main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", linkageName: "main_graph$async_dispatch_52_elementwise_broadcast_784x512_i32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !128)
!579 = !DILocation(line: 835, column: 12, scope: !578)
!580 = distinct !DISubprogram(name: "main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", linkageName: "main_graph$async_dispatch_53_matmul_784x512x128_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129)
!581 = !DILocation(line: 829, column: 12, scope: !580)
!582 = !DILocation(line: 835, column: 12, scope: !580)
!583 = !DILocation(line: 814, column: 12, scope: !580)
!584 = !DILocation(line: 842, column: 12, scope: !580)
!585 = !DILocation(line: 822, column: 12, scope: !580)
!586 = !DILocation(line: 837, column: 12, scope: !580)
!587 = !DILocation(line: 838, column: 12, scope: !580)
!588 = !DILocation(line: 839, column: 12, scope: !580)
!589 = !DILocation(line: 841, column: 12, scope: !580)
!590 = distinct !DISubprogram(name: "main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_54_matmul_784x256x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130)
!591 = !DILocation(line: 835, column: 12, scope: !590)
!592 = !DILocation(line: 844, column: 12, scope: !590)
!593 = distinct !DISubprogram(name: "main_graph$async_dispatch_55_generic_14x14x512_i8", linkageName: "main_graph$async_dispatch_55_generic_14x14x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !131)
!594 = !DILocation(line: 842, column: 12, scope: !593)
!595 = !DILocation(line: 845, column: 12, scope: !593)
!596 = distinct !DISubprogram(name: "main_graph$async_dispatch_56_slow_memcpy", linkageName: "main_graph$async_dispatch_56_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132)
!597 = !DILocation(line: 851, column: 12, scope: !596)
!598 = !DILocation(line: 853, column: 12, scope: !596)
!599 = distinct !DISubprogram(name: "main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_57_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133)
!600 = !DILocation(line: 853, column: 12, scope: !599)
!601 = distinct !DISubprogram(name: "main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_58_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134)
!602 = !DILocation(line: 853, column: 12, scope: !601)
!603 = distinct !DISubprogram(name: "main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_59_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135)
!604 = !DILocation(line: 853, column: 12, scope: !603)
!605 = !DILocation(line: 859, column: 12, scope: !603)
!606 = distinct !DISubprogram(name: "main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_60_matmul_196x1024x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136)
!607 = !DILocation(line: 845, column: 12, scope: !606)
!608 = !DILocation(line: 859, column: 12, scope: !606)
!609 = !DILocation(line: 866, column: 12, scope: !606)
!610 = !DILocation(line: 849, column: 12, scope: !606)
!611 = !DILocation(line: 861, column: 12, scope: !606)
!612 = !DILocation(line: 862, column: 12, scope: !606)
!613 = !DILocation(line: 863, column: 12, scope: !606)
!614 = !DILocation(line: 865, column: 12, scope: !606)
!615 = distinct !DISubprogram(name: "main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_61_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137)
!616 = !DILocation(line: 845, column: 12, scope: !615)
!617 = !DILocation(line: 868, column: 12, scope: !615)
!618 = distinct !DISubprogram(name: "main_graph$async_dispatch_62_slow_memcpy", linkageName: "main_graph$async_dispatch_62_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !138)
!619 = !DILocation(line: 874, column: 12, scope: !618)
!620 = !DILocation(line: 872, column: 12, scope: !618)
!621 = distinct !DISubprogram(name: "main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_63_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !139)
!622 = !DILocation(line: 874, column: 12, scope: !621)
!623 = distinct !DISubprogram(name: "main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_64_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140)
!624 = !DILocation(line: 874, column: 12, scope: !623)
!625 = distinct !DISubprogram(name: "main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_65_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141)
!626 = !DILocation(line: 874, column: 12, scope: !625)
!627 = !DILocation(line: 880, column: 12, scope: !625)
!628 = !DILocation(line: 845, column: 12, scope: !625)
!629 = !DILocation(line: 887, column: 12, scope: !625)
!630 = !DILocation(line: 867, column: 12, scope: !625)
!631 = !DILocation(line: 882, column: 12, scope: !625)
!632 = !DILocation(line: 883, column: 12, scope: !625)
!633 = !DILocation(line: 884, column: 12, scope: !625)
!634 = !DILocation(line: 886, column: 12, scope: !625)
!635 = distinct !DISubprogram(name: "main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_66_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !142)
!636 = !DILocation(line: 880, column: 12, scope: !635)
!637 = !DILocation(line: 889, column: 12, scope: !635)
!638 = distinct !DISubprogram(name: "main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_68_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143)
!639 = !DILocation(line: 895, column: 12, scope: !638)
!640 = distinct !DISubprogram(name: "main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_69_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144)
!641 = !DILocation(line: 895, column: 12, scope: !640)
!642 = distinct !DISubprogram(name: "main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_70_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145)
!643 = !DILocation(line: 895, column: 12, scope: !642)
!644 = !DILocation(line: 901, column: 12, scope: !642)
!645 = !DILocation(line: 880, column: 12, scope: !642)
!646 = !DILocation(line: 908, column: 12, scope: !642)
!647 = !DILocation(line: 888, column: 12, scope: !642)
!648 = !DILocation(line: 903, column: 12, scope: !642)
!649 = !DILocation(line: 904, column: 12, scope: !642)
!650 = !DILocation(line: 905, column: 12, scope: !642)
!651 = !DILocation(line: 907, column: 12, scope: !642)
!652 = distinct !DISubprogram(name: "main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_71_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146)
!653 = !DILocation(line: 901, column: 12, scope: !652)
!654 = !DILocation(line: 910, column: 12, scope: !652)
!655 = distinct !DISubprogram(name: "main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_73_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147)
!656 = !DILocation(line: 916, column: 12, scope: !655)
!657 = distinct !DISubprogram(name: "main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_74_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148)
!658 = !DILocation(line: 916, column: 12, scope: !657)
!659 = distinct !DISubprogram(name: "main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_75_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149)
!660 = !DILocation(line: 916, column: 12, scope: !659)
!661 = !DILocation(line: 922, column: 12, scope: !659)
!662 = !DILocation(line: 901, column: 12, scope: !659)
!663 = !DILocation(line: 929, column: 12, scope: !659)
!664 = !DILocation(line: 909, column: 12, scope: !659)
!665 = !DILocation(line: 924, column: 12, scope: !659)
!666 = !DILocation(line: 925, column: 12, scope: !659)
!667 = !DILocation(line: 926, column: 12, scope: !659)
!668 = !DILocation(line: 928, column: 12, scope: !659)
!669 = distinct !DISubprogram(name: "main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_76_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150)
!670 = !DILocation(line: 922, column: 12, scope: !669)
!671 = !DILocation(line: 931, column: 12, scope: !669)
!672 = distinct !DISubprogram(name: "main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_78_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151)
!673 = !DILocation(line: 937, column: 12, scope: !672)
!674 = distinct !DISubprogram(name: "main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_79_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152)
!675 = !DILocation(line: 937, column: 12, scope: !674)
!676 = distinct !DISubprogram(name: "main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_80_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153)
!677 = !DILocation(line: 937, column: 12, scope: !676)
!678 = !DILocation(line: 943, column: 12, scope: !676)
!679 = !DILocation(line: 922, column: 12, scope: !676)
!680 = !DILocation(line: 950, column: 12, scope: !676)
!681 = !DILocation(line: 930, column: 12, scope: !676)
!682 = !DILocation(line: 945, column: 12, scope: !676)
!683 = !DILocation(line: 946, column: 12, scope: !676)
!684 = !DILocation(line: 947, column: 12, scope: !676)
!685 = !DILocation(line: 949, column: 12, scope: !676)
!686 = distinct !DISubprogram(name: "main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_81_matmul_196x256x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154)
!687 = !DILocation(line: 943, column: 12, scope: !686)
!688 = !DILocation(line: 952, column: 12, scope: !686)
!689 = distinct !DISubprogram(name: "main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", linkageName: "main_graph$async_dispatch_83_generic_14x14x3x3x256_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155)
!690 = !DILocation(line: 958, column: 12, scope: !689)
!691 = distinct !DISubprogram(name: "main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", linkageName: "main_graph$async_dispatch_84_matmul_196x256x2304_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156)
!692 = !DILocation(line: 958, column: 12, scope: !691)
!693 = distinct !DISubprogram(name: "main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", linkageName: "main_graph$async_dispatch_85_matmul_196x1024x256_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157)
!694 = !DILocation(line: 958, column: 12, scope: !693)
!695 = !DILocation(line: 964, column: 12, scope: !693)
!696 = !DILocation(line: 943, column: 12, scope: !693)
!697 = !DILocation(line: 971, column: 12, scope: !693)
!698 = !DILocation(line: 951, column: 12, scope: !693)
!699 = !DILocation(line: 966, column: 12, scope: !693)
!700 = !DILocation(line: 967, column: 12, scope: !693)
!701 = !DILocation(line: 968, column: 12, scope: !693)
!702 = !DILocation(line: 970, column: 12, scope: !693)
!703 = distinct !DISubprogram(name: "main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_86_matmul_196x512x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158)
!704 = !DILocation(line: 964, column: 12, scope: !703)
!705 = !DILocation(line: 973, column: 12, scope: !703)
!706 = distinct !DISubprogram(name: "main_graph$async_dispatch_87_generic_7x7x1024_i8", linkageName: "main_graph$async_dispatch_87_generic_7x7x1024_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159)
!707 = !DILocation(line: 971, column: 12, scope: !706)
!708 = !DILocation(line: 974, column: 12, scope: !706)
!709 = distinct !DISubprogram(name: "main_graph$async_dispatch_88_slow_memcpy", linkageName: "main_graph$async_dispatch_88_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160)
!710 = !DILocation(line: 980, column: 12, scope: !709)
!711 = !DILocation(line: 982, column: 12, scope: !709)
!712 = distinct !DISubprogram(name: "main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_89_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161)
!713 = !DILocation(line: 982, column: 12, scope: !712)
!714 = distinct !DISubprogram(name: "main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_90_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !162)
!715 = !DILocation(line: 982, column: 12, scope: !714)
!716 = distinct !DISubprogram(name: "main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_91_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163)
!717 = !DILocation(line: 982, column: 12, scope: !716)
!718 = !DILocation(line: 988, column: 12, scope: !716)
!719 = distinct !DISubprogram(name: "main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", linkageName: "main_graph$async_dispatch_92_matmul_49x2048x1024_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164)
!720 = !DILocation(line: 974, column: 12, scope: !719)
!721 = !DILocation(line: 988, column: 12, scope: !719)
!722 = !DILocation(line: 995, column: 12, scope: !719)
!723 = !DILocation(line: 978, column: 12, scope: !719)
!724 = !DILocation(line: 990, column: 12, scope: !719)
!725 = !DILocation(line: 991, column: 12, scope: !719)
!726 = !DILocation(line: 992, column: 12, scope: !719)
!727 = !DILocation(line: 994, column: 12, scope: !719)
!728 = distinct !DISubprogram(name: "main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_93_matmul_49x512x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165)
!729 = !DILocation(line: 974, column: 12, scope: !728)
!730 = !DILocation(line: 997, column: 12, scope: !728)
!731 = distinct !DISubprogram(name: "main_graph$async_dispatch_94_slow_memcpy", linkageName: "main_graph$async_dispatch_94_slow_memcpy", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166)
!732 = !DILocation(line: 1003, column: 12, scope: !731)
!733 = !DILocation(line: 1001, column: 12, scope: !731)
!734 = distinct !DISubprogram(name: "main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_95_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167)
!735 = !DILocation(line: 1003, column: 12, scope: !734)
!736 = distinct !DISubprogram(name: "main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_96_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168)
!737 = !DILocation(line: 1003, column: 12, scope: !736)
!738 = distinct !DISubprogram(name: "main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_97_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!739 = !DILocation(line: 1003, column: 12, scope: !738)
!740 = !DILocation(line: 1009, column: 13, scope: !738)
!741 = !DILocation(line: 974, column: 12, scope: !738)
!742 = !DILocation(line: 1016, column: 13, scope: !738)
!743 = !DILocation(line: 996, column: 12, scope: !738)
!744 = !DILocation(line: 1011, column: 13, scope: !738)
!745 = !DILocation(line: 1012, column: 13, scope: !738)
!746 = !DILocation(line: 1013, column: 13, scope: !738)
!747 = !DILocation(line: 1015, column: 13, scope: !738)
!748 = distinct !DISubprogram(name: "main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_98_matmul_49x512x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !170)
!749 = !DILocation(line: 1009, column: 13, scope: !748)
!750 = !DILocation(line: 1018, column: 13, scope: !748)
!751 = distinct !DISubprogram(name: "main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", linkageName: "main_graph$async_dispatch_100_generic_7x7x3x3x512_i8", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171)
!752 = !DILocation(line: 1024, column: 13, scope: !751)
!753 = distinct !DISubprogram(name: "main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", linkageName: "main_graph$async_dispatch_101_matmul_49x512x4608_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172)
!754 = !DILocation(line: 1024, column: 13, scope: !753)
!755 = distinct !DISubprogram(name: "main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", linkageName: "main_graph$async_dispatch_102_matmul_49x2048x512_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173)
!756 = !DILocation(line: 1024, column: 13, scope: !755)
!757 = !DILocation(line: 1030, column: 13, scope: !755)
!758 = distinct !DISubprogram(name: "main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", linkageName: "main_graph$async_dispatch_103_reduction_2048x49_i8xi8xf32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174)
!759 = !DILocation(line: 1030, column: 13, scope: !758)
!760 = !DILocation(line: 1009, column: 13, scope: !758)
!761 = !DILocation(line: 1039, column: 13, scope: !758)
!762 = !DILocation(line: 1017, column: 13, scope: !758)
!763 = !DILocation(line: 1032, column: 13, scope: !758)
!764 = !DILocation(line: 1033, column: 13, scope: !758)
!765 = !DILocation(line: 1034, column: 13, scope: !758)
!766 = !DILocation(line: 1036, column: 13, scope: !758)
!767 = !DILocation(line: 1037, column: 13, scope: !758)
!768 = !DILocation(line: 1038, column: 13, scope: !758)
!769 = !DILocation(line: 1040, column: 13, scope: !758)
!770 = !DILocation(line: 1041, column: 13, scope: !758)
!771 = !DILocation(line: 1043, column: 13, scope: !758)
!772 = distinct !DISubprogram(name: "main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", linkageName: "main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175)
!773 = !DILocation(line: 1043, column: 13, scope: !772)
!774 = !DILocation(line: 1045, column: 13, scope: !772)
!775 = !DILocation(line: 1046, column: 13, scope: !772)
!776 = distinct !DISubprogram(name: "main_graph$async_dispatch_105_elementwise_1000_i8xf32", linkageName: "main_graph$async_dispatch_105_elementwise_1000_i8xf32", scope: !1, file: !1, line: 1, type: !184, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176)
!777 = !DILocation(line: 1047, column: 13, scope: !776)
!778 = !{!779, !779, i64 0}
!779 = !{!"short", !181, i64 0}
!780 = !{!781, !781, i64 0}
!781 = !{!"float", !181, i64 0}
!782 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!783 = !{!784, !784, i64 0}
!784 = !{!"long", !181, i64 0}
!785 = !{!"branch_weights", i32 4001, i32 4000000}
!786 = !{!787, !788, i64 0}
!787 = !{!"", !788, i64 0, !788, i64 8}
!788 = !{!"double", !181, i64 0}
!789 = !{!787, !788, i64 8}
!790 = !{!"branch_weights", !"expected", i32 1, i32 2000}
