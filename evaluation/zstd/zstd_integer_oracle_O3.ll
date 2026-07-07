; ModuleID = 'evaluation/zstd/zstd_integer_O3.ll'
source_filename = "/home/amiralie1380/michigan/pl/zstd/lib/compress/zstd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_symbolEncodingTypeStats_t = type { i32, i32, i32, i64, i64, i32 }
%struct.seqStoreSplits = type { ptr, i64 }
%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_Trace = type { i32, i32, i32, i32, i64, i64, i64, ptr, ptr, ptr }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i64, %struct.ZSTD_cwksp, i64, i64, i64, i64, %struct.XXH64_state_s, %struct.ZSTD_customMem, ptr, i64, %struct.SeqCollector, i32, i32, %struct.SeqStore_t, %struct.ldmState_t, ptr, i64, %struct.RawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i64, i32, ptr, i64, i64, i64, i64, ptr, i64, i64, i64, i32, i32, %struct.ZSTD_inBuffer_s, i64, i64, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s, i64, %struct.ZSTD_blockSplitCtx, ptr, i64 }
%struct.ZSTD_cwksp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.SeqCollector = type { i32, ptr, i64, i64 }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i64], [64 x %struct.ldmMatchCandidate_t] }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }
%struct.ZSTD_blockState_t = type { ptr, ptr, %struct.ZSTD_MatchState_t }
%struct.ZSTD_MatchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_localDict = type { ptr, ptr, i64, i32, ptr }
%struct.ZSTD_prefixDict_s = type { ptr, i64, i32 }
%struct.ZSTD_blockSplitCtx = type { %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, [196 x i32], %struct.ZSTD_entropyCTablesMetadata_t }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i64 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i64, i64 }
%struct.BlockSummary = type { i64, i64, i64 }
%struct.ZSTD_SequencePosition = type { i32, i32, i64 }

@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@ZSTD_selectBlockCompressor.blockCompressor = internal unnamed_addr constant [4 x [10 x ptr]] [[10 x ptr] [ptr @ZSTD_compressBlock_fast, ptr @ZSTD_compressBlock_fast, ptr @ZSTD_compressBlock_doubleFast, ptr @ZSTD_compressBlock_greedy, ptr @ZSTD_compressBlock_lazy, ptr @ZSTD_compressBlock_lazy2, ptr @ZSTD_compressBlock_btlazy2, ptr @ZSTD_compressBlock_btopt, ptr @ZSTD_compressBlock_btultra, ptr @ZSTD_compressBlock_btultra2], [10 x ptr] [ptr @ZSTD_compressBlock_fast_extDict, ptr @ZSTD_compressBlock_fast_extDict, ptr @ZSTD_compressBlock_doubleFast_extDict, ptr @ZSTD_compressBlock_greedy_extDict, ptr @ZSTD_compressBlock_lazy_extDict, ptr @ZSTD_compressBlock_lazy2_extDict, ptr @ZSTD_compressBlock_btlazy2_extDict, ptr @ZSTD_compressBlock_btopt_extDict, ptr @ZSTD_compressBlock_btultra_extDict, ptr @ZSTD_compressBlock_btultra_extDict], [10 x ptr] [ptr @ZSTD_compressBlock_fast_dictMatchState, ptr @ZSTD_compressBlock_fast_dictMatchState, ptr @ZSTD_compressBlock_doubleFast_dictMatchState, ptr @ZSTD_compressBlock_greedy_dictMatchState, ptr @ZSTD_compressBlock_lazy_dictMatchState, ptr @ZSTD_compressBlock_lazy2_dictMatchState, ptr @ZSTD_compressBlock_btlazy2_dictMatchState, ptr @ZSTD_compressBlock_btopt_dictMatchState, ptr @ZSTD_compressBlock_btultra_dictMatchState, ptr @ZSTD_compressBlock_btultra_dictMatchState], [10 x ptr] [ptr null, ptr null, ptr null, ptr @ZSTD_compressBlock_greedy_dedicatedDictSearch, ptr @ZSTD_compressBlock_lazy_dedicatedDictSearch, ptr @ZSTD_compressBlock_lazy2_dedicatedDictSearch, ptr null, ptr null, ptr null, ptr null]], align 16
@ZSTD_selectBlockCompressor.rowBasedBlockCompressors = internal unnamed_addr constant [4 x [3 x ptr]] [[3 x ptr] [ptr @ZSTD_compressBlock_greedy_row, ptr @ZSTD_compressBlock_lazy_row, ptr @ZSTD_compressBlock_lazy2_row], [3 x ptr] [ptr @ZSTD_compressBlock_greedy_extDict_row, ptr @ZSTD_compressBlock_lazy_extDict_row, ptr @ZSTD_compressBlock_lazy2_extDict_row], [3 x ptr] [ptr @ZSTD_compressBlock_greedy_dictMatchState_row, ptr @ZSTD_compressBlock_lazy_dictMatchState_row, ptr @ZSTD_compressBlock_lazy2_dictMatchState_row], [3 x ptr] [ptr @ZSTD_compressBlock_greedy_dedicatedDictSearch_row, ptr @ZSTD_compressBlock_lazy_dedicatedDictSearch_row, ptr @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row]], align 16
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16
@LL_defaultNorm = internal constant [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@OF_defaultNorm = internal constant [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@ML_defaultNorm = internal constant [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@ZSTD_optimalBlockSize.splitLevels = internal unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@attachDictSizeCutoffs = internal unnamed_addr constant [10 x i64] [i64 8192, i64 8192, i64 16384, i64 32768, i64 32768, i64 32768, i64 32768, i64 32768, i64 8192, i64 8192], align 16

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 1, 0) i64 @ZSTD_compressBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -71777214294589697
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 8
  %5 = add nuw i64 %4, %0
  %6 = icmp ult i64 %0, 131072
  %7 = sub nuw nsw i64 131072, %0
  %8 = lshr i64 %7, 11
  %9 = select i1 %6, i64 %8, i64 0
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 %9), !nosanitize !8
  %11 = freeze { i64, i1 } %10
  %12 = extractvalue { i64, i1 } %11, 1, !nosanitize !8
  br i1 %12, label %13, label %14, !prof !9, !nosanitize !8

13:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

14:                                               ; preds = %3
  %15 = extractvalue { i64, i1 } %11, 0, !nosanitize !8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i64 [ -72, %17 ], [ %15, %14 ]
  ret i64 %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtx() local_unnamed_addr #4 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #34, !srcloc !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #34, !srcloc !11
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #34, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 1
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = lshr i32 %11, 8
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %14, %9, %6, %3
  %18 = phi i32 [ 0, %9 ], [ %16, %14 ], [ 0, %6 ], [ 0, %3 ]
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %18, ptr %19, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !46
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %17, %0
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCCtx_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  %7 = xor i1 %3, %6
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  br i1 %3, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr %2(ptr noundef %11, i64 noundef 5280) #35, !inline_history !50
  br label %15

13:                                               ; preds = %8
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #36
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %20 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #34, !srcloc !10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #34, !srcloc !11
  %24 = icmp ugt i32 %20, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #34, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 1
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = lshr i32 %27, 8
  %32 = and i32 %31, 1
  br label %33

33:                                               ; preds = %30, %25, %22, %18
  %34 = phi i32 [ 0, %25 ], [ %32, %30 ], [ 0, %22 ], [ 0, %18 ]
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %34, ptr %35, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %36, i8 0, i64 224, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %37, align 4, !tbaa !46
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %38, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %33, %15, %1
  %40 = phi ptr [ null, %1 ], [ %16, %33 ], [ null, %15 ]
  ret ptr %40
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ugt i64 %1, 5280
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %70

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5280
  %10 = icmp eq ptr %0, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 63
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %0, i8 0, i64 5280, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %0, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %12, ptr %18, align 8, !tbaa !51
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %9, ptr %19, align 8, !tbaa !51
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %9, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %9, ptr %21, align 8, !tbaa !51
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %16, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %16, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %25, align 4, !tbaa !4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 1, ptr %26, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %1, ptr %27, align 8, !tbaa !52
  %28 = add i64 %1, -5280
  %29 = sub i64 %28, %14
  %30 = icmp ult i64 %29, 20184
  br i1 %30, label %70, label %31

31:                                               ; preds = %11
  %32 = icmp samesign ult i64 %1, 10912
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i8 1, ptr %24, align 8, !tbaa !53
  br label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 10912
  store ptr %35, ptr %19, align 8, !tbaa !54
  store ptr %35, ptr %20, align 8, !tbaa !55
  store ptr %35, ptr %21, align 8, !tbaa !56
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi ptr [ %9, %33 ], [ %35, %34 ]
  %38 = phi ptr [ null, %33 ], [ %9, %34 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store ptr %38, ptr %39, align 8, !tbaa !57
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 5632
  %41 = icmp ugt ptr %40, %12
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8 1, ptr %24, align 8, !tbaa !53
  br label %44

43:                                               ; preds = %36
  store ptr %40, ptr %19, align 8, !tbaa !54
  store ptr %40, ptr %20, align 8, !tbaa !55
  store ptr %40, ptr %21, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i64 [ 8920, %42 ], [ 14552, %43 ]
  %46 = phi ptr [ null, %42 ], [ %37, %43 ]
  %47 = phi ptr [ %37, %42 ], [ %40, %43 ]
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 %45
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %46, ptr %49, align 8, !tbaa !58
  %50 = icmp ugt ptr %48, %12
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i8 1, ptr %24, align 8, !tbaa !53
  br label %53

52:                                               ; preds = %44
  store ptr %48, ptr %19, align 8, !tbaa !54
  store ptr %48, ptr %20, align 8, !tbaa !55
  store ptr %48, ptr %21, align 8, !tbaa !56
  br label %53

53:                                               ; preds = %52, %51
  %54 = phi ptr [ null, %51 ], [ %47, %52 ]
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %54, ptr %55, align 8, !tbaa !59
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %56, align 8, !tbaa !60
  %57 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #34, !srcloc !10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #34, !srcloc !11
  %61 = icmp ugt i32 %57, 6
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #34, !srcloc !12
  %64 = extractvalue { i32, i32, i32 } %63, 1
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 1
  br label %67

67:                                               ; preds = %62, %59, %53
  %68 = phi i32 [ %66, %62 ], [ 0, %59 ], [ 0, %53 ]
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %68, ptr %69, align 8, !tbaa !13
  br label %70

70:                                               ; preds = %67, %11, %8, %2
  %71 = phi ptr [ null, %8 ], [ null, %2 ], [ null, %11 ], [ %0, %67 ]
  ret ptr %71
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #35, !inline_history !63
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #35
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #35, !inline_history !64
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #35
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
  %35 = phi i64 [ -64, %3 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CCtx(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %12), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %3
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %19, null
  %25 = select i1 %24, i64 0, i64 %21
  %26 = icmp eq ptr %23, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = icmp eq ptr %29, %23
  %31 = select i1 %30, i64 0, i64 6080
  %32 = getelementptr i8, ptr %23, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %29 to i64
  %36 = sub i64 %34, %35
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %36), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %27
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i64 [ %41, %40 ], [ 0, %16 ]
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 %43), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !9, !nosanitize !8

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %42
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %49 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %48), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %50, label %51, label %52, !prof !9, !nosanitize !8

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

52:                                               ; preds = %47
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !8
  br label %54

54:                                               ; preds = %52, %1
  %55 = phi i64 [ %53, %52 ], [ 0, %1 ]
  ret i64 %55
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CStream(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %12), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %3
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %19, null
  %25 = select i1 %24, i64 0, i64 %21
  %26 = icmp eq ptr %23, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = icmp eq ptr %29, %23
  %31 = select i1 %30, i64 0, i64 6080
  %32 = getelementptr i8, ptr %23, i64 40
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %29 to i64
  %36 = sub i64 %34, %35
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %36), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %27
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i64 [ %41, %40 ], [ 0, %16 ]
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 %43), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %45, label %46, label %47, !prof !9, !nosanitize !8

46:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

47:                                               ; preds = %42
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %49 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %48), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %50, label %51, label %52, !prof !9, !nosanitize !8

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

52:                                               ; preds = %47
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !8
  br label %54

54:                                               ; preds = %52, %1
  %55 = phi i64 [ %53, %52 ], [ 0, %1 ]
  ret i64 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ZSTD_getSeqStore(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 976
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtxParams() local_unnamed_addr #9 {
  %1 = tail call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #37
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i64 176
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i64 184
  %9 = load ptr, ptr %8, align 8
  tail call void %5(ptr noundef %9, ptr noundef nonnull %0) #35, !inline_history !64
  br label %11

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %0) #35
  br label %11

11:                                               ; preds = %10, %7, %1
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_reset(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i64 [ 0, %3 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_init(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %6, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i64 [ 0, %4 ], [ -1, %2 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !72
  %6 = add i32 %5, -32
  %7 = icmp ult i32 %6, -22
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = add i32 %10, -31
  %12 = icmp ult i32 %11, -25
  br i1 %12, label %62, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = add i32 %15, -31
  %17 = icmp ult i32 %16, -25
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !75
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -30
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %25 = load i32, ptr %24, align 8, !tbaa !76
  %26 = add i32 %25, -8
  %27 = icmp ult i32 %26, -5
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 131072
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %62, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 9
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %38, ptr noundef nonnull readonly align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !78
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull readonly align 4 dereferenceable(12) %40, i64 12, i1 false), !tbaa.struct !79
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = add nsw i32 %34, -6
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  store i32 2, ptr %41, align 8, !tbaa !80
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %46 = icmp samesign ugt i32 %34, 6
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  store i32 2, ptr %45, align 4, !tbaa !81
  br label %57

48:                                               ; preds = %37
  %49 = icmp samesign ugt i32 %5, 14
  %50 = select i1 %49, i32 1, i32 2
  store i32 %50, ptr %41, align 8, !tbaa !80
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 2, ptr %51, align 4, !tbaa !81
  br label %57

52:                                               ; preds = %44
  %53 = icmp samesign ugt i32 %5, 16
  %54 = select i1 %53, i32 1, i32 2
  store i32 %54, ptr %45, align 4, !tbaa !81
  %55 = icmp samesign ugt i32 %5, 26
  %56 = select i1 %55, i32 1, i32 2
  br label %57

57:                                               ; preds = %52, %48, %47
  %58 = phi i32 [ %56, %52 ], [ 2, %48 ], [ 2, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %58, ptr %59, align 8, !tbaa !82
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 131072, ptr %60, align 8, !tbaa !83
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 2, ptr %61, align 8, !tbaa !84
  br label %62

62:                                               ; preds = %57, %32, %23, %18, %13, %8, %4, %2
  %63 = phi i64 [ 0, %57 ], [ -42, %32 ], [ -1, %2 ], [ -42, %4 ], [ -42, %23 ], [ -42, %18 ], [ -42, %13 ], [ -42, %8 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_checkCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8, !tbaa !72
  %3 = add i32 %2, -32
  %4 = icmp ult i32 %3, -22
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !73
  %8 = add i32 %7, -31
  %9 = icmp ult i32 %8, -25
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = add i32 %12, -31
  %14 = icmp ult i32 %13, -25
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !75
  %18 = add i32 %17, -31
  %19 = icmp ult i32 %18, -30
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = add i32 %22, -8
  %24 = icmp ult i32 %23, -5
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 131072
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa !77
  %32 = add i32 %31, -10
  %33 = icmp ult i32 %32, -9
  %34 = select i1 %33, i64 -42, i64 0
  br label %35

35:                                               ; preds = %29, %20, %15, %10, %5, %1
  %36 = phi i64 [ -42, %1 ], [ %34, %29 ], [ -42, %20 ], [ -42, %15 ], [ -42, %10 ], [ -42, %5 ]
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @ZSTD_cParam_getBounds(i32 noundef %0) local_unnamed_addr #8 {
  switch i32 %0, label %19 [
    i32 100, label %2
    i32 101, label %20
    i32 102, label %3
    i32 103, label %3
    i32 104, label %4
    i32 105, label %5
    i32 106, label %6
    i32 107, label %7
    i32 200, label %8
    i32 201, label %8
    i32 202, label %8
    i32 400, label %9
    i32 401, label %9
    i32 402, label %9
    i32 1005, label %8
    i32 160, label %10
    i32 161, label %3
    i32 162, label %11
    i32 163, label %12
    i32 164, label %13
    i32 500, label %8
    i32 1000, label %8
    i32 10, label %8
    i32 1001, label %14
    i32 1002, label %10
    i32 130, label %15
    i32 1004, label %16
    i32 1006, label %8
    i32 1007, label %8
    i32 1008, label %8
    i32 1009, label %8
    i32 1010, label %10
    i32 1017, label %17
    i32 1011, label %10
    i32 1012, label %8
    i32 1013, label %10
    i32 1014, label %8
    i32 1015, label %18
    i32 1016, label %10
  ]

2:                                                ; preds = %1
  br label %20

3:                                                ; preds = %1, %1, %1
  br label %20

4:                                                ; preds = %1
  br label %20

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %20

9:                                                ; preds = %1, %1, %1
  br label %20

10:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %20

11:                                               ; preds = %1
  br label %20

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  br label %20

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  br label %20

18:                                               ; preds = %1
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %21 = phi i64 [ 0, %19 ], [ 98784116736, %2 ], [ 34359738369, %12 ], [ 128849018886, %3 ], [ 133143986186, %1 ], [ 128849018881, %4 ], [ 30064771075, %5 ], [ 562949953421312, %6 ], [ 38654705665, %7 ], [ 4294967296, %8 ], [ 562949953422336, %18 ], [ 107374182400, %13 ], [ 0, %9 ], [ 12884901888, %14 ], [ 9223372032559808512, %16 ], [ 562949953422652, %15 ], [ 8589934592, %10 ], [ 25769803776, %17 ], [ 17592186044420, %11 ]
  %22 = phi i64 [ -40, %19 ], [ 0, %2 ], [ 0, %12 ], [ 0, %3 ], [ 0, %1 ], [ 0, %4 ], [ 0, %5 ], [ 0, %6 ], [ 0, %7 ], [ 0, %8 ], [ 0, %18 ], [ 0, %13 ], [ 0, %9 ], [ 0, %14 ], [ 0, %16 ], [ 0, %15 ], [ 0, %10 ], [ 0, %17 ], [ 0, %11 ]
  %23 = insertvalue { i64, i64 } poison, i64 %22, 0
  %24 = insertvalue { i64, i64 } %23, i64 %21, 1
  ret { i64, i64 } %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_minCLevel() local_unnamed_addr #8 {
  ret i32 -131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_maxCLevel() local_unnamed_addr #8 {
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 2147483648) i64 @ZSTD_CCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  switch i32 %1, label %20 [
    i32 100, label %8
    i32 102, label %8
    i32 103, label %8
    i32 104, label %8
    i32 105, label %8
    i32 106, label %8
    i32 107, label %8
    i32 1017, label %8
  ]

8:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %9, align 4, !tbaa !86
  br label %10

10:                                               ; preds = %8, %3
  switch i32 %1, label %20 [
    i32 400, label %11
    i32 100, label %17
    i32 101, label %17
    i32 102, label %17
    i32 103, label %17
    i32 104, label %17
    i32 105, label %17
    i32 106, label %17
    i32 107, label %17
    i32 164, label %17
    i32 10, label %17
    i32 200, label %17
    i32 201, label %17
    i32 202, label %17
    i32 1000, label %17
    i32 1001, label %17
    i32 1002, label %17
    i32 401, label %17
    i32 402, label %17
    i32 500, label %17
    i32 1005, label %17
    i32 160, label %17
    i32 161, label %17
    i32 162, label %17
    i32 163, label %17
    i32 130, label %17
    i32 1004, label %17
    i32 1006, label %17
    i32 1007, label %17
    i32 1008, label %17
    i32 1009, label %17
    i32 1010, label %17
    i32 1017, label %17
    i32 1011, label %17
    i32 1012, label %17
    i32 1013, label %17
    i32 1014, label %17
    i32 1015, label %17
    i32 1016, label %17
  ]

11:                                               ; preds = %10
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %15 = load i64, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %11, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %18, i32 noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %17, %13, %10, %7
  %21 = phi i64 [ -40, %13 ], [ -40, %10 ], [ %19, %17 ], [ -60, %7 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -42, 2147483648) i64 @ZSTD_CCtxParams_setParameter(ptr noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  switch i32 %1, label %220 [
    i32 10, label %4
    i32 100, label %8
    i32 101, label %21
    i32 102, label %29
    i32 103, label %37
    i32 104, label %45
    i32 105, label %50
    i32 106, label %54
    i32 107, label %59
    i32 200, label %64
    i32 201, label %69
    i32 202, label %74
    i32 1000, label %80
    i32 1001, label %85
    i32 1002, label %90
    i32 400, label %95
    i32 401, label %98
    i32 402, label %101
    i32 500, label %104
    i32 1005, label %107
    i32 160, label %112
    i32 161, label %117
    i32 162, label %125
    i32 163, label %133
    i32 164, label %138
    i32 130, label %143
    i32 1004, label %152
    i32 1006, label %157
    i32 1007, label %162
    i32 1008, label %167
    i32 1009, label %172
    i32 1010, label %177
    i32 1017, label %182
    i32 1011, label %187
    i32 1012, label %192
    i32 1013, label %197
    i32 1014, label %202
    i32 1015, label %207
    i32 1016, label %215
  ]

4:                                                ; preds = %3
  %5 = icmp ugt i32 %2, 1
  br i1 %5, label %220, label %6

6:                                                ; preds = %4
  store i32 %2, ptr %0, align 8, !tbaa !87
  %7 = zext nneg i32 %2 to i64
  br label %220

8:                                                ; preds = %3
  %9 = icmp slt i32 %2, -131072
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = icmp sgt i32 %2, 22
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %15, align 4, !tbaa !46
  br label %220

16:                                               ; preds = %12, %10, %8
  %17 = phi i32 [ %2, %12 ], [ -131072, %8 ], [ 22, %10 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %17, ptr %18, align 4, !tbaa !46
  %19 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %20 = zext nneg i32 %19 to i64
  br label %220

21:                                               ; preds = %3
  %22 = icmp ne i32 %2, 0
  %23 = add i32 %2, -32
  %24 = icmp ult i32 %23, -22
  %25 = and i1 %22, %24
  br i1 %25, label %220, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %27, align 4, !tbaa !88
  %28 = zext nneg i32 %2 to i64
  br label %220

29:                                               ; preds = %3
  %30 = icmp ne i32 %2, 0
  %31 = add i32 %2, -31
  %32 = icmp ult i32 %31, -25
  %33 = and i1 %30, %32
  br i1 %33, label %220, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %35, align 4, !tbaa !89
  %36 = zext nneg i32 %2 to i64
  br label %220

37:                                               ; preds = %3
  %38 = icmp ne i32 %2, 0
  %39 = add i32 %2, -31
  %40 = icmp ult i32 %39, -25
  %41 = and i1 %38, %40
  br i1 %41, label %220, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %43, align 4, !tbaa !90
  %44 = zext nneg i32 %2 to i64
  br label %220

45:                                               ; preds = %3
  %46 = icmp ugt i32 %2, 30
  br i1 %46, label %220, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %48, align 4, !tbaa !91
  %49 = zext nneg i32 %2 to i64
  br label %220

50:                                               ; preds = %3
  switch i32 %2, label %220 [
    i32 7, label %51
    i32 6, label %51
    i32 5, label %51
    i32 4, label %51
    i32 3, label %51
    i32 0, label %51
  ]

51:                                               ; preds = %50, %50, %50, %50, %50, %50
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %52, align 4, !tbaa !92
  %53 = zext nneg i32 %2 to i64
  br label %220

54:                                               ; preds = %3
  %55 = icmp ugt i32 %2, 131072
  br i1 %55, label %220, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %57, align 4, !tbaa !93
  %58 = zext nneg i32 %2 to i64
  br label %220

59:                                               ; preds = %3
  %60 = icmp ugt i32 %2, 9
  br i1 %60, label %220, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %62, align 4, !tbaa !94
  %63 = zext nneg i32 %2 to i64
  br label %220

64:                                               ; preds = %3
  %65 = icmp ne i32 %2, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %66, ptr %67, align 8, !tbaa !47
  %68 = zext i1 %65 to i64
  br label %220

69:                                               ; preds = %3
  %70 = icmp ne i32 %2, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %71, ptr %72, align 4, !tbaa !95
  %73 = zext i1 %70 to i64
  br label %220

74:                                               ; preds = %3
  %75 = icmp ne i32 %2, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %77, ptr %78, align 8, !tbaa !96
  %79 = zext i1 %75 to i64
  br label %220

80:                                               ; preds = %3
  %81 = icmp ne i32 %2, 0
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %82, ptr %83, align 8, !tbaa !97
  %84 = zext i1 %81 to i64
  br label %220

85:                                               ; preds = %3
  %86 = icmp ugt i32 %2, 3
  br i1 %86, label %220, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %2, ptr %88, align 4, !tbaa !98
  %89 = zext nneg i32 %2 to i64
  br label %220

90:                                               ; preds = %3
  %91 = icmp ugt i32 %2, 2
  br i1 %91, label %220, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %93, align 8, !tbaa !99
  %94 = zext nneg i32 %2 to i64
  br label %220

95:                                               ; preds = %3
  %96 = icmp eq i32 %2, 0
  %97 = select i1 %96, i64 0, i64 -40
  br label %220

98:                                               ; preds = %3
  %99 = icmp eq i32 %2, 0
  %100 = select i1 %99, i64 0, i64 -40
  br label %220

101:                                              ; preds = %3
  %102 = icmp eq i32 %2, 0
  %103 = select i1 %102, i64 0, i64 -40
  br label %220

104:                                              ; preds = %3
  %105 = icmp eq i32 %2, 0
  %106 = select i1 %105, i64 0, i64 -40
  br label %220

107:                                              ; preds = %3
  %108 = icmp ne i32 %2, 0
  %109 = zext i1 %108 to i32
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %109, ptr %110, align 8, !tbaa !100
  %111 = zext i1 %108 to i64
  br label %220

112:                                              ; preds = %3
  %113 = icmp ugt i32 %2, 2
  br i1 %113, label %220, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %2, ptr %115, align 8, !tbaa !82
  %116 = zext nneg i32 %2 to i64
  br label %220

117:                                              ; preds = %3
  %118 = icmp ne i32 %2, 0
  %119 = add i32 %2, -31
  %120 = icmp ult i32 %119, -25
  %121 = and i1 %118, %120
  br i1 %121, label %220, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %123, align 4, !tbaa !101
  %124 = zext nneg i32 %2 to i64
  br label %220

125:                                              ; preds = %3
  %126 = icmp ne i32 %2, 0
  %127 = add i32 %2, -4097
  %128 = icmp ult i32 %127, -4093
  %129 = and i1 %126, %128
  br i1 %129, label %220, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %2, ptr %131, align 4, !tbaa !102
  %132 = zext nneg i32 %2 to i64
  br label %220

133:                                              ; preds = %3
  %134 = icmp ult i32 %2, 9
  br i1 %134, label %135, label %220

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %136, align 8, !tbaa !103
  %137 = zext nneg i32 %2 to i64
  br label %220

138:                                              ; preds = %3
  %139 = icmp ugt i32 %2, 25
  br i1 %139, label %220, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %141, align 8, !tbaa !104
  %142 = zext nneg i32 %2 to i64
  br label %220

143:                                              ; preds = %3
  %144 = icmp eq i32 %2, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = tail call i32 @llvm.smax.i32(i32 %2, i32 1340)
  %147 = icmp sgt i32 %2, 131072
  br i1 %147, label %220, label %148

148:                                              ; preds = %145, %143
  %149 = phi i32 [ 0, %143 ], [ %146, %145 ]
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %150, ptr %151, align 8, !tbaa !105
  br label %220

152:                                              ; preds = %3
  %153 = icmp slt i32 %2, 0
  br i1 %153, label %220, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %2, ptr %155, align 8, !tbaa !106
  %156 = zext nneg i32 %2 to i64
  br label %220

157:                                              ; preds = %3
  %158 = icmp ugt i32 %2, 1
  br i1 %158, label %220, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %2, ptr %160, align 4, !tbaa !107
  %161 = zext nneg i32 %2 to i64
  br label %220

162:                                              ; preds = %3
  %163 = icmp ugt i32 %2, 1
  br i1 %163, label %220, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %2, ptr %165, align 8, !tbaa !108
  %166 = zext nneg i32 %2 to i64
  br label %220

167:                                              ; preds = %3
  %168 = icmp ugt i32 %2, 1
  br i1 %168, label %220, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %2, ptr %170, align 4, !tbaa !109
  %171 = zext nneg i32 %2 to i64
  br label %220

172:                                              ; preds = %3
  %173 = icmp ugt i32 %2, 1
  br i1 %173, label %220, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %2, ptr %175, align 8, !tbaa !110
  %176 = zext nneg i32 %2 to i64
  br label %220

177:                                              ; preds = %3
  %178 = icmp ugt i32 %2, 2
  br i1 %178, label %220, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %2, ptr %180, align 4, !tbaa !81
  %181 = zext nneg i32 %2 to i64
  br label %220

182:                                              ; preds = %3
  %183 = icmp ugt i32 %2, 6
  br i1 %183, label %220, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %2, ptr %185, align 8, !tbaa !111
  %186 = zext nneg i32 %2 to i64
  br label %220

187:                                              ; preds = %3
  %188 = icmp ugt i32 %2, 2
  br i1 %188, label %220, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %2, ptr %190, align 8, !tbaa !80
  %191 = zext nneg i32 %2 to i64
  br label %220

192:                                              ; preds = %3
  %193 = icmp ugt i32 %2, 1
  br i1 %193, label %220, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %2, ptr %195, align 4, !tbaa !112
  %196 = zext nneg i32 %2 to i64
  br label %220

197:                                              ; preds = %3
  %198 = icmp ugt i32 %2, 2
  br i1 %198, label %220, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %2, ptr %200, align 8, !tbaa !113
  %201 = zext nneg i32 %2 to i64
  br label %220

202:                                              ; preds = %3
  %203 = icmp ugt i32 %2, 1
  br i1 %203, label %220, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %2, ptr %205, align 4, !tbaa !114
  %206 = zext nneg i32 %2 to i64
  br label %220

207:                                              ; preds = %3
  %208 = icmp ne i32 %2, 0
  %209 = add i32 %2, -131073
  %210 = icmp ult i32 %209, -130049
  %211 = and i1 %208, %210
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = zext nneg i32 %2 to i64
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %213, ptr %214, align 8, !tbaa !83
  br label %220

215:                                              ; preds = %3
  %216 = icmp ugt i32 %2, 2
  br i1 %216, label %220, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %2, ptr %218, align 8, !tbaa !84
  %219 = zext nneg i32 %2 to i64
  br label %220

220:                                              ; preds = %217, %215, %212, %207, %204, %202, %199, %197, %194, %192, %189, %187, %184, %182, %179, %177, %174, %172, %169, %167, %164, %162, %159, %157, %154, %152, %148, %145, %140, %138, %135, %133, %130, %125, %122, %117, %114, %112, %107, %104, %101, %98, %95, %92, %90, %87, %85, %80, %74, %69, %64, %61, %59, %56, %54, %51, %50, %47, %45, %42, %37, %34, %29, %26, %21, %16, %14, %6, %4, %3
  %221 = phi i64 [ -42, %215 ], [ %7, %6 ], [ -42, %207 ], [ -40, %3 ], [ -42, %4 ], [ %213, %212 ], [ %28, %26 ], [ -42, %197 ], [ %36, %34 ], [ -42, %21 ], [ %44, %42 ], [ -42, %29 ], [ %49, %47 ], [ -42, %37 ], [ %53, %51 ], [ -42, %45 ], [ %58, %56 ], [ -42, %50 ], [ %63, %61 ], [ -42, %54 ], [ %68, %64 ], [ %73, %69 ], [ %79, %74 ], [ %84, %80 ], [ -42, %59 ], [ -42, %85 ], [ %97, %95 ], [ -42, %90 ], [ %100, %98 ], [ %94, %92 ], [ %103, %101 ], [ %89, %87 ], [ %106, %104 ], [ %219, %217 ], [ %111, %107 ], [ %116, %114 ], [ -42, %202 ], [ %124, %122 ], [ -42, %112 ], [ %132, %130 ], [ -42, %117 ], [ %137, %135 ], [ -42, %125 ], [ %142, %140 ], [ -42, %133 ], [ %150, %148 ], [ -42, %138 ], [ %156, %154 ], [ -42, %145 ], [ %161, %159 ], [ -42, %152 ], [ %166, %164 ], [ -42, %157 ], [ %171, %169 ], [ -42, %162 ], [ %176, %174 ], [ -42, %167 ], [ %181, %179 ], [ -42, %172 ], [ %186, %184 ], [ -42, %177 ], [ %191, %189 ], [ -42, %182 ], [ %196, %194 ], [ -42, %187 ], [ %201, %199 ], [ -42, %192 ], [ %206, %204 ], [ %20, %16 ], [ 3, %14 ]
  ret i64 %221
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = tail call i64 @ZSTD_CCtxParams_getParameter(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtxParams_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #11 {
  switch i32 %1, label %117 [
    i32 10, label %4
    i32 100, label %6
    i32 101, label %9
    i32 102, label %12
    i32 103, label %15
    i32 104, label %18
    i32 105, label %21
    i32 106, label %24
    i32 107, label %27
    i32 200, label %30
    i32 201, label %33
    i32 202, label %36
    i32 1000, label %41
    i32 1001, label %44
    i32 1002, label %47
    i32 400, label %50
    i32 1016, label %112
    i32 1015, label %108
    i32 1014, label %105
    i32 1005, label %53
    i32 160, label %56
    i32 161, label %59
    i32 162, label %62
    i32 163, label %65
    i32 164, label %68
    i32 130, label %71
    i32 1004, label %75
    i32 1006, label %78
    i32 1007, label %81
    i32 1008, label %84
    i32 1009, label %87
    i32 1010, label %90
    i32 1017, label %93
    i32 1011, label %96
    i32 1012, label %99
    i32 1013, label %102
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr %0, align 8, !tbaa !87
  br label %115

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %8 = load i32, ptr %7, align 4, !tbaa !46
  br label %115

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !88
  br label %115

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !89
  br label %115

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !90
  br label %115

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i32, ptr %19, align 4, !tbaa !91
  br label %115

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !92
  br label %115

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4, !tbaa !93
  br label %115

27:                                               ; preds = %3
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %29 = load i32, ptr %28, align 4, !tbaa !94
  br label %115

30:                                               ; preds = %3
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i32, ptr %31, align 8, !tbaa !47
  br label %115

33:                                               ; preds = %3
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !95
  br label %115

36:                                               ; preds = %3
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %38 = load i32, ptr %37, align 8, !tbaa !96
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  br label %115

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %43 = load i32, ptr %42, align 8, !tbaa !97
  br label %115

44:                                               ; preds = %3
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %46 = load i32, ptr %45, align 4, !tbaa !98
  br label %115

47:                                               ; preds = %3
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %49 = load i32, ptr %48, align 8, !tbaa !99
  br label %115

50:                                               ; preds = %3
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !115
  br label %115

53:                                               ; preds = %3
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %55 = load i32, ptr %54, align 8, !tbaa !100
  br label %115

56:                                               ; preds = %3
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %58 = load i32, ptr %57, align 8, !tbaa !82
  br label %115

59:                                               ; preds = %3
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %61 = load i32, ptr %60, align 4, !tbaa !101
  br label %115

62:                                               ; preds = %3
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %64 = load i32, ptr %63, align 4, !tbaa !102
  br label %115

65:                                               ; preds = %3
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %67 = load i32, ptr %66, align 8, !tbaa !103
  br label %115

68:                                               ; preds = %3
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %70 = load i32, ptr %69, align 8, !tbaa !104
  br label %115

71:                                               ; preds = %3
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load i64, ptr %72, align 8, !tbaa !105
  %74 = trunc i64 %73 to i32
  br label %115

75:                                               ; preds = %3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %77 = load i32, ptr %76, align 8, !tbaa !106
  br label %115

78:                                               ; preds = %3
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %80 = load i32, ptr %79, align 4, !tbaa !107
  br label %115

81:                                               ; preds = %3
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %83 = load i32, ptr %82, align 8, !tbaa !108
  br label %115

84:                                               ; preds = %3
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %86 = load i32, ptr %85, align 4, !tbaa !109
  br label %115

87:                                               ; preds = %3
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %89 = load i32, ptr %88, align 8, !tbaa !110
  br label %115

90:                                               ; preds = %3
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %92 = load i32, ptr %91, align 4, !tbaa !81
  br label %115

93:                                               ; preds = %3
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %95 = load i32, ptr %94, align 8, !tbaa !111
  br label %115

96:                                               ; preds = %3
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %98 = load i32, ptr %97, align 8, !tbaa !80
  br label %115

99:                                               ; preds = %3
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %101 = load i32, ptr %100, align 4, !tbaa !112
  br label %115

102:                                              ; preds = %3
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %104 = load i32, ptr %103, align 8, !tbaa !113
  br label %115

105:                                              ; preds = %3
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %107 = load i32, ptr %106, align 4, !tbaa !114
  br label %115

108:                                              ; preds = %3
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %110 = load i64, ptr %109, align 8, !tbaa !83
  %111 = trunc i64 %110 to i32
  br label %115

112:                                              ; preds = %3
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %114 = load i32, ptr %113, align 8, !tbaa !84
  br label %115

115:                                              ; preds = %112, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %4
  %116 = phi i32 [ %5, %4 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ], [ %23, %21 ], [ %26, %24 ], [ %29, %27 ], [ %32, %30 ], [ %35, %33 ], [ %40, %36 ], [ %43, %41 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ], [ %55, %53 ], [ %58, %56 ], [ %61, %59 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ], [ %74, %71 ], [ %77, %75 ], [ %80, %78 ], [ %83, %81 ], [ %86, %84 ], [ %89, %87 ], [ %92, %90 ], [ %95, %93 ], [ %98, %96 ], [ %101, %99 ], [ %104, %102 ], [ %107, %105 ], [ %111, %108 ], [ %114, %112 ]
  store i32 %116, ptr %2, align 4, !tbaa !4
  br label %117

117:                                              ; preds = %115, %3
  %118 = phi i64 [ -40, %3 ], [ 0, %115 ]
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !117
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i64 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i64 %13
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 10) i64 @ZSTD_CCtx_setCParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !72
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %47, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !85
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %40, align 4, !tbaa !88
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %41, align 4, !tbaa !90
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %42, align 4, !tbaa !89
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %43, align 4, !tbaa !91
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %44, align 4, !tbaa !92
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %45, align 4, !tbaa !93
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %46, align 4, !tbaa !94
  br label %47

47:                                               ; preds = %39, %35, %30, %21, %16, %11, %6, %2
  %48 = phi i64 [ -42, %30 ], [ 0, %39 ], [ -42, %2 ], [ -42, %21 ], [ -42, %11 ], [ -42, %16 ], [ -60, %35 ], [ -42, %6 ]
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setFParams(ptr noundef captures(none) %0, i64 %1, i32 %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = and i64 %1, 4294967295
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %10, ptr %11, align 8, !tbaa !47
  %12 = icmp ugt i64 %1, 4294967295
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %13, ptr %14, align 4, !tbaa !95
  %15 = icmp ne i32 %2, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %16, ptr %17, align 8, !tbaa !96
  br label %18

18:                                               ; preds = %7, %3
  %19 = phi i64 [ 0, %7 ], [ -60, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !72
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %61, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !85
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %43 = load i64, ptr %42, align 4
  %44 = and i64 %43, 4294967295
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %46, ptr %47, align 8, !tbaa !47
  %48 = icmp ugt i64 %43, 4294967295
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %49, ptr %50, align 4, !tbaa !95
  %51 = icmp ne i32 %41, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %52, ptr %53, align 8, !tbaa !96
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %54, align 4, !tbaa !88
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %55, align 8, !tbaa !90
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %56, align 4, !tbaa !89
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %57, align 8, !tbaa !91
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %58, align 4, !tbaa !92
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %59, align 8, !tbaa !93
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %60, align 4, !tbaa !94
  br label %61

61:                                               ; preds = %39, %35, %30, %21, %16, %11, %6, %2
  %62 = phi i64 [ -42, %30 ], [ -60, %35 ], [ -42, %6 ], [ -42, %2 ], [ -42, %21 ], [ -42, %16 ], [ -42, %11 ], [ 0, %39 ]
  ret i64 %62
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 1), !nosanitize !8
  %8 = extractvalue { i64, i1 } %7, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %6
  %11 = extractvalue { i64, i1 } %7, 0, !nosanitize !8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %11, ptr %12, align 8, !tbaa !119
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i64 [ 0, %10 ], [ -60, %2 ]
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %10 = icmp eq ptr %1, null
  %11 = icmp eq i64 %2, 0
  %12 = or i1 %10, %11
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %3, 1
  br i1 %14, label %34, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %17 = load i64, ptr %16, align 8, !tbaa !52
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i64 912
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr %21(ptr noundef %25, i64 noundef %2) #35, !inline_history !50
  br label %29

27:                                               ; preds = %19
  %28 = tail call noalias ptr @malloc(i64 noundef %2) #36
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %26, %23 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %1, i64 %2, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %30, ptr %33, align 8, !tbaa !120
  br label %34

34:                                               ; preds = %32, %13
  %35 = phi ptr [ %30, %32 ], [ %1, %13 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %35, ptr %36, align 8, !tbaa !121
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %37, align 8, !tbaa !122
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 %4, ptr %38, align 8, !tbaa !123
  br label %39

39:                                               ; preds = %34, %29, %15, %9, %5
  %40 = phi i64 [ 0, %9 ], [ -60, %5 ], [ 0, %34 ], [ -64, %15 ], [ -64, %29 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_clearAllDicts(ptr noundef captures(none) initializes((3696, 3720), (3728, 3760)) %0) unnamed_addr #4 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = getelementptr i8, ptr %0, i64 904
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i64 912
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %5, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void %5(ptr noundef %7, ptr noundef nonnull %3) #35, !inline_history !64
  br label %13

12:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %3) #35
  br label %13

13:                                               ; preds = %12, %11, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 6048
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 6056
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp ugt ptr %23, %15
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp uge ptr %15, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i1 [ true, %17 ], [ %28, %25 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %22, i8 0, i64 72, i1 false)
  %31 = icmp eq ptr %23, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = icmp eq ptr %19, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  tail call void %19(ptr noundef %21, ptr noundef nonnull %23) #35, !inline_history !125
  br label %35

35:                                               ; preds = %34, %29
  br i1 %30, label %37, label %41

36:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %23) #35
  br i1 %30, label %40, label %41

37:                                               ; preds = %35
  %38 = icmp eq ptr %19, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void %19(ptr noundef %21, ptr noundef nonnull %15) #35, !inline_history !126
  br label %41

40:                                               ; preds = %37, %36
  tail call void @free(ptr noundef nonnull %15) #35
  br label %41

41:                                               ; preds = %40, %39, %36, %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_loadDictionary_byReference(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %1, ptr %12, align 8, !tbaa !121
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %13, align 8, !tbaa !122
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %14, align 8, !tbaa !123
  br label %15

15:                                               ; preds = %11, %7, %3
  %16 = phi i64 [ 0, %7 ], [ -60, %3 ], [ 0, %11 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %13 = load i64, ptr %12, align 8, !tbaa !52
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i64 912
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr %17(ptr noundef %21, i64 noundef %2) #35, !inline_history !127
  br label %25

23:                                               ; preds = %15
  %24 = tail call noalias ptr @malloc(i64 noundef %2) #36
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %2, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %26, ptr %29, align 8, !tbaa !120
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %26, ptr %30, align 8, !tbaa !121
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %31, align 8, !tbaa !122
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %32, align 8, !tbaa !123
  br label %33

33:                                               ; preds = %28, %25, %11, %7, %3
  %34 = phi i64 [ 0, %7 ], [ -60, %3 ], [ 0, %28 ], [ -64, %11 ], [ -64, %25 ]
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refCDict(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %7, align 8, !tbaa !116
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refThreadPool(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %7, align 8, !tbaa !128
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp ne ptr %1, null
  %9 = icmp ne i64 %2, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  store ptr %1, ptr %12, align 8, !tbaa !129
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %13, align 8, !tbaa !130
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 1, ptr %14, align 8, !tbaa !131
  br label %15

15:                                               ; preds = %11, %7, %3
  %16 = phi i64 [ -60, %3 ], [ 0, %11 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %6 = load i32, ptr %5, align 8, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %9 = icmp ne ptr %1, null
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  store ptr %1, ptr %13, align 8, !tbaa !129
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %14, align 8, !tbaa !130
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 %3, ptr %15, align 8, !tbaa !131
  br label %16

16:                                               ; preds = %12, %8, %4
  %17 = phi i64 [ -60, %4 ], [ 0, %12 ], [ 0, %8 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_reset(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !85
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %7, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %5, %2
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %16, i8 0, i64 224, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 3, ptr %17, align 4, !tbaa !46
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %18, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %15, %11, %8
  %20 = phi i64 [ -60, %11 ], [ 0, %15 ], [ 0, %8 ]
  ret i64 %20
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i32 @ZSTD_cycleLog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 5
  %4 = zext i1 %3 to i32
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %0, i32 %4), !nosanitize !8
  %6 = extractvalue { i32, i1 } %5, 1, !nosanitize !8
  br i1 %6, label %7, label %8, !prof !9, !nosanitize !8

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

8:                                                ; preds = %2
  %9 = extractvalue { i32, i1 } %5, 0, !nosanitize !8
  ret i32 %9
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_adjustCParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, ptr noundef readnone byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

7:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef readnone captures(none) %0) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #17 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !132
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46, !alias.scope !132
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47, !alias.scope !132
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !77, !noalias !132
  %9 = icmp ugt i32 %8, 6
  %10 = load i32, ptr %2, align 8, !noalias !132
  %11 = icmp ugt i32 %10, 26
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 1, ptr %16, align 8, !tbaa !82, !alias.scope !132
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %16, ptr noundef nonnull align 8 %2) #35
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !81, !alias.scope !132
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, ptr %7, align 8, !tbaa !77, !noalias !132
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %8, %13 ], [ %21, %20 ]
  %24 = phi ptr [ %14, %13 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !72, !noalias !132
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %15
  %31 = phi ptr [ %17, %15 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %15 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !81, !alias.scope !132
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = add i32 %34, -6
  %36 = icmp ult i32 %35, -3
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

38:                                               ; preds = %30
  call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %1
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #4 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !135
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !46, !alias.scope !135
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !47, !alias.scope !135
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !77, !noalias !135
  %9 = icmp ugt i32 %8, 6
  %10 = load i32, ptr %2, align 8, !noalias !135
  %11 = icmp ugt i32 %10, 26
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 1, ptr %16, align 8, !tbaa !82, !alias.scope !135
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %16, ptr noundef nonnull align 8 %2) #35
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !81, !alias.scope !135
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, ptr %7, align 8, !tbaa !77, !noalias !135
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %8, %13 ], [ %21, %20 ]
  %24 = phi ptr [ %14, %13 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !72, !noalias !135
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %15
  %31 = phi ptr [ %17, %15 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %15 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !81, !alias.scope !135
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = add i32 %34, -6
  %36 = icmp ult i32 %35, -3
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %38 = load i32, ptr %37, align 4, !tbaa !115
  %39 = icmp sgt i32 %38, 0
  br i1 %36, label %42, label %40

40:                                               ; preds = %30
  br i1 %39, label %44, label %41

41:                                               ; preds = %40
  call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %30
  br i1 %39, label %44, label %43

43:                                               ; preds = %42
  call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

44:                                               ; preds = %42, %40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i64 -1
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getFrameProgression(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_frameProgression) align 8 captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 3592
  %8 = load i64, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %10 = load i64, ptr %9, align 8, !tbaa !140
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %8, i64 %10), !nosanitize !8
  %12 = extractvalue { i64, i1 } %11, 0, !nosanitize !8
  %13 = extractvalue { i64, i1 } %11, 1, !nosanitize !8
  br i1 %13, label %14, label %15, !prof !9, !nosanitize !8

14:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %6, %2
  %16 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 792
  %18 = load i64, ptr %17, align 8, !tbaa !141
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %16), !nosanitize !8
  %20 = extractvalue { i64, i1 } %19, 1, !nosanitize !8
  br i1 %20, label %21, label %22, !prof !9, !nosanitize !8

21:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

22:                                               ; preds = %15
  %23 = extractvalue { i64, i1 } %19, 0, !nosanitize !8
  store i64 %23, ptr %0, align 8, !tbaa !142
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %18, ptr %24, align 8, !tbaa !144
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 800
  %26 = load i64, ptr %25, align 8, !tbaa !145
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %26, ptr %27, align 8, !tbaa !146
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %26, ptr %28, align 8, !tbaa !147
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %29, align 8, !tbaa !148
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %30, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_toFlushNow(ptr noundef readnone captures(none) %0) local_unnamed_addr #8 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_reset_compressedBlockState(ptr noundef writeonly captures(none) initializes((2056, 2060), (5604, 5628)) %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %4, align 4, !tbaa !151
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %6, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_invalidateRepCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 5616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !tbaa !4
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_copyCCtx(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @ZSTD_seqToCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #20 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %2 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %1
  %17 = lshr exact i64 %13, 3
  %18 = and i64 %17, 4294967295
  br label %19

19:                                               ; preds = %54, %16
  %20 = phi i64 [ 0, %16 ], [ %57, %54 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i16, ptr %22, align 4, !tbaa !159
  %24 = load i32, ptr %21, align 4, !tbaa !162
  %25 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %24, i1 true)
  %26 = getelementptr inbounds nuw i8, ptr %21, i64 6
  %27 = load i16, ptr %26, align 2, !tbaa !163
  %28 = zext i16 %27 to i32
  %29 = icmp ugt i16 %23, 63
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = zext i16 %23 to i32
  %32 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %31, i1 true)
  %33 = trunc nuw nsw i32 %32 to i8
  %34 = sub nuw nsw i8 50, %33
  br label %39

35:                                               ; preds = %19
  %36 = zext nneg i16 %23 to i64
  %37 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !164
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i8 [ %38, %35 ], [ %34, %30 ]
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 %20
  store i8 %40, ptr %41, align 1, !tbaa !164
  %42 = trunc nuw nsw i32 %25 to i8
  %43 = xor i8 %42, 31
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 %20
  store i8 %43, ptr %44, align 1, !tbaa !164
  %45 = icmp ugt i16 %27, 127
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %28, i1 true)
  %48 = trunc nuw nsw i32 %47 to i8
  %49 = sub nuw nsw i8 67, %48
  br label %54

50:                                               ; preds = %39
  %51 = zext nneg i16 %27 to i64
  %52 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !164
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i8 [ %53, %50 ], [ %49, %46 ]
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  store i8 %55, ptr %56, align 1, !tbaa !164
  %57 = add nuw nsw i64 %20, 1
  %58 = icmp eq i64 %57, %18
  br i1 %58, label %59, label %19, !llvm.loop !165

59:                                               ; preds = %54, %1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %61 = load i32, ptr %60, align 8, !tbaa !167
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %65 = load i32, ptr %64, align 4, !tbaa !168
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 %66
  store i8 35, ptr %67, align 1, !tbaa !164
  %68 = load i32, ptr %60, align 8, !tbaa !167
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i32 [ %68, %63 ], [ %61, %59 ]
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %74 = load i32, ptr %73, align 4, !tbaa !168
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds nuw i8, ptr %8, i64 %75
  store i8 52, ptr %76, align 1, !tbaa !164
  br label %77

77:                                               ; preds = %72, %69
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = add i32 %0, -6
  %5 = icmp ult i32 %4, -3
  %6 = icmp ne i32 %1, 1
  %7 = or i1 %5, %6
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %8
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr [8 x i8], ptr %9, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = getelementptr inbounds [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %8
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %13, i64 %14
  %16 = select i1 %7, ptr %15, ptr %12
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  ret ptr %17
}

declare i64 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_resetSeqStore(ptr noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %4, align 8, !tbaa !170
  %5 = load ptr, ptr %0, align 8, !tbaa !154
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %7, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 2, 6166929089745999191) i64 @ZSTD_sequenceBound(i64 noundef %0) local_unnamed_addr #8 {
  %2 = udiv i64 %0, 3
  %3 = lshr i64 %0, 10
  %4 = add nuw nsw i64 %3, 2
  %5 = add nuw nsw i64 %4, %2
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = icmp ugt i64 %4, -71777214294589697
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = lshr i64 %4, 8
  %11 = add nuw i64 %10, %4
  %12 = icmp ult i64 %4, 131072
  %13 = sub nuw nsw i64 131072, %4
  %14 = lshr i64 %13, 11
  %15 = select i1 %12, i64 %14, i64 0
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %15), !nosanitize !8
  %17 = freeze { i64, i1 } %16
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !8
  br i1 %18, label %19, label %20, !prof !9, !nosanitize !8

19:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %9
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %5
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i64 [ -72, %23 ], [ %21, %20 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %27 = load i64, ptr %26, align 8, !tbaa !105
  %28 = and i64 %27, 4294967295
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %32 = load i32, ptr %31, align 4, !tbaa !115
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = tail call noalias ptr @malloc(i64 noundef %25) #36
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %38, align 8, !tbaa !4
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %1, ptr %39, align 8, !tbaa !51
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %40, align 8, !tbaa !118
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 %2, ptr %41, align 8, !tbaa !118
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %44, align 8, !tbaa !85
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %45, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store ptr %35, ptr %6, align 8, !tbaa !171
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %25, ptr %46, align 8, !tbaa !173
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %47, align 8, !tbaa !174
  store ptr %3, ptr %7, align 8, !tbaa !175
  %48 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %48, align 8, !tbaa !176
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %49, align 8, !tbaa !177
  %50 = load <2 x i32>, ptr %42, align 4, !tbaa !4
  store i32 1, ptr %42, align 4, !tbaa !178
  store i32 1, ptr %43, align 8, !tbaa !179
  %51 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %52 = load i64, ptr %47, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  store <2 x i32> %50, ptr %42, align 4, !tbaa !4
  %53 = icmp ult i64 %51, -119
  %54 = icmp eq i64 %51, 0
  %55 = select i1 %54, i64 %52, i64 -70
  %56 = select i1 %53, i64 %55, i64 %51
  tail call void @free(ptr noundef nonnull %35) #35
  %57 = icmp ult i64 %56, -119
  br i1 %57, label %58, label %60

58:                                               ; preds = %37
  %59 = load i64, ptr %40, align 8, !tbaa !180
  br label %60

60:                                               ; preds = %58, %37, %34, %30, %24
  %61 = phi i64 [ -40, %24 ], [ %59, %58 ], [ %56, %37 ], [ -40, %30 ], [ -64, %34 ]
  ret i64 %61
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress2(ptr noundef initializes((784, 792), (3640, 3644)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %10, align 8, !tbaa !85
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %11, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store ptr %1, ptr %6, align 8, !tbaa !171
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %12, align 8, !tbaa !173
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %13, align 8, !tbaa !174
  store ptr %3, ptr %7, align 8, !tbaa !175
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %14, align 8, !tbaa !176
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %15, align 8, !tbaa !177
  %16 = load <2 x i32>, ptr %8, align 4, !tbaa !4
  store i32 1, ptr %8, align 4, !tbaa !178
  store i32 1, ptr %9, align 8, !tbaa !179
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %18 = load i64, ptr %13, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  store <2 x i32> %16, ptr %8, align 4, !tbaa !4
  %19 = icmp ult i64 %17, -119
  %20 = icmp eq i64 %17, 0
  %21 = select i1 %20, i64 %18, i64 -70
  %22 = select i1 %19, i64 %21, i64 %17
  ret i64 %22
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_mergeBlockDelimiters(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  br label %6

6:                                                ; preds = %35, %4
  %7 = phi i64 [ 0, %4 ], [ %36, %35 ]
  %8 = phi i64 [ 0, %4 ], [ %37, %35 ]
  %9 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !181
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %14 = load i32, ptr %13, align 4, !tbaa !183
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = icmp eq i64 %8, %5
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !184
  %21 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %22 = load i32, ptr %21, align 4, !tbaa !184
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %22, i32 %20), !nosanitize !8
  %24 = extractvalue { i32, i1 } %23, 1, !nosanitize !8
  br i1 %24, label %25, label %26, !prof !9, !nosanitize !8

25:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

26:                                               ; preds = %18
  %27 = extractvalue { i32, i1 } %23, 0, !nosanitize !8
  store i32 %27, ptr %21, align 4, !tbaa !184
  br label %35

28:                                               ; preds = %12, %6
  %29 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !185
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 1), !nosanitize !8
  %31 = extractvalue { i64, i1 } %30, 1, !nosanitize !8
  br i1 %31, label %32, label %33, !prof !9, !nosanitize !8

32:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

33:                                               ; preds = %28
  %34 = extractvalue { i64, i1 } %30, 0, !nosanitize !8
  br label %35

35:                                               ; preds = %33, %26, %16
  %36 = phi i64 [ %7, %26 ], [ %7, %16 ], [ %34, %33 ]
  %37 = add nuw i64 %8, 1
  %38 = icmp eq i64 %37, %1
  br i1 %38, label %39, label %6, !llvm.loop !186

39:                                               ; preds = %35, %2
  %40 = phi i64 [ 0, %2 ], [ %36, %35 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildBlockEntropyStats(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 2064)) %2, ptr noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 {
  %8 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !169
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = icmp ugt i32 %18, 7
  %20 = select i1 %19, i32 2, i32 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %22 = load i32, ptr %21, align 8, !tbaa !99
  switch i32 %22, label %24 [
    i32 1, label %26
    i32 2, label %23
  ]

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store i32 255, ptr %9, align 4, !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %102

24:                                               ; preds = %7
  %25 = icmp eq i32 %18, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %24, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store i32 255, ptr %9, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %28 = load i32, ptr %27, align 8, !tbaa !187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !93
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store i32 255, ptr %9, align 4, !tbaa !4
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %34 = load i32, ptr %33, align 8, !tbaa !187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br i1 %32, label %35, label %102

35:                                               ; preds = %29, %26
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi ptr [ %27, %26 ], [ %33, %29 ]
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %39 = add nsw i64 %6, -1024
  %40 = load i32, ptr %37, align 8, !tbaa !187
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i64 6, i64 63
  %43 = icmp ugt i64 %16, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %35
  %45 = call i64 @HIST_count_wksp(ptr noundef %5, ptr noundef nonnull %9, ptr noundef %13, i64 noundef %16, ptr noundef %5, i64 noundef %6) #35
  %46 = icmp ult i64 %45, -119
  br i1 %46, label %47, label %105

47:                                               ; preds = %44
  %48 = icmp eq i64 %45, %16
  br i1 %48, label %102, label %49

49:                                               ; preds = %47
  %50 = lshr i64 %16, 7
  %51 = add nuw nsw i64 %50, 4
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %49
  %54 = icmp eq i32 %36, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = load i32, ptr %9, align 4, !tbaa !4
  %57 = call i32 @HUF_validateCTable(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %56) #35
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %59, %55 ], [ %36, %53 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %62 = load i32, ptr %9, align 4, !tbaa !4
  %63 = call i32 @HUF_optimalTableLog(i32 noundef 11, i64 noundef %16, i32 noundef %62, ptr noundef nonnull %38, i64 noundef %39, ptr noundef nonnull %2, ptr noundef %5, i32 noundef range(i32 0, 3) %20) #35
  %64 = load i32, ptr %9, align 4, !tbaa !4
  %65 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %64, i32 noundef %63, ptr noundef nonnull %38, i64 noundef %39) #35
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %105

67:                                               ; preds = %60
  %68 = trunc i64 %65 to i32
  %69 = load i32, ptr %9, align 4, !tbaa !4
  %70 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %69) #35
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %72 = load i32, ptr %9, align 4, !tbaa !4
  %73 = call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %71, i64 noundef 128, ptr noundef nonnull %2, i32 noundef %72, i32 noundef %68, ptr noundef nonnull %38, i64 noundef %39) #35
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %9, align 4, !tbaa !4
  %77 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %76) #35
  %78 = icmp ult i64 %77, %16
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 %70), !nosanitize !8
  %81 = extractvalue { i64, i1 } %80, 1, !nosanitize !8
  br i1 %81, label %82, label %83, !prof !9, !nosanitize !8

82:                                               ; preds = %79
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

83:                                               ; preds = %79
  %84 = extractvalue { i64, i1 } %80, 0, !nosanitize !8
  %85 = icmp ugt i64 %77, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 12), !nosanitize !8
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !8
  br i1 %88, label %89, label %90, !prof !9, !nosanitize !8

89:                                               ; preds = %86
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

90:                                               ; preds = %86
  %91 = extractvalue { i64, i1 } %87, 0, !nosanitize !8
  %92 = icmp ult i64 %91, %16
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %102

94:                                               ; preds = %90, %75, %67
  %95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 %73), !nosanitize !8
  %96 = extractvalue { i64, i1 } %95, 1, !nosanitize !8
  br i1 %96, label %97, label %98, !prof !9, !nosanitize !8

97:                                               ; preds = %94
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

98:                                               ; preds = %94
  %99 = extractvalue { i64, i1 } %95, 0, !nosanitize !8
  %100 = icmp ult i64 %99, %16
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %102

102:                                              ; preds = %101, %93, %49, %47, %35, %29, %23
  %103 = phi i32 [ 0, %35 ], [ 0, %29 ], [ 3, %93 ], [ 0, %101 ], [ 1, %47 ], [ 0, %23 ], [ 0, %49 ]
  store i32 %103, ptr %4, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %104, align 8, !tbaa !189
  br label %112

105:                                              ; preds = %60, %44
  %106 = phi i64 [ %65, %60 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %106, ptr %107, align 8, !tbaa !189
  br label %158

108:                                              ; preds = %98
  store i32 2, ptr %4, align 8, !tbaa !188
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 2056
  store i32 1, ptr %109, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %73, ptr %110, align 8, !tbaa !189
  %111 = icmp ult i64 %73, -119
  br i1 %111, label %112, label %158

112:                                              ; preds = %108, %102
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 2064
  %115 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %116 = load i32, ptr %17, align 4, !tbaa !94
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %118 = load ptr, ptr %117, align 8, !tbaa !158
  %119 = load ptr, ptr %0, align 8, !tbaa !154
  %120 = ptrtoint ptr %118 to i64
  %121 = ptrtoint ptr %119 to i64
  %122 = sub i64 %120, %121
  %123 = ashr exact i64 %122, 3
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 156
  %125 = getelementptr inbounds nuw i8, ptr %4, i64 289
  %126 = getelementptr inbounds nuw i8, ptr %5, i64 212
  %127 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 212), !nosanitize !8
  %128 = extractvalue { i64, i1 } %127, 0, !nosanitize !8
  %129 = extractvalue { i64, i1 } %127, 1, !nosanitize !8
  br i1 %129, label %130, label %131, !prof !9, !nosanitize !8

130:                                              ; preds = %112
  call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

131:                                              ; preds = %112
  %132 = icmp eq ptr %118, %119
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 5612
  store i32 0, ptr %134, align 4, !tbaa !190, !noalias !191
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 5604
  store i32 0, ptr %135, align 4, !tbaa !194, !noalias !191
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 5608
  store i32 0, ptr %136, align 4, !tbaa !195, !noalias !191
  br label %146

137:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull readonly %0, i64 noundef %123, ptr noundef nonnull %113, ptr noundef nonnull %114, ptr noundef nonnull %124, ptr noundef nonnull %125, i32 noundef %116, ptr noundef %5, ptr noundef nonnull %126, i64 noundef %128)
  %138 = load <2 x i32>, ptr %8, align 8, !tbaa !4
  %139 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %140 = load i32, ptr %139, align 8, !tbaa !4
  %141 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %142 = load i64, ptr %141, align 8, !tbaa !118
  %143 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %144 = load i64, ptr %143, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %145 = icmp ult i64 %142, -119
  br i1 %145, label %146, label %153

146:                                              ; preds = %137, %133
  %147 = phi i32 [ 0, %133 ], [ %140, %137 ]
  %148 = phi i64 [ 0, %133 ], [ %142, %137 ]
  %149 = phi i64 [ 0, %133 ], [ %144, %137 ]
  %150 = phi <2 x i32> [ zeroinitializer, %133 ], [ %138, %137 ]
  store <2 x i32> %150, ptr %115, align 8, !tbaa !4
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 %147, ptr %151, align 8, !tbaa !196
  %152 = getelementptr inbounds nuw i8, ptr %4, i64 304
  store i64 %149, ptr %152, align 8, !tbaa !197
  br label %153

153:                                              ; preds = %146, %137
  %154 = phi i64 [ %142, %137 ], [ %148, %146 ]
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i64 %154, ptr %155, align 8, !tbaa !198
  %156 = icmp ult i64 %154, -119
  %157 = select i1 %156, i64 0, i64 %154
  br label %158

158:                                              ; preds = %153, %108, %105
  %159 = phi i64 [ %73, %108 ], [ %157, %153 ], [ %106, %105 ]
  ret i64 %159
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_writeSkippableFrame(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 8), !nosanitize !8
  %7 = extractvalue { i64, i1 } %6, 0, !nosanitize !8
  %8 = extractvalue { i64, i1 } %6, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = icmp ult i64 %1, %7
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = icmp ugt i64 %3, 4294967295
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i32 %4, 15
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = or disjoint i32 %4, 407710288
  store i32 %17, ptr %0, align 1, !tbaa !4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = trunc nuw i64 %3 to i32
  store i32 %19, ptr %18, align 1, !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr align 1 %2, i64 %3, i1 false)
  br label %21

21:                                               ; preds = %16, %14, %12, %10
  %22 = phi i64 [ %7, %16 ], [ -70, %10 ], [ -72, %12 ], [ -42, %14 ]
  ret i64 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -70, 4) i64 @ZSTD_writeLastEmptyBlock(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ult i64 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1, !tbaa !199
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %5, align 1, !tbaa !164
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ 3, %4 ], [ -70, %2 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_referenceExternalSequences(ptr noundef writeonly captures(none) initializes((3184, 3224)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store ptr %1, ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store i64 %2, ptr %5, align 8, !tbaa !201
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3216
  store i64 %2, ptr %6, align 8, !tbaa !202
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #4 {
  %8 = alloca %struct.seqStoreSplits, align 8
  %9 = alloca %struct.repcodes_s, align 4
  %10 = alloca %struct.repcodes_s, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %12 = load i32, ptr %0, align 8, !tbaa !203
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %736, label %14

14:                                               ; preds = %7
  %15 = icmp ne i32 %5, 0
  %16 = icmp eq i32 %12, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %20 = load i64, ptr %19, align 8, !tbaa !119
  %21 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 1), !nosanitize !8
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !8
  br i1 %22, label %23, label %24, !prof !9, !nosanitize !8

23:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

24:                                               ; preds = %18
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %28 = load i32, ptr %27, align 8, !tbaa !204
  %29 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %26, i64 noundef %25, i32 noundef %28)
  %30 = icmp ult i64 %29, -119
  br i1 %30, label %31, label %736

31:                                               ; preds = %24
  %32 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %29), !nosanitize !8
  %33 = extractvalue { i64, i1 } %32, 1, !nosanitize !8
  br i1 %33, label %34, label %35, !prof !9, !nosanitize !8

34:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

35:                                               ; preds = %31
  %36 = extractvalue { i64, i1 } %32, 0, !nosanitize !8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %29
  store i32 2, ptr %0, align 8, !tbaa !203
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi i64 [ %29, %35 ], [ 0, %14 ]
  %40 = phi i64 [ %36, %35 ], [ %2, %14 ]
  %41 = phi ptr [ %37, %35 ], [ %1, %14 ]
  %42 = icmp eq i64 %4, 0
  br i1 %42, label %736, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %45 = load i32, ptr %44, align 8, !tbaa !205
  %46 = load ptr, ptr %11, align 8, !tbaa !206
  %47 = icmp ne ptr %3, %46
  %48 = icmp ne i32 %45, 0
  %49 = or i1 %48, %47
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %52 = load ptr, ptr %51, align 8, !tbaa !207
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %54 = load i32, ptr %53, align 4, !tbaa !208
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %56 = load i32, ptr %55, align 8, !tbaa !209
  br label %77

57:                                               ; preds = %43
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %59 = load ptr, ptr %58, align 8, !tbaa !210
  %60 = ptrtoint ptr %46 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %64 = load i32, ptr %63, align 8, !tbaa !209
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  store i32 %64, ptr %65, align 4, !tbaa !208
  %66 = trunc i64 %62 to i32
  store i32 %66, ptr %63, align 8, !tbaa !209
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  store ptr %59, ptr %67, align 8, !tbaa !207
  %68 = sub i64 0, %62
  %69 = getelementptr inbounds i8, ptr %3, i64 %68
  store ptr %69, ptr %58, align 8, !tbaa !210
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %66, i32 %64), !nosanitize !8
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !8
  br i1 %71, label %72, label %73, !prof !9, !nosanitize !8

72:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

73:                                               ; preds = %57
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !8
  %75 = icmp ult i32 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 %66, ptr %65, align 4, !tbaa !208
  br label %77

77:                                               ; preds = %76, %73, %50
  %78 = phi i32 [ %56, %50 ], [ %66, %76 ], [ %66, %73 ]
  %79 = phi i32 [ %54, %50 ], [ %66, %76 ], [ %64, %73 ]
  %80 = phi ptr [ %52, %50 ], [ %59, %76 ], [ %59, %73 ]
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  store ptr %81, ptr %11, align 8, !tbaa !206
  %82 = zext i32 %79 to i64
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 %82
  %84 = icmp ugt ptr %81, %83
  %85 = zext i32 %78 to i64
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 %85
  %87 = icmp ult ptr %3, %86
  %88 = and i1 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %91 = ptrtoint ptr %81 to i64
  %92 = ptrtoint ptr %80 to i64
  %93 = sub i64 %91, %92
  %94 = tail call i64 @llvm.umin.i64(i64 %93, i64 %85)
  %95 = trunc nuw i64 %94 to i32
  store i32 %95, ptr %90, align 4, !tbaa !208
  br label %96

96:                                               ; preds = %89, %77
  br i1 %49, label %97, label %99

97:                                               ; preds = %96
  store i32 0, ptr %44, align 8, !tbaa !205
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  store i32 %78, ptr %98, align 4, !tbaa !211
  br label %99

99:                                               ; preds = %97, %96
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %102 = load i32, ptr %101, align 8, !tbaa !212
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %153

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %106 = load ptr, ptr %105, align 8, !tbaa !206
  %107 = icmp eq ptr %3, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %110 = load ptr, ptr %109, align 8, !tbaa !207
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %112 = load i32, ptr %111, align 4, !tbaa !208
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %114 = load i32, ptr %113, align 8, !tbaa !209
  br label %135

115:                                              ; preds = %104
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %117 = load ptr, ptr %116, align 8, !tbaa !210
  %118 = ptrtoint ptr %106 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sub i64 %118, %119
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %122 = load i32, ptr %121, align 8, !tbaa !209
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 %122, ptr %123, align 4, !tbaa !208
  %124 = trunc i64 %120 to i32
  store i32 %124, ptr %121, align 8, !tbaa !209
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %117, ptr %125, align 8, !tbaa !207
  %126 = sub i64 0, %120
  %127 = getelementptr inbounds i8, ptr %3, i64 %126
  store ptr %127, ptr %116, align 8, !tbaa !210
  %128 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %124, i32 %122), !nosanitize !8
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !8
  br i1 %129, label %130, label %131, !prof !9, !nosanitize !8

130:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

131:                                              ; preds = %115
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !8
  %133 = icmp ult i32 %132, 8
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 %124, ptr %123, align 4, !tbaa !208
  br label %135

135:                                              ; preds = %134, %131, %108
  %136 = phi i32 [ %114, %108 ], [ %124, %134 ], [ %124, %131 ]
  %137 = phi i32 [ %112, %108 ], [ %124, %134 ], [ %122, %131 ]
  %138 = phi ptr [ %110, %108 ], [ %117, %134 ], [ %117, %131 ]
  store ptr %81, ptr %105, align 8, !tbaa !206
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 %139
  %141 = icmp ugt ptr %81, %140
  %142 = zext i32 %136 to i64
  %143 = getelementptr inbounds nuw i8, ptr %138, i64 %142
  %144 = icmp ult ptr %3, %143
  %145 = and i1 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %135
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %148 = ptrtoint ptr %81 to i64
  %149 = ptrtoint ptr %138 to i64
  %150 = sub i64 %148, %149
  %151 = tail call i64 @llvm.umin.i64(i64 %150, i64 %142)
  %152 = trunc nuw i64 %151 to i32
  store i32 %152, ptr %147, align 4, !tbaa !208
  br label %153

153:                                              ; preds = %146, %135, %99
  br i1 %15, label %157, label %154

154:                                              ; preds = %153
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %155, ptr noundef nonnull %100, ptr noundef %3, ptr noundef nonnull %81)
  %156 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef %41, i64 noundef %40, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  br label %706

157:                                              ; preds = %153
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %159 = load i64, ptr %158, align 8, !tbaa !213
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %161 = load i32, ptr %160, align 4, !tbaa !214
  %162 = shl nuw i32 1, %161
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %164 = load i64, ptr %163, align 8, !tbaa !141
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %166 = load i64, ptr %165, align 8, !tbaa !145
  %167 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %164, i64 %166), !nosanitize !8
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !8
  br i1 %168, label %169, label %170, !prof !9, !nosanitize !8

169:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 21) #38, !nosanitize !8
  unreachable, !nosanitize !8

170:                                              ; preds = %157
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %172 = load i32, ptr %171, align 4, !tbaa !215
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %176 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %175, ptr noundef captures(none) %3, i64 noundef range(i64 1, 0) %4) #35
  br label %177

177:                                              ; preds = %174, %170
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %180 = icmp ult i64 %159, 131072
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %190 = getelementptr i8, ptr %0, i64 296
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %197 = getelementptr i8, ptr %0, i64 380
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 4008
  %201 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 4084
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 936
  br label %210

210:                                              ; preds = %693, %177
  %211 = phi { i64, i1 } [ %167, %177 ], [ %682, %693 ]
  %212 = phi i64 [ %40, %177 ], [ %694, %693 ]
  %213 = phi i64 [ %4, %177 ], [ %686, %693 ]
  %214 = phi ptr [ %3, %177 ], [ %247, %693 ]
  %215 = phi ptr [ %41, %177 ], [ %695, %693 ]
  %216 = extractvalue { i64, i1 } %211, 0
  %217 = load i32, ptr %178, align 8, !tbaa !216
  %218 = load i32, ptr %179, align 4, !tbaa !217
  %219 = icmp ult i64 %213, 131072
  %220 = or i1 %180, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %213, i64 %159)
  br label %241

223:                                              ; preds = %210
  %224 = icmp slt i64 %216, 3
  br i1 %224, label %241, label %225

225:                                              ; preds = %223
  switch i32 %217, label %230 [
    i32 1, label %241
    i32 0, label %226
  ]

226:                                              ; preds = %225
  %227 = zext i32 %218 to i64
  %228 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_optimalBlockSize.splitLevels, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !4
  br label %236

230:                                              ; preds = %225
  %231 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %217, i32 -2)
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !8
  br i1 %232, label %233, label %234, !prof !9, !nosanitize !8

233:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 21) #38, !nosanitize !8
  unreachable, !nosanitize !8

234:                                              ; preds = %230
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !8
  br label %236

236:                                              ; preds = %234, %226
  %237 = phi i32 [ %229, %226 ], [ %235, %234 ]
  %238 = load ptr, ptr %181, align 8, !tbaa !59
  %239 = load i64, ptr %182, align 8, !tbaa !60
  %240 = tail call i64 @ZSTD_splitBlock(ptr noundef %214, i64 noundef %159, i32 noundef %237, ptr noundef %238, i64 noundef %239) #35
  br label %241

241:                                              ; preds = %236, %225, %223, %221
  %242 = phi i64 [ %222, %221 ], [ %240, %236 ], [ 131072, %223 ], [ 131072, %225 ]
  %243 = icmp eq i64 %242, %213
  %244 = select i1 %243, i32 %6, i32 0
  %245 = icmp ult i64 %212, 6
  br i1 %245, label %736, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds nuw i8, ptr %214, i64 %242
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %183, ptr noundef nonnull %100, ptr noundef %214, ptr noundef %247)
  %248 = load i32, ptr %184, align 4, !tbaa !4
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %162), !nosanitize !8
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !8
  br i1 %250, label %251, label %252, !prof !9, !nosanitize !8

251:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

252:                                              ; preds = %246
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !8
  %254 = ptrtoint ptr %247 to i64
  %255 = load ptr, ptr %186, align 8, !tbaa !210
  %256 = ptrtoint ptr %255 to i64
  %257 = sub i64 %254, %256
  %258 = trunc i64 %257 to i32
  %259 = icmp ult i32 %253, %258
  br i1 %259, label %263, label %260

260:                                              ; preds = %252
  %261 = load i32, ptr %187, align 8, !tbaa !209
  %262 = icmp eq i32 %248, %261
  br i1 %262, label %264, label %263

263:                                              ; preds = %260, %252
  store i32 0, ptr %184, align 4, !tbaa !4
  store ptr null, ptr %185, align 8, !tbaa !218
  br label %264

264:                                              ; preds = %263, %260
  %265 = phi i32 [ %248, %260 ], [ 0, %263 ]
  %266 = ptrtoint ptr %214 to i64
  %267 = sub i64 %266, %256
  %268 = trunc i64 %267 to i32
  %269 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %162, i32 %265), !nosanitize !8
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !8
  br i1 %270, label %271, label %272, !prof !9, !nosanitize !8

271:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

272:                                              ; preds = %264
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !8
  %274 = icmp ult i32 %273, %268
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = load i32, ptr %188, align 4, !tbaa !219
  br label %292

277:                                              ; preds = %272
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %268, i32 %162), !nosanitize !8
  %279 = extractvalue { i32, i1 } %278, 0, !nosanitize !8
  %280 = extractvalue { i32, i1 } %278, 1, !nosanitize !8
  br i1 %280, label %281, label %282, !prof !9, !nosanitize !8

281:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

282:                                              ; preds = %277
  %283 = load i32, ptr %188, align 4, !tbaa !208
  %284 = icmp ult i32 %283, %279
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 %279, ptr %188, align 4, !tbaa !208
  br label %286

286:                                              ; preds = %285, %282
  %287 = phi i32 [ %279, %285 ], [ %283, %282 ]
  %288 = load i32, ptr %187, align 8, !tbaa !209
  %289 = icmp ult i32 %288, %287
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i32 %287, ptr %187, align 8, !tbaa !209
  br label %291

291:                                              ; preds = %290, %286
  store i32 0, ptr %184, align 4, !tbaa !4
  store ptr null, ptr %185, align 8, !tbaa !218
  br label %292

292:                                              ; preds = %291, %275
  %293 = phi i32 [ %276, %275 ], [ %287, %291 ]
  %294 = load i32, ptr %189, align 4, !tbaa !211
  %295 = icmp ult i32 %294, %293
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i32 %293, ptr %189, align 4, !tbaa !211
  br label %297

297:                                              ; preds = %296, %292
  %298 = load i64, ptr %190, align 8, !tbaa !105
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %388, label %300

300:                                              ; preds = %297
  %301 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %214, i64 noundef %242)
  %302 = icmp ult i64 %301, -119
  br i1 %302, label %303, label %736

303:                                              ; preds = %300
  %304 = icmp eq i64 %301, 0
  br i1 %304, label %305, label %364

305:                                              ; preds = %303
  %306 = load i32, ptr %191, align 8, !tbaa !220
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %336

308:                                              ; preds = %305
  %309 = load ptr, ptr %193, align 8, !tbaa !158
  %310 = load ptr, ptr %192, align 8, !tbaa !154
  %311 = ptrtoint ptr %309 to i64
  %312 = ptrtoint ptr %310 to i64
  %313 = sub i64 %311, %312
  %314 = load ptr, ptr %194, align 8, !tbaa !170
  %315 = load ptr, ptr %195, align 8, !tbaa !169
  %316 = ptrtoint ptr %314 to i64
  %317 = ptrtoint ptr %315 to i64
  %318 = sub i64 %316, %317
  %319 = icmp ugt i64 %313, 31
  %320 = icmp ugt i64 %318, 9
  %321 = select i1 %319, i1 true, i1 %320
  br i1 %321, label %336, label %322

322:                                              ; preds = %308
  %323 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %214, i64 noundef %242)
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %336, label %325

325:                                              ; preds = %322
  %326 = load i8, ptr %214, align 1, !tbaa !164
  %327 = trunc i64 %242 to i32
  %328 = shl i32 %327, 3
  %329 = or disjoint i32 %328, %244
  %330 = trunc i32 %329 to i16
  %331 = or disjoint i16 %330, 2
  store i16 %331, ptr %215, align 1, !tbaa !199
  %332 = lshr i32 %328, 16
  %333 = trunc i32 %332 to i8
  %334 = getelementptr inbounds nuw i8, ptr %215, i64 2
  store i8 %333, ptr %334, align 1, !tbaa !164
  %335 = getelementptr inbounds nuw i8, ptr %215, i64 3
  store i8 %326, ptr %335, align 1, !tbaa !164
  br label %381

336:                                              ; preds = %322, %308, %305
  %337 = tail call i64 @ZSTD_compressSuperBlock(ptr noundef nonnull %0, ptr noundef %215, i64 noundef range(i64 6, 0) %212, ptr noundef %214, i64 noundef %242, i32 noundef range(i32 0, 2) %244) #35
  %338 = icmp eq i64 %337, -70
  br i1 %338, label %364, label %339

339:                                              ; preds = %336
  %340 = load i32, ptr %179, align 4, !tbaa !217
  %341 = tail call i32 @llvm.umax.i32(i32 %340, i32 7)
  %342 = add i32 %341, -1
  %343 = zext nneg i32 %342 to i64
  %344 = lshr i64 %242, %343
  %345 = add nuw nsw i64 %344, 2
  %346 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %242, i64 %345), !nosanitize !8
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !8
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !8
  br i1 %348, label %349, label %350, !prof !9, !nosanitize !8

349:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

350:                                              ; preds = %339
  %351 = icmp ult i64 %337, -119
  br i1 %351, label %352, label %736

352:                                              ; preds = %350
  %353 = icmp eq i64 %337, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %352
  %355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 3), !nosanitize !8
  %356 = extractvalue { i64, i1 } %355, 1, !nosanitize !8
  br i1 %356, label %357, label %358, !prof !9, !nosanitize !8

357:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

358:                                              ; preds = %354
  %359 = extractvalue { i64, i1 } %355, 0, !nosanitize !8
  %360 = icmp ult i64 %337, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load <2 x ptr>, ptr %196, align 8, !tbaa !51
  %363 = shufflevector <2 x ptr> %362, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %363, ptr %196, align 8, !tbaa !51
  br label %381

364:                                              ; preds = %358, %352, %336, %303
  %365 = trunc i64 %242 to i32
  %366 = shl i32 %365, 3
  %367 = or disjoint i32 %366, %244
  %368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 3), !nosanitize !8
  %369 = extractvalue { i64, i1 } %368, 0, !nosanitize !8
  %370 = extractvalue { i64, i1 } %368, 1, !nosanitize !8
  br i1 %370, label %371, label %372, !prof !9, !nosanitize !8

371:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

372:                                              ; preds = %364
  %373 = icmp ugt i64 %369, %212
  br i1 %373, label %736, label %374

374:                                              ; preds = %372
  %375 = trunc i32 %367 to i16
  store i16 %375, ptr %215, align 1, !tbaa !199
  %376 = lshr i32 %366, 16
  %377 = trunc i32 %376 to i8
  %378 = getelementptr inbounds nuw i8, ptr %215, i64 2
  store i8 %377, ptr %378, align 1, !tbaa !164
  %379 = getelementptr inbounds nuw i8, ptr %215, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %379, ptr readonly align 1 %214, i64 %242, i1 false)
  %380 = icmp ult i64 %369, -119
  br i1 %380, label %381, label %736

381:                                              ; preds = %374, %361, %325
  %382 = phi i64 [ %369, %374 ], [ %337, %361 ], [ 4, %325 ]
  %383 = load ptr, ptr %196, align 8, !tbaa !57
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 5604
  %385 = load i32, ptr %384, align 4, !tbaa !151
  %386 = icmp eq i32 %385, 2
  br i1 %386, label %387, label %676

387:                                              ; preds = %381
  store i32 1, ptr %384, align 4, !tbaa !151
  br label %676

388:                                              ; preds = %297
  %389 = load i32, ptr %197, align 4, !tbaa !81
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %636

391:                                              ; preds = %388
  %392 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %214, i64 noundef %242)
  %393 = icmp ult i64 %392, -119
  br i1 %393, label %394, label %736

394:                                              ; preds = %391
  %395 = icmp eq i64 %392, 1
  br i1 %395, label %396, label %421

396:                                              ; preds = %394
  %397 = load ptr, ptr %196, align 8, !tbaa !57
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 5604
  %399 = load i32, ptr %398, align 4, !tbaa !151
  %400 = icmp eq i32 %399, 2
  br i1 %400, label %401, label %402

401:                                              ; preds = %396
  store i32 1, ptr %398, align 4, !tbaa !151
  br label %402

402:                                              ; preds = %401, %396
  %403 = load i32, ptr %209, align 8, !tbaa !221
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %736

405:                                              ; preds = %402
  %406 = trunc i64 %242 to i32
  %407 = shl i32 %406, 3
  %408 = or disjoint i32 %407, %244
  %409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 3), !nosanitize !8
  %410 = extractvalue { i64, i1 } %409, 0, !nosanitize !8
  %411 = extractvalue { i64, i1 } %409, 1, !nosanitize !8
  br i1 %411, label %412, label %413, !prof !9, !nosanitize !8

412:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

413:                                              ; preds = %405
  %414 = icmp ugt i64 %410, %212
  br i1 %414, label %736, label %415

415:                                              ; preds = %413
  %416 = trunc i32 %408 to i16
  store i16 %416, ptr %215, align 1, !tbaa !199
  %417 = lshr i32 %407, 16
  %418 = trunc i32 %417 to i8
  %419 = getelementptr inbounds nuw i8, ptr %215, i64 2
  store i8 %418, ptr %419, align 1, !tbaa !164
  %420 = getelementptr inbounds nuw i8, ptr %215, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %420, ptr readonly align 1 %214, i64 %242, i1 false)
  br label %632

421:                                              ; preds = %394
  %422 = load ptr, ptr %193, align 8, !tbaa !222
  %423 = load ptr, ptr %192, align 8, !tbaa !223
  %424 = ptrtoint ptr %422 to i64
  %425 = ptrtoint ptr %423 to i64
  %426 = sub i64 %424, %425
  %427 = lshr exact i64 %426, 3
  %428 = trunc i64 %427 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr %198, ptr %8, align 8, !tbaa !224
  store i64 0, ptr %201, align 8, !tbaa !226
  %429 = icmp ult i32 %428, 5
  br i1 %429, label %435, label %430

430:                                              ; preds = %421
  %431 = and i64 %427, 4294967295
  call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %8, i64 noundef 0, i64 noundef %431, ptr noundef nonnull %0, ptr noundef nonnull %192)
  %432 = load ptr, ptr %8, align 8, !tbaa !224
  %433 = load i64, ptr %201, align 8, !tbaa !226
  %434 = getelementptr inbounds nuw [4 x i8], ptr %432, i64 %433
  store i32 %428, ptr %434, align 4, !tbaa !4
  br label %435

435:                                              ; preds = %430, %421
  %436 = phi i64 [ %433, %430 ], [ 0, %421 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %437 = load ptr, ptr %196, align 8, !tbaa !57
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %438, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %438, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %199, i8 0, i64 80, i1 false)
  %439 = icmp eq i64 %436, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %435
  %441 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %192, ptr noundef %9, ptr noundef %10, ptr noundef %215, i64 noundef range(i64 6, 0) %212, ptr noundef %214, i64 noundef %242, i32 noundef range(i32 0, 2) %244, i32 noundef 0)
  br label %630

442:                                              ; preds = %435
  %443 = load i32, ptr %198, align 4, !tbaa !4
  %444 = zext i32 %443 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %200, ptr noundef nonnull readonly align 8 dereferenceable(80) %192, i64 80, i1 false), !tbaa.struct !227
  %445 = load i32, ptr %202, align 8, !tbaa !167
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %442
  %448 = load i32, ptr %203, align 4, !tbaa !168
  %449 = icmp ult i32 %443, %448
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  store i32 0, ptr %204, align 8, !tbaa !167
  br label %451

451:                                              ; preds = %450, %447, %442
  %452 = load ptr, ptr %192, align 8, !tbaa !154
  store ptr %452, ptr %200, align 8, !tbaa !154
  %453 = shl nuw nsw i64 %444, 3
  %454 = getelementptr inbounds nuw i8, ptr %452, i64 %453
  store ptr %454, ptr %205, align 8, !tbaa !158
  %455 = load ptr, ptr %193, align 8, !tbaa !158
  %456 = ptrtoint ptr %455 to i64
  %457 = ptrtoint ptr %452 to i64
  %458 = sub i64 %456, %457
  %459 = ashr exact i64 %458, 3
  %460 = icmp eq i64 %459, %444
  br i1 %460, label %495, label %461

461:                                              ; preds = %451
  %462 = icmp eq i32 %443, 0
  br i1 %462, label %491, label %463

463:                                              ; preds = %487, %461
  %464 = phi i64 [ %488, %487 ], [ 0, %461 ]
  %465 = phi i64 [ %489, %487 ], [ 0, %461 ]
  %466 = getelementptr inbounds nuw [8 x i8], ptr %452, i64 %465
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 4
  %468 = load i16, ptr %467, align 4, !tbaa !199
  %469 = zext i16 %468 to i64
  %470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 %469), !nosanitize !8
  %471 = extractvalue { i64, i1 } %470, 0, !nosanitize !8
  %472 = extractvalue { i64, i1 } %470, 1, !nosanitize !8
  br i1 %472, label %473, label %474, !prof !9, !nosanitize !8

473:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

474:                                              ; preds = %463
  %475 = load i32, ptr %206, align 4, !tbaa !168
  %476 = zext i32 %475 to i64
  %477 = icmp eq i64 %465, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %474
  %479 = load i32, ptr %204, align 8, !tbaa !167
  %480 = icmp eq i32 %479, 1
  br i1 %480, label %481, label %487

481:                                              ; preds = %478
  %482 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %471, i64 65536), !nosanitize !8
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !8
  br i1 %483, label %484, label %485, !prof !9, !nosanitize !8

484:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

485:                                              ; preds = %481
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !8
  br label %487

487:                                              ; preds = %485, %478, %474
  %488 = phi i64 [ %486, %485 ], [ %471, %478 ], [ %471, %474 ]
  %489 = add nuw nsw i64 %465, 1
  %490 = icmp eq i64 %489, %444
  br i1 %490, label %491, label %463, !llvm.loop !230

491:                                              ; preds = %487, %461
  %492 = phi i64 [ 0, %461 ], [ %488, %487 ]
  %493 = load ptr, ptr %207, align 8, !tbaa !169
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 %492
  store ptr %494, ptr %208, align 8, !tbaa !170
  br label %495

495:                                              ; preds = %491, %451
  br label %496

496:                                              ; preds = %623, %495
  %497 = phi i64 [ %612, %623 ], [ %212, %495 ]
  %498 = phi i64 [ %624, %623 ], [ 0, %495 ]
  %499 = phi ptr [ %609, %623 ], [ %214, %495 ]
  %500 = phi ptr [ %610, %623 ], [ %215, %495 ]
  %501 = phi i64 [ %625, %623 ], [ 0, %495 ]
  %502 = phi i64 [ %576, %623 ], [ 0, %495 ]
  %503 = icmp eq i64 %501, %436
  %504 = load ptr, ptr %205, align 8, !tbaa !158
  %505 = load ptr, ptr %200, align 8, !tbaa !154
  %506 = icmp eq ptr %504, %505
  br i1 %506, label %569, label %507

507:                                              ; preds = %496
  %508 = ptrtoint ptr %504 to i64
  %509 = ptrtoint ptr %505 to i64
  %510 = sub i64 %508, %509
  %511 = ashr exact i64 %510, 3
  br label %512

512:                                              ; preds = %536, %507
  %513 = phi i64 [ 0, %507 ], [ %537, %536 ]
  %514 = phi i64 [ 0, %507 ], [ %538, %536 ]
  %515 = getelementptr inbounds nuw [8 x i8], ptr %505, i64 %514
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 4
  %517 = load i16, ptr %516, align 4, !tbaa !199
  %518 = zext i16 %517 to i64
  %519 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %513, i64 %518), !nosanitize !8
  %520 = extractvalue { i64, i1 } %519, 0, !nosanitize !8
  %521 = extractvalue { i64, i1 } %519, 1, !nosanitize !8
  br i1 %521, label %522, label %523, !prof !9, !nosanitize !8

522:                                              ; preds = %512
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

523:                                              ; preds = %512
  %524 = load i32, ptr %206, align 4, !tbaa !168
  %525 = zext i32 %524 to i64
  %526 = icmp eq i64 %514, %525
  br i1 %526, label %527, label %536

527:                                              ; preds = %523
  %528 = load i32, ptr %204, align 8, !tbaa !167
  %529 = icmp eq i32 %528, 1
  br i1 %529, label %530, label %536

530:                                              ; preds = %527
  %531 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %520, i64 65536), !nosanitize !8
  %532 = extractvalue { i64, i1 } %531, 1, !nosanitize !8
  br i1 %532, label %533, label %534, !prof !9, !nosanitize !8

533:                                              ; preds = %530
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

534:                                              ; preds = %530
  %535 = extractvalue { i64, i1 } %531, 0, !nosanitize !8
  br label %536

536:                                              ; preds = %534, %527, %523
  %537 = phi i64 [ %535, %534 ], [ %520, %527 ], [ %520, %523 ]
  %538 = add nuw i64 %514, 1
  %539 = icmp eq i64 %538, %511
  br i1 %539, label %540, label %512, !llvm.loop !230

540:                                              ; preds = %563, %536
  %541 = phi i64 [ %564, %563 ], [ 0, %536 ]
  %542 = phi i64 [ %565, %563 ], [ 0, %536 ]
  %543 = getelementptr inbounds nuw [8 x i8], ptr %505, i64 %542
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 6
  %545 = load i16, ptr %544, align 2, !tbaa !199
  %546 = zext i16 %545 to i64
  %547 = add nuw nsw i64 %546, 3
  %548 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %541, i64 %547), !nosanitize !8
  %549 = extractvalue { i64, i1 } %548, 0, !nosanitize !8
  %550 = extractvalue { i64, i1 } %548, 1, !nosanitize !8
  br i1 %550, label %551, label %552, !prof !9, !nosanitize !8

551:                                              ; preds = %540
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

552:                                              ; preds = %540
  %553 = icmp eq i64 %542, %525
  br i1 %553, label %554, label %563

554:                                              ; preds = %552
  %555 = load i32, ptr %204, align 8, !tbaa !167
  %556 = icmp eq i32 %555, 2
  br i1 %556, label %557, label %563

557:                                              ; preds = %554
  %558 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %549, i64 65536), !nosanitize !8
  %559 = extractvalue { i64, i1 } %558, 1, !nosanitize !8
  br i1 %559, label %560, label %561, !prof !9, !nosanitize !8

560:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

561:                                              ; preds = %557
  %562 = extractvalue { i64, i1 } %558, 0, !nosanitize !8
  br label %563

563:                                              ; preds = %561, %554, %552
  %564 = phi i64 [ %562, %561 ], [ %549, %554 ], [ %549, %552 ]
  %565 = add nuw i64 %542, 1
  %566 = icmp eq i64 %565, %511
  br i1 %566, label %567, label %540, !llvm.loop !231

567:                                              ; preds = %563
  %568 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %537, i64 %564)
  br label %569

569:                                              ; preds = %567, %496
  %570 = phi { i64, i1 } [ zeroinitializer, %496 ], [ %568, %567 ]
  %571 = extractvalue { i64, i1 } %570, 0, !nosanitize !8
  %572 = extractvalue { i64, i1 } %570, 1, !nosanitize !8
  br i1 %572, label %573, label %574, !prof !9, !nosanitize !8

573:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

574:                                              ; preds = %569
  %575 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %502, i64 %571), !nosanitize !8
  %576 = extractvalue { i64, i1 } %575, 0, !nosanitize !8
  %577 = extractvalue { i64, i1 } %575, 1, !nosanitize !8
  br i1 %577, label %578, label %579, !prof !9, !nosanitize !8

578:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

579:                                              ; preds = %574
  br i1 %503, label %580, label %591

580:                                              ; preds = %579
  %581 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %242, i64 %576), !nosanitize !8
  %582 = extractvalue { i64, i1 } %581, 1, !nosanitize !8
  br i1 %582, label %583, label %584, !prof !9, !nosanitize !8

583:                                              ; preds = %580
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

584:                                              ; preds = %580
  %585 = extractvalue { i64, i1 } %581, 0, !nosanitize !8
  %586 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %571, i64 %585), !nosanitize !8
  %587 = extractvalue { i64, i1 } %586, 1, !nosanitize !8
  br i1 %587, label %588, label %589, !prof !9, !nosanitize !8

588:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

589:                                              ; preds = %584
  %590 = extractvalue { i64, i1 } %586, 0, !nosanitize !8
  br label %603

591:                                              ; preds = %579
  %592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 1), !nosanitize !8
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !8
  br i1 %593, label %594, label %595, !prof !9, !nosanitize !8

594:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

595:                                              ; preds = %591
  %596 = extractvalue { i64, i1 } %592, 0, !nosanitize !8
  %597 = getelementptr inbounds nuw [4 x i8], ptr %198, i64 %501
  %598 = load i32, ptr %597, align 4, !tbaa !4
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds nuw [4 x i8], ptr %198, i64 %596
  %601 = load i32, ptr %600, align 4, !tbaa !4
  %602 = zext i32 %601 to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %199, ptr noundef nonnull %192, i64 noundef %599, i64 noundef %602)
  br label %603

603:                                              ; preds = %595, %589
  %604 = phi i32 [ %244, %589 ], [ 0, %595 ]
  %605 = phi i64 [ %590, %589 ], [ %571, %595 ]
  %606 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %200, ptr noundef %9, ptr noundef %10, ptr noundef %500, i64 noundef %497, ptr noundef %499, i64 noundef %605, i32 noundef %604, i32 noundef 1)
  %607 = icmp ult i64 %606, -119
  br i1 %607, label %608, label %630

608:                                              ; preds = %603
  %609 = getelementptr inbounds nuw i8, ptr %499, i64 %605
  %610 = getelementptr inbounds nuw i8, ptr %500, i64 %606
  %611 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %497, i64 %606), !nosanitize !8
  %612 = extractvalue { i64, i1 } %611, 0, !nosanitize !8
  %613 = extractvalue { i64, i1 } %611, 1, !nosanitize !8
  br i1 %613, label %614, label %615, !prof !9, !nosanitize !8

614:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

615:                                              ; preds = %608
  %616 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %498, i64 %606), !nosanitize !8
  %617 = extractvalue { i64, i1 } %616, 1, !nosanitize !8
  br i1 %617, label %618, label %619, !prof !9, !nosanitize !8

618:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

619:                                              ; preds = %615
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %200, ptr noundef nonnull align 8 dereferenceable(80) %199, i64 80, i1 false), !tbaa.struct !227
  %620 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 1), !nosanitize !8
  %621 = extractvalue { i64, i1 } %620, 1, !nosanitize !8
  br i1 %621, label %622, label %623, !prof !9, !nosanitize !8

622:                                              ; preds = %619
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

623:                                              ; preds = %619
  %624 = extractvalue { i64, i1 } %616, 0, !nosanitize !8
  %625 = extractvalue { i64, i1 } %620, 0, !nosanitize !8
  %626 = icmp ugt i64 %625, %436
  br i1 %626, label %627, label %496, !llvm.loop !232

627:                                              ; preds = %623
  %628 = load ptr, ptr %196, align 8, !tbaa !57
  %629 = getelementptr inbounds nuw i8, ptr %628, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %629, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  br label %630

630:                                              ; preds = %627, %603, %440
  %631 = phi i64 [ %441, %440 ], [ %624, %627 ], [ %606, %603 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %632

632:                                              ; preds = %630, %415
  %633 = phi i64 [ %631, %630 ], [ %410, %415 ]
  %634 = icmp ult i64 %633, -119
  br i1 %634, label %676, label %736

635:                                              ; preds = %676
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

636:                                              ; preds = %388
  %637 = add i64 %212, -3
  %638 = getelementptr inbounds nuw i8, ptr %215, i64 3
  %639 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %638, i64 noundef %637, ptr noundef %214, i64 noundef %242, i32 noundef 1)
  %640 = icmp ult i64 %639, -119
  br i1 %640, label %641, label %736

641:                                              ; preds = %636
  switch i64 %639, label %663 [
    i64 0, label %642
    i64 1, label %658
  ]

642:                                              ; preds = %641
  %643 = trunc i64 %242 to i32
  %644 = shl i32 %643, 3
  %645 = or disjoint i32 %644, %244
  %646 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 3), !nosanitize !8
  %647 = extractvalue { i64, i1 } %646, 0, !nosanitize !8
  %648 = extractvalue { i64, i1 } %646, 1, !nosanitize !8
  br i1 %648, label %649, label %650, !prof !9, !nosanitize !8

649:                                              ; preds = %642
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

650:                                              ; preds = %642
  %651 = icmp ugt i64 %647, %212
  br i1 %651, label %736, label %652

652:                                              ; preds = %650
  %653 = trunc i32 %645 to i16
  store i16 %653, ptr %215, align 1, !tbaa !199
  %654 = lshr i32 %644, 16
  %655 = trunc i32 %654 to i8
  %656 = getelementptr inbounds nuw i8, ptr %215, i64 2
  store i8 %655, ptr %656, align 1, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %638, ptr readonly align 1 %214, i64 %242, i1 false)
  %657 = icmp ult i64 %647, -119
  br i1 %657, label %676, label %736

658:                                              ; preds = %641
  %659 = trunc i64 %242 to i32
  %660 = shl i32 %659, 3
  %661 = or disjoint i32 %244, %660
  %662 = or disjoint i32 %661, 2
  br label %669

663:                                              ; preds = %641
  %664 = trunc i64 %639 to i32
  %665 = shl i32 %664, 3
  %666 = or disjoint i32 %665, %244
  %667 = or disjoint i32 %666, 4
  br label %669

668:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

669:                                              ; preds = %663, %658
  %670 = phi i32 [ %662, %658 ], [ %667, %663 ]
  %671 = trunc i32 %670 to i16
  store i16 %671, ptr %215, align 1, !tbaa !199
  %672 = lshr i32 %670, 16
  %673 = trunc i32 %672 to i8
  %674 = getelementptr inbounds nuw i8, ptr %215, i64 2
  store i8 %673, ptr %674, align 1, !tbaa !164
  %675 = add nuw i64 %639, 3
  br label %676

676:                                              ; preds = %669, %652, %632, %387, %381
  %677 = phi i64 [ %675, %669 ], [ %633, %632 ], [ %647, %652 ], [ %382, %381 ], [ %382, %387 ]
  %678 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %242, i64 %677), !nosanitize !8
  %679 = extractvalue { i64, i1 } %678, 1, !nosanitize !8
  br i1 %679, label %635, label %680, !prof !9, !nosanitize !8

680:                                              ; preds = %676
  %681 = extractvalue { i64, i1 } %678, 0, !nosanitize !8
  %682 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %216, i64 %681), !nosanitize !8
  %683 = extractvalue { i64, i1 } %682, 1, !nosanitize !8
  br i1 %683, label %668, label %684, !prof !9, !nosanitize !8

684:                                              ; preds = %680
  %685 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %213, i64 %242), !nosanitize !8
  %686 = extractvalue { i64, i1 } %685, 0, !nosanitize !8
  %687 = extractvalue { i64, i1 } %685, 1, !nosanitize !8
  br i1 %687, label %688, label %689, !prof !9, !nosanitize !8

688:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

689:                                              ; preds = %684
  %690 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %212, i64 %677), !nosanitize !8
  %691 = extractvalue { i64, i1 } %690, 1, !nosanitize !8
  br i1 %691, label %692, label %693, !prof !9, !nosanitize !8

692:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

693:                                              ; preds = %689
  %694 = extractvalue { i64, i1 } %690, 0, !nosanitize !8
  %695 = getelementptr inbounds nuw i8, ptr %215, i64 %677
  store i32 0, ptr %191, align 8, !tbaa !220
  %696 = icmp eq i64 %686, 0
  br i1 %696, label %697, label %210, !llvm.loop !233

697:                                              ; preds = %693
  %698 = icmp ne i32 %6, 0
  %699 = icmp ugt ptr %695, %41
  %700 = select i1 %698, i1 %699, i1 false
  br i1 %700, label %701, label %702

701:                                              ; preds = %697
  store i32 3, ptr %0, align 8, !tbaa !203
  br label %702

702:                                              ; preds = %701, %697
  %703 = ptrtoint ptr %695 to i64
  %704 = ptrtoint ptr %41 to i64
  %705 = sub i64 %703, %704
  br label %706

706:                                              ; preds = %702, %154
  %707 = phi i64 [ %156, %154 ], [ %705, %702 ]
  %708 = icmp ult i64 %707, -119
  br i1 %708, label %709, label %736

709:                                              ; preds = %706
  %710 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %711 = load i64, ptr %710, align 8, !tbaa !141
  %712 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %711, i64 %4), !nosanitize !8
  %713 = extractvalue { i64, i1 } %712, 1, !nosanitize !8
  br i1 %713, label %714, label %715, !prof !9, !nosanitize !8

714:                                              ; preds = %709
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

715:                                              ; preds = %709
  %716 = extractvalue { i64, i1 } %712, 0, !nosanitize !8
  store i64 %716, ptr %710, align 8, !tbaa !141
  %717 = add i64 %707, %39
  %718 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %719 = load i64, ptr %718, align 8, !tbaa !145
  %720 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %719, i64 %717), !nosanitize !8
  %721 = extractvalue { i64, i1 } %720, 1, !nosanitize !8
  br i1 %721, label %722, label %723, !prof !9, !nosanitize !8

722:                                              ; preds = %715
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

723:                                              ; preds = %715
  %724 = extractvalue { i64, i1 } %720, 0, !nosanitize !8
  store i64 %724, ptr %718, align 8, !tbaa !145
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %726 = load i64, ptr %725, align 8, !tbaa !119
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %735, label %728

728:                                              ; preds = %723
  %729 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %716, i64 1), !nosanitize !8
  %730 = extractvalue { i64, i1 } %729, 1, !nosanitize !8
  br i1 %730, label %731, label %732, !prof !9, !nosanitize !8

731:                                              ; preds = %728
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

732:                                              ; preds = %728
  %733 = extractvalue { i64, i1 } %729, 0, !nosanitize !8
  %734 = icmp ugt i64 %733, %726
  br i1 %734, label %736, label %735

735:                                              ; preds = %732, %723
  br label %736

736:                                              ; preds = %735, %732, %706, %652, %650, %636, %632, %413, %402, %391, %374, %372, %350, %300, %241, %38, %24, %7
  %737 = phi i64 [ %29, %24 ], [ %39, %38 ], [ -60, %7 ], [ %707, %706 ], [ %717, %735 ], [ -72, %732 ], [ %392, %391 ], [ -106, %402 ], [ -70, %413 ], [ %369, %374 ], [ -70, %372 ], [ %337, %350 ], [ -70, %650 ], [ %633, %632 ], [ %647, %652 ], [ %639, %636 ], [ %301, %300 ], [ -70, %241 ]
  ret i64 %737
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #12 {
  %2 = getelementptr i8, ptr %0, i64 244
  %3 = load i32, ptr %2, align 4, !tbaa !4
  %4 = getelementptr i8, ptr %0, i64 392
  %5 = load i64, ptr %4, align 8, !tbaa !234
  %6 = zext nneg i32 %3 to i64
  %7 = shl nuw i64 1, %6
  %8 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %5, i64 %7)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !234
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = icmp ugt i64 %4, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !234
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = icmp ugt i64 %4, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [32 x i16], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [53 x i16], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [36 x i16], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i32 31, ptr %6, align 4, !tbaa !4
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %18, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store i32 255, ptr %7, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store i32 1, ptr %8, align 4, !tbaa !4
  %19 = ptrtoint ptr %16 to i64
  %20 = add i64 %3, -8
  %21 = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef %20, ptr noundef nonnull %8) #35
  %22 = load i32, ptr %8, align 4, !tbaa !4
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 255
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 2, ptr %18, align 8, !tbaa !150
  br label %28

28:                                               ; preds = %27, %4
  %29 = icmp ult i64 %21, -119
  %30 = getelementptr inbounds nuw i8, ptr %17, i64 %21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br i1 %29, label %31, label %206

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %32 = sub i64 %20, %21
  %33 = call i64 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %30, i64 noundef %32) #35
  %34 = icmp ult i64 %33, -119
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 4, !tbaa !4
  %37 = icmp ugt i32 %36, 8
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %206

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %41 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %40, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %36, ptr noundef %1, i64 noundef 8704) #35
  %42 = icmp ult i64 %41, -119
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 %33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br i1 %42, label %44, label %206

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  store i32 52, ptr %11, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %45 = add i64 %21, %33
  %46 = sub i64 %20, %45
  %47 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %43, i64 noundef %46) #35
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load i32, ptr %12, align 4, !tbaa !4
  %51 = icmp ugt i32 %50, 9
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %54 = load i32, ptr %11, align 4, !tbaa !4
  %55 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %53, ptr noundef nonnull %10, i32 noundef %54, i32 noundef %50, ptr noundef %1, i64 noundef 8704) #35
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i32, ptr %11, align 4, !tbaa !4
  %59 = icmp ult i32 %58, 52
  %60 = load <48 x i16>, ptr %10, align 16
  %61 = freeze <48 x i16> %60
  %62 = icmp eq <48 x i16> %61, zeroinitializer
  %63 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %64 = load <4 x i16>, ptr %63, align 16
  %65 = freeze <4 x i16> %64
  %66 = icmp eq <4 x i16> %65, zeroinitializer
  %67 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %68 = load i16, ptr %67, align 8
  %69 = icmp eq i16 %68, 0
  %70 = shufflevector <48 x i1> %62, <48 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %71 = or <4 x i1> %70, %66
  %72 = shufflevector <4 x i1> %71, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <48 x i1> %72, <48 x i1> %62, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %74 = bitcast <48 x i1> %73 to i48
  %75 = icmp ne i48 %74, 0
  %76 = select i1 %59, i1 true, i1 %75
  %77 = select i1 %76, i1 true, i1 %69
  %78 = select i1 %77, i32 1, i32 2
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 %78, ptr %79, align 8, !tbaa !152
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 %47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  store i32 35, ptr %14, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %19, %81
  %83 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %80, i64 noundef %82) #35
  %84 = icmp ult i64 %83, -119
  br i1 %84, label %86, label %116

85:                                               ; preds = %52, %49, %44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %206

86:                                               ; preds = %57
  %87 = load i32, ptr %15, align 4, !tbaa !4
  %88 = icmp ugt i32 %87, 9
  br i1 %88, label %116, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %91 = load i32, ptr %14, align 4, !tbaa !4
  %92 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %90, ptr noundef nonnull %13, i32 noundef %91, i32 noundef %87, ptr noundef %1, i64 noundef 8704) #35
  %93 = icmp ult i64 %92, -119
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load i32, ptr %14, align 4, !tbaa !4
  %96 = icmp ult i32 %95, 35
  %97 = load <32 x i16>, ptr %13, align 16
  %98 = freeze <32 x i16> %97
  %99 = icmp eq <32 x i16> %98, zeroinitializer
  %100 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %101 = load <4 x i16>, ptr %100, align 16
  %102 = freeze <4 x i16> %101
  %103 = icmp eq <4 x i16> %102, zeroinitializer
  %104 = shufflevector <32 x i1> %99, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %105 = or <4 x i1> %104, %103
  %106 = shufflevector <4 x i1> %105, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %107 = shufflevector <32 x i1> %106, <32 x i1> %99, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %108 = bitcast <32 x i1> %107 to i32
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %96, i1 true, i1 %109
  %111 = select i1 %110, i32 1, i32 2
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 %111, ptr %112, align 4, !tbaa !153
  %113 = getelementptr inbounds nuw i8, ptr %80, i64 %83
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 12
  %115 = icmp ugt ptr %114, %16
  br i1 %115, label %206, label %117

116:                                              ; preds = %89, %86, %57
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %206

117:                                              ; preds = %94
  %118 = load i32, ptr %113, align 1, !tbaa !4
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 %118, ptr %119, align 8, !tbaa !4
  %120 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %121 = load i32, ptr %120, align 1, !tbaa !4
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 5620
  store i32 %121, ptr %122, align 4, !tbaa !4
  %123 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %124 = load i32, ptr %123, align 1, !tbaa !4
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store i32 %124, ptr %125, align 8, !tbaa !4
  %126 = ptrtoint ptr %114 to i64
  %127 = sub i64 %19, %126
  %128 = icmp ult i64 %127, 4294836224
  %129 = trunc nuw i64 %127 to i32
  %130 = add nuw i32 %129, 131072
  %131 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %130, i1 true)
  %132 = xor i32 %131, 31
  %133 = select i1 %128, i32 %132, i32 31
  %134 = load i32, ptr %6, align 4, !tbaa !4
  %135 = icmp ult i32 %134, %133
  br i1 %135, label %186, label %136

136:                                              ; preds = %117
  %137 = zext nneg i32 %133 to i64
  %138 = add nuw nsw i64 %137, 1
  %139 = icmp samesign ult i32 %133, 7
  br i1 %139, label %176, label %140

140:                                              ; preds = %136
  %141 = and i64 %138, 56
  %142 = load <8 x i16>, ptr %5, align 16, !tbaa !199
  %143 = freeze <8 x i16> %142
  %144 = icmp eq <8 x i16> %143, zeroinitializer
  %145 = bitcast <8 x i1> %144 to i8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %140
  %148 = icmp eq i64 %141, 8
  br i1 %148, label %174, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %151 = load <8 x i16>, ptr %150, align 16, !tbaa !199
  %152 = freeze <8 x i16> %151
  %153 = icmp eq <8 x i16> %152, zeroinitializer
  %154 = bitcast <8 x i1> %153 to i8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %149
  %157 = icmp eq i64 %141, 16
  br i1 %157, label %174, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %160 = load <8 x i16>, ptr %159, align 16, !tbaa !199
  %161 = freeze <8 x i16> %160
  %162 = icmp eq <8 x i16> %161, zeroinitializer
  %163 = bitcast <8 x i1> %162 to i8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %158
  %166 = icmp eq i64 %141, 24
  br i1 %166, label %174, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %169 = load <8 x i16>, ptr %168, align 16, !tbaa !199
  %170 = freeze <8 x i16> %169
  %171 = icmp eq <8 x i16> %170, zeroinitializer
  %172 = bitcast <8 x i1> %171 to i8
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %167, %165, %156, %147
  %175 = icmp eq i64 %138, %141
  br i1 %175, label %186, label %176

176:                                              ; preds = %174, %136
  %177 = phi i64 [ 0, %136 ], [ %141, %174 ]
  br label %181

178:                                              ; preds = %181
  %179 = add nuw nsw i64 %182, 1
  %180 = icmp eq i64 %182, %137
  br i1 %180, label %186, label %181, !llvm.loop !235

181:                                              ; preds = %178, %176
  %182 = phi i64 [ %179, %178 ], [ %177, %176 ]
  %183 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !199
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %178

186:                                              ; preds = %181, %178, %174, %167, %158, %149, %140, %117
  %187 = phi i32 [ 1, %117 ], [ 2, %174 ], [ 1, %181 ], [ 2, %178 ], [ 1, %167 ], [ 1, %158 ], [ 1, %149 ], [ 1, %140 ]
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %187, ptr %188, align 4, !tbaa !151
  %189 = icmp eq i32 %118, 0
  %190 = zext i32 %118 to i64
  %191 = icmp ult i64 %127, %190
  %192 = or i1 %189, %191
  br i1 %192, label %206, label %193

193:                                              ; preds = %186
  %194 = icmp eq i32 %121, 0
  %195 = zext i32 %121 to i64
  %196 = icmp ult i64 %127, %195
  %197 = or i1 %194, %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = icmp eq i32 %124, 0
  %200 = zext i32 %124 to i64
  %201 = icmp ult i64 %127, %200
  %202 = or i1 %199, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = ptrtoint ptr %2 to i64
  %205 = sub i64 %126, %204
  br label %206

206:                                              ; preds = %203, %198, %193, %186, %116, %94, %85, %39, %38, %28
  %207 = phi i64 [ -30, %28 ], [ %205, %203 ], [ -30, %38 ], [ -30, %116 ], [ -30, %85 ], [ -30, %39 ], [ -30, %94 ], [ -30, %198 ], [ -30, %193 ], [ -30, %186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret i64 %207
}

declare i64 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #4 {
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load <4 x i32>, ptr %9, align 4, !tbaa !4
  %11 = freeze <4 x i32> %10
  %12 = add <4 x i32> %11, <i32 -32, i32 -31, i32 -31, i32 -31>
  %13 = icmp ult <4 x i32> %12, <i32 -22, i32 -25, i32 -25, i32 -30>
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp eq i4 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !4
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %20 = load i32, ptr %19, align 4, !tbaa !4
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %22 = load i32, ptr %21, align 4, !tbaa !4
  %23 = add i32 %22, -3
  %24 = icmp ult i32 %23, 5
  %25 = icmp ult i32 %20, 131073
  %26 = select i1 %24, i1 %25, i1 false
  %27 = add i32 %18, -1
  %28 = icmp ult i32 %27, 9
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = tail call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, i64 noundef %2, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0)
  br label %32

32:                                               ; preds = %30, %16, %8
  %33 = phi i64 [ %31, %30 ], [ -42, %16 ], [ -42, %8 ]
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 0) i64 @ZSTD_compressBegin_internal(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %8 = icmp eq ptr %2, null
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #35
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %13, ptr %14, align 8, !tbaa !238
  br i1 %8, label %68, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !239
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = icmp ult i64 %4, 131072
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %17, i64 6), !nosanitize !8
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !8
  br i1 %23, label %24, label %25, !prof !9, !nosanitize !8

24:                                               ; preds = %21
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

25:                                               ; preds = %21
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !8
  %27 = icmp ult i64 %4, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %68, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 244
  %35 = load i32, ptr %34, align 4, !tbaa !240
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 384
  %38 = load i32, ptr %37, align 8, !tbaa !4
  br i1 %36, label %39, label %51

39:                                               ; preds = %33
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !118
  %43 = icmp ugt i64 %4, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

45:                                               ; preds = %39
  %46 = icmp eq i32 %31, 2
  br i1 %46, label %60, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %49 = load i32, ptr %48, align 8, !tbaa !97
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %60

51:                                               ; preds = %33
  %52 = add i32 %38, -3
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 368
  %56 = load i32, ptr %55, align 8, !tbaa !4
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %59, !prof !9, !nosanitize !8

58:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

59:                                               ; preds = %54, %51, %47
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

60:                                               ; preds = %47, %45
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, ptr noundef nonnull readonly align 8 dereferenceable(224) %3, i64 224, i1 false)
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 360
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %62, ptr noundef nonnull readonly align 4 dereferenceable(28) %61, i64 28, i1 false), !tbaa.struct !78
  store i32 %63, ptr %62, align 4, !tbaa !88
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 6072
  %65 = load i32, ptr %64, align 8, !tbaa !241
  %66 = getelementptr inbounds nuw i8, ptr %7, i64 160
  store i32 %65, ptr %66, align 8, !tbaa !80
  %67 = call fastcc range(i64 -119, 0) i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull align 8 %7, i64 noundef %4, i32 noundef range(i32 0, 2) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %70

68:                                               ; preds = %29, %15, %12
  %69 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi i64 [ %67, %60 ], [ %69, %68 ]
  ret i64 %71
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !78
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !79
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = add i32 %12, -6
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  store i32 2, ptr %10, align 8, !tbaa !80
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %17 = icmp ugt i32 %12, 6
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  store i32 2, ptr %16, align 4, !tbaa !81
  br label %30

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 8, !tbaa !72
  %21 = icmp ugt i32 %20, 14
  %22 = select i1 %21, i32 1, i32 2
  store i32 %22, ptr %10, align 8, !tbaa !80
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %23, align 4, !tbaa !81
  br label %30

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 8, !tbaa !72
  %26 = icmp ugt i32 %25, 16
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %16, align 4, !tbaa !81
  %28 = icmp ugt i32 %25, 26
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %24, %19, %18
  %31 = phi i32 [ %29, %24 ], [ 2, %19 ], [ 2, %18 ]
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %31, ptr %32, align 8, !tbaa !82
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %33, align 8, !tbaa !83
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i32 2, ptr %34, align 8, !tbaa !84
  %35 = load <4 x i32>, ptr %7, align 4, !tbaa !4
  %36 = freeze <4 x i32> %35
  %37 = add <4 x i32> %36, <i32 -32, i32 -31, i32 -31, i32 -31>
  %38 = icmp ult <4 x i32> %37, <i32 -22, i32 -25, i32 -25, i32 -30>
  %39 = bitcast <4 x i1> %38 to i4
  %40 = icmp eq i4 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %30
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %43 = load i32, ptr %42, align 4, !tbaa !4
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !4
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %47 = load i32, ptr %46, align 4, !tbaa !4
  %48 = add i32 %47, -3
  %49 = icmp ult i32 %48, 5
  %50 = icmp ult i32 %45, 131073
  %51 = select i1 %49, i1 %50, i1 false
  %52 = add i32 %43, -1
  %53 = icmp ult i32 %52, 9
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #35
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %58, %57 ], [ 0, %55 ]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %60, ptr %61, align 8, !tbaa !238
  %62 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, i64 noundef %4, i32 noundef 0)
  br label %63

63:                                               ; preds = %59, %41, %30
  %64 = phi i64 [ %62, %59 ], [ -42, %41 ], [ -42, %30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret i64 %64
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin(ptr noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_CCtx_trace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_Trace, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %5 = load i64, ptr %4, align 8, !tbaa !238
  %6 = icmp ne i64 %5, 0
  %7 = icmp ne ptr @ZSTD_trace_compress_end, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %11 = load i64, ptr %10, align 8, !tbaa !242
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %15 = load i64, ptr %14, align 8, !tbaa !243
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %19 = load i32, ptr %18, align 4, !tbaa !244
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %17, %13, %9
  %23 = phi i32 [ 1, %13 ], [ 1, %9 ], [ %21, %17 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, i8 0, i64 56, i1 false)
  store i32 10600, ptr %3, align 8, !tbaa !245
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %23, ptr %25, align 4, !tbaa !250
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %27 = load i32, ptr %26, align 8, !tbaa !204
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %27, ptr %28, align 8, !tbaa !251
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %30 = load i64, ptr %29, align 8, !tbaa !252
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %30, ptr %31, align 8, !tbaa !253
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %33 = load i64, ptr %32, align 8, !tbaa !141
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %33, ptr %34, align 8, !tbaa !254
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %36 = load i64, ptr %35, align 8, !tbaa !145
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 %1), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %22
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %41, ptr %42, align 8, !tbaa !255
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %43, ptr %44, align 8, !tbaa !256
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %45, align 8, !tbaa !257
  call void @ZSTD_trace_compress_end(i64 noundef %5, ptr noundef nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %46

46:                                               ; preds = %40, %2
  store i64 0, ptr %4, align 8, !tbaa !238
  ret void
}

declare extern_weak void @ZSTD_trace_compress_end(i64 noundef, ptr noundef) #16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 1)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %138

9:                                                ; preds = %5
  %10 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %7), !nosanitize !8
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !8
  br i1 %11, label %12, label %13, !prof !9, !nosanitize !8

12:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

13:                                               ; preds = %9
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %16 = load i32, ptr %0, align 8, !tbaa !203
  switch i32 %16, label %52 [
    i32 0, label %138
    i32 1, label %17
    i32 3, label %58
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %21 = load i32, ptr %20, align 4, !tbaa !88
  %22 = load i32, ptr %19, align 8, !tbaa !47
  %23 = icmp eq i32 %22, 0
  %24 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %21, i32 10), !nosanitize !8
  %25 = extractvalue { i32, i1 } %24, 1, !nosanitize !8
  br i1 %25, label %26, label %27, !prof !9, !nosanitize !8

26:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

27:                                               ; preds = %17
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %29 = load i32, ptr %28, align 4, !tbaa !95
  %30 = icmp sgt i32 %29, 0
  %31 = extractvalue { i32, i1 } %24, 0, !nosanitize !8
  %32 = trunc i32 %31 to i8
  %33 = shl i8 %32, 3
  %34 = select i1 %30, i8 4, i8 0
  %35 = select i1 %23, i8 0, i8 32
  %36 = or disjoint i8 %34, %35
  %37 = icmp ult i64 %14, 18
  br i1 %37, label %138, label %38

38:                                               ; preds = %27
  %39 = load i32, ptr %18, align 8, !tbaa !87
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -47205080, ptr %15, align 1, !tbaa !4
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i64 [ 4, %41 ], [ 0, %38 ]
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 %43
  store i8 %36, ptr %44, align 1, !tbaa !164
  %45 = select i1 %23, i8 %33, i8 0
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !164
  store i32 2, ptr %0, align 8, !tbaa !203
  %47 = getelementptr inbounds nuw i8, ptr %44, i64 2
  store i16 1, ptr %47, align 1, !tbaa !199
  %48 = getelementptr inbounds nuw i8, ptr %44, i64 4
  store i8 0, ptr %48, align 1, !tbaa !164
  %49 = add i64 %14, -5
  %50 = sub nuw i64 %49, %43
  %51 = getelementptr inbounds nuw i8, ptr %44, i64 5
  br label %58

52:                                               ; preds = %13
  %53 = icmp ugt i64 %14, 2
  br i1 %53, label %54, label %138

54:                                               ; preds = %52
  store i16 1, ptr %15, align 1, !tbaa !199
  %55 = getelementptr inbounds nuw i8, ptr %15, i64 2
  store i8 0, ptr %55, align 1, !tbaa !164
  %56 = add i64 %14, -3
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 3
  br label %58

58:                                               ; preds = %54, %42, %13
  %59 = phi ptr [ %51, %42 ], [ %15, %13 ], [ %57, %54 ]
  %60 = phi i64 [ %50, %42 ], [ %14, %13 ], [ %56, %54 ]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %62 = load i32, ptr %61, align 4, !tbaa !215
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = icmp ugt i64 %60, 3
  br i1 %65, label %66, label %138

66:                                               ; preds = %64
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %68 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %67) #39
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %59, align 1, !tbaa !4
  %70 = getelementptr inbounds nuw i8, ptr %59, i64 4
  br label %71

71:                                               ; preds = %66, %58
  %72 = phi ptr [ %70, %66 ], [ %59, %58 ]
  store i32 0, ptr %0, align 8, !tbaa !203
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %15 to i64
  %75 = sub i64 %73, %74
  %76 = icmp ult i64 %75, -119
  br i1 %76, label %77, label %138

77:                                               ; preds = %71
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %79 = load i64, ptr %78, align 8, !tbaa !119
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %83 = load i64, ptr %82, align 8, !tbaa !141
  %84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %83, i64 1), !nosanitize !8
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !8
  br i1 %85, label %86, label %87, !prof !9, !nosanitize !8

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !8
  %89 = icmp eq i64 %79, %88
  br i1 %89, label %90, label %138

90:                                               ; preds = %87, %77
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %92 = load i64, ptr %91, align 8, !tbaa !238
  %93 = icmp ne i64 %92, 0
  %94 = icmp ne ptr @ZSTD_trace_compress_end, null
  %95 = and i1 %94, %93
  br i1 %95, label %96, label %132

96:                                               ; preds = %90
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %98 = load i64, ptr %97, align 8, !tbaa !242
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %102 = load i64, ptr %101, align 8, !tbaa !243
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %106 = load i32, ptr %105, align 4, !tbaa !244
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i32
  br label %109

109:                                              ; preds = %104, %100, %96
  %110 = phi i32 [ 1, %100 ], [ 1, %96 ], [ %108, %104 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %111 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %111, i8 0, i64 56, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !245
  %112 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %110, ptr %112, align 4, !tbaa !250
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %114 = load i32, ptr %113, align 8, !tbaa !204
  store i32 %114, ptr %111, align 8, !tbaa !251
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %116 = load i64, ptr %115, align 8, !tbaa !252
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %116, ptr %117, align 8, !tbaa !253
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %119 = load i64, ptr %118, align 8, !tbaa !141
  %120 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %119, ptr %120, align 8, !tbaa !254
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %122 = load i64, ptr %121, align 8, !tbaa !145
  %123 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 %75), !nosanitize !8
  %124 = extractvalue { i64, i1 } %123, 1, !nosanitize !8
  br i1 %124, label %125, label %126, !prof !9, !nosanitize !8

125:                                              ; preds = %109
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

126:                                              ; preds = %109
  %127 = extractvalue { i64, i1 } %123, 0, !nosanitize !8
  %128 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %127, ptr %128, align 8, !tbaa !255
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %130 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %129, ptr %130, align 8, !tbaa !256
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %0, ptr %131, align 8, !tbaa !257
  call void @ZSTD_trace_compress_end(i64 noundef %92, ptr noundef nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %132

132:                                              ; preds = %126, %90
  store i64 0, ptr %91, align 8, !tbaa !238
  %133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %75), !nosanitize !8
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !8
  br i1 %134, label %135, label %136, !prof !9, !nosanitize !8

135:                                              ; preds = %132
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

136:                                              ; preds = %132
  %137 = extractvalue { i64, i1 } %133, 0, !nosanitize !8
  br label %138

138:                                              ; preds = %136, %87, %71, %64, %52, %27, %13, %5
  %139 = phi i64 [ %7, %5 ], [ %137, %136 ], [ %75, %71 ], [ -72, %87 ], [ -70, %27 ], [ -70, %64 ], [ -60, %13 ], [ -70, %52 ]
  ret i64 %139
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %7) local_unnamed_addr #4 {
  %9 = load i32, ptr %7, align 8, !tbaa !72
  %10 = add i32 %9, -32
  %11 = icmp ult i32 %10, -22
  br i1 %11, label %74, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = add i32 %14, -31
  %16 = icmp ult i32 %15, -25
  br i1 %16, label %74, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load i32, ptr %18, align 8, !tbaa !74
  %20 = add i32 %19, -31
  %21 = icmp ult i32 %20, -25
  br i1 %21, label %74, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !75
  %25 = add i32 %24, -31
  %26 = icmp ult i32 %25, -30
  br i1 %26, label %74, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %29 = load i32, ptr %28, align 8, !tbaa !76
  %30 = add i32 %29, -8
  %31 = icmp ult i32 %30, -5
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 131072
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %74, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !77
  %39 = add i32 %38, -1
  %40 = icmp ult i32 %39, 9
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %42, i8 0, i64 224, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %43, ptr noundef nonnull readonly align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !78
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull readonly align 4 dereferenceable(12) %45, i64 12, i1 false), !tbaa.struct !79
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %47 = add nsw i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  store i32 2, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %51 = icmp samesign ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !81
  br label %62

53:                                               ; preds = %41
  %54 = icmp samesign ugt i32 %9, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !80
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %56, align 4, !tbaa !81
  br label %62

57:                                               ; preds = %49
  %58 = icmp samesign ugt i32 %9, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !81
  %60 = icmp samesign ugt i32 %9, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %57, %53, %52
  %63 = phi i32 [ %61, %57 ], [ 2, %53 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %63, ptr %64, align 8, !tbaa !82
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %65, align 8, !tbaa !83
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 2, ptr %66, align 8, !tbaa !84
  %67 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #35
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi i64 [ %69, %68 ], [ 0, %62 ]
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %71, ptr %72, align 8, !tbaa !238
  %73 = tail call fastcc range(i64 -119, 0) i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %42, i64 noundef %4, i32 noundef 0)
  br label %74

74:                                               ; preds = %70, %36, %27, %22, %17, %12, %8
  %75 = phi i64 [ %73, %70 ], [ -42, %36 ], [ -42, %8 ], [ -42, %27 ], [ -42, %22 ], [ -42, %17 ], [ -42, %12 ]
  ret i64 %75
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 0) i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #4 {
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #35
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %11, %10 ], [ 0, %8 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %13, ptr %14, align 8, !tbaa !238
  %15 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef readonly %7, i64 noundef %4, i32 noundef 0)
  ret i64 %15
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compress_usingDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressCCtx(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i64 @ZSTD_compress(ptr noundef readnone captures(none) %0, i64 noundef %1, ptr noundef readnone captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
  %6 = alloca %struct.ZSTD_CCtx_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %7 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #34, !srcloc !10
  %8 = icmp eq i32 %7, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %6, i8 0, i64 5280, i1 false)
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #34, !srcloc !11
  %11 = icmp ugt i32 %7, 6
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #34, !srcloc !12
  %14 = extractvalue { i32, i32, i32 } %13, 1
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = lshr i32 %14, 8
  %19 = and i32 %18, 1
  br label %20

20:                                               ; preds = %17, %12, %9, %5
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ], [ 0, %9 ], [ 0, %5 ]
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %21, ptr %22, align 8, !tbaa !13
  call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %6)
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #18 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %1, align 8
  %9 = icmp ult i32 %8, 15
  %10 = select i1 %7, i1 true, i1 %9
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !73
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = shl i64 4, %13
  %19 = icmp ugt i32 %12, 61
  br i1 %19, label %20, label %21, !prof !9, !nosanitize !8

20:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

21:                                               ; preds = %3
  %22 = icmp ult i32 %15, 62
  br i1 %22, label %24, label %23, !prof !258, !nosanitize !8

23:                                               ; preds = %21
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

24:                                               ; preds = %21
  %25 = shl nuw i64 4, %16
  %26 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %25), !nosanitize !8
  %27 = extractvalue { i64, i1 } %26, 1, !nosanitize !8
  br i1 %27, label %28, label %29, !prof !9, !nosanitize !8

28:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %24
  %30 = extractvalue { i64, i1 } %26, 0, !nosanitize !8
  %31 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 128), !nosanitize !8
  %32 = extractvalue { i64, i1 } %31, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %29
  %35 = add nuw i64 %17, 63
  %36 = and i64 %35, -64
  %37 = select i1 %10, i64 0, i64 %36
  %38 = extractvalue { i64, i1 } %31, 0, !nosanitize !8
  %39 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %38, i64 %37), !nosanitize !8
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !9, !nosanitize !8

41:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %34
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !8
  %44 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 14784), !nosanitize !8
  %45 = extractvalue { i64, i1 } %44, 0, !nosanitize !8
  %46 = extractvalue { i64, i1 } %44, 1, !nosanitize !8
  br i1 %46, label %47, label %48, !prof !9, !nosanitize !8

47:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

48:                                               ; preds = %42
  %49 = icmp eq i32 %2, 1
  br i1 %49, label %57, label %50

50:                                               ; preds = %48
  %51 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 7), !nosanitize !8
  %52 = extractvalue { i64, i1 } %51, 1, !nosanitize !8
  br i1 %52, label %53, label %54, !prof !9, !nosanitize !8

53:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

54:                                               ; preds = %50
  %55 = extractvalue { i64, i1 } %51, 0, !nosanitize !8
  %56 = and i64 %55, -8
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i64 [ %56, %54 ], [ 0, %48 ]
  %59 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 %58), !nosanitize !8
  %60 = extractvalue { i64, i1 } %59, 1, !nosanitize !8
  br i1 %60, label %61, label %62, !prof !9, !nosanitize !8

61:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

62:                                               ; preds = %57
  %63 = extractvalue { i64, i1 } %59, 0, !nosanitize !8
  ret i64 %63
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_estimateCDictSize(i64 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @ZSTD_sizeof_CDict(ptr noundef readonly captures(address) %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 6080
  %8 = getelementptr i8, ptr %0, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 %12), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %3
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i64 [ %17, %16 ], [ 0, %1 ]
  ret i64 %19
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noalias noundef ptr @ZSTD_createCDict_advanced(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #18 {
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %7, null
  %11 = icmp eq ptr %9, null
  %12 = xor i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

14:                                               ; preds = %6
  ret ptr null
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noalias noundef ptr @ZSTD_createCDict_advanced2(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #18 {
  %7 = load ptr, ptr %5, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  %12 = xor i1 %8, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

19:                                               ; preds = %6
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCDict(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6048
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 6056
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %17 = icmp eq ptr %9, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %5, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  tail call void %5(ptr noundef %7, ptr noundef nonnull %9) #35, !inline_history !259
  br label %21

21:                                               ; preds = %20, %15
  br i1 %16, label %23, label %27

22:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %9) #35
  br i1 %16, label %26, label %27

23:                                               ; preds = %21
  %24 = icmp eq ptr %5, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %5(ptr noundef %7, ptr noundef nonnull %0) #35, !inline_history !64
  br label %27

26:                                               ; preds = %23, %22
  tail call void @free(ptr noundef nonnull %0) #35
  br label %27

27:                                               ; preds = %26, %25, %22, %21, %1
  ret i64 0
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noalias noundef nonnull ptr @ZSTD_createCDict(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noalias noundef nonnull ptr @ZSTD_createCDict_byReference(ptr noundef readnone captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %6) local_unnamed_addr #4 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = alloca { i32, i32, i32, i32, i32, i32 }, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = add i32 %11, -6
  %13 = icmp ult i32 %12, -3
  %14 = load i32, ptr %6, align 8
  %15 = icmp ult i32 %14, 15
  %16 = select i1 %13, i1 true, i1 %15
  %17 = select i1 %16, i32 2, i32 1
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = shl i64 4, %20
  %26 = icmp ugt i32 %19, 61
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %7
  %29 = icmp ult i32 %22, 62
  br i1 %29, label %31, label %30, !prof !258, !nosanitize !8

30:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

31:                                               ; preds = %28
  %32 = shl nuw i64 4, %23
  %33 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %25, i64 %32), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %34, label %35, label %36, !prof !9, !nosanitize !8

35:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

36:                                               ; preds = %31
  %37 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  %38 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %37, i64 128), !nosanitize !8
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !8
  br i1 %39, label %40, label %41, !prof !9, !nosanitize !8

40:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

41:                                               ; preds = %36
  %42 = add nuw i64 %24, 63
  %43 = and i64 %42, -64
  %44 = select i1 %16, i64 0, i64 %43
  %45 = extractvalue { i64, i1 } %38, 0, !nosanitize !8
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 %44), !nosanitize !8
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !8
  br i1 %47, label %48, label %49, !prof !9, !nosanitize !8

48:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

49:                                               ; preds = %41
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !8
  %51 = icmp eq i32 %4, 1
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 7), !nosanitize !8
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !8
  br i1 %54, label %55, label %56, !prof !9, !nosanitize !8

55:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

56:                                               ; preds = %52
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !8
  %58 = and i64 %57, -8
  %59 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %58, i64 6080)
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi { i64, i1 } [ %59, %56 ], [ { i64 6080, i1 false }, %49 ]
  %62 = extractvalue { i64, i1 } %61, 1, !nosanitize !8
  br i1 %62, label %63, label %64, !prof !9, !nosanitize !8

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %61, 0, !nosanitize !8
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 8704), !nosanitize !8
  %67 = extractvalue { i64, i1 } %66, 1, !nosanitize !8
  br i1 %67, label %68, label %69, !prof !9, !nosanitize !8

68:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

69:                                               ; preds = %64
  %70 = extractvalue { i64, i1 } %66, 0, !nosanitize !8
  %71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 %50), !nosanitize !8
  %72 = extractvalue { i64, i1 } %71, 0, !nosanitize !8
  %73 = extractvalue { i64, i1 } %71, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %76 = ptrtoint ptr %0 to i64
  %77 = and i64 %76, 7
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %319

79:                                               ; preds = %75
  %80 = icmp samesign ult i64 %1, 6080
  %81 = icmp eq ptr %0, null
  %82 = or i1 %81, %80
  br i1 %82, label %319, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %86 = ptrtoint ptr %84 to i64
  %87 = and i64 %86, 63
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds i8, ptr %84, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %90, align 8, !tbaa !51
  %91 = getelementptr i8, ptr %0, i64 40
  store ptr %84, ptr %91, align 8, !tbaa !51
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %85, ptr %92, align 8, !tbaa !51
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %85, ptr %93, align 8, !tbaa !51
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %85, ptr %94, align 8, !tbaa !51
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %89, ptr %95, align 8, !tbaa !51
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %89, ptr %96, align 8, !tbaa !51
  %97 = getelementptr i8, ptr %0, i64 88
  store i8 0, ptr %97, align 8, !tbaa !164
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %98, align 4, !tbaa !4
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %99, align 8, !tbaa !4
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %100, align 4, !tbaa !4
  %101 = icmp ult i64 %1, %72
  br i1 %101, label %319, label %102

102:                                              ; preds = %83
  %103 = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %103, i8 0, i64 112, i1 false)
  %104 = getelementptr inbounds nuw i8, ptr %8, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %104, i8 0, i64 60, i1 false)
  %105 = load i32, ptr %6, align 8, !tbaa !4
  %106 = zext i32 %105 to i64
  %107 = shl nuw i64 %106, 32
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %108, i64 24, i1 false), !tbaa.struct !260
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %17, ptr %109, align 8, !tbaa !241
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 6068
  store i32 0, ptr %110, align 4, !tbaa !261
  store i64 %107, ptr %8, align 8
  %111 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %111, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %112 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i64 0, ptr %113, align 4
  %114 = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 %17, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %118 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %117, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false)
  %119 = getelementptr inbounds nuw i8, ptr %8, i64 120
  %120 = load i32, ptr %119, align 8, !tbaa !100
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %120, ptr %121, align 4, !tbaa !240
  %122 = icmp ne i32 %4, 1
  %123 = icmp ne ptr %2, null
  %124 = and i1 %123, %122
  %125 = icmp ne i64 %3, 0
  %126 = and i1 %125, %124
  br i1 %126, label %128, label %127

127:                                              ; preds = %102
  store ptr %2, ptr %0, align 8, !tbaa !262
  br label %140

128:                                              ; preds = %102
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 7), !nosanitize !8
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !8
  br i1 %130, label %131, label %132, !prof !9, !nosanitize !8

131:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

132:                                              ; preds = %128
  %133 = extractvalue { i64, i1 } %129, 0, !nosanitize !8
  %134 = and i64 %133, -8
  %135 = add nuw nsw i64 %134, 6080
  %136 = icmp samesign ugt i64 %135, %1
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i8 1, ptr %97, align 8, !tbaa !53
  br label %317

138:                                              ; preds = %132
  %139 = getelementptr inbounds nuw i8, ptr %85, i64 %134
  store ptr %139, ptr %92, align 8, !tbaa !54
  store ptr %139, ptr %93, align 8, !tbaa !55
  store ptr %139, ptr %94, align 8, !tbaa !56
  store ptr %85, ptr %0, align 8, !tbaa !262
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %85, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %140

140:                                              ; preds = %138, %127
  %141 = phi ptr [ %139, %138 ], [ %85, %127 ]
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %142, align 8, !tbaa !239
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %5, ptr %143, align 8, !tbaa !263
  %144 = getelementptr inbounds nuw i8, ptr %141, i64 8704
  %145 = icmp ugt ptr %144, %84
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i8 1, ptr %97, align 8, !tbaa !53
  br label %148

147:                                              ; preds = %140
  store ptr %144, ptr %92, align 8, !tbaa !54
  br label %148

148:                                              ; preds = %147, %146
  %149 = phi i8 [ 1, %146 ], [ 0, %147 ]
  %150 = phi ptr [ %141, %146 ], [ %144, %147 ]
  %151 = phi ptr [ null, %146 ], [ %141, %147 ]
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %151, ptr %152, align 8, !tbaa !264
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 6024
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %154, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store i32 0, ptr %155, align 8, !tbaa !150
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 6012
  store i32 0, ptr %156, align 4, !tbaa !151
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 6016
  store i32 0, ptr %157, align 8, !tbaa !152
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 6020
  store i32 0, ptr %158, align 4, !tbaa !153
  %159 = getelementptr inbounds nuw i8, ptr %8, i64 28
  %160 = load i32, ptr %159, align 4, !tbaa !77
  %161 = icmp eq i32 %120, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %148
  %163 = icmp eq i32 %160, 1
  br i1 %163, label %174, label %164

164:                                              ; preds = %162
  %165 = add i32 %160, -6
  %166 = icmp ult i32 %165, -3
  %167 = or i1 %166, %16
  br i1 %167, label %168, label %174

168:                                              ; preds = %164, %148
  %169 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %170 = load i32, ptr %169, align 8, !tbaa !73
  %171 = zext nneg i32 %170 to i64
  %172 = shl nuw i64 1, %171
  %173 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %172, i64 4)
  br label %174

174:                                              ; preds = %168, %164, %162
  %175 = phi { i64, i1 } [ %173, %168 ], [ zeroinitializer, %164 ], [ zeroinitializer, %162 ]
  %176 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %177 = load i32, ptr %176, align 4, !tbaa !74
  %178 = zext nneg i32 %177 to i64
  %179 = shl nuw i64 1, %178
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %180, align 8
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str, ptr %181, align 8, !tbaa !210
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str, ptr %182, align 8, !tbaa !207
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %116, align 8, !tbaa !206
  store ptr %150, ptr %94, align 8, !tbaa !56
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %185, align 8, !tbaa !265
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 0, ptr %186, align 4, !tbaa !266
  store i32 2, ptr %184, align 4, !tbaa !208
  store i32 2, ptr %183, align 8, !tbaa !209
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 2, ptr %187, align 4, !tbaa !211
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %188, align 8, !tbaa !267
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %189, align 4, !tbaa !268
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %190, align 8, !tbaa !269
  store ptr %150, ptr %93, align 8, !tbaa !55
  %191 = icmp ult i32 %177, 62
  br i1 %191, label %193, label %192, !prof !258, !nosanitize !8

192:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

193:                                              ; preds = %174
  %194 = shl nuw i64 4, %178
  store ptr %89, ptr %96, align 8, !tbaa !270
  %195 = ptrtoint ptr %150 to i64
  %196 = sub i64 0, %195
  %197 = and i64 %196, 63
  %198 = getelementptr inbounds nuw i8, ptr %150, i64 %197
  %199 = icmp ugt ptr %198, %84
  br i1 %199, label %215, label %200

200:                                              ; preds = %193
  store ptr %198, ptr %92, align 8, !tbaa !54
  store ptr %198, ptr %93, align 8, !tbaa !55
  %201 = icmp eq i64 %197, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %200
  store ptr %198, ptr %94, align 8, !tbaa !56
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi ptr [ %198, %202 ], [ %150, %200 ]
  store i32 1, ptr %99, align 8, !tbaa !271
  %205 = getelementptr inbounds nuw i8, ptr %198, i64 %194
  %206 = icmp ugt ptr %205, %89
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i8 1, ptr %97, align 8, !tbaa !53
  br label %209

208:                                              ; preds = %203
  store ptr %205, ptr %93, align 8, !tbaa !55
  br label %209

209:                                              ; preds = %208, %207
  %210 = phi i8 [ %149, %208 ], [ 1, %207 ]
  %211 = phi ptr [ %205, %208 ], [ %198, %207 ]
  %212 = phi ptr [ %198, %208 ], [ null, %207 ]
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %212, ptr %213, align 8, !tbaa !272
  %214 = extractvalue { i64, i1 } %175, 1, !nosanitize !8
  br i1 %214, label %218, label %219, !prof !9, !nosanitize !8

215:                                              ; preds = %193
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %216, align 8, !tbaa !272
  %217 = extractvalue { i64, i1 } %175, 1, !nosanitize !8
  br i1 %217, label %218, label %225, !prof !9, !nosanitize !8

218:                                              ; preds = %215, %209
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

219:                                              ; preds = %209
  %220 = extractvalue { i64, i1 } %175, 0
  %221 = getelementptr inbounds nuw i8, ptr %211, i64 %220
  %222 = icmp ugt ptr %221, %89
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i8 1, ptr %97, align 8, !tbaa !53
  br label %227

224:                                              ; preds = %219
  store ptr %221, ptr %93, align 8, !tbaa !55
  br label %227

225:                                              ; preds = %215
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %226, align 8, !tbaa !273
  br label %236

227:                                              ; preds = %224, %223
  %228 = phi i8 [ 1, %223 ], [ %210, %224 ]
  %229 = phi ptr [ %211, %223 ], [ %221, %224 ]
  %230 = phi ptr [ null, %223 ], [ %211, %224 ]
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %230, ptr %231, align 8, !tbaa !273
  %232 = icmp ugt ptr %229, %89
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  store i8 1, ptr %97, align 8, !tbaa !53
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %234, align 8, !tbaa !274
  br label %317

235:                                              ; preds = %227
  store ptr %229, ptr %93, align 8, !tbaa !55
  br label %236

236:                                              ; preds = %235, %225
  %237 = phi i8 [ %228, %235 ], [ %149, %225 ]
  %238 = phi ptr [ %229, %235 ], [ %150, %225 ]
  %239 = phi ptr [ %204, %235 ], [ %150, %225 ]
  %240 = phi ptr [ %229, %235 ], [ null, %225 ]
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %240, ptr %241, align 8, !tbaa !274
  %242 = icmp eq i8 %237, 0
  br i1 %242, label %243, label %317

243:                                              ; preds = %236
  %244 = icmp ult ptr %239, %238
  br i1 %244, label %245, label %253

245:                                              ; preds = %243
  %246 = ptrtoint ptr %238 to i64
  %247 = ptrtoint ptr %239 to i64
  %248 = sub i64 %246, %247
  tail call void @llvm.memset.p0.i64(ptr align 1 %239, i8 0, i64 %248, i1 false)
  %249 = load ptr, ptr %94, align 8, !tbaa !56
  %250 = load ptr, ptr %93, align 8, !tbaa !55
  %251 = icmp ult ptr %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  store ptr %250, ptr %94, align 8, !tbaa !56
  br label %253

253:                                              ; preds = %252, %245, %243
  %254 = phi ptr [ %239, %243 ], [ %249, %245 ], [ %250, %252 ]
  %255 = phi ptr [ %238, %243 ], [ %250, %245 ], [ %250, %252 ]
  %256 = add i32 %160, -6
  %257 = icmp ult i32 %256, -3
  %258 = or i1 %16, %257
  br i1 %258, label %305, label %259

259:                                              ; preds = %253
  %260 = add nuw i64 %179, 63
  %261 = and i64 %260, -64
  %262 = load i32, ptr %99, align 8, !tbaa !271
  %263 = icmp ult i32 %262, 2
  br i1 %263, label %264, label %283

264:                                              ; preds = %259
  %265 = icmp eq i32 %262, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %264
  %267 = load ptr, ptr %92, align 8, !tbaa !54
  store ptr %267, ptr %94, align 8, !tbaa !56
  %268 = load ptr, ptr %91, align 8, !tbaa !62
  %269 = ptrtoint ptr %268 to i64
  %270 = and i64 %269, 63
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %268, i64 %271
  store ptr %272, ptr %96, align 8, !tbaa !270
  %273 = ptrtoint ptr %267 to i64
  %274 = sub i64 0, %273
  %275 = and i64 %274, 63
  %276 = getelementptr inbounds nuw i8, ptr %267, i64 %275
  %277 = icmp ule ptr %276, %268
  tail call void @llvm.assume(i1 %277)
  store ptr %276, ptr %92, align 8, !tbaa !54
  store ptr %276, ptr %93, align 8, !tbaa !55
  %278 = icmp eq i64 %275, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %266
  store ptr %276, ptr %94, align 8, !tbaa !56
  br label %280

280:                                              ; preds = %279, %266, %264
  %281 = phi ptr [ %276, %279 ], [ %267, %266 ], [ %254, %264 ]
  %282 = phi ptr [ %276, %279 ], [ %276, %266 ], [ %255, %264 ]
  store i32 2, ptr %99, align 8, !tbaa !271
  br label %283

283:                                              ; preds = %280, %259
  %284 = phi ptr [ %254, %259 ], [ %281, %280 ]
  %285 = phi ptr [ %255, %259 ], [ %282, %280 ]
  %286 = load ptr, ptr %95, align 8, !tbaa !275
  %287 = sub i64 0, %261
  %288 = getelementptr inbounds i8, ptr %286, i64 %287
  %289 = icmp uge ptr %288, %285
  tail call void @llvm.assume(i1 %289)
  %290 = icmp ult ptr %288, %284
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  store ptr %288, ptr %94, align 8, !tbaa !56
  br label %292

292:                                              ; preds = %291, %283
  store ptr %288, ptr %95, align 8, !tbaa !275
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %288, ptr %293, align 8, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %288, i8 0, i64 %179, i1 false)
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %294, align 8, !tbaa !277
  %295 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %296 = load i32, ptr %295, align 8, !tbaa !75
  %297 = tail call i32 @llvm.umax.i32(i32 %296, i32 4)
  %298 = tail call i32 @llvm.umin.i32(i32 %297, i32 6)
  %299 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %298), !nosanitize !8
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !8
  br i1 %300, label %301, label %302, !prof !9, !nosanitize !8

301:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

302:                                              ; preds = %292
  %303 = extractvalue { i32, i1 } %299, 0, !nosanitize !8
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %303, ptr %304, align 4, !tbaa !278
  br label %305

305:                                              ; preds = %302, %253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %117, ptr noundef nonnull readonly align 4 dereferenceable(28) %118, i64 28, i1 false), !tbaa.struct !78
  %306 = load i8, ptr %97, align 8, !tbaa !53
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %305
  store i32 3, ptr %114, align 4, !tbaa !46
  store i32 1, ptr %112, align 8, !tbaa !47
  %309 = load ptr, ptr %0, align 8, !tbaa !262
  %310 = load i64, ptr %142, align 8, !tbaa !239
  %311 = load ptr, ptr %152, align 8, !tbaa !264
  %312 = call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef nonnull %153, ptr noundef nonnull %116, ptr noundef null, ptr noundef nonnull %90, ptr noundef nonnull align 8 %8, ptr noundef %309, i64 noundef %310, i32 noundef %5, i32 noundef 1, i32 noundef 1, ptr noundef %311)
  %313 = icmp ult i64 %312, -119
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = trunc nuw i64 %312 to i32
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  store i32 %315, ptr %316, align 8, !tbaa !279
  br label %317

317:                                              ; preds = %314, %308, %305, %236, %233, %137
  %318 = phi ptr [ %0, %314 ], [ null, %236 ], [ null, %305 ], [ null, %137 ], [ null, %308 ], [ null, %233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %319

319:                                              ; preds = %317, %83, %79, %75
  %320 = phi ptr [ null, %75 ], [ null, %83 ], [ %318, %317 ], [ null, %79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret ptr %320
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %5 = load i32, ptr %4, align 8, !tbaa !279
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #18 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = icmp ult i64 %4, 131072
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !239
  %12 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 6), !nosanitize !8
  %13 = extractvalue { i64, i1 } %12, 1, !nosanitize !8
  br i1 %13, label %14, label %15, !prof !9, !nosanitize !8

14:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %9
  %16 = extractvalue { i64, i1 } %12, 0, !nosanitize !8
  %17 = icmp ult i64 %4, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

19:                                               ; preds = %15, %7
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %5
  ret i64 -32
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compressBegin_usingCDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #15 {
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compress_usingCDict_advanced(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef readonly byval(%struct.ZSTD_frameParameters) align 8 captures(none) %6) local_unnamed_addr #18 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %7
  %10 = icmp ult i64 %4, 131072
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !239
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 6), !nosanitize !8
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !8
  br i1 %15, label %16, label %17, !prof !9, !nosanitize !8

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

17:                                               ; preds = %11
  %18 = extractvalue { i64, i1 } %14, 0, !nosanitize !8
  %19 = icmp ult i64 %4, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

21:                                               ; preds = %17, %9
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

22:                                               ; preds = %7
  ret i64 -32
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @ZSTD_compress_usingCDict(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readonly captures(address_is_null) %5) local_unnamed_addr #18 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = icmp ult i64 %4, 131072
  br i1 %9, label %20, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !239
  %13 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 6), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %10
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !8
  %18 = icmp ult i64 %4, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %16, %8
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

21:                                               ; preds = %6
  ret i64 -32
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCStream() local_unnamed_addr #4 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #34, !srcloc !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #34, !srcloc !11
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #34, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 1
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = lshr i32 %11, 8
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %14, %9, %6, %3
  %18 = phi i32 [ 0, %9 ], [ %16, %14 ], [ 0, %6 ], [ 0, %3 ]
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %18, ptr %19, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !46
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %17, %0
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCStream_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  br i1 %7, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 5280) #35, !inline_history !280
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #36
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  store ptr %2, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 904
  store ptr %4, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 912
  store ptr %6, ptr %21, align 8
  %22 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #34, !srcloc !10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #34, !srcloc !11
  %26 = icmp ugt i32 %22, 6
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #34, !srcloc !12
  %29 = extractvalue { i32, i32, i32 } %28, 1
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = lshr i32 %29, 8
  %34 = and i32 %33, 1
  br label %35

35:                                               ; preds = %32, %27, %24, %18
  %36 = phi i32 [ 0, %27 ], [ %34, %32 ], [ 0, %24 ], [ 0, %18 ]
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %36, ptr %37, align 8, !tbaa !13
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %38, i8 0, i64 224, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %39, align 4, !tbaa !46
  %40 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %40, align 8, !tbaa !47
  br label %41

41:                                               ; preds = %35, %15, %1
  %42 = phi ptr [ null, %1 ], [ %16, %35 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #35, !inline_history !281
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #35
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #35, !inline_history !282
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #35
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
  %35 = phi i64 [ -64, %3 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_CStreamInSize() local_unnamed_addr #8 {
  ret i64 131072
}

; Function Attrs: nounwind memory(inaccessiblemem: write) uwtable
define dso_local range(i64 8, 0) i64 @ZSTD_CStreamOutSize() local_unnamed_addr #0 {
  %1 = freeze { i64, i1 } { i64 131584, i1 false }
  %2 = extractvalue { i64, i1 } %1, 1, !nosanitize !8
  br i1 %2, label %3, label %4, !prof !9, !nosanitize !8

3:                                                ; preds = %0
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

4:                                                ; preds = %0
  %5 = extractvalue { i64, i1 } %1, 0, !nosanitize !8
  %6 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 3)
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %8, label %9, !prof !9, !nosanitize !8

8:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

9:                                                ; preds = %4
  %10 = icmp ne i64 %5, 0
  %11 = extractvalue { i64, i1 } %6, 0
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 4)
  %13 = extractvalue { i64, i1 } %12, 1
  %14 = and i1 %10, %13
  br i1 %14, label %15, label %16, !prof !9, !nosanitize !8

15:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

16:                                               ; preds = %9
  %17 = extractvalue { i64, i1 } %12, 0
  %18 = select i1 %10, i64 %17, i64 -65
  ret i64 %18
}

; Function Attrs: nounwind memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_resetCStream(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #21 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !85
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 1), !nosanitize !8
  %8 = extractvalue { i64, i1 } %7, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %12 = extractvalue { i64, i1 } %7, 0, !nosanitize !8
  store i64 %12, ptr %11, align 8, !tbaa !119
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_internal(ptr noundef captures(none) initializes((3640, 3644)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #4 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %7, align 8, !tbaa !85
  %8 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 1), !nosanitize !8
  %9 = extractvalue { i64, i1 } %8, 1, !nosanitize !8
  br i1 %9, label %10, label %11, !prof !9, !nosanitize !8

10:                                               ; preds = %6
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %13 = extractvalue { i64, i1 } %8, 0, !nosanitize !8
  store i64 %13, ptr %12, align 8, !tbaa !119
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %14, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !117
  %15 = icmp eq ptr %1, null
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  br i1 %15, label %40, label %16

16:                                               ; preds = %11
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %20 = load i64, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i64 912
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr %24(ptr noundef %28, i64 noundef %2) #35, !inline_history !283
  br label %32

30:                                               ; preds = %22
  %31 = tail call noalias ptr @malloc(i64 noundef %2) #36
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %29, %26 ], [ %31, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %33, ptr %36, align 8, !tbaa !120
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %33, ptr %37, align 8, !tbaa !121
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %38, align 8, !tbaa !122
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %39, align 8, !tbaa !123
  br label %42

40:                                               ; preds = %11
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %3, ptr %41, align 8, !tbaa !116
  br label %42

42:                                               ; preds = %40, %35, %32, %18, %16
  %43 = phi i64 [ 0, %35 ], [ 0, %40 ], [ 0, %16 ], [ -64, %18 ], [ -64, %32 ]
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict_advanced(ptr noundef captures(none) initializes((3640, 3644)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !85
  %7 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 1), !nosanitize !8
  %8 = extractvalue { i64, i1 } %7, 1, !nosanitize !8
  br i1 %8, label %9, label %10, !prof !9, !nosanitize !8

9:                                                ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %12 = extractvalue { i64, i1 } %7, 0, !nosanitize !8
  store i64 %12, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %14, align 8, !tbaa !4
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %15, align 8, !tbaa !116
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !119
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %5, align 8, !tbaa !116
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_advanced(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = icmp eq i64 %4, 0
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %13, align 8, !tbaa !85
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 1), !nosanitize !8
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !8
  br i1 %15, label %16, label %17, !prof !9, !nosanitize !8

16:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %19 = extractvalue { i64, i1 } %14, 0, !nosanitize !8
  store i64 %19, ptr %18, align 8, !tbaa !119
  %20 = load i32, ptr %3, align 8, !tbaa !72
  %21 = add i32 %20, -32
  %22 = icmp ult i32 %21, -22
  br i1 %22, label %81, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = add i32 %25, -31
  %27 = icmp ult i32 %26, -25
  br i1 %27, label %81, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !74
  %31 = add i32 %30, -31
  %32 = icmp ult i32 %31, -25
  br i1 %32, label %81, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %35 = load i32, ptr %34, align 4, !tbaa !75
  %36 = add i32 %35, -31
  %37 = icmp ult i32 %36, -30
  br i1 %37, label %81, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %40 = load i32, ptr %39, align 8, !tbaa !76
  %41 = add i32 %40, -8
  %42 = icmp ult i32 %41, -5
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, 131072
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %81, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %49 = load i32, ptr %48, align 8, !tbaa !77
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, 9
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %53, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !78
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %54, ptr noundef nonnull readonly align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !79
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %55, align 4, !tbaa !46
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %56 = icmp eq ptr %1, null
  %57 = icmp eq i64 %2, 0
  %58 = or i1 %56, %57
  br i1 %58, label %81, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %61 = load i64, ptr %60, align 8, !tbaa !52
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %0, i64 912
  %69 = load ptr, ptr %68, align 8
  %70 = tail call ptr %65(ptr noundef %69, i64 noundef %2) #35, !inline_history !283
  br label %73

71:                                               ; preds = %63
  %72 = tail call noalias ptr @malloc(i64 noundef %2) #36
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %70, %67 ], [ %72, %71 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %74, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %74, ptr %77, align 8, !tbaa !120
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %74, ptr %78, align 8, !tbaa !121
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %79, align 8, !tbaa !122
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %80, align 8, !tbaa !123
  br label %81

81:                                               ; preds = %76, %73, %59, %52, %47, %38, %33, %28, %23, %17
  %82 = phi i64 [ -42, %47 ], [ -42, %23 ], [ -42, %17 ], [ -42, %38 ], [ -42, %33 ], [ -42, %28 ], [ 0, %52 ], [ -64, %73 ], [ 0, %76 ], [ -64, %59 ]
  ret i64 %82
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_usingDict(ptr noundef captures(none) initializes((60, 64), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %6, align 8, !tbaa !119
  %7 = icmp slt i32 %3, -131072
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %3, 22
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 3, i32 %3
  br label %13

13:                                               ; preds = %10, %8, %4
  %14 = phi i32 [ %12, %10 ], [ -131072, %4 ], [ 22, %8 ]
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %14, ptr %15, align 4, !tbaa !46
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = icmp eq ptr %1, null
  %17 = icmp eq i64 %2, 0
  %18 = or i1 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %21 = load i64, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i64 912
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr %25(ptr noundef %29, i64 noundef %2) #35, !inline_history !283
  br label %33

31:                                               ; preds = %23
  %32 = tail call noalias ptr @malloc(i64 noundef %2) #36
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %30, %27 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %34, ptr %37, align 8, !tbaa !120
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %34, ptr %38, align 8, !tbaa !121
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %39, align 8, !tbaa !122
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %40, align 8, !tbaa !123
  br label %41

41:                                               ; preds = %36, %33, %19, %13
  %42 = phi i64 [ 0, %13 ], [ -64, %33 ], [ 0, %36 ], [ -64, %19 ]
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_initCStream_srcSize(ptr noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %7, align 8, !tbaa !85
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %8, align 8, !tbaa !119
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %9, align 8, !tbaa !116
  %10 = load i32, ptr %7, align 8, !tbaa !85
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %13, align 4, !tbaa !86
  br label %14

14:                                               ; preds = %12, %6
  %15 = icmp slt i32 %1, -131072
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = icmp sgt i32 %1, 22
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %1, 0
  %20 = select i1 %19, i32 3, i32 %1
  br label %21

21:                                               ; preds = %18, %16, %14
  %22 = phi i32 [ %20, %18 ], [ -131072, %14 ], [ 22, %16 ]
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %22, ptr %23, align 4, !tbaa !46
  br i1 %11, label %24, label %30

24:                                               ; preds = %21
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !8
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %24
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !8
  store i64 %29, ptr %8, align 8, !tbaa !119
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ 0, %28 ], [ -60, %21 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !119
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %5, align 8, !tbaa !116
  %6 = load i32, ptr %3, align 8, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %9, align 4, !tbaa !86
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp slt i32 %1, -131072
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = icmp sgt i32 %1, 22
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, i32 3, i32 %1
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = phi i32 [ %16, %14 ], [ -131072, %10 ], [ 22, %12 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %18, ptr %19, align 4, !tbaa !46
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #4 {
  %4 = tail call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %8 = load i32, ptr %7, align 4, !tbaa !284
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %12 = load i64, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %14 = load i64, ptr %13, align 8, !tbaa !285
  %15 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %14), !nosanitize !8
  %16 = extractvalue { i64, i1 } %15, 1, !nosanitize !8
  br i1 %16, label %17, label %18, !prof !9, !nosanitize !8

17:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

18:                                               ; preds = %10
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !8
  br label %34

20:                                               ; preds = %6
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %22 = load i64, ptr %21, align 8, !tbaa !286
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %24 = load i64, ptr %23, align 8, !tbaa !139
  %25 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %22, i64 %24), !nosanitize !8
  %26 = extractvalue { i64, i1 } %25, 1, !nosanitize !8
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %20
  %29 = extractvalue { i64, i1 } %25, 0, !nosanitize !8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %33 = load i64, ptr %32, align 8, !tbaa !213
  br label %34

34:                                               ; preds = %31, %28, %18, %3
  %35 = phi i64 [ %4, %3 ], [ %19, %18 ], [ %33, %31 ], [ %29, %28 ]
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !174
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !173
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %489, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !177
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !176
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %489, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %489, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %20 = load i32, ptr %19, align 8, !tbaa !85
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %127

22:                                               ; preds = %18
  %23 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %12), !nosanitize !8
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !8
  br i1 %24, label %25, label %26, !prof !9, !nosanitize !8

25:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

26:                                               ; preds = %22
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %29 = load i64, ptr %28, align 8, !tbaa !285
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %29), !nosanitize !8
  %31 = extractvalue { i64, i1 } %30, 0, !nosanitize !8
  %32 = extractvalue { i64, i1 } %30, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %26
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %37 = load i32, ptr %36, align 4, !tbaa !178
  %38 = icmp eq i32 %37, 1
  %39 = icmp eq i32 %3, 0
  %40 = and i1 %39, %38
  %41 = icmp ult i64 %31, 131072
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %59

43:                                               ; preds = %34
  %44 = icmp eq i64 %29, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %2, align 8, !tbaa !175
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %48 = load ptr, ptr %47, align 8, !tbaa !287
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %489

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %52 = load i64, ptr %51, align 8, !tbaa !288
  %53 = icmp eq i64 %12, %52
  br i1 %53, label %54, label %489

54:                                               ; preds = %50, %43
  store i64 %14, ptr %11, align 8, !tbaa !177
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !289
  store i64 %31, ptr %28, align 8, !tbaa !285
  %56 = load i32, ptr %35, align 8, !tbaa !290
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 6, i64 2
  br label %489

59:                                               ; preds = %34
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %63 = load ptr, ptr %62, align 8, !tbaa !291
  %64 = icmp eq ptr %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %67 = load ptr, ptr %66, align 8, !tbaa !292
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 904
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %71, null
  %75 = icmp eq ptr %73, null
  %76 = xor i1 %74, %75
  br i1 %76, label %489, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %79 = load i32, ptr %78, align 8, !tbaa !4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

83:                                               ; preds = %65, %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %85 = load ptr, ptr %84, align 8, !tbaa !116
  %86 = icmp eq ptr %85, null
  %87 = icmp eq i32 %3, 2
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %90 = load i64, ptr %89, align 8, !tbaa !119
  br label %98

91:                                               ; preds = %83
  %92 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 1), !nosanitize !8
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !8
  br i1 %93, label %94, label %95, !prof !9, !nosanitize !8

94:                                               ; preds = %91
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

95:                                               ; preds = %91
  %96 = extractvalue { i64, i1 } %92, 0, !nosanitize !8
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %96, ptr %97, align 8, !tbaa !119
  br label %98

98:                                               ; preds = %95, %88
  %99 = phi i64 [ %90, %88 ], [ %96, %95 ]
  %100 = icmp eq ptr %61, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br i1 %86, label %105, label %107

102:                                              ; preds = %98
  %103 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 1), !nosanitize !8
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !8
  br i1 %104, label %110, label %111, !prof !9, !nosanitize !8

105:                                              ; preds = %101
  %106 = icmp eq i64 %99, 0
  br i1 %106, label %110, label %126, !prof !9, !nosanitize !8

107:                                              ; preds = %101
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 1), !nosanitize !8
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !8
  br i1 %109, label %110, label %112, !prof !9, !nosanitize !8

110:                                              ; preds = %107, %105, %102
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

111:                                              ; preds = %102
  br i1 %86, label %126, label %112

112:                                              ; preds = %111, %107
  %113 = phi { i64, i1 } [ %103, %111 ], [ %108, %107 ]
  %114 = getelementptr inbounds nuw i8, ptr %85, i64 244
  %115 = load i32, ptr %114, align 4, !tbaa !240
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = extractvalue { i64, i1 } %113, 0
  %119 = getelementptr inbounds nuw i8, ptr %85, i64 384
  %120 = load i32, ptr %119, align 8, !tbaa !293
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !118
  %124 = icmp ugt i64 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

126:                                              ; preds = %117, %112, %111, %105
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

127:                                              ; preds = %18
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %129 = load i32, ptr %128, align 4, !tbaa !284
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = load ptr, ptr %2, align 8, !tbaa !175
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %136, label %489

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %138 = load i64, ptr %137, align 8, !tbaa !118
  %139 = icmp eq i64 %138, %12
  br i1 %139, label %140, label %489

140:                                              ; preds = %136, %127
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %142 = load i32, ptr %141, align 8, !tbaa !294
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %8, i64 %6), !nosanitize !8
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !8
  br i1 %146, label %147, label %148, !prof !9, !nosanitize !8

147:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

148:                                              ; preds = %144
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !8
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %151 = load i64, ptr %150, align 8, !tbaa !295
  %152 = icmp eq i64 %151, %149
  br i1 %152, label %153, label %489

153:                                              ; preds = %148, %140
  %154 = load ptr, ptr %2, align 8, !tbaa !175
  %155 = icmp eq ptr %154, null
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %14
  %157 = getelementptr inbounds nuw i8, ptr %154, i64 %12
  %158 = select i1 %155, ptr null, ptr %156
  %159 = select i1 %155, ptr null, ptr %157
  %160 = load ptr, ptr %1, align 8, !tbaa !171
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 %8
  %163 = ptrtoint ptr %162 to i64
  %164 = getelementptr inbounds nuw i8, ptr %160, i64 %6
  %165 = select i1 %161, i64 0, i64 %163
  %166 = select i1 %161, ptr null, ptr %164
  br i1 %130, label %167, label %179

167:                                              ; preds = %153
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %169 = load i64, ptr %168, align 8, !tbaa !285
  %170 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %169), !nosanitize !8
  %171 = extractvalue { i64, i1 } %170, 1, !nosanitize !8
  br i1 %171, label %172, label %173, !prof !9, !nosanitize !8

172:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

173:                                              ; preds = %167
  %174 = extractvalue { i64, i1 } %170, 0, !nosanitize !8
  store i64 %174, ptr %11, align 8, !tbaa !177
  %175 = icmp eq ptr %159, null
  %176 = sub i64 0, %169
  %177 = getelementptr inbounds i8, ptr %159, i64 %176
  %178 = select i1 %175, ptr null, ptr %177
  store i64 0, ptr %168, align 8, !tbaa !285
  br label %179

179:                                              ; preds = %173, %153
  %180 = phi ptr [ %178, %173 ], [ %159, %153 ]
  %181 = icmp eq i32 %3, 2
  %182 = ptrtoint ptr %158 to i64
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %196

196:                                              ; preds = %425, %179
  %197 = phi i32 [ %20, %179 ], [ %426, %425 ]
  %198 = phi ptr [ %180, %179 ], [ %427, %425 ]
  %199 = phi ptr [ %166, %179 ], [ %428, %425 ]
  br label %200

200:                                              ; preds = %200, %196
  switch i32 %197, label %200 [
    i32 0, label %489
    i32 1, label %204
    i32 2, label %201
  ], !llvm.loop !296

201:                                              ; preds = %200
  %202 = load i64, ptr %193, align 8, !tbaa !297
  %203 = load i64, ptr %194, align 8, !tbaa !298
  br label %394

204:                                              ; preds = %200
  br i1 %181, label %205, label %240

205:                                              ; preds = %204
  %206 = ptrtoint ptr %199 to i64
  %207 = sub i64 %165, %206
  %208 = ptrtoint ptr %198 to i64
  %209 = sub i64 %182, %208
  %210 = icmp ugt i64 %209, -71777214294589697
  br i1 %210, label %225, label %211

211:                                              ; preds = %205
  %212 = lshr i64 %209, 8
  %213 = add nuw i64 %212, %209
  %214 = icmp ult i64 %209, 131072
  %215 = sub nuw nsw i64 131072, %209
  %216 = lshr i64 %215, 11
  %217 = select i1 %214, i64 %216, i64 0
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 %217), !nosanitize !8
  %219 = freeze { i64, i1 } %218
  %220 = extractvalue { i64, i1 } %219, 1, !nosanitize !8
  br i1 %220, label %221, label %222, !prof !9, !nosanitize !8

221:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

222:                                              ; preds = %211
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %205
  br label %226

226:                                              ; preds = %225, %222
  %227 = phi i64 [ -72, %225 ], [ %223, %222 ]
  %228 = icmp ult i64 %207, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, ptr %141, align 8, !tbaa !294
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %240

232:                                              ; preds = %229, %226
  %233 = load i64, ptr %183, align 8, !tbaa !139
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %199, i64 noundef %207, ptr noundef %198, i64 noundef %209)
  %237 = icmp ult i64 %236, -119
  br i1 %237, label %238, label %489

238:                                              ; preds = %235
  %239 = getelementptr inbounds nuw i8, ptr %199, i64 %236
  store i32 1, ptr %191, align 4, !tbaa !299
  store i32 0, ptr %19, align 8, !tbaa !85
  store i64 0, ptr %195, align 8, !tbaa !119
  br label %429

240:                                              ; preds = %232, %229, %204
  %241 = load i32, ptr %128, align 4, !tbaa !284
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %240
  %244 = load i64, ptr %186, align 8, !tbaa !286
  %245 = load i64, ptr %183, align 8, !tbaa !139
  %246 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %244, i64 %245), !nosanitize !8
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !8
  br i1 %247, label %248, label %249, !prof !9, !nosanitize !8

248:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

249:                                              ; preds = %243
  %250 = extractvalue { i64, i1 } %246, 0, !nosanitize !8
  %251 = ptrtoint ptr %198 to i64
  %252 = sub i64 %182, %251
  %253 = tail call i64 @llvm.umin.i64(i64 %250, i64 %252)
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %249
  %256 = load ptr, ptr %187, align 8, !tbaa !138
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 %245
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %257, ptr readonly align 1 %198, i64 %253, i1 false)
  %258 = load i64, ptr %183, align 8, !tbaa !139
  br label %259

259:                                              ; preds = %255, %249
  %260 = phi i64 [ %245, %249 ], [ %258, %255 ]
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %260, i64 %253), !nosanitize !8
  %262 = extractvalue { i64, i1 } %261, 1, !nosanitize !8
  br i1 %262, label %263, label %264, !prof !9, !nosanitize !8

263:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

264:                                              ; preds = %259
  %265 = extractvalue { i64, i1 } %261, 0, !nosanitize !8
  store i64 %265, ptr %183, align 8, !tbaa !139
  %266 = icmp eq ptr %198, null
  %267 = getelementptr inbounds nuw i8, ptr %198, i64 %253
  %268 = select i1 %266, ptr null, ptr %267
  switch i32 %3, label %287 [
    i32 0, label %269
    i32 1, label %272
  ]

269:                                              ; preds = %264
  %270 = load i64, ptr %186, align 8, !tbaa !286
  %271 = icmp ult i64 %265, %270
  br i1 %271, label %429, label %287

272:                                              ; preds = %264
  %273 = load i64, ptr %188, align 8, !tbaa !140
  %274 = icmp eq i64 %265, %273
  br i1 %274, label %429, label %287

275:                                              ; preds = %240
  switch i32 %3, label %284 [
    i32 0, label %276
    i32 1, label %282
  ]

276:                                              ; preds = %275
  %277 = ptrtoint ptr %198 to i64
  %278 = sub i64 %182, %277
  %279 = load i64, ptr %184, align 8, !tbaa !213
  %280 = icmp ult i64 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  store i64 %278, ptr %185, align 8, !tbaa !285
  br label %429

282:                                              ; preds = %275
  %283 = icmp eq ptr %198, %158
  br i1 %283, label %429, label %284

284:                                              ; preds = %282, %275
  %285 = ptrtoint ptr %199 to i64
  %286 = sub i64 %165, %285
  br label %300

287:                                              ; preds = %276, %272, %269, %264
  %288 = phi ptr [ %268, %269 ], [ %268, %264 ], [ %268, %272 ], [ %198, %276 ]
  %289 = load i32, ptr %128, align 4, !tbaa !284
  %290 = icmp eq i32 %289, 0
  %291 = ptrtoint ptr %199 to i64
  %292 = sub i64 %165, %291
  br i1 %290, label %293, label %300

293:                                              ; preds = %287
  %294 = load i64, ptr %183, align 8, !tbaa !139
  %295 = load i64, ptr %188, align 8, !tbaa !140
  %296 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %294, i64 %295), !nosanitize !8
  %297 = extractvalue { i64, i1 } %296, 0, !nosanitize !8
  %298 = extractvalue { i64, i1 } %296, 1, !nosanitize !8
  br i1 %298, label %299, label %307, !prof !9, !nosanitize !8

299:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

300:                                              ; preds = %287, %284
  %301 = phi i64 [ %286, %284 ], [ %292, %287 ]
  %302 = phi ptr [ %198, %284 ], [ %288, %287 ]
  %303 = ptrtoint ptr %302 to i64
  %304 = sub i64 %182, %303
  %305 = load i64, ptr %184, align 8, !tbaa !213
  %306 = tail call i64 @llvm.umin.i64(i64 %304, i64 %305)
  br label %307

307:                                              ; preds = %300, %293
  %308 = phi i64 [ %292, %293 ], [ %301, %300 ]
  %309 = phi i1 [ true, %293 ], [ false, %300 ]
  %310 = phi ptr [ %288, %293 ], [ %302, %300 ]
  %311 = phi i64 [ %297, %293 ], [ %306, %300 ]
  %312 = icmp ugt i64 %311, -71777214294589697
  br i1 %312, label %327, label %313

313:                                              ; preds = %307
  %314 = lshr i64 %311, 8
  %315 = add nuw i64 %314, %311
  %316 = icmp ult i64 %311, 131072
  %317 = sub nuw nsw i64 131072, %311
  %318 = lshr i64 %317, 11
  %319 = select i1 %316, i64 %318, i64 0
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %319), !nosanitize !8
  %321 = freeze { i64, i1 } %320
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !8
  br i1 %322, label %323, label %324, !prof !9, !nosanitize !8

323:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

324:                                              ; preds = %313
  %325 = extractvalue { i64, i1 } %321, 0, !nosanitize !8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324, %307
  br label %328

328:                                              ; preds = %327, %324
  %329 = phi i64 [ -72, %327 ], [ %325, %324 ]
  %330 = icmp ult i64 %308, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load i32, ptr %141, align 8, !tbaa !294
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %189, align 8, !tbaa !300
  %336 = load i64, ptr %190, align 8, !tbaa !243
  br label %337

337:                                              ; preds = %334, %331, %328
  %338 = phi i64 [ %336, %334 ], [ %308, %331 ], [ %308, %328 ]
  %339 = phi ptr [ %335, %334 ], [ %199, %331 ], [ %199, %328 ]
  br i1 %309, label %340, label %367

340:                                              ; preds = %337
  %341 = icmp eq ptr %310, %158
  %342 = select i1 %181, i1 %341, i1 false
  %343 = zext i1 %342 to i32
  %344 = load ptr, ptr %187, align 8, !tbaa !138
  %345 = load i64, ptr %188, align 8, !tbaa !140
  %346 = getelementptr inbounds nuw i8, ptr %344, i64 %345
  br i1 %342, label %347, label %349

347:                                              ; preds = %340
  %348 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %346, i64 noundef %311)
  br label %351

349:                                              ; preds = %340
  %350 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %346, i64 noundef %311, i32 noundef 1, i32 noundef 0)
  br label %351

351:                                              ; preds = %349, %347
  %352 = phi i64 [ %348, %347 ], [ %350, %349 ]
  %353 = icmp ult i64 %352, -119
  br i1 %353, label %354, label %489

354:                                              ; preds = %351
  store i32 %343, ptr %191, align 4, !tbaa !299
  %355 = load i64, ptr %183, align 8, !tbaa !139
  %356 = load i64, ptr %184, align 8, !tbaa !213
  %357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %356), !nosanitize !8
  %358 = extractvalue { i64, i1 } %357, 1, !nosanitize !8
  br i1 %358, label %359, label %360, !prof !9, !nosanitize !8

359:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

360:                                              ; preds = %354
  %361 = extractvalue { i64, i1 } %357, 0, !nosanitize !8
  store i64 %361, ptr %186, align 8, !tbaa !286
  %362 = load i64, ptr %192, align 8, !tbaa !242
  %363 = icmp ugt i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  store i64 0, ptr %183, align 8, !tbaa !139
  store i64 %356, ptr %186, align 8, !tbaa !286
  br label %365

365:                                              ; preds = %364, %360
  %366 = phi i64 [ %355, %360 ], [ 0, %364 ]
  store i64 %366, ptr %188, align 8, !tbaa !140
  br label %382

367:                                              ; preds = %337
  %368 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  %369 = icmp eq ptr %368, %158
  %370 = select i1 %181, i1 %369, i1 false
  %371 = zext i1 %370 to i32
  br i1 %370, label %372, label %374

372:                                              ; preds = %367
  %373 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %310, i64 noundef %311)
  br label %376

374:                                              ; preds = %367
  %375 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %339, i64 noundef %338, ptr noundef %310, i64 noundef %311, i32 noundef 1, i32 noundef 0)
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i64 [ %373, %372 ], [ %375, %374 ]
  %378 = icmp ult i64 %377, -119
  br i1 %378, label %379, label %489

379:                                              ; preds = %376
  %380 = icmp eq ptr %310, null
  %381 = select i1 %380, ptr null, ptr %368
  store i32 %371, ptr %191, align 4, !tbaa !299
  br label %382

382:                                              ; preds = %379, %365
  %383 = phi i32 [ %343, %365 ], [ %371, %379 ]
  %384 = phi i64 [ %352, %365 ], [ %377, %379 ]
  %385 = phi ptr [ %310, %365 ], [ %381, %379 ]
  %386 = icmp eq ptr %339, %199
  br i1 %386, label %387, label %393

387:                                              ; preds = %382
  %388 = getelementptr inbounds nuw i8, ptr %199, i64 %384
  %389 = icmp eq i32 %383, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %387
  %391 = load i32, ptr %19, align 8, !tbaa !85
  br label %425

392:                                              ; preds = %387
  store i32 0, ptr %19, align 8, !tbaa !85
  store i64 0, ptr %195, align 8, !tbaa !119
  br label %429

393:                                              ; preds = %382
  store i64 %384, ptr %193, align 8, !tbaa !297
  store i64 0, ptr %194, align 8, !tbaa !298
  store i32 2, ptr %19, align 8, !tbaa !85
  br label %394

394:                                              ; preds = %393, %201
  %395 = phi i64 [ 0, %393 ], [ %203, %201 ]
  %396 = phi i64 [ %384, %393 ], [ %202, %201 ]
  %397 = phi ptr [ %385, %393 ], [ %198, %201 ]
  %398 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %396, i64 %395), !nosanitize !8
  %399 = extractvalue { i64, i1 } %398, 0, !nosanitize !8
  %400 = extractvalue { i64, i1 } %398, 1, !nosanitize !8
  br i1 %400, label %401, label %402, !prof !9, !nosanitize !8

401:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

402:                                              ; preds = %394
  %403 = ptrtoint ptr %199 to i64
  %404 = sub i64 %165, %403
  %405 = tail call i64 @llvm.umin.i64(i64 %404, i64 %399)
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = load ptr, ptr %189, align 8, !tbaa !300
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %395
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %199, ptr readonly align 1 %409, i64 %405, i1 false)
  %410 = load i64, ptr %194, align 8, !tbaa !298
  br label %411

411:                                              ; preds = %407, %402
  %412 = phi i64 [ %395, %402 ], [ %410, %407 ]
  %413 = getelementptr inbounds nuw i8, ptr %199, i64 %405
  %414 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %412, i64 %405), !nosanitize !8
  %415 = extractvalue { i64, i1 } %414, 1, !nosanitize !8
  br i1 %415, label %416, label %417, !prof !9, !nosanitize !8

416:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

417:                                              ; preds = %411
  %418 = extractvalue { i64, i1 } %414, 0, !nosanitize !8
  store i64 %418, ptr %194, align 8, !tbaa !298
  %419 = icmp ugt i64 %399, %404
  br i1 %419, label %429, label %420

420:                                              ; preds = %417
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %193, i8 0, i64 16, i1 false)
  %421 = load i32, ptr %191, align 4, !tbaa !299
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  store i32 0, ptr %19, align 8, !tbaa !85
  store i64 0, ptr %195, align 8, !tbaa !119
  br label %429

424:                                              ; preds = %420
  store i32 1, ptr %19, align 8, !tbaa !85
  br label %425

425:                                              ; preds = %424, %390
  %426 = phi i32 [ %391, %390 ], [ 1, %424 ]
  %427 = phi ptr [ %385, %390 ], [ %397, %424 ]
  %428 = phi ptr [ %388, %390 ], [ %413, %424 ]
  br label %196, !llvm.loop !296

429:                                              ; preds = %423, %417, %392, %282, %281, %272, %269, %238
  %430 = phi ptr [ %388, %392 ], [ %413, %423 ], [ %239, %238 ], [ %199, %281 ], [ %199, %269 ], [ %413, %417 ], [ %199, %272 ], [ %199, %282 ]
  %431 = phi ptr [ %385, %392 ], [ %397, %423 ], [ %158, %238 ], [ %158, %281 ], [ %268, %269 ], [ %397, %417 ], [ %268, %272 ], [ %158, %282 ]
  %432 = ptrtoint ptr %431 to i64
  %433 = ptrtoint ptr %154 to i64
  %434 = sub i64 %432, %433
  store i64 %434, ptr %11, align 8, !tbaa !177
  %435 = ptrtoint ptr %430 to i64
  %436 = ptrtoint ptr %160 to i64
  %437 = sub i64 %435, %436
  store i64 %437, ptr %5, align 8, !tbaa !174
  %438 = load i32, ptr %191, align 4, !tbaa !299
  %439 = icmp eq i32 %438, 0
  %440 = load i32, ptr %128, align 4, !tbaa !284
  br i1 %439, label %441, label %465

441:                                              ; preds = %429
  %442 = icmp eq i32 %440, 1
  br i1 %442, label %443, label %451

443:                                              ; preds = %441
  %444 = load i64, ptr %184, align 8, !tbaa !213
  %445 = load i64, ptr %185, align 8, !tbaa !285
  %446 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %444, i64 %445), !nosanitize !8
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !8
  br i1 %447, label %448, label %449, !prof !9, !nosanitize !8

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

449:                                              ; preds = %443
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !8
  br label %462

451:                                              ; preds = %441
  %452 = load i64, ptr %186, align 8, !tbaa !286
  %453 = load i64, ptr %183, align 8, !tbaa !139
  %454 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %452, i64 %453), !nosanitize !8
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !8
  br i1 %455, label %456, label %457, !prof !9, !nosanitize !8

456:                                              ; preds = %451
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

457:                                              ; preds = %451
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !8
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %457
  %461 = load i64, ptr %184, align 8, !tbaa !213
  br label %462

462:                                              ; preds = %460, %457, %449
  %463 = phi i64 [ %450, %449 ], [ %461, %460 ], [ %458, %457 ]
  %464 = icmp ult i64 %463, -119
  br i1 %464, label %465, label %489

465:                                              ; preds = %462, %429
  %466 = icmp eq i32 %440, 1
  br i1 %466, label %467, label %469

467:                                              ; preds = %465
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %468, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !289
  br label %469

469:                                              ; preds = %467, %465
  %470 = load i32, ptr %141, align 8, !tbaa !294
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %472, label %481

472:                                              ; preds = %469
  %473 = load i64, ptr %7, align 8, !tbaa !173
  %474 = load i64, ptr %5, align 8, !tbaa !174
  %475 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %473, i64 %474), !nosanitize !8
  %476 = extractvalue { i64, i1 } %475, 1, !nosanitize !8
  br i1 %476, label %477, label %478, !prof !9, !nosanitize !8

477:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

478:                                              ; preds = %472
  %479 = extractvalue { i64, i1 } %475, 0, !nosanitize !8
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %479, ptr %480, align 8, !tbaa !295
  br label %481

481:                                              ; preds = %478, %469
  %482 = load i64, ptr %193, align 8, !tbaa !297
  %483 = load i64, ptr %194, align 8, !tbaa !298
  %484 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %482, i64 %483), !nosanitize !8
  %485 = extractvalue { i64, i1 } %484, 1, !nosanitize !8
  br i1 %485, label %486, label %487, !prof !9, !nosanitize !8

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

487:                                              ; preds = %481
  %488 = extractvalue { i64, i1 } %484, 0, !nosanitize !8
  br label %489

489:                                              ; preds = %487, %462, %376, %351, %235, %200, %148, %136, %131, %69, %54, %50, %45, %16, %10, %4
  %490 = phi i64 [ -42, %16 ], [ -70, %4 ], [ -72, %10 ], [ %488, %487 ], [ %463, %462 ], [ -50, %131 ], [ -50, %50 ], [ -50, %45 ], [ %58, %54 ], [ -64, %69 ], [ -50, %148 ], [ -50, %136 ], [ %236, %235 ], [ -62, %200 ], [ %377, %376 ], [ %352, %351 ]
  ret i64 %490
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #4 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 8
  %10 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store ptr %1, ptr %9, align 8, !tbaa !171
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %11, align 8, !tbaa !173
  %12 = load i64, ptr %3, align 8, !tbaa !118
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %12, ptr %13, align 8, !tbaa !174
  store ptr %4, ptr %10, align 8, !tbaa !175
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %14, align 8, !tbaa !176
  %15 = load i64, ptr %6, align 8, !tbaa !118
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %15, ptr %16, align 8, !tbaa !177
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %7)
  %18 = load i64, ptr %13, align 8, !tbaa !174
  store i64 %18, ptr %3, align 8, !tbaa !118
  %19 = load i64, ptr %16, align 8, !tbaa !177
  store i64 %19, ptr %6, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  ret i64 %17
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef i64 @ZSTD_compressSequences(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readnone captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6) local_unnamed_addr #22 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %10 = load ptr, ptr %9, align 8, !tbaa !291
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %14 = load ptr, ptr %13, align 8, !tbaa !292
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 904
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %18, null
  %22 = icmp eq ptr %20, null
  %23 = xor i1 %21, %22
  br i1 %23, label %54, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %26 = load i32, ptr %25, align 8, !tbaa !4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

30:                                               ; preds = %12, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 1), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %34, label %35, label %36, !prof !9, !nosanitize !8

35:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

36:                                               ; preds = %30
  %37 = icmp eq ptr %32, null
  %38 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %38, ptr %39, align 8, !tbaa !119
  br i1 %37, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 244
  %42 = load i32, ptr %41, align 4, !tbaa !240
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = add i64 %38, -1
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 384
  %47 = load i32, ptr %46, align 8, !tbaa !293
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !118
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

53:                                               ; preds = %44, %40, %36
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

54:                                               ; preds = %16
  ret i64 -64
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc range(i64 -70, 20) i64 @ZSTD_writeFrameHeader(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #14 {
  %6 = icmp ne i32 %4, 0
  %7 = zext i1 %6 to i32
  %8 = icmp ugt i32 %4, 255
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = icmp ugt i32 %4, 65535
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %10, %12
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i32, ptr %15, align 8, !tbaa !96
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %13, i32 0
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !95
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !88
  %24 = shl nuw i32 1, %23
  %25 = load i32, ptr %14, align 8, !tbaa !47
  %26 = icmp ne i32 %25, 0
  %27 = zext i32 %24 to i64
  %28 = icmp ule i64 %3, %27
  %29 = select i1 %26, i1 %28, i1 false
  %30 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %23, i32 10), !nosanitize !8
  %31 = extractvalue { i32, i1 } %30, 1, !nosanitize !8
  br i1 %31, label %32, label %33, !prof !9, !nosanitize !8

32:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

33:                                               ; preds = %5
  %34 = extractvalue { i32, i1 } %30, 0, !nosanitize !8
  %35 = trunc i32 %34 to i8
  %36 = shl i8 %35, 3
  br i1 %26, label %37, label %46

37:                                               ; preds = %33
  %38 = icmp ugt i64 %3, 255
  %39 = zext i1 %38 to i32
  %40 = icmp ugt i64 %3, 65791
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %39, %41
  %43 = icmp ugt i64 %3, 4294967294
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  br label %46

46:                                               ; preds = %37, %33
  %47 = phi i32 [ %45, %37 ], [ 0, %33 ]
  %48 = select i1 %21, i32 4, i32 0
  %49 = add nuw nsw i32 %48, %18
  %50 = select i1 %29, i32 32, i32 0
  %51 = or disjoint i32 %50, %49
  %52 = shl nuw nsw i32 %47, 6
  %53 = or disjoint i32 %52, %51
  %54 = trunc nuw i32 %53 to i8
  %55 = icmp ult i64 %1, 18
  br i1 %55, label %103, label %56

56:                                               ; preds = %46
  %57 = load i32, ptr %2, align 8, !tbaa !87
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -47205080, ptr %0, align 1, !tbaa !4
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i64 [ 4, %59 ], [ 0, %56 ]
  %62 = or disjoint i64 %61, 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %61
  store i8 %54, ptr %63, align 1, !tbaa !164
  br i1 %29, label %67, label %64

64:                                               ; preds = %60
  %65 = or disjoint i64 %61, 2
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  store i8 %36, ptr %66, align 1, !tbaa !164
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i64 [ %62, %60 ], [ %65, %64 ]
  switch i32 %18, label %80 [
    i32 3, label %77
    i32 1, label %69
    i32 2, label %73
  ]

69:                                               ; preds = %67
  %70 = trunc i32 %4 to i8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  store i8 %70, ptr %71, align 1, !tbaa !164
  %72 = add nuw nsw i64 %68, 1
  br label %80

73:                                               ; preds = %67
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  %75 = trunc i32 %4 to i16
  store i16 %75, ptr %74, align 1, !tbaa !199
  %76 = add nuw nsw i64 %68, 2
  br label %80

77:                                               ; preds = %67
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  store i32 %4, ptr %78, align 1, !tbaa !4
  %79 = add nuw nsw i64 %68, 4
  br label %80

80:                                               ; preds = %77, %73, %69, %67
  %81 = phi i64 [ %68, %67 ], [ %79, %77 ], [ %72, %69 ], [ %76, %73 ]
  switch i32 %47, label %82 [
    i32 3, label %100
    i32 1, label %87
    i32 2, label %96
  ]

82:                                               ; preds = %80
  br i1 %29, label %83, label %103

83:                                               ; preds = %82
  %84 = add nuw nsw i64 %81, 1
  %85 = trunc i64 %3 to i8
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  store i8 %85, ptr %86, align 1, !tbaa !164
  br label %103

87:                                               ; preds = %80
  %88 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %3, i64 256), !nosanitize !8
  %89 = extractvalue { i64, i1 } %88, 1, !nosanitize !8
  br i1 %89, label %90, label %91, !prof !9, !nosanitize !8

90:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

91:                                               ; preds = %87
  %92 = extractvalue { i64, i1 } %88, 0, !nosanitize !8
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  %94 = trunc i64 %92 to i16
  store i16 %94, ptr %93, align 1, !tbaa !199
  %95 = add nuw nsw i64 %81, 2
  br label %103

96:                                               ; preds = %80
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  %98 = trunc i64 %3 to i32
  store i32 %98, ptr %97, align 1, !tbaa !4
  %99 = add nuw nsw i64 %81, 4
  br label %103

100:                                              ; preds = %80
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  store i64 %3, ptr %101, align 1, !tbaa !118
  %102 = add nuw nsw i64 %81, 8
  br label %103

103:                                              ; preds = %100, %96, %91, %83, %82, %46
  %104 = phi i64 [ -70, %46 ], [ %84, %83 ], [ %81, %82 ], [ %102, %100 ], [ %95, %91 ], [ %99, %96 ]
  ret i64 %104
}

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @convertSequences_noRepcodes(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %46, %3
  %6 = phi i64 [ %48, %46 ], [ 0, %3 ]
  %7 = phi i64 [ %47, %46 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !181
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 3), !nosanitize !8
  %11 = extractvalue { i32, i1 } %10, 1, !nosanitize !8
  br i1 %11, label %12, label %13, !prof !9, !nosanitize !8

12:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

13:                                               ; preds = %5
  %14 = extractvalue { i32, i1 } %10, 0, !nosanitize !8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %6
  store i32 %14, ptr %15, align 4, !tbaa !162
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !184
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i16 %18, ptr %19, align 4, !tbaa !159
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %21 = load i32, ptr %20, align 4, !tbaa !183
  %22 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %21, i32 3), !nosanitize !8
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !8
  br i1 %23, label %24, label %25, !prof !9, !nosanitize !8

24:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

25:                                               ; preds = %13
  %26 = extractvalue { i32, i1 } %22, 0, !nosanitize !8
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 6
  store i16 %27, ptr %28, align 2, !tbaa !163
  %29 = icmp ugt i32 %21, 65538
  br i1 %29, label %30, label %32, !prof !301

30:                                               ; preds = %25
  %31 = add nuw i64 %6, 1
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i64 [ %31, %30 ], [ %7, %25 ]
  %34 = icmp ugt i32 %17, 65535
  br i1 %34, label %35, label %46, !prof !301

35:                                               ; preds = %32
  %36 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %2), !nosanitize !8
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !8
  br i1 %37, label %38, label %39, !prof !9, !nosanitize !8

38:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

39:                                               ; preds = %35
  %40 = extractvalue { i64, i1 } %36, 0, !nosanitize !8
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %40, i64 1), !nosanitize !8
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !8
  br i1 %42, label %43, label %44, !prof !9, !nosanitize !8

43:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

44:                                               ; preds = %39
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !8
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi i64 [ %45, %44 ], [ %33, %32 ]
  %48 = add nuw i64 %6, 1
  %49 = icmp eq i64 %48, %2
  br i1 %49, label %50, label %5, !llvm.loop !302

50:                                               ; preds = %46, %3
  %51 = phi i64 [ 0, %3 ], [ %47, %46 ]
  ret i64 %51
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -107, 1) i64 @ZSTD_convertBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #24 {
  %5 = alloca %struct.repcodes_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %8 = load i64, ptr %7, align 8, !tbaa !303
  %9 = icmp ult i64 %2, %8
  br i1 %9, label %10, label %258

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %14 = icmp eq i32 %3, 0
  %15 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  br i1 %14, label %30, label %16

16:                                               ; preds = %10
  %17 = extractvalue { i64, i1 } %15, 1, !nosanitize !8
  br i1 %17, label %107, label %18, !prof !304, !nosanitize !8

18:                                               ; preds = %16
  %19 = extractvalue { i64, i1 } %15, 0, !nosanitize !8
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %212, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %21, align 8
  %28 = load i32, ptr %20, align 4
  %29 = load i32, ptr %5, align 8
  br label %108

30:                                               ; preds = %10
  %31 = extractvalue { i64, i1 } %15, 0, !nosanitize !8
  %32 = extractvalue { i64, i1 } %15, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8, !tbaa !223
  %36 = icmp eq i64 %31, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %2
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %39, ptr %40, align 8, !tbaa !222
  br label %212

41:                                               ; preds = %82, %34
  %42 = phi i64 [ %84, %82 ], [ 0, %34 ]
  %43 = phi i64 [ %83, %82 ], [ 0, %34 ]
  %44 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !181
  %46 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 3), !nosanitize !8
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !8
  br i1 %47, label %48, label %49, !prof !9, !nosanitize !8

48:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

49:                                               ; preds = %41
  %50 = extractvalue { i32, i1 } %46, 0, !nosanitize !8
  %51 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %42
  store i32 %50, ptr %51, align 4, !tbaa !162
  %52 = getelementptr inbounds nuw i8, ptr %44, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !184
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 4
  store i16 %54, ptr %55, align 4, !tbaa !159
  %56 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %57 = load i32, ptr %56, align 4, !tbaa !183
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 3), !nosanitize !8
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !8
  br i1 %59, label %60, label %61, !prof !9, !nosanitize !8

60:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

61:                                               ; preds = %49
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !8
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds nuw i8, ptr %51, i64 6
  store i16 %63, ptr %64, align 2, !tbaa !163
  %65 = icmp ugt i32 %57, 65538
  br i1 %65, label %66, label %68, !prof !301

66:                                               ; preds = %61
  %67 = add nuw i64 %42, 1
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i64 [ %67, %66 ], [ %43, %61 ]
  %70 = icmp ugt i32 %53, 65535
  br i1 %70, label %71, label %82, !prof !301

71:                                               ; preds = %68
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %42, i64 %31), !nosanitize !8
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %71
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !8
  %77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %76, i64 1), !nosanitize !8
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !8
  br i1 %78, label %79, label %80, !prof !9, !nosanitize !8

79:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

80:                                               ; preds = %75
  %81 = extractvalue { i64, i1 } %77, 0, !nosanitize !8
  br label %82

82:                                               ; preds = %80, %68
  %83 = phi i64 [ %81, %80 ], [ %69, %68 ]
  %84 = add nuw i64 %42, 1
  %85 = icmp eq i64 %84, %31
  br i1 %85, label %86, label %41, !llvm.loop !302

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %2
  %88 = getelementptr inbounds i8, ptr %87, i64 -8
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %88, ptr %89, align 8, !tbaa !222
  %90 = icmp eq i64 %83, 0
  br i1 %90, label %212, label %91

91:                                               ; preds = %86
  %92 = icmp ugt i64 %83, %31
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  br i1 %92, label %98, label %94

94:                                               ; preds = %91
  store i32 2, ptr %93, align 8, !tbaa !305
  %95 = trunc i64 %83 to i32
  %96 = add i32 %95, -1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i32 %96, ptr %97, align 4, !tbaa !306
  br label %212

98:                                               ; preds = %91
  store i32 1, ptr %93, align 8, !tbaa !305
  %99 = sub nuw i64 %83, %31
  %100 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 1), !nosanitize !8
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !8
  br i1 %101, label %102, label %103, !prof !9, !nosanitize !8

102:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

103:                                              ; preds = %98
  %104 = extractvalue { i64, i1 } %100, 0, !nosanitize !8
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i32 %105, ptr %106, align 4, !tbaa !306
  br label %212

107:                                              ; preds = %16
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

108:                                              ; preds = %206, %26
  %109 = phi i32 [ %29, %26 ], [ %209, %206 ]
  %110 = phi i64 [ 0, %26 ], [ %210, %206 ]
  %111 = phi i32 [ %28, %26 ], [ %208, %206 ]
  %112 = phi i32 [ %27, %26 ], [ %207, %206 ]
  %113 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %110
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %115 = load i32, ptr %114, align 4, !tbaa !184
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %117 = load i32, ptr %116, align 4, !tbaa !183
  %118 = icmp eq i32 %115, 0
  %119 = zext i1 %118 to i32
  %120 = load i32, ptr %113, align 4, !tbaa !181
  %121 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %120, i32 3), !nosanitize !8
  %122 = extractvalue { i32, i1 } %121, 0, !nosanitize !8
  %123 = extractvalue { i32, i1 } %121, 1, !nosanitize !8
  br i1 %123, label %124, label %125, !prof !9, !nosanitize !8

124:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

125:                                              ; preds = %108
  %126 = icmp ne i32 %120, %109
  %127 = select i1 %118, i1 true, i1 %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = icmp eq i32 %120, %111
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = select i1 %118, i32 1, i32 2
  br label %146

132:                                              ; preds = %128
  %133 = icmp eq i32 %120, %112
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = xor i32 %119, 3
  br label %146

136:                                              ; preds = %132
  br i1 %118, label %137, label %146

137:                                              ; preds = %136
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !8
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !8
  br i1 %139, label %140, label %141, !prof !9, !nosanitize !8

140:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

141:                                              ; preds = %137
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !8
  %143 = icmp eq i32 %120, %142
  %144 = select i1 %143, i32 3, i32 %122
  %145 = load ptr, ptr %23, align 8, !tbaa !158
  br label %157

146:                                              ; preds = %136, %134, %130, %125
  %147 = phi i32 [ %131, %130 ], [ %135, %134 ], [ 1, %125 ], [ %122, %136 ]
  %148 = icmp ugt i32 %115, 65535
  %149 = load ptr, ptr %23, align 8, !tbaa !158
  br i1 %148, label %150, label %157, !prof !307

150:                                              ; preds = %146
  store i32 1, ptr %22, align 8, !tbaa !167
  %151 = load ptr, ptr %6, align 8, !tbaa !154
  %152 = ptrtoint ptr %149 to i64
  %153 = ptrtoint ptr %151 to i64
  %154 = sub i64 %152, %153
  %155 = lshr exact i64 %154, 3
  %156 = trunc i64 %155 to i32
  store i32 %156, ptr %24, align 4, !tbaa !168
  br label %157

157:                                              ; preds = %150, %146, %141
  %158 = phi ptr [ %145, %141 ], [ %149, %150 ], [ %149, %146 ]
  %159 = phi i32 [ %144, %141 ], [ %147, %150 ], [ %147, %146 ]
  %160 = zext i32 %117 to i64
  %161 = trunc i32 %115 to i16
  %162 = getelementptr inbounds nuw i8, ptr %158, i64 4
  store i16 %161, ptr %162, align 4, !tbaa !159
  store i32 %159, ptr %158, align 4, !tbaa !162
  %163 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 0, 4294967296) %160, i64 3), !nosanitize !8
  %164 = extractvalue { i64, i1 } %163, 0, !nosanitize !8
  %165 = extractvalue { i64, i1 } %163, 1, !nosanitize !8
  br i1 %165, label %166, label %167, !prof !9, !nosanitize !8

166:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

167:                                              ; preds = %157
  %168 = icmp ugt i64 %164, 65535
  br i1 %168, label %169, label %176, !prof !301

169:                                              ; preds = %167
  store i32 2, ptr %22, align 8, !tbaa !167
  %170 = load ptr, ptr %6, align 8, !tbaa !154
  %171 = ptrtoint ptr %158 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = lshr exact i64 %173, 3
  %175 = trunc i64 %174 to i32
  store i32 %175, ptr %24, align 4, !tbaa !168
  br label %176

176:                                              ; preds = %169, %167
  %177 = trunc i64 %164 to i16
  %178 = getelementptr inbounds nuw i8, ptr %158, i64 6
  store i16 %177, ptr %178, align 2, !tbaa !163
  %179 = getelementptr inbounds nuw i8, ptr %158, i64 8
  store ptr %179, ptr %23, align 8, !tbaa !158
  %180 = icmp ugt i32 %159, 3
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  store i32 %111, ptr %21, align 8, !tbaa !4
  store i32 %109, ptr %20, align 4, !tbaa !4
  %182 = add i32 %159, -3
  br label %203

183:                                              ; preds = %176
  %184 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %159, i32 1), !nosanitize !8
  %185 = extractvalue { i32, i1 } %184, 1, !nosanitize !8
  br i1 %185, label %186, label %187, !prof !9, !nosanitize !8

186:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

187:                                              ; preds = %183
  %188 = extractvalue { i32, i1 } %184, 0, !nosanitize !8
  %189 = add nuw nsw i32 %188, %119
  switch i32 %189, label %195 [
    i32 0, label %206
    i32 3, label %190
  ]

190:                                              ; preds = %187
  %191 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !8
  %192 = extractvalue { i32, i1 } %191, 0, !nosanitize !8
  %193 = extractvalue { i32, i1 } %191, 1, !nosanitize !8
  br i1 %193, label %194, label %199, !prof !9, !nosanitize !8

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

195:                                              ; preds = %187
  %196 = zext nneg i32 %189 to i64
  %197 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !4
  br label %199

199:                                              ; preds = %195, %190
  %200 = phi i32 [ %198, %195 ], [ %192, %190 ]
  %201 = icmp eq i32 %189, 1
  %202 = select i1 %201, i32 %112, i32 %111
  store i32 %202, ptr %21, align 8, !tbaa !4
  store i32 %109, ptr %20, align 4, !tbaa !4
  br label %203

203:                                              ; preds = %199, %181
  %204 = phi i32 [ %202, %199 ], [ %111, %181 ]
  %205 = phi i32 [ %200, %199 ], [ %182, %181 ]
  store i32 %205, ptr %5, align 8, !tbaa !4
  br label %206

206:                                              ; preds = %203, %187
  %207 = phi i32 [ %204, %203 ], [ %112, %187 ]
  %208 = phi i32 [ %109, %203 ], [ %111, %187 ]
  %209 = phi i32 [ %205, %203 ], [ %109, %187 ]
  %210 = add i64 %110, 1
  %211 = icmp eq i64 %210, %19
  br i1 %211, label %212, label %108

212:                                              ; preds = %206, %103, %94, %86, %37, %18
  %213 = icmp ugt i64 %2, 1
  %214 = and i1 %213, %14
  br i1 %214, label %215, label %254

215:                                              ; preds = %212
  %216 = icmp ugt i64 %2, 3
  br i1 %216, label %217, label %240

217:                                              ; preds = %215
  %218 = trunc i64 %2 to i32
  %219 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %218, i32 2), !nosanitize !8
  %220 = extractvalue { i32, i1 } %219, 0, !nosanitize !8
  %221 = extractvalue { i32, i1 } %219, 1, !nosanitize !8
  br i1 %221, label %222, label %223, !prof !9, !nosanitize !8

222:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

223:                                              ; preds = %217
  %224 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %220, i32 2), !nosanitize !8
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !8
  br i1 %225, label %226, label %227, !prof !9, !nosanitize !8

226:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

227:                                              ; preds = %223
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !8
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !181
  %232 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %231, ptr %232, align 8, !tbaa !4
  %233 = add i32 %220, -1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !181
  %237 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %236, ptr %237, align 4, !tbaa !4
  %238 = zext i32 %220 to i64
  %239 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %238
  br label %251

240:                                              ; preds = %215
  %241 = icmp eq i64 %2, 3
  br i1 %241, label %242, label %248

242:                                              ; preds = %240
  %243 = load i32, ptr %5, align 8, !tbaa !4
  %244 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %243, ptr %244, align 8, !tbaa !4
  %245 = load i32, ptr %1, align 4, !tbaa !181
  %246 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %245, ptr %246, align 4, !tbaa !4
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %251

248:                                              ; preds = %240
  %249 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %250 = load <2 x i32>, ptr %5, align 8, !tbaa !4
  store <2 x i32> %250, ptr %249, align 4, !tbaa !4
  br label %251

251:                                              ; preds = %248, %242, %227
  %252 = phi ptr [ %239, %227 ], [ %1, %248 ], [ %247, %242 ]
  %253 = load i32, ptr %252, align 4, !tbaa !181
  store i32 %253, ptr %5, align 8, !tbaa !4
  br label %254

254:                                              ; preds = %251, %212
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %256 = load ptr, ptr %255, align 8, !tbaa !58
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %257, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  br label %258

258:                                              ; preds = %254, %4
  %259 = phi i64 [ 0, %254 ], [ -107, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret i64 %259
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp ugt i64 %2, 3
  br i1 %4, label %5, label %58

5:                                                ; preds = %3
  %6 = add i64 %2, -3
  br label %7

7:                                                ; preds = %55, %5
  %8 = phi i64 [ %28, %55 ], [ 0, %5 ]
  %9 = phi i64 [ %39, %55 ], [ 0, %5 ]
  %10 = phi i64 [ %50, %55 ], [ 0, %5 ]
  %11 = phi i64 [ %56, %55 ], [ 0, %5 ]
  %12 = phi i64 [ %17, %55 ], [ 0, %5 ]
  %13 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %11
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i64, ptr %14, align 1, !tbaa !118
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 %15), !nosanitize !8
  %17 = extractvalue { i64, i1 } %16, 0, !nosanitize !8
  %18 = extractvalue { i64, i1 } %16, 1, !nosanitize !8
  br i1 %18, label %19, label %20, !prof !9, !nosanitize !8

19:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

20:                                               ; preds = %7
  %21 = icmp ugt i64 %15, 4294967295
  br i1 %21, label %22, label %81

22:                                               ; preds = %20
  %23 = or disjoint i64 %11, 1
  %24 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %26 = load i64, ptr %25, align 1, !tbaa !118
  %27 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %26), !nosanitize !8
  %28 = extractvalue { i64, i1 } %27, 0, !nosanitize !8
  %29 = extractvalue { i64, i1 } %27, 1, !nosanitize !8
  br i1 %29, label %30, label %31, !prof !9, !nosanitize !8

30:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

31:                                               ; preds = %22
  %32 = icmp ugt i64 %26, 4294967295
  br i1 %32, label %33, label %81

33:                                               ; preds = %31
  %34 = or disjoint i64 %11, 2
  %35 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %37 = load i64, ptr %36, align 1, !tbaa !118
  %38 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %9, i64 %37), !nosanitize !8
  %39 = extractvalue { i64, i1 } %38, 0, !nosanitize !8
  %40 = extractvalue { i64, i1 } %38, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !9, !nosanitize !8

41:                                               ; preds = %33
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %33
  %43 = icmp ugt i64 %37, 4294967295
  br i1 %43, label %44, label %81

44:                                               ; preds = %42
  %45 = or disjoint i64 %11, 3
  %46 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i64, ptr %47, align 1, !tbaa !118
  %49 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %10, i64 %48), !nosanitize !8
  %50 = extractvalue { i64, i1 } %49, 0, !nosanitize !8
  %51 = extractvalue { i64, i1 } %49, 1, !nosanitize !8
  br i1 %51, label %52, label %53, !prof !9, !nosanitize !8

52:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

53:                                               ; preds = %44
  %54 = icmp ugt i64 %48, 4294967295
  br i1 %54, label %55, label %81

55:                                               ; preds = %53
  %56 = add nuw i64 %11, 4
  %57 = icmp ult i64 %56, %6
  br i1 %57, label %7, label %58, !llvm.loop !308

58:                                               ; preds = %55, %3
  %59 = phi i64 [ 0, %3 ], [ %28, %55 ]
  %60 = phi i64 [ 0, %3 ], [ %39, %55 ]
  %61 = phi i64 [ 0, %3 ], [ %50, %55 ]
  %62 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %63 = phi i64 [ 0, %3 ], [ %17, %55 ]
  %64 = icmp ult i64 %62, %2
  br i1 %64, label %65, label %80

65:                                               ; preds = %77, %58
  %66 = phi i64 [ %72, %77 ], [ %63, %58 ]
  %67 = phi i64 [ %78, %77 ], [ %62, %58 ]
  %68 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %70 = load i64, ptr %69, align 1, !tbaa !118
  %71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 %70), !nosanitize !8
  %72 = extractvalue { i64, i1 } %71, 0, !nosanitize !8
  %73 = extractvalue { i64, i1 } %71, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %65
  %76 = icmp ugt i64 %70, 4294967295
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = add i64 %67, 1
  %79 = icmp eq i64 %78, %2
  br i1 %79, label %80, label %65, !llvm.loop !309

80:                                               ; preds = %77, %58
  store i64 -107, ptr %0, align 8, !tbaa !310
  br label %108

81:                                               ; preds = %75, %53, %42, %31, %20
  %82 = phi i64 [ %59, %75 ], [ %28, %31 ], [ %28, %42 ], [ %28, %53 ], [ %8, %20 ]
  %83 = phi i64 [ %60, %75 ], [ %9, %31 ], [ %39, %42 ], [ %39, %53 ], [ %9, %20 ]
  %84 = phi i64 [ %61, %75 ], [ %10, %31 ], [ %10, %42 ], [ %50, %53 ], [ %10, %20 ]
  %85 = phi i64 [ %67, %75 ], [ %23, %31 ], [ %34, %42 ], [ %45, %53 ], [ %11, %20 ]
  %86 = phi i64 [ %72, %75 ], [ %17, %53 ], [ %17, %42 ], [ %17, %31 ], [ %17, %20 ]
  %87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %82, i64 %83), !nosanitize !8
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !8
  br i1 %88, label %89, label %90, !prof !9, !nosanitize !8

89:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

90:                                               ; preds = %81
  %91 = extractvalue { i64, i1 } %87, 0, !nosanitize !8
  %92 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %84), !nosanitize !8
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !8
  br i1 %93, label %94, label %95, !prof !9, !nosanitize !8

94:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %92, 0, !nosanitize !8
  %97 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 %96), !nosanitize !8
  %98 = extractvalue { i64, i1 } %97, 1, !nosanitize !8
  br i1 %98, label %99, label %100, !prof !9, !nosanitize !8

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

100:                                              ; preds = %95
  %101 = extractvalue { i64, i1 } %97, 0, !nosanitize !8
  %102 = add nuw i64 %85, 1
  store i64 %102, ptr %0, align 8, !tbaa !310
  %103 = and i64 %101, 4294967295
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %103, ptr %104, align 8, !tbaa !312
  %105 = lshr i64 %101, 32
  %106 = add nuw nsw i64 %103, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %106, ptr %107, align 8, !tbaa !313
  br label %108

108:                                              ; preds = %100, %80
  ret void
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -66, -63) i64 @ZSTD_compressSequencesAndLiterals(ptr noundef captures(none) %0, ptr noundef readnone captures(none) %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #22 {
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %58, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %14 = load ptr, ptr %13, align 8, !tbaa !291
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %18 = load ptr, ptr %17, align 8, !tbaa !292
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 904
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  %27 = xor i1 %25, %26
  br i1 %27, label %58, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %30 = load i32, ptr %29, align 8, !tbaa !4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

33:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %16, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %34
  %41 = icmp eq ptr %36, null
  %42 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %42, ptr %43, align 8, !tbaa !119
  br i1 %41, label %57, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %36, i64 244
  %46 = load i32, ptr %45, align 4, !tbaa !240
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = add i64 %42, -1
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 384
  %51 = load i32, ptr %50, align 8, !tbaa !293
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !118
  %55 = icmp ugt i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

57:                                               ; preds = %48, %44, %40
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

58:                                               ; preds = %20, %9
  %59 = phi i64 [ -64, %20 ], [ -66, %9 ]
  ret i64 %59
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_flushStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !284, !noalias !314
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !289
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !177
  br label %12

11:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !314
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i64 [ %10, %7 ], [ 0, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %13, ptr %14, align 8, !tbaa !176
  %15 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_endStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !284, !noalias !317
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !289
  br label %10

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !317
  br label %10

10:                                               ; preds = %9, %7
  %11 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %15 = load i32, ptr %14, align 4, !tbaa !244
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %19 = load i32, ptr %18, align 4, !tbaa !299
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 3, i64 0
  br i1 %20, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %24 = load i32, ptr %23, align 4, !tbaa !215
  %25 = shl nsw i32 %24, 2
  %26 = add i32 %24, 536870912
  %27 = icmp ult i32 %26, 1073741824
  br i1 %27, label %29, label %28, !prof !258, !nosanitize !8

28:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 12) #38, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %22, %17
  %30 = phi i32 [ 0, %17 ], [ %25, %22 ]
  %31 = add nuw i64 %11, %21
  %32 = sext i32 %30 to i64
  %33 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %32), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %34, label %35, label %36, !prof !9, !nosanitize !8

35:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

36:                                               ; preds = %29
  %37 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  br label %38

38:                                               ; preds = %36, %13, %10
  %39 = phi i64 [ %11, %10 ], [ %37, %36 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_defaultCLevel() local_unnamed_addr #8 {
  ret i32 3
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getCParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_compressionParameters) align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

7:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @ZSTD_getParams(ptr dead_on_unwind noalias readnone sret(%struct.ZSTD_parameters) align 4 captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

7:                                                ; preds = %4
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((216, 232)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %6, align 8, !tbaa !320
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %5, ptr %7, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_CCtxParams_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %6, align 8, !tbaa !320
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %5, ptr %7, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

declare i64 @ZSTD_ldm_getTableSize(ptr noundef byval(%struct.ldmParams_t) align 8) local_unnamed_addr #16

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 0) i64 @ZSTD_resetCCtx_internal(ptr noundef initializes((240, 464), (968, 972)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #4 {
  %5 = alloca %struct.ldmParams_t, align 8
  %6 = alloca %struct.ldmParams_t, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i32 1, ptr %8, align 8, !tbaa !220
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !117
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %10, ptr noundef nonnull %14) #35
  br label %15

15:                                               ; preds = %13, %4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %17 = load i32, ptr %16, align 4, !tbaa !88
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = icmp eq i64 %2, 0
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 %2)
  %22 = select i1 %20, i64 1, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %24 = load i64, ptr %23, align 8, !tbaa !83
  %25 = tail call i64 @llvm.umin.i64(i64 %24, i64 %22)
  %26 = getelementptr i8, ptr %0, i64 448
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %30 = load i32, ptr %29, align 8, !tbaa !108
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = lshr i64 %25, 8
  %34 = add nuw i64 %33, %25
  %35 = icmp ult i64 %25, 131072
  %36 = sub nuw nsw i64 131072, %25
  %37 = lshr i64 %36, 11
  %38 = select i1 %35, i64 %37, i64 0
  %39 = add nuw i64 %34, %38
  %40 = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %39, 0
  %41 = freeze { i64, i1 } %40
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !8
  br i1 %42, label %43, label %44, !prof !9, !nosanitize !8

43:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

44:                                               ; preds = %32
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !8
  %46 = icmp eq i64 %45, 0
  %47 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 1)
  %48 = extractvalue { i64, i1 } %47, 0
  %49 = select i1 %46, i64 -71, i64 %48
  %50 = extractvalue { i64, i1 } %47, 1
  br i1 %50, label %51, label %52, !prof !9, !nosanitize !8

51:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

52:                                               ; preds = %44, %28
  %53 = phi i64 [ 0, %28 ], [ %49, %44 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %55 = load i32, ptr %54, align 4, !tbaa !107
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %25), !nosanitize !8
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !8
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !8
  br i1 %60, label %61, label %62, !prof !9, !nosanitize !8

61:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

62:                                               ; preds = %57, %52, %15
  %63 = phi i64 [ %53, %57 ], [ %53, %52 ], [ 0, %15 ]
  %64 = phi i64 [ %59, %57 ], [ 0, %52 ], [ 0, %15 ]
  %65 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %25) #35
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %68 = load i64, ptr %67, align 8, !tbaa !52
  %69 = icmp eq i64 %68, 0
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %71 = load i32, ptr %70, align 8, !tbaa !80
  %72 = load ptr, ptr %26, align 8, !tbaa !320
  %73 = icmp ne ptr %72, null
  %74 = load i32, ptr %16, align 4, !tbaa !72
  br i1 %20, label %83, label %75

75:                                               ; preds = %62
  %76 = load i64, ptr %23, align 8, !tbaa !83
  %77 = zext nneg i32 %74 to i64
  %78 = shl nuw i64 1, %77
  %79 = tail call i64 @llvm.umin.i64(i64 %78, i64 %2)
  %80 = icmp eq i64 %76, 0
  %81 = select i1 %80, i64 131072, i64 %76
  %82 = tail call i64 @llvm.umin.i64(i64 %81, i64 %79)
  br label %83

83:                                               ; preds = %75, %62
  %84 = phi i64 [ 1, %62 ], [ %82, %75 ]
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %86 = load i32, ptr %85, align 4, !tbaa !76
  %87 = icmp eq i32 %86, 3
  %88 = or i1 %73, %87
  %89 = select i1 %88, i64 3, i64 4
  %90 = udiv i64 %84, %89
  %91 = add nuw i64 %84, 32
  %92 = icmp samesign ult i64 %90, 2305843009213693952
  br i1 %92, label %94, label %93, !prof !258, !nosanitize !8

93:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

94:                                               ; preds = %83
  %95 = shl nuw i64 %90, 3
  %96 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 63), !nosanitize !8
  %97 = extractvalue { i64, i1 } %96, 1, !nosanitize !8
  br i1 %97, label %98, label %99, !prof !9, !nosanitize !8

98:                                               ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

99:                                               ; preds = %94
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !8
  %101 = and i64 %100, -64
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %91, i64 %101), !nosanitize !8
  %103 = extractvalue { i64, i1 } %102, 1, !nosanitize !8
  br i1 %103, label %104, label %105, !prof !9, !nosanitize !8

104:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

105:                                              ; preds = %99
  %106 = extractvalue { i64, i1 } %102, 0, !nosanitize !8
  %107 = mul nuw nsw i64 %90, 3
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %106, i64 %107), !nosanitize !8
  %109 = extractvalue { i64, i1 } %108, 0, !nosanitize !8
  %110 = extractvalue { i64, i1 } %108, 1, !nosanitize !8
  br i1 %110, label %111, label %112, !prof !9, !nosanitize !8

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

112:                                              ; preds = %105
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %114 = load i32, ptr %113, align 4, !tbaa !77
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = add i32 %114, -3
  %118 = icmp ult i32 %117, 3
  %119 = icmp eq i32 %71, 1
  %120 = and i1 %119, %118
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %123 = load i32, ptr %122, align 4, !tbaa !73
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %125, i64 4)
  br label %127

127:                                              ; preds = %121, %116, %112
  %128 = phi { i64, i1 } [ %126, %121 ], [ zeroinitializer, %116 ], [ zeroinitializer, %112 ]
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %130 = load i32, ptr %129, align 4, !tbaa !74
  %131 = zext nneg i32 %130 to i64
  %132 = shl nuw i64 1, %131
  %133 = tail call i32 @llvm.umin.i32(i32 %74, i32 17)
  %134 = select i1 %87, i32 %133, i32 0
  %135 = icmp eq i32 %134, 0
  %136 = zext nneg i32 %134 to i64
  %137 = extractvalue { i64, i1 } %128, 0, !nosanitize !8
  %138 = extractvalue { i64, i1 } %128, 1, !nosanitize !8
  br i1 %138, label %139, label %140, !prof !9, !nosanitize !8

139:                                              ; preds = %127
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

140:                                              ; preds = %127
  %141 = icmp ult i32 %130, 62
  br i1 %141, label %143, label %142, !prof !258, !nosanitize !8

142:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

143:                                              ; preds = %140
  %144 = shl nuw i64 4, %131
  %145 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 %144), !nosanitize !8
  %146 = extractvalue { i64, i1 } %145, 1, !nosanitize !8
  br i1 %146, label %147, label %148, !prof !9, !nosanitize !8

147:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

148:                                              ; preds = %143
  %149 = extractvalue { i64, i1 } %145, 0, !nosanitize !8
  %150 = shl nuw nsw i64 4, %136
  %151 = select i1 %135, i64 0, i64 %150
  %152 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 %151), !nosanitize !8
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !8
  br i1 %153, label %154, label %155, !prof !9, !nosanitize !8

154:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

155:                                              ; preds = %148
  %156 = extractvalue { i64, i1 } %152, 0, !nosanitize !8
  %157 = add i32 %114, -6
  %158 = icmp ult i32 %157, -3
  %159 = icmp ne i32 %71, 1
  %160 = or i1 %159, %158
  %161 = add nuw i64 %132, 63
  %162 = and i64 %161, -64
  %163 = select i1 %160, i64 0, i64 %162
  %164 = icmp ult i32 %114, 7
  %165 = select i1 %164, i64 0, i64 149248
  %166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %156, i64 %165), !nosanitize !8
  %167 = extractvalue { i64, i1 } %166, 1, !nosanitize !8
  br i1 %167, label %168, label %169, !prof !9, !nosanitize !8

168:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

169:                                              ; preds = %155
  %170 = extractvalue { i64, i1 } %166, 0, !nosanitize !8
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 128), !nosanitize !8
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !8
  br i1 %172, label %173, label %174, !prof !9, !nosanitize !8

173:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

174:                                              ; preds = %169
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !8
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %163), !nosanitize !8
  %177 = extractvalue { i64, i1 } %176, 1, !nosanitize !8
  br i1 %177, label %178, label %179, !prof !9, !nosanitize !8

178:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !260
  %181 = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !260
  %182 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %6, i64 noundef %84) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %183 = load i32, ptr %10, align 4, !tbaa !322
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %197

185:                                              ; preds = %179
  %186 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %182, i64 12), !nosanitize !8
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !8
  br i1 %187, label %188, label %189, !prof !9, !nosanitize !8

188:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

189:                                              ; preds = %185
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !8
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 63), !nosanitize !8
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !8
  br i1 %192, label %193, label %194, !prof !9, !nosanitize !8

193:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

194:                                              ; preds = %189
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !8
  %196 = and i64 %195, -64
  br label %197

197:                                              ; preds = %194, %179
  %198 = phi i64 [ %196, %194 ], [ 0, %179 ]
  %199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 range(i64 2, 1) %63), !nosanitize !8
  %200 = extractvalue { i64, i1 } %199, 0, !nosanitize !8
  %201 = extractvalue { i64, i1 } %199, 1, !nosanitize !8
  br i1 %201, label %202, label %203, !prof !9, !nosanitize !8

202:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

203:                                              ; preds = %197
  %204 = udiv i64 %84, 3
  %205 = lshr i64 %84, 10
  %206 = add nuw nsw i64 %205, 2
  %207 = add nuw nsw i64 %206, %204
  br i1 %73, label %208, label %219

208:                                              ; preds = %203
  %209 = icmp samesign ult i64 %207, 1152921504606846976
  br i1 %209, label %211, label %210, !prof !258, !nosanitize !8

210:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

211:                                              ; preds = %208
  %212 = shl nuw i64 %207, 4
  %213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 63), !nosanitize !8
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !8
  br i1 %214, label %215, label %216, !prof !9, !nosanitize !8

215:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

216:                                              ; preds = %211
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !8
  %218 = and i64 %217, -64
  br label %219

219:                                              ; preds = %216, %203
  %220 = phi i64 [ %218, %216 ], [ 0, %203 ]
  %221 = select i1 %69, i64 20184, i64 25464
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 %181), !nosanitize !8
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !8
  br i1 %223, label %224, label %225, !prof !9, !nosanitize !8

224:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

225:                                              ; preds = %219
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !8
  %227 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %198), !nosanitize !8
  %228 = extractvalue { i64, i1 } %227, 1, !nosanitize !8
  br i1 %228, label %229, label %230, !prof !9, !nosanitize !8

229:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

230:                                              ; preds = %225
  %231 = extractvalue { i64, i1 } %227, 0, !nosanitize !8
  %232 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %231, i64 %180), !nosanitize !8
  %233 = extractvalue { i64, i1 } %232, 1, !nosanitize !8
  br i1 %233, label %234, label %235, !prof !9, !nosanitize !8

234:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

235:                                              ; preds = %230
  %236 = extractvalue { i64, i1 } %232, 0, !nosanitize !8
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %236, i64 %109), !nosanitize !8
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !8
  br i1 %238, label %239, label %240, !prof !9, !nosanitize !8

239:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

240:                                              ; preds = %235
  %241 = extractvalue { i64, i1 } %237, 0, !nosanitize !8
  %242 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %241, i64 %200), !nosanitize !8
  %243 = extractvalue { i64, i1 } %242, 1, !nosanitize !8
  br i1 %243, label %244, label %245, !prof !9, !nosanitize !8

244:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

245:                                              ; preds = %240
  %246 = extractvalue { i64, i1 } %242, 0, !nosanitize !8
  %247 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %246, i64 %220), !nosanitize !8
  %248 = extractvalue { i64, i1 } %247, 1, !nosanitize !8
  br i1 %248, label %249, label %250, !prof !9, !nosanitize !8

249:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

250:                                              ; preds = %245
  %251 = extractvalue { i64, i1 } %247, 0, !nosanitize !8
  %252 = icmp ult i64 %251, -119
  br i1 %252, label %253, label %372

253:                                              ; preds = %250
  %254 = load i64, ptr %67, align 8, !tbaa !52
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %258 = load i32, ptr %257, align 4, !tbaa !323
  %259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %258, i32 1), !nosanitize !8
  %260 = extractvalue { i32, i1 } %259, 1, !nosanitize !8
  br i1 %260, label %261, label %262, !prof !9, !nosanitize !8

261:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #38, !nosanitize !8
  unreachable, !nosanitize !8

262:                                              ; preds = %256
  %263 = extractvalue { i32, i1 } %259, 0, !nosanitize !8
  store i32 %263, ptr %257, align 4, !tbaa !323
  br label %264

264:                                              ; preds = %262, %253
  %265 = load ptr, ptr %7, align 8, !tbaa !61
  %266 = getelementptr i8, ptr %0, i64 712
  %267 = load ptr, ptr %266, align 8, !tbaa !62
  %268 = ptrtoint ptr %267 to i64
  %269 = ptrtoint ptr %265 to i64
  %270 = sub i64 %268, %269
  %271 = icmp ult i64 %270, %251
  %272 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %251, i64 3), !nosanitize !8
  %273 = extractvalue { i64, i1 } %272, 1, !nosanitize !8
  br i1 %273, label %274, label %275, !prof !9, !nosanitize !8

274:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

275:                                              ; preds = %264
  %276 = extractvalue { i64, i1 } %272, 0, !nosanitize !8
  %277 = getelementptr i8, ptr %0, i64 728
  %278 = load ptr, ptr %277, align 8, !tbaa !55
  %279 = getelementptr i8, ptr %0, i64 744
  %280 = load ptr, ptr %279, align 8, !tbaa !275
  %281 = ptrtoint ptr %280 to i64
  %282 = ptrtoint ptr %278 to i64
  %283 = sub i64 %281, %282
  %284 = icmp ult i64 %283, %276
  br i1 %284, label %289, label %285

285:                                              ; preds = %275
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %287 = load i32, ptr %286, align 4, !tbaa !323
  %288 = icmp sgt i32 %287, 128
  br label %289

289:                                              ; preds = %285, %275
  %290 = phi i1 [ false, %275 ], [ %288, %285 ]
  %291 = select i1 %271, i1 true, i1 %290
  br i1 %291, label %292, label %347

292:                                              ; preds = %289
  br i1 %255, label %293, label %372

293:                                              ; preds = %292
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %295 = getelementptr i8, ptr %0, i64 904
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr i8, ptr %0, i64 912
  %298 = load ptr, ptr %297, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %299 = icmp eq ptr %265, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %293
  %301 = icmp eq ptr %296, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %300
  tail call void %296(ptr noundef %298, ptr noundef nonnull %265) #35, !inline_history !259
  br label %304

303:                                              ; preds = %300
  tail call void @free(ptr noundef nonnull %265) #35
  br label %304

304:                                              ; preds = %303, %302, %293
  %305 = load ptr, ptr %294, align 8, !tbaa !48
  %306 = icmp eq ptr %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load ptr, ptr %297, align 8
  %309 = tail call ptr %305(ptr noundef %308, i64 noundef %251) #35, !inline_history !324
  br label %312

310:                                              ; preds = %304
  %311 = tail call noalias ptr @malloc(i64 noundef %251) #36
  br label %312

312:                                              ; preds = %310, %307
  %313 = phi ptr [ %309, %307 ], [ %311, %310 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %372, label %315

315:                                              ; preds = %312
  store ptr %313, ptr %7, align 8, !tbaa !61
  %316 = getelementptr inbounds nuw i8, ptr %313, i64 %251
  store ptr %316, ptr %266, align 8, !tbaa !62
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %313, ptr %317, align 8, !tbaa !54
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %313, ptr %318, align 8, !tbaa !56
  %319 = ptrtoint ptr %316 to i64
  %320 = and i64 %319, 63
  %321 = sub nsw i64 0, %320
  %322 = getelementptr inbounds i8, ptr %316, i64 %321
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %322, ptr %323, align 8, !tbaa !270
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 0, ptr %324, align 8, !tbaa !271
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 0, ptr %325, align 4, !tbaa !325
  store ptr %313, ptr %277, align 8, !tbaa !55
  store ptr %322, ptr %279, align 8, !tbaa !275
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %326, align 8, !tbaa !53
  %327 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %327, align 4, !tbaa !323
  %328 = getelementptr inbounds nuw i8, ptr %313, i64 5632
  %329 = icmp samesign ult i64 %251, 5632
  br i1 %329, label %330, label %331

330:                                              ; preds = %315
  store i8 1, ptr %326, align 8, !tbaa !53
  store ptr null, ptr %66, align 8, !tbaa !57
  br label %372

331:                                              ; preds = %315
  store ptr %328, ptr %317, align 8, !tbaa !54
  store ptr %328, ptr %277, align 8, !tbaa !55
  store ptr %328, ptr %318, align 8, !tbaa !56
  store ptr %313, ptr %66, align 8, !tbaa !57
  %332 = getelementptr inbounds nuw i8, ptr %313, i64 11264
  %333 = icmp samesign ult i64 %251, 11264
  br i1 %333, label %334, label %336

334:                                              ; preds = %331
  store i8 1, ptr %326, align 8, !tbaa !53
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr null, ptr %335, align 8, !tbaa !58
  br label %372

336:                                              ; preds = %331
  store ptr %332, ptr %317, align 8, !tbaa !54
  store ptr %332, ptr %277, align 8, !tbaa !55
  store ptr %332, ptr %318, align 8, !tbaa !56
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %328, ptr %337, align 8, !tbaa !58
  %338 = icmp samesign ult i64 %251, 20184
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  store i8 1, ptr %326, align 8, !tbaa !53
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr null, ptr %340, align 8, !tbaa !59
  br label %372

341:                                              ; preds = %336
  %342 = getelementptr inbounds nuw i8, ptr %313, i64 20184
  store ptr %342, ptr %317, align 8, !tbaa !54
  store ptr %342, ptr %318, align 8, !tbaa !56
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %332, ptr %343, align 8, !tbaa !59
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %344, align 8, !tbaa !60
  store ptr %342, ptr %277, align 8, !tbaa !55
  %345 = getelementptr inbounds i8, ptr %316, i64 %321
  store ptr %345, ptr %279, align 8, !tbaa !275
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %346, align 8, !tbaa !53
  br label %359

347:                                              ; preds = %289
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %349 = load ptr, ptr %348, align 8, !tbaa !54
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %351 = load i32, ptr %350, align 8, !tbaa !271
  %352 = and i64 %268, 63
  %353 = sub nsw i64 0, %352
  %354 = icmp ugt i32 %351, 1
  store ptr %349, ptr %277, align 8, !tbaa !55
  %355 = getelementptr inbounds i8, ptr %267, i64 %353
  store ptr %355, ptr %279, align 8, !tbaa !275
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %356, align 8, !tbaa !53
  br i1 %354, label %357, label %359

357:                                              ; preds = %347
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 1, ptr %358, align 8, !tbaa !271
  br label %359

359:                                              ; preds = %357, %347, %341
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 3496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %360, ptr noundef nonnull align 4 dereferenceable(28) %16, i64 28, i1 false), !tbaa.struct !78
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %362 = load i32, ptr %361, align 8, !tbaa !113
  %363 = icmp eq i32 %362, 1
  %364 = zext i1 %363 to i32
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i32 %364, ptr %365, align 8, !tbaa !326
  %366 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 1), !nosanitize !8
  %367 = extractvalue { i64, i1 } %366, 1, !nosanitize !8
  br i1 %367, label %368, label %369, !prof !9, !nosanitize !8

368:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

369:                                              ; preds = %359
  %370 = extractvalue { i64, i1 } %366, 0, !nosanitize !8
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %370, ptr %371, align 8, !tbaa !119
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable

372:                                              ; preds = %339, %334, %330, %312, %292, %250
  %373 = phi i64 [ %251, %250 ], [ -64, %339 ], [ -64, %334 ], [ -64, %330 ], [ -64, %312 ], [ -64, %292 ]
  ret i64 %373
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #28

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i32 @HUF_optimalTableLog(i32 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((24, 32)) %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #4 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 2224
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 772
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !157
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %23, align 8, !tbaa !327
  %24 = load ptr, ptr %1, align 8, !tbaa !154
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !158
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %27, %28
  %30 = and i64 %29, 34359738360
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %75, label %32

32:                                               ; preds = %11
  %33 = lshr exact i64 %29, 3
  %34 = and i64 %33, 4294967295
  br label %35

35:                                               ; preds = %70, %32
  %36 = phi i64 [ 0, %32 ], [ %73, %70 ]
  %37 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load i16, ptr %38, align 4, !tbaa !159
  %40 = load i32, ptr %37, align 4, !tbaa !162
  %41 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %40, i1 true)
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 6
  %43 = load i16, ptr %42, align 2, !tbaa !163
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i16 %39, 63
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = zext i16 %39 to i32
  %48 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %47, i1 true)
  %49 = trunc nuw nsw i32 %48 to i8
  %50 = sub nuw nsw i8 50, %49
  br label %55

51:                                               ; preds = %35
  %52 = zext nneg i16 %39 to i64
  %53 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !164
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i8 [ %54, %51 ], [ %50, %46 ]
  %57 = getelementptr inbounds nuw i8, ptr %20, i64 %36
  store i8 %56, ptr %57, align 1, !tbaa !164
  %58 = trunc nuw nsw i32 %41 to i8
  %59 = xor i8 %58, 31
  %60 = getelementptr inbounds nuw i8, ptr %18, i64 %36
  store i8 %59, ptr %60, align 1, !tbaa !164
  %61 = icmp ugt i16 %43, 127
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %44, i1 true)
  %64 = trunc nuw nsw i32 %63 to i8
  %65 = sub nuw nsw i8 67, %64
  br label %70

66:                                               ; preds = %55
  %67 = zext nneg i16 %43 to i64
  %68 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !164
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i8 [ %69, %66 ], [ %65, %62 ]
  %72 = getelementptr inbounds nuw i8, ptr %22, i64 %36
  store i8 %71, ptr %72, align 1, !tbaa !164
  %73 = add nuw nsw i64 %36, 1
  %74 = icmp eq i64 %73, %34
  br i1 %74, label %75, label %35, !llvm.loop !165

75:                                               ; preds = %70, %11
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %77 = load i32, ptr %76, align 8, !tbaa !167
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %81 = load i32, ptr %80, align 4, !tbaa !168
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw i8, ptr %20, i64 %82
  store i8 35, ptr %83, align 1, !tbaa !164
  %84 = load i32, ptr %76, align 8, !tbaa !167
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i32 [ %84, %79 ], [ %77, %75 ]
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %90 = load i32, ptr %89, align 4, !tbaa !168
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %22, i64 %91
  store i8 52, ptr %92, align 1, !tbaa !164
  br label %93

93:                                               ; preds = %88, %85
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %94, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  store i32 35, ptr %12, align 4, !tbaa !4
  %95 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %12, ptr noundef %20, i64 noundef %2, ptr noundef %9, i64 noundef %10) #35
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %97 = load i32, ptr %96, align 4, !tbaa !190
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 3548
  store i32 %97, ptr %98, align 4, !tbaa !190
  %99 = load i32, ptr %12, align 4, !tbaa !4
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 2224
  %101 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %98, ptr noundef %8, i32 noundef %99, i64 noundef %95, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %100, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #35
  store i32 %101, ptr %0, align 8, !tbaa !330
  %102 = ptrtoint ptr %6 to i64
  %103 = ptrtoint ptr %5 to i64
  %104 = sub i64 %102, %103
  %105 = load i32, ptr %12, align 4, !tbaa !4
  %106 = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %104, ptr noundef nonnull %15, i32 noundef 9, i32 noundef %101, ptr noundef %8, i32 noundef %105, ptr noundef %20, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %100, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #35
  %107 = icmp ult i64 %106, -119
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = icmp eq i32 %101, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  store i64 %106, ptr %23, align 8, !tbaa !327
  br label %113

111:                                              ; preds = %93
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %106, ptr %112, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %158

113:                                              ; preds = %110, %108
  %114 = getelementptr inbounds nuw i8, ptr %5, i64 %106
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  store i32 31, ptr %13, align 4, !tbaa !4
  %115 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %13, ptr noundef %18, i64 noundef %2, ptr noundef %9, i64 noundef %10) #35
  %116 = load i32, ptr %13, align 4, !tbaa !4
  %117 = icmp ult i32 %116, 29
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %120 = load i32, ptr %119, align 4, !tbaa !194
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 3540
  store i32 %120, ptr %121, align 4, !tbaa !194
  %122 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %121, ptr noundef %8, i32 noundef %116, i64 noundef %115, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %118, i32 noundef %7) #35
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %122, ptr %123, align 4, !tbaa !332
  %124 = ptrtoint ptr %114 to i64
  %125 = sub i64 %102, %124
  %126 = load i32, ptr %13, align 4, !tbaa !4
  %127 = call i64 @ZSTD_buildCTable(ptr noundef %114, i64 noundef %125, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %122, ptr noundef %8, i32 noundef %126, ptr noundef %18, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #35
  %128 = icmp ult i64 %127, -119
  br i1 %128, label %129, label %132

129:                                              ; preds = %113
  %130 = icmp eq i32 %122, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  store i64 %127, ptr %23, align 8, !tbaa !327
  br label %134

132:                                              ; preds = %113
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %127, ptr %133, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %158

134:                                              ; preds = %131, %129
  %135 = getelementptr inbounds nuw i8, ptr %114, i64 %127
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  store i32 52, ptr %14, align 4, !tbaa !4
  %136 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %14, ptr noundef %22, i64 noundef %2, ptr noundef %9, i64 noundef %10) #35
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %138 = load i32, ptr %137, align 4, !tbaa !195
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 3544
  store i32 %138, ptr %139, align 4, !tbaa !195
  %140 = load i32, ptr %14, align 4, !tbaa !4
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 772
  %142 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %139, ptr noundef %8, i32 noundef %140, i64 noundef %136, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %141, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #35
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %142, ptr %143, align 8, !tbaa !333
  %144 = ptrtoint ptr %135 to i64
  %145 = sub i64 %102, %144
  %146 = load i32, ptr %14, align 4, !tbaa !4
  %147 = call i64 @ZSTD_buildCTable(ptr noundef %135, i64 noundef %145, ptr noundef nonnull %16, i32 noundef 9, i32 noundef %142, ptr noundef %8, i32 noundef %146, ptr noundef %22, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %141, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #35
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = icmp eq i32 %142, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  store i64 %147, ptr %23, align 8, !tbaa !327
  br label %154

152:                                              ; preds = %134
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %147, ptr %153, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %158

154:                                              ; preds = %151, %149
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %155 = add nuw nsw i64 %127, %106
  %156 = add nuw nsw i64 %155, %147
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %156, ptr %157, align 8, !tbaa !331
  br label %158

158:                                              ; preds = %154, %152, %132, %111
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #24 {
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = icmp ugt i32 %9, 5
  %11 = zext i1 %10 to i32
  %12 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 %11), !nosanitize !8
  %13 = extractvalue { i32, i1 } %12, 1, !nosanitize !8
  br i1 %13, label %14, label %15, !prof !9, !nosanitize !8

14:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = getelementptr i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !210
  %19 = ptrtoint ptr %4 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp ult i32 %22, -624951295
  br i1 %23, label %338, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !88
  %27 = shl nuw i32 1, %26
  %28 = extractvalue { i32, i1 } %12, 0, !nosanitize !8
  %29 = ptrtoint ptr %3 to i64
  %30 = sub i64 %29, %20
  %31 = trunc i64 %30 to i32
  %32 = shl nuw i32 1, %28
  %33 = add i32 %32, -1
  %34 = and i32 %33, %31
  %35 = icmp samesign ult i32 %34, 2
  %36 = tail call i32 @llvm.umax.i32(i32 %32, i32 2)
  %37 = select i1 %35, i32 %36, i32 0
  %38 = add nuw i32 %37, %34
  %39 = tail call i32 @llvm.umax.i32(i32 %27, i32 %32)
  %40 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %38, i32 %39), !nosanitize !8
  %41 = extractvalue { i32, i1 } %40, 1, !nosanitize !8
  br i1 %41, label %42, label %43, !prof !9, !nosanitize !8

42:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

43:                                               ; preds = %24
  %44 = extractvalue { i32, i1 } %40, 0, !nosanitize !8
  %45 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %31, i32 %44), !nosanitize !8
  %46 = extractvalue { i32, i1 } %45, 0, !nosanitize !8
  %47 = extractvalue { i32, i1 } %45, 1, !nosanitize !8
  br i1 %47, label %48, label %49, !prof !9, !nosanitize !8

48:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

49:                                               ; preds = %43
  %50 = zext i32 %46 to i64
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 %50
  store ptr %51, ptr %17, align 8, !tbaa !210
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load ptr, ptr %52, align 8, !tbaa !207
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %50
  store ptr %54, ptr %52, align 8, !tbaa !207
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %56 = load i32, ptr %55, align 4, !tbaa !208
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 2), !nosanitize !8
  %58 = extractvalue { i32, i1 } %57, 0, !nosanitize !8
  %59 = extractvalue { i32, i1 } %57, 1, !nosanitize !8
  br i1 %59, label %60, label %61, !prof !9, !nosanitize !8

60:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

61:                                               ; preds = %49
  %62 = icmp ult i32 %56, %58
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 %46), !nosanitize !8
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !8
  br i1 %65, label %66, label %67, !prof !9, !nosanitize !8

66:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

67:                                               ; preds = %63
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !8
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ 2, %61 ]
  store i32 %70, ptr %55, align 4, !tbaa !208
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %72 = load i32, ptr %71, align 8, !tbaa !209
  %73 = icmp ult i32 %72, %58
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %72, i32 %46), !nosanitize !8
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !8
  br i1 %76, label %77, label %78, !prof !9, !nosanitize !8

77:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

78:                                               ; preds = %74
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !8
  br label %80

80:                                               ; preds = %78, %69
  %81 = phi i32 [ %79, %78 ], [ 2, %69 ]
  store i32 %81, ptr %71, align 8, !tbaa !209
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %83 = load i32, ptr %82, align 8, !tbaa !334
  %84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 1), !nosanitize !8
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !8
  br i1 %85, label %86, label %87, !prof !9, !nosanitize !8

86:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

87:                                               ; preds = %80
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !8
  store i32 %88, ptr %82, align 8, !tbaa !334
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %90 = load ptr, ptr %89, align 8, !tbaa !54
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %90, ptr %91, align 8, !tbaa !56
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %93 = load i32, ptr %92, align 4, !tbaa !89
  %94 = shl nuw i32 1, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %96 = load ptr, ptr %95, align 8, !tbaa !272
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %96, i32 noundef %94, i32 noundef %46)
  %97 = load i32, ptr %8, align 4, !tbaa !94
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %99 = load i32, ptr %98, align 8, !tbaa !80
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %101 = load i32, ptr %100, align 4, !tbaa !335
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %87
  %104 = icmp eq i32 %97, 1
  br i1 %104, label %319, label %105

105:                                              ; preds = %103
  %106 = add i32 %97, -3
  %107 = icmp ult i32 %106, 3
  %108 = icmp eq i32 %99, 1
  %109 = and i1 %107, %108
  br i1 %109, label %319, label %110

110:                                              ; preds = %105, %87
  %111 = load i32, ptr %6, align 4, !tbaa !90
  %112 = shl nuw i32 1, %111
  %113 = icmp eq i32 %97, 6
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %115 = load ptr, ptr %114, align 8, !tbaa !273
  br i1 %113, label %116, label %318

116:                                              ; preds = %110
  %117 = sdiv i32 %112, 16
  %118 = icmp sgt i32 %112, 15
  br i1 %118, label %119, label %319

119:                                              ; preds = %314, %116
  %120 = phi i64 [ %122, %314 ], [ 0, %116 ]
  %121 = phi i32 [ %316, %314 ], [ 0, %116 ]
  %122 = add nuw nsw i64 %120, 16
  %123 = getelementptr inbounds nuw [4 x i8], ptr %115, i64 %120
  %124 = load i32, ptr %123, align 4, !tbaa !4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %134, label %126

126:                                              ; preds = %119
  %127 = icmp ult i32 %124, %58
  br i1 %127, label %134, label %128

128:                                              ; preds = %126
  %129 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %124, i32 %46), !nosanitize !8
  %130 = extractvalue { i32, i1 } %129, 1, !nosanitize !8
  br i1 %130, label %131, label %132, !prof !9, !nosanitize !8

131:                                              ; preds = %309, %297, %285, %273, %261, %249, %237, %225, %213, %201, %189, %177, %165, %153, %141, %128
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

132:                                              ; preds = %128
  %133 = extractvalue { i32, i1 } %129, 0, !nosanitize !8
  br label %134

134:                                              ; preds = %132, %126, %119
  %135 = phi i32 [ %133, %132 ], [ 1, %119 ], [ 0, %126 ]
  store i32 %135, ptr %123, align 4, !tbaa !4
  %136 = getelementptr inbounds nuw i8, ptr %123, i64 4
  %137 = load i32, ptr %136, align 4, !tbaa !4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %146, label %139

139:                                              ; preds = %134
  %140 = icmp ult i32 %137, %58
  br i1 %140, label %146, label %141

141:                                              ; preds = %139
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 %46), !nosanitize !8
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !8
  br i1 %143, label %131, label %144, !prof !9, !nosanitize !8

144:                                              ; preds = %141
  %145 = extractvalue { i32, i1 } %142, 0, !nosanitize !8
  br label %146

146:                                              ; preds = %144, %139, %134
  %147 = phi i32 [ %145, %144 ], [ 1, %134 ], [ 0, %139 ]
  store i32 %147, ptr %136, align 4, !tbaa !4
  %148 = getelementptr inbounds nuw i8, ptr %123, i64 8
  %149 = load i32, ptr %148, align 4, !tbaa !4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = icmp ult i32 %149, %58
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  %154 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %46), !nosanitize !8
  %155 = extractvalue { i32, i1 } %154, 1, !nosanitize !8
  br i1 %155, label %131, label %156, !prof !9, !nosanitize !8

156:                                              ; preds = %153
  %157 = extractvalue { i32, i1 } %154, 0, !nosanitize !8
  br label %158

158:                                              ; preds = %156, %151, %146
  %159 = phi i32 [ %157, %156 ], [ 1, %146 ], [ 0, %151 ]
  store i32 %159, ptr %148, align 4, !tbaa !4
  %160 = getelementptr inbounds nuw i8, ptr %123, i64 12
  %161 = load i32, ptr %160, align 4, !tbaa !4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = icmp ult i32 %161, %58
  br i1 %164, label %170, label %165

165:                                              ; preds = %163
  %166 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %161, i32 %46), !nosanitize !8
  %167 = extractvalue { i32, i1 } %166, 1, !nosanitize !8
  br i1 %167, label %131, label %168, !prof !9, !nosanitize !8

168:                                              ; preds = %165
  %169 = extractvalue { i32, i1 } %166, 0, !nosanitize !8
  br label %170

170:                                              ; preds = %168, %163, %158
  %171 = phi i32 [ %169, %168 ], [ 1, %158 ], [ 0, %163 ]
  store i32 %171, ptr %160, align 4, !tbaa !4
  %172 = getelementptr inbounds nuw i8, ptr %123, i64 16
  %173 = load i32, ptr %172, align 4, !tbaa !4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = icmp ult i32 %173, %58
  br i1 %176, label %182, label %177

177:                                              ; preds = %175
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %173, i32 %46), !nosanitize !8
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !8
  br i1 %179, label %131, label %180, !prof !9, !nosanitize !8

180:                                              ; preds = %177
  %181 = extractvalue { i32, i1 } %178, 0, !nosanitize !8
  br label %182

182:                                              ; preds = %180, %175, %170
  %183 = phi i32 [ %181, %180 ], [ 1, %170 ], [ 0, %175 ]
  store i32 %183, ptr %172, align 4, !tbaa !4
  %184 = getelementptr inbounds nuw i8, ptr %123, i64 20
  %185 = load i32, ptr %184, align 4, !tbaa !4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %194, label %187

187:                                              ; preds = %182
  %188 = icmp ult i32 %185, %58
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %185, i32 %46), !nosanitize !8
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !8
  br i1 %191, label %131, label %192, !prof !9, !nosanitize !8

192:                                              ; preds = %189
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !8
  br label %194

194:                                              ; preds = %192, %187, %182
  %195 = phi i32 [ %193, %192 ], [ 1, %182 ], [ 0, %187 ]
  store i32 %195, ptr %184, align 4, !tbaa !4
  %196 = getelementptr inbounds nuw i8, ptr %123, i64 24
  %197 = load i32, ptr %196, align 4, !tbaa !4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %206, label %199

199:                                              ; preds = %194
  %200 = icmp ult i32 %197, %58
  br i1 %200, label %206, label %201

201:                                              ; preds = %199
  %202 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %197, i32 %46), !nosanitize !8
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !8
  br i1 %203, label %131, label %204, !prof !9, !nosanitize !8

204:                                              ; preds = %201
  %205 = extractvalue { i32, i1 } %202, 0, !nosanitize !8
  br label %206

206:                                              ; preds = %204, %199, %194
  %207 = phi i32 [ %205, %204 ], [ 1, %194 ], [ 0, %199 ]
  store i32 %207, ptr %196, align 4, !tbaa !4
  %208 = getelementptr inbounds nuw i8, ptr %123, i64 28
  %209 = load i32, ptr %208, align 4, !tbaa !4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %218, label %211

211:                                              ; preds = %206
  %212 = icmp ult i32 %209, %58
  br i1 %212, label %218, label %213

213:                                              ; preds = %211
  %214 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %46), !nosanitize !8
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !8
  br i1 %215, label %131, label %216, !prof !9, !nosanitize !8

216:                                              ; preds = %213
  %217 = extractvalue { i32, i1 } %214, 0, !nosanitize !8
  br label %218

218:                                              ; preds = %216, %211, %206
  %219 = phi i32 [ %217, %216 ], [ 1, %206 ], [ 0, %211 ]
  store i32 %219, ptr %208, align 4, !tbaa !4
  %220 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %221 = load i32, ptr %220, align 4, !tbaa !4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %230, label %223

223:                                              ; preds = %218
  %224 = icmp ult i32 %221, %58
  br i1 %224, label %230, label %225

225:                                              ; preds = %223
  %226 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %221, i32 %46), !nosanitize !8
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !8
  br i1 %227, label %131, label %228, !prof !9, !nosanitize !8

228:                                              ; preds = %225
  %229 = extractvalue { i32, i1 } %226, 0, !nosanitize !8
  br label %230

230:                                              ; preds = %228, %223, %218
  %231 = phi i32 [ %229, %228 ], [ 1, %218 ], [ 0, %223 ]
  store i32 %231, ptr %220, align 4, !tbaa !4
  %232 = getelementptr inbounds nuw i8, ptr %123, i64 36
  %233 = load i32, ptr %232, align 4, !tbaa !4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %242, label %235

235:                                              ; preds = %230
  %236 = icmp ult i32 %233, %58
  br i1 %236, label %242, label %237

237:                                              ; preds = %235
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %46), !nosanitize !8
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !8
  br i1 %239, label %131, label %240, !prof !9, !nosanitize !8

240:                                              ; preds = %237
  %241 = extractvalue { i32, i1 } %238, 0, !nosanitize !8
  br label %242

242:                                              ; preds = %240, %235, %230
  %243 = phi i32 [ %241, %240 ], [ 1, %230 ], [ 0, %235 ]
  store i32 %243, ptr %232, align 4, !tbaa !4
  %244 = getelementptr inbounds nuw i8, ptr %123, i64 40
  %245 = load i32, ptr %244, align 4, !tbaa !4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %254, label %247

247:                                              ; preds = %242
  %248 = icmp ult i32 %245, %58
  br i1 %248, label %254, label %249

249:                                              ; preds = %247
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %245, i32 %46), !nosanitize !8
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !8
  br i1 %251, label %131, label %252, !prof !9, !nosanitize !8

252:                                              ; preds = %249
  %253 = extractvalue { i32, i1 } %250, 0, !nosanitize !8
  br label %254

254:                                              ; preds = %252, %247, %242
  %255 = phi i32 [ %253, %252 ], [ 1, %242 ], [ 0, %247 ]
  store i32 %255, ptr %244, align 4, !tbaa !4
  %256 = getelementptr inbounds nuw i8, ptr %123, i64 44
  %257 = load i32, ptr %256, align 4, !tbaa !4
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %266, label %259

259:                                              ; preds = %254
  %260 = icmp ult i32 %257, %58
  br i1 %260, label %266, label %261

261:                                              ; preds = %259
  %262 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %257, i32 %46), !nosanitize !8
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !8
  br i1 %263, label %131, label %264, !prof !9, !nosanitize !8

264:                                              ; preds = %261
  %265 = extractvalue { i32, i1 } %262, 0, !nosanitize !8
  br label %266

266:                                              ; preds = %264, %259, %254
  %267 = phi i32 [ %265, %264 ], [ 1, %254 ], [ 0, %259 ]
  store i32 %267, ptr %256, align 4, !tbaa !4
  %268 = getelementptr inbounds nuw i8, ptr %123, i64 48
  %269 = load i32, ptr %268, align 4, !tbaa !4
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %278, label %271

271:                                              ; preds = %266
  %272 = icmp ult i32 %269, %58
  br i1 %272, label %278, label %273

273:                                              ; preds = %271
  %274 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %269, i32 %46), !nosanitize !8
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !8
  br i1 %275, label %131, label %276, !prof !9, !nosanitize !8

276:                                              ; preds = %273
  %277 = extractvalue { i32, i1 } %274, 0, !nosanitize !8
  br label %278

278:                                              ; preds = %276, %271, %266
  %279 = phi i32 [ %277, %276 ], [ 1, %266 ], [ 0, %271 ]
  store i32 %279, ptr %268, align 4, !tbaa !4
  %280 = getelementptr inbounds nuw i8, ptr %123, i64 52
  %281 = load i32, ptr %280, align 4, !tbaa !4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %290, label %283

283:                                              ; preds = %278
  %284 = icmp ult i32 %281, %58
  br i1 %284, label %290, label %285

285:                                              ; preds = %283
  %286 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %281, i32 %46), !nosanitize !8
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !8
  br i1 %287, label %131, label %288, !prof !9, !nosanitize !8

288:                                              ; preds = %285
  %289 = extractvalue { i32, i1 } %286, 0, !nosanitize !8
  br label %290

290:                                              ; preds = %288, %283, %278
  %291 = phi i32 [ %289, %288 ], [ 1, %278 ], [ 0, %283 ]
  store i32 %291, ptr %280, align 4, !tbaa !4
  %292 = getelementptr inbounds nuw i8, ptr %123, i64 56
  %293 = load i32, ptr %292, align 4, !tbaa !4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %302, label %295

295:                                              ; preds = %290
  %296 = icmp ult i32 %293, %58
  br i1 %296, label %302, label %297

297:                                              ; preds = %295
  %298 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %293, i32 %46), !nosanitize !8
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !8
  br i1 %299, label %131, label %300, !prof !9, !nosanitize !8

300:                                              ; preds = %297
  %301 = extractvalue { i32, i1 } %298, 0, !nosanitize !8
  br label %302

302:                                              ; preds = %300, %295, %290
  %303 = phi i32 [ %301, %300 ], [ 1, %290 ], [ 0, %295 ]
  store i32 %303, ptr %292, align 4, !tbaa !4
  %304 = getelementptr inbounds nuw i8, ptr %123, i64 60
  %305 = load i32, ptr %304, align 4, !tbaa !4
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %314, label %307

307:                                              ; preds = %302
  %308 = icmp ult i32 %305, %58
  br i1 %308, label %314, label %309

309:                                              ; preds = %307
  %310 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %305, i32 %46), !nosanitize !8
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !8
  br i1 %311, label %131, label %312, !prof !9, !nosanitize !8

312:                                              ; preds = %309
  %313 = extractvalue { i32, i1 } %310, 0, !nosanitize !8
  br label %314

314:                                              ; preds = %312, %307, %302
  %315 = phi i32 [ %313, %312 ], [ 1, %302 ], [ 0, %307 ]
  store i32 %315, ptr %304, align 4, !tbaa !4
  %316 = add nuw nsw i32 %121, 1
  %317 = icmp eq i32 %316, %117
  br i1 %317, label %319, label %119, !llvm.loop !336

318:                                              ; preds = %110
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %115, i32 noundef %112, i32 noundef %46)
  br label %319

319:                                              ; preds = %318, %314, %116, %105, %103
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %321 = load i32, ptr %320, align 8, !tbaa !265
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %319
  %324 = shl nuw i32 1, %321
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %326 = load ptr, ptr %325, align 8, !tbaa !274
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %326, i32 noundef %324, i32 noundef %46)
  br label %327

327:                                              ; preds = %323, %319
  %328 = load ptr, ptr %91, align 8, !tbaa !56
  %329 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %330 = load ptr, ptr %329, align 8, !tbaa !55
  %331 = icmp ult ptr %328, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  store ptr %330, ptr %91, align 8, !tbaa !56
  br label %333

333:                                              ; preds = %332, %327
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %335 = load i32, ptr %334, align 4, !tbaa !211
  %336 = tail call i32 @llvm.usub.sat.i32(i32 %335, i32 %46)
  store i32 %336, ptr %334, align 4, !tbaa !211
  store i32 0, ptr %16, align 8, !tbaa !267
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %337, align 8, !tbaa !269
  br label %338

338:                                              ; preds = %333, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
  %7 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %94

9:                                                ; preds = %6
  %10 = icmp eq i64 %7, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %12 = load i32, ptr %11, align 8, !tbaa !221
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %14, label %15

14:                                               ; preds = %9
  br i1 %13, label %86, label %94

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  br i1 %13, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 5616
  %21 = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %20)
  %22 = icmp ult i64 %21, -119
  br i1 %22, label %23, label %94

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %17, align 8, !tbaa !51
  %25 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %25, ptr %17, align 8, !tbaa !51
  br label %94

26:                                               ; preds = %15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %33 = load i64, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %37 = load ptr, ptr %36, align 8, !tbaa !169
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %39 = load ptr, ptr %38, align 8, !tbaa !170
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %1, i64 noundef %2, ptr noundef %37, i64 noundef %42, ptr noundef nonnull readonly %16, ptr noundef %18, ptr noundef %28, ptr noundef nonnull readonly %29, ptr noundef %31, i64 noundef %33, i32 noundef %35)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %26
  %46 = icmp eq i64 %43, -70
  %47 = icmp ule i64 %4, %2
  %48 = and i1 %47, %46
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = icmp ult i64 %43, -119
  br i1 %50, label %51, label %66

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %53 = load i32, ptr %52, align 4, !tbaa !94
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 7)
  %55 = add i32 %54, -1
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 %4, %56
  %58 = add nuw nsw i64 %57, 2
  %59 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 %58), !nosanitize !8
  %60 = extractvalue { i64, i1 } %59, 1, !nosanitize !8
  br i1 %60, label %61, label %62, !prof !9, !nosanitize !8

61:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

62:                                               ; preds = %51
  %63 = extractvalue { i64, i1 } %59, 0, !nosanitize !8
  %64 = icmp ult i64 %43, %63
  %65 = select i1 %64, i64 %43, i64 0
  br label %66

66:                                               ; preds = %62, %49, %45, %26
  %67 = phi i64 [ %43, %49 ], [ 0, %26 ], [ 0, %45 ], [ %65, %62 ]
  %68 = icmp eq i32 %5, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %71 = load i32, ptr %70, align 8, !tbaa !220
  %72 = icmp eq i32 %71, 0
  %73 = icmp ult i64 %67, 25
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i8, ptr %3, align 1, !tbaa !164
  store i8 %79, ptr %1, align 1, !tbaa !164
  br label %86

80:                                               ; preds = %75, %69, %66
  %81 = add i64 %67, -2
  %82 = icmp ult i64 %81, -121
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load <2 x ptr>, ptr %17, align 8, !tbaa !51
  %85 = shufflevector <2 x ptr> %84, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %85, ptr %17, align 8, !tbaa !51
  br label %86

86:                                               ; preds = %83, %80, %78, %14
  %87 = phi i64 [ %67, %80 ], [ %67, %83 ], [ 0, %14 ], [ 1, %78 ]
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 5604
  %91 = load i32, ptr %90, align 4, !tbaa !151
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, ptr %90, align 4, !tbaa !151
  br label %94

94:                                               ; preds = %93, %86, %23, %19, %14, %6
  %95 = phi i64 [ %87, %86 ], [ 0, %23 ], [ %21, %19 ], [ %87, %93 ], [ %7, %6 ], [ -106, %14 ]
  ret i64 %95
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
  %4 = sdiv i32 %1, 16
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 2), !nosanitize !8
  %6 = extractvalue { i32, i1 } %5, 0, !nosanitize !8
  %7 = extractvalue { i32, i1 } %5, 1, !nosanitize !8
  br i1 %7, label %10, label %8, !prof !9, !nosanitize !8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %1, 15
  br i1 %9, label %11, label %194

10:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

11:                                               ; preds = %190, %8
  %12 = phi i32 [ %15, %190 ], [ 0, %8 ]
  %13 = phi i32 [ %192, %190 ], [ 0, %8 ]
  %14 = zext nneg i32 %12 to i64
  %15 = add nuw nsw i32 %12, 16
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !4
  %18 = icmp ult i32 %17, %6
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %2), !nosanitize !8
  %21 = extractvalue { i32, i1 } %20, 1, !nosanitize !8
  br i1 %21, label %22, label %23, !prof !9, !nosanitize !8

22:                                               ; preds = %185, %174, %163, %152, %141, %130, %119, %108, %97, %86, %75, %64, %53, %42, %31, %19
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

23:                                               ; preds = %19
  %24 = extractvalue { i32, i1 } %20, 0, !nosanitize !8
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i32 [ %24, %23 ], [ 0, %11 ]
  store i32 %26, ptr %16, align 4, !tbaa !4
  %27 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i32, ptr %28, align 4, !tbaa !4
  %30 = icmp ult i32 %29, %6
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %2), !nosanitize !8
  %33 = extractvalue { i32, i1 } %32, 1, !nosanitize !8
  br i1 %33, label %22, label %34, !prof !9, !nosanitize !8

34:                                               ; preds = %31
  %35 = extractvalue { i32, i1 } %32, 0, !nosanitize !8
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i32 [ %35, %34 ], [ 0, %25 ]
  store i32 %37, ptr %28, align 4, !tbaa !4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !4
  %41 = icmp ult i32 %40, %6
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %40, i32 %2), !nosanitize !8
  %44 = extractvalue { i32, i1 } %43, 1, !nosanitize !8
  br i1 %44, label %22, label %45, !prof !9, !nosanitize !8

45:                                               ; preds = %42
  %46 = extractvalue { i32, i1 } %43, 0, !nosanitize !8
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi i32 [ %46, %45 ], [ 0, %36 ]
  store i32 %48, ptr %39, align 4, !tbaa !4
  %49 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %51 = load i32, ptr %50, align 4, !tbaa !4
  %52 = icmp ult i32 %51, %6
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 %2), !nosanitize !8
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !8
  br i1 %55, label %22, label %56, !prof !9, !nosanitize !8

56:                                               ; preds = %53
  %57 = extractvalue { i32, i1 } %54, 0, !nosanitize !8
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ %57, %56 ], [ 0, %47 ]
  store i32 %59, ptr %50, align 4, !tbaa !4
  %60 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %62 = load i32, ptr %61, align 4, !tbaa !4
  %63 = icmp ult i32 %62, %6
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 %2), !nosanitize !8
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !8
  br i1 %66, label %22, label %67, !prof !9, !nosanitize !8

67:                                               ; preds = %64
  %68 = extractvalue { i32, i1 } %65, 0, !nosanitize !8
  br label %69

69:                                               ; preds = %67, %58
  %70 = phi i32 [ %68, %67 ], [ 0, %58 ]
  store i32 %70, ptr %61, align 4, !tbaa !4
  %71 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 20
  %73 = load i32, ptr %72, align 4, !tbaa !4
  %74 = icmp ult i32 %73, %6
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %2), !nosanitize !8
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !8
  br i1 %77, label %22, label %78, !prof !9, !nosanitize !8

78:                                               ; preds = %75
  %79 = extractvalue { i32, i1 } %76, 0, !nosanitize !8
  br label %80

80:                                               ; preds = %78, %69
  %81 = phi i32 [ %79, %78 ], [ 0, %69 ]
  store i32 %81, ptr %72, align 4, !tbaa !4
  %82 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 24
  %84 = load i32, ptr %83, align 4, !tbaa !4
  %85 = icmp ult i32 %84, %6
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %84, i32 %2), !nosanitize !8
  %88 = extractvalue { i32, i1 } %87, 1, !nosanitize !8
  br i1 %88, label %22, label %89, !prof !9, !nosanitize !8

89:                                               ; preds = %86
  %90 = extractvalue { i32, i1 } %87, 0, !nosanitize !8
  br label %91

91:                                               ; preds = %89, %80
  %92 = phi i32 [ %90, %89 ], [ 0, %80 ]
  store i32 %92, ptr %83, align 4, !tbaa !4
  %93 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 28
  %95 = load i32, ptr %94, align 4, !tbaa !4
  %96 = icmp ult i32 %95, %6
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %2), !nosanitize !8
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !8
  br i1 %99, label %22, label %100, !prof !9, !nosanitize !8

100:                                              ; preds = %97
  %101 = extractvalue { i32, i1 } %98, 0, !nosanitize !8
  br label %102

102:                                              ; preds = %100, %91
  %103 = phi i32 [ %101, %100 ], [ 0, %91 ]
  store i32 %103, ptr %94, align 4, !tbaa !4
  %104 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %106 = load i32, ptr %105, align 4, !tbaa !4
  %107 = icmp ult i32 %106, %6
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %106, i32 %2), !nosanitize !8
  %110 = extractvalue { i32, i1 } %109, 1, !nosanitize !8
  br i1 %110, label %22, label %111, !prof !9, !nosanitize !8

111:                                              ; preds = %108
  %112 = extractvalue { i32, i1 } %109, 0, !nosanitize !8
  br label %113

113:                                              ; preds = %111, %102
  %114 = phi i32 [ %112, %111 ], [ 0, %102 ]
  store i32 %114, ptr %105, align 4, !tbaa !4
  %115 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 36
  %117 = load i32, ptr %116, align 4, !tbaa !4
  %118 = icmp ult i32 %117, %6
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %117, i32 %2), !nosanitize !8
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !8
  br i1 %121, label %22, label %122, !prof !9, !nosanitize !8

122:                                              ; preds = %119
  %123 = extractvalue { i32, i1 } %120, 0, !nosanitize !8
  br label %124

124:                                              ; preds = %122, %113
  %125 = phi i32 [ %123, %122 ], [ 0, %113 ]
  store i32 %125, ptr %116, align 4, !tbaa !4
  %126 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 40
  %128 = load i32, ptr %127, align 4, !tbaa !4
  %129 = icmp ult i32 %128, %6
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %128, i32 %2), !nosanitize !8
  %132 = extractvalue { i32, i1 } %131, 1, !nosanitize !8
  br i1 %132, label %22, label %133, !prof !9, !nosanitize !8

133:                                              ; preds = %130
  %134 = extractvalue { i32, i1 } %131, 0, !nosanitize !8
  br label %135

135:                                              ; preds = %133, %124
  %136 = phi i32 [ %134, %133 ], [ 0, %124 ]
  store i32 %136, ptr %127, align 4, !tbaa !4
  %137 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 44
  %139 = load i32, ptr %138, align 4, !tbaa !4
  %140 = icmp ult i32 %139, %6
  br i1 %140, label %146, label %141

141:                                              ; preds = %135
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %2), !nosanitize !8
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !8
  br i1 %143, label %22, label %144, !prof !9, !nosanitize !8

144:                                              ; preds = %141
  %145 = extractvalue { i32, i1 } %142, 0, !nosanitize !8
  br label %146

146:                                              ; preds = %144, %135
  %147 = phi i32 [ %145, %144 ], [ 0, %135 ]
  store i32 %147, ptr %138, align 4, !tbaa !4
  %148 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 48
  %150 = load i32, ptr %149, align 4, !tbaa !4
  %151 = icmp ult i32 %150, %6
  br i1 %151, label %157, label %152

152:                                              ; preds = %146
  %153 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %2), !nosanitize !8
  %154 = extractvalue { i32, i1 } %153, 1, !nosanitize !8
  br i1 %154, label %22, label %155, !prof !9, !nosanitize !8

155:                                              ; preds = %152
  %156 = extractvalue { i32, i1 } %153, 0, !nosanitize !8
  br label %157

157:                                              ; preds = %155, %146
  %158 = phi i32 [ %156, %155 ], [ 0, %146 ]
  store i32 %158, ptr %149, align 4, !tbaa !4
  %159 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 52
  %161 = load i32, ptr %160, align 4, !tbaa !4
  %162 = icmp ult i32 %161, %6
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %161, i32 %2), !nosanitize !8
  %165 = extractvalue { i32, i1 } %164, 1, !nosanitize !8
  br i1 %165, label %22, label %166, !prof !9, !nosanitize !8

166:                                              ; preds = %163
  %167 = extractvalue { i32, i1 } %164, 0, !nosanitize !8
  br label %168

168:                                              ; preds = %166, %157
  %169 = phi i32 [ %167, %166 ], [ 0, %157 ]
  store i32 %169, ptr %160, align 4, !tbaa !4
  %170 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 56
  %172 = load i32, ptr %171, align 4, !tbaa !4
  %173 = icmp ult i32 %172, %6
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %172, i32 %2), !nosanitize !8
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !8
  br i1 %176, label %22, label %177, !prof !9, !nosanitize !8

177:                                              ; preds = %174
  %178 = extractvalue { i32, i1 } %175, 0, !nosanitize !8
  br label %179

179:                                              ; preds = %177, %168
  %180 = phi i32 [ %178, %177 ], [ 0, %168 ]
  store i32 %180, ptr %171, align 4, !tbaa !4
  %181 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 60
  %183 = load i32, ptr %182, align 4, !tbaa !4
  %184 = icmp ult i32 %183, %6
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %183, i32 %2), !nosanitize !8
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !8
  br i1 %187, label %22, label %188, !prof !9, !nosanitize !8

188:                                              ; preds = %185
  %189 = extractvalue { i32, i1 } %186, 0, !nosanitize !8
  br label %190

190:                                              ; preds = %188, %179
  %191 = phi i32 [ %189, %188 ], [ 0, %179 ]
  store i32 %191, ptr %182, align 4, !tbaa !4
  %192 = add nuw nsw i32 %13, 1
  %193 = icmp eq i32 %192, %4
  br i1 %193, label %194, label %11, !llvm.loop !336

194:                                              ; preds = %190, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 {
  %4 = alloca %struct.RawSeqStore_t, align 8
  %5 = alloca %struct.ZSTD_SequencePosition, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %8 = icmp ult i64 %2, 7
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %11 = load i32, ptr %10, align 4, !tbaa !217
  %12 = icmp ugt i32 %11, 6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %13, i64 noundef %2) #35
  br label %264

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %17 = load i32, ptr %16, align 4, !tbaa !337
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %13, i64 noundef %2, i32 noundef %17) #35
  br label %264

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %22 = load ptr, ptr %21, align 8, !tbaa !169
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %22, ptr %23, align 8, !tbaa !170
  %24 = load ptr, ptr %20, align 8, !tbaa !154
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %24, ptr %25, align 8, !tbaa !158
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %26, align 8, !tbaa !167
  %27 = load ptr, ptr %19, align 8, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store ptr %27, ptr %28, align 8, !tbaa !338
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %30 = load i32, ptr %29, align 8, !tbaa !339
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %30, ptr %31, align 8, !tbaa !340
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %33 = load ptr, ptr %32, align 8, !tbaa !341
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %39 = load i32, ptr %38, align 4, !tbaa !211
  %40 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 384), !nosanitize !8
  %41 = extractvalue { i32, i1 } %40, 1, !nosanitize !8
  br i1 %41, label %42, label %43, !prof !9, !nosanitize !8

42:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

43:                                               ; preds = %18
  %44 = extractvalue { i32, i1 } %40, 0, !nosanitize !8
  %45 = icmp ult i32 %44, %37
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %39), !nosanitize !8
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !8
  br i1 %48, label %49, label %50, !prof !9, !nosanitize !8

49:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

50:                                               ; preds = %46
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !8
  %52 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 384), !nosanitize !8
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !8
  br i1 %53, label %54, label %55, !prof !9, !nosanitize !8

54:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

55:                                               ; preds = %50
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !8
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 192)
  %58 = sub nuw i32 %37, %57
  store i32 %58, ptr %38, align 4, !tbaa !211
  br label %59

59:                                               ; preds = %55, %43
  %60 = getelementptr i8, ptr %0, i64 3264
  %61 = load i32, ptr %60, align 8, !tbaa !209
  %62 = getelementptr i8, ptr %0, i64 3268
  %63 = load i32, ptr %62, align 4, !tbaa !208
  %64 = icmp ult i32 %63, %61
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %67 = load ptr, ptr %66, align 8, !tbaa !269
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 140
  %71 = load i32, ptr %70, align 4, !tbaa !335
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i64 2, i64 3
  br label %74

74:                                               ; preds = %69, %65, %59
  %75 = phi i64 [ 1, %59 ], [ %73, %69 ], [ 0, %65 ]
  %76 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 5616
  %80 = load i32, ptr %76, align 4, !tbaa !4
  store i32 %80, ptr %79, align 4, !tbaa !4
  %81 = getelementptr inbounds nuw i8, ptr %27, i64 5620
  %82 = load i32, ptr %81, align 4, !tbaa !4
  %83 = getelementptr inbounds nuw i8, ptr %78, i64 5620
  store i32 %82, ptr %83, align 4, !tbaa !4
  %84 = getelementptr inbounds nuw i8, ptr %27, i64 5624
  %85 = load i32, ptr %84, align 4, !tbaa !4
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 5624
  store i32 %85, ptr %86, align 4, !tbaa !4
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %89 = load i64, ptr %88, align 8, !tbaa !342
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %91 = load i64, ptr %90, align 8, !tbaa !201
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %74
  %94 = getelementptr i8, ptr %0, i64 448
  %95 = load ptr, ptr %94, align 8, !tbaa !320
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %264

97:                                               ; preds = %93
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %99 = load i32, ptr %98, align 8, !tbaa !343
  %100 = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %87, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %79, i32 noundef %99, ptr noundef %1, i64 noundef %2) #35
  br label %256

101:                                              ; preds = %74
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %103 = load i32, ptr %102, align 8, !tbaa !212
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %106 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %106, i8 0, i64 24, i1 false)
  %107 = getelementptr i8, ptr %0, i64 448
  %108 = load ptr, ptr %107, align 8, !tbaa !320
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %112 = load ptr, ptr %111, align 8, !tbaa !344
  store ptr %112, ptr %4, align 8, !tbaa !345
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %114 = load i64, ptr %113, align 8, !tbaa !346
  %115 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %114, ptr %115, align 8, !tbaa !347
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %117 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %116, ptr noundef nonnull %4, ptr noundef nonnull %102, ptr noundef %1, i64 noundef %2) #35
  %118 = icmp ult i64 %117, -119
  br i1 %118, label %121, label %119

119:                                              ; preds = %110, %105
  %120 = phi i64 [ -41, %105 ], [ %117, %110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %264

121:                                              ; preds = %110
  %122 = load ptr, ptr %77, align 8, !tbaa !58
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 5616
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %125 = load i32, ptr %124, align 8, !tbaa !343
  %126 = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %123, i32 noundef %125, ptr noundef %1, i64 noundef %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %256

127:                                              ; preds = %101
  %128 = getelementptr i8, ptr %0, i64 448
  %129 = load ptr, ptr %128, align 8, !tbaa !320
  %130 = icmp eq ptr %129, null
  br i1 %130, label %236, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %7, align 4, !tbaa !214
  %133 = shl nuw i32 1, %132
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %135 = load ptr, ptr %134, align 8, !tbaa !348
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  %137 = load ptr, ptr %136, align 8, !tbaa !349
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  %139 = load i64, ptr %138, align 8, !tbaa !350
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %141 = load i32, ptr %140, align 4, !tbaa !351
  %142 = zext i32 %133 to i64
  %143 = tail call i64 %129(ptr noundef %135, ptr noundef %137, i64 noundef %139, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %141, i64 noundef %142) #35
  %144 = load i64, ptr %138, align 8, !tbaa !350
  %145 = add i64 %143, -1
  %146 = icmp ult i64 %145, %144
  br i1 %146, label %147, label %209

147:                                              ; preds = %131
  %148 = load ptr, ptr %136, align 8, !tbaa !349
  %149 = getelementptr [16 x i8], ptr %148, i64 %143
  %150 = getelementptr i8, ptr %149, i64 -16
  %151 = load i32, ptr %150, align 4, !tbaa !4
  %152 = getelementptr i8, ptr %149, i64 -8
  %153 = load i32, ptr %152, align 4, !tbaa !4
  %154 = icmp eq i32 %151, 0
  %155 = icmp eq i32 %153, 0
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %165, label %157

157:                                              ; preds = %147
  %158 = icmp eq i64 %143, %144
  br i1 %158, label %209, label %159

159:                                              ; preds = %157
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %149, i8 0, i64 16, i1 false)
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 1), !nosanitize !8
  %161 = extractvalue { i64, i1 } %160, 1, !nosanitize !8
  br i1 %161, label %162, label %163, !prof !9, !nosanitize !8

162:                                              ; preds = %159
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

163:                                              ; preds = %159
  %164 = extractvalue { i64, i1 } %160, 0, !nosanitize !8
  br label %165

165:                                              ; preds = %163, %147
  %166 = phi i64 [ %164, %163 ], [ %143, %147 ]
  %167 = icmp ult i64 %166, -119
  br i1 %167, label %168, label %209

168:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %169 = load ptr, ptr %136, align 8, !tbaa !349
  br label %175

170:                                              ; preds = %186
  %171 = add nuw i64 %176, 1
  %172 = extractvalue { i64, i1 } %183, 0, !nosanitize !8
  %173 = extractvalue { i64, i1 } %190, 0, !nosanitize !8
  %174 = icmp eq i64 %171, %166
  br i1 %174, label %193, label %175, !llvm.loop !352

175:                                              ; preds = %170, %168
  %176 = phi i64 [ %171, %170 ], [ 0, %168 ]
  %177 = phi i64 [ %172, %170 ], [ 0, %168 ]
  %178 = phi i64 [ %173, %170 ], [ 0, %168 ]
  %179 = getelementptr inbounds nuw [16 x i8], ptr %169, i64 %176
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 4
  %181 = load i32, ptr %180, align 4, !tbaa !184
  %182 = zext i32 %181 to i64
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %177, i64 %182), !nosanitize !8
  %184 = extractvalue { i64, i1 } %183, 1, !nosanitize !8
  br i1 %184, label %185, label %186, !prof !9, !nosanitize !8

185:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

186:                                              ; preds = %175
  %187 = getelementptr inbounds nuw i8, ptr %179, i64 8
  %188 = load i32, ptr %187, align 4, !tbaa !183
  %189 = zext i32 %188 to i64
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 %189), !nosanitize !8
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !8
  br i1 %191, label %192, label %170, !prof !9, !nosanitize !8

192:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

193:                                              ; preds = %170
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %173)
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !8
  br i1 %195, label %196, label %197, !prof !9, !nosanitize !8

196:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

197:                                              ; preds = %193
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !8
  %199 = icmp ugt i64 %198, %2
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %202 = load i32, ptr %201, align 8, !tbaa !353
  %203 = call fastcc i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %169, i64 noundef %166, ptr noundef %1, i64 noundef %2, i32 noundef %202)
  %204 = icmp ult i64 %203, -119
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %206, align 8, !tbaa !354
  br label %207

207:                                              ; preds = %205, %200, %197
  %208 = phi i64 [ %203, %200 ], [ 0, %205 ], [ -107, %197 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %264

209:                                              ; preds = %165, %157, %131
  %210 = phi i64 [ %166, %165 ], [ -106, %157 ], [ -106, %131 ]
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 436
  %212 = load i32, ptr %211, align 4, !tbaa !355
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %264, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %216 = load i32, ptr %215, align 4, !tbaa !217
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %218 = load i32, ptr %217, align 8, !tbaa !343
  %219 = add i32 %216, -6
  %220 = icmp ult i32 %219, -3
  %221 = icmp ne i32 %218, 1
  %222 = or i1 %220, %221
  %223 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %75
  %224 = zext nneg i32 %216 to i64
  %225 = getelementptr [8 x i8], ptr %223, i64 %224
  %226 = getelementptr i8, ptr %225, i64 -24
  %227 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %75
  %228 = sext i32 %216 to i64
  %229 = getelementptr inbounds [8 x i8], ptr %227, i64 %228
  %230 = select i1 %222, ptr %229, ptr %226
  %231 = load ptr, ptr %230, align 8, !tbaa !51
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %232, align 8, !tbaa !354
  %233 = load ptr, ptr %77, align 8, !tbaa !58
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 5616
  %235 = tail call i64 %231(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %234, ptr noundef %1, i64 noundef %2) #35
  br label %256

236:                                              ; preds = %127
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %238 = load i32, ptr %237, align 4, !tbaa !217
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %240 = load i32, ptr %239, align 8, !tbaa !343
  %241 = add i32 %238, -6
  %242 = icmp ult i32 %241, -3
  %243 = icmp ne i32 %240, 1
  %244 = or i1 %242, %243
  %245 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %75
  %246 = zext nneg i32 %238 to i64
  %247 = getelementptr [8 x i8], ptr %245, i64 %246
  %248 = getelementptr i8, ptr %247, i64 -24
  %249 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %75
  %250 = sext i32 %238 to i64
  %251 = getelementptr inbounds [8 x i8], ptr %249, i64 %250
  %252 = select i1 %244, ptr %251, ptr %248
  %253 = load ptr, ptr %252, align 8, !tbaa !51
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %254, align 8, !tbaa !354
  %255 = tail call i64 %253(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %79, ptr noundef %1, i64 noundef %2) #35
  br label %256

256:                                              ; preds = %236, %214, %121, %97
  %257 = phi i64 [ %100, %97 ], [ %126, %121 ], [ %235, %214 ], [ %255, %236 ]
  %258 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %259 = sub i64 0, %257
  %260 = getelementptr inbounds i8, ptr %258, i64 %259
  %261 = load ptr, ptr %23, align 8, !tbaa !170
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %261, ptr nonnull readonly align 1 %260, i64 %257, i1 false)
  %262 = load ptr, ptr %23, align 8, !tbaa !170
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %257
  store ptr %263, ptr %23, align 8, !tbaa !170
  br label %264

264:                                              ; preds = %256, %209, %207, %119, %93, %15, %14
  %265 = phi i64 [ 1, %14 ], [ 0, %256 ], [ 1, %15 ], [ -41, %93 ], [ %120, %119 ], [ %210, %209 ], [ %208, %207 ]
  ret i64 %265
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #16

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #29 {
  %8 = alloca %struct.repcodes_s, align 8
  %9 = load i32, ptr %1, align 8, !tbaa !356
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !239
  br label %24

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %23 = load i64, ptr %22, align 8, !tbaa !130
  br label %24

24:                                               ; preds = %21, %17, %14
  %25 = phi i64 [ %16, %14 ], [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %28, i64 12, i1 false)
  %29 = zext i32 %9 to i64
  %30 = icmp ugt i64 %3, %29
  br i1 %30, label %31, label %381

31:                                               ; preds = %24
  %32 = load i32, ptr %8, align 8
  %33 = icmp eq i32 %6, 2
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %40 = getelementptr i8, ptr %0, i64 448
  %41 = and i64 %25, 4294967295
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %44 = getelementptr inbounds i8, ptr %10, i64 -32
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %46 = ptrtoint ptr %44 to i64
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %50 = load i32, ptr %34, align 4
  %51 = load i32, ptr %35, align 8
  br label %52

52:                                               ; preds = %374, %31
  %53 = phi i32 [ %51, %31 ], [ %134, %374 ]
  %54 = phi i32 [ %50, %31 ], [ %135, %374 ]
  %55 = phi i64 [ %29, %31 ], [ %379, %374 ]
  %56 = phi ptr [ %4, %31 ], [ %377, %374 ]
  %57 = phi i32 [ %32, %31 ], [ %136, %374 ]
  %58 = ptrtoint ptr %56 to i64
  %59 = trunc nuw i64 %55 to i32
  %60 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %55
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !183
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, ptr %60, align 4, !tbaa !181
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %381, label %67

67:                                               ; preds = %64, %52
  %68 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !184
  br i1 %33, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, ptr %60, align 4, !tbaa !181
  %72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 3), !nosanitize !8
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !8
  br i1 %73, label %74, label %75, !prof !9, !nosanitize !8

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

75:                                               ; preds = %70
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !8
  br label %133

77:                                               ; preds = %67
  %78 = icmp eq i32 %69, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, ptr %60, align 4, !tbaa !181
  %81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %80, i32 3), !nosanitize !8
  %82 = extractvalue { i32, i1 } %81, 0, !nosanitize !8
  %83 = extractvalue { i32, i1 } %81, 1, !nosanitize !8
  br i1 %83, label %84, label %85, !prof !9, !nosanitize !8

84:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

85:                                               ; preds = %77
  %86 = icmp ne i32 %80, %57
  %87 = select i1 %78, i1 true, i1 %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = icmp eq i32 %80, %54
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = select i1 %78, i32 1, i32 2
  br label %108

92:                                               ; preds = %88
  %93 = icmp eq i32 %80, %53
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = xor i32 %79, 3
  br label %108

96:                                               ; preds = %92
  br i1 %78, label %97, label %104

97:                                               ; preds = %96
  %98 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !8
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !8
  br i1 %99, label %100, label %101, !prof !9, !nosanitize !8

100:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

101:                                              ; preds = %97
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !8
  %103 = icmp eq i32 %80, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %101, %96
  %105 = icmp ugt i32 %82, 3
  br i1 %105, label %106, label %108

106:                                              ; preds = %104
  store i32 %54, ptr %35, align 8, !tbaa !4
  store i32 %57, ptr %34, align 4, !tbaa !4
  %107 = add i32 %82, -3
  br label %129

108:                                              ; preds = %104, %101, %94, %90, %85
  %109 = phi i32 [ %82, %104 ], [ %91, %90 ], [ 1, %85 ], [ %95, %94 ], [ 3, %101 ]
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %109, i32 1), !nosanitize !8
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !8
  br i1 %111, label %112, label %113, !prof !9, !nosanitize !8

112:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

113:                                              ; preds = %108
  %114 = extractvalue { i32, i1 } %110, 0, !nosanitize !8
  %115 = add nuw nsw i32 %114, %79
  switch i32 %115, label %121 [
    i32 0, label %133
    i32 3, label %116
  ]

116:                                              ; preds = %113
  %117 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !8
  %118 = extractvalue { i32, i1 } %117, 0, !nosanitize !8
  %119 = extractvalue { i32, i1 } %117, 1, !nosanitize !8
  br i1 %119, label %120, label %125, !prof !9, !nosanitize !8

120:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

121:                                              ; preds = %113
  %122 = zext nneg i32 %115 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !4
  br label %125

125:                                              ; preds = %121, %116
  %126 = phi i32 [ %124, %121 ], [ %118, %116 ]
  %127 = icmp eq i32 %115, 1
  %128 = select i1 %127, i32 %53, i32 %54
  store i32 %128, ptr %35, align 8, !tbaa !4
  store i32 %57, ptr %34, align 4, !tbaa !4
  br label %129

129:                                              ; preds = %125, %106
  %130 = phi i32 [ %128, %125 ], [ %54, %106 ]
  %131 = phi i32 [ %109, %125 ], [ %82, %106 ]
  %132 = phi i32 [ %126, %125 ], [ %107, %106 ]
  store i32 %132, ptr %8, align 8, !tbaa !4
  br label %133

133:                                              ; preds = %129, %113, %75
  %134 = phi i32 [ %53, %75 ], [ %53, %113 ], [ %130, %129 ]
  %135 = phi i32 [ %54, %75 ], [ %54, %113 ], [ %57, %129 ]
  %136 = phi i32 [ %57, %75 ], [ %57, %113 ], [ %132, %129 ]
  %137 = phi i32 [ %76, %75 ], [ %109, %113 ], [ %131, %129 ]
  %138 = load i32, ptr %36, align 8, !tbaa !358
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %171, label %140

140:                                              ; preds = %133
  %141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %69, i32 %62), !nosanitize !8
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !8
  br i1 %142, label %143, label %144, !prof !9, !nosanitize !8

143:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

144:                                              ; preds = %140
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !8
  %146 = zext i32 %145 to i64
  %147 = load i64, ptr %37, align 8, !tbaa !359
  %148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 %146), !nosanitize !8
  %149 = extractvalue { i64, i1 } %148, 1, !nosanitize !8
  br i1 %149, label %150, label %151, !prof !9, !nosanitize !8

150:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

151:                                              ; preds = %144
  %152 = extractvalue { i64, i1 } %148, 0, !nosanitize !8
  store i64 %152, ptr %37, align 8, !tbaa !359
  %153 = load i32, ptr %39, align 4, !tbaa !337
  %154 = load i32, ptr %38, align 4, !tbaa !214
  %155 = load ptr, ptr %40, align 8, !tbaa !320
  %156 = icmp ne ptr %155, null
  %157 = shl nuw i32 1, %154
  %158 = zext i32 %157 to i64
  %159 = icmp ugt i64 %152, %158
  %160 = add nuw nsw i64 %152, %41
  %161 = select i1 %159, i64 %158, i64 %160
  %162 = add nuw nsw i64 %161, 3
  %163 = icmp eq i32 %153, 3
  %164 = or i1 %163, %156
  %165 = select i1 %164, i64 3, i64 4
  %166 = zext i32 %137 to i64
  %167 = icmp samesign uge i64 %162, %166
  %168 = zext i32 %62 to i64
  %169 = icmp samesign ule i64 %165, %168
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %464

171:                                              ; preds = %151, %133
  %172 = load i32, ptr %1, align 8, !tbaa !356
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %172), !nosanitize !8
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !8
  br i1 %174, label %175, label %176, !prof !9, !nosanitize !8

175:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

176:                                              ; preds = %171
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !8
  %178 = zext i32 %177 to i64
  %179 = load i64, ptr %42, align 8, !tbaa !303
  %180 = icmp ugt i64 %179, %178
  br i1 %180, label %181, label %464

181:                                              ; preds = %176
  %182 = zext i32 %69 to i64
  %183 = zext i32 %62 to i64
  %184 = getelementptr inbounds nuw i8, ptr %56, i64 %182
  %185 = icmp ugt ptr %184, %44
  %186 = load ptr, ptr %45, align 8, !tbaa !170
  br i1 %185, label %209, label %187

187:                                              ; preds = %181
  %188 = load <2 x i64>, ptr %56, align 1, !tbaa !164
  store <2 x i64> %188, ptr %186, align 1, !tbaa !164
  %189 = icmp ugt i32 %69, 16
  br i1 %189, label %190, label %330

190:                                              ; preds = %187
  %191 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %192 = load ptr, ptr %45, align 8, !tbaa !170
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %194 = getelementptr i8, ptr %192, i64 %182
  %195 = load <2 x i64>, ptr %191, align 1, !tbaa !164
  store <2 x i64> %195, ptr %193, align 1, !tbaa !164
  %196 = icmp ult i32 %69, 33
  br i1 %196, label %330, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds nuw i8, ptr %192, i64 32
  br label %199

199:                                              ; preds = %199, %197
  %200 = phi ptr [ %198, %197 ], [ %207, %199 ]
  %201 = phi ptr [ %191, %197 ], [ %205, %199 ]
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 16
  %203 = load <2 x i64>, ptr %202, align 1, !tbaa !164
  store <2 x i64> %203, ptr %200, align 1, !tbaa !164
  %204 = getelementptr inbounds nuw i8, ptr %200, i64 16
  %205 = getelementptr inbounds nuw i8, ptr %201, i64 32
  %206 = load <2 x i64>, ptr %205, align 1, !tbaa !164
  store <2 x i64> %206, ptr %204, align 1, !tbaa !164
  %207 = getelementptr inbounds nuw i8, ptr %200, i64 32
  %208 = icmp ult ptr %207, %194
  br i1 %208, label %199, label %334, !llvm.loop !360

209:                                              ; preds = %181
  %210 = icmp ugt ptr %56, %44
  br i1 %210, label %229, label %211

211:                                              ; preds = %209
  %212 = ptrtoint ptr %56 to i64
  %213 = sub i64 %46, %212
  %214 = getelementptr inbounds i8, ptr %186, i64 %213
  %215 = load <2 x i64>, ptr %56, align 1, !tbaa !164
  store <2 x i64> %215, ptr %186, align 1, !tbaa !164
  %216 = icmp ult i64 %213, 17
  br i1 %216, label %229, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds nuw i8, ptr %186, i64 16
  br label %219

219:                                              ; preds = %219, %217
  %220 = phi ptr [ %218, %217 ], [ %227, %219 ]
  %221 = phi ptr [ %56, %217 ], [ %225, %219 ]
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %223 = load <2 x i64>, ptr %222, align 1, !tbaa !164
  store <2 x i64> %223, ptr %220, align 1, !tbaa !164
  %224 = getelementptr inbounds nuw i8, ptr %220, i64 16
  %225 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %226 = load <2 x i64>, ptr %225, align 1, !tbaa !164
  store <2 x i64> %226, ptr %224, align 1, !tbaa !164
  %227 = getelementptr inbounds nuw i8, ptr %220, i64 32
  %228 = icmp ult ptr %227, %214
  br i1 %228, label %219, label %229, !llvm.loop !360

229:                                              ; preds = %219, %211, %209
  %230 = phi ptr [ %56, %209 ], [ %44, %211 ], [ %44, %219 ]
  %231 = phi ptr [ %186, %209 ], [ %214, %211 ], [ %214, %219 ]
  %232 = icmp ult ptr %230, %184
  br i1 %232, label %233, label %334

233:                                              ; preds = %229
  %234 = ptrtoaddr ptr %230 to i64
  %235 = ptrtoaddr ptr %231 to i64
  %236 = ptrtoint ptr %230 to i64
  %237 = add i64 %58, %182
  %238 = sub i64 %237, %236
  %239 = icmp ult i64 %238, 4
  %240 = sub i64 %235, %234
  %241 = icmp ult i64 %240, 32
  %242 = select i1 %239, i1 true, i1 %241
  br i1 %242, label %278, label %243

243:                                              ; preds = %233
  %244 = icmp ult i64 %238, 32
  br i1 %244, label %264, label %245

245:                                              ; preds = %243
  %246 = and i64 %238, 28
  %247 = and i64 %238, -32
  %248 = getelementptr i8, ptr %231, i64 %247
  %249 = getelementptr i8, ptr %230, i64 %247
  br label %250

250:                                              ; preds = %250, %245
  %251 = phi i64 [ 0, %245 ], [ %258, %250 ]
  %252 = getelementptr i8, ptr %231, i64 %251
  %253 = getelementptr i8, ptr %230, i64 %251
  %254 = getelementptr i8, ptr %253, i64 16
  %255 = load <16 x i8>, ptr %253, align 1, !tbaa !164
  %256 = load <16 x i8>, ptr %254, align 1, !tbaa !164
  %257 = getelementptr i8, ptr %252, i64 16
  store <16 x i8> %255, ptr %252, align 1, !tbaa !164
  store <16 x i8> %256, ptr %257, align 1, !tbaa !164
  %258 = add nuw i64 %251, 32
  %259 = icmp eq i64 %258, %247
  br i1 %259, label %260, label %250, !llvm.loop !361

260:                                              ; preds = %250
  %261 = icmp eq i64 %238, %247
  br i1 %261, label %334, label %262

262:                                              ; preds = %260
  %263 = icmp eq i64 %246, 0
  br i1 %263, label %278, label %264, !prof !362

264:                                              ; preds = %262, %243
  %265 = phi i64 [ %247, %262 ], [ 0, %243 ]
  %266 = and i64 %238, -4
  %267 = getelementptr i8, ptr %231, i64 %266
  %268 = getelementptr i8, ptr %230, i64 %266
  br label %269

269:                                              ; preds = %269, %264
  %270 = phi i64 [ %265, %264 ], [ %274, %269 ]
  %271 = getelementptr i8, ptr %231, i64 %270
  %272 = getelementptr i8, ptr %230, i64 %270
  %273 = load <4 x i8>, ptr %272, align 1, !tbaa !164
  store <4 x i8> %273, ptr %271, align 1, !tbaa !164
  %274 = add nuw i64 %270, 4
  %275 = icmp eq i64 %274, %266
  br i1 %275, label %276, label %269, !llvm.loop !363

276:                                              ; preds = %269
  %277 = icmp eq i64 %238, %266
  br i1 %277, label %334, label %278

278:                                              ; preds = %276, %262, %233
  %279 = phi ptr [ %231, %233 ], [ %248, %262 ], [ %267, %276 ]
  %280 = phi ptr [ %230, %233 ], [ %249, %262 ], [ %268, %276 ]
  %281 = add i64 %58, %182
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = add i64 %58, -1
  %285 = add i64 %284, %182
  %286 = sub i64 %285, %282
  %287 = and i64 %283, 7
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %289, %278
  %290 = phi ptr [ %295, %289 ], [ %279, %278 ]
  %291 = phi ptr [ %293, %289 ], [ %280, %278 ]
  %292 = phi i64 [ %296, %289 ], [ 0, %278 ]
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 1
  %294 = load i8, ptr %291, align 1, !tbaa !164
  %295 = getelementptr inbounds nuw i8, ptr %290, i64 1
  store i8 %294, ptr %290, align 1, !tbaa !164
  %296 = add i64 %292, 1
  %297 = icmp eq i64 %296, %287
  br i1 %297, label %298, label %289, !llvm.loop !364

298:                                              ; preds = %289, %278
  %299 = phi ptr [ %279, %278 ], [ %295, %289 ]
  %300 = phi ptr [ %280, %278 ], [ %293, %289 ]
  %301 = icmp ult i64 %286, 7
  br i1 %301, label %334, label %302

302:                                              ; preds = %302, %298
  %303 = phi ptr [ %328, %302 ], [ %299, %298 ]
  %304 = phi ptr [ %326, %302 ], [ %300, %298 ]
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 1
  %306 = load i8, ptr %304, align 1, !tbaa !164
  %307 = getelementptr inbounds nuw i8, ptr %303, i64 1
  store i8 %306, ptr %303, align 1, !tbaa !164
  %308 = getelementptr inbounds nuw i8, ptr %304, i64 2
  %309 = load i8, ptr %305, align 1, !tbaa !164
  %310 = getelementptr inbounds nuw i8, ptr %303, i64 2
  store i8 %309, ptr %307, align 1, !tbaa !164
  %311 = getelementptr inbounds nuw i8, ptr %304, i64 3
  %312 = load i8, ptr %308, align 1, !tbaa !164
  %313 = getelementptr inbounds nuw i8, ptr %303, i64 3
  store i8 %312, ptr %310, align 1, !tbaa !164
  %314 = getelementptr inbounds nuw i8, ptr %304, i64 4
  %315 = load i8, ptr %311, align 1, !tbaa !164
  %316 = getelementptr inbounds nuw i8, ptr %303, i64 4
  store i8 %315, ptr %313, align 1, !tbaa !164
  %317 = getelementptr inbounds nuw i8, ptr %304, i64 5
  %318 = load i8, ptr %314, align 1, !tbaa !164
  %319 = getelementptr inbounds nuw i8, ptr %303, i64 5
  store i8 %318, ptr %316, align 1, !tbaa !164
  %320 = getelementptr inbounds nuw i8, ptr %304, i64 6
  %321 = load i8, ptr %317, align 1, !tbaa !164
  %322 = getelementptr inbounds nuw i8, ptr %303, i64 6
  store i8 %321, ptr %319, align 1, !tbaa !164
  %323 = getelementptr inbounds nuw i8, ptr %304, i64 7
  %324 = load i8, ptr %320, align 1, !tbaa !164
  %325 = getelementptr inbounds nuw i8, ptr %303, i64 7
  store i8 %324, ptr %322, align 1, !tbaa !164
  %326 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %327 = load i8, ptr %323, align 1, !tbaa !164
  %328 = getelementptr inbounds nuw i8, ptr %303, i64 8
  store i8 %327, ptr %325, align 1, !tbaa !164
  %329 = icmp eq ptr %326, %184
  br i1 %329, label %334, label %302, !llvm.loop !366

330:                                              ; preds = %190, %187
  %331 = load ptr, ptr %45, align 8, !tbaa !170
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %182
  store ptr %332, ptr %45, align 8, !tbaa !170
  %333 = load ptr, ptr %48, align 8, !tbaa !158
  br label %346

334:                                              ; preds = %302, %298, %276, %260, %229, %199
  %335 = load ptr, ptr %45, align 8, !tbaa !170
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 %182
  store ptr %336, ptr %45, align 8, !tbaa !170
  %337 = icmp ugt i32 %69, 65535
  %338 = load ptr, ptr %48, align 8, !tbaa !158
  br i1 %337, label %339, label %346, !prof !367

339:                                              ; preds = %334
  store i32 1, ptr %47, align 8, !tbaa !167
  %340 = load ptr, ptr %43, align 8, !tbaa !154
  %341 = ptrtoint ptr %338 to i64
  %342 = ptrtoint ptr %340 to i64
  %343 = sub i64 %341, %342
  %344 = lshr exact i64 %343, 3
  %345 = trunc i64 %344 to i32
  store i32 %345, ptr %49, align 4, !tbaa !168
  br label %346

346:                                              ; preds = %339, %334, %330
  %347 = phi ptr [ %333, %330 ], [ %338, %339 ], [ %338, %334 ]
  %348 = trunc i32 %69 to i16
  %349 = getelementptr inbounds nuw i8, ptr %347, i64 4
  store i16 %348, ptr %349, align 4, !tbaa !159
  store i32 %137, ptr %347, align 4, !tbaa !162
  %350 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 0, 4294967296) %183, i64 3), !nosanitize !8
  %351 = extractvalue { i64, i1 } %350, 0, !nosanitize !8
  %352 = extractvalue { i64, i1 } %350, 1, !nosanitize !8
  br i1 %352, label %353, label %354, !prof !9, !nosanitize !8

353:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

354:                                              ; preds = %346
  %355 = icmp ugt i64 %351, 65535
  br i1 %355, label %356, label %363, !prof !301

356:                                              ; preds = %354
  store i32 2, ptr %47, align 8, !tbaa !167
  %357 = load ptr, ptr %43, align 8, !tbaa !154
  %358 = ptrtoint ptr %347 to i64
  %359 = ptrtoint ptr %357 to i64
  %360 = sub i64 %358, %359
  %361 = lshr exact i64 %360, 3
  %362 = trunc i64 %361 to i32
  store i32 %362, ptr %49, align 4, !tbaa !168
  br label %363

363:                                              ; preds = %356, %354
  %364 = trunc i64 %351 to i16
  %365 = getelementptr inbounds nuw i8, ptr %347, i64 6
  store i16 %364, ptr %365, align 2, !tbaa !163
  %366 = getelementptr inbounds nuw i8, ptr %347, i64 8
  store ptr %366, ptr %48, align 8, !tbaa !158
  %367 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %62, i32 %69), !nosanitize !8
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !8
  br i1 %368, label %369, label %370, !prof !9, !nosanitize !8

369:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

370:                                              ; preds = %363
  %371 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %59, i32 1), !nosanitize !8
  %372 = extractvalue { i32, i1 } %371, 1, !nosanitize !8
  br i1 %372, label %373, label %374, !prof !9, !nosanitize !8

373:                                              ; preds = %370
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

374:                                              ; preds = %370
  %375 = extractvalue { i32, i1 } %367, 0, !nosanitize !8
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds nuw i8, ptr %56, i64 %376
  %378 = extractvalue { i32, i1 } %371, 0, !nosanitize !8
  %379 = zext i32 %378 to i64
  %380 = icmp ugt i64 %3, %379
  br i1 %380, label %52, label %381, !llvm.loop !368

381:                                              ; preds = %374, %64, %24
  %382 = phi ptr [ %4, %24 ], [ %56, %64 ], [ %377, %374 ]
  %383 = phi i32 [ %9, %24 ], [ %59, %64 ], [ %378, %374 ]
  %384 = phi i64 [ %29, %24 ], [ %55, %64 ], [ %379, %374 ]
  %385 = icmp eq i64 %3, %384
  br i1 %385, label %464, label %386

386:                                              ; preds = %381
  %387 = icmp ne i32 %6, 2
  %388 = icmp eq i32 %383, %9
  %389 = select i1 %387, i1 true, i1 %388
  br i1 %389, label %431, label %390

390:                                              ; preds = %386
  %391 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 1), !nosanitize !8
  %392 = extractvalue { i32, i1 } %391, 0, !nosanitize !8
  %393 = extractvalue { i32, i1 } %391, 1, !nosanitize !8
  br i1 %393, label %394, label %395, !prof !9, !nosanitize !8

394:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

395:                                              ; preds = %390
  %396 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 2), !nosanitize !8
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !8
  br i1 %397, label %398, label %399, !prof !9, !nosanitize !8

398:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

399:                                              ; preds = %395
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !8
  %401 = icmp ult i32 %392, %400
  br i1 %401, label %413, label %402

402:                                              ; preds = %399
  %403 = add i32 %392, -2
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !181
  %407 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %406, ptr %407, align 8, !tbaa !4
  %408 = add i32 %392, -1
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !181
  %412 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %411, ptr %412, align 4, !tbaa !4
  br label %427

413:                                              ; preds = %399
  %414 = add nuw i32 %9, 1
  %415 = icmp eq i32 %392, %414
  br i1 %415, label %416, label %424

416:                                              ; preds = %413
  %417 = load i32, ptr %8, align 8, !tbaa !4
  %418 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %417, ptr %418, align 8, !tbaa !4
  %419 = add i32 %392, -1
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %420
  %422 = load i32, ptr %421, align 4, !tbaa !181
  %423 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %422, ptr %423, align 4, !tbaa !4
  br label %427

424:                                              ; preds = %413
  %425 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %426 = load <2 x i32>, ptr %8, align 8, !tbaa !4
  store <2 x i32> %426, ptr %425, align 4, !tbaa !4
  br label %427

427:                                              ; preds = %424, %416, %402
  %428 = zext i32 %392 to i64
  %429 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !181
  store i32 %430, ptr %8, align 8, !tbaa !4
  br label %431

431:                                              ; preds = %427, %386
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %433 = load ptr, ptr %432, align 8, !tbaa !58
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %434, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %435 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %384
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 4
  %437 = load i32, ptr %436, align 4, !tbaa !184
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %455, label %439

439:                                              ; preds = %431
  %440 = zext i32 %437 to i64
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %442 = load ptr, ptr %441, align 8, !tbaa !170
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr readonly align 1 %382, i64 %440, i1 false)
  %443 = load ptr, ptr %441, align 8, !tbaa !170
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 %440
  store ptr %444, ptr %441, align 8, !tbaa !170
  %445 = load i32, ptr %436, align 4, !tbaa !184
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %448 = load i64, ptr %447, align 8, !tbaa !359
  %449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %448, i64 %446), !nosanitize !8
  %450 = extractvalue { i64, i1 } %449, 1, !nosanitize !8
  br i1 %450, label %451, label %452, !prof !9, !nosanitize !8

451:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

452:                                              ; preds = %439
  %453 = extractvalue { i64, i1 } %449, 0, !nosanitize !8
  %454 = getelementptr inbounds nuw i8, ptr %382, i64 %446
  store i64 %453, ptr %447, align 8, !tbaa !359
  br label %455

455:                                              ; preds = %452, %431
  %456 = phi ptr [ %454, %452 ], [ %382, %431 ]
  %457 = icmp eq ptr %456, %10
  br i1 %457, label %458, label %464

458:                                              ; preds = %455
  %459 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %383, i32 1), !nosanitize !8
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !8
  br i1 %460, label %461, label %462, !prof !9, !nosanitize !8

461:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

462:                                              ; preds = %458
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !8
  store i32 %463, ptr %1, align 8, !tbaa !356
  br label %464

464:                                              ; preds = %462, %455, %381, %176, %151
  %465 = phi i64 [ -107, %455 ], [ %5, %462 ], [ -107, %381 ], [ -107, %151 ], [ -107, %176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  ret i64 %465
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #18 {
  %3 = load i8, ptr %0, align 1, !tbaa !164
  %4 = zext i8 %3 to i64
  %5 = mul nuw i64 %4, 72340172838076673
  %6 = and i64 %1, 31
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %110, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %13 = getelementptr inbounds i8, ptr %12, i64 -7
  %14 = icmp samesign ugt i64 %6, 8
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i64, ptr %0, align 1, !tbaa !118
  %17 = load i64, ptr %11, align 1, !tbaa !118
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = xor i64 %17, %16
  %21 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %20, i1 true)
  %22 = lshr i64 %21, 3
  br label %80

23:                                               ; preds = %29, %15
  %24 = phi ptr [ %27, %29 ], [ %0, %15 ]
  %25 = phi ptr [ %26, %29 ], [ %11, %15 ]
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = icmp ult ptr %26, %13
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i64, ptr %27, align 1, !tbaa !118
  %31 = load i64, ptr %26, align 1, !tbaa !118
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %29
  %34 = xor i64 %31, %30
  %35 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %34, i1 true)
  %36 = lshr i64 %35, 3
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 %36
  %38 = ptrtoint ptr %37 to i64
  %39 = ptrtoint ptr %11 to i64
  %40 = sub i64 %38, %39
  br label %80

41:                                               ; preds = %23, %10
  %42 = phi ptr [ %0, %10 ], [ %27, %23 ]
  %43 = phi ptr [ %11, %10 ], [ %26, %23 ]
  %44 = getelementptr inbounds i8, ptr %12, i64 -3
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, ptr %42, align 1, !tbaa !4
  %48 = load i32, ptr %43, align 1, !tbaa !4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %52 = getelementptr inbounds nuw i8, ptr %42, i64 4
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = phi ptr [ %52, %50 ], [ %42, %46 ], [ %42, %41 ]
  %55 = phi ptr [ %51, %50 ], [ %43, %46 ], [ %43, %41 ]
  %56 = getelementptr inbounds i8, ptr %12, i64 -1
  %57 = icmp ult ptr %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i16, ptr %54, align 1, !tbaa !199
  %60 = load i16, ptr %55, align 1, !tbaa !199
  %61 = icmp eq i16 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %55, i64 2
  %64 = getelementptr inbounds nuw i8, ptr %54, i64 2
  br label %65

65:                                               ; preds = %62, %58, %53
  %66 = phi ptr [ %64, %62 ], [ %54, %58 ], [ %54, %53 ]
  %67 = phi ptr [ %63, %62 ], [ %55, %58 ], [ %55, %53 ]
  %68 = icmp ult ptr %67, %12
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8, ptr %66, align 1, !tbaa !164
  %71 = load i8, ptr %67, align 1, !tbaa !164
  %72 = icmp eq i8 %70, %71
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %67, i64 %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi ptr [ %67, %65 ], [ %74, %69 ]
  %77 = ptrtoint ptr %76 to i64
  %78 = ptrtoint ptr %11 to i64
  %79 = sub i64 %77, %78
  br label %80

80:                                               ; preds = %75, %33, %19
  %81 = phi i64 [ %40, %33 ], [ %79, %75 ], [ %22, %19 ]
  %82 = add nsw i64 %6, -1
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80, %8
  %85 = icmp ult i64 %1, 32
  br i1 %85, label %110, label %86

86:                                               ; preds = %107, %84
  %87 = phi i64 [ %108, %107 ], [ %6, %84 ]
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i64, ptr %88, align 1, !tbaa !118
  %90 = icmp eq i64 %89, %5
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %93 = load i64, ptr %92, align 1, !tbaa !118
  %94 = icmp eq i64 %93, %5
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %97 = load i64, ptr %96, align 1, !tbaa !118
  %98 = icmp eq i64 %97, %5
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %101 = load i64, ptr %100, align 1, !tbaa !118
  %102 = icmp eq i64 %101, %5
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %87, i64 32), !nosanitize !8
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !8
  br i1 %105, label %106, label %107, !prof !9, !nosanitize !8

106:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

107:                                              ; preds = %103
  %108 = extractvalue { i64, i1 } %104, 0, !nosanitize !8
  %109 = icmp eq i64 %108, %1
  br i1 %109, label %110, label %86, !llvm.loop !369

110:                                              ; preds = %107, %99, %95, %91, %86, %84, %80, %2
  %111 = phi i32 [ 0, %80 ], [ 1, %2 ], [ 1, %84 ], [ 1, %107 ], [ 0, %91 ], [ 0, %95 ], [ 0, %99 ], [ 0, %86 ]
  ret i32 %111
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #4 {
  %11 = alloca %struct.repcodes_s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !370
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %149, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !158
  %16 = load ptr, ptr %1, align 8, !tbaa !154
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %23 = load i32, ptr %22, align 8, !tbaa !167
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %27 = load i32, ptr %26, align 4, !tbaa !168
  br label %28

28:                                               ; preds = %25, %13
  %29 = phi i32 [ %27, %25 ], [ %21, %13 ]
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %149, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %36 = zext i32 %29 to i64
  %37 = and i64 %20, 4294967295
  br label %38

38:                                               ; preds = %146, %31
  %39 = phi i64 [ 0, %31 ], [ %147, %146 ]
  %40 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %42 = load i16, ptr %41, align 4, !tbaa !159
  %43 = icmp eq i16 %42, 0
  %44 = icmp ne i64 %39, %36
  %45 = select i1 %43, i1 %44, i1 false
  %46 = zext i1 %45 to i32
  %47 = load i32, ptr %40, align 4, !tbaa !162
  %48 = add i32 %47, -1
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %82

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %48, %46
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4, !tbaa !4
  %55 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !nosanitize !8
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !8
  br i1 %56, label %57, label %58, !prof !9, !nosanitize !8

57:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

58:                                               ; preds = %53
  %59 = load i32, ptr %3, align 4, !tbaa !4
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 1), !nosanitize !8
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !8
  br i1 %61, label %62, label %63, !prof !9, !nosanitize !8

62:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

63:                                               ; preds = %58
  %64 = extractvalue { i32, i1 } %55, 0, !nosanitize !8
  %65 = extractvalue { i32, i1 } %60, 0, !nosanitize !8
  br label %72

66:                                               ; preds = %50
  %67 = zext nneg i32 %51 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !4
  %70 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %67
  %71 = load i32, ptr %70, align 4, !tbaa !4
  br label %72

72:                                               ; preds = %66, %63
  %73 = phi i32 [ %64, %63 ], [ %69, %66 ]
  %74 = phi i32 [ %65, %63 ], [ %71, %66 ]
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %74, i32 3), !nosanitize !8
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !8
  br i1 %78, label %79, label %80, !prof !9, !nosanitize !8

79:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

80:                                               ; preds = %76
  %81 = extractvalue { i32, i1 } %77, 0, !nosanitize !8
  store i32 %81, ptr %40, align 4, !tbaa !162
  br label %82

82:                                               ; preds = %80, %38
  %83 = phi i32 [ %47, %38 ], [ %81, %80 ]
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load <2 x i32>, ptr %2, align 4, !tbaa !4
  store <2 x i32> %86, ptr %32, align 4, !tbaa !4
  %87 = add i32 %83, -3
  br label %113

88:                                               ; preds = %82, %72
  %89 = phi i32 [ %83, %82 ], [ %47, %72 ]
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 1), !nosanitize !8
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !8
  br i1 %91, label %92, label %93, !prof !9, !nosanitize !8

92:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

93:                                               ; preds = %88
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !8
  %95 = add nuw nsw i32 %94, %46
  switch i32 %95, label %102 [
    i32 0, label %115
    i32 3, label %96
  ]

96:                                               ; preds = %93
  %97 = load i32, ptr %2, align 4, !tbaa !4
  %98 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 1), !nosanitize !8
  %99 = extractvalue { i32, i1 } %98, 0, !nosanitize !8
  %100 = extractvalue { i32, i1 } %98, 1, !nosanitize !8
  br i1 %100, label %101, label %107, !prof !9, !nosanitize !8

101:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

102:                                              ; preds = %93
  %103 = zext nneg i32 %95 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !4
  %106 = load i32, ptr %2, align 4, !tbaa !4
  br label %107

107:                                              ; preds = %102, %96
  %108 = phi i32 [ %106, %102 ], [ %97, %96 ]
  %109 = phi i32 [ %105, %102 ], [ %99, %96 ]
  %110 = icmp eq i32 %95, 1
  %111 = select i1 %110, ptr %33, ptr %32
  %112 = load i32, ptr %111, align 4, !tbaa !4
  store i32 %112, ptr %33, align 4, !tbaa !4
  store i32 %108, ptr %32, align 4, !tbaa !4
  br label %113

113:                                              ; preds = %107, %85
  %114 = phi i32 [ %109, %107 ], [ %87, %85 ]
  store i32 %114, ptr %2, align 4, !tbaa !4
  br label %115

115:                                              ; preds = %113, %93
  %116 = icmp ugt i32 %47, 3
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load <2 x i32>, ptr %3, align 4, !tbaa !4
  store <2 x i32> %118, ptr %34, align 4, !tbaa !4
  %119 = add i32 %47, -3
  br label %144

120:                                              ; preds = %115
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 1), !nosanitize !8
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !8
  br i1 %122, label %123, label %124, !prof !9, !nosanitize !8

123:                                              ; preds = %120
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

124:                                              ; preds = %120
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !8
  %126 = add nuw nsw i32 %125, %46
  switch i32 %126, label %133 [
    i32 0, label %146
    i32 3, label %127
  ]

127:                                              ; preds = %124
  %128 = load i32, ptr %3, align 4, !tbaa !4
  %129 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %128, i32 1), !nosanitize !8
  %130 = extractvalue { i32, i1 } %129, 0, !nosanitize !8
  %131 = extractvalue { i32, i1 } %129, 1, !nosanitize !8
  br i1 %131, label %132, label %138, !prof !9, !nosanitize !8

132:                                              ; preds = %127
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

133:                                              ; preds = %124
  %134 = zext nneg i32 %126 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !4
  %137 = load i32, ptr %3, align 4, !tbaa !4
  br label %138

138:                                              ; preds = %133, %127
  %139 = phi i32 [ %137, %133 ], [ %128, %127 ]
  %140 = phi i32 [ %136, %133 ], [ %130, %127 ]
  %141 = icmp eq i32 %126, 1
  %142 = select i1 %141, ptr %35, ptr %34
  %143 = load i32, ptr %142, align 4, !tbaa !4
  store i32 %143, ptr %35, align 4, !tbaa !4
  store i32 %139, ptr %34, align 4, !tbaa !4
  br label %144

144:                                              ; preds = %138, %117
  %145 = phi i32 [ %140, %138 ], [ %119, %117 ]
  store i32 %145, ptr %3, align 4, !tbaa !4
  br label %146

146:                                              ; preds = %144, %124
  %147 = add nuw nsw i64 %39, 1
  %148 = icmp eq i64 %147, %37
  br i1 %148, label %149, label %38, !llvm.loop !371

149:                                              ; preds = %146, %28, %10
  %150 = icmp ult i64 %5, 3
  br i1 %150, label %266, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %153 = add i64 %5, -3
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %157 = load ptr, ptr %156, align 8, !tbaa !58
  %158 = load ptr, ptr %152, align 8, !tbaa !57
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %160 = load ptr, ptr %159, align 8, !tbaa !59
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %162 = load i64, ptr %161, align 8, !tbaa !60
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %164 = load i32, ptr %163, align 8, !tbaa !13
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !169
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %168 = load ptr, ptr %167, align 8, !tbaa !170
  %169 = ptrtoint ptr %168 to i64
  %170 = ptrtoint ptr %166 to i64
  %171 = sub i64 %169, %170
  %172 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %154, i64 noundef %153, ptr noundef %166, i64 noundef %171, ptr noundef readonly %1, ptr noundef %158, ptr noundef %157, ptr noundef nonnull readonly %155, ptr noundef %160, i64 noundef %162, i32 noundef %164)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %195, label %174

174:                                              ; preds = %151
  %175 = icmp eq i64 %172, -70
  %176 = icmp ule i64 %7, %153
  %177 = and i1 %176, %175
  br i1 %177, label %195, label %178

178:                                              ; preds = %174
  %179 = icmp ult i64 %172, -119
  br i1 %179, label %180, label %266

180:                                              ; preds = %178
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %182 = load i32, ptr %181, align 4, !tbaa !94
  %183 = tail call i32 @llvm.umax.i32(i32 %182, i32 7)
  %184 = add i32 %183, -1
  %185 = zext nneg i32 %184 to i64
  %186 = lshr i64 %7, %185
  %187 = add nuw nsw i64 %186, 2
  %188 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %187), !nosanitize !8
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !8
  br i1 %189, label %190, label %191, !prof !9, !nosanitize !8

190:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

191:                                              ; preds = %180
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !8
  %193 = icmp ult i64 %172, %192
  %194 = select i1 %193, i64 %172, i64 0
  br label %195

195:                                              ; preds = %191, %174, %151
  %196 = phi i64 [ %194, %191 ], [ 0, %174 ], [ 0, %151 ]
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %198 = load i32, ptr %197, align 8, !tbaa !220
  %199 = icmp eq i32 %198, 0
  %200 = icmp ult i64 %196, 25
  %201 = and i1 %200, %199
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i64 %196, i64 1
  br label %206

206:                                              ; preds = %202, %195
  %207 = phi i64 [ %196, %195 ], [ %205, %202 ]
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %209 = load i32, ptr %208, align 8, !tbaa !221
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %206
  %212 = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %208, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %213 = icmp ult i64 %212, -119
  br i1 %213, label %214, label %266

214:                                              ; preds = %211
  %215 = load <2 x ptr>, ptr %152, align 8, !tbaa !51
  %216 = shufflevector <2 x ptr> %215, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %216, ptr %152, align 8, !tbaa !51
  br label %266

217:                                              ; preds = %206
  switch i64 %207, label %247 [
    i64 0, label %218
    i64 1, label %235
  ]

218:                                              ; preds = %217
  %219 = trunc i64 %7 to i32
  %220 = shl i32 %219, 3
  %221 = or disjoint i32 %220, %8
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %7, i64 3), !nosanitize !8
  %223 = extractvalue { i64, i1 } %222, 0, !nosanitize !8
  %224 = extractvalue { i64, i1 } %222, 1, !nosanitize !8
  br i1 %224, label %225, label %226, !prof !9, !nosanitize !8

225:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

226:                                              ; preds = %218
  %227 = icmp ugt i64 %223, %5
  br i1 %227, label %266, label %228

228:                                              ; preds = %226
  %229 = trunc i32 %221 to i16
  store i16 %229, ptr %4, align 1, !tbaa !199
  %230 = lshr i32 %220, 16
  %231 = trunc i32 %230 to i8
  %232 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %231, ptr %232, align 1, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %154, ptr readonly align 1 %6, i64 %7, i1 false)
  %233 = icmp ult i64 %223, -119
  br i1 %233, label %234, label %266

234:                                              ; preds = %228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !370
  br label %259

235:                                              ; preds = %217
  %236 = icmp eq i64 %5, 3
  br i1 %236, label %266, label %237

237:                                              ; preds = %235
  %238 = load i8, ptr %6, align 1, !tbaa !164
  %239 = trunc i64 %7 to i32
  %240 = shl i32 %239, 3
  %241 = or disjoint i32 %240, %8
  %242 = trunc i32 %241 to i16
  %243 = or disjoint i16 %242, 2
  store i16 %243, ptr %4, align 1, !tbaa !199
  %244 = lshr i32 %240, 16
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %245, ptr %246, align 1, !tbaa !164
  store i8 %238, ptr %154, align 1, !tbaa !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !370
  br label %259

247:                                              ; preds = %217
  %248 = load <2 x ptr>, ptr %152, align 8, !tbaa !51
  %249 = shufflevector <2 x ptr> %248, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %249, ptr %152, align 8, !tbaa !51
  %250 = trunc i64 %207 to i32
  %251 = shl i32 %250, 3
  %252 = or disjoint i32 %251, %8
  %253 = trunc i32 %252 to i16
  %254 = or disjoint i16 %253, 4
  store i16 %254, ptr %4, align 1, !tbaa !199
  %255 = lshr i32 %251, 16
  %256 = trunc i32 %255 to i8
  %257 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %256, ptr %257, align 1, !tbaa !164
  %258 = add nuw i64 %207, 3
  br label %259

259:                                              ; preds = %247, %237, %234
  %260 = phi i64 [ %223, %234 ], [ 4, %237 ], [ %258, %247 ]
  %261 = load ptr, ptr %152, align 8, !tbaa !57
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 5604
  %263 = load i32, ptr %262, align 4, !tbaa !151
  %264 = icmp eq i32 %263, 2
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store i32 1, ptr %262, align 4, !tbaa !151
  br label %266

266:                                              ; preds = %265, %259, %235, %228, %226, %214, %211, %178, %149
  %267 = phi i64 [ -70, %226 ], [ 0, %214 ], [ %212, %211 ], [ -70, %149 ], [ %223, %228 ], [ %172, %178 ], [ %260, %265 ], [ %260, %259 ], [ -70, %235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  ret i64 %267
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef captures(none) initializes((0, 80)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #22 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !227
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !154
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = load ptr, ptr %0, align 8, !tbaa !154
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %18

18:                                               ; preds = %42, %11
  %19 = phi i64 [ 0, %11 ], [ %43, %42 ]
  %20 = phi i64 [ 0, %11 ], [ %44, %42 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i16, ptr %22, align 4, !tbaa !199
  %24 = zext i16 %23 to i64
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 %24), !nosanitize !8
  %26 = extractvalue { i64, i1 } %25, 0, !nosanitize !8
  %27 = extractvalue { i64, i1 } %25, 1, !nosanitize !8
  br i1 %27, label %28, label %29, !prof !9, !nosanitize !8

28:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

29:                                               ; preds = %18
  %30 = load i32, ptr %16, align 4, !tbaa !168
  %31 = zext i32 %30 to i64
  %32 = icmp eq i64 %20, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, ptr %17, align 8, !tbaa !167
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 65536), !nosanitize !8
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !8
  br i1 %38, label %39, label %40, !prof !9, !nosanitize !8

39:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

40:                                               ; preds = %36
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !8
  br label %42

42:                                               ; preds = %40, %33, %29
  %43 = phi i64 [ %41, %40 ], [ %26, %33 ], [ %26, %29 ]
  %44 = add nuw i64 %20, 1
  %45 = icmp eq i64 %44, %15
  br i1 %45, label %46, label %18, !llvm.loop !230

46:                                               ; preds = %42, %6
  %47 = phi i64 [ 0, %6 ], [ %43, %42 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !169
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 %47
  store ptr %50, ptr %48, align 8, !tbaa !169
  br label %51

51:                                               ; preds = %46, %4
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %53 = load i32, ptr %52, align 8, !tbaa !167
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %57 = load i32, ptr %56, align 4, !tbaa !168
  %58 = zext i32 %57 to i64
  %59 = icmp ugt i64 %2, %58
  %60 = icmp samesign ult i64 %3, %58
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %63, align 8, !tbaa !167
  br label %73

64:                                               ; preds = %55
  %65 = trunc nuw i64 %2 to i32
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %67 = load i32, ptr %66, align 4, !tbaa !168
  %68 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %65), !nosanitize !8
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !8
  br i1 %69, label %70, label %71, !prof !9, !nosanitize !8

70:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

71:                                               ; preds = %64
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !8
  store i32 %72, ptr %66, align 4, !tbaa !168
  br label %73

73:                                               ; preds = %71, %62, %51
  %74 = load ptr, ptr %1, align 8, !tbaa !154
  %75 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %2
  store ptr %75, ptr %0, align 8, !tbaa !154
  %76 = load ptr, ptr %1, align 8, !tbaa !154
  %77 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %3
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %77, ptr %78, align 8, !tbaa !158
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %80 = load ptr, ptr %79, align 8, !tbaa !158
  %81 = ptrtoint ptr %80 to i64
  %82 = ptrtoint ptr %76 to i64
  %83 = sub i64 %81, %82
  %84 = ashr exact i64 %83, 3
  %85 = icmp eq i64 %3, %84
  br i1 %85, label %129, label %86

86:                                               ; preds = %73
  %87 = icmp eq ptr %77, %75
  br i1 %87, label %123, label %88

88:                                               ; preds = %86
  %89 = ptrtoint ptr %77 to i64
  %90 = ptrtoint ptr %75 to i64
  %91 = sub i64 %89, %90
  %92 = ashr exact i64 %91, 3
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %95

95:                                               ; preds = %119, %88
  %96 = phi i64 [ 0, %88 ], [ %120, %119 ]
  %97 = phi i64 [ 0, %88 ], [ %121, %119 ]
  %98 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %100 = load i16, ptr %99, align 4, !tbaa !199
  %101 = zext i16 %100 to i64
  %102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %101), !nosanitize !8
  %103 = extractvalue { i64, i1 } %102, 0, !nosanitize !8
  %104 = extractvalue { i64, i1 } %102, 1, !nosanitize !8
  br i1 %104, label %105, label %106, !prof !9, !nosanitize !8

105:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

106:                                              ; preds = %95
  %107 = load i32, ptr %93, align 4, !tbaa !168
  %108 = zext i32 %107 to i64
  %109 = icmp eq i64 %97, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, ptr %94, align 8, !tbaa !167
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 65536), !nosanitize !8
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !8
  br i1 %115, label %116, label %117, !prof !9, !nosanitize !8

116:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

117:                                              ; preds = %113
  %118 = extractvalue { i64, i1 } %114, 0, !nosanitize !8
  br label %119

119:                                              ; preds = %117, %110, %106
  %120 = phi i64 [ %118, %117 ], [ %103, %110 ], [ %103, %106 ]
  %121 = add nuw i64 %97, 1
  %122 = icmp eq i64 %121, %92
  br i1 %122, label %123, label %95, !llvm.loop !230

123:                                              ; preds = %119, %86
  %124 = phi i64 [ 0, %86 ], [ %120, %119 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %126 = load ptr, ptr %125, align 8, !tbaa !169
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 %124
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %127, ptr %128, align 8, !tbaa !170
  br label %129

129:                                              ; preds = %123, %73
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %131 = load ptr, ptr %130, align 8, !tbaa !155
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 %2
  store ptr %132, ptr %130, align 8, !tbaa !155
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %134 = load ptr, ptr %133, align 8, !tbaa !157
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 %2
  store ptr %135, ptr %133, align 8, !tbaa !157
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %137 = load ptr, ptr %136, align 8, !tbaa !156
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 %2
  store ptr %138, ptr %136, align 8, !tbaa !156
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #4 {
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 3768
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3848
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 3928
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %2), !nosanitize !8
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !8
  br i1 %10, label %17, label %11, !prof !304, !nosanitize !8

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %1), !nosanitize !8
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !8
  br i1 %14, label %18, label %15, !prof !304, !nosanitize !8

15:                                               ; preds = %11
  %16 = extractvalue { i64, i1 } %9, 0
  br label %19

17:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

18:                                               ; preds = %53, %11
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

19:                                               ; preds = %53, %15
  %20 = phi { i64, i1 } [ %13, %15 ], [ %56, %53 ]
  %21 = phi i64 [ %16, %15 ], [ %55, %53 ]
  %22 = phi i64 [ %1, %15 ], [ %23, %53 ]
  %23 = lshr i64 %21, 1
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !8
  %25 = icmp ult i64 %24, 300
  br i1 %25, label %58, label %26

26:                                               ; preds = %19
  %27 = load i64, ptr %12, align 8, !tbaa !226
  %28 = icmp ugt i64 %27, 195
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %6, ptr noundef %4, i64 noundef %22, i64 noundef %2)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %7, ptr noundef %4, i64 noundef %22, i64 noundef %23)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %8, ptr noundef %4, i64 noundef %23, i64 noundef %2)
  %30 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %6, ptr noundef %3)
  %31 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %7, ptr noundef %3)
  %32 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %8, ptr noundef %3)
  %33 = icmp ult i64 %30, -119
  %34 = icmp ult i64 %31, -119
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ult i64 %32, -119
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %58

38:                                               ; preds = %29
  %39 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %31, i64 %32), !nosanitize !8
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !8
  br i1 %40, label %41, label %42, !prof !9, !nosanitize !8

41:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

42:                                               ; preds = %38
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !8
  %44 = icmp ult i64 %43, %30
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %0, i64 noundef %22, i64 noundef %23, ptr noundef nonnull %3, ptr noundef %4)
  %46 = trunc i64 %23 to i32
  %47 = load ptr, ptr %0, align 8, !tbaa !224
  %48 = load i64, ptr %12, align 8, !tbaa !226
  %49 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %48
  store i32 %46, ptr %49, align 4, !tbaa !4
  %50 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %48, i64 1), !nosanitize !8
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !8
  br i1 %51, label %52, label %53, !prof !9, !nosanitize !8

52:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

53:                                               ; preds = %45
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !8
  store i64 %54, ptr %12, align 8, !tbaa !226
  %55 = add nuw i64 %23, %2
  %56 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %23), !nosanitize !8
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !8
  br i1 %57, label %18, label %19, !prof !372, !nosanitize !8

58:                                               ; preds = %42, %29, %26, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 3, 0) i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4952
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3224
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3544
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %16 = load i64, ptr %15, align 8, !tbaa !60
  %17 = tail call i64 @ZSTD_buildBlockEntropyStats(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %14, i64 noundef %16)
  %18 = icmp ult i64 %17, -119
  br i1 %18, label %19, label %256

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !169
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %21 to i64
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %32 = load ptr, ptr %31, align 8, !tbaa !157
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !158
  %35 = load ptr, ptr %0, align 8, !tbaa !154
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = load ptr, ptr %10, align 8, !tbaa !58
  %41 = load ptr, ptr %13, align 8, !tbaa !59
  %42 = load i64, ptr %15, align 8, !tbaa !60
  %43 = load i32, ptr %7, align 8, !tbaa !373
  %44 = icmp eq i32 %43, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i32 255, ptr %6, align 4, !tbaa !4
  %45 = icmp ugt i64 %26, 1023
  %46 = select i1 %45, i64 4, i64 3
  %47 = icmp ugt i64 %26, 16383
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %46, %48
  %50 = icmp ult i64 %26, 256
  switch i32 %43, label %81 [
    i32 0, label %82
    i32 1, label %51
    i32 2, label %52
    i32 3, label %52
  ]

51:                                               ; preds = %19
  br label %82

52:                                               ; preds = %19, %19
  %53 = call i64 @HIST_count_wksp(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %21, i64 noundef %26, ptr noundef %41, i64 noundef %42) #35
  %54 = icmp ult i64 %53, -119
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, ptr %6, align 4, !tbaa !4
  %57 = call i64 @HUF_estimateCompressedSize(ptr noundef %40, ptr noundef %41, i32 noundef %56) #35
  br i1 %44, label %58, label %66

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %60 = load i64, ptr %59, align 8, !tbaa !374
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 %60), !nosanitize !8
  %62 = extractvalue { i64, i1 } %61, 1, !nosanitize !8
  br i1 %62, label %63, label %64, !prof !9, !nosanitize !8

63:                                               ; preds = %58
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

64:                                               ; preds = %58
  %65 = extractvalue { i64, i1 } %61, 0, !nosanitize !8
  br label %66

66:                                               ; preds = %64, %55
  %67 = phi i64 [ %65, %64 ], [ %57, %55 ]
  br i1 %50, label %74, label %68

68:                                               ; preds = %66
  %69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 6), !nosanitize !8
  %70 = extractvalue { i64, i1 } %69, 1, !nosanitize !8
  br i1 %70, label %71, label %72, !prof !9, !nosanitize !8

71:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

72:                                               ; preds = %68
  %73 = extractvalue { i64, i1 } %69, 0, !nosanitize !8
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi i64 [ %67, %66 ], [ %73, %72 ]
  %76 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 %49), !nosanitize !8
  %77 = extractvalue { i64, i1 } %76, 1, !nosanitize !8
  br i1 %77, label %78, label %79, !prof !9, !nosanitize !8

78:                                               ; preds = %74
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

79:                                               ; preds = %74
  %80 = extractvalue { i64, i1 } %76, 0, !nosanitize !8
  br label %82

81:                                               ; preds = %19
  br label %82

82:                                               ; preds = %81, %79, %52, %51, %19
  %83 = phi i64 [ 0, %81 ], [ 1, %51 ], [ %26, %19 ], [ %80, %79 ], [ %26, %52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %84 = getelementptr inbounds nuw i8, ptr %40, i64 2064
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %86 = icmp ugt i64 %39, 127
  %87 = select i1 %86, i64 3, i64 2
  %88 = icmp ugt i64 %39, 32511
  %89 = zext i1 %88 to i64
  %90 = add nuw nsw i64 %87, %89
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 5100
  %92 = load i32, ptr %91, align 4, !tbaa !375
  %93 = getelementptr inbounds nuw i8, ptr %28, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store i32 31, ptr %5, align 4, !tbaa !4
  %94 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %5, ptr noundef %28, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #35
  switch i32 %92, label %98 [
    i32 0, label %95
    i32 1, label %107
  ]

95:                                               ; preds = %82
  %96 = load i32, ptr %5, align 4, !tbaa !4
  %97 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %41, i32 noundef %96) #35
  br label %104

98:                                               ; preds = %82
  %99 = and i32 %92, -2
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, ptr %5, align 4, !tbaa !4
  %103 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %84, ptr noundef %41, i32 noundef %102) #35
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi i64 [ %97, %95 ], [ %103, %101 ]
  %106 = icmp ult i64 %105, -119
  br i1 %106, label %107, label %121

107:                                              ; preds = %104, %98, %82
  %108 = phi i64 [ %105, %104 ], [ 0, %98 ], [ 0, %82 ]
  %109 = icmp eq ptr %34, %35
  br i1 %109, label %128, label %110

110:                                              ; preds = %117, %107
  %111 = phi i64 [ %118, %117 ], [ %108, %107 ]
  %112 = phi ptr [ %119, %117 ], [ %28, %107 ]
  %113 = load i8, ptr %112, align 1, !tbaa !164
  %114 = zext i8 %113 to i64
  %115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 %114), !nosanitize !8
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !8
  br i1 %116, label %127, label %117, !prof !9, !nosanitize !8

117:                                              ; preds = %110
  %118 = extractvalue { i64, i1 } %115, 0
  %119 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %120 = icmp ult ptr %119, %93
  br i1 %120, label %110, label %128, !llvm.loop !376

121:                                              ; preds = %104
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1152921504606846976, 1152921504606846976) %39, i64 10), !nosanitize !8
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !8
  br i1 %123, label %124, label %125, !prof !9, !nosanitize !8

124:                                              ; preds = %121
  call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

125:                                              ; preds = %121
  %126 = extractvalue { i64, i1 } %122, 0, !nosanitize !8
  br label %131

127:                                              ; preds = %110
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

128:                                              ; preds = %117, %107
  %129 = phi i64 [ %108, %107 ], [ %118, %117 ]
  %130 = lshr i64 %129, 3
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i64 [ %126, %125 ], [ %130, %128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %133 = load i32, ptr %85, align 8, !tbaa !377
  %134 = getelementptr inbounds nuw i8, ptr %40, i64 4288
  %135 = getelementptr inbounds nuw i8, ptr %30, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i32 35, ptr %4, align 4, !tbaa !4
  %136 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %4, ptr noundef %30, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #35
  switch i32 %133, label %140 [
    i32 0, label %137
    i32 1, label %149
  ]

137:                                              ; preds = %131
  %138 = load i32, ptr %4, align 4, !tbaa !4
  %139 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %138) #35
  br label %146

140:                                              ; preds = %131
  %141 = and i32 %133, -2
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, ptr %4, align 4, !tbaa !4
  %145 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %134, ptr noundef %41, i32 noundef %144) #35
  br label %146

146:                                              ; preds = %143, %137
  %147 = phi i64 [ %139, %137 ], [ %145, %143 ]
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %152

149:                                              ; preds = %146, %140, %131
  %150 = phi i64 [ %147, %146 ], [ 0, %140 ], [ 0, %131 ]
  %151 = icmp eq ptr %34, %35
  br i1 %151, label %173, label %158

152:                                              ; preds = %146
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1152921504606846976, 1152921504606846976) %39, i64 10), !nosanitize !8
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !8
  br i1 %154, label %155, label %156, !prof !9, !nosanitize !8

155:                                              ; preds = %152
  call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

156:                                              ; preds = %152
  %157 = extractvalue { i64, i1 } %153, 0, !nosanitize !8
  br label %176

158:                                              ; preds = %169, %149
  %159 = phi i64 [ %170, %169 ], [ %150, %149 ]
  %160 = phi ptr [ %171, %169 ], [ %30, %149 ]
  %161 = load i8, ptr %160, align 1, !tbaa !164
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !164
  %165 = zext i8 %164 to i64
  %166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %165), !nosanitize !8
  %167 = extractvalue { i64, i1 } %166, 1, !nosanitize !8
  br i1 %167, label %168, label %169, !prof !9, !nosanitize !8

168:                                              ; preds = %158
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

169:                                              ; preds = %158
  %170 = extractvalue { i64, i1 } %166, 0
  %171 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %172 = icmp ult ptr %171, %135
  br i1 %172, label %158, label %173, !llvm.loop !376

173:                                              ; preds = %169, %149
  %174 = phi i64 [ %150, %149 ], [ %170, %169 ]
  %175 = lshr i64 %174, 3
  br label %176

176:                                              ; preds = %173, %156
  %177 = phi i64 [ %157, %156 ], [ %175, %173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 %177), !nosanitize !8
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !8
  br i1 %179, label %180, label %181, !prof !9, !nosanitize !8

180:                                              ; preds = %176
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

181:                                              ; preds = %176
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !8
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %184 = load i32, ptr %183, align 8, !tbaa !196
  %185 = getelementptr inbounds nuw i8, ptr %40, i64 2836
  %186 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i32 52, ptr %3, align 4, !tbaa !4
  %187 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %3, ptr noundef %32, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #35
  switch i32 %184, label %191 [
    i32 0, label %188
    i32 1, label %200
  ]

188:                                              ; preds = %181
  %189 = load i32, ptr %3, align 4, !tbaa !4
  %190 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %189) #35
  br label %197

191:                                              ; preds = %181
  %192 = and i32 %184, -2
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, ptr %3, align 4, !tbaa !4
  %196 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %185, ptr noundef %41, i32 noundef %195) #35
  br label %197

197:                                              ; preds = %194, %188
  %198 = phi i64 [ %190, %188 ], [ %196, %194 ]
  %199 = icmp ult i64 %198, -119
  br i1 %199, label %200, label %203

200:                                              ; preds = %197, %191, %181
  %201 = phi i64 [ %198, %197 ], [ 0, %191 ], [ 0, %181 ]
  %202 = icmp eq ptr %34, %35
  br i1 %202, label %224, label %209

203:                                              ; preds = %197
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1152921504606846976, 1152921504606846976) %39, i64 10), !nosanitize !8
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !8
  br i1 %205, label %206, label %207, !prof !9, !nosanitize !8

206:                                              ; preds = %203
  call void @llvm.ubsantrap(i8 12) #33, !nosanitize !8
  unreachable, !nosanitize !8

207:                                              ; preds = %203
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !8
  br label %227

209:                                              ; preds = %220, %200
  %210 = phi i64 [ %221, %220 ], [ %201, %200 ]
  %211 = phi ptr [ %222, %220 ], [ %32, %200 ]
  %212 = load i8, ptr %211, align 1, !tbaa !164
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !164
  %216 = zext i8 %215 to i64
  %217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 %216), !nosanitize !8
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !8
  br i1 %218, label %219, label %220, !prof !9, !nosanitize !8

219:                                              ; preds = %209
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

220:                                              ; preds = %209
  %221 = extractvalue { i64, i1 } %217, 0
  %222 = getelementptr inbounds nuw i8, ptr %211, i64 1
  %223 = icmp ult ptr %222, %186
  br i1 %223, label %209, label %224, !llvm.loop !376

224:                                              ; preds = %220, %200
  %225 = phi i64 [ %201, %200 ], [ %221, %220 ]
  %226 = lshr i64 %225, 3
  br label %227

227:                                              ; preds = %224, %207
  %228 = phi i64 [ %208, %207 ], [ %226, %224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %228), !nosanitize !8
  %230 = extractvalue { i64, i1 } %229, 1, !nosanitize !8
  br i1 %230, label %231, label %232, !prof !9, !nosanitize !8

231:                                              ; preds = %227
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

232:                                              ; preds = %227
  %233 = extractvalue { i64, i1 } %229, 0, !nosanitize !8
  %234 = getelementptr inbounds nuw i8, ptr %1, i64 5248
  %235 = load i64, ptr %234, align 8, !tbaa !378
  %236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %235), !nosanitize !8
  %237 = extractvalue { i64, i1 } %236, 1, !nosanitize !8
  br i1 %237, label %238, label %239, !prof !9, !nosanitize !8

238:                                              ; preds = %232
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

239:                                              ; preds = %232
  %240 = extractvalue { i64, i1 } %236, 0, !nosanitize !8
  %241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 %90), !nosanitize !8
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !8
  br i1 %242, label %243, label %244, !prof !9, !nosanitize !8

243:                                              ; preds = %239
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

244:                                              ; preds = %239
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !8
  %246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %245, i64 %83), !nosanitize !8
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !8
  br i1 %247, label %248, label %249, !prof !9, !nosanitize !8

248:                                              ; preds = %244
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

249:                                              ; preds = %244
  %250 = extractvalue { i64, i1 } %246, 0, !nosanitize !8
  %251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 3), !nosanitize !8
  %252 = extractvalue { i64, i1 } %251, 1, !nosanitize !8
  br i1 %252, label %253, label %254, !prof !9, !nosanitize !8

253:                                              ; preds = %249
  call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

254:                                              ; preds = %249
  %255 = extractvalue { i64, i1 } %251, 0, !nosanitize !8
  br label %256

256:                                              ; preds = %254, %2
  %257 = phi i64 [ %255, %254 ], [ %17, %2 ]
  ret i64 %257
}

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i64 -70, 1) i64 @ZSTD_copyBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #24 {
  %4 = alloca %struct.repcodes_s, align 4
  %5 = load ptr, ptr %1, align 8, !tbaa !154
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i64, ptr %19, align 8, !tbaa !379
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !380
  %23 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %20
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 1), !nosanitize !8
  %25 = extractvalue { i64, i1 } %24, 0, !nosanitize !8
  %26 = extractvalue { i64, i1 } %24, 1, !nosanitize !8
  br i1 %26, label %27, label %28, !prof !9, !nosanitize !8

27:                                               ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = load i64, ptr %29, align 8, !tbaa !381
  %31 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %20), !nosanitize !8
  %32 = extractvalue { i64, i1 } %31, 1, !nosanitize !8
  br i1 %32, label %33, label %34, !prof !9, !nosanitize !8

33:                                               ; preds = %28
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

34:                                               ; preds = %28
  %35 = extractvalue { i64, i1 } %31, 0, !nosanitize !8
  %36 = icmp ugt i64 %25, %35
  br i1 %36, label %154, label %37

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %38 = icmp eq ptr %7, %5
  br i1 %38, label %138, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %4, align 4
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %42 = load i32, ptr %41, align 4, !tbaa !168
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %47 = load i32, ptr %45, align 4
  %48 = load i32, ptr %46, align 4
  br label %49

49:                                               ; preds = %134, %39
  %50 = phi i32 [ %48, %39 ], [ %127, %134 ]
  %51 = phi i32 [ %47, %39 ], [ %128, %134 ]
  %52 = phi i64 [ 0, %39 ], [ %135, %134 ]
  %53 = phi i64 [ 0, %39 ], [ %136, %134 ]
  %54 = phi i32 [ %40, %39 ], [ %129, %134 ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %53
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 4
  %57 = load i16, ptr %56, align 4, !tbaa !159
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %53
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 4
  store i32 %58, ptr %60, align 4, !tbaa !184
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 6
  %62 = load i16, ptr %61, align 2, !tbaa !163
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %63, 3
  %65 = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i32 %64, ptr %65, align 4, !tbaa !183
  %66 = getelementptr inbounds nuw i8, ptr %59, i64 12
  store i32 0, ptr %66, align 4, !tbaa !382
  %67 = icmp eq i64 %53, %43
  br i1 %67, label %68, label %74

68:                                               ; preds = %49
  %69 = load i32, ptr %44, align 8, !tbaa !167
  switch i32 %69, label %74 [
    i32 1, label %70
    i32 2, label %72
  ]

70:                                               ; preds = %68
  %71 = or disjoint i32 %58, 65536
  store i32 %71, ptr %60, align 4, !tbaa !184
  br label %74

72:                                               ; preds = %68
  %73 = add nuw nsw i32 %63, 65539
  store i32 %73, ptr %65, align 4, !tbaa !183
  br label %74

74:                                               ; preds = %72, %70, %68, %49
  %75 = phi i32 [ %58, %68 ], [ %71, %70 ], [ %58, %72 ], [ %58, %49 ]
  %76 = load i32, ptr %55, align 4, !tbaa !162
  %77 = add i32 %76, -1
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  store i32 %76, ptr %66, align 4, !tbaa !382
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = zext nneg i32 %76 to i64
  %83 = getelementptr [4 x i8], ptr %4, i64 %82
  %84 = getelementptr i8, ptr %83, i64 -4
  %85 = load i32, ptr %84, align 4, !tbaa !4
  br label %105

86:                                               ; preds = %79
  %87 = icmp eq i32 %76, 3
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !nosanitize !8
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !8
  br i1 %90, label %91, label %92, !prof !9, !nosanitize !8

91:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

92:                                               ; preds = %88
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !8
  br label %105

94:                                               ; preds = %86
  %95 = zext nneg i32 %76 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !4
  br label %105

98:                                               ; preds = %74
  %99 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 3), !nosanitize !8
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !8
  br i1 %100, label %101, label %102, !prof !9, !nosanitize !8

101:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

102:                                              ; preds = %98
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !8
  store i32 %103, ptr %59, align 4, !tbaa !181
  store i32 %51, ptr %46, align 4, !tbaa !4
  store i32 %54, ptr %45, align 4, !tbaa !4
  %104 = add i32 %76, -3
  br label %123

105:                                              ; preds = %94, %92, %81
  %106 = phi i32 [ %97, %94 ], [ %93, %92 ], [ %85, %81 ]
  store i32 %106, ptr %59, align 4, !tbaa !181
  %107 = icmp ne i16 %57, 0
  %108 = sext i1 %107 to i32
  %109 = add nsw i32 %76, %108
  switch i32 %109, label %115 [
    i32 0, label %126
    i32 3, label %110
  ]

110:                                              ; preds = %105
  %111 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !nosanitize !8
  %112 = extractvalue { i32, i1 } %111, 0, !nosanitize !8
  %113 = extractvalue { i32, i1 } %111, 1, !nosanitize !8
  br i1 %113, label %114, label %119, !prof !9, !nosanitize !8

114:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

115:                                              ; preds = %105
  %116 = zext nneg i32 %109 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !4
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i32 [ %118, %115 ], [ %112, %110 ]
  %121 = icmp eq i32 %109, 1
  %122 = select i1 %121, i32 %50, i32 %51
  store i32 %122, ptr %46, align 4, !tbaa !4
  store i32 %54, ptr %45, align 4, !tbaa !4
  br label %123

123:                                              ; preds = %119, %102
  %124 = phi i32 [ %122, %119 ], [ %51, %102 ]
  %125 = phi i32 [ %120, %119 ], [ %104, %102 ]
  store i32 %125, ptr %4, align 4, !tbaa !4
  br label %126

126:                                              ; preds = %123, %105
  %127 = phi i32 [ %50, %105 ], [ %124, %123 ]
  %128 = phi i32 [ %51, %105 ], [ %54, %123 ]
  %129 = phi i32 [ %54, %105 ], [ %125, %123 ]
  %130 = zext nneg i32 %75 to i64
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %52, i64 %130), !nosanitize !8
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !8
  br i1 %132, label %133, label %134, !prof !9, !nosanitize !8

133:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

134:                                              ; preds = %126
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !8
  %136 = add nuw i64 %53, 1
  %137 = icmp eq i64 %136, %11
  br i1 %137, label %138, label %49, !llvm.loop !383

138:                                              ; preds = %134, %37
  %139 = phi i64 [ 0, %37 ], [ %135, %134 ]
  %140 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %18, i64 %139), !nosanitize !8
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !8
  br i1 %141, label %142, label %143, !prof !9, !nosanitize !8

142:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

143:                                              ; preds = %138
  %144 = extractvalue { i64, i1 } %140, 0, !nosanitize !8
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %11
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 4
  store i32 %145, ptr %147, align 4, !tbaa !184
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 8
  store i32 0, ptr %148, align 4, !tbaa !183
  store i32 0, ptr %146, align 4, !tbaa !181
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 %25), !nosanitize !8
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !8
  br i1 %150, label %151, label %152, !prof !9, !nosanitize !8

151:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

152:                                              ; preds = %143
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !8
  store i64 %153, ptr %19, align 8, !tbaa !379
  br label %154

154:                                              ; preds = %152, %34
  %155 = phi i64 [ 0, %152 ], [ -70, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i64 %155
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) unnamed_addr #30 {
  %12 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2064
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 4288
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 2836
  %18 = load ptr, ptr %4, align 8, !tbaa !154
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !158
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !157
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 212
  %33 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 212), !nosanitize !8
  %34 = extractvalue { i64, i1 } %33, 0, !nosanitize !8
  %35 = extractvalue { i64, i1 } %33, 1, !nosanitize !8
  br i1 %35, label %36, label %37, !prof !9, !nosanitize !8

36:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

37:                                               ; preds = %11
  %38 = icmp eq ptr %20, %18
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = udiv i64 %3, %24
  %41 = icmp ugt i64 %40, 19
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ 1, %37 ], [ %42, %39 ]
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %46 = load i32, ptr %45, align 8, !tbaa !99
  switch i32 %46, label %48 [
    i32 1, label %55
    i32 2, label %47
  ]

47:                                               ; preds = %43
  br label %55

48:                                               ; preds = %43
  %49 = icmp eq i32 %14, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %52 = load i32, ptr %51, align 4, !tbaa !93
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %50, %48, %47, %43
  %56 = phi i32 [ 0, %43 ], [ 1, %47 ], [ 0, %48 ], [ %54, %50 ]
  %57 = tail call i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %32, i64 noundef %34, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %56, i32 noundef %44, i32 noundef %10) #35
  %58 = icmp ult i64 %57, -119
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  br i1 %58, label %60, label %140

60:                                               ; preds = %55
  %61 = ptrtoint ptr %31 to i64
  %62 = sub nsw i64 %1, %57
  %63 = icmp slt i64 %62, 4
  br i1 %63, label %140, label %64

64:                                               ; preds = %60
  %65 = icmp ult i64 %24, 128
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = trunc nuw nsw i64 %24 to i8
  %68 = getelementptr inbounds nuw i8, ptr %59, i64 1
  store i8 %67, ptr %59, align 1, !tbaa !164
  br label %83

69:                                               ; preds = %64
  %70 = icmp ult i64 %24, 32512
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = lshr i64 %24, 8
  %73 = trunc nuw nsw i64 %72 to i8
  %74 = or disjoint i8 %73, -128
  store i8 %74, ptr %59, align 1, !tbaa !164
  %75 = trunc i64 %24 to i8
  %76 = getelementptr inbounds nuw i8, ptr %59, i64 1
  store i8 %75, ptr %76, align 1, !tbaa !164
  %77 = getelementptr inbounds nuw i8, ptr %59, i64 2
  br label %83

78:                                               ; preds = %69
  store i8 -1, ptr %59, align 1, !tbaa !164
  %79 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %80 = trunc i64 %24 to i16
  %81 = add i16 %80, -32512
  store i16 %81, ptr %79, align 1, !tbaa !199
  %82 = getelementptr inbounds nuw i8, ptr %59, i64 3
  br label %83

83:                                               ; preds = %78, %71, %66
  %84 = phi ptr [ %68, %66 ], [ %77, %71 ], [ %82, %78 ]
  br i1 %38, label %85, label %90

85:                                               ; preds = %83
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %15, ptr noundef nonnull align 8 dereferenceable(3552) %86, i64 3552, i1 false)
  %87 = ptrtoint ptr %84 to i64
  %88 = ptrtoint ptr %0 to i64
  %89 = sub i64 %87, %88
  br label %140

90:                                               ; preds = %83
  %91 = getelementptr inbounds nuw i8, ptr %84, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %92 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %4, i64 noundef %24, ptr noundef nonnull %92, ptr noundef nonnull %15, ptr noundef nonnull %91, ptr noundef nonnull %31, i32 noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %32, i64 noundef %34)
  %93 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %94 = load i64, ptr %93, align 8, !tbaa !331
  %95 = icmp ult i64 %94, -119
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = load i32, ptr %12, align 8, !tbaa !330
  %98 = shl i32 %97, 6
  %99 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %100 = load i32, ptr %99, align 4, !tbaa !332
  %101 = shl i32 %100, 4
  %102 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %98, i32 %101), !nosanitize !8
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !8
  br i1 %103, label %104, label %105, !prof !9, !nosanitize !8

104:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

105:                                              ; preds = %96
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !8
  %107 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %108 = load i32, ptr %107, align 8, !tbaa !333
  %109 = shl i32 %108, 2
  %110 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 %109), !nosanitize !8
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !8
  br i1 %111, label %112, label %114, !prof !9, !nosanitize !8

112:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

113:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %140

114:                                              ; preds = %105
  %115 = extractvalue { i32, i1 } %110, 0, !nosanitize !8
  %116 = trunc i32 %115 to i8
  store i8 %116, ptr %84, align 1, !tbaa !164
  %117 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %118 = load i64, ptr %117, align 8, !tbaa !327
  %119 = getelementptr inbounds nuw i8, ptr %91, i64 %94
  %120 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %121 = load i32, ptr %120, align 8, !tbaa !329
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %122 = ptrtoint ptr %119 to i64
  %123 = sub i64 %61, %122
  %124 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %119, i64 noundef %123, ptr noundef nonnull %17, ptr noundef %30, ptr noundef nonnull %15, ptr noundef %26, ptr noundef nonnull %16, ptr noundef %28, ptr noundef %18, i64 noundef %24, i32 noundef %121, i32 noundef %10) #35
  %125 = icmp ult i64 %124, -119
  br i1 %125, label %126, label %140

126:                                              ; preds = %114
  %127 = getelementptr inbounds nuw i8, ptr %119, i64 %124
  %128 = icmp eq i64 %118, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %118, i64 %124), !nosanitize !8
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !8
  br i1 %131, label %132, label %133, !prof !9, !nosanitize !8

132:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

133:                                              ; preds = %129
  %134 = extractvalue { i64, i1 } %130, 0, !nosanitize !8
  %135 = icmp ult i64 %134, 4
  br i1 %135, label %140, label %136

136:                                              ; preds = %133, %126
  %137 = ptrtoint ptr %127 to i64
  %138 = ptrtoint ptr %0 to i64
  %139 = sub i64 %137, %138
  br label %140

140:                                              ; preds = %136, %133, %114, %113, %85, %60, %55
  %141 = phi i64 [ %57, %55 ], [ %89, %85 ], [ %139, %136 ], [ -70, %60 ], [ %94, %113 ], [ 0, %133 ], [ %124, %114 ]
  ret i64 %141
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #4 {
  %12 = icmp eq ptr %5, null
  %13 = icmp ult i64 %6, 8
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = icmp eq i32 %7, 2
  %17 = select i1 %16, i64 -32, i64 0
  br label %46

18:                                               ; preds = %11
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %20, align 8, !tbaa !150
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %21, align 4, !tbaa !151
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %22, align 8, !tbaa !152
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %23, align 4, !tbaa !153
  %24 = icmp eq i32 %7, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %46

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 1, !tbaa !4
  %28 = icmp eq i32 %27, -332356553
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  switch i32 %7, label %31 [
    i32 0, label %30
    i32 2, label %46
  ]

30:                                               ; preds = %29
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %46

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %33 = load i32, ptr %32, align 8, !tbaa !96
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %37 = load i32, ptr %36, align 1, !tbaa !4
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i64 [ %38, %35 ], [ 0, %31 ]
  %41 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6)
  %42 = icmp ult i64 %41, -119
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 %41
  %45 = sub nsw i64 %6, %41
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %44, i64 noundef %45, i32 noundef %8, i32 noundef range(i32 0, 2) %9)
  br label %46

46:                                               ; preds = %43, %39, %30, %29, %25, %15
  %47 = phi i64 [ %17, %15 ], [ -32, %29 ], [ 0, %25 ], [ 0, %30 ], [ %41, %39 ], [ %40, %43 ]
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #4 {
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i32 %11, 1
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  %15 = getelementptr i8, ptr %3, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  %19 = icmp ne i32 %7, 0
  %20 = and i1 %19, %18
  %21 = select i1 %20, i64 -16777214, i64 -3670015998
  %22 = select i1 %20, i64 16777214, i64 3670015998
  %23 = icmp ugt i64 %5, %22
  %24 = getelementptr inbounds i8, ptr %9, i64 %21
  %25 = tail call i64 @llvm.umin.i64(i64 %5, i64 %22)
  %26 = select i1 %23, ptr %24, ptr %4
  %27 = icmp eq i64 %5, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %8
  %29 = load ptr, ptr %0, align 8, !tbaa !206
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !207
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %35 = load i32, ptr %34, align 4, !tbaa !208
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load i32, ptr %36, align 8, !tbaa !209
  br label %58

38:                                               ; preds = %28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !210
  %41 = ptrtoint ptr %29 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !209
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %45, ptr %46, align 4, !tbaa !208
  %47 = trunc i64 %43 to i32
  store i32 %47, ptr %44, align 8, !tbaa !209
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %40, ptr %48, align 8, !tbaa !207
  %49 = sub i64 0, %43
  %50 = getelementptr inbounds i8, ptr %26, i64 %49
  store ptr %50, ptr %39, align 8, !tbaa !210
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 %45), !nosanitize !8
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !8
  br i1 %52, label %53, label %54, !prof !9, !nosanitize !8

53:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

54:                                               ; preds = %38
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !8
  %56 = icmp ult i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 %47, ptr %46, align 4, !tbaa !208
  br label %58

58:                                               ; preds = %57, %54, %31
  %59 = phi i32 [ %37, %31 ], [ %47, %57 ], [ %47, %54 ]
  %60 = phi i32 [ %35, %31 ], [ %47, %57 ], [ %45, %54 ]
  %61 = phi ptr [ %33, %31 ], [ %40, %57 ], [ %40, %54 ]
  %62 = getelementptr inbounds nuw i8, ptr %26, i64 %25
  store ptr %62, ptr %0, align 8, !tbaa !206
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 %63
  %65 = icmp ugt ptr %62, %64
  %66 = zext i32 %59 to i64
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 %66
  %68 = icmp ult ptr %26, %67
  %69 = and i1 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %72 = ptrtoint ptr %62 to i64
  %73 = ptrtoint ptr %61 to i64
  %74 = sub i64 %72, %73
  %75 = tail call i64 @llvm.umin.i64(i64 %74, i64 %66)
  %76 = trunc nuw i64 %75 to i32
  store i32 %76, ptr %71, align 4, !tbaa !208
  br label %77

77:                                               ; preds = %70, %58
  br i1 %14, label %79, label %141

78:                                               ; preds = %8
  br i1 %14, label %127, label %141

79:                                               ; preds = %77
  %80 = load ptr, ptr %1, align 8, !tbaa !206
  %81 = icmp eq ptr %26, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !207
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %86 = load i32, ptr %85, align 4, !tbaa !208
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %88 = load i32, ptr %87, align 8, !tbaa !209
  br label %109

89:                                               ; preds = %79
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %91 = load ptr, ptr %90, align 8, !tbaa !210
  %92 = ptrtoint ptr %80 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %96 = load i32, ptr %95, align 8, !tbaa !209
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %96, ptr %97, align 4, !tbaa !208
  %98 = trunc i64 %94 to i32
  store i32 %98, ptr %95, align 8, !tbaa !209
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %91, ptr %99, align 8, !tbaa !207
  %100 = sub i64 0, %94
  %101 = getelementptr inbounds i8, ptr %26, i64 %100
  store ptr %101, ptr %90, align 8, !tbaa !210
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %98, i32 %96), !nosanitize !8
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !8
  br i1 %103, label %104, label %105, !prof !9, !nosanitize !8

104:                                              ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !8
  unreachable, !nosanitize !8

105:                                              ; preds = %89
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !8
  %107 = icmp ult i32 %106, 8
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 %98, ptr %97, align 4, !tbaa !208
  br label %109

109:                                              ; preds = %108, %105, %82
  %110 = phi i32 [ %88, %82 ], [ %98, %108 ], [ %98, %105 ]
  %111 = phi i32 [ %86, %82 ], [ %98, %108 ], [ %96, %105 ]
  %112 = phi ptr [ %84, %82 ], [ %91, %108 ], [ %91, %105 ]
  store ptr %62, ptr %1, align 8, !tbaa !206
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 %113
  %115 = icmp ugt ptr %62, %114
  %116 = zext i32 %110 to i64
  %117 = getelementptr inbounds nuw i8, ptr %112, i64 %116
  %118 = icmp ult ptr %26, %117
  %119 = and i1 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %122 = ptrtoint ptr %62 to i64
  %123 = ptrtoint ptr %112 to i64
  %124 = sub i64 %122, %123
  %125 = tail call i64 @llvm.umin.i64(i64 %124, i64 %116)
  %126 = trunc nuw i64 %125 to i32
  store i32 %126, ptr %121, align 4, !tbaa !208
  br label %127

127:                                              ; preds = %120, %109, %78
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !97
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %133 = load ptr, ptr %132, align 8, !tbaa !384
  %134 = ptrtoint ptr %9 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %131, %127
  %139 = phi i32 [ %137, %131 ], [ 0, %127 ]
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %139, ptr %140, align 8, !tbaa !385
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #35
  br label %141

141:                                              ; preds = %138, %78, %77
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %143 = load i32, ptr %142, align 4, !tbaa !89
  %144 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %143, i32 3), !nosanitize !8
  %145 = extractvalue { i32, i1 } %144, 0, !nosanitize !8
  %146 = extractvalue { i32, i1 } %144, 1, !nosanitize !8
  br i1 %146, label %147, label %148, !prof !9, !nosanitize !8

147:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

148:                                              ; preds = %141
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %150 = load i32, ptr %149, align 4, !tbaa !90
  %151 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %150, i32 1), !nosanitize !8
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !8
  br i1 %152, label %153, label %154, !prof !9, !nosanitize !8

153:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !8
  unreachable, !nosanitize !8

154:                                              ; preds = %148
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !8
  %156 = tail call i32 @llvm.umax.i32(i32 %145, i32 %155)
  %157 = tail call i32 @llvm.umin.i32(i32 %156, i32 31)
  %158 = shl nuw i32 1, %157
  %159 = zext i32 %158 to i64
  %160 = icmp samesign ugt i64 %25, %159
  %161 = sub nsw i64 0, %159
  %162 = getelementptr inbounds i8, ptr %9, i64 %161
  %163 = select i1 %160, ptr %162, ptr %26
  %164 = tail call i64 @llvm.umin.i64(i64 %25, i64 %159)
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %166 = load ptr, ptr %165, align 8, !tbaa !341
  %167 = ptrtoint ptr %163 to i64
  %168 = ptrtoint ptr %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %170, ptr %171, align 4, !tbaa !211
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %173 = load i32, ptr %172, align 8, !tbaa !97
  %174 = icmp eq i32 %173, 0
  %175 = ptrtoint ptr %9 to i64
  %176 = sub i64 %175, %168
  %177 = trunc i64 %176 to i32
  %178 = select i1 %174, i32 %177, i32 0
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %178, ptr %179, align 8, !tbaa !267
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 164
  %181 = load i32, ptr %180, align 4, !tbaa !112
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %181, ptr %182, align 8, !tbaa !205
  %183 = icmp samesign ult i64 %164, 9
  br i1 %183, label %215, label %184

184:                                              ; preds = %154
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %163, ptr noundef nonnull %9)
  %185 = load i32, ptr %15, align 4, !tbaa !94
  switch i32 %185, label %210 [
    i32 1, label %186
    i32 2, label %187
    i32 3, label %188
    i32 4, label %188
    i32 5, label %188
    i32 6, label %208
    i32 7, label %208
    i32 8, label %208
    i32 9, label %208
  ]

186:                                              ; preds = %184
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #35
  br label %210

187:                                              ; preds = %184
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #35
  br label %210

188:                                              ; preds = %184, %184, %184
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %190 = load i32, ptr %189, align 4, !tbaa !335
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %193) #35
  br label %210

194:                                              ; preds = %188
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %196 = load i32, ptr %195, align 8, !tbaa !80
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, ptr %142, align 4, !tbaa !89
  %200 = zext nneg i32 %199 to i64
  %201 = shl nuw i64 1, %200
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %203 = load ptr, ptr %202, align 8, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %203, i8 0, i64 %201, i1 false)
  %204 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %204) #35
  br label %210

205:                                              ; preds = %194
  %206 = getelementptr inbounds i8, ptr %9, i64 -8
  %207 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %206) #35
  br label %210

208:                                              ; preds = %184, %184, %184, %184
  %209 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %209, ptr noundef nonnull %9) #35
  br label %210

210:                                              ; preds = %208, %205, %198, %192, %187, %186, %184
  %211 = load ptr, ptr %165, align 8, !tbaa !341
  %212 = ptrtoint ptr %211 to i64
  %213 = sub i64 %175, %212
  %214 = trunc i64 %213 to i32
  store i32 %214, ptr %171, align 4, !tbaa !211
  br label %215

215:                                              ; preds = %210, %154
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #16

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

attributes #0 = { nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nomerge noreturn nounwind }
attributes #34 = { nounwind memory(none) }
attributes #35 = { nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(0,1) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{i64 1850568}
!11 = !{i64 1850666}
!12 = !{i64 1850780}
!13 = !{!14, !5, i64 8}
!14 = !{!"ZSTD_CCtx_s", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !15, i64 240, !15, i64 464, !5, i64 688, !18, i64 696, !22, i64 704, !18, i64 776, !23, i64 784, !23, i64 792, !23, i64 800, !24, i64 808, !20, i64 896, !25, i64 920, !18, i64 928, !26, i64 936, !5, i64 968, !5, i64 972, !27, i64 976, !30, i64 1056, !21, i64 3168, !18, i64 3176, !32, i64 3184, !33, i64 3224, !21, i64 3544, !18, i64 3552, !5, i64 3560, !29, i64 3568, !18, i64 3576, !18, i64 3584, !18, i64 3592, !18, i64 3600, !29, i64 3608, !18, i64 3616, !18, i64 3624, !18, i64 3632, !5, i64 3640, !5, i64 3644, !38, i64 3648, !18, i64 3672, !18, i64 3680, !39, i64 3688, !40, i64 3728, !41, i64 3736, !23, i64 3760, !42, i64 3768, !21, i64 5264, !18, i64 5272}
!15 = !{!"ZSTD_CCtx_params_s", !5, i64 0, !16, i64 4, !17, i64 32, !5, i64 44, !5, i64 48, !18, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !18, i64 80, !5, i64 88, !5, i64 92, !19, i64 96, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !18, i64 152, !5, i64 160, !5, i64 164, !20, i64 168, !5, i64 192, !5, i64 196, !21, i64 200, !21, i64 208, !5, i64 216}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!18 = !{!"long", !6, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!20 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !5, i64 60, !5, i64 64, !5, i64 68}
!23 = !{!"long long", !6, i64 0}
!24 = !{!"XXH64_state_s", !18, i64 0, !6, i64 8, !6, i64 40, !5, i64 72, !5, i64 76, !18, i64 80}
!25 = !{!"p1 _ZTS10POOL_ctx_s", !21, i64 0}
!26 = !{!"", !5, i64 0, !21, i64 8, !18, i64 16, !18, i64 24}
!27 = !{!"", !28, i64 0, !28, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !18, i64 56, !18, i64 64, !5, i64 72, !5, i64 76}
!28 = !{!"p1 _ZTS8SeqDef_s", !21, i64 0}
!29 = !{!"p1 omnipotent char", !21, i64 0}
!30 = !{!"", !31, i64 0, !21, i64 40, !5, i64 48, !29, i64 56, !6, i64 64, !6, i64 576}
!31 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!32 = !{!"", !21, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!33 = !{!"", !21, i64 0, !21, i64 8, !34, i64 16}
!34 = !{!"ZSTD_MatchState_t", !31, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !29, i64 56, !6, i64 64, !18, i64 96, !5, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !5, i64 136, !5, i64 140, !36, i64 144, !37, i64 248, !16, i64 256, !21, i64 288, !5, i64 296, !5, i64 300}
!35 = !{!"p1 int", !21, i64 0}
!36 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !21, i64 88, !5, i64 96}
!37 = !{!"p1 _ZTS17ZSTD_MatchState_t", !21, i64 0}
!38 = !{!"ZSTD_inBuffer_s", !21, i64 0, !18, i64 8, !18, i64 16}
!39 = !{!"", !21, i64 0, !21, i64 8, !18, i64 16, !5, i64 24, !40, i64 32}
!40 = !{!"p1 _ZTS12ZSTD_CDict_s", !21, i64 0}
!41 = !{!"ZSTD_prefixDict_s", !21, i64 0, !18, i64 8, !5, i64 16}
!42 = !{!"", !27, i64 0, !27, i64 80, !27, i64 160, !27, i64 240, !27, i64 320, !6, i64 400, !43, i64 1184}
!43 = !{!"", !44, i64 0, !45, i64 144}
!44 = !{!"", !5, i64 0, !6, i64 4, !18, i64 136}
!45 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !18, i64 152, !18, i64 160}
!46 = !{!15, !5, i64 44}
!47 = !{!15, !5, i64 32}
!48 = !{!20, !21, i64 0}
!49 = !{!20, !21, i64 8}
!50 = distinct !{null}
!51 = !{!21, !21, i64 0}
!52 = !{!14, !18, i64 928}
!53 = !{!22, !6, i64 56}
!54 = !{!22, !21, i64 16}
!55 = !{!22, !21, i64 24}
!56 = !{!22, !21, i64 32}
!57 = !{!14, !21, i64 3224}
!58 = !{!14, !21, i64 3232}
!59 = !{!14, !21, i64 3544}
!60 = !{!14, !18, i64 3552}
!61 = !{!22, !21, i64 0}
!62 = !{!22, !21, i64 8}
!63 = distinct !{null, null, null}
!64 = distinct !{null}
!65 = !{!14, !21, i64 704}
!66 = !{!67, !21, i64 32}
!67 = !{!"ZSTD_CDict_s", !21, i64 0, !18, i64 8, !5, i64 16, !35, i64 24, !22, i64 32, !34, i64 104, !68, i64 408, !20, i64 6040, !5, i64 6064, !5, i64 6068, !5, i64 6072}
!68 = !{!"", !69, i64 0, !6, i64 5616}
!69 = !{!"", !70, i64 0, !71, i64 2064}
!70 = !{!"", !6, i64 0, !5, i64 2056}
!71 = !{!"", !6, i64 0, !6, i64 772, !6, i64 2224, !5, i64 3540, !5, i64 3544, !5, i64 3548}
!72 = !{!16, !5, i64 0}
!73 = !{!16, !5, i64 4}
!74 = !{!16, !5, i64 8}
!75 = !{!16, !5, i64 12}
!76 = !{!16, !5, i64 16}
!77 = !{!16, !5, i64 24}
!78 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4}
!79 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!80 = !{!15, !5, i64 160}
!81 = !{!15, !5, i64 140}
!82 = !{!15, !5, i64 96}
!83 = !{!15, !18, i64 152}
!84 = !{!15, !5, i64 216}
!85 = !{!14, !5, i64 3640}
!86 = !{!14, !5, i64 4}
!87 = !{!15, !5, i64 0}
!88 = !{!15, !5, i64 4}
!89 = !{!15, !5, i64 12}
!90 = !{!15, !5, i64 8}
!91 = !{!15, !5, i64 16}
!92 = !{!15, !5, i64 20}
!93 = !{!15, !5, i64 24}
!94 = !{!15, !5, i64 28}
!95 = !{!15, !5, i64 36}
!96 = !{!15, !5, i64 40}
!97 = !{!15, !5, i64 48}
!98 = !{!15, !5, i64 68}
!99 = !{!15, !5, i64 72}
!100 = !{!15, !5, i64 120}
!101 = !{!15, !5, i64 100}
!102 = !{!15, !5, i64 108}
!103 = !{!15, !5, i64 104}
!104 = !{!15, !5, i64 112}
!105 = !{!15, !18, i64 56}
!106 = !{!15, !5, i64 64}
!107 = !{!15, !5, i64 124}
!108 = !{!15, !5, i64 128}
!109 = !{!15, !5, i64 132}
!110 = !{!15, !5, i64 136}
!111 = !{!15, !5, i64 144}
!112 = !{!15, !5, i64 164}
!113 = !{!15, !5, i64 192}
!114 = !{!15, !5, i64 196}
!115 = !{!15, !5, i64 76}
!116 = !{!14, !40, i64 3728}
!117 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4, i64 28, i64 4, !4, i64 32, i64 4, !4, i64 36, i64 4, !4, i64 40, i64 4, !4, i64 44, i64 4, !4, i64 48, i64 4, !4, i64 56, i64 8, !118, i64 64, i64 4, !4, i64 68, i64 4, !4, i64 72, i64 4, !4, i64 76, i64 4, !4, i64 80, i64 8, !118, i64 88, i64 4, !4, i64 92, i64 4, !4, i64 96, i64 4, !4, i64 100, i64 4, !4, i64 104, i64 4, !4, i64 108, i64 4, !4, i64 112, i64 4, !4, i64 116, i64 4, !4, i64 120, i64 4, !4, i64 124, i64 4, !4, i64 128, i64 4, !4, i64 132, i64 4, !4, i64 136, i64 4, !4, i64 140, i64 4, !4, i64 144, i64 4, !4, i64 152, i64 8, !118, i64 160, i64 4, !4, i64 164, i64 4, !4, i64 168, i64 8, !51, i64 176, i64 8, !51, i64 184, i64 8, !51, i64 192, i64 4, !4, i64 196, i64 4, !4, i64 200, i64 8, !51, i64 208, i64 8, !51, i64 216, i64 4, !4}
!118 = !{!18, !18, i64 0}
!119 = !{!14, !23, i64 784}
!120 = !{!14, !21, i64 3688}
!121 = !{!14, !21, i64 3696}
!122 = !{!14, !18, i64 3704}
!123 = !{!14, !5, i64 3712}
!124 = !{!14, !40, i64 3720}
!125 = distinct !{ptr @ZSTD_freeCDict, null, null}
!126 = distinct !{ptr @ZSTD_freeCDict, null}
!127 = distinct !{ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!128 = !{!14, !25, i64 920}
!129 = !{!14, !21, i64 3736}
!130 = !{!14, !18, i64 3744}
!131 = !{!14, !5, i64 3752}
!132 = !{!133}
!133 = distinct !{!133, !134, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!134 = distinct !{!134, !"ZSTD_makeCCtxParamsFromCParams"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!137 = distinct !{!137, !"ZSTD_makeCCtxParamsFromCParams"}
!138 = !{!14, !29, i64 3568}
!139 = !{!14, !18, i64 3592}
!140 = !{!14, !18, i64 3584}
!141 = !{!14, !23, i64 792}
!142 = !{!143, !23, i64 0}
!143 = !{!"", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !5, i64 32, !5, i64 36}
!144 = !{!143, !23, i64 8}
!145 = !{!14, !23, i64 800}
!146 = !{!143, !23, i64 16}
!147 = !{!143, !23, i64 24}
!148 = !{!143, !5, i64 32}
!149 = !{!143, !5, i64 36}
!150 = !{!68, !5, i64 2056}
!151 = !{!68, !5, i64 5604}
!152 = !{!68, !5, i64 5608}
!153 = !{!68, !5, i64 5612}
!154 = !{!27, !28, i64 0}
!155 = !{!27, !29, i64 32}
!156 = !{!27, !29, i64 48}
!157 = !{!27, !29, i64 40}
!158 = !{!27, !28, i64 8}
!159 = !{!160, !161, i64 4}
!160 = !{!"SeqDef_s", !5, i64 0, !161, i64 4, !161, i64 6}
!161 = !{!"short", !6, i64 0}
!162 = !{!160, !5, i64 0}
!163 = !{!160, !161, i64 6}
!164 = !{!6, !6, i64 0}
!165 = distinct !{!165, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!27, !5, i64 72}
!168 = !{!27, !5, i64 76}
!169 = !{!27, !29, i64 16}
!170 = !{!27, !29, i64 24}
!171 = !{!172, !21, i64 0}
!172 = !{!"ZSTD_outBuffer_s", !21, i64 0, !18, i64 8, !18, i64 16}
!173 = !{!172, !18, i64 8}
!174 = !{!172, !18, i64 16}
!175 = !{!38, !21, i64 0}
!176 = !{!38, !18, i64 8}
!177 = !{!38, !18, i64 16}
!178 = !{!14, !5, i64 140}
!179 = !{!14, !5, i64 144}
!180 = !{!14, !18, i64 952}
!181 = !{!182, !5, i64 0}
!182 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!183 = !{!182, !5, i64 8}
!184 = !{!182, !5, i64 4}
!185 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4}
!186 = distinct !{!186, !166}
!187 = !{!70, !5, i64 2056}
!188 = !{!44, !5, i64 0}
!189 = !{!43, !18, i64 136}
!190 = !{!71, !5, i64 3548}
!191 = !{!192}
!192 = distinct !{!192, !193, !"ZSTD_buildDummySequencesStatistics: argument 0"}
!193 = distinct !{!193, !"ZSTD_buildDummySequencesStatistics"}
!194 = !{!71, !5, i64 3540}
!195 = !{!71, !5, i64 3544}
!196 = !{!45, !5, i64 8}
!197 = !{!45, !18, i64 160}
!198 = !{!43, !18, i64 296}
!199 = !{!161, !161, i64 0}
!200 = !{!14, !21, i64 3184}
!201 = !{!14, !18, i64 3208}
!202 = !{!14, !18, i64 3216}
!203 = !{!14, !5, i64 0}
!204 = !{!14, !5, i64 688}
!205 = !{!34, !5, i64 136}
!206 = !{!31, !29, i64 0}
!207 = !{!31, !29, i64 16}
!208 = !{!31, !5, i64 28}
!209 = !{!31, !5, i64 24}
!210 = !{!31, !29, i64 8}
!211 = !{!34, !5, i64 44}
!212 = !{!14, !5, i64 336}
!213 = !{!14, !18, i64 776}
!214 = !{!14, !5, i64 244}
!215 = !{!14, !5, i64 276}
!216 = !{!14, !5, i64 384}
!217 = !{!14, !5, i64 268}
!218 = !{!37, !37, i64 0}
!219 = !{!34, !5, i64 28}
!220 = !{!14, !5, i64 968}
!221 = !{!14, !5, i64 936}
!222 = !{!14, !28, i64 984}
!223 = !{!14, !28, i64 976}
!224 = !{!225, !35, i64 0}
!225 = !{!"", !35, i64 0, !18, i64 8}
!226 = !{!225, !18, i64 8}
!227 = !{i64 0, i64 8, !228, i64 8, i64 8, !228, i64 16, i64 8, !229, i64 24, i64 8, !229, i64 32, i64 8, !229, i64 40, i64 8, !229, i64 48, i64 8, !229, i64 56, i64 8, !118, i64 64, i64 8, !118, i64 72, i64 4, !4, i64 76, i64 4, !4}
!228 = !{!28, !28, i64 0}
!229 = !{!29, !29, i64 0}
!230 = distinct !{!230, !166}
!231 = distinct !{!231, !166}
!232 = distinct !{!232, !166}
!233 = distinct !{!233, !166}
!234 = !{!14, !18, i64 392}
!235 = distinct !{!235, !166, !236, !237}
!236 = !{!"llvm.loop.unroll.runtime.disable"}
!237 = !{!"llvm.loop.isvectorized", i32 1}
!238 = !{!14, !23, i64 3760}
!239 = !{!67, !18, i64 8}
!240 = !{!67, !5, i64 244}
!241 = !{!67, !5, i64 6072}
!242 = !{!14, !18, i64 3576}
!243 = !{!14, !18, i64 3616}
!244 = !{!14, !5, i64 316}
!245 = !{!246, !5, i64 0}
!246 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !18, i64 16, !18, i64 24, !18, i64 32, !247, i64 40, !248, i64 48, !249, i64 56}
!247 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !21, i64 0}
!248 = !{!"p1 _ZTS11ZSTD_CCtx_s", !21, i64 0}
!249 = !{!"p1 _ZTS11ZSTD_DCtx_s", !21, i64 0}
!250 = !{!246, !5, i64 4}
!251 = !{!246, !5, i64 8}
!252 = !{!14, !18, i64 696}
!253 = !{!246, !18, i64 16}
!254 = !{!246, !18, i64 24}
!255 = !{!246, !18, i64 32}
!256 = !{!246, !247, i64 40}
!257 = !{!246, !248, i64 48}
!258 = !{!"branch_weights", i32 1048575, i32 1}
!259 = distinct !{null, null}
!260 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!261 = !{!67, !5, i64 6068}
!262 = !{!67, !21, i64 0}
!263 = !{!67, !5, i64 16}
!264 = !{!67, !35, i64 24}
!265 = !{!34, !5, i64 48}
!266 = !{!34, !5, i64 300}
!267 = !{!34, !5, i64 40}
!268 = !{!34, !5, i64 196}
!269 = !{!34, !37, i64 248}
!270 = !{!22, !21, i64 48}
!271 = !{!22, !5, i64 64}
!272 = !{!34, !35, i64 112}
!273 = !{!34, !35, i64 128}
!274 = !{!34, !35, i64 120}
!275 = !{!22, !21, i64 40}
!276 = !{!34, !29, i64 56}
!277 = !{!34, !18, i64 96}
!278 = !{!34, !5, i64 52}
!279 = !{!67, !5, i64 6064}
!280 = distinct !{ptr @ZSTD_createCCtx_advanced, null}
!281 = distinct !{ptr @ZSTD_freeCCtx, null, null, null}
!282 = distinct !{ptr @ZSTD_freeCCtx, null}
!283 = distinct !{ptr @ZSTD_CCtx_loadDictionary, ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!284 = !{!14, !5, i64 364}
!285 = !{!14, !18, i64 3672}
!286 = !{!14, !18, i64 3600}
!287 = !{!14, !21, i64 3648}
!288 = !{!14, !18, i64 3656}
!289 = !{i64 0, i64 8, !51, i64 8, i64 8, !118, i64 16, i64 8, !118}
!290 = !{!14, !5, i64 16}
!291 = !{!39, !21, i64 8}
!292 = !{!39, !40, i64 32}
!293 = !{!67, !5, i64 384}
!294 = !{!14, !5, i64 368}
!295 = !{!14, !18, i64 3680}
!296 = distinct !{!296, !166}
!297 = !{!14, !18, i64 3624}
!298 = !{!14, !18, i64 3632}
!299 = !{!14, !5, i64 3644}
!300 = !{!14, !29, i64 3608}
!301 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!302 = distinct !{!302, !166}
!303 = !{!14, !18, i64 1032}
!304 = !{!"branch_weights", i32 1, i32 127}
!305 = !{!14, !5, i64 1048}
!306 = !{!14, !5, i64 1052}
!307 = !{!"branch_weights", !"expected", i32 1125985, i32 2146357663}
!308 = distinct !{!308, !166}
!309 = distinct !{!309, !166}
!310 = !{!311, !18, i64 0}
!311 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16}
!312 = !{!311, !18, i64 16}
!313 = !{!311, !18, i64 8}
!314 = !{!315}
!315 = distinct !{!315, !316, !"inBuffer_forEndFlush: argument 0"}
!316 = distinct !{!316, !"inBuffer_forEndFlush"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"inBuffer_forEndFlush: argument 0"}
!319 = distinct !{!319, !"inBuffer_forEndFlush"}
!320 = !{!15, !21, i64 208}
!321 = !{!15, !21, i64 200}
!322 = !{!19, !5, i64 0}
!323 = !{!22, !5, i64 60}
!324 = distinct !{null, null}
!325 = !{!22, !5, i64 68}
!326 = !{!14, !5, i64 3536}
!327 = !{!328, !18, i64 24}
!328 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !18, i64 16, !18, i64 24, !5, i64 32}
!329 = !{!328, !5, i64 32}
!330 = !{!328, !5, i64 0}
!331 = !{!328, !18, i64 16}
!332 = !{!328, !5, i64 4}
!333 = !{!328, !5, i64 8}
!334 = !{!31, !5, i64 32}
!335 = !{!34, !5, i64 140}
!336 = distinct !{!336, !166}
!337 = !{!14, !5, i64 260}
!338 = !{!34, !21, i64 232}
!339 = !{!14, !5, i64 312}
!340 = !{!34, !5, i64 240}
!341 = !{!34, !29, i64 8}
!342 = !{!14, !18, i64 3192}
!343 = !{!14, !5, i64 400}
!344 = !{!14, !21, i64 3168}
!345 = !{!32, !21, i64 0}
!346 = !{!14, !18, i64 3176}
!347 = !{!32, !18, i64 32}
!348 = !{!14, !21, i64 440}
!349 = !{!14, !21, i64 5264}
!350 = !{!14, !18, i64 5272}
!351 = !{!14, !5, i64 284}
!352 = distinct !{!352, !166}
!353 = !{!14, !5, i64 456}
!354 = !{!34, !21, i64 288}
!355 = !{!14, !5, i64 436}
!356 = !{!357, !5, i64 0}
!357 = !{!"", !5, i64 0, !5, i64 4, !18, i64 8}
!358 = !{!14, !5, i64 376}
!359 = !{!357, !18, i64 8}
!360 = distinct !{!360, !166}
!361 = distinct !{!361, !166, !237, !236}
!362 = !{!"branch_weights", i32 4, i32 28}
!363 = distinct !{!363, !166, !237, !236}
!364 = distinct !{!364, !365}
!365 = !{!"llvm.loop.unroll.disable"}
!366 = distinct !{!366, !166, !237}
!367 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!368 = distinct !{!368, !166}
!369 = distinct !{!369, !166}
!370 = !{i64 0, i64 12, !164}
!371 = distinct !{!371, !166}
!372 = !{!"branch_weights", i32 127, i32 134217473}
!373 = !{!43, !5, i64 0}
!374 = !{!44, !18, i64 136}
!375 = !{!45, !5, i64 4}
!376 = distinct !{!376, !166}
!377 = !{!45, !5, i64 0}
!378 = !{!45, !18, i64 152}
!379 = !{!26, !18, i64 16}
!380 = !{!26, !21, i64 8}
!381 = !{!26, !18, i64 24}
!382 = !{!182, !5, i64 12}
!383 = distinct !{!383, !166}
!384 = !{!30, !29, i64 8}
!385 = !{!30, !5, i64 48}
