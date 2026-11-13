define internal i32 @"main_graph$async_dispatch_104_matmul_1x1000x2048_i8xi8xi32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !740 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !741
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !741
  %6 = load ptr, ptr %5, align 8, !dbg !741
  %7 = getelementptr ptr, ptr %5, i32 1, !dbg !741
  %8 = load ptr, ptr %7, align 8, !dbg !741
  %9 = getelementptr ptr, ptr %5, i32 2, !dbg !742
  %10 = load ptr, ptr %9, align 8, !dbg !742
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !742
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !741
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !741
  %13 = getelementptr ptr, ptr %12, i32 3, !dbg !741
  %14 = load ptr, ptr %13, align 8, !dbg !741
  %15 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !741
  %16 = extractvalue %iree_hal_executable_workgroup_state_v0_t %15, 0, !dbg !741
  %17 = zext i32 %16 to i64, !dbg !741
  %18 = mul nsw i64 %17, 8, !dbg !741
  %19 = alloca i32, i64 8, align 4, !dbg !741
  br label %20, !dbg !741

20:                                               ; preds = %23, %3
  %21 = phi i64 [ %70, %23 ], [ 0, %3 ], !dbg !741
  %22 = icmp slt i64 %21, 8, !dbg !741
  br i1 %22, label %23, label %71, !dbg !741

23:                                               ; preds = %20
  %24 = add i64 %18, %21, !dbg !741
  %25 = add nuw nsw i64 0, %24, !dbg !741
  %26 = getelementptr inbounds nuw float, ptr %10, i64 %25, !dbg !741
  %27 = load float, ptr %26, align 4, !dbg !741
  %28 = fdiv float %27, 0x3F46F92680000000, !dbg !741
  %29 = bitcast float %28 to i32, !dbg !741
  %30 = call float @llvm.round.f32(float %28), !dbg !741
  %31 = bitcast float %30 to i32, !dbg !741
  %32 = lshr i32 %29, 23, !dbg !741
  %33 = and i32 %32, 255, !dbg !741
  %34 = sub i32 %33, 127, !dbg !741
  %35 = lshr i32 %31, 23, !dbg !741
  %36 = and i32 %35, 255, !dbg !741
  %37 = sub i32 %36, 127, !dbg !741
  %38 = icmp eq i32 %37, 0, !dbg !741
  %39 = sub i32 %36, 128, !dbg !741
  %40 = icmp sgt i32 %39, 0, !dbg !741
  %41 = select i1 %40, i32 %39, i32 0, !dbg !741
  %42 = icmp slt i32 %41, 31, !dbg !741
  %43 = select i1 %42, i32 %41, i32 31, !dbg !741
  %44 = lshr i32 8388607, %43, !dbg !741
  %45 = and i32 %31, %44, !dbg !741
  %46 = icmp ne i32 %45, 0, !dbg !741
  %47 = or i1 %46, %38, !dbg !741
  %48 = icmp eq i32 %34, -1, !dbg !741
  %49 = icmp sgt i32 %34, 0, !dbg !741
  %50 = select i1 %49, i32 %34, i32 0, !dbg !741
  %51 = icmp slt i32 %50, 31, !dbg !741
  %52 = select i1 %51, i32 %50, i32 31, !dbg !741
  %53 = lshr i32 4194304, %52, !dbg !741
  %54 = select i1 %48, i32 0, i32 %53, !dbg !741
  %55 = lshr i32 8388607, %52, !dbg !741
  %56 = and i32 %29, %55, !dbg !741
  %57 = icmp eq i32 %56, %54, !dbg !741
  %58 = icmp sge i32 %34, -1, !dbg !741
  %59 = icmp slt i32 %34, 23, !dbg !741
  %60 = and i1 %57, %59, !dbg !741
  %61 = and i1 %60, %58, !dbg !741
  %62 = call float @llvm.copysign.f32(float 1.000000e+00, float %28), !dbg !741
  %63 = fsub contract float %30, %62, !dbg !741
  %64 = and i1 %47, %61, !dbg !741
  %65 = select i1 %64, float %63, float %30, !dbg !741
  %66 = call float @llvm.copysign.f32(float %65, float %28), !dbg !741
  %67 = fptosi float %66 to i32, !dbg !741
  %68 = add nuw nsw i64 0, %21, !dbg !741
  %69 = getelementptr inbounds nuw i32, ptr %19, i64 %68, !dbg !741
  store i32 %67, ptr %69, align 4, !dbg !741
  %70 = add i64 %21, 1, !dbg !741
  br label %20, !dbg !741

71:                                               ; preds = %20
  %72 = ptrtoint ptr %6 to i64, !dbg !741
  %73 = add i64 %18, 12128256, !dbg !741
  %74 = ptrtoint ptr %8 to i64, !dbg !741
  %75 = add i64 %74, %73, !dbg !741
  %76 = add i64 %18, 2048, !dbg !741
  %77 = ptrtoint ptr %14 to i64, !dbg !741
  %78 = add i64 %77, %76, !dbg !741
  %79 = ptrtoint ptr %19 to i64, !dbg !741
  %80 = and i64 %72, 9223372036854775807, !dbg !741
  %81 = and i64 %75, 9223372036854775807, !dbg !741
  %82 = and i64 %78, 9223372036854775807, !dbg !741
  %83 = and i64 %79, 9223372036854775807, !dbg !741
  call void asm sideeffect "fence", ""(), !dbg !741
  call void @llvm.riscv.config(i64 4575657221408489476, i64 281474976710656), !dbg !741
  call void @llvm.riscv.config(i64 2, i64 4362093211020166120), !dbg !741
  call void @llvm.riscv.config(i64 4575657221409472769, i64 2048), !dbg !741
  call void @llvm.riscv.config(i64 4575657221409472777, i64 1000), !dbg !741
  call void @llvm.riscv.config(i64 4575657221409472785, i64 32), !dbg !741
  call void @llvm.riscv.loop.ws.config.bounds(i64 524303, i64 549755879425), !dbg !741
  call void @llvm.riscv.loop.ws.config.addrs.ab(i64 %80, i64 %81), !dbg !741
  call void @llvm.riscv.loop.ws.config.addrs.dc(i64 %83, i64 %82), !dbg !741
  call void @llvm.riscv.loop.ws.config.strides.ab(i64 2048, i64 1000), !dbg !741
  call void @llvm.riscv.loop.ws.config.strides.dc(i64 8, i64 1000), !dbg !741
  call void @llvm.riscv.loop.ws(i64 327681, i64 0), !dbg !741
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !741
  call void asm sideeffect "fence", ""(), !dbg !741
  call void @llvm.riscv.flush(i64 0, i64 0), !dbg !741
  ret i32 0, !dbg !741
}
