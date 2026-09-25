; ModuleID = 'logs/julia_triage/jl_poly.ll'
source_filename = "poly!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.5.0"

define swiftcc nonnull ptr @"julia_poly!_145"(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"a::Array", double %"c1::Float64", double %"c2::Float64", double %"c3::Float64", i64 signext %"iters::Int64") #0 !dbg !4 {
top:
  %"new::Tuple31" = alloca [1 x i64], align 8
    #dbg_declare(ptr %"a::Array", !19, !DIExpression(), !24)
    #dbg_value(double %"c1::Float64", !20, !DIExpression(), !24)
    #dbg_value(double %"c2::Float64", !21, !DIExpression(), !24)
    #dbg_value(double %"c3::Float64", !22, !DIExpression(), !24)
    #dbg_value(i64 %"iters::Int64", !23, !DIExpression(), !24)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !25
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !29, !invariant.load !14
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !24
  fence syncscope("singlethread") seq_cst
  %".iters::Int64" = call i64 @llvm.smax.i64(i64 %"iters::Int64", i64 0), !dbg !31
  %2 = icmp slt i64 %"iters::Int64", 1, !dbg !32
  br i1 %2, label %L100, label %L16.preheader, !dbg !44

L16.preheader:                                    ; preds = %top
  %"a::Array.size_ptr" = getelementptr inbounds i8, ptr %"a::Array", i64 16
  %3 = load i64, ptr %"a::Array.size_ptr", align 8
  %value_phi4 = call i64 @llvm.smax.i64(i64 %3, i64 0)
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %L100, label %L16.preheader.split, !dbg !45

L16.preheader.split:                              ; preds = %L16.preheader
  %5 = add nuw i64 %3, 1, !dbg !45
  %6 = add nsw i64 %value_phi4, -1, !dbg !45
  %umin = call i64 @llvm.umin.i64(i64 %3, i64 %6), !dbg !45
  %7 = add nuw i64 %umin, 1, !dbg !45
  br label %L16, !dbg !45

L16:                                              ; preds = %L90.loopexit, %L16.preheader.split
  %value_phi3 = phi i64 [ %41, %L90.loopexit ], [ 1, %L16.preheader.split ]
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !46
  %min.iters.check = icmp ult i64 %umin, 8, !dbg !46
  br i1 %min.iters.check, label %scalar.ph, label %vector.scevcheck, !dbg !46

vector.scevcheck:                                 ; preds = %L16
  %mul.result = shl i64 %umin, 3, !dbg !46
  %mul.overflow = icmp ugt i64 %umin, 2305843009213693951, !dbg !46
  %8 = getelementptr i8, ptr %memoryref_data, i64 %mul.result, !dbg !46
  %9 = icmp ult ptr %8, %memoryref_data, !dbg !46
  %10 = or i1 %9, %mul.overflow, !dbg !46
  br i1 %10, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %7, 7, !dbg !46
  %11 = icmp eq i64 %n.mod.vf, 0, !dbg !46
  %12 = select i1 %11, i64 8, i64 %n.mod.vf, !dbg !46
  %n.vec = sub i64 %7, %12, !dbg !46
  %ind.end = add i64 %n.vec, 1, !dbg !46
  %broadcast.splatinsert = insertelement <2 x double> poison, double %"c3::Float64", i64 0, !dbg !46
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !46
  %broadcast.splatinsert47 = insertelement <2 x double> poison, double %"c2::Float64", i64 0, !dbg !46
  %broadcast.splat48 = shufflevector <2 x double> %broadcast.splatinsert47, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !46
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %"c1::Float64", i64 0, !dbg !46
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !46
  br label %vector.body, !dbg !46

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 3, !dbg !50
  %13 = or disjoint i64 %offset.idx, 8, !dbg !50
  %14 = getelementptr i8, ptr %invariant.gep, i64 %13, !dbg !50
  %15 = getelementptr double, ptr %14, i64 2, !dbg !50
  %16 = getelementptr double, ptr %14, i64 4, !dbg !50
  %17 = getelementptr double, ptr %14, i64 6, !dbg !50
  %wide.load = load <2 x double>, ptr %14, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %wide.load44 = load <2 x double>, ptr %15, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %wide.load45 = load <2 x double>, ptr %16, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %wide.load46 = load <2 x double>, ptr %17, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %18 = fmul <2 x double> %wide.load, %broadcast.splat, !dbg !62
  %19 = fmul <2 x double> %wide.load44, %broadcast.splat, !dbg !62
  %20 = fmul <2 x double> %wide.load45, %broadcast.splat, !dbg !62
  %21 = fmul <2 x double> %wide.load46, %broadcast.splat, !dbg !62
  %22 = fadd <2 x double> %18, %broadcast.splat48, !dbg !66
  %23 = fadd <2 x double> %19, %broadcast.splat48, !dbg !66
  %24 = fadd <2 x double> %20, %broadcast.splat48, !dbg !66
  %25 = fadd <2 x double> %21, %broadcast.splat48, !dbg !66
  %26 = fmul <2 x double> %wide.load, %22, !dbg !62
  %27 = fmul <2 x double> %wide.load44, %23, !dbg !62
  %28 = fmul <2 x double> %wide.load45, %24, !dbg !62
  %29 = fmul <2 x double> %wide.load46, %25, !dbg !62
  %30 = fadd <2 x double> %26, %broadcast.splat50, !dbg !66
  %31 = fadd <2 x double> %27, %broadcast.splat50, !dbg !66
  %32 = fadd <2 x double> %28, %broadcast.splat50, !dbg !66
  %33 = fadd <2 x double> %29, %broadcast.splat50, !dbg !66
  store <2 x double> %30, ptr %14, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  store <2 x double> %31, ptr %15, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  store <2 x double> %32, ptr %16, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  store <2 x double> %33, ptr %17, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  %index.next = add nuw i64 %index, 8
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %scalar.ph, label %vector.body, !llvm.loop !73

scalar.ph:                                        ; preds = %vector.body, %vector.scevcheck, %L16
  %bc.resume.val = phi i64 [ 1, %L16 ], [ 1, %vector.scevcheck ], [ %ind.end, %vector.body ]
  br label %L36, !dbg !46

L36:                                              ; preds = %L74, %scalar.ph
  %value_phi8 = phi i64 [ %40, %L74 ], [ %bc.resume.val, %scalar.ph ]
  %exitcond.not = icmp eq i64 %value_phi8, %5, !dbg !46
  br i1 %exitcond.not, label %odessy.chk, label %L74, !dbg !46

L49:                                              ; No predecessors!
  store i64 %5, ptr %"new::Tuple31", align 8, !dbg !46, !tbaa !76, !alias.scope !78, !noalias !79
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"a::Array", ptr nonnull readonly captures(none) %"new::Tuple31") #9, !dbg !46
  unreachable, !dbg !46

L74:                                              ; preds = %L36
  %memoryref_offset = shl i64 %value_phi8, 3, !dbg !50
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !50
  %35 = load double, ptr %gep, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %36 = fmul double %35, %"c3::Float64", !dbg !62
  %37 = fadd double %36, %"c2::Float64", !dbg !66
  %38 = fmul double %35, %37, !dbg !62
  %39 = fadd double %38, %"c1::Float64", !dbg !66
  store double %39, ptr %gep, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  %.not39.not = icmp eq i64 %value_phi8, %value_phi4, !dbg !80
  %40 = add nuw i64 %value_phi8, 1, !dbg !83
  br i1 %.not39.not, label %L90.loopexit, label %L36, !dbg !84, !llvm.loop !85

L90.loopexit:                                     ; preds = %L74
  %.not40.not = icmp eq i64 %value_phi3, %".iters::Int64", !dbg !86
  %41 = add nuw i64 %value_phi3, 1, !dbg !87
  br i1 %.not40.not, label %L100, label %L16, !dbg !88

L100:                                             ; preds = %L90.loopexit, %L16.preheader, %top
  ret ptr %"a::Array", !dbg !89

odessy.chk:                                       ; preds = %L36
  call void @odessy.chk(i32 0)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_poly!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4339269404 to ptr)(i64 4339269440) #10
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !29, !invariant.load !14, !alias.scope !90, !noalias !91, !nonnull !14, !dereferenceable !92, !align !93
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !29, !invariant.load !14, !alias.scope !90, !noalias !91, !nonnull !14, !dereferenceable !93, !align !93
  %4 = getelementptr inbounds i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !29, !invariant.load !14, !alias.scope !90, !noalias !91, !nonnull !14, !dereferenceable !93, !align !93
  %6 = getelementptr inbounds i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !29, !invariant.load !14, !alias.scope !90, !noalias !91, !nonnull !14, !dereferenceable !93, !align !93
  %8 = getelementptr inbounds i8, ptr %"args::Any[]", i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !29, !invariant.load !14, !alias.scope !90, !noalias !91, !nonnull !14, !dereferenceable !93, !align !93
  %.unbox = load double, ptr %3, align 8, !tbaa !94, !alias.scope !54, !noalias !57
  %.unbox1 = load double, ptr %5, align 8, !tbaa !94, !alias.scope !54, !noalias !57
  %.unbox2 = load double, ptr %7, align 8, !tbaa !94, !alias.scope !54, !noalias !57
  %.unbox3 = load i64, ptr %9, align 8, !tbaa !94, !alias.scope !54, !noalias !57
  %10 = call swiftcc nonnull ptr @"julia_poly!_145"(ptr nonnull swiftself %pgcstack, ptr %1, double %.unbox, double %.unbox1, double %.unbox2, i64 signext %.unbox3)
  %11 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %12 = load ptr, ptr %11, align 8
  ret ptr %12
}

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #3

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #6

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #2

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #7

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #7

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #8

attributes #0 = { "julia.fsig"="poly!(Array{Float64, 1}, Float64, Float64, Float64, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn "julia.fsig"="throw_boundserror(Array{Float64, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #7 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "poly!", linkageName: "julia_poly!_145", scope: null, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/jl_poly.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !13, !8, !15, !15, !15, !16}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !11, line: 71, align: 64, elements: !12)
!11 = !DIFile(filename: "julia.h", directory: "")
!12 = !{!9}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#poly!", align: 8, elements: !14, runtimeLang: DW_LANG_Julia, identifier: "4612715088")
!14 = !{}
!15 = !DIBasicType(name: "Float64", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 7, type: !13)
!19 = !DILocalVariable(name: "a", arg: 2, scope: !4, file: !5, line: 7, type: !8)
!20 = !DILocalVariable(name: "c1", arg: 3, scope: !4, file: !5, line: 7, type: !15)
!21 = !DILocalVariable(name: "c2", arg: 4, scope: !4, file: !5, line: 7, type: !15)
!22 = !DILocalVariable(name: "c3", arg: 5, scope: !4, file: !5, line: 7, type: !15)
!23 = !DILocalVariable(name: "iters", arg: 6, scope: !4, file: !5, line: 7, type: !16)
!24 = !DILocation(line: 7, scope: !4)
!25 = !{!26, !26, i64 0}
!26 = !{!"jtbaa_gcframe", !27, i64 0}
!27 = !{!"jtbaa", !28, i64 0}
!28 = !{!"jtbaa"}
!29 = !{!30, !30, i64 0}
!30 = !{!"jtbaa_const", !27, i64 0}
!31 = !DILocation(line: 0, scope: !4)
!32 = !DILocation(line: 83, scope: !33, inlinedAt: !36)
!33 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !34, file: !34, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DIFile(filename: "int.jl", directory: ".")
!35 = !DISubroutineType(types: !14)
!36 = !DILocation(line: 425, scope: !37, inlinedAt: !39)
!37 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !38, file: !38, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DIFile(filename: "operators.jl", directory: ".")
!39 = !DILocation(line: 688, scope: !40, inlinedAt: !42)
!40 = distinct !DISubprogram(name: "isempty;", linkageName: "isempty", scope: !41, file: !41, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DIFile(filename: "range.jl", directory: ".")
!42 = !DILocation(line: 917, scope: !43, inlinedAt: !44)
!43 = distinct !DISubprogram(name: "iterate;", linkageName: "iterate", scope: !41, file: !41, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!44 = !DILocation(line: 9, scope: !4)
!45 = !DILocation(line: 10, scope: !4)
!46 = !DILocation(line: 919, scope: !47, inlinedAt: !49)
!47 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !48, file: !48, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!48 = !DIFile(filename: "essentials.jl", directory: ".")
!49 = !DILocation(line: 11, scope: !4)
!50 = !DILocation(line: 920, scope: !47, inlinedAt: !49)
!51 = !{!52, !52, i64 0}
!52 = !{!"jtbaa_arraybuf", !53, i64 0}
!53 = !{!"jtbaa_data", !27, i64 0}
!54 = !{!55}
!55 = !{!"jnoalias_data", !56}
!56 = !{!"jnoalias"}
!57 = !{!58, !59, !60, !61}
!58 = !{!"jnoalias_gcframe", !56}
!59 = !{!"jnoalias_stack", !56}
!60 = !{!"jnoalias_typemd", !56}
!61 = !{!"jnoalias_const", !56}
!62 = !DILocation(line: 497, scope: !63, inlinedAt: !65)
!63 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !64, file: !64, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!64 = !DIFile(filename: "float.jl", directory: ".")
!65 = !DILocation(line: 12, scope: !4)
!66 = !DILocation(line: 495, scope: !67, inlinedAt: !65)
!67 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !64, file: !64, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!68 = !DILocation(line: 991, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !70, file: !70, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!70 = !DIFile(filename: "array.jl", directory: ".")
!71 = !DILocation(line: 986, scope: !72, inlinedAt: !65)
!72 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !70, file: !70, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!77, !77, i64 0}
!77 = !{!"jtbaa_stack", !27, i64 0}
!78 = !{!59}
!79 = !{!58, !55, !60, !61}
!80 = !DILocation(line: 637, scope: !81, inlinedAt: !83)
!81 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !82, file: !82, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!82 = !DIFile(filename: "promotion.jl", directory: ".")
!83 = !DILocation(line: 921, scope: !43, inlinedAt: !84)
!84 = !DILocation(line: 13, scope: !4)
!85 = distinct !{!85, !74}
!86 = !DILocation(line: 637, scope: !81, inlinedAt: !87)
!87 = !DILocation(line: 921, scope: !43, inlinedAt: !88)
!88 = !DILocation(line: 14, scope: !4)
!89 = !DILocation(line: 15, scope: !4)
!90 = !{!61}
!91 = !{!58, !59, !55, !60}
!92 = !{i64 24}
!93 = !{i64 8}
!94 = !{!95, !95, i64 0}
!95 = !{!"jtbaa_immut", !96, i64 0}
!96 = !{!"jtbaa_value", !53, i64 0}
