; ModuleID = 'logs/julia_triage/sha256.ll'
source_filename = "sha256_sum"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4570460976 to ptr)
@"+Core.GenericMemory#149.jit" = private alias ptr, inttoptr (i64 4834139040 to ptr)
@"+Core.Array#150.jit" = private alias ptr, inttoptr (i64 4834141488 to ptr)

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
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds ptr, ptr %gcframe1, i64 1
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
  %"Memory{UInt32}[]" = call noalias nonnull align 8 dereferenceable(288) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 1024, i32 288, i64 4834139040) #9, !dbg !28
  %"Memory{UInt32}[].tag_addr" = getelementptr inbounds i64, ptr %"Memory{UInt32}[]", i64 -1, !dbg !28
  store atomic i64 4834139040, ptr %"Memory{UInt32}[].tag_addr" unordered, align 8, !dbg !28, !tbaa !35
  %memory_ptr = getelementptr inbounds { i64, ptr }, ptr %"Memory{UInt32}[]", i64 0, i32 1, !dbg !28
  %memory_data = getelementptr inbounds i8, ptr %"Memory{UInt32}[]", i64 16, !dbg !28
  store ptr %memory_data, ptr %memory_ptr, align 8, !dbg !28, !tbaa !38, !alias.scope !41, !noalias !44
  store i64 64, ptr %"Memory{UInt32}[]", align 8, !dbg !28, !tbaa !49, !alias.scope !41, !noalias !44
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  store ptr %"Memory{UInt32}[]", ptr %gc_slot_addr_0, align 8
  %"new::Array" = call noalias nonnull align 8 dereferenceable(32) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 472, i32 32, i64 4834141488) #9, !dbg !51
  %"new::Array.tag_addr" = getelementptr inbounds i64, ptr %"new::Array", i64 -1, !dbg !51
  store atomic i64 4834141488, ptr %"new::Array.tag_addr" unordered, align 8, !dbg !51, !tbaa !35
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
  %value_phi12 = phi i64 [ %108, %L476 ], [ 1, %pass ]
  %value_phi14 = phi i32 [ %107, %L476 ], [ 1541459225, %pass ]
  %value_phi15 = phi i32 [ %106, %L476 ], [ 528734635, %pass ]
  %value_phi16 = phi i32 [ %105, %L476 ], [ -1694144372, %pass ]
  %value_phi17 = phi i32 [ %104, %L476 ], [ 1359893119, %pass ]
  %value_phi18 = phi i32 [ %103, %L476 ], [ -1521486534, %pass ]
  %value_phi19 = phi i32 [ %102, %L476 ], [ 1013904242, %pass ]
  %value_phi20 = phi i32 [ %101, %L476 ], [ -1150833019, %pass ]
  %value_phi21 = phi i32 [ %100, %L476 ], [ 1779033703, %pass ]
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

L53:                                              ; preds = %L158, %L41
  %value_phi22 = phi i64 [ %38, %L158 ], [ 1, %L41 ]
  %13 = shl i64 %value_phi22, 2, !dbg !75
  %14 = add i64 %13, %9, !dbg !77
  %15 = add i64 %14, -68, !dbg !79
  %.not = icmp ult i64 %15, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not, label %L73, label %odessy.chk1, !dbg !79

L70:                                              ; No predecessors!
  %16 = add i64 %14, -67, !dbg !83
  store i64 %16, ptr %"new::Tuple277", align 8, !dbg !79, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr null, ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_153(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple277") #13, !dbg !79
  unreachable, !dbg !79

L73:                                              ; preds = %L53
  %17 = add i64 %14, -67, !dbg !79
  %.not281 = icmp ult i64 %17, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not281, label %L94, label %odessy.chk3, !dbg !79

L91:                                              ; No predecessors!
  %18 = add i64 %14, -66, !dbg !83
  store i64 %18, ptr %"new::Tuple275", align 8, !dbg !79, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr null, ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_153(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple275") #13, !dbg !79
  unreachable, !dbg !79

L94:                                              ; preds = %L73
  %19 = add i64 %14, -66, !dbg !79
  %.not282 = icmp ult i64 %19, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not282, label %L116, label %odessy.chk5, !dbg !79

L113:                                             ; No predecessors!
  %20 = add i64 %14, -65, !dbg !83
  store i64 %20, ptr %"new::Tuple273", align 8, !dbg !79, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr null, ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_153(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple273") #13, !dbg !79
  unreachable, !dbg !79

L116:                                             ; preds = %L94
  %21 = add i64 %14, -65, !dbg !79
  %.not283 = icmp ult i64 %21, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not283, label %L158, label %odessy.chk7, !dbg !79

L135:                                             ; No predecessors!
  %22 = add i64 %14, -64, !dbg !83
  store i64 %22, ptr %"new::Tuple271", align 8, !dbg !79, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr null, ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_153(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple271") #13, !dbg !79
  unreachable, !dbg !79

L155:                                             ; No predecessors!
  store i64 %value_phi22.postloop, ptr %"new::Tuple269", align 8, !dbg !88, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple269") #13, !dbg !88
  unreachable, !dbg !88

L158:                                             ; preds = %L116
  %23 = getelementptr i8, ptr %memoryref_data, i64 %14, !dbg !93
  %memoryref_data27 = getelementptr i8, ptr %23, i64 -68, !dbg !93
  %24 = load i8, ptr %memoryref_data27, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %25 = zext i8 %24 to i32, !dbg !98
  %26 = shl nuw i32 %25, 24, !dbg !102
  %memoryref_data40 = getelementptr i8, ptr %23, i64 -67, !dbg !93
  %27 = load i8, ptr %memoryref_data40, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %28 = zext i8 %27 to i32, !dbg !98
  %29 = shl nuw nsw i32 %28, 16, !dbg !102
  %30 = or disjoint i32 %29, %26, !dbg !105
  %memoryref_data53 = getelementptr i8, ptr %23, i64 -66, !dbg !93
  %31 = load i8, ptr %memoryref_data53, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %32 = zext i8 %31 to i32, !dbg !98
  %33 = shl nuw nsw i32 %32, 8, !dbg !102
  %34 = or disjoint i32 %30, %33, !dbg !105
  %memoryref_data66 = getelementptr i8, ptr %23, i64 -65, !dbg !93
  %35 = load i8, ptr %memoryref_data66, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %36 = zext i8 %35 to i32, !dbg !98
  %37 = or disjoint i32 %34, %36, !dbg !105
  %gep = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !107
  store i32 %37, ptr %gep, align 4, !dbg !107, !tbaa !94, !alias.scope !96, !noalias !97
  %38 = add nuw i64 %value_phi22, 1, !dbg !108
  %.not486 = icmp ult i64 %value_phi22, %exit.mainloop.at, !dbg !109
  br i1 %.not486, label %L53, label %main.exit.selector, !dbg !109

main.exit.selector:                               ; preds = %L158
  %39 = icmp ult i64 %value_phi22, 16, !dbg !109
  br i1 %39, label %main.pseudo.exit, label %L175.preheader, !dbg !109

main.pseudo.exit:                                 ; preds = %main.exit.selector, %L41
  %value_phi22.copy = phi i64 [ 1, %L41 ], [ %38, %main.exit.selector ]
  br label %L53.postloop

L175.preheader:                                   ; preds = %L158.postloop, %main.exit.selector
  %memoryref_data87 = load ptr, ptr %"new::Array", align 8
  %40 = icmp ugt i64 %umin370, 16, !dbg !110
  br i1 %40, label %L364, label %main.pseudo.exit375, !dbg !110

L189:                                             ; No predecessors!
  %41 = add i64 %value_phi81.postloop, -15, !dbg !112
  store i64 %41, ptr %"new::Tuple267", align 8, !dbg !110, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple267") #13, !dbg !110
  unreachable, !dbg !110

L255:                                             ; No predecessors!
  %42 = add i64 %value_phi81.postloop, -2, !dbg !114
  store i64 %42, ptr %"new::Tuple261", align 8, !dbg !116, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple261") #13, !dbg !116
  unreachable, !dbg !116

L321:                                             ; No predecessors!
  store i64 %146, ptr %"new::Tuple255", align 8, !dbg !117, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple255") #13, !dbg !117
  unreachable, !dbg !117

L340:                                             ; No predecessors!
  %43 = add i64 %value_phi81.postloop, -7, !dbg !119
  store i64 %43, ptr %"new::Tuple253", align 8, !dbg !117, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple253") #13, !dbg !117
  unreachable, !dbg !117

L361:                                             ; No predecessors!
  store i64 %value_phi81.postloop, ptr %"new::Tuple251", align 8, !dbg !120, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple251") #13, !dbg !120
  unreachable, !dbg !120

L364:                                             ; preds = %L364, %L175.preheader
  %value_phi81 = phi i64 [ %62, %L364 ], [ 17, %L175.preheader ]
  %memoryref_offset89 = shl i64 %value_phi81, 2, !dbg !122
  %44 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89, !dbg !122
  %memoryref_data95 = getelementptr i8, ptr %44, i64 -64, !dbg !122
  %45 = load i32, ptr %memoryref_data95, align 4, !dbg !122, !tbaa !94, !alias.scope !96, !noalias !97
  %46 = call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 25), !dbg !123
  %47 = call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 14), !dbg !123
  %48 = xor i32 %47, %46, !dbg !126
  %49 = lshr i32 %45, 3, !dbg !128
  %50 = xor i32 %48, %49, !dbg !126
  %memoryref_data134 = getelementptr i8, ptr %44, i64 -12, !dbg !131
  %51 = load i32, ptr %memoryref_data134, align 4, !dbg !131, !tbaa !94, !alias.scope !96, !noalias !97
  %52 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 15), !dbg !132
  %53 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13), !dbg !132
  %54 = xor i32 %53, %52, !dbg !134
  %55 = lshr i32 %51, 10, !dbg !135
  %56 = xor i32 %54, %55, !dbg !134
  %memoryref_data173 = getelementptr i8, ptr %44, i64 -68, !dbg !137
  %57 = load i32, ptr %memoryref_data173, align 4, !dbg !137, !tbaa !94, !alias.scope !96, !noalias !97
  %memoryref_data186 = getelementptr i8, ptr %44, i64 -32, !dbg !137
  %58 = load i32, ptr %memoryref_data186, align 4, !dbg !137, !tbaa !94, !alias.scope !96, !noalias !97
  %59 = add i32 %56, %50, !dbg !138
  %60 = add i32 %59, %57, !dbg !138
  %61 = add i32 %60, %58, !dbg !141
  %memoryref_data199 = getelementptr i8, ptr %44, i64 -4, !dbg !144
  store i32 %61, ptr %memoryref_data199, align 4, !dbg !144, !tbaa !94, !alias.scope !96, !noalias !97
  %62 = add nuw i64 %value_phi81, 1, !dbg !145
  %.not487 = icmp ult i64 %value_phi81, %exit.mainloop.at372, !dbg !146
  br i1 %.not487, label %L364, label %main.exit.selector374, !dbg !146

main.exit.selector374:                            ; preds = %L364
  %63 = icmp ult i64 %value_phi81, 64, !dbg !146
  br i1 %63, label %main.pseudo.exit375, label %L381.preheader, !dbg !146

main.pseudo.exit375:                              ; preds = %main.exit.selector374, %L175.preheader
  %value_phi81.copy = phi i64 [ 17, %L175.preheader ], [ %62, %main.exit.selector374 ]
  br label %L175.postloop

L381.preheader:                                   ; preds = %L364.postloop, %main.exit.selector374
  %.size.0.copyload = load i64, ptr getelementptr inbounds (ptr, ptr @"jl_global#151.jit", i64 2), align 8, !tbaa !54, !alias.scope !147, !noalias !148
  %"new::Array.size225.0.copyload" = load i64, ptr %"new::Array.size_ptr", align 8
  %memoryref_data228 = load ptr, ptr %"new::Array", align 8
  %invariant.gep349 = getelementptr i8, ptr %memoryref_data228, i64 -4, !dbg !149
  %smin398 = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload", i64 0), !dbg !149
  %64 = sub i64 %"new::Array.size225.0.copyload", %smin398, !dbg !149
  %smax399 = call i64 @llvm.smax.i64(i64 %smin398, i64 -1), !dbg !149
  %65 = add nsw i64 %smax399, 1, !dbg !149
  %66 = mul nuw nsw i64 %64, %65, !dbg !149
  %smin400 = call i64 @llvm.smin.i64(i64 %.size.0.copyload, i64 0), !dbg !149
  %67 = sub i64 %.size.0.copyload, %smin400, !dbg !149
  %smax401 = call i64 @llvm.smax.i64(i64 %smin400, i64 -1), !dbg !149
  %68 = add nsw i64 %smax401, 1, !dbg !149
  %69 = mul nuw nsw i64 %67, %68, !dbg !149
  %umin402 = call i64 @llvm.umin.i64(i64 %66, i64 %69), !dbg !149
  %exit.mainloop.at404 = call i64 @llvm.umin.i64(i64 %umin402, i64 64), !dbg !149
  %.not488 = icmp eq i64 %umin402, 0, !dbg !149
  br i1 %.not488, label %main.pseudo.exit407, label %L438.preheader, !dbg !149

L438.preheader:                                   ; preds = %L381.preheader
  %memoryref_data215.pre = load ptr, ptr @"jl_global#151.jit", align 8, !dbg !151, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L438, !dbg !152

L417:                                             ; No predecessors!
  store i64 %value_phi203.postloop, ptr %"new::Tuple248", align 8, !dbg !149, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr null, ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit", ptr nonnull readonly captures(none) %"new::Tuple248") #13, !dbg !149
  unreachable, !dbg !149

L435:                                             ; No predecessors!
  store i64 %value_phi203.postloop, ptr %"new::Tuple", align 8, !dbg !149, !tbaa !84, !alias.scope !86, !noalias !87
  store ptr %"new::Array", ptr %gc_slot_addr_0, align 8
  call swiftcc void @j_throw_boundserror_152(ptr nonnull swiftself %pgcstack, ptr nonnull %"new::Array", ptr nonnull readonly captures(none) %"new::Tuple") #13, !dbg !149
  unreachable, !dbg !149

L438:                                             ; preds = %L438, %L438.preheader
  %value_phi203 = phi i64 [ %98, %L438 ], [ 1, %L438.preheader ]
  %value_phi205 = phi i32 [ %value_phi206, %L438 ], [ %value_phi14, %L438.preheader ]
  %value_phi206 = phi i32 [ %value_phi207, %L438 ], [ %value_phi15, %L438.preheader ]
  %value_phi207 = phi i32 [ %value_phi208, %L438 ], [ %value_phi16, %L438.preheader ]
  %value_phi208 = phi i32 [ %96, %L438 ], [ %value_phi17, %L438.preheader ]
  %value_phi209 = phi i32 [ %value_phi210, %L438 ], [ %value_phi18, %L438.preheader ]
  %value_phi210 = phi i32 [ %value_phi211, %L438 ], [ %value_phi19, %L438.preheader ]
  %value_phi211 = phi i32 [ %value_phi212, %L438 ], [ %value_phi20, %L438.preheader ]
  %value_phi212 = phi i32 [ %97, %L438 ], [ %value_phi21, %L438.preheader ]
  %70 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 26), !dbg !153
  %71 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 21), !dbg !153
  %72 = xor i32 %70, %71, !dbg !156
  %73 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 7), !dbg !153
  %74 = xor i32 %72, %73, !dbg !156
  %75 = and i32 %value_phi208, %value_phi207, !dbg !157
  %76 = xor i32 %value_phi208, -1, !dbg !160
  %77 = and i32 %value_phi206, %76, !dbg !157
  %memoryref_offset217 = shl i64 %value_phi203, 2, !dbg !151
  %78 = getelementptr i8, ptr %memoryref_data215.pre, i64 %memoryref_offset217, !dbg !151
  %memoryref_data223 = getelementptr i8, ptr %78, i64 -4, !dbg !151
  %79 = load i32, ptr %memoryref_data223, align 4, !dbg !151, !tbaa !94, !alias.scope !96, !noalias !97
  %gep350 = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217, !dbg !151
  %80 = load i32, ptr %gep350, align 4, !dbg !151, !tbaa !94, !alias.scope !96, !noalias !97
  %81 = add i32 %77, %value_phi205, !dbg !162
  %82 = add i32 %81, %75, !dbg !164
  %83 = add i32 %82, %74, !dbg !162
  %84 = add i32 %83, %79, !dbg !165
  %85 = add i32 %84, %80, !dbg !167
  %86 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 30), !dbg !169
  %87 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 19), !dbg !169
  %88 = xor i32 %86, %87, !dbg !172
  %89 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 10), !dbg !169
  %90 = xor i32 %88, %89, !dbg !172
  %91 = xor i32 %value_phi211, %value_phi210, !dbg !173
  %92 = and i32 %value_phi212, %91, !dbg !173
  %93 = and i32 %value_phi211, %value_phi210, !dbg !175
  %94 = xor i32 %92, %93, !dbg !173
  %95 = add i32 %90, %94, !dbg !176
  %96 = add i32 %85, %value_phi209, !dbg !178
  %97 = add i32 %95, %85, !dbg !180
  %98 = add nuw i64 %value_phi203, 1, !dbg !182
  %.not489 = icmp ult i64 %value_phi203, %exit.mainloop.at404, !dbg !152
  br i1 %.not489, label %L438, label %main.exit.selector406, !dbg !152

main.exit.selector406:                            ; preds = %L438
  %99 = icmp ult i64 %value_phi203, 64, !dbg !152
  br i1 %99, label %main.pseudo.exit407, label %L476, !dbg !152

main.pseudo.exit407:                              ; preds = %main.exit.selector406, %L381.preheader
  %value_phi203.copy = phi i64 [ 1, %L381.preheader ], [ %98, %main.exit.selector406 ]
  %value_phi205.copy = phi i32 [ %value_phi14, %L381.preheader ], [ %value_phi206, %main.exit.selector406 ]
  %value_phi206.copy = phi i32 [ %value_phi15, %L381.preheader ], [ %value_phi207, %main.exit.selector406 ]
  %value_phi207.copy = phi i32 [ %value_phi16, %L381.preheader ], [ %value_phi208, %main.exit.selector406 ]
  %value_phi208.copy = phi i32 [ %value_phi17, %L381.preheader ], [ %96, %main.exit.selector406 ]
  %value_phi209.copy = phi i32 [ %value_phi18, %L381.preheader ], [ %value_phi210, %main.exit.selector406 ]
  %value_phi210.copy = phi i32 [ %value_phi19, %L381.preheader ], [ %value_phi211, %main.exit.selector406 ]
  %value_phi211.copy = phi i32 [ %value_phi20, %L381.preheader ], [ %value_phi212, %main.exit.selector406 ]
  %value_phi212.copy = phi i32 [ %value_phi21, %L381.preheader ], [ %97, %main.exit.selector406 ]
  br label %L381.postloop

L476:                                             ; preds = %L438.postloop, %main.exit.selector406
  %.lcssa345 = phi i32 [ %96, %main.exit.selector406 ], [ %197, %L438.postloop ], !dbg !178
  %.lcssa344 = phi i32 [ %97, %main.exit.selector406 ], [ %198, %L438.postloop ], !dbg !180
  %value_phi206.lcssa341 = phi i32 [ %value_phi206, %main.exit.selector406 ], [ %value_phi206.postloop, %L438.postloop ]
  %value_phi207.lcssa339 = phi i32 [ %value_phi207, %main.exit.selector406 ], [ %value_phi207.postloop, %L438.postloop ]
  %value_phi208.lcssa337 = phi i32 [ %value_phi208, %main.exit.selector406 ], [ %value_phi208.postloop, %L438.postloop ]
  %value_phi210.lcssa335 = phi i32 [ %value_phi210, %main.exit.selector406 ], [ %value_phi210.postloop, %L438.postloop ]
  %value_phi211.lcssa333 = phi i32 [ %value_phi211, %main.exit.selector406 ], [ %value_phi211.postloop, %L438.postloop ]
  %value_phi212.lcssa331 = phi i32 [ %value_phi212, %main.exit.selector406 ], [ %value_phi212.postloop, %L438.postloop ]
  %100 = add i32 %.lcssa344, %value_phi21, !dbg !183
  %101 = add i32 %value_phi212.lcssa331, %value_phi20, !dbg !183
  %102 = add i32 %value_phi211.lcssa333, %value_phi19, !dbg !183
  %103 = add i32 %value_phi210.lcssa335, %value_phi18, !dbg !183
  %104 = add i32 %.lcssa345, %value_phi17, !dbg !185
  %105 = add i32 %value_phi208.lcssa337, %value_phi16, !dbg !185
  %106 = add i32 %value_phi207.lcssa339, %value_phi15, !dbg !185
  %107 = add i32 %value_phi206.lcssa341, %value_phi14, !dbg !185
  %.not299.not = icmp eq i64 %value_phi12, %value_phi8, !dbg !187
  %108 = add nuw nsw i64 %value_phi12, 1, !dbg !190
  br i1 %.not299.not, label %L495.loopexit, label %L41, !dbg !191

L495.loopexit:                                    ; preds = %L476
  %109 = add i32 %107, %value_phi7, !dbg !192
  %110 = add i32 %109, %100, !dbg !192
  %.not300.not = icmp eq i64 %value_phi6, %".iters::Int64", !dbg !194
  %111 = add nuw i64 %value_phi6, 1, !dbg !195
  br i1 %.not300.not, label %L509, label %pass, !dbg !196

L509:                                             ; preds = %L495.loopexit, %pass.preheader.split.us, %top
  %value_phi247 = phi i32 [ 0, %top ], [ %8, %pass.preheader.split.us ], [ %110, %L495.loopexit ]
  %frame.prev689 = load ptr, ptr %frame.prev, align 8, !tbaa !21
  store ptr %frame.prev689, ptr %pgcstack, align 8, !tbaa !21
  ret i32 %value_phi247, !dbg !71

pass:                                             ; preds = %L495.loopexit, %pass.preheader
  %memoryref_data69421 = phi ptr [ %memoryref_data228, %L495.loopexit ], [ %memory_data, %pass.preheader ]
  %"new::Array.size84.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload", %L495.loopexit ], [ 64, %pass.preheader ]
  %value_phi6 = phi i64 [ %111, %L495.loopexit ], [ 1, %pass.preheader ]
  %value_phi7 = phi i32 [ %110, %L495.loopexit ], [ 0, %pass.preheader ]
  %smin362 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -2), !dbg !67
  %112 = sub i64 %"new::Array.size84.0.copyload", %smin362, !dbg !67
  %smin363 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 0), !dbg !67
  %smax364 = call i64 @llvm.smax.i64(i64 %smin363, i64 -1), !dbg !67
  %113 = add nsw i64 %smax364, 1, !dbg !67
  %114 = mul nuw nsw i64 %112, %113, !dbg !67
  %smin365 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -7), !dbg !67
  %115 = sub i64 %"new::Array.size84.0.copyload", %smin365, !dbg !67
  %116 = mul nuw nsw i64 %115, %113, !dbg !67
  %umin = call i64 @llvm.umin.i64(i64 %114, i64 %116), !dbg !67
  %smin366 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -15), !dbg !67
  %117 = sub i64 %"new::Array.size84.0.copyload", %smin366, !dbg !67
  %118 = mul nuw nsw i64 %117, %113, !dbg !67
  %umin367 = call i64 @llvm.umin.i64(i64 %umin, i64 %118), !dbg !67
  %smin368 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -16), !dbg !67
  %119 = sub i64 %"new::Array.size84.0.copyload", %smin368, !dbg !67
  %120 = mul nuw nsw i64 %119, %113, !dbg !67
  %umin369 = call i64 @llvm.umin.i64(i64 %umin367, i64 %120), !dbg !67
  %121 = sub i64 %"new::Array.size84.0.copyload", %smin363, !dbg !67
  %122 = mul nuw nsw i64 %121, %113, !dbg !67
  %umin370 = call i64 @llvm.umin.i64(i64 %umin369, i64 %122), !dbg !67
  %umin371 = call i64 @llvm.umin.i64(i64 %umin370, i64 64), !dbg !67
  %exit.mainloop.at372 = call i64 @llvm.umax.i64(i64 %umin371, i64 16), !dbg !67
  br label %L41, !dbg !67

L53.postloop:                                     ; preds = %L158.postloop, %main.pseudo.exit
  %value_phi22.postloop = phi i64 [ %value_phi22.copy, %main.pseudo.exit ], [ %145, %L158.postloop ]
  %123 = shl i64 %value_phi22.postloop, 2, !dbg !75
  %124 = add i64 %123, %9, !dbg !77
  %125 = add i64 %124, -68, !dbg !79
  %.not.postloop = icmp ult i64 %125, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not.postloop, label %L73.postloop, label %odessy.chk, !dbg !79

L73.postloop:                                     ; preds = %L53.postloop
  %126 = add i64 %124, -67, !dbg !79
  %.not281.postloop = icmp ult i64 %126, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not281.postloop, label %L94.postloop, label %odessy.chk2, !dbg !79

L94.postloop:                                     ; preds = %L73.postloop
  %127 = add i64 %124, -66, !dbg !79
  %.not282.postloop = icmp ult i64 %127, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not282.postloop, label %L116.postloop, label %odessy.chk4, !dbg !79

L116.postloop:                                    ; preds = %L94.postloop
  %128 = add i64 %124, -65, !dbg !79
  %.not283.postloop = icmp ult i64 %128, %"data::Array.size.0.copyload", !dbg !79
  br i1 %.not283.postloop, label %L138.postloop, label %odessy.chk6, !dbg !79

L138.postloop:                                    ; preds = %L116.postloop
  %129 = add i64 %value_phi22.postloop, -1, !dbg !197
  %.not284.postloop = icmp ult i64 %129, %"new::Array.size.0.copyload", !dbg !198
  br i1 %.not284.postloop, label %L158.postloop, label %odessy.chk8, !dbg !88

L158.postloop:                                    ; preds = %L138.postloop
  %130 = getelementptr i8, ptr %memoryref_data, i64 %124, !dbg !93
  %memoryref_data27.postloop = getelementptr i8, ptr %130, i64 -68, !dbg !93
  %131 = load i8, ptr %memoryref_data27.postloop, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %132 = zext i8 %131 to i32, !dbg !98
  %133 = shl nuw i32 %132, 24, !dbg !102
  %memoryref_data40.postloop = getelementptr i8, ptr %130, i64 -67, !dbg !93
  %134 = load i8, ptr %memoryref_data40.postloop, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %135 = zext i8 %134 to i32, !dbg !98
  %136 = shl nuw nsw i32 %135, 16, !dbg !102
  %137 = or disjoint i32 %136, %133, !dbg !105
  %memoryref_data53.postloop = getelementptr i8, ptr %130, i64 -66, !dbg !93
  %138 = load i8, ptr %memoryref_data53.postloop, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %139 = zext i8 %138 to i32, !dbg !98
  %140 = shl nuw nsw i32 %139, 8, !dbg !102
  %141 = or disjoint i32 %137, %140, !dbg !105
  %memoryref_data66.postloop = getelementptr i8, ptr %130, i64 -65, !dbg !93
  %142 = load i8, ptr %memoryref_data66.postloop, align 1, !dbg !93, !tbaa !94, !alias.scope !96, !noalias !97
  %143 = zext i8 %142 to i32, !dbg !98
  %144 = or disjoint i32 %141, %143, !dbg !105
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %123, !dbg !107
  store i32 %144, ptr %gep.postloop, align 4, !dbg !107, !tbaa !94, !alias.scope !96, !noalias !97
  %.not285.not.postloop = icmp eq i64 %value_phi22.postloop, 16, !dbg !199
  %145 = add i64 %value_phi22.postloop, 1, !dbg !108
  br i1 %.not285.not.postloop, label %L175.preheader, label %L53.postloop, !dbg !109, !llvm.loop !200, !loop_constrainer.loop.clone !10

L175.postloop:                                    ; preds = %L364.postloop, %main.pseudo.exit375
  %value_phi81.postloop = phi i64 [ %169, %L364.postloop ], [ %value_phi81.copy, %main.pseudo.exit375 ]
  %146 = add i64 %value_phi81.postloop, -16, !dbg !110
  %.not286.postloop = icmp ult i64 %146, %"new::Array.size84.0.copyload", !dbg !110
  br i1 %.not286.postloop, label %L237.postloop, label %odessy.chk9, !dbg !110

L237.postloop:                                    ; preds = %L175.postloop
  %memoryref_offset89.postloop = shl i64 %value_phi81.postloop, 2, !dbg !122
  %147 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89.postloop, !dbg !122
  %memoryref_data95.postloop = getelementptr i8, ptr %147, i64 -64, !dbg !122
  %148 = load i32, ptr %memoryref_data95.postloop, align 4, !dbg !122, !tbaa !94, !alias.scope !96, !noalias !97
  %149 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 25), !dbg !123
  %150 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 14), !dbg !123
  %151 = xor i32 %150, %149, !dbg !126
  %152 = lshr i32 %148, 3, !dbg !128
  %153 = xor i32 %151, %152, !dbg !126
  %154 = add i64 %value_phi81.postloop, -3, !dbg !116
  %.not289.postloop = icmp ult i64 %154, %"new::Array.size84.0.copyload", !dbg !116
  br i1 %.not289.postloop, label %L303.postloop, label %odessy.chk10, !dbg !116

L303.postloop:                                    ; preds = %L237.postloop
  %memoryref_data134.postloop = getelementptr i8, ptr %147, i64 -12, !dbg !131
  %155 = load i32, ptr %memoryref_data134.postloop, align 4, !dbg !131, !tbaa !94, !alias.scope !96, !noalias !97
  %156 = call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 15), !dbg !132
  %157 = call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 13), !dbg !132
  %158 = xor i32 %157, %156, !dbg !134
  %159 = lshr i32 %155, 10, !dbg !135
  %160 = xor i32 %158, %159, !dbg !134
  %161 = add i64 %value_phi81.postloop, -17, !dbg !117
  %.not292.postloop = icmp ult i64 %161, %"new::Array.size84.0.copyload", !dbg !117
  br i1 %.not292.postloop, label %L324.postloop, label %odessy.chk11, !dbg !117

L324.postloop:                                    ; preds = %L303.postloop
  %162 = add i64 %value_phi81.postloop, -8, !dbg !117
  %.not293.postloop = icmp ult i64 %162, %"new::Array.size84.0.copyload", !dbg !117
  br i1 %.not293.postloop, label %L343.postloop, label %odessy.chk12, !dbg !117

L343.postloop:                                    ; preds = %L324.postloop
  %163 = add i64 %value_phi81.postloop, -1, !dbg !205
  %.not294.postloop = icmp ult i64 %163, %"new::Array.size84.0.copyload", !dbg !206
  br i1 %.not294.postloop, label %L364.postloop, label %odessy.chk13, !dbg !120

L364.postloop:                                    ; preds = %L343.postloop
  %memoryref_data173.postloop = getelementptr i8, ptr %147, i64 -68, !dbg !137
  %164 = load i32, ptr %memoryref_data173.postloop, align 4, !dbg !137, !tbaa !94, !alias.scope !96, !noalias !97
  %memoryref_data186.postloop = getelementptr i8, ptr %147, i64 -32, !dbg !137
  %165 = load i32, ptr %memoryref_data186.postloop, align 4, !dbg !137, !tbaa !94, !alias.scope !96, !noalias !97
  %166 = add i32 %160, %153, !dbg !138
  %167 = add i32 %166, %164, !dbg !138
  %168 = add i32 %167, %165, !dbg !141
  %memoryref_data199.postloop = getelementptr i8, ptr %147, i64 -4, !dbg !144
  store i32 %168, ptr %memoryref_data199.postloop, align 4, !dbg !144, !tbaa !94, !alias.scope !96, !noalias !97
  %.not295.not.postloop = icmp eq i64 %value_phi81.postloop, 64, !dbg !207
  %169 = add i64 %value_phi81.postloop, 1, !dbg !145
  br i1 %.not295.not.postloop, label %L381.preheader, label %L175.postloop, !dbg !146, !llvm.loop !208, !loop_constrainer.loop.clone !10

L381.postloop:                                    ; preds = %L438.postloop, %main.pseudo.exit407
  %value_phi203.postloop = phi i64 [ %199, %L438.postloop ], [ %value_phi203.copy, %main.pseudo.exit407 ]
  %value_phi205.postloop = phi i32 [ %value_phi206.postloop, %L438.postloop ], [ %value_phi205.copy, %main.pseudo.exit407 ]
  %value_phi206.postloop = phi i32 [ %value_phi207.postloop, %L438.postloop ], [ %value_phi206.copy, %main.pseudo.exit407 ]
  %value_phi207.postloop = phi i32 [ %value_phi208.postloop, %L438.postloop ], [ %value_phi207.copy, %main.pseudo.exit407 ]
  %value_phi208.postloop = phi i32 [ %197, %L438.postloop ], [ %value_phi208.copy, %main.pseudo.exit407 ]
  %value_phi209.postloop = phi i32 [ %value_phi210.postloop, %L438.postloop ], [ %value_phi209.copy, %main.pseudo.exit407 ]
  %value_phi210.postloop = phi i32 [ %value_phi211.postloop, %L438.postloop ], [ %value_phi210.copy, %main.pseudo.exit407 ]
  %value_phi211.postloop = phi i32 [ %value_phi212.postloop, %L438.postloop ], [ %value_phi211.copy, %main.pseudo.exit407 ]
  %value_phi212.postloop = phi i32 [ %198, %L438.postloop ], [ %value_phi212.copy, %main.pseudo.exit407 ]
  %170 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 26), !dbg !153
  %171 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 21), !dbg !153
  %172 = xor i32 %170, %171, !dbg !156
  %173 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 7), !dbg !153
  %174 = xor i32 %172, %173, !dbg !156
  %175 = and i32 %value_phi208.postloop, %value_phi207.postloop, !dbg !157
  %176 = xor i32 %value_phi208.postloop, -1, !dbg !160
  %177 = and i32 %value_phi206.postloop, %176, !dbg !157
  %178 = add i64 %value_phi203.postloop, -1, !dbg !149
  %.not296.postloop = icmp ult i64 %178, %.size.0.copyload, !dbg !149
  br i1 %.not296.postloop, label %L420.postloop, label %odessy.chk14, !dbg !149

L420.postloop:                                    ; preds = %L381.postloop
  %.not297.postloop = icmp ult i64 %178, %"new::Array.size225.0.copyload", !dbg !149
  br i1 %.not297.postloop, label %L438.postloop, label %odessy.chk15, !dbg !149

L438.postloop:                                    ; preds = %L420.postloop
  %memoryref_data215.postloop = load ptr, ptr @"jl_global#151.jit", align 8, !dbg !151, !tbaa !52, !alias.scope !41, !noalias !44
  %memoryref_offset217.postloop = shl i64 %value_phi203.postloop, 2, !dbg !151
  %179 = getelementptr i8, ptr %memoryref_data215.postloop, i64 %memoryref_offset217.postloop, !dbg !151
  %memoryref_data223.postloop = getelementptr i8, ptr %179, i64 -4, !dbg !151
  %180 = load i32, ptr %memoryref_data223.postloop, align 4, !dbg !151, !tbaa !94, !alias.scope !96, !noalias !97
  %gep350.postloop = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop, !dbg !151
  %181 = load i32, ptr %gep350.postloop, align 4, !dbg !151, !tbaa !94, !alias.scope !96, !noalias !97
  %182 = add i32 %177, %value_phi205.postloop, !dbg !162
  %183 = add i32 %182, %175, !dbg !164
  %184 = add i32 %183, %174, !dbg !162
  %185 = add i32 %184, %180, !dbg !165
  %186 = add i32 %185, %181, !dbg !167
  %187 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 30), !dbg !169
  %188 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 19), !dbg !169
  %189 = xor i32 %187, %188, !dbg !172
  %190 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 10), !dbg !169
  %191 = xor i32 %189, %190, !dbg !172
  %192 = xor i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !173
  %193 = and i32 %value_phi212.postloop, %192, !dbg !173
  %194 = and i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !175
  %195 = xor i32 %193, %194, !dbg !173
  %196 = add i32 %191, %195, !dbg !176
  %197 = add i32 %186, %value_phi209.postloop, !dbg !178
  %198 = add i32 %196, %186, !dbg !180
  %.not298.not.postloop = icmp eq i64 %value_phi203.postloop, 64, !dbg !209
  %199 = add i64 %value_phi203.postloop, 1, !dbg !182
  br i1 %.not298.not.postloop, label %L476, label %L381.postloop, !dbg !152, !llvm.loop !210, !loop_constrainer.loop.clone !10

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

odessy.chk11:                                     ; preds = %L303.postloop
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %L324.postloop
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %L343.postloop
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
  %pgcstack = call ptr inttoptr (i64 4297588508 to ptr)(i64 4297588544) #14
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10, !alias.scope !211, !noalias !212, !nonnull !10, !dereferenceable !213, !align !214
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !26, !invariant.load !10, !alias.scope !211, !noalias !212, !nonnull !10, !dereferenceable !214, !align !214
  %.unbox = load i64, ptr %3, align 8, !tbaa !215, !alias.scope !96, !noalias !97
  %4 = call swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_UInt32 = call nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext %4) #15
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

attributes #0 = { "julia.fsig"="sha256_sum(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "julia.fsig"="throw_boundserror(Array{UInt32, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #7 = { noreturn "julia.fsig"="throw_boundserror(Array{UInt8, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

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
!75 = !DILocation(line: 88, scope: !73, inlinedAt: !76)
!76 = !DILocation(line: 29, scope: !4)
!77 = !DILocation(line: 87, scope: !78, inlinedAt: !76)
!78 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!79 = !DILocation(line: 919, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !81, file: !81, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!81 = !DIFile(filename: "essentials.jl", directory: ".")
!82 = !DILocation(line: 30, scope: !4)
!83 = !DILocation(line: 87, scope: !78, inlinedAt: !82)
!84 = !{!85, !85, i64 0}
!85 = !{!"jtbaa_stack", !23, i64 0}
!86 = !{!46}
!87 = !{!45, !47, !42, !48}
!88 = !DILocation(line: 990, scope: !89, inlinedAt: !91)
!89 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !90, file: !90, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!90 = !DIFile(filename: "array.jl", directory: ".")
!91 = !DILocation(line: 986, scope: !92, inlinedAt: !82)
!92 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !90, file: !90, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!93 = !DILocation(line: 920, scope: !80, inlinedAt: !82)
!94 = !{!95, !95, i64 0}
!95 = !{!"jtbaa_arraybuf", !37, i64 0}
!96 = !{!47}
!97 = !{!45, !46, !42, !48}
!98 = !DILocation(line: 923, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "toUInt32;", linkageName: "toUInt32", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!100 = !DILocation(line: 961, scope: !101, inlinedAt: !82)
!101 = distinct !DISubprogram(name: "UInt32;", linkageName: "UInt32", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!102 = !DILocation(line: 535, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "<<;", linkageName: "<<", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DILocation(line: 542, scope: !103, inlinedAt: !82)
!105 = !DILocation(line: 378, scope: !106, inlinedAt: !82)
!106 = distinct !DISubprogram(name: "|;", linkageName: "|", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!107 = !DILocation(line: 991, scope: !89, inlinedAt: !91)
!108 = !DILocation(line: 921, scope: !68, inlinedAt: !109)
!109 = !DILocation(line: 32, scope: !4)
!110 = !DILocation(line: 919, scope: !80, inlinedAt: !111)
!111 = !DILocation(line: 34, scope: !4)
!112 = !DILocation(line: 86, scope: !113, inlinedAt: !111)
!113 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!114 = !DILocation(line: 86, scope: !113, inlinedAt: !115)
!115 = !DILocation(line: 35, scope: !4)
!116 = !DILocation(line: 919, scope: !80, inlinedAt: !115)
!117 = !DILocation(line: 919, scope: !80, inlinedAt: !118)
!118 = !DILocation(line: 36, scope: !4)
!119 = !DILocation(line: 86, scope: !113, inlinedAt: !118)
!120 = !DILocation(line: 990, scope: !89, inlinedAt: !121)
!121 = !DILocation(line: 986, scope: !92, inlinedAt: !118)
!122 = !DILocation(line: 920, scope: !80, inlinedAt: !111)
!123 = !DILocation(line: 378, scope: !106, inlinedAt: !124)
!124 = !DILocation(line: 15, scope: !125, inlinedAt: !111)
!125 = distinct !DISubprogram(name: "rotr;", linkageName: "rotr", scope: !5, file: !5, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!126 = !DILocation(line: 379, scope: !127, inlinedAt: !111)
!127 = distinct !DISubprogram(name: "xor;", linkageName: "xor", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!128 = !DILocation(line: 534, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: ">>;", linkageName: ">>", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!130 = !DILocation(line: 540, scope: !129, inlinedAt: !111)
!131 = !DILocation(line: 920, scope: !80, inlinedAt: !115)
!132 = !DILocation(line: 378, scope: !106, inlinedAt: !133)
!133 = !DILocation(line: 15, scope: !125, inlinedAt: !115)
!134 = !DILocation(line: 379, scope: !127, inlinedAt: !115)
!135 = !DILocation(line: 534, scope: !129, inlinedAt: !136)
!136 = !DILocation(line: 540, scope: !129, inlinedAt: !115)
!137 = !DILocation(line: 920, scope: !80, inlinedAt: !118)
!138 = !DILocation(line: 87, scope: !78, inlinedAt: !139)
!139 = !DILocation(line: 642, scope: !140, inlinedAt: !118)
!140 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!141 = !DILocation(line: 87, scope: !78, inlinedAt: !142)
!142 = !DILocation(line: 599, scope: !143, inlinedAt: !139)
!143 = distinct !DISubprogram(name: "afoldl;", linkageName: "afoldl", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!144 = !DILocation(line: 991, scope: !89, inlinedAt: !121)
!145 = !DILocation(line: 921, scope: !68, inlinedAt: !146)
!146 = !DILocation(line: 37, scope: !4)
!147 = !{!42, !46}
!148 = !{!45, !47, !48}
!149 = !DILocation(line: 919, scope: !80, inlinedAt: !150)
!150 = !DILocation(line: 42, scope: !4)
!151 = !DILocation(line: 920, scope: !80, inlinedAt: !150)
!152 = !DILocation(line: 48, scope: !4)
!153 = !DILocation(line: 378, scope: !106, inlinedAt: !154)
!154 = !DILocation(line: 15, scope: !125, inlinedAt: !155)
!155 = !DILocation(line: 40, scope: !4)
!156 = !DILocation(line: 379, scope: !127, inlinedAt: !155)
!157 = !DILocation(line: 353, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "&;", linkageName: "&", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!159 = !DILocation(line: 41, scope: !4)
!160 = !DILocation(line: 327, scope: !161, inlinedAt: !159)
!161 = distinct !DISubprogram(name: "~;", linkageName: "~", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!162 = !DILocation(line: 87, scope: !78, inlinedAt: !163)
!163 = !DILocation(line: 642, scope: !140, inlinedAt: !150)
!164 = !DILocation(line: 379, scope: !127, inlinedAt: !159)
!165 = !DILocation(line: 87, scope: !78, inlinedAt: !166)
!166 = !DILocation(line: 599, scope: !143, inlinedAt: !163)
!167 = !DILocation(line: 87, scope: !78, inlinedAt: !168)
!168 = !DILocation(line: 600, scope: !143, inlinedAt: !163)
!169 = !DILocation(line: 378, scope: !106, inlinedAt: !170)
!170 = !DILocation(line: 15, scope: !125, inlinedAt: !171)
!171 = !DILocation(line: 43, scope: !4)
!172 = !DILocation(line: 379, scope: !127, inlinedAt: !171)
!173 = !DILocation(line: 379, scope: !127, inlinedAt: !174)
!174 = !DILocation(line: 44, scope: !4)
!175 = !DILocation(line: 353, scope: !158, inlinedAt: !174)
!176 = !DILocation(line: 87, scope: !78, inlinedAt: !177)
!177 = !DILocation(line: 45, scope: !4)
!178 = !DILocation(line: 87, scope: !78, inlinedAt: !179)
!179 = !DILocation(line: 46, scope: !4)
!180 = !DILocation(line: 87, scope: !78, inlinedAt: !181)
!181 = !DILocation(line: 47, scope: !4)
!182 = !DILocation(line: 921, scope: !68, inlinedAt: !152)
!183 = !DILocation(line: 87, scope: !78, inlinedAt: !184)
!184 = !DILocation(line: 49, scope: !4)
!185 = !DILocation(line: 87, scope: !78, inlinedAt: !186)
!186 = !DILocation(line: 50, scope: !4)
!187 = !DILocation(line: 637, scope: !188, inlinedAt: !190)
!188 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !189, file: !189, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!189 = !DIFile(filename: "promotion.jl", directory: ".")
!190 = !DILocation(line: 921, scope: !68, inlinedAt: !191)
!191 = !DILocation(line: 51, scope: !4)
!192 = !DILocation(line: 87, scope: !78, inlinedAt: !193)
!193 = !DILocation(line: 52, scope: !4)
!194 = !DILocation(line: 637, scope: !188, inlinedAt: !195)
!195 = !DILocation(line: 921, scope: !68, inlinedAt: !196)
!196 = !DILocation(line: 53, scope: !4)
!197 = !DILocation(line: 86, scope: !113, inlinedAt: !88)
!198 = !DILocation(line: 519, scope: !59, inlinedAt: !88)
!199 = !DILocation(line: 637, scope: !188, inlinedAt: !108)
!200 = distinct !{!200, !201, !202, !203, !204}
!201 = !{!"llvm.loop.unroll.disable"}
!202 = !{!"llvm.loop.vectorize.enable", i1 false}
!203 = !{!"llvm.loop.licm_versioning.disable"}
!204 = !{!"llvm.loop.distribute.enable", i1 false}
!205 = !DILocation(line: 86, scope: !113, inlinedAt: !120)
!206 = !DILocation(line: 519, scope: !59, inlinedAt: !120)
!207 = !DILocation(line: 637, scope: !188, inlinedAt: !145)
!208 = distinct !{!208, !201, !202, !203, !204}
!209 = !DILocation(line: 637, scope: !188, inlinedAt: !182)
!210 = distinct !{!210, !201, !202, !203, !204}
!211 = !{!48}
!212 = !{!45, !46, !47, !42}
!213 = !{i64 24}
!214 = !{i64 8}
!215 = !{!216, !216, i64 0}
!216 = !{!"jtbaa_immut", !217, i64 0}
!217 = !{!"jtbaa_value", !37, i64 0}
