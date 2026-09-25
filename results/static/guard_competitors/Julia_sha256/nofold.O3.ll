; ModuleID = 'results/static/guard_competitors/Julia_sha256/nofold.ll'
source_filename = "sha256_sum"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin25.6.0"

@"jl_global#151.jit" = private alias ptr, inttoptr (i64 4570460976 to ptr)

; Function Attrs: nounwind
define swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself captures(none) %pgcstack, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %"data::Array", i64 signext %"iters::Int64") local_unnamed_addr #0 !dbg !4 {
top:
  %gcframe1 = alloca [3 x ptr], align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %gcframe1, i8 0, i64 24, i1 true)
  store i64 4, ptr %gcframe1, align 16, !tbaa !21
  %task.gcstack = load ptr, ptr %pgcstack, align 8
  %frame.prev = getelementptr inbounds nuw i8, ptr %gcframe1, i64 8
  store ptr %task.gcstack, ptr %frame.prev, align 8, !tbaa !21
  store ptr %gcframe1, ptr %pgcstack, align 8
    #dbg_declare(ptr %"data::Array", !19, !DIExpression(), !25)
    #dbg_value(i64 %"iters::Int64", !20, !DIExpression(), !25)
  %ptls_field = getelementptr inbounds nuw i8, ptr %pgcstack, i64 16
  %ptls_load = load ptr, ptr %ptls_field, align 8, !tbaa !21
  %0 = getelementptr inbounds nuw i8, ptr %ptls_load, i64 16
  %safepoint = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10
  fence syncscope("singlethread") seq_cst
  %1 = load volatile i64, ptr %safepoint, align 8, !dbg !25
  fence syncscope("singlethread") seq_cst
  %ptls_load644 = load ptr, ptr %ptls_field, align 8, !dbg !28, !tbaa !21
  %"Memory{UInt32}[]" = call noalias nonnull align 8 dereferenceable(288) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 1024, i32 288, i64 4834139040) #8, !dbg !28
  %"Memory{UInt32}[].tag_addr" = getelementptr inbounds i8, ptr %"Memory{UInt32}[]", i64 -8, !dbg !28
  store atomic i64 4834139040, ptr %"Memory{UInt32}[].tag_addr" unordered, align 8, !dbg !28, !tbaa !35
  %memory_ptr = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 8, !dbg !28
  %memory_data = getelementptr inbounds nuw i8, ptr %"Memory{UInt32}[]", i64 16, !dbg !28
  store ptr %memory_data, ptr %memory_ptr, align 8, !dbg !28, !tbaa !38, !alias.scope !41, !noalias !44
  store i64 64, ptr %"Memory{UInt32}[]", align 8, !dbg !28, !tbaa !49, !alias.scope !41, !noalias !44
  %gc_slot_addr_0 = getelementptr inbounds nuw i8, ptr %gcframe1, i64 16
  store ptr %"Memory{UInt32}[]", ptr %gc_slot_addr_0, align 16
  %"new::Array" = call noalias nonnull align 8 dereferenceable(32) ptr @ijl_gc_small_alloc(ptr %ptls_load644, i32 472, i32 32, i64 4834141488) #8, !dbg !51
  store ptr %memory_data, ptr %"new::Array", align 8, !dbg !51, !tbaa !52, !alias.scope !41, !noalias !44
  %"new::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"new::Array", i64 16, !dbg !51
  store i64 64, ptr %"new::Array.size_ptr", align 8, !dbg !51, !tbaa !54, !alias.scope !55, !noalias !56
  %".iters::Int64" = call i64 @llvm.smax.i64(i64 %"iters::Int64", i64 0), !dbg !57
  %2 = icmp slt i64 %"iters::Int64", 1, !dbg !58
  br i1 %2, label %L509, label %pass.preheader, !dbg !69

pass.preheader:                                   ; preds = %top
  %"data::Array.size_ptr" = getelementptr inbounds nuw i8, ptr %"data::Array", i64 16
  %"data::Array.size.0.copyload" = load i64, ptr %"data::Array.size_ptr", align 8
  %3 = sdiv i64 %"data::Array.size.0.copyload", 64
  %4 = icmp slt i64 %"data::Array.size.0.copyload", 64
  %value_phi8 = select i1 %4, i64 0, i64 %3
  %5 = icmp slt i64 %value_phi8, 1
  br i1 %5, label %pass.preheader.split.us, label %pass, !dbg !70

pass.preheader.split.us:                          ; preds = %pass.preheader
  %6 = trunc i64 %".iters::Int64" to i32, !dbg !70
  %7 = mul i32 %6, -974474368, !dbg !70
  br label %L509, !dbg !71

L41:                                              ; preds = %pass, %L476
  %indvar390 = phi i64 [ %indvar.next391, %L476 ], [ 0, %pass ]
  %memoryref_data69 = phi ptr [ %memoryref_data87, %L476 ], [ %memoryref_data69421, %pass ]
  %"new::Array.size.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload", %L476 ], [ %"new::Array.size84.0.copyload", %pass ]
  %value_phi12 = phi i64 [ %159, %L476 ], [ 1, %pass ]
  %value_phi14 = phi i32 [ %158, %L476 ], [ 1541459225, %pass ]
  %value_phi15 = phi i32 [ %157, %L476 ], [ 528734635, %pass ]
  %value_phi16 = phi i32 [ %156, %L476 ], [ -1694144372, %pass ]
  %value_phi17 = phi i32 [ %155, %L476 ], [ 1359893119, %pass ]
  %value_phi18 = phi i32 [ %154, %L476 ], [ -1521486534, %pass ]
  %value_phi19 = phi i32 [ %153, %L476 ], [ 1013904242, %pass ]
  %value_phi20 = phi i32 [ %152, %L476 ], [ -1150833019, %pass ]
  %value_phi21 = phi i32 [ %151, %L476 ], [ 1779033703, %pass ]
  %8 = shl nuw nsw i64 %indvar390, 6, !dbg !72
  %9 = shl i64 %value_phi12, 6, !dbg !72
  %memoryref_data = load ptr, ptr %"data::Array", align 8
  %invariant.gep = getelementptr i8, ptr %memoryref_data69, i64 -4, !dbg !67
  %smin = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload", i64 0), !dbg !67
  %10 = sub i64 %"new::Array.size.0.copyload", %smin, !dbg !67
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 -1), !dbg !67
  %11 = add nsw i64 %smax, 1, !dbg !67
  %12 = mul nuw nsw i64 %11, %10, !dbg !67
  %.not485 = icmp eq i64 %12, 0, !dbg !67
  br i1 %.not485, label %main.pseudo.exit, label %iter.check413, !dbg !67

iter.check413:                                    ; preds = %L41
  %exit.mainloop.at = call i64 @llvm.umin.i64(i64 %12, i64 16), !dbg !67
  %invariant.gep108 = getelementptr i8, ptr %memoryref_data, i64 %9, !dbg !75
  %13 = add nuw nsw i64 %exit.mainloop.at, 1, !dbg !75
  %min.iters.check397 = icmp ult i64 %12, 8, !dbg !75
  br i1 %min.iters.check397, label %L53.preheader, label %vector.memcheck388, !dbg !75

vector.memcheck388:                               ; preds = %iter.check413
  %14 = shl nuw nsw i64 %exit.mainloop.at, 2, !dbg !75
  %scevgep389 = getelementptr i8, ptr %memoryref_data69, i64 %14, !dbg !75
  %scevgep392 = getelementptr i8, ptr %memoryref_data, i64 %8, !dbg !75
  %15 = getelementptr i8, ptr %memoryref_data, i64 %8, !dbg !75
  %scevgep393 = getelementptr i8, ptr %15, i64 %14, !dbg !75
  %bound0394 = icmp ult ptr %memoryref_data69, %scevgep393, !dbg !75
  %bound1395 = icmp ult ptr %scevgep392, %scevgep389, !dbg !75
  %found.conflict396 = and i1 %bound0394, %bound1395, !dbg !75
  br i1 %found.conflict396, label %L53.preheader, label %vector.main.loop.iter.check398

vector.main.loop.iter.check398:                   ; preds = %vector.memcheck388
  %min.iters.check399 = icmp ult i64 %12, 16, !dbg !75
  br i1 %min.iters.check399, label %vec.epilog.ph417, label %vector.ph400, !dbg !75

vector.ph400:                                     ; preds = %vector.main.loop.iter.check398
  %n.vec402 = and i64 %exit.mainloop.at, 16
  %16 = getelementptr i8, ptr %invariant.gep108, i64 -64, !dbg !76
  %wide.vec404 = load <64 x i8>, ptr %16, align 1, !dbg !76, !tbaa !80, !alias.scope !82, !noalias !83
  %strided.vec405 = shufflevector <64 x i8> %wide.vec404, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>, !dbg !76
  %strided.vec406 = shufflevector <64 x i8> %wide.vec404, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>, !dbg !76
  %strided.vec407 = shufflevector <64 x i8> %wide.vec404, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>, !dbg !76
  %strided.vec408 = shufflevector <64 x i8> %wide.vec404, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>, !dbg !76
  %17 = zext <16 x i8> %strided.vec405 to <16 x i32>, !dbg !84
  %18 = shl nuw <16 x i32> %17, splat (i32 24), !dbg !88
  %19 = zext <16 x i8> %strided.vec406 to <16 x i32>, !dbg !84
  %20 = shl nuw nsw <16 x i32> %19, splat (i32 16), !dbg !88
  %21 = or disjoint <16 x i32> %20, %18, !dbg !91
  %22 = zext <16 x i8> %strided.vec407 to <16 x i32>, !dbg !84
  %23 = shl nuw nsw <16 x i32> %22, splat (i32 8), !dbg !88
  %24 = or disjoint <16 x i32> %21, %23, !dbg !91
  %25 = zext <16 x i8> %strided.vec408 to <16 x i32>, !dbg !84
  %26 = or disjoint <16 x i32> %24, %25, !dbg !91
  store <16 x i32> %26, ptr %memoryref_data69, align 4, !dbg !93, !tbaa !80, !alias.scope !98, !noalias !101
  %cmp.n410 = icmp eq i64 %exit.mainloop.at, %n.vec402, !dbg !75
  br i1 %cmp.n410, label %main.exit.selector, label %vec.epilog.iter.check415, !dbg !75

vec.epilog.iter.check415:                         ; preds = %vector.ph400
  %27 = or disjoint i64 %n.vec402, 1
  %n.mod.vf401 = and i64 %exit.mainloop.at, 8
  %min.epilog.iters.check416.not.not = icmp eq i64 %n.mod.vf401, 0
  br i1 %min.epilog.iters.check416.not.not, label %L53.preheader, label %vec.epilog.ph417, !prof !103

vec.epilog.ph417:                                 ; preds = %vector.main.loop.iter.check398, %vec.epilog.iter.check415
  %vec.epilog.resume.val412 = phi i64 [ %n.vec402, %vec.epilog.iter.check415 ], [ 0, %vector.main.loop.iter.check398 ]
  %n.vec419 = and i64 %exit.mainloop.at, 24
  %28 = or disjoint i64 %n.vec419, 1
  br label %vec.epilog.vector.body420

vec.epilog.vector.body420:                        ; preds = %vec.epilog.vector.body420, %vec.epilog.ph417
  %index421 = phi i64 [ %vec.epilog.resume.val412, %vec.epilog.ph417 ], [ %index.next427, %vec.epilog.vector.body420 ]
  %29 = shl i64 %index421, 2, !dbg !104
  %30 = getelementptr i8, ptr %invariant.gep108, i64 %29, !dbg !76
  %31 = getelementptr i8, ptr %30, i64 -64, !dbg !76
  %wide.vec422 = load <32 x i8>, ptr %31, align 1, !dbg !76, !tbaa !80, !alias.scope !82, !noalias !83
  %strided.vec423 = shufflevector <32 x i8> %wide.vec422, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>, !dbg !76
  %strided.vec424 = shufflevector <32 x i8> %wide.vec422, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>, !dbg !76
  %strided.vec425 = shufflevector <32 x i8> %wide.vec422, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>, !dbg !76
  %strided.vec426 = shufflevector <32 x i8> %wide.vec422, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !76
  %32 = zext <8 x i8> %strided.vec423 to <8 x i32>, !dbg !84
  %33 = shl nuw <8 x i32> %32, splat (i32 24), !dbg !88
  %34 = zext <8 x i8> %strided.vec424 to <8 x i32>, !dbg !84
  %35 = shl nuw nsw <8 x i32> %34, splat (i32 16), !dbg !88
  %36 = or disjoint <8 x i32> %35, %33, !dbg !91
  %37 = zext <8 x i8> %strided.vec425 to <8 x i32>, !dbg !84
  %38 = shl nuw nsw <8 x i32> %37, splat (i32 8), !dbg !88
  %39 = or disjoint <8 x i32> %36, %38, !dbg !91
  %40 = zext <8 x i8> %strided.vec426 to <8 x i32>, !dbg !84
  %41 = or disjoint <8 x i32> %39, %40, !dbg !91
  %42 = getelementptr i8, ptr %memoryref_data69, i64 %29, !dbg !93
  store <8 x i32> %41, ptr %42, align 4, !dbg !93, !tbaa !80, !alias.scope !98, !noalias !101
  %index.next427 = add nuw i64 %index421, 8
  %43 = icmp eq i64 %index.next427, %n.vec419, !dbg !75
  br i1 %43, label %vec.epilog.middle.block428, label %vec.epilog.vector.body420, !dbg !75, !llvm.loop !106

vec.epilog.middle.block428:                       ; preds = %vec.epilog.vector.body420
  %cmp.n429 = icmp eq i64 %exit.mainloop.at, %n.vec419, !dbg !75
  br i1 %cmp.n429, label %main.exit.selector, label %L53.preheader, !dbg !75

L53.preheader:                                    ; preds = %vector.memcheck388, %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block428
  %value_phi22.ph = phi i64 [ 1, %iter.check413 ], [ 1, %vector.memcheck388 ], [ %27, %vec.epilog.iter.check415 ], [ %28, %vec.epilog.middle.block428 ]
  br label %L53, !dbg !75

L53:                                              ; preds = %L53.preheader, %L53
  %value_phi22 = phi i64 [ %47, %L53 ], [ %value_phi22.ph, %L53.preheader ]
  %44 = shl nuw nsw i64 %value_phi22, 2, !dbg !104
  %gep109 = getelementptr i8, ptr %invariant.gep108, i64 %44, !dbg !76
  %memoryref_data27 = getelementptr i8, ptr %gep109, i64 -68, !dbg !76
  %45 = load i32, ptr %memoryref_data27, align 1, !dbg !76
  %46 = call i32 @llvm.bswap.i32(i32 %45), !dbg !76
  %gep = getelementptr i8, ptr %invariant.gep, i64 %44, !dbg !93
  store i32 %46, ptr %gep, align 4, !dbg !93, !tbaa !80, !alias.scope !82, !noalias !83
  %47 = add nuw nsw i64 %value_phi22, 1, !dbg !109
  %exitcond.not = icmp eq i64 %value_phi22, %exit.mainloop.at, !dbg !75
  br i1 %exitcond.not, label %main.exit.selector, label %L53, !dbg !75, !llvm.loop !110

main.exit.selector:                               ; preds = %L53, %vec.epilog.middle.block428, %vector.ph400
  %value_phi22.lcssa = phi i64 [ %n.vec419, %vec.epilog.middle.block428 ], [ %n.vec402, %vector.ph400 ], [ %value_phi22, %L53 ]
  %48 = icmp samesign ult i64 %value_phi22.lcssa, 16, !dbg !75
  br i1 %48, label %main.pseudo.exit, label %L175.preheader, !dbg !75

main.pseudo.exit:                                 ; preds = %main.exit.selector, %L41
  %value_phi22.copy = phi i64 [ 1, %L41 ], [ %13, %main.exit.selector ]
  %mv.h = icmp ugt i64 %"new::Array.size.0.copyload", 15
  %invariant.gep112 = getelementptr i8, ptr %memoryref_data, i64 %9, !dbg !111
  br i1 %mv.h, label %L53.postloop.mv.fast.preheader, label %L53.postloop

L53.postloop.mv.fast.preheader:                   ; preds = %main.pseudo.exit
  %49 = add i64 %"new::Array.size.0.copyload", 1, !dbg !111
  br label %L53.postloop.mv.fast, !dbg !111

L53.postloop.mv.fast:                             ; preds = %L53.postloop.mv.fast.preheader, %L158.postloop.mv.fast
  %value_phi22.postloop.mv.fast = phi i64 [ %53, %L158.postloop.mv.fast ], [ %value_phi22.copy, %L53.postloop.mv.fast.preheader ]
  %exitcond224.not = icmp eq i64 %value_phi22.postloop.mv.fast, %49, !dbg !112
  br i1 %exitcond224.not, label %odessy.fasttrap, label %L158.postloop.mv.fast, !dbg !111

L158.postloop.mv.fast:                            ; preds = %L53.postloop.mv.fast
  %50 = shl i64 %value_phi22.postloop.mv.fast, 2, !dbg !104
  %gep113 = getelementptr i8, ptr %invariant.gep112, i64 %50, !dbg !76
  %memoryref_data27.postloop.mv.fast = getelementptr i8, ptr %gep113, i64 -68, !dbg !76
  %51 = load i32, ptr %memoryref_data27.postloop.mv.fast, align 1, !dbg !76
  %52 = call i32 @llvm.bswap.i32(i32 %51), !dbg !76
  %gep.postloop.mv.fast = getelementptr i8, ptr %invariant.gep, i64 %50, !dbg !93
  store i32 %52, ptr %gep.postloop.mv.fast, align 4, !dbg !93, !tbaa !80, !alias.scope !82, !noalias !83
  %.not285.not.postloop.mv.fast = icmp eq i64 %value_phi22.postloop.mv.fast, 16, !dbg !113
  %53 = add i64 %value_phi22.postloop.mv.fast, 1, !dbg !109
  br i1 %.not285.not.postloop.mv.fast, label %L175.preheader, label %L53.postloop.mv.fast, !dbg !75, !llvm.loop !116, !loop_constrainer.loop.clone !10

L175.preheader:                                   ; preds = %L158.postloop, %L158.postloop.mv.fast, %main.exit.selector
  %memoryref_data87 = load ptr, ptr %"new::Array", align 8
  br i1 %174, label %L364, label %L175.postloop.preheader, !dbg !121

L175.postloop.preheader:                          ; preds = %main.exit.selector374, %L175.preheader
  %value_phi81.postloop.ph = phi i64 [ %175, %main.exit.selector374 ], [ 17, %L175.preheader ]
  br label %L175.postloop, !dbg !121

L364:                                             ; preds = %L175.preheader, %L364
  %value_phi81 = phi i64 [ %72, %L364 ], [ 17, %L175.preheader ]
  %memoryref_offset89 = shl i64 %value_phi81, 2, !dbg !123
  %54 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89, !dbg !123
  %memoryref_data95 = getelementptr i8, ptr %54, i64 -64, !dbg !123
  %55 = load i32, ptr %memoryref_data95, align 4, !dbg !123, !tbaa !80, !alias.scope !82, !noalias !83
  %56 = call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 25), !dbg !124
  %57 = call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 14), !dbg !124
  %58 = xor i32 %57, %56, !dbg !127
  %59 = lshr i32 %55, 3, !dbg !129
  %60 = xor i32 %58, %59, !dbg !127
  %memoryref_data134 = getelementptr i8, ptr %54, i64 -12, !dbg !132
  %61 = load i32, ptr %memoryref_data134, align 4, !dbg !132, !tbaa !80, !alias.scope !82, !noalias !83
  %62 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 15), !dbg !134
  %63 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13), !dbg !134
  %64 = xor i32 %63, %62, !dbg !136
  %65 = lshr i32 %61, 10, !dbg !137
  %66 = xor i32 %64, %65, !dbg !136
  %memoryref_data173 = getelementptr i8, ptr %54, i64 -68, !dbg !139
  %67 = load i32, ptr %memoryref_data173, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %memoryref_data186 = getelementptr i8, ptr %54, i64 -32, !dbg !139
  %68 = load i32, ptr %memoryref_data186, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %69 = add i32 %60, %67, !dbg !141
  %70 = add i32 %69, %68, !dbg !141
  %71 = add i32 %70, %66, !dbg !145
  %memoryref_data199 = getelementptr i8, ptr %54, i64 -4, !dbg !148
  store i32 %71, ptr %memoryref_data199, align 4, !dbg !148, !tbaa !80, !alias.scope !82, !noalias !83
  %72 = add nuw nsw i64 %value_phi81, 1, !dbg !150
  %exitcond231.not = icmp eq i64 %value_phi81, %umin248, !dbg !151
  br i1 %exitcond231.not, label %main.exit.selector374, label %L364, !dbg !151

main.exit.selector374:                            ; preds = %L364
  %73 = icmp samesign ult i64 %value_phi81, 64, !dbg !151
  br i1 %73, label %L175.postloop.preheader, label %L381.preheader, !dbg !151

L381.preheader:                                   ; preds = %L364.postloop, %main.exit.selector374
  %.size.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 64, !tbaa !54, !alias.scope !152, !noalias !153
  %"new::Array.size225.0.copyload" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349 = getelementptr i8, ptr %memoryref_data87, i64 -4, !dbg !154
  %smin398 = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload", i64 0), !dbg !154
  %74 = sub i64 %"new::Array.size225.0.copyload", %smin398, !dbg !154
  %smax399 = call i64 @llvm.smax.i64(i64 %smin398, i64 -1), !dbg !154
  %75 = add nsw i64 %smax399, 1, !dbg !154
  %76 = mul nuw nsw i64 %75, %74, !dbg !154
  %smin400 = call i64 @llvm.smin.i64(i64 %.size.0.copyload, i64 0), !dbg !154
  %77 = sub i64 %.size.0.copyload, %smin400, !dbg !154
  %smax401 = call i64 @llvm.smax.i64(i64 %smin400, i64 -1), !dbg !154
  %78 = add nsw i64 %smax401, 1, !dbg !154
  %79 = mul nuw nsw i64 %78, %77, !dbg !154
  %umin402 = call i64 @llvm.umin.i64(i64 %76, i64 %79), !dbg !154
  %exit.mainloop.at404 = call i64 @llvm.umin.i64(i64 %umin402, i64 64), !dbg !154
  %.not488 = icmp eq i64 %umin402, 0, !dbg !154
  br i1 %.not488, label %main.pseudo.exit407, label %L438.preheader, !dbg !154

L438.preheader:                                   ; preds = %L381.preheader
  %memoryref_data215.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !156, !tbaa !52, !alias.scope !41, !noalias !44
  %80 = add nuw nsw i64 %exit.mainloop.at404, 1, !dbg !157
  br label %L438, !dbg !157

L438:                                             ; preds = %L438, %L438.preheader
  %value_phi203 = phi i64 [ %109, %L438 ], [ 1, %L438.preheader ]
  %value_phi205 = phi i32 [ %value_phi206, %L438 ], [ %value_phi14, %L438.preheader ]
  %value_phi206 = phi i32 [ %value_phi207, %L438 ], [ %value_phi15, %L438.preheader ]
  %value_phi207 = phi i32 [ %value_phi208, %L438 ], [ %value_phi16, %L438.preheader ]
  %value_phi208 = phi i32 [ %107, %L438 ], [ %value_phi17, %L438.preheader ]
  %value_phi209 = phi i32 [ %value_phi210, %L438 ], [ %value_phi18, %L438.preheader ]
  %value_phi210 = phi i32 [ %value_phi211, %L438 ], [ %value_phi19, %L438.preheader ]
  %value_phi211 = phi i32 [ %value_phi212, %L438 ], [ %value_phi20, %L438.preheader ]
  %value_phi212 = phi i32 [ %108, %L438 ], [ %value_phi21, %L438.preheader ]
  %81 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 26), !dbg !158
  %82 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 21), !dbg !158
  %83 = xor i32 %81, %82, !dbg !161
  %84 = call i32 @llvm.fshl.i32(i32 %value_phi208, i32 %value_phi208, i32 7), !dbg !158
  %85 = xor i32 %83, %84, !dbg !161
  %86 = and i32 %value_phi208, %value_phi207, !dbg !162
  %87 = xor i32 %value_phi208, -1, !dbg !165
  %88 = and i32 %value_phi206, %87, !dbg !162
  %memoryref_offset217 = shl nuw nsw i64 %value_phi203, 2, !dbg !156
  %89 = getelementptr i8, ptr %memoryref_data215.pre, i64 %memoryref_offset217, !dbg !156
  %memoryref_data223 = getelementptr i8, ptr %89, i64 -4, !dbg !156
  %90 = load i32, ptr %memoryref_data223, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %gep350 = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217, !dbg !156
  %91 = load i32, ptr %gep350, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %92 = add i32 %88, %value_phi205, !dbg !167
  %93 = add i32 %92, %86, !dbg !169
  %94 = add i32 %93, %85, !dbg !167
  %95 = add i32 %94, %90, !dbg !170
  %96 = add i32 %95, %91, !dbg !172
  %97 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 30), !dbg !174
  %98 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 19), !dbg !174
  %99 = xor i32 %97, %98, !dbg !177
  %100 = call i32 @llvm.fshl.i32(i32 %value_phi212, i32 %value_phi212, i32 10), !dbg !174
  %101 = xor i32 %99, %100, !dbg !177
  %102 = xor i32 %value_phi211, %value_phi210, !dbg !178
  %103 = and i32 %value_phi212, %102, !dbg !178
  %104 = and i32 %value_phi211, %value_phi210, !dbg !180
  %105 = xor i32 %103, %104, !dbg !178
  %106 = add i32 %101, %105, !dbg !181
  %107 = add i32 %96, %value_phi209, !dbg !183
  %108 = add i32 %106, %96, !dbg !185
  %109 = add nuw nsw i64 %value_phi203, 1, !dbg !187
  %exitcond233.not = icmp eq i64 %value_phi203, %exit.mainloop.at404, !dbg !157
  br i1 %exitcond233.not, label %main.exit.selector406, label %L438, !dbg !157

main.exit.selector406:                            ; preds = %L438
  %110 = icmp ult i64 %umin402, 64, !dbg !157
  br i1 %110, label %main.pseudo.exit407, label %L476, !dbg !157

main.pseudo.exit407:                              ; preds = %main.exit.selector406, %L381.preheader
  %value_phi203.copy = phi i64 [ 1, %L381.preheader ], [ %80, %main.exit.selector406 ]
  %value_phi205.copy = phi i32 [ %value_phi14, %L381.preheader ], [ %value_phi206, %main.exit.selector406 ]
  %value_phi206.copy = phi i32 [ %value_phi15, %L381.preheader ], [ %value_phi207, %main.exit.selector406 ]
  %value_phi207.copy = phi i32 [ %value_phi16, %L381.preheader ], [ %value_phi208, %main.exit.selector406 ]
  %value_phi208.copy = phi i32 [ %value_phi17, %L381.preheader ], [ %107, %main.exit.selector406 ]
  %value_phi209.copy = phi i32 [ %value_phi18, %L381.preheader ], [ %value_phi210, %main.exit.selector406 ]
  %value_phi210.copy = phi i32 [ %value_phi19, %L381.preheader ], [ %value_phi211, %main.exit.selector406 ]
  %value_phi211.copy = phi i32 [ %value_phi20, %L381.preheader ], [ %value_phi212, %main.exit.selector406 ]
  %value_phi212.copy = phi i32 [ %value_phi21, %L381.preheader ], [ %108, %main.exit.selector406 ]
  %mv.h14 = icmp ugt i64 %.size.0.copyload, 63
  %mv.h15 = icmp ugt i64 %"new::Array.size225.0.copyload", 63
  %mv.h16 = and i1 %mv.h14, %mv.h15
  br i1 %mv.h16, label %L381.postloop.mv.fast.preheader, label %L381.postloop.preheader

L381.postloop.preheader:                          ; preds = %main.pseudo.exit407
  %111 = add nsw i64 %value_phi203.copy, -1, !dbg !154
  %umax234 = call i64 @llvm.umax.i64(i64 %.size.0.copyload, i64 %111), !dbg !154
  %112 = add i64 %umax234, 1, !dbg !154
  %113 = sub i64 %112, %value_phi203.copy, !dbg !154
  %umax235 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload", i64 %111), !dbg !154
  %114 = add i64 %umax235, 1, !dbg !154
  %115 = sub i64 %114, %value_phi203.copy, !dbg !154
  %umin236 = call i64 @llvm.umin.i64(i64 %115, i64 %113), !dbg !154
  %116 = sub nsw i64 64, %value_phi203.copy, !dbg !154
  %umin237 = call i64 @llvm.umin.i64(i64 %umin236, i64 %116), !dbg !154
  %.not = icmp eq i64 %113, %umin237, !dbg !154
  br i1 %.not, label %odessy.chk14, label %L381.postloop.preheader.split, !dbg !154

L381.postloop.preheader.split:                    ; preds = %L381.postloop.preheader
  %.not266 = icmp eq i64 %115, %umin237, !dbg !154
  br i1 %.not266, label %odessy.chk15, label %L381.postloop.preheader.split.split, !dbg !154

L381.postloop.preheader.split.split:              ; preds = %L381.postloop.preheader.split
  %memoryref_data215.postloop.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !156, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop, !dbg !154

L381.postloop.mv.fast.preheader:                  ; preds = %main.pseudo.exit407
  %117 = add i64 %.size.0.copyload, 1, !dbg !154
  %118 = sub i64 %117, %value_phi203.copy, !dbg !154
  %119 = add i64 %"new::Array.size225.0.copyload", 1, !dbg !154
  %120 = sub i64 %119, %value_phi203.copy, !dbg !154
  %umin238 = call i64 @llvm.umin.i64(i64 %120, i64 %118), !dbg !154
  %121 = sub nsw i64 64, %value_phi203.copy, !dbg !154
  %umin239 = call i64 @llvm.umin.i64(i64 %umin238, i64 %121), !dbg !154
  %.not267 = icmp eq i64 %118, %umin239, !dbg !154
  br i1 %.not267, label %odessy.fasttrap17, label %L381.postloop.mv.fast.preheader.split, !dbg !154

L381.postloop.mv.fast.preheader.split:            ; preds = %L381.postloop.mv.fast.preheader
  %.not268 = icmp eq i64 %120, %umin239, !dbg !154
  br i1 %.not268, label %odessy.fasttrap18, label %L381.postloop.mv.fast.preheader.split.split, !dbg !154

L381.postloop.mv.fast.preheader.split.split:      ; preds = %L381.postloop.mv.fast.preheader.split
  %memoryref_data215.postloop.mv.fast.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !156, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast, !dbg !154

L381.postloop.mv.fast:                            ; preds = %L381.postloop.mv.fast.preheader.split.split, %L381.postloop.mv.fast
  %value_phi203.postloop.mv.fast = phi i64 [ %150, %L381.postloop.mv.fast ], [ %value_phi203.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi205.postloop.mv.fast = phi i32 [ %value_phi206.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi205.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi206.postloop.mv.fast = phi i32 [ %value_phi207.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi206.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi207.postloop.mv.fast = phi i32 [ %value_phi208.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi207.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi208.postloop.mv.fast = phi i32 [ %148, %L381.postloop.mv.fast ], [ %value_phi208.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi209.postloop.mv.fast = phi i32 [ %value_phi210.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi209.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi210.postloop.mv.fast = phi i32 [ %value_phi211.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi210.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi211.postloop.mv.fast = phi i32 [ %value_phi212.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi211.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %value_phi212.postloop.mv.fast = phi i32 [ %149, %L381.postloop.mv.fast ], [ %value_phi212.copy, %L381.postloop.mv.fast.preheader.split.split ]
  %122 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 26), !dbg !158
  %123 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 21), !dbg !158
  %124 = xor i32 %122, %123, !dbg !161
  %125 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast, i32 %value_phi208.postloop.mv.fast, i32 7), !dbg !158
  %126 = xor i32 %124, %125, !dbg !161
  %127 = and i32 %value_phi208.postloop.mv.fast, %value_phi207.postloop.mv.fast, !dbg !162
  %128 = xor i32 %value_phi208.postloop.mv.fast, -1, !dbg !165
  %129 = and i32 %value_phi206.postloop.mv.fast, %128, !dbg !162
  %memoryref_offset217.postloop.mv.fast = shl i64 %value_phi203.postloop.mv.fast, 2, !dbg !156
  %130 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast.pre, i64 %memoryref_offset217.postloop.mv.fast, !dbg !156
  %memoryref_data223.postloop.mv.fast = getelementptr i8, ptr %130, i64 -4, !dbg !156
  %131 = load i32, ptr %memoryref_data223.postloop.mv.fast, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %gep350.postloop.mv.fast = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop.mv.fast, !dbg !156
  %132 = load i32, ptr %gep350.postloop.mv.fast, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %133 = add i32 %129, %value_phi205.postloop.mv.fast, !dbg !167
  %134 = add i32 %133, %127, !dbg !169
  %135 = add i32 %134, %126, !dbg !167
  %136 = add i32 %135, %131, !dbg !170
  %137 = add i32 %136, %132, !dbg !172
  %138 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 30), !dbg !174
  %139 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 19), !dbg !174
  %140 = xor i32 %138, %139, !dbg !177
  %141 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast, i32 %value_phi212.postloop.mv.fast, i32 10), !dbg !174
  %142 = xor i32 %140, %141, !dbg !177
  %143 = xor i32 %value_phi211.postloop.mv.fast, %value_phi210.postloop.mv.fast, !dbg !178
  %144 = and i32 %value_phi212.postloop.mv.fast, %143, !dbg !178
  %145 = and i32 %value_phi211.postloop.mv.fast, %value_phi210.postloop.mv.fast, !dbg !180
  %146 = xor i32 %144, %145, !dbg !178
  %147 = add i32 %142, %146, !dbg !181
  %148 = add i32 %137, %value_phi209.postloop.mv.fast, !dbg !183
  %149 = add i32 %147, %137, !dbg !185
  %.not298.not.postloop.mv.fast = icmp eq i64 %value_phi203.postloop.mv.fast, 64, !dbg !188
  %150 = add i64 %value_phi203.postloop.mv.fast, 1, !dbg !187
  br i1 %.not298.not.postloop.mv.fast, label %L476, label %L381.postloop.mv.fast, !dbg !157, !llvm.loop !189, !loop_constrainer.loop.clone !10

L476:                                             ; preds = %L381.postloop, %L381.postloop.mv.fast, %main.exit.selector406
  %.lcssa345 = phi i32 [ %107, %main.exit.selector406 ], [ %148, %L381.postloop.mv.fast ], [ %437, %L381.postloop ], !dbg !183
  %.lcssa344 = phi i32 [ %108, %main.exit.selector406 ], [ %149, %L381.postloop.mv.fast ], [ %438, %L381.postloop ], !dbg !185
  %value_phi206.lcssa341 = phi i32 [ %value_phi206, %main.exit.selector406 ], [ %value_phi206.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi206.postloop, %L381.postloop ]
  %value_phi207.lcssa339 = phi i32 [ %value_phi207, %main.exit.selector406 ], [ %value_phi207.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi207.postloop, %L381.postloop ]
  %value_phi208.lcssa337 = phi i32 [ %value_phi208, %main.exit.selector406 ], [ %value_phi208.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi208.postloop, %L381.postloop ]
  %value_phi210.lcssa335 = phi i32 [ %value_phi210, %main.exit.selector406 ], [ %value_phi210.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi210.postloop, %L381.postloop ]
  %value_phi211.lcssa333 = phi i32 [ %value_phi211, %main.exit.selector406 ], [ %value_phi211.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi211.postloop, %L381.postloop ]
  %value_phi212.lcssa331 = phi i32 [ %value_phi212, %main.exit.selector406 ], [ %value_phi212.postloop.mv.fast, %L381.postloop.mv.fast ], [ %value_phi212.postloop, %L381.postloop ]
  %151 = add i32 %.lcssa344, %value_phi21, !dbg !190
  %152 = add i32 %value_phi212.lcssa331, %value_phi20, !dbg !190
  %153 = add i32 %value_phi211.lcssa333, %value_phi19, !dbg !190
  %154 = add i32 %value_phi210.lcssa335, %value_phi18, !dbg !190
  %155 = add i32 %.lcssa345, %value_phi17, !dbg !192
  %156 = add i32 %value_phi208.lcssa337, %value_phi16, !dbg !192
  %157 = add i32 %value_phi207.lcssa339, %value_phi15, !dbg !192
  %158 = add i32 %value_phi206.lcssa341, %value_phi14, !dbg !192
  %.not299.not = icmp eq i64 %value_phi12, %value_phi8, !dbg !194
  %159 = add nuw nsw i64 %value_phi12, 1, !dbg !195
  %indvar.next391 = add i64 %indvar390, 1, !dbg !196
  br i1 %.not299.not, label %L495.loopexit, label %L41, !dbg !196

L495.loopexit:                                    ; preds = %L476, %L476.mv.fast
  %"new::Array.size225.0.copyload.lcssa35" = phi i64 [ %"new::Array.size225.0.copyload.mv.fast", %L476.mv.fast ], [ %"new::Array.size225.0.copyload", %L476 ]
  %memoryref_data228.lcssa31 = phi ptr [ %memoryref_data87.mv.fast, %L476.mv.fast ], [ %memoryref_data87, %L476 ]
  %.lcssa29 = phi i32 [ %342, %L476.mv.fast ], [ %151, %L476 ], !dbg !190
  %.lcssa28 = phi i32 [ %349, %L476.mv.fast ], [ %158, %L476 ], !dbg !192
  %160 = add i32 %.lcssa29, %value_phi7, !dbg !197
  %161 = add i32 %160, %.lcssa28, !dbg !197
  %.not300.not = icmp eq i64 %value_phi6, %".iters::Int64", !dbg !199
  %162 = add nuw i64 %value_phi6, 1, !dbg !200
  br i1 %.not300.not, label %L509, label %pass, !dbg !201

L509:                                             ; preds = %L495.loopexit, %pass.preheader.split.us, %top
  %value_phi247 = phi i32 [ 0, %top ], [ %7, %pass.preheader.split.us ], [ %161, %L495.loopexit ]
  %frame.prev689 = load ptr, ptr %frame.prev, align 8, !tbaa !21
  store ptr %frame.prev689, ptr %pgcstack, align 8, !tbaa !21
  ret i32 %value_phi247, !dbg !71

pass:                                             ; preds = %pass.preheader, %L495.loopexit
  %memoryref_data69421 = phi ptr [ %memoryref_data228.lcssa31, %L495.loopexit ], [ %memory_data, %pass.preheader ]
  %"new::Array.size84.0.copyload" = phi i64 [ %"new::Array.size225.0.copyload.lcssa35", %L495.loopexit ], [ 64, %pass.preheader ]
  %value_phi6 = phi i64 [ %162, %L495.loopexit ], [ 1, %pass.preheader ]
  %value_phi7 = phi i32 [ %161, %L495.loopexit ], [ 0, %pass.preheader ]
  %smin362 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -2), !dbg !67
  %163 = sub i64 %"new::Array.size84.0.copyload", %smin362, !dbg !67
  %smin363 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 0), !dbg !67
  %smax364 = call i64 @llvm.smax.i64(i64 %smin363, i64 -1), !dbg !67
  %164 = add nsw i64 %smax364, 1, !dbg !67
  %165 = mul nuw nsw i64 %164, %163, !dbg !67
  %smin365 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -7), !dbg !67
  %166 = sub i64 %"new::Array.size84.0.copyload", %smin365, !dbg !67
  %167 = mul nuw nsw i64 %164, %166, !dbg !67
  %umin = call i64 @llvm.umin.i64(i64 %165, i64 %167), !dbg !67
  %smin366 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -15), !dbg !67
  %168 = sub i64 %"new::Array.size84.0.copyload", %smin366, !dbg !67
  %169 = mul nuw nsw i64 %164, %168, !dbg !67
  %umin367 = call i64 @llvm.umin.i64(i64 %umin, i64 %169), !dbg !67
  %smin368 = call i64 @llvm.smin.i64(i64 %"new::Array.size84.0.copyload", i64 -16), !dbg !67
  %170 = sub i64 %"new::Array.size84.0.copyload", %smin368, !dbg !67
  %171 = mul nuw nsw i64 %164, %170, !dbg !67
  %umin369 = call i64 @llvm.umin.i64(i64 %umin367, i64 %171), !dbg !67
  %172 = sub i64 %"new::Array.size84.0.copyload", %smin363, !dbg !67
  %173 = mul nuw nsw i64 %164, %172, !dbg !67
  %umin370 = call i64 @llvm.umin.i64(i64 %umin369, i64 %173), !dbg !67
  %mv.h41 = icmp ugt i64 %"new::Array.size84.0.copyload", 63, !dbg !67
  %174 = icmp ugt i64 %umin370, 16
  %umax247 = call i64 @llvm.umax.i64(i64 %umin370, i64 16), !dbg !67
  %umin248 = call i64 @llvm.umin.i64(i64 %umax247, i64 64), !dbg !67
  %175 = add nuw nsw i64 %umin248, 1, !dbg !67
  br i1 %mv.h41, label %L41.mv.fast.preheader, label %L41

L41.mv.fast.preheader:                            ; preds = %pass
  %176 = add i64 %"new::Array.size84.0.copyload", 16, !dbg !67
  %177 = add i64 %"new::Array.size84.0.copyload", 3, !dbg !67
  %178 = add i64 %"new::Array.size84.0.copyload", 1, !dbg !67
  br label %L41.mv.fast, !dbg !67

L41.mv.fast:                                      ; preds = %L41.mv.fast.preheader, %L476.mv.fast
  %indvar = phi i64 [ 0, %L41.mv.fast.preheader ], [ %indvar.next, %L476.mv.fast ]
  %memoryref_data69.mv.fast = phi ptr [ %memoryref_data69421, %L41.mv.fast.preheader ], [ %memoryref_data87.mv.fast, %L476.mv.fast ]
  %"new::Array.size.0.copyload.mv.fast" = phi i64 [ %"new::Array.size84.0.copyload", %L41.mv.fast.preheader ], [ %"new::Array.size225.0.copyload.mv.fast", %L476.mv.fast ]
  %value_phi12.mv.fast = phi i64 [ 1, %L41.mv.fast.preheader ], [ %350, %L476.mv.fast ]
  %value_phi14.mv.fast = phi i32 [ 1541459225, %L41.mv.fast.preheader ], [ %349, %L476.mv.fast ]
  %value_phi15.mv.fast = phi i32 [ 528734635, %L41.mv.fast.preheader ], [ %348, %L476.mv.fast ]
  %value_phi16.mv.fast = phi i32 [ -1694144372, %L41.mv.fast.preheader ], [ %347, %L476.mv.fast ]
  %value_phi17.mv.fast = phi i32 [ 1359893119, %L41.mv.fast.preheader ], [ %346, %L476.mv.fast ]
  %value_phi18.mv.fast = phi i32 [ -1521486534, %L41.mv.fast.preheader ], [ %345, %L476.mv.fast ]
  %value_phi19.mv.fast = phi i32 [ 1013904242, %L41.mv.fast.preheader ], [ %344, %L476.mv.fast ]
  %value_phi20.mv.fast = phi i32 [ -1150833019, %L41.mv.fast.preheader ], [ %343, %L476.mv.fast ]
  %value_phi21.mv.fast = phi i32 [ 1779033703, %L41.mv.fast.preheader ], [ %342, %L476.mv.fast ]
  %179 = shl nuw nsw i64 %indvar, 6, !dbg !72
  %180 = shl i64 %value_phi12.mv.fast, 6, !dbg !72
  %memoryref_data.mv.fast = load ptr, ptr %"data::Array", align 8
  %invariant.gep.mv.fast = getelementptr i8, ptr %memoryref_data69.mv.fast, i64 -4, !dbg !67
  %smin.mv.fast = call i64 @llvm.smin.i64(i64 %"new::Array.size.0.copyload.mv.fast", i64 0), !dbg !67
  %181 = sub i64 %"new::Array.size.0.copyload.mv.fast", %smin.mv.fast, !dbg !67
  %smax.mv.fast = call i64 @llvm.smax.i64(i64 %smin.mv.fast, i64 -1), !dbg !67
  %182 = add nsw i64 %smax.mv.fast, 1, !dbg !67
  %183 = mul nuw nsw i64 %182, %181, !dbg !67
  %.not485.mv.fast = icmp eq i64 %183, 0, !dbg !67
  br i1 %.not485.mv.fast, label %main.pseudo.exit.mv.fast, label %iter.check, !dbg !67

iter.check:                                       ; preds = %L41.mv.fast
  %exit.mainloop.at.mv.fast = call i64 @llvm.umin.i64(i64 %183, i64 16), !dbg !67
  %invariant.gep114 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %180, !dbg !75
  %184 = add nuw nsw i64 %exit.mainloop.at.mv.fast, 1, !dbg !75
  %min.iters.check = icmp ult i64 %183, 8, !dbg !75
  br i1 %min.iters.check, label %L53.mv.fast.preheader, label %vector.memcheck, !dbg !75

vector.memcheck:                                  ; preds = %iter.check
  %185 = shl nuw nsw i64 %exit.mainloop.at.mv.fast, 2, !dbg !75
  %scevgep = getelementptr i8, ptr %memoryref_data69.mv.fast, i64 %185, !dbg !75
  %scevgep372 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %179, !dbg !75
  %186 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %179, !dbg !75
  %scevgep373 = getelementptr i8, ptr %186, i64 %185, !dbg !75
  %bound0 = icmp ult ptr %memoryref_data69.mv.fast, %scevgep373, !dbg !75
  %bound1 = icmp ult ptr %scevgep372, %scevgep, !dbg !75
  %found.conflict = and i1 %bound0, %bound1, !dbg !75
  br i1 %found.conflict, label %L53.mv.fast.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %183, 16, !dbg !75
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph, !dbg !75

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %exit.mainloop.at.mv.fast, 16
  %187 = getelementptr i8, ptr %invariant.gep114, i64 -64, !dbg !76
  %wide.vec = load <64 x i8>, ptr %187, align 1, !dbg !76, !tbaa !80, !alias.scope !82, !noalias !83
  %strided.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>, !dbg !76
  %strided.vec375 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>, !dbg !76
  %strided.vec376 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>, !dbg !76
  %strided.vec377 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>, !dbg !76
  %188 = zext <16 x i8> %strided.vec to <16 x i32>, !dbg !84
  %189 = shl nuw <16 x i32> %188, splat (i32 24), !dbg !88
  %190 = zext <16 x i8> %strided.vec375 to <16 x i32>, !dbg !84
  %191 = shl nuw nsw <16 x i32> %190, splat (i32 16), !dbg !88
  %192 = or disjoint <16 x i32> %191, %189, !dbg !91
  %193 = zext <16 x i8> %strided.vec376 to <16 x i32>, !dbg !84
  %194 = shl nuw nsw <16 x i32> %193, splat (i32 8), !dbg !88
  %195 = or disjoint <16 x i32> %192, %194, !dbg !91
  %196 = zext <16 x i8> %strided.vec377 to <16 x i32>, !dbg !84
  %197 = or disjoint <16 x i32> %195, %196, !dbg !91
  store <16 x i32> %197, ptr %memoryref_data69.mv.fast, align 4, !dbg !93, !tbaa !80, !alias.scope !202, !noalias !205
  %cmp.n = icmp eq i64 %exit.mainloop.at.mv.fast, %n.vec, !dbg !75
  br i1 %cmp.n, label %main.exit.selector.mv.fast, label %vec.epilog.iter.check, !dbg !75

vec.epilog.iter.check:                            ; preds = %vector.ph
  %198 = or disjoint i64 %n.vec, 1
  %n.mod.vf = and i64 %exit.mainloop.at.mv.fast, 8
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %L53.mv.fast.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec379 = and i64 %exit.mainloop.at.mv.fast, 24
  %199 = or disjoint i64 %n.vec379, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ]
  %200 = shl i64 %index, 2, !dbg !104
  %201 = getelementptr i8, ptr %invariant.gep114, i64 %200, !dbg !76
  %202 = getelementptr i8, ptr %201, i64 -64, !dbg !76
  %wide.vec380 = load <32 x i8>, ptr %202, align 1, !dbg !76, !tbaa !80, !alias.scope !82, !noalias !83
  %strided.vec381 = shufflevector <32 x i8> %wide.vec380, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>, !dbg !76
  %strided.vec382 = shufflevector <32 x i8> %wide.vec380, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>, !dbg !76
  %strided.vec383 = shufflevector <32 x i8> %wide.vec380, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>, !dbg !76
  %strided.vec384 = shufflevector <32 x i8> %wide.vec380, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !76
  %203 = zext <8 x i8> %strided.vec381 to <8 x i32>, !dbg !84
  %204 = shl nuw <8 x i32> %203, splat (i32 24), !dbg !88
  %205 = zext <8 x i8> %strided.vec382 to <8 x i32>, !dbg !84
  %206 = shl nuw nsw <8 x i32> %205, splat (i32 16), !dbg !88
  %207 = or disjoint <8 x i32> %206, %204, !dbg !91
  %208 = zext <8 x i8> %strided.vec383 to <8 x i32>, !dbg !84
  %209 = shl nuw nsw <8 x i32> %208, splat (i32 8), !dbg !88
  %210 = or disjoint <8 x i32> %207, %209, !dbg !91
  %211 = zext <8 x i8> %strided.vec384 to <8 x i32>, !dbg !84
  %212 = or disjoint <8 x i32> %210, %211, !dbg !91
  %213 = getelementptr i8, ptr %memoryref_data69.mv.fast, i64 %200, !dbg !93
  store <8 x i32> %212, ptr %213, align 4, !dbg !93, !tbaa !80, !alias.scope !202, !noalias !205
  %index.next = add nuw i64 %index, 8
  %214 = icmp eq i64 %index.next, %n.vec379, !dbg !75
  br i1 %214, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !75, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n385 = icmp eq i64 %exit.mainloop.at.mv.fast, %n.vec379, !dbg !75
  br i1 %cmp.n385, label %main.exit.selector.mv.fast, label %L53.mv.fast.preheader, !dbg !75

L53.mv.fast.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %value_phi22.mv.fast.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %198, %vec.epilog.iter.check ], [ %199, %vec.epilog.middle.block ]
  br label %L53.mv.fast, !dbg !75

L53.mv.fast:                                      ; preds = %L53.mv.fast.preheader, %L53.mv.fast
  %value_phi22.mv.fast = phi i64 [ %218, %L53.mv.fast ], [ %value_phi22.mv.fast.ph, %L53.mv.fast.preheader ]
  %215 = shl nuw nsw i64 %value_phi22.mv.fast, 2, !dbg !104
  %gep115 = getelementptr i8, ptr %invariant.gep114, i64 %215, !dbg !76
  %memoryref_data27.mv.fast = getelementptr i8, ptr %gep115, i64 -68, !dbg !76
  %216 = load i32, ptr %memoryref_data27.mv.fast, align 1, !dbg !76
  %217 = call i32 @llvm.bswap.i32(i32 %216), !dbg !76
  %gep.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %215, !dbg !93
  store i32 %217, ptr %gep.mv.fast, align 4, !dbg !93, !tbaa !80, !alias.scope !82, !noalias !83
  %218 = add nuw nsw i64 %value_phi22.mv.fast, 1, !dbg !109
  %exitcond241.not = icmp eq i64 %value_phi22.mv.fast, %exit.mainloop.at.mv.fast, !dbg !75
  br i1 %exitcond241.not, label %main.exit.selector.mv.fast, label %L53.mv.fast, !dbg !75, !llvm.loop !208

main.exit.selector.mv.fast:                       ; preds = %L53.mv.fast, %vec.epilog.middle.block, %vector.ph
  %value_phi22.mv.fast.lcssa = phi i64 [ %n.vec379, %vec.epilog.middle.block ], [ %n.vec, %vector.ph ], [ %value_phi22.mv.fast, %L53.mv.fast ]
  %219 = icmp samesign ult i64 %value_phi22.mv.fast.lcssa, 16, !dbg !75
  br i1 %219, label %main.pseudo.exit.mv.fast, label %L175.preheader.mv.fast, !dbg !75

main.pseudo.exit.mv.fast:                         ; preds = %main.exit.selector.mv.fast, %L41.mv.fast
  %value_phi22.copy.mv.fast = phi i64 [ 1, %L41.mv.fast ], [ %184, %main.exit.selector.mv.fast ]
  %mv.h.mv.fast = icmp ugt i64 %"new::Array.size.0.copyload.mv.fast", 15
  %invariant.gep118 = getelementptr i8, ptr %memoryref_data.mv.fast, i64 %180, !dbg !111
  br i1 %mv.h.mv.fast, label %L53.postloop.mv.fast.mv.fast.preheader, label %L53.postloop.mv.fast43

L53.postloop.mv.fast.mv.fast.preheader:           ; preds = %main.pseudo.exit.mv.fast
  %220 = add i64 %"new::Array.size.0.copyload.mv.fast", 1, !dbg !111
  br label %L53.postloop.mv.fast.mv.fast, !dbg !111

L53.postloop.mv.fast43:                           ; preds = %main.pseudo.exit.mv.fast, %L158.postloop.mv.fast54
  %value_phi22.postloop.mv.fast44 = phi i64 [ %225, %L158.postloop.mv.fast54 ], [ %value_phi22.copy.mv.fast, %main.pseudo.exit.mv.fast ]
  %221 = add i64 %value_phi22.postloop.mv.fast44, -1, !dbg !209
  %.not284.postloop.mv.fast53 = icmp ult i64 %221, %"new::Array.size.0.copyload.mv.fast", !dbg !112
  br i1 %.not284.postloop.mv.fast53, label %L158.postloop.mv.fast54, label %odessy.chk8, !dbg !111

L158.postloop.mv.fast54:                          ; preds = %L53.postloop.mv.fast43
  %222 = shl i64 %value_phi22.postloop.mv.fast44, 2, !dbg !104
  %gep117 = getelementptr i8, ptr %invariant.gep118, i64 %222, !dbg !76
  %memoryref_data27.postloop.mv.fast55 = getelementptr i8, ptr %gep117, i64 -68, !dbg !76
  %223 = load i32, ptr %memoryref_data27.postloop.mv.fast55, align 1, !dbg !76
  %224 = call i32 @llvm.bswap.i32(i32 %223), !dbg !76
  %gep.postloop.mv.fast59 = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %222, !dbg !93
  store i32 %224, ptr %gep.postloop.mv.fast59, align 4, !dbg !93, !tbaa !80, !alias.scope !82, !noalias !83
  %.not285.not.postloop.mv.fast60 = icmp eq i64 %value_phi22.postloop.mv.fast44, 16, !dbg !113
  %225 = add i64 %value_phi22.postloop.mv.fast44, 1, !dbg !109
  br i1 %.not285.not.postloop.mv.fast60, label %L175.preheader.mv.fast, label %L53.postloop.mv.fast43, !dbg !75, !llvm.loop !116, !loop_constrainer.loop.clone !10

L175.preheader.mv.fast:                           ; preds = %L158.postloop.mv.fast54, %L158.postloop.mv.fast.mv.fast, %main.exit.selector.mv.fast
  %memoryref_data87.mv.fast = load ptr, ptr %"new::Array", align 8
  br i1 %174, label %L364.mv.fast, label %L175.postloop.mv.fast.preheader, !dbg !121

L364.mv.fast:                                     ; preds = %L175.preheader.mv.fast, %L364.mv.fast
  %value_phi81.mv.fast = phi i64 [ %244, %L364.mv.fast ], [ 17, %L175.preheader.mv.fast ]
  %memoryref_offset89.mv.fast = shl i64 %value_phi81.mv.fast, 2, !dbg !123
  %226 = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 %memoryref_offset89.mv.fast, !dbg !123
  %memoryref_data95.mv.fast = getelementptr i8, ptr %226, i64 -64, !dbg !123
  %227 = load i32, ptr %memoryref_data95.mv.fast, align 4, !dbg !123, !tbaa !80, !alias.scope !82, !noalias !83
  %228 = call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 25), !dbg !124
  %229 = call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 14), !dbg !124
  %230 = xor i32 %229, %228, !dbg !127
  %231 = lshr i32 %227, 3, !dbg !129
  %232 = xor i32 %230, %231, !dbg !127
  %memoryref_data134.mv.fast = getelementptr i8, ptr %226, i64 -12, !dbg !132
  %233 = load i32, ptr %memoryref_data134.mv.fast, align 4, !dbg !132, !tbaa !80, !alias.scope !82, !noalias !83
  %234 = call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 15), !dbg !134
  %235 = call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 13), !dbg !134
  %236 = xor i32 %235, %234, !dbg !136
  %237 = lshr i32 %233, 10, !dbg !137
  %238 = xor i32 %236, %237, !dbg !136
  %memoryref_data173.mv.fast = getelementptr i8, ptr %226, i64 -68, !dbg !139
  %239 = load i32, ptr %memoryref_data173.mv.fast, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %memoryref_data186.mv.fast = getelementptr i8, ptr %226, i64 -32, !dbg !139
  %240 = load i32, ptr %memoryref_data186.mv.fast, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %241 = add i32 %232, %239, !dbg !141
  %242 = add i32 %241, %240, !dbg !141
  %243 = add i32 %242, %238, !dbg !145
  %memoryref_data199.mv.fast = getelementptr i8, ptr %226, i64 -4, !dbg !148
  store i32 %243, ptr %memoryref_data199.mv.fast, align 4, !dbg !148, !tbaa !80, !alias.scope !82, !noalias !83
  %244 = add nuw nsw i64 %value_phi81.mv.fast, 1, !dbg !150
  %exitcond249.not = icmp eq i64 %value_phi81.mv.fast, %umin248, !dbg !151
  br i1 %exitcond249.not, label %main.exit.selector374.mv.fast, label %L364.mv.fast, !dbg !151

main.exit.selector374.mv.fast:                    ; preds = %L364.mv.fast
  %245 = icmp samesign ult i64 %value_phi81.mv.fast, 64, !dbg !151
  br i1 %245, label %L175.postloop.mv.fast.preheader, label %L381.preheader.mv.fast, !dbg !151

L175.postloop.mv.fast.preheader:                  ; preds = %main.exit.selector374.mv.fast, %L175.preheader.mv.fast
  %value_phi81.postloop.mv.fast.ph = phi i64 [ %175, %main.exit.selector374.mv.fast ], [ 17, %L175.preheader.mv.fast ]
  br label %L175.postloop.mv.fast, !dbg !121

L175.postloop.mv.fast:                            ; preds = %L175.postloop.mv.fast.preheader, %L364.postloop.mv.fast
  %value_phi81.postloop.mv.fast = phi i64 [ %264, %L364.postloop.mv.fast ], [ %value_phi81.postloop.mv.fast.ph, %L175.postloop.mv.fast.preheader ]
  %exitcond250.not = icmp eq i64 %value_phi81.postloop.mv.fast, %176, !dbg !121
  br i1 %exitcond250.not, label %odessy.fasttrap82, label %L237.postloop.mv.fast, !dbg !121

L237.postloop.mv.fast:                            ; preds = %L175.postloop.mv.fast
  %memoryref_offset89.postloop.mv.fast = shl i64 %value_phi81.postloop.mv.fast, 2, !dbg !123
  %246 = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 %memoryref_offset89.postloop.mv.fast, !dbg !123
  %memoryref_data95.postloop.mv.fast = getelementptr i8, ptr %246, i64 -64, !dbg !123
  %247 = load i32, ptr %memoryref_data95.postloop.mv.fast, align 4, !dbg !123, !tbaa !80, !alias.scope !82, !noalias !83
  %248 = call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 25), !dbg !124
  %249 = call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 14), !dbg !124
  %250 = xor i32 %249, %248, !dbg !127
  %251 = lshr i32 %247, 3, !dbg !129
  %252 = xor i32 %250, %251, !dbg !127
  %exitcond251.not = icmp eq i64 %value_phi81.postloop.mv.fast, %177, !dbg !211
  br i1 %exitcond251.not, label %odessy.fasttrap83, label %L303.postloop.mv.fast, !dbg !211

L303.postloop.mv.fast:                            ; preds = %L237.postloop.mv.fast
  %exitcond252.not = icmp eq i64 %value_phi81.postloop.mv.fast, %178, !dbg !212
  br i1 %exitcond252.not, label %odessy.fasttrap84, label %L364.postloop.mv.fast, !dbg !213

L364.postloop.mv.fast:                            ; preds = %L303.postloop.mv.fast
  %memoryref_data134.postloop.mv.fast = getelementptr i8, ptr %246, i64 -12, !dbg !132
  %253 = load i32, ptr %memoryref_data134.postloop.mv.fast, align 4, !dbg !132, !tbaa !80, !alias.scope !82, !noalias !83
  %254 = call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 13), !dbg !134
  %255 = call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 15), !dbg !134
  %256 = xor i32 %254, %255, !dbg !136
  %257 = lshr i32 %253, 10, !dbg !137
  %258 = xor i32 %256, %257, !dbg !136
  %memoryref_data173.postloop.mv.fast = getelementptr i8, ptr %246, i64 -68, !dbg !139
  %259 = load i32, ptr %memoryref_data173.postloop.mv.fast, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %memoryref_data186.postloop.mv.fast = getelementptr i8, ptr %246, i64 -32, !dbg !139
  %260 = load i32, ptr %memoryref_data186.postloop.mv.fast, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %261 = add i32 %259, %252, !dbg !141
  %262 = add i32 %261, %260, !dbg !141
  %263 = add i32 %262, %258, !dbg !145
  %memoryref_data199.postloop.mv.fast = getelementptr i8, ptr %246, i64 -4, !dbg !148
  store i32 %263, ptr %memoryref_data199.postloop.mv.fast, align 4, !dbg !148, !tbaa !80, !alias.scope !82, !noalias !83
  %.not295.not.postloop.mv.fast = icmp eq i64 %value_phi81.postloop.mv.fast, 64, !dbg !214
  %264 = add i64 %value_phi81.postloop.mv.fast, 1, !dbg !150
  br i1 %.not295.not.postloop.mv.fast, label %L381.preheader.mv.fast, label %L175.postloop.mv.fast, !dbg !151, !llvm.loop !215, !loop_constrainer.loop.clone !10

L381.preheader.mv.fast:                           ; preds = %L364.postloop.mv.fast, %main.exit.selector374.mv.fast
  %.size.0.copyload.mv.fast = load i64, ptr getelementptr inbounds nuw (i8, ptr @"jl_global#151.jit", i64 16), align 64, !tbaa !54, !alias.scope !152, !noalias !153
  %"new::Array.size225.0.copyload.mv.fast" = load i64, ptr %"new::Array.size_ptr", align 8
  %invariant.gep349.mv.fast = getelementptr i8, ptr %memoryref_data87.mv.fast, i64 -4, !dbg !154
  %smin398.mv.fast = call i64 @llvm.smin.i64(i64 %"new::Array.size225.0.copyload.mv.fast", i64 0), !dbg !154
  %265 = sub i64 %"new::Array.size225.0.copyload.mv.fast", %smin398.mv.fast, !dbg !154
  %smax399.mv.fast = call i64 @llvm.smax.i64(i64 %smin398.mv.fast, i64 -1), !dbg !154
  %266 = add nsw i64 %smax399.mv.fast, 1, !dbg !154
  %267 = mul nuw nsw i64 %266, %265, !dbg !154
  %smin400.mv.fast = call i64 @llvm.smin.i64(i64 %.size.0.copyload.mv.fast, i64 0), !dbg !154
  %268 = sub i64 %.size.0.copyload.mv.fast, %smin400.mv.fast, !dbg !154
  %smax401.mv.fast = call i64 @llvm.smax.i64(i64 %smin400.mv.fast, i64 -1), !dbg !154
  %269 = add nsw i64 %smax401.mv.fast, 1, !dbg !154
  %270 = mul nuw nsw i64 %269, %268, !dbg !154
  %umin402.mv.fast = call i64 @llvm.umin.i64(i64 %267, i64 %270), !dbg !154
  %exit.mainloop.at404.mv.fast = call i64 @llvm.umin.i64(i64 %umin402.mv.fast, i64 64), !dbg !154
  %.not488.mv.fast = icmp eq i64 %umin402.mv.fast, 0, !dbg !154
  br i1 %.not488.mv.fast, label %main.pseudo.exit407.mv.fast, label %L438.preheader.mv.fast, !dbg !154

L438.preheader.mv.fast:                           ; preds = %L381.preheader.mv.fast
  %memoryref_data215.pre.mv.fast = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !156, !tbaa !52, !alias.scope !41, !noalias !44
  %271 = add nuw nsw i64 %exit.mainloop.at404.mv.fast, 1, !dbg !157
  br label %L438.mv.fast, !dbg !157

L438.mv.fast:                                     ; preds = %L438.mv.fast, %L438.preheader.mv.fast
  %value_phi203.mv.fast = phi i64 [ %300, %L438.mv.fast ], [ 1, %L438.preheader.mv.fast ]
  %value_phi205.mv.fast = phi i32 [ %value_phi206.mv.fast, %L438.mv.fast ], [ %value_phi14.mv.fast, %L438.preheader.mv.fast ]
  %value_phi206.mv.fast = phi i32 [ %value_phi207.mv.fast, %L438.mv.fast ], [ %value_phi15.mv.fast, %L438.preheader.mv.fast ]
  %value_phi207.mv.fast = phi i32 [ %value_phi208.mv.fast, %L438.mv.fast ], [ %value_phi16.mv.fast, %L438.preheader.mv.fast ]
  %value_phi208.mv.fast = phi i32 [ %298, %L438.mv.fast ], [ %value_phi17.mv.fast, %L438.preheader.mv.fast ]
  %value_phi209.mv.fast = phi i32 [ %value_phi210.mv.fast, %L438.mv.fast ], [ %value_phi18.mv.fast, %L438.preheader.mv.fast ]
  %value_phi210.mv.fast = phi i32 [ %value_phi211.mv.fast, %L438.mv.fast ], [ %value_phi19.mv.fast, %L438.preheader.mv.fast ]
  %value_phi211.mv.fast = phi i32 [ %value_phi212.mv.fast, %L438.mv.fast ], [ %value_phi20.mv.fast, %L438.preheader.mv.fast ]
  %value_phi212.mv.fast = phi i32 [ %299, %L438.mv.fast ], [ %value_phi21.mv.fast, %L438.preheader.mv.fast ]
  %272 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 26), !dbg !158
  %273 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 21), !dbg !158
  %274 = xor i32 %272, %273, !dbg !161
  %275 = call i32 @llvm.fshl.i32(i32 %value_phi208.mv.fast, i32 %value_phi208.mv.fast, i32 7), !dbg !158
  %276 = xor i32 %274, %275, !dbg !161
  %277 = and i32 %value_phi208.mv.fast, %value_phi207.mv.fast, !dbg !162
  %278 = xor i32 %value_phi208.mv.fast, -1, !dbg !165
  %279 = and i32 %value_phi206.mv.fast, %278, !dbg !162
  %memoryref_offset217.mv.fast = shl nuw nsw i64 %value_phi203.mv.fast, 2, !dbg !156
  %280 = getelementptr i8, ptr %memoryref_data215.pre.mv.fast, i64 %memoryref_offset217.mv.fast, !dbg !156
  %memoryref_data223.mv.fast = getelementptr i8, ptr %280, i64 -4, !dbg !156
  %281 = load i32, ptr %memoryref_data223.mv.fast, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %gep350.mv.fast = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.mv.fast, !dbg !156
  %282 = load i32, ptr %gep350.mv.fast, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %283 = add i32 %279, %value_phi205.mv.fast, !dbg !167
  %284 = add i32 %283, %277, !dbg !169
  %285 = add i32 %284, %276, !dbg !167
  %286 = add i32 %285, %281, !dbg !170
  %287 = add i32 %286, %282, !dbg !172
  %288 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 30), !dbg !174
  %289 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 19), !dbg !174
  %290 = xor i32 %288, %289, !dbg !177
  %291 = call i32 @llvm.fshl.i32(i32 %value_phi212.mv.fast, i32 %value_phi212.mv.fast, i32 10), !dbg !174
  %292 = xor i32 %290, %291, !dbg !177
  %293 = xor i32 %value_phi211.mv.fast, %value_phi210.mv.fast, !dbg !178
  %294 = and i32 %value_phi212.mv.fast, %293, !dbg !178
  %295 = and i32 %value_phi211.mv.fast, %value_phi210.mv.fast, !dbg !180
  %296 = xor i32 %294, %295, !dbg !178
  %297 = add i32 %292, %296, !dbg !181
  %298 = add i32 %287, %value_phi209.mv.fast, !dbg !183
  %299 = add i32 %297, %287, !dbg !185
  %300 = add nuw nsw i64 %value_phi203.mv.fast, 1, !dbg !187
  %exitcond254.not = icmp eq i64 %value_phi203.mv.fast, %exit.mainloop.at404.mv.fast, !dbg !157
  br i1 %exitcond254.not, label %main.exit.selector406.mv.fast, label %L438.mv.fast, !dbg !157

main.exit.selector406.mv.fast:                    ; preds = %L438.mv.fast
  %301 = icmp ult i64 %umin402.mv.fast, 64, !dbg !157
  br i1 %301, label %main.pseudo.exit407.mv.fast, label %L476.mv.fast, !dbg !157

main.pseudo.exit407.mv.fast:                      ; preds = %main.exit.selector406.mv.fast, %L381.preheader.mv.fast
  %value_phi203.copy.mv.fast = phi i64 [ 1, %L381.preheader.mv.fast ], [ %271, %main.exit.selector406.mv.fast ]
  %value_phi205.copy.mv.fast = phi i32 [ %value_phi14.mv.fast, %L381.preheader.mv.fast ], [ %value_phi206.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi206.copy.mv.fast = phi i32 [ %value_phi15.mv.fast, %L381.preheader.mv.fast ], [ %value_phi207.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi207.copy.mv.fast = phi i32 [ %value_phi16.mv.fast, %L381.preheader.mv.fast ], [ %value_phi208.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi208.copy.mv.fast = phi i32 [ %value_phi17.mv.fast, %L381.preheader.mv.fast ], [ %298, %main.exit.selector406.mv.fast ]
  %value_phi209.copy.mv.fast = phi i32 [ %value_phi18.mv.fast, %L381.preheader.mv.fast ], [ %value_phi210.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi210.copy.mv.fast = phi i32 [ %value_phi19.mv.fast, %L381.preheader.mv.fast ], [ %value_phi211.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi211.copy.mv.fast = phi i32 [ %value_phi20.mv.fast, %L381.preheader.mv.fast ], [ %value_phi212.mv.fast, %main.exit.selector406.mv.fast ]
  %value_phi212.copy.mv.fast = phi i32 [ %value_phi21.mv.fast, %L381.preheader.mv.fast ], [ %299, %main.exit.selector406.mv.fast ]
  %mv.h14.mv.fast = icmp ugt i64 %.size.0.copyload.mv.fast, 63
  %mv.h15.mv.fast = icmp ugt i64 %"new::Array.size225.0.copyload.mv.fast", 63
  %mv.h16.mv.fast = and i1 %mv.h14.mv.fast, %mv.h15.mv.fast
  br i1 %mv.h16.mv.fast, label %L381.postloop.mv.fast.mv.fast.preheader, label %L381.postloop.mv.fast61.preheader

L381.postloop.mv.fast61.preheader:                ; preds = %main.pseudo.exit407.mv.fast
  %302 = add nsw i64 %value_phi203.copy.mv.fast, -1, !dbg !154
  %umax255 = call i64 @llvm.umax.i64(i64 %.size.0.copyload.mv.fast, i64 %302), !dbg !154
  %303 = add i64 %umax255, 1, !dbg !154
  %304 = sub i64 %303, %value_phi203.copy.mv.fast, !dbg !154
  %umax256 = call i64 @llvm.umax.i64(i64 %"new::Array.size225.0.copyload.mv.fast", i64 %302), !dbg !154
  %305 = add i64 %umax256, 1, !dbg !154
  %306 = sub i64 %305, %value_phi203.copy.mv.fast, !dbg !154
  %umin257 = call i64 @llvm.umin.i64(i64 %306, i64 %304), !dbg !154
  %307 = sub nsw i64 64, %value_phi203.copy.mv.fast, !dbg !154
  %umin258 = call i64 @llvm.umin.i64(i64 %umin257, i64 %307), !dbg !154
  %.not269 = icmp eq i64 %304, %umin258, !dbg !154
  br i1 %.not269, label %odessy.chk14, label %L381.postloop.mv.fast61.preheader.split, !dbg !154

L381.postloop.mv.fast61.preheader.split:          ; preds = %L381.postloop.mv.fast61.preheader
  %.not270 = icmp eq i64 %306, %umin258, !dbg !154
  br i1 %.not270, label %odessy.chk15, label %L381.postloop.mv.fast61.preheader.split.split, !dbg !154

L381.postloop.mv.fast61.preheader.split.split:    ; preds = %L381.postloop.mv.fast61.preheader.split
  %memoryref_data215.postloop.mv.fast75.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !156, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast61, !dbg !154

L381.postloop.mv.fast.mv.fast.preheader:          ; preds = %main.pseudo.exit407.mv.fast
  %308 = add i64 %.size.0.copyload.mv.fast, 1, !dbg !154
  %309 = sub i64 %308, %value_phi203.copy.mv.fast, !dbg !154
  %310 = add i64 %"new::Array.size225.0.copyload.mv.fast", 1, !dbg !154
  %311 = sub i64 %310, %value_phi203.copy.mv.fast, !dbg !154
  %umin259 = call i64 @llvm.umin.i64(i64 %311, i64 %309), !dbg !154
  %312 = sub nsw i64 64, %value_phi203.copy.mv.fast, !dbg !154
  %umin260 = call i64 @llvm.umin.i64(i64 %umin259, i64 %312), !dbg !154
  %.not271 = icmp eq i64 %309, %umin260, !dbg !154
  br i1 %.not271, label %odessy.fasttrap17, label %L381.postloop.mv.fast.mv.fast.preheader.split, !dbg !154

L381.postloop.mv.fast.mv.fast.preheader.split:    ; preds = %L381.postloop.mv.fast.mv.fast.preheader
  %.not272 = icmp eq i64 %311, %umin260, !dbg !154
  br i1 %.not272, label %odessy.fasttrap18, label %L381.postloop.mv.fast.mv.fast.preheader.split.split, !dbg !154

L381.postloop.mv.fast.mv.fast.preheader.split.split: ; preds = %L381.postloop.mv.fast.mv.fast.preheader.split
  %memoryref_data215.postloop.mv.fast.mv.fast.pre = load ptr, ptr @"jl_global#151.jit", align 16, !dbg !156, !tbaa !52, !alias.scope !41, !noalias !44
  br label %L381.postloop.mv.fast.mv.fast, !dbg !154

L381.postloop.mv.fast61:                          ; preds = %L381.postloop.mv.fast61.preheader.split.split, %L381.postloop.mv.fast61
  %value_phi203.postloop.mv.fast62 = phi i64 [ %341, %L381.postloop.mv.fast61 ], [ %value_phi203.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi205.postloop.mv.fast63 = phi i32 [ %value_phi206.postloop.mv.fast64, %L381.postloop.mv.fast61 ], [ %value_phi205.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi206.postloop.mv.fast64 = phi i32 [ %value_phi207.postloop.mv.fast65, %L381.postloop.mv.fast61 ], [ %value_phi206.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi207.postloop.mv.fast65 = phi i32 [ %value_phi208.postloop.mv.fast66, %L381.postloop.mv.fast61 ], [ %value_phi207.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi208.postloop.mv.fast66 = phi i32 [ %339, %L381.postloop.mv.fast61 ], [ %value_phi208.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi209.postloop.mv.fast67 = phi i32 [ %value_phi210.postloop.mv.fast68, %L381.postloop.mv.fast61 ], [ %value_phi209.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi210.postloop.mv.fast68 = phi i32 [ %value_phi211.postloop.mv.fast69, %L381.postloop.mv.fast61 ], [ %value_phi210.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi211.postloop.mv.fast69 = phi i32 [ %value_phi212.postloop.mv.fast70, %L381.postloop.mv.fast61 ], [ %value_phi211.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %value_phi212.postloop.mv.fast70 = phi i32 [ %340, %L381.postloop.mv.fast61 ], [ %value_phi212.copy.mv.fast, %L381.postloop.mv.fast61.preheader.split.split ]
  %313 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast66, i32 %value_phi208.postloop.mv.fast66, i32 26), !dbg !158
  %314 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast66, i32 %value_phi208.postloop.mv.fast66, i32 21), !dbg !158
  %315 = xor i32 %313, %314, !dbg !161
  %316 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast66, i32 %value_phi208.postloop.mv.fast66, i32 7), !dbg !158
  %317 = xor i32 %315, %316, !dbg !161
  %318 = and i32 %value_phi208.postloop.mv.fast66, %value_phi207.postloop.mv.fast65, !dbg !162
  %319 = xor i32 %value_phi208.postloop.mv.fast66, -1, !dbg !165
  %320 = and i32 %value_phi206.postloop.mv.fast64, %319, !dbg !162
  %memoryref_offset217.postloop.mv.fast76 = shl i64 %value_phi203.postloop.mv.fast62, 2, !dbg !156
  %321 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast75.pre, i64 %memoryref_offset217.postloop.mv.fast76, !dbg !156
  %memoryref_data223.postloop.mv.fast77 = getelementptr i8, ptr %321, i64 -4, !dbg !156
  %322 = load i32, ptr %memoryref_data223.postloop.mv.fast77, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %gep350.postloop.mv.fast78 = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.postloop.mv.fast76, !dbg !156
  %323 = load i32, ptr %gep350.postloop.mv.fast78, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %324 = add i32 %320, %value_phi205.postloop.mv.fast63, !dbg !167
  %325 = add i32 %324, %318, !dbg !169
  %326 = add i32 %325, %317, !dbg !167
  %327 = add i32 %326, %322, !dbg !170
  %328 = add i32 %327, %323, !dbg !172
  %329 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast70, i32 %value_phi212.postloop.mv.fast70, i32 30), !dbg !174
  %330 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast70, i32 %value_phi212.postloop.mv.fast70, i32 19), !dbg !174
  %331 = xor i32 %329, %330, !dbg !177
  %332 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast70, i32 %value_phi212.postloop.mv.fast70, i32 10), !dbg !174
  %333 = xor i32 %331, %332, !dbg !177
  %334 = xor i32 %value_phi211.postloop.mv.fast69, %value_phi210.postloop.mv.fast68, !dbg !178
  %335 = and i32 %value_phi212.postloop.mv.fast70, %334, !dbg !178
  %336 = and i32 %value_phi211.postloop.mv.fast69, %value_phi210.postloop.mv.fast68, !dbg !180
  %337 = xor i32 %335, %336, !dbg !178
  %338 = add i32 %333, %337, !dbg !181
  %339 = add i32 %328, %value_phi209.postloop.mv.fast67, !dbg !183
  %340 = add i32 %338, %328, !dbg !185
  %.not298.not.postloop.mv.fast79 = icmp eq i64 %value_phi203.postloop.mv.fast62, 64, !dbg !188
  %341 = add i64 %value_phi203.postloop.mv.fast62, 1, !dbg !187
  br i1 %.not298.not.postloop.mv.fast79, label %L476.mv.fast, label %L381.postloop.mv.fast61, !dbg !157, !llvm.loop !189, !loop_constrainer.loop.clone !10

L476.mv.fast:                                     ; preds = %L381.postloop.mv.fast61, %L381.postloop.mv.fast.mv.fast, %main.exit.selector406.mv.fast
  %.lcssa345.mv.fast = phi i32 [ %298, %main.exit.selector406.mv.fast ], [ %381, %L381.postloop.mv.fast.mv.fast ], [ %339, %L381.postloop.mv.fast61 ], !dbg !183
  %.lcssa344.mv.fast = phi i32 [ %299, %main.exit.selector406.mv.fast ], [ %382, %L381.postloop.mv.fast.mv.fast ], [ %340, %L381.postloop.mv.fast61 ], !dbg !185
  %value_phi206.lcssa341.mv.fast = phi i32 [ %value_phi206.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi206.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi206.postloop.mv.fast64, %L381.postloop.mv.fast61 ]
  %value_phi207.lcssa339.mv.fast = phi i32 [ %value_phi207.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi207.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi207.postloop.mv.fast65, %L381.postloop.mv.fast61 ]
  %value_phi208.lcssa337.mv.fast = phi i32 [ %value_phi208.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi208.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi208.postloop.mv.fast66, %L381.postloop.mv.fast61 ]
  %value_phi210.lcssa335.mv.fast = phi i32 [ %value_phi210.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi210.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi210.postloop.mv.fast68, %L381.postloop.mv.fast61 ]
  %value_phi211.lcssa333.mv.fast = phi i32 [ %value_phi211.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi211.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi211.postloop.mv.fast69, %L381.postloop.mv.fast61 ]
  %value_phi212.lcssa331.mv.fast = phi i32 [ %value_phi212.mv.fast, %main.exit.selector406.mv.fast ], [ %value_phi212.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi212.postloop.mv.fast70, %L381.postloop.mv.fast61 ]
  %342 = add i32 %.lcssa344.mv.fast, %value_phi21.mv.fast, !dbg !190
  %343 = add i32 %value_phi212.lcssa331.mv.fast, %value_phi20.mv.fast, !dbg !190
  %344 = add i32 %value_phi211.lcssa333.mv.fast, %value_phi19.mv.fast, !dbg !190
  %345 = add i32 %value_phi210.lcssa335.mv.fast, %value_phi18.mv.fast, !dbg !190
  %346 = add i32 %.lcssa345.mv.fast, %value_phi17.mv.fast, !dbg !192
  %347 = add i32 %value_phi208.lcssa337.mv.fast, %value_phi16.mv.fast, !dbg !192
  %348 = add i32 %value_phi207.lcssa339.mv.fast, %value_phi15.mv.fast, !dbg !192
  %349 = add i32 %value_phi206.lcssa341.mv.fast, %value_phi14.mv.fast, !dbg !192
  %.not299.not.mv.fast = icmp eq i64 %value_phi12.mv.fast, %value_phi8, !dbg !194
  %350 = add nuw nsw i64 %value_phi12.mv.fast, 1, !dbg !195
  %indvar.next = add i64 %indvar, 1, !dbg !196
  br i1 %.not299.not.mv.fast, label %L495.loopexit, label %L41.mv.fast, !dbg !196

L53.postloop.mv.fast.mv.fast:                     ; preds = %L53.postloop.mv.fast.mv.fast.preheader, %L158.postloop.mv.fast.mv.fast
  %value_phi22.postloop.mv.fast.mv.fast = phi i64 [ %354, %L158.postloop.mv.fast.mv.fast ], [ %value_phi22.copy.mv.fast, %L53.postloop.mv.fast.mv.fast.preheader ]
  %exitcond242.not = icmp eq i64 %value_phi22.postloop.mv.fast.mv.fast, %220, !dbg !112
  br i1 %exitcond242.not, label %odessy.fasttrap, label %L158.postloop.mv.fast.mv.fast, !dbg !111

L158.postloop.mv.fast.mv.fast:                    ; preds = %L53.postloop.mv.fast.mv.fast
  %351 = shl i64 %value_phi22.postloop.mv.fast.mv.fast, 2, !dbg !104
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %351, !dbg !76
  %memoryref_data27.postloop.mv.fast.mv.fast = getelementptr i8, ptr %gep119, i64 -68, !dbg !76
  %352 = load i32, ptr %memoryref_data27.postloop.mv.fast.mv.fast, align 1, !dbg !76
  %353 = call i32 @llvm.bswap.i32(i32 %352), !dbg !76
  %gep.postloop.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep.mv.fast, i64 %351, !dbg !93
  store i32 %353, ptr %gep.postloop.mv.fast.mv.fast, align 4, !dbg !93, !tbaa !80, !alias.scope !82, !noalias !83
  %.not285.not.postloop.mv.fast.mv.fast = icmp eq i64 %value_phi22.postloop.mv.fast.mv.fast, 16, !dbg !113
  %354 = add i64 %value_phi22.postloop.mv.fast.mv.fast, 1, !dbg !109
  br i1 %.not285.not.postloop.mv.fast.mv.fast, label %L175.preheader.mv.fast, label %L53.postloop.mv.fast.mv.fast, !dbg !75, !llvm.loop !116, !loop_constrainer.loop.clone !10

L381.postloop.mv.fast.mv.fast:                    ; preds = %L381.postloop.mv.fast.mv.fast.preheader.split.split, %L381.postloop.mv.fast.mv.fast
  %value_phi203.postloop.mv.fast.mv.fast = phi i64 [ %383, %L381.postloop.mv.fast.mv.fast ], [ %value_phi203.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi205.postloop.mv.fast.mv.fast = phi i32 [ %value_phi206.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi205.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi206.postloop.mv.fast.mv.fast = phi i32 [ %value_phi207.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi206.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi207.postloop.mv.fast.mv.fast = phi i32 [ %value_phi208.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi207.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi208.postloop.mv.fast.mv.fast = phi i32 [ %381, %L381.postloop.mv.fast.mv.fast ], [ %value_phi208.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi209.postloop.mv.fast.mv.fast = phi i32 [ %value_phi210.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi209.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi210.postloop.mv.fast.mv.fast = phi i32 [ %value_phi211.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi210.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi211.postloop.mv.fast.mv.fast = phi i32 [ %value_phi212.postloop.mv.fast.mv.fast, %L381.postloop.mv.fast.mv.fast ], [ %value_phi211.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %value_phi212.postloop.mv.fast.mv.fast = phi i32 [ %382, %L381.postloop.mv.fast.mv.fast ], [ %value_phi212.copy.mv.fast, %L381.postloop.mv.fast.mv.fast.preheader.split.split ]
  %355 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 26), !dbg !158
  %356 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 21), !dbg !158
  %357 = xor i32 %355, %356, !dbg !161
  %358 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop.mv.fast.mv.fast, i32 %value_phi208.postloop.mv.fast.mv.fast, i32 7), !dbg !158
  %359 = xor i32 %357, %358, !dbg !161
  %360 = and i32 %value_phi208.postloop.mv.fast.mv.fast, %value_phi207.postloop.mv.fast.mv.fast, !dbg !162
  %361 = xor i32 %value_phi208.postloop.mv.fast.mv.fast, -1, !dbg !165
  %362 = and i32 %value_phi206.postloop.mv.fast.mv.fast, %361, !dbg !162
  %memoryref_offset217.postloop.mv.fast.mv.fast = shl i64 %value_phi203.postloop.mv.fast.mv.fast, 2, !dbg !156
  %363 = getelementptr i8, ptr %memoryref_data215.postloop.mv.fast.mv.fast.pre, i64 %memoryref_offset217.postloop.mv.fast.mv.fast, !dbg !156
  %memoryref_data223.postloop.mv.fast.mv.fast = getelementptr i8, ptr %363, i64 -4, !dbg !156
  %364 = load i32, ptr %memoryref_data223.postloop.mv.fast.mv.fast, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %gep350.postloop.mv.fast.mv.fast = getelementptr i8, ptr %invariant.gep349.mv.fast, i64 %memoryref_offset217.postloop.mv.fast.mv.fast, !dbg !156
  %365 = load i32, ptr %gep350.postloop.mv.fast.mv.fast, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %366 = add i32 %362, %value_phi205.postloop.mv.fast.mv.fast, !dbg !167
  %367 = add i32 %366, %360, !dbg !169
  %368 = add i32 %367, %359, !dbg !167
  %369 = add i32 %368, %364, !dbg !170
  %370 = add i32 %369, %365, !dbg !172
  %371 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 30), !dbg !174
  %372 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 19), !dbg !174
  %373 = xor i32 %371, %372, !dbg !177
  %374 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop.mv.fast.mv.fast, i32 %value_phi212.postloop.mv.fast.mv.fast, i32 10), !dbg !174
  %375 = xor i32 %373, %374, !dbg !177
  %376 = xor i32 %value_phi211.postloop.mv.fast.mv.fast, %value_phi210.postloop.mv.fast.mv.fast, !dbg !178
  %377 = and i32 %value_phi212.postloop.mv.fast.mv.fast, %376, !dbg !178
  %378 = and i32 %value_phi211.postloop.mv.fast.mv.fast, %value_phi210.postloop.mv.fast.mv.fast, !dbg !180
  %379 = xor i32 %377, %378, !dbg !178
  %380 = add i32 %375, %379, !dbg !181
  %381 = add i32 %370, %value_phi209.postloop.mv.fast.mv.fast, !dbg !183
  %382 = add i32 %380, %370, !dbg !185
  %.not298.not.postloop.mv.fast.mv.fast = icmp eq i64 %value_phi203.postloop.mv.fast.mv.fast, 64, !dbg !188
  %383 = add i64 %value_phi203.postloop.mv.fast.mv.fast, 1, !dbg !187
  br i1 %.not298.not.postloop.mv.fast.mv.fast, label %L476.mv.fast, label %L381.postloop.mv.fast.mv.fast, !dbg !157, !llvm.loop !189, !loop_constrainer.loop.clone !10

L53.postloop:                                     ; preds = %main.pseudo.exit, %L158.postloop
  %value_phi22.postloop = phi i64 [ %388, %L158.postloop ], [ %value_phi22.copy, %main.pseudo.exit ]
  %384 = add i64 %value_phi22.postloop, -1, !dbg !209
  %.not284.postloop = icmp ult i64 %384, %"new::Array.size.0.copyload", !dbg !112
  br i1 %.not284.postloop, label %L158.postloop, label %odessy.chk8, !dbg !111

L158.postloop:                                    ; preds = %L53.postloop
  %385 = shl i64 %value_phi22.postloop, 2, !dbg !104
  %gep111 = getelementptr i8, ptr %invariant.gep112, i64 %385, !dbg !76
  %memoryref_data27.postloop = getelementptr i8, ptr %gep111, i64 -68, !dbg !76
  %386 = load i32, ptr %memoryref_data27.postloop, align 1, !dbg !76
  %387 = call i32 @llvm.bswap.i32(i32 %386), !dbg !76
  %gep.postloop = getelementptr i8, ptr %invariant.gep, i64 %385, !dbg !93
  store i32 %387, ptr %gep.postloop, align 4, !dbg !93, !tbaa !80, !alias.scope !82, !noalias !83
  %.not285.not.postloop = icmp eq i64 %value_phi22.postloop, 16, !dbg !113
  %388 = add i64 %value_phi22.postloop, 1, !dbg !109
  br i1 %.not285.not.postloop, label %L175.preheader, label %L53.postloop, !dbg !75, !llvm.loop !116, !loop_constrainer.loop.clone !10

L175.postloop:                                    ; preds = %L175.postloop.preheader, %L364.postloop
  %value_phi81.postloop = phi i64 [ %410, %L364.postloop ], [ %value_phi81.postloop.ph, %L175.postloop.preheader ]
  %389 = add i64 %value_phi81.postloop, -16, !dbg !121
  %.not286.postloop = icmp ult i64 %389, %"new::Array.size84.0.copyload", !dbg !121
  br i1 %.not286.postloop, label %L237.postloop, label %odessy.chk9, !dbg !121

L237.postloop:                                    ; preds = %L175.postloop
  %memoryref_offset89.postloop = shl i64 %value_phi81.postloop, 2, !dbg !123
  %390 = getelementptr i8, ptr %memoryref_data87, i64 %memoryref_offset89.postloop, !dbg !123
  %memoryref_data95.postloop = getelementptr i8, ptr %390, i64 -64, !dbg !123
  %391 = load i32, ptr %memoryref_data95.postloop, align 4, !dbg !123, !tbaa !80, !alias.scope !82, !noalias !83
  %392 = call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 25), !dbg !124
  %393 = call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 14), !dbg !124
  %394 = xor i32 %393, %392, !dbg !127
  %395 = lshr i32 %391, 3, !dbg !129
  %396 = xor i32 %394, %395, !dbg !127
  %397 = add i64 %value_phi81.postloop, -3, !dbg !211
  %.not289.postloop = icmp ult i64 %397, %"new::Array.size84.0.copyload", !dbg !211
  br i1 %.not289.postloop, label %L303.postloop, label %odessy.chk10, !dbg !211

L303.postloop:                                    ; preds = %L237.postloop
  %398 = add i64 %value_phi81.postloop, -1, !dbg !216
  %.not294.postloop = icmp ult i64 %398, %"new::Array.size84.0.copyload", !dbg !212
  br i1 %.not294.postloop, label %L364.postloop, label %odessy.chk13, !dbg !213

L364.postloop:                                    ; preds = %L303.postloop
  %memoryref_data134.postloop = getelementptr i8, ptr %390, i64 -12, !dbg !132
  %399 = load i32, ptr %memoryref_data134.postloop, align 4, !dbg !132, !tbaa !80, !alias.scope !82, !noalias !83
  %400 = call i32 @llvm.fshl.i32(i32 %399, i32 %399, i32 13), !dbg !134
  %401 = call i32 @llvm.fshl.i32(i32 %399, i32 %399, i32 15), !dbg !134
  %402 = xor i32 %400, %401, !dbg !136
  %403 = lshr i32 %399, 10, !dbg !137
  %404 = xor i32 %402, %403, !dbg !136
  %memoryref_data173.postloop = getelementptr i8, ptr %390, i64 -68, !dbg !139
  %405 = load i32, ptr %memoryref_data173.postloop, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %memoryref_data186.postloop = getelementptr i8, ptr %390, i64 -32, !dbg !139
  %406 = load i32, ptr %memoryref_data186.postloop, align 4, !dbg !139, !tbaa !80, !alias.scope !82, !noalias !83
  %407 = add i32 %405, %396, !dbg !141
  %408 = add i32 %407, %406, !dbg !141
  %409 = add i32 %408, %404, !dbg !145
  %memoryref_data199.postloop = getelementptr i8, ptr %390, i64 -4, !dbg !148
  store i32 %409, ptr %memoryref_data199.postloop, align 4, !dbg !148, !tbaa !80, !alias.scope !82, !noalias !83
  %.not295.not.postloop = icmp eq i64 %value_phi81.postloop, 64, !dbg !214
  %410 = add i64 %value_phi81.postloop, 1, !dbg !150
  br i1 %.not295.not.postloop, label %L381.preheader, label %L175.postloop, !dbg !151, !llvm.loop !215, !loop_constrainer.loop.clone !10

L381.postloop:                                    ; preds = %L381.postloop.preheader.split.split, %L381.postloop
  %value_phi203.postloop = phi i64 [ %439, %L381.postloop ], [ %value_phi203.copy, %L381.postloop.preheader.split.split ]
  %value_phi205.postloop = phi i32 [ %value_phi206.postloop, %L381.postloop ], [ %value_phi205.copy, %L381.postloop.preheader.split.split ]
  %value_phi206.postloop = phi i32 [ %value_phi207.postloop, %L381.postloop ], [ %value_phi206.copy, %L381.postloop.preheader.split.split ]
  %value_phi207.postloop = phi i32 [ %value_phi208.postloop, %L381.postloop ], [ %value_phi207.copy, %L381.postloop.preheader.split.split ]
  %value_phi208.postloop = phi i32 [ %437, %L381.postloop ], [ %value_phi208.copy, %L381.postloop.preheader.split.split ]
  %value_phi209.postloop = phi i32 [ %value_phi210.postloop, %L381.postloop ], [ %value_phi209.copy, %L381.postloop.preheader.split.split ]
  %value_phi210.postloop = phi i32 [ %value_phi211.postloop, %L381.postloop ], [ %value_phi210.copy, %L381.postloop.preheader.split.split ]
  %value_phi211.postloop = phi i32 [ %value_phi212.postloop, %L381.postloop ], [ %value_phi211.copy, %L381.postloop.preheader.split.split ]
  %value_phi212.postloop = phi i32 [ %438, %L381.postloop ], [ %value_phi212.copy, %L381.postloop.preheader.split.split ]
  %411 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 26), !dbg !158
  %412 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 21), !dbg !158
  %413 = xor i32 %411, %412, !dbg !161
  %414 = call i32 @llvm.fshl.i32(i32 %value_phi208.postloop, i32 %value_phi208.postloop, i32 7), !dbg !158
  %415 = xor i32 %413, %414, !dbg !161
  %416 = and i32 %value_phi208.postloop, %value_phi207.postloop, !dbg !162
  %417 = xor i32 %value_phi208.postloop, -1, !dbg !165
  %418 = and i32 %value_phi206.postloop, %417, !dbg !162
  %memoryref_offset217.postloop = shl i64 %value_phi203.postloop, 2, !dbg !156
  %419 = getelementptr i8, ptr %memoryref_data215.postloop.pre, i64 %memoryref_offset217.postloop, !dbg !156
  %memoryref_data223.postloop = getelementptr i8, ptr %419, i64 -4, !dbg !156
  %420 = load i32, ptr %memoryref_data223.postloop, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %gep350.postloop = getelementptr i8, ptr %invariant.gep349, i64 %memoryref_offset217.postloop, !dbg !156
  %421 = load i32, ptr %gep350.postloop, align 4, !dbg !156, !tbaa !80, !alias.scope !82, !noalias !83
  %422 = add i32 %418, %value_phi205.postloop, !dbg !167
  %423 = add i32 %422, %416, !dbg !169
  %424 = add i32 %423, %415, !dbg !167
  %425 = add i32 %424, %420, !dbg !170
  %426 = add i32 %425, %421, !dbg !172
  %427 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 30), !dbg !174
  %428 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 19), !dbg !174
  %429 = xor i32 %427, %428, !dbg !177
  %430 = call i32 @llvm.fshl.i32(i32 %value_phi212.postloop, i32 %value_phi212.postloop, i32 10), !dbg !174
  %431 = xor i32 %429, %430, !dbg !177
  %432 = xor i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !178
  %433 = and i32 %value_phi212.postloop, %432, !dbg !178
  %434 = and i32 %value_phi211.postloop, %value_phi210.postloop, !dbg !180
  %435 = xor i32 %433, %434, !dbg !178
  %436 = add i32 %431, %435, !dbg !181
  %437 = add i32 %426, %value_phi209.postloop, !dbg !183
  %438 = add i32 %436, %426, !dbg !185
  %.not298.not.postloop = icmp eq i64 %value_phi203.postloop, 64, !dbg !188
  %439 = add i64 %value_phi203.postloop, 1, !dbg !187
  br i1 %.not298.not.postloop, label %L476, label %L381.postloop, !dbg !157, !llvm.loop !189, !loop_constrainer.loop.clone !10

odessy.chk8:                                      ; preds = %L53.postloop, %L53.postloop.mv.fast43
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %L175.postloop
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %L237.postloop
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk13:                                     ; preds = %L303.postloop
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %L381.postloop.preheader, %L381.postloop.mv.fast61.preheader
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %L381.postloop.preheader.split, %L381.postloop.mv.fast61.preheader.split
  call void @odessy.chk(i32 15)
  unreachable

odessy.fasttrap:                                  ; preds = %L53.postloop.mv.fast, %L53.postloop.mv.fast.mv.fast
  call void @odessy.fast.trap(i32 0)
  unreachable

odessy.fasttrap17:                                ; preds = %L381.postloop.mv.fast.preheader, %L381.postloop.mv.fast.mv.fast.preheader
  call void @odessy.fast.trap(i32 1)
  unreachable

odessy.fasttrap18:                                ; preds = %L381.postloop.mv.fast.preheader.split, %L381.postloop.mv.fast.mv.fast.preheader.split
  call void @odessy.fast.trap(i32 2)
  unreachable

odessy.fasttrap82:                                ; preds = %L175.postloop.mv.fast
  call void @odessy.fast.trap(i32 3)
  unreachable

odessy.fasttrap83:                                ; preds = %L237.postloop.mv.fast
  call void @odessy.fast.trap(i32 4)
  unreachable

odessy.fasttrap84:                                ; preds = %L303.postloop.mv.fast
  call void @odessy.fast.trap(i32 5)
  unreachable
}

; Function Attrs: noinline optnone
define nonnull ptr @jfptr_sha256_sum_148(ptr %"function::Core.Function", ptr noalias noundef readonly captures(none) %"args::Any[]", i32 %"nargs::UInt32") local_unnamed_addr #1 {
top:
  %pgcstack = call ptr inttoptr (i64 4297588508 to ptr)(i64 4297588544) #9
  %0 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 0
  %1 = load ptr, ptr %0, align 8, !tbaa !26, !invariant.load !10, !alias.scope !217, !noalias !218, !nonnull !10, !dereferenceable !219, !align !220
  %2 = getelementptr inbounds nuw i8, ptr %"args::Any[]", i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !26, !invariant.load !10, !alias.scope !217, !noalias !218, !nonnull !10, !dereferenceable !220, !align !220
  %.unbox = load i64, ptr %3, align 8, !tbaa !221, !alias.scope !82, !noalias !83
  %4 = call swiftcc i32 @julia_sha256_sum_147(ptr nonnull swiftself %pgcstack, ptr %1, i64 signext %.unbox)
  %box_UInt32 = call nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext %4) #10
  ret ptr %box_UInt32
}

; Function Attrs: mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite)
declare nonnull align 8 dereferenceable(4) ptr @ijl_box_uint32(i32 zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite)
declare noalias nonnull ptr @ijl_gc_small_alloc(ptr, i32, i32, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind
declare void @odessy.fast.trap(i32) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind "julia.fsig"="sha256_sum(Array{UInt8, 1}, Int64)" "probe-stack"="inline-asm" }
attributes #1 = { noinline optnone "probe-stack"="inline-asm" }
attributes #2 = { mustprogress nounwind willreturn memory(read, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn allockind("alloc") allocsize(2) memory(argmem: read, inaccessiblemem: readwrite) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind willreturn memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Julia, file: !3, producer: "julia", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, nameTableKind: GNU)
!3 = !DIFile(filename: "julia", directory: ".")
!4 = distinct !DISubprogram(name: "sha256_sum", linkageName: "julia_sha256_sum_147", scope: null, file: !5, line: 17, type: !6, scopeLine: 17, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!5 = !DIFile(filename: "/Users/ebrah/Project/compiler/ODeSSy/native_bench/sha256.jl", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !16}
!8 = !DIBasicType(name: "UInt32", size: 32, encoding: DW_ATE_unsigned)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "#sha256_sum", align: 8, elements: !10, runtimeLang: DW_LANG_Julia, identifier: "4570674704")
!10 = !{}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Array", baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "jl_value_t", file: !14, line: 71, align: 64, elements: !15)
!14 = !DIFile(filename: "julia.h", directory: "")
!15 = !{!12}
!16 = !DIBasicType(name: "Int64", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "#self#", arg: 1, scope: !4, file: !5, line: 17, type: !9)
!19 = !DILocalVariable(name: "data", arg: 2, scope: !4, file: !5, line: 17, type: !11)
!20 = !DILocalVariable(name: "iters", arg: 3, scope: !4, file: !5, line: 17, type: !16)
!21 = !{!22, !22, i64 0}
!22 = !{!"jtbaa_gcframe", !23, i64 0}
!23 = !{!"jtbaa", !24, i64 0}
!24 = !{!"jtbaa"}
!25 = !DILocation(line: 17, scope: !4)
!26 = !{!27, !27, i64 0}
!27 = !{!"jtbaa_const", !23, i64 0}
!28 = !DILocation(line: 588, scope: !29, inlinedAt: !32)
!29 = distinct !DISubprogram(name: "GenericMemory;", linkageName: "GenericMemory", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!30 = !DIFile(filename: "boot.jl", directory: ".")
!31 = !DISubroutineType(types: !10)
!32 = !DILocation(line: 647, scope: !33, inlinedAt: !34)
!33 = distinct !DISubprogram(name: "Array;", linkageName: "Array", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DILocation(line: 19, scope: !4)
!35 = !{!36, !36, i64 0}
!36 = !{!"jtbaa_tag", !37, i64 0}
!37 = !{!"jtbaa_data", !23, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"jtbaa_memoryptr", !40, i64 0}
!40 = !{!"jtbaa_array", !23, i64 0}
!41 = !{!42}
!42 = !{!"jnoalias_typemd", !43}
!43 = !{!"jnoalias"}
!44 = !{!45, !46, !47, !48}
!45 = !{!"jnoalias_gcframe", !43}
!46 = !{!"jnoalias_stack", !43}
!47 = !{!"jnoalias_data", !43}
!48 = !{!"jnoalias_const", !43}
!49 = !{!50, !50, i64 0}
!50 = !{!"jtbaa_memorylen", !40, i64 0}
!51 = !DILocation(line: 648, scope: !33, inlinedAt: !34)
!52 = !{!53, !53, i64 0}
!53 = !{!"jtbaa_arrayptr", !40, i64 0}
!54 = !{!23, !23, i64 0}
!55 = !{!47, !42}
!56 = !{!45, !46, !48}
!57 = !DILocation(line: 0, scope: !4)
!58 = !DILocation(line: 83, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "<;", linkageName: "<", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!60 = !DIFile(filename: "int.jl", directory: ".")
!61 = !DILocation(line: 425, scope: !62, inlinedAt: !64)
!62 = distinct !DISubprogram(name: ">;", linkageName: ">", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!63 = !DIFile(filename: "operators.jl", directory: ".")
!64 = !DILocation(line: 688, scope: !65, inlinedAt: !67)
!65 = distinct !DISubprogram(name: "isempty;", linkageName: "isempty", scope: !66, file: !66, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!66 = !DIFile(filename: "range.jl", directory: ".")
!67 = !DILocation(line: 917, scope: !68, inlinedAt: !69)
!68 = distinct !DISubprogram(name: "iterate;", linkageName: "iterate", scope: !66, file: !66, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!69 = !DILocation(line: 20, scope: !4)
!70 = !DILocation(line: 26, scope: !4)
!71 = !DILocation(line: 54, scope: !4)
!72 = !DILocation(line: 88, scope: !73, inlinedAt: !74)
!73 = distinct !DISubprogram(name: "*;", linkageName: "*", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!74 = !DILocation(line: 27, scope: !4)
!75 = !DILocation(line: 32, scope: !4)
!76 = !DILocation(line: 920, scope: !77, inlinedAt: !79)
!77 = distinct !DISubprogram(name: "getindex;", linkageName: "getindex", scope: !78, file: !78, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!78 = !DIFile(filename: "essentials.jl", directory: ".")
!79 = !DILocation(line: 30, scope: !4)
!80 = !{!81, !81, i64 0}
!81 = !{!"jtbaa_arraybuf", !37, i64 0}
!82 = !{!47}
!83 = !{!45, !46, !42, !48}
!84 = !DILocation(line: 923, scope: !85, inlinedAt: !86)
!85 = distinct !DISubprogram(name: "toUInt32;", linkageName: "toUInt32", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!86 = !DILocation(line: 961, scope: !87, inlinedAt: !79)
!87 = distinct !DISubprogram(name: "UInt32;", linkageName: "UInt32", scope: !30, file: !30, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!88 = !DILocation(line: 535, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "<<;", linkageName: "<<", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!90 = !DILocation(line: 542, scope: !89, inlinedAt: !79)
!91 = !DILocation(line: 378, scope: !92, inlinedAt: !79)
!92 = distinct !DISubprogram(name: "|;", linkageName: "|", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!93 = !DILocation(line: 991, scope: !94, inlinedAt: !96)
!94 = distinct !DISubprogram(name: "_setindex!;", linkageName: "_setindex!", scope: !95, file: !95, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DIFile(filename: "array.jl", directory: ".")
!96 = !DILocation(line: 986, scope: !97, inlinedAt: !79)
!97 = distinct !DISubprogram(name: "setindex!;", linkageName: "setindex!", scope: !95, file: !95, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!98 = !{!47, !99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!45, !46, !42, !48, !102}
!102 = distinct !{!102, !100}
!103 = !{!"branch_weights", i32 8, i32 8}
!104 = !DILocation(line: 88, scope: !73, inlinedAt: !105)
!105 = !DILocation(line: 29, scope: !4)
!106 = distinct !{!106, !107, !108}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !DILocation(line: 921, scope: !68, inlinedAt: !75)
!110 = distinct !{!110, !107}
!111 = !DILocation(line: 990, scope: !94, inlinedAt: !96)
!112 = !DILocation(line: 519, scope: !59, inlinedAt: !111)
!113 = !DILocation(line: 637, scope: !114, inlinedAt: !109)
!114 = distinct !DISubprogram(name: "==;", linkageName: "==", scope: !115, file: !115, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!115 = !DIFile(filename: "promotion.jl", directory: ".")
!116 = distinct !{!116, !117, !118, !119, !120}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!"llvm.loop.vectorize.enable", i1 false}
!119 = !{!"llvm.loop.licm_versioning.disable"}
!120 = !{!"llvm.loop.distribute.enable", i1 false}
!121 = !DILocation(line: 919, scope: !77, inlinedAt: !122)
!122 = !DILocation(line: 34, scope: !4)
!123 = !DILocation(line: 920, scope: !77, inlinedAt: !122)
!124 = !DILocation(line: 378, scope: !92, inlinedAt: !125)
!125 = !DILocation(line: 15, scope: !126, inlinedAt: !122)
!126 = distinct !DISubprogram(name: "rotr;", linkageName: "rotr", scope: !5, file: !5, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!127 = !DILocation(line: 379, scope: !128, inlinedAt: !122)
!128 = distinct !DISubprogram(name: "xor;", linkageName: "xor", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!129 = !DILocation(line: 534, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: ">>;", linkageName: ">>", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!131 = !DILocation(line: 540, scope: !130, inlinedAt: !122)
!132 = !DILocation(line: 920, scope: !77, inlinedAt: !133)
!133 = !DILocation(line: 35, scope: !4)
!134 = !DILocation(line: 378, scope: !92, inlinedAt: !135)
!135 = !DILocation(line: 15, scope: !126, inlinedAt: !133)
!136 = !DILocation(line: 379, scope: !128, inlinedAt: !133)
!137 = !DILocation(line: 534, scope: !130, inlinedAt: !138)
!138 = !DILocation(line: 540, scope: !130, inlinedAt: !133)
!139 = !DILocation(line: 920, scope: !77, inlinedAt: !140)
!140 = !DILocation(line: 36, scope: !4)
!141 = !DILocation(line: 87, scope: !142, inlinedAt: !143)
!142 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!143 = !DILocation(line: 642, scope: !144, inlinedAt: !140)
!144 = distinct !DISubprogram(name: "+;", linkageName: "+", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!145 = !DILocation(line: 87, scope: !142, inlinedAt: !146)
!146 = !DILocation(line: 599, scope: !147, inlinedAt: !143)
!147 = distinct !DISubprogram(name: "afoldl;", linkageName: "afoldl", scope: !63, file: !63, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!148 = !DILocation(line: 991, scope: !94, inlinedAt: !149)
!149 = !DILocation(line: 986, scope: !97, inlinedAt: !140)
!150 = !DILocation(line: 921, scope: !68, inlinedAt: !151)
!151 = !DILocation(line: 37, scope: !4)
!152 = !{!42, !46}
!153 = !{!45, !47, !48}
!154 = !DILocation(line: 919, scope: !77, inlinedAt: !155)
!155 = !DILocation(line: 42, scope: !4)
!156 = !DILocation(line: 920, scope: !77, inlinedAt: !155)
!157 = !DILocation(line: 48, scope: !4)
!158 = !DILocation(line: 378, scope: !92, inlinedAt: !159)
!159 = !DILocation(line: 15, scope: !126, inlinedAt: !160)
!160 = !DILocation(line: 40, scope: !4)
!161 = !DILocation(line: 379, scope: !128, inlinedAt: !160)
!162 = !DILocation(line: 353, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "&;", linkageName: "&", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!164 = !DILocation(line: 41, scope: !4)
!165 = !DILocation(line: 327, scope: !166, inlinedAt: !164)
!166 = distinct !DISubprogram(name: "~;", linkageName: "~", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!167 = !DILocation(line: 87, scope: !142, inlinedAt: !168)
!168 = !DILocation(line: 642, scope: !144, inlinedAt: !155)
!169 = !DILocation(line: 379, scope: !128, inlinedAt: !164)
!170 = !DILocation(line: 87, scope: !142, inlinedAt: !171)
!171 = !DILocation(line: 599, scope: !147, inlinedAt: !168)
!172 = !DILocation(line: 87, scope: !142, inlinedAt: !173)
!173 = !DILocation(line: 600, scope: !147, inlinedAt: !168)
!174 = !DILocation(line: 378, scope: !92, inlinedAt: !175)
!175 = !DILocation(line: 15, scope: !126, inlinedAt: !176)
!176 = !DILocation(line: 43, scope: !4)
!177 = !DILocation(line: 379, scope: !128, inlinedAt: !176)
!178 = !DILocation(line: 379, scope: !128, inlinedAt: !179)
!179 = !DILocation(line: 44, scope: !4)
!180 = !DILocation(line: 353, scope: !163, inlinedAt: !179)
!181 = !DILocation(line: 87, scope: !142, inlinedAt: !182)
!182 = !DILocation(line: 45, scope: !4)
!183 = !DILocation(line: 87, scope: !142, inlinedAt: !184)
!184 = !DILocation(line: 46, scope: !4)
!185 = !DILocation(line: 87, scope: !142, inlinedAt: !186)
!186 = !DILocation(line: 47, scope: !4)
!187 = !DILocation(line: 921, scope: !68, inlinedAt: !157)
!188 = !DILocation(line: 637, scope: !114, inlinedAt: !187)
!189 = distinct !{!189, !117, !118, !119, !120}
!190 = !DILocation(line: 87, scope: !142, inlinedAt: !191)
!191 = !DILocation(line: 49, scope: !4)
!192 = !DILocation(line: 87, scope: !142, inlinedAt: !193)
!193 = !DILocation(line: 50, scope: !4)
!194 = !DILocation(line: 637, scope: !114, inlinedAt: !195)
!195 = !DILocation(line: 921, scope: !68, inlinedAt: !196)
!196 = !DILocation(line: 51, scope: !4)
!197 = !DILocation(line: 87, scope: !142, inlinedAt: !198)
!198 = !DILocation(line: 52, scope: !4)
!199 = !DILocation(line: 637, scope: !114, inlinedAt: !200)
!200 = !DILocation(line: 921, scope: !68, inlinedAt: !201)
!201 = !DILocation(line: 53, scope: !4)
!202 = !{!47, !203}
!203 = distinct !{!203, !204}
!204 = distinct !{!204, !"LVerDomain"}
!205 = !{!45, !46, !42, !48, !206}
!206 = distinct !{!206, !204}
!207 = distinct !{!207, !107, !108}
!208 = distinct !{!208, !107}
!209 = !DILocation(line: 86, scope: !210, inlinedAt: !111)
!210 = distinct !DISubprogram(name: "-;", linkageName: "-", scope: !60, file: !60, type: !31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!211 = !DILocation(line: 919, scope: !77, inlinedAt: !133)
!212 = !DILocation(line: 519, scope: !59, inlinedAt: !213)
!213 = !DILocation(line: 990, scope: !94, inlinedAt: !149)
!214 = !DILocation(line: 637, scope: !114, inlinedAt: !150)
!215 = distinct !{!215, !117, !118, !119, !120}
!216 = !DILocation(line: 86, scope: !210, inlinedAt: !213)
!217 = !{!48}
!218 = !{!45, !46, !47, !42}
!219 = !{i64 24}
!220 = !{i64 8}
!221 = !{!222, !222, i64 0}
!222 = !{!"jtbaa_immut", !223, i64 0}
!223 = !{!"jtbaa_value", !37, i64 0}
