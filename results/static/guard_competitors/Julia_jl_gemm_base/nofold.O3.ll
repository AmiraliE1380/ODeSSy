; ModuleID = 'results/static/guard_competitors/Julia_jl_gemm_base/nofold.ll'
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
  %pgcstack = tail call ptr inttoptr (i64 4298374940 to ptr)(i64 4298374976) #7
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
  %9 = icmp slt i64 %.size.sroa.0.0.copyload.fr, 1
  %or.cond = or i1 %8, %9, !dbg !78
  br i1 %or.cond, label %L333, label %L37.preheader1455, !dbg !78

L37.preheader1455:                                ; preds = %L37.preheader
  %10 = add nsw i64 %value_phi31, -2
  %.not163.not.peel = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1
  br i1 %.not163.not.peel, label %L37.us, label %L37

L37.us:                                           ; preds = %L37.preheader1455, %L322.loopexit.split.split.us.us
  %value_phi13.us = phi i64 [ %31, %L322.loopexit.split.split.us.us ], [ 1, %L37.preheader1455 ]
  %11 = add nsw i64 %value_phi13.us, -1
  %12 = add nuw i64 %value_phi13.us, 2305843009213693951
  %13 = mul i64 %12, %.size2.sroa.1.0.copyload
  %memoryref_data.us = load ptr, ptr %4, align 8
  %invariant.gep469.us = getelementptr i8, ptr %memoryref_data.us, i64 -8, !dbg !79
  %.size39.sroa.0.0.copyload.us = load i64, ptr %.size_ptr, align 8
  %14 = mul i64 %.size39.sroa.0.0.copyload.us, %12
  %15 = shl i64 %14, 3
  br label %L55.us.us, !dbg !79

L55.us.us:                                        ; preds = %L163.peel.us.us, %L37.us
  %value_phi20.us.us = phi i64 [ 1, %L37.us ], [ %30, %L163.peel.us.us ]
  %16 = add nsw i64 %value_phi20.us.us, -1, !dbg !85
  %17 = add i64 %value_phi20.us.us, %13, !dbg !92
  %memoryref_offset.us.us = shl i64 %17, 3, !dbg !103
  %gep470.us.us = getelementptr i8, ptr %invariant.gep469.us, i64 %memoryref_offset.us.us, !dbg !103
  %18 = load double, ptr %gep470.us.us, align 8, !dbg !103, !tbaa !106, !alias.scope !109, !noalias !110
  %memoryref_data47.us.us = load ptr, ptr %0, align 8
  %.size58.sroa.0.0.copyload.us.us = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.us.us = freeze i64 %.size58.sroa.0.0.copyload.us.us, !dbg !111
  %.size58.sroa.2.0.copyload.us.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %19 = icmp uge i64 %16, %.size58.sroa.2.0.copyload.us.us
  %20 = add nuw i64 %value_phi20.us.us, 2305843009213693951
  %21 = mul i64 %.size58.sroa.0.0.copyload.fr.us.us, %20
  %memoryref_data66.us.us = load ptr, ptr %2, align 8
  %.size77.sroa.0.0.copyload.us.us = load i64, ptr %.size_ptr, align 8
  %22 = mul i64 %.size77.sroa.0.0.copyload.us.us, %12
  %.fr268.us.us = freeze i1 %19
  br i1 %.fr268.us.us, label %L133.preheader.split.split.us, label %L133.preheader.split.split.us2.us

L133.preheader.split.split.us2.us:                ; preds = %L55.us.us
  %.size77.sroa.2.0.copyload.us.us = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %23 = icmp uge i64 %11, %.size77.sroa.2.0.copyload.us.us
  %.fr382.us.us = freeze i1 %23
  br i1 %.fr382.us.us, label %L163.us334, label %L163.peel.us.us

L163.peel.us.us:                                  ; preds = %L133.preheader.split.split.us2.us
  %gep.peel.us.us = getelementptr i8, ptr %memoryref_data47.us.us, i64 %15, !dbg !114
  %24 = load double, ptr %gep.peel.us.us, align 8, !dbg !114, !tbaa !106, !alias.scope !109, !noalias !110
  %25 = shl i64 %21, 3, !dbg !114
  %gep167.peel.us.us = getelementptr i8, ptr %memoryref_data66.us.us, i64 %25, !dbg !114
  %26 = load double, ptr %gep167.peel.us.us, align 8, !dbg !114, !tbaa !106, !alias.scope !109, !noalias !110
  %27 = fmul double %18, %26, !dbg !116
  %28 = fadd double %24, %27, !dbg !119
  %29 = shl i64 %22, 3, !dbg !121
  %gep169.peel.us.us = getelementptr i8, ptr %memoryref_data47.us.us, i64 %29, !dbg !121
  store double %28, ptr %gep169.peel.us.us, align 8, !dbg !121, !tbaa !106, !alias.scope !109, !noalias !110
  %.not164.not.us.us3 = icmp eq i64 %value_phi20.us.us, %value_phi16, !dbg !125
  %30 = add nuw i64 %value_phi20.us.us, 1, !dbg !126
  br i1 %.not164.not.us.us3, label %L322.loopexit.split.split.us.us, label %L55.us.us, !dbg !127

L322.loopexit.split.split.us.us:                  ; preds = %L163.peel.us.us
  %.not165.not.us = icmp eq i64 %value_phi13.us, %value_phi, !dbg !128
  %31 = add nuw i64 %value_phi13.us, 1, !dbg !129
  br i1 %.not165.not.us, label %L333, label %L37.us, !dbg !130

L37:                                              ; preds = %L37.preheader1455, %L322.loopexit.split.split
  %indvar = phi i64 [ %indvar.next, %L322.loopexit.split.split ], [ 0, %L37.preheader1455 ]
  %value_phi13 = phi i64 [ %110, %L322.loopexit.split.split ], [ 1, %L37.preheader1455 ]
  %32 = shl i64 %indvar, 3
  %33 = add nsw i64 %value_phi13, -1
  %34 = add nuw i64 %value_phi13, 2305843009213693951
  %35 = mul i64 %34, %.size2.sroa.1.0.copyload
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !79
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %36 = mul i64 %.size39.sroa.0.0.copyload, %34
  %37 = add i64 %.size39.sroa.0.0.copyload, -1, !dbg !79
  %38 = mul i64 %.size39.sroa.0.0.copyload, %32, !dbg !79
  %39 = shl i64 %36, 3
  br label %L55, !dbg !79

L55:                                              ; preds = %L311.loopexit.loopexit, %L37
  %indvar1573 = phi i64 [ 0, %L37 ], [ %indvar.next1574, %L311.loopexit.loopexit ]
  %value_phi20 = phi i64 [ 1, %L37 ], [ %109, %L311.loopexit.loopexit ]
  %40 = shl i64 %indvar1573, 3, !dbg !85
  %41 = add nsw i64 %value_phi20, -1, !dbg !85
  %42 = add i64 %value_phi20, %35, !dbg !92
  %memoryref_offset = shl i64 %42, 3, !dbg !103
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !103
  %43 = load double, ptr %gep470, align 8, !dbg !103, !tbaa !106, !alias.scope !109, !noalias !110
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !111
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !111
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %44 = icmp uge i64 %41, %.size58.sroa.2.0.copyload
  %45 = add nuw i64 %value_phi20, 2305843009213693951
  %46 = mul i64 %.size58.sroa.0.0.copyload.fr, %45
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !111
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %47 = mul i64 %.size77.sroa.0.0.copyload, %34
  %.fr268 = freeze i1 %44
  br i1 %.fr268, label %L133.preheader.split.split.us, label %L133.preheader.split.split

L133.preheader.split.split.us:                    ; preds = %L55, %L55.us.us
  call void @odessy.chk(i32 7)
  unreachable

L133.preheader.split.split:                       ; preds = %L55
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %48 = icmp uge i64 %33, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %48
  br i1 %.fr382, label %L163.us334, label %L163.peel

L163.us334:                                       ; preds = %L133.preheader.split.split, %L133.preheader.split.split.us2.us
  call void @odessy.chk(i32 11)
  unreachable

L163.peel:                                        ; preds = %L133.preheader.split.split
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %39, !dbg !114
  %49 = load double, ptr %gep.peel, align 8, !dbg !114, !tbaa !106, !alias.scope !109, !noalias !110
  %50 = shl i64 %46, 3, !dbg !114
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %50, !dbg !114
  %51 = load double, ptr %gep167.peel, align 8, !dbg !114, !tbaa !106, !alias.scope !109, !noalias !110
  %52 = fmul double %43, %51, !dbg !116
  %53 = fadd double %49, %52, !dbg !119
  %54 = shl i64 %47, 3, !dbg !121
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %54, !dbg !121
  store double %53, ptr %gep169.peel, align 8, !dbg !121, !tbaa !106, !alias.scope !109, !noalias !110
  %55 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !111
  %umin1598 = call i64 @llvm.umin.i64(i64 %55, i64 %10), !dbg !111
  %56 = freeze i64 %umin1598, !dbg !111
  %57 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !111
  %umin1599 = call i64 @llvm.umin.i64(i64 %56, i64 %57), !dbg !111
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %37), !dbg !111
  %58 = add i64 %umin1600, 1, !dbg !111
  %min.iters.check = icmp ult i64 %58, 21, !dbg !111
  br i1 %min.iters.check, label %L133.preheader, label %vector.scevcheck, !dbg !111

vector.scevcheck:                                 ; preds = %L163.peel
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !111
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %38, !dbg !111
  %mul.result = shl i64 %umin1600, 3, !dbg !111
  %59 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !111
  %60 = icmp ult ptr %59, %scevgep1566, !dbg !111
  %61 = mul i64 %.size77.sroa.0.0.copyload, %32, !dbg !111
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %61, !dbg !111
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !111
  %62 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !111
  %63 = icmp ult ptr %62, %scevgep1568, !dbg !111
  %64 = or i1 %mul.overflow1571, %63, !dbg !111
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !111
  %65 = mul i64 %.size58.sroa.0.0.copyload.fr, %40, !dbg !111
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %65, !dbg !111
  %66 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !111
  %67 = icmp ult ptr %66, %scevgep1575, !dbg !111
  %68 = or i1 %60, %64, !dbg !111
  %69 = or i1 %67, %68, !dbg !111
  br i1 %69, label %L133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !111
  %70 = getelementptr i8, ptr %scevgep1581, i64 %61, !dbg !111
  %scevgep1585 = getelementptr i8, ptr %70, i64 %mul.result, !dbg !111
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %38, !dbg !111
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !111
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !111
  %71 = getelementptr i8, ptr %scevgep1593, i64 %65, !dbg !111
  %scevgep1594 = getelementptr i8, ptr %71, i64 %mul.result, !dbg !111
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !111
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !111
  %found.conflict = and i1 %bound0, %bound1, !dbg !111
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !111
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !111
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !111
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !111
  br i1 %conflict.rdx, label %L133.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %58, 7, !dbg !111
  %72 = icmp eq i64 %n.mod.vf, 0, !dbg !111
  %73 = select i1 %72, i64 8, i64 %n.mod.vf, !dbg !111
  %n.vec = sub nuw nsw i64 %58, %73, !dbg !111
  %broadcast.splatinsert = insertelement <2 x double> poison, double %43, i64 0, !dbg !111
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !111
  br label %vector.body, !dbg !111

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !111
  %74 = add i64 %offset.idx, %36, !dbg !131
  %75 = shl i64 %74, 3, !dbg !114
  %76 = getelementptr i8, ptr %invariant.gep, i64 %75, !dbg !114
  %77 = getelementptr i8, ptr %76, i64 16, !dbg !114
  %78 = getelementptr i8, ptr %76, i64 32, !dbg !114
  %79 = getelementptr i8, ptr %76, i64 48, !dbg !114
  %wide.load = load <2 x double>, ptr %76, align 8, !dbg !114, !tbaa !106, !alias.scope !137, !noalias !110
  %wide.load1601 = load <2 x double>, ptr %77, align 8, !dbg !114, !tbaa !106, !alias.scope !137, !noalias !110
  %wide.load1602 = load <2 x double>, ptr %78, align 8, !dbg !114, !tbaa !106, !alias.scope !137, !noalias !110
  %wide.load1603 = load <2 x double>, ptr %79, align 8, !dbg !114, !tbaa !106, !alias.scope !137, !noalias !110
  %80 = add i64 %offset.idx, %46, !dbg !131
  %81 = shl i64 %80, 3, !dbg !114
  %82 = getelementptr i8, ptr %invariant.gep166, i64 %81, !dbg !114
  %83 = getelementptr i8, ptr %82, i64 16, !dbg !114
  %84 = getelementptr i8, ptr %82, i64 32, !dbg !114
  %85 = getelementptr i8, ptr %82, i64 48, !dbg !114
  %wide.load1604 = load <2 x double>, ptr %82, align 8, !dbg !114, !tbaa !106, !alias.scope !140, !noalias !110
  %wide.load1605 = load <2 x double>, ptr %83, align 8, !dbg !114, !tbaa !106, !alias.scope !140, !noalias !110
  %wide.load1606 = load <2 x double>, ptr %84, align 8, !dbg !114, !tbaa !106, !alias.scope !140, !noalias !110
  %wide.load1607 = load <2 x double>, ptr %85, align 8, !dbg !114, !tbaa !106, !alias.scope !140, !noalias !110
  %86 = fmul <2 x double> %broadcast.splat, %wide.load1604, !dbg !116
  %87 = fmul <2 x double> %broadcast.splat, %wide.load1605, !dbg !116
  %88 = fmul <2 x double> %broadcast.splat, %wide.load1606, !dbg !116
  %89 = fmul <2 x double> %broadcast.splat, %wide.load1607, !dbg !116
  %90 = fadd <2 x double> %wide.load, %86, !dbg !119
  %91 = fadd <2 x double> %wide.load1601, %87, !dbg !119
  %92 = fadd <2 x double> %wide.load1602, %88, !dbg !119
  %93 = fadd <2 x double> %wide.load1603, %89, !dbg !119
  %94 = add i64 %offset.idx, %47, !dbg !142
  %95 = shl i64 %94, 3, !dbg !121
  %96 = getelementptr i8, ptr %invariant.gep, i64 %95, !dbg !121
  %97 = getelementptr i8, ptr %96, i64 16, !dbg !121
  %98 = getelementptr i8, ptr %96, i64 32, !dbg !121
  %99 = getelementptr i8, ptr %96, i64 48, !dbg !121
  store <2 x double> %90, ptr %96, align 8, !dbg !121, !tbaa !106, !alias.scope !148, !noalias !150
  store <2 x double> %91, ptr %97, align 8, !dbg !121, !tbaa !106, !alias.scope !148, !noalias !150
  store <2 x double> %92, ptr %98, align 8, !dbg !121, !tbaa !106, !alias.scope !148, !noalias !150
  store <2 x double> %93, ptr %99, align 8, !dbg !121, !tbaa !106, !alias.scope !148, !noalias !150
  %index.next = add nuw i64 %index, 8
  %100 = icmp eq i64 %index.next, %n.vec
  br i1 %100, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !151

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 2, !dbg !111
  br label %L133.preheader, !dbg !111

L133.preheader:                                   ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L163.peel
  %value_phi35.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 2, %vector.memcheck ], [ 2, %vector.scevcheck ], [ 2, %L163.peel ]
  br label %L133, !dbg !155

L133:                                             ; preds = %L133.preheader, %L133
  %value_phi35 = phi i64 [ %108, %L133 ], [ %value_phi35.ph, %L133.preheader ]
  %101 = add i64 %value_phi35, %36, !dbg !131
  %memoryref_offset49 = shl i64 %101, 3, !dbg !114
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !114
  %102 = load double, ptr %gep, align 8, !dbg !114, !tbaa !106, !alias.scope !109, !noalias !110
  %103 = add i64 %value_phi35, %46, !dbg !131
  %memoryref_offset68 = shl i64 %103, 3, !dbg !114
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !114
  %104 = load double, ptr %gep167, align 8, !dbg !114, !tbaa !106, !alias.scope !109, !noalias !110
  %105 = fmul double %43, %104, !dbg !116
  %106 = fadd double %102, %105, !dbg !119
  %107 = add i64 %value_phi35, %47, !dbg !142
  %memoryref_offset85 = shl i64 %107, 3, !dbg !121
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !121
  store double %106, ptr %gep169, align 8, !dbg !121, !tbaa !106, !alias.scope !109, !noalias !110
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !156
  %108 = add i64 %value_phi35, 1, !dbg !157
  br i1 %.not163.not, label %L311.loopexit.loopexit, label %L133, !dbg !155, !llvm.loop !158

L311.loopexit.loopexit:                           ; preds = %L133
  %.not164.not = icmp eq i64 %value_phi20, %value_phi16, !dbg !125
  %109 = add nuw i64 %value_phi20, 1, !dbg !126
  %indvar.next1574 = add nuw nsw i64 %indvar1573, 1, !dbg !127
  br i1 %.not164.not, label %L322.loopexit.split.split, label %L55, !dbg !127

L322.loopexit.split.split:                        ; preds = %L311.loopexit.loopexit
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !128
  %110 = add nuw i64 %value_phi13, 1, !dbg !129
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !130
  br i1 %.not165.not, label %L333, label %L37, !dbg !130

L333:                                             ; preds = %L322.loopexit.split.split, %L322.loopexit.split.split.us.us, %L37.preheader, %L20
  %frame.prev1765 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1765, ptr %pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !159

L334:                                             ; preds = %L15
  %111 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %112 = extractvalue [1 x ptr] %111, 0, !dbg !58
  store ptr %112, ptr %gc_slot_addr_0, align 16
  %ptls_load1755 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1755, i32 424, i32 16, i64 4751484224) #8, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch", i64 -8, !dbg !58
  store atomic i64 4751484224, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !160
  store ptr %112, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !162, !alias.scope !109, !noalias !110
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %113 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01734 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %114 = extractvalue [1 x ptr] %113, 0, !dbg !55
  store ptr %114, ptr %gc_slot_addr_01734, align 16
  %ptls_load1759 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1759, i32 424, i32 16, i64 4751484224) #8, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch115", i64 -8, !dbg !55
  store atomic i64 4751484224, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !160
  store ptr %114, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !162, !alias.scope !109, !noalias !110
  store ptr null, ptr %gc_slot_addr_01734, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %115 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01736 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %116 = extractvalue [1 x ptr] %115, 0, !dbg !50
  store ptr %116, ptr %gc_slot_addr_01736, align 16
  %ptls_load1763 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1763, i32 424, i32 16, i64 4751484224) #8, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch121", i64 -8, !dbg !50
  store atomic i64 4751484224, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !160
  store ptr %116, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !162, !alias.scope !109, !noalias !110
  store ptr null, ptr %gc_slot_addr_01736, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50
}

declare swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself, ptr) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ijl_throw(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #6

attributes #0 = { "julia.fsig"="gemm!(Array{Float64, 2}, Array{Float64, 2}, Array{Float64, 2})" "probe-stack"="inline-asm" }
attributes #1 = { "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #2 = { noreturn }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }

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
!79 = !DILocation(line: 699, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "checkbounds;", linkageName: "checkbounds", scope: !81, file: !81, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!81 = !DIFile(filename: "abstractarray.jl", directory: ".")
!82 = !DILocation(line: 928, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!84 = !DILocation(line: 19, scope: !4)
!85 = !DILocation(line: 86, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!87 = !DILocation(line: 754, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "checkindex;", linkageName: "checkindex", scope: !81, file: !81, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!89 = !DILocation(line: 725, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "checkbounds_indices;", linkageName: "checkbounds_indices", scope: !81, file: !81, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!91 = !DILocation(line: 681, scope: !80, inlinedAt: !79)
!92 = !DILocation(line: 87, scope: !93, inlinedAt: !94)
!93 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !70, file: !70, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!94 = !DILocation(line: 3081, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "_sub2ind_recurse;", linkageName: "_sub2ind_recurse", scope: !81, file: !81, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!96 = !DILocation(line: 3081, scope: !95, inlinedAt: !97)
!97 = !DILocation(line: 3065, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "_sub2ind;", linkageName: "_sub2ind", scope: !81, file: !81, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!99 = !DILocation(line: 3049, scope: !98, inlinedAt: !100)
!100 = !DILocation(line: 1377, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "_to_linear_index;", linkageName: "_to_linear_index", scope: !81, file: !81, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!102 = !DILocation(line: 929, scope: !83, inlinedAt: !84)
!103 = !DILocation(line: 920, scope: !104, inlinedAt: !102)
!104 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !105, file: !105, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!105 = !DIFile(filename: "essentials.jl", directory: ".")
!106 = !{!107, !107, i64 0}
!107 = !{!"jtbaa_arraybuf", !108, i64 0}
!108 = !{!"jtbaa_data", !24, i64 0}
!109 = !{!34}
!110 = !{!32, !33, !35, !29}
!111 = !DILocation(line: 699, scope: !80, inlinedAt: !112)
!112 = !DILocation(line: 928, scope: !83, inlinedAt: !113)
!113 = !DILocation(line: 21, scope: !4)
!114 = !DILocation(line: 920, scope: !104, inlinedAt: !115)
!115 = !DILocation(line: 929, scope: !83, inlinedAt: !113)
!116 = !DILocation(line: 497, scope: !117, inlinedAt: !113)
!117 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !118, file: !118, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!118 = !DIFile(filename: "float.jl", directory: ".")
!119 = !DILocation(line: 495, scope: !120, inlinedAt: !113)
!120 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !118, file: !118, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!121 = !DILocation(line: 1003, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!123 = !DILocation(line: 997, scope: !124, inlinedAt: !113)
!124 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!125 = !DILocation(line: 637, scope: !52, inlinedAt: !126)
!126 = !DILocation(line: 921, scope: !77, inlinedAt: !127)
!127 = !DILocation(line: 23, scope: !4)
!128 = !DILocation(line: 637, scope: !52, inlinedAt: !129)
!129 = !DILocation(line: 921, scope: !77, inlinedAt: !130)
!130 = !DILocation(line: 24, scope: !4)
!131 = !DILocation(line: 87, scope: !93, inlinedAt: !132)
!132 = !DILocation(line: 3081, scope: !95, inlinedAt: !133)
!133 = !DILocation(line: 3081, scope: !95, inlinedAt: !134)
!134 = !DILocation(line: 3065, scope: !98, inlinedAt: !135)
!135 = !DILocation(line: 3049, scope: !98, inlinedAt: !136)
!136 = !DILocation(line: 1377, scope: !101, inlinedAt: !115)
!137 = !{!34, !138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!34, !141}
!141 = distinct !{!141, !139}
!142 = !DILocation(line: 87, scope: !93, inlinedAt: !143)
!143 = !DILocation(line: 3081, scope: !95, inlinedAt: !144)
!144 = !DILocation(line: 3081, scope: !95, inlinedAt: !145)
!145 = !DILocation(line: 3065, scope: !98, inlinedAt: !146)
!146 = !DILocation(line: 3049, scope: !98, inlinedAt: !147)
!147 = !DILocation(line: 1377, scope: !101, inlinedAt: !121)
!148 = !{!34, !149}
!149 = distinct !{!149, !139}
!150 = !{!32, !33, !35, !29, !138, !141}
!151 = distinct !{!151, !152, !153, !154}
!152 = !{!"llvm.loop.peeled.count", i32 1}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = !DILocation(line: 22, scope: !4)
!156 = !DILocation(line: 637, scope: !52, inlinedAt: !157)
!157 = !DILocation(line: 921, scope: !77, inlinedAt: !155)
!158 = distinct !{!158, !152, !153}
!159 = !DILocation(line: 25, scope: !4)
!160 = !{!161, !161, i64 0}
!161 = !{!"jtbaa_tag", !108, i64 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"jtbaa_immut", !164, i64 0}
!164 = !{!"jtbaa_value", !108, i64 0}
