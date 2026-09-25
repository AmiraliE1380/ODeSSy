; ModuleID = 'results/static/guard_competitors/Julia_matmul/mv.ll'
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
  %min.iters.check = icmp eq i64 %"n::Int64", 1
  %n.vec = and i64 %"n::Int64", 65534
  %4 = or i64 %"n::Int64", 1
  %cmp.n = icmp eq i64 %"n::Int64", %n.vec
  br label %L6.preheader, !dbg !33

L6.preheader:                                     ; preds = %L6.L84_crit_edge.split, %L6.preheader.lr.ph.split.split
  %value_phi45 = phi i64 [ 1, %L6.preheader.lr.ph.split.split ], [ %87, %L6.L84_crit_edge.split ]
  %5 = add i64 %value_phi45, -1
  %6 = mul i64 %5, %"n::Int64"
  %"a::Array.size.0.copyload" = load i64, ptr %"a::Array.size_ptr", align 8
  %"c::Array.size.0.copyload" = load i64, ptr %"c::Array.size_ptr", align 8
  %memoryref_data18 = load ptr, ptr %"c::Array", align 8
  %invariant.gep48 = getelementptr i8, ptr %memoryref_data18, i64 -8, !dbg !34
  %7 = icmp ult i64 %"a::Array.size.0.copyload", 1073741825, !dbg !34
  %mv.h15 = and i1 %mv.h11, %7, !dbg !34
  %mv.h16 = icmp ugt i64 %"a::Array.size.0.copyload", %3, !dbg !34
  %8 = icmp ult i64 %"c::Array.size.0.copyload", 1073741825, !dbg !34
  %9 = and i1 %mv.h16, %8, !dbg !34
  %mv.h22 = icmp ugt i64 %"c::Array.size.0.copyload", %3, !dbg !34
  %10 = and i1 %mv.h22, %9, !dbg !34
  %mv.h23 = and i1 %mv.h15, %10, !dbg !34
  br i1 %mv.h23, label %L10.preheader.mv.fast.preheader, label %L10.preheader.preheader

L10.preheader.preheader:                          ; preds = %L6.preheader
  %.not31.mv.fast51 = icmp ult i64 %6, %"a::Array.size.0.copyload"
  %11 = add i64 %6, 1
  %12 = add i64 %6, 1
  br label %L10.preheader

L10.preheader.mv.fast.preheader:                  ; preds = %L6.preheader
  %invariant.op = add i64 2, %6
  br label %L10.preheader.mv.fast

L10.preheader.mv.fast:                            ; preds = %L10.preheader.mv.fast.preheader, %L10.L60_crit_edge.mv.fast
  %value_phi143.mv.fast = phi i64 [ %49, %L10.L60_crit_edge.mv.fast ], [ 1, %L10.preheader.mv.fast.preheader ]
  %"b::Array.size.0.copyload.mv.fast" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data.mv.fast = load ptr, ptr %"a::Array", align 8
  %invariant.gep.mv.fast = getelementptr i8, ptr %memoryref_data.mv.fast, i64 -8, !dbg !35
  %memoryref_data6.mv.fast = load ptr, ptr %"b::Array", align 8
  %invariant.gep46.mv.fast = getelementptr i8, ptr %memoryref_data6.mv.fast, i64 -8, !dbg !35
  %13 = icmp ult i64 %"b::Array.size.0.copyload.mv.fast", 1073741825, !dbg !35
  %mv.h9.mv.fast = icmp ugt i64 %"b::Array.size.0.copyload.mv.fast", %3, !dbg !35
  %14 = and i1 %13, %mv.h9.mv.fast, !dbg !35
  br i1 %14, label %L14.mv.fast.mv.fast.preheader, label %L14.mv.fast24

L14.mv.fast.mv.fast.preheader:                    ; preds = %L10.preheader.mv.fast
  br i1 %min.iters.check, label %L14.mv.fast.mv.fast.preheader55, label %vector.body, !dbg !35

vector.body:                                      ; preds = %L14.mv.fast.mv.fast.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %L14.mv.fast.mv.fast.preheader ]
  %vec.phi = phi i64 [ %35, %vector.body ], [ 0, %L14.mv.fast.mv.fast.preheader ]
  %vec.phi54 = phi i64 [ %36, %vector.body ], [ 0, %L14.mv.fast.mv.fast.preheader ]
  %offset.idx = or disjoint i64 %index, 1
  %15 = add i64 %offset.idx, %6, !dbg !36
  %.reass = add i64 %index, %invariant.op
  %16 = or disjoint i64 %index, 1, !dbg !39
  %17 = mul i64 %index, %"n::Int64", !dbg !41
  %18 = mul i64 %16, %"n::Int64", !dbg !41
  %19 = add i64 %17, %value_phi143.mv.fast, !dbg !36
  %20 = add i64 %18, %value_phi143.mv.fast, !dbg !36
  %21 = shl i64 %15, 3, !dbg !43
  %22 = shl i64 %.reass, 3, !dbg !43
  %23 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %21, !dbg !43
  %24 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %22, !dbg !43
  %25 = load i64, ptr %23, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %26 = load i64, ptr %24, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %27 = shl i64 %19, 3, !dbg !43
  %28 = shl i64 %20, 3, !dbg !43
  %29 = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %27, !dbg !43
  %30 = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %28, !dbg !43
  %31 = load i64, ptr %29, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %32 = load i64, ptr %30, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %33 = mul i64 %31, %25, !dbg !41
  %34 = mul i64 %32, %26, !dbg !41
  %35 = add i64 %33, %vec.phi, !dbg !36
  %36 = add i64 %34, %vec.phi54, !dbg !36
  %index.next = add nuw i64 %index, 2
  %37 = icmp eq i64 %index.next, %n.vec, !dbg !35
  br i1 %37, label %middle.block, label %vector.body, !dbg !35, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %36, %35, !dbg !35
  br i1 %cmp.n, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast.mv.fast.preheader55, !dbg !35

L14.mv.fast.mv.fast.preheader55:                  ; preds = %L14.mv.fast.mv.fast.preheader, %middle.block
  %value_phi341.mv.fast.mv.fast.ph = phi i64 [ 0, %L14.mv.fast.mv.fast.preheader ], [ %bin.rdx, %middle.block ]
  %value_phi240.mv.fast.mv.fast.ph = phi i64 [ 1, %L14.mv.fast.mv.fast.preheader ], [ %4, %middle.block ]
  br label %L14.mv.fast.mv.fast, !dbg !35

L14.mv.fast24:                                    ; preds = %L10.preheader.mv.fast, %L52.mv.fast30
  %value_phi341.mv.fast25 = phi i64 [ %46, %L52.mv.fast30 ], [ 0, %L10.preheader.mv.fast ]
  %value_phi240.mv.fast26 = phi i64 [ %47, %L52.mv.fast30 ], [ 1, %L10.preheader.mv.fast ]
  %38 = add i64 %value_phi240.mv.fast26, -1, !dbg !39
  %39 = mul i64 %38, %"n::Int64", !dbg !41
  %40 = add i64 %39, %value_phi143.mv.fast, !dbg !36
  %41 = add i64 %40, -1, !dbg !60
  %.not32.mv.fast29 = icmp ult i64 %41, %"b::Array.size.0.copyload.mv.fast", !dbg !60
  br i1 %.not32.mv.fast29, label %L52.mv.fast30, label %odessy.chk1, !dbg !60

L52.mv.fast30:                                    ; preds = %L14.mv.fast24
  %42 = add i64 %value_phi240.mv.fast26, %6, !dbg !36
  %memoryref_offset.mv.fast31 = shl i64 %42, 3, !dbg !43
  %gep.mv.fast32 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %memoryref_offset.mv.fast31, !dbg !43
  %43 = load i64, ptr %gep.mv.fast32, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %memoryref_offset8.mv.fast33 = shl i64 %40, 3, !dbg !43
  %gep47.mv.fast34 = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %memoryref_offset8.mv.fast33, !dbg !43
  %44 = load i64, ptr %gep47.mv.fast34, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %45 = mul i64 %44, %43, !dbg !41
  %46 = add i64 %45, %value_phi341.mv.fast25, !dbg !36
  %47 = add i64 %value_phi240.mv.fast26, 1, !dbg !61
  %.not30.mv.fast35 = icmp sgt i64 %47, %"n::Int64", !dbg !63
  br i1 %.not30.mv.fast35, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast24, !dbg !35

L10.L60_crit_edge.mv.fast:                        ; preds = %L52.mv.fast30, %L14.mv.fast.mv.fast, %middle.block
  %.lcssa.mv.fast = phi i64 [ %57, %L14.mv.fast.mv.fast ], [ %bin.rdx, %middle.block ], [ %46, %L52.mv.fast30 ], !dbg !36
  %48 = add i64 %value_phi143.mv.fast, %6, !dbg !64
  %memoryref_offset20.mv.fast = shl i64 %48, 3, !dbg !66
  %gep49.mv.fast = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20.mv.fast, !dbg !66
  store i64 %.lcssa.mv.fast, ptr %gep49.mv.fast, align 8, !dbg !66, !tbaa !46, !alias.scope !49, !noalias !52
  %49 = add i64 %value_phi143.mv.fast, 1, !dbg !71
  %.not29.mv.fast = icmp sgt i64 %49, %"n::Int64", !dbg !73
  br i1 %.not29.mv.fast, label %L6.L84_crit_edge.split, label %L10.preheader.mv.fast, !dbg !34

L14.mv.fast.mv.fast:                              ; preds = %L14.mv.fast.mv.fast.preheader55, %L14.mv.fast.mv.fast
  %value_phi341.mv.fast.mv.fast = phi i64 [ %57, %L14.mv.fast.mv.fast ], [ %value_phi341.mv.fast.mv.fast.ph, %L14.mv.fast.mv.fast.preheader55 ]
  %value_phi240.mv.fast.mv.fast = phi i64 [ %58, %L14.mv.fast.mv.fast ], [ %value_phi240.mv.fast.mv.fast.ph, %L14.mv.fast.mv.fast.preheader55 ]
  %50 = add i64 %value_phi240.mv.fast.mv.fast, %6, !dbg !36
  %51 = add nuw nsw i64 %value_phi240.mv.fast.mv.fast, 2305843009213693951, !dbg !39
  %52 = mul i64 %51, %"n::Int64", !dbg !41
  %53 = add i64 %52, %value_phi143.mv.fast, !dbg !36
  %memoryref_offset.mv.fast.mv.fast = shl i64 %50, 3, !dbg !43
  %gep.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %memoryref_offset.mv.fast.mv.fast, !dbg !43
  %54 = load i64, ptr %gep.mv.fast.mv.fast, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %memoryref_offset8.mv.fast.mv.fast = shl i64 %53, 3, !dbg !43
  %gep47.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep46.mv.fast, i64 %memoryref_offset8.mv.fast.mv.fast, !dbg !43
  %55 = load i64, ptr %gep47.mv.fast.mv.fast, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %56 = mul i64 %55, %54, !dbg !41
  %57 = add i64 %56, %value_phi341.mv.fast.mv.fast, !dbg !36
  %58 = add nuw i64 %value_phi240.mv.fast.mv.fast, 1, !dbg !61
  %exitcond.not = icmp eq i64 %value_phi240.mv.fast.mv.fast, %"n::Int64", !dbg !63
  br i1 %exitcond.not, label %L10.L60_crit_edge.mv.fast, label %L14.mv.fast.mv.fast, !dbg !35, !llvm.loop !74

L10.preheader:                                    ; preds = %L10.preheader.preheader, %L77
  %value_phi143 = phi i64 [ %86, %L77 ], [ 1, %L10.preheader.preheader ]
  %"b::Array.size.0.copyload" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !35
  %memoryref_data6 = load ptr, ptr %"b::Array", align 8
  %invariant.gep46 = getelementptr i8, ptr %memoryref_data6, i64 -8, !dbg !35
  %59 = icmp ult i64 %"b::Array.size.0.copyload", 1073741825, !dbg !35
  %mv.h9 = icmp ugt i64 %"b::Array.size.0.copyload", %3, !dbg !35
  %60 = and i1 %59, %mv.h9, !dbg !35
  %mv.h10 = and i1 %mv.h15, %60, !dbg !35
  br i1 %mv.h10, label %L14.mv.fast.preheader, label %L14.preheader

L14.preheader:                                    ; preds = %L10.preheader
  br i1 %.not31.mv.fast51, label %L31, label %odessy.chk, !dbg !60

L14.mv.fast.preheader:                            ; preds = %L10.preheader
  br i1 %.not31.mv.fast51, label %L31.mv.fast, label %odessy.chk, !dbg !60

L14.mv.fast:                                      ; preds = %L31.mv.fast
  %61 = add i64 %71, %6, !dbg !36
  %62 = add i64 %value_phi240.mv.fast53, %6, !dbg !60
  %.not31.mv.fast = icmp ult i64 %62, %"a::Array.size.0.copyload", !dbg !60
  br i1 %.not31.mv.fast, label %L31.mv.fast, label %odessy.chk, !dbg !60

L31.mv.fast:                                      ; preds = %L14.mv.fast.preheader, %L14.mv.fast
  %63 = phi i64 [ %61, %L14.mv.fast ], [ %12, %L14.mv.fast.preheader ]
  %value_phi240.mv.fast53 = phi i64 [ %71, %L14.mv.fast ], [ 1, %L14.mv.fast.preheader ]
  %value_phi341.mv.fast52 = phi i64 [ %70, %L14.mv.fast ], [ 0, %L14.mv.fast.preheader ]
  %64 = add i64 %value_phi240.mv.fast53, 2305843009213693951, !dbg !39
  %65 = mul i64 %64, %"n::Int64", !dbg !41
  %66 = add i64 %65, %value_phi143, !dbg !36
  %memoryref_offset.mv.fast = shl i64 %63, 3, !dbg !43
  %gep.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.mv.fast, !dbg !43
  %67 = load i64, ptr %gep.mv.fast, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %memoryref_offset8.mv.fast = shl i64 %66, 3, !dbg !43
  %gep47.mv.fast = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8.mv.fast, !dbg !43
  %68 = load i64, ptr %gep47.mv.fast, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %69 = mul i64 %68, %67, !dbg !41
  %70 = add i64 %69, %value_phi341.mv.fast52, !dbg !36
  %71 = add i64 %value_phi240.mv.fast53, 1, !dbg !61
  %.not30.mv.fast = icmp sgt i64 %71, %"n::Int64", !dbg !63
  br i1 %.not30.mv.fast, label %L10.L60_crit_edge, label %L14.mv.fast, !dbg !35

L14:                                              ; preds = %L52
  %72 = add i64 %83, %6, !dbg !36
  %73 = add i64 %value_phi24050, %6, !dbg !60
  %.not31 = icmp ult i64 %73, %"a::Array.size.0.copyload", !dbg !60
  br i1 %.not31, label %L31, label %odessy.chk, !dbg !60

L31:                                              ; preds = %L14.preheader, %L14
  %74 = phi i64 [ %72, %L14 ], [ %11, %L14.preheader ]
  %value_phi24050 = phi i64 [ %83, %L14 ], [ 1, %L14.preheader ]
  %value_phi34149 = phi i64 [ %82, %L14 ], [ 0, %L14.preheader ]
  %75 = add i64 %value_phi24050, -1, !dbg !39
  %76 = mul i64 %75, %"n::Int64", !dbg !41
  %77 = add i64 %76, %value_phi143, !dbg !36
  %78 = add i64 %77, -1, !dbg !60
  %.not32 = icmp ult i64 %78, %"b::Array.size.0.copyload", !dbg !60
  br i1 %.not32, label %L52, label %odessy.chk1, !dbg !60

L52:                                              ; preds = %L31
  %memoryref_offset = shl i64 %74, 3, !dbg !43
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !43
  %79 = load i64, ptr %gep, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %memoryref_offset8 = shl i64 %77, 3, !dbg !43
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8, !dbg !43
  %80 = load i64, ptr %gep47, align 8, !dbg !43, !tbaa !46, !alias.scope !49, !noalias !52
  %81 = mul i64 %80, %79, !dbg !41
  %82 = add i64 %81, %value_phi34149, !dbg !36
  %83 = add i64 %value_phi24050, 1, !dbg !61
  %.not30 = icmp sgt i64 %83, %"n::Int64", !dbg !63
  br i1 %.not30, label %L10.L60_crit_edge, label %L14, !dbg !35

L10.L60_crit_edge:                                ; preds = %L52, %L31.mv.fast
  %.lcssa = phi i64 [ %70, %L31.mv.fast ], [ %82, %L52 ], !dbg !36
  %84 = add i64 %value_phi143, %6, !dbg !64
  %85 = add i64 %84, -1, !dbg !75
  %.not33 = icmp ult i64 %85, %"c::Array.size.0.copyload", !dbg !77
  br i1 %.not33, label %L77, label %odessy.chk2, !dbg !76

L77:                                              ; preds = %L10.L60_crit_edge
  %memoryref_offset20 = shl i64 %84, 3, !dbg !66
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20, !dbg !66
  store i64 %.lcssa, ptr %gep49, align 8, !dbg !66, !tbaa !46, !alias.scope !49, !noalias !52
  %86 = add i64 %value_phi143, 1, !dbg !71
  %.not29 = icmp sgt i64 %86, %"n::Int64", !dbg !73
  br i1 %.not29, label %L6.L84_crit_edge.split, label %L10.preheader, !dbg !34

L6.L84_crit_edge.split:                           ; preds = %L77, %L10.L60_crit_edge.mv.fast
  %87 = add i64 %value_phi45, 1, !dbg !79
  %.not = icmp sgt i64 %87, %"n::Int64", !dbg !29
  br i1 %.not, label %L86, label %L6.preheader, !dbg !33

L86:                                              ; preds = %L6.L84_crit_edge.split, %top
  ret ptr %"c::Array", !dbg !81

odessy.chk:                                       ; preds = %L14.preheader, %L14.mv.fast.preheader, %L14, %L14.mv.fast
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L31, %L14.mv.fast24
  tail call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L10.L60_crit_edge
  tail call void @odessy.chk(i32 2)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_matmul!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4299407132 to ptr)(i64 4299407168) #3
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %4 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %6 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !85, !align !85
  %.unbox = load i64, ptr %7, align 8, !tbaa !86, !alias.scope !49, !noalias !52
  %8 = call swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %pgcstack, ptr %1, ptr %3, ptr %5, i64 signext %.unbox)
  %9 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %10 = load ptr, ptr %9, align 8
  ret ptr %10
}

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #2

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
!36 = !DILocation(line: 87, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DILocation(line: 12, scope: !4)
!39 = !DILocation(line: 86, scope: !40, inlinedAt: !38)
!40 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DILocation(line: 88, scope: !42, inlinedAt: !38)
!42 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!43 = !DILocation(line: 920, scope: !44, inlinedAt: !38)
!44 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !45, file: !45, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!45 = !DIFile(filename: "essentials.jl", directory: ".")
!46 = !{!47, !47, i64 0}
!47 = !{!"jtbaa_arraybuf", !48, i64 0}
!48 = !{!"jtbaa_data", !25, i64 0}
!49 = !{!50}
!50 = !{!"jnoalias_data", !51}
!51 = !{!"jnoalias"}
!52 = !{!53, !54, !55, !56}
!53 = !{!"jnoalias_gcframe", !51}
!54 = !{!"jnoalias_stack", !51}
!55 = !{!"jnoalias_typemd", !51}
!56 = !{!"jnoalias_const", !51}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !DILocation(line: 919, scope: !44, inlinedAt: !38)
!61 = !DILocation(line: 87, scope: !37, inlinedAt: !62)
!62 = !DILocation(line: 13, scope: !4)
!63 = !DILocation(line: 520, scope: !30, inlinedAt: !35)
!64 = !DILocation(line: 87, scope: !37, inlinedAt: !65)
!65 = !DILocation(line: 15, scope: !4)
!66 = !DILocation(line: 991, scope: !67, inlinedAt: !69)
!67 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !68, file: !68, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!68 = !DIFile(filename: "array.jl", directory: ".")
!69 = !DILocation(line: 986, scope: !70, inlinedAt: !65)
!70 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !68, file: !68, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!71 = !DILocation(line: 87, scope: !37, inlinedAt: !72)
!72 = !DILocation(line: 16, scope: !4)
!73 = !DILocation(line: 520, scope: !30, inlinedAt: !34)
!74 = distinct !{!74, !58}
!75 = !DILocation(line: 86, scope: !40, inlinedAt: !76)
!76 = !DILocation(line: 990, scope: !67, inlinedAt: !69)
!77 = !DILocation(line: 519, scope: !78, inlinedAt: !76)
!78 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!79 = !DILocation(line: 87, scope: !37, inlinedAt: !80)
!80 = !DILocation(line: 18, scope: !4)
!81 = !DILocation(line: 20, scope: !4)
!82 = !{!56}
!83 = !{!53, !54, !50, !55}
!84 = !{i64 24}
!85 = !{i64 8}
!86 = !{!87, !87, i64 0}
!87 = !{!"jtbaa_immut", !88, i64 0}
!88 = !{!"jtbaa_value", !48, i64 0}
