; ModuleID = 'results/static/guard_competitors/Julia_jl_gemm_base/tag.ll'
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
  %umin1608 = call i64 @llvm.umin.i64(i64 %.size2.sroa.1.0.copyload, i64 %36)
  %umin1608.fr = freeze i64 %umin1608
  %min.iters.check1611 = icmp ult i64 %umin1608.fr, 16
  br i1 %min.iters.check1611, label %L37.us1021.us.preheader, label %L37.us1021.preheader172

L37.us1021.preheader172:                          ; preds = %L37.us1021.preheader
  %37 = add i64 %umin1608.fr, 1
  %n.mod.vf1613 = and i64 %37, 15
  %38 = icmp eq i64 %n.mod.vf1613, 0
  %39 = select i1 %38, i64 16, i64 %n.mod.vf1613
  %n.vec1614 = sub i64 %37, %39
  %umax = call i64 @llvm.umax.i64(i64 %.size2.sroa.1.0.copyload, i64 %n.vec1614)
  %40 = add i64 %39, %umax
  %41 = add nuw i64 %39, %value_phi16
  %42 = sub i64 %umin1608.fr, %40
  %reass.sub = sub i64 %umin1608.fr, %41
  %43 = add i64 %reass.sub, 1
  %.not271.not = icmp ult i64 %42, %43
  br label %L37.us1021

L37.us1021.us.preheader:                          ; preds = %L37.us1021.preheader
  %.not272 = icmp eq i64 %.size2.sroa.1.0.copyload, %umin1608.fr
  %44 = icmp eq i64 %36, %umin1608.fr
  br label %L37.us1021.us

L37.us1021.us:                                    ; preds = %L37.us1021.us.preheader, %L322.loopexit.split.us.us.us
  %value_phi13.us1030.us = phi i64 [ %47, %L322.loopexit.split.us.us.us ], [ 1, %L37.us1021.us.preheader ]
  %45 = add nsw i64 %value_phi13.us1030.us, -1
  %46 = icmp uge i64 %45, %.size.sroa.3.0.copyload
  %.fr578.us.us = freeze i1 %46
  br i1 %.fr578.us.us, label %odessy.chk3, label %L55.us662.us.us.preheader

L55.us662.us.us.preheader:                        ; preds = %L37.us1021.us
  br i1 %.not272, label %odessy.chk2, label %L55.us662.us.us.preheader.split, !dbg !80

L55.us662.us.us.preheader.split:                  ; preds = %L55.us662.us.us.preheader
  br i1 %44, label %L322.loopexit.split.us.us.us, label %L55.us662.us.us, !dbg !139, !llvm.loop !143

L55.us662.us.us:                                  ; preds = %L55.us662.us.us.preheader.split, %L55.us662.us.us
  br label %L55.us662.us.us, !dbg !139

L322.loopexit.split.us.us.us:                     ; preds = %L55.us662.us.us.preheader.split
  %.not165.not.us1040.us = icmp eq i64 %value_phi13.us1030.us, %value_phi, !dbg !140
  %47 = add nuw i64 %value_phi13.us1030.us, 1, !dbg !141
  br i1 %.not165.not.us1040.us, label %L333, label %L37.us1021.us, !dbg !142

L37.us1021:                                       ; preds = %L37.us1021.preheader172, %L322.loopexit.split.us.us
  %value_phi13.us1030 = phi i64 [ %50, %L322.loopexit.split.us.us ], [ 1, %L37.us1021.preheader172 ]
  %48 = add nsw i64 %value_phi13.us1030, -1
  %49 = icmp uge i64 %48, %.size.sroa.3.0.copyload
  %.fr578.us = freeze i1 %49
  br i1 %.fr578.us, label %odessy.chk3, label %vector.body1617.preheader

vector.body1617.preheader:                        ; preds = %L37.us1021
  br i1 %.not271.not, label %L322.loopexit.split.us.us, label %odessy.chk2, !dbg !80

L322.loopexit.split.us.us:                        ; preds = %vector.body1617.preheader
  %.not165.not.us1040 = icmp eq i64 %value_phi13.us1030, %value_phi, !dbg !140
  %50 = add nuw i64 %value_phi13.us1030, 1, !dbg !141
  br i1 %.not165.not.us1040, label %L333, label %L37.us1021, !dbg !142

L37:                                              ; preds = %L37.preheader1455, %L322.loopexit.split.split
  %indvar = phi i64 [ %indvar.next, %L322.loopexit.split.split ], [ 0, %L37.preheader1455 ]
  %value_phi13 = phi i64 [ %138, %L322.loopexit.split.split ], [ 1, %L37.preheader1455 ]
  %51 = shl i64 %indvar, 3
  %52 = add nsw i64 %value_phi13, -1
  %53 = icmp uge i64 %52, %.size.sroa.3.0.copyload
  %54 = add nuw i64 %value_phi13, 2305843009213693951
  %55 = mul i64 %54, %.size2.sroa.1.0.copyload
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %.size39.sroa.0.0.copyload.fr = freeze i64 %.size39.sroa.0.0.copyload
  %56 = mul i64 %.size39.sroa.0.0.copyload.fr, %54
  %.fr578 = freeze i1 %53
  br i1 %.fr578, label %odessy.chk1, label %L55.preheader.split

L55.preheader.split:                              ; preds = %L37
  %.size39.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %57 = icmp uge i64 %52, %.size39.sroa.2.0.copyload
  %.fr = freeze i1 %57
  br i1 %.fr, label %odessy.chk8, label %L55.preheader

L55.preheader:                                    ; preds = %L55.preheader.split
  %58 = add i64 %.size39.sroa.0.0.copyload.fr, -1, !dbg !80
  %59 = mul i64 %.size39.sroa.0.0.copyload.fr, %51, !dbg !80
  %60 = icmp eq i64 %.size39.sroa.0.0.copyload.fr, 0
  %61 = shl i64 %56, 3
  br i1 %60, label %L85.us, label %L55

L85.us:                                           ; preds = %L55.preheader, %L55.preheader.us
  %.size77.sroa.2.0.copyload.us = phi i64 [ %.size39.sroa.2.0.copyload.us, %L55.preheader.us ], [ %.size39.sroa.2.0.copyload, %L55.preheader ]
  %.us-phi161 = phi i64 [ %12, %L55.preheader.us ], [ %52, %L55.preheader ], !dbg !80
  %.size58.sroa.2.0.copyload.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %.size58.sroa.2.0.copyload.us.fr = freeze i64 %.size58.sroa.2.0.copyload.us
  %62 = icmp eq i64 %.size58.sroa.2.0.copyload.us.fr, 0
  br i1 %62, label %odessy.chk7, label %L133.preheader.split.split.us51

L133.preheader.split.split.us51:                  ; preds = %L85.us
  %63 = icmp uge i64 %.us-phi161, %.size77.sroa.2.0.copyload.us
  %.fr382.us = freeze i1 %63
  br i1 %.fr382.us, label %odessy.chk6, label %odessy.chk5

L55:                                              ; preds = %L55.preheader, %L311.loopexit.loopexit
  %indvar1573 = phi i64 [ %indvar.next1574, %L311.loopexit.loopexit ], [ 0, %L55.preheader ]
  %value_phi20 = phi i64 [ %137, %L311.loopexit.loopexit ], [ 1, %L55.preheader ]
  %64 = shl i64 %indvar1573, 3, !dbg !92
  %exitcond.not = icmp eq i64 %indvar1573, %.size2.sroa.1.0.copyload, !dbg !86
  br i1 %exitcond.not, label %odessy.chk, label %L85, !dbg !80

L85:                                              ; preds = %L55
  %65 = add nsw i64 %value_phi20, -1, !dbg !92
  %66 = add i64 %value_phi20, %55, !dbg !94
  %memoryref_offset = shl i64 %66, 3, !dbg !105
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !105
  %67 = load double, ptr %gep470, align 8, !dbg !105, !tbaa !108, !alias.scope !111, !noalias !112
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !113
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !113
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %68 = icmp uge i64 %65, %.size58.sroa.2.0.copyload
  %69 = add nuw i64 %value_phi20, 2305843009213693951
  %70 = mul i64 %.size58.sroa.0.0.copyload.fr, %69
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !113
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %71 = mul i64 %.size77.sroa.0.0.copyload, %54
  %.fr268 = freeze i1 %68
  br i1 %.fr268, label %L220, label %L133.preheader.split.split

L133.preheader.split.split:                       ; preds = %L85
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %72 = icmp uge i64 %52, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %72
  br i1 %.fr382, label %L163.us334, label %L133.preheader.split.split.split

L163.us334:                                       ; preds = %L133.preheader.split.split, %L133.preheader.split.split.us143.us
  %.us-phi54.ph = phi i64 [ %value_phi13.us, %L133.preheader.split.split.us143.us ], [ %value_phi13, %L133.preheader.split.split ]
  %.us-phi56.ph = phi i64 [ %.size58.sroa.0.0.copyload.fr.us137.us, %L133.preheader.split.split.us143.us ], [ %.size58.sroa.0.0.copyload.fr, %L133.preheader.split.split ]
  %73 = icmp eq i64 %.us-phi56.ph, 0, !dbg !118
  br i1 %73, label %odessy.chk11, label %L282, !dbg !113

L133.preheader.split.split.split:                 ; preds = %L133.preheader.split.split
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %61, !dbg !116
  %74 = load double, ptr %gep.peel, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %.not1444 = icmp eq i64 %.size58.sroa.0.0.copyload.fr, 0, !dbg !118
  br i1 %.not1444, label %odessy.chk10, label %L223.peel, !dbg !113

L223.peel:                                        ; preds = %L133.preheader.split.split.split
  %.not1445 = icmp eq i64 %.size77.sroa.0.0.copyload, 0, !dbg !122
  br i1 %.not1445, label %odessy.chk13, label %L285.peel, !dbg !126

L285.peel:                                        ; preds = %L223.peel
  %75 = shl i64 %70, 3, !dbg !116
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %75, !dbg !116
  %76 = load double, ptr %gep167.peel, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %77 = fmul double %67, %76, !dbg !131
  %78 = fadd double %74, %77, !dbg !134
  %79 = shl i64 %71, 3, !dbg !136
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %79, !dbg !136
  store double %78, ptr %gep169.peel, align 8, !dbg !136, !tbaa !108, !alias.scope !111, !noalias !112
  %80 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !113
  %umin1598 = call i64 @llvm.umin.i64(i64 %80, i64 %10), !dbg !113
  %81 = freeze i64 %umin1598, !dbg !113
  %82 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !113
  %umin1599 = call i64 @llvm.umin.i64(i64 %81, i64 %82), !dbg !113
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %58), !dbg !113
  %83 = add nuw i64 %umin1600, 1, !dbg !113
  %min.iters.check = icmp ult i64 %umin1600, 20, !dbg !113
  br i1 %min.iters.check, label %L133.preheader, label %vector.scevcheck, !dbg !113

vector.scevcheck:                                 ; preds = %L285.peel
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !113
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %59, !dbg !113
  %mul.result = shl i64 %umin1600, 3, !dbg !113
  %84 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !113
  %85 = icmp ult ptr %84, %scevgep1566, !dbg !113
  %86 = mul i64 %.size77.sroa.0.0.copyload, %51, !dbg !113
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %86, !dbg !113
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !113
  %87 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !113
  %88 = icmp ult ptr %87, %scevgep1568, !dbg !113
  %89 = or i1 %mul.overflow1571, %88, !dbg !113
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !113
  %90 = mul i64 %.size58.sroa.0.0.copyload.fr, %64, !dbg !113
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %90, !dbg !113
  %91 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !113
  %92 = icmp ult ptr %91, %scevgep1575, !dbg !113
  %93 = or i1 %85, %89, !dbg !113
  %94 = or i1 %92, %93, !dbg !113
  br i1 %94, label %L133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !113
  %95 = getelementptr i8, ptr %scevgep1581, i64 %86, !dbg !113
  %scevgep1585 = getelementptr i8, ptr %95, i64 %mul.result, !dbg !113
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %59, !dbg !113
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !113
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !113
  %96 = getelementptr i8, ptr %scevgep1593, i64 %90, !dbg !113
  %scevgep1594 = getelementptr i8, ptr %96, i64 %mul.result, !dbg !113
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !113
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !113
  %found.conflict = and i1 %bound0, %bound1, !dbg !113
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !113
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !113
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !113
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !113
  br i1 %conflict.rdx, label %L133.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %83, 7, !dbg !113
  %97 = icmp eq i64 %n.mod.vf, 0, !dbg !113
  %98 = select i1 %97, i64 8, i64 %n.mod.vf, !dbg !113
  %n.vec = sub nuw nsw i64 %83, %98, !dbg !113
  %broadcast.splatinsert = insertelement <2 x double> poison, double %67, i64 0, !dbg !113
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !113
  br label %vector.body, !dbg !113

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !113
  %99 = add i64 %offset.idx, %56, !dbg !146
  %100 = shl i64 %99, 3, !dbg !116
  %101 = getelementptr i8, ptr %invariant.gep, i64 %100, !dbg !116
  %102 = getelementptr i8, ptr %101, i64 16, !dbg !116
  %103 = getelementptr i8, ptr %101, i64 32, !dbg !116
  %104 = getelementptr i8, ptr %101, i64 48, !dbg !116
  %wide.load = load <2 x double>, ptr %101, align 8, !dbg !116, !tbaa !108, !alias.scope !152, !noalias !112
  %wide.load1601 = load <2 x double>, ptr %102, align 8, !dbg !116, !tbaa !108, !alias.scope !152, !noalias !112
  %wide.load1602 = load <2 x double>, ptr %103, align 8, !dbg !116, !tbaa !108, !alias.scope !152, !noalias !112
  %wide.load1603 = load <2 x double>, ptr %104, align 8, !dbg !116, !tbaa !108, !alias.scope !152, !noalias !112
  %105 = add i64 %offset.idx, %70, !dbg !146
  %106 = shl i64 %105, 3, !dbg !116
  %107 = getelementptr i8, ptr %invariant.gep166, i64 %106, !dbg !116
  %108 = getelementptr i8, ptr %107, i64 16, !dbg !116
  %109 = getelementptr i8, ptr %107, i64 32, !dbg !116
  %110 = getelementptr i8, ptr %107, i64 48, !dbg !116
  %wide.load1604 = load <2 x double>, ptr %107, align 8, !dbg !116, !tbaa !108, !alias.scope !155, !noalias !112
  %wide.load1605 = load <2 x double>, ptr %108, align 8, !dbg !116, !tbaa !108, !alias.scope !155, !noalias !112
  %wide.load1606 = load <2 x double>, ptr %109, align 8, !dbg !116, !tbaa !108, !alias.scope !155, !noalias !112
  %wide.load1607 = load <2 x double>, ptr %110, align 8, !dbg !116, !tbaa !108, !alias.scope !155, !noalias !112
  %111 = fmul <2 x double> %broadcast.splat, %wide.load1604, !dbg !131
  %112 = fmul <2 x double> %broadcast.splat, %wide.load1605, !dbg !131
  %113 = fmul <2 x double> %broadcast.splat, %wide.load1606, !dbg !131
  %114 = fmul <2 x double> %broadcast.splat, %wide.load1607, !dbg !131
  %115 = fadd <2 x double> %wide.load, %111, !dbg !134
  %116 = fadd <2 x double> %wide.load1601, %112, !dbg !134
  %117 = fadd <2 x double> %wide.load1602, %113, !dbg !134
  %118 = fadd <2 x double> %wide.load1603, %114, !dbg !134
  %119 = add i64 %offset.idx, %71, !dbg !157
  %120 = shl i64 %119, 3, !dbg !136
  %121 = getelementptr i8, ptr %invariant.gep, i64 %120, !dbg !136
  %122 = getelementptr i8, ptr %121, i64 16, !dbg !136
  %123 = getelementptr i8, ptr %121, i64 32, !dbg !136
  %124 = getelementptr i8, ptr %121, i64 48, !dbg !136
  store <2 x double> %115, ptr %121, align 8, !dbg !136, !tbaa !108, !alias.scope !163, !noalias !165
  store <2 x double> %116, ptr %122, align 8, !dbg !136, !tbaa !108, !alias.scope !163, !noalias !165
  store <2 x double> %117, ptr %123, align 8, !dbg !136, !tbaa !108, !alias.scope !163, !noalias !165
  store <2 x double> %118, ptr %124, align 8, !dbg !136, !tbaa !108, !alias.scope !163, !noalias !165
  %index.next = add nuw i64 %index, 8
  %125 = icmp eq i64 %index.next, %n.vec
  br i1 %125, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !166

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 2, !dbg !113
  br label %L133.preheader, !dbg !113

L133.preheader:                                   ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L285.peel
  %value_phi35.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 2, %vector.memcheck ], [ 2, %vector.scevcheck ], [ 2, %L285.peel ]
  br label %L133, !dbg !113

L133:                                             ; preds = %L133.preheader, %L285
  %value_phi35 = phi i64 [ %136, %L285 ], [ %value_phi35.ph, %L133.preheader ]
  %126 = add i64 %value_phi35, -1, !dbg !168
  %.not1446 = icmp ult i64 %126, %.size39.sroa.0.0.copyload.fr, !dbg !118
  br i1 %.not1446, label %L163, label %odessy.chk4, !dbg !113

L163:                                             ; preds = %L133
  %127 = add i64 %value_phi35, %56, !dbg !146
  %memoryref_offset49 = shl i64 %127, 3, !dbg !116
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !116
  %128 = load double, ptr %gep, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %.not1447 = icmp ult i64 %126, %.size58.sroa.0.0.copyload.fr, !dbg !118
  br i1 %.not1447, label %L223, label %odessy.chk9, !dbg !113

L220:                                             ; preds = %L85, %L85.us131.us
  %.us-phi53.ph = phi i64 [ %value_phi20.us129.us, %L85.us131.us ], [ %value_phi20, %L85 ]
  %129 = getelementptr inbounds nuw i8, ptr %"new::Tuple56", i64 8
  store i64 1, ptr %"new::Tuple56", align 8, !dbg !114, !tbaa !169, !alias.scope !171, !noalias !172
  store i64 %.us-phi53.ph, ptr %129, align 8, !dbg !114, !tbaa !169, !alias.scope !171, !noalias !172
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple56") #3, !dbg !113
  unreachable, !dbg !113

L223:                                             ; preds = %L163
  %.not1448 = icmp ult i64 %126, %.size77.sroa.0.0.copyload, !dbg !122
  br i1 %.not1448, label %L285, label %odessy.chk12, !dbg !126

L282:                                             ; preds = %L163.us334
  %130 = getelementptr inbounds nuw i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 8, !dbg !127, !tbaa !169, !alias.scope !171, !noalias !172
  store i64 %.us-phi54.ph, ptr %130, align 8, !dbg !127, !tbaa !169, !alias.scope !171, !noalias !172
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #3, !dbg !126
  unreachable, !dbg !126

L285:                                             ; preds = %L223
  %131 = add i64 %value_phi35, %70, !dbg !146
  %memoryref_offset68 = shl i64 %131, 3, !dbg !116
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !116
  %132 = load double, ptr %gep167, align 8, !dbg !116, !tbaa !108, !alias.scope !111, !noalias !112
  %133 = fmul double %67, %132, !dbg !131
  %134 = fadd double %128, %133, !dbg !134
  %135 = add i64 %value_phi35, %71, !dbg !157
  %memoryref_offset85 = shl i64 %135, 3, !dbg !136
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !136
  store double %134, ptr %gep169, align 8, !dbg !136, !tbaa !108, !alias.scope !111, !noalias !112
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !173
  %136 = add i64 %value_phi35, 1, !dbg !174
  br i1 %.not163.not, label %L311.loopexit.loopexit, label %L133, !dbg !175, !llvm.loop !176

L311.loopexit.loopexit:                           ; preds = %L285
  %.not164.not = icmp eq i64 %value_phi20, %value_phi16, !dbg !137
  %137 = add nuw i64 %value_phi20, 1, !dbg !138
  %indvar.next1574 = add nuw nsw i64 %indvar1573, 1, !dbg !139
  br i1 %.not164.not, label %L322.loopexit.split.split, label %L55, !dbg !139

L322.loopexit.split.split:                        ; preds = %L311.loopexit.loopexit
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !140
  %138 = add nuw i64 %value_phi13, 1, !dbg !141
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !142
  br i1 %.not165.not, label %L333, label %L37, !dbg !142

L333:                                             ; preds = %L322.loopexit.split.split, %L322.loopexit.split.split.us.us, %L322.loopexit.split.us.us, %L322.loopexit.split.us.us.us, %L37.preheader, %L20
  %frame.prev1765 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1765, ptr %pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !177

L334:                                             ; preds = %L15
  %139 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %140 = extractvalue [1 x ptr] %139, 0, !dbg !58
  store ptr %140, ptr %gc_slot_addr_0, align 16
  %ptls_load1755 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1755, i32 424, i32 16, i64 4751484224) #10, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch", i64 -8, !dbg !58
  store atomic i64 4751484224, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !178
  store ptr %140, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !180, !alias.scope !111, !noalias !112
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %141 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01734 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %142 = extractvalue [1 x ptr] %141, 0, !dbg !55
  store ptr %142, ptr %gc_slot_addr_01734, align 16
  %ptls_load1759 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1759, i32 424, i32 16, i64 4751484224) #10, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch115", i64 -8, !dbg !55
  store atomic i64 4751484224, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !178
  store ptr %142, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !180, !alias.scope !111, !noalias !112
  store ptr null, ptr %gc_slot_addr_01734, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %143 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01736 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %144 = extractvalue [1 x ptr] %143, 0, !dbg !50
  store ptr %144, ptr %gc_slot_addr_01736, align 16
  %ptls_load1763 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1763, i32 424, i32 16, i64 4751484224) #10, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch121", i64 -8, !dbg !50
  store atomic i64 4751484224, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !178
  store ptr %144, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !180, !alias.scope !111, !noalias !112
  store ptr null, ptr %gc_slot_addr_01736, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk:                                       ; preds = %L55, %L55.us127.us
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L37, %L37.us
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %vector.body1617.preheader, %L55.us662.us.us.preheader
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L37.us1021, %L37.us1021.us
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
!144 = !{!"llvm.loop.unroll.runtime.disable"}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !DILocation(line: 87, scope: !95, inlinedAt: !147)
!147 = !DILocation(line: 3081, scope: !97, inlinedAt: !148)
!148 = !DILocation(line: 3081, scope: !97, inlinedAt: !149)
!149 = !DILocation(line: 3065, scope: !100, inlinedAt: !150)
!150 = !DILocation(line: 3049, scope: !100, inlinedAt: !151)
!151 = !DILocation(line: 1377, scope: !103, inlinedAt: !117)
!152 = !{!34, !153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!34, !156}
!156 = distinct !{!156, !154}
!157 = !DILocation(line: 87, scope: !95, inlinedAt: !158)
!158 = !DILocation(line: 3081, scope: !97, inlinedAt: !159)
!159 = !DILocation(line: 3081, scope: !97, inlinedAt: !160)
!160 = !DILocation(line: 3065, scope: !100, inlinedAt: !161)
!161 = !DILocation(line: 3049, scope: !100, inlinedAt: !162)
!162 = !DILocation(line: 1377, scope: !103, inlinedAt: !136)
!163 = !{!34, !164}
!164 = distinct !{!164, !154}
!165 = !{!32, !33, !35, !29, !153, !156}
!166 = distinct !{!166, !167, !145, !144}
!167 = !{!"llvm.loop.peeled.count", i32 1}
!168 = !DILocation(line: 86, scope: !93, inlinedAt: !119)
!169 = !{!170, !170, i64 0}
!170 = !{!"jtbaa_stack", !24, i64 0}
!171 = !{!33}
!172 = !{!32, !34, !35, !29}
!173 = !DILocation(line: 637, scope: !52, inlinedAt: !174)
!174 = !DILocation(line: 921, scope: !77, inlinedAt: !175)
!175 = !DILocation(line: 22, scope: !4)
!176 = distinct !{!176, !167, !145}
!177 = !DILocation(line: 25, scope: !4)
!178 = !{!179, !179, i64 0}
!179 = !{!"jtbaa_tag", !110, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"jtbaa_immut", !182, i64 0}
!182 = !{!"jtbaa_value", !110, i64 0}
