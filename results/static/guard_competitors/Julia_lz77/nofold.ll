; ModuleID = 'results/static/guard_competitors/Julia_lz77/tag.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

define swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"data::Array", i64 signext %"window::Int64") #0 !dbg !4 {
top:
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple25" = alloca [1 x i64], align 8
    #dbg_declare(ptr %"data::Array", !18, !DIExpression(), !20)
    #dbg_value(i64 %"window::Int64", !19, !DIExpression(), !20)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !21
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !20
  fence syncscope("singlethread") seq_cst
  %"data::Array.size_ptr" = getelementptr inbounds i8, ptr %"data::Array", i64 16, !dbg !27
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8, !dbg !27
  %.not48 = icmp slt i64 %"data::Array.size.0.copyload", 2, !dbg !32
  br i1 %.not48, label %L84, label %L8.lr.ph, !dbg !35

L8.lr.ph:                                         ; preds = %top
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -1
  %2 = add nsw i64 %"data::Array.size.0.copyload", -9223372036854775807, !dbg !35
  %mv.h = icmp sle i64 %"data::Array.size.0.copyload", 4611686018427387904, !dbg !35
  %mv.h8 = icmp sge i64 %"window::Int64", 0, !dbg !35
  %mv.h9 = and i1 %mv.h, %mv.h8, !dbg !35
  br i1 %mv.h9, label %L8.mv.ph.mv.fast, label %L8.mv.ph

L8.mv.ph.mv.fast:                                 ; preds = %L8.lr.ph
  br label %L8.mv.fast, !dbg !35

L8.mv.fast:                                       ; preds = %L75.mv.fast, %L8.mv.ph.mv.fast
  %value_phi150.mv.fast = phi i64 [ 0, %L8.mv.ph.mv.fast ], [ %value_phi28.mv.fast, %L75.mv.fast ]
  %value_phi49.mv.fast = phi i64 [ 2, %L8.mv.ph.mv.fast ], [ %value_phi27.mv.fast, %L75.mv.fast ]
  %.not30.mv.fast = icmp sgt i64 %value_phi49.mv.fast, %"window::Int64", !dbg !36
  %3 = sub i64 %value_phi49.mv.fast, %"window::Int64", !dbg !41
  %value_phi2.mv.fast = select i1 %.not30.mv.fast, i64 %3, i64 1, !dbg !41
  %.not3145.mv.fast = icmp slt i64 %value_phi2.mv.fast, %value_phi49.mv.fast, !dbg !42
  br i1 %.not3145.mv.fast, label %L19.preheader.lr.ph.mv.fast, label %L75.mv.fast, !dbg !43

L19.preheader.lr.ph.mv.fast:                      ; preds = %L8.mv.fast
  %4 = add i64 %value_phi2.mv.fast, -1, !dbg !43
  %5 = add nsw i64 %value_phi49.mv.fast, -1, !dbg !43
  %smax55.mv.fast = call i64 @llvm.smax.i64(i64 %5, i64 -9223372036854775807), !dbg !43
  %smax60.mv.fast = call i64 @llvm.smax.i64(i64 %5, i64 %2), !dbg !43
  %6 = sub i64 %"data::Array.size.0.copyload", %smax60.mv.fast, !dbg !43
  %umax.mv.fast = call i64 @llvm.umax.i64(i64 %"data::Array.size.0.copyload", i64 %5), !dbg !43
  %7 = add i64 %umax.mv.fast, 1, !dbg !43
  %8 = sub i64 %value_phi49.mv.fast, %value_phi2.mv.fast, !dbg !43
  br label %L19.preheader.mv.fast, !dbg !43

L19.preheader.mv.fast:                            ; preds = %L68.mv.fast, %L19.preheader.lr.ph.mv.fast
  %indvars.iv.mv.fast = phi i64 [ %4, %L19.preheader.lr.ph.mv.fast ], [ %indvars.iv.next.mv.fast, %L68.mv.fast ]
  %indvar.mv.fast = phi i64 [ 0, %L19.preheader.lr.ph.mv.fast ], [ %indvar.next.mv.fast, %L68.mv.fast ]
  %value_phi447.mv.fast = phi i64 [ 0, %L19.preheader.lr.ph.mv.fast ], [ %value_phi4.value_phi23.mv.fast, %L68.mv.fast ]
  %value_phi346.mv.fast = phi i64 [ %value_phi2.mv.fast, %L19.preheader.lr.ph.mv.fast ], [ %38, %L68.mv.fast ]
  %smax80.mv.fast = call i64 @llvm.smax.i64(i64 %indvars.iv.mv.fast, i64 -9223372036854775807), !dbg !44
  %9 = call i64 @llvm.smin.i64(i64 %smax80.mv.fast, i64 %smax55.mv.fast), !dbg !44
  %smax81.mv.fast = sub nsw i64 0, %9, !dbg !44
  %smin82.mv.fast = call i64 @llvm.smin.i64(i64 %smax81.mv.fast, i64 255), !dbg !44
  %smax83.mv.fast = call i64 @llvm.smax.i64(i64 %smin82.mv.fast, i64 0), !dbg !44
  %10 = add i64 %4, %indvar.mv.fast, !dbg !44
  %smax54.mv.fast = call i64 @llvm.smax.i64(i64 %10, i64 -9223372036854775807), !dbg !44
  %11 = call i64 @llvm.smin.i64(i64 %smax54.mv.fast, i64 %smax55.mv.fast), !dbg !44
  %smax59.mv.fast = call i64 @llvm.smax.i64(i64 %10, i64 %2), !dbg !44
  %12 = sub i64 %"data::Array.size.0.copyload", %smax59.mv.fast, !dbg !44
  %smin61.mv.fast = call i64 @llvm.smin.i64(i64 %12, i64 %6), !dbg !44
  %smin62.mv.fast = call i64 @llvm.smin.i64(i64 %smin61.mv.fast, i64 255), !dbg !44
  %.not103.mv.fast = icmp sgt i64 %11, -1, !dbg !44
  br i1 %.not103.mv.fast, label %preloop.pseudo.exit.mv.fast, label %L19.preloop.preheader.mv.fast, !dbg !44

L19.preloop.mv.fast:                              ; preds = %L19.preloop.preheader.mv.fast, %L63.preloop.mv.fast
  %value_phi5.preloop.mv.fast = phi i64 [ %19, %L63.preloop.mv.fast ], [ 0, %L19.preloop.preheader.mv.fast ]
  %13 = add i64 %value_phi5.preloop.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.preloop.not.mv.fast = icmp sgt i64 %13, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not.mv.fast, label %L68.loopexit3.mv.fast, label %L23.preloop.mv.fast, !dbg !44

L23.preloop.mv.fast:                              ; preds = %L19.preloop.mv.fast
  %14 = add i64 %value_phi5.preloop.mv.fast, %value_phi346.mv.fast, !dbg !45
  %15 = add i64 %14, -1, !dbg !48
  %.not33.preloop.mv.fast = icmp ult i64 %15, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.preloop.mv.fast, label %L38.preloop.mv.fast, label %odessy.fasttrap10, !dbg !48

L38.preloop.mv.fast:                              ; preds = %L23.preloop.mv.fast
  %16 = add i64 %13, -1, !dbg !48
  %.not34.preloop.mv.fast = icmp ult i64 %16, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.preloop.mv.fast, label %L57.preloop.mv.fast, label %odessy.fasttrap12, !dbg !48

L57.preloop.mv.fast:                              ; preds = %L38.preloop.mv.fast
  %gep.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %14, !dbg !50
  %17 = load i8, ptr %gep.preloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !50
  %18 = load i8, ptr %gep53.preloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.preloop.mv.fast = icmp eq i8 %17, %18, !dbg !62
  br i1 %.not35.preloop.mv.fast, label %L63.preloop.mv.fast, label %L68.loopexit3.mv.fast, !dbg !44

L63.preloop.mv.fast:                              ; preds = %L57.preloop.mv.fast
  %19 = add nuw nsw i64 %value_phi5.preloop.mv.fast, 1, !dbg !65
  %exitcond.not.mv.fast = icmp eq i64 %smin82.mv.fast, %19, !dbg !67
  br i1 %exitcond.not.mv.fast, label %preloop.exit.selector.mv.fast, label %L19.preloop.mv.fast, !dbg !67, !llvm.loop !68, !loop_constrainer.loop.clone !10

preloop.exit.selector.mv.fast:                    ; preds = %L63.preloop.mv.fast
  %20 = icmp sgt i64 %9, -255, !dbg !67
  br i1 %20, label %preloop.pseudo.exit.mv.fast, label %L68.mv.fast, !dbg !67

preloop.pseudo.exit.mv.fast:                      ; preds = %preloop.exit.selector.mv.fast, %L19.preheader.mv.fast
  %value_phi5.preloop.copy.mv.fast = phi i64 [ 0, %L19.preheader.mv.fast ], [ %smax83.mv.fast, %preloop.exit.selector.mv.fast ]
  %21 = icmp sgt i64 %smin62.mv.fast, %value_phi5.preloop.copy.mv.fast
  br i1 %21, label %L19.preheader1.mv.fast, label %main.pseudo.exit.mv.fast

L19.mv.fast:                                      ; preds = %L19.preheader1.mv.fast, %L63.mv.fast
  %value_phi5.mv.fast = phi i64 [ %26, %L63.mv.fast ], [ %value_phi5.preloop.copy.mv.fast, %L19.preheader1.mv.fast ]
  %22 = add i64 %value_phi5.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.not.mv.fast = icmp sgt i64 %22, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not.mv.fast, label %L68.loopexit2.mv.fast, label %L57.mv.fast, !dbg !44

L57.mv.fast:                                      ; preds = %L19.mv.fast
  %23 = getelementptr i8, ptr %invariant.gep, i64 %value_phi5.mv.fast, !dbg !50
  %gep.mv.fast = getelementptr i8, ptr %23, i64 %value_phi346.mv.fast, !dbg !50
  %24 = load i8, ptr %gep.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %22, !dbg !50
  %25 = load i8, ptr %gep53.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.mv.fast = icmp eq i8 %24, %25, !dbg !62
  br i1 %.not35.mv.fast, label %L63.mv.fast, label %L68.loopexit2.mv.fast, !dbg !44

L63.mv.fast:                                      ; preds = %L57.mv.fast
  %26 = add nuw nsw i64 %value_phi5.mv.fast, 1, !dbg !65
  %27 = icmp sgt i64 %smin62.mv.fast, %26, !dbg !67
  br i1 %27, label %L19.mv.fast, label %main.exit.selector.mv.fast, !dbg !67

main.exit.selector.mv.fast:                       ; preds = %L63.mv.fast
  %.lcssa.mv.fast = phi i64 [ %26, %L63.mv.fast ], !dbg !65
  %value_phi5.lcssa7.mv.fast = phi i64 [ %value_phi5.mv.fast, %L63.mv.fast ]
  %28 = icmp ult i64 %value_phi5.lcssa7.mv.fast, 254, !dbg !67
  br i1 %28, label %main.pseudo.exit.mv.fast, label %L68.mv.fast, !dbg !67

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %preloop.pseudo.exit.mv.fast
  %value_phi5.copy.mv.fast = phi i64 [ %value_phi5.preloop.copy.mv.fast, %preloop.pseudo.exit.mv.fast ], [ %.lcssa.mv.fast, %main.exit.selector.mv.fast ]
  %29 = call i64 @llvm.smax.i64(i64 %value_phi5.copy.mv.fast, i64 254)
  %smax84.mv.fast = add nuw nsw i64 %29, 1
  br label %L19.postloop.mv.fast

L19.postloop.mv.fast:                             ; preds = %L63.postloop.mv.fast, %main.pseudo.exit.mv.fast
  %value_phi5.postloop.mv.fast = phi i64 [ %36, %L63.postloop.mv.fast ], [ %value_phi5.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %30 = add i64 %value_phi5.postloop.mv.fast, %value_phi49.mv.fast, !dbg !45
  %.not32.postloop.not.mv.fast = icmp sgt i64 %30, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not.mv.fast, label %L68.loopexit.mv.fast, label %L23.postloop.mv.fast, !dbg !44

L23.postloop.mv.fast:                             ; preds = %L19.postloop.mv.fast
  %31 = add i64 %value_phi5.postloop.mv.fast, %value_phi346.mv.fast, !dbg !45
  %32 = add i64 %31, -1, !dbg !48
  %.not33.postloop.mv.fast = icmp ult i64 %32, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.postloop.mv.fast, label %L38.postloop.mv.fast, label %odessy.fasttrap, !dbg !48

L38.postloop.mv.fast:                             ; preds = %L23.postloop.mv.fast
  %33 = add i64 %30, -1, !dbg !48
  %.not34.postloop.mv.fast = icmp ult i64 %33, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.postloop.mv.fast, label %L57.postloop.mv.fast, label %odessy.fasttrap11, !dbg !48

L57.postloop.mv.fast:                             ; preds = %L38.postloop.mv.fast
  %gep.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %31, !dbg !50
  %34 = load i8, ptr %gep.postloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %30, !dbg !50
  %35 = load i8, ptr %gep53.postloop.mv.fast, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.postloop.mv.fast = icmp eq i8 %34, %35, !dbg !62
  br i1 %.not35.postloop.mv.fast, label %L63.postloop.mv.fast, label %L68.loopexit.mv.fast, !dbg !44

L63.postloop.mv.fast:                             ; preds = %L57.postloop.mv.fast
  %36 = add nuw nsw i64 %value_phi5.postloop.mv.fast, 1, !dbg !65
  %37 = icmp ult i64 %value_phi5.postloop.mv.fast, 254, !dbg !73
  br i1 %37, label %L19.postloop.mv.fast, label %L68.loopexit.mv.fast, !dbg !67, !llvm.loop !76, !loop_constrainer.loop.clone !10

L68.mv.fast:                                      ; preds = %L68.loopexit3.mv.fast, %L68.loopexit2.mv.fast, %L68.loopexit.mv.fast, %main.exit.selector.mv.fast, %preloop.exit.selector.mv.fast
  %value_phi23.mv.fast = phi i64 [ %.lcssa.mv.fast, %main.exit.selector.mv.fast ], [ %smax83.mv.fast, %preloop.exit.selector.mv.fast ], [ %value_phi23.ph.mv.fast, %L68.loopexit.mv.fast ], [ %value_phi5.lcssa.mv.fast, %L68.loopexit2.mv.fast ], [ %value_phi5.preloop.lcssa.mv.fast, %L68.loopexit3.mv.fast ]
  %value_phi4.value_phi23.mv.fast = call i64 @llvm.smax.i64(i64 %value_phi447.mv.fast, i64 %value_phi23.mv.fast), !dbg !77
  %38 = add nsw i64 %value_phi346.mv.fast, 1, !dbg !78
  %indvar.next.mv.fast = add i64 %indvar.mv.fast, 1, !dbg !43
  %indvars.iv.next.mv.fast = add i64 %indvars.iv.mv.fast, 1, !dbg !43
  %exitcond85.not.mv.fast = icmp eq i64 %indvar.next.mv.fast, %8, !dbg !42
  br i1 %exitcond85.not.mv.fast, label %L75.loopexit.mv.fast, label %L19.preheader.mv.fast, !dbg !43

L75.mv.fast:                                      ; preds = %L75.loopexit.mv.fast, %L8.mv.fast
  %value_phi4.lcssa.mv.fast = phi i64 [ 0, %L8.mv.fast ], [ %value_phi4.value_phi23.lcssa.mv.fast, %L75.loopexit.mv.fast ]
  %39 = icmp sgt i64 %value_phi4.lcssa.mv.fast, 2, !dbg !80
  %value_phi27.v.mv.fast = select i1 %39, i64 %value_phi4.lcssa.mv.fast, i64 1, !dbg !82
  %value_phi27.mv.fast = add i64 %value_phi27.v.mv.fast, %value_phi49.mv.fast, !dbg !82
  %40 = zext i1 %39 to i64, !dbg !82
  %value_phi28.mv.fast = add i64 %value_phi150.mv.fast, %40, !dbg !82
  %.not.mv.fast = icmp sgt i64 %value_phi27.mv.fast, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not.mv.fast, label %L84.loopexit, label %L8.mv.fast, !dbg !35

L68.loopexit.mv.fast:                             ; preds = %L63.postloop.mv.fast, %L57.postloop.mv.fast, %L19.postloop.mv.fast
  %value_phi23.ph.mv.fast = phi i64 [ %value_phi5.postloop.mv.fast, %L19.postloop.mv.fast ], [ %value_phi5.postloop.mv.fast, %L57.postloop.mv.fast ], [ %smax84.mv.fast, %L63.postloop.mv.fast ]
  br label %L68.mv.fast, !dbg !77

L19.preheader1.mv.fast:                           ; preds = %preloop.pseudo.exit.mv.fast
  br label %L19.mv.fast, !dbg !44

L68.loopexit2.mv.fast:                            ; preds = %L57.mv.fast, %L19.mv.fast
  %value_phi5.lcssa.mv.fast = phi i64 [ %value_phi5.mv.fast, %L19.mv.fast ], [ %value_phi5.mv.fast, %L57.mv.fast ]
  br label %L68.mv.fast, !dbg !77

L19.preloop.preheader.mv.fast:                    ; preds = %L19.preheader.mv.fast
  br label %L19.preloop.mv.fast, !dbg !44

L68.loopexit3.mv.fast:                            ; preds = %L57.preloop.mv.fast, %L19.preloop.mv.fast
  %value_phi5.preloop.lcssa.mv.fast = phi i64 [ %value_phi5.preloop.mv.fast, %L19.preloop.mv.fast ], [ %value_phi5.preloop.mv.fast, %L57.preloop.mv.fast ]
  br label %L68.mv.fast, !dbg !77

L75.loopexit.mv.fast:                             ; preds = %L68.mv.fast
  %value_phi4.value_phi23.lcssa.mv.fast = phi i64 [ %value_phi4.value_phi23.mv.fast, %L68.mv.fast ], !dbg !77
  br label %L75.mv.fast, !dbg !80

L8.mv.ph:                                         ; preds = %L8.lr.ph
  br label %L8, !dbg !35

L8:                                               ; preds = %L75, %L8.mv.ph
  %value_phi150 = phi i64 [ 0, %L8.mv.ph ], [ %value_phi28, %L75 ]
  %value_phi49 = phi i64 [ 2, %L8.mv.ph ], [ %value_phi27, %L75 ]
  %.not30 = icmp sgt i64 %value_phi49, %"window::Int64", !dbg !36
  %41 = sub i64 %value_phi49, %"window::Int64", !dbg !41
  %value_phi2 = select i1 %.not30, i64 %41, i64 1, !dbg !41
  %.not3145 = icmp slt i64 %value_phi2, %value_phi49, !dbg !42
  br i1 %.not3145, label %L19.preheader.lr.ph, label %L75, !dbg !43

L19.preheader.lr.ph:                              ; preds = %L8
  %42 = add i64 %value_phi2, -1, !dbg !43
  %43 = add nsw i64 %value_phi49, -1, !dbg !43
  %smax55 = call i64 @llvm.smax.i64(i64 %43, i64 -9223372036854775807), !dbg !43
  %smax60 = call i64 @llvm.smax.i64(i64 %43, i64 %2), !dbg !43
  %44 = sub i64 %"data::Array.size.0.copyload", %smax60, !dbg !43
  %umax = call i64 @llvm.umax.i64(i64 %"data::Array.size.0.copyload", i64 %43), !dbg !43
  %45 = add i64 %umax, 1, !dbg !43
  %46 = sub i64 %value_phi49, %value_phi2, !dbg !43
  br label %L19.preheader, !dbg !43

L19.preheader:                                    ; preds = %L68, %L19.preheader.lr.ph
  %indvars.iv = phi i64 [ %42, %L19.preheader.lr.ph ], [ %indvars.iv.next, %L68 ]
  %indvar = phi i64 [ 0, %L19.preheader.lr.ph ], [ %indvar.next, %L68 ]
  %value_phi447 = phi i64 [ 0, %L19.preheader.lr.ph ], [ %value_phi4.value_phi23, %L68 ]
  %value_phi346 = phi i64 [ %value_phi2, %L19.preheader.lr.ph ], [ %59, %L68 ]
  %smax80 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !44
  %47 = call i64 @llvm.smin.i64(i64 %smax80, i64 %smax55), !dbg !44
  %smax81 = sub nsw i64 0, %47, !dbg !44
  %smin82 = call i64 @llvm.smin.i64(i64 %smax81, i64 255), !dbg !44
  %smax83 = call i64 @llvm.smax.i64(i64 %smin82, i64 0), !dbg !44
  %48 = add i64 %42, %indvar, !dbg !44
  %smax54 = call i64 @llvm.smax.i64(i64 %48, i64 -9223372036854775807), !dbg !44
  %49 = call i64 @llvm.smin.i64(i64 %smax54, i64 %smax55), !dbg !44
  %smax59 = call i64 @llvm.smax.i64(i64 %48, i64 %2), !dbg !44
  %50 = sub i64 %"data::Array.size.0.copyload", %smax59, !dbg !44
  %smin61 = call i64 @llvm.smin.i64(i64 %50, i64 %44), !dbg !44
  %smin62 = call i64 @llvm.smin.i64(i64 %smin61, i64 255), !dbg !44
  %.not103 = icmp sgt i64 %49, -1, !dbg !44
  br i1 %.not103, label %preloop.pseudo.exit, label %L19.preloop.preheader, !dbg !44

L19.preloop.preheader:                            ; preds = %L19.preheader
  br label %L19.preloop, !dbg !44

L19:                                              ; preds = %L19.preheader1, %L63
  %value_phi5 = phi i64 [ %55, %L63 ], [ %value_phi5.preloop.copy, %L19.preheader1 ]
  %51 = add i64 %value_phi5, %value_phi49, !dbg !45
  %.not32.not = icmp sgt i64 %51, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not, label %L68.loopexit2, label %L57, !dbg !44

L35:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple25", align 8, !dbg !48, !tbaa !83, !alias.scope !85, !noalias !86
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple25") #10, !dbg !48
  unreachable, !dbg !48

L54:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple", align 8, !dbg !48, !tbaa !83, !alias.scope !85, !noalias !86
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple") #10, !dbg !48
  unreachable, !dbg !48

L57:                                              ; preds = %L19
  %52 = getelementptr i8, ptr %invariant.gep, i64 %value_phi5, !dbg !50
  %gep = getelementptr i8, ptr %52, i64 %value_phi346, !dbg !50
  %53 = load i8, ptr %gep, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53 = getelementptr i8, ptr %invariant.gep, i64 %51, !dbg !50
  %54 = load i8, ptr %gep53, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35 = icmp eq i8 %53, %54, !dbg !62
  br i1 %.not35, label %L63, label %L68.loopexit2, !dbg !44

L63:                                              ; preds = %L57
  %55 = add nuw nsw i64 %value_phi5, 1, !dbg !65
  %56 = icmp sgt i64 %smin62, %55, !dbg !67
  br i1 %56, label %L19, label %main.exit.selector, !dbg !67

main.exit.selector:                               ; preds = %L63
  %.lcssa = phi i64 [ %55, %L63 ], !dbg !65
  %value_phi5.lcssa7 = phi i64 [ %value_phi5, %L63 ]
  %57 = icmp ult i64 %value_phi5.lcssa7, 254, !dbg !67
  br i1 %57, label %main.pseudo.exit, label %L68, !dbg !67

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi5.copy = phi i64 [ %value_phi5.preloop.copy, %preloop.pseudo.exit ], [ %.lcssa, %main.exit.selector ]
  %58 = call i64 @llvm.smax.i64(i64 %value_phi5.copy, i64 254)
  %smax84 = add nuw nsw i64 %58, 1
  br label %L19.postloop

L68.loopexit:                                     ; preds = %L19.postloop, %L57.postloop, %L63.postloop
  %value_phi23.ph = phi i64 [ %value_phi5.postloop, %L19.postloop ], [ %value_phi5.postloop, %L57.postloop ], [ %smax84, %L63.postloop ]
  br label %L68, !dbg !77

L68.loopexit2:                                    ; preds = %L19, %L57
  %value_phi5.lcssa = phi i64 [ %value_phi5, %L19 ], [ %value_phi5, %L57 ]
  br label %L68, !dbg !77

L68.loopexit3:                                    ; preds = %L19.preloop, %L57.preloop
  %value_phi5.preloop.lcssa = phi i64 [ %value_phi5.preloop, %L19.preloop ], [ %value_phi5.preloop, %L57.preloop ]
  br label %L68, !dbg !77

L68:                                              ; preds = %L68.loopexit3, %L68.loopexit2, %L68.loopexit, %preloop.exit.selector, %main.exit.selector
  %value_phi23 = phi i64 [ %.lcssa, %main.exit.selector ], [ %smax83, %preloop.exit.selector ], [ %value_phi23.ph, %L68.loopexit ], [ %value_phi5.lcssa, %L68.loopexit2 ], [ %value_phi5.preloop.lcssa, %L68.loopexit3 ]
  %value_phi4.value_phi23 = call i64 @llvm.smax.i64(i64 %value_phi447, i64 %value_phi23), !dbg !77
  %59 = add nsw i64 %value_phi346, 1, !dbg !78
  %indvar.next = add i64 %indvar, 1, !dbg !43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !43
  %exitcond85.not = icmp eq i64 %indvar.next, %46, !dbg !42
  br i1 %exitcond85.not, label %L75.loopexit, label %L19.preheader, !dbg !43

L75.loopexit:                                     ; preds = %L68
  %value_phi4.value_phi23.lcssa = phi i64 [ %value_phi4.value_phi23, %L68 ], !dbg !77
  br label %L75, !dbg !80

L75:                                              ; preds = %L75.loopexit, %L8
  %value_phi4.lcssa = phi i64 [ 0, %L8 ], [ %value_phi4.value_phi23.lcssa, %L75.loopexit ]
  %60 = icmp sgt i64 %value_phi4.lcssa, 2, !dbg !80
  %value_phi27.v = select i1 %60, i64 %value_phi4.lcssa, i64 1, !dbg !82
  %value_phi27 = add i64 %value_phi27.v, %value_phi49, !dbg !82
  %61 = zext i1 %60 to i64, !dbg !82
  %value_phi28 = add i64 %value_phi150, %61, !dbg !82
  %.not = icmp sgt i64 %value_phi27, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not, label %L84.loopexit, label %L8, !dbg !35

L84.loopexit:                                     ; preds = %L75.mv.fast, %L75
  %value_phi28.lcssa = phi i64 [ %value_phi28, %L75 ], [ %value_phi28.mv.fast, %L75.mv.fast ], !dbg !82
  br label %L84, !dbg !87

L84:                                              ; preds = %L84.loopexit, %top
  %value_phi1.lcssa = phi i64 [ 0, %top ], [ %value_phi28.lcssa, %L84.loopexit ]
  ret i64 %value_phi1.lcssa, !dbg !87

L19.preloop:                                      ; preds = %L19.preloop.preheader, %L63.preloop
  %value_phi5.preloop = phi i64 [ %68, %L63.preloop ], [ 0, %L19.preloop.preheader ]
  %62 = add i64 %value_phi5.preloop, %value_phi49, !dbg !45
  %.not32.preloop.not = icmp sgt i64 %62, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not, label %L68.loopexit3, label %L23.preloop, !dbg !44

L23.preloop:                                      ; preds = %L19.preloop
  %63 = add i64 %value_phi5.preloop, %value_phi346, !dbg !45
  %64 = add i64 %63, -1, !dbg !48
  %.not33.preloop = icmp ult i64 %64, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.preloop, label %L38.preloop, label %odessy.chk1, !dbg !48

L38.preloop:                                      ; preds = %L23.preloop
  %65 = add i64 %62, -1, !dbg !48
  %.not34.preloop = icmp ult i64 %65, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.preloop, label %L57.preloop, label %odessy.chk3, !dbg !48

L57.preloop:                                      ; preds = %L38.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %63, !dbg !50
  %66 = load i8, ptr %gep.preloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.preloop = getelementptr i8, ptr %invariant.gep, i64 %62, !dbg !50
  %67 = load i8, ptr %gep53.preloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.preloop = icmp eq i8 %66, %67, !dbg !62
  br i1 %.not35.preloop, label %L63.preloop, label %L68.loopexit3, !dbg !44

L63.preloop:                                      ; preds = %L57.preloop
  %68 = add nuw nsw i64 %value_phi5.preloop, 1, !dbg !65
  %exitcond.not = icmp eq i64 %smin82, %68, !dbg !67
  br i1 %exitcond.not, label %preloop.exit.selector, label %L19.preloop, !dbg !67, !llvm.loop !68, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L63.preloop
  %69 = icmp sgt i64 %47, -255, !dbg !67
  br i1 %69, label %preloop.pseudo.exit, label %L68, !dbg !67

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L19.preheader
  %value_phi5.preloop.copy = phi i64 [ 0, %L19.preheader ], [ %smax83, %preloop.exit.selector ]
  %70 = icmp sgt i64 %smin62, %value_phi5.preloop.copy
  br i1 %70, label %L19.preheader1, label %main.pseudo.exit

L19.preheader1:                                   ; preds = %preloop.pseudo.exit
  br label %L19, !dbg !44

L19.postloop:                                     ; preds = %L63.postloop, %main.pseudo.exit
  %value_phi5.postloop = phi i64 [ %77, %L63.postloop ], [ %value_phi5.copy, %main.pseudo.exit ]
  %71 = add i64 %value_phi5.postloop, %value_phi49, !dbg !45
  %.not32.postloop.not = icmp sgt i64 %71, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not, label %L68.loopexit, label %L23.postloop, !dbg !44

L23.postloop:                                     ; preds = %L19.postloop
  %72 = add i64 %value_phi5.postloop, %value_phi346, !dbg !45
  %73 = add i64 %72, -1, !dbg !48
  %.not33.postloop = icmp ult i64 %73, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.postloop, label %L38.postloop, label %odessy.chk, !dbg !48

L38.postloop:                                     ; preds = %L23.postloop
  %74 = add i64 %71, -1, !dbg !48
  %.not34.postloop = icmp ult i64 %74, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.postloop, label %L57.postloop, label %odessy.chk2, !dbg !48

L57.postloop:                                     ; preds = %L38.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %72, !dbg !50
  %75 = load i8, ptr %gep.postloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %gep53.postloop = getelementptr i8, ptr %invariant.gep, i64 %71, !dbg !50
  %76 = load i8, ptr %gep53.postloop, align 1, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %.not35.postloop = icmp eq i8 %75, %76, !dbg !62
  br i1 %.not35.postloop, label %L63.postloop, label %L68.loopexit, !dbg !44

L63.postloop:                                     ; preds = %L57.postloop
  %77 = add nuw nsw i64 %value_phi5.postloop, 1, !dbg !65
  %78 = icmp ult i64 %value_phi5.postloop, 254, !dbg !73
  br i1 %78, label %L19.postloop, label %L68.loopexit, !dbg !67, !llvm.loop !76, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L23.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L23.preloop
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L38.postloop
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L38.preloop
  call void @odessy.chk(i32 3)
  unreachable

odessy.fasttrap:                                  ; preds = %L23.postloop.mv.fast
  call void @odessy.fast.trap(i32 0)
  unreachable

odessy.fasttrap10:                                ; preds = %L23.preloop.mv.fast
  call void @odessy.fast.trap(i32 1)
  unreachable

odessy.fasttrap11:                                ; preds = %L38.postloop.mv.fast
  call void @odessy.fast.trap(i32 2)
  unreachable

odessy.fasttrap12:                                ; preds = %L38.preloop.mv.fast
  call void @odessy.fast.trap(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4369448732 to ptr)(i64 4369448768) #11
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !88, !noalias !89, !nonnull !10, !dereferenceable !90, !align !91
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !88, !noalias !89, !nonnull !10, !dereferenceable !91, !align !91
  %.unbox = load i64, ptr %3, align 8, !tbaa !92, !alias.scope !54, !noalias !57
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #12
  ret ptr %box_Int64
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext) #2

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #4

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #7

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #3

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #8

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #8

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #9

; Function Attrs: cold noreturn nounwind
declare void @odessy.fast.trap(i32) #9

attributes #0 = { "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "julia.fsig"="throw_boundserror(Array{UInt8, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

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
!83 = !{!84, !84, i64 0}
!84 = !{!"jtbaa_stack", !23, i64 0}
!85 = !{!59}
!86 = !{!58, !55, !60, !61}
!87 = !DILocation(line: 33, scope: !4)
!88 = !{!61}
!89 = !{!58, !59, !55, !60}
!90 = !{i64 24}
!91 = !{i64 8}
!92 = !{!93, !93, i64 0}
!93 = !{!"jtbaa_immut", !94, i64 0}
!94 = !{!"jtbaa_value", !53, i64 0}
