; ModuleID = 'results/static/guard_competitors/Julia_lz77_bounded2/tag.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4583026320 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4583026576 to ptr)
@"+Core.ArgumentError#150.jit" = private alias ptr, inttoptr (i64 4845914096 to ptr)

define swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"data::Array", i64 signext %"window::Int64") #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %gcframe1, i8 0, i64 24, i1 true)
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple27" = alloca [1 x i64], align 8
  store i64 4, ptr %gcframe1, align 8, !tbaa !20
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds ptr, ptr %gcframe1, i64 1
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !20
  store ptr %gcframe1, ptr %pgcstack, align 8
    #dbg_declare(ptr %"data::Array", !18, !DIExpression(), !24)
    #dbg_value(i64 %"window::Int64", !19, !DIExpression(), !24)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !20
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !24
  fence syncscope("singlethread") seq_cst
  %"data::Array.size_ptr" = getelementptr inbounds i8, ptr %"data::Array", i64 16, !dbg !27
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8, !dbg !27
  %2 = icmp sgt i64 %"data::Array.size.0.copyload", 4611686018427387904, !dbg !32
  br i1 %2, label %L100, label %L6, !dbg !35

L6:                                               ; preds = %top
  %3 = add i64 %"window::Int64", -4611686018427387905, !dbg !36
  %narrow = icmp ult i64 %3, -4611686018427387904, !dbg !36
  br i1 %narrow, label %L97, label %L16.preheader, !dbg !36

L16.preheader:                                    ; preds = %L6
  %.not59 = icmp slt i64 %"data::Array.size.0.copyload", 2, !dbg !37
  br i1 %.not59, label %L96, label %L20.lr.ph, !dbg !38

L20.lr.ph:                                        ; preds = %L16.preheader
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -1
  %4 = add nuw nsw i64 %"data::Array.size.0.copyload", -9223372036854775807, !dbg !38
  br label %L20, !dbg !38

L20:                                              ; preds = %L87, %L20.lr.ph
  %value_phi261 = phi i64 [ 0, %L20.lr.ph ], [ %value_phi30, %L87 ]
  %value_phi160 = phi i64 [ 2, %L20.lr.ph ], [ %value_phi29, %L87 ]
  %.not41 = icmp sgt i64 %value_phi160, %"window::Int64", !dbg !39
  %5 = sub i64 %value_phi160, %"window::Int64", !dbg !44
  %value_phi4 = select i1 %.not41, i64 %5, i64 1, !dbg !44
  %.not4256 = icmp slt i64 %value_phi4, %value_phi160, !dbg !45
  br i1 %.not4256, label %L31.preheader.lr.ph, label %L87, !dbg !46

L31.preheader.lr.ph:                              ; preds = %L20
  %6 = add i64 %value_phi4, -1, !dbg !46
  %7 = add nsw i64 %value_phi160, -1, !dbg !46
  %smax66 = call i64 @llvm.smax.i64(i64 %7, i64 -9223372036854775807), !dbg !46
  %smax71 = call i64 @llvm.smax.i64(i64 %7, i64 %4), !dbg !46
  %8 = sub i64 %"data::Array.size.0.copyload", %smax71, !dbg !46
  %umax = call i64 @llvm.umax.i64(i64 %"data::Array.size.0.copyload", i64 %7), !dbg !46
  %9 = add i64 %umax, 1, !dbg !46
  %10 = sub i64 %value_phi160, %value_phi4, !dbg !46
  br label %L31.preheader, !dbg !46

L31.preheader:                                    ; preds = %L80, %L31.preheader.lr.ph
  %indvars.iv = phi i64 [ %6, %L31.preheader.lr.ph ], [ %indvars.iv.next, %L80 ]
  %indvar = phi i64 [ 0, %L31.preheader.lr.ph ], [ %indvar.next, %L80 ]
  %value_phi658 = phi i64 [ 0, %L31.preheader.lr.ph ], [ %value_phi6.value_phi25, %L80 ]
  %value_phi557 = phi i64 [ %value_phi4, %L31.preheader.lr.ph ], [ %23, %L80 ]
  %smax91 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !47
  %11 = call i64 @llvm.smin.i64(i64 %smax91, i64 %smax66), !dbg !47
  %smax92 = sub nsw i64 0, %11, !dbg !47
  %smin93 = call i64 @llvm.smin.i64(i64 %smax92, i64 255), !dbg !47
  %smax94 = call i64 @llvm.smax.i64(i64 %smin93, i64 0), !dbg !47
  %12 = add i64 %6, %indvar, !dbg !47
  %smax65 = call i64 @llvm.smax.i64(i64 %12, i64 -9223372036854775807), !dbg !47
  %13 = call i64 @llvm.smin.i64(i64 %smax65, i64 %smax66), !dbg !47
  %smax70 = call i64 @llvm.smax.i64(i64 %12, i64 %4), !dbg !47
  %14 = sub i64 %"data::Array.size.0.copyload", %smax70, !dbg !47
  %smin72 = call i64 @llvm.smin.i64(i64 %14, i64 %8), !dbg !47
  %smin73 = call i64 @llvm.smin.i64(i64 %smin72, i64 255), !dbg !47
  %.not114 = icmp sgt i64 %13, -1, !dbg !47
  br i1 %.not114, label %preloop.pseudo.exit, label %L31.preloop.preheader, !dbg !47

L31.preloop.preheader:                            ; preds = %L31.preheader
  br label %L31.preloop, !dbg !47

L31:                                              ; preds = %L31.preheader1, %L75
  %value_phi7 = phi i64 [ %19, %L75 ], [ %value_phi7.preloop.copy, %L31.preheader1 ]
  %15 = add i64 %value_phi7, %value_phi160, !dbg !48
  %.not43.not = icmp sle i64 %15, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not43.not, label %L69, label %L80.loopexit2, !dbg !47

L47:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple27", align 8, !dbg !51, !tbaa !53, !alias.scope !55, !noalias !58
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple27") #8, !dbg !51
  unreachable, !dbg !51

L66:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple", align 8, !dbg !51, !tbaa !53, !alias.scope !55, !noalias !58
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple") #8, !dbg !51
  unreachable, !dbg !51

L69:                                              ; preds = %L31
  %16 = getelementptr i8, ptr %invariant.gep, i64 %value_phi7, !dbg !63
  %gep = getelementptr i8, ptr %16, i64 %value_phi557, !dbg !63
  %17 = load i8, ptr %gep, align 1, !dbg !63, !tbaa !64, !alias.scope !67, !noalias !68
  %gep64 = getelementptr i8, ptr %invariant.gep, i64 %15, !dbg !63
  %18 = load i8, ptr %gep64, align 1, !dbg !63, !tbaa !64, !alias.scope !67, !noalias !68
  %.not46 = icmp eq i8 %17, %18, !dbg !69
  br i1 %.not46, label %L75, label %L80.loopexit2, !dbg !47

L75:                                              ; preds = %L69
  %19 = add nuw nsw i64 %value_phi7, 1, !dbg !72
  %20 = icmp sgt i64 %smin73, %19, !dbg !74
  br i1 %20, label %L31, label %main.exit.selector, !dbg !74

main.exit.selector:                               ; preds = %L75
  %.lcssa = phi i64 [ %19, %L75 ], !dbg !72
  %value_phi7.lcssa7 = phi i64 [ %value_phi7, %L75 ]
  %21 = icmp ult i64 %value_phi7.lcssa7, 254, !dbg !74
  br i1 %21, label %main.pseudo.exit, label %L80, !dbg !74

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi7.copy = phi i64 [ %value_phi7.preloop.copy, %preloop.pseudo.exit ], [ %.lcssa, %main.exit.selector ]
  %22 = call i64 @llvm.smax.i64(i64 %value_phi7.copy, i64 254)
  %smax95 = add nuw nsw i64 %22, 1
  br label %L31.postloop

L80.loopexit:                                     ; preds = %L31.postloop, %L69.postloop, %L75.postloop
  %value_phi25.ph = phi i64 [ %value_phi7.postloop, %L31.postloop ], [ %value_phi7.postloop, %L69.postloop ], [ %smax95, %L75.postloop ]
  br label %L80, !dbg !75

L80.loopexit2:                                    ; preds = %L31, %L69
  %value_phi7.lcssa = phi i64 [ %value_phi7, %L31 ], [ %value_phi7, %L69 ]
  br label %L80, !dbg !75

L80.loopexit3:                                    ; preds = %L31.preloop, %L69.preloop
  %value_phi7.preloop.lcssa = phi i64 [ %value_phi7.preloop, %L31.preloop ], [ %value_phi7.preloop, %L69.preloop ]
  br label %L80, !dbg !75

L80:                                              ; preds = %L80.loopexit3, %L80.loopexit2, %L80.loopexit, %preloop.exit.selector, %main.exit.selector
  %value_phi25 = phi i64 [ %.lcssa, %main.exit.selector ], [ %smax94, %preloop.exit.selector ], [ %value_phi25.ph, %L80.loopexit ], [ %value_phi7.lcssa, %L80.loopexit2 ], [ %value_phi7.preloop.lcssa, %L80.loopexit3 ]
  %value_phi6.value_phi25 = call i64 @llvm.smax.i64(i64 %value_phi658, i64 %value_phi25), !dbg !75
  %23 = add nsw i64 %value_phi557, 1, !dbg !76
  %indvar.next = add i64 %indvar, 1, !dbg !46
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !46
  %exitcond96.not = icmp eq i64 %indvar.next, %10, !dbg !45
  br i1 %exitcond96.not, label %L87.loopexit, label %L31.preheader, !dbg !46

L87.loopexit:                                     ; preds = %L80
  %value_phi6.value_phi25.lcssa = phi i64 [ %value_phi6.value_phi25, %L80 ], !dbg !75
  br label %L87, !dbg !78

L87:                                              ; preds = %L87.loopexit, %L20
  %value_phi6.lcssa = phi i64 [ 0, %L20 ], [ %value_phi6.value_phi25.lcssa, %L87.loopexit ]
  %24 = icmp sgt i64 %value_phi6.lcssa, 2, !dbg !78
  %value_phi29.v = select i1 %24, i64 %value_phi6.lcssa, i64 1, !dbg !81
  %value_phi29 = add i64 %value_phi29.v, %value_phi160, !dbg !81
  %25 = zext i1 %24 to i64, !dbg !81
  %value_phi30 = add i64 %value_phi261, %25, !dbg !81
  %.not = icmp sgt i64 %value_phi29, %"data::Array.size.0.copyload", !dbg !37
  br i1 %.not, label %L96.loopexit, label %L20, !dbg !38

L96.loopexit:                                     ; preds = %L87
  %value_phi30.lcssa = phi i64 [ %value_phi30, %L87 ], !dbg !81
  br label %L96

L96:                                              ; preds = %L96.loopexit, %L16.preheader
  %value_phi2.lcssa = phi i64 [ 0, %L16.preheader ], [ %value_phi30.lcssa, %L96.loopexit ]
  %frame.prev183 = load ptr, ptr %frame.prev, align 8, !tbaa !20
  store ptr %frame.prev183, ptr %pgcstack, align 8, !tbaa !20
  ret i64 %value_phi2.lcssa, !dbg !82

L97:                                              ; preds = %L6
  %26 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !36
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %27 = extractvalue [1 x ptr] %26, 0, !dbg !36
  store ptr %27, ptr %gc_slot_addr_0, align 8
  %ptls_load177 = load ptr, ptr %ptls_field, align 8, !dbg !36, !tbaa !20
  %"box::ArgumentError" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load177, i32 424, i32 16, i64 4845914096) #10, !dbg !36
  %"box::ArgumentError.tag_addr" = getelementptr inbounds i64, ptr %"box::ArgumentError", i64 -1, !dbg !36
  store atomic i64 4845914096, ptr %"box::ArgumentError.tag_addr" unordered, align 8, !dbg !36, !tbaa !83
  store ptr %27, ptr %"box::ArgumentError", align 8, !dbg !36, !tbaa !85, !alias.scope !67, !noalias !68
  store ptr null, ptr %gc_slot_addr_0, align 8
  call void @ijl_throw(ptr nonnull %"box::ArgumentError"), !dbg !36
  unreachable, !dbg !36

L100:                                             ; preds = %top
  %28 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !35
  %gc_slot_addr_0160 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %29 = extractvalue [1 x ptr] %28, 0, !dbg !35
  store ptr %29, ptr %gc_slot_addr_0160, align 8
  %ptls_load181 = load ptr, ptr %ptls_field, align 8, !dbg !35, !tbaa !20
  %"box::ArgumentError36" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load181, i32 424, i32 16, i64 4845914096) #10, !dbg !35
  %"box::ArgumentError36.tag_addr" = getelementptr inbounds i64, ptr %"box::ArgumentError36", i64 -1, !dbg !35
  store atomic i64 4845914096, ptr %"box::ArgumentError36.tag_addr" unordered, align 8, !dbg !35, !tbaa !83
  store ptr %29, ptr %"box::ArgumentError36", align 8, !dbg !35, !tbaa !85, !alias.scope !67, !noalias !68
  store ptr null, ptr %gc_slot_addr_0160, align 8
  call void @ijl_throw(ptr nonnull %"box::ArgumentError36"), !dbg !35
  unreachable, !dbg !35

L31.preloop:                                      ; preds = %L31.preloop.preheader, %L75.preloop
  %value_phi7.preloop = phi i64 [ %36, %L75.preloop ], [ 0, %L31.preloop.preheader ]
  %30 = add i64 %value_phi7.preloop, %value_phi160, !dbg !48
  %.not43.preloop.not = icmp sle i64 %30, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not43.preloop.not, label %L35.preloop, label %L80.loopexit3, !dbg !47

L35.preloop:                                      ; preds = %L31.preloop
  %31 = add i64 %value_phi7.preloop, %value_phi557, !dbg !48
  %32 = add i64 %31, -1, !dbg !51
  %.not44.preloop = icmp ult i64 %32, %"data::Array.size.0.copyload", !dbg !51
  br i1 %.not44.preloop, label %L50.preloop, label %odessy.chk1, !dbg !51

L50.preloop:                                      ; preds = %L35.preloop
  %33 = add i64 %30, -1, !dbg !51
  %.not45.preloop = icmp ult i64 %33, %"data::Array.size.0.copyload", !dbg !51
  br i1 %.not45.preloop, label %L69.preloop, label %odessy.chk3, !dbg !51

L69.preloop:                                      ; preds = %L50.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %31, !dbg !63
  %34 = load i8, ptr %gep.preloop, align 1, !dbg !63, !tbaa !64, !alias.scope !67, !noalias !68
  %gep64.preloop = getelementptr i8, ptr %invariant.gep, i64 %30, !dbg !63
  %35 = load i8, ptr %gep64.preloop, align 1, !dbg !63, !tbaa !64, !alias.scope !67, !noalias !68
  %.not46.preloop = icmp eq i8 %34, %35, !dbg !69
  br i1 %.not46.preloop, label %L75.preloop, label %L80.loopexit3, !dbg !47

L75.preloop:                                      ; preds = %L69.preloop
  %36 = add nuw nsw i64 %value_phi7.preloop, 1, !dbg !72
  %exitcond.not = icmp eq i64 %smin93, %36, !dbg !74
  br i1 %exitcond.not, label %preloop.exit.selector, label %L31.preloop, !dbg !74, !llvm.loop !88, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L75.preloop
  %37 = icmp sgt i64 %11, -255, !dbg !74
  br i1 %37, label %preloop.pseudo.exit, label %L80, !dbg !74

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L31.preheader
  %value_phi7.preloop.copy = phi i64 [ 0, %L31.preheader ], [ %smax94, %preloop.exit.selector ]
  %38 = icmp sgt i64 %smin73, %value_phi7.preloop.copy
  br i1 %38, label %L31.preheader1, label %main.pseudo.exit

L31.preheader1:                                   ; preds = %preloop.pseudo.exit
  br label %L31, !dbg !47

L31.postloop:                                     ; preds = %L75.postloop, %main.pseudo.exit
  %value_phi7.postloop = phi i64 [ %45, %L75.postloop ], [ %value_phi7.copy, %main.pseudo.exit ]
  %39 = add i64 %value_phi7.postloop, %value_phi160, !dbg !48
  %.not43.postloop.not = icmp sle i64 %39, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not43.postloop.not, label %L35.postloop, label %L80.loopexit, !dbg !47

L35.postloop:                                     ; preds = %L31.postloop
  %40 = add i64 %value_phi7.postloop, %value_phi557, !dbg !48
  %41 = add i64 %40, -1, !dbg !51
  %.not44.postloop = icmp ult i64 %41, %"data::Array.size.0.copyload", !dbg !51
  br i1 %.not44.postloop, label %L50.postloop, label %odessy.chk, !dbg !51

L50.postloop:                                     ; preds = %L35.postloop
  %42 = add i64 %39, -1, !dbg !51
  %.not45.postloop = icmp ult i64 %42, %"data::Array.size.0.copyload", !dbg !51
  br i1 %.not45.postloop, label %L69.postloop, label %odessy.chk2, !dbg !51

L69.postloop:                                     ; preds = %L50.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %40, !dbg !63
  %43 = load i8, ptr %gep.postloop, align 1, !dbg !63, !tbaa !64, !alias.scope !67, !noalias !68
  %gep64.postloop = getelementptr i8, ptr %invariant.gep, i64 %39, !dbg !63
  %44 = load i8, ptr %gep64.postloop, align 1, !dbg !63, !tbaa !64, !alias.scope !67, !noalias !68
  %.not46.postloop = icmp eq i8 %43, %44, !dbg !69
  br i1 %.not46.postloop, label %L75.postloop, label %L80.loopexit, !dbg !47

L75.postloop:                                     ; preds = %L69.postloop
  %45 = add nuw nsw i64 %value_phi7.postloop, 1, !dbg !72
  %46 = icmp ult i64 %value_phi7.postloop, 254, !dbg !93
  br i1 %46, label %L31.postloop, label %L80.loopexit, !dbg !74, !llvm.loop !95, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L35.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L35.preloop
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L50.postloop
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L50.preloop
  call void @odessy.chk(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4308303644 to ptr)(i64 4308303680) #14
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !96, !noalias !97, !nonnull !10, !dereferenceable !98, !align !99
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !96, !noalias !97, !nonnull !10, !dereferenceable !99, !align !99
  %.unbox = load i64, ptr %3, align 8, !tbaa !85, !alias.scope !67, !noalias !68
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #15
  ret ptr %box_Int64
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext) #2

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #4

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #5

declare swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself, ptr) #6

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_obj(ptr, i64, ptr) #7

; Function Attrs: noreturn
declare void @ijl_throw(ptr) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #10

declare noalias nonnull ptr @julia.new_gc_frame(i32)

declare void @julia.push_gc_frame(ptr, i32)

declare ptr @julia.get_gc_frame_slot(ptr, i32)

declare void @julia.pop_gc_frame(ptr)

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @julia.gc_alloc_bytes(ptr, i64, i64) #11

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #3

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #11

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @llvm.lifetime.start.i64(i64)

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #13

attributes #0 = { "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "julia.fsig"="throw_boundserror(Array{UInt8, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #6 = { "julia.fsig"="(::Type{ArgumentError})(String)" "probe-stack"="inline-asm" }
attributes #7 = { mustprogress nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #8 = { noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #11 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "lz77_scan", linkageName: "julia_lz77_scan_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/lz77_bounded2.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !8}
!8 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#lz77_scan", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4583027536")
!10 = !{}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !14, line: 71, align: 64, elements: !15)
!14 = !DIFile(filename: "julia.h", directory: "")
!15 = !{!12}
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 7, type: !9)
!18 = !DILocalVariable(name: "data", arg: 2, scope: !4, file: !5, line: 7, type: !11)
!19 = !DILocalVariable(name: "window", arg: 3, scope: !4, file: !5, line: 7, type: !8)
!20 = !{!21, !21, i64 0}
!21 = !{!"jtbaa_gcframe", !22, i64 0}
!22 = !{!"jtbaa", !23, i64 0}
!23 = !{!"jtbaa"}
!24 = !DILocation(line: 7, scope: !4)
!25 = !{!26, !26, i64 0}
!26 = !{!"jtbaa_const", !22, i64 0}
!27 = !DILocation(line: 11, scope: !28, inlinedAt: !31)
!28 = distinct !DISubprogram(name: "length;", linkageName: "length", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!29 = !DIFile(filename: "essentials.jl", directory: ".")
!30 = !DISubroutineType(types: !10)
!31 = !DILocation(line: 8, scope: !4)
!32 = !DILocation(line: 520, scope: !33, inlinedAt: !35)
!33 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DIFile(filename: "int.jl", directory: ".")
!35 = !DILocation(line: 9, scope: !4)
!36 = !DILocation(line: 10, scope: !4)
!37 = !DILocation(line: 520, scope: !33, inlinedAt: !38)
!38 = !DILocation(line: 13, scope: !4)
!39 = !DILocation(line: 83, scope: !40, inlinedAt: !41)
!40 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DILocation(line: 425, scope: !42, inlinedAt: !44)
!42 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !43, file: !43, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!43 = !DIFile(filename: "operators.jl", directory: ".")
!44 = !DILocation(line: 14, scope: !4)
!45 = !DILocation(line: 83, scope: !40, inlinedAt: !46)
!46 = !DILocation(line: 17, scope: !4)
!47 = !DILocation(line: 19, scope: !4)
!48 = !DILocation(line: 87, scope: !49, inlinedAt: !47)
!49 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!50 = !DILocation(line: 520, scope: !33, inlinedAt: !47)
!51 = !DILocation(line: 919, scope: !52, inlinedAt: !47)
!52 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!53 = !{!54, !54, i64 0}
!54 = !{!"jtbaa_stack", !22, i64 0}
!55 = !{!56}
!56 = !{!"jnoalias_stack", !57}
!57 = !{!"jnoalias"}
!58 = !{!59, !60, !61, !62}
!59 = !{!"jnoalias_gcframe", !57}
!60 = !{!"jnoalias_data", !57}
!61 = !{!"jnoalias_typemd", !57}
!62 = !{!"jnoalias_const", !57}
!63 = !DILocation(line: 920, scope: !52, inlinedAt: !47)
!64 = !{!65, !65, i64 0}
!65 = !{!"jtbaa_arraybuf", !66, i64 0}
!66 = !{!"jtbaa_data", !22, i64 0}
!67 = !{!60}
!68 = !{!59, !56, !61, !62}
!69 = !DILocation(line: 637, scope: !70, inlinedAt: !47)
!70 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !71, file: !71, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!71 = !DIFile(filename: "promotion.jl", directory: ".")
!72 = !DILocation(line: 87, scope: !49, inlinedAt: !73)
!73 = !DILocation(line: 20, scope: !4)
!74 = !DILocation(line: 21, scope: !4)
!75 = !DILocation(line: 23, scope: !4)
!76 = !DILocation(line: 87, scope: !49, inlinedAt: !77)
!77 = !DILocation(line: 26, scope: !4)
!78 = !DILocation(line: 520, scope: !33, inlinedAt: !79)
!79 = !DILocation(line: 472, scope: !80, inlinedAt: !81)
!80 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !43, file: !43, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!81 = !DILocation(line: 28, scope: !4)
!82 = !DILocation(line: 35, scope: !4)
!83 = !{!84, !84, i64 0}
!84 = !{!"jtbaa_tag", !66, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"jtbaa_immut", !87, i64 0}
!87 = !{!"jtbaa_value", !66, i64 0}
!88 = distinct !{!88, !89, !90, !91, !92}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!"llvm.loop.vectorize.enable", i1 false}
!91 = !{!"llvm.loop.licm_versioning.disable"}
!92 = !{!"llvm.loop.distribute.enable", i1 false}
!93 = !DILocation(line: 520, scope: !33, inlinedAt: !94)
!94 = !DILocation(line: 472, scope: !80, inlinedAt: !74)
!95 = distinct !{!95, !89, !90, !91, !92}
!96 = !{!62}
!97 = !{!59, !56, !60, !61}
!98 = !{i64 24}
!99 = !{i64 8}
