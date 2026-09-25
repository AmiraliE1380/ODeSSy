; ModuleID = 'results/static/guard_competitors/Julia_jl_filt_dsp_guarded/tag.ll'
source_filename = "filt!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"_j_const#1" = private unnamed_addr constant i64 1, align 8

@"jl_global#154.jit" = private alias ptr, inttoptr (i64 4570214224 to ptr)
@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4570214480 to ptr)
@"jl_global#148.jit" = private alias ptr, inttoptr (i64 4570214608 to ptr)
@"+Main.Base.DimensionMismatch#152.jit" = private alias ptr, inttoptr (i64 4748420416 to ptr)
@"+Core.ArgumentError#149.jit" = private alias ptr, inttoptr (i64 4833101808 to ptr)
@"jl_global#153.jit" = private alias ptr, inttoptr (i64 4850252544 to ptr)

define nonnull ptr @"japi1_filt!_145"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %gcframe1, i8 0, i64 24, i1 true)
  %stackargs = alloca ptr, align 8
  store volatile ptr %"args::Any[]", ptr %stackargs, align 8
  %"new::Tuple167" = alloca [1 x i64], align 8
  %"new::Tuple171" = alloca [1 x i64], align 8
  %"new::Tuple173" = alloca [1 x i64], align 8
  %"new::Tuple175" = alloca [1 x i64], align 8
  %"new::Tuple181" = alloca [1 x i64], align 8
  %pgcstack = call ptr inttoptr (i64 4299603740 to ptr)(i64 4299603776) #13
  store i64 4, ptr %gcframe1, align 8, !tbaa !24
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds ptr, ptr %gcframe1, i64 1
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !24
  store ptr %gcframe1, ptr %pgcstack, align 8
  %0 = load ptr, ptr %"args::Any[]", align 8, !tbaa !28, !invariant.load !17, !alias.scope !30, !noalias !33, !nonnull !17, !dereferenceable !38, !align !39
    #dbg_declare(ptr %stackargs, !18, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 0, DW_OP_deref), !40)
    #dbg_declare(ptr %0, !18, !DIExpression(), !40)
  %1 = getelementptr inbounds i8, ptr %"args::Any[]", i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !28, !invariant.load !17, !alias.scope !30, !noalias !33, !nonnull !17, !dereferenceable !38, !align !39
    #dbg_declare(ptr %stackargs, !20, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !40)
    #dbg_declare(ptr %2, !20, !DIExpression(), !40)
  %3 = getelementptr inbounds i8, ptr %"args::Any[]", i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !28, !invariant.load !17, !alias.scope !30, !noalias !33, !nonnull !17, !dereferenceable !38, !align !39
    #dbg_declare(ptr %stackargs, !21, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !40)
    #dbg_declare(ptr %4, !21, !DIExpression(), !40)
  %5 = getelementptr inbounds i8, ptr %"args::Any[]", i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !28, !invariant.load !17, !alias.scope !30, !noalias !33, !nonnull !17, !dereferenceable !38, !align !39
    #dbg_declare(ptr %stackargs, !22, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref), !40)
    #dbg_declare(ptr %6, !22, !DIExpression(), !40)
  %7 = getelementptr inbounds i8, ptr %"args::Any[]", i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !28, !invariant.load !17, !alias.scope !30, !noalias !33, !nonnull !17, !dereferenceable !38, !align !39
    #dbg_declare(ptr %stackargs, !23, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref), !40)
    #dbg_declare(ptr %8, !23, !DIExpression(), !40)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !24
  %9 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %9, align 8, !tbaa !28, !invariant.load !17
  fence syncscope("singlethread") seq_cst
  %10 = load volatile i64, ptr %safepoint, align 8, !dbg !40
  fence syncscope("singlethread") seq_cst
  %.size_ptr = getelementptr inbounds i8, ptr %8, i64 16, !dbg !41
  %.size.0.copyload = load i64, ptr %.size_ptr, align 8, !dbg !41
  %.size.0.copyload.fr = freeze i64 %.size.0.copyload
  %.size_ptr1 = getelementptr inbounds i8, ptr %6, i64 16, !dbg !46
  %11 = load i64, ptr %.size_ptr1, align 8, !dbg !46, !tbaa !48, !alias.scope !49, !noalias !50
  %.size_ptr3 = getelementptr inbounds i8, ptr %2, i64 16, !dbg !51
  %.size4.0.copyload = load i64, ptr %.size_ptr3, align 8, !dbg !51
  %.size4.0.copyload.fr = freeze i64 %.size4.0.copyload
  %12 = add i64 %.size.0.copyload.fr, 1, !dbg !53
  %.not = icmp eq i64 %.size4.0.copyload.fr, %12, !dbg !56
  br i1 %.not, label %L13, label %L314, !dbg !52

L13:                                              ; preds = %top
  %.size_ptr5 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !59
  %.size6.0.copyload = load i64, ptr %.size_ptr5, align 8, !dbg !59
  %.not213 = icmp eq i64 %.size6.0.copyload, %.size4.0.copyload.fr, !dbg !61
  br i1 %.not213, label %L20, label %L311, !dbg !60

L20:                                              ; preds = %L13
  %.size_ptr8 = getelementptr inbounds i8, ptr %0, i64 16, !dbg !62
  %.size9.0.copyload = load i64, ptr %.size_ptr8, align 8, !dbg !62
  %.not214 = icmp eq i64 %.size9.0.copyload, %11, !dbg !64
  br i1 %.not214, label %L26, label %L308, !dbg !63

L26:                                              ; preds = %L20
  %13 = icmp slt i64 %.size.0.copyload.fr, 1, !dbg !65
  br i1 %13, label %L305, label %L29, !dbg !70

L29:                                              ; preds = %L26
  %value_phi = call i64 @llvm.smax.i64(i64 %11, i64 0), !dbg !71
  %14 = icmp slt i64 %11, 1, !dbg !79
  br i1 %14, label %L304, label %L46.preheader.split, !dbg !78

L46.preheader.split:                              ; preds = %L29
  %memoryref_data = load ptr, ptr %6, align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !87
  %memoryref_data24 = load ptr, ptr %8, align 8
  %memoryref_data35 = load ptr, ptr %2, align 8
  %15 = add nsw i64 %.size.0.copyload.fr, -1
  %.not225 = icmp ult i64 %.size.0.copyload.fr, %.size4.0.copyload.fr
  %memoryref_byteoffset112 = shl i64 %.size.0.copyload.fr, 3
  %memoryref_data117 = getelementptr inbounds i8, ptr %memoryref_data35, i64 %memoryref_byteoffset112
  %memoryref_data123 = load ptr, ptr %4, align 8
  %memoryref_data131 = getelementptr inbounds i8, ptr %memoryref_data123, i64 %memoryref_byteoffset112
  %16 = getelementptr i8, ptr %memoryref_data24, i64 %memoryref_byteoffset112
  %memoryref_data146 = getelementptr i8, ptr %16, i64 -8
  %memoryref_data151 = load ptr, ptr %0, align 8
  %invariant.gep245 = getelementptr i8, ptr %memoryref_data151, i64 -8, !dbg !87
  %.not217 = icmp eq i64 %.size4.0.copyload.fr, 0
  br i1 %.not217, label %odessy.chk, label %L46.preheader.split.split, !dbg !90

L62.us250:                                        ; No predecessors!
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) @"_j_const#1") #6, !dbg !90
  unreachable, !dbg !90

L46.preheader.split.split:                        ; preds = %L46.preheader.split
  %.not219.not = icmp eq i64 %.size.0.copyload.fr, 1
  br i1 %.not219.not, label %L46.preheader.split.split.split.us, label %L46.preheader.split.split.split, !dbg !92

L46.preheader.split.split.split.us:               ; preds = %L46.preheader.split.split
  br i1 %.not225, label %L46.preheader.split.split.split.us.split.us.split.us.split.us, label %odessy.chk9, !dbg !93

L46.preheader.split.split.split.us.split.us.split.us.split.us: ; preds = %L46.preheader.split.split.split.us
  %17 = add nuw i64 %11, 1, !dbg !87
  br label %L46.us255.us.us.us, !dbg !87

L46.us255.us.us.us:                               ; preds = %L288.us.us.us.us, %L46.preheader.split.split.split.us.split.us.split.us.split.us
  %value_phi15.us256.us.us.us = phi i64 [ %28, %L288.us.us.us.us ], [ 1, %L46.preheader.split.split.split.us.split.us.split.us.split.us ]
  %exitcond.not = icmp ne i64 %value_phi15.us256.us.us.us, %17, !dbg !87
  br i1 %exitcond.not, label %L288.us.us.us.us, label %odessy.chk2, !dbg !87

L288.us.us.us.us:                                 ; preds = %L46.us255.us.us.us
  %memoryref_offset.us259.us.us.us = shl i64 %value_phi15.us256.us.us.us, 3, !dbg !95
  %gep.us260.us.us.us = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.us259.us.us.us, !dbg !95
  %18 = load double, ptr %gep.us260.us.us.us, align 8, !dbg !95, !tbaa !96, !alias.scope !99, !noalias !100
  %19 = load double, ptr %memoryref_data24, align 8, !dbg !101, !tbaa !96, !alias.scope !99, !noalias !100
  %20 = load double, ptr %memoryref_data35, align 8, !dbg !101, !tbaa !96, !alias.scope !99, !noalias !100
  %21 = fmul double %18, %20, !dbg !102
  %22 = fadd double %19, %21, !dbg !105
  %23 = load double, ptr %memoryref_data117, align 8, !dbg !107, !tbaa !96, !alias.scope !99, !noalias !100
  %24 = fmul double %18, %23, !dbg !108
  %25 = load double, ptr %memoryref_data131, align 8, !dbg !107, !tbaa !96, !alias.scope !99, !noalias !100
  %26 = fmul double %22, %25, !dbg !108
  %27 = fsub double %24, %26, !dbg !109
  store double %27, ptr %memoryref_data146, align 8, !dbg !111, !tbaa !96, !alias.scope !99, !noalias !100
  %gep246.us.us.us.us = getelementptr i8, ptr %invariant.gep245, i64 %memoryref_offset.us259.us.us.us, !dbg !116
  store double %22, ptr %gep246.us.us.us.us, align 8, !dbg !116, !tbaa !96, !alias.scope !99, !noalias !100
  %.not229.not.us.us.us.us = icmp eq i64 %value_phi15.us256.us.us.us, %value_phi, !dbg !119
  %28 = add nuw i64 %value_phi15.us256.us.us.us, 1, !dbg !120
  br i1 %.not229.not.us.us.us.us, label %L304.loopexit, label %L46.us255.us.us.us, !dbg !121

L46.preheader.split.split.split:                  ; preds = %L46.preheader.split.split
  br i1 %.not225, label %L46.preheader.split.split.split.split.us.split.us.split.us, label %L62, !dbg !93

L46.preheader.split.split.split.split.us.split.us.split.us: ; preds = %L46.preheader.split.split.split
  %29 = add nuw i64 %11, 1, !dbg !87
  %30 = add nsw i64 %.size.0.copyload.fr, -2, !dbg !87
  br label %L46.us265.us.us, !dbg !87

L46.us265.us.us:                                  ; preds = %L288.us278.us.us, %L46.preheader.split.split.split.split.us.split.us.split.us
  %value_phi15.us266.us.us = phi i64 [ %92, %L288.us278.us.us ], [ 1, %L46.preheader.split.split.split.split.us.split.us.split.us ]
  %exitcond322.not = icmp ne i64 %value_phi15.us266.us.us, %29, !dbg !87
  br i1 %exitcond322.not, label %L62.us268.us.us, label %odessy.chk1, !dbg !87

L62.us268.us.us:                                  ; preds = %L46.us265.us.us
  %memoryref_offset.us269.us.us = shl i64 %value_phi15.us266.us.us, 3, !dbg !95
  %gep.us270.us.us = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset.us269.us.us, !dbg !95
  %31 = load double, ptr %gep.us270.us.us, align 8, !dbg !95, !tbaa !96, !alias.scope !99, !noalias !100
  %32 = load double, ptr %memoryref_data24, align 8, !dbg !101, !tbaa !96, !alias.scope !99, !noalias !100
  %33 = load double, ptr %memoryref_data35, align 8, !dbg !101, !tbaa !96, !alias.scope !99, !noalias !100
  %34 = fmul double %31, %33, !dbg !102
  %35 = fadd double %32, %34, !dbg !105
  %.size63.0.copyload.us.us.us = load i64, ptr %.size_ptr3, align 8
  %.size76.0.copyload.us.us.us = load i64, ptr %.size_ptr5, align 8
  %memoryref_data53.us.us.us = load ptr, ptr %8, align 8
  %memoryref_data66.us.us.us = load ptr, ptr %2, align 8
  %memoryref_data79.us.us.us = load ptr, ptr %4, align 8
  %.size63.0.copyload.us.us.us.fr = freeze i64 %.size63.0.copyload.us.us.us, !dbg !122
  %umax318 = call i64 @llvm.umax.i64(i64 %.size63.0.copyload.us.us.us.fr, i64 1), !dbg !122
  %umax320 = call i64 @llvm.umax.i64(i64 %.size76.0.copyload.us.us.us, i64 1), !dbg !122
  %36 = add i64 %umax320, -1, !dbg !122
  %umin403 = call i64 @llvm.umin.i64(i64 %36, i64 %30), !dbg !122
  %37 = freeze i64 %umin403, !dbg !122
  %38 = add i64 %umax318, -1, !dbg !122
  %umin404 = call i64 @llvm.umin.i64(i64 %37, i64 %38), !dbg !122
  %umin405 = call i64 @llvm.umin.i64(i64 %umin404, i64 %15), !dbg !122
  %39 = add nuw i64 %umin405, 1, !dbg !122
  %min.iters.check408 = icmp ult i64 %umin405, 12, !dbg !122
  br i1 %min.iters.check408, label %scalar.ph407, label %vector.scevcheck377, !dbg !122

vector.scevcheck377:                              ; preds = %L62.us268.us.us
  %mul.result382 = shl i64 %umin405, 3, !dbg !122
  %mul.overflow383 = icmp ugt i64 %umin405, 2305843009213693951, !dbg !122
  %40 = getelementptr i8, ptr %memoryref_data53.us.us.us, i64 %mul.result382, !dbg !122
  %41 = icmp ult ptr %40, %memoryref_data53.us.us.us, !dbg !122
  %42 = or i1 %41, %mul.overflow383, !dbg !122
  br i1 %42, label %scalar.ph407, label %vector.memcheck384

vector.memcheck384:                               ; preds = %vector.scevcheck377
  %scevgep385 = getelementptr i8, ptr %memoryref_data53.us.us.us, i64 16, !dbg !122
  %scevgep389 = getelementptr i8, ptr %scevgep385, i64 %mul.result382, !dbg !122
  %scevgep390 = getelementptr i8, ptr %memoryref_data66.us.us.us, i64 8, !dbg !122
  %scevgep391 = getelementptr i8, ptr %memoryref_data66.us.us.us, i64 16, !dbg !122
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %mul.result382, !dbg !122
  %scevgep393 = getelementptr i8, ptr %memoryref_data79.us.us.us, i64 8, !dbg !122
  %scevgep394 = getelementptr i8, ptr %memoryref_data79.us.us.us, i64 16, !dbg !122
  %scevgep395 = getelementptr i8, ptr %scevgep394, i64 %mul.result382, !dbg !122
  %bound0396 = icmp ult ptr %memoryref_data53.us.us.us, %scevgep392, !dbg !122
  %bound1397 = icmp ult ptr %scevgep390, %scevgep389, !dbg !122
  %found.conflict398 = and i1 %bound0396, %bound1397, !dbg !122
  %bound0399 = icmp ult ptr %memoryref_data53.us.us.us, %scevgep395, !dbg !122
  %bound1400 = icmp ult ptr %scevgep393, %scevgep389, !dbg !122
  %found.conflict401 = and i1 %bound0399, %bound1400, !dbg !122
  %conflict.rdx402 = or i1 %found.conflict398, %found.conflict401, !dbg !122
  br i1 %conflict.rdx402, label %scalar.ph407, label %vector.ph409

vector.ph409:                                     ; preds = %vector.memcheck384
  %n.mod.vf410 = and i64 %39, 7, !dbg !122
  %43 = icmp eq i64 %n.mod.vf410, 0, !dbg !122
  %44 = select i1 %43, i64 8, i64 %n.mod.vf410, !dbg !122
  %n.vec411 = sub i64 %39, %44, !dbg !122
  %ind.end412 = add i64 %n.vec411, 1, !dbg !122
  %broadcast.splatinsert425 = insertelement <2 x double> poison, double %31, i64 0, !dbg !122
  %broadcast.splat426 = shufflevector <2 x double> %broadcast.splatinsert425, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !122
  %broadcast.splatinsert431 = insertelement <2 x double> poison, double %35, i64 0, !dbg !122
  %broadcast.splat432 = shufflevector <2 x double> %broadcast.splatinsert431, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !122
  br label %vector.body414, !dbg !122

vector.body414:                                   ; preds = %vector.body414, %vector.ph409
  %index415 = phi i64 [ 0, %vector.ph409 ], [ %index.next433, %vector.body414 ]
  %offset.idx416 = shl i64 %index415, 3, !dbg !124
  %45 = or disjoint i64 %offset.idx416, 8, !dbg !124
  %46 = getelementptr inbounds i8, ptr %memoryref_data53.us.us.us, i64 %45, !dbg !124
  %47 = getelementptr inbounds double, ptr %46, i64 2, !dbg !124
  %48 = getelementptr inbounds double, ptr %46, i64 4, !dbg !124
  %49 = getelementptr inbounds double, ptr %46, i64 6, !dbg !124
  %wide.load417 = load <2 x double>, ptr %46, align 8, !dbg !124, !tbaa !96, !alias.scope !125, !noalias !128
  %wide.load418 = load <2 x double>, ptr %47, align 8, !dbg !124, !tbaa !96, !alias.scope !125, !noalias !128
  %wide.load419 = load <2 x double>, ptr %48, align 8, !dbg !124, !tbaa !96, !alias.scope !125, !noalias !128
  %wide.load420 = load <2 x double>, ptr %49, align 8, !dbg !124, !tbaa !96, !alias.scope !125, !noalias !128
  %50 = getelementptr inbounds i8, ptr %memoryref_data66.us.us.us, i64 %45, !dbg !124
  %51 = getelementptr inbounds double, ptr %50, i64 2, !dbg !124
  %52 = getelementptr inbounds double, ptr %50, i64 4, !dbg !124
  %53 = getelementptr inbounds double, ptr %50, i64 6, !dbg !124
  %wide.load421 = load <2 x double>, ptr %50, align 8, !dbg !124, !tbaa !96, !alias.scope !131, !noalias !100
  %wide.load422 = load <2 x double>, ptr %51, align 8, !dbg !124, !tbaa !96, !alias.scope !131, !noalias !100
  %wide.load423 = load <2 x double>, ptr %52, align 8, !dbg !124, !tbaa !96, !alias.scope !131, !noalias !100
  %wide.load424 = load <2 x double>, ptr %53, align 8, !dbg !124, !tbaa !96, !alias.scope !131, !noalias !100
  %54 = fmul <2 x double> %broadcast.splat426, %wide.load421, !dbg !132
  %55 = fmul <2 x double> %broadcast.splat426, %wide.load422, !dbg !132
  %56 = fmul <2 x double> %broadcast.splat426, %wide.load423, !dbg !132
  %57 = fmul <2 x double> %broadcast.splat426, %wide.load424, !dbg !132
  %58 = fadd <2 x double> %wide.load417, %54, !dbg !133
  %59 = fadd <2 x double> %wide.load418, %55, !dbg !133
  %60 = fadd <2 x double> %wide.load419, %56, !dbg !133
  %61 = fadd <2 x double> %wide.load420, %57, !dbg !133
  %62 = getelementptr inbounds i8, ptr %memoryref_data79.us.us.us, i64 %45, !dbg !124
  %63 = getelementptr inbounds double, ptr %62, i64 2, !dbg !124
  %64 = getelementptr inbounds double, ptr %62, i64 4, !dbg !124
  %65 = getelementptr inbounds double, ptr %62, i64 6, !dbg !124
  %wide.load427 = load <2 x double>, ptr %62, align 8, !dbg !124, !tbaa !96, !alias.scope !134, !noalias !100
  %wide.load428 = load <2 x double>, ptr %63, align 8, !dbg !124, !tbaa !96, !alias.scope !134, !noalias !100
  %wide.load429 = load <2 x double>, ptr %64, align 8, !dbg !124, !tbaa !96, !alias.scope !134, !noalias !100
  %wide.load430 = load <2 x double>, ptr %65, align 8, !dbg !124, !tbaa !96, !alias.scope !134, !noalias !100
  %66 = fmul <2 x double> %broadcast.splat432, %wide.load427, !dbg !132
  %67 = fmul <2 x double> %broadcast.splat432, %wide.load428, !dbg !132
  %68 = fmul <2 x double> %broadcast.splat432, %wide.load429, !dbg !132
  %69 = fmul <2 x double> %broadcast.splat432, %wide.load430, !dbg !132
  %70 = fsub <2 x double> %58, %66, !dbg !135
  %71 = fsub <2 x double> %59, %67, !dbg !135
  %72 = fsub <2 x double> %60, %68, !dbg !135
  %73 = fsub <2 x double> %61, %69, !dbg !135
  %74 = getelementptr i8, ptr %46, i64 -8, !dbg !136
  %75 = getelementptr i8, ptr %46, i64 8, !dbg !136
  %76 = getelementptr i8, ptr %46, i64 24, !dbg !136
  %77 = getelementptr i8, ptr %46, i64 40, !dbg !136
  store <2 x double> %70, ptr %74, align 8, !dbg !136, !tbaa !96, !alias.scope !125, !noalias !128
  store <2 x double> %71, ptr %75, align 8, !dbg !136, !tbaa !96, !alias.scope !125, !noalias !128
  store <2 x double> %72, ptr %76, align 8, !dbg !136, !tbaa !96, !alias.scope !125, !noalias !128
  store <2 x double> %73, ptr %77, align 8, !dbg !136, !tbaa !96, !alias.scope !125, !noalias !128
  %index.next433 = add nuw i64 %index415, 8
  %78 = icmp eq i64 %index.next433, %n.vec411
  br i1 %78, label %scalar.ph407.loopexit, label %vector.body414, !llvm.loop !138

scalar.ph407.loopexit:                            ; preds = %vector.body414
  br label %scalar.ph407, !dbg !122

scalar.ph407:                                     ; preds = %scalar.ph407.loopexit, %vector.memcheck384, %vector.scevcheck377, %L62.us268.us.us
  %bc.resume.val413 = phi i64 [ 1, %L62.us268.us.us ], [ 1, %vector.scevcheck377 ], [ 1, %vector.memcheck384 ], [ %ind.end412, %scalar.ph407.loopexit ]
  br label %L121.us.us.us, !dbg !122

L121.us.us.us:                                    ; preds = %L198.us.us.us, %scalar.ph407
  %value_phi47.us.us.us = phi i64 [ %86, %L198.us.us.us ], [ %bc.resume.val413, %scalar.ph407 ]
  %exitcond317.not = icmp ne i64 %value_phi47.us.us.us, %.size.0.copyload.fr, !dbg !122
  br i1 %exitcond317.not, label %L138.us.us.us, label %odessy.chk4, !dbg !122

L138.us.us.us:                                    ; preds = %L121.us.us.us
  %exitcond319.not = icmp ne i64 %value_phi47.us.us.us, %umax318, !dbg !122
  br i1 %exitcond319.not, label %L157.us.us.us, label %odessy.chk6, !dbg !122

L157.us.us.us:                                    ; preds = %L138.us.us.us
  %exitcond321.not = icmp ne i64 %value_phi47.us.us.us, %umax320, !dbg !122
  br i1 %exitcond321.not, label %L198.us.us.us, label %odessy.chk7, !dbg !122

L198.us.us.us:                                    ; preds = %L157.us.us.us
  %memoryref_byteoffset56.us.us.us = shl i64 %value_phi47.us.us.us, 3, !dbg !124
  %memoryref_data61.us.us.us = getelementptr inbounds i8, ptr %memoryref_data53.us.us.us, i64 %memoryref_byteoffset56.us.us.us, !dbg !124
  %79 = load double, ptr %memoryref_data61.us.us.us, align 8, !dbg !124, !tbaa !96, !alias.scope !99, !noalias !100
  %memoryref_data74.us.us.us = getelementptr inbounds i8, ptr %memoryref_data66.us.us.us, i64 %memoryref_byteoffset56.us.us.us, !dbg !124
  %80 = load double, ptr %memoryref_data74.us.us.us, align 8, !dbg !124, !tbaa !96, !alias.scope !99, !noalias !100
  %81 = fmul double %31, %80, !dbg !132
  %82 = fadd double %79, %81, !dbg !133
  %memoryref_data87.us.us.us = getelementptr inbounds i8, ptr %memoryref_data79.us.us.us, i64 %memoryref_byteoffset56.us.us.us, !dbg !124
  %83 = load double, ptr %memoryref_data87.us.us.us, align 8, !dbg !124, !tbaa !96, !alias.scope !99, !noalias !100
  %84 = fmul double %35, %83, !dbg !132
  %85 = fsub double %82, %84, !dbg !135
  %memoryref_data100.us.us.us = getelementptr i8, ptr %memoryref_data61.us.us.us, i64 -8, !dbg !136
  store double %85, ptr %memoryref_data100.us.us.us, align 8, !dbg !136, !tbaa !96, !alias.scope !99, !noalias !100
  %.not224.not.us.us.us = icmp eq i64 %value_phi47.us.us.us, %15, !dbg !141
  %86 = add i64 %value_phi47.us.us.us, 1, !dbg !142
  br i1 %.not224.not.us.us.us, label %L288.us278.us.us, label %L121.us.us.us, !dbg !143, !llvm.loop !144

L288.us278.us.us:                                 ; preds = %L198.us.us.us
  %87 = load double, ptr %memoryref_data117, align 8, !dbg !107, !tbaa !96, !alias.scope !99, !noalias !100
  %88 = fmul double %31, %87, !dbg !108
  %89 = load double, ptr %memoryref_data131, align 8, !dbg !107, !tbaa !96, !alias.scope !99, !noalias !100
  %90 = fmul double %35, %89, !dbg !108
  %91 = fsub double %88, %90, !dbg !109
  store double %91, ptr %memoryref_data146, align 8, !dbg !111, !tbaa !96, !alias.scope !99, !noalias !100
  %gep246.us279.us.us = getelementptr i8, ptr %invariant.gep245, i64 %memoryref_offset.us269.us.us, !dbg !116
  store double %35, ptr %gep246.us279.us.us, align 8, !dbg !116, !tbaa !96, !alias.scope !99, !noalias !100
  %.not229.not.us280.us.us = icmp eq i64 %value_phi15.us266.us.us, %value_phi, !dbg !119
  %92 = add nuw i64 %value_phi15.us266.us.us, 1, !dbg !120
  br i1 %.not229.not.us280.us.us, label %L304.loopexit1, label %L46.us265.us.us, !dbg !121

L59:                                              ; No predecessors!
  store i64 %17, ptr %"new::Tuple181", align 8, !dbg !87, !tbaa !145, !alias.scope !147, !noalias !148
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %6, ptr nonnull readonly captures(none) %"new::Tuple181") #6, !dbg !87
  unreachable, !dbg !87

L62:                                              ; preds = %L46.preheader.split.split.split
  %93 = load double, ptr %memoryref_data, align 8, !dbg !95, !tbaa !96, !alias.scope !99, !noalias !100
  %94 = load double, ptr %memoryref_data24, align 8, !dbg !101, !tbaa !96, !alias.scope !99, !noalias !100
  %95 = load double, ptr %memoryref_data35, align 8, !dbg !101, !tbaa !96, !alias.scope !99, !noalias !100
  %96 = fmul double %93, %95, !dbg !102
  %97 = fadd double %94, %96, !dbg !105
  %umax332 = call i64 @llvm.umax.i64(i64 %.size4.0.copyload.fr, i64 1), !dbg !122
  %98 = add i64 %umax332, -1, !dbg !122
  %umin362 = call i64 @llvm.umin.i64(i64 %15, i64 %98), !dbg !122
  %99 = add nsw i64 %.size.0.copyload.fr, -2, !dbg !122
  %umin363 = call i64 @llvm.umin.i64(i64 %umin362, i64 %99), !dbg !122
  %100 = add nuw i64 %umin363, 1, !dbg !122
  %min.iters.check = icmp ult i64 %umin363, 16, !dbg !122
  br i1 %min.iters.check, label %scalar.ph, label %vector.scevcheck, !dbg !122

vector.scevcheck:                                 ; preds = %L62
  %mul.result = shl i64 %umin363, 3, !dbg !122
  %mul.overflow = icmp ugt i64 %umin363, 2305843009213693951, !dbg !122
  %101 = getelementptr i8, ptr %memoryref_data24, i64 %mul.result, !dbg !122
  %102 = icmp ult ptr %101, %memoryref_data24, !dbg !122
  %103 = or i1 %102, %mul.overflow, !dbg !122
  br i1 %103, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %104 = add i64 %mul.result, 16, !dbg !122
  %scevgep = getelementptr i8, ptr %memoryref_data24, i64 %104, !dbg !122
  %scevgep355 = getelementptr i8, ptr %memoryref_data35, i64 8, !dbg !122
  %scevgep356 = getelementptr i8, ptr %memoryref_data35, i64 %104, !dbg !122
  %scevgep357 = getelementptr i8, ptr %memoryref_data123, i64 8, !dbg !122
  %scevgep358 = getelementptr i8, ptr %memoryref_data123, i64 %104, !dbg !122
  %bound0 = icmp ult ptr %memoryref_data24, %scevgep356, !dbg !122
  %bound1 = icmp ult ptr %scevgep355, %scevgep, !dbg !122
  %found.conflict = and i1 %bound0, %bound1, !dbg !122
  %bound0359 = icmp ult ptr %memoryref_data24, %scevgep358, !dbg !122
  %bound1360 = icmp ult ptr %scevgep357, %scevgep, !dbg !122
  %found.conflict361 = and i1 %bound0359, %bound1360, !dbg !122
  %conflict.rdx = or i1 %found.conflict, %found.conflict361, !dbg !122
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %100, 7, !dbg !122
  %105 = icmp eq i64 %n.mod.vf, 0, !dbg !122
  %106 = select i1 %105, i64 8, i64 %n.mod.vf, !dbg !122
  %n.vec = sub i64 %100, %106, !dbg !122
  %ind.end = add i64 %n.vec, 1, !dbg !122
  %broadcast.splatinsert = insertelement <2 x double> poison, double %93, i64 0, !dbg !122
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !122
  %broadcast.splatinsert375 = insertelement <2 x double> poison, double %97, i64 0, !dbg !122
  %broadcast.splat376 = shufflevector <2 x double> %broadcast.splatinsert375, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !122
  br label %vector.body, !dbg !122

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 3, !dbg !124
  %107 = or disjoint i64 %offset.idx, 8, !dbg !124
  %108 = getelementptr inbounds i8, ptr %memoryref_data24, i64 %107, !dbg !124
  %109 = getelementptr inbounds double, ptr %108, i64 2, !dbg !124
  %110 = getelementptr inbounds double, ptr %108, i64 4, !dbg !124
  %111 = getelementptr inbounds double, ptr %108, i64 6, !dbg !124
  %wide.load = load <2 x double>, ptr %108, align 8, !dbg !124, !tbaa !96, !alias.scope !149, !noalias !152
  %wide.load364 = load <2 x double>, ptr %109, align 8, !dbg !124, !tbaa !96, !alias.scope !149, !noalias !152
  %wide.load365 = load <2 x double>, ptr %110, align 8, !dbg !124, !tbaa !96, !alias.scope !149, !noalias !152
  %wide.load366 = load <2 x double>, ptr %111, align 8, !dbg !124, !tbaa !96, !alias.scope !149, !noalias !152
  %112 = getelementptr inbounds i8, ptr %memoryref_data35, i64 %107, !dbg !124
  %113 = getelementptr inbounds double, ptr %112, i64 2, !dbg !124
  %114 = getelementptr inbounds double, ptr %112, i64 4, !dbg !124
  %115 = getelementptr inbounds double, ptr %112, i64 6, !dbg !124
  %wide.load367 = load <2 x double>, ptr %112, align 8, !dbg !124, !tbaa !96, !alias.scope !155, !noalias !100
  %wide.load368 = load <2 x double>, ptr %113, align 8, !dbg !124, !tbaa !96, !alias.scope !155, !noalias !100
  %wide.load369 = load <2 x double>, ptr %114, align 8, !dbg !124, !tbaa !96, !alias.scope !155, !noalias !100
  %wide.load370 = load <2 x double>, ptr %115, align 8, !dbg !124, !tbaa !96, !alias.scope !155, !noalias !100
  %116 = fmul <2 x double> %broadcast.splat, %wide.load367, !dbg !132
  %117 = fmul <2 x double> %broadcast.splat, %wide.load368, !dbg !132
  %118 = fmul <2 x double> %broadcast.splat, %wide.load369, !dbg !132
  %119 = fmul <2 x double> %broadcast.splat, %wide.load370, !dbg !132
  %120 = fadd <2 x double> %wide.load, %116, !dbg !133
  %121 = fadd <2 x double> %wide.load364, %117, !dbg !133
  %122 = fadd <2 x double> %wide.load365, %118, !dbg !133
  %123 = fadd <2 x double> %wide.load366, %119, !dbg !133
  %124 = getelementptr inbounds i8, ptr %memoryref_data123, i64 %107, !dbg !124
  %125 = getelementptr inbounds double, ptr %124, i64 2, !dbg !124
  %126 = getelementptr inbounds double, ptr %124, i64 4, !dbg !124
  %127 = getelementptr inbounds double, ptr %124, i64 6, !dbg !124
  %wide.load371 = load <2 x double>, ptr %124, align 8, !dbg !124, !tbaa !96, !alias.scope !156, !noalias !100
  %wide.load372 = load <2 x double>, ptr %125, align 8, !dbg !124, !tbaa !96, !alias.scope !156, !noalias !100
  %wide.load373 = load <2 x double>, ptr %126, align 8, !dbg !124, !tbaa !96, !alias.scope !156, !noalias !100
  %wide.load374 = load <2 x double>, ptr %127, align 8, !dbg !124, !tbaa !96, !alias.scope !156, !noalias !100
  %128 = fmul <2 x double> %broadcast.splat376, %wide.load371, !dbg !132
  %129 = fmul <2 x double> %broadcast.splat376, %wide.load372, !dbg !132
  %130 = fmul <2 x double> %broadcast.splat376, %wide.load373, !dbg !132
  %131 = fmul <2 x double> %broadcast.splat376, %wide.load374, !dbg !132
  %132 = fsub <2 x double> %120, %128, !dbg !135
  %133 = fsub <2 x double> %121, %129, !dbg !135
  %134 = fsub <2 x double> %122, %130, !dbg !135
  %135 = fsub <2 x double> %123, %131, !dbg !135
  %136 = getelementptr i8, ptr %108, i64 -8, !dbg !136
  %137 = getelementptr i8, ptr %108, i64 8, !dbg !136
  %138 = getelementptr i8, ptr %108, i64 24, !dbg !136
  %139 = getelementptr i8, ptr %108, i64 40, !dbg !136
  store <2 x double> %132, ptr %136, align 8, !dbg !136, !tbaa !96, !alias.scope !149, !noalias !152
  store <2 x double> %133, ptr %137, align 8, !dbg !136, !tbaa !96, !alias.scope !149, !noalias !152
  store <2 x double> %134, ptr %138, align 8, !dbg !136, !tbaa !96, !alias.scope !149, !noalias !152
  store <2 x double> %135, ptr %139, align 8, !dbg !136, !tbaa !96, !alias.scope !149, !noalias !152
  %index.next = add nuw i64 %index, 8
  %140 = icmp eq i64 %index.next, %n.vec
  br i1 %140, label %scalar.ph.loopexit, label %vector.body, !llvm.loop !157

scalar.ph.loopexit:                               ; preds = %vector.body
  br label %scalar.ph, !dbg !122

scalar.ph:                                        ; preds = %scalar.ph.loopexit, %vector.memcheck, %vector.scevcheck, %L62
  %bc.resume.val = phi i64 [ 1, %L62 ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck ], [ %ind.end, %scalar.ph.loopexit ]
  br label %L121, !dbg !122

L121:                                             ; preds = %L198, %scalar.ph
  %value_phi47 = phi i64 [ %150, %L198 ], [ %bc.resume.val, %scalar.ph ]
  %exitcond331.not = icmp ne i64 %value_phi47, %.size.0.copyload.fr, !dbg !122
  br i1 %exitcond331.not, label %L138, label %odessy.chk3, !dbg !122

L135:                                             ; No predecessors!
  store i64 %.size4.0.copyload.fr, ptr %"new::Tuple175", align 8, !dbg !122, !tbaa !145, !alias.scope !147, !noalias !148
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %8, ptr nonnull readonly captures(none) %"new::Tuple175") #6, !dbg !122
  unreachable, !dbg !122

L138:                                             ; preds = %L121
  %exitcond333.not = icmp ne i64 %value_phi47, %umax332, !dbg !122
  br i1 %exitcond333.not, label %L198, label %odessy.chk5, !dbg !122

L154:                                             ; No predecessors!
  %141 = add nuw i64 poison, 1, !dbg !158
  store i64 %141, ptr %"new::Tuple173", align 8, !dbg !122, !tbaa !145, !alias.scope !147, !noalias !148
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple173") #6, !dbg !122
  unreachable, !dbg !122

L175:                                             ; No predecessors!
  %142 = add nuw i64 poison, 1, !dbg !158
  store i64 %142, ptr %"new::Tuple171", align 8, !dbg !122, !tbaa !145, !alias.scope !147, !noalias !148
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %4, ptr nonnull readonly captures(none) %"new::Tuple171") #6, !dbg !122
  unreachable, !dbg !122

L198:                                             ; preds = %L138
  %memoryref_byteoffset56 = shl i64 %value_phi47, 3, !dbg !124
  %memoryref_data61 = getelementptr inbounds i8, ptr %memoryref_data24, i64 %memoryref_byteoffset56, !dbg !124
  %143 = load double, ptr %memoryref_data61, align 8, !dbg !124, !tbaa !96, !alias.scope !99, !noalias !100
  %memoryref_data74 = getelementptr inbounds i8, ptr %memoryref_data35, i64 %memoryref_byteoffset56, !dbg !124
  %144 = load double, ptr %memoryref_data74, align 8, !dbg !124, !tbaa !96, !alias.scope !99, !noalias !100
  %145 = fmul double %93, %144, !dbg !132
  %146 = fadd double %143, %145, !dbg !133
  %memoryref_data87 = getelementptr inbounds i8, ptr %memoryref_data123, i64 %memoryref_byteoffset56, !dbg !124
  %147 = load double, ptr %memoryref_data87, align 8, !dbg !124, !tbaa !96, !alias.scope !99, !noalias !100
  %148 = fmul double %97, %147, !dbg !132
  %149 = fsub double %146, %148, !dbg !135
  %memoryref_data100 = getelementptr i8, ptr %memoryref_data61, i64 -8, !dbg !136
  store double %149, ptr %memoryref_data100, align 8, !dbg !136, !tbaa !96, !alias.scope !99, !noalias !100
  %.not224.not = icmp eq i64 %value_phi47, %15, !dbg !141
  %150 = add i64 %value_phi47, 1, !dbg !142
  br i1 %.not224.not, label %odessy.chk8, label %L121, !dbg !143, !llvm.loop !159

L226:                                             ; No predecessors!
  store i64 %.size4.0.copyload.fr, ptr %"new::Tuple167", align 8, !dbg !93, !tbaa !145, !alias.scope !147, !noalias !148
  call swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself %pgcstack, ptr nonnull %2, ptr nonnull readonly captures(none) %"new::Tuple167") #6, !dbg !93
  unreachable, !dbg !93

L304.loopexit:                                    ; preds = %L288.us.us.us.us
  br label %L304

L304.loopexit1:                                   ; preds = %L288.us278.us.us
  br label %L304

L304:                                             ; preds = %L304.loopexit1, %L304.loopexit, %L29
  %frame.prev488 = load ptr, ptr %frame.prev, align 8, !tbaa !24
  store ptr %frame.prev488, ptr %pgcstack, align 8, !tbaa !24
  ret ptr %0, !dbg !160

L305:                                             ; preds = %L26
  %151 = call swiftcc [1 x ptr] @j_ArgumentError_147(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#148.jit"), !dbg !70
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %152 = extractvalue [1 x ptr] %151, 0, !dbg !70
  store ptr %152, ptr %gc_slot_addr_0, align 8
  %ptls_load474 = load ptr, ptr %ptls_field, align 8, !dbg !70, !tbaa !24
  %"box::ArgumentError" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load474, i32 424, i32 16, i64 4833101808) #9, !dbg !70
  %"box::ArgumentError.tag_addr" = getelementptr inbounds i64, ptr %"box::ArgumentError", i64 -1, !dbg !70
  store atomic i64 4833101808, ptr %"box::ArgumentError.tag_addr" unordered, align 8, !dbg !70, !tbaa !161
  store ptr %152, ptr %"box::ArgumentError", align 8, !dbg !70, !tbaa !163, !alias.scope !99, !noalias !100
  store ptr null, ptr %gc_slot_addr_0, align 8
  call void @ijl_throw(ptr nonnull %"box::ArgumentError"), !dbg !70
  unreachable, !dbg !70

L308:                                             ; preds = %L20
  %153 = call swiftcc [1 x ptr] @j_DimensionMismatch_150(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !63
  %gc_slot_addr_0445 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %154 = extractvalue [1 x ptr] %153, 0, !dbg !63
  store ptr %154, ptr %gc_slot_addr_0445, align 8
  %ptls_load478 = load ptr, ptr %ptls_field, align 8, !dbg !63, !tbaa !24
  %"box::DimensionMismatch" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load478, i32 424, i32 16, i64 4748420416) #9, !dbg !63
  %"box::DimensionMismatch.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch", i64 -1, !dbg !63
  store atomic i64 4748420416, ptr %"box::DimensionMismatch.tag_addr" unordered, align 8, !dbg !63, !tbaa !161
  store ptr %154, ptr %"box::DimensionMismatch", align 8, !dbg !63, !tbaa !163, !alias.scope !99, !noalias !100
  store ptr null, ptr %gc_slot_addr_0445, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch"), !dbg !63
  unreachable, !dbg !63

L311:                                             ; preds = %L13
  %155 = call swiftcc [1 x ptr] @j_DimensionMismatch_150(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#153.jit"), !dbg !60
  %gc_slot_addr_0447 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %156 = extractvalue [1 x ptr] %155, 0, !dbg !60
  store ptr %156, ptr %gc_slot_addr_0447, align 8
  %ptls_load482 = load ptr, ptr %ptls_field, align 8, !dbg !60, !tbaa !24
  %"box::DimensionMismatch191" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load482, i32 424, i32 16, i64 4748420416) #9, !dbg !60
  %"box::DimensionMismatch191.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch191", i64 -1, !dbg !60
  store atomic i64 4748420416, ptr %"box::DimensionMismatch191.tag_addr" unordered, align 8, !dbg !60, !tbaa !161
  store ptr %156, ptr %"box::DimensionMismatch191", align 8, !dbg !60, !tbaa !163, !alias.scope !99, !noalias !100
  store ptr null, ptr %gc_slot_addr_0447, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch191"), !dbg !60
  unreachable, !dbg !60

L314:                                             ; preds = %top
  %157 = call swiftcc [1 x ptr] @j_DimensionMismatch_150(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#154.jit"), !dbg !52
  %gc_slot_addr_0449 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %158 = extractvalue [1 x ptr] %157, 0, !dbg !52
  store ptr %158, ptr %gc_slot_addr_0449, align 8
  %ptls_load486 = load ptr, ptr %ptls_field, align 8, !dbg !52, !tbaa !24
  %"box::DimensionMismatch197" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load486, i32 424, i32 16, i64 4748420416) #9, !dbg !52
  %"box::DimensionMismatch197.tag_addr" = getelementptr inbounds i64, ptr %"box::DimensionMismatch197", i64 -1, !dbg !52
  store atomic i64 4748420416, ptr %"box::DimensionMismatch197.tag_addr" unordered, align 8, !dbg !52, !tbaa !161
  store ptr %158, ptr %"box::DimensionMismatch197", align 8, !dbg !52, !tbaa !163, !alias.scope !99, !noalias !100
  store ptr null, ptr %gc_slot_addr_0449, align 8
  call void @ijl_throw(ptr nonnull %"box::DimensionMismatch197"), !dbg !52
  unreachable, !dbg !52

odessy.chk:                                       ; preds = %L46.preheader.split
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L46.us265.us.us
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L46.us255.us.us.us
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L121
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %L121.us.us.us
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %L138
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %L138.us.us.us
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %L157.us.us.us
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %L198
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L46.preheader.split.split.split.us
  call void @odessy.chk(i32 9)
  unreachable
}

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #2

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_146(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #3

declare swiftcc [1 x ptr] @j_ArgumentError_147(ptr nonnull swiftself, ptr) #4

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_obj(ptr, i64, ptr) #5

; Function Attrs: noreturn
declare void @ijl_throw(ptr) #6

declare swiftcc [1 x ptr] @j_DimensionMismatch_150(ptr nonnull swiftself, ptr) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #9

declare noalias nonnull ptr @julia.new_gc_frame(i32)

declare void @julia.push_gc_frame(ptr, i32)

declare ptr @julia.get_gc_frame_slot(ptr, i32)

declare void @julia.pop_gc_frame(ptr)

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_bytes(ptr, i64, i64) #10

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #1

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #10

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @llvm.lifetime.start.i64(i64)

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #12

attributes #0 = { "julia.fsig"="filt!(Array{Float64, 1}, Array{Float64, 1}, Array{Float64, 1}, Array{Float64, 1}, Array{Float64, 1})" "probe-stack"="inline-asm" }
attributes #1 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "julia.fsig"="throw_boundserror(Array{Float64, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #4 = { "julia.fsig"="(::Type{ArgumentError})(String)" "probe-stack"="inline-asm" }
attributes #5 = { mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { noreturn }
attributes #7 = { "julia.fsig"="(::Type{Base.DimensionMismatch})(String)" "probe-stack"="inline-asm" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "filt!", linkageName: "japi1_filt!_145", scope: null, file: !5, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !14)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/jl_filt_dsp_guarded.jl", directory: ".")
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
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#filt!", align: 8, elements: !17, runtimeLang: DW_LANG_Julia, identifier: "4570215440")
!17 = !{}
!18 = !DILocalVariable(name: "out", arg: 2, scope: !4, file: !5, line: 5, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !8)
!20 = !DILocalVariable(name: "b", arg: 3, scope: !4, file: !5, line: 5, type: !19)
!21 = !DILocalVariable(name: "a", arg: 4, scope: !4, file: !5, line: 5, type: !19)
!22 = !DILocalVariable(name: "x", arg: 5, scope: !4, file: !5, line: 5, type: !19)
!23 = !DILocalVariable(name: "si", arg: 6, scope: !4, file: !5, line: 5, type: !19)
!24 = !{!25, !25, i64 0}
!25 = !{!"jtbaa_gcframe", !26, i64 0}
!26 = !{!"jtbaa", !27, i64 0}
!27 = !{!"jtbaa"}
!28 = !{!29, !29, i64 0}
!29 = !{!"jtbaa_const", !26, i64 0}
!30 = !{!31}
!31 = !{!"jnoalias_const", !32}
!32 = !{!"jnoalias"}
!33 = !{!34, !35, !36, !37}
!34 = !{!"jnoalias_gcframe", !32}
!35 = !{!"jnoalias_stack", !32}
!36 = !{!"jnoalias_data", !32}
!37 = !{!"jnoalias_typemd", !32}
!38 = !{i64 24}
!39 = !{i64 8}
!40 = !DILocation(line: 5, scope: !4)
!41 = !DILocation(line: 11, scope: !42, inlinedAt: !45)
!42 = distinct !DISubprogram(name: "length;", linkageName: "length", scope: !43, file: !43, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!43 = !DIFile(filename: "essentials.jl", directory: ".")
!44 = !DISubroutineType(types: !17)
!45 = !DILocation(line: 8, scope: !4)
!46 = !DILocation(line: 11, scope: !42, inlinedAt: !47)
!47 = !DILocation(line: 9, scope: !4)
!48 = !{!26, !26, i64 0}
!49 = !{!37, !35}
!50 = !{!34, !36, !31}
!51 = !DILocation(line: 11, scope: !42, inlinedAt: !52)
!52 = !DILocation(line: 11, scope: !4)
!53 = !DILocation(line: 87, scope: !54, inlinedAt: !52)
!54 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !55, file: !55, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!55 = !DIFile(filename: "int.jl", directory: ".")
!56 = !DILocation(line: 637, scope: !57, inlinedAt: !52)
!57 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !58, file: !58, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!58 = !DIFile(filename: "promotion.jl", directory: ".")
!59 = !DILocation(line: 11, scope: !42, inlinedAt: !60)
!60 = !DILocation(line: 12, scope: !4)
!61 = !DILocation(line: 637, scope: !57, inlinedAt: !60)
!62 = !DILocation(line: 11, scope: !42, inlinedAt: !63)
!63 = !DILocation(line: 13, scope: !4)
!64 = !DILocation(line: 637, scope: !57, inlinedAt: !63)
!65 = !DILocation(line: 520, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !55, file: !55, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!67 = !DILocation(line: 472, scope: !68, inlinedAt: !70)
!68 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !69, file: !69, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!69 = !DIFile(filename: "operators.jl", directory: ".")
!70 = !DILocation(line: 14, scope: !4)
!71 = !DILocation(line: 426, scope: !72, inlinedAt: !74)
!72 = distinct !DISubprogram(name: "unitrange_last;", linkageName: "unitrange_last", scope: !73, file: !73, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!73 = !DIFile(filename: "range.jl", directory: ".")
!74 = !DILocation(line: 415, scope: !75, inlinedAt: !76)
!75 = distinct !DISubprogram(name: "UnitRange;", linkageName: "UnitRange", scope: !73, file: !73, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!76 = !DILocation(line: 5, scope: !77, inlinedAt: !78)
!77 = distinct !DISubprogram(name: "Colon;", linkageName: "Colon", scope: !73, file: !73, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!78 = !DILocation(line: 15, scope: !4)
!79 = !DILocation(line: 83, scope: !80, inlinedAt: !81)
!80 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !55, file: !55, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!81 = !DILocation(line: 425, scope: !82, inlinedAt: !83)
!82 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !69, file: !69, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!83 = !DILocation(line: 688, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "isempty;", linkageName: "isempty", scope: !73, file: !73, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!85 = !DILocation(line: 917, scope: !86, inlinedAt: !78)
!86 = distinct !DISubprogram(name: "iterate;", linkageName: "iterate", scope: !73, file: !73, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!87 = !DILocation(line: 919, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !43, file: !43, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!89 = !DILocation(line: 16, scope: !4)
!90 = !DILocation(line: 919, scope: !88, inlinedAt: !91)
!91 = !DILocation(line: 17, scope: !4)
!92 = !DILocation(line: 18, scope: !4)
!93 = !DILocation(line: 919, scope: !88, inlinedAt: !94)
!94 = !DILocation(line: 21, scope: !4)
!95 = !DILocation(line: 920, scope: !88, inlinedAt: !89)
!96 = !{!97, !97, i64 0}
!97 = !{!"jtbaa_arraybuf", !98, i64 0}
!98 = !{!"jtbaa_data", !26, i64 0}
!99 = !{!36}
!100 = !{!34, !35, !37, !31}
!101 = !DILocation(line: 920, scope: !88, inlinedAt: !91)
!102 = !DILocation(line: 497, scope: !103, inlinedAt: !91)
!103 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !104, file: !104, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DIFile(filename: "float.jl", directory: ".")
!105 = !DILocation(line: 495, scope: !106, inlinedAt: !91)
!106 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !104, file: !104, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!107 = !DILocation(line: 920, scope: !88, inlinedAt: !94)
!108 = !DILocation(line: 497, scope: !103, inlinedAt: !94)
!109 = !DILocation(line: 496, scope: !110, inlinedAt: !94)
!110 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !104, file: !104, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!111 = !DILocation(line: 991, scope: !112, inlinedAt: !114)
!112 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !113, file: !113, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!113 = !DIFile(filename: "array.jl", directory: ".")
!114 = !DILocation(line: 986, scope: !115, inlinedAt: !94)
!115 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !113, file: !113, type: !44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!116 = !DILocation(line: 991, scope: !112, inlinedAt: !117)
!117 = !DILocation(line: 986, scope: !115, inlinedAt: !118)
!118 = !DILocation(line: 22, scope: !4)
!119 = !DILocation(line: 637, scope: !57, inlinedAt: !120)
!120 = !DILocation(line: 921, scope: !86, inlinedAt: !121)
!121 = !DILocation(line: 23, scope: !4)
!122 = !DILocation(line: 919, scope: !88, inlinedAt: !123)
!123 = !DILocation(line: 19, scope: !4)
!124 = !DILocation(line: 920, scope: !88, inlinedAt: !123)
!125 = !{!36, !126}
!126 = distinct !{!126, !127}
!127 = distinct !{!127, !"LVerDomain"}
!128 = !{!34, !35, !37, !31, !129, !130}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !127}
!131 = !{!36, !129}
!132 = !DILocation(line: 497, scope: !103, inlinedAt: !123)
!133 = !DILocation(line: 495, scope: !106, inlinedAt: !123)
!134 = !{!36, !130}
!135 = !DILocation(line: 496, scope: !110, inlinedAt: !123)
!136 = !DILocation(line: 991, scope: !112, inlinedAt: !137)
!137 = !DILocation(line: 986, scope: !115, inlinedAt: !123)
!138 = distinct !{!138, !139, !140}
!139 = !{!"llvm.loop.isvectorized", i32 1}
!140 = !{!"llvm.loop.unroll.runtime.disable"}
!141 = !DILocation(line: 637, scope: !57, inlinedAt: !142)
!142 = !DILocation(line: 921, scope: !86, inlinedAt: !143)
!143 = !DILocation(line: 20, scope: !4)
!144 = distinct !{!144, !139}
!145 = !{!146, !146, i64 0}
!146 = !{!"jtbaa_stack", !26, i64 0}
!147 = !{!35}
!148 = !{!34, !36, !37, !31}
!149 = !{!36, !150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!34, !35, !37, !31, !153, !154}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !151}
!155 = !{!36, !153}
!156 = !{!36, !154}
!157 = distinct !{!157, !139, !140}
!158 = !DILocation(line: 87, scope: !54, inlinedAt: !123)
!159 = distinct !{!159, !139}
!160 = !DILocation(line: 24, scope: !4)
!161 = !{!162, !162, i64 0}
!162 = !{!"jtbaa_tag", !98, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"jtbaa_immut", !165, i64 0}
!165 = !{!"jtbaa_value", !98, i64 0}
