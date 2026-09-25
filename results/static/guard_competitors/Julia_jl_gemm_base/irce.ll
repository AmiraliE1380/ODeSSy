; ModuleID = 'results/static/guard_competitors/Julia_jl_gemm_base/tag.ll'
source_filename = "gemm!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#152.jit" = private alias ptr, inttoptr (i64 4573278032 to ptr)
@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4573278160 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4573278288 to ptr)
@"+Main.Base.DimensionMismatch#150.jit" = private alias ptr, inttoptr (i64 4751484224 to ptr)

define nonnull ptr @"japi1_gemm!_145"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %gcframe1, i8 0, i64 24, i1 true)
  %stackargs = alloca ptr, align 8
  store volatile ptr %"args::Any[]", ptr %stackargs, align 8
  %"new::Tuple" = alloca [2 x i64], align 8
  %"new::Tuple37" = alloca [2 x i64], align 8
  %"new::Tuple56" = alloca [2 x i64], align 8
  %"new::Tuple75" = alloca [2 x i64], align 8
  %pgcstack = call ptr inttoptr (i64 4298374940 to ptr)(i64 4298374976) #13
  store i64 4, ptr %gcframe1, align 8, !tbaa !22
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds ptr, ptr %gcframe1, i64 1
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !22
  store ptr %gcframe1, ptr %pgcstack, align 8
  %0 = load ptr, ptr %"args::Any[]", align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %stackargs, !18, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 0, DW_OP_deref), !38)
    #dbg_declare(ptr %0, !18, !DIExpression(), !38)
  %1 = getelementptr inbounds i8, ptr %"args::Any[]", i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %stackargs, !20, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !38)
    #dbg_declare(ptr %2, !20, !DIExpression(), !38)
  %3 = getelementptr inbounds i8, ptr %"args::Any[]", i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !26, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %stackargs, !21, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !38)
    #dbg_declare(ptr %4, !21, !DIExpression(), !38)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !22
  %5 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %5, align 8, !tbaa !26, !invariant.load !17
  fence syncscope("singlethread") seq_cst
  %6 = load volatile i64, ptr %safepoint, align 8, !dbg !38
  fence syncscope("singlethread") seq_cst
  %.size_ptr = getelementptr inbounds i8, ptr %0, i64 16, !dbg !39
  %.size.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8, !dbg !39, !tbaa !44, !alias.scope !45, !noalias !46
  %.size.sroa.0.0.copyload.fr = freeze i64 %.size.sroa.0.0.copyload
  %.size.sroa.3.0..size_ptr.sroa_idx = getelementptr inbounds i8, ptr %0, i64 24, !dbg !39
  %.size.sroa.3.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8, !dbg !39, !tbaa !44, !alias.scope !45, !noalias !46
  %.size_ptr1 = getelementptr inbounds i8, ptr %2, i64 16, !dbg !47
  %.size2.sroa.1.0..size_ptr1.sroa_idx = getelementptr inbounds i8, ptr %2, i64 24, !dbg !47
  %.size2.sroa.1.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8, !dbg !47, !tbaa !44, !alias.scope !45, !noalias !46
  %.size4.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8, !dbg !49, !tbaa !44, !alias.scope !45, !noalias !46
  %.not = icmp eq i64 %.size4.sroa.0.0.copyload, %.size.sroa.0.0.copyload.fr, !dbg !51
  br i1 %.not, label %L10, label %L340, !dbg !50

L10:                                              ; preds = %top
  %.size_ptr5 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !54
  %.size6.sroa.0.0.copyload = load i64, ptr %.size_ptr5, align 8, !dbg !54
  %.not149 = icmp eq i64 %.size6.sroa.0.0.copyload, %.size2.sroa.1.0.copyload, !dbg !56
  br i1 %.not149, label %L15, label %L337, !dbg !55

L15:                                              ; preds = %L10
  %.size8.sroa.1.0..size_ptr7.sroa_idx = getelementptr inbounds i8, ptr %4, i64 24, !dbg !57
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
  %smin = call i64 @llvm.smin.i64(i64 %.size2.sroa.1.0.copyload, i64 0)
  %11 = sub i64 %.size2.sroa.1.0.copyload, %smin
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %value_phi16, i64 %11)
  br label %L37

L37.us1021.preheader:                             ; preds = %L37.preheader.split
  %12 = add nsw i64 %value_phi16, -1
  %umin1608 = call i64 @llvm.umin.i64(i64 %.size2.sroa.1.0.copyload, i64 %12)
  %13 = add nuw i64 %umin1608, 1
  br label %L37.us1021

L37.us1021:                                       ; preds = %L322.loopexit.split.us.us, %L37.us1021.preheader
  %value_phi13.us1030 = phi i64 [ %21, %L322.loopexit.split.us.us ], [ 1, %L37.us1021.preheader ]
  %14 = add nsw i64 %value_phi13.us1030, -1
  %15 = icmp uge i64 %14, %.size.sroa.3.0.copyload
  %.fr578.us = freeze i1 %15
  %.fr578.us.not = xor i1 %.fr578.us, true
  br i1 %.fr578.us.not, label %L55.us662.us.preheader, label %odessy.chk3

L55.us662.us.preheader:                           ; preds = %L37.us1021
  %min.iters.check1611 = icmp ult i64 %umin1608, 16, !dbg !80
  br i1 %min.iters.check1611, label %scalar.ph1610, label %vector.ph1612, !dbg !80

vector.ph1612:                                    ; preds = %L55.us662.us.preheader
  %n.mod.vf1613 = and i64 %13, 15, !dbg !80
  %16 = icmp eq i64 %n.mod.vf1613, 0, !dbg !80
  %17 = select i1 %16, i64 16, i64 %n.mod.vf1613, !dbg !80
  %n.vec1614 = sub i64 %13, %17, !dbg !80
  %ind.end1615 = add i64 %n.vec1614, 1, !dbg !80
  br label %vector.body1617, !dbg !80

vector.body1617:                                  ; preds = %vector.body1617, %vector.ph1612
  %index1618 = phi i64 [ 0, %vector.ph1612 ], [ %index.next1619, %vector.body1617 ]
  %index.next1619 = add nuw i64 %index1618, 16
  %18 = icmp eq i64 %index.next1619, %n.vec1614
  br i1 %18, label %scalar.ph1610.loopexit, label %vector.body1617, !llvm.loop !86

scalar.ph1610.loopexit:                           ; preds = %vector.body1617
  br label %scalar.ph1610, !dbg !80

scalar.ph1610:                                    ; preds = %scalar.ph1610.loopexit, %L55.us662.us.preheader
  %bc.resume.val1616 = phi i64 [ 1, %L55.us662.us.preheader ], [ %ind.end1615, %scalar.ph1610.loopexit ]
  br label %L55.us662.us, !dbg !80

L55.us662.us:                                     ; preds = %L85.us.us, %scalar.ph1610
  %value_phi20.us669.us = phi i64 [ %20, %L85.us.us ], [ %bc.resume.val1616, %scalar.ph1610 ]
  %19 = add nsw i64 %value_phi20.us669.us, -1, !dbg !89
  %.not1449 = icmp ult i64 %19, %.size2.sroa.1.0.copyload, !dbg !96
  br i1 %.not1449, label %L85.us.us, label %odessy.chk2, !dbg !80

L85.us.us:                                        ; preds = %L55.us662.us
  %.not164.not.us.us = icmp eq i64 %value_phi20.us669.us, %value_phi16, !dbg !97
  %20 = add nuw i64 %value_phi20.us669.us, 1, !dbg !98
  br i1 %.not164.not.us.us, label %L322.loopexit.split.us.us, label %L55.us662.us, !dbg !99, !llvm.loop !100

L322.loopexit.split.us.us:                        ; preds = %L85.us.us
  %.not165.not.us1040 = icmp eq i64 %value_phi13.us1030, %value_phi, !dbg !101
  %21 = add nuw i64 %value_phi13.us1030, 1, !dbg !102
  br i1 %.not165.not.us1040, label %L333.loopexit, label %L37.us1021, !dbg !103

L37:                                              ; preds = %L322.loopexit.split, %L37.preheader1455
  %indvar = phi i64 [ 0, %L37.preheader1455 ], [ %indvar.next, %L322.loopexit.split ]
  %value_phi13 = phi i64 [ 1, %L37.preheader1455 ], [ %114, %L322.loopexit.split ]
  %22 = shl i64 %indvar, 3
  %23 = add nsw i64 %value_phi13, -1
  %24 = icmp uge i64 %23, %.size.sroa.3.0.copyload
  %25 = add nuw i64 %value_phi13, 2305843009213693951
  %26 = mul i64 %.size2.sroa.1.0.copyload, %25
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !80
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %27 = mul i64 %.size39.sroa.0.0.copyload, %25
  %.fr578 = freeze i1 %24
  br i1 %.fr578, label %odessy.chk1, label %L55.preheader.split

L55.preheader.split:                              ; preds = %L37
  %.size39.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %28 = icmp uge i64 %23, %.size39.sroa.2.0.copyload
  %.fr = freeze i1 %28
  br i1 %.fr, label %odessy.chk8, label %L55.preheader

L55.preheader:                                    ; preds = %L55.preheader.split
  %29 = add i64 %.size39.sroa.0.0.copyload, -1, !dbg !80
  %30 = mul i64 %.size39.sroa.0.0.copyload, %22, !dbg !80
  %31 = icmp ult i64 0, %exit.mainloop.at, !dbg !80
  br i1 %31, label %L55.preheader53, label %main.pseudo.exit, !dbg !80

L55.preheader53:                                  ; preds = %L55.preheader
  br label %L55, !dbg !80

L55:                                              ; preds = %L55.preheader53, %L311.loopexit
  %indvar1573 = phi i64 [ %indvar.next1574, %L311.loopexit ], [ 0, %L55.preheader53 ]
  %value_phi20 = phi i64 [ %110, %L311.loopexit ], [ 1, %L55.preheader53 ]
  %32 = shl i64 %indvar1573, 3, !dbg !89
  %33 = add nsw i64 %value_phi20, -1, !dbg !89
  %.not1442 = icmp ult i64 %33, %.size2.sroa.1.0.copyload, !dbg !96
  br i1 true, label %L85, label %odessy.chk.loopexit54, !dbg !80

L82:                                              ; No predecessors!
  %34 = getelementptr inbounds i8, ptr %"new::Tuple", i64 8
  store i64 1, ptr %"new::Tuple", align 8, !dbg !83, !tbaa !104, !alias.scope !106, !noalias !107
  store i64 poison, ptr %34, align 8, !dbg !83, !tbaa !104, !alias.scope !106, !noalias !107
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %4, ptr nonnull readonly captures(none) %"new::Tuple") #6, !dbg !80
  unreachable, !dbg !80

L85:                                              ; preds = %L55
  %35 = add i64 %26, %value_phi20, !dbg !108
  %memoryref_offset = shl i64 %35, 3, !dbg !119
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !119
  %36 = load double, ptr %gep470, align 8, !dbg !119, !tbaa !122, !alias.scope !125, !noalias !126
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !127
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !127
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %37 = icmp uge i64 %33, %.size58.sroa.2.0.copyload
  %38 = add nuw i64 %value_phi20, 2305843009213693951
  %39 = mul i64 %.size58.sroa.0.0.copyload.fr, %38
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !127
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %40 = mul i64 %.size77.sroa.0.0.copyload, %25
  %.fr268 = freeze i1 %37
  %.fr268.not = xor i1 %.fr268, true
  br i1 %.fr268.not, label %L133.preheader.split.split, label %L133.preheader.split.split.us.loopexit55

L133.preheader.split.split.us.loopexit:           ; preds = %L85.postloop
  %.size39.sroa.0.0.copyload.lcssa28.ph = phi i64 [ %.size39.sroa.0.0.copyload, %L85.postloop ]
  %value_phi20.lcssa2.ph = phi i64 [ %value_phi20.postloop, %L85.postloop ]
  br label %L133.preheader.split.split.us, !dbg !130

L133.preheader.split.split.us.loopexit55:         ; preds = %L85
  %.size39.sroa.0.0.copyload.lcssa28.ph56 = phi i64 [ %.size39.sroa.0.0.copyload, %L85 ]
  %value_phi20.lcssa2.ph57 = phi i64 [ %value_phi20, %L85 ]
  br label %L133.preheader.split.split.us, !dbg !130

L133.preheader.split.split.us:                    ; preds = %L133.preheader.split.split.us.loopexit55, %L133.preheader.split.split.us.loopexit
  %.size39.sroa.0.0.copyload.lcssa28 = phi i64 [ %.size39.sroa.0.0.copyload.lcssa28.ph, %L133.preheader.split.split.us.loopexit ], [ %.size39.sroa.0.0.copyload.lcssa28.ph56, %L133.preheader.split.split.us.loopexit55 ]
  %value_phi20.lcssa2 = phi i64 [ %value_phi20.lcssa2.ph, %L133.preheader.split.split.us.loopexit ], [ %value_phi20.lcssa2.ph57, %L133.preheader.split.split.us.loopexit55 ]
  %41 = icmp eq i64 %.size39.sroa.0.0.copyload.lcssa28, 0, !dbg !130
  br i1 %41, label %odessy.chk7, label %L220, !dbg !127

L133.preheader.split.split:                       ; preds = %L85
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %42 = icmp uge i64 %23, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %42
  %43 = icmp eq i64 %.size39.sroa.0.0.copyload, 0, !dbg !130
  %.fr382.not = xor i1 %.fr382, true
  br i1 %.fr382.not, label %L133.preheader.split.split.split, label %L133.preheader.split.split.split.us.loopexit58

L133.preheader.split.split.split.us.loopexit:     ; preds = %L133.preheader.split.split.postloop
  %value_phi13.lcssa40.ph = phi i64 [ %value_phi13, %L133.preheader.split.split.postloop ]
  %.lcssa.ph = phi i1 [ %130, %L133.preheader.split.split.postloop ]
  %.size58.sroa.0.0.copyload.fr.lcssa11.ph = phi i64 [ %.size58.sroa.0.0.copyload.fr.postloop, %L133.preheader.split.split.postloop ]
  br label %L133.preheader.split.split.split.us, !dbg !127

L133.preheader.split.split.split.us.loopexit58:   ; preds = %L133.preheader.split.split
  %value_phi13.lcssa40.ph59 = phi i64 [ %value_phi13, %L133.preheader.split.split ]
  %.lcssa.ph60 = phi i1 [ %43, %L133.preheader.split.split ]
  %.size58.sroa.0.0.copyload.fr.lcssa11.ph61 = phi i64 [ %.size58.sroa.0.0.copyload.fr, %L133.preheader.split.split ]
  br label %L133.preheader.split.split.split.us, !dbg !127

L133.preheader.split.split.split.us:              ; preds = %L133.preheader.split.split.split.us.loopexit58, %L133.preheader.split.split.split.us.loopexit
  %value_phi13.lcssa40 = phi i64 [ %value_phi13.lcssa40.ph, %L133.preheader.split.split.split.us.loopexit ], [ %value_phi13.lcssa40.ph59, %L133.preheader.split.split.split.us.loopexit58 ]
  %.lcssa = phi i1 [ %.lcssa.ph, %L133.preheader.split.split.split.us.loopexit ], [ %.lcssa.ph60, %L133.preheader.split.split.split.us.loopexit58 ], !dbg !130
  %.size58.sroa.0.0.copyload.fr.lcssa11 = phi i64 [ %.size58.sroa.0.0.copyload.fr.lcssa11.ph, %L133.preheader.split.split.split.us.loopexit ], [ %.size58.sroa.0.0.copyload.fr.lcssa11.ph61, %L133.preheader.split.split.split.us.loopexit58 ], !dbg !127
  br i1 %.lcssa, label %odessy.chk6, label %L163.us334, !dbg !127

L163.us334:                                       ; preds = %L133.preheader.split.split.split.us
  %44 = icmp eq i64 %.size58.sroa.0.0.copyload.fr.lcssa11, 0, !dbg !130
  br i1 %44, label %odessy.chk11, label %L282, !dbg !127

L133.preheader.split.split.split:                 ; preds = %L133.preheader.split.split
  %.not48 = xor i1 %43, true, !dbg !127
  br i1 %.not48, label %L163.peel, label %odessy.chk5.loopexit62, !dbg !127

L163.peel:                                        ; preds = %L133.preheader.split.split.split
  %45 = shl i64 %27, 3, !dbg !134
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %45, !dbg !134
  %46 = load double, ptr %gep.peel, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %.not1444 = icmp ne i64 %.size58.sroa.0.0.copyload.fr, 0, !dbg !130
  br i1 %.not1444, label %L223.peel, label %odessy.chk10.loopexit63, !dbg !127

L223.peel:                                        ; preds = %L163.peel
  %.not1445 = icmp ne i64 %.size77.sroa.0.0.copyload, 0, !dbg !136
  br i1 %.not1445, label %L285.peel, label %odessy.chk13.loopexit64, !dbg !140

L285.peel:                                        ; preds = %L223.peel
  %47 = shl i64 %39, 3, !dbg !134
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %47, !dbg !134
  %48 = load double, ptr %gep167.peel, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %49 = fmul double %36, %48, !dbg !145
  %50 = fadd double %46, %49, !dbg !148
  %51 = shl i64 %40, 3, !dbg !150
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %51, !dbg !150
  store double %50, ptr %gep169.peel, align 8, !dbg !150, !tbaa !122, !alias.scope !125, !noalias !126
  %.not163.not.peel = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1, !dbg !151
  br i1 %.not163.not.peel, label %L311.loopexit, label %L133.preheader, !dbg !153

L133.preheader:                                   ; preds = %L285.peel
  %52 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !127
  %umin1598 = call i64 @llvm.umin.i64(i64 %52, i64 %10), !dbg !127
  %53 = freeze i64 %umin1598, !dbg !127
  %54 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !127
  %umin1599 = call i64 @llvm.umin.i64(i64 %53, i64 %54), !dbg !127
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %29), !dbg !127
  %55 = add i64 %umin1600, 1, !dbg !127
  %min.iters.check = icmp ult i64 %55, 21, !dbg !127
  br i1 %min.iters.check, label %scalar.ph, label %vector.scevcheck, !dbg !127

vector.scevcheck:                                 ; preds = %L133.preheader
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !127
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %30, !dbg !127
  %mul.result = shl i64 %umin1600, 3, !dbg !127
  %56 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !127
  %57 = icmp ult ptr %56, %scevgep1566, !dbg !127
  %58 = mul i64 %22, %.size77.sroa.0.0.copyload, !dbg !127
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %58, !dbg !127
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !127
  %59 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !127
  %60 = icmp ult ptr %59, %scevgep1568, !dbg !127
  %61 = or i1 %60, %mul.overflow1571, !dbg !127
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !127
  %62 = mul i64 %.size58.sroa.0.0.copyload.fr, %32, !dbg !127
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %62, !dbg !127
  %63 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !127
  %64 = icmp ult ptr %63, %scevgep1575, !dbg !127
  %65 = or i1 %57, %61, !dbg !127
  %66 = or i1 %64, %65, !dbg !127
  br i1 %66, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !127
  %67 = getelementptr i8, ptr %scevgep1581, i64 %58, !dbg !127
  %scevgep1585 = getelementptr i8, ptr %67, i64 %mul.result, !dbg !127
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %30, !dbg !127
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !127
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !127
  %68 = getelementptr i8, ptr %scevgep1593, i64 %62, !dbg !127
  %scevgep1594 = getelementptr i8, ptr %68, i64 %mul.result, !dbg !127
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !127
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !127
  %found.conflict = and i1 %bound0, %bound1, !dbg !127
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !127
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !127
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !127
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !127
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %55, 7, !dbg !127
  %69 = icmp eq i64 %n.mod.vf, 0, !dbg !127
  %70 = select i1 %69, i64 8, i64 %n.mod.vf, !dbg !127
  %n.vec = sub i64 %55, %70, !dbg !127
  %ind.end = add i64 %n.vec, 2, !dbg !127
  %broadcast.splatinsert = insertelement <2 x double> poison, double %36, i64 0, !dbg !127
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !127
  br label %vector.body, !dbg !127

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !127
  %71 = add i64 %27, %offset.idx, !dbg !154
  %72 = shl i64 %71, 3, !dbg !134
  %73 = getelementptr i8, ptr %invariant.gep, i64 %72, !dbg !134
  %74 = getelementptr double, ptr %73, i64 2, !dbg !134
  %75 = getelementptr double, ptr %73, i64 4, !dbg !134
  %76 = getelementptr double, ptr %73, i64 6, !dbg !134
  %wide.load = load <2 x double>, ptr %73, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %wide.load1601 = load <2 x double>, ptr %74, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %wide.load1602 = load <2 x double>, ptr %75, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %wide.load1603 = load <2 x double>, ptr %76, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %77 = add i64 %39, %offset.idx, !dbg !154
  %78 = shl i64 %77, 3, !dbg !134
  %79 = getelementptr i8, ptr %invariant.gep166, i64 %78, !dbg !134
  %80 = getelementptr double, ptr %79, i64 2, !dbg !134
  %81 = getelementptr double, ptr %79, i64 4, !dbg !134
  %82 = getelementptr double, ptr %79, i64 6, !dbg !134
  %wide.load1604 = load <2 x double>, ptr %79, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %wide.load1605 = load <2 x double>, ptr %80, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %wide.load1606 = load <2 x double>, ptr %81, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %wide.load1607 = load <2 x double>, ptr %82, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %83 = fmul <2 x double> %broadcast.splat, %wide.load1604, !dbg !145
  %84 = fmul <2 x double> %broadcast.splat, %wide.load1605, !dbg !145
  %85 = fmul <2 x double> %broadcast.splat, %wide.load1606, !dbg !145
  %86 = fmul <2 x double> %broadcast.splat, %wide.load1607, !dbg !145
  %87 = fadd <2 x double> %wide.load, %83, !dbg !148
  %88 = fadd <2 x double> %wide.load1601, %84, !dbg !148
  %89 = fadd <2 x double> %wide.load1602, %85, !dbg !148
  %90 = fadd <2 x double> %wide.load1603, %86, !dbg !148
  %91 = add i64 %40, %offset.idx, !dbg !165
  %92 = shl i64 %91, 3, !dbg !150
  %93 = getelementptr i8, ptr %invariant.gep, i64 %92, !dbg !150
  %94 = getelementptr double, ptr %93, i64 2, !dbg !150
  %95 = getelementptr double, ptr %93, i64 4, !dbg !150
  %96 = getelementptr double, ptr %93, i64 6, !dbg !150
  store <2 x double> %87, ptr %93, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  store <2 x double> %88, ptr %94, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  store <2 x double> %89, ptr %95, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  store <2 x double> %90, ptr %96, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  %index.next = add nuw i64 %index, 8
  %97 = icmp eq i64 %index.next, %n.vec
  br i1 %97, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !174

scalar.ph.loopexit:                               ; preds = %vector.body
  br label %scalar.ph, !dbg !127

scalar.ph:                                        ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L133.preheader
  %bc.resume.val = phi i64 [ 2, %L133.preheader ], [ 2, %vector.scevcheck ], [ 2, %vector.memcheck ], [ %ind.end, %scalar.ph.loopexit ]
  br label %L133, !dbg !127

L133:                                             ; preds = %L285, %scalar.ph
  %value_phi35 = phi i64 [ %109, %L285 ], [ %bc.resume.val, %scalar.ph ]
  %98 = add i64 %value_phi35, -1, !dbg !176
  %.not1446 = icmp ult i64 %98, %.size39.sroa.0.0.copyload, !dbg !130
  br i1 %.not1446, label %L163, label %odessy.chk4.loopexit50, !dbg !127

L160:                                             ; No predecessors!
  %99 = getelementptr inbounds i8, ptr %"new::Tuple37", i64 8
  store i64 1, ptr %"new::Tuple37", align 8, !dbg !128, !tbaa !104, !alias.scope !106, !noalias !107
  store i64 poison, ptr %99, align 8, !dbg !128, !tbaa !104, !alias.scope !106, !noalias !107
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple37") #6, !dbg !127
  unreachable, !dbg !127

L163:                                             ; preds = %L133
  %100 = add i64 %27, %value_phi35, !dbg !154
  %memoryref_offset49 = shl i64 %100, 3, !dbg !134
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !134
  %101 = load double, ptr %gep, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %.not1447 = icmp ult i64 %98, %.size58.sroa.0.0.copyload.fr, !dbg !130
  br i1 %.not1447, label %L223, label %odessy.chk9.loopexit51, !dbg !127

L220:                                             ; preds = %L133.preheader.split.split.us
  %102 = getelementptr inbounds i8, ptr %"new::Tuple56", i64 8
  store i64 1, ptr %"new::Tuple56", align 1, !dbg !128, !tbaa !104, !alias.scope !106, !noalias !107
  store i64 %value_phi20.lcssa2, ptr %102, align 1, !dbg !128, !tbaa !104, !alias.scope !106, !noalias !107
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple56") #6, !dbg !127
  unreachable, !dbg !127

L223:                                             ; preds = %L163
  %.not1448 = icmp ult i64 %98, %.size77.sroa.0.0.copyload, !dbg !136
  br i1 %.not1448, label %L285, label %odessy.chk12.loopexit52, !dbg !140

L282:                                             ; preds = %L163.us334
  %103 = getelementptr inbounds i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 1, !dbg !141, !tbaa !104, !alias.scope !106, !noalias !107
  store i64 %value_phi13.lcssa40, ptr %103, align 1, !dbg !141, !tbaa !104, !alias.scope !106, !noalias !107
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #6, !dbg !140
  unreachable, !dbg !140

L285:                                             ; preds = %L223
  %104 = add i64 %39, %value_phi35, !dbg !154
  %memoryref_offset68 = shl i64 %104, 3, !dbg !134
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !134
  %105 = load double, ptr %gep167, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %106 = fmul double %36, %105, !dbg !145
  %107 = fadd double %101, %106, !dbg !148
  %108 = add i64 %40, %value_phi35, !dbg !165
  %memoryref_offset85 = shl i64 %108, 3, !dbg !150
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !150
  store double %107, ptr %gep169, align 8, !dbg !150, !tbaa !122, !alias.scope !125, !noalias !126
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !151
  %109 = add i64 %value_phi35, 1, !dbg !152
  br i1 %.not163.not, label %L311.loopexit.loopexit, label %L133, !dbg !153, !llvm.loop !177

L311.loopexit.loopexit:                           ; preds = %L285
  br label %L311.loopexit, !dbg !97

L311.loopexit:                                    ; preds = %L311.loopexit.loopexit, %L285.peel
  %.not164.not = icmp eq i64 %value_phi20, %value_phi16, !dbg !97
  %110 = add nuw i64 %value_phi20, 1, !dbg !98
  %indvar.next1574 = add i64 %indvar1573, 1, !dbg !99
  %111 = icmp ult i64 %value_phi20, %exit.mainloop.at, !dbg !99
  %112 = xor i1 %111, true, !dbg !99
  br i1 %112, label %main.exit.selector, label %L55, !dbg !99

main.exit.selector:                               ; preds = %L311.loopexit
  %.lcssa49 = phi i64 [ %110, %L311.loopexit ], !dbg !98
  %indvar.next1574.lcssa = phi i64 [ %indvar.next1574, %L311.loopexit ], !dbg !99
  %value_phi20.lcssa = phi i64 [ %value_phi20, %L311.loopexit ]
  %113 = icmp ult i64 %value_phi20.lcssa, %value_phi16, !dbg !99
  br i1 %113, label %main.pseudo.exit, label %L322.loopexit.split, !dbg !99

main.pseudo.exit:                                 ; preds = %main.exit.selector, %L55.preheader
  %indvar1573.copy = phi i64 [ 0, %L55.preheader ], [ %indvar.next1574.lcssa, %main.exit.selector ]
  %value_phi20.copy = phi i64 [ 1, %L55.preheader ], [ %.lcssa49, %main.exit.selector ]
  %indvar.end = phi i64 [ 0, %L55.preheader ], [ %value_phi20.lcssa, %main.exit.selector ]
  br label %postloop

L322.loopexit.split.loopexit:                     ; preds = %L311.loopexit.postloop
  br label %L322.loopexit.split, !dbg !101

L322.loopexit.split:                              ; preds = %L322.loopexit.split.loopexit, %main.exit.selector
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !101
  %114 = add nuw i64 %value_phi13, 1, !dbg !102
  %indvar.next = add i64 %indvar, 1, !dbg !103
  br i1 %.not165.not, label %L333.loopexit1, label %L37, !dbg !103

L333.loopexit:                                    ; preds = %L322.loopexit.split.us.us
  br label %L333

L333.loopexit1:                                   ; preds = %L322.loopexit.split
  br label %L333

L333:                                             ; preds = %L333.loopexit1, %L333.loopexit, %L37.preheader, %L20
  %frame.prev1765 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1765, ptr %pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !178

L334:                                             ; preds = %L15
  %115 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %116 = extractvalue [1 x ptr] %115, 0, !dbg !58
  store ptr %116, ptr %gc_slot_addr_0, align 8
  %ptls_load1755 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1755, i32 424, i32 16, i64 4751484224) #8, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch", i64 -1, !dbg !58
  store atomic i64 4751484224, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !179
  store ptr %116, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !181, !alias.scope !125, !noalias !126
  store ptr null, ptr %gc_slot_addr_0, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %117 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01734 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %118 = extractvalue [1 x ptr] %117, 0, !dbg !55
  store ptr %118, ptr %gc_slot_addr_01734, align 8
  %ptls_load1759 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1759, i32 424, i32 16, i64 4751484224) #8, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch115", i64 -1, !dbg !55
  store atomic i64 4751484224, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !179
  store ptr %118, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !181, !alias.scope !125, !noalias !126
  store ptr null, ptr %gc_slot_addr_01734, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %119 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01736 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %120 = extractvalue [1 x ptr] %119, 0, !dbg !50
  store ptr %120, ptr %gc_slot_addr_01736, align 8
  %ptls_load1763 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1763, i32 424, i32 16, i64 4751484224) #8, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch121", i64 -1, !dbg !50
  store atomic i64 4751484224, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !179
  store ptr %120, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !181, !alias.scope !125, !noalias !126
  store ptr null, ptr %gc_slot_addr_01736, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk.loopexit:                              ; preds = %L55.postloop
  br label %odessy.chk

odessy.chk.loopexit54:                            ; preds = %L55
  br label %odessy.chk

odessy.chk:                                       ; preds = %odessy.chk.loopexit54, %odessy.chk.loopexit
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L37
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L55.us662.us
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L37.us1021
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4.loopexit:                             ; preds = %L133.postloop
  br label %odessy.chk4

odessy.chk4.loopexit50:                           ; preds = %L133
  br label %odessy.chk4

odessy.chk4:                                      ; preds = %odessy.chk4.loopexit50, %odessy.chk4.loopexit
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5.loopexit:                             ; preds = %L133.preheader.split.split.split.postloop
  br label %odessy.chk5

odessy.chk5.loopexit62:                           ; preds = %L133.preheader.split.split.split
  br label %odessy.chk5

odessy.chk5:                                      ; preds = %odessy.chk5.loopexit62, %odessy.chk5.loopexit
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %L133.preheader.split.split.split.us
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %L133.preheader.split.split.us
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %L55.preheader.split
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9.loopexit:                             ; preds = %L163.postloop
  br label %odessy.chk9

odessy.chk9.loopexit51:                           ; preds = %L163
  br label %odessy.chk9

odessy.chk9:                                      ; preds = %odessy.chk9.loopexit51, %odessy.chk9.loopexit
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10.loopexit:                            ; preds = %L163.peel.postloop
  br label %odessy.chk10

odessy.chk10.loopexit63:                          ; preds = %L163.peel
  br label %odessy.chk10

odessy.chk10:                                     ; preds = %odessy.chk10.loopexit63, %odessy.chk10.loopexit
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %L163.us334
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12.loopexit:                            ; preds = %L223.postloop
  br label %odessy.chk12

odessy.chk12.loopexit52:                          ; preds = %L223
  br label %odessy.chk12

odessy.chk12:                                     ; preds = %odessy.chk12.loopexit52, %odessy.chk12.loopexit
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13.loopexit:                            ; preds = %L223.peel.postloop
  br label %odessy.chk13

odessy.chk13.loopexit64:                          ; preds = %L223.peel
  br label %odessy.chk13

odessy.chk13:                                     ; preds = %odessy.chk13.loopexit64, %odessy.chk13.loopexit
  call void @odessy.chk(i32 13)
  unreachable

postloop:                                         ; preds = %main.pseudo.exit
  br label %L55.postloop

L55.postloop:                                     ; preds = %postloop, %L311.loopexit.postloop
  %indvar1573.postloop = phi i64 [ %indvar1573.copy, %postloop ], [ %indvar.next1574.postloop, %L311.loopexit.postloop ]
  %value_phi20.postloop = phi i64 [ %value_phi20.copy, %postloop ], [ %193, %L311.loopexit.postloop ]
  %121 = shl i64 %indvar1573.postloop, 3, !dbg !89
  %122 = add nsw i64 %value_phi20.postloop, -1, !dbg !89
  %.not1442.postloop = icmp ult i64 %122, %.size2.sroa.1.0.copyload, !dbg !96
  br i1 %.not1442.postloop, label %L85.postloop, label %odessy.chk.loopexit, !dbg !80

L85.postloop:                                     ; preds = %L55.postloop
  %123 = add i64 %26, %value_phi20.postloop, !dbg !108
  %memoryref_offset.postloop = shl i64 %123, 3, !dbg !119
  %gep470.postloop = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset.postloop, !dbg !119
  %124 = load double, ptr %gep470.postloop, align 8, !dbg !119, !tbaa !122, !alias.scope !125, !noalias !126
  %memoryref_data47.postloop = load ptr, ptr %0, align 8
  %invariant.gep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 -8, !dbg !127
  %.size58.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.postloop = freeze i64 %.size58.sroa.0.0.copyload.postloop, !dbg !127
  %.size58.sroa.2.0.copyload.postloop = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %125 = icmp uge i64 %122, %.size58.sroa.2.0.copyload.postloop
  %126 = add nuw i64 %value_phi20.postloop, 2305843009213693951
  %127 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %126
  %memoryref_data66.postloop = load ptr, ptr %2, align 8
  %invariant.gep166.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 -8, !dbg !127
  %.size77.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr, align 8
  %128 = mul i64 %.size77.sroa.0.0.copyload.postloop, %25
  %.fr268.postloop = freeze i1 %125
  %.fr268.not.postloop = xor i1 %.fr268.postloop, true
  br i1 %.fr268.not.postloop, label %L133.preheader.split.split.postloop, label %L133.preheader.split.split.us.loopexit

L133.preheader.split.split.postloop:              ; preds = %L85.postloop
  %.size77.sroa.2.0.copyload.postloop = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %129 = icmp uge i64 %23, %.size77.sroa.2.0.copyload.postloop
  %.fr382.postloop = freeze i1 %129
  %130 = icmp eq i64 %.size39.sroa.0.0.copyload, 0, !dbg !130
  %.fr382.not.postloop = xor i1 %.fr382.postloop, true
  br i1 %.fr382.not.postloop, label %L133.preheader.split.split.split.postloop, label %L133.preheader.split.split.split.us.loopexit

L133.preheader.split.split.split.postloop:        ; preds = %L133.preheader.split.split.postloop
  %.not48.postloop = xor i1 %130, true, !dbg !127
  br i1 %.not48.postloop, label %L163.peel.postloop, label %odessy.chk5.loopexit, !dbg !127

L163.peel.postloop:                               ; preds = %L133.preheader.split.split.split.postloop
  %131 = shl i64 %27, 3, !dbg !134
  %gep.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %131, !dbg !134
  %132 = load double, ptr %gep.peel.postloop, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %.not1444.postloop = icmp ne i64 %.size58.sroa.0.0.copyload.fr.postloop, 0, !dbg !130
  br i1 %.not1444.postloop, label %L223.peel.postloop, label %odessy.chk10.loopexit, !dbg !127

L223.peel.postloop:                               ; preds = %L163.peel.postloop
  %.not1445.postloop = icmp ne i64 %.size77.sroa.0.0.copyload.postloop, 0, !dbg !136
  br i1 %.not1445.postloop, label %L285.peel.postloop, label %odessy.chk13.loopexit, !dbg !140

L285.peel.postloop:                               ; preds = %L223.peel.postloop
  %133 = shl i64 %127, 3, !dbg !134
  %gep167.peel.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 %133, !dbg !134
  %134 = load double, ptr %gep167.peel.postloop, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %135 = fmul double %124, %134, !dbg !145
  %136 = fadd double %132, %135, !dbg !148
  %137 = shl i64 %128, 3, !dbg !150
  %gep169.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %137, !dbg !150
  store double %136, ptr %gep169.peel.postloop, align 8, !dbg !150, !tbaa !122, !alias.scope !125, !noalias !126
  %.not163.not.peel.postloop = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1, !dbg !151
  br i1 %.not163.not.peel.postloop, label %L311.loopexit.postloop, label %L133.preheader.postloop, !dbg !153

L133.preheader.postloop:                          ; preds = %L285.peel.postloop
  %138 = add i64 %.size77.sroa.0.0.copyload.postloop, -1, !dbg !127
  %umin1598.postloop = call i64 @llvm.umin.i64(i64 %138, i64 %10), !dbg !127
  %139 = freeze i64 %umin1598.postloop, !dbg !127
  %140 = add i64 %.size58.sroa.0.0.copyload.fr.postloop, -1, !dbg !127
  %umin1599.postloop = call i64 @llvm.umin.i64(i64 %139, i64 %140), !dbg !127
  %umin1600.postloop = call i64 @llvm.umin.i64(i64 %umin1599.postloop, i64 %29), !dbg !127
  %141 = add i64 %umin1600.postloop, 1, !dbg !127
  %min.iters.check.postloop = icmp ult i64 %141, 21, !dbg !127
  br i1 %min.iters.check.postloop, label %scalar.ph.postloop, label %vector.scevcheck.postloop, !dbg !127

vector.scevcheck.postloop:                        ; preds = %L133.preheader.postloop
  %scevgep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 8, !dbg !127
  %scevgep1566.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %30, !dbg !127
  %mul.result.postloop = shl i64 %umin1600.postloop, 3, !dbg !127
  %142 = getelementptr i8, ptr %scevgep1566.postloop, i64 %mul.result.postloop, !dbg !127
  %143 = icmp ult ptr %142, %scevgep1566.postloop, !dbg !127
  %144 = mul i64 %22, %.size77.sroa.0.0.copyload.postloop, !dbg !127
  %scevgep1568.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %144, !dbg !127
  %mul.overflow1571.postloop = icmp ugt i64 %umin1600.postloop, 2305843009213693951, !dbg !127
  %145 = getelementptr i8, ptr %scevgep1568.postloop, i64 %mul.result.postloop, !dbg !127
  %146 = icmp ult ptr %145, %scevgep1568.postloop, !dbg !127
  %147 = or i1 %146, %mul.overflow1571.postloop, !dbg !127
  %scevgep1572.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 8, !dbg !127
  %148 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %121, !dbg !127
  %scevgep1575.postloop = getelementptr i8, ptr %scevgep1572.postloop, i64 %148, !dbg !127
  %149 = getelementptr i8, ptr %scevgep1575.postloop, i64 %mul.result.postloop, !dbg !127
  %150 = icmp ult ptr %149, %scevgep1575.postloop, !dbg !127
  %151 = or i1 %143, %147, !dbg !127
  %152 = or i1 %150, %151, !dbg !127
  br i1 %152, label %scalar.ph.postloop, label %vector.memcheck.postloop

vector.memcheck.postloop:                         ; preds = %vector.scevcheck.postloop
  %scevgep1581.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 16, !dbg !127
  %153 = getelementptr i8, ptr %scevgep1581.postloop, i64 %144, !dbg !127
  %scevgep1585.postloop = getelementptr i8, ptr %153, i64 %mul.result.postloop, !dbg !127
  %scevgep1589.postloop = getelementptr i8, ptr %scevgep1581.postloop, i64 %30, !dbg !127
  %scevgep1590.postloop = getelementptr i8, ptr %scevgep1589.postloop, i64 %mul.result.postloop, !dbg !127
  %scevgep1593.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 16, !dbg !127
  %154 = getelementptr i8, ptr %scevgep1593.postloop, i64 %148, !dbg !127
  %scevgep1594.postloop = getelementptr i8, ptr %154, i64 %mul.result.postloop, !dbg !127
  %bound0.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1590.postloop, !dbg !127
  %bound1.postloop = icmp ult ptr %scevgep1566.postloop, %scevgep1585.postloop, !dbg !127
  %found.conflict.postloop = and i1 %bound0.postloop, %bound1.postloop, !dbg !127
  %bound01595.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1594.postloop, !dbg !127
  %bound11596.postloop = icmp ult ptr %scevgep1575.postloop, %scevgep1585.postloop, !dbg !127
  %found.conflict1597.postloop = and i1 %bound01595.postloop, %bound11596.postloop, !dbg !127
  %conflict.rdx.postloop = or i1 %found.conflict.postloop, %found.conflict1597.postloop, !dbg !127
  br i1 %conflict.rdx.postloop, label %scalar.ph.postloop, label %vector.ph.postloop

vector.ph.postloop:                               ; preds = %vector.memcheck.postloop
  %n.mod.vf.postloop = and i64 %141, 7, !dbg !127
  %155 = icmp eq i64 %n.mod.vf.postloop, 0, !dbg !127
  %156 = select i1 %155, i64 8, i64 %n.mod.vf.postloop, !dbg !127
  %n.vec.postloop = sub i64 %141, %156, !dbg !127
  %ind.end.postloop = add i64 %n.vec.postloop, 2, !dbg !127
  %broadcast.splatinsert.postloop = insertelement <2 x double> poison, double %124, i64 0, !dbg !127
  %broadcast.splat.postloop = shufflevector <2 x double> %broadcast.splatinsert.postloop, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !127
  br label %vector.body.postloop, !dbg !127

vector.body.postloop:                             ; preds = %vector.body.postloop, %vector.ph.postloop
  %index.postloop = phi i64 [ 0, %vector.ph.postloop ], [ %index.next.postloop, %vector.body.postloop ]
  %offset.idx.postloop = or disjoint i64 %index.postloop, 2, !dbg !127
  %157 = add i64 %27, %offset.idx.postloop, !dbg !154
  %158 = shl i64 %157, 3, !dbg !134
  %159 = getelementptr i8, ptr %invariant.gep.postloop, i64 %158, !dbg !134
  %160 = getelementptr double, ptr %159, i64 2, !dbg !134
  %161 = getelementptr double, ptr %159, i64 4, !dbg !134
  %162 = getelementptr double, ptr %159, i64 6, !dbg !134
  %wide.load.postloop = load <2 x double>, ptr %159, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %wide.load1601.postloop = load <2 x double>, ptr %160, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %wide.load1602.postloop = load <2 x double>, ptr %161, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %wide.load1603.postloop = load <2 x double>, ptr %162, align 8, !dbg !134, !tbaa !122, !alias.scope !160, !noalias !126
  %163 = add i64 %127, %offset.idx.postloop, !dbg !154
  %164 = shl i64 %163, 3, !dbg !134
  %165 = getelementptr i8, ptr %invariant.gep166.postloop, i64 %164, !dbg !134
  %166 = getelementptr double, ptr %165, i64 2, !dbg !134
  %167 = getelementptr double, ptr %165, i64 4, !dbg !134
  %168 = getelementptr double, ptr %165, i64 6, !dbg !134
  %wide.load1604.postloop = load <2 x double>, ptr %165, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %wide.load1605.postloop = load <2 x double>, ptr %166, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %wide.load1606.postloop = load <2 x double>, ptr %167, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %wide.load1607.postloop = load <2 x double>, ptr %168, align 8, !dbg !134, !tbaa !122, !alias.scope !163, !noalias !126
  %169 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1604.postloop, !dbg !145
  %170 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1605.postloop, !dbg !145
  %171 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1606.postloop, !dbg !145
  %172 = fmul <2 x double> %broadcast.splat.postloop, %wide.load1607.postloop, !dbg !145
  %173 = fadd <2 x double> %wide.load.postloop, %169, !dbg !148
  %174 = fadd <2 x double> %wide.load1601.postloop, %170, !dbg !148
  %175 = fadd <2 x double> %wide.load1602.postloop, %171, !dbg !148
  %176 = fadd <2 x double> %wide.load1603.postloop, %172, !dbg !148
  %177 = add i64 %128, %offset.idx.postloop, !dbg !165
  %178 = shl i64 %177, 3, !dbg !150
  %179 = getelementptr i8, ptr %invariant.gep.postloop, i64 %178, !dbg !150
  %180 = getelementptr double, ptr %179, i64 2, !dbg !150
  %181 = getelementptr double, ptr %179, i64 4, !dbg !150
  %182 = getelementptr double, ptr %179, i64 6, !dbg !150
  store <2 x double> %173, ptr %179, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  store <2 x double> %174, ptr %180, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  store <2 x double> %175, ptr %181, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  store <2 x double> %176, ptr %182, align 8, !dbg !150, !tbaa !122, !alias.scope !171, !noalias !173
  %index.next.postloop = add nuw i64 %index.postloop, 8
  %183 = icmp eq i64 %index.next.postloop, %n.vec.postloop
  br i1 %183, label %scalar.ph.loopexit.postloop, label %vector.body.postloop, !llvm.loop !174

scalar.ph.postloop:                               ; preds = %scalar.ph.loopexit.postloop, %vector.memcheck.postloop, %vector.scevcheck.postloop, %L133.preheader.postloop
  %bc.resume.val.postloop = phi i64 [ 2, %L133.preheader.postloop ], [ 2, %vector.scevcheck.postloop ], [ 2, %vector.memcheck.postloop ], [ %ind.end.postloop, %scalar.ph.loopexit.postloop ]
  br label %L133.postloop, !dbg !127

L133.postloop:                                    ; preds = %L285.postloop, %scalar.ph.postloop
  %value_phi35.postloop = phi i64 [ %192, %L285.postloop ], [ %bc.resume.val.postloop, %scalar.ph.postloop ]
  %184 = add i64 %value_phi35.postloop, -1, !dbg !176
  %.not1446.postloop = icmp ult i64 %184, %.size39.sroa.0.0.copyload, !dbg !130
  br i1 %.not1446.postloop, label %L163.postloop, label %odessy.chk4.loopexit, !dbg !127

L163.postloop:                                    ; preds = %L133.postloop
  %185 = add i64 %27, %value_phi35.postloop, !dbg !154
  %memoryref_offset49.postloop = shl i64 %185, 3, !dbg !134
  %gep.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset49.postloop, !dbg !134
  %186 = load double, ptr %gep.postloop, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %.not1447.postloop = icmp ult i64 %184, %.size58.sroa.0.0.copyload.fr.postloop, !dbg !130
  br i1 %.not1447.postloop, label %L223.postloop, label %odessy.chk9.loopexit, !dbg !127

L223.postloop:                                    ; preds = %L163.postloop
  %.not1448.postloop = icmp ult i64 %184, %.size77.sroa.0.0.copyload.postloop, !dbg !136
  br i1 %.not1448.postloop, label %L285.postloop, label %odessy.chk12.loopexit, !dbg !140

L285.postloop:                                    ; preds = %L223.postloop
  %187 = add i64 %127, %value_phi35.postloop, !dbg !154
  %memoryref_offset68.postloop = shl i64 %187, 3, !dbg !134
  %gep167.postloop = getelementptr i8, ptr %invariant.gep166.postloop, i64 %memoryref_offset68.postloop, !dbg !134
  %188 = load double, ptr %gep167.postloop, align 8, !dbg !134, !tbaa !122, !alias.scope !125, !noalias !126
  %189 = fmul double %124, %188, !dbg !145
  %190 = fadd double %186, %189, !dbg !148
  %191 = add i64 %128, %value_phi35.postloop, !dbg !165
  %memoryref_offset85.postloop = shl i64 %191, 3, !dbg !150
  %gep169.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset85.postloop, !dbg !150
  store double %190, ptr %gep169.postloop, align 8, !dbg !150, !tbaa !122, !alias.scope !125, !noalias !126
  %.not163.not.postloop = icmp eq i64 %value_phi35.postloop, %value_phi31, !dbg !151
  %192 = add i64 %value_phi35.postloop, 1, !dbg !152
  br i1 %.not163.not.postloop, label %L311.loopexit.loopexit.postloop, label %L133.postloop, !dbg !153, !llvm.loop !177

L311.loopexit.postloop:                           ; preds = %L311.loopexit.loopexit.postloop, %L285.peel.postloop
  %.not164.not.postloop = icmp eq i64 %value_phi20.postloop, %value_phi16, !dbg !97
  %193 = add nuw i64 %value_phi20.postloop, 1, !dbg !98
  %indvar.next1574.postloop = add i64 %indvar1573.postloop, 1, !dbg !99
  br i1 %.not164.not.postloop, label %L322.loopexit.split.loopexit, label %L55.postloop, !dbg !99, !llvm.loop !184, !loop_constrainer.loop.clone !17

L311.loopexit.loopexit.postloop:                  ; preds = %L285.postloop
  br label %L311.loopexit.postloop, !dbg !97

scalar.ph.loopexit.postloop:                      ; preds = %vector.body.postloop
  br label %scalar.ph.postloop, !dbg !127
}

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #2

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #3

declare swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself, ptr) #4

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_obj(ptr, i64, ptr) #5

; Function Attrs: noreturn
declare void @ijl_throw(ptr) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #8

declare noalias nonnull ptr @julia.new_gc_frame(i32)

declare void @julia.push_gc_frame(ptr, i32)

declare ptr @julia.get_gc_frame_slot(ptr, i32)

declare void @julia.pop_gc_frame(ptr)

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_bytes(ptr, i64, i64) #9

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #1

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #9

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

declare void @llvm.lifetime.start.i64(i64)

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { "julia.fsig"="gemm!(Array{Float64, 2}, Array{Float64, 2}, Array{Float64, 2})" "probe-stack"="inline-asm" }
attributes #1 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "julia.fsig"="throw_boundserror(Array{Float64, 2}, Tuple{Int64, Int64})" "probe-stack"="inline-asm" }
attributes #4 = { "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #5 = { mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { noreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind memory(none) }

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
!86 = distinct !{!86, !87, !88}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = !DILocation(line: 86, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!91 = !DILocation(line: 754, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "checkindex;", linkageName: "checkindex", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!93 = !DILocation(line: 725, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "checkbounds_indices;", linkageName: "checkbounds_indices", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DILocation(line: 681, scope: !81, inlinedAt: !80)
!96 = !DILocation(line: 519, scope: !69, inlinedAt: !91)
!97 = !DILocation(line: 637, scope: !52, inlinedAt: !98)
!98 = !DILocation(line: 921, scope: !77, inlinedAt: !99)
!99 = !DILocation(line: 23, scope: !4)
!100 = distinct !{!100, !88, !87}
!101 = !DILocation(line: 637, scope: !52, inlinedAt: !102)
!102 = !DILocation(line: 921, scope: !77, inlinedAt: !103)
!103 = !DILocation(line: 24, scope: !4)
!104 = !{!105, !105, i64 0}
!105 = !{!"jtbaa_stack", !24, i64 0}
!106 = !{!33}
!107 = !{!32, !34, !35, !29}
!108 = !DILocation(line: 87, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!110 = !DILocation(line: 3081, scope: !111, inlinedAt: !112)
!111 = distinct !DISubprogram(name: "_sub2ind_recurse;", linkageName: "_sub2ind_recurse", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!112 = !DILocation(line: 3081, scope: !111, inlinedAt: !113)
!113 = !DILocation(line: 3065, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "_sub2ind;", linkageName: "_sub2ind", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!115 = !DILocation(line: 3049, scope: !114, inlinedAt: !116)
!116 = !DILocation(line: 1377, scope: !117, inlinedAt: !118)
!117 = distinct !DISubprogram(name: "_to_linear_index;", linkageName: "_to_linear_index", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!118 = !DILocation(line: 929, scope: !84, inlinedAt: !85)
!119 = !DILocation(line: 920, scope: !120, inlinedAt: !118)
!120 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !121, file: !121, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!121 = !DIFile(filename: "essentials.jl", directory: ".")
!122 = !{!123, !123, i64 0}
!123 = !{!"jtbaa_arraybuf", !124, i64 0}
!124 = !{!"jtbaa_data", !24, i64 0}
!125 = !{!34}
!126 = !{!32, !33, !35, !29}
!127 = !DILocation(line: 699, scope: !81, inlinedAt: !128)
!128 = !DILocation(line: 928, scope: !84, inlinedAt: !129)
!129 = !DILocation(line: 21, scope: !4)
!130 = !DILocation(line: 519, scope: !69, inlinedAt: !131)
!131 = !DILocation(line: 754, scope: !92, inlinedAt: !132)
!132 = !DILocation(line: 725, scope: !94, inlinedAt: !133)
!133 = !DILocation(line: 681, scope: !81, inlinedAt: !127)
!134 = !DILocation(line: 920, scope: !120, inlinedAt: !135)
!135 = !DILocation(line: 929, scope: !84, inlinedAt: !129)
!136 = !DILocation(line: 519, scope: !69, inlinedAt: !137)
!137 = !DILocation(line: 754, scope: !92, inlinedAt: !138)
!138 = !DILocation(line: 725, scope: !94, inlinedAt: !139)
!139 = !DILocation(line: 681, scope: !81, inlinedAt: !140)
!140 = !DILocation(line: 699, scope: !81, inlinedAt: !141)
!141 = !DILocation(line: 1002, scope: !142, inlinedAt: !143)
!142 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!143 = !DILocation(line: 997, scope: !144, inlinedAt: !129)
!144 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!145 = !DILocation(line: 497, scope: !146, inlinedAt: !129)
!146 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !147, file: !147, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!147 = !DIFile(filename: "float.jl", directory: ".")
!148 = !DILocation(line: 495, scope: !149, inlinedAt: !129)
!149 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !147, file: !147, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!150 = !DILocation(line: 1003, scope: !142, inlinedAt: !143)
!151 = !DILocation(line: 637, scope: !52, inlinedAt: !152)
!152 = !DILocation(line: 921, scope: !77, inlinedAt: !153)
!153 = !DILocation(line: 22, scope: !4)
!154 = !DILocation(line: 87, scope: !109, inlinedAt: !155)
!155 = !DILocation(line: 3081, scope: !111, inlinedAt: !156)
!156 = !DILocation(line: 3081, scope: !111, inlinedAt: !157)
!157 = !DILocation(line: 3065, scope: !114, inlinedAt: !158)
!158 = !DILocation(line: 3049, scope: !114, inlinedAt: !159)
!159 = !DILocation(line: 1377, scope: !117, inlinedAt: !135)
!160 = !{!34, !161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!34, !164}
!164 = distinct !{!164, !162}
!165 = !DILocation(line: 87, scope: !109, inlinedAt: !166)
!166 = !DILocation(line: 3081, scope: !111, inlinedAt: !167)
!167 = !DILocation(line: 3081, scope: !111, inlinedAt: !168)
!168 = !DILocation(line: 3065, scope: !114, inlinedAt: !169)
!169 = !DILocation(line: 3049, scope: !114, inlinedAt: !170)
!170 = !DILocation(line: 1377, scope: !117, inlinedAt: !150)
!171 = !{!34, !172}
!172 = distinct !{!172, !162}
!173 = !{!32, !33, !35, !29, !161, !164}
!174 = distinct !{!174, !175, !87, !88}
!175 = !{!"llvm.loop.peeled.count", i32 1}
!176 = !DILocation(line: 86, scope: !90, inlinedAt: !131)
!177 = distinct !{!177, !175, !87}
!178 = !DILocation(line: 25, scope: !4)
!179 = !{!180, !180, i64 0}
!180 = !{!"jtbaa_tag", !124, i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"jtbaa_immut", !183, i64 0}
!183 = !{!"jtbaa_value", !124, i64 0}
!184 = distinct !{!184, !185, !186, !187, !188}
!185 = !{!"llvm.loop.unroll.disable"}
!186 = !{!"llvm.loop.vectorize.enable", i1 false}
!187 = !{!"llvm.loop.licm_versioning.disable"}
!188 = !{!"llvm.loop.distribute.enable", i1 false}
