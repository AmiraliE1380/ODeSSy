; ModuleID = 'results/static/guard_ablation_0927/Julia_jl_gemm_base/tag.ll'
source_filename = "gemm!"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"jl_global#152.jit" = private alias ptr, inttoptr (i64 126037267754256 to ptr)
@"jl_global#151.jit" = private alias ptr, inttoptr (i64 126037267754384 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 126037267754512 to ptr)

define noundef nonnull ptr @"japi1_gemm!_145"(ptr readnone captures(none) %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  %stackargs = alloca ptr, align 8
  store volatile ptr %"args::Any[]", ptr %stackargs, align 8
  %"new::Tuple56" = alloca [2 x i64], align 8
  %"new::Tuple75" = alloca [2 x i64], align 8
  %thread_ptr = tail call ptr asm "movq %fs:0, $0", "=r"() #10
  %tls_ppgcstack = getelementptr inbounds i8, ptr %thread_ptr, i64 -8
  %tls_pgcstack = load ptr, ptr %tls_ppgcstack, align 8
  store i64 4, ptr %gcframe1, align 16, !tbaa !22
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  %task.gcstack = load ptr, ptr %tls_pgcstack, align 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !22
  store ptr %gcframe1, ptr %tls_pgcstack, align 8
  %0 = load ptr, ptr %"args::Any[]", align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %0, !18, !DIExpression(), !38)
  %1 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %2, !20, !DIExpression(), !38)
  %3 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %4, !21, !DIExpression(), !38)
  %ptls_field = getelementptr inbounds nuw i8, ptr %tls_pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !22
  %5 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %5, align 8, !tbaa !26, !invariant.load !17
  fence syncscope("singlethread") seq_cst
  %6 = load volatile i64, ptr %safepoint, align 8, !dbg !38
  fence syncscope("singlethread") seq_cst
  %.size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39
  %.size.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8, !dbg !39, !tbaa !44, !alias.scope !45, !noalias !46
  %.size.sroa.0.0.copyload.fr = freeze i64 %.size.sroa.0.0.copyload
  %.size.sroa.3.0..size_ptr.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !39
  %.size.sroa.3.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8, !dbg !39, !tbaa !44, !alias.scope !45, !noalias !46
  %.size_ptr1 = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47
  %.size2.sroa.1.0..size_ptr1.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47
  %.size2.sroa.1.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8, !dbg !47, !tbaa !44, !alias.scope !45, !noalias !46
  %.size4.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8, !dbg !49, !tbaa !44, !alias.scope !45, !noalias !46
  %.not = icmp eq i64 %.size4.sroa.0.0.copyload, %.size.sroa.0.0.copyload.fr, !dbg !51
  br i1 %.not, label %L10, label %L340, !dbg !50

L10:                                              ; preds = %top
  %.size_ptr5 = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !54
  %.size6.sroa.0.0.copyload = load i64, ptr %.size_ptr5, align 8, !dbg !54
  %.not149 = icmp eq i64 %.size6.sroa.0.0.copyload, %.size2.sroa.1.0.copyload, !dbg !56
  br i1 %.not149, label %L15, label %L337, !dbg !55

L15:                                              ; preds = %L10
  %.size8.sroa.1.0..size_ptr7.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !57
  %.size8.sroa.1.0.copyload = load i64, ptr %.size8.sroa.1.0..size_ptr7.sroa_idx, align 8, !dbg !57
  %.not150 = icmp eq i64 %.size8.sroa.1.0.copyload, %.size.sroa.3.0.copyload, !dbg !59
  br i1 %.not150, label %L20, label %L334, !dbg !58

L20:                                              ; preds = %L15
  %value_phi = call i64 @llvm.smax.i64(i64 %.size.sroa.3.0.copyload, i64 0), !dbg !60
  %7 = icmp slt i64 %.size.sroa.3.0.copyload, 1, !dbg !68
  br i1 %7, label %L333, label %L37.preheader, !dbg !67

L37.preheader:                                    ; preds = %L20
  %value_phi16 = call i64 @llvm.smax.i64(i64 %.size2.sroa.1.0.copyload, i64 0)
  %8 = icmp slt i64 %.size2.sroa.1.0.copyload, 1
  %value_phi31 = call i64 @llvm.smax.i64(i64 %.size.sroa.0.0.copyload.fr, i64 0)
  br i1 %8, label %L333, label %L37.preheader.split, !dbg !78

L37.preheader.split:                              ; preds = %L37.preheader
  %9 = icmp slt i64 %.size.sroa.0.0.copyload.fr, 1
  br i1 %9, label %L37.us1021.preheader, label %L37.preheader1455, !dbg !79

L37.preheader1455:                                ; preds = %L37.preheader.split
  %10 = add nsw i64 %value_phi31, -2
  %.not163.not.peel = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1
  br i1 %.not163.not.peel, label %L37.us.preheader, label %L37

L37.us.preheader:                                 ; preds = %L37.preheader1455
  %11 = add nuw i64 %.size2.sroa.1.0.copyload, 1
  br label %L37.us

L37.us:                                           ; preds = %L37.us.preheader, %L322.loopexit.split.split.us.us
  %value_phi13.us = phi i64 [ %35, %L322.loopexit.split.split.us.us ], [ 1, %L37.us.preheader ]
  %12 = add nsw i64 %value_phi13.us, -1
  %13 = icmp uge i64 %12, %.size.sroa.3.0.copyload
  %14 = add nuw i64 %value_phi13.us, 2305843009213693951
  %15 = mul i64 %14, %.size2.sroa.1.0.copyload
  %memoryref_data.us = load ptr, ptr %4, align 8
  %invariant.gep469.us = getelementptr i8, ptr %memoryref_data.us, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload.us = load i64, ptr %.size_ptr, align 8
  %.size39.sroa.0.0.copyload.us.fr = freeze i64 %.size39.sroa.0.0.copyload.us
  %16 = mul i64 %.size39.sroa.0.0.copyload.us.fr, %14
  %.fr578.us157 = freeze i1 %13
  br i1 %.fr578.us157, label %odessy.chk1, label %L55.preheader.split.us

L55.preheader.split.us:                           ; preds = %L37.us
  %.size39.sroa.2.0.copyload.us = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %17 = icmp uge i64 %12, %.size39.sroa.2.0.copyload.us
  %.fr.us = freeze i1 %17
  br i1 %.fr.us, label %odessy.chk8, label %L55.preheader.us

L55.preheader.us:                                 ; preds = %L55.preheader.split.us
  %18 = icmp eq i64 %.size39.sroa.0.0.copyload.us.fr, 0
  %19 = shl i64 %16, 3
  br i1 %18, label %L85.us, label %L55.us127.us

L55.us127.us:                                     ; preds = %L55.preheader.us, %L285.peel.us.us
  %value_phi20.us129.us = phi i64 [ %34, %L285.peel.us.us ], [ 1, %L55.preheader.us ]
  %exitcond268.not = icmp eq i64 %value_phi20.us129.us, %11, !dbg !86
  br i1 %exitcond268.not, label %odessy.chk, label %L85.us131.us, !dbg !80

L85.us131.us:                                     ; preds = %L55.us127.us
  %20 = add nsw i64 %value_phi20.us129.us, -1, !dbg !92
  %21 = add i64 %value_phi20.us129.us, %15, !dbg !94
  %memoryref_offset.us132.us = shl i64 %21, 3, !dbg !105
  %gep470.us133.us = getelementptr i8, ptr %invariant.gep469.us, i64 %memoryref_offset.us132.us, !dbg !105
  %22 = load double, ptr %gep470.us133.us, align 8, !dbg !105, !tbaa !108, !alias.scope !111, !noalias !112
  %memoryref_data47.us134.us = load ptr, ptr %0, align 8
  %.size58.sroa.0.0.copyload.us136.us = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.us137.us = freeze i64 %.size58.sroa.0.0.copyload.us136.us, !dbg !113
  %.size58.sroa.2.0.copyload.us138.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %23 = icmp uge i64 %20, %.size58.sroa.2.0.copyload.us138.us
  %24 = add nuw i64 %value_phi20.us129.us, 2305843009213693951
  %25 = mul i64 %.size58.sroa.0.0.copyload.fr.us137.us, %24
  %memoryref_data66.us139.us = load ptr, ptr %2, align 8
  %.size77.sroa.0.0.copyload.us141.us = load i64, ptr %.size_ptr, align 8
  %26 = mul i64 %.size77.sroa.0.0.copyload.us141.us, %14
  %.fr268.us142.us = freeze i1 %23
  br i1 %.fr268.us142.us, label %L220, label %L133.preheader.split.split.us143.us

L133.preheader.split.split.us143.us:              ; preds = %L85.us131.us
  %.size77.sroa.2.0.copyload.us144.us = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %27 = icmp uge i64 %12, %.size77.sroa.2.0.copyload.us144.us
  %.fr382.us145.us = freeze i1 %27
  br i1 %.fr382.us145.us, label %L163.us334, label %L133.preheader.split.split.split.us146.us

L133.preheader.split.split.split.us146.us:        ; preds = %L133.preheader.split.split.us143.us
  %gep.peel.us.us = getelementptr i8, ptr %memoryref_data47.us134.us, i64 %19, !dbg !116
  %28 = load double, ptr %gep.peel.us.us, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %.not1444.us.us = icmp eq i64 %.size58.sroa.0.0.copyload.fr.us137.us, 0, !dbg !118
  br i1 %.not1444.us.us, label %odessy.chk10, label %L223.peel.us.us, !dbg !113

L223.peel.us.us:                                  ; preds = %L133.preheader.split.split.split.us146.us
  %.not1445.us.us = icmp eq i64 %.size77.sroa.0.0.copyload.us141.us, 0, !dbg !122
  br i1 %.not1445.us.us, label %odessy.chk13, label %L285.peel.us.us, !dbg !126

L285.peel.us.us:                                  ; preds = %L223.peel.us.us
  %29 = shl i64 %25, 3, !dbg !116
  %gep167.peel.us.us = getelementptr i8, ptr %memoryref_data66.us139.us, i64 %29, !dbg !116
  %30 = load double, ptr %gep167.peel.us.us, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %31 = fmul double %22, %30, !dbg !131
  %32 = fadd double %28, %31, !dbg !134
  %33 = shl i64 %26, 3, !dbg !136
  %gep169.peel.us.us = getelementptr i8, ptr %memoryref_data47.us134.us, i64 %33, !dbg !136
  store double %32, ptr %gep169.peel.us.us, align 8, !dbg !136, !tbaa !108, !alias.scope !111, !noalias !112
  %.not164.not.us.us159 = icmp eq i64 %value_phi20.us129.us, %value_phi16, !dbg !137
  %34 = add nuw i64 %value_phi20.us129.us, 1, !dbg !138
  br i1 %.not164.not.us.us159, label %L322.loopexit.split.split.us.us, label %L55.us127.us, !dbg !139

L322.loopexit.split.split.us.us:                  ; preds = %L285.peel.us.us
  %.not165.not.us = icmp eq i64 %value_phi13.us, %value_phi, !dbg !140
  %35 = add nuw i64 %value_phi13.us, 1, !dbg !141
  br i1 %.not165.not.us, label %L333, label %L37.us, !dbg !142

L37.us1021.preheader:                             ; preds = %L37.preheader.split
  %36 = add nsw i64 %value_phi16, -1
  %umin1602 = call i64 @llvm.umin.i64(i64 %.size2.sroa.1.0.copyload, i64 %36)
  %umin1602.fr = freeze i64 %umin1602
  %min.iters.check1605 = icmp ult i64 %umin1602.fr, 32
  br i1 %min.iters.check1605, label %L37.us1021.us.preheader, label %L37.us1021.preheader172

L37.us1021.preheader172:                          ; preds = %L37.us1021.preheader
  %37 = add i64 %umin1602.fr, 1
  %n.mod.vf1607 = and i64 %37, 31
  %38 = icmp eq i64 %n.mod.vf1607, 0
  %39 = select i1 %38, i64 32, i64 %n.mod.vf1607
  %n.vec1608 = sub i64 %37, %39
  %umax = call i64 @llvm.umax.i64(i64 %.size2.sroa.1.0.copyload, i64 %n.vec1608)
  %40 = add i64 %39, %umax
  %41 = add nuw i64 %39, %value_phi16
  %42 = sub i64 %umin1602.fr, %40
  %reass.sub = sub i64 %umin1602.fr, %41
  %43 = add i64 %reass.sub, 1
  %.not271.not = icmp uge i64 %42, %43
  %min.iters.check468 = icmp slt i64 %.size.sroa.3.0.copyload, 8
  br i1 %min.iters.check468, label %L37.us1021.preheader513, label %vector.ph469

vector.ph469:                                     ; preds = %L37.us1021.preheader172
  %n.vec471 = and i64 %value_phi, 9223372036854775800
  %44 = or disjoint i64 %n.vec471, 1
  %45 = insertelement <8 x i1> poison, i1 %.not271.not, i64 0
  %46 = shufflevector <8 x i1> %45, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert474 = insertelement <8 x i64> poison, i64 %.size.sroa.3.0.copyload, i64 0
  %broadcast.splat475 = shufflevector <8 x i64> %broadcast.splatinsert474, <8 x i64> poison, <8 x i32> zeroinitializer
  %.fr504 = freeze <8 x i1> %46
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body.interim, %vector.ph469
  %index477 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body.interim ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph469 ], [ %vec.ind.next, %vector.body.interim ]
  %47 = add nsw <8 x i64> %vec.ind, splat (i64 -1)
  %48 = icmp uge <8 x i64> %47, %broadcast.splat475
  %49 = freeze <8 x i1> %48
  %50 = or <8 x i1> %49, %.fr504
  %51 = bitcast <8 x i1> %50 to i8
  %.not505 = icmp eq i8 %51, 0
  br i1 %.not505, label %vector.body.interim, label %vector.early.exit.check, !dbg !142

vector.body.interim:                              ; preds = %vector.body476
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %index.next478 = add nuw i64 %index477, 8
  %52 = icmp eq i64 %index.next478, %n.vec471
  br i1 %52, label %middle.block, label %vector.body476, !dbg !142, !llvm.loop !143

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %.size.sroa.3.0.copyload, %n.vec471, !dbg !142
  br i1 %cmp.n, label %L333, label %L37.us1021.preheader513, !dbg !142

L37.us1021.preheader513:                          ; preds = %L37.us1021.preheader172, %middle.block
  %value_phi13.us1030.ph = phi i64 [ 1, %L37.us1021.preheader172 ], [ %44, %middle.block ]
  br label %L37.us1021

vector.early.exit.check:                          ; preds = %vector.body476
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %50, i1 false)
  %53 = extractelement <8 x i1> %49, i64 %first.active.lane
  br i1 %53, label %odessy.chk3, label %odessy.chk2

L37.us1021.us.preheader:                          ; preds = %L37.us1021.preheader
  %.not272 = icmp eq i64 %.size2.sroa.1.0.copyload, %umin1602.fr
  %54 = icmp ne i64 %36, %umin1602.fr
  %min.iters.check481 = icmp slt i64 %.size.sroa.3.0.copyload, 8
  br i1 %min.iters.check481, label %L37.us1021.us.preheader509, label %vector.ph482

vector.ph482:                                     ; preds = %L37.us1021.us.preheader
  %n.vec484 = and i64 %value_phi, 9223372036854775800
  %55 = or disjoint i64 %n.vec484, 1
  %56 = insertelement <8 x i1> poison, i1 %54, i64 0
  %57 = shufflevector <8 x i1> %56, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert487 = insertelement <8 x i1> poison, i1 %.not272, i64 0
  %broadcast.splat488 = shufflevector <8 x i1> %broadcast.splatinsert487, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert489 = insertelement <8 x i64> poison, i64 %.size.sroa.3.0.copyload, i64 0
  %broadcast.splat490 = shufflevector <8 x i64> %broadcast.splatinsert489, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body.interim496, %vector.ph482
  %index492 = phi i64 [ 0, %vector.ph482 ], [ %index.next494, %vector.body.interim496 ]
  %vec.ind493 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph482 ], [ %vec.ind.next495, %vector.body.interim496 ]
  %58 = add nsw <8 x i64> %vec.ind493, splat (i64 -1)
  %59 = icmp uge <8 x i64> %58, %broadcast.splat490
  %60 = freeze <8 x i1> %59
  %61 = select <8 x i1> %60, <8 x i1> splat (i1 true), <8 x i1> %broadcast.splat488
  %62 = select <8 x i1> %61, <8 x i1> splat (i1 true), <8 x i1> %57
  %63 = freeze <8 x i1> %62
  %64 = bitcast <8 x i1> %63 to i8
  %.not506 = icmp eq i8 %64, 0
  br i1 %.not506, label %vector.body.interim496, label %vector.early.exit.check499, !dbg !142

vector.body.interim496:                           ; preds = %vector.body491
  %vec.ind.next495 = add nuw <8 x i64> %vec.ind493, splat (i64 8)
  %index.next494 = add nuw i64 %index492, 8
  %65 = icmp eq i64 %index.next494, %n.vec484
  br i1 %65, label %middle.block497, label %vector.body491, !dbg !142, !llvm.loop !146

middle.block497:                                  ; preds = %vector.body.interim496
  %cmp.n498 = icmp eq i64 %.size.sroa.3.0.copyload, %n.vec484, !dbg !142
  br i1 %cmp.n498, label %L333, label %L37.us1021.us.preheader509, !dbg !142

L37.us1021.us.preheader509:                       ; preds = %L37.us1021.us.preheader, %middle.block497
  %value_phi13.us1030.us.ph = phi i64 [ 1, %L37.us1021.us.preheader ], [ %55, %middle.block497 ]
  br label %L37.us1021.us

vector.early.exit.check499:                       ; preds = %vector.body491
  %first.active.lane500 = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %63, i1 false)
  %66 = extractelement <8 x i1> %60, i64 %first.active.lane500
  br i1 %66, label %odessy.chk3, label %vector.early.exit.check.0

vector.early.exit.check.0:                        ; preds = %vector.early.exit.check499
  br i1 %.not272, label %odessy.chk2, label %L55.us662.us.us.preheader508

L37.us1021.us:                                    ; preds = %L37.us1021.us.preheader509, %L322.loopexit.split.us.us.us
  %value_phi13.us1030.us = phi i64 [ %69, %L322.loopexit.split.us.us.us ], [ %value_phi13.us1030.us.ph, %L37.us1021.us.preheader509 ]
  %67 = add nsw i64 %value_phi13.us1030.us, -1
  %68 = icmp uge i64 %67, %.size.sroa.3.0.copyload
  %.fr578.us.us = freeze i1 %68
  br i1 %.fr578.us.us, label %odessy.chk3, label %L55.us662.us.us.preheader

L55.us662.us.us.preheader:                        ; preds = %L37.us1021.us
  br i1 %.not272, label %odessy.chk2, label %L55.us662.us.us.preheader.split, !dbg !80

L55.us662.us.us.preheader.split:                  ; preds = %L55.us662.us.us.preheader
  br i1 %54, label %L55.us662.us.us.preheader508, label %L322.loopexit.split.us.us.us, !dbg !139, !llvm.loop !147

L55.us662.us.us.preheader508:                     ; preds = %L55.us662.us.us.preheader.split, %vector.early.exit.check.0
  br label %L55.us662.us.us, !dbg !139

L55.us662.us.us:                                  ; preds = %L55.us662.us.us.preheader508, %L55.us662.us.us
  br label %L55.us662.us.us, !dbg !139

L322.loopexit.split.us.us.us:                     ; preds = %L55.us662.us.us.preheader.split
  %.not165.not.us1040.us = icmp eq i64 %value_phi13.us1030.us, %value_phi, !dbg !140
  %69 = add nuw i64 %value_phi13.us1030.us, 1, !dbg !141
  br i1 %.not165.not.us1040.us, label %L333, label %L37.us1021.us, !dbg !142, !llvm.loop !148

L37.us1021:                                       ; preds = %L37.us1021.preheader513, %L322.loopexit.split.us.us
  %value_phi13.us1030 = phi i64 [ %72, %L322.loopexit.split.us.us ], [ %value_phi13.us1030.ph, %L37.us1021.preheader513 ]
  %70 = add nsw i64 %value_phi13.us1030, -1
  %71 = icmp uge i64 %70, %.size.sroa.3.0.copyload
  %.fr578.us = freeze i1 %71
  br i1 %.fr578.us, label %odessy.chk3, label %vector.body1611.preheader

vector.body1611.preheader:                        ; preds = %L37.us1021
  br i1 %.not271.not, label %odessy.chk2, label %L322.loopexit.split.us.us, !dbg !80

L322.loopexit.split.us.us:                        ; preds = %vector.body1611.preheader
  %.not165.not.us1040 = icmp eq i64 %value_phi13.us1030, %value_phi, !dbg !140
  %72 = add nuw i64 %value_phi13.us1030, 1, !dbg !141
  br i1 %.not165.not.us1040, label %L333, label %L37.us1021, !dbg !142, !llvm.loop !149

L37:                                              ; preds = %L37.preheader1455, %L322.loopexit.split.split
  %indvar = phi i64 [ %indvar.next, %L322.loopexit.split.split ], [ 0, %L37.preheader1455 ]
  %value_phi13 = phi i64 [ %145, %L322.loopexit.split.split ], [ 1, %L37.preheader1455 ]
  %73 = shl i64 %indvar, 3
  %74 = add nsw i64 %value_phi13, -1
  %75 = icmp uge i64 %74, %.size.sroa.3.0.copyload
  %76 = add nuw i64 %value_phi13, 2305843009213693951
  %77 = mul i64 %76, %.size2.sroa.1.0.copyload
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %.size39.sroa.0.0.copyload.fr = freeze i64 %.size39.sroa.0.0.copyload
  %78 = mul i64 %.size39.sroa.0.0.copyload.fr, %76
  %.fr578 = freeze i1 %75
  br i1 %.fr578, label %odessy.chk1, label %L55.preheader.split

L55.preheader.split:                              ; preds = %L37
  %.size39.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %79 = icmp uge i64 %74, %.size39.sroa.2.0.copyload
  %.fr = freeze i1 %79
  br i1 %.fr, label %odessy.chk8, label %L55.preheader

L55.preheader:                                    ; preds = %L55.preheader.split
  %80 = add i64 %.size39.sroa.0.0.copyload.fr, -1, !dbg !80
  %81 = mul i64 %.size39.sroa.0.0.copyload.fr, %73, !dbg !80
  %82 = icmp eq i64 %.size39.sroa.0.0.copyload.fr, 0
  %83 = shl i64 %78, 3
  br i1 %82, label %L85.us, label %L55

L85.us:                                           ; preds = %L55.preheader, %L55.preheader.us
  %.size77.sroa.2.0.copyload.us = phi i64 [ %.size39.sroa.2.0.copyload.us, %L55.preheader.us ], [ %.size39.sroa.2.0.copyload, %L55.preheader ]
  %.us-phi161 = phi i64 [ %12, %L55.preheader.us ], [ %74, %L55.preheader ], !dbg !80
  %.size58.sroa.2.0.copyload.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %.size58.sroa.2.0.copyload.us.fr = freeze i64 %.size58.sroa.2.0.copyload.us
  %84 = icmp eq i64 %.size58.sroa.2.0.copyload.us.fr, 0
  br i1 %84, label %odessy.chk7, label %L133.preheader.split.split.us51

L133.preheader.split.split.us51:                  ; preds = %L85.us
  %85 = icmp uge i64 %.us-phi161, %.size77.sroa.2.0.copyload.us
  %.fr382.us = freeze i1 %85
  br i1 %.fr382.us, label %odessy.chk6, label %odessy.chk5

L55:                                              ; preds = %L55.preheader, %L311.loopexit.loopexit
  %indvar1573 = phi i64 [ %indvar.next1574, %L311.loopexit.loopexit ], [ 0, %L55.preheader ]
  %value_phi20 = phi i64 [ %144, %L311.loopexit.loopexit ], [ 1, %L55.preheader ]
  %86 = shl i64 %indvar1573, 3, !dbg !92
  %exitcond.not = icmp eq i64 %indvar1573, %.size2.sroa.1.0.copyload, !dbg !86
  br i1 %exitcond.not, label %odessy.chk, label %L85, !dbg !80

L85:                                              ; preds = %L55
  %87 = add nsw i64 %value_phi20, -1, !dbg !92
  %88 = add i64 %value_phi20, %77, !dbg !94
  %memoryref_offset = shl i64 %88, 3, !dbg !105
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !105
  %89 = load double, ptr %gep470, align 8, !dbg !105, !tbaa !108, !alias.scope !111, !noalias !112
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !113
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !113
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %90 = icmp uge i64 %87, %.size58.sroa.2.0.copyload
  %91 = add nuw i64 %value_phi20, 2305843009213693951
  %92 = mul i64 %.size58.sroa.0.0.copyload.fr, %91
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !113
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %93 = mul i64 %.size77.sroa.0.0.copyload, %76
  %.fr268 = freeze i1 %90
  br i1 %.fr268, label %L220, label %L133.preheader.split.split

L133.preheader.split.split:                       ; preds = %L85
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %94 = icmp uge i64 %74, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %94
  br i1 %.fr382, label %L163.us334, label %L133.preheader.split.split.split

L163.us334:                                       ; preds = %L133.preheader.split.split, %L133.preheader.split.split.us143.us
  %.us-phi54.ph = phi i64 [ %value_phi13.us, %L133.preheader.split.split.us143.us ], [ %value_phi13, %L133.preheader.split.split ]
  %.us-phi56.ph = phi i64 [ %.size58.sroa.0.0.copyload.fr.us137.us, %L133.preheader.split.split.us143.us ], [ %.size58.sroa.0.0.copyload.fr, %L133.preheader.split.split ]
  %95 = icmp eq i64 %.us-phi56.ph, 0, !dbg !118
  br i1 %95, label %odessy.chk11, label %L282, !dbg !113

L133.preheader.split.split.split:                 ; preds = %L133.preheader.split.split
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %83, !dbg !116
  %96 = load double, ptr %gep.peel, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %.not1444 = icmp eq i64 %.size58.sroa.0.0.copyload.fr, 0, !dbg !118
  br i1 %.not1444, label %odessy.chk10, label %L223.peel, !dbg !113

L223.peel:                                        ; preds = %L133.preheader.split.split.split
  %.not1445 = icmp eq i64 %.size77.sroa.0.0.copyload, 0, !dbg !122
  br i1 %.not1445, label %odessy.chk13, label %L285.peel, !dbg !126

L285.peel:                                        ; preds = %L223.peel
  %97 = shl i64 %92, 3, !dbg !116
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %97, !dbg !116
  %98 = load double, ptr %gep167.peel, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %99 = fmul double %89, %98, !dbg !131
  %100 = fadd double %96, %99, !dbg !134
  %101 = shl i64 %93, 3, !dbg !136
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %101, !dbg !136
  store double %100, ptr %gep169.peel, align 8, !dbg !136, !tbaa !108, !alias.scope !111, !noalias !112
  %102 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !113
  %umin1598 = call i64 @llvm.umin.i64(i64 %102, i64 %10), !dbg !113
  %103 = freeze i64 %umin1598, !dbg !113
  %104 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !113
  %umin1599 = call i64 @llvm.umin.i64(i64 %103, i64 %104), !dbg !113
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %80), !dbg !113
  %105 = add nuw i64 %umin1600, 1, !dbg !113
  %min.iters.check = icmp ult i64 %umin1600, 24, !dbg !113
  br i1 %min.iters.check, label %L133.preheader, label %vector.scevcheck, !dbg !113

vector.scevcheck:                                 ; preds = %L285.peel
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !113
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %81, !dbg !113
  %mul.result = shl i64 %umin1600, 3, !dbg !113
  %106 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !113
  %107 = icmp ult ptr %106, %scevgep1566, !dbg !113
  %108 = mul i64 %.size77.sroa.0.0.copyload, %73, !dbg !113
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %108, !dbg !113
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !113
  %109 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !113
  %110 = icmp ult ptr %109, %scevgep1568, !dbg !113
  %111 = or i1 %mul.overflow1571, %110, !dbg !113
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !113
  %112 = mul i64 %.size58.sroa.0.0.copyload.fr, %86, !dbg !113
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %112, !dbg !113
  %113 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !113
  %114 = icmp ult ptr %113, %scevgep1575, !dbg !113
  %115 = or i1 %107, %111, !dbg !113
  %116 = or i1 %114, %115, !dbg !113
  br i1 %116, label %L133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !113
  %117 = getelementptr i8, ptr %scevgep1581, i64 %108, !dbg !113
  %scevgep1585 = getelementptr i8, ptr %117, i64 %mul.result, !dbg !113
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %81, !dbg !113
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !113
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !113
  %118 = getelementptr i8, ptr %scevgep1593, i64 %112, !dbg !113
  %scevgep1594 = getelementptr i8, ptr %118, i64 %mul.result, !dbg !113
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !113
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !113
  %found.conflict = and i1 %bound0, %bound1, !dbg !113
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !113
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !113
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !113
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !113
  br i1 %conflict.rdx, label %L133.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %105, 3, !dbg !113
  %119 = icmp eq i64 %n.mod.vf, 0, !dbg !113
  %120 = select i1 %119, i64 4, i64 %n.mod.vf, !dbg !113
  %n.vec = sub nuw nsw i64 %105, %120, !dbg !113
  %broadcast.splatinsert = insertelement <4 x double> poison, double %89, i64 0, !dbg !113
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer, !dbg !113
  br label %vector.body, !dbg !113

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !113
  %121 = add i64 %offset.idx, %78, !dbg !150
  %122 = shl i64 %121, 3, !dbg !116
  %123 = getelementptr i8, ptr %invariant.gep, i64 %122, !dbg !116
  %wide.load = load <4 x double>, ptr %123, align 8, !dbg !116, !tbaa !108, !alias.scope !156, !noalias !112
  %124 = add i64 %offset.idx, %92, !dbg !150
  %125 = shl i64 %124, 3, !dbg !116
  %126 = getelementptr i8, ptr %invariant.gep166, i64 %125, !dbg !116
  %wide.load1601 = load <4 x double>, ptr %126, align 8, !dbg !116, !tbaa !108, !alias.scope !159, !noalias !112
  %127 = fmul <4 x double> %broadcast.splat, %wide.load1601, !dbg !131
  %128 = fadd <4 x double> %wide.load, %127, !dbg !134
  %129 = add i64 %offset.idx, %93, !dbg !161
  %130 = shl i64 %129, 3, !dbg !136
  %131 = getelementptr i8, ptr %invariant.gep, i64 %130, !dbg !136
  store <4 x double> %128, ptr %131, align 8, !dbg !136, !tbaa !108, !alias.scope !167, !noalias !169
  %index.next = add nuw nsw i64 %index, 4
  %132 = icmp eq i64 %index.next, %n.vec
  br i1 %132, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !170

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 2, !dbg !113
  br label %L133.preheader, !dbg !113

L133.preheader:                                   ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L285.peel
  %value_phi35.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 2, %vector.memcheck ], [ 2, %vector.scevcheck ], [ 2, %L285.peel ]
  br label %L133, !dbg !113

L133:                                             ; preds = %L133.preheader, %L285
  %value_phi35 = phi i64 [ %143, %L285 ], [ %value_phi35.ph, %L133.preheader ]
  %133 = add i64 %value_phi35, -1, !dbg !172
  %.not1446 = icmp ult i64 %133, %.size39.sroa.0.0.copyload.fr, !dbg !118
  br i1 %.not1446, label %L163, label %odessy.chk4, !dbg !113

L163:                                             ; preds = %L133
  %134 = add i64 %value_phi35, %78, !dbg !150
  %memoryref_offset49 = shl i64 %134, 3, !dbg !116
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !116
  %135 = load double, ptr %gep, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %.not1447 = icmp ult i64 %133, %.size58.sroa.0.0.copyload.fr, !dbg !118
  br i1 %.not1447, label %L223, label %odessy.chk9, !dbg !113

L220:                                             ; preds = %L85, %L85.us131.us
  %.us-phi53.ph = phi i64 [ %value_phi20.us129.us, %L85.us131.us ], [ %value_phi20, %L85 ]
  %136 = getelementptr inbounds nuw i8, ptr %"new::Tuple56", i64 8
  store i64 1, ptr %"new::Tuple56", align 8, !dbg !114, !tbaa !173, !alias.scope !175, !noalias !176
  store i64 %.us-phi53.ph, ptr %136, align 8, !dbg !114, !tbaa !173, !alias.scope !175, !noalias !176
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple56") #3, !dbg !113
  unreachable, !dbg !113

L223:                                             ; preds = %L163
  %.not1448 = icmp ult i64 %133, %.size77.sroa.0.0.copyload, !dbg !122
  br i1 %.not1448, label %L285, label %odessy.chk12, !dbg !126

L282:                                             ; preds = %L163.us334
  %137 = getelementptr inbounds nuw i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 8, !dbg !127, !tbaa !173, !alias.scope !175, !noalias !176
  store i64 %.us-phi54.ph, ptr %137, align 8, !dbg !127, !tbaa !173, !alias.scope !175, !noalias !176
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #3, !dbg !126
  unreachable, !dbg !126

L285:                                             ; preds = %L223
  %138 = add i64 %value_phi35, %92, !dbg !150
  %memoryref_offset68 = shl i64 %138, 3, !dbg !116
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !116
  %139 = load double, ptr %gep167, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %140 = fmul double %89, %139, !dbg !131
  %141 = fadd double %135, %140, !dbg !134
  %142 = add i64 %value_phi35, %93, !dbg !161
  %memoryref_offset85 = shl i64 %142, 3, !dbg !136
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !136
  store double %141, ptr %gep169, align 8, !dbg !136, !tbaa !108, !alias.scope !111, !noalias !112
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !177
  %143 = add i64 %value_phi35, 1, !dbg !178
  br i1 %.not163.not, label %L311.loopexit.loopexit, label %L133, !dbg !179, !llvm.loop !180

L311.loopexit.loopexit:                           ; preds = %L285
  %.not164.not = icmp eq i64 %value_phi20, %value_phi16, !dbg !137
  %144 = add nuw i64 %value_phi20, 1, !dbg !138
  %indvar.next1574 = add nuw nsw i64 %indvar1573, 1, !dbg !139
  br i1 %.not164.not, label %L322.loopexit.split.split, label %L55, !dbg !139

L322.loopexit.split.split:                        ; preds = %L311.loopexit.loopexit
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !140
  %145 = add nuw i64 %value_phi13, 1, !dbg !141
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !142
  br i1 %.not165.not, label %L333, label %L37, !dbg !142

L333:                                             ; preds = %L322.loopexit.split.split, %L322.loopexit.split.split.us.us, %L322.loopexit.split.us.us, %L322.loopexit.split.us.us.us, %middle.block, %middle.block497, %L37.preheader, %L20
  %frame.prev1759 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1759, ptr %tls_pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !181

L334:                                             ; preds = %L15
  %146 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %147 = extractvalue [1 x ptr] %146, 0, !dbg !58
  store ptr %147, ptr %gc_slot_addr_0, align 16
  %ptls_load1749 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1749, i32 360, i32 16, i64 126037352129680) #11, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch", i64 -8, !dbg !58
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !182
  store ptr %147, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !184, !alias.scope !111, !noalias !112
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %148 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01728 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %149 = extractvalue [1 x ptr] %148, 0, !dbg !55
  store ptr %149, ptr %gc_slot_addr_01728, align 16
  %ptls_load1753 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1753, i32 360, i32 16, i64 126037352129680) #11, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch115", i64 -8, !dbg !55
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !182
  store ptr %149, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !184, !alias.scope !111, !noalias !112
  store ptr null, ptr %gc_slot_addr_01728, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %150 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01730 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %151 = extractvalue [1 x ptr] %150, 0, !dbg !50
  store ptr %151, ptr %gc_slot_addr_01730, align 16
  %ptls_load1757 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1757, i32 360, i32 16, i64 126037352129680) #11, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch121", i64 -8, !dbg !50
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !182
  store ptr %151, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !184, !alias.scope !111, !noalias !112
  store ptr null, ptr %gc_slot_addr_01730, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk:                                       ; preds = %L55, %L55.us127.us
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L37, %L37.us
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %vector.body1611.preheader, %L55.us662.us.us.preheader, %vector.early.exit.check, %vector.early.exit.check.0
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L37.us1021, %L37.us1021.us, %vector.early.exit.check, %vector.early.exit.check499
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %L133
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L133.preheader.split.split.us51
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %L133.preheader.split.split.us51
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %L85.us
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %L55.preheader.split, %L55.preheader.split.us
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L163
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L133.preheader.split.split.split, %L133.preheader.split.split.split.us146.us
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %L163.us334
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %L223
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %L223.peel, %L223.peel.us.us
  call void @odessy.chk(i32 13)
  unreachable
}

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself, ptr, ptr readonly captures(none)) local_unnamed_addr #1

declare swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @ijl_throw(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1>, i1 immarg) #9

attributes #0 = { "frame-pointer"="all" "julia.fsig"="gemm!(Array{Float64, 2}, Array{Float64, 2}, Array{Float64, 2})" "probe-stack"="inline-asm" }
attributes #1 = { noreturn "frame-pointer"="all" "julia.fsig"="throw_boundserror(Array{Float64, 2}, Tuple{Int64, Int64})" "probe-stack"="inline-asm" }
attributes #2 = { "frame-pointer"="all" "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #3 = { noreturn }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "gemm!", linkageName: "japi1_gemm!_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !14)
!5 = !DIFile(filename: "/mydata/ODeSSy/native_bench/jl_gemm_base.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8, !12, !13}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !10, line: 71, align: 64, elements: !11)
!10 = !DIFile(filename: "julia.h", directory: "")
!11 = !{!8}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!13 = !DIBasicType(name: "Int32", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !18, !20, !21}
!15 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 7, type: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#gemm!", align: 8, elements: !17, runtimeLang: DW_LANG_Julia, identifier: "126037267755792")
!17 = !{}
!18 = !DILocalVariable(name: "C", arg: 2, scope: !4, file: !5, line: 7, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !8)
!20 = !DILocalVariable(name: "A", arg: 3, scope: !4, file: !5, line: 7, type: !19)
!21 = !DILocalVariable(name: "B", arg: 4, scope: !4, file: !5, line: 7, type: !19)
!22 = !{!23, !23, i64 0}
!23 = !{!"jtbaa_gcframe", !24, i64 0}
!24 = !{!"jtbaa", !25, i64 0}
!25 = !{!"jtbaa"}
!26 = !{!27, !27, i64 0}
!27 = !{!"jtbaa_const", !24, i64 0}
!28 = !{!29}
!29 = !{!"jnoalias_const", !30}
!30 = !{!"jnoalias"}
!31 = !{!32, !33, !34, !35}
!32 = !{!"jnoalias_gcframe", !30}
!33 = !{!"jnoalias_stack", !30}
!34 = !{!"jnoalias_data", !30}
!35 = !{!"jnoalias_typemd", !30}
!36 = !{i64 32}
!37 = !{i64 8}
!38 = !DILocation(line: 7, scope: !4)
!39 = !DILocation(line: 194, scope: !40, inlinedAt: !43)
!40 = distinct !DISubprogram(name: "size;", linkageName: "size", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DIFile(filename: "array.jl", directory: ".")
!42 = !DISubroutineType(types: !17)
!43 = !DILocation(line: 8, scope: !4)
!44 = !{!24, !24, i64 0}
!45 = !{!35, !33}
!46 = !{!32, !34, !29}
!47 = !DILocation(line: 191, scope: !40, inlinedAt: !48)
!48 = !DILocation(line: 9, scope: !4)
!49 = !DILocation(line: 191, scope: !40, inlinedAt: !50)
!50 = !DILocation(line: 14, scope: !4)
!51 = !DILocation(line: 637, scope: !52, inlinedAt: !50)
!52 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !53, file: !53, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!53 = !DIFile(filename: "promotion.jl", directory: ".")
!54 = !DILocation(line: 191, scope: !40, inlinedAt: !55)
!55 = !DILocation(line: 15, scope: !4)
!56 = !DILocation(line: 637, scope: !52, inlinedAt: !55)
!57 = !DILocation(line: 191, scope: !40, inlinedAt: !58)
!58 = !DILocation(line: 16, scope: !4)
!59 = !DILocation(line: 637, scope: !52, inlinedAt: !58)
!60 = !DILocation(line: 426, scope: !61, inlinedAt: !63)
!61 = distinct !DISubprogram(name: "unitrange_last;", linkageName: "unitrange_last", scope: !62, file: !62, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!62 = !DIFile(filename: "range.jl", directory: ".")
!63 = !DILocation(line: 415, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "UnitRange;", linkageName: "UnitRange", scope: !62, file: !62, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!65 = !DILocation(line: 5, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "Colon;", linkageName: "Colon", scope: !62, file: !62, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!67 = !DILocation(line: 17, scope: !4)
!68 = !DILocation(line: 83, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!70 = !DIFile(filename: "int.jl", directory: ".")
!71 = !DILocation(line: 425, scope: !72, inlinedAt: !74)
!72 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !73, file: !73, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!73 = !DIFile(filename: "operators.jl", directory: ".")
!74 = !DILocation(line: 688, scope: !75, inlinedAt: !76)
!75 = distinct !DISubprogram(name: "isempty;", linkageName: "isempty", scope: !62, file: !62, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!76 = !DILocation(line: 917, scope: !77, inlinedAt: !67)
!77 = distinct !DISubprogram(name: "iterate;", linkageName: "iterate", scope: !62, file: !62, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!78 = !DILocation(line: 18, scope: !4)
!79 = !DILocation(line: 20, scope: !4)
!80 = !DILocation(line: 699, scope: !81, inlinedAt: !83)
!81 = distinct !DISubprogram(name: "checkbounds;", linkageName: "checkbounds", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!82 = !DIFile(filename: "abstractarray.jl", directory: ".")
!83 = !DILocation(line: 928, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!85 = !DILocation(line: 19, scope: !4)
!86 = !DILocation(line: 519, scope: !69, inlinedAt: !87)
!87 = !DILocation(line: 754, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "checkindex;", linkageName: "checkindex", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!89 = !DILocation(line: 725, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "checkbounds_indices;", linkageName: "checkbounds_indices", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!91 = !DILocation(line: 681, scope: !81, inlinedAt: !80)
!92 = !DILocation(line: 86, scope: !93, inlinedAt: !87)
!93 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!94 = !DILocation(line: 87, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!96 = !DILocation(line: 3081, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "_sub2ind_recurse;", linkageName: "_sub2ind_recurse", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!98 = !DILocation(line: 3081, scope: !97, inlinedAt: !99)
!99 = !DILocation(line: 3065, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "_sub2ind;", linkageName: "_sub2ind", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!101 = !DILocation(line: 3049, scope: !100, inlinedAt: !102)
!102 = !DILocation(line: 1377, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "_to_linear_index;", linkageName: "_to_linear_index", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DILocation(line: 929, scope: !84, inlinedAt: !85)
!105 = !DILocation(line: 920, scope: !106, inlinedAt: !104)
!106 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !107, file: !107, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!107 = !DIFile(filename: "essentials.jl", directory: ".")
!108 = !{!109, !109, i64 0}
!109 = !{!"jtbaa_arraybuf", !110, i64 0}
!110 = !{!"jtbaa_data", !24, i64 0}
!111 = !{!34}
!112 = !{!32, !33, !35, !29}
!113 = !DILocation(line: 699, scope: !81, inlinedAt: !114)
!114 = !DILocation(line: 928, scope: !84, inlinedAt: !115)
!115 = !DILocation(line: 21, scope: !4)
!116 = !DILocation(line: 920, scope: !106, inlinedAt: !117)
!117 = !DILocation(line: 929, scope: !84, inlinedAt: !115)
!118 = !DILocation(line: 519, scope: !69, inlinedAt: !119)
!119 = !DILocation(line: 754, scope: !88, inlinedAt: !120)
!120 = !DILocation(line: 725, scope: !90, inlinedAt: !121)
!121 = !DILocation(line: 681, scope: !81, inlinedAt: !113)
!122 = !DILocation(line: 519, scope: !69, inlinedAt: !123)
!123 = !DILocation(line: 754, scope: !88, inlinedAt: !124)
!124 = !DILocation(line: 725, scope: !90, inlinedAt: !125)
!125 = !DILocation(line: 681, scope: !81, inlinedAt: !126)
!126 = !DILocation(line: 699, scope: !81, inlinedAt: !127)
!127 = !DILocation(line: 1002, scope: !128, inlinedAt: !129)
!128 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!129 = !DILocation(line: 997, scope: !130, inlinedAt: !115)
!130 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!131 = !DILocation(line: 497, scope: !132, inlinedAt: !115)
!132 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !133, file: !133, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!133 = !DIFile(filename: "float.jl", directory: ".")
!134 = !DILocation(line: 495, scope: !135, inlinedAt: !115)
!135 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !133, file: !133, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!136 = !DILocation(line: 1003, scope: !128, inlinedAt: !129)
!137 = !DILocation(line: 637, scope: !52, inlinedAt: !138)
!138 = !DILocation(line: 921, scope: !77, inlinedAt: !139)
!139 = !DILocation(line: 23, scope: !4)
!140 = !DILocation(line: 637, scope: !52, inlinedAt: !141)
!141 = !DILocation(line: 921, scope: !77, inlinedAt: !142)
!142 = !DILocation(line: 24, scope: !4)
!143 = distinct !{!143, !144, !145}
!144 = !{!"llvm.loop.isvectorized", i32 1}
!145 = !{!"llvm.loop.unroll.runtime.disable"}
!146 = distinct !{!146, !144, !145}
!147 = distinct !{!147, !145, !144}
!148 = distinct !{!148, !145, !144}
!149 = distinct !{!149, !145, !144}
!150 = !DILocation(line: 87, scope: !95, inlinedAt: !151)
!151 = !DILocation(line: 3081, scope: !97, inlinedAt: !152)
!152 = !DILocation(line: 3081, scope: !97, inlinedAt: !153)
!153 = !DILocation(line: 3065, scope: !100, inlinedAt: !154)
!154 = !DILocation(line: 3049, scope: !100, inlinedAt: !155)
!155 = !DILocation(line: 1377, scope: !103, inlinedAt: !117)
!156 = !{!34, !157}
!157 = distinct !{!157, !158}
!158 = distinct !{!158, !"LVerDomain"}
!159 = !{!34, !160}
!160 = distinct !{!160, !158}
!161 = !DILocation(line: 87, scope: !95, inlinedAt: !162)
!162 = !DILocation(line: 3081, scope: !97, inlinedAt: !163)
!163 = !DILocation(line: 3081, scope: !97, inlinedAt: !164)
!164 = !DILocation(line: 3065, scope: !100, inlinedAt: !165)
!165 = !DILocation(line: 3049, scope: !100, inlinedAt: !166)
!166 = !DILocation(line: 1377, scope: !103, inlinedAt: !136)
!167 = !{!34, !168}
!168 = distinct !{!168, !158}
!169 = !{!32, !33, !35, !29, !157, !160}
!170 = distinct !{!170, !171, !144, !145}
!171 = !{!"llvm.loop.peeled.count", i32 1}
!172 = !DILocation(line: 86, scope: !93, inlinedAt: !119)
!173 = !{!174, !174, i64 0}
!174 = !{!"jtbaa_stack", !24, i64 0}
!175 = !{!33}
!176 = !{!32, !34, !35, !29}
!177 = !DILocation(line: 637, scope: !52, inlinedAt: !178)
!178 = !DILocation(line: 921, scope: !77, inlinedAt: !179)
!179 = !DILocation(line: 22, scope: !4)
!180 = distinct !{!180, !171, !144}
!181 = !DILocation(line: 25, scope: !4)
!182 = !{!183, !183, i64 0}
!183 = !{!"jtbaa_tag", !110, i64 0}
!184 = !{!185, !185, i64 0}
!185 = !{!"jtbaa_immut", !186, i64 0}
!186 = !{!"jtbaa_value", !110, i64 0}
