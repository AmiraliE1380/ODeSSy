; ModuleID = 'results/static/guard_ablation_1109/Julia_jl_gemm_base/mv.ll'
source_filename = "gemm!"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"jl_global#152.jit" = private alias ptr, inttoptr (i64 128832746204432 to ptr)
@"jl_global#151.jit" = private alias ptr, inttoptr (i64 128832746204560 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 128832746204688 to ptr)

define noundef nonnull ptr @"japi1_gemm!_145"(ptr readnone captures(none) %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  %stackargs = alloca ptr, align 8
  store volatile ptr %"args::Any[]", ptr %stackargs, align 8
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
  br i1 %.not163.not.peel, label %L37.us, label %L37

L37.us:                                           ; preds = %L37.preheader1455, %L322.loopexit.split.split.us.us
  %value_phi13.us = phi i64 [ %33, %L322.loopexit.split.split.us.us ], [ 1, %L37.preheader1455 ]
  %11 = add nsw i64 %value_phi13.us, -1
  %12 = icmp uge i64 %11, %.size.sroa.3.0.copyload
  %13 = add nuw i64 %value_phi13.us, 2305843009213693951
  %14 = mul i64 %13, %.size2.sroa.1.0.copyload
  %memoryref_data.us = load ptr, ptr %4, align 8
  %invariant.gep469.us = getelementptr i8, ptr %memoryref_data.us, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload.us = load i64, ptr %.size_ptr, align 8
  %15 = mul i64 %.size39.sroa.0.0.copyload.us, %13
  %.fr578.us9 = freeze i1 %12
  br i1 %.fr578.us9, label %odessy.chk1, label %L55.preheader.split.us

L55.preheader.split.us:                           ; preds = %L37.us
  %.size39.sroa.2.0.copyload.us = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %16 = icmp uge i64 %11, %.size39.sroa.2.0.copyload.us
  %.fr.us = freeze i1 %16
  br i1 %.fr.us, label %odessy.chk8, label %L55.preheader.us

L55.preheader.us:                                 ; preds = %L55.preheader.split.us
  %17 = shl i64 %15, 3
  br label %L55.us.us, !dbg !80

L55.us.us:                                        ; preds = %L163.peel.us.us, %L55.preheader.us
  %value_phi20.us.us = phi i64 [ 1, %L55.preheader.us ], [ %32, %L163.peel.us.us ]
  %18 = add nsw i64 %value_phi20.us.us, -1, !dbg !86
  %19 = add i64 %value_phi20.us.us, %14, !dbg !93
  %memoryref_offset.us.us = shl i64 %19, 3, !dbg !104
  %gep470.us.us = getelementptr i8, ptr %invariant.gep469.us, i64 %memoryref_offset.us.us, !dbg !104
  %20 = load double, ptr %gep470.us.us, align 8, !dbg !104, !tbaa !107, !alias.scope !110, !noalias !111
  %memoryref_data47.us.us = load ptr, ptr %0, align 8
  %.size58.sroa.0.0.copyload.us.us = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.us.us = freeze i64 %.size58.sroa.0.0.copyload.us.us, !dbg !112
  %.size58.sroa.2.0.copyload.us.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %21 = icmp uge i64 %18, %.size58.sroa.2.0.copyload.us.us
  %22 = add nuw i64 %value_phi20.us.us, 2305843009213693951
  %23 = mul i64 %.size58.sroa.0.0.copyload.fr.us.us, %22
  %memoryref_data66.us.us = load ptr, ptr %2, align 8
  %.size77.sroa.0.0.copyload.us.us = load i64, ptr %.size_ptr, align 8
  %24 = mul i64 %.size77.sroa.0.0.copyload.us.us, %13
  %.fr268.us.us = freeze i1 %21
  br i1 %.fr268.us.us, label %L133.preheader.split.split.us, label %L133.preheader.split.split.us8.us

L133.preheader.split.split.us8.us:                ; preds = %L55.us.us
  %.size77.sroa.2.0.copyload.us.us = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %25 = icmp uge i64 %11, %.size77.sroa.2.0.copyload.us.us
  %.fr382.us.us = freeze i1 %25
  br i1 %.fr382.us.us, label %L163.us334, label %L163.peel.us.us

L163.peel.us.us:                                  ; preds = %L133.preheader.split.split.us8.us
  %gep.peel.us.us = getelementptr i8, ptr %memoryref_data47.us.us, i64 %17, !dbg !115
  %26 = load double, ptr %gep.peel.us.us, align 8, !dbg !115, !tbaa !107, !alias.scope !110, !noalias !111
  %27 = shl i64 %23, 3, !dbg !115
  %gep167.peel.us.us = getelementptr i8, ptr %memoryref_data66.us.us, i64 %27, !dbg !115
  %28 = load double, ptr %gep167.peel.us.us, align 8, !dbg !115, !tbaa !107, !alias.scope !110, !noalias !111
  %29 = fmul double %20, %28, !dbg !117
  %30 = fadd double %26, %29, !dbg !120
  %31 = shl i64 %24, 3, !dbg !122
  %gep169.peel.us.us = getelementptr i8, ptr %memoryref_data47.us.us, i64 %31, !dbg !122
  store double %30, ptr %gep169.peel.us.us, align 8, !dbg !122, !tbaa !107, !alias.scope !110, !noalias !111
  %.not164.not.us.us10 = icmp eq i64 %value_phi20.us.us, %value_phi16, !dbg !126
  %32 = add nuw i64 %value_phi20.us.us, 1, !dbg !127
  br i1 %.not164.not.us.us10, label %L322.loopexit.split.split.us.us, label %L55.us.us, !dbg !128

L322.loopexit.split.split.us.us:                  ; preds = %L163.peel.us.us
  %.not165.not.us = icmp eq i64 %value_phi13.us, %value_phi, !dbg !129
  %33 = add nuw i64 %value_phi13.us, 1, !dbg !130
  br i1 %.not165.not.us, label %L333, label %L37.us, !dbg !131

L37.us1021.preheader:                             ; preds = %L37.preheader.split
  %34 = add nsw i64 %value_phi16, -1
  %umin1602 = call i64 @llvm.umin.i64(i64 %.size2.sroa.1.0.copyload, i64 %34)
  %umin1602.fr = freeze i64 %umin1602
  %min.iters.check1605 = icmp ult i64 %umin1602.fr, 32
  br i1 %min.iters.check1605, label %L37.us1021.us.preheader, label %L37.us1021.preheader13

L37.us1021.preheader13:                           ; preds = %L37.us1021.preheader
  %35 = add i64 %umin1602.fr, 1
  %n.mod.vf1607 = and i64 %35, 31
  %36 = icmp eq i64 %n.mod.vf1607, 0
  %37 = select i1 %36, i64 32, i64 %n.mod.vf1607
  %n.vec1608 = sub i64 %35, %37
  %umax = call i64 @llvm.umax.i64(i64 %.size2.sroa.1.0.copyload, i64 %n.vec1608)
  %38 = add i64 %37, %umax
  %39 = add nuw i64 %37, %value_phi16
  %40 = sub i64 %umin1602.fr, %38
  %reass.sub = sub i64 %umin1602.fr, %39
  %41 = add i64 %reass.sub, 1
  %.not33.not = icmp uge i64 %40, %41
  %min.iters.check74 = icmp slt i64 %.size.sroa.3.0.copyload, 8
  br i1 %min.iters.check74, label %L37.us1021.preheader119, label %vector.ph75

vector.ph75:                                      ; preds = %L37.us1021.preheader13
  %n.vec77 = and i64 %value_phi, 9223372036854775800
  %42 = or disjoint i64 %n.vec77, 1
  %43 = insertelement <8 x i1> poison, i1 %.not33.not, i64 0
  %44 = shufflevector <8 x i1> %43, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert80 = insertelement <8 x i64> poison, i64 %.size.sroa.3.0.copyload, i64 0
  %broadcast.splat81 = shufflevector <8 x i64> %broadcast.splatinsert80, <8 x i64> poison, <8 x i32> zeroinitializer
  %.fr110 = freeze <8 x i1> %44
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body.interim, %vector.ph75
  %index83 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body.interim ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph75 ], [ %vec.ind.next, %vector.body.interim ]
  %45 = add nsw <8 x i64> %vec.ind, splat (i64 -1)
  %46 = icmp uge <8 x i64> %45, %broadcast.splat81
  %47 = freeze <8 x i1> %46
  %48 = or <8 x i1> %47, %.fr110
  %49 = bitcast <8 x i1> %48 to i8
  %.not111 = icmp eq i8 %49, 0
  br i1 %.not111, label %vector.body.interim, label %vector.early.exit.check, !dbg !131

vector.body.interim:                              ; preds = %vector.body82
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %index.next84 = add nuw i64 %index83, 8
  %50 = icmp eq i64 %index.next84, %n.vec77
  br i1 %50, label %middle.block, label %vector.body82, !dbg !131, !llvm.loop !132

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %.size.sroa.3.0.copyload, %n.vec77, !dbg !131
  br i1 %cmp.n, label %L333, label %L37.us1021.preheader119, !dbg !131

L37.us1021.preheader119:                          ; preds = %L37.us1021.preheader13, %middle.block
  %value_phi13.us1030.ph = phi i64 [ 1, %L37.us1021.preheader13 ], [ %42, %middle.block ]
  br label %L37.us1021

vector.early.exit.check:                          ; preds = %vector.body82
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %48, i1 false)
  %51 = extractelement <8 x i1> %47, i64 %first.active.lane
  br i1 %51, label %odessy.chk3, label %odessy.chk2

L37.us1021.us.preheader:                          ; preds = %L37.us1021.preheader
  %.not34 = icmp eq i64 %.size2.sroa.1.0.copyload, %umin1602.fr
  %52 = icmp ne i64 %34, %umin1602.fr
  %min.iters.check87 = icmp slt i64 %.size.sroa.3.0.copyload, 8
  br i1 %min.iters.check87, label %L37.us1021.us.preheader115, label %vector.ph88

vector.ph88:                                      ; preds = %L37.us1021.us.preheader
  %n.vec90 = and i64 %value_phi, 9223372036854775800
  %53 = or disjoint i64 %n.vec90, 1
  %54 = insertelement <8 x i1> poison, i1 %52, i64 0
  %55 = shufflevector <8 x i1> %54, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <8 x i1> poison, i1 %.not34, i64 0
  %broadcast.splat94 = shufflevector <8 x i1> %broadcast.splatinsert93, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i64> poison, i64 %.size.sroa.3.0.copyload, i64 0
  %broadcast.splat96 = shufflevector <8 x i64> %broadcast.splatinsert95, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body.interim102, %vector.ph88
  %index98 = phi i64 [ 0, %vector.ph88 ], [ %index.next100, %vector.body.interim102 ]
  %vec.ind99 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph88 ], [ %vec.ind.next101, %vector.body.interim102 ]
  %56 = add nsw <8 x i64> %vec.ind99, splat (i64 -1)
  %57 = icmp uge <8 x i64> %56, %broadcast.splat96
  %58 = freeze <8 x i1> %57
  %59 = select <8 x i1> %58, <8 x i1> splat (i1 true), <8 x i1> %broadcast.splat94
  %60 = select <8 x i1> %59, <8 x i1> splat (i1 true), <8 x i1> %55
  %61 = freeze <8 x i1> %60
  %62 = bitcast <8 x i1> %61 to i8
  %.not112 = icmp eq i8 %62, 0
  br i1 %.not112, label %vector.body.interim102, label %vector.early.exit.check105, !dbg !131

vector.body.interim102:                           ; preds = %vector.body97
  %vec.ind.next101 = add nuw <8 x i64> %vec.ind99, splat (i64 8)
  %index.next100 = add nuw i64 %index98, 8
  %63 = icmp eq i64 %index.next100, %n.vec90
  br i1 %63, label %middle.block103, label %vector.body97, !dbg !131, !llvm.loop !135

middle.block103:                                  ; preds = %vector.body.interim102
  %cmp.n104 = icmp eq i64 %.size.sroa.3.0.copyload, %n.vec90, !dbg !131
  br i1 %cmp.n104, label %L333, label %L37.us1021.us.preheader115, !dbg !131

L37.us1021.us.preheader115:                       ; preds = %L37.us1021.us.preheader, %middle.block103
  %value_phi13.us1030.us.ph = phi i64 [ 1, %L37.us1021.us.preheader ], [ %53, %middle.block103 ]
  br label %L37.us1021.us

vector.early.exit.check105:                       ; preds = %vector.body97
  %first.active.lane106 = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %61, i1 false)
  %64 = extractelement <8 x i1> %58, i64 %first.active.lane106
  br i1 %64, label %odessy.chk3, label %vector.early.exit.check.0

vector.early.exit.check.0:                        ; preds = %vector.early.exit.check105
  br i1 %.not34, label %odessy.chk2, label %L55.us662.us.us.preheader114

L37.us1021.us:                                    ; preds = %L37.us1021.us.preheader115, %L322.loopexit.split.us.us.us
  %value_phi13.us1030.us = phi i64 [ %67, %L322.loopexit.split.us.us.us ], [ %value_phi13.us1030.us.ph, %L37.us1021.us.preheader115 ]
  %65 = add nsw i64 %value_phi13.us1030.us, -1
  %66 = icmp uge i64 %65, %.size.sroa.3.0.copyload
  %.fr578.us.us = freeze i1 %66
  br i1 %.fr578.us.us, label %odessy.chk3, label %L55.us662.us.us.preheader

L55.us662.us.us.preheader:                        ; preds = %L37.us1021.us
  br i1 %.not34, label %odessy.chk2, label %L55.us662.us.us.preheader.split, !dbg !80

L55.us662.us.us.preheader.split:                  ; preds = %L55.us662.us.us.preheader
  br i1 %52, label %L55.us662.us.us.preheader114, label %L322.loopexit.split.us.us.us, !dbg !128, !llvm.loop !136

L55.us662.us.us.preheader114:                     ; preds = %L55.us662.us.us.preheader.split, %vector.early.exit.check.0
  br label %L55.us662.us.us, !dbg !128

L55.us662.us.us:                                  ; preds = %L55.us662.us.us.preheader114, %L55.us662.us.us
  br label %L55.us662.us.us, !dbg !128

L322.loopexit.split.us.us.us:                     ; preds = %L55.us662.us.us.preheader.split
  %.not165.not.us1040.us = icmp eq i64 %value_phi13.us1030.us, %value_phi, !dbg !129
  %67 = add nuw i64 %value_phi13.us1030.us, 1, !dbg !130
  br i1 %.not165.not.us1040.us, label %L333, label %L37.us1021.us, !dbg !131, !llvm.loop !137

L37.us1021:                                       ; preds = %L37.us1021.preheader119, %L322.loopexit.split.us.us
  %value_phi13.us1030 = phi i64 [ %70, %L322.loopexit.split.us.us ], [ %value_phi13.us1030.ph, %L37.us1021.preheader119 ]
  %68 = add nsw i64 %value_phi13.us1030, -1
  %69 = icmp uge i64 %68, %.size.sroa.3.0.copyload
  %.fr578.us = freeze i1 %69
  br i1 %.fr578.us, label %odessy.chk3, label %vector.body1611.preheader

vector.body1611.preheader:                        ; preds = %L37.us1021
  br i1 %.not33.not, label %odessy.chk2, label %L322.loopexit.split.us.us, !dbg !80

L322.loopexit.split.us.us:                        ; preds = %vector.body1611.preheader
  %.not165.not.us1040 = icmp eq i64 %value_phi13.us1030, %value_phi, !dbg !129
  %70 = add nuw i64 %value_phi13.us1030, 1, !dbg !130
  br i1 %.not165.not.us1040, label %L333, label %L37.us1021, !dbg !131, !llvm.loop !138

L37:                                              ; preds = %L37.preheader1455, %L322.loopexit.split.split
  %indvar = phi i64 [ %indvar.next, %L322.loopexit.split.split ], [ 0, %L37.preheader1455 ]
  %value_phi13 = phi i64 [ %138, %L322.loopexit.split.split ], [ 1, %L37.preheader1455 ]
  %71 = shl i64 %indvar, 3
  %72 = add nsw i64 %value_phi13, -1
  %73 = icmp uge i64 %72, %.size.sroa.3.0.copyload
  %74 = add nuw i64 %value_phi13, 2305843009213693951
  %75 = mul i64 %74, %.size2.sroa.1.0.copyload
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %76 = mul i64 %.size39.sroa.0.0.copyload, %74
  %.fr578 = freeze i1 %73
  br i1 %.fr578, label %odessy.chk1, label %L55.preheader.split

L55.preheader.split:                              ; preds = %L37
  %.size39.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %77 = icmp uge i64 %72, %.size39.sroa.2.0.copyload
  %.fr = freeze i1 %77
  br i1 %.fr, label %odessy.chk8, label %L55.preheader

L55.preheader:                                    ; preds = %L55.preheader.split
  %78 = add i64 %.size39.sroa.0.0.copyload, -1, !dbg !80
  %79 = mul i64 %.size39.sroa.0.0.copyload, %71, !dbg !80
  %80 = shl i64 %76, 3
  br label %L55, !dbg !80

L55:                                              ; preds = %L311.loopexit.loopexit, %L55.preheader
  %indvar1573 = phi i64 [ 0, %L55.preheader ], [ %indvar.next1574, %L311.loopexit.loopexit ]
  %value_phi20 = phi i64 [ 1, %L55.preheader ], [ %137, %L311.loopexit.loopexit ]
  %81 = shl i64 %indvar1573, 3, !dbg !86
  %82 = add nsw i64 %value_phi20, -1, !dbg !86
  %83 = add i64 %value_phi20, %75, !dbg !93
  %memoryref_offset = shl i64 %83, 3, !dbg !104
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !104
  %84 = load double, ptr %gep470, align 8, !dbg !104, !tbaa !107, !alias.scope !110, !noalias !111
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !112
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !112
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %85 = icmp uge i64 %82, %.size58.sroa.2.0.copyload
  %86 = add nuw i64 %value_phi20, 2305843009213693951
  %87 = mul i64 %.size58.sroa.0.0.copyload.fr, %86
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !112
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %88 = mul i64 %.size77.sroa.0.0.copyload, %74
  %.fr268 = freeze i1 %85
  br i1 %.fr268, label %L133.preheader.split.split.us, label %L133.preheader.split.split

L133.preheader.split.split.us:                    ; preds = %L55, %L55.us.us
  call void @odessy.chk(i32 7)
  unreachable

L133.preheader.split.split:                       ; preds = %L55
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %89 = icmp uge i64 %72, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %89
  br i1 %.fr382, label %L163.us334, label %L163.peel

L163.us334:                                       ; preds = %L133.preheader.split.split, %L133.preheader.split.split.us8.us
  %.us-phi = phi i64 [ %value_phi13.us, %L133.preheader.split.split.us8.us ], [ %value_phi13, %L133.preheader.split.split ]
  %90 = getelementptr inbounds nuw i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 8, !dbg !139, !tbaa !140, !alias.scope !142, !noalias !143
  store i64 %.us-phi, ptr %90, align 8, !dbg !139, !tbaa !140, !alias.scope !142, !noalias !143
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #3, !dbg !144
  unreachable, !dbg !144

L163.peel:                                        ; preds = %L133.preheader.split.split
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %80, !dbg !115
  %91 = load double, ptr %gep.peel, align 8, !dbg !115, !tbaa !107, !alias.scope !110, !noalias !111
  %92 = shl i64 %87, 3, !dbg !115
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %92, !dbg !115
  %93 = load double, ptr %gep167.peel, align 8, !dbg !115, !tbaa !107, !alias.scope !110, !noalias !111
  %94 = fmul double %84, %93, !dbg !117
  %95 = fadd double %91, %94, !dbg !120
  %96 = shl i64 %88, 3, !dbg !122
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %96, !dbg !122
  store double %95, ptr %gep169.peel, align 8, !dbg !122, !tbaa !107, !alias.scope !110, !noalias !111
  %97 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !112
  %umin1598 = call i64 @llvm.umin.i64(i64 %97, i64 %10), !dbg !112
  %98 = freeze i64 %umin1598, !dbg !112
  %99 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !112
  %umin1599 = call i64 @llvm.umin.i64(i64 %98, i64 %99), !dbg !112
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %78), !dbg !112
  %100 = add i64 %umin1600, 1, !dbg !112
  %min.iters.check = icmp ult i64 %100, 25, !dbg !112
  br i1 %min.iters.check, label %L133.preheader, label %vector.scevcheck, !dbg !112

vector.scevcheck:                                 ; preds = %L163.peel
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !112
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %79, !dbg !112
  %mul.result = shl i64 %umin1600, 3, !dbg !112
  %101 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !112
  %102 = icmp ult ptr %101, %scevgep1566, !dbg !112
  %103 = mul i64 %.size77.sroa.0.0.copyload, %71, !dbg !112
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %103, !dbg !112
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !112
  %104 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !112
  %105 = icmp ult ptr %104, %scevgep1568, !dbg !112
  %106 = or i1 %mul.overflow1571, %105, !dbg !112
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !112
  %107 = mul i64 %.size58.sroa.0.0.copyload.fr, %81, !dbg !112
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %107, !dbg !112
  %108 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !112
  %109 = icmp ult ptr %108, %scevgep1575, !dbg !112
  %110 = or i1 %102, %106, !dbg !112
  %111 = or i1 %109, %110, !dbg !112
  br i1 %111, label %L133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !112
  %112 = getelementptr i8, ptr %scevgep1581, i64 %103, !dbg !112
  %scevgep1585 = getelementptr i8, ptr %112, i64 %mul.result, !dbg !112
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %79, !dbg !112
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !112
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !112
  %113 = getelementptr i8, ptr %scevgep1593, i64 %107, !dbg !112
  %scevgep1594 = getelementptr i8, ptr %113, i64 %mul.result, !dbg !112
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !112
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !112
  %found.conflict = and i1 %bound0, %bound1, !dbg !112
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !112
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !112
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !112
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !112
  br i1 %conflict.rdx, label %L133.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %100, 3, !dbg !112
  %114 = icmp eq i64 %n.mod.vf, 0, !dbg !112
  %115 = select i1 %114, i64 4, i64 %n.mod.vf, !dbg !112
  %n.vec = sub nuw nsw i64 %100, %115, !dbg !112
  %broadcast.splatinsert = insertelement <4 x double> poison, double %84, i64 0, !dbg !112
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer, !dbg !112
  br label %vector.body, !dbg !112

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !112
  %116 = add i64 %offset.idx, %76, !dbg !145
  %117 = shl i64 %116, 3, !dbg !115
  %118 = getelementptr i8, ptr %invariant.gep, i64 %117, !dbg !115
  %wide.load = load <4 x double>, ptr %118, align 8, !dbg !115, !tbaa !107, !alias.scope !151, !noalias !111
  %119 = add i64 %offset.idx, %87, !dbg !145
  %120 = shl i64 %119, 3, !dbg !115
  %121 = getelementptr i8, ptr %invariant.gep166, i64 %120, !dbg !115
  %wide.load1601 = load <4 x double>, ptr %121, align 8, !dbg !115, !tbaa !107, !alias.scope !154, !noalias !111
  %122 = fmul <4 x double> %broadcast.splat, %wide.load1601, !dbg !117
  %123 = fadd <4 x double> %wide.load, %122, !dbg !120
  %124 = add i64 %offset.idx, %88, !dbg !156
  %125 = shl i64 %124, 3, !dbg !122
  %126 = getelementptr i8, ptr %invariant.gep, i64 %125, !dbg !122
  store <4 x double> %123, ptr %126, align 8, !dbg !122, !tbaa !107, !alias.scope !162, !noalias !164
  %index.next = add nuw i64 %index, 4
  %127 = icmp eq i64 %index.next, %n.vec
  br i1 %127, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !165

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 2, !dbg !112
  br label %L133.preheader, !dbg !112

L133.preheader:                                   ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L163.peel
  %value_phi35.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 2, %vector.memcheck ], [ 2, %vector.scevcheck ], [ 2, %L163.peel ]
  br label %L133, !dbg !112

L133:                                             ; preds = %L133.preheader, %L163
  %value_phi35 = phi i64 [ %136, %L163 ], [ %value_phi35.ph, %L133.preheader ]
  %128 = add i64 %value_phi35, -1, !dbg !167
  %.not1446 = icmp ult i64 %128, %.size39.sroa.0.0.copyload, !dbg !171
  br i1 %.not1446, label %L163, label %odessy.chk4, !dbg !112

L163:                                             ; preds = %L133
  %129 = add i64 %value_phi35, %76, !dbg !145
  %memoryref_offset49 = shl i64 %129, 3, !dbg !115
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !115
  %130 = load double, ptr %gep, align 8, !dbg !115, !tbaa !107, !alias.scope !110, !noalias !111
  %131 = add i64 %value_phi35, %87, !dbg !145
  %memoryref_offset68 = shl i64 %131, 3, !dbg !115
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !115
  %132 = load double, ptr %gep167, align 8, !dbg !115, !tbaa !107, !alias.scope !110, !noalias !111
  %133 = fmul double %84, %132, !dbg !117
  %134 = fadd double %130, %133, !dbg !120
  %135 = add i64 %value_phi35, %88, !dbg !156
  %memoryref_offset85 = shl i64 %135, 3, !dbg !122
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !122
  store double %134, ptr %gep169, align 8, !dbg !122, !tbaa !107, !alias.scope !110, !noalias !111
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !172
  %136 = add i64 %value_phi35, 1, !dbg !173
  br i1 %.not163.not, label %L311.loopexit.loopexit, label %L133, !dbg !174, !llvm.loop !175

L311.loopexit.loopexit:                           ; preds = %L163
  %.not164.not = icmp eq i64 %value_phi20, %value_phi16, !dbg !126
  %137 = add nuw i64 %value_phi20, 1, !dbg !127
  %indvar.next1574 = add nuw nsw i64 %indvar1573, 1, !dbg !128
  br i1 %.not164.not, label %L322.loopexit.split.split, label %L55, !dbg !128

L322.loopexit.split.split:                        ; preds = %L311.loopexit.loopexit
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !129
  %138 = add nuw i64 %value_phi13, 1, !dbg !130
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !131
  br i1 %.not165.not, label %L333, label %L37, !dbg !131

L333:                                             ; preds = %L322.loopexit.split.split, %L322.loopexit.split.split.us.us, %L322.loopexit.split.us.us, %L322.loopexit.split.us.us.us, %middle.block, %middle.block103, %L37.preheader, %L20
  %frame.prev1759 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1759, ptr %tls_pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !176

L334:                                             ; preds = %L15
  %139 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %140 = extractvalue [1 x ptr] %139, 0, !dbg !58
  store ptr %140, ptr %gc_slot_addr_0, align 16
  %ptls_load1749 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1749, i32 360, i32 16, i64 128832830579856) #11, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch", i64 -8, !dbg !58
  store atomic i64 128832830579856, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !177
  store ptr %140, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !179, !alias.scope !110, !noalias !111
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %141 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01728 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %142 = extractvalue [1 x ptr] %141, 0, !dbg !55
  store ptr %142, ptr %gc_slot_addr_01728, align 16
  %ptls_load1753 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1753, i32 360, i32 16, i64 128832830579856) #11, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch115", i64 -8, !dbg !55
  store atomic i64 128832830579856, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !177
  store ptr %142, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !179, !alias.scope !110, !noalias !111
  store ptr null, ptr %gc_slot_addr_01728, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %143 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01730 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %144 = extractvalue [1 x ptr] %143, 0, !dbg !50
  store ptr %144, ptr %gc_slot_addr_01730, align 16
  %ptls_load1757 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1757, i32 360, i32 16, i64 128832830579856) #11, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch121", i64 -8, !dbg !50
  store atomic i64 128832830579856, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !177
  store ptr %144, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !179, !alias.scope !110, !noalias !111
  store ptr null, ptr %gc_slot_addr_01730, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk1:                                      ; preds = %L37, %L37.us
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %vector.body1611.preheader, %L55.us662.us.us.preheader, %vector.early.exit.check, %vector.early.exit.check.0
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L37.us1021, %L37.us1021.us, %vector.early.exit.check, %vector.early.exit.check105
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %L133
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk8:                                      ; preds = %L55.preheader.split, %L55.preheader.split.us
  call void @odessy.chk(i32 8)
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
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#gemm!", align: 8, elements: !17, runtimeLang: DW_LANG_Julia, identifier: "128832746205968")
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
!86 = !DILocation(line: 86, scope: !87, inlinedAt: !88)
!87 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!88 = !DILocation(line: 754, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "checkindex;", linkageName: "checkindex", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!90 = !DILocation(line: 725, scope: !91, inlinedAt: !92)
!91 = distinct !DISubprogram(name: "checkbounds_indices;", linkageName: "checkbounds_indices", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!92 = !DILocation(line: 681, scope: !81, inlinedAt: !80)
!93 = !DILocation(line: 87, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DILocation(line: 3081, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "_sub2ind_recurse;", linkageName: "_sub2ind_recurse", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DILocation(line: 3081, scope: !96, inlinedAt: !98)
!98 = !DILocation(line: 3065, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "_sub2ind;", linkageName: "_sub2ind", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!100 = !DILocation(line: 3049, scope: !99, inlinedAt: !101)
!101 = !DILocation(line: 1377, scope: !102, inlinedAt: !103)
!102 = distinct !DISubprogram(name: "_to_linear_index;", linkageName: "_to_linear_index", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!103 = !DILocation(line: 929, scope: !84, inlinedAt: !85)
!104 = !DILocation(line: 920, scope: !105, inlinedAt: !103)
!105 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !106, file: !106, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!106 = !DIFile(filename: "essentials.jl", directory: ".")
!107 = !{!108, !108, i64 0}
!108 = !{!"jtbaa_arraybuf", !109, i64 0}
!109 = !{!"jtbaa_data", !24, i64 0}
!110 = !{!34}
!111 = !{!32, !33, !35, !29}
!112 = !DILocation(line: 699, scope: !81, inlinedAt: !113)
!113 = !DILocation(line: 928, scope: !84, inlinedAt: !114)
!114 = !DILocation(line: 21, scope: !4)
!115 = !DILocation(line: 920, scope: !105, inlinedAt: !116)
!116 = !DILocation(line: 929, scope: !84, inlinedAt: !114)
!117 = !DILocation(line: 497, scope: !118, inlinedAt: !114)
!118 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !119, file: !119, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!119 = !DIFile(filename: "float.jl", directory: ".")
!120 = !DILocation(line: 495, scope: !121, inlinedAt: !114)
!121 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !119, file: !119, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!122 = !DILocation(line: 1003, scope: !123, inlinedAt: !124)
!123 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!124 = !DILocation(line: 997, scope: !125, inlinedAt: !114)
!125 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!126 = !DILocation(line: 637, scope: !52, inlinedAt: !127)
!127 = !DILocation(line: 921, scope: !77, inlinedAt: !128)
!128 = !DILocation(line: 23, scope: !4)
!129 = !DILocation(line: 637, scope: !52, inlinedAt: !130)
!130 = !DILocation(line: 921, scope: !77, inlinedAt: !131)
!131 = !DILocation(line: 24, scope: !4)
!132 = distinct !{!132, !133, !134}
!133 = !{!"llvm.loop.isvectorized", i32 1}
!134 = !{!"llvm.loop.unroll.runtime.disable"}
!135 = distinct !{!135, !133, !134}
!136 = distinct !{!136, !134, !133}
!137 = distinct !{!137, !134, !133}
!138 = distinct !{!138, !134, !133}
!139 = !DILocation(line: 1002, scope: !123, inlinedAt: !124)
!140 = !{!141, !141, i64 0}
!141 = !{!"jtbaa_stack", !24, i64 0}
!142 = !{!33}
!143 = !{!32, !34, !35, !29}
!144 = !DILocation(line: 699, scope: !81, inlinedAt: !139)
!145 = !DILocation(line: 87, scope: !94, inlinedAt: !146)
!146 = !DILocation(line: 3081, scope: !96, inlinedAt: !147)
!147 = !DILocation(line: 3081, scope: !96, inlinedAt: !148)
!148 = !DILocation(line: 3065, scope: !99, inlinedAt: !149)
!149 = !DILocation(line: 3049, scope: !99, inlinedAt: !150)
!150 = !DILocation(line: 1377, scope: !102, inlinedAt: !116)
!151 = !{!34, !152}
!152 = distinct !{!152, !153}
!153 = distinct !{!153, !"LVerDomain"}
!154 = !{!34, !155}
!155 = distinct !{!155, !153}
!156 = !DILocation(line: 87, scope: !94, inlinedAt: !157)
!157 = !DILocation(line: 3081, scope: !96, inlinedAt: !158)
!158 = !DILocation(line: 3081, scope: !96, inlinedAt: !159)
!159 = !DILocation(line: 3065, scope: !99, inlinedAt: !160)
!160 = !DILocation(line: 3049, scope: !99, inlinedAt: !161)
!161 = !DILocation(line: 1377, scope: !102, inlinedAt: !122)
!162 = !{!34, !163}
!163 = distinct !{!163, !153}
!164 = !{!32, !33, !35, !29, !152, !155}
!165 = distinct !{!165, !166, !133, !134}
!166 = !{!"llvm.loop.peeled.count", i32 1}
!167 = !DILocation(line: 86, scope: !87, inlinedAt: !168)
!168 = !DILocation(line: 754, scope: !89, inlinedAt: !169)
!169 = !DILocation(line: 725, scope: !91, inlinedAt: !170)
!170 = !DILocation(line: 681, scope: !81, inlinedAt: !112)
!171 = !DILocation(line: 519, scope: !69, inlinedAt: !168)
!172 = !DILocation(line: 637, scope: !52, inlinedAt: !173)
!173 = !DILocation(line: 921, scope: !77, inlinedAt: !174)
!174 = !DILocation(line: 22, scope: !4)
!175 = distinct !{!175, !166, !133}
!176 = !DILocation(line: 25, scope: !4)
!177 = !{!178, !178, i64 0}
!178 = !{!"jtbaa_tag", !109, i64 0}
!179 = !{!180, !180, i64 0}
!180 = !{!"jtbaa_immut", !181, i64 0}
!181 = !{!"jtbaa_value", !109, i64 0}
