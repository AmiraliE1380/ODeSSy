; ModuleID = 'logs/julia_triage/lz77.ll'
source_filename = "lz77_scan"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

define swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"data::Array", i64 signext %"window::Int64") #0 !dbg !4 {
top:
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple25" = alloca [1 x i64], align 8
    #dbg_declare(ptr %"data::Array", !18, !DIExpression(), !20)
    #dbg_value(i64 %"window::Int64", !19, !DIExpression(), !20)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !21
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !20
  fence syncscope("singlethread") seq_cst
  %"data::Array.size_ptr" = getelementptr inbounds i8, ptr %"data::Array", i64 16, !dbg !27
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8, !dbg !27
  %.not48 = icmp slt i64 %"data::Array.size.0.copyload", 2, !dbg !32
  br i1 %.not48, label %L84, label %L8.lr.ph, !dbg !35

L8.lr.ph:                                         ; preds = %top
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -1
  %2 = add nsw i64 %"data::Array.size.0.copyload", -9223372036854775807, !dbg !35
  br label %L8, !dbg !35

L8:                                               ; preds = %L75, %L8.lr.ph
  %value_phi150 = phi i64 [ 0, %L8.lr.ph ], [ %value_phi28, %L75 ]
  %value_phi49 = phi i64 [ 2, %L8.lr.ph ], [ %value_phi27, %L75 ]
  %.not30 = icmp sgt i64 %value_phi49, %"window::Int64", !dbg !36
  %3 = sub i64 %value_phi49, %"window::Int64", !dbg !41
  %value_phi2 = select i1 %.not30, i64 %3, i64 1, !dbg !41
  %.not3145 = icmp slt i64 %value_phi2, %value_phi49, !dbg !42
  br i1 %.not3145, label %L19.preheader.lr.ph, label %L75, !dbg !43

L19.preheader.lr.ph:                              ; preds = %L8
  %4 = add i64 %value_phi2, -1, !dbg !43
  %5 = add nsw i64 %value_phi49, -1, !dbg !43
  %smax55 = call i64 @llvm.smax.i64(i64 %5, i64 -9223372036854775807), !dbg !43
  %smax60 = call i64 @llvm.smax.i64(i64 %5, i64 %2), !dbg !43
  %6 = sub i64 %"data::Array.size.0.copyload", %smax60, !dbg !43
  %umax = call i64 @llvm.umax.i64(i64 %"data::Array.size.0.copyload", i64 %5), !dbg !43
  %7 = add i64 %umax, 1, !dbg !43
  %8 = sub i64 %value_phi49, %value_phi2, !dbg !43
  br label %L19.preheader, !dbg !43

L19.preheader:                                    ; preds = %L68, %L19.preheader.lr.ph
  %indvars.iv = phi i64 [ %4, %L19.preheader.lr.ph ], [ %indvars.iv.next, %L68 ]
  %indvar = phi i64 [ 0, %L19.preheader.lr.ph ], [ %indvar.next, %L68 ]
  %value_phi447 = phi i64 [ 0, %L19.preheader.lr.ph ], [ %value_phi4.value_phi23, %L68 ]
  %value_phi346 = phi i64 [ %value_phi2, %L19.preheader.lr.ph ], [ %21, %L68 ]
  %smax80 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 -9223372036854775807), !dbg !44
  %9 = call i64 @llvm.smin.i64(i64 %smax80, i64 %smax55), !dbg !44
  %smax81 = sub nsw i64 0, %9, !dbg !44
  %smin82 = call i64 @llvm.smin.i64(i64 %smax81, i64 255), !dbg !44
  %smax83 = call i64 @llvm.smax.i64(i64 %smin82, i64 0), !dbg !44
  %10 = add i64 %4, %indvar, !dbg !44
  %smax54 = call i64 @llvm.smax.i64(i64 %10, i64 -9223372036854775807), !dbg !44
  %11 = call i64 @llvm.smin.i64(i64 %smax54, i64 %smax55), !dbg !44
  %smax59 = call i64 @llvm.smax.i64(i64 %10, i64 %2), !dbg !44
  %12 = sub i64 %"data::Array.size.0.copyload", %smax59, !dbg !44
  %smin61 = call i64 @llvm.smin.i64(i64 %12, i64 %6), !dbg !44
  %smin62 = call i64 @llvm.smin.i64(i64 %smin61, i64 255), !dbg !44
  %.not103 = icmp sgt i64 %11, -1, !dbg !44
  br i1 %.not103, label %preloop.pseudo.exit, label %L19.preloop, !dbg !44

L19:                                              ; preds = %preloop.pseudo.exit, %L63
  %value_phi5 = phi i64 [ %17, %L63 ], [ %value_phi5.preloop.copy, %preloop.pseudo.exit ]
  %13 = add i64 %value_phi5, %value_phi49, !dbg !45
  %.not32.not = icmp sgt i64 %13, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.not, label %L68, label %L57, !dbg !44

L35:                                              ; No predecessors!
  store i64 %25, ptr %"new::Tuple25", align 8, !dbg !48, !tbaa !50, !alias.scope !52, !noalias !55
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple25") #10, !dbg !48
  unreachable, !dbg !48

L54:                                              ; No predecessors!
  store i64 %7, ptr %"new::Tuple", align 8, !dbg !48, !tbaa !50, !alias.scope !52, !noalias !55
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"data::Array", ptr nonnull readonly captures(none) %"new::Tuple") #10, !dbg !48
  unreachable, !dbg !48

L57:                                              ; preds = %L19
  %14 = getelementptr i8, ptr %invariant.gep, i64 %value_phi5, !dbg !60
  %gep = getelementptr i8, ptr %14, i64 %value_phi346, !dbg !60
  %15 = load i8, ptr %gep, align 1, !dbg !60, !tbaa !61, !alias.scope !64, !noalias !65
  %gep53 = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !60
  %16 = load i8, ptr %gep53, align 1, !dbg !60, !tbaa !61, !alias.scope !64, !noalias !65
  %.not35 = icmp eq i8 %15, %16, !dbg !66
  br i1 %.not35, label %L63, label %L68, !dbg !44

L63:                                              ; preds = %L57
  %17 = add nuw nsw i64 %value_phi5, 1, !dbg !69
  %18 = icmp sgt i64 %smin62, %17, !dbg !71
  br i1 %18, label %L19, label %main.exit.selector, !dbg !71

main.exit.selector:                               ; preds = %L63
  %19 = icmp ult i64 %value_phi5, 254, !dbg !71
  br i1 %19, label %main.pseudo.exit, label %L68, !dbg !71

main.pseudo.exit:                                 ; preds = %preloop.pseudo.exit, %main.exit.selector
  %value_phi5.copy = phi i64 [ %value_phi5.preloop.copy, %preloop.pseudo.exit ], [ %17, %main.exit.selector ]
  %20 = call i64 @llvm.smax.i64(i64 %value_phi5.copy, i64 254)
  %smax84 = add nuw nsw i64 %20, 1
  br label %L19.postloop

L68:                                              ; preds = %L63.postloop, %L57.postloop, %L19.postloop, %preloop.exit.selector, %L57.preloop, %L19.preloop, %main.exit.selector, %L57, %L19
  %value_phi23 = phi i64 [ %17, %main.exit.selector ], [ %smax83, %preloop.exit.selector ], [ %smax84, %L63.postloop ], [ %value_phi5.postloop, %L57.postloop ], [ %value_phi5.postloop, %L19.postloop ], [ %value_phi5, %L57 ], [ %value_phi5, %L19 ], [ %value_phi5.preloop, %L57.preloop ], [ %value_phi5.preloop, %L19.preloop ]
  %value_phi4.value_phi23 = call i64 @llvm.smax.i64(i64 %value_phi447, i64 %value_phi23), !dbg !72
  %21 = add nsw i64 %value_phi346, 1, !dbg !73
  %indvar.next = add i64 %indvar, 1, !dbg !43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !43
  %exitcond85.not = icmp eq i64 %indvar.next, %8, !dbg !42
  br i1 %exitcond85.not, label %L75, label %L19.preheader, !dbg !43

L75:                                              ; preds = %L68, %L8
  %value_phi4.lcssa = phi i64 [ 0, %L8 ], [ %value_phi4.value_phi23, %L68 ]
  %22 = icmp sgt i64 %value_phi4.lcssa, 2, !dbg !75
  %value_phi27.v = select i1 %22, i64 %value_phi4.lcssa, i64 1, !dbg !78
  %value_phi27 = add i64 %value_phi27.v, %value_phi49, !dbg !78
  %23 = zext i1 %22 to i64, !dbg !78
  %value_phi28 = add i64 %value_phi150, %23, !dbg !78
  %.not = icmp sgt i64 %value_phi27, %"data::Array.size.0.copyload", !dbg !32
  br i1 %.not, label %L84, label %L8, !dbg !35

L84:                                              ; preds = %L75, %top
  %value_phi1.lcssa = phi i64 [ 0, %top ], [ %value_phi28, %L75 ]
  ret i64 %value_phi1.lcssa, !dbg !79

L19.preloop:                                      ; preds = %L63.preloop, %L19.preheader
  %value_phi5.preloop = phi i64 [ %30, %L63.preloop ], [ 0, %L19.preheader ]
  %24 = add i64 %value_phi5.preloop, %value_phi49, !dbg !45
  %.not32.preloop.not = icmp sgt i64 %24, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.preloop.not, label %L68, label %L23.preloop, !dbg !44

L23.preloop:                                      ; preds = %L19.preloop
  %25 = add i64 %value_phi5.preloop, %value_phi346, !dbg !45
  %26 = add i64 %25, -1, !dbg !48
  %.not33.preloop = icmp ult i64 %26, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.preloop, label %L38.preloop, label %odessy.chk1, !dbg !48

L38.preloop:                                      ; preds = %L23.preloop
  %27 = add i64 %24, -1, !dbg !48
  %.not34.preloop = icmp ult i64 %27, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.preloop, label %L57.preloop, label %odessy.chk3, !dbg !48

L57.preloop:                                      ; preds = %L38.preloop
  %gep.preloop = getelementptr i8, ptr %invariant.gep, i64 %25, !dbg !60
  %28 = load i8, ptr %gep.preloop, align 1, !dbg !60, !tbaa !61, !alias.scope !64, !noalias !65
  %gep53.preloop = getelementptr i8, ptr %invariant.gep, i64 %24, !dbg !60
  %29 = load i8, ptr %gep53.preloop, align 1, !dbg !60, !tbaa !61, !alias.scope !64, !noalias !65
  %.not35.preloop = icmp eq i8 %28, %29, !dbg !66
  br i1 %.not35.preloop, label %L63.preloop, label %L68, !dbg !44

L63.preloop:                                      ; preds = %L57.preloop
  %30 = add nuw nsw i64 %value_phi5.preloop, 1, !dbg !69
  %exitcond.not = icmp eq i64 %smin82, %30, !dbg !71
  br i1 %exitcond.not, label %preloop.exit.selector, label %L19.preloop, !dbg !71, !llvm.loop !80, !loop_constrainer.loop.clone !10

preloop.exit.selector:                            ; preds = %L63.preloop
  %31 = icmp sgt i64 %9, -255, !dbg !71
  br i1 %31, label %preloop.pseudo.exit, label %L68, !dbg !71

preloop.pseudo.exit:                              ; preds = %preloop.exit.selector, %L19.preheader
  %value_phi5.preloop.copy = phi i64 [ 0, %L19.preheader ], [ %smax83, %preloop.exit.selector ]
  %32 = icmp sgt i64 %smin62, %value_phi5.preloop.copy
  br i1 %32, label %L19, label %main.pseudo.exit

L19.postloop:                                     ; preds = %L63.postloop, %main.pseudo.exit
  %value_phi5.postloop = phi i64 [ %39, %L63.postloop ], [ %value_phi5.copy, %main.pseudo.exit ]
  %33 = add i64 %value_phi5.postloop, %value_phi49, !dbg !45
  %.not32.postloop.not = icmp sgt i64 %33, %"data::Array.size.0.copyload", !dbg !47
  br i1 %.not32.postloop.not, label %L68, label %L23.postloop, !dbg !44

L23.postloop:                                     ; preds = %L19.postloop
  %34 = add i64 %value_phi5.postloop, %value_phi346, !dbg !45
  %35 = add i64 %34, -1, !dbg !48
  %.not33.postloop = icmp ult i64 %35, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not33.postloop, label %L38.postloop, label %odessy.chk, !dbg !48

L38.postloop:                                     ; preds = %L23.postloop
  %36 = add i64 %33, -1, !dbg !48
  %.not34.postloop = icmp ult i64 %36, %"data::Array.size.0.copyload", !dbg !48
  br i1 %.not34.postloop, label %L57.postloop, label %odessy.chk2, !dbg !48

L57.postloop:                                     ; preds = %L38.postloop
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %34, !dbg !60
  %37 = load i8, ptr %gep.postloop, align 1, !dbg !60, !tbaa !61, !alias.scope !64, !noalias !65
  %gep53.postloop = getelementptr i8, ptr %invariant.gep, i64 %33, !dbg !60
  %38 = load i8, ptr %gep53.postloop, align 1, !dbg !60, !tbaa !61, !alias.scope !64, !noalias !65
  %.not35.postloop = icmp eq i8 %37, %38, !dbg !66
  br i1 %.not35.postloop, label %L63.postloop, label %L68, !dbg !44

L63.postloop:                                     ; preds = %L57.postloop
  %39 = add nuw nsw i64 %value_phi5.postloop, 1, !dbg !69
  %40 = icmp ult i64 %value_phi5.postloop, 254, !dbg !85
  br i1 %40, label %L19.postloop, label %L68, !dbg !71, !llvm.loop !87, !loop_constrainer.loop.clone !10

odessy.chk:                                       ; preds = %L23.postloop
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L23.preloop
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L38.postloop
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %L38.preloop
  call void @odessy.chk(i32 3)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_lz77_scan_146(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4369448732 to ptr)(i64 4369448768) #11
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !25, !invariant.load !10, !alias.scope !88, !noalias !89, !nonnull !10, !dereferenceable !90, !align !91
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !25, !invariant.load !10, !alias.scope !88, !noalias !89, !nonnull !10, !dereferenceable !91, !align !91
  %.unbox = load i64, ptr %3, align 8, !tbaa !92, !alias.scope !64, !noalias !65
  %4 = call swiftcc i64 @julia_lz77_scan_145(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_Int64 = call nonnull align 8 dereferenceable(8) ptr @ijl_box_int64(i64 signext %4) #12
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #7

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #3

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #8

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #8

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #9

attributes #0 = { "julia.fsig"="lz77_scan(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "julia.fsig"="throw_boundserror(Array{UInt8, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "lz77_scan", linkageName: "julia_lz77_scan_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/lz77.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !8}
!8 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#lz77_scan", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4640158160")
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
!20 = !DILocation(line: 7, scope: !4)
!21 = !{!22, !22, i64 0}
!22 = !{!"jtbaa_gcframe", !23, i64 0}
!23 = !{!"jtbaa", !24, i64 0}
!24 = !{!"jtbaa"}
!25 = !{!26, !26, i64 0}
!26 = !{!"jtbaa_const", !23, i64 0}
!27 = !DILocation(line: 11, scope: !28, inlinedAt: !31)
!28 = distinct !DISubprogram(name: "length;", linkageName: "length", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!29 = !DIFile(filename: "essentials.jl", directory: ".")
!30 = !DISubroutineType(types: !10)
!31 = !DILocation(line: 8, scope: !4)
!32 = !DILocation(line: 520, scope: !33, inlinedAt: !35)
!33 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DIFile(filename: "int.jl", directory: ".")
!35 = !DILocation(line: 11, scope: !4)
!36 = !DILocation(line: 83, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DILocation(line: 425, scope: !39, inlinedAt: !41)
!39 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !40, file: !40, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!40 = !DIFile(filename: "operators.jl", directory: ".")
!41 = !DILocation(line: 12, scope: !4)
!42 = !DILocation(line: 83, scope: !37, inlinedAt: !43)
!43 = !DILocation(line: 15, scope: !4)
!44 = !DILocation(line: 17, scope: !4)
!45 = !DILocation(line: 87, scope: !46, inlinedAt: !44)
!46 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !34, file: !34, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!47 = !DILocation(line: 520, scope: !33, inlinedAt: !44)
!48 = !DILocation(line: 919, scope: !49, inlinedAt: !44)
!49 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !29, file: !29, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!50 = !{!51, !51, i64 0}
!51 = !{!"jtbaa_stack", !23, i64 0}
!52 = !{!53}
!53 = !{!"jnoalias_stack", !54}
!54 = !{!"jnoalias"}
!55 = !{!56, !57, !58, !59}
!56 = !{!"jnoalias_gcframe", !54}
!57 = !{!"jnoalias_data", !54}
!58 = !{!"jnoalias_typemd", !54}
!59 = !{!"jnoalias_const", !54}
!60 = !DILocation(line: 920, scope: !49, inlinedAt: !44)
!61 = !{!62, !62, i64 0}
!62 = !{!"jtbaa_arraybuf", !63, i64 0}
!63 = !{!"jtbaa_data", !23, i64 0}
!64 = !{!57}
!65 = !{!56, !53, !58, !59}
!66 = !DILocation(line: 637, scope: !67, inlinedAt: !44)
!67 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !68, file: !68, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!68 = !DIFile(filename: "promotion.jl", directory: ".")
!69 = !DILocation(line: 87, scope: !46, inlinedAt: !70)
!70 = !DILocation(line: 18, scope: !4)
!71 = !DILocation(line: 19, scope: !4)
!72 = !DILocation(line: 21, scope: !4)
!73 = !DILocation(line: 87, scope: !46, inlinedAt: !74)
!74 = !DILocation(line: 24, scope: !4)
!75 = !DILocation(line: 520, scope: !33, inlinedAt: !76)
!76 = !DILocation(line: 472, scope: !77, inlinedAt: !78)
!77 = distinct !DISubprogram(name: ">=;", linkageName: ">=", scope: !40, file: !40, type: !30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!78 = !DILocation(line: 26, scope: !4)
!79 = !DILocation(line: 33, scope: !4)
!80 = distinct !{!80, !81, !82, !83, !84}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"llvm.loop.vectorize.enable", i1 false}
!83 = !{!"llvm.loop.licm_versioning.disable"}
!84 = !{!"llvm.loop.distribute.enable", i1 false}
!85 = !DILocation(line: 520, scope: !33, inlinedAt: !86)
!86 = !DILocation(line: 472, scope: !77, inlinedAt: !71)
!87 = distinct !{!87, !81, !82, !83, !84}
!88 = !{!59}
!89 = !{!56, !53, !57, !58}
!90 = !{i64 24}
!91 = !{i64 8}
!92 = !{!93, !93, i64 0}
!93 = !{!"jtbaa_immut", !94, i64 0}
!94 = !{!"jtbaa_value", !63, i64 0}
