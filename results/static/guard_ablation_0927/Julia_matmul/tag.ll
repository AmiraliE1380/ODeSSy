; ModuleID = 'results/static/guard_ablation_0927/ir/julia/matmul.ll'
source_filename = "matmul!"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %pgcstack, ptr noundef nonnull align 8 dereferenceable(24) %"c::Array", ptr noundef nonnull align 8 dereferenceable(24) %"a::Array", ptr noundef nonnull align 8 dereferenceable(24) %"b::Array", i64 signext %"n::Int64") #0 !dbg !4 {
top:
  %"new::Tuple" = alloca [1 x i64], align 8
  %"new::Tuple15" = alloca [1 x i64], align 8
  %"new::Tuple27" = alloca [1 x i64], align 8
    #dbg_declare(ptr %"c::Array", !18, !DIExpression(), !22)
    #dbg_declare(ptr %"a::Array", !19, !DIExpression(), !22)
    #dbg_declare(ptr %"b::Array", !20, !DIExpression(), !22)
    #dbg_value(i64 %"n::Int64", !21, !DIExpression(), !22)
  %ptls_field = getelementptr inbounds i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !23
  %0 = getelementptr inbounds i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !22
  fence syncscope("singlethread") seq_cst
  %.not44 = icmp slt i64 %"n::Int64", 1, !dbg !29
  br i1 %.not44, label %L86, label %L6.preheader.lr.ph.split.split, !dbg !33

L6.preheader.lr.ph.split.split:                   ; preds = %top
  %"a::Array.size_ptr" = getelementptr inbounds i8, ptr %"a::Array", i64 16
  %"b::Array.size_ptr" = getelementptr inbounds i8, ptr %"b::Array", i64 16
  %"c::Array.size_ptr" = getelementptr inbounds i8, ptr %"c::Array", i64 16
  br label %L6.preheader, !dbg !33

L6.preheader:                                     ; preds = %L6.L84_crit_edge.split, %L6.preheader.lr.ph.split.split
  %value_phi45 = phi i64 [ 1, %L6.preheader.lr.ph.split.split ], [ %18, %L6.L84_crit_edge.split ]
  %2 = add i64 %value_phi45, -1
  %3 = mul i64 %2, %"n::Int64"
  %"a::Array.size.0.copyload" = load i64, ptr %"a::Array.size_ptr", align 8
  %"c::Array.size.0.copyload" = load i64, ptr %"c::Array.size_ptr", align 8
  %memoryref_data18 = load ptr, ptr %"c::Array", align 8
  %invariant.gep48 = getelementptr i8, ptr %memoryref_data18, i64 -8, !dbg !34
  br label %L10.preheader, !dbg !34

L10.preheader:                                    ; preds = %L77, %L6.preheader
  %value_phi143 = phi i64 [ 1, %L6.preheader ], [ %17, %L77 ]
  %"b::Array.size.0.copyload" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !35
  %memoryref_data6 = load ptr, ptr %"b::Array", align 8
  %invariant.gep46 = getelementptr i8, ptr %memoryref_data6, i64 -8, !dbg !35
  br label %L14, !dbg !35

L14:                                              ; preds = %L52, %L10.preheader
  %value_phi341 = phi i64 [ 0, %L10.preheader ], [ %13, %L52 ]
  %value_phi240 = phi i64 [ 1, %L10.preheader ], [ %14, %L52 ]
  %4 = add i64 %value_phi240, %3, !dbg !36
  %5 = add i64 %4, -1, !dbg !39
  %.not31 = icmp ult i64 %5, %"a::Array.size.0.copyload", !dbg !39
  br i1 %.not31, label %L31, label %odessy.chk, !dbg !39

L28:                                              ; No predecessors!
  store i64 %4, ptr %"new::Tuple15", align 8, !dbg !39, !tbaa !42, !alias.scope !44, !noalias !47
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"a::Array", ptr nonnull readonly captures(none) %"new::Tuple15") #8, !dbg !39
  unreachable, !dbg !39

L31:                                              ; preds = %L14
  %6 = add i64 %value_phi240, -1, !dbg !52
  %7 = mul i64 %6, %"n::Int64", !dbg !54
  %8 = add i64 %7, %value_phi143, !dbg !36
  %9 = add i64 %8, -1, !dbg !39
  %.not32 = icmp ult i64 %9, %"b::Array.size.0.copyload", !dbg !39
  br i1 %.not32, label %L52, label %odessy.chk1, !dbg !39

L49:                                              ; No predecessors!
  store i64 %8, ptr %"new::Tuple", align 8, !dbg !39, !tbaa !42, !alias.scope !44, !noalias !47
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"b::Array", ptr nonnull readonly captures(none) %"new::Tuple") #8, !dbg !39
  unreachable, !dbg !39

L52:                                              ; preds = %L31
  %memoryref_offset = shl i64 %4, 3, !dbg !56
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !56
  %10 = load i64, ptr %gep, align 8, !dbg !56, !tbaa !57, !alias.scope !60, !noalias !61
  %memoryref_offset8 = shl i64 %8, 3, !dbg !56
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8, !dbg !56
  %11 = load i64, ptr %gep47, align 8, !dbg !56, !tbaa !57, !alias.scope !60, !noalias !61
  %12 = mul i64 %11, %10, !dbg !54
  %13 = add i64 %12, %value_phi341, !dbg !36
  %14 = add i64 %value_phi240, 1, !dbg !62
  %.not30 = icmp sgt i64 %14, %"n::Int64", !dbg !64
  br i1 %.not30, label %L10.L60_crit_edge, label %L14, !dbg !35

L10.L60_crit_edge:                                ; preds = %L52
  %15 = add i64 %value_phi143, %3, !dbg !65
  %16 = add i64 %15, -1, !dbg !67
  %.not33 = icmp ult i64 %16, %"c::Array.size.0.copyload", !dbg !73
  br i1 %.not33, label %L77, label %odessy.chk2, !dbg !68

L74:                                              ; No predecessors!
  store i64 %15, ptr %"new::Tuple27", align 8, !dbg !68, !tbaa !42, !alias.scope !44, !noalias !47
  call swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself %pgcstack, ptr nonnull %"c::Array", ptr nonnull readonly captures(none) %"new::Tuple27") #8, !dbg !68
  unreachable, !dbg !68

L77:                                              ; preds = %L10.L60_crit_edge
  %memoryref_offset20 = shl i64 %15, 3, !dbg !75
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20, !dbg !75
  store i64 %13, ptr %gep49, align 8, !dbg !75, !tbaa !57, !alias.scope !60, !noalias !61
  %17 = add i64 %value_phi143, 1, !dbg !76
  %.not29 = icmp sgt i64 %17, %"n::Int64", !dbg !78
  br i1 %.not29, label %L6.L84_crit_edge.split, label %L10.preheader, !dbg !34

L6.L84_crit_edge.split:                           ; preds = %L77
  %18 = add i64 %value_phi45, 1, !dbg !79
  %.not = icmp sgt i64 %18, %"n::Int64", !dbg !29
  br i1 %.not, label %L86, label %L6.preheader, !dbg !33

L86:                                              ; preds = %L6.L84_crit_edge.split, %top
  ret ptr %"c::Array", !dbg !81

odessy.chk:                                       ; preds = %L14
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L31
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L10.L60_crit_edge
  call void @odessy.chk(i32 2)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_matmul!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") #1 {
top:
  %thread_ptr = call ptr asm "movq %fs:0, $0", "=r"()
  %tls_ppgcstack = getelementptr inbounds i8, ptr %thread_ptr, i64 -8
  %tls_pgcstack = load ptr, ptr %tls_ppgcstack, align 8
  %0 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %2 = getelementptr inbounds i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %4 = getelementptr inbounds i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !84, !align !85
  %6 = getelementptr inbounds i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !27, !invariant.load !14, !alias.scope !82, !noalias !83, !nonnull !14, !dereferenceable !85, !align !85
  %.unbox = load i64, ptr %7, align 8, !tbaa !86, !alias.scope !60, !noalias !61
  %8 = call swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %tls_pgcstack, ptr %1, ptr %3, ptr %5, i64 signext %.unbox)
  %9 = getelementptr inbounds i8, ptr %"args::Any[]", i32 0
  %10 = load ptr, ptr %9, align 8
  ret ptr %10
}

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @julia.safepoint(ptr) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none)
declare noundef nonnull ptr @julia.gc_loaded(ptr noundef nonnull readnone captures(none), ptr noundef nonnull readnone) #3

; Function Attrs: noreturn
declare swiftcc void @j_throw_boundserror_147(ptr nonnull swiftself, ptr, ptr readonly captures(none)) #4

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) #5

; Function Attrs: memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @ijl_gc_queue_root(ptr) #2

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_big_alloc(ptr, i64, i64) #6

; Function Attrs: nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_alloc_typed(ptr, i64, i64) #6

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #7

attributes #0 = { "frame-pointer"="all" "julia.fsig"="matmul!(Array{Int64, 1}, Array{Int64, 1}, Array{Int64, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "frame-pointer"="all" "probe-stack"="inline-asm" }
attributes #2 = { memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn "frame-pointer"="all" "julia.fsig"="throw_boundserror(Array{Int64, 1}, Tuple{Int64})" "probe-stack"="inline-asm" }
attributes #5 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #6 = { nounwind willreturn allockind("alloc") allocsize(1) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "matmul!", linkageName: "julia_matmul!_145", scope: null, file: !5, line: 4, type: !6, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/mydata/ODeSSy/native_bench/matmul.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !13, !8, !8, !8, !15}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !11, line: 71, align: 64, elements: !12)
!11 = !DIFile(filename: "julia.h", directory: "")
!12 = !{!9}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#matmul!", align: 8, elements: !14, runtimeLang: DW_LANG_Julia, identifier: "140231052538128")
!14 = !{}
!15 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 4, type: !13)
!18 = !DILocalVariable(name: "c", arg: 2, scope: !4, file: !5, line: 4, type: !8)
!19 = !DILocalVariable(name: "a", arg: 3, scope: !4, file: !5, line: 4, type: !8)
!20 = !DILocalVariable(name: "b", arg: 4, scope: !4, file: !5, line: 4, type: !8)
!21 = !DILocalVariable(name: "n", arg: 5, scope: !4, file: !5, line: 4, type: !15)
!22 = !DILocation(line: 4, scope: !4)
!23 = !{!24, !24, i64 0}
!24 = !{!"jtbaa_gcframe", !25, i64 0}
!25 = !{!"jtbaa", !26, i64 0}
!26 = !{!"jtbaa"}
!27 = !{!28, !28, i64 0}
!28 = !{!"jtbaa_const", !25, i64 0}
!29 = !DILocation(line: 520, scope: !30, inlinedAt: !33)
!30 = distinct !DISubprogram(name: "<=;", linkageName: "<=", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!31 = !DIFile(filename: "int.jl", directory: ".")
!32 = !DISubroutineType(types: !14)
!33 = !DILocation(line: 6, scope: !4)
!34 = !DILocation(line: 8, scope: !4)
!35 = !DILocation(line: 11, scope: !4)
!36 = !DILocation(line: 87, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DILocation(line: 12, scope: !4)
!39 = !DILocation(line: 919, scope: !40, inlinedAt: !38)
!40 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !41, file: !41, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DIFile(filename: "essentials.jl", directory: ".")
!42 = !{!43, !43, i64 0}
!43 = !{!"jtbaa_stack", !25, i64 0}
!44 = !{!45}
!45 = !{!"jnoalias_stack", !46}
!46 = !{!"jnoalias"}
!47 = !{!48, !49, !50, !51}
!48 = !{!"jnoalias_gcframe", !46}
!49 = !{!"jnoalias_data", !46}
!50 = !{!"jnoalias_typemd", !46}
!51 = !{!"jnoalias_const", !46}
!52 = !DILocation(line: 86, scope: !53, inlinedAt: !38)
!53 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!54 = !DILocation(line: 88, scope: !55, inlinedAt: !38)
!55 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!56 = !DILocation(line: 920, scope: !40, inlinedAt: !38)
!57 = !{!58, !58, i64 0}
!58 = !{!"jtbaa_arraybuf", !59, i64 0}
!59 = !{!"jtbaa_data", !25, i64 0}
!60 = !{!49}
!61 = !{!48, !45, !50, !51}
!62 = !DILocation(line: 87, scope: !37, inlinedAt: !63)
!63 = !DILocation(line: 13, scope: !4)
!64 = !DILocation(line: 520, scope: !30, inlinedAt: !35)
!65 = !DILocation(line: 87, scope: !37, inlinedAt: !66)
!66 = !DILocation(line: 15, scope: !4)
!67 = !DILocation(line: 86, scope: !53, inlinedAt: !68)
!68 = !DILocation(line: 990, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !70, file: !70, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!70 = !DIFile(filename: "array.jl", directory: ".")
!71 = !DILocation(line: 986, scope: !72, inlinedAt: !66)
!72 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !70, file: !70, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!73 = !DILocation(line: 519, scope: !74, inlinedAt: !68)
!74 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!75 = !DILocation(line: 991, scope: !69, inlinedAt: !71)
!76 = !DILocation(line: 87, scope: !37, inlinedAt: !77)
!77 = !DILocation(line: 16, scope: !4)
!78 = !DILocation(line: 520, scope: !30, inlinedAt: !34)
!79 = !DILocation(line: 87, scope: !37, inlinedAt: !80)
!80 = !DILocation(line: 18, scope: !4)
!81 = !DILocation(line: 20, scope: !4)
!82 = !{!51}
!83 = !{!48, !45, !49, !50}
!84 = !{i64 24}
!85 = !{i64 8}
!86 = !{!87, !87, i64 0}
!87 = !{!"jtbaa_immut", !88, i64 0}
!88 = !{!"jtbaa_value", !59, i64 0}
