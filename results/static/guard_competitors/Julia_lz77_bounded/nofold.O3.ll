; ModuleID = 'results/static/guard_competitors/Julia_lz77_bounded/nofold.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4576833168 to ptr)

define swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"data::Array", i64 signext %"window::Int64") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  store i64 4, ptr %gcframe1, align 16, !tbaa !20
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !20
  store ptr %gcframe1, ptr %pgcstack, align 8
    #dbg_declare(ptr %"data::Array", !18, !DIExpression(), !24)
    #dbg_value(i64 %"window::Int64", !19, !DIExpression(), !24)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !20
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !24
  fence syncscope("singlethread") seq_cst
  %"data::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"data::Array", i64 16, !dbg !27
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8, !dbg !27
  %2 = icmp sgt i64 %"data::Array.size.0.copyload", 4611686018427387904, !dbg !32
  br i1 %2, label %L89, label %L8.preheader, !dbg !35

L8.preheader:                                     ; preds = %top
  %.not52 = icmp slt i64 %"data::Array.size.0.copyload", 2, !dbg !36
  br i1 %.not52, label %L88, label %L12.lr.ph, !dbg !37

L12.lr.ph:                                        ; preds = %L8.preheader
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -1
  %3 = add nuw nsw i64 %"data::Array.size.0.copyload", -9223372036854775807, !dbg !37
  %mv.h = icmp sgt i64 %"window::Int64", -1, !dbg !37
  br i1 %mv.h, label %L12.mv.fast, label %L12

L12.mv.fast:                                      ; preds = %L12.lr.ph, %L79.mv.fast
  %value_phi154.mv.fast = phi i64 [ %value_phi29.mv.fast, %L79.mv.fast ], [ 0, %L12.lr.ph ]
  %value_phi53.mv.fast = phi i64 [ %value_phi28.mv.fast, %L79.mv.fast ], [ 2, %L12.lr.ph ]
  %.not34.mv.fast = icmp sgt i64 %value_phi53.mv.fast, %"window::Int64", !dbg !38
  %4 = sub i64 %value_phi53.mv.fast, %"window::Int64", !dbg !43
  %value_phi3.mv.fast = select i1 %.not34.mv.fast, i64 %4, i64 1, !dbg !43
  %.not3549.mv.fast = icmp slt i64 %value_phi3.mv.fast, %value_phi53.mv.fast, !dbg !44
  br i1 %.not3549.mv.fast, label %L23.preheader.lr.ph.mv.fast, label %L79.mv.fast, !dbg !45

L23.preheader.lr.ph.mv.fast:                      ; preds = %L12.mv.fast
  %5 = add i64 %value_phi3.mv.fast, -1, !dbg !45
  %6 = add nsw i64 %value_phi53.mv.fast, -1, !dbg !45
  %smax59.mv.fast = call i64 @llvm.smax.i64(i64 %6, i64 -9223372036854775807), !dbg !45
  %smax64.mv.fast = call i64 @llvm.smax.i64(i64 %6, i64 %3), !dbg !45
  %7 = sub i64 %"data::Array.size.0.copyload", %smax64.mv.fast, !dbg !45
  %8 = sub i64 %value_phi53.mv.fast, %value_phi3.mv.fast, !dbg !45
  br label %L23.preheader.mv.fast, !dbg !45

L23.preheader.mv.fast:                            ; preds = %L72.mv.fast, %L23.preheader.lr.ph.mv.fast
  %indvars.iv.mv.fast = phi i64 [ %5, %L23.preheader.lr.ph.mv.fast ], [ %indvars.iv.next.mv.fast, %L72.mv.fast ]
  %indvar.mv.fast = phi i64 [ 0, %L23.preheader.lr.ph.mv.fast ], [ %indvar.next.mv.fast, %L72.mv.fast ]
  %value_phi551.mv.fast = phi i64 [ 0, %L23.preheader.lr.ph.mv.fast ], [ %value_phi5.value_phi24.mv.fast, %L72.mv.fast ]
  %value_phi450.mv.fast = phi i64 [ %value_phi3.mv.fast, %L23.preheader.lr.ph.mv.fast ], [ %36, %L72.mv.fast ]
  %smax40 = call i64 @llvm.smax.i64(i64 %indvars.iv.mv.fast, i64 %3), !dbg !46
  %9 = sub i64 %"data::Array.size.0.copyload", %smax40, !dbg !46
  %smin41 = call i64 @llvm.smin.i64(i64 %9, i64 %7), !dbg !46
  %smin42 = call i64 @llvm.smin.i64(i64 %smin41, i64 255), !dbg !46
  %10 = add i64 %smin42, -1, !dbg !46
  %smax84.mv.fast = call i64 @llvm.smax.i64(i64 %indvars.iv.mv.fast, i64 -9223372036854775807), !dbg !46
  %11 = call i64 @llvm.smin.i64(i64 %smax84.mv.fast, i64 %smax59.mv.fast), !dbg !46
  %smax85.mv.fast = sub nsw i64 0, %11, !dbg !46
  %smin86.mv.fast = call i64 @llvm.smin.i64(i64 %smax85.mv.fast, i64 255), !dbg !46
  %smax87.mv.fast = call i64 @llvm.smax.i64(i64 %smin86.mv.fast, i64 0), !dbg !46
  %12 = add i64 %indvar.mv.fast, %5, !dbg !46
  %smax58.mv.fast = call i64 @llvm.smax.i64(i64 %12, i64 -9223372036854775807), !dbg !46
  %13 = call i64 @llvm.smin.i64(i64 %smax58.mv.fast, i64 %smax59.mv.fast), !dbg !46
  %smax63.mv.fast = call i64 @llvm.smax.i64(i64 %12, i64 %3), !dbg !46
  %14 = sub i64 %"data::Array.size.0.copyload", %smax63.mv.fast, !dbg !46
  %smin65.mv.fast = call i64 @llvm.smin.i64(i64 %14, i64 %7), !dbg !46
  %smin66.mv.fast = call i64 @llvm.smin.i64(i64 %smin65.mv.fast, i64 255), !dbg !46
  %.not107.mv.fast = icmp sgt i64 %13, -1, !dbg !46
  br i1 %.not107.mv.fast, label %preloop.pseudo.exit.mv.fast, label %L23.preloop.mv.fast, !dbg !46

L23.preloop.mv.fast:                              ; preds = %L23.preheader.mv.fast, %L67.preloop.mv.fast
  %value_phi6.preloop.mv.fast = phi i64 [ %20, %L67.preloop.mv.fast ], [ 0, %L23.preheader.mv.fast ]
  %15 = add i64 %value_phi6.preloop.mv.fast, %value_phi53.mv.fast, !dbg !47
  %.not36.preloop.not.mv.fast = icmp sgt i64 %15, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.preloop.not.mv.fast, label %L72.mv.fast, label %L27.preloop.mv.fast, !dbg !46

L27.preloop.mv.fast:                              ; preds = %L23.preloop.mv.fast
  %16 = add i64 %value_phi6.preloop.mv.fast, %value_phi450.mv.fast, !dbg !47
  %17 = add i64 %16, -1, !dbg !50
  %.not37.preloop.mv.fast = icmp ult i64 %17, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not37.preloop.mv.fast, label %L42.preloop.mv.fast, label %odessy.fasttrap8, !dbg !50

L42.preloop.mv.fast:                              ; preds = %L27.preloop.mv.fast
  %gep.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %16, !dbg !52
  %18 = load i8, ptr %gep.preloop.mv.fast, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %gep57.preloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %15, !dbg !52
  %19 = load i8, ptr %gep57.preloop.mv.fast, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %.not39.preloop.mv.fast = icmp eq i8 %18, %19, !dbg !64
  br i1 %.not39.preloop.mv.fast, label %L67.preloop.mv.fast, label %L72.mv.fast, !dbg !46

L67.preloop.mv.fast:                              ; preds = %L42.preloop.mv.fast
  %20 = add nuw nsw i64 %value_phi6.preloop.mv.fast, 1, !dbg !67
  %exitcond.not.mv.fast = icmp eq i64 %smin86.mv.fast, %20, !dbg !69
  br i1 %exitcond.not.mv.fast, label %preloop.exit.selector.mv.fast, label %L23.preloop.mv.fast, !dbg !69, !llvm.loop !70, !loop_constrainer.loop.clone !10

preloop.exit.selector.mv.fast:                    ; preds = %L67.preloop.mv.fast
  %21 = icmp sgt i64 %11, -255, !dbg !69
  br i1 %21, label %preloop.pseudo.exit.mv.fast, label %L72.mv.fast, !dbg !69

preloop.pseudo.exit.mv.fast:                      ; preds = %preloop.exit.selector.mv.fast, %L23.preheader.mv.fast
  %value_phi6.preloop.copy.mv.fast = phi i64 [ 0, %L23.preheader.mv.fast ], [ %smax87.mv.fast, %preloop.exit.selector.mv.fast ]
  %22 = icmp sgt i64 %smin66.mv.fast, %value_phi6.preloop.copy.mv.fast
  br i1 %22, label %L23.mv.fast.preheader, label %main.pseudo.exit.mv.fast

L23.mv.fast.preheader:                            ; preds = %preloop.pseudo.exit.mv.fast
  %invariant.gep26 = getelementptr i8, ptr %invariant.gep, i64 %value_phi450.mv.fast, !dbg !46
  br label %L23.mv.fast, !dbg !46

L23.mv.fast:                                      ; preds = %L23.mv.fast.preheader, %L67.mv.fast
  %value_phi6.mv.fast = phi i64 [ %26, %L67.mv.fast ], [ %value_phi6.preloop.copy.mv.fast, %L23.mv.fast.preheader ]
  %23 = add i64 %value_phi6.mv.fast, %value_phi53.mv.fast, !dbg !47
  %.not36.not.mv.fast = icmp sgt i64 %23, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.not.mv.fast, label %L72.mv.fast, label %L61.mv.fast, !dbg !46

L61.mv.fast:                                      ; preds = %L23.mv.fast
  %gep = getelementptr i8, ptr %invariant.gep26, i64 %value_phi6.mv.fast, !dbg !52
  %24 = load i8, ptr %gep, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %gep57.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %23, !dbg !52
  %25 = load i8, ptr %gep57.mv.fast, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %.not39.mv.fast = icmp eq i8 %24, %25, !dbg !64
  br i1 %.not39.mv.fast, label %L67.mv.fast, label %L72.mv.fast, !dbg !46

L67.mv.fast:                                      ; preds = %L61.mv.fast
  %26 = add nuw nsw i64 %value_phi6.mv.fast, 1, !dbg !67
  %exitcond43.not = icmp eq i64 %26, %smin42, !dbg !69
  br i1 %exitcond43.not, label %main.exit.selector.mv.fast, label %L23.mv.fast, !dbg !69

main.exit.selector.mv.fast:                       ; preds = %L67.mv.fast
  %27 = icmp samesign ult i64 %10, 254, !dbg !69
  br i1 %27, label %main.pseudo.exit.mv.fast, label %L72.mv.fast, !dbg !69

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %preloop.pseudo.exit.mv.fast
  %value_phi6.copy.mv.fast = phi i64 [ %value_phi6.preloop.copy.mv.fast, %preloop.pseudo.exit.mv.fast ], [ %smin42, %main.exit.selector.mv.fast ]
  %28 = call i64 @llvm.smax.i64(i64 %value_phi6.copy.mv.fast, i64 254)
  %smax88.mv.fast = add nuw nsw i64 %28, 1
  br label %L23.postloop.mv.fast

L23.postloop.mv.fast:                             ; preds = %L67.postloop.mv.fast, %main.pseudo.exit.mv.fast
  %value_phi6.postloop.mv.fast = phi i64 [ %34, %L67.postloop.mv.fast ], [ %value_phi6.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %29 = add i64 %value_phi6.postloop.mv.fast, %value_phi53.mv.fast, !dbg !47
  %.not36.postloop.not.mv.fast = icmp sgt i64 %29, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.postloop.not.mv.fast, label %L72.mv.fast, label %L27.postloop.mv.fast, !dbg !46

L27.postloop.mv.fast:                             ; preds = %L23.postloop.mv.fast
  %30 = add i64 %value_phi6.postloop.mv.fast, %value_phi450.mv.fast, !dbg !47
  %31 = add i64 %30, -1, !dbg !50
  %.not37.postloop.mv.fast = icmp ult i64 %31, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not37.postloop.mv.fast, label %L42.postloop.mv.fast, label %odessy.fasttrap, !dbg !50

L42.postloop.mv.fast:                             ; preds = %L27.postloop.mv.fast
  %gep.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %30, !dbg !52
  %32 = load i8, ptr %gep.postloop.mv.fast, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %gep57.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %29, !dbg !52
  %33 = load i8, ptr %gep57.postloop.mv.fast, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %.not39.postloop.mv.fast = icmp eq i8 %32, %33, !dbg !64
  br i1 %.not39.postloop.mv.fast, label %L67.postloop.mv.fast, label %L72.mv.fast, !dbg !46

L67.postloop.mv.fast:                             ; preds = %L42.postloop.mv.fast
  %34 = add nuw nsw i64 %value_phi6.postloop.mv.fast, 1, !dbg !67
  %35 = icmp samesign ult i64 %value_phi6.postloop.mv.fast, 254, !dbg !75
  br i1 %35, label %L23.postloop.mv.fast, label %L72.mv.fast, !dbg !69, !llvm.loop !78, !loop_constrainer.loop.clone !10

L72.mv.fast:                                      ; preds = %L23.preloop.mv.fast, %L42.preloop.mv.fast, %L23.mv.fast, %L61.mv.fast, %L23.postloop.mv.fast, %L42.postloop.mv.fast, %L67.postloop.mv.fast, %main.exit.selector.mv.fast, %preloop.exit.selector.mv.fast
  %value_phi24.mv.fast = phi i64 [ %smin42, %main.exit.selector.mv.fast ], [ %smax87.mv.fast, %preloop.exit.selector.mv.fast ], [ %smax88.mv.fast, %L67.postloop.mv.fast ], [ %value_phi6.mv.fast, %L23.mv.fast ], [ %value_phi6.postloop.mv.fast, %L42.postloop.mv.fast ], [ %value_phi6.postloop.mv.fast, %L23.postloop.mv.fast ], [ %value_phi6.mv.fast, %L61.mv.fast ], [ %value_phi6.preloop.mv.fast, %L42.preloop.mv.fast ], [ %value_phi6.preloop.mv.fast, %L23.preloop.mv.fast ]
  %value_phi5.value_phi24.mv.fast = call i64 @llvm.smax.i64(i64 %value_phi551.mv.fast, i64 %value_phi24.mv.fast), !dbg !79
  %36 = add nsw i64 %value_phi450.mv.fast, 1, !dbg !80
  %indvar.next.mv.fast = add nuw i64 %indvar.mv.fast, 1, !dbg !45
  %indvars.iv.next.mv.fast = add i64 %indvars.iv.mv.fast, 1, !dbg !45
  %exitcond89.not.mv.fast = icmp eq i64 %indvar.next.mv.fast, %8, !dbg !44
  br i1 %exitcond89.not.mv.fast, label %L79.mv.fast, label %L23.preheader.mv.fast, !dbg !45

L79.mv.fast:                                      ; preds = %L72.mv.fast, %L12.mv.fast
  %value_phi5.lcssa.mv.fast = phi i64 [ 0, %L12.mv.fast ], [ %value_phi5.value_phi24.mv.fast, %L72.mv.fast ]
  %37 = icmp sgt i64 %value_phi5.lcssa.mv.fast, 2, !dbg !82
  %value_phi28.v.mv.fast = select i1 %37, i64 %value_phi5.lcssa.mv.fast, i64 1, !dbg !84
  %value_phi28.mv.fast = add i64 %value_phi28.v.mv.fast, %value_phi53.mv.fast, !dbg !84
  %38 = zext i1 %37 to i64, !dbg !84
  %value_phi29.mv.fast = add i64 %value_phi154.mv.fast, %38, !dbg !84
  %.not.mv.fast = icmp sgt i64 %value_phi28.mv.fast, %"data::Array.size.0.copyload", !dbg !36
  br i1 %.not.mv.fast, label %L88, label %L12.mv.fast, !dbg !37

L12:                                              ; preds = %L12.lr.ph, %L79
  %value_phi154 = phi i64 [ %value_phi29, %L79 ], [ 0, %L12.lr.ph ]
  %value_phi53 = phi i64 [ %value_phi28, %L79 ], [ 2, %L12.lr.ph ]
  %.not34 = icmp sgt i64 %value_phi53, %"window::Int64", !dbg !38
  %39 = sub i64 %value_phi53, %"window::Int64", !dbg !43
  %value_phi3 = select i1 %.not34, i64 %39, i64 1, !dbg !43
  %.not3549 = icmp slt i64 %value_phi3, %value_phi53, !dbg !44
  br i1 %.not3549, label %L23.preheader.lr.ph, label %L79, !dbg !45

L23.preheader.lr.ph:                              ; preds = %L12
  %40 = add i64 %value_phi3, -1, !dbg !45
  %41 = add nsw i64 %value_phi53, -1, !dbg !45
  %smax59 = call i64 @llvm.smax.i64(i64 %41, i64 -9223372036854775807), !dbg !45
  %smax64 = call i64 @llvm.smax.i64(i64 %41, i64 %3), !dbg !45
  %42 = sub i64 %"data::Array.size.0.copyload", %smax64, !dbg !45
  %43 = sub i64 %value_phi53, %value_phi3, !dbg !45
  br label %L23.preheader, !dbg !45

L23.preheader:                                    ; preds = %L72, %L23.preheader.lr.ph
  %indvars.iv = phi i64 [ %40, %L23.preheader.lr.ph ], [ %indvars.iv.next, %L72 ]
  %indvar = phi i64 [ 0, %L23.preheader.lr.ph ], [ %indvar.next, %L72 ]
  %value_phi551 = phi i64 [ 0, %L23.preheader.lr.ph ], [ %value_phi5.value_phi24, %L72 ]
  %value_phi450 = phi i64 [ %value_phi3, %L23.preheader.lr.ph ], [ %56, %L72 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %3), !dbg !46
  %44 = sub i64 %"data::Array.size.0.copyload", %smax, !dbg !46
  %smin = call i64 @llvm.smin.i64(i64 %44, i64 %42), !dbg !46
  %smin39 = call i64 @llvm.smin.i64(i64 %smin, i64 255), !dbg !46
  %45 = add i64 %smin39, -1, !dbg !46
  %smax84 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !46
  %46 = call i64 @llvm.smin.i64(i64 %smax84, i64 %smax59), !dbg !46
  %smax85 = sub nsw i64 0, %46, !dbg !46
  %smin86 = call i64 @llvm.smin.i64(i64 %smax85, i64 255), !dbg !46
  %smax87 = call i64 @llvm.smax.i64(i64 %smin86, i64 0), !dbg !46
  %47 = add i64 %indvar, %40, !dbg !46
  %smax58 = call i64 @llvm.smax.i64(i64 %47, i64 -9223372036854775807), !dbg !46
  %48 = call i64 @llvm.smin.i64(i64 %smax58, i64 %smax59), !dbg !46
  %smax63 = call i64 @llvm.smax.i64(i64 %47, i64 %3), !dbg !46
  %49 = sub i64 %"data::Array.size.0.copyload", %smax63, !dbg !46
  %smin65 = call i64 @llvm.smin.i64(i64 %49, i64 %42), !dbg !46
  %smin66 = call i64 @llvm.smin.i64(i64 %smin65, i64 255), !dbg !46
  %.not107 = icmp sgt i64 %48, -1, !dbg !46
  br i1 %.not107, label %preloop.pseudo.exit, label %L23.preloop, !dbg !46

L23:                                              ; preds = %L23.preheader13, %L67
  %value_phi6 = phi i64 [ %53, %L67 ], [ %value_phi6.preloop.copy, %L23.preheader13 ]
  %50 = add i64 %value_phi6, %value_phi53, !dbg !47
  %.not36.not = icmp sgt i64 %50, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.not, label %L72, label %L61, !dbg !46

L61:                                              ; preds = %L23
  %gep25 = getelementptr i8, ptr %invariant.gep24, i64 %value_phi6, !dbg !52
  %51 = load i8, ptr %gep25, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %gep57 = getelementptr i8, ptr %invariant.gep, i64 %50, !dbg !52
  %52 = load i8, ptr %gep57, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %.not39 = icmp eq i8 %51, %52, !dbg !64
  br i1 %.not39, label %L67, label %L72, !dbg !46

L67:                                              ; preds = %L61
  %53 = add nuw nsw i64 %value_phi6, 1, !dbg !67
  %exitcond.not53 = icmp eq i64 %53, %smin39, !dbg !69
  br i1 %exitcond.not53, label %main.exit.selector, label %L23, !dbg !69

main.exit.selector:                               ; preds = %L67
  %54 = icmp samesign ult i64 %45, 254, !dbg !69
  br i1 %54, label %main.pseudo.exit, label %L72, !dbg !69

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi6.copy = phi i64 [ %value_phi6.preloop.copy, %preloop.pseudo.exit ], [ %smin39, %main.exit.selector ]
  %55 = call i64 @llvm.smax.i64(i64 %value_phi6.copy, i64 254)
  %smax88 = add nuw nsw i64 %55, 1
  br label %L23.postloop

L72:                                              ; preds = %L23.preloop, %L42.preloop, %L23, %L61, %L23.postloop, %L42.postloop, %L67.postloop, %preloop.exit.selector, %main.exit.selector
  %value_phi24 = phi i64 [ %smin39, %main.exit.selector ], [ %smax87, %preloop.exit.selector ], [ %smax88, %L67.postloop ], [ %value_phi6, %L23 ], [ %value_phi6.postloop, %L42.postloop ], [ %value_phi6.postloop, %L23.postloop ], [ %value_phi6, %L61 ], [ %value_phi6.preloop, %L42.preloop ], [ %value_phi6.preloop, %L23.preloop ]
  %value_phi5.value_phi24 = call i64 @llvm.smax.i64(i64 %value_phi551, i64 %value_phi24), !dbg !79
  %56 = add nsw i64 %value_phi450, 1, !dbg !80
  %indvar.next = add nuw i64 %indvar, 1, !dbg !45
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !45
  %exitcond89.not = icmp eq i64 %indvar.next, %43, !dbg !44
  br i1 %exitcond89.not, label %L79, label %L23.preheader, !dbg !45

L79:                                              ; preds = %L72, %L12
  %value_phi5.lcssa = phi i64 [ 0, %L12 ], [ %value_phi5.value_phi24, %L72 ]
  %57 = icmp sgt i64 %value_phi5.lcssa, 2, !dbg !82
  %value_phi28.v = select i1 %57, i64 %value_phi5.lcssa, i64 1, !dbg !84
  %value_phi28 = add i64 %value_phi28.v, %value_phi53, !dbg !84
  %58 = zext i1 %57 to i64, !dbg !84
  %value_phi29 = add i64 %value_phi154, %58, !dbg !84
  %.not = icmp sgt i64 %value_phi28, %"data::Array.size.0.copyload", !dbg !36
  br i1 %.not, label %L88, label %L12, !dbg !37

L88:                                              ; preds = %L79, %L79.mv.fast, %L8.preheader
  %value_phi1.lcssa = phi i64 [ 0, %L8.preheader ], [ %value_phi29.mv.fast, %L79.mv.fast ], [ %value_phi29, %L79 ]
  %frame.prev170 = load ptr, ptr %frame.prev, align 8, !tbaa !20
  store ptr %frame.prev170, ptr %pgcstack, align 8, !tbaa !20
  ret i64 %value_phi1.lcssa, !dbg !85

L89:                                              ; preds = %top
  %59 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !35
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %60 = extractvalue [1 x ptr] %59, 0, !dbg !35
  store ptr %60, ptr %gc_slot_addr_0, align 16
  %ptls_load168 = load ptr, ptr %ptls_field, align 8, !dbg !35, !tbaa !20
  %"box::ArgumentError" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load168, i32 424, i32 16, i64 4839720944) #9, !dbg !35
  %"box::ArgumentError.tag_addr" = getelementptr inbounds i8, ptr %"box::ArgumentError", i64 -8, !dbg !35
  store atomic i64 4839720944, ptr %"box::ArgumentError.tag_addr" unordered, align 8, !dbg !35, !tbaa !86
  store ptr %60, ptr %"box::ArgumentError", align 8, !dbg !35, !tbaa !88, !alias.scope !56, !noalias !59
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::ArgumentError"), !dbg !35
  unreachable, !dbg !35

L23.preloop:                                      ; preds = %L23.preheader, %L67.preloop
  %value_phi6.preloop = phi i64 [ %66, %L67.preloop ], [ 0, %L23.preheader ]
  %61 = add i64 %value_phi6.preloop, %value_phi53, !dbg !47
  %.not36.preloop.not = icmp sgt i64 %61, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.preloop.not, label %L72, label %L27.preloop, !dbg !46

L27.preloop:                                      ; preds = %L23.preloop
  %62 = add i64 %value_phi6.preloop, %value_phi450, !dbg !47
  %63 = add i64 %62, -1, !dbg !50
  %.not37.preloop = icmp ult i64 %63, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not37.preloop, label %L42.preloop, label %odessy.chk1, !dbg !50

L42.preloop:                                      ; preds = %L27.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %62, !dbg !52
  %64 = load i8, ptr %gep.preloop, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %gep57.preloop = getelementptr i8, ptr %invariant.gep, i64 %61, !dbg !52
  %65 = load i8, ptr %gep57.preloop, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %.not39.preloop = icmp eq i8 %64, %65, !dbg !64
  br i1 %.not39.preloop, label %L67.preloop, label %L72, !dbg !46

L67.preloop:                                      ; preds = %L42.preloop
  %66 = add nuw nsw i64 %value_phi6.preloop, 1, !dbg !67
  %exitcond.not = icmp eq i64 %smin86, %66, !dbg !69
  br i1 %exitcond.not, label %preloop.exit.selector, label %L23.preloop, !dbg !69, !llvm.loop !70, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L67.preloop
  %67 = icmp sgt i64 %46, -255, !dbg !69
  br i1 %67, label %preloop.pseudo.exit, label %L72, !dbg !69

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L23.preheader
  %value_phi6.preloop.copy = phi i64 [ 0, %L23.preheader ], [ %smax87, %preloop.exit.selector ]
  %68 = icmp sgt i64 %smin66, %value_phi6.preloop.copy
  br i1 %68, label %L23.preheader13, label %main.pseudo.exit

L23.preheader13:                                  ; preds = %preloop.pseudo.exit
  %invariant.gep24 = getelementptr i8, ptr %invariant.gep, i64 %value_phi450, !dbg !46
  br label %L23, !dbg !46

L23.postloop:                                     ; preds = %L67.postloop, %main.pseudo.exit
  %value_phi6.postloop = phi i64 [ %74, %L67.postloop ], [ %value_phi6.copy, %main.pseudo.exit ]
  %69 = add i64 %value_phi6.postloop, %value_phi53, !dbg !47
  %.not36.postloop.not = icmp sgt i64 %69, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.postloop.not, label %L72, label %L27.postloop, !dbg !46

L27.postloop:                                     ; preds = %L23.postloop
  %70 = add i64 %value_phi6.postloop, %value_phi450, !dbg !47
  %71 = add i64 %70, -1, !dbg !50
  %.not37.postloop = icmp ult i64 %71, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not37.postloop, label %L42.postloop, label %odessy.chk, !dbg !50

L42.postloop:                                     ; preds = %L27.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %70, !dbg !52
  %72 = load i8, ptr %gep.postloop, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %gep57.postloop = getelementptr i8, ptr %invariant.gep, i64 %69, !dbg !52
  %73 = load i8, ptr %gep57.postloop, align 1, !dbg !52, !tbaa !53, !alias.scope !56, !noalias !59
  %.not39.postloop = icmp eq i8 %72, %73, !dbg !64
  br i1 %.not39.postloop, label %L67.postloop, label %L72, !dbg !46

L67.postloop:                                     ; preds = %L42.postloop
  %74 = add nuw nsw i64 %value_phi6.postloop, 1, !dbg !67
  %75 = icmp samesign ult i64 %value_phi6.postloop, 254, !dbg !75
  br i1 %75, label %L23.postloop, label %L72, !dbg !69, !llvm.loop !78, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L27.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L27.preloop
  call void @odessy.chk(i32 1)
  unreachable

odessy.fasttrap:                                  ; preds = %L27.postloop.mv.fast
  call void @odessy.fast.trap(i32 0)
  unreachable

odessy.fasttrap8:                                 ; preds = %L27.preloop.mv.fast
  call void @odessy.fast.trap(i32 1)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4303830812 to ptr)(i64 4303830848) #10
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !91, !noalias !92, !nonnull !10, !dereferenceable !93, !align !94
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !91, !noalias !92, !nonnull !10, !dereferenceable !94, !align !94
  %.unbox = load i64, ptr %3, align 8, !tbaa !88, !alias.scope !56, !noalias !59
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #11
  ret ptr %box_Int64
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext) local_unnamed_addr #2

declare swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @ijl_throw(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #8

; Function Attrs: cold noreturn nounwind
declare void @odessy.fast.trap(i32) local_unnamed_addr #8

attributes #0 = { "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { "julia.fsig"="(::Type{ArgumentError})(String)" "probe-stack"="inline-asm" }
attributes #4 = { noreturn }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "lz77_scan", linkageName: "julia_lz77_scan_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/lz77_bounded.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !8}
!8 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#lz77_scan", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4576834128")
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
!20 = !{!21, !21, i64 0}
!21 = !{!"jtbaa_gcframe", !22, i64 0}
!22 = !{!"jtbaa", !23, i64 0}
!23 = !{!"jtbaa"}
!24 = !DILocation(line: 7, scope: !4)
!25 = !{!26, !26, i64 0}
!26 = !{!"jtbaa_const", !22, i64 0}
!27 = !DILocation(line: 11, scope: !28, inlinedAt: !31)
!28 = distinct !DISubprogram(name: "length;", linkageName: "length", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!29 = !DIFile(filename: "essentials.jl", directory: ".")
!30 = !DISubroutineType(types: !10)
!31 = !DILocation(line: 8, scope: !4)
!32 = !DILocation(line: 520, scope: !33, inlinedAt: !35)
!33 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DIFile(filename: "int.jl", directory: ".")
!35 = !DILocation(line: 9, scope: !4)
!36 = !DILocation(line: 520, scope: !33, inlinedAt: !37)
!37 = !DILocation(line: 12, scope: !4)
!38 = !DILocation(line: 83, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!40 = !DILocation(line: 425, scope: !41, inlinedAt: !43)
!41 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !42, file: !42, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!42 = !DIFile(filename: "operators.jl", directory: ".")
!43 = !DILocation(line: 13, scope: !4)
!44 = !DILocation(line: 83, scope: !39, inlinedAt: !45)
!45 = !DILocation(line: 16, scope: !4)
!46 = !DILocation(line: 18, scope: !4)
!47 = !DILocation(line: 87, scope: !48, inlinedAt: !46)
!48 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!49 = !DILocation(line: 520, scope: !33, inlinedAt: !46)
!50 = !DILocation(line: 919, scope: !51, inlinedAt: !46)
!51 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!52 = !DILocation(line: 920, scope: !51, inlinedAt: !46)
!53 = !{!54, !54, i64 0}
!54 = !{!"jtbaa_arraybuf", !55, i64 0}
!55 = !{!"jtbaa_data", !22, i64 0}
!56 = !{!57}
!57 = !{!"jnoalias_data", !58}
!58 = !{!"jnoalias"}
!59 = !{!60, !61, !62, !63}
!60 = !{!"jnoalias_gcframe", !58}
!61 = !{!"jnoalias_stack", !58}
!62 = !{!"jnoalias_typemd", !58}
!63 = !{!"jnoalias_const", !58}
!64 = !DILocation(line: 637, scope: !65, inlinedAt: !46)
!65 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !66, file: !66, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "promotion.jl", directory: ".")
!67 = !DILocation(line: 87, scope: !48, inlinedAt: !68)
!68 = !DILocation(line: 19, scope: !4)
!69 = !DILocation(line: 20, scope: !4)
!70 = distinct !{!70, !71, !72, !73, !74}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"llvm.loop.vectorize.enable", i1 false}
!73 = !{!"llvm.loop.licm_versioning.disable"}
!74 = !{!"llvm.loop.distribute.enable", i1 false}
!75 = !DILocation(line: 520, scope: !33, inlinedAt: !76)
!76 = !DILocation(line: 472, scope: !77, inlinedAt: !69)
!77 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !42, file: !42, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!78 = distinct !{!78, !71, !72, !73, !74}
!79 = !DILocation(line: 22, scope: !4)
!80 = !DILocation(line: 87, scope: !48, inlinedAt: !81)
!81 = !DILocation(line: 25, scope: !4)
!82 = !DILocation(line: 520, scope: !33, inlinedAt: !83)
!83 = !DILocation(line: 472, scope: !77, inlinedAt: !84)
!84 = !DILocation(line: 27, scope: !4)
!85 = !DILocation(line: 34, scope: !4)
!86 = !{!87, !87, i64 0}
!87 = !{!"jtbaa_tag", !55, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"jtbaa_immut", !90, i64 0}
!90 = !{!"jtbaa_value", !55, i64 0}
!91 = !{!63}
!92 = !{!60, !61, !57, !62}
!93 = !{i64 24}
!94 = !{i64 8}
