; ModuleID = 'results/static/guard_competitors/Julia_jl_poly/irce.ll'
source_filename = "poly!"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.5.0"

; Function Attrs: nounwind
define swiftcc noundef nonnull ptr @"julia_poly!_145"(ptr nonnull readonly swiftself captures(none) %pgcstack, ptr noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(24) %"a::Array", double %"c1::Float64", double %"c2::Float64", double %"c3::Float64", i64 signext %"iters::Int64") local_unnamed_addr #0 !dbg !4 {
top:
    #dbg_declare(ptr %"a::Array", !19, !DIExpression(), !24)
    #dbg_value(double %"c1::Float64", !20, !DIExpression(), !24)
    #dbg_value(double %"c2::Float64", !21, !DIExpression(), !24)
    #dbg_value(double %"c3::Float64", !22, !DIExpression(), !24)
    #dbg_value(i64 %"iters::Int64", !23, !DIExpression(), !24)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !25
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !29, !invariant.load !14
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !24
  fence syncscope("singlethread") seq_cst
  %".iters::Int64" = tail call i64 @llvm.smax.i64(i64 %"iters::Int64", i64 0), !dbg !31
  %2 = icmp slt i64 %"iters::Int64", 1, !dbg !32
  br i1 %2, label %L100, label %L16.preheader, !dbg !44

L16.preheader:                                    ; preds = %top
  %"a::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"a::Array", i64 16
  %3 = load i64, ptr %"a::Array.size_ptr", align 8
  %value_phi4 = tail call i64 @llvm.smax.i64(i64 %3, i64 0)
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %L100, label %L16.preheader.split, !dbg !45

L16.preheader.split:                              ; preds = %L16.preheader
  %5 = add nuw i64 %3, 1, !dbg !45
  %6 = add nsw i64 %value_phi4, -1, !dbg !45
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %6), !dbg !45
  %umin.fr = freeze i64 %umin
  %7 = add nuw i64 %umin.fr, 1, !dbg !45
  %min.iters.check = icmp ult i64 %umin.fr, 8
  %mul.result = shl i64 %umin.fr, 3
  %n.mod.vf = and i64 %7, 7
  %8 = icmp eq i64 %n.mod.vf, 0
  %9 = select i1 %8, i64 8, i64 %n.mod.vf
  %n.vec = sub nuw nsw i64 %7, %9
  %ind.end = add nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %"c3::Float64", i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <2 x double> poison, double %"c2::Float64", i64 0
  %broadcast.splat48 = shufflevector <2 x double> %broadcast.splatinsert47, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %"c1::Float64", i64 0
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %min.iters.check, label %L16.us, label %L16.preheader.split.split

L16.us:                                           ; preds = %L16.preheader.split, %L90.loopexit.us
  %value_phi3.us = phi i64 [ %16, %L90.loopexit.us ], [ 1, %L16.preheader.split ]
  %memoryref_data.us = load ptr, ptr %"a::Array", align 8
  %invariant.gep.us = getelementptr i8, ptr %memoryref_data.us, i64 -8, !dbg !46
  br label %L36.us, !dbg !46

L36.us:                                           ; preds = %L74.us, %L16.us
  %value_phi8.us = phi i64 [ %15, %L74.us ], [ 1, %L16.us ]
  %exitcond.not.not.us = icmp eq i64 %value_phi8.us, %5, !dbg !46
  br i1 %exitcond.not.not.us, label %odessy.chk, label %L74.us, !dbg !46

L74.us:                                           ; preds = %L36.us
  %memoryref_offset.us = shl i64 %value_phi8.us, 3, !dbg !50
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %memoryref_offset.us, !dbg !50
  %10 = load double, ptr %gep.us, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %11 = fmul double %"c3::Float64", %10, !dbg !62
  %12 = fadd double %"c2::Float64", %11, !dbg !66
  %13 = fmul double %10, %12, !dbg !62
  %14 = fadd double %"c1::Float64", %13, !dbg !66
  store double %14, ptr %gep.us, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  %.not39.not.us = icmp eq i64 %value_phi8.us, %value_phi4, !dbg !73
  %15 = add nuw i64 %value_phi8.us, 1, !dbg !76
  br i1 %.not39.not.us, label %L90.loopexit.us, label %L36.us, !dbg !77, !llvm.loop !78

L90.loopexit.us:                                  ; preds = %L74.us
  %.not40.not.us = icmp eq i64 %value_phi3.us, %".iters::Int64", !dbg !80
  %16 = add nuw i64 %value_phi3.us, 1, !dbg !81
  br i1 %.not40.not.us, label %L100, label %L16.us, !dbg !82

L16.preheader.split.split:                        ; preds = %L16.preheader.split
  %mul.overflow = icmp ugt i64 %umin.fr, 2305843009213693951
  br i1 %mul.overflow, label %L16.us1, label %L16

L16.us1:                                          ; preds = %L16.preheader.split.split, %L90.loopexit.us14
  %value_phi3.us2 = phi i64 [ %23, %L90.loopexit.us14 ], [ 1, %L16.preheader.split.split ]
  %memoryref_data.us3 = load ptr, ptr %"a::Array", align 8
  %invariant.gep.us4 = getelementptr i8, ptr %memoryref_data.us3, i64 -8, !dbg !46
  br label %L36.us7, !dbg !46

L36.us7:                                          ; preds = %L74.us10, %L16.us1
  %value_phi8.us8 = phi i64 [ %22, %L74.us10 ], [ 1, %L16.us1 ]
  %exitcond.not.not.us9 = icmp eq i64 %value_phi8.us8, %5, !dbg !46
  br i1 %exitcond.not.not.us9, label %odessy.chk, label %L74.us10, !dbg !46

L74.us10:                                         ; preds = %L36.us7
  %memoryref_offset.us11 = shl i64 %value_phi8.us8, 3, !dbg !50
  %gep.us12 = getelementptr i8, ptr %invariant.gep.us4, i64 %memoryref_offset.us11, !dbg !50
  %17 = load double, ptr %gep.us12, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %18 = fmul double %"c3::Float64", %17, !dbg !62
  %19 = fadd double %"c2::Float64", %18, !dbg !66
  %20 = fmul double %17, %19, !dbg !62
  %21 = fadd double %"c1::Float64", %20, !dbg !66
  store double %21, ptr %gep.us12, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  %.not39.not.us13 = icmp eq i64 %value_phi8.us8, %value_phi4, !dbg !73
  %22 = add nuw i64 %value_phi8.us8, 1, !dbg !76
  br i1 %.not39.not.us13, label %L90.loopexit.us14, label %L36.us7, !dbg !77, !llvm.loop !78

L90.loopexit.us14:                                ; preds = %L74.us10
  %.not40.not.us15 = icmp eq i64 %value_phi3.us2, %".iters::Int64", !dbg !80
  %23 = add nuw i64 %value_phi3.us2, 1, !dbg !81
  br i1 %.not40.not.us15, label %L100, label %L16.us1, !dbg !82

L16:                                              ; preds = %L16.preheader.split.split, %L90.loopexit
  %value_phi3 = phi i64 [ %53, %L90.loopexit ], [ 1, %L16.preheader.split.split ]
  %memoryref_data = load ptr, ptr %"a::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data, i64 -8, !dbg !46
  %24 = getelementptr i8, ptr %memoryref_data, i64 %mul.result, !dbg !46
  %25 = icmp ult ptr %24, %memoryref_data, !dbg !46
  br i1 %25, label %L36.preheader, label %vector.body

vector.body:                                      ; preds = %L16, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %L16 ]
  %offset.idx = shl i64 %index, 3, !dbg !50
  %26 = getelementptr i8, ptr %memoryref_data, i64 %offset.idx, !dbg !50
  %27 = getelementptr i8, ptr %26, i64 16, !dbg !50
  %28 = getelementptr i8, ptr %26, i64 32, !dbg !50
  %29 = getelementptr i8, ptr %26, i64 48, !dbg !50
  %wide.load = load <2 x double>, ptr %26, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %wide.load44 = load <2 x double>, ptr %27, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %wide.load45 = load <2 x double>, ptr %28, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %wide.load46 = load <2 x double>, ptr %29, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %30 = fmul <2 x double> %broadcast.splat, %wide.load, !dbg !62
  %31 = fmul <2 x double> %broadcast.splat, %wide.load44, !dbg !62
  %32 = fmul <2 x double> %broadcast.splat, %wide.load45, !dbg !62
  %33 = fmul <2 x double> %broadcast.splat, %wide.load46, !dbg !62
  %34 = fadd <2 x double> %broadcast.splat48, %30, !dbg !66
  %35 = fadd <2 x double> %broadcast.splat48, %31, !dbg !66
  %36 = fadd <2 x double> %broadcast.splat48, %32, !dbg !66
  %37 = fadd <2 x double> %broadcast.splat48, %33, !dbg !66
  %38 = fmul <2 x double> %wide.load, %34, !dbg !62
  %39 = fmul <2 x double> %wide.load44, %35, !dbg !62
  %40 = fmul <2 x double> %wide.load45, %36, !dbg !62
  %41 = fmul <2 x double> %wide.load46, %37, !dbg !62
  %42 = fadd <2 x double> %broadcast.splat50, %38, !dbg !66
  %43 = fadd <2 x double> %broadcast.splat50, %39, !dbg !66
  %44 = fadd <2 x double> %broadcast.splat50, %40, !dbg !66
  %45 = fadd <2 x double> %broadcast.splat50, %41, !dbg !66
  store <2 x double> %42, ptr %26, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  store <2 x double> %43, ptr %27, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  store <2 x double> %44, ptr %28, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  store <2 x double> %45, ptr %29, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  %index.next = add nuw i64 %index, 8
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %L36.preheader, label %vector.body, !llvm.loop !83

L36.preheader:                                    ; preds = %vector.body, %L16
  %value_phi8.ph = phi i64 [ 1, %L16 ], [ %ind.end, %vector.body ]
  br label %L36, !dbg !46

L36:                                              ; preds = %L36.preheader, %L74
  %value_phi8 = phi i64 [ %52, %L74 ], [ %value_phi8.ph, %L36.preheader ]
  %exitcond.not.not = icmp eq i64 %value_phi8, %5, !dbg !46
  br i1 %exitcond.not.not, label %odessy.chk, label %L74, !dbg !46

L74:                                              ; preds = %L36
  %memoryref_offset = shl i64 %value_phi8, 3, !dbg !50
  %gep = getelementptr i8, ptr %invariant.gep, i64 %memoryref_offset, !dbg !50
  %47 = load double, ptr %gep, align 8, !dbg !50, !tbaa !51, !alias.scope !54, !noalias !57
  %48 = fmul double %"c3::Float64", %47, !dbg !62
  %49 = fadd double %"c2::Float64", %48, !dbg !66
  %50 = fmul double %47, %49, !dbg !62
  %51 = fadd double %"c1::Float64", %50, !dbg !66
  store double %51, ptr %gep, align 8, !dbg !68, !tbaa !51, !alias.scope !54, !noalias !57
  %.not39.not = icmp eq i64 %value_phi8, %value_phi4, !dbg !73
  %52 = add nuw i64 %value_phi8, 1, !dbg !76
  br i1 %.not39.not, label %L90.loopexit, label %L36, !dbg !77, !llvm.loop !78

L90.loopexit:                                     ; preds = %L74
  %.not40.not = icmp eq i64 %value_phi3, %".iters::Int64", !dbg !80
  %53 = add nuw i64 %value_phi3, 1, !dbg !81
  br i1 %.not40.not, label %L100, label %L16, !dbg !82

L100:                                             ; preds = %L90.loopexit, %L90.loopexit.us14, %L90.loopexit.us, %L16.preheader, %top
  ret ptr %"a::Array", !dbg !85

odessy.chk:                                       ; preds = %L36, %L36.us7, %L36.us
  tail call void @odessy.chk(i32 0)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @"jfptr_poly!_146"(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4339269404 to ptr)(i64 4339269440) #4
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !29, !invariant.load !14, !alias.scope !86, !noalias !87, !nonnull !14, !dereferenceable !88, !align !89
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !29, !invariant.load !14, !alias.scope !86, !noalias !87, !nonnull !14, !dereferenceable !89, !align !89
  %4 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !29, !invariant.load !14, !alias.scope !86, !noalias !87, !nonnull !14, !dereferenceable !89, !align !89
  %6 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !29, !invariant.load !14, !alias.scope !86, !noalias !87, !nonnull !14, !dereferenceable !89, !align !89
  %8 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !29, !invariant.load !14, !alias.scope !86, !noalias !87, !nonnull !14, !dereferenceable !89, !align !89
  %.unbox = load double, ptr %3, align 8, !tbaa !90, !alias.scope !54, !noalias !57
  %.unbox1 = load double, ptr %5, align 8, !tbaa !90, !alias.scope !54, !noalias !57
  %.unbox2 = load double, ptr %7, align 8, !tbaa !90, !alias.scope !54, !noalias !57
  %.unbox3 = load i64, ptr %9, align 8, !tbaa !90, !alias.scope !54, !noalias !57
  %10 = call swiftcc nonnull ptr @"julia_poly!_145"(ptr nonnull swiftself %pgcstack, ptr %1, double %.unbox, double %.unbox1, double %.unbox2, i64 signext %.unbox3)
  %11 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %12 = load ptr, ptr %11, align 8
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #3

attributes #0 = { nounwind "julia.fsig"="poly!(Array{Float64, 1}, Float64, Float64, Float64, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { nounwind memory(none) }

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
!73 = !DILocation(line: 637, scope: !74, inlinedAt: !76)
!74 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !75, file: !75, type: !35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!75 = !DIFile(filename: "promotion.jl", directory: ".")
!76 = !DILocation(line: 921, scope: !43, inlinedAt: !77)
!77 = !DILocation(line: 13, scope: !4)
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !DILocation(line: 637, scope: !74, inlinedAt: !81)
!81 = !DILocation(line: 921, scope: !43, inlinedAt: !82)
!82 = !DILocation(line: 14, scope: !4)
!83 = distinct !{!83, !79, !84}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !DILocation(line: 15, scope: !4)
!86 = !{!61}
!87 = !{!58, !59, !55, !60}
!88 = !{i64 24}
!89 = !{i64 8}
!90 = !{!91, !91, i64 0}
!91 = !{!"jtbaa_immut", !92, i64 0}
!92 = !{!"jtbaa_value", !53, i64 0}
