; ModuleID = 'results/static/guard_competitors/Julia_lz77_bounded/tag.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4576833168 to ptr)
@"+Core.ArgumentError#150.jit" = private alias ptr, inttoptr (i64 4839720944 to ptr)

define swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"data::Array", i64 signext %"window::Int64") #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %gcframe1, i8 0, i64 24, i1 true)
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple26" = alloca [1 x i64], align 8
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
  br i1 %2, label %L89, label %L8.preheader, !dbg !35

L8.preheader:                                     ; preds = %top
  %.not52 = icmp slt i64 %"data::Array.size.0.copyload", 2, !dbg !36
  br i1 %.not52, label %L88, label %L12.lr.ph, !dbg !37

L12.lr.ph:                                        ; preds = %L8.preheader
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -1
  %3 = add nuw nsw i64 %"data::Array.size.0.copyload", -9223372036854775807, !dbg !37
  br label %L12, !dbg !37

L12:                                              ; preds = %L79, %L12.lr.ph
  %value_phi154 = phi i64 [ 0, %L12.lr.ph ], [ %value_phi29, %L79 ]
  %value_phi53 = phi i64 [ 2, %L12.lr.ph ], [ %value_phi28, %L79 ]
  %.not34 = icmp sgt i64 %value_phi53, %"window::Int64", !dbg !38
  %4 = sub i64 %value_phi53, %"window::Int64", !dbg !43
  %value_phi3 = select i1 %.not34, i64 %4, i64 1, !dbg !43
  %.not3549 = icmp slt i64 %value_phi3, %value_phi53, !dbg !44
  br i1 %.not3549, label %L23.preheader.lr.ph, label %L79, !dbg !45

L23.preheader.lr.ph:                              ; preds = %L12
  %5 = add i64 %value_phi3, -1, !dbg !45
  %6 = add nsw i64 %value_phi53, -1, !dbg !45
  %smax59 = call i64 @llvm.smax.i64(i64 %6, i64 -9223372036854775807), !dbg !45
  %smax64 = call i64 @llvm.smax.i64(i64 %6, i64 %3), !dbg !45
  %7 = sub i64 %"data::Array.size.0.copyload", %smax64, !dbg !45
  %umax = call i64 @llvm.umax.i64(i64 %"data::Array.size.0.copyload", i64 %6), !dbg !45
  %8 = add i64 %umax, 1, !dbg !45
  %9 = sub i64 %value_phi53, %value_phi3, !dbg !45
  br label %L23.preheader, !dbg !45

L23.preheader:                                    ; preds = %L72, %L23.preheader.lr.ph
  %indvars.iv = phi i64 [ %5, %L23.preheader.lr.ph ], [ %indvars.iv.next, %L72 ]
  %indvar = phi i64 [ 0, %L23.preheader.lr.ph ], [ %indvar.next, %L72 ]
  %value_phi551 = phi i64 [ 0, %L23.preheader.lr.ph ], [ %value_phi5.value_phi24, %L72 ]
  %value_phi450 = phi i64 [ %value_phi3, %L23.preheader.lr.ph ], [ %22, %L72 ]
  %smax84 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !46
  %10 = call i64 @llvm.smin.i64(i64 %smax84, i64 %smax59), !dbg !46
  %smax85 = sub nsw i64 0, %10, !dbg !46
  %smin86 = call i64 @llvm.smin.i64(i64 %smax85, i64 255), !dbg !46
  %smax87 = call i64 @llvm.smax.i64(i64 %smin86, i64 0), !dbg !46
  %11 = add i64 %5, %indvar, !dbg !46
  %smax58 = call i64 @llvm.smax.i64(i64 %11, i64 -9223372036854775807), !dbg !46
  %12 = call i64 @llvm.smin.i64(i64 %smax58, i64 %smax59), !dbg !46
  %smax63 = call i64 @llvm.smax.i64(i64 %11, i64 %3), !dbg !46
  %13 = sub i64 %"data::Array.size.0.copyload", %smax63, !dbg !46
  %smin65 = call i64 @llvm.smin.i64(i64 %13, i64 %7), !dbg !46
  %smin66 = call i64 @llvm.smin.i64(i64 %smin65, i64 255), !dbg !46
  %.not107 = icmp sgt i64 %12, -1, !dbg !46
  br i1 %.not107, label %preloop.pseudo.exit, label %L23.preloop.preheader, !dbg !46

L23.preloop.preheader:                            ; preds = %L23.preheader
  br label %L23.preloop, !dbg !46

L23:                                              ; preds = %L23.preheader1, %L67
  %value_phi6 = phi i64 [ %18, %L67 ], [ %value_phi6.preloop.copy, %L23.preheader1 ]
  %14 = add i64 %value_phi6, %value_phi53, !dbg !47
  %.not36.not = icmp sle i64 %14, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.not, label %L61, label %L72.loopexit2, !dbg !46

L39:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple26", align 8, !dbg !50, !tbaa !52, !alias.scope !54, !noalias !57
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple26") #8, !dbg !50
  unreachable, !dbg !50

L58:                                              ; No predecessors!
  store i64 poison, ptr %"new::Tuple", align 8, !dbg !50, !tbaa !52, !alias.scope !54, !noalias !57
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple") #8, !dbg !50
  unreachable, !dbg !50

L61:                                              ; preds = %L23
  %15 = getelementptr i8, ptr %invariant.gep, i64 %value_phi6, !dbg !62
  %gep = getelementptr i8, ptr %15, i64 %value_phi450, !dbg !62
  %16 = load i8, ptr %gep, align 1, !dbg !62, !tbaa !63, !alias.scope !66, !noalias !67
  %gep57 = getelementptr i8, ptr %invariant.gep, i64 %14, !dbg !62
  %17 = load i8, ptr %gep57, align 1, !dbg !62, !tbaa !63, !alias.scope !66, !noalias !67
  %.not39 = icmp eq i8 %16, %17, !dbg !68
  br i1 %.not39, label %L67, label %L72.loopexit2, !dbg !46

L67:                                              ; preds = %L61
  %18 = add nuw nsw i64 %value_phi6, 1, !dbg !71
  %19 = icmp sgt i64 %smin66, %18, !dbg !73
  br i1 %19, label %L23, label %main.exit.selector, !dbg !73

main.exit.selector:                               ; preds = %L67
  %.lcssa = phi i64 [ %18, %L67 ], !dbg !71
  %value_phi6.lcssa7 = phi i64 [ %value_phi6, %L67 ]
  %20 = icmp ult i64 %value_phi6.lcssa7, 254, !dbg !73
  br i1 %20, label %main.pseudo.exit, label %L72, !dbg !73

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi6.copy = phi i64 [ %value_phi6.preloop.copy, %preloop.pseudo.exit ], [ %.lcssa, %main.exit.selector ]
  %21 = call i64 @llvm.smax.i64(i64 %value_phi6.copy, i64 254)
  %smax88 = add nuw nsw i64 %21, 1
  br label %L23.postloop

L72.loopexit:                                     ; preds = %L23.postloop, %L61.postloop, %L67.postloop
  %value_phi24.ph = phi i64 [ %value_phi6.postloop, %L23.postloop ], [ %value_phi6.postloop, %L61.postloop ], [ %smax88, %L67.postloop ]
  br label %L72, !dbg !74

L72.loopexit2:                                    ; preds = %L23, %L61
  %value_phi6.lcssa = phi i64 [ %value_phi6, %L23 ], [ %value_phi6, %L61 ]
  br label %L72, !dbg !74

L72.loopexit3:                                    ; preds = %L23.preloop, %L61.preloop
  %value_phi6.preloop.lcssa = phi i64 [ %value_phi6.preloop, %L23.preloop ], [ %value_phi6.preloop, %L61.preloop ]
  br label %L72, !dbg !74

L72:                                              ; preds = %L72.loopexit3, %L72.loopexit2, %L72.loopexit, %preloop.exit.selector, %main.exit.selector
  %value_phi24 = phi i64 [ %.lcssa, %main.exit.selector ], [ %smax87, %preloop.exit.selector ], [ %value_phi24.ph, %L72.loopexit ], [ %value_phi6.lcssa, %L72.loopexit2 ], [ %value_phi6.preloop.lcssa, %L72.loopexit3 ]
  %value_phi5.value_phi24 = call i64 @llvm.smax.i64(i64 %value_phi551, i64 %value_phi24), !dbg !74
  %22 = add nsw i64 %value_phi450, 1, !dbg !75
  %indvar.next = add i64 %indvar, 1, !dbg !45
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !45
  %exitcond89.not = icmp eq i64 %indvar.next, %9, !dbg !44
  br i1 %exitcond89.not, label %L79.loopexit, label %L23.preheader, !dbg !45

L79.loopexit:                                     ; preds = %L72
  %value_phi5.value_phi24.lcssa = phi i64 [ %value_phi5.value_phi24, %L72 ], !dbg !74
  br label %L79, !dbg !77

L79:                                              ; preds = %L79.loopexit, %L12
  %value_phi5.lcssa = phi i64 [ 0, %L12 ], [ %value_phi5.value_phi24.lcssa, %L79.loopexit ]
  %23 = icmp sgt i64 %value_phi5.lcssa, 2, !dbg !77
  %value_phi28.v = select i1 %23, i64 %value_phi5.lcssa, i64 1, !dbg !80
  %value_phi28 = add i64 %value_phi28.v, %value_phi53, !dbg !80
  %24 = zext i1 %23 to i64, !dbg !80
  %value_phi29 = add i64 %value_phi154, %24, !dbg !80
  %.not = icmp sgt i64 %value_phi28, %"data::Array.size.0.copyload", !dbg !36
  br i1 %.not, label %L88.loopexit, label %L12, !dbg !37

L88.loopexit:                                     ; preds = %L79
  %value_phi29.lcssa = phi i64 [ %value_phi29, %L79 ], !dbg !80
  br label %L88

L88:                                              ; preds = %L88.loopexit, %L8.preheader
  %value_phi1.lcssa = phi i64 [ 0, %L8.preheader ], [ %value_phi29.lcssa, %L88.loopexit ]
  %frame.prev170 = load ptr, ptr %frame.prev, align 8, !tbaa !20
  store ptr %frame.prev170, ptr %pgcstack, align 8, !tbaa !20
  ret i64 %value_phi1.lcssa, !dbg !81

L89:                                              ; preds = %top
  %25 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !35
  %gc_slot_addr_0 = getelementptr inbounds ptr, ptr %gcframe1, i64 2
  %26 = extractvalue [1 x ptr] %25, 0, !dbg !35
  store ptr %26, ptr %gc_slot_addr_0, align 8
  %ptls_load168 = load ptr, ptr %ptls_field, align 8, !dbg !35, !tbaa !20
  %"box::ArgumentError" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load168, i32 424, i32 16, i64 4839720944) #10, !dbg !35
  %"box::ArgumentError.tag_addr" = getelementptr inbounds i64, ptr %"box::ArgumentError", i64 -1, !dbg !35
  store atomic i64 4839720944, ptr %"box::ArgumentError.tag_addr" unordered, align 8, !dbg !35, !tbaa !82
  store ptr %26, ptr %"box::ArgumentError", align 8, !dbg !35, !tbaa !84, !alias.scope !66, !noalias !67
  store ptr null, ptr %gc_slot_addr_0, align 8
  call void @ijl_throw(ptr nonnull %"box::ArgumentError"), !dbg !35
  unreachable, !dbg !35

L23.preloop:                                      ; preds = %L23.preloop.preheader, %L67.preloop
  %value_phi6.preloop = phi i64 [ %33, %L67.preloop ], [ 0, %L23.preloop.preheader ]
  %27 = add i64 %value_phi6.preloop, %value_phi53, !dbg !47
  %.not36.preloop.not = icmp sle i64 %27, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.preloop.not, label %L27.preloop, label %L72.loopexit3, !dbg !46

L27.preloop:                                      ; preds = %L23.preloop
  %28 = add i64 %value_phi6.preloop, %value_phi450, !dbg !47
  %29 = add i64 %28, -1, !dbg !50
  %.not37.preloop = icmp ult i64 %29, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not37.preloop, label %L42.preloop, label %odessy.chk1, !dbg !50

L42.preloop:                                      ; preds = %L27.preloop
  %30 = add i64 %27, -1, !dbg !50
  %.not38.preloop = icmp ult i64 %30, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not38.preloop, label %L61.preloop, label %odessy.chk3, !dbg !50

L61.preloop:                                      ; preds = %L42.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %28, !dbg !62
  %31 = load i8, ptr %gep.preloop, align 1, !dbg !62, !tbaa !63, !alias.scope !66, !noalias !67
  %gep57.preloop = getelementptr i8, ptr %invariant.gep, i64 %27, !dbg !62
  %32 = load i8, ptr %gep57.preloop, align 1, !dbg !62, !tbaa !63, !alias.scope !66, !noalias !67
  %.not39.preloop = icmp eq i8 %31, %32, !dbg !68
  br i1 %.not39.preloop, label %L67.preloop, label %L72.loopexit3, !dbg !46

L67.preloop:                                      ; preds = %L61.preloop
  %33 = add nuw nsw i64 %value_phi6.preloop, 1, !dbg !71
  %exitcond.not = icmp eq i64 %smin86, %33, !dbg !73
  br i1 %exitcond.not, label %preloop.exit.selector, label %L23.preloop, !dbg !73, !llvm.loop !87, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L67.preloop
  %34 = icmp sgt i64 %10, -255, !dbg !73
  br i1 %34, label %preloop.pseudo.exit, label %L72, !dbg !73

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L23.preheader
  %value_phi6.preloop.copy = phi i64 [ 0, %L23.preheader ], [ %smax87, %preloop.exit.selector ]
  %35 = icmp sgt i64 %smin66, %value_phi6.preloop.copy
  br i1 %35, label %L23.preheader1, label %main.pseudo.exit

L23.preheader1:                                   ; preds = %preloop.pseudo.exit
  br label %L23, !dbg !46

L23.postloop:                                     ; preds = %L67.postloop, %main.pseudo.exit
  %value_phi6.postloop = phi i64 [ %42, %L67.postloop ], [ %value_phi6.copy, %main.pseudo.exit ]
  %36 = add i64 %value_phi6.postloop, %value_phi53, !dbg !47
  %.not36.postloop.not = icmp sle i64 %36, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.postloop.not, label %L27.postloop, label %L72.loopexit, !dbg !46

L27.postloop:                                     ; preds = %L23.postloop
  %37 = add i64 %value_phi6.postloop, %value_phi450, !dbg !47
  %38 = add i64 %37, -1, !dbg !50
  %.not37.postloop = icmp ult i64 %38, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not37.postloop, label %L42.postloop, label %odessy.chk, !dbg !50

L42.postloop:                                     ; preds = %L27.postloop
  %39 = add i64 %36, -1, !dbg !50
  %.not38.postloop = icmp ult i64 %39, %"data::Array.size.0.copyload", !dbg !50
  br i1 %.not38.postloop, label %L61.postloop, label %odessy.chk2, !dbg !50

L61.postloop:                                     ; preds = %L42.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %37, !dbg !62
  %40 = load i8, ptr %gep.postloop, align 1, !dbg !62, !tbaa !63, !alias.scope !66, !noalias !67
  %gep57.postloop = getelementptr i8, ptr %invariant.gep, i64 %36, !dbg !62
  %41 = load i8, ptr %gep57.postloop, align 1, !dbg !62, !tbaa !63, !alias.scope !66, !noalias !67
  %.not39.postloop = icmp eq i8 %40, %41, !dbg !68
  br i1 %.not39.postloop, label %L67.postloop, label %L72.loopexit, !dbg !46

L67.postloop:                                     ; preds = %L61.postloop
  %42 = add nuw nsw i64 %value_phi6.postloop, 1, !dbg !71
  %43 = icmp ult i64 %value_phi6.postloop, 254, !dbg !92
  br i1 %43, label %L23.postloop, label %L72.loopexit, !dbg !73, !llvm.loop !94, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L27.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L27.preloop
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L42.postloop
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L42.preloop
  call void @odessy.chk(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4303830812 to ptr)(i64 4303830848) #14
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !95, !noalias !96, !nonnull !10, !dereferenceable !97, !align !98
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !95, !noalias !96, !nonnull !10, !dereferenceable !98, !align !98
  %.unbox = load i64, ptr %3, align 8, !tbaa !84, !alias.scope !66, !noalias !67
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
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/lz77_bounded.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !8}
!8 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#lz77_scan", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4576834128")
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
!36 = !DILocation(line: 520, scope: !33, inlinedAt: !37)
!37 = !DILocation(line: 12, scope: !4)
!38 = !DILocation(line: 83, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!40 = !DILocation(line: 425, scope: !41, inlinedAt: !43)
!41 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !42, file: !42, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!42 = !DIFile(filename: "operators.jl", directory: ".")
!43 = !DILocation(line: 13, scope: !4)
!44 = !DILocation(line: 83, scope: !39, inlinedAt: !45)
!45 = !DILocation(line: 16, scope: !4)
!46 = !DILocation(line: 18, scope: !4)
!47 = !DILocation(line: 87, scope: !48, inlinedAt: !46)
!48 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!49 = !DILocation(line: 520, scope: !33, inlinedAt: !46)
!50 = !DILocation(line: 919, scope: !51, inlinedAt: !46)
!51 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!52 = !{!53, !53, i64 0}
!53 = !{!"jtbaa_stack", !22, i64 0}
!54 = !{!55}
!55 = !{!"jnoalias_stack", !56}
!56 = !{!"jnoalias"}
!57 = !{!58, !59, !60, !61}
!58 = !{!"jnoalias_gcframe", !56}
!59 = !{!"jnoalias_data", !56}
!60 = !{!"jnoalias_typemd", !56}
!61 = !{!"jnoalias_const", !56}
!62 = !DILocation(line: 920, scope: !51, inlinedAt: !46)
!63 = !{!64, !64, i64 0}
!64 = !{!"jtbaa_arraybuf", !65, i64 0}
!65 = !{!"jtbaa_data", !22, i64 0}
!66 = !{!59}
!67 = !{!58, !55, !60, !61}
!68 = !DILocation(line: 637, scope: !69, inlinedAt: !46)
!69 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !70, file: !70, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!70 = !DIFile(filename: "promotion.jl", directory: ".")
!71 = !DILocation(line: 87, scope: !48, inlinedAt: !72)
!72 = !DILocation(line: 19, scope: !4)
!73 = !DILocation(line: 20, scope: !4)
!74 = !DILocation(line: 22, scope: !4)
!75 = !DILocation(line: 87, scope: !48, inlinedAt: !76)
!76 = !DILocation(line: 25, scope: !4)
!77 = !DILocation(line: 520, scope: !33, inlinedAt: !78)
!78 = !DILocation(line: 472, scope: !79, inlinedAt: !80)
!79 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !42, file: !42, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!80 = !DILocation(line: 27, scope: !4)
!81 = !DILocation(line: 34, scope: !4)
!82 = !{!83, !83, i64 0}
!83 = !{!"jtbaa_tag", !65, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"jtbaa_immut", !86, i64 0}
!86 = !{!"jtbaa_value", !65, i64 0}
!87 = distinct !{!87, !88, !89, !90, !91}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!"llvm.loop.vectorize.enable", i1 false}
!90 = !{!"llvm.loop.licm_versioning.disable"}
!91 = !{!"llvm.loop.distribute.enable", i1 false}
!92 = !DILocation(line: 520, scope: !33, inlinedAt: !93)
!93 = !DILocation(line: 472, scope: !79, inlinedAt: !73)
!94 = distinct !{!94, !88, !89, !90, !91}
!95 = !{!61}
!96 = !{!58, !55, !59, !60}
!97 = !{i64 24}
!98 = !{i64 8}
