; ModuleID = 'results/static/guard_ablation_0927/Julia_jl_gemm_base/irce.od.ll'
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
  %thread_ptr = tail call ptr asm "movq %fs:0, $0", "=r"() #8
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
  %9 = icmp slt i64 %.size.sroa.0.0.copyload.fr, 1
  %or.cond = or i1 %8, %9, !dbg !78
  br i1 %or.cond, label %L333, label %L37.preheader1455, !dbg !78

L37.preheader1455:                                ; preds = %L37.preheader
  %10 = add nsw i64 %value_phi31, -2
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %value_phi16, i64 %.size2.sroa.1.0.copyload)
  %.not163.not.peel = icmp eq i64 %.size.sroa.0.0.copyload.fr, 1
  br label %L37

L37:                                              ; preds = %L322.loopexit.split, %L37.preheader1455
  %indvar = phi i64 [ 0, %L37.preheader1455 ], [ %indvar.next, %L322.loopexit.split ]
  %value_phi13 = phi i64 [ 1, %L37.preheader1455 ], [ %80, %L322.loopexit.split ]
  %11 = shl i64 %indvar, 3
  %12 = add nsw i64 %value_phi13, -1
  %13 = add nuw i64 %value_phi13, 2305843009213693951
  %14 = mul i64 %13, %.size2.sroa.1.0.copyload
  %memoryref_data = load ptr, ptr %4, align 8
  %invariant.gep469 = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !79
  %.size39.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %.size39.sroa.0.0.copyload.fr = freeze i64 %.size39.sroa.0.0.copyload
  %15 = mul i64 %.size39.sroa.0.0.copyload.fr, %13
  %16 = add i64 %.size39.sroa.0.0.copyload.fr, -1, !dbg !79
  %17 = mul i64 %.size39.sroa.0.0.copyload.fr, %11, !dbg !79
  %.not5 = icmp eq i64 %.size39.sroa.0.0.copyload.fr, 0
  %18 = shl i64 %15, 3
  br i1 %.not5, label %L55.us, label %L55

L55.us:                                           ; preds = %L37
  %.size58.sroa.2.0.copyload.us = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %.size58.sroa.2.0.copyload.us.fr = freeze i64 %.size58.sroa.2.0.copyload.us
  %19 = icmp eq i64 %.size58.sroa.2.0.copyload.us.fr, 0
  br i1 %19, label %L133.preheader.split.split.us, label %L133.preheader.split.split.us58

L133.preheader.split.split.us58:                  ; preds = %L55.us
  %.size77.sroa.2.0.copyload.us = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %20 = icmp uge i64 %12, %.size77.sroa.2.0.copyload.us
  %.fr382.us = freeze i1 %20
  br i1 %.fr382.us, label %L163.us334, label %odessy.chk5

L55:                                              ; preds = %L37, %L311.loopexit
  %indvar1573 = phi i64 [ %indvar.next1574, %L311.loopexit ], [ 0, %L37 ]
  %value_phi20 = phi i64 [ %78, %L311.loopexit ], [ 1, %L37 ]
  %21 = shl i64 %indvar1573, 3, !dbg !85
  %22 = add nsw i64 %value_phi20, -1, !dbg !85
  %23 = add i64 %value_phi20, %14, !dbg !92
  %memoryref_offset = shl i64 %23, 3, !dbg !103
  %gep470 = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset, !dbg !103
  %24 = load double, ptr %gep470, align 8, !dbg !103, !tbaa !106, !alias.scope !109, !noalias !110
  %memoryref_data47 = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data47, i64 -8, !dbg !111
  %.size58.sroa.0.0.copyload = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr = freeze i64 %.size58.sroa.0.0.copyload, !dbg !111
  %.size58.sroa.2.0.copyload = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %25 = icmp uge i64 %22, %.size58.sroa.2.0.copyload
  %26 = add nuw i64 %value_phi20, 2305843009213693951
  %27 = mul i64 %.size58.sroa.0.0.copyload.fr, %26
  %memoryref_data66 = load ptr, ptr %2, align 8
  %invariant.gep166 = getelementptr i8, ptr %memoryref_data66, i64 -8, !dbg !111
  %.size77.sroa.0.0.copyload = load i64, ptr %.size_ptr, align 8
  %28 = mul i64 %.size77.sroa.0.0.copyload, %13
  %.fr268 = freeze i1 %25
  br i1 %.fr268, label %L133.preheader.split.split.us, label %L133.preheader.split.split

L133.preheader.split.split.us:                    ; preds = %L55, %L85.postloop, %L55.us
  %value_phi20.lcssa2 = phi i64 [ %value_phi20.postloop, %L85.postloop ], [ 1, %L55.us ], [ %value_phi20, %L55 ]
  %29 = getelementptr inbounds nuw i8, ptr %"new::Tuple56", i64 8
  store i64 1, ptr %"new::Tuple56", align 8, !dbg !112, !tbaa !114, !alias.scope !116, !noalias !117
  store i64 %value_phi20.lcssa2, ptr %29, align 8, !dbg !112, !tbaa !114, !alias.scope !116, !noalias !117
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple56") #3, !dbg !111
  unreachable, !dbg !111

L133.preheader.split.split:                       ; preds = %L55
  %.size77.sroa.2.0.copyload = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %30 = icmp uge i64 %12, %.size77.sroa.2.0.copyload
  %.fr382 = freeze i1 %30
  br i1 %.fr382, label %L163.us334, label %L133.preheader.split.split.split

L163.us334:                                       ; preds = %L133.preheader.split.split, %L133.preheader.split.split.postloop, %L133.preheader.split.split.us58
  %31 = getelementptr inbounds nuw i8, ptr %"new::Tuple75", i64 8
  store i64 1, ptr %"new::Tuple75", align 8, !dbg !118, !tbaa !114, !alias.scope !116, !noalias !117
  store i64 %value_phi13, ptr %31, align 8, !dbg !118, !tbaa !114, !alias.scope !116, !noalias !117
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %tls_pgcstack, ptr nonnull %0, ptr nonnull readonly captures(none) %"new::Tuple75") #3, !dbg !122
  unreachable, !dbg !122

L133.preheader.split.split.split:                 ; preds = %L133.preheader.split.split
  %gep.peel = getelementptr i8, ptr %memoryref_data47, i64 %18, !dbg !123
  %32 = load double, ptr %gep.peel, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %.not1444.not = icmp eq i64 %.size58.sroa.0.0.copyload.fr, 0, !dbg !125
  br i1 %.not1444.not, label %odessy.chk10, label %L223.peel, !dbg !111

L223.peel:                                        ; preds = %L133.preheader.split.split.split
  %.not1445.not = icmp eq i64 %.size77.sroa.0.0.copyload, 0, !dbg !129
  br i1 %.not1445.not, label %odessy.chk13, label %L285.peel, !dbg !122

L285.peel:                                        ; preds = %L223.peel
  %33 = shl i64 %27, 3, !dbg !123
  %gep167.peel = getelementptr i8, ptr %memoryref_data66, i64 %33, !dbg !123
  %34 = load double, ptr %gep167.peel, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %35 = fmul double %24, %34, !dbg !133
  %36 = fadd double %32, %35, !dbg !136
  %37 = shl i64 %28, 3, !dbg !138
  %gep169.peel = getelementptr i8, ptr %memoryref_data47, i64 %37, !dbg !138
  store double %36, ptr %gep169.peel, align 8, !dbg !138, !tbaa !106, !alias.scope !109, !noalias !110
  br i1 %.not163.not.peel, label %L311.loopexit, label %L133.preheader, !dbg !139

L133.preheader:                                   ; preds = %L285.peel
  %38 = add i64 %.size77.sroa.0.0.copyload, -1, !dbg !111
  %umin1598 = call i64 @llvm.umin.i64(i64 %38, i64 %10), !dbg !111
  %39 = freeze i64 %umin1598, !dbg !111
  %40 = add i64 %.size58.sroa.0.0.copyload.fr, -1, !dbg !111
  %umin1599 = call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !111
  %umin1600 = call i64 @llvm.umin.i64(i64 %umin1599, i64 %16), !dbg !111
  %41 = add nuw i64 %umin1600, 1, !dbg !111
  %min.iters.check = icmp ult i64 %umin1600, 24, !dbg !111
  br i1 %min.iters.check, label %L133.preheader315, label %vector.scevcheck, !dbg !111

vector.scevcheck:                                 ; preds = %L133.preheader
  %scevgep = getelementptr i8, ptr %memoryref_data47, i64 8, !dbg !111
  %scevgep1566 = getelementptr i8, ptr %scevgep, i64 %17, !dbg !111
  %mul.result = shl i64 %umin1600, 3, !dbg !111
  %42 = getelementptr i8, ptr %scevgep1566, i64 %mul.result, !dbg !111
  %43 = icmp ult ptr %42, %scevgep1566, !dbg !111
  %44 = mul i64 %.size77.sroa.0.0.copyload, %11, !dbg !111
  %scevgep1568 = getelementptr i8, ptr %scevgep, i64 %44, !dbg !111
  %mul.overflow1571 = icmp ugt i64 %umin1600, 2305843009213693951, !dbg !111
  %45 = getelementptr i8, ptr %scevgep1568, i64 %mul.result, !dbg !111
  %46 = icmp ult ptr %45, %scevgep1568, !dbg !111
  %47 = or i1 %mul.overflow1571, %46, !dbg !111
  %scevgep1572 = getelementptr i8, ptr %memoryref_data66, i64 8, !dbg !111
  %48 = mul i64 %.size58.sroa.0.0.copyload.fr, %21, !dbg !111
  %scevgep1575 = getelementptr i8, ptr %scevgep1572, i64 %48, !dbg !111
  %49 = getelementptr i8, ptr %scevgep1575, i64 %mul.result, !dbg !111
  %50 = icmp ult ptr %49, %scevgep1575, !dbg !111
  %51 = or i1 %43, %47, !dbg !111
  %52 = or i1 %50, %51, !dbg !111
  br i1 %52, label %L133.preheader315, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep1581 = getelementptr i8, ptr %memoryref_data47, i64 16, !dbg !111
  %53 = getelementptr i8, ptr %scevgep1581, i64 %44, !dbg !111
  %scevgep1585 = getelementptr i8, ptr %53, i64 %mul.result, !dbg !111
  %scevgep1589 = getelementptr i8, ptr %scevgep1581, i64 %17, !dbg !111
  %scevgep1590 = getelementptr i8, ptr %scevgep1589, i64 %mul.result, !dbg !111
  %scevgep1593 = getelementptr i8, ptr %memoryref_data66, i64 16, !dbg !111
  %54 = getelementptr i8, ptr %scevgep1593, i64 %48, !dbg !111
  %scevgep1594 = getelementptr i8, ptr %54, i64 %mul.result, !dbg !111
  %bound0 = icmp ult ptr %scevgep1568, %scevgep1590, !dbg !111
  %bound1 = icmp ult ptr %scevgep1566, %scevgep1585, !dbg !111
  %found.conflict = and i1 %bound0, %bound1, !dbg !111
  %bound01595 = icmp ult ptr %scevgep1568, %scevgep1594, !dbg !111
  %bound11596 = icmp ult ptr %scevgep1575, %scevgep1585, !dbg !111
  %found.conflict1597 = and i1 %bound01595, %bound11596, !dbg !111
  %conflict.rdx = or i1 %found.conflict, %found.conflict1597, !dbg !111
  br i1 %conflict.rdx, label %L133.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %41, 3, !dbg !111
  %55 = icmp eq i64 %n.mod.vf, 0, !dbg !111
  %56 = select i1 %55, i64 4, i64 %n.mod.vf, !dbg !111
  %n.vec = sub nuw nsw i64 %41, %56, !dbg !111
  %broadcast.splatinsert = insertelement <4 x double> poison, double %24, i64 0, !dbg !111
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer, !dbg !111
  br label %vector.body, !dbg !111

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 2, !dbg !111
  %57 = add i64 %offset.idx, %15, !dbg !140
  %58 = shl i64 %57, 3, !dbg !123
  %59 = getelementptr i8, ptr %invariant.gep, i64 %58, !dbg !123
  %wide.load = load <4 x double>, ptr %59, align 8, !dbg !123, !tbaa !106, !alias.scope !146, !noalias !110
  %60 = add i64 %offset.idx, %27, !dbg !140
  %61 = shl i64 %60, 3, !dbg !123
  %62 = getelementptr i8, ptr %invariant.gep166, i64 %61, !dbg !123
  %wide.load1601 = load <4 x double>, ptr %62, align 8, !dbg !123, !tbaa !106, !alias.scope !149, !noalias !110
  %63 = fmul <4 x double> %broadcast.splat, %wide.load1601, !dbg !133
  %64 = fadd <4 x double> %wide.load, %63, !dbg !136
  %65 = add i64 %offset.idx, %28, !dbg !151
  %66 = shl i64 %65, 3, !dbg !138
  %67 = getelementptr i8, ptr %invariant.gep, i64 %66, !dbg !138
  store <4 x double> %64, ptr %67, align 8, !dbg !138, !tbaa !106, !alias.scope !157, !noalias !159
  %index.next = add nuw nsw i64 %index, 4
  %68 = icmp eq i64 %index.next, %n.vec
  br i1 %68, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !160

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 2, !dbg !111
  br label %L133.preheader315, !dbg !111

L133.preheader315:                                ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L133.preheader
  %value_phi35.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 2, %vector.memcheck ], [ 2, %vector.scevcheck ], [ 2, %L133.preheader ]
  br label %L133, !dbg !111

L133:                                             ; preds = %L133.preheader315, %L285
  %value_phi35 = phi i64 [ %77, %L285 ], [ %value_phi35.ph, %L133.preheader315 ]
  %69 = add i64 %value_phi35, -1, !dbg !164
  %.not1446 = icmp ult i64 %69, %.size39.sroa.0.0.copyload.fr, !dbg !125
  br i1 %.not1446, label %L163, label %odessy.chk4, !dbg !111

L163:                                             ; preds = %L133
  %70 = add i64 %value_phi35, %15, !dbg !140
  %memoryref_offset49 = shl i64 %70, 3, !dbg !123
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset49, !dbg !123
  %71 = load double, ptr %gep, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %.not1447 = icmp ult i64 %69, %.size58.sroa.0.0.copyload.fr, !dbg !125
  br i1 %.not1447, label %L223, label %odessy.chk9, !dbg !111

L223:                                             ; preds = %L163
  %.not1448 = icmp ult i64 %69, %.size77.sroa.0.0.copyload, !dbg !129
  br i1 %.not1448, label %L285, label %odessy.chk12, !dbg !122

L285:                                             ; preds = %L223
  %72 = add i64 %value_phi35, %27, !dbg !140
  %memoryref_offset68 = shl i64 %72, 3, !dbg !123
  %gep167 = getelementptr i8, ptr %invariant.gep166, i64 %memoryref_offset68, !dbg !123
  %73 = load double, ptr %gep167, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %74 = fmul double %24, %73, !dbg !133
  %75 = fadd double %71, %74, !dbg !136
  %76 = add i64 %value_phi35, %28, !dbg !151
  %memoryref_offset85 = shl i64 %76, 3, !dbg !138
  %gep169 = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset85, !dbg !138
  store double %75, ptr %gep169, align 8, !dbg !138, !tbaa !106, !alias.scope !109, !noalias !110
  %.not163.not = icmp eq i64 %value_phi35, %value_phi31, !dbg !165
  %77 = add i64 %value_phi35, 1, !dbg !166
  br i1 %.not163.not, label %L311.loopexit, label %L133, !dbg !139, !llvm.loop !167

L311.loopexit:                                    ; preds = %L285, %L285.peel
  %78 = add nuw i64 %value_phi20, 1, !dbg !168
  %indvar.next1574 = add nuw nsw i64 %indvar1573, 1, !dbg !169
  %exitcond.not = icmp eq i64 %indvar.next1574, %exit.mainloop.at, !dbg !169
  br i1 %exitcond.not, label %main.exit.selector, label %L55, !dbg !169

main.exit.selector:                               ; preds = %L311.loopexit
  %79 = icmp ult i64 %value_phi20, %value_phi16, !dbg !169
  br i1 %79, label %L55.postloop, label %L322.loopexit.split, !dbg !169

L322.loopexit.split:                              ; preds = %L311.loopexit.postloop, %main.exit.selector
  %.not165.not = icmp eq i64 %value_phi13, %value_phi, !dbg !170
  %80 = add nuw i64 %value_phi13, 1, !dbg !171
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !172
  br i1 %.not165.not, label %L333, label %L37, !dbg !172

L333:                                             ; preds = %L322.loopexit.split, %L37.preheader, %L20
  %frame.prev1759 = load ptr, ptr %frame.prev, align 8, !tbaa !22
  store ptr %frame.prev1759, ptr %tls_pgcstack, align 8, !tbaa !22
  ret ptr %0, !dbg !173

L334:                                             ; preds = %L15
  %81 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !58
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %82 = extractvalue [1 x ptr] %81, 0, !dbg !58
  store ptr %82, ptr %gc_slot_addr_0, align 16
  %ptls_load1749 = load ptr, ptr %ptls_field, align 8, !dbg !58, !tbaa !22
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1749, i32 360, i32 16, i64 126037352129680) #9, !dbg !58
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch", i64 -8, !dbg !58
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !58, !tbaa !174
  store ptr %82, ptr %"box::DimensionMismatch", align 8, !dbg !58, !tbaa !176, !alias.scope !109, !noalias !110
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !58
  unreachable, !dbg !58

L337:                                             ; preds = %L10
  %83 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !55
  %gc_slot_addr_01728 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %84 = extractvalue [1 x ptr] %83, 0, !dbg !55
  store ptr %84, ptr %gc_slot_addr_01728, align 16
  %ptls_load1753 = load ptr, ptr %ptls_field, align 8, !dbg !55, !tbaa !22
  %"box::DimensionMismatch115" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1753, i32 360, i32 16, i64 126037352129680) #9, !dbg !55
  %"box::DimensionMismatch115.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch115", i64 -8, !dbg !55
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch115.tag_addr" unordered, align 8, !dbg !55, !tbaa !174
  store ptr %84, ptr %"box::DimensionMismatch115", align 8, !dbg !55, !tbaa !176, !alias.scope !109, !noalias !110
  store ptr null, ptr %gc_slot_addr_01728, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch115"), !dbg !55
  unreachable, !dbg !55

L340:                                             ; preds = %top
  %85 = call swiftcc [1 x ptr] @j_DimensionMismatch_148(ptr nonnull swiftself %tls_pgcstack, ptr nonnull @"jl_global#152.jit"), !dbg !50
  %gc_slot_addr_01730 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %86 = extractvalue [1 x ptr] %85, 0, !dbg !50
  store ptr %86, ptr %gc_slot_addr_01730, align 16
  %ptls_load1757 = load ptr, ptr %ptls_field, align 8, !dbg !50, !tbaa !22
  %"box::DimensionMismatch121" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load1757, i32 360, i32 16, i64 126037352129680) #9, !dbg !50
  %"box::DimensionMismatch121.tag_addr" = getelementptr inbounds i8, ptr %"box::DimensionMismatch121", i64 -8, !dbg !50
  store atomic i64 126037352129680, ptr %"box::DimensionMismatch121.tag_addr" unordered, align 8, !dbg !50, !tbaa !174
  store ptr %86, ptr %"box::DimensionMismatch121", align 8, !dbg !50, !tbaa !176, !alias.scope !109, !noalias !110
  store ptr null, ptr %gc_slot_addr_01730, align 16
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch121"), !dbg !50
  unreachable, !dbg !50

odessy.chk:                                       ; preds = %L55.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk4:                                      ; preds = %L133, %L133.postloop
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L133.preheader.split.split.us58
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk9:                                      ; preds = %L163, %L163.postloop
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L133.preheader.split.split.split, %L163.peel.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk12:                                     ; preds = %L223, %L223.postloop
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %L223.peel, %L223.peel.postloop
  call void @odessy.chk(i32 13)
  unreachable

L55.postloop:                                     ; preds = %main.exit.selector, %L311.loopexit.postloop
  %indvar1573.postloop = phi i64 [ %indvar.next1574.postloop, %L311.loopexit.postloop ], [ %exit.mainloop.at, %main.exit.selector ]
  %value_phi20.postloop = phi i64 [ %142, %L311.loopexit.postloop ], [ %78, %main.exit.selector ]
  %87 = shl i64 %indvar1573.postloop, 3, !dbg !85
  %88 = add nsw i64 %value_phi20.postloop, -1, !dbg !85
  %.not1442.postloop = icmp ult i64 %88, %.size2.sroa.1.0.copyload, !dbg !179
  br i1 %.not1442.postloop, label %L85.postloop, label %odessy.chk, !dbg !79

L85.postloop:                                     ; preds = %L55.postloop
  %89 = add i64 %value_phi20.postloop, %14, !dbg !92
  %memoryref_offset.postloop = shl i64 %89, 3, !dbg !103
  %gep470.postloop = getelementptr i8, ptr %invariant.gep469, i64 %memoryref_offset.postloop, !dbg !103
  %90 = load double, ptr %gep470.postloop, align 8, !dbg !103, !tbaa !106, !alias.scope !109, !noalias !110
  %memoryref_data47.postloop = load ptr, ptr %0, align 8
  %invariant.gep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 -8, !dbg !111
  %.size58.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr1, align 8
  %.size58.sroa.0.0.copyload.fr.postloop = freeze i64 %.size58.sroa.0.0.copyload.postloop, !dbg !111
  %.size58.sroa.2.0.copyload.postloop = load i64, ptr %.size2.sroa.1.0..size_ptr1.sroa_idx, align 8
  %91 = icmp uge i64 %88, %.size58.sroa.2.0.copyload.postloop
  %92 = add nuw i64 %value_phi20.postloop, 2305843009213693951
  %93 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %92
  %memoryref_data66.postloop = load ptr, ptr %2, align 8
  %invariant.gep166.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 -8, !dbg !111
  %.size77.sroa.0.0.copyload.postloop = load i64, ptr %.size_ptr, align 8
  %94 = mul i64 %.size77.sroa.0.0.copyload.postloop, %13
  %.fr268.postloop = freeze i1 %91
  br i1 %.fr268.postloop, label %L133.preheader.split.split.us, label %L133.preheader.split.split.postloop

L133.preheader.split.split.postloop:              ; preds = %L85.postloop
  %.size77.sroa.2.0.copyload.postloop = load i64, ptr %.size.sroa.3.0..size_ptr.sroa_idx, align 8
  %95 = icmp uge i64 %12, %.size77.sroa.2.0.copyload.postloop
  %.fr382.postloop = freeze i1 %95
  br i1 %.fr382.postloop, label %L163.us334, label %L163.peel.postloop

L163.peel.postloop:                               ; preds = %L133.preheader.split.split.postloop
  %gep.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %18, !dbg !123
  %96 = load double, ptr %gep.peel.postloop, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %.not1444.postloop.not = icmp eq i64 %.size58.sroa.0.0.copyload.fr.postloop, 0, !dbg !125
  br i1 %.not1444.postloop.not, label %odessy.chk10, label %L223.peel.postloop, !dbg !111

L223.peel.postloop:                               ; preds = %L163.peel.postloop
  %.not1445.postloop.not = icmp eq i64 %.size77.sroa.0.0.copyload.postloop, 0, !dbg !129
  br i1 %.not1445.postloop.not, label %odessy.chk13, label %L285.peel.postloop, !dbg !122

L285.peel.postloop:                               ; preds = %L223.peel.postloop
  %97 = shl i64 %93, 3, !dbg !123
  %gep167.peel.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 %97, !dbg !123
  %98 = load double, ptr %gep167.peel.postloop, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %99 = fmul double %90, %98, !dbg !133
  %100 = fadd double %96, %99, !dbg !136
  %101 = shl i64 %94, 3, !dbg !138
  %gep169.peel.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 %101, !dbg !138
  store double %100, ptr %gep169.peel.postloop, align 8, !dbg !138, !tbaa !106, !alias.scope !109, !noalias !110
  br i1 %.not163.not.peel, label %L311.loopexit.postloop, label %L133.preheader.postloop, !dbg !139

L133.preheader.postloop:                          ; preds = %L285.peel.postloop
  %102 = add i64 %.size77.sroa.0.0.copyload.postloop, -1, !dbg !111
  %umin1598.postloop = call i64 @llvm.umin.i64(i64 %102, i64 %10), !dbg !111
  %103 = freeze i64 %umin1598.postloop, !dbg !111
  %104 = add i64 %.size58.sroa.0.0.copyload.fr.postloop, -1, !dbg !111
  %umin1599.postloop = call i64 @llvm.umin.i64(i64 %103, i64 %104), !dbg !111
  %umin1600.postloop = call i64 @llvm.umin.i64(i64 %umin1599.postloop, i64 %16), !dbg !111
  %105 = add nuw i64 %umin1600.postloop, 1, !dbg !111
  %min.iters.check.postloop = icmp ult i64 %umin1600.postloop, 24, !dbg !111
  br i1 %min.iters.check.postloop, label %L133.postloop.preheader, label %vector.scevcheck.postloop, !dbg !111

vector.scevcheck.postloop:                        ; preds = %L133.preheader.postloop
  %scevgep.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 8, !dbg !111
  %scevgep1566.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %17, !dbg !111
  %mul.result.postloop = shl i64 %umin1600.postloop, 3, !dbg !111
  %106 = getelementptr i8, ptr %scevgep1566.postloop, i64 %mul.result.postloop, !dbg !111
  %107 = icmp ult ptr %106, %scevgep1566.postloop, !dbg !111
  %108 = mul i64 %.size77.sroa.0.0.copyload.postloop, %11, !dbg !111
  %scevgep1568.postloop = getelementptr i8, ptr %scevgep.postloop, i64 %108, !dbg !111
  %mul.overflow1571.postloop = icmp ugt i64 %umin1600.postloop, 2305843009213693951, !dbg !111
  %109 = getelementptr i8, ptr %scevgep1568.postloop, i64 %mul.result.postloop, !dbg !111
  %110 = icmp ult ptr %109, %scevgep1568.postloop, !dbg !111
  %111 = or i1 %mul.overflow1571.postloop, %110, !dbg !111
  %scevgep1572.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 8, !dbg !111
  %112 = mul i64 %.size58.sroa.0.0.copyload.fr.postloop, %87, !dbg !111
  %scevgep1575.postloop = getelementptr i8, ptr %scevgep1572.postloop, i64 %112, !dbg !111
  %113 = getelementptr i8, ptr %scevgep1575.postloop, i64 %mul.result.postloop, !dbg !111
  %114 = icmp ult ptr %113, %scevgep1575.postloop, !dbg !111
  %115 = or i1 %107, %111, !dbg !111
  %116 = or i1 %114, %115, !dbg !111
  br i1 %116, label %L133.postloop.preheader, label %vector.memcheck.postloop

vector.memcheck.postloop:                         ; preds = %vector.scevcheck.postloop
  %scevgep1581.postloop = getelementptr i8, ptr %memoryref_data47.postloop, i64 16, !dbg !111
  %117 = getelementptr i8, ptr %scevgep1581.postloop, i64 %108, !dbg !111
  %scevgep1585.postloop = getelementptr i8, ptr %117, i64 %mul.result.postloop, !dbg !111
  %scevgep1589.postloop = getelementptr i8, ptr %scevgep1581.postloop, i64 %17, !dbg !111
  %scevgep1590.postloop = getelementptr i8, ptr %scevgep1589.postloop, i64 %mul.result.postloop, !dbg !111
  %scevgep1593.postloop = getelementptr i8, ptr %memoryref_data66.postloop, i64 16, !dbg !111
  %118 = getelementptr i8, ptr %scevgep1593.postloop, i64 %112, !dbg !111
  %scevgep1594.postloop = getelementptr i8, ptr %118, i64 %mul.result.postloop, !dbg !111
  %bound0.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1590.postloop, !dbg !111
  %bound1.postloop = icmp ult ptr %scevgep1566.postloop, %scevgep1585.postloop, !dbg !111
  %found.conflict.postloop = and i1 %bound0.postloop, %bound1.postloop, !dbg !111
  %bound01595.postloop = icmp ult ptr %scevgep1568.postloop, %scevgep1594.postloop, !dbg !111
  %bound11596.postloop = icmp ult ptr %scevgep1575.postloop, %scevgep1585.postloop, !dbg !111
  %found.conflict1597.postloop = and i1 %bound01595.postloop, %bound11596.postloop, !dbg !111
  %conflict.rdx.postloop = or i1 %found.conflict.postloop, %found.conflict1597.postloop, !dbg !111
  br i1 %conflict.rdx.postloop, label %L133.postloop.preheader, label %vector.ph.postloop

vector.ph.postloop:                               ; preds = %vector.memcheck.postloop
  %n.mod.vf.postloop = and i64 %105, 3, !dbg !111
  %119 = icmp eq i64 %n.mod.vf.postloop, 0, !dbg !111
  %120 = select i1 %119, i64 4, i64 %n.mod.vf.postloop, !dbg !111
  %n.vec.postloop = sub nuw nsw i64 %105, %120, !dbg !111
  %broadcast.splatinsert.postloop = insertelement <4 x double> poison, double %90, i64 0, !dbg !111
  %broadcast.splat.postloop = shufflevector <4 x double> %broadcast.splatinsert.postloop, <4 x double> poison, <4 x i32> zeroinitializer, !dbg !111
  br label %vector.body.postloop, !dbg !111

vector.body.postloop:                             ; preds = %vector.body.postloop, %vector.ph.postloop
  %index.postloop = phi i64 [ 0, %vector.ph.postloop ], [ %index.next.postloop, %vector.body.postloop ]
  %offset.idx.postloop = or disjoint i64 %index.postloop, 2, !dbg !111
  %121 = add i64 %offset.idx.postloop, %15, !dbg !140
  %122 = shl i64 %121, 3, !dbg !123
  %123 = getelementptr i8, ptr %invariant.gep.postloop, i64 %122, !dbg !123
  %wide.load.postloop = load <4 x double>, ptr %123, align 8, !dbg !123, !tbaa !106, !alias.scope !146, !noalias !110
  %124 = add i64 %offset.idx.postloop, %93, !dbg !140
  %125 = shl i64 %124, 3, !dbg !123
  %126 = getelementptr i8, ptr %invariant.gep166.postloop, i64 %125, !dbg !123
  %wide.load1601.postloop = load <4 x double>, ptr %126, align 8, !dbg !123, !tbaa !106, !alias.scope !149, !noalias !110
  %127 = fmul <4 x double> %broadcast.splat.postloop, %wide.load1601.postloop, !dbg !133
  %128 = fadd <4 x double> %wide.load.postloop, %127, !dbg !136
  %129 = add i64 %offset.idx.postloop, %94, !dbg !151
  %130 = shl i64 %129, 3, !dbg !138
  %131 = getelementptr i8, ptr %invariant.gep.postloop, i64 %130, !dbg !138
  store <4 x double> %128, ptr %131, align 8, !dbg !138, !tbaa !106, !alias.scope !157, !noalias !159
  %index.next.postloop = add nuw nsw i64 %index.postloop, 4
  %132 = icmp eq i64 %index.next.postloop, %n.vec.postloop
  br i1 %132, label %scalar.ph.postloop.loopexit, label %vector.body.postloop, !llvm.loop !160

scalar.ph.postloop.loopexit:                      ; preds = %vector.body.postloop
  %ind.end.postloop = add nuw nsw i64 %n.vec.postloop, 2, !dbg !111
  br label %L133.postloop.preheader, !dbg !111

L133.postloop.preheader:                          ; preds = %scalar.ph.postloop.loopexit, %vector.memcheck.postloop, %vector.scevcheck.postloop, %L133.preheader.postloop
  %value_phi35.postloop.ph = phi i64 [ %ind.end.postloop, %scalar.ph.postloop.loopexit ], [ 2, %vector.memcheck.postloop ], [ 2, %vector.scevcheck.postloop ], [ 2, %L133.preheader.postloop ]
  br label %L133.postloop, !dbg !111

L133.postloop:                                    ; preds = %L133.postloop.preheader, %L285.postloop
  %value_phi35.postloop = phi i64 [ %141, %L285.postloop ], [ %value_phi35.postloop.ph, %L133.postloop.preheader ]
  %133 = add i64 %value_phi35.postloop, -1, !dbg !164
  %.not1446.postloop = icmp ult i64 %133, %.size39.sroa.0.0.copyload.fr, !dbg !125
  br i1 %.not1446.postloop, label %L163.postloop, label %odessy.chk4, !dbg !111

L163.postloop:                                    ; preds = %L133.postloop
  %134 = add i64 %value_phi35.postloop, %15, !dbg !140
  %memoryref_offset49.postloop = shl i64 %134, 3, !dbg !123
  %gep.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset49.postloop, !dbg !123
  %135 = load double, ptr %gep.postloop, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %.not1447.postloop = icmp ult i64 %133, %.size58.sroa.0.0.copyload.fr.postloop, !dbg !125
  br i1 %.not1447.postloop, label %L223.postloop, label %odessy.chk9, !dbg !111

L223.postloop:                                    ; preds = %L163.postloop
  %.not1448.postloop = icmp ult i64 %133, %.size77.sroa.0.0.copyload.postloop, !dbg !129
  br i1 %.not1448.postloop, label %L285.postloop, label %odessy.chk12, !dbg !122

L285.postloop:                                    ; preds = %L223.postloop
  %136 = add i64 %value_phi35.postloop, %93, !dbg !140
  %memoryref_offset68.postloop = shl i64 %136, 3, !dbg !123
  %gep167.postloop = getelementptr i8, ptr %invariant.gep166.postloop, i64 %memoryref_offset68.postloop, !dbg !123
  %137 = load double, ptr %gep167.postloop, align 8, !dbg !123, !tbaa !106, !alias.scope !109, !noalias !110
  %138 = fmul double %90, %137, !dbg !133
  %139 = fadd double %135, %138, !dbg !136
  %140 = add i64 %value_phi35.postloop, %94, !dbg !151
  %memoryref_offset85.postloop = shl i64 %140, 3, !dbg !138
  %gep169.postloop = getelementptr i8, ptr %invariant.gep.postloop, i64 %memoryref_offset85.postloop, !dbg !138
  store double %139, ptr %gep169.postloop, align 8, !dbg !138, !tbaa !106, !alias.scope !109, !noalias !110
  %.not163.not.postloop = icmp eq i64 %value_phi35.postloop, %value_phi31, !dbg !165
  %141 = add i64 %value_phi35.postloop, 1, !dbg !166
  br i1 %.not163.not.postloop, label %L311.loopexit.postloop, label %L133.postloop, !dbg !139, !llvm.loop !167

L311.loopexit.postloop:                           ; preds = %L285.postloop, %L285.peel.postloop
  %.not164.not.postloop = icmp eq i64 %value_phi20.postloop, %value_phi16, !dbg !180
  %142 = add nuw i64 %value_phi20.postloop, 1, !dbg !168
  %indvar.next1574.postloop = add i64 %indvar1573.postloop, 1, !dbg !169
  br i1 %.not164.not.postloop, label %L322.loopexit.split, label %L55.postloop, !dbg !169, !llvm.loop !181, !loop_constrainer.loop.clone !17
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

attributes #0 = { "frame-pointer"="all" "julia.fsig"="gemm!(Array{Float64, 2}, Array{Float64, 2}, Array{Float64, 2})" "probe-stack"="inline-asm" }
attributes #1 = { noreturn "frame-pointer"="all" "julia.fsig"="throw_boundserror(Array{Float64, 2}, Tuple{Int64, Int64})" "probe-stack"="inline-asm" }
attributes #2 = { "frame-pointer"="all" "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #3 = { noreturn }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }

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
!114 = !{!115, !115, i64 0}
!115 = !{!"jtbaa_stack", !24, i64 0}
!116 = !{!33}
!117 = !{!32, !34, !35, !29}
!118 = !DILocation(line: 1002, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!120 = !DILocation(line: 997, scope: !121, inlinedAt: !113)
!121 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !41, file: !41, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!122 = !DILocation(line: 699, scope: !80, inlinedAt: !118)
!123 = !DILocation(line: 920, scope: !104, inlinedAt: !124)
!124 = !DILocation(line: 929, scope: !83, inlinedAt: !113)
!125 = !DILocation(line: 519, scope: !69, inlinedAt: !126)
!126 = !DILocation(line: 754, scope: !88, inlinedAt: !127)
!127 = !DILocation(line: 725, scope: !90, inlinedAt: !128)
!128 = !DILocation(line: 681, scope: !80, inlinedAt: !111)
!129 = !DILocation(line: 519, scope: !69, inlinedAt: !130)
!130 = !DILocation(line: 754, scope: !88, inlinedAt: !131)
!131 = !DILocation(line: 725, scope: !90, inlinedAt: !132)
!132 = !DILocation(line: 681, scope: !80, inlinedAt: !122)
!133 = !DILocation(line: 497, scope: !134, inlinedAt: !113)
!134 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !135, file: !135, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!135 = !DIFile(filename: "float.jl", directory: ".")
!136 = !DILocation(line: 495, scope: !137, inlinedAt: !113)
!137 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !135, file: !135, type: !42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!138 = !DILocation(line: 1003, scope: !119, inlinedAt: !120)
!139 = !DILocation(line: 22, scope: !4)
!140 = !DILocation(line: 87, scope: !93, inlinedAt: !141)
!141 = !DILocation(line: 3081, scope: !95, inlinedAt: !142)
!142 = !DILocation(line: 3081, scope: !95, inlinedAt: !143)
!143 = !DILocation(line: 3065, scope: !98, inlinedAt: !144)
!144 = !DILocation(line: 3049, scope: !98, inlinedAt: !145)
!145 = !DILocation(line: 1377, scope: !101, inlinedAt: !124)
!146 = !{!34, !147}
!147 = distinct !{!147, !148}
!148 = distinct !{!148, !"LVerDomain"}
!149 = !{!34, !150}
!150 = distinct !{!150, !148}
!151 = !DILocation(line: 87, scope: !93, inlinedAt: !152)
!152 = !DILocation(line: 3081, scope: !95, inlinedAt: !153)
!153 = !DILocation(line: 3081, scope: !95, inlinedAt: !154)
!154 = !DILocation(line: 3065, scope: !98, inlinedAt: !155)
!155 = !DILocation(line: 3049, scope: !98, inlinedAt: !156)
!156 = !DILocation(line: 1377, scope: !101, inlinedAt: !138)
!157 = !{!34, !158}
!158 = distinct !{!158, !148}
!159 = !{!32, !33, !35, !29, !147, !150}
!160 = distinct !{!160, !161, !162, !163}
!161 = !{!"llvm.loop.peeled.count", i32 1}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = !DILocation(line: 86, scope: !86, inlinedAt: !126)
!165 = !DILocation(line: 637, scope: !52, inlinedAt: !166)
!166 = !DILocation(line: 921, scope: !77, inlinedAt: !139)
!167 = distinct !{!167, !161, !162}
!168 = !DILocation(line: 921, scope: !77, inlinedAt: !169)
!169 = !DILocation(line: 23, scope: !4)
!170 = !DILocation(line: 637, scope: !52, inlinedAt: !171)
!171 = !DILocation(line: 921, scope: !77, inlinedAt: !172)
!172 = !DILocation(line: 24, scope: !4)
!173 = !DILocation(line: 25, scope: !4)
!174 = !{!175, !175, i64 0}
!175 = !{!"jtbaa_tag", !108, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"jtbaa_immut", !178, i64 0}
!178 = !{!"jtbaa_value", !108, i64 0}
!179 = !DILocation(line: 519, scope: !69, inlinedAt: !87)
!180 = !DILocation(line: 637, scope: !52, inlinedAt: !168)
!181 = distinct !{!181, !182, !183, !184, !185}
!182 = !{!"llvm.loop.unroll.disable"}
!183 = !{!"llvm.loop.vectorize.enable", i1 false}
!184 = !{!"llvm.loop.licm_versioning.disable"}
!185 = !{!"llvm.loop.distribute.enable", i1 false}
