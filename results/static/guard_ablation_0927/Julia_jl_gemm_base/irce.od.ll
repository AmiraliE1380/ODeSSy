; ModuleID = 'results/static/guard_ablation_0927/Julia_jl_gemm_base/irce.ll'
source_filename = "gemm!"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"jl_global#152.jit" = private alias ptr, inttoptr (i64 126037267754256 to ptr)
@"jl_global#151.jit" = private alias ptr, inttoptr (i64 126037267754384 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 126037267754512 to ptr)
@"+Main.Base.DimensionMismatch#150.jit" = private alias ptr, inttoptr (i64 126037352129680 to ptr)

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
  %thread_ptr = call ptr asm "movq %fs:0, $0", "=r"() #13
  %tls_ppgcstack = getelementptr inbounds i8, ptr %thread_ptr, i64 -8
  %tls_pgcstack = load ptr, ptr %tls_ppgcstack, align 8
  store i64 4, ptr %gcframe1, align 8, !tbaa !22
  %frame.prev = getelementptr inbounds ptr, ptr %gcframe1, i64 1
  %task.gcstack = load ptr, ptr %tls_pgcstack, align 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !22
  store ptr %gcframe1, ptr %tls_pgcstack, align 8
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
  %ptls_field = getelementptr inbounds i8, ptr %tls_pgcstack, i64 16
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
  %umin1602 = call i64 @llvm.umin.i64(i64 %.size2.sroa.1.0.copyload, i64 %12)
  %13 = add nuw i64 %umin1602, 1
  br label %L37.us1021

L37.us1021:                                       ; preds = %L322.loopexit.split.us.us, %L37.us1021.preheader
  %value_phi13.us1030 = phi i64 [ %21, %L322.loopexit.split.us.us ], [ 1, %L37.us1021.preheader ]
  %14 = add nsw i64 %value_phi13.us1030, -1
  %15 = icmp uge i64 %14, %.size.sroa.3.0.copyload
  %.fr578.us = freeze i1 %15
  %.fr578.us.not = xor i1 %.fr578.us, true
  %min.iters.check1605 = icmp ult i64 %umin1602, 32, !dbg !80
  br i1 %min.iters.check1605, label %scalar.ph1604, label %vector.ph1606, !dbg !80

vector.ph1606:                                    ; preds = %L37.us1021
  %n.mod.vf1607 = and i64 %13, 31, !dbg !80
  %16 = icmp eq i64 %n.mod.vf1607, 0, !dbg !80
  %17 = select i1 %16, i64 32, i64 %n.mod.vf1607, !dbg !80
  %n.vec1608 = sub i64 %13, %17, !dbg !80
  %ind.end1609 = add i64 %n.vec1608, 1, !dbg !80
  br label %vector.body1611, !dbg !80

vector.body1611:                                  ; preds = %vector.body1611, %vector.ph1606
  %index1612 = phi i64 [ 0, %vector.ph1606 ], [ %index.next1613, %vector.body1611 ]
  %index.next1613 = add nuw i64 %index1612, 32
  %18 = icmp eq i64 %index.next1613, %n.vec1608
  br i1 %18, label %scalar.ph1604, label %vector.body1611, !llvm.loop !86

scalar.ph1604:                                    ; preds = %vector.body1611, %L37.us1021
  %bc.resume.val1610 = phi i64 [ 1, %L37.us1021 ], [ %ind.end1609, %vector.body1611 ]
  br label %L55.us662.us, !dbg !80

L55.us662.us:                                     ; preds = %L55.us662.us, %scalar.ph1604
  %value_phi20.us669.us = phi i64 [ %20, %L55.us662.us ], [ %bc.resume.val1610, %scalar.ph1604 ]
  %19 = add nsw i64 %value_phi20.us669.us, -1, !dbg !89
  %.not1449 = icmp ult i64 %19, %.size2.sroa.1.0.copyload, !dbg !96
  %.not164.not.us.us = icmp eq i64 %value_phi20.us669.us, %value_phi16, !dbg !97
  %20 = add nuw i64 %value_phi20.us669.us, 1, !dbg !98
  br i1 %.not164.not.us.us, label %L322.loopexit.split.us.us, label %L55.us662.us, !dbg !99, !llvm.loop !100

L322.loopexit.split.us.us:                        ; preds = %L55.us662.us
  %.not165.not.us1040 = icmp eq i64 %value_phi13.us1030, %value_phi, !dbg !101
  %21 = add nuw i64 %value_phi13.us1030, 1, !dbg !102
  br i1 %.not165.not.us1040, label %L333, label %L37.us1021, !dbg !103

L37:                                              ; preds = %L322.loopexit.split, %L37.preheader1455
  %indvar = phi i64 [ 0, %L37.preheader1455 ], [ %indvar.next, %L322.loopexit.split ]
  %value_phi13 = phi i64 [ 1, %L37.preheader1455 ], [ %97, %L322.loopexit.split ]
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
  %.size39.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %28 = icmp uge i64 %23, %.size39.sroa.2.0.copyload
  %.fr = freeze i1 %28
  %29 = add i64 %.size39.sroa.0.0.copyload, -1, !dbg !80
  %30 = mul i64 %.size39.sroa.0.0.copyload, %22, !dbg !80
  %31 = icmp ult i64 0, %exit.mainloop.at, !dbg !80
  br i1 %31, label %L55, label %postloop, !dbg !80

L55:                                              ; preds = %L37, %L311.loopexit
  %indvar1573 = phi i64 [ %indvar.next1574, %L311.loopexit ], [ 0, %L37 ]
  %value_phi20 = phi i64 [ %93, %L311.loopexit ], [ 1, %L37 ]
  %32 = shl i64 %indvar1573, 3, !dbg !89
  %33 = add nsw i64 %value_phi20, -1, !dbg !89
  %.not1442 = icmp ult i64 %33, %.size2.sroa.1.0.copyload, !dbg !96
  %34 = add i64 %26, %value_phi20, !dbg !104
  %memoryref_offset = shl i64 %34, 3, !dbg !115
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !115
  %35 = load double, ptr %gep470, align 8, !dbg !115, !tbaa !118, !alias.scope !121, !noalias !122
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !123
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !123
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %36 = icmp uge i64 %33, %.size58.sroa.2.0.copyload
  %37 = add nuw i64 %value_phi20, 2305843009213693951
  %38 = mul i64 %.size58.sroa.0.0.copyload.fr, %37
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !123
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %39 = mul i64 %.size77.sroa.0.0.copyload, %25
  %.fr268 = freeze i1 %36
  %.fr268.not = xor i1 %.fr268, true
  br i1 %.fr268.not, label %L133.preheader.split.split, label %L133.preheader.split.split.us

L133.preheader.split.split.us:                    ; preds = %L55, %L85.postloop
  %.size39.sroa.0.0.copyload.lcssa28 = phi i64 [ %.size39.sroa.0.0.copyload, %L85.postloop ], [ %.size39.sroa.0.0.copyload, %L55 ]
  %value_phi20.lcssa2 = phi i64 [ %value_phi20.postloop, %L85.postloop ], [ %value_phi20, %L55 ]
  %40 = icmp eq i64 %.size39.sroa.0.0.copyload.lcssa28, 0, !dbg !126
  %41 = getelementptr inbounds i8, ptr %"new::Tuple56", i64 8
  store i64 1, ptr %"new::Tuple56", align 1, !dbg !124, !tbaa !130, !alias.scope !132, !noalias !133
  store i64 %value_phi20.lcssa2, ptr %41, align 1, !dbg !124, !tbaa !130, !alias.scope !132, !noalias !133
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple56") #6, !dbg !123
  unreachable, !dbg !123

L133.preheader.split.split:                       ; preds = %L55
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %42 = icmp uge i64 %23, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %42
  %43 = icmp eq i64 %.size39.sroa.0.0.copyload, 0, !dbg !126
  %.fr382.not = xor i1 %.fr382, true
  br i1 %.fr382.not, label %L133.preheader.split.split.split, label %L163.us334

L163.us334:                                       ; preds = %L133.preheader.split.split.postloop, %L133.preheader.split.split
  %value_phi13.lcssa40 = phi i64 [ %value_phi13, %L133.preheader.split.split.postloop ], [ %value_phi13, %L133.preheader.split.split ]
  %.lcssa = phi i1 [ %113, %L133.preheader.split.split.postloop ], [ %43, %L133.preheader.split.split ], !dbg !126
  %.size58.sroa.0.0.copyload.fr.lcssa11 = phi i64 [ %.size58.sroa.0.0.copyload.fr.postloop, %L133.preheader.split.split.postloop ], [ %.size58.sroa.0.0.copyload.fr, %L133.preheader.split.split ], !dbg !123
  %44 = icmp eq i64 %.size58.sroa.0.0.copyload.fr.lcssa11, 0, !dbg !126
  %45 = getelementptr inbounds i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 1, !dbg !134, !tbaa !130, !alias.scope !132, !noalias !133
  store i64 %value_phi13.lcssa40, ptr %45, align 1, !dbg !134, !tbaa !130, !alias.scope !132, !noalias !133
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #6, !dbg !138
  unreachable, !dbg !138

L133.preheader.split.split.split:                 ; preds = %L133.preheader.split.split
  %.not48 = xor i1 %43, true, !dbg !123
  br i1 %.not48, label %L163.peel, label %odessy.chk5, !dbg !123

L163.peel:                                        ; preds = %L133.preheader.split.split.split
  %46 = shl i64 %27, 3, !dbg !139
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %46, !dbg !139
  %47 = load double, ptr %gep.peel, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %.not1444 = icmp ne i64 %.size58.sroa.0.0.copyload.fr, 0, !dbg !126
  br i1 %.not1444, label %L223.peel, label %odessy.chk10, !dbg !123

L223.peel:                                        ; preds = %L163.peel
  %.not1445 = icmp ne i64 %.size77.sroa.0.0.copyload, 0, !dbg !141
  br i1 %.not1445, label %L285.peel, label %odessy.chk13, !dbg !138

L285.peel:                                        ; preds = %L223.peel
  %48 = shl i64 %38, 3, !dbg !139
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %48, !dbg !139
  %49 = load double, ptr %gep167.peel, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %50 = fmul double %35, %49, !dbg !145
  %51 = fadd double %47, %50, !dbg !148
  %52 = shl i64 %39, 3, !dbg !150
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %52, !dbg !150
  store double %51, ptr %gep169.peel, align 8, !dbg !150, !tbaa !118, !alias.scope !121, !noalias !122
  %.not163.not.peel = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1, !dbg !151
  br i1 %.not163.not.peel, label %L311.loopexit, label %L133.preheader, !dbg !153

L133.preheader:                                   ; preds = %L285.peel
  %53 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !123
  %umin1598 = call i64 @llvm.umin.i64(i64 %53, i64 %10), !dbg !123
  %54 = freeze i64 %umin1598, !dbg !123
  %55 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !123
  %umin1599 = call i64 @llvm.umin.i64(i64 %54, i64 %55), !dbg !123
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %29), !dbg !123
  %56 = add i64 %umin1600, 1, !dbg !123
  %min.iters.check = icmp ult i64 %56, 25, !dbg !123
  br i1 %min.iters.check, label %scalar.ph, label %vector.scevcheck, !dbg !123

vector.scevcheck:                                 ; preds = %L133.preheader
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !123
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %30, !dbg !123
  %mul.result = shl i64 %umin1600, 3, !dbg !123
  %57 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !123
  %58 = icmp ult ptr %57, %scevgep1566, !dbg !123
  %59 = mul i64 %22, %.size77.sroa.0.0.copyload, !dbg !123
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %59, !dbg !123
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !123
  %60 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !123
  %61 = icmp ult ptr %60, %scevgep1568, !dbg !123
  %62 = or i1 %61, %mul.overflow1571, !dbg !123
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !123
  %63 = mul i64 %.size58.sroa.0.0.copyload.fr, %32, !dbg !123
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %63, !dbg !123
  %64 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !123
  %65 = icmp ult ptr %64, %scevgep1575, !dbg !123
  %66 = or i1 %58, %62, !dbg !123
  %67 = or i1 %65, %66, !dbg !123
  br i1 %67, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !123
  %68 = getelementptr i8, ptr %scevgep1581, i64 %59, !dbg !123
  %scevgep1585 = getelementptr i8, ptr %68, i64 %mul.result, !dbg !123
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %30, !dbg !123
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !123
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !123
  %69 = getelementptr i8, ptr %scevgep1593, i64 %63, !dbg !123
  %scevgep1594 = getelementptr i8, ptr %69, i64 %mul.result, !dbg !123
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !123
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !123
  %found.conflict = and i1 %bound0, %bound1, !dbg !123
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !123
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !123
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !123
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !123
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %56, 3, !dbg !123
  %70 = icmp eq i64 %n.mod.vf, 0, !dbg !123
  %71 = select i1 %70, i64 4, i64 %n.mod.vf, !dbg !123
  %n.vec = sub i64 %56, %71, !dbg !123
  %ind.end = add i64 %n.vec, 2, !dbg !123
  %broadcast.splatinsert = insertelement <4 x double> poison, double %35, i64 0, !dbg !123
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer, !dbg !123
  br label %vector.body, !dbg !123

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !123
  %72 = add i64 %27, %offset.idx, !dbg !154
  %73 = shl i64 %72, 3, !dbg !139
  %74 = getelementptr i8, ptr %invariant.gep, i64 %73, !dbg !139
  %wide.load = load <4 x double>, ptr %74, align 8, !dbg !139, !tbaa !118, !alias.scope !160, !noalias !122
  %75 = add i64 %38, %offset.idx, !dbg !154
  %76 = shl i64 %75, 3, !dbg !139
  %77 = getelementptr i8, ptr %invariant.gep166, i64 %76, !dbg !139
  %wide.load1601 = load <4 x double>, ptr %77, align 8, !dbg !139, !tbaa !118, !alias.scope !163, !noalias !122
  %78 = fmul <4 x double> %broadcast.splat, %wide.load1601, !dbg !145
  %79 = fadd <4 x double> %wide.load, %78, !dbg !148
  %80 = add i64 %39, %offset.idx, !dbg !165
  %81 = shl i64 %80, 3, !dbg !150
  %82 = getelementptr i8, ptr %invariant.gep, i64 %81, !dbg !150
  store <4 x double> %79, ptr %82, align 8, !dbg !150, !tbaa !118, !alias.scope !171, !noalias !173
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, %n.vec
  br i1 %83, label %scalar.ph, label %vector.body, !llvm.loop !174

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %L133.preheader
  %bc.resume.val = phi i64 [ 2, %L133.preheader ], [ 2, %vector.scevcheck ], [ 2, %vector.memcheck ], [ %ind.end, %vector.body ]
  br label %L133, !dbg !123

L133:                                             ; preds = %L285, %scalar.ph
  %value_phi35 = phi i64 [ %92, %L285 ], [ %bc.resume.val, %scalar.ph ]
  %84 = add i64 %value_phi35, -1, !dbg !176
  %.not1446 = icmp ult i64 %84, %.size39.sroa.0.0.copyload, !dbg !126
  br i1 %.not1446, label %L163, label %odessy.chk4, !dbg !123

L163:                                             ; preds = %L133
  %85 = add i64 %27, %value_phi35, !dbg !154
  %memoryref_offset49 = shl i64 %85, 3, !dbg !139
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !139
  %86 = load double, ptr %gep, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %.not1447 = icmp ult i64 %84, %.size58.sroa.0.0.copyload.fr, !dbg !126
  br i1 %.not1447, label %L223, label %odessy.chk9, !dbg !123

L223:                                             ; preds = %L163
  %.not1448 = icmp ult i64 %84, %.size77.sroa.0.0.copyload, !dbg !141
  br i1 %.not1448, label %L285, label %odessy.chk12, !dbg !138

L285:                                             ; preds = %L223
  %87 = add i64 %38, %value_phi35, !dbg !154
  %memoryref_offset68 = shl i64 %87, 3, !dbg !139
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !139
  %88 = load double, ptr %gep167, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %89 = fmul double %35, %88, !dbg !145
  %90 = fadd double %86, %89, !dbg !148
  %91 = add i64 %39, %value_phi35, !dbg !165
  %memoryref_offset85 = shl i64 %91, 3, !dbg !150
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !150
  store double %90, ptr %gep169, align 8, !dbg !150, !tbaa !118, !alias.scope !121, !noalias !122
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !151
  %92 = add i64 %value_phi35, 1, !dbg !152
  br i1 %.not163.not, label %L311.loopexit, label %L133, !dbg !153, !llvm.loop !177

L311.loopexit:                                    ; preds = %L285, %L285.peel
  %.not164.not = icmp eq i64 %value_phi20, %value_phi16, !dbg !97
  %93 = add nuw i64 %value_phi20, 1, !dbg !98
  %indvar.next1574 = add i64 %indvar1573, 1, !dbg !99
  %94 = icmp ult i64 %value_phi20, %exit.mainloop.at, !dbg !99
  %95 = xor i1 %94, true, !dbg !99
  br i1 %95, label %main.exit.selector, label %L55, !dbg !99

main.exit.selector:                               ; preds = %L311.loopexit
  %.lcssa49 = phi i64 [ %93, %L311.loopexit ], !dbg !98
  %indvar.next1574.lcssa = phi i64 [ %indvar.next1574, %L311.loopexit ], !dbg !99
  %value_phi20.lcssa = phi i64 [ %value_phi20, %L311.loopexit ]
  %96 = icmp ult i64 %value_phi20.lcssa, %value_phi16, !dbg !99
  br i1 %96, label %postloop, label %L322.loopexit.split, !dbg !99

L322.loopexit.split:                              ; preds = %L311.loopexit.postloop, %main.exit.selector
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !101
  %97 = add nuw i64 %value_phi13, 1, !dbg !102
  %indvar.next = add i64 %indvar, 1, !dbg !103
  br i1 %.not165.not, label %L333, label %L37, !dbg !103

L333:                                             ; preds = %L322.loopexit.split, %L322.loopexit.split.us.us, %L37.preheader, %L20
  %frame.prev1759 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1759, ptr %tls_pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !178

L334:                                             ; preds = %L15
  %98 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %99 = extractvalue [1 x ptr] %98, 0, !dbg !58
  store ptr %99, ptr %gc_slot_addr_0, align 8
  %ptls_load1749 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1749, i32 360, i32 16, i64 126037352129680) #8, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch", i64 -1, !dbg !58
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !179
  store ptr %99, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !181, !alias.scope !121, !noalias !122
  store ptr null, ptr %gc_slot_addr_0, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %100 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01728 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %101 = extractvalue [1 x ptr] %100, 0, !dbg !55
  store ptr %101, ptr %gc_slot_addr_01728, align 8
  %ptls_load1753 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1753, i32 360, i32 16, i64 126037352129680) #8, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch115", i64 -1, !dbg !55
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !179
  store ptr %101, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !181, !alias.scope !121, !noalias !122
  store ptr null, ptr %gc_slot_addr_01728, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %102 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01730 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %103 = extractvalue [1 x ptr] %102, 0, !dbg !50
  store ptr %103, ptr %gc_slot_addr_01730, align 8
  %ptls_load1757 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1757, i32 360, i32 16, i64 126037352129680) #8, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch121", i64 -1, !dbg !50
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !179
  store ptr %103, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !181, !alias.scope !121, !noalias !122
  store ptr null, ptr %gc_slot_addr_01730, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk:                                       ; preds = %L55.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk4:                                      ; preds = %L133, %L133.postloop
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L133.preheader.split.split.split, %L133.preheader.split.split.split.postloop
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk9:                                      ; preds = %L163, %L163.postloop
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L163.peel, %L163.peel.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk12:                                     ; preds = %L223, %L223.postloop
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %L223.peel, %L223.peel.postloop
  call void @odessy.chk(i32 13)
  unreachable

postloop:                                         ; preds = %L37, %main.exit.selector
  %indvar1573.copy = phi i64 [ 0, %L37 ], [ %indvar.next1574.lcssa, %main.exit.selector ]
  %value_phi20.copy = phi i64 [ 1, %L37 ], [ %.lcssa49, %main.exit.selector ]
  %indvar.end = phi i64 [ 0, %L37 ], [ %value_phi20.lcssa, %main.exit.selector ]
  br label %L55.postloop

L55.postloop:                                     ; preds = %L311.loopexit.postloop, %postloop
  %indvar1573.postloop = phi i64 [ %indvar1573.copy, %postloop ], [ %indvar.next1574.postloop, %L311.loopexit.postloop ]
  %value_phi20.postloop = phi i64 [ %value_phi20.copy, %postloop ], [ %161, %L311.loopexit.postloop ]
  %104 = shl i64 %indvar1573.postloop, 3, !dbg !89
  %105 = add nsw i64 %value_phi20.postloop, -1, !dbg !89
  %.not1442.postloop = icmp ult i64 %105, %.size2.sroa.1.0.copyload, !dbg !96
  br i1 %.not1442.postloop, label %L85.postloop, label %odessy.chk, !dbg !80

L85.postloop:                                     ; preds = %L55.postloop
  %106 = add i64 %26, %value_phi20.postloop, !dbg !104
  %memoryref_offset.postloop = shl i64 %106, 3, !dbg !115
  %gep470.postloop = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset.postloop, !dbg !115
  %107 = load double, ptr %gep470.postloop, align 8, !dbg !115, !tbaa !118, !alias.scope !121, !noalias !122
  %memoryref_data47.postloop = load ptr, ptr %0, align 8
  %invariant.gep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 -8, !dbg !123
  %.size58.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.postloop = freeze i64 %.size58.sroa.0.0.copyload.postloop, !dbg !123
  %.size58.sroa.2.0.copyload.postloop = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %108 = icmp uge i64 %105, %.size58.sroa.2.0.copyload.postloop
  %109 = add nuw i64 %value_phi20.postloop, 2305843009213693951
  %110 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %109
  %memoryref_data66.postloop = load ptr, ptr %2, align 8
  %invariant.gep166.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 -8, !dbg !123
  %.size77.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr, align 8
  %111 = mul i64 %.size77.sroa.0.0.copyload.postloop, %25
  %.fr268.postloop = freeze i1 %108
  %.fr268.not.postloop = xor i1 %.fr268.postloop, true
  br i1 %.fr268.not.postloop, label %L133.preheader.split.split.postloop, label %L133.preheader.split.split.us

L133.preheader.split.split.postloop:              ; preds = %L85.postloop
  %.size77.sroa.2.0.copyload.postloop = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %112 = icmp uge i64 %23, %.size77.sroa.2.0.copyload.postloop
  %.fr382.postloop = freeze i1 %112
  %113 = icmp eq i64 %.size39.sroa.0.0.copyload, 0, !dbg !126
  %.fr382.not.postloop = xor i1 %.fr382.postloop, true
  br i1 %.fr382.not.postloop, label %L133.preheader.split.split.split.postloop, label %L163.us334

L133.preheader.split.split.split.postloop:        ; preds = %L133.preheader.split.split.postloop
  %.not48.postloop = xor i1 %113, true, !dbg !123
  br i1 %.not48.postloop, label %L163.peel.postloop, label %odessy.chk5, !dbg !123

L163.peel.postloop:                               ; preds = %L133.preheader.split.split.split.postloop
  %114 = shl i64 %27, 3, !dbg !139
  %gep.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %114, !dbg !139
  %115 = load double, ptr %gep.peel.postloop, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %.not1444.postloop = icmp ne i64 %.size58.sroa.0.0.copyload.fr.postloop, 0, !dbg !126
  br i1 %.not1444.postloop, label %L223.peel.postloop, label %odessy.chk10, !dbg !123

L223.peel.postloop:                               ; preds = %L163.peel.postloop
  %.not1445.postloop = icmp ne i64 %.size77.sroa.0.0.copyload.postloop, 0, !dbg !141
  br i1 %.not1445.postloop, label %L285.peel.postloop, label %odessy.chk13, !dbg !138

L285.peel.postloop:                               ; preds = %L223.peel.postloop
  %116 = shl i64 %110, 3, !dbg !139
  %gep167.peel.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 %116, !dbg !139
  %117 = load double, ptr %gep167.peel.postloop, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %118 = fmul double %107, %117, !dbg !145
  %119 = fadd double %115, %118, !dbg !148
  %120 = shl i64 %111, 3, !dbg !150
  %gep169.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %120, !dbg !150
  store double %119, ptr %gep169.peel.postloop, align 8, !dbg !150, !tbaa !118, !alias.scope !121, !noalias !122
  %.not163.not.peel.postloop = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1, !dbg !151
  br i1 %.not163.not.peel.postloop, label %L311.loopexit.postloop, label %L133.preheader.postloop, !dbg !153

L133.preheader.postloop:                          ; preds = %L285.peel.postloop
  %121 = add i64 %.size77.sroa.0.0.copyload.postloop, -1, !dbg !123
  %umin1598.postloop = call i64 @llvm.umin.i64(i64 %121, i64 %10), !dbg !123
  %122 = freeze i64 %umin1598.postloop, !dbg !123
  %123 = add i64 %.size58.sroa.0.0.copyload.fr.postloop, -1, !dbg !123
  %umin1599.postloop = call i64 @llvm.umin.i64(i64 %122, i64 %123), !dbg !123
  %umin1600.postloop = call i64 @llvm.umin.i64(i64 %umin1599.postloop, i64 %29), !dbg !123
  %124 = add i64 %umin1600.postloop, 1, !dbg !123
  %min.iters.check.postloop = icmp ult i64 %124, 25, !dbg !123
  br i1 %min.iters.check.postloop, label %scalar.ph.postloop, label %vector.scevcheck.postloop, !dbg !123

vector.scevcheck.postloop:                        ; preds = %L133.preheader.postloop
  %scevgep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 8, !dbg !123
  %scevgep1566.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %30, !dbg !123
  %mul.result.postloop = shl i64 %umin1600.postloop, 3, !dbg !123
  %125 = getelementptr i8, ptr %scevgep1566.postloop, i64 %mul.result.postloop, !dbg !123
  %126 = icmp ult ptr %125, %scevgep1566.postloop, !dbg !123
  %127 = mul i64 %22, %.size77.sroa.0.0.copyload.postloop, !dbg !123
  %scevgep1568.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %127, !dbg !123
  %mul.overflow1571.postloop = icmp ugt i64 %umin1600.postloop, 2305843009213693951, !dbg !123
  %128 = getelementptr i8, ptr %scevgep1568.postloop, i64 %mul.result.postloop, !dbg !123
  %129 = icmp ult ptr %128, %scevgep1568.postloop, !dbg !123
  %130 = or i1 %129, %mul.overflow1571.postloop, !dbg !123
  %scevgep1572.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 8, !dbg !123
  %131 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %104, !dbg !123
  %scevgep1575.postloop = getelementptr i8, ptr %scevgep1572.postloop, i64 %131, !dbg !123
  %132 = getelementptr i8, ptr %scevgep1575.postloop, i64 %mul.result.postloop, !dbg !123
  %133 = icmp ult ptr %132, %scevgep1575.postloop, !dbg !123
  %134 = or i1 %126, %130, !dbg !123
  %135 = or i1 %133, %134, !dbg !123
  br i1 %135, label %scalar.ph.postloop, label %vector.memcheck.postloop

vector.memcheck.postloop:                         ; preds = %vector.scevcheck.postloop
  %scevgep1581.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 16, !dbg !123
  %136 = getelementptr i8, ptr %scevgep1581.postloop, i64 %127, !dbg !123
  %scevgep1585.postloop = getelementptr i8, ptr %136, i64 %mul.result.postloop, !dbg !123
  %scevgep1589.postloop = getelementptr i8, ptr %scevgep1581.postloop, i64 %30, !dbg !123
  %scevgep1590.postloop = getelementptr i8, ptr %scevgep1589.postloop, i64 %mul.result.postloop, !dbg !123
  %scevgep1593.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 16, !dbg !123
  %137 = getelementptr i8, ptr %scevgep1593.postloop, i64 %131, !dbg !123
  %scevgep1594.postloop = getelementptr i8, ptr %137, i64 %mul.result.postloop, !dbg !123
  %bound0.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1590.postloop, !dbg !123
  %bound1.postloop = icmp ult ptr %scevgep1566.postloop, %scevgep1585.postloop, !dbg !123
  %found.conflict.postloop = and i1 %bound0.postloop, %bound1.postloop, !dbg !123
  %bound01595.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1594.postloop, !dbg !123
  %bound11596.postloop = icmp ult ptr %scevgep1575.postloop, %scevgep1585.postloop, !dbg !123
  %found.conflict1597.postloop = and i1 %bound01595.postloop, %bound11596.postloop, !dbg !123
  %conflict.rdx.postloop = or i1 %found.conflict.postloop, %found.conflict1597.postloop, !dbg !123
  br i1 %conflict.rdx.postloop, label %scalar.ph.postloop, label %vector.ph.postloop

vector.ph.postloop:                               ; preds = %vector.memcheck.postloop
  %n.mod.vf.postloop = and i64 %124, 3, !dbg !123
  %138 = icmp eq i64 %n.mod.vf.postloop, 0, !dbg !123
  %139 = select i1 %138, i64 4, i64 %n.mod.vf.postloop, !dbg !123
  %n.vec.postloop = sub i64 %124, %139, !dbg !123
  %ind.end.postloop = add i64 %n.vec.postloop, 2, !dbg !123
  %broadcast.splatinsert.postloop = insertelement <4 x double> poison, double %107, i64 0, !dbg !123
  %broadcast.splat.postloop = shufflevector <4 x double> %broadcast.splatinsert.postloop, <4 x double> poison, <4 x i32> zeroinitializer, !dbg !123
  br label %vector.body.postloop, !dbg !123

vector.body.postloop:                             ; preds = %vector.body.postloop, %vector.ph.postloop
  %index.postloop = phi i64 [ 0, %vector.ph.postloop ], [ %index.next.postloop, %vector.body.postloop ]
  %offset.idx.postloop = or disjoint i64 %index.postloop, 2, !dbg !123
  %140 = add i64 %27, %offset.idx.postloop, !dbg !154
  %141 = shl i64 %140, 3, !dbg !139
  %142 = getelementptr i8, ptr %invariant.gep.postloop, i64 %141, !dbg !139
  %wide.load.postloop = load <4 x double>, ptr %142, align 8, !dbg !139, !tbaa !118, !alias.scope !160, !noalias !122
  %143 = add i64 %110, %offset.idx.postloop, !dbg !154
  %144 = shl i64 %143, 3, !dbg !139
  %145 = getelementptr i8, ptr %invariant.gep166.postloop, i64 %144, !dbg !139
  %wide.load1601.postloop = load <4 x double>, ptr %145, align 8, !dbg !139, !tbaa !118, !alias.scope !163, !noalias !122
  %146 = fmul <4 x double> %broadcast.splat.postloop, %wide.load1601.postloop, !dbg !145
  %147 = fadd <4 x double> %wide.load.postloop, %146, !dbg !148
  %148 = add i64 %111, %offset.idx.postloop, !dbg !165
  %149 = shl i64 %148, 3, !dbg !150
  %150 = getelementptr i8, ptr %invariant.gep.postloop, i64 %149, !dbg !150
  store <4 x double> %147, ptr %150, align 8, !dbg !150, !tbaa !118, !alias.scope !171, !noalias !173
  %index.next.postloop = add nuw i64 %index.postloop, 4
  %151 = icmp eq i64 %index.next.postloop, %n.vec.postloop
  br i1 %151, label %scalar.ph.postloop, label %vector.body.postloop, !llvm.loop !174

scalar.ph.postloop:                               ; preds = %vector.body.postloop, %vector.memcheck.postloop, %vector.scevcheck.postloop, %L133.preheader.postloop
  %bc.resume.val.postloop = phi i64 [ 2, %L133.preheader.postloop ], [ 2, %vector.scevcheck.postloop ], [ 2, %vector.memcheck.postloop ], [ %ind.end.postloop, %vector.body.postloop ]
  br label %L133.postloop, !dbg !123

L133.postloop:                                    ; preds = %L285.postloop, %scalar.ph.postloop
  %value_phi35.postloop = phi i64 [ %160, %L285.postloop ], [ %bc.resume.val.postloop, %scalar.ph.postloop ]
  %152 = add i64 %value_phi35.postloop, -1, !dbg !176
  %.not1446.postloop = icmp ult i64 %152, %.size39.sroa.0.0.copyload, !dbg !126
  br i1 %.not1446.postloop, label %L163.postloop, label %odessy.chk4, !dbg !123

L163.postloop:                                    ; preds = %L133.postloop
  %153 = add i64 %27, %value_phi35.postloop, !dbg !154
  %memoryref_offset49.postloop = shl i64 %153, 3, !dbg !139
  %gep.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset49.postloop, !dbg !139
  %154 = load double, ptr %gep.postloop, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %.not1447.postloop = icmp ult i64 %152, %.size58.sroa.0.0.copyload.fr.postloop, !dbg !126
  br i1 %.not1447.postloop, label %L223.postloop, label %odessy.chk9, !dbg !123

L223.postloop:                                    ; preds = %L163.postloop
  %.not1448.postloop = icmp ult i64 %152, %.size77.sroa.0.0.copyload.postloop, !dbg !141
  br i1 %.not1448.postloop, label %L285.postloop, label %odessy.chk12, !dbg !138

L285.postloop:                                    ; preds = %L223.postloop
  %155 = add i64 %110, %value_phi35.postloop, !dbg !154
  %memoryref_offset68.postloop = shl i64 %155, 3, !dbg !139
  %gep167.postloop = getelementptr i8, ptr %invariant.gep166.postloop, i64 %memoryref_offset68.postloop, !dbg !139
  %156 = load double, ptr %gep167.postloop, align 8, !dbg !139, !tbaa !118, !alias.scope !121, !noalias !122
  %157 = fmul double %107, %156, !dbg !145
  %158 = fadd double %154, %157, !dbg !148
  %159 = add i64 %111, %value_phi35.postloop, !dbg !165
  %memoryref_offset85.postloop = shl i64 %159, 3, !dbg !150
  %gep169.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset85.postloop, !dbg !150
  store double %158, ptr %gep169.postloop, align 8, !dbg !150, !tbaa !118, !alias.scope !121, !noalias !122
  %.not163.not.postloop = icmp eq i64 %value_phi35.postloop, %value_phi31, !dbg !151
  %160 = add i64 %value_phi35.postloop, 1, !dbg !152
  br i1 %.not163.not.postloop, label %L311.loopexit.postloop, label %L133.postloop, !dbg !153, !llvm.loop !177

L311.loopexit.postloop:                           ; preds = %L285.postloop, %L285.peel.postloop
  %.not164.not.postloop = icmp eq i64 %value_phi20.postloop, %value_phi16, !dbg !97
  %161 = add nuw i64 %value_phi20.postloop, 1, !dbg !98
  %indvar.next1574.postloop = add i64 %indvar1573.postloop, 1, !dbg !99
  br i1 %.not164.not.postloop, label %L322.loopexit.split, label %L55.postloop, !dbg !99, !llvm.loop !184, !loop_constrainer.loop.clone !17
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

attributes #0 = { "frame-pointer"="all" "julia.fsig"="gemm!(Array{Float64, 2}, Array{Float64, 2}, Array{Float64, 2})" "probe-stack"="inline-asm" }
attributes #1 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "frame-pointer"="all" "julia.fsig"="throw_boundserror(Array{Float64, 2}, Tuple{Int64, Int64})" "probe-stack"="inline-asm" }
attributes #4 = { "frame-pointer"="all" "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #5 = { mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { noreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }

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
!104 = !DILocation(line: 87, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!106 = !DILocation(line: 3081, scope: !107, inlinedAt: !108)
!107 = distinct !DISubprogram(name: "_sub2ind_recurse;", linkageName: "_sub2ind_recurse", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!108 = !DILocation(line: 3081, scope: !107, inlinedAt: !109)
!109 = !DILocation(line: 3065, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "_sub2ind;", linkageName: "_sub2ind", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!111 = !DILocation(line: 3049, scope: !110, inlinedAt: !112)
!112 = !DILocation(line: 1377, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "_to_linear_index;", linkageName: "_to_linear_index", scope: !82, file: !82, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!114 = !DILocation(line: 929, scope: !84, inlinedAt: !85)
!115 = !DILocation(line: 920, scope: !116, inlinedAt: !114)
!116 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !117, file: !117, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!117 = !DIFile(filename: "essentials.jl", directory: ".")
!118 = !{!119, !119, i64 0}
!119 = !{!"jtbaa_arraybuf", !120, i64 0}
!120 = !{!"jtbaa_data", !24, i64 0}
!121 = !{!34}
!122 = !{!32, !33, !35, !29}
!123 = !DILocation(line: 699, scope: !81, inlinedAt: !124)
!124 = !DILocation(line: 928, scope: !84, inlinedAt: !125)
!125 = !DILocation(line: 21, scope: !4)
!126 = !DILocation(line: 519, scope: !69, inlinedAt: !127)
!127 = !DILocation(line: 754, scope: !92, inlinedAt: !128)
!128 = !DILocation(line: 725, scope: !94, inlinedAt: !129)
!129 = !DILocation(line: 681, scope: !81, inlinedAt: !123)
!130 = !{!131, !131, i64 0}
!131 = !{!"jtbaa_stack", !24, i64 0}
!132 = !{!33}
!133 = !{!32, !34, !35, !29}
!134 = !DILocation(line: 1002, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!136 = !DILocation(line: 997, scope: !137, inlinedAt: !125)
!137 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!138 = !DILocation(line: 699, scope: !81, inlinedAt: !134)
!139 = !DILocation(line: 920, scope: !116, inlinedAt: !140)
!140 = !DILocation(line: 929, scope: !84, inlinedAt: !125)
!141 = !DILocation(line: 519, scope: !69, inlinedAt: !142)
!142 = !DILocation(line: 754, scope: !92, inlinedAt: !143)
!143 = !DILocation(line: 725, scope: !94, inlinedAt: !144)
!144 = !DILocation(line: 681, scope: !81, inlinedAt: !138)
!145 = !DILocation(line: 497, scope: !146, inlinedAt: !125)
!146 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !147, file: !147, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!147 = !DIFile(filename: "float.jl", directory: ".")
!148 = !DILocation(line: 495, scope: !149, inlinedAt: !125)
!149 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !147, file: !147, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!150 = !DILocation(line: 1003, scope: !135, inlinedAt: !136)
!151 = !DILocation(line: 637, scope: !52, inlinedAt: !152)
!152 = !DILocation(line: 921, scope: !77, inlinedAt: !153)
!153 = !DILocation(line: 22, scope: !4)
!154 = !DILocation(line: 87, scope: !105, inlinedAt: !155)
!155 = !DILocation(line: 3081, scope: !107, inlinedAt: !156)
!156 = !DILocation(line: 3081, scope: !107, inlinedAt: !157)
!157 = !DILocation(line: 3065, scope: !110, inlinedAt: !158)
!158 = !DILocation(line: 3049, scope: !110, inlinedAt: !159)
!159 = !DILocation(line: 1377, scope: !113, inlinedAt: !140)
!160 = !{!34, !161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!34, !164}
!164 = distinct !{!164, !162}
!165 = !DILocation(line: 87, scope: !105, inlinedAt: !166)
!166 = !DILocation(line: 3081, scope: !107, inlinedAt: !167)
!167 = !DILocation(line: 3081, scope: !107, inlinedAt: !168)
!168 = !DILocation(line: 3065, scope: !110, inlinedAt: !169)
!169 = !DILocation(line: 3049, scope: !110, inlinedAt: !170)
!170 = !DILocation(line: 1377, scope: !113, inlinedAt: !150)
!171 = !{!34, !172}
!172 = distinct !{!172, !162}
!173 = !{!32, !33, !35, !29, !161, !164}
!174 = distinct !{!174, !175, !87, !88}
!175 = !{!"llvm.loop.peeled.count", i32 1}
!176 = !DILocation(line: 86, scope: !90, inlinedAt: !127)
!177 = distinct !{!177, !175, !87}
!178 = !DILocation(line: 25, scope: !4)
!179 = !{!180, !180, i64 0}
!180 = !{!"jtbaa_tag", !120, i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"jtbaa_immut", !183, i64 0}
!183 = !{!"jtbaa_value", !120, i64 0}
!184 = distinct !{!184, !185, !186, !187, !188}
!185 = !{!"llvm.loop.unroll.disable"}
!186 = !{!"llvm.loop.vectorize.enable", i1 false}
!187 = !{!"llvm.loop.licm_versioning.disable"}
!188 = !{!"llvm.loop.distribute.enable", i1 false}
