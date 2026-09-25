; ModuleID = 'results/static/guard_competitors/Julia_sha256/irce.ll'
source_filename = "sha256_sum"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4570460976 to ptr)

; Function Attrs: nounwind
define swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself captures(none) %pgcstack, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"data::Array", i64 signext %"iters::Int64") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  store i64 4, ptr %gcframe1, align 16, !tbaa !21
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !21
  store ptr %gcframe1, ptr %pgcstack, align 8
    #dbg_declare(ptr %"data::Array", !19, !DIExpression(), !25)
    #dbg_value(i64 %"iters::Int64", !20, !DIExpression(), !25)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !21
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !25
  fence syncscope("singlethread") seq_cst
  %ptls_load644 = load ptr, ptr %ptls_field, align 8, !dbg !28, !tbaa !21
  %"Memory{UInt32}[]" = call noalias nonnull align 8 dereferenceable(288) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 1024, i32 288, i64 4834139040) #8, !dbg !28
  %"Memory{UInt32}[].tag_addr" = getelementptr inbounds i8, ptr %"Memory{UInt32}[]", i64 -8, !dbg !28
  store atomic i64 4834139040, ptr %"Memory{UInt32}[].tag_addr" unordered, align 8, !dbg !28, !tbaa !35
  %memory_ptr = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 8, !dbg !28
  %memory_data = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 16, !dbg !28
  store ptr %memory_data, ptr %memory_ptr, align 8, !dbg !28, !tbaa !38, !alias.scope !41, !noalias !44
  store i64 64, ptr %"Memory{UInt32}[]", align 8, !dbg !28, !tbaa !49, !alias.scope !41, !noalias !44
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  store ptr %"Memory{UInt32}[]", ptr %gc_slot_addr_0, align 16
  %"new::Array" = call noalias nonnull align 8 dereferenceable(32) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 472, i32 32, i64 4834141488) #8, !dbg !51
  store ptr %memory_data, ptr %"new::Array", align 8, !dbg !51, !tbaa !52, !alias.scope !41, !noalias !44
  %"new::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"new::Array", i64 16, !dbg !51
  store i64 64, ptr %"new::Array.size_ptr", align 8, !dbg !51, !tbaa !54, !alias.scope !55, !noalias !56
  %".iters::Int64" = call i64 @llvm.smax.i64(i64 %"iters::Int64", i64 0), !dbg !57
  %2 = icmp slt i64 %"iters::Int64", 1, !dbg !58
  br i1 %2, label %L509, label %pass.preheader, !dbg !69

pass.preheader:                                   ; preds = %top
  %"data::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"data::Array", i64 16
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8
  %3 = sdiv i64 %"data::Array.size.0.copyload", 64
  %4 = icmp slt i64 %"data::Array.size.0.copyload", 64
  %value_phi8 = select i1 %4, i64 0, i64 %3
  %5 = icmp slt i64 %value_phi8, 1
  br i1 %5, label %pass.preheader.split.us, label %pass, !dbg !70

pass.preheader.split.us:                          ; preds = %pass.preheader
  %6 = trunc i64 %".iters::Int64" to i32, !dbg !70
  %7 = mul i32 %6, -974474368, !dbg !70
  br label %L509, !dbg !71

L41:                                              ; preds = %pass, %L476
  %memoryref_data69 = phi ptr [ %memoryref_data87, %L476 ], [ %memoryref_data69421, %pass ]
  %"new::Array.size.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload", %L476 ], [ %"new::Array.size84.0.copyload", %pass ]
  %value_phi12 = phi i64 [ %95, %L476 ], [ 1, %pass ]
  %value_phi14 = phi i32 [ %94, %L476 ], [ 1541459225, %pass ]
  %value_phi15 = phi i32 [ %93, %L476 ], [ 528734635, %pass ]
  %value_phi16 = phi i32 [ %92, %L476 ], [ -1694144372, %pass ]
  %value_phi17 = phi i32 [ %91, %L476 ], [ 1359893119, %pass ]
  %value_phi18 = phi i32 [ %90, %L476 ], [ -1521486534, %pass ]
  %value_phi19 = phi i32 [ %89, %L476 ], [ 1013904242, %pass ]
  %value_phi20 = phi i32 [ %88, %L476 ], [ -1150833019, %pass ]
  %value_phi21 = phi i32 [ %87, %L476 ], [ 1779033703, %pass ]
  %8 = shl i64 %value_phi12, 6, !dbg !72
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data69, i64 -4, !dbg !67
  %smin = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload", i64 0), !dbg !67
  %9 = sub i64 %"new::Array.size.0.copyload", %smin, !dbg !67
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 -1), !dbg !67
  %10 = add nsw i64 %smax, 1, !dbg !67
  %11 = mul nuw nsw i64 %10, %9, !dbg !67
  %.not485 = icmp eq i64 %11, 0, !dbg !67
  br i1 %.not485, label %L53.postloop.preheader, label %L53.preheader, !dbg !67

L53.postloop.preheader:                           ; preds = %main.exit.selector, %L41
  %value_phi22.postloop.ph = phi i64 [ %12, %main.exit.selector ], [ 1, %L41 ]
  br label %L53.postloop, !dbg !75

L53.preheader:                                    ; preds = %L41
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %11, i64 16), !dbg !67
  %12 = add nuw nsw i64 %exit.mainloop.at, 1, !dbg !75
  br label %L53, !dbg !75

L53:                                              ; preds = %L53.preheader, %L158
  %value_phi22 = phi i64 [ %22, %L158 ], [ 1, %L53.preheader ]
  %13 = shl i64 %value_phi22, 2, !dbg !79
  %14 = add nuw i64 %13, %8, !dbg !81
  %15 = add i64 %14, -68, !dbg !75
  %.not = icmp ult i64 %15, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not, label %L73, label %odessy.chk1, !dbg !75

L73:                                              ; preds = %L53
  %16 = add i64 %14, -67, !dbg !75
  %.not281 = icmp ult i64 %16, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not281, label %L94, label %odessy.chk3, !dbg !75

L94:                                              ; preds = %L73
  %17 = add i64 %14, -66, !dbg !75
  %.not282 = icmp ult i64 %17, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not282, label %L116, label %odessy.chk5, !dbg !75

L116:                                             ; preds = %L94
  %18 = add i64 %14, -65, !dbg !75
  %.not283 = icmp ult i64 %18, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not283, label %L158, label %odessy.chk7, !dbg !75

L158:                                             ; preds = %L116
  %19 = getelementptr i8, ptr %memoryref_data, i64 %14, !dbg !83
  %memoryref_data27 = getelementptr i8, ptr %19, i64 -68, !dbg !83
  %20 = load i32, ptr %memoryref_data27, align 1, !dbg !83
  %21 = call i32 @llvm.bswap.i32(i32 %20), !dbg !83
  %gep = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !84
  store i32 %21, ptr %gep, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %22 = add nuw nsw i64 %value_phi22, 1, !dbg !93
  %exitcond.not = icmp eq i64 %value_phi22, %exit.mainloop.at, !dbg !94
  br i1 %exitcond.not, label %main.exit.selector, label %L53, !dbg !94

main.exit.selector:                               ; preds = %L158
  %23 = icmp samesign ult i64 %value_phi22, 16, !dbg !94
  br i1 %23, label %L53.postloop.preheader, label %L175.preheader, !dbg !94

L175.preheader:                                   ; preds = %L158.postloop, %main.exit.selector
  %memoryref_data87 = load ptr, ptr %"new::Array", align 8
  br i1 %110, label %L364, label %L175.postloop.preheader, !dbg !95

L175.postloop.preheader:                          ; preds = %main.exit.selector374, %L175.preheader
  %value_phi81.postloop.ph = phi i64 [ %111, %main.exit.selector374 ], [ 17, %L175.preheader ]
  br label %L175.postloop, !dbg !95

L364:                                             ; preds = %L175.preheader, %L364
  %value_phi81 = phi i64 [ %42, %L364 ], [ 17, %L175.preheader ]
  %memoryref_offset89 = shl i64 %value_phi81, 2, !dbg !97
  %24 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89, !dbg !97
  %memoryref_data95 = getelementptr i8, ptr %24, i64 -64, !dbg !97
  %25 = load i32, ptr %memoryref_data95, align 4, !dbg !97, !tbaa !89, !alias.scope !91, !noalias !92
  %26 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 25), !dbg !98
  %27 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 14), !dbg !98
  %28 = xor i32 %27, %26, !dbg !102
  %29 = lshr i32 %25, 3, !dbg !104
  %30 = xor i32 %28, %29, !dbg !102
  %memoryref_data134 = getelementptr i8, ptr %24, i64 -12, !dbg !107
  %31 = load i32, ptr %memoryref_data134, align 4, !dbg !107, !tbaa !89, !alias.scope !91, !noalias !92
  %32 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 15), !dbg !109
  %33 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13), !dbg !109
  %34 = xor i32 %33, %32, !dbg !111
  %35 = lshr i32 %31, 10, !dbg !112
  %36 = xor i32 %34, %35, !dbg !111
  %memoryref_data173 = getelementptr i8, ptr %24, i64 -68, !dbg !114
  %37 = load i32, ptr %memoryref_data173, align 4, !dbg !114, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186 = getelementptr i8, ptr %24, i64 -32, !dbg !114
  %38 = load i32, ptr %memoryref_data186, align 4, !dbg !114, !tbaa !89, !alias.scope !91, !noalias !92
  %39 = add i32 %30, %37, !dbg !116
  %40 = add i32 %39, %38, !dbg !116
  %41 = add i32 %40, %36, !dbg !119
  %memoryref_data199 = getelementptr i8, ptr %24, i64 -4, !dbg !122
  store i32 %41, ptr %memoryref_data199, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %42 = add nuw nsw i64 %value_phi81, 1, !dbg !124
  %exitcond77.not = icmp eq i64 %value_phi81, %umin76, !dbg !125
  br i1 %exitcond77.not, label %main.exit.selector374, label %L364, !dbg !125

main.exit.selector374:                            ; preds = %L364
  %43 = icmp samesign ult i64 %value_phi81, 64, !dbg !125
  br i1 %43, label %L175.postloop.preheader, label %L381.preheader, !dbg !125

L381.preheader:                                   ; preds = %L364.postloop, %main.exit.selector374
  %.size.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 64, !tbaa !54, !alias.scope !126, !noalias !127
  %"new::Array.size225.0.copyload" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349 = getelementptr i8, ptr %memoryref_data87, i64 -4, !dbg !128
  %smin398 = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload", i64 0), !dbg !128
  %44 = sub i64 %"new::Array.size225.0.copyload", %smin398, !dbg !128
  %smax399 = call i64 @llvm.smax.i64(i64 %smin398, i64 -1), !dbg !128
  %45 = add nsw i64 %smax399, 1, !dbg !128
  %46 = mul nuw nsw i64 %45, %44, !dbg !128
  %smin400 = call i64 @llvm.smin.i64(i64 %.size.0.copyload, i64 0), !dbg !128
  %47 = sub i64 %.size.0.copyload, %smin400, !dbg !128
  %smax401 = call i64 @llvm.smax.i64(i64 %smin400, i64 -1), !dbg !128
  %48 = add nsw i64 %smax401, 1, !dbg !128
  %49 = mul nuw nsw i64 %48, %47, !dbg !128
  %umin402 = call i64 @llvm.umin.i64(i64 %46, i64 %49), !dbg !128
  %exit.mainloop.at404 = call i64 @llvm.umin.i64(i64 %umin402, i64 64), !dbg !128
  %.not488 = icmp eq i64 %umin402, 0, !dbg !128
  br i1 %.not488, label %main.pseudo.exit407, label %L438.preheader, !dbg !128

L438.preheader:                                   ; preds = %L381.preheader
  %memoryref_data215.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !130, !tbaa !52, !alias.scope !41, !noalias !44
  %50 = add nuw nsw i64 %exit.mainloop.at404, 1, !dbg !131
  br label %L438, !dbg !131

L438:                                             ; preds = %L438, %L438.preheader
  %value_phi203 = phi i64 [ %79, %L438 ], [ 1, %L438.preheader ]
  %value_phi205 = phi i32 [ %value_phi206, %L438 ], [ %value_phi14, %L438.preheader ]
  %value_phi206 = phi i32 [ %value_phi207, %L438 ], [ %value_phi15, %L438.preheader ]
  %value_phi207 = phi i32 [ %value_phi208, %L438 ], [ %value_phi16, %L438.preheader ]
  %value_phi208 = phi i32 [ %77, %L438 ], [ %value_phi17, %L438.preheader ]
  %value_phi209 = phi i32 [ %value_phi210, %L438 ], [ %value_phi18, %L438.preheader ]
  %value_phi210 = phi i32 [ %value_phi211, %L438 ], [ %value_phi19, %L438.preheader ]
  %value_phi211 = phi i32 [ %value_phi212, %L438 ], [ %value_phi20, %L438.preheader ]
  %value_phi212 = phi i32 [ %78, %L438 ], [ %value_phi21, %L438.preheader ]
  %51 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 26), !dbg !132
  %52 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 21), !dbg !132
  %53 = xor i32 %51, %52, !dbg !135
  %54 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 7), !dbg !132
  %55 = xor i32 %53, %54, !dbg !135
  %56 = and i32 %value_phi208, %value_phi207, !dbg !136
  %57 = xor i32 %value_phi208, -1, !dbg !139
  %58 = and i32 %value_phi206, %57, !dbg !136
  %memoryref_offset217 = shl nuw nsw i64 %value_phi203, 2, !dbg !130
  %59 = getelementptr i8, ptr %memoryref_data215.pre, i64 %memoryref_offset217, !dbg !130
  %memoryref_data223 = getelementptr i8, ptr %59, i64 -4, !dbg !130
  %60 = load i32, ptr %memoryref_data223, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350 = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217, !dbg !130
  %61 = load i32, ptr %gep350, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %62 = add i32 %58, %value_phi205, !dbg !141
  %63 = add i32 %62, %56, !dbg !143
  %64 = add i32 %63, %55, !dbg !141
  %65 = add i32 %64, %60, !dbg !144
  %66 = add i32 %65, %61, !dbg !146
  %67 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 30), !dbg !148
  %68 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 19), !dbg !148
  %69 = xor i32 %67, %68, !dbg !151
  %70 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 10), !dbg !148
  %71 = xor i32 %69, %70, !dbg !151
  %72 = xor i32 %value_phi211, %value_phi210, !dbg !152
  %73 = and i32 %value_phi212, %72, !dbg !152
  %74 = and i32 %value_phi211, %value_phi210, !dbg !154
  %75 = xor i32 %73, %74, !dbg !152
  %76 = add i32 %71, %75, !dbg !155
  %77 = add i32 %66, %value_phi209, !dbg !157
  %78 = add i32 %76, %66, !dbg !159
  %79 = add nuw nsw i64 %value_phi203, 1, !dbg !161
  %exitcond79.not = icmp eq i64 %value_phi203, %exit.mainloop.at404, !dbg !131
  br i1 %exitcond79.not, label %main.exit.selector406, label %L438, !dbg !131

main.exit.selector406:                            ; preds = %L438
  %80 = icmp ult i64 %umin402, 64, !dbg !131
  br i1 %80, label %main.pseudo.exit407, label %L476, !dbg !131

main.pseudo.exit407:                              ; preds = %main.exit.selector406, %L381.preheader
  %value_phi203.copy = phi i64 [ 1, %L381.preheader ], [ %50, %main.exit.selector406 ]
  %value_phi205.copy = phi i32 [ %value_phi14, %L381.preheader ], [ %value_phi206, %main.exit.selector406 ]
  %value_phi206.copy = phi i32 [ %value_phi15, %L381.preheader ], [ %value_phi207, %main.exit.selector406 ]
  %value_phi207.copy = phi i32 [ %value_phi16, %L381.preheader ], [ %value_phi208, %main.exit.selector406 ]
  %value_phi208.copy = phi i32 [ %value_phi17, %L381.preheader ], [ %77, %main.exit.selector406 ]
  %value_phi209.copy = phi i32 [ %value_phi18, %L381.preheader ], [ %value_phi210, %main.exit.selector406 ]
  %value_phi210.copy = phi i32 [ %value_phi19, %L381.preheader ], [ %value_phi211, %main.exit.selector406 ]
  %value_phi211.copy = phi i32 [ %value_phi20, %L381.preheader ], [ %value_phi212, %main.exit.selector406 ]
  %value_phi212.copy = phi i32 [ %value_phi21, %L381.preheader ], [ %78, %main.exit.selector406 ]
  %81 = add nsw i64 %value_phi203.copy, -1
  %umax80 = call i64 @llvm.umax.i64(i64 %.size.0.copyload, i64 %81)
  %82 = add i64 %umax80, 1
  %83 = sub i64 %82, %value_phi203.copy
  %umax81 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload", i64 %81)
  %84 = add i64 %umax81, 1
  %85 = sub i64 %84, %value_phi203.copy
  %umin82 = call i64 @llvm.umin.i64(i64 %85, i64 %83)
  %86 = sub nsw i64 64, %value_phi203.copy
  %umin83 = call i64 @llvm.umin.i64(i64 %umin82, i64 %86)
  %.not87 = icmp eq i64 %83, %umin83
  br i1 %.not87, label %odessy.chk14, label %main.pseudo.exit407.split, !dbg !128

main.pseudo.exit407.split:                        ; preds = %main.pseudo.exit407
  %.not88 = icmp eq i64 %85, %umin83
  br i1 %.not88, label %odessy.chk15, label %main.pseudo.exit407.split.split, !dbg !128

main.pseudo.exit407.split.split:                  ; preds = %main.pseudo.exit407.split
  %memoryref_data215.postloop.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !130, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop

L476:                                             ; preds = %L381.postloop, %main.exit.selector406
  %.lcssa345 = phi i32 [ %77, %main.exit.selector406 ], [ %171, %L381.postloop ], !dbg !157
  %.lcssa344 = phi i32 [ %78, %main.exit.selector406 ], [ %172, %L381.postloop ], !dbg !159
  %value_phi206.lcssa341 = phi i32 [ %value_phi206, %main.exit.selector406 ], [ %value_phi206.postloop, %L381.postloop ]
  %value_phi207.lcssa339 = phi i32 [ %value_phi207, %main.exit.selector406 ], [ %value_phi207.postloop, %L381.postloop ]
  %value_phi208.lcssa337 = phi i32 [ %value_phi208, %main.exit.selector406 ], [ %value_phi208.postloop, %L381.postloop ]
  %value_phi210.lcssa335 = phi i32 [ %value_phi210, %main.exit.selector406 ], [ %value_phi210.postloop, %L381.postloop ]
  %value_phi211.lcssa333 = phi i32 [ %value_phi211, %main.exit.selector406 ], [ %value_phi211.postloop, %L381.postloop ]
  %value_phi212.lcssa331 = phi i32 [ %value_phi212, %main.exit.selector406 ], [ %value_phi212.postloop, %L381.postloop ]
  %87 = add i32 %.lcssa344, %value_phi21, !dbg !162
  %88 = add i32 %value_phi212.lcssa331, %value_phi20, !dbg !162
  %89 = add i32 %value_phi211.lcssa333, %value_phi19, !dbg !162
  %90 = add i32 %value_phi210.lcssa335, %value_phi18, !dbg !162
  %91 = add i32 %.lcssa345, %value_phi17, !dbg !164
  %92 = add i32 %value_phi208.lcssa337, %value_phi16, !dbg !164
  %93 = add i32 %value_phi207.lcssa339, %value_phi15, !dbg !164
  %94 = add i32 %value_phi206.lcssa341, %value_phi14, !dbg !164
  %.not299.not = icmp eq i64 %value_phi12, %value_phi8, !dbg !166
  %95 = add nuw nsw i64 %value_phi12, 1, !dbg !169
  br i1 %.not299.not, label %L495.loopexit, label %L41, !dbg !170

L495.loopexit:                                    ; preds = %L476
  %96 = add i32 %87, %value_phi7, !dbg !171
  %97 = add i32 %96, %94, !dbg !171
  %.not300.not = icmp eq i64 %value_phi6, %".iters::Int64", !dbg !173
  %98 = add nuw i64 %value_phi6, 1, !dbg !174
  br i1 %.not300.not, label %L509, label %pass, !dbg !175

L509:                                             ; preds = %L495.loopexit, %pass.preheader.split.us, %top
  %value_phi247 = phi i32 [ 0, %top ], [ %7, %pass.preheader.split.us ], [ %97, %L495.loopexit ]
  %frame.prev689 = load ptr, ptr %frame.prev, align 8, !tbaa !21
  store ptr %frame.prev689, ptr %pgcstack, align 8, !tbaa !21
  ret i32 %value_phi247, !dbg !71

pass:                                             ; preds = %pass.preheader, %L495.loopexit
  %memoryref_data69421 = phi ptr [ %memoryref_data87, %L495.loopexit ], [ %memory_data, %pass.preheader ]
  %"new::Array.size84.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload", %L495.loopexit ], [ 64, %pass.preheader ]
  %value_phi6 = phi i64 [ %98, %L495.loopexit ], [ 1, %pass.preheader ]
  %value_phi7 = phi i32 [ %97, %L495.loopexit ], [ 0, %pass.preheader ]
  %smin362 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -2), !dbg !67
  %99 = sub i64 %"new::Array.size84.0.copyload", %smin362, !dbg !67
  %smin363 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 0), !dbg !67
  %smax364 = call i64 @llvm.smax.i64(i64 %smin363, i64 -1), !dbg !67
  %100 = add nsw i64 %smax364, 1, !dbg !67
  %101 = mul nuw nsw i64 %100, %99, !dbg !67
  %smin365 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -7), !dbg !67
  %102 = sub i64 %"new::Array.size84.0.copyload", %smin365, !dbg !67
  %103 = mul nuw nsw i64 %100, %102, !dbg !67
  %umin = call i64 @llvm.umin.i64(i64 %101, i64 %103), !dbg !67
  %smin366 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -15), !dbg !67
  %104 = sub i64 %"new::Array.size84.0.copyload", %smin366, !dbg !67
  %105 = mul nuw nsw i64 %100, %104, !dbg !67
  %umin367 = call i64 @llvm.umin.i64(i64 %umin, i64 %105), !dbg !67
  %smin368 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -16), !dbg !67
  %106 = sub i64 %"new::Array.size84.0.copyload", %smin368, !dbg !67
  %107 = mul nuw nsw i64 %100, %106, !dbg !67
  %umin369 = call i64 @llvm.umin.i64(i64 %umin367, i64 %107), !dbg !67
  %108 = sub i64 %"new::Array.size84.0.copyload", %smin363, !dbg !67
  %109 = mul nuw nsw i64 %100, %108, !dbg !67
  %umin370 = call i64 @llvm.umin.i64(i64 %umin369, i64 %109), !dbg !67
  %110 = icmp ugt i64 %umin370, 16
  %umax75 = call i64 @llvm.umax.i64(i64 %umin370, i64 16), !dbg !67
  %umin76 = call i64 @llvm.umin.i64(i64 %umax75, i64 64), !dbg !67
  %111 = add nuw nsw i64 %umin76, 1, !dbg !67
  br label %L41, !dbg !67

L53.postloop:                                     ; preds = %L53.postloop.preheader, %L158.postloop
  %value_phi22.postloop = phi i64 [ %122, %L158.postloop ], [ %value_phi22.postloop.ph, %L53.postloop.preheader ]
  %112 = shl i64 %value_phi22.postloop, 2, !dbg !79
  %113 = add i64 %112, %8, !dbg !81
  %114 = add i64 %113, -68, !dbg !75
  %.not.postloop = icmp ult i64 %114, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop, label %L73.postloop, label %odessy.chk, !dbg !75

L73.postloop:                                     ; preds = %L53.postloop
  %115 = add i64 %113, -67, !dbg !75
  %.not281.postloop = icmp ult i64 %115, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not281.postloop, label %L94.postloop, label %odessy.chk2, !dbg !75

L94.postloop:                                     ; preds = %L73.postloop
  %116 = add i64 %113, -66, !dbg !75
  %.not282.postloop = icmp ult i64 %116, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not282.postloop, label %L116.postloop, label %odessy.chk4, !dbg !75

L116.postloop:                                    ; preds = %L94.postloop
  %117 = add i64 %113, -65, !dbg !75
  %.not283.postloop = icmp ult i64 %117, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not283.postloop, label %L138.postloop, label %odessy.chk6, !dbg !75

L138.postloop:                                    ; preds = %L116.postloop
  %118 = add i64 %value_phi22.postloop, -1, !dbg !176
  %.not284.postloop = icmp ult i64 %118, %"new::Array.size.0.copyload", !dbg !179
  br i1 %.not284.postloop, label %L158.postloop, label %odessy.chk8, !dbg !178

L158.postloop:                                    ; preds = %L138.postloop
  %119 = getelementptr i8, ptr %memoryref_data, i64 %113, !dbg !83
  %memoryref_data27.postloop = getelementptr i8, ptr %119, i64 -68, !dbg !83
  %120 = load i32, ptr %memoryref_data27.postloop, align 1, !dbg !83
  %121 = call i32 @llvm.bswap.i32(i32 %120), !dbg !83
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %112, !dbg !84
  store i32 %121, ptr %gep.postloop, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop = icmp eq i64 %value_phi22.postloop, 16, !dbg !180
  %122 = add i64 %value_phi22.postloop, 1, !dbg !93
  br i1 %.not285.not.postloop, label %L175.preheader, label %L53.postloop, !dbg !94, !llvm.loop !181, !loop_constrainer.loop.clone !10

L175.postloop:                                    ; preds = %L175.postloop.preheader, %L364.postloop
  %value_phi81.postloop = phi i64 [ %144, %L364.postloop ], [ %value_phi81.postloop.ph, %L175.postloop.preheader ]
  %123 = add i64 %value_phi81.postloop, -16, !dbg !95
  %.not286.postloop = icmp ult i64 %123, %"new::Array.size84.0.copyload", !dbg !95
  br i1 %.not286.postloop, label %L237.postloop, label %odessy.chk9, !dbg !95

L237.postloop:                                    ; preds = %L175.postloop
  %memoryref_offset89.postloop = shl i64 %value_phi81.postloop, 2, !dbg !97
  %124 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89.postloop, !dbg !97
  %memoryref_data95.postloop = getelementptr i8, ptr %124, i64 -64, !dbg !97
  %125 = load i32, ptr %memoryref_data95.postloop, align 4, !dbg !97, !tbaa !89, !alias.scope !91, !noalias !92
  %126 = call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 25), !dbg !98
  %127 = call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 14), !dbg !98
  %128 = xor i32 %127, %126, !dbg !102
  %129 = lshr i32 %125, 3, !dbg !104
  %130 = xor i32 %128, %129, !dbg !102
  %131 = add i64 %value_phi81.postloop, -3, !dbg !186
  %.not289.postloop = icmp ult i64 %131, %"new::Array.size84.0.copyload", !dbg !186
  br i1 %.not289.postloop, label %L343.postloop, label %odessy.chk10, !dbg !186

L343.postloop:                                    ; preds = %L237.postloop
  %132 = add i64 %value_phi81.postloop, -1, !dbg !187
  %.not294.postloop = icmp ult i64 %132, %"new::Array.size84.0.copyload", !dbg !189
  br i1 %.not294.postloop, label %L364.postloop, label %odessy.chk13, !dbg !188

L364.postloop:                                    ; preds = %L343.postloop
  %memoryref_data134.postloop = getelementptr i8, ptr %124, i64 -12, !dbg !107
  %133 = load i32, ptr %memoryref_data134.postloop, align 4, !dbg !107, !tbaa !89, !alias.scope !91, !noalias !92
  %134 = call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 13), !dbg !109
  %135 = call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 15), !dbg !109
  %136 = xor i32 %134, %135, !dbg !111
  %137 = lshr i32 %133, 10, !dbg !112
  %138 = xor i32 %136, %137, !dbg !111
  %memoryref_data173.postloop = getelementptr i8, ptr %124, i64 -68, !dbg !114
  %139 = load i32, ptr %memoryref_data173.postloop, align 4, !dbg !114, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.postloop = getelementptr i8, ptr %124, i64 -32, !dbg !114
  %140 = load i32, ptr %memoryref_data186.postloop, align 4, !dbg !114, !tbaa !89, !alias.scope !91, !noalias !92
  %141 = add i32 %138, %130, !dbg !116
  %142 = add i32 %141, %139, !dbg !116
  %143 = add i32 %142, %140, !dbg !119
  %memoryref_data199.postloop = getelementptr i8, ptr %124, i64 -4, !dbg !122
  store i32 %143, ptr %memoryref_data199.postloop, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %.not295.not.postloop = icmp eq i64 %value_phi81.postloop, 64, !dbg !190
  %144 = add i64 %value_phi81.postloop, 1, !dbg !124
  br i1 %.not295.not.postloop, label %L381.preheader, label %L175.postloop, !dbg !125, !llvm.loop !191, !loop_constrainer.loop.clone !10

L381.postloop:                                    ; preds = %L381.postloop, %main.pseudo.exit407.split.split
  %value_phi203.postloop = phi i64 [ %173, %L381.postloop ], [ %value_phi203.copy, %main.pseudo.exit407.split.split ]
  %value_phi205.postloop = phi i32 [ %value_phi206.postloop, %L381.postloop ], [ %value_phi205.copy, %main.pseudo.exit407.split.split ]
  %value_phi206.postloop = phi i32 [ %value_phi207.postloop, %L381.postloop ], [ %value_phi206.copy, %main.pseudo.exit407.split.split ]
  %value_phi207.postloop = phi i32 [ %value_phi208.postloop, %L381.postloop ], [ %value_phi207.copy, %main.pseudo.exit407.split.split ]
  %value_phi208.postloop = phi i32 [ %171, %L381.postloop ], [ %value_phi208.copy, %main.pseudo.exit407.split.split ]
  %value_phi209.postloop = phi i32 [ %value_phi210.postloop, %L381.postloop ], [ %value_phi209.copy, %main.pseudo.exit407.split.split ]
  %value_phi210.postloop = phi i32 [ %value_phi211.postloop, %L381.postloop ], [ %value_phi210.copy, %main.pseudo.exit407.split.split ]
  %value_phi211.postloop = phi i32 [ %value_phi212.postloop, %L381.postloop ], [ %value_phi211.copy, %main.pseudo.exit407.split.split ]
  %value_phi212.postloop = phi i32 [ %172, %L381.postloop ], [ %value_phi212.copy, %main.pseudo.exit407.split.split ]
  %145 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 26), !dbg !132
  %146 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 21), !dbg !132
  %147 = xor i32 %145, %146, !dbg !135
  %148 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 7), !dbg !132
  %149 = xor i32 %147, %148, !dbg !135
  %150 = and i32 %value_phi208.postloop, %value_phi207.postloop, !dbg !136
  %151 = xor i32 %value_phi208.postloop, -1, !dbg !139
  %152 = and i32 %value_phi206.postloop, %151, !dbg !136
  %memoryref_offset217.postloop = shl i64 %value_phi203.postloop, 2, !dbg !130
  %153 = getelementptr i8, ptr %memoryref_data215.postloop.pre, i64 %memoryref_offset217.postloop, !dbg !130
  %memoryref_data223.postloop = getelementptr i8, ptr %153, i64 -4, !dbg !130
  %154 = load i32, ptr %memoryref_data223.postloop, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop, !dbg !130
  %155 = load i32, ptr %gep350.postloop, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %156 = add i32 %152, %value_phi205.postloop, !dbg !141
  %157 = add i32 %156, %150, !dbg !143
  %158 = add i32 %157, %149, !dbg !141
  %159 = add i32 %158, %154, !dbg !144
  %160 = add i32 %159, %155, !dbg !146
  %161 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 30), !dbg !148
  %162 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 19), !dbg !148
  %163 = xor i32 %161, %162, !dbg !151
  %164 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 10), !dbg !148
  %165 = xor i32 %163, %164, !dbg !151
  %166 = xor i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !152
  %167 = and i32 %value_phi212.postloop, %166, !dbg !152
  %168 = and i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !154
  %169 = xor i32 %167, %168, !dbg !152
  %170 = add i32 %165, %169, !dbg !155
  %171 = add i32 %160, %value_phi209.postloop, !dbg !157
  %172 = add i32 %170, %160, !dbg !159
  %.not298.not.postloop = icmp eq i64 %value_phi203.postloop, 64, !dbg !192
  %173 = add i64 %value_phi203.postloop, 1, !dbg !161
  br i1 %.not298.not.postloop, label %L476, label %L381.postloop, !dbg !131, !llvm.loop !193, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L53.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L53
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L73.postloop
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L73
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %L94.postloop
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L94
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %L116.postloop
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %L116
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %L138.postloop
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L175.postloop
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L237.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk13:                                     ; preds = %L343.postloop
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %main.pseudo.exit407
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %main.pseudo.exit407.split
  call void @odessy.chk(i32 15)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_sha256_sum_148(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4297588508 to ptr)(i64 4297588544) #9
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10, !alias.scope !194, !noalias !195, !nonnull !10, !dereferenceable !196, !align !197
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !26, !invariant.load !10, !alias.scope !194, !noalias !195, !nonnull !10, !dereferenceable !197, !align !197
  %.unbox = load i64, ptr %3, align 8, !tbaa !198, !alias.scope !91, !noalias !92
  %4 = call swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_UInt32 = call nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext %4) #10
  ret ptr %box_UInt32
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind "julia.fsig"="sha256_sum(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "sha256_sum", linkageName: "julia_sha256_sum_147", scope: null, file: !5, line: 17, type: !6, scopeLine: 17, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/sha256.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !16}
!8 = !DIBasicType(name: "UInt32", size: 32, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#sha256_sum", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4570674704")
!10 = !{}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !14, line: 71, align: 64, elements: !15)
!14 = !DIFile(filename: "julia.h", directory: "")
!15 = !{!12}
!16 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 17, type: !9)
!19 = !DILocalVariable(name: "data", arg: 2, scope: !4, file: !5, line: 17, type: !11)
!20 = !DILocalVariable(name: "iters", arg: 3, scope: !4, file: !5, line: 17, type: !16)
!21 = !{!22, !22, i64 0}
!22 = !{!"jtbaa_gcframe", !23, i64 0}
!23 = !{!"jtbaa", !24, i64 0}
!24 = !{!"jtbaa"}
!25 = !DILocation(line: 17, scope: !4)
!26 = !{!27, !27, i64 0}
!27 = !{!"jtbaa_const", !23, i64 0}
!28 = !DILocation(line: 588, scope: !29, inlinedAt: !32)
!29 = distinct !DISubprogram(name: "GenericMemory;", linkageName: "GenericMemory", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!30 = !DIFile(filename: "boot.jl", directory: ".")
!31 = !DISubroutineType(types: !10)
!32 = !DILocation(line: 647, scope: !33, inlinedAt: !34)
!33 = distinct !DISubprogram(name: "Array;", linkageName: "Array", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DILocation(line: 19, scope: !4)
!35 = !{!36, !36, i64 0}
!36 = !{!"jtbaa_tag", !37, i64 0}
!37 = !{!"jtbaa_data", !23, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"jtbaa_memoryptr", !40, i64 0}
!40 = !{!"jtbaa_array", !23, i64 0}
!41 = !{!42}
!42 = !{!"jnoalias_typemd", !43}
!43 = !{!"jnoalias"}
!44 = !{!45, !46, !47, !48}
!45 = !{!"jnoalias_gcframe", !43}
!46 = !{!"jnoalias_stack", !43}
!47 = !{!"jnoalias_data", !43}
!48 = !{!"jnoalias_const", !43}
!49 = !{!50, !50, i64 0}
!50 = !{!"jtbaa_memorylen", !40, i64 0}
!51 = !DILocation(line: 648, scope: !33, inlinedAt: !34)
!52 = !{!53, !53, i64 0}
!53 = !{!"jtbaa_arrayptr", !40, i64 0}
!54 = !{!23, !23, i64 0}
!55 = !{!47, !42}
!56 = !{!45, !46, !48}
!57 = !DILocation(line: 0, scope: !4)
!58 = !DILocation(line: 83, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!60 = !DIFile(filename: "int.jl", directory: ".")
!61 = !DILocation(line: 425, scope: !62, inlinedAt: !64)
!62 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!63 = !DIFile(filename: "operators.jl", directory: ".")
!64 = !DILocation(line: 688, scope: !65, inlinedAt: !67)
!65 = distinct !DISubprogram(name: "isempty;", linkageName: "isempty", scope: !66, file: !66, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "range.jl", directory: ".")
!67 = !DILocation(line: 917, scope: !68, inlinedAt: !69)
!68 = distinct !DISubprogram(name: "iterate;", linkageName: "iterate", scope: !66, file: !66, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!69 = !DILocation(line: 20, scope: !4)
!70 = !DILocation(line: 26, scope: !4)
!71 = !DILocation(line: 54, scope: !4)
!72 = !DILocation(line: 88, scope: !73, inlinedAt: !74)
!73 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!74 = !DILocation(line: 27, scope: !4)
!75 = !DILocation(line: 919, scope: !76, inlinedAt: !78)
!76 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !77, file: !77, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!77 = !DIFile(filename: "essentials.jl", directory: ".")
!78 = !DILocation(line: 30, scope: !4)
!79 = !DILocation(line: 88, scope: !73, inlinedAt: !80)
!80 = !DILocation(line: 29, scope: !4)
!81 = !DILocation(line: 87, scope: !82, inlinedAt: !80)
!82 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!83 = !DILocation(line: 920, scope: !76, inlinedAt: !78)
!84 = !DILocation(line: 991, scope: !85, inlinedAt: !87)
!85 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !86, file: !86, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!86 = !DIFile(filename: "array.jl", directory: ".")
!87 = !DILocation(line: 986, scope: !88, inlinedAt: !78)
!88 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !86, file: !86, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!89 = !{!90, !90, i64 0}
!90 = !{!"jtbaa_arraybuf", !37, i64 0}
!91 = !{!47}
!92 = !{!45, !46, !42, !48}
!93 = !DILocation(line: 921, scope: !68, inlinedAt: !94)
!94 = !DILocation(line: 32, scope: !4)
!95 = !DILocation(line: 919, scope: !76, inlinedAt: !96)
!96 = !DILocation(line: 34, scope: !4)
!97 = !DILocation(line: 920, scope: !76, inlinedAt: !96)
!98 = !DILocation(line: 378, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "|;", linkageName: "|", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!100 = !DILocation(line: 15, scope: !101, inlinedAt: !96)
!101 = distinct !DISubprogram(name: "rotr;", linkageName: "rotr", scope: !5, file: !5, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!102 = !DILocation(line: 379, scope: !103, inlinedAt: !96)
!103 = distinct !DISubprogram(name: "xor;", linkageName: "xor", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DILocation(line: 534, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: ">>;", linkageName: ">>", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!106 = !DILocation(line: 540, scope: !105, inlinedAt: !96)
!107 = !DILocation(line: 920, scope: !76, inlinedAt: !108)
!108 = !DILocation(line: 35, scope: !4)
!109 = !DILocation(line: 378, scope: !99, inlinedAt: !110)
!110 = !DILocation(line: 15, scope: !101, inlinedAt: !108)
!111 = !DILocation(line: 379, scope: !103, inlinedAt: !108)
!112 = !DILocation(line: 534, scope: !105, inlinedAt: !113)
!113 = !DILocation(line: 540, scope: !105, inlinedAt: !108)
!114 = !DILocation(line: 920, scope: !76, inlinedAt: !115)
!115 = !DILocation(line: 36, scope: !4)
!116 = !DILocation(line: 87, scope: !82, inlinedAt: !117)
!117 = !DILocation(line: 642, scope: !118, inlinedAt: !115)
!118 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!119 = !DILocation(line: 87, scope: !82, inlinedAt: !120)
!120 = !DILocation(line: 599, scope: !121, inlinedAt: !117)
!121 = distinct !DISubprogram(name: "afoldl;", linkageName: "afoldl", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!122 = !DILocation(line: 991, scope: !85, inlinedAt: !123)
!123 = !DILocation(line: 986, scope: !88, inlinedAt: !115)
!124 = !DILocation(line: 921, scope: !68, inlinedAt: !125)
!125 = !DILocation(line: 37, scope: !4)
!126 = !{!42, !46}
!127 = !{!45, !47, !48}
!128 = !DILocation(line: 919, scope: !76, inlinedAt: !129)
!129 = !DILocation(line: 42, scope: !4)
!130 = !DILocation(line: 920, scope: !76, inlinedAt: !129)
!131 = !DILocation(line: 48, scope: !4)
!132 = !DILocation(line: 378, scope: !99, inlinedAt: !133)
!133 = !DILocation(line: 15, scope: !101, inlinedAt: !134)
!134 = !DILocation(line: 40, scope: !4)
!135 = !DILocation(line: 379, scope: !103, inlinedAt: !134)
!136 = !DILocation(line: 353, scope: !137, inlinedAt: !138)
!137 = distinct !DISubprogram(name: "&;", linkageName: "&", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!138 = !DILocation(line: 41, scope: !4)
!139 = !DILocation(line: 327, scope: !140, inlinedAt: !138)
!140 = distinct !DISubprogram(name: "~;", linkageName: "~", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!141 = !DILocation(line: 87, scope: !82, inlinedAt: !142)
!142 = !DILocation(line: 642, scope: !118, inlinedAt: !129)
!143 = !DILocation(line: 379, scope: !103, inlinedAt: !138)
!144 = !DILocation(line: 87, scope: !82, inlinedAt: !145)
!145 = !DILocation(line: 599, scope: !121, inlinedAt: !142)
!146 = !DILocation(line: 87, scope: !82, inlinedAt: !147)
!147 = !DILocation(line: 600, scope: !121, inlinedAt: !142)
!148 = !DILocation(line: 378, scope: !99, inlinedAt: !149)
!149 = !DILocation(line: 15, scope: !101, inlinedAt: !150)
!150 = !DILocation(line: 43, scope: !4)
!151 = !DILocation(line: 379, scope: !103, inlinedAt: !150)
!152 = !DILocation(line: 379, scope: !103, inlinedAt: !153)
!153 = !DILocation(line: 44, scope: !4)
!154 = !DILocation(line: 353, scope: !137, inlinedAt: !153)
!155 = !DILocation(line: 87, scope: !82, inlinedAt: !156)
!156 = !DILocation(line: 45, scope: !4)
!157 = !DILocation(line: 87, scope: !82, inlinedAt: !158)
!158 = !DILocation(line: 46, scope: !4)
!159 = !DILocation(line: 87, scope: !82, inlinedAt: !160)
!160 = !DILocation(line: 47, scope: !4)
!161 = !DILocation(line: 921, scope: !68, inlinedAt: !131)
!162 = !DILocation(line: 87, scope: !82, inlinedAt: !163)
!163 = !DILocation(line: 49, scope: !4)
!164 = !DILocation(line: 87, scope: !82, inlinedAt: !165)
!165 = !DILocation(line: 50, scope: !4)
!166 = !DILocation(line: 637, scope: !167, inlinedAt: !169)
!167 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !168, file: !168, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!168 = !DIFile(filename: "promotion.jl", directory: ".")
!169 = !DILocation(line: 921, scope: !68, inlinedAt: !170)
!170 = !DILocation(line: 51, scope: !4)
!171 = !DILocation(line: 87, scope: !82, inlinedAt: !172)
!172 = !DILocation(line: 52, scope: !4)
!173 = !DILocation(line: 637, scope: !167, inlinedAt: !174)
!174 = !DILocation(line: 921, scope: !68, inlinedAt: !175)
!175 = !DILocation(line: 53, scope: !4)
!176 = !DILocation(line: 86, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!178 = !DILocation(line: 990, scope: !85, inlinedAt: !87)
!179 = !DILocation(line: 519, scope: !59, inlinedAt: !178)
!180 = !DILocation(line: 637, scope: !167, inlinedAt: !93)
!181 = distinct !{!181, !182, !183, !184, !185}
!182 = !{!"llvm.loop.unroll.disable"}
!183 = !{!"llvm.loop.vectorize.enable", i1 false}
!184 = !{!"llvm.loop.licm_versioning.disable"}
!185 = !{!"llvm.loop.distribute.enable", i1 false}
!186 = !DILocation(line: 919, scope: !76, inlinedAt: !108)
!187 = !DILocation(line: 86, scope: !177, inlinedAt: !188)
!188 = !DILocation(line: 990, scope: !85, inlinedAt: !123)
!189 = !DILocation(line: 519, scope: !59, inlinedAt: !188)
!190 = !DILocation(line: 637, scope: !167, inlinedAt: !124)
!191 = distinct !{!191, !182, !183, !184, !185}
!192 = !DILocation(line: 637, scope: !167, inlinedAt: !161)
!193 = distinct !{!193, !182, !183, !184, !185}
!194 = !{!48}
!195 = !{!45, !46, !47, !42}
!196 = !{i64 24}
!197 = !{i64 8}
!198 = !{!199, !199, i64 0}
!199 = !{!"jtbaa_immut", !200, i64 0}
!200 = !{!"jtbaa_value", !37, i64 0}
