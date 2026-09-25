; ModuleID = 'results/static/guard_competitors/Julia_jl_filt_dsp/irce.ll'
source_filename = "filt!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

; Function Attrs: nounwind
define noundef nonnull ptr @"japi1_filt!_145"(ptr readnone captures(none) %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #0 !dbg !4 {
top:
  %stackargs = alloca ptr, align 8
  store volatile ptr %"args::Any[]", ptr %stackargs, align 8
  %pgcstack = tail call ptr inttoptr (i64 4365385500 to ptr)(i64 4365385536) #3
  %0 = load ptr, ptr %"args::Any[]", align 8, !tbaa !24, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %0, !18, !DIExpression(), !38)
  %1 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !24, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %2, !20, !DIExpression(), !38)
  %3 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !24, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %4, !21, !DIExpression(), !38)
  %5 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !24, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %6, !22, !DIExpression(), !38)
  %7 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !24, !invariant.load !17, !alias.scope !28, !noalias !31, !nonnull !17, !dereferenceable !36, !align !37
    #dbg_declare(ptr %8, !23, !DIExpression(), !38)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !39
  %9 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %9, align 8, !tbaa !24, !invariant.load !17
  fence syncscope("singlethread") seq_cst
  %10 = load volatile i64, ptr %safepoint, align 8, !dbg !38
  fence syncscope("singlethread") seq_cst
  %.size_ptr = getelementptr inbounds nuw i8, ptr %8, i64 16, !dbg !41
  %.size.0.copyload = load i64, ptr %.size_ptr, align 8, !dbg !41
  %.size.0.copyload.fr = freeze i64 %.size.0.copyload
  %.size_ptr1 = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !46
  %11 = load i64, ptr %.size_ptr1, align 8, !dbg !46, !tbaa !48, !alias.scope !49, !noalias !50
  %value_phi = tail call i64 @llvm.smax.i64(i64 %11, i64 0), !dbg !51
  %12 = icmp slt i64 %11, 1, !dbg !59
  br i1 %12, label %L281, label %L23.preheader, !dbg !58

L23.preheader:                                    ; preds = %top
  %memoryref_data = load ptr, ptr %6, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !69
  %.not183 = icmp eq i64 %.size.0.copyload.fr, 0
  %.size_ptr22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.size23.0.copyload = load i64, ptr %.size_ptr22, align 8
  %.size23.0.copyload.fr = freeze i64 %.size23.0.copyload
  %memoryref_data15 = load ptr, ptr %8, align 8
  %memoryref_data26 = load ptr, ptr %2, align 8
  %13 = add i64 %.size.0.copyload.fr, -1
  %value_phi33 = tail call i64 @llvm.smax.i64(i64 %13, i64 0)
  %14 = icmp slt i64 %13, 1
  %.size_ptr65 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not190 = icmp ult i64 %.size.0.copyload.fr, %.size23.0.copyload.fr
  %.size110.0.copyload = load i64, ptr %.size_ptr65, align 8
  %.size110.0.copyload.fr = freeze i64 %.size110.0.copyload
  %.not191 = icmp ult i64 %.size.0.copyload.fr, %.size110.0.copyload.fr
  %memoryref_byteoffset102 = shl i64 %.size.0.copyload.fr, 3
  %memoryref_data107 = getelementptr inbounds i8, ptr %memoryref_data26, i64 %memoryref_byteoffset102
  %memoryref_data113 = load ptr, ptr %4, align 8
  %memoryref_data121 = getelementptr inbounds i8, ptr %memoryref_data113, i64 %memoryref_byteoffset102
  %15 = getelementptr i8, ptr %memoryref_data15, i64 %memoryref_byteoffset102
  %memoryref_data136 = getelementptr i8, ptr %15, i64 -8
  %.size_ptr137 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.size138.0.copyload = load i64, ptr %.size_ptr137, align 8
  %memoryref_data141 = load ptr, ptr %0, align 8
  %invariant.gep210 = getelementptr i8, ptr %memoryref_data141, i64 -8, !dbg !69
  br i1 %.not183, label %odessy.chk, label %L23.preheader.split, !dbg !72

L23.preheader.split:                              ; preds = %L23.preheader
  %.not184 = icmp eq i64 %.size23.0.copyload.fr, 0
  br i1 %.not184, label %odessy.chk1, label %L23.preheader.split.split, !dbg !72

L23.preheader.split.split:                        ; preds = %L23.preheader.split
  br i1 %14, label %L23.preheader.split.split.split.us, label %L23.preheader.split.split.split, !dbg !74

L23.preheader.split.split.split.us:               ; preds = %L23.preheader.split.split
  br i1 %.not190, label %L23.preheader.split.split.split.us.split.us, label %odessy.chk14, !dbg !75

L23.preheader.split.split.split.us.split.us:      ; preds = %L23.preheader.split.split.split.us
  br i1 %.not191, label %L23.preheader.split.split.split.us.split.us.split.us.split.us, label %odessy.chk16, !dbg !75

L23.preheader.split.split.split.us.split.us.split.us.split.us: ; preds = %L23.preheader.split.split.split.us.split.us
  %16 = add nuw i64 %11, 1, !dbg !69
  %17 = add i64 %.size138.0.copyload, 1, !dbg !69
  br label %L23.us220.us.us.us, !dbg !69

L23.us220.us.us.us:                               ; preds = %L265.us.us.us.us, %L23.preheader.split.split.split.us.split.us.split.us.split.us
  %value_phi6.us221.us.us.us = phi i64 [ %28, %L265.us.us.us.us ], [ 1, %L23.preheader.split.split.split.us.split.us.split.us.split.us ]
  %exitcond.not.not = icmp eq i64 %value_phi6.us221.us.us.us, %16, !dbg !69
  br i1 %exitcond.not.not, label %odessy.chk3, label %L39.us223.us.us.us, !dbg !69

L39.us223.us.us.us:                               ; preds = %L23.us220.us.us.us
  %memoryref_offset.us224.us.us.us = shl i64 %value_phi6.us221.us.us.us, 3, !dbg !77
  %gep.us225.us.us.us = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.us224.us.us.us, !dbg !77
  %18 = load double, ptr %gep.us225.us.us.us, align 8, !dbg !77, !tbaa !78, !alias.scope !81, !noalias !82
  %19 = load double, ptr %memoryref_data15, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %20 = load double, ptr %memoryref_data26, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %21 = fmul double %18, %20, !dbg !84
  %22 = fadd double %19, %21, !dbg !87
  %23 = load double, ptr %memoryref_data107, align 8, !dbg !89, !tbaa !78, !alias.scope !81, !noalias !82
  %24 = fmul double %18, %23, !dbg !90
  %25 = load double, ptr %memoryref_data121, align 8, !dbg !89, !tbaa !78, !alias.scope !81, !noalias !82
  %26 = fmul double %22, %25, !dbg !90
  %27 = fsub double %24, %26, !dbg !91
  store double %27, ptr %memoryref_data136, align 8, !dbg !93, !tbaa !78, !alias.scope !81, !noalias !82
  %exitcond275.not.not = icmp eq i64 %value_phi6.us221.us.us.us, %17, !dbg !98
  br i1 %exitcond275.not.not, label %odessy.chk18, label %L265.us.us.us.us, !dbg !99

L265.us.us.us.us:                                 ; preds = %L39.us223.us.us.us
  %gep211.us.us.us.us = getelementptr i8, ptr %invariant.gep210, i64 %memoryref_offset.us224.us.us.us, !dbg !102
  store double %22, ptr %gep211.us.us.us.us, align 8, !dbg !102, !tbaa !78, !alias.scope !81, !noalias !82
  %.not194.not.us.us.us.us = icmp eq i64 %value_phi6.us221.us.us.us, %value_phi, !dbg !103
  %28 = add nuw i64 %value_phi6.us221.us.us.us, 1, !dbg !106
  br i1 %.not194.not.us.us.us.us, label %L281, label %L23.us220.us.us.us, !dbg !107

L23.preheader.split.split.split:                  ; preds = %L23.preheader.split.split
  br i1 %.not190, label %L23.preheader.split.split.split.split.us, label %L39, !dbg !75

L23.preheader.split.split.split.split.us:         ; preds = %L23.preheader.split.split.split
  br i1 %.not191, label %L23.preheader.split.split.split.split.us.split.us.split.us, label %L39.us233, !dbg !75

L23.preheader.split.split.split.split.us.split.us.split.us: ; preds = %L23.preheader.split.split.split.split.us
  %29 = add nuw i64 %11, 1, !dbg !69
  %30 = add i64 %.size138.0.copyload, 1, !dbg !69
  %31 = add nsw i64 %value_phi33, -1, !dbg !69
  br label %L23.us230.us.us, !dbg !69

L23.us230.us.us:                                  ; preds = %L265.us243.us.us, %L23.preheader.split.split.split.split.us.split.us.split.us
  %value_phi6.us231.us.us = phi i64 [ %88, %L265.us243.us.us ], [ 1, %L23.preheader.split.split.split.split.us.split.us.split.us ]
  %exitcond287.not.not = icmp eq i64 %value_phi6.us231.us.us, %29, !dbg !69
  br i1 %exitcond287.not.not, label %odessy.chk2, label %L39.us233.us.us, !dbg !69

L39.us233.us.us:                                  ; preds = %L23.us230.us.us
  %memoryref_offset.us234.us.us = shl i64 %value_phi6.us231.us.us, 3, !dbg !77
  %gep.us235.us.us = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.us234.us.us, !dbg !77
  %32 = load double, ptr %gep.us235.us.us, align 8, !dbg !77, !tbaa !78, !alias.scope !81, !noalias !82
  %33 = load double, ptr %memoryref_data15, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %34 = load double, ptr %memoryref_data26, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %35 = fmul double %32, %34, !dbg !84
  %36 = fadd double %33, %35, !dbg !87
  %.size53.0.copyload.us.us.us = load i64, ptr %.size_ptr22, align 8
  %.size66.0.copyload.us.us.us = load i64, ptr %.size_ptr65, align 8
  %memoryref_data43.us.us.us = load ptr, ptr %8, align 8
  %memoryref_data56.us.us.us = load ptr, ptr %2, align 8
  %memoryref_data69.us.us.us = load ptr, ptr %4, align 8
  %.size53.0.copyload.us.us.us.fr = freeze i64 %.size53.0.copyload.us.us.us, !dbg !108
  %umax283 = tail call i64 @llvm.umax.i64(i64 %.size53.0.copyload.us.us.us.fr, i64 1), !dbg !108
  %umax285 = tail call i64 @llvm.umax.i64(i64 %.size66.0.copyload.us.us.us, i64 1), !dbg !108
  %37 = add i64 %umax285, -1, !dbg !108
  %umin434 = tail call i64 @llvm.umin.i64(i64 %31, i64 %37), !dbg !108
  %38 = freeze i64 %umin434, !dbg !108
  %39 = add i64 %umax283, -1, !dbg !108
  %umin435 = tail call i64 @llvm.umin.i64(i64 %38, i64 %39), !dbg !108
  %umin436 = tail call i64 @llvm.umin.i64(i64 %umin435, i64 %13), !dbg !108
  %40 = add nuw i64 %umin436, 1, !dbg !108
  %min.iters.check439 = icmp ult i64 %umin436, 12, !dbg !108
  br i1 %min.iters.check439, label %L98.us.us.us.preheader, label %vector.scevcheck408, !dbg !108

vector.scevcheck408:                              ; preds = %L39.us233.us.us
  %mul.result413 = shl i64 %umin436, 3, !dbg !108
  %mul.overflow414 = icmp ugt i64 %umin436, 2305843009213693951, !dbg !108
  %41 = getelementptr i8, ptr %memoryref_data43.us.us.us, i64 %mul.result413, !dbg !108
  %42 = icmp ult ptr %41, %memoryref_data43.us.us.us, !dbg !108
  %43 = or i1 %mul.overflow414, %42, !dbg !108
  br i1 %43, label %L98.us.us.us.preheader, label %vector.memcheck415

vector.memcheck415:                               ; preds = %vector.scevcheck408
  %scevgep416 = getelementptr i8, ptr %memoryref_data43.us.us.us, i64 16, !dbg !108
  %scevgep420 = getelementptr i8, ptr %scevgep416, i64 %mul.result413, !dbg !108
  %scevgep421 = getelementptr i8, ptr %memoryref_data56.us.us.us, i64 8, !dbg !108
  %scevgep422 = getelementptr i8, ptr %memoryref_data56.us.us.us, i64 16, !dbg !108
  %scevgep423 = getelementptr i8, ptr %scevgep422, i64 %mul.result413, !dbg !108
  %scevgep424 = getelementptr i8, ptr %memoryref_data69.us.us.us, i64 8, !dbg !108
  %scevgep425 = getelementptr i8, ptr %memoryref_data69.us.us.us, i64 16, !dbg !108
  %scevgep426 = getelementptr i8, ptr %scevgep425, i64 %mul.result413, !dbg !108
  %bound0427 = icmp ult ptr %memoryref_data43.us.us.us, %scevgep423, !dbg !108
  %bound1428 = icmp ult ptr %scevgep421, %scevgep420, !dbg !108
  %found.conflict429 = and i1 %bound0427, %bound1428, !dbg !108
  %bound0430 = icmp ult ptr %memoryref_data43.us.us.us, %scevgep426, !dbg !108
  %bound1431 = icmp ult ptr %scevgep424, %scevgep420, !dbg !108
  %found.conflict432 = and i1 %bound0430, %bound1431, !dbg !108
  %conflict.rdx433 = or i1 %found.conflict429, %found.conflict432, !dbg !108
  br i1 %conflict.rdx433, label %L98.us.us.us.preheader, label %vector.ph440

vector.ph440:                                     ; preds = %vector.memcheck415
  %n.mod.vf441 = and i64 %40, 7, !dbg !108
  %44 = icmp eq i64 %n.mod.vf441, 0, !dbg !108
  %45 = select i1 %44, i64 8, i64 %n.mod.vf441, !dbg !108
  %n.vec442 = sub nuw nsw i64 %40, %45, !dbg !108
  %broadcast.splatinsert456 = insertelement <2 x double> poison, double %32, i64 0, !dbg !108
  %broadcast.splat457 = shufflevector <2 x double> %broadcast.splatinsert456, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !108
  %broadcast.splatinsert462 = insertelement <2 x double> poison, double %36, i64 0, !dbg !108
  %broadcast.splat463 = shufflevector <2 x double> %broadcast.splatinsert462, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !108
  br label %vector.body445, !dbg !108

vector.body445:                                   ; preds = %vector.body445, %vector.ph440
  %index446 = phi i64 [ 0, %vector.ph440 ], [ %index.next464, %vector.body445 ]
  %offset.idx447 = shl i64 %index446, 3, !dbg !110
  %46 = or disjoint i64 %offset.idx447, 8, !dbg !110
  %47 = getelementptr inbounds i8, ptr %memoryref_data43.us.us.us, i64 %46, !dbg !110
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16, !dbg !110
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 32, !dbg !110
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 48, !dbg !110
  %wide.load448 = load <2 x double>, ptr %47, align 8, !dbg !110, !tbaa !78, !alias.scope !111, !noalias !114
  %wide.load449 = load <2 x double>, ptr %48, align 8, !dbg !110, !tbaa !78, !alias.scope !111, !noalias !114
  %wide.load450 = load <2 x double>, ptr %49, align 8, !dbg !110, !tbaa !78, !alias.scope !111, !noalias !114
  %wide.load451 = load <2 x double>, ptr %50, align 8, !dbg !110, !tbaa !78, !alias.scope !111, !noalias !114
  %51 = getelementptr inbounds i8, ptr %memoryref_data56.us.us.us, i64 %46, !dbg !110
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16, !dbg !110
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 32, !dbg !110
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 48, !dbg !110
  %wide.load452 = load <2 x double>, ptr %51, align 8, !dbg !110, !tbaa !78, !alias.scope !117, !noalias !82
  %wide.load453 = load <2 x double>, ptr %52, align 8, !dbg !110, !tbaa !78, !alias.scope !117, !noalias !82
  %wide.load454 = load <2 x double>, ptr %53, align 8, !dbg !110, !tbaa !78, !alias.scope !117, !noalias !82
  %wide.load455 = load <2 x double>, ptr %54, align 8, !dbg !110, !tbaa !78, !alias.scope !117, !noalias !82
  %55 = fmul <2 x double> %broadcast.splat457, %wide.load452, !dbg !118
  %56 = fmul <2 x double> %broadcast.splat457, %wide.load453, !dbg !118
  %57 = fmul <2 x double> %broadcast.splat457, %wide.load454, !dbg !118
  %58 = fmul <2 x double> %broadcast.splat457, %wide.load455, !dbg !118
  %59 = fadd <2 x double> %wide.load448, %55, !dbg !119
  %60 = fadd <2 x double> %wide.load449, %56, !dbg !119
  %61 = fadd <2 x double> %wide.load450, %57, !dbg !119
  %62 = fadd <2 x double> %wide.load451, %58, !dbg !119
  %63 = getelementptr inbounds i8, ptr %memoryref_data69.us.us.us, i64 %46, !dbg !110
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 16, !dbg !110
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 32, !dbg !110
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 48, !dbg !110
  %wide.load458 = load <2 x double>, ptr %63, align 8, !dbg !110, !tbaa !78, !alias.scope !120, !noalias !82
  %wide.load459 = load <2 x double>, ptr %64, align 8, !dbg !110, !tbaa !78, !alias.scope !120, !noalias !82
  %wide.load460 = load <2 x double>, ptr %65, align 8, !dbg !110, !tbaa !78, !alias.scope !120, !noalias !82
  %wide.load461 = load <2 x double>, ptr %66, align 8, !dbg !110, !tbaa !78, !alias.scope !120, !noalias !82
  %67 = fmul <2 x double> %broadcast.splat463, %wide.load458, !dbg !118
  %68 = fmul <2 x double> %broadcast.splat463, %wide.load459, !dbg !118
  %69 = fmul <2 x double> %broadcast.splat463, %wide.load460, !dbg !118
  %70 = fmul <2 x double> %broadcast.splat463, %wide.load461, !dbg !118
  %71 = fsub <2 x double> %59, %67, !dbg !121
  %72 = fsub <2 x double> %60, %68, !dbg !121
  %73 = fsub <2 x double> %61, %69, !dbg !121
  %74 = fsub <2 x double> %62, %70, !dbg !121
  %75 = getelementptr i8, ptr %47, i64 -8, !dbg !122
  %76 = getelementptr i8, ptr %47, i64 8, !dbg !122
  %77 = getelementptr i8, ptr %47, i64 24, !dbg !122
  %78 = getelementptr i8, ptr %47, i64 40, !dbg !122
  store <2 x double> %71, ptr %75, align 8, !dbg !122, !tbaa !78, !alias.scope !111, !noalias !114
  store <2 x double> %72, ptr %76, align 8, !dbg !122, !tbaa !78, !alias.scope !111, !noalias !114
  store <2 x double> %73, ptr %77, align 8, !dbg !122, !tbaa !78, !alias.scope !111, !noalias !114
  store <2 x double> %74, ptr %78, align 8, !dbg !122, !tbaa !78, !alias.scope !111, !noalias !114
  %index.next464 = add nuw i64 %index446, 8
  %79 = icmp eq i64 %index.next464, %n.vec442
  br i1 %79, label %scalar.ph438.loopexit, label %vector.body445, !llvm.loop !124

scalar.ph438.loopexit:                            ; preds = %vector.body445
  %ind.end443 = add nuw nsw i64 %n.vec442, 1, !dbg !108
  br label %L98.us.us.us.preheader, !dbg !108

L98.us.us.us.preheader:                           ; preds = %scalar.ph438.loopexit, %vector.memcheck415, %vector.scevcheck408, %L39.us233.us.us
  %value_phi37.us.us.us.ph = phi i64 [ %ind.end443, %scalar.ph438.loopexit ], [ 1, %vector.memcheck415 ], [ 1, %vector.scevcheck408 ], [ 1, %L39.us233.us.us ]
  br label %L98.us.us.us, !dbg !108

L98.us.us.us:                                     ; preds = %L98.us.us.us.preheader, %L175.us.us.us
  %value_phi37.us.us.us = phi i64 [ %87, %L175.us.us.us ], [ %value_phi37.us.us.us.ph, %L98.us.us.us.preheader ]
  %exitcond282.not.not = icmp eq i64 %value_phi37.us.us.us, %.size.0.copyload.fr, !dbg !108
  br i1 %exitcond282.not.not, label %odessy.chk6, label %L115.us.us.us, !dbg !108

L115.us.us.us:                                    ; preds = %L98.us.us.us
  %exitcond284.not.not = icmp eq i64 %value_phi37.us.us.us, %umax283, !dbg !108
  br i1 %exitcond284.not.not, label %odessy.chk9, label %L134.us.us.us, !dbg !108

L134.us.us.us:                                    ; preds = %L115.us.us.us
  %exitcond286.not.not = icmp eq i64 %value_phi37.us.us.us, %umax285, !dbg !108
  br i1 %exitcond286.not.not, label %odessy.chk12, label %L175.us.us.us, !dbg !108

L175.us.us.us:                                    ; preds = %L134.us.us.us
  %memoryref_byteoffset46.us.us.us = shl i64 %value_phi37.us.us.us, 3, !dbg !110
  %memoryref_data51.us.us.us = getelementptr inbounds i8, ptr %memoryref_data43.us.us.us, i64 %memoryref_byteoffset46.us.us.us, !dbg !110
  %80 = load double, ptr %memoryref_data51.us.us.us, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %memoryref_data64.us.us.us = getelementptr inbounds i8, ptr %memoryref_data56.us.us.us, i64 %memoryref_byteoffset46.us.us.us, !dbg !110
  %81 = load double, ptr %memoryref_data64.us.us.us, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %82 = fmul double %32, %81, !dbg !118
  %83 = fadd double %80, %82, !dbg !119
  %memoryref_data77.us.us.us = getelementptr inbounds i8, ptr %memoryref_data69.us.us.us, i64 %memoryref_byteoffset46.us.us.us, !dbg !110
  %84 = load double, ptr %memoryref_data77.us.us.us, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %85 = fmul double %36, %84, !dbg !118
  %86 = fsub double %83, %85, !dbg !121
  %memoryref_data90.us.us.us = getelementptr i8, ptr %memoryref_data51.us.us.us, i64 -8, !dbg !122
  store double %86, ptr %memoryref_data90.us.us.us, align 8, !dbg !122, !tbaa !78, !alias.scope !81, !noalias !82
  %.not189.not.us.us.us = icmp eq i64 %value_phi37.us.us.us, %value_phi33, !dbg !127
  %87 = add i64 %value_phi37.us.us.us, 1, !dbg !128
  br i1 %.not189.not.us.us.us, label %L191.loopexit.us.us.us, label %L98.us.us.us, !dbg !129, !llvm.loop !130

L265.us243.us.us:                                 ; preds = %L191.loopexit.us.us.us
  %gep211.us244.us.us = getelementptr i8, ptr %invariant.gep210, i64 %memoryref_offset.us234.us.us, !dbg !102
  store double %36, ptr %gep211.us244.us.us, align 8, !dbg !102, !tbaa !78, !alias.scope !81, !noalias !82
  %.not194.not.us245.us.us = icmp eq i64 %value_phi6.us231.us.us, %value_phi, !dbg !103
  %88 = add nuw i64 %value_phi6.us231.us.us, 1, !dbg !106
  br i1 %.not194.not.us245.us.us, label %L281, label %L23.us230.us.us, !dbg !107

L191.loopexit.us.us.us:                           ; preds = %L175.us.us.us
  %89 = load double, ptr %memoryref_data107, align 8, !dbg !89, !tbaa !78, !alias.scope !81, !noalias !82
  %90 = fmul double %32, %89, !dbg !90
  %91 = load double, ptr %memoryref_data121, align 8, !dbg !89, !tbaa !78, !alias.scope !81, !noalias !82
  %92 = fmul double %36, %91, !dbg !90
  %93 = fsub double %90, %92, !dbg !91
  store double %93, ptr %memoryref_data136, align 8, !dbg !93, !tbaa !78, !alias.scope !81, !noalias !82
  %exitcond288.not.not = icmp eq i64 %value_phi6.us231.us.us, %30, !dbg !98
  br i1 %exitcond288.not.not, label %odessy.chk17, label %L265.us243.us.us, !dbg !99

L39.us233:                                        ; preds = %L23.preheader.split.split.split.split.us
  %94 = load double, ptr %memoryref_data, align 8, !dbg !77, !tbaa !78, !alias.scope !81, !noalias !82
  %95 = load double, ptr %memoryref_data15, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %96 = load double, ptr %memoryref_data26, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %97 = fmul double %94, %96, !dbg !84
  %98 = fadd double %95, %97, !dbg !87
  %umax293 = tail call i64 @llvm.umax.i64(i64 %.size110.0.copyload.fr, i64 1), !dbg !108
  %99 = add nsw i64 %value_phi33, -1, !dbg !108
  %100 = add i64 %.size23.0.copyload.fr, -1, !dbg !108
  %umin377 = tail call i64 @llvm.umin.i64(i64 %99, i64 %100), !dbg !108
  %umin378 = tail call i64 @llvm.umin.i64(i64 %umin377, i64 %13), !dbg !108
  %101 = add i64 %umax293, -1, !dbg !108
  %umin379 = tail call i64 @llvm.umin.i64(i64 %umin378, i64 %101), !dbg !108
  %102 = add nuw i64 %umin379, 1, !dbg !108
  %min.iters.check382 = icmp samesign ult i64 %umin379, 18, !dbg !108
  br i1 %min.iters.check382, label %L98.us.preheader, label %vector.scevcheck354, !dbg !108

vector.scevcheck354:                              ; preds = %L39.us233
  %mul.result359 = shl i64 %umin379, 3, !dbg !108
  %mul.overflow360 = icmp samesign ugt i64 %umin379, 2305843009213693951, !dbg !108
  %103 = getelementptr i8, ptr %memoryref_data15, i64 %mul.result359, !dbg !108
  %104 = icmp ult ptr %103, %memoryref_data15, !dbg !108
  %105 = or i1 %mul.overflow360, %104, !dbg !108
  br i1 %105, label %L98.us.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %vector.scevcheck354
  %106 = add i64 %mul.result359, 16, !dbg !108
  %scevgep365 = getelementptr i8, ptr %memoryref_data15, i64 %106, !dbg !108
  %scevgep366 = getelementptr i8, ptr %memoryref_data26, i64 8, !dbg !108
  %scevgep367 = getelementptr i8, ptr %memoryref_data26, i64 %106, !dbg !108
  %scevgep368 = getelementptr i8, ptr %memoryref_data113, i64 8, !dbg !108
  %scevgep369 = getelementptr i8, ptr %memoryref_data113, i64 %106, !dbg !108
  %bound0370 = icmp ult ptr %memoryref_data15, %scevgep367, !dbg !108
  %bound1371 = icmp ult ptr %scevgep366, %scevgep365, !dbg !108
  %found.conflict372 = and i1 %bound0370, %bound1371, !dbg !108
  %bound0373 = icmp ult ptr %memoryref_data15, %scevgep369, !dbg !108
  %bound1374 = icmp ult ptr %scevgep368, %scevgep365, !dbg !108
  %found.conflict375 = and i1 %bound0373, %bound1374, !dbg !108
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375, !dbg !108
  br i1 %conflict.rdx376, label %L98.us.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %vector.memcheck361
  %n.mod.vf384 = and i64 %102, 7, !dbg !108
  %107 = icmp eq i64 %n.mod.vf384, 0, !dbg !108
  %108 = select i1 %107, i64 8, i64 %n.mod.vf384, !dbg !108
  %n.vec385 = sub nuw nsw i64 %102, %108, !dbg !108
  %broadcast.splatinsert399 = insertelement <2 x double> poison, double %94, i64 0, !dbg !108
  %broadcast.splat400 = shufflevector <2 x double> %broadcast.splatinsert399, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !108
  %broadcast.splatinsert405 = insertelement <2 x double> poison, double %98, i64 0, !dbg !108
  %broadcast.splat406 = shufflevector <2 x double> %broadcast.splatinsert405, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !108
  br label %vector.body388, !dbg !108

vector.body388:                                   ; preds = %vector.body388, %vector.ph383
  %index389 = phi i64 [ 0, %vector.ph383 ], [ %index.next407, %vector.body388 ]
  %offset.idx390 = shl i64 %index389, 3, !dbg !110
  %109 = or disjoint i64 %offset.idx390, 8, !dbg !110
  %110 = getelementptr inbounds i8, ptr %memoryref_data15, i64 %109, !dbg !110
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 16, !dbg !110
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 32, !dbg !110
  %113 = getelementptr inbounds nuw i8, ptr %110, i64 48, !dbg !110
  %wide.load391 = load <2 x double>, ptr %110, align 8, !dbg !110, !tbaa !78, !alias.scope !131, !noalias !134
  %wide.load392 = load <2 x double>, ptr %111, align 8, !dbg !110, !tbaa !78, !alias.scope !131, !noalias !134
  %wide.load393 = load <2 x double>, ptr %112, align 8, !dbg !110, !tbaa !78, !alias.scope !131, !noalias !134
  %wide.load394 = load <2 x double>, ptr %113, align 8, !dbg !110, !tbaa !78, !alias.scope !131, !noalias !134
  %114 = getelementptr inbounds i8, ptr %memoryref_data26, i64 %109, !dbg !110
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 16, !dbg !110
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 32, !dbg !110
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 48, !dbg !110
  %wide.load395 = load <2 x double>, ptr %114, align 8, !dbg !110, !tbaa !78, !alias.scope !137, !noalias !82
  %wide.load396 = load <2 x double>, ptr %115, align 8, !dbg !110, !tbaa !78, !alias.scope !137, !noalias !82
  %wide.load397 = load <2 x double>, ptr %116, align 8, !dbg !110, !tbaa !78, !alias.scope !137, !noalias !82
  %wide.load398 = load <2 x double>, ptr %117, align 8, !dbg !110, !tbaa !78, !alias.scope !137, !noalias !82
  %118 = fmul <2 x double> %broadcast.splat400, %wide.load395, !dbg !118
  %119 = fmul <2 x double> %broadcast.splat400, %wide.load396, !dbg !118
  %120 = fmul <2 x double> %broadcast.splat400, %wide.load397, !dbg !118
  %121 = fmul <2 x double> %broadcast.splat400, %wide.load398, !dbg !118
  %122 = fadd <2 x double> %wide.load391, %118, !dbg !119
  %123 = fadd <2 x double> %wide.load392, %119, !dbg !119
  %124 = fadd <2 x double> %wide.load393, %120, !dbg !119
  %125 = fadd <2 x double> %wide.load394, %121, !dbg !119
  %126 = getelementptr inbounds i8, ptr %memoryref_data113, i64 %109, !dbg !110
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 16, !dbg !110
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 32, !dbg !110
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 48, !dbg !110
  %wide.load401 = load <2 x double>, ptr %126, align 8, !dbg !110, !tbaa !78, !alias.scope !138, !noalias !82
  %wide.load402 = load <2 x double>, ptr %127, align 8, !dbg !110, !tbaa !78, !alias.scope !138, !noalias !82
  %wide.load403 = load <2 x double>, ptr %128, align 8, !dbg !110, !tbaa !78, !alias.scope !138, !noalias !82
  %wide.load404 = load <2 x double>, ptr %129, align 8, !dbg !110, !tbaa !78, !alias.scope !138, !noalias !82
  %130 = fmul <2 x double> %broadcast.splat406, %wide.load401, !dbg !118
  %131 = fmul <2 x double> %broadcast.splat406, %wide.load402, !dbg !118
  %132 = fmul <2 x double> %broadcast.splat406, %wide.load403, !dbg !118
  %133 = fmul <2 x double> %broadcast.splat406, %wide.load404, !dbg !118
  %134 = fsub <2 x double> %122, %130, !dbg !121
  %135 = fsub <2 x double> %123, %131, !dbg !121
  %136 = fsub <2 x double> %124, %132, !dbg !121
  %137 = fsub <2 x double> %125, %133, !dbg !121
  %138 = getelementptr i8, ptr %110, i64 -8, !dbg !122
  %139 = getelementptr i8, ptr %110, i64 8, !dbg !122
  %140 = getelementptr i8, ptr %110, i64 24, !dbg !122
  %141 = getelementptr i8, ptr %110, i64 40, !dbg !122
  store <2 x double> %134, ptr %138, align 8, !dbg !122, !tbaa !78, !alias.scope !131, !noalias !134
  store <2 x double> %135, ptr %139, align 8, !dbg !122, !tbaa !78, !alias.scope !131, !noalias !134
  store <2 x double> %136, ptr %140, align 8, !dbg !122, !tbaa !78, !alias.scope !131, !noalias !134
  store <2 x double> %137, ptr %141, align 8, !dbg !122, !tbaa !78, !alias.scope !131, !noalias !134
  %index.next407 = add nuw i64 %index389, 8
  %142 = icmp eq i64 %index.next407, %n.vec385
  br i1 %142, label %scalar.ph381.loopexit, label %vector.body388, !llvm.loop !139

scalar.ph381.loopexit:                            ; preds = %vector.body388
  %ind.end386 = add nuw nsw i64 %n.vec385, 1, !dbg !108
  br label %L98.us.preheader, !dbg !108

L98.us.preheader:                                 ; preds = %scalar.ph381.loopexit, %vector.memcheck361, %vector.scevcheck354, %L39.us233
  %value_phi37.us.ph = phi i64 [ %ind.end386, %scalar.ph381.loopexit ], [ 1, %vector.memcheck361 ], [ 1, %vector.scevcheck354 ], [ 1, %L39.us233 ]
  br label %L98.us, !dbg !108

L98.us:                                           ; preds = %L98.us.preheader, %L175.us
  %value_phi37.us = phi i64 [ %150, %L175.us ], [ %value_phi37.us.ph, %L98.us.preheader ]
  %exitcond290.not.not = icmp eq i64 %value_phi37.us, %.size.0.copyload.fr, !dbg !108
  br i1 %exitcond290.not.not, label %odessy.chk5, label %L115.us, !dbg !108

L115.us:                                          ; preds = %L98.us
  %exitcond292.not.not = icmp eq i64 %value_phi37.us, %.size23.0.copyload.fr, !dbg !108
  br i1 %exitcond292.not.not, label %odessy.chk8, label %L134.us, !dbg !108

L134.us:                                          ; preds = %L115.us
  %exitcond294.not.not = icmp eq i64 %value_phi37.us, %umax293, !dbg !108
  br i1 %exitcond294.not.not, label %odessy.chk11, label %L175.us, !dbg !108

L175.us:                                          ; preds = %L134.us
  %memoryref_byteoffset46.us = shl i64 %value_phi37.us, 3, !dbg !110
  %memoryref_data51.us = getelementptr inbounds i8, ptr %memoryref_data15, i64 %memoryref_byteoffset46.us, !dbg !110
  %143 = load double, ptr %memoryref_data51.us, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %memoryref_data64.us = getelementptr inbounds i8, ptr %memoryref_data26, i64 %memoryref_byteoffset46.us, !dbg !110
  %144 = load double, ptr %memoryref_data64.us, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %145 = fmul double %94, %144, !dbg !118
  %146 = fadd double %143, %145, !dbg !119
  %memoryref_data77.us = getelementptr inbounds i8, ptr %memoryref_data113, i64 %memoryref_byteoffset46.us, !dbg !110
  %147 = load double, ptr %memoryref_data77.us, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %148 = fmul double %98, %147, !dbg !118
  %149 = fsub double %146, %148, !dbg !121
  %memoryref_data90.us = getelementptr i8, ptr %memoryref_data51.us, i64 -8, !dbg !122
  store double %149, ptr %memoryref_data90.us, align 8, !dbg !122, !tbaa !78, !alias.scope !81, !noalias !82
  %.not189.not.us = icmp eq i64 %value_phi37.us, %value_phi33, !dbg !127
  %150 = add i64 %value_phi37.us, 1, !dbg !128
  br i1 %.not189.not.us, label %odessy.chk15, label %L98.us, !dbg !129, !llvm.loop !140

L39:                                              ; preds = %L23.preheader.split.split.split
  %151 = load double, ptr %memoryref_data, align 8, !dbg !77, !tbaa !78, !alias.scope !81, !noalias !82
  %152 = load double, ptr %memoryref_data15, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %153 = load double, ptr %memoryref_data26, align 8, !dbg !83, !tbaa !78, !alias.scope !81, !noalias !82
  %154 = fmul double %151, %153, !dbg !84
  %155 = fadd double %152, %154, !dbg !87
  %umax299 = tail call i64 @llvm.umax.i64(i64 %.size110.0.copyload.fr, i64 1), !dbg !108
  %156 = add nsw i64 %value_phi33, -1, !dbg !108
  %157 = add i64 %.size23.0.copyload.fr, -1, !dbg !108
  %umin338 = tail call i64 @llvm.umin.i64(i64 %156, i64 %157), !dbg !108
  %158 = add i64 %umax299, -1, !dbg !108
  %umin340 = tail call i64 @llvm.umin.i64(i64 %umin338, i64 %158), !dbg !108
  %159 = add nuw i64 %umin340, 1, !dbg !108
  %min.iters.check = icmp samesign ult i64 %umin340, 18, !dbg !108
  br i1 %min.iters.check, label %L98.preheader, label %vector.scevcheck, !dbg !108

vector.scevcheck:                                 ; preds = %L39
  %mul.result = shl i64 %umin340, 3, !dbg !108
  %mul.overflow = icmp samesign ugt i64 %umin340, 2305843009213693951, !dbg !108
  %160 = getelementptr i8, ptr %memoryref_data15, i64 %mul.result, !dbg !108
  %161 = icmp ult ptr %160, %memoryref_data15, !dbg !108
  %162 = or i1 %mul.overflow, %161, !dbg !108
  br i1 %162, label %L98.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %163 = add i64 %mul.result, 16, !dbg !108
  %scevgep = getelementptr i8, ptr %memoryref_data15, i64 %163, !dbg !108
  %scevgep331 = getelementptr i8, ptr %memoryref_data26, i64 8, !dbg !108
  %scevgep332 = getelementptr i8, ptr %memoryref_data26, i64 %163, !dbg !108
  %scevgep333 = getelementptr i8, ptr %memoryref_data113, i64 8, !dbg !108
  %scevgep334 = getelementptr i8, ptr %memoryref_data113, i64 %163, !dbg !108
  %bound0 = icmp ult ptr %memoryref_data15, %scevgep332, !dbg !108
  %bound1 = icmp ult ptr %scevgep331, %scevgep, !dbg !108
  %found.conflict = and i1 %bound0, %bound1, !dbg !108
  %bound0335 = icmp ult ptr %memoryref_data15, %scevgep334, !dbg !108
  %bound1336 = icmp ult ptr %scevgep333, %scevgep, !dbg !108
  %found.conflict337 = and i1 %bound0335, %bound1336, !dbg !108
  %conflict.rdx = or i1 %found.conflict, %found.conflict337, !dbg !108
  br i1 %conflict.rdx, label %L98.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %159, 7, !dbg !108
  %164 = icmp eq i64 %n.mod.vf, 0, !dbg !108
  %165 = select i1 %164, i64 8, i64 %n.mod.vf, !dbg !108
  %n.vec = sub nuw nsw i64 %159, %165, !dbg !108
  %broadcast.splatinsert = insertelement <2 x double> poison, double %151, i64 0, !dbg !108
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !108
  %broadcast.splatinsert352 = insertelement <2 x double> poison, double %155, i64 0, !dbg !108
  %broadcast.splat353 = shufflevector <2 x double> %broadcast.splatinsert352, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !108
  br label %vector.body, !dbg !108

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 3, !dbg !110
  %166 = or disjoint i64 %offset.idx, 8, !dbg !110
  %167 = getelementptr inbounds i8, ptr %memoryref_data15, i64 %166, !dbg !110
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 16, !dbg !110
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 32, !dbg !110
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 48, !dbg !110
  %wide.load = load <2 x double>, ptr %167, align 8, !dbg !110, !tbaa !78, !alias.scope !141, !noalias !144
  %wide.load341 = load <2 x double>, ptr %168, align 8, !dbg !110, !tbaa !78, !alias.scope !141, !noalias !144
  %wide.load342 = load <2 x double>, ptr %169, align 8, !dbg !110, !tbaa !78, !alias.scope !141, !noalias !144
  %wide.load343 = load <2 x double>, ptr %170, align 8, !dbg !110, !tbaa !78, !alias.scope !141, !noalias !144
  %171 = getelementptr inbounds i8, ptr %memoryref_data26, i64 %166, !dbg !110
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 16, !dbg !110
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 32, !dbg !110
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 48, !dbg !110
  %wide.load344 = load <2 x double>, ptr %171, align 8, !dbg !110, !tbaa !78, !alias.scope !147, !noalias !82
  %wide.load345 = load <2 x double>, ptr %172, align 8, !dbg !110, !tbaa !78, !alias.scope !147, !noalias !82
  %wide.load346 = load <2 x double>, ptr %173, align 8, !dbg !110, !tbaa !78, !alias.scope !147, !noalias !82
  %wide.load347 = load <2 x double>, ptr %174, align 8, !dbg !110, !tbaa !78, !alias.scope !147, !noalias !82
  %175 = fmul <2 x double> %broadcast.splat, %wide.load344, !dbg !118
  %176 = fmul <2 x double> %broadcast.splat, %wide.load345, !dbg !118
  %177 = fmul <2 x double> %broadcast.splat, %wide.load346, !dbg !118
  %178 = fmul <2 x double> %broadcast.splat, %wide.load347, !dbg !118
  %179 = fadd <2 x double> %wide.load, %175, !dbg !119
  %180 = fadd <2 x double> %wide.load341, %176, !dbg !119
  %181 = fadd <2 x double> %wide.load342, %177, !dbg !119
  %182 = fadd <2 x double> %wide.load343, %178, !dbg !119
  %183 = getelementptr inbounds i8, ptr %memoryref_data113, i64 %166, !dbg !110
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 16, !dbg !110
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 32, !dbg !110
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 48, !dbg !110
  %wide.load348 = load <2 x double>, ptr %183, align 8, !dbg !110, !tbaa !78, !alias.scope !148, !noalias !82
  %wide.load349 = load <2 x double>, ptr %184, align 8, !dbg !110, !tbaa !78, !alias.scope !148, !noalias !82
  %wide.load350 = load <2 x double>, ptr %185, align 8, !dbg !110, !tbaa !78, !alias.scope !148, !noalias !82
  %wide.load351 = load <2 x double>, ptr %186, align 8, !dbg !110, !tbaa !78, !alias.scope !148, !noalias !82
  %187 = fmul <2 x double> %broadcast.splat353, %wide.load348, !dbg !118
  %188 = fmul <2 x double> %broadcast.splat353, %wide.load349, !dbg !118
  %189 = fmul <2 x double> %broadcast.splat353, %wide.load350, !dbg !118
  %190 = fmul <2 x double> %broadcast.splat353, %wide.load351, !dbg !118
  %191 = fsub <2 x double> %179, %187, !dbg !121
  %192 = fsub <2 x double> %180, %188, !dbg !121
  %193 = fsub <2 x double> %181, %189, !dbg !121
  %194 = fsub <2 x double> %182, %190, !dbg !121
  %195 = getelementptr i8, ptr %167, i64 -8, !dbg !122
  %196 = getelementptr i8, ptr %167, i64 8, !dbg !122
  %197 = getelementptr i8, ptr %167, i64 24, !dbg !122
  %198 = getelementptr i8, ptr %167, i64 40, !dbg !122
  store <2 x double> %191, ptr %195, align 8, !dbg !122, !tbaa !78, !alias.scope !141, !noalias !144
  store <2 x double> %192, ptr %196, align 8, !dbg !122, !tbaa !78, !alias.scope !141, !noalias !144
  store <2 x double> %193, ptr %197, align 8, !dbg !122, !tbaa !78, !alias.scope !141, !noalias !144
  store <2 x double> %194, ptr %198, align 8, !dbg !122, !tbaa !78, !alias.scope !141, !noalias !144
  %index.next = add nuw i64 %index, 8
  %199 = icmp eq i64 %index.next, %n.vec
  br i1 %199, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !149

scalar.ph.loopexit:                               ; preds = %vector.body
  %ind.end = add nuw nsw i64 %n.vec, 1, !dbg !108
  br label %L98.preheader, !dbg !108

L98.preheader:                                    ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L39
  %value_phi37.ph = phi i64 [ %ind.end, %scalar.ph.loopexit ], [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %L39 ]
  br label %L98, !dbg !108

L98:                                              ; preds = %L98.preheader, %L175
  %value_phi37 = phi i64 [ %207, %L175 ], [ %value_phi37.ph, %L98.preheader ]
  %exitcond296.not.not = icmp eq i64 %value_phi37, %.size.0.copyload.fr, !dbg !108
  br i1 %exitcond296.not.not, label %odessy.chk4, label %L115, !dbg !108

L115:                                             ; preds = %L98
  %exitcond298.not.not = icmp eq i64 %value_phi37, %.size23.0.copyload.fr, !dbg !108
  br i1 %exitcond298.not.not, label %odessy.chk7, label %L134, !dbg !108

L134:                                             ; preds = %L115
  %exitcond300.not.not = icmp eq i64 %value_phi37, %umax299, !dbg !108
  br i1 %exitcond300.not.not, label %odessy.chk10, label %L175, !dbg !108

L175:                                             ; preds = %L134
  %memoryref_byteoffset46 = shl i64 %value_phi37, 3, !dbg !110
  %memoryref_data51 = getelementptr inbounds i8, ptr %memoryref_data15, i64 %memoryref_byteoffset46, !dbg !110
  %200 = load double, ptr %memoryref_data51, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %memoryref_data64 = getelementptr inbounds i8, ptr %memoryref_data26, i64 %memoryref_byteoffset46, !dbg !110
  %201 = load double, ptr %memoryref_data64, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %202 = fmul double %151, %201, !dbg !118
  %203 = fadd double %200, %202, !dbg !119
  %memoryref_data77 = getelementptr inbounds i8, ptr %memoryref_data113, i64 %memoryref_byteoffset46, !dbg !110
  %204 = load double, ptr %memoryref_data77, align 8, !dbg !110, !tbaa !78, !alias.scope !81, !noalias !82
  %205 = fmul double %155, %204, !dbg !118
  %206 = fsub double %203, %205, !dbg !121
  %memoryref_data90 = getelementptr i8, ptr %memoryref_data51, i64 -8, !dbg !122
  store double %206, ptr %memoryref_data90, align 8, !dbg !122, !tbaa !78, !alias.scope !81, !noalias !82
  %.not189.not = icmp eq i64 %value_phi37, %value_phi33, !dbg !127
  %207 = add i64 %value_phi37, 1, !dbg !128
  br i1 %.not189.not, label %odessy.chk13, label %L98, !dbg !129, !llvm.loop !150

L281:                                             ; preds = %L265.us243.us.us, %L265.us.us.us.us, %top
  ret ptr %0, !dbg !151

odessy.chk:                                       ; preds = %L23.preheader
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L23.preheader.split
  tail call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L23.us230.us.us
  tail call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L23.us220.us.us.us
  tail call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %L98
  tail call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L98.us
  tail call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %L98.us.us.us
  tail call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %L115
  tail call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %L115.us
  tail call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L115.us.us.us
  tail call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L134
  tail call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %L134.us
  tail call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %L134.us.us.us
  tail call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %L175
  tail call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %L23.preheader.split.split.split.us
  tail call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %L175.us
  tail call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %L23.preheader.split.split.split.us.split.us
  tail call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %L191.loopexit.us.us.us
  tail call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %L39.us223.us.us.us
  tail call void @odessy.chk(i32 18)
  unreachable
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #2

attributes #0 = { nounwind "julia.fsig"="filt!(Array{Float64, 1}, Array{Float64, 1}, Array{Float64, 1}, Array{Float64, 1}, Array{Float64, 1})" "probe-stack"="inline-asm" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "filt!", linkageName: "japi1_filt!_145", scope: null, file: !5, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !14)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/jl_filt_dsp.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8, !12, !13}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !10, line: 71, align: 64, elements: !11)
!10 = !DIFile(filename: "julia.h", directory: "")
!11 = !{!8}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!13 = !DIBasicType(name: "Int32", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !18, !20, !21, !22, !23}
!15 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 5, type: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#filt!", align: 8, elements: !17, runtimeLang: DW_LANG_Julia, identifier: "4637995472")
!17 = !{}
!18 = !DILocalVariable(name: "out", arg: 2, scope: !4, file: !5, line: 5, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !8)
!20 = !DILocalVariable(name: "b", arg: 3, scope: !4, file: !5, line: 5, type: !19)
!21 = !DILocalVariable(name: "a", arg: 4, scope: !4, file: !5, line: 5, type: !19)
!22 = !DILocalVariable(name: "x", arg: 5, scope: !4, file: !5, line: 5, type: !19)
!23 = !DILocalVariable(name: "si", arg: 6, scope: !4, file: !5, line: 5, type: !19)
!24 = !{!25, !25, i64 0}
!25 = !{!"jtbaa_const", !26, i64 0}
!26 = !{!"jtbaa", !27, i64 0}
!27 = !{!"jtbaa"}
!28 = !{!29}
!29 = !{!"jnoalias_const", !30}
!30 = !{!"jnoalias"}
!31 = !{!32, !33, !34, !35}
!32 = !{!"jnoalias_gcframe", !30}
!33 = !{!"jnoalias_stack", !30}
!34 = !{!"jnoalias_data", !30}
!35 = !{!"jnoalias_typemd", !30}
!36 = !{i64 24}
!37 = !{i64 8}
!38 = !DILocation(line: 5, scope: !4)
!39 = !{!40, !40, i64 0}
!40 = !{!"jtbaa_gcframe", !26, i64 0}
!41 = !DILocation(line: 11, scope: !42, inlinedAt: !45)
!42 = distinct !DISubprogram(name: "length;", linkageName: "length", scope: !43, file: !43, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!43 = !DIFile(filename: "essentials.jl", directory: ".")
!44 = !DISubroutineType(types: !17)
!45 = !DILocation(line: 8, scope: !4)
!46 = !DILocation(line: 11, scope: !42, inlinedAt: !47)
!47 = !DILocation(line: 9, scope: !4)
!48 = !{!26, !26, i64 0}
!49 = !{!35, !33}
!50 = !{!32, !34, !29}
!51 = !DILocation(line: 426, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "unitrange_last;", linkageName: "unitrange_last", scope: !53, file: !53, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!53 = !DIFile(filename: "range.jl", directory: ".")
!54 = !DILocation(line: 415, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "UnitRange;", linkageName: "UnitRange", scope: !53, file: !53, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!56 = !DILocation(line: 5, scope: !57, inlinedAt: !58)
!57 = distinct !DISubprogram(name: "Colon;", linkageName: "Colon", scope: !53, file: !53, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!58 = !DILocation(line: 10, scope: !4)
!59 = !DILocation(line: 83, scope: !60, inlinedAt: !62)
!60 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !61, file: !61, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!61 = !DIFile(filename: "int.jl", directory: ".")
!62 = !DILocation(line: 425, scope: !63, inlinedAt: !65)
!63 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !64, file: !64, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!64 = !DIFile(filename: "operators.jl", directory: ".")
!65 = !DILocation(line: 688, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "isempty;", linkageName: "isempty", scope: !53, file: !53, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!67 = !DILocation(line: 917, scope: !68, inlinedAt: !58)
!68 = distinct !DISubprogram(name: "iterate;", linkageName: "iterate", scope: !53, file: !53, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!69 = !DILocation(line: 919, scope: !70, inlinedAt: !71)
!70 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !43, file: !43, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!71 = !DILocation(line: 11, scope: !4)
!72 = !DILocation(line: 919, scope: !70, inlinedAt: !73)
!73 = !DILocation(line: 12, scope: !4)
!74 = !DILocation(line: 13, scope: !4)
!75 = !DILocation(line: 919, scope: !70, inlinedAt: !76)
!76 = !DILocation(line: 16, scope: !4)
!77 = !DILocation(line: 920, scope: !70, inlinedAt: !71)
!78 = !{!79, !79, i64 0}
!79 = !{!"jtbaa_arraybuf", !80, i64 0}
!80 = !{!"jtbaa_data", !26, i64 0}
!81 = !{!34}
!82 = !{!32, !33, !35, !29}
!83 = !DILocation(line: 920, scope: !70, inlinedAt: !73)
!84 = !DILocation(line: 497, scope: !85, inlinedAt: !73)
!85 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !86, file: !86, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!86 = !DIFile(filename: "float.jl", directory: ".")
!87 = !DILocation(line: 495, scope: !88, inlinedAt: !73)
!88 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !86, file: !86, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!89 = !DILocation(line: 920, scope: !70, inlinedAt: !76)
!90 = !DILocation(line: 497, scope: !85, inlinedAt: !76)
!91 = !DILocation(line: 496, scope: !92, inlinedAt: !76)
!92 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !86, file: !86, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!93 = !DILocation(line: 991, scope: !94, inlinedAt: !96)
!94 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !95, file: !95, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DIFile(filename: "array.jl", directory: ".")
!96 = !DILocation(line: 986, scope: !97, inlinedAt: !76)
!97 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !95, file: !95, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!98 = !DILocation(line: 519, scope: !60, inlinedAt: !99)
!99 = !DILocation(line: 990, scope: !94, inlinedAt: !100)
!100 = !DILocation(line: 986, scope: !97, inlinedAt: !101)
!101 = !DILocation(line: 17, scope: !4)
!102 = !DILocation(line: 991, scope: !94, inlinedAt: !100)
!103 = !DILocation(line: 637, scope: !104, inlinedAt: !106)
!104 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !105, file: !105, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!105 = !DIFile(filename: "promotion.jl", directory: ".")
!106 = !DILocation(line: 921, scope: !68, inlinedAt: !107)
!107 = !DILocation(line: 18, scope: !4)
!108 = !DILocation(line: 919, scope: !70, inlinedAt: !109)
!109 = !DILocation(line: 14, scope: !4)
!110 = !DILocation(line: 920, scope: !70, inlinedAt: !109)
!111 = !{!34, !112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!32, !33, !35, !29, !115, !116}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = !{!34, !115}
!118 = !DILocation(line: 497, scope: !85, inlinedAt: !109)
!119 = !DILocation(line: 495, scope: !88, inlinedAt: !109)
!120 = !{!34, !116}
!121 = !DILocation(line: 496, scope: !92, inlinedAt: !109)
!122 = !DILocation(line: 991, scope: !94, inlinedAt: !123)
!123 = !DILocation(line: 986, scope: !97, inlinedAt: !109)
!124 = distinct !{!124, !125, !126}
!125 = !{!"llvm.loop.isvectorized", i32 1}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = !DILocation(line: 637, scope: !104, inlinedAt: !128)
!128 = !DILocation(line: 921, scope: !68, inlinedAt: !129)
!129 = !DILocation(line: 15, scope: !4)
!130 = distinct !{!130, !125}
!131 = !{!34, !132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!32, !33, !35, !29, !135, !136}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !133}
!137 = !{!34, !135}
!138 = !{!34, !136}
!139 = distinct !{!139, !125, !126}
!140 = distinct !{!140, !125}
!141 = !{!34, !142}
!142 = distinct !{!142, !143}
!143 = distinct !{!143, !"LVerDomain"}
!144 = !{!32, !33, !35, !29, !145, !146}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = !{!34, !145}
!148 = !{!34, !146}
!149 = distinct !{!149, !125, !126}
!150 = distinct !{!150, !125}
!151 = !DILocation(line: 19, scope: !4)
