; ModuleID = 'results/static/guard_competitors/Julia_matmul/irce.ll'
source_filename = "matmul!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.5.0"

; Function Attrs: nounwind
define swiftcc noundef nonnull ptr @"julia_matmul!_145"(ptr nonnull readonly swiftself captures(none) %pgcstack, ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(24) %"c::Array", ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"a::Array", ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"b::Array", i64 signext %"n::Int64") local_unnamed_addr #0 !dbg !4 {
top:
    #dbg_declare(ptr %"c::Array", !18, !DIExpression(), !22)
    #dbg_declare(ptr %"a::Array", !19, !DIExpression(), !22)
    #dbg_declare(ptr %"b::Array", !20, !DIExpression(), !22)
    #dbg_value(i64 %"n::Int64", !21, !DIExpression(), !22)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !23
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !22
  fence syncscope("singlethread") seq_cst
  %.not44 = icmp slt i64 %"n::Int64", 1, !dbg !29
  br i1 %.not44, label %L86, label %L6.preheader.lr.ph.split.split, !dbg !33

L6.preheader.lr.ph.split.split:                   ; preds = %top
  %"a::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"a::Array", i64 16
  %"b::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"b::Array", i64 16
  %"c::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"c::Array", i64 16
  br label %L6.preheader, !dbg !33

L6.preheader:                                     ; preds = %L6.L84_crit_edge.split, %L6.preheader.lr.ph.split.split
  %value_phi45 = phi i64 [ 1, %L6.preheader.lr.ph.split.split ], [ %20, %L6.L84_crit_edge.split ]
  %2 = add i64 %value_phi45, -1
  %3 = mul i64 %2, %"n::Int64"
  %"a::Array.size.0.copyload" = load i64, ptr %"a::Array.size_ptr", align 8
  %"c::Array.size.0.copyload" = load i64, ptr %"c::Array.size_ptr", align 8
  %memoryref_data18 = load ptr, ptr %"c::Array", align 8
  %invariant.gep48 = getelementptr i8, ptr %memoryref_data18, i64 -8, !dbg !34
  %.not315 = icmp ult i64 %3, %"a::Array.size.0.copyload"
  %4 = add i64 %3, 1
  br label %L10.preheader, !dbg !34

L10.preheader:                                    ; preds = %L77, %L6.preheader
  %value_phi143 = phi i64 [ 1, %L6.preheader ], [ %19, %L77 ]
  %"b::Array.size.0.copyload" = load i64, ptr %"b::Array.size_ptr", align 8
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !35
  %memoryref_data6 = load ptr, ptr %"b::Array", align 8
  %invariant.gep46 = getelementptr i8, ptr %memoryref_data6, i64 -8, !dbg !35
  br i1 %.not315, label %L31, label %odessy.chk, !dbg !36

L14:                                              ; preds = %L52
  %5 = add i64 %16, %3, !dbg !40
  %6 = add i64 %value_phi2407, %3, !dbg !36
  %.not31 = icmp ult i64 %6, %"a::Array.size.0.copyload", !dbg !36
  br i1 %.not31, label %L31, label %odessy.chk, !dbg !36

L31:                                              ; preds = %L10.preheader, %L14
  %7 = phi i64 [ %5, %L14 ], [ %4, %L10.preheader ]
  %value_phi2407 = phi i64 [ %16, %L14 ], [ 1, %L10.preheader ]
  %value_phi3416 = phi i64 [ %15, %L14 ], [ 0, %L10.preheader ]
  %8 = add i64 %value_phi2407, -1, !dbg !42
  %9 = mul i64 %8, %"n::Int64", !dbg !44
  %10 = add i64 %9, %value_phi143, !dbg !40
  %11 = add i64 %10, -1, !dbg !36
  %.not32 = icmp ult i64 %11, %"b::Array.size.0.copyload", !dbg !36
  br i1 %.not32, label %L52, label %odessy.chk1, !dbg !36

L52:                                              ; preds = %L31
  %memoryref_offset = shl i64 %7, 3, !dbg !46
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !46
  %12 = load i64, ptr %gep, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %memoryref_offset8 = shl i64 %10, 3, !dbg !46
  %gep47 = getelementptr i8, ptr %invariant.gep46, i64 %memoryref_offset8, !dbg !46
  %13 = load i64, ptr %gep47, align 8, !dbg !46, !tbaa !47, !alias.scope !50, !noalias !53
  %14 = mul i64 %13, %12, !dbg !44
  %15 = add i64 %14, %value_phi3416, !dbg !40
  %16 = add i64 %value_phi2407, 1, !dbg !58
  %.not30 = icmp sgt i64 %16, %"n::Int64", !dbg !60
  br i1 %.not30, label %L10.L60_crit_edge, label %L14, !dbg !35

L10.L60_crit_edge:                                ; preds = %L52
  %17 = add i64 %value_phi143, %3, !dbg !61
  %18 = add i64 %17, -1, !dbg !63
  %.not33 = icmp ult i64 %18, %"c::Array.size.0.copyload", !dbg !69
  br i1 %.not33, label %L77, label %odessy.chk2, !dbg !64

L77:                                              ; preds = %L10.L60_crit_edge
  %memoryref_offset20 = shl i64 %17, 3, !dbg !71
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %memoryref_offset20, !dbg !71
  store i64 %15, ptr %gep49, align 8, !dbg !71, !tbaa !47, !alias.scope !50, !noalias !53
  %19 = add i64 %value_phi143, 1, !dbg !72
  %.not29 = icmp sgt i64 %19, %"n::Int64", !dbg !74
  br i1 %.not29, label %L6.L84_crit_edge.split, label %L10.preheader, !dbg !34

L6.L84_crit_edge.split:                           ; preds = %L77
  %20 = add i64 %value_phi45, 1, !dbg !75
  %.not = icmp sgt i64 %20, %"n::Int64", !dbg !29
  br i1 %.not, label %L86, label %L6.preheader, !dbg !33

L86:                                              ; preds = %L6.L84_crit_edge.split, %top
  ret ptr %"c::Array", !dbg !77

odessy.chk:                                       ; preds = %L10.preheader, %L14
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %L31
  tail call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %L10.L60_crit_edge
  tail call void @odessy.chk(i32 2)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_matmul!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4299407132 to ptr)(i64 4299407168) #3
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !80, !align !81
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !80, !align !81
  %4 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !80, !align !81
  %6 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !27, !invariant.load !14, !alias.scope !78, !noalias !79, !nonnull !14, !dereferenceable !81, !align !81
  %.unbox = load i64, ptr %7, align 8, !tbaa !82, !alias.scope !50, !noalias !53
  %8 = call swiftcc nonnull ptr @"julia_matmul!_145"(ptr nonnull swiftself %pgcstack, ptr %1, ptr %3, ptr %5, i64 signext %.unbox)
  %9 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %10 = load ptr, ptr %9, align 8
  ret ptr %10
}

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #2

attributes #0 = { nounwind "julia.fsig"="matmul!(Array{Int64, 1}, Array{Int64, 1}, Array{Int64, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "matmul!", linkageName: "julia_matmul!_145", scope: null, file: !5, line: 4, type: !6, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/matmul.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !13, !8, !8, !8, !15}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !11, line: 71, align: 64, elements: !12)
!11 = !DIFile(filename: "julia.h", directory: "")
!12 = !{!9}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#matmul!", align: 8, elements: !14, runtimeLang: DW_LANG_Julia, identifier: "4573541136")
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
!36 = !DILocation(line: 919, scope: !37, inlinedAt: !39)
!37 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !38, file: !38, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!38 = !DIFile(filename: "essentials.jl", directory: ".")
!39 = !DILocation(line: 12, scope: !4)
!40 = !DILocation(line: 87, scope: !41, inlinedAt: !39)
!41 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!42 = !DILocation(line: 86, scope: !43, inlinedAt: !39)
!43 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!44 = !DILocation(line: 88, scope: !45, inlinedAt: !39)
!45 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!46 = !DILocation(line: 920, scope: !37, inlinedAt: !39)
!47 = !{!48, !48, i64 0}
!48 = !{!"jtbaa_arraybuf", !49, i64 0}
!49 = !{!"jtbaa_data", !25, i64 0}
!50 = !{!51}
!51 = !{!"jnoalias_data", !52}
!52 = !{!"jnoalias"}
!53 = !{!54, !55, !56, !57}
!54 = !{!"jnoalias_gcframe", !52}
!55 = !{!"jnoalias_stack", !52}
!56 = !{!"jnoalias_typemd", !52}
!57 = !{!"jnoalias_const", !52}
!58 = !DILocation(line: 87, scope: !41, inlinedAt: !59)
!59 = !DILocation(line: 13, scope: !4)
!60 = !DILocation(line: 520, scope: !30, inlinedAt: !35)
!61 = !DILocation(line: 87, scope: !41, inlinedAt: !62)
!62 = !DILocation(line: 15, scope: !4)
!63 = !DILocation(line: 86, scope: !43, inlinedAt: !64)
!64 = !DILocation(line: 990, scope: !65, inlinedAt: !67)
!65 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !66, file: !66, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "array.jl", directory: ".")
!67 = !DILocation(line: 986, scope: !68, inlinedAt: !62)
!68 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !66, file: !66, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!69 = !DILocation(line: 519, scope: !70, inlinedAt: !64)
!70 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !31, file: !31, type: !32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!71 = !DILocation(line: 991, scope: !65, inlinedAt: !67)
!72 = !DILocation(line: 87, scope: !41, inlinedAt: !73)
!73 = !DILocation(line: 16, scope: !4)
!74 = !DILocation(line: 520, scope: !30, inlinedAt: !34)
!75 = !DILocation(line: 87, scope: !41, inlinedAt: !76)
!76 = !DILocation(line: 18, scope: !4)
!77 = !DILocation(line: 20, scope: !4)
!78 = !{!57}
!79 = !{!54, !55, !51, !56}
!80 = !{i64 24}
!81 = !{i64 8}
!82 = !{!83, !83, i64 0}
!83 = !{!"jtbaa_immut", !84, i64 0}
!84 = !{!"jtbaa_value", !49, i64 0}
