; ModuleID = 'main_graph_dispatch_0'
source_filename = "main_graph_dispatch_0"
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

@0 = private constant [22 x i8] c"main_graph_dispatch_0\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [1 x ptr] [ptr @main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32]
@iree_hal_executable_library_query_v0_attrs = private constant [1 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [48 x i8] c"main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [1 x ptr] [ptr @1]
@2 = private constant [27 x i8] c"runs/fixW/repro/model.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [1 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 1, i32 26, ptr @2 }]
@iree_hal_executable_library_query_v0_main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [1 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32_stage_names, ptr @iree_hal_executable_library_query_v0_main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 1, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !3 {
  %4 = alloca i32, i64 128, align 64, !dbg !79
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !79
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !79
  %7 = load ptr, ptr %6, align 8, !dbg !79
  %8 = getelementptr ptr, ptr %6, i32 1, !dbg !79
  %9 = load ptr, ptr %8, align 8, !dbg !79
  %10 = getelementptr ptr, ptr %6, i32 2, !dbg !79
  %11 = load ptr, ptr %10, align 8, !dbg !79
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !79
  %12 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !79
  %13 = extractvalue %iree_hal_executable_workgroup_state_v0_t %12, 0, !dbg !79
  %14 = zext i32 %13 to i64, !dbg !79
  %15 = sdiv i64 %14, 5, !dbg !79
  %16 = mul i64 %15, 5, !dbg !79
  %17 = icmp ne i64 %14, %16, !dbg !79
  %18 = icmp slt i64 %14, 0, !dbg !79
  %19 = and i1 %17, %18, !dbg !79
  %20 = add i64 %15, -1, !dbg !79
  %21 = select i1 %19, i64 %20, i64 %15, !dbg !79
  %22 = srem i64 %14, 5, !dbg !79
  %23 = icmp slt i64 %22, 0, !dbg !79
  %24 = add nsw i64 %22, 5, !dbg !79
  %25 = select i1 %23, i64 %24, i64 %22, !dbg !79
  %26 = mul nsw i64 %21, 16, !dbg !79
  %27 = mul nsw i64 %25, 8, !dbg !79
  br label %28, !dbg !79

28:                                               ; preds = %39, %3
  %29 = phi i64 [ %40, %39 ], [ 0, %3 ], !dbg !79
  %30 = icmp slt i64 %29, 16, !dbg !79
  br i1 %30, label %31, label %41, !dbg !79

31:                                               ; preds = %34, %28
  %32 = phi i64 [ %38, %34 ], [ 0, %28 ], !dbg !79
  %33 = icmp slt i64 %32, 8, !dbg !79
  br i1 %33, label %34, label %39, !dbg !79

34:                                               ; preds = %31
  %35 = mul nuw nsw i64 %29, 8, !dbg !79
  %36 = add nuw nsw i64 %35, %32, !dbg !79
  %37 = getelementptr inbounds nuw i32, ptr %4, i64 %36, !dbg !79
  store i32 0, ptr %37, align 4, !dbg !79
  %38 = add i64 %32, 1, !dbg !79
  br label %31, !dbg !79

39:                                               ; preds = %31
  %40 = add i64 %29, 1, !dbg !79
  br label %28, !dbg !79

41:                                               ; preds = %28
  %42 = mul nsw i64 %26, 24, !dbg !79
  %43 = ptrtoint ptr %7 to i64, !dbg !79
  %44 = add i64 %43, %42, !dbg !79
  %45 = ptrtoint ptr %9 to i64, !dbg !79
  %46 = add i64 %45, %27, !dbg !79
  %47 = ptrtoint ptr %4 to i64, !dbg !79
  %48 = and i64 %44, 9223372036854775807, !dbg !79
  %49 = and i64 %46, 9223372036854775807, !dbg !79
  %50 = and i64 %47, 9223372036854775807, !dbg !79
  call void asm sideeffect "fence", ""(), !dbg !79
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !79
  call void @llvm.riscv.config(i64 2, i64 4575657221408423968), !dbg !79
  call void @llvm.riscv.config(i64 4575657221409472769, i64 24), !dbg !79
  call void @llvm.riscv.config(i64 4575657221409472777, i64 40), !dbg !79
  call void @llvm.riscv.config(i64 4575657221409472785, i64 0), !dbg !79
  call void @llvm.riscv.loop.ws.config.bounds(i64 34360262656, i64 8590000129), !dbg !79
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %48, i64 %49), !dbg !79
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 0, i64 %50), !dbg !79
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 24, i64 40), !dbg !79
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 0, i64 8), !dbg !79
  call void @llvm.riscv.loop.ws(i64 327682, i64 0), !dbg !79
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !79
  call void asm sideeffect "fence", ""(), !dbg !79
  br label %51, !dbg !79

51:                                               ; preds = %69, %41
  %52 = phi i64 [ %70, %69 ], [ 0, %41 ], !dbg !79
  %53 = icmp slt i64 %52, 16, !dbg !79
  br i1 %53, label %54, label %71, !dbg !79

54:                                               ; preds = %57, %51
  %55 = phi i64 [ %68, %57 ], [ 0, %51 ], !dbg !79
  %56 = icmp slt i64 %55, 8, !dbg !79
  br i1 %56, label %57, label %69, !dbg !79

57:                                               ; preds = %54
  %58 = mul nuw nsw i64 %52, 8, !dbg !79
  %59 = add nuw nsw i64 %58, %55, !dbg !79
  %60 = getelementptr inbounds nuw i32, ptr %4, i64 %59, !dbg !79
  %61 = load i32, ptr %60, align 4, !dbg !79
  %62 = sitofp i32 %61 to float, !dbg !79
  %63 = add i64 %26, %52, !dbg !79
  %64 = add i64 %27, %55, !dbg !79
  %65 = mul nuw nsw i64 %63, 40, !dbg !79
  %66 = add nuw nsw i64 %65, %64, !dbg !79
  %67 = getelementptr inbounds nuw float, ptr %11, i64 %66, !dbg !79
  store float %62, ptr %67, align 4, !dbg !79
  %68 = add i64 %55, 1, !dbg !79
  br label %54, !dbg !79

69:                                               ; preds = %54
  %70 = add i64 %52, 1, !dbg !79
  br label %51, !dbg !79

71:                                               ; preds = %51
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !79
  ret i32 0, !dbg !79
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.config(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.bounds(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.addrs.ab(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.addrs.dc(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.strides.ab(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws.config.strides.dc(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.loop.ws(i64, i64) #2

; Function Attrs: nounwind willreturn
declare void @llvm.riscv.flush(i64, i64) #2

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #3 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nounwind willreturn "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "-", directory: "")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32", linkageName: "main_graph_dispatch_0_matmul_32x40x24_i8xi8xi32", scope: !1, file: !1, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4 = !DISubroutineType(cc: DW_CC_normal, types: !5)
!5 = !{!6, !7, !38, !67}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !11, file: !11, line: 246, size: 768, elements: !12)
!11 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!12 = !{!13, !21, !24, !27, !29}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !17, size: 2048, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20}
!20 = !DISubrange(count: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !30, offset: 256)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !11, file: !11, line: 227, size: 512, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !34, size: 512, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !35)
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !11, file: !11, line: 275, size: 384, elements: !42)
!42 = !{!43, !44, !45, !48, !49, !50, !51, !52, !55, !56, !57, !62}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !17, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !17, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !46, size: 16, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !46, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !17, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !17, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !46, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !53, size: 8, offset: 176)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !53, size: 8, offset: 184)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !14, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !58, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !61, size: 4096, elements: !19)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !63, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !66, size: 4096, elements: !19)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !34)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !11, file: !11, line: 321, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !17, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !17, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !46, size: 16, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !46, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !17, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !22, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !17, size: 32, offset: 192)
!79 = !DILocation(line: 1, column: 10, scope: !3)
