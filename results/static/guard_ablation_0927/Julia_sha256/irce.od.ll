; ModuleID = 'results/static/guard_ablation_0927/Julia_sha256/irce.ll'
source_filename = "sha256_sum"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 133223586669392 to ptr)
@"+Core.GenericMemory#149.jit" = private alias ptr, inttoptr (i64 133223756025472 to ptr)
@"+Core.Array#150.jit" = private alias ptr, inttoptr (i64 133223756027920 to ptr)

define swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"data::Array", i64 signext %"iters::Int64") #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %gcframe1, i8 0, i64 24, i1 true)
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple248" = alloca [1 x i64], align 8
  %"new::Tuple251" = alloca [1 x i64], align 8
  %"new::Tuple253" = alloca [1 x i64], align 8
  %"new::Tuple255" = alloca [1 x i64], align 8
  %"new::Tuple261" = alloca [1 x i64], align 8
  %"new::Tuple267" = alloca [1 x i64], align 8
  %"new::Tuple269" = alloca [1 x i64], align 8
  %"new::Tuple271" = alloca [1 x i64], align 8
  %"new::Tuple273" = alloca [1 x i64], align 8
  %"new::Tuple275" = alloca [1 x i64], align 8
  %"new::Tuple277" = alloca [1 x i64], align 8
  store i64 4, ptr %gcframe1, align 8, !tbaa !21
  %frame.prev = getelementptr inbounds ptr, ptr %gcframe1, i64 1
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !21
  store ptr %gcframe1, ptr %pgcstack, align 8
    #dbg_declare(ptr %"data::Array", !19, !DIExpression(), !25)
    #dbg_value(i64 %"iters::Int64", !20, !DIExpression(), !25)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !21
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !25
  fence syncscope("singlethread") seq_cst
  %ptls_load644 = load ptr, ptr %ptls_field, align 8, !dbg !28, !tbaa !21
  %"Memory{UInt32}[]" = call noalias nonnull align 8 dereferenceable(288) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 960, i32 288, i64 133223756025472) #9, !dbg !28
  %"Memory{UInt32}[].tag_addr" = getelementptr inbounds i64, ptr %"Memory{UInt32}[]", i64 -1, !dbg !28
  store atomic i64 133223756025472, ptr %"Memory{UInt32}[].tag_addr" unordered, align 8, !dbg !28, !tbaa !35
  %memory_ptr = getelementptr inbounds { i64, ptr }, ptr %"Memory{UInt32}[]", i64 0, i32 1, !dbg !28
  %memory_data = getelementptr inbounds i8, ptr %"Memory{UInt32}[]", i64 16, !dbg !28
  store ptr %memory_data, ptr %memory_ptr, align 8, !dbg !28, !tbaa !38, !alias.scope !41, !noalias !44
  store i64 64, ptr %"Memory{UInt32}[]", align 8, !dbg !28, !tbaa !49, !alias.scope !41, !noalias !44
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  store ptr %"Memory{UInt32}[]", ptr %gc_slot_addr_0, align 8
  %"new::Array" = call noalias nonnull align 8 dereferenceable(32) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 408, i32 32, i64 133223756027920) #9, !dbg !51
  %"new::Array.tag_addr" = getelementptr inbounds i64, ptr %"new::Array", i64 -1, !dbg !51
  store atomic i64 133223756027920, ptr %"new::Array.tag_addr" unordered, align 8, !dbg !51, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %"new::Array", i64 8, !dbg !51
  store ptr %memory_data, ptr %"new::Array", align 8, !dbg !51, !tbaa !52, !alias.scope !41, !noalias !44
  store ptr %"Memory{UInt32}[]", ptr %2, align 8, !dbg !51, !tbaa !52, !alias.scope !41, !noalias !44
  %"new::Array.size_ptr" = getelementptr inbounds i8, ptr %"new::Array", i64 16, !dbg !51
  store i64 64, ptr %"new::Array.size_ptr", align 8, !dbg !51, !tbaa !54, !alias.scope !55, !noalias !56
  %".iters::Int64" = call i64 @llvm.smax.i64(i64 %"iters::Int64", i64 0), !dbg !57
  %3 = icmp slt i64 %"iters::Int64", 1, !dbg !58
  br i1 %3, label %L509, label %pass.preheader, !dbg !69

pass.preheader:                                   ; preds = %top
  %"data::Array.size_ptr" = getelementptr inbounds i8, ptr %"data::Array", i64 16
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8
  %4 = sdiv i64 %"data::Array.size.0.copyload", 64
  %5 = icmp slt i64 %"data::Array.size.0.copyload", 64
  %value_phi8 = select i1 %5, i64 0, i64 %4
  %6 = icmp slt i64 %value_phi8, 1
  br i1 %6, label %pass.preheader.split.us, label %pass, !dbg !70

pass.preheader.split.us:                          ; preds = %pass.preheader
  %7 = trunc i64 %".iters::Int64" to i32, !dbg !70
  %8 = mul i32 %7, -974474368, !dbg !70
  br label %L509, !dbg !71

L41:                                              ; preds = %pass, %L476
  %memoryref_data69 = phi ptr [ %memoryref_data228, %L476 ], [ %memoryref_data69421, %pass ]
  %"new::Array.size.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload", %L476 ], [ %"new::Array.size84.0.copyload", %pass ]
  %value_phi12 = phi i64 [ %101, %L476 ], [ 1, %pass ]
  %value_phi14 = phi i32 [ %100, %L476 ], [ 1541459225, %pass ]
  %value_phi15 = phi i32 [ %99, %L476 ], [ 528734635, %pass ]
  %value_phi16 = phi i32 [ %98, %L476 ], [ -1694144372, %pass ]
  %value_phi17 = phi i32 [ %97, %L476 ], [ 1359893119, %pass ]
  %value_phi18 = phi i32 [ %96, %L476 ], [ -1521486534, %pass ]
  %value_phi19 = phi i32 [ %95, %L476 ], [ 1013904242, %pass ]
  %value_phi20 = phi i32 [ %94, %L476 ], [ -1150833019, %pass ]
  %value_phi21 = phi i32 [ %93, %L476 ], [ 1779033703, %pass ]
  %9 = shl i64 %value_phi12, 6, !dbg !72
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data69, i64 -4, !dbg !67
  %smin = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload", i64 0), !dbg !67
  %10 = sub i64 %"new::Array.size.0.copyload", %smin, !dbg !67
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 -1), !dbg !67
  %11 = add nsw i64 %smax, 1, !dbg !67
  %12 = mul nuw nsw i64 %10, %11, !dbg !67
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %12, i64 16), !dbg !67
  %.not485 = icmp eq i64 %12, 0, !dbg !67
  br i1 %.not485, label %main.pseudo.exit, label %L53, !dbg !67

L53:                                              ; preds = %L41, %L73
  %value_phi22 = phi i64 [ %34, %L73 ], [ 1, %L41 ]
  %13 = shl i64 %value_phi22, 2, !dbg !75
  %14 = add i64 %13, %9, !dbg !77
  %15 = add i64 %14, -68, !dbg !79
  %.not = icmp ult i64 %15, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not, label %L73, label %odessy.chk1, !dbg !79

L73:                                              ; preds = %L53
  %16 = add i64 %14, -67, !dbg !79
  %.not281 = icmp ult i64 %16, %"data::Array.size.0.copyload", !dbg !79
  %17 = add i64 %14, -66, !dbg !79
  %.not282 = icmp ult i64 %17, %"data::Array.size.0.copyload", !dbg !79
  %18 = add i64 %14, -65, !dbg !79
  %.not283 = icmp ult i64 %18, %"data::Array.size.0.copyload", !dbg !79
  %19 = getelementptr i8, ptr %memoryref_data, i64 %14, !dbg !83
  %memoryref_data27 = getelementptr i8, ptr %19, i64 -68, !dbg !83
  %20 = load i8, ptr %memoryref_data27, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %21 = zext i8 %20 to i32, !dbg !88
  %22 = shl nuw i32 %21, 24, !dbg !92
  %memoryref_data40 = getelementptr i8, ptr %19, i64 -67, !dbg !83
  %23 = load i8, ptr %memoryref_data40, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %24 = zext i8 %23 to i32, !dbg !88
  %25 = shl nuw nsw i32 %24, 16, !dbg !92
  %26 = or disjoint i32 %25, %22, !dbg !95
  %memoryref_data53 = getelementptr i8, ptr %19, i64 -66, !dbg !83
  %27 = load i8, ptr %memoryref_data53, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %28 = zext i8 %27 to i32, !dbg !88
  %29 = shl nuw nsw i32 %28, 8, !dbg !92
  %30 = or disjoint i32 %26, %29, !dbg !95
  %memoryref_data66 = getelementptr i8, ptr %19, i64 -65, !dbg !83
  %31 = load i8, ptr %memoryref_data66, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %32 = zext i8 %31 to i32, !dbg !88
  %33 = or disjoint i32 %30, %32, !dbg !95
  %gep = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !97
  store i32 %33, ptr %gep, align 4, !dbg !97, !tbaa !84, !alias.scope !86, !noalias !87
  %34 = add nuw i64 %value_phi22, 1, !dbg !102
  %.not486 = icmp ult i64 %value_phi22, %exit.mainloop.at, !dbg !103
  br i1 %.not486, label %L53, label %main.exit.selector, !dbg !103

main.exit.selector:                               ; preds = %L73
  %.lcssa = phi i64 [ %34, %L73 ], !dbg !102
  %value_phi22.lcssa5 = phi i64 [ %value_phi22, %L73 ]
  %35 = icmp ult i64 %value_phi22.lcssa5, 16, !dbg !103
  br i1 %35, label %main.pseudo.exit, label %L175.preheader, !dbg !103

main.pseudo.exit:                                 ; preds = %main.exit.selector, %L41
  %value_phi22.copy = phi i64 [ 1, %L41 ], [ %.lcssa, %main.exit.selector ]
  br label %L53.postloop

L175.preheader:                                   ; preds = %L158.postloop, %main.exit.selector
  %memoryref_data87 = load ptr, ptr %"new::Array", align 8
  %36 = icmp ugt i64 %umin370, 16, !dbg !104
  br i1 %36, label %L364, label %main.pseudo.exit375, !dbg !104

L364:                                             ; preds = %L175.preheader, %L364
  %value_phi81 = phi i64 [ %55, %L364 ], [ 17, %L175.preheader ]
  %memoryref_offset89 = shl i64 %value_phi81, 2, !dbg !106
  %37 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89, !dbg !106
  %memoryref_data95 = getelementptr i8, ptr %37, i64 -64, !dbg !106
  %38 = load i32, ptr %memoryref_data95, align 4, !dbg !106, !tbaa !84, !alias.scope !86, !noalias !87
  %39 = call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 25), !dbg !107
  %40 = call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 14), !dbg !107
  %41 = xor i32 %40, %39, !dbg !110
  %42 = lshr i32 %38, 3, !dbg !112
  %43 = xor i32 %41, %42, !dbg !110
  %memoryref_data134 = getelementptr i8, ptr %37, i64 -12, !dbg !115
  %44 = load i32, ptr %memoryref_data134, align 4, !dbg !115, !tbaa !84, !alias.scope !86, !noalias !87
  %45 = call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 15), !dbg !117
  %46 = call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13), !dbg !117
  %47 = xor i32 %46, %45, !dbg !119
  %48 = lshr i32 %44, 10, !dbg !120
  %49 = xor i32 %47, %48, !dbg !119
  %memoryref_data173 = getelementptr i8, ptr %37, i64 -68, !dbg !122
  %50 = load i32, ptr %memoryref_data173, align 4, !dbg !122, !tbaa !84, !alias.scope !86, !noalias !87
  %memoryref_data186 = getelementptr i8, ptr %37, i64 -32, !dbg !122
  %51 = load i32, ptr %memoryref_data186, align 4, !dbg !122, !tbaa !84, !alias.scope !86, !noalias !87
  %52 = add i32 %49, %43, !dbg !124
  %53 = add i32 %52, %50, !dbg !124
  %54 = add i32 %53, %51, !dbg !127
  %memoryref_data199 = getelementptr i8, ptr %37, i64 -4, !dbg !130
  store i32 %54, ptr %memoryref_data199, align 4, !dbg !130, !tbaa !84, !alias.scope !86, !noalias !87
  %55 = add nuw i64 %value_phi81, 1, !dbg !132
  %.not487 = icmp ult i64 %value_phi81, %exit.mainloop.at372, !dbg !133
  br i1 %.not487, label %L364, label %main.exit.selector374, !dbg !133

main.exit.selector374:                            ; preds = %L364
  %value_phi81.lcssa = phi i64 [ %value_phi81, %L364 ]
  %.lcssa6 = phi i64 [ %55, %L364 ], !dbg !132
  %56 = icmp ult i64 %value_phi81.lcssa, 64, !dbg !133
  br i1 %56, label %main.pseudo.exit375, label %L381.preheader, !dbg !133

main.pseudo.exit375:                              ; preds = %main.exit.selector374, %L175.preheader
  %value_phi81.copy = phi i64 [ 17, %L175.preheader ], [ %.lcssa6, %main.exit.selector374 ]
  br label %L175.postloop

L381.preheader:                                   ; preds = %L364.postloop, %main.exit.selector374
  %.size.0.copyload = load i64, ptr getelementptr inbounds (ptr, ptr @"jl_global#151.jit", i64 2), align 8, !tbaa !54, !alias.scope !134, !noalias !135
  %"new::Array.size225.0.copyload" = load i64, ptr %"new::Array.size_ptr", align 8
  %memoryref_data228 = load ptr, ptr %"new::Array", align 8
  %invariant.gep349 = getelementptr i8, ptr %memoryref_data228, i64 -4, !dbg !136
  %smin398 = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload", i64 0), !dbg !136
  %57 = sub i64 %"new::Array.size225.0.copyload", %smin398, !dbg !136
  %smax399 = call i64 @llvm.smax.i64(i64 %smin398, i64 -1), !dbg !136
  %58 = add nsw i64 %smax399, 1, !dbg !136
  %59 = mul nuw nsw i64 %57, %58, !dbg !136
  %smin400 = call i64 @llvm.smin.i64(i64 %.size.0.copyload, i64 0), !dbg !136
  %60 = sub i64 %.size.0.copyload, %smin400, !dbg !136
  %smax401 = call i64 @llvm.smax.i64(i64 %smin400, i64 -1), !dbg !136
  %61 = add nsw i64 %smax401, 1, !dbg !136
  %62 = mul nuw nsw i64 %60, %61, !dbg !136
  %umin402 = call i64 @llvm.umin.i64(i64 %59, i64 %62), !dbg !136
  %exit.mainloop.at404 = call i64 @llvm.umin.i64(i64 %umin402, i64 64), !dbg !136
  %.not488 = icmp eq i64 %umin402, 0, !dbg !136
  br i1 %.not488, label %main.pseudo.exit407, label %L438.preheader, !dbg !136

L438.preheader:                                   ; preds = %L381.preheader
  %memoryref_data215.pre = load ptr, ptr @"jl_global#151.jit", align 8, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L438, !dbg !139

L438:                                             ; preds = %L438, %L438.preheader
  %value_phi203 = phi i64 [ %91, %L438 ], [ 1, %L438.preheader ]
  %value_phi205 = phi i32 [ %value_phi206, %L438 ], [ %value_phi14, %L438.preheader ]
  %value_phi206 = phi i32 [ %value_phi207, %L438 ], [ %value_phi15, %L438.preheader ]
  %value_phi207 = phi i32 [ %value_phi208, %L438 ], [ %value_phi16, %L438.preheader ]
  %value_phi208 = phi i32 [ %89, %L438 ], [ %value_phi17, %L438.preheader ]
  %value_phi209 = phi i32 [ %value_phi210, %L438 ], [ %value_phi18, %L438.preheader ]
  %value_phi210 = phi i32 [ %value_phi211, %L438 ], [ %value_phi19, %L438.preheader ]
  %value_phi211 = phi i32 [ %value_phi212, %L438 ], [ %value_phi20, %L438.preheader ]
  %value_phi212 = phi i32 [ %90, %L438 ], [ %value_phi21, %L438.preheader ]
  %63 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 26), !dbg !140
  %64 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 21), !dbg !140
  %65 = xor i32 %63, %64, !dbg !143
  %66 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 7), !dbg !140
  %67 = xor i32 %65, %66, !dbg !143
  %68 = and i32 %value_phi208, %value_phi207, !dbg !144
  %69 = xor i32 %value_phi208, -1, !dbg !147
  %70 = and i32 %value_phi206, %69, !dbg !144
  %memoryref_offset217 = shl i64 %value_phi203, 2, !dbg !138
  %71 = getelementptr i8, ptr %memoryref_data215.pre, i64 %memoryref_offset217, !dbg !138
  %memoryref_data223 = getelementptr i8, ptr %71, i64 -4, !dbg !138
  %72 = load i32, ptr %memoryref_data223, align 4, !dbg !138, !tbaa !84, !alias.scope !86, !noalias !87
  %gep350 = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217, !dbg !138
  %73 = load i32, ptr %gep350, align 4, !dbg !138, !tbaa !84, !alias.scope !86, !noalias !87
  %74 = add i32 %70, %value_phi205, !dbg !149
  %75 = add i32 %74, %68, !dbg !151
  %76 = add i32 %75, %67, !dbg !149
  %77 = add i32 %76, %72, !dbg !152
  %78 = add i32 %77, %73, !dbg !154
  %79 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 30), !dbg !156
  %80 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 19), !dbg !156
  %81 = xor i32 %79, %80, !dbg !159
  %82 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 10), !dbg !156
  %83 = xor i32 %81, %82, !dbg !159
  %84 = xor i32 %value_phi211, %value_phi210, !dbg !160
  %85 = and i32 %value_phi212, %84, !dbg !160
  %86 = and i32 %value_phi211, %value_phi210, !dbg !162
  %87 = xor i32 %85, %86, !dbg !160
  %88 = add i32 %83, %87, !dbg !163
  %89 = add i32 %78, %value_phi209, !dbg !165
  %90 = add i32 %88, %78, !dbg !167
  %91 = add nuw i64 %value_phi203, 1, !dbg !169
  %.not489 = icmp ult i64 %value_phi203, %exit.mainloop.at404, !dbg !139
  br i1 %.not489, label %L438, label %main.exit.selector406, !dbg !139

main.exit.selector406:                            ; preds = %L438
  %value_phi203.lcssa = phi i64 [ %value_phi203, %L438 ]
  %value_phi206.lcssa = phi i32 [ %value_phi206, %L438 ]
  %value_phi207.lcssa = phi i32 [ %value_phi207, %L438 ]
  %value_phi208.lcssa = phi i32 [ %value_phi208, %L438 ]
  %value_phi210.lcssa = phi i32 [ %value_phi210, %L438 ]
  %value_phi211.lcssa = phi i32 [ %value_phi211, %L438 ]
  %value_phi212.lcssa = phi i32 [ %value_phi212, %L438 ]
  %.lcssa9 = phi i32 [ %89, %L438 ], !dbg !165
  %.lcssa8 = phi i32 [ %90, %L438 ], !dbg !167
  %.lcssa7 = phi i64 [ %91, %L438 ], !dbg !169
  %92 = icmp ult i64 %value_phi203.lcssa, 64, !dbg !139
  br i1 %92, label %main.pseudo.exit407, label %L476, !dbg !139

main.pseudo.exit407:                              ; preds = %main.exit.selector406, %L381.preheader
  %value_phi203.copy = phi i64 [ 1, %L381.preheader ], [ %.lcssa7, %main.exit.selector406 ]
  %value_phi205.copy = phi i32 [ %value_phi14, %L381.preheader ], [ %value_phi206.lcssa, %main.exit.selector406 ]
  %value_phi206.copy = phi i32 [ %value_phi15, %L381.preheader ], [ %value_phi207.lcssa, %main.exit.selector406 ]
  %value_phi207.copy = phi i32 [ %value_phi16, %L381.preheader ], [ %value_phi208.lcssa, %main.exit.selector406 ]
  %value_phi208.copy = phi i32 [ %value_phi17, %L381.preheader ], [ %.lcssa9, %main.exit.selector406 ]
  %value_phi209.copy = phi i32 [ %value_phi18, %L381.preheader ], [ %value_phi210.lcssa, %main.exit.selector406 ]
  %value_phi210.copy = phi i32 [ %value_phi19, %L381.preheader ], [ %value_phi211.lcssa, %main.exit.selector406 ]
  %value_phi211.copy = phi i32 [ %value_phi20, %L381.preheader ], [ %value_phi212.lcssa, %main.exit.selector406 ]
  %value_phi212.copy = phi i32 [ %value_phi21, %L381.preheader ], [ %.lcssa8, %main.exit.selector406 ]
  br label %L381.postloop

L476:                                             ; preds = %L438.postloop, %main.exit.selector406
  %.lcssa345 = phi i32 [ %.lcssa9, %main.exit.selector406 ], [ %190, %L438.postloop ], !dbg !165
  %.lcssa344 = phi i32 [ %.lcssa8, %main.exit.selector406 ], [ %191, %L438.postloop ], !dbg !167
  %value_phi206.lcssa341 = phi i32 [ %value_phi206.lcssa, %main.exit.selector406 ], [ %value_phi206.postloop, %L438.postloop ]
  %value_phi207.lcssa339 = phi i32 [ %value_phi207.lcssa, %main.exit.selector406 ], [ %value_phi207.postloop, %L438.postloop ]
  %value_phi208.lcssa337 = phi i32 [ %value_phi208.lcssa, %main.exit.selector406 ], [ %value_phi208.postloop, %L438.postloop ]
  %value_phi210.lcssa335 = phi i32 [ %value_phi210.lcssa, %main.exit.selector406 ], [ %value_phi210.postloop, %L438.postloop ]
  %value_phi211.lcssa333 = phi i32 [ %value_phi211.lcssa, %main.exit.selector406 ], [ %value_phi211.postloop, %L438.postloop ]
  %value_phi212.lcssa331 = phi i32 [ %value_phi212.lcssa, %main.exit.selector406 ], [ %value_phi212.postloop, %L438.postloop ]
  %93 = add i32 %.lcssa344, %value_phi21, !dbg !170
  %94 = add i32 %value_phi212.lcssa331, %value_phi20, !dbg !170
  %95 = add i32 %value_phi211.lcssa333, %value_phi19, !dbg !170
  %96 = add i32 %value_phi210.lcssa335, %value_phi18, !dbg !170
  %97 = add i32 %.lcssa345, %value_phi17, !dbg !172
  %98 = add i32 %value_phi208.lcssa337, %value_phi16, !dbg !172
  %99 = add i32 %value_phi207.lcssa339, %value_phi15, !dbg !172
  %100 = add i32 %value_phi206.lcssa341, %value_phi14, !dbg !172
  %.not299.not = icmp eq i64 %value_phi12, %value_phi8, !dbg !174
  %101 = add nuw nsw i64 %value_phi12, 1, !dbg !177
  br i1 %.not299.not, label %L495.loopexit, label %L41, !dbg !178

L495.loopexit:                                    ; preds = %L476
  %.lcssa29 = phi i32 [ %93, %L476 ], !dbg !170
  %.lcssa28 = phi i32 [ %100, %L476 ], !dbg !172
  %"new::Array.size225.0.copyload.lcssa27" = phi i64 [ %"new::Array.size225.0.copyload", %L476 ]
  %memoryref_data228.lcssa25 = phi ptr [ %memoryref_data228, %L476 ]
  %102 = add i32 %.lcssa28, %value_phi7, !dbg !179
  %103 = add i32 %102, %.lcssa29, !dbg !179
  %.not300.not = icmp eq i64 %value_phi6, %".iters::Int64", !dbg !181
  %104 = add nuw i64 %value_phi6, 1, !dbg !182
  br i1 %.not300.not, label %L509, label %pass, !dbg !183

L509:                                             ; preds = %L495.loopexit, %pass.preheader.split.us, %top
  %value_phi247 = phi i32 [ 0, %top ], [ %8, %pass.preheader.split.us ], [ %103, %L495.loopexit ]
  %frame.prev689 = load ptr, ptr %frame.prev, align 8, !tbaa !21
  store ptr %frame.prev689, ptr %pgcstack, align 8, !tbaa !21
  ret i32 %value_phi247, !dbg !71

pass:                                             ; preds = %pass.preheader, %L495.loopexit
  %memoryref_data69421 = phi ptr [ %memoryref_data228.lcssa25, %L495.loopexit ], [ %memory_data, %pass.preheader ]
  %"new::Array.size84.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload.lcssa27", %L495.loopexit ], [ 64, %pass.preheader ]
  %value_phi6 = phi i64 [ %104, %L495.loopexit ], [ 1, %pass.preheader ]
  %value_phi7 = phi i32 [ %103, %L495.loopexit ], [ 0, %pass.preheader ]
  %smin362 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -2), !dbg !67
  %105 = sub i64 %"new::Array.size84.0.copyload", %smin362, !dbg !67
  %smin363 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 0), !dbg !67
  %smax364 = call i64 @llvm.smax.i64(i64 %smin363, i64 -1), !dbg !67
  %106 = add nsw i64 %smax364, 1, !dbg !67
  %107 = mul nuw nsw i64 %105, %106, !dbg !67
  %smin365 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -7), !dbg !67
  %108 = sub i64 %"new::Array.size84.0.copyload", %smin365, !dbg !67
  %109 = mul nuw nsw i64 %108, %106, !dbg !67
  %umin = call i64 @llvm.umin.i64(i64 %107, i64 %109), !dbg !67
  %smin366 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -15), !dbg !67
  %110 = sub i64 %"new::Array.size84.0.copyload", %smin366, !dbg !67
  %111 = mul nuw nsw i64 %110, %106, !dbg !67
  %umin367 = call i64 @llvm.umin.i64(i64 %umin, i64 %111), !dbg !67
  %smin368 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -16), !dbg !67
  %112 = sub i64 %"new::Array.size84.0.copyload", %smin368, !dbg !67
  %113 = mul nuw nsw i64 %112, %106, !dbg !67
  %umin369 = call i64 @llvm.umin.i64(i64 %umin367, i64 %113), !dbg !67
  %114 = sub i64 %"new::Array.size84.0.copyload", %smin363, !dbg !67
  %115 = mul nuw nsw i64 %114, %106, !dbg !67
  %umin370 = call i64 @llvm.umin.i64(i64 %umin369, i64 %115), !dbg !67
  %umin371 = call i64 @llvm.umin.i64(i64 %umin370, i64 64), !dbg !67
  %exit.mainloop.at372 = call i64 @llvm.umax.i64(i64 %umin371, i64 16), !dbg !67
  br label %L41, !dbg !67

L53.postloop:                                     ; preds = %L158.postloop, %main.pseudo.exit
  %value_phi22.postloop = phi i64 [ %value_phi22.copy, %main.pseudo.exit ], [ %138, %L158.postloop ]
  %116 = shl i64 %value_phi22.postloop, 2, !dbg !75
  %117 = add i64 %116, %9, !dbg !77
  %118 = add i64 %117, -68, !dbg !79
  %.not.postloop = icmp ult i64 %118, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not.postloop, label %L73.postloop, label %odessy.chk, !dbg !79

L73.postloop:                                     ; preds = %L53.postloop
  %119 = add i64 %117, -67, !dbg !79
  %.not281.postloop = icmp ult i64 %119, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not281.postloop, label %L94.postloop, label %odessy.chk2, !dbg !79

L94.postloop:                                     ; preds = %L73.postloop
  %120 = add i64 %117, -66, !dbg !79
  %.not282.postloop = icmp ult i64 %120, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not282.postloop, label %L116.postloop, label %odessy.chk4, !dbg !79

L116.postloop:                                    ; preds = %L94.postloop
  %121 = add i64 %117, -65, !dbg !79
  %.not283.postloop = icmp ult i64 %121, %"data::Array.size.0.copyload", !dbg !79
  %122 = add i64 %value_phi22.postloop, -1, !dbg !184
  %.not284.postloop = icmp ult i64 %122, %"new::Array.size.0.copyload", !dbg !187
  br i1 %.not284.postloop, label %L158.postloop, label %odessy.chk8, !dbg !186

L158.postloop:                                    ; preds = %L116.postloop
  %123 = getelementptr i8, ptr %memoryref_data, i64 %117, !dbg !83
  %memoryref_data27.postloop = getelementptr i8, ptr %123, i64 -68, !dbg !83
  %124 = load i8, ptr %memoryref_data27.postloop, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %125 = zext i8 %124 to i32, !dbg !88
  %126 = shl nuw i32 %125, 24, !dbg !92
  %memoryref_data40.postloop = getelementptr i8, ptr %123, i64 -67, !dbg !83
  %127 = load i8, ptr %memoryref_data40.postloop, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %128 = zext i8 %127 to i32, !dbg !88
  %129 = shl nuw nsw i32 %128, 16, !dbg !92
  %130 = or disjoint i32 %129, %126, !dbg !95
  %memoryref_data53.postloop = getelementptr i8, ptr %123, i64 -66, !dbg !83
  %131 = load i8, ptr %memoryref_data53.postloop, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %132 = zext i8 %131 to i32, !dbg !88
  %133 = shl nuw nsw i32 %132, 8, !dbg !92
  %134 = or disjoint i32 %130, %133, !dbg !95
  %memoryref_data66.postloop = getelementptr i8, ptr %123, i64 -65, !dbg !83
  %135 = load i8, ptr %memoryref_data66.postloop, align 1, !dbg !83, !tbaa !84, !alias.scope !86, !noalias !87
  %136 = zext i8 %135 to i32, !dbg !88
  %137 = or disjoint i32 %134, %136, !dbg !95
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %116, !dbg !97
  store i32 %137, ptr %gep.postloop, align 4, !dbg !97, !tbaa !84, !alias.scope !86, !noalias !87
  %.not285.not.postloop = icmp eq i64 %value_phi22.postloop, 16, !dbg !188
  %138 = add i64 %value_phi22.postloop, 1, !dbg !102
  br i1 %.not285.not.postloop, label %L175.preheader, label %L53.postloop, !dbg !103, !llvm.loop !189, !loop_constrainer.loop.clone !10

L175.postloop:                                    ; preds = %L364.postloop, %main.pseudo.exit375
  %value_phi81.postloop = phi i64 [ %162, %L364.postloop ], [ %value_phi81.copy, %main.pseudo.exit375 ]
  %139 = add i64 %value_phi81.postloop, -16, !dbg !104
  %.not286.postloop = icmp ult i64 %139, %"new::Array.size84.0.copyload", !dbg !104
  br i1 %.not286.postloop, label %L237.postloop, label %odessy.chk9, !dbg !104

L237.postloop:                                    ; preds = %L175.postloop
  %memoryref_offset89.postloop = shl i64 %value_phi81.postloop, 2, !dbg !106
  %140 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89.postloop, !dbg !106
  %memoryref_data95.postloop = getelementptr i8, ptr %140, i64 -64, !dbg !106
  %141 = load i32, ptr %memoryref_data95.postloop, align 4, !dbg !106, !tbaa !84, !alias.scope !86, !noalias !87
  %142 = call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 25), !dbg !107
  %143 = call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 14), !dbg !107
  %144 = xor i32 %143, %142, !dbg !110
  %145 = lshr i32 %141, 3, !dbg !112
  %146 = xor i32 %144, %145, !dbg !110
  %147 = add i64 %value_phi81.postloop, -3, !dbg !194
  %.not289.postloop = icmp ult i64 %147, %"new::Array.size84.0.copyload", !dbg !194
  br i1 %.not289.postloop, label %L303.postloop, label %odessy.chk10, !dbg !194

L303.postloop:                                    ; preds = %L237.postloop
  %memoryref_data134.postloop = getelementptr i8, ptr %140, i64 -12, !dbg !115
  %148 = load i32, ptr %memoryref_data134.postloop, align 4, !dbg !115, !tbaa !84, !alias.scope !86, !noalias !87
  %149 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 15), !dbg !117
  %150 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 13), !dbg !117
  %151 = xor i32 %150, %149, !dbg !119
  %152 = lshr i32 %148, 10, !dbg !120
  %153 = xor i32 %151, %152, !dbg !119
  %154 = add i64 %value_phi81.postloop, -17, !dbg !195
  %.not292.postloop = icmp ult i64 %154, %"new::Array.size84.0.copyload", !dbg !195
  %155 = add i64 %value_phi81.postloop, -8, !dbg !195
  %.not293.postloop = icmp ult i64 %155, %"new::Array.size84.0.copyload", !dbg !195
  %156 = add i64 %value_phi81.postloop, -1, !dbg !196
  %.not294.postloop = icmp ult i64 %156, %"new::Array.size84.0.copyload", !dbg !198
  br i1 %.not294.postloop, label %L364.postloop, label %odessy.chk13, !dbg !197

L364.postloop:                                    ; preds = %L303.postloop
  %memoryref_data173.postloop = getelementptr i8, ptr %140, i64 -68, !dbg !122
  %157 = load i32, ptr %memoryref_data173.postloop, align 4, !dbg !122, !tbaa !84, !alias.scope !86, !noalias !87
  %memoryref_data186.postloop = getelementptr i8, ptr %140, i64 -32, !dbg !122
  %158 = load i32, ptr %memoryref_data186.postloop, align 4, !dbg !122, !tbaa !84, !alias.scope !86, !noalias !87
  %159 = add i32 %153, %146, !dbg !124
  %160 = add i32 %159, %157, !dbg !124
  %161 = add i32 %160, %158, !dbg !127
  %memoryref_data199.postloop = getelementptr i8, ptr %140, i64 -4, !dbg !130
  store i32 %161, ptr %memoryref_data199.postloop, align 4, !dbg !130, !tbaa !84, !alias.scope !86, !noalias !87
  %.not295.not.postloop = icmp eq i64 %value_phi81.postloop, 64, !dbg !199
  %162 = add i64 %value_phi81.postloop, 1, !dbg !132
  br i1 %.not295.not.postloop, label %L381.preheader, label %L175.postloop, !dbg !133, !llvm.loop !200, !loop_constrainer.loop.clone !10

L381.postloop:                                    ; preds = %L438.postloop, %main.pseudo.exit407
  %value_phi203.postloop = phi i64 [ %192, %L438.postloop ], [ %value_phi203.copy, %main.pseudo.exit407 ]
  %value_phi205.postloop = phi i32 [ %value_phi206.postloop, %L438.postloop ], [ %value_phi205.copy, %main.pseudo.exit407 ]
  %value_phi206.postloop = phi i32 [ %value_phi207.postloop, %L438.postloop ], [ %value_phi206.copy, %main.pseudo.exit407 ]
  %value_phi207.postloop = phi i32 [ %value_phi208.postloop, %L438.postloop ], [ %value_phi207.copy, %main.pseudo.exit407 ]
  %value_phi208.postloop = phi i32 [ %190, %L438.postloop ], [ %value_phi208.copy, %main.pseudo.exit407 ]
  %value_phi209.postloop = phi i32 [ %value_phi210.postloop, %L438.postloop ], [ %value_phi209.copy, %main.pseudo.exit407 ]
  %value_phi210.postloop = phi i32 [ %value_phi211.postloop, %L438.postloop ], [ %value_phi210.copy, %main.pseudo.exit407 ]
  %value_phi211.postloop = phi i32 [ %value_phi212.postloop, %L438.postloop ], [ %value_phi211.copy, %main.pseudo.exit407 ]
  %value_phi212.postloop = phi i32 [ %191, %L438.postloop ], [ %value_phi212.copy, %main.pseudo.exit407 ]
  %163 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 26), !dbg !140
  %164 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 21), !dbg !140
  %165 = xor i32 %163, %164, !dbg !143
  %166 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 7), !dbg !140
  %167 = xor i32 %165, %166, !dbg !143
  %168 = and i32 %value_phi208.postloop, %value_phi207.postloop, !dbg !144
  %169 = xor i32 %value_phi208.postloop, -1, !dbg !147
  %170 = and i32 %value_phi206.postloop, %169, !dbg !144
  %171 = add i64 %value_phi203.postloop, -1, !dbg !136
  %.not296.postloop = icmp ult i64 %171, %.size.0.copyload, !dbg !136
  br i1 %.not296.postloop, label %L420.postloop, label %odessy.chk14, !dbg !136

L420.postloop:                                    ; preds = %L381.postloop
  %.not297.postloop = icmp ult i64 %171, %"new::Array.size225.0.copyload", !dbg !136
  br i1 %.not297.postloop, label %L438.postloop, label %odessy.chk15, !dbg !136

L438.postloop:                                    ; preds = %L420.postloop
  %memoryref_data215.postloop = load ptr, ptr @"jl_global#151.jit", align 8, !dbg !138, !tbaa !52, !alias.scope !41, !noalias !44
  %memoryref_offset217.postloop = shl i64 %value_phi203.postloop, 2, !dbg !138
  %172 = getelementptr i8, ptr %memoryref_data215.postloop, i64 %memoryref_offset217.postloop, !dbg !138
  %memoryref_data223.postloop = getelementptr i8, ptr %172, i64 -4, !dbg !138
  %173 = load i32, ptr %memoryref_data223.postloop, align 4, !dbg !138, !tbaa !84, !alias.scope !86, !noalias !87
  %gep350.postloop = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop, !dbg !138
  %174 = load i32, ptr %gep350.postloop, align 4, !dbg !138, !tbaa !84, !alias.scope !86, !noalias !87
  %175 = add i32 %170, %value_phi205.postloop, !dbg !149
  %176 = add i32 %175, %168, !dbg !151
  %177 = add i32 %176, %167, !dbg !149
  %178 = add i32 %177, %173, !dbg !152
  %179 = add i32 %178, %174, !dbg !154
  %180 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 30), !dbg !156
  %181 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 19), !dbg !156
  %182 = xor i32 %180, %181, !dbg !159
  %183 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 10), !dbg !156
  %184 = xor i32 %182, %183, !dbg !159
  %185 = xor i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !160
  %186 = and i32 %value_phi212.postloop, %185, !dbg !160
  %187 = and i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !162
  %188 = xor i32 %186, %187, !dbg !160
  %189 = add i32 %184, %188, !dbg !163
  %190 = add i32 %179, %value_phi209.postloop, !dbg !165
  %191 = add i32 %189, %179, !dbg !167
  %.not298.not.postloop = icmp eq i64 %value_phi203.postloop, 64, !dbg !201
  %192 = add i64 %value_phi203.postloop, 1, !dbg !169
  br i1 %.not298.not.postloop, label %L476, label %L381.postloop, !dbg !139, !llvm.loop !202, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L53.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L53
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L73.postloop
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk4:                                      ; preds = %L94.postloop
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk8:                                      ; preds = %L116.postloop
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

odessy.chk14:                                     ; preds = %L381.postloop
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %L420.postloop
  call void @odessy.chk(i32 15)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_sha256_sum_148(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %thread_ptr = call ptr asm "movq %fs:0, $0", "=r"()
  %tls_ppgcstack = getelementptr inbounds i8, ptr %thread_ptr, i64 -8
  %tls_pgcstack = load ptr, ptr %tls_ppgcstack, align 8
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10, !alias.scope !203, !noalias !204, !nonnull !10, !dereferenceable !205, !align !206
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !26, !invariant.load !10, !alias.scope !203, !noalias !204, !nonnull !10, !dereferenceable !206, !align !206
  %.unbox = load i64, ptr %3, align 8, !tbaa !207, !alias.scope !86, !noalias !87
  %4 = call swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself %tls_pgcstack, ptr %1, i64 signext %.unbox)
  %box_UInt32 = call nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext %4) #13
  ret ptr %box_UInt32
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext) #2

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #3

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_obj(ptr, i64, ptr) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @julia.pointer_from_objref(ptr) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #5

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #6

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_153(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #9

declare noalias nonnull ptr @julia.new_gc_frame(i32)

declare void @julia.push_gc_frame(ptr, i32)

declare ptr @julia.get_gc_frame_slot(ptr, i32)

declare void @julia.pop_gc_frame(ptr)

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_bytes(ptr, i64, i64) #10

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #3

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #10

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @llvm.lifetime.start.i64(i64)

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #12

attributes #0 = { "frame-pointer"="all" "julia.fsig"="sha256_sum(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "frame-pointer"="all" "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "frame-pointer"="all" "julia.fsig"="throw_boundserror(Array{UInt32, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #7 = { noreturn "frame-pointer"="all" "julia.fsig"="throw_boundserror(Array{UInt8, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

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
!75 = !DILocation(line: 88, scope: !73, inlinedAt: !76)
!76 = !DILocation(line: 29, scope: !4)
!77 = !DILocation(line: 87, scope: !78, inlinedAt: !76)
!78 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!79 = !DILocation(line: 919, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !81, file: !81, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!81 = !DIFile(filename: "essentials.jl", directory: ".")
!82 = !DILocation(line: 30, scope: !4)
!83 = !DILocation(line: 920, scope: !80, inlinedAt: !82)
!84 = !{!85, !85, i64 0}
!85 = !{!"jtbaa_arraybuf", !37, i64 0}
!86 = !{!47}
!87 = !{!45, !46, !42, !48}
!88 = !DILocation(line: 923, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "toUInt32;", linkageName: "toUInt32", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!90 = !DILocation(line: 961, scope: !91, inlinedAt: !82)
!91 = distinct !DISubprogram(name: "UInt32;", linkageName: "UInt32", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!92 = !DILocation(line: 535, scope: !93, inlinedAt: !94)
!93 = distinct !DISubprogram(name: "<<;", linkageName: "<<", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!94 = !DILocation(line: 542, scope: !93, inlinedAt: !82)
!95 = !DILocation(line: 378, scope: !96, inlinedAt: !82)
!96 = distinct !DISubprogram(name: "|;", linkageName: "|", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DILocation(line: 991, scope: !98, inlinedAt: !100)
!98 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !99, file: !99, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!99 = !DIFile(filename: "array.jl", directory: ".")
!100 = !DILocation(line: 986, scope: !101, inlinedAt: !82)
!101 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !99, file: !99, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!102 = !DILocation(line: 921, scope: !68, inlinedAt: !103)
!103 = !DILocation(line: 32, scope: !4)
!104 = !DILocation(line: 919, scope: !80, inlinedAt: !105)
!105 = !DILocation(line: 34, scope: !4)
!106 = !DILocation(line: 920, scope: !80, inlinedAt: !105)
!107 = !DILocation(line: 378, scope: !96, inlinedAt: !108)
!108 = !DILocation(line: 15, scope: !109, inlinedAt: !105)
!109 = distinct !DISubprogram(name: "rotr;", linkageName: "rotr", scope: !5, file: !5, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!110 = !DILocation(line: 379, scope: !111, inlinedAt: !105)
!111 = distinct !DISubprogram(name: "xor;", linkageName: "xor", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!112 = !DILocation(line: 534, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: ">>;", linkageName: ">>", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!114 = !DILocation(line: 540, scope: !113, inlinedAt: !105)
!115 = !DILocation(line: 920, scope: !80, inlinedAt: !116)
!116 = !DILocation(line: 35, scope: !4)
!117 = !DILocation(line: 378, scope: !96, inlinedAt: !118)
!118 = !DILocation(line: 15, scope: !109, inlinedAt: !116)
!119 = !DILocation(line: 379, scope: !111, inlinedAt: !116)
!120 = !DILocation(line: 534, scope: !113, inlinedAt: !121)
!121 = !DILocation(line: 540, scope: !113, inlinedAt: !116)
!122 = !DILocation(line: 920, scope: !80, inlinedAt: !123)
!123 = !DILocation(line: 36, scope: !4)
!124 = !DILocation(line: 87, scope: !78, inlinedAt: !125)
!125 = !DILocation(line: 642, scope: !126, inlinedAt: !123)
!126 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!127 = !DILocation(line: 87, scope: !78, inlinedAt: !128)
!128 = !DILocation(line: 599, scope: !129, inlinedAt: !125)
!129 = distinct !DISubprogram(name: "afoldl;", linkageName: "afoldl", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!130 = !DILocation(line: 991, scope: !98, inlinedAt: !131)
!131 = !DILocation(line: 986, scope: !101, inlinedAt: !123)
!132 = !DILocation(line: 921, scope: !68, inlinedAt: !133)
!133 = !DILocation(line: 37, scope: !4)
!134 = !{!42, !46}
!135 = !{!45, !47, !48}
!136 = !DILocation(line: 919, scope: !80, inlinedAt: !137)
!137 = !DILocation(line: 42, scope: !4)
!138 = !DILocation(line: 920, scope: !80, inlinedAt: !137)
!139 = !DILocation(line: 48, scope: !4)
!140 = !DILocation(line: 378, scope: !96, inlinedAt: !141)
!141 = !DILocation(line: 15, scope: !109, inlinedAt: !142)
!142 = !DILocation(line: 40, scope: !4)
!143 = !DILocation(line: 379, scope: !111, inlinedAt: !142)
!144 = !DILocation(line: 353, scope: !145, inlinedAt: !146)
!145 = distinct !DISubprogram(name: "&;", linkageName: "&", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!146 = !DILocation(line: 41, scope: !4)
!147 = !DILocation(line: 327, scope: !148, inlinedAt: !146)
!148 = distinct !DISubprogram(name: "~;", linkageName: "~", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!149 = !DILocation(line: 87, scope: !78, inlinedAt: !150)
!150 = !DILocation(line: 642, scope: !126, inlinedAt: !137)
!151 = !DILocation(line: 379, scope: !111, inlinedAt: !146)
!152 = !DILocation(line: 87, scope: !78, inlinedAt: !153)
!153 = !DILocation(line: 599, scope: !129, inlinedAt: !150)
!154 = !DILocation(line: 87, scope: !78, inlinedAt: !155)
!155 = !DILocation(line: 600, scope: !129, inlinedAt: !150)
!156 = !DILocation(line: 378, scope: !96, inlinedAt: !157)
!157 = !DILocation(line: 15, scope: !109, inlinedAt: !158)
!158 = !DILocation(line: 43, scope: !4)
!159 = !DILocation(line: 379, scope: !111, inlinedAt: !158)
!160 = !DILocation(line: 379, scope: !111, inlinedAt: !161)
!161 = !DILocation(line: 44, scope: !4)
!162 = !DILocation(line: 353, scope: !145, inlinedAt: !161)
!163 = !DILocation(line: 87, scope: !78, inlinedAt: !164)
!164 = !DILocation(line: 45, scope: !4)
!165 = !DILocation(line: 87, scope: !78, inlinedAt: !166)
!166 = !DILocation(line: 46, scope: !4)
!167 = !DILocation(line: 87, scope: !78, inlinedAt: !168)
!168 = !DILocation(line: 47, scope: !4)
!169 = !DILocation(line: 921, scope: !68, inlinedAt: !139)
!170 = !DILocation(line: 87, scope: !78, inlinedAt: !171)
!171 = !DILocation(line: 49, scope: !4)
!172 = !DILocation(line: 87, scope: !78, inlinedAt: !173)
!173 = !DILocation(line: 50, scope: !4)
!174 = !DILocation(line: 637, scope: !175, inlinedAt: !177)
!175 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !176, file: !176, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!176 = !DIFile(filename: "promotion.jl", directory: ".")
!177 = !DILocation(line: 921, scope: !68, inlinedAt: !178)
!178 = !DILocation(line: 51, scope: !4)
!179 = !DILocation(line: 87, scope: !78, inlinedAt: !180)
!180 = !DILocation(line: 52, scope: !4)
!181 = !DILocation(line: 637, scope: !175, inlinedAt: !182)
!182 = !DILocation(line: 921, scope: !68, inlinedAt: !183)
!183 = !DILocation(line: 53, scope: !4)
!184 = !DILocation(line: 86, scope: !185, inlinedAt: !186)
!185 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!186 = !DILocation(line: 990, scope: !98, inlinedAt: !100)
!187 = !DILocation(line: 519, scope: !59, inlinedAt: !186)
!188 = !DILocation(line: 637, scope: !175, inlinedAt: !102)
!189 = distinct !{!189, !190, !191, !192, !193}
!190 = !{!"llvm.loop.unroll.disable"}
!191 = !{!"llvm.loop.vectorize.enable", i1 false}
!192 = !{!"llvm.loop.licm_versioning.disable"}
!193 = !{!"llvm.loop.distribute.enable", i1 false}
!194 = !DILocation(line: 919, scope: !80, inlinedAt: !116)
!195 = !DILocation(line: 919, scope: !80, inlinedAt: !123)
!196 = !DILocation(line: 86, scope: !185, inlinedAt: !197)
!197 = !DILocation(line: 990, scope: !98, inlinedAt: !131)
!198 = !DILocation(line: 519, scope: !59, inlinedAt: !197)
!199 = !DILocation(line: 637, scope: !175, inlinedAt: !132)
!200 = distinct !{!200, !190, !191, !192, !193}
!201 = !DILocation(line: 637, scope: !175, inlinedAt: !169)
!202 = distinct !{!202, !190, !191, !192, !193}
!203 = !{!48}
!204 = !{!45, !46, !47, !42}
!205 = !{i64 24}
!206 = !{i64 8}
!207 = !{!208, !208, i64 0}
!208 = !{!"jtbaa_immut", !209, i64 0}
!209 = !{!"jtbaa_value", !37, i64 0}
