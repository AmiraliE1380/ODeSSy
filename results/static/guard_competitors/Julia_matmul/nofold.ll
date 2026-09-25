; ModuleID = 'results/static/guard_competitors/Julia_matmul/tag.ll'
source_filename = "matmul!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.5.0"

define swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"c::Array", ptr noundef nonnull align 8 dereferenceable(24) %"a::Array", ptr noundef nonnull align 8 dereferenceable(24) %"b::Array", i64 signext %"n::Int64") #0 !dbg !4 {
top:
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple15" = alloca [1 x i64], align 8
  %"new::Tuple27" = alloca [1 x i64], align 8
    #dbg_declare(ptr %"c::Array", !18, !DIExpression(), !22)
    #dbg_declare(ptr %"a::Array", !19, !DIExpression(), !22)
    #dbg_declare(ptr %"b::Array", !20, !DIExpression(), !22)
    #dbg_value(i64 %"n::Int64", !21, !DIExpression(), !22)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !23
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !22
  fence syncscope("singlethread") seq_cst
  %.not44 = icmp slt i64 %"n::Int64", 1, !dbg !29
  br i1 %.not44, label %L86, label %L6.preheader.lr.ph.split.split, !dbg !33

L6.preheader.lr.ph.split.split:                   ; preds = %top
  %"a::Array.size_ptr" = getelementptr inbounds i8, ptr %"a::Array", i64 16
  %"b::Array.size_ptr" = getelementptr inbounds i8, ptr %"b::Array", i64 16
  %"c::Array.size_ptr" = getelementptr inbounds i8, ptr %"c::Array", i64 16
  %2 = mul i64 %"n::Int64", %"n::Int64", !dbg !33
  %3 = add i64 %2, -1, !dbg !33
  br label %L6.preheader, !dbg !33

L6.preheader:                                     ; preds = %L6.L84_crit_edge.split, %L6.preheader.lr.ph.split.split
  %indvars.iv = phi i64 [ 0, %L6.preheader.lr.ph.split.split ], [ %indvars.iv.next, %L6.L84_crit_edge.split ]
  %value_phi45 = phi i64 [ 1, %L6.preheader.lr.ph.split.split ], [ %57, %L6.L84_crit_edge.split ]
  %4 = add i64 %value_phi45, -1
  %5 = mul i64 %4, %"n::Int64"
  %"a::Array.size.0.copyload" = load i64, ptr %"a::Array.size_ptr", align 8
  %"c::Array.size.0.copyload" = load i64, ptr %"c::Array.size_ptr", align 8
  %memoryref_data18 = load ptr, ptr %"c::Array", align 8
  %invariant.gep48 = getelementptr i8, ptr %memoryref_data18, i64 -8, !dbg !34
  %mv.h11 = icmp sle i64 %"n::Int64", 32768, !dbg !34
  %mv.h12 = icmp sge i64 %"a::Array.size.0.copyload", 0, !dbg !34
  %mv.h13 = and i1 %mv.h11, %mv.h12, !dbg !34
  %mv.h14 = icmp sle i64 %"a::Array.size.0.copyload", 1073741824, !dbg !34
  %mv.h15 = and i1 %mv.h13, %mv.h14, !dbg !34
  %mv.h16 = icmp ugt i64 %"a::Array.size.0.copyload", %3, !dbg !34
  %mv.h17 = and i1 %mv.h15, %mv.h16, !dbg !34
  %mv.h18 = icmp sge i64 %"c::Array.size.0.copyload", 0, !dbg !34
  %mv.h19 = and i1 %mv.h17, %mv.h18, !dbg !34
  %mv.h20 = icmp sle i64 %"c::Array.size.0.copyload", 1073741824, !dbg !34
  %mv.h21 = and i1 %mv.h19, %mv.h20, !dbg !34
  %mv.h22 = icmp ugt i64 %"c::Array.size.0.copyload", %3, !dbg !34
  %mv.h23 = and i1 %mv.h21, %mv.h22, !dbg !34
  br i1 %mv.h23, label %L10.preheader.mv.ph.mv.fast, label %L10.preheader.mv.ph

L10.preheader.mv.ph.mv.fast:                      ; preds = %L6.preheader
  br label %L10.preheader.mv.fast, !dbg !34

L10.preheader.mv.fast:                            ; preds = %L77.mv.fast, %L10.preheader.mv.ph.mv.fast
  %value_phi143.mv.fast = phi i64 [ 1, %L10.preheader.mv.ph.mv.fast ], [ %19, %L77.mv.fast ]
  %"b::Array.size.0.copyload.mv.fast" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data.mv.fast = load ptr, ptr %"a::Array", align 8
  %invariant.gep.mv.fast = getelementptr i8, ptr %memoryref_data.mv.fast, i64 -8, !dbg !35
  %memoryref_data6.mv.fast = load ptr, ptr %"b::Array", align 8
  %invariant.gep46.mv.fast = getelementptr i8, ptr %memoryref_data6.mv.fast, i64 -8, !dbg !35
  %mv.h.mv.fast = icmp sle i64 %"n::Int64", 32768, !dbg !35
  %mv.h1.mv.fast = icmp sge i64 %"a::Array.size.0.copyload", 0, !dbg !35
  %mv.h2.mv.fast = and i1 %mv.h.mv.fast, %mv.h1.mv.fast, !dbg !35
  %mv.h3.mv.fast = icmp sle i64 %"a::Array.size.0.copyload", 1073741824, !dbg !35
  %mv.h4.mv.fast = and i1 %mv.h2.mv.fast, %mv.h3.mv.fast, !dbg !35
  %mv.h5.mv.fast = icmp sge i64 %"b::Array.size.0.copyload.mv.fast", 0, !dbg !35
  %mv.h6.mv.fast = and i1 %mv.h4.mv.fast, %mv.h5.mv.fast, !dbg !35
  %mv.h7.mv.fast = icmp sle i64 %"b::Array.size.0.copyload.mv.fast", 1073741824, !dbg !35
  %mv.h8.mv.fast = and i1 %mv.h6.mv.fast, %mv.h7.mv.fast, !dbg !35
  %mv.h9.mv.fast = icmp ugt i64 %"b::Array.size.0.copyload.mv.fast", %3, !dbg !35
  %mv.h10.mv.fast = and i1 %mv.h8.mv.fast, %mv.h9.mv.fast, !dbg !35
  br i1 %mv.h10.mv.fast, label %L14.mv.ph.mv.fast.mv.fast, label %L14.mv.ph.mv.fast36

L14.mv.fast24:                                    ; preds = %L14.mv.ph.mv.fast36, %L52.mv.fast30
  %value_phi341.mv.fast25 = phi i64 [ 0, %L14.mv.ph.mv.fast36 ], [ %15, %L52.mv.fast30 ]
  %value_phi240.mv.fast26 = phi i64 [ 1, %L14.mv.ph.mv.fast36 ], [ %16, %L52.mv.fast30 ]
  %6 = add i64 %value_phi240.mv.fast26, %5, !dbg !36
  %7 = add i64 %6, -1, !dbg !39
  %.not31.mv.fast27 = icmp ult i64 %7, %"a::Array.size.0.copyload", !dbg !39
  br i1 %.not31.mv.fast27, label %L31.mv.fast28, label %odessy.fasttrap37, !dbg !39

L31.mv.fast28:                                    ; preds = %L14.mv.fast24
  %8 = add i64 %value_phi240.mv.fast26, -1, !dbg !42
  %9 = mul i64 %8, %"n::Int64", !dbg !44
  %10 = add i64 %9, %value_phi143.mv.fast, !dbg !36
  %11 = add i64 %10, -1, !dbg !39
  %.not32.mv.fast29 = icmp ult i64 %11, %"b::Array.size.0.copyload.mv.fast", !dbg !39
  br i1 %.not32.mv.fast29, label %L52.mv.fast30, label %odessy.chk1, !dbg !39

L52.mv.fast30:                                    ; preds = %L31.mv.fast28
  %memoryref_offset.mv.fast31 = shl i64 %6, 3, !dbg !46
  %gep.mv.fast32 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %memoryref_offset.mv.fast31, !dbg !46
  %12 = load i64, ptr %gep.mv.fast32, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8.mv.fast33 = shl i64 %10, 3, !dbg !46
  %gep47.mv.fast34 = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %memoryref_offset8.mv.fast33, !dbg !46
  %13 = load i64, ptr %gep47.mv.fast34, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %14 = mul i64 %13, %12, !dbg !44
  %15 = add i64 %14, %value_phi341.mv.fast25, !dbg !36
  %16 = add i64 %value_phi240.mv.fast26, 1, !dbg !58
  %.not30.mv.fast35 = icmp sgt i64 %16, %"n::Int64", !dbg !60
  br i1 %.not30.mv.fast35, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast24, !dbg !35

L10.L60_crit_edge.mv.fast:                        ; preds = %L52.mv.fast.mv.fast, %L52.mv.fast30
  %.lcssa.mv.fast = phi i64 [ %15, %L52.mv.fast30 ], [ %29, %L52.mv.fast.mv.fast ], !dbg !36
  %17 = add i64 %value_phi143.mv.fast, %5, !dbg !61
  %18 = add i64 %17, -1, !dbg !63
  %.not33.mv.fast = icmp ult i64 %18, %"c::Array.size.0.copyload", !dbg !69
  br i1 %.not33.mv.fast, label %L77.mv.fast, label %odessy.fasttrap39, !dbg !64

L77.mv.fast:                                      ; preds = %L10.L60_crit_edge.mv.fast
  %memoryref_offset20.mv.fast = shl i64 %17, 3, !dbg !71
  %gep49.mv.fast = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20.mv.fast, !dbg !71
  store i64 %.lcssa.mv.fast, ptr %gep49.mv.fast, align 8, !dbg !71, !tbaa !47, !alias.scope !50, !noalias !53
  %19 = add i64 %value_phi143.mv.fast, 1, !dbg !72
  %.not29.mv.fast = icmp sgt i64 %19, %"n::Int64", !dbg !74
  br i1 %.not29.mv.fast, label %L6.L84_crit_edge.split, label %L10.preheader.mv.fast, !dbg !34

L14.mv.ph.mv.fast36:                              ; preds = %L10.preheader.mv.fast
  br label %L14.mv.fast24, !dbg !35

L14.mv.ph.mv.fast.mv.fast:                        ; preds = %L10.preheader.mv.fast
  br label %L14.mv.fast.mv.fast, !dbg !35

L14.mv.fast.mv.fast:                              ; preds = %L52.mv.fast.mv.fast, %L14.mv.ph.mv.fast.mv.fast
  %value_phi341.mv.fast.mv.fast = phi i64 [ 0, %L14.mv.ph.mv.fast.mv.fast ], [ %29, %L52.mv.fast.mv.fast ]
  %value_phi240.mv.fast.mv.fast = phi i64 [ 1, %L14.mv.ph.mv.fast.mv.fast ], [ %30, %L52.mv.fast.mv.fast ]
  %20 = add i64 %value_phi240.mv.fast.mv.fast, %5, !dbg !36
  %21 = add i64 %20, -1, !dbg !39
  %.not31.mv.fast.mv.fast = icmp ult i64 %21, %"a::Array.size.0.copyload", !dbg !39
  br i1 %.not31.mv.fast.mv.fast, label %L31.mv.fast.mv.fast, label %odessy.fasttrap38, !dbg !39

L31.mv.fast.mv.fast:                              ; preds = %L14.mv.fast.mv.fast
  %22 = add i64 %value_phi240.mv.fast.mv.fast, -1, !dbg !42
  %23 = mul i64 %22, %"n::Int64", !dbg !44
  %24 = add i64 %23, %value_phi143.mv.fast, !dbg !36
  %25 = add i64 %24, -1, !dbg !39
  %.not32.mv.fast.mv.fast = icmp ult i64 %25, %"b::Array.size.0.copyload.mv.fast", !dbg !39
  br i1 %.not32.mv.fast.mv.fast, label %L52.mv.fast.mv.fast, label %odessy.fasttrap, !dbg !39

L52.mv.fast.mv.fast:                              ; preds = %L31.mv.fast.mv.fast
  %memoryref_offset.mv.fast.mv.fast = shl i64 %20, 3, !dbg !46
  %gep.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %memoryref_offset.mv.fast.mv.fast, !dbg !46
  %26 = load i64, ptr %gep.mv.fast.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8.mv.fast.mv.fast = shl i64 %24, 3, !dbg !46
  %gep47.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %memoryref_offset8.mv.fast.mv.fast, !dbg !46
  %27 = load i64, ptr %gep47.mv.fast.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %28 = mul i64 %27, %26, !dbg !44
  %29 = add i64 %28, %value_phi341.mv.fast.mv.fast, !dbg !36
  %30 = add i64 %value_phi240.mv.fast.mv.fast, 1, !dbg !58
  %.not30.mv.fast.mv.fast = icmp sgt i64 %30, %"n::Int64", !dbg !60
  br i1 %.not30.mv.fast.mv.fast, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast.mv.fast, !dbg !35

L10.preheader.mv.ph:                              ; preds = %L6.preheader
  br label %L10.preheader, !dbg !34

L10.preheader:                                    ; preds = %L77, %L10.preheader.mv.ph
  %value_phi143 = phi i64 [ 1, %L10.preheader.mv.ph ], [ %56, %L77 ]
  %"b::Array.size.0.copyload" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !35
  %memoryref_data6 = load ptr, ptr %"b::Array", align 8
  %invariant.gep46 = getelementptr i8, ptr %memoryref_data6, i64 -8, !dbg !35
  %mv.h = icmp sle i64 %"n::Int64", 32768, !dbg !35
  %mv.h1 = icmp sge i64 %"a::Array.size.0.copyload", 0, !dbg !35
  %mv.h2 = and i1 %mv.h, %mv.h1, !dbg !35
  %mv.h3 = icmp sle i64 %"a::Array.size.0.copyload", 1073741824, !dbg !35
  %mv.h4 = and i1 %mv.h2, %mv.h3, !dbg !35
  %mv.h5 = icmp sge i64 %"b::Array.size.0.copyload", 0, !dbg !35
  %mv.h6 = and i1 %mv.h4, %mv.h5, !dbg !35
  %mv.h7 = icmp sle i64 %"b::Array.size.0.copyload", 1073741824, !dbg !35
  %mv.h8 = and i1 %mv.h6, %mv.h7, !dbg !35
  %mv.h9 = icmp ugt i64 %"b::Array.size.0.copyload", %3, !dbg !35
  %mv.h10 = and i1 %mv.h8, %mv.h9, !dbg !35
  br i1 %mv.h10, label %L14.mv.ph.mv.fast, label %L14.mv.ph

L14.mv.ph.mv.fast:                                ; preds = %L10.preheader
  br label %L14.mv.fast, !dbg !35

L14.mv.fast:                                      ; preds = %L52.mv.fast, %L14.mv.ph.mv.fast
  %value_phi341.mv.fast = phi i64 [ 0, %L14.mv.ph.mv.fast ], [ %40, %L52.mv.fast ]
  %value_phi240.mv.fast = phi i64 [ 1, %L14.mv.ph.mv.fast ], [ %41, %L52.mv.fast ]
  %31 = add i64 %value_phi240.mv.fast, %5, !dbg !36
  %32 = add i64 %31, -1, !dbg !39
  %.not31.mv.fast = icmp ult i64 %32, %"a::Array.size.0.copyload", !dbg !39
  br i1 %.not31.mv.fast, label %L31.mv.fast, label %odessy.chk, !dbg !39

L31.mv.fast:                                      ; preds = %L14.mv.fast
  %33 = add i64 %value_phi240.mv.fast, -1, !dbg !42
  %34 = mul i64 %33, %"n::Int64", !dbg !44
  %35 = add i64 %34, %value_phi143, !dbg !36
  %36 = add i64 %35, -1, !dbg !39
  %.not32.mv.fast = icmp ult i64 %36, %"b::Array.size.0.copyload", !dbg !39
  br i1 %.not32.mv.fast, label %L52.mv.fast, label %odessy.fasttrap, !dbg !39

L52.mv.fast:                                      ; preds = %L31.mv.fast
  %memoryref_offset.mv.fast = shl i64 %31, 3, !dbg !46
  %gep.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.mv.fast, !dbg !46
  %37 = load i64, ptr %gep.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8.mv.fast = shl i64 %35, 3, !dbg !46
  %gep47.mv.fast = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8.mv.fast, !dbg !46
  %38 = load i64, ptr %gep47.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %39 = mul i64 %38, %37, !dbg !44
  %40 = add i64 %39, %value_phi341.mv.fast, !dbg !36
  %41 = add i64 %value_phi240.mv.fast, 1, !dbg !58
  %.not30.mv.fast = icmp sgt i64 %41, %"n::Int64", !dbg !60
  br i1 %.not30.mv.fast, label %L10.L60_crit_edge, label %L14.mv.fast, !dbg !35

L14.mv.ph:                                        ; preds = %L10.preheader
  br label %L14, !dbg !35

L14:                                              ; preds = %L52, %L14.mv.ph
  %value_phi341 = phi i64 [ 0, %L14.mv.ph ], [ %52, %L52 ]
  %value_phi240 = phi i64 [ 1, %L14.mv.ph ], [ %53, %L52 ]
  %42 = add i64 %value_phi240, %5, !dbg !36
  %43 = add i64 %42, -1, !dbg !39
  %.not31 = icmp ult i64 %43, %"a::Array.size.0.copyload", !dbg !39
  br i1 %.not31, label %L31, label %odessy.chk, !dbg !39

L28:                                              ; No predecessors!
  %umax = call i64 @llvm.umax.i64(i64 %"a::Array.size.0.copyload", i64 %indvars.iv), !dbg !34
  %44 = add i64 %umax, 1, !dbg !34
  store i64 %44, ptr %"new::Tuple15", align 8, !dbg !39, !tbaa !75, !alias.scope !77, !noalias !78
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"a::Array", ptr nonnull readonly captures(none) %"new::Tuple15") #9, !dbg !39
  unreachable, !dbg !39

L31:                                              ; preds = %L14
  %45 = add i64 %value_phi240, -1, !dbg !42
  %46 = mul i64 %45, %"n::Int64", !dbg !44
  %47 = add i64 %46, %value_phi143, !dbg !36
  %48 = add i64 %47, -1, !dbg !39
  %.not32 = icmp ult i64 %48, %"b::Array.size.0.copyload", !dbg !39
  br i1 %.not32, label %L52, label %odessy.chk1, !dbg !39

L49:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple", align 8, !dbg !39, !tbaa !75, !alias.scope !77, !noalias !78
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"b::Array", ptr nonnull readonly captures(none) %"new::Tuple") #9, !dbg !39
  unreachable, !dbg !39

L52:                                              ; preds = %L31
  %memoryref_offset = shl i64 %42, 3, !dbg !46
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !46
  %49 = load i64, ptr %gep, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8 = shl i64 %47, 3, !dbg !46
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8, !dbg !46
  %50 = load i64, ptr %gep47, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %51 = mul i64 %50, %49, !dbg !44
  %52 = add i64 %51, %value_phi341, !dbg !36
  %53 = add i64 %value_phi240, 1, !dbg !58
  %.not30 = icmp sgt i64 %53, %"n::Int64", !dbg !60
  br i1 %.not30, label %L10.L60_crit_edge, label %L14, !dbg !35

L10.L60_crit_edge:                                ; preds = %L52.mv.fast, %L52
  %.lcssa = phi i64 [ %52, %L52 ], [ %40, %L52.mv.fast ], !dbg !36
  %54 = add i64 %value_phi143, %5, !dbg !61
  %55 = add i64 %54, -1, !dbg !63
  %.not33 = icmp ult i64 %55, %"c::Array.size.0.copyload", !dbg !69
  br i1 %.not33, label %L77, label %odessy.chk2, !dbg !64

L74:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple27", align 8, !dbg !64, !tbaa !75, !alias.scope !77, !noalias !78
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"c::Array", ptr nonnull readonly captures(none) %"new::Tuple27") #9, !dbg !64
  unreachable, !dbg !64

L77:                                              ; preds = %L10.L60_crit_edge
  %memoryref_offset20 = shl i64 %54, 3, !dbg !71
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20, !dbg !71
  store i64 %.lcssa, ptr %gep49, align 8, !dbg !71, !tbaa !47, !alias.scope !50, !noalias !53
  %56 = add i64 %value_phi143, 1, !dbg !72
  %.not29 = icmp sgt i64 %56, %"n::Int64", !dbg !74
  br i1 %.not29, label %L6.L84_crit_edge.split, label %L10.preheader, !dbg !34

L6.L84_crit_edge.split:                           ; preds = %L77.mv.fast, %L77
  %57 = add i64 %value_phi45, 1, !dbg !79
  %.not = icmp sgt i64 %57, %"n::Int64", !dbg !29
  %indvars.iv.next = add i64 %indvars.iv, %"n::Int64", !dbg !33
  br i1 %.not, label %L86, label %L6.preheader, !dbg !33

L86:                                              ; preds = %L6.L84_crit_edge.split, %top
  ret ptr %"c::Array", !dbg !81

odessy.chk:                                       ; preds = %L14.mv.fast, %L14
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L31.mv.fast28, %L31
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L10.L60_crit_edge
  call void @odessy.chk(i32 2)
  unreachable

odessy.fasttrap:                                  ; preds = %L31.mv.fast.mv.fast, %L31.mv.fast
  call void @odessy.fast.trap(i32 0)
  unreachable

odessy.fasttrap37:                                ; preds = %L14.mv.fast24
  call void @odessy.fast.trap(i32 1)
  unreachable

odessy.fasttrap38:                                ; preds = %L14.mv.fast.mv.fast
  call void @odessy.fast.trap(i32 2)
  unreachable

odessy.fasttrap39:                                ; preds = %L10.L60_crit_edge.mv.fast
  call void @odessy.fast.trap(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_matmul!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4299407132 to ptr)(i64 4299407168) #10
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %4 = getelementptr inbounds i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %6 = getelementptr inbounds i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !85, !align !85
  %.unbox = load i64, ptr %7, align 8, !tbaa !86, !alias.scope !50, !noalias !53
  %8 = call swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %pgcstack, ptr %1, ptr %3, ptr %5, i64 signext %.unbox)
  %9 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %10 = load ptr, ptr %9, align 8
  ret ptr %10
}

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #3

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #6

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #2

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #7

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #7

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #8

; Function Attrs: cold noreturn nounwind
declare void @odessy.fast.trap(i32) #8

attributes #0 = { "julia.fsig"="matmul!(Array{Int64, 1}, Array{Int64, 1}, Array{Int64, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn "julia.fsig"="throw_boundserror(Array{Int64, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #7 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "matmul!", linkageName: "julia_matmul!_145", scope: null, file: !5, line: 4, type: !6, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/matmul.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !13, !8, !8, !8, !15}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !11, line: 71, align: 64, elements: !12)
!11 = !DIFile(filename: "julia.h", directory: "")
!12 = !{!9}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#matmul!", align: 8, elements: !14, runtimeLang: DW_LANG_Julia, identifier: "4573541136")
!14 = !{}
!15 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 4, type: !13)
!18 = !DILocalVariable(name: "c", arg: 2, scope: !4, file: !5, line: 4, type: !8)
!19 = !DILocalVariable(name: "a", arg: 3, scope: !4, file: !5, line: 4, type: !8)
!20 = !DILocalVariable(name: "b", arg: 4, scope: !4, file: !5, line: 4, type: !8)
!21 = !DILocalVariable(name: "n", arg: 5, scope: !4, file: !5, line: 4, type: !15)
!22 = !DILocation(line: 4, scope: !4)
!23 = !{!24, !24, i64 0}
!24 = !{!"jtbaa_gcframe", !25, i64 0}
!25 = !{!"jtbaa", !26, i64 0}
!26 = !{!"jtbaa"}
!27 = !{!28, !28, i64 0}
!28 = !{!"jtbaa_const", !25, i64 0}
!29 = !DILocation(line: 520, scope: !30, inlinedAt: !33)
!30 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!31 = !DIFile(filename: "int.jl", directory: ".")
!32 = !DISubroutineType(types: !14)
!33 = !DILocation(line: 6, scope: !4)
!34 = !DILocation(line: 8, scope: !4)
!35 = !DILocation(line: 11, scope: !4)
!36 = !DILocation(line: 87, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DILocation(line: 12, scope: !4)
!39 = !DILocation(line: 919, scope: !40, inlinedAt: !38)
!40 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !41, file: !41, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DIFile(filename: "essentials.jl", directory: ".")
!42 = !DILocation(line: 86, scope: !43, inlinedAt: !38)
!43 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!44 = !DILocation(line: 88, scope: !45, inlinedAt: !38)
!45 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!46 = !DILocation(line: 920, scope: !40, inlinedAt: !38)
!47 = !{!48, !48, i64 0}
!48 = !{!"jtbaa_arraybuf", !49, i64 0}
!49 = !{!"jtbaa_data", !25, i64 0}
!50 = !{!51}
!51 = !{!"jnoalias_data", !52}
!52 = !{!"jnoalias"}
!53 = !{!54, !55, !56, !57}
!54 = !{!"jnoalias_gcframe", !52}
!55 = !{!"jnoalias_stack", !52}
!56 = !{!"jnoalias_typemd", !52}
!57 = !{!"jnoalias_const", !52}
!58 = !DILocation(line: 87, scope: !37, inlinedAt: !59)
!59 = !DILocation(line: 13, scope: !4)
!60 = !DILocation(line: 520, scope: !30, inlinedAt: !35)
!61 = !DILocation(line: 87, scope: !37, inlinedAt: !62)
!62 = !DILocation(line: 15, scope: !4)
!63 = !DILocation(line: 86, scope: !43, inlinedAt: !64)
!64 = !DILocation(line: 990, scope: !65, inlinedAt: !67)
!65 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !66, file: !66, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "array.jl", directory: ".")
!67 = !DILocation(line: 986, scope: !68, inlinedAt: !62)
!68 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !66, file: !66, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!69 = !DILocation(line: 519, scope: !70, inlinedAt: !64)
!70 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!71 = !DILocation(line: 991, scope: !65, inlinedAt: !67)
!72 = !DILocation(line: 87, scope: !37, inlinedAt: !73)
!73 = !DILocation(line: 16, scope: !4)
!74 = !DILocation(line: 520, scope: !30, inlinedAt: !34)
!75 = !{!76, !76, i64 0}
!76 = !{!"jtbaa_stack", !25, i64 0}
!77 = !{!55}
!78 = !{!54, !51, !56, !57}
!79 = !DILocation(line: 87, scope: !37, inlinedAt: !80)
!80 = !DILocation(line: 18, scope: !4)
!81 = !DILocation(line: 20, scope: !4)
!82 = !{!57}
!83 = !{!54, !55, !51, !56}
!84 = !{i64 24}
!85 = !{i64 8}
!86 = !{!87, !87, i64 0}
!87 = !{!"jtbaa_immut", !88, i64 0}
!88 = !{!"jtbaa_value", !49, i64 0}
