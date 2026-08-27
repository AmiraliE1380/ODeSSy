; ModuleID = '/mydata/zstd/lib/compress/zstd_compress.c'
source_filename = "/mydata/zstd/lib/compress/zstd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_Sequence = type { i32, i32, i32, i32 }
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
%struct.ZSTD_SequencePosition = type { i32, i32, i64 }
%struct.BlockSummary = type { i64, i64, i64 }

@ZSTD_defaultCMem = internal constant %struct.ZSTD_customMem zeroinitializer, align 8
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
@ZSTD_defaultCParameters = internal unnamed_addr constant [4 x [23 x %struct.ZSTD_compressionParameters]] [[23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 19, i32 12, i32 13, i32 1, i32 6, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 19, i32 13, i32 14, i32 1, i32 7, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 20, i32 15, i32 16, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 21, i32 16, i32 17, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 18, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 19, i32 3, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 20, i32 4, i32 5, i32 8, i32 4 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 20, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 20, i32 21, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 5, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 6, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 23, i32 6, i32 5, i32 32, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 22, i32 4, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 23, i32 5, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 23, i32 23, i32 6, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 22, i32 5, i32 5, i32 48, i32 7 }, %struct.ZSTD_compressionParameters { i32 23, i32 23, i32 22, i32 5, i32 4, i32 64, i32 7 }, %struct.ZSTD_compressionParameters { i32 23, i32 23, i32 22, i32 6, i32 3, i32 64, i32 8 }, %struct.ZSTD_compressionParameters { i32 23, i32 24, i32 22, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 25, i32 25, i32 23, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 26, i32 26, i32 24, i32 7, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 27, i32 27, i32 25, i32 9, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 18, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 18, i32 13, i32 14, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 18, i32 14, i32 14, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 18, i32 16, i32 16, i32 1, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 18, i32 16, i32 17, i32 3, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 18, i32 17, i32 18, i32 5, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 5, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 5, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 7, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 16, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 3, i32 32, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 6, i32 3, i32 128, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 8 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 10, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 12, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 13, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 17, i32 12, i32 12, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 12, i32 13, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 13, i32 15, i32 1, i32 5, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 15, i32 16, i32 2, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 2, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 5, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 5, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 7, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 3, i32 4, i32 12, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 4, i32 3, i32 32, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 6, i32 3, i32 256, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 6, i32 3, i32 128, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 8, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 10, i32 3, i32 512, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 5, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 7, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 9, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 11, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 14, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 1, i32 5, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 1, i32 4, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 2, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 4, i32 4, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 3, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 8, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 5, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 9, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 3, i32 4, i32 12, i32 7 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 4, i32 3, i32 24, i32 7 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 5, i32 3, i32 32, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 6, i32 3, i32 64, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 5, i32 3, i32 48, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 6, i32 3, i32 128, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 8, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 8, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 9, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 10, i32 3, i32 999, i32 9 }]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 1, 0) i64 @ZSTD_compressBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -71777214294589697
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 8
  %5 = add nuw i64 %4, %0
  %6 = icmp ult i64 %0, 131072
  %7 = sub nuw nsw i64 131072, %0
  %8 = lshr i64 %7, 11
  %9 = select i1 %6, i64 %8, i64 0
  %10 = add i64 %5, %9
  %11 = freeze i64 %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1, %3
  br label %14

14:                                               ; preds = %3, %13
  %15 = phi i64 [ -72, %13 ], [ %11, %3 ]
  ret i64 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTD_createCCtx() local_unnamed_addr #2 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
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
  store i32 %18, ptr %19, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCCtx_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  %7 = xor i1 %3, %6
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  br i1 %3, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr %2(ptr noundef %11, i64 noundef 5280) #30
  br label %15

13:                                               ; preds = %8
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #31
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %20 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %24 = icmp ugt i32 %20, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
  %27 = extractvalue { i32, i32, i32 } %26, 1
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = lshr i32 %27, 8
  %32 = and i32 %31, 1
  br label %33

33:                                               ; preds = %18, %22, %25, %30
  %34 = phi i32 [ 0, %25 ], [ %32, %30 ], [ 0, %22 ], [ 0, %18 ]
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %34, ptr %35, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %36, i8 0, i64 224, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %37, align 4, !tbaa !44
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %38, align 8, !tbaa !45
  br label %39

39:                                               ; preds = %33, %15, %1
  %40 = phi ptr [ null, %1 ], [ %16, %33 ], [ null, %15 ]
  ret ptr %40
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
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
  store ptr %0, ptr %17, align 8, !tbaa !48
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %12, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %9, ptr %19, align 8, !tbaa !48
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %9, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %9, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %16, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %16, ptr %23, align 8, !tbaa !48
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %25, align 4, !tbaa !49
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 1, ptr %26, align 4, !tbaa !49
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %1, ptr %27, align 8, !tbaa !50
  %28 = add i64 %1, -5280
  %29 = sub i64 %28, %14
  %30 = icmp ult i64 %29, 20184
  br i1 %30, label %70, label %31

31:                                               ; preds = %11
  %32 = icmp samesign ult i64 %1, 10912
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %36

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 10912
  store ptr %35, ptr %19, align 8, !tbaa !52
  store ptr %35, ptr %20, align 8, !tbaa !53
  store ptr %35, ptr %21, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi ptr [ %9, %33 ], [ %35, %34 ]
  %38 = phi ptr [ null, %33 ], [ %9, %34 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store ptr %38, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 5632
  %41 = icmp ugt ptr %40, %12
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %44

43:                                               ; preds = %36
  store ptr %40, ptr %19, align 8, !tbaa !52
  store ptr %40, ptr %20, align 8, !tbaa !53
  store ptr %40, ptr %21, align 8, !tbaa !54
  br label %44

44:                                               ; preds = %42, %43
  %45 = phi i64 [ 8920, %42 ], [ 14552, %43 ]
  %46 = phi ptr [ null, %42 ], [ %37, %43 ]
  %47 = phi ptr [ %37, %42 ], [ %40, %43 ]
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 %45
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %46, ptr %49, align 8, !tbaa !56
  %50 = icmp ugt ptr %48, %12
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %53

52:                                               ; preds = %44
  store ptr %48, ptr %19, align 8, !tbaa !52
  store ptr %48, ptr %20, align 8, !tbaa !53
  store ptr %48, ptr %21, align 8, !tbaa !54
  br label %53

53:                                               ; preds = %51, %52
  %54 = phi ptr [ null, %51 ], [ %47, %52 ]
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %54, ptr %55, align 8, !tbaa !57
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %56, align 8, !tbaa !58
  %57 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %61 = icmp ugt i32 %57, 6
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
  %64 = extractvalue { i32, i32, i32 } %63, 1
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 1
  br label %67

67:                                               ; preds = %53, %59, %62
  %68 = phi i32 [ %66, %62 ], [ 0, %59 ], [ 0, %53 ]
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %68, ptr %69, align 8, !tbaa !8
  br label %70

70:                                               ; preds = %8, %11, %2, %67
  %71 = phi ptr [ %0, %67 ], [ null, %2 ], [ null, %11 ], [ null, %8 ]
  ret ptr %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #30
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #30
  br label %27

27:                                               ; preds = %15, %25, %26
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #30
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #30
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
  %35 = phi i64 [ 0, %1 ], [ -64, %3 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CCtx(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, %17
  %23 = select i1 %22, i64 0, i64 6080
  %24 = getelementptr i8, ptr %17, i64 40
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, %23
  br label %30

30:                                               ; preds = %3, %19
  %31 = phi i64 [ %29, %19 ], [ 0, %3 ]
  %32 = icmp eq ptr %13, null
  %33 = select i1 %32, i64 0, i64 %15
  %34 = sub i64 %10, %11
  %35 = add i64 %34, %7
  %36 = add i64 %35, %33
  %37 = add i64 %36, %31
  br label %38

38:                                               ; preds = %1, %30
  %39 = phi i64 [ %37, %30 ], [ 0, %1 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CStream(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, %17
  %23 = select i1 %22, i64 0, i64 6080
  %24 = getelementptr i8, ptr %17, i64 40
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, %23
  br label %30

30:                                               ; preds = %19, %3
  %31 = phi i64 [ %29, %19 ], [ 0, %3 ]
  %32 = icmp eq ptr %13, null
  %33 = select i1 %32, i64 0, i64 %15
  %34 = sub i64 %10, %11
  %35 = add i64 %34, %7
  %36 = add i64 %35, %33
  %37 = add i64 %36, %31
  br label %38

38:                                               ; preds = %1, %30
  %39 = phi i64 [ %37, %30 ], [ 0, %1 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ZSTD_getSeqStore(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 976
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtxParams() local_unnamed_addr #6 {
  %1 = tail call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #32
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45
  br label %6

6:                                                ; preds = %0, %3
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #2 {
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
  tail call void %5(ptr noundef %9, ptr noundef nonnull %0) #30
  br label %11

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %0) #30
  br label %11

11:                                               ; preds = %10, %7, %1
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_reset(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ 0, %3 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_init(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %6, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i64 [ 0, %4 ], [ -1, %2 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !68
  %6 = add i32 %5, -32
  %7 = icmp ult i32 %6, -22
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = add i32 %10, -31
  %12 = icmp ult i32 %11, -25
  br i1 %12, label %62, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = add i32 %15, -31
  %17 = icmp ult i32 %16, -25
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -30
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = add i32 %25, -8
  %27 = icmp ult i32 %26, -5
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 131072
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %62, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %34 = load i32, ptr %33, align 8, !tbaa !73
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 9
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %38, ptr noundef nonnull readonly align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !74
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull readonly align 4 dereferenceable(12) %40, i64 12, i1 false), !tbaa.struct !75
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = add nsw i32 %34, -6
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  store i32 2, ptr %41, align 8, !tbaa !76
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %46 = icmp samesign ugt i32 %34, 6
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  store i32 2, ptr %45, align 4, !tbaa !77
  br label %57

48:                                               ; preds = %37
  %49 = icmp samesign ugt i32 %5, 14
  %50 = select i1 %49, i32 1, i32 2
  store i32 %50, ptr %41, align 8, !tbaa !76
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 2, ptr %51, align 4, !tbaa !77
  br label %57

52:                                               ; preds = %44
  %53 = icmp samesign ugt i32 %5, 16
  %54 = select i1 %53, i32 1, i32 2
  store i32 %54, ptr %45, align 4, !tbaa !77
  %55 = icmp samesign ugt i32 %5, 26
  %56 = select i1 %55, i32 1, i32 2
  br label %57

57:                                               ; preds = %48, %47, %52
  %58 = phi i32 [ 2, %48 ], [ %56, %52 ], [ 2, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %58, ptr %59, align 8, !tbaa !78
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 131072, ptr %60, align 8, !tbaa !79
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 2, ptr %61, align 8, !tbaa !80
  br label %62

62:                                               ; preds = %23, %18, %13, %8, %4, %32, %2, %57
  %63 = phi i64 [ 0, %57 ], [ -42, %32 ], [ -1, %2 ], [ -42, %4 ], [ -42, %8 ], [ -42, %13 ], [ -42, %18 ], [ -42, %23 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_checkCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !68
  %3 = add i32 %2, -32
  %4 = icmp ult i32 %3, -22
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = add i32 %7, -31
  %9 = icmp ult i32 %8, -25
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !70
  %13 = add i32 %12, -31
  %14 = icmp ult i32 %13, -25
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = add i32 %17, -31
  %19 = icmp ult i32 %18, -30
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = add i32 %22, -8
  %24 = icmp ult i32 %23, -5
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 131072
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa !73
  %32 = add i32 %31, -10
  %33 = icmp ult i32 %32, -9
  %34 = select i1 %33, i64 -42, i64 0
  br label %35

35:                                               ; preds = %29, %20, %15, %10, %5, %1
  %36 = phi i64 [ -42, %1 ], [ -42, %5 ], [ -42, %10 ], [ -42, %15 ], [ -42, %20 ], [ %34, %29 ]
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @ZSTD_cParam_getBounds(i32 noundef %0) local_unnamed_addr #0 {
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

20:                                               ; preds = %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %21 = phi i64 [ 0, %19 ], [ 98784116736, %2 ], [ 128849018886, %3 ], [ 128849018881, %4 ], [ 30064771075, %5 ], [ 562949953421312, %6 ], [ 38654705665, %7 ], [ 4294967296, %8 ], [ 0, %9 ], [ 8589934592, %10 ], [ 17592186044420, %11 ], [ 34359738369, %12 ], [ 107374182400, %13 ], [ 12884901888, %14 ], [ 562949953422652, %15 ], [ 9223372032559808512, %16 ], [ 25769803776, %17 ], [ 562949953422336, %18 ], [ 133143986186, %1 ]
  %22 = phi i64 [ -40, %19 ], [ 0, %2 ], [ 0, %3 ], [ 0, %4 ], [ 0, %5 ], [ 0, %6 ], [ 0, %7 ], [ 0, %8 ], [ 0, %9 ], [ 0, %10 ], [ 0, %11 ], [ 0, %12 ], [ 0, %13 ], [ 0, %14 ], [ 0, %15 ], [ 0, %16 ], [ 0, %17 ], [ 0, %18 ], [ 0, %1 ]
  %23 = insertvalue { i64, i64 } poison, i64 %22, 0
  %24 = insertvalue { i64, i64 } %23, i64 %21, 1
  ret { i64, i64 } %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_minCLevel() local_unnamed_addr #0 {
  ret i32 -131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_maxCLevel() local_unnamed_addr #0 {
  ret i32 22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 2147483648) i64 @ZSTD_CCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !81
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
  store i32 1, ptr %9, align 4, !tbaa !82
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
  %15 = load i64, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %13, %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %18, i32 noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %7, %10, %13, %17
  %21 = phi i64 [ %19, %17 ], [ -40, %13 ], [ -40, %10 ], [ -60, %7 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -42, 2147483648) i64 @ZSTD_CCtxParams_setParameter(ptr noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  switch i32 %1, label %219 [
    i32 10, label %4
    i32 100, label %8
    i32 101, label %20
    i32 102, label %28
    i32 103, label %36
    i32 104, label %44
    i32 105, label %49
    i32 106, label %53
    i32 107, label %58
    i32 200, label %63
    i32 201, label %68
    i32 202, label %73
    i32 1000, label %79
    i32 1001, label %84
    i32 1002, label %89
    i32 400, label %94
    i32 401, label %97
    i32 402, label %100
    i32 500, label %103
    i32 1005, label %106
    i32 160, label %111
    i32 161, label %116
    i32 162, label %124
    i32 163, label %132
    i32 164, label %137
    i32 130, label %142
    i32 1004, label %151
    i32 1006, label %156
    i32 1007, label %161
    i32 1008, label %166
    i32 1009, label %171
    i32 1010, label %176
    i32 1017, label %181
    i32 1011, label %186
    i32 1012, label %191
    i32 1013, label %196
    i32 1014, label %201
    i32 1015, label %206
    i32 1016, label %214
  ]

4:                                                ; preds = %3
  %5 = icmp ugt i32 %2, 1
  br i1 %5, label %219, label %6

6:                                                ; preds = %4
  store i32 %2, ptr %0, align 8, !tbaa !83
  %7 = zext nneg i32 %2 to i64
  br label %219

8:                                                ; preds = %3
  %9 = icmp slt i32 %2, -131072
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp sgt i32 %2, 22
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, i32 3, i32 %2
  br label %15

15:                                               ; preds = %12, %8, %10
  %16 = phi i32 [ -131072, %8 ], [ 22, %10 ], [ %14, %12 ]
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %16, ptr %17, align 4, !tbaa !44
  %18 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %19 = zext nneg i32 %18 to i64
  br label %219

20:                                               ; preds = %3
  %21 = icmp ne i32 %2, 0
  %22 = add i32 %2, -32
  %23 = icmp ult i32 %22, -22
  %24 = and i1 %21, %23
  br i1 %24, label %219, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %26, align 4, !tbaa !84
  %27 = zext nneg i32 %2 to i64
  br label %219

28:                                               ; preds = %3
  %29 = icmp ne i32 %2, 0
  %30 = add i32 %2, -31
  %31 = icmp ult i32 %30, -25
  %32 = and i1 %29, %31
  br i1 %32, label %219, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %34, align 4, !tbaa !85
  %35 = zext nneg i32 %2 to i64
  br label %219

36:                                               ; preds = %3
  %37 = icmp ne i32 %2, 0
  %38 = add i32 %2, -31
  %39 = icmp ult i32 %38, -25
  %40 = and i1 %37, %39
  br i1 %40, label %219, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %42, align 4, !tbaa !86
  %43 = zext nneg i32 %2 to i64
  br label %219

44:                                               ; preds = %3
  %45 = icmp ugt i32 %2, 30
  br i1 %45, label %219, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %47, align 4, !tbaa !87
  %48 = zext nneg i32 %2 to i64
  br label %219

49:                                               ; preds = %3
  switch i32 %2, label %219 [
    i32 7, label %50
    i32 6, label %50
    i32 5, label %50
    i32 4, label %50
    i32 3, label %50
    i32 0, label %50
  ]

50:                                               ; preds = %49, %49, %49, %49, %49, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %51, align 4, !tbaa !88
  %52 = zext nneg i32 %2 to i64
  br label %219

53:                                               ; preds = %3
  %54 = icmp ugt i32 %2, 131072
  br i1 %54, label %219, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %56, align 4, !tbaa !89
  %57 = zext nneg i32 %2 to i64
  br label %219

58:                                               ; preds = %3
  %59 = icmp ugt i32 %2, 9
  br i1 %59, label %219, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %61, align 4, !tbaa !90
  %62 = zext nneg i32 %2 to i64
  br label %219

63:                                               ; preds = %3
  %64 = icmp ne i32 %2, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %65, ptr %66, align 8, !tbaa !45
  %67 = zext i1 %64 to i64
  br label %219

68:                                               ; preds = %3
  %69 = icmp ne i32 %2, 0
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %70, ptr %71, align 4, !tbaa !91
  %72 = zext i1 %69 to i64
  br label %219

73:                                               ; preds = %3
  %74 = icmp ne i32 %2, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %76, ptr %77, align 8, !tbaa !92
  %78 = zext i1 %74 to i64
  br label %219

79:                                               ; preds = %3
  %80 = icmp ne i32 %2, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %81, ptr %82, align 8, !tbaa !93
  %83 = zext i1 %80 to i64
  br label %219

84:                                               ; preds = %3
  %85 = icmp ugt i32 %2, 3
  br i1 %85, label %219, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %2, ptr %87, align 4, !tbaa !94
  %88 = zext nneg i32 %2 to i64
  br label %219

89:                                               ; preds = %3
  %90 = icmp ugt i32 %2, 2
  br i1 %90, label %219, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %92, align 8, !tbaa !95
  %93 = zext nneg i32 %2 to i64
  br label %219

94:                                               ; preds = %3
  %95 = icmp eq i32 %2, 0
  %96 = select i1 %95, i64 0, i64 -40
  br label %219

97:                                               ; preds = %3
  %98 = icmp eq i32 %2, 0
  %99 = select i1 %98, i64 0, i64 -40
  br label %219

100:                                              ; preds = %3
  %101 = icmp eq i32 %2, 0
  %102 = select i1 %101, i64 0, i64 -40
  br label %219

103:                                              ; preds = %3
  %104 = icmp eq i32 %2, 0
  %105 = select i1 %104, i64 0, i64 -40
  br label %219

106:                                              ; preds = %3
  %107 = icmp ne i32 %2, 0
  %108 = zext i1 %107 to i32
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %108, ptr %109, align 8, !tbaa !96
  %110 = zext i1 %107 to i64
  br label %219

111:                                              ; preds = %3
  %112 = icmp ugt i32 %2, 2
  br i1 %112, label %219, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %2, ptr %114, align 8, !tbaa !78
  %115 = zext nneg i32 %2 to i64
  br label %219

116:                                              ; preds = %3
  %117 = icmp ne i32 %2, 0
  %118 = add i32 %2, -31
  %119 = icmp ult i32 %118, -25
  %120 = and i1 %117, %119
  br i1 %120, label %219, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %122, align 4, !tbaa !97
  %123 = zext nneg i32 %2 to i64
  br label %219

124:                                              ; preds = %3
  %125 = icmp ne i32 %2, 0
  %126 = add i32 %2, -4097
  %127 = icmp ult i32 %126, -4093
  %128 = and i1 %125, %127
  br i1 %128, label %219, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %2, ptr %130, align 4, !tbaa !98
  %131 = zext nneg i32 %2 to i64
  br label %219

132:                                              ; preds = %3
  %133 = icmp ult i32 %2, 9
  br i1 %133, label %134, label %219

134:                                              ; preds = %132
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %135, align 8, !tbaa !99
  %136 = zext nneg i32 %2 to i64
  br label %219

137:                                              ; preds = %3
  %138 = icmp ugt i32 %2, 25
  br i1 %138, label %219, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %140, align 8, !tbaa !100
  %141 = zext nneg i32 %2 to i64
  br label %219

142:                                              ; preds = %3
  %143 = icmp eq i32 %2, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %142
  %145 = tail call i32 @llvm.smax.i32(i32 %2, i32 1340)
  %146 = icmp sgt i32 %2, 131072
  br i1 %146, label %219, label %147

147:                                              ; preds = %144, %142
  %148 = phi i32 [ 0, %142 ], [ %145, %144 ]
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %149, ptr %150, align 8, !tbaa !101
  br label %219

151:                                              ; preds = %3
  %152 = icmp slt i32 %2, 0
  br i1 %152, label %219, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %2, ptr %154, align 8, !tbaa !102
  %155 = zext nneg i32 %2 to i64
  br label %219

156:                                              ; preds = %3
  %157 = icmp ugt i32 %2, 1
  br i1 %157, label %219, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %2, ptr %159, align 4, !tbaa !103
  %160 = zext nneg i32 %2 to i64
  br label %219

161:                                              ; preds = %3
  %162 = icmp ugt i32 %2, 1
  br i1 %162, label %219, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %2, ptr %164, align 8, !tbaa !104
  %165 = zext nneg i32 %2 to i64
  br label %219

166:                                              ; preds = %3
  %167 = icmp ugt i32 %2, 1
  br i1 %167, label %219, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %2, ptr %169, align 4, !tbaa !105
  %170 = zext nneg i32 %2 to i64
  br label %219

171:                                              ; preds = %3
  %172 = icmp ugt i32 %2, 1
  br i1 %172, label %219, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %2, ptr %174, align 8, !tbaa !106
  %175 = zext nneg i32 %2 to i64
  br label %219

176:                                              ; preds = %3
  %177 = icmp ugt i32 %2, 2
  br i1 %177, label %219, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %2, ptr %179, align 4, !tbaa !77
  %180 = zext nneg i32 %2 to i64
  br label %219

181:                                              ; preds = %3
  %182 = icmp ugt i32 %2, 6
  br i1 %182, label %219, label %183

183:                                              ; preds = %181
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %2, ptr %184, align 8, !tbaa !107
  %185 = zext nneg i32 %2 to i64
  br label %219

186:                                              ; preds = %3
  %187 = icmp ugt i32 %2, 2
  br i1 %187, label %219, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %2, ptr %189, align 8, !tbaa !76
  %190 = zext nneg i32 %2 to i64
  br label %219

191:                                              ; preds = %3
  %192 = icmp ugt i32 %2, 1
  br i1 %192, label %219, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %2, ptr %194, align 4, !tbaa !108
  %195 = zext nneg i32 %2 to i64
  br label %219

196:                                              ; preds = %3
  %197 = icmp ugt i32 %2, 2
  br i1 %197, label %219, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %2, ptr %199, align 8, !tbaa !109
  %200 = zext nneg i32 %2 to i64
  br label %219

201:                                              ; preds = %3
  %202 = icmp ugt i32 %2, 1
  br i1 %202, label %219, label %203

203:                                              ; preds = %201
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %2, ptr %204, align 4, !tbaa !110
  %205 = zext nneg i32 %2 to i64
  br label %219

206:                                              ; preds = %3
  %207 = icmp ne i32 %2, 0
  %208 = add i32 %2, -131073
  %209 = icmp ult i32 %208, -130049
  %210 = and i1 %207, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %206
  %212 = zext nneg i32 %2 to i64
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %212, ptr %213, align 8, !tbaa !79
  br label %219

214:                                              ; preds = %3
  %215 = icmp ugt i32 %2, 2
  br i1 %215, label %219, label %216

216:                                              ; preds = %214
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %2, ptr %217, align 8, !tbaa !80
  %218 = zext nneg i32 %2 to i64
  br label %219

219:                                              ; preds = %132, %49, %206, %151, %137, %124, %116, %58, %44, %36, %28, %20, %15, %3, %214, %201, %196, %191, %186, %181, %176, %171, %166, %161, %156, %144, %111, %103, %100, %97, %94, %91, %89, %86, %84, %53, %4, %6, %25, %33, %41, %46, %50, %55, %60, %63, %68, %73, %79, %106, %113, %121, %129, %134, %139, %147, %153, %158, %163, %168, %173, %178, %183, %188, %193, %198, %203, %211, %216
  %220 = phi i64 [ %7, %6 ], [ %27, %25 ], [ %35, %33 ], [ %43, %41 ], [ %48, %46 ], [ %52, %50 ], [ %57, %55 ], [ %62, %60 ], [ %67, %63 ], [ %72, %68 ], [ %78, %73 ], [ %83, %79 ], [ %110, %106 ], [ %115, %113 ], [ %123, %121 ], [ %131, %129 ], [ %136, %134 ], [ %141, %139 ], [ %149, %147 ], [ %155, %153 ], [ %160, %158 ], [ %165, %163 ], [ %170, %168 ], [ %175, %173 ], [ %180, %178 ], [ %185, %183 ], [ %190, %188 ], [ %195, %193 ], [ %200, %198 ], [ %205, %203 ], [ %212, %211 ], [ %218, %216 ], [ -42, %4 ], [ -42, %53 ], [ %88, %86 ], [ -42, %84 ], [ %93, %91 ], [ -42, %89 ], [ %96, %94 ], [ %99, %97 ], [ %102, %100 ], [ %105, %103 ], [ -42, %111 ], [ -42, %144 ], [ -42, %156 ], [ -42, %161 ], [ -42, %166 ], [ -42, %171 ], [ -42, %176 ], [ -42, %181 ], [ -42, %186 ], [ -42, %191 ], [ -42, %196 ], [ -42, %201 ], [ -42, %214 ], [ -40, %3 ], [ %19, %15 ], [ -42, %20 ], [ -42, %28 ], [ -42, %36 ], [ -42, %44 ], [ -42, %49 ], [ -42, %58 ], [ -42, %116 ], [ -42, %124 ], [ -42, %132 ], [ -42, %137 ], [ -42, %151 ], [ -42, %206 ]
  ret i64 %220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = tail call i64 @ZSTD_CCtxParams_getParameter(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtxParams_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #8 {
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
  %5 = load i32, ptr %0, align 8, !tbaa !83
  br label %115

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %8 = load i32, ptr %7, align 4, !tbaa !44
  br label %115

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !84
  br label %115

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !85
  br label %115

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !86
  br label %115

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i32, ptr %19, align 4, !tbaa !87
  br label %115

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !88
  br label %115

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4, !tbaa !89
  br label %115

27:                                               ; preds = %3
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %29 = load i32, ptr %28, align 4, !tbaa !90
  br label %115

30:                                               ; preds = %3
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i32, ptr %31, align 8, !tbaa !45
  br label %115

33:                                               ; preds = %3
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !91
  br label %115

36:                                               ; preds = %3
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %38 = load i32, ptr %37, align 8, !tbaa !92
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  br label %115

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %43 = load i32, ptr %42, align 8, !tbaa !93
  br label %115

44:                                               ; preds = %3
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %46 = load i32, ptr %45, align 4, !tbaa !94
  br label %115

47:                                               ; preds = %3
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %49 = load i32, ptr %48, align 8, !tbaa !95
  br label %115

50:                                               ; preds = %3
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %52 = load i32, ptr %51, align 4, !tbaa !111
  br label %115

53:                                               ; preds = %3
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %55 = load i32, ptr %54, align 8, !tbaa !96
  br label %115

56:                                               ; preds = %3
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %58 = load i32, ptr %57, align 8, !tbaa !78
  br label %115

59:                                               ; preds = %3
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %61 = load i32, ptr %60, align 4, !tbaa !97
  br label %115

62:                                               ; preds = %3
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %64 = load i32, ptr %63, align 4, !tbaa !98
  br label %115

65:                                               ; preds = %3
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %67 = load i32, ptr %66, align 8, !tbaa !99
  br label %115

68:                                               ; preds = %3
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %70 = load i32, ptr %69, align 8, !tbaa !100
  br label %115

71:                                               ; preds = %3
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load i64, ptr %72, align 8, !tbaa !101
  %74 = trunc i64 %73 to i32
  br label %115

75:                                               ; preds = %3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %77 = load i32, ptr %76, align 8, !tbaa !102
  br label %115

78:                                               ; preds = %3
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %80 = load i32, ptr %79, align 4, !tbaa !103
  br label %115

81:                                               ; preds = %3
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %83 = load i32, ptr %82, align 8, !tbaa !104
  br label %115

84:                                               ; preds = %3
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %86 = load i32, ptr %85, align 4, !tbaa !105
  br label %115

87:                                               ; preds = %3
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %89 = load i32, ptr %88, align 8, !tbaa !106
  br label %115

90:                                               ; preds = %3
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %92 = load i32, ptr %91, align 4, !tbaa !77
  br label %115

93:                                               ; preds = %3
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %95 = load i32, ptr %94, align 8, !tbaa !107
  br label %115

96:                                               ; preds = %3
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %98 = load i32, ptr %97, align 8, !tbaa !76
  br label %115

99:                                               ; preds = %3
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %101 = load i32, ptr %100, align 4, !tbaa !108
  br label %115

102:                                              ; preds = %3
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %104 = load i32, ptr %103, align 8, !tbaa !109
  br label %115

105:                                              ; preds = %3
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %107 = load i32, ptr %106, align 4, !tbaa !110
  br label %115

108:                                              ; preds = %3
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %110 = load i64, ptr %109, align 8, !tbaa !79
  %111 = trunc i64 %110 to i32
  br label %115

112:                                              ; preds = %3
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %114 = load i32, ptr %113, align 8, !tbaa !80
  br label %115

115:                                              ; preds = %112, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %4
  %116 = phi i32 [ %5, %4 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ], [ %23, %21 ], [ %26, %24 ], [ %29, %27 ], [ %32, %30 ], [ %35, %33 ], [ %40, %36 ], [ %43, %41 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ], [ %55, %53 ], [ %58, %56 ], [ %61, %59 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ], [ %74, %71 ], [ %77, %75 ], [ %80, %78 ], [ %83, %81 ], [ %86, %84 ], [ %89, %87 ], [ %92, %90 ], [ %95, %93 ], [ %98, %96 ], [ %101, %99 ], [ %104, %102 ], [ %107, %105 ], [ %111, %108 ], [ %114, %112 ]
  store i32 %116, ptr %2, align 4, !tbaa !49
  br label %117

117:                                              ; preds = %115, %3
  %118 = phi i64 [ -40, %3 ], [ 0, %115 ]
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !113
  br label %12

12:                                               ; preds = %6, %2, %10
  %13 = phi i64 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 10) i64 @ZSTD_CCtx_setCParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8, !tbaa !68
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %47, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !71
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !73
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !81
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %40, align 4, !tbaa !84
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %41, align 4, !tbaa !86
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %42, align 4, !tbaa !85
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %43, align 4, !tbaa !87
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %44, align 4, !tbaa !88
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %45, align 4, !tbaa !89
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %46, align 4, !tbaa !90
  br label %47

47:                                               ; preds = %35, %21, %16, %11, %6, %2, %39, %30
  %48 = phi i64 [ -42, %30 ], [ 0, %39 ], [ -42, %2 ], [ -42, %6 ], [ -42, %11 ], [ -42, %16 ], [ -42, %21 ], [ -60, %35 ]
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setFParams(ptr noundef captures(none) %0, i64 %1, i32 %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !81
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = and i64 %1, 4294967295
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %10, ptr %11, align 8, !tbaa !45
  %12 = icmp ugt i64 %1, 4294967295
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %13, ptr %14, align 4, !tbaa !91
  %15 = icmp ne i32 %2, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %16, ptr %17, align 8, !tbaa !92
  br label %18

18:                                               ; preds = %3, %7
  %19 = phi i64 [ 0, %7 ], [ -60, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8, !tbaa !68
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %61, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !71
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !73
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %37 = load i32, ptr %36, align 8, !tbaa !81
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
  store i32 %46, ptr %47, align 8, !tbaa !45
  %48 = icmp ugt i64 %43, 4294967295
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %49, ptr %50, align 4, !tbaa !91
  %51 = icmp ne i32 %41, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %52, ptr %53, align 8, !tbaa !92
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %54, align 4, !tbaa !84
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %8, ptr %55, align 4, !tbaa !86
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %56, align 4, !tbaa !85
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %57, align 4, !tbaa !87
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %58, align 4, !tbaa !88
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %59, align 4, !tbaa !89
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %60, align 4, !tbaa !90
  br label %61

61:                                               ; preds = %39, %35, %21, %16, %11, %6, %2, %30
  %62 = phi i64 [ -42, %30 ], [ -42, %2 ], [ -42, %6 ], [ -42, %11 ], [ -42, %16 ], [ -42, %21 ], [ -60, %35 ], [ 0, %39 ]
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = add i64 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %7, ptr %8, align 8, !tbaa !115
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %7 = load i32, ptr %6, align 8, !tbaa !81
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
  %17 = load i64, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i64 912
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr %21(ptr noundef %25, i64 noundef %2) #30
  br label %29

27:                                               ; preds = %19
  %28 = tail call noalias ptr @malloc(i64 noundef %2) #31
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %26, %23 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %1, i64 %2, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %30, ptr %33, align 8, !tbaa !116
  br label %34

34:                                               ; preds = %13, %32
  %35 = phi ptr [ %30, %32 ], [ %1, %13 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %35, ptr %36, align 8, !tbaa !117
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %37, align 8, !tbaa !118
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 %4, ptr %38, align 8, !tbaa !119
  br label %39

39:                                               ; preds = %29, %15, %9, %5, %34
  %40 = phi i64 [ 0, %34 ], [ -60, %5 ], [ 0, %9 ], [ -64, %15 ], [ -64, %29 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_clearAllDicts(ptr noundef captures(none) initializes((3696, 3720), (3728, 3760)) %0) unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %3 = load ptr, ptr %2, align 8, !tbaa !116
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
  tail call void %5(ptr noundef %7, ptr noundef nonnull %3) #30
  br label %13

12:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %3) #30
  br label %13

13:                                               ; preds = %1, %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 6048
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 6056
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp ugt ptr %23, %15
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !60
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
  tail call void %19(ptr noundef %21, ptr noundef nonnull %23) #30
  br label %35

35:                                               ; preds = %34, %29
  br i1 %30, label %37, label %41

36:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %23) #30
  br i1 %30, label %40, label %41

37:                                               ; preds = %35
  %38 = icmp eq ptr %19, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void %19(ptr noundef %21, ptr noundef nonnull %15) #30
  br label %41

40:                                               ; preds = %37, %36
  tail call void @free(ptr noundef nonnull %15) #30
  br label %41

41:                                               ; preds = %13, %35, %36, %39, %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_loadDictionary_byReference(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !81
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
  store ptr %1, ptr %12, align 8, !tbaa !117
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %13, align 8, !tbaa !118
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %14, align 8, !tbaa !119
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ 0, %11 ], [ -60, %3 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !81
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
  %13 = load i64, ptr %12, align 8, !tbaa !50
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i64 912
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr %17(ptr noundef %21, i64 noundef %2) #30
  br label %25

23:                                               ; preds = %15
  %24 = tail call noalias ptr @malloc(i64 noundef %2) #31
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %2, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %26, ptr %29, align 8, !tbaa !116
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %26, ptr %30, align 8, !tbaa !117
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %31, align 8, !tbaa !118
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %32, align 8, !tbaa !119
  br label %33

33:                                               ; preds = %3, %7, %11, %25, %28
  %34 = phi i64 [ 0, %28 ], [ -60, %3 ], [ 0, %7 ], [ -64, %11 ], [ -64, %25 ]
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refCDict(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %7, align 8, !tbaa !112
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refThreadPool(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %7, align 8, !tbaa !121
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %5 = load i32, ptr %4, align 8, !tbaa !81
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
  store ptr %1, ptr %12, align 8, !tbaa !122
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %13, align 8, !tbaa !123
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 1, ptr %14, align 8, !tbaa !124
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ -60, %3 ], [ 0, %11 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %6 = load i32, ptr %5, align 8, !tbaa !81
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
  store ptr %1, ptr %13, align 8, !tbaa !122
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  store i64 %2, ptr %14, align 8, !tbaa !123
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  store i32 %3, ptr %15, align 8, !tbaa !124
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = phi i64 [ -60, %4 ], [ 0, %12 ], [ 0, %8 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_reset(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !81
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %7, align 8, !tbaa !115
  br label %8

8:                                                ; preds = %2, %5
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %16, i8 0, i64 224, i1 false)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 3, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %18, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %8, %11, %15
  %20 = phi i64 [ 0, %15 ], [ -60, %11 ], [ 0, %8 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_cycleLog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 5
  %4 = sext i1 %3 to i32
  %5 = add i32 %0, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_adjustCParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %1, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @llvm.smax.i32(i32 %5, i32 10)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 31)
  %17 = tail call i32 @llvm.smax.i32(i32 %7, i32 6)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 30)
  %19 = tail call i32 @llvm.smax.i32(i32 %9, i32 6)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 30)
  %21 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 30)
  %23 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 9)
  %25 = load <2 x i32>, ptr %12, align 8
  %26 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %25, <2 x i32> <i32 3, i32 0>)
  %27 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %26, <2 x i32> <i32 7, i32 131072>)
  store <2 x i32> %27, ptr %12, align 8, !tbaa !49
  %28 = icmp eq i64 %2, 0
  %29 = select i1 %28, i64 -1, i64 %2
  %30 = icmp ult i64 %29, 1073741825
  %31 = icmp ult i64 %3, 1073741825
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = add nuw nsw i64 %29, %3
  %35 = icmp samesign ult i64 %34, 64
  %36 = trunc nuw i64 %34 to i32
  %37 = add i32 %36, -1
  %38 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %37, i1 true)
  %39 = sub nuw nsw i32 32, %38
  %40 = select i1 %35, i32 6, i32 %39
  %41 = tail call i32 @llvm.umin.i32(i32 %16, i32 %40)
  br label %44

42:                                               ; preds = %4
  %43 = icmp eq i64 %29, -1
  br i1 %43, label %70, label %44

44:                                               ; preds = %42, %33
  %45 = phi i32 [ %41, %33 ], [ %16, %42 ]
  %46 = icmp eq i64 %3, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = zext nneg i32 %45 to i64
  %49 = shl nuw nsw i64 1, %48
  %50 = add i64 %49, %3
  %51 = add i64 %29, %3
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = icmp ugt i64 %50, 2147483647
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = trunc nuw nsw i64 %50 to i32
  %57 = add nsw i32 %56, -1
  %58 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %57, i1 true)
  %59 = sub nuw nsw i32 32, %58
  br label %60

60:                                               ; preds = %55, %53, %47, %44
  %61 = phi i32 [ %45, %44 ], [ %59, %55 ], [ %45, %47 ], [ 31, %53 ]
  %62 = icmp sgt i32 %14, 5
  %63 = sext i1 %62 to i32
  %64 = add nsw i32 %18, %63
  %65 = add nuw nsw i32 %61, 1
  %66 = tail call i32 @llvm.umin.i32(i32 %20, i32 %65)
  %67 = icmp samesign ugt i32 %64, %61
  %68 = sub nsw i32 %61, %63
  %69 = select i1 %67, i32 %68, i32 %18
  br label %70

70:                                               ; preds = %60, %42
  %71 = phi i32 [ %18, %42 ], [ %69, %60 ]
  %72 = phi i32 [ %20, %42 ], [ %66, %60 ]
  %73 = phi i32 [ %16, %42 ], [ %45, %60 ]
  %74 = add nsw i32 %24, -6
  %75 = icmp ult i32 %74, -3
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = tail call i32 @llvm.umax.i32(i32 %22, i32 4)
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 6)
  %79 = or disjoint i32 %78, 24
  %80 = tail call i32 @llvm.umin.i32(i32 %72, i32 %79)
  br label %81

81:                                               ; preds = %70, %76
  %82 = phi i32 [ %72, %70 ], [ %80, %76 ]
  %83 = tail call i32 @llvm.umax.i32(i32 %73, i32 10)
  store i32 %83, ptr %0, align 4, !tbaa !49
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %71, ptr %84, align 4, !tbaa !49
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %82, ptr %85, align 4, !tbaa !49
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %22, ptr %86, align 4, !tbaa !49
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %27, ptr %87, align 4
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %24, ptr %88, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = alloca %struct.ZSTD_compressionParameters, align 4
  %7 = icmp eq i64 %2, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %10 = load i32, ptr %9, align 8, !tbaa !102
  %11 = icmp sgt i32 %10, 0
  %12 = zext nneg i32 %10 to i64
  %13 = select i1 %11, i64 %12, i64 -1
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i64 [ %2, %5 ], [ %13, %8 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #30
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %17 = load i32, ptr %16, align 4, !tbaa !44
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %6, i32 noundef %17, i64 noundef %15, i64 noundef %3, i32 noundef %4)
  %18 = load i32, ptr %6, align 4, !tbaa !49
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !49
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 4, !tbaa !49
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %34 = load <2 x i32>, ptr %25, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #30
  %35 = load i32, ptr %28, align 8, !tbaa !78
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 27, i32 %18
  %38 = load i32, ptr %29, align 4, !tbaa !68
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  %41 = load i32, ptr %30, align 4, !tbaa !70
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %22, i32 %41
  %44 = load i32, ptr %31, align 4, !tbaa !69
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %20, i32 %44
  %47 = load i32, ptr %32, align 4, !tbaa !71
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %24, i32 %47
  %50 = load <2 x i32>, ptr %33, align 4, !tbaa !49
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %52 = load i32, ptr %51, align 4, !tbaa !73
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %27, i32 %52
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %56 = load i32, ptr %55, align 8, !tbaa !76
  switch i32 %4, label %63 [
    i32 1, label %62
    i32 2, label %57
  ]

57:                                               ; preds = %14
  %58 = icmp ne i64 %3, 0
  %59 = icmp eq i64 %15, -1
  %60 = and i1 %58, %59
  %61 = select i1 %60, i64 513, i64 %15
  br label %63

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62, %57, %14
  %64 = phi i64 [ %3, %14 ], [ 0, %62 ], [ %3, %57 ]
  %65 = phi i64 [ %15, %14 ], [ %15, %62 ], [ %61, %57 ]
  %66 = icmp ult i64 %65, 1073741825
  %67 = icmp ult i64 %64, 1073741825
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = add nuw nsw i64 %65, %64
  %71 = icmp samesign ult i64 %70, 64
  %72 = trunc nuw i64 %70 to i32
  %73 = add i32 %72, -1
  %74 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %73, i1 true)
  %75 = sub nuw nsw i32 32, %74
  %76 = select i1 %71, i32 6, i32 %75
  %77 = tail call i32 @llvm.umin.i32(i32 %40, i32 %76)
  br label %80

78:                                               ; preds = %63
  %79 = icmp eq i64 %65, -1
  br i1 %79, label %106, label %80

80:                                               ; preds = %78, %69
  %81 = phi i32 [ %77, %69 ], [ %40, %78 ]
  %82 = icmp eq i64 %64, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = zext nneg i32 %81 to i64
  %85 = shl nuw i64 1, %84
  %86 = add i64 %85, %64
  %87 = add i64 %65, %64
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = icmp ugt i64 %86, 2147483647
  br i1 %90, label %96, label %91

91:                                               ; preds = %89
  %92 = trunc nuw nsw i64 %86 to i32
  %93 = add nsw i32 %92, -1
  %94 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %93, i1 true)
  %95 = sub nuw nsw i32 32, %94
  br label %96

96:                                               ; preds = %91, %89, %83, %80
  %97 = phi i32 [ %81, %80 ], [ %95, %91 ], [ %81, %83 ], [ 31, %89 ]
  %98 = icmp ugt i32 %54, 5
  %99 = sext i1 %98 to i32
  %100 = add i32 %46, %99
  %101 = add i32 %97, 1
  %102 = tail call i32 @llvm.umin.i32(i32 %43, i32 %101)
  %103 = icmp ugt i32 %100, %97
  %104 = sub i32 %97, %99
  %105 = select i1 %103, i32 %104, i32 %46
  br label %106

106:                                              ; preds = %96, %78
  %107 = phi i32 [ %43, %78 ], [ %102, %96 ]
  %108 = phi i32 [ %46, %78 ], [ %105, %96 ]
  %109 = phi i32 [ %40, %78 ], [ %81, %96 ]
  %110 = icmp ne i32 %4, 2
  %111 = add i32 %54, -3
  %112 = icmp ult i32 %111, -2
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = tail call i32 @llvm.umin.i32(i32 %107, i32 24)
  %116 = tail call i32 @llvm.umin.i32(i32 %108, i32 24)
  br label %127

117:                                              ; preds = %106
  %118 = add i32 %54, -6
  %119 = icmp ult i32 %118, -3
  %120 = icmp ugt i32 %56, 1
  %121 = or i1 %120, %119
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = tail call i32 @llvm.umax.i32(i32 %49, i32 4)
  %124 = tail call i32 @llvm.umin.i32(i32 %123, i32 6)
  %125 = or disjoint i32 %124, 24
  %126 = tail call i32 @llvm.umin.i32(i32 %107, i32 %125)
  br label %127

127:                                              ; preds = %114, %117, %122
  %128 = phi i32 [ %108, %117 ], [ %108, %122 ], [ %116, %114 ]
  %129 = phi i32 [ %107, %117 ], [ %126, %122 ], [ %115, %114 ]
  %130 = tail call i32 @llvm.umax.i32(i32 %109, i32 10)
  %131 = icmp eq <2 x i32> %50, zeroinitializer
  store i32 %130, ptr %0, align 4, !tbaa !49
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %128, ptr %132, align 4, !tbaa !49
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %129, ptr %133, align 4, !tbaa !49
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %49, ptr %134, align 4, !tbaa !49
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %136 = select <2 x i1> %131, <2 x i32> %34, <2 x i32> %50
  store <2 x i32> %136, ptr %135, align 4, !tbaa !49
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %54, ptr %137, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable writeonly align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #7 {
  %6 = icmp eq i32 %4, 1
  %7 = select i1 %6, i64 0, i64 %3
  %8 = icmp eq i64 %2, -1
  %9 = icmp eq i64 %7, 0
  %10 = and i1 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = icmp ne i64 %7, 0
  %13 = and i1 %8, %12
  %14 = select i1 %13, i64 500, i64 0
  %15 = add i64 %7, %2
  %16 = add i64 %15, %14
  br label %17

17:                                               ; preds = %5, %11
  %18 = phi i64 [ %16, %11 ], [ -1, %5 ]
  %19 = icmp ult i64 %18, 262145
  %20 = zext i1 %19 to i64
  %21 = icmp ult i64 %18, 131073
  %22 = zext i1 %21 to i64
  %23 = add nuw nsw i64 %20, %22
  %24 = icmp ult i64 %18, 16385
  %25 = zext i1 %24 to i64
  %26 = add nuw nsw i64 %23, %25
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = icmp slt i32 %1, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = tail call i32 @llvm.umin.i32(i32 %1, i32 22)
  %32 = zext nneg i32 %31 to i64
  br label %33

33:                                               ; preds = %30, %28, %17
  %34 = phi i64 [ 3, %17 ], [ 0, %28 ], [ %32, %30 ]
  %35 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 %26, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !49
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !49
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %42 = load <2 x i32>, ptr %41, align 4, !tbaa !49
  %43 = load i32, ptr %41, align 4, !tbaa !49
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 20
  %45 = load i32, ptr %44, align 4, !tbaa !49
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %47 = load i32, ptr %46, align 4, !tbaa !49
  switch i32 %4, label %53 [
    i32 1, label %52
    i32 2, label %48
  ]

48:                                               ; preds = %33
  %49 = icmp ne i64 %3, 0
  %50 = and i1 %8, %49
  %51 = select i1 %50, i64 513, i64 %2
  br label %53

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %48, %33
  %54 = phi i64 [ %3, %33 ], [ 0, %52 ], [ %3, %48 ]
  %55 = phi i64 [ %2, %33 ], [ %2, %52 ], [ %51, %48 ]
  %56 = icmp ult i64 %55, 1073741825
  %57 = icmp ult i64 %54, 1073741825
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = add nuw nsw i64 %55, %54
  %61 = icmp samesign ult i64 %60, 64
  %62 = trunc nuw i64 %60 to i32
  %63 = add i32 %62, -1
  %64 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %63, i1 true)
  %65 = sub nuw nsw i32 32, %64
  %66 = select i1 %61, i32 6, i32 %65
  %67 = tail call i32 @llvm.umin.i32(i32 %36, i32 %66)
  br label %70

68:                                               ; preds = %53
  %69 = icmp eq i64 %55, -1
  br i1 %69, label %96, label %70

70:                                               ; preds = %68, %59
  %71 = phi i32 [ %67, %59 ], [ %36, %68 ]
  %72 = icmp eq i64 %54, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = zext nneg i32 %71 to i64
  %75 = shl nuw i64 1, %74
  %76 = add i64 %75, %54
  %77 = add i64 %55, %54
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = icmp ugt i64 %76, 2147483647
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = trunc nuw nsw i64 %76 to i32
  %83 = add nsw i32 %82, -1
  %84 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %83, i1 true)
  %85 = sub nuw nsw i32 32, %84
  br label %86

86:                                               ; preds = %81, %79, %73, %70
  %87 = phi i32 [ %71, %70 ], [ %85, %81 ], [ %71, %73 ], [ 31, %79 ]
  %88 = icmp ugt i32 %47, 5
  %89 = sext i1 %88 to i32
  %90 = add i32 %38, %89
  %91 = add i32 %87, 1
  %92 = tail call i32 @llvm.umin.i32(i32 %40, i32 %91)
  %93 = icmp ugt i32 %90, %87
  %94 = sub i32 %87, %89
  %95 = select i1 %93, i32 %94, i32 %38
  br label %96

96:                                               ; preds = %86, %68
  %97 = phi i32 [ %38, %68 ], [ %95, %86 ]
  %98 = phi i32 [ %40, %68 ], [ %92, %86 ]
  %99 = phi i32 [ %36, %68 ], [ %71, %86 ]
  %100 = icmp ne i32 %4, 2
  %101 = add i32 %47, -3
  %102 = icmp ult i32 %101, -2
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = tail call i32 @llvm.umin.i32(i32 %98, i32 24)
  %106 = tail call i32 @llvm.umin.i32(i32 %97, i32 24)
  br label %115

107:                                              ; preds = %96
  %108 = add i32 %47, -6
  %109 = icmp ult i32 %108, -3
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @llvm.umax.i32(i32 %43, i32 4)
  %112 = tail call i32 @llvm.umin.i32(i32 %111, i32 6)
  %113 = or disjoint i32 %112, 24
  %114 = tail call i32 @llvm.umin.i32(i32 %98, i32 %113)
  br label %115

115:                                              ; preds = %104, %107, %110
  %116 = phi i32 [ %97, %107 ], [ %97, %110 ], [ %106, %104 ]
  %117 = phi i32 [ %98, %107 ], [ %114, %110 ], [ %105, %104 ]
  %118 = tail call i32 @llvm.umax.i32(i32 %99, i32 10)
  %119 = icmp slt i32 %1, 0
  %120 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072)
  %121 = sub nsw i32 0, %120
  %122 = select i1 %119, i32 %121, i32 %45
  store i32 %118, ptr %0, align 4, !tbaa !49
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %116, ptr %123, align 4, !tbaa !49
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %117, ptr %124, align 4, !tbaa !49
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %42, ptr %125, align 4, !tbaa !49
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %122, ptr %126, align 4, !tbaa !49
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %47, ptr %127, align 4, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !125
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %6 = load i32, ptr %5, align 8, !tbaa !76
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4, !tbaa !68
  %15 = icmp ugt i32 %14, 14
  %16 = select i1 %15, i32 1, i32 2
  br label %17

17:                                               ; preds = %1, %8, %13
  %18 = phi i32 [ %16, %13 ], [ %6, %1 ], [ 2, %8 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %20 = load i32, ptr %19, align 4, !tbaa !111
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %3, align 4, !tbaa !126
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr i8, ptr %0, i64 208
  %28 = load ptr, ptr %27, align 8, !tbaa !127
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %32 = load i64, ptr %31, align 8, !tbaa !79
  %33 = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %18, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %30, i64 noundef %32)
  br label %34

34:                                               ; preds = %17, %26
  %35 = phi i64 [ %33, %26 ], [ -1, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  ret i64 %35
}

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 2, 1) %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i64 noundef %8) unnamed_addr #2 {
  %10 = alloca %struct.ldmParams_t, align 8
  %11 = alloca %struct.ldmParams_t, align 8
  %12 = load i32, ptr %0, align 4, !tbaa !68
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load i32, ptr %15, align 4, !tbaa !73
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %28, label %18

18:                                               ; preds = %9
  %19 = add i32 %16, -3
  %20 = icmp ult i32 %19, 3
  %21 = icmp eq i32 %3, 1
  %22 = and i1 %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = zext nneg i32 %25 to i64
  %27 = shl i64 4, %26
  br label %28

28:                                               ; preds = %23, %18, %9
  %29 = phi i64 [ %27, %23 ], [ 0, %18 ], [ 0, %9 ]
  %30 = freeze i32 %12
  %31 = icmp eq i64 %6, 0
  %32 = icmp eq i64 %8, 0
  %33 = select i1 %32, i64 131072, i64 %8
  %34 = zext nneg i32 %30 to i64
  %35 = shl nuw i64 1, %34
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 %6)
  %37 = tail call i64 @llvm.umin.i64(i64 %33, i64 %36)
  %38 = select i1 %31, i64 1, i64 %37
  %39 = icmp eq i32 %14, 3
  %40 = icmp ne i32 %7, 0
  %41 = or i1 %40, %39
  %42 = select i1 %41, i64 3, i64 4
  %43 = udiv i64 %38, %42
  %44 = shl i64 %43, 3
  %45 = add i64 %44, 63
  %46 = and i64 %45, -64
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %48 = load i32, ptr %47, align 4, !tbaa !70
  %49 = tail call i32 @llvm.umin.i32(i32 %30, i32 17)
  %50 = select i1 %39, i32 %49, i32 0
  %51 = zext nneg i32 %48 to i64
  %52 = shl nuw i64 1, %51
  %53 = add i32 %16, -6
  %54 = icmp ult i32 %53, -3
  %55 = icmp ne i32 %3, 1
  %56 = or i1 %55, %54
  %57 = add nuw i64 %52, 63
  %58 = and i64 %57, -64
  %59 = select i1 %56, i64 0, i64 %58
  %60 = icmp ugt i32 %16, 6
  %61 = shl i64 4, %51
  %62 = icmp eq i32 %50, 0
  %63 = zext nneg i32 %50 to i64
  %64 = shl nuw nsw i64 4, %63
  %65 = select i1 %62, i64 0, i64 %64
  %66 = select i1 %60, i64 149376, i64 128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !125
  %67 = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !125
  %68 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %11, i64 noundef %38) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #30
  %69 = load i32, ptr %1, align 4, !tbaa !126
  %70 = icmp eq i32 %69, 1
  %71 = mul i64 %68, 12
  %72 = add i64 %71, 63
  %73 = and i64 %72, -64
  %74 = select i1 %70, i64 %73, i64 0
  %75 = icmp eq i32 %2, 0
  %76 = udiv i64 %38, 3
  %77 = lshr i64 %38, 10
  %78 = add nuw nsw i64 %77, 2
  %79 = add nuw nsw i64 %78, %76
  %80 = icmp eq i32 %7, 0
  %81 = shl i64 %79, 4
  %82 = add i64 %81, 63
  %83 = and i64 %82, -64
  %84 = select i1 %80, i64 0, i64 %83
  %85 = mul nuw nsw i64 %43, 3
  %86 = select i1 %75, i64 20184, i64 25464
  %87 = add i64 %4, 32
  %88 = add i64 %87, %86
  %89 = add i64 %88, %5
  %90 = add i64 %89, %66
  %91 = add i64 %90, %38
  %92 = add i64 %91, %65
  %93 = add i64 %92, %84
  %94 = add i64 %93, %29
  %95 = add i64 %94, %85
  %96 = add i64 %95, %46
  %97 = add i64 %96, %61
  %98 = add i64 %97, %67
  %99 = add i64 %98, %59
  %100 = add i64 %99, %74
  ret i64 %100
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !128
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44, !alias.scope !128
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45, !alias.scope !128
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = load i32, ptr %8, align 8, !tbaa !73, !noalias !128
  %10 = icmp ugt i32 %9, 6
  %11 = load i32, ptr %2, align 8, !noalias !128
  %12 = icmp ugt i32 %11, 26
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  store i32 2, ptr %7, align 8, !tbaa !78, !alias.scope !128
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

16:                                               ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !78, !alias.scope !128
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull align 8 %2) #30
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !77, !alias.scope !128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 8, !tbaa !73, !noalias !128
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %9, %14 ], [ %21, %20 ]
  %24 = phi ptr [ %15, %14 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !68, !noalias !128
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %16
  %31 = phi ptr [ %17, %16 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %16 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !77, !alias.scope !128
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %34 = load i32, ptr %33, align 8, !tbaa !76, !alias.scope !128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, ptr %8, align 8, !tbaa !73, !noalias !128
  %38 = add i32 %37, -6
  %39 = icmp ult i32 %38, -3
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 8, !tbaa !68, !noalias !128
  %42 = icmp ugt i32 %41, 14
  %43 = select i1 %42, i32 1, i32 2
  br label %44

44:                                               ; preds = %30, %36, %40
  %45 = phi i32 [ %43, %40 ], [ %34, %30 ], [ 2, %36 ]
  store i32 %45, ptr %33, align 8, !tbaa !76, !alias.scope !128
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %47 = load i64, ptr %46, align 8, !tbaa !79, !alias.scope !128
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, i64 131072, i64 %47
  store i64 %49, ptr %46, align 8, !tbaa !79, !alias.scope !128
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %51 = load i32, ptr %50, align 8, !tbaa !80, !alias.scope !128
  %52 = load i32, ptr %4, align 4, !tbaa !44, !alias.scope !128
  %53 = icmp eq i32 %51, 0
  %54 = icmp slt i32 %52, 10
  %55 = select i1 %54, i32 2, i32 1
  %56 = select i1 %53, i32 %55, i32 %51
  store i32 %56, ptr %50, align 8, !tbaa !80, !alias.scope !128
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2)
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %58 = load i32, ptr %57, align 8, !tbaa !73
  %59 = add i32 %58, -6
  %60 = icmp ult i32 %59, -3
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  store i32 2, ptr %33, align 8, !tbaa !76
  %62 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  store i32 1, ptr %33, align 8, !tbaa !76
  %63 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  %64 = call i64 @llvm.umax.i64(i64 %62, i64 %63)
  br label %67

65:                                               ; preds = %44
  %66 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i64 [ %64, %61 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %9

9:                                                ; preds = %1, %148
  %10 = phi i32 [ %3, %1 ], [ %150, %148 ]
  %11 = phi i64 [ 0, %1 ], [ %149, %148 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = icmp slt i32 %10, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @llvm.umin.i32(i32 %10, i32 22)
  %17 = zext nneg i32 %16 to i64
  br label %18

18:                                               ; preds = %15, %13, %9
  %19 = phi i64 [ 3, %9 ], [ 0, %13 ], [ %17, %15 ]
  %20 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 3, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !49, !noalias !131
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !49, !noalias !131
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !49, !noalias !131
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 12
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %28 = load i32, ptr %27, align 4, !tbaa !49, !noalias !131
  %29 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %30 = load i32, ptr %29, align 4, !tbaa !49, !noalias !131
  %31 = tail call i32 @llvm.umin.i32(i32 %21, i32 14)
  %32 = icmp ugt i32 %30, 5
  %33 = sext i1 %32 to i32
  %34 = add i32 %23, %33
  %35 = add nuw nsw i32 %31, 1
  %36 = tail call i32 @llvm.umin.i32(i32 %25, i32 %35)
  %37 = icmp ugt i32 %34, %31
  %38 = sub nsw i32 %31, %33
  %39 = select i1 %37, i32 %38, i32 %23
  %40 = tail call i32 @llvm.umax.i32(i32 %31, i32 10)
  %41 = icmp slt i32 %10, 0
  %42 = tail call i32 @llvm.umax.i32(i32 %10, i32 -131072)
  %43 = sub nsw i32 0, %42
  %44 = select i1 %41, i32 %43, i32 %28
  store i32 %40, ptr %2, align 8, !tbaa !49, !alias.scope !131
  store i32 %39, ptr %4, align 4, !tbaa !49, !alias.scope !131
  store i32 %36, ptr %5, align 8, !tbaa !49, !alias.scope !131
  %45 = load <2 x i32>, ptr %26, align 4, !tbaa !49, !noalias !131
  store <2 x i32> %45, ptr %6, align 4, !tbaa !49, !alias.scope !131
  store i32 %44, ptr %7, align 4, !tbaa !49, !alias.scope !131
  store i32 %30, ptr %8, align 8, !tbaa !49, !alias.scope !131
  %46 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %18
  %49 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %50

50:                                               ; preds = %48, %18
  %51 = phi i64 [ %49, %48 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %52 = icmp slt i32 %10, 1
  %53 = select i1 %12, i64 3, i64 0
  %54 = tail call i32 @llvm.umin.i32(i32 %10, i32 22)
  %55 = zext nneg i32 %54 to i64
  %56 = select i1 %52, i64 %53, i64 %55
  %57 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 2, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !49, !noalias !134
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 4
  %60 = load i32, ptr %59, align 4, !tbaa !49, !noalias !134
  %61 = getelementptr inbounds nuw i8, ptr %57, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !49, !noalias !134
  %63 = getelementptr inbounds nuw i8, ptr %57, i64 12
  %64 = getelementptr inbounds nuw i8, ptr %57, i64 20
  %65 = load i32, ptr %64, align 4, !tbaa !49, !noalias !134
  %66 = getelementptr inbounds nuw i8, ptr %57, i64 24
  %67 = load i32, ptr %66, align 4, !tbaa !49, !noalias !134
  %68 = tail call i32 @llvm.umin.i32(i32 %58, i32 17)
  %69 = icmp ugt i32 %67, 5
  %70 = sext i1 %69 to i32
  %71 = add i32 %60, %70
  %72 = add nuw nsw i32 %68, 1
  %73 = tail call i32 @llvm.umin.i32(i32 %62, i32 %72)
  %74 = icmp ugt i32 %71, %68
  %75 = sub nsw i32 %68, %70
  %76 = select i1 %74, i32 %75, i32 %60
  %77 = tail call i32 @llvm.umax.i32(i32 %68, i32 10)
  %78 = select i1 %41, i32 %43, i32 %65
  store i32 %77, ptr %2, align 8, !tbaa !49, !alias.scope !134
  store i32 %76, ptr %4, align 4, !tbaa !49, !alias.scope !134
  store i32 %73, ptr %5, align 8, !tbaa !49, !alias.scope !134
  %79 = load <2 x i32>, ptr %63, align 4, !tbaa !49, !noalias !134
  store <2 x i32> %79, ptr %6, align 4, !tbaa !49, !alias.scope !134
  store i32 %78, ptr %7, align 4, !tbaa !49, !alias.scope !134
  store i32 %67, ptr %8, align 8, !tbaa !49, !alias.scope !134
  %80 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %81 = icmp ugt i64 %80, %51
  br i1 %81, label %82, label %84

82:                                               ; preds = %50
  %83 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %84

84:                                               ; preds = %82, %50
  %85 = phi i64 [ %83, %82 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %86 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 1, i64 %56
  %87 = load i32, ptr %86, align 4, !tbaa !49, !noalias !137
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %89 = load i32, ptr %88, align 4, !tbaa !49, !noalias !137
  %90 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %91 = load i32, ptr %90, align 4, !tbaa !49, !noalias !137
  %92 = getelementptr inbounds nuw i8, ptr %86, i64 12
  %93 = getelementptr inbounds nuw i8, ptr %86, i64 20
  %94 = load i32, ptr %93, align 4, !tbaa !49, !noalias !137
  %95 = getelementptr inbounds nuw i8, ptr %86, i64 24
  %96 = load i32, ptr %95, align 4, !tbaa !49, !noalias !137
  %97 = tail call i32 @llvm.umin.i32(i32 %87, i32 18)
  %98 = icmp ugt i32 %96, 5
  %99 = sext i1 %98 to i32
  %100 = add i32 %89, %99
  %101 = add nuw nsw i32 %97, 1
  %102 = tail call i32 @llvm.umin.i32(i32 %91, i32 %101)
  %103 = icmp ugt i32 %100, %97
  %104 = sub nsw i32 %97, %99
  %105 = select i1 %103, i32 %104, i32 %89
  %106 = tail call i32 @llvm.umax.i32(i32 %97, i32 10)
  %107 = select i1 %41, i32 %43, i32 %94
  store i32 %106, ptr %2, align 8, !tbaa !49, !alias.scope !137
  store i32 %105, ptr %4, align 4, !tbaa !49, !alias.scope !137
  store i32 %102, ptr %5, align 8, !tbaa !49, !alias.scope !137
  %108 = load <2 x i32>, ptr %92, align 4, !tbaa !49, !noalias !137
  store <2 x i32> %108, ptr %6, align 4, !tbaa !49, !alias.scope !137
  store i32 %107, ptr %7, align 4, !tbaa !49, !alias.scope !137
  store i32 %96, ptr %8, align 8, !tbaa !49, !alias.scope !137
  %109 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %110 = icmp ugt i64 %109, %85
  br i1 %110, label %111, label %113

111:                                              ; preds = %84
  %112 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %113

113:                                              ; preds = %111, %84
  %114 = phi i64 [ %112, %111 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %115 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 0, i64 %56
  %116 = load i32, ptr %115, align 4, !tbaa !49, !noalias !140
  %117 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %118 = load i32, ptr %117, align 4, !tbaa !49, !noalias !140
  %119 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %120 = load i32, ptr %119, align 4, !tbaa !49, !noalias !140
  %121 = getelementptr inbounds nuw i8, ptr %115, i64 12
  %122 = load <2 x i32>, ptr %121, align 4, !tbaa !49, !noalias !140
  %123 = getelementptr inbounds nuw i8, ptr %115, i64 20
  %124 = load i32, ptr %123, align 4, !tbaa !49, !noalias !140
  %125 = getelementptr inbounds nuw i8, ptr %115, i64 24
  %126 = load i32, ptr %125, align 4, !tbaa !49, !noalias !140
  %127 = add i32 %126, -6
  %128 = icmp ult i32 %127, -3
  br i1 %128, label %135, label %129

129:                                              ; preds = %113
  %130 = load i32, ptr %121, align 4, !tbaa !49, !noalias !140
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 4)
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 6)
  %133 = or disjoint i32 %132, 24
  %134 = tail call i32 @llvm.umin.i32(i32 %120, i32 %133)
  br label %135

135:                                              ; preds = %113, %129
  %136 = phi i32 [ %120, %113 ], [ %134, %129 ]
  %137 = tail call i32 @llvm.umax.i32(i32 %116, i32 10)
  %138 = select i1 %41, i32 %43, i32 %124
  store i32 %137, ptr %2, align 8, !tbaa !49, !alias.scope !140
  store i32 %118, ptr %4, align 4, !tbaa !49, !alias.scope !140
  store i32 %136, ptr %5, align 8, !tbaa !49, !alias.scope !140
  store <2 x i32> %122, ptr %6, align 4, !tbaa !49, !alias.scope !140
  store i32 %138, ptr %7, align 4, !tbaa !49, !alias.scope !140
  store i32 %126, ptr %8, align 8, !tbaa !49, !alias.scope !140
  %139 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %140 = icmp ugt i64 %139, %114
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %143

143:                                              ; preds = %135, %141
  %144 = phi i64 [ %142, %141 ], [ %114, %135 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  %145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1), !nosanitize !143
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !143
  br i1 %146, label %147, label %148, !prof !144, !nosanitize !143

147:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !143
  unreachable, !nosanitize !143

148:                                              ; preds = %143
  %149 = tail call i64 @llvm.umax.i64(i64 %144, i64 %11)
  %150 = extractvalue { i32, i1 } %145, 0, !nosanitize !143
  %151 = icmp sgt i32 %150, %0
  br i1 %151, label %152, label %9, !llvm.loop !145

152:                                              ; preds = %148
  ret i64 %149
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #12

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !125
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 131072, i64 %10
  %13 = load i32, ptr %2, align 4, !tbaa !68
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = tail call i64 @llvm.umin.i64(i64 %12, i64 %15)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %18 = load i32, ptr %17, align 4, !tbaa !103
  %19 = icmp eq i32 %18, 0
  %20 = add i64 %16, %15
  %21 = select i1 %19, i64 %20, i64 0
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %23 = load i32, ptr %22, align 8, !tbaa !104
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %7
  %26 = lshr i64 %16, 8
  %27 = add nuw i64 %26, %16
  %28 = icmp ult i64 %16, 131072
  %29 = sub nuw nsw i64 131072, %16
  %30 = lshr i64 %29, 11
  %31 = select i1 %28, i64 %30, i64 0
  %32 = add nuw i64 %27, %31
  %33 = freeze i64 %32
  %34 = icmp eq i64 %33, 0
  %35 = add i64 %33, 1
  %36 = select i1 %34, i64 -71, i64 %35
  br label %37

37:                                               ; preds = %7, %25
  %38 = phi i64 [ %36, %25 ], [ 0, %7 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %40 = load i32, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %45 = load i32, ptr %44, align 4, !tbaa !73
  %46 = add i32 %45, -6
  %47 = icmp ult i32 %46, -3
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %41, align 4, !tbaa !68
  %50 = icmp ugt i32 %49, 14
  %51 = select i1 %50, i32 1, i32 2
  br label %52

52:                                               ; preds = %37, %43, %48
  %53 = phi i32 [ %51, %48 ], [ %40, %37 ], [ 2, %43 ]
  %54 = load i32, ptr %3, align 4, !tbaa !126
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  %57 = load i64, ptr %9, align 8, !tbaa !79
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i64 [ %57, %56 ], [ %10, %52 ]
  %60 = getelementptr i8, ptr %0, i64 208
  %61 = load ptr, ptr %60, align 8, !tbaa !127
  %62 = icmp ne ptr %61, null
  %63 = zext i1 %62 to i32
  %64 = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %53, i64 noundef %21, i64 noundef %38, i64 noundef -1, i32 noundef %63, i64 noundef %59)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  br label %65

65:                                               ; preds = %1, %58
  %66 = phi i64 [ %64, %58 ], [ -1, %1 ]
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !147
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44, !alias.scope !147
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45, !alias.scope !147
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = load i32, ptr %8, align 8, !tbaa !73, !noalias !147
  %10 = icmp ugt i32 %9, 6
  %11 = load i32, ptr %2, align 8, !noalias !147
  %12 = icmp ugt i32 %11, 26
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  store i32 2, ptr %7, align 8, !tbaa !78, !alias.scope !147
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 140
  br label %22

16:                                               ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !78, !alias.scope !147
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull align 8 %2) #30
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %18 = load i32, ptr %17, align 4, !tbaa !77, !alias.scope !147
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 8, !tbaa !73, !noalias !147
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %9, %14 ], [ %21, %20 ]
  %24 = phi ptr [ %15, %14 ], [ %17, %20 ]
  %25 = icmp ugt i32 %23, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8, !tbaa !68, !noalias !147
  %28 = icmp ugt i32 %27, 16
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22, %16
  %31 = phi ptr [ %17, %16 ], [ %24, %22 ], [ %24, %26 ]
  %32 = phi i32 [ %18, %16 ], [ 2, %22 ], [ %29, %26 ]
  store i32 %32, ptr %31, align 4, !tbaa !77, !alias.scope !147
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %34 = load i32, ptr %33, align 8, !tbaa !76, !alias.scope !147
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, ptr %8, align 8, !tbaa !73, !noalias !147
  %38 = add i32 %37, -6
  %39 = icmp ult i32 %38, -3
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 8, !tbaa !68, !noalias !147
  %42 = icmp ugt i32 %41, 14
  %43 = select i1 %42, i32 1, i32 2
  br label %44

44:                                               ; preds = %30, %36, %40
  %45 = phi i32 [ %43, %40 ], [ %34, %30 ], [ 2, %36 ]
  store i32 %45, ptr %33, align 8, !tbaa !76, !alias.scope !147
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %47 = load i64, ptr %46, align 8, !tbaa !79, !alias.scope !147
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, i64 131072, i64 %47
  store i64 %49, ptr %46, align 8, !tbaa !79, !alias.scope !147
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %51 = load i32, ptr %50, align 8, !tbaa !80, !alias.scope !147
  %52 = load i32, ptr %4, align 4, !tbaa !44, !alias.scope !147
  %53 = icmp eq i32 %51, 0
  %54 = icmp slt i32 %52, 10
  %55 = select i1 %54, i32 2, i32 1
  %56 = select i1 %53, i32 %55, i32 %51
  store i32 %56, ptr %50, align 8, !tbaa !80, !alias.scope !147
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2)
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %58 = load i32, ptr %57, align 8, !tbaa !73
  %59 = add i32 %58, -6
  %60 = icmp ult i32 %59, -3
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  store i32 2, ptr %33, align 8, !tbaa !76
  %62 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  store i32 1, ptr %33, align 8, !tbaa !76
  %63 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  %64 = call i64 @llvm.umax.i64(i64 %62, i64 %63)
  br label %67

65:                                               ; preds = %44
  %66 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i64 [ %64, %61 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %9

9:                                                ; preds = %1, %51
  %10 = phi i32 [ %3, %1 ], [ %53, %51 ]
  %11 = phi i64 [ 0, %1 ], [ %52, %51 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = icmp slt i32 %10, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @llvm.umin.i32(i32 %10, i32 22)
  %17 = zext nneg i32 %16 to i64
  br label %18

18:                                               ; preds = %15, %13, %9
  %19 = phi i64 [ 3, %9 ], [ 0, %13 ], [ %17, %15 ]
  %20 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !49, !noalias !150
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !49, !noalias !150
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !49, !noalias !150
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 12
  %27 = load <2 x i32>, ptr %26, align 4, !tbaa !49, !noalias !150
  %28 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %29 = load i32, ptr %28, align 4, !tbaa !49, !noalias !150
  %30 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !49, !noalias !150
  %32 = add i32 %31, -6
  %33 = icmp ult i32 %32, -3
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = load i32, ptr %26, align 4, !tbaa !49, !noalias !150
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 4)
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 6)
  %38 = or disjoint i32 %37, 24
  %39 = tail call i32 @llvm.umin.i32(i32 %25, i32 %38)
  br label %40

40:                                               ; preds = %18, %34
  %41 = phi i32 [ %25, %18 ], [ %39, %34 ]
  %42 = tail call i32 @llvm.umax.i32(i32 %21, i32 10)
  %43 = icmp slt i32 %10, 0
  %44 = tail call i32 @llvm.umax.i32(i32 %10, i32 -131072)
  %45 = sub nsw i32 0, %44
  %46 = select i1 %43, i32 %45, i32 %29
  store i32 %42, ptr %2, align 8, !tbaa !49, !alias.scope !150
  store i32 %23, ptr %4, align 4, !tbaa !49, !alias.scope !150
  store i32 %41, ptr %5, align 8, !tbaa !49, !alias.scope !150
  store <2 x i32> %27, ptr %6, align 4, !tbaa !49, !alias.scope !150
  store i32 %46, ptr %7, align 4, !tbaa !49, !alias.scope !150
  store i32 %31, ptr %8, align 8, !tbaa !49, !alias.scope !150
  %47 = tail call i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1), !nosanitize !143
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !143
  br i1 %49, label %50, label %51, !prof !144, !nosanitize !143

50:                                               ; preds = %40
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !143
  unreachable, !nosanitize !143

51:                                               ; preds = %40
  %52 = tail call i64 @llvm.umax.i64(i64 %47, i64 %11)
  %53 = extractvalue { i32, i1 } %48, 0, !nosanitize !143
  %54 = icmp sgt i32 %53, %0
  br i1 %54, label %55, label %9, !llvm.loop !153

55:                                               ; preds = %51
  ret i64 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getFrameProgression(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_frameProgression) align 8 captures(none) initializes((0, 40)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 3592
  %8 = load i64, ptr %7, align 8, !tbaa !155
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %10 = load i64, ptr %9, align 8, !tbaa !156
  %11 = sub i64 %8, %10
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i64 [ %11, %6 ], [ 0, %2 ]
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 792
  %15 = load i64, ptr %14, align 8, !tbaa !157
  %16 = add i64 %15, %13
  store i64 %16, ptr %0, align 8, !tbaa !158
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %15, ptr %17, align 8, !tbaa !160
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 800
  %19 = load i64, ptr %18, align 8, !tbaa !161
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %19, ptr %20, align 8, !tbaa !162
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %19, ptr %21, align 8, !tbaa !163
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %22, align 8, !tbaa !164
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %23, align 4, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_toFlushNow(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_reset_compressedBlockState(ptr noundef writeonly captures(none) initializes((2056, 2060), (5604, 5628)) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %3, align 8, !tbaa !166
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %4, align 4, !tbaa !167
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %6, align 4, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_invalidateRepCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 5616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_copyCCtx(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = load i32, ptr %1, align 8, !tbaa !170
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %95

7:                                                ; preds = %3
  %8 = icmp eq i64 %2, 0
  %9 = select i1 %8, i64 -1, i64 %2
  %10 = icmp ne i64 %9, -1
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 3560
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 896
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull readonly align 8 dereferenceable(24) %15, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #30
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %16, i64 224, i1 false), !tbaa.struct !113
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %17, ptr noundef nonnull readonly align 4 dereferenceable(28) %18, i64 28, i1 false), !tbaa.struct !74
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 400
  %20 = load i32, ptr %19, align 8, !tbaa !172
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 %20, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 380
  %23 = load i32, ptr %22, align 4, !tbaa !173
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 140
  store i32 %23, ptr %24, align 4, !tbaa !77
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull readonly align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !125
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %11, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %28, align 8, !tbaa !49
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 392
  %30 = load i64, ptr %29, align 8, !tbaa !174
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %30, ptr %31, align 8, !tbaa !79
  %32 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %9, i64 noundef 0, i32 noundef 1, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %34, ptr %35, align 8, !tbaa !54
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %37 = load i32, ptr %36, align 4, !tbaa !175
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %50, label %39

39:                                               ; preds = %7
  %40 = load i32, ptr %19, align 8, !tbaa !172
  %41 = add i32 %37, -3
  %42 = icmp ult i32 %41, 3
  %43 = icmp eq i32 %40, 1
  %44 = and i1 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %47 = load i32, ptr %46, align 4, !tbaa !176
  %48 = zext nneg i32 %47 to i64
  %49 = shl i64 4, %48
  br label %50

50:                                               ; preds = %45, %39, %7
  %51 = phi i64 [ %49, %45 ], [ 0, %39 ], [ 0, %7 ]
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 252
  %53 = load i32, ptr %52, align 4, !tbaa !177
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 3224
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 3240
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 3288
  %58 = load i32, ptr %57, align 8, !tbaa !178
  %59 = icmp eq i32 %58, 0
  %60 = zext nneg i32 %58 to i64
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %64 = load ptr, ptr %63, align 8, !tbaa !179
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 3352
  %66 = load ptr, ptr %65, align 8, !tbaa !179
  %67 = shl i64 4, %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %66, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %69 = load ptr, ptr %68, align 8, !tbaa !180
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %71 = load ptr, ptr %70, align 8, !tbaa !180
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %69, ptr align 4 %71, i64 %51, i1 false)
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %75 = load ptr, ptr %74, align 8, !tbaa !181
  %76 = shl i64 4, %60
  %77 = select i1 %59, i64 0, i64 %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 4 %75, i64 %77, i1 false)
  %78 = load ptr, ptr %35, align 8, !tbaa !54
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %80 = load ptr, ptr %79, align 8, !tbaa !53
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %50
  store ptr %80, ptr %35, align 8, !tbaa !54
  br label %83

83:                                               ; preds = %82, %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef nonnull readonly align 8 dereferenceable(40) %56, i64 40, i1 false), !tbaa.struct !182
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %86 = load <2 x i32>, ptr %84, align 8, !tbaa !49
  store <2 x i32> %86, ptr %85, align 8, !tbaa !49
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 688
  %88 = load i32, ptr %87, align 8, !tbaa !184
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %88, ptr %89, align 8, !tbaa !184
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 696
  %91 = load i64, ptr %90, align 8, !tbaa !185
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %91, ptr %92, align 8, !tbaa !185
  %93 = load ptr, ptr %61, align 8, !tbaa !55
  %94 = load ptr, ptr %55, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %93, ptr noundef nonnull align 8 dereferenceable(5632) %94, i64 5632, i1 false)
  br label %95

95:                                               ; preds = %3, %83
  %96 = phi i64 [ 0, %83 ], [ -60, %3 ]
  ret i64 %96
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ZSTD_seqToCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !186
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !190
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

19:                                               ; preds = %16, %54
  %20 = phi i64 [ 0, %16 ], [ %57, %54 ]
  %21 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %2, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i16, ptr %22, align 4, !tbaa !191
  %24 = load i32, ptr %21, align 4, !tbaa !194
  %25 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %24, i1 true)
  %26 = getelementptr inbounds nuw i8, ptr %21, i64 6
  %27 = load i16, ptr %26, align 2, !tbaa !195
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
  %37 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !196
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi i8 [ %34, %30 ], [ %38, %35 ]
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 %20
  store i8 %40, ptr %41, align 1, !tbaa !196
  %42 = trunc nuw nsw i32 %25 to i8
  %43 = xor i8 %42, 31
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 %20
  store i8 %43, ptr %44, align 1, !tbaa !196
  %45 = icmp ugt i16 %27, 127
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %28, i1 true)
  %48 = trunc nuw nsw i32 %47 to i8
  %49 = sub nuw nsw i8 67, %48
  br label %54

50:                                               ; preds = %39
  %51 = zext nneg i16 %27 to i64
  %52 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !196
  br label %54

54:                                               ; preds = %46, %50
  %55 = phi i8 [ %49, %46 ], [ %53, %50 ]
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  store i8 %55, ptr %56, align 1, !tbaa !196
  %57 = add nuw nsw i64 %20, 1
  %58 = icmp eq i64 %57, %18
  br i1 %58, label %59, label %19, !llvm.loop !197

59:                                               ; preds = %54, %1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %61 = load i32, ptr %60, align 8, !tbaa !198
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %65 = load i32, ptr %64, align 4, !tbaa !199
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 %66
  store i8 35, ptr %67, align 1, !tbaa !196
  %68 = load i32, ptr %60, align 8, !tbaa !198
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i32 [ %68, %63 ], [ %61, %59 ]
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %74 = load i32, ptr %73, align 4, !tbaa !199
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds nuw i8, ptr %8, i64 %75
  store i8 52, ptr %76, align 1, !tbaa !196
  br label %77

77:                                               ; preds = %72, %69
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %0, -6
  %5 = icmp ult i32 %4, -3
  %6 = icmp ne i32 %1, 1
  %7 = or i1 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = add nsw i32 %0, -3
  %10 = sext i32 %2 to i64
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds [4 x [3 x ptr]], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 0, i64 %10, i64 %11
  br label %17

13:                                               ; preds = %3
  %14 = sext i32 %2 to i64
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 0, i64 %14, i64 %15
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi ptr [ %12, %8 ], [ %16, %13 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  ret ptr %19
}

declare i64 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_resetSeqStore(ptr noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %4, align 8, !tbaa !201
  %5 = load ptr, ptr %0, align 8, !tbaa !186
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %6, align 8, !tbaa !190
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %7, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 2, 6166929089745999191) i64 @ZSTD_sequenceBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = udiv i64 %0, 3
  %3 = lshr i64 %0, 10
  %4 = add nuw nsw i64 %3, 2
  %5 = add nuw nsw i64 %4, %2
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = icmp ugt i64 %4, -71777214294589697
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = lshr i64 %4, 8
  %11 = add nuw i64 %10, %4
  %12 = icmp ult i64 %4, 131072
  %13 = sub nuw nsw i64 131072, %4
  %14 = lshr i64 %13, 11
  %15 = select i1 %12, i64 %14, i64 0
  %16 = add i64 %11, %15
  %17 = freeze i64 %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9, %5
  br label %20

20:                                               ; preds = %9, %19
  %21 = phi i64 [ -72, %19 ], [ %17, %9 ]
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %23 = load i64, ptr %22, align 8, !tbaa !101
  %24 = and i64 %23, 4294967295
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %28 = load i32, ptr %27, align 4, !tbaa !111
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = tail call noalias ptr @malloc(i64 noundef %21) #31
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %34, align 8, !tbaa !49
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr %1, ptr %35, align 8, !tbaa !48
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %36, align 8, !tbaa !114
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 %2, ptr %37, align 8, !tbaa !114
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %40, align 8, !tbaa !81
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %41, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  store ptr %31, ptr %6, align 8, !tbaa !202
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %21, ptr %42, align 8, !tbaa !204
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %43, align 8, !tbaa !205
  store ptr %3, ptr %7, align 8, !tbaa !206
  %44 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %44, align 8, !tbaa !207
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %45, align 8, !tbaa !208
  %46 = load <2 x i32>, ptr %38, align 4, !tbaa !49
  store i32 1, ptr %38, align 4, !tbaa !209
  store i32 1, ptr %39, align 8, !tbaa !210
  %47 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %48 = load i64, ptr %43, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  store <2 x i32> %46, ptr %38, align 4, !tbaa !49
  %49 = icmp ult i64 %47, -119
  %50 = icmp eq i64 %47, 0
  %51 = select i1 %50, i64 %48, i64 -70
  %52 = select i1 %49, i64 %51, i64 %47
  tail call void @free(ptr noundef nonnull %31) #30
  %53 = icmp ult i64 %52, -119
  br i1 %53, label %54, label %56

54:                                               ; preds = %33
  %55 = load i64, ptr %36, align 8, !tbaa !211
  br label %56

56:                                               ; preds = %30, %33, %26, %20, %54
  %57 = phi i64 [ %55, %54 ], [ %52, %33 ], [ -40, %26 ], [ -40, %20 ], [ -64, %30 ]
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress2(ptr noundef initializes((784, 792), (3640, 3644)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %10, align 8, !tbaa !81
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %11, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  store ptr %1, ptr %6, align 8, !tbaa !202
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %12, align 8, !tbaa !204
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %13, align 8, !tbaa !205
  store ptr %3, ptr %7, align 8, !tbaa !206
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %14, align 8, !tbaa !207
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %15, align 8, !tbaa !208
  %16 = load <2 x i32>, ptr %8, align 4, !tbaa !49
  store i32 1, ptr %8, align 4, !tbaa !209
  store i32 1, ptr %9, align 8, !tbaa !210
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %18 = load i64, ptr %13, align 8, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  store <2 x i32> %16, ptr %8, align 4, !tbaa !49
  %19 = icmp ult i64 %17, -119
  %20 = icmp eq i64 %17, 0
  %21 = select i1 %20, i64 %18, i64 -70
  %22 = select i1 %19, i64 %21, i64 %17
  ret i64 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_mergeBlockDelimiters(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = add i64 %1, -2
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi i64 [ 0, %7 ], [ %29, %28 ]
  %11 = phi i64 [ 0, %7 ], [ %30, %28 ]
  %12 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !212
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !214
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !215
  %22 = getelementptr i8, ptr %12, i64 20
  %23 = load i32, ptr %22, align 4, !tbaa !215
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 4, !tbaa !215
  br label %28

25:                                               ; preds = %15, %9
  %26 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !216
  %27 = add i64 %10, 1
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i64 [ %10, %19 ], [ %27, %25 ]
  %30 = add nuw i64 %11, 1
  %31 = icmp eq i64 %11, %8
  br i1 %31, label %32, label %9, !llvm.loop !217

32:                                               ; preds = %28, %4
  %33 = phi i64 [ 0, %4 ], [ %29, %28 ]
  %34 = phi i64 [ 0, %4 ], [ %30, %28 ]
  %35 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !212
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !214
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %0, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull align 4 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !216
  %44 = add i64 %33, 1
  br label %53

45:                                               ; preds = %38
  %46 = icmp eq i64 %34, %5
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !215
  %50 = getelementptr i8, ptr %35, i64 20
  %51 = load i32, ptr %50, align 4, !tbaa !215
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 4, !tbaa !215
  br label %53

53:                                               ; preds = %42, %45, %47, %2
  %54 = phi i64 [ 0, %2 ], [ %33, %47 ], [ %33, %45 ], [ %44, %42 ]
  ret i64 %54
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildBlockEntropyStats(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 2064)) %2, ptr noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load ptr, ptr %10, align 8, !tbaa !201
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !200
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !90
  %19 = icmp ugt i32 %18, 7
  %20 = select i1 %19, i32 2, i32 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %22 = load i32, ptr %21, align 8, !tbaa !95
  switch i32 %22, label %24 [
    i32 1, label %26
    i32 2, label %23
  ]

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  store i32 255, ptr %9, align 4, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

24:                                               ; preds = %7
  %25 = icmp eq i32 %18, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %7, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  store i32 255, ptr %9, align 4, !tbaa !49
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %28 = load i32, ptr %27, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !89
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  store i32 255, ptr %9, align 4, !tbaa !49
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %34 = load i32, ptr %33, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br i1 %32, label %35, label %90

35:                                               ; preds = %26, %29
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi ptr [ %27, %26 ], [ %33, %29 ]
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %39 = add nsw i64 %6, -1024
  %40 = load i32, ptr %37, align 8, !tbaa !219
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i64 6, i64 63
  %43 = icmp ugt i64 %16, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %35
  %45 = call i64 @HIST_count_wksp(ptr noundef %5, ptr noundef nonnull %9, ptr noundef %13, i64 noundef %16, ptr noundef %5, i64 noundef %6) #30
  %46 = icmp ult i64 %45, -119
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = icmp eq i64 %45, %16
  br i1 %48, label %90, label %49

49:                                               ; preds = %47
  %50 = lshr i64 %16, 7
  %51 = add nuw nsw i64 %50, 4
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = icmp eq i32 %36, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = load i32, ptr %9, align 4, !tbaa !49
  %57 = call i32 @HUF_validateCTable(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %56) #30
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %36, %53 ], [ %59, %55 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %62 = load i32, ptr %9, align 4, !tbaa !49
  %63 = call i32 @HUF_optimalTableLog(i32 noundef 11, i64 noundef %16, i32 noundef %62, ptr noundef nonnull %38, i64 noundef %39, ptr noundef nonnull %2, ptr noundef %5, i32 noundef range(i32 0, 3) %20) #30
  %64 = load i32, ptr %9, align 4, !tbaa !49
  %65 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %64, i32 noundef %63, ptr noundef nonnull %38, i64 noundef %39) #30
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = trunc i64 %65 to i32
  %69 = load i32, ptr %9, align 4, !tbaa !49
  %70 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %69) #30
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %72 = load i32, ptr %9, align 4, !tbaa !49
  %73 = call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %71, i64 noundef 128, ptr noundef nonnull %2, i32 noundef %72, i32 noundef %68, ptr noundef nonnull %38, i64 noundef %39) #30
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %9, align 4, !tbaa !49
  %77 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %76) #30
  %78 = icmp ult i64 %77, %16
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = add i64 %73, %70
  %81 = icmp ugt i64 %77, %80
  %82 = add i64 %73, 12
  %83 = icmp ult i64 %82, %16
  %84 = and i1 %83, %81
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

86:                                               ; preds = %79, %75, %67
  %87 = add i64 %73, %70
  %88 = icmp ult i64 %87, %16
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

90:                                               ; preds = %49, %47, %35, %29, %23, %89, %85
  %91 = phi i32 [ 0, %89 ], [ 3, %85 ], [ 0, %23 ], [ 0, %29 ], [ 0, %35 ], [ 1, %47 ], [ 0, %49 ]
  store i32 %91, ptr %4, align 8, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %92, align 8, !tbaa !221
  br label %100

93:                                               ; preds = %60, %44
  %94 = phi i64 [ %45, %44 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %94, ptr %95, align 8, !tbaa !221
  br label %142

96:                                               ; preds = %86
  store i32 2, ptr %4, align 8, !tbaa !220
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 2056
  store i32 1, ptr %97, align 8, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %73, ptr %98, align 8, !tbaa !221
  %99 = icmp ult i64 %73, -119
  br i1 %99, label %100, label %142

100:                                              ; preds = %90, %96
  %101 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %103 = load ptr, ptr %102, align 8, !tbaa !190
  %104 = load ptr, ptr %0, align 8, !tbaa !186
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 5612
  store i32 0, ptr %107, align 4, !tbaa !222, !noalias !223
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 5604
  store i32 0, ptr %108, align 4, !tbaa !226, !noalias !223
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 5608
  store i32 0, ptr %109, align 4, !tbaa !227, !noalias !223
  br label %130

110:                                              ; preds = %100
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 2064
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %113 = ptrtoint ptr %104 to i64
  %114 = ptrtoint ptr %103 to i64
  %115 = sub i64 %114, %113
  %116 = ashr exact i64 %115, 3
  %117 = add i64 %6, -212
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 212
  %119 = getelementptr inbounds nuw i8, ptr %4, i64 156
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 289
  %121 = load i32, ptr %17, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #30
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull readonly %0, i64 noundef %116, ptr noundef nonnull %112, ptr noundef nonnull %111, ptr noundef nonnull %119, ptr noundef nonnull %120, i32 noundef %121, ptr noundef %5, ptr noundef nonnull %118, i64 noundef %117)
  %122 = load <2 x i32>, ptr %8, align 8, !tbaa !49
  %123 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %124 = load i32, ptr %123, align 8, !tbaa !49
  %125 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %126 = load i64, ptr %125, align 8, !tbaa !114
  %127 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %128 = load i64, ptr %127, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #30
  %129 = icmp ult i64 %126, -119
  br i1 %129, label %130, label %137

130:                                              ; preds = %110, %106
  %131 = phi i32 [ 0, %106 ], [ %124, %110 ]
  %132 = phi i64 [ 0, %106 ], [ %126, %110 ]
  %133 = phi i64 [ 0, %106 ], [ %128, %110 ]
  %134 = phi <2 x i32> [ zeroinitializer, %106 ], [ %122, %110 ]
  store <2 x i32> %134, ptr %101, align 8, !tbaa !49
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 %131, ptr %135, align 8, !tbaa !228
  %136 = getelementptr inbounds nuw i8, ptr %4, i64 304
  store i64 %133, ptr %136, align 8, !tbaa !229
  br label %137

137:                                              ; preds = %110, %130
  %138 = phi i64 [ %126, %110 ], [ %132, %130 ]
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i64 %138, ptr %139, align 8, !tbaa !230
  %140 = icmp ult i64 %138, -119
  %141 = select i1 %140, i64 0, i64 %138
  br label %142

142:                                              ; preds = %93, %137, %96
  %143 = phi i64 [ %73, %96 ], [ %141, %137 ], [ %94, %93 ]
  ret i64 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -72, 4294967304) i64 @ZSTD_writeSkippableFrame(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = add i64 %3, 8
  %7 = icmp ult i64 %1, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = icmp ugt i64 %3, 4294967295
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i32 %4, 15
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = or disjoint i32 %4, 407710288
  store i32 %13, ptr %0, align 1, !tbaa !49
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = trunc nuw i64 %3 to i32
  store i32 %15, ptr %14, align 1, !tbaa !49
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %2, i64 %3, i1 false)
  br label %17

17:                                               ; preds = %10, %8, %5, %12
  %18 = phi i64 [ %6, %12 ], [ -70, %5 ], [ -72, %8 ], [ -42, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -70, 4) i64 @ZSTD_writeLastEmptyBlock(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i64 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1, !tbaa !231
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %5, align 1, !tbaa !196
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ 3, %4 ], [ -70, %2 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_referenceExternalSequences(ptr noundef writeonly captures(none) initializes((3184, 3224)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store ptr %1, ptr %4, align 8, !tbaa !232
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store i64 %2, ptr %5, align 8, !tbaa !233
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3216
  store i64 %2, ptr %6, align 8, !tbaa !234
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #2 {
  %8 = alloca %struct.seqStoreSplits, align 8
  %9 = alloca %struct.repcodes_s, align 4
  %10 = alloca %struct.repcodes_s, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %12 = load i32, ptr %0, align 8, !tbaa !170
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %716, label %14

14:                                               ; preds = %7
  %15 = icmp ne i32 %5, 0
  %16 = icmp eq i32 %12, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %21 = load i64, ptr %20, align 8, !tbaa !115
  %22 = add i64 %21, -1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %24 = load i32, ptr %23, align 8, !tbaa !184
  %25 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %19, i64 noundef %22, i32 noundef %24)
  %26 = icmp ult i64 %25, -119
  br i1 %26, label %27, label %716

27:                                               ; preds = %18
  %28 = sub i64 %2, %25
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  store i32 2, ptr %0, align 8, !tbaa !170
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %25, %27 ], [ 0, %14 ]
  %32 = phi i64 [ %28, %27 ], [ %2, %14 ]
  %33 = phi ptr [ %29, %27 ], [ %1, %14 ]
  %34 = icmp eq i64 %4, 0
  br i1 %34, label %716, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %37 = load i32, ptr %36, align 8, !tbaa !235
  %38 = load ptr, ptr %11, align 8, !tbaa !236
  %39 = icmp ne ptr %3, %38
  %40 = icmp ne i32 %37, 0
  %41 = or i1 %40, %39
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %44 = load ptr, ptr %43, align 8, !tbaa !237
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %46 = load i32, ptr %45, align 4, !tbaa !238
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %48 = load i32, ptr %47, align 8, !tbaa !239
  br label %65

49:                                               ; preds = %35
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %51 = load ptr, ptr %50, align 8, !tbaa !240
  %52 = ptrtoint ptr %38 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %56 = load i32, ptr %55, align 8, !tbaa !239
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  store i32 %56, ptr %57, align 4, !tbaa !238
  %58 = trunc i64 %54 to i32
  store i32 %58, ptr %55, align 8, !tbaa !239
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 3256
  store ptr %51, ptr %59, align 8, !tbaa !237
  %60 = sub i64 0, %54
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  store ptr %61, ptr %50, align 8, !tbaa !240
  %62 = sub i32 %58, %56
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 %58, ptr %57, align 4, !tbaa !238
  br label %65

65:                                               ; preds = %64, %49, %42
  %66 = phi i32 [ %48, %42 ], [ %58, %64 ], [ %58, %49 ]
  %67 = phi i32 [ %46, %42 ], [ %58, %64 ], [ %56, %49 ]
  %68 = phi ptr [ %44, %42 ], [ %51, %64 ], [ %51, %49 ]
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  store ptr %69, ptr %11, align 8, !tbaa !236
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 %70
  %72 = icmp ugt ptr %69, %71
  %73 = zext i32 %66 to i64
  %74 = getelementptr inbounds nuw i8, ptr %68, i64 %73
  %75 = icmp ult ptr %3, %74
  %76 = and i1 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %79 = ptrtoint ptr %69 to i64
  %80 = ptrtoint ptr %68 to i64
  %81 = sub i64 %79, %80
  %82 = tail call i64 @llvm.umin.i64(i64 %81, i64 %73)
  %83 = trunc nuw i64 %82 to i32
  store i32 %83, ptr %78, align 4, !tbaa !238
  br label %84

84:                                               ; preds = %65, %77
  br i1 %41, label %85, label %87

85:                                               ; preds = %84
  store i32 0, ptr %36, align 8, !tbaa !235
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  store i32 %66, ptr %86, align 4, !tbaa !241
  br label %87

87:                                               ; preds = %85, %84
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %90 = load i32, ptr %89, align 8, !tbaa !242
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %137

92:                                               ; preds = %87
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %94 = load ptr, ptr %93, align 8, !tbaa !236
  %95 = icmp eq ptr %3, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %98 = load ptr, ptr %97, align 8, !tbaa !237
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %100 = load i32, ptr %99, align 4, !tbaa !238
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %102 = load i32, ptr %101, align 8, !tbaa !239
  br label %119

103:                                              ; preds = %92
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %105 = load ptr, ptr %104, align 8, !tbaa !240
  %106 = ptrtoint ptr %94 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %106, %107
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %110 = load i32, ptr %109, align 8, !tbaa !239
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 %110, ptr %111, align 4, !tbaa !238
  %112 = trunc i64 %108 to i32
  store i32 %112, ptr %109, align 8, !tbaa !239
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %105, ptr %113, align 8, !tbaa !237
  %114 = sub i64 0, %108
  %115 = getelementptr inbounds i8, ptr %3, i64 %114
  store ptr %115, ptr %104, align 8, !tbaa !240
  %116 = sub i32 %112, %110
  %117 = icmp ult i32 %116, 8
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  store i32 %112, ptr %111, align 4, !tbaa !238
  br label %119

119:                                              ; preds = %118, %103, %96
  %120 = phi i32 [ %102, %96 ], [ %112, %118 ], [ %112, %103 ]
  %121 = phi i32 [ %100, %96 ], [ %112, %118 ], [ %110, %103 ]
  %122 = phi ptr [ %98, %96 ], [ %105, %118 ], [ %105, %103 ]
  store ptr %69, ptr %93, align 8, !tbaa !236
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 %123
  %125 = icmp ugt ptr %69, %124
  %126 = zext i32 %120 to i64
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 %126
  %128 = icmp ult ptr %3, %127
  %129 = and i1 %125, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %132 = ptrtoint ptr %69 to i64
  %133 = ptrtoint ptr %122 to i64
  %134 = sub i64 %132, %133
  %135 = tail call i64 @llvm.umin.i64(i64 %134, i64 %126)
  %136 = trunc nuw i64 %135 to i32
  store i32 %136, ptr %131, align 4, !tbaa !238
  br label %137

137:                                              ; preds = %130, %119, %87
  br i1 %15, label %141, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %139, ptr noundef nonnull %88, ptr noundef %3, ptr noundef nonnull %69)
  %140 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef %33, i64 noundef %32, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  br label %698

141:                                              ; preds = %137
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %143 = load i64, ptr %142, align 8, !tbaa !243
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %145 = load i32, ptr %144, align 4, !tbaa !244
  %146 = shl nuw i32 1, %145
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %148 = load i64, ptr %147, align 8, !tbaa !157
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %150 = load i64, ptr %149, align 8, !tbaa !161
  %151 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %148, i64 %150), !nosanitize !143
  %152 = extractvalue { i64, i1 } %151, 1, !nosanitize !143
  br i1 %152, label %153, label %154, !prof !144, !nosanitize !143

153:                                              ; preds = %675, %141
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !143
  unreachable, !nosanitize !143

154:                                              ; preds = %141
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %156 = load i32, ptr %155, align 4, !tbaa !245
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %160 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %159, ptr noundef captures(none) %3, i64 noundef range(i64 1, 0) %4) #30
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %164 = icmp ult i64 %143, 131072
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %174 = getelementptr i8, ptr %0, i64 296
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %181 = getelementptr i8, ptr %0, i64 380
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 4008
  %185 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 4084
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 936
  br label %194

194:                                              ; preds = %684, %161
  %195 = phi { i64, i1 } [ %151, %161 ], [ %681, %684 ]
  %196 = phi i64 [ %32, %161 ], [ %687, %684 ]
  %197 = phi i64 [ %4, %161 ], [ %685, %684 ]
  %198 = phi ptr [ %3, %161 ], [ %231, %684 ]
  %199 = phi ptr [ %33, %161 ], [ %686, %684 ]
  %200 = extractvalue { i64, i1 } %195, 0
  %201 = load i32, ptr %162, align 8, !tbaa !246
  %202 = load i32, ptr %163, align 4, !tbaa !175
  %203 = icmp ult i64 %197, 131072
  %204 = or i1 %164, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %194
  %206 = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %197, i64 %143)
  br label %225

207:                                              ; preds = %194
  %208 = icmp slt i64 %200, 3
  br i1 %208, label %225, label %209

209:                                              ; preds = %207
  switch i32 %201, label %214 [
    i32 1, label %225
    i32 0, label %210
  ]

210:                                              ; preds = %209
  %211 = zext i32 %202 to i64
  %212 = getelementptr inbounds nuw [10 x i32], ptr @ZSTD_optimalBlockSize.splitLevels, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !49
  br label %220

214:                                              ; preds = %209
  %215 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %201, i32 -2)
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !143
  br i1 %216, label %217, label %218, !prof !144, !nosanitize !143

217:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !143
  unreachable, !nosanitize !143

218:                                              ; preds = %214
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !143
  br label %220

220:                                              ; preds = %218, %210
  %221 = phi i32 [ %213, %210 ], [ %219, %218 ]
  %222 = load ptr, ptr %165, align 8, !tbaa !57
  %223 = load i64, ptr %166, align 8, !tbaa !58
  %224 = tail call i64 @ZSTD_splitBlock(ptr noundef %198, i64 noundef %143, i32 noundef %221, ptr noundef %222, i64 noundef %223) #30
  br label %225

225:                                              ; preds = %220, %209, %207, %205
  %226 = phi i64 [ %206, %205 ], [ %224, %220 ], [ 131072, %207 ], [ 131072, %209 ]
  %227 = icmp eq i64 %226, %197
  %228 = select i1 %227, i32 %6, i32 0
  %229 = icmp ult i64 %196, 6
  br i1 %229, label %716, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds nuw i8, ptr %198, i64 %226
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %167, ptr noundef nonnull %88, ptr noundef %198, ptr noundef %231)
  %232 = load ptr, ptr %170, align 8, !tbaa !240
  %233 = ptrtoint ptr %231 to i64
  %234 = ptrtoint ptr %232 to i64
  %235 = sub i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = load i32, ptr %168, align 4, !tbaa !49
  %238 = add i32 %237, %146
  %239 = icmp ult i32 %238, %236
  br i1 %239, label %243, label %240

240:                                              ; preds = %230
  %241 = load i32, ptr %171, align 8, !tbaa !239
  %242 = icmp eq i32 %237, %241
  br i1 %242, label %244, label %243

243:                                              ; preds = %240, %230
  store i32 0, ptr %168, align 4, !tbaa !49
  store ptr null, ptr %169, align 8, !tbaa !247
  br label %244

244:                                              ; preds = %243, %240
  %245 = phi i32 [ %237, %240 ], [ 0, %243 ]
  %246 = ptrtoint ptr %198 to i64
  %247 = sub i64 %246, %234
  %248 = trunc i64 %247 to i32
  %249 = add i32 %245, %146
  %250 = icmp ult i32 %249, %248
  %251 = load i32, ptr %172, align 4, !tbaa !248
  br i1 %250, label %252, label %262

252:                                              ; preds = %244
  %253 = sub i32 %248, %146
  %254 = icmp ult i32 %251, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 %253, ptr %172, align 4, !tbaa !238
  br label %256

256:                                              ; preds = %255, %252
  %257 = phi i32 [ %253, %255 ], [ %251, %252 ]
  %258 = load i32, ptr %171, align 8, !tbaa !239
  %259 = icmp ult i32 %258, %257
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 %257, ptr %171, align 8, !tbaa !239
  br label %261

261:                                              ; preds = %260, %256
  store i32 0, ptr %168, align 4, !tbaa !49
  store ptr null, ptr %169, align 8, !tbaa !247
  br label %262

262:                                              ; preds = %261, %244
  %263 = phi i32 [ %251, %244 ], [ %257, %261 ]
  %264 = load i32, ptr %173, align 4, !tbaa !241
  %265 = icmp ult i32 %264, %263
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  store i32 %263, ptr %173, align 4, !tbaa !241
  br label %267

267:                                              ; preds = %266, %262
  %268 = load i64, ptr %174, align 8, !tbaa !101
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %345, label %270

270:                                              ; preds = %267
  %271 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %198, i64 noundef %226)
  %272 = icmp ult i64 %271, -119
  br i1 %272, label %273, label %716

273:                                              ; preds = %270
  %274 = icmp eq i64 %271, 0
  br i1 %274, label %275, label %325

275:                                              ; preds = %273
  %276 = load i32, ptr %175, align 8, !tbaa !249
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %306

278:                                              ; preds = %275
  %279 = load ptr, ptr %177, align 8, !tbaa !190
  %280 = load ptr, ptr %176, align 8, !tbaa !186
  %281 = ptrtoint ptr %279 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = load ptr, ptr %178, align 8, !tbaa !201
  %285 = load ptr, ptr %179, align 8, !tbaa !200
  %286 = ptrtoint ptr %284 to i64
  %287 = ptrtoint ptr %285 to i64
  %288 = sub i64 %286, %287
  %289 = icmp ugt i64 %283, 31
  %290 = icmp ugt i64 %288, 9
  %291 = select i1 %289, i1 true, i1 %290
  br i1 %291, label %306, label %292

292:                                              ; preds = %278
  %293 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %198, i64 noundef %226)
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %292
  %296 = load i8, ptr %198, align 1, !tbaa !196
  %297 = trunc i64 %226 to i32
  %298 = shl i32 %297, 3
  %299 = or disjoint i32 %298, %228
  %300 = trunc i32 %299 to i16
  %301 = or disjoint i16 %300, 2
  store i16 %301, ptr %199, align 1, !tbaa !231
  %302 = lshr i32 %298, 16
  %303 = trunc i32 %302 to i8
  %304 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %303, ptr %304, align 1, !tbaa !196
  %305 = getelementptr inbounds nuw i8, ptr %199, i64 3
  store i8 %296, ptr %305, align 1, !tbaa !196
  br label %338

306:                                              ; preds = %292, %278, %275
  %307 = tail call i64 @ZSTD_compressSuperBlock(ptr noundef nonnull %0, ptr noundef %199, i64 noundef range(i64 6, 0) %196, ptr noundef %198, i64 noundef %226, i32 noundef range(i32 0, 2) %228) #30
  %308 = icmp eq i64 %307, -70
  br i1 %308, label %325, label %309

309:                                              ; preds = %306
  %310 = icmp ult i64 %307, -119
  br i1 %310, label %311, label %716

311:                                              ; preds = %309
  %312 = load i32, ptr %163, align 4, !tbaa !175
  %313 = tail call i32 @llvm.umax.i32(i32 %312, i32 7)
  %314 = add i32 %313, -1
  %315 = zext nneg i32 %314 to i64
  %316 = lshr i64 %226, %315
  %317 = icmp ne i64 %307, 0
  %318 = add i64 %226, 1
  %319 = sub i64 %318, %316
  %320 = icmp ult i64 %307, %319
  %321 = select i1 %317, i1 %320, i1 false
  br i1 %321, label %322, label %325

322:                                              ; preds = %311
  %323 = load <2 x ptr>, ptr %180, align 8, !tbaa !48
  %324 = shufflevector <2 x ptr> %323, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %324, ptr %180, align 8, !tbaa !48
  br label %338

325:                                              ; preds = %311, %306, %273
  %326 = add i64 %226, 3
  %327 = icmp ugt i64 %326, %196
  br i1 %327, label %716, label %328

328:                                              ; preds = %325
  %329 = trunc i64 %226 to i32
  %330 = shl i32 %329, 3
  %331 = or disjoint i32 %330, %228
  %332 = trunc i32 %331 to i16
  store i16 %332, ptr %199, align 1, !tbaa !231
  %333 = lshr i32 %330, 16
  %334 = trunc i32 %333 to i8
  %335 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %334, ptr %335, align 1, !tbaa !196
  %336 = getelementptr inbounds nuw i8, ptr %199, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %336, ptr readonly align 1 %198, i64 %226, i1 false)
  %337 = icmp ult i64 %326, -119
  br i1 %337, label %338, label %716

338:                                              ; preds = %328, %322, %295
  %339 = phi i64 [ %326, %328 ], [ %307, %322 ], [ 4, %295 ]
  %340 = load ptr, ptr %180, align 8, !tbaa !55
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 5604
  %342 = load i32, ptr %341, align 4, !tbaa !167
  %343 = icmp eq i32 %342, 2
  br i1 %343, label %344, label %675

344:                                              ; preds = %338
  store i32 1, ptr %341, align 4, !tbaa !167
  br label %675

345:                                              ; preds = %267
  %346 = load i32, ptr %181, align 4, !tbaa !77
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %640

348:                                              ; preds = %345
  %349 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %198, i64 noundef %226)
  %350 = icmp ult i64 %349, -119
  br i1 %350, label %351, label %716

351:                                              ; preds = %348
  %352 = icmp eq i64 %349, 1
  br i1 %352, label %353, label %374

353:                                              ; preds = %351
  %354 = load ptr, ptr %180, align 8, !tbaa !55
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 5604
  %356 = load i32, ptr %355, align 4, !tbaa !167
  %357 = icmp eq i32 %356, 2
  br i1 %357, label %358, label %359

358:                                              ; preds = %353
  store i32 1, ptr %355, align 4, !tbaa !167
  br label %359

359:                                              ; preds = %358, %353
  %360 = load i32, ptr %193, align 8, !tbaa !250
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %716

362:                                              ; preds = %359
  %363 = add i64 %226, 3
  %364 = icmp ugt i64 %363, %196
  br i1 %364, label %716, label %365

365:                                              ; preds = %362
  %366 = trunc i64 %226 to i32
  %367 = shl i32 %366, 3
  %368 = or disjoint i32 %367, %228
  %369 = trunc i32 %368 to i16
  store i16 %369, ptr %199, align 1, !tbaa !231
  %370 = lshr i32 %367, 16
  %371 = trunc i32 %370 to i8
  %372 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %371, ptr %372, align 1, !tbaa !196
  %373 = getelementptr inbounds nuw i8, ptr %199, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %373, ptr readonly align 1 %198, i64 %226, i1 false)
  br label %637

374:                                              ; preds = %351
  %375 = load ptr, ptr %177, align 8, !tbaa !251
  %376 = load ptr, ptr %176, align 8, !tbaa !252
  %377 = ptrtoint ptr %375 to i64
  %378 = ptrtoint ptr %376 to i64
  %379 = sub i64 %377, %378
  %380 = lshr exact i64 %379, 3
  %381 = trunc i64 %380 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #30
  store ptr %182, ptr %8, align 8, !tbaa !253
  store i64 0, ptr %185, align 8, !tbaa !255
  %382 = icmp ult i32 %381, 5
  br i1 %382, label %388, label %383

383:                                              ; preds = %374
  %384 = and i64 %380, 4294967295
  call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %8, i64 noundef 0, i64 noundef %384, ptr noundef nonnull %0, ptr noundef nonnull %176)
  %385 = load ptr, ptr %8, align 8, !tbaa !253
  %386 = load i64, ptr %185, align 8, !tbaa !255
  %387 = getelementptr inbounds nuw i32, ptr %385, i64 %386
  store i32 %381, ptr %387, align 4, !tbaa !49
  br label %388

388:                                              ; preds = %383, %374
  %389 = phi i64 [ %386, %383 ], [ 0, %374 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #30
  %390 = load ptr, ptr %180, align 8, !tbaa !55
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %391, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %391, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %183, i8 0, i64 80, i1 false)
  %392 = icmp eq i64 %389, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %176, ptr noundef %9, ptr noundef %10, ptr noundef %199, i64 noundef range(i64 6, 0) %196, ptr noundef %198, i64 noundef %226, i32 noundef range(i32 0, 2) %228, i32 noundef 0)
  br label %635

395:                                              ; preds = %388
  %396 = load i32, ptr %182, align 4, !tbaa !49
  %397 = zext i32 %396 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %184, ptr noundef nonnull readonly align 8 dereferenceable(80) %176, i64 80, i1 false), !tbaa.struct !256
  %398 = load i32, ptr %186, align 8, !tbaa !198
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %404, label %400

400:                                              ; preds = %395
  %401 = load i32, ptr %187, align 4, !tbaa !199
  %402 = icmp ult i32 %396, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i32 0, ptr %188, align 8, !tbaa !198
  br label %404

404:                                              ; preds = %403, %400, %395
  %405 = load ptr, ptr %176, align 8, !tbaa !186
  store ptr %405, ptr %184, align 8, !tbaa !186
  %406 = shl nuw nsw i64 %397, 3
  %407 = getelementptr inbounds nuw i8, ptr %405, i64 %406
  store ptr %407, ptr %189, align 8, !tbaa !190
  %408 = load ptr, ptr %177, align 8, !tbaa !190
  %409 = ptrtoint ptr %408 to i64
  %410 = ptrtoint ptr %405 to i64
  %411 = sub i64 %409, %410
  %412 = ashr exact i64 %411, 3
  %413 = icmp eq i64 %412, %397
  br i1 %413, label %475, label %414

414:                                              ; preds = %404
  %415 = icmp eq i32 %396, 0
  br i1 %415, label %471, label %416

416:                                              ; preds = %414
  %417 = load i32, ptr %190, align 4, !tbaa !199
  %418 = zext i32 %417 to i64
  %419 = and i64 %397, 1
  %420 = icmp eq i32 %396, 1
  br i1 %420, label %455, label %421

421:                                              ; preds = %416
  %422 = and i64 %397, 4294967294
  br label %423

423:                                              ; preds = %450, %421
  %424 = phi i64 [ 0, %421 ], [ %451, %450 ]
  %425 = phi i64 [ 0, %421 ], [ %452, %450 ]
  %426 = phi i64 [ 0, %421 ], [ %453, %450 ]
  %427 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %405, i64 %425, i32 1
  %428 = load i16, ptr %427, align 4, !tbaa !231
  %429 = zext i16 %428 to i64
  %430 = add i64 %424, %429
  %431 = icmp eq i64 %425, %418
  br i1 %431, label %432, label %437

432:                                              ; preds = %423
  %433 = load i32, ptr %188, align 8, !tbaa !198
  %434 = icmp eq i32 %433, 1
  %435 = add i64 %430, 65536
  %436 = select i1 %434, i64 %435, i64 %430
  br label %437

437:                                              ; preds = %432, %423
  %438 = phi i64 [ %430, %423 ], [ %436, %432 ]
  %439 = or disjoint i64 %425, 1
  %440 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %405, i64 %439, i32 1
  %441 = load i16, ptr %440, align 4, !tbaa !231
  %442 = zext i16 %441 to i64
  %443 = add i64 %438, %442
  %444 = icmp eq i64 %439, %418
  br i1 %444, label %445, label %450

445:                                              ; preds = %437
  %446 = load i32, ptr %188, align 8, !tbaa !198
  %447 = icmp eq i32 %446, 1
  %448 = add i64 %443, 65536
  %449 = select i1 %447, i64 %448, i64 %443
  br label %450

450:                                              ; preds = %445, %437
  %451 = phi i64 [ %443, %437 ], [ %449, %445 ]
  %452 = add nuw nsw i64 %425, 2
  %453 = add i64 %426, 2
  %454 = icmp eq i64 %453, %422
  br i1 %454, label %455, label %423, !llvm.loop !258

455:                                              ; preds = %450, %416
  %456 = phi i64 [ poison, %416 ], [ %451, %450 ]
  %457 = phi i64 [ 0, %416 ], [ %451, %450 ]
  %458 = phi i64 [ 0, %416 ], [ %452, %450 ]
  %459 = icmp eq i64 %419, 0
  br i1 %459, label %471, label %460

460:                                              ; preds = %455
  %461 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %405, i64 %458, i32 1
  %462 = load i16, ptr %461, align 4, !tbaa !231
  %463 = zext i16 %462 to i64
  %464 = add i64 %457, %463
  %465 = icmp eq i64 %458, %418
  br i1 %465, label %466, label %471

466:                                              ; preds = %460
  %467 = load i32, ptr %188, align 8, !tbaa !198
  %468 = icmp eq i32 %467, 1
  %469 = add i64 %464, 65536
  %470 = select i1 %468, i64 %469, i64 %464
  br label %471

471:                                              ; preds = %455, %466, %460, %414
  %472 = phi i64 [ 0, %414 ], [ %456, %455 ], [ %464, %460 ], [ %470, %466 ]
  %473 = load ptr, ptr %191, align 8, !tbaa !200
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 %472
  store ptr %474, ptr %192, align 8, !tbaa !201
  br label %475

475:                                              ; preds = %471, %404
  br label %476

476:                                              ; preds = %475, %625
  %477 = phi i64 [ %628, %625 ], [ %196, %475 ]
  %478 = phi i64 [ %629, %625 ], [ 0, %475 ]
  %479 = phi ptr [ %626, %625 ], [ %198, %475 ]
  %480 = phi ptr [ %627, %625 ], [ %199, %475 ]
  %481 = phi i64 [ %630, %625 ], [ 0, %475 ]
  %482 = phi i64 [ %610, %625 ], [ 0, %475 ]
  %483 = icmp eq i64 %481, %389
  %484 = load ptr, ptr %189, align 8, !tbaa !190
  %485 = load ptr, ptr %184, align 8, !tbaa !186
  %486 = icmp eq ptr %484, %485
  br i1 %486, label %608, label %487

487:                                              ; preds = %476
  %488 = ptrtoint ptr %484 to i64
  %489 = ptrtoint ptr %485 to i64
  %490 = sub i64 %488, %489
  %491 = ashr exact i64 %490, 3
  %492 = load i32, ptr %190, align 4, !tbaa !199
  %493 = zext i32 %492 to i64
  %494 = add nsw i64 %491, -1
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %530, label %496

496:                                              ; preds = %487
  %497 = and i64 %491, -2
  br label %498

498:                                              ; preds = %525, %496
  %499 = phi i64 [ 0, %496 ], [ %526, %525 ]
  %500 = phi i64 [ 0, %496 ], [ %527, %525 ]
  %501 = phi i64 [ 0, %496 ], [ %528, %525 ]
  %502 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %485, i64 %500, i32 1
  %503 = load i16, ptr %502, align 4, !tbaa !231
  %504 = zext i16 %503 to i64
  %505 = add i64 %499, %504
  %506 = icmp eq i64 %500, %493
  br i1 %506, label %507, label %512

507:                                              ; preds = %498
  %508 = load i32, ptr %188, align 8, !tbaa !198
  %509 = icmp eq i32 %508, 1
  %510 = add i64 %505, 65536
  %511 = select i1 %509, i64 %510, i64 %505
  br label %512

512:                                              ; preds = %507, %498
  %513 = phi i64 [ %505, %498 ], [ %511, %507 ]
  %514 = or disjoint i64 %500, 1
  %515 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %485, i64 %514, i32 1
  %516 = load i16, ptr %515, align 4, !tbaa !231
  %517 = zext i16 %516 to i64
  %518 = add i64 %513, %517
  %519 = icmp eq i64 %514, %493
  br i1 %519, label %520, label %525

520:                                              ; preds = %512
  %521 = load i32, ptr %188, align 8, !tbaa !198
  %522 = icmp eq i32 %521, 1
  %523 = add i64 %518, 65536
  %524 = select i1 %522, i64 %523, i64 %518
  br label %525

525:                                              ; preds = %520, %512
  %526 = phi i64 [ %518, %512 ], [ %524, %520 ]
  %527 = add nuw i64 %500, 2
  %528 = add i64 %501, 2
  %529 = icmp eq i64 %528, %497
  br i1 %529, label %530, label %498, !llvm.loop !258

530:                                              ; preds = %525, %487
  %531 = phi i64 [ poison, %487 ], [ %526, %525 ]
  %532 = phi i64 [ 0, %487 ], [ %526, %525 ]
  %533 = phi i64 [ 0, %487 ], [ %527, %525 ]
  %534 = and i64 %490, 8
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %547, label %536

536:                                              ; preds = %530
  %537 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %485, i64 %533, i32 1
  %538 = load i16, ptr %537, align 4, !tbaa !231
  %539 = zext i16 %538 to i64
  %540 = add i64 %532, %539
  %541 = icmp eq i64 %533, %493
  br i1 %541, label %542, label %547

542:                                              ; preds = %536
  %543 = load i32, ptr %188, align 8, !tbaa !198
  %544 = icmp eq i32 %543, 1
  %545 = add i64 %540, 65536
  %546 = select i1 %544, i64 %545, i64 %540
  br label %547

547:                                              ; preds = %536, %542, %530
  %548 = phi i64 [ %531, %530 ], [ %540, %536 ], [ %546, %542 ]
  %549 = icmp eq i64 %494, 0
  br i1 %549, label %588, label %550

550:                                              ; preds = %547
  %551 = and i64 %491, -2
  br label %552

552:                                              ; preds = %581, %550
  %553 = phi i64 [ 0, %550 ], [ %582, %581 ]
  %554 = phi i64 [ 0, %550 ], [ %583, %581 ]
  %555 = phi i64 [ 0, %550 ], [ %584, %581 ]
  %556 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %485, i64 %554, i32 2
  %557 = load i16, ptr %556, align 2, !tbaa !231
  %558 = zext i16 %557 to i64
  %559 = add i64 %553, 3
  %560 = add i64 %559, %558
  %561 = icmp eq i64 %554, %493
  br i1 %561, label %562, label %567

562:                                              ; preds = %552
  %563 = load i32, ptr %188, align 8, !tbaa !198
  %564 = icmp eq i32 %563, 2
  %565 = add i64 %560, 65536
  %566 = select i1 %564, i64 %565, i64 %560
  br label %567

567:                                              ; preds = %562, %552
  %568 = phi i64 [ %560, %552 ], [ %566, %562 ]
  %569 = or disjoint i64 %554, 1
  %570 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %485, i64 %569, i32 2
  %571 = load i16, ptr %570, align 2, !tbaa !231
  %572 = zext i16 %571 to i64
  %573 = add i64 %568, 3
  %574 = add i64 %573, %572
  %575 = icmp eq i64 %569, %493
  br i1 %575, label %576, label %581

576:                                              ; preds = %567
  %577 = load i32, ptr %188, align 8, !tbaa !198
  %578 = icmp eq i32 %577, 2
  %579 = add i64 %574, 65536
  %580 = select i1 %578, i64 %579, i64 %574
  br label %581

581:                                              ; preds = %576, %567
  %582 = phi i64 [ %574, %567 ], [ %580, %576 ]
  %583 = add nuw i64 %554, 2
  %584 = add i64 %555, 2
  %585 = icmp eq i64 %584, %551
  br i1 %585, label %586, label %552, !llvm.loop !259

586:                                              ; preds = %581
  %587 = add i64 %582, 3
  br label %588

588:                                              ; preds = %586, %547
  %589 = phi i64 [ poison, %547 ], [ %582, %586 ]
  %590 = phi i64 [ 3, %547 ], [ %587, %586 ]
  %591 = phi i64 [ 0, %547 ], [ %583, %586 ]
  %592 = and i64 %490, 8
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %605, label %594

594:                                              ; preds = %588
  %595 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %485, i64 %591, i32 2
  %596 = load i16, ptr %595, align 2, !tbaa !231
  %597 = zext i16 %596 to i64
  %598 = add i64 %590, %597
  %599 = icmp eq i64 %591, %493
  br i1 %599, label %600, label %605

600:                                              ; preds = %594
  %601 = load i32, ptr %188, align 8, !tbaa !198
  %602 = icmp eq i32 %601, 2
  %603 = add i64 %598, 65536
  %604 = select i1 %602, i64 %603, i64 %598
  br label %605

605:                                              ; preds = %594, %600, %588
  %606 = phi i64 [ %589, %588 ], [ %598, %594 ], [ %604, %600 ]
  %607 = add i64 %606, %548
  br label %608

608:                                              ; preds = %605, %476
  %609 = phi i64 [ 0, %476 ], [ %607, %605 ]
  %610 = add i64 %609, %482
  br i1 %483, label %611, label %613

611:                                              ; preds = %608
  %612 = sub i64 %226, %482
  br label %620

613:                                              ; preds = %608
  %614 = getelementptr inbounds nuw i32, ptr %182, i64 %481
  %615 = load i32, ptr %614, align 4, !tbaa !49
  %616 = zext i32 %615 to i64
  %617 = getelementptr i8, ptr %614, i64 4
  %618 = load i32, ptr %617, align 4, !tbaa !49
  %619 = zext i32 %618 to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %183, ptr noundef nonnull %176, i64 noundef %616, i64 noundef %619)
  br label %620

620:                                              ; preds = %613, %611
  %621 = phi i32 [ %228, %611 ], [ 0, %613 ]
  %622 = phi i64 [ %612, %611 ], [ %609, %613 ]
  %623 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %184, ptr noundef %9, ptr noundef %10, ptr noundef %480, i64 noundef %477, ptr noundef %479, i64 noundef %622, i32 noundef %621, i32 noundef 1)
  %624 = icmp ult i64 %623, -119
  br i1 %624, label %625, label %635

625:                                              ; preds = %620
  %626 = getelementptr inbounds nuw i8, ptr %479, i64 %622
  %627 = getelementptr inbounds nuw i8, ptr %480, i64 %623
  %628 = sub i64 %477, %623
  %629 = add i64 %623, %478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %184, ptr noundef nonnull align 8 dereferenceable(80) %183, i64 80, i1 false), !tbaa.struct !256
  %630 = add i64 %481, 1
  %631 = icmp ugt i64 %630, %389
  br i1 %631, label %632, label %476, !llvm.loop !260

632:                                              ; preds = %625
  %633 = load ptr, ptr %180, align 8, !tbaa !55
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %634, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  br label %635

635:                                              ; preds = %620, %632, %393
  %636 = phi i64 [ %394, %393 ], [ %629, %632 ], [ %623, %620 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #30
  br label %637

637:                                              ; preds = %635, %365
  %638 = phi i64 [ %636, %635 ], [ %363, %365 ]
  %639 = icmp ult i64 %638, -119
  br i1 %639, label %675, label %716

640:                                              ; preds = %345
  %641 = getelementptr inbounds nuw i8, ptr %199, i64 3
  %642 = add i64 %196, -3
  %643 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %641, i64 noundef %642, ptr noundef %198, i64 noundef %226, i32 noundef 1)
  %644 = icmp ult i64 %643, -119
  br i1 %644, label %645, label %716

645:                                              ; preds = %640
  switch i64 %643, label %663 [
    i64 0, label %646
    i64 1, label %658
  ]

646:                                              ; preds = %645
  %647 = add i64 %226, 3
  %648 = icmp ugt i64 %647, %196
  br i1 %648, label %716, label %649

649:                                              ; preds = %646
  %650 = trunc i64 %226 to i32
  %651 = shl i32 %650, 3
  %652 = or disjoint i32 %651, %228
  %653 = trunc i32 %652 to i16
  store i16 %653, ptr %199, align 1, !tbaa !231
  %654 = lshr i32 %651, 16
  %655 = trunc i32 %654 to i8
  %656 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %655, ptr %656, align 1, !tbaa !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %641, ptr readonly align 1 %198, i64 %226, i1 false)
  %657 = icmp ult i64 %647, -119
  br i1 %657, label %675, label %716

658:                                              ; preds = %645
  %659 = trunc i64 %226 to i32
  %660 = shl i32 %659, 3
  %661 = or disjoint i32 %228, %660
  %662 = or disjoint i32 %661, 2
  br label %668

663:                                              ; preds = %645
  %664 = trunc i64 %643 to i32
  %665 = shl i32 %664, 3
  %666 = or disjoint i32 %665, %228
  %667 = or disjoint i32 %666, 4
  br label %668

668:                                              ; preds = %663, %658
  %669 = phi i32 [ %662, %658 ], [ %667, %663 ]
  %670 = trunc i32 %669 to i16
  store i16 %670, ptr %199, align 1, !tbaa !231
  %671 = lshr i32 %669, 16
  %672 = trunc i32 %671 to i8
  %673 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %672, ptr %673, align 1, !tbaa !196
  %674 = add nuw i64 %643, 3
  br label %675

675:                                              ; preds = %668, %649, %637, %344, %338
  %676 = phi i64 [ %638, %637 ], [ %647, %649 ], [ %674, %668 ], [ %339, %338 ], [ %339, %344 ]
  %677 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %226, i64 %676), !nosanitize !143
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !143
  br i1 %678, label %153, label %679, !prof !144, !nosanitize !143

679:                                              ; preds = %675
  %680 = extractvalue { i64, i1 } %677, 0, !nosanitize !143
  %681 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %200, i64 %680), !nosanitize !143
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !143
  br i1 %682, label %683, label %684, !prof !144, !nosanitize !143

683:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !143
  unreachable, !nosanitize !143

684:                                              ; preds = %679
  %685 = sub i64 %197, %226
  %686 = getelementptr inbounds nuw i8, ptr %199, i64 %676
  %687 = sub i64 %196, %676
  store i32 0, ptr %175, align 8, !tbaa !249
  %688 = icmp eq i64 %685, 0
  br i1 %688, label %689, label %194, !llvm.loop !261

689:                                              ; preds = %684
  %690 = icmp ne i32 %6, 0
  %691 = icmp ugt ptr %686, %33
  %692 = select i1 %690, i1 %691, i1 false
  br i1 %692, label %693, label %694

693:                                              ; preds = %689
  store i32 3, ptr %0, align 8, !tbaa !170
  br label %694

694:                                              ; preds = %693, %689
  %695 = ptrtoint ptr %686 to i64
  %696 = ptrtoint ptr %33 to i64
  %697 = sub i64 %695, %696
  br label %698

698:                                              ; preds = %694, %138
  %699 = phi i64 [ %140, %138 ], [ %697, %694 ]
  %700 = icmp ult i64 %699, -119
  br i1 %700, label %701, label %716

701:                                              ; preds = %698
  %702 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %703 = load i64, ptr %702, align 8, !tbaa !157
  %704 = add i64 %703, %4
  store i64 %704, ptr %702, align 8, !tbaa !157
  %705 = add i64 %699, %31
  %706 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %707 = load i64, ptr %706, align 8, !tbaa !161
  %708 = add i64 %707, %705
  store i64 %708, ptr %706, align 8, !tbaa !161
  %709 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %710 = load i64, ptr %709, align 8, !tbaa !115
  %711 = icmp ne i64 %710, 0
  %712 = add i64 %704, 1
  %713 = icmp ugt i64 %712, %710
  %714 = select i1 %711, i1 %713, i1 false
  %715 = select i1 %714, i64 -72, i64 %705
  br label %716

716:                                              ; preds = %640, %649, %637, %225, %646, %309, %325, %270, %328, %362, %348, %359, %701, %698, %30, %7, %18
  %717 = phi i64 [ %25, %18 ], [ -60, %7 ], [ %31, %30 ], [ %699, %698 ], [ %715, %701 ], [ -106, %359 ], [ %349, %348 ], [ -70, %362 ], [ %326, %328 ], [ %271, %270 ], [ -70, %325 ], [ %307, %309 ], [ -70, %646 ], [ -70, %225 ], [ %638, %637 ], [ %647, %649 ], [ %643, %640 ]
  ret i64 %717
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #9 {
  %2 = getelementptr i8, ptr %0, i64 244
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = getelementptr i8, ptr %0, i64 392
  %5 = load i64, ptr %4, align 8, !tbaa !174
  %6 = zext nneg i32 %3 to i64
  %7 = shl nuw i64 1, %6
  %8 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %5, i64 %7)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !174
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = icmp ugt i64 %4, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !174
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = icmp ugt i64 %4, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #30
  store i32 31, ptr %6, align 4, !tbaa !49
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %18, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #30
  store i32 255, ptr %7, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #30
  store i32 1, ptr %8, align 4, !tbaa !49
  %19 = add i64 %3, -8
  %20 = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef %19, ptr noundef nonnull %8) #30
  %21 = load i32, ptr %8, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 255
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 2, ptr %18, align 8, !tbaa !166
  br label %27

27:                                               ; preds = %4, %26
  %28 = icmp ult i64 %20, -119
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #30
  br i1 %28, label %30, label %214

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  %31 = sub i64 %19, %20
  %32 = call i64 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %29, i64 noundef %31) #30
  %33 = icmp ult i64 %32, -119
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, ptr %9, align 4, !tbaa !49
  %36 = icmp ugt i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  br label %214

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %40 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %39, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %35, ptr noundef %1, i64 noundef 8704) #30
  %41 = icmp ult i64 %40, -119
  %42 = getelementptr inbounds nuw i8, ptr %29, i64 %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  br i1 %41, label %43, label %214

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #30
  store i32 52, ptr %11, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #30
  %44 = add i64 %20, %32
  %45 = sub i64 %19, %44
  %46 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %42, i64 noundef %45) #30
  %47 = icmp ult i64 %46, -119
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = load i32, ptr %12, align 4, !tbaa !49
  %50 = icmp ugt i32 %49, 9
  br i1 %50, label %86, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %53 = load i32, ptr %11, align 4, !tbaa !49
  %54 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %52, ptr noundef nonnull %10, i32 noundef %53, i32 noundef %49, ptr noundef %1, i64 noundef 8704) #30
  %55 = icmp ult i64 %54, -119
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = load i32, ptr %11, align 4, !tbaa !49
  %58 = icmp ult i32 %57, 52
  %59 = load <48 x i16>, ptr %10, align 16
  %60 = freeze <48 x i16> %59
  %61 = icmp eq <48 x i16> %60, zeroinitializer
  %62 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %63 = load <4 x i16>, ptr %62, align 16
  %64 = freeze <4 x i16> %63
  %65 = icmp eq <4 x i16> %64, zeroinitializer
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %67 = load i16, ptr %66, align 8
  %68 = icmp eq i16 %67, 0
  %69 = shufflevector <48 x i1> %61, <48 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %70 = or <4 x i1> %69, %65
  %71 = shufflevector <4 x i1> %70, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %72 = shufflevector <48 x i1> %71, <48 x i1> %61, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %73 = bitcast <48 x i1> %72 to i48
  %74 = icmp ne i48 %73, 0
  %75 = select i1 %58, i1 true, i1 %74
  %76 = select i1 %75, i1 true, i1 %68
  %77 = select i1 %76, i32 1, i32 2
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 %77, ptr %78, align 8, !tbaa !168
  %79 = getelementptr inbounds nuw i8, ptr %42, i64 %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #30
  store i32 35, ptr %14, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #30
  %80 = add nuw nsw i64 %20, 8
  %81 = add nuw nsw i64 %80, %32
  %82 = add nuw nsw i64 %81, %46
  %83 = sub nsw i64 %3, %82
  %84 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %79, i64 noundef %83) #30
  %85 = icmp ult i64 %84, -119
  br i1 %85, label %87, label %117

86:                                               ; preds = %43, %48, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #30
  br label %214

87:                                               ; preds = %56
  %88 = load i32, ptr %15, align 4, !tbaa !49
  %89 = icmp ugt i32 %88, 9
  br i1 %89, label %117, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %92 = load i32, ptr %14, align 4, !tbaa !49
  %93 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %91, ptr noundef nonnull %13, i32 noundef %92, i32 noundef %88, ptr noundef %1, i64 noundef 8704) #30
  %94 = icmp ult i64 %93, -119
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load i32, ptr %14, align 4, !tbaa !49
  %97 = icmp ult i32 %96, 35
  %98 = load <32 x i16>, ptr %13, align 16
  %99 = freeze <32 x i16> %98
  %100 = icmp eq <32 x i16> %99, zeroinitializer
  %101 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %102 = load <4 x i16>, ptr %101, align 16
  %103 = freeze <4 x i16> %102
  %104 = icmp eq <4 x i16> %103, zeroinitializer
  %105 = shufflevector <32 x i1> %100, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %106 = or <4 x i1> %105, %104
  %107 = shufflevector <4 x i1> %106, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %108 = shufflevector <32 x i1> %107, <32 x i1> %100, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %109 = bitcast <32 x i1> %108 to i32
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %97, i1 true, i1 %110
  %112 = select i1 %111, i32 1, i32 2
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 %112, ptr %113, align 4, !tbaa !169
  %114 = getelementptr inbounds nuw i8, ptr %79, i64 %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #30
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 12
  %116 = icmp ugt ptr %115, %16
  br i1 %116, label %214, label %118

117:                                              ; preds = %56, %87, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #30
  br label %214

118:                                              ; preds = %95
  %119 = load i32, ptr %114, align 1, !tbaa !49
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 %119, ptr %120, align 8, !tbaa !49
  %121 = getelementptr inbounds nuw i8, ptr %114, i64 4
  %122 = load i32, ptr %121, align 1, !tbaa !49
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 5620
  store i32 %122, ptr %123, align 4, !tbaa !49
  %124 = getelementptr inbounds nuw i8, ptr %114, i64 8
  %125 = load i32, ptr %124, align 1, !tbaa !49
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store i32 %125, ptr %126, align 8, !tbaa !49
  %127 = add i64 %84, 20
  %128 = add i64 %46, %32
  %129 = add i64 %127, %128
  %130 = add i64 %129, %20
  %131 = sub nsw i64 %3, %130
  %132 = icmp ult i64 %131, 4294836224
  %133 = trunc nuw i64 %131 to i32
  %134 = add nuw i32 %133, 131072
  %135 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %134, i1 true)
  %136 = xor i32 %135, 31
  %137 = select i1 %132, i32 %136, i32 31
  %138 = load i32, ptr %6, align 4, !tbaa !49
  %139 = icmp ult i32 %138, %137
  br i1 %139, label %192, label %140

140:                                              ; preds = %118
  %141 = add nuw nsw i32 %137, 1
  %142 = zext nneg i32 %141 to i64
  %143 = icmp samesign ult i32 %137, 7
  br i1 %143, label %182, label %144

144:                                              ; preds = %140
  %145 = and i64 %142, 56
  %146 = load <8 x i16>, ptr %5, align 16, !tbaa !231
  %147 = freeze <8 x i16> %146
  %148 = icmp eq <8 x i16> %147, zeroinitializer
  %149 = bitcast <8 x i1> %148 to i8
  %150 = icmp ne i8 %149, 0
  %151 = icmp eq i64 %145, 8
  %152 = or i1 %150, %151
  br i1 %152, label %178, label %153, !llvm.loop !262

153:                                              ; preds = %144
  %154 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %155 = load <8 x i16>, ptr %154, align 16, !tbaa !231
  %156 = freeze <8 x i16> %155
  %157 = icmp eq <8 x i16> %156, zeroinitializer
  %158 = bitcast <8 x i1> %157 to i8
  %159 = icmp ne i8 %158, 0
  %160 = icmp eq i64 %145, 16
  %161 = or i1 %159, %160
  br i1 %161, label %178, label %162, !llvm.loop !262

162:                                              ; preds = %153
  %163 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %164 = load <8 x i16>, ptr %163, align 16, !tbaa !231
  %165 = freeze <8 x i16> %164
  %166 = icmp eq <8 x i16> %165, zeroinitializer
  %167 = bitcast <8 x i1> %166 to i8
  %168 = icmp ne i8 %167, 0
  %169 = icmp eq i64 %145, 24
  %170 = or i1 %168, %169
  br i1 %170, label %178, label %171, !llvm.loop !262

171:                                              ; preds = %162
  %172 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %173 = load <8 x i16>, ptr %172, align 16, !tbaa !231
  %174 = freeze <8 x i16> %173
  %175 = icmp eq <8 x i16> %174, zeroinitializer
  %176 = bitcast <8 x i1> %175 to i8
  %177 = icmp ne i8 %176, 0
  br label %178

178:                                              ; preds = %171, %162, %153, %144
  %179 = phi i1 [ %150, %144 ], [ %159, %153 ], [ %168, %162 ], [ %177, %171 ]
  br i1 %179, label %192, label %180

180:                                              ; preds = %178
  %181 = icmp eq i64 %145, %142
  br i1 %181, label %192, label %182

182:                                              ; preds = %140, %180
  %183 = phi i64 [ 0, %140 ], [ %145, %180 ]
  br label %187

184:                                              ; preds = %187
  %185 = add nuw nsw i64 %188, 1
  %186 = icmp eq i64 %185, %142
  br i1 %186, label %192, label %187, !llvm.loop !265

187:                                              ; preds = %182, %184
  %188 = phi i64 [ %185, %184 ], [ %183, %182 ]
  %189 = getelementptr inbounds nuw i16, ptr %5, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !231
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %192, label %184

192:                                              ; preds = %184, %187, %180, %178, %118
  %193 = phi i32 [ 1, %118 ], [ 2, %180 ], [ 1, %178 ], [ 2, %184 ], [ 1, %187 ]
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %193, ptr %194, align 4, !tbaa !167
  %195 = icmp eq i32 %119, 0
  %196 = zext i32 %119 to i64
  %197 = icmp ult i64 %131, %196
  %198 = or i1 %195, %197
  br i1 %198, label %214, label %199

199:                                              ; preds = %192
  %200 = icmp eq i32 %122, 0
  %201 = zext i32 %122 to i64
  %202 = icmp ult i64 %131, %201
  %203 = or i1 %200, %202
  br i1 %203, label %214, label %204

204:                                              ; preds = %199
  %205 = icmp eq i32 %125, 0
  %206 = zext i32 %125 to i64
  %207 = icmp ult i64 %131, %206
  %208 = or i1 %205, %207
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = add i64 %84, 20
  %211 = add i64 %46, %32
  %212 = add i64 %210, %211
  %213 = add i64 %212, %20
  br label %214

214:                                              ; preds = %192, %199, %204, %117, %86, %37, %95, %38, %27, %209
  %215 = phi i64 [ %213, %209 ], [ -30, %38 ], [ -30, %27 ], [ -30, %95 ], [ -30, %37 ], [ -30, %86 ], [ -30, %117 ], [ -30, %204 ], [ -30, %199 ], [ -30, %192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #30
  ret i64 %215
}

declare i64 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #2 {
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load <4 x i32>, ptr %9, align 4, !tbaa !49
  %11 = freeze <4 x i32> %10
  %12 = add <4 x i32> %11, <i32 -32, i32 -31, i32 -31, i32 -31>
  %13 = icmp ult <4 x i32> %12, <i32 -22, i32 -25, i32 -25, i32 -30>
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp eq i4 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %20 = load i32, ptr %19, align 4, !tbaa !49
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %22 = load i32, ptr %21, align 4, !tbaa !49
  %23 = add i32 %22, -3
  %24 = icmp ult i32 %23, 5
  %25 = icmp ult i32 %20, 131073
  %26 = select i1 %24, i1 %25, i1 false
  %27 = add i32 %18, -1
  %28 = icmp ult i32 %27, 9
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = tail call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0)
  br label %32

32:                                               ; preds = %16, %8, %30
  %33 = phi i64 [ %31, %30 ], [ -42, %8 ], [ -42, %16 ]
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #2 {
  %10 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %11 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %12 = icmp eq ptr %5, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !266
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ]
  %18 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i64 [ %20, %19 ], [ 0, %16 ]
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %22, ptr %23, align 8, !tbaa !267
  br i1 %12, label %439, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !266
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %436, label %28

28:                                               ; preds = %24
  %29 = icmp ult i64 %7, 131072
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = mul i64 %26, 6
  %32 = icmp ult i64 %7, %31
  %33 = icmp eq i64 %7, -1
  %34 = or i1 %33, %32
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 6068
  %37 = load i32, ptr %36, align 4, !tbaa !268
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %436

39:                                               ; preds = %35, %30, %28
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 68
  %41 = load i32, ptr %40, align 4, !tbaa !94
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %436, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 244
  %45 = load i32, ptr %44, align 4, !tbaa !269
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr i8, ptr %5, i64 384
  %48 = load i32, ptr %47, align 8, !tbaa !49
  br i1 %46, label %49, label %64

49:                                               ; preds = %43
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds nuw [10 x i64], ptr @attachDictSizeCutoffs, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !114
  %53 = icmp ule i64 %7, %52
  %54 = icmp eq i64 %7, -1
  %55 = or i1 %54, %53
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = icmp eq i32 %41, 1
  br i1 %57, label %60, label %165

58:                                               ; preds = %49
  %59 = icmp eq i32 %41, 2
  br i1 %59, label %165, label %60

60:                                               ; preds = %58, %56
  %61 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %62 = load i32, ptr %61, align 8, !tbaa !93
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %165

64:                                               ; preds = %60, %43
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull readonly align 8 dereferenceable(224) %6, i64 224, i1 false)
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 360
  %67 = load i32, ptr %66, align 8, !tbaa !49
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 364
  %69 = load i32, ptr %68, align 4, !tbaa !49
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %71 = load i32, ptr %70, align 8, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 372
  %73 = load i32, ptr %72, align 4, !tbaa !49
  %74 = getelementptr inbounds nuw i8, ptr %5, i64 376
  %75 = load i64, ptr %74, align 4
  %76 = icmp ne i32 %45, 0
  %77 = add i32 %48, -3
  %78 = icmp ult i32 %77, 3
  %79 = select i1 %76, i1 %78, i1 false
  %80 = add i32 %71, -2
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 6)
  %82 = select i1 %79, i32 %81, i32 %71
  %83 = getelementptr inbounds nuw i8, ptr %11, i64 160
  %84 = load i32, ptr %83, align 8, !tbaa !76
  %85 = icmp ult i64 %7, 1073741825
  br i1 %85, label %86, label %94

86:                                               ; preds = %64
  %87 = icmp samesign ult i64 %7, 64
  %88 = trunc nuw nsw i64 %7 to i32
  %89 = add nsw i32 %88, -1
  %90 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %89, i1 true)
  %91 = sub nuw nsw i32 32, %90
  %92 = select i1 %87, i32 6, i32 %91
  %93 = tail call i32 @llvm.umin.i32(i32 %67, i32 %92)
  br label %96

94:                                               ; preds = %64
  %95 = icmp eq i64 %7, -1
  br i1 %95, label %106, label %96

96:                                               ; preds = %94, %86
  %97 = phi i32 [ %93, %86 ], [ %67, %94 ]
  %98 = icmp ugt i32 %48, 5
  %99 = sext i1 %98 to i32
  %100 = add i32 %69, %99
  %101 = add i32 %97, 1
  %102 = tail call i32 @llvm.umin.i32(i32 %82, i32 %101)
  %103 = icmp ugt i32 %100, %97
  %104 = sub i32 %97, %99
  %105 = select i1 %103, i32 %104, i32 %69
  br label %106

106:                                              ; preds = %96, %94
  %107 = phi i32 [ %69, %94 ], [ %105, %96 ]
  %108 = phi i32 [ %82, %94 ], [ %102, %96 ]
  %109 = add i32 %48, -6
  %110 = icmp ult i32 %109, -3
  %111 = icmp ugt i32 %84, 1
  %112 = or i1 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = tail call i32 @llvm.umax.i32(i32 %73, i32 4)
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 6)
  %116 = or disjoint i32 %115, 24
  %117 = tail call i32 @llvm.umin.i32(i32 %108, i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  %119 = phi i32 [ %108, %106 ], [ %117, %113 ]
  %120 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %107, ptr %120, align 8, !tbaa !49
  %121 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %119, ptr %121, align 4, !tbaa !49
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %73, ptr %122, align 8, !tbaa !49
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i64 %75, ptr %123, align 4
  %124 = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %48, ptr %124, align 4, !tbaa !49
  %125 = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %126 = load i32, ptr %125, align 8, !tbaa !270
  store i32 %126, ptr %83, align 8, !tbaa !76
  %127 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull align 8 %11, i64 noundef %7, i64 noundef 0, i32 noundef 0, i32 noundef range(i32 0, 2) %8)
  %128 = icmp ult i64 %127, -119
  br i1 %128, label %129, label %164

129:                                              ; preds = %118
  %130 = load ptr, ptr %65, align 8, !tbaa !271
  %131 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %132 = load ptr, ptr %131, align 8, !tbaa !272
  %133 = ptrtoint ptr %130 to i64
  %134 = ptrtoint ptr %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %138 = load i32, ptr %137, align 8, !tbaa !273
  %139 = icmp eq i32 %138, %136
  br i1 %139, label %155, label %140

140:                                              ; preds = %129
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store ptr %65, ptr %141, align 8, !tbaa !274
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %143 = load i32, ptr %142, align 8, !tbaa !275
  %144 = icmp ult i32 %143, %136
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %148 = load ptr, ptr %147, align 8, !tbaa !276
  %149 = and i64 %135, 4294967295
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 %149
  store ptr %150, ptr %146, align 8, !tbaa !277
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  store i32 %136, ptr %151, align 4, !tbaa !238
  store i32 %136, ptr %142, align 8, !tbaa !239
  br label %152

152:                                              ; preds = %145, %140
  %153 = phi i32 [ %136, %145 ], [ %143, %140 ]
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  store i32 %153, ptr %154, align 8, !tbaa !278
  br label %155

155:                                              ; preds = %152, %129
  %156 = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %157 = load i32, ptr %156, align 8, !tbaa !279
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %157, ptr %158, align 8, !tbaa !184
  %159 = load i64, ptr %25, align 8, !tbaa !266
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %159, ptr %160, align 8, !tbaa !185
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %162 = load ptr, ptr %161, align 8, !tbaa !55
  %163 = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %162, ptr noundef nonnull align 8 dereferenceable(5632) %163, i64 5632, i1 false)
  br label %164

164:                                              ; preds = %155, %118
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %11)
  br label %474

165:                                              ; preds = %60, %58, %56
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull readonly align 8 dereferenceable(224) %6, i64 224, i1 false)
  %166 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %167 = getelementptr inbounds nuw i8, ptr %5, i64 360
  %168 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %169 = load i32, ptr %168, align 4, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %168, ptr noundef nonnull readonly align 4 dereferenceable(28) %167, i64 28, i1 false), !tbaa.struct !74
  store i32 %169, ptr %168, align 4, !tbaa !84
  %170 = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %171 = load i32, ptr %170, align 8, !tbaa !270
  %172 = getelementptr inbounds nuw i8, ptr %10, i64 160
  store i32 %171, ptr %172, align 8, !tbaa !76
  %173 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull align 8 %10, i64 noundef %7, i64 noundef 0, i32 noundef 1, i32 noundef range(i32 0, 2) %8)
  %174 = icmp ult i64 %173, -119
  br i1 %174, label %175, label %435

175:                                              ; preds = %165
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %177 = load ptr, ptr %176, align 8, !tbaa !52
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %177, ptr %178, align 8, !tbaa !54
  %179 = load i32, ptr %47, align 4, !tbaa !73
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %183 = load i32, ptr %182, align 4, !tbaa !70
  %184 = zext nneg i32 %183 to i64
  %185 = shl nuw i64 1, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %189 = load ptr, ptr %188, align 8, !tbaa !179
  %190 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %191 = load ptr, ptr %190, align 8, !tbaa !280
  br label %225

192:                                              ; preds = %175
  %193 = load i32, ptr %170, align 8, !tbaa !270
  %194 = add i32 %179, -3
  %195 = icmp ult i32 %194, 3
  %196 = icmp eq i32 %193, 1
  %197 = and i1 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %192
  %199 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %200 = load i32, ptr %199, align 4, !tbaa !70
  %201 = zext nneg i32 %200 to i64
  %202 = shl nuw i64 1, %201
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %206 = load ptr, ptr %205, align 8, !tbaa !179
  %207 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %208 = load ptr, ptr %207, align 8, !tbaa !280
  br label %282

209:                                              ; preds = %192
  %210 = getelementptr inbounds nuw i8, ptr %5, i64 364
  %211 = load i32, ptr %210, align 4, !tbaa !69
  %212 = zext nneg i32 %211 to i64
  %213 = shl nuw i64 1, %212
  %214 = getelementptr inbounds nuw i8, ptr %5, i64 368
  %215 = load i32, ptr %214, align 4, !tbaa !70
  %216 = zext nneg i32 %215 to i64
  %217 = shl nuw i64 1, %216
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %221 = load ptr, ptr %220, align 8, !tbaa !179
  %222 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %223 = load ptr, ptr %222, align 8, !tbaa !280
  %224 = icmp ult i32 %194, -2
  br i1 %224, label %282, label %225

225:                                              ; preds = %209, %181
  %226 = phi ptr [ %191, %181 ], [ %223, %209 ]
  %227 = phi ptr [ %189, %181 ], [ %221, %209 ]
  %228 = phi ptr [ %187, %181 ], [ %219, %209 ]
  %229 = phi ptr [ %186, %181 ], [ %218, %209 ]
  %230 = phi i64 [ %185, %181 ], [ %217, %209 ]
  %231 = phi i64 [ 0, %181 ], [ %213, %209 ]
  %232 = icmp ult i64 %230, 8
  %233 = ptrtoint ptr %226 to i64
  %234 = ptrtoint ptr %227 to i64
  %235 = sub i64 %234, %233
  %236 = icmp ult i64 %235, 32
  %237 = select i1 %232, i1 true, i1 %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %225
  %239 = and i64 %230, 3
  %240 = icmp ult i64 %230, 4
  br i1 %240, label %291, label %241

241:                                              ; preds = %238
  %242 = and i64 %230, -4
  br label %257

243:                                              ; preds = %225
  %244 = and i64 %230, -8
  br label %245

245:                                              ; preds = %245, %243
  %246 = phi i64 [ 0, %243 ], [ %255, %245 ]
  %247 = getelementptr inbounds nuw i32, ptr %226, i64 %246
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 16
  %249 = load <4 x i32>, ptr %247, align 4, !tbaa !49
  %250 = load <4 x i32>, ptr %248, align 4, !tbaa !49
  %251 = lshr <4 x i32> %249, splat (i32 8)
  %252 = lshr <4 x i32> %250, splat (i32 8)
  %253 = getelementptr inbounds nuw i32, ptr %227, i64 %246
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 16
  store <4 x i32> %251, ptr %253, align 4, !tbaa !49
  store <4 x i32> %252, ptr %254, align 4, !tbaa !49
  %255 = add nuw i64 %246, 8
  %256 = icmp eq i64 %255, %244
  br i1 %256, label %304, label %245, !llvm.loop !281

257:                                              ; preds = %257, %241
  %258 = phi i64 [ 0, %241 ], [ %279, %257 ]
  %259 = phi i64 [ 0, %241 ], [ %280, %257 ]
  %260 = getelementptr inbounds nuw i32, ptr %226, i64 %258
  %261 = load i32, ptr %260, align 4, !tbaa !49
  %262 = lshr i32 %261, 8
  %263 = getelementptr inbounds nuw i32, ptr %227, i64 %258
  store i32 %262, ptr %263, align 4, !tbaa !49
  %264 = or disjoint i64 %258, 1
  %265 = getelementptr inbounds nuw i32, ptr %226, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !49
  %267 = lshr i32 %266, 8
  %268 = getelementptr inbounds nuw i32, ptr %227, i64 %264
  store i32 %267, ptr %268, align 4, !tbaa !49
  %269 = or disjoint i64 %258, 2
  %270 = getelementptr inbounds nuw i32, ptr %226, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !49
  %272 = lshr i32 %271, 8
  %273 = getelementptr inbounds nuw i32, ptr %227, i64 %269
  store i32 %272, ptr %273, align 4, !tbaa !49
  %274 = or disjoint i64 %258, 3
  %275 = getelementptr inbounds nuw i32, ptr %226, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !49
  %277 = lshr i32 %276, 8
  %278 = getelementptr inbounds nuw i32, ptr %227, i64 %274
  store i32 %277, ptr %278, align 4, !tbaa !49
  %279 = add nuw i64 %258, 4
  %280 = add i64 %259, 4
  %281 = icmp eq i64 %280, %242
  br i1 %281, label %291, label %257, !llvm.loop !282

282:                                              ; preds = %209, %198
  %283 = phi ptr [ %208, %198 ], [ %223, %209 ]
  %284 = phi ptr [ %206, %198 ], [ %221, %209 ]
  %285 = phi ptr [ %204, %198 ], [ %219, %209 ]
  %286 = phi ptr [ %203, %198 ], [ %218, %209 ]
  %287 = phi i64 [ %202, %198 ], [ %217, %209 ]
  %288 = phi i64 [ %201, %198 ], [ %216, %209 ]
  %289 = phi i64 [ 0, %198 ], [ %213, %209 ]
  %290 = shl i64 4, %288
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %284, ptr readonly align 4 %283, i64 %290, i1 false)
  br label %304

291:                                              ; preds = %257, %238
  %292 = phi i64 [ 0, %238 ], [ %279, %257 ]
  %293 = icmp eq i64 %239, 0
  br i1 %293, label %304, label %294

294:                                              ; preds = %291, %294
  %295 = phi i64 [ %301, %294 ], [ %292, %291 ]
  %296 = phi i64 [ %302, %294 ], [ 0, %291 ]
  %297 = getelementptr inbounds nuw i32, ptr %226, i64 %295
  %298 = load i32, ptr %297, align 4, !tbaa !49
  %299 = lshr i32 %298, 8
  %300 = getelementptr inbounds nuw i32, ptr %227, i64 %295
  store i32 %299, ptr %300, align 4, !tbaa !49
  %301 = add nuw i64 %295, 1
  %302 = add i64 %296, 1
  %303 = icmp eq i64 %302, %239
  br i1 %303, label %304, label %294, !llvm.loop !283

304:                                              ; preds = %245, %291, %294, %282
  %305 = phi ptr [ %285, %282 ], [ %228, %294 ], [ %228, %291 ], [ %228, %245 ]
  %306 = phi ptr [ %286, %282 ], [ %229, %294 ], [ %229, %291 ], [ %229, %245 ]
  %307 = phi i64 [ %287, %282 ], [ %230, %294 ], [ %230, %291 ], [ %230, %245 ]
  %308 = phi i64 [ %289, %282 ], [ %231, %294 ], [ %231, %291 ], [ %231, %245 ]
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %310 = load i32, ptr %309, align 4, !tbaa !175
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %395, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %314 = load i32, ptr %313, align 8, !tbaa !172
  %315 = add i32 %310, -3
  %316 = icmp ult i32 %315, 3
  %317 = icmp eq i32 %314, 1
  %318 = and i1 %316, %317
  br i1 %318, label %395, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %321 = load ptr, ptr %320, align 8, !tbaa !180
  %322 = ptrtoint ptr %321 to i64
  %323 = getelementptr inbounds nuw i8, ptr %5, i64 232
  %324 = load ptr, ptr %323, align 8, !tbaa !285
  %325 = ptrtoint ptr %324 to i64
  %326 = load i32, ptr %47, align 4, !tbaa !73
  %327 = add i32 %326, -3
  %328 = icmp ult i32 %327, -2
  br i1 %328, label %393, label %329

329:                                              ; preds = %319
  %330 = icmp eq i64 %308, 0
  br i1 %330, label %395, label %331

331:                                              ; preds = %329
  %332 = icmp ult i64 %308, 8
  %333 = sub i64 %322, %325
  %334 = icmp ult i64 %333, 32
  %335 = select i1 %332, i1 true, i1 %334
  br i1 %335, label %352, label %336

336:                                              ; preds = %331
  %337 = and i64 %308, -8
  br label %338

338:                                              ; preds = %338, %336
  %339 = phi i64 [ 0, %336 ], [ %348, %338 ]
  %340 = getelementptr inbounds nuw i32, ptr %324, i64 %339
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 16
  %342 = load <4 x i32>, ptr %340, align 4, !tbaa !49
  %343 = load <4 x i32>, ptr %341, align 4, !tbaa !49
  %344 = lshr <4 x i32> %342, splat (i32 8)
  %345 = lshr <4 x i32> %343, splat (i32 8)
  %346 = getelementptr inbounds nuw i32, ptr %321, i64 %339
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 16
  store <4 x i32> %344, ptr %346, align 4, !tbaa !49
  store <4 x i32> %345, ptr %347, align 4, !tbaa !49
  %348 = add nuw i64 %339, 8
  %349 = icmp eq i64 %348, %337
  br i1 %349, label %350, label %338, !llvm.loop !286

350:                                              ; preds = %338
  %351 = icmp eq i64 %308, %337
  br i1 %351, label %395, label %352

352:                                              ; preds = %331, %350
  %353 = phi i64 [ 0, %331 ], [ %337, %350 ]
  %354 = and i64 %308, 3
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %366, label %356

356:                                              ; preds = %352, %356
  %357 = phi i64 [ %363, %356 ], [ %353, %352 ]
  %358 = phi i64 [ %364, %356 ], [ 0, %352 ]
  %359 = getelementptr inbounds nuw i32, ptr %324, i64 %357
  %360 = load i32, ptr %359, align 4, !tbaa !49
  %361 = lshr i32 %360, 8
  %362 = getelementptr inbounds nuw i32, ptr %321, i64 %357
  store i32 %361, ptr %362, align 4, !tbaa !49
  %363 = add nuw i64 %357, 1
  %364 = add i64 %358, 1
  %365 = icmp eq i64 %364, %354
  br i1 %365, label %366, label %356, !llvm.loop !287

366:                                              ; preds = %356, %352
  %367 = phi i64 [ %353, %352 ], [ %363, %356 ]
  %368 = sub i64 %353, %308
  %369 = icmp ugt i64 %368, -4
  br i1 %369, label %395, label %370

370:                                              ; preds = %366, %370
  %371 = phi i64 [ %391, %370 ], [ %367, %366 ]
  %372 = getelementptr inbounds nuw i32, ptr %324, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !49
  %374 = lshr i32 %373, 8
  %375 = getelementptr inbounds nuw i32, ptr %321, i64 %371
  store i32 %374, ptr %375, align 4, !tbaa !49
  %376 = add nuw i64 %371, 1
  %377 = getelementptr inbounds nuw i32, ptr %324, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !49
  %379 = lshr i32 %378, 8
  %380 = getelementptr inbounds nuw i32, ptr %321, i64 %376
  store i32 %379, ptr %380, align 4, !tbaa !49
  %381 = add nuw i64 %371, 2
  %382 = getelementptr inbounds nuw i32, ptr %324, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !49
  %384 = lshr i32 %383, 8
  %385 = getelementptr inbounds nuw i32, ptr %321, i64 %381
  store i32 %384, ptr %385, align 4, !tbaa !49
  %386 = add nuw i64 %371, 3
  %387 = getelementptr inbounds nuw i32, ptr %324, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !49
  %389 = lshr i32 %388, 8
  %390 = getelementptr inbounds nuw i32, ptr %321, i64 %386
  store i32 %389, ptr %390, align 4, !tbaa !49
  %391 = add nuw i64 %371, 4
  %392 = icmp eq i64 %391, %308
  br i1 %392, label %395, label %370, !llvm.loop !288

393:                                              ; preds = %319
  %394 = shl i64 %308, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %321, ptr readonly align 4 %324, i64 %394, i1 false)
  br label %395

395:                                              ; preds = %366, %370, %350, %393, %329, %312, %304
  %396 = load i32, ptr %47, align 4, !tbaa !73
  %397 = load i32, ptr %170, align 8, !tbaa !270
  %398 = add i32 %396, -6
  %399 = icmp ult i32 %398, -3
  %400 = icmp ne i32 %397, 1
  %401 = or i1 %399, %400
  br i1 %401, label %410, label %402

402:                                              ; preds = %395
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %404 = load ptr, ptr %403, align 8, !tbaa !289
  %405 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %406 = load ptr, ptr %405, align 8, !tbaa !290
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %404, ptr noundef nonnull align 1 dereferenceable(1) %406, i64 %307, i1 false)
  %407 = getelementptr inbounds nuw i8, ptr %5, i64 200
  %408 = load i64, ptr %407, align 8, !tbaa !291
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 3336
  store i64 %408, ptr %409, align 8, !tbaa !292
  br label %410

410:                                              ; preds = %402, %395
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %412 = load i32, ptr %411, align 8, !tbaa !178
  %413 = icmp eq i32 %412, 0
  %414 = zext nneg i32 %412 to i64
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %416 = load ptr, ptr %415, align 8, !tbaa !181
  %417 = shl i64 4, %414
  %418 = select i1 %413, i64 0, i64 %417
  tail call void @llvm.memset.p0.i64(ptr align 4 %416, i8 0, i64 %418, i1 false)
  %419 = load ptr, ptr %178, align 8, !tbaa !54
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %421 = load ptr, ptr %420, align 8, !tbaa !53
  %422 = icmp ult ptr %419, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %410
  store ptr %421, ptr %178, align 8, !tbaa !54
  br label %424

424:                                              ; preds = %423, %410
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %305, ptr noundef nonnull readonly align 8 dereferenceable(40) %166, i64 40, i1 false), !tbaa.struct !182
  %425 = getelementptr inbounds nuw i8, ptr %5, i64 144
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %427 = load <2 x i32>, ptr %425, align 8, !tbaa !49
  store <2 x i32> %427, ptr %426, align 8, !tbaa !49
  %428 = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %429 = load i32, ptr %428, align 8, !tbaa !279
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %429, ptr %430, align 8, !tbaa !184
  %431 = load i64, ptr %25, align 8, !tbaa !266
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %431, ptr %432, align 8, !tbaa !185
  %433 = load ptr, ptr %306, align 8, !tbaa !55
  %434 = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %433, ptr noundef nonnull readonly align 8 dereferenceable(5632) %434, i64 5632, i1 false)
  br label %435

435:                                              ; preds = %424, %165
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %10)
  br label %474

436:                                              ; preds = %24, %35, %39
  %437 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %438 = icmp ult i64 %437, -119
  br i1 %438, label %442, label %474

439:                                              ; preds = %21
  %440 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %441 = icmp ult i64 %440, -119
  br i1 %441, label %457, label %474

442:                                              ; preds = %436
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %444 = load ptr, ptr %443, align 8, !tbaa !55
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %449 = load ptr, ptr %5, align 8, !tbaa !293
  %450 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %451 = load i64, ptr %450, align 8, !tbaa !266
  %452 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %453 = load i32, ptr %452, align 8, !tbaa !294
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %455 = load ptr, ptr %454, align 8, !tbaa !57
  %456 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %444, ptr noundef nonnull %445, ptr noundef nonnull %446, ptr noundef nonnull %447, ptr noundef nonnull %448, ptr noundef %449, i64 noundef %451, i32 noundef %453, i32 noundef %4, i32 noundef 0, ptr noundef %455)
  br label %467

457:                                              ; preds = %439
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %459 = load ptr, ptr %458, align 8, !tbaa !55
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %465 = load ptr, ptr %464, align 8, !tbaa !57
  %466 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %459, ptr noundef nonnull %460, ptr noundef nonnull %461, ptr noundef nonnull %462, ptr noundef nonnull %463, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef %465)
  br label %467

467:                                              ; preds = %457, %442
  %468 = phi i64 [ %456, %442 ], [ %466, %457 ]
  %469 = icmp ult i64 %468, -119
  br i1 %469, label %470, label %474

470:                                              ; preds = %467
  %471 = trunc nuw i64 %468 to i32
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %471, ptr %472, align 8, !tbaa !184
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %17, ptr %473, align 8, !tbaa !185
  br label %474

474:                                              ; preds = %439, %470, %467, %435, %164, %436
  %475 = phi i64 [ %437, %436 ], [ %127, %164 ], [ %173, %435 ], [ %468, %467 ], [ 0, %470 ], [ %440, %439 ]
  ret i64 %475
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !74
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !75
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = load i32, ptr %11, align 8, !tbaa !73
  %13 = add i32 %12, -6
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  store i32 2, ptr %10, align 8, !tbaa !76
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %17 = icmp ugt i32 %12, 6
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  store i32 2, ptr %16, align 4, !tbaa !77
  br label %30

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 8, !tbaa !68
  %21 = icmp ugt i32 %20, 14
  %22 = select i1 %21, i32 1, i32 2
  store i32 %22, ptr %10, align 8, !tbaa !76
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %23, align 4, !tbaa !77
  br label %30

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 8, !tbaa !68
  %26 = icmp ugt i32 %25, 16
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %16, align 4, !tbaa !77
  %28 = icmp ugt i32 %25, 26
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %19, %18, %24
  %31 = phi i32 [ 2, %19 ], [ %29, %24 ], [ 2, %18 ]
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %31, ptr %32, align 8, !tbaa !78
  %33 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %33, align 8, !tbaa !79
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i32 2, ptr %34, align 8, !tbaa !80
  %35 = load <4 x i32>, ptr %7, align 4, !tbaa !49
  %36 = freeze <4 x i32> %35
  %37 = add <4 x i32> %36, <i32 -32, i32 -31, i32 -31, i32 -31>
  %38 = icmp ult <4 x i32> %37, <i32 -22, i32 -25, i32 -25, i32 -30>
  %39 = bitcast <4 x i1> %38 to i4
  %40 = icmp eq i4 %39, 0
  br i1 %40, label %41, label %103

41:                                               ; preds = %30
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %43 = load i32, ptr %42, align 4, !tbaa !49
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %47 = load i32, ptr %46, align 4, !tbaa !49
  %48 = add i32 %47, -3
  %49 = icmp ult i32 %48, 5
  %50 = icmp ult i32 %45, 131073
  %51 = select i1 %49, i1 %50, i1 false
  %52 = add i32 %43, -1
  %53 = icmp ult i32 %52, 9
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %103

55:                                               ; preds = %41
  %56 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %58, %57 ], [ 0, %55 ]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %60, ptr %61, align 8, !tbaa !267
  %62 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, i64 noundef %4, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %64, label %103

64:                                               ; preds = %59
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = icmp eq ptr %1, null
  %74 = icmp ult i64 %2, 8
  %75 = or i1 %73, %74
  br i1 %75, label %99, label %76

76:                                               ; preds = %64
  %77 = getelementptr inbounds nuw i8, ptr %66, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %77, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %78 = getelementptr inbounds nuw i8, ptr %66, i64 2056
  store i32 0, ptr %78, align 8, !tbaa !166
  %79 = getelementptr inbounds nuw i8, ptr %66, i64 5604
  store i32 0, ptr %79, align 4, !tbaa !167
  %80 = getelementptr inbounds nuw i8, ptr %66, i64 5608
  store i32 0, ptr %80, align 8, !tbaa !168
  %81 = getelementptr inbounds nuw i8, ptr %66, i64 5612
  store i32 0, ptr %81, align 4, !tbaa !169
  %82 = load i32, ptr %1, align 1, !tbaa !49
  %83 = icmp eq i32 %82, -332356553
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %99

85:                                               ; preds = %76
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %87 = load i32, ptr %86, align 8, !tbaa !92
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %91 = load i32, ptr %90, align 1, !tbaa !49
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i32 [ %91, %89 ], [ 0, %85 ]
  %94 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %66, ptr noundef %72, ptr noundef nonnull %1, i64 noundef range(i64 8, 0) %2)
  %95 = icmp ult i64 %94, -119
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 %94
  %98 = sub nsw i64 %2, %94
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %67, ptr noundef null, ptr noundef nonnull %69, ptr noundef nonnull %70, ptr noundef %97, i64 noundef %98, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %99

99:                                               ; preds = %84, %96, %64
  %100 = phi i32 [ 0, %64 ], [ %93, %96 ], [ 0, %84 ]
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %100, ptr %101, align 8, !tbaa !184
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %102, align 8, !tbaa !185
  br label %103

103:                                              ; preds = %99, %59, %92, %30, %41
  %104 = phi i64 [ -42, %30 ], [ -42, %41 ], [ 0, %99 ], [ %62, %59 ], [ %94, %92 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #30
  ret i64 %104
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #30
  %6 = icmp eq i64 %2, 0
  %7 = add i64 %2, 499
  %8 = select i1 %6, i64 -1, i64 %7
  %9 = icmp ult i64 %8, 262145
  %10 = zext i1 %9 to i64
  %11 = icmp ult i64 %8, 131073
  %12 = zext i1 %11 to i64
  %13 = add nuw nsw i64 %10, %12
  %14 = icmp ult i64 %8, 16385
  %15 = zext i1 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = icmp slt i32 %3, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @llvm.umin.i32(i32 %3, i32 22)
  %22 = zext nneg i32 %21 to i64
  br label %23

23:                                               ; preds = %20, %18, %4
  %24 = phi i64 [ 3, %4 ], [ 0, %18 ], [ %22, %20 ]
  %25 = getelementptr inbounds nuw [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 %16, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !49, !noalias !295
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %28 = load i32, ptr %27, align 4, !tbaa !49, !noalias !295
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !49, !noalias !295
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 12
  %32 = load <2 x i32>, ptr %31, align 4, !tbaa !49, !noalias !295
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa !49, !noalias !295
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %36 = load i32, ptr %35, align 4, !tbaa !49, !noalias !295
  %37 = add i32 %36, -6
  %38 = icmp ult i32 %37, -3
  br i1 %38, label %45, label %39

39:                                               ; preds = %23
  %40 = load i32, ptr %31, align 4, !tbaa !49, !noalias !295
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 4)
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 6)
  %43 = or disjoint i32 %42, 24
  %44 = tail call i32 @llvm.umin.i32(i32 %30, i32 %43)
  br label %45

45:                                               ; preds = %23, %39
  %46 = phi i32 [ %30, %23 ], [ %44, %39 ]
  %47 = tail call i32 @llvm.umax.i32(i32 %26, i32 10)
  %48 = icmp slt i32 %3, 0
  %49 = tail call i32 @llvm.umax.i32(i32 %3, i32 -131072)
  %50 = sub nsw i32 0, %49
  %51 = select i1 %48, i32 %50, i32 %34
  %52 = select i1 %17, i32 3, i32 %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5, i8 0, i64 224, i1 false)
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %47, ptr %53, align 4, !tbaa !49
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %28, ptr %54, align 8, !tbaa !49
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %46, ptr %55, align 4, !tbaa !49
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x i32> %32, ptr %56, align 8, !tbaa !49
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %51, ptr %57, align 8, !tbaa !49
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %36, ptr %58, align 4, !tbaa !49
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %59, align 8, !tbaa !49
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %52, ptr %60, align 4, !tbaa !44
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 160
  br i1 %38, label %62, label %66

62:                                               ; preds = %45
  store i32 2, ptr %61, align 8, !tbaa !76
  %63 = getelementptr inbounds nuw i8, ptr %5, i64 140
  %64 = icmp ugt i32 %36, 6
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  store i32 2, ptr %63, align 4, !tbaa !77
  br label %75

66:                                               ; preds = %45
  %67 = icmp ugt i32 %26, 14
  %68 = select i1 %67, i32 1, i32 2
  store i32 %68, ptr %61, align 8, !tbaa !76
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %69, align 4, !tbaa !77
  br label %75

70:                                               ; preds = %62
  %71 = icmp ugt i32 %26, 16
  %72 = select i1 %71, i32 1, i32 2
  store i32 %72, ptr %63, align 4, !tbaa !77
  %73 = icmp ugt i32 %26, 26
  %74 = select i1 %73, i32 1, i32 2
  br label %75

75:                                               ; preds = %66, %65, %70
  %76 = phi i32 [ 2, %66 ], [ %74, %70 ], [ 2, %65 ]
  %77 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 %76, ptr %77, align 8, !tbaa !78
  %78 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 131072, ptr %78, align 8, !tbaa !79
  %79 = getelementptr inbounds nuw i8, ptr %5, i64 216
  %80 = icmp slt i32 %52, 10
  %81 = select i1 %80, i32 2, i32 1
  store i32 %81, ptr %79, align 8, !tbaa !80
  %82 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %85

85:                                               ; preds = %83, %75
  %86 = phi i64 [ %84, %83 ], [ 0, %75 ]
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %86, ptr %87, align 8, !tbaa !267
  %88 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, i64 noundef -1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  %89 = icmp ult i64 %88, -119
  br i1 %89, label %90, label %129

90:                                               ; preds = %85
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %92 = load ptr, ptr %91, align 8, !tbaa !55
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %98 = load ptr, ptr %97, align 8, !tbaa !57
  %99 = icmp eq ptr %1, null
  %100 = icmp ult i64 %2, 8
  %101 = or i1 %99, %100
  br i1 %101, label %125, label %102

102:                                              ; preds = %90
  %103 = getelementptr inbounds nuw i8, ptr %92, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %103, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %104 = getelementptr inbounds nuw i8, ptr %92, i64 2056
  store i32 0, ptr %104, align 8, !tbaa !166
  %105 = getelementptr inbounds nuw i8, ptr %92, i64 5604
  store i32 0, ptr %105, align 4, !tbaa !167
  %106 = getelementptr inbounds nuw i8, ptr %92, i64 5608
  store i32 0, ptr %106, align 8, !tbaa !168
  %107 = getelementptr inbounds nuw i8, ptr %92, i64 5612
  store i32 0, ptr %107, align 4, !tbaa !169
  %108 = load i32, ptr %1, align 1, !tbaa !49
  %109 = icmp eq i32 %108, -332356553
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull %96, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %125

111:                                              ; preds = %102
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %113 = load i32, ptr %112, align 8, !tbaa !92
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %117 = load i32, ptr %116, align 1, !tbaa !49
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i32 [ %117, %115 ], [ 0, %111 ]
  %120 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %92, ptr noundef %98, ptr noundef nonnull %1, i64 noundef range(i64 8, 0) %2)
  %121 = icmp ult i64 %120, -119
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 %120
  %124 = sub nsw i64 %2, %120
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %93, ptr noundef null, ptr noundef nonnull %95, ptr noundef nonnull %96, ptr noundef %123, i64 noundef %124, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %125

125:                                              ; preds = %110, %122, %90
  %126 = phi i32 [ 0, %90 ], [ %119, %122 ], [ 0, %110 ]
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %126, ptr %127, align 8, !tbaa !184
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %128, align 8, !tbaa !185
  br label %129

129:                                              ; preds = %118, %85, %125
  %130 = phi i64 [ 0, %125 ], [ %88, %85 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #30
  ret i64 %130
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_CCtx_trace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_Trace, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %5 = load i64, ptr %4, align 8, !tbaa !267
  %6 = icmp ne i64 %5, 0
  %7 = icmp ne ptr @ZSTD_trace_compress_end, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %11 = load i64, ptr %10, align 8, !tbaa !300
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %15 = load i64, ptr %14, align 8, !tbaa !301
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %19 = load i32, ptr %18, align 4, !tbaa !302
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %17, %13, %9
  %23 = phi i32 [ 1, %13 ], [ 1, %9 ], [ %21, %17 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #30
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, i8 0, i64 56, i1 false)
  store i32 10600, ptr %3, align 8, !tbaa !303
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %23, ptr %25, align 4, !tbaa !308
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %27 = load i32, ptr %26, align 8, !tbaa !184
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %27, ptr %28, align 8, !tbaa !309
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %30 = load i64, ptr %29, align 8, !tbaa !185
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %30, ptr %31, align 8, !tbaa !310
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %33 = load i64, ptr %32, align 8, !tbaa !157
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %33, ptr %34, align 8, !tbaa !311
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %36 = load i64, ptr %35, align 8, !tbaa !161
  %37 = add i64 %36, %1
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %37, ptr %38, align 8, !tbaa !312
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %39, ptr %40, align 8, !tbaa !313
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %41, align 8, !tbaa !314
  call void @ZSTD_trace_compress_end(i64 noundef %5, ptr noundef nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #30
  br label %42

42:                                               ; preds = %22, %2
  store i64 0, ptr %4, align 8, !tbaa !267
  ret void
}

declare extern_weak void @ZSTD_trace_compress_end(i64 noundef, ptr noundef) #11

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 1)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %119

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %11 = sub i64 %2, %7
  %12 = load i32, ptr %0, align 8, !tbaa !170
  switch i32 %12, label %45 [
    i32 0, label %119
    i32 1, label %13
    i32 3, label %51
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %16 = load i32, ptr %15, align 4, !tbaa !91
  %17 = icmp sgt i32 %16, 0
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %19 = load i32, ptr %18, align 4, !tbaa !84
  %20 = load i32, ptr %14, align 8, !tbaa !45
  %21 = icmp eq i32 %20, 0
  %22 = trunc i32 %19 to i8
  %23 = shl i8 %22, 3
  %24 = add i8 %23, -80
  %25 = select i1 %17, i8 4, i8 0
  %26 = select i1 %21, i8 0, i8 32
  %27 = or disjoint i8 %26, %25
  %28 = icmp ult i64 %11, 18
  br i1 %28, label %119, label %29

29:                                               ; preds = %13
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %31 = load i32, ptr %30, align 8, !tbaa !83
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -47205080, ptr %10, align 1, !tbaa !49
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i64 [ 4, %33 ], [ 0, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 %35
  store i8 %27, ptr %36, align 1, !tbaa !196
  %37 = select i1 %21, i8 %24, i8 0
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 1
  store i8 %37, ptr %38, align 1, !tbaa !196
  %39 = or disjoint i64 %35, 2
  %40 = getelementptr inbounds nuw i8, ptr %10, i64 %39
  store i32 2, ptr %0, align 8, !tbaa !170
  store i16 1, ptr %40, align 1, !tbaa !231
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 2
  store i8 0, ptr %41, align 1, !tbaa !196
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 3
  %43 = add i64 %11, -3
  %44 = sub nuw i64 %43, %39
  br label %51

45:                                               ; preds = %9
  %46 = icmp ugt i64 %11, 2
  br i1 %46, label %47, label %119

47:                                               ; preds = %45
  store i16 1, ptr %10, align 1, !tbaa !231
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 0, ptr %48, align 1, !tbaa !196
  %49 = getelementptr inbounds nuw i8, ptr %10, i64 3
  %50 = add i64 %11, -3
  br label %51

51:                                               ; preds = %47, %34, %9
  %52 = phi ptr [ %42, %34 ], [ %49, %47 ], [ %10, %9 ]
  %53 = phi i64 [ %44, %34 ], [ %50, %47 ], [ %11, %9 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %55 = load i32, ptr %54, align 4, !tbaa !245
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = icmp ugt i64 %53, 3
  br i1 %58, label %59, label %119

59:                                               ; preds = %57
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %61 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %60) #34
  %62 = trunc i64 %61 to i32
  store i32 %62, ptr %52, align 1, !tbaa !49
  %63 = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %64

64:                                               ; preds = %51, %59
  %65 = phi ptr [ %52, %51 ], [ %63, %59 ]
  store i32 0, ptr %0, align 8, !tbaa !170
  %66 = ptrtoint ptr %65 to i64
  %67 = ptrtoint ptr %10 to i64
  %68 = sub i64 %66, %67
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %119

70:                                               ; preds = %64
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %72 = load i64, ptr %71, align 8, !tbaa !115
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %76 = load i64, ptr %75, align 8, !tbaa !157
  %77 = add i64 %76, 1
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %81 = load i64, ptr %80, align 8, !tbaa !267
  %82 = icmp ne i64 %81, 0
  %83 = icmp ne ptr @ZSTD_trace_compress_end, null
  %84 = and i1 %83, %82
  br i1 %84, label %85, label %117

85:                                               ; preds = %79
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %87 = load i64, ptr %86, align 8, !tbaa !300
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %91 = load i64, ptr %90, align 8, !tbaa !301
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %95 = load i32, ptr %94, align 4, !tbaa !302
  %96 = icmp sgt i32 %95, 0
  %97 = zext i1 %96 to i32
  br label %98

98:                                               ; preds = %93, %89, %85
  %99 = phi i32 [ 1, %89 ], [ 1, %85 ], [ %97, %93 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #30
  %100 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %100, i8 0, i64 56, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !303
  %101 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %99, ptr %101, align 4, !tbaa !308
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %103 = load i32, ptr %102, align 8, !tbaa !184
  store i32 %103, ptr %100, align 8, !tbaa !309
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %105 = load i64, ptr %104, align 8, !tbaa !185
  %106 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %105, ptr %106, align 8, !tbaa !310
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %108 = load i64, ptr %107, align 8, !tbaa !157
  %109 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %108, ptr %109, align 8, !tbaa !311
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %111 = load i64, ptr %110, align 8, !tbaa !161
  %112 = add i64 %111, %68
  %113 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %112, ptr %113, align 8, !tbaa !312
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %115 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %114, ptr %115, align 8, !tbaa !313
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %0, ptr %116, align 8, !tbaa !314
  call void @ZSTD_trace_compress_end(i64 noundef %81, ptr noundef nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #30
  br label %117

117:                                              ; preds = %79, %98
  store i64 0, ptr %80, align 8, !tbaa !267
  %118 = add i64 %68, %7
  br label %119

119:                                              ; preds = %13, %45, %57, %9, %74, %64, %5, %117
  %120 = phi i64 [ %118, %117 ], [ %68, %64 ], [ %7, %5 ], [ -72, %74 ], [ -70, %13 ], [ -70, %45 ], [ -70, %57 ], [ -60, %9 ]
  ret i64 %120
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %7) local_unnamed_addr #2 {
  %9 = load i32, ptr %7, align 8, !tbaa !68
  %10 = add i32 %9, -32
  %11 = icmp ult i32 %10, -22
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = add i32 %14, -31
  %16 = icmp ult i32 %15, -25
  br i1 %16, label %68, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = add i32 %19, -31
  %21 = icmp ult i32 %20, -25
  br i1 %21, label %68, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = add i32 %24, -31
  %26 = icmp ult i32 %25, -30
  br i1 %26, label %68, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = add i32 %29, -8
  %31 = icmp ult i32 %30, -5
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 131072
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %68, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %38 = load i32, ptr %37, align 8, !tbaa !73
  %39 = add i32 %38, -1
  %40 = icmp ult i32 %39, 9
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %42, i8 0, i64 224, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %43, ptr noundef nonnull readonly align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !74
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %45 = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull readonly align 4 dereferenceable(12) %45, i64 12, i1 false), !tbaa.struct !75
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %47 = add nsw i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  store i32 2, ptr %46, align 8, !tbaa !76
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %51 = icmp samesign ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !77
  br label %62

53:                                               ; preds = %41
  %54 = icmp samesign ugt i32 %9, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !76
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %56, align 4, !tbaa !77
  br label %62

57:                                               ; preds = %49
  %58 = icmp samesign ugt i32 %9, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !77
  %60 = icmp samesign ugt i32 %9, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ 2, %53 ], [ %61, %57 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %63, ptr %64, align 8, !tbaa !78
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %65, align 8, !tbaa !79
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 2, ptr %66, align 8, !tbaa !80
  %67 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %42)
  br label %68

68:                                               ; preds = %27, %22, %17, %12, %8, %36, %62
  %69 = phi i64 [ %67, %62 ], [ -42, %36 ], [ -42, %8 ], [ -42, %12 ], [ -42, %17 ], [ -42, %22 ], [ -42, %27 ]
  ret i64 %69
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #2 {
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %11, %10 ], [ 0, %8 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %13, ptr %14, align 8, !tbaa !267
  %15 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef readonly %7, i64 noundef %4, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  %16 = icmp ult i64 %15, -119
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %5, null
  %27 = icmp ult i64 %6, 8
  %28 = or i1 %26, %27
  br i1 %28, label %52, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds nuw i8, ptr %19, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 2056
  store i32 0, ptr %31, align 8, !tbaa !166
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 5604
  store i32 0, ptr %32, align 4, !tbaa !167
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 5608
  store i32 0, ptr %33, align 8, !tbaa !168
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 5612
  store i32 0, ptr %34, align 4, !tbaa !169
  %35 = load i32, ptr %5, align 1, !tbaa !49
  %36 = icmp eq i32 %35, -332356553
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef %5, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  br label %52

38:                                               ; preds = %29
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %40 = load i32, ptr %39, align 8, !tbaa !92
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %44 = load i32, ptr %43, align 1, !tbaa !49
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ 0, %38 ]
  %47 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %19, ptr noundef %25, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6)
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 %47
  %51 = sub nsw i64 %6, %47
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef %50, i64 noundef %51, i32 noundef 0, i32 noundef range(i32 0, 2) 0)
  br label %52

52:                                               ; preds = %37, %49, %17
  %53 = phi i32 [ 0, %17 ], [ %46, %49 ], [ 0, %37 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %53, ptr %54, align 8, !tbaa !184
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %6, ptr %55, align 8, !tbaa !185
  %56 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %57

57:                                               ; preds = %45, %12, %52
  %58 = phi i64 [ %56, %52 ], [ %47, %45 ], [ %15, %12 ]
  ret i64 %58
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingDict(ptr noundef initializes((464, 688)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.ZSTD_compressionParameters, align 4
  %10 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10)
  %11 = icmp eq ptr %5, null
  %12 = select i1 %11, i64 0, i64 %6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #30, !noalias !315
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %9, i32 noundef %7, i64 noundef %4, i64 noundef %12, i32 noundef 0), !noalias !315
  %13 = load i32, ptr %9, align 4, !tbaa !49
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !125
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %16 = load i32, ptr %15, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #30, !noalias !315
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %18 = icmp eq i32 %7, 0
  %19 = select i1 %18, i32 3, i32 %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %17, i8 0, i64 224, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %13, ptr %20, align 4, !tbaa !49
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !125
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %16, ptr %22, align 4, !tbaa !49
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 1, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %19, ptr %24, align 4, !tbaa !44
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %26 = add i32 %16, -6
  %27 = icmp ult i32 %26, -3
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  store i32 2, ptr %25, align 8, !tbaa !76
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %30 = icmp ugt i32 %16, 6
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  store i32 2, ptr %29, align 4, !tbaa !77
  br label %41

32:                                               ; preds = %8
  %33 = icmp ugt i32 %13, 14
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, ptr %25, align 8, !tbaa !76
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %35, align 4, !tbaa !77
  br label %41

36:                                               ; preds = %28
  %37 = icmp ugt i32 %13, 16
  %38 = select i1 %37, i32 1, i32 2
  store i32 %38, ptr %29, align 4, !tbaa !77
  %39 = icmp ugt i32 %13, 26
  %40 = select i1 %39, i32 1, i32 2
  br label %41

41:                                               ; preds = %32, %31, %36
  %42 = phi i32 [ 2, %32 ], [ %40, %36 ], [ 2, %31 ]
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %42, ptr %43, align 8, !tbaa !78
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %44, align 8, !tbaa !79
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %46 = icmp slt i32 %19, 10
  %47 = select i1 %46, i32 2, i32 1
  store i32 %47, ptr %45, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10)
  %48 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %17)
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressCCtx(ptr noundef initializes((464, 688)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_compressionParameters, align 4
  %8 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #30, !noalias !318
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %7, i32 noundef %5, i64 noundef %4, i64 noundef 0, i32 noundef 0), !noalias !318
  %9 = load i32, ptr %7, align 4, !tbaa !49
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !125
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %12 = load i32, ptr %11, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #30, !noalias !318
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %14 = icmp eq i32 %5, 0
  %15 = select i1 %14, i32 3, i32 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %13, i8 0, i64 224, i1 false)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %9, ptr %16, align 4, !tbaa !49
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !125
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %12, ptr %18, align 4, !tbaa !49
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 1, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %15, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %22 = add i32 %12, -6
  %23 = icmp ult i32 %22, -3
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  store i32 2, ptr %21, align 8, !tbaa !76
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 604
  %26 = icmp ugt i32 %12, 6
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  store i32 2, ptr %25, align 4, !tbaa !77
  br label %37

28:                                               ; preds = %6
  %29 = icmp ugt i32 %9, 14
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %21, align 8, !tbaa !76
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 2, ptr %31, align 4, !tbaa !77
  br label %37

32:                                               ; preds = %24
  %33 = icmp ugt i32 %9, 16
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, ptr %25, align 4, !tbaa !77
  %35 = icmp ugt i32 %9, 26
  %36 = select i1 %35, i32 1, i32 2
  br label %37

37:                                               ; preds = %27, %28, %32
  %38 = phi i32 [ 2, %28 ], [ %36, %32 ], [ 2, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %38, ptr %39, align 8, !tbaa !78
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %40, align 8, !tbaa !79
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %42 = icmp slt i32 %15, 10
  %43 = select i1 %42, i32 2, i32 1
  store i32 %43, ptr %41, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8)
  %44 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #30
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi i64 [ %46, %45 ], [ 0, %37 ]
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %48, ptr %49, align 8, !tbaa !267
  %50 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %13, i64 noundef %4, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  %51 = icmp ult i64 %50, -119
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 0, ptr %53, align 8, !tbaa !184
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 0, ptr %54, align 8, !tbaa !185
  %55 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %56

56:                                               ; preds = %47, %52
  %57 = phi i64 [ %55, %52 ], [ %50, %47 ]
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_s, align 8
  call void @llvm.lifetime.start.p0(i64 5280, ptr nonnull %6) #30
  %7 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %8 = icmp eq i32 %7, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %6, i8 0, i64 5280, i1 false)
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %11 = icmp ugt i32 %7, 6
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
  %14 = extractvalue { i32, i32, i32 } %13, 1
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = lshr i32 %14, 8
  %19 = and i32 %18, 1
  br label %20

20:                                               ; preds = %5, %9, %12, %17
  %21 = phi i32 [ 0, %12 ], [ %19, %17 ], [ 0, %9 ], [ 0, %5 ]
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %21, ptr %22, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 3688
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 904
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 912
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 3720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, i8 0, i64 72, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %27, i8 0, i64 224, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 3, ptr %28, align 4, !tbaa !44
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 1, ptr %29, align 8, !tbaa !45
  %30 = call i64 @ZSTD_compressCCtx(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  %31 = load ptr, ptr %23, align 8, !tbaa !116
  %32 = load ptr, ptr %24, align 8
  %33 = load ptr, ptr %25, align 8
  %34 = icmp eq ptr %31, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %20
  %36 = icmp eq ptr %32, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void %32(ptr noundef %33, ptr noundef nonnull %31) #30
  br label %39

38:                                               ; preds = %35
  call void @free(ptr noundef nonnull %31) #30
  br label %39

39:                                               ; preds = %38, %37, %20
  %40 = load ptr, ptr %26, align 8, !tbaa !120
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 6048
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 6056
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp ugt ptr %48, %40
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %40, i64 40
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = icmp uge ptr %40, %52
  br label %54

54:                                               ; preds = %50, %42
  %55 = phi i1 [ true, %42 ], [ %53, %50 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %47, i8 0, i64 72, i1 false)
  %56 = icmp eq ptr %48, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = icmp eq ptr %44, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  call void %44(ptr noundef %46, ptr noundef nonnull %48) #30
  br label %60

60:                                               ; preds = %59, %54
  br i1 %55, label %62, label %66

61:                                               ; preds = %57
  call void @free(ptr noundef nonnull %48) #30
  br i1 %55, label %65, label %66

62:                                               ; preds = %60
  %63 = icmp eq ptr %44, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  call void %44(ptr noundef %46, ptr noundef nonnull %40) #30
  br label %66

65:                                               ; preds = %62, %61
  call void @free(ptr noundef nonnull %40) #30
  br label %66

66:                                               ; preds = %39, %60, %61, %64, %65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, i8 0, i64 72, i1 false)
  %67 = getelementptr inbounds nuw i8, ptr %6, i64 704
  %68 = load ptr, ptr %24, align 8
  %69 = load ptr, ptr %25, align 8
  %70 = load ptr, ptr %67, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %67, i8 0, i64 72, i1 false)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = icmp eq ptr %68, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void %68(ptr noundef %69, ptr noundef nonnull %70) #30
  br label %76

75:                                               ; preds = %72
  call void @free(ptr noundef nonnull %70) #30
  br label %76

76:                                               ; preds = %66, %74, %75
  call void @llvm.lifetime.end.p0(i64 5280, ptr nonnull %6) #30
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %1, align 8
  %9 = icmp ult i32 %8, 15
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 4, %12
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = select i1 %7, i1 true, i1 %9
  %19 = add nuw i64 %17, 63
  %20 = and i64 %19, -64
  %21 = select i1 %18, i64 0, i64 %20
  %22 = shl i64 4, %16
  %23 = icmp eq i32 %2, 1
  %24 = add i64 %0, 7
  %25 = and i64 %24, -8
  %26 = add i64 %25, 14912
  %27 = select i1 %23, i64 14912, i64 %26
  %28 = add i64 %27, %13
  %29 = add i64 %28, %22
  %30 = add i64 %29, %21
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_estimateCDictSize(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #30
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %3, i32 noundef %1, i64 noundef -1, i64 noundef %0, i32 noundef 2)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %3, align 8
  %9 = icmp ult i32 %8, 15
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 4, %12
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = select i1 %7, i1 true, i1 %9
  %19 = add nuw i64 %17, 63
  %20 = and i64 %19, -64
  %21 = select i1 %18, i64 0, i64 %20
  %22 = shl i64 4, %16
  %23 = add i64 %0, 7
  %24 = and i64 %23, -8
  %25 = add i64 %24, 14912
  %26 = add i64 %25, %13
  %27 = add i64 %26, %22
  %28 = add i64 %27, %21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #30
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_sizeof_CDict(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 6080
  %8 = getelementptr i8, ptr %0, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = add i64 %12, %7
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #30
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  store i32 1, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !74
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !321
  %11 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %5)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #30
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 16
  %9 = alloca %struct.ZSTD_compressionParameters, align 16
  %10 = alloca %struct.ZSTD_compressionParameters, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !113
  %11 = load ptr, ptr %5, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  %16 = xor i1 %12, %15
  br i1 %16, label %185, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %19 = load i32, ptr %18, align 8, !tbaa !96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #30
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 44
  %23 = load i32, ptr %22, align 4, !tbaa !44
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %23, i64 noundef 0, i64 noundef %1, i32 noundef 2), !alias.scope !322
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %25 = load i32, ptr %24, align 8, !tbaa !73, !alias.scope !322
  %26 = add i32 %25, -3
  %27 = icmp ult i32 %26, 3
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %29 = load i32, ptr %28, align 8, !tbaa !49
  %30 = add i32 %29, 2
  %31 = select i1 %27, i32 %30, i32 %29
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %33 = load i32, ptr %32, align 4, !tbaa !49
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %36 = load <4 x i32>, ptr %8, align 16
  %37 = insertelement <4 x i32> poison, i32 %31, i64 2
  %38 = insertelement <4 x i32> %37, i32 %33, i64 3
  %39 = shufflevector <4 x i32> %36, <4 x i32> %38, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %41 = load <2 x i32>, ptr %34, align 16, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #30
  %42 = load <4 x i32>, ptr %35, align 4, !tbaa !49
  %43 = icmp eq <4 x i32> %42, zeroinitializer
  %44 = select <4 x i1> %43, <4 x i32> %39, <4 x i32> %42
  %45 = load <2 x i32>, ptr %40, align 4, !tbaa !49
  %46 = icmp eq <2 x i32> %45, zeroinitializer
  %47 = select <2 x i1> %46, <2 x i32> %41, <2 x i32> %45
  %48 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %49 = load i32, ptr %48, align 4, !tbaa !73
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %25, i32 %49
  br label %58

52:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %9, ptr noundef nonnull %4, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %53 = load <4 x i32>, ptr %9, align 16, !tbaa !49
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %55 = load <2 x i32>, ptr %54, align 16, !tbaa !49
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %57 = load i32, ptr %56, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #30
  br label %58

58:                                               ; preds = %21, %52
  %59 = phi i32 [ %57, %52 ], [ %51, %21 ]
  %60 = phi <4 x i32> [ %53, %52 ], [ %44, %21 ]
  %61 = phi <2 x i32> [ %55, %52 ], [ %47, %21 ]
  %62 = add i32 %59, -6
  %63 = icmp ult i32 %62, -3
  %64 = extractelement <4 x i32> %60, i64 1
  %65 = extractelement <4 x i32> %60, i64 2
  %66 = icmp ule i32 %65, %64
  %67 = icmp ugt i32 %64, 24
  %68 = or i1 %66, %67
  %69 = select i1 %63, i1 true, i1 %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  store i32 0, ptr %18, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %10, ptr noundef nonnull %7, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %71 = load <4 x i32>, ptr %10, align 16, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %73 = load <2 x i32>, ptr %72, align 16, !tbaa !49
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %75 = load i32, ptr %74, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #30
  br label %76

76:                                               ; preds = %58, %70
  %77 = phi i32 [ 0, %70 ], [ %19, %58 ]
  %78 = phi i32 [ %75, %70 ], [ %59, %58 ]
  %79 = phi <4 x i32> [ %71, %70 ], [ %60, %58 ]
  %80 = phi <2 x i32> [ %73, %70 ], [ %61, %58 ]
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <4 x i32> %79, ptr %81, align 4, !tbaa !49
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store <2 x i32> %80, ptr %82, align 4, !tbaa !49
  %83 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %78, ptr %83, align 4, !tbaa !49
  %84 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %85 = load i32, ptr %84, align 8, !tbaa !76
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = add i32 %78, -6
  %89 = icmp ult i32 %88, -3
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = extractelement <4 x i32> %79, i64 0
  %92 = icmp ugt i32 %91, 14
  %93 = select i1 %92, i32 1, i32 2
  br label %94

94:                                               ; preds = %90, %87, %76
  %95 = phi i32 [ %93, %90 ], [ %85, %76 ], [ 2, %87 ]
  store i32 %95, ptr %84, align 8, !tbaa !76
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq i32 %77, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = icmp eq i32 %78, 1
  br i1 %100, label %111, label %101

101:                                              ; preds = %99
  %102 = add i32 %78, -3
  %103 = icmp ult i32 %102, 3
  %104 = icmp eq i32 %95, 1
  %105 = and i1 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %101, %94
  %107 = extractelement <4 x i32> %79, i64 1
  %108 = zext nneg i32 %107 to i64
  %109 = shl i64 4, %108
  %110 = add nuw i64 %109, 128
  br label %111

111:                                              ; preds = %106, %101, %99
  %112 = phi i64 [ %110, %106 ], [ 128, %101 ], [ 128, %99 ]
  %113 = extractelement <4 x i32> %79, i64 2
  %114 = zext nneg i32 %113 to i64
  %115 = shl nuw i64 1, %114
  %116 = add i32 %78, -6
  %117 = icmp ult i32 %116, -3
  %118 = icmp ne i32 %95, 1
  %119 = or i1 %117, %118
  %120 = add nuw i64 %115, 63
  %121 = and i64 %120, -64
  %122 = select i1 %119, i64 0, i64 %121
  %123 = shl i64 4, %114
  %124 = icmp eq i32 %2, 1
  %125 = add i64 %1, 7
  %126 = and i64 %125, -8
  %127 = add i64 %126, 14784
  %128 = select i1 %124, i64 14784, i64 %127
  %129 = add i64 %123, %128
  %130 = add i64 %129, %122
  %131 = add i64 %130, %112
  br i1 %12, label %134, label %132

132:                                              ; preds = %111
  %133 = tail call ptr %11(ptr noundef %97, i64 noundef %131) #30
  br label %136

134:                                              ; preds = %111
  %135 = tail call noalias ptr @malloc(i64 noundef %131) #31
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi ptr [ %133, %132 ], [ %135, %134 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %185, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds nuw i8, ptr %137, i64 %131
  %141 = ptrtoint ptr %140 to i64
  %142 = and i64 %141, 63
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %140, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %137, i64 6080
  %146 = icmp ugt i64 %131, 6079
  tail call void @llvm.assume(i1 %146)
  %147 = getelementptr inbounds nuw i8, ptr %137, i64 32
  store ptr %137, ptr %147, align 8, !tbaa !48
  %148 = getelementptr inbounds nuw i8, ptr %137, i64 40
  store ptr %140, ptr %148, align 8, !tbaa !48
  %149 = getelementptr inbounds nuw i8, ptr %137, i64 48
  store ptr %145, ptr %149, align 8, !tbaa !48
  %150 = getelementptr inbounds nuw i8, ptr %137, i64 56
  store ptr %145, ptr %150, align 8, !tbaa !48
  %151 = getelementptr inbounds nuw i8, ptr %137, i64 64
  store ptr %145, ptr %151, align 8, !tbaa !48
  %152 = getelementptr inbounds nuw i8, ptr %137, i64 72
  store ptr %144, ptr %152, align 8, !tbaa !48
  %153 = getelementptr inbounds nuw i8, ptr %137, i64 80
  store ptr %144, ptr %153, align 8, !tbaa !48
  %154 = getelementptr inbounds nuw i8, ptr %137, i64 88
  store i8 0, ptr %154, align 8, !tbaa !196
  %155 = getelementptr inbounds nuw i8, ptr %137, i64 92
  store i32 0, ptr %155, align 4, !tbaa !49
  %156 = getelementptr inbounds nuw i8, ptr %137, i64 96
  store i32 0, ptr %156, align 8, !tbaa !49
  %157 = getelementptr inbounds nuw i8, ptr %137, i64 100
  store i32 0, ptr %157, align 4, !tbaa !49
  %158 = getelementptr inbounds nuw i8, ptr %137, i64 6040
  store ptr %11, ptr %158, align 8, !tbaa !48
  %159 = getelementptr inbounds nuw i8, ptr %137, i64 6048
  store ptr %14, ptr %159, align 8, !tbaa !48
  %160 = getelementptr inbounds nuw i8, ptr %137, i64 6056
  store ptr %97, ptr %160, align 8, !tbaa !48
  %161 = getelementptr inbounds nuw i8, ptr %137, i64 6068
  store i32 0, ptr %161, align 4, !tbaa !268
  %162 = getelementptr inbounds nuw i8, ptr %137, i64 6072
  store i32 %95, ptr %162, align 8, !tbaa !270
  %163 = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %137, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %7)
  %164 = icmp ult i64 %163, -119
  br i1 %164, label %185, label %165

165:                                              ; preds = %139
  %166 = load ptr, ptr %159, align 8, !tbaa !48
  %167 = load ptr, ptr %160, align 8, !tbaa !48
  %168 = load ptr, ptr %147, align 8, !tbaa !59
  %169 = icmp ugt ptr %168, %137
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %148, align 8, !tbaa !60
  %172 = icmp uge ptr %137, %171
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi i1 [ true, %165 ], [ %172, %170 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %147, i8 0, i64 72, i1 false)
  %175 = icmp eq ptr %168, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = icmp eq ptr %166, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %176
  tail call void %166(ptr noundef %167, ptr noundef nonnull %168) #30
  br label %179

179:                                              ; preds = %178, %173
  br i1 %174, label %181, label %185

180:                                              ; preds = %176
  tail call void @free(ptr noundef nonnull %168) #30
  br i1 %174, label %184, label %185

181:                                              ; preds = %179
  %182 = icmp eq ptr %166, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %181
  tail call void %166(ptr noundef %167, ptr noundef nonnull %137) #30
  br label %185

184:                                              ; preds = %181, %180
  tail call void @free(ptr noundef nonnull %137) #30
  br label %185

185:                                              ; preds = %136, %184, %183, %180, %179, %139, %6
  %186 = phi ptr [ null, %6 ], [ %137, %139 ], [ null, %179 ], [ null, %180 ], [ null, %183 ], [ null, %184 ], [ null, %136 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #30
  ret ptr %186
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_initCDict_internal(ptr noundef initializes((244, 248), (360, 388)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %5) unnamed_addr #2 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %9, i64 28, i1 false), !tbaa.struct !74
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %11, ptr %12, align 4, !tbaa !269
  %13 = icmp ne i32 %3, 1
  %14 = icmp ne ptr %1, null
  %15 = and i1 %14, %13
  %16 = icmp ne i64 %2, 0
  %17 = and i1 %16, %15
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store ptr %1, ptr %0, align 8, !tbaa !293
  br label %39

19:                                               ; preds = %6
  %20 = add i64 %2, 7
  %21 = and i64 %20, -8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %21
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %26 = load i32, ptr %25, align 8, !tbaa !325
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = icmp ugt ptr %24, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19, %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %33, align 8, !tbaa !51
  br label %82

34:                                               ; preds = %28
  store ptr %24, ptr %22, align 8, !tbaa !52
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %24, ptr %35, align 8, !tbaa !53
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %24, ptr %36, align 8, !tbaa !54
  %37 = icmp eq ptr %23, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %34
  store ptr %23, ptr %0, align 8, !tbaa !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %39

39:                                               ; preds = %38, %18
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %40, align 8, !tbaa !266
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %41, align 8, !tbaa !294
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8704
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %47 = load i32, ptr %46, align 8, !tbaa !325
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = icmp ugt ptr %45, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %39
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %54, align 8, !tbaa !51
  br label %58

55:                                               ; preds = %49
  store ptr %45, ptr %43, align 8, !tbaa !52
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %45, ptr %56, align 8, !tbaa !53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %45, ptr %57, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi ptr [ null, %53 ], [ %44, %55 ]
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %59, ptr %60, align 8, !tbaa !326
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 6024
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %61, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store i32 0, ptr %62, align 8, !tbaa !166
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 6012
  store i32 0, ptr %63, align 4, !tbaa !167
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 6016
  store i32 0, ptr %64, align 8, !tbaa !168
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 6020
  store i32 0, ptr %65, align 4, !tbaa !169
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %67 = load i32, ptr %66, align 8, !tbaa !76
  %68 = call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %7, ptr noundef nonnull %42, ptr noundef nonnull %9, i32 noundef %67, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %72, align 4, !tbaa !44
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %73, align 8, !tbaa !45
  %74 = load ptr, ptr %0, align 8, !tbaa !293
  %75 = load i64, ptr %40, align 8, !tbaa !266
  %76 = load ptr, ptr %60, align 8, !tbaa !326
  %77 = call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef nonnull %71, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %42, ptr noundef nonnull %5, ptr noundef %74, i64 noundef %75, i32 noundef %4, i32 noundef 1, i32 noundef 1, ptr noundef %76)
  %78 = icmp ult i64 %77, -119
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = trunc nuw i64 %77 to i32
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  store i32 %80, ptr %81, align 8, !tbaa !279
  br label %82

82:                                               ; preds = %79, %70, %34, %32, %58
  %83 = phi i64 [ %68, %58 ], [ -64, %32 ], [ -64, %34 ], [ %77, %70 ], [ 0, %79 ]
  ret i64 %83
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCDict(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6048
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 6056
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %3, %11
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %17 = icmp eq ptr %9, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %5, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  tail call void %5(ptr noundef %7, ptr noundef nonnull %9) #30
  br label %21

21:                                               ; preds = %15, %20
  br i1 %16, label %23, label %27

22:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %9) #30
  br i1 %16, label %26, label %27

23:                                               ; preds = %21
  %24 = icmp eq ptr %5, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %5(ptr noundef %7, ptr noundef nonnull %0) #30
  br label %27

26:                                               ; preds = %22, %23
  tail call void @free(ptr noundef nonnull %0) #30
  br label %27

27:                                               ; preds = %21, %22, %25, %26, %1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #30
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !74
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 3, i32 %2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 6068
  store i32 %13, ptr %14, align 4, !tbaa !268
  br label %15

15:                                               ; preds = %11, %3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_byReference(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #30
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !74
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 3, i32 %2
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 6068
  store i32 %13, ptr %14, align 4, !tbaa !268
  br label %15

15:                                               ; preds = %11, %3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  %13 = load i32, ptr %6, align 8
  %14 = icmp ugt i32 %13, 14
  %15 = select i1 %14, i32 1, i32 2
  %16 = select i1 %12, i32 2, i32 %15
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = zext nneg i32 %18 to i64
  %20 = shl i64 4, %19
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !70
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = icmp ne i32 %16, 1
  %26 = or i1 %12, %25
  %27 = add nuw i64 %24, 63
  %28 = and i64 %27, -64
  %29 = select i1 %26, i64 0, i64 %28
  %30 = shl i64 4, %23
  %31 = icmp eq i32 %4, 1
  %32 = add i64 %3, 7
  %33 = and i64 %32, -8
  %34 = add i64 %33, 14912
  %35 = select i1 %31, i64 14912, i64 %34
  %36 = add i64 %35, %20
  %37 = add i64 %36, %30
  %38 = add i64 %37, %29
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #30
  %39 = ptrtoint ptr %0 to i64
  %40 = and i64 %39, 7
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %7
  %43 = icmp samesign ult i64 %1, 6080
  %44 = icmp eq ptr %0, null
  %45 = or i1 %44, %43
  br i1 %45, label %74, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %49 = ptrtoint ptr %47 to i64
  %50 = and i64 %49, 63
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, ptr %47, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %53, align 8, !tbaa !48
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %47, ptr %54, align 8, !tbaa !48
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %48, ptr %55, align 8, !tbaa !48
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %48, ptr %56, align 8, !tbaa !48
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %48, ptr %57, align 8, !tbaa !48
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %52, ptr %58, align 8, !tbaa !48
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %52, ptr %59, align 8, !tbaa !48
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %60, align 8, !tbaa !196
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %61, align 4, !tbaa !49
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %62, align 8, !tbaa !49
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %63, align 4, !tbaa !49
  %64 = icmp ult i64 %1, %38
  br i1 %64, label %74, label %65

65:                                               ; preds = %46
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, i8 0, i64 224, i1 false)
  store i32 1, ptr %66, align 8, !tbaa !45
  %67 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %67, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false), !tbaa.struct !74
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 %16, ptr %68, align 8, !tbaa !76
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %16, ptr %69, align 8, !tbaa !270
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 6068
  store i32 0, ptr %70, align 4, !tbaa !268
  %71 = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %8)
  %72 = icmp ult i64 %71, -119
  %73 = select i1 %72, ptr %0, ptr null
  br label %74

74:                                               ; preds = %42, %65, %46, %7
  %75 = phi ptr [ null, %7 ], [ null, %46 ], [ %73, %65 ], [ null, %42 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #30
  ret ptr %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %5 = load i32, ptr %4, align 8, !tbaa !279
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %7 = alloca { i32, i32, i32, i32, i32 }, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #30
  %9 = icmp eq ptr %1, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7)
  %11 = icmp ult i64 %4, 131072
  br i1 %11, label %23, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !266
  %15 = mul i64 %14, 6
  %16 = icmp ult i64 %4, %15
  %17 = icmp eq i64 %4, -1
  %18 = or i1 %17, %16
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %21 = load i32, ptr %20, align 4, !tbaa !268
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %12, %10
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %25 = load i32, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %26, i64 20, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %28 = load i32, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %30 = load i32, ptr %29, align 4, !tbaa !268
  br label %36

31:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #30
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %21, i64 noundef %4, i64 noundef %14, i32 noundef 3), !alias.scope !327
  %32 = load i32, ptr %8, align 4, !tbaa !49
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %33, i64 20, i1 false), !tbaa.struct !125
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %35 = load i32, ptr %34, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #30
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i32 [ %30, %23 ], [ %21, %31 ]
  %38 = phi i32 [ %28, %23 ], [ %35, %31 ]
  %39 = phi i32 [ %25, %23 ], [ %32, %31 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %39, ptr %40, align 4, !tbaa !49
  %41 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %41, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !125
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %38, ptr %42, align 4, !tbaa !49
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %2, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %3, ptr %44, align 8, !tbaa !49
  %45 = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %37, ptr %45, align 4, !tbaa !44
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 160
  %47 = add i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  store i32 2, ptr %46, align 8, !tbaa !76
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 140
  %51 = icmp ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !77
  br label %62

53:                                               ; preds = %36
  %54 = icmp ugt i32 %39, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !76
  %56 = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %56, align 4, !tbaa !77
  br label %62

57:                                               ; preds = %49
  %58 = icmp ugt i32 %39, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !77
  %60 = icmp ugt i32 %39, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ 2, %53 ], [ %61, %57 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %63, ptr %64, align 8, !tbaa !78
  %65 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %65, align 8, !tbaa !79
  %66 = getelementptr inbounds nuw i8, ptr %6, i64 216
  %67 = icmp slt i32 %37, 10
  %68 = select i1 %67, i32 2, i32 1
  store i32 %68, ptr %66, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7)
  %69 = icmp eq i64 %4, -1
  br i1 %69, label %81, label %70

70:                                               ; preds = %62
  %71 = icmp ugt i64 %4, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = tail call i64 @llvm.umin.i64(i64 %4, i64 524288)
  %74 = trunc nuw nsw i64 %73 to i32
  %75 = add nsw i32 %74, -1
  %76 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %75, i1 true)
  %77 = sub nuw nsw i32 32, %76
  br label %78

78:                                               ; preds = %70, %72
  %79 = phi i32 [ %77, %72 ], [ 1, %70 ]
  %80 = tail call i32 @llvm.umax.i32(i32 %39, i32 %79)
  store i32 %80, ptr %40, align 4, !tbaa !84
  br label %81

81:                                               ; preds = %62, %78
  %82 = phi i64 [ %4, %78 ], [ -1, %62 ]
  %83 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %6, i64 noundef %82, i32 noundef 0)
  br label %84

84:                                               ; preds = %81, %5
  %85 = phi i64 [ -32, %5 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #30
  ret i64 %85
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 364
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %12 = load i32, ptr %11, align 4, !tbaa !268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %7, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %10, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %16, align 8, !tbaa !49
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %12, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %19 = add i32 %10, -6
  %20 = icmp ult i32 %19, -3
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  store i32 2, ptr %18, align 8, !tbaa !76
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %23 = icmp ugt i32 %10, 6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  store i32 2, ptr %22, align 4, !tbaa !77
  br label %34

25:                                               ; preds = %5
  %26 = icmp ugt i32 %7, 14
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %18, align 8, !tbaa !76
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 2, ptr %28, align 4, !tbaa !77
  br label %34

29:                                               ; preds = %21
  %30 = icmp ugt i32 %7, 16
  %31 = select i1 %30, i32 1, i32 2
  store i32 %31, ptr %22, align 4, !tbaa !77
  %32 = icmp ugt i32 %7, 26
  %33 = select i1 %32, i32 1, i32 2
  br label %34

34:                                               ; preds = %29, %25, %24
  %35 = phi i32 [ 2, %25 ], [ %33, %29 ], [ 2, %24 ]
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %35, ptr %36, align 8, !tbaa !78
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 131072, ptr %37, align 8, !tbaa !79
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %39 = icmp slt i32 %12, 10
  %40 = select i1 %39, i32 2, i32 1
  store i32 %40, ptr %38, align 8, !tbaa !80
  %41 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0)
  br label %42

42:                                               ; preds = %2, %34
  %43 = phi i64 [ -32, %2 ], [ %41, %34 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 364
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %12 = load i32, ptr %11, align 4, !tbaa !268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %7, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %10, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %12, ptr %16, align 4, !tbaa !44
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %18 = add i32 %10, -6
  %19 = icmp ult i32 %18, -3
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  store i32 2, ptr %17, align 8, !tbaa !76
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 140
  %22 = icmp ugt i32 %10, 6
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  store i32 2, ptr %21, align 4, !tbaa !77
  br label %33

24:                                               ; preds = %5
  %25 = icmp ugt i32 %7, 14
  %26 = select i1 %25, i32 1, i32 2
  store i32 %26, ptr %17, align 8, !tbaa !76
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 2, ptr %27, align 4, !tbaa !77
  br label %33

28:                                               ; preds = %20
  %29 = icmp ugt i32 %7, 16
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %21, align 4, !tbaa !77
  %31 = icmp ugt i32 %7, 26
  %32 = select i1 %31, i32 1, i32 2
  br label %33

33:                                               ; preds = %28, %24, %23
  %34 = phi i32 [ 2, %24 ], [ %32, %28 ], [ 2, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %34, ptr %35, align 8, !tbaa !78
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 131072, ptr %36, align 8, !tbaa !79
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %38 = icmp slt i32 %12, 10
  %39 = select i1 %38, i32 2, i32 1
  store i32 %39, ptr %37, align 8, !tbaa !80
  %40 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0)
  br label %41

41:                                               ; preds = %2, %33
  %42 = phi i64 [ -32, %2 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef readonly byval(%struct.ZSTD_frameParameters) align 8 captures(none) %6) local_unnamed_addr #2 {
  %8 = load i64, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 %8, i32 %10, i64 noundef %4)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi i64 [ %14, %13 ], [ %11, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 1, i32 0, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ %7, %6 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTD_createCStream() local_unnamed_addr #2 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
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
  store i32 %18, ptr %19, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 3, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %22, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCStream_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #2 {
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
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 5280) #30
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #31
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
  %22 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %26 = icmp ugt i32 %22, 6
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
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
  store i32 %36, ptr %37, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %38, i8 0, i64 224, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 3, ptr %39, align 4, !tbaa !44
  %40 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 1, ptr %40, align 8, !tbaa !45
  br label %41

41:                                               ; preds = %1, %15, %35
  %42 = phi ptr [ null, %1 ], [ %16, %35 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %5 = load i64, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp uge ptr %0, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr i8, ptr %0, i64 904
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i64 912
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #30
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #30
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #30
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #30
  br label %34

34:                                               ; preds = %1, %3, %27, %31, %33
  %35 = phi i64 [ 0, %1 ], [ -64, %3 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_CStreamInSize() local_unnamed_addr #0 {
  ret i64 131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 8, 7) i64 @ZSTD_CStreamOutSize() local_unnamed_addr #0 {
  ret i64 131591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_resetCStream(ptr noundef writeonly captures(none) initializes((784, 792), (3640, 3644)) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i64 %1, 0
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %6 = add i64 %1, 1
  %7 = select i1 %3, i64 0, i64 %6
  store i64 %7, ptr %5, align 8, !tbaa !115
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_internal(ptr noundef captures(none) initializes((16, 240), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %9 = add i64 %5, 1
  store i64 %9, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !113
  %11 = icmp eq ptr %1, null
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = icmp eq i64 %2, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i64 912
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr %20(ptr noundef %24, i64 noundef %2) #30
  br label %28

26:                                               ; preds = %18
  %27 = tail call noalias ptr @malloc(i64 noundef %2) #31
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %25, %22 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %29, ptr %32, align 8, !tbaa !116
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %29, ptr %33, align 8, !tbaa !117
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %34, align 8, !tbaa !118
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %35, align 8, !tbaa !119
  br label %38

36:                                               ; preds = %6
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %3, ptr %37, align 8, !tbaa !112
  br label %38

38:                                               ; preds = %28, %14, %12, %31, %36
  %39 = phi i64 [ 0, %36 ], [ 0, %31 ], [ 0, %12 ], [ -64, %14 ], [ -64, %28 ]
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict_advanced(ptr noundef captures(none) initializes((48, 60), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !81
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %8 = add i64 %4, 1
  store i64 %8, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %10, align 8, !tbaa !49
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %11, align 8, !tbaa !112
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !115
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %5, align 8, !tbaa !112
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_advanced(ptr noundef captures(none) initializes((784, 792), (3640, 3644)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i64 %4, 0
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %11, align 8, !tbaa !81
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %13 = add i64 %4, 1
  %14 = select i1 %10, i64 0, i64 %13
  store i64 %14, ptr %12, align 8, !tbaa !115
  %15 = load i32, ptr %3, align 8, !tbaa !68
  %16 = add i32 %15, -32
  %17 = icmp ult i32 %16, -22
  br i1 %17, label %76, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa !69
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -25
  br i1 %22, label %76, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %25 = load i32, ptr %24, align 8, !tbaa !70
  %26 = add i32 %25, -31
  %27 = icmp ult i32 %26, -25
  br i1 %27, label %76, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = add i32 %30, -31
  %32 = icmp ult i32 %31, -30
  br i1 %32, label %76, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = add i32 %35, -8
  %37 = icmp ult i32 %36, -5
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 131072
  %41 = select i1 %37, i1 true, i1 %40
  br i1 %41, label %76, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %44 = load i32, ptr %43, align 8, !tbaa !73
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, 9
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %48, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !74
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %49, ptr noundef nonnull readonly align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !75
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %50, align 4, !tbaa !44
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %51 = icmp eq ptr %1, null
  %52 = icmp eq i64 %2, 0
  %53 = or i1 %51, %52
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %56 = load i64, ptr %55, align 8, !tbaa !50
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %0, i64 912
  %64 = load ptr, ptr %63, align 8
  %65 = tail call ptr %60(ptr noundef %64, i64 noundef %2) #30
  br label %68

66:                                               ; preds = %58
  %67 = tail call noalias ptr @malloc(i64 noundef %2) #31
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi ptr [ %65, %62 ], [ %67, %66 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %69, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %69, ptr %72, align 8, !tbaa !116
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %69, ptr %73, align 8, !tbaa !117
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %74, align 8, !tbaa !118
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %75, align 8, !tbaa !119
  br label %76

76:                                               ; preds = %71, %68, %54, %47, %33, %28, %23, %18, %5, %42
  %77 = phi i64 [ -42, %42 ], [ -42, %5 ], [ -42, %18 ], [ -42, %23 ], [ -42, %28 ], [ -42, %33 ], [ 0, %71 ], [ 0, %47 ], [ -64, %54 ], [ -64, %68 ]
  ret i64 %77
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_usingDict(ptr noundef captures(none) initializes((60, 64), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %6, align 8, !tbaa !115
  %7 = icmp slt i32 %3, -131072
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %3, 22
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 3, i32 %3
  br label %13

13:                                               ; preds = %4, %8, %10
  %14 = phi i32 [ -131072, %4 ], [ 22, %8 ], [ %12, %10 ]
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %14, ptr %15, align 4, !tbaa !44
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = icmp eq ptr %1, null
  %17 = icmp eq i64 %2, 0
  %18 = or i1 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i64 912
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr %25(ptr noundef %29, i64 noundef %2) #30
  br label %33

31:                                               ; preds = %23
  %32 = tail call noalias ptr @malloc(i64 noundef %2) #31
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %30, %27 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %34, ptr %37, align 8, !tbaa !116
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %34, ptr %38, align 8, !tbaa !117
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %39, align 8, !tbaa !118
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 0, ptr %40, align 8, !tbaa !119
  br label %41

41:                                               ; preds = %36, %33, %19, %13
  %42 = phi i64 [ 0, %36 ], [ 0, %13 ], [ -64, %19 ], [ -64, %33 ]
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_initCStream_srcSize(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %6, align 8, !tbaa !115
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %7, align 8, !tbaa !112
  %8 = load i32, ptr %5, align 8, !tbaa !81
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %11, align 4, !tbaa !82
  br label %12

12:                                               ; preds = %3, %10
  %13 = icmp slt i32 %1, -131072
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = icmp sgt i32 %1, 22
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 3, i32 %1
  br label %19

19:                                               ; preds = %16, %14, %12
  %20 = phi i32 [ -131072, %12 ], [ 22, %14 ], [ %18, %16 ]
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %20, ptr %21, align 4, !tbaa !44
  br i1 %9, label %22, label %25

22:                                               ; preds = %19
  %23 = add i64 %2, 1
  %24 = select i1 %4, i64 0, i64 %23
  store i64 %24, ptr %6, align 8, !tbaa !115
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi i64 [ 0, %22 ], [ -60, %19 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %4, align 8, !tbaa !115
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr null, ptr %5, align 8, !tbaa !112
  %6 = load i32, ptr %3, align 8, !tbaa !81
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %9, align 4, !tbaa !82
  br label %10

10:                                               ; preds = %2, %8
  %11 = icmp slt i32 %1, -131072
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = icmp sgt i32 %1, 22
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, i32 3, i32 %1
  br label %17

17:                                               ; preds = %10, %12, %14
  %18 = phi i32 [ -131072, %10 ], [ 22, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %18, ptr %19, align 4, !tbaa !44
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #2 {
  %4 = tail call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %8 = load i32, ptr %7, align 4, !tbaa !330
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %12 = load i64, ptr %11, align 8, !tbaa !243
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %14 = load i64, ptr %13, align 8, !tbaa !331
  %15 = sub i64 %12, %14
  br label %26

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %18 = load i64, ptr %17, align 8, !tbaa !332
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %20 = load i64, ptr %19, align 8, !tbaa !155
  %21 = sub i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %25 = load i64, ptr %24, align 8, !tbaa !243
  br label %26

26:                                               ; preds = %23, %16, %10, %3
  %27 = phi i64 [ %4, %3 ], [ %15, %10 ], [ %25, %23 ], [ %21, %16 ]
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !205
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !204
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %388, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !208
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !207
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %388, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %388, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %24 = load i32, ptr %23, align 4, !tbaa !330
  br label %72

25:                                               ; preds = %18
  %26 = sub i64 %14, %12
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %28 = load i64, ptr %27, align 8, !tbaa !331
  %29 = add i64 %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %32 = load i32, ptr %31, align 4, !tbaa !209
  %33 = icmp eq i32 %32, 1
  %34 = icmp eq i32 %3, 0
  %35 = and i1 %34, %33
  %36 = icmp ult i64 %29, 131072
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %54

38:                                               ; preds = %25
  %39 = icmp eq i64 %28, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %2, align 8, !tbaa !206
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %43 = load ptr, ptr %42, align 8, !tbaa !333
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %45, label %388

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %47 = load i64, ptr %46, align 8, !tbaa !334
  %48 = icmp eq i64 %12, %47
  br i1 %48, label %49, label %388

49:                                               ; preds = %45, %38
  store i64 %14, ptr %11, align 8, !tbaa !208
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !335
  store i64 %29, ptr %27, align 8, !tbaa !331
  %51 = load i32, ptr %30, align 8, !tbaa !336
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 6, i64 2
  br label %388

54:                                               ; preds = %25
  %55 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %29)
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %388

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %59 = load i32, ptr %58, align 4, !tbaa !330
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !335
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %65 = load i32, ptr %64, align 8, !tbaa !337
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i64, ptr %7, align 8, !tbaa !204
  %69 = load i64, ptr %5, align 8, !tbaa !205
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %70, ptr %71, align 8, !tbaa !338
  br label %72

72:                                               ; preds = %22, %63, %67
  %73 = phi i32 [ %24, %22 ], [ %59, %63 ], [ %59, %67 ]
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %75 = icmp eq i32 %73, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  %79 = load ptr, ptr %2, align 8, !tbaa !206
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %388

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %83 = load i64, ptr %82, align 8, !tbaa !114
  %84 = load i64, ptr %11, align 8, !tbaa !208
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %388

86:                                               ; preds = %81, %72
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %88 = load i32, ptr %87, align 8, !tbaa !337
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i64, ptr %7, align 8, !tbaa !204
  %92 = load i64, ptr %5, align 8, !tbaa !205
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %95 = load i64, ptr %94, align 8, !tbaa !338
  %96 = icmp eq i64 %95, %93
  br i1 %96, label %97, label %388

97:                                               ; preds = %90, %86
  %98 = load ptr, ptr %2, align 8, !tbaa !206
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %13, align 8, !tbaa !207
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 %101
  %103 = load i64, ptr %11, align 8, !tbaa !208
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 %103
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi ptr [ %102, %100 ], [ null, %97 ]
  %107 = phi ptr [ %104, %100 ], [ null, %97 ]
  %108 = load ptr, ptr %1, align 8, !tbaa !202
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i64, ptr %7, align 8, !tbaa !204
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 %111
  %113 = ptrtoint ptr %112 to i64
  %114 = load i64, ptr %5, align 8, !tbaa !205
  %115 = getelementptr inbounds nuw i8, ptr %108, i64 %114
  br label %116

116:                                              ; preds = %110, %105
  %117 = phi i64 [ %113, %110 ], [ 0, %105 ]
  %118 = phi ptr [ %115, %110 ], [ null, %105 ]
  br i1 %75, label %119, label %128

119:                                              ; preds = %116
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %121 = load i64, ptr %120, align 8, !tbaa !331
  %122 = load i64, ptr %11, align 8, !tbaa !208
  %123 = sub i64 %122, %121
  store i64 %123, ptr %11, align 8, !tbaa !208
  %124 = icmp eq ptr %107, null
  %125 = sub i64 0, %121
  %126 = getelementptr inbounds i8, ptr %107, i64 %125
  %127 = select i1 %124, ptr null, ptr %126
  store i64 0, ptr %120, align 8, !tbaa !331
  br label %128

128:                                              ; preds = %119, %116
  %129 = phi ptr [ %127, %119 ], [ %107, %116 ]
  %130 = icmp eq i32 %3, 2
  %131 = ptrtoint ptr %106 to i64
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %145

145:                                              ; preds = %341, %128
  %146 = phi ptr [ %129, %128 ], [ %342, %341 ]
  %147 = phi ptr [ %118, %128 ], [ %343, %341 ]
  %148 = load i32, ptr %19, align 8, !tbaa !81
  br label %149

149:                                              ; preds = %145, %149
  switch i32 %148, label %149 [
    i32 0, label %388
    i32 1, label %153
    i32 2, label %150
  ], !llvm.loop !339

150:                                              ; preds = %149
  %151 = load i64, ptr %142, align 8, !tbaa !340
  %152 = load i64, ptr %143, align 8, !tbaa !341
  br label %318

153:                                              ; preds = %149
  br i1 %130, label %154, label %185

154:                                              ; preds = %153
  %155 = ptrtoint ptr %147 to i64
  %156 = sub i64 %117, %155
  %157 = ptrtoint ptr %146 to i64
  %158 = sub i64 %131, %157
  %159 = icmp ugt i64 %158, -71777214294589697
  br i1 %159, label %170, label %160

160:                                              ; preds = %154
  %161 = lshr i64 %158, 8
  %162 = add nuw i64 %161, %158
  %163 = icmp ult i64 %158, 131072
  %164 = sub nuw nsw i64 131072, %158
  %165 = lshr i64 %164, 11
  %166 = select i1 %163, i64 %165, i64 0
  %167 = add i64 %162, %166
  %168 = freeze i64 %167
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160, %154
  br label %171

171:                                              ; preds = %170, %160
  %172 = phi i64 [ -72, %170 ], [ %168, %160 ]
  %173 = icmp ult i64 %156, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, ptr %87, align 8, !tbaa !337
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %174, %171
  %178 = load i64, ptr %132, align 8, !tbaa !155
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %147, i64 noundef %156, ptr noundef %146, i64 noundef %158)
  %182 = icmp ult i64 %181, -119
  br i1 %182, label %183, label %388

183:                                              ; preds = %180
  %184 = getelementptr inbounds nuw i8, ptr %147, i64 %181
  store i32 1, ptr %140, align 4, !tbaa !342
  store i32 0, ptr %19, align 8, !tbaa !81
  store i64 0, ptr %144, align 8, !tbaa !115
  br label %344

185:                                              ; preds = %177, %174, %153
  %186 = load i32, ptr %74, align 4, !tbaa !330
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %185
  %189 = load i64, ptr %135, align 8, !tbaa !332
  %190 = load i64, ptr %132, align 8, !tbaa !155
  %191 = sub i64 %189, %190
  %192 = ptrtoint ptr %146 to i64
  %193 = sub i64 %131, %192
  %194 = tail call i64 @llvm.umin.i64(i64 %191, i64 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %188
  %197 = load ptr, ptr %136, align 8, !tbaa !154
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 %190
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %198, ptr readonly align 1 %146, i64 %194, i1 false)
  %199 = load i64, ptr %132, align 8, !tbaa !155
  br label %200

200:                                              ; preds = %196, %188
  %201 = phi i64 [ %190, %188 ], [ %199, %196 ]
  %202 = add i64 %201, %194
  store i64 %202, ptr %132, align 8, !tbaa !155
  %203 = icmp eq ptr %146, null
  %204 = getelementptr inbounds nuw i8, ptr %146, i64 %194
  %205 = select i1 %203, ptr null, ptr %204
  switch i32 %3, label %224 [
    i32 0, label %206
    i32 1, label %209
  ]

206:                                              ; preds = %200
  %207 = load i64, ptr %135, align 8, !tbaa !332
  %208 = icmp ult i64 %202, %207
  br i1 %208, label %344, label %224

209:                                              ; preds = %200
  %210 = load i64, ptr %137, align 8, !tbaa !156
  %211 = icmp eq i64 %202, %210
  br i1 %211, label %344, label %224

212:                                              ; preds = %185
  switch i32 %3, label %221 [
    i32 0, label %213
    i32 1, label %219
  ]

213:                                              ; preds = %212
  %214 = ptrtoint ptr %146 to i64
  %215 = sub i64 %131, %214
  %216 = load i64, ptr %133, align 8, !tbaa !243
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  store i64 %215, ptr %134, align 8, !tbaa !331
  br label %344

219:                                              ; preds = %212
  %220 = icmp eq ptr %146, %106
  br i1 %220, label %344, label %221

221:                                              ; preds = %219, %212
  %222 = ptrtoint ptr %147 to i64
  %223 = sub i64 %117, %222
  br label %234

224:                                              ; preds = %213, %209, %206, %200
  %225 = phi ptr [ %205, %206 ], [ %205, %200 ], [ %205, %209 ], [ %146, %213 ]
  %226 = load i32, ptr %74, align 4, !tbaa !330
  %227 = icmp eq i32 %226, 0
  %228 = ptrtoint ptr %147 to i64
  %229 = sub i64 %117, %228
  br i1 %227, label %230, label %234

230:                                              ; preds = %224
  %231 = load i64, ptr %132, align 8, !tbaa !155
  %232 = load i64, ptr %137, align 8, !tbaa !156
  %233 = sub i64 %231, %232
  br label %241

234:                                              ; preds = %224, %221
  %235 = phi i64 [ %223, %221 ], [ %229, %224 ]
  %236 = phi ptr [ %146, %221 ], [ %225, %224 ]
  %237 = ptrtoint ptr %236 to i64
  %238 = sub i64 %131, %237
  %239 = load i64, ptr %133, align 8, !tbaa !243
  %240 = tail call i64 @llvm.umin.i64(i64 %238, i64 %239)
  br label %241

241:                                              ; preds = %234, %230
  %242 = phi i64 [ %229, %230 ], [ %235, %234 ]
  %243 = phi i1 [ true, %230 ], [ false, %234 ]
  %244 = phi ptr [ %225, %230 ], [ %236, %234 ]
  %245 = phi i64 [ %233, %230 ], [ %240, %234 ]
  %246 = icmp ugt i64 %245, -71777214294589697
  br i1 %246, label %257, label %247

247:                                              ; preds = %241
  %248 = lshr i64 %245, 8
  %249 = add nuw i64 %248, %245
  %250 = icmp ult i64 %245, 131072
  %251 = sub nuw nsw i64 131072, %245
  %252 = lshr i64 %251, 11
  %253 = select i1 %250, i64 %252, i64 0
  %254 = add i64 %249, %253
  %255 = freeze i64 %254
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %247, %241
  br label %258

258:                                              ; preds = %257, %247
  %259 = phi i64 [ -72, %257 ], [ %255, %247 ]
  %260 = icmp ult i64 %242, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load i32, ptr %87, align 8, !tbaa !337
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load ptr, ptr %138, align 8, !tbaa !343
  %266 = load i64, ptr %139, align 8, !tbaa !301
  br label %267

267:                                              ; preds = %264, %261, %258
  %268 = phi i64 [ %266, %264 ], [ %242, %261 ], [ %242, %258 ]
  %269 = phi ptr [ %265, %264 ], [ %147, %261 ], [ %147, %258 ]
  br i1 %243, label %270, label %293

270:                                              ; preds = %267
  %271 = icmp eq ptr %244, %106
  %272 = select i1 %130, i1 %271, i1 false
  %273 = zext i1 %272 to i32
  %274 = load ptr, ptr %136, align 8, !tbaa !154
  %275 = load i64, ptr %137, align 8, !tbaa !156
  %276 = getelementptr inbounds nuw i8, ptr %274, i64 %275
  br i1 %272, label %277, label %279

277:                                              ; preds = %270
  %278 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %276, i64 noundef %245)
  br label %281

279:                                              ; preds = %270
  %280 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %276, i64 noundef %245, i32 noundef 1, i32 noundef 0)
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i64 [ %278, %277 ], [ %280, %279 ]
  %283 = icmp ult i64 %282, -119
  br i1 %283, label %284, label %388

284:                                              ; preds = %281
  store i32 %273, ptr %140, align 4, !tbaa !342
  %285 = load i64, ptr %132, align 8, !tbaa !155
  %286 = load i64, ptr %133, align 8, !tbaa !243
  %287 = add i64 %286, %285
  store i64 %287, ptr %135, align 8, !tbaa !332
  %288 = load i64, ptr %141, align 8, !tbaa !300
  %289 = icmp ugt i64 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  store i64 0, ptr %132, align 8, !tbaa !155
  store i64 %286, ptr %135, align 8, !tbaa !332
  br label %291

291:                                              ; preds = %290, %284
  %292 = phi i64 [ %285, %284 ], [ 0, %290 ]
  store i64 %292, ptr %137, align 8, !tbaa !156
  br label %308

293:                                              ; preds = %267
  %294 = getelementptr inbounds nuw i8, ptr %244, i64 %245
  %295 = icmp eq ptr %294, %106
  %296 = select i1 %130, i1 %295, i1 false
  %297 = zext i1 %296 to i32
  br i1 %296, label %298, label %300

298:                                              ; preds = %293
  %299 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %244, i64 noundef %245)
  br label %302

300:                                              ; preds = %293
  %301 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %269, i64 noundef %268, ptr noundef %244, i64 noundef %245, i32 noundef 1, i32 noundef 0)
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i64 [ %299, %298 ], [ %301, %300 ]
  %304 = icmp ult i64 %303, -119
  br i1 %304, label %305, label %388

305:                                              ; preds = %302
  %306 = icmp eq ptr %244, null
  %307 = select i1 %306, ptr null, ptr %294
  store i32 %297, ptr %140, align 4, !tbaa !342
  br label %308

308:                                              ; preds = %305, %291
  %309 = phi i32 [ %273, %291 ], [ %297, %305 ]
  %310 = phi i64 [ %282, %291 ], [ %303, %305 ]
  %311 = phi ptr [ %244, %291 ], [ %307, %305 ]
  %312 = icmp eq ptr %269, %147
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = getelementptr inbounds nuw i8, ptr %147, i64 %310
  %315 = icmp eq i32 %309, 0
  br i1 %315, label %341, label %316

316:                                              ; preds = %313
  store i32 0, ptr %19, align 8, !tbaa !81
  store i64 0, ptr %144, align 8, !tbaa !115
  br label %344

317:                                              ; preds = %308
  store i64 %310, ptr %142, align 8, !tbaa !340
  store i64 0, ptr %143, align 8, !tbaa !341
  store i32 2, ptr %19, align 8, !tbaa !81
  br label %318

318:                                              ; preds = %317, %150
  %319 = phi i64 [ 0, %317 ], [ %152, %150 ]
  %320 = phi i64 [ %310, %317 ], [ %151, %150 ]
  %321 = phi ptr [ %311, %317 ], [ %146, %150 ]
  %322 = sub i64 %320, %319
  %323 = ptrtoint ptr %147 to i64
  %324 = sub i64 %117, %323
  %325 = tail call i64 @llvm.umin.i64(i64 %324, i64 %322)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %318
  %328 = load ptr, ptr %138, align 8, !tbaa !343
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 %319
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr readonly align 1 %329, i64 %325, i1 false)
  %330 = load i64, ptr %143, align 8, !tbaa !341
  br label %331

331:                                              ; preds = %327, %318
  %332 = phi i64 [ %319, %318 ], [ %330, %327 ]
  %333 = getelementptr inbounds nuw i8, ptr %147, i64 %325
  %334 = add i64 %332, %325
  store i64 %334, ptr %143, align 8, !tbaa !341
  %335 = icmp ugt i64 %322, %324
  br i1 %335, label %344, label %336

336:                                              ; preds = %331
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %142, i8 0, i64 16, i1 false)
  %337 = load i32, ptr %140, align 4, !tbaa !342
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  store i32 0, ptr %19, align 8, !tbaa !81
  store i64 0, ptr %144, align 8, !tbaa !115
  br label %344

340:                                              ; preds = %336
  store i32 1, ptr %19, align 8, !tbaa !81
  br label %341

341:                                              ; preds = %340, %313
  %342 = phi ptr [ %311, %313 ], [ %321, %340 ]
  %343 = phi ptr [ %314, %313 ], [ %333, %340 ]
  br label %145, !llvm.loop !339

344:                                              ; preds = %331, %219, %209, %206, %339, %316, %218, %183
  %345 = phi ptr [ %314, %316 ], [ %184, %183 ], [ %333, %339 ], [ %147, %218 ], [ %147, %209 ], [ %147, %206 ], [ %333, %331 ], [ %147, %219 ]
  %346 = phi ptr [ %311, %316 ], [ %106, %183 ], [ %321, %339 ], [ %106, %218 ], [ %205, %209 ], [ %205, %206 ], [ %321, %331 ], [ %106, %219 ]
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %98 to i64
  %349 = sub i64 %347, %348
  store i64 %349, ptr %11, align 8, !tbaa !208
  %350 = ptrtoint ptr %345 to i64
  %351 = ptrtoint ptr %108 to i64
  %352 = sub i64 %350, %351
  store i64 %352, ptr %5, align 8, !tbaa !205
  %353 = load i32, ptr %140, align 4, !tbaa !342
  %354 = icmp eq i32 %353, 0
  %355 = load i32, ptr %74, align 4, !tbaa !330
  br i1 %354, label %356, label %372

356:                                              ; preds = %344
  %357 = icmp eq i32 %355, 1
  br i1 %357, label %358, label %362

358:                                              ; preds = %356
  %359 = load i64, ptr %133, align 8, !tbaa !243
  %360 = load i64, ptr %134, align 8, !tbaa !331
  %361 = sub i64 %359, %360
  br label %369

362:                                              ; preds = %356
  %363 = load i64, ptr %135, align 8, !tbaa !332
  %364 = load i64, ptr %132, align 8, !tbaa !155
  %365 = sub i64 %363, %364
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load i64, ptr %133, align 8, !tbaa !243
  br label %369

369:                                              ; preds = %358, %362, %367
  %370 = phi i64 [ %361, %358 ], [ %368, %367 ], [ %365, %362 ]
  %371 = icmp ult i64 %370, -119
  br i1 %371, label %372, label %388

372:                                              ; preds = %344, %369
  %373 = icmp eq i32 %355, 1
  br i1 %373, label %374, label %376

374:                                              ; preds = %372
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %375, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !335
  br label %376

376:                                              ; preds = %374, %372
  %377 = load i32, ptr %87, align 8, !tbaa !337
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = load i64, ptr %7, align 8, !tbaa !204
  %381 = load i64, ptr %5, align 8, !tbaa !205
  %382 = sub i64 %380, %381
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %382, ptr %383, align 8, !tbaa !338
  br label %384

384:                                              ; preds = %376, %379
  %385 = load i64, ptr %142, align 8, !tbaa !340
  %386 = load i64, ptr %143, align 8, !tbaa !341
  %387 = sub i64 %385, %386
  br label %388

388:                                              ; preds = %149, %302, %281, %180, %81, %76, %90, %45, %40, %54, %49, %369, %16, %10, %4, %384
  %389 = phi i64 [ %387, %384 ], [ %370, %369 ], [ -70, %4 ], [ -72, %10 ], [ -42, %16 ], [ -50, %45 ], [ -50, %40 ], [ %55, %54 ], [ %53, %49 ], [ -50, %90 ], [ -50, %76 ], [ -50, %81 ], [ %181, %180 ], [ -62, %149 ], [ %303, %302 ], [ %282, %281 ]
  ret i64 %389
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i64 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #30
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %6, i64 224, i1 false), !tbaa.struct !113
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %10 = load i64, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %14 = load ptr, ptr %13, align 8, !tbaa !344
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %18 = load ptr, ptr %17, align 8, !tbaa !345
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %22 = load i64, ptr %21, align 8, !tbaa !346
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %24 = load i32, ptr %23, align 8, !tbaa !347
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %26 = tail call ptr @ZSTD_createCDict_advanced2(ptr noundef nonnull %14, i64 noundef %22, i32 noundef 1, i32 noundef %24, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %25)
  store ptr %26, ptr %17, align 8, !tbaa !345
  %27 = icmp eq ptr %26, null
  br i1 %27, label %175, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %26, ptr %29, align 8, !tbaa !112
  br label %30

30:                                               ; preds = %28, %3, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %32 = load ptr, ptr %31, align 8, !tbaa !112
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %36 = load ptr, ptr %35, align 8, !tbaa !120
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 6068
  %40 = load i32, ptr %39, align 4, !tbaa !268
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %40, ptr %41, align 4, !tbaa !44
  br label %42

42:                                               ; preds = %30, %34, %38
  %43 = icmp eq i32 %1, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = add i64 %2, 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %45, ptr %46, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %44, %42
  %48 = icmp eq ptr %8, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  br i1 %33, label %50, label %54

50:                                               ; preds = %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %52 = load i64, ptr %51, align 8, !tbaa !115
  %53 = add i64 %52, -1
  br label %96

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !266
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %58 = load i64, ptr %57, align 8, !tbaa !115
  %59 = add i64 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %63 = load i32, ptr %62, align 4
  br label %72

64:                                               ; preds = %47
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %66 = load i64, ptr %65, align 8, !tbaa !115
  %67 = add i64 %66, -1
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %71 = load i32, ptr %70, align 4
  br i1 %33, label %96, label %72

72:                                               ; preds = %54, %64
  %73 = phi i32 [ %63, %54 ], [ %71, %64 ]
  %74 = phi i32 [ %61, %54 ], [ %69, %64 ]
  %75 = phi i64 [ %59, %54 ], [ %67, %64 ]
  %76 = phi i64 [ %56, %54 ], [ %10, %64 ]
  %77 = getelementptr inbounds nuw i8, ptr %32, i64 244
  %78 = load i32, ptr %77, align 4, !tbaa !269
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %72
  %81 = getelementptr inbounds nuw i8, ptr %32, i64 384
  %82 = load i32, ptr %81, align 8, !tbaa !348
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw [10 x i64], ptr @attachDictSizeCutoffs, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !114
  %86 = icmp ule i64 %75, %85
  %87 = icmp eq i64 %75, -1
  %88 = or i1 %87, %86
  %89 = icmp eq i32 %74, 0
  br i1 %88, label %93, label %90

90:                                               ; preds = %80
  %91 = icmp eq i32 %73, 1
  %92 = select i1 %91, i1 %89, i1 false
  br i1 %92, label %99, label %96

93:                                               ; preds = %80
  %94 = icmp ne i32 %73, 2
  %95 = select i1 %94, i1 %89, i1 false
  br i1 %95, label %99, label %96

96:                                               ; preds = %50, %93, %90, %64
  %97 = phi i64 [ %53, %50 ], [ %75, %93 ], [ %75, %90 ], [ %67, %64 ]
  %98 = phi i64 [ 0, %50 ], [ %76, %93 ], [ %76, %90 ], [ %10, %64 ]
  br label %99

99:                                               ; preds = %72, %90, %93, %96
  %100 = phi i64 [ %97, %96 ], [ %75, %72 ], [ %75, %90 ], [ %75, %93 ]
  %101 = phi i64 [ %98, %96 ], [ %76, %72 ], [ %76, %90 ], [ %76, %93 ]
  %102 = phi i32 [ 0, %96 ], [ 1, %72 ], [ 1, %90 ], [ 1, %93 ]
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %5, ptr noundef nonnull %4, i64 noundef %100, i64 noundef %101, i32 noundef %102)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %103, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #30
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 140
  %105 = load i32, ptr %104, align 4, !tbaa !77
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %109 = load i32, ptr %108, align 4, !tbaa !73
  %110 = icmp ugt i32 %109, 6
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, ptr %103, align 4, !tbaa !68
  %113 = icmp ugt i32 %112, 16
  %114 = select i1 %113, i32 1, i32 2
  br label %115

115:                                              ; preds = %99, %107, %111
  %116 = phi i32 [ %105, %99 ], [ 2, %107 ], [ %114, %111 ]
  store i32 %116, ptr %104, align 4, !tbaa !77
  %117 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %118 = load i32, ptr %117, align 8, !tbaa !78
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %122 = load i32, ptr %121, align 4, !tbaa !73
  %123 = icmp ugt i32 %122, 6
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, ptr %103, align 4, !tbaa !68
  %126 = icmp ugt i32 %125, 26
  %127 = select i1 %126, i32 1, i32 2
  br label %128

128:                                              ; preds = %115, %120, %124
  %129 = phi i32 [ %118, %115 ], [ 2, %120 ], [ %127, %124 ]
  store i32 %129, ptr %117, align 8, !tbaa !78
  %130 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %131 = load i32, ptr %130, align 8, !tbaa !76
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %135 = load i32, ptr %134, align 4, !tbaa !73
  %136 = add i32 %135, -6
  %137 = icmp ult i32 %136, -3
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %103, align 4, !tbaa !68
  %140 = icmp ugt i32 %139, 14
  %141 = select i1 %140, i32 1, i32 2
  br label %142

142:                                              ; preds = %128, %133, %138
  %143 = phi i32 [ %141, %138 ], [ %131, %128 ], [ 2, %133 ]
  store i32 %143, ptr %130, align 8, !tbaa !76
  %144 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %145 = load i64, ptr %144, align 8, !tbaa !79
  %146 = icmp eq i64 %145, 0
  %147 = select i1 %146, i64 131072, i64 %145
  store i64 %147, ptr %144, align 8, !tbaa !79
  %148 = getelementptr inbounds nuw i8, ptr %4, i64 216
  %149 = load i32, ptr %148, align 8, !tbaa !80
  %150 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %151 = load i32, ptr %150, align 4, !tbaa !44
  %152 = icmp eq i32 %149, 0
  %153 = icmp slt i32 %151, 10
  %154 = select i1 %153, i32 2, i32 1
  %155 = select i1 %152, i32 %154, i32 %149
  store i32 %155, ptr %148, align 8, !tbaa !80
  %156 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef nonnull %0, ptr noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef %32, ptr noundef nonnull %4, i64 noundef %100, i32 noundef 1)
  %157 = icmp ult i64 %156, -119
  br i1 %157, label %158, label %175

158:                                              ; preds = %142
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, i8 0, i64 16, i1 false)
  %161 = load i32, ptr %160, align 4, !tbaa !330
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %165 = load i64, ptr %164, align 8, !tbaa !243
  %166 = icmp eq i64 %165, %100
  %167 = zext i1 %166 to i64
  %168 = add i64 %165, %167
  br label %169

169:                                              ; preds = %158, %163
  %170 = phi i64 [ %168, %163 ], [ 0, %158 ]
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  store i64 %170, ptr %171, align 8, !tbaa !332
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %172, i8 0, i64 16, i1 false)
  store i32 1, ptr %173, align 8, !tbaa !81
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  store i32 0, ptr %174, align 4, !tbaa !342
  br label %175

175:                                              ; preds = %169, %142, %20
  %176 = phi i64 [ -64, %20 ], [ %156, %142 ], [ 0, %169 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  ret i64 %176
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 8
  %10 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #30
  store ptr %1, ptr %9, align 8, !tbaa !202
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %11, align 8, !tbaa !204
  %12 = load i64, ptr %3, align 8, !tbaa !114
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %12, ptr %13, align 8, !tbaa !205
  store ptr %4, ptr %10, align 8, !tbaa !206
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %5, ptr %14, align 8, !tbaa !207
  %15 = load i64, ptr %6, align 8, !tbaa !114
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %15, ptr %16, align 8, !tbaa !208
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %7)
  %18 = load i64, ptr %13, align 8, !tbaa !205
  store i64 %18, ptr %3, align 8, !tbaa !114
  %19 = load i64, ptr %16, align 8, !tbaa !208
  store i64 %19, ptr %6, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #30
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_SequencePosition, align 8
  %9 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %6)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %251

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %14 = load i32, ptr %13, align 8, !tbaa !184
  %15 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %12, i64 noundef %6, i32 noundef %14)
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 %15
  %17 = sub i64 %2, %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %19 = load i32, ptr %18, align 4, !tbaa !245
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i64 %6, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %25 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %24, ptr noundef captures(none) %5, i64 noundef %6) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %27 = load i32, ptr %26, align 4, !tbaa !349
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  br label %41

30:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %32 = load i32, ptr %31, align 4, !tbaa !349
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  %35 = icmp eq i64 %6, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = icmp ugt i64 %17, 3
  br i1 %37, label %38, label %231

38:                                               ; preds = %36
  store i32 1, ptr %16, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  %39 = add nsw i64 %15, 3
  %40 = add i64 %17, -3
  br label %238

41:                                               ; preds = %23, %30
  %42 = phi ptr [ %29, %23 ], [ %34, %30 ]
  %43 = phi ptr [ %26, %23 ], [ %31, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %58

58:                                               ; preds = %223, %41
  %59 = phi i64 [ %17, %41 ], [ %226, %223 ]
  %60 = phi i64 [ 0, %41 ], [ %225, %223 ]
  %61 = phi i64 [ %6, %41 ], [ %227, %223 ]
  %62 = phi ptr [ %5, %41 ], [ %228, %223 ]
  %63 = phi ptr [ %16, %41 ], [ %229, %223 ]
  %64 = load i32, ptr %43, align 4, !tbaa !349
  %65 = load i64, ptr %44, align 8, !tbaa !243
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %58
  %68 = load i64, ptr %8, align 8
  %69 = and i64 %68, 4294967295
  %70 = icmp ult i64 %69, %4
  br i1 %70, label %74, label %231

71:                                               ; preds = %74
  %72 = add i64 %75, 1
  %73 = icmp eq i64 %72, %4
  br i1 %73, label %231, label %74, !llvm.loop !350

74:                                               ; preds = %67, %71
  %75 = phi i64 [ %72, %71 ], [ %69, %67 ]
  %76 = phi i64 [ %86, %71 ], [ 0, %67 ]
  %77 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %3, i64 %75
  %78 = load i32, ptr %77, align 4, !tbaa !212
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %81 = load i32, ptr %80, align 4, !tbaa !215
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %83 = load i32, ptr %82, align 4, !tbaa !214
  %84 = add i32 %83, %81
  %85 = zext i32 %84 to i64
  %86 = add i64 %76, %85
  br i1 %79, label %87, label %71

87:                                               ; preds = %74
  %88 = icmp eq i32 %83, 0
  %89 = select i1 %88, i64 %86, i64 -107
  %90 = icmp ult i64 %89, -119
  br i1 %90, label %91, label %231

91:                                               ; preds = %87
  %92 = icmp ugt i64 %89, %65
  %93 = icmp ugt i64 %89, %61
  %94 = or i1 %92, %93
  br i1 %94, label %231, label %95

95:                                               ; preds = %91
  %96 = icmp eq i64 %89, %61
  br label %101

97:                                               ; preds = %58
  %98 = call i64 @llvm.umin.i64(i64 range(i64 1, 0) %61, i64 %65)
  %99 = icmp ule i64 %61, %65
  %100 = icmp ult i64 %98, -119
  br i1 %100, label %101, label %231

101:                                              ; preds = %97, %95
  %102 = phi i1 [ %96, %95 ], [ %99, %97 ]
  %103 = phi i64 [ %86, %95 ], [ %98, %97 ]
  %104 = zext i1 %102 to i32
  %105 = load ptr, ptr %46, align 8, !tbaa !200
  store ptr %105, ptr %47, align 8, !tbaa !201
  %106 = load ptr, ptr %45, align 8, !tbaa !186
  store ptr %106, ptr %48, align 8, !tbaa !190
  store i32 0, ptr %49, align 8, !tbaa !198
  %107 = load i32, ptr %50, align 8, !tbaa !351
  %108 = call i64 %42(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, i64 noundef %4, ptr noundef %62, i64 noundef %103, i32 noundef %107) #30, !callees !352
  %109 = icmp ult i64 %108, -119
  br i1 %109, label %110, label %231

110:                                              ; preds = %101
  %111 = icmp ult i64 %108, 7
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = add nuw nsw i64 %108, 3
  %114 = icmp ugt i64 %113, %59
  br i1 %114, label %231, label %115

115:                                              ; preds = %112
  %116 = trunc nuw nsw i64 %108 to i32
  %117 = shl nuw nsw i32 %116, 3
  %118 = or disjoint i32 %117, %104
  %119 = trunc nuw nsw i32 %118 to i16
  store i16 %119, ptr %63, align 1, !tbaa !231
  %120 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 0, ptr %120, align 1, !tbaa !196
  %121 = getelementptr inbounds nuw i8, ptr %63, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %121, ptr readonly align 1 %62, i64 %108, i1 false)
  %122 = add i64 %113, %60
  br label %223, !llvm.loop !353

123:                                              ; preds = %110
  %124 = icmp ult i64 %59, 3
  br i1 %124, label %231, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %51, align 8, !tbaa !55
  %127 = load ptr, ptr %52, align 8, !tbaa !56
  %128 = getelementptr inbounds nuw i8, ptr %63, i64 3
  %129 = add i64 %59, -3
  %130 = load ptr, ptr %53, align 8, !tbaa !57
  %131 = load i64, ptr %54, align 8, !tbaa !58
  %132 = load i32, ptr %55, align 8, !tbaa !8
  %133 = load ptr, ptr %46, align 8, !tbaa !200
  %134 = load ptr, ptr %47, align 8, !tbaa !201
  %135 = ptrtoint ptr %134 to i64
  %136 = ptrtoint ptr %133 to i64
  %137 = sub i64 %135, %136
  %138 = call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %128, i64 noundef %129, ptr noundef %133, i64 noundef %137, ptr noundef nonnull readonly %45, ptr noundef %126, ptr noundef %127, ptr noundef nonnull readonly %12, ptr noundef %130, i64 noundef %131, i32 noundef %132)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %125
  %141 = icmp eq i64 %138, -70
  %142 = icmp ule i64 %108, %129
  %143 = and i1 %142, %141
  br i1 %143, label %156, label %144

144:                                              ; preds = %140
  %145 = icmp ult i64 %138, -119
  br i1 %145, label %146, label %231

146:                                              ; preds = %144
  %147 = load i32, ptr %56, align 4, !tbaa !90
  %148 = call i32 @llvm.umax.i32(i32 %147, i32 7)
  %149 = add i32 %148, -1
  %150 = zext nneg i32 %149 to i64
  %151 = lshr i64 %108, %150
  %152 = add i64 %108, -2
  %153 = sub i64 %152, %151
  %154 = icmp ult i64 %138, %153
  %155 = select i1 %154, i64 %138, i64 0
  br label %156

156:                                              ; preds = %146, %140, %125
  %157 = phi i64 [ %155, %146 ], [ 0, %140 ], [ 0, %125 ]
  %158 = load i32, ptr %57, align 8, !tbaa !249
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load ptr, ptr %48, align 8, !tbaa !190
  %162 = load ptr, ptr %45, align 8, !tbaa !186
  %163 = ptrtoint ptr %161 to i64
  %164 = ptrtoint ptr %162 to i64
  %165 = sub i64 %163, %164
  %166 = load ptr, ptr %47, align 8, !tbaa !201
  %167 = load ptr, ptr %46, align 8, !tbaa !200
  %168 = ptrtoint ptr %166 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  %171 = icmp ugt i64 %165, 31
  %172 = icmp ugt i64 %170, 9
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %160
  %175 = call fastcc i32 @ZSTD_isRLE(ptr noundef %62, i64 noundef %108)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174, %160, %156
  switch i64 %157, label %202 [
    i64 0, label %178
    i64 1, label %190
  ]

178:                                              ; preds = %177
  %179 = add nuw i64 %108, 3
  %180 = icmp ugt i64 %179, %59
  br i1 %180, label %231, label %181

181:                                              ; preds = %178
  %182 = trunc i64 %108 to i32
  %183 = shl i32 %182, 3
  %184 = or disjoint i32 %183, %104
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %63, align 1, !tbaa !231
  %186 = lshr i32 %183, 16
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %187, ptr %188, align 1, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %128, ptr readonly align 1 %62, i64 %108, i1 false)
  %189 = icmp ult i64 %108, -122
  br i1 %189, label %219, label %231

190:                                              ; preds = %177, %174
  %191 = icmp eq i64 %59, 3
  br i1 %191, label %231, label %192

192:                                              ; preds = %190
  %193 = load i8, ptr %62, align 1, !tbaa !196
  %194 = trunc i64 %108 to i32
  %195 = shl i32 %194, 3
  %196 = or disjoint i32 %195, %104
  %197 = trunc i32 %196 to i16
  %198 = or disjoint i16 %197, 2
  store i16 %198, ptr %63, align 1, !tbaa !231
  %199 = lshr i32 %195, 16
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %200, ptr %201, align 1, !tbaa !196
  store i8 %193, ptr %128, align 1, !tbaa !196
  br label %219

202:                                              ; preds = %177
  %203 = load ptr, ptr %51, align 8, !tbaa !354
  %204 = load ptr, ptr %52, align 8, !tbaa !355
  store ptr %204, ptr %51, align 8, !tbaa !354
  store ptr %203, ptr %52, align 8, !tbaa !355
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 5604
  %206 = load i32, ptr %205, align 4, !tbaa !167
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  store i32 1, ptr %205, align 4, !tbaa !167
  br label %209

209:                                              ; preds = %208, %202
  %210 = select i1 %102, i32 5, i32 4
  %211 = trunc i64 %157 to i32
  %212 = shl i32 %211, 3
  %213 = or disjoint i32 %212, %210
  %214 = trunc i32 %213 to i16
  store i16 %214, ptr %63, align 1, !tbaa !231
  %215 = lshr i32 %212, 16
  %216 = trunc i32 %215 to i8
  %217 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %216, ptr %217, align 1, !tbaa !196
  %218 = add nuw i64 %157, 3
  br label %219

219:                                              ; preds = %209, %192, %181
  %220 = phi i64 [ %179, %181 ], [ %218, %209 ], [ 4, %192 ]
  %221 = add i64 %220, %60
  br i1 %102, label %233, label %222

222:                                              ; preds = %219
  store i32 0, ptr %57, align 8, !tbaa !249
  br label %223

223:                                              ; preds = %222, %115
  %224 = phi i64 [ %113, %115 ], [ %220, %222 ]
  %225 = phi i64 [ %122, %115 ], [ %221, %222 ]
  %226 = sub i64 %59, %224
  %227 = sub i64 %61, %108
  %228 = getelementptr inbounds nuw i8, ptr %62, i64 %108
  %229 = getelementptr inbounds nuw i8, ptr %63, i64 %224
  %230 = icmp eq i64 %227, 0
  br i1 %230, label %233, label %58

231:                                              ; preds = %181, %101, %97, %123, %178, %87, %91, %67, %112, %144, %190, %71, %36
  %232 = phi i64 [ -70, %36 ], [ -107, %71 ], [ %179, %181 ], [ %108, %101 ], [ %98, %97 ], [ -70, %123 ], [ -70, %178 ], [ %89, %87 ], [ -107, %91 ], [ -107, %67 ], [ -70, %112 ], [ %138, %144 ], [ -70, %190 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  br label %251

233:                                              ; preds = %219, %223
  %234 = phi i64 [ %225, %223 ], [ %221, %219 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  %235 = icmp ult i64 %234, -119
  %236 = add i64 %234, %15
  %237 = sub i64 %17, %234
  br i1 %235, label %238, label %251

238:                                              ; preds = %38, %233
  %239 = phi i64 [ %40, %38 ], [ %237, %233 ]
  %240 = phi i64 [ %39, %38 ], [ %236, %233 ]
  %241 = load i32, ptr %18, align 4, !tbaa !245
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %238
  %244 = icmp ugt i64 %239, 3
  br i1 %244, label %245, label %251

245:                                              ; preds = %243
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %247 = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %246) #34
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 %240
  store i32 %248, ptr %249, align 1, !tbaa !49
  %250 = add i64 %240, 4
  br label %251

251:                                              ; preds = %231, %245, %243, %238, %233, %7
  %252 = phi i64 [ %234, %233 ], [ %9, %7 ], [ %240, %238 ], [ %250, %245 ], [ -70, %243 ], [ %232, %231 ]
  ret i64 %252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -70, 20) i64 @ZSTD_writeFrameHeader(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #8 {
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
  %16 = load i32, ptr %15, align 8, !tbaa !92
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %13, i32 0
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !91
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !84
  %24 = shl nuw i32 1, %23
  %25 = load i32, ptr %14, align 8, !tbaa !45
  %26 = icmp ne i32 %25, 0
  %27 = zext i32 %24 to i64
  %28 = icmp ule i64 %3, %27
  %29 = select i1 %26, i1 %28, i1 false
  %30 = trunc i32 %23 to i8
  %31 = shl i8 %30, 3
  %32 = add i8 %31, -80
  br i1 %26, label %33, label %42

33:                                               ; preds = %5
  %34 = icmp ugt i64 %3, 255
  %35 = zext i1 %34 to i32
  %36 = icmp ugt i64 %3, 65791
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %35, %37
  %39 = icmp ugt i64 %3, 4294967294
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %38, %40
  br label %42

42:                                               ; preds = %33, %5
  %43 = phi i32 [ %41, %33 ], [ 0, %5 ]
  %44 = select i1 %21, i32 4, i32 0
  %45 = add nuw nsw i32 %44, %18
  %46 = select i1 %29, i32 32, i32 0
  %47 = or disjoint i32 %46, %45
  %48 = shl nuw nsw i32 %43, 6
  %49 = or disjoint i32 %48, %47
  %50 = trunc nuw i32 %49 to i8
  %51 = icmp ult i64 %1, 18
  br i1 %51, label %95, label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %2, align 8, !tbaa !83
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -47205080, ptr %0, align 1, !tbaa !49
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i64 [ 4, %55 ], [ 0, %52 ]
  %58 = or disjoint i64 %57, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  store i8 %50, ptr %59, align 1, !tbaa !196
  br i1 %29, label %63, label %60

60:                                               ; preds = %56
  %61 = or disjoint i64 %57, 2
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  store i8 %32, ptr %62, align 1, !tbaa !196
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %58, %56 ], [ %61, %60 ]
  switch i32 %18, label %76 [
    i32 3, label %73
    i32 1, label %65
    i32 2, label %69
  ]

65:                                               ; preds = %63
  %66 = trunc i32 %4 to i8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  store i8 %66, ptr %67, align 1, !tbaa !196
  %68 = add nuw nsw i64 %64, 1
  br label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %71 = trunc i32 %4 to i16
  store i16 %71, ptr %70, align 1, !tbaa !231
  %72 = add nuw nsw i64 %64, 2
  br label %76

73:                                               ; preds = %63
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  store i32 %4, ptr %74, align 1, !tbaa !49
  %75 = add nuw nsw i64 %64, 4
  br label %76

76:                                               ; preds = %63, %73, %69, %65
  %77 = phi i64 [ %64, %63 ], [ %75, %73 ], [ %68, %65 ], [ %72, %69 ]
  switch i32 %43, label %78 [
    i32 3, label %92
    i32 1, label %83
    i32 2, label %88
  ]

78:                                               ; preds = %76
  br i1 %29, label %79, label %95

79:                                               ; preds = %78
  %80 = trunc i64 %3 to i8
  %81 = add nuw nsw i64 %77, 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  store i8 %80, ptr %82, align 1, !tbaa !196
  br label %95

83:                                               ; preds = %76
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %85 = trunc i64 %3 to i16
  %86 = add i16 %85, -256
  store i16 %86, ptr %84, align 1, !tbaa !231
  %87 = add nuw nsw i64 %77, 2
  br label %95

88:                                               ; preds = %76
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %90 = trunc i64 %3 to i32
  store i32 %90, ptr %89, align 1, !tbaa !49
  %91 = add nuw nsw i64 %77, 4
  br label %95

92:                                               ; preds = %76
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  store i64 %3, ptr %93, align 1, !tbaa !114
  %94 = add nuw nsw i64 %77, 8
  br label %95

95:                                               ; preds = %83, %88, %92, %79, %78, %42
  %96 = phi i64 [ -70, %42 ], [ %81, %79 ], [ %77, %78 ], [ %94, %92 ], [ %87, %83 ], [ %91, %88 ]
  ret i64 %96
}

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @convertSequences_noRepcodes(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = add i64 %2, 1
  br label %7

7:                                                ; preds = %5, %31
  %8 = phi i64 [ 0, %5 ], [ %33, %31 ]
  %9 = phi i64 [ 0, %5 ], [ %32, %31 ]
  %10 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !212
  %12 = add i32 %11, 3
  %13 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %0, i64 %8
  store i32 %12, ptr %13, align 4, !tbaa !194
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !215
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i16 %16, ptr %17, align 4, !tbaa !191
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %19 = load i32, ptr %18, align 4, !tbaa !214
  %20 = trunc i32 %19 to i16
  %21 = add i16 %20, -3
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 6
  store i16 %21, ptr %22, align 2, !tbaa !195
  %23 = icmp ugt i32 %19, 65538
  br i1 %23, label %24, label %26, !prof !356

24:                                               ; preds = %7
  %25 = add nuw i64 %8, 1
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i64 [ %25, %24 ], [ %9, %7 ]
  %28 = icmp ugt i32 %15, 65535
  br i1 %28, label %29, label %31, !prof !356

29:                                               ; preds = %26
  %30 = add i64 %6, %8
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i64 [ %30, %29 ], [ %27, %26 ]
  %33 = add nuw i64 %8, 1
  %34 = icmp eq i64 %33, %2
  br i1 %34, label %35, label %7, !llvm.loop !357

35:                                               ; preds = %31, %3
  %36 = phi i64 [ 0, %3 ], [ %32, %31 ]
  ret i64 %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i64 -107, 1) i64 @ZSTD_convertBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #15 {
  %5 = alloca %struct.repcodes_s, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #30
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %8 = load i64, ptr %7, align 8, !tbaa !358
  %9 = icmp ult i64 %2, %8
  br i1 %9, label %10, label %201

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = add i64 %2, -1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %197, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %25 = load i32, ptr %20, align 4
  %26 = load i32, ptr %21, align 8
  %27 = load ptr, ptr %23, align 8, !tbaa !190
  br label %79

28:                                               ; preds = %10
  %29 = load ptr, ptr %6, align 8, !tbaa !252
  %30 = add i64 %2, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %29, i64 %2
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %34, ptr %35, align 8, !tbaa !251
  br label %197

36:                                               ; preds = %28, %60
  %37 = phi i64 [ %62, %60 ], [ 0, %28 ]
  %38 = phi i64 [ %61, %60 ], [ 0, %28 ]
  %39 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !212
  %41 = add i32 %40, 3
  %42 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %29, i64 %37
  store i32 %41, ptr %42, align 4, !tbaa !194
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %44 = load i32, ptr %43, align 4, !tbaa !215
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 4
  store i16 %45, ptr %46, align 4, !tbaa !191
  %47 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %48 = load i32, ptr %47, align 4, !tbaa !214
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, -3
  %51 = getelementptr inbounds nuw i8, ptr %42, i64 6
  store i16 %50, ptr %51, align 2, !tbaa !195
  %52 = icmp ugt i32 %48, 65538
  br i1 %52, label %53, label %55, !prof !356

53:                                               ; preds = %36
  %54 = add nuw i64 %37, 1
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i64 [ %54, %53 ], [ %38, %36 ]
  %57 = icmp ugt i32 %44, 65535
  br i1 %57, label %58, label %60, !prof !356

58:                                               ; preds = %55
  %59 = add i64 %37, %2
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %59, %58 ], [ %56, %55 ]
  %62 = add nuw i64 %37, 1
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %64, label %36, !llvm.loop !357

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %29, i64 %2
  %66 = getelementptr inbounds i8, ptr %65, i64 -8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %66, ptr %67, align 8, !tbaa !251
  %68 = icmp eq i64 %61, 0
  br i1 %68, label %164, label %69

69:                                               ; preds = %64
  %70 = icmp ugt i64 %61, %30
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  br i1 %70, label %76, label %73

73:                                               ; preds = %69
  store i32 2, ptr %71, align 8, !tbaa !359
  %74 = trunc i64 %61 to i32
  %75 = add i32 %74, -1
  store i32 %75, ptr %72, align 4, !tbaa !360
  br label %164

76:                                               ; preds = %69
  store i32 1, ptr %71, align 8, !tbaa !359
  %77 = sub i64 %61, %2
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %72, align 4, !tbaa !360
  br label %164

79:                                               ; preds = %18, %157
  %80 = phi ptr [ %27, %18 ], [ %136, %157 ]
  %81 = phi i32 [ %26, %18 ], [ %158, %157 ]
  %82 = phi i32 [ %25, %18 ], [ %159, %157 ]
  %83 = phi i64 [ 0, %18 ], [ %161, %157 ]
  %84 = phi i32 [ %19, %18 ], [ %160, %157 ]
  %85 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %83
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %87 = load i32, ptr %86, align 4, !tbaa !215
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %89 = load i32, ptr %88, align 4, !tbaa !214
  %90 = icmp eq i32 %87, 0
  %91 = zext i1 %90 to i32
  %92 = load i32, ptr %85, align 4, !tbaa !212
  %93 = add i32 %92, 3
  %94 = icmp ne i32 %92, %84
  %95 = select i1 %90, i1 true, i1 %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %79
  %97 = icmp eq i32 %92, %82
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = select i1 %90, i32 1, i32 2
  br label %109

100:                                              ; preds = %96
  %101 = icmp eq i32 %92, %81
  br i1 %101, label %102, label %104

102:                                              ; preds = %100
  %103 = xor i32 %91, 3
  br label %109

104:                                              ; preds = %100
  br i1 %90, label %105, label %109

105:                                              ; preds = %104
  %106 = add i32 %84, -1
  %107 = icmp eq i32 %92, %106
  %108 = select i1 %107, i32 3, i32 %93
  br label %119

109:                                              ; preds = %79, %98, %102, %104
  %110 = phi i32 [ %99, %98 ], [ %103, %102 ], [ %93, %104 ], [ 1, %79 ]
  %111 = icmp ugt i32 %87, 65535
  br i1 %111, label %112, label %119, !prof !361

112:                                              ; preds = %109
  store i32 1, ptr %22, align 8, !tbaa !198
  %113 = load ptr, ptr %6, align 8, !tbaa !186
  %114 = ptrtoint ptr %80 to i64
  %115 = ptrtoint ptr %113 to i64
  %116 = sub i64 %114, %115
  %117 = lshr exact i64 %116, 3
  %118 = trunc i64 %117 to i32
  store i32 %118, ptr %24, align 4, !tbaa !199
  br label %119

119:                                              ; preds = %105, %112, %109
  %120 = phi i32 [ %108, %105 ], [ %110, %112 ], [ %110, %109 ]
  %121 = zext i32 %89 to i64
  %122 = trunc i32 %87 to i16
  %123 = getelementptr inbounds nuw i8, ptr %80, i64 4
  store i16 %122, ptr %123, align 4, !tbaa !191
  store i32 %120, ptr %80, align 4, !tbaa !194
  %124 = add nsw i64 %121, -3
  %125 = icmp ugt i64 %124, 65535
  br i1 %125, label %126, label %133, !prof !356

126:                                              ; preds = %119
  store i32 2, ptr %22, align 8, !tbaa !198
  %127 = load ptr, ptr %6, align 8, !tbaa !186
  %128 = ptrtoint ptr %80 to i64
  %129 = ptrtoint ptr %127 to i64
  %130 = sub i64 %128, %129
  %131 = lshr exact i64 %130, 3
  %132 = trunc i64 %131 to i32
  store i32 %132, ptr %24, align 4, !tbaa !199
  br label %133

133:                                              ; preds = %119, %126
  %134 = trunc i64 %124 to i16
  %135 = getelementptr inbounds nuw i8, ptr %80, i64 6
  store i16 %134, ptr %135, align 2, !tbaa !195
  %136 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %137 = icmp ugt i32 %120, 3
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  store i32 %82, ptr %21, align 8, !tbaa !49
  store i32 %84, ptr %20, align 4, !tbaa !49
  %139 = add i32 %120, -3
  br label %154

140:                                              ; preds = %133
  %141 = xor i1 %90, true
  %142 = sext i1 %141 to i32
  %143 = add nsw i32 %120, %142
  switch i32 %143, label %146 [
    i32 0, label %157
    i32 3, label %144
  ]

144:                                              ; preds = %140
  %145 = add i32 %84, -1
  br label %150

146:                                              ; preds = %140
  %147 = zext i32 %143 to i64
  %148 = getelementptr inbounds nuw i32, ptr %5, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !49
  br label %150

150:                                              ; preds = %146, %144
  %151 = phi i32 [ %145, %144 ], [ %149, %146 ]
  %152 = icmp eq i32 %143, 1
  %153 = select i1 %152, i32 %81, i32 %82
  store i32 %153, ptr %21, align 8, !tbaa !49
  store i32 %84, ptr %20, align 4, !tbaa !49
  br label %154

154:                                              ; preds = %150, %138
  %155 = phi i32 [ %153, %150 ], [ %82, %138 ]
  %156 = phi i32 [ %151, %150 ], [ %139, %138 ]
  store i32 %156, ptr %5, align 8, !tbaa !49
  br label %157

157:                                              ; preds = %140, %154
  %158 = phi i32 [ %81, %140 ], [ %155, %154 ]
  %159 = phi i32 [ %82, %140 ], [ %84, %154 ]
  %160 = phi i32 [ %84, %140 ], [ %156, %154 ]
  %161 = add nuw i64 %83, 1
  %162 = icmp eq i64 %161, %16
  br i1 %162, label %163, label %79, !llvm.loop !362

163:                                              ; preds = %157
  store ptr %136, ptr %23, align 8, !tbaa !190
  br label %164

164:                                              ; preds = %163, %64, %76, %73
  %165 = icmp ugt i64 %2, 1
  %166 = and i1 %165, %14
  br i1 %166, label %167, label %197

167:                                              ; preds = %164
  %168 = icmp ugt i64 %2, 3
  br i1 %168, label %169, label %184

169:                                              ; preds = %167
  %170 = add i64 %2, 4294967294
  %171 = add i64 %2, 4294967292
  %172 = and i64 %171, 4294967295
  %173 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !212
  %175 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %174, ptr %175, align 8, !tbaa !49
  %176 = add i64 %2, 4294967293
  %177 = and i64 %176, 4294967295
  %178 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !212
  %180 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %179, ptr %180, align 4, !tbaa !49
  %181 = and i64 %170, 4294967295
  %182 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !212
  store i32 %183, ptr %5, align 8, !tbaa !49
  br label %197

184:                                              ; preds = %167
  %185 = icmp eq i64 %2, 3
  br i1 %185, label %186, label %193

186:                                              ; preds = %184
  %187 = load i32, ptr %5, align 8, !tbaa !49
  %188 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %187, ptr %188, align 8, !tbaa !49
  %189 = load i32, ptr %1, align 4, !tbaa !212
  %190 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %189, ptr %190, align 4, !tbaa !49
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %192 = load i32, ptr %191, align 4, !tbaa !212
  store i32 %192, ptr %5, align 8, !tbaa !49
  br label %197

193:                                              ; preds = %184
  %194 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %195 = load <2 x i32>, ptr %5, align 8, !tbaa !49
  store <2 x i32> %195, ptr %194, align 4, !tbaa !49
  %196 = load i32, ptr %1, align 4, !tbaa !212
  store i32 %196, ptr %5, align 8, !tbaa !49
  br label %197

197:                                              ; preds = %15, %32, %169, %193, %186, %164
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %199 = load ptr, ptr %198, align 8, !tbaa !56
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %200, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  br label %201

201:                                              ; preds = %4, %197
  %202 = phi i64 [ 0, %197 ], [ -107, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #30
  ret i64 %202
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp ugt i64 %2, 3
  br i1 %4, label %5, label %38

5:                                                ; preds = %3
  %6 = add i64 %2, -3
  br label %7

7:                                                ; preds = %5, %35
  %8 = phi i64 [ %21, %35 ], [ 0, %5 ]
  %9 = phi i64 [ %27, %35 ], [ 0, %5 ]
  %10 = phi i64 [ %33, %35 ], [ 0, %5 ]
  %11 = phi i64 [ %36, %35 ], [ 0, %5 ]
  %12 = phi i64 [ %15, %35 ], [ 0, %5 ]
  %13 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %11, i32 1
  %14 = load i64, ptr %13, align 1, !tbaa !114
  %15 = add i64 %14, %12
  %16 = icmp ugt i64 %14, 4294967295
  br i1 %16, label %17, label %56

17:                                               ; preds = %7
  %18 = or disjoint i64 %11, 1
  %19 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %18, i32 1
  %20 = load i64, ptr %19, align 1, !tbaa !114
  %21 = add i64 %20, %8
  %22 = icmp ugt i64 %20, 4294967295
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = or disjoint i64 %11, 2
  %25 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %24, i32 1
  %26 = load i64, ptr %25, align 1, !tbaa !114
  %27 = add i64 %26, %9
  %28 = icmp ugt i64 %26, 4294967295
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = or disjoint i64 %11, 3
  %31 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %30, i32 1
  %32 = load i64, ptr %31, align 1, !tbaa !114
  %33 = add i64 %32, %10
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = add i64 %11, 4
  %37 = icmp ult i64 %36, %6
  br i1 %37, label %7, label %38, !llvm.loop !363

38:                                               ; preds = %35, %3
  %39 = phi i64 [ 0, %3 ], [ %21, %35 ]
  %40 = phi i64 [ 0, %3 ], [ %27, %35 ]
  %41 = phi i64 [ 0, %3 ], [ %33, %35 ]
  %42 = phi i64 [ 0, %3 ], [ %36, %35 ]
  %43 = phi i64 [ 0, %3 ], [ %15, %35 ]
  %44 = icmp ult i64 %42, %2
  br i1 %44, label %45, label %55

45:                                               ; preds = %38, %52
  %46 = phi i64 [ %50, %52 ], [ %43, %38 ]
  %47 = phi i64 [ %53, %52 ], [ %42, %38 ]
  %48 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %1, i64 %47, i32 1
  %49 = load i64, ptr %48, align 1, !tbaa !114
  %50 = add i64 %49, %46
  %51 = icmp ugt i64 %49, 4294967295
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = add i64 %47, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %55, label %45, !llvm.loop !364

55:                                               ; preds = %52, %38
  store i64 -107, ptr %0, align 8, !tbaa !365
  br label %71

56:                                               ; preds = %29, %23, %17, %7, %45
  %57 = phi i64 [ %39, %45 ], [ %8, %7 ], [ %21, %17 ], [ %21, %23 ], [ %21, %29 ]
  %58 = phi i64 [ %40, %45 ], [ %9, %7 ], [ %9, %17 ], [ %27, %23 ], [ %27, %29 ]
  %59 = phi i64 [ %41, %45 ], [ %10, %7 ], [ %10, %17 ], [ %10, %23 ], [ %33, %29 ]
  %60 = phi i64 [ %47, %45 ], [ %11, %7 ], [ %18, %17 ], [ %24, %23 ], [ %30, %29 ]
  %61 = phi i64 [ %50, %45 ], [ %15, %7 ], [ %15, %17 ], [ %15, %23 ], [ %15, %29 ]
  %62 = add i64 %60, 1
  store i64 %62, ptr %0, align 8, !tbaa !365
  %63 = add i64 %58, %57
  %64 = add i64 %63, %59
  %65 = add i64 %64, %61
  %66 = and i64 %65, 4294967295
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %66, ptr %67, align 8, !tbaa !367
  %68 = lshr i64 %65, 32
  %69 = add nuw nsw i64 %66, %68
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %69, ptr %70, align 8, !tbaa !368
  br label %71

71:                                               ; preds = %56, %55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequencesAndLiterals(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #2 {
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %37, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %8)
  %13 = icmp ult i64 %12, -119
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %17 = load i32, ptr %16, align 4, !tbaa !349
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %21 = load i32, ptr %20, align 8, !tbaa !369
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %25 = load i32, ptr %24, align 4, !tbaa !245
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %29 = load i32, ptr %28, align 8, !tbaa !184
  %30 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %15, i64 noundef %8, i32 noundef %29)
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %32 = sub i64 %2, %30
  %33 = tail call fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr noundef nonnull %0, ptr noundef %31, i64 noundef %32, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %8)
  %34 = icmp ult i64 %33, -119
  %35 = select i1 %34, i64 %30, i64 0
  %36 = add i64 %35, %33
  br label %37

37:                                               ; preds = %27, %23, %19, %14, %9, %11
  %38 = phi i64 [ %12, %11 ], [ -66, %9 ], [ -14, %14 ], [ -40, %19 ], [ -14, %23 ], [ %36, %27 ]
  ret i64 %38
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %11 = load i32, ptr %10, align 8, !tbaa !351
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  switch i64 %4, label %24 [
    i64 0, label %168
    i64 1, label %14
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !215
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = icmp ugt i64 %2, 2
  br i1 %19, label %20, label %168

20:                                               ; preds = %18
  store i16 1, ptr %1, align 1, !tbaa !231
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %21, align 1, !tbaa !196
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %23 = add i64 %2, -3
  br label %24

24:                                               ; preds = %20, %8, %14
  %25 = phi ptr [ %1, %14 ], [ %1, %8 ], [ %22, %20 ]
  %26 = phi i64 [ 0, %14 ], [ 0, %8 ], [ 3, %20 ]
  %27 = phi i64 [ %2, %14 ], [ %2, %8 ], [ %23, %20 ]
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %40

40:                                               ; preds = %150, %24
  %41 = phi ptr [ %25, %24 ], [ %161, %150 ]
  %42 = phi i64 [ %26, %24 ], [ %160, %150 ]
  %43 = phi i64 [ %7, %24 ], [ %125, %150 ]
  %44 = phi i64 [ %6, %24 ], [ %139, %150 ]
  %45 = phi ptr [ %5, %24 ], [ %140, %150 ]
  %46 = phi i64 [ %4, %24 ], [ %123, %150 ]
  %47 = phi ptr [ %3, %24 ], [ %122, %150 ]
  %48 = phi i64 [ %27, %24 ], [ %162, %150 ]
  %49 = icmp ugt i64 %46, 3
  br i1 %49, label %50, label %83

50:                                               ; preds = %40
  %51 = add i64 %46, -3
  br label %52

52:                                               ; preds = %80, %50
  %53 = phi i64 [ %66, %80 ], [ 0, %50 ]
  %54 = phi i64 [ %72, %80 ], [ 0, %50 ]
  %55 = phi i64 [ %78, %80 ], [ 0, %50 ]
  %56 = phi i64 [ %81, %80 ], [ 0, %50 ]
  %57 = phi i64 [ %60, %80 ], [ 0, %50 ]
  %58 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %47, i64 %56, i32 1
  %59 = load i64, ptr %58, align 1, !tbaa !114, !noalias !370
  %60 = add i64 %59, %57
  %61 = icmp ugt i64 %59, 4294967295
  br i1 %61, label %62, label %100

62:                                               ; preds = %52
  %63 = or disjoint i64 %56, 1
  %64 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %47, i64 %63, i32 1
  %65 = load i64, ptr %64, align 1, !tbaa !114, !noalias !370
  %66 = add i64 %65, %53
  %67 = icmp ugt i64 %65, 4294967295
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = or disjoint i64 %56, 2
  %70 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %47, i64 %69, i32 1
  %71 = load i64, ptr %70, align 1, !tbaa !114, !noalias !370
  %72 = add i64 %71, %54
  %73 = icmp ugt i64 %71, 4294967295
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = or disjoint i64 %56, 3
  %76 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %47, i64 %75, i32 1
  %77 = load i64, ptr %76, align 1, !tbaa !114, !noalias !370
  %78 = add i64 %77, %55
  %79 = icmp ugt i64 %77, 4294967295
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = add i64 %56, 4
  %82 = icmp ult i64 %81, %51
  br i1 %82, label %52, label %83, !llvm.loop !363

83:                                               ; preds = %80, %40
  %84 = phi i64 [ 0, %40 ], [ %66, %80 ]
  %85 = phi i64 [ 0, %40 ], [ %72, %80 ]
  %86 = phi i64 [ 0, %40 ], [ %78, %80 ]
  %87 = phi i64 [ 0, %40 ], [ %81, %80 ]
  %88 = phi i64 [ 0, %40 ], [ %60, %80 ]
  %89 = icmp ult i64 %87, %46
  br i1 %89, label %90, label %168

90:                                               ; preds = %83, %97
  %91 = phi i64 [ %95, %97 ], [ %88, %83 ]
  %92 = phi i64 [ %98, %97 ], [ %87, %83 ]
  %93 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %47, i64 %92, i32 1
  %94 = load i64, ptr %93, align 1, !tbaa !114, !noalias !370
  %95 = add i64 %94, %91
  %96 = icmp ugt i64 %94, 4294967295
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = add i64 %92, 1
  %99 = icmp eq i64 %98, %46
  br i1 %99, label %168, label %90, !llvm.loop !364

100:                                              ; preds = %52, %62, %68, %74, %90
  %101 = phi i64 [ %84, %90 ], [ %66, %74 ], [ %66, %68 ], [ %66, %62 ], [ %53, %52 ]
  %102 = phi i64 [ %85, %90 ], [ %72, %74 ], [ %72, %68 ], [ %54, %62 ], [ %54, %52 ]
  %103 = phi i64 [ %86, %90 ], [ %78, %74 ], [ %55, %68 ], [ %55, %62 ], [ %55, %52 ]
  %104 = phi i64 [ %92, %90 ], [ %75, %74 ], [ %69, %68 ], [ %63, %62 ], [ %56, %52 ]
  %105 = phi i64 [ %95, %90 ], [ %60, %74 ], [ %60, %68 ], [ %60, %62 ], [ %60, %52 ]
  %106 = add i64 %104, 1
  %107 = add i64 %102, %101
  %108 = add i64 %107, %103
  %109 = add i64 %108, %105
  %110 = and i64 %109, 4294967295
  %111 = lshr i64 %109, 32
  %112 = icmp eq i64 %106, %46
  %113 = icmp ult i64 %106, -119
  br i1 %113, label %114, label %168

114:                                              ; preds = %100
  %115 = icmp ugt i64 %110, %44
  br i1 %115, label %168, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %29, align 8, !tbaa !200
  store ptr %117, ptr %30, align 8, !tbaa !201
  %118 = load ptr, ptr %28, align 8, !tbaa !186
  store ptr %118, ptr %31, align 8, !tbaa !190
  store i32 0, ptr %32, align 8, !tbaa !198
  %119 = tail call i64 @ZSTD_convertBlockSequences(ptr noundef %0, ptr noundef nonnull %47, i64 noundef %106, i32 noundef %13)
  %120 = icmp ult i64 %119, -119
  br i1 %120, label %121, label %168

121:                                              ; preds = %116
  %122 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %47, i64 %106
  %123 = sub i64 %46, %106
  %124 = add nuw nsw i64 %111, %110
  %125 = sub i64 %43, %124
  %126 = icmp ult i64 %48, 3
  br i1 %126, label %168, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds nuw i8, ptr %41, i64 3
  %129 = add i64 %48, -3
  %130 = load ptr, ptr %33, align 8, !tbaa !55
  %131 = load ptr, ptr %34, align 8, !tbaa !56
  %132 = load ptr, ptr %35, align 8, !tbaa !57
  %133 = load i64, ptr %36, align 8, !tbaa !58
  %134 = load i32, ptr %37, align 8, !tbaa !8
  %135 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %128, i64 noundef %129, ptr noundef %45, i64 noundef %110, ptr noundef nonnull %28, ptr noundef %130, ptr noundef %131, ptr noundef nonnull %9, ptr noundef %132, i64 noundef %133, i32 noundef %134)
  %136 = icmp ult i64 %135, -119
  br i1 %136, label %137, label %168

137:                                              ; preds = %127
  %138 = load i64, ptr %38, align 8, !tbaa !243
  %139 = sub i64 %44, %110
  %140 = getelementptr inbounds nuw i8, ptr %45, i64 %110
  %141 = add i64 %135, -1
  %142 = icmp ult i64 %141, %138
  br i1 %142, label %143, label %168

143:                                              ; preds = %137
  %144 = load ptr, ptr %33, align 8, !tbaa !354
  %145 = load ptr, ptr %34, align 8, !tbaa !355
  store ptr %145, ptr %33, align 8, !tbaa !354
  store ptr %144, ptr %34, align 8, !tbaa !355
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 5604
  %147 = load i32, ptr %146, align 4, !tbaa !167
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 1, ptr %146, align 4, !tbaa !167
  br label %150

150:                                              ; preds = %149, %143
  %151 = select i1 %112, i32 5, i32 4
  %152 = trunc i64 %135 to i32
  %153 = shl i32 %152, 3
  %154 = or disjoint i32 %153, %151
  %155 = trunc i32 %154 to i16
  store i16 %155, ptr %41, align 1, !tbaa !231
  %156 = lshr i32 %153, 16
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds nuw i8, ptr %41, i64 2
  store i8 %157, ptr %158, align 1, !tbaa !196
  %159 = add nuw i64 %135, 3
  %160 = add i64 %159, %42
  %161 = getelementptr inbounds nuw i8, ptr %41, i64 %159
  %162 = sub i64 %48, %159
  store i32 0, ptr %39, align 8, !tbaa !249
  br i1 %112, label %163, label %40

163:                                              ; preds = %150
  %164 = icmp eq i64 %139, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = icmp eq i64 %125, 0
  %167 = select i1 %166, i64 %160, i64 -107
  br label %168

168:                                              ; preds = %83, %137, %121, %114, %100, %116, %127, %97, %18, %165, %163, %8
  %169 = phi i64 [ -107, %8 ], [ -107, %163 ], [ %167, %165 ], [ -70, %18 ], [ -107, %97 ], [ -107, %83 ], [ %135, %127 ], [ %119, %116 ], [ %106, %100 ], [ -107, %114 ], [ -70, %121 ], [ -49, %137 ]
  ret i64 %169
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_flushStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !330, !noalias !373
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !335
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !208
  br label %12

11:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !373
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i64 [ %10, %7 ], [ 0, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %13, ptr %14, align 8, !tbaa !207
  %15 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_endStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %5 = load i32, ptr %4, align 4, !tbaa !330, !noalias !376
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !335
  br label %10

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !376
  br label %10

10:                                               ; preds = %7, %9
  %11 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %15 = load i32, ptr %14, align 4, !tbaa !302
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %19 = load i32, ptr %18, align 4, !tbaa !342
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 3, i64 0
  br i1 %20, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %24 = load i32, ptr %23, align 4, !tbaa !245
  %25 = shl nsw i32 %24, 2
  %26 = add i32 %24, 536870912
  %27 = icmp ult i32 %26, 1073741824
  br i1 %27, label %29, label %28, !prof !379, !nosanitize !143

28:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !143
  unreachable, !nosanitize !143

29:                                               ; preds = %22, %17
  %30 = phi i32 [ 0, %17 ], [ %25, %22 ]
  %31 = sext i32 %30 to i64
  %32 = add nuw i64 %21, %11
  %33 = add i64 %32, %31
  br label %34

34:                                               ; preds = %13, %10, %29
  %35 = phi i64 [ %33, %29 ], [ %11, %10 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_defaultCLevel() local_unnamed_addr #0 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_getCParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local void @ZSTD_getParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_parameters) align 4 captures(none) initializes((0, 40)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #18 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %7, align 4, !alias.scope !380
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %8, align 4, !tbaa !383, !alias.scope !380
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((216, 232)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %6, align 8, !tbaa !127
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %5, ptr %7, align 8, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_CCtxParams_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %6, align 8, !tbaa !127
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %5, ptr %7, align 8, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

declare i64 @ZSTD_ldm_getTableSize(ptr noundef byval(%struct.ldmParams_t) align 8) local_unnamed_addr #11

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_resetCCtx_internal(ptr noundef initializes((240, 464), (968, 972)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i32 1, ptr %8, align 8, !tbaa !249
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !113
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %10, ptr noundef nonnull %14) #30
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %17 = load i32, ptr %16, align 4, !tbaa !84
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = icmp eq i64 %2, 0
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 %2)
  %22 = select i1 %20, i64 1, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %24 = load i64, ptr %23, align 8, !tbaa !79
  %25 = tail call i64 @llvm.umin.i64(i64 %24, i64 %22)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %27 = load i32, ptr %26, align 4, !tbaa !88
  %28 = getelementptr i8, ptr %0, i64 448
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = icmp ne ptr %29, null
  %31 = icmp eq i32 %27, 3
  %32 = or i1 %31, %30
  %33 = select i1 %32, i64 3, i64 4
  %34 = udiv i64 %25, %33
  %35 = icmp eq i32 %5, 1
  br i1 %35, label %36, label %59

36:                                               ; preds = %15
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %38 = load i32, ptr %37, align 8, !tbaa !104
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = lshr i64 %25, 8
  %42 = add nuw i64 %41, %25
  %43 = icmp ult i64 %25, 131072
  %44 = sub nuw nsw i64 131072, %25
  %45 = lshr i64 %44, 11
  %46 = select i1 %43, i64 %45, i64 0
  %47 = add nuw i64 %42, %46
  %48 = freeze i64 %47
  %49 = icmp eq i64 %48, 0
  %50 = add i64 %48, 1
  %51 = select i1 %49, i64 -71, i64 %50
  br label %52

52:                                               ; preds = %36, %40
  %53 = phi i64 [ 0, %36 ], [ %51, %40 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %55 = load i32, ptr %54, align 4, !tbaa !103
  %56 = icmp eq i32 %55, 0
  %57 = add i64 %25, %22
  %58 = select i1 %56, i64 %57, i64 0
  br label %59

59:                                               ; preds = %15, %52
  %60 = phi i64 [ %53, %52 ], [ 0, %15 ]
  %61 = phi i64 [ %58, %52 ], [ 0, %15 ]
  %62 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %25) #30
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %65 = load ptr, ptr %64, align 8, !tbaa !236
  %66 = getelementptr i8, ptr %0, i64 3248
  %67 = load ptr, ptr %66, align 8, !tbaa !240
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp ugt i64 %70, 3653238784
  %72 = icmp ugt i64 %3, 624951295
  %73 = or i1 %72, %71
  br i1 %73, label %79, label %74

74:                                               ; preds = %59
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 972
  %76 = load i32, ptr %75, align 4, !tbaa !386
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %74, %59
  %80 = phi i32 [ 1, %59 ], [ %78, %74 ]
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %82 = load i64, ptr %81, align 8, !tbaa !50
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %86 = load i32, ptr %85, align 8, !tbaa !76
  %87 = load ptr, ptr %28, align 8, !tbaa !127
  %88 = icmp ne ptr %87, null
  %89 = zext i1 %88 to i32
  %90 = load i64, ptr %23, align 8, !tbaa !79
  %91 = tail call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %16, ptr noundef nonnull %10, i32 noundef %84, i32 noundef %86, i64 noundef %61, i64 noundef %60, i64 noundef %2, i32 noundef %89, i64 noundef %90)
  %92 = icmp ult i64 %91, -119
  br i1 %92, label %93, label %714

93:                                               ; preds = %79
  %94 = load i64, ptr %81, align 8, !tbaa !50
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %98 = load i32, ptr %97, align 4, !tbaa !387
  %99 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %98, i32 1), !nosanitize !143
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !143
  br i1 %100, label %101, label %102, !prof !144, !nosanitize !143

101:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !143
  unreachable, !nosanitize !143

102:                                              ; preds = %96
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !143
  store i32 %103, ptr %97, align 4, !tbaa !387
  br label %104

104:                                              ; preds = %102, %93
  %105 = load ptr, ptr %7, align 8, !tbaa !59
  %106 = getelementptr i8, ptr %0, i64 712
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  %108 = ptrtoint ptr %107 to i64
  %109 = ptrtoint ptr %105 to i64
  %110 = sub i64 %108, %109
  %111 = icmp ult i64 %110, %91
  %112 = getelementptr i8, ptr %0, i64 728
  %113 = load ptr, ptr %112, align 8, !tbaa !53
  %114 = getelementptr i8, ptr %0, i64 744
  %115 = load ptr, ptr %114, align 8, !tbaa !388
  %116 = mul i64 %91, 3
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %113 to i64
  %119 = sub i64 %117, %118
  %120 = icmp ult i64 %119, %116
  br i1 %120, label %125, label %121

121:                                              ; preds = %104
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 764
  %123 = load i32, ptr %122, align 4, !tbaa !387
  %124 = icmp sgt i32 %123, 128
  br label %125

125:                                              ; preds = %104, %121
  %126 = phi i1 [ false, %104 ], [ %124, %121 ]
  %127 = select i1 %111, i1 true, i1 %126
  br i1 %127, label %128, label %184

128:                                              ; preds = %125
  br i1 %95, label %129, label %714

129:                                              ; preds = %128
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %131 = getelementptr i8, ptr %0, i64 904
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr i8, ptr %0, i64 912
  %134 = load ptr, ptr %133, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %135 = icmp eq ptr %105, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %129
  %137 = icmp eq ptr %132, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %136
  tail call void %132(ptr noundef %134, ptr noundef nonnull %105) #30
  br label %140

139:                                              ; preds = %136
  tail call void @free(ptr noundef nonnull %105) #30
  br label %140

140:                                              ; preds = %129, %138, %139
  %141 = load ptr, ptr %130, align 8, !tbaa !46
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %133, align 8
  %145 = tail call ptr %141(ptr noundef %144, i64 noundef %91) #30
  br label %148

146:                                              ; preds = %140
  %147 = tail call noalias ptr @malloc(i64 noundef %91) #31
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi ptr [ %145, %143 ], [ %147, %146 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %714, label %151

151:                                              ; preds = %148
  store ptr %149, ptr %7, align 8, !tbaa !59
  %152 = getelementptr inbounds nuw i8, ptr %149, i64 %91
  store ptr %152, ptr %106, align 8, !tbaa !60
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %149, ptr %153, align 8, !tbaa !52
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %149, ptr %154, align 8, !tbaa !54
  %155 = ptrtoint ptr %152 to i64
  %156 = and i64 %155, 63
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %152, i64 %157
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %158, ptr %159, align 8, !tbaa !389
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 0, ptr %160, align 8, !tbaa !325
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 0, ptr %161, align 4, !tbaa !390
  store ptr %149, ptr %112, align 8, !tbaa !53
  store ptr %158, ptr %114, align 8, !tbaa !388
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %162, align 8, !tbaa !51
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %163, align 4, !tbaa !387
  %164 = getelementptr inbounds nuw i8, ptr %149, i64 5632
  %165 = icmp samesign ult i64 %91, 5632
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  store i8 1, ptr %162, align 8, !tbaa !51
  store ptr null, ptr %63, align 8, !tbaa !55
  br label %714

167:                                              ; preds = %151
  store ptr %164, ptr %153, align 8, !tbaa !52
  store ptr %164, ptr %112, align 8, !tbaa !53
  store ptr %164, ptr %154, align 8, !tbaa !54
  store ptr %149, ptr %63, align 8, !tbaa !55
  %168 = getelementptr inbounds nuw i8, ptr %149, i64 11264
  %169 = icmp samesign ult i64 %91, 11264
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  store i8 1, ptr %162, align 8, !tbaa !51
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr null, ptr %171, align 8, !tbaa !56
  br label %714

172:                                              ; preds = %167
  store ptr %168, ptr %153, align 8, !tbaa !52
  store ptr %168, ptr %112, align 8, !tbaa !53
  store ptr %168, ptr %154, align 8, !tbaa !54
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %164, ptr %173, align 8, !tbaa !56
  %174 = icmp samesign ult i64 %91, 20184
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  store i8 1, ptr %162, align 8, !tbaa !51
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr null, ptr %176, align 8, !tbaa !57
  br label %714

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw i8, ptr %149, i64 20184
  store ptr %178, ptr %153, align 8, !tbaa !52
  store ptr %178, ptr %154, align 8, !tbaa !54
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %168, ptr %179, align 8, !tbaa !57
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %180, align 8, !tbaa !58
  store ptr %178, ptr %112, align 8, !tbaa !53
  %181 = getelementptr inbounds i8, ptr %152, i64 %157
  store ptr %181, ptr %114, align 8, !tbaa !388
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %182, align 8, !tbaa !51
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %196

184:                                              ; preds = %125
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %186 = load ptr, ptr %185, align 8, !tbaa !52
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %188 = load i32, ptr %187, align 8, !tbaa !325
  %189 = and i64 %108, 63
  %190 = sub nsw i64 0, %189
  %191 = icmp ugt i32 %188, 1
  store ptr %186, ptr %112, align 8, !tbaa !53
  %192 = getelementptr inbounds i8, ptr %107, i64 %190
  store ptr %192, ptr %114, align 8, !tbaa !388
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %193, align 8, !tbaa !51
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 768
  br i1 %191, label %195, label %196

195:                                              ; preds = %184
  store i32 1, ptr %194, align 8, !tbaa !325
  br label %196

196:                                              ; preds = %177, %184, %195
  %197 = phi ptr [ %183, %177 ], [ %194, %184 ], [ %194, %195 ]
  %198 = phi ptr [ %182, %177 ], [ %193, %184 ], [ %193, %195 ]
  %199 = phi i32 [ 1, %177 ], [ %80, %184 ], [ %80, %195 ]
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 3496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %201, ptr noundef nonnull align 4 dereferenceable(28) %16, i64 28, i1 false), !tbaa.struct !74
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %203 = load i32, ptr %202, align 8, !tbaa !109
  %204 = icmp eq i32 %203, 1
  %205 = zext i1 %204 to i32
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i32 %205, ptr %206, align 8, !tbaa !391
  %207 = add i64 %2, 1
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %207, ptr %208, align 8, !tbaa !115
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %210 = icmp eq i64 %2, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %209, i8 0, i64 16, i1 false)
  br i1 %210, label %211, label %213

211:                                              ; preds = %196
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %212, align 8, !tbaa !392
  br label %213

213:                                              ; preds = %196, %211
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 %25, ptr %214, align 8, !tbaa !243
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %216 = tail call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(none) %215, i64 noundef 0) #30
  store i32 1, ptr %0, align 8, !tbaa !170
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 0, ptr %217, align 8, !tbaa !184
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 0, ptr %218, align 8, !tbaa !185
  %219 = load ptr, ptr %63, align 8, !tbaa !55
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %220, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 2056
  store i32 0, ptr %221, align 8, !tbaa !166
  %222 = getelementptr inbounds nuw i8, ptr %219, i64 5604
  store i32 0, ptr %222, align 4, !tbaa !167
  %223 = getelementptr inbounds nuw i8, ptr %219, i64 5608
  store i32 0, ptr %223, align 8, !tbaa !168
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 5612
  store i32 0, ptr %224, align 4, !tbaa !169
  %225 = load i32, ptr %85, align 8, !tbaa !76
  %226 = tail call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %64, ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %225, i32 noundef %4, i32 noundef %199, i32 noundef 1)
  %227 = icmp ult i64 %226, -119
  br i1 %227, label %228, label %714

228:                                              ; preds = %213
  %229 = shl i64 %34, 3
  %230 = add i64 %229, 63
  %231 = and i64 %230, -64
  %232 = load i32, ptr %197, align 8, !tbaa !325
  %233 = icmp ult i32 %232, 2
  br i1 %233, label %234, label %254

234:                                              ; preds = %228
  %235 = icmp eq i32 %232, 0
  br i1 %235, label %236, label %253

236:                                              ; preds = %234
  %237 = load ptr, ptr %200, align 8, !tbaa !52
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %237, ptr %238, align 8, !tbaa !54
  %239 = load ptr, ptr %106, align 8, !tbaa !60
  %240 = ptrtoint ptr %239 to i64
  %241 = and i64 %240, 63
  %242 = sub nsw i64 0, %241
  %243 = getelementptr inbounds i8, ptr %239, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %243, ptr %244, align 8, !tbaa !389
  %245 = ptrtoint ptr %237 to i64
  %246 = sub i64 0, %245
  %247 = and i64 %246, 63
  %248 = getelementptr inbounds nuw i8, ptr %237, i64 %247
  %249 = icmp ugt ptr %248, %239
  br i1 %249, label %270, label %250

250:                                              ; preds = %236
  store ptr %248, ptr %200, align 8, !tbaa !52
  store ptr %248, ptr %112, align 8, !tbaa !53
  %251 = icmp eq i64 %247, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %250
  store ptr %248, ptr %238, align 8, !tbaa !54
  br label %253

253:                                              ; preds = %252, %250, %234
  store i32 2, ptr %197, align 8, !tbaa !325
  br label %254

254:                                              ; preds = %253, %228
  %255 = phi i32 [ 2, %253 ], [ %232, %228 ]
  %256 = icmp eq i64 %231, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %114, align 8, !tbaa !388
  %259 = sub i64 0, %231
  %260 = getelementptr inbounds i8, ptr %258, i64 %259
  %261 = load ptr, ptr %112, align 8, !tbaa !53
  %262 = icmp ult ptr %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %270

264:                                              ; preds = %257
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %266 = load ptr, ptr %265, align 8, !tbaa !54
  %267 = icmp ult ptr %260, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  store ptr %260, ptr %265, align 8, !tbaa !54
  br label %269

269:                                              ; preds = %268, %264
  store ptr %260, ptr %114, align 8, !tbaa !388
  br label %270

270:                                              ; preds = %236, %254, %263, %269
  %271 = phi i32 [ %255, %254 ], [ %255, %263 ], [ %255, %269 ], [ 0, %236 ]
  %272 = phi ptr [ null, %254 ], [ null, %263 ], [ %260, %269 ], [ null, %236 ]
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr %272, ptr %273, align 8, !tbaa !252
  %274 = load i32, ptr %10, align 8, !tbaa !78
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %373

276:                                              ; preds = %270
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 340
  %278 = load i32, ptr %277, align 4, !tbaa !97
  %279 = zext nneg i32 %278 to i64
  %280 = shl i64 8, %279
  %281 = add nuw i64 %280, 63
  %282 = and i64 %281, -64
  %283 = icmp ult i32 %271, 2
  br i1 %283, label %284, label %302

284:                                              ; preds = %276
  %285 = load ptr, ptr %200, align 8, !tbaa !52
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %285, ptr %286, align 8, !tbaa !54
  %287 = load ptr, ptr %106, align 8, !tbaa !60
  %288 = ptrtoint ptr %287 to i64
  %289 = and i64 %288, 63
  %290 = sub nsw i64 0, %289
  %291 = getelementptr inbounds i8, ptr %287, i64 %290
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %291, ptr %292, align 8, !tbaa !389
  %293 = ptrtoint ptr %285 to i64
  %294 = sub i64 0, %293
  %295 = and i64 %294, 63
  %296 = getelementptr inbounds nuw i8, ptr %285, i64 %295
  %297 = icmp ugt ptr %296, %287
  br i1 %297, label %317, label %298

298:                                              ; preds = %284
  store ptr %296, ptr %200, align 8, !tbaa !52
  store ptr %296, ptr %112, align 8, !tbaa !53
  %299 = icmp eq i64 %295, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %298
  store ptr %296, ptr %286, align 8, !tbaa !54
  br label %301

301:                                              ; preds = %300, %298
  store i32 2, ptr %197, align 8, !tbaa !325
  br label %302

302:                                              ; preds = %301, %276
  %303 = icmp eq i64 %282, 0
  br i1 %303, label %317, label %304

304:                                              ; preds = %302
  %305 = load ptr, ptr %114, align 8, !tbaa !388
  %306 = sub i64 0, %282
  %307 = getelementptr inbounds i8, ptr %305, i64 %306
  %308 = load ptr, ptr %112, align 8, !tbaa !53
  %309 = icmp ult ptr %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %317

311:                                              ; preds = %304
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %313 = load ptr, ptr %312, align 8, !tbaa !54
  %314 = icmp ult ptr %307, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  store ptr %307, ptr %312, align 8, !tbaa !54
  br label %316

316:                                              ; preds = %315, %311
  store ptr %307, ptr %114, align 8, !tbaa !388
  br label %317

317:                                              ; preds = %284, %302, %310, %316
  %318 = phi ptr [ null, %302 ], [ null, %310 ], [ %307, %316 ], [ null, %284 ]
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %318, ptr %320, align 8, !tbaa !393
  tail call void @llvm.memset.p0.i64(ptr align 4 %318, i8 0, i64 %280, i1 false)
  %321 = mul i64 %62, 12
  %322 = add i64 %321, 63
  %323 = and i64 %322, -64
  %324 = load i32, ptr %197, align 8, !tbaa !325
  %325 = icmp ult i32 %324, 2
  br i1 %325, label %326, label %346

326:                                              ; preds = %317
  %327 = icmp eq i32 %324, 0
  br i1 %327, label %328, label %345

328:                                              ; preds = %326
  %329 = load ptr, ptr %200, align 8, !tbaa !52
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %329, ptr %330, align 8, !tbaa !54
  %331 = load ptr, ptr %106, align 8, !tbaa !60
  %332 = ptrtoint ptr %331 to i64
  %333 = and i64 %332, 63
  %334 = sub nsw i64 0, %333
  %335 = getelementptr inbounds i8, ptr %331, i64 %334
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %335, ptr %336, align 8, !tbaa !389
  %337 = ptrtoint ptr %329 to i64
  %338 = sub i64 0, %337
  %339 = and i64 %338, 63
  %340 = getelementptr inbounds nuw i8, ptr %329, i64 %339
  %341 = icmp ugt ptr %340, %331
  br i1 %341, label %362, label %342

342:                                              ; preds = %328
  store ptr %340, ptr %200, align 8, !tbaa !52
  store ptr %340, ptr %112, align 8, !tbaa !53
  %343 = icmp eq i64 %339, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %342
  store ptr %340, ptr %330, align 8, !tbaa !54
  br label %345

345:                                              ; preds = %344, %342, %326
  store i32 2, ptr %197, align 8, !tbaa !325
  br label %346

346:                                              ; preds = %345, %317
  %347 = phi i32 [ 2, %345 ], [ %324, %317 ]
  %348 = icmp eq i64 %323, 0
  br i1 %348, label %362, label %349

349:                                              ; preds = %346
  %350 = load ptr, ptr %114, align 8, !tbaa !388
  %351 = sub i64 0, %323
  %352 = getelementptr inbounds i8, ptr %350, i64 %351
  %353 = load ptr, ptr %112, align 8, !tbaa !53
  %354 = icmp ult ptr %352, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %362

356:                                              ; preds = %349
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %358 = load ptr, ptr %357, align 8, !tbaa !54
  %359 = icmp ult ptr %352, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store ptr %352, ptr %357, align 8, !tbaa !54
  br label %361

361:                                              ; preds = %360, %356
  store ptr %352, ptr %114, align 8, !tbaa !388
  br label %362

362:                                              ; preds = %328, %346, %355, %361
  %363 = phi i32 [ %347, %346 ], [ %347, %355 ], [ %347, %361 ], [ 0, %328 ]
  %364 = phi ptr [ null, %346 ], [ null, %355 ], [ %352, %361 ], [ null, %328 ]
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store ptr %364, ptr %365, align 8, !tbaa !394
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i64 %62, ptr %366, align 8, !tbaa !395
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 0, ptr %367, align 8
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr @.str, ptr %368, align 8, !tbaa !240
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr @.str, ptr %369, align 8, !tbaa !237
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 2, ptr %370, align 8, !tbaa !239
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 2, ptr %371, align 4, !tbaa !238
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %319, align 8, !tbaa !236
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i32 0, ptr %372, align 8, !tbaa !396
  br label %373

373:                                              ; preds = %362, %270
  %374 = phi i32 [ %363, %362 ], [ %271, %270 ]
  %375 = load ptr, ptr %28, align 8, !tbaa !127
  %376 = icmp eq ptr %375, null
  br i1 %376, label %425, label %377

377:                                              ; preds = %373
  %378 = udiv i64 %25, 3
  %379 = lshr i64 %25, 10
  %380 = add nuw nsw i64 %379, 2
  %381 = add nuw nsw i64 %380, %378
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  store i64 %381, ptr %382, align 8, !tbaa !397
  %383 = shl i64 %381, 4
  %384 = add i64 %383, 63
  %385 = and i64 %384, -64
  %386 = icmp ult i32 %374, 2
  br i1 %386, label %387, label %405

387:                                              ; preds = %377
  %388 = load ptr, ptr %200, align 8, !tbaa !52
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %388, ptr %389, align 8, !tbaa !54
  %390 = load ptr, ptr %106, align 8, !tbaa !60
  %391 = ptrtoint ptr %390 to i64
  %392 = and i64 %391, 63
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %390, i64 %393
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %394, ptr %395, align 8, !tbaa !389
  %396 = ptrtoint ptr %388 to i64
  %397 = sub i64 0, %396
  %398 = and i64 %397, 63
  %399 = getelementptr inbounds nuw i8, ptr %388, i64 %398
  %400 = icmp ugt ptr %399, %390
  br i1 %400, label %421, label %401

401:                                              ; preds = %387
  store ptr %399, ptr %200, align 8, !tbaa !52
  store ptr %399, ptr %112, align 8, !tbaa !53
  %402 = icmp eq i64 %398, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %401
  store ptr %399, ptr %389, align 8, !tbaa !54
  br label %404

404:                                              ; preds = %403, %401
  store i32 2, ptr %197, align 8, !tbaa !325
  br label %405

405:                                              ; preds = %404, %377
  %406 = phi i32 [ 2, %404 ], [ %374, %377 ]
  %407 = icmp eq i64 %385, 0
  br i1 %407, label %421, label %408

408:                                              ; preds = %405
  %409 = load ptr, ptr %114, align 8, !tbaa !388
  %410 = sub i64 0, %385
  %411 = getelementptr inbounds i8, ptr %409, i64 %410
  %412 = load ptr, ptr %112, align 8, !tbaa !53
  %413 = icmp ult ptr %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %421

415:                                              ; preds = %408
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %417 = load ptr, ptr %416, align 8, !tbaa !54
  %418 = icmp ult ptr %411, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  store ptr %411, ptr %416, align 8, !tbaa !54
  br label %420

420:                                              ; preds = %419, %415
  store ptr %411, ptr %114, align 8, !tbaa !388
  br label %421

421:                                              ; preds = %387, %405, %414, %420
  %422 = phi i32 [ %406, %405 ], [ %406, %414 ], [ %406, %420 ], [ 0, %387 ]
  %423 = phi ptr [ null, %405 ], [ null, %414 ], [ %411, %420 ], [ null, %387 ]
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  store ptr %423, ptr %424, align 8, !tbaa !398
  br label %425

425:                                              ; preds = %421, %373
  %426 = phi i32 [ %422, %421 ], [ %374, %373 ]
  %427 = icmp ult i32 %426, 3
  br i1 %427, label %428, label %448

428:                                              ; preds = %425
  %429 = icmp eq i32 %426, 0
  br i1 %429, label %430, label %447

430:                                              ; preds = %428
  %431 = load ptr, ptr %200, align 8, !tbaa !52
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %431, ptr %432, align 8, !tbaa !54
  %433 = load ptr, ptr %106, align 8, !tbaa !60
  %434 = ptrtoint ptr %433 to i64
  %435 = and i64 %434, 63
  %436 = sub nsw i64 0, %435
  %437 = getelementptr inbounds i8, ptr %433, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %437, ptr %438, align 8, !tbaa !389
  %439 = ptrtoint ptr %431 to i64
  %440 = sub i64 0, %439
  %441 = and i64 %440, 63
  %442 = getelementptr inbounds nuw i8, ptr %431, i64 %441
  %443 = icmp ugt ptr %442, %433
  br i1 %443, label %468, label %444

444:                                              ; preds = %430
  store ptr %442, ptr %200, align 8, !tbaa !52
  store ptr %442, ptr %112, align 8, !tbaa !53
  %445 = icmp eq i64 %441, 0
  br i1 %445, label %447, label %446

446:                                              ; preds = %444
  store ptr %442, ptr %432, align 8, !tbaa !54
  br label %447

447:                                              ; preds = %446, %444, %428
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %448

448:                                              ; preds = %425, %447
  %449 = phi i32 [ %426, %425 ], [ 3, %447 ]
  %450 = load ptr, ptr %114, align 8, !tbaa !388
  %451 = sub nuw i64 -32, %25
  %452 = getelementptr inbounds i8, ptr %450, i64 %451
  %453 = load ptr, ptr %112, align 8, !tbaa !53
  %454 = icmp ult ptr %452, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %448
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %462

456:                                              ; preds = %448
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %458 = load ptr, ptr %457, align 8, !tbaa !54
  %459 = icmp ult ptr %452, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %456
  store ptr %452, ptr %457, align 8, !tbaa !54
  br label %461

461:                                              ; preds = %460, %456
  store ptr %452, ptr %114, align 8, !tbaa !388
  br label %462

462:                                              ; preds = %455, %461
  %463 = phi ptr [ %452, %461 ], [ null, %455 ]
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %463, ptr %464, align 8, !tbaa !399
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 %25, ptr %465, align 8, !tbaa !400
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %5, ptr %466, align 8, !tbaa !171
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i64 %61, ptr %467, align 8, !tbaa !300
  br label %490

468:                                              ; preds = %430
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr null, ptr %469, align 8, !tbaa !399
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 %25, ptr %470, align 8, !tbaa !400
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %5, ptr %471, align 8, !tbaa !171
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i64 %61, ptr %472, align 8, !tbaa !300
  %473 = load ptr, ptr %200, align 8, !tbaa !52
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %473, ptr %474, align 8, !tbaa !54
  %475 = load ptr, ptr %106, align 8, !tbaa !60
  %476 = ptrtoint ptr %475 to i64
  %477 = and i64 %476, 63
  %478 = sub nsw i64 0, %477
  %479 = getelementptr inbounds i8, ptr %475, i64 %478
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %479, ptr %480, align 8, !tbaa !389
  %481 = ptrtoint ptr %473 to i64
  %482 = sub i64 0, %481
  %483 = and i64 %482, 63
  %484 = getelementptr inbounds nuw i8, ptr %473, i64 %483
  %485 = icmp ugt ptr %484, %475
  br i1 %485, label %510, label %486

486:                                              ; preds = %468
  store ptr %484, ptr %200, align 8, !tbaa !52
  store ptr %484, ptr %112, align 8, !tbaa !53
  %487 = icmp eq i64 %483, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %486
  store ptr %484, ptr %474, align 8, !tbaa !54
  br label %489

489:                                              ; preds = %488, %486
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %490

490:                                              ; preds = %462, %489
  %491 = phi i32 [ 3, %489 ], [ %449, %462 ]
  %492 = icmp eq i64 %61, 0
  br i1 %492, label %506, label %493

493:                                              ; preds = %490
  %494 = load ptr, ptr %114, align 8, !tbaa !388
  %495 = sub i64 0, %61
  %496 = getelementptr inbounds i8, ptr %494, i64 %495
  %497 = load ptr, ptr %112, align 8, !tbaa !53
  %498 = icmp ult ptr %496, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %493
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %506

500:                                              ; preds = %493
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %502 = load ptr, ptr %501, align 8, !tbaa !54
  %503 = icmp ult ptr %496, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %500
  store ptr %496, ptr %501, align 8, !tbaa !54
  br label %505

505:                                              ; preds = %504, %500
  store ptr %496, ptr %114, align 8, !tbaa !388
  br label %506

506:                                              ; preds = %490, %499, %505
  %507 = phi ptr [ %496, %505 ], [ null, %499 ], [ null, %490 ]
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store ptr %507, ptr %508, align 8, !tbaa !154
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i64 %60, ptr %509, align 8, !tbaa !301
  br label %530

510:                                              ; preds = %468
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store ptr null, ptr %511, align 8, !tbaa !154
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i64 %60, ptr %512, align 8, !tbaa !301
  %513 = load ptr, ptr %200, align 8, !tbaa !52
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %513, ptr %514, align 8, !tbaa !54
  %515 = load ptr, ptr %106, align 8, !tbaa !60
  %516 = ptrtoint ptr %515 to i64
  %517 = and i64 %516, 63
  %518 = sub nsw i64 0, %517
  %519 = getelementptr inbounds i8, ptr %515, i64 %518
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %519, ptr %520, align 8, !tbaa !389
  %521 = ptrtoint ptr %513 to i64
  %522 = sub i64 0, %521
  %523 = and i64 %522, 63
  %524 = getelementptr inbounds nuw i8, ptr %513, i64 %523
  %525 = icmp ugt ptr %524, %515
  br i1 %525, label %546, label %526

526:                                              ; preds = %510
  store ptr %524, ptr %200, align 8, !tbaa !52
  store ptr %524, ptr %112, align 8, !tbaa !53
  %527 = icmp eq i64 %523, 0
  br i1 %527, label %529, label %528

528:                                              ; preds = %526
  store ptr %524, ptr %514, align 8, !tbaa !54
  br label %529

529:                                              ; preds = %528, %526
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %530

530:                                              ; preds = %506, %529
  %531 = phi i32 [ 3, %529 ], [ %491, %506 ]
  %532 = icmp eq i64 %60, 0
  br i1 %532, label %546, label %533

533:                                              ; preds = %530
  %534 = load ptr, ptr %114, align 8, !tbaa !388
  %535 = sub i64 0, %60
  %536 = getelementptr inbounds i8, ptr %534, i64 %535
  %537 = load ptr, ptr %112, align 8, !tbaa !53
  %538 = icmp ult ptr %536, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %533
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %546

540:                                              ; preds = %533
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %542 = load ptr, ptr %541, align 8, !tbaa !54
  %543 = icmp ult ptr %536, %542
  br i1 %543, label %544, label %545

544:                                              ; preds = %540
  store ptr %536, ptr %541, align 8, !tbaa !54
  br label %545

545:                                              ; preds = %544, %540
  store ptr %536, ptr %114, align 8, !tbaa !388
  br label %546

546:                                              ; preds = %510, %530, %539, %545
  %547 = phi i32 [ %531, %530 ], [ %531, %539 ], [ %531, %545 ], [ 0, %510 ]
  %548 = phi ptr [ null, %530 ], [ null, %539 ], [ %536, %545 ], [ null, %510 ]
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store ptr %548, ptr %549, align 8, !tbaa !343
  %550 = load i32, ptr %10, align 8, !tbaa !78
  %551 = icmp eq i32 %550, 1
  br i1 %551, label %552, label %596

552:                                              ; preds = %546
  %553 = getelementptr inbounds nuw i8, ptr %0, i64 340
  %554 = load i32, ptr %553, align 4, !tbaa !97
  %555 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %556 = load i32, ptr %555, align 8, !tbaa !99
  %557 = sub i32 %554, %556
  %558 = zext nneg i32 %557 to i64
  %559 = shl nuw i64 1, %558
  %560 = icmp ult i32 %547, 3
  br i1 %560, label %561, label %579

561:                                              ; preds = %552
  %562 = load ptr, ptr %200, align 8, !tbaa !52
  %563 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %562, ptr %563, align 8, !tbaa !54
  %564 = load ptr, ptr %106, align 8, !tbaa !60
  %565 = ptrtoint ptr %564 to i64
  %566 = and i64 %565, 63
  %567 = sub nsw i64 0, %566
  %568 = getelementptr inbounds i8, ptr %564, i64 %567
  %569 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %568, ptr %569, align 8, !tbaa !389
  %570 = ptrtoint ptr %562 to i64
  %571 = sub i64 0, %570
  %572 = and i64 %571, 63
  %573 = getelementptr inbounds nuw i8, ptr %562, i64 %572
  %574 = icmp ugt ptr %573, %564
  br i1 %574, label %592, label %575

575:                                              ; preds = %561
  store ptr %573, ptr %200, align 8, !tbaa !52
  store ptr %573, ptr %112, align 8, !tbaa !53
  %576 = icmp eq i64 %572, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %575
  store ptr %573, ptr %563, align 8, !tbaa !54
  br label %578

578:                                              ; preds = %577, %575
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %579

579:                                              ; preds = %578, %552
  %580 = load ptr, ptr %114, align 8, !tbaa !388
  %581 = sub i64 0, %559
  %582 = getelementptr inbounds i8, ptr %580, i64 %581
  %583 = load ptr, ptr %112, align 8, !tbaa !53
  %584 = icmp ult ptr %582, %583
  br i1 %584, label %585, label %586

585:                                              ; preds = %579
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %592

586:                                              ; preds = %579
  %587 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %588 = load ptr, ptr %587, align 8, !tbaa !54
  %589 = icmp ult ptr %582, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %586
  store ptr %582, ptr %587, align 8, !tbaa !54
  br label %591

591:                                              ; preds = %590, %586
  store ptr %582, ptr %114, align 8, !tbaa !388
  br label %592

592:                                              ; preds = %561, %585, %591
  %593 = phi ptr [ null, %585 ], [ %582, %591 ], [ null, %561 ]
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store ptr %593, ptr %594, align 8, !tbaa !401
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %593, i8 0, i64 %559, i1 false)
  %595 = load i32, ptr %197, align 8, !tbaa !325
  br label %596

596:                                              ; preds = %592, %546
  %597 = phi i32 [ %595, %592 ], [ %547, %546 ]
  %598 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %599 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %598, i8 0, i64 40, i1 false)
  store i64 %34, ptr %599, align 8, !tbaa !358
  %600 = icmp ult i32 %597, 3
  br i1 %600, label %601, label %621

601:                                              ; preds = %596
  %602 = icmp eq i32 %597, 0
  br i1 %602, label %603, label %620

603:                                              ; preds = %601
  %604 = load ptr, ptr %200, align 8, !tbaa !52
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %604, ptr %605, align 8, !tbaa !54
  %606 = load ptr, ptr %106, align 8, !tbaa !60
  %607 = ptrtoint ptr %606 to i64
  %608 = and i64 %607, 63
  %609 = sub nsw i64 0, %608
  %610 = getelementptr inbounds i8, ptr %606, i64 %609
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %610, ptr %611, align 8, !tbaa !389
  %612 = ptrtoint ptr %604 to i64
  %613 = sub i64 0, %612
  %614 = and i64 %613, 63
  %615 = getelementptr inbounds nuw i8, ptr %604, i64 %614
  %616 = icmp ugt ptr %615, %606
  br i1 %616, label %639, label %617

617:                                              ; preds = %603
  store ptr %615, ptr %200, align 8, !tbaa !52
  store ptr %615, ptr %112, align 8, !tbaa !53
  %618 = icmp eq i64 %614, 0
  br i1 %618, label %620, label %619

619:                                              ; preds = %617
  store ptr %615, ptr %605, align 8, !tbaa !54
  br label %620

620:                                              ; preds = %619, %617, %601
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %621

621:                                              ; preds = %620, %596
  %622 = icmp ugt i64 %33, %25
  br i1 %622, label %636, label %623

623:                                              ; preds = %621
  %624 = load ptr, ptr %114, align 8, !tbaa !388
  %625 = sub nsw i64 0, %34
  %626 = getelementptr inbounds i8, ptr %624, i64 %625
  %627 = load ptr, ptr %112, align 8, !tbaa !53
  %628 = icmp ult ptr %626, %627
  br i1 %628, label %629, label %630

629:                                              ; preds = %623
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %636

630:                                              ; preds = %623
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %632 = load ptr, ptr %631, align 8, !tbaa !54
  %633 = icmp ult ptr %626, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %630
  store ptr %626, ptr %631, align 8, !tbaa !54
  br label %635

635:                                              ; preds = %634, %630
  store ptr %626, ptr %114, align 8, !tbaa !388
  br label %636

636:                                              ; preds = %621, %629, %635
  %637 = phi ptr [ %626, %635 ], [ null, %629 ], [ null, %621 ]
  %638 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %637, ptr %638, align 8, !tbaa !402
  br label %658

639:                                              ; preds = %603
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr null, ptr %640, align 8, !tbaa !402
  %641 = load ptr, ptr %200, align 8, !tbaa !52
  %642 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %641, ptr %642, align 8, !tbaa !54
  %643 = load ptr, ptr %106, align 8, !tbaa !60
  %644 = ptrtoint ptr %643 to i64
  %645 = and i64 %644, 63
  %646 = sub nsw i64 0, %645
  %647 = getelementptr inbounds i8, ptr %643, i64 %646
  %648 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %647, ptr %648, align 8, !tbaa !389
  %649 = ptrtoint ptr %641 to i64
  %650 = sub i64 0, %649
  %651 = and i64 %650, 63
  %652 = getelementptr inbounds nuw i8, ptr %641, i64 %651
  %653 = icmp ugt ptr %652, %643
  br i1 %653, label %676, label %654

654:                                              ; preds = %639
  store ptr %652, ptr %200, align 8, !tbaa !52
  store ptr %652, ptr %112, align 8, !tbaa !53
  %655 = icmp eq i64 %651, 0
  br i1 %655, label %657, label %656

656:                                              ; preds = %654
  store ptr %652, ptr %642, align 8, !tbaa !54
  br label %657

657:                                              ; preds = %656, %654
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %658

658:                                              ; preds = %636, %657
  %659 = icmp ugt i64 %33, %25
  br i1 %659, label %673, label %660

660:                                              ; preds = %658
  %661 = load ptr, ptr %114, align 8, !tbaa !388
  %662 = sub nsw i64 0, %34
  %663 = getelementptr inbounds i8, ptr %661, i64 %662
  %664 = load ptr, ptr %112, align 8, !tbaa !53
  %665 = icmp ult ptr %663, %664
  br i1 %665, label %666, label %667

666:                                              ; preds = %660
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %673

667:                                              ; preds = %660
  %668 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %669 = load ptr, ptr %668, align 8, !tbaa !54
  %670 = icmp ult ptr %663, %669
  br i1 %670, label %671, label %672

671:                                              ; preds = %667
  store ptr %663, ptr %668, align 8, !tbaa !54
  br label %672

672:                                              ; preds = %671, %667
  store ptr %663, ptr %114, align 8, !tbaa !388
  br label %673

673:                                              ; preds = %658, %666, %672
  %674 = phi ptr [ %663, %672 ], [ null, %666 ], [ null, %658 ]
  %675 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %674, ptr %675, align 8, !tbaa !403
  br label %695

676:                                              ; preds = %639
  %677 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr null, ptr %677, align 8, !tbaa !403
  %678 = load ptr, ptr %200, align 8, !tbaa !52
  %679 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %678, ptr %679, align 8, !tbaa !54
  %680 = load ptr, ptr %106, align 8, !tbaa !60
  %681 = ptrtoint ptr %680 to i64
  %682 = and i64 %681, 63
  %683 = sub nsw i64 0, %682
  %684 = getelementptr inbounds i8, ptr %680, i64 %683
  %685 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %684, ptr %685, align 8, !tbaa !389
  %686 = ptrtoint ptr %678 to i64
  %687 = sub i64 0, %686
  %688 = and i64 %687, 63
  %689 = getelementptr inbounds nuw i8, ptr %678, i64 %688
  %690 = icmp ugt ptr %689, %680
  br i1 %690, label %710, label %691

691:                                              ; preds = %676
  store ptr %689, ptr %200, align 8, !tbaa !52
  store ptr %689, ptr %112, align 8, !tbaa !53
  %692 = icmp eq i64 %688, 0
  br i1 %692, label %694, label %693

693:                                              ; preds = %691
  store ptr %689, ptr %679, align 8, !tbaa !54
  br label %694

694:                                              ; preds = %693, %691
  store i32 3, ptr %197, align 8, !tbaa !325
  br label %695

695:                                              ; preds = %673, %694
  %696 = icmp ugt i64 %33, %25
  br i1 %696, label %710, label %697

697:                                              ; preds = %695
  %698 = load ptr, ptr %114, align 8, !tbaa !388
  %699 = sub nsw i64 0, %34
  %700 = getelementptr inbounds i8, ptr %698, i64 %699
  %701 = load ptr, ptr %112, align 8, !tbaa !53
  %702 = icmp ult ptr %700, %701
  br i1 %702, label %703, label %704

703:                                              ; preds = %697
  store i8 1, ptr %198, align 8, !tbaa !51
  br label %710

704:                                              ; preds = %697
  %705 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %706 = load ptr, ptr %705, align 8, !tbaa !54
  %707 = icmp ult ptr %700, %706
  br i1 %707, label %708, label %709

708:                                              ; preds = %704
  store ptr %700, ptr %705, align 8, !tbaa !54
  br label %709

709:                                              ; preds = %708, %704
  store ptr %700, ptr %114, align 8, !tbaa !388
  br label %710

710:                                              ; preds = %676, %695, %703, %709
  %711 = phi ptr [ null, %695 ], [ null, %703 ], [ %700, %709 ], [ null, %676 ]
  %712 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %711, ptr %712, align 8, !tbaa !404
  %713 = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %713, align 4, !tbaa !386
  br label %714

714:                                              ; preds = %148, %175, %170, %166, %128, %213, %79, %710
  %715 = phi i64 [ 0, %710 ], [ %226, %213 ], [ %91, %79 ], [ -64, %175 ], [ -64, %170 ], [ -64, %166 ], [ -64, %128 ], [ -64, %148 ]
  ret i64 %715
}

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i64 -64, 1) i64 @ZSTD_reset_matchState(ptr noundef captures(none) initializes((24, 32), (40, 52), (112, 136), (196, 200), (248, 256), (300, 304)) %0, ptr noundef initializes((24, 32)) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #14 {
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %9 = load i32, ptr %8, align 4, !tbaa !73
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %11 = load i32, ptr %10, align 4, !tbaa !405
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne i32 %6, 0
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = icmp eq i32 %9, 1
  br i1 %16, label %27, label %17

17:                                               ; preds = %15
  %18 = add i32 %9, -3
  %19 = icmp ult i32 %18, 3
  %20 = icmp eq i32 %3, 1
  %21 = and i1 %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %7, %17
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 4, %25
  br label %27

27:                                               ; preds = %15, %17, %22
  %28 = phi i64 [ %26, %22 ], [ 0, %17 ], [ 0, %15 ]
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !70
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw i64 1, %31
  br i1 %13, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %35 = load i32, ptr %34, align 4, !tbaa !72
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, ptr %2, align 4, !tbaa !68
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 17)
  br label %40

40:                                               ; preds = %37, %27, %33
  %41 = phi i32 [ 0, %33 ], [ 0, %27 ], [ %39, %37 ]
  %42 = icmp eq i32 %41, 0
  %43 = zext nneg i32 %41 to i64
  %44 = icmp eq i32 %5, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8, !tbaa !236
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !240
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  br label %58

51:                                               ; preds = %40
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %53, align 8, !tbaa !240
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %54, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %0, align 8, !tbaa !236
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %56, ptr %57, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %45, %51
  %59 = phi ptr [ %50, %45 ], [ %56, %51 ]
  %60 = phi ptr [ %48, %45 ], [ @.str, %51 ]
  %61 = phi ptr [ %46, %45 ], [ getelementptr inbounds nuw (i8, ptr @.str, i64 2), %51 ]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %41, ptr %62, align 8, !tbaa !406
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %63, align 4, !tbaa !407
  %64 = ptrtoint ptr %61 to i64
  %65 = ptrtoint ptr %60 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %67, ptr %68, align 4, !tbaa !238
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %67, ptr %69, align 8, !tbaa !239
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %67, ptr %70, align 4, !tbaa !241
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %71, align 8, !tbaa !408
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %72, align 4, !tbaa !409
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %73, align 8, !tbaa !410
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %59, ptr %75, align 8, !tbaa !53
  %76 = shl i64 4, %31
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %78 = load i32, ptr %77, align 8, !tbaa !325
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %59, ptr %81, align 8, !tbaa !54
  %82 = getelementptr i8, ptr %1, i64 8
  %83 = load ptr, ptr %82, align 8, !tbaa !60
  %84 = ptrtoint ptr %83 to i64
  %85 = and i64 %84, 63
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %83, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %87, ptr %88, align 8, !tbaa !389
  %89 = ptrtoint ptr %59 to i64
  %90 = sub i64 0, %89
  %91 = and i64 %90, 63
  %92 = getelementptr inbounds nuw i8, ptr %59, i64 %91
  %93 = icmp ugt ptr %92, %83
  br i1 %93, label %111, label %94

94:                                               ; preds = %80
  store ptr %92, ptr %74, align 8, !tbaa !52
  store ptr %92, ptr %75, align 8, !tbaa !53
  %95 = icmp eq i64 %91, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  store ptr %92, ptr %81, align 8, !tbaa !54
  br label %97

97:                                               ; preds = %96, %94
  store i32 1, ptr %77, align 8, !tbaa !325
  br label %98

98:                                               ; preds = %58, %97
  %99 = phi ptr [ %92, %97 ], [ %59, %58 ]
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %76
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %102 = load ptr, ptr %101, align 8, !tbaa !388
  %103 = icmp ugt ptr %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %105, align 8, !tbaa !51
  br label %107

106:                                              ; preds = %98
  store ptr %100, ptr %75, align 8, !tbaa !53
  br label %107

107:                                              ; preds = %104, %106
  %108 = phi ptr [ %100, %106 ], [ %99, %104 ]
  %109 = phi ptr [ %99, %106 ], [ null, %104 ]
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %109, ptr %110, align 8, !tbaa !411
  br label %131

111:                                              ; preds = %80
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %112, align 8, !tbaa !411
  %113 = load ptr, ptr %74, align 8, !tbaa !52
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %113, ptr %114, align 8, !tbaa !54
  %115 = getelementptr i8, ptr %1, i64 8
  %116 = load ptr, ptr %115, align 8, !tbaa !60
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 63
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %120, ptr %121, align 8, !tbaa !389
  %122 = ptrtoint ptr %113 to i64
  %123 = sub i64 0, %122
  %124 = and i64 %123, 63
  %125 = getelementptr inbounds nuw i8, ptr %113, i64 %124
  %126 = icmp ugt ptr %125, %116
  br i1 %126, label %146, label %127

127:                                              ; preds = %111
  store ptr %125, ptr %74, align 8, !tbaa !52
  store ptr %125, ptr %75, align 8, !tbaa !53
  %128 = icmp eq i64 %124, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  store ptr %125, ptr %114, align 8, !tbaa !54
  br label %130

130:                                              ; preds = %129, %127
  store i32 1, ptr %77, align 8, !tbaa !325
  br label %131

131:                                              ; preds = %130, %107
  %132 = phi ptr [ %108, %107 ], [ %125, %130 ]
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 %28
  %134 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %135 = load ptr, ptr %134, align 8, !tbaa !388
  %136 = icmp ugt ptr %133, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %138, align 8, !tbaa !51
  br label %140

139:                                              ; preds = %131
  store ptr %133, ptr %75, align 8, !tbaa !53
  br label %140

140:                                              ; preds = %137, %139
  %141 = phi ptr [ %133, %139 ], [ %132, %137 ]
  %142 = phi ptr [ %132, %139 ], [ null, %137 ]
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %142, ptr %143, align 8, !tbaa !412
  %144 = shl nuw nsw i64 4, %43
  %145 = select i1 %42, i64 0, i64 %144
  br label %168

146:                                              ; preds = %111
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %147, align 8, !tbaa !412
  %148 = shl nuw nsw i64 4, %43
  %149 = select i1 %42, i64 0, i64 %148
  %150 = load ptr, ptr %74, align 8, !tbaa !52
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %150, ptr %151, align 8, !tbaa !54
  %152 = getelementptr i8, ptr %1, i64 8
  %153 = load ptr, ptr %152, align 8, !tbaa !60
  %154 = ptrtoint ptr %153 to i64
  %155 = and i64 %154, 63
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  %158 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %157, ptr %158, align 8, !tbaa !389
  %159 = ptrtoint ptr %150 to i64
  %160 = sub i64 0, %159
  %161 = and i64 %160, 63
  %162 = getelementptr inbounds nuw i8, ptr %150, i64 %161
  %163 = icmp ugt ptr %162, %153
  br i1 %163, label %178, label %164

164:                                              ; preds = %146
  store ptr %162, ptr %74, align 8, !tbaa !52
  store ptr %162, ptr %75, align 8, !tbaa !53
  %165 = icmp eq i64 %161, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  store ptr %162, ptr %151, align 8, !tbaa !54
  br label %167

167:                                              ; preds = %166, %164
  store i32 1, ptr %77, align 8, !tbaa !325
  br label %168

168:                                              ; preds = %167, %140
  %169 = phi i64 [ %145, %140 ], [ %149, %167 ]
  %170 = phi ptr [ %141, %140 ], [ %162, %167 ]
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %169
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %173 = load ptr, ptr %172, align 8, !tbaa !388
  %174 = icmp ugt ptr %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %176, align 8, !tbaa !51
  br label %178

177:                                              ; preds = %168
  store ptr %171, ptr %75, align 8, !tbaa !53
  br label %178

178:                                              ; preds = %146, %175, %177
  %179 = phi ptr [ %170, %175 ], [ %171, %177 ], [ %59, %146 ]
  %180 = phi ptr [ null, %175 ], [ %170, %177 ], [ null, %146 ]
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %180, ptr %181, align 8, !tbaa !413
  %182 = getelementptr i8, ptr %1, i64 56
  %183 = load i8, ptr %182, align 8, !tbaa !51
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %565

185:                                              ; preds = %178
  %186 = icmp eq i32 %4, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %185
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %189 = load ptr, ptr %188, align 8, !tbaa !54
  %190 = icmp ult ptr %189, %179
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = ptrtoint ptr %179 to i64
  %193 = ptrtoint ptr %189 to i64
  %194 = sub i64 %192, %193
  tail call void @llvm.memset.p0.i64(ptr align 1 %189, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr %188, align 8, !tbaa !54
  %196 = load ptr, ptr %75, align 8, !tbaa !53
  br label %197

197:                                              ; preds = %191, %187
  %198 = phi ptr [ %196, %191 ], [ %179, %187 ]
  %199 = phi ptr [ %195, %191 ], [ %189, %187 ]
  %200 = icmp ult ptr %199, %198
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store ptr %198, ptr %188, align 8, !tbaa !54
  br label %202

202:                                              ; preds = %201, %197, %185
  %203 = phi ptr [ %198, %201 ], [ %198, %197 ], [ %179, %185 ]
  %204 = load i32, ptr %8, align 4, !tbaa !73
  %205 = add i32 %204, -6
  %206 = icmp ult i32 %205, -3
  %207 = icmp ne i32 %3, 1
  %208 = or i1 %207, %206
  br i1 %208, label %336, label %209

209:                                              ; preds = %202
  %210 = add nuw i64 %32, 63
  %211 = and i64 %210, -64
  %212 = load i32, ptr %77, align 8, !tbaa !325
  br i1 %13, label %213, label %286

213:                                              ; preds = %209
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %215, label %234

215:                                              ; preds = %213
  %216 = load ptr, ptr %74, align 8, !tbaa !52
  %217 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %216, ptr %217, align 8, !tbaa !54
  %218 = getelementptr i8, ptr %1, i64 8
  %219 = load ptr, ptr %218, align 8, !tbaa !60
  %220 = ptrtoint ptr %219 to i64
  %221 = and i64 %220, 63
  %222 = sub nsw i64 0, %221
  %223 = getelementptr inbounds i8, ptr %219, i64 %222
  %224 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %223, ptr %224, align 8, !tbaa !389
  %225 = ptrtoint ptr %216 to i64
  %226 = sub i64 0, %225
  %227 = and i64 %226, 63
  %228 = getelementptr inbounds nuw i8, ptr %216, i64 %227
  %229 = icmp ugt ptr %228, %219
  br i1 %229, label %256, label %230

230:                                              ; preds = %215
  store ptr %228, ptr %74, align 8, !tbaa !52
  store ptr %228, ptr %75, align 8, !tbaa !53
  %231 = icmp eq i64 %227, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %230
  store ptr %228, ptr %217, align 8, !tbaa !54
  br label %233

233:                                              ; preds = %232, %230
  store i32 1, ptr %77, align 8, !tbaa !325
  br label %234

234:                                              ; preds = %213, %233
  %235 = phi ptr [ %203, %213 ], [ %228, %233 ]
  %236 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %237 = load ptr, ptr %236, align 8, !tbaa !388
  %238 = sub i64 0, %211
  %239 = getelementptr inbounds i8, ptr %237, i64 %238
  %240 = icmp ult ptr %239, %235
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %256

242:                                              ; preds = %234
  %243 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %244 = load ptr, ptr %243, align 8, !tbaa !54
  %245 = icmp ult ptr %239, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store ptr %239, ptr %243, align 8, !tbaa !54
  br label %247

247:                                              ; preds = %246, %242
  store ptr %239, ptr %236, align 8, !tbaa !388
  %248 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %249 = load ptr, ptr %248, align 8, !tbaa !389
  %250 = icmp ult ptr %239, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = ptrtoint ptr %249 to i64
  %253 = ptrtoint ptr %239 to i64
  %254 = sub i64 %252, %253
  %255 = tail call i64 @llvm.umin.i64(i64 %254, i64 %211)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %239, i8 0, i64 %255, i1 false)
  store ptr %239, ptr %248, align 8, !tbaa !389
  br label %256

256:                                              ; preds = %215, %241, %247, %251
  %257 = phi ptr [ %239, %251 ], [ %239, %247 ], [ null, %241 ], [ null, %215 ]
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %257, ptr %258, align 8, !tbaa !414
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %260 = load i64, ptr %259, align 8, !tbaa !415
  %261 = tail call i64 @llvm.fshl.i64(i64 %260, i64 %260, i64 15)
  %262 = tail call i64 @llvm.fshl.i64(i64 %260, i64 %260, i64 40)
  %263 = xor i64 %262, %261
  %264 = xor i64 %263, %260
  %265 = mul i64 %264, -6939452855193903323
  %266 = lshr i64 %265, 35
  %267 = add nuw nsw i64 %266, 8
  %268 = xor i64 %267, %265
  %269 = mul i64 %268, -6939452855193903323
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %271 = load i32, ptr %270, align 8, !tbaa !416
  %272 = zext i32 %271 to i64
  %273 = shl nuw nsw i64 %272, 15
  %274 = tail call i64 @llvm.fshl.i64(i64 %272, i64 %272, i64 40)
  %275 = xor i64 %274, %273
  %276 = xor i64 %275, %272
  %277 = mul i64 %276, -6939452855193903323
  %278 = lshr i64 %277, 35
  %279 = add nuw nsw i64 %278, 4
  %280 = xor i64 %279, %277
  %281 = mul i64 %280, -6939452855193903323
  %282 = xor i64 %281, %269
  %283 = lshr i64 %282, 28
  %284 = xor i64 %269, %283
  %285 = xor i64 %284, %281
  store i64 %285, ptr %259, align 8, !tbaa !415
  br label %328

286:                                              ; preds = %209
  %287 = icmp ult i32 %212, 2
  br i1 %287, label %288, label %310

288:                                              ; preds = %286
  %289 = icmp eq i32 %212, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %288
  %291 = load ptr, ptr %74, align 8, !tbaa !52
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %291, ptr %292, align 8, !tbaa !54
  %293 = getelementptr i8, ptr %1, i64 8
  %294 = load ptr, ptr %293, align 8, !tbaa !60
  %295 = ptrtoint ptr %294 to i64
  %296 = and i64 %295, 63
  %297 = sub nsw i64 0, %296
  %298 = getelementptr inbounds i8, ptr %294, i64 %297
  %299 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %298, ptr %299, align 8, !tbaa !389
  %300 = ptrtoint ptr %291 to i64
  %301 = sub i64 0, %300
  %302 = and i64 %301, 63
  %303 = getelementptr inbounds nuw i8, ptr %291, i64 %302
  %304 = icmp ugt ptr %303, %294
  br i1 %304, label %324, label %305

305:                                              ; preds = %290
  store ptr %303, ptr %74, align 8, !tbaa !52
  store ptr %303, ptr %75, align 8, !tbaa !53
  %306 = icmp eq i64 %302, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %305
  store ptr %303, ptr %292, align 8, !tbaa !54
  br label %308

308:                                              ; preds = %307, %305, %288
  %309 = phi ptr [ %303, %307 ], [ %303, %305 ], [ %203, %288 ]
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %310

310:                                              ; preds = %286, %308
  %311 = phi ptr [ %203, %286 ], [ %309, %308 ]
  %312 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %313 = load ptr, ptr %312, align 8, !tbaa !388
  %314 = sub i64 0, %211
  %315 = getelementptr inbounds i8, ptr %313, i64 %314
  %316 = icmp ult ptr %315, %311
  br i1 %316, label %317, label %318

317:                                              ; preds = %310
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %324

318:                                              ; preds = %310
  %319 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %320 = load ptr, ptr %319, align 8, !tbaa !54
  %321 = icmp ult ptr %315, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  store ptr %315, ptr %319, align 8, !tbaa !54
  br label %323

323:                                              ; preds = %322, %318
  store ptr %315, ptr %312, align 8, !tbaa !388
  br label %324

324:                                              ; preds = %290, %317, %323
  %325 = phi ptr [ null, %317 ], [ %315, %323 ], [ null, %290 ]
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %325, ptr %326, align 8, !tbaa !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %325, i8 0, i64 %32, i1 false)
  %327 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %327, align 8, !tbaa !415
  br label %328

328:                                              ; preds = %324, %256
  %329 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %330 = load i32, ptr %329, align 4, !tbaa !71
  %331 = tail call i32 @llvm.umax.i32(i32 %330, i32 4)
  %332 = tail call i32 @llvm.umin.i32(i32 %331, i32 6)
  %333 = load i32, ptr %29, align 4, !tbaa !70
  %334 = sub i32 %333, %332
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %334, ptr %335, align 4, !tbaa !417
  br label %336

336:                                              ; preds = %328, %202
  br i1 %13, label %337, label %560

337:                                              ; preds = %336
  %338 = load i32, ptr %8, align 4, !tbaa !73
  %339 = icmp ugt i32 %338, 6
  br i1 %339, label %340, label %560

340:                                              ; preds = %337
  %341 = load i32, ptr %77, align 8, !tbaa !325
  %342 = icmp ult i32 %341, 2
  br i1 %342, label %343, label %364

343:                                              ; preds = %340
  %344 = icmp eq i32 %341, 0
  br i1 %344, label %345, label %363

345:                                              ; preds = %343
  %346 = load ptr, ptr %74, align 8, !tbaa !52
  %347 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %346, ptr %347, align 8, !tbaa !54
  %348 = getelementptr i8, ptr %1, i64 8
  %349 = load ptr, ptr %348, align 8, !tbaa !60
  %350 = ptrtoint ptr %349 to i64
  %351 = and i64 %350, 63
  %352 = sub nsw i64 0, %351
  %353 = getelementptr inbounds i8, ptr %349, i64 %352
  %354 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %353, ptr %354, align 8, !tbaa !389
  %355 = ptrtoint ptr %346 to i64
  %356 = sub i64 0, %355
  %357 = and i64 %356, 63
  %358 = getelementptr inbounds nuw i8, ptr %346, i64 %357
  %359 = icmp ugt ptr %358, %349
  br i1 %359, label %380, label %360

360:                                              ; preds = %345
  store ptr %358, ptr %74, align 8, !tbaa !52
  store ptr %358, ptr %75, align 8, !tbaa !53
  %361 = icmp eq i64 %357, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %360
  store ptr %358, ptr %347, align 8, !tbaa !54
  br label %363

363:                                              ; preds = %362, %360, %343
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %364

364:                                              ; preds = %363, %340
  %365 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %366 = load ptr, ptr %365, align 8, !tbaa !388
  %367 = getelementptr inbounds i8, ptr %366, i64 -1024
  %368 = load ptr, ptr %75, align 8, !tbaa !53
  %369 = icmp ult ptr %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %364
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %377

371:                                              ; preds = %364
  %372 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %373 = load ptr, ptr %372, align 8, !tbaa !54
  %374 = icmp ult ptr %367, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  store ptr %367, ptr %372, align 8, !tbaa !54
  br label %376

376:                                              ; preds = %375, %371
  store ptr %367, ptr %365, align 8, !tbaa !388
  br label %377

377:                                              ; preds = %370, %376
  %378 = phi ptr [ %367, %376 ], [ null, %370 ]
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %378, ptr %379, align 8, !tbaa !418
  br label %400

380:                                              ; preds = %345
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %381, align 8, !tbaa !418
  %382 = load ptr, ptr %74, align 8, !tbaa !52
  %383 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %382, ptr %383, align 8, !tbaa !54
  %384 = getelementptr i8, ptr %1, i64 8
  %385 = load ptr, ptr %384, align 8, !tbaa !60
  %386 = ptrtoint ptr %385 to i64
  %387 = and i64 %386, 63
  %388 = sub nsw i64 0, %387
  %389 = getelementptr inbounds i8, ptr %385, i64 %388
  %390 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %389, ptr %390, align 8, !tbaa !389
  %391 = ptrtoint ptr %382 to i64
  %392 = sub i64 0, %391
  %393 = and i64 %392, 63
  %394 = getelementptr inbounds nuw i8, ptr %382, i64 %393
  %395 = icmp ugt ptr %394, %385
  br i1 %395, label %416, label %396

396:                                              ; preds = %380
  store ptr %394, ptr %74, align 8, !tbaa !52
  store ptr %394, ptr %75, align 8, !tbaa !53
  %397 = icmp eq i64 %393, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %396
  store ptr %394, ptr %383, align 8, !tbaa !54
  br label %399

399:                                              ; preds = %398, %396
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %400

400:                                              ; preds = %377, %399
  %401 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %402 = load ptr, ptr %401, align 8, !tbaa !388
  %403 = getelementptr inbounds i8, ptr %402, i64 -192
  %404 = load ptr, ptr %75, align 8, !tbaa !53
  %405 = icmp ult ptr %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %413

407:                                              ; preds = %400
  %408 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %409 = load ptr, ptr %408, align 8, !tbaa !54
  %410 = icmp ult ptr %403, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %407
  store ptr %403, ptr %408, align 8, !tbaa !54
  br label %412

412:                                              ; preds = %411, %407
  store ptr %403, ptr %401, align 8, !tbaa !388
  br label %413

413:                                              ; preds = %406, %412
  %414 = phi ptr [ %403, %412 ], [ null, %406 ]
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %414, ptr %415, align 8, !tbaa !419
  br label %436

416:                                              ; preds = %380
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %417, align 8, !tbaa !419
  %418 = load ptr, ptr %74, align 8, !tbaa !52
  %419 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %418, ptr %419, align 8, !tbaa !54
  %420 = getelementptr i8, ptr %1, i64 8
  %421 = load ptr, ptr %420, align 8, !tbaa !60
  %422 = ptrtoint ptr %421 to i64
  %423 = and i64 %422, 63
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %421, i64 %424
  %426 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %425, ptr %426, align 8, !tbaa !389
  %427 = ptrtoint ptr %418 to i64
  %428 = sub i64 0, %427
  %429 = and i64 %428, 63
  %430 = getelementptr inbounds nuw i8, ptr %418, i64 %429
  %431 = icmp ugt ptr %430, %421
  br i1 %431, label %452, label %432

432:                                              ; preds = %416
  store ptr %430, ptr %74, align 8, !tbaa !52
  store ptr %430, ptr %75, align 8, !tbaa !53
  %433 = icmp eq i64 %429, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %432
  store ptr %430, ptr %419, align 8, !tbaa !54
  br label %435

435:                                              ; preds = %434, %432
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %436

436:                                              ; preds = %413, %435
  %437 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %438 = load ptr, ptr %437, align 8, !tbaa !388
  %439 = getelementptr inbounds i8, ptr %438, i64 -256
  %440 = load ptr, ptr %75, align 8, !tbaa !53
  %441 = icmp ult ptr %439, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %436
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %449

443:                                              ; preds = %436
  %444 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %445 = load ptr, ptr %444, align 8, !tbaa !54
  %446 = icmp ult ptr %439, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  store ptr %439, ptr %444, align 8, !tbaa !54
  br label %448

448:                                              ; preds = %447, %443
  store ptr %439, ptr %437, align 8, !tbaa !388
  br label %449

449:                                              ; preds = %442, %448
  %450 = phi ptr [ %439, %448 ], [ null, %442 ]
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %450, ptr %451, align 8, !tbaa !420
  br label %472

452:                                              ; preds = %416
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %453, align 8, !tbaa !420
  %454 = load ptr, ptr %74, align 8, !tbaa !52
  %455 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %454, ptr %455, align 8, !tbaa !54
  %456 = getelementptr i8, ptr %1, i64 8
  %457 = load ptr, ptr %456, align 8, !tbaa !60
  %458 = ptrtoint ptr %457 to i64
  %459 = and i64 %458, 63
  %460 = sub nsw i64 0, %459
  %461 = getelementptr inbounds i8, ptr %457, i64 %460
  %462 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %461, ptr %462, align 8, !tbaa !389
  %463 = ptrtoint ptr %454 to i64
  %464 = sub i64 0, %463
  %465 = and i64 %464, 63
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 %465
  %467 = icmp ugt ptr %466, %457
  br i1 %467, label %488, label %468

468:                                              ; preds = %452
  store ptr %466, ptr %74, align 8, !tbaa !52
  store ptr %466, ptr %75, align 8, !tbaa !53
  %469 = icmp eq i64 %465, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %468
  store ptr %466, ptr %455, align 8, !tbaa !54
  br label %471

471:                                              ; preds = %470, %468
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %472

472:                                              ; preds = %449, %471
  %473 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %474 = load ptr, ptr %473, align 8, !tbaa !388
  %475 = getelementptr inbounds i8, ptr %474, i64 -128
  %476 = load ptr, ptr %75, align 8, !tbaa !53
  %477 = icmp ult ptr %475, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %472
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %485

479:                                              ; preds = %472
  %480 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %481 = load ptr, ptr %480, align 8, !tbaa !54
  %482 = icmp ult ptr %475, %481
  br i1 %482, label %483, label %484

483:                                              ; preds = %479
  store ptr %475, ptr %480, align 8, !tbaa !54
  br label %484

484:                                              ; preds = %483, %479
  store ptr %475, ptr %473, align 8, !tbaa !388
  br label %485

485:                                              ; preds = %478, %484
  %486 = phi ptr [ %475, %484 ], [ null, %478 ]
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %486, ptr %487, align 8, !tbaa !421
  br label %508

488:                                              ; preds = %452
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %489, align 8, !tbaa !421
  %490 = load ptr, ptr %74, align 8, !tbaa !52
  %491 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %490, ptr %491, align 8, !tbaa !54
  %492 = getelementptr i8, ptr %1, i64 8
  %493 = load ptr, ptr %492, align 8, !tbaa !60
  %494 = ptrtoint ptr %493 to i64
  %495 = and i64 %494, 63
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, ptr %493, i64 %496
  %498 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %497, ptr %498, align 8, !tbaa !389
  %499 = ptrtoint ptr %490 to i64
  %500 = sub i64 0, %499
  %501 = and i64 %500, 63
  %502 = getelementptr inbounds nuw i8, ptr %490, i64 %501
  %503 = icmp ugt ptr %502, %493
  br i1 %503, label %524, label %504

504:                                              ; preds = %488
  store ptr %502, ptr %74, align 8, !tbaa !52
  store ptr %502, ptr %75, align 8, !tbaa !53
  %505 = icmp eq i64 %501, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %504
  store ptr %502, ptr %491, align 8, !tbaa !54
  br label %507

507:                                              ; preds = %506, %504
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %508

508:                                              ; preds = %485, %507
  %509 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %510 = load ptr, ptr %509, align 8, !tbaa !388
  %511 = getelementptr inbounds i8, ptr %510, i64 -32832
  %512 = load ptr, ptr %75, align 8, !tbaa !53
  %513 = icmp ult ptr %511, %512
  br i1 %513, label %514, label %515

514:                                              ; preds = %508
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %521

515:                                              ; preds = %508
  %516 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %517 = load ptr, ptr %516, align 8, !tbaa !54
  %518 = icmp ult ptr %511, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  store ptr %511, ptr %516, align 8, !tbaa !54
  br label %520

520:                                              ; preds = %519, %515
  store ptr %511, ptr %509, align 8, !tbaa !388
  br label %521

521:                                              ; preds = %514, %520
  %522 = phi ptr [ %511, %520 ], [ null, %514 ]
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %522, ptr %523, align 8, !tbaa !422
  br label %544

524:                                              ; preds = %488
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %525, align 8, !tbaa !422
  %526 = load ptr, ptr %74, align 8, !tbaa !52
  %527 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %526, ptr %527, align 8, !tbaa !54
  %528 = getelementptr i8, ptr %1, i64 8
  %529 = load ptr, ptr %528, align 8, !tbaa !60
  %530 = ptrtoint ptr %529 to i64
  %531 = and i64 %530, 63
  %532 = sub nsw i64 0, %531
  %533 = getelementptr inbounds i8, ptr %529, i64 %532
  %534 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %533, ptr %534, align 8, !tbaa !389
  %535 = ptrtoint ptr %526 to i64
  %536 = sub i64 0, %535
  %537 = and i64 %536, 63
  %538 = getelementptr inbounds nuw i8, ptr %526, i64 %537
  %539 = icmp ugt ptr %538, %529
  br i1 %539, label %557, label %540

540:                                              ; preds = %524
  store ptr %538, ptr %74, align 8, !tbaa !52
  store ptr %538, ptr %75, align 8, !tbaa !53
  %541 = icmp eq i64 %537, 0
  br i1 %541, label %543, label %542

542:                                              ; preds = %540
  store ptr %538, ptr %527, align 8, !tbaa !54
  br label %543

543:                                              ; preds = %542, %540
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %544

544:                                              ; preds = %521, %543
  %545 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %546 = load ptr, ptr %545, align 8, !tbaa !388
  %547 = getelementptr inbounds i8, ptr %546, i64 -114816
  %548 = load ptr, ptr %75, align 8, !tbaa !53
  %549 = icmp ult ptr %547, %548
  br i1 %549, label %550, label %551

550:                                              ; preds = %544
  store i8 1, ptr %182, align 8, !tbaa !51
  br label %557

551:                                              ; preds = %544
  %552 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %553 = load ptr, ptr %552, align 8, !tbaa !54
  %554 = icmp ult ptr %547, %553
  br i1 %554, label %555, label %556

555:                                              ; preds = %551
  store ptr %547, ptr %552, align 8, !tbaa !54
  br label %556

556:                                              ; preds = %555, %551
  store ptr %547, ptr %545, align 8, !tbaa !388
  br label %557

557:                                              ; preds = %524, %550, %556
  %558 = phi ptr [ null, %550 ], [ %547, %556 ], [ null, %524 ]
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %558, ptr %559, align 8, !tbaa !423
  br label %560

560:                                              ; preds = %557, %337, %336
  %561 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %561, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !74
  %562 = load i8, ptr %182, align 8, !tbaa !51
  %563 = icmp eq i8 %562, 0
  %564 = select i1 %563, i64 0, i64 -64
  br label %565

565:                                              ; preds = %560, %178
  %566 = phi i64 [ -64, %178 ], [ %564, %560 ]
  ret i64 %566
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @HUF_optimalTableLog(i32 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((24, 32)) %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #2 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 2224
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 772
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !189
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %23, align 8, !tbaa !424
  %24 = load ptr, ptr %1, align 8, !tbaa !186
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !190
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
  %37 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %24, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load i16, ptr %38, align 4, !tbaa !191
  %40 = load i32, ptr %37, align 4, !tbaa !194
  %41 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %40, i1 true)
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 6
  %43 = load i16, ptr %42, align 2, !tbaa !195
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
  %53 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !196
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i8 [ %50, %46 ], [ %54, %51 ]
  %57 = getelementptr inbounds nuw i8, ptr %20, i64 %36
  store i8 %56, ptr %57, align 1, !tbaa !196
  %58 = trunc nuw nsw i32 %41 to i8
  %59 = xor i8 %58, 31
  %60 = getelementptr inbounds nuw i8, ptr %18, i64 %36
  store i8 %59, ptr %60, align 1, !tbaa !196
  %61 = icmp ugt i16 %43, 127
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %44, i1 true)
  %64 = trunc nuw nsw i32 %63 to i8
  %65 = sub nuw nsw i8 67, %64
  br label %70

66:                                               ; preds = %55
  %67 = zext nneg i16 %43 to i64
  %68 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !196
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i8 [ %65, %62 ], [ %69, %66 ]
  %72 = getelementptr inbounds nuw i8, ptr %22, i64 %36
  store i8 %71, ptr %72, align 1, !tbaa !196
  %73 = add nuw nsw i64 %36, 1
  %74 = icmp eq i64 %73, %34
  br i1 %74, label %75, label %35, !llvm.loop !197

75:                                               ; preds = %70, %11
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %77 = load i32, ptr %76, align 8, !tbaa !198
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %81 = load i32, ptr %80, align 4, !tbaa !199
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw i8, ptr %20, i64 %82
  store i8 35, ptr %83, align 1, !tbaa !196
  %84 = load i32, ptr %76, align 8, !tbaa !198
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i32 [ %84, %79 ], [ %77, %75 ]
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %90 = load i32, ptr %89, align 4, !tbaa !199
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds nuw i8, ptr %22, i64 %91
  store i8 52, ptr %92, align 1, !tbaa !196
  br label %93

93:                                               ; preds = %85, %88
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %94, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #30
  store i32 35, ptr %12, align 4, !tbaa !49
  %95 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %12, ptr noundef %20, i64 noundef %2, ptr noundef %9, i64 noundef %10) #30
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %97 = load i32, ptr %96, align 4, !tbaa !222
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 3548
  store i32 %97, ptr %98, align 4, !tbaa !222
  %99 = load i32, ptr %12, align 4, !tbaa !49
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 2224
  %101 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %98, ptr noundef %8, i32 noundef %99, i64 noundef %95, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %100, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #30
  store i32 %101, ptr %0, align 8, !tbaa !427
  %102 = ptrtoint ptr %6 to i64
  %103 = ptrtoint ptr %5 to i64
  %104 = sub i64 %102, %103
  %105 = load i32, ptr %12, align 4, !tbaa !49
  %106 = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %104, ptr noundef nonnull %15, i32 noundef 9, i32 noundef %101, ptr noundef %8, i32 noundef %105, ptr noundef %20, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %100, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #30
  %107 = icmp ult i64 %106, -119
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = icmp eq i32 %101, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  store i64 %106, ptr %23, align 8, !tbaa !424
  br label %113

111:                                              ; preds = %93
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %106, ptr %112, align 8, !tbaa !428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  br label %158

113:                                              ; preds = %108, %110
  %114 = getelementptr inbounds nuw i8, ptr %5, i64 %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #30
  store i32 31, ptr %13, align 4, !tbaa !49
  %115 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %13, ptr noundef %18, i64 noundef %2, ptr noundef %9, i64 noundef %10) #30
  %116 = load i32, ptr %13, align 4, !tbaa !49
  %117 = icmp ult i32 %116, 29
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %120 = load i32, ptr %119, align 4, !tbaa !226
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 3540
  store i32 %120, ptr %121, align 4, !tbaa !226
  %122 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %121, ptr noundef %8, i32 noundef %116, i64 noundef %115, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %118, i32 noundef %7) #30
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %122, ptr %123, align 4, !tbaa !429
  %124 = ptrtoint ptr %114 to i64
  %125 = sub i64 %102, %124
  %126 = load i32, ptr %13, align 4, !tbaa !49
  %127 = call i64 @ZSTD_buildCTable(ptr noundef %114, i64 noundef %125, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %122, ptr noundef %8, i32 noundef %126, ptr noundef %18, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #30
  %128 = icmp ult i64 %127, -119
  br i1 %128, label %129, label %132

129:                                              ; preds = %113
  %130 = icmp eq i32 %122, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  store i64 %127, ptr %23, align 8, !tbaa !424
  br label %134

132:                                              ; preds = %113
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %127, ptr %133, align 8, !tbaa !428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #30
  br label %158

134:                                              ; preds = %129, %131
  %135 = getelementptr inbounds nuw i8, ptr %114, i64 %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #30
  store i32 52, ptr %14, align 4, !tbaa !49
  %136 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %14, ptr noundef %22, i64 noundef %2, ptr noundef %9, i64 noundef %10) #30
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %138 = load i32, ptr %137, align 4, !tbaa !227
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 3544
  store i32 %138, ptr %139, align 4, !tbaa !227
  %140 = load i32, ptr %14, align 4, !tbaa !49
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 772
  %142 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %139, ptr noundef %8, i32 noundef %140, i64 noundef %136, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %141, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #30
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %142, ptr %143, align 8, !tbaa !430
  %144 = ptrtoint ptr %135 to i64
  %145 = sub i64 %102, %144
  %146 = load i32, ptr %14, align 4, !tbaa !49
  %147 = call i64 @ZSTD_buildCTable(ptr noundef %135, i64 noundef %145, ptr noundef nonnull %16, i32 noundef 9, i32 noundef %142, ptr noundef %8, i32 noundef %146, ptr noundef %22, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %141, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #30
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = icmp eq i32 %142, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  store i64 %147, ptr %23, align 8, !tbaa !424
  br label %154

152:                                              ; preds = %134
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %147, ptr %153, align 8, !tbaa !428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  br label %158

154:                                              ; preds = %149, %151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  %155 = add nuw nsw i64 %127, %106
  %156 = add nuw nsw i64 %155, %147
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %156, ptr %157, align 8, !tbaa !428
  br label %158

158:                                              ; preds = %152, %132, %111, %154
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #15 {
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = getelementptr i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = ptrtoint ptr %4 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = icmp ult i32 %13, -624951295
  br i1 %14, label %149, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !84
  %18 = shl nuw i32 1, %17
  %19 = load i32, ptr %6, align 4, !tbaa !86
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %21 = load i32, ptr %20, align 4, !tbaa !90
  %22 = icmp ugt i32 %21, 5
  %23 = sext i1 %22 to i32
  %24 = add i32 %19, %23
  %25 = shl nuw i32 1, %24
  %26 = add i32 %25, -1
  %27 = ptrtoint ptr %3 to i64
  %28 = sub i64 %27, %11
  %29 = trunc i64 %28 to i32
  %30 = and i32 %26, %29
  %31 = icmp samesign ult i32 %30, 2
  %32 = tail call i32 @llvm.umax.i32(i32 %25, i32 2)
  %33 = select i1 %31, i32 %32, i32 0
  %34 = tail call i32 @llvm.umax.i32(i32 %18, i32 %25)
  %35 = add nuw i32 %34, %30
  %36 = add i32 %35, %33
  %37 = sub i32 %29, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %9, i64 %38
  store ptr %39, ptr %8, align 8, !tbaa !240
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !237
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 %38
  store ptr %42, ptr %40, align 8, !tbaa !237
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = load i32, ptr %43, align 4, !tbaa !238
  %45 = add i32 %37, 2
  %46 = icmp ult i32 %44, %45
  %47 = sub i32 %44, %37
  %48 = select i1 %46, i32 2, i32 %47
  store i32 %48, ptr %43, align 4, !tbaa !238
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = load i32, ptr %49, align 8, !tbaa !239
  %51 = icmp ult i32 %50, %45
  %52 = sub i32 %50, %37
  %53 = select i1 %51, i32 2, i32 %52
  store i32 %53, ptr %49, align 8, !tbaa !239
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load i32, ptr %54, align 8, !tbaa !431
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !431
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %58, ptr %59, align 8, !tbaa !54
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %61 = load i32, ptr %60, align 4, !tbaa !85
  %62 = shl nuw i32 1, %61
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %64 = load ptr, ptr %63, align 8, !tbaa !411
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %64, i32 noundef %62, i32 noundef %37)
  %65 = load i32, ptr %20, align 4, !tbaa !90
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %67 = load i32, ptr %66, align 8, !tbaa !76
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %69 = load i32, ptr %68, align 4, !tbaa !405
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %15
  %72 = icmp eq i32 %65, 1
  br i1 %72, label %130, label %73

73:                                               ; preds = %71
  %74 = add i32 %65, -3
  %75 = icmp ult i32 %74, 3
  %76 = icmp eq i32 %67, 1
  %77 = and i1 %75, %76
  br i1 %77, label %130, label %78

78:                                               ; preds = %73, %15
  %79 = load i32, ptr %6, align 4, !tbaa !86
  %80 = shl nuw i32 1, %79
  %81 = icmp eq i32 %65, 6
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %83 = load ptr, ptr %82, align 8, !tbaa !412
  br i1 %81, label %84, label %129

84:                                               ; preds = %78
  %85 = sdiv i32 %80, 16
  %86 = icmp sgt i32 %80, 15
  br i1 %86, label %87, label %130

87:                                               ; preds = %84
  %88 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %89 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 48
  %91 = insertelement <4 x i32> poison, i32 %45, i64 0
  %92 = shufflevector <4 x i32> %91, <4 x i32> poison, <4 x i32> zeroinitializer
  %93 = insertelement <4 x i32> poison, i32 %37, i64 0
  %94 = shufflevector <4 x i32> %93, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %95

95:                                               ; preds = %95, %87
  %96 = phi i64 [ 0, %87 ], [ %126, %95 ]
  %97 = phi i32 [ 0, %87 ], [ %127, %95 ]
  %98 = getelementptr inbounds nuw i32, ptr %83, i64 %96
  %99 = load <4 x i32>, ptr %98, align 4, !tbaa !49
  %100 = icmp eq <4 x i32> %99, splat (i32 1)
  %101 = icmp ult <4 x i32> %99, %92
  %102 = sub <4 x i32> %99, %94
  %103 = select <4 x i1> %101, <4 x i32> zeroinitializer, <4 x i32> %102
  %104 = select <4 x i1> %100, <4 x i32> splat (i32 1), <4 x i32> %103
  store <4 x i32> %104, ptr %98, align 4, !tbaa !49
  %105 = getelementptr inbounds nuw i32, ptr %88, i64 %96
  %106 = load <4 x i32>, ptr %105, align 4, !tbaa !49
  %107 = icmp eq <4 x i32> %106, splat (i32 1)
  %108 = icmp ult <4 x i32> %106, %92
  %109 = sub <4 x i32> %106, %94
  %110 = select <4 x i1> %108, <4 x i32> zeroinitializer, <4 x i32> %109
  %111 = select <4 x i1> %107, <4 x i32> splat (i32 1), <4 x i32> %110
  store <4 x i32> %111, ptr %105, align 4, !tbaa !49
  %112 = getelementptr inbounds nuw i32, ptr %89, i64 %96
  %113 = load <4 x i32>, ptr %112, align 4, !tbaa !49
  %114 = icmp eq <4 x i32> %113, splat (i32 1)
  %115 = icmp ult <4 x i32> %113, %92
  %116 = sub <4 x i32> %113, %94
  %117 = select <4 x i1> %115, <4 x i32> zeroinitializer, <4 x i32> %116
  %118 = select <4 x i1> %114, <4 x i32> splat (i32 1), <4 x i32> %117
  store <4 x i32> %118, ptr %112, align 4, !tbaa !49
  %119 = getelementptr inbounds nuw i32, ptr %90, i64 %96
  %120 = load <4 x i32>, ptr %119, align 4, !tbaa !49
  %121 = icmp eq <4 x i32> %120, splat (i32 1)
  %122 = icmp ult <4 x i32> %120, %92
  %123 = sub <4 x i32> %120, %94
  %124 = select <4 x i1> %122, <4 x i32> zeroinitializer, <4 x i32> %123
  %125 = select <4 x i1> %121, <4 x i32> splat (i32 1), <4 x i32> %124
  store <4 x i32> %125, ptr %119, align 4, !tbaa !49
  %126 = add nuw nsw i64 %96, 16
  %127 = add nuw nsw i32 %97, 1
  %128 = icmp eq i32 %127, %85
  br i1 %128, label %130, label %95, !llvm.loop !432

129:                                              ; preds = %78
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %83, i32 noundef %80, i32 noundef %37)
  br label %130

130:                                              ; preds = %95, %129, %84, %73, %71
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %132 = load i32, ptr %131, align 8, !tbaa !406
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = shl nuw i32 1, %132
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %137 = load ptr, ptr %136, align 8, !tbaa !413
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %137, i32 noundef %135, i32 noundef %37)
  br label %138

138:                                              ; preds = %130, %134
  %139 = load ptr, ptr %59, align 8, !tbaa !54
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %141 = load ptr, ptr %140, align 8, !tbaa !53
  %142 = icmp ult ptr %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store ptr %141, ptr %59, align 8, !tbaa !54
  br label %144

144:                                              ; preds = %138, %143
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %146 = load i32, ptr %145, align 4, !tbaa !241
  %147 = tail call i32 @llvm.usub.sat.i32(i32 %146, i32 %37)
  store i32 %147, ptr %145, align 4, !tbaa !241
  store i32 0, ptr %7, align 8, !tbaa !408
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %148, align 8, !tbaa !410
  br label %149

149:                                              ; preds = %144, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
  %7 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %90

9:                                                ; preds = %6
  %10 = icmp eq i64 %7, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %12 = load i32, ptr %11, align 8, !tbaa !250
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %14, label %15

14:                                               ; preds = %9
  br i1 %13, label %82, label %90

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  br i1 %13, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 5616
  %21 = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %20)
  %22 = icmp ult i64 %21, -119
  br i1 %22, label %23, label %90

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %17, align 8, !tbaa !48
  %25 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %25, ptr %17, align 8, !tbaa !48
  br label %90

26:                                               ; preds = %15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %33 = load i64, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %37 = load ptr, ptr %36, align 8, !tbaa !200
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %39 = load ptr, ptr %38, align 8, !tbaa !201
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %1, i64 noundef %2, ptr noundef %37, i64 noundef %42, ptr noundef nonnull readonly %16, ptr noundef %18, ptr noundef %28, ptr noundef nonnull readonly %29, ptr noundef %31, i64 noundef %33, i32 noundef %35)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %26
  %46 = icmp eq i64 %43, -70
  %47 = icmp ule i64 %4, %2
  %48 = and i1 %47, %46
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = icmp ult i64 %43, -119
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %53 = load i32, ptr %52, align 4, !tbaa !90
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 7)
  %55 = add i32 %54, -1
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 %4, %56
  %58 = add i64 %4, -2
  %59 = sub i64 %58, %57
  %60 = icmp ult i64 %43, %59
  %61 = select i1 %60, i64 %43, i64 0
  br label %62

62:                                               ; preds = %26, %45, %49, %51
  %63 = phi i64 [ %43, %49 ], [ 0, %26 ], [ 0, %45 ], [ %61, %51 ]
  %64 = icmp eq i32 %5, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %67 = load i32, ptr %66, align 8, !tbaa !249
  %68 = icmp eq i32 %67, 0
  %69 = icmp ult i64 %63, 25
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr %3, align 1, !tbaa !196
  store i8 %75, ptr %1, align 1, !tbaa !196
  br label %82

76:                                               ; preds = %62, %65, %71
  %77 = add i64 %63, -2
  %78 = icmp ult i64 %77, -121
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load <2 x ptr>, ptr %17, align 8, !tbaa !48
  %81 = shufflevector <2 x ptr> %80, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %81, ptr %17, align 8, !tbaa !48
  br label %82

82:                                               ; preds = %14, %74, %79, %76
  %83 = phi i64 [ %63, %79 ], [ %63, %76 ], [ 0, %14 ], [ 1, %74 ]
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 5604
  %87 = load i32, ptr %86, align 4, !tbaa !167
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, ptr %86, align 4, !tbaa !167
  br label %90

90:                                               ; preds = %14, %6, %82, %89, %19, %23
  %91 = phi i64 [ 0, %23 ], [ %21, %19 ], [ %83, %89 ], [ %83, %82 ], [ -106, %14 ], [ %7, %6 ]
  ret i64 %91
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 {
  %4 = sdiv i32 %1, 16
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = add i32 %2, 2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = insertelement <4 x i32> poison, i32 %7, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = insertelement <4 x i32> poison, i32 %2, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %6, %15
  %16 = phi i64 [ 0, %6 ], [ %38, %15 ]
  %17 = phi i32 [ 0, %6 ], [ %39, %15 ]
  %18 = getelementptr inbounds nuw i32, ptr %0, i64 %16
  %19 = load <4 x i32>, ptr %18, align 4, !tbaa !49
  %20 = icmp ult <4 x i32> %19, %12
  %21 = sub <4 x i32> %19, %14
  %22 = select <4 x i1> %20, <4 x i32> zeroinitializer, <4 x i32> %21
  store <4 x i32> %22, ptr %18, align 4, !tbaa !49
  %23 = getelementptr inbounds nuw i32, ptr %8, i64 %16
  %24 = load <4 x i32>, ptr %23, align 4, !tbaa !49
  %25 = icmp ult <4 x i32> %24, %12
  %26 = sub <4 x i32> %24, %14
  %27 = select <4 x i1> %25, <4 x i32> zeroinitializer, <4 x i32> %26
  store <4 x i32> %27, ptr %23, align 4, !tbaa !49
  %28 = getelementptr inbounds nuw i32, ptr %9, i64 %16
  %29 = load <4 x i32>, ptr %28, align 4, !tbaa !49
  %30 = icmp ult <4 x i32> %29, %12
  %31 = sub <4 x i32> %29, %14
  %32 = select <4 x i1> %30, <4 x i32> zeroinitializer, <4 x i32> %31
  store <4 x i32> %32, ptr %28, align 4, !tbaa !49
  %33 = getelementptr inbounds nuw i32, ptr %10, i64 %16
  %34 = load <4 x i32>, ptr %33, align 4, !tbaa !49
  %35 = icmp ult <4 x i32> %34, %12
  %36 = sub <4 x i32> %34, %14
  %37 = select <4 x i1> %35, <4 x i32> zeroinitializer, <4 x i32> %36
  store <4 x i32> %37, ptr %33, align 4, !tbaa !49
  %38 = add nuw nsw i64 %16, 16
  %39 = add nuw nsw i32 %17, 1
  %40 = icmp eq i32 %39, %4
  br i1 %40, label %41, label %15, !llvm.loop !432

41:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #12

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.RawSeqStore_t, align 8
  %5 = alloca %struct.ZSTD_SequencePosition, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %8 = icmp ult i64 %2, 7
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %11 = load i32, ptr %10, align 4, !tbaa !175
  %12 = icmp ugt i32 %11, 6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %13, i64 noundef %2) #30
  br label %293

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %17 = load i32, ptr %16, align 4, !tbaa !433
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %13, i64 noundef %2, i32 noundef %17) #30
  br label %293

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %22, ptr %23, align 8, !tbaa !201
  %24 = load ptr, ptr %20, align 8, !tbaa !186
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %24, ptr %25, align 8, !tbaa !190
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %26, align 8, !tbaa !198
  %27 = load ptr, ptr %19, align 8, !tbaa !55
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store ptr %27, ptr %28, align 8, !tbaa !434
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %30 = load i32, ptr %29, align 8, !tbaa !435
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %30, ptr %31, align 8, !tbaa !436
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %33 = load ptr, ptr %32, align 8, !tbaa !437
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %39 = load i32, ptr %38, align 4, !tbaa !241
  %40 = add i32 %39, 384
  %41 = icmp ult i32 %40, %37
  br i1 %41, label %42, label %47

42:                                               ; preds = %18
  %43 = sub i32 %37, %39
  %44 = add i32 %43, -384
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 192)
  %46 = sub i32 %37, %45
  store i32 %46, ptr %38, align 4, !tbaa !241
  br label %47

47:                                               ; preds = %42, %18
  %48 = getelementptr i8, ptr %0, i64 3264
  %49 = load i32, ptr %48, align 8, !tbaa !239
  %50 = getelementptr i8, ptr %0, i64 3268
  %51 = load i32, ptr %50, align 4, !tbaa !238
  %52 = icmp ult i32 %51, %49
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %55 = load ptr, ptr %54, align 8, !tbaa !410
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 140
  %59 = load i32, ptr %58, align 4, !tbaa !405
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i64 2, i64 3
  br label %62

62:                                               ; preds = %47, %53, %57
  %63 = phi i64 [ 1, %47 ], [ %61, %57 ], [ 0, %53 ]
  %64 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 5616
  %68 = load i32, ptr %64, align 4, !tbaa !49
  store i32 %68, ptr %67, align 4, !tbaa !49
  %69 = getelementptr inbounds nuw i8, ptr %27, i64 5620
  %70 = load i32, ptr %69, align 4, !tbaa !49
  %71 = getelementptr inbounds nuw i8, ptr %66, i64 5620
  store i32 %70, ptr %71, align 4, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %27, i64 5624
  %73 = load i32, ptr %72, align 4, !tbaa !49
  %74 = getelementptr inbounds nuw i8, ptr %66, i64 5624
  store i32 %73, ptr %74, align 4, !tbaa !49
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %77 = load i64, ptr %76, align 8, !tbaa !438
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %79 = load i64, ptr %78, align 8, !tbaa !233
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %62
  %82 = getelementptr i8, ptr %0, i64 448
  %83 = load ptr, ptr %82, align 8, !tbaa !127
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %293

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %87 = load i32, ptr %86, align 8, !tbaa !172
  %88 = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %75, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %67, i32 noundef %87, ptr noundef %1, i64 noundef %2) #30
  br label %285

89:                                               ; preds = %62
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %91 = load i32, ptr %90, align 8, !tbaa !242
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #30
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, i8 0, i64 24, i1 false)
  %95 = getelementptr i8, ptr %0, i64 448
  %96 = load ptr, ptr %95, align 8, !tbaa !127
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %100 = load ptr, ptr %99, align 8, !tbaa !394
  store ptr %100, ptr %4, align 8, !tbaa !439
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %102 = load i64, ptr %101, align 8, !tbaa !395
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %102, ptr %103, align 8, !tbaa !440
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %105 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %104, ptr noundef nonnull %4, ptr noundef nonnull %90, ptr noundef %1, i64 noundef %2) #30
  %106 = icmp ult i64 %105, -119
  br i1 %106, label %109, label %107

107:                                              ; preds = %98, %93
  %108 = phi i64 [ -41, %93 ], [ %105, %98 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  br label %293

109:                                              ; preds = %98
  %110 = load ptr, ptr %65, align 8, !tbaa !56
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 5616
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %113 = load i32, ptr %112, align 8, !tbaa !172
  %114 = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %111, i32 noundef %113, ptr noundef %1, i64 noundef %2) #30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  br label %285

115:                                              ; preds = %89
  %116 = getelementptr i8, ptr %0, i64 448
  %117 = load ptr, ptr %116, align 8, !tbaa !127
  %118 = icmp eq ptr %117, null
  br i1 %118, label %267, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %7, align 4, !tbaa !244
  %121 = shl nuw i32 1, %120
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %123 = load ptr, ptr %122, align 8, !tbaa !441
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  %125 = load ptr, ptr %124, align 8, !tbaa !398
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  %127 = load i64, ptr %126, align 8, !tbaa !397
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %129 = load i32, ptr %128, align 4, !tbaa !442
  %130 = zext i32 %121 to i64
  %131 = tail call i64 %117(ptr noundef %123, ptr noundef %125, i64 noundef %127, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %129, i64 noundef %130) #30
  %132 = load i64, ptr %126, align 8, !tbaa !397
  %133 = add i64 %131, -1
  %134 = icmp ult i64 %133, %132
  br i1 %134, label %135, label %242

135:                                              ; preds = %119
  %136 = load ptr, ptr %124, align 8, !tbaa !398
  %137 = getelementptr %struct.ZSTD_Sequence, ptr %136, i64 %131
  %138 = getelementptr i8, ptr %137, i64 -16
  %139 = load i32, ptr %138, align 4, !tbaa !49
  %140 = getelementptr i8, ptr %137, i64 -8
  %141 = load i32, ptr %140, align 4, !tbaa !49
  %142 = icmp eq i32 %139, 0
  %143 = icmp eq i32 %141, 0
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = icmp eq i64 %131, %132
  br i1 %146, label %242, label %147

147:                                              ; preds = %145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %137, i8 0, i64 16, i1 false)
  %148 = add i64 %131, 1
  br label %149

149:                                              ; preds = %135, %147
  %150 = phi i64 [ %148, %147 ], [ %131, %135 ]
  %151 = icmp ult i64 %150, -119
  br i1 %151, label %152, label %242

152:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %153 = load ptr, ptr %124, align 8, !tbaa !398
  %154 = icmp eq i64 %150, 0
  br i1 %154, label %233, label %155

155:                                              ; preds = %152
  %156 = and i64 %150, 3
  %157 = icmp ult i64 %150, 4
  br i1 %157, label %204, label %158

158:                                              ; preds = %155
  %159 = and i64 %150, -4
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi i64 [ 0, %158 ], [ %201, %160 ]
  %162 = phi i64 [ 0, %158 ], [ %196, %160 ]
  %163 = phi i64 [ 0, %158 ], [ %200, %160 ]
  %164 = phi i64 [ 0, %158 ], [ %202, %160 ]
  %165 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %153, i64 %161
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 4
  %167 = load i32, ptr %166, align 4, !tbaa !215
  %168 = zext i32 %167 to i64
  %169 = add i64 %162, %168
  %170 = getelementptr inbounds nuw i8, ptr %165, i64 8
  %171 = load i32, ptr %170, align 4, !tbaa !214
  %172 = zext i32 %171 to i64
  %173 = add i64 %163, %172
  %174 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %153, i64 %161
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 20
  %176 = load i32, ptr %175, align 4, !tbaa !215
  %177 = zext i32 %176 to i64
  %178 = add i64 %169, %177
  %179 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %180 = load i32, ptr %179, align 4, !tbaa !214
  %181 = zext i32 %180 to i64
  %182 = add i64 %173, %181
  %183 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %153, i64 %161
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 36
  %185 = load i32, ptr %184, align 4, !tbaa !215
  %186 = zext i32 %185 to i64
  %187 = add i64 %178, %186
  %188 = getelementptr inbounds nuw i8, ptr %183, i64 40
  %189 = load i32, ptr %188, align 4, !tbaa !214
  %190 = zext i32 %189 to i64
  %191 = add i64 %182, %190
  %192 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %153, i64 %161
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 52
  %194 = load i32, ptr %193, align 4, !tbaa !215
  %195 = zext i32 %194 to i64
  %196 = add i64 %187, %195
  %197 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %198 = load i32, ptr %197, align 4, !tbaa !214
  %199 = zext i32 %198 to i64
  %200 = add i64 %191, %199
  %201 = add nuw i64 %161, 4
  %202 = add i64 %164, 4
  %203 = icmp eq i64 %202, %159
  br i1 %203, label %204, label %160, !llvm.loop !443

204:                                              ; preds = %160, %155
  %205 = phi i64 [ poison, %155 ], [ %196, %160 ]
  %206 = phi i64 [ poison, %155 ], [ %200, %160 ]
  %207 = phi i64 [ 0, %155 ], [ %201, %160 ]
  %208 = phi i64 [ 0, %155 ], [ %196, %160 ]
  %209 = phi i64 [ 0, %155 ], [ %200, %160 ]
  %210 = icmp eq i64 %156, 0
  br i1 %210, label %228, label %211

211:                                              ; preds = %204, %211
  %212 = phi i64 [ %225, %211 ], [ %207, %204 ]
  %213 = phi i64 [ %220, %211 ], [ %208, %204 ]
  %214 = phi i64 [ %224, %211 ], [ %209, %204 ]
  %215 = phi i64 [ %226, %211 ], [ 0, %204 ]
  %216 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %153, i64 %212
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 4
  %218 = load i32, ptr %217, align 4, !tbaa !215
  %219 = zext i32 %218 to i64
  %220 = add i64 %213, %219
  %221 = getelementptr inbounds nuw i8, ptr %216, i64 8
  %222 = load i32, ptr %221, align 4, !tbaa !214
  %223 = zext i32 %222 to i64
  %224 = add i64 %214, %223
  %225 = add nuw i64 %212, 1
  %226 = add i64 %215, 1
  %227 = icmp eq i64 %226, %156
  br i1 %227, label %228, label %211, !llvm.loop !444

228:                                              ; preds = %211, %204
  %229 = phi i64 [ %205, %204 ], [ %220, %211 ]
  %230 = phi i64 [ %206, %204 ], [ %224, %211 ]
  %231 = add i64 %230, %229
  %232 = icmp ugt i64 %231, %2
  br i1 %232, label %240, label %233

233:                                              ; preds = %152, %228
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %235 = load i32, ptr %234, align 8, !tbaa !351
  %236 = call i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %153, i64 noundef %150, ptr noundef %1, i64 noundef %2, i32 noundef %235)
  %237 = icmp ult i64 %236, -119
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %239, align 8, !tbaa !445
  br label %240

240:                                              ; preds = %228, %233, %238
  %241 = phi i64 [ 0, %238 ], [ %236, %233 ], [ -107, %228 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %293

242:                                              ; preds = %145, %119, %149
  %243 = phi i64 [ %150, %149 ], [ -106, %119 ], [ -106, %145 ]
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 436
  %245 = load i32, ptr %244, align 4, !tbaa !446
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %293, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %249 = load i32, ptr %248, align 4, !tbaa !175
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %251 = load i32, ptr %250, align 8, !tbaa !172
  %252 = add i32 %249, -6
  %253 = icmp ult i32 %252, -3
  %254 = icmp ne i32 %251, 1
  %255 = or i1 %253, %254
  %256 = add nsw i32 %249, -3
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds nuw [4 x [3 x ptr]], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 0, i64 %63, i64 %257
  %259 = sext i32 %249 to i64
  %260 = getelementptr inbounds [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 0, i64 %63, i64 %259
  %261 = select i1 %255, ptr %260, ptr %258
  %262 = load ptr, ptr %261, align 8, !tbaa !48
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %263, align 8, !tbaa !445
  %264 = load ptr, ptr %65, align 8, !tbaa !56
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 5616
  %266 = tail call i64 %262(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %265, ptr noundef %1, i64 noundef %2) #30
  br label %285

267:                                              ; preds = %115
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %269 = load i32, ptr %268, align 4, !tbaa !175
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %271 = load i32, ptr %270, align 8, !tbaa !172
  %272 = add i32 %269, -6
  %273 = icmp ult i32 %272, -3
  %274 = icmp ne i32 %271, 1
  %275 = or i1 %273, %274
  %276 = add nsw i32 %269, -3
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds nuw [4 x [3 x ptr]], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 0, i64 %63, i64 %277
  %279 = sext i32 %269 to i64
  %280 = getelementptr inbounds [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 0, i64 %63, i64 %279
  %281 = select i1 %275, ptr %280, ptr %278
  %282 = load ptr, ptr %281, align 8, !tbaa !48
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %283, align 8, !tbaa !445
  %284 = tail call i64 %282(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %67, ptr noundef %1, i64 noundef %2) #30
  br label %285

285:                                              ; preds = %247, %109, %267, %85
  %286 = phi i64 [ %88, %85 ], [ %114, %109 ], [ %266, %247 ], [ %284, %267 ]
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %288 = sub i64 0, %286
  %289 = getelementptr inbounds i8, ptr %287, i64 %288
  %290 = load ptr, ptr %23, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %290, ptr nonnull readonly align 1 %289, i64 %286, i1 false)
  %291 = load ptr, ptr %23, align 8, !tbaa !201
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %286
  store ptr %292, ptr %23, align 8, !tbaa !201
  br label %293

293:                                              ; preds = %242, %240, %107, %81, %14, %15, %285
  %294 = phi i64 [ 0, %285 ], [ 1, %15 ], [ 1, %14 ], [ %108, %107 ], [ -41, %81 ], [ %243, %242 ], [ %241, %240 ]
  ret i64 %294
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #22 {
  %8 = alloca %struct.repcodes_s, align 8
  %9 = load i32, ptr %1, align 8, !tbaa !447
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #30
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !266
  br label %24

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %23 = load i64, ptr %22, align 8, !tbaa !123
  br label %24

24:                                               ; preds = %17, %21, %14
  %25 = phi i64 [ %16, %14 ], [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %28, i64 12, i1 false)
  %29 = zext i32 %9 to i64
  %30 = icmp ugt i64 %3, %29
  br i1 %30, label %31, label %338

31:                                               ; preds = %24
  %32 = load i32, ptr %8, align 8
  %33 = icmp eq i32 %6, 2
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %39 = and i64 %25, 4294967295
  %40 = getelementptr i8, ptr %0, i64 448
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 260
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

52:                                               ; preds = %31, %328
  %53 = phi i32 [ %51, %31 ], [ %114, %328 ]
  %54 = phi i32 [ %50, %31 ], [ %115, %328 ]
  %55 = phi i64 [ %29, %31 ], [ %336, %328 ]
  %56 = phi i32 [ %9, %31 ], [ %335, %328 ]
  %57 = phi ptr [ %4, %31 ], [ %334, %328 ]
  %58 = phi i32 [ %32, %31 ], [ %116, %328 ]
  %59 = ptrtoint ptr %57 to i64
  %60 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %55
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !214
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, ptr %60, align 4, !tbaa !212
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %338, label %67

67:                                               ; preds = %52, %64
  %68 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !215
  br i1 %33, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, ptr %60, align 4, !tbaa !212
  %72 = add i32 %71, 3
  br label %113

73:                                               ; preds = %67
  %74 = icmp eq i32 %69, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, ptr %60, align 4, !tbaa !212
  %77 = add i32 %76, 3
  %78 = icmp ne i32 %76, %58
  %79 = select i1 %74, i1 true, i1 %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = icmp eq i32 %76, %54
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = select i1 %74, i32 1, i32 2
  br label %94

84:                                               ; preds = %80
  %85 = icmp eq i32 %76, %53
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = xor i32 %75, 3
  br label %94

88:                                               ; preds = %84
  %89 = add i32 %58, -1
  %90 = icmp eq i32 %76, %89
  %91 = select i1 %74, i1 %90, i1 false
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = icmp ugt i32 %77, 3
  br i1 %93, label %109, label %94

94:                                               ; preds = %88, %73, %86, %82, %92
  %95 = phi i32 [ %77, %92 ], [ %87, %86 ], [ %83, %82 ], [ 1, %73 ], [ 3, %88 ]
  %96 = xor i1 %74, true
  %97 = sext i1 %96 to i32
  %98 = add nsw i32 %95, %97
  switch i32 %98, label %101 [
    i32 0, label %113
    i32 3, label %99
  ]

99:                                               ; preds = %94
  %100 = add i32 %58, -1
  br label %105

101:                                              ; preds = %94
  %102 = zext i32 %98 to i64
  %103 = getelementptr inbounds nuw i32, ptr %8, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !49
  br label %105

105:                                              ; preds = %101, %99
  %106 = phi i32 [ %100, %99 ], [ %104, %101 ]
  %107 = icmp eq i32 %98, 1
  %108 = select i1 %107, i32 %53, i32 %54
  br label %109

109:                                              ; preds = %92, %105
  %110 = phi i32 [ %108, %105 ], [ %54, %92 ]
  %111 = phi i32 [ %95, %105 ], [ %77, %92 ]
  %112 = phi i32 [ %106, %105 ], [ %76, %92 ]
  store i32 %110, ptr %35, align 8, !tbaa !49
  store i32 %58, ptr %34, align 4, !tbaa !49
  store i32 %112, ptr %8, align 8, !tbaa !49
  br label %113

113:                                              ; preds = %109, %94, %70
  %114 = phi i32 [ %53, %70 ], [ %53, %94 ], [ %110, %109 ]
  %115 = phi i32 [ %54, %70 ], [ %54, %94 ], [ %58, %109 ]
  %116 = phi i32 [ %58, %70 ], [ %58, %94 ], [ %112, %109 ]
  %117 = phi i32 [ %72, %70 ], [ %95, %94 ], [ %111, %109 ]
  %118 = load i32, ptr %36, align 8, !tbaa !369
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %143, label %120

120:                                              ; preds = %113
  %121 = add i32 %69, %62
  %122 = zext i32 %121 to i64
  %123 = load i64, ptr %37, align 8, !tbaa !449
  %124 = add i64 %123, %122
  store i64 %124, ptr %37, align 8, !tbaa !449
  %125 = load i32, ptr %38, align 4, !tbaa !244
  %126 = shl nuw i32 1, %125
  %127 = zext i32 %126 to i64
  %128 = icmp ugt i64 %124, %127
  %129 = add i64 %124, %39
  %130 = select i1 %128, i64 %127, i64 %129
  %131 = zext i32 %117 to i64
  %132 = add i64 %130, 3
  %133 = icmp ult i64 %132, %131
  br i1 %133, label %403, label %134

134:                                              ; preds = %120
  %135 = load ptr, ptr %40, align 8, !tbaa !127
  %136 = icmp ne ptr %135, null
  %137 = load i32, ptr %41, align 4, !tbaa !433
  %138 = icmp eq i32 %137, 3
  %139 = or i1 %136, %138
  %140 = select i1 %139, i64 3, i64 4
  %141 = zext i32 %62 to i64
  %142 = icmp samesign ugt i64 %140, %141
  br i1 %142, label %403, label %143

143:                                              ; preds = %113, %134
  %144 = load i32, ptr %1, align 8, !tbaa !447
  %145 = sub i32 %56, %144
  %146 = zext i32 %145 to i64
  %147 = load i64, ptr %42, align 8, !tbaa !358
  %148 = icmp ugt i64 %147, %146
  br i1 %148, label %149, label %403

149:                                              ; preds = %143
  %150 = zext i32 %69 to i64
  %151 = zext i32 %62 to i64
  %152 = getelementptr inbounds nuw i8, ptr %57, i64 %150
  %153 = icmp ugt ptr %152, %44
  %154 = load ptr, ptr %45, align 8, !tbaa !201
  br i1 %153, label %178, label %155

155:                                              ; preds = %149
  %156 = load <2 x i64>, ptr %57, align 1, !tbaa !196
  store <2 x i64> %156, ptr %154, align 1, !tbaa !196
  %157 = icmp ugt i32 %69, 16
  br i1 %157, label %158, label %299

158:                                              ; preds = %155
  %159 = load ptr, ptr %45, align 8, !tbaa !201
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %161 = getelementptr inbounds nuw i8, ptr %57, i64 16
  %162 = getelementptr i8, ptr %159, i64 %150
  %163 = load <2 x i64>, ptr %161, align 1, !tbaa !196
  store <2 x i64> %163, ptr %160, align 1, !tbaa !196
  %164 = add i32 %69, -16
  %165 = icmp ult i32 %164, 17
  br i1 %165, label %299, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds nuw i8, ptr %159, i64 32
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %167, %166 ], [ %176, %168 ]
  %170 = phi ptr [ %161, %166 ], [ %174, %168 ]
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 16
  %172 = load <2 x i64>, ptr %171, align 1, !tbaa !196
  store <2 x i64> %172, ptr %169, align 1, !tbaa !196
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %174 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %175 = load <2 x i64>, ptr %174, align 1, !tbaa !196
  store <2 x i64> %175, ptr %173, align 1, !tbaa !196
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %177 = icmp ult ptr %176, %162
  br i1 %177, label %168, label %303, !llvm.loop !450

178:                                              ; preds = %149
  %179 = icmp ugt ptr %57, %44
  br i1 %179, label %198, label %180

180:                                              ; preds = %178
  %181 = ptrtoint ptr %57 to i64
  %182 = sub i64 %46, %181
  %183 = getelementptr inbounds i8, ptr %154, i64 %182
  %184 = load <2 x i64>, ptr %57, align 1, !tbaa !196
  store <2 x i64> %184, ptr %154, align 1, !tbaa !196
  %185 = icmp ult i64 %182, 17
  br i1 %185, label %198, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds nuw i8, ptr %154, i64 16
  br label %188

188:                                              ; preds = %188, %186
  %189 = phi ptr [ %187, %186 ], [ %196, %188 ]
  %190 = phi ptr [ %57, %186 ], [ %194, %188 ]
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 16
  %192 = load <2 x i64>, ptr %191, align 1, !tbaa !196
  store <2 x i64> %192, ptr %189, align 1, !tbaa !196
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 16
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %195 = load <2 x i64>, ptr %194, align 1, !tbaa !196
  store <2 x i64> %195, ptr %193, align 1, !tbaa !196
  %196 = getelementptr inbounds nuw i8, ptr %189, i64 32
  %197 = icmp ult ptr %196, %183
  br i1 %197, label %188, label %198, !llvm.loop !450

198:                                              ; preds = %188, %180, %178
  %199 = phi ptr [ %44, %180 ], [ %57, %178 ], [ %44, %188 ]
  %200 = phi ptr [ %183, %180 ], [ %154, %178 ], [ %183, %188 ]
  %201 = icmp ult ptr %199, %152
  br i1 %201, label %202, label %303

202:                                              ; preds = %198
  %203 = ptrtoint ptr %199 to i64
  %204 = ptrtoint ptr %200 to i64
  %205 = ptrtoint ptr %199 to i64
  %206 = add i64 %59, %150
  %207 = sub i64 %206, %205
  %208 = icmp ult i64 %207, 4
  %209 = sub i64 %204, %203
  %210 = icmp ult i64 %209, 32
  %211 = select i1 %208, i1 true, i1 %210
  br i1 %211, label %247, label %212

212:                                              ; preds = %202
  %213 = icmp ult i64 %207, 32
  br i1 %213, label %233, label %214

214:                                              ; preds = %212
  %215 = and i64 %207, -32
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi i64 [ 0, %214 ], [ %224, %216 ]
  %218 = getelementptr i8, ptr %200, i64 %217
  %219 = getelementptr i8, ptr %199, i64 %217
  %220 = getelementptr i8, ptr %219, i64 16
  %221 = load <16 x i8>, ptr %219, align 1, !tbaa !196
  %222 = load <16 x i8>, ptr %220, align 1, !tbaa !196
  %223 = getelementptr i8, ptr %218, i64 16
  store <16 x i8> %221, ptr %218, align 1, !tbaa !196
  store <16 x i8> %222, ptr %223, align 1, !tbaa !196
  %224 = add nuw i64 %217, 32
  %225 = icmp eq i64 %224, %215
  br i1 %225, label %226, label %216, !llvm.loop !451

226:                                              ; preds = %216
  %227 = icmp eq i64 %207, %215
  br i1 %227, label %303, label %228

228:                                              ; preds = %226
  %229 = getelementptr i8, ptr %200, i64 %215
  %230 = getelementptr i8, ptr %199, i64 %215
  %231 = and i64 %207, 28
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %247, label %233

233:                                              ; preds = %228, %212
  %234 = phi i64 [ %215, %228 ], [ 0, %212 ]
  %235 = and i64 %207, -4
  %236 = getelementptr i8, ptr %200, i64 %235
  %237 = getelementptr i8, ptr %199, i64 %235
  br label %238

238:                                              ; preds = %238, %233
  %239 = phi i64 [ %234, %233 ], [ %243, %238 ]
  %240 = getelementptr i8, ptr %200, i64 %239
  %241 = getelementptr i8, ptr %199, i64 %239
  %242 = load <4 x i8>, ptr %241, align 1, !tbaa !196
  store <4 x i8> %242, ptr %240, align 1, !tbaa !196
  %243 = add nuw i64 %239, 4
  %244 = icmp eq i64 %243, %235
  br i1 %244, label %245, label %238, !llvm.loop !452

245:                                              ; preds = %238
  %246 = icmp eq i64 %207, %235
  br i1 %246, label %303, label %247

247:                                              ; preds = %228, %245, %202
  %248 = phi ptr [ %200, %202 ], [ %229, %228 ], [ %236, %245 ]
  %249 = phi ptr [ %199, %202 ], [ %230, %228 ], [ %237, %245 ]
  %250 = add i64 %59, %150
  %251 = ptrtoint ptr %249 to i64
  %252 = sub i64 %250, %251
  %253 = add i64 %59, -1
  %254 = add i64 %253, %150
  %255 = sub i64 %254, %251
  %256 = and i64 %252, 7
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %247, %258
  %259 = phi ptr [ %264, %258 ], [ %248, %247 ]
  %260 = phi ptr [ %262, %258 ], [ %249, %247 ]
  %261 = phi i64 [ %265, %258 ], [ 0, %247 ]
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 1
  %263 = load i8, ptr %260, align 1, !tbaa !196
  %264 = getelementptr inbounds nuw i8, ptr %259, i64 1
  store i8 %263, ptr %259, align 1, !tbaa !196
  %265 = add i64 %261, 1
  %266 = icmp eq i64 %265, %256
  br i1 %266, label %267, label %258, !llvm.loop !453

267:                                              ; preds = %258, %247
  %268 = phi ptr [ %248, %247 ], [ %264, %258 ]
  %269 = phi ptr [ %249, %247 ], [ %262, %258 ]
  %270 = icmp ult i64 %255, 7
  br i1 %270, label %303, label %271

271:                                              ; preds = %267, %271
  %272 = phi ptr [ %297, %271 ], [ %268, %267 ]
  %273 = phi ptr [ %295, %271 ], [ %269, %267 ]
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 1
  %275 = load i8, ptr %273, align 1, !tbaa !196
  %276 = getelementptr inbounds nuw i8, ptr %272, i64 1
  store i8 %275, ptr %272, align 1, !tbaa !196
  %277 = getelementptr inbounds nuw i8, ptr %273, i64 2
  %278 = load i8, ptr %274, align 1, !tbaa !196
  %279 = getelementptr inbounds nuw i8, ptr %272, i64 2
  store i8 %278, ptr %276, align 1, !tbaa !196
  %280 = getelementptr inbounds nuw i8, ptr %273, i64 3
  %281 = load i8, ptr %277, align 1, !tbaa !196
  %282 = getelementptr inbounds nuw i8, ptr %272, i64 3
  store i8 %281, ptr %279, align 1, !tbaa !196
  %283 = getelementptr inbounds nuw i8, ptr %273, i64 4
  %284 = load i8, ptr %280, align 1, !tbaa !196
  %285 = getelementptr inbounds nuw i8, ptr %272, i64 4
  store i8 %284, ptr %282, align 1, !tbaa !196
  %286 = getelementptr inbounds nuw i8, ptr %273, i64 5
  %287 = load i8, ptr %283, align 1, !tbaa !196
  %288 = getelementptr inbounds nuw i8, ptr %272, i64 5
  store i8 %287, ptr %285, align 1, !tbaa !196
  %289 = getelementptr inbounds nuw i8, ptr %273, i64 6
  %290 = load i8, ptr %286, align 1, !tbaa !196
  %291 = getelementptr inbounds nuw i8, ptr %272, i64 6
  store i8 %290, ptr %288, align 1, !tbaa !196
  %292 = getelementptr inbounds nuw i8, ptr %273, i64 7
  %293 = load i8, ptr %289, align 1, !tbaa !196
  %294 = getelementptr inbounds nuw i8, ptr %272, i64 7
  store i8 %293, ptr %291, align 1, !tbaa !196
  %295 = getelementptr inbounds nuw i8, ptr %273, i64 8
  %296 = load i8, ptr %292, align 1, !tbaa !196
  %297 = getelementptr inbounds nuw i8, ptr %272, i64 8
  store i8 %296, ptr %294, align 1, !tbaa !196
  %298 = icmp eq ptr %295, %152
  br i1 %298, label %303, label %271, !llvm.loop !454

299:                                              ; preds = %158, %155
  %300 = load ptr, ptr %45, align 8, !tbaa !201
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 %150
  store ptr %301, ptr %45, align 8, !tbaa !201
  %302 = load ptr, ptr %48, align 8, !tbaa !190
  br label %315

303:                                              ; preds = %168, %267, %271, %226, %245, %198
  %304 = load ptr, ptr %45, align 8, !tbaa !201
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 %150
  store ptr %305, ptr %45, align 8, !tbaa !201
  %306 = icmp ugt i32 %69, 65535
  %307 = load ptr, ptr %48, align 8, !tbaa !190
  br i1 %306, label %308, label %315, !prof !455

308:                                              ; preds = %303
  store i32 1, ptr %47, align 8, !tbaa !198
  %309 = load ptr, ptr %43, align 8, !tbaa !186
  %310 = ptrtoint ptr %307 to i64
  %311 = ptrtoint ptr %309 to i64
  %312 = sub i64 %310, %311
  %313 = lshr exact i64 %312, 3
  %314 = trunc i64 %313 to i32
  store i32 %314, ptr %49, align 4, !tbaa !199
  br label %315

315:                                              ; preds = %299, %308, %303
  %316 = phi ptr [ %302, %299 ], [ %307, %308 ], [ %307, %303 ]
  %317 = trunc i32 %69 to i16
  %318 = getelementptr inbounds nuw i8, ptr %316, i64 4
  store i16 %317, ptr %318, align 4, !tbaa !191
  store i32 %117, ptr %316, align 4, !tbaa !194
  %319 = add nsw i64 %151, -3
  %320 = icmp ugt i64 %319, 65535
  br i1 %320, label %321, label %328, !prof !356

321:                                              ; preds = %315
  store i32 2, ptr %47, align 8, !tbaa !198
  %322 = load ptr, ptr %43, align 8, !tbaa !186
  %323 = ptrtoint ptr %316 to i64
  %324 = ptrtoint ptr %322 to i64
  %325 = sub i64 %323, %324
  %326 = lshr exact i64 %325, 3
  %327 = trunc i64 %326 to i32
  store i32 %327, ptr %49, align 4, !tbaa !199
  br label %328

328:                                              ; preds = %315, %321
  %329 = trunc i64 %319 to i16
  %330 = getelementptr inbounds nuw i8, ptr %316, i64 6
  store i16 %329, ptr %330, align 2, !tbaa !195
  %331 = getelementptr inbounds nuw i8, ptr %316, i64 8
  store ptr %331, ptr %48, align 8, !tbaa !190
  %332 = add i32 %69, %62
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds nuw i8, ptr %57, i64 %333
  %335 = add i32 %56, 1
  %336 = zext i32 %335 to i64
  %337 = icmp ugt i64 %3, %336
  br i1 %337, label %52, label %338, !llvm.loop !456

338:                                              ; preds = %328, %64, %24
  %339 = phi ptr [ %4, %24 ], [ %57, %64 ], [ %334, %328 ]
  %340 = phi i32 [ %9, %24 ], [ %56, %64 ], [ %335, %328 ]
  %341 = phi i64 [ %29, %24 ], [ %55, %64 ], [ %336, %328 ]
  %342 = icmp eq i64 %3, %341
  br i1 %342, label %403, label %343

343:                                              ; preds = %338
  %344 = icmp ne i32 %6, 2
  %345 = icmp eq i32 %340, %9
  %346 = select i1 %344, i1 true, i1 %345
  br i1 %346, label %379, label %347

347:                                              ; preds = %343
  %348 = add i32 %340, -1
  %349 = add i32 %9, 2
  %350 = icmp ult i32 %348, %349
  br i1 %350, label %362, label %351

351:                                              ; preds = %347
  %352 = add i32 %340, -3
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !212
  %356 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %355, ptr %356, align 8, !tbaa !49
  %357 = add i32 %340, -2
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !212
  %361 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %360, ptr %361, align 4, !tbaa !49
  br label %375

362:                                              ; preds = %347
  %363 = icmp eq i32 %340, %349
  br i1 %363, label %364, label %372

364:                                              ; preds = %362
  %365 = load i32, ptr %8, align 8, !tbaa !49
  %366 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %365, ptr %366, align 8, !tbaa !49
  %367 = add i32 %340, -2
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !212
  %371 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %370, ptr %371, align 4, !tbaa !49
  br label %375

372:                                              ; preds = %362
  %373 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %374 = load <2 x i32>, ptr %8, align 8, !tbaa !49
  store <2 x i32> %374, ptr %373, align 4, !tbaa !49
  br label %375

375:                                              ; preds = %364, %372, %351
  %376 = zext i32 %348 to i64
  %377 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !212
  store i32 %378, ptr %8, align 8, !tbaa !49
  br label %379

379:                                              ; preds = %375, %343
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %381 = load ptr, ptr %380, align 8, !tbaa !56
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %382, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %383 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %341, i32 1
  %384 = load i32, ptr %383, align 4, !tbaa !215
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %398, label %386

386:                                              ; preds = %379
  %387 = zext i32 %384 to i64
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %389 = load ptr, ptr %388, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %389, ptr readonly align 1 %339, i64 %387, i1 false)
  %390 = load ptr, ptr %388, align 8, !tbaa !201
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 %387
  store ptr %391, ptr %388, align 8, !tbaa !201
  %392 = load i32, ptr %383, align 4, !tbaa !215
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds nuw i8, ptr %339, i64 %393
  %395 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %396 = load i64, ptr %395, align 8, !tbaa !449
  %397 = add i64 %396, %393
  store i64 %397, ptr %395, align 8, !tbaa !449
  br label %398

398:                                              ; preds = %379, %386
  %399 = phi ptr [ %394, %386 ], [ %339, %379 ]
  %400 = icmp eq ptr %399, %10
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = add i32 %340, 1
  store i32 %402, ptr %1, align 8, !tbaa !447
  br label %403

403:                                              ; preds = %143, %120, %134, %398, %338, %401
  %404 = phi i64 [ %5, %401 ], [ -107, %338 ], [ -107, %398 ], [ -107, %134 ], [ -107, %120 ], [ -107, %143 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #30
  ret i64 %404
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #23 {
  %3 = load i8, ptr %0, align 1, !tbaa !196
  %4 = zext i8 %3 to i64
  %5 = mul nuw i64 %4, 72340172838076673
  %6 = and i64 %1, 31
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %106, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %12 = getelementptr i8, ptr %0, i64 %6
  %13 = getelementptr i8, ptr %12, i64 -7
  %14 = icmp samesign ugt i64 %6, 8
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i64, ptr %0, align 1, !tbaa !114
  %17 = load i64, ptr %11, align 1, !tbaa !114
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = xor i64 %17, %16
  %21 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %20, i1 true)
  %22 = lshr i64 %21, 3
  br label %80

23:                                               ; preds = %15, %29
  %24 = phi ptr [ %27, %29 ], [ %0, %15 ]
  %25 = phi ptr [ %26, %29 ], [ %11, %15 ]
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = icmp ult ptr %26, %13
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i64, ptr %27, align 1, !tbaa !114
  %31 = load i64, ptr %26, align 1, !tbaa !114
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
  %47 = load i32, ptr %42, align 1, !tbaa !49
  %48 = load i32, ptr %43, align 1, !tbaa !49
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
  %59 = load i16, ptr %54, align 1, !tbaa !231
  %60 = load i16, ptr %55, align 1, !tbaa !231
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
  %70 = load i8, ptr %66, align 1, !tbaa !196
  %71 = load i8, ptr %67, align 1, !tbaa !196
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

80:                                               ; preds = %19, %33, %75
  %81 = phi i64 [ %79, %75 ], [ %22, %19 ], [ %40, %33 ]
  %82 = add nsw i64 %6, -1
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %80, %8
  %85 = icmp ult i64 %1, 32
  br i1 %85, label %106, label %86

86:                                               ; preds = %84, %103
  %87 = phi i64 [ %104, %103 ], [ %6, %84 ]
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i64, ptr %88, align 1, !tbaa !114
  %90 = icmp eq i64 %89, %5
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %93 = load i64, ptr %92, align 1, !tbaa !114
  %94 = icmp eq i64 %93, %5
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %97 = load i64, ptr %96, align 1, !tbaa !114
  %98 = icmp eq i64 %97, %5
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %101 = load i64, ptr %100, align 1, !tbaa !114
  %102 = icmp eq i64 %101, %5
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = add i64 %87, 32
  %105 = icmp eq i64 %104, %1
  br i1 %105, label %106, label %86, !llvm.loop !457

106:                                              ; preds = %103, %86, %91, %95, %99, %84, %80, %2
  %107 = phi i32 [ 1, %2 ], [ 0, %80 ], [ 1, %84 ], [ 1, %103 ], [ 0, %86 ], [ 0, %91 ], [ 0, %95 ], [ 0, %99 ]
  ret i32 %107
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #2 {
  %11 = alloca %struct.repcodes_s, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !458
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %123, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = load ptr, ptr %1, align 8, !tbaa !186
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %23 = load i32, ptr %22, align 8, !tbaa !198
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %27 = load i32, ptr %26, align 4, !tbaa !199
  br label %28

28:                                               ; preds = %25, %13
  %29 = phi i32 [ %27, %25 ], [ %21, %13 ]
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %36 = zext i32 %29 to i64
  %37 = and i64 %20, 4294967295
  br label %38

38:                                               ; preds = %120, %31
  %39 = phi i64 [ 0, %31 ], [ %121, %120 ]
  %40 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %16, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %42 = load i16, ptr %41, align 4, !tbaa !191
  %43 = icmp eq i16 %42, 0
  %44 = icmp ne i64 %39, %36
  %45 = select i1 %43, i1 %44, i1 false
  %46 = zext i1 %45 to i32
  %47 = load i32, ptr %40, align 4, !tbaa !194
  %48 = add i32 %47, -1
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %70

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %48, %46
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4, !tbaa !49
  %55 = add i32 %54, -1
  %56 = load i32, ptr %3, align 4, !tbaa !49
  %57 = add i32 %56, -1
  br label %64

58:                                               ; preds = %50
  %59 = zext nneg i32 %51 to i64
  %60 = getelementptr inbounds nuw i32, ptr %2, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !49
  %62 = getelementptr inbounds nuw i32, ptr %3, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !49
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i32 [ %55, %53 ], [ %61, %58 ]
  %66 = phi i32 [ %57, %53 ], [ %63, %58 ]
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = add i32 %66, 3
  store i32 %69, ptr %40, align 4, !tbaa !194
  br label %70

70:                                               ; preds = %68, %38
  %71 = phi i32 [ %69, %68 ], [ %47, %38 ]
  %72 = icmp ugt i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load <2 x i32>, ptr %2, align 4, !tbaa !49
  store <2 x i32> %74, ptr %32, align 4, !tbaa !49
  %75 = add i32 %71, -3
  br label %95

76:                                               ; preds = %70, %64
  %77 = phi i32 [ %71, %70 ], [ %47, %64 ]
  %78 = xor i1 %45, true
  %79 = sext i1 %78 to i32
  %80 = add nsw i32 %77, %79
  switch i32 %80, label %84 [
    i32 0, label %97
    i32 3, label %81
  ]

81:                                               ; preds = %76
  %82 = load i32, ptr %2, align 4, !tbaa !49
  %83 = add i32 %82, -1
  br label %89

84:                                               ; preds = %76
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds nuw i32, ptr %2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !49
  %88 = load i32, ptr %2, align 4, !tbaa !49
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i32 [ %82, %81 ], [ %88, %84 ]
  %91 = phi i32 [ %83, %81 ], [ %87, %84 ]
  %92 = icmp eq i32 %80, 1
  %93 = select i1 %92, ptr %33, ptr %32
  %94 = load i32, ptr %93, align 4, !tbaa !49
  store i32 %94, ptr %33, align 4, !tbaa !49
  store i32 %90, ptr %32, align 4, !tbaa !49
  br label %95

95:                                               ; preds = %89, %73
  %96 = phi i32 [ %91, %89 ], [ %75, %73 ]
  store i32 %96, ptr %2, align 4, !tbaa !49
  br label %97

97:                                               ; preds = %95, %76
  %98 = icmp ugt i32 %47, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load <2 x i32>, ptr %3, align 4, !tbaa !49
  store <2 x i32> %100, ptr %34, align 4, !tbaa !49
  %101 = add i32 %47, -3
  br label %118

102:                                              ; preds = %97
  %103 = add nsw i32 %48, %46
  switch i32 %103, label %107 [
    i32 0, label %120
    i32 3, label %104
  ]

104:                                              ; preds = %102
  %105 = load i32, ptr %3, align 4, !tbaa !49
  %106 = add i32 %105, -1
  br label %112

107:                                              ; preds = %102
  %108 = zext i32 %103 to i64
  %109 = getelementptr inbounds nuw i32, ptr %3, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !49
  %111 = load i32, ptr %3, align 4, !tbaa !49
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i32 [ %105, %104 ], [ %111, %107 ]
  %114 = phi i32 [ %106, %104 ], [ %110, %107 ]
  %115 = icmp eq i32 %103, 1
  %116 = select i1 %115, ptr %35, ptr %34
  %117 = load i32, ptr %116, align 4, !tbaa !49
  store i32 %117, ptr %35, align 4, !tbaa !49
  store i32 %113, ptr %34, align 4, !tbaa !49
  br label %118

118:                                              ; preds = %112, %99
  %119 = phi i32 [ %114, %112 ], [ %101, %99 ]
  store i32 %119, ptr %3, align 4, !tbaa !49
  br label %120

120:                                              ; preds = %118, %102
  %121 = add nuw nsw i64 %39, 1
  %122 = icmp eq i64 %121, %37
  br i1 %122, label %123, label %38, !llvm.loop !459

123:                                              ; preds = %120, %28, %10
  %124 = icmp ult i64 %5, 3
  br i1 %124, label %232, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %132 = add i64 %5, -3
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %134 = load ptr, ptr %133, align 8, !tbaa !57
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %136 = load i64, ptr %135, align 8, !tbaa !58
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %138 = load i32, ptr %137, align 8, !tbaa !8
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %140 = load ptr, ptr %139, align 8, !tbaa !200
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %142 = load ptr, ptr %141, align 8, !tbaa !201
  %143 = ptrtoint ptr %142 to i64
  %144 = ptrtoint ptr %140 to i64
  %145 = sub i64 %143, %144
  %146 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %131, i64 noundef %132, ptr noundef %140, i64 noundef %145, ptr noundef readonly %1, ptr noundef %127, ptr noundef %129, ptr noundef nonnull readonly %130, ptr noundef %134, i64 noundef %136, i32 noundef %138)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %125
  %149 = icmp eq i64 %146, -70
  %150 = icmp ule i64 %7, %132
  %151 = and i1 %150, %149
  br i1 %151, label %165, label %152

152:                                              ; preds = %148
  %153 = icmp ult i64 %146, -119
  br i1 %153, label %154, label %232

154:                                              ; preds = %152
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %156 = load i32, ptr %155, align 4, !tbaa !90
  %157 = tail call i32 @llvm.umax.i32(i32 %156, i32 7)
  %158 = add i32 %157, -1
  %159 = zext nneg i32 %158 to i64
  %160 = lshr i64 %7, %159
  %161 = add i64 %7, -2
  %162 = sub i64 %161, %160
  %163 = icmp ult i64 %146, %162
  %164 = select i1 %163, i64 %146, i64 0
  br label %165

165:                                              ; preds = %125, %148, %154
  %166 = phi i64 [ %164, %154 ], [ 0, %148 ], [ 0, %125 ]
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %168 = load i32, ptr %167, align 8, !tbaa !249
  %169 = icmp eq i32 %168, 0
  %170 = icmp ult i64 %166, 25
  %171 = and i1 %170, %169
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i64 %166, i64 1
  br label %176

176:                                              ; preds = %172, %165
  %177 = phi i64 [ %166, %165 ], [ %175, %172 ]
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %179 = load i32, ptr %178, align 8, !tbaa !250
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %178, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %183 = icmp ult i64 %182, -119
  br i1 %183, label %184, label %232

184:                                              ; preds = %181
  %185 = load <2 x ptr>, ptr %126, align 8, !tbaa !48
  %186 = shufflevector <2 x ptr> %185, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %186, ptr %126, align 8, !tbaa !48
  br label %232

187:                                              ; preds = %176
  switch i64 %177, label %213 [
    i64 0, label %188
    i64 1, label %201
  ]

188:                                              ; preds = %187
  %189 = add i64 %7, 3
  %190 = icmp ugt i64 %189, %5
  br i1 %190, label %232, label %191

191:                                              ; preds = %188
  %192 = trunc i64 %7 to i32
  %193 = shl i32 %192, 3
  %194 = or disjoint i32 %193, %8
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %4, align 1, !tbaa !231
  %196 = lshr i32 %193, 16
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %197, ptr %198, align 1, !tbaa !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %131, ptr readonly align 1 %6, i64 %7, i1 false)
  %199 = icmp ult i64 %189, -119
  br i1 %199, label %200, label %232

200:                                              ; preds = %191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !458
  br label %225

201:                                              ; preds = %187
  %202 = icmp eq i64 %5, 3
  br i1 %202, label %232, label %203

203:                                              ; preds = %201
  %204 = load i8, ptr %6, align 1, !tbaa !196
  %205 = trunc i64 %7 to i32
  %206 = shl i32 %205, 3
  %207 = or disjoint i32 %206, %8
  %208 = trunc i32 %207 to i16
  %209 = or disjoint i16 %208, 2
  store i16 %209, ptr %4, align 1, !tbaa !231
  %210 = lshr i32 %206, 16
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %211, ptr %212, align 1, !tbaa !196
  store i8 %204, ptr %131, align 1, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !458
  br label %225

213:                                              ; preds = %187
  %214 = load <2 x ptr>, ptr %126, align 8, !tbaa !48
  %215 = shufflevector <2 x ptr> %214, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %215, ptr %126, align 8, !tbaa !48
  %216 = trunc i64 %177 to i32
  %217 = shl i32 %216, 3
  %218 = or disjoint i32 %217, %8
  %219 = trunc i32 %218 to i16
  %220 = or disjoint i16 %219, 4
  store i16 %220, ptr %4, align 1, !tbaa !231
  %221 = lshr i32 %217, 16
  %222 = trunc i32 %221 to i8
  %223 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %222, ptr %223, align 1, !tbaa !196
  %224 = add nuw i64 %177, 3
  br label %225

225:                                              ; preds = %203, %213, %200
  %226 = phi i64 [ %189, %200 ], [ 4, %203 ], [ %224, %213 ]
  %227 = load ptr, ptr %126, align 8, !tbaa !55
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 5604
  %229 = load i32, ptr %228, align 4, !tbaa !167
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 1, ptr %228, align 4, !tbaa !167
  br label %232

232:                                              ; preds = %201, %152, %188, %225, %231, %123, %181, %191, %184
  %233 = phi i64 [ 0, %184 ], [ %182, %181 ], [ %189, %191 ], [ -70, %123 ], [ %226, %231 ], [ %226, %225 ], [ -70, %188 ], [ %146, %152 ], [ -70, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #30
  ret i64 %233
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef captures(none) initializes((0, 80)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #24 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !256
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %77, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !186
  %8 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %7, i64 %2
  %9 = load ptr, ptr %0, align 8, !tbaa !186
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %72, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !199
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %19 = icmp eq i64 %14, 8
  br i1 %19, label %55, label %20

20:                                               ; preds = %11
  %21 = ashr exact i64 %14, 3
  %22 = and i64 %21, -2
  br label %23

23:                                               ; preds = %50, %20
  %24 = phi i64 [ 0, %20 ], [ %51, %50 ]
  %25 = phi i64 [ 0, %20 ], [ %52, %50 ]
  %26 = phi i64 [ 0, %20 ], [ %53, %50 ]
  %27 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %9, i64 %25, i32 1
  %28 = load i16, ptr %27, align 4, !tbaa !231
  %29 = zext i16 %28 to i64
  %30 = add i64 %24, %29
  %31 = icmp eq i64 %25, %17
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, ptr %18, align 8, !tbaa !198
  %34 = icmp eq i32 %33, 1
  %35 = add i64 %30, 65536
  %36 = select i1 %34, i64 %35, i64 %30
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi i64 [ %30, %23 ], [ %36, %32 ]
  %39 = or disjoint i64 %25, 1
  %40 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %9, i64 %39, i32 1
  %41 = load i16, ptr %40, align 4, !tbaa !231
  %42 = zext i16 %41 to i64
  %43 = add i64 %38, %42
  %44 = icmp eq i64 %39, %17
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, ptr %18, align 8, !tbaa !198
  %47 = icmp eq i32 %46, 1
  %48 = add i64 %43, 65536
  %49 = select i1 %47, i64 %48, i64 %43
  br label %50

50:                                               ; preds = %45, %37
  %51 = phi i64 [ %43, %37 ], [ %49, %45 ]
  %52 = add nuw i64 %25, 2
  %53 = add i64 %26, 2
  %54 = icmp eq i64 %53, %22
  br i1 %54, label %55, label %23, !llvm.loop !258

55:                                               ; preds = %50, %11
  %56 = phi i64 [ poison, %11 ], [ %51, %50 ]
  %57 = phi i64 [ 0, %11 ], [ %51, %50 ]
  %58 = phi i64 [ 0, %11 ], [ %52, %50 ]
  %59 = and i64 %14, 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %9, i64 %58, i32 1
  %63 = load i16, ptr %62, align 4, !tbaa !231
  %64 = zext i16 %63 to i64
  %65 = add i64 %57, %64
  %66 = icmp eq i64 %58, %17
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, ptr %18, align 8, !tbaa !198
  %69 = icmp eq i32 %68, 1
  %70 = add i64 %65, 65536
  %71 = select i1 %69, i64 %70, i64 %65
  br label %72

72:                                               ; preds = %55, %67, %61, %6
  %73 = phi i64 [ 0, %6 ], [ %56, %55 ], [ %65, %61 ], [ %71, %67 ]
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %75 = load ptr, ptr %74, align 8, !tbaa !200
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %73
  store ptr %76, ptr %74, align 8, !tbaa !200
  br label %77

77:                                               ; preds = %72, %4
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %79 = load i32, ptr %78, align 8, !tbaa !198
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %83 = load i32, ptr %82, align 4, !tbaa !199
  %84 = zext i32 %83 to i64
  %85 = icmp ugt i64 %2, %84
  %86 = icmp samesign ult i64 %3, %84
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %89, align 8, !tbaa !198
  br label %95

90:                                               ; preds = %81
  %91 = trunc nuw i64 %2 to i32
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %93 = load i32, ptr %92, align 4, !tbaa !199
  %94 = sub i32 %93, %91
  store i32 %94, ptr %92, align 4, !tbaa !199
  br label %95

95:                                               ; preds = %88, %90, %77
  %96 = load ptr, ptr %1, align 8, !tbaa !186
  %97 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %96, i64 %2
  store ptr %97, ptr %0, align 8, !tbaa !186
  %98 = load ptr, ptr %1, align 8, !tbaa !186
  %99 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %98, i64 %3
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %99, ptr %100, align 8, !tbaa !190
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %102 = load ptr, ptr %101, align 8, !tbaa !190
  %103 = ptrtoint ptr %102 to i64
  %104 = ptrtoint ptr %98 to i64
  %105 = sub i64 %103, %104
  %106 = ashr exact i64 %105, 3
  %107 = icmp eq i64 %3, %106
  br i1 %107, label %177, label %108

108:                                              ; preds = %95
  %109 = icmp eq ptr %99, %97
  br i1 %109, label %171, label %110

110:                                              ; preds = %108
  %111 = ptrtoint ptr %99 to i64
  %112 = ptrtoint ptr %97 to i64
  %113 = sub i64 %111, %112
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %115 = load i32, ptr %114, align 4, !tbaa !199
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %118 = icmp eq i64 %113, 8
  br i1 %118, label %154, label %119

119:                                              ; preds = %110
  %120 = ashr exact i64 %113, 3
  %121 = and i64 %120, -2
  br label %122

122:                                              ; preds = %149, %119
  %123 = phi i64 [ 0, %119 ], [ %150, %149 ]
  %124 = phi i64 [ 0, %119 ], [ %151, %149 ]
  %125 = phi i64 [ 0, %119 ], [ %152, %149 ]
  %126 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %97, i64 %124, i32 1
  %127 = load i16, ptr %126, align 4, !tbaa !231
  %128 = zext i16 %127 to i64
  %129 = add i64 %123, %128
  %130 = icmp eq i64 %124, %116
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i32, ptr %117, align 8, !tbaa !198
  %133 = icmp eq i32 %132, 1
  %134 = add i64 %129, 65536
  %135 = select i1 %133, i64 %134, i64 %129
  br label %136

136:                                              ; preds = %131, %122
  %137 = phi i64 [ %129, %122 ], [ %135, %131 ]
  %138 = or disjoint i64 %124, 1
  %139 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %97, i64 %138, i32 1
  %140 = load i16, ptr %139, align 4, !tbaa !231
  %141 = zext i16 %140 to i64
  %142 = add i64 %137, %141
  %143 = icmp eq i64 %138, %116
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i32, ptr %117, align 8, !tbaa !198
  %146 = icmp eq i32 %145, 1
  %147 = add i64 %142, 65536
  %148 = select i1 %146, i64 %147, i64 %142
  br label %149

149:                                              ; preds = %144, %136
  %150 = phi i64 [ %142, %136 ], [ %148, %144 ]
  %151 = add nuw i64 %124, 2
  %152 = add i64 %125, 2
  %153 = icmp eq i64 %152, %121
  br i1 %153, label %154, label %122, !llvm.loop !258

154:                                              ; preds = %149, %110
  %155 = phi i64 [ poison, %110 ], [ %150, %149 ]
  %156 = phi i64 [ 0, %110 ], [ %150, %149 ]
  %157 = phi i64 [ 0, %110 ], [ %151, %149 ]
  %158 = and i64 %113, 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %97, i64 %157, i32 1
  %162 = load i16, ptr %161, align 4, !tbaa !231
  %163 = zext i16 %162 to i64
  %164 = add i64 %156, %163
  %165 = icmp eq i64 %157, %116
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load i32, ptr %117, align 8, !tbaa !198
  %168 = icmp eq i32 %167, 1
  %169 = add i64 %164, 65536
  %170 = select i1 %168, i64 %169, i64 %164
  br label %171

171:                                              ; preds = %154, %166, %160, %108
  %172 = phi i64 [ 0, %108 ], [ %155, %154 ], [ %164, %160 ], [ %170, %166 ]
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %174 = load ptr, ptr %173, align 8, !tbaa !200
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 %172
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %175, ptr %176, align 8, !tbaa !201
  br label %177

177:                                              ; preds = %95, %171
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %179 = load ptr, ptr %178, align 8, !tbaa !187
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 %2
  store ptr %180, ptr %178, align 8, !tbaa !187
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %182 = load ptr, ptr %181, align 8, !tbaa !189
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 %2
  store ptr %183, ptr %181, align 8, !tbaa !189
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %185 = load ptr, ptr %184, align 8, !tbaa !188
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 %2
  store ptr %186, ptr %184, align 8, !tbaa !188
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3768
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 3848
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 3928
  %10 = sub i64 %2, %1
  %11 = icmp ult i64 %10, 300
  br i1 %11, label %40, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %6, align 8, !tbaa !255
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi i64 [ %37, %32 ], [ %13, %12 ]
  %16 = phi i64 [ %18, %32 ], [ %1, %12 ]
  %17 = add i64 %16, %2
  %18 = lshr i64 %17, 1
  %19 = icmp ugt i64 %15, 195
  br i1 %19, label %40, label %20

20:                                               ; preds = %14
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %7, ptr noundef %4, i64 noundef %16, i64 noundef %2)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %8, ptr noundef %4, i64 noundef %16, i64 noundef %18)
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %9, ptr noundef %4, i64 noundef %18, i64 noundef %2)
  %21 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %7, ptr noundef %3)
  %22 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %8, ptr noundef %3)
  %23 = tail call fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef nonnull %9, ptr noundef %3)
  %24 = icmp ult i64 %21, -119
  %25 = icmp ult i64 %22, -119
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = icmp ult i64 %23, -119
  %29 = add i64 %23, %22
  %30 = icmp ult i64 %29, %21
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %0, i64 noundef %16, i64 noundef %18, ptr noundef nonnull %3, ptr noundef %4)
  %33 = trunc i64 %18 to i32
  %34 = load ptr, ptr %0, align 8, !tbaa !253
  %35 = load i64, ptr %6, align 8, !tbaa !255
  %36 = getelementptr inbounds nuw i32, ptr %34, i64 %35
  store i32 %33, ptr %36, align 4, !tbaa !49
  %37 = add i64 %35, 1
  store i64 %37, ptr %6, align 8, !tbaa !255
  %38 = sub nsw i64 %2, %18
  %39 = icmp ult i64 %38, 300
  br i1 %39, label %40, label %14

40:                                               ; preds = %32, %14, %27, %20, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4952
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3224
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3544
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %16 = load i64, ptr %15, align 8, !tbaa !58
  %17 = tail call i64 @ZSTD_buildBlockEntropyStats(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %14, i64 noundef %16)
  %18 = icmp ult i64 %17, -119
  br i1 %18, label %19, label %193

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %21 to i64
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %32 = load ptr, ptr %31, align 8, !tbaa !189
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !190
  %35 = load ptr, ptr %0, align 8, !tbaa !186
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = load ptr, ptr %10, align 8, !tbaa !56
  %41 = load ptr, ptr %13, align 8, !tbaa !57
  %42 = load i64, ptr %15, align 8, !tbaa !58
  %43 = load i32, ptr %7, align 8, !tbaa !460
  %44 = icmp eq i32 %43, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #30
  store i32 255, ptr %6, align 4, !tbaa !49
  %45 = icmp ugt i64 %26, 1023
  %46 = select i1 %45, i64 4, i64 3
  %47 = icmp ugt i64 %26, 16383
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %46, %48
  %50 = icmp ult i64 %26, 256
  switch i32 %43, label %67 [
    i32 0, label %68
    i32 1, label %51
    i32 2, label %52
    i32 3, label %52
  ]

51:                                               ; preds = %19
  br label %68

52:                                               ; preds = %19, %19
  %53 = call i64 @HIST_count_wksp(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %21, i64 noundef %26, ptr noundef %41, i64 noundef %42) #30
  %54 = icmp ult i64 %53, -119
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, ptr %6, align 4, !tbaa !49
  %57 = call i64 @HUF_estimateCompressedSize(ptr noundef %40, ptr noundef %41, i32 noundef %56) #30
  br i1 %44, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %60 = load i64, ptr %59, align 8, !tbaa !461
  %61 = add i64 %60, %57
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i64 [ %61, %58 ], [ %57, %55 ]
  %64 = add i64 %63, 6
  %65 = select i1 %50, i64 %63, i64 %64
  %66 = add i64 %49, %65
  br label %68

67:                                               ; preds = %19
  br label %68

68:                                               ; preds = %67, %62, %52, %51, %19
  %69 = phi i64 [ 1, %51 ], [ 0, %67 ], [ %26, %19 ], [ %66, %62 ], [ %26, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #30
  %70 = getelementptr inbounds nuw i8, ptr %40, i64 2064
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 5100
  %73 = load i32, ptr %72, align 4, !tbaa !462
  %74 = getelementptr inbounds nuw i8, ptr %28, i64 %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  store i32 31, ptr %5, align 4, !tbaa !49
  %75 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %5, ptr noundef %28, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #30
  switch i32 %73, label %79 [
    i32 0, label %76
    i32 1, label %88
  ]

76:                                               ; preds = %68
  %77 = load i32, ptr %5, align 4, !tbaa !49
  %78 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %41, i32 noundef %77) #30
  br label %85

79:                                               ; preds = %68
  %80 = and i32 %73, -2
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, ptr %5, align 4, !tbaa !49
  %84 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %70, ptr noundef %41, i32 noundef %83) #30
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i64 [ %78, %76 ], [ %84, %82 ]
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %99

88:                                               ; preds = %85, %79, %68
  %89 = phi i64 [ %86, %85 ], [ 0, %79 ], [ 0, %68 ]
  %90 = icmp eq ptr %34, %35
  br i1 %90, label %101, label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %96, %91 ], [ %89, %88 ]
  %93 = phi ptr [ %97, %91 ], [ %28, %88 ]
  %94 = load i8, ptr %93, align 1, !tbaa !196
  %95 = zext i8 %94 to i64
  %96 = add i64 %92, %95
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 1
  %98 = icmp ult ptr %97, %74
  br i1 %98, label %91, label %101, !llvm.loop !463

99:                                               ; preds = %85
  %100 = mul i64 %39, 10
  br label %104

101:                                              ; preds = %91, %88
  %102 = phi i64 [ %89, %88 ], [ %96, %91 ]
  %103 = lshr i64 %102, 3
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i64 [ %100, %99 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #30
  %106 = load i32, ptr %71, align 8, !tbaa !464
  %107 = getelementptr inbounds nuw i8, ptr %40, i64 4288
  %108 = getelementptr inbounds nuw i8, ptr %30, i64 %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  store i32 35, ptr %4, align 4, !tbaa !49
  %109 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %4, ptr noundef %30, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #30
  switch i32 %106, label %113 [
    i32 0, label %110
    i32 1, label %122
  ]

110:                                              ; preds = %104
  %111 = load i32, ptr %4, align 4, !tbaa !49
  %112 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %111) #30
  br label %119

113:                                              ; preds = %104
  %114 = and i32 %106, -2
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, ptr %4, align 4, !tbaa !49
  %118 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %107, ptr noundef %41, i32 noundef %117) #30
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i64 [ %112, %110 ], [ %118, %116 ]
  %121 = icmp ult i64 %120, -119
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %113, %104
  %123 = phi i64 [ %120, %119 ], [ 0, %113 ], [ 0, %104 ]
  %124 = icmp eq ptr %34, %35
  br i1 %124, label %138, label %127

125:                                              ; preds = %119
  %126 = mul i64 %39, 10
  br label %141

127:                                              ; preds = %122, %127
  %128 = phi i64 [ %135, %127 ], [ %123, %122 ]
  %129 = phi ptr [ %136, %127 ], [ %30, %122 ]
  %130 = load i8, ptr %129, align 1, !tbaa !196
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !196
  %134 = zext i8 %133 to i64
  %135 = add i64 %128, %134
  %136 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %137 = icmp ult ptr %136, %108
  br i1 %137, label %127, label %138, !llvm.loop !463

138:                                              ; preds = %127, %122
  %139 = phi i64 [ %123, %122 ], [ %135, %127 ]
  %140 = lshr i64 %139, 3
  br label %141

141:                                              ; preds = %138, %125
  %142 = phi i64 [ %126, %125 ], [ %140, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %144 = load i32, ptr %143, align 8, !tbaa !228
  %145 = getelementptr inbounds nuw i8, ptr %40, i64 2836
  %146 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #30
  store i32 52, ptr %3, align 4, !tbaa !49
  %147 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %3, ptr noundef %32, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #30
  switch i32 %144, label %151 [
    i32 0, label %148
    i32 1, label %160
  ]

148:                                              ; preds = %141
  %149 = load i32, ptr %3, align 4, !tbaa !49
  %150 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %149) #30
  br label %157

151:                                              ; preds = %141
  %152 = and i32 %144, -2
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, ptr %3, align 4, !tbaa !49
  %156 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %145, ptr noundef %41, i32 noundef %155) #30
  br label %157

157:                                              ; preds = %154, %148
  %158 = phi i64 [ %150, %148 ], [ %156, %154 ]
  %159 = icmp ult i64 %158, -119
  br i1 %159, label %160, label %163

160:                                              ; preds = %157, %151, %141
  %161 = phi i64 [ %158, %157 ], [ 0, %151 ], [ 0, %141 ]
  %162 = icmp eq ptr %34, %35
  br i1 %162, label %176, label %165

163:                                              ; preds = %157
  %164 = mul i64 %39, 10
  br label %179

165:                                              ; preds = %160, %165
  %166 = phi i64 [ %173, %165 ], [ %161, %160 ]
  %167 = phi ptr [ %174, %165 ], [ %32, %160 ]
  %168 = load i8, ptr %167, align 1, !tbaa !196
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !196
  %172 = zext i8 %171 to i64
  %173 = add i64 %166, %172
  %174 = getelementptr inbounds nuw i8, ptr %167, i64 1
  %175 = icmp ult ptr %174, %146
  br i1 %175, label %165, label %176, !llvm.loop !463

176:                                              ; preds = %165, %160
  %177 = phi i64 [ %161, %160 ], [ %173, %165 ]
  %178 = lshr i64 %177, 3
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i64 [ %164, %163 ], [ %178, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #30
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 5248
  %182 = load i64, ptr %181, align 8, !tbaa !465
  %183 = icmp ugt i64 %39, 32511
  %184 = icmp ugt i64 %39, 127
  %185 = select i1 %184, i64 3, i64 2
  %186 = select i1 %183, i64 4, i64 3
  %187 = add nuw nsw i64 %186, %185
  %188 = add i64 %187, %69
  %189 = add i64 %188, %105
  %190 = add i64 %189, %142
  %191 = add i64 %190, %180
  %192 = add i64 %191, %182
  br label %193

193:                                              ; preds = %2, %179
  %194 = phi i64 [ %192, %179 ], [ %17, %2 ]
  ret i64 %194
}

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i64 -70, 1) i64 @ZSTD_copyBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #15 {
  %4 = alloca %struct.repcodes_s, align 4
  %5 = load ptr, ptr %1, align 8, !tbaa !186
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !201
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i64, ptr %18, align 8, !tbaa !466
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !467
  %22 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %21, i64 %19
  %23 = add nsw i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #30
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %25 = load i64, ptr %24, align 8, !tbaa !468
  %26 = sub i64 %25, %19
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %123, label %28

28:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %29 = icmp eq ptr %7, %5
  br i1 %29, label %114, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %4, align 4
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %33 = load i32, ptr %32, align 4, !tbaa !199
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %38 = load i32, ptr %36, align 4
  %39 = load i32, ptr %37, align 4
  br label %40

40:                                               ; preds = %30, %106
  %41 = phi i32 [ %39, %30 ], [ %107, %106 ]
  %42 = phi i32 [ %38, %30 ], [ %108, %106 ]
  %43 = phi i64 [ 0, %30 ], [ %111, %106 ]
  %44 = phi i64 [ 0, %30 ], [ %112, %106 ]
  %45 = phi i32 [ %31, %30 ], [ %109, %106 ]
  %46 = getelementptr inbounds nuw %struct.SeqDef_s, ptr %5, i64 %44
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i16, ptr %47, align 4, !tbaa !191
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %22, i64 %44
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i32 %49, ptr %51, align 4, !tbaa !215
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 6
  %53 = load i16, ptr %52, align 2, !tbaa !195
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, 3
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %55, ptr %56, align 4, !tbaa !214
  %57 = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 0, ptr %57, align 4, !tbaa !469
  %58 = icmp eq i64 %44, %34
  br i1 %58, label %59, label %65

59:                                               ; preds = %40
  %60 = load i32, ptr %35, align 8, !tbaa !198
  switch i32 %60, label %65 [
    i32 1, label %61
    i32 2, label %63
  ]

61:                                               ; preds = %59
  %62 = or disjoint i32 %49, 65536
  store i32 %62, ptr %51, align 4, !tbaa !215
  br label %65

63:                                               ; preds = %59
  %64 = add nuw nsw i32 %54, 65539
  store i32 %64, ptr %56, align 4, !tbaa !214
  br label %65

65:                                               ; preds = %59, %61, %63, %40
  %66 = phi i32 [ %49, %59 ], [ %62, %61 ], [ %49, %63 ], [ %49, %40 ]
  %67 = load i32, ptr %46, align 4, !tbaa !194
  %68 = add i32 %67, -1
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  store i32 %67, ptr %57, align 4, !tbaa !469
  %71 = icmp eq i32 %66, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = zext nneg i32 %68 to i64
  %74 = getelementptr inbounds nuw [3 x i32], ptr %4, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !49
  br label %84

76:                                               ; preds = %70
  %77 = icmp eq i32 %67, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = add i32 %45, -1
  br label %84

80:                                               ; preds = %76
  %81 = zext nneg i32 %67 to i64
  %82 = getelementptr inbounds nuw [3 x i32], ptr %4, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !49
  br label %84

84:                                               ; preds = %72, %80, %78
  %85 = phi i32 [ %83, %80 ], [ %79, %78 ], [ %75, %72 ]
  store i32 %85, ptr %50, align 4, !tbaa !212
  br label %89

86:                                               ; preds = %65
  %87 = add i32 %67, -3
  store i32 %87, ptr %50, align 4, !tbaa !212
  %88 = icmp ugt i32 %67, 3
  br i1 %88, label %103, label %89

89:                                               ; preds = %84, %86
  %90 = icmp ne i16 %48, 0
  %91 = sext i1 %90 to i32
  %92 = add nsw i32 %67, %91
  switch i32 %92, label %95 [
    i32 0, label %106
    i32 3, label %93
  ]

93:                                               ; preds = %89
  %94 = add i32 %45, -1
  br label %99

95:                                               ; preds = %89
  %96 = zext i32 %92 to i64
  %97 = getelementptr inbounds nuw i32, ptr %4, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !49
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  %101 = icmp eq i32 %92, 1
  %102 = select i1 %101, i32 %41, i32 %42
  br label %103

103:                                              ; preds = %86, %99
  %104 = phi i32 [ %102, %99 ], [ %42, %86 ]
  %105 = phi i32 [ %100, %99 ], [ %87, %86 ]
  store i32 %104, ptr %37, align 4, !tbaa !49
  store i32 %45, ptr %36, align 4, !tbaa !49
  store i32 %105, ptr %4, align 4, !tbaa !49
  br label %106

106:                                              ; preds = %89, %103
  %107 = phi i32 [ %41, %89 ], [ %104, %103 ]
  %108 = phi i32 [ %42, %89 ], [ %45, %103 ]
  %109 = phi i32 [ %45, %89 ], [ %105, %103 ]
  %110 = zext nneg i32 %66 to i64
  %111 = add i64 %43, %110
  %112 = add nuw i64 %44, 1
  %113 = icmp eq i64 %112, %11
  br i1 %113, label %114, label %40, !llvm.loop !470

114:                                              ; preds = %106, %28
  %115 = phi i64 [ 0, %28 ], [ %111, %106 ]
  %116 = add i64 %115, %17
  %117 = sub i64 %16, %116
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %22, i64 %11
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 4
  store i32 %118, ptr %120, align 4, !tbaa !215
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i32 0, ptr %121, align 4, !tbaa !214
  store i32 0, ptr %119, align 4, !tbaa !212
  %122 = add i64 %23, %19
  store i64 %122, ptr %18, align 8, !tbaa !466
  br label %123

123:                                              ; preds = %3, %114
  %124 = phi i64 [ 0, %114 ], [ -70, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #30
  ret i64 %124
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) unnamed_addr #25 {
  %12 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %14 = load i32, ptr %13, align 4, !tbaa !90
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2064
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 4288
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 2836
  %18 = load ptr, ptr %4, align 8, !tbaa !186
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !188
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !187
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !189
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 212
  %33 = add i64 %9, -212
  %34 = icmp eq ptr %20, %18
  br i1 %34, label %39, label %35

35:                                               ; preds = %11
  %36 = udiv i64 %3, %24
  %37 = icmp ugt i64 %36, 19
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %35, %11
  %40 = phi i32 [ 1, %11 ], [ %38, %35 ]
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %42 = load i32, ptr %41, align 8, !tbaa !95
  switch i32 %42, label %44 [
    i32 1, label %51
    i32 2, label %43
  ]

43:                                               ; preds = %39
  br label %51

44:                                               ; preds = %39
  %45 = icmp eq i32 %14, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %48 = load i32, ptr %47, align 4, !tbaa !89
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %39, %43, %44, %46
  %52 = phi i32 [ 1, %43 ], [ 0, %39 ], [ 0, %44 ], [ %50, %46 ]
  %53 = tail call i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %32, i64 noundef %33, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %52, i32 noundef %40, i32 noundef %10) #30
  %54 = icmp ult i64 %53, -119
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 %53
  br i1 %54, label %56, label %124

56:                                               ; preds = %51
  %57 = ptrtoint ptr %31 to i64
  %58 = sub nsw i64 %1, %53
  %59 = icmp slt i64 %58, 4
  br i1 %59, label %124, label %60

60:                                               ; preds = %56
  %61 = icmp ult i64 %24, 128
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = trunc nuw nsw i64 %24 to i8
  %64 = getelementptr inbounds nuw i8, ptr %55, i64 1
  store i8 %63, ptr %55, align 1, !tbaa !196
  br label %79

65:                                               ; preds = %60
  %66 = icmp ult i64 %24, 32512
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = lshr i64 %24, 8
  %69 = trunc nuw nsw i64 %68 to i8
  %70 = or disjoint i8 %69, -128
  store i8 %70, ptr %55, align 1, !tbaa !196
  %71 = trunc i64 %24 to i8
  %72 = getelementptr inbounds nuw i8, ptr %55, i64 1
  store i8 %71, ptr %72, align 1, !tbaa !196
  %73 = getelementptr inbounds nuw i8, ptr %55, i64 2
  br label %79

74:                                               ; preds = %65
  store i8 -1, ptr %55, align 1, !tbaa !196
  %75 = getelementptr inbounds nuw i8, ptr %55, i64 1
  %76 = trunc i64 %24 to i16
  %77 = add i16 %76, -32512
  store i16 %77, ptr %75, align 1, !tbaa !231
  %78 = getelementptr inbounds nuw i8, ptr %55, i64 3
  br label %79

79:                                               ; preds = %67, %74, %62
  %80 = phi ptr [ %64, %62 ], [ %73, %67 ], [ %78, %74 ]
  br i1 %34, label %81, label %86

81:                                               ; preds = %79
  %82 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %15, ptr noundef nonnull align 8 dereferenceable(3552) %82, i64 3552, i1 false)
  %83 = ptrtoint ptr %80 to i64
  %84 = ptrtoint ptr %0 to i64
  %85 = sub i64 %83, %84
  br label %124

86:                                               ; preds = %79
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #30
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %4, i64 noundef %24, ptr noundef nonnull %88, ptr noundef nonnull %15, ptr noundef nonnull %87, ptr noundef nonnull %31, i32 noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %32, i64 noundef %33)
  %89 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %90 = load i64, ptr %89, align 8, !tbaa !428
  %91 = icmp ult i64 %90, -119
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #30
  br label %124

93:                                               ; preds = %86
  %94 = load i32, ptr %12, align 8, !tbaa !427
  %95 = shl i32 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %97 = load i32, ptr %96, align 4, !tbaa !429
  %98 = shl i32 %97, 4
  %99 = add i32 %98, %95
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %101 = load i32, ptr %100, align 8, !tbaa !430
  %102 = shl i32 %101, 2
  %103 = add i32 %99, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %80, align 1, !tbaa !196
  %105 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %106 = load i64, ptr %105, align 8, !tbaa !424
  %107 = getelementptr inbounds nuw i8, ptr %87, i64 %90
  %108 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %109 = load i32, ptr %108, align 8, !tbaa !426
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #30
  %110 = ptrtoint ptr %107 to i64
  %111 = sub i64 %57, %110
  %112 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %107, i64 noundef %111, ptr noundef nonnull %17, ptr noundef %30, ptr noundef nonnull %15, ptr noundef %26, ptr noundef nonnull %16, ptr noundef %28, ptr noundef %18, i64 noundef %24, i32 noundef %109, i32 noundef %10) #30
  %113 = icmp ult i64 %112, -119
  br i1 %113, label %114, label %124

114:                                              ; preds = %93
  %115 = icmp eq i64 %106, 0
  %116 = add i64 %112, %106
  %117 = icmp ugt i64 %116, 3
  %118 = or i1 %115, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 %112
  %121 = ptrtoint ptr %120 to i64
  %122 = ptrtoint ptr %0 to i64
  %123 = sub i64 %121, %122
  br label %124

124:                                              ; preds = %93, %92, %56, %114, %51, %119, %81
  %125 = phi i64 [ %85, %81 ], [ %123, %119 ], [ 0, %114 ], [ %90, %92 ], [ %53, %51 ], [ -70, %56 ], [ %112, %93 ]
  ret i64 %125
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #2 {
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %20, align 8, !tbaa !166
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %21, align 4, !tbaa !167
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %22, align 8, !tbaa !168
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %23, align 4, !tbaa !169
  %24 = icmp eq i32 %7, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %46

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 1, !tbaa !49
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
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %37 = load i32, ptr %36, align 1, !tbaa !49
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

46:                                               ; preds = %43, %39, %29, %15, %30, %25
  %47 = phi i64 [ 0, %25 ], [ 0, %30 ], [ %17, %15 ], [ -32, %29 ], [ %41, %39 ], [ %40, %43 ]
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef initializes((40, 48), (136, 140)) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #2 {
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = icmp eq i32 %11, 1
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  %15 = getelementptr i8, ptr %3, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !73
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
  br i1 %27, label %74, label %28

28:                                               ; preds = %8
  %29 = load ptr, ptr %0, align 8, !tbaa !236
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !237
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %35 = load i32, ptr %34, align 4, !tbaa !238
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load i32, ptr %36, align 8, !tbaa !239
  br label %54

38:                                               ; preds = %28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !240
  %41 = ptrtoint ptr %29 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !239
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %45, ptr %46, align 4, !tbaa !238
  %47 = trunc i64 %43 to i32
  store i32 %47, ptr %44, align 8, !tbaa !239
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %40, ptr %48, align 8, !tbaa !237
  %49 = sub i64 0, %43
  %50 = getelementptr inbounds i8, ptr %26, i64 %49
  store ptr %50, ptr %39, align 8, !tbaa !240
  %51 = sub i32 %47, %45
  %52 = icmp ult i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 %47, ptr %46, align 4, !tbaa !238
  br label %54

54:                                               ; preds = %53, %38, %31
  %55 = phi i32 [ %37, %31 ], [ %47, %53 ], [ %47, %38 ]
  %56 = phi i32 [ %35, %31 ], [ %47, %53 ], [ %45, %38 ]
  %57 = phi ptr [ %33, %31 ], [ %40, %53 ], [ %40, %38 ]
  %58 = getelementptr inbounds nuw i8, ptr %26, i64 %25
  store ptr %58, ptr %0, align 8, !tbaa !236
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds nuw i8, ptr %57, i64 %59
  %61 = icmp ugt ptr %58, %60
  %62 = zext i32 %55 to i64
  %63 = getelementptr inbounds nuw i8, ptr %57, i64 %62
  %64 = icmp ult ptr %26, %63
  %65 = and i1 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %68 = ptrtoint ptr %58 to i64
  %69 = ptrtoint ptr %57 to i64
  %70 = sub i64 %68, %69
  %71 = tail call i64 @llvm.umin.i64(i64 %70, i64 %62)
  %72 = trunc nuw i64 %71 to i32
  store i32 %72, ptr %67, align 4, !tbaa !238
  br label %73

73:                                               ; preds = %54, %66
  br i1 %14, label %75, label %133

74:                                               ; preds = %8
  br i1 %14, label %119, label %133

75:                                               ; preds = %73
  %76 = load ptr, ptr %1, align 8, !tbaa !236
  %77 = icmp eq ptr %26, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %80 = load ptr, ptr %79, align 8, !tbaa !237
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %82 = load i32, ptr %81, align 4, !tbaa !238
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %84 = load i32, ptr %83, align 8, !tbaa !239
  br label %101

85:                                               ; preds = %75
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !240
  %88 = ptrtoint ptr %76 to i64
  %89 = ptrtoint ptr %87 to i64
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %92 = load i32, ptr %91, align 8, !tbaa !239
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %92, ptr %93, align 4, !tbaa !238
  %94 = trunc i64 %90 to i32
  store i32 %94, ptr %91, align 8, !tbaa !239
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %87, ptr %95, align 8, !tbaa !237
  %96 = sub i64 0, %90
  %97 = getelementptr inbounds i8, ptr %26, i64 %96
  store ptr %97, ptr %86, align 8, !tbaa !240
  %98 = sub i32 %94, %92
  %99 = icmp ult i32 %98, 8
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  store i32 %94, ptr %93, align 4, !tbaa !238
  br label %101

101:                                              ; preds = %100, %85, %78
  %102 = phi i32 [ %84, %78 ], [ %94, %100 ], [ %94, %85 ]
  %103 = phi i32 [ %82, %78 ], [ %94, %100 ], [ %92, %85 ]
  %104 = phi ptr [ %80, %78 ], [ %87, %100 ], [ %87, %85 ]
  store ptr %58, ptr %1, align 8, !tbaa !236
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 %105
  %107 = icmp ugt ptr %58, %106
  %108 = zext i32 %102 to i64
  %109 = getelementptr inbounds nuw i8, ptr %104, i64 %108
  %110 = icmp ult ptr %26, %109
  %111 = and i1 %107, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %114 = ptrtoint ptr %58 to i64
  %115 = ptrtoint ptr %104 to i64
  %116 = sub i64 %114, %115
  %117 = tail call i64 @llvm.umin.i64(i64 %116, i64 %108)
  %118 = trunc nuw i64 %117 to i32
  store i32 %118, ptr %113, align 4, !tbaa !238
  br label %119

119:                                              ; preds = %74, %101, %112
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %121 = load i32, ptr %120, align 8, !tbaa !93
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %125 = load ptr, ptr %124, align 8, !tbaa !471
  %126 = ptrtoint ptr %9 to i64
  %127 = ptrtoint ptr %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  br label %130

130:                                              ; preds = %119, %123
  %131 = phi i32 [ %129, %123 ], [ 0, %119 ]
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %131, ptr %132, align 8, !tbaa !472
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #30
  br label %133

133:                                              ; preds = %74, %130, %73
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %135 = load i32, ptr %134, align 4, !tbaa !85
  %136 = add i32 %135, 3
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %138 = load i32, ptr %137, align 4, !tbaa !86
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.umax.i32(i32 %136, i32 %139)
  %141 = tail call i32 @llvm.umin.i32(i32 %140, i32 31)
  %142 = shl nuw i32 1, %141
  %143 = zext i32 %142 to i64
  %144 = icmp samesign ugt i64 %25, %143
  %145 = sub nsw i64 0, %143
  %146 = getelementptr inbounds i8, ptr %9, i64 %145
  %147 = select i1 %144, ptr %146, ptr %26
  %148 = tail call i64 @llvm.umin.i64(i64 %25, i64 %143)
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %150 = load ptr, ptr %149, align 8, !tbaa !437
  %151 = ptrtoint ptr %147 to i64
  %152 = ptrtoint ptr %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %154, ptr %155, align 4, !tbaa !241
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %157 = load i32, ptr %156, align 8, !tbaa !93
  %158 = icmp eq i32 %157, 0
  %159 = ptrtoint ptr %9 to i64
  %160 = sub i64 %159, %152
  %161 = trunc i64 %160 to i32
  %162 = select i1 %158, i32 %161, i32 0
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %162, ptr %163, align 8, !tbaa !408
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 164
  %165 = load i32, ptr %164, align 4, !tbaa !108
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %165, ptr %166, align 8, !tbaa !235
  %167 = icmp samesign ult i64 %148, 9
  br i1 %167, label %199, label %168

168:                                              ; preds = %133
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %147, ptr noundef nonnull %9)
  %169 = load i32, ptr %15, align 4, !tbaa !90
  switch i32 %169, label %194 [
    i32 1, label %170
    i32 2, label %171
    i32 3, label %172
    i32 4, label %172
    i32 5, label %172
    i32 6, label %192
    i32 7, label %192
    i32 8, label %192
    i32 9, label %192
  ]

170:                                              ; preds = %168
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #30
  br label %194

171:                                              ; preds = %168
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #30
  br label %194

172:                                              ; preds = %168, %168, %168
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %174 = load i32, ptr %173, align 4, !tbaa !405
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %177) #30
  br label %194

178:                                              ; preds = %172
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %180 = load i32, ptr %179, align 8, !tbaa !76
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i32, ptr %134, align 4, !tbaa !85
  %184 = zext nneg i32 %183 to i64
  %185 = shl nuw i64 1, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %187 = load ptr, ptr %186, align 8, !tbaa !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %187, i8 0, i64 %185, i1 false)
  %188 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %188) #30
  br label %194

189:                                              ; preds = %178
  %190 = getelementptr inbounds i8, ptr %9, i64 -8
  %191 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %190) #30
  br label %194

192:                                              ; preds = %168, %168, %168, %168
  %193 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %193, ptr noundef nonnull %9) #30
  br label %194

194:                                              ; preds = %168, %176, %189, %182, %192, %171, %170
  %195 = load ptr, ptr %149, align 8, !tbaa !437
  %196 = ptrtoint ptr %195 to i64
  %197 = sub i64 %159, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, ptr %155, align 4, !tbaa !241
  br label %199

199:                                              ; preds = %133, %194
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i64 @ZSTD_transferSequences_noDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 %6) unnamed_addr #22 {
  %8 = alloca %struct.repcodes_s, align 4
  %9 = load i32, ptr %1, align 8, !tbaa !447
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !473
  %12 = trunc i64 %5 to i32
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #30
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !266
  br label %28

21:                                               ; preds = %7
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %27 = load i64, ptr %26, align 8, !tbaa !123
  br label %28

28:                                               ; preds = %21, %25, %18
  %29 = phi i64 [ %20, %18 ], [ %27, %25 ], [ 0, %21 ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %32, i64 12, i1 false)
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %372, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %37 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 244
  %42 = getelementptr i8, ptr %0, i64 448
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %45 = getelementptr inbounds i8, ptr %14, i64 -32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %47 = ptrtoint ptr %45 to i64
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %51 = load i32, ptr %37, align 4
  %52 = load i32, ptr %38, align 4
  br label %53

53:                                               ; preds = %34, %362
  %54 = phi i32 [ %52, %34 ], [ %148, %362 ]
  %55 = phi i32 [ %51, %34 ], [ %149, %362 ]
  %56 = phi i32 [ %9, %34 ], [ %370, %362 ]
  %57 = phi i32 [ %11, %34 ], [ %107, %362 ]
  %58 = phi i32 [ %13, %34 ], [ %108, %362 ]
  %59 = phi ptr [ %4, %34 ], [ %368, %362 ]
  %60 = phi i32 [ 0, %34 ], [ %103, %362 ]
  %61 = phi i32 [ 0, %34 ], [ %102, %362 ]
  %62 = phi i32 [ %35, %34 ], [ %150, %362 ]
  %63 = ptrtoint ptr %59 to i64
  %64 = zext i32 %56 to i64
  %65 = icmp ugt i64 %3, %64
  %66 = icmp eq i32 %61, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %372

68:                                               ; preds = %53
  %69 = getelementptr inbounds nuw %struct.ZSTD_Sequence, ptr %2, i64 %64
  %70 = load i32, ptr %69, align 4, !tbaa !49
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %72 = load i32, ptr %71, align 4, !tbaa !49
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %74 = load i32, ptr %73, align 4, !tbaa !49
  %75 = add i32 %74, %72
  %76 = icmp uge i32 %58, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %57)
  %79 = tail call i32 @llvm.usub.sat.i32(i32 %57, i32 %72)
  %80 = sub i32 %74, %79
  br label %101

81:                                               ; preds = %68
  %82 = icmp ugt i32 %58, %72
  br i1 %82, label %83, label %372

83:                                               ; preds = %81
  %84 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %57)
  %85 = add i32 %57, %84
  %86 = sub i32 %58, %85
  %87 = zext i32 %74 to i64
  %88 = icmp ult i64 %5, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load i32, ptr %36, align 4, !tbaa !433
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = sub i32 %75, %58
  %94 = icmp ult i32 %93, %90
  %95 = sub nuw i32 %90, %93
  %96 = select i1 %94, i32 %95, i32 %60
  %97 = tail call i32 @llvm.usub.sat.i32(i32 %90, i32 %93)
  %98 = sub i32 %86, %97
  br label %101

99:                                               ; preds = %83, %89
  %100 = sub i32 %58, %72
  br label %372

101:                                              ; preds = %92, %77
  %102 = phi i32 [ 0, %77 ], [ 1, %92 ]
  %103 = phi i32 [ %60, %77 ], [ %96, %92 ]
  %104 = phi i32 [ %78, %77 ], [ %84, %92 ]
  %105 = phi i32 [ %80, %77 ], [ %98, %92 ]
  %106 = phi i32 [ %75, %77 ], [ %97, %92 ]
  %107 = phi i32 [ 0, %77 ], [ %57, %92 ]
  %108 = sub i32 %58, %106
  %109 = icmp eq i32 %104, 0
  %110 = zext i1 %109 to i32
  %111 = add i32 %70, 3
  %112 = icmp ne i32 %70, %62
  %113 = select i1 %109, i1 true, i1 %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %101
  %115 = icmp eq i32 %70, %55
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = select i1 %109, i32 1, i32 2
  br label %128

118:                                              ; preds = %114
  %119 = icmp eq i32 %70, %54
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = xor i32 %110, 3
  br label %128

122:                                              ; preds = %118
  %123 = add i32 %62, -1
  %124 = icmp eq i32 %70, %123
  %125 = select i1 %109, i1 %124, i1 false
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = icmp ugt i32 %111, 3
  br i1 %127, label %143, label %128

128:                                              ; preds = %122, %101, %120, %116, %126
  %129 = phi i32 [ %111, %126 ], [ %121, %120 ], [ %117, %116 ], [ 1, %101 ], [ 3, %122 ]
  %130 = xor i1 %109, true
  %131 = sext i1 %130 to i32
  %132 = add nsw i32 %129, %131
  switch i32 %132, label %135 [
    i32 0, label %147
    i32 3, label %133
  ]

133:                                              ; preds = %128
  %134 = add i32 %62, -1
  br label %139

135:                                              ; preds = %128
  %136 = zext i32 %132 to i64
  %137 = getelementptr inbounds nuw i32, ptr %8, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !49
  br label %139

139:                                              ; preds = %135, %133
  %140 = phi i32 [ %134, %133 ], [ %138, %135 ]
  %141 = icmp eq i32 %132, 1
  %142 = select i1 %141, i32 %54, i32 %55
  br label %143

143:                                              ; preds = %126, %139
  %144 = phi i32 [ %142, %139 ], [ %55, %126 ]
  %145 = phi i32 [ %129, %139 ], [ %111, %126 ]
  %146 = phi i32 [ %140, %139 ], [ %70, %126 ]
  store i32 %144, ptr %38, align 4, !tbaa !49
  store i32 %62, ptr %37, align 4, !tbaa !49
  store i32 %146, ptr %8, align 4, !tbaa !49
  br label %147

147:                                              ; preds = %128, %143
  %148 = phi i32 [ %54, %128 ], [ %144, %143 ]
  %149 = phi i32 [ %55, %128 ], [ %62, %143 ]
  %150 = phi i32 [ %62, %128 ], [ %146, %143 ]
  %151 = phi i32 [ %129, %128 ], [ %145, %143 ]
  %152 = load i32, ptr %39, align 8, !tbaa !369
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %147
  %155 = add i32 %105, %104
  %156 = zext i32 %155 to i64
  %157 = load i64, ptr %40, align 8, !tbaa !449
  %158 = add i64 %157, %156
  store i64 %158, ptr %40, align 8, !tbaa !449
  %159 = load i32, ptr %41, align 4, !tbaa !244
  %160 = shl nuw i32 1, %159
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %158, %161
  %163 = add i64 %158, %29
  %164 = select i1 %162, i64 %161, i64 %163
  %165 = zext i32 %151 to i64
  %166 = add i64 %164, 3
  %167 = icmp ult i64 %166, %165
  br i1 %167, label %398, label %168

168:                                              ; preds = %154
  %169 = load ptr, ptr %42, align 8, !tbaa !127
  %170 = icmp ne ptr %169, null
  %171 = load i32, ptr %36, align 4, !tbaa !433
  %172 = icmp eq i32 %171, 3
  %173 = or i1 %170, %172
  %174 = select i1 %173, i64 3, i64 4
  %175 = zext i32 %105 to i64
  %176 = icmp samesign ugt i64 %174, %175
  br i1 %176, label %398, label %177

177:                                              ; preds = %168, %147
  %178 = load i32, ptr %1, align 8, !tbaa !447
  %179 = sub i32 %56, %178
  %180 = zext i32 %179 to i64
  %181 = load i64, ptr %43, align 8, !tbaa !358
  %182 = icmp ugt i64 %181, %180
  br i1 %182, label %183, label %398

183:                                              ; preds = %177
  %184 = zext i32 %104 to i64
  %185 = zext i32 %105 to i64
  %186 = getelementptr inbounds nuw i8, ptr %59, i64 %184
  %187 = icmp ugt ptr %186, %45
  %188 = load ptr, ptr %46, align 8, !tbaa !201
  br i1 %187, label %212, label %189

189:                                              ; preds = %183
  %190 = load <2 x i64>, ptr %59, align 1, !tbaa !196
  store <2 x i64> %190, ptr %188, align 1, !tbaa !196
  %191 = icmp ugt i32 %104, 16
  br i1 %191, label %192, label %333

192:                                              ; preds = %189
  %193 = load ptr, ptr %46, align 8, !tbaa !201
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 16
  %195 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %196 = getelementptr i8, ptr %193, i64 %184
  %197 = load <2 x i64>, ptr %195, align 1, !tbaa !196
  store <2 x i64> %197, ptr %194, align 1, !tbaa !196
  %198 = add i32 %104, -16
  %199 = icmp ult i32 %198, 17
  br i1 %199, label %333, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %193, i64 32
  br label %202

202:                                              ; preds = %202, %200
  %203 = phi ptr [ %201, %200 ], [ %210, %202 ]
  %204 = phi ptr [ %195, %200 ], [ %208, %202 ]
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %206 = load <2 x i64>, ptr %205, align 1, !tbaa !196
  store <2 x i64> %206, ptr %203, align 1, !tbaa !196
  %207 = getelementptr inbounds nuw i8, ptr %203, i64 16
  %208 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %209 = load <2 x i64>, ptr %208, align 1, !tbaa !196
  store <2 x i64> %209, ptr %207, align 1, !tbaa !196
  %210 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %211 = icmp ult ptr %210, %196
  br i1 %211, label %202, label %337, !llvm.loop !450

212:                                              ; preds = %183
  %213 = icmp ugt ptr %59, %45
  br i1 %213, label %232, label %214

214:                                              ; preds = %212
  %215 = ptrtoint ptr %59 to i64
  %216 = sub i64 %47, %215
  %217 = getelementptr inbounds i8, ptr %188, i64 %216
  %218 = load <2 x i64>, ptr %59, align 1, !tbaa !196
  store <2 x i64> %218, ptr %188, align 1, !tbaa !196
  %219 = icmp ult i64 %216, 17
  br i1 %219, label %232, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds nuw i8, ptr %188, i64 16
  br label %222

222:                                              ; preds = %222, %220
  %223 = phi ptr [ %221, %220 ], [ %230, %222 ]
  %224 = phi ptr [ %59, %220 ], [ %228, %222 ]
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 16
  %226 = load <2 x i64>, ptr %225, align 1, !tbaa !196
  store <2 x i64> %226, ptr %223, align 1, !tbaa !196
  %227 = getelementptr inbounds nuw i8, ptr %223, i64 16
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 32
  %229 = load <2 x i64>, ptr %228, align 1, !tbaa !196
  store <2 x i64> %229, ptr %227, align 1, !tbaa !196
  %230 = getelementptr inbounds nuw i8, ptr %223, i64 32
  %231 = icmp ult ptr %230, %217
  br i1 %231, label %222, label %232, !llvm.loop !450

232:                                              ; preds = %222, %214, %212
  %233 = phi ptr [ %45, %214 ], [ %59, %212 ], [ %45, %222 ]
  %234 = phi ptr [ %217, %214 ], [ %188, %212 ], [ %217, %222 ]
  %235 = icmp ult ptr %233, %186
  br i1 %235, label %236, label %337

236:                                              ; preds = %232
  %237 = ptrtoint ptr %233 to i64
  %238 = ptrtoint ptr %234 to i64
  %239 = ptrtoint ptr %233 to i64
  %240 = add i64 %63, %184
  %241 = sub i64 %240, %239
  %242 = icmp ult i64 %241, 4
  %243 = sub i64 %238, %237
  %244 = icmp ult i64 %243, 32
  %245 = select i1 %242, i1 true, i1 %244
  br i1 %245, label %281, label %246

246:                                              ; preds = %236
  %247 = icmp ult i64 %241, 32
  br i1 %247, label %267, label %248

248:                                              ; preds = %246
  %249 = and i64 %241, -32
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi i64 [ 0, %248 ], [ %258, %250 ]
  %252 = getelementptr i8, ptr %234, i64 %251
  %253 = getelementptr i8, ptr %233, i64 %251
  %254 = getelementptr i8, ptr %253, i64 16
  %255 = load <16 x i8>, ptr %253, align 1, !tbaa !196
  %256 = load <16 x i8>, ptr %254, align 1, !tbaa !196
  %257 = getelementptr i8, ptr %252, i64 16
  store <16 x i8> %255, ptr %252, align 1, !tbaa !196
  store <16 x i8> %256, ptr %257, align 1, !tbaa !196
  %258 = add nuw i64 %251, 32
  %259 = icmp eq i64 %258, %249
  br i1 %259, label %260, label %250, !llvm.loop !474

260:                                              ; preds = %250
  %261 = icmp eq i64 %241, %249
  br i1 %261, label %337, label %262

262:                                              ; preds = %260
  %263 = getelementptr i8, ptr %234, i64 %249
  %264 = getelementptr i8, ptr %233, i64 %249
  %265 = and i64 %241, 28
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %281, label %267

267:                                              ; preds = %262, %246
  %268 = phi i64 [ %249, %262 ], [ 0, %246 ]
  %269 = and i64 %241, -4
  %270 = getelementptr i8, ptr %234, i64 %269
  %271 = getelementptr i8, ptr %233, i64 %269
  br label %272

272:                                              ; preds = %272, %267
  %273 = phi i64 [ %268, %267 ], [ %277, %272 ]
  %274 = getelementptr i8, ptr %234, i64 %273
  %275 = getelementptr i8, ptr %233, i64 %273
  %276 = load <4 x i8>, ptr %275, align 1, !tbaa !196
  store <4 x i8> %276, ptr %274, align 1, !tbaa !196
  %277 = add nuw i64 %273, 4
  %278 = icmp eq i64 %277, %269
  br i1 %278, label %279, label %272, !llvm.loop !475

279:                                              ; preds = %272
  %280 = icmp eq i64 %241, %269
  br i1 %280, label %337, label %281

281:                                              ; preds = %262, %279, %236
  %282 = phi ptr [ %234, %236 ], [ %263, %262 ], [ %270, %279 ]
  %283 = phi ptr [ %233, %236 ], [ %264, %262 ], [ %271, %279 ]
  %284 = add i64 %63, %184
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %284, %285
  %287 = add i64 %63, -1
  %288 = add i64 %287, %184
  %289 = sub i64 %288, %285
  %290 = and i64 %286, 7
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %301, label %292

292:                                              ; preds = %281, %292
  %293 = phi ptr [ %298, %292 ], [ %282, %281 ]
  %294 = phi ptr [ %296, %292 ], [ %283, %281 ]
  %295 = phi i64 [ %299, %292 ], [ 0, %281 ]
  %296 = getelementptr inbounds nuw i8, ptr %294, i64 1
  %297 = load i8, ptr %294, align 1, !tbaa !196
  %298 = getelementptr inbounds nuw i8, ptr %293, i64 1
  store i8 %297, ptr %293, align 1, !tbaa !196
  %299 = add i64 %295, 1
  %300 = icmp eq i64 %299, %290
  br i1 %300, label %301, label %292, !llvm.loop !476

301:                                              ; preds = %292, %281
  %302 = phi ptr [ %282, %281 ], [ %298, %292 ]
  %303 = phi ptr [ %283, %281 ], [ %296, %292 ]
  %304 = icmp ult i64 %289, 7
  br i1 %304, label %337, label %305

305:                                              ; preds = %301, %305
  %306 = phi ptr [ %331, %305 ], [ %302, %301 ]
  %307 = phi ptr [ %329, %305 ], [ %303, %301 ]
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 1
  %309 = load i8, ptr %307, align 1, !tbaa !196
  %310 = getelementptr inbounds nuw i8, ptr %306, i64 1
  store i8 %309, ptr %306, align 1, !tbaa !196
  %311 = getelementptr inbounds nuw i8, ptr %307, i64 2
  %312 = load i8, ptr %308, align 1, !tbaa !196
  %313 = getelementptr inbounds nuw i8, ptr %306, i64 2
  store i8 %312, ptr %310, align 1, !tbaa !196
  %314 = getelementptr inbounds nuw i8, ptr %307, i64 3
  %315 = load i8, ptr %311, align 1, !tbaa !196
  %316 = getelementptr inbounds nuw i8, ptr %306, i64 3
  store i8 %315, ptr %313, align 1, !tbaa !196
  %317 = getelementptr inbounds nuw i8, ptr %307, i64 4
  %318 = load i8, ptr %314, align 1, !tbaa !196
  %319 = getelementptr inbounds nuw i8, ptr %306, i64 4
  store i8 %318, ptr %316, align 1, !tbaa !196
  %320 = getelementptr inbounds nuw i8, ptr %307, i64 5
  %321 = load i8, ptr %317, align 1, !tbaa !196
  %322 = getelementptr inbounds nuw i8, ptr %306, i64 5
  store i8 %321, ptr %319, align 1, !tbaa !196
  %323 = getelementptr inbounds nuw i8, ptr %307, i64 6
  %324 = load i8, ptr %320, align 1, !tbaa !196
  %325 = getelementptr inbounds nuw i8, ptr %306, i64 6
  store i8 %324, ptr %322, align 1, !tbaa !196
  %326 = getelementptr inbounds nuw i8, ptr %307, i64 7
  %327 = load i8, ptr %323, align 1, !tbaa !196
  %328 = getelementptr inbounds nuw i8, ptr %306, i64 7
  store i8 %327, ptr %325, align 1, !tbaa !196
  %329 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %330 = load i8, ptr %326, align 1, !tbaa !196
  %331 = getelementptr inbounds nuw i8, ptr %306, i64 8
  store i8 %330, ptr %328, align 1, !tbaa !196
  %332 = icmp eq ptr %329, %186
  br i1 %332, label %337, label %305, !llvm.loop !477

333:                                              ; preds = %192, %189
  %334 = load ptr, ptr %46, align 8, !tbaa !201
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %184
  store ptr %335, ptr %46, align 8, !tbaa !201
  %336 = load ptr, ptr %49, align 8, !tbaa !190
  br label %349

337:                                              ; preds = %202, %301, %305, %260, %279, %232
  %338 = load ptr, ptr %46, align 8, !tbaa !201
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %184
  store ptr %339, ptr %46, align 8, !tbaa !201
  %340 = icmp ugt i32 %104, 65535
  %341 = load ptr, ptr %49, align 8, !tbaa !190
  br i1 %340, label %342, label %349, !prof !455

342:                                              ; preds = %337
  store i32 1, ptr %48, align 8, !tbaa !198
  %343 = load ptr, ptr %44, align 8, !tbaa !186
  %344 = ptrtoint ptr %341 to i64
  %345 = ptrtoint ptr %343 to i64
  %346 = sub i64 %344, %345
  %347 = lshr exact i64 %346, 3
  %348 = trunc i64 %347 to i32
  store i32 %348, ptr %50, align 4, !tbaa !199
  br label %349

349:                                              ; preds = %333, %342, %337
  %350 = phi ptr [ %336, %333 ], [ %341, %342 ], [ %341, %337 ]
  %351 = trunc i32 %104 to i16
  %352 = getelementptr inbounds nuw i8, ptr %350, i64 4
  store i16 %351, ptr %352, align 4, !tbaa !191
  store i32 %151, ptr %350, align 4, !tbaa !194
  %353 = add nsw i64 %185, -3
  %354 = icmp ugt i64 %353, 65535
  br i1 %354, label %355, label %362, !prof !356

355:                                              ; preds = %349
  store i32 2, ptr %48, align 8, !tbaa !198
  %356 = load ptr, ptr %44, align 8, !tbaa !186
  %357 = ptrtoint ptr %350 to i64
  %358 = ptrtoint ptr %356 to i64
  %359 = sub i64 %357, %358
  %360 = lshr exact i64 %359, 3
  %361 = trunc i64 %360 to i32
  store i32 %361, ptr %50, align 4, !tbaa !199
  br label %362

362:                                              ; preds = %355, %349
  %363 = trunc i64 %353 to i16
  %364 = getelementptr inbounds nuw i8, ptr %350, i64 6
  store i16 %363, ptr %364, align 2, !tbaa !195
  %365 = getelementptr inbounds nuw i8, ptr %350, i64 8
  store ptr %365, ptr %49, align 8, !tbaa !190
  %366 = add i32 %105, %104
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds nuw i8, ptr %59, i64 %367
  %369 = zext i1 %76 to i32
  %370 = add i32 %56, %369
  %371 = icmp eq i32 %108, 0
  br i1 %371, label %372, label %53

372:                                              ; preds = %53, %362, %81, %28, %99
  %373 = phi ptr [ %59, %99 ], [ %4, %28 ], [ %59, %53 ], [ %368, %362 ], [ %59, %81 ]
  %374 = phi i32 [ %56, %99 ], [ %9, %28 ], [ %56, %53 ], [ %370, %362 ], [ %56, %81 ]
  %375 = phi i32 [ %100, %99 ], [ 0, %28 ], [ %60, %53 ], [ %103, %362 ], [ %60, %81 ]
  %376 = phi i32 [ %72, %99 ], [ 0, %28 ], [ %58, %53 ], [ 0, %362 ], [ %58, %81 ]
  store i32 %374, ptr %1, align 8, !tbaa !447
  store i32 %376, ptr %10, align 4, !tbaa !473
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %378 = load ptr, ptr %377, align 8, !tbaa !56
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %379, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  %380 = zext i32 %375 to i64
  %381 = sub nsw i64 0, %380
  %382 = getelementptr inbounds i8, ptr %14, i64 %381
  %383 = icmp eq ptr %373, %382
  br i1 %383, label %396, label %384

384:                                              ; preds = %372
  %385 = ptrtoint ptr %382 to i64
  %386 = ptrtoint ptr %373 to i64
  %387 = sub i64 %385, %386
  %388 = and i64 %387, 4294967295
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %390 = load ptr, ptr %389, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %390, ptr readonly align 1 %373, i64 %388, i1 false)
  %391 = load ptr, ptr %389, align 8, !tbaa !201
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 %388
  store ptr %392, ptr %389, align 8, !tbaa !201
  %393 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %394 = load i64, ptr %393, align 8, !tbaa !449
  %395 = add i64 %394, %388
  store i64 %395, ptr %393, align 8, !tbaa !449
  br label %396

396:                                              ; preds = %384, %372
  %397 = sub nsw i64 %5, %380
  br label %398

398:                                              ; preds = %177, %154, %168, %396
  %399 = phi i64 [ %397, %396 ], [ -107, %168 ], [ -107, %154 ], [ -107, %177 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #30
  ret i64 %399
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind memory(none) }
attributes #30 = { nounwind }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{i64 1894167}
!6 = !{i64 1894265}
!7 = !{i64 1894379}
!8 = !{!9, !10, i64 8}
!9 = !{!"ZSTD_CCtx_s", !10, i64 0, !10, i64 4, !10, i64 8, !13, i64 16, !13, i64 240, !13, i64 464, !10, i64 688, !16, i64 696, !20, i64 704, !16, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !22, i64 808, !18, i64 896, !23, i64 920, !16, i64 928, !24, i64 936, !10, i64 968, !10, i64 972, !25, i64 976, !28, i64 1056, !19, i64 3168, !16, i64 3176, !30, i64 3184, !31, i64 3224, !19, i64 3544, !16, i64 3552, !10, i64 3560, !27, i64 3568, !16, i64 3576, !16, i64 3584, !16, i64 3592, !16, i64 3600, !27, i64 3608, !16, i64 3616, !16, i64 3624, !16, i64 3632, !10, i64 3640, !10, i64 3644, !36, i64 3648, !16, i64 3672, !16, i64 3680, !37, i64 3688, !38, i64 3728, !39, i64 3736, !21, i64 3760, !40, i64 3768, !19, i64 5264, !16, i64 5272}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"ZSTD_CCtx_params_s", !10, i64 0, !14, i64 4, !15, i64 32, !10, i64 44, !10, i64 48, !16, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !16, i64 80, !10, i64 88, !10, i64 92, !17, i64 96, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !16, i64 152, !10, i64 160, !10, i64 164, !18, i64 168, !10, i64 192, !10, i64 196, !19, i64 200, !19, i64 208, !10, i64 216}
!14 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!15 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!16 = !{!"long", !11, i64 0}
!17 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!18 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"any pointer", !11, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !11, i64 56, !10, i64 60, !10, i64 64, !10, i64 68}
!21 = !{!"long long", !11, i64 0}
!22 = !{!"XXH64_state_s", !16, i64 0, !11, i64 8, !11, i64 40, !10, i64 72, !10, i64 76, !16, i64 80}
!23 = !{!"p1 _ZTS10POOL_ctx_s", !19, i64 0}
!24 = !{!"", !10, i64 0, !19, i64 8, !16, i64 16, !16, i64 24}
!25 = !{!"", !26, i64 0, !26, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !16, i64 56, !16, i64 64, !10, i64 72, !10, i64 76}
!26 = !{!"p1 _ZTS8SeqDef_s", !19, i64 0}
!27 = !{!"p1 omnipotent char", !19, i64 0}
!28 = !{!"", !29, i64 0, !19, i64 40, !10, i64 48, !27, i64 56, !11, i64 64, !11, i64 576}
!29 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!30 = !{!"", !19, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!31 = !{!"", !19, i64 0, !19, i64 8, !32, i64 16}
!32 = !{!"ZSTD_MatchState_t", !29, i64 0, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !27, i64 56, !11, i64 64, !16, i64 96, !10, i64 104, !33, i64 112, !33, i64 120, !33, i64 128, !10, i64 136, !10, i64 140, !34, i64 144, !35, i64 248, !14, i64 256, !19, i64 288, !10, i64 296, !10, i64 300}
!33 = !{!"p1 int", !19, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !19, i64 32, !19, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !19, i64 88, !10, i64 96}
!35 = !{!"p1 _ZTS17ZSTD_MatchState_t", !19, i64 0}
!36 = !{!"ZSTD_inBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!37 = !{!"", !19, i64 0, !19, i64 8, !16, i64 16, !10, i64 24, !38, i64 32}
!38 = !{!"p1 _ZTS12ZSTD_CDict_s", !19, i64 0}
!39 = !{!"ZSTD_prefixDict_s", !19, i64 0, !16, i64 8, !10, i64 16}
!40 = !{!"", !25, i64 0, !25, i64 80, !25, i64 160, !25, i64 240, !25, i64 320, !11, i64 400, !41, i64 1184}
!41 = !{!"", !42, i64 0, !43, i64 144}
!42 = !{!"", !10, i64 0, !11, i64 4, !16, i64 136}
!43 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 12, !16, i64 152, !16, i64 160}
!44 = !{!13, !10, i64 44}
!45 = !{!13, !10, i64 32}
!46 = !{!18, !19, i64 0}
!47 = !{!18, !19, i64 8}
!48 = !{!19, !19, i64 0}
!49 = !{!10, !10, i64 0}
!50 = !{!9, !16, i64 928}
!51 = !{!20, !11, i64 56}
!52 = !{!20, !19, i64 16}
!53 = !{!20, !19, i64 24}
!54 = !{!20, !19, i64 32}
!55 = !{!9, !19, i64 3224}
!56 = !{!9, !19, i64 3232}
!57 = !{!9, !19, i64 3544}
!58 = !{!9, !16, i64 3552}
!59 = !{!20, !19, i64 0}
!60 = !{!20, !19, i64 8}
!61 = !{!9, !19, i64 704}
!62 = !{!63, !19, i64 32}
!63 = !{!"ZSTD_CDict_s", !19, i64 0, !16, i64 8, !10, i64 16, !33, i64 24, !20, i64 32, !32, i64 104, !64, i64 408, !18, i64 6040, !10, i64 6064, !10, i64 6068, !10, i64 6072}
!64 = !{!"", !65, i64 0, !11, i64 5616}
!65 = !{!"", !66, i64 0, !67, i64 2064}
!66 = !{!"", !11, i64 0, !10, i64 2056}
!67 = !{!"", !11, i64 0, !11, i64 772, !11, i64 2224, !10, i64 3540, !10, i64 3544, !10, i64 3548}
!68 = !{!14, !10, i64 0}
!69 = !{!14, !10, i64 4}
!70 = !{!14, !10, i64 8}
!71 = !{!14, !10, i64 12}
!72 = !{!14, !10, i64 16}
!73 = !{!14, !10, i64 24}
!74 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49}
!75 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49}
!76 = !{!13, !10, i64 160}
!77 = !{!13, !10, i64 140}
!78 = !{!13, !10, i64 96}
!79 = !{!13, !16, i64 152}
!80 = !{!13, !10, i64 216}
!81 = !{!9, !10, i64 3640}
!82 = !{!9, !10, i64 4}
!83 = !{!13, !10, i64 0}
!84 = !{!13, !10, i64 4}
!85 = !{!13, !10, i64 12}
!86 = !{!13, !10, i64 8}
!87 = !{!13, !10, i64 16}
!88 = !{!13, !10, i64 20}
!89 = !{!13, !10, i64 24}
!90 = !{!13, !10, i64 28}
!91 = !{!13, !10, i64 36}
!92 = !{!13, !10, i64 40}
!93 = !{!13, !10, i64 48}
!94 = !{!13, !10, i64 68}
!95 = !{!13, !10, i64 72}
!96 = !{!13, !10, i64 120}
!97 = !{!13, !10, i64 100}
!98 = !{!13, !10, i64 108}
!99 = !{!13, !10, i64 104}
!100 = !{!13, !10, i64 112}
!101 = !{!13, !16, i64 56}
!102 = !{!13, !10, i64 64}
!103 = !{!13, !10, i64 124}
!104 = !{!13, !10, i64 128}
!105 = !{!13, !10, i64 132}
!106 = !{!13, !10, i64 136}
!107 = !{!13, !10, i64 144}
!108 = !{!13, !10, i64 164}
!109 = !{!13, !10, i64 192}
!110 = !{!13, !10, i64 196}
!111 = !{!13, !10, i64 76}
!112 = !{!9, !38, i64 3728}
!113 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 36, i64 4, !49, i64 40, i64 4, !49, i64 44, i64 4, !49, i64 48, i64 4, !49, i64 56, i64 8, !114, i64 64, i64 4, !49, i64 68, i64 4, !49, i64 72, i64 4, !49, i64 76, i64 4, !49, i64 80, i64 8, !114, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 4, !49, i64 132, i64 4, !49, i64 136, i64 4, !49, i64 140, i64 4, !49, i64 144, i64 4, !49, i64 152, i64 8, !114, i64 160, i64 4, !49, i64 164, i64 4, !49, i64 168, i64 8, !48, i64 176, i64 8, !48, i64 184, i64 8, !48, i64 192, i64 4, !49, i64 196, i64 4, !49, i64 200, i64 8, !48, i64 208, i64 8, !48, i64 216, i64 4, !49}
!114 = !{!16, !16, i64 0}
!115 = !{!9, !21, i64 784}
!116 = !{!9, !19, i64 3688}
!117 = !{!9, !19, i64 3696}
!118 = !{!9, !16, i64 3704}
!119 = !{!9, !10, i64 3712}
!120 = !{!9, !38, i64 3720}
!121 = !{!9, !23, i64 920}
!122 = !{!9, !19, i64 3736}
!123 = !{!9, !16, i64 3744}
!124 = !{!9, !10, i64 3752}
!125 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49}
!126 = !{!17, !10, i64 0}
!127 = !{!13, !19, i64 208}
!128 = !{!129}
!129 = distinct !{!129, !130, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!130 = distinct !{!130, !"ZSTD_makeCCtxParamsFromCParams"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"ZSTD_getCParams_internal: argument 0"}
!133 = distinct !{!133, !"ZSTD_getCParams_internal"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"ZSTD_getCParams_internal: argument 0"}
!136 = distinct !{!136, !"ZSTD_getCParams_internal"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"ZSTD_getCParams_internal: argument 0"}
!139 = distinct !{!139, !"ZSTD_getCParams_internal"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"ZSTD_getCParams_internal: argument 0"}
!142 = distinct !{!142, !"ZSTD_getCParams_internal"}
!143 = !{}
!144 = !{!"branch_weights", i32 1, i32 1048575}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!149 = distinct !{!149, !"ZSTD_makeCCtxParamsFromCParams"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"ZSTD_getCParams_internal: argument 0"}
!152 = distinct !{!152, !"ZSTD_getCParams_internal"}
!153 = distinct !{!153, !146}
!154 = !{!9, !27, i64 3568}
!155 = !{!9, !16, i64 3592}
!156 = !{!9, !16, i64 3584}
!157 = !{!9, !21, i64 792}
!158 = !{!159, !21, i64 0}
!159 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !10, i64 32, !10, i64 36}
!160 = !{!159, !21, i64 8}
!161 = !{!9, !21, i64 800}
!162 = !{!159, !21, i64 16}
!163 = !{!159, !21, i64 24}
!164 = !{!159, !10, i64 32}
!165 = !{!159, !10, i64 36}
!166 = !{!64, !10, i64 2056}
!167 = !{!64, !10, i64 5604}
!168 = !{!64, !10, i64 5608}
!169 = !{!64, !10, i64 5612}
!170 = !{!9, !10, i64 0}
!171 = !{!9, !10, i64 3560}
!172 = !{!9, !10, i64 400}
!173 = !{!9, !10, i64 380}
!174 = !{!9, !16, i64 392}
!175 = !{!9, !10, i64 268}
!176 = !{!9, !10, i64 248}
!177 = !{!9, !10, i64 252}
!178 = !{!9, !10, i64 3288}
!179 = !{!9, !33, i64 3352}
!180 = !{!9, !33, i64 3368}
!181 = !{!9, !33, i64 3360}
!182 = !{i64 0, i64 8, !183, i64 8, i64 8, !183, i64 16, i64 8, !183, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 32, i64 4, !49}
!183 = !{!27, !27, i64 0}
!184 = !{!9, !10, i64 688}
!185 = !{!9, !16, i64 696}
!186 = !{!25, !26, i64 0}
!187 = !{!25, !27, i64 32}
!188 = !{!25, !27, i64 48}
!189 = !{!25, !27, i64 40}
!190 = !{!25, !26, i64 8}
!191 = !{!192, !193, i64 4}
!192 = !{!"SeqDef_s", !10, i64 0, !193, i64 4, !193, i64 6}
!193 = !{!"short", !11, i64 0}
!194 = !{!192, !10, i64 0}
!195 = !{!192, !193, i64 6}
!196 = !{!11, !11, i64 0}
!197 = distinct !{!197, !146}
!198 = !{!25, !10, i64 72}
!199 = !{!25, !10, i64 76}
!200 = !{!25, !27, i64 16}
!201 = !{!25, !27, i64 24}
!202 = !{!203, !19, i64 0}
!203 = !{!"ZSTD_outBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!204 = !{!203, !16, i64 8}
!205 = !{!203, !16, i64 16}
!206 = !{!36, !19, i64 0}
!207 = !{!36, !16, i64 8}
!208 = !{!36, !16, i64 16}
!209 = !{!9, !10, i64 140}
!210 = !{!9, !10, i64 144}
!211 = !{!9, !16, i64 952}
!212 = !{!213, !10, i64 0}
!213 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!214 = !{!213, !10, i64 8}
!215 = !{!213, !10, i64 4}
!216 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49}
!217 = distinct !{!217, !146, !218}
!218 = !{!"llvm.loop.peeled.count", i32 1}
!219 = !{!66, !10, i64 2056}
!220 = !{!42, !10, i64 0}
!221 = !{!41, !16, i64 136}
!222 = !{!67, !10, i64 3548}
!223 = !{!224}
!224 = distinct !{!224, !225, !"ZSTD_buildDummySequencesStatistics: argument 0"}
!225 = distinct !{!225, !"ZSTD_buildDummySequencesStatistics"}
!226 = !{!67, !10, i64 3540}
!227 = !{!67, !10, i64 3544}
!228 = !{!43, !10, i64 8}
!229 = !{!43, !16, i64 160}
!230 = !{!41, !16, i64 296}
!231 = !{!193, !193, i64 0}
!232 = !{!9, !19, i64 3184}
!233 = !{!9, !16, i64 3208}
!234 = !{!9, !16, i64 3216}
!235 = !{!32, !10, i64 136}
!236 = !{!29, !27, i64 0}
!237 = !{!29, !27, i64 16}
!238 = !{!29, !10, i64 28}
!239 = !{!29, !10, i64 24}
!240 = !{!29, !27, i64 8}
!241 = !{!32, !10, i64 44}
!242 = !{!9, !10, i64 336}
!243 = !{!9, !16, i64 776}
!244 = !{!9, !10, i64 244}
!245 = !{!9, !10, i64 276}
!246 = !{!9, !10, i64 384}
!247 = !{!35, !35, i64 0}
!248 = !{!32, !10, i64 28}
!249 = !{!9, !10, i64 968}
!250 = !{!9, !10, i64 936}
!251 = !{!9, !26, i64 984}
!252 = !{!9, !26, i64 976}
!253 = !{!254, !33, i64 0}
!254 = !{!"", !33, i64 0, !16, i64 8}
!255 = !{!254, !16, i64 8}
!256 = !{i64 0, i64 8, !257, i64 8, i64 8, !257, i64 16, i64 8, !183, i64 24, i64 8, !183, i64 32, i64 8, !183, i64 40, i64 8, !183, i64 48, i64 8, !183, i64 56, i64 8, !114, i64 64, i64 8, !114, i64 72, i64 4, !49, i64 76, i64 4, !49}
!257 = !{!26, !26, i64 0}
!258 = distinct !{!258, !146}
!259 = distinct !{!259, !146}
!260 = distinct !{!260, !146}
!261 = distinct !{!261, !146}
!262 = distinct !{!262, !146, !263, !264}
!263 = !{!"llvm.loop.isvectorized", i32 1}
!264 = !{!"llvm.loop.unroll.runtime.disable"}
!265 = distinct !{!265, !146, !264, !263}
!266 = !{!63, !16, i64 8}
!267 = !{!9, !21, i64 3760}
!268 = !{!63, !10, i64 6068}
!269 = !{!63, !10, i64 244}
!270 = !{!63, !10, i64 6072}
!271 = !{!63, !27, i64 104}
!272 = !{!63, !27, i64 112}
!273 = !{!63, !10, i64 128}
!274 = !{!9, !35, i64 3488}
!275 = !{!9, !10, i64 3264}
!276 = !{!9, !27, i64 3248}
!277 = !{!9, !27, i64 3240}
!278 = !{!9, !10, i64 3280}
!279 = !{!63, !10, i64 6064}
!280 = !{!63, !33, i64 216}
!281 = distinct !{!281, !146, !263, !264}
!282 = distinct !{!282, !146, !263}
!283 = distinct !{!283, !284}
!284 = !{!"llvm.loop.unroll.disable"}
!285 = !{!63, !33, i64 232}
!286 = distinct !{!286, !146, !263, !264}
!287 = distinct !{!287, !284}
!288 = distinct !{!288, !146, !263}
!289 = !{!9, !27, i64 3296}
!290 = !{!63, !27, i64 160}
!291 = !{!63, !16, i64 200}
!292 = !{!9, !16, i64 3336}
!293 = !{!63, !19, i64 0}
!294 = !{!63, !10, i64 16}
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"ZSTD_getCParams_internal: argument 0"}
!297 = distinct !{!297, !"ZSTD_getCParams_internal"}
!298 = distinct !{!298, !299, !"ZSTD_getParams_internal: argument 0"}
!299 = distinct !{!299, !"ZSTD_getParams_internal"}
!300 = !{!9, !16, i64 3576}
!301 = !{!9, !16, i64 3616}
!302 = !{!9, !10, i64 316}
!303 = !{!304, !10, i64 0}
!304 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !305, i64 40, !306, i64 48, !307, i64 56}
!305 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !19, i64 0}
!306 = !{!"p1 _ZTS11ZSTD_CCtx_s", !19, i64 0}
!307 = !{!"p1 _ZTS11ZSTD_DCtx_s", !19, i64 0}
!308 = !{!304, !10, i64 4}
!309 = !{!304, !10, i64 8}
!310 = !{!304, !16, i64 16}
!311 = !{!304, !16, i64 24}
!312 = !{!304, !16, i64 32}
!313 = !{!304, !305, i64 40}
!314 = !{!304, !306, i64 48}
!315 = !{!316}
!316 = distinct !{!316, !317, !"ZSTD_getParams_internal: argument 0"}
!317 = distinct !{!317, !"ZSTD_getParams_internal"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"ZSTD_getParams_internal: argument 0"}
!320 = distinct !{!320, !"ZSTD_getParams_internal"}
!321 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !48}
!322 = !{!323}
!323 = distinct !{!323, !324, !"ZSTD_dedicatedDictSearch_getCParams: argument 0"}
!324 = distinct !{!324, !"ZSTD_dedicatedDictSearch_getCParams"}
!325 = !{!20, !10, i64 64}
!326 = !{!63, !33, i64 24}
!327 = !{!328}
!328 = distinct !{!328, !329, !"ZSTD_getCParams: argument 0"}
!329 = distinct !{!329, !"ZSTD_getCParams"}
!330 = !{!9, !10, i64 364}
!331 = !{!9, !16, i64 3672}
!332 = !{!9, !16, i64 3600}
!333 = !{!9, !19, i64 3648}
!334 = !{!9, !16, i64 3656}
!335 = !{i64 0, i64 8, !48, i64 8, i64 8, !114, i64 16, i64 8, !114}
!336 = !{!9, !10, i64 16}
!337 = !{!9, !10, i64 368}
!338 = !{!9, !16, i64 3680}
!339 = distinct !{!339, !146}
!340 = !{!9, !16, i64 3624}
!341 = !{!9, !16, i64 3632}
!342 = !{!9, !10, i64 3644}
!343 = !{!9, !27, i64 3608}
!344 = !{!37, !19, i64 8}
!345 = !{!37, !38, i64 32}
!346 = !{!37, !16, i64 16}
!347 = !{!37, !10, i64 24}
!348 = !{!63, !10, i64 384}
!349 = !{!9, !10, i64 372}
!350 = distinct !{!350, !146}
!351 = !{!9, !10, i64 456}
!352 = !{ptr @ZSTD_transferSequences_noDelim, ptr @ZSTD_transferSequences_wBlockDelim}
!353 = distinct !{!353, !146}
!354 = !{!31, !19, i64 0}
!355 = !{!31, !19, i64 8}
!356 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!357 = distinct !{!357, !146}
!358 = !{!9, !16, i64 1032}
!359 = !{!9, !10, i64 1048}
!360 = !{!9, !10, i64 1052}
!361 = !{!"branch_weights", !"expected", i32 1125985, i32 2146357663}
!362 = distinct !{!362, !146}
!363 = distinct !{!363, !146}
!364 = distinct !{!364, !146}
!365 = !{!366, !16, i64 0}
!366 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!367 = !{!366, !16, i64 16}
!368 = !{!366, !16, i64 8}
!369 = !{!9, !10, i64 376}
!370 = !{!371}
!371 = distinct !{!371, !372, !"ZSTD_get1BlockSummary: argument 0"}
!372 = distinct !{!372, !"ZSTD_get1BlockSummary"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"inBuffer_forEndFlush: argument 0"}
!375 = distinct !{!375, !"inBuffer_forEndFlush"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"inBuffer_forEndFlush: argument 0"}
!378 = distinct !{!378, !"inBuffer_forEndFlush"}
!379 = !{!"branch_weights", i32 1048575, i32 1}
!380 = !{!381}
!381 = distinct !{!381, !382, !"ZSTD_getParams_internal: argument 0"}
!382 = distinct !{!382, !"ZSTD_getParams_internal"}
!383 = !{!384, !10, i64 28}
!384 = !{!"", !14, i64 0, !15, i64 28}
!385 = !{!13, !19, i64 200}
!386 = !{!9, !10, i64 972}
!387 = !{!20, !10, i64 60}
!388 = !{!20, !19, i64 40}
!389 = !{!20, !19, i64 48}
!390 = !{!20, !10, i64 68}
!391 = !{!9, !10, i64 3536}
!392 = !{!9, !10, i64 272}
!393 = !{!9, !19, i64 1096}
!394 = !{!9, !19, i64 3168}
!395 = !{!9, !16, i64 3176}
!396 = !{!9, !10, i64 1104}
!397 = !{!9, !16, i64 5272}
!398 = !{!9, !19, i64 5264}
!399 = !{!9, !27, i64 992}
!400 = !{!9, !16, i64 1040}
!401 = !{!9, !27, i64 1112}
!402 = !{!9, !27, i64 1008}
!403 = !{!9, !27, i64 1016}
!404 = !{!9, !27, i64 1024}
!405 = !{!32, !10, i64 140}
!406 = !{!32, !10, i64 48}
!407 = !{!32, !10, i64 300}
!408 = !{!32, !10, i64 40}
!409 = !{!32, !10, i64 196}
!410 = !{!32, !35, i64 248}
!411 = !{!32, !33, i64 112}
!412 = !{!32, !33, i64 128}
!413 = !{!32, !33, i64 120}
!414 = !{!32, !27, i64 56}
!415 = !{!32, !16, i64 96}
!416 = !{!32, !10, i64 104}
!417 = !{!32, !10, i64 52}
!418 = !{!32, !33, i64 144}
!419 = !{!32, !33, i64 152}
!420 = !{!32, !33, i64 160}
!421 = !{!32, !33, i64 168}
!422 = !{!32, !19, i64 176}
!423 = !{!32, !19, i64 184}
!424 = !{!425, !16, i64 24}
!425 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !16, i64 16, !16, i64 24, !10, i64 32}
!426 = !{!425, !10, i64 32}
!427 = !{!425, !10, i64 0}
!428 = !{!425, !16, i64 16}
!429 = !{!425, !10, i64 4}
!430 = !{!425, !10, i64 8}
!431 = !{!29, !10, i64 32}
!432 = distinct !{!432, !146}
!433 = !{!9, !10, i64 260}
!434 = !{!32, !19, i64 232}
!435 = !{!9, !10, i64 312}
!436 = !{!32, !10, i64 240}
!437 = !{!32, !27, i64 8}
!438 = !{!9, !16, i64 3192}
!439 = !{!30, !19, i64 0}
!440 = !{!30, !16, i64 32}
!441 = !{!9, !19, i64 440}
!442 = !{!9, !10, i64 284}
!443 = distinct !{!443, !146}
!444 = distinct !{!444, !284}
!445 = !{!32, !19, i64 288}
!446 = !{!9, !10, i64 436}
!447 = !{!448, !10, i64 0}
!448 = !{!"", !10, i64 0, !10, i64 4, !16, i64 8}
!449 = !{!448, !16, i64 8}
!450 = distinct !{!450, !146}
!451 = distinct !{!451, !146, !263, !264}
!452 = distinct !{!452, !146, !263, !264}
!453 = distinct !{!453, !284}
!454 = distinct !{!454, !146, !263}
!455 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!456 = distinct !{!456, !146}
!457 = distinct !{!457, !146}
!458 = !{i64 0, i64 12, !196}
!459 = distinct !{!459, !146}
!460 = !{!41, !10, i64 0}
!461 = !{!42, !16, i64 136}
!462 = !{!43, !10, i64 4}
!463 = distinct !{!463, !146}
!464 = !{!43, !10, i64 0}
!465 = !{!43, !16, i64 152}
!466 = !{!24, !16, i64 16}
!467 = !{!24, !19, i64 8}
!468 = !{!24, !16, i64 24}
!469 = !{!213, !10, i64 12}
!470 = distinct !{!470, !146}
!471 = !{!28, !27, i64 8}
!472 = !{!28, !10, i64 48}
!473 = !{!448, !10, i64 4}
!474 = distinct !{!474, !146, !263, !264}
!475 = distinct !{!475, !146, !263, !264}
!476 = distinct !{!476, !284}
!477 = distinct !{!477, !146, !263}
