; ModuleID = 'results/static/guard_ablation_1109/Julia_sha256/mv.ll'
source_filename = "sha256_sum"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 123287494402896 to ptr)

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
  %"Memory{UInt32}[]" = call noalias nonnull align 8 dereferenceable(288) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 960, i32 288, i64 123287663758976) #8, !dbg !28
  %"Memory{UInt32}[].tag_addr" = getelementptr inbounds i8, ptr %"Memory{UInt32}[]", i64 -8, !dbg !28
  store atomic i64 123287663758976, ptr %"Memory{UInt32}[].tag_addr" unordered, align 8, !dbg !28, !tbaa !35
  %memory_ptr = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 8, !dbg !28
  %memory_data = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 16, !dbg !28
  store ptr %memory_data, ptr %memory_ptr, align 8, !dbg !28, !tbaa !38, !alias.scope !41, !noalias !44
  store i64 64, ptr %"Memory{UInt32}[]", align 8, !dbg !28, !tbaa !49, !alias.scope !41, !noalias !44
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  store ptr %"Memory{UInt32}[]", ptr %gc_slot_addr_0, align 16
  %"new::Array" = call noalias nonnull align 8 dereferenceable(32) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 408, i32 32, i64 123287663761424) #8, !dbg !51
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
  %"new::Array.size.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload", %L476 ], [ %"new::Array.size84.0.copyload.fr", %pass ]
  %value_phi12 = phi i64 [ %129, %L476 ], [ 1, %pass ]
  %value_phi14 = phi i32 [ %128, %L476 ], [ 1541459225, %pass ]
  %value_phi15 = phi i32 [ %127, %L476 ], [ 528734635, %pass ]
  %value_phi16 = phi i32 [ %126, %L476 ], [ -1694144372, %pass ]
  %value_phi17 = phi i32 [ %125, %L476 ], [ 1359893119, %pass ]
  %value_phi18 = phi i32 [ %124, %L476 ], [ -1521486534, %pass ]
  %value_phi19 = phi i32 [ %123, %L476 ], [ 1013904242, %pass ]
  %value_phi20 = phi i32 [ %122, %L476 ], [ -1150833019, %pass ]
  %value_phi21 = phi i32 [ %121, %L476 ], [ 1779033703, %pass ]
  %"new::Array.size.0.copyload.fr" = freeze i64 %"new::Array.size.0.copyload"
  %8 = shl i64 %value_phi12, 6, !dbg !72
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data69, i64 -4, !dbg !67
  %smin = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload.fr", i64 0), !dbg !67
  %9 = sub i64 %"new::Array.size.0.copyload.fr", %smin, !dbg !67
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
  %mv.h = icmp ugt i64 %"new::Array.size.0.copyload.fr", 15
  br i1 %mv.h, label %L53.postloop.mv.fast, label %L53.postloop

L53.postloop.mv.fast:                             ; preds = %main.pseudo.exit, %L138.postloop.mv.fast
  %value_phi22.postloop.mv.fast = phi i64 [ %28, %L138.postloop.mv.fast ], [ %value_phi22.copy, %main.pseudo.exit ]
  %21 = shl i64 %value_phi22.postloop.mv.fast, 2, !dbg !79
  %22 = add i64 %21, %8, !dbg !81
  %23 = add i64 %22, -68, !dbg !75
  %.not.postloop.mv.fast = icmp ult i64 %23, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop.mv.fast, label %L73.postloop.mv.fast, label %odessy.chk, !dbg !75

L73.postloop.mv.fast:                             ; preds = %L53.postloop.mv.fast
  %24 = add i64 %22, -65, !dbg !75
  %.not283.postloop.mv.fast = icmp ult i64 %24, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not283.postloop.mv.fast, label %L138.postloop.mv.fast, label %odessy.chk6, !dbg !75

L138.postloop.mv.fast:                            ; preds = %L73.postloop.mv.fast
  %25 = getelementptr i8, ptr %memoryref_data, i64 %22, !dbg !83
  %memoryref_data27.postloop.mv.fast = getelementptr i8, ptr %25, i64 -68, !dbg !83
  %26 = load i32, ptr %memoryref_data27.postloop.mv.fast, align 1, !dbg !83
  %27 = call i32 @llvm.bswap.i32(i32 %26), !dbg !83
  %gep.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %21, !dbg !84
  store i32 %27, ptr %gep.postloop.mv.fast, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop.mv.fast = icmp eq i64 %value_phi22.postloop.mv.fast, 16, !dbg !95
  %28 = add i64 %value_phi22.postloop.mv.fast, 1, !dbg !93
  br i1 %.not285.not.postloop.mv.fast, label %L175.preheader, label %L53.postloop.mv.fast, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L175.preheader:                                   ; preds = %L158.postloop, %L138.postloop.mv.fast, %main.exit.selector
  %memoryref_data87 = load ptr, ptr %"new::Array", align 8
  br i1 %144, label %L364, label %L175.postloop.preheader, !dbg !103

L175.postloop.preheader:                          ; preds = %main.exit.selector374, %L175.preheader
  %value_phi81.postloop.ph = phi i64 [ %145, %main.exit.selector374 ], [ 17, %L175.preheader ]
  br label %L175.postloop, !dbg !103

L364:                                             ; preds = %L175.preheader, %L364
  %value_phi81 = phi i64 [ %47, %L364 ], [ 17, %L175.preheader ]
  %memoryref_offset89 = shl i64 %value_phi81, 2, !dbg !105
  %29 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89, !dbg !105
  %memoryref_data95 = getelementptr i8, ptr %29, i64 -64, !dbg !105
  %30 = load i32, ptr %memoryref_data95, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %31 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 25), !dbg !106
  %32 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 14), !dbg !106
  %33 = xor i32 %32, %31, !dbg !110
  %34 = lshr i32 %30, 3, !dbg !112
  %35 = xor i32 %33, %34, !dbg !110
  %memoryref_data134 = getelementptr i8, ptr %29, i64 -12, !dbg !115
  %36 = load i32, ptr %memoryref_data134, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %37 = call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 15), !dbg !117
  %38 = call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13), !dbg !117
  %39 = xor i32 %38, %37, !dbg !119
  %40 = lshr i32 %36, 10, !dbg !120
  %41 = xor i32 %39, %40, !dbg !119
  %memoryref_data173 = getelementptr i8, ptr %29, i64 -68, !dbg !122
  %42 = load i32, ptr %memoryref_data173, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186 = getelementptr i8, ptr %29, i64 -32, !dbg !122
  %43 = load i32, ptr %memoryref_data186, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %44 = add i32 %35, %42, !dbg !124
  %45 = add i32 %44, %43, !dbg !124
  %46 = add i32 %45, %41, !dbg !127
  %memoryref_data199 = getelementptr i8, ptr %29, i64 -4, !dbg !130
  store i32 %46, ptr %memoryref_data199, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %47 = add nuw nsw i64 %value_phi81, 1, !dbg !132
  %exitcond158.not = icmp eq i64 %value_phi81, %umin172, !dbg !133
  br i1 %exitcond158.not, label %main.exit.selector374, label %L364, !dbg !133

main.exit.selector374:                            ; preds = %L364
  %48 = icmp samesign ult i64 %value_phi81, 64, !dbg !133
  br i1 %48, label %L175.postloop.preheader, label %L381.preheader, !dbg !133

L381.preheader:                                   ; preds = %L364.postloop, %main.exit.selector374
  %.size.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 32, !tbaa !54, !alias.scope !134, !noalias !135
  %"new::Array.size225.0.copyload" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349 = getelementptr i8, ptr %memoryref_data87, i64 -4, !dbg !136
  %smin398 = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload", i64 0), !dbg !136
  %49 = sub i64 %"new::Array.size225.0.copyload", %smin398, !dbg !136
  %smax399 = call i64 @llvm.smax.i64(i64 %smin398, i64 -1), !dbg !136
  %50 = add nsw i64 %smax399, 1, !dbg !136
  %51 = mul nuw nsw i64 %50, %49, !dbg !136
  %smin400 = call i64 @llvm.smin.i64(i64 %.size.0.copyload, i64 0), !dbg !136
  %52 = sub i64 %.size.0.copyload, %smin400, !dbg !136
  %smax401 = call i64 @llvm.smax.i64(i64 %smin400, i64 -1), !dbg !136
  %53 = add nsw i64 %smax401, 1, !dbg !136
  %54 = mul nuw nsw i64 %53, %52, !dbg !136
  %umin402 = call i64 @llvm.umin.i64(i64 %51, i64 %54), !dbg !136
  %exit.mainloop.at404 = call i64 @llvm.umin.i64(i64 %umin402, i64 64), !dbg !136
  %.not488 = icmp eq i64 %umin402, 0, !dbg !136
  br i1 %.not488, label %main.pseudo.exit407, label %L438.preheader, !dbg !136

L438.preheader:                                   ; preds = %L381.preheader
  %memoryref_data215.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  %55 = add nuw nsw i64 %exit.mainloop.at404, 1, !dbg !139
  br label %L438, !dbg !139

L438:                                             ; preds = %L438, %L438.preheader
  %value_phi203 = phi i64 [ %84, %L438 ], [ 1, %L438.preheader ]
  %value_phi205 = phi i32 [ %value_phi206, %L438 ], [ %value_phi14, %L438.preheader ]
  %value_phi206 = phi i32 [ %value_phi207, %L438 ], [ %value_phi15, %L438.preheader ]
  %value_phi207 = phi i32 [ %value_phi208, %L438 ], [ %value_phi16, %L438.preheader ]
  %value_phi208 = phi i32 [ %82, %L438 ], [ %value_phi17, %L438.preheader ]
  %value_phi209 = phi i32 [ %value_phi210, %L438 ], [ %value_phi18, %L438.preheader ]
  %value_phi210 = phi i32 [ %value_phi211, %L438 ], [ %value_phi19, %L438.preheader ]
  %value_phi211 = phi i32 [ %value_phi212, %L438 ], [ %value_phi20, %L438.preheader ]
  %value_phi212 = phi i32 [ %83, %L438 ], [ %value_phi21, %L438.preheader ]
  %56 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 26), !dbg !140
  %57 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 21), !dbg !140
  %58 = xor i32 %56, %57, !dbg !143
  %59 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 7), !dbg !140
  %60 = xor i32 %58, %59, !dbg !143
  %61 = and i32 %value_phi208, %value_phi207, !dbg !144
  %62 = xor i32 %value_phi208, -1, !dbg !147
  %63 = and i32 %value_phi206, %62, !dbg !144
  %memoryref_offset217 = shl nuw nsw i64 %value_phi203, 2, !dbg !138
  %64 = getelementptr i8, ptr %memoryref_data215.pre, i64 %memoryref_offset217, !dbg !138
  %memoryref_data223 = getelementptr i8, ptr %64, i64 -4, !dbg !138
  %65 = load i32, ptr %memoryref_data223, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350 = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217, !dbg !138
  %66 = load i32, ptr %gep350, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %67 = add i32 %63, %value_phi205, !dbg !149
  %68 = add i32 %67, %61, !dbg !151
  %69 = add i32 %68, %60, !dbg !149
  %70 = add i32 %69, %65, !dbg !152
  %71 = add i32 %70, %66, !dbg !154
  %72 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 30), !dbg !156
  %73 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 19), !dbg !156
  %74 = xor i32 %72, %73, !dbg !159
  %75 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 10), !dbg !156
  %76 = xor i32 %74, %75, !dbg !159
  %77 = xor i32 %value_phi211, %value_phi210, !dbg !160
  %78 = and i32 %value_phi212, %77, !dbg !160
  %79 = and i32 %value_phi211, %value_phi210, !dbg !162
  %80 = xor i32 %78, %79, !dbg !160
  %81 = add i32 %76, %80, !dbg !163
  %82 = add i32 %71, %value_phi209, !dbg !165
  %83 = add i32 %81, %71, !dbg !167
  %84 = add nuw nsw i64 %value_phi203, 1, !dbg !169
  %exitcond160.not = icmp eq i64 %value_phi203, %exit.mainloop.at404, !dbg !139
  br i1 %exitcond160.not, label %main.exit.selector406, label %L438, !dbg !139

main.exit.selector406:                            ; preds = %L438
  %85 = icmp ult i64 %umin402, 64, !dbg !139
  br i1 %85, label %main.pseudo.exit407, label %L476, !dbg !139

main.pseudo.exit407:                              ; preds = %main.exit.selector406, %L381.preheader
  %value_phi203.copy = phi i64 [ 1, %L381.preheader ], [ %55, %main.exit.selector406 ]
  %value_phi205.copy = phi i32 [ %value_phi14, %L381.preheader ], [ %value_phi206, %main.exit.selector406 ]
  %value_phi206.copy = phi i32 [ %value_phi15, %L381.preheader ], [ %value_phi207, %main.exit.selector406 ]
  %value_phi207.copy = phi i32 [ %value_phi16, %L381.preheader ], [ %value_phi208, %main.exit.selector406 ]
  %value_phi208.copy = phi i32 [ %value_phi17, %L381.preheader ], [ %82, %main.exit.selector406 ]
  %value_phi209.copy = phi i32 [ %value_phi18, %L381.preheader ], [ %value_phi210, %main.exit.selector406 ]
  %value_phi210.copy = phi i32 [ %value_phi19, %L381.preheader ], [ %value_phi211, %main.exit.selector406 ]
  %value_phi211.copy = phi i32 [ %value_phi20, %L381.preheader ], [ %value_phi212, %main.exit.selector406 ]
  %value_phi212.copy = phi i32 [ %value_phi21, %L381.preheader ], [ %83, %main.exit.selector406 ]
  %mv.h14 = icmp ugt i64 %.size.0.copyload, 63
  %mv.h15 = icmp ugt i64 %"new::Array.size225.0.copyload", 63
  %mv.h16 = and i1 %mv.h14, %mv.h15
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %L381.postloop.mv.fast.preheader, label %L381.postloop.preheader

L381.postloop.preheader:                          ; preds = %main.pseudo.exit407
  %86 = add nsw i64 %value_phi203.copy, -1, !dbg !136
  %umax161 = call i64 @llvm.umax.i64(i64 %.size.0.copyload, i64 %86), !dbg !136
  %87 = add i64 %umax161, 1, !dbg !136
  %88 = sub i64 %87, %value_phi203.copy, !dbg !136
  %umax162 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload", i64 %86), !dbg !136
  %89 = add i64 %umax162, 1, !dbg !136
  %90 = sub i64 %89, %value_phi203.copy, !dbg !136
  %umin163 = call i64 @llvm.umin.i64(i64 %90, i64 %88), !dbg !136
  %91 = sub nsw i64 64, %value_phi203.copy, !dbg !136
  %umin164 = call i64 @llvm.umin.i64(i64 %umin163, i64 %91), !dbg !136
  %.not187 = icmp eq i64 %88, %umin164, !dbg !136
  br i1 %.not187, label %odessy.chk14, label %L381.postloop.preheader.split, !dbg !136

L381.postloop.preheader.split:                    ; preds = %L381.postloop.preheader
  %.not188 = icmp eq i64 %90, %umin164, !dbg !136
  br i1 %.not188, label %odessy.chk15, label %L381.postloop.preheader.split.split, !dbg !136

L381.postloop.preheader.split.split:              ; preds = %L381.postloop.preheader.split
  %memoryref_data215.postloop.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop, !dbg !136

L381.postloop.mv.fast.preheader:                  ; preds = %main.pseudo.exit407
  %memoryref_data215.postloop.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast, !dbg !139

L381.postloop.mv.fast:                            ; preds = %L381.postloop.mv.fast.preheader, %L381.postloop.mv.fast
  %value_phi203.postloop.mv.fast = phi i64 [ %120, %L381.postloop.mv.fast ], [ %value_phi203.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi205.postloop.mv.fast = phi i32 [ %value_phi206.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi205.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi206.postloop.mv.fast = phi i32 [ %value_phi207.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi206.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi207.postloop.mv.fast = phi i32 [ %value_phi208.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi207.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi208.postloop.mv.fast = phi i32 [ %118, %L381.postloop.mv.fast ], [ %value_phi208.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi209.postloop.mv.fast = phi i32 [ %value_phi210.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi209.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi210.postloop.mv.fast = phi i32 [ %value_phi211.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi210.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi211.postloop.mv.fast = phi i32 [ %value_phi212.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi211.copy, %L381.postloop.mv.fast.preheader ]
  %value_phi212.postloop.mv.fast = phi i32 [ %119, %L381.postloop.mv.fast ], [ %value_phi212.copy, %L381.postloop.mv.fast.preheader ]
  %92 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 26), !dbg !140
  %93 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 21), !dbg !140
  %94 = xor i32 %92, %93, !dbg !143
  %95 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 7), !dbg !140
  %96 = xor i32 %94, %95, !dbg !143
  %97 = and i32 %value_phi208.postloop.mv.fast, %value_phi207.postloop.mv.fast, !dbg !144
  %98 = xor i32 %value_phi208.postloop.mv.fast, -1, !dbg !147
  %99 = and i32 %value_phi206.postloop.mv.fast, %98, !dbg !144
  %memoryref_offset217.postloop.mv.fast = shl i64 %value_phi203.postloop.mv.fast, 2, !dbg !138
  %100 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast, i64 %memoryref_offset217.postloop.mv.fast, !dbg !138
  %memoryref_data223.postloop.mv.fast = getelementptr i8, ptr %100, i64 -4, !dbg !138
  %101 = load i32, ptr %memoryref_data223.postloop.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop.mv.fast = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop.mv.fast, !dbg !138
  %102 = load i32, ptr %gep350.postloop.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %103 = add i32 %99, %value_phi205.postloop.mv.fast, !dbg !149
  %104 = add i32 %103, %97, !dbg !151
  %105 = add i32 %104, %96, !dbg !149
  %106 = add i32 %105, %101, !dbg !152
  %107 = add i32 %106, %102, !dbg !154
  %108 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 30), !dbg !156
  %109 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 19), !dbg !156
  %110 = xor i32 %108, %109, !dbg !159
  %111 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 10), !dbg !156
  %112 = xor i32 %110, %111, !dbg !159
  %113 = xor i32 %value_phi211.postloop.mv.fast, %value_phi210.postloop.mv.fast, !dbg !160
  %114 = and i32 %value_phi212.postloop.mv.fast, %113, !dbg !160
  %115 = and i32 %value_phi211.postloop.mv.fast, %value_phi210.postloop.mv.fast, !dbg !162
  %116 = xor i32 %114, %115, !dbg !160
  %117 = add i32 %112, %116, !dbg !163
  %118 = add i32 %107, %value_phi209.postloop.mv.fast, !dbg !165
  %119 = add i32 %117, %107, !dbg !167
  %.not298.not.postloop.mv.fast = icmp eq i64 %value_phi203.postloop.mv.fast, 64, !dbg !170
  %120 = add i64 %value_phi203.postloop.mv.fast, 1, !dbg !169
  br i1 %.not298.not.postloop.mv.fast, label %L476, label %L381.postloop.mv.fast, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

L476:                                             ; preds = %L381.postloop, %L381.postloop.mv.fast, %main.exit.selector406
  %.lcssa345 = phi i32 [ %82, %main.exit.selector406 ], [ %118, %L381.postloop.mv.fast ], [ %382, %L381.postloop ], !dbg !165
  %.lcssa344 = phi i32 [ %83, %main.exit.selector406 ], [ %119, %L381.postloop.mv.fast ], [ %383, %L381.postloop ], !dbg !167
  %value_phi206.lcssa341 = phi i32 [ %value_phi206, %main.exit.selector406 ], [ %value_phi206.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi206.postloop, %L381.postloop ]
  %value_phi207.lcssa339 = phi i32 [ %value_phi207, %main.exit.selector406 ], [ %value_phi207.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi207.postloop, %L381.postloop ]
  %value_phi208.lcssa337 = phi i32 [ %value_phi208, %main.exit.selector406 ], [ %value_phi208.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi208.postloop, %L381.postloop ]
  %value_phi210.lcssa335 = phi i32 [ %value_phi210, %main.exit.selector406 ], [ %value_phi210.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi210.postloop, %L381.postloop ]
  %value_phi211.lcssa333 = phi i32 [ %value_phi211, %main.exit.selector406 ], [ %value_phi211.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi211.postloop, %L381.postloop ]
  %value_phi212.lcssa331 = phi i32 [ %value_phi212, %main.exit.selector406 ], [ %value_phi212.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi212.postloop, %L381.postloop ]
  %121 = add i32 %.lcssa344, %value_phi21, !dbg !172
  %122 = add i32 %value_phi212.lcssa331, %value_phi20, !dbg !172
  %123 = add i32 %value_phi211.lcssa333, %value_phi19, !dbg !172
  %124 = add i32 %value_phi210.lcssa335, %value_phi18, !dbg !172
  %125 = add i32 %.lcssa345, %value_phi17, !dbg !174
  %126 = add i32 %value_phi208.lcssa337, %value_phi16, !dbg !174
  %127 = add i32 %value_phi207.lcssa339, %value_phi15, !dbg !174
  %128 = add i32 %value_phi206.lcssa341, %value_phi14, !dbg !174
  %.not299.not = icmp eq i64 %value_phi12, %value_phi8, !dbg !176
  %129 = add nuw nsw i64 %value_phi12, 1, !dbg !177
  br i1 %.not299.not, label %L495.loopexit, label %L41, !dbg !178

L495.loopexit:                                    ; preds = %L476, %L476.mv.fast
  %"new::Array.size225.0.copyload.lcssa32" = phi i64 [ %"new::Array.size225.0.copyload.mv.fast", %L476.mv.fast ], [ %"new::Array.size225.0.copyload", %L476 ]
  %memoryref_data228.lcssa30 = phi ptr [ %memoryref_data87.mv.fast, %L476.mv.fast ], [ %memoryref_data87, %L476 ]
  %.lcssa28 = phi i32 [ %279, %L476.mv.fast ], [ %121, %L476 ], !dbg !172
  %.lcssa27 = phi i32 [ %286, %L476.mv.fast ], [ %128, %L476 ], !dbg !174
  %130 = add i32 %.lcssa28, %value_phi7, !dbg !179
  %131 = add i32 %130, %.lcssa27, !dbg !179
  %.not300.not = icmp eq i64 %value_phi6, %".iters::Int64", !dbg !181
  %132 = add nuw i64 %value_phi6, 1, !dbg !182
  br i1 %.not300.not, label %L509, label %pass, !dbg !183

L509:                                             ; preds = %L495.loopexit, %pass.preheader.split.us, %top
  %value_phi247 = phi i32 [ 0, %top ], [ %7, %pass.preheader.split.us ], [ %131, %L495.loopexit ]
  %frame.prev689 = load ptr, ptr %frame.prev, align 8, !tbaa !21
  store ptr %frame.prev689, ptr %pgcstack, align 8, !tbaa !21
  ret i32 %value_phi247, !dbg !71

pass:                                             ; preds = %pass.preheader, %L495.loopexit
  %memoryref_data69421 = phi ptr [ %memoryref_data228.lcssa30, %L495.loopexit ], [ %memory_data, %pass.preheader ]
  %"new::Array.size84.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload.lcssa32", %L495.loopexit ], [ 64, %pass.preheader ]
  %value_phi6 = phi i64 [ %132, %L495.loopexit ], [ 1, %pass.preheader ]
  %value_phi7 = phi i32 [ %131, %L495.loopexit ], [ 0, %pass.preheader ]
  %"new::Array.size84.0.copyload.fr" = freeze i64 %"new::Array.size84.0.copyload", !dbg !67
  %smin362 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload.fr", i64 -2), !dbg !67
  %133 = sub i64 %"new::Array.size84.0.copyload.fr", %smin362, !dbg !67
  %smin363 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload.fr", i64 0), !dbg !67
  %smax364 = call i64 @llvm.smax.i64(i64 %smin363, i64 -1), !dbg !67
  %134 = add nsw i64 %smax364, 1, !dbg !67
  %135 = mul nuw nsw i64 %134, %133, !dbg !67
  %smin365 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload.fr", i64 -7), !dbg !67
  %136 = sub i64 %"new::Array.size84.0.copyload.fr", %smin365, !dbg !67
  %137 = mul nuw nsw i64 %134, %136, !dbg !67
  %umin = call i64 @llvm.umin.i64(i64 %135, i64 %137), !dbg !67
  %smin366 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload.fr", i64 -15), !dbg !67
  %138 = sub i64 %"new::Array.size84.0.copyload.fr", %smin366, !dbg !67
  %139 = mul nuw nsw i64 %134, %138, !dbg !67
  %umin367 = call i64 @llvm.umin.i64(i64 %umin, i64 %139), !dbg !67
  %smin368 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload.fr", i64 -16), !dbg !67
  %140 = sub i64 %"new::Array.size84.0.copyload.fr", %smin368, !dbg !67
  %141 = mul nuw nsw i64 %134, %140, !dbg !67
  %umin369 = call i64 @llvm.umin.i64(i64 %umin367, i64 %141), !dbg !67
  %142 = sub i64 %"new::Array.size84.0.copyload.fr", %smin363, !dbg !67
  %143 = mul nuw nsw i64 %134, %142, !dbg !67
  %umin370 = call i64 @llvm.umin.i64(i64 %umin369, i64 %143), !dbg !67
  %mv.h36 = icmp ugt i64 %"new::Array.size84.0.copyload.fr", 63, !dbg !67
  %144 = icmp ugt i64 %umin370, 16
  %umax171 = call i64 @llvm.umax.i64(i64 %umin370, i64 16), !dbg !67
  %umin172 = call i64 @llvm.umin.i64(i64 %umax171, i64 64), !dbg !67
  %145 = add nuw nsw i64 %umin172, 1, !dbg !67
  br i1 %mv.h36, label %L41.mv.fast, label %L41

L41.mv.fast:                                      ; preds = %pass, %L476.mv.fast
  %memoryref_data69.mv.fast = phi ptr [ %memoryref_data87.mv.fast, %L476.mv.fast ], [ %memoryref_data69421, %pass ]
  %"new::Array.size.0.copyload.mv.fast" = phi i64 [ %"new::Array.size225.0.copyload.mv.fast", %L476.mv.fast ], [ %"new::Array.size84.0.copyload.fr", %pass ]
  %value_phi12.mv.fast = phi i64 [ %287, %L476.mv.fast ], [ 1, %pass ]
  %value_phi14.mv.fast = phi i32 [ %286, %L476.mv.fast ], [ 1541459225, %pass ]
  %value_phi15.mv.fast = phi i32 [ %285, %L476.mv.fast ], [ 528734635, %pass ]
  %value_phi16.mv.fast = phi i32 [ %284, %L476.mv.fast ], [ -1694144372, %pass ]
  %value_phi17.mv.fast = phi i32 [ %283, %L476.mv.fast ], [ 1359893119, %pass ]
  %value_phi18.mv.fast = phi i32 [ %282, %L476.mv.fast ], [ -1521486534, %pass ]
  %value_phi19.mv.fast = phi i32 [ %281, %L476.mv.fast ], [ 1013904242, %pass ]
  %value_phi20.mv.fast = phi i32 [ %280, %L476.mv.fast ], [ -1150833019, %pass ]
  %value_phi21.mv.fast = phi i32 [ %279, %L476.mv.fast ], [ 1779033703, %pass ]
  %"new::Array.size.0.copyload.mv.fast.fr" = freeze i64 %"new::Array.size.0.copyload.mv.fast"
  %146 = shl i64 %value_phi12.mv.fast, 6, !dbg !72
  %memoryref_data.mv.fast = load ptr, ptr %"data::Array", align 8
  %invariant.gep.mv.fast = getelementptr i8, ptr %memoryref_data69.mv.fast, i64 -4, !dbg !67
  %smin.mv.fast = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload.mv.fast.fr", i64 0), !dbg !67
  %147 = sub i64 %"new::Array.size.0.copyload.mv.fast.fr", %smin.mv.fast, !dbg !67
  %smax.mv.fast = call i64 @llvm.smax.i64(i64 %smin.mv.fast, i64 -1), !dbg !67
  %148 = add nsw i64 %smax.mv.fast, 1, !dbg !67
  %149 = mul nuw nsw i64 %148, %147, !dbg !67
  %.not485.mv.fast = icmp eq i64 %149, 0, !dbg !67
  br i1 %.not485.mv.fast, label %main.pseudo.exit.mv.fast, label %L53.mv.fast.preheader, !dbg !67

L53.mv.fast.preheader:                            ; preds = %L41.mv.fast
  %exit.mainloop.at.mv.fast = call i64 @llvm.umin.i64(i64 %149, i64 16), !dbg !67
  %150 = add nuw nsw i64 %exit.mainloop.at.mv.fast, 1, !dbg !75
  br label %L53.mv.fast, !dbg !75

L53.mv.fast:                                      ; preds = %L53.mv.fast.preheader, %L73.mv.fast
  %value_phi22.mv.fast = phi i64 [ %157, %L73.mv.fast ], [ 1, %L53.mv.fast.preheader ]
  %151 = shl i64 %value_phi22.mv.fast, 2, !dbg !79
  %152 = add nuw i64 %151, %146, !dbg !81
  %153 = add i64 %152, -68, !dbg !75
  %.not.mv.fast = icmp ult i64 %153, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.mv.fast, label %L73.mv.fast, label %odessy.chk1, !dbg !75

L73.mv.fast:                                      ; preds = %L53.mv.fast
  %154 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %152, !dbg !83
  %memoryref_data27.mv.fast = getelementptr i8, ptr %154, i64 -68, !dbg !83
  %155 = load i32, ptr %memoryref_data27.mv.fast, align 1, !dbg !83
  %156 = call i32 @llvm.bswap.i32(i32 %155), !dbg !83
  %gep.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %151, !dbg !84
  store i32 %156, ptr %gep.mv.fast, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %157 = add nuw nsw i64 %value_phi22.mv.fast, 1, !dbg !93
  %exitcond166.not = icmp eq i64 %value_phi22.mv.fast, %exit.mainloop.at.mv.fast, !dbg !94
  br i1 %exitcond166.not, label %main.exit.selector.mv.fast, label %L53.mv.fast, !dbg !94

main.exit.selector.mv.fast:                       ; preds = %L73.mv.fast
  %158 = icmp samesign ult i64 %value_phi22.mv.fast, 16, !dbg !94
  br i1 %158, label %main.pseudo.exit.mv.fast, label %L175.preheader.mv.fast, !dbg !94

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %L41.mv.fast
  %value_phi22.copy.mv.fast = phi i64 [ 1, %L41.mv.fast ], [ %150, %main.exit.selector.mv.fast ]
  %mv.h.mv.fast = icmp ugt i64 %"new::Array.size.0.copyload.mv.fast.fr", 15
  br i1 %mv.h.mv.fast, label %L53.postloop.mv.fast.mv.fast, label %L53.postloop.mv.fast39

L53.postloop.mv.fast39:                           ; preds = %main.pseudo.exit.mv.fast, %L158.postloop.mv.fast50
  %value_phi22.postloop.mv.fast40 = phi i64 [ %167, %L158.postloop.mv.fast50 ], [ %value_phi22.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %159 = shl i64 %value_phi22.postloop.mv.fast40, 2, !dbg !79
  %160 = add i64 %159, %146, !dbg !81
  %161 = add i64 %160, -68, !dbg !75
  %.not.postloop.mv.fast41 = icmp ult i64 %161, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop.mv.fast41, label %L73.postloop.mv.fast42, label %odessy.chk, !dbg !75

L73.postloop.mv.fast42:                           ; preds = %L53.postloop.mv.fast39
  %162 = add i64 %160, -65, !dbg !75
  %.not283.postloop.mv.fast47 = icmp ult i64 %162, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not283.postloop.mv.fast47, label %L138.postloop.mv.fast48, label %odessy.chk6, !dbg !75

L138.postloop.mv.fast48:                          ; preds = %L73.postloop.mv.fast42
  %163 = add i64 %value_phi22.postloop.mv.fast40, -1, !dbg !184
  %.not284.postloop.mv.fast49 = icmp ult i64 %163, %"new::Array.size.0.copyload.mv.fast.fr", !dbg !187
  br i1 %.not284.postloop.mv.fast49, label %L158.postloop.mv.fast50, label %odessy.chk8, !dbg !186

L158.postloop.mv.fast50:                          ; preds = %L138.postloop.mv.fast48
  %164 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %160, !dbg !83
  %memoryref_data27.postloop.mv.fast51 = getelementptr i8, ptr %164, i64 -68, !dbg !83
  %165 = load i32, ptr %memoryref_data27.postloop.mv.fast51, align 1, !dbg !83
  %166 = call i32 @llvm.bswap.i32(i32 %165), !dbg !83
  %gep.postloop.mv.fast55 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %159, !dbg !84
  store i32 %166, ptr %gep.postloop.mv.fast55, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop.mv.fast56 = icmp eq i64 %value_phi22.postloop.mv.fast40, 16, !dbg !95
  %167 = add i64 %value_phi22.postloop.mv.fast40, 1, !dbg !93
  br i1 %.not285.not.postloop.mv.fast56, label %L175.preheader.mv.fast, label %L53.postloop.mv.fast39, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L175.preheader.mv.fast:                           ; preds = %L158.postloop.mv.fast50, %L138.postloop.mv.fast.mv.fast, %main.exit.selector.mv.fast
  %memoryref_data87.mv.fast = load ptr, ptr %"new::Array", align 8
  br i1 %144, label %L364.mv.fast, label %L175.postloop.mv.fast.preheader, !dbg !103

L364.mv.fast:                                     ; preds = %L175.preheader.mv.fast, %L364.mv.fast
  %value_phi81.mv.fast = phi i64 [ %186, %L364.mv.fast ], [ 17, %L175.preheader.mv.fast ]
  %memoryref_offset89.mv.fast = shl i64 %value_phi81.mv.fast, 2, !dbg !105
  %168 = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 %memoryref_offset89.mv.fast, !dbg !105
  %memoryref_data95.mv.fast = getelementptr i8, ptr %168, i64 -64, !dbg !105
  %169 = load i32, ptr %memoryref_data95.mv.fast, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %170 = call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 25), !dbg !106
  %171 = call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 14), !dbg !106
  %172 = xor i32 %171, %170, !dbg !110
  %173 = lshr i32 %169, 3, !dbg !112
  %174 = xor i32 %172, %173, !dbg !110
  %memoryref_data134.mv.fast = getelementptr i8, ptr %168, i64 -12, !dbg !115
  %175 = load i32, ptr %memoryref_data134.mv.fast, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %176 = call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 15), !dbg !117
  %177 = call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 13), !dbg !117
  %178 = xor i32 %177, %176, !dbg !119
  %179 = lshr i32 %175, 10, !dbg !120
  %180 = xor i32 %178, %179, !dbg !119
  %memoryref_data173.mv.fast = getelementptr i8, ptr %168, i64 -68, !dbg !122
  %181 = load i32, ptr %memoryref_data173.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.mv.fast = getelementptr i8, ptr %168, i64 -32, !dbg !122
  %182 = load i32, ptr %memoryref_data186.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %183 = add i32 %174, %181, !dbg !124
  %184 = add i32 %183, %182, !dbg !124
  %185 = add i32 %184, %180, !dbg !127
  %memoryref_data199.mv.fast = getelementptr i8, ptr %168, i64 -4, !dbg !130
  store i32 %185, ptr %memoryref_data199.mv.fast, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %186 = add nuw nsw i64 %value_phi81.mv.fast, 1, !dbg !132
  %exitcond173.not = icmp eq i64 %value_phi81.mv.fast, %umin172, !dbg !133
  br i1 %exitcond173.not, label %main.exit.selector374.mv.fast, label %L364.mv.fast, !dbg !133

main.exit.selector374.mv.fast:                    ; preds = %L364.mv.fast
  %187 = icmp samesign ult i64 %value_phi81.mv.fast, 64, !dbg !133
  br i1 %187, label %L175.postloop.mv.fast.preheader, label %L381.preheader.mv.fast, !dbg !133

L175.postloop.mv.fast.preheader:                  ; preds = %main.exit.selector374.mv.fast, %L175.preheader.mv.fast
  %value_phi81.postloop.mv.fast.ph = phi i64 [ %145, %main.exit.selector374.mv.fast ], [ 17, %L175.preheader.mv.fast ]
  br label %L175.postloop.mv.fast, !dbg !133

L175.postloop.mv.fast:                            ; preds = %L175.postloop.mv.fast.preheader, %L175.postloop.mv.fast
  %value_phi81.postloop.mv.fast = phi i64 [ %206, %L175.postloop.mv.fast ], [ %value_phi81.postloop.mv.fast.ph, %L175.postloop.mv.fast.preheader ]
  %memoryref_offset89.postloop.mv.fast = shl i64 %value_phi81.postloop.mv.fast, 2, !dbg !105
  %188 = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 %memoryref_offset89.postloop.mv.fast, !dbg !105
  %memoryref_data95.postloop.mv.fast = getelementptr i8, ptr %188, i64 -64, !dbg !105
  %189 = load i32, ptr %memoryref_data95.postloop.mv.fast, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %190 = call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 25), !dbg !106
  %191 = call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 14), !dbg !106
  %192 = xor i32 %191, %190, !dbg !110
  %193 = lshr i32 %189, 3, !dbg !112
  %194 = xor i32 %192, %193, !dbg !110
  %memoryref_data134.postloop.mv.fast = getelementptr i8, ptr %188, i64 -12, !dbg !115
  %195 = load i32, ptr %memoryref_data134.postloop.mv.fast, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %196 = call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 15), !dbg !117
  %197 = call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 13), !dbg !117
  %198 = xor i32 %197, %196, !dbg !119
  %199 = lshr i32 %195, 10, !dbg !120
  %200 = xor i32 %198, %199, !dbg !119
  %memoryref_data173.postloop.mv.fast = getelementptr i8, ptr %188, i64 -68, !dbg !122
  %201 = load i32, ptr %memoryref_data173.postloop.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.postloop.mv.fast = getelementptr i8, ptr %188, i64 -32, !dbg !122
  %202 = load i32, ptr %memoryref_data186.postloop.mv.fast, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %203 = add i32 %194, %201, !dbg !124
  %204 = add i32 %203, %202, !dbg !124
  %205 = add i32 %204, %200, !dbg !127
  %memoryref_data199.postloop.mv.fast = getelementptr i8, ptr %188, i64 -4, !dbg !130
  store i32 %205, ptr %memoryref_data199.postloop.mv.fast, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %.not295.not.postloop.mv.fast = icmp eq i64 %value_phi81.postloop.mv.fast, 64, !dbg !188
  %206 = add i64 %value_phi81.postloop.mv.fast, 1, !dbg !132
  br i1 %.not295.not.postloop.mv.fast, label %L381.preheader.mv.fast, label %L175.postloop.mv.fast, !dbg !133, !llvm.loop !189, !loop_constrainer.loop.clone !10

L381.preheader.mv.fast:                           ; preds = %L175.postloop.mv.fast, %main.exit.selector374.mv.fast
  %.size.0.copyload.mv.fast = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 32, !tbaa !54, !alias.scope !134, !noalias !135
  %"new::Array.size225.0.copyload.mv.fast" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349.mv.fast = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 -4, !dbg !136
  %smin398.mv.fast = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload.mv.fast", i64 0), !dbg !136
  %207 = sub i64 %"new::Array.size225.0.copyload.mv.fast", %smin398.mv.fast, !dbg !136
  %smax399.mv.fast = call i64 @llvm.smax.i64(i64 %smin398.mv.fast, i64 -1), !dbg !136
  %208 = add nsw i64 %smax399.mv.fast, 1, !dbg !136
  %209 = mul nuw nsw i64 %208, %207, !dbg !136
  %smin400.mv.fast = call i64 @llvm.smin.i64(i64 %.size.0.copyload.mv.fast, i64 0), !dbg !136
  %210 = sub i64 %.size.0.copyload.mv.fast, %smin400.mv.fast, !dbg !136
  %smax401.mv.fast = call i64 @llvm.smax.i64(i64 %smin400.mv.fast, i64 -1), !dbg !136
  %211 = add nsw i64 %smax401.mv.fast, 1, !dbg !136
  %212 = mul nuw nsw i64 %211, %210, !dbg !136
  %umin402.mv.fast = call i64 @llvm.umin.i64(i64 %209, i64 %212), !dbg !136
  %exit.mainloop.at404.mv.fast = call i64 @llvm.umin.i64(i64 %umin402.mv.fast, i64 64), !dbg !136
  %.not488.mv.fast = icmp eq i64 %umin402.mv.fast, 0, !dbg !136
  br i1 %.not488.mv.fast, label %main.pseudo.exit407.mv.fast, label %L438.preheader.mv.fast, !dbg !136

L438.preheader.mv.fast:                           ; preds = %L381.preheader.mv.fast
  %memoryref_data215.pre.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  %213 = add nuw nsw i64 %exit.mainloop.at404.mv.fast, 1, !dbg !139
  br label %L438.mv.fast, !dbg !139

L438.mv.fast:                                     ; preds = %L438.mv.fast, %L438.preheader.mv.fast
  %value_phi203.mv.fast = phi i64 [ %242, %L438.mv.fast ], [ 1, %L438.preheader.mv.fast ]
  %value_phi205.mv.fast = phi i32 [ %value_phi206.mv.fast, %L438.mv.fast ], [ %value_phi14.mv.fast, %L438.preheader.mv.fast ]
  %value_phi206.mv.fast = phi i32 [ %value_phi207.mv.fast, %L438.mv.fast ], [ %value_phi15.mv.fast, %L438.preheader.mv.fast ]
  %value_phi207.mv.fast = phi i32 [ %value_phi208.mv.fast, %L438.mv.fast ], [ %value_phi16.mv.fast, %L438.preheader.mv.fast ]
  %value_phi208.mv.fast = phi i32 [ %240, %L438.mv.fast ], [ %value_phi17.mv.fast, %L438.preheader.mv.fast ]
  %value_phi209.mv.fast = phi i32 [ %value_phi210.mv.fast, %L438.mv.fast ], [ %value_phi18.mv.fast, %L438.preheader.mv.fast ]
  %value_phi210.mv.fast = phi i32 [ %value_phi211.mv.fast, %L438.mv.fast ], [ %value_phi19.mv.fast, %L438.preheader.mv.fast ]
  %value_phi211.mv.fast = phi i32 [ %value_phi212.mv.fast, %L438.mv.fast ], [ %value_phi20.mv.fast, %L438.preheader.mv.fast ]
  %value_phi212.mv.fast = phi i32 [ %241, %L438.mv.fast ], [ %value_phi21.mv.fast, %L438.preheader.mv.fast ]
  %214 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 26), !dbg !140
  %215 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 21), !dbg !140
  %216 = xor i32 %214, %215, !dbg !143
  %217 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 7), !dbg !140
  %218 = xor i32 %216, %217, !dbg !143
  %219 = and i32 %value_phi208.mv.fast, %value_phi207.mv.fast, !dbg !144
  %220 = xor i32 %value_phi208.mv.fast, -1, !dbg !147
  %221 = and i32 %value_phi206.mv.fast, %220, !dbg !144
  %memoryref_offset217.mv.fast = shl nuw nsw i64 %value_phi203.mv.fast, 2, !dbg !138
  %222 = getelementptr i8, ptr %memoryref_data215.pre.mv.fast, i64 %memoryref_offset217.mv.fast, !dbg !138
  %memoryref_data223.mv.fast = getelementptr i8, ptr %222, i64 -4, !dbg !138
  %223 = load i32, ptr %memoryref_data223.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.mv.fast = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.mv.fast, !dbg !138
  %224 = load i32, ptr %gep350.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %225 = add i32 %221, %value_phi205.mv.fast, !dbg !149
  %226 = add i32 %225, %219, !dbg !151
  %227 = add i32 %226, %218, !dbg !149
  %228 = add i32 %227, %223, !dbg !152
  %229 = add i32 %228, %224, !dbg !154
  %230 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 30), !dbg !156
  %231 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 19), !dbg !156
  %232 = xor i32 %230, %231, !dbg !159
  %233 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 10), !dbg !156
  %234 = xor i32 %232, %233, !dbg !159
  %235 = xor i32 %value_phi211.mv.fast, %value_phi210.mv.fast, !dbg !160
  %236 = and i32 %value_phi212.mv.fast, %235, !dbg !160
  %237 = and i32 %value_phi211.mv.fast, %value_phi210.mv.fast, !dbg !162
  %238 = xor i32 %236, %237, !dbg !160
  %239 = add i32 %234, %238, !dbg !163
  %240 = add i32 %229, %value_phi209.mv.fast, !dbg !165
  %241 = add i32 %239, %229, !dbg !167
  %242 = add nuw nsw i64 %value_phi203.mv.fast, 1, !dbg !169
  %exitcond175.not = icmp eq i64 %value_phi203.mv.fast, %exit.mainloop.at404.mv.fast, !dbg !139
  br i1 %exitcond175.not, label %main.exit.selector406.mv.fast, label %L438.mv.fast, !dbg !139

main.exit.selector406.mv.fast:                    ; preds = %L438.mv.fast
  %243 = icmp ult i64 %umin402.mv.fast, 64, !dbg !139
  br i1 %243, label %main.pseudo.exit407.mv.fast, label %L476.mv.fast, !dbg !139

main.pseudo.exit407.mv.fast:                      ; preds = %main.exit.selector406.mv.fast, %L381.preheader.mv.fast
  %value_phi203.copy.mv.fast = phi i64 [ 1, %L381.preheader.mv.fast ], [ %213, %main.exit.selector406.mv.fast ]
  %value_phi205.copy.mv.fast = phi i32 [ %value_phi14.mv.fast, %L381.preheader.mv.fast ], [ %value_phi206.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi206.copy.mv.fast = phi i32 [ %value_phi15.mv.fast, %L381.preheader.mv.fast ], [ %value_phi207.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi207.copy.mv.fast = phi i32 [ %value_phi16.mv.fast, %L381.preheader.mv.fast ], [ %value_phi208.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi208.copy.mv.fast = phi i32 [ %value_phi17.mv.fast, %L381.preheader.mv.fast ], [ %240, %main.exit.selector406.mv.fast ]
  %value_phi209.copy.mv.fast = phi i32 [ %value_phi18.mv.fast, %L381.preheader.mv.fast ], [ %value_phi210.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi210.copy.mv.fast = phi i32 [ %value_phi19.mv.fast, %L381.preheader.mv.fast ], [ %value_phi211.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi211.copy.mv.fast = phi i32 [ %value_phi20.mv.fast, %L381.preheader.mv.fast ], [ %value_phi212.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi212.copy.mv.fast = phi i32 [ %value_phi21.mv.fast, %L381.preheader.mv.fast ], [ %241, %main.exit.selector406.mv.fast ]
  %mv.h14.mv.fast = icmp ugt i64 %.size.0.copyload.mv.fast, 63
  %mv.h15.mv.fast = icmp ugt i64 %"new::Array.size225.0.copyload.mv.fast", 63
  %mv.h16.mv.fast = and i1 %mv.h14.mv.fast, %mv.h15.mv.fast
  %mv.h.fr17.mv.fast = freeze i1 %mv.h16.mv.fast
  br i1 %mv.h.fr17.mv.fast, label %L381.postloop.mv.fast.mv.fast.preheader, label %L381.postloop.mv.fast57.preheader

L381.postloop.mv.fast57.preheader:                ; preds = %main.pseudo.exit407.mv.fast
  %244 = add nsw i64 %value_phi203.copy.mv.fast, -1, !dbg !136
  %umax176 = call i64 @llvm.umax.i64(i64 %.size.0.copyload.mv.fast, i64 %244), !dbg !136
  %245 = add i64 %umax176, 1, !dbg !136
  %246 = sub i64 %245, %value_phi203.copy.mv.fast, !dbg !136
  %umax177 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload.mv.fast", i64 %244), !dbg !136
  %247 = add i64 %umax177, 1, !dbg !136
  %248 = sub i64 %247, %value_phi203.copy.mv.fast, !dbg !136
  %umin178 = call i64 @llvm.umin.i64(i64 %248, i64 %246), !dbg !136
  %249 = sub nsw i64 64, %value_phi203.copy.mv.fast, !dbg !136
  %umin179 = call i64 @llvm.umin.i64(i64 %umin178, i64 %249), !dbg !136
  %.not189 = icmp eq i64 %246, %umin179, !dbg !136
  br i1 %.not189, label %odessy.chk14, label %L381.postloop.mv.fast57.preheader.split, !dbg !136

L381.postloop.mv.fast57.preheader.split:          ; preds = %L381.postloop.mv.fast57.preheader
  %.not190 = icmp eq i64 %248, %umin179, !dbg !136
  br i1 %.not190, label %odessy.chk15, label %L381.postloop.mv.fast57.preheader.split.split, !dbg !136

L381.postloop.mv.fast57.preheader.split.split:    ; preds = %L381.postloop.mv.fast57.preheader.split
  %memoryref_data215.postloop.mv.fast71.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast57, !dbg !136

L381.postloop.mv.fast.mv.fast.preheader:          ; preds = %main.pseudo.exit407.mv.fast
  %memoryref_data215.postloop.mv.fast.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast.mv.fast, !dbg !139

L381.postloop.mv.fast57:                          ; preds = %L381.postloop.mv.fast57.preheader.split.split, %L381.postloop.mv.fast57
  %value_phi203.postloop.mv.fast58 = phi i64 [ %278, %L381.postloop.mv.fast57 ], [ %value_phi203.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi205.postloop.mv.fast59 = phi i32 [ %value_phi206.postloop.mv.fast60, %L381.postloop.mv.fast57 ], [ %value_phi205.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi206.postloop.mv.fast60 = phi i32 [ %value_phi207.postloop.mv.fast61, %L381.postloop.mv.fast57 ], [ %value_phi206.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi207.postloop.mv.fast61 = phi i32 [ %value_phi208.postloop.mv.fast62, %L381.postloop.mv.fast57 ], [ %value_phi207.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi208.postloop.mv.fast62 = phi i32 [ %276, %L381.postloop.mv.fast57 ], [ %value_phi208.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi209.postloop.mv.fast63 = phi i32 [ %value_phi210.postloop.mv.fast64, %L381.postloop.mv.fast57 ], [ %value_phi209.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi210.postloop.mv.fast64 = phi i32 [ %value_phi211.postloop.mv.fast65, %L381.postloop.mv.fast57 ], [ %value_phi210.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi211.postloop.mv.fast65 = phi i32 [ %value_phi212.postloop.mv.fast66, %L381.postloop.mv.fast57 ], [ %value_phi211.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %value_phi212.postloop.mv.fast66 = phi i32 [ %277, %L381.postloop.mv.fast57 ], [ %value_phi212.copy.mv.fast, %L381.postloop.mv.fast57.preheader.split.split ]
  %250 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast62, i32 %value_phi208.postloop.mv.fast62, i32 26), !dbg !140
  %251 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast62, i32 %value_phi208.postloop.mv.fast62, i32 21), !dbg !140
  %252 = xor i32 %250, %251, !dbg !143
  %253 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast62, i32 %value_phi208.postloop.mv.fast62, i32 7), !dbg !140
  %254 = xor i32 %252, %253, !dbg !143
  %255 = and i32 %value_phi208.postloop.mv.fast62, %value_phi207.postloop.mv.fast61, !dbg !144
  %256 = xor i32 %value_phi208.postloop.mv.fast62, -1, !dbg !147
  %257 = and i32 %value_phi206.postloop.mv.fast60, %256, !dbg !144
  %memoryref_offset217.postloop.mv.fast72 = shl i64 %value_phi203.postloop.mv.fast58, 2, !dbg !138
  %258 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast71.pre, i64 %memoryref_offset217.postloop.mv.fast72, !dbg !138
  %memoryref_data223.postloop.mv.fast73 = getelementptr i8, ptr %258, i64 -4, !dbg !138
  %259 = load i32, ptr %memoryref_data223.postloop.mv.fast73, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop.mv.fast74 = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.postloop.mv.fast72, !dbg !138
  %260 = load i32, ptr %gep350.postloop.mv.fast74, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %261 = add i32 %257, %value_phi205.postloop.mv.fast59, !dbg !149
  %262 = add i32 %261, %255, !dbg !151
  %263 = add i32 %262, %254, !dbg !149
  %264 = add i32 %263, %259, !dbg !152
  %265 = add i32 %264, %260, !dbg !154
  %266 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast66, i32 %value_phi212.postloop.mv.fast66, i32 30), !dbg !156
  %267 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast66, i32 %value_phi212.postloop.mv.fast66, i32 19), !dbg !156
  %268 = xor i32 %266, %267, !dbg !159
  %269 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast66, i32 %value_phi212.postloop.mv.fast66, i32 10), !dbg !156
  %270 = xor i32 %268, %269, !dbg !159
  %271 = xor i32 %value_phi211.postloop.mv.fast65, %value_phi210.postloop.mv.fast64, !dbg !160
  %272 = and i32 %value_phi212.postloop.mv.fast66, %271, !dbg !160
  %273 = and i32 %value_phi211.postloop.mv.fast65, %value_phi210.postloop.mv.fast64, !dbg !162
  %274 = xor i32 %272, %273, !dbg !160
  %275 = add i32 %270, %274, !dbg !163
  %276 = add i32 %265, %value_phi209.postloop.mv.fast63, !dbg !165
  %277 = add i32 %275, %265, !dbg !167
  %.not298.not.postloop.mv.fast75 = icmp eq i64 %value_phi203.postloop.mv.fast58, 64, !dbg !170
  %278 = add i64 %value_phi203.postloop.mv.fast58, 1, !dbg !169
  br i1 %.not298.not.postloop.mv.fast75, label %L476.mv.fast, label %L381.postloop.mv.fast57, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

L476.mv.fast:                                     ; preds = %L381.postloop.mv.fast57, %L381.postloop.mv.fast.mv.fast, %main.exit.selector406.mv.fast
  %.lcssa345.mv.fast = phi i32 [ %240, %main.exit.selector406.mv.fast ], [ %322, %L381.postloop.mv.fast.mv.fast ], [ %276, %L381.postloop.mv.fast57 ], !dbg !165
  %.lcssa344.mv.fast = phi i32 [ %241, %main.exit.selector406.mv.fast ], [ %323, %L381.postloop.mv.fast.mv.fast ], [ %277, %L381.postloop.mv.fast57 ], !dbg !167
  %value_phi206.lcssa341.mv.fast = phi i32 [ %value_phi206.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi206.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi206.postloop.mv.fast60, %L381.postloop.mv.fast57 ]
  %value_phi207.lcssa339.mv.fast = phi i32 [ %value_phi207.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi207.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi207.postloop.mv.fast61, %L381.postloop.mv.fast57 ]
  %value_phi208.lcssa337.mv.fast = phi i32 [ %value_phi208.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi208.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi208.postloop.mv.fast62, %L381.postloop.mv.fast57 ]
  %value_phi210.lcssa335.mv.fast = phi i32 [ %value_phi210.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi210.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi210.postloop.mv.fast64, %L381.postloop.mv.fast57 ]
  %value_phi211.lcssa333.mv.fast = phi i32 [ %value_phi211.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi211.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi211.postloop.mv.fast65, %L381.postloop.mv.fast57 ]
  %value_phi212.lcssa331.mv.fast = phi i32 [ %value_phi212.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi212.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi212.postloop.mv.fast66, %L381.postloop.mv.fast57 ]
  %279 = add i32 %.lcssa344.mv.fast, %value_phi21.mv.fast, !dbg !172
  %280 = add i32 %value_phi212.lcssa331.mv.fast, %value_phi20.mv.fast, !dbg !172
  %281 = add i32 %value_phi211.lcssa333.mv.fast, %value_phi19.mv.fast, !dbg !172
  %282 = add i32 %value_phi210.lcssa335.mv.fast, %value_phi18.mv.fast, !dbg !172
  %283 = add i32 %.lcssa345.mv.fast, %value_phi17.mv.fast, !dbg !174
  %284 = add i32 %value_phi208.lcssa337.mv.fast, %value_phi16.mv.fast, !dbg !174
  %285 = add i32 %value_phi207.lcssa339.mv.fast, %value_phi15.mv.fast, !dbg !174
  %286 = add i32 %value_phi206.lcssa341.mv.fast, %value_phi14.mv.fast, !dbg !174
  %.not299.not.mv.fast = icmp eq i64 %value_phi12.mv.fast, %value_phi8, !dbg !176
  %287 = add nuw nsw i64 %value_phi12.mv.fast, 1, !dbg !177
  br i1 %.not299.not.mv.fast, label %L495.loopexit, label %L41.mv.fast, !dbg !178

L53.postloop.mv.fast.mv.fast:                     ; preds = %main.pseudo.exit.mv.fast, %L138.postloop.mv.fast.mv.fast
  %value_phi22.postloop.mv.fast.mv.fast = phi i64 [ %295, %L138.postloop.mv.fast.mv.fast ], [ %value_phi22.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %288 = shl i64 %value_phi22.postloop.mv.fast.mv.fast, 2, !dbg !79
  %289 = add i64 %288, %146, !dbg !81
  %290 = add i64 %289, -68, !dbg !75
  %.not.postloop.mv.fast.mv.fast = icmp ult i64 %290, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop.mv.fast.mv.fast, label %L73.postloop.mv.fast.mv.fast, label %odessy.chk, !dbg !75

L73.postloop.mv.fast.mv.fast:                     ; preds = %L53.postloop.mv.fast.mv.fast
  %291 = add i64 %289, -65, !dbg !75
  %.not283.postloop.mv.fast.mv.fast = icmp ult i64 %291, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not283.postloop.mv.fast.mv.fast, label %L138.postloop.mv.fast.mv.fast, label %odessy.chk6, !dbg !75

L138.postloop.mv.fast.mv.fast:                    ; preds = %L73.postloop.mv.fast.mv.fast
  %292 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %289, !dbg !83
  %memoryref_data27.postloop.mv.fast.mv.fast = getelementptr i8, ptr %292, i64 -68, !dbg !83
  %293 = load i32, ptr %memoryref_data27.postloop.mv.fast.mv.fast, align 1, !dbg !83
  %294 = call i32 @llvm.bswap.i32(i32 %293), !dbg !83
  %gep.postloop.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %288, !dbg !84
  store i32 %294, ptr %gep.postloop.mv.fast.mv.fast, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop.mv.fast.mv.fast = icmp eq i64 %value_phi22.postloop.mv.fast.mv.fast, 16, !dbg !95
  %295 = add i64 %value_phi22.postloop.mv.fast.mv.fast, 1, !dbg !93
  br i1 %.not285.not.postloop.mv.fast.mv.fast, label %L175.preheader.mv.fast, label %L53.postloop.mv.fast.mv.fast, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L381.postloop.mv.fast.mv.fast:                    ; preds = %L381.postloop.mv.fast.mv.fast.preheader, %L381.postloop.mv.fast.mv.fast
  %value_phi203.postloop.mv.fast.mv.fast = phi i64 [ %324, %L381.postloop.mv.fast.mv.fast ], [ %value_phi203.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi205.postloop.mv.fast.mv.fast = phi i32 [ %value_phi206.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi205.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi206.postloop.mv.fast.mv.fast = phi i32 [ %value_phi207.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi206.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi207.postloop.mv.fast.mv.fast = phi i32 [ %value_phi208.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi207.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi208.postloop.mv.fast.mv.fast = phi i32 [ %322, %L381.postloop.mv.fast.mv.fast ], [ %value_phi208.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi209.postloop.mv.fast.mv.fast = phi i32 [ %value_phi210.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi209.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi210.postloop.mv.fast.mv.fast = phi i32 [ %value_phi211.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi210.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi211.postloop.mv.fast.mv.fast = phi i32 [ %value_phi212.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi211.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %value_phi212.postloop.mv.fast.mv.fast = phi i32 [ %323, %L381.postloop.mv.fast.mv.fast ], [ %value_phi212.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader ]
  %296 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 26), !dbg !140
  %297 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 21), !dbg !140
  %298 = xor i32 %296, %297, !dbg !143
  %299 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 7), !dbg !140
  %300 = xor i32 %298, %299, !dbg !143
  %301 = and i32 %value_phi208.postloop.mv.fast.mv.fast, %value_phi207.postloop.mv.fast.mv.fast, !dbg !144
  %302 = xor i32 %value_phi208.postloop.mv.fast.mv.fast, -1, !dbg !147
  %303 = and i32 %value_phi206.postloop.mv.fast.mv.fast, %302, !dbg !144
  %memoryref_offset217.postloop.mv.fast.mv.fast = shl i64 %value_phi203.postloop.mv.fast.mv.fast, 2, !dbg !138
  %304 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast.mv.fast, i64 %memoryref_offset217.postloop.mv.fast.mv.fast, !dbg !138
  %memoryref_data223.postloop.mv.fast.mv.fast = getelementptr i8, ptr %304, i64 -4, !dbg !138
  %305 = load i32, ptr %memoryref_data223.postloop.mv.fast.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.postloop.mv.fast.mv.fast, !dbg !138
  %306 = load i32, ptr %gep350.postloop.mv.fast.mv.fast, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %307 = add i32 %303, %value_phi205.postloop.mv.fast.mv.fast, !dbg !149
  %308 = add i32 %307, %301, !dbg !151
  %309 = add i32 %308, %300, !dbg !149
  %310 = add i32 %309, %305, !dbg !152
  %311 = add i32 %310, %306, !dbg !154
  %312 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 30), !dbg !156
  %313 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 19), !dbg !156
  %314 = xor i32 %312, %313, !dbg !159
  %315 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 10), !dbg !156
  %316 = xor i32 %314, %315, !dbg !159
  %317 = xor i32 %value_phi211.postloop.mv.fast.mv.fast, %value_phi210.postloop.mv.fast.mv.fast, !dbg !160
  %318 = and i32 %value_phi212.postloop.mv.fast.mv.fast, %317, !dbg !160
  %319 = and i32 %value_phi211.postloop.mv.fast.mv.fast, %value_phi210.postloop.mv.fast.mv.fast, !dbg !162
  %320 = xor i32 %318, %319, !dbg !160
  %321 = add i32 %316, %320, !dbg !163
  %322 = add i32 %311, %value_phi209.postloop.mv.fast.mv.fast, !dbg !165
  %323 = add i32 %321, %311, !dbg !167
  %.not298.not.postloop.mv.fast.mv.fast = icmp eq i64 %value_phi203.postloop.mv.fast.mv.fast, 64, !dbg !170
  %324 = add i64 %value_phi203.postloop.mv.fast.mv.fast, 1, !dbg !169
  br i1 %.not298.not.postloop.mv.fast.mv.fast, label %L476.mv.fast, label %L381.postloop.mv.fast.mv.fast, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

L53.postloop:                                     ; preds = %main.pseudo.exit, %L158.postloop
  %value_phi22.postloop = phi i64 [ %333, %L158.postloop ], [ %value_phi22.copy, %main.pseudo.exit ]
  %325 = shl i64 %value_phi22.postloop, 2, !dbg !79
  %326 = add i64 %325, %8, !dbg !81
  %327 = add i64 %326, -68, !dbg !75
  %.not.postloop = icmp ult i64 %327, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not.postloop, label %L73.postloop, label %odessy.chk, !dbg !75

L73.postloop:                                     ; preds = %L53.postloop
  %328 = add i64 %326, -65, !dbg !75
  %.not283.postloop = icmp ult i64 %328, %"data::Array.size.0.copyload", !dbg !75
  br i1 %.not283.postloop, label %L138.postloop, label %odessy.chk6, !dbg !75

L138.postloop:                                    ; preds = %L73.postloop
  %329 = add i64 %value_phi22.postloop, -1, !dbg !184
  %.not284.postloop = icmp ult i64 %329, %"new::Array.size.0.copyload.fr", !dbg !187
  br i1 %.not284.postloop, label %L158.postloop, label %odessy.chk8, !dbg !186

L158.postloop:                                    ; preds = %L138.postloop
  %330 = getelementptr i8, ptr %memoryref_data, i64 %326, !dbg !83
  %memoryref_data27.postloop = getelementptr i8, ptr %330, i64 -68, !dbg !83
  %331 = load i32, ptr %memoryref_data27.postloop, align 1, !dbg !83
  %332 = call i32 @llvm.bswap.i32(i32 %331), !dbg !83
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %325, !dbg !84
  store i32 %332, ptr %gep.postloop, align 4, !dbg !84, !tbaa !89, !alias.scope !91, !noalias !92
  %.not285.not.postloop = icmp eq i64 %value_phi22.postloop, 16, !dbg !95
  %333 = add i64 %value_phi22.postloop, 1, !dbg !93
  br i1 %.not285.not.postloop, label %L175.preheader, label %L53.postloop, !dbg !94, !llvm.loop !98, !loop_constrainer.loop.clone !10

L175.postloop:                                    ; preds = %L175.postloop.preheader, %L364.postloop
  %value_phi81.postloop = phi i64 [ %355, %L364.postloop ], [ %value_phi81.postloop.ph, %L175.postloop.preheader ]
  %334 = add i64 %value_phi81.postloop, -16, !dbg !103
  %.not286.postloop = icmp ult i64 %334, %"new::Array.size84.0.copyload.fr", !dbg !103
  br i1 %.not286.postloop, label %L237.postloop, label %odessy.chk9, !dbg !103

L237.postloop:                                    ; preds = %L175.postloop
  %memoryref_offset89.postloop = shl i64 %value_phi81.postloop, 2, !dbg !105
  %335 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89.postloop, !dbg !105
  %memoryref_data95.postloop = getelementptr i8, ptr %335, i64 -64, !dbg !105
  %336 = load i32, ptr %memoryref_data95.postloop, align 4, !dbg !105, !tbaa !89, !alias.scope !91, !noalias !92
  %337 = call i32 @llvm.fshl.i32(i32 %336, i32 %336, i32 25), !dbg !106
  %338 = call i32 @llvm.fshl.i32(i32 %336, i32 %336, i32 14), !dbg !106
  %339 = xor i32 %338, %337, !dbg !110
  %340 = lshr i32 %336, 3, !dbg !112
  %341 = xor i32 %339, %340, !dbg !110
  %342 = add i64 %value_phi81.postloop, -3, !dbg !190
  %.not289.postloop = icmp ult i64 %342, %"new::Array.size84.0.copyload.fr", !dbg !190
  br i1 %.not289.postloop, label %L303.postloop, label %odessy.chk10, !dbg !190

L303.postloop:                                    ; preds = %L237.postloop
  %343 = add i64 %value_phi81.postloop, -1, !dbg !191
  %.not294.postloop = icmp ult i64 %343, %"new::Array.size84.0.copyload.fr", !dbg !193
  br i1 %.not294.postloop, label %L364.postloop, label %odessy.chk13, !dbg !192

L364.postloop:                                    ; preds = %L303.postloop
  %memoryref_data134.postloop = getelementptr i8, ptr %335, i64 -12, !dbg !115
  %344 = load i32, ptr %memoryref_data134.postloop, align 4, !dbg !115, !tbaa !89, !alias.scope !91, !noalias !92
  %345 = call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 13), !dbg !117
  %346 = call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 15), !dbg !117
  %347 = xor i32 %345, %346, !dbg !119
  %348 = lshr i32 %344, 10, !dbg !120
  %349 = xor i32 %347, %348, !dbg !119
  %memoryref_data173.postloop = getelementptr i8, ptr %335, i64 -68, !dbg !122
  %350 = load i32, ptr %memoryref_data173.postloop, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %memoryref_data186.postloop = getelementptr i8, ptr %335, i64 -32, !dbg !122
  %351 = load i32, ptr %memoryref_data186.postloop, align 4, !dbg !122, !tbaa !89, !alias.scope !91, !noalias !92
  %352 = add i32 %350, %341, !dbg !124
  %353 = add i32 %352, %351, !dbg !124
  %354 = add i32 %353, %349, !dbg !127
  %memoryref_data199.postloop = getelementptr i8, ptr %335, i64 -4, !dbg !130
  store i32 %354, ptr %memoryref_data199.postloop, align 4, !dbg !130, !tbaa !89, !alias.scope !91, !noalias !92
  %.not295.not.postloop = icmp eq i64 %value_phi81.postloop, 64, !dbg !188
  %355 = add i64 %value_phi81.postloop, 1, !dbg !132
  br i1 %.not295.not.postloop, label %L381.preheader, label %L175.postloop, !dbg !133, !llvm.loop !189, !loop_constrainer.loop.clone !10

L381.postloop:                                    ; preds = %L381.postloop.preheader.split.split, %L381.postloop
  %value_phi203.postloop = phi i64 [ %384, %L381.postloop ], [ %value_phi203.copy, %L381.postloop.preheader.split.split ]
  %value_phi205.postloop = phi i32 [ %value_phi206.postloop, %L381.postloop ], [ %value_phi205.copy, %L381.postloop.preheader.split.split ]
  %value_phi206.postloop = phi i32 [ %value_phi207.postloop, %L381.postloop ], [ %value_phi206.copy, %L381.postloop.preheader.split.split ]
  %value_phi207.postloop = phi i32 [ %value_phi208.postloop, %L381.postloop ], [ %value_phi207.copy, %L381.postloop.preheader.split.split ]
  %value_phi208.postloop = phi i32 [ %382, %L381.postloop ], [ %value_phi208.copy, %L381.postloop.preheader.split.split ]
  %value_phi209.postloop = phi i32 [ %value_phi210.postloop, %L381.postloop ], [ %value_phi209.copy, %L381.postloop.preheader.split.split ]
  %value_phi210.postloop = phi i32 [ %value_phi211.postloop, %L381.postloop ], [ %value_phi210.copy, %L381.postloop.preheader.split.split ]
  %value_phi211.postloop = phi i32 [ %value_phi212.postloop, %L381.postloop ], [ %value_phi211.copy, %L381.postloop.preheader.split.split ]
  %value_phi212.postloop = phi i32 [ %383, %L381.postloop ], [ %value_phi212.copy, %L381.postloop.preheader.split.split ]
  %356 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 26), !dbg !140
  %357 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 21), !dbg !140
  %358 = xor i32 %356, %357, !dbg !143
  %359 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 7), !dbg !140
  %360 = xor i32 %358, %359, !dbg !143
  %361 = and i32 %value_phi208.postloop, %value_phi207.postloop, !dbg !144
  %362 = xor i32 %value_phi208.postloop, -1, !dbg !147
  %363 = and i32 %value_phi206.postloop, %362, !dbg !144
  %memoryref_offset217.postloop = shl i64 %value_phi203.postloop, 2, !dbg !138
  %364 = getelementptr i8, ptr %memoryref_data215.postloop.pre, i64 %memoryref_offset217.postloop, !dbg !138
  %memoryref_data223.postloop = getelementptr i8, ptr %364, i64 -4, !dbg !138
  %365 = load i32, ptr %memoryref_data223.postloop, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %gep350.postloop = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop, !dbg !138
  %366 = load i32, ptr %gep350.postloop, align 4, !dbg !138, !tbaa !89, !alias.scope !91, !noalias !92
  %367 = add i32 %363, %value_phi205.postloop, !dbg !149
  %368 = add i32 %367, %361, !dbg !151
  %369 = add i32 %368, %360, !dbg !149
  %370 = add i32 %369, %365, !dbg !152
  %371 = add i32 %370, %366, !dbg !154
  %372 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 30), !dbg !156
  %373 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 19), !dbg !156
  %374 = xor i32 %372, %373, !dbg !159
  %375 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 10), !dbg !156
  %376 = xor i32 %374, %375, !dbg !159
  %377 = xor i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !160
  %378 = and i32 %value_phi212.postloop, %377, !dbg !160
  %379 = and i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !162
  %380 = xor i32 %378, %379, !dbg !160
  %381 = add i32 %376, %380, !dbg !163
  %382 = add i32 %371, %value_phi209.postloop, !dbg !165
  %383 = add i32 %381, %371, !dbg !167
  %.not298.not.postloop = icmp eq i64 %value_phi203.postloop, 64, !dbg !170
  %384 = add i64 %value_phi203.postloop, 1, !dbg !169
  br i1 %.not298.not.postloop, label %L476, label %L381.postloop, !dbg !139, !llvm.loop !171, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L53.postloop, %L53.postloop.mv.fast, %L53.postloop.mv.fast39, %L53.postloop.mv.fast.mv.fast
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L53, %L53.mv.fast
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk6:                                      ; preds = %L73.postloop, %L73.postloop.mv.fast, %L73.postloop.mv.fast42, %L73.postloop.mv.fast.mv.fast
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk8:                                      ; preds = %L138.postloop, %L138.postloop.mv.fast48
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
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#sha256_sum", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "123287494636624")
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
