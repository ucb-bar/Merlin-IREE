define internal i32 @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !772 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !773
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !773
  %6 = load ptr, ptr %5, align 8, !dbg !773
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !773
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !774
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !774
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !774
  %10 = load ptr, ptr %9, align 8, !dbg !774
  %11 = getelementptr i8, ptr %10, i64 12128256, !dbg !774
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !774
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !775
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !775
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !775
  %15 = load ptr, ptr %14, align 8, !dbg !775
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !775
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !774
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !774
  %18 = getelementptr ptr, ptr %17, i32 3, !dbg !774
  %19 = load ptr, ptr %18, align 8, !dbg !774
  %20 = getelementptr i8, ptr %19, i64 2048, !dbg !774
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 64) ], !dbg !774
  %21 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !774
  %22 = extractvalue %iree_hal_executable_workgroup_state_v0_t %21, 0, !dbg !774
  %23 = zext i32 %22 to i64, !dbg !774
  %24 = mul nsw i64 %23, 8, !dbg !774
  %25 = alloca i32, i64 8, align 4, !dbg !774
  br label %26, !dbg !774

26:                                               ; preds = %29, %3
  %27 = phi i64 [ %76, %29 ], [ 0, %3 ], !dbg !774
  %28 = icmp slt i64 %27, 8, !dbg !774
  br i1 %28, label %29, label %77, !dbg !774

29:                                               ; preds = %26
  %30 = add i64 %24, %27, !dbg !774
  %31 = add nuw nsw i64 0, %30, !dbg !774
  %32 = getelementptr inbounds nuw float, ptr %15, i64 %31, !dbg !774
  %33 = load float, ptr %32, align 4, !dbg !774
  %34 = fdiv float %33, 0x3F46F92680000000, !dbg !774
  %35 = bitcast float %34 to i32, !dbg !774
  %36 = call float @llvm.round.f32(float %34), !dbg !774
  %37 = bitcast float %36 to i32, !dbg !774
  %38 = lshr i32 %35, 23, !dbg !774
  %39 = and i32 %38, 255, !dbg !774
  %40 = sub i32 %39, 127, !dbg !774
  %41 = lshr i32 %37, 23, !dbg !774
  %42 = and i32 %41, 255, !dbg !774
  %43 = sub i32 %42, 127, !dbg !774
  %44 = icmp eq i32 %43, 0, !dbg !774
  %45 = sub i32 %42, 128, !dbg !774
  %46 = icmp sgt i32 %45, 0, !dbg !774
  %47 = select i1 %46, i32 %45, i32 0, !dbg !774
  %48 = icmp slt i32 %47, 31, !dbg !774
  %49 = select i1 %48, i32 %47, i32 31, !dbg !774
  %50 = lshr i32 8388607, %49, !dbg !774
  %51 = and i32 %37, %50, !dbg !774
  %52 = icmp ne i32 %51, 0, !dbg !774
  %53 = or i1 %52, %44, !dbg !774
  %54 = icmp eq i32 %40, -1, !dbg !774
  %55 = icmp sgt i32 %40, 0, !dbg !774
  %56 = select i1 %55, i32 %40, i32 0, !dbg !774
  %57 = icmp slt i32 %56, 31, !dbg !774
  %58 = select i1 %57, i32 %56, i32 31, !dbg !774
  %59 = lshr i32 4194304, %58, !dbg !774
  %60 = select i1 %54, i32 0, i32 %59, !dbg !774
  %61 = lshr i32 8388607, %58, !dbg !774
  %62 = and i32 %35, %61, !dbg !774
  %63 = icmp eq i32 %62, %60, !dbg !774
  %64 = icmp sge i32 %40, -1, !dbg !774
  %65 = icmp slt i32 %40, 23, !dbg !774
  %66 = and i1 %63, %65, !dbg !774
  %67 = and i1 %66, %64, !dbg !774
  %68 = call float @llvm.copysign.f32(float 1.000000e+00, float %34), !dbg !774
  %69 = fsub contract float %36, %68, !dbg !774
  %70 = and i1 %53, %67, !dbg !774
  %71 = select i1 %70, float %69, float %36, !dbg !774
  %72 = call float @llvm.copysign.f32(float %71, float %34), !dbg !774
  %73 = fptosi float %72 to i32, !dbg !774
  %74 = add nuw nsw i64 0, %27, !dbg !774
  %75 = getelementptr inbounds nuw i32, ptr %25, i64 %74, !dbg !774
  store i32 %73, ptr %75, align 4, !dbg !774
  %76 = add i64 %27, 1, !dbg !774
  br label %26, !dbg !774

77:                                               ; preds = %26
  %78 = ptrtoint ptr %6 to i64, !dbg !774
  %79 = ptrtoint ptr %10 to i64, !dbg !774
  %80 = add i64 %79, -9223372036842647552, !dbg !774
  %81 = ptrtoint ptr %19 to i64, !dbg !774
  %82 = add i64 %81, -9223372036854773760, !dbg !774
  %83 = ptrtoint ptr %25 to i64, !dbg !774
  %84 = and i64 %78, 9223372036854775807, !dbg !774
  %85 = and i64 %80, 9223372036854775807, !dbg !774
  %86 = and i64 %82, 9223372036854775807, !dbg !774
  %87 = and i64 %83, 9223372036854775807, !dbg !774
  call void asm sideeffect "fence", ""(), !dbg !774
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !774
  call void @llvm.riscv.config(i64 2, i64 4362093211020165128), !dbg !774
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !774
  call void @llvm.riscv.config(i64 4575657221409472777, i64 8), !dbg !774
  call void @llvm.riscv.config(i64 4575657221409472785, i64 32), !dbg !774
  call void @llvm.riscv.loop.ws.config.bounds(i64 524303, i64 549755879425), !dbg !774
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %84, i64 %85), !dbg !774
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %87, i64 %86), !dbg !774
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 8), !dbg !774
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 8, i64 8), !dbg !774
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !774
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !774
  call void asm sideeffect "fence", ""(), !dbg !774
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !774
  ret i32 0, !dbg !774
}
