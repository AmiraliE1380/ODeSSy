; ModuleID = 'results/static/guard_competitors/Julia_jl_gemm_base/irce.ll'
source_filename = "gemm!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#152.jit" = private alias ptr, inttoptr (i64 4573278032 to ptr)
@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4573278160 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4573278288 to ptr)

define noundef nonnull ptr @"japi1_gemm!_145"(ptr readnone captures(none) %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  %stackargs = alloca ptr, align 8
  store volatile ptr %"args::Any[]", ptr %stackargs, align 8
  %"new::Tuple56" = alloca [2 x i64], align 8
  %"new::Tuple75" = alloca [2 x i64], align 8
  %pgcstack = tail call ptr inttoptr (i64 4298374940 to ptr)(i64 4298374976) #9
  store i64 4, ptr %gcframe1, align 16, !tbaa !22
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !22
  store ptr %gcframe1, ptr %pgcstack, align 8
  %0 = load ptr, ptr %"args::Any[]", align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %0, !18, !DIExpression(), !38)
  %1 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %2, !20, !DIExpression(), !38)
  %3 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %4, !21, !DIExpression(), !38)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
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
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %value_phi16, i64 %.size2.sroa.1.0.copyload)
  %.not163.not.peel = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1
  br label %L37

L37.us1021.preheader:                             ; preds = %L37.preheader.split
  %11 = add nsw i64 %value_phi16, -1
  %umin1608 = call i64 @llvm.umin.i64(i64 %.size2.sroa.1.0.copyload, i64 %11)
  %umin1608.fr = freeze i64 %umin1608
  %min.iters.check1611 = icmp ult i64 %umin1608.fr, 16
  br i1 %min.iters.check1611, label %L37.us1021.us.preheader, label %L37.us1021.preheader222

L37.us1021.preheader222:                          ; preds = %L37.us1021.preheader
  %12 = add i64 %umin1608.fr, 1
  %n.mod.vf1613 = and i64 %12, 15
  %13 = icmp eq i64 %n.mod.vf1613, 0
  %14 = select i1 %13, i64 16, i64 %n.mod.vf1613
  %n.vec1614 = sub i64 %12, %14
  %umax = call i64 @llvm.umax.i64(i64 %.size2.sroa.1.0.copyload, i64 %n.vec1614)
  %15 = add i64 %14, %umax
  %16 = add nuw i64 %14, %value_phi16
  %17 = sub i64 %umin1608.fr, %15
  %reass.sub = sub i64 %umin1608.fr, %16
  %18 = add i64 %reass.sub, 1
  %.not340.not = icmp ult i64 %17, %18
  br label %L37.us1021

L37.us1021.us.preheader:                          ; preds = %L37.us1021.preheader
  %.not341 = icmp eq i64 %.size2.sroa.1.0.copyload, %umin1608.fr
  %19 = icmp eq i64 %11, %umin1608.fr
  br label %L37.us1021.us

L37.us1021.us:                                    ; preds = %L37.us1021.us.preheader, %L322.loopexit.split.us.us.us
  %value_phi13.us1030.us = phi i64 [ %22, %L322.loopexit.split.us.us.us ], [ 1, %L37.us1021.us.preheader ]
  %20 = add nsw i64 %value_phi13.us1030.us, -1
  %21 = icmp uge i64 %20, %.size.sroa.3.0.copyload
  %.fr578.us.us = freeze i1 %21
  br i1 %.fr578.us.us, label %odessy.chk3, label %L55.us662.us.us.preheader

L55.us662.us.us.preheader:                        ; preds = %L37.us1021.us
  br i1 %.not341, label %odessy.chk2, label %L55.us662.us.us.preheader.split, !dbg !80

L55.us662.us.us.preheader.split:                  ; preds = %L55.us662.us.us.preheader
  br i1 %19, label %L322.loopexit.split.us.us.us, label %L55.us662.us.us, !dbg !86, !llvm.loop !87

L55.us662.us.us:                                  ; preds = %L55.us662.us.us.preheader.split, %L55.us662.us.us
  br label %L55.us662.us.us, !dbg !86

L322.loopexit.split.us.us.us:                     ; preds = %L55.us662.us.us.preheader.split
  %.not165.not.us1040.us = icmp eq i64 %value_phi13.us1030.us, %value_phi, !dbg !90
  %22 = add nuw i64 %value_phi13.us1030.us, 1, !dbg !91
  br i1 %.not165.not.us1040.us, label %L333, label %L37.us1021.us, !dbg !92

L37.us1021:                                       ; preds = %L37.us1021.preheader222, %L322.loopexit.split.us.us
  %value_phi13.us1030 = phi i64 [ %25, %L322.loopexit.split.us.us ], [ 1, %L37.us1021.preheader222 ]
  %23 = add nsw i64 %value_phi13.us1030, -1
  %24 = icmp uge i64 %23, %.size.sroa.3.0.copyload
  %.fr578.us = freeze i1 %24
  br i1 %.fr578.us, label %odessy.chk3, label %vector.body1617.preheader

vector.body1617.preheader:                        ; preds = %L37.us1021
  br i1 %.not340.not, label %L322.loopexit.split.us.us, label %odessy.chk2, !dbg !80

L322.loopexit.split.us.us:                        ; preds = %vector.body1617.preheader
  %.not165.not.us1040 = icmp eq i64 %value_phi13.us1030, %value_phi, !dbg !90
  %25 = add nuw i64 %value_phi13.us1030, 1, !dbg !91
  br i1 %.not165.not.us1040, label %L333, label %L37.us1021, !dbg !92

L37:                                              ; preds = %L322.loopexit.split, %L37.preheader1455
  %indvar = phi i64 [ 0, %L37.preheader1455 ], [ %indvar.next, %L322.loopexit.split ]
  %value_phi13 = phi i64 [ 1, %L37.preheader1455 ], [ %113, %L322.loopexit.split ]
  %26 = shl i64 %indvar, 3
  %27 = add nsw i64 %value_phi13, -1
  %28 = icmp uge i64 %27, %.size.sroa.3.0.copyload
  %29 = add nuw i64 %value_phi13, 2305843009213693951
  %30 = mul i64 %29, %.size2.sroa.1.0.copyload
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %.size39.sroa.0.0.copyload.fr = freeze i64 %.size39.sroa.0.0.copyload
  %31 = mul i64 %.size39.sroa.0.0.copyload.fr, %29
  %.fr578 = freeze i1 %28
  br i1 %.fr578, label %odessy.chk1, label %L55.preheader.split

L55.preheader.split:                              ; preds = %L37
  %.size39.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %32 = icmp uge i64 %27, %.size39.sroa.2.0.copyload
  %.fr = freeze i1 %32
  br i1 %.fr, label %odessy.chk8, label %L55.preheader

L55.preheader:                                    ; preds = %L55.preheader.split
  %33 = add i64 %.size39.sroa.0.0.copyload.fr, -1, !dbg !80
  %34 = mul i64 %.size39.sroa.0.0.copyload.fr, %26, !dbg !80
  %35 = icmp eq i64 %.size39.sroa.0.0.copyload.fr, 0
  %36 = shl i64 %31, 3
  br i1 %35, label %L55.us, label %L55

L55.us:                                           ; preds = %L55.preheader
  %.size58.sroa.2.0.copyload.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %.size58.sroa.2.0.copyload.us.fr = freeze i64 %.size58.sroa.2.0.copyload.us
  %37 = icmp eq i64 %.size58.sroa.2.0.copyload.us.fr, 0
  br i1 %37, label %odessy.chk7, label %odessy.chk5

L55:                                              ; preds = %L55.preheader, %L311.loopexit
  %indvar1573 = phi i64 [ %indvar.next1574, %L311.loopexit ], [ 0, %L55.preheader ]
  %value_phi20 = phi i64 [ %111, %L311.loopexit ], [ 1, %L55.preheader ]
  %38 = shl i64 %indvar1573, 3, !dbg !93
  %39 = add nsw i64 %value_phi20, -1, !dbg !93
  %40 = add i64 %value_phi20, %30, !dbg !100
  %memoryref_offset = shl i64 %40, 3, !dbg !111
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !111
  %41 = load double, ptr %gep470, align 8, !dbg !111, !tbaa !114, !alias.scope !117, !noalias !118
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !119
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !119
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %42 = icmp uge i64 %39, %.size58.sroa.2.0.copyload
  %43 = add nuw i64 %value_phi20, 2305843009213693951
  %44 = mul i64 %.size58.sroa.0.0.copyload.fr, %43
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !119
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %45 = mul i64 %.size77.sroa.0.0.copyload, %29
  %.fr268 = freeze i1 %42
  br i1 %.fr268, label %L220, label %L133.preheader.split.split

L133.preheader.split.split:                       ; preds = %L55
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %46 = icmp uge i64 %27, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %46
  br i1 %.fr382, label %L163.us334, label %L133.preheader.split.split.split

L163.us334:                                       ; preds = %L133.preheader.split.split, %L133.preheader.split.split.postloop
  %.size58.sroa.0.0.copyload.fr.lcssa118 = phi i64 [ %.size58.sroa.0.0.copyload.fr.postloop, %L133.preheader.split.split.postloop ], [ %.size58.sroa.0.0.copyload.fr, %L133.preheader.split.split ]
  %47 = icmp eq i64 %.size58.sroa.0.0.copyload.fr.lcssa118, 0, !dbg !122
  br i1 %47, label %odessy.chk11, label %L282, !dbg !119

L133.preheader.split.split.split:                 ; preds = %L133.preheader.split.split
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %36, !dbg !126
  %48 = load double, ptr %gep.peel, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %.not1444.not = icmp eq i64 %.size58.sroa.0.0.copyload.fr, 0, !dbg !122
  br i1 %.not1444.not, label %odessy.chk10, label %L223.peel, !dbg !119

L223.peel:                                        ; preds = %L133.preheader.split.split.split
  %.not1445.not = icmp eq i64 %.size77.sroa.0.0.copyload, 0, !dbg !128
  br i1 %.not1445.not, label %odessy.chk13, label %L285.peel, !dbg !132

L285.peel:                                        ; preds = %L223.peel
  %49 = shl i64 %44, 3, !dbg !126
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %49, !dbg !126
  %50 = load double, ptr %gep167.peel, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %51 = fmul double %41, %50, !dbg !137
  %52 = fadd double %48, %51, !dbg !140
  %53 = shl i64 %45, 3, !dbg !142
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %53, !dbg !142
  store double %52, ptr %gep169.peel, align 8, !dbg !142, !tbaa !114, !alias.scope !117, !noalias !118
  br i1 %.not163.not.peel, label %L311.loopexit, label %L133.preheader, !dbg !143

L133.preheader:                                   ; preds = %L285.peel
  %54 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !119
  %umin1598 = call i64 @llvm.umin.i64(i64 %54, i64 %10), !dbg !119
  %55 = freeze i64 %umin1598, !dbg !119
  %56 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !119
  %umin1599 = call i64 @llvm.umin.i64(i64 %55, i64 %56), !dbg !119
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %33), !dbg !119
  %57 = add nuw i64 %umin1600, 1, !dbg !119
  %min.iters.check = icmp ult i64 %umin1600, 20, !dbg !119
  br i1 %min.iters.check, label %L133.preheader484, label %vector.scevcheck, !dbg !119

vector.scevcheck:                                 ; preds = %L133.preheader
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !119
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %34, !dbg !119
  %mul.result = shl i64 %umin1600, 3, !dbg !119
  %58 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !119
  %59 = icmp ult ptr %58, %scevgep1566, !dbg !119
  %60 = mul i64 %.size77.sroa.0.0.copyload, %26, !dbg !119
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %60, !dbg !119
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !119
  %61 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !119
  %62 = icmp ult ptr %61, %scevgep1568, !dbg !119
  %63 = or i1 %mul.overflow1571, %62, !dbg !119
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !119
  %64 = mul i64 %.size58.sroa.0.0.copyload.fr, %38, !dbg !119
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %64, !dbg !119
  %65 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !119
  %66 = icmp ult ptr %65, %scevgep1575, !dbg !119
  %67 = or i1 %59, %63, !dbg !119
  %68 = or i1 %66, %67, !dbg !119
  br i1 %68, label %L133.preheader484, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !119
  %69 = getelementptr i8, ptr %scevgep1581, i64 %60, !dbg !119
  %scevgep1585 = getelementptr i8, ptr %69, i64 %mul.result, !dbg !119
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %34, !dbg !119
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !119
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !119
  %70 = getelementptr i8, ptr %scevgep1593, i64 %64, !dbg !119
  %scevgep1594 = getelementptr i8, ptr %70, i64 %mul.result, !dbg !119
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !119
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !119
  %found.conflict = and i1 %bound0, %bound1, !dbg !119
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !119
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !119
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !119
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !119
  br i1 %conflict.rdx, label %L133.preheader484, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %57, 7, !dbg !119
  %71 = icmp eq i64 %n.mod.vf, 0, !dbg !119
  %72 = select i1 %71, i64 8, i64 %n.mod.vf, !dbg !119
  %n.vec = sub nuw nsw i64 %57, %72, !dbg !119
  %broadcast.splatinsert = insertelement <2 x double> poison, double %41, i64 0, !dbg !119
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !119
  br label %vector.body, !dbg !119

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !119
  %73 = add i64 %offset.idx, %31, !dbg !144
  %74 = shl i64 %73, 3, !dbg !126
  %75 = getelementptr i8, ptr %invariant.gep, i64 %74, !dbg !126
  %76 = getelementptr i8, ptr %75, i64 16, !dbg !126
  %77 = getelementptr i8, ptr %75, i64 32, !dbg !126
  %78 = getelementptr i8, ptr %75, i64 48, !dbg !126
  %wide.load = load <2 x double>, ptr %75, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %wide.load1601 = load <2 x double>, ptr %76, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %wide.load1602 = load <2 x double>, ptr %77, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %wide.load1603 = load <2 x double>, ptr %78, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %79 = add i64 %offset.idx, %44, !dbg !144
  %80 = shl i64 %79, 3, !dbg !126
  %81 = getelementptr i8, ptr %invariant.gep166, i64 %80, !dbg !126
  %82 = getelementptr i8, ptr %81, i64 16, !dbg !126
  %83 = getelementptr i8, ptr %81, i64 32, !dbg !126
  %84 = getelementptr i8, ptr %81, i64 48, !dbg !126
  %wide.load1604 = load <2 x double>, ptr %81, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %wide.load1605 = load <2 x double>, ptr %82, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %wide.load1606 = load <2 x double>, ptr %83, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %wide.load1607 = load <2 x double>, ptr %84, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %85 = fmul <2 x double> %broadcast.splat, %wide.load1604, !dbg !137
  %86 = fmul <2 x double> %broadcast.splat, %wide.load1605, !dbg !137
  %87 = fmul <2 x double> %broadcast.splat, %wide.load1606, !dbg !137
  %88 = fmul <2 x double> %broadcast.splat, %wide.load1607, !dbg !137
  %89 = fadd <2 x double> %wide.load, %85, !dbg !140
  %90 = fadd <2 x double> %wide.load1601, %86, !dbg !140
  %91 = fadd <2 x double> %wide.load1602, %87, !dbg !140
  %92 = fadd <2 x double> %wide.load1603, %88, !dbg !140
  %93 = add i64 %offset.idx, %45, !dbg !155
  %94 = shl i64 %93, 3, !dbg !142
  %95 = getelementptr i8, ptr %invariant.gep, i64 %94, !dbg !142
  %96 = getelementptr i8, ptr %95, i64 16, !dbg !142
  %97 = getelementptr i8, ptr %95, i64 32, !dbg !142
  %98 = getelementptr i8, ptr %95, i64 48, !dbg !142
  store <2 x double> %89, ptr %95, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  store <2 x double> %90, ptr %96, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  store <2 x double> %91, ptr %97, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  store <2 x double> %92, ptr %98, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  %index.next = add nuw i64 %index, 8
  %99 = icmp eq i64 %index.next, %n.vec
  br i1 %99, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !164

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 2, !dbg !119
  br label %L133.preheader484, !dbg !119

L133.preheader484:                                ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L133.preheader
  %value_phi35.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 2, %vector.memcheck ], [ 2, %vector.scevcheck ], [ 2, %L133.preheader ]
  br label %L133, !dbg !119

L133:                                             ; preds = %L133.preheader484, %L285
  %value_phi35 = phi i64 [ %110, %L285 ], [ %value_phi35.ph, %L133.preheader484 ]
  %100 = add i64 %value_phi35, -1, !dbg !166
  %.not1446 = icmp ult i64 %100, %.size39.sroa.0.0.copyload.fr, !dbg !122
  br i1 %.not1446, label %L163, label %odessy.chk4, !dbg !119

L163:                                             ; preds = %L133
  %101 = add i64 %value_phi35, %31, !dbg !144
  %memoryref_offset49 = shl i64 %101, 3, !dbg !126
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !126
  %102 = load double, ptr %gep, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %.not1447 = icmp ult i64 %100, %.size58.sroa.0.0.copyload.fr, !dbg !122
  br i1 %.not1447, label %L223, label %odessy.chk9, !dbg !119

L220:                                             ; preds = %L55, %L85.postloop
  %value_phi20.lcssa2 = phi i64 [ %value_phi20.postloop, %L85.postloop ], [ %value_phi20, %L55 ]
  %103 = getelementptr inbounds nuw i8, ptr %"new::Tuple56", i64 8
  store i64 1, ptr %"new::Tuple56", align 8, !dbg !120, !tbaa !167, !alias.scope !169, !noalias !170
  store i64 %value_phi20.lcssa2, ptr %103, align 8, !dbg !120, !tbaa !167, !alias.scope !169, !noalias !170
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple56") #3, !dbg !119
  unreachable, !dbg !119

L223:                                             ; preds = %L163
  %.not1448 = icmp ult i64 %100, %.size77.sroa.0.0.copyload, !dbg !128
  br i1 %.not1448, label %L285, label %odessy.chk12, !dbg !132

L282:                                             ; preds = %L163.us334
  %104 = getelementptr inbounds nuw i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 8, !dbg !133, !tbaa !167, !alias.scope !169, !noalias !170
  store i64 %value_phi13, ptr %104, align 8, !dbg !133, !tbaa !167, !alias.scope !169, !noalias !170
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #3, !dbg !132
  unreachable, !dbg !132

L285:                                             ; preds = %L223
  %105 = add i64 %value_phi35, %44, !dbg !144
  %memoryref_offset68 = shl i64 %105, 3, !dbg !126
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !126
  %106 = load double, ptr %gep167, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %107 = fmul double %41, %106, !dbg !137
  %108 = fadd double %102, %107, !dbg !140
  %109 = add i64 %value_phi35, %45, !dbg !155
  %memoryref_offset85 = shl i64 %109, 3, !dbg !142
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !142
  store double %108, ptr %gep169, align 8, !dbg !142, !tbaa !114, !alias.scope !117, !noalias !118
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !171
  %110 = add i64 %value_phi35, 1, !dbg !172
  br i1 %.not163.not, label %L311.loopexit, label %L133, !dbg !143, !llvm.loop !173

L311.loopexit:                                    ; preds = %L285, %L285.peel
  %111 = add nuw i64 %value_phi20, 1, !dbg !174
  %indvar.next1574 = add nuw nsw i64 %indvar1573, 1, !dbg !86
  %exitcond.not = icmp eq i64 %indvar.next1574, %exit.mainloop.at, !dbg !86
  br i1 %exitcond.not, label %main.exit.selector, label %L55, !dbg !86

main.exit.selector:                               ; preds = %L311.loopexit
  %112 = icmp ult i64 %value_phi20, %value_phi16, !dbg !86
  br i1 %112, label %L55.postloop, label %L322.loopexit.split, !dbg !86

L322.loopexit.split:                              ; preds = %L311.loopexit.postloop, %main.exit.selector
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !90
  %113 = add nuw i64 %value_phi13, 1, !dbg !91
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !92
  br i1 %.not165.not, label %L333, label %L37, !dbg !92

L333:                                             ; preds = %L322.loopexit.split, %L322.loopexit.split.us.us, %L322.loopexit.split.us.us.us, %L37.preheader, %L20
  %frame.prev1765 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1765, ptr %pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !175

L334:                                             ; preds = %L15
  %114 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %115 = extractvalue [1 x ptr] %114, 0, !dbg !58
  store ptr %115, ptr %gc_slot_addr_0, align 16
  %ptls_load1755 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1755, i32 424, i32 16, i64 4751484224) #10, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch", i64 -8, !dbg !58
  store atomic i64 4751484224, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !176
  store ptr %115, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !178, !alias.scope !117, !noalias !118
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %116 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01734 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %117 = extractvalue [1 x ptr] %116, 0, !dbg !55
  store ptr %117, ptr %gc_slot_addr_01734, align 16
  %ptls_load1759 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1759, i32 424, i32 16, i64 4751484224) #10, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch115", i64 -8, !dbg !55
  store atomic i64 4751484224, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !176
  store ptr %117, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !178, !alias.scope !117, !noalias !118
  store ptr null, ptr %gc_slot_addr_01734, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %118 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01736 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %119 = extractvalue [1 x ptr] %118, 0, !dbg !50
  store ptr %119, ptr %gc_slot_addr_01736, align 16
  %ptls_load1763 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1763, i32 424, i32 16, i64 4751484224) #10, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch121", i64 -8, !dbg !50
  store atomic i64 4751484224, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !176
  store ptr %119, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !178, !alias.scope !117, !noalias !118
  store ptr null, ptr %gc_slot_addr_01736, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk:                                       ; preds = %L55.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L37
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %vector.body1617.preheader, %L55.us662.us.us.preheader
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L37.us1021, %L37.us1021.us
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %L133, %L133.postloop
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L55.us
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk7:                                      ; preds = %L55.us
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %L55.preheader.split
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L163, %L163.postloop
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L133.preheader.split.split.split, %L163.peel.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %L163.us334
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %L223, %L223.postloop
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %L223.peel, %L223.peel.postloop
  call void @odessy.chk(i32 13)
  unreachable

L55.postloop:                                     ; preds = %main.exit.selector, %L311.loopexit.postloop
  %indvar1573.postloop = phi i64 [ %indvar.next1574.postloop, %L311.loopexit.postloop ], [ %exit.mainloop.at, %main.exit.selector ]
  %value_phi20.postloop = phi i64 [ %190, %L311.loopexit.postloop ], [ %111, %main.exit.selector ]
  %120 = shl i64 %indvar1573.postloop, 3, !dbg !93
  %121 = add nsw i64 %value_phi20.postloop, -1, !dbg !93
  %.not1442.postloop = icmp ult i64 %121, %.size2.sroa.1.0.copyload, !dbg !181
  br i1 %.not1442.postloop, label %L85.postloop, label %odessy.chk, !dbg !80

L85.postloop:                                     ; preds = %L55.postloop
  %122 = add i64 %value_phi20.postloop, %30, !dbg !100
  %memoryref_offset.postloop = shl i64 %122, 3, !dbg !111
  %gep470.postloop = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset.postloop, !dbg !111
  %123 = load double, ptr %gep470.postloop, align 8, !dbg !111, !tbaa !114, !alias.scope !117, !noalias !118
  %memoryref_data47.postloop = load ptr, ptr %0, align 8
  %invariant.gep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 -8, !dbg !119
  %.size58.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.postloop = freeze i64 %.size58.sroa.0.0.copyload.postloop, !dbg !119
  %.size58.sroa.2.0.copyload.postloop = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %124 = icmp uge i64 %121, %.size58.sroa.2.0.copyload.postloop
  %125 = add nuw i64 %value_phi20.postloop, 2305843009213693951
  %126 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %125
  %memoryref_data66.postloop = load ptr, ptr %2, align 8
  %invariant.gep166.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 -8, !dbg !119
  %.size77.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr, align 8
  %127 = mul i64 %.size77.sroa.0.0.copyload.postloop, %29
  %.fr268.postloop = freeze i1 %124
  br i1 %.fr268.postloop, label %L220, label %L133.preheader.split.split.postloop

L133.preheader.split.split.postloop:              ; preds = %L85.postloop
  %.size77.sroa.2.0.copyload.postloop = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %128 = icmp uge i64 %27, %.size77.sroa.2.0.copyload.postloop
  %.fr382.postloop = freeze i1 %128
  br i1 %.fr382.postloop, label %L163.us334, label %L163.peel.postloop

L163.peel.postloop:                               ; preds = %L133.preheader.split.split.postloop
  %gep.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %36, !dbg !126
  %129 = load double, ptr %gep.peel.postloop, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %.not1444.postloop.not = icmp eq i64 %.size58.sroa.0.0.copyload.fr.postloop, 0, !dbg !122
  br i1 %.not1444.postloop.not, label %odessy.chk10, label %L223.peel.postloop, !dbg !119

L223.peel.postloop:                               ; preds = %L163.peel.postloop
  %.not1445.postloop.not = icmp eq i64 %.size77.sroa.0.0.copyload.postloop, 0, !dbg !128
  br i1 %.not1445.postloop.not, label %odessy.chk13, label %L285.peel.postloop, !dbg !132

L285.peel.postloop:                               ; preds = %L223.peel.postloop
  %130 = shl i64 %126, 3, !dbg !126
  %gep167.peel.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 %130, !dbg !126
  %131 = load double, ptr %gep167.peel.postloop, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %132 = fmul double %123, %131, !dbg !137
  %133 = fadd double %129, %132, !dbg !140
  %134 = shl i64 %127, 3, !dbg !142
  %gep169.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %134, !dbg !142
  store double %133, ptr %gep169.peel.postloop, align 8, !dbg !142, !tbaa !114, !alias.scope !117, !noalias !118
  br i1 %.not163.not.peel, label %L311.loopexit.postloop, label %L133.preheader.postloop, !dbg !143

L133.preheader.postloop:                          ; preds = %L285.peel.postloop
  %135 = add i64 %.size77.sroa.0.0.copyload.postloop, -1, !dbg !119
  %umin1598.postloop = call i64 @llvm.umin.i64(i64 %135, i64 %10), !dbg !119
  %136 = freeze i64 %umin1598.postloop, !dbg !119
  %137 = add i64 %.size58.sroa.0.0.copyload.fr.postloop, -1, !dbg !119
  %umin1599.postloop = call i64 @llvm.umin.i64(i64 %136, i64 %137), !dbg !119
  %umin1600.postloop = call i64 @llvm.umin.i64(i64 %umin1599.postloop, i64 %33), !dbg !119
  %138 = add nuw i64 %umin1600.postloop, 1, !dbg !119
  %min.iters.check.postloop = icmp ult i64 %umin1600.postloop, 20, !dbg !119
  br i1 %min.iters.check.postloop, label %L133.postloop.preheader, label %vector.scevcheck.postloop, !dbg !119

vector.scevcheck.postloop:                        ; preds = %L133.preheader.postloop
  %scevgep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 8, !dbg !119
  %scevgep1566.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %34, !dbg !119
  %mul.result.postloop = shl i64 %umin1600.postloop, 3, !dbg !119
  %139 = getelementptr i8, ptr %scevgep1566.postloop, i64 %mul.result.postloop, !dbg !119
  %140 = icmp ult ptr %139, %scevgep1566.postloop, !dbg !119
  %141 = mul i64 %.size77.sroa.0.0.copyload.postloop, %26, !dbg !119
  %scevgep1568.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %141, !dbg !119
  %mul.overflow1571.postloop = icmp ugt i64 %umin1600.postloop, 2305843009213693951, !dbg !119
  %142 = getelementptr i8, ptr %scevgep1568.postloop, i64 %mul.result.postloop, !dbg !119
  %143 = icmp ult ptr %142, %scevgep1568.postloop, !dbg !119
  %144 = or i1 %mul.overflow1571.postloop, %143, !dbg !119
  %scevgep1572.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 8, !dbg !119
  %145 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %120, !dbg !119
  %scevgep1575.postloop = getelementptr i8, ptr %scevgep1572.postloop, i64 %145, !dbg !119
  %146 = getelementptr i8, ptr %scevgep1575.postloop, i64 %mul.result.postloop, !dbg !119
  %147 = icmp ult ptr %146, %scevgep1575.postloop, !dbg !119
  %148 = or i1 %140, %144, !dbg !119
  %149 = or i1 %147, %148, !dbg !119
  br i1 %149, label %L133.postloop.preheader, label %vector.memcheck.postloop

vector.memcheck.postloop:                         ; preds = %vector.scevcheck.postloop
  %scevgep1581.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 16, !dbg !119
  %150 = getelementptr i8, ptr %scevgep1581.postloop, i64 %141, !dbg !119
  %scevgep1585.postloop = getelementptr i8, ptr %150, i64 %mul.result.postloop, !dbg !119
  %scevgep1589.postloop = getelementptr i8, ptr %scevgep1581.postloop, i64 %34, !dbg !119
  %scevgep1590.postloop = getelementptr i8, ptr %scevgep1589.postloop, i64 %mul.result.postloop, !dbg !119
  %scevgep1593.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 16, !dbg !119
  %151 = getelementptr i8, ptr %scevgep1593.postloop, i64 %145, !dbg !119
  %scevgep1594.postloop = getelementptr i8, ptr %151, i64 %mul.result.postloop, !dbg !119
  %bound0.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1590.postloop, !dbg !119
  %bound1.postloop = icmp ult ptr %scevgep1566.postloop, %scevgep1585.postloop, !dbg !119
  %found.conflict.postloop = and i1 %bound0.postloop, %bound1.postloop, !dbg !119
  %bound01595.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1594.postloop, !dbg !119
  %bound11596.postloop = icmp ult ptr %scevgep1575.postloop, %scevgep1585.postloop, !dbg !119
  %found.conflict1597.postloop = and i1 %bound01595.postloop, %bound11596.postloop, !dbg !119
  %conflict.rdx.postloop = or i1 %found.conflict.postloop, %found.conflict1597.postloop, !dbg !119
  br i1 %conflict.rdx.postloop, label %L133.postloop.preheader, label %vector.ph.postloop

vector.ph.postloop:                               ; preds = %vector.memcheck.postloop
  %n.mod.vf.postloop = and i64 %138, 7, !dbg !119
  %152 = icmp eq i64 %n.mod.vf.postloop, 0, !dbg !119
  %153 = select i1 %152, i64 8, i64 %n.mod.vf.postloop, !dbg !119
  %n.vec.postloop = sub nuw nsw i64 %138, %153, !dbg !119
  %broadcast.splatinsert.postloop = insertelement <2 x double> poison, double %123, i64 0, !dbg !119
  %broadcast.splat.postloop = shufflevector <2 x double> %broadcast.splatinsert.postloop, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !119
  br label %vector.body.postloop, !dbg !119

vector.body.postloop:                             ; preds = %vector.body.postloop, %vector.ph.postloop
  %index.postloop = phi i64 [ 0, %vector.ph.postloop ], [ %index.next.postloop, %vector.body.postloop ]
  %offset.idx.postloop = or disjoint i64 %index.postloop, 2, !dbg !119
  %154 = add i64 %offset.idx.postloop, %31, !dbg !144
  %155 = shl i64 %154, 3, !dbg !126
  %156 = getelementptr i8, ptr %invariant.gep.postloop, i64 %155, !dbg !126
  %157 = getelementptr i8, ptr %156, i64 16, !dbg !126
  %158 = getelementptr i8, ptr %156, i64 32, !dbg !126
  %159 = getelementptr i8, ptr %156, i64 48, !dbg !126
  %wide.load.postloop = load <2 x double>, ptr %156, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %wide.load1601.postloop = load <2 x double>, ptr %157, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %wide.load1602.postloop = load <2 x double>, ptr %158, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %wide.load1603.postloop = load <2 x double>, ptr %159, align 8, !dbg !126, !tbaa !114, !alias.scope !150, !noalias !118
  %160 = add i64 %offset.idx.postloop, %126, !dbg !144
  %161 = shl i64 %160, 3, !dbg !126
  %162 = getelementptr i8, ptr %invariant.gep166.postloop, i64 %161, !dbg !126
  %163 = getelementptr i8, ptr %162, i64 16, !dbg !126
  %164 = getelementptr i8, ptr %162, i64 32, !dbg !126
  %165 = getelementptr i8, ptr %162, i64 48, !dbg !126
  %wide.load1604.postloop = load <2 x double>, ptr %162, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %wide.load1605.postloop = load <2 x double>, ptr %163, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %wide.load1606.postloop = load <2 x double>, ptr %164, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %wide.load1607.postloop = load <2 x double>, ptr %165, align 8, !dbg !126, !tbaa !114, !alias.scope !153, !noalias !118
  %166 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1604.postloop, !dbg !137
  %167 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1605.postloop, !dbg !137
  %168 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1606.postloop, !dbg !137
  %169 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1607.postloop, !dbg !137
  %170 = fadd <2 x double> %wide.load.postloop, %166, !dbg !140
  %171 = fadd <2 x double> %wide.load1601.postloop, %167, !dbg !140
  %172 = fadd <2 x double> %wide.load1602.postloop, %168, !dbg !140
  %173 = fadd <2 x double> %wide.load1603.postloop, %169, !dbg !140
  %174 = add i64 %offset.idx.postloop, %127, !dbg !155
  %175 = shl i64 %174, 3, !dbg !142
  %176 = getelementptr i8, ptr %invariant.gep.postloop, i64 %175, !dbg !142
  %177 = getelementptr i8, ptr %176, i64 16, !dbg !142
  %178 = getelementptr i8, ptr %176, i64 32, !dbg !142
  %179 = getelementptr i8, ptr %176, i64 48, !dbg !142
  store <2 x double> %170, ptr %176, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  store <2 x double> %171, ptr %177, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  store <2 x double> %172, ptr %178, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  store <2 x double> %173, ptr %179, align 8, !dbg !142, !tbaa !114, !alias.scope !161, !noalias !163
  %index.next.postloop = add nuw i64 %index.postloop, 8
  %180 = icmp eq i64 %index.next.postloop, %n.vec.postloop
  br i1 %180, label %scalar.ph.postloop.loopexit, label %vector.body.postloop, !llvm.loop !164

scalar.ph.postloop.loopexit:                      ; preds = %vector.body.postloop
  %ind.end.postloop = add nuw nsw i64 %n.vec.postloop, 2, !dbg !119
  br label %L133.postloop.preheader, !dbg !119

L133.postloop.preheader:                          ; preds = %scalar.ph.postloop.loopexit, %vector.memcheck.postloop, %vector.scevcheck.postloop, %L133.preheader.postloop
  %value_phi35.postloop.ph = phi i64 [ %ind.end.postloop, %scalar.ph.postloop.loopexit ], [ 2, %vector.memcheck.postloop ], [ 2, %vector.scevcheck.postloop ], [ 2, %L133.preheader.postloop ]
  br label %L133.postloop, !dbg !119

L133.postloop:                                    ; preds = %L133.postloop.preheader, %L285.postloop
  %value_phi35.postloop = phi i64 [ %189, %L285.postloop ], [ %value_phi35.postloop.ph, %L133.postloop.preheader ]
  %181 = add i64 %value_phi35.postloop, -1, !dbg !166
  %.not1446.postloop = icmp ult i64 %181, %.size39.sroa.0.0.copyload.fr, !dbg !122
  br i1 %.not1446.postloop, label %L163.postloop, label %odessy.chk4, !dbg !119

L163.postloop:                                    ; preds = %L133.postloop
  %182 = add i64 %value_phi35.postloop, %31, !dbg !144
  %memoryref_offset49.postloop = shl i64 %182, 3, !dbg !126
  %gep.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset49.postloop, !dbg !126
  %183 = load double, ptr %gep.postloop, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %.not1447.postloop = icmp ult i64 %181, %.size58.sroa.0.0.copyload.fr.postloop, !dbg !122
  br i1 %.not1447.postloop, label %L223.postloop, label %odessy.chk9, !dbg !119

L223.postloop:                                    ; preds = %L163.postloop
  %.not1448.postloop = icmp ult i64 %181, %.size77.sroa.0.0.copyload.postloop, !dbg !128
  br i1 %.not1448.postloop, label %L285.postloop, label %odessy.chk12, !dbg !132

L285.postloop:                                    ; preds = %L223.postloop
  %184 = add i64 %value_phi35.postloop, %126, !dbg !144
  %memoryref_offset68.postloop = shl i64 %184, 3, !dbg !126
  %gep167.postloop = getelementptr i8, ptr %invariant.gep166.postloop, i64 %memoryref_offset68.postloop, !dbg !126
  %185 = load double, ptr %gep167.postloop, align 8, !dbg !126, !tbaa !114, !alias.scope !117, !noalias !118
  %186 = fmul double %123, %185, !dbg !137
  %187 = fadd double %183, %186, !dbg !140
  %188 = add i64 %value_phi35.postloop, %127, !dbg !155
  %memoryref_offset85.postloop = shl i64 %188, 3, !dbg !142
  %gep169.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset85.postloop, !dbg !142
  store double %187, ptr %gep169.postloop, align 8, !dbg !142, !tbaa !114, !alias.scope !117, !noalias !118
  %.not163.not.postloop = icmp eq i64 %value_phi35.postloop, %value_phi31, !dbg !171
  %189 = add i64 %value_phi35.postloop, 1, !dbg !172
  br i1 %.not163.not.postloop, label %L311.loopexit.postloop, label %L133.postloop, !dbg !143, !llvm.loop !173

L311.loopexit.postloop:                           ; preds = %L285.postloop, %L285.peel.postloop
  %.not164.not.postloop = icmp eq i64 %value_phi20.postloop, %value_phi16, !dbg !182
  %190 = add nuw i64 %value_phi20.postloop, 1, !dbg !174
  %indvar.next1574.postloop = add i64 %indvar1573.postloop, 1, !dbg !86
  br i1 %.not164.not.postloop, label %L322.loopexit.split, label %L55.postloop, !dbg !86, !llvm.loop !183, !loop_constrainer.loop.clone !17
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

attributes #0 = { "julia.fsig"="gemm!(Array{Float64, 2}, Array{Float64, 2}, Array{Float64, 2})" "probe-stack"="inline-asm" }
attributes #1 = { noreturn "julia.fsig"="throw_boundserror(Array{Float64, 2}, Tuple{Int64, Int64})" "probe-stack"="inline-asm" }
attributes #2 = { "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #3 = { noreturn }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "gemm!", linkageName: "japi1_gemm!_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !14)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/jl_gemm_base.jl", directory: ".")
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
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#gemm!", align: 8, elements: !17, runtimeLang: DW_LANG_Julia, identifier: "4573279568")
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
!86 = !DILocation(line: 23, scope: !4)
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !DILocation(line: 637, scope: !52, inlinedAt: !91)
!91 = !DILocation(line: 921, scope: !77, inlinedAt: !92)
!92 = !DILocation(line: 24, scope: !4)
!93 = !DILocation(line: 86, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DILocation(line: 754, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "checkindex;", linkageName: "checkindex", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DILocation(line: 725, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "checkbounds_indices;", linkageName: "checkbounds_indices", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!99 = !DILocation(line: 681, scope: !81, inlinedAt: !80)
!100 = !DILocation(line: 87, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!102 = !DILocation(line: 3081, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "_sub2ind_recurse;", linkageName: "_sub2ind_recurse", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DILocation(line: 3081, scope: !103, inlinedAt: !105)
!105 = !DILocation(line: 3065, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "_sub2ind;", linkageName: "_sub2ind", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!107 = !DILocation(line: 3049, scope: !106, inlinedAt: !108)
!108 = !DILocation(line: 1377, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "_to_linear_index;", linkageName: "_to_linear_index", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!110 = !DILocation(line: 929, scope: !84, inlinedAt: !85)
!111 = !DILocation(line: 920, scope: !112, inlinedAt: !110)
!112 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !113, file: !113, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!113 = !DIFile(filename: "essentials.jl", directory: ".")
!114 = !{!115, !115, i64 0}
!115 = !{!"jtbaa_arraybuf", !116, i64 0}
!116 = !{!"jtbaa_data", !24, i64 0}
!117 = !{!34}
!118 = !{!32, !33, !35, !29}
!119 = !DILocation(line: 699, scope: !81, inlinedAt: !120)
!120 = !DILocation(line: 928, scope: !84, inlinedAt: !121)
!121 = !DILocation(line: 21, scope: !4)
!122 = !DILocation(line: 519, scope: !69, inlinedAt: !123)
!123 = !DILocation(line: 754, scope: !96, inlinedAt: !124)
!124 = !DILocation(line: 725, scope: !98, inlinedAt: !125)
!125 = !DILocation(line: 681, scope: !81, inlinedAt: !119)
!126 = !DILocation(line: 920, scope: !112, inlinedAt: !127)
!127 = !DILocation(line: 929, scope: !84, inlinedAt: !121)
!128 = !DILocation(line: 519, scope: !69, inlinedAt: !129)
!129 = !DILocation(line: 754, scope: !96, inlinedAt: !130)
!130 = !DILocation(line: 725, scope: !98, inlinedAt: !131)
!131 = !DILocation(line: 681, scope: !81, inlinedAt: !132)
!132 = !DILocation(line: 699, scope: !81, inlinedAt: !133)
!133 = !DILocation(line: 1002, scope: !134, inlinedAt: !135)
!134 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!135 = !DILocation(line: 997, scope: !136, inlinedAt: !121)
!136 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!137 = !DILocation(line: 497, scope: !138, inlinedAt: !121)
!138 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !139, file: !139, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!139 = !DIFile(filename: "float.jl", directory: ".")
!140 = !DILocation(line: 495, scope: !141, inlinedAt: !121)
!141 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !139, file: !139, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!142 = !DILocation(line: 1003, scope: !134, inlinedAt: !135)
!143 = !DILocation(line: 22, scope: !4)
!144 = !DILocation(line: 87, scope: !101, inlinedAt: !145)
!145 = !DILocation(line: 3081, scope: !103, inlinedAt: !146)
!146 = !DILocation(line: 3081, scope: !103, inlinedAt: !147)
!147 = !DILocation(line: 3065, scope: !106, inlinedAt: !148)
!148 = !DILocation(line: 3049, scope: !106, inlinedAt: !149)
!149 = !DILocation(line: 1377, scope: !109, inlinedAt: !127)
!150 = !{!34, !151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!34, !154}
!154 = distinct !{!154, !152}
!155 = !DILocation(line: 87, scope: !101, inlinedAt: !156)
!156 = !DILocation(line: 3081, scope: !103, inlinedAt: !157)
!157 = !DILocation(line: 3081, scope: !103, inlinedAt: !158)
!158 = !DILocation(line: 3065, scope: !106, inlinedAt: !159)
!159 = !DILocation(line: 3049, scope: !106, inlinedAt: !160)
!160 = !DILocation(line: 1377, scope: !109, inlinedAt: !142)
!161 = !{!34, !162}
!162 = distinct !{!162, !152}
!163 = !{!32, !33, !35, !29, !151, !154}
!164 = distinct !{!164, !165, !89, !88}
!165 = !{!"llvm.loop.peeled.count", i32 1}
!166 = !DILocation(line: 86, scope: !94, inlinedAt: !123)
!167 = !{!168, !168, i64 0}
!168 = !{!"jtbaa_stack", !24, i64 0}
!169 = !{!33}
!170 = !{!32, !34, !35, !29}
!171 = !DILocation(line: 637, scope: !52, inlinedAt: !172)
!172 = !DILocation(line: 921, scope: !77, inlinedAt: !143)
!173 = distinct !{!173, !165, !89}
!174 = !DILocation(line: 921, scope: !77, inlinedAt: !86)
!175 = !DILocation(line: 25, scope: !4)
!176 = !{!177, !177, i64 0}
!177 = !{!"jtbaa_tag", !116, i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"jtbaa_immut", !180, i64 0}
!180 = !{!"jtbaa_value", !116, i64 0}
!181 = !DILocation(line: 519, scope: !69, inlinedAt: !95)
!182 = !DILocation(line: 637, scope: !52, inlinedAt: !174)
!183 = distinct !{!183, !184, !185, !186, !187}
!184 = !{!"llvm.loop.unroll.disable"}
!185 = !{!"llvm.loop.vectorize.enable", i1 false}
!186 = !{!"llvm.loop.licm_versioning.disable"}
!187 = !{!"llvm.loop.distribute.enable", i1 false}
