; ModuleID = 'results/static/guard_ablation_0927/Julia_sha256/mv.ll'
source_filename = "sha256_sum"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 133223586669392 to ptr)

; Function Attrs: nounwind
define swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself captures(none) %pgcstack, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"data::Array", i64 signext %"iters::Int64") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  store i64 4, ptr %gcframe1, align 16, !tbaa !21
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  %task.gcstack = load ptr, ptr %pgcstack, align 8
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
  %"Memory{UInt32}[]" = call noalias nonnull align 8 dereferenceable(288) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 960, i32 288, i64 133223756025472) #8, !dbg !28
  %"Memory{UInt32}[].tag_addr" = getelementptr inbounds i8, ptr %"Memory{UInt32}[]", i64 -8, !dbg !28
  store atomic i64 133223756025472, ptr %"Memory{UInt32}[].tag_addr" unordered, align 8, !dbg !28, !tbaa !35
  %memory_ptr = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 8, !dbg !28
  %memory_data = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 16, !dbg !28
  store ptr %memory_data, ptr %memory_ptr, align 8, !dbg !28, !tbaa !38, !alias.scope !41, !noalias !44
  store i64 64, ptr %"Memory{UInt32}[]", align 8, !dbg !28, !tbaa !49, !alias.scope !41, !noalias !44
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  store ptr %"Memory{UInt32}[]", ptr %gc_slot_addr_0, align 16
  %"new::Array" = call noalias nonnull align 8 dereferenceable(32) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 408, i32 32, i64 133223756027920) #8, !dbg !51
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
  %value_phi12 = phi i64 [ %128, %L476 ], [ 1, %pass ]
  %value_phi14 = phi i32 [ %127, %L476 ], [ 1541459225, %pass ]
  %value_phi15 = phi i32 [ %126, %L476 ], [ 528734635, %pass ]
  %value_phi16 = phi i32 [ %125, %L476 ], [ -1694144372, %pass ]
  %value_phi17 = phi i32 [ %124, %L476 ], [ 1359893119, %pass ]
  %value_phi18 = phi i32 [ %123, %L476 ], [ -1521486534, %pass ]
  %value_phi19 = phi i32 [ %122, %L476 ], [ 1013904242, %pass ]
  %value_phi20 = phi i32 [ %121, %L476 ], [ -1150833019, %pass ]
  %value_phi21 = phi i32 [ %120, %L476 ], [ 1779033703, %pass ]
  %8 = shl i64 %value_phi12, 6, !dbg !72
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data69, i64 -4, !dbg !67
  %smin = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload", i64 0), !dbg !67
  %9 = sub i64 %"new::Array.size.0.copyload", %smin, !dbg !67
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 -1), !dbg !67
  %10 = add nsw i64 %smax, 1, !dbg !67
  %11 = mul nuw nsw i64 %10, %9, !dbg !67
  %.not485 = icmp eq i64 %11, 0, !dbg !67
  br i1 %.not485, label %main.pseudo.exit, label %L53.preheader, !dbg !67

L53.preheader:                                    ; preds = %L41
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %11, i64 16), !dbg !67
  %12 = add nuw nsw i64 %exit.mainloop.at, 1, !dbg !75
  br label %L53, !dbg !75

L53:                                              ; preds = %L53.preheader, %L73
  %value_phi22 = phi i64 [ %19, %L73 ], [ 1, %L53.preheader ]
  %13 = shl i64 %value_phi22, 2, !dbg !79
  %14 = add nuw i64 %13, %8, !dbg !81
  %15 = add i64 %14, -68, !dbg !75
  %.not = icmp ult i64 %15, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not, label %L73, label %odessy.chk1, !dbg !75

L73:                                              ; preds = %L53
  %16 = getelementptr i8, ptr %memoryref_data, i64 %14, !dbg !83
  %memoryref_data27 = getelementptr i8, ptr %16, i64 -68, !dbg !83
  %17 = load i32, ptr %memoryref_data27, align 1, !dbg !83
  %18 = call i32 @llvm.bswap.i32(i32 %17), !dbg !83
  %gep = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !84
  store i32 %18, ptr %gep, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %19 = add nuw nsw i64 %value_phi22, 1, !dbg !93
  %exitcond.not = icmp eq i64 %value_phi22, %exit.mainloop.at, !dbg !94
  br i1 %exitcond.not, label %main.exit.selector, label %L53, !dbg !94

main.exit.selector:                               ; preds = %L73
  %20 = icmp samesign ult i64 %value_phi22, 16, !dbg !94
  br i1 %20, label %main.pseudo.exit, label %L175.preheader, !dbg !94

main.pseudo.exit:                                 ; preds = %main.exit.selector, %L41
  %value_phi22.copy = phi i64 [ 1, %L41 ], [ %12, %main.exit.selector ]
  %mv.h = icmp ugt i64 %"new::Array.size.0.copyload", 15
  br i1 %mv.h, label %L53.postloop.mv.fast, label %L53.postloop

L53.postloop.mv.fast:                             ; preds = %main.pseudo.exit, %L73.postloop.mv.fast
  %value_phi22.postloop.mv.fast = phi i64 [ %27, %L73.postloop.mv.fast ], [ %value_phi22.copy, %main.pseudo.exit ]
  %21 = shl i64 %value_phi22.postloop.mv.fast, 2, !dbg !79
  %22 = add i64 %21, %8, !dbg !81
  %23 = add i64 %22, -68, !dbg !75
  %.not.postloop.mv.fast = icmp ult i64 %23, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop.mv.fast, label %L73.postloop.mv.fast, label %odessy.chk, !dbg !75

L73.postloop.mv.fast:                             ; preds = %L53.postloop.mv.fast
  %24 = getelementptr i8, ptr %memoryref_data, i64 %22, !dbg !83
  %memoryref_data27.postloop.mv.fast = getelementptr i8, ptr %24, i64 -68, !dbg !83
  %25 = load i32, ptr %memoryref_data27.postloop.mv.fast, align 1, !dbg !83
  %26 = call i32 @llvm.bswap.i32(i32 %25), !dbg !83
  %gep.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %21, !dbg !84
  store i32 %26, ptr %gep.postloop.mv.fast, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop.mv.fast = icmp eq i64 %value_phi22.postloop.mv.fast, 16, !dbg !95
  %27 = add i64 %value_phi22.postloop.mv.fast, 1, !dbg !93
  br i1 %.not285.not.postloop.mv.fast, label %L175.preheader, label %L53.postloop.mv.fast, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L175.preheader:                                   ; preds = %L158.postloop, %L73.postloop.mv.fast, %main.exit.selector
  %memoryref_data87 = load ptr, ptr %"new::Array", align 8
  br i1 %143, label %L364, label %L175.postloop.preheader, !dbg !103

L175.postloop.preheader:                          ; preds = %main.exit.selector374, %L175.preheader
  %value_phi81.postloop.ph = phi i64 [ %144, %main.exit.selector374 ], [ 17, %L175.preheader ]
  br label %L175.postloop, !dbg !103

L364:                                             ; preds = %L175.preheader, %L364
  %value_phi81 = phi i64 [ %46, %L364 ], [ 17, %L175.preheader ]
  %memoryref_offset89 = shl i64 %value_phi81, 2, !dbg !105
  %28 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89, !dbg !105
  %memoryref_data95 = getelementptr i8, ptr %28, i64 -64, !dbg !105
  %29 = load i32, ptr %memoryref_data95, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %30 = call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 25), !dbg !106
  %31 = call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 14), !dbg !106
  %32 = xor i32 %31, %30, !dbg !110
  %33 = lshr i32 %29, 3, !dbg !112
  %34 = xor i32 %32, %33, !dbg !110
  %memoryref_data134 = getelementptr i8, ptr %28, i64 -12, !dbg !115
  %35 = load i32, ptr %memoryref_data134, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %36 = call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 15), !dbg !117
  %37 = call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13), !dbg !117
  %38 = xor i32 %37, %36, !dbg !119
  %39 = lshr i32 %35, 10, !dbg !120
  %40 = xor i32 %38, %39, !dbg !119
  %memoryref_data173 = getelementptr i8, ptr %28, i64 -68, !dbg !122
  %41 = load i32, ptr %memoryref_data173, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186 = getelementptr i8, ptr %28, i64 -32, !dbg !122
  %42 = load i32, ptr %memoryref_data186, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %43 = add i32 %34, %41, !dbg !124
  %44 = add i32 %43, %42, !dbg !124
  %45 = add i32 %44, %40, !dbg !127
  %memoryref_data199 = getelementptr i8, ptr %28, i64 -4, !dbg !130
  store i32 %45, ptr %memoryref_data199, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %46 = add nuw nsw i64 %value_phi81, 1, !dbg !132
  %exitcond152.not = icmp eq i64 %value_phi81, %umin166, !dbg !133
  br i1 %exitcond152.not, label %main.exit.selector374, label %L364, !dbg !133

main.exit.selector374:                            ; preds = %L364
  %47 = icmp samesign ult i64 %value_phi81, 64, !dbg !133
  br i1 %47, label %L175.postloop.preheader, label %L381.preheader, !dbg !133

L381.preheader:                                   ; preds = %L364.postloop, %main.exit.selector374
  %.size.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 32, !tbaa !54, !alias.scope !134, !noalias !135
  %"new::Array.size225.0.copyload" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349 = getelementptr i8, ptr %memoryref_data87, i64 -4, !dbg !136
  %smin398 = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload", i64 0), !dbg !136
  %48 = sub i64 %"new::Array.size225.0.copyload", %smin398, !dbg !136
  %smax399 = call i64 @llvm.smax.i64(i64 %smin398, i64 -1), !dbg !136
  %49 = add nsw i64 %smax399, 1, !dbg !136
  %50 = mul nuw nsw i64 %49, %48, !dbg !136
  %smin400 = call i64 @llvm.smin.i64(i64 %.size.0.copyload, i64 0), !dbg !136
  %51 = sub i64 %.size.0.copyload, %smin400, !dbg !136
  %smax401 = call i64 @llvm.smax.i64(i64 %smin400, i64 -1), !dbg !136
  %52 = add nsw i64 %smax401, 1, !dbg !136
  %53 = mul nuw nsw i64 %52, %51, !dbg !136
  %umin402 = call i64 @llvm.umin.i64(i64 %50, i64 %53), !dbg !136
  %exit.mainloop.at404 = call i64 @llvm.umin.i64(i64 %umin402, i64 64), !dbg !136
  %.not488 = icmp eq i64 %umin402, 0, !dbg !136
  br i1 %.not488, label %main.pseudo.exit407, label %L438.preheader, !dbg !136

L438.preheader:                                   ; preds = %L381.preheader
  %memoryref_data215.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  %54 = add nuw nsw i64 %exit.mainloop.at404, 1, !dbg !139
  br label %L438, !dbg !139

L438:                                             ; preds = %L438, %L438.preheader
  %value_phi203 = phi i64 [ %83, %L438 ], [ 1, %L438.preheader ]
  %value_phi205 = phi i32 [ %value_phi206, %L438 ], [ %value_phi14, %L438.preheader ]
  %value_phi206 = phi i32 [ %value_phi207, %L438 ], [ %value_phi15, %L438.preheader ]
  %value_phi207 = phi i32 [ %value_phi208, %L438 ], [ %value_phi16, %L438.preheader ]
  %value_phi208 = phi i32 [ %81, %L438 ], [ %value_phi17, %L438.preheader ]
  %value_phi209 = phi i32 [ %value_phi210, %L438 ], [ %value_phi18, %L438.preheader ]
  %value_phi210 = phi i32 [ %value_phi211, %L438 ], [ %value_phi19, %L438.preheader ]
  %value_phi211 = phi i32 [ %value_phi212, %L438 ], [ %value_phi20, %L438.preheader ]
  %value_phi212 = phi i32 [ %82, %L438 ], [ %value_phi21, %L438.preheader ]
  %55 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 26), !dbg !140
  %56 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 21), !dbg !140
  %57 = xor i32 %55, %56, !dbg !143
  %58 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 7), !dbg !140
  %59 = xor i32 %57, %58, !dbg !143
  %60 = and i32 %value_phi208, %value_phi207, !dbg !144
  %61 = xor i32 %value_phi208, -1, !dbg !147
  %62 = and i32 %value_phi206, %61, !dbg !144
  %memoryref_offset217 = shl nuw nsw i64 %value_phi203, 2, !dbg !138
  %63 = getelementptr i8, ptr %memoryref_data215.pre, i64 %memoryref_offset217, !dbg !138
  %memoryref_data223 = getelementptr i8, ptr %63, i64 -4, !dbg !138
  %64 = load i32, ptr %memoryref_data223, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350 = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217, !dbg !138
  %65 = load i32, ptr %gep350, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %66 = add i32 %62, %value_phi205, !dbg !149
  %67 = add i32 %66, %60, !dbg !151
  %68 = add i32 %67, %59, !dbg !149
  %69 = add i32 %68, %64, !dbg !152
  %70 = add i32 %69, %65, !dbg !154
  %71 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 30), !dbg !156
  %72 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 19), !dbg !156
  %73 = xor i32 %71, %72, !dbg !159
  %74 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 10), !dbg !156
  %75 = xor i32 %73, %74, !dbg !159
  %76 = xor i32 %value_phi211, %value_phi210, !dbg !160
  %77 = and i32 %value_phi212, %76, !dbg !160
  %78 = and i32 %value_phi211, %value_phi210, !dbg !162
  %79 = xor i32 %77, %78, !dbg !160
  %80 = add i32 %75, %79, !dbg !163
  %81 = add i32 %70, %value_phi209, !dbg !165
  %82 = add i32 %80, %70, !dbg !167
  %83 = add nuw nsw i64 %value_phi203, 1, !dbg !169
  %exitcond154.not = icmp eq i64 %value_phi203, %exit.mainloop.at404, !dbg !139
  br i1 %exitcond154.not, label %main.exit.selector406, label %L438, !dbg !139

main.exit.selector406:                            ; preds = %L438
  %84 = icmp ult i64 %umin402, 64, !dbg !139
  br i1 %84, label %main.pseudo.exit407, label %L476, !dbg !139

main.pseudo.exit407:                              ; preds = %main.exit.selector406, %L381.preheader
  %value_phi203.copy = phi i64 [ 1, %L381.preheader ], [ %54, %main.exit.selector406 ]
  %value_phi205.copy = phi i32 [ %value_phi14, %L381.preheader ], [ %value_phi206, %main.exit.selector406 ]
  %value_phi206.copy = phi i32 [ %value_phi15, %L381.preheader ], [ %value_phi207, %main.exit.selector406 ]
  %value_phi207.copy = phi i32 [ %value_phi16, %L381.preheader ], [ %value_phi208, %main.exit.selector406 ]
  %value_phi208.copy = phi i32 [ %value_phi17, %L381.preheader ], [ %81, %main.exit.selector406 ]
  %value_phi209.copy = phi i32 [ %value_phi18, %L381.preheader ], [ %value_phi210, %main.exit.selector406 ]
  %value_phi210.copy = phi i32 [ %value_phi19, %L381.preheader ], [ %value_phi211, %main.exit.selector406 ]
  %value_phi211.copy = phi i32 [ %value_phi20, %L381.preheader ], [ %value_phi212, %main.exit.selector406 ]
  %value_phi212.copy = phi i32 [ %value_phi21, %L381.preheader ], [ %82, %main.exit.selector406 ]
  %mv.h14 = icmp ugt i64 %.size.0.copyload, 63
  %mv.h15 = icmp ugt i64 %"new::Array.size225.0.copyload", 63
  %mv.h16 = and i1 %mv.h14, %mv.h15
  br i1 %mv.h16, label %L381.postloop.mv.fast.preheader, label %L381.postloop.preheader

L381.postloop.preheader:                          ; preds = %main.pseudo.exit407
  %85 = add nsw i64 %value_phi203.copy, -1, !dbg !136
  %umax155 = call i64 @llvm.umax.i64(i64 %.size.0.copyload, i64 %85), !dbg !136
  %86 = add i64 %umax155, 1, !dbg !136
  %87 = sub i64 %86, %value_phi203.copy, !dbg !136
  %umax156 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload", i64 %85), !dbg !136
  %88 = add i64 %umax156, 1, !dbg !136
  %89 = sub i64 %88, %value_phi203.copy, !dbg !136
  %umin157 = call i64 @llvm.umin.i64(i64 %89, i64 %87), !dbg !136
  %90 = sub nsw i64 64, %value_phi203.copy, !dbg !136
  %umin158 = call i64 @llvm.umin.i64(i64 %umin157, i64 %90), !dbg !136
  %.not181 = icmp eq i64 %87, %umin158, !dbg !136
  br i1 %.not181, label %odessy.chk14, label %L381.postloop.preheader.split, !dbg !136

L381.postloop.preheader.split:                    ; preds = %L381.postloop.preheader
  %.not182 = icmp eq i64 %89, %umin158, !dbg !136
  br i1 %.not182, label %odessy.chk15, label %L381.postloop.preheader.split.split, !dbg !136

L381.postloop.preheader.split.split:              ; preds = %L381.postloop.preheader.split
  %memoryref_data215.postloop.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop, !dbg !136

L381.postloop.mv.fast.preheader:                  ; preds = %main.pseudo.exit407
  %memoryref_data215.postloop.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast, !dbg !139

L381.postloop.mv.fast:                            ; preds = %L381.postloop.mv.fast.preheader, %L381.postloop.mv.fast
  %value_phi203.postloop.mv.fast = phi i64 [ %119, %L381.postloop.mv.fast ], [ %value_phi203.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi205.postloop.mv.fast = phi i32 [ %value_phi206.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi205.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi206.postloop.mv.fast = phi i32 [ %value_phi207.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi206.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi207.postloop.mv.fast = phi i32 [ %value_phi208.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi207.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi208.postloop.mv.fast = phi i32 [ %117, %L381.postloop.mv.fast ], [ %value_phi208.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi209.postloop.mv.fast = phi i32 [ %value_phi210.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi209.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi210.postloop.mv.fast = phi i32 [ %value_phi211.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi210.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi211.postloop.mv.fast = phi i32 [ %value_phi212.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi211.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi212.postloop.mv.fast = phi i32 [ %118, %L381.postloop.mv.fast ], [ %value_phi212.copy, %L381.postloop.mv.fast.preheader ]
  %91 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 26), !dbg !140
  %92 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 21), !dbg !140
  %93 = xor i32 %91, %92, !dbg !143
  %94 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 7), !dbg !140
  %95 = xor i32 %93, %94, !dbg !143
  %96 = and i32 %value_phi208.postloop.mv.fast, %value_phi207.postloop.mv.fast, !dbg !144
  %97 = xor i32 %value_phi208.postloop.mv.fast, -1, !dbg !147
  %98 = and i32 %value_phi206.postloop.mv.fast, %97, !dbg !144
  %memoryref_offset217.postloop.mv.fast = shl i64 %value_phi203.postloop.mv.fast, 2, !dbg !138
  %99 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast, i64 %memoryref_offset217.postloop.mv.fast, !dbg !138
  %memoryref_data223.postloop.mv.fast = getelementptr i8, ptr %99, i64 -4, !dbg !138
  %100 = load i32, ptr %memoryref_data223.postloop.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop.mv.fast = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop.mv.fast, !dbg !138
  %101 = load i32, ptr %gep350.postloop.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %102 = add i32 %98, %value_phi205.postloop.mv.fast, !dbg !149
  %103 = add i32 %102, %96, !dbg !151
  %104 = add i32 %103, %95, !dbg !149
  %105 = add i32 %104, %100, !dbg !152
  %106 = add i32 %105, %101, !dbg !154
  %107 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 30), !dbg !156
  %108 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 19), !dbg !156
  %109 = xor i32 %107, %108, !dbg !159
  %110 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 10), !dbg !156
  %111 = xor i32 %109, %110, !dbg !159
  %112 = xor i32 %value_phi211.postloop.mv.fast, %value_phi210.postloop.mv.fast, !dbg !160
  %113 = and i32 %value_phi212.postloop.mv.fast, %112, !dbg !160
  %114 = and i32 %value_phi211.postloop.mv.fast, %value_phi210.postloop.mv.fast, !dbg !162
  %115 = xor i32 %113, %114, !dbg !160
  %116 = add i32 %111, %115, !dbg !163
  %117 = add i32 %106, %value_phi209.postloop.mv.fast, !dbg !165
  %118 = add i32 %116, %106, !dbg !167
  %.not298.not.postloop.mv.fast = icmp eq i64 %value_phi203.postloop.mv.fast, 64, !dbg !170
  %119 = add i64 %value_phi203.postloop.mv.fast, 1, !dbg !169
  br i1 %.not298.not.postloop.mv.fast, label %L476, label %L381.postloop.mv.fast, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

L476:                                             ; preds = %L381.postloop, %L381.postloop.mv.fast, %main.exit.selector406
  %.lcssa345 = phi i32 [ %81, %main.exit.selector406 ], [ %117, %L381.postloop.mv.fast ], [ %378, %L381.postloop ], !dbg !165
  %.lcssa344 = phi i32 [ %82, %main.exit.selector406 ], [ %118, %L381.postloop.mv.fast ], [ %379, %L381.postloop ], !dbg !167
  %value_phi206.lcssa341 = phi i32 [ %value_phi206, %main.exit.selector406 ], [ %value_phi206.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi206.postloop, %L381.postloop ]
  %value_phi207.lcssa339 = phi i32 [ %value_phi207, %main.exit.selector406 ], [ %value_phi207.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi207.postloop, %L381.postloop ]
  %value_phi208.lcssa337 = phi i32 [ %value_phi208, %main.exit.selector406 ], [ %value_phi208.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi208.postloop, %L381.postloop ]
  %value_phi210.lcssa335 = phi i32 [ %value_phi210, %main.exit.selector406 ], [ %value_phi210.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi210.postloop, %L381.postloop ]
  %value_phi211.lcssa333 = phi i32 [ %value_phi211, %main.exit.selector406 ], [ %value_phi211.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi211.postloop, %L381.postloop ]
  %value_phi212.lcssa331 = phi i32 [ %value_phi212, %main.exit.selector406 ], [ %value_phi212.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi212.postloop, %L381.postloop ]
  %120 = add i32 %.lcssa344, %value_phi21, !dbg !172
  %121 = add i32 %value_phi212.lcssa331, %value_phi20, !dbg !172
  %122 = add i32 %value_phi211.lcssa333, %value_phi19, !dbg !172
  %123 = add i32 %value_phi210.lcssa335, %value_phi18, !dbg !172
  %124 = add i32 %.lcssa345, %value_phi17, !dbg !174
  %125 = add i32 %value_phi208.lcssa337, %value_phi16, !dbg !174
  %126 = add i32 %value_phi207.lcssa339, %value_phi15, !dbg !174
  %127 = add i32 %value_phi206.lcssa341, %value_phi14, !dbg !174
  %.not299.not = icmp eq i64 %value_phi12, %value_phi8, !dbg !176
  %128 = add nuw nsw i64 %value_phi12, 1, !dbg !177
  br i1 %.not299.not, label %L495.loopexit, label %L41, !dbg !178

L495.loopexit:                                    ; preds = %L476, %L476.mv.fast
  %"new::Array.size225.0.copyload.lcssa31" = phi i64 [ %"new::Array.size225.0.copyload.mv.fast", %L476.mv.fast ], [ %"new::Array.size225.0.copyload", %L476 ]
  %memoryref_data228.lcssa29 = phi ptr [ %memoryref_data87.mv.fast, %L476.mv.fast ], [ %memoryref_data87, %L476 ]
  %.lcssa27 = phi i32 [ %277, %L476.mv.fast ], [ %120, %L476 ], !dbg !172
  %.lcssa26 = phi i32 [ %284, %L476.mv.fast ], [ %127, %L476 ], !dbg !174
  %129 = add i32 %.lcssa27, %value_phi7, !dbg !179
  %130 = add i32 %129, %.lcssa26, !dbg !179
  %.not300.not = icmp eq i64 %value_phi6, %".iters::Int64", !dbg !181
  %131 = add nuw i64 %value_phi6, 1, !dbg !182
  br i1 %.not300.not, label %L509, label %pass, !dbg !183

L509:                                             ; preds = %L495.loopexit, %pass.preheader.split.us, %top
  %value_phi247 = phi i32 [ 0, %top ], [ %7, %pass.preheader.split.us ], [ %130, %L495.loopexit ]
  %frame.prev689 = load ptr, ptr %frame.prev, align 8, !tbaa !21
  store ptr %frame.prev689, ptr %pgcstack, align 8, !tbaa !21
  ret i32 %value_phi247, !dbg !71

pass:                                             ; preds = %pass.preheader, %L495.loopexit
  %memoryref_data69421 = phi ptr [ %memoryref_data228.lcssa29, %L495.loopexit ], [ %memory_data, %pass.preheader ]
  %"new::Array.size84.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload.lcssa31", %L495.loopexit ], [ 64, %pass.preheader ]
  %value_phi6 = phi i64 [ %131, %L495.loopexit ], [ 1, %pass.preheader ]
  %value_phi7 = phi i32 [ %130, %L495.loopexit ], [ 0, %pass.preheader ]
  %smin362 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -2), !dbg !67
  %132 = sub i64 %"new::Array.size84.0.copyload", %smin362, !dbg !67
  %smin363 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 0), !dbg !67
  %smax364 = call i64 @llvm.smax.i64(i64 %smin363, i64 -1), !dbg !67
  %133 = add nsw i64 %smax364, 1, !dbg !67
  %134 = mul nuw nsw i64 %133, %132, !dbg !67
  %smin365 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -7), !dbg !67
  %135 = sub i64 %"new::Array.size84.0.copyload", %smin365, !dbg !67
  %136 = mul nuw nsw i64 %133, %135, !dbg !67
  %umin = call i64 @llvm.umin.i64(i64 %134, i64 %136), !dbg !67
  %smin366 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -15), !dbg !67
  %137 = sub i64 %"new::Array.size84.0.copyload", %smin366, !dbg !67
  %138 = mul nuw nsw i64 %133, %137, !dbg !67
  %umin367 = call i64 @llvm.umin.i64(i64 %umin, i64 %138), !dbg !67
  %smin368 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -16), !dbg !67
  %139 = sub i64 %"new::Array.size84.0.copyload", %smin368, !dbg !67
  %140 = mul nuw nsw i64 %133, %139, !dbg !67
  %umin369 = call i64 @llvm.umin.i64(i64 %umin367, i64 %140), !dbg !67
  %141 = sub i64 %"new::Array.size84.0.copyload", %smin363, !dbg !67
  %142 = mul nuw nsw i64 %133, %141, !dbg !67
  %umin370 = call i64 @llvm.umin.i64(i64 %umin369, i64 %142), !dbg !67
  %mv.h33 = icmp slt i64 %"new::Array.size84.0.copyload", 4611686018427387905, !dbg !67
  %mv.h37 = icmp ugt i64 %"new::Array.size84.0.copyload", 63, !dbg !67
  %mv.h38 = and i1 %mv.h37, %mv.h33, !dbg !67
  %143 = icmp ugt i64 %umin370, 16
  %umax165 = call i64 @llvm.umax.i64(i64 %umin370, i64 16), !dbg !67
  %umin166 = call i64 @llvm.umin.i64(i64 %umax165, i64 64), !dbg !67
  %144 = add nuw nsw i64 %umin166, 1, !dbg !67
  br i1 %mv.h38, label %L41.mv.fast, label %L41

L41.mv.fast:                                      ; preds = %pass, %L476.mv.fast
  %memoryref_data69.mv.fast = phi ptr [ %memoryref_data87.mv.fast, %L476.mv.fast ], [ %memoryref_data69421, %pass ]
  %"new::Array.size.0.copyload.mv.fast" = phi i64 [ %"new::Array.size225.0.copyload.mv.fast", %L476.mv.fast ], [ %"new::Array.size84.0.copyload", %pass ]
  %value_phi12.mv.fast = phi i64 [ %285, %L476.mv.fast ], [ 1, %pass ]
  %value_phi14.mv.fast = phi i32 [ %284, %L476.mv.fast ], [ 1541459225, %pass ]
  %value_phi15.mv.fast = phi i32 [ %283, %L476.mv.fast ], [ 528734635, %pass ]
  %value_phi16.mv.fast = phi i32 [ %282, %L476.mv.fast ], [ -1694144372, %pass ]
  %value_phi17.mv.fast = phi i32 [ %281, %L476.mv.fast ], [ 1359893119, %pass ]
  %value_phi18.mv.fast = phi i32 [ %280, %L476.mv.fast ], [ -1521486534, %pass ]
  %value_phi19.mv.fast = phi i32 [ %279, %L476.mv.fast ], [ 1013904242, %pass ]
  %value_phi20.mv.fast = phi i32 [ %278, %L476.mv.fast ], [ -1150833019, %pass ]
  %value_phi21.mv.fast = phi i32 [ %277, %L476.mv.fast ], [ 1779033703, %pass ]
  %145 = shl i64 %value_phi12.mv.fast, 6, !dbg !72
  %memoryref_data.mv.fast = load ptr, ptr %"data::Array", align 8
  %invariant.gep.mv.fast = getelementptr i8, ptr %memoryref_data69.mv.fast, i64 -4, !dbg !67
  %smin.mv.fast = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload.mv.fast", i64 0), !dbg !67
  %146 = sub i64 %"new::Array.size.0.copyload.mv.fast", %smin.mv.fast, !dbg !67
  %smax.mv.fast = call i64 @llvm.smax.i64(i64 %smin.mv.fast, i64 -1), !dbg !67
  %147 = add nsw i64 %smax.mv.fast, 1, !dbg !67
  %148 = mul nuw nsw i64 %147, %146, !dbg !67
  %.not485.mv.fast = icmp eq i64 %148, 0, !dbg !67
  br i1 %.not485.mv.fast, label %main.pseudo.exit.mv.fast, label %L53.mv.fast.preheader, !dbg !67

L53.mv.fast.preheader:                            ; preds = %L41.mv.fast
  %exit.mainloop.at.mv.fast = call i64 @llvm.umin.i64(i64 %148, i64 16), !dbg !67
  %149 = add nuw nsw i64 %exit.mainloop.at.mv.fast, 1, !dbg !75
  br label %L53.mv.fast, !dbg !75

L53.mv.fast:                                      ; preds = %L53.mv.fast.preheader, %L73.mv.fast
  %value_phi22.mv.fast = phi i64 [ %156, %L73.mv.fast ], [ 1, %L53.mv.fast.preheader ]
  %150 = shl i64 %value_phi22.mv.fast, 2, !dbg !79
  %151 = add nuw i64 %150, %145, !dbg !81
  %152 = add i64 %151, -68, !dbg !75
  %.not.mv.fast = icmp ult i64 %152, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.mv.fast, label %L73.mv.fast, label %odessy.chk1, !dbg !75

L73.mv.fast:                                      ; preds = %L53.mv.fast
  %153 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %151, !dbg !83
  %memoryref_data27.mv.fast = getelementptr i8, ptr %153, i64 -68, !dbg !83
  %154 = load i32, ptr %memoryref_data27.mv.fast, align 1, !dbg !83
  %155 = call i32 @llvm.bswap.i32(i32 %154), !dbg !83
  %gep.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %150, !dbg !84
  store i32 %155, ptr %gep.mv.fast, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %156 = add nuw nsw i64 %value_phi22.mv.fast, 1, !dbg !93
  %exitcond160.not = icmp eq i64 %value_phi22.mv.fast, %exit.mainloop.at.mv.fast, !dbg !94
  br i1 %exitcond160.not, label %main.exit.selector.mv.fast, label %L53.mv.fast, !dbg !94

main.exit.selector.mv.fast:                       ; preds = %L73.mv.fast
  %157 = icmp samesign ult i64 %value_phi22.mv.fast, 16, !dbg !94
  br i1 %157, label %main.pseudo.exit.mv.fast, label %L175.preheader.mv.fast, !dbg !94

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %L41.mv.fast
  %value_phi22.copy.mv.fast = phi i64 [ 1, %L41.mv.fast ], [ %149, %main.exit.selector.mv.fast ]
  %mv.h.mv.fast = icmp ugt i64 %"new::Array.size.0.copyload.mv.fast", 15
  br i1 %mv.h.mv.fast, label %L53.postloop.mv.fast.mv.fast, label %L53.postloop.mv.fast39

L53.postloop.mv.fast39:                           ; preds = %main.pseudo.exit.mv.fast, %L158.postloop.mv.fast50
  %value_phi22.postloop.mv.fast40 = phi i64 [ %165, %L158.postloop.mv.fast50 ], [ %value_phi22.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %158 = shl i64 %value_phi22.postloop.mv.fast40, 2, !dbg !79
  %159 = add i64 %158, %145, !dbg !81
  %160 = add i64 %159, -68, !dbg !75
  %.not.postloop.mv.fast41 = icmp ult i64 %160, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop.mv.fast41, label %L73.postloop.mv.fast42, label %odessy.chk, !dbg !75

L73.postloop.mv.fast42:                           ; preds = %L53.postloop.mv.fast39
  %161 = add i64 %value_phi22.postloop.mv.fast40, -1, !dbg !184
  %.not284.postloop.mv.fast49 = icmp ult i64 %161, %"new::Array.size.0.copyload.mv.fast", !dbg !187
  br i1 %.not284.postloop.mv.fast49, label %L158.postloop.mv.fast50, label %odessy.chk8, !dbg !186

L158.postloop.mv.fast50:                          ; preds = %L73.postloop.mv.fast42
  %162 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %159, !dbg !83
  %memoryref_data27.postloop.mv.fast51 = getelementptr i8, ptr %162, i64 -68, !dbg !83
  %163 = load i32, ptr %memoryref_data27.postloop.mv.fast51, align 1, !dbg !83
  %164 = call i32 @llvm.bswap.i32(i32 %163), !dbg !83
  %gep.postloop.mv.fast55 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %158, !dbg !84
  store i32 %164, ptr %gep.postloop.mv.fast55, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop.mv.fast56 = icmp eq i64 %value_phi22.postloop.mv.fast40, 16, !dbg !95
  %165 = add i64 %value_phi22.postloop.mv.fast40, 1, !dbg !93
  br i1 %.not285.not.postloop.mv.fast56, label %L175.preheader.mv.fast, label %L53.postloop.mv.fast39, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L175.preheader.mv.fast:                           ; preds = %L158.postloop.mv.fast50, %L73.postloop.mv.fast.mv.fast, %main.exit.selector.mv.fast
  %memoryref_data87.mv.fast = load ptr, ptr %"new::Array", align 8
  br i1 %143, label %L364.mv.fast, label %L175.postloop.mv.fast.preheader, !dbg !103

L364.mv.fast:                                     ; preds = %L175.preheader.mv.fast, %L364.mv.fast
  %value_phi81.mv.fast = phi i64 [ %184, %L364.mv.fast ], [ 17, %L175.preheader.mv.fast ]
  %memoryref_offset89.mv.fast = shl i64 %value_phi81.mv.fast, 2, !dbg !105
  %166 = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 %memoryref_offset89.mv.fast, !dbg !105
  %memoryref_data95.mv.fast = getelementptr i8, ptr %166, i64 -64, !dbg !105
  %167 = load i32, ptr %memoryref_data95.mv.fast, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %168 = call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 25), !dbg !106
  %169 = call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 14), !dbg !106
  %170 = xor i32 %169, %168, !dbg !110
  %171 = lshr i32 %167, 3, !dbg !112
  %172 = xor i32 %170, %171, !dbg !110
  %memoryref_data134.mv.fast = getelementptr i8, ptr %166, i64 -12, !dbg !115
  %173 = load i32, ptr %memoryref_data134.mv.fast, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %174 = call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 15), !dbg !117
  %175 = call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 13), !dbg !117
  %176 = xor i32 %175, %174, !dbg !119
  %177 = lshr i32 %173, 10, !dbg !120
  %178 = xor i32 %176, %177, !dbg !119
  %memoryref_data173.mv.fast = getelementptr i8, ptr %166, i64 -68, !dbg !122
  %179 = load i32, ptr %memoryref_data173.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.mv.fast = getelementptr i8, ptr %166, i64 -32, !dbg !122
  %180 = load i32, ptr %memoryref_data186.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %181 = add i32 %172, %179, !dbg !124
  %182 = add i32 %181, %180, !dbg !124
  %183 = add i32 %182, %178, !dbg !127
  %memoryref_data199.mv.fast = getelementptr i8, ptr %166, i64 -4, !dbg !130
  store i32 %183, ptr %memoryref_data199.mv.fast, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %184 = add nuw nsw i64 %value_phi81.mv.fast, 1, !dbg !132
  %exitcond167.not = icmp eq i64 %value_phi81.mv.fast, %umin166, !dbg !133
  br i1 %exitcond167.not, label %main.exit.selector374.mv.fast, label %L364.mv.fast, !dbg !133

main.exit.selector374.mv.fast:                    ; preds = %L364.mv.fast
  %185 = icmp samesign ult i64 %value_phi81.mv.fast, 64, !dbg !133
  br i1 %185, label %L175.postloop.mv.fast.preheader, label %L381.preheader.mv.fast, !dbg !133

L175.postloop.mv.fast.preheader:                  ; preds = %main.exit.selector374.mv.fast, %L175.preheader.mv.fast
  %value_phi81.postloop.mv.fast.ph = phi i64 [ %144, %main.exit.selector374.mv.fast ], [ 17, %L175.preheader.mv.fast ]
  br label %L175.postloop.mv.fast, !dbg !133

L175.postloop.mv.fast:                            ; preds = %L175.postloop.mv.fast.preheader, %L175.postloop.mv.fast
  %value_phi81.postloop.mv.fast = phi i64 [ %204, %L175.postloop.mv.fast ], [ %value_phi81.postloop.mv.fast.ph, %L175.postloop.mv.fast.preheader ]
  %memoryref_offset89.postloop.mv.fast = shl i64 %value_phi81.postloop.mv.fast, 2, !dbg !105
  %186 = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 %memoryref_offset89.postloop.mv.fast, !dbg !105
  %memoryref_data95.postloop.mv.fast = getelementptr i8, ptr %186, i64 -64, !dbg !105
  %187 = load i32, ptr %memoryref_data95.postloop.mv.fast, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %188 = call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 25), !dbg !106
  %189 = call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 14), !dbg !106
  %190 = xor i32 %189, %188, !dbg !110
  %191 = lshr i32 %187, 3, !dbg !112
  %192 = xor i32 %190, %191, !dbg !110
  %memoryref_data134.postloop.mv.fast = getelementptr i8, ptr %186, i64 -12, !dbg !115
  %193 = load i32, ptr %memoryref_data134.postloop.mv.fast, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %194 = call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 15), !dbg !117
  %195 = call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 13), !dbg !117
  %196 = xor i32 %195, %194, !dbg !119
  %197 = lshr i32 %193, 10, !dbg !120
  %198 = xor i32 %196, %197, !dbg !119
  %memoryref_data173.postloop.mv.fast = getelementptr i8, ptr %186, i64 -68, !dbg !122
  %199 = load i32, ptr %memoryref_data173.postloop.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.postloop.mv.fast = getelementptr i8, ptr %186, i64 -32, !dbg !122
  %200 = load i32, ptr %memoryref_data186.postloop.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %201 = add i32 %192, %199, !dbg !124
  %202 = add i32 %201, %200, !dbg !124
  %203 = add i32 %202, %198, !dbg !127
  %memoryref_data199.postloop.mv.fast = getelementptr i8, ptr %186, i64 -4, !dbg !130
  store i32 %203, ptr %memoryref_data199.postloop.mv.fast, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %.not295.not.postloop.mv.fast = icmp eq i64 %value_phi81.postloop.mv.fast, 64, !dbg !188
  %204 = add i64 %value_phi81.postloop.mv.fast, 1, !dbg !132
  br i1 %.not295.not.postloop.mv.fast, label %L381.preheader.mv.fast, label %L175.postloop.mv.fast, !dbg !133, !llvm.loop !189, !loop_constrainer.loop.clone !10

L381.preheader.mv.fast:                           ; preds = %L175.postloop.mv.fast, %main.exit.selector374.mv.fast
  %.size.0.copyload.mv.fast = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 32, !tbaa !54, !alias.scope !134, !noalias !135
  %"new::Array.size225.0.copyload.mv.fast" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349.mv.fast = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 -4, !dbg !136
  %smin398.mv.fast = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload.mv.fast", i64 0), !dbg !136
  %205 = sub i64 %"new::Array.size225.0.copyload.mv.fast", %smin398.mv.fast, !dbg !136
  %smax399.mv.fast = call i64 @llvm.smax.i64(i64 %smin398.mv.fast, i64 -1), !dbg !136
  %206 = add nsw i64 %smax399.mv.fast, 1, !dbg !136
  %207 = mul nuw nsw i64 %206, %205, !dbg !136
  %smin400.mv.fast = call i64 @llvm.smin.i64(i64 %.size.0.copyload.mv.fast, i64 0), !dbg !136
  %208 = sub i64 %.size.0.copyload.mv.fast, %smin400.mv.fast, !dbg !136
  %smax401.mv.fast = call i64 @llvm.smax.i64(i64 %smin400.mv.fast, i64 -1), !dbg !136
  %209 = add nsw i64 %smax401.mv.fast, 1, !dbg !136
  %210 = mul nuw nsw i64 %209, %208, !dbg !136
  %umin402.mv.fast = call i64 @llvm.umin.i64(i64 %207, i64 %210), !dbg !136
  %exit.mainloop.at404.mv.fast = call i64 @llvm.umin.i64(i64 %umin402.mv.fast, i64 64), !dbg !136
  %.not488.mv.fast = icmp eq i64 %umin402.mv.fast, 0, !dbg !136
  br i1 %.not488.mv.fast, label %main.pseudo.exit407.mv.fast, label %L438.preheader.mv.fast, !dbg !136

L438.preheader.mv.fast:                           ; preds = %L381.preheader.mv.fast
  %memoryref_data215.pre.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  %211 = add nuw nsw i64 %exit.mainloop.at404.mv.fast, 1, !dbg !139
  br label %L438.mv.fast, !dbg !139

L438.mv.fast:                                     ; preds = %L438.mv.fast, %L438.preheader.mv.fast
  %value_phi203.mv.fast = phi i64 [ %240, %L438.mv.fast ], [ 1, %L438.preheader.mv.fast ]
  %value_phi205.mv.fast = phi i32 [ %value_phi206.mv.fast, %L438.mv.fast ], [ %value_phi14.mv.fast, %L438.preheader.mv.fast ]
  %value_phi206.mv.fast = phi i32 [ %value_phi207.mv.fast, %L438.mv.fast ], [ %value_phi15.mv.fast, %L438.preheader.mv.fast ]
  %value_phi207.mv.fast = phi i32 [ %value_phi208.mv.fast, %L438.mv.fast ], [ %value_phi16.mv.fast, %L438.preheader.mv.fast ]
  %value_phi208.mv.fast = phi i32 [ %238, %L438.mv.fast ], [ %value_phi17.mv.fast, %L438.preheader.mv.fast ]
  %value_phi209.mv.fast = phi i32 [ %value_phi210.mv.fast, %L438.mv.fast ], [ %value_phi18.mv.fast, %L438.preheader.mv.fast ]
  %value_phi210.mv.fast = phi i32 [ %value_phi211.mv.fast, %L438.mv.fast ], [ %value_phi19.mv.fast, %L438.preheader.mv.fast ]
  %value_phi211.mv.fast = phi i32 [ %value_phi212.mv.fast, %L438.mv.fast ], [ %value_phi20.mv.fast, %L438.preheader.mv.fast ]
  %value_phi212.mv.fast = phi i32 [ %239, %L438.mv.fast ], [ %value_phi21.mv.fast, %L438.preheader.mv.fast ]
  %212 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 26), !dbg !140
  %213 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 21), !dbg !140
  %214 = xor i32 %212, %213, !dbg !143
  %215 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 7), !dbg !140
  %216 = xor i32 %214, %215, !dbg !143
  %217 = and i32 %value_phi208.mv.fast, %value_phi207.mv.fast, !dbg !144
  %218 = xor i32 %value_phi208.mv.fast, -1, !dbg !147
  %219 = and i32 %value_phi206.mv.fast, %218, !dbg !144
  %memoryref_offset217.mv.fast = shl nuw nsw i64 %value_phi203.mv.fast, 2, !dbg !138
  %220 = getelementptr i8, ptr %memoryref_data215.pre.mv.fast, i64 %memoryref_offset217.mv.fast, !dbg !138
  %memoryref_data223.mv.fast = getelementptr i8, ptr %220, i64 -4, !dbg !138
  %221 = load i32, ptr %memoryref_data223.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.mv.fast = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.mv.fast, !dbg !138
  %222 = load i32, ptr %gep350.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %223 = add i32 %219, %value_phi205.mv.fast, !dbg !149
  %224 = add i32 %223, %217, !dbg !151
  %225 = add i32 %224, %216, !dbg !149
  %226 = add i32 %225, %221, !dbg !152
  %227 = add i32 %226, %222, !dbg !154
  %228 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 30), !dbg !156
  %229 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 19), !dbg !156
  %230 = xor i32 %228, %229, !dbg !159
  %231 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 10), !dbg !156
  %232 = xor i32 %230, %231, !dbg !159
  %233 = xor i32 %value_phi211.mv.fast, %value_phi210.mv.fast, !dbg !160
  %234 = and i32 %value_phi212.mv.fast, %233, !dbg !160
  %235 = and i32 %value_phi211.mv.fast, %value_phi210.mv.fast, !dbg !162
  %236 = xor i32 %234, %235, !dbg !160
  %237 = add i32 %232, %236, !dbg !163
  %238 = add i32 %227, %value_phi209.mv.fast, !dbg !165
  %239 = add i32 %237, %227, !dbg !167
  %240 = add nuw nsw i64 %value_phi203.mv.fast, 1, !dbg !169
  %exitcond169.not = icmp eq i64 %value_phi203.mv.fast, %exit.mainloop.at404.mv.fast, !dbg !139
  br i1 %exitcond169.not, label %main.exit.selector406.mv.fast, label %L438.mv.fast, !dbg !139

main.exit.selector406.mv.fast:                    ; preds = %L438.mv.fast
  %241 = icmp ult i64 %umin402.mv.fast, 64, !dbg !139
  br i1 %241, label %main.pseudo.exit407.mv.fast, label %L476.mv.fast, !dbg !139

main.pseudo.exit407.mv.fast:                      ; preds = %main.exit.selector406.mv.fast, %L381.preheader.mv.fast
  %value_phi203.copy.mv.fast = phi i64 [ 1, %L381.preheader.mv.fast ], [ %211, %main.exit.selector406.mv.fast ]
  %value_phi205.copy.mv.fast = phi i32 [ %value_phi14.mv.fast, %L381.preheader.mv.fast ], [ %value_phi206.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi206.copy.mv.fast = phi i32 [ %value_phi15.mv.fast, %L381.preheader.mv.fast ], [ %value_phi207.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi207.copy.mv.fast = phi i32 [ %value_phi16.mv.fast, %L381.preheader.mv.fast ], [ %value_phi208.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi208.copy.mv.fast = phi i32 [ %value_phi17.mv.fast, %L381.preheader.mv.fast ], [ %238, %main.exit.selector406.mv.fast ]
  %value_phi209.copy.mv.fast = phi i32 [ %value_phi18.mv.fast, %L381.preheader.mv.fast ], [ %value_phi210.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi210.copy.mv.fast = phi i32 [ %value_phi19.mv.fast, %L381.preheader.mv.fast ], [ %value_phi211.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi211.copy.mv.fast = phi i32 [ %value_phi20.mv.fast, %L381.preheader.mv.fast ], [ %value_phi212.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi212.copy.mv.fast = phi i32 [ %value_phi21.mv.fast, %L381.preheader.mv.fast ], [ %239, %main.exit.selector406.mv.fast ]
  %mv.h14.mv.fast = icmp ugt i64 %.size.0.copyload.mv.fast, 63
  %mv.h15.mv.fast = icmp ugt i64 %"new::Array.size225.0.copyload.mv.fast", 63
  %mv.h16.mv.fast = and i1 %mv.h14.mv.fast, %mv.h15.mv.fast
  br i1 %mv.h16.mv.fast, label %L381.postloop.mv.fast.mv.fast.preheader, label %L381.postloop.mv.fast57.preheader

L381.postloop.mv.fast57.preheader:                ; preds = %main.pseudo.exit407.mv.fast
  %242 = add nsw i64 %value_phi203.copy.mv.fast, -1, !dbg !136
  %umax170 = call i64 @llvm.umax.i64(i64 %.size.0.copyload.mv.fast, i64 %242), !dbg !136
  %243 = add i64 %umax170, 1, !dbg !136
  %244 = sub i64 %243, %value_phi203.copy.mv.fast, !dbg !136
  %umax171 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload.mv.fast", i64 %242), !dbg !136
  %245 = add i64 %umax171, 1, !dbg !136
  %246 = sub i64 %245, %value_phi203.copy.mv.fast, !dbg !136
  %umin172 = call i64 @llvm.umin.i64(i64 %246, i64 %244), !dbg !136
  %247 = sub nsw i64 64, %value_phi203.copy.mv.fast, !dbg !136
  %umin173 = call i64 @llvm.umin.i64(i64 %umin172, i64 %247), !dbg !136
  %.not183 = icmp eq i64 %244, %umin173, !dbg !136
  br i1 %.not183, label %odessy.chk14, label %L381.postloop.mv.fast57.preheader.split, !dbg !136

L381.postloop.mv.fast57.preheader.split:          ; preds = %L381.postloop.mv.fast57.preheader
  %.not184 = icmp eq i64 %246, %umin173, !dbg !136
  br i1 %.not184, label %odessy.chk15, label %L381.postloop.mv.fast57.preheader.split.split, !dbg !136

L381.postloop.mv.fast57.preheader.split.split:    ; preds = %L381.postloop.mv.fast57.preheader.split
  %memoryref_data215.postloop.mv.fast71.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast57, !dbg !136

L381.postloop.mv.fast.mv.fast.preheader:          ; preds = %main.pseudo.exit407.mv.fast
  %memoryref_data215.postloop.mv.fast.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast.mv.fast, !dbg !139

L381.postloop.mv.fast57:                          ; preds = %L381.postloop.mv.fast57.preheader.split.split, %L381.postloop.mv.fast57
  %value_phi203.postloop.mv.fast58 = phi i64 [ %276, %L381.postloop.mv.fast57 ], [ %value_phi203.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi205.postloop.mv.fast59 = phi i32 [ %value_phi206.postloop.mv.fast60, %L381.postloop.mv.fast57 ], [ %value_phi205.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi206.postloop.mv.fast60 = phi i32 [ %value_phi207.postloop.mv.fast61, %L381.postloop.mv.fast57 ], [ %value_phi206.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi207.postloop.mv.fast61 = phi i32 [ %value_phi208.postloop.mv.fast62, %L381.postloop.mv.fast57 ], [ %value_phi207.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi208.postloop.mv.fast62 = phi i32 [ %274, %L381.postloop.mv.fast57 ], [ %value_phi208.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi209.postloop.mv.fast63 = phi i32 [ %value_phi210.postloop.mv.fast64, %L381.postloop.mv.fast57 ], [ %value_phi209.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi210.postloop.mv.fast64 = phi i32 [ %value_phi211.postloop.mv.fast65, %L381.postloop.mv.fast57 ], [ %value_phi210.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi211.postloop.mv.fast65 = phi i32 [ %value_phi212.postloop.mv.fast66, %L381.postloop.mv.fast57 ], [ %value_phi211.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi212.postloop.mv.fast66 = phi i32 [ %275, %L381.postloop.mv.fast57 ], [ %value_phi212.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %248 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast62, i32 %value_phi208.postloop.mv.fast62, i32 26), !dbg !140
  %249 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast62, i32 %value_phi208.postloop.mv.fast62, i32 21), !dbg !140
  %250 = xor i32 %248, %249, !dbg !143
  %251 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast62, i32 %value_phi208.postloop.mv.fast62, i32 7), !dbg !140
  %252 = xor i32 %250, %251, !dbg !143
  %253 = and i32 %value_phi208.postloop.mv.fast62, %value_phi207.postloop.mv.fast61, !dbg !144
  %254 = xor i32 %value_phi208.postloop.mv.fast62, -1, !dbg !147
  %255 = and i32 %value_phi206.postloop.mv.fast60, %254, !dbg !144
  %memoryref_offset217.postloop.mv.fast72 = shl i64 %value_phi203.postloop.mv.fast58, 2, !dbg !138
  %256 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast71.pre, i64 %memoryref_offset217.postloop.mv.fast72, !dbg !138
  %memoryref_data223.postloop.mv.fast73 = getelementptr i8, ptr %256, i64 -4, !dbg !138
  %257 = load i32, ptr %memoryref_data223.postloop.mv.fast73, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop.mv.fast74 = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.postloop.mv.fast72, !dbg !138
  %258 = load i32, ptr %gep350.postloop.mv.fast74, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %259 = add i32 %255, %value_phi205.postloop.mv.fast59, !dbg !149
  %260 = add i32 %259, %253, !dbg !151
  %261 = add i32 %260, %252, !dbg !149
  %262 = add i32 %261, %257, !dbg !152
  %263 = add i32 %262, %258, !dbg !154
  %264 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast66, i32 %value_phi212.postloop.mv.fast66, i32 30), !dbg !156
  %265 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast66, i32 %value_phi212.postloop.mv.fast66, i32 19), !dbg !156
  %266 = xor i32 %264, %265, !dbg !159
  %267 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast66, i32 %value_phi212.postloop.mv.fast66, i32 10), !dbg !156
  %268 = xor i32 %266, %267, !dbg !159
  %269 = xor i32 %value_phi211.postloop.mv.fast65, %value_phi210.postloop.mv.fast64, !dbg !160
  %270 = and i32 %value_phi212.postloop.mv.fast66, %269, !dbg !160
  %271 = and i32 %value_phi211.postloop.mv.fast65, %value_phi210.postloop.mv.fast64, !dbg !162
  %272 = xor i32 %270, %271, !dbg !160
  %273 = add i32 %268, %272, !dbg !163
  %274 = add i32 %263, %value_phi209.postloop.mv.fast63, !dbg !165
  %275 = add i32 %273, %263, !dbg !167
  %.not298.not.postloop.mv.fast75 = icmp eq i64 %value_phi203.postloop.mv.fast58, 64, !dbg !170
  %276 = add i64 %value_phi203.postloop.mv.fast58, 1, !dbg !169
  br i1 %.not298.not.postloop.mv.fast75, label %L476.mv.fast, label %L381.postloop.mv.fast57, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

L476.mv.fast:                                     ; preds = %L381.postloop.mv.fast57, %L381.postloop.mv.fast.mv.fast, %main.exit.selector406.mv.fast
  %.lcssa345.mv.fast = phi i32 [ %238, %main.exit.selector406.mv.fast ], [ %319, %L381.postloop.mv.fast.mv.fast ], [ %274, %L381.postloop.mv.fast57 ], !dbg !165
  %.lcssa344.mv.fast = phi i32 [ %239, %main.exit.selector406.mv.fast ], [ %320, %L381.postloop.mv.fast.mv.fast ], [ %275, %L381.postloop.mv.fast57 ], !dbg !167
  %value_phi206.lcssa341.mv.fast = phi i32 [ %value_phi206.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi206.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi206.postloop.mv.fast60, %L381.postloop.mv.fast57 ]
  %value_phi207.lcssa339.mv.fast = phi i32 [ %value_phi207.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi207.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi207.postloop.mv.fast61, %L381.postloop.mv.fast57 ]
  %value_phi208.lcssa337.mv.fast = phi i32 [ %value_phi208.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi208.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi208.postloop.mv.fast62, %L381.postloop.mv.fast57 ]
  %value_phi210.lcssa335.mv.fast = phi i32 [ %value_phi210.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi210.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi210.postloop.mv.fast64, %L381.postloop.mv.fast57 ]
  %value_phi211.lcssa333.mv.fast = phi i32 [ %value_phi211.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi211.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi211.postloop.mv.fast65, %L381.postloop.mv.fast57 ]
  %value_phi212.lcssa331.mv.fast = phi i32 [ %value_phi212.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi212.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi212.postloop.mv.fast66, %L381.postloop.mv.fast57 ]
  %277 = add i32 %.lcssa344.mv.fast, %value_phi21.mv.fast, !dbg !172
  %278 = add i32 %value_phi212.lcssa331.mv.fast, %value_phi20.mv.fast, !dbg !172
  %279 = add i32 %value_phi211.lcssa333.mv.fast, %value_phi19.mv.fast, !dbg !172
  %280 = add i32 %value_phi210.lcssa335.mv.fast, %value_phi18.mv.fast, !dbg !172
  %281 = add i32 %.lcssa345.mv.fast, %value_phi17.mv.fast, !dbg !174
  %282 = add i32 %value_phi208.lcssa337.mv.fast, %value_phi16.mv.fast, !dbg !174
  %283 = add i32 %value_phi207.lcssa339.mv.fast, %value_phi15.mv.fast, !dbg !174
  %284 = add i32 %value_phi206.lcssa341.mv.fast, %value_phi14.mv.fast, !dbg !174
  %.not299.not.mv.fast = icmp eq i64 %value_phi12.mv.fast, %value_phi8, !dbg !176
  %285 = add nuw nsw i64 %value_phi12.mv.fast, 1, !dbg !177
  br i1 %.not299.not.mv.fast, label %L495.loopexit, label %L41.mv.fast, !dbg !178

L53.postloop.mv.fast.mv.fast:                     ; preds = %main.pseudo.exit.mv.fast, %L73.postloop.mv.fast.mv.fast
  %value_phi22.postloop.mv.fast.mv.fast = phi i64 [ %292, %L73.postloop.mv.fast.mv.fast ], [ %value_phi22.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %286 = shl i64 %value_phi22.postloop.mv.fast.mv.fast, 2, !dbg !79
  %287 = add i64 %286, %145, !dbg !81
  %288 = add i64 %287, -68, !dbg !75
  %.not.postloop.mv.fast.mv.fast = icmp ult i64 %288, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop.mv.fast.mv.fast, label %L73.postloop.mv.fast.mv.fast, label %odessy.chk, !dbg !75

L73.postloop.mv.fast.mv.fast:                     ; preds = %L53.postloop.mv.fast.mv.fast
  %289 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %287, !dbg !83
  %memoryref_data27.postloop.mv.fast.mv.fast = getelementptr i8, ptr %289, i64 -68, !dbg !83
  %290 = load i32, ptr %memoryref_data27.postloop.mv.fast.mv.fast, align 1, !dbg !83
  %291 = call i32 @llvm.bswap.i32(i32 %290), !dbg !83
  %gep.postloop.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %286, !dbg !84
  store i32 %291, ptr %gep.postloop.mv.fast.mv.fast, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop.mv.fast.mv.fast = icmp eq i64 %value_phi22.postloop.mv.fast.mv.fast, 16, !dbg !95
  %292 = add i64 %value_phi22.postloop.mv.fast.mv.fast, 1, !dbg !93
  br i1 %.not285.not.postloop.mv.fast.mv.fast, label %L175.preheader.mv.fast, label %L53.postloop.mv.fast.mv.fast, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L381.postloop.mv.fast.mv.fast:                    ; preds = %L381.postloop.mv.fast.mv.fast.preheader, %L381.postloop.mv.fast.mv.fast
  %value_phi203.postloop.mv.fast.mv.fast = phi i64 [ %321, %L381.postloop.mv.fast.mv.fast ], [ %value_phi203.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi205.postloop.mv.fast.mv.fast = phi i32 [ %value_phi206.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi205.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi206.postloop.mv.fast.mv.fast = phi i32 [ %value_phi207.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi206.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi207.postloop.mv.fast.mv.fast = phi i32 [ %value_phi208.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi207.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi208.postloop.mv.fast.mv.fast = phi i32 [ %319, %L381.postloop.mv.fast.mv.fast ], [ %value_phi208.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi209.postloop.mv.fast.mv.fast = phi i32 [ %value_phi210.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi209.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi210.postloop.mv.fast.mv.fast = phi i32 [ %value_phi211.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi210.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi211.postloop.mv.fast.mv.fast = phi i32 [ %value_phi212.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi211.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi212.postloop.mv.fast.mv.fast = phi i32 [ %320, %L381.postloop.mv.fast.mv.fast ], [ %value_phi212.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %293 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 26), !dbg !140
  %294 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 21), !dbg !140
  %295 = xor i32 %293, %294, !dbg !143
  %296 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 7), !dbg !140
  %297 = xor i32 %295, %296, !dbg !143
  %298 = and i32 %value_phi208.postloop.mv.fast.mv.fast, %value_phi207.postloop.mv.fast.mv.fast, !dbg !144
  %299 = xor i32 %value_phi208.postloop.mv.fast.mv.fast, -1, !dbg !147
  %300 = and i32 %value_phi206.postloop.mv.fast.mv.fast, %299, !dbg !144
  %memoryref_offset217.postloop.mv.fast.mv.fast = shl i64 %value_phi203.postloop.mv.fast.mv.fast, 2, !dbg !138
  %301 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast.mv.fast, i64 %memoryref_offset217.postloop.mv.fast.mv.fast, !dbg !138
  %memoryref_data223.postloop.mv.fast.mv.fast = getelementptr i8, ptr %301, i64 -4, !dbg !138
  %302 = load i32, ptr %memoryref_data223.postloop.mv.fast.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.postloop.mv.fast.mv.fast, !dbg !138
  %303 = load i32, ptr %gep350.postloop.mv.fast.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %304 = add i32 %300, %value_phi205.postloop.mv.fast.mv.fast, !dbg !149
  %305 = add i32 %304, %298, !dbg !151
  %306 = add i32 %305, %297, !dbg !149
  %307 = add i32 %306, %302, !dbg !152
  %308 = add i32 %307, %303, !dbg !154
  %309 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 30), !dbg !156
  %310 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 19), !dbg !156
  %311 = xor i32 %309, %310, !dbg !159
  %312 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 10), !dbg !156
  %313 = xor i32 %311, %312, !dbg !159
  %314 = xor i32 %value_phi211.postloop.mv.fast.mv.fast, %value_phi210.postloop.mv.fast.mv.fast, !dbg !160
  %315 = and i32 %value_phi212.postloop.mv.fast.mv.fast, %314, !dbg !160
  %316 = and i32 %value_phi211.postloop.mv.fast.mv.fast, %value_phi210.postloop.mv.fast.mv.fast, !dbg !162
  %317 = xor i32 %315, %316, !dbg !160
  %318 = add i32 %313, %317, !dbg !163
  %319 = add i32 %308, %value_phi209.postloop.mv.fast.mv.fast, !dbg !165
  %320 = add i32 %318, %308, !dbg !167
  %.not298.not.postloop.mv.fast.mv.fast = icmp eq i64 %value_phi203.postloop.mv.fast.mv.fast, 64, !dbg !170
  %321 = add i64 %value_phi203.postloop.mv.fast.mv.fast, 1, !dbg !169
  br i1 %.not298.not.postloop.mv.fast.mv.fast, label %L476.mv.fast, label %L381.postloop.mv.fast.mv.fast, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

L53.postloop:                                     ; preds = %main.pseudo.exit, %L158.postloop
  %value_phi22.postloop = phi i64 [ %329, %L158.postloop ], [ %value_phi22.copy, %main.pseudo.exit ]
  %322 = shl i64 %value_phi22.postloop, 2, !dbg !79
  %323 = add i64 %322, %8, !dbg !81
  %324 = add i64 %323, -68, !dbg !75
  %.not.postloop = icmp ult i64 %324, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop, label %L73.postloop, label %odessy.chk, !dbg !75

L73.postloop:                                     ; preds = %L53.postloop
  %325 = add i64 %value_phi22.postloop, -1, !dbg !184
  %.not284.postloop = icmp ult i64 %325, %"new::Array.size.0.copyload", !dbg !187
  br i1 %.not284.postloop, label %L158.postloop, label %odessy.chk8, !dbg !186

L158.postloop:                                    ; preds = %L73.postloop
  %326 = getelementptr i8, ptr %memoryref_data, i64 %323, !dbg !83
  %memoryref_data27.postloop = getelementptr i8, ptr %326, i64 -68, !dbg !83
  %327 = load i32, ptr %memoryref_data27.postloop, align 1, !dbg !83
  %328 = call i32 @llvm.bswap.i32(i32 %327), !dbg !83
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %322, !dbg !84
  store i32 %328, ptr %gep.postloop, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop = icmp eq i64 %value_phi22.postloop, 16, !dbg !95
  %329 = add i64 %value_phi22.postloop, 1, !dbg !93
  br i1 %.not285.not.postloop, label %L175.preheader, label %L53.postloop, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L175.postloop:                                    ; preds = %L175.postloop.preheader, %L364.postloop
  %value_phi81.postloop = phi i64 [ %351, %L364.postloop ], [ %value_phi81.postloop.ph, %L175.postloop.preheader ]
  %330 = add i64 %value_phi81.postloop, -16, !dbg !103
  %.not286.postloop = icmp ult i64 %330, %"new::Array.size84.0.copyload", !dbg !103
  br i1 %.not286.postloop, label %L237.postloop, label %odessy.chk9, !dbg !103

L237.postloop:                                    ; preds = %L175.postloop
  %memoryref_offset89.postloop = shl i64 %value_phi81.postloop, 2, !dbg !105
  %331 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89.postloop, !dbg !105
  %memoryref_data95.postloop = getelementptr i8, ptr %331, i64 -64, !dbg !105
  %332 = load i32, ptr %memoryref_data95.postloop, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %333 = call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 25), !dbg !106
  %334 = call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 14), !dbg !106
  %335 = xor i32 %334, %333, !dbg !110
  %336 = lshr i32 %332, 3, !dbg !112
  %337 = xor i32 %335, %336, !dbg !110
  %338 = add i64 %value_phi81.postloop, -3, !dbg !190
  %.not289.postloop = icmp ult i64 %338, %"new::Array.size84.0.copyload", !dbg !190
  br i1 %.not289.postloop, label %L303.postloop, label %odessy.chk10, !dbg !190

L303.postloop:                                    ; preds = %L237.postloop
  %339 = add i64 %value_phi81.postloop, -1, !dbg !191
  %.not294.postloop = icmp ult i64 %339, %"new::Array.size84.0.copyload", !dbg !193
  br i1 %.not294.postloop, label %L364.postloop, label %odessy.chk13, !dbg !192

L364.postloop:                                    ; preds = %L303.postloop
  %memoryref_data134.postloop = getelementptr i8, ptr %331, i64 -12, !dbg !115
  %340 = load i32, ptr %memoryref_data134.postloop, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %341 = call i32 @llvm.fshl.i32(i32 %340, i32 %340, i32 13), !dbg !117
  %342 = call i32 @llvm.fshl.i32(i32 %340, i32 %340, i32 15), !dbg !117
  %343 = xor i32 %341, %342, !dbg !119
  %344 = lshr i32 %340, 10, !dbg !120
  %345 = xor i32 %343, %344, !dbg !119
  %memoryref_data173.postloop = getelementptr i8, ptr %331, i64 -68, !dbg !122
  %346 = load i32, ptr %memoryref_data173.postloop, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.postloop = getelementptr i8, ptr %331, i64 -32, !dbg !122
  %347 = load i32, ptr %memoryref_data186.postloop, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %348 = add i32 %346, %337, !dbg !124
  %349 = add i32 %348, %347, !dbg !124
  %350 = add i32 %349, %345, !dbg !127
  %memoryref_data199.postloop = getelementptr i8, ptr %331, i64 -4, !dbg !130
  store i32 %350, ptr %memoryref_data199.postloop, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %.not295.not.postloop = icmp eq i64 %value_phi81.postloop, 64, !dbg !188
  %351 = add i64 %value_phi81.postloop, 1, !dbg !132
  br i1 %.not295.not.postloop, label %L381.preheader, label %L175.postloop, !dbg !133, !llvm.loop !189, !loop_constrainer.loop.clone !10

L381.postloop:                                    ; preds = %L381.postloop.preheader.split.split, %L381.postloop
  %value_phi203.postloop = phi i64 [ %380, %L381.postloop ], [ %value_phi203.copy, %L381.postloop.preheader.split.split ]
  %value_phi205.postloop = phi i32 [ %value_phi206.postloop, %L381.postloop ], [ %value_phi205.copy, %L381.postloop.preheader.split.split ]
  %value_phi206.postloop = phi i32 [ %value_phi207.postloop, %L381.postloop ], [ %value_phi206.copy, %L381.postloop.preheader.split.split ]
  %value_phi207.postloop = phi i32 [ %value_phi208.postloop, %L381.postloop ], [ %value_phi207.copy, %L381.postloop.preheader.split.split ]
  %value_phi208.postloop = phi i32 [ %378, %L381.postloop ], [ %value_phi208.copy, %L381.postloop.preheader.split.split ]
  %value_phi209.postloop = phi i32 [ %value_phi210.postloop, %L381.postloop ], [ %value_phi209.copy, %L381.postloop.preheader.split.split ]
  %value_phi210.postloop = phi i32 [ %value_phi211.postloop, %L381.postloop ], [ %value_phi210.copy, %L381.postloop.preheader.split.split ]
  %value_phi211.postloop = phi i32 [ %value_phi212.postloop, %L381.postloop ], [ %value_phi211.copy, %L381.postloop.preheader.split.split ]
  %value_phi212.postloop = phi i32 [ %379, %L381.postloop ], [ %value_phi212.copy, %L381.postloop.preheader.split.split ]
  %352 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 26), !dbg !140
  %353 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 21), !dbg !140
  %354 = xor i32 %352, %353, !dbg !143
  %355 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 7), !dbg !140
  %356 = xor i32 %354, %355, !dbg !143
  %357 = and i32 %value_phi208.postloop, %value_phi207.postloop, !dbg !144
  %358 = xor i32 %value_phi208.postloop, -1, !dbg !147
  %359 = and i32 %value_phi206.postloop, %358, !dbg !144
  %memoryref_offset217.postloop = shl i64 %value_phi203.postloop, 2, !dbg !138
  %360 = getelementptr i8, ptr %memoryref_data215.postloop.pre, i64 %memoryref_offset217.postloop, !dbg !138
  %memoryref_data223.postloop = getelementptr i8, ptr %360, i64 -4, !dbg !138
  %361 = load i32, ptr %memoryref_data223.postloop, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop, !dbg !138
  %362 = load i32, ptr %gep350.postloop, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %363 = add i32 %359, %value_phi205.postloop, !dbg !149
  %364 = add i32 %363, %357, !dbg !151
  %365 = add i32 %364, %356, !dbg !149
  %366 = add i32 %365, %361, !dbg !152
  %367 = add i32 %366, %362, !dbg !154
  %368 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 30), !dbg !156
  %369 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 19), !dbg !156
  %370 = xor i32 %368, %369, !dbg !159
  %371 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 10), !dbg !156
  %372 = xor i32 %370, %371, !dbg !159
  %373 = xor i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !160
  %374 = and i32 %value_phi212.postloop, %373, !dbg !160
  %375 = and i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !162
  %376 = xor i32 %374, %375, !dbg !160
  %377 = add i32 %372, %376, !dbg !163
  %378 = add i32 %367, %value_phi209.postloop, !dbg !165
  %379 = add i32 %377, %367, !dbg !167
  %.not298.not.postloop = icmp eq i64 %value_phi203.postloop, 64, !dbg !170
  %380 = add i64 %value_phi203.postloop, 1, !dbg !169
  br i1 %.not298.not.postloop, label %L476, label %L381.postloop, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L53.postloop, %L53.postloop.mv.fast, %L53.postloop.mv.fast39, %L53.postloop.mv.fast.mv.fast
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L53, %L53.mv.fast
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk8:                                      ; preds = %L73.postloop, %L73.postloop.mv.fast42
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L175.postloop
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L237.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk13:                                     ; preds = %L303.postloop
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %L381.postloop.preheader, %L381.postloop.mv.fast57.preheader
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %L381.postloop.preheader.split, %L381.postloop.mv.fast57.preheader.split
  call void @odessy.chk(i32 15)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_sha256_sum_148(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %thread_ptr = call ptr asm "movq %fs:0, $0", "=r"()
  %tls_ppgcstack = getelementptr inbounds i8, ptr %thread_ptr, i64 -8
  %tls_pgcstack = load ptr, ptr %tls_ppgcstack, align 8
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10, !alias.scope !194, !noalias !195, !nonnull !10, !dereferenceable !196, !align !197
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !26, !invariant.load !10, !alias.scope !194, !noalias !195, !nonnull !10, !dereferenceable !197, !align !197
  %.unbox = load i64, ptr %3, align 8, !tbaa !198, !alias.scope !91, !noalias !92
  %4 = call swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself %tls_pgcstack, ptr %1, i64 signext %.unbox)
  %box_UInt32 = call nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext %4) #9
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

attributes #0 = { nounwind "frame-pointer"="all" "julia.fsig"="sha256_sum(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "frame-pointer"="all" "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "sha256_sum", linkageName: "julia_sha256_sum_147", scope: null, file: !5, line: 17, type: !6, scopeLine: 17, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!5 = !DIFile(filename: "/mydata/ODeSSy/native_bench/sha256.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !16}
!8 = !DIBasicType(name: "UInt32", size: 32, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#sha256_sum", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "133223586903120")
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
!95 = !DILocation(line: 637, scope: !96, inlinedAt: !93)
!96 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !97, file: !97, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DIFile(filename: "promotion.jl", directory: ".")
!98 = distinct !{!98, !99, !100, !101, !102}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!"llvm.loop.vectorize.enable", i1 false}
!101 = !{!"llvm.loop.licm_versioning.disable"}
!102 = !{!"llvm.loop.distribute.enable", i1 false}
!103 = !DILocation(line: 919, scope: !76, inlinedAt: !104)
!104 = !DILocation(line: 34, scope: !4)
!105 = !DILocation(line: 920, scope: !76, inlinedAt: !104)
!106 = !DILocation(line: 378, scope: !107, inlinedAt: !108)
!107 = distinct !DISubprogram(name: "|;", linkageName: "|", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!108 = !DILocation(line: 15, scope: !109, inlinedAt: !104)
!109 = distinct !DISubprogram(name: "rotr;", linkageName: "rotr", scope: !5, file: !5, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!110 = !DILocation(line: 379, scope: !111, inlinedAt: !104)
!111 = distinct !DISubprogram(name: "xor;", linkageName: "xor", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!112 = !DILocation(line: 534, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: ">>;", linkageName: ">>", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!114 = !DILocation(line: 540, scope: !113, inlinedAt: !104)
!115 = !DILocation(line: 920, scope: !76, inlinedAt: !116)
!116 = !DILocation(line: 35, scope: !4)
!117 = !DILocation(line: 378, scope: !107, inlinedAt: !118)
!118 = !DILocation(line: 15, scope: !109, inlinedAt: !116)
!119 = !DILocation(line: 379, scope: !111, inlinedAt: !116)
!120 = !DILocation(line: 534, scope: !113, inlinedAt: !121)
!121 = !DILocation(line: 540, scope: !113, inlinedAt: !116)
!122 = !DILocation(line: 920, scope: !76, inlinedAt: !123)
!123 = !DILocation(line: 36, scope: !4)
!124 = !DILocation(line: 87, scope: !82, inlinedAt: !125)
!125 = !DILocation(line: 642, scope: !126, inlinedAt: !123)
!126 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!127 = !DILocation(line: 87, scope: !82, inlinedAt: !128)
!128 = !DILocation(line: 599, scope: !129, inlinedAt: !125)
!129 = distinct !DISubprogram(name: "afoldl;", linkageName: "afoldl", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!130 = !DILocation(line: 991, scope: !85, inlinedAt: !131)
!131 = !DILocation(line: 986, scope: !88, inlinedAt: !123)
!132 = !DILocation(line: 921, scope: !68, inlinedAt: !133)
!133 = !DILocation(line: 37, scope: !4)
!134 = !{!42, !46}
!135 = !{!45, !47, !48}
!136 = !DILocation(line: 919, scope: !76, inlinedAt: !137)
!137 = !DILocation(line: 42, scope: !4)
!138 = !DILocation(line: 920, scope: !76, inlinedAt: !137)
!139 = !DILocation(line: 48, scope: !4)
!140 = !DILocation(line: 378, scope: !107, inlinedAt: !141)
!141 = !DILocation(line: 15, scope: !109, inlinedAt: !142)
!142 = !DILocation(line: 40, scope: !4)
!143 = !DILocation(line: 379, scope: !111, inlinedAt: !142)
!144 = !DILocation(line: 353, scope: !145, inlinedAt: !146)
!145 = distinct !DISubprogram(name: "&;", linkageName: "&", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!146 = !DILocation(line: 41, scope: !4)
!147 = !DILocation(line: 327, scope: !148, inlinedAt: !146)
!148 = distinct !DISubprogram(name: "~;", linkageName: "~", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!149 = !DILocation(line: 87, scope: !82, inlinedAt: !150)
!150 = !DILocation(line: 642, scope: !126, inlinedAt: !137)
!151 = !DILocation(line: 379, scope: !111, inlinedAt: !146)
!152 = !DILocation(line: 87, scope: !82, inlinedAt: !153)
!153 = !DILocation(line: 599, scope: !129, inlinedAt: !150)
!154 = !DILocation(line: 87, scope: !82, inlinedAt: !155)
!155 = !DILocation(line: 600, scope: !129, inlinedAt: !150)
!156 = !DILocation(line: 378, scope: !107, inlinedAt: !157)
!157 = !DILocation(line: 15, scope: !109, inlinedAt: !158)
!158 = !DILocation(line: 43, scope: !4)
!159 = !DILocation(line: 379, scope: !111, inlinedAt: !158)
!160 = !DILocation(line: 379, scope: !111, inlinedAt: !161)
!161 = !DILocation(line: 44, scope: !4)
!162 = !DILocation(line: 353, scope: !145, inlinedAt: !161)
!163 = !DILocation(line: 87, scope: !82, inlinedAt: !164)
!164 = !DILocation(line: 45, scope: !4)
!165 = !DILocation(line: 87, scope: !82, inlinedAt: !166)
!166 = !DILocation(line: 46, scope: !4)
!167 = !DILocation(line: 87, scope: !82, inlinedAt: !168)
!168 = !DILocation(line: 47, scope: !4)
!169 = !DILocation(line: 921, scope: !68, inlinedAt: !139)
!170 = !DILocation(line: 637, scope: !96, inlinedAt: !169)
!171 = distinct !{!171, !99, !100, !101, !102}
!172 = !DILocation(line: 87, scope: !82, inlinedAt: !173)
!173 = !DILocation(line: 49, scope: !4)
!174 = !DILocation(line: 87, scope: !82, inlinedAt: !175)
!175 = !DILocation(line: 50, scope: !4)
!176 = !DILocation(line: 637, scope: !96, inlinedAt: !177)
!177 = !DILocation(line: 921, scope: !68, inlinedAt: !178)
!178 = !DILocation(line: 51, scope: !4)
!179 = !DILocation(line: 87, scope: !82, inlinedAt: !180)
!180 = !DILocation(line: 52, scope: !4)
!181 = !DILocation(line: 637, scope: !96, inlinedAt: !182)
!182 = !DILocation(line: 921, scope: !68, inlinedAt: !183)
!183 = !DILocation(line: 53, scope: !4)
!184 = !DILocation(line: 86, scope: !185, inlinedAt: !186)
!185 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!186 = !DILocation(line: 990, scope: !85, inlinedAt: !87)
!187 = !DILocation(line: 519, scope: !59, inlinedAt: !186)
!188 = !DILocation(line: 637, scope: !96, inlinedAt: !132)
!189 = distinct !{!189, !99, !100, !101, !102}
!190 = !DILocation(line: 919, scope: !76, inlinedAt: !116)
!191 = !DILocation(line: 86, scope: !185, inlinedAt: !192)
!192 = !DILocation(line: 990, scope: !85, inlinedAt: !131)
!193 = !DILocation(line: 519, scope: !59, inlinedAt: !192)
!194 = !{!48}
!195 = !{!45, !46, !47, !42}
!196 = !{i64 24}
!197 = !{i64 8}
!198 = !{!199, !199, i64 0}
!199 = !{!"jtbaa_immut", !200, i64 0}
!200 = !{!"jtbaa_value", !37, i64 0}
