; ModuleID = 'results/static/guard_competitors/Julia_lz77/mv.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

; Function Attrs: nounwind
define swiftcc i64 @julia_lz77_scan_145(ptr nonnull readonly swiftself captures(none) %pgcstack, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"data::Array", i64 signext %"window::Int64") local_unnamed_addr #0 !dbg !4 {
top:
    #dbg_declare(ptr %"data::Array", !18, !DIExpression(), !20)
    #dbg_value(i64 %"window::Int64", !19, !DIExpression(), !20)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !21
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !20
  fence syncscope("singlethread") seq_cst
  %"data::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"data::Array", i64 16, !dbg !27
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8, !dbg !27
  %.not48 = icmp slt i64 %"data::Array.size.0.copyload", 2, !dbg !32
  br i1 %.not48, label %L84, label %L8.lr.ph, !dbg !35

L8.lr.ph:                                         ; preds = %top
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -1
  %2 = add nsw i64 %"data::Array.size.0.copyload", -9223372036854775807, !dbg !35
  %mv.h = icmp samesign ult i64 %"data::Array.size.0.copyload", 4611686018427387905, !dbg !35
  %mv.h8 = icmp sgt i64 %"window::Int64", -1, !dbg !35
  %mv.h9 = and i1 %mv.h8, %mv.h, !dbg !35
  br i1 %mv.h9, label %L8.mv.fast, label %L8

L8.mv.fast:                                       ; preds = %L8.lr.ph, %L75.mv.fast
  %value_phi150.mv.fast = phi i64 [ %value_phi28.mv.fast, %L75.mv.fast ], [ 0, %L8.lr.ph ]
  %value_phi49.mv.fast = phi i64 [ %value_phi27.mv.fast, %L75.mv.fast ], [ 2, %L8.lr.ph ]
  %.not30.mv.fast = icmp sgt i64 %value_phi49.mv.fast, %"window::Int64", !dbg !36
  %3 = sub i64 %value_phi49.mv.fast, %"window::Int64", !dbg !41
  %value_phi2.mv.fast = select i1 %.not30.mv.fast, i64 %3, i64 1, !dbg !41
  %.not3145.mv.fast = icmp slt i64 %value_phi2.mv.fast, %value_phi49.mv.fast, !dbg !42
  br i1 %.not3145.mv.fast, label %L19.preheader.lr.ph.mv.fast, label %L75.mv.fast, !dbg !43

L19.preheader.lr.ph.mv.fast:                      ; preds = %L8.mv.fast
  %4 = add i64 %value_phi2.mv.fast, -1, !dbg !43
  %5 = add nsw i64 %value_phi49.mv.fast, -1, !dbg !43
  %smax55.mv.fast = tail call i64 @llvm.smax.i64(i64 %5, i64 -9223372036854775807), !dbg !43
  %smax60.mv.fast = tail call i64 @llvm.smax.i64(i64 %5, i64 %2), !dbg !43
  %6 = sub i64 %"data::Array.size.0.copyload", %smax60.mv.fast, !dbg !43
  %7 = sub i64 %value_phi49.mv.fast, %value_phi2.mv.fast, !dbg !43
  br label %L19.preheader.mv.fast, !dbg !43

L19.preheader.mv.fast:                            ; preds = %L68.mv.fast, %L19.preheader.lr.ph.mv.fast
  %indvars.iv.mv.fast = phi i64 [ %4, %L19.preheader.lr.ph.mv.fast ], [ %indvars.iv.next.mv.fast, %L68.mv.fast ]
  %indvar.mv.fast = phi i64 [ 0, %L19.preheader.lr.ph.mv.fast ], [ %indvar.next.mv.fast, %L68.mv.fast ]
  %value_phi447.mv.fast = phi i64 [ 0, %L19.preheader.lr.ph.mv.fast ], [ %value_phi4.value_phi23.mv.fast, %L68.mv.fast ]
  %value_phi346.mv.fast = phi i64 [ %value_phi2.mv.fast, %L19.preheader.lr.ph.mv.fast ], [ %31, %L68.mv.fast ]
  %smax44 = tail call i64 @llvm.smax.i64(i64 %indvars.iv.mv.fast, i64 %2), !dbg !44
  %8 = sub i64 %"data::Array.size.0.copyload", %smax44, !dbg !44
  %smin45 = tail call i64 @llvm.smin.i64(i64 %8, i64 %6), !dbg !44
  %smin46 = tail call i64 @llvm.smin.i64(i64 %smin45, i64 255), !dbg !44
  %9 = add i64 %smin46, -1, !dbg !44
  %smax80.mv.fast = tail call i64 @llvm.smax.i64(i64 %indvars.iv.mv.fast, i64 -9223372036854775807), !dbg !44
  %10 = tail call i64 @llvm.smin.i64(i64 %smax80.mv.fast, i64 %smax55.mv.fast), !dbg !44
  %smax81.mv.fast = sub nsw i64 0, %10, !dbg !44
  %smin82.mv.fast = tail call i64 @llvm.smin.i64(i64 %smax81.mv.fast, i64 255), !dbg !44
  %smax83.mv.fast = tail call i64 @llvm.smax.i64(i64 %smin82.mv.fast, i64 0), !dbg !44
  %11 = add i64 %indvar.mv.fast, %4, !dbg !44
  %smax54.mv.fast = tail call i64 @llvm.smax.i64(i64 %11, i64 -9223372036854775807), !dbg !44
  %12 = tail call i64 @llvm.smin.i64(i64 %smax54.mv.fast, i64 %smax55.mv.fast), !dbg !44
  %smax59.mv.fast = tail call i64 @llvm.smax.i64(i64 %11, i64 %2), !dbg !44
  %13 = sub i64 %"data::Array.size.0.copyload", %smax59.mv.fast, !dbg !44
  %smin61.mv.fast = tail call i64 @llvm.smin.i64(i64 %13, i64 %6), !dbg !44
  %smin62.mv.fast = tail call i64 @llvm.smin.i64(i64 %smin61.mv.fast, i64 255), !dbg !44
  %.not103.mv.fast = icmp sgt i64 %12, -1, !dbg !44
  br i1 %.not103.mv.fast, label %preloop.pseudo.exit.mv.fast, label %L19.preloop.mv.fast.preheader, !dbg !44

L19.preloop.mv.fast.preheader:                    ; preds = %L19.preheader.mv.fast
  %invariant.gep26 = getelementptr i8, ptr %invariant.gep, i64 %value_phi346.mv.fast, !dbg !44
  br label %L19.preloop.mv.fast, !dbg !44

L19.preloop.mv.fast:                              ; preds = %L19.preloop.mv.fast.preheader, %L63.preloop.mv.fast
  %value_phi5.preloop.mv.fast = phi i64 [ %17, %L63.preloop.mv.fast ], [ 0, %L19.preloop.mv.fast.preheader ]
  %14 = add i64 %value_phi5.preloop.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.preloop.not.mv.fast = icmp sgt i64 %14, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not.mv.fast, label %L68.mv.fast, label %L23.preloop.mv.fast, !dbg !44

L23.preloop.mv.fast:                              ; preds = %L19.preloop.mv.fast
  %gep = getelementptr i8, ptr %invariant.gep26, i64 %value_phi5.preloop.mv.fast, !dbg !48
  %15 = load i8, ptr %gep, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %gep53.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %14, !dbg !48
  %16 = load i8, ptr %gep53.preloop.mv.fast, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %.not35.preloop.mv.fast = icmp eq i8 %15, %16, !dbg !61
  br i1 %.not35.preloop.mv.fast, label %L63.preloop.mv.fast, label %L68.mv.fast, !dbg !44

L63.preloop.mv.fast:                              ; preds = %L23.preloop.mv.fast
  %17 = add nuw nsw i64 %value_phi5.preloop.mv.fast, 1, !dbg !64
  %exitcond.not.mv.fast = icmp eq i64 %smin82.mv.fast, %17, !dbg !66
  br i1 %exitcond.not.mv.fast, label %preloop.exit.selector.mv.fast, label %L19.preloop.mv.fast, !dbg !66, !llvm.loop !67, !loop_constrainer.loop.clone !10

preloop.exit.selector.mv.fast:                    ; preds = %L63.preloop.mv.fast
  %18 = icmp sgt i64 %10, -255, !dbg !66
  br i1 %18, label %preloop.pseudo.exit.mv.fast, label %L68.mv.fast, !dbg !66

preloop.pseudo.exit.mv.fast:                      ; preds = %preloop.exit.selector.mv.fast, %L19.preheader.mv.fast
  %value_phi5.preloop.copy.mv.fast = phi i64 [ 0, %L19.preheader.mv.fast ], [ %smax83.mv.fast, %preloop.exit.selector.mv.fast ]
  %19 = icmp sgt i64 %smin62.mv.fast, %value_phi5.preloop.copy.mv.fast
  br i1 %19, label %L19.mv.fast.preheader, label %main.pseudo.exit.mv.fast

L19.mv.fast.preheader:                            ; preds = %preloop.pseudo.exit.mv.fast
  %invariant.gep27 = getelementptr i8, ptr %invariant.gep, i64 %value_phi346.mv.fast, !dbg !44
  br label %L19.mv.fast, !dbg !44

L19.mv.fast:                                      ; preds = %L19.mv.fast.preheader, %L63.mv.fast
  %value_phi5.mv.fast = phi i64 [ %23, %L63.mv.fast ], [ %value_phi5.preloop.copy.mv.fast, %L19.mv.fast.preheader ]
  %20 = add i64 %value_phi5.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.not.mv.fast = icmp sgt i64 %20, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not.mv.fast, label %L68.mv.fast, label %L57.mv.fast, !dbg !44

L57.mv.fast:                                      ; preds = %L19.mv.fast
  %gep28 = getelementptr i8, ptr %invariant.gep27, i64 %value_phi5.mv.fast, !dbg !48
  %21 = load i8, ptr %gep28, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %gep53.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %20, !dbg !48
  %22 = load i8, ptr %gep53.mv.fast, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %.not35.mv.fast = icmp eq i8 %21, %22, !dbg !61
  br i1 %.not35.mv.fast, label %L63.mv.fast, label %L68.mv.fast, !dbg !44

L63.mv.fast:                                      ; preds = %L57.mv.fast
  %23 = add nuw nsw i64 %value_phi5.mv.fast, 1, !dbg !64
  %exitcond47.not = icmp eq i64 %23, %smin46, !dbg !66
  br i1 %exitcond47.not, label %main.exit.selector.mv.fast, label %L19.mv.fast, !dbg !66

main.exit.selector.mv.fast:                       ; preds = %L63.mv.fast
  %24 = icmp samesign ult i64 %9, 254, !dbg !66
  br i1 %24, label %main.pseudo.exit.mv.fast, label %L68.mv.fast, !dbg !66

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %preloop.pseudo.exit.mv.fast
  %value_phi5.copy.mv.fast = phi i64 [ %value_phi5.preloop.copy.mv.fast, %preloop.pseudo.exit.mv.fast ], [ %smin46, %main.exit.selector.mv.fast ]
  %25 = tail call i64 @llvm.smax.i64(i64 %value_phi5.copy.mv.fast, i64 254)
  %smax84.mv.fast = add nuw nsw i64 %25, 1
  %invariant.gep29 = getelementptr i8, ptr %invariant.gep, i64 %value_phi346.mv.fast
  br label %L19.postloop.mv.fast

L19.postloop.mv.fast:                             ; preds = %L63.postloop.mv.fast, %main.pseudo.exit.mv.fast
  %value_phi5.postloop.mv.fast = phi i64 [ %29, %L63.postloop.mv.fast ], [ %value_phi5.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %26 = add i64 %value_phi5.postloop.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.postloop.not.mv.fast = icmp sgt i64 %26, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not.mv.fast, label %L68.mv.fast, label %L23.postloop.mv.fast, !dbg !44

L23.postloop.mv.fast:                             ; preds = %L19.postloop.mv.fast
  %gep30 = getelementptr i8, ptr %invariant.gep29, i64 %value_phi5.postloop.mv.fast, !dbg !48
  %27 = load i8, ptr %gep30, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %gep53.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %26, !dbg !48
  %28 = load i8, ptr %gep53.postloop.mv.fast, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %.not35.postloop.mv.fast = icmp eq i8 %27, %28, !dbg !61
  br i1 %.not35.postloop.mv.fast, label %L63.postloop.mv.fast, label %L68.mv.fast, !dbg !44

L63.postloop.mv.fast:                             ; preds = %L23.postloop.mv.fast
  %29 = add nuw nsw i64 %value_phi5.postloop.mv.fast, 1, !dbg !64
  %30 = icmp samesign ult i64 %value_phi5.postloop.mv.fast, 254, !dbg !72
  br i1 %30, label %L19.postloop.mv.fast, label %L68.mv.fast, !dbg !66, !llvm.loop !75, !loop_constrainer.loop.clone !10

L68.mv.fast:                                      ; preds = %L19.preloop.mv.fast, %L23.preloop.mv.fast, %L19.mv.fast, %L57.mv.fast, %L19.postloop.mv.fast, %L23.postloop.mv.fast, %L63.postloop.mv.fast, %main.exit.selector.mv.fast, %preloop.exit.selector.mv.fast
  %value_phi23.mv.fast = phi i64 [ %smin46, %main.exit.selector.mv.fast ], [ %smax83.mv.fast, %preloop.exit.selector.mv.fast ], [ %smax84.mv.fast, %L63.postloop.mv.fast ], [ %value_phi5.mv.fast, %L19.mv.fast ], [ %value_phi5.postloop.mv.fast, %L23.postloop.mv.fast ], [ %value_phi5.postloop.mv.fast, %L19.postloop.mv.fast ], [ %value_phi5.mv.fast, %L57.mv.fast ], [ %value_phi5.preloop.mv.fast, %L23.preloop.mv.fast ], [ %value_phi5.preloop.mv.fast, %L19.preloop.mv.fast ]
  %value_phi4.value_phi23.mv.fast = tail call i64 @llvm.smax.i64(i64 %value_phi447.mv.fast, i64 %value_phi23.mv.fast), !dbg !76
  %31 = add nsw i64 %value_phi346.mv.fast, 1, !dbg !77
  %indvar.next.mv.fast = add nuw i64 %indvar.mv.fast, 1, !dbg !43
  %indvars.iv.next.mv.fast = add i64 %indvars.iv.mv.fast, 1, !dbg !43
  %exitcond85.not.mv.fast = icmp eq i64 %indvar.next.mv.fast, %7, !dbg !42
  br i1 %exitcond85.not.mv.fast, label %L75.mv.fast, label %L19.preheader.mv.fast, !dbg !43

L75.mv.fast:                                      ; preds = %L68.mv.fast, %L8.mv.fast
  %value_phi4.lcssa.mv.fast = phi i64 [ 0, %L8.mv.fast ], [ %value_phi4.value_phi23.mv.fast, %L68.mv.fast ]
  %32 = icmp sgt i64 %value_phi4.lcssa.mv.fast, 2, !dbg !79
  %value_phi27.v.mv.fast = select i1 %32, i64 %value_phi4.lcssa.mv.fast, i64 1, !dbg !81
  %value_phi27.mv.fast = add i64 %value_phi27.v.mv.fast, %value_phi49.mv.fast, !dbg !81
  %33 = zext i1 %32 to i64, !dbg !81
  %value_phi28.mv.fast = add i64 %value_phi150.mv.fast, %33, !dbg !81
  %.not.mv.fast = icmp sgt i64 %value_phi27.mv.fast, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not.mv.fast, label %L84, label %L8.mv.fast, !dbg !35

L8:                                               ; preds = %L8.lr.ph, %L75
  %value_phi150 = phi i64 [ %value_phi28, %L75 ], [ 0, %L8.lr.ph ]
  %value_phi49 = phi i64 [ %value_phi27, %L75 ], [ 2, %L8.lr.ph ]
  %.not30 = icmp sgt i64 %value_phi49, %"window::Int64", !dbg !36
  %34 = sub i64 %value_phi49, %"window::Int64", !dbg !41
  %value_phi2 = select i1 %.not30, i64 %34, i64 1, !dbg !41
  %.not3145 = icmp slt i64 %value_phi2, %value_phi49, !dbg !42
  br i1 %.not3145, label %L19.preheader.lr.ph, label %L75, !dbg !43

L19.preheader.lr.ph:                              ; preds = %L8
  %35 = add i64 %value_phi2, -1, !dbg !43
  %36 = add nsw i64 %value_phi49, -1, !dbg !43
  %smax55 = tail call i64 @llvm.smax.i64(i64 %36, i64 -9223372036854775807), !dbg !43
  %smax60 = tail call i64 @llvm.smax.i64(i64 %36, i64 %2), !dbg !43
  %37 = sub i64 %"data::Array.size.0.copyload", %smax60, !dbg !43
  %38 = sub i64 %value_phi49, %value_phi2, !dbg !43
  br label %L19.preheader, !dbg !43

L19.preheader:                                    ; preds = %L68, %L19.preheader.lr.ph
  %indvars.iv = phi i64 [ %35, %L19.preheader.lr.ph ], [ %indvars.iv.next, %L68 ]
  %indvar = phi i64 [ 0, %L19.preheader.lr.ph ], [ %indvar.next, %L68 ]
  %value_phi447 = phi i64 [ 0, %L19.preheader.lr.ph ], [ %value_phi4.value_phi23, %L68 ]
  %value_phi346 = phi i64 [ %value_phi2, %L19.preheader.lr.ph ], [ %51, %L68 ]
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %2), !dbg !44
  %39 = sub i64 %"data::Array.size.0.copyload", %smax, !dbg !44
  %smin = tail call i64 @llvm.smin.i64(i64 %39, i64 %37), !dbg !44
  %smin43 = tail call i64 @llvm.smin.i64(i64 %smin, i64 255), !dbg !44
  %40 = add i64 %smin43, -1, !dbg !44
  %smax80 = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !44
  %41 = tail call i64 @llvm.smin.i64(i64 %smax80, i64 %smax55), !dbg !44
  %smax81 = sub nsw i64 0, %41, !dbg !44
  %smin82 = tail call i64 @llvm.smin.i64(i64 %smax81, i64 255), !dbg !44
  %smax83 = tail call i64 @llvm.smax.i64(i64 %smin82, i64 0), !dbg !44
  %42 = add i64 %indvar, %35, !dbg !44
  %smax54 = tail call i64 @llvm.smax.i64(i64 %42, i64 -9223372036854775807), !dbg !44
  %43 = tail call i64 @llvm.smin.i64(i64 %smax54, i64 %smax55), !dbg !44
  %smax59 = tail call i64 @llvm.smax.i64(i64 %42, i64 %2), !dbg !44
  %44 = sub i64 %"data::Array.size.0.copyload", %smax59, !dbg !44
  %smin61 = tail call i64 @llvm.smin.i64(i64 %44, i64 %37), !dbg !44
  %smin62 = tail call i64 @llvm.smin.i64(i64 %smin61, i64 255), !dbg !44
  %.not103 = icmp sgt i64 %43, -1, !dbg !44
  br i1 %.not103, label %preloop.pseudo.exit, label %L19.preloop, !dbg !44

L19:                                              ; preds = %L19.preheader13, %L63
  %value_phi5 = phi i64 [ %48, %L63 ], [ %value_phi5.preloop.copy, %L19.preheader13 ]
  %45 = add i64 %value_phi5, %value_phi49, !dbg !45
  %.not32.not = icmp sgt i64 %45, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not, label %L68, label %L57, !dbg !44

L57:                                              ; preds = %L19
  %gep25 = getelementptr i8, ptr %invariant.gep24, i64 %value_phi5, !dbg !48
  %46 = load i8, ptr %gep25, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %gep53 = getelementptr i8, ptr %invariant.gep, i64 %45, !dbg !48
  %47 = load i8, ptr %gep53, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %.not35 = icmp eq i8 %46, %47, !dbg !61
  br i1 %.not35, label %L63, label %L68, !dbg !44

L63:                                              ; preds = %L57
  %48 = add nuw nsw i64 %value_phi5, 1, !dbg !64
  %exitcond.not57 = icmp eq i64 %48, %smin43, !dbg !66
  br i1 %exitcond.not57, label %main.exit.selector, label %L19, !dbg !66

main.exit.selector:                               ; preds = %L63
  %49 = icmp samesign ult i64 %40, 254, !dbg !66
  br i1 %49, label %main.pseudo.exit, label %L68, !dbg !66

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi5.copy = phi i64 [ %value_phi5.preloop.copy, %preloop.pseudo.exit ], [ %smin43, %main.exit.selector ]
  %50 = tail call i64 @llvm.smax.i64(i64 %value_phi5.copy, i64 254)
  %smax84 = add nuw nsw i64 %50, 1
  br label %L19.postloop

L68:                                              ; preds = %L19.preloop, %L57.preloop, %L19, %L57, %L19.postloop, %L57.postloop, %L63.postloop, %preloop.exit.selector, %main.exit.selector
  %value_phi23 = phi i64 [ %smin43, %main.exit.selector ], [ %smax83, %preloop.exit.selector ], [ %smax84, %L63.postloop ], [ %value_phi5, %L19 ], [ %value_phi5.postloop, %L57.postloop ], [ %value_phi5.postloop, %L19.postloop ], [ %value_phi5, %L57 ], [ %value_phi5.preloop, %L57.preloop ], [ %value_phi5.preloop, %L19.preloop ]
  %value_phi4.value_phi23 = tail call i64 @llvm.smax.i64(i64 %value_phi447, i64 %value_phi23), !dbg !76
  %51 = add nsw i64 %value_phi346, 1, !dbg !77
  %indvar.next = add nuw i64 %indvar, 1, !dbg !43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !43
  %exitcond85.not = icmp eq i64 %indvar.next, %38, !dbg !42
  br i1 %exitcond85.not, label %L75, label %L19.preheader, !dbg !43

L75:                                              ; preds = %L68, %L8
  %value_phi4.lcssa = phi i64 [ 0, %L8 ], [ %value_phi4.value_phi23, %L68 ]
  %52 = icmp sgt i64 %value_phi4.lcssa, 2, !dbg !79
  %value_phi27.v = select i1 %52, i64 %value_phi4.lcssa, i64 1, !dbg !81
  %value_phi27 = add i64 %value_phi27.v, %value_phi49, !dbg !81
  %53 = zext i1 %52 to i64, !dbg !81
  %value_phi28 = add i64 %value_phi150, %53, !dbg !81
  %.not = icmp sgt i64 %value_phi27, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not, label %L84, label %L8, !dbg !35

L84:                                              ; preds = %L75, %L75.mv.fast, %top
  %value_phi1.lcssa = phi i64 [ 0, %top ], [ %value_phi28.mv.fast, %L75.mv.fast ], [ %value_phi28, %L75 ]
  ret i64 %value_phi1.lcssa, !dbg !82

L19.preloop:                                      ; preds = %L19.preheader, %L63.preloop
  %value_phi5.preloop = phi i64 [ %60, %L63.preloop ], [ 0, %L19.preheader ]
  %54 = add i64 %value_phi5.preloop, %value_phi49, !dbg !45
  %.not32.preloop.not = icmp sgt i64 %54, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not, label %L68, label %L23.preloop, !dbg !44

L23.preloop:                                      ; preds = %L19.preloop
  %55 = add i64 %value_phi5.preloop, %value_phi346, !dbg !45
  %56 = add i64 %55, -1, !dbg !83
  %.not33.preloop = icmp ult i64 %56, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not33.preloop, label %L38.preloop, label %odessy.chk1, !dbg !83

L38.preloop:                                      ; preds = %L23.preloop
  %57 = add i64 %54, -1, !dbg !83
  %.not34.preloop = icmp ult i64 %57, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not34.preloop, label %L57.preloop, label %odessy.chk3, !dbg !83

L57.preloop:                                      ; preds = %L38.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %55, !dbg !48
  %58 = load i8, ptr %gep.preloop, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %gep53.preloop = getelementptr i8, ptr %invariant.gep, i64 %54, !dbg !48
  %59 = load i8, ptr %gep53.preloop, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %.not35.preloop = icmp eq i8 %58, %59, !dbg !61
  br i1 %.not35.preloop, label %L63.preloop, label %L68, !dbg !44

L63.preloop:                                      ; preds = %L57.preloop
  %60 = add nuw nsw i64 %value_phi5.preloop, 1, !dbg !64
  %exitcond.not = icmp eq i64 %smin82, %60, !dbg !66
  br i1 %exitcond.not, label %preloop.exit.selector, label %L19.preloop, !dbg !66, !llvm.loop !67, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L63.preloop
  %61 = icmp sgt i64 %41, -255, !dbg !66
  br i1 %61, label %preloop.pseudo.exit, label %L68, !dbg !66

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L19.preheader
  %value_phi5.preloop.copy = phi i64 [ 0, %L19.preheader ], [ %smax83, %preloop.exit.selector ]
  %62 = icmp sgt i64 %smin62, %value_phi5.preloop.copy
  br i1 %62, label %L19.preheader13, label %main.pseudo.exit

L19.preheader13:                                  ; preds = %preloop.pseudo.exit
  %invariant.gep24 = getelementptr i8, ptr %invariant.gep, i64 %value_phi346, !dbg !44
  br label %L19, !dbg !44

L19.postloop:                                     ; preds = %L63.postloop, %main.pseudo.exit
  %value_phi5.postloop = phi i64 [ %69, %L63.postloop ], [ %value_phi5.copy, %main.pseudo.exit ]
  %63 = add i64 %value_phi5.postloop, %value_phi49, !dbg !45
  %.not32.postloop.not = icmp sgt i64 %63, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not, label %L68, label %L23.postloop, !dbg !44

L23.postloop:                                     ; preds = %L19.postloop
  %64 = add i64 %value_phi5.postloop, %value_phi346, !dbg !45
  %65 = add i64 %64, -1, !dbg !83
  %.not33.postloop = icmp ult i64 %65, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not33.postloop, label %L38.postloop, label %odessy.chk, !dbg !83

L38.postloop:                                     ; preds = %L23.postloop
  %66 = add i64 %63, -1, !dbg !83
  %.not34.postloop = icmp ult i64 %66, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not34.postloop, label %L57.postloop, label %odessy.chk2, !dbg !83

L57.postloop:                                     ; preds = %L38.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %64, !dbg !48
  %67 = load i8, ptr %gep.postloop, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %gep53.postloop = getelementptr i8, ptr %invariant.gep, i64 %63, !dbg !48
  %68 = load i8, ptr %gep53.postloop, align 1, !dbg !48, !tbaa !50, !alias.scope !53, !noalias !56
  %.not35.postloop = icmp eq i8 %67, %68, !dbg !61
  br i1 %.not35.postloop, label %L63.postloop, label %L68, !dbg !44

L63.postloop:                                     ; preds = %L57.postloop
  %69 = add nuw nsw i64 %value_phi5.postloop, 1, !dbg !64
  %70 = icmp samesign ult i64 %value_phi5.postloop, 254, !dbg !72
  br i1 %70, label %L19.postloop, label %L68, !dbg !66, !llvm.loop !75, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L23.postloop
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L23.preloop
  tail call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L38.postloop
  tail call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L38.preloop
  tail call void @odessy.chk(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4369448732 to ptr)(i64 4369448768) #5
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !84, !noalias !85, !nonnull !10, !dereferenceable !86, !align !87
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !84, !noalias !85, !nonnull !10, !dereferenceable !87, !align !87
  %.unbox = load i64, ptr %3, align 8, !tbaa !88, !alias.scope !53, !noalias !56
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #6
  ret ptr %box_Int64
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #4

attributes #0 = { nounwind "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nounwind memory(none) }
attributes #6 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "lz77_scan", linkageName: "julia_lz77_scan_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/lz77.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !8}
!8 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#lz77_scan", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4640158160")
!10 = !{}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !14, line: 71, align: 64, elements: !15)
!14 = !DIFile(filename: "julia.h", directory: "")
!15 = !{!12}
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 7, type: !9)
!18 = !DILocalVariable(name: "data", arg: 2, scope: !4, file: !5, line: 7, type: !11)
!19 = !DILocalVariable(name: "window", arg: 3, scope: !4, file: !5, line: 7, type: !8)
!20 = !DILocation(line: 7, scope: !4)
!21 = !{!22, !22, i64 0}
!22 = !{!"jtbaa_gcframe", !23, i64 0}
!23 = !{!"jtbaa", !24, i64 0}
!24 = !{!"jtbaa"}
!25 = !{!26, !26, i64 0}
!26 = !{!"jtbaa_const", !23, i64 0}
!27 = !DILocation(line: 11, scope: !28, inlinedAt: !31)
!28 = distinct !DISubprogram(name: "length;", linkageName: "length", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!29 = !DIFile(filename: "essentials.jl", directory: ".")
!30 = !DISubroutineType(types: !10)
!31 = !DILocation(line: 8, scope: !4)
!32 = !DILocation(line: 520, scope: !33, inlinedAt: !35)
!33 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DIFile(filename: "int.jl", directory: ".")
!35 = !DILocation(line: 11, scope: !4)
!36 = !DILocation(line: 83, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DILocation(line: 425, scope: !39, inlinedAt: !41)
!39 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !40, file: !40, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!40 = !DIFile(filename: "operators.jl", directory: ".")
!41 = !DILocation(line: 12, scope: !4)
!42 = !DILocation(line: 83, scope: !37, inlinedAt: !43)
!43 = !DILocation(line: 15, scope: !4)
!44 = !DILocation(line: 17, scope: !4)
!45 = !DILocation(line: 87, scope: !46, inlinedAt: !44)
!46 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!47 = !DILocation(line: 520, scope: !33, inlinedAt: !44)
!48 = !DILocation(line: 920, scope: !49, inlinedAt: !44)
!49 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!50 = !{!51, !51, i64 0}
!51 = !{!"jtbaa_arraybuf", !52, i64 0}
!52 = !{!"jtbaa_data", !23, i64 0}
!53 = !{!54}
!54 = !{!"jnoalias_data", !55}
!55 = !{!"jnoalias"}
!56 = !{!57, !58, !59, !60}
!57 = !{!"jnoalias_gcframe", !55}
!58 = !{!"jnoalias_stack", !55}
!59 = !{!"jnoalias_typemd", !55}
!60 = !{!"jnoalias_const", !55}
!61 = !DILocation(line: 637, scope: !62, inlinedAt: !44)
!62 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !63, file: !63, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!63 = !DIFile(filename: "promotion.jl", directory: ".")
!64 = !DILocation(line: 87, scope: !46, inlinedAt: !65)
!65 = !DILocation(line: 18, scope: !4)
!66 = !DILocation(line: 19, scope: !4)
!67 = distinct !{!67, !68, !69, !70, !71}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!"llvm.loop.vectorize.enable", i1 false}
!70 = !{!"llvm.loop.licm_versioning.disable"}
!71 = !{!"llvm.loop.distribute.enable", i1 false}
!72 = !DILocation(line: 520, scope: !33, inlinedAt: !73)
!73 = !DILocation(line: 472, scope: !74, inlinedAt: !66)
!74 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !40, file: !40, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!75 = distinct !{!75, !68, !69, !70, !71}
!76 = !DILocation(line: 21, scope: !4)
!77 = !DILocation(line: 87, scope: !46, inlinedAt: !78)
!78 = !DILocation(line: 24, scope: !4)
!79 = !DILocation(line: 520, scope: !33, inlinedAt: !80)
!80 = !DILocation(line: 472, scope: !74, inlinedAt: !81)
!81 = !DILocation(line: 26, scope: !4)
!82 = !DILocation(line: 33, scope: !4)
!83 = !DILocation(line: 919, scope: !49, inlinedAt: !44)
!84 = !{!60}
!85 = !{!57, !58, !54, !59}
!86 = !{i64 24}
!87 = !{i64 8}
!88 = !{!89, !89, i64 0}
!89 = !{!"jtbaa_immut", !90, i64 0}
!90 = !{!"jtbaa_value", !52, i64 0}
