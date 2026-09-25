; ModuleID = 'results/static/guard_competitors/Julia_lz77_bounded/tag.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#149.jit" = private alias ptr, inttoptr (i64 4576833168 to ptr)

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
  %8 = sub i64 %value_phi53, %value_phi3, !dbg !45
  br label %L23.preheader, !dbg !45

L23.preheader:                                    ; preds = %L72, %L23.preheader.lr.ph
  %indvars.iv = phi i64 [ %5, %L23.preheader.lr.ph ], [ %indvars.iv.next, %L72 ]
  %indvar = phi i64 [ 0, %L23.preheader.lr.ph ], [ %indvar.next, %L72 ]
  %value_phi551 = phi i64 [ 0, %L23.preheader.lr.ph ], [ %value_phi5.value_phi24, %L72 ]
  %value_phi450 = phi i64 [ %value_phi3, %L23.preheader.lr.ph ], [ %21, %L72 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %3), !dbg !46
  %9 = sub i64 %"data::Array.size.0.copyload", %smax, !dbg !46
  %smin = call i64 @llvm.smin.i64(i64 %9, i64 %7), !dbg !46
  %smin20 = call i64 @llvm.smin.i64(i64 %smin, i64 255), !dbg !46
  %10 = add i64 %smin20, -1, !dbg !46
  %smax84 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !46
  %11 = call i64 @llvm.smin.i64(i64 %smax84, i64 %smax59), !dbg !46
  %smax85 = sub nsw i64 0, %11, !dbg !46
  %smin86 = call i64 @llvm.smin.i64(i64 %smax85, i64 255), !dbg !46
  %smax87 = call i64 @llvm.smax.i64(i64 %smin86, i64 0), !dbg !46
  %12 = add i64 %indvar, %5, !dbg !46
  %smax58 = call i64 @llvm.smax.i64(i64 %12, i64 -9223372036854775807), !dbg !46
  %13 = call i64 @llvm.smin.i64(i64 %smax58, i64 %smax59), !dbg !46
  %smax63 = call i64 @llvm.smax.i64(i64 %12, i64 %3), !dbg !46
  %14 = sub i64 %"data::Array.size.0.copyload", %smax63, !dbg !46
  %smin65 = call i64 @llvm.smin.i64(i64 %14, i64 %7), !dbg !46
  %smin66 = call i64 @llvm.smin.i64(i64 %smin65, i64 255), !dbg !46
  %.not107 = icmp sgt i64 %13, -1, !dbg !46
  br i1 %.not107, label %preloop.pseudo.exit, label %L23.preloop, !dbg !46

L23:                                              ; preds = %L23.preheader5, %L67
  %value_phi6 = phi i64 [ %18, %L67 ], [ %value_phi6.preloop.copy, %L23.preheader5 ]
  %15 = add i64 %value_phi6, %value_phi53, !dbg !47
  %.not36.not = icmp sgt i64 %15, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.not, label %L72, label %L61, !dbg !46

L61:                                              ; preds = %L23
  %gep13 = getelementptr i8, ptr %invariant.gep12, i64 %value_phi6, !dbg !50
  %16 = load i8, ptr %gep13, align 1, !dbg !50, !tbaa !52, !alias.scope !55, !noalias !58
  %gep57 = getelementptr i8, ptr %invariant.gep, i64 %15, !dbg !50
  %17 = load i8, ptr %gep57, align 1, !dbg !50, !tbaa !52, !alias.scope !55, !noalias !58
  %.not39 = icmp eq i8 %16, %17, !dbg !63
  br i1 %.not39, label %L67, label %L72, !dbg !46

L67:                                              ; preds = %L61
  %18 = add nuw nsw i64 %value_phi6, 1, !dbg !66
  %exitcond.not25 = icmp eq i64 %18, %smin20, !dbg !68
  br i1 %exitcond.not25, label %main.exit.selector, label %L23, !dbg !68

main.exit.selector:                               ; preds = %L67
  %19 = icmp samesign ult i64 %10, 254, !dbg !68
  br i1 %19, label %main.pseudo.exit, label %L72, !dbg !68

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi6.copy = phi i64 [ %value_phi6.preloop.copy, %preloop.pseudo.exit ], [ %smin20, %main.exit.selector ]
  %20 = call i64 @llvm.smax.i64(i64 %value_phi6.copy, i64 254)
  %smax88 = add nuw nsw i64 %20, 1
  br label %L23.postloop

L72:                                              ; preds = %L61.preloop, %L23.preloop, %L61, %L23, %L67.postloop, %L61.postloop, %L23.postloop, %preloop.exit.selector, %main.exit.selector
  %value_phi24 = phi i64 [ %smin20, %main.exit.selector ], [ %smax87, %preloop.exit.selector ], [ %smax88, %L67.postloop ], [ %value_phi6, %L61 ], [ %value_phi6.postloop, %L23.postloop ], [ %value_phi6.postloop, %L61.postloop ], [ %value_phi6, %L23 ], [ %value_phi6.preloop, %L23.preloop ], [ %value_phi6.preloop, %L61.preloop ]
  %value_phi5.value_phi24 = call i64 @llvm.smax.i64(i64 %value_phi551, i64 %value_phi24), !dbg !69
  %21 = add nsw i64 %value_phi450, 1, !dbg !70
  %indvar.next = add nuw i64 %indvar, 1, !dbg !45
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !45
  %exitcond89.not = icmp eq i64 %indvar.next, %8, !dbg !44
  br i1 %exitcond89.not, label %L79, label %L23.preheader, !dbg !45

L79:                                              ; preds = %L72, %L12
  %value_phi5.lcssa = phi i64 [ 0, %L12 ], [ %value_phi5.value_phi24, %L72 ]
  %22 = icmp sgt i64 %value_phi5.lcssa, 2, !dbg !72
  %value_phi28.v = select i1 %22, i64 %value_phi5.lcssa, i64 1, !dbg !75
  %value_phi28 = add i64 %value_phi28.v, %value_phi53, !dbg !75
  %23 = zext i1 %22 to i64, !dbg !75
  %value_phi29 = add i64 %value_phi154, %23, !dbg !75
  %.not = icmp sgt i64 %value_phi28, %"data::Array.size.0.copyload", !dbg !36
  br i1 %.not, label %L88, label %L12, !dbg !37

L88:                                              ; preds = %L79, %L8.preheader
  %value_phi1.lcssa = phi i64 [ 0, %L8.preheader ], [ %value_phi29, %L79 ]
  %frame.prev170 = load ptr, ptr %frame.prev, align 8, !tbaa !20
  store ptr %frame.prev170, ptr %pgcstack, align 8, !tbaa !20
  ret i64 %value_phi1.lcssa, !dbg !76

L89:                                              ; preds = %top
  %24 = call swiftcc [1 x ptr] @j_ArgumentError_148(ptr nonnull swiftself %pgcstack, ptr nonnull @"jl_global#149.jit"), !dbg !35
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  %25 = extractvalue [1 x ptr] %24, 0, !dbg !35
  store ptr %25, ptr %gc_slot_addr_0, align 16
  %ptls_load168 = load ptr, ptr %ptls_field, align 8, !dbg !35, !tbaa !20
  %"box::ArgumentError" = call noalias nonnull align 8 dereferenceable(16) ptr @ijl_gc_small_alloc(ptr %ptls_load168, i32 424, i32 16, i64 4839720944) #9, !dbg !35
  %"box::ArgumentError.tag_addr" = getelementptr inbounds i8, ptr %"box::ArgumentError", i64 -8, !dbg !35
  store atomic i64 4839720944, ptr %"box::ArgumentError.tag_addr" unordered, align 8, !dbg !35, !tbaa !77
  store ptr %25, ptr %"box::ArgumentError", align 8, !dbg !35, !tbaa !79, !alias.scope !55, !noalias !58
  store ptr null, ptr %gc_slot_addr_0, align 16
  call void @ijl_throw(ptr nonnull %"box::ArgumentError"), !dbg !35
  unreachable, !dbg !35

L23.preloop:                                      ; preds = %L23.preheader, %L67.preloop
  %value_phi6.preloop = phi i64 [ %32, %L67.preloop ], [ 0, %L23.preheader ]
  %26 = add i64 %value_phi6.preloop, %value_phi53, !dbg !47
  %.not36.preloop.not = icmp sgt i64 %26, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.preloop.not, label %L72, label %L27.preloop, !dbg !46

L27.preloop:                                      ; preds = %L23.preloop
  %27 = add i64 %value_phi6.preloop, %value_phi450, !dbg !47
  %28 = add i64 %27, -1, !dbg !82
  %.not37.preloop = icmp ult i64 %28, %"data::Array.size.0.copyload", !dbg !82
  br i1 %.not37.preloop, label %L42.preloop, label %odessy.chk1, !dbg !82

L42.preloop:                                      ; preds = %L27.preloop
  %29 = add i64 %26, -1, !dbg !82
  %.not38.preloop = icmp ult i64 %29, %"data::Array.size.0.copyload", !dbg !82
  br i1 %.not38.preloop, label %L61.preloop, label %odessy.chk3, !dbg !82

L61.preloop:                                      ; preds = %L42.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %27, !dbg !50
  %30 = load i8, ptr %gep.preloop, align 1, !dbg !50, !tbaa !52, !alias.scope !55, !noalias !58
  %gep57.preloop = getelementptr i8, ptr %invariant.gep, i64 %26, !dbg !50
  %31 = load i8, ptr %gep57.preloop, align 1, !dbg !50, !tbaa !52, !alias.scope !55, !noalias !58
  %.not39.preloop = icmp eq i8 %30, %31, !dbg !63
  br i1 %.not39.preloop, label %L67.preloop, label %L72, !dbg !46

L67.preloop:                                      ; preds = %L61.preloop
  %32 = add nuw nsw i64 %value_phi6.preloop, 1, !dbg !66
  %exitcond.not = icmp eq i64 %smin86, %32, !dbg !68
  br i1 %exitcond.not, label %preloop.exit.selector, label %L23.preloop, !dbg !68, !llvm.loop !83, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L67.preloop
  %33 = icmp sgt i64 %11, -255, !dbg !68
  br i1 %33, label %preloop.pseudo.exit, label %L72, !dbg !68

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L23.preheader
  %value_phi6.preloop.copy = phi i64 [ 0, %L23.preheader ], [ %smax87, %preloop.exit.selector ]
  %34 = icmp sgt i64 %smin66, %value_phi6.preloop.copy
  br i1 %34, label %L23.preheader5, label %main.pseudo.exit

L23.preheader5:                                   ; preds = %preloop.pseudo.exit
  %invariant.gep12 = getelementptr i8, ptr %invariant.gep, i64 %value_phi450, !dbg !46
  br label %L23, !dbg !46

L23.postloop:                                     ; preds = %L67.postloop, %main.pseudo.exit
  %value_phi6.postloop = phi i64 [ %41, %L67.postloop ], [ %value_phi6.copy, %main.pseudo.exit ]
  %35 = add i64 %value_phi6.postloop, %value_phi53, !dbg !47
  %.not36.postloop.not = icmp sgt i64 %35, %"data::Array.size.0.copyload", !dbg !49
  br i1 %.not36.postloop.not, label %L72, label %L27.postloop, !dbg !46

L27.postloop:                                     ; preds = %L23.postloop
  %36 = add i64 %value_phi6.postloop, %value_phi450, !dbg !47
  %37 = add i64 %36, -1, !dbg !82
  %.not37.postloop = icmp ult i64 %37, %"data::Array.size.0.copyload", !dbg !82
  br i1 %.not37.postloop, label %L42.postloop, label %odessy.chk, !dbg !82

L42.postloop:                                     ; preds = %L27.postloop
  %38 = add i64 %35, -1, !dbg !82
  %.not38.postloop = icmp ult i64 %38, %"data::Array.size.0.copyload", !dbg !82
  br i1 %.not38.postloop, label %L61.postloop, label %odessy.chk2, !dbg !82

L61.postloop:                                     ; preds = %L42.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %36, !dbg !50
  %39 = load i8, ptr %gep.postloop, align 1, !dbg !50, !tbaa !52, !alias.scope !55, !noalias !58
  %gep57.postloop = getelementptr i8, ptr %invariant.gep, i64 %35, !dbg !50
  %40 = load i8, ptr %gep57.postloop, align 1, !dbg !50, !tbaa !52, !alias.scope !55, !noalias !58
  %.not39.postloop = icmp eq i8 %39, %40, !dbg !63
  br i1 %.not39.postloop, label %L67.postloop, label %L72, !dbg !46

L67.postloop:                                     ; preds = %L61.postloop
  %41 = add nuw nsw i64 %value_phi6.postloop, 1, !dbg !66
  %42 = icmp samesign ult i64 %value_phi6.postloop, 254, !dbg !88
  br i1 %42, label %L23.postloop, label %L72, !dbg !68, !llvm.loop !90, !loop_constrainer.loop.clone !10

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
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4303830812 to ptr)(i64 4303830848) #10
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !91, !noalias !92, !nonnull !10, !dereferenceable !93, !align !94
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !91, !noalias !92, !nonnull !10, !dereferenceable !94, !align !94
  %.unbox = load i64, ptr %3, align 8, !tbaa !79, !alias.scope !55, !noalias !58
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
!50 = !DILocation(line: 920, scope: !51, inlinedAt: !46)
!51 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!52 = !{!53, !53, i64 0}
!53 = !{!"jtbaa_arraybuf", !54, i64 0}
!54 = !{!"jtbaa_data", !22, i64 0}
!55 = !{!56}
!56 = !{!"jnoalias_data", !57}
!57 = !{!"jnoalias"}
!58 = !{!59, !60, !61, !62}
!59 = !{!"jnoalias_gcframe", !57}
!60 = !{!"jnoalias_stack", !57}
!61 = !{!"jnoalias_typemd", !57}
!62 = !{!"jnoalias_const", !57}
!63 = !DILocation(line: 637, scope: !64, inlinedAt: !46)
!64 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !65, file: !65, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!65 = !DIFile(filename: "promotion.jl", directory: ".")
!66 = !DILocation(line: 87, scope: !48, inlinedAt: !67)
!67 = !DILocation(line: 19, scope: !4)
!68 = !DILocation(line: 20, scope: !4)
!69 = !DILocation(line: 22, scope: !4)
!70 = !DILocation(line: 87, scope: !48, inlinedAt: !71)
!71 = !DILocation(line: 25, scope: !4)
!72 = !DILocation(line: 520, scope: !33, inlinedAt: !73)
!73 = !DILocation(line: 472, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !42, file: !42, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!75 = !DILocation(line: 27, scope: !4)
!76 = !DILocation(line: 34, scope: !4)
!77 = !{!78, !78, i64 0}
!78 = !{!"jtbaa_tag", !54, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"jtbaa_immut", !81, i64 0}
!81 = !{!"jtbaa_value", !54, i64 0}
!82 = !DILocation(line: 919, scope: !51, inlinedAt: !46)
!83 = distinct !{!83, !84, !85, !86, !87}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!"llvm.loop.vectorize.enable", i1 false}
!86 = !{!"llvm.loop.licm_versioning.disable"}
!87 = !{!"llvm.loop.distribute.enable", i1 false}
!88 = !DILocation(line: 520, scope: !33, inlinedAt: !89)
!89 = !DILocation(line: 472, scope: !74, inlinedAt: !68)
!90 = distinct !{!90, !84, !85, !86, !87}
!91 = !{!62}
!92 = !{!59, !60, !56, !61}
!93 = !{i64 24}
!94 = !{i64 8}
