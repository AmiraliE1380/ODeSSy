; ModuleID = 'results/static/guard_competitors/Julia_matmul/nofold.ll'
source_filename = "matmul!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.5.0"

; Function Attrs: nounwind
define swiftcc noundef nonnull ptr @"julia_matmul!_145"(ptr nonnull readonly swiftself captures(none) %pgcstack, ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(24) %"c::Array", ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"a::Array", ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"b::Array", i64 signext %"n::Int64") local_unnamed_addr #0 !dbg !4 {
top:
    #dbg_declare(ptr %"c::Array", !18, !DIExpression(), !22)
    #dbg_declare(ptr %"a::Array", !19, !DIExpression(), !22)
    #dbg_declare(ptr %"b::Array", !20, !DIExpression(), !22)
    #dbg_value(i64 %"n::Int64", !21, !DIExpression(), !22)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !23
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !22
  fence syncscope("singlethread") seq_cst
  %.not44 = icmp slt i64 %"n::Int64", 1, !dbg !29
  br i1 %.not44, label %L86, label %L6.preheader.lr.ph.split.split, !dbg !33

L6.preheader.lr.ph.split.split:                   ; preds = %top
  %"a::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"a::Array", i64 16
  %"b::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"b::Array", i64 16
  %"c::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"c::Array", i64 16
  %2 = mul i64 %"n::Int64", %"n::Int64", !dbg !33
  %3 = add i64 %2, -1, !dbg !33
  %mv.h11 = icmp samesign ult i64 %"n::Int64", 32769
  br label %L6.preheader, !dbg !33

L6.preheader:                                     ; preds = %L6.L84_crit_edge.split, %L6.preheader.lr.ph.split.split
  %value_phi45 = phi i64 [ 1, %L6.preheader.lr.ph.split.split ], [ %72, %L6.L84_crit_edge.split ]
  %4 = add i64 %value_phi45, -1
  %5 = mul i64 %4, %"n::Int64"
  %"a::Array.size.0.copyload" = load i64, ptr %"a::Array.size_ptr", align 8
  %"c::Array.size.0.copyload" = load i64, ptr %"c::Array.size_ptr", align 8
  %memoryref_data18 = load ptr, ptr %"c::Array", align 8
  %invariant.gep48 = getelementptr i8, ptr %memoryref_data18, i64 -8, !dbg !34
  %6 = icmp ult i64 %"a::Array.size.0.copyload", 1073741825, !dbg !34
  %mv.h15 = and i1 %mv.h11, %6, !dbg !34
  %mv.h16 = icmp ugt i64 %"a::Array.size.0.copyload", %3, !dbg !34
  %7 = icmp ult i64 %"c::Array.size.0.copyload", 1073741825, !dbg !34
  %8 = and i1 %mv.h16, %7, !dbg !34
  %mv.h22 = icmp ugt i64 %"c::Array.size.0.copyload", %3, !dbg !34
  %9 = and i1 %mv.h22, %8, !dbg !34
  %mv.h23 = and i1 %mv.h15, %9, !dbg !34
  br i1 %mv.h23, label %L10.preheader.mv.fast.preheader, label %L10.preheader.preheader

L10.preheader.preheader:                          ; preds = %L6.preheader
  %.not31.mv.fast57 = icmp ult i64 %5, %"a::Array.size.0.copyload"
  %10 = add i64 %5, 1
  %11 = add i64 %5, 1
  br label %L10.preheader

L10.preheader.mv.fast.preheader:                  ; preds = %L6.preheader
  %.not31.mv.fast.mv.fast63 = icmp ult i64 %5, %"a::Array.size.0.copyload"
  %12 = add i64 %5, 1
  %13 = add i64 %5, 1
  br label %L10.preheader.mv.fast

L10.preheader.mv.fast:                            ; preds = %L10.preheader.mv.fast.preheader, %L77.mv.fast
  %value_phi143.mv.fast = phi i64 [ %30, %L77.mv.fast ], [ 1, %L10.preheader.mv.fast.preheader ]
  %"b::Array.size.0.copyload.mv.fast" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data.mv.fast = load ptr, ptr %"a::Array", align 8
  %invariant.gep.mv.fast = getelementptr i8, ptr %memoryref_data.mv.fast, i64 -8, !dbg !35
  %memoryref_data6.mv.fast = load ptr, ptr %"b::Array", align 8
  %invariant.gep46.mv.fast = getelementptr i8, ptr %memoryref_data6.mv.fast, i64 -8, !dbg !35
  %14 = icmp ult i64 %"b::Array.size.0.copyload.mv.fast", 1073741825, !dbg !35
  %mv.h9.mv.fast = icmp ugt i64 %"b::Array.size.0.copyload.mv.fast", %3, !dbg !35
  %15 = and i1 %14, %mv.h9.mv.fast, !dbg !35
  br i1 %15, label %L14.mv.fast.mv.fast.preheader, label %L14.mv.fast24.preheader

L14.mv.fast24.preheader:                          ; preds = %L10.preheader.mv.fast
  br i1 %.not31.mv.fast.mv.fast63, label %L31.mv.fast28, label %odessy.fasttrap37, !dbg !36

L14.mv.fast.mv.fast.preheader:                    ; preds = %L10.preheader.mv.fast
  br i1 %.not31.mv.fast.mv.fast63, label %L31.mv.fast.mv.fast, label %odessy.fasttrap38, !dbg !36

L14.mv.fast24:                                    ; preds = %L52.mv.fast30
  %16 = add i64 %27, %5, !dbg !40
  %17 = add i64 %value_phi240.mv.fast2662, %5, !dbg !36
  %.not31.mv.fast27 = icmp ult i64 %17, %"a::Array.size.0.copyload", !dbg !36
  br i1 %.not31.mv.fast27, label %L31.mv.fast28, label %odessy.fasttrap37, !dbg !36

L31.mv.fast28:                                    ; preds = %L14.mv.fast24.preheader, %L14.mv.fast24
  %18 = phi i64 [ %16, %L14.mv.fast24 ], [ %12, %L14.mv.fast24.preheader ]
  %value_phi240.mv.fast2662 = phi i64 [ %27, %L14.mv.fast24 ], [ 1, %L14.mv.fast24.preheader ]
  %value_phi341.mv.fast2561 = phi i64 [ %26, %L14.mv.fast24 ], [ 0, %L14.mv.fast24.preheader ]
  %19 = add i64 %value_phi240.mv.fast2662, -1, !dbg !42
  %20 = mul i64 %19, %"n::Int64", !dbg !44
  %21 = add i64 %20, %value_phi143.mv.fast, !dbg !40
  %22 = add i64 %21, -1, !dbg !36
  %.not32.mv.fast29 = icmp ult i64 %22, %"b::Array.size.0.copyload.mv.fast", !dbg !36
  br i1 %.not32.mv.fast29, label %L52.mv.fast30, label %odessy.chk1, !dbg !36

L52.mv.fast30:                                    ; preds = %L31.mv.fast28
  %memoryref_offset.mv.fast31 = shl i64 %18, 3, !dbg !46
  %gep.mv.fast32 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %memoryref_offset.mv.fast31, !dbg !46
  %23 = load i64, ptr %gep.mv.fast32, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8.mv.fast33 = shl i64 %21, 3, !dbg !46
  %gep47.mv.fast34 = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %memoryref_offset8.mv.fast33, !dbg !46
  %24 = load i64, ptr %gep47.mv.fast34, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %25 = mul i64 %24, %23, !dbg !44
  %26 = add i64 %25, %value_phi341.mv.fast2561, !dbg !40
  %27 = add i64 %value_phi240.mv.fast2662, 1, !dbg !58
  %.not30.mv.fast35 = icmp sgt i64 %27, %"n::Int64", !dbg !60
  br i1 %.not30.mv.fast35, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast24, !dbg !35

L10.L60_crit_edge.mv.fast:                        ; preds = %L52.mv.fast30, %L52.mv.fast.mv.fast
  %.lcssa.mv.fast = phi i64 [ %41, %L52.mv.fast.mv.fast ], [ %26, %L52.mv.fast30 ], !dbg !40
  %28 = add i64 %value_phi143.mv.fast, %5, !dbg !61
  %29 = add i64 %28, -1, !dbg !63
  %.not33.mv.fast = icmp ult i64 %29, %"c::Array.size.0.copyload", !dbg !69
  br i1 %.not33.mv.fast, label %L77.mv.fast, label %odessy.fasttrap39, !dbg !64

L77.mv.fast:                                      ; preds = %L10.L60_crit_edge.mv.fast
  %memoryref_offset20.mv.fast = shl i64 %28, 3, !dbg !71
  %gep49.mv.fast = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20.mv.fast, !dbg !71
  store i64 %.lcssa.mv.fast, ptr %gep49.mv.fast, align 8, !dbg !71, !tbaa !47, !alias.scope !50, !noalias !53
  %30 = add i64 %value_phi143.mv.fast, 1, !dbg !72
  %.not29.mv.fast = icmp sgt i64 %30, %"n::Int64", !dbg !74
  br i1 %.not29.mv.fast, label %L6.L84_crit_edge.split, label %L10.preheader.mv.fast, !dbg !34

L14.mv.fast.mv.fast:                              ; preds = %L52.mv.fast.mv.fast
  %31 = add i64 %42, %5, !dbg !40
  %32 = add i64 %value_phi240.mv.fast.mv.fast65, %5, !dbg !36
  %.not31.mv.fast.mv.fast = icmp ult i64 %32, %"a::Array.size.0.copyload", !dbg !36
  br i1 %.not31.mv.fast.mv.fast, label %L31.mv.fast.mv.fast, label %odessy.fasttrap38, !dbg !36

L31.mv.fast.mv.fast:                              ; preds = %L14.mv.fast.mv.fast.preheader, %L14.mv.fast.mv.fast
  %33 = phi i64 [ %31, %L14.mv.fast.mv.fast ], [ %13, %L14.mv.fast.mv.fast.preheader ]
  %value_phi240.mv.fast.mv.fast65 = phi i64 [ %42, %L14.mv.fast.mv.fast ], [ 1, %L14.mv.fast.mv.fast.preheader ]
  %value_phi341.mv.fast.mv.fast64 = phi i64 [ %41, %L14.mv.fast.mv.fast ], [ 0, %L14.mv.fast.mv.fast.preheader ]
  %34 = add i64 %value_phi240.mv.fast.mv.fast65, -1, !dbg !42
  %35 = mul i64 %34, %"n::Int64", !dbg !44
  %36 = add i64 %35, %value_phi143.mv.fast, !dbg !40
  %37 = add i64 %36, -1, !dbg !36
  %.not32.mv.fast.mv.fast = icmp ult i64 %37, %"b::Array.size.0.copyload.mv.fast", !dbg !36
  br i1 %.not32.mv.fast.mv.fast, label %L52.mv.fast.mv.fast, label %odessy.fasttrap, !dbg !36

L52.mv.fast.mv.fast:                              ; preds = %L31.mv.fast.mv.fast
  %memoryref_offset.mv.fast.mv.fast = shl i64 %33, 3, !dbg !46
  %gep.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %memoryref_offset.mv.fast.mv.fast, !dbg !46
  %38 = load i64, ptr %gep.mv.fast.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8.mv.fast.mv.fast = shl i64 %36, 3, !dbg !46
  %gep47.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %memoryref_offset8.mv.fast.mv.fast, !dbg !46
  %39 = load i64, ptr %gep47.mv.fast.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %40 = mul i64 %39, %38, !dbg !44
  %41 = add i64 %40, %value_phi341.mv.fast.mv.fast64, !dbg !40
  %42 = add i64 %value_phi240.mv.fast.mv.fast65, 1, !dbg !58
  %.not30.mv.fast.mv.fast = icmp sgt i64 %42, %"n::Int64", !dbg !60
  br i1 %.not30.mv.fast.mv.fast, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast.mv.fast, !dbg !35

L10.preheader:                                    ; preds = %L10.preheader.preheader, %L77
  %value_phi143 = phi i64 [ %71, %L77 ], [ 1, %L10.preheader.preheader ]
  %"b::Array.size.0.copyload" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !35
  %memoryref_data6 = load ptr, ptr %"b::Array", align 8
  %invariant.gep46 = getelementptr i8, ptr %memoryref_data6, i64 -8, !dbg !35
  %43 = icmp ult i64 %"b::Array.size.0.copyload", 1073741825, !dbg !35
  %mv.h9 = icmp ugt i64 %"b::Array.size.0.copyload", %3, !dbg !35
  %44 = and i1 %43, %mv.h9, !dbg !35
  %mv.h10 = and i1 %mv.h15, %44, !dbg !35
  br i1 %mv.h10, label %L14.mv.fast.preheader, label %L14.preheader

L14.preheader:                                    ; preds = %L10.preheader
  br i1 %.not31.mv.fast57, label %L31, label %odessy.chk, !dbg !36

L14.mv.fast.preheader:                            ; preds = %L10.preheader
  br i1 %.not31.mv.fast57, label %L31.mv.fast, label %odessy.chk, !dbg !36

L14.mv.fast:                                      ; preds = %L52.mv.fast
  %45 = add i64 %56, %5, !dbg !40
  %46 = add i64 %value_phi240.mv.fast59, %5, !dbg !36
  %.not31.mv.fast = icmp ult i64 %46, %"a::Array.size.0.copyload", !dbg !36
  br i1 %.not31.mv.fast, label %L31.mv.fast, label %odessy.chk, !dbg !36

L31.mv.fast:                                      ; preds = %L14.mv.fast.preheader, %L14.mv.fast
  %47 = phi i64 [ %45, %L14.mv.fast ], [ %11, %L14.mv.fast.preheader ]
  %value_phi240.mv.fast59 = phi i64 [ %56, %L14.mv.fast ], [ 1, %L14.mv.fast.preheader ]
  %value_phi341.mv.fast58 = phi i64 [ %55, %L14.mv.fast ], [ 0, %L14.mv.fast.preheader ]
  %48 = add i64 %value_phi240.mv.fast59, -1, !dbg !42
  %49 = mul i64 %48, %"n::Int64", !dbg !44
  %50 = add i64 %49, %value_phi143, !dbg !40
  %51 = add i64 %50, -1, !dbg !36
  %.not32.mv.fast = icmp ult i64 %51, %"b::Array.size.0.copyload", !dbg !36
  br i1 %.not32.mv.fast, label %L52.mv.fast, label %odessy.fasttrap, !dbg !36

L52.mv.fast:                                      ; preds = %L31.mv.fast
  %memoryref_offset.mv.fast = shl i64 %47, 3, !dbg !46
  %gep.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.mv.fast, !dbg !46
  %52 = load i64, ptr %gep.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8.mv.fast = shl i64 %50, 3, !dbg !46
  %gep47.mv.fast = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8.mv.fast, !dbg !46
  %53 = load i64, ptr %gep47.mv.fast, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %54 = mul i64 %53, %52, !dbg !44
  %55 = add i64 %54, %value_phi341.mv.fast58, !dbg !40
  %56 = add i64 %value_phi240.mv.fast59, 1, !dbg !58
  %.not30.mv.fast = icmp sgt i64 %56, %"n::Int64", !dbg !60
  br i1 %.not30.mv.fast, label %L10.L60_crit_edge, label %L14.mv.fast, !dbg !35

L14:                                              ; preds = %L52
  %57 = add i64 %68, %5, !dbg !40
  %58 = add i64 %value_phi24056, %5, !dbg !36
  %.not31 = icmp ult i64 %58, %"a::Array.size.0.copyload", !dbg !36
  br i1 %.not31, label %L31, label %odessy.chk, !dbg !36

L31:                                              ; preds = %L14.preheader, %L14
  %59 = phi i64 [ %57, %L14 ], [ %10, %L14.preheader ]
  %value_phi24056 = phi i64 [ %68, %L14 ], [ 1, %L14.preheader ]
  %value_phi34155 = phi i64 [ %67, %L14 ], [ 0, %L14.preheader ]
  %60 = add i64 %value_phi24056, -1, !dbg !42
  %61 = mul i64 %60, %"n::Int64", !dbg !44
  %62 = add i64 %61, %value_phi143, !dbg !40
  %63 = add i64 %62, -1, !dbg !36
  %.not32 = icmp ult i64 %63, %"b::Array.size.0.copyload", !dbg !36
  br i1 %.not32, label %L52, label %odessy.chk1, !dbg !36

L52:                                              ; preds = %L31
  %memoryref_offset = shl i64 %59, 3, !dbg !46
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !46
  %64 = load i64, ptr %gep, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8 = shl i64 %62, 3, !dbg !46
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8, !dbg !46
  %65 = load i64, ptr %gep47, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %66 = mul i64 %65, %64, !dbg !44
  %67 = add i64 %66, %value_phi34155, !dbg !40
  %68 = add i64 %value_phi24056, 1, !dbg !58
  %.not30 = icmp sgt i64 %68, %"n::Int64", !dbg !60
  br i1 %.not30, label %L10.L60_crit_edge, label %L14, !dbg !35

L10.L60_crit_edge:                                ; preds = %L52, %L52.mv.fast
  %.lcssa = phi i64 [ %55, %L52.mv.fast ], [ %67, %L52 ], !dbg !40
  %69 = add i64 %value_phi143, %5, !dbg !61
  %70 = add i64 %69, -1, !dbg !63
  %.not33 = icmp ult i64 %70, %"c::Array.size.0.copyload", !dbg !69
  br i1 %.not33, label %L77, label %odessy.chk2, !dbg !64

L77:                                              ; preds = %L10.L60_crit_edge
  %memoryref_offset20 = shl i64 %69, 3, !dbg !71
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20, !dbg !71
  store i64 %.lcssa, ptr %gep49, align 8, !dbg !71, !tbaa !47, !alias.scope !50, !noalias !53
  %71 = add i64 %value_phi143, 1, !dbg !72
  %.not29 = icmp sgt i64 %71, %"n::Int64", !dbg !74
  br i1 %.not29, label %L6.L84_crit_edge.split, label %L10.preheader, !dbg !34

L6.L84_crit_edge.split:                           ; preds = %L77, %L77.mv.fast
  %72 = add i64 %value_phi45, 1, !dbg !75
  %.not = icmp sgt i64 %72, %"n::Int64", !dbg !29
  br i1 %.not, label %L86, label %L6.preheader, !dbg !33

L86:                                              ; preds = %L6.L84_crit_edge.split, %top
  ret ptr %"c::Array", !dbg !77

odessy.chk:                                       ; preds = %L14.preheader, %L14.mv.fast.preheader, %L14, %L14.mv.fast
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L31, %L31.mv.fast28
  tail call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L10.L60_crit_edge
  tail call void @odessy.chk(i32 2)
  unreachable

odessy.fasttrap:                                  ; preds = %L31.mv.fast, %L31.mv.fast.mv.fast
  tail call void @odessy.fast.trap(i32 0)
  unreachable

odessy.fasttrap37:                                ; preds = %L14.mv.fast24.preheader, %L14.mv.fast24
  tail call void @odessy.fast.trap(i32 1)
  unreachable

odessy.fasttrap38:                                ; preds = %L14.mv.fast.mv.fast.preheader, %L14.mv.fast.mv.fast
  tail call void @odessy.fast.trap(i32 2)
  unreachable

odessy.fasttrap39:                                ; preds = %L10.L60_crit_edge.mv.fast
  tail call void @odessy.fast.trap(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_matmul!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4299407132 to ptr)(i64 4299407168) #3
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !80, !align !81
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !80, !align !81
  %4 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !80, !align !81
  %6 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !81, !align !81
  %.unbox = load i64, ptr %7, align 8, !tbaa !82, !alias.scope !50, !noalias !53
  %8 = call swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %pgcstack, ptr %1, ptr %3, ptr %5, i64 signext %.unbox)
  %9 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %10 = load ptr, ptr %9, align 8
  ret ptr %10
}

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind
declare void @odessy.fast.trap(i32) local_unnamed_addr #2

attributes #0 = { nounwind "julia.fsig"="matmul!(Array{Int64, 1}, Array{Int64, 1}, Array{Int64, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { nounwind memory(none) }

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
!36 = !DILocation(line: 919, scope: !37, inlinedAt: !39)
!37 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !38, file: !38, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DIFile(filename: "essentials.jl", directory: ".")
!39 = !DILocation(line: 12, scope: !4)
!40 = !DILocation(line: 87, scope: !41, inlinedAt: !39)
!41 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!42 = !DILocation(line: 86, scope: !43, inlinedAt: !39)
!43 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!44 = !DILocation(line: 88, scope: !45, inlinedAt: !39)
!45 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!46 = !DILocation(line: 920, scope: !37, inlinedAt: !39)
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
!58 = !DILocation(line: 87, scope: !41, inlinedAt: !59)
!59 = !DILocation(line: 13, scope: !4)
!60 = !DILocation(line: 520, scope: !30, inlinedAt: !35)
!61 = !DILocation(line: 87, scope: !41, inlinedAt: !62)
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
!72 = !DILocation(line: 87, scope: !41, inlinedAt: !73)
!73 = !DILocation(line: 16, scope: !4)
!74 = !DILocation(line: 520, scope: !30, inlinedAt: !34)
!75 = !DILocation(line: 87, scope: !41, inlinedAt: !76)
!76 = !DILocation(line: 18, scope: !4)
!77 = !DILocation(line: 20, scope: !4)
!78 = !{!57}
!79 = !{!54, !55, !51, !56}
!80 = !{i64 24}
!81 = !{i64 8}
!82 = !{!83, !83, i64 0}
!83 = !{!"jtbaa_immut", !84, i64 0}
!84 = !{!"jtbaa_value", !49, i64 0}
