; ModuleID = 'results/static/guard_ablation_0927/Julia_lz77/mv.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  br i1 %mv.h, label %L8.mv.fast, label %L8

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
  %value_phi346.mv.fast = phi i64 [ %value_phi2.mv.fast, %L19.preheader.lr.ph.mv.fast ], [ %35, %L68.mv.fast ]
  %smax46 = tail call i64 @llvm.smax.i64(i64 %indvars.iv.mv.fast, i64 %2), !dbg !44
  %8 = sub i64 %"data::Array.size.0.copyload", %smax46, !dbg !44
  %smin47 = tail call i64 @llvm.smin.i64(i64 %8, i64 %6), !dbg !44
  %smin48 = tail call i64 @llvm.smin.i64(i64 %smin47, i64 255), !dbg !44
  %9 = add i64 %smin48, -1, !dbg !44
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
  br i1 %.not103.mv.fast, label %preloop.pseudo.exit.mv.fast, label %L19.preloop.mv.fast, !dbg !44

L19.preloop.mv.fast:                              ; preds = %L19.preheader.mv.fast, %L63.preloop.mv.fast
  %value_phi5.preloop.mv.fast = phi i64 [ %19, %L63.preloop.mv.fast ], [ 0, %L19.preheader.mv.fast ]
  %14 = add i64 %value_phi5.preloop.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.preloop.not.mv.fast = icmp sgt i64 %14, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not.mv.fast, label %L68.mv.fast, label %L23.preloop.mv.fast, !dbg !44

L23.preloop.mv.fast:                              ; preds = %L19.preloop.mv.fast
  %15 = add i64 %value_phi5.preloop.mv.fast, %value_phi346.mv.fast, !dbg !45
  %16 = add i64 %15, -1, !dbg !48
  %.not33.preloop.mv.fast = icmp ult i64 %16, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.preloop.mv.fast, label %L38.preloop.mv.fast, label %odessy.chk1, !dbg !48

L38.preloop.mv.fast:                              ; preds = %L23.preloop.mv.fast
  %gep.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %15, !dbg !50
  %17 = load i8, ptr %gep.preloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %14, !dbg !50
  %18 = load i8, ptr %gep53.preloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.preloop.mv.fast = icmp eq i8 %17, %18, !dbg !62
  br i1 %.not35.preloop.mv.fast, label %L63.preloop.mv.fast, label %L68.mv.fast, !dbg !44

L63.preloop.mv.fast:                              ; preds = %L38.preloop.mv.fast
  %19 = add nuw nsw i64 %value_phi5.preloop.mv.fast, 1, !dbg !65
  %exitcond.not.mv.fast = icmp eq i64 %smin82.mv.fast, %19, !dbg !67
  br i1 %exitcond.not.mv.fast, label %preloop.exit.selector.mv.fast, label %L19.preloop.mv.fast, !dbg !67, !llvm.loop !68, !loop_constrainer.loop.clone !10

preloop.exit.selector.mv.fast:                    ; preds = %L63.preloop.mv.fast
  %20 = icmp sgt i64 %10, -255, !dbg !67
  br i1 %20, label %preloop.pseudo.exit.mv.fast, label %L68.mv.fast, !dbg !67

preloop.pseudo.exit.mv.fast:                      ; preds = %preloop.exit.selector.mv.fast, %L19.preheader.mv.fast
  %value_phi5.preloop.copy.mv.fast = phi i64 [ 0, %L19.preheader.mv.fast ], [ %smax83.mv.fast, %preloop.exit.selector.mv.fast ]
  %21 = icmp sgt i64 %smin62.mv.fast, %value_phi5.preloop.copy.mv.fast
  br i1 %21, label %L19.mv.fast.preheader, label %main.pseudo.exit.mv.fast

L19.mv.fast.preheader:                            ; preds = %preloop.pseudo.exit.mv.fast
  %invariant.gep29 = getelementptr i8, ptr %invariant.gep, i64 %value_phi346.mv.fast, !dbg !44
  br label %L19.mv.fast, !dbg !44

L19.mv.fast:                                      ; preds = %L19.mv.fast.preheader, %L63.mv.fast
  %value_phi5.mv.fast = phi i64 [ %25, %L63.mv.fast ], [ %value_phi5.preloop.copy.mv.fast, %L19.mv.fast.preheader ]
  %22 = add i64 %value_phi5.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.not.mv.fast = icmp sgt i64 %22, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not.mv.fast, label %L68.mv.fast, label %L57.mv.fast, !dbg !44

L57.mv.fast:                                      ; preds = %L19.mv.fast
  %gep = getelementptr i8, ptr %invariant.gep29, i64 %value_phi5.mv.fast, !dbg !50
  %23 = load i8, ptr %gep, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !50
  %24 = load i8, ptr %gep53.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.mv.fast = icmp eq i8 %23, %24, !dbg !62
  br i1 %.not35.mv.fast, label %L63.mv.fast, label %L68.mv.fast, !dbg !44

L63.mv.fast:                                      ; preds = %L57.mv.fast
  %25 = add nuw nsw i64 %value_phi5.mv.fast, 1, !dbg !65
  %exitcond49.not = icmp eq i64 %25, %smin48, !dbg !67
  br i1 %exitcond49.not, label %main.exit.selector.mv.fast, label %L19.mv.fast, !dbg !67

main.exit.selector.mv.fast:                       ; preds = %L63.mv.fast
  %26 = icmp samesign ult i64 %9, 254, !dbg !67
  br i1 %26, label %main.pseudo.exit.mv.fast, label %L68.mv.fast, !dbg !67

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %preloop.pseudo.exit.mv.fast
  %value_phi5.copy.mv.fast = phi i64 [ %value_phi5.preloop.copy.mv.fast, %preloop.pseudo.exit.mv.fast ], [ %smin48, %main.exit.selector.mv.fast ]
  %27 = tail call i64 @llvm.smax.i64(i64 %value_phi5.copy.mv.fast, i64 254)
  %smax84.mv.fast = add nuw nsw i64 %27, 1
  br label %L19.postloop.mv.fast

L19.postloop.mv.fast:                             ; preds = %L63.postloop.mv.fast, %main.pseudo.exit.mv.fast
  %value_phi5.postloop.mv.fast = phi i64 [ %33, %L63.postloop.mv.fast ], [ %value_phi5.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %28 = add i64 %value_phi5.postloop.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.postloop.not.mv.fast = icmp sgt i64 %28, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not.mv.fast, label %L68.mv.fast, label %L23.postloop.mv.fast, !dbg !44

L23.postloop.mv.fast:                             ; preds = %L19.postloop.mv.fast
  %29 = add i64 %value_phi5.postloop.mv.fast, %value_phi346.mv.fast, !dbg !45
  %30 = add i64 %29, -1, !dbg !48
  %.not33.postloop.mv.fast = icmp ult i64 %30, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.postloop.mv.fast, label %L38.postloop.mv.fast, label %odessy.chk, !dbg !48

L38.postloop.mv.fast:                             ; preds = %L23.postloop.mv.fast
  %gep.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %29, !dbg !50
  %31 = load i8, ptr %gep.postloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %28, !dbg !50
  %32 = load i8, ptr %gep53.postloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.postloop.mv.fast = icmp eq i8 %31, %32, !dbg !62
  br i1 %.not35.postloop.mv.fast, label %L63.postloop.mv.fast, label %L68.mv.fast, !dbg !44

L63.postloop.mv.fast:                             ; preds = %L38.postloop.mv.fast
  %33 = add nuw nsw i64 %value_phi5.postloop.mv.fast, 1, !dbg !65
  %34 = icmp samesign ult i64 %value_phi5.postloop.mv.fast, 254, !dbg !73
  br i1 %34, label %L19.postloop.mv.fast, label %L68.mv.fast, !dbg !67, !llvm.loop !76, !loop_constrainer.loop.clone !10

L68.mv.fast:                                      ; preds = %L19.preloop.mv.fast, %L38.preloop.mv.fast, %L19.mv.fast, %L57.mv.fast, %L19.postloop.mv.fast, %L38.postloop.mv.fast, %L63.postloop.mv.fast, %main.exit.selector.mv.fast, %preloop.exit.selector.mv.fast
  %value_phi23.mv.fast = phi i64 [ %smin48, %main.exit.selector.mv.fast ], [ %smax83.mv.fast, %preloop.exit.selector.mv.fast ], [ %smax84.mv.fast, %L63.postloop.mv.fast ], [ %value_phi5.mv.fast, %L19.mv.fast ], [ %value_phi5.postloop.mv.fast, %L38.postloop.mv.fast ], [ %value_phi5.postloop.mv.fast, %L19.postloop.mv.fast ], [ %value_phi5.mv.fast, %L57.mv.fast ], [ %value_phi5.preloop.mv.fast, %L38.preloop.mv.fast ], [ %value_phi5.preloop.mv.fast, %L19.preloop.mv.fast ]
  %value_phi4.value_phi23.mv.fast = tail call i64 @llvm.smax.i64(i64 %value_phi447.mv.fast, i64 %value_phi23.mv.fast), !dbg !77
  %35 = add nsw i64 %value_phi346.mv.fast, 1, !dbg !78
  %indvar.next.mv.fast = add nuw i64 %indvar.mv.fast, 1, !dbg !43
  %indvars.iv.next.mv.fast = add i64 %indvars.iv.mv.fast, 1, !dbg !43
  %exitcond85.not.mv.fast = icmp eq i64 %indvar.next.mv.fast, %7, !dbg !42
  br i1 %exitcond85.not.mv.fast, label %L75.mv.fast, label %L19.preheader.mv.fast, !dbg !43

L75.mv.fast:                                      ; preds = %L68.mv.fast, %L8.mv.fast
  %value_phi4.lcssa.mv.fast = phi i64 [ 0, %L8.mv.fast ], [ %value_phi4.value_phi23.mv.fast, %L68.mv.fast ]
  %36 = icmp sgt i64 %value_phi4.lcssa.mv.fast, 2, !dbg !80
  %value_phi27.v.mv.fast = select i1 %36, i64 %value_phi4.lcssa.mv.fast, i64 1, !dbg !82
  %value_phi27.mv.fast = add i64 %value_phi27.v.mv.fast, %value_phi49.mv.fast, !dbg !82
  %37 = zext i1 %36 to i64, !dbg !82
  %value_phi28.mv.fast = add i64 %value_phi150.mv.fast, %37, !dbg !82
  %.not.mv.fast = icmp sgt i64 %value_phi27.mv.fast, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not.mv.fast, label %L84, label %L8.mv.fast, !dbg !35

L8:                                               ; preds = %L8.lr.ph, %L75
  %value_phi150 = phi i64 [ %value_phi28, %L75 ], [ 0, %L8.lr.ph ]
  %value_phi49 = phi i64 [ %value_phi27, %L75 ], [ 2, %L8.lr.ph ]
  %.not30 = icmp sgt i64 %value_phi49, %"window::Int64", !dbg !36
  %38 = sub i64 %value_phi49, %"window::Int64", !dbg !41
  %value_phi2 = select i1 %.not30, i64 %38, i64 1, !dbg !41
  %.not3145 = icmp slt i64 %value_phi2, %value_phi49, !dbg !42
  br i1 %.not3145, label %L19.preheader.lr.ph, label %L75, !dbg !43

L19.preheader.lr.ph:                              ; preds = %L8
  %39 = add i64 %value_phi2, -1, !dbg !43
  %40 = add nsw i64 %value_phi49, -1, !dbg !43
  %smax55 = tail call i64 @llvm.smax.i64(i64 %40, i64 -9223372036854775807), !dbg !43
  %smax60 = tail call i64 @llvm.smax.i64(i64 %40, i64 %2), !dbg !43
  %41 = sub i64 %"data::Array.size.0.copyload", %smax60, !dbg !43
  %42 = sub i64 %value_phi49, %value_phi2, !dbg !43
  br label %L19.preheader, !dbg !43

L19.preheader:                                    ; preds = %L68, %L19.preheader.lr.ph
  %indvars.iv = phi i64 [ %39, %L19.preheader.lr.ph ], [ %indvars.iv.next, %L68 ]
  %indvar = phi i64 [ 0, %L19.preheader.lr.ph ], [ %indvar.next, %L68 ]
  %value_phi447 = phi i64 [ 0, %L19.preheader.lr.ph ], [ %value_phi4.value_phi23, %L68 ]
  %value_phi346 = phi i64 [ %value_phi2, %L19.preheader.lr.ph ], [ %55, %L68 ]
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %2), !dbg !44
  %43 = sub i64 %"data::Array.size.0.copyload", %smax, !dbg !44
  %smin = tail call i64 @llvm.smin.i64(i64 %43, i64 %41), !dbg !44
  %smin45 = tail call i64 @llvm.smin.i64(i64 %smin, i64 255), !dbg !44
  %44 = add i64 %smin45, -1, !dbg !44
  %smax80 = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !44
  %45 = tail call i64 @llvm.smin.i64(i64 %smax80, i64 %smax55), !dbg !44
  %smax81 = sub nsw i64 0, %45, !dbg !44
  %smin82 = tail call i64 @llvm.smin.i64(i64 %smax81, i64 255), !dbg !44
  %smax83 = tail call i64 @llvm.smax.i64(i64 %smin82, i64 0), !dbg !44
  %46 = add i64 %indvar, %39, !dbg !44
  %smax54 = tail call i64 @llvm.smax.i64(i64 %46, i64 -9223372036854775807), !dbg !44
  %47 = tail call i64 @llvm.smin.i64(i64 %smax54, i64 %smax55), !dbg !44
  %smax59 = tail call i64 @llvm.smax.i64(i64 %46, i64 %2), !dbg !44
  %48 = sub i64 %"data::Array.size.0.copyload", %smax59, !dbg !44
  %smin61 = tail call i64 @llvm.smin.i64(i64 %48, i64 %41), !dbg !44
  %smin62 = tail call i64 @llvm.smin.i64(i64 %smin61, i64 255), !dbg !44
  %.not103 = icmp sgt i64 %47, -1, !dbg !44
  br i1 %.not103, label %preloop.pseudo.exit, label %L19.preloop, !dbg !44

L19:                                              ; preds = %L19.preheader14, %L63
  %value_phi5 = phi i64 [ %52, %L63 ], [ %value_phi5.preloop.copy, %L19.preheader14 ]
  %49 = add i64 %value_phi5, %value_phi49, !dbg !45
  %.not32.not = icmp sgt i64 %49, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not, label %L68, label %L57, !dbg !44

L57:                                              ; preds = %L19
  %gep28 = getelementptr i8, ptr %invariant.gep27, i64 %value_phi5, !dbg !50
  %50 = load i8, ptr %gep28, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53 = getelementptr i8, ptr %invariant.gep, i64 %49, !dbg !50
  %51 = load i8, ptr %gep53, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35 = icmp eq i8 %50, %51, !dbg !62
  br i1 %.not35, label %L63, label %L68, !dbg !44

L63:                                              ; preds = %L57
  %52 = add nuw nsw i64 %value_phi5, 1, !dbg !65
  %exitcond.not59 = icmp eq i64 %52, %smin45, !dbg !67
  br i1 %exitcond.not59, label %main.exit.selector, label %L19, !dbg !67

main.exit.selector:                               ; preds = %L63
  %53 = icmp samesign ult i64 %44, 254, !dbg !67
  br i1 %53, label %main.pseudo.exit, label %L68, !dbg !67

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi5.copy = phi i64 [ %value_phi5.preloop.copy, %preloop.pseudo.exit ], [ %smin45, %main.exit.selector ]
  %54 = tail call i64 @llvm.smax.i64(i64 %value_phi5.copy, i64 254)
  %smax84 = add nuw nsw i64 %54, 1
  br label %L19.postloop

L68:                                              ; preds = %L19.preloop, %L57.preloop, %L19, %L57, %L19.postloop, %L57.postloop, %L63.postloop, %preloop.exit.selector, %main.exit.selector
  %value_phi23 = phi i64 [ %smin45, %main.exit.selector ], [ %smax83, %preloop.exit.selector ], [ %smax84, %L63.postloop ], [ %value_phi5, %L19 ], [ %value_phi5.postloop, %L57.postloop ], [ %value_phi5.postloop, %L19.postloop ], [ %value_phi5, %L57 ], [ %value_phi5.preloop, %L57.preloop ], [ %value_phi5.preloop, %L19.preloop ]
  %value_phi4.value_phi23 = tail call i64 @llvm.smax.i64(i64 %value_phi447, i64 %value_phi23), !dbg !77
  %55 = add nsw i64 %value_phi346, 1, !dbg !78
  %indvar.next = add nuw i64 %indvar, 1, !dbg !43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !43
  %exitcond85.not = icmp eq i64 %indvar.next, %42, !dbg !42
  br i1 %exitcond85.not, label %L75, label %L19.preheader, !dbg !43

L75:                                              ; preds = %L68, %L8
  %value_phi4.lcssa = phi i64 [ 0, %L8 ], [ %value_phi4.value_phi23, %L68 ]
  %56 = icmp sgt i64 %value_phi4.lcssa, 2, !dbg !80
  %value_phi27.v = select i1 %56, i64 %value_phi4.lcssa, i64 1, !dbg !82
  %value_phi27 = add i64 %value_phi27.v, %value_phi49, !dbg !82
  %57 = zext i1 %56 to i64, !dbg !82
  %value_phi28 = add i64 %value_phi150, %57, !dbg !82
  %.not = icmp sgt i64 %value_phi27, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not, label %L84, label %L8, !dbg !35

L84:                                              ; preds = %L75, %L75.mv.fast, %top
  %value_phi1.lcssa = phi i64 [ 0, %top ], [ %value_phi28.mv.fast, %L75.mv.fast ], [ %value_phi28, %L75 ]
  ret i64 %value_phi1.lcssa, !dbg !83

L19.preloop:                                      ; preds = %L19.preheader, %L63.preloop
  %value_phi5.preloop = phi i64 [ %64, %L63.preloop ], [ 0, %L19.preheader ]
  %58 = add i64 %value_phi5.preloop, %value_phi49, !dbg !45
  %.not32.preloop.not = icmp sgt i64 %58, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not, label %L68, label %L23.preloop, !dbg !44

L23.preloop:                                      ; preds = %L19.preloop
  %59 = add i64 %value_phi5.preloop, %value_phi346, !dbg !45
  %60 = add i64 %59, -1, !dbg !48
  %.not33.preloop = icmp ult i64 %60, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.preloop, label %L38.preloop, label %odessy.chk1, !dbg !48

L38.preloop:                                      ; preds = %L23.preloop
  %61 = add i64 %58, -1, !dbg !48
  %.not34.preloop = icmp ult i64 %61, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.preloop, label %L57.preloop, label %odessy.chk3, !dbg !48

L57.preloop:                                      ; preds = %L38.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %59, !dbg !50
  %62 = load i8, ptr %gep.preloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.preloop = getelementptr i8, ptr %invariant.gep, i64 %58, !dbg !50
  %63 = load i8, ptr %gep53.preloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.preloop = icmp eq i8 %62, %63, !dbg !62
  br i1 %.not35.preloop, label %L63.preloop, label %L68, !dbg !44

L63.preloop:                                      ; preds = %L57.preloop
  %64 = add nuw nsw i64 %value_phi5.preloop, 1, !dbg !65
  %exitcond.not = icmp eq i64 %smin82, %64, !dbg !67
  br i1 %exitcond.not, label %preloop.exit.selector, label %L19.preloop, !dbg !67, !llvm.loop !68, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L63.preloop
  %65 = icmp sgt i64 %45, -255, !dbg !67
  br i1 %65, label %preloop.pseudo.exit, label %L68, !dbg !67

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L19.preheader
  %value_phi5.preloop.copy = phi i64 [ 0, %L19.preheader ], [ %smax83, %preloop.exit.selector ]
  %66 = icmp sgt i64 %smin62, %value_phi5.preloop.copy
  br i1 %66, label %L19.preheader14, label %main.pseudo.exit

L19.preheader14:                                  ; preds = %preloop.pseudo.exit
  %invariant.gep27 = getelementptr i8, ptr %invariant.gep, i64 %value_phi346, !dbg !44
  br label %L19, !dbg !44

L19.postloop:                                     ; preds = %L63.postloop, %main.pseudo.exit
  %value_phi5.postloop = phi i64 [ %73, %L63.postloop ], [ %value_phi5.copy, %main.pseudo.exit ]
  %67 = add i64 %value_phi5.postloop, %value_phi49, !dbg !45
  %.not32.postloop.not = icmp sgt i64 %67, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not, label %L68, label %L23.postloop, !dbg !44

L23.postloop:                                     ; preds = %L19.postloop
  %68 = add i64 %value_phi5.postloop, %value_phi346, !dbg !45
  %69 = add i64 %68, -1, !dbg !48
  %.not33.postloop = icmp ult i64 %69, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.postloop, label %L38.postloop, label %odessy.chk, !dbg !48

L38.postloop:                                     ; preds = %L23.postloop
  %70 = add i64 %67, -1, !dbg !48
  %.not34.postloop = icmp ult i64 %70, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.postloop, label %L57.postloop, label %odessy.chk2, !dbg !48

L57.postloop:                                     ; preds = %L38.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %68, !dbg !50
  %71 = load i8, ptr %gep.postloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.postloop = getelementptr i8, ptr %invariant.gep, i64 %67, !dbg !50
  %72 = load i8, ptr %gep53.postloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.postloop = icmp eq i8 %71, %72, !dbg !62
  br i1 %.not35.postloop, label %L63.postloop, label %L68, !dbg !44

L63.postloop:                                     ; preds = %L57.postloop
  %73 = add nuw nsw i64 %value_phi5.postloop, 1, !dbg !65
  %74 = icmp samesign ult i64 %value_phi5.postloop, 254, !dbg !73
  br i1 %74, label %L19.postloop, label %L68, !dbg !67, !llvm.loop !76, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L23.postloop, %L23.postloop.mv.fast
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L23.preloop, %L23.preloop.mv.fast
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
  %thread_ptr = call ptr asm "movq %fs:0, $0", "=r"()
  %tls_ppgcstack = getelementptr inbounds i8, ptr %thread_ptr, i64 -8
  %tls_pgcstack = load ptr, ptr %tls_ppgcstack, align 8
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !84, !noalias !85, !nonnull !10, !dereferenceable !86, !align !87
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !84, !noalias !85, !nonnull !10, !dereferenceable !87, !align !87
  %.unbox = load i64, ptr %3, align 8, !tbaa !88, !alias.scope !54, !noalias !57
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %tls_pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #5
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

attributes #0 = { nounwind "frame-pointer"="all" "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "frame-pointer"="all" "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "lz77_scan", linkageName: "julia_lz77_scan_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/mydata/ODeSSy/native_bench/lz77.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !8}
!8 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#lz77_scan", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "125626945286224")
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
!48 = !DILocation(line: 919, scope: !49, inlinedAt: !44)
!49 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!50 = !DILocation(line: 920, scope: !49, inlinedAt: !44)
!51 = !{!52, !52, i64 0}
!52 = !{!"jtbaa_arraybuf", !53, i64 0}
!53 = !{!"jtbaa_data", !23, i64 0}
!54 = !{!55}
!55 = !{!"jnoalias_data", !56}
!56 = !{!"jnoalias"}
!57 = !{!58, !59, !60, !61}
!58 = !{!"jnoalias_gcframe", !56}
!59 = !{!"jnoalias_stack", !56}
!60 = !{!"jnoalias_typemd", !56}
!61 = !{!"jnoalias_const", !56}
!62 = !DILocation(line: 637, scope: !63, inlinedAt: !44)
!63 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !64, file: !64, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!64 = !DIFile(filename: "promotion.jl", directory: ".")
!65 = !DILocation(line: 87, scope: !46, inlinedAt: !66)
!66 = !DILocation(line: 18, scope: !4)
!67 = !DILocation(line: 19, scope: !4)
!68 = distinct !{!68, !69, !70, !71, !72}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"llvm.loop.vectorize.enable", i1 false}
!71 = !{!"llvm.loop.licm_versioning.disable"}
!72 = !{!"llvm.loop.distribute.enable", i1 false}
!73 = !DILocation(line: 520, scope: !33, inlinedAt: !74)
!74 = !DILocation(line: 472, scope: !75, inlinedAt: !67)
!75 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !40, file: !40, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!76 = distinct !{!76, !69, !70, !71, !72}
!77 = !DILocation(line: 21, scope: !4)
!78 = !DILocation(line: 87, scope: !46, inlinedAt: !79)
!79 = !DILocation(line: 24, scope: !4)
!80 = !DILocation(line: 520, scope: !33, inlinedAt: !81)
!81 = !DILocation(line: 472, scope: !75, inlinedAt: !82)
!82 = !DILocation(line: 26, scope: !4)
!83 = !DILocation(line: 33, scope: !4)
!84 = !{!61}
!85 = !{!58, !59, !55, !60}
!86 = !{i64 24}
!87 = !{i64 8}
!88 = !{!89, !89, i64 0}
!89 = !{!"jtbaa_immut", !90, i64 0}
!90 = !{!"jtbaa_value", !53, i64 0}
