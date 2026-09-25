; ModuleID = 'results/static/guard_competitors/Julia_lz77_bounded2/irce.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4583026320 to ptr)
@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4583026576 to ptr)

define swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"data::Array", i64 signext %"window::Int64") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  store i64 4, ptr %gcframe1, align 16, !tbaa !20
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !20
  store ptr %gcframe1, ptr %pgcstack, align 8
    #dbg_declare(ptr %"data::Array", !18, !DIExpression(), !24)
    #dbg_value(i64 %"window::Int64", !19, !DIExpression(), !24)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !20
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !24
  fence syncscope("singlethread") seq_cst
  %"data::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"data::Array", i64 16, !dbg !27
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
  %9 = sub i64 %value_phi160, %value_phi4, !dbg !46
  br label %L31.preheader, !dbg !46

L31.preheader:                                    ; preds = %L80, %L31.preheader.lr.ph
  %indvars.iv = phi i64 [ %6, %L31.preheader.lr.ph ], [ %indvars.iv.next, %L80 ]
  %indvar = phi i64 [ 0, %L31.preheader.lr.ph ], [ %indvar.next, %L80 ]
  %value_phi658 = phi i64 [ 0, %L31.preheader.lr.ph ], [ %value_phi6.value_phi25, %L80 ]
  %value_phi557 = phi i64 [ %value_phi4, %L31.preheader.lr.ph ], [ %22, %L80 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %4), !dbg !47
  %10 = sub i64 %"data::Array.size.0.copyload", %smax, !dbg !47
  %smin = call i64 @llvm.smin.i64(i64 %10, i64 %8), !dbg !47
  %smin20 = call i64 @llvm.smin.i64(i64 %smin, i64 255), !dbg !47
  %11 = add i64 %smin20, -1, !dbg !47
  %smax91 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !47
  %12 = call i64 @llvm.smin.i64(i64 %smax91, i64 %smax66), !dbg !47
  %smax92 = sub nsw i64 0, %12, !dbg !47
  %smin93 = call i64 @llvm.smin.i64(i64 %smax92, i64 255), !dbg !47
  %smax94 = call i64 @llvm.smax.i64(i64 %smin93, i64 0), !dbg !47
  %13 = add i64 %indvar, %6, !dbg !47
  %smax65 = call i64 @llvm.smax.i64(i64 %13, i64 -9223372036854775807), !dbg !47
  %14 = call i64 @llvm.smin.i64(i64 %smax65, i64 %smax66), !dbg !47
  %smax70 = call i64 @llvm.smax.i64(i64 %13, i64 %4), !dbg !47
  %15 = sub i64 %"data::Array.size.0.copyload", %smax70, !dbg !47
  %smin72 = call i64 @llvm.smin.i64(i64 %15, i64 %8), !dbg !47
  %smin73 = call i64 @llvm.smin.i64(i64 %smin72, i64 255), !dbg !47
  %.not114 = icmp sgt i64 %14, -1, !dbg !47
  br i1 %.not114, label %preloop.pseudo.exit, label %L31.preloop, !dbg !47

L31:                                              ; preds = %L31.preheader5, %L75
  %value_phi7 = phi i64 [ %19, %L75 ], [ %value_phi7.preloop.copy, %L31.preheader5 ]
  %16 = add i64 %value_phi7, %value_phi160, !dbg !48
  %.not43.not.not = icmp sgt i64 %16, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not43.not.not, label %L80, label %L69, !dbg !47

L69:                                              ; preds = %L31
  %gep13 = getelementptr i8, ptr %invariant.gep12, i64 %value_phi7, !dbg !51
  %17 = load i8, ptr %gep13, align 1, !dbg !51, !tbaa !53, !alias.scope !56, !noalias !59
  %gep64 = getelementptr i8, ptr %invariant.gep, i64 %16, !dbg !51
  %18 = load i8, ptr %gep64, align 1, !dbg !51, !tbaa !53, !alias.scope !56, !noalias !59
  %.not46 = icmp eq i8 %17, %18, !dbg !64
  br i1 %.not46, label %L75, label %L80, !dbg !47

L75:                                              ; preds = %L69
  %19 = add nuw nsw i64 %value_phi7, 1, !dbg !67
  %exitcond.not25 = icmp eq i64 %19, %smin20, !dbg !69
  br i1 %exitcond.not25, label %main.exit.selector, label %L31, !dbg !69

main.exit.selector:                               ; preds = %L75
  %20 = icmp samesign ult i64 %11, 254, !dbg !69
  br i1 %20, label %main.pseudo.exit, label %L80, !dbg !69

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi7.copy = phi i64 [ %value_phi7.preloop.copy, %preloop.pseudo.exit ], [ %smin20, %main.exit.selector ]
  %21 = call i64 @llvm.smax.i64(i64 %value_phi7.copy, i64 254)
  %smax95 = add nuw nsw i64 %21, 1
  br label %L31.postloop

L80:                                              ; preds = %L31.preloop, %L69.preloop, %L31, %L69, %L31.postloop, %L69.postloop, %L75.postloop, %preloop.exit.selector, %main.exit.selector
  %value_phi25 = phi i64 [ %smin20, %main.exit.selector ], [ %smax94, %preloop.exit.selector ], [ %smax95, %L75.postloop ], [ %value_phi7, %L31 ], [ %value_phi7.postloop, %L69.postloop ], [ %value_phi7.postloop, %L31.postloop ], [ %value_phi7, %L69 ], [ %value_phi7.preloop, %L69.preloop ], [ %value_phi7.preloop, %L31.preloop ]
  %value_phi6.value_phi25 = call i64 @llvm.smax.i64(i64 %value_phi658, i64 %value_phi25), !dbg !70
  %22 = add nsw i64 %value_phi557, 1, !dbg !71
  %indvar.next = add nuw i64 %indvar, 1, !dbg !46
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !46
  %exitcond96.not = icmp eq i64 %indvar.next, %9, !dbg !45
  br i1 %exitcond96.not, label %L87, label %L31.preheader, !dbg !46

L87:                                              ; preds = %L80, %L20
  %value_phi6.lcssa = phi i64 [ 0, %L20 ], [ %value_phi6.value_phi25, %L80 ]
  %23 = icmp sgt i64 %value_phi6.lcssa, 2, !dbg !73
  %value_phi29.v = select i1 %23, i64 %value_phi6.lcssa, i64 1, !dbg !76
  %value_phi29 = add i64 %value_phi29.v, %value_phi160, !dbg !76
  %24 = zext i1 %23 to i64, !dbg !76
  %value_phi30 = add i64 %value_phi261, %24, !dbg !76
  %.not = icmp sgt i64 %value_phi29, %"data::Array.size.0.copyload", !dbg !37
  br i1 %.not, label %L96, label %L20, !dbg !38

L96:                                              ; preds = %L87, %L16.preheader
  %value_phi2.lcssa = phi i64 [ 0, %L16.preheader ], [ %value_phi30, %L87 ]
  %frame.prev183 = load ptr, ptr %frame.prev, align 8, !tbaa !20
  store ptr %frame.prev183, ptr %pgcstack, align 8, !tbaa !20
  ret i64 %value_phi2.lcssa, !dbg !77

L97:                                              ; preds = %L6
  %25 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !36
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %26 = extractvalue [1 x ptr] %25, 0, !dbg !36
  store ptr %26, ptr %gc_slot_addr_0, align 16
  %ptls_load177 = load ptr, ptr %ptls_field, align 8, !dbg !36, !tbaa !20
  %"box::ArgumentError" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load177, i32 424, i32 16, i64 4845914096) #9, !dbg !36
  %"box::ArgumentError.tag_addr" = getelementptr inbounds i8, ptr %"box::ArgumentError", i64 -8, !dbg !36
  store atomic i64 4845914096, ptr %"box::ArgumentError.tag_addr" unordered, align 8, !dbg !36, !tbaa !78
  store ptr %26, ptr %"box::ArgumentError", align 8, !dbg !36, !tbaa !80, !alias.scope !56, !noalias !59
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::ArgumentError"), !dbg !36
  unreachable, !dbg !36

L100:                                             ; preds = %top
  %27 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#151.jit"), !dbg !35
  %gc_slot_addr_0160 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %28 = extractvalue [1 x ptr] %27, 0, !dbg !35
  store ptr %28, ptr %gc_slot_addr_0160, align 16
  %ptls_load181 = load ptr, ptr %ptls_field, align 8, !dbg !35, !tbaa !20
  %"box::ArgumentError36" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load181, i32 424, i32 16, i64 4845914096) #9, !dbg !35
  %"box::ArgumentError36.tag_addr" = getelementptr inbounds i8, ptr %"box::ArgumentError36", i64 -8, !dbg !35
  store atomic i64 4845914096, ptr %"box::ArgumentError36.tag_addr" unordered, align 8, !dbg !35, !tbaa !78
  store ptr %28, ptr %"box::ArgumentError36", align 8, !dbg !35, !tbaa !80, !alias.scope !56, !noalias !59
  store ptr null, ptr %gc_slot_addr_0160, align 16
  call void @ijl_throw(ptr nonnull %"box::ArgumentError36"), !dbg !35
  unreachable, !dbg !35

L31.preloop:                                      ; preds = %L31.preheader, %L75.preloop
  %value_phi7.preloop = phi i64 [ %35, %L75.preloop ], [ 0, %L31.preheader ]
  %29 = add i64 %value_phi7.preloop, %value_phi160, !dbg !48
  %.not43.preloop.not.not = icmp sgt i64 %29, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not43.preloop.not.not, label %L80, label %L35.preloop, !dbg !47

L35.preloop:                                      ; preds = %L31.preloop
  %30 = add i64 %value_phi7.preloop, %value_phi557, !dbg !48
  %31 = add i64 %30, -1, !dbg !83
  %.not44.preloop = icmp ult i64 %31, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not44.preloop, label %L50.preloop, label %odessy.chk1, !dbg !83

L50.preloop:                                      ; preds = %L35.preloop
  %32 = add i64 %29, -1, !dbg !83
  %.not45.preloop = icmp ult i64 %32, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not45.preloop, label %L69.preloop, label %odessy.chk3, !dbg !83

L69.preloop:                                      ; preds = %L50.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %30, !dbg !51
  %33 = load i8, ptr %gep.preloop, align 1, !dbg !51, !tbaa !53, !alias.scope !56, !noalias !59
  %gep64.preloop = getelementptr i8, ptr %invariant.gep, i64 %29, !dbg !51
  %34 = load i8, ptr %gep64.preloop, align 1, !dbg !51, !tbaa !53, !alias.scope !56, !noalias !59
  %.not46.preloop = icmp eq i8 %33, %34, !dbg !64
  br i1 %.not46.preloop, label %L75.preloop, label %L80, !dbg !47

L75.preloop:                                      ; preds = %L69.preloop
  %35 = add nuw nsw i64 %value_phi7.preloop, 1, !dbg !67
  %exitcond.not = icmp eq i64 %smin93, %35, !dbg !69
  br i1 %exitcond.not, label %preloop.exit.selector, label %L31.preloop, !dbg !69, !llvm.loop !84, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L75.preloop
  %36 = icmp sgt i64 %12, -255, !dbg !69
  br i1 %36, label %preloop.pseudo.exit, label %L80, !dbg !69

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L31.preheader
  %value_phi7.preloop.copy = phi i64 [ 0, %L31.preheader ], [ %smax94, %preloop.exit.selector ]
  %37 = icmp sgt i64 %smin73, %value_phi7.preloop.copy
  br i1 %37, label %L31.preheader5, label %main.pseudo.exit

L31.preheader5:                                   ; preds = %preloop.pseudo.exit
  %invariant.gep12 = getelementptr i8, ptr %invariant.gep, i64 %value_phi557, !dbg !47
  br label %L31, !dbg !47

L31.postloop:                                     ; preds = %L75.postloop, %main.pseudo.exit
  %value_phi7.postloop = phi i64 [ %44, %L75.postloop ], [ %value_phi7.copy, %main.pseudo.exit ]
  %38 = add i64 %value_phi7.postloop, %value_phi160, !dbg !48
  %.not43.postloop.not.not = icmp sgt i64 %38, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not43.postloop.not.not, label %L80, label %L35.postloop, !dbg !47

L35.postloop:                                     ; preds = %L31.postloop
  %39 = add i64 %value_phi7.postloop, %value_phi557, !dbg !48
  %40 = add i64 %39, -1, !dbg !83
  %.not44.postloop = icmp ult i64 %40, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not44.postloop, label %L50.postloop, label %odessy.chk, !dbg !83

L50.postloop:                                     ; preds = %L35.postloop
  %41 = add i64 %38, -1, !dbg !83
  %.not45.postloop = icmp ult i64 %41, %"data::Array.size.0.copyload", !dbg !83
  br i1 %.not45.postloop, label %L69.postloop, label %odessy.chk2, !dbg !83

L69.postloop:                                     ; preds = %L50.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %39, !dbg !51
  %42 = load i8, ptr %gep.postloop, align 1, !dbg !51, !tbaa !53, !alias.scope !56, !noalias !59
  %gep64.postloop = getelementptr i8, ptr %invariant.gep, i64 %38, !dbg !51
  %43 = load i8, ptr %gep64.postloop, align 1, !dbg !51, !tbaa !53, !alias.scope !56, !noalias !59
  %.not46.postloop = icmp eq i8 %42, %43, !dbg !64
  br i1 %.not46.postloop, label %L75.postloop, label %L80, !dbg !47

L75.postloop:                                     ; preds = %L69.postloop
  %44 = add nuw nsw i64 %value_phi7.postloop, 1, !dbg !67
  %45 = icmp samesign ult i64 %value_phi7.postloop, 254, !dbg !89
  br i1 %45, label %L31.postloop, label %L80, !dbg !69, !llvm.loop !91, !loop_constrainer.loop.clone !10

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
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4308303644 to ptr)(i64 4308303680) #10
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !92, !noalias !93, !nonnull !10, !dereferenceable !94, !align !95
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !92, !noalias !93, !nonnull !10, !dereferenceable !95, !align !95
  %.unbox = load i64, ptr %3, align 8, !tbaa !80, !alias.scope !56, !noalias !59
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #11
  ret ptr %box_Int64
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext) local_unnamed_addr #2

declare swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @ijl_throw(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #8

attributes #0 = { "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { "julia.fsig"="(::Type{ArgumentError})(String)" "probe-stack"="inline-asm" }
attributes #4 = { noreturn }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

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
!51 = !DILocation(line: 920, scope: !52, inlinedAt: !47)
!52 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!53 = !{!54, !54, i64 0}
!54 = !{!"jtbaa_arraybuf", !55, i64 0}
!55 = !{!"jtbaa_data", !22, i64 0}
!56 = !{!57}
!57 = !{!"jnoalias_data", !58}
!58 = !{!"jnoalias"}
!59 = !{!60, !61, !62, !63}
!60 = !{!"jnoalias_gcframe", !58}
!61 = !{!"jnoalias_stack", !58}
!62 = !{!"jnoalias_typemd", !58}
!63 = !{!"jnoalias_const", !58}
!64 = !DILocation(line: 637, scope: !65, inlinedAt: !47)
!65 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !66, file: !66, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "promotion.jl", directory: ".")
!67 = !DILocation(line: 87, scope: !49, inlinedAt: !68)
!68 = !DILocation(line: 20, scope: !4)
!69 = !DILocation(line: 21, scope: !4)
!70 = !DILocation(line: 23, scope: !4)
!71 = !DILocation(line: 87, scope: !49, inlinedAt: !72)
!72 = !DILocation(line: 26, scope: !4)
!73 = !DILocation(line: 520, scope: !33, inlinedAt: !74)
!74 = !DILocation(line: 472, scope: !75, inlinedAt: !76)
!75 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !43, file: !43, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!76 = !DILocation(line: 28, scope: !4)
!77 = !DILocation(line: 35, scope: !4)
!78 = !{!79, !79, i64 0}
!79 = !{!"jtbaa_tag", !55, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"jtbaa_immut", !82, i64 0}
!82 = !{!"jtbaa_value", !55, i64 0}
!83 = !DILocation(line: 919, scope: !52, inlinedAt: !47)
!84 = distinct !{!84, !85, !86, !87, !88}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"llvm.loop.vectorize.enable", i1 false}
!87 = !{!"llvm.loop.licm_versioning.disable"}
!88 = !{!"llvm.loop.distribute.enable", i1 false}
!89 = !DILocation(line: 520, scope: !33, inlinedAt: !90)
!90 = !DILocation(line: 472, scope: !75, inlinedAt: !69)
!91 = distinct !{!91, !85, !86, !87, !88}
!92 = !{!63}
!93 = !{!60, !61, !57, !62}
!94 = !{i64 24}
!95 = !{i64 8}
