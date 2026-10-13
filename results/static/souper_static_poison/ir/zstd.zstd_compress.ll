; ModuleID = '/mydata/zstd/lib/compress/zstd_compress.c'
source_filename = "/mydata/zstd/lib/compress/zstd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i64, %struct.ZSTD_cwksp, i64, i64, i64, i64, %struct.XXH64_state_s, %struct.ZSTD_customMem, ptr, i64, %struct.SeqCollector, i32, i32, %struct.SeqStore_t, %struct.ldmState_t, ptr, i64, %struct.RawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i64, i32, ptr, i64, i64, i64, i64, ptr, i64, i64, i64, i32, i32, %struct.ZSTD_inBuffer_s, i64, i64, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s, i64, %struct.ZSTD_blockSplitCtx, ptr, i64 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
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
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_localDict = type { ptr, ptr, i64, i32, ptr }
%struct.ZSTD_prefixDict_s = type { ptr, i64, i32 }
%struct.ZSTD_blockSplitCtx = type { %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, [196 x i32], %struct.ZSTD_entropyCTablesMetadata_t }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i64 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i64, i64 }
%struct.ZSTD_CDict_s = type { ptr, i64, i32, ptr, %struct.ZSTD_cwksp, %struct.ZSTD_MatchState_t, %struct.ZSTD_compressedBlockState_t, %struct.ZSTD_customMem, i32, i32, i32 }
%struct.ZSTD_compressedBlockState_t = type { %struct.ZSTD_entropyCTables_t, [3 x i32] }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_hufCTables_t = type { [257 x i64], i32 }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_Sequence = type { i32, i32, i32, i32 }
%struct.ZSTD_symbolEncodingTypeStats_t = type { i32, i32, i32, i64, i64, i32 }
%struct.seqStoreSplits = type { ptr, i64 }
%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_Trace = type { i32, i32, i32, i32, i64, i64, i64, ptr, ptr, ptr }
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
define dso_local i64 @ZSTD_compressBound(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -71777214294589697
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 8
  %5 = add nuw i64 %4, %0
  %6 = icmp ult i64 %0, 131072
  %7 = sub i64 131072, %0
  %8 = lshr i64 %7, 11
  %9 = select i1 %6, i64 %8, i64 0
  %10 = add i64 %5, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1, %3
  br label %13

13:                                               ; preds = %3, %12
  %14 = phi i64 [ -72, %12 ], [ %10, %3 ]
  ret i64 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 3, i32 3
  store i32 3, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 3, i32 2
  store i32 1, ptr %22, align 8, !tbaa !39
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCCtx_advanced(ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.ZSTD_customMem, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  %7 = xor i1 %3, %6
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  br i1 %3, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, ptr %0, i64 16
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
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 14
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
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 2
  store i32 %34, ptr %35, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %36, i8 0, i64 224, i1 false)
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 3, i32 3
  store i32 3, ptr %37, align 4, !tbaa !38
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 3, i32 2
  store i32 1, ptr %38, align 8, !tbaa !39
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
  br i1 %7, label %8, label %73

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 5280
  %10 = icmp slt i64 %1, 5280
  %11 = icmp eq ptr %0, null
  %12 = or i1 %11, %10
  br i1 %12, label %73, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %0, i64 %1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 63
  %17 = sub nsw i64 0, %16
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %0, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  store ptr %0, ptr %19, align 8, !tbaa.struct !42
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 1
  store ptr %14, ptr %20, align 8, !tbaa.struct !46
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 2
  store ptr %9, ptr %21, align 8, !tbaa.struct !47
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 3
  store ptr %9, ptr %22, align 8, !tbaa.struct !48
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %9, ptr %23, align 8, !tbaa.struct !49
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 5
  store ptr %18, ptr %24, align 8, !tbaa.struct !50
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %18, ptr %25, align 8, !tbaa.struct !51
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 7
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 8
  store i32 0, ptr %27, align 4, !tbaa.struct !52
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 10
  store i32 1, ptr %28, align 4, !tbaa.struct !53
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  store i64 %1, ptr %29, align 8, !tbaa !54
  %30 = ptrtoint ptr %18 to i64
  %31 = ptrtoint ptr %9 to i64
  %32 = sub i64 %30, %31
  %33 = icmp ult i64 %32, 20184
  br i1 %33, label %73, label %34

34:                                               ; preds = %13
  %35 = icmp ult i64 %1, 10912
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store i8 1, ptr %26, align 8, !tbaa !55
  br label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %0, i64 10912
  store ptr %38, ptr %21, align 8, !tbaa !56
  store ptr %38, ptr %22, align 8, !tbaa !57
  store ptr %38, ptr %23, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi ptr [ %9, %36 ], [ %38, %37 ]
  %41 = phi ptr [ null, %36 ], [ %9, %37 ]
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  store ptr %41, ptr %42, align 8, !tbaa !59
  %43 = getelementptr inbounds i8, ptr %40, i64 5632
  %44 = icmp ugt ptr %43, %14
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8 1, ptr %26, align 8, !tbaa !55
  br label %47

46:                                               ; preds = %39
  store ptr %43, ptr %21, align 8, !tbaa !56
  store ptr %43, ptr %22, align 8, !tbaa !57
  store ptr %43, ptr %23, align 8, !tbaa !58
  br label %47

47:                                               ; preds = %45, %46
  %48 = phi i64 [ 8920, %45 ], [ 14552, %46 ]
  %49 = phi ptr [ null, %45 ], [ %40, %46 ]
  %50 = phi ptr [ %40, %45 ], [ %43, %46 ]
  %51 = getelementptr inbounds i8, ptr %40, i64 %48
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  store ptr %49, ptr %52, align 8
  %53 = icmp ugt ptr %51, %14
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i8 1, ptr %26, align 8, !tbaa !55
  br label %56

55:                                               ; preds = %47
  store ptr %51, ptr %21, align 8, !tbaa !56
  store ptr %51, ptr %22, align 8, !tbaa !57
  store ptr %51, ptr %23, align 8, !tbaa !58
  br label %56

56:                                               ; preds = %54, %55
  %57 = phi ptr [ null, %54 ], [ %50, %55 ]
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  store ptr %57, ptr %58, align 8, !tbaa !60
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  store i64 8920, ptr %59, align 8, !tbaa !61
  %60 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #29, !srcloc !5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #29, !srcloc !6
  %64 = icmp ugt i32 %60, 6
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #29, !srcloc !7
  %67 = extractvalue { i32, i32, i32 } %66, 1
  %68 = lshr i32 %67, 8
  %69 = and i32 %68, 1
  br label %70

70:                                               ; preds = %56, %62, %65
  %71 = phi i32 [ %69, %65 ], [ 0, %62 ], [ 0, %56 ]
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 2
  store i32 %71, ptr %72, align 8, !tbaa !8
  br label %73

73:                                               ; preds = %8, %13, %2, %70
  %74 = phi ptr [ %0, %70 ], [ null, %2 ], [ null, %13 ], [ null, %8 ]
  ret ptr %74
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %5 = load i64, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp ule ptr %13, %0
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !62
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
define dso_local i64 @ZSTD_sizeof_CCtx(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  %13 = load ptr, ptr %12, align 1
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 4
  %17 = load ptr, ptr %16, align 1
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, %17
  %23 = select i1 %22, i64 0, i64 6080
  %24 = getelementptr %struct.ZSTD_CDict_s, ptr %17, i64 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !63
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
define dso_local i64 @ZSTD_sizeof_CStream(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 5280
  %8 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  %13 = load ptr, ptr %12, align 1
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 4
  %17 = load ptr, ptr %16, align 1
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, %17
  %23 = select i1 %22, i64 0, i64 6080
  %24 = getelementptr %struct.ZSTD_CDict_s, ptr %17, i64 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !63
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
define dso_local nonnull ptr @ZSTD_getSeqStore(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtxParams() local_unnamed_addr #6 {
  %1 = tail call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #32
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 3
  store i32 3, ptr %4, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !39
  br label %6

6:                                                ; preds = %0, %3
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 24, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 24, i32 2
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
define dso_local noundef i64 @ZSTD_CCtxParams_reset(ptr noundef writeonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 3
  store i32 3, ptr %4, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !39
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ 0, %3 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @ZSTD_CCtxParams_init(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2
  store i32 1, ptr %6, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i64 [ 0, %4 ], [ -1, %2 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly %0, ptr nocapture noundef readonly byval(%struct.ZSTD_parameters) align 8 %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !64
  %6 = add i32 %5, -32
  %7 = icmp ult i32 %6, -22
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !65
  %11 = add i32 %10, -31
  %12 = icmp ult i32 %11, -25
  br i1 %12, label %62, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = add i32 %15, -31
  %17 = icmp ult i32 %16, -25
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !67
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -30
  br i1 %22, label %62, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = add i32 %25, -8
  %27 = icmp ult i32 %26, -5
  %28 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 131072
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %62, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !69
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 9
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %38, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !70
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2
  %40 = getelementptr inbounds %struct.ZSTD_parameters, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 4 dereferenceable(12) %40, i64 12, i1 false), !tbaa.struct !52
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 22
  %42 = add nsw i32 %34, -6
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  store i32 2, ptr %41, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 19
  %46 = icmp ugt i32 %34, 6
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  store i32 2, ptr %45, align 4, !tbaa !72
  br label %57

48:                                               ; preds = %37
  %49 = icmp ugt i32 %5, 14
  %50 = select i1 %49, i32 1, i32 2
  store i32 %50, ptr %41, align 8, !tbaa !71
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 19
  store i32 2, ptr %51, align 4, !tbaa !72
  br label %57

52:                                               ; preds = %44
  %53 = icmp ugt i32 %5, 16
  %54 = select i1 %53, i32 1, i32 2
  store i32 %54, ptr %45, align 4, !tbaa !72
  %55 = icmp ugt i32 %5, 26
  %56 = select i1 %55, i32 1, i32 2
  br label %57

57:                                               ; preds = %48, %47, %52
  %58 = phi i32 [ 2, %48 ], [ %56, %52 ], [ 2, %47 ]
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13
  store i32 %58, ptr %59, align 8, !tbaa !73
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 21
  store i64 131072, ptr %60, align 8, !tbaa !74
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 29
  store i32 2, ptr %61, align 8, !tbaa !75
  br label %62

62:                                               ; preds = %23, %18, %13, %8, %4, %32, %2, %57
  %63 = phi i64 [ -42, %32 ], [ 0, %57 ], [ -1, %2 ], [ -42, %4 ], [ -42, %8 ], [ -42, %13 ], [ -42, %18 ], [ -42, %23 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_checkCParams(ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !64
  %3 = add i32 %2, -32
  %4 = icmp ult i32 %3, -22
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = add i32 %7, -31
  %9 = icmp ult i32 %8, -25
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = add i32 %12, -31
  %14 = icmp ult i32 %13, -25
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !67
  %18 = add i32 %17, -31
  %19 = icmp ult i32 %18, -30
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !68
  %23 = add i32 %22, -8
  %24 = icmp ult i32 %23, -5
  %25 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 131072
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !69
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
  switch i32 %0, label %39 [
    i32 100, label %2
    i32 101, label %40
    i32 102, label %3
    i32 103, label %4
    i32 104, label %5
    i32 105, label %6
    i32 106, label %7
    i32 107, label %8
    i32 200, label %9
    i32 201, label %10
    i32 202, label %11
    i32 400, label %12
    i32 401, label %13
    i32 402, label %14
    i32 1005, label %15
    i32 160, label %16
    i32 161, label %17
    i32 162, label %18
    i32 163, label %19
    i32 164, label %20
    i32 500, label %21
    i32 1000, label %22
    i32 10, label %23
    i32 1001, label %24
    i32 1002, label %25
    i32 130, label %26
    i32 1004, label %27
    i32 1006, label %28
    i32 1007, label %28
    i32 1008, label %29
    i32 1009, label %30
    i32 1010, label %31
    i32 1017, label %32
    i32 1011, label %33
    i32 1012, label %34
    i32 1013, label %35
    i32 1014, label %36
    i32 1015, label %37
    i32 1016, label %38
  ]

2:                                                ; preds = %1
  br label %40

3:                                                ; preds = %1
  br label %40

4:                                                ; preds = %1
  br label %40

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  br label %40

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  br label %40

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  br label %40

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  br label %40

18:                                               ; preds = %1
  br label %40

19:                                               ; preds = %1
  br label %40

20:                                               ; preds = %1
  br label %40

21:                                               ; preds = %1
  br label %40

22:                                               ; preds = %1
  br label %40

23:                                               ; preds = %1
  br label %40

24:                                               ; preds = %1
  br label %40

25:                                               ; preds = %1
  br label %40

26:                                               ; preds = %1
  br label %40

27:                                               ; preds = %1
  br label %40

28:                                               ; preds = %1, %1
  br label %40

29:                                               ; preds = %1
  br label %40

30:                                               ; preds = %1
  br label %40

31:                                               ; preds = %1
  br label %40

32:                                               ; preds = %1
  br label %40

33:                                               ; preds = %1
  br label %40

34:                                               ; preds = %1
  br label %40

35:                                               ; preds = %1
  br label %40

36:                                               ; preds = %1
  br label %40

37:                                               ; preds = %1
  br label %40

38:                                               ; preds = %1
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %1, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %41 = phi i64 [ 0, %39 ], [ 8589934592, %38 ], [ 562949953422336, %37 ], [ 4294967296, %36 ], [ 8589934592, %35 ], [ 4294967296, %34 ], [ 8589934592, %33 ], [ 25769803776, %32 ], [ 8589934592, %31 ], [ 4294967296, %30 ], [ 4294967296, %29 ], [ 4294967296, %28 ], [ 9223372032559808512, %27 ], [ 562949953422652, %26 ], [ 8589934592, %25 ], [ 12884901888, %24 ], [ 4294967296, %23 ], [ 4294967296, %22 ], [ 4294967296, %21 ], [ 107374182400, %20 ], [ 34359738369, %19 ], [ 17592186044420, %18 ], [ 128849018886, %17 ], [ 8589934592, %16 ], [ 4294967296, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 4294967296, %11 ], [ 4294967296, %10 ], [ 4294967296, %9 ], [ 38654705665, %8 ], [ 562949953421312, %7 ], [ 30064771075, %6 ], [ 128849018881, %5 ], [ 128849018886, %4 ], [ 128849018886, %3 ], [ 98784116736, %2 ], [ 133143986186, %1 ]
  %42 = phi i64 [ -40, %39 ], [ 0, %38 ], [ 0, %37 ], [ 0, %36 ], [ 0, %35 ], [ 0, %34 ], [ 0, %33 ], [ 0, %32 ], [ 0, %31 ], [ 0, %30 ], [ 0, %29 ], [ 0, %28 ], [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ 0, %20 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 0, %9 ], [ 0, %8 ], [ 0, %7 ], [ 0, %6 ], [ 0, %5 ], [ 0, %4 ], [ 0, %3 ], [ 0, %2 ], [ 0, %1 ]
  %43 = insertvalue { i64, i64 } poison, i64 %42, 0
  %44 = insertvalue { i64, i64 } %43, i64 %41, 1
  ret { i64, i64 } %44
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
define dso_local i64 @ZSTD_CCtx_setParameter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !76
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
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 1
  store i32 1, ptr %9, align 4, !tbaa !77
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
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %13, %11
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  %19 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %18, i32 noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %7, %10, %13, %17
  %21 = phi i64 [ %19, %17 ], [ -40, %13 ], [ -40, %10 ], [ -60, %7 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i64 @ZSTD_CCtxParams_setParameter(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
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
  store i32 %2, ptr %0, align 8, !tbaa !78
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
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 3
  store i32 %16, ptr %17, align 4, !tbaa !38
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
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1
  store i32 %2, ptr %26, align 4, !tbaa !79
  %27 = zext nneg i32 %2 to i64
  br label %219

28:                                               ; preds = %3
  %29 = icmp ne i32 %2, 0
  %30 = add i32 %2, -31
  %31 = icmp ult i32 %30, -25
  %32 = and i1 %29, %31
  br i1 %32, label %219, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 2
  store i32 %2, ptr %34, align 4, !tbaa !80
  %35 = zext nneg i32 %2 to i64
  br label %219

36:                                               ; preds = %3
  %37 = icmp ne i32 %2, 0
  %38 = add i32 %2, -31
  %39 = icmp ult i32 %38, -25
  %40 = and i1 %37, %39
  br i1 %40, label %219, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 1
  store i32 %2, ptr %42, align 4, !tbaa !81
  %43 = zext nneg i32 %2 to i64
  br label %219

44:                                               ; preds = %3
  %45 = icmp ugt i32 %2, 30
  br i1 %45, label %219, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 3
  store i32 %2, ptr %47, align 4, !tbaa !82
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
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 4
  store i32 %2, ptr %51, align 4, !tbaa !83
  %52 = zext nneg i32 %2 to i64
  br label %219

53:                                               ; preds = %3
  %54 = icmp ugt i32 %2, 131072
  br i1 %54, label %219, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 5
  store i32 %2, ptr %56, align 4, !tbaa !84
  %57 = zext nneg i32 %2 to i64
  br label %219

58:                                               ; preds = %3
  %59 = icmp ugt i32 %2, 9
  br i1 %59, label %219, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 6
  store i32 %2, ptr %61, align 4, !tbaa !85
  %62 = zext nneg i32 %2 to i64
  br label %219

63:                                               ; preds = %3
  %64 = icmp ne i32 %2, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2
  store i32 %65, ptr %66, align 8, !tbaa !39
  %67 = zext i1 %64 to i64
  br label %219

68:                                               ; preds = %3
  %69 = icmp ne i32 %2, 0
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %70, ptr %71, align 4, !tbaa !86
  %72 = zext i1 %69 to i64
  br label %219

73:                                               ; preds = %3
  %74 = icmp ne i32 %2, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2, i32 2
  store i32 %76, ptr %77, align 8, !tbaa !87
  %78 = zext i1 %74 to i64
  br label %219

79:                                               ; preds = %3
  %80 = icmp ne i32 %2, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 4
  store i32 %81, ptr %82, align 8, !tbaa !88
  %83 = zext i1 %80 to i64
  br label %219

84:                                               ; preds = %3
  %85 = icmp ugt i32 %2, 3
  br i1 %85, label %219, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 7
  store i32 %2, ptr %87, align 4, !tbaa !89
  %88 = zext nneg i32 %2 to i64
  br label %219

89:                                               ; preds = %3
  %90 = icmp ugt i32 %2, 2
  br i1 %90, label %219, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 8
  store i32 %2, ptr %92, align 8, !tbaa !90
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
  %109 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 14
  store i32 %108, ptr %109, align 8, !tbaa !91
  %110 = zext i1 %107 to i64
  br label %219

111:                                              ; preds = %3
  %112 = icmp ugt i32 %2, 2
  br i1 %112, label %219, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13
  store i32 %2, ptr %114, align 8, !tbaa !73
  %115 = zext nneg i32 %2 to i64
  br label %219

116:                                              ; preds = %3
  %117 = icmp ne i32 %2, 0
  %118 = add i32 %2, -31
  %119 = icmp ult i32 %118, -25
  %120 = and i1 %117, %119
  br i1 %120, label %219, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 1
  store i32 %2, ptr %122, align 4, !tbaa !92
  %123 = zext nneg i32 %2 to i64
  br label %219

124:                                              ; preds = %3
  %125 = icmp ne i32 %2, 0
  %126 = add i32 %2, -4097
  %127 = icmp ult i32 %126, -4093
  %128 = and i1 %125, %127
  br i1 %128, label %219, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 3
  store i32 %2, ptr %130, align 4, !tbaa !93
  %131 = zext nneg i32 %2 to i64
  br label %219

132:                                              ; preds = %3
  %133 = icmp ult i32 %2, 9
  br i1 %133, label %134, label %219

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 2
  store i32 %2, ptr %135, align 8, !tbaa !94
  %136 = zext nneg i32 %2 to i64
  br label %219

137:                                              ; preds = %3
  %138 = icmp ugt i32 %2, 25
  br i1 %138, label %219, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 4
  store i32 %2, ptr %140, align 8, !tbaa !95
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
  %150 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 5
  store i64 %149, ptr %150, align 8, !tbaa !96
  br label %219

151:                                              ; preds = %3
  %152 = icmp slt i32 %2, 0
  br i1 %152, label %219, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 6
  store i32 %2, ptr %154, align 8, !tbaa !97
  %155 = zext nneg i32 %2 to i64
  br label %219

156:                                              ; preds = %3
  %157 = icmp ugt i32 %2, 1
  br i1 %157, label %219, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 15
  store i32 %2, ptr %159, align 4, !tbaa !98
  %160 = zext nneg i32 %2 to i64
  br label %219

161:                                              ; preds = %3
  %162 = icmp ugt i32 %2, 1
  br i1 %162, label %219, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 16
  store i32 %2, ptr %164, align 8, !tbaa !99
  %165 = zext nneg i32 %2 to i64
  br label %219

166:                                              ; preds = %3
  %167 = icmp ugt i32 %2, 1
  br i1 %167, label %219, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 17
  store i32 %2, ptr %169, align 4, !tbaa !100
  %170 = zext nneg i32 %2 to i64
  br label %219

171:                                              ; preds = %3
  %172 = icmp ugt i32 %2, 1
  br i1 %172, label %219, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 18
  store i32 %2, ptr %174, align 8, !tbaa !101
  %175 = zext nneg i32 %2 to i64
  br label %219

176:                                              ; preds = %3
  %177 = icmp ugt i32 %2, 2
  br i1 %177, label %219, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 19
  store i32 %2, ptr %179, align 4, !tbaa !72
  %180 = zext nneg i32 %2 to i64
  br label %219

181:                                              ; preds = %3
  %182 = icmp ugt i32 %2, 6
  br i1 %182, label %219, label %183

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 20
  store i32 %2, ptr %184, align 8, !tbaa !102
  %185 = zext nneg i32 %2 to i64
  br label %219

186:                                              ; preds = %3
  %187 = icmp ugt i32 %2, 2
  br i1 %187, label %219, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 22
  store i32 %2, ptr %189, align 8, !tbaa !71
  %190 = zext nneg i32 %2 to i64
  br label %219

191:                                              ; preds = %3
  %192 = icmp ugt i32 %2, 1
  br i1 %192, label %219, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 23
  store i32 %2, ptr %194, align 4, !tbaa !103
  %195 = zext nneg i32 %2 to i64
  br label %219

196:                                              ; preds = %3
  %197 = icmp ugt i32 %2, 2
  br i1 %197, label %219, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 25
  store i32 %2, ptr %199, align 8, !tbaa !104
  %200 = zext nneg i32 %2 to i64
  br label %219

201:                                              ; preds = %3
  %202 = icmp ugt i32 %2, 1
  br i1 %202, label %219, label %203

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 26
  store i32 %2, ptr %204, align 4, !tbaa !105
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
  %213 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 21
  store i64 %212, ptr %213, align 8, !tbaa !74
  br label %219

214:                                              ; preds = %3
  %215 = icmp ugt i32 %2, 2
  br i1 %215, label %219, label %216

216:                                              ; preds = %214
  %217 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 29
  store i32 %2, ptr %217, align 8, !tbaa !75
  %218 = zext nneg i32 %2 to i64
  br label %219

219:                                              ; preds = %132, %49, %206, %151, %137, %124, %116, %58, %44, %36, %28, %20, %15, %3, %214, %201, %196, %191, %186, %181, %176, %171, %166, %161, %156, %144, %111, %103, %100, %97, %94, %91, %89, %86, %84, %53, %4, %6, %25, %33, %41, %46, %50, %55, %60, %63, %68, %73, %79, %106, %113, %121, %129, %134, %139, %147, %153, %158, %163, %168, %173, %178, %183, %188, %193, %198, %203, %211, %216
  %220 = phi i64 [ %218, %216 ], [ %212, %211 ], [ %205, %203 ], [ %200, %198 ], [ %195, %193 ], [ %190, %188 ], [ %185, %183 ], [ %180, %178 ], [ %175, %173 ], [ %170, %168 ], [ %165, %163 ], [ %160, %158 ], [ %155, %153 ], [ %149, %147 ], [ %141, %139 ], [ %136, %134 ], [ %131, %129 ], [ %123, %121 ], [ %115, %113 ], [ %110, %106 ], [ %83, %79 ], [ %78, %73 ], [ %72, %68 ], [ %67, %63 ], [ %62, %60 ], [ %57, %55 ], [ %52, %50 ], [ %48, %46 ], [ %43, %41 ], [ %35, %33 ], [ %27, %25 ], [ %7, %6 ], [ -42, %4 ], [ -42, %53 ], [ %88, %86 ], [ -42, %84 ], [ %93, %91 ], [ -42, %89 ], [ %96, %94 ], [ %99, %97 ], [ %102, %100 ], [ %105, %103 ], [ -42, %111 ], [ -42, %144 ], [ -42, %156 ], [ -42, %161 ], [ -42, %166 ], [ -42, %171 ], [ -42, %176 ], [ -42, %181 ], [ -42, %186 ], [ -42, %191 ], [ -42, %196 ], [ -42, %201 ], [ -42, %214 ], [ -40, %3 ], [ %19, %15 ], [ -42, %20 ], [ -42, %28 ], [ -42, %36 ], [ -42, %44 ], [ -42, %49 ], [ -42, %58 ], [ -42, %116 ], [ -42, %124 ], [ -42, %132 ], [ -42, %137 ], [ -42, %151 ], [ -42, %206 ]
  ret i64 %220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtx_getParameter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  %5 = tail call i64 @ZSTD_CCtxParams_getParameter(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2), !range !106
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtxParams_getParameter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
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
  %5 = load i32, ptr %0, align 8, !tbaa !78
  br label %115

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !38
  br label %115

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !79
  br label %115

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !80
  br label %115

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !81
  br label %115

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !82
  br label %115

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !83
  br label %115

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !84
  br label %115

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !85
  br label %115

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !39
  br label %115

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !86
  br label %115

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 2, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  br label %115

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !88
  br label %115

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !89
  br label %115

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !90
  br label %115

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 9
  %52 = load i32, ptr %51, align 4, !tbaa !107
  br label %115

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 14
  %55 = load i32, ptr %54, align 8, !tbaa !91
  br label %115

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !73
  br label %115

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !92
  br label %115

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !93
  br label %115

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !94
  br label %115

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !95
  br label %115

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !96
  %74 = trunc i64 %73 to i32
  br label %115

75:                                               ; preds = %3
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !97
  br label %115

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 15
  %80 = load i32, ptr %79, align 4, !tbaa !98
  br label %115

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 16
  %83 = load i32, ptr %82, align 8, !tbaa !99
  br label %115

84:                                               ; preds = %3
  %85 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 17
  %86 = load i32, ptr %85, align 4, !tbaa !100
  br label %115

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 18
  %89 = load i32, ptr %88, align 8, !tbaa !101
  br label %115

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 19
  %92 = load i32, ptr %91, align 4, !tbaa !72
  br label %115

93:                                               ; preds = %3
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 20
  %95 = load i32, ptr %94, align 8, !tbaa !102
  br label %115

96:                                               ; preds = %3
  %97 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 22
  %98 = load i32, ptr %97, align 8, !tbaa !71
  br label %115

99:                                               ; preds = %3
  %100 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 23
  %101 = load i32, ptr %100, align 4, !tbaa !103
  br label %115

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 25
  %104 = load i32, ptr %103, align 8, !tbaa !104
  br label %115

105:                                              ; preds = %3
  %106 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 26
  %107 = load i32, ptr %106, align 4, !tbaa !105
  br label %115

108:                                              ; preds = %3
  %109 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 21
  %110 = load i64, ptr %109, align 8, !tbaa !74
  %111 = trunc i64 %110 to i32
  br label %115

112:                                              ; preds = %3
  %113 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 29
  %114 = load i32, ptr %113, align 8, !tbaa !75
  br label %115

115:                                              ; preds = %112, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %4
  %116 = phi i32 [ %5, %4 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ], [ %23, %21 ], [ %26, %24 ], [ %29, %27 ], [ %32, %30 ], [ %35, %33 ], [ %40, %36 ], [ %43, %41 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ], [ %55, %53 ], [ %58, %56 ], [ %61, %59 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ], [ %74, %71 ], [ %77, %75 ], [ %80, %78 ], [ %83, %81 ], [ %86, %84 ], [ %89, %87 ], [ %92, %90 ], [ %95, %93 ], [ %98, %96 ], [ %101, %99 ], [ %104, %102 ], [ %107, %105 ], [ %111, %108 ], [ %114, %112 ]
  store i32 %116, ptr %2, align 4, !tbaa !45
  br label %117

117:                                              ; preds = %115, %3
  %118 = phi i64 [ -40, %3 ], [ 0, %115 ]
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !109
  br label %12

12:                                               ; preds = %6, %2, %10
  %13 = phi i64 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtx_setCParams(ptr nocapture noundef %0, ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8, !tbaa !64
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %50, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !66
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %50, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !67
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %50, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !68
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !69
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %37 = load i32, ptr %36, align 8, !tbaa !76
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1
  store i32 %3, ptr %40, align 4, !tbaa !79
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 1
  store i32 %8, ptr %41, align 4, !tbaa !81
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 2
  store i32 %13, ptr %42, align 4, !tbaa !80
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 3
  store i32 %18, ptr %43, align 4, !tbaa !82
  %44 = add i32 %23, -3
  %45 = icmp ult i32 %44, 5
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 4
  store i32 %23, ptr %47, align 4, !tbaa !83
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 5
  store i32 %27, ptr %48, align 4, !tbaa !84
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 6
  store i32 %32, ptr %49, align 4, !tbaa !85
  br label %50

50:                                               ; preds = %39, %35, %21, %16, %11, %6, %2, %46, %30
  %51 = phi i64 [ -42, %30 ], [ 0, %46 ], [ -42, %2 ], [ -42, %6 ], [ -42, %11 ], [ -42, %16 ], [ -42, %21 ], [ -60, %35 ], [ -42, %39 ]
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtx_setFParams(ptr nocapture noundef %0, i64 %1, i32 %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = and i64 %1, 4294967295
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !39
  %12 = icmp ugt i64 %1, 4294967295
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !86
  %15 = icmp ne i32 %2, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %3, %7
  %19 = phi i64 [ 0, %7 ], [ -60, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_CCtx_setParams(ptr nocapture noundef %0, ptr nocapture noundef readonly byval(%struct.ZSTD_parameters) align 8 %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %1, align 8
  %4 = add i32 %3, -32
  %5 = icmp ult i32 %4, -22
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %9, -25
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, -31
  %15 = icmp ult i32 %14, -25
  br i1 %15, label %61, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -31
  %20 = icmp ult i32 %19, -30
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, -8
  %25 = icmp ult i32 %24, -5
  %26 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 131072
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 9
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %37 = load i32, ptr %36, align 8, !tbaa !76
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ZSTD_parameters, ptr %1, i64 0, i32 1, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ZSTD_parameters, ptr %1, i64 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = and i64 %43, 4294967295
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !39
  %48 = icmp ugt i64 %43, 4294967295
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !86
  %51 = icmp ne i32 %41, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !87
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1
  store i32 %3, ptr %54, align 4, !tbaa !79
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 1
  store i32 %8, ptr %55, align 4, !tbaa !81
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 2
  store i32 %13, ptr %56, align 4, !tbaa !80
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 3
  store i32 %18, ptr %57, align 4, !tbaa !82
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 4
  store i32 %23, ptr %58, align 4, !tbaa !83
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 5
  store i32 %27, ptr %59, align 4, !tbaa !84
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1, i32 6
  store i32 %32, ptr %60, align 4, !tbaa !85
  br label %61

61:                                               ; preds = %39, %35, %21, %16, %11, %6, %2, %30
  %62 = phi i64 [ -42, %30 ], [ -42, %2 ], [ -42, %6 ], [ -42, %11 ], [ -42, %16 ], [ -42, %21 ], [ -60, %35 ], [ 0, %39 ]
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtx_setPledgedSrcSize(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = add i64 %1, 1
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 %7, ptr %8, align 8, !tbaa !111
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_CCtx_loadDictionary_advanced(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %7 = load i32, ptr %6, align 8, !tbaa !76
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
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
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
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  store ptr %30, ptr %33, align 8, !tbaa !112
  br label %34

34:                                               ; preds = %13, %32
  %35 = phi ptr [ %30, %32 ], [ %1, %13 ]
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !113
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  store i64 %2, ptr %37, align 8, !tbaa !114
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  store i32 %4, ptr %38, align 8, !tbaa !115
  br label %39

39:                                               ; preds = %29, %15, %9, %5, %34
  %40 = phi i64 [ 0, %34 ], [ -60, %5 ], [ 0, %9 ], [ -64, %15 ], [ -64, %29 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_clearAllDicts(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
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
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %15, i64 0, i32 7, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa.struct !117
  %20 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %15, i64 0, i32 7, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa.struct !118
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %15, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp ugt ptr %23, %15
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %15, i64 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = icmp ule ptr %27, %15
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
define dso_local noundef i64 @ZSTD_CCtx_loadDictionary_byReference(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !113
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  store i64 %2, ptr %13, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  store i32 0, ptr %14, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ 0, %11 ], [ -60, %3 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_CCtx_loadDictionary(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i64 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %13 = load i64, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
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
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  store ptr %26, ptr %29, align 8, !tbaa !112
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  store ptr %26, ptr %30, align 8, !tbaa !113
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  store i64 %2, ptr %31, align 8, !tbaa !114
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  store i32 0, ptr %32, align 8, !tbaa !115
  br label %33

33:                                               ; preds = %3, %7, %11, %25, %28
  %34 = phi i64 [ 0, %28 ], [ -60, %3 ], [ 0, %7 ], [ -64, %11 ], [ -64, %25 ]
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_CCtx_refCDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr %1, ptr %7, align 8, !tbaa !108
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_CCtx_refThreadPool(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 15
  store ptr %1, ptr %7, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_CCtx_refPrefix(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = icmp ne ptr %1, null
  %9 = icmp ne i64 %2, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45
  store ptr %1, ptr %12, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 1
  store i64 %2, ptr %13, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 2
  store i32 1, ptr %14, align 8, !tbaa !122
  br label %15

15:                                               ; preds = %3, %7, %11
  %16 = phi i64 [ -60, %3 ], [ 0, %11 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_CCtx_refPrefix_advanced(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %6 = load i32, ptr %5, align 8, !tbaa !76
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %9 = icmp ne ptr %1, null
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45
  store ptr %1, ptr %13, align 8, !tbaa !120
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 1
  store i64 %2, ptr %14, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 2
  store i32 %3, ptr %15, align 8, !tbaa !122
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = phi i64 [ -60, %4 ], [ 0, %12 ], [ 0, %8 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_CCtx_reset(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %7, align 8, !tbaa !111
  br label %8

8:                                                ; preds = %2, %5
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %13 = load i32, ptr %12, align 8, !tbaa !76
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %16, i8 0, i64 224, i1 false)
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 3
  store i32 3, ptr %17, align 4, !tbaa !38
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2
  store i32 1, ptr %18, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %8, %11, %15
  %20 = phi i64 [ 0, %15 ], [ -60, %11 ], [ 0, %8 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_cycleLog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 5
  %4 = sext i1 %3 to i32
  %5 = add i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_adjustCParams(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, ptr nocapture noundef byval(%struct.ZSTD_compressionParameters) align 8 %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %1, i64 16
  %13 = getelementptr inbounds i8, ptr %1, i64 24
  %14 = load i32, ptr %13, align 8
  %15 = icmp slt i32 %5, 10
  %16 = tail call i32 @llvm.umin.i32(i32 %5, i32 31)
  %17 = select i1 %15, i32 10, i32 %16
  %18 = icmp slt i32 %7, 6
  %19 = tail call i32 @llvm.umin.i32(i32 %7, i32 30)
  %20 = select i1 %18, i32 6, i32 %19
  %21 = icmp slt i32 %9, 6
  %22 = tail call i32 @llvm.umin.i32(i32 %9, i32 30)
  %23 = select i1 %21, i32 6, i32 %22
  %24 = icmp slt i32 %11, 1
  %25 = tail call i32 @llvm.umin.i32(i32 %11, i32 30)
  %26 = select i1 %24, i32 1, i32 %25
  %27 = icmp slt i32 %14, 1
  %28 = tail call i32 @llvm.umin.i32(i32 %14, i32 9)
  %29 = select i1 %27, i32 1, i32 %28
  %30 = load <2 x i32>, ptr %12, align 8
  %31 = icmp slt <2 x i32> %30, <i32 3, i32 0>
  %32 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %30, <2 x i32> <i32 7, i32 131072>)
  %33 = select <2 x i1> %31, <2 x i32> <i32 3, i32 0>, <2 x i32> %32
  store <2 x i32> %33, ptr %12, align 8
  %34 = icmp eq i64 %2, 0
  %35 = select i1 %34, i64 -1, i64 %2
  %36 = icmp ult i64 %35, 1073741825
  %37 = icmp ult i64 %3, 1073741825
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %48

39:                                               ; preds = %4
  %40 = add nuw nsw i64 %35, %3
  %41 = trunc i64 %40 to i32
  %42 = icmp ult i32 %41, 64
  %43 = add i32 %41, -1
  %44 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 true), !range !123
  %45 = sub nuw nsw i32 32, %44
  %46 = select i1 %42, i32 6, i32 %45
  %47 = tail call i32 @llvm.umin.i32(i32 %17, i32 %46)
  br label %50

48:                                               ; preds = %4
  %49 = icmp eq i64 %35, -1
  br i1 %49, label %78, label %50

50:                                               ; preds = %39, %48
  %51 = phi i32 [ %17, %48 ], [ %47, %39 ]
  %52 = icmp eq i64 %3, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = zext nneg i32 %51 to i64
  %55 = shl nuw nsw i64 1, %54
  %56 = add i64 %55, %3
  %57 = add i64 %35, %3
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = icmp ugt i64 %56, 2147483647
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = trunc i64 %56 to i32
  %63 = add nsw i32 %62, -1
  %64 = tail call i32 @llvm.ctlz.i32(i32 %63, i1 true), !range !123
  %65 = sub nuw nsw i32 32, %64
  br label %66

66:                                               ; preds = %61, %59, %53, %50
  %67 = phi i32 [ %51, %50 ], [ %65, %61 ], [ %51, %53 ], [ 31, %59 ]
  %68 = icmp ugt i32 %29, 5
  %69 = zext i1 %68 to i32
  %70 = sext i1 %68 to i32
  %71 = add nsw i32 %20, %70
  %72 = add nuw nsw i32 %67, 1
  %73 = tail call i32 @llvm.umin.i32(i32 %23, i32 %72)
  %74 = icmp ugt i32 %71, %67
  %75 = add nuw nsw i32 %67, %69
  %76 = select i1 %74, i32 %75, i32 %20
  %77 = tail call i32 @llvm.umax.i32(i32 %51, i32 10)
  br label %78

78:                                               ; preds = %66, %48
  %79 = phi i32 [ %23, %48 ], [ %73, %66 ]
  %80 = phi i32 [ %20, %48 ], [ %76, %66 ]
  %81 = phi i32 [ %17, %48 ], [ %77, %66 ]
  %82 = add nsw i32 %29, -6
  %83 = icmp ult i32 %82, -3
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = tail call i32 @llvm.umin.i32(i32 %26, i32 6)
  %86 = tail call i32 @llvm.umax.i32(i32 %85, i32 4)
  %87 = or disjoint i32 %86, 24
  %88 = tail call i32 @llvm.umin.i32(i32 %79, i32 %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = phi i32 [ %79, %78 ], [ %88, %84 ]
  store i32 %81, ptr %0, align 4, !tbaa.struct !70
  %91 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %80, ptr %91, align 4, !tbaa.struct !124
  %92 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %90, ptr %92, align 4, !tbaa.struct !125
  %93 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %26, ptr %93, align 4, !tbaa.struct !126
  %94 = getelementptr inbounds i8, ptr %0, i64 16
  store <2 x i32> %33, ptr %94, align 4
  %95 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %29, ptr %95, align 4, !tbaa.struct !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = alloca %struct.ZSTD_compressionParameters, align 4
  %7 = icmp eq i64 %2, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !97
  %11 = icmp sgt i32 %10, 0
  %12 = zext nneg i32 %10 to i64
  %13 = select i1 %11, i64 %12, i64 -1
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i64 [ %2, %5 ], [ %13, %8 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #30
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !38
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %6, i32 noundef %17, i64 noundef %15, i64 noundef %3, i32 noundef %4)
  %18 = load i32, ptr %6, align 4, !tbaa.struct !70
  %19 = getelementptr inbounds i8, ptr %6, i64 4
  %20 = load i32, ptr %19, align 4, !tbaa.struct !124
  %21 = getelementptr inbounds i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 4, !tbaa.struct !125
  %23 = getelementptr inbounds i8, ptr %6, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa.struct !126
  %25 = getelementptr inbounds i8, ptr %6, i64 16
  %26 = getelementptr inbounds i8, ptr %6, i64 24
  %27 = load i32, ptr %26, align 4, !tbaa.struct !53
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 13
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 1
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 1, i32 2
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 1, i32 1
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 1, i32 3
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 1, i32 4
  %34 = load <2 x i32>, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #30
  %35 = load i32, ptr %28, align 8, !tbaa !73
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 27, i32 %18
  %38 = load i32, ptr %29, align 4, !tbaa !64
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  %41 = load i32, ptr %30, align 4, !tbaa !66
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %22, i32 %41
  %44 = load i32, ptr %31, align 4, !tbaa !65
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %20, i32 %44
  %47 = load i32, ptr %32, align 4, !tbaa !67
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %24, i32 %47
  %50 = load <2 x i32>, ptr %33, align 4, !tbaa !45
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 1, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !69
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %27, i32 %52
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 22
  %56 = load i32, ptr %55, align 8, !tbaa !71
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
  %64 = phi i64 [ %3, %14 ], [ %3, %57 ], [ 0, %62 ]
  %65 = phi i64 [ %15, %14 ], [ %61, %57 ], [ %15, %62 ]
  %66 = icmp ult i64 %65, 1073741825
  %67 = icmp ult i64 %64, 1073741825
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = add nuw nsw i64 %65, %64
  %71 = trunc i64 %70 to i32
  %72 = icmp ult i32 %71, 64
  %73 = add i32 %71, -1
  %74 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 true), !range !123
  %75 = sub nuw nsw i32 32, %74
  %76 = select i1 %72, i32 6, i32 %75
  %77 = tail call i32 @llvm.umin.i32(i32 %40, i32 %76)
  br label %80

78:                                               ; preds = %63
  %79 = icmp eq i64 %65, -1
  br i1 %79, label %107, label %80

80:                                               ; preds = %69, %78
  %81 = phi i32 [ %40, %78 ], [ %77, %69 ]
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
  %92 = trunc i64 %86 to i32
  %93 = add nsw i32 %92, -1
  %94 = tail call i32 @llvm.ctlz.i32(i32 %93, i1 true), !range !123
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
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = zext i1 %98 to i32
  %106 = add nuw i32 %97, %105
  br label %107

107:                                              ; preds = %104, %96, %78
  %108 = phi i32 [ %102, %104 ], [ %102, %96 ], [ %43, %78 ]
  %109 = phi i32 [ %106, %104 ], [ %46, %96 ], [ %46, %78 ]
  %110 = phi i32 [ %81, %104 ], [ %81, %96 ], [ %40, %78 ]
  %111 = icmp ne i32 %4, 2
  %112 = add i32 %54, -3
  %113 = icmp ult i32 %112, -2
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %107
  %116 = tail call i32 @llvm.umin.i32(i32 %108, i32 24)
  %117 = tail call i32 @llvm.umin.i32(i32 %109, i32 24)
  br label %128

118:                                              ; preds = %107
  %119 = add i32 %54, -6
  %120 = icmp ult i32 %119, -3
  %121 = icmp ugt i32 %56, 1
  %122 = or i1 %121, %120
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = tail call i32 @llvm.umin.i32(i32 %49, i32 6)
  %125 = tail call i32 @llvm.umax.i32(i32 %124, i32 4)
  %126 = or disjoint i32 %125, 24
  %127 = tail call i32 @llvm.umin.i32(i32 %108, i32 %126)
  br label %128

128:                                              ; preds = %115, %123, %118
  %129 = phi i32 [ %109, %118 ], [ %109, %123 ], [ %117, %115 ]
  %130 = phi i32 [ %108, %118 ], [ %127, %123 ], [ %116, %115 ]
  %131 = tail call i32 @llvm.umax.i32(i32 %110, i32 10)
  %132 = icmp eq <2 x i32> %50, zeroinitializer
  store i32 %131, ptr %0, align 4, !tbaa.struct !70
  %133 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %129, ptr %133, align 4, !tbaa.struct !124
  %134 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %130, ptr %134, align 4, !tbaa.struct !125
  %135 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %49, ptr %135, align 4, !tbaa.struct !126
  %136 = getelementptr inbounds i8, ptr %0, i64 16
  %137 = select <2 x i1> %132, <2 x i32> %34, <2 x i32> %50
  store <2 x i32> %137, ptr %136, align 4
  %138 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %54, ptr %138, align 4, !tbaa.struct !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nocapture writable writeonly align 4 %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #7 {
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
  %35 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 %26, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa.struct !70
  %37 = getelementptr inbounds i8, ptr %35, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa.struct !124
  %39 = getelementptr inbounds i8, ptr %35, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa.struct !125
  %41 = getelementptr inbounds i8, ptr %35, i64 12
  %42 = load <2 x i32>, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %35, i64 20
  %44 = load i32, ptr %43, align 4, !tbaa.struct !127
  %45 = getelementptr inbounds i8, ptr %35, i64 24
  %46 = load i32, ptr %45, align 4, !tbaa.struct !53
  switch i32 %4, label %52 [
    i32 1, label %51
    i32 2, label %47
  ]

47:                                               ; preds = %33
  %48 = icmp ne i64 %3, 0
  %49 = and i1 %8, %48
  %50 = select i1 %49, i64 513, i64 %2
  br label %52

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %47, %33
  %53 = phi i64 [ %3, %33 ], [ %3, %47 ], [ 0, %51 ]
  %54 = phi i64 [ %2, %33 ], [ %50, %47 ], [ %2, %51 ]
  %55 = icmp ult i64 %54, 1073741825
  %56 = icmp ult i64 %53, 1073741825
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = add nuw nsw i64 %54, %53
  %60 = trunc i64 %59 to i32
  %61 = icmp ult i32 %60, 64
  %62 = add i32 %60, -1
  %63 = tail call i32 @llvm.ctlz.i32(i32 %62, i1 true), !range !123
  %64 = sub nuw nsw i32 32, %63
  %65 = select i1 %61, i32 6, i32 %64
  %66 = tail call i32 @llvm.umin.i32(i32 %36, i32 %65)
  br label %69

67:                                               ; preds = %52
  %68 = icmp eq i64 %54, -1
  br i1 %68, label %96, label %69

69:                                               ; preds = %58, %67
  %70 = phi i32 [ %36, %67 ], [ %66, %58 ]
  %71 = icmp eq i64 %53, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = zext nneg i32 %70 to i64
  %74 = shl nuw i64 1, %73
  %75 = add i64 %74, %53
  %76 = add i64 %54, %53
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = icmp ugt i64 %75, 2147483647
  br i1 %79, label %85, label %80

80:                                               ; preds = %78
  %81 = trunc i64 %75 to i32
  %82 = add nsw i32 %81, -1
  %83 = tail call i32 @llvm.ctlz.i32(i32 %82, i1 true), !range !123
  %84 = sub nuw nsw i32 32, %83
  br label %85

85:                                               ; preds = %80, %78, %72, %69
  %86 = phi i32 [ %70, %69 ], [ %84, %80 ], [ %70, %72 ], [ 31, %78 ]
  %87 = icmp ugt i32 %46, 5
  %88 = sext i1 %87 to i32
  %89 = add i32 %38, %88
  %90 = add i32 %86, 1
  %91 = tail call i32 @llvm.umin.i32(i32 %40, i32 %90)
  %92 = icmp ugt i32 %89, %86
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = zext i1 %87 to i32
  %95 = add nuw i32 %86, %94
  br label %96

96:                                               ; preds = %93, %85, %67
  %97 = phi i32 [ %95, %93 ], [ %38, %85 ], [ %38, %67 ]
  %98 = phi i32 [ %70, %93 ], [ %70, %85 ], [ %36, %67 ]
  %99 = phi i32 [ %91, %93 ], [ %91, %85 ], [ %40, %67 ]
  %100 = icmp ne i32 %4, 2
  %101 = add i32 %46, -3
  %102 = icmp ult i32 %101, -2
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = tail call i32 @llvm.umin.i32(i32 %99, i32 24)
  %106 = tail call i32 @llvm.umin.i32(i32 %97, i32 24)
  br label %116

107:                                              ; preds = %96
  %108 = add i32 %46, -6
  %109 = icmp ult i32 %108, -3
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = extractelement <2 x i32> %42, i64 0
  %112 = tail call i32 @llvm.umin.i32(i32 %111, i32 6)
  %113 = tail call i32 @llvm.umax.i32(i32 %112, i32 4)
  %114 = or disjoint i32 %113, 24
  %115 = tail call i32 @llvm.umin.i32(i32 %99, i32 %114)
  br label %116

116:                                              ; preds = %104, %110, %107
  %117 = phi i32 [ %97, %107 ], [ %97, %110 ], [ %106, %104 ]
  %118 = phi i32 [ %99, %107 ], [ %115, %110 ], [ %105, %104 ]
  %119 = tail call i32 @llvm.umax.i32(i32 %98, i32 10)
  %120 = icmp slt i32 %1, 0
  %121 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072)
  %122 = sub nsw i32 0, %121
  %123 = select i1 %120, i32 %122, i32 %44
  store i32 %119, ptr %0, align 4, !tbaa.struct !70
  %124 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %117, ptr %124, align 4, !tbaa.struct !124
  %125 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %118, ptr %125, align 4, !tbaa.struct !125
  %126 = getelementptr inbounds i8, ptr %0, i64 12
  store <2 x i32> %42, ptr %126, align 4
  %127 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %123, ptr %127, align 4, !tbaa.struct !127
  %128 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %46, ptr %128, align 4, !tbaa.struct !53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !124
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4, !tbaa !64
  %15 = icmp ugt i32 %14, 14
  %16 = select i1 %15, i32 1, i32 2
  br label %17

17:                                               ; preds = %1, %8, %13
  %18 = phi i32 [ %16, %13 ], [ %6, %1 ], [ 2, %8 ]
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !107
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %3, align 4, !tbaa !128
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr i8, ptr %0, i64 208
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 21
  %32 = load i64, ptr %31, align 8, !tbaa !74
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
define internal fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i64 noundef %8) unnamed_addr #2 {
  %10 = alloca %struct.ldmParams_t, align 8
  %11 = alloca %struct.ldmParams_t, align 8
  %12 = load i32, ptr %0, align 4, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %28, label %18

18:                                               ; preds = %9
  %19 = add i32 %16, -3
  %20 = icmp ult i32 %19, 3
  %21 = icmp eq i32 %3, 1
  %22 = and i1 %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = zext nneg i32 %25 to i64
  %27 = shl i64 4, %26
  br label %28

28:                                               ; preds = %23, %18, %9
  %29 = phi i64 [ %27, %23 ], [ 0, %18 ], [ 0, %9 ]
  %30 = freeze i32 %12
  %31 = icmp eq i64 %8, 0
  %32 = select i1 %31, i64 131072, i64 %8
  %33 = icmp eq i64 %6, 0
  %34 = zext nneg i32 %30 to i64
  %35 = shl nuw i64 1, %34
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 %6)
  %37 = select i1 %33, i64 1, i64 %36
  %38 = tail call i64 @llvm.umin.i64(i64 %32, i64 %37)
  %39 = icmp eq i32 %14, 3
  %40 = icmp ne i32 %7, 0
  %41 = or i1 %40, %39
  %42 = select i1 %41, i64 3, i64 4
  %43 = udiv i64 %38, %42
  %44 = shl i64 %43, 3
  %45 = add i64 %44, 63
  %46 = and i64 %45, -64
  %47 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !124
  %67 = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !124
  %68 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %11, i64 noundef %38) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #30
  %69 = load i32, ptr %1, align 4, !tbaa !128
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
  %85 = mul nuw i64 %43, 3
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
define dso_local i64 @ZSTD_estimateCCtxSize_usingCParams(ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !130
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 3
  store i32 3, ptr %4, align 4, !tbaa !38, !alias.scope !130
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !39, !alias.scope !130
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 13
  %8 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !69, !noalias !130
  %10 = icmp ugt i32 %9, 6
  %11 = load i32, ptr %2, align 8, !noalias !130
  %12 = icmp ugt i32 %11, 26
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  store i32 2, ptr %7, align 8, !tbaa !73, !alias.scope !130
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  br label %21

16:                                               ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !73, !alias.scope !130
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull %2) #30
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  %18 = load i32, ptr %17, align 4, !tbaa !72, !alias.scope !130
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14, %16
  %22 = phi ptr [ %15, %14 ], [ %19, %16 ]
  %23 = load i32, ptr %8, align 8, !tbaa !69, !noalias !130
  %24 = icmp ugt i32 %23, 6
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, ptr %2, align 8, !tbaa !64, !noalias !130
  %27 = icmp ugt i32 %26, 16
  %28 = select i1 %27, i32 1, i32 2
  br label %29

29:                                               ; preds = %25, %21, %16
  %30 = phi ptr [ %19, %16 ], [ %22, %21 ], [ %22, %25 ]
  %31 = phi i32 [ %18, %16 ], [ 2, %21 ], [ %28, %25 ]
  store i32 %31, ptr %30, align 4, !tbaa !72, !alias.scope !130
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 22
  %33 = load i32, ptr %32, align 8, !tbaa !71, !alias.scope !130
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, ptr %8, align 8, !tbaa !69, !noalias !130
  %37 = add i32 %36, -6
  %38 = icmp ult i32 %37, -3
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 8, !tbaa !64, !noalias !130
  %41 = icmp ugt i32 %40, 14
  %42 = select i1 %41, i32 1, i32 2
  br label %43

43:                                               ; preds = %29, %35, %39
  %44 = phi i32 [ %42, %39 ], [ %33, %29 ], [ 2, %35 ]
  store i32 %44, ptr %32, align 8, !tbaa !71, !alias.scope !130
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 21
  %46 = load i64, ptr %45, align 8, !tbaa !74, !alias.scope !130
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i64 131072, i64 %46
  store i64 %48, ptr %45, align 8, !tbaa !74, !alias.scope !130
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 29
  %50 = load i32, ptr %49, align 8, !tbaa !75, !alias.scope !130
  %51 = load i32, ptr %4, align 4, !tbaa !38, !alias.scope !130
  %52 = icmp eq i32 %50, 0
  %53 = icmp slt i32 %51, 10
  %54 = select i1 %53, i32 2, i32 1
  %55 = select i1 %52, i32 %54, i32 %50
  store i32 %55, ptr %49, align 8, !tbaa !75, !alias.scope !130
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2)
  %56 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !69
  %58 = add i32 %57, -6
  %59 = icmp ult i32 %58, -3
  br i1 %59, label %64, label %60

60:                                               ; preds = %43
  store i32 2, ptr %32, align 8, !tbaa !71
  %61 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  store i32 1, ptr %32, align 8, !tbaa !71
  %62 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  %63 = call i64 @llvm.umax.i64(i64 %61, i64 %62)
  br label %66

64:                                               ; preds = %43
  %65 = call i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef nonnull %3)
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %4 = getelementptr inbounds i8, ptr %2, i64 4
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  %6 = getelementptr inbounds i8, ptr %2, i64 12
  %7 = getelementptr inbounds i8, ptr %2, i64 20
  %8 = getelementptr inbounds i8, ptr %2, i64 24
  br label %9

9:                                                ; preds = %1, %151
  %10 = phi i32 [ %3, %1 ], [ %153, %151 ]
  %11 = phi i64 [ 0, %1 ], [ %152, %151 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
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
  %20 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 3, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa.struct !70, !noalias !133
  %22 = getelementptr inbounds i8, ptr %20, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa.struct !124, !noalias !133
  %24 = getelementptr inbounds i8, ptr %20, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa.struct !125, !noalias !133
  %26 = getelementptr inbounds i8, ptr %20, i64 12
  %27 = getelementptr inbounds i8, ptr %20, i64 20
  %28 = load i32, ptr %27, align 4, !tbaa.struct !127, !noalias !133
  %29 = getelementptr inbounds i8, ptr %20, i64 24
  %30 = load i32, ptr %29, align 4, !tbaa.struct !53, !noalias !133
  %31 = tail call i32 @llvm.umin.i32(i32 %21, i32 14)
  %32 = icmp ugt i32 %30, 5
  %33 = sext i1 %32 to i32
  %34 = add i32 %23, %33
  %35 = add nuw nsw i32 %31, 1
  %36 = tail call i32 @llvm.umin.i32(i32 %25, i32 %35)
  %37 = icmp ugt i32 %34, %31
  %38 = zext i1 %32 to i32
  %39 = add nuw nsw i32 %31, %38
  %40 = select i1 %37, i32 %39, i32 %23
  %41 = tail call i32 @llvm.umax.i32(i32 %31, i32 10)
  %42 = icmp slt i32 %10, 0
  %43 = tail call i32 @llvm.umax.i32(i32 %10, i32 -131072)
  %44 = sub nsw i32 0, %43
  %45 = select i1 %42, i32 %44, i32 %28
  store i32 %41, ptr %2, align 8, !tbaa.struct !70, !alias.scope !133
  store i32 %40, ptr %4, align 4, !tbaa.struct !124, !alias.scope !133
  store i32 %36, ptr %5, align 8, !tbaa.struct !125, !alias.scope !133
  %46 = load <2 x i32>, ptr %26, align 4, !noalias !133
  store <2 x i32> %46, ptr %6, align 4, !alias.scope !133
  store i32 %45, ptr %7, align 4, !tbaa.struct !127, !alias.scope !133
  store i32 %30, ptr %8, align 8, !tbaa.struct !53, !alias.scope !133
  %47 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %18
  %50 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %51

51:                                               ; preds = %49, %18
  %52 = phi i64 [ %50, %49 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %53 = icmp slt i32 %10, 1
  %54 = select i1 %12, i64 3, i64 0
  %55 = tail call i32 @llvm.umin.i32(i32 %10, i32 22)
  %56 = zext nneg i32 %55 to i64
  %57 = select i1 %53, i64 %54, i64 %56
  %58 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 2, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa.struct !70, !noalias !136
  %60 = getelementptr inbounds i8, ptr %58, i64 4
  %61 = load i32, ptr %60, align 4, !tbaa.struct !124, !noalias !136
  %62 = getelementptr inbounds i8, ptr %58, i64 8
  %63 = load i32, ptr %62, align 4, !tbaa.struct !125, !noalias !136
  %64 = getelementptr inbounds i8, ptr %58, i64 12
  %65 = getelementptr inbounds i8, ptr %58, i64 20
  %66 = load i32, ptr %65, align 4, !tbaa.struct !127, !noalias !136
  %67 = getelementptr inbounds i8, ptr %58, i64 24
  %68 = load i32, ptr %67, align 4, !tbaa.struct !53, !noalias !136
  %69 = tail call i32 @llvm.umin.i32(i32 %59, i32 17)
  %70 = icmp ugt i32 %68, 5
  %71 = sext i1 %70 to i32
  %72 = add i32 %61, %71
  %73 = add nuw nsw i32 %69, 1
  %74 = tail call i32 @llvm.umin.i32(i32 %63, i32 %73)
  %75 = icmp ugt i32 %72, %69
  %76 = zext i1 %70 to i32
  %77 = add nuw nsw i32 %69, %76
  %78 = select i1 %75, i32 %77, i32 %61
  %79 = tail call i32 @llvm.umax.i32(i32 %69, i32 10)
  %80 = select i1 %42, i32 %44, i32 %66
  store i32 %79, ptr %2, align 8, !tbaa.struct !70, !alias.scope !136
  store i32 %78, ptr %4, align 4, !tbaa.struct !124, !alias.scope !136
  store i32 %74, ptr %5, align 8, !tbaa.struct !125, !alias.scope !136
  %81 = load <2 x i32>, ptr %64, align 4, !noalias !136
  store <2 x i32> %81, ptr %6, align 4, !alias.scope !136
  store i32 %80, ptr %7, align 4, !tbaa.struct !127, !alias.scope !136
  store i32 %68, ptr %8, align 8, !tbaa.struct !53, !alias.scope !136
  %82 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %83 = icmp ugt i64 %82, %52
  br i1 %83, label %84, label %86

84:                                               ; preds = %51
  %85 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %86

86:                                               ; preds = %84, %51
  %87 = phi i64 [ %85, %84 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %88 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 1, i64 %57
  %89 = load i32, ptr %88, align 4, !tbaa.struct !70, !noalias !139
  %90 = getelementptr inbounds i8, ptr %88, i64 4
  %91 = load i32, ptr %90, align 4, !tbaa.struct !124, !noalias !139
  %92 = getelementptr inbounds i8, ptr %88, i64 8
  %93 = load i32, ptr %92, align 4, !tbaa.struct !125, !noalias !139
  %94 = getelementptr inbounds i8, ptr %88, i64 12
  %95 = getelementptr inbounds i8, ptr %88, i64 20
  %96 = load i32, ptr %95, align 4, !tbaa.struct !127, !noalias !139
  %97 = getelementptr inbounds i8, ptr %88, i64 24
  %98 = load i32, ptr %97, align 4, !tbaa.struct !53, !noalias !139
  %99 = tail call i32 @llvm.umin.i32(i32 %89, i32 18)
  %100 = icmp ugt i32 %98, 5
  %101 = sext i1 %100 to i32
  %102 = add i32 %91, %101
  %103 = add nuw nsw i32 %99, 1
  %104 = tail call i32 @llvm.umin.i32(i32 %93, i32 %103)
  %105 = icmp ugt i32 %102, %99
  %106 = zext i1 %100 to i32
  %107 = add nuw nsw i32 %99, %106
  %108 = select i1 %105, i32 %107, i32 %91
  %109 = tail call i32 @llvm.umax.i32(i32 %99, i32 10)
  %110 = select i1 %42, i32 %44, i32 %96
  store i32 %109, ptr %2, align 8, !tbaa.struct !70, !alias.scope !139
  store i32 %108, ptr %4, align 4, !tbaa.struct !124, !alias.scope !139
  store i32 %104, ptr %5, align 8, !tbaa.struct !125, !alias.scope !139
  %111 = load <2 x i32>, ptr %94, align 4, !noalias !139
  store <2 x i32> %111, ptr %6, align 4, !alias.scope !139
  store i32 %110, ptr %7, align 4, !tbaa.struct !127, !alias.scope !139
  store i32 %98, ptr %8, align 8, !tbaa.struct !53, !alias.scope !139
  %112 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %113 = icmp ugt i64 %112, %87
  br i1 %113, label %114, label %116

114:                                              ; preds = %86
  %115 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %116

116:                                              ; preds = %114, %86
  %117 = phi i64 [ %115, %114 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %118 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 0, i64 %57
  %119 = load i32, ptr %118, align 4, !tbaa.struct !70, !noalias !142
  %120 = getelementptr inbounds i8, ptr %118, i64 4
  %121 = load i32, ptr %120, align 4, !tbaa.struct !124, !noalias !142
  %122 = getelementptr inbounds i8, ptr %118, i64 8
  %123 = load i32, ptr %122, align 4, !tbaa.struct !125, !noalias !142
  %124 = getelementptr inbounds i8, ptr %118, i64 12
  %125 = load <2 x i32>, ptr %124, align 4, !noalias !142
  %126 = getelementptr inbounds i8, ptr %118, i64 20
  %127 = load i32, ptr %126, align 4, !tbaa.struct !127, !noalias !142
  %128 = getelementptr inbounds i8, ptr %118, i64 24
  %129 = load i32, ptr %128, align 4, !tbaa.struct !53, !noalias !142
  %130 = add i32 %129, -6
  %131 = icmp ult i32 %130, -3
  br i1 %131, label %138, label %132

132:                                              ; preds = %116
  %133 = extractelement <2 x i32> %125, i64 0
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 6)
  %135 = tail call i32 @llvm.umax.i32(i32 %134, i32 4)
  %136 = or disjoint i32 %135, 24
  %137 = tail call i32 @llvm.umin.i32(i32 %123, i32 %136)
  br label %138

138:                                              ; preds = %116, %132
  %139 = phi i32 [ %123, %116 ], [ %137, %132 ]
  %140 = tail call i32 @llvm.umax.i32(i32 %119, i32 10)
  %141 = select i1 %42, i32 %44, i32 %127
  store i32 %140, ptr %2, align 8, !tbaa.struct !70, !alias.scope !142
  store i32 %121, ptr %4, align 4, !tbaa.struct !124, !alias.scope !142
  store i32 %139, ptr %5, align 8, !tbaa.struct !125, !alias.scope !142
  store <2 x i32> %125, ptr %6, align 4, !alias.scope !142
  store i32 %141, ptr %7, align 4, !tbaa.struct !127, !alias.scope !142
  store i32 %129, ptr %8, align 8, !tbaa.struct !53, !alias.scope !142
  %142 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  %143 = icmp ugt i64 %142, %117
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = tail call i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  br label %146

146:                                              ; preds = %138, %144
  %147 = phi i64 [ %145, %144 ], [ %117, %138 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  %148 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1), !nosanitize !145
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !145
  br i1 %149, label %150, label %151, !nosanitize !145

150:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !145
  unreachable, !nosanitize !145

151:                                              ; preds = %146
  %152 = tail call i64 @llvm.umax.i64(i64 %147, i64 %11)
  %153 = extractvalue { i32, i1 } %148, 0, !nosanitize !145
  %154 = icmp sgt i32 %153, %0
  br i1 %154, label %155, label %9, !llvm.loop !146

155:                                              ; preds = %151
  ret i64 %152
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #12

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %64, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !124
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 21
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 131072, i64 %10
  %13 = load i32, ptr %2, align 4
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = tail call i64 @llvm.umin.i64(i64 %12, i64 %15)
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 4, !tbaa !98
  %19 = icmp eq i32 %18, 0
  %20 = add i64 %16, %15
  %21 = select i1 %19, i64 %20, i64 0
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !99
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %7
  %26 = lshr i64 %16, 8
  %27 = add nuw i64 %26, %16
  %28 = icmp ult i64 %16, 131072
  %29 = sub i64 131072, %16
  %30 = lshr i64 %29, 11
  %31 = select i1 %28, i64 %30, i64 0
  %32 = add i64 %27, %31
  %33 = icmp eq i64 %32, 0
  %34 = add i64 %32, 1
  %35 = select i1 %33, i64 -71, i64 %34
  br label %36

36:                                               ; preds = %7, %25
  %37 = phi i64 [ %35, %25 ], [ 0, %7 ]
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 22
  %39 = load i32, ptr %38, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 1, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !69
  %45 = add i32 %44, -6
  %46 = icmp ult i32 %45, -3
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %40, align 4, !tbaa !64
  %49 = icmp ugt i32 %48, 14
  %50 = select i1 %49, i32 1, i32 2
  br label %51

51:                                               ; preds = %36, %42, %47
  %52 = phi i32 [ %50, %47 ], [ %39, %36 ], [ 2, %42 ]
  %53 = load i32, ptr %3, align 4, !tbaa !128
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  %56 = load i64, ptr %9, align 8, !tbaa !74
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i64 [ %56, %55 ], [ %10, %51 ]
  %59 = getelementptr i8, ptr %0, i64 208
  %60 = load ptr, ptr %59, align 8, !tbaa !129
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i32
  %63 = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %52, i64 noundef %21, i64 noundef %37, i64 noundef -1, i32 noundef %62, i64 noundef %58)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  br label %64

64:                                               ; preds = %1, %57
  %65 = phi i64 [ %63, %57 ], [ -1, %1 ]
  ret i64 %65
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCParams(ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false), !alias.scope !148
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 3
  store i32 3, ptr %4, align 4, !tbaa !38, !alias.scope !148
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !39, !alias.scope !148
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 13
  %8 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !69, !noalias !148
  %10 = icmp ugt i32 %9, 6
  %11 = load i32, ptr %2, align 8, !noalias !148
  %12 = icmp ugt i32 %11, 26
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  store i32 2, ptr %7, align 8, !tbaa !73, !alias.scope !148
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  br label %21

16:                                               ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !73, !alias.scope !148
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull %2) #30
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  %18 = load i32, ptr %17, align 4, !tbaa !72, !alias.scope !148
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14, %16
  %22 = phi ptr [ %15, %14 ], [ %19, %16 ]
  %23 = load i32, ptr %8, align 8, !tbaa !69, !noalias !148
  %24 = icmp ugt i32 %23, 6
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, ptr %2, align 8, !tbaa !64, !noalias !148
  %27 = icmp ugt i32 %26, 16
  %28 = select i1 %27, i32 1, i32 2
  br label %29

29:                                               ; preds = %25, %21, %16
  %30 = phi ptr [ %19, %16 ], [ %22, %21 ], [ %22, %25 ]
  %31 = phi i32 [ %18, %16 ], [ 2, %21 ], [ %28, %25 ]
  store i32 %31, ptr %30, align 4, !tbaa !72, !alias.scope !148
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 22
  %33 = load i32, ptr %32, align 8, !tbaa !71, !alias.scope !148
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, ptr %8, align 8, !tbaa !69, !noalias !148
  %37 = add i32 %36, -6
  %38 = icmp ult i32 %37, -3
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 8, !tbaa !64, !noalias !148
  %41 = icmp ugt i32 %40, 14
  %42 = select i1 %41, i32 1, i32 2
  br label %43

43:                                               ; preds = %29, %35, %39
  %44 = phi i32 [ %42, %39 ], [ %33, %29 ], [ 2, %35 ]
  store i32 %44, ptr %32, align 8, !tbaa !71, !alias.scope !148
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 21
  %46 = load i64, ptr %45, align 8, !tbaa !74, !alias.scope !148
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i64 131072, i64 %46
  store i64 %48, ptr %45, align 8, !tbaa !74, !alias.scope !148
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 29
  %50 = load i32, ptr %49, align 8, !tbaa !75, !alias.scope !148
  %51 = load i32, ptr %4, align 4, !tbaa !38, !alias.scope !148
  %52 = icmp eq i32 %50, 0
  %53 = icmp slt i32 %51, 10
  %54 = select i1 %53, i32 2, i32 1
  %55 = select i1 %52, i32 %54, i32 %50
  store i32 %55, ptr %49, align 8, !tbaa !75, !alias.scope !148
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2)
  %56 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !69
  %58 = add i32 %57, -6
  %59 = icmp ult i32 %58, -3
  br i1 %59, label %64, label %60

60:                                               ; preds = %43
  store i32 2, ptr %32, align 8, !tbaa !71
  %61 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  store i32 1, ptr %32, align 8, !tbaa !71
  %62 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  %63 = call i64 @llvm.umax.i64(i64 %61, i64 %62)
  br label %66

64:                                               ; preds = %43
  %65 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef nonnull %3)
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %4 = getelementptr inbounds i8, ptr %2, i64 4
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  %6 = getelementptr inbounds i8, ptr %2, i64 12
  %7 = getelementptr inbounds i8, ptr %2, i64 20
  %8 = getelementptr inbounds i8, ptr %2, i64 24
  br label %9

9:                                                ; preds = %1, %51
  %10 = phi i32 [ %3, %1 ], [ %53, %51 ]
  %11 = phi i64 [ 0, %1 ], [ %52, %51 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
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
  %20 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa.struct !70, !noalias !151
  %22 = getelementptr inbounds i8, ptr %20, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa.struct !124, !noalias !151
  %24 = getelementptr inbounds i8, ptr %20, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa.struct !125, !noalias !151
  %26 = getelementptr inbounds i8, ptr %20, i64 12
  %27 = load <2 x i32>, ptr %26, align 4, !noalias !151
  %28 = getelementptr inbounds i8, ptr %20, i64 20
  %29 = load i32, ptr %28, align 4, !tbaa.struct !127, !noalias !151
  %30 = getelementptr inbounds i8, ptr %20, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa.struct !53, !noalias !151
  %32 = add i32 %31, -6
  %33 = icmp ult i32 %32, -3
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = extractelement <2 x i32> %27, i64 0
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 6)
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 4)
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
  store i32 %42, ptr %2, align 8, !tbaa.struct !70, !alias.scope !151
  store i32 %23, ptr %4, align 4, !tbaa.struct !124, !alias.scope !151
  store i32 %41, ptr %5, align 8, !tbaa.struct !125, !alias.scope !151
  store <2 x i32> %27, ptr %6, align 4, !alias.scope !151
  store i32 %46, ptr %7, align 4, !tbaa.struct !127, !alias.scope !151
  store i32 %31, ptr %8, align 8, !tbaa.struct !53, !alias.scope !151
  %47 = tail call i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %2)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #30
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1), !nosanitize !145
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !145
  br i1 %49, label %50, label %51, !nosanitize !145

50:                                               ; preds = %40
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !145
  unreachable, !nosanitize !145

51:                                               ; preds = %40
  %52 = tail call i64 @llvm.umax.i64(i64 %47, i64 %11)
  %53 = extractvalue { i32, i1 } %48, 0, !nosanitize !145
  %54 = icmp sgt i32 %53, %0
  br i1 %54, label %55, label %9, !llvm.loop !154

55:                                               ; preds = %51
  ret i64 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getFrameProgression(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_frameProgression) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 32
  %8 = load i64, ptr %7, align 8, !tbaa !156
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 31
  %10 = load i64, ptr %9, align 8, !tbaa !157
  %11 = sub i64 %8, %10
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i64 [ %11, %6 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 11
  %15 = load i64, ptr %14, align 8, !tbaa !158
  %16 = add i64 %15, %13
  store i64 %16, ptr %0, align 8, !tbaa !159
  %17 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 1
  store i64 %15, ptr %17, align 8, !tbaa !161
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 12
  %19 = load i64, ptr %18, align 8, !tbaa !162
  %20 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 2
  store i64 %19, ptr %20, align 8, !tbaa !163
  %21 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 3
  store i64 %19, ptr %21, align 8, !tbaa !164
  %22 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 4
  store i32 0, ptr %22, align 8, !tbaa !165
  %23 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 5
  store i32 0, ptr %23, align 4, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_toFlushNow(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_reset_compressedBlockState(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %3 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 3
  store i32 0, ptr %4, align 4, !tbaa !172
  %5 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 4
  store i32 0, ptr %5, align 8, !tbaa !173
  %6 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 5
  store i32 0, ptr %6, align 4, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_invalidateRepCodes(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr i8, ptr %3, i64 5616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_copyCCtx(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = load i32, ptr %1, align 8, !tbaa !175
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %95

7:                                                ; preds = %3
  %8 = icmp eq i64 %2, 0
  %9 = select i1 %8, i64 -1, i64 %2
  %10 = icmp ne i64 %9, -1
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 28
  %13 = load i32, ptr %12, align 8, !tbaa !176
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #30
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %16, i64 224, i1 false), !tbaa.struct !109
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %17, ptr noundef nonnull align 4 dereferenceable(28) %18, i64 28, i1 false), !tbaa.struct !70
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 22
  %20 = load i32, ptr %19, align 8, !tbaa !177
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 22
  store i32 %20, ptr %21, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 19
  %23 = load i32, ptr %22, align 4, !tbaa !178
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 19
  store i32 %23, ptr %24, align 4, !tbaa !72
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 13
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !124
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 2
  store i64 %11, ptr %27, align 8, !tbaa.struct !52
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 2, i32 2
  store i32 0, ptr %28, align 8, !tbaa.struct !53
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 21
  %30 = load i64, ptr %29, align 8, !tbaa !179
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 21
  store i64 %30, ptr %31, align 8, !tbaa !74
  %32 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %9, i64 noundef 0, i32 noundef 1, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 1, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !180
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %50, label %39

39:                                               ; preds = %7
  %40 = load i32, ptr %19, align 8, !tbaa !177
  %41 = add i32 %37, -3
  %42 = icmp ult i32 %41, 3
  %43 = icmp eq i32 %40, 1
  %44 = and i1 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 1, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !181
  %48 = zext nneg i32 %47 to i64
  %49 = shl i64 4, %48
  br label %50

50:                                               ; preds = %45, %39, %7
  %51 = phi i64 [ %49, %45 ], [ 0, %39 ], [ 0, %7 ]
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4, i32 1, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !182
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 2
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 2, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !183
  %59 = icmp eq i32 %58, 0
  %60 = zext nneg i32 %58 to i64
  %61 = shl i64 4, %60
  %62 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %63 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !184
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 2, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !184
  %68 = shl i64 4, %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %65, ptr align 4 %67, i64 %68, i1 false)
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !185
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 2, i32 11
  %72 = load ptr, ptr %71, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %70, ptr align 4 %72, i64 %51, i1 false)
  %73 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !186
  %75 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 2, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !186
  %77 = select i1 %59, i64 0, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %76, i64 %77, i1 false)
  %78 = load ptr, ptr %35, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %50
  store ptr %80, ptr %35, align 8, !tbaa !58
  br label %83

83:                                               ; preds = %82, %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull align 8 dereferenceable(40) %56, i64 40, i1 false), !tbaa.struct !187
  %84 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 2, i32 1
  %85 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 1
  %86 = load <2 x i32>, ptr %84, align 8, !tbaa !45
  store <2 x i32> %86, ptr %85, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 6
  %88 = load i32, ptr %87, align 8, !tbaa !188
  %89 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %88, ptr %89, align 8, !tbaa !188
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 7
  %91 = load i64, ptr %90, align 8, !tbaa !189
  %92 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %91, ptr %92, align 8, !tbaa !189
  %93 = load ptr, ptr %62, align 8, !tbaa !59
  %94 = load ptr, ptr %55, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %93, ptr noundef nonnull align 8 dereferenceable(5632) %94, i64 5632, i1 false)
  br label %95

95:                                               ; preds = %3, %83
  %96 = phi i64 [ 0, %83 ], [ -60, %3 ]
  ret i64 %96
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ZSTD_seqToCodes(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !190
  %3 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  %9 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !194
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %2 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %61, label %16

16:                                               ; preds = %1
  %17 = lshr exact i64 %13, 3
  %18 = and i64 %17, 4294967295
  br label %19

19:                                               ; preds = %16, %55
  %20 = phi i64 [ 0, %16 ], [ %59, %55 ]
  %21 = getelementptr inbounds %struct.SeqDef_s, ptr %2, i64 %20
  %22 = getelementptr inbounds %struct.SeqDef_s, ptr %2, i64 %20, i32 1
  %23 = load i16, ptr %22, align 4, !tbaa !195
  %24 = load i32, ptr %21, align 4, !tbaa !198
  %25 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 true), !range !123
  %26 = getelementptr inbounds %struct.SeqDef_s, ptr %2, i64 %20, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !199
  %28 = zext i16 %27 to i32
  %29 = icmp ugt i16 %23, 63
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = zext i16 %23 to i32
  %32 = tail call i32 @llvm.ctlz.i32(i32 %31, i1 true), !range !123
  %33 = sub nuw nsw i32 50, %32
  br label %39

34:                                               ; preds = %19
  %35 = zext nneg i16 %23 to i64
  %36 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !44
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %30, %34
  %40 = phi i32 [ %33, %30 ], [ %38, %34 ]
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %4, i64 %20
  store i8 %41, ptr %42, align 1, !tbaa !44
  %43 = trunc i32 %25 to i8
  %44 = xor i8 %43, 31
  %45 = getelementptr inbounds i8, ptr %6, i64 %20
  store i8 %44, ptr %45, align 1, !tbaa !44
  %46 = icmp ugt i16 %27, 127
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 true), !range !123
  %49 = sub nuw nsw i32 67, %48
  br label %55

50:                                               ; preds = %39
  %51 = zext nneg i16 %27 to i64
  %52 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !44
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %47, %50
  %56 = phi i32 [ %49, %47 ], [ %54, %50 ]
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds i8, ptr %8, i64 %20
  store i8 %57, ptr %58, align 1, !tbaa !44
  %59 = add nuw nsw i64 %20, 1
  %60 = icmp eq i64 %59, %18
  br i1 %60, label %61, label %19, !llvm.loop !200

61:                                               ; preds = %55, %1
  %62 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !201
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 10
  %67 = load i32, ptr %66, align 4, !tbaa !202
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %4, i64 %68
  store i8 35, ptr %69, align 1, !tbaa !44
  %70 = load i32, ptr %62, align 8, !tbaa !201
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i32 [ %70, %65 ], [ %63, %61 ]
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 10
  %76 = load i32, ptr %75, align 4, !tbaa !202
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %8, i64 %77
  store i8 52, ptr %78, align 1, !tbaa !44
  br label %79

79:                                               ; preds = %74, %71
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
  %19 = load ptr, ptr %18, align 8, !tbaa !43
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
define dso_local void @ZSTD_resetSeqStore(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  %4 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !204
  %5 = load ptr, ptr %0, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_sequenceBound(i64 noundef %0) local_unnamed_addr #0 {
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
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = lshr i64 %4, 8
  %11 = add nuw i64 %10, %4
  %12 = icmp ult i64 %4, 131072
  %13 = sub i64 131072, %4
  %14 = lshr i64 %13, 11
  %15 = select i1 %12, i64 %14, i64 0
  %16 = add i64 %11, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9, %5
  br label %19

19:                                               ; preds = %9, %18
  %20 = phi i64 [ -72, %18 ], [ %16, %9 ]
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !96
  %23 = and i64 %22, 4294967295
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !107
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = tail call noalias ptr @malloc(i64 noundef %20) #31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %33, align 8, !tbaa.struct !205
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17, i32 1
  store ptr %1, ptr %34, align 8, !tbaa.struct !206
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17, i32 2
  store i64 0, ptr %35, align 8, !tbaa.struct !207
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17, i32 3
  store i64 %2, ptr %36, align 8, !tbaa.struct !208
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 15
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %39, align 8, !tbaa !76
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %40, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  store ptr %30, ptr %6, align 8, !tbaa !209
  %41 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i64 0, i32 1
  store i64 %20, ptr %41, align 8, !tbaa !211
  %42 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i64 0, i32 2
  store i64 0, ptr %42, align 8, !tbaa !212
  store ptr %3, ptr %7, align 8, !tbaa !213
  %43 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i64 0, i32 1
  store i64 %4, ptr %43, align 8, !tbaa !214
  %44 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !215
  %45 = load <2 x i32>, ptr %37, align 4, !tbaa !45
  store i32 1, ptr %37, align 4, !tbaa !216
  store i32 1, ptr %38, align 8, !tbaa !217
  %46 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %47 = load i64, ptr %42, align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  store <2 x i32> %45, ptr %37, align 4, !tbaa !45
  %48 = icmp ult i64 %46, -119
  %49 = icmp eq i64 %46, 0
  %50 = select i1 %49, i64 %47, i64 -70
  %51 = select i1 %48, i64 %50, i64 %46
  tail call void @free(ptr noundef nonnull %30) #30
  %52 = icmp ult i64 %51, -119
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i64, ptr %35, align 8, !tbaa !218
  br label %55

55:                                               ; preds = %29, %32, %25, %19, %53
  %56 = phi i64 [ %54, %53 ], [ %51, %32 ], [ -40, %25 ], [ -40, %19 ], [ -64, %29 ]
  ret i64 %56
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 15
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 16
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %10, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %11, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  store ptr %1, ptr %6, align 8, !tbaa !209
  %12 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i64 0, i32 1
  store i64 %2, ptr %12, align 8, !tbaa !211
  %13 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i64 0, i32 2
  store i64 0, ptr %13, align 8, !tbaa !212
  store ptr %3, ptr %7, align 8, !tbaa !213
  %14 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i64 0, i32 1
  store i64 %4, ptr %14, align 8, !tbaa !214
  %15 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !215
  %16 = load <2 x i32>, ptr %8, align 4, !tbaa !45
  store i32 1, ptr %8, align 4, !tbaa !216
  store i32 1, ptr %9, align 8, !tbaa !217
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  %18 = load i64, ptr %13, align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  store <2 x i32> %16, ptr %8, align 4, !tbaa !45
  %19 = icmp ult i64 %17, -119
  %20 = icmp eq i64 %17, 0
  %21 = select i1 %20, i64 %18, i64 -70
  %22 = select i1 %19, i64 %21, i64 %17
  ret i64 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_mergeBlockDelimiters(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  br label %6

6:                                                ; preds = %4, %27
  %7 = phi i64 [ 0, %4 ], [ %28, %27 ]
  %8 = phi i64 [ 0, %4 ], [ %29, %27 ]
  %9 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !219
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %0, i64 %8, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !221
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = icmp eq i64 %8, %5
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %0, i64 %8, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !222
  %21 = getelementptr %struct.ZSTD_Sequence, ptr %9, i64 1, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !222
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4, !tbaa !222
  br label %27

24:                                               ; preds = %12, %6
  %25 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !126
  %26 = add i64 %7, 1
  br label %27

27:                                               ; preds = %24, %18, %16
  %28 = phi i64 [ %7, %18 ], [ %7, %16 ], [ %26, %24 ]
  %29 = add nuw i64 %8, 1
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %6, !llvm.loop !223

31:                                               ; preds = %27, %2
  %32 = phi i64 [ 0, %2 ], [ %28, %27 ]
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildBlockEntropyStats(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !203
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = icmp ugt i32 %18, 7
  %20 = select i1 %19, i32 2, i32 0
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !90
  switch i32 %22, label %24 [
    i32 1, label %26
    i32 2, label %23
  ]

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  store i32 255, ptr %9, align 4, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

24:                                               ; preds = %7
  %25 = icmp eq i32 %18, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %7, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  store i32 255, ptr %9, align 4, !tbaa !45
  %27 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !84
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  store i32 255, ptr %9, align 4, !tbaa !45
  %33 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %1, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br i1 %32, label %35, label %90

35:                                               ; preds = %26, %29
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi ptr [ %27, %26 ], [ %33, %29 ]
  %38 = getelementptr inbounds i8, ptr %5, i64 1024
  %39 = add nsw i64 %6, -1024
  %40 = load i32, ptr %37, align 8, !tbaa !224
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i64 6, i64 63
  %43 = icmp ult i64 %42, %16
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
  %56 = load i32, ptr %9, align 4, !tbaa !45
  %57 = call i32 @HUF_validateCTable(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %56) #30
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %36, %53 ], [ %59, %55 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %62 = load i32, ptr %9, align 4, !tbaa !45
  %63 = call i32 @HUF_optimalTableLog(i32 noundef 11, i64 noundef %16, i32 noundef %62, ptr noundef nonnull %38, i64 noundef %39, ptr noundef nonnull %2, ptr noundef %5, i32 noundef %20) #30
  %64 = load i32, ptr %9, align 4, !tbaa !45
  %65 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %64, i32 noundef %63, ptr noundef nonnull %38, i64 noundef %39) #30
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = trunc i64 %65 to i32
  %69 = load i32, ptr %9, align 4, !tbaa !45
  %70 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %69) #30
  %71 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %4, i64 0, i32 1
  %72 = load i32, ptr %9, align 4, !tbaa !45
  %73 = call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %71, i64 noundef 128, ptr noundef nonnull %2, i32 noundef %72, i32 noundef %68, ptr noundef nonnull %38, i64 noundef %39) #30
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %9, align 4, !tbaa !45
  %77 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %76) #30
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
  store i32 %91, ptr %4, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  %92 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %4, i64 0, i32 2
  store i64 0, ptr %92, align 8, !tbaa !226
  br label %100

93:                                               ; preds = %60, %44
  %94 = phi i64 [ %45, %44 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  %95 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %4, i64 0, i32 2
  store i64 %94, ptr %95, align 8, !tbaa !226
  br label %142

96:                                               ; preds = %86
  store i32 2, ptr %4, align 8, !tbaa !225
  %97 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %2, i64 0, i32 1
  store i32 1, ptr %97, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  %98 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %4, i64 0, i32 2
  store i64 %73, ptr %98, align 8, !tbaa !226
  %99 = icmp ult i64 %73, -119
  br i1 %99, label %100, label %142

100:                                              ; preds = %90, %96
  %101 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %4, i64 0, i32 1
  %102 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !194
  %104 = load ptr, ptr %0, align 8, !tbaa !190
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i64 0, i32 1, i32 5
  store i32 0, ptr %107, align 4, !tbaa !227, !noalias !228
  %108 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i64 0, i32 1, i32 3
  store i32 0, ptr %108, align 4, !tbaa !231, !noalias !228
  %109 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i64 0, i32 1, i32 4
  store i32 0, ptr %109, align 4, !tbaa !232, !noalias !228
  br label %130

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i64 0, i32 1
  %112 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i64 0, i32 1
  %113 = ptrtoint ptr %104 to i64
  %114 = ptrtoint ptr %103 to i64
  %115 = sub i64 %114, %113
  %116 = ashr exact i64 %115, 3
  %117 = add i64 %6, -212
  %118 = getelementptr inbounds i32, ptr %5, i64 53
  %119 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %4, i64 0, i32 1, i32 3
  %120 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %4, i64 0, i32 1, i32 3, i64 133
  %121 = load i32, ptr %17, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #30
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull %0, i64 noundef %116, ptr noundef nonnull %112, ptr noundef nonnull %111, ptr noundef nonnull %119, ptr noundef nonnull %120, i32 noundef %121, ptr noundef %5, ptr noundef nonnull %118, i64 noundef %117)
  %122 = load <2 x i32>, ptr %8, align 8
  %123 = getelementptr inbounds i8, ptr %8, i64 8
  %124 = load i32, ptr %123, align 8, !tbaa.struct !233
  %125 = getelementptr inbounds i8, ptr %8, i64 16
  %126 = load i64, ptr %125, align 8, !tbaa.struct !234
  %127 = getelementptr inbounds i8, ptr %8, i64 24
  %128 = load i64, ptr %127, align 8, !tbaa.struct !235
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #30
  %129 = icmp ult i64 %126, -119
  br i1 %129, label %130, label %137

130:                                              ; preds = %110, %106
  %131 = phi i32 [ 0, %106 ], [ %124, %110 ]
  %132 = phi i64 [ 0, %106 ], [ %126, %110 ]
  %133 = phi i64 [ 0, %106 ], [ %128, %110 ]
  %134 = phi <2 x i32> [ zeroinitializer, %106 ], [ %122, %110 ]
  store <2 x i32> %134, ptr %101, align 8, !tbaa !45
  %135 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %4, i64 0, i32 1, i32 2
  store i32 %131, ptr %135, align 8, !tbaa !236
  %136 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %4, i64 0, i32 1, i32 5
  store i64 %133, ptr %136, align 8, !tbaa !237
  br label %137

137:                                              ; preds = %110, %130
  %138 = phi i64 [ %126, %110 ], [ %132, %130 ]
  %139 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %4, i64 0, i32 1, i32 4
  store i64 %138, ptr %139, align 8, !tbaa !238
  %140 = icmp ult i64 %138, -119
  %141 = select i1 %140, i64 0, i64 %138
  br label %142

142:                                              ; preds = %93, %137, %96
  %143 = phi i64 [ %73, %96 ], [ %141, %137 ], [ %94, %93 ]
  ret i64 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_writeSkippableFrame(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = add i64 %3, 8
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = icmp ugt i64 %3, 4294967295
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i32 %4, 15
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = or disjoint i32 %4, 407710288
  store i32 %13, ptr %0, align 1, !tbaa !45
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = trunc i64 %3 to i32
  store i32 %15, ptr %14, align 1, !tbaa !45
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %2, i64 %3, i1 false)
  br label %17

17:                                               ; preds = %10, %8, %5, %12
  %18 = phi i64 [ %6, %12 ], [ -70, %5 ], [ -72, %8 ], [ -42, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @ZSTD_writeLastEmptyBlock(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i64 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1, !tbaa !239
  %5 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 0, ptr %5, align 1, !tbaa !44
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ 3, %4 ], [ -70, %2 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_referenceExternalSequences(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24
  store ptr %1, ptr %4, align 8, !tbaa !240
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24, i32 3
  store i64 %2, ptr %5, align 8, !tbaa !241
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24, i32 4
  store i64 %2, ptr %6, align 8, !tbaa !242
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.seqStoreSplits, align 8
  %9 = alloca %struct.repcodes_s, align 4
  %10 = alloca %struct.repcodes_s, align 4
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %12 = load i32, ptr %0, align 8, !tbaa !175
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %720, label %14

14:                                               ; preds = %7
  %15 = icmp ne i32 %5, 0
  %16 = icmp eq i32 %12, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %21 = load i64, ptr %20, align 8, !tbaa !111
  %22 = add i64 %21, -1
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !188
  %25 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %19, i64 noundef %22, i32 noundef %24)
  %26 = icmp ult i64 %25, -119
  br i1 %26, label %27, label %720

27:                                               ; preds = %18
  %28 = sub i64 %2, %25
  %29 = getelementptr inbounds i8, ptr %1, i64 %25
  store i32 2, ptr %0, align 8, !tbaa !175
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %25, %27 ], [ 0, %14 ]
  %32 = phi i64 [ %28, %27 ], [ %2, %14 ]
  %33 = phi ptr [ %29, %27 ], [ %1, %14 ]
  %34 = icmp eq i64 %4, 0
  br i1 %34, label %720, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !243
  %38 = load ptr, ptr %11, align 8, !tbaa !244
  %39 = icmp ne ptr %38, %3
  %40 = icmp ne i32 %37, 0
  %41 = or i1 %40, %39
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !245
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !246
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !247
  br label %65

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !248
  %52 = ptrtoint ptr %38 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !247
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 4
  store i32 %56, ptr %57, align 4, !tbaa !246
  %58 = trunc i64 %54 to i32
  store i32 %58, ptr %55, align 8, !tbaa !247
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 2
  store ptr %51, ptr %59, align 8, !tbaa !245
  %60 = sub i64 0, %54
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  store ptr %61, ptr %50, align 8, !tbaa !248
  %62 = sub i32 %58, %56
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 %58, ptr %57, align 4, !tbaa !246
  br label %65

65:                                               ; preds = %64, %49, %42
  %66 = phi i32 [ %48, %42 ], [ %58, %64 ], [ %58, %49 ]
  %67 = phi i32 [ %46, %42 ], [ %58, %64 ], [ %56, %49 ]
  %68 = phi ptr [ %44, %42 ], [ %51, %64 ], [ %51, %49 ]
  %69 = getelementptr inbounds i8, ptr %3, i64 %4
  store ptr %69, ptr %11, align 8, !tbaa !244
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = icmp ugt ptr %69, %71
  %73 = zext i32 %66 to i64
  %74 = getelementptr inbounds i8, ptr %68, i64 %73
  %75 = icmp ugt ptr %74, %3
  %76 = and i1 %72, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 4
  %79 = ptrtoint ptr %69 to i64
  %80 = ptrtoint ptr %68 to i64
  %81 = sub i64 %79, %80
  %82 = icmp ugt i64 %81, %73
  %83 = trunc i64 %81 to i32
  %84 = select i1 %82, i32 %66, i32 %83
  store i32 %84, ptr %78, align 4, !tbaa !246
  br label %85

85:                                               ; preds = %65, %77
  br i1 %41, label %86, label %88

86:                                               ; preds = %85
  store i32 0, ptr %36, align 8, !tbaa !243
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 2
  store i32 %66, ptr %87, align 4, !tbaa !249
  br label %88

88:                                               ; preds = %86, %85
  %89 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !250
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %139

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %95 = load ptr, ptr %94, align 8, !tbaa !244
  %96 = icmp eq ptr %95, %3
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !245
  %100 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 4
  %101 = load i32, ptr %100, align 4, !tbaa !246
  %102 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !247
  br label %120

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !248
  %107 = ptrtoint ptr %95 to i64
  %108 = ptrtoint ptr %106 to i64
  %109 = sub i64 %107, %108
  %110 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 3
  %111 = load i32, ptr %110, align 8, !tbaa !247
  %112 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 4
  store i32 %111, ptr %112, align 4, !tbaa !246
  %113 = trunc i64 %109 to i32
  store i32 %113, ptr %110, align 8, !tbaa !247
  %114 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 2
  store ptr %106, ptr %114, align 8, !tbaa !245
  %115 = sub i64 0, %109
  %116 = getelementptr inbounds i8, ptr %3, i64 %115
  store ptr %116, ptr %105, align 8, !tbaa !248
  %117 = sub i32 %113, %111
  %118 = icmp ult i32 %117, 8
  br i1 %118, label %119, label %120

119:                                              ; preds = %104
  store i32 %113, ptr %112, align 4, !tbaa !246
  br label %120

120:                                              ; preds = %119, %104, %97
  %121 = phi i32 [ %103, %97 ], [ %113, %119 ], [ %113, %104 ]
  %122 = phi i32 [ %101, %97 ], [ %113, %119 ], [ %111, %104 ]
  %123 = phi ptr [ %99, %97 ], [ %106, %119 ], [ %106, %104 ]
  store ptr %69, ptr %94, align 8, !tbaa !244
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  %126 = icmp ugt ptr %69, %125
  %127 = zext i32 %121 to i64
  %128 = getelementptr inbounds i8, ptr %123, i64 %127
  %129 = icmp ugt ptr %128, %3
  %130 = and i1 %126, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 4
  %133 = ptrtoint ptr %69 to i64
  %134 = ptrtoint ptr %123 to i64
  %135 = sub i64 %133, %134
  %136 = icmp ugt i64 %135, %127
  %137 = trunc i64 %135 to i32
  %138 = select i1 %136, i32 %121, i32 %137
  store i32 %138, ptr %132, align 4, !tbaa !246
  br label %139

139:                                              ; preds = %131, %120, %88
  br i1 %15, label %143, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %141, ptr noundef nonnull %89, ptr noundef %3, ptr noundef nonnull %69)
  %142 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef %33, i64 noundef %32, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  br label %702

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %145 = load i64, ptr %144, align 8, !tbaa !251
  %146 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !252
  %148 = shl nuw i32 1, %147
  %149 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 11
  %150 = load i64, ptr %149, align 8, !tbaa !158
  %151 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 12
  %152 = load i64, ptr %151, align 8, !tbaa !162
  %153 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %150, i64 %152), !nosanitize !145
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !145
  br i1 %154, label %155, label %156, !nosanitize !145

155:                                              ; preds = %679, %143
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !145
  unreachable, !nosanitize !145

156:                                              ; preds = %143
  %157 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !253
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 13
  %162 = tail call i32 @ZSTD_XXH64_update(ptr nocapture noundef nonnull %161, ptr nocapture noundef %3, i64 noundef %4) #30
  br label %163

163:                                              ; preds = %156, %160
  %164 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 20
  %165 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %166 = icmp ult i64 %145, 131072
  %167 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %168 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  %169 = and i32 %6, 1
  %170 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %171 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 1
  %172 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 15
  %173 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 1
  %174 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 3
  %175 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 4
  %176 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 2
  %177 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 5
  %178 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 18
  %179 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %180 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %181 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %182 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  %183 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %184 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 19
  %185 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 5
  %186 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 4
  %187 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 3
  %188 = getelementptr inbounds %struct.seqStoreSplits, ptr %8, i64 0, i32 1
  %189 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %190 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %191 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 3, i32 9
  %192 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 3, i32 1
  %193 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 3, i32 10
  %194 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 3, i32 2
  %195 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 47, i32 3, i32 3
  %196 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17
  br label %197

197:                                              ; preds = %688, %163
  %198 = phi { i64, i1 } [ %153, %163 ], [ %685, %688 ]
  %199 = phi i64 [ %32, %163 ], [ %691, %688 ]
  %200 = phi i64 [ %4, %163 ], [ %689, %688 ]
  %201 = phi ptr [ %3, %163 ], [ %234, %688 ]
  %202 = phi ptr [ %33, %163 ], [ %690, %688 ]
  %203 = extractvalue { i64, i1 } %198, 0
  %204 = load i32, ptr %164, align 8, !tbaa !254
  %205 = load i32, ptr %165, align 4, !tbaa !180
  %206 = icmp ult i64 %200, 131072
  %207 = or i1 %166, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %197
  %209 = tail call i64 @llvm.umin.i64(i64 %200, i64 %145)
  br label %228

210:                                              ; preds = %197
  %211 = icmp slt i64 %203, 3
  br i1 %211, label %228, label %212

212:                                              ; preds = %210
  switch i32 %204, label %217 [
    i32 1, label %228
    i32 0, label %213
  ]

213:                                              ; preds = %212
  %214 = zext i32 %205 to i64
  %215 = getelementptr inbounds [10 x i32], ptr @ZSTD_optimalBlockSize.splitLevels, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !45
  br label %223

217:                                              ; preds = %212
  %218 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %204, i32 -2)
  %219 = extractvalue { i32, i1 } %218, 1, !nosanitize !145
  br i1 %219, label %220, label %221, !nosanitize !145

220:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 21) #33, !nosanitize !145
  unreachable, !nosanitize !145

221:                                              ; preds = %217
  %222 = extractvalue { i32, i1 } %218, 0, !nosanitize !145
  br label %223

223:                                              ; preds = %221, %213
  %224 = phi i32 [ %216, %213 ], [ %222, %221 ]
  %225 = load ptr, ptr %167, align 8, !tbaa !60
  %226 = load i64, ptr %168, align 8, !tbaa !61
  %227 = tail call i64 @ZSTD_splitBlock(ptr noundef %201, i64 noundef %145, i32 noundef %224, ptr noundef %225, i64 noundef %226) #30
  br label %228

228:                                              ; preds = %223, %212, %210, %208
  %229 = phi i64 [ %209, %208 ], [ %227, %223 ], [ 131072, %210 ], [ 131072, %212 ]
  %230 = icmp eq i64 %229, %200
  %231 = select i1 %230, i32 %169, i32 0
  %232 = icmp ult i64 %199, 6
  br i1 %232, label %720, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds i8, ptr %201, i64 %229
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %170, ptr noundef nonnull %89, ptr noundef %201, ptr noundef %234)
  %235 = load ptr, ptr %173, align 8, !tbaa !248
  %236 = ptrtoint ptr %234 to i64
  %237 = ptrtoint ptr %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = load i32, ptr %171, align 4, !tbaa !45
  %241 = add i32 %240, %148
  %242 = icmp ult i32 %241, %239
  br i1 %242, label %246, label %243

243:                                              ; preds = %233
  %244 = load i32, ptr %174, align 8, !tbaa !247
  %245 = icmp eq i32 %240, %244
  br i1 %245, label %247, label %246

246:                                              ; preds = %243, %233
  store i32 0, ptr %171, align 4, !tbaa !45
  store ptr null, ptr %172, align 8, !tbaa !43
  br label %247

247:                                              ; preds = %246, %243
  %248 = phi i32 [ %240, %243 ], [ 0, %246 ]
  %249 = ptrtoint ptr %201 to i64
  %250 = sub i64 %249, %237
  %251 = trunc i64 %250 to i32
  %252 = add i32 %248, %148
  %253 = icmp ult i32 %252, %251
  %254 = load i32, ptr %175, align 4, !tbaa !246
  br i1 %253, label %255, label %265

255:                                              ; preds = %247
  %256 = sub i32 %251, %148
  %257 = icmp ult i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 %256, ptr %175, align 4, !tbaa !246
  br label %259

259:                                              ; preds = %258, %255
  %260 = phi i32 [ %256, %258 ], [ %254, %255 ]
  %261 = load i32, ptr %174, align 8, !tbaa !247
  %262 = icmp ult i32 %261, %260
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  store i32 %260, ptr %174, align 8, !tbaa !247
  br label %264

264:                                              ; preds = %263, %259
  store i32 0, ptr %171, align 4, !tbaa !45
  store ptr null, ptr %172, align 8, !tbaa !43
  br label %265

265:                                              ; preds = %264, %247
  %266 = phi i32 [ %254, %247 ], [ %260, %264 ]
  %267 = load i32, ptr %176, align 4, !tbaa !249
  %268 = icmp ult i32 %267, %266
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 %266, ptr %176, align 4, !tbaa !249
  br label %270

270:                                              ; preds = %269, %265
  %271 = load i64, ptr %177, align 8, !tbaa !96
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %349, label %273

273:                                              ; preds = %270
  %274 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %201, i64 noundef %229)
  %275 = icmp ult i64 %274, -119
  br i1 %275, label %276, label %720

276:                                              ; preds = %273
  %277 = icmp eq i64 %274, 0
  br i1 %277, label %278, label %329

278:                                              ; preds = %276
  %279 = load i32, ptr %178, align 8, !tbaa !255
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %309

281:                                              ; preds = %278
  %282 = load ptr, ptr %180, align 8, !tbaa !194
  %283 = load ptr, ptr %179, align 8, !tbaa !190
  %284 = ptrtoint ptr %282 to i64
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %284, %285
  %287 = load ptr, ptr %181, align 8, !tbaa !204
  %288 = load ptr, ptr %182, align 8, !tbaa !203
  %289 = ptrtoint ptr %287 to i64
  %290 = ptrtoint ptr %288 to i64
  %291 = sub i64 %289, %290
  %292 = icmp ugt i64 %286, 31
  %293 = icmp ugt i64 %291, 9
  %294 = select i1 %292, i1 true, i1 %293
  br i1 %294, label %309, label %295

295:                                              ; preds = %281
  %296 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %201, i64 noundef %229)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %309, label %298

298:                                              ; preds = %295
  %299 = load i8, ptr %201, align 1, !tbaa !44
  %300 = trunc i64 %229 to i32
  %301 = shl i32 %300, 3
  %302 = or disjoint i32 %231, %301
  %303 = trunc i32 %302 to i16
  %304 = or disjoint i16 %303, 2
  store i16 %304, ptr %202, align 1, !tbaa !239
  %305 = lshr i32 %301, 16
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 %306, ptr %307, align 1, !tbaa !44
  %308 = getelementptr inbounds i8, ptr %202, i64 3
  store i8 %299, ptr %308, align 1, !tbaa !44
  br label %342

309:                                              ; preds = %295, %281, %278
  %310 = tail call i64 @ZSTD_compressSuperBlock(ptr noundef nonnull %0, ptr noundef %202, i64 noundef %199, ptr noundef %201, i64 noundef %229, i32 noundef %231) #30
  %311 = icmp eq i64 %310, -70
  br i1 %311, label %329, label %312

312:                                              ; preds = %309
  %313 = icmp ult i64 %310, -119
  br i1 %313, label %314, label %720

314:                                              ; preds = %312
  %315 = load i32, ptr %165, align 4, !tbaa !180
  %316 = icmp ugt i32 %315, 7
  %317 = add i32 %315, -1
  %318 = select i1 %316, i32 %317, i32 6
  %319 = zext nneg i32 %318 to i64
  %320 = lshr i64 %229, %319
  %321 = icmp ne i64 %310, 0
  %322 = add i64 %229, 1
  %323 = sub i64 %322, %320
  %324 = icmp ult i64 %310, %323
  %325 = select i1 %321, i1 %324, i1 false
  br i1 %325, label %326, label %329

326:                                              ; preds = %314
  %327 = load <2 x ptr>, ptr %183, align 8, !tbaa !43
  %328 = shufflevector <2 x ptr> %327, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %328, ptr %183, align 8, !tbaa !43
  br label %342

329:                                              ; preds = %314, %309, %276
  %330 = add i64 %229, 3
  %331 = icmp ugt i64 %330, %199
  br i1 %331, label %720, label %332

332:                                              ; preds = %329
  %333 = trunc i64 %229 to i32
  %334 = shl i32 %333, 3
  %335 = or disjoint i32 %334, %231
  %336 = trunc i32 %335 to i16
  store i16 %336, ptr %202, align 1, !tbaa !239
  %337 = lshr i32 %334, 16
  %338 = trunc i32 %337 to i8
  %339 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 %338, ptr %339, align 1, !tbaa !44
  %340 = getelementptr inbounds i8, ptr %202, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %340, ptr align 1 %201, i64 %229, i1 false)
  %341 = icmp ult i64 %330, -119
  br i1 %341, label %342, label %720

342:                                              ; preds = %332, %326, %298
  %343 = phi i64 [ %330, %332 ], [ %310, %326 ], [ 4, %298 ]
  %344 = load ptr, ptr %183, align 8, !tbaa !59
  %345 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %344, i64 0, i32 1, i32 3
  %346 = load i32, ptr %345, align 4, !tbaa !172
  %347 = icmp eq i32 %346, 2
  br i1 %347, label %348, label %679

348:                                              ; preds = %342
  store i32 1, ptr %345, align 4, !tbaa !172
  br label %679

349:                                              ; preds = %270
  %350 = load i32, ptr %184, align 4, !tbaa !72
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %352, label %644

352:                                              ; preds = %349
  %353 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %201, i64 noundef %229)
  %354 = icmp ult i64 %353, -119
  br i1 %354, label %355, label %720

355:                                              ; preds = %352
  %356 = icmp eq i64 %353, 1
  br i1 %356, label %357, label %378

357:                                              ; preds = %355
  %358 = load ptr, ptr %183, align 8, !tbaa !59
  %359 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %358, i64 0, i32 1, i32 3
  %360 = load i32, ptr %359, align 4, !tbaa !172
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  store i32 1, ptr %359, align 4, !tbaa !172
  br label %363

363:                                              ; preds = %362, %357
  %364 = load i32, ptr %196, align 8, !tbaa !256
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %720

366:                                              ; preds = %363
  %367 = add i64 %229, 3
  %368 = icmp ugt i64 %367, %199
  br i1 %368, label %720, label %369

369:                                              ; preds = %366
  %370 = trunc i64 %229 to i32
  %371 = shl i32 %370, 3
  %372 = or disjoint i32 %371, %231
  %373 = trunc i32 %372 to i16
  store i16 %373, ptr %202, align 1, !tbaa !239
  %374 = lshr i32 %371, 16
  %375 = trunc i32 %374 to i8
  %376 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 %375, ptr %376, align 1, !tbaa !44
  %377 = getelementptr inbounds i8, ptr %202, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %377, ptr align 1 %201, i64 %229, i1 false)
  br label %641

378:                                              ; preds = %355
  %379 = load ptr, ptr %180, align 8, !tbaa !257
  %380 = load ptr, ptr %179, align 8, !tbaa !258
  %381 = ptrtoint ptr %379 to i64
  %382 = ptrtoint ptr %380 to i64
  %383 = sub i64 %381, %382
  %384 = lshr exact i64 %383, 3
  %385 = trunc i64 %384 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #30
  store ptr %185, ptr %8, align 8, !tbaa !259
  store i64 0, ptr %188, align 8, !tbaa !261
  %386 = icmp ult i32 %385, 5
  br i1 %386, label %392, label %387

387:                                              ; preds = %378
  %388 = and i64 %384, 4294967295
  call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull %8, i64 noundef 0, i64 noundef %388, ptr noundef nonnull %0, ptr noundef nonnull %179)
  %389 = load ptr, ptr %8, align 8, !tbaa !259
  %390 = load i64, ptr %188, align 8, !tbaa !261
  %391 = getelementptr inbounds i32, ptr %389, i64 %390
  store i32 %385, ptr %391, align 4, !tbaa !45
  br label %392

392:                                              ; preds = %387, %378
  %393 = phi i64 [ %390, %387 ], [ 0, %378 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #30
  %394 = load ptr, ptr %183, align 8, !tbaa !59
  %395 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %394, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %395, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %395, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %186, i8 0, i64 80, i1 false)
  %396 = icmp eq i64 %393, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %179, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %202, i64 noundef %199, ptr noundef %201, i64 noundef %229, i32 noundef %231, i32 noundef 0)
  br label %639

399:                                              ; preds = %392
  %400 = load i32, ptr %185, align 4, !tbaa !45
  %401 = zext i32 %400 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %187, ptr noundef nonnull align 8 dereferenceable(80) %179, i64 80, i1 false), !tbaa.struct !262
  %402 = load i32, ptr %189, align 8, !tbaa !201
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %399
  %405 = load i32, ptr %190, align 4, !tbaa !202
  %406 = icmp ugt i32 %405, %400
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store i32 0, ptr %191, align 8, !tbaa !201
  br label %408

408:                                              ; preds = %407, %404, %399
  %409 = load ptr, ptr %179, align 8, !tbaa !190
  store ptr %409, ptr %187, align 8, !tbaa !190
  %410 = getelementptr inbounds %struct.SeqDef_s, ptr %409, i64 %401
  store ptr %410, ptr %192, align 8, !tbaa !194
  %411 = load ptr, ptr %180, align 8, !tbaa !194
  %412 = ptrtoint ptr %411 to i64
  %413 = ptrtoint ptr %409 to i64
  %414 = sub i64 %412, %413
  %415 = ashr exact i64 %414, 3
  %416 = icmp eq i64 %415, %401
  br i1 %416, label %478, label %417

417:                                              ; preds = %408
  %418 = icmp eq i32 %400, 0
  br i1 %418, label %474, label %419

419:                                              ; preds = %417
  %420 = load i32, ptr %193, align 4, !tbaa !202
  %421 = zext i32 %420 to i64
  %422 = and i64 %401, 1
  %423 = icmp eq i32 %400, 1
  br i1 %423, label %458, label %424

424:                                              ; preds = %419
  %425 = and i64 %401, 4294967294
  br label %426

426:                                              ; preds = %453, %424
  %427 = phi i64 [ 0, %424 ], [ %454, %453 ]
  %428 = phi i64 [ 0, %424 ], [ %455, %453 ]
  %429 = phi i64 [ 0, %424 ], [ %456, %453 ]
  %430 = getelementptr inbounds %struct.SeqDef_s, ptr %409, i64 %428, i32 1
  %431 = load i16, ptr %430, align 4, !tbaa.struct !263
  %432 = zext i16 %431 to i64
  %433 = add i64 %427, %432
  %434 = icmp eq i64 %428, %421
  br i1 %434, label %435, label %440

435:                                              ; preds = %426
  %436 = load i32, ptr %191, align 8, !tbaa !201
  %437 = icmp eq i32 %436, 1
  %438 = add i64 %433, 65536
  %439 = select i1 %437, i64 %438, i64 %433
  br label %440

440:                                              ; preds = %435, %426
  %441 = phi i64 [ %433, %426 ], [ %439, %435 ]
  %442 = or disjoint i64 %428, 1
  %443 = getelementptr inbounds %struct.SeqDef_s, ptr %409, i64 %442, i32 1
  %444 = load i16, ptr %443, align 4, !tbaa.struct !263
  %445 = zext i16 %444 to i64
  %446 = add i64 %441, %445
  %447 = icmp eq i64 %442, %421
  br i1 %447, label %448, label %453

448:                                              ; preds = %440
  %449 = load i32, ptr %191, align 8, !tbaa !201
  %450 = icmp eq i32 %449, 1
  %451 = add i64 %446, 65536
  %452 = select i1 %450, i64 %451, i64 %446
  br label %453

453:                                              ; preds = %448, %440
  %454 = phi i64 [ %446, %440 ], [ %452, %448 ]
  %455 = add nuw nsw i64 %428, 2
  %456 = add i64 %429, 2
  %457 = icmp eq i64 %456, %425
  br i1 %457, label %458, label %426, !llvm.loop !264

458:                                              ; preds = %453, %419
  %459 = phi i64 [ undef, %419 ], [ %454, %453 ]
  %460 = phi i64 [ 0, %419 ], [ %454, %453 ]
  %461 = phi i64 [ 0, %419 ], [ %455, %453 ]
  %462 = icmp eq i64 %422, 0
  br i1 %462, label %474, label %463

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.SeqDef_s, ptr %409, i64 %461, i32 1
  %465 = load i16, ptr %464, align 4, !tbaa.struct !263
  %466 = zext i16 %465 to i64
  %467 = add i64 %460, %466
  %468 = icmp eq i64 %461, %421
  br i1 %468, label %469, label %474

469:                                              ; preds = %463
  %470 = load i32, ptr %191, align 8, !tbaa !201
  %471 = icmp eq i32 %470, 1
  %472 = add i64 %467, 65536
  %473 = select i1 %471, i64 %472, i64 %467
  br label %474

474:                                              ; preds = %458, %469, %463, %417
  %475 = phi i64 [ 0, %417 ], [ %459, %458 ], [ %467, %463 ], [ %473, %469 ]
  %476 = load ptr, ptr %194, align 8, !tbaa !203
  %477 = getelementptr inbounds i8, ptr %476, i64 %475
  store ptr %477, ptr %195, align 8, !tbaa !204
  br label %478

478:                                              ; preds = %474, %408
  br label %479

479:                                              ; preds = %478, %629
  %480 = phi i64 [ %632, %629 ], [ %199, %478 ]
  %481 = phi i64 [ %633, %629 ], [ 0, %478 ]
  %482 = phi ptr [ %630, %629 ], [ %201, %478 ]
  %483 = phi ptr [ %631, %629 ], [ %202, %478 ]
  %484 = phi i64 [ %634, %629 ], [ 0, %478 ]
  %485 = phi i64 [ %613, %629 ], [ 0, %478 ]
  %486 = icmp eq i64 %484, %393
  %487 = load ptr, ptr %192, align 8, !tbaa !194
  %488 = load ptr, ptr %187, align 8, !tbaa !190
  %489 = icmp eq ptr %487, %488
  br i1 %489, label %611, label %490

490:                                              ; preds = %479
  %491 = ptrtoint ptr %487 to i64
  %492 = ptrtoint ptr %488 to i64
  %493 = sub i64 %491, %492
  %494 = ashr exact i64 %493, 3
  %495 = load i32, ptr %193, align 4, !tbaa !202
  %496 = zext i32 %495 to i64
  %497 = tail call i64 @llvm.umax.i64(i64 %494, i64 1)
  %498 = add i64 %497, -1
  %499 = and i64 %497, 1
  %500 = icmp eq i64 %498, 0
  br i1 %500, label %535, label %501

501:                                              ; preds = %490
  %502 = and i64 %497, -2
  br label %503

503:                                              ; preds = %530, %501
  %504 = phi i64 [ 0, %501 ], [ %531, %530 ]
  %505 = phi i64 [ 0, %501 ], [ %532, %530 ]
  %506 = phi i64 [ 0, %501 ], [ %533, %530 ]
  %507 = getelementptr inbounds %struct.SeqDef_s, ptr %488, i64 %505, i32 1
  %508 = load i16, ptr %507, align 4, !tbaa.struct !263
  %509 = zext i16 %508 to i64
  %510 = add i64 %504, %509
  %511 = icmp eq i64 %505, %496
  br i1 %511, label %512, label %517

512:                                              ; preds = %503
  %513 = load i32, ptr %191, align 8, !tbaa !201
  %514 = icmp eq i32 %513, 1
  %515 = add i64 %510, 65536
  %516 = select i1 %514, i64 %515, i64 %510
  br label %517

517:                                              ; preds = %512, %503
  %518 = phi i64 [ %510, %503 ], [ %516, %512 ]
  %519 = or disjoint i64 %505, 1
  %520 = getelementptr inbounds %struct.SeqDef_s, ptr %488, i64 %519, i32 1
  %521 = load i16, ptr %520, align 4, !tbaa.struct !263
  %522 = zext i16 %521 to i64
  %523 = add i64 %518, %522
  %524 = icmp eq i64 %519, %496
  br i1 %524, label %525, label %530

525:                                              ; preds = %517
  %526 = load i32, ptr %191, align 8, !tbaa !201
  %527 = icmp eq i32 %526, 1
  %528 = add i64 %523, 65536
  %529 = select i1 %527, i64 %528, i64 %523
  br label %530

530:                                              ; preds = %525, %517
  %531 = phi i64 [ %523, %517 ], [ %529, %525 ]
  %532 = add nuw i64 %505, 2
  %533 = add i64 %506, 2
  %534 = icmp eq i64 %533, %502
  br i1 %534, label %535, label %503, !llvm.loop !264

535:                                              ; preds = %530, %490
  %536 = phi i64 [ undef, %490 ], [ %531, %530 ]
  %537 = phi i64 [ 0, %490 ], [ %531, %530 ]
  %538 = phi i64 [ 0, %490 ], [ %532, %530 ]
  %539 = icmp eq i64 %499, 0
  br i1 %539, label %551, label %540

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.SeqDef_s, ptr %488, i64 %538, i32 1
  %542 = load i16, ptr %541, align 4, !tbaa.struct !263
  %543 = zext i16 %542 to i64
  %544 = add i64 %537, %543
  %545 = icmp eq i64 %538, %496
  br i1 %545, label %546, label %551

546:                                              ; preds = %540
  %547 = load i32, ptr %191, align 8, !tbaa !201
  %548 = icmp eq i32 %547, 1
  %549 = add i64 %544, 65536
  %550 = select i1 %548, i64 %549, i64 %544
  br label %551

551:                                              ; preds = %540, %546, %535
  %552 = phi i64 [ %536, %535 ], [ %544, %540 ], [ %550, %546 ]
  %553 = and i64 %497, 1
  %554 = icmp eq i64 %498, 0
  br i1 %554, label %591, label %555

555:                                              ; preds = %551
  %556 = and i64 %497, -2
  br label %557

557:                                              ; preds = %586, %555
  %558 = phi i64 [ 0, %555 ], [ %587, %586 ]
  %559 = phi i64 [ 0, %555 ], [ %588, %586 ]
  %560 = phi i64 [ 0, %555 ], [ %589, %586 ]
  %561 = getelementptr inbounds %struct.SeqDef_s, ptr %488, i64 %559, i32 2
  %562 = load i16, ptr %561, align 2, !tbaa.struct !265
  %563 = zext i16 %562 to i64
  %564 = add i64 %558, 3
  %565 = add i64 %564, %563
  %566 = icmp eq i64 %559, %496
  br i1 %566, label %567, label %572

567:                                              ; preds = %557
  %568 = load i32, ptr %191, align 8, !tbaa !201
  %569 = icmp eq i32 %568, 2
  %570 = add i64 %565, 65536
  %571 = select i1 %569, i64 %570, i64 %565
  br label %572

572:                                              ; preds = %567, %557
  %573 = phi i64 [ %565, %557 ], [ %571, %567 ]
  %574 = or disjoint i64 %559, 1
  %575 = getelementptr inbounds %struct.SeqDef_s, ptr %488, i64 %574, i32 2
  %576 = load i16, ptr %575, align 2, !tbaa.struct !265
  %577 = zext i16 %576 to i64
  %578 = add i64 %573, 3
  %579 = add i64 %578, %577
  %580 = icmp eq i64 %574, %496
  br i1 %580, label %581, label %586

581:                                              ; preds = %572
  %582 = load i32, ptr %191, align 8, !tbaa !201
  %583 = icmp eq i32 %582, 2
  %584 = add i64 %579, 65536
  %585 = select i1 %583, i64 %584, i64 %579
  br label %586

586:                                              ; preds = %581, %572
  %587 = phi i64 [ %579, %572 ], [ %585, %581 ]
  %588 = add nuw i64 %559, 2
  %589 = add i64 %560, 2
  %590 = icmp eq i64 %589, %556
  br i1 %590, label %591, label %557, !llvm.loop !266

591:                                              ; preds = %586, %551
  %592 = phi i64 [ undef, %551 ], [ %587, %586 ]
  %593 = phi i64 [ 0, %551 ], [ %587, %586 ]
  %594 = phi i64 [ 0, %551 ], [ %588, %586 ]
  %595 = icmp eq i64 %553, 0
  br i1 %595, label %608, label %596

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.SeqDef_s, ptr %488, i64 %594, i32 2
  %598 = load i16, ptr %597, align 2, !tbaa.struct !265
  %599 = zext i16 %598 to i64
  %600 = add i64 %593, 3
  %601 = add i64 %600, %599
  %602 = icmp eq i64 %594, %496
  br i1 %602, label %603, label %608

603:                                              ; preds = %596
  %604 = load i32, ptr %191, align 8, !tbaa !201
  %605 = icmp eq i32 %604, 2
  %606 = add i64 %601, 65536
  %607 = select i1 %605, i64 %606, i64 %601
  br label %608

608:                                              ; preds = %596, %603, %591
  %609 = phi i64 [ %592, %591 ], [ %601, %596 ], [ %607, %603 ]
  %610 = add i64 %609, %552
  br label %611

611:                                              ; preds = %608, %479
  %612 = phi i64 [ 0, %479 ], [ %610, %608 ]
  %613 = add i64 %612, %485
  br i1 %486, label %614, label %617

614:                                              ; preds = %611
  %615 = add i64 %612, %229
  %616 = sub i64 %615, %613
  br label %624

617:                                              ; preds = %611
  %618 = getelementptr inbounds i32, ptr %185, i64 %484
  %619 = load i32, ptr %618, align 4, !tbaa !45
  %620 = zext i32 %619 to i64
  %621 = getelementptr i32, ptr %618, i64 1
  %622 = load i32, ptr %621, align 4, !tbaa !45
  %623 = zext i32 %622 to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %186, ptr noundef nonnull %179, i64 noundef %620, i64 noundef %623)
  br label %624

624:                                              ; preds = %617, %614
  %625 = phi i32 [ %231, %614 ], [ 0, %617 ]
  %626 = phi i64 [ %616, %614 ], [ %612, %617 ]
  %627 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef %0, ptr noundef nonnull %187, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %483, i64 noundef %480, ptr noundef %482, i64 noundef %626, i32 noundef %625, i32 noundef 1)
  %628 = icmp ult i64 %627, -119
  br i1 %628, label %629, label %639

629:                                              ; preds = %624
  %630 = getelementptr inbounds i8, ptr %482, i64 %626
  %631 = getelementptr inbounds i8, ptr %483, i64 %627
  %632 = sub i64 %480, %627
  %633 = add i64 %627, %481
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %187, ptr noundef nonnull align 8 dereferenceable(80) %186, i64 80, i1 false), !tbaa.struct !262
  %634 = add i64 %484, 1
  %635 = icmp ugt i64 %634, %393
  br i1 %635, label %636, label %479, !llvm.loop !267

636:                                              ; preds = %629
  %637 = load ptr, ptr %183, align 8, !tbaa !59
  %638 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %637, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %638, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  br label %639

639:                                              ; preds = %624, %636, %397
  %640 = phi i64 [ %398, %397 ], [ %633, %636 ], [ %627, %624 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #30
  br label %641

641:                                              ; preds = %639, %369
  %642 = phi i64 [ %640, %639 ], [ %367, %369 ]
  %643 = icmp ult i64 %642, -119
  br i1 %643, label %679, label %720

644:                                              ; preds = %349
  %645 = getelementptr inbounds i8, ptr %202, i64 3
  %646 = add i64 %199, -3
  %647 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %645, i64 noundef %646, ptr noundef %201, i64 noundef %229, i32 noundef 1)
  %648 = icmp ult i64 %647, -119
  br i1 %648, label %649, label %720

649:                                              ; preds = %644
  switch i64 %647, label %665 [
    i64 0, label %650
    i64 1, label %662
  ]

650:                                              ; preds = %649
  %651 = add i64 %229, 3
  %652 = icmp ugt i64 %651, %199
  br i1 %652, label %720, label %653

653:                                              ; preds = %650
  %654 = trunc i64 %229 to i32
  %655 = shl i32 %654, 3
  %656 = or disjoint i32 %655, %231
  %657 = trunc i32 %656 to i16
  store i16 %657, ptr %202, align 1, !tbaa !239
  %658 = lshr i32 %655, 16
  %659 = trunc i32 %658 to i8
  %660 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 %659, ptr %660, align 1, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %645, ptr align 1 %201, i64 %229, i1 false)
  %661 = icmp ult i64 %651, -119
  br i1 %661, label %679, label %720

662:                                              ; preds = %649
  %663 = trunc i64 %229 to i32
  %664 = shl i32 %663, 3
  br label %668

665:                                              ; preds = %649
  %666 = trunc i64 %647 to i32
  %667 = shl i32 %666, 3
  br label %668

668:                                              ; preds = %665, %662
  %669 = phi i32 [ %231, %665 ], [ %664, %662 ]
  %670 = phi i32 [ %667, %665 ], [ %231, %662 ]
  %671 = phi i32 [ 4, %665 ], [ 2, %662 ]
  %672 = or disjoint i32 %670, %669
  %673 = or disjoint i32 %672, %671
  %674 = trunc i32 %673 to i16
  store i16 %674, ptr %202, align 1, !tbaa !239
  %675 = lshr i32 %672, 16
  %676 = trunc i32 %675 to i8
  %677 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 %676, ptr %677, align 1, !tbaa !44
  %678 = add nuw i64 %647, 3
  br label %679

679:                                              ; preds = %668, %653, %641, %348, %342
  %680 = phi i64 [ %642, %641 ], [ %651, %653 ], [ %678, %668 ], [ %343, %342 ], [ %343, %348 ]
  %681 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %229, i64 %680), !nosanitize !145
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !145
  br i1 %682, label %155, label %683, !nosanitize !145

683:                                              ; preds = %679
  %684 = extractvalue { i64, i1 } %681, 0, !nosanitize !145
  %685 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %203, i64 %684), !nosanitize !145
  %686 = extractvalue { i64, i1 } %685, 1, !nosanitize !145
  br i1 %686, label %687, label %688, !nosanitize !145

687:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !145
  unreachable, !nosanitize !145

688:                                              ; preds = %683
  %689 = sub i64 %200, %229
  %690 = getelementptr inbounds i8, ptr %202, i64 %680
  %691 = sub i64 %199, %680
  store i32 0, ptr %178, align 8, !tbaa !255
  %692 = icmp eq i64 %689, 0
  br i1 %692, label %693, label %197, !llvm.loop !268

693:                                              ; preds = %688
  %694 = icmp ne i32 %6, 0
  %695 = icmp ugt ptr %690, %33
  %696 = select i1 %694, i1 %695, i1 false
  br i1 %696, label %697, label %698

697:                                              ; preds = %693
  store i32 3, ptr %0, align 8, !tbaa !175
  br label %698

698:                                              ; preds = %697, %693
  %699 = ptrtoint ptr %690 to i64
  %700 = ptrtoint ptr %33 to i64
  %701 = sub i64 %699, %700
  br label %702

702:                                              ; preds = %698, %140
  %703 = phi i64 [ %142, %140 ], [ %701, %698 ]
  %704 = icmp ult i64 %703, -119
  br i1 %704, label %705, label %720

705:                                              ; preds = %702
  %706 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 11
  %707 = load i64, ptr %706, align 8, !tbaa !158
  %708 = add i64 %707, %4
  store i64 %708, ptr %706, align 8, !tbaa !158
  %709 = add i64 %703, %31
  %710 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 12
  %711 = load i64, ptr %710, align 8, !tbaa !162
  %712 = add i64 %711, %709
  store i64 %712, ptr %710, align 8, !tbaa !162
  %713 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %714 = load i64, ptr %713, align 8, !tbaa !111
  %715 = icmp ne i64 %714, 0
  %716 = add i64 %708, 1
  %717 = icmp ugt i64 %716, %714
  %718 = select i1 %715, i1 %717, i1 false
  %719 = select i1 %718, i64 -72, i64 %709
  br label %720

720:                                              ; preds = %644, %653, %641, %228, %650, %312, %329, %273, %332, %366, %352, %363, %705, %702, %30, %7, %18
  %721 = phi i64 [ %25, %18 ], [ -60, %7 ], [ %31, %30 ], [ %703, %702 ], [ %719, %705 ], [ -106, %363 ], [ %353, %352 ], [ -70, %366 ], [ %330, %332 ], [ %274, %273 ], [ -70, %329 ], [ %310, %312 ], [ -70, %650 ], [ -70, %228 ], [ %642, %641 ], [ %651, %653 ], [ %647, %644 ]
  ret i64 %721
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_getBlockSize(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr i8, ptr %0, i64 244
  %3 = load i32, ptr %2, align 4, !tbaa.struct !70
  %4 = getelementptr i8, ptr %0, i64 392
  %5 = load i64, ptr %4, align 8, !tbaa !179
  %6 = zext nneg i32 %3 to i64
  %7 = shl nuw i64 1, %6
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %5)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa.struct !70
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !179
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call i64 @llvm.umin.i64(i64 %11, i64 %9)
  %13 = icmp ult i64 %12, %4
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i64 [ -72, %5 ], [ %15, %14 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr i8, ptr %0, i64 244
  %7 = load i32, ptr %6, align 4, !tbaa.struct !70
  %8 = getelementptr i8, ptr %0, i64 392
  %9 = load i64, ptr %8, align 8, !tbaa !179
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw i64 1, %10
  %12 = tail call i64 @llvm.umin.i64(i64 %11, i64 %9)
  %13 = icmp ult i64 %12, %4
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi i64 [ -72, %5 ], [ %15, %14 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadCEntropy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
  store i32 31, ptr %6, align 4, !tbaa !45
  %16 = getelementptr inbounds i8, ptr %2, i64 %3
  %17 = getelementptr inbounds i8, ptr %2, i64 8
  %18 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i64 0, i32 1
  store i32 1, ptr %18, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #30
  store i32 255, ptr %7, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #30
  store i32 1, ptr %8, align 4, !tbaa !45
  %19 = ptrtoint ptr %16 to i64
  %20 = add nsw i64 %3, -8
  %21 = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef %20, ptr noundef nonnull %8) #30
  %22 = load i32, ptr %8, align 4, !tbaa !45
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 255
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 2, ptr %18, align 8, !tbaa !167
  br label %28

28:                                               ; preds = %4, %27
  %29 = icmp ult i64 %21, -119
  %30 = getelementptr inbounds i8, ptr %17, i64 %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #30
  br i1 %29, label %31, label %173

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #30
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %19, %32
  %34 = call i64 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %30, i64 noundef %33) #30
  %35 = icmp ult i64 %34, -119
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, ptr %9, align 4, !tbaa !45
  %38 = icmp ugt i32 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  br label %173

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1
  %42 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %41, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %37, ptr noundef %1, i64 noundef 8704) #30
  %43 = icmp ult i64 %42, -119
  %44 = getelementptr inbounds i8, ptr %30, i64 %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #30
  br i1 %43, label %45, label %173

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #30
  store i32 52, ptr %11, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #30
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %19, %46
  %48 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %44, i64 noundef %47) #30
  %49 = icmp ult i64 %48, -119
  br i1 %49, label %50, label %92

50:                                               ; preds = %45
  %51 = load i32, ptr %12, align 4, !tbaa !45
  %52 = icmp ugt i32 %51, 9
  br i1 %52, label %92, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 1
  %55 = load i32, ptr %11, align 4, !tbaa !45
  %56 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %54, ptr noundef nonnull %10, i32 noundef %55, i32 noundef %51, ptr noundef %1, i64 noundef 8704) #30
  %57 = icmp ult i64 %56, -119
  br i1 %57, label %58, label %92

58:                                               ; preds = %53
  %59 = load i32, ptr %11, align 4, !tbaa !45
  %60 = icmp ult i32 %59, 52
  %61 = load <32 x i16>, ptr %10, align 16
  %62 = freeze <32 x i16> %61
  %63 = icmp eq <32 x i16> %62, zeroinitializer
  %64 = getelementptr inbounds i16, ptr %10, i64 32
  %65 = load <16 x i16>, ptr %64, align 16
  %66 = freeze <16 x i16> %65
  %67 = icmp eq <16 x i16> %66, zeroinitializer
  %68 = getelementptr inbounds i16, ptr %10, i64 48
  %69 = load <4 x i16>, ptr %68, align 16
  %70 = freeze <4 x i16> %69
  %71 = icmp eq <4 x i16> %70, zeroinitializer
  %72 = getelementptr inbounds i16, ptr %10, i64 52
  %73 = load i16, ptr %72, align 8
  %74 = icmp eq i16 %73, 0
  %75 = bitcast <32 x i1> %63 to i32
  %76 = icmp ne i32 %75, 0
  %77 = bitcast <16 x i1> %67 to i16
  %78 = icmp ne i16 %77, 0
  %79 = or i1 %76, %78
  %80 = bitcast <4 x i1> %71 to i4
  %81 = icmp ne i4 %80, 0
  %82 = or i1 %79, %81
  %83 = or i1 %60, %82
  %84 = select i1 %83, i1 true, i1 %74
  %85 = select i1 %84, i32 1, i32 2
  %86 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 4
  store i32 %85, ptr %86, align 8, !tbaa !173
  %87 = getelementptr inbounds i8, ptr %44, i64 %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #30
  store i32 35, ptr %14, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #30
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %19, %88
  %90 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %87, i64 noundef %89) #30
  %91 = icmp ult i64 %90, -119
  br i1 %91, label %93, label %122

92:                                               ; preds = %45, %50, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #30
  br label %173

93:                                               ; preds = %58
  %94 = load i32, ptr %15, align 4, !tbaa !45
  %95 = icmp ugt i32 %94, 9
  br i1 %95, label %122, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 2
  %98 = load i32, ptr %14, align 4, !tbaa !45
  %99 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %97, ptr noundef nonnull %13, i32 noundef %98, i32 noundef %94, ptr noundef %1, i64 noundef 8704) #30
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = load i32, ptr %14, align 4, !tbaa !45
  %103 = icmp ult i32 %102, 35
  %104 = load <32 x i16>, ptr %13, align 16
  %105 = freeze <32 x i16> %104
  %106 = icmp eq <32 x i16> %105, zeroinitializer
  %107 = getelementptr inbounds i16, ptr %13, i64 32
  %108 = load <4 x i16>, ptr %107, align 16
  %109 = freeze <4 x i16> %108
  %110 = icmp eq <4 x i16> %109, zeroinitializer
  %111 = bitcast <32 x i1> %106 to i32
  %112 = icmp ne i32 %111, 0
  %113 = bitcast <4 x i1> %110 to i4
  %114 = icmp ne i4 %113, 0
  %115 = or i1 %112, %114
  %116 = or i1 %103, %115
  %117 = select i1 %116, i32 1, i32 2
  %118 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 5
  store i32 %117, ptr %118, align 4, !tbaa !174
  %119 = getelementptr inbounds i8, ptr %87, i64 %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #30
  %120 = getelementptr inbounds i8, ptr %119, i64 12
  %121 = icmp ugt ptr %120, %16
  br i1 %121, label %173, label %123

122:                                              ; preds = %58, %93, %96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #30
  br label %173

123:                                              ; preds = %101
  %124 = load i32, ptr %119, align 1, !tbaa !45
  %125 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %0, i64 0, i32 1
  store i32 %124, ptr %125, align 8, !tbaa !45
  %126 = getelementptr inbounds i8, ptr %119, i64 4
  %127 = load i32, ptr %126, align 1, !tbaa !45
  %128 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %0, i64 0, i32 1, i64 1
  store i32 %127, ptr %128, align 4, !tbaa !45
  %129 = getelementptr inbounds i8, ptr %119, i64 8
  %130 = load i32, ptr %129, align 1, !tbaa !45
  %131 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %0, i64 0, i32 1, i64 2
  store i32 %130, ptr %131, align 8, !tbaa !45
  %132 = ptrtoint ptr %120 to i64
  %133 = sub i64 %19, %132
  %134 = icmp ult i64 %133, 4294836224
  %135 = trunc i64 %133 to i32
  %136 = add nuw i32 %135, 131072
  %137 = call i32 @llvm.ctlz.i32(i32 %136, i1 true), !range !123
  %138 = xor i32 %137, 31
  %139 = select i1 %134, i32 %138, i32 31
  %140 = load i32, ptr %6, align 4, !tbaa !45
  %141 = icmp ult i32 %140, %139
  br i1 %141, label %153, label %142

142:                                              ; preds = %123
  %143 = add nuw nsw i32 %139, 1
  %144 = zext nneg i32 %143 to i64
  br label %148

145:                                              ; preds = %148
  %146 = add nuw nsw i64 %149, 1
  %147 = icmp eq i64 %146, %144
  br i1 %147, label %153, label %148, !llvm.loop !269

148:                                              ; preds = %145, %142
  %149 = phi i64 [ 0, %142 ], [ %146, %145 ]
  %150 = getelementptr inbounds i16, ptr %5, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !239
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %145

153:                                              ; preds = %145, %148, %123
  %154 = phi i32 [ 1, %123 ], [ 1, %148 ], [ 2, %145 ]
  %155 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 3
  store i32 %154, ptr %155, align 4, !tbaa !172
  %156 = icmp eq i32 %124, 0
  %157 = zext i32 %124 to i64
  %158 = icmp ult i64 %133, %157
  %159 = or i1 %156, %158
  br i1 %159, label %173, label %160

160:                                              ; preds = %153
  %161 = icmp eq i32 %127, 0
  %162 = zext i32 %127 to i64
  %163 = icmp ult i64 %133, %162
  %164 = or i1 %161, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = icmp eq i32 %130, 0
  %167 = zext i32 %130 to i64
  %168 = icmp ult i64 %133, %167
  %169 = or i1 %166, %168
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = ptrtoint ptr %2 to i64
  %172 = sub i64 %132, %171
  br label %173

173:                                              ; preds = %153, %160, %165, %122, %92, %39, %101, %40, %28, %170
  %174 = phi i64 [ %172, %170 ], [ -30, %40 ], [ -30, %28 ], [ -30, %101 ], [ -30, %39 ], [ -30, %92 ], [ -30, %122 ], [ -30, %165 ], [ -30, %160 ], [ -30, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #30
  ret i64 %174
}

declare i64 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, i64 noundef %7) local_unnamed_addr #2 {
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1
  %10 = load <4 x i32>, ptr %9, align 4
  %11 = freeze <4 x i32> %10
  %12 = add <4 x i32> %11, <i32 -32, i32 -31, i32 -31, i32 -31>
  %13 = icmp ult <4 x i32> %12, <i32 -22, i32 -25, i32 -25, i32 -30>
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp eq i4 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa.struct !53
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa.struct !127
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa.struct !52
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
define internal fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, i64 noundef %7, i32 noundef %8) unnamed_addr #2 {
  %10 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %11 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %12 = icmp eq ptr %5, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !270
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ]
  br i1 icmp ne (ptr @ZSTD_trace_compress_begin, ptr null), label %18, label %20

18:                                               ; preds = %16
  %19 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i64 [ %19, %18 ], [ 0, %16 ]
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  store i64 %21, ptr %22, align 8, !tbaa !272
  br i1 %12, label %440, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !270
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %437, label %27

27:                                               ; preds = %23
  %28 = icmp ult i64 %7, 131072
  br i1 %28, label %38, label %29

29:                                               ; preds = %27
  %30 = mul i64 %25, 6
  %31 = icmp ugt i64 %30, %7
  %32 = icmp eq i64 %7, -1
  %33 = or i1 %32, %31
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 9
  %36 = load i32, ptr %35, align 4, !tbaa !273
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %437

38:                                               ; preds = %34, %29, %27
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !89
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %437, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 13
  %44 = load i32, ptr %43, align 4, !tbaa !274
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 6
  %47 = load i32, ptr %46, align 8
  br i1 %45, label %48, label %63

48:                                               ; preds = %42
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds [10 x i64], ptr @attachDictSizeCutoffs, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !110
  %52 = icmp uge i64 %51, %7
  %53 = icmp eq i64 %7, -1
  %54 = or i1 %53, %52
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = icmp eq i32 %40, 1
  br i1 %56, label %59, label %166

57:                                               ; preds = %48
  %58 = icmp eq i32 %40, 2
  br i1 %58, label %166, label %59

59:                                               ; preds = %57, %55
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !88
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %166

63:                                               ; preds = %59, %42
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 1 dereferenceable(224) %6, i64 224, i1 false)
  %64 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5
  %65 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16
  %66 = load i32, ptr %65, align 8, !tbaa.struct !70
  %67 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa.struct !124
  %69 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa.struct !125
  %71 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa.struct !126
  %73 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 4
  %74 = load i64, ptr %73, align 4
  %75 = icmp ne i32 %44, 0
  %76 = add i32 %47, -3
  %77 = icmp ult i32 %76, 3
  %78 = select i1 %75, i1 %77, i1 false
  %79 = add i32 %70, -2
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 6)
  %81 = select i1 %78, i32 %80, i32 %70
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i64 0, i32 22
  %83 = load i32, ptr %82, align 8, !tbaa !71
  %84 = icmp ult i64 %7, 1073741825
  br i1 %84, label %85, label %93

85:                                               ; preds = %63
  %86 = trunc i64 %7 to i32
  %87 = icmp ult i32 %86, 64
  %88 = add nsw i32 %86, -1
  %89 = tail call i32 @llvm.ctlz.i32(i32 %88, i1 true), !range !123
  %90 = sub nuw nsw i32 32, %89
  %91 = select i1 %87, i32 6, i32 %90
  %92 = tail call i32 @llvm.umin.i32(i32 %66, i32 %91)
  br label %95

93:                                               ; preds = %63
  %94 = icmp eq i64 %7, -1
  br i1 %94, label %106, label %95

95:                                               ; preds = %93, %85
  %96 = phi i32 [ %66, %93 ], [ %92, %85 ]
  %97 = icmp ugt i32 %47, 5
  %98 = sext i1 %97 to i32
  %99 = add i32 %68, %98
  %100 = add i32 %96, 1
  %101 = tail call i32 @llvm.umin.i32(i32 %81, i32 %100)
  %102 = icmp ugt i32 %99, %96
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = zext i1 %97 to i32
  %105 = add nuw i32 %96, %104
  br label %106

106:                                              ; preds = %103, %95, %93
  %107 = phi i32 [ %105, %103 ], [ %68, %95 ], [ %68, %93 ]
  %108 = phi i32 [ %101, %103 ], [ %101, %95 ], [ %81, %93 ]
  %109 = add i32 %47, -6
  %110 = icmp ult i32 %109, -3
  %111 = icmp ugt i32 %83, 1
  %112 = or i1 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = tail call i32 @llvm.umin.i32(i32 %72, i32 6)
  %115 = tail call i32 @llvm.umax.i32(i32 %114, i32 4)
  %116 = or disjoint i32 %115, 24
  %117 = tail call i32 @llvm.umin.i32(i32 %108, i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  %119 = phi i32 [ %108, %106 ], [ %117, %113 ]
  %120 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i64 0, i32 1, i32 1
  store i32 %107, ptr %120, align 8, !tbaa.struct !124
  %121 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i64 0, i32 1, i32 2
  store i32 %119, ptr %121, align 4, !tbaa.struct !125
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i64 0, i32 1, i32 3
  store i32 %72, ptr %122, align 8, !tbaa.struct !126
  %123 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i64 0, i32 1, i32 4
  store i64 %74, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i64 0, i32 1, i32 6
  store i32 %47, ptr %124, align 4, !tbaa.struct !53
  %125 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 10
  %126 = load i32, ptr %125, align 8, !tbaa !275
  store i32 %126, ptr %82, align 8, !tbaa !71
  %127 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef %7, i64 noundef 0, i32 noundef 0, i32 noundef %8)
  %128 = icmp ult i64 %127, -119
  br i1 %128, label %129, label %164

129:                                              ; preds = %118
  %130 = load ptr, ptr %64, align 8, !tbaa !276
  %131 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !277
  %133 = ptrtoint ptr %130 to i64
  %134 = ptrtoint ptr %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !278
  %139 = icmp eq i32 %138, %136
  br i1 %139, label %155, label %140

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 15
  store ptr %64, ptr %141, align 8, !tbaa !279
  %142 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 3
  %143 = load i32, ptr %142, align 8, !tbaa !280
  %144 = icmp ult i32 %143, %136
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %147 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !248
  %149 = and i64 %135, 4294967295
  %150 = getelementptr inbounds i8, ptr %148, i64 %149
  store ptr %150, ptr %146, align 8, !tbaa !281
  %151 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 4
  store i32 %136, ptr %151, align 4, !tbaa !246
  store i32 %136, ptr %142, align 8, !tbaa !247
  br label %152

152:                                              ; preds = %145, %140
  %153 = phi i32 [ %136, %145 ], [ %143, %140 ]
  %154 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 1
  store i32 %153, ptr %154, align 8, !tbaa !282
  br label %155

155:                                              ; preds = %152, %129
  %156 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 8
  %157 = load i32, ptr %156, align 8, !tbaa !283
  %158 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %157, ptr %158, align 8, !tbaa !188
  %159 = load i64, ptr %24, align 8, !tbaa !270
  %160 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %159, ptr %160, align 8, !tbaa !189
  %161 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %162 = load ptr, ptr %161, align 8, !tbaa !59
  %163 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %162, ptr noundef nonnull align 8 dereferenceable(5632) %163, i64 5632, i1 false)
  br label %164

164:                                              ; preds = %155, %118
  %165 = phi i64 [ %127, %118 ], [ 0, %155 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %11)
  br label %476

166:                                              ; preds = %59, %57, %55
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull align 1 dereferenceable(224) %6, i64 224, i1 false)
  %167 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5
  %168 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16
  %169 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %169, ptr noundef nonnull align 4 dereferenceable(28) %168, i64 28, i1 false), !tbaa.struct !70
  store i32 %170, ptr %169, align 4, !tbaa !79
  %171 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 10
  %172 = load i32, ptr %171, align 8, !tbaa !275
  %173 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i64 0, i32 22
  store i32 %172, ptr %173, align 8, !tbaa !71
  %174 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull %10, i64 noundef %7, i64 noundef 0, i32 noundef 1, i32 noundef %8)
  %175 = icmp ult i64 %174, -119
  br i1 %175, label %176, label %435

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !56
  %179 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %178, ptr %179, align 8, !tbaa !58
  %180 = load i32, ptr %46, align 4, !tbaa !69
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !66
  %185 = zext nneg i32 %184 to i64
  %186 = shl nuw i64 1, %185
  %187 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %188 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %189 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 9
  %190 = load ptr, ptr %189, align 8, !tbaa !184
  %191 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 9
  %192 = load ptr, ptr %191, align 8, !tbaa !284
  br label %226

193:                                              ; preds = %176
  %194 = load i32, ptr %171, align 8, !tbaa !275
  %195 = add i32 %180, -3
  %196 = icmp ult i32 %195, 3
  %197 = icmp eq i32 %194, 1
  %198 = and i1 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !66
  %202 = zext nneg i32 %201 to i64
  %203 = shl nuw i64 1, %202
  %204 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %205 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %206 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !184
  %208 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 9
  %209 = load ptr, ptr %208, align 8, !tbaa !284
  br label %295

210:                                              ; preds = %193
  %211 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !65
  %213 = zext nneg i32 %212 to i64
  %214 = shl nuw i64 1, %213
  %215 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 16, i32 2
  %216 = load i32, ptr %215, align 4, !tbaa !66
  %217 = zext nneg i32 %216 to i64
  %218 = shl nuw i64 1, %217
  %219 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %220 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %221 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 9
  %222 = load ptr, ptr %221, align 8, !tbaa !184
  %223 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 9
  %224 = load ptr, ptr %223, align 8, !tbaa !284
  %225 = icmp ult i32 %195, -2
  br i1 %225, label %295, label %226

226:                                              ; preds = %210, %182
  %227 = phi ptr [ %192, %182 ], [ %224, %210 ]
  %228 = phi ptr [ %190, %182 ], [ %222, %210 ]
  %229 = phi ptr [ %188, %182 ], [ %220, %210 ]
  %230 = phi ptr [ %187, %182 ], [ %219, %210 ]
  %231 = phi i64 [ %186, %182 ], [ %218, %210 ]
  %232 = phi i64 [ 0, %182 ], [ %214, %210 ]
  %233 = icmp ult i64 %231, 8
  %234 = ptrtoint ptr %227 to i64
  %235 = ptrtoint ptr %228 to i64
  %236 = sub i64 %235, %234
  %237 = icmp ult i64 %236, 32
  %238 = select i1 %233, i1 true, i1 %237
  br i1 %238, label %255, label %239

239:                                              ; preds = %226
  %240 = and i64 %231, -8
  br label %241

241:                                              ; preds = %241, %239
  %242 = phi i64 [ 0, %239 ], [ %251, %241 ]
  %243 = getelementptr inbounds i32, ptr %227, i64 %242
  %244 = getelementptr inbounds i32, ptr %243, i64 4
  %245 = load <4 x i32>, ptr %243, align 4, !tbaa !45
  %246 = load <4 x i32>, ptr %244, align 4, !tbaa !45
  %247 = lshr <4 x i32> %245, <i32 8, i32 8, i32 8, i32 8>
  %248 = lshr <4 x i32> %246, <i32 8, i32 8, i32 8, i32 8>
  %249 = getelementptr inbounds i32, ptr %228, i64 %242
  %250 = getelementptr inbounds i32, ptr %249, i64 4
  store <4 x i32> %247, ptr %249, align 4, !tbaa !45
  store <4 x i32> %248, ptr %250, align 4, !tbaa !45
  %251 = add nuw i64 %242, 8
  %252 = icmp eq i64 %251, %240
  br i1 %252, label %253, label %241, !llvm.loop !285

253:                                              ; preds = %241
  %254 = icmp eq i64 %240, 0
  br i1 %254, label %255, label %304

255:                                              ; preds = %226, %253
  %256 = phi i64 [ 0, %226 ], [ %240, %253 ]
  %257 = and i64 %231, 3
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %255, %259
  %260 = phi i64 [ %266, %259 ], [ %256, %255 ]
  %261 = phi i64 [ %267, %259 ], [ 0, %255 ]
  %262 = getelementptr inbounds i32, ptr %227, i64 %260
  %263 = load i32, ptr %262, align 4, !tbaa !45
  %264 = lshr i32 %263, 8
  %265 = getelementptr inbounds i32, ptr %228, i64 %260
  store i32 %264, ptr %265, align 4, !tbaa !45
  %266 = add nuw i64 %260, 1
  %267 = add i64 %261, 1
  %268 = icmp eq i64 %267, %257
  br i1 %268, label %269, label %259, !llvm.loop !288

269:                                              ; preds = %259, %255
  %270 = phi i64 [ %256, %255 ], [ %266, %259 ]
  %271 = icmp ult i64 %231, 4
  br i1 %271, label %304, label %272

272:                                              ; preds = %269, %272
  %273 = phi i64 [ %293, %272 ], [ %270, %269 ]
  %274 = getelementptr inbounds i32, ptr %227, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !45
  %276 = lshr i32 %275, 8
  %277 = getelementptr inbounds i32, ptr %228, i64 %273
  store i32 %276, ptr %277, align 4, !tbaa !45
  %278 = add nuw i64 %273, 1
  %279 = getelementptr inbounds i32, ptr %227, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !45
  %281 = lshr i32 %280, 8
  %282 = getelementptr inbounds i32, ptr %228, i64 %278
  store i32 %281, ptr %282, align 4, !tbaa !45
  %283 = add nuw i64 %273, 2
  %284 = getelementptr inbounds i32, ptr %227, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !45
  %286 = lshr i32 %285, 8
  %287 = getelementptr inbounds i32, ptr %228, i64 %283
  store i32 %286, ptr %287, align 4, !tbaa !45
  %288 = add nuw i64 %273, 3
  %289 = getelementptr inbounds i32, ptr %227, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !45
  %291 = lshr i32 %290, 8
  %292 = getelementptr inbounds i32, ptr %228, i64 %288
  store i32 %291, ptr %292, align 4, !tbaa !45
  %293 = add nuw i64 %273, 4
  %294 = icmp eq i64 %293, %231
  br i1 %294, label %304, label %272, !llvm.loop !290

295:                                              ; preds = %210, %199
  %296 = phi ptr [ %209, %199 ], [ %224, %210 ]
  %297 = phi ptr [ %207, %199 ], [ %222, %210 ]
  %298 = phi ptr [ %205, %199 ], [ %220, %210 ]
  %299 = phi ptr [ %204, %199 ], [ %219, %210 ]
  %300 = phi i64 [ %203, %199 ], [ %218, %210 ]
  %301 = phi i64 [ %202, %199 ], [ %217, %210 ]
  %302 = phi i64 [ 0, %199 ], [ %214, %210 ]
  %303 = shl i64 4, %301
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %297, ptr align 4 %296, i64 %303, i1 false)
  br label %304

304:                                              ; preds = %269, %272, %253, %295
  %305 = phi ptr [ %298, %295 ], [ %229, %253 ], [ %229, %272 ], [ %229, %269 ]
  %306 = phi ptr [ %299, %295 ], [ %230, %253 ], [ %230, %272 ], [ %230, %269 ]
  %307 = phi i64 [ %300, %295 ], [ %231, %253 ], [ %231, %272 ], [ %231, %269 ]
  %308 = phi i64 [ %302, %295 ], [ %232, %253 ], [ %232, %272 ], [ %232, %269 ]
  %309 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %310 = load i32, ptr %309, align 4, !tbaa !180
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %395, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 22
  %314 = load i32, ptr %313, align 8, !tbaa !177
  %315 = add i32 %310, -3
  %316 = icmp ult i32 %315, 3
  %317 = icmp eq i32 %314, 1
  %318 = and i1 %316, %317
  br i1 %318, label %395, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 11
  %321 = load ptr, ptr %320, align 8, !tbaa !185
  %322 = ptrtoint ptr %321 to i64
  %323 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 11
  %324 = load ptr, ptr %323, align 8, !tbaa !291
  %325 = ptrtoint ptr %324 to i64
  %326 = load i32, ptr %46, align 4, !tbaa !69
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
  %340 = getelementptr inbounds i32, ptr %324, i64 %339
  %341 = getelementptr inbounds i32, ptr %340, i64 4
  %342 = load <4 x i32>, ptr %340, align 4, !tbaa !45
  %343 = load <4 x i32>, ptr %341, align 4, !tbaa !45
  %344 = lshr <4 x i32> %342, <i32 8, i32 8, i32 8, i32 8>
  %345 = lshr <4 x i32> %343, <i32 8, i32 8, i32 8, i32 8>
  %346 = getelementptr inbounds i32, ptr %321, i64 %339
  %347 = getelementptr inbounds i32, ptr %346, i64 4
  store <4 x i32> %344, ptr %346, align 4, !tbaa !45
  store <4 x i32> %345, ptr %347, align 4, !tbaa !45
  %348 = add nuw i64 %339, 8
  %349 = icmp eq i64 %348, %337
  br i1 %349, label %350, label %338, !llvm.loop !292

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
  %359 = getelementptr inbounds i32, ptr %324, i64 %357
  %360 = load i32, ptr %359, align 4, !tbaa !45
  %361 = lshr i32 %360, 8
  %362 = getelementptr inbounds i32, ptr %321, i64 %357
  store i32 %361, ptr %362, align 4, !tbaa !45
  %363 = add nuw i64 %357, 1
  %364 = add i64 %358, 1
  %365 = icmp eq i64 %364, %354
  br i1 %365, label %366, label %356, !llvm.loop !293

366:                                              ; preds = %356, %352
  %367 = phi i64 [ %353, %352 ], [ %363, %356 ]
  %368 = sub i64 %353, %308
  %369 = icmp ugt i64 %368, -4
  br i1 %369, label %395, label %370

370:                                              ; preds = %366, %370
  %371 = phi i64 [ %391, %370 ], [ %367, %366 ]
  %372 = getelementptr inbounds i32, ptr %324, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !45
  %374 = lshr i32 %373, 8
  %375 = getelementptr inbounds i32, ptr %321, i64 %371
  store i32 %374, ptr %375, align 4, !tbaa !45
  %376 = add nuw i64 %371, 1
  %377 = getelementptr inbounds i32, ptr %324, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !45
  %379 = lshr i32 %378, 8
  %380 = getelementptr inbounds i32, ptr %321, i64 %376
  store i32 %379, ptr %380, align 4, !tbaa !45
  %381 = add nuw i64 %371, 2
  %382 = getelementptr inbounds i32, ptr %324, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !45
  %384 = lshr i32 %383, 8
  %385 = getelementptr inbounds i32, ptr %321, i64 %381
  store i32 %384, ptr %385, align 4, !tbaa !45
  %386 = add nuw i64 %371, 3
  %387 = getelementptr inbounds i32, ptr %324, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !45
  %389 = lshr i32 %388, 8
  %390 = getelementptr inbounds i32, ptr %321, i64 %386
  store i32 %389, ptr %390, align 4, !tbaa !45
  %391 = add nuw i64 %371, 4
  %392 = icmp eq i64 %391, %308
  br i1 %392, label %395, label %370, !llvm.loop !294

393:                                              ; preds = %319
  %394 = shl i64 %308, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %321, ptr align 4 %324, i64 %394, i1 false)
  br label %395

395:                                              ; preds = %366, %370, %350, %393, %329, %312, %304
  %396 = load i32, ptr %46, align 4, !tbaa !69
  %397 = load i32, ptr %171, align 8, !tbaa !275
  %398 = add i32 %396, -6
  %399 = icmp ult i32 %398, -3
  %400 = icmp ne i32 %397, 1
  %401 = or i1 %399, %400
  br i1 %401, label %410, label %402

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 5
  %404 = load ptr, ptr %403, align 8, !tbaa !295
  %405 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 5
  %406 = load ptr, ptr %405, align 8, !tbaa !296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %404, ptr noundef nonnull align 1 dereferenceable(1) %406, i64 %307, i1 false)
  %407 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 7
  %408 = load i64, ptr %407, align 8, !tbaa !297
  %409 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 7
  store i64 %408, ptr %409, align 8, !tbaa !298
  br label %410

410:                                              ; preds = %402, %395
  %411 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 3
  %412 = load i32, ptr %411, align 8, !tbaa !183
  %413 = icmp eq i32 %412, 0
  %414 = zext nneg i32 %412 to i64
  %415 = shl i64 4, %414
  %416 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 10
  %417 = load ptr, ptr %416, align 8, !tbaa !186
  %418 = select i1 %413, i64 0, i64 %415
  tail call void @llvm.memset.p0.i64(ptr align 4 %417, i8 0, i64 %418, i1 false)
  %419 = load ptr, ptr %179, align 8, !tbaa !58
  %420 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !57
  %422 = icmp ult ptr %419, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %410
  store ptr %421, ptr %179, align 8, !tbaa !58
  br label %424

424:                                              ; preds = %423, %410
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %305, ptr noundef nonnull align 8 dereferenceable(40) %167, i64 40, i1 false), !tbaa.struct !187
  %425 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 5, i32 1
  %426 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 1
  %427 = load <2 x i32>, ptr %425, align 8, !tbaa !45
  store <2 x i32> %427, ptr %426, align 8, !tbaa !45
  %428 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 8
  %429 = load i32, ptr %428, align 8, !tbaa !283
  %430 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %429, ptr %430, align 8, !tbaa !188
  %431 = load i64, ptr %24, align 8, !tbaa !270
  %432 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %431, ptr %432, align 8, !tbaa !189
  %433 = load ptr, ptr %306, align 8, !tbaa !59
  %434 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %433, ptr noundef nonnull align 8 dereferenceable(5632) %434, i64 5632, i1 false)
  br label %435

435:                                              ; preds = %424, %166
  %436 = phi i64 [ 0, %424 ], [ %174, %166 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %10)
  br label %476

437:                                              ; preds = %23, %34, %38
  %438 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %439 = icmp ult i64 %438, -119
  br i1 %439, label %443, label %476

440:                                              ; preds = %20
  %441 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %442 = icmp ult i64 %441, -119
  br i1 %442, label %459, label %476

443:                                              ; preds = %437
  br i1 %12, label %459, label %444

444:                                              ; preds = %443
  %445 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %446 = load ptr, ptr %445, align 8, !tbaa !59
  %447 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %448 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %449 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %450 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %451 = load ptr, ptr %5, align 8, !tbaa !299
  %452 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 1
  %453 = load i64, ptr %452, align 8, !tbaa !270
  %454 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i64 0, i32 2
  %455 = load i32, ptr %454, align 8, !tbaa !300
  %456 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %457 = load ptr, ptr %456, align 8, !tbaa !60
  %458 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %446, ptr noundef nonnull %447, ptr noundef nonnull %448, ptr noundef nonnull %449, ptr noundef nonnull %450, ptr noundef %451, i64 noundef %453, i32 noundef %455, i32 noundef %4, i32 noundef 0, ptr noundef %457)
  br label %469

459:                                              ; preds = %440, %443
  %460 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %461 = load ptr, ptr %460, align 8, !tbaa !59
  %462 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %463 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %464 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %465 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %466 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %467 = load ptr, ptr %466, align 8, !tbaa !60
  %468 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %461, ptr noundef nonnull %462, ptr noundef nonnull %463, ptr noundef nonnull %464, ptr noundef nonnull %465, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef %467)
  br label %469

469:                                              ; preds = %459, %444
  %470 = phi i64 [ %458, %444 ], [ %468, %459 ]
  %471 = icmp ult i64 %470, -119
  br i1 %471, label %472, label %476

472:                                              ; preds = %469
  %473 = trunc i64 %470 to i32
  %474 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %473, ptr %474, align 8, !tbaa !188
  %475 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %17, ptr %475, align 8, !tbaa !189
  br label %476

476:                                              ; preds = %440, %472, %469, %435, %164, %437
  %477 = phi i64 [ %438, %437 ], [ %165, %164 ], [ %436, %435 ], [ %470, %469 ], [ 0, %472 ], [ %441, %440 ]
  ret i64 %477
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly byval(%struct.ZSTD_parameters) align 8 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !70
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ZSTD_parameters, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !52
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 22
  %11 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !69
  %13 = add i32 %12, -6
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  store i32 2, ptr %10, align 8, !tbaa !71
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 19
  %17 = icmp ugt i32 %12, 6
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  store i32 2, ptr %16, align 4, !tbaa !72
  br label %30

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 8, !tbaa !64
  %21 = icmp ugt i32 %20, 14
  %22 = select i1 %21, i32 1, i32 2
  store i32 %22, ptr %10, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 19
  store i32 2, ptr %23, align 4, !tbaa !72
  br label %30

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 8, !tbaa !64
  %26 = icmp ugt i32 %25, 16
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %16, align 4, !tbaa !72
  %28 = icmp ugt i32 %25, 26
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %19, %18, %24
  %31 = phi i32 [ 2, %19 ], [ %29, %24 ], [ 2, %18 ]
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 13
  store i32 %31, ptr %32, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 21
  store i64 131072, ptr %33, align 8, !tbaa !74
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 29
  store i32 2, ptr %34, align 8, !tbaa !75
  %35 = load <4 x i32>, ptr %7, align 4
  %36 = freeze <4 x i32> %35
  %37 = add <4 x i32> %36, <i32 -32, i32 -31, i32 -31, i32 -31>
  %38 = icmp ult <4 x i32> %37, <i32 -22, i32 -25, i32 -25, i32 -30>
  %39 = bitcast <4 x i1> %38 to i4
  %40 = icmp eq i4 %39, 0
  br i1 %40, label %41, label %105

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa.struct !53
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa.struct !127
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa.struct !52
  %48 = add i32 %47, -3
  %49 = icmp ult i32 %48, 5
  %50 = icmp ult i32 %45, 131073
  %51 = select i1 %49, i1 %50, i1 false
  %52 = add i32 %43, -1
  %53 = icmp ult i32 %52, 9
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %105

55:                                               ; preds = %41
  br i1 icmp ne (ptr @ZSTD_trace_compress_begin, ptr null), label %56, label %58

56:                                               ; preds = %55
  %57 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i64 [ %57, %56 ], [ 0, %55 ]
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  store i64 %59, ptr %60, align 8, !tbaa !272
  %61 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %4, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  %62 = icmp ult i64 %61, -119
  br i1 %62, label %63, label %105

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %68 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %70 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = icmp eq ptr %1, null
  %73 = icmp ult i64 %2, 8
  %74 = or i1 %72, %73
  br i1 %74, label %101, label %75

75:                                               ; preds = %63
  %76 = getelementptr i8, ptr %65, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %76, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %77 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %65, i64 0, i32 1
  store i32 0, ptr %77, align 8, !tbaa !167
  %78 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %65, i64 0, i32 1, i32 3
  store i32 0, ptr %78, align 4, !tbaa !172
  %79 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %65, i64 0, i32 1, i32 4
  store i32 0, ptr %79, align 8, !tbaa !173
  %80 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %65, i64 0, i32 1, i32 5
  store i32 0, ptr %80, align 4, !tbaa !174
  %81 = load i32, ptr %1, align 1, !tbaa !45
  %82 = icmp eq i32 %81, -332356553
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %66, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %101

84:                                               ; preds = %75
  %85 = getelementptr inbounds i8, ptr %1, i64 %2
  %86 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !87
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %1, i64 4
  %91 = load i32, ptr %90, align 1, !tbaa !45
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i32 [ %91, %89 ], [ 0, %84 ]
  %94 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %65, ptr noundef %71, ptr noundef nonnull %1, i64 noundef %2)
  %95 = icmp ult i64 %94, -119
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %1, i64 %94
  %98 = ptrtoint ptr %85 to i64
  %99 = ptrtoint ptr %97 to i64
  %100 = sub i64 %98, %99
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %66, ptr noundef null, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %97, i64 noundef %100, i32 noundef 0, i32 noundef 0)
  br label %101

101:                                              ; preds = %83, %96, %63
  %102 = phi i32 [ 0, %63 ], [ %93, %96 ], [ 0, %83 ]
  %103 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %102, ptr %103, align 8, !tbaa !188
  %104 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %2, ptr %104, align 8, !tbaa !189
  br label %105

105:                                              ; preds = %101, %58, %92, %30, %41
  %106 = phi i64 [ -42, %30 ], [ -42, %41 ], [ 0, %101 ], [ %61, %58 ], [ %94, %92 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #30
  ret i64 %106
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
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
  %25 = getelementptr inbounds [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i64 0, i64 %16, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa.struct !70, !noalias !301
  %27 = getelementptr inbounds i8, ptr %25, i64 4
  %28 = load i32, ptr %27, align 4, !tbaa.struct !124, !noalias !301
  %29 = getelementptr inbounds i8, ptr %25, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa.struct !125, !noalias !301
  %31 = getelementptr inbounds i8, ptr %25, i64 12
  %32 = load <2 x i32>, ptr %31, align 4, !noalias !301
  %33 = getelementptr inbounds i8, ptr %25, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa.struct !127, !noalias !301
  %35 = getelementptr inbounds i8, ptr %25, i64 24
  %36 = load i32, ptr %35, align 4, !tbaa.struct !53, !noalias !301
  %37 = add i32 %36, -6
  %38 = icmp ult i32 %37, -3
  br i1 %38, label %45, label %39

39:                                               ; preds = %23
  %40 = extractelement <2 x i32> %32, i64 0
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 6)
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 4)
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
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1
  store i32 %47, ptr %53, align 4, !tbaa.struct !70
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 1
  store i32 %28, ptr %54, align 8, !tbaa.struct !124
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 2
  store i32 %46, ptr %55, align 4, !tbaa.struct !125
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 3
  store <2 x i32> %32, ptr %56, align 8
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 5
  store i32 %51, ptr %57, align 8, !tbaa.struct !127
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 6
  store i32 %36, ptr %58, align 4, !tbaa.struct !53
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 2
  store i32 1, ptr %59, align 8, !tbaa.struct !52
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 3
  store i32 %52, ptr %60, align 4, !tbaa !38
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 22
  br i1 %38, label %62, label %66

62:                                               ; preds = %45
  store i32 2, ptr %61, align 8, !tbaa !71
  %63 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 19
  %64 = icmp ugt i32 %36, 6
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  store i32 2, ptr %63, align 4, !tbaa !72
  br label %75

66:                                               ; preds = %45
  %67 = icmp ugt i32 %26, 14
  %68 = select i1 %67, i32 1, i32 2
  store i32 %68, ptr %61, align 8, !tbaa !71
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 19
  store i32 2, ptr %69, align 4, !tbaa !72
  br label %75

70:                                               ; preds = %62
  %71 = icmp ugt i32 %26, 16
  %72 = select i1 %71, i32 1, i32 2
  store i32 %72, ptr %63, align 4, !tbaa !72
  %73 = icmp ugt i32 %26, 26
  %74 = select i1 %73, i32 1, i32 2
  br label %75

75:                                               ; preds = %66, %65, %70
  %76 = phi i32 [ 2, %66 ], [ %74, %70 ], [ 2, %65 ]
  %77 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 13
  store i32 %76, ptr %77, align 8, !tbaa !73
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 21
  store i64 131072, ptr %78, align 8, !tbaa !74
  %79 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 29
  %80 = icmp slt i32 %52, 10
  %81 = select i1 %80, i32 2, i32 1
  store i32 %81, ptr %79, align 8, !tbaa !75
  br i1 icmp ne (ptr @ZSTD_trace_compress_begin, ptr null), label %82, label %84

82:                                               ; preds = %75
  %83 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %84

84:                                               ; preds = %82, %75
  %85 = phi i64 [ %83, %82 ], [ 0, %75 ]
  %86 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  store i64 %85, ptr %86, align 8, !tbaa !272
  %87 = call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef -1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  %88 = icmp ult i64 %87, -119
  br i1 %88, label %89, label %131

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %93 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %95 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %96 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %97 = load ptr, ptr %96, align 8, !tbaa !60
  %98 = icmp eq ptr %1, null
  %99 = icmp ult i64 %2, 8
  %100 = or i1 %98, %99
  br i1 %100, label %127, label %101

101:                                              ; preds = %89
  %102 = getelementptr i8, ptr %91, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %102, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %103 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %91, i64 0, i32 1
  store i32 0, ptr %103, align 8, !tbaa !167
  %104 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %91, i64 0, i32 1, i32 3
  store i32 0, ptr %104, align 4, !tbaa !172
  %105 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %91, i64 0, i32 1, i32 4
  store i32 0, ptr %105, align 8, !tbaa !173
  %106 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %91, i64 0, i32 1, i32 5
  store i32 0, ptr %106, align 4, !tbaa !174
  %107 = load i32, ptr %1, align 1, !tbaa !45
  %108 = icmp eq i32 %107, -332356553
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %92, ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %127

110:                                              ; preds = %101
  %111 = getelementptr inbounds i8, ptr %1, i64 %2
  %112 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !87
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = getelementptr inbounds i8, ptr %1, i64 4
  %117 = load i32, ptr %116, align 1, !tbaa !45
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi i32 [ %117, %115 ], [ 0, %110 ]
  %120 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %91, ptr noundef %97, ptr noundef nonnull %1, i64 noundef %2)
  %121 = icmp ult i64 %120, -119
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %1, i64 %120
  %124 = ptrtoint ptr %111 to i64
  %125 = ptrtoint ptr %123 to i64
  %126 = sub i64 %124, %125
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %92, ptr noundef null, ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull %123, i64 noundef %126, i32 noundef 0, i32 noundef 0)
  br label %127

127:                                              ; preds = %109, %122, %89
  %128 = phi i32 [ 0, %89 ], [ %119, %122 ], [ 0, %109 ]
  %129 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %128, ptr %129, align 8, !tbaa !188
  %130 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %2, ptr %130, align 8, !tbaa !189
  br label %131

131:                                              ; preds = %118, %84, %127
  %132 = phi i64 [ 0, %127 ], [ %87, %84 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #30
  ret i64 %132
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_CCtx_trace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_Trace, align 8
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  %5 = load i64, ptr %4, align 8, !tbaa !272
  %6 = icmp eq i64 %5, 0
  %7 = or i1 %6, icmp eq (ptr @ZSTD_trace_compress_end, ptr null)
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 30
  %10 = load i64, ptr %9, align 8, !tbaa !306
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 35
  %14 = load i64, ptr %13, align 8, !tbaa !307
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !308
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %12, %8
  %22 = phi i32 [ 1, %12 ], [ 1, %8 ], [ %20, %16 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #30
  %23 = getelementptr inbounds i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, i8 0, i64 56, i1 false)
  store i32 10600, ptr %3, align 8, !tbaa !309
  %24 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 1
  store i32 %22, ptr %24, align 4, !tbaa !311
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !188
  %27 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !312
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !189
  %30 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 4
  store i64 %29, ptr %30, align 8, !tbaa !313
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 11
  %32 = load i64, ptr %31, align 8, !tbaa !158
  %33 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 5
  store i64 %32, ptr %33, align 8, !tbaa !314
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 12
  %35 = load i64, ptr %34, align 8, !tbaa !162
  %36 = add i64 %35, %1
  %37 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 6
  store i64 %36, ptr %37, align 8, !tbaa !315
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 7
  store ptr %38, ptr %39, align 8, !tbaa !316
  %40 = getelementptr inbounds %struct.ZSTD_Trace, ptr %3, i64 0, i32 8
  store ptr %0, ptr %40, align 8, !tbaa !317
  call void @ZSTD_trace_compress_end(i64 noundef %5, ptr noundef nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #30
  br label %41

41:                                               ; preds = %2, %21
  store i64 0, ptr %4, align 8, !tbaa !272
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
  %10 = getelementptr inbounds i8, ptr %1, i64 %7
  %11 = sub i64 %2, %7
  %12 = load i32, ptr %0, align 8, !tbaa !175
  switch i32 %12, label %46 [
    i32 0, label %119
    i32 1, label %13
    i32 3, label %52
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !86
  %17 = icmp sgt i32 %16, 0
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !79
  %20 = load i32, ptr %14, align 8, !tbaa !39
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
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !78
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -47205080, ptr %10, align 1, !tbaa !45
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i64 [ 4, %33 ], [ 0, %29 ]
  %36 = or disjoint i64 %35, 1
  %37 = getelementptr inbounds i8, ptr %10, i64 %35
  store i8 %27, ptr %37, align 1, !tbaa !44
  %38 = select i1 %21, i8 %24, i8 0
  %39 = getelementptr inbounds i8, ptr %10, i64 %36
  store i8 %38, ptr %39, align 1
  %40 = or disjoint i64 %35, 2
  %41 = getelementptr inbounds i8, ptr %10, i64 %40
  store i32 2, ptr %0, align 8, !tbaa !175
  store i16 1, ptr %41, align 1, !tbaa !239
  %42 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 0, ptr %42, align 1, !tbaa !44
  %43 = getelementptr inbounds i8, ptr %41, i64 3
  %44 = add i64 %11, -3
  %45 = sub nuw i64 %44, %40
  br label %52

46:                                               ; preds = %9
  %47 = icmp ugt i64 %11, 2
  br i1 %47, label %48, label %119

48:                                               ; preds = %46
  store i16 1, ptr %10, align 1, !tbaa !239
  %49 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 0, ptr %49, align 1, !tbaa !44
  %50 = getelementptr inbounds i8, ptr %10, i64 3
  %51 = add i64 %11, -3
  br label %52

52:                                               ; preds = %48, %34, %9
  %53 = phi ptr [ %43, %34 ], [ %50, %48 ], [ %10, %9 ]
  %54 = phi i64 [ %45, %34 ], [ %51, %48 ], [ %11, %9 ]
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !253
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = icmp ugt i64 %54, 3
  br i1 %59, label %60, label %119

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 13
  %62 = tail call i64 @ZSTD_XXH64_digest(ptr nocapture noundef nonnull %61) #34
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %53, align 1, !tbaa !45
  %64 = getelementptr inbounds i8, ptr %53, i64 4
  br label %65

65:                                               ; preds = %52, %60
  %66 = phi ptr [ %53, %52 ], [ %64, %60 ]
  store i32 0, ptr %0, align 8, !tbaa !175
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %10 to i64
  %69 = sub i64 %67, %68
  %70 = icmp ult i64 %69, -119
  br i1 %70, label %71, label %119

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %73 = load i64, ptr %72, align 8, !tbaa !111
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 11
  %77 = load i64, ptr %76, align 8, !tbaa !158
  %78 = add i64 %77, 1
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %75, %71
  %81 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  %82 = load i64, ptr %81, align 8, !tbaa !272
  %83 = icmp eq i64 %82, 0
  %84 = or i1 %83, icmp eq (ptr @ZSTD_trace_compress_end, ptr null)
  br i1 %84, label %117, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 30
  %87 = load i64, ptr %86, align 8, !tbaa !306
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 35
  %91 = load i64, ptr %90, align 8, !tbaa !307
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !308
  %96 = icmp sgt i32 %95, 0
  %97 = zext i1 %96 to i32
  br label %98

98:                                               ; preds = %93, %89, %85
  %99 = phi i32 [ 1, %89 ], [ 1, %85 ], [ %97, %93 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #30
  %100 = getelementptr inbounds i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %100, i8 0, i64 56, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !309
  %101 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 1
  store i32 %99, ptr %101, align 4, !tbaa !311
  %102 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !188
  store i32 %103, ptr %100, align 8, !tbaa !312
  %104 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  %105 = load i64, ptr %104, align 8, !tbaa !189
  %106 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 4
  store i64 %105, ptr %106, align 8, !tbaa !313
  %107 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 11
  %108 = load i64, ptr %107, align 8, !tbaa !158
  %109 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 5
  store i64 %108, ptr %109, align 8, !tbaa !314
  %110 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 12
  %111 = load i64, ptr %110, align 8, !tbaa !162
  %112 = add i64 %111, %69
  %113 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 6
  store i64 %112, ptr %113, align 8, !tbaa !315
  %114 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %115 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 7
  store ptr %114, ptr %115, align 8, !tbaa !316
  %116 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 8
  store ptr %0, ptr %116, align 8, !tbaa !317
  call void @ZSTD_trace_compress_end(i64 noundef %82, ptr noundef nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #30
  br label %117

117:                                              ; preds = %80, %98
  store i64 0, ptr %81, align 8, !tbaa !272
  %118 = add i64 %69, %7
  br label %119

119:                                              ; preds = %13, %46, %58, %9, %75, %65, %5, %117
  %120 = phi i64 [ %118, %117 ], [ %69, %65 ], [ %7, %5 ], [ -72, %75 ], [ -70, %13 ], [ -70, %46 ], [ -70, %58 ], [ -60, %9 ]
  ret i64 %120
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr nocapture noundef readonly byval(%struct.ZSTD_parameters) align 8 %7) local_unnamed_addr #2 {
  %9 = load i32, ptr %7, align 8, !tbaa !64
  %10 = add i32 %9, -32
  %11 = icmp ult i32 %10, -22
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !65
  %15 = add i32 %14, -31
  %16 = icmp ult i32 %15, -25
  br i1 %16, label %68, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %7, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = add i32 %19, -31
  %21 = icmp ult i32 %20, -25
  br i1 %21, label %68, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %7, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !67
  %25 = add i32 %24, -31
  %26 = icmp ult i32 %25, -30
  br i1 %26, label %68, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %7, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = add i32 %29, -8
  %31 = icmp ult i32 %30, -5
  %32 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %7, i64 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 131072
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %68, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %7, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !69
  %39 = add i32 %38, -1
  %40 = icmp ult i32 %39, 9
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %42, i8 0, i64 224, i1 false)
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %43, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !70
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 2
  %45 = getelementptr inbounds %struct.ZSTD_parameters, ptr %7, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull align 4 dereferenceable(12) %45, i64 12, i1 false), !tbaa.struct !52
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 22
  %47 = add nsw i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  store i32 2, ptr %46, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 19
  %51 = icmp ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !72
  br label %62

53:                                               ; preds = %41
  %54 = icmp ugt i32 %9, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 19
  store i32 2, ptr %56, align 4, !tbaa !72
  br label %62

57:                                               ; preds = %49
  %58 = icmp ugt i32 %9, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !72
  %60 = icmp ugt i32 %9, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ 2, %53 ], [ %61, %57 ], [ 2, %52 ]
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 13
  store i32 %63, ptr %64, align 8, !tbaa !73
  %65 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 21
  store i64 131072, ptr %65, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 29
  store i32 2, ptr %66, align 8, !tbaa !75
  %67 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %42)
  br label %68

68:                                               ; preds = %27, %22, %17, %12, %8, %36, %62
  %69 = phi i64 [ -42, %36 ], [ %67, %62 ], [ -42, %8 ], [ -42, %12 ], [ -42, %17 ], [ -42, %22 ], [ -42, %27 ]
  ret i64 %69
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr nocapture noundef readonly %7) local_unnamed_addr #2 {
  br i1 icmp ne (ptr @ZSTD_trace_compress_begin, ptr null), label %9, label %11

9:                                                ; preds = %8
  %10 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #30
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i64 [ %10, %9 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  store i64 %12, ptr %13, align 8, !tbaa !272
  %14 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %7, i64 noundef %4, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  %15 = icmp ult i64 %14, -119
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = icmp eq ptr %5, null
  %26 = icmp ult i64 %6, 8
  %27 = or i1 %25, %26
  br i1 %27, label %54, label %28

28:                                               ; preds = %16
  %29 = getelementptr i8, ptr %18, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %30 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %18, i64 0, i32 1
  store i32 0, ptr %30, align 8, !tbaa !167
  %31 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %18, i64 0, i32 1, i32 3
  store i32 0, ptr %31, align 4, !tbaa !172
  %32 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %18, i64 0, i32 1, i32 4
  store i32 0, ptr %32, align 8, !tbaa !173
  %33 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %18, i64 0, i32 1, i32 5
  store i32 0, ptr %33, align 4, !tbaa !174
  %34 = load i32, ptr %5, align 1, !tbaa !45
  %35 = icmp eq i32 %34, -332356553
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %5, i64 noundef %6, i32 noundef 0, i32 noundef 0)
  br label %54

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, ptr %5, i64 %6
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !87
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %5, i64 4
  %44 = load i32, ptr %43, align 1, !tbaa !45
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i32 [ %44, %42 ], [ 0, %37 ]
  %47 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %18, ptr noundef %24, ptr noundef nonnull %5, i64 noundef %6)
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %5, i64 %47
  %51 = ptrtoint ptr %38 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %50, i64 noundef %53, i32 noundef 0, i32 noundef 0)
  br label %54

54:                                               ; preds = %36, %49, %16
  %55 = phi i32 [ 0, %16 ], [ %46, %49 ], [ 0, %36 ]
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 %55, ptr %56, align 8, !tbaa !188
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %6, ptr %57, align 8, !tbaa !189
  %58 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %59

59:                                               ; preds = %45, %11, %54
  %60 = phi i64 [ %58, %54 ], [ %47, %45 ], [ %14, %11 ]
  ret i64 %60
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.ZSTD_compressionParameters, align 4
  %10 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10)
  %11 = icmp eq ptr %5, null
  %12 = select i1 %11, i64 0, i64 %6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #30, !noalias !318
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %9, i32 noundef %7, i64 noundef %4, i64 noundef %12, i32 noundef 0), !noalias !318
  %13 = load i32, ptr %9, align 4, !tbaa.struct !70
  %14 = getelementptr inbounds i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !124
  %15 = getelementptr inbounds i8, ptr %9, i64 24
  %16 = load i32, ptr %15, align 4, !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #30, !noalias !318
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5
  %18 = icmp eq i32 %7, 0
  %19 = select i1 %18, i32 3, i32 %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %17, i8 0, i64 224, i1 false)
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1
  store i32 %13, ptr %20, align 4, !tbaa.struct !70
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !124
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1, i32 6
  store i32 %16, ptr %22, align 4, !tbaa.struct !53
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 2
  store i32 1, ptr %23, align 8, !tbaa.struct !52
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 3
  store i32 %19, ptr %24, align 4, !tbaa !38
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 22
  %26 = add i32 %16, -6
  %27 = icmp ult i32 %26, -3
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  store i32 2, ptr %25, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 19
  %30 = icmp ugt i32 %16, 6
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  store i32 2, ptr %29, align 4, !tbaa !72
  br label %41

32:                                               ; preds = %8
  %33 = icmp ugt i32 %13, 14
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, ptr %25, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 19
  store i32 2, ptr %35, align 4, !tbaa !72
  br label %41

36:                                               ; preds = %28
  %37 = icmp ugt i32 %13, 16
  %38 = select i1 %37, i32 1, i32 2
  store i32 %38, ptr %29, align 4, !tbaa !72
  %39 = icmp ugt i32 %13, 26
  %40 = select i1 %39, i32 1, i32 2
  br label %41

41:                                               ; preds = %32, %31, %36
  %42 = phi i32 [ 2, %32 ], [ %40, %36 ], [ 2, %31 ]
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 13
  store i32 %42, ptr %43, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 21
  store i64 131072, ptr %44, align 8, !tbaa !74
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 29
  %46 = icmp slt i32 %19, 10
  %47 = select i1 %46, i32 2, i32 1
  store i32 %47, ptr %45, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10)
  %48 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %17)
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressCCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_compressionParameters, align 4
  %8 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #30, !noalias !321
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %7, i32 noundef %5, i64 noundef %4, i64 noundef 0, i32 noundef 0), !noalias !321
  %9 = load i32, ptr %7, align 4, !tbaa.struct !70
  %10 = getelementptr inbounds i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !124
  %11 = getelementptr inbounds i8, ptr %7, i64 24
  %12 = load i32, ptr %11, align 4, !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #30, !noalias !321
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5
  %14 = icmp eq i32 %5, 0
  %15 = select i1 %14, i32 3, i32 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %13, i8 0, i64 224, i1 false)
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1
  store i32 %9, ptr %16, align 4, !tbaa.struct !70
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !124
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 1, i32 6
  store i32 %12, ptr %18, align 4, !tbaa.struct !53
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 2
  store i32 1, ptr %19, align 8, !tbaa.struct !52
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 3
  store i32 %15, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 22
  %22 = add i32 %12, -6
  %23 = icmp ult i32 %22, -3
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  store i32 2, ptr %21, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 19
  %26 = icmp ugt i32 %12, 6
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  store i32 2, ptr %25, align 4, !tbaa !72
  br label %37

28:                                               ; preds = %6
  %29 = icmp ugt i32 %9, 14
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %21, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 19
  store i32 2, ptr %31, align 4, !tbaa !72
  br label %37

32:                                               ; preds = %24
  %33 = icmp ugt i32 %9, 16
  %34 = select i1 %33, i32 1, i32 2
  store i32 %34, ptr %25, align 4, !tbaa !72
  %35 = icmp ugt i32 %9, 26
  %36 = select i1 %35, i32 1, i32 2
  br label %37

37:                                               ; preds = %27, %28, %32
  %38 = phi i32 [ 2, %28 ], [ %36, %32 ], [ 2, %27 ]
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 13
  store i32 %38, ptr %39, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 21
  store i64 131072, ptr %40, align 8, !tbaa !74
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 5, i32 29
  %42 = icmp slt i32 %15, 10
  %43 = select i1 %42, i32 2, i32 1
  store i32 %43, ptr %41, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8)
  br i1 icmp ne (ptr @ZSTD_trace_compress_begin, ptr null), label %44, label %46

44:                                               ; preds = %37
  %45 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #30
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi i64 [ %45, %44 ], [ 0, %37 ]
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 46
  store i64 %47, ptr %48, align 8, !tbaa !272
  %49 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef nonnull %13, i64 noundef %4, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  %50 = icmp ult i64 %49, -119
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %52, align 8, !tbaa !188
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 0, ptr %53, align 8, !tbaa !189
  %54 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %55

55:                                               ; preds = %46, %51
  %56 = phi i64 [ %54, %51 ], [ %49, %46 ]
  ret i64 %56
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
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 2
  store i32 %21, ptr %22, align 8, !tbaa !8
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 43
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 14, i32 1
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 14, i32 2
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 43, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, i8 0, i64 72, i1 false)
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %27, i8 0, i64 224, i1 false)
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 3, i32 3
  store i32 3, ptr %28, align 4, !tbaa !38
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 3, i32 2
  store i32 1, ptr %29, align 8, !tbaa !39
  %30 = call i64 @ZSTD_compressCCtx(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  %31 = load ptr, ptr %23, align 8, !tbaa !112
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
  %40 = load ptr, ptr %26, align 8, !tbaa !116
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i64 0, i32 7, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa.struct !117
  %45 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i64 0, i32 7, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa.struct !118
  %47 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp ugt ptr %48, %40
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i64 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = icmp ule ptr %52, %40
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
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %6, i64 0, i32 8
  %68 = load ptr, ptr %24, align 8
  %69 = load ptr, ptr %25, align 8
  %70 = load ptr, ptr %67, align 8, !tbaa !62
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
define dso_local i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %1, align 8
  %9 = icmp ult i32 %8, 15
  %10 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 4, %12
  %14 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !66
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
  %4 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %6, -3
  %8 = load i32, ptr %3, align 8
  %9 = icmp ult i32 %8, 15
  %10 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 4, %12
  %14 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !66
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
define dso_local i64 @ZSTD_sizeof_CDict(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i64 0, i64 6080
  %8 = getelementptr %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
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
define dso_local ptr @ZSTD_createCDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %4, ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #30
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  store i32 1, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !70
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !324
  %11 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %5)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #30
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 16
  %9 = alloca %struct.ZSTD_compressionParameters, align 16
  %10 = alloca %struct.ZSTD_compressionParameters, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !109
  %11 = load ptr, ptr %5, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.ZSTD_customMem, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = xor i1 %12, %15
  br i1 %16, label %186, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #30
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !38
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %23, i64 noundef 0, i64 noundef %1, i32 noundef 2), !alias.scope !325
  %24 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %8, i64 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -3
  %27 = icmp ult i32 %26, 3
  %28 = getelementptr inbounds i8, ptr %8, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %8, i64 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, 2
  %33 = select i1 %27, i32 %32, i32 %29
  %34 = load <4 x i32>, ptr %8, align 16
  %35 = getelementptr inbounds i8, ptr %8, i64 12
  %36 = load i32, ptr %35, align 4, !tbaa.struct !126
  %37 = getelementptr inbounds i8, ptr %8, i64 16
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1
  %39 = insertelement <4 x i32> %34, i32 %33, i64 2
  %40 = insertelement <4 x i32> %39, i32 %36, i64 3
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1, i32 4
  %42 = load <2 x i32>, ptr %37, align 16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #30
  %43 = load <4 x i32>, ptr %38, align 4, !tbaa !45
  %44 = icmp eq <4 x i32> %43, zeroinitializer
  %45 = select <4 x i1> %44, <4 x i32> %40, <4 x i32> %43
  %46 = load <2 x i32>, ptr %41, align 4, !tbaa !45
  %47 = icmp eq <2 x i32> %46, zeroinitializer
  %48 = select <2 x i1> %47, <2 x i32> %42, <2 x i32> %46
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !69
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 %25, i32 %50
  br label %59

53:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %9, ptr noundef nonnull %7, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %54 = load <4 x i32>, ptr %9, align 16
  %55 = getelementptr inbounds i8, ptr %9, i64 16
  %56 = load <2 x i32>, ptr %55, align 16
  %57 = getelementptr inbounds i8, ptr %9, i64 24
  %58 = load i32, ptr %57, align 8, !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #30
  br label %59

59:                                               ; preds = %21, %53
  %60 = phi i32 [ %58, %53 ], [ %52, %21 ]
  %61 = phi <4 x i32> [ %54, %53 ], [ %45, %21 ]
  %62 = phi <2 x i32> [ %56, %53 ], [ %48, %21 ]
  %63 = add i32 %60, -6
  %64 = icmp ult i32 %63, -3
  %65 = extractelement <4 x i32> %61, i64 1
  %66 = extractelement <4 x i32> %61, i64 2
  %67 = icmp ule i32 %66, %65
  %68 = select i1 %64, i1 true, i1 %67
  %69 = icmp ugt i32 %65, 24
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  store i32 0, ptr %18, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %10, ptr noundef nonnull %7, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %72 = load <4 x i32>, ptr %10, align 16
  %73 = getelementptr inbounds i8, ptr %10, i64 16
  %74 = load <2 x i32>, ptr %73, align 16
  %75 = getelementptr inbounds i8, ptr %10, i64 24
  %76 = load i32, ptr %75, align 8, !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #30
  br label %77

77:                                               ; preds = %59, %71
  %78 = phi i32 [ 0, %71 ], [ %19, %59 ]
  %79 = phi i32 [ %76, %71 ], [ %60, %59 ]
  %80 = phi <4 x i32> [ %72, %71 ], [ %61, %59 ]
  %81 = phi <2 x i32> [ %74, %71 ], [ %62, %59 ]
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1
  store <4 x i32> %80, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1, i32 4
  store <2 x i32> %81, ptr %83, align 4
  %84 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1, i32 6
  store i32 %79, ptr %84, align 4, !tbaa.struct !53
  %85 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 22
  %86 = load i32, ptr %85, align 8, !tbaa !71
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = add i32 %79, -6
  %90 = icmp ult i32 %89, -3
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = extractelement <4 x i32> %80, i64 0
  %93 = icmp ugt i32 %92, 14
  %94 = select i1 %93, i32 1, i32 2
  br label %95

95:                                               ; preds = %91, %88, %77
  %96 = phi i32 [ %94, %91 ], [ %86, %77 ], [ 2, %88 ]
  store i32 %96, ptr %85, align 8, !tbaa !71
  %97 = getelementptr inbounds i8, ptr %5, i64 16
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq i32 %78, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = icmp eq i32 %79, 1
  br i1 %101, label %112, label %102

102:                                              ; preds = %100
  %103 = add i32 %79, -3
  %104 = icmp ult i32 %103, 3
  %105 = icmp eq i32 %96, 1
  %106 = and i1 %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %102, %95
  %108 = extractelement <4 x i32> %80, i64 1
  %109 = zext nneg i32 %108 to i64
  %110 = shl i64 4, %109
  %111 = add nuw i64 %110, 128
  br label %112

112:                                              ; preds = %107, %102, %100
  %113 = phi i64 [ %111, %107 ], [ 128, %102 ], [ 128, %100 ]
  %114 = extractelement <4 x i32> %80, i64 2
  %115 = zext nneg i32 %114 to i64
  %116 = shl nuw i64 1, %115
  %117 = add i32 %79, -6
  %118 = icmp ult i32 %117, -3
  %119 = icmp ne i32 %96, 1
  %120 = or i1 %118, %119
  %121 = add nuw i64 %116, 63
  %122 = and i64 %121, -64
  %123 = select i1 %120, i64 0, i64 %122
  %124 = shl i64 4, %115
  %125 = icmp eq i32 %2, 1
  %126 = add i64 %1, 7
  %127 = and i64 %126, -8
  %128 = add i64 %127, 14784
  %129 = select i1 %125, i64 14784, i64 %128
  %130 = add i64 %124, %129
  %131 = add i64 %130, %123
  %132 = add i64 %131, %113
  br i1 %12, label %135, label %133

133:                                              ; preds = %112
  %134 = tail call ptr %11(ptr noundef %98, i64 noundef %132) #30
  br label %137

135:                                              ; preds = %112
  %136 = tail call noalias ptr @malloc(i64 noundef %132) #31
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi ptr [ %134, %133 ], [ %136, %135 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %186, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, ptr %138, i64 %132
  %142 = ptrtoint ptr %141 to i64
  %143 = and i64 %142, 63
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %141, i64 %144
  %146 = getelementptr inbounds i8, ptr %138, i64 6080
  %147 = icmp sgt i64 %132, 6079
  tail call void @llvm.assume(i1 %147)
  %148 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4
  store ptr %138, ptr %148, align 8, !tbaa.struct !42
  %149 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 1
  store ptr %141, ptr %149, align 8, !tbaa.struct !46
  %150 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 2
  store ptr %146, ptr %150, align 8, !tbaa.struct !47
  %151 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 3
  store ptr %146, ptr %151, align 8, !tbaa.struct !48
  %152 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 4
  store ptr %146, ptr %152, align 8, !tbaa.struct !49
  %153 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 5
  store ptr %145, ptr %153, align 8, !tbaa.struct !50
  %154 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 6
  store ptr %145, ptr %154, align 8, !tbaa.struct !51
  %155 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 7
  store i8 0, ptr %155, align 8, !tbaa.struct !328
  %156 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 8
  store i32 0, ptr %156, align 4, !tbaa.struct !52
  %157 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 9
  store i32 0, ptr %157, align 8, !tbaa.struct !127
  %158 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 4, i32 10
  store i32 0, ptr %158, align 4, !tbaa.struct !53
  %159 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 7
  store ptr %11, ptr %159, align 8, !tbaa.struct !324
  %160 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 7, i32 1
  store ptr %14, ptr %160, align 8, !tbaa.struct !117
  %161 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 7, i32 2
  store ptr %98, ptr %161, align 8, !tbaa.struct !118
  %162 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 9
  store i32 0, ptr %162, align 4, !tbaa !273
  %163 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %138, i64 0, i32 10
  store i32 %96, ptr %163, align 8, !tbaa !275
  %164 = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %138, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %7)
  %165 = icmp ult i64 %164, -119
  br i1 %165, label %186, label %166

166:                                              ; preds = %140
  %167 = load ptr, ptr %160, align 8, !tbaa.struct !117
  %168 = load ptr, ptr %161, align 8, !tbaa.struct !118
  %169 = load ptr, ptr %148, align 8, !tbaa !62
  %170 = icmp ugt ptr %169, %138
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr %149, align 8, !tbaa !63
  %173 = icmp ule ptr %172, %138
  br label %174

174:                                              ; preds = %171, %166
  %175 = phi i1 [ true, %166 ], [ %173, %171 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %148, i8 0, i64 72, i1 false)
  %176 = icmp eq ptr %169, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = icmp eq ptr %167, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %177
  tail call void %167(ptr noundef %168, ptr noundef nonnull %169) #30
  br label %180

180:                                              ; preds = %179, %174
  br i1 %175, label %182, label %186

181:                                              ; preds = %177
  tail call void @free(ptr noundef nonnull %169) #30
  br i1 %175, label %185, label %186

182:                                              ; preds = %180
  %183 = icmp eq ptr %167, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %182
  tail call void %167(ptr noundef %168, ptr noundef nonnull %138) #30
  br label %186

185:                                              ; preds = %182, %181
  tail call void @free(ptr noundef nonnull %138) #30
  br label %186

186:                                              ; preds = %137, %185, %184, %181, %180, %140, %6
  %187 = phi ptr [ null, %6 ], [ %138, %140 ], [ null, %180 ], [ null, %181 ], [ null, %184 ], [ null, %185 ], [ null, %137 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #30
  ret ptr %187
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_initCDict_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 5, i32 16
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %9, i64 28, i1 false), !tbaa.struct !70
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 5, i32 13
  store i32 %11, ptr %12, align 4, !tbaa !274
  %13 = icmp ne i32 %3, 1
  %14 = icmp ne ptr %1, null
  %15 = and i1 %14, %13
  %16 = icmp ne i64 %2, 0
  %17 = and i1 %16, %15
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store ptr %1, ptr %0, align 8, !tbaa !299
  br label %39

19:                                               ; preds = %6
  %20 = add i64 %2, 7
  %21 = and i64 %20, -8
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds i8, ptr %23, i64 %21
  %25 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !329
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp ugt ptr %24, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19, %28
  %33 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 7
  store i8 1, ptr %33, align 8, !tbaa !55
  br label %82

34:                                               ; preds = %28
  store ptr %24, ptr %22, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 3
  store ptr %24, ptr %35, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 4
  store ptr %24, ptr %36, align 8, !tbaa !58
  %37 = icmp eq ptr %23, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %34
  store ptr %23, ptr %0, align 8, !tbaa !299
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %39

39:                                               ; preds = %38, %18
  %40 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 1
  store i64 %2, ptr %40, align 8, !tbaa !270
  %41 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 2
  store i32 %4, ptr %41, align 8, !tbaa !300
  %42 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4
  %43 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds i8, ptr %44, i64 8704
  %46 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !329
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = icmp ugt ptr %45, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %39
  %54 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 7
  store i8 1, ptr %54, align 8, !tbaa !55
  br label %58

55:                                               ; preds = %49
  store ptr %45, ptr %43, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 3
  store ptr %45, ptr %56, align 8, !tbaa !57
  %57 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 4
  store ptr %45, ptr %57, align 8, !tbaa !58
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi ptr [ null, %53 ], [ %44, %55 ]
  %60 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !330
  %61 = getelementptr %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %61, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %62 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 6, i32 0, i32 0, i32 1
  store i32 0, ptr %62, align 8, !tbaa !167
  %63 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 6, i32 0, i32 1, i32 3
  store i32 0, ptr %63, align 4, !tbaa !172
  %64 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 6, i32 0, i32 1, i32 4
  store i32 0, ptr %64, align 8, !tbaa !173
  %65 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 6, i32 0, i32 1, i32 5
  store i32 0, ptr %65, align 4, !tbaa !174
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 22
  %67 = load i32, ptr %66, align 8, !tbaa !71
  %68 = call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %7, ptr noundef nonnull %42, ptr noundef nonnull %9, i32 noundef %67, i32 noundef 0, i32 noundef 1, i32 noundef 0), !range !331
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 6
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 3
  store i32 3, ptr %72, align 4, !tbaa !38
  %73 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 2
  store i32 1, ptr %73, align 8, !tbaa !39
  %74 = load ptr, ptr %0, align 8, !tbaa !299
  %75 = load i64, ptr %40, align 8, !tbaa !270
  %76 = load ptr, ptr %60, align 8, !tbaa !330
  %77 = call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef nonnull %71, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %42, ptr noundef nonnull %5, ptr noundef %74, i64 noundef %75, i32 noundef %4, i32 noundef 1, i32 noundef 1, ptr noundef %76)
  %78 = icmp ult i64 %77, -119
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = trunc i64 %77 to i32
  %81 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 8
  store i32 %80, ptr %81, align 8, !tbaa !283
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
  %4 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa.struct !117
  %6 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 7, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa.struct !118
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp ule ptr %13, %0
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
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !70
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 3, i32 %2
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %9, i64 0, i32 9
  store i32 %13, ptr %14, align 4, !tbaa !273
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
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !70
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 3, i32 %2
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %9, i64 0, i32 9
  store i32 %13, ptr %14, align 4, !tbaa !273
  br label %15

15:                                               ; preds = %11, %3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  %13 = load i32, ptr %6, align 8
  %14 = icmp ugt i32 %13, 14
  %15 = select i1 %14, i32 1, i32 2
  %16 = select i1 %12, i32 2, i32 %15
  %17 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = zext nneg i32 %18 to i64
  %20 = shl i64 4, %19
  %21 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !66
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
  %43 = icmp slt i64 %1, 6080
  %44 = icmp eq ptr %0, null
  %45 = or i1 %44, %43
  br i1 %45, label %74, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %0, i64 %1
  %48 = getelementptr inbounds i8, ptr %0, i64 6080
  %49 = ptrtoint ptr %47 to i64
  %50 = and i64 %49, 63
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, ptr %47, i64 %51
  %53 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4
  store ptr %0, ptr %53, align 8, !tbaa.struct !42
  %54 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 1
  store ptr %47, ptr %54, align 8, !tbaa.struct !46
  %55 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 2
  store ptr %48, ptr %55, align 8, !tbaa.struct !47
  %56 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 3
  store ptr %48, ptr %56, align 8, !tbaa.struct !48
  %57 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 4
  store ptr %48, ptr %57, align 8, !tbaa.struct !49
  %58 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 5
  store ptr %52, ptr %58, align 8, !tbaa.struct !50
  %59 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 6
  store ptr %52, ptr %59, align 8, !tbaa.struct !51
  %60 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 7
  store i8 0, ptr %60, align 8, !tbaa.struct !328
  %61 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 8
  store i32 0, ptr %61, align 4, !tbaa.struct !52
  %62 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 9
  store i32 0, ptr %62, align 8, !tbaa.struct !127
  %63 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 4, i32 10
  store i32 1, ptr %63, align 4, !tbaa.struct !53
  %64 = icmp ugt i64 %38, %1
  br i1 %64, label %74, label %65

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, i8 0, i64 224, i1 false)
  store i32 1, ptr %66, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %67, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false), !tbaa.struct !70
  %68 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 22
  store i32 %16, ptr %68, align 8, !tbaa !71
  %69 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 10
  store i32 %16, ptr %69, align 8, !tbaa !275
  %70 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %70, align 4, !tbaa !273
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
define dso_local void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !283
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %7 = alloca { i32, i32, i32, i32, i32 }, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #30
  %9 = icmp eq ptr %1, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7)
  %11 = icmp ult i64 %4, 131072
  br i1 %11, label %23, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !270
  %15 = mul i64 %14, 6
  %16 = icmp ugt i64 %15, %4
  %17 = icmp eq i64 %4, -1
  %18 = or i1 %17, %16
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !273
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %12, %10
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa.struct !70
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %26, i64 20, i1 false)
  %27 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa.struct !53
  %29 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !273
  br label %36

31:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #30
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %21, i64 noundef %4, i64 noundef %14, i32 noundef 3), !alias.scope !332
  %32 = load i32, ptr %8, align 4, !tbaa.struct !70
  %33 = getelementptr inbounds i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %33, i64 20, i1 false), !tbaa.struct !124
  %34 = getelementptr inbounds i8, ptr %8, i64 24
  %35 = load i32, ptr %34, align 4, !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #30
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i32 [ %30, %23 ], [ %21, %31 ]
  %38 = phi i32 [ %28, %23 ], [ %35, %31 ]
  %39 = phi i32 [ %25, %23 ], [ %32, %31 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %6, i8 0, i64 224, i1 false)
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa.struct !70
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %41, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !124
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 1, i32 6
  store i32 %38, ptr %42, align 4, !tbaa.struct !53
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 2
  store i64 %2, ptr %43, align 8, !tbaa.struct !52
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 2, i32 2
  store i32 %3, ptr %44, align 8, !tbaa.struct !53
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 3
  store i32 %37, ptr %45, align 4, !tbaa !38
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 22
  %47 = add i32 %38, -6
  %48 = icmp ult i32 %47, -3
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  store i32 2, ptr %46, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 19
  %51 = icmp ugt i32 %38, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  store i32 2, ptr %50, align 4, !tbaa !72
  br label %62

53:                                               ; preds = %36
  %54 = icmp ugt i32 %39, 14
  %55 = select i1 %54, i32 1, i32 2
  store i32 %55, ptr %46, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 19
  store i32 2, ptr %56, align 4, !tbaa !72
  br label %62

57:                                               ; preds = %49
  %58 = icmp ugt i32 %39, 16
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %50, align 4, !tbaa !72
  %60 = icmp ugt i32 %39, 26
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %53, %52, %57
  %63 = phi i32 [ 2, %53 ], [ %61, %57 ], [ 2, %52 ]
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 13
  store i32 %63, ptr %64, align 8, !tbaa !73
  %65 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 21
  store i64 131072, ptr %65, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i64 0, i32 29
  %67 = icmp slt i32 %37, 10
  %68 = select i1 %67, i32 2, i32 1
  store i32 %68, ptr %66, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7)
  %69 = icmp eq i64 %4, -1
  br i1 %69, label %79, label %70

70:                                               ; preds = %62
  %71 = tail call i64 @llvm.umin.i64(i64 %4, i64 524288)
  %72 = trunc i64 %71 to i32
  %73 = icmp ugt i32 %72, 1
  %74 = add nsw i32 %72, -1
  %75 = tail call i32 @llvm.ctlz.i32(i32 %74, i1 true), !range !123
  %76 = sub nuw nsw i32 32, %75
  %77 = select i1 %73, i32 %76, i32 1
  %78 = tail call i32 @llvm.umax.i32(i32 %39, i32 %77)
  store i32 %78, ptr %40, align 4, !tbaa !79
  br label %79

79:                                               ; preds = %62, %70
  %80 = phi i64 [ %4, %70 ], [ -1, %62 ]
  %81 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %6, i64 noundef %80, i32 noundef 0)
  br label %82

82:                                               ; preds = %79, %5
  %83 = phi i64 [ -32, %5 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #30
  ret i64 %83
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa.struct !70
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16, i32 1
  %9 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa.struct !53
  %11 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1
  store i32 %7, ptr %13, align 4, !tbaa.struct !70
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 6
  store i32 %10, ptr %15, align 4, !tbaa.struct !53
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 2, i32 2
  store i32 0, ptr %16, align 8, !tbaa.struct !53
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 3
  store i32 %12, ptr %17, align 4, !tbaa !38
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 22
  %19 = add i32 %10, -6
  %20 = icmp ult i32 %19, -3
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  store i32 2, ptr %18, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  %23 = icmp ugt i32 %10, 6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  store i32 2, ptr %22, align 4, !tbaa !72
  br label %34

25:                                               ; preds = %5
  %26 = icmp ugt i32 %7, 14
  %27 = select i1 %26, i32 1, i32 2
  store i32 %27, ptr %18, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  store i32 2, ptr %28, align 4, !tbaa !72
  br label %34

29:                                               ; preds = %21
  %30 = icmp ugt i32 %7, 16
  %31 = select i1 %30, i32 1, i32 2
  store i32 %31, ptr %22, align 4, !tbaa !72
  %32 = icmp ugt i32 %7, 26
  %33 = select i1 %32, i32 1, i32 2
  br label %34

34:                                               ; preds = %29, %25, %24
  %35 = phi i32 [ 2, %25 ], [ %33, %29 ], [ 2, %24 ]
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 13
  store i32 %35, ptr %36, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 21
  store i64 131072, ptr %37, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 29
  %39 = icmp slt i32 %12, 10
  %40 = select i1 %39, i32 2, i32 1
  store i32 %40, ptr %38, align 8, !tbaa !75
  %41 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0)
  br label %42

42:                                               ; preds = %2, %34
  %43 = phi i64 [ -32, %2 ], [ %41, %34 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16
  %7 = load i32, ptr %6, align 8, !tbaa.struct !70
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16, i32 1
  %9 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 5, i32 16, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa.struct !53
  %11 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i64 224, i1 false)
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1
  store i32 %7, ptr %13, align 4, !tbaa.struct !70
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false)
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 6
  store i32 %10, ptr %15, align 4, !tbaa.struct !53
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 3
  store i32 %12, ptr %16, align 4, !tbaa !38
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 22
  %18 = add i32 %10, -6
  %19 = icmp ult i32 %18, -3
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  store i32 2, ptr %17, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  %22 = icmp ugt i32 %10, 6
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  store i32 2, ptr %21, align 4, !tbaa !72
  br label %33

24:                                               ; preds = %5
  %25 = icmp ugt i32 %7, 14
  %26 = select i1 %25, i32 1, i32 2
  store i32 %26, ptr %17, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 19
  store i32 2, ptr %27, align 4, !tbaa !72
  br label %33

28:                                               ; preds = %20
  %29 = icmp ugt i32 %7, 16
  %30 = select i1 %29, i32 1, i32 2
  store i32 %30, ptr %21, align 4, !tbaa !72
  %31 = icmp ugt i32 %7, 26
  %32 = select i1 %31, i32 1, i32 2
  br label %33

33:                                               ; preds = %28, %24, %23
  %34 = phi i32 [ 2, %24 ], [ %32, %28 ], [ 2, %23 ]
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 13
  store i32 %34, ptr %35, align 8, !tbaa !73
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 21
  store i64 131072, ptr %36, align 8, !tbaa !74
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 29
  %38 = icmp slt i32 %12, 10
  %39 = select i1 %38, i32 2, i32 1
  store i32 %39, ptr %37, align 8, !tbaa !75
  %40 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0)
  br label %41

41:                                               ; preds = %2, %33
  %42 = phi i64 [ -32, %2 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #30
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nocapture noundef readonly byval(%struct.ZSTD_frameParameters) align 8 %6) local_unnamed_addr #2 {
  %8 = load i64, ptr %6, align 8
  %9 = getelementptr inbounds i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 %8, i32 %10, i64 noundef %4)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi i64 [ %11, %7 ], [ %14, %13 ]
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
  %12 = phi i64 [ %7, %6 ], [ %10, %9 ]
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
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %1)
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %20, i8 0, i64 224, i1 false)
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 3, i32 3
  store i32 3, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 3, i32 2
  store i32 1, ptr %22, align 8, !tbaa !39
  br label %23

23:                                               ; preds = %0, %17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCStream_advanced(ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 16
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
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 14
  store ptr %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 14, i32 1
  store ptr %4, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 14, i32 2
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
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !8
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %16)
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %38, i8 0, i64 224, i1 false)
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 3, i32 3
  store i32 3, ptr %39, align 4, !tbaa !38
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %16, i64 0, i32 3, i32 2
  store i32 1, ptr %40, align 8, !tbaa !39
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
define dso_local noundef i64 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %5 = load i64, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp ule ptr %13, %0
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %17 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8, !tbaa !62
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
define dso_local noundef i64 @ZSTD_CStreamOutSize() local_unnamed_addr #0 {
  ret i64 131591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i64 @ZSTD_resetCStream(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i64 %1, 0
  %4 = add i64 %1, 1
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %7 = select i1 %3, i64 0, i64 %4
  store i64 %7, ptr %6, align 8, !tbaa !111
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream_internal(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %9 = add i64 %5, 1
  store i64 %9, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !109
  %11 = icmp eq ptr %1, null
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = icmp eq i64 %2, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %16 = load i64, ptr %15, align 8, !tbaa !54
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull align 1 %1, i64 %2, i1 false)
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  store ptr %29, ptr %32, align 8, !tbaa !112
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  store ptr %29, ptr %33, align 8, !tbaa !113
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  store i64 %2, ptr %34, align 8, !tbaa !114
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  store i32 0, ptr %35, align 8, !tbaa !115
  br label %38

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr %3, ptr %37, align 8, !tbaa !108
  br label %38

38:                                               ; preds = %28, %14, %12, %31, %36
  %39 = phi i64 [ 0, %36 ], [ 0, %31 ], [ 0, %12 ], [ -64, %14 ], [ -64, %28 ]
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream_usingCDict_advanced(ptr nocapture noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %8 = add i64 %4, 1
  store i64 %8, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2
  store i64 %2, ptr %9, align 8, !tbaa.struct !52
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2, i32 2
  store i32 %3, ptr %10, align 8, !tbaa.struct !53
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr %1, ptr %11, align 8, !tbaa !108
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream_usingCDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %4, align 8, !tbaa !111
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr %1, ptr %5, align 8, !tbaa !108
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream_advanced(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2, ptr nocapture noundef readonly byval(%struct.ZSTD_parameters) align 8 %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i64 %4, 0
  %7 = getelementptr inbounds %struct.ZSTD_parameters, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %6, i1 %9, i1 false
  %11 = add i64 %4, 1
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %12, align 8, !tbaa !76
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %14 = select i1 %10, i64 0, i64 %11
  store i64 %14, ptr %13, align 8, !tbaa !111
  %15 = load i32, ptr %3, align 8, !tbaa !64
  %16 = add i32 %15, -32
  %17 = icmp ult i32 %16, -22
  br i1 %17, label %76, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = add i32 %20, -31
  %22 = icmp ult i32 %21, -25
  br i1 %22, label %76, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !66
  %26 = add i32 %25, -31
  %27 = icmp ult i32 %26, -25
  br i1 %27, label %76, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !67
  %31 = add i32 %30, -31
  %32 = icmp ult i32 %31, -30
  br i1 %32, label %76, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !68
  %36 = add i32 %35, -8
  %37 = icmp ult i32 %36, -5
  %38 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 131072
  %41 = select i1 %37, i1 true, i1 %40
  br i1 %41, label %76, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %3, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !69
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, 9
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %48, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !70
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %49, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !52
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 3
  store i32 0, ptr %50, align 4, !tbaa !38
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %51 = icmp eq ptr %1, null
  %52 = icmp eq i64 %2, 0
  %53 = or i1 %51, %52
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %56 = load i64, ptr %55, align 8, !tbaa !54
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %69, ptr nonnull align 1 %1, i64 %2, i1 false)
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  store ptr %69, ptr %72, align 8, !tbaa !112
  %73 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  store ptr %69, ptr %73, align 8, !tbaa !113
  %74 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  store i64 %2, ptr %74, align 8, !tbaa !114
  %75 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  store i32 0, ptr %75, align 8, !tbaa !115
  br label %76

76:                                               ; preds = %71, %68, %54, %47, %33, %28, %23, %18, %5, %42
  %77 = phi i64 [ -42, %42 ], [ -42, %5 ], [ -42, %18 ], [ -42, %23 ], [ -42, %28 ], [ -42, %33 ], [ 0, %71 ], [ 0, %47 ], [ -64, %54 ], [ -64, %68 ]
  ret i64 %77
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream_usingDict(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %6, align 8, !tbaa !111
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
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !38
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %16 = icmp eq ptr %1, null
  %17 = icmp eq i64 %2, 0
  %18 = or i1 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %21 = load i64, ptr %20, align 8, !tbaa !54
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull align 1 %1, i64 %2, i1 false)
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43
  store ptr %34, ptr %37, align 8, !tbaa !112
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  store ptr %34, ptr %38, align 8, !tbaa !113
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  store i64 %2, ptr %39, align 8, !tbaa !114
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  store i32 0, ptr %40, align 8, !tbaa !115
  br label %41

41:                                               ; preds = %36, %33, %19, %13
  %42 = phi i64 [ 0, %36 ], [ 0, %13 ], [ -64, %19 ], [ -64, %33 ]
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream_srcSize(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  %5 = add i64 %2, 1
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %7, align 8, !tbaa !111
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr null, ptr %8, align 8, !tbaa !108
  %9 = load i32, ptr %6, align 8, !tbaa !76
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 1
  store i32 1, ptr %12, align 4, !tbaa !77
  br label %13

13:                                               ; preds = %3, %11
  %14 = icmp slt i32 %1, -131072
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp sgt i32 %1, 22
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = icmp eq i32 %1, 0
  %19 = select i1 %18, i32 3, i32 %1
  br label %20

20:                                               ; preds = %17, %15, %13
  %21 = phi i32 [ -131072, %13 ], [ 22, %15 ], [ %19, %17 ]
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 3
  store i32 %21, ptr %22, align 4, !tbaa !38
  br i1 %10, label %23, label %25

23:                                               ; preds = %20
  %24 = select i1 %4, i64 0, i64 %5
  store i64 %24, ptr %7, align 8, !tbaa !111
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi i64 [ 0, %23 ], [ -60, %20 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %4, align 8, !tbaa !111
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr null, ptr %5, align 8, !tbaa !108
  %6 = load i32, ptr %3, align 8, !tbaa !76
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 1
  store i32 1, ptr %9, align 4, !tbaa !77
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
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 3
  store i32 %18, ptr %19, align 4, !tbaa !38
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !335
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !251
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 41
  %14 = load i64, ptr %13, align 8, !tbaa !336
  %15 = sub i64 %12, %14
  br label %26

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 33
  %18 = load i64, ptr %17, align 8, !tbaa !337
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 32
  %20 = load i64, ptr %19, align 8, !tbaa !156
  %21 = sub i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %25 = load i64, ptr %24, align 8, !tbaa !251
  br label %26

26:                                               ; preds = %23, %16, %10, %3
  %27 = phi i64 [ %4, %3 ], [ %15, %10 ], [ %25, %23 ], [ %21, %16 ]
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !212
  %7 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !211
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %386, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !215
  %13 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !214
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %386, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %386, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !76
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %24 = load i32, ptr %23, align 4, !tbaa !335
  br label %72

25:                                               ; preds = %18
  %26 = sub i64 %14, %12
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 41
  %28 = load i64, ptr %27, align 8, !tbaa !336
  %29 = add i64 %28, %26
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 15
  %32 = load i32, ptr %31, align 4, !tbaa !216
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
  %41 = load ptr, ptr %2, align 8, !tbaa !213
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  %43 = load ptr, ptr %42, align 8, !tbaa !338
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %45, label %386

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !339
  %48 = icmp eq i64 %12, %47
  br i1 %48, label %49, label %386

49:                                               ; preds = %45, %38
  store i64 %14, ptr %11, align 8, !tbaa !215
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !206
  store i64 %29, ptr %27, align 8, !tbaa !336
  %51 = load i32, ptr %30, align 8, !tbaa !340
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 6, i64 2
  br label %386

54:                                               ; preds = %25
  %55 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %29)
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %386

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %59 = load i32, ptr %58, align 4, !tbaa !335
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !206
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 16
  %65 = load i32, ptr %64, align 8, !tbaa !341
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i64, ptr %7, align 8, !tbaa !211
  %69 = load i64, ptr %5, align 8, !tbaa !212
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 42
  store i64 %70, ptr %71, align 8, !tbaa !342
  br label %72

72:                                               ; preds = %22, %63, %67
  %73 = phi i32 [ %24, %22 ], [ %59, %63 ], [ %59, %67 ]
  %74 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %75 = icmp eq i32 %73, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  %78 = load ptr, ptr %77, align 8, !tbaa.struct !206
  %79 = load ptr, ptr %2, align 8, !tbaa !213
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %386

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa.struct !208
  %84 = load i64, ptr %11, align 8, !tbaa !215
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %386

86:                                               ; preds = %81, %72
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 16
  %88 = load i32, ptr %87, align 8, !tbaa !341
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i64, ptr %7, align 8, !tbaa !211
  %92 = load i64, ptr %5, align 8, !tbaa !212
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 42
  %95 = load i64, ptr %94, align 8, !tbaa !342
  %96 = icmp eq i64 %95, %93
  br i1 %96, label %97, label %386

97:                                               ; preds = %90, %86
  %98 = load ptr, ptr %2, align 8, !tbaa !213
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %13, align 8, !tbaa !214
  %102 = getelementptr inbounds i8, ptr %98, i64 %101
  %103 = load i64, ptr %11, align 8, !tbaa !215
  %104 = getelementptr inbounds i8, ptr %98, i64 %103
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi ptr [ %102, %100 ], [ null, %97 ]
  %107 = phi ptr [ %104, %100 ], [ null, %97 ]
  %108 = load ptr, ptr %1, align 8, !tbaa !209
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i64, ptr %7, align 8, !tbaa !211
  %112 = getelementptr inbounds i8, ptr %108, i64 %111
  %113 = load i64, ptr %5, align 8, !tbaa !212
  %114 = getelementptr inbounds i8, ptr %108, i64 %113
  %115 = ptrtoint ptr %112 to i64
  br label %116

116:                                              ; preds = %110, %105
  %117 = phi i64 [ %115, %110 ], [ 0, %105 ]
  %118 = phi ptr [ %114, %110 ], [ null, %105 ]
  br i1 %75, label %119, label %128

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 41
  %121 = load i64, ptr %120, align 8, !tbaa !336
  %122 = load i64, ptr %11, align 8, !tbaa !215
  %123 = sub i64 %122, %121
  store i64 %123, ptr %11, align 8, !tbaa !215
  %124 = icmp eq ptr %107, null
  %125 = sub i64 0, %121
  %126 = getelementptr inbounds i8, ptr %107, i64 %125
  %127 = select i1 %124, ptr null, ptr %126
  store i64 0, ptr %120, align 8, !tbaa !336
  br label %128

128:                                              ; preds = %119, %116
  %129 = phi ptr [ %127, %119 ], [ %107, %116 ]
  %130 = icmp eq i32 %3, 2
  %131 = ptrtoint ptr %106 to i64
  %132 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 32
  %133 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %134 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 41
  %135 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 33
  %136 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 29
  %137 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 31
  %138 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 34
  %139 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 35
  %140 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 39
  %141 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 30
  %142 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 36
  %143 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 37
  %144 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  br label %145

145:                                              ; preds = %339, %128
  %146 = phi ptr [ %129, %128 ], [ %340, %339 ]
  %147 = phi ptr [ %118, %128 ], [ %341, %339 ]
  %148 = load i32, ptr %19, align 8, !tbaa !76
  br label %149

149:                                              ; preds = %145, %149
  switch i32 %148, label %149 [
    i32 0, label %386
    i32 1, label %153
    i32 2, label %150
  ], !llvm.loop !343

150:                                              ; preds = %149
  %151 = load i64, ptr %142, align 8, !tbaa !344
  %152 = load i64, ptr %143, align 8, !tbaa !345
  br label %316

153:                                              ; preds = %149
  br i1 %130, label %154, label %184

154:                                              ; preds = %153
  %155 = ptrtoint ptr %147 to i64
  %156 = sub i64 %117, %155
  %157 = ptrtoint ptr %146 to i64
  %158 = sub i64 %131, %157
  %159 = icmp ugt i64 %158, -71777214294589697
  br i1 %159, label %169, label %160

160:                                              ; preds = %154
  %161 = lshr i64 %158, 8
  %162 = add nuw i64 %161, %158
  %163 = icmp ult i64 %158, 131072
  %164 = sub i64 131072, %158
  %165 = lshr i64 %164, 11
  %166 = select i1 %163, i64 %165, i64 0
  %167 = add i64 %162, %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160, %154
  br label %170

170:                                              ; preds = %169, %160
  %171 = phi i64 [ -72, %169 ], [ %167, %160 ]
  %172 = icmp ult i64 %156, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, ptr %87, align 8, !tbaa !341
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %184

176:                                              ; preds = %173, %170
  %177 = load i64, ptr %132, align 8, !tbaa !156
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %147, i64 noundef %156, ptr noundef %146, i64 noundef %158)
  %181 = icmp ult i64 %180, -119
  br i1 %181, label %182, label %386

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %147, i64 %180
  store i32 1, ptr %140, align 4, !tbaa !346
  store i32 0, ptr %19, align 8, !tbaa !76
  store i64 0, ptr %144, align 8, !tbaa !111
  br label %342

184:                                              ; preds = %176, %173, %153
  %185 = load i32, ptr %74, align 4, !tbaa !335
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %184
  %188 = load i64, ptr %135, align 8, !tbaa !337
  %189 = load i64, ptr %132, align 8, !tbaa !156
  %190 = sub i64 %188, %189
  %191 = ptrtoint ptr %146 to i64
  %192 = sub i64 %131, %191
  %193 = tail call i64 @llvm.umin.i64(i64 %190, i64 %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %187
  %196 = load ptr, ptr %136, align 8, !tbaa !155
  %197 = getelementptr inbounds i8, ptr %196, i64 %189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr align 1 %146, i64 %193, i1 false)
  %198 = load i64, ptr %132, align 8, !tbaa !156
  br label %199

199:                                              ; preds = %195, %187
  %200 = phi i64 [ %189, %187 ], [ %198, %195 ]
  %201 = add i64 %200, %193
  store i64 %201, ptr %132, align 8, !tbaa !156
  %202 = icmp eq ptr %146, null
  %203 = getelementptr inbounds i8, ptr %146, i64 %193
  %204 = select i1 %202, ptr null, ptr %203
  switch i32 %3, label %223 [
    i32 0, label %205
    i32 1, label %208
  ]

205:                                              ; preds = %199
  %206 = load i64, ptr %135, align 8, !tbaa !337
  %207 = icmp ult i64 %201, %206
  br i1 %207, label %342, label %223

208:                                              ; preds = %199
  %209 = load i64, ptr %137, align 8, !tbaa !157
  %210 = icmp eq i64 %201, %209
  br i1 %210, label %342, label %223

211:                                              ; preds = %184
  switch i32 %3, label %220 [
    i32 0, label %212
    i32 1, label %218
  ]

212:                                              ; preds = %211
  %213 = ptrtoint ptr %146 to i64
  %214 = sub i64 %131, %213
  %215 = load i64, ptr %133, align 8, !tbaa !251
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  store i64 %214, ptr %134, align 8, !tbaa !336
  br label %342

218:                                              ; preds = %211
  %219 = icmp eq ptr %146, %106
  br i1 %219, label %342, label %220

220:                                              ; preds = %218, %211
  %221 = ptrtoint ptr %147 to i64
  %222 = sub i64 %117, %221
  br label %233

223:                                              ; preds = %212, %208, %205, %199
  %224 = phi ptr [ %204, %205 ], [ %204, %199 ], [ %204, %208 ], [ %146, %212 ]
  %225 = load i32, ptr %74, align 4, !tbaa !335
  %226 = icmp eq i32 %225, 0
  %227 = ptrtoint ptr %147 to i64
  %228 = sub i64 %117, %227
  br i1 %226, label %229, label %233

229:                                              ; preds = %223
  %230 = load i64, ptr %132, align 8, !tbaa !156
  %231 = load i64, ptr %137, align 8, !tbaa !157
  %232 = sub i64 %230, %231
  br label %240

233:                                              ; preds = %223, %220
  %234 = phi i64 [ %222, %220 ], [ %228, %223 ]
  %235 = phi ptr [ %146, %220 ], [ %224, %223 ]
  %236 = ptrtoint ptr %235 to i64
  %237 = sub i64 %131, %236
  %238 = load i64, ptr %133, align 8, !tbaa !251
  %239 = tail call i64 @llvm.umin.i64(i64 %237, i64 %238)
  br label %240

240:                                              ; preds = %233, %229
  %241 = phi i64 [ %228, %229 ], [ %234, %233 ]
  %242 = phi i1 [ true, %229 ], [ false, %233 ]
  %243 = phi ptr [ %224, %229 ], [ %235, %233 ]
  %244 = phi i64 [ %232, %229 ], [ %239, %233 ]
  %245 = icmp ugt i64 %244, -71777214294589697
  br i1 %245, label %255, label %246

246:                                              ; preds = %240
  %247 = lshr i64 %244, 8
  %248 = add nuw i64 %247, %244
  %249 = icmp ult i64 %244, 131072
  %250 = sub i64 131072, %244
  %251 = lshr i64 %250, 11
  %252 = select i1 %249, i64 %251, i64 0
  %253 = add i64 %248, %252
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %246, %240
  br label %256

256:                                              ; preds = %255, %246
  %257 = phi i64 [ -72, %255 ], [ %253, %246 ]
  %258 = icmp ult i64 %241, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32, ptr %87, align 8, !tbaa !341
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load ptr, ptr %138, align 8, !tbaa !347
  %264 = load i64, ptr %139, align 8, !tbaa !307
  br label %265

265:                                              ; preds = %262, %259, %256
  %266 = phi i64 [ %264, %262 ], [ %241, %259 ], [ %241, %256 ]
  %267 = phi ptr [ %263, %262 ], [ %147, %259 ], [ %147, %256 ]
  br i1 %242, label %268, label %291

268:                                              ; preds = %265
  %269 = icmp eq ptr %243, %106
  %270 = select i1 %130, i1 %269, i1 false
  %271 = zext i1 %270 to i32
  %272 = load ptr, ptr %136, align 8, !tbaa !155
  %273 = load i64, ptr %137, align 8, !tbaa !157
  %274 = getelementptr inbounds i8, ptr %272, i64 %273
  br i1 %270, label %275, label %277

275:                                              ; preds = %268
  %276 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %267, i64 noundef %266, ptr noundef %274, i64 noundef %244)
  br label %279

277:                                              ; preds = %268
  %278 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %267, i64 noundef %266, ptr noundef %274, i64 noundef %244, i32 noundef 1, i32 noundef 0)
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i64 [ %276, %275 ], [ %278, %277 ]
  %281 = icmp ult i64 %280, -119
  br i1 %281, label %282, label %386

282:                                              ; preds = %279
  store i32 %271, ptr %140, align 4, !tbaa !346
  %283 = load i64, ptr %132, align 8, !tbaa !156
  %284 = load i64, ptr %133, align 8, !tbaa !251
  %285 = add i64 %284, %283
  store i64 %285, ptr %135, align 8, !tbaa !337
  %286 = load i64, ptr %141, align 8, !tbaa !306
  %287 = icmp ugt i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i64 0, ptr %132, align 8, !tbaa !156
  store i64 %284, ptr %135, align 8, !tbaa !337
  br label %289

289:                                              ; preds = %288, %282
  %290 = phi i64 [ %283, %282 ], [ 0, %288 ]
  store i64 %290, ptr %137, align 8, !tbaa !157
  br label %306

291:                                              ; preds = %265
  %292 = getelementptr inbounds i8, ptr %243, i64 %244
  %293 = icmp eq ptr %292, %106
  %294 = select i1 %130, i1 %293, i1 false
  %295 = zext i1 %294 to i32
  br i1 %294, label %296, label %298

296:                                              ; preds = %291
  %297 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %267, i64 noundef %266, ptr noundef %243, i64 noundef %244)
  br label %300

298:                                              ; preds = %291
  %299 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %267, i64 noundef %266, ptr noundef %243, i64 noundef %244, i32 noundef 1, i32 noundef 0)
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i64 [ %297, %296 ], [ %299, %298 ]
  %302 = icmp ult i64 %301, -119
  br i1 %302, label %303, label %386

303:                                              ; preds = %300
  %304 = icmp eq ptr %243, null
  %305 = select i1 %304, ptr null, ptr %292
  store i32 %295, ptr %140, align 4, !tbaa !346
  br label %306

306:                                              ; preds = %303, %289
  %307 = phi i32 [ %271, %289 ], [ %295, %303 ]
  %308 = phi i64 [ %280, %289 ], [ %301, %303 ]
  %309 = phi ptr [ %243, %289 ], [ %305, %303 ]
  %310 = icmp eq ptr %267, %147
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = getelementptr inbounds i8, ptr %147, i64 %308
  %313 = icmp eq i32 %307, 0
  br i1 %313, label %339, label %314

314:                                              ; preds = %311
  store i32 0, ptr %19, align 8, !tbaa !76
  store i64 0, ptr %144, align 8, !tbaa !111
  br label %342

315:                                              ; preds = %306
  store i64 %308, ptr %142, align 8, !tbaa !344
  store i64 0, ptr %143, align 8, !tbaa !345
  store i32 2, ptr %19, align 8, !tbaa !76
  br label %316

316:                                              ; preds = %315, %150
  %317 = phi i64 [ %152, %150 ], [ 0, %315 ]
  %318 = phi i64 [ %151, %150 ], [ %308, %315 ]
  %319 = phi ptr [ %146, %150 ], [ %309, %315 ]
  %320 = sub i64 %318, %317
  %321 = ptrtoint ptr %147 to i64
  %322 = sub i64 %117, %321
  %323 = tail call i64 @llvm.umin.i64(i64 %322, i64 %320)
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %316
  %326 = load ptr, ptr %138, align 8, !tbaa !347
  %327 = getelementptr inbounds i8, ptr %326, i64 %317
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr align 1 %327, i64 %323, i1 false)
  %328 = load i64, ptr %143, align 8, !tbaa !345
  br label %329

329:                                              ; preds = %325, %316
  %330 = phi i64 [ %317, %316 ], [ %328, %325 ]
  %331 = getelementptr inbounds i8, ptr %147, i64 %323
  %332 = add i64 %330, %323
  store i64 %332, ptr %143, align 8, !tbaa !345
  %333 = icmp ugt i64 %320, %322
  br i1 %333, label %342, label %334

334:                                              ; preds = %329
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %142, i8 0, i64 16, i1 false)
  %335 = load i32, ptr %140, align 4, !tbaa !346
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %334
  store i32 0, ptr %19, align 8, !tbaa !76
  store i64 0, ptr %144, align 8, !tbaa !111
  br label %342

338:                                              ; preds = %334
  store i32 1, ptr %19, align 8, !tbaa !76
  br label %339

339:                                              ; preds = %338, %311
  %340 = phi ptr [ %309, %311 ], [ %319, %338 ]
  %341 = phi ptr [ %312, %311 ], [ %331, %338 ]
  br label %145, !llvm.loop !343

342:                                              ; preds = %329, %218, %208, %205, %337, %314, %217, %182
  %343 = phi ptr [ %312, %314 ], [ %183, %182 ], [ %331, %337 ], [ %147, %217 ], [ %147, %208 ], [ %147, %205 ], [ %331, %329 ], [ %147, %218 ]
  %344 = phi ptr [ %309, %314 ], [ %106, %182 ], [ %319, %337 ], [ %106, %217 ], [ %204, %208 ], [ %204, %205 ], [ %319, %329 ], [ %106, %218 ]
  %345 = ptrtoint ptr %344 to i64
  %346 = ptrtoint ptr %98 to i64
  %347 = sub i64 %345, %346
  store i64 %347, ptr %11, align 8, !tbaa !215
  %348 = ptrtoint ptr %343 to i64
  %349 = ptrtoint ptr %108 to i64
  %350 = sub i64 %348, %349
  store i64 %350, ptr %5, align 8, !tbaa !212
  %351 = load i32, ptr %140, align 4, !tbaa !346
  %352 = icmp eq i32 %351, 0
  %353 = load i32, ptr %74, align 4, !tbaa !335
  br i1 %352, label %354, label %370

354:                                              ; preds = %342
  %355 = icmp eq i32 %353, 1
  br i1 %355, label %356, label %360

356:                                              ; preds = %354
  %357 = load i64, ptr %133, align 8, !tbaa !251
  %358 = load i64, ptr %134, align 8, !tbaa !336
  %359 = sub i64 %357, %358
  br label %367

360:                                              ; preds = %354
  %361 = load i64, ptr %135, align 8, !tbaa !337
  %362 = load i64, ptr %132, align 8, !tbaa !156
  %363 = sub i64 %361, %362
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %360
  %366 = load i64, ptr %133, align 8, !tbaa !251
  br label %367

367:                                              ; preds = %356, %360, %365
  %368 = phi i64 [ %359, %356 ], [ %366, %365 ], [ %363, %360 ]
  %369 = icmp ult i64 %368, -119
  br i1 %369, label %370, label %386

370:                                              ; preds = %342, %367
  %371 = icmp eq i32 %353, 1
  br i1 %371, label %372, label %374

372:                                              ; preds = %370
  %373 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %373, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !206
  br label %374

374:                                              ; preds = %372, %370
  %375 = load i32, ptr %87, align 8, !tbaa !341
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %382

377:                                              ; preds = %374
  %378 = load i64, ptr %7, align 8, !tbaa !211
  %379 = load i64, ptr %5, align 8, !tbaa !212
  %380 = sub i64 %378, %379
  %381 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 42
  store i64 %380, ptr %381, align 8, !tbaa !342
  br label %382

382:                                              ; preds = %374, %377
  %383 = load i64, ptr %142, align 8, !tbaa !344
  %384 = load i64, ptr %143, align 8, !tbaa !345
  %385 = sub i64 %383, %384
  br label %386

386:                                              ; preds = %149, %300, %279, %179, %81, %76, %90, %45, %40, %54, %49, %367, %16, %10, %4, %382
  %387 = phi i64 [ %368, %367 ], [ %385, %382 ], [ -70, %4 ], [ -72, %10 ], [ -42, %16 ], [ -50, %45 ], [ -50, %40 ], [ %55, %54 ], [ %53, %49 ], [ -50, %90 ], [ -50, %76 ], [ -50, %81 ], [ %180, %179 ], [ -62, %149 ], [ %301, %300 ], [ %280, %279 ]
  ret i64 %387
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #30
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %6, i64 224, i1 false), !tbaa.struct !109
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !348
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa.struct !235
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa.struct !53
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !349
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !350
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !351
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !352
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %26 = tail call ptr @ZSTD_createCDict_advanced2(ptr noundef nonnull %14, i64 noundef %22, i32 noundef 1, i32 noundef %24, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %25)
  store ptr %26, ptr %17, align 8, !tbaa !350
  %27 = icmp eq ptr %26, null
  br i1 %27, label %175, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  store ptr %26, ptr %29, align 8, !tbaa !108
  br label %30

30:                                               ; preds = %28, %3, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 43, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %32, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !273
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !38
  br label %42

42:                                               ; preds = %30, %34, %38
  %43 = icmp eq i32 %1, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = add i64 %2, 1
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 %45, ptr %46, align 8, !tbaa !111
  br label %47

47:                                               ; preds = %44, %42
  %48 = icmp eq ptr %8, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  br i1 %33, label %50, label %54

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %52 = load i64, ptr %51, align 8, !tbaa !111
  %53 = add i64 %52, -1
  br label %96

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %32, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !270
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %58 = load i64, ptr %57, align 8, !tbaa !111
  %59 = add i64 %58, -1
  %60 = getelementptr inbounds i8, ptr %4, i64 48
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %4, i64 68
  %63 = load i32, ptr %62, align 4
  br label %72

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  %66 = load i64, ptr %65, align 8, !tbaa !111
  %67 = add i64 %66, -1
  %68 = getelementptr inbounds i8, ptr %4, i64 48
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds i8, ptr %4, i64 68
  %71 = load i32, ptr %70, align 4
  br i1 %33, label %96, label %72

72:                                               ; preds = %54, %64
  %73 = phi i32 [ %63, %54 ], [ %71, %64 ]
  %74 = phi i32 [ %61, %54 ], [ %69, %64 ]
  %75 = phi i64 [ %59, %54 ], [ %67, %64 ]
  %76 = phi i64 [ %56, %54 ], [ %10, %64 ]
  %77 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %32, i64 0, i32 5, i32 13
  %78 = load i32, ptr %77, align 4, !tbaa !274
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %32, i64 0, i32 5, i32 16, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !353
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i64], ptr @attachDictSizeCutoffs, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !110
  %86 = icmp uge i64 %85, %75
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
  %103 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #30
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %5, ptr noundef nonnull %4, i64 noundef %100, i64 noundef %101, i32 noundef %102)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %103, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #30
  %104 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 19
  %105 = load i32, ptr %104, align 4, !tbaa !72
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !69
  %110 = icmp ugt i32 %109, 6
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, ptr %103, align 4, !tbaa !64
  %113 = icmp ugt i32 %112, 16
  %114 = select i1 %113, i32 1, i32 2
  br label %115

115:                                              ; preds = %99, %107, %111
  %116 = phi i32 [ %105, %99 ], [ 2, %107 ], [ %114, %111 ]
  store i32 %116, ptr %104, align 4, !tbaa !72
  %117 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 13
  %118 = load i32, ptr %117, align 8, !tbaa !73
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1, i32 6
  %122 = load i32, ptr %121, align 4, !tbaa !69
  %123 = icmp ugt i32 %122, 6
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, ptr %103, align 4, !tbaa !64
  %126 = icmp ugt i32 %125, 26
  %127 = select i1 %126, i32 1, i32 2
  br label %128

128:                                              ; preds = %115, %120, %124
  %129 = phi i32 [ %118, %115 ], [ 2, %120 ], [ %127, %124 ]
  store i32 %129, ptr %117, align 8, !tbaa !73
  %130 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 22
  %131 = load i32, ptr %130, align 8, !tbaa !71
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 1, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !69
  %136 = add i32 %135, -6
  %137 = icmp ult i32 %136, -3
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %103, align 4, !tbaa !64
  %140 = icmp ugt i32 %139, 14
  %141 = select i1 %140, i32 1, i32 2
  br label %142

142:                                              ; preds = %128, %133, %138
  %143 = phi i32 [ %141, %138 ], [ %131, %128 ], [ 2, %133 ]
  store i32 %143, ptr %130, align 8, !tbaa !71
  %144 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 21
  %145 = load i64, ptr %144, align 8, !tbaa !74
  %146 = icmp eq i64 %145, 0
  %147 = select i1 %146, i64 131072, i64 %145
  store i64 %147, ptr %144, align 8, !tbaa !74
  %148 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 29
  %149 = load i32, ptr %148, align 8, !tbaa !75
  %150 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !38
  %152 = icmp eq i32 %149, 0
  %153 = icmp slt i32 %151, 10
  %154 = select i1 %153, i32 2, i32 1
  %155 = select i1 %152, i32 %154, i32 %149
  store i32 %155, ptr %148, align 8, !tbaa !75
  %156 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef nonnull %0, ptr noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef %32, ptr noundef nonnull %4, i64 noundef %100, i32 noundef 1)
  %157 = icmp ult i64 %156, -119
  br i1 %157, label %158, label %175

158:                                              ; preds = %142
  %159 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 31
  %160 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, i8 0, i64 16, i1 false)
  %161 = load i32, ptr %160, align 4, !tbaa !335
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %165 = load i64, ptr %164, align 8, !tbaa !251
  %166 = icmp eq i64 %165, %100
  %167 = zext i1 %166 to i64
  %168 = add i64 %165, %167
  br label %169

169:                                              ; preds = %158, %163
  %170 = phi i64 [ %168, %163 ], [ 0, %158 ]
  %171 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 33
  store i64 %170, ptr %171, align 8
  %172 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 36
  %173 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %172, i8 0, i64 16, i1 false)
  store i32 1, ptr %173, align 8, !tbaa !76
  %174 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 39
  store i32 0, ptr %174, align 4, !tbaa !346
  br label %175

175:                                              ; preds = %169, %142, %20
  %176 = phi i64 [ -64, %20 ], [ %156, %142 ], [ 0, %169 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #30
  ret i64 %176
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i64 noundef %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 8
  %10 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #30
  store ptr %1, ptr %9, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i64 0, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !211
  %12 = load i64, ptr %3, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i64 0, i32 2
  store i64 %12, ptr %13, align 8, !tbaa !212
  store ptr %4, ptr %10, align 8, !tbaa !213
  %14 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %10, i64 0, i32 1
  store i64 %5, ptr %14, align 8, !tbaa !214
  %15 = load i64, ptr %6, align 8, !tbaa !110
  %16 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %10, i64 0, i32 2
  store i64 %15, ptr %16, align 8, !tbaa !215
  %17 = call i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %7)
  %18 = load i64, ptr %13, align 8, !tbaa !212
  store i64 %18, ptr %3, align 8, !tbaa !110
  %19 = load i64, ptr %16, align 8, !tbaa !215
  store i64 %19, ptr %6, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #30
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ZSTD_SequencePosition, align 8
  %9 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %6)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %252

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !188
  %15 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %12, i64 noundef %6, i32 noundef %14)
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = sub i64 %2, %15
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !253
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i64 %6, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 13
  %25 = tail call i32 @ZSTD_XXH64_update(ptr nocapture noundef nonnull %24, ptr nocapture noundef %5, i64 noundef %6) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 17
  %27 = load i32, ptr %26, align 4, !tbaa !354
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  br label %41

30:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 17
  %32 = load i32, ptr %31, align 4, !tbaa !354
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  %35 = icmp eq i64 %6, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = icmp ugt i64 %17, 3
  br i1 %37, label %38, label %232

38:                                               ; preds = %36
  store i32 1, ptr %16, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  %39 = add i64 %15, 3
  %40 = add i64 %17, -3
  br label %239

41:                                               ; preds = %23, %30
  %42 = phi ptr [ %29, %23 ], [ %34, %30 ]
  %43 = phi ptr [ %26, %23 ], [ %31, %30 ]
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 29
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 2
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 18
  br label %58

58:                                               ; preds = %224, %41
  %59 = phi i64 [ %17, %41 ], [ %227, %224 ]
  %60 = phi i64 [ 0, %41 ], [ %226, %224 ]
  %61 = phi i64 [ %6, %41 ], [ %228, %224 ]
  %62 = phi ptr [ %5, %41 ], [ %229, %224 ]
  %63 = phi ptr [ %16, %41 ], [ %230, %224 ]
  %64 = load i32, ptr %43, align 4, !tbaa !354
  %65 = load i64, ptr %44, align 8, !tbaa !251
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %58
  %68 = load i64, ptr %8, align 8
  %69 = and i64 %68, 4294967295
  %70 = icmp ult i64 %69, %4
  br i1 %70, label %74, label %232

71:                                               ; preds = %74
  %72 = add i64 %75, 1
  %73 = icmp eq i64 %72, %4
  br i1 %73, label %232, label %74, !llvm.loop !355

74:                                               ; preds = %67, %71
  %75 = phi i64 [ %72, %71 ], [ %69, %67 ]
  %76 = phi i64 [ %86, %71 ], [ 0, %67 ]
  %77 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %3, i64 %75
  %78 = load i32, ptr %77, align 4, !tbaa !219
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %3, i64 %75, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !222
  %82 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %3, i64 %75, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !221
  %84 = add i32 %83, %81
  %85 = zext i32 %84 to i64
  %86 = add i64 %76, %85
  br i1 %79, label %87, label %71

87:                                               ; preds = %74
  %88 = icmp eq i32 %83, 0
  %89 = select i1 %88, i64 %86, i64 -107
  %90 = icmp ult i64 %89, -119
  br i1 %90, label %91, label %232

91:                                               ; preds = %87
  %92 = icmp ugt i64 %89, %65
  %93 = icmp ugt i64 %89, %61
  %94 = or i1 %92, %93
  br i1 %94, label %232, label %95

95:                                               ; preds = %91
  %96 = icmp eq i64 %89, %61
  br label %101

97:                                               ; preds = %58
  %98 = call i64 @llvm.umin.i64(i64 %61, i64 %65)
  %99 = icmp ule i64 %61, %65
  %100 = icmp ult i64 %98, -119
  br i1 %100, label %101, label %232

101:                                              ; preds = %97, %95
  %102 = phi i1 [ %96, %95 ], [ %99, %97 ]
  %103 = phi i64 [ %86, %95 ], [ %98, %97 ]
  %104 = zext i1 %102 to i32
  %105 = load ptr, ptr %46, align 8, !tbaa !203
  store ptr %105, ptr %47, align 8, !tbaa !204
  %106 = load ptr, ptr %45, align 8, !tbaa !190
  store ptr %106, ptr %48, align 8, !tbaa !194
  store i32 0, ptr %49, align 8, !tbaa !201
  %107 = load i32, ptr %50, align 8, !tbaa !356
  %108 = call i64 %42(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, i64 noundef %4, ptr noundef %62, i64 noundef %103, i32 noundef %107) #30, !callees !357
  %109 = icmp ult i64 %108, -119
  br i1 %109, label %110, label %232

110:                                              ; preds = %101
  %111 = icmp ult i64 %108, 7
  br i1 %111, label %112, label %123

112:                                              ; preds = %110
  %113 = add nuw nsw i64 %108, 3
  %114 = icmp ugt i64 %113, %59
  br i1 %114, label %232, label %115

115:                                              ; preds = %112
  %116 = trunc i64 %108 to i32
  %117 = shl nuw nsw i32 %116, 3
  %118 = or disjoint i32 %117, %104
  %119 = trunc i32 %118 to i16
  store i16 %119, ptr %63, align 1, !tbaa !239
  %120 = getelementptr inbounds i8, ptr %63, i64 2
  store i8 0, ptr %120, align 1, !tbaa !44
  %121 = getelementptr inbounds i8, ptr %63, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %121, ptr align 1 %62, i64 %108, i1 false)
  %122 = add i64 %113, %60
  br label %224, !llvm.loop !358

123:                                              ; preds = %110
  %124 = icmp ult i64 %59, 3
  br i1 %124, label %232, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %51, align 8, !tbaa !59
  %127 = load ptr, ptr %52, align 8, !tbaa !359
  %128 = getelementptr inbounds i8, ptr %63, i64 3
  %129 = add i64 %59, -3
  %130 = load ptr, ptr %53, align 8, !tbaa !60
  %131 = load i64, ptr %54, align 8, !tbaa !61
  %132 = load i32, ptr %55, align 8, !tbaa !8
  %133 = load ptr, ptr %46, align 8, !tbaa !203
  %134 = load ptr, ptr %47, align 8, !tbaa !204
  %135 = ptrtoint ptr %134 to i64
  %136 = ptrtoint ptr %133 to i64
  %137 = sub i64 %135, %136
  %138 = call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %128, i64 noundef %129, ptr noundef %133, i64 noundef %137, ptr noundef nonnull %45, ptr noundef %126, ptr noundef %127, ptr noundef nonnull %12, ptr noundef %130, i64 noundef %131, i32 noundef %132)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %125
  %141 = icmp eq i64 %138, -70
  %142 = icmp ule i64 %108, %129
  %143 = and i1 %142, %141
  br i1 %143, label %157, label %144

144:                                              ; preds = %140
  %145 = icmp ult i64 %138, -119
  br i1 %145, label %146, label %232

146:                                              ; preds = %144
  %147 = load i32, ptr %56, align 4, !tbaa !85
  %148 = icmp ugt i32 %147, 7
  %149 = add i32 %147, -1
  %150 = select i1 %148, i32 %149, i32 6
  %151 = zext nneg i32 %150 to i64
  %152 = lshr i64 %108, %151
  %153 = add i64 %108, -2
  %154 = sub i64 %153, %152
  %155 = icmp ult i64 %138, %154
  %156 = select i1 %155, i64 %138, i64 0
  br label %157

157:                                              ; preds = %146, %140, %125
  %158 = phi i64 [ %156, %146 ], [ 0, %140 ], [ 0, %125 ]
  %159 = load i32, ptr %57, align 8, !tbaa !255
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load ptr, ptr %48, align 8, !tbaa !194
  %163 = load ptr, ptr %45, align 8, !tbaa !190
  %164 = ptrtoint ptr %162 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  %167 = load ptr, ptr %47, align 8, !tbaa !204
  %168 = load ptr, ptr %46, align 8, !tbaa !203
  %169 = ptrtoint ptr %167 to i64
  %170 = ptrtoint ptr %168 to i64
  %171 = sub i64 %169, %170
  %172 = icmp ugt i64 %166, 31
  %173 = icmp ugt i64 %171, 9
  %174 = select i1 %172, i1 true, i1 %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %161
  %176 = call fastcc i32 @ZSTD_isRLE(ptr noundef %62, i64 noundef %108)
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %175, %161, %157
  switch i64 %158, label %203 [
    i64 0, label %179
    i64 1, label %191
  ]

179:                                              ; preds = %178
  %180 = add nuw i64 %108, 3
  %181 = icmp ugt i64 %180, %59
  br i1 %181, label %232, label %182

182:                                              ; preds = %179
  %183 = trunc i64 %108 to i32
  %184 = shl i32 %183, 3
  %185 = or disjoint i32 %184, %104
  %186 = trunc i32 %185 to i16
  store i16 %186, ptr %63, align 1, !tbaa !239
  %187 = lshr i32 %184, 16
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds i8, ptr %63, i64 2
  store i8 %188, ptr %189, align 1, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %128, ptr align 1 %62, i64 %108, i1 false)
  %190 = icmp ult i64 %108, -122
  br i1 %190, label %220, label %232

191:                                              ; preds = %178, %175
  %192 = icmp eq i64 %59, 3
  br i1 %192, label %232, label %193

193:                                              ; preds = %191
  %194 = load i8, ptr %62, align 1, !tbaa !44
  %195 = select i1 %102, i32 3, i32 2
  %196 = trunc i64 %108 to i32
  %197 = shl i32 %196, 3
  %198 = or disjoint i32 %197, %195
  %199 = trunc i32 %198 to i16
  store i16 %199, ptr %63, align 1, !tbaa !239
  %200 = lshr i32 %197, 16
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds i8, ptr %63, i64 2
  store i8 %201, ptr %202, align 1, !tbaa !44
  store i8 %194, ptr %128, align 1, !tbaa !44
  br label %220

203:                                              ; preds = %178
  %204 = load ptr, ptr %51, align 8, !tbaa !360
  %205 = load ptr, ptr %52, align 8, !tbaa !361
  store ptr %205, ptr %51, align 8, !tbaa !360
  store ptr %204, ptr %52, align 8, !tbaa !361
  %206 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %205, i64 0, i32 1, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !172
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 1, ptr %206, align 4, !tbaa !172
  br label %210

210:                                              ; preds = %209, %203
  %211 = select i1 %102, i32 5, i32 4
  %212 = trunc i64 %158 to i32
  %213 = shl i32 %212, 3
  %214 = or disjoint i32 %213, %211
  %215 = trunc i32 %214 to i16
  store i16 %215, ptr %63, align 1, !tbaa !239
  %216 = lshr i32 %213, 16
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds i8, ptr %63, i64 2
  store i8 %217, ptr %218, align 1, !tbaa !44
  %219 = add nuw i64 %158, 3
  br label %220

220:                                              ; preds = %210, %193, %182
  %221 = phi i64 [ %180, %182 ], [ %219, %210 ], [ 4, %193 ]
  %222 = add i64 %221, %60
  br i1 %102, label %234, label %223

223:                                              ; preds = %220
  store i32 0, ptr %57, align 8, !tbaa !255
  br label %224

224:                                              ; preds = %223, %115
  %225 = phi i64 [ %113, %115 ], [ %221, %223 ]
  %226 = phi i64 [ %122, %115 ], [ %222, %223 ]
  %227 = sub i64 %59, %225
  %228 = sub i64 %61, %108
  %229 = getelementptr inbounds i8, ptr %62, i64 %108
  %230 = getelementptr inbounds i8, ptr %63, i64 %225
  %231 = icmp eq i64 %228, 0
  br i1 %231, label %234, label %58

232:                                              ; preds = %182, %101, %97, %123, %179, %87, %91, %67, %112, %144, %191, %71, %36
  %233 = phi i64 [ -70, %36 ], [ -107, %71 ], [ %180, %182 ], [ %108, %101 ], [ %98, %97 ], [ -70, %123 ], [ -70, %179 ], [ %89, %87 ], [ -107, %91 ], [ -107, %67 ], [ -70, %112 ], [ %138, %144 ], [ -70, %191 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  br label %252

234:                                              ; preds = %220, %224
  %235 = phi i64 [ %226, %224 ], [ %222, %220 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #30
  %236 = icmp ult i64 %235, -119
  %237 = add i64 %235, %15
  %238 = sub i64 %17, %235
  br i1 %236, label %239, label %252

239:                                              ; preds = %38, %234
  %240 = phi i64 [ %40, %38 ], [ %238, %234 ]
  %241 = phi i64 [ %39, %38 ], [ %237, %234 ]
  %242 = load i32, ptr %18, align 4, !tbaa !253
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %239
  %245 = icmp ugt i64 %240, 3
  br i1 %245, label %246, label %252

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 13
  %248 = call i64 @ZSTD_XXH64_digest(ptr nocapture noundef nonnull %247) #34
  %249 = trunc i64 %248 to i32
  %250 = getelementptr inbounds i8, ptr %1, i64 %241
  store i32 %249, ptr %250, align 1, !tbaa !45
  %251 = add i64 %241, 4
  br label %252

252:                                              ; preds = %232, %246, %244, %239, %234, %7
  %253 = phi i64 [ %235, %234 ], [ %9, %7 ], [ %241, %239 ], [ %251, %246 ], [ -70, %244 ], [ %233, %232 ]
  ret i64 %253
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @ZSTD_writeFrameHeader(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4) unnamed_addr #8 {
  %6 = icmp ne i32 %4, 0
  %7 = zext i1 %6 to i32
  %8 = icmp ugt i32 %4, 255
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = icmp ugt i32 %4, 65535
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !87
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %13, i32 0
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !86
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !79
  %24 = shl nuw i32 1, %23
  %25 = load i32, ptr %14, align 8, !tbaa !39
  %26 = icmp ne i32 %25, 0
  %27 = zext i32 %24 to i64
  %28 = icmp uge i64 %27, %3
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
  %50 = trunc i32 %49 to i8
  %51 = icmp ult i64 %1, 18
  br i1 %51, label %95, label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %2, align 8, !tbaa !78
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -47205080, ptr %0, align 1, !tbaa !45
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i64 [ 4, %55 ], [ 0, %52 ]
  %58 = or disjoint i64 %57, 1
  %59 = getelementptr inbounds i8, ptr %0, i64 %57
  store i8 %50, ptr %59, align 1, !tbaa !44
  br i1 %29, label %63, label %60

60:                                               ; preds = %56
  %61 = or disjoint i64 %57, 2
  %62 = getelementptr inbounds i8, ptr %0, i64 %58
  store i8 %32, ptr %62, align 1, !tbaa !44
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
  %67 = getelementptr inbounds i8, ptr %0, i64 %64
  store i8 %66, ptr %67, align 1, !tbaa !44
  %68 = add nuw nsw i64 %64, 1
  br label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %0, i64 %64
  %71 = trunc i32 %4 to i16
  store i16 %71, ptr %70, align 1, !tbaa !239
  %72 = add nuw nsw i64 %64, 2
  br label %76

73:                                               ; preds = %63
  %74 = getelementptr inbounds i8, ptr %0, i64 %64
  store i32 %4, ptr %74, align 1, !tbaa !45
  %75 = add nuw nsw i64 %64, 4
  br label %76

76:                                               ; preds = %63, %73, %69, %65
  %77 = phi i64 [ %64, %63 ], [ %72, %69 ], [ %68, %65 ], [ %75, %73 ]
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
  %82 = getelementptr inbounds i8, ptr %0, i64 %77
  store i8 %80, ptr %82, align 1, !tbaa !44
  br label %95

83:                                               ; preds = %76
  %84 = getelementptr inbounds i8, ptr %0, i64 %77
  %85 = trunc i64 %3 to i16
  %86 = add i16 %85, -256
  store i16 %86, ptr %84, align 1, !tbaa !239
  %87 = add nuw nsw i64 %77, 2
  br label %95

88:                                               ; preds = %76
  %89 = getelementptr inbounds i8, ptr %0, i64 %77
  %90 = trunc i64 %3 to i32
  store i32 %90, ptr %89, align 1, !tbaa !45
  %91 = add nuw nsw i64 %77, 4
  br label %95

92:                                               ; preds = %76
  %93 = getelementptr inbounds i8, ptr %0, i64 %77
  store i64 %3, ptr %93, align 1, !tbaa !110
  %94 = add nuw nsw i64 %77, 8
  br label %95

95:                                               ; preds = %83, %88, %92, %79, %78, %42
  %96 = phi i64 [ -70, %42 ], [ %81, %79 ], [ %77, %78 ], [ %91, %88 ], [ %87, %83 ], [ %94, %92 ]
  ret i64 %96
}

declare i32 @ZSTD_XXH64_update(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @convertSequences_noRepcodes(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = add i64 %2, 1
  br label %7

7:                                                ; preds = %5, %31
  %8 = phi i64 [ 0, %5 ], [ %33, %31 ]
  %9 = phi i64 [ 0, %5 ], [ %32, %31 ]
  %10 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !219
  %12 = add i32 %11, 3
  %13 = getelementptr inbounds %struct.SeqDef_s, ptr %0, i64 %8
  store i32 %12, ptr %13, align 4, !tbaa !198
  %14 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %8, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !222
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.SeqDef_s, ptr %0, i64 %8, i32 1
  store i16 %16, ptr %17, align 4, !tbaa !195
  %18 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %8, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !221
  %20 = trunc i32 %19 to i16
  %21 = add i16 %20, -3
  %22 = getelementptr inbounds %struct.SeqDef_s, ptr %0, i64 %8, i32 2
  store i16 %21, ptr %22, align 2, !tbaa !199
  %23 = icmp ugt i32 %19, 65538
  br i1 %23, label %24, label %26, !prof !362

24:                                               ; preds = %7
  %25 = add nuw i64 %8, 1
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i64 [ %25, %24 ], [ %9, %7 ]
  %28 = icmp ugt i32 %15, 65535
  br i1 %28, label %29, label %31, !prof !362

29:                                               ; preds = %26
  %30 = add i64 %6, %8
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i64 [ %30, %29 ], [ %27, %26 ]
  %33 = add nuw i64 %8, 1
  %34 = icmp eq i64 %33, %2
  br i1 %34, label %35, label %7, !llvm.loop !363

35:                                               ; preds = %31, %3
  %36 = phi i64 [ 0, %3 ], [ %32, %31 ]
  ret i64 %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i64 @ZSTD_convertBlockSequences(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #15 {
  %5 = alloca %struct.repcodes_s, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #30
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !364
  %9 = icmp ugt i64 %8, %2
  br i1 %9, label %10, label %200

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %12, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = add i64 %2, -1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %196, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 8
  %20 = getelementptr inbounds i32, ptr %5, i64 1
  %21 = getelementptr inbounds i32, ptr %5, i64 2
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %25 = load i32, ptr %20, align 4
  %26 = load i32, ptr %21, align 8
  %27 = load ptr, ptr %23, align 8, !tbaa !194
  br label %79

28:                                               ; preds = %10
  %29 = load ptr, ptr %6, align 8, !tbaa !258
  %30 = add i64 %2, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.SeqDef_s, ptr %29, i64 %2
  %34 = getelementptr inbounds %struct.SeqDef_s, ptr %33, i64 -1
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !257
  br label %196

36:                                               ; preds = %28, %60
  %37 = phi i64 [ %62, %60 ], [ 0, %28 ]
  %38 = phi i64 [ %61, %60 ], [ 0, %28 ]
  %39 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !219
  %41 = add i32 %40, 3
  %42 = getelementptr inbounds %struct.SeqDef_s, ptr %29, i64 %37
  store i32 %41, ptr %42, align 4, !tbaa !198
  %43 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %37, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !222
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.SeqDef_s, ptr %29, i64 %37, i32 1
  store i16 %45, ptr %46, align 4, !tbaa !195
  %47 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %37, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !221
  %49 = trunc i32 %48 to i16
  %50 = add i16 %49, -3
  %51 = getelementptr inbounds %struct.SeqDef_s, ptr %29, i64 %37, i32 2
  store i16 %50, ptr %51, align 2, !tbaa !199
  %52 = icmp ugt i32 %48, 65538
  br i1 %52, label %53, label %55, !prof !362

53:                                               ; preds = %36
  %54 = add nuw i64 %37, 1
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i64 [ %54, %53 ], [ %38, %36 ]
  %57 = icmp ugt i32 %44, 65535
  br i1 %57, label %58, label %60, !prof !362

58:                                               ; preds = %55
  %59 = add i64 %37, %2
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %59, %58 ], [ %56, %55 ]
  %62 = add nuw i64 %37, 1
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %64, label %36, !llvm.loop !363

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.SeqDef_s, ptr %29, i64 %2
  %66 = getelementptr inbounds %struct.SeqDef_s, ptr %65, i64 -1
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !257
  %68 = icmp eq i64 %61, 0
  br i1 %68, label %163, label %69

69:                                               ; preds = %64
  %70 = icmp ugt i64 %61, %30
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  br i1 %70, label %76, label %73

73:                                               ; preds = %69
  store i32 2, ptr %71, align 8, !tbaa !365
  %74 = trunc i64 %61 to i32
  %75 = add i32 %74, -1
  store i32 %75, ptr %72, align 4, !tbaa !366
  br label %163

76:                                               ; preds = %69
  store i32 1, ptr %71, align 8, !tbaa !365
  %77 = sub i64 %61, %2
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %72, align 4, !tbaa !366
  br label %163

79:                                               ; preds = %18, %156
  %80 = phi ptr [ %27, %18 ], [ %135, %156 ]
  %81 = phi i32 [ %26, %18 ], [ %157, %156 ]
  %82 = phi i32 [ %25, %18 ], [ %158, %156 ]
  %83 = phi i64 [ 0, %18 ], [ %160, %156 ]
  %84 = phi i32 [ %19, %18 ], [ %159, %156 ]
  %85 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %83
  %86 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %83, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !222
  %88 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %83, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !221
  %90 = icmp eq i32 %87, 0
  %91 = load i32, ptr %85, align 4, !tbaa !219
  %92 = add i32 %91, 3
  %93 = icmp ne i32 %84, %91
  %94 = select i1 %90, i1 true, i1 %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %79
  %96 = icmp eq i32 %82, %91
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  %98 = select i1 %90, i32 1, i32 2
  br label %108

99:                                               ; preds = %95
  %100 = icmp eq i32 %81, %91
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = select i1 %90, i32 2, i32 3
  br label %108

103:                                              ; preds = %99
  br i1 %90, label %104, label %108

104:                                              ; preds = %103
  %105 = add i32 %84, -1
  %106 = icmp eq i32 %105, %91
  %107 = select i1 %106, i32 3, i32 %92
  br label %118

108:                                              ; preds = %79, %97, %101, %103
  %109 = phi i32 [ %98, %97 ], [ %102, %101 ], [ %92, %103 ], [ 1, %79 ]
  %110 = icmp ugt i32 %87, 65535
  br i1 %110, label %111, label %118, !prof !367

111:                                              ; preds = %108
  store i32 1, ptr %22, align 8, !tbaa !201
  %112 = load ptr, ptr %6, align 8, !tbaa !190
  %113 = ptrtoint ptr %80 to i64
  %114 = ptrtoint ptr %112 to i64
  %115 = sub i64 %113, %114
  %116 = lshr exact i64 %115, 3
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %24, align 4, !tbaa !202
  br label %118

118:                                              ; preds = %104, %111, %108
  %119 = phi i32 [ %107, %104 ], [ %109, %111 ], [ %109, %108 ]
  %120 = zext i32 %89 to i64
  %121 = trunc i32 %87 to i16
  %122 = getelementptr inbounds %struct.SeqDef_s, ptr %80, i64 0, i32 1
  store i16 %121, ptr %122, align 4, !tbaa !195
  store i32 %119, ptr %80, align 4, !tbaa !198
  %123 = add nsw i64 %120, -3
  %124 = icmp ugt i64 %123, 65535
  br i1 %124, label %125, label %132, !prof !362

125:                                              ; preds = %118
  store i32 2, ptr %22, align 8, !tbaa !201
  %126 = load ptr, ptr %6, align 8, !tbaa !190
  %127 = ptrtoint ptr %80 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = lshr exact i64 %129, 3
  %131 = trunc i64 %130 to i32
  store i32 %131, ptr %24, align 4, !tbaa !202
  br label %132

132:                                              ; preds = %118, %125
  %133 = trunc i64 %123 to i16
  %134 = getelementptr inbounds %struct.SeqDef_s, ptr %80, i64 0, i32 2
  store i16 %133, ptr %134, align 2, !tbaa !199
  %135 = getelementptr inbounds %struct.SeqDef_s, ptr %80, i64 1
  %136 = icmp ugt i32 %119, 3
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  store i32 %82, ptr %21, align 8, !tbaa !45
  store i32 %84, ptr %20, align 4, !tbaa !45
  %138 = add i32 %119, -3
  br label %153

139:                                              ; preds = %132
  %140 = xor i1 %90, true
  %141 = sext i1 %140 to i32
  %142 = add nsw i32 %119, %141
  switch i32 %142, label %145 [
    i32 0, label %156
    i32 3, label %143
  ]

143:                                              ; preds = %139
  %144 = add i32 %84, -1
  br label %149

145:                                              ; preds = %139
  %146 = zext i32 %142 to i64
  %147 = getelementptr inbounds i32, ptr %5, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !45
  br label %149

149:                                              ; preds = %145, %143
  %150 = phi i32 [ %144, %143 ], [ %148, %145 ]
  %151 = icmp eq i32 %142, 1
  %152 = select i1 %151, i32 %81, i32 %82
  store i32 %152, ptr %21, align 8, !tbaa !45
  store i32 %84, ptr %20, align 4, !tbaa !45
  br label %153

153:                                              ; preds = %149, %137
  %154 = phi i32 [ %152, %149 ], [ %82, %137 ]
  %155 = phi i32 [ %150, %149 ], [ %138, %137 ]
  store i32 %155, ptr %5, align 8, !tbaa !45
  br label %156

156:                                              ; preds = %139, %153
  %157 = phi i32 [ %81, %139 ], [ %154, %153 ]
  %158 = phi i32 [ %82, %139 ], [ %84, %153 ]
  %159 = phi i32 [ %84, %139 ], [ %155, %153 ]
  %160 = add nuw i64 %83, 1
  %161 = icmp eq i64 %160, %16
  br i1 %161, label %162, label %79, !llvm.loop !368

162:                                              ; preds = %156
  store ptr %135, ptr %23, align 8, !tbaa !194
  br label %163

163:                                              ; preds = %162, %64, %76, %73
  %164 = icmp ugt i64 %2, 1
  %165 = and i1 %164, %14
  br i1 %165, label %166, label %196

166:                                              ; preds = %163
  %167 = icmp ugt i64 %2, 3
  br i1 %167, label %168, label %183

168:                                              ; preds = %166
  %169 = add i64 %2, 4294967294
  %170 = add i64 %2, 4294967292
  %171 = and i64 %170, 4294967295
  %172 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !219
  %174 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %173, ptr %174, align 8, !tbaa !45
  %175 = add i64 %2, 4294967293
  %176 = and i64 %175, 4294967295
  %177 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !219
  %179 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %178, ptr %179, align 4, !tbaa !45
  %180 = and i64 %169, 4294967295
  %181 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !219
  store i32 %182, ptr %5, align 8, !tbaa !45
  br label %196

183:                                              ; preds = %166
  %184 = icmp eq i64 %2, 3
  br i1 %184, label %185, label %192

185:                                              ; preds = %183
  %186 = load i32, ptr %5, align 8, !tbaa !45
  %187 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 %186, ptr %187, align 8, !tbaa !45
  %188 = load i32, ptr %1, align 4, !tbaa !219
  %189 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %188, ptr %189, align 4, !tbaa !45
  %190 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 1
  %191 = load i32, ptr %190, align 4, !tbaa !219
  store i32 %191, ptr %5, align 8, !tbaa !45
  br label %196

192:                                              ; preds = %183
  %193 = getelementptr inbounds i32, ptr %5, i64 1
  %194 = load <2 x i32>, ptr %5, align 8, !tbaa !45
  store <2 x i32> %194, ptr %193, align 4, !tbaa !45
  %195 = load i32, ptr %1, align 4, !tbaa !219
  store i32 %195, ptr %5, align 8, !tbaa !45
  br label %196

196:                                              ; preds = %15, %32, %168, %192, %185, %163
  %197 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !359
  %199 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %198, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %199, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  br label %200

200:                                              ; preds = %4, %196
  %201 = phi i64 [ 0, %196 ], [ -107, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #30
  ret i64 %201
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.BlockSummary) align 8 %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #16 {
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
  %13 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %11, i32 1
  %14 = load i64, ptr %13, align 1, !tbaa !110
  %15 = add i64 %14, %12
  %16 = icmp ugt i64 %14, 4294967295
  br i1 %16, label %17, label %56

17:                                               ; preds = %7
  %18 = or disjoint i64 %11, 1
  %19 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %18, i32 1
  %20 = load i64, ptr %19, align 1, !tbaa !110
  %21 = add i64 %20, %8
  %22 = icmp ugt i64 %20, 4294967295
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = or disjoint i64 %11, 2
  %25 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %24, i32 1
  %26 = load i64, ptr %25, align 1, !tbaa !110
  %27 = add i64 %26, %9
  %28 = icmp ugt i64 %26, 4294967295
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = or disjoint i64 %11, 3
  %31 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %30, i32 1
  %32 = load i64, ptr %31, align 1, !tbaa !110
  %33 = add i64 %32, %10
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = add i64 %11, 4
  %37 = icmp ult i64 %36, %6
  br i1 %37, label %7, label %38, !llvm.loop !369

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
  %48 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %1, i64 %47, i32 1
  %49 = load i64, ptr %48, align 1, !tbaa !110
  %50 = add i64 %49, %46
  %51 = icmp ugt i64 %49, 4294967295
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = add i64 %47, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %55, label %45, !llvm.loop !370

55:                                               ; preds = %52, %38
  store i64 -107, ptr %0, align 8, !tbaa !371
  br label %71

56:                                               ; preds = %29, %23, %17, %7, %45
  %57 = phi i64 [ %39, %45 ], [ %8, %7 ], [ %21, %17 ], [ %21, %23 ], [ %21, %29 ]
  %58 = phi i64 [ %40, %45 ], [ %9, %7 ], [ %9, %17 ], [ %27, %23 ], [ %27, %29 ]
  %59 = phi i64 [ %41, %45 ], [ %10, %7 ], [ %10, %17 ], [ %10, %23 ], [ %33, %29 ]
  %60 = phi i64 [ %47, %45 ], [ %11, %7 ], [ %18, %17 ], [ %24, %23 ], [ %30, %29 ]
  %61 = phi i64 [ %50, %45 ], [ %15, %7 ], [ %15, %17 ], [ %15, %23 ], [ %15, %29 ]
  %62 = add i64 %60, 1
  store i64 %62, ptr %0, align 8, !tbaa !371
  %63 = add i64 %58, %57
  %64 = add i64 %63, %59
  %65 = add i64 %64, %61
  %66 = and i64 %65, 4294967295
  %67 = getelementptr inbounds %struct.BlockSummary, ptr %0, i64 0, i32 2
  store i64 %66, ptr %67, align 8, !tbaa !373
  %68 = lshr i64 %65, 32
  %69 = add nuw nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.BlockSummary, ptr %0, i64 0, i32 1
  store i64 %69, ptr %70, align 8, !tbaa !374
  br label %71

71:                                               ; preds = %56, %55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequencesAndLiterals(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #2 {
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %37, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %8)
  %13 = icmp ult i64 %12, -119
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !354
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 18
  %21 = load i32, ptr %20, align 8, !tbaa !375
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !253
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !188
  %30 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %15, i64 noundef %8, i32 noundef %29)
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
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
define internal fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 29
  %11 = load i32, ptr %10, align 8, !tbaa !356
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  switch i64 %4, label %24 [
    i64 0, label %173
    i64 1, label %14
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !222
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = icmp ugt i64 %2, 2
  br i1 %19, label %20, label %173

20:                                               ; preds = %18
  store i16 1, ptr %1, align 1, !tbaa !239
  %21 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 0, ptr %21, align 1, !tbaa !44
  %22 = getelementptr inbounds i8, ptr %1, i64 3
  %23 = add i64 %2, -3
  br label %24

24:                                               ; preds = %20, %8, %14
  %25 = phi ptr [ %1, %14 ], [ %1, %8 ], [ %22, %20 ]
  %26 = phi i64 [ 0, %14 ], [ 0, %8 ], [ 3, %20 ]
  %27 = phi i64 [ %2, %14 ], [ %2, %8 ], [ %23, %20 ]
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 18
  br label %40

40:                                               ; preds = %152, %24
  %41 = phi ptr [ %25, %24 ], [ %163, %152 ]
  %42 = phi i64 [ %26, %24 ], [ %162, %152 ]
  %43 = phi i64 [ %7, %24 ], [ %127, %152 ]
  %44 = phi i64 [ %6, %24 ], [ %141, %152 ]
  %45 = phi ptr [ %5, %24 ], [ %142, %152 ]
  %46 = phi i64 [ %4, %24 ], [ %125, %152 ]
  %47 = phi ptr [ %3, %24 ], [ %124, %152 ]
  %48 = phi i64 [ %27, %24 ], [ %164, %152 ]
  %49 = icmp eq i64 %46, 0
  br i1 %49, label %165, label %50

50:                                               ; preds = %40
  %51 = icmp ugt i64 %46, 3
  br i1 %51, label %52, label %85

52:                                               ; preds = %50
  %53 = add i64 %46, -3
  br label %54

54:                                               ; preds = %82, %52
  %55 = phi i64 [ %68, %82 ], [ 0, %52 ]
  %56 = phi i64 [ %74, %82 ], [ 0, %52 ]
  %57 = phi i64 [ %80, %82 ], [ 0, %52 ]
  %58 = phi i64 [ %83, %82 ], [ 0, %52 ]
  %59 = phi i64 [ %62, %82 ], [ 0, %52 ]
  %60 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %47, i64 %58, i32 1
  %61 = load i64, ptr %60, align 1, !tbaa !110, !noalias !376
  %62 = add i64 %61, %59
  %63 = icmp ugt i64 %61, 4294967295
  br i1 %63, label %64, label %102

64:                                               ; preds = %54
  %65 = or disjoint i64 %58, 1
  %66 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %47, i64 %65, i32 1
  %67 = load i64, ptr %66, align 1, !tbaa !110, !noalias !376
  %68 = add i64 %67, %55
  %69 = icmp ugt i64 %67, 4294967295
  br i1 %69, label %70, label %102

70:                                               ; preds = %64
  %71 = or disjoint i64 %58, 2
  %72 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %47, i64 %71, i32 1
  %73 = load i64, ptr %72, align 1, !tbaa !110, !noalias !376
  %74 = add i64 %73, %56
  %75 = icmp ugt i64 %73, 4294967295
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = or disjoint i64 %58, 3
  %78 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %47, i64 %77, i32 1
  %79 = load i64, ptr %78, align 1, !tbaa !110, !noalias !376
  %80 = add i64 %79, %57
  %81 = icmp ugt i64 %79, 4294967295
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = add i64 %58, 4
  %84 = icmp ult i64 %83, %53
  br i1 %84, label %54, label %85, !llvm.loop !369

85:                                               ; preds = %82, %50
  %86 = phi i64 [ 0, %50 ], [ %68, %82 ]
  %87 = phi i64 [ 0, %50 ], [ %74, %82 ]
  %88 = phi i64 [ 0, %50 ], [ %80, %82 ]
  %89 = phi i64 [ 0, %50 ], [ %83, %82 ]
  %90 = phi i64 [ 0, %50 ], [ %62, %82 ]
  %91 = icmp ult i64 %89, %46
  br i1 %91, label %92, label %173

92:                                               ; preds = %85, %99
  %93 = phi i64 [ %97, %99 ], [ %90, %85 ]
  %94 = phi i64 [ %100, %99 ], [ %89, %85 ]
  %95 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %47, i64 %94, i32 1
  %96 = load i64, ptr %95, align 1, !tbaa !110, !noalias !376
  %97 = add i64 %96, %93
  %98 = icmp ugt i64 %96, 4294967295
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = add i64 %94, 1
  %101 = icmp eq i64 %100, %46
  br i1 %101, label %173, label %92, !llvm.loop !370

102:                                              ; preds = %54, %64, %70, %76, %92
  %103 = phi i64 [ %86, %92 ], [ %68, %76 ], [ %68, %70 ], [ %68, %64 ], [ %55, %54 ]
  %104 = phi i64 [ %87, %92 ], [ %74, %76 ], [ %74, %70 ], [ %56, %64 ], [ %56, %54 ]
  %105 = phi i64 [ %88, %92 ], [ %80, %76 ], [ %57, %70 ], [ %57, %64 ], [ %57, %54 ]
  %106 = phi i64 [ %94, %92 ], [ %77, %76 ], [ %71, %70 ], [ %65, %64 ], [ %58, %54 ]
  %107 = phi i64 [ %97, %92 ], [ %62, %76 ], [ %62, %70 ], [ %62, %64 ], [ %62, %54 ]
  %108 = add i64 %106, 1
  %109 = add i64 %104, %103
  %110 = add i64 %109, %105
  %111 = add i64 %110, %107
  %112 = and i64 %111, 4294967295
  %113 = lshr i64 %111, 32
  %114 = icmp eq i64 %108, %46
  %115 = icmp ult i64 %108, -119
  br i1 %115, label %116, label %173

116:                                              ; preds = %102
  %117 = icmp ugt i64 %112, %44
  br i1 %117, label %173, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %29, align 8, !tbaa !203
  store ptr %119, ptr %30, align 8, !tbaa !204
  %120 = load ptr, ptr %28, align 8, !tbaa !190
  store ptr %120, ptr %31, align 8, !tbaa !194
  store i32 0, ptr %32, align 8, !tbaa !201
  %121 = tail call i64 @ZSTD_convertBlockSequences(ptr noundef %0, ptr noundef nonnull %47, i64 noundef %108, i32 noundef %13), !range !379
  %122 = icmp ult i64 %121, -119
  br i1 %122, label %123, label %173

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %47, i64 %108
  %125 = sub i64 %46, %108
  %126 = add nuw nsw i64 %113, %112
  %127 = sub i64 %43, %126
  %128 = icmp ult i64 %48, 3
  br i1 %128, label %173, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds i8, ptr %41, i64 3
  %131 = add i64 %48, -3
  %132 = load ptr, ptr %33, align 8, !tbaa !59
  %133 = load ptr, ptr %34, align 8, !tbaa !359
  %134 = load ptr, ptr %35, align 8, !tbaa !60
  %135 = load i64, ptr %36, align 8, !tbaa !61
  %136 = load i32, ptr %37, align 8, !tbaa !8
  %137 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %130, i64 noundef %131, ptr noundef %45, i64 noundef %112, ptr noundef nonnull %28, ptr noundef %132, ptr noundef %133, ptr noundef nonnull %9, ptr noundef %134, i64 noundef %135, i32 noundef %136)
  %138 = icmp ult i64 %137, -119
  br i1 %138, label %139, label %173

139:                                              ; preds = %129
  %140 = load i64, ptr %38, align 8, !tbaa !251
  %141 = sub i64 %44, %112
  %142 = getelementptr inbounds i8, ptr %45, i64 %112
  %143 = add i64 %137, -1
  %144 = icmp ult i64 %143, %140
  br i1 %144, label %145, label %173

145:                                              ; preds = %139
  %146 = load ptr, ptr %33, align 8, !tbaa !360
  %147 = load ptr, ptr %34, align 8, !tbaa !361
  store ptr %147, ptr %33, align 8, !tbaa !360
  store ptr %146, ptr %34, align 8, !tbaa !361
  %148 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %147, i64 0, i32 1, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !172
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, ptr %148, align 4, !tbaa !172
  br label %152

152:                                              ; preds = %151, %145
  %153 = select i1 %114, i32 5, i32 4
  %154 = trunc i64 %137 to i32
  %155 = shl i32 %154, 3
  %156 = or disjoint i32 %155, %153
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %41, align 1, !tbaa !239
  %158 = lshr i32 %155, 16
  %159 = trunc i32 %158 to i8
  %160 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 %159, ptr %160, align 1, !tbaa !44
  %161 = add nuw i64 %137, 3
  %162 = add i64 %161, %42
  %163 = getelementptr inbounds i8, ptr %41, i64 %161
  %164 = sub i64 %48, %161
  store i32 0, ptr %39, align 8, !tbaa !255
  br i1 %114, label %165, label %40

165:                                              ; preds = %152, %40
  %166 = phi i64 [ %42, %40 ], [ %162, %152 ]
  %167 = phi i64 [ %43, %40 ], [ %127, %152 ]
  %168 = phi i64 [ %44, %40 ], [ %141, %152 ]
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = icmp eq i64 %167, 0
  %172 = select i1 %171, i64 %166, i64 -107
  br label %173

173:                                              ; preds = %85, %139, %123, %116, %102, %118, %129, %99, %18, %170, %165, %8
  %174 = phi i64 [ -107, %8 ], [ -107, %165 ], [ %172, %170 ], [ -70, %18 ], [ -107, %99 ], [ -107, %85 ], [ %137, %129 ], [ %121, %118 ], [ %108, %102 ], [ -107, %116 ], [ -70, %123 ], [ -49, %139 ]
  ret i64 %174
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_flushStream(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !335, !noalias !380
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !206
  %9 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %3, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !215
  br label %12

11:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !380
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i64 [ %10, %7 ], [ 0, %11 ]
  %14 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %3, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !214
  %15 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_endStream(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !335, !noalias !383
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !206
  br label %10

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !383
  br label %10

10:                                               ; preds = %7, %9
  %11 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !308
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 39
  %19 = load i32, ptr %18, align 4, !tbaa !346
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 3, i64 0
  br i1 %20, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !253
  %25 = shl i32 %24, 2
  %26 = add i32 %24, 536870912
  %27 = icmp ult i32 %26, 1073741824
  br i1 %27, label %29, label %28, !nosanitize !145

28:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 12) #33, !nosanitize !145
  unreachable, !nosanitize !145

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
define dso_local void @ZSTD_getCParams(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local void @ZSTD_getParams(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_parameters) align 4 %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #18 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 0, ptr %7, align 4, !alias.scope !386
  %8 = getelementptr inbounds %struct.ZSTD_parameters, ptr %0, i64 0, i32 1
  store i32 1, ptr %8, align 4, !tbaa !389, !alias.scope !386
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_registerSequenceProducer(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 28
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 3, i32 27
  store ptr %5, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_CCtxParams_registerSequenceProducer(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 28
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i64 0, i32 27
  store ptr %5, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

declare i64 @ZSTD_ldm_getTableSize(ptr noundef byval(%struct.ldmParams_t) align 8) local_unnamed_addr #11

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 18
  store i32 1, ptr %8, align 8, !tbaa !255
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false), !tbaa.struct !109
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  tail call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %10, ptr noundef nonnull %14) #30
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !79
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = icmp eq i64 %2, 0
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 %2)
  %22 = select i1 %20, i64 1, i64 %21
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 21
  %24 = load i64, ptr %23, align 8, !tbaa !74
  %25 = tail call i64 @llvm.umin.i64(i64 %24, i64 %22)
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !83
  %28 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 28
  %29 = load ptr, ptr %28, align 8, !tbaa !129
  %30 = icmp ne ptr %29, null
  %31 = icmp eq i32 %27, 3
  %32 = or i1 %31, %30
  %33 = select i1 %32, i64 3, i64 4
  %34 = udiv i64 %25, %33
  %35 = icmp eq i32 %5, 1
  br i1 %35, label %36, label %62

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !99
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = icmp ugt i64 %25, -71777214294589697
  br i1 %41, label %51, label %42

42:                                               ; preds = %40
  %43 = lshr i64 %25, 8
  %44 = add nuw i64 %43, %25
  %45 = icmp ult i64 %25, 131072
  %46 = sub i64 131072, %25
  %47 = lshr i64 %46, 11
  %48 = select i1 %45, i64 %47, i64 0
  %49 = add i64 %44, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %40
  br label %52

52:                                               ; preds = %42, %51
  %53 = phi i64 [ -72, %51 ], [ %49, %42 ]
  %54 = add i64 %53, 1
  br label %55

55:                                               ; preds = %36, %52
  %56 = phi i64 [ 0, %36 ], [ %54, %52 ]
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 15
  %58 = load i32, ptr %57, align 4, !tbaa !98
  %59 = icmp eq i32 %58, 0
  %60 = add i64 %25, %22
  %61 = select i1 %59, i64 %60, i64 0
  br label %62

62:                                               ; preds = %15, %55
  %63 = phi i64 [ %56, %55 ], [ 0, %15 ]
  %64 = phi i64 [ %61, %55 ], [ 0, %15 ]
  %65 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %25) #30
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !244
  %69 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !248
  %71 = ptrtoint ptr %68 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = icmp ugt i64 %73, 3653238784
  %75 = icmp ugt i64 %3, 624951295
  %76 = or i1 %75, %74
  br i1 %76, label %81, label %77

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 19
  %79 = load i32, ptr %78, align 4, !tbaa !391
  %80 = icmp eq i32 %79, 0
  br label %81

81:                                               ; preds = %77, %62
  %82 = phi i1 [ true, %62 ], [ %80, %77 ]
  %83 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 16
  %84 = load i64, ptr %83, align 8, !tbaa !54
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 22
  %88 = load i32, ptr %87, align 8, !tbaa !71
  %89 = load ptr, ptr %28, align 8, !tbaa !129
  %90 = icmp ne ptr %89, null
  %91 = zext i1 %90 to i32
  %92 = load i64, ptr %23, align 8, !tbaa !74
  %93 = tail call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %16, ptr noundef nonnull %10, i32 noundef %86, i32 noundef %88, i64 noundef %64, i64 noundef %63, i64 noundef %2, i32 noundef %91, i64 noundef %92)
  %94 = icmp ult i64 %93, -119
  br i1 %94, label %95, label %719

95:                                               ; preds = %81
  %96 = load i64, ptr %83, align 8, !tbaa !54
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 8
  %100 = load i32, ptr %99, align 4, !tbaa !392
  %101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %100, i32 1), !nosanitize !145
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !145
  br i1 %102, label %103, label %104, !nosanitize !145

103:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 0) #33, !nosanitize !145
  unreachable, !nosanitize !145

104:                                              ; preds = %98
  %105 = extractvalue { i32, i1 } %101, 0, !nosanitize !145
  store i32 %105, ptr %99, align 4, !tbaa !392
  br label %106

106:                                              ; preds = %104, %95
  %107 = load ptr, ptr %7, align 8, !tbaa !62
  %108 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !63
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %107 to i64
  %112 = sub i64 %110, %111
  %113 = icmp ult i64 %112, %93
  %114 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  %116 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !393
  %118 = mul i64 %93, 3
  %119 = ptrtoint ptr %117 to i64
  %120 = ptrtoint ptr %115 to i64
  %121 = sub i64 %119, %120
  %122 = icmp ult i64 %121, %118
  br i1 %122, label %127, label %123

123:                                              ; preds = %106
  %124 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 8
  %125 = load i32, ptr %124, align 4, !tbaa !392
  %126 = icmp sgt i32 %125, 128
  br label %127

127:                                              ; preds = %106, %123
  %128 = phi i1 [ false, %106 ], [ %126, %123 ]
  %129 = select i1 %113, i1 true, i1 %128
  br i1 %129, label %130, label %186

130:                                              ; preds = %127
  br i1 %97, label %131, label %719

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14
  %133 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 1
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 14, i32 2
  %136 = load ptr, ptr %135, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %137 = icmp eq ptr %107, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = icmp eq ptr %134, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %138
  tail call void %134(ptr noundef %136, ptr noundef nonnull %107) #30
  br label %142

141:                                              ; preds = %138
  tail call void @free(ptr noundef nonnull %107) #30
  br label %142

142:                                              ; preds = %131, %140, %141
  %143 = load ptr, ptr %132, align 8, !tbaa !40
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %135, align 8
  %147 = tail call ptr %143(ptr noundef %146, i64 noundef %93) #30
  br label %150

148:                                              ; preds = %142
  %149 = tail call noalias ptr @malloc(i64 noundef %93) #31
  br label %150

150:                                              ; preds = %148, %145
  %151 = phi ptr [ %147, %145 ], [ %149, %148 ]
  %152 = icmp eq ptr %151, null
  br i1 %152, label %719, label %153

153:                                              ; preds = %150
  store ptr %151, ptr %7, align 8, !tbaa !62
  %154 = getelementptr inbounds i8, ptr %151, i64 %93
  store ptr %154, ptr %108, align 8, !tbaa !63
  %155 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 2
  store ptr %151, ptr %155, align 8, !tbaa !56
  %156 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %151, ptr %156, align 8, !tbaa !58
  %157 = ptrtoint ptr %154 to i64
  %158 = and i64 %157, 63
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %154, i64 %159
  %161 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %160, ptr %161, align 8, !tbaa !394
  %162 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 9
  store i32 0, ptr %162, align 8, !tbaa !329
  %163 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 10
  store i32 0, ptr %163, align 4, !tbaa !395
  store ptr %151, ptr %114, align 8, !tbaa !57
  store ptr %160, ptr %116, align 8, !tbaa !393
  %164 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 7
  store i8 0, ptr %164, align 8, !tbaa !55
  %165 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 8
  store i32 0, ptr %165, align 4, !tbaa !392
  %166 = getelementptr inbounds i8, ptr %151, i64 5632
  %167 = icmp slt i64 %93, 5632
  br i1 %167, label %168, label %169

168:                                              ; preds = %153
  store i8 1, ptr %164, align 8, !tbaa !55
  store ptr null, ptr %66, align 8, !tbaa !59
  br label %719

169:                                              ; preds = %153
  store ptr %166, ptr %155, align 8, !tbaa !56
  store ptr %166, ptr %114, align 8, !tbaa !57
  store ptr %166, ptr %156, align 8, !tbaa !58
  store ptr %151, ptr %66, align 8, !tbaa !59
  %170 = getelementptr inbounds i8, ptr %151, i64 11264
  %171 = icmp ult i64 %93, 11264
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  store i8 1, ptr %164, align 8, !tbaa !55
  %173 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  store ptr null, ptr %173, align 8, !tbaa !359
  br label %719

174:                                              ; preds = %169
  store ptr %170, ptr %155, align 8, !tbaa !56
  store ptr %170, ptr %114, align 8, !tbaa !57
  store ptr %170, ptr %156, align 8, !tbaa !58
  %175 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  store ptr %166, ptr %175, align 8, !tbaa !359
  %176 = icmp ult i64 %93, 20184
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  store i8 1, ptr %164, align 8, !tbaa !55
  %178 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  store ptr null, ptr %178, align 8, !tbaa !60
  br label %719

179:                                              ; preds = %174
  %180 = getelementptr inbounds i8, ptr %151, i64 20184
  store ptr %180, ptr %155, align 8, !tbaa !56
  store ptr %180, ptr %156, align 8, !tbaa !58
  %181 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  store ptr %170, ptr %181, align 8, !tbaa !60
  %182 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  store i64 8920, ptr %182, align 8, !tbaa !61
  store ptr %180, ptr %114, align 8, !tbaa !57
  %183 = getelementptr inbounds i8, ptr %154, i64 %159
  store ptr %183, ptr %116, align 8, !tbaa !393
  %184 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 7
  store i8 0, ptr %184, align 8, !tbaa !55
  %185 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 9
  br label %198

186:                                              ; preds = %127
  %187 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !56
  %189 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !329
  %191 = and i64 %110, 63
  %192 = sub nsw i64 0, %191
  store ptr %188, ptr %114, align 8, !tbaa !57
  %193 = getelementptr inbounds i8, ptr %109, i64 %192
  store ptr %193, ptr %116, align 8, !tbaa !393
  %194 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 7
  store i8 0, ptr %194, align 8, !tbaa !55
  %195 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 9
  %196 = icmp ugt i32 %190, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  store i32 1, ptr %195, align 8, !tbaa !329
  br label %198

198:                                              ; preds = %179, %186, %197
  %199 = phi ptr [ %185, %179 ], [ %195, %186 ], [ %195, %197 ]
  %200 = phi ptr [ %184, %179 ], [ %194, %186 ], [ %194, %197 ]
  %201 = phi i1 [ true, %179 ], [ %82, %186 ], [ %82, %197 ]
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 2
  %204 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %204, ptr noundef nonnull align 4 dereferenceable(28) %16, i64 28, i1 false), !tbaa.struct !70
  %205 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 25
  %206 = load i32, ptr %205, align 8, !tbaa !104
  %207 = icmp eq i32 %206, 1
  %208 = zext i1 %207 to i32
  %209 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 18
  store i32 %208, ptr %209, align 8, !tbaa !396
  %210 = add i64 %2, 1
  %211 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 10
  store i64 %210, ptr %211, align 8, !tbaa !111
  %212 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 11
  %213 = icmp eq i64 %2, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %212, i8 0, i64 16, i1 false)
  br i1 %213, label %214, label %216

214:                                              ; preds = %198
  %215 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 2
  store i32 0, ptr %215, align 8, !tbaa !397
  br label %216

216:                                              ; preds = %198, %214
  %217 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 9
  store i64 %25, ptr %217, align 8, !tbaa !251
  %218 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 13
  %219 = tail call i32 @ZSTD_XXH64_reset(ptr nocapture noundef nonnull %218, i64 noundef 0) #30
  store i32 1, ptr %0, align 8, !tbaa !175
  %220 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %220, align 8, !tbaa !188
  %221 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 7
  store i64 0, ptr %221, align 8, !tbaa !189
  %222 = load ptr, ptr %66, align 8, !tbaa !59
  %223 = getelementptr i8, ptr %222, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %223, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %224 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %222, i64 0, i32 1
  store i32 0, ptr %224, align 8, !tbaa !167
  %225 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %222, i64 0, i32 1, i32 3
  store i32 0, ptr %225, align 4, !tbaa !172
  %226 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %222, i64 0, i32 1, i32 4
  store i32 0, ptr %226, align 8, !tbaa !173
  %227 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %222, i64 0, i32 1, i32 5
  store i32 0, ptr %227, align 4, !tbaa !174
  %228 = load i32, ptr %87, align 8, !tbaa !71
  %229 = tail call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %67, ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %228, i32 noundef %4, i32 noundef %202, i32 noundef 1), !range !331
  %230 = icmp ult i64 %229, -119
  br i1 %230, label %231, label %719

231:                                              ; preds = %216
  %232 = shl i64 %34, 3
  %233 = add i64 %232, 63
  %234 = and i64 %233, -64
  %235 = load i32, ptr %199, align 8, !tbaa !329
  %236 = icmp ult i32 %235, 2
  br i1 %236, label %237, label %257

237:                                              ; preds = %231
  %238 = icmp eq i32 %235, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %237
  %240 = load ptr, ptr %203, align 8, !tbaa !56
  %241 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %240, ptr %241, align 8, !tbaa !58
  %242 = load ptr, ptr %108, align 8, !tbaa !63
  %243 = ptrtoint ptr %242 to i64
  %244 = and i64 %243, 63
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %242, i64 %245
  %247 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %246, ptr %247, align 8, !tbaa !394
  %248 = ptrtoint ptr %240 to i64
  %249 = sub i64 0, %248
  %250 = and i64 %249, 63
  %251 = getelementptr inbounds i8, ptr %240, i64 %250
  %252 = icmp ugt ptr %251, %242
  br i1 %252, label %273, label %253

253:                                              ; preds = %239
  store ptr %251, ptr %203, align 8, !tbaa !56
  store ptr %251, ptr %114, align 8, !tbaa !57
  %254 = icmp eq i64 %250, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %253
  store ptr %251, ptr %241, align 8, !tbaa !58
  br label %256

256:                                              ; preds = %255, %253, %237
  store i32 2, ptr %199, align 8, !tbaa !329
  br label %257

257:                                              ; preds = %256, %231
  %258 = phi i32 [ 2, %256 ], [ %235, %231 ]
  %259 = icmp eq i64 %234, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %257
  %261 = load ptr, ptr %116, align 8, !tbaa !393
  %262 = sub i64 0, %234
  %263 = getelementptr inbounds i8, ptr %261, i64 %262
  %264 = load ptr, ptr %114, align 8, !tbaa !57
  %265 = icmp ult ptr %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %273

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %269 = load ptr, ptr %268, align 8, !tbaa !58
  %270 = icmp ult ptr %263, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  store ptr %263, ptr %268, align 8, !tbaa !58
  br label %272

272:                                              ; preds = %271, %267
  store ptr %263, ptr %116, align 8, !tbaa !393
  br label %273

273:                                              ; preds = %239, %257, %266, %272
  %274 = phi i32 [ %258, %257 ], [ %258, %266 ], [ %258, %272 ], [ 0, %239 ]
  %275 = phi ptr [ null, %257 ], [ null, %266 ], [ %263, %272 ], [ null, %239 ]
  %276 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  store ptr %275, ptr %276, align 8, !tbaa !258
  %277 = load i32, ptr %10, align 8, !tbaa !73
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %376

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 13, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !92
  %282 = zext nneg i32 %281 to i64
  %283 = shl i64 8, %282
  %284 = add nuw i64 %283, 63
  %285 = and i64 %284, -64
  %286 = icmp ult i32 %274, 2
  br i1 %286, label %287, label %305

287:                                              ; preds = %279
  %288 = load ptr, ptr %203, align 8, !tbaa !56
  %289 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %288, ptr %289, align 8, !tbaa !58
  %290 = load ptr, ptr %108, align 8, !tbaa !63
  %291 = ptrtoint ptr %290 to i64
  %292 = and i64 %291, 63
  %293 = sub nsw i64 0, %292
  %294 = getelementptr inbounds i8, ptr %290, i64 %293
  %295 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %294, ptr %295, align 8, !tbaa !394
  %296 = ptrtoint ptr %288 to i64
  %297 = sub i64 0, %296
  %298 = and i64 %297, 63
  %299 = getelementptr inbounds i8, ptr %288, i64 %298
  %300 = icmp ugt ptr %299, %290
  br i1 %300, label %320, label %301

301:                                              ; preds = %287
  store ptr %299, ptr %203, align 8, !tbaa !56
  store ptr %299, ptr %114, align 8, !tbaa !57
  %302 = icmp eq i64 %298, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %301
  store ptr %299, ptr %289, align 8, !tbaa !58
  br label %304

304:                                              ; preds = %303, %301
  store i32 2, ptr %199, align 8, !tbaa !329
  br label %305

305:                                              ; preds = %304, %279
  %306 = icmp eq i64 %285, 0
  br i1 %306, label %320, label %307

307:                                              ; preds = %305
  %308 = load ptr, ptr %116, align 8, !tbaa !393
  %309 = sub i64 0, %285
  %310 = getelementptr inbounds i8, ptr %308, i64 %309
  %311 = load ptr, ptr %114, align 8, !tbaa !57
  %312 = icmp ult ptr %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %320

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %316 = load ptr, ptr %315, align 8, !tbaa !58
  %317 = icmp ult ptr %310, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  store ptr %310, ptr %315, align 8, !tbaa !58
  br label %319

319:                                              ; preds = %318, %314
  store ptr %310, ptr %116, align 8, !tbaa !393
  br label %320

320:                                              ; preds = %287, %305, %313, %319
  %321 = phi ptr [ null, %305 ], [ null, %313 ], [ %310, %319 ], [ null, %287 ]
  %322 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %323 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 1
  store ptr %321, ptr %323, align 8, !tbaa !398
  tail call void @llvm.memset.p0.i64(ptr align 4 %321, i8 0, i64 %283, i1 false)
  %324 = mul i64 %65, 12
  %325 = add i64 %324, 63
  %326 = and i64 %325, -64
  %327 = load i32, ptr %199, align 8, !tbaa !329
  %328 = icmp ult i32 %327, 2
  br i1 %328, label %329, label %349

329:                                              ; preds = %320
  %330 = icmp eq i32 %327, 0
  br i1 %330, label %331, label %348

331:                                              ; preds = %329
  %332 = load ptr, ptr %203, align 8, !tbaa !56
  %333 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %332, ptr %333, align 8, !tbaa !58
  %334 = load ptr, ptr %108, align 8, !tbaa !63
  %335 = ptrtoint ptr %334 to i64
  %336 = and i64 %335, 63
  %337 = sub nsw i64 0, %336
  %338 = getelementptr inbounds i8, ptr %334, i64 %337
  %339 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %338, ptr %339, align 8, !tbaa !394
  %340 = ptrtoint ptr %332 to i64
  %341 = sub i64 0, %340
  %342 = and i64 %341, 63
  %343 = getelementptr inbounds i8, ptr %332, i64 %342
  %344 = icmp ugt ptr %343, %334
  br i1 %344, label %365, label %345

345:                                              ; preds = %331
  store ptr %343, ptr %203, align 8, !tbaa !56
  store ptr %343, ptr %114, align 8, !tbaa !57
  %346 = icmp eq i64 %342, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %345
  store ptr %343, ptr %333, align 8, !tbaa !58
  br label %348

348:                                              ; preds = %347, %345, %329
  store i32 2, ptr %199, align 8, !tbaa !329
  br label %349

349:                                              ; preds = %348, %320
  %350 = phi i32 [ 2, %348 ], [ %327, %320 ]
  %351 = icmp eq i64 %326, 0
  br i1 %351, label %365, label %352

352:                                              ; preds = %349
  %353 = load ptr, ptr %116, align 8, !tbaa !393
  %354 = sub i64 0, %326
  %355 = getelementptr inbounds i8, ptr %353, i64 %354
  %356 = load ptr, ptr %114, align 8, !tbaa !57
  %357 = icmp ult ptr %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %365

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %361 = load ptr, ptr %360, align 8, !tbaa !58
  %362 = icmp ult ptr %355, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  store ptr %355, ptr %360, align 8, !tbaa !58
  br label %364

364:                                              ; preds = %363, %359
  store ptr %355, ptr %116, align 8, !tbaa !393
  br label %365

365:                                              ; preds = %331, %349, %358, %364
  %366 = phi i32 [ %350, %349 ], [ %350, %358 ], [ %350, %364 ], [ 0, %331 ]
  %367 = phi ptr [ null, %349 ], [ null, %358 ], [ %355, %364 ], [ null, %331 ]
  %368 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 22
  store ptr %367, ptr %368, align 8, !tbaa !399
  %369 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 23
  store i64 %65, ptr %369, align 8, !tbaa !400
  %370 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 5
  store i64 0, ptr %370, align 8
  %371 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 1
  store ptr @.str, ptr %371, align 8, !tbaa !248
  %372 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 2
  store ptr @.str, ptr %372, align 8, !tbaa !245
  %373 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 3
  store i32 2, ptr %373, align 8, !tbaa !247
  %374 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 0, i32 4
  store i32 2, ptr %374, align 4, !tbaa !246
  store ptr getelementptr inbounds ([2 x i8], ptr @.str, i64 1, i64 0), ptr %322, align 8, !tbaa !244
  %375 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 2
  store i32 0, ptr %375, align 8, !tbaa !401
  br label %376

376:                                              ; preds = %365, %273
  %377 = phi i32 [ %366, %365 ], [ %274, %273 ]
  %378 = load ptr, ptr %28, align 8, !tbaa !129
  %379 = icmp eq ptr %378, null
  br i1 %379, label %428, label %380

380:                                              ; preds = %376
  %381 = udiv i64 %25, 3
  %382 = lshr i64 %25, 10
  %383 = add nuw nsw i64 %382, 2
  %384 = add nuw nsw i64 %383, %381
  %385 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 49
  store i64 %384, ptr %385, align 8, !tbaa !402
  %386 = shl i64 %384, 4
  %387 = add i64 %386, 63
  %388 = and i64 %387, -64
  %389 = icmp ult i32 %377, 2
  br i1 %389, label %390, label %408

390:                                              ; preds = %380
  %391 = load ptr, ptr %203, align 8, !tbaa !56
  %392 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %391, ptr %392, align 8, !tbaa !58
  %393 = load ptr, ptr %108, align 8, !tbaa !63
  %394 = ptrtoint ptr %393 to i64
  %395 = and i64 %394, 63
  %396 = sub nsw i64 0, %395
  %397 = getelementptr inbounds i8, ptr %393, i64 %396
  %398 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %397, ptr %398, align 8, !tbaa !394
  %399 = ptrtoint ptr %391 to i64
  %400 = sub i64 0, %399
  %401 = and i64 %400, 63
  %402 = getelementptr inbounds i8, ptr %391, i64 %401
  %403 = icmp ugt ptr %402, %393
  br i1 %403, label %424, label %404

404:                                              ; preds = %390
  store ptr %402, ptr %203, align 8, !tbaa !56
  store ptr %402, ptr %114, align 8, !tbaa !57
  %405 = icmp eq i64 %401, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %404
  store ptr %402, ptr %392, align 8, !tbaa !58
  br label %407

407:                                              ; preds = %406, %404
  store i32 2, ptr %199, align 8, !tbaa !329
  br label %408

408:                                              ; preds = %407, %380
  %409 = phi i32 [ 2, %407 ], [ %377, %380 ]
  %410 = icmp eq i64 %388, 0
  br i1 %410, label %424, label %411

411:                                              ; preds = %408
  %412 = load ptr, ptr %116, align 8, !tbaa !393
  %413 = sub i64 0, %388
  %414 = getelementptr inbounds i8, ptr %412, i64 %413
  %415 = load ptr, ptr %114, align 8, !tbaa !57
  %416 = icmp ult ptr %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %411
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %424

418:                                              ; preds = %411
  %419 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %420 = load ptr, ptr %419, align 8, !tbaa !58
  %421 = icmp ult ptr %414, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  store ptr %414, ptr %419, align 8, !tbaa !58
  br label %423

423:                                              ; preds = %422, %418
  store ptr %414, ptr %116, align 8, !tbaa !393
  br label %424

424:                                              ; preds = %390, %408, %417, %423
  %425 = phi i32 [ %409, %408 ], [ %409, %417 ], [ %409, %423 ], [ 0, %390 ]
  %426 = phi ptr [ null, %408 ], [ null, %417 ], [ %414, %423 ], [ null, %390 ]
  %427 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 48
  store ptr %426, ptr %427, align 8, !tbaa !403
  br label %428

428:                                              ; preds = %424, %376
  %429 = phi i32 [ %425, %424 ], [ %377, %376 ]
  %430 = icmp ult i32 %429, 3
  br i1 %430, label %431, label %451

431:                                              ; preds = %428
  %432 = icmp eq i32 %429, 0
  br i1 %432, label %433, label %450

433:                                              ; preds = %431
  %434 = load ptr, ptr %203, align 8, !tbaa !56
  %435 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %434, ptr %435, align 8, !tbaa !58
  %436 = load ptr, ptr %108, align 8, !tbaa !63
  %437 = ptrtoint ptr %436 to i64
  %438 = and i64 %437, 63
  %439 = sub nsw i64 0, %438
  %440 = getelementptr inbounds i8, ptr %436, i64 %439
  %441 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %440, ptr %441, align 8, !tbaa !394
  %442 = ptrtoint ptr %434 to i64
  %443 = sub i64 0, %442
  %444 = and i64 %443, 63
  %445 = getelementptr inbounds i8, ptr %434, i64 %444
  %446 = icmp ugt ptr %445, %436
  br i1 %446, label %473, label %447

447:                                              ; preds = %433
  store ptr %445, ptr %203, align 8, !tbaa !56
  store ptr %445, ptr %114, align 8, !tbaa !57
  %448 = icmp eq i64 %444, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %447
  store ptr %445, ptr %435, align 8, !tbaa !58
  br label %450

450:                                              ; preds = %449, %447, %431
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %451

451:                                              ; preds = %450, %428
  %452 = phi i32 [ 3, %450 ], [ %429, %428 ]
  %453 = icmp eq i64 %25, -32
  br i1 %453, label %467, label %454

454:                                              ; preds = %451
  %455 = load ptr, ptr %116, align 8, !tbaa !393
  %456 = sub i64 -32, %25
  %457 = getelementptr inbounds i8, ptr %455, i64 %456
  %458 = load ptr, ptr %114, align 8, !tbaa !57
  %459 = icmp ult ptr %457, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %454
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %467

461:                                              ; preds = %454
  %462 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %463 = load ptr, ptr %462, align 8, !tbaa !58
  %464 = icmp ult ptr %457, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %461
  store ptr %457, ptr %462, align 8, !tbaa !58
  br label %466

466:                                              ; preds = %465, %461
  store ptr %457, ptr %116, align 8, !tbaa !393
  br label %467

467:                                              ; preds = %451, %460, %466
  %468 = phi ptr [ %457, %466 ], [ null, %460 ], [ null, %451 ]
  %469 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  store ptr %468, ptr %469, align 8, !tbaa !404
  %470 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 8
  store i64 %25, ptr %470, align 8, !tbaa !405
  %471 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 28
  store i32 %5, ptr %471, align 8, !tbaa !176
  %472 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 30
  store i64 %64, ptr %472, align 8, !tbaa !306
  br label %495

473:                                              ; preds = %433
  %474 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  store ptr null, ptr %474, align 8, !tbaa !404
  %475 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 8
  store i64 %25, ptr %475, align 8, !tbaa !405
  %476 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 28
  store i32 %5, ptr %476, align 8, !tbaa !176
  %477 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 30
  store i64 %64, ptr %477, align 8, !tbaa !306
  %478 = load ptr, ptr %203, align 8, !tbaa !56
  %479 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %478, ptr %479, align 8, !tbaa !58
  %480 = load ptr, ptr %108, align 8, !tbaa !63
  %481 = ptrtoint ptr %480 to i64
  %482 = and i64 %481, 63
  %483 = sub nsw i64 0, %482
  %484 = getelementptr inbounds i8, ptr %480, i64 %483
  %485 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %484, ptr %485, align 8, !tbaa !394
  %486 = ptrtoint ptr %478 to i64
  %487 = sub i64 0, %486
  %488 = and i64 %487, 63
  %489 = getelementptr inbounds i8, ptr %478, i64 %488
  %490 = icmp ugt ptr %489, %480
  br i1 %490, label %515, label %491

491:                                              ; preds = %473
  store ptr %489, ptr %203, align 8, !tbaa !56
  store ptr %489, ptr %114, align 8, !tbaa !57
  %492 = icmp eq i64 %488, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %491
  store ptr %489, ptr %479, align 8, !tbaa !58
  br label %494

494:                                              ; preds = %493, %491
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %495

495:                                              ; preds = %467, %494
  %496 = phi i32 [ 3, %494 ], [ %452, %467 ]
  %497 = icmp eq i64 %64, 0
  br i1 %497, label %511, label %498

498:                                              ; preds = %495
  %499 = load ptr, ptr %116, align 8, !tbaa !393
  %500 = sub i64 0, %64
  %501 = getelementptr inbounds i8, ptr %499, i64 %500
  %502 = load ptr, ptr %114, align 8, !tbaa !57
  %503 = icmp ult ptr %501, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %498
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %511

505:                                              ; preds = %498
  %506 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %507 = load ptr, ptr %506, align 8, !tbaa !58
  %508 = icmp ult ptr %501, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %505
  store ptr %501, ptr %506, align 8, !tbaa !58
  br label %510

510:                                              ; preds = %509, %505
  store ptr %501, ptr %116, align 8, !tbaa !393
  br label %511

511:                                              ; preds = %495, %504, %510
  %512 = phi ptr [ %501, %510 ], [ null, %504 ], [ null, %495 ]
  %513 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 29
  store ptr %512, ptr %513, align 8, !tbaa !155
  %514 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 35
  store i64 %63, ptr %514, align 8, !tbaa !307
  br label %535

515:                                              ; preds = %473
  %516 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %516, align 8, !tbaa !155
  %517 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 35
  store i64 %63, ptr %517, align 8, !tbaa !307
  %518 = load ptr, ptr %203, align 8, !tbaa !56
  %519 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %518, ptr %519, align 8, !tbaa !58
  %520 = load ptr, ptr %108, align 8, !tbaa !63
  %521 = ptrtoint ptr %520 to i64
  %522 = and i64 %521, 63
  %523 = sub nsw i64 0, %522
  %524 = getelementptr inbounds i8, ptr %520, i64 %523
  %525 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %524, ptr %525, align 8, !tbaa !394
  %526 = ptrtoint ptr %518 to i64
  %527 = sub i64 0, %526
  %528 = and i64 %527, 63
  %529 = getelementptr inbounds i8, ptr %518, i64 %528
  %530 = icmp ugt ptr %529, %520
  br i1 %530, label %551, label %531

531:                                              ; preds = %515
  store ptr %529, ptr %203, align 8, !tbaa !56
  store ptr %529, ptr %114, align 8, !tbaa !57
  %532 = icmp eq i64 %528, 0
  br i1 %532, label %534, label %533

533:                                              ; preds = %531
  store ptr %529, ptr %519, align 8, !tbaa !58
  br label %534

534:                                              ; preds = %533, %531
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %535

535:                                              ; preds = %511, %534
  %536 = phi i32 [ 3, %534 ], [ %496, %511 ]
  %537 = icmp eq i64 %63, 0
  br i1 %537, label %551, label %538

538:                                              ; preds = %535
  %539 = load ptr, ptr %116, align 8, !tbaa !393
  %540 = sub i64 0, %63
  %541 = getelementptr inbounds i8, ptr %539, i64 %540
  %542 = load ptr, ptr %114, align 8, !tbaa !57
  %543 = icmp ult ptr %541, %542
  br i1 %543, label %544, label %545

544:                                              ; preds = %538
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %551

545:                                              ; preds = %538
  %546 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %547 = load ptr, ptr %546, align 8, !tbaa !58
  %548 = icmp ult ptr %541, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %545
  store ptr %541, ptr %546, align 8, !tbaa !58
  br label %550

550:                                              ; preds = %549, %545
  store ptr %541, ptr %116, align 8, !tbaa !393
  br label %551

551:                                              ; preds = %515, %535, %544, %550
  %552 = phi i32 [ %536, %535 ], [ %536, %544 ], [ %536, %550 ], [ 0, %515 ]
  %553 = phi ptr [ null, %535 ], [ null, %544 ], [ %541, %550 ], [ null, %515 ]
  %554 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 34
  store ptr %553, ptr %554, align 8, !tbaa !347
  %555 = load i32, ptr %10, align 8, !tbaa !73
  %556 = icmp eq i32 %555, 1
  br i1 %556, label %557, label %601

557:                                              ; preds = %551
  %558 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 13, i32 1
  %559 = load i32, ptr %558, align 4, !tbaa !92
  %560 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 13, i32 2
  %561 = load i32, ptr %560, align 8, !tbaa !94
  %562 = sub i32 %559, %561
  %563 = zext nneg i32 %562 to i64
  %564 = shl nuw i64 1, %563
  %565 = icmp ult i32 %552, 3
  br i1 %565, label %566, label %584

566:                                              ; preds = %557
  %567 = load ptr, ptr %203, align 8, !tbaa !56
  %568 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %567, ptr %568, align 8, !tbaa !58
  %569 = load ptr, ptr %108, align 8, !tbaa !63
  %570 = ptrtoint ptr %569 to i64
  %571 = and i64 %570, 63
  %572 = sub nsw i64 0, %571
  %573 = getelementptr inbounds i8, ptr %569, i64 %572
  %574 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %573, ptr %574, align 8, !tbaa !394
  %575 = ptrtoint ptr %567 to i64
  %576 = sub i64 0, %575
  %577 = and i64 %576, 63
  %578 = getelementptr inbounds i8, ptr %567, i64 %577
  %579 = icmp ugt ptr %578, %569
  br i1 %579, label %597, label %580

580:                                              ; preds = %566
  store ptr %578, ptr %203, align 8, !tbaa !56
  store ptr %578, ptr %114, align 8, !tbaa !57
  %581 = icmp eq i64 %577, 0
  br i1 %581, label %583, label %582

582:                                              ; preds = %580
  store ptr %578, ptr %568, align 8, !tbaa !58
  br label %583

583:                                              ; preds = %582, %580
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %584

584:                                              ; preds = %583, %557
  %585 = load ptr, ptr %116, align 8, !tbaa !393
  %586 = sub i64 0, %564
  %587 = getelementptr inbounds i8, ptr %585, i64 %586
  %588 = load ptr, ptr %114, align 8, !tbaa !57
  %589 = icmp ult ptr %587, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %584
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %597

591:                                              ; preds = %584
  %592 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %593 = load ptr, ptr %592, align 8, !tbaa !58
  %594 = icmp ult ptr %587, %593
  br i1 %594, label %595, label %596

595:                                              ; preds = %591
  store ptr %587, ptr %592, align 8, !tbaa !58
  br label %596

596:                                              ; preds = %595, %591
  store ptr %587, ptr %116, align 8, !tbaa !393
  br label %597

597:                                              ; preds = %566, %590, %596
  %598 = phi ptr [ null, %590 ], [ %587, %596 ], [ null, %566 ]
  %599 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21, i32 3
  store ptr %598, ptr %599, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %598, i8 0, i64 %564, i1 false)
  %600 = load i32, ptr %199, align 8, !tbaa !329
  br label %601

601:                                              ; preds = %597, %551
  %602 = phi i32 [ %600, %597 ], [ %552, %551 ]
  %603 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24
  %604 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %603, i8 0, i64 40, i1 false)
  store i64 %34, ptr %604, align 8, !tbaa !364
  %605 = icmp ult i32 %602, 3
  br i1 %605, label %606, label %626

606:                                              ; preds = %601
  %607 = icmp eq i32 %602, 0
  br i1 %607, label %608, label %625

608:                                              ; preds = %606
  %609 = load ptr, ptr %203, align 8, !tbaa !56
  %610 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %609, ptr %610, align 8, !tbaa !58
  %611 = load ptr, ptr %108, align 8, !tbaa !63
  %612 = ptrtoint ptr %611 to i64
  %613 = and i64 %612, 63
  %614 = sub nsw i64 0, %613
  %615 = getelementptr inbounds i8, ptr %611, i64 %614
  %616 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %615, ptr %616, align 8, !tbaa !394
  %617 = ptrtoint ptr %609 to i64
  %618 = sub i64 0, %617
  %619 = and i64 %618, 63
  %620 = getelementptr inbounds i8, ptr %609, i64 %619
  %621 = icmp ugt ptr %620, %611
  br i1 %621, label %644, label %622

622:                                              ; preds = %608
  store ptr %620, ptr %203, align 8, !tbaa !56
  store ptr %620, ptr %114, align 8, !tbaa !57
  %623 = icmp eq i64 %619, 0
  br i1 %623, label %625, label %624

624:                                              ; preds = %622
  store ptr %620, ptr %610, align 8, !tbaa !58
  br label %625

625:                                              ; preds = %624, %622, %606
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %626

626:                                              ; preds = %625, %601
  %627 = icmp ugt i64 %33, %25
  br i1 %627, label %641, label %628

628:                                              ; preds = %626
  %629 = load ptr, ptr %116, align 8, !tbaa !393
  %630 = sub nsw i64 0, %34
  %631 = getelementptr inbounds i8, ptr %629, i64 %630
  %632 = load ptr, ptr %114, align 8, !tbaa !57
  %633 = icmp ult ptr %631, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %628
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %641

635:                                              ; preds = %628
  %636 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %637 = load ptr, ptr %636, align 8, !tbaa !58
  %638 = icmp ult ptr %631, %637
  br i1 %638, label %639, label %640

639:                                              ; preds = %635
  store ptr %631, ptr %636, align 8, !tbaa !58
  br label %640

640:                                              ; preds = %639, %635
  store ptr %631, ptr %116, align 8, !tbaa !393
  br label %641

641:                                              ; preds = %626, %634, %640
  %642 = phi ptr [ %631, %640 ], [ null, %634 ], [ null, %626 ]
  %643 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 4
  store ptr %642, ptr %643, align 8, !tbaa !407
  br label %663

644:                                              ; preds = %608
  %645 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 4
  store ptr null, ptr %645, align 8, !tbaa !407
  %646 = load ptr, ptr %203, align 8, !tbaa !56
  %647 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %646, ptr %647, align 8, !tbaa !58
  %648 = load ptr, ptr %108, align 8, !tbaa !63
  %649 = ptrtoint ptr %648 to i64
  %650 = and i64 %649, 63
  %651 = sub nsw i64 0, %650
  %652 = getelementptr inbounds i8, ptr %648, i64 %651
  %653 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %652, ptr %653, align 8, !tbaa !394
  %654 = ptrtoint ptr %646 to i64
  %655 = sub i64 0, %654
  %656 = and i64 %655, 63
  %657 = getelementptr inbounds i8, ptr %646, i64 %656
  %658 = icmp ugt ptr %657, %648
  br i1 %658, label %681, label %659

659:                                              ; preds = %644
  store ptr %657, ptr %203, align 8, !tbaa !56
  store ptr %657, ptr %114, align 8, !tbaa !57
  %660 = icmp eq i64 %656, 0
  br i1 %660, label %662, label %661

661:                                              ; preds = %659
  store ptr %657, ptr %647, align 8, !tbaa !58
  br label %662

662:                                              ; preds = %661, %659
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %663

663:                                              ; preds = %641, %662
  %664 = icmp ugt i64 %33, %25
  br i1 %664, label %678, label %665

665:                                              ; preds = %663
  %666 = load ptr, ptr %116, align 8, !tbaa !393
  %667 = sub nsw i64 0, %34
  %668 = getelementptr inbounds i8, ptr %666, i64 %667
  %669 = load ptr, ptr %114, align 8, !tbaa !57
  %670 = icmp ult ptr %668, %669
  br i1 %670, label %671, label %672

671:                                              ; preds = %665
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %678

672:                                              ; preds = %665
  %673 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %674 = load ptr, ptr %673, align 8, !tbaa !58
  %675 = icmp ult ptr %668, %674
  br i1 %675, label %676, label %677

676:                                              ; preds = %672
  store ptr %668, ptr %673, align 8, !tbaa !58
  br label %677

677:                                              ; preds = %676, %672
  store ptr %668, ptr %116, align 8, !tbaa !393
  br label %678

678:                                              ; preds = %663, %671, %677
  %679 = phi ptr [ %668, %677 ], [ null, %671 ], [ null, %663 ]
  %680 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 5
  store ptr %679, ptr %680, align 8, !tbaa !408
  br label %700

681:                                              ; preds = %644
  %682 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 5
  store ptr null, ptr %682, align 8, !tbaa !408
  %683 = load ptr, ptr %203, align 8, !tbaa !56
  %684 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  store ptr %683, ptr %684, align 8, !tbaa !58
  %685 = load ptr, ptr %108, align 8, !tbaa !63
  %686 = ptrtoint ptr %685 to i64
  %687 = and i64 %686, 63
  %688 = sub nsw i64 0, %687
  %689 = getelementptr inbounds i8, ptr %685, i64 %688
  %690 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 6
  store ptr %689, ptr %690, align 8, !tbaa !394
  %691 = ptrtoint ptr %683 to i64
  %692 = sub i64 0, %691
  %693 = and i64 %692, 63
  %694 = getelementptr inbounds i8, ptr %683, i64 %693
  %695 = icmp ugt ptr %694, %685
  br i1 %695, label %715, label %696

696:                                              ; preds = %681
  store ptr %694, ptr %203, align 8, !tbaa !56
  store ptr %694, ptr %114, align 8, !tbaa !57
  %697 = icmp eq i64 %693, 0
  br i1 %697, label %699, label %698

698:                                              ; preds = %696
  store ptr %694, ptr %684, align 8, !tbaa !58
  br label %699

699:                                              ; preds = %698, %696
  store i32 3, ptr %199, align 8, !tbaa !329
  br label %700

700:                                              ; preds = %678, %699
  %701 = icmp ugt i64 %33, %25
  br i1 %701, label %715, label %702

702:                                              ; preds = %700
  %703 = load ptr, ptr %116, align 8, !tbaa !393
  %704 = sub nsw i64 0, %34
  %705 = getelementptr inbounds i8, ptr %703, i64 %704
  %706 = load ptr, ptr %114, align 8, !tbaa !57
  %707 = icmp ult ptr %705, %706
  br i1 %707, label %708, label %709

708:                                              ; preds = %702
  store i8 1, ptr %200, align 8, !tbaa !55
  br label %715

709:                                              ; preds = %702
  %710 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 8, i32 4
  %711 = load ptr, ptr %710, align 8, !tbaa !58
  %712 = icmp ult ptr %705, %711
  br i1 %712, label %713, label %714

713:                                              ; preds = %709
  store ptr %705, ptr %710, align 8, !tbaa !58
  br label %714

714:                                              ; preds = %713, %709
  store ptr %705, ptr %116, align 8, !tbaa !393
  br label %715

715:                                              ; preds = %681, %700, %708, %714
  %716 = phi ptr [ null, %700 ], [ null, %708 ], [ %705, %714 ], [ null, %681 ]
  %717 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 6
  store ptr %716, ptr %717, align 8, !tbaa !409
  %718 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 19
  store i32 1, ptr %718, align 4, !tbaa !391
  br label %719

719:                                              ; preds = %150, %177, %172, %168, %130, %216, %81, %715
  %720 = phi i64 [ 0, %715 ], [ %229, %216 ], [ %93, %81 ], [ -64, %177 ], [ -64, %172 ], [ -64, %168 ], [ -64, %130 ], [ -64, %150 ]
  ret i64 %720
}

declare i32 @ZSTD_XXH64_reset(ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_reset_matchState(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #14 {
  %8 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !410
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
  %23 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 4, %25
  br label %27

27:                                               ; preds = %15, %17, %22
  %28 = phi i64 [ %26, %22 ], [ 0, %17 ], [ 0, %15 ]
  %29 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !66
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw i64 1, %31
  %33 = icmp eq i32 %6, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !68
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, ptr %2, align 4, !tbaa !64
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 17)
  br label %41

41:                                               ; preds = %38, %27, %34
  %42 = phi i32 [ 0, %34 ], [ 0, %27 ], [ %40, %38 ]
  %43 = icmp eq i32 %42, 0
  %44 = zext nneg i32 %42 to i64
  %45 = shl nuw nsw i64 4, %44
  %46 = icmp eq i32 %5, 1
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %0, align 8, !tbaa !244
  %49 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !248
  %51 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  br label %60

53:                                               ; preds = %41
  %54 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  store ptr @.str, ptr %55, align 8, !tbaa !248
  %56 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  store ptr @.str, ptr %56, align 8, !tbaa !245
  store ptr getelementptr inbounds ([2 x i8], ptr @.str, i64 1, i64 0), ptr %0, align 8, !tbaa !244
  %57 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %47, %53
  %61 = phi ptr [ %52, %47 ], [ %58, %53 ]
  %62 = phi ptr [ %50, %47 ], [ @.str, %53 ]
  %63 = phi ptr [ %48, %47 ], [ getelementptr inbounds ([2 x i8], ptr @.str, i64 1, i64 0), %53 ]
  %64 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 3
  store i32 %42, ptr %64, align 8, !tbaa !411
  %65 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 19
  store i32 0, ptr %65, align 4, !tbaa !412
  %66 = ptrtoint ptr %63 to i64
  %67 = ptrtoint ptr %62 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 4
  store i32 %69, ptr %70, align 4, !tbaa !246
  %71 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  store i32 %69, ptr %71, align 8, !tbaa !247
  %72 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  store i32 %69, ptr %72, align 4, !tbaa !249
  %73 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %73, align 8, !tbaa !413
  %74 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 7
  store i32 0, ptr %74, align 4, !tbaa !414
  %75 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 15
  store ptr null, ptr %75, align 8, !tbaa !415
  %76 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 2
  %77 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 3
  store ptr %61, ptr %77, align 8, !tbaa !57
  %78 = shl i64 4, %31
  %79 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !329
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %60
  %83 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %61, ptr %83, align 8, !tbaa !58
  %84 = getelementptr i8, ptr %1, i64 8
  %85 = load ptr, ptr %84, align 8, !tbaa !63
  %86 = ptrtoint ptr %85 to i64
  %87 = and i64 %86, 63
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds i8, ptr %85, i64 %88
  %90 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %89, ptr %90, align 8, !tbaa !394
  %91 = ptrtoint ptr %61 to i64
  %92 = sub i64 0, %91
  %93 = and i64 %92, 63
  %94 = getelementptr inbounds i8, ptr %61, i64 %93
  %95 = icmp ugt ptr %94, %85
  br i1 %95, label %113, label %96

96:                                               ; preds = %82
  store ptr %94, ptr %76, align 8, !tbaa !56
  store ptr %94, ptr %77, align 8, !tbaa !57
  %97 = icmp eq i64 %93, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  store ptr %94, ptr %83, align 8, !tbaa !58
  br label %99

99:                                               ; preds = %98, %96
  store i32 1, ptr %79, align 8, !tbaa !329
  br label %100

100:                                              ; preds = %60, %99
  %101 = phi ptr [ %94, %99 ], [ %61, %60 ]
  %102 = getelementptr inbounds i8, ptr %101, i64 %78
  %103 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !393
  %105 = icmp ugt ptr %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 7
  store i8 1, ptr %107, align 8, !tbaa !55
  br label %109

108:                                              ; preds = %100
  store ptr %102, ptr %77, align 8, !tbaa !57
  br label %109

109:                                              ; preds = %106, %108
  %110 = phi ptr [ %102, %108 ], [ %101, %106 ]
  %111 = phi ptr [ %101, %108 ], [ null, %106 ]
  %112 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  store ptr %111, ptr %112, align 8, !tbaa !416
  br label %133

113:                                              ; preds = %82
  %114 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  store ptr null, ptr %114, align 8, !tbaa !416
  %115 = load ptr, ptr %76, align 8, !tbaa !56
  %116 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %115, ptr %116, align 8, !tbaa !58
  %117 = getelementptr i8, ptr %1, i64 8
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = ptrtoint ptr %118 to i64
  %120 = and i64 %119, 63
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr %118, i64 %121
  %123 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %122, ptr %123, align 8, !tbaa !394
  %124 = ptrtoint ptr %115 to i64
  %125 = sub i64 0, %124
  %126 = and i64 %125, 63
  %127 = getelementptr inbounds i8, ptr %115, i64 %126
  %128 = icmp ugt ptr %127, %118
  br i1 %128, label %147, label %129

129:                                              ; preds = %113
  store ptr %127, ptr %76, align 8, !tbaa !56
  store ptr %127, ptr %77, align 8, !tbaa !57
  %130 = icmp eq i64 %126, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %129
  store ptr %127, ptr %116, align 8, !tbaa !58
  br label %132

132:                                              ; preds = %131, %129
  store i32 1, ptr %79, align 8, !tbaa !329
  br label %133

133:                                              ; preds = %132, %109
  %134 = phi ptr [ %110, %109 ], [ %127, %132 ]
  %135 = getelementptr inbounds i8, ptr %134, i64 %28
  %136 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !393
  %138 = icmp ugt ptr %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 7
  store i8 1, ptr %140, align 8, !tbaa !55
  br label %142

141:                                              ; preds = %133
  store ptr %135, ptr %77, align 8, !tbaa !57
  br label %142

142:                                              ; preds = %139, %141
  %143 = phi ptr [ %135, %141 ], [ %134, %139 ]
  %144 = phi ptr [ %134, %141 ], [ null, %139 ]
  %145 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  store ptr %144, ptr %145, align 8, !tbaa !417
  %146 = select i1 %43, i64 0, i64 %45
  br label %168

147:                                              ; preds = %113
  %148 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  store ptr null, ptr %148, align 8, !tbaa !417
  %149 = select i1 %43, i64 0, i64 %45
  %150 = load ptr, ptr %76, align 8, !tbaa !56
  %151 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %150, ptr %151, align 8, !tbaa !58
  %152 = getelementptr i8, ptr %1, i64 8
  %153 = load ptr, ptr %152, align 8, !tbaa !63
  %154 = ptrtoint ptr %153 to i64
  %155 = and i64 %154, 63
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  %158 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %157, ptr %158, align 8, !tbaa !394
  %159 = ptrtoint ptr %150 to i64
  %160 = sub i64 0, %159
  %161 = and i64 %160, 63
  %162 = getelementptr inbounds i8, ptr %150, i64 %161
  %163 = icmp ugt ptr %162, %153
  br i1 %163, label %178, label %164

164:                                              ; preds = %147
  store ptr %162, ptr %76, align 8, !tbaa !56
  store ptr %162, ptr %77, align 8, !tbaa !57
  %165 = icmp eq i64 %161, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  store ptr %162, ptr %151, align 8, !tbaa !58
  br label %167

167:                                              ; preds = %166, %164
  store i32 1, ptr %79, align 8, !tbaa !329
  br label %168

168:                                              ; preds = %167, %142
  %169 = phi i64 [ %146, %142 ], [ %149, %167 ]
  %170 = phi ptr [ %143, %142 ], [ %162, %167 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 %169
  %172 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !393
  %174 = icmp ugt ptr %171, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 7
  store i8 1, ptr %176, align 8, !tbaa !55
  br label %178

177:                                              ; preds = %168
  store ptr %171, ptr %77, align 8, !tbaa !57
  br label %178

178:                                              ; preds = %147, %175, %177
  %179 = phi ptr [ %170, %175 ], [ %171, %177 ], [ %61, %147 ]
  %180 = phi ptr [ null, %175 ], [ %170, %177 ], [ null, %147 ]
  %181 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 10
  store ptr %180, ptr %181, align 8, !tbaa !418
  %182 = getelementptr i8, ptr %1, i64 56
  %183 = load i8, ptr %182, align 8, !tbaa !55
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %569

185:                                              ; preds = %178
  %186 = icmp eq i32 %4, 1
  br i1 %186, label %202, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !58
  %190 = icmp ult ptr %189, %179
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = ptrtoint ptr %179 to i64
  %193 = ptrtoint ptr %189 to i64
  %194 = sub i64 %192, %193
  tail call void @llvm.memset.p0.i64(ptr align 1 %189, i8 0, i64 %194, i1 false)
  %195 = load ptr, ptr %188, align 8, !tbaa !58
  %196 = load ptr, ptr %77, align 8, !tbaa !57
  br label %197

197:                                              ; preds = %191, %187
  %198 = phi ptr [ %196, %191 ], [ %179, %187 ]
  %199 = phi ptr [ %195, %191 ], [ %189, %187 ]
  %200 = icmp ult ptr %199, %198
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store ptr %198, ptr %188, align 8, !tbaa !58
  br label %202

202:                                              ; preds = %201, %197, %185
  %203 = phi ptr [ %198, %201 ], [ %198, %197 ], [ %179, %185 ]
  %204 = load i32, ptr %8, align 4, !tbaa !69
  %205 = add i32 %204, -6
  %206 = icmp ult i32 %205, -3
  %207 = icmp ne i32 %3, 1
  %208 = or i1 %207, %206
  br i1 %208, label %340, label %209

209:                                              ; preds = %202
  %210 = add nuw i64 %32, 63
  %211 = and i64 %210, -64
  %212 = load i32, ptr %79, align 8, !tbaa !329
  br i1 %33, label %213, label %288

213:                                              ; preds = %209
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %215, label %234

215:                                              ; preds = %213
  %216 = load ptr, ptr %76, align 8, !tbaa !56
  %217 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %216, ptr %217, align 8, !tbaa !58
  %218 = getelementptr i8, ptr %1, i64 8
  %219 = load ptr, ptr %218, align 8, !tbaa !63
  %220 = ptrtoint ptr %219 to i64
  %221 = and i64 %220, 63
  %222 = sub nsw i64 0, %221
  %223 = getelementptr inbounds i8, ptr %219, i64 %222
  %224 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %223, ptr %224, align 8, !tbaa !394
  %225 = ptrtoint ptr %216 to i64
  %226 = sub i64 0, %225
  %227 = and i64 %226, 63
  %228 = getelementptr inbounds i8, ptr %216, i64 %227
  %229 = icmp ugt ptr %228, %219
  br i1 %229, label %258, label %230

230:                                              ; preds = %215
  store ptr %228, ptr %76, align 8, !tbaa !56
  store ptr %228, ptr %77, align 8, !tbaa !57
  %231 = icmp eq i64 %227, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %230
  store ptr %228, ptr %217, align 8, !tbaa !58
  br label %233

233:                                              ; preds = %232, %230
  store i32 1, ptr %79, align 8, !tbaa !329
  br label %234

234:                                              ; preds = %233, %213
  %235 = phi ptr [ %228, %233 ], [ %203, %213 ]
  %236 = icmp eq i64 %211, 0
  br i1 %236, label %258, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !393
  %240 = sub i64 0, %211
  %241 = getelementptr inbounds i8, ptr %239, i64 %240
  %242 = icmp ult ptr %241, %235
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %258

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %246 = load ptr, ptr %245, align 8, !tbaa !58
  %247 = icmp ult ptr %241, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  store ptr %241, ptr %245, align 8, !tbaa !58
  br label %249

249:                                              ; preds = %248, %244
  store ptr %241, ptr %238, align 8, !tbaa !393
  %250 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !394
  %252 = icmp ult ptr %241, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = ptrtoint ptr %251 to i64
  %255 = ptrtoint ptr %241 to i64
  %256 = sub i64 %254, %255
  %257 = tail call i64 @llvm.umin.i64(i64 %256, i64 %211)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %241, i8 0, i64 %257, i1 false)
  store ptr %241, ptr %250, align 8, !tbaa !394
  br label %258

258:                                              ; preds = %215, %234, %243, %249, %253
  %259 = phi ptr [ %241, %253 ], [ %241, %249 ], [ null, %234 ], [ null, %243 ], [ null, %215 ]
  %260 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 5
  store ptr %259, ptr %260, align 8, !tbaa !419
  %261 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 7
  %262 = load i64, ptr %261, align 8, !tbaa !420
  %263 = tail call i64 @llvm.fshl.i64(i64 %262, i64 %262, i64 15)
  %264 = tail call i64 @llvm.fshl.i64(i64 %262, i64 %262, i64 40)
  %265 = xor i64 %264, %263
  %266 = xor i64 %265, %262
  %267 = mul i64 %266, -6939452855193903323
  %268 = lshr i64 %267, 35
  %269 = add nuw nsw i64 %268, 8
  %270 = xor i64 %269, %267
  %271 = mul i64 %270, -6939452855193903323
  %272 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 8
  %273 = load i32, ptr %272, align 8, !tbaa !421
  %274 = zext i32 %273 to i64
  %275 = shl nuw nsw i64 %274, 15
  %276 = tail call i64 @llvm.fshl.i64(i64 %274, i64 %274, i64 40)
  %277 = xor i64 %276, %275
  %278 = xor i64 %277, %274
  %279 = mul i64 %278, -6939452855193903323
  %280 = lshr i64 %279, 35
  %281 = add nuw nsw i64 %280, 4
  %282 = xor i64 %281, %279
  %283 = mul i64 %282, -6939452855193903323
  %284 = xor i64 %283, %271
  %285 = lshr i64 %284, 28
  %286 = xor i64 %271, %285
  %287 = xor i64 %286, %283
  store i64 %287, ptr %261, align 8, !tbaa !420
  br label %332

288:                                              ; preds = %209
  %289 = icmp ult i32 %212, 2
  br i1 %289, label %290, label %312

290:                                              ; preds = %288
  %291 = icmp eq i32 %212, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %290
  %293 = load ptr, ptr %76, align 8, !tbaa !56
  %294 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %293, ptr %294, align 8, !tbaa !58
  %295 = getelementptr i8, ptr %1, i64 8
  %296 = load ptr, ptr %295, align 8, !tbaa !63
  %297 = ptrtoint ptr %296 to i64
  %298 = and i64 %297, 63
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %296, i64 %299
  %301 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %300, ptr %301, align 8, !tbaa !394
  %302 = ptrtoint ptr %293 to i64
  %303 = sub i64 0, %302
  %304 = and i64 %303, 63
  %305 = getelementptr inbounds i8, ptr %293, i64 %304
  %306 = icmp ugt ptr %305, %296
  br i1 %306, label %328, label %307

307:                                              ; preds = %292
  store ptr %305, ptr %76, align 8, !tbaa !56
  store ptr %305, ptr %77, align 8, !tbaa !57
  %308 = icmp eq i64 %304, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %307
  store ptr %305, ptr %294, align 8, !tbaa !58
  br label %310

310:                                              ; preds = %309, %307, %290
  %311 = phi ptr [ %305, %309 ], [ %305, %307 ], [ %203, %290 ]
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %312

312:                                              ; preds = %310, %288
  %313 = phi ptr [ %311, %310 ], [ %203, %288 ]
  %314 = icmp eq i64 %211, 0
  br i1 %314, label %328, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %317 = load ptr, ptr %316, align 8, !tbaa !393
  %318 = sub i64 0, %211
  %319 = getelementptr inbounds i8, ptr %317, i64 %318
  %320 = icmp ult ptr %319, %313
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %328

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %324 = load ptr, ptr %323, align 8, !tbaa !58
  %325 = icmp ult ptr %319, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store ptr %319, ptr %323, align 8, !tbaa !58
  br label %327

327:                                              ; preds = %326, %322
  store ptr %319, ptr %316, align 8, !tbaa !393
  br label %328

328:                                              ; preds = %292, %312, %321, %327
  %329 = phi ptr [ null, %312 ], [ null, %321 ], [ %319, %327 ], [ null, %292 ]
  %330 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 5
  store ptr %329, ptr %330, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %329, i8 0, i64 %32, i1 false)
  %331 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 7
  store i64 0, ptr %331, align 8, !tbaa !420
  br label %332

332:                                              ; preds = %328, %258
  %333 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i64 0, i32 3
  %334 = load i32, ptr %333, align 4, !tbaa !67
  %335 = tail call i32 @llvm.umin.i32(i32 %334, i32 6)
  %336 = tail call i32 @llvm.umax.i32(i32 %335, i32 4)
  %337 = load i32, ptr %29, align 4, !tbaa !66
  %338 = sub i32 %337, %336
  %339 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 4
  store i32 %338, ptr %339, align 4, !tbaa !422
  br label %340

340:                                              ; preds = %332, %202
  br i1 %33, label %341, label %564

341:                                              ; preds = %340
  %342 = load i32, ptr %8, align 4, !tbaa !69
  %343 = icmp ugt i32 %342, 6
  br i1 %343, label %344, label %564

344:                                              ; preds = %341
  %345 = load i32, ptr %79, align 8, !tbaa !329
  %346 = icmp ult i32 %345, 2
  br i1 %346, label %347, label %368

347:                                              ; preds = %344
  %348 = icmp eq i32 %345, 0
  br i1 %348, label %349, label %367

349:                                              ; preds = %347
  %350 = load ptr, ptr %76, align 8, !tbaa !56
  %351 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %350, ptr %351, align 8, !tbaa !58
  %352 = getelementptr i8, ptr %1, i64 8
  %353 = load ptr, ptr %352, align 8, !tbaa !63
  %354 = ptrtoint ptr %353 to i64
  %355 = and i64 %354, 63
  %356 = sub nsw i64 0, %355
  %357 = getelementptr inbounds i8, ptr %353, i64 %356
  %358 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %357, ptr %358, align 8, !tbaa !394
  %359 = ptrtoint ptr %350 to i64
  %360 = sub i64 0, %359
  %361 = and i64 %360, 63
  %362 = getelementptr inbounds i8, ptr %350, i64 %361
  %363 = icmp ugt ptr %362, %353
  br i1 %363, label %384, label %364

364:                                              ; preds = %349
  store ptr %362, ptr %76, align 8, !tbaa !56
  store ptr %362, ptr %77, align 8, !tbaa !57
  %365 = icmp eq i64 %361, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %364
  store ptr %362, ptr %351, align 8, !tbaa !58
  br label %367

367:                                              ; preds = %366, %364, %347
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %368

368:                                              ; preds = %367, %344
  %369 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !393
  %371 = getelementptr inbounds i8, ptr %370, i64 -1024
  %372 = load ptr, ptr %77, align 8, !tbaa !57
  %373 = icmp ult ptr %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %381

375:                                              ; preds = %368
  %376 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %377 = load ptr, ptr %376, align 8, !tbaa !58
  %378 = icmp ult ptr %371, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  store ptr %371, ptr %376, align 8, !tbaa !58
  br label %380

380:                                              ; preds = %379, %375
  store ptr %371, ptr %369, align 8, !tbaa !393
  br label %381

381:                                              ; preds = %374, %380
  %382 = phi ptr [ %371, %380 ], [ null, %374 ]
  %383 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14
  store ptr %382, ptr %383, align 8, !tbaa !423
  br label %404

384:                                              ; preds = %349
  %385 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14
  store ptr null, ptr %385, align 8, !tbaa !423
  %386 = load ptr, ptr %76, align 8, !tbaa !56
  %387 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %386, ptr %387, align 8, !tbaa !58
  %388 = getelementptr i8, ptr %1, i64 8
  %389 = load ptr, ptr %388, align 8, !tbaa !63
  %390 = ptrtoint ptr %389 to i64
  %391 = and i64 %390, 63
  %392 = sub nsw i64 0, %391
  %393 = getelementptr inbounds i8, ptr %389, i64 %392
  %394 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %393, ptr %394, align 8, !tbaa !394
  %395 = ptrtoint ptr %386 to i64
  %396 = sub i64 0, %395
  %397 = and i64 %396, 63
  %398 = getelementptr inbounds i8, ptr %386, i64 %397
  %399 = icmp ugt ptr %398, %389
  br i1 %399, label %420, label %400

400:                                              ; preds = %384
  store ptr %398, ptr %76, align 8, !tbaa !56
  store ptr %398, ptr %77, align 8, !tbaa !57
  %401 = icmp eq i64 %397, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %400
  store ptr %398, ptr %387, align 8, !tbaa !58
  br label %403

403:                                              ; preds = %402, %400
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %404

404:                                              ; preds = %381, %403
  %405 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %406 = load ptr, ptr %405, align 8, !tbaa !393
  %407 = getelementptr inbounds i8, ptr %406, i64 -192
  %408 = load ptr, ptr %77, align 8, !tbaa !57
  %409 = icmp ult ptr %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %404
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %417

411:                                              ; preds = %404
  %412 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %413 = load ptr, ptr %412, align 8, !tbaa !58
  %414 = icmp ult ptr %407, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store ptr %407, ptr %412, align 8, !tbaa !58
  br label %416

416:                                              ; preds = %415, %411
  store ptr %407, ptr %405, align 8, !tbaa !393
  br label %417

417:                                              ; preds = %410, %416
  %418 = phi ptr [ %407, %416 ], [ null, %410 ]
  %419 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 1
  store ptr %418, ptr %419, align 8, !tbaa !424
  br label %440

420:                                              ; preds = %384
  %421 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 1
  store ptr null, ptr %421, align 8, !tbaa !424
  %422 = load ptr, ptr %76, align 8, !tbaa !56
  %423 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %422, ptr %423, align 8, !tbaa !58
  %424 = getelementptr i8, ptr %1, i64 8
  %425 = load ptr, ptr %424, align 8, !tbaa !63
  %426 = ptrtoint ptr %425 to i64
  %427 = and i64 %426, 63
  %428 = sub nsw i64 0, %427
  %429 = getelementptr inbounds i8, ptr %425, i64 %428
  %430 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %429, ptr %430, align 8, !tbaa !394
  %431 = ptrtoint ptr %422 to i64
  %432 = sub i64 0, %431
  %433 = and i64 %432, 63
  %434 = getelementptr inbounds i8, ptr %422, i64 %433
  %435 = icmp ugt ptr %434, %425
  br i1 %435, label %456, label %436

436:                                              ; preds = %420
  store ptr %434, ptr %76, align 8, !tbaa !56
  store ptr %434, ptr %77, align 8, !tbaa !57
  %437 = icmp eq i64 %433, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %436
  store ptr %434, ptr %423, align 8, !tbaa !58
  br label %439

439:                                              ; preds = %438, %436
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %440

440:                                              ; preds = %417, %439
  %441 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %442 = load ptr, ptr %441, align 8, !tbaa !393
  %443 = getelementptr inbounds i8, ptr %442, i64 -256
  %444 = load ptr, ptr %77, align 8, !tbaa !57
  %445 = icmp ult ptr %443, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %440
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %453

447:                                              ; preds = %440
  %448 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %449 = load ptr, ptr %448, align 8, !tbaa !58
  %450 = icmp ult ptr %443, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %447
  store ptr %443, ptr %448, align 8, !tbaa !58
  br label %452

452:                                              ; preds = %451, %447
  store ptr %443, ptr %441, align 8, !tbaa !393
  br label %453

453:                                              ; preds = %446, %452
  %454 = phi ptr [ %443, %452 ], [ null, %446 ]
  %455 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 2
  store ptr %454, ptr %455, align 8, !tbaa !425
  br label %476

456:                                              ; preds = %420
  %457 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 2
  store ptr null, ptr %457, align 8, !tbaa !425
  %458 = load ptr, ptr %76, align 8, !tbaa !56
  %459 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %458, ptr %459, align 8, !tbaa !58
  %460 = getelementptr i8, ptr %1, i64 8
  %461 = load ptr, ptr %460, align 8, !tbaa !63
  %462 = ptrtoint ptr %461 to i64
  %463 = and i64 %462, 63
  %464 = sub nsw i64 0, %463
  %465 = getelementptr inbounds i8, ptr %461, i64 %464
  %466 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %465, ptr %466, align 8, !tbaa !394
  %467 = ptrtoint ptr %458 to i64
  %468 = sub i64 0, %467
  %469 = and i64 %468, 63
  %470 = getelementptr inbounds i8, ptr %458, i64 %469
  %471 = icmp ugt ptr %470, %461
  br i1 %471, label %492, label %472

472:                                              ; preds = %456
  store ptr %470, ptr %76, align 8, !tbaa !56
  store ptr %470, ptr %77, align 8, !tbaa !57
  %473 = icmp eq i64 %469, 0
  br i1 %473, label %475, label %474

474:                                              ; preds = %472
  store ptr %470, ptr %459, align 8, !tbaa !58
  br label %475

475:                                              ; preds = %474, %472
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %476

476:                                              ; preds = %453, %475
  %477 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %478 = load ptr, ptr %477, align 8, !tbaa !393
  %479 = getelementptr inbounds i8, ptr %478, i64 -128
  %480 = load ptr, ptr %77, align 8, !tbaa !57
  %481 = icmp ult ptr %479, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %476
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %489

483:                                              ; preds = %476
  %484 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %485 = load ptr, ptr %484, align 8, !tbaa !58
  %486 = icmp ult ptr %479, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %483
  store ptr %479, ptr %484, align 8, !tbaa !58
  br label %488

488:                                              ; preds = %487, %483
  store ptr %479, ptr %477, align 8, !tbaa !393
  br label %489

489:                                              ; preds = %482, %488
  %490 = phi ptr [ %479, %488 ], [ null, %482 ]
  %491 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 3
  store ptr %490, ptr %491, align 8, !tbaa !426
  br label %512

492:                                              ; preds = %456
  %493 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 3
  store ptr null, ptr %493, align 8, !tbaa !426
  %494 = load ptr, ptr %76, align 8, !tbaa !56
  %495 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %494, ptr %495, align 8, !tbaa !58
  %496 = getelementptr i8, ptr %1, i64 8
  %497 = load ptr, ptr %496, align 8, !tbaa !63
  %498 = ptrtoint ptr %497 to i64
  %499 = and i64 %498, 63
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %497, i64 %500
  %502 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %501, ptr %502, align 8, !tbaa !394
  %503 = ptrtoint ptr %494 to i64
  %504 = sub i64 0, %503
  %505 = and i64 %504, 63
  %506 = getelementptr inbounds i8, ptr %494, i64 %505
  %507 = icmp ugt ptr %506, %497
  br i1 %507, label %528, label %508

508:                                              ; preds = %492
  store ptr %506, ptr %76, align 8, !tbaa !56
  store ptr %506, ptr %77, align 8, !tbaa !57
  %509 = icmp eq i64 %505, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %508
  store ptr %506, ptr %495, align 8, !tbaa !58
  br label %511

511:                                              ; preds = %510, %508
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %512

512:                                              ; preds = %489, %511
  %513 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %514 = load ptr, ptr %513, align 8, !tbaa !393
  %515 = getelementptr inbounds i8, ptr %514, i64 -32832
  %516 = load ptr, ptr %77, align 8, !tbaa !57
  %517 = icmp ult ptr %515, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %512
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %525

519:                                              ; preds = %512
  %520 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %521 = load ptr, ptr %520, align 8, !tbaa !58
  %522 = icmp ult ptr %515, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %519
  store ptr %515, ptr %520, align 8, !tbaa !58
  br label %524

524:                                              ; preds = %523, %519
  store ptr %515, ptr %513, align 8, !tbaa !393
  br label %525

525:                                              ; preds = %518, %524
  %526 = phi ptr [ %515, %524 ], [ null, %518 ]
  %527 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 4
  store ptr %526, ptr %527, align 8, !tbaa !427
  br label %548

528:                                              ; preds = %492
  %529 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 4
  store ptr null, ptr %529, align 8, !tbaa !427
  %530 = load ptr, ptr %76, align 8, !tbaa !56
  %531 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %530, ptr %531, align 8, !tbaa !58
  %532 = getelementptr i8, ptr %1, i64 8
  %533 = load ptr, ptr %532, align 8, !tbaa !63
  %534 = ptrtoint ptr %533 to i64
  %535 = and i64 %534, 63
  %536 = sub nsw i64 0, %535
  %537 = getelementptr inbounds i8, ptr %533, i64 %536
  %538 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 6
  store ptr %537, ptr %538, align 8, !tbaa !394
  %539 = ptrtoint ptr %530 to i64
  %540 = sub i64 0, %539
  %541 = and i64 %540, 63
  %542 = getelementptr inbounds i8, ptr %530, i64 %541
  %543 = icmp ugt ptr %542, %533
  br i1 %543, label %561, label %544

544:                                              ; preds = %528
  store ptr %542, ptr %76, align 8, !tbaa !56
  store ptr %542, ptr %77, align 8, !tbaa !57
  %545 = icmp eq i64 %541, 0
  br i1 %545, label %547, label %546

546:                                              ; preds = %544
  store ptr %542, ptr %531, align 8, !tbaa !58
  br label %547

547:                                              ; preds = %546, %544
  store i32 2, ptr %79, align 8, !tbaa !329
  br label %548

548:                                              ; preds = %525, %547
  %549 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 5
  %550 = load ptr, ptr %549, align 8, !tbaa !393
  %551 = getelementptr inbounds i8, ptr %550, i64 -114816
  %552 = load ptr, ptr %77, align 8, !tbaa !57
  %553 = icmp ult ptr %551, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %548
  store i8 1, ptr %182, align 8, !tbaa !55
  br label %561

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  %557 = load ptr, ptr %556, align 8, !tbaa !58
  %558 = icmp ult ptr %551, %557
  br i1 %558, label %559, label %560

559:                                              ; preds = %555
  store ptr %551, ptr %556, align 8, !tbaa !58
  br label %560

560:                                              ; preds = %559, %555
  store ptr %551, ptr %549, align 8, !tbaa !393
  br label %561

561:                                              ; preds = %528, %554, %560
  %562 = phi ptr [ null, %554 ], [ %551, %560 ], [ null, %528 ]
  %563 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 5
  store ptr %562, ptr %563, align 8, !tbaa !428
  br label %564

564:                                              ; preds = %561, %341, %340
  %565 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %565, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !70
  %566 = load i8, ptr %182, align 8, !tbaa !55
  %567 = icmp eq i8 %566, 0
  %568 = select i1 %567, i64 0, i64 -64
  br label %569

569:                                              ; preds = %564, %178
  %570 = phi i64 [ -64, %178 ], [ %568, %564 ]
  ret i64 %570
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
define internal fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nocapture writable writeonly align 8 %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #2 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %4, i64 0, i32 1
  %17 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !192
  %19 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !191
  %21 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 4
  store i64 0, ptr %23, align 8, !tbaa !429
  %24 = load ptr, ptr %1, align 8, !tbaa !190
  %25 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %27, %28
  %30 = and i64 %29, 34359738360
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %11
  %33 = lshr exact i64 %29, 3
  %34 = and i64 %33, 4294967295
  br label %35

35:                                               ; preds = %71, %32
  %36 = phi i64 [ 0, %32 ], [ %75, %71 ]
  %37 = getelementptr inbounds %struct.SeqDef_s, ptr %24, i64 %36
  %38 = getelementptr inbounds %struct.SeqDef_s, ptr %24, i64 %36, i32 1
  %39 = load i16, ptr %38, align 4, !tbaa !195
  %40 = load i32, ptr %37, align 4, !tbaa !198
  %41 = tail call i32 @llvm.ctlz.i32(i32 %40, i1 true), !range !123
  %42 = getelementptr inbounds %struct.SeqDef_s, ptr %24, i64 %36, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !199
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i16 %39, 63
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = zext i16 %39 to i32
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 true), !range !123
  %49 = sub nuw nsw i32 50, %48
  br label %55

50:                                               ; preds = %35
  %51 = zext nneg i16 %39 to i64
  %52 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !44
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i32 [ %49, %46 ], [ %54, %50 ]
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds i8, ptr %20, i64 %36
  store i8 %57, ptr %58, align 1, !tbaa !44
  %59 = trunc i32 %41 to i8
  %60 = xor i8 %59, 31
  %61 = getelementptr inbounds i8, ptr %18, i64 %36
  store i8 %60, ptr %61, align 1, !tbaa !44
  %62 = icmp ugt i16 %43, 127
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = tail call i32 @llvm.ctlz.i32(i32 %44, i1 true), !range !123
  %65 = sub nuw nsw i32 67, %64
  br label %71

66:                                               ; preds = %55
  %67 = zext nneg i16 %43 to i64
  %68 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !44
  %70 = zext i8 %69 to i32
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i32 [ %65, %63 ], [ %70, %66 ]
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %22, i64 %36
  store i8 %73, ptr %74, align 1, !tbaa !44
  %75 = add nuw nsw i64 %36, 1
  %76 = icmp eq i64 %75, %34
  br i1 %76, label %77, label %35, !llvm.loop !200

77:                                               ; preds = %71, %11
  %78 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !201
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %83 = load i32, ptr %82, align 4, !tbaa !202
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %20, i64 %84
  store i8 35, ptr %85, align 1, !tbaa !44
  %86 = load i32, ptr %78, align 8, !tbaa !201
  br label %87

87:                                               ; preds = %81, %77
  %88 = phi i32 [ %86, %81 ], [ %79, %77 ]
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %92 = load i32, ptr %91, align 4, !tbaa !202
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %22, i64 %93
  store i8 52, ptr %94, align 1, !tbaa !44
  br label %95

95:                                               ; preds = %87, %90
  %96 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %96, align 8, !tbaa !431
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #30
  store i32 35, ptr %12, align 4, !tbaa !45
  %97 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %12, ptr noundef %20, i64 noundef %2, ptr noundef %9, i64 noundef %10) #30
  %98 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %3, i64 0, i32 5
  %99 = load i32, ptr %98, align 4, !tbaa !227
  %100 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %4, i64 0, i32 5
  store i32 %99, ptr %100, align 4, !tbaa !227
  %101 = load i32, ptr %12, align 4, !tbaa !45
  %102 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %3, i64 0, i32 2
  %103 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %100, ptr noundef %8, i32 noundef %101, i64 noundef %97, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %102, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #30
  store i32 %103, ptr %0, align 8, !tbaa !432
  %104 = ptrtoint ptr %6 to i64
  %105 = ptrtoint ptr %5 to i64
  %106 = sub i64 %104, %105
  %107 = load i32, ptr %12, align 4, !tbaa !45
  %108 = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %106, ptr noundef nonnull %15, i32 noundef 9, i32 noundef %103, ptr noundef %8, i32 noundef %107, ptr noundef %20, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %102, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #30
  %109 = icmp ult i64 %108, -119
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = icmp eq i32 %103, 2
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  store i64 %108, ptr %23, align 8, !tbaa !429
  br label %115

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 3
  store i64 %108, ptr %114, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  br label %161

115:                                              ; preds = %110, %112
  %116 = getelementptr inbounds i8, ptr %5, i64 %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #30
  store i32 31, ptr %13, align 4, !tbaa !45
  %117 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %13, ptr noundef %18, i64 noundef %2, ptr noundef %9, i64 noundef %10) #30
  %118 = load i32, ptr %13, align 4, !tbaa !45
  %119 = icmp ult i32 %118, 29
  %120 = zext i1 %119 to i32
  %121 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %3, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !231
  %123 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %4, i64 0, i32 3
  store i32 %122, ptr %123, align 4, !tbaa !231
  %124 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %123, ptr noundef %8, i32 noundef %118, i64 noundef %117, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %120, i32 noundef %7) #30
  %125 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 1
  store i32 %124, ptr %125, align 4, !tbaa !434
  %126 = ptrtoint ptr %116 to i64
  %127 = sub i64 %104, %126
  %128 = load i32, ptr %13, align 4, !tbaa !45
  %129 = call i64 @ZSTD_buildCTable(ptr noundef %116, i64 noundef %127, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %124, ptr noundef %8, i32 noundef %128, ptr noundef %18, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #30
  %130 = icmp ult i64 %129, -119
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = icmp eq i32 %124, 2
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  store i64 %129, ptr %23, align 8, !tbaa !429
  br label %136

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 3
  store i64 %129, ptr %135, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #30
  br label %161

136:                                              ; preds = %131, %133
  %137 = getelementptr inbounds i8, ptr %116, i64 %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #30
  store i32 52, ptr %14, align 4, !tbaa !45
  %138 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %14, ptr noundef %22, i64 noundef %2, ptr noundef %9, i64 noundef %10) #30
  %139 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %3, i64 0, i32 4
  %140 = load i32, ptr %139, align 4, !tbaa !232
  %141 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %4, i64 0, i32 4
  store i32 %140, ptr %141, align 4, !tbaa !232
  %142 = load i32, ptr %14, align 4, !tbaa !45
  %143 = getelementptr inbounds %struct.ZSTD_fseCTables_t, ptr %3, i64 0, i32 1
  %144 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %141, ptr noundef %8, i32 noundef %142, i64 noundef %138, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %143, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #30
  %145 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 2
  store i32 %144, ptr %145, align 8, !tbaa !435
  %146 = ptrtoint ptr %137 to i64
  %147 = sub i64 %104, %146
  %148 = load i32, ptr %14, align 4, !tbaa !45
  %149 = call i64 @ZSTD_buildCTable(ptr noundef %137, i64 noundef %147, ptr noundef nonnull %16, i32 noundef 9, i32 noundef %144, ptr noundef %8, i32 noundef %148, ptr noundef %22, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %143, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #30
  %150 = icmp ult i64 %149, -119
  br i1 %150, label %151, label %154

151:                                              ; preds = %136
  %152 = icmp eq i32 %144, 2
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  store i64 %149, ptr %23, align 8, !tbaa !429
  br label %156

154:                                              ; preds = %136
  %155 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 3
  store i64 %149, ptr %155, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  br label %161

156:                                              ; preds = %151, %153
  %157 = getelementptr inbounds i8, ptr %137, i64 %149
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  %158 = ptrtoint ptr %157 to i64
  %159 = sub i64 %158, %105
  %160 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %0, i64 0, i32 3
  store i64 %159, ptr %160, align 8, !tbaa !433
  br label %161

161:                                              ; preds = %154, %134, %113, %156
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #15 {
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 1
  %8 = getelementptr i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !248
  %10 = ptrtoint ptr %4 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = icmp ult i32 %13, -624951295
  br i1 %14, label %149, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !79
  %18 = shl nuw i32 1, %17
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 1, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !85
  %21 = icmp ugt i32 %20, 5
  %22 = sext i1 %21 to i32
  %23 = load i32, ptr %6, align 4, !tbaa !81
  %24 = add i32 %23, %22
  %25 = shl nuw i32 1, %24
  %26 = add i32 %25, -1
  %27 = ptrtoint ptr %3 to i64
  %28 = sub i64 %27, %11
  %29 = trunc i64 %28 to i32
  %30 = and i32 %26, %29
  %31 = icmp ult i32 %30, 2
  %32 = tail call i32 @llvm.umax.i32(i32 %25, i32 2)
  %33 = select i1 %31, i32 %32, i32 0
  %34 = tail call i32 @llvm.umax.i32(i32 %25, i32 %18)
  %35 = add i32 %34, %30
  %36 = add i32 %35, %33
  %37 = sub i32 %29, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %9, i64 %38
  store ptr %39, ptr %8, align 8, !tbaa !248
  %40 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !245
  %42 = getelementptr inbounds i8, ptr %41, i64 %38
  store ptr %42, ptr %40, align 8, !tbaa !245
  %43 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !246
  %45 = add i32 %37, 2
  %46 = icmp ult i32 %44, %45
  %47 = sub i32 %44, %37
  %48 = select i1 %46, i32 2, i32 %47
  store i32 %48, ptr %43, align 4, !tbaa !246
  %49 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !247
  %51 = icmp ult i32 %50, %45
  %52 = sub i32 %50, %37
  %53 = select i1 %51, i32 2, i32 %52
  store i32 %53, ptr %49, align 8, !tbaa !247
  %54 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !436
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !436
  %57 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 4
  store ptr %58, ptr %59, align 8, !tbaa !58
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 1, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !80
  %62 = shl nuw i32 1, %61
  %63 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !416
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %64, i32 noundef %62, i32 noundef %37)
  %65 = load i32, ptr %19, align 4, !tbaa !85
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 22
  %67 = load i32, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 13
  %69 = load i32, ptr %68, align 4, !tbaa !410
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
  %79 = load i32, ptr %6, align 4, !tbaa !81
  %80 = shl nuw i32 1, %79
  %81 = icmp eq i32 %65, 6
  %82 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !417
  br i1 %81, label %84, label %129

84:                                               ; preds = %78
  %85 = sdiv i32 %80, 16
  %86 = icmp sgt i32 %80, 15
  br i1 %86, label %87, label %130

87:                                               ; preds = %84
  %88 = insertelement <4 x i32> poison, i32 %45, i64 0
  %89 = shufflevector <4 x i32> %88, <4 x i32> poison, <4 x i32> zeroinitializer
  %90 = insertelement <4 x i32> poison, i32 %37, i64 0
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %92

92:                                               ; preds = %87, %92
  %93 = phi i64 [ %126, %92 ], [ 0, %87 ]
  %94 = phi i32 [ %127, %92 ], [ 0, %87 ]
  %95 = getelementptr inbounds i32, ptr %83, i64 %93
  %96 = load <4 x i32>, ptr %95, align 4, !tbaa !45
  %97 = icmp eq <4 x i32> %96, <i32 1, i32 1, i32 1, i32 1>
  %98 = icmp ult <4 x i32> %96, %89
  %99 = sub <4 x i32> %96, %91
  %100 = select <4 x i1> %98, <4 x i32> zeroinitializer, <4 x i32> %99
  %101 = select <4 x i1> %97, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %100
  store <4 x i32> %101, ptr %95, align 4, !tbaa !45
  %102 = or disjoint i64 %93, 4
  %103 = getelementptr inbounds i32, ptr %83, i64 %102
  %104 = load <4 x i32>, ptr %103, align 4, !tbaa !45
  %105 = icmp eq <4 x i32> %104, <i32 1, i32 1, i32 1, i32 1>
  %106 = icmp ult <4 x i32> %104, %89
  %107 = sub <4 x i32> %104, %91
  %108 = select <4 x i1> %106, <4 x i32> zeroinitializer, <4 x i32> %107
  %109 = select <4 x i1> %105, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %108
  store <4 x i32> %109, ptr %103, align 4, !tbaa !45
  %110 = or disjoint i64 %93, 8
  %111 = getelementptr inbounds i32, ptr %83, i64 %110
  %112 = load <4 x i32>, ptr %111, align 4, !tbaa !45
  %113 = icmp eq <4 x i32> %112, <i32 1, i32 1, i32 1, i32 1>
  %114 = icmp ult <4 x i32> %112, %89
  %115 = sub <4 x i32> %112, %91
  %116 = select <4 x i1> %114, <4 x i32> zeroinitializer, <4 x i32> %115
  %117 = select <4 x i1> %113, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %116
  store <4 x i32> %117, ptr %111, align 4, !tbaa !45
  %118 = or disjoint i64 %93, 12
  %119 = getelementptr inbounds i32, ptr %83, i64 %118
  %120 = load <4 x i32>, ptr %119, align 4, !tbaa !45
  %121 = icmp eq <4 x i32> %120, <i32 1, i32 1, i32 1, i32 1>
  %122 = icmp ult <4 x i32> %120, %89
  %123 = sub <4 x i32> %120, %91
  %124 = select <4 x i1> %122, <4 x i32> zeroinitializer, <4 x i32> %123
  %125 = select <4 x i1> %121, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %124
  store <4 x i32> %125, ptr %119, align 4, !tbaa !45
  %126 = add nuw nsw i64 %93, 16
  %127 = add nuw nsw i32 %94, 1
  %128 = icmp eq i32 %127, %85
  br i1 %128, label %130, label %92, !llvm.loop !437

129:                                              ; preds = %78
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %83, i32 noundef %80, i32 noundef %37)
  br label %130

130:                                              ; preds = %92, %129, %84, %73, %71
  %131 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 3
  %132 = load i32, ptr %131, align 8, !tbaa !411
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = shl nuw i32 1, %132
  %136 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !418
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %137, i32 noundef %135, i32 noundef %37)
  br label %138

138:                                              ; preds = %130, %134
  %139 = load ptr, ptr %59, align 8, !tbaa !58
  %140 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !57
  %142 = icmp ult ptr %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store ptr %141, ptr %59, align 8, !tbaa !58
  br label %144

144:                                              ; preds = %138, %143
  %145 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !249
  %147 = tail call i32 @llvm.usub.sat.i32(i32 %146, i32 %37)
  store i32 %147, ptr %145, align 4, !tbaa !249
  store i32 0, ptr %7, align 8, !tbaa !413
  %148 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 15
  store ptr null, ptr %148, align 8, !tbaa !415
  br label %149

149:                                              ; preds = %144, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %91

9:                                                ; preds = %6
  %10 = icmp eq i64 %7, 1
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !256
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %14, label %15

14:                                               ; preds = %9
  br i1 %13, label %83, label %91

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  br i1 %13, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %18, i64 0, i32 1
  %21 = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %20), !range !438
  %22 = icmp ult i64 %21, -119
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  %24 = load <2 x ptr>, ptr %17, align 8, !tbaa !43
  %25 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %25, ptr %17, align 8, !tbaa !43
  br label %91

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !359
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  %33 = load i64, ptr %32, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !8
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !203
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !204
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %1, i64 noundef %2, ptr noundef %37, i64 noundef %42, ptr noundef nonnull %16, ptr noundef %18, ptr noundef %28, ptr noundef nonnull %29, ptr noundef %31, i64 noundef %33, i32 noundef %35)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %26
  %46 = icmp eq i64 %43, -70
  %47 = icmp ule i64 %4, %2
  %48 = and i1 %47, %46
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = icmp ult i64 %43, -119
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !85
  %54 = icmp ugt i32 %53, 7
  %55 = add i32 %53, -1
  %56 = select i1 %54, i32 %55, i32 6
  %57 = zext nneg i32 %56 to i64
  %58 = lshr i64 %4, %57
  %59 = add i64 %4, -2
  %60 = sub i64 %59, %58
  %61 = icmp ult i64 %43, %60
  %62 = select i1 %61, i64 %43, i64 0
  br label %63

63:                                               ; preds = %26, %45, %49, %51
  %64 = phi i64 [ %43, %49 ], [ 0, %26 ], [ 0, %45 ], [ %62, %51 ]
  %65 = icmp eq i32 %5, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 18
  %68 = load i32, ptr %67, align 8, !tbaa !255
  %69 = icmp eq i32 %68, 0
  %70 = icmp ult i64 %64, 25
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr %3, align 1, !tbaa !44
  store i8 %76, ptr %1, align 1, !tbaa !44
  br label %83

77:                                               ; preds = %63, %66, %72
  %78 = add i64 %64, -2
  %79 = icmp ult i64 %78, -121
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load <2 x ptr>, ptr %17, align 8, !tbaa !43
  %82 = shufflevector <2 x ptr> %81, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %82, ptr %17, align 8, !tbaa !43
  br label %83

83:                                               ; preds = %14, %75, %80, %77
  %84 = phi i64 [ %64, %80 ], [ %64, %77 ], [ 0, %14 ], [ 1, %75 ]
  %85 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %86 = load ptr, ptr %85, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %86, i64 0, i32 1, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !172
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 1, ptr %87, align 4, !tbaa !172
  br label %91

91:                                               ; preds = %14, %6, %83, %90, %19, %23
  %92 = phi i64 [ 0, %23 ], [ %21, %19 ], [ %84, %90 ], [ %84, %83 ], [ -106, %14 ], [ %7, %6 ]
  ret i64 %92
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 {
  %4 = sdiv i32 %1, 16
  %5 = add i32 %2, 2
  %6 = icmp sgt i32 %1, 15
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i32> poison, i32 %2, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %38, %12 ], [ 0, %7 ]
  %14 = phi i32 [ %39, %12 ], [ 0, %7 ]
  %15 = getelementptr inbounds i32, ptr %0, i64 %13
  %16 = load <4 x i32>, ptr %15, align 4, !tbaa !45
  %17 = icmp ult <4 x i32> %16, %9
  %18 = sub <4 x i32> %16, %11
  %19 = select <4 x i1> %17, <4 x i32> zeroinitializer, <4 x i32> %18
  store <4 x i32> %19, ptr %15, align 4, !tbaa !45
  %20 = or disjoint i64 %13, 4
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load <4 x i32>, ptr %21, align 4, !tbaa !45
  %23 = icmp ult <4 x i32> %22, %9
  %24 = sub <4 x i32> %22, %11
  %25 = select <4 x i1> %23, <4 x i32> zeroinitializer, <4 x i32> %24
  store <4 x i32> %25, ptr %21, align 4, !tbaa !45
  %26 = or disjoint i64 %13, 8
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load <4 x i32>, ptr %27, align 4, !tbaa !45
  %29 = icmp ult <4 x i32> %28, %9
  %30 = sub <4 x i32> %28, %11
  %31 = select <4 x i1> %29, <4 x i32> zeroinitializer, <4 x i32> %30
  store <4 x i32> %31, ptr %27, align 4, !tbaa !45
  %32 = or disjoint i64 %13, 12
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  %34 = load <4 x i32>, ptr %33, align 4, !tbaa !45
  %35 = icmp ult <4 x i32> %34, %9
  %36 = sub <4 x i32> %34, %11
  %37 = select <4 x i1> %35, <4 x i32> zeroinitializer, <4 x i32> %36
  store <4 x i32> %37, ptr %33, align 4, !tbaa !45
  %38 = add nuw nsw i64 %13, 16
  %39 = add nuw nsw i32 %14, 1
  %40 = icmp eq i32 %39, %4
  br i1 %40, label %41, label %12, !llvm.loop !437

41:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #12

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.RawSeqStore_t, align 8
  %5 = alloca %struct.ZSTD_SequencePosition, align 8
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  %8 = icmp ult i64 %2, 7
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !180
  %12 = icmp ugt i32 %11, 6
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %13, i64 noundef %2) #30
  br label %266

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !439
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %13, i64 noundef %2, i32 noundef %17) #30
  br label %266

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !203
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !204
  %24 = load ptr, ptr %20, align 8, !tbaa !190
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  store i32 0, ptr %26, align 8, !tbaa !201
  %27 = load ptr, ptr %19, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 14, i32 15
  store ptr %27, ptr %28, align 8, !tbaa !440
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !441
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 14, i32 16
  store i32 %30, ptr %31, align 8, !tbaa !442
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !443
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !249
  %40 = add i32 %39, 384
  %41 = icmp ult i32 %40, %37
  br i1 %41, label %42, label %47

42:                                               ; preds = %18
  %43 = sub i32 %37, %39
  %44 = add i32 %43, -384
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 192)
  %46 = sub i32 %37, %45
  store i32 %46, ptr %38, align 4, !tbaa !249
  br label %47

47:                                               ; preds = %42, %18
  %48 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !247
  %50 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 0, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !246
  %52 = icmp ult i32 %51, %49
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 15
  %55 = load ptr, ptr %54, align 8, !tbaa !415
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %55, i64 0, i32 13
  %59 = load i32, ptr %58, align 4, !tbaa !410
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i64 2, i64 3
  br label %62

62:                                               ; preds = %47, %53, %57
  %63 = phi i64 [ 1, %47 ], [ %61, %57 ], [ 0, %53 ]
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !359
  %66 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %27, i64 0, i32 1, i64 0
  %67 = load i32, ptr %66, align 4, !tbaa !45
  %68 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %65, i64 0, i32 1, i64 0
  store i32 %67, ptr %68, align 4, !tbaa !45
  %69 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %27, i64 0, i32 1, i64 1
  %70 = load i32, ptr %69, align 4, !tbaa !45
  %71 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %65, i64 0, i32 1, i64 1
  store i32 %70, ptr %71, align 4, !tbaa !45
  %72 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %27, i64 0, i32 1, i64 2
  %73 = load i32, ptr %72, align 4, !tbaa !45
  %74 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %65, i64 0, i32 1, i64 2
  store i32 %73, ptr %74, align 4, !tbaa !45
  %75 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !444
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 24, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !241
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %62
  %82 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 28
  %83 = load ptr, ptr %82, align 8, !tbaa !129
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %266

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 22
  %87 = load i32, ptr %86, align 8, !tbaa !177
  %88 = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %75, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %68, i32 noundef %87, ptr noundef %1, i64 noundef %2) #30
  br label %258

89:                                               ; preds = %62
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !250
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #30
  %94 = getelementptr inbounds i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %94, i8 0, i64 24, i1 false)
  %95 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 28
  %96 = load ptr, ptr %95, align 8, !tbaa !129
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 22
  %100 = load ptr, ptr %99, align 8, !tbaa !399
  store ptr %100, ptr %4, align 8, !tbaa !445
  %101 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 23
  %102 = load i64, ptr %101, align 8, !tbaa !400
  %103 = getelementptr inbounds %struct.RawSeqStore_t, ptr %4, i64 0, i32 4
  store i64 %102, ptr %103, align 8, !tbaa !446
  %104 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 21
  %105 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %104, ptr noundef nonnull %4, ptr noundef nonnull %90, ptr noundef %1, i64 noundef %2) #30
  %106 = icmp ult i64 %105, -119
  br i1 %106, label %109, label %107

107:                                              ; preds = %98, %93
  %108 = phi i64 [ -41, %93 ], [ %105, %98 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  br label %266

109:                                              ; preds = %98
  %110 = load ptr, ptr %64, align 8, !tbaa !359
  %111 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %110, i64 0, i32 1
  %112 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 22
  %113 = load i32, ptr %112, align 8, !tbaa !177
  %114 = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %111, i32 noundef %113, ptr noundef %1, i64 noundef %2) #30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  br label %258

115:                                              ; preds = %89
  %116 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 28
  %117 = load ptr, ptr %116, align 8, !tbaa !129
  %118 = icmp eq ptr %117, null
  br i1 %118, label %240, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %7, align 4, !tbaa !252
  %121 = shl nuw i32 1, %120
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 27
  %123 = load ptr, ptr %122, align 8, !tbaa !447
  %124 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 48
  %125 = load ptr, ptr %124, align 8, !tbaa !403
  %126 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 49
  %127 = load i64, ptr %126, align 8, !tbaa !402
  %128 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !448
  %130 = zext i32 %121 to i64
  %131 = tail call i64 %117(ptr noundef %123, ptr noundef %125, i64 noundef %127, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %129, i64 noundef %130) #30
  %132 = load i64, ptr %126, align 8, !tbaa !402
  %133 = add i64 %131, -1
  %134 = icmp ult i64 %133, %132
  br i1 %134, label %135, label %215

135:                                              ; preds = %119
  %136 = load ptr, ptr %124, align 8, !tbaa !403
  %137 = getelementptr %struct.ZSTD_Sequence, ptr %136, i64 %131
  %138 = getelementptr %struct.ZSTD_Sequence, ptr %137, i64 -1
  %139 = load i32, ptr %138, align 4, !tbaa.struct !126
  %140 = getelementptr %struct.ZSTD_Sequence, ptr %137, i64 -1, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa.struct !127
  %142 = icmp eq i32 %139, 0
  %143 = icmp eq i32 %141, 0
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = icmp eq i64 %131, %132
  br i1 %146, label %215, label %147

147:                                              ; preds = %145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %137, i8 0, i64 16, i1 false)
  %148 = add i64 %131, 1
  br label %149

149:                                              ; preds = %135, %147
  %150 = phi i64 [ %148, %147 ], [ %131, %135 ]
  %151 = icmp ult i64 %150, -119
  br i1 %151, label %152, label %215

152:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %153 = load ptr, ptr %124, align 8, !tbaa !403
  %154 = icmp eq i64 %150, 0
  br i1 %154, label %206, label %155

155:                                              ; preds = %152
  %156 = and i64 %150, 1
  %157 = icmp eq i64 %150, 1
  br i1 %157, label %185, label %158

158:                                              ; preds = %155
  %159 = and i64 %150, -2
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi i64 [ 0, %158 ], [ %182, %160 ]
  %162 = phi i64 [ 0, %158 ], [ %177, %160 ]
  %163 = phi i64 [ 0, %158 ], [ %181, %160 ]
  %164 = phi i64 [ 0, %158 ], [ %183, %160 ]
  %165 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %153, i64 %161, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !222
  %167 = zext i32 %166 to i64
  %168 = add i64 %162, %167
  %169 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %153, i64 %161, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !221
  %171 = zext i32 %170 to i64
  %172 = add i64 %163, %171
  %173 = or disjoint i64 %161, 1
  %174 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %153, i64 %173, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !222
  %176 = zext i32 %175 to i64
  %177 = add i64 %168, %176
  %178 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %153, i64 %173, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !221
  %180 = zext i32 %179 to i64
  %181 = add i64 %172, %180
  %182 = add nuw i64 %161, 2
  %183 = add i64 %164, 2
  %184 = icmp eq i64 %183, %159
  br i1 %184, label %185, label %160, !llvm.loop !449

185:                                              ; preds = %160, %155
  %186 = phi i64 [ undef, %155 ], [ %177, %160 ]
  %187 = phi i64 [ undef, %155 ], [ %181, %160 ]
  %188 = phi i64 [ 0, %155 ], [ %182, %160 ]
  %189 = phi i64 [ 0, %155 ], [ %177, %160 ]
  %190 = phi i64 [ 0, %155 ], [ %181, %160 ]
  %191 = icmp eq i64 %156, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %153, i64 %188, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !222
  %195 = zext i32 %194 to i64
  %196 = add i64 %189, %195
  %197 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %153, i64 %188, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !221
  %199 = zext i32 %198 to i64
  %200 = add i64 %190, %199
  br label %201

201:                                              ; preds = %185, %192
  %202 = phi i64 [ %186, %185 ], [ %196, %192 ]
  %203 = phi i64 [ %187, %185 ], [ %200, %192 ]
  %204 = add i64 %203, %202
  %205 = icmp ugt i64 %204, %2
  br i1 %205, label %213, label %206

206:                                              ; preds = %152, %201
  %207 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 29
  %208 = load i32, ptr %207, align 8, !tbaa !356
  %209 = call i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %153, i64 noundef %150, ptr noundef %1, i64 noundef %2, i32 noundef %208)
  %210 = icmp ult i64 %209, -119
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 17
  store ptr null, ptr %212, align 8, !tbaa !450
  br label %213

213:                                              ; preds = %201, %206, %211
  %214 = phi i64 [ 0, %211 ], [ %209, %206 ], [ -107, %201 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %266

215:                                              ; preds = %145, %119, %149
  %216 = phi i64 [ %150, %149 ], [ -106, %119 ], [ -106, %145 ]
  %217 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 26
  %218 = load i32, ptr %217, align 4, !tbaa !451
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %266, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %222 = load i32, ptr %221, align 4, !tbaa !180
  %223 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 22
  %224 = load i32, ptr %223, align 8, !tbaa !177
  %225 = add i32 %222, -6
  %226 = icmp ult i32 %225, -3
  %227 = icmp ne i32 %224, 1
  %228 = or i1 %226, %227
  %229 = add nsw i32 %222, -3
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds [4 x [3 x ptr]], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 0, i64 %63, i64 %230
  %232 = sext i32 %222 to i64
  %233 = getelementptr inbounds [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 0, i64 %63, i64 %232
  %234 = select i1 %228, ptr %233, ptr %231
  %235 = load ptr, ptr %234, align 8, !tbaa !43
  %236 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 17
  store ptr null, ptr %236, align 8, !tbaa !450
  %237 = load ptr, ptr %64, align 8, !tbaa !359
  %238 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %237, i64 0, i32 1
  %239 = tail call i64 %235(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %238, ptr noundef %1, i64 noundef %2) #30
  br label %258

240:                                              ; preds = %115
  %241 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %242 = load i32, ptr %241, align 4, !tbaa !180
  %243 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 22
  %244 = load i32, ptr %243, align 8, !tbaa !177
  %245 = add i32 %242, -6
  %246 = icmp ult i32 %245, -3
  %247 = icmp ne i32 %244, 1
  %248 = or i1 %246, %247
  %249 = add nsw i32 %242, -3
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds [4 x [3 x ptr]], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 0, i64 %63, i64 %250
  %252 = sext i32 %242 to i64
  %253 = getelementptr inbounds [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 0, i64 %63, i64 %252
  %254 = select i1 %248, ptr %253, ptr %251
  %255 = load ptr, ptr %254, align 8, !tbaa !43
  %256 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 2, i32 17
  store ptr null, ptr %256, align 8, !tbaa !450
  %257 = tail call i64 %255(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %68, ptr noundef %1, i64 noundef %2) #30
  br label %258

258:                                              ; preds = %220, %109, %240, %85
  %259 = phi i64 [ %88, %85 ], [ %114, %109 ], [ %239, %220 ], [ %257, %240 ]
  %260 = getelementptr inbounds i8, ptr %1, i64 %2
  %261 = sub i64 0, %259
  %262 = getelementptr inbounds i8, ptr %260, i64 %261
  %263 = load ptr, ptr %23, align 8, !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr nonnull align 1 %262, i64 %259, i1 false)
  %264 = load ptr, ptr %23, align 8, !tbaa !204
  %265 = getelementptr inbounds i8, ptr %264, i64 %259
  store ptr %265, ptr %23, align 8, !tbaa !204
  br label %266

266:                                              ; preds = %215, %213, %107, %81, %14, %15, %258
  %267 = phi i64 [ 0, %258 ], [ 1, %15 ], [ 1, %14 ], [ %108, %107 ], [ -41, %81 ], [ %216, %215 ], [ %214, %213 ]
  ret i64 %267
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #22 {
  %8 = alloca %struct.repcodes_s, align 8
  %9 = load i32, ptr %1, align 8, !tbaa !452
  %10 = getelementptr inbounds i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #30
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %12, i64 0, i32 1
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 1
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi ptr [ %21, %20 ], [ %15, %14 ]
  %24 = load i64, ptr %23, align 8, !tbaa !110
  %25 = and i64 %24, 4294967295
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i64 [ 0, %16 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %29, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %30, i64 12, i1 false)
  %31 = zext i32 %9 to i64
  %32 = icmp ult i64 %31, %3
  br i1 %32, label %33, label %338

33:                                               ; preds = %26
  %34 = load i32, ptr %8, align 8
  %35 = icmp eq i32 %6, 2
  %36 = getelementptr inbounds i32, ptr %8, i64 1
  %37 = getelementptr inbounds i32, ptr %8, i64 2
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 18
  %39 = getelementptr inbounds %struct.ZSTD_SequencePosition, ptr %1, i64 0, i32 2
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  %41 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 28
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 4
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 7
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %45 = getelementptr inbounds i8, ptr %10, i64 -32
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %47 = ptrtoint ptr %45 to i64
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %51 = load i32, ptr %36, align 4
  %52 = load i32, ptr %37, align 8
  br label %53

53:                                               ; preds = %33, %328
  %54 = phi i32 [ %52, %33 ], [ %114, %328 ]
  %55 = phi i32 [ %51, %33 ], [ %115, %328 ]
  %56 = phi i64 [ %31, %33 ], [ %336, %328 ]
  %57 = phi i32 [ %9, %33 ], [ %335, %328 ]
  %58 = phi ptr [ %4, %33 ], [ %334, %328 ]
  %59 = phi i32 [ %34, %33 ], [ %116, %328 ]
  %60 = ptrtoint ptr %58 to i64
  %61 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %56
  %62 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %56, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !221
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, ptr %61, align 4, !tbaa !219
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %338, label %68

68:                                               ; preds = %53, %65
  %69 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %56, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !222
  br i1 %35, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, ptr %61, align 4, !tbaa !219
  %73 = add i32 %72, 3
  br label %113

74:                                               ; preds = %68
  %75 = icmp eq i32 %70, 0
  %76 = load i32, ptr %61, align 4, !tbaa !219
  %77 = add i32 %76, 3
  %78 = icmp ne i32 %59, %76
  %79 = select i1 %75, i1 true, i1 %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = icmp eq i32 %55, %76
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = select i1 %75, i32 1, i32 2
  br label %94

84:                                               ; preds = %80
  %85 = icmp eq i32 %54, %76
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = select i1 %75, i32 2, i32 3
  br label %94

88:                                               ; preds = %84
  %89 = add i32 %59, -1
  %90 = icmp eq i32 %89, %76
  %91 = select i1 %75, i1 %90, i1 false
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = icmp ugt i32 %77, 3
  br i1 %93, label %109, label %94

94:                                               ; preds = %88, %74, %86, %82, %92
  %95 = phi i32 [ %77, %92 ], [ %87, %86 ], [ %83, %82 ], [ 1, %74 ], [ 3, %88 ]
  %96 = xor i1 %75, true
  %97 = sext i1 %96 to i32
  %98 = add nsw i32 %95, %97
  switch i32 %98, label %101 [
    i32 0, label %113
    i32 3, label %99
  ]

99:                                               ; preds = %94
  %100 = add i32 %59, -1
  br label %105

101:                                              ; preds = %94
  %102 = zext i32 %98 to i64
  %103 = getelementptr inbounds i32, ptr %8, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !45
  br label %105

105:                                              ; preds = %101, %99
  %106 = phi i32 [ %100, %99 ], [ %104, %101 ]
  %107 = icmp eq i32 %98, 1
  %108 = select i1 %107, i32 %54, i32 %55
  br label %109

109:                                              ; preds = %92, %105
  %110 = phi i32 [ %108, %105 ], [ %55, %92 ]
  %111 = phi i32 [ %95, %105 ], [ %77, %92 ]
  %112 = phi i32 [ %106, %105 ], [ %76, %92 ]
  store i32 %110, ptr %37, align 8, !tbaa !45
  store i32 %59, ptr %36, align 4, !tbaa !45
  store i32 %112, ptr %8, align 8, !tbaa !45
  br label %113

113:                                              ; preds = %109, %94, %71
  %114 = phi i32 [ %54, %71 ], [ %54, %94 ], [ %110, %109 ]
  %115 = phi i32 [ %55, %71 ], [ %55, %94 ], [ %59, %109 ]
  %116 = phi i32 [ %59, %71 ], [ %59, %94 ], [ %112, %109 ]
  %117 = phi i32 [ %73, %71 ], [ %95, %94 ], [ %111, %109 ]
  %118 = load i32, ptr %38, align 8, !tbaa !375
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %143, label %120

120:                                              ; preds = %113
  %121 = add i32 %70, %63
  %122 = zext i32 %121 to i64
  %123 = load i64, ptr %39, align 8, !tbaa !454
  %124 = add i64 %123, %122
  store i64 %124, ptr %39, align 8, !tbaa !454
  %125 = load i32, ptr %40, align 4, !tbaa !252
  %126 = shl nuw i32 1, %125
  %127 = zext i32 %126 to i64
  %128 = icmp ugt i64 %124, %127
  %129 = add i64 %124, %27
  %130 = select i1 %128, i64 %127, i64 %129
  %131 = zext i32 %117 to i64
  %132 = add i64 %130, 3
  %133 = icmp ult i64 %132, %131
  br i1 %133, label %408, label %134

134:                                              ; preds = %120
  %135 = load ptr, ptr %41, align 8, !tbaa !129
  %136 = icmp ne ptr %135, null
  %137 = load i32, ptr %42, align 4, !tbaa !439
  %138 = icmp eq i32 %137, 3
  %139 = or i1 %136, %138
  %140 = select i1 %139, i64 3, i64 4
  %141 = zext i32 %63 to i64
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %408, label %143

143:                                              ; preds = %113, %134
  %144 = load i32, ptr %1, align 8, !tbaa !452
  %145 = sub i32 %57, %144
  %146 = zext i32 %145 to i64
  %147 = load i64, ptr %43, align 8, !tbaa !364
  %148 = icmp ugt i64 %147, %146
  br i1 %148, label %149, label %408

149:                                              ; preds = %143
  %150 = zext i32 %70 to i64
  %151 = zext i32 %63 to i64
  %152 = getelementptr inbounds i8, ptr %58, i64 %150
  %153 = icmp ugt ptr %152, %45
  %154 = load ptr, ptr %46, align 8, !tbaa !204
  br i1 %153, label %178, label %155

155:                                              ; preds = %149
  %156 = load <2 x i64>, ptr %58, align 1, !tbaa !44
  store <2 x i64> %156, ptr %154, align 1, !tbaa !44
  %157 = icmp ugt i32 %70, 16
  br i1 %157, label %158, label %299

158:                                              ; preds = %155
  %159 = load ptr, ptr %46, align 8, !tbaa !204
  %160 = getelementptr inbounds i8, ptr %159, i64 16
  %161 = getelementptr inbounds i8, ptr %58, i64 16
  %162 = add nsw i64 %150, -16
  %163 = getelementptr inbounds i8, ptr %159, i64 %150
  %164 = load <2 x i64>, ptr %161, align 1, !tbaa !44
  store <2 x i64> %164, ptr %160, align 1, !tbaa !44
  %165 = icmp ult i64 %162, 17
  br i1 %165, label %299, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds i8, ptr %159, i64 32
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %167, %166 ], [ %176, %168 ]
  %170 = phi ptr [ %161, %166 ], [ %174, %168 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 16
  %172 = load <2 x i64>, ptr %171, align 1, !tbaa !44
  store <2 x i64> %172, ptr %169, align 1, !tbaa !44
  %173 = getelementptr inbounds i8, ptr %169, i64 16
  %174 = getelementptr inbounds i8, ptr %170, i64 32
  %175 = load <2 x i64>, ptr %174, align 1, !tbaa !44
  store <2 x i64> %175, ptr %173, align 1, !tbaa !44
  %176 = getelementptr inbounds i8, ptr %169, i64 32
  %177 = icmp ult ptr %176, %163
  br i1 %177, label %168, label %303, !llvm.loop !455

178:                                              ; preds = %149
  %179 = ptrtoint ptr %152 to i64
  %180 = icmp ugt ptr %58, %45
  br i1 %180, label %199, label %181

181:                                              ; preds = %178
  %182 = ptrtoint ptr %58 to i64
  %183 = sub i64 %47, %182
  %184 = getelementptr inbounds i8, ptr %154, i64 %183
  %185 = load <2 x i64>, ptr %58, align 1, !tbaa !44
  store <2 x i64> %185, ptr %154, align 1, !tbaa !44
  %186 = icmp ult i64 %183, 17
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds i8, ptr %154, i64 16
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi ptr [ %188, %187 ], [ %197, %189 ]
  %191 = phi ptr [ %58, %187 ], [ %195, %189 ]
  %192 = getelementptr inbounds i8, ptr %191, i64 16
  %193 = load <2 x i64>, ptr %192, align 1, !tbaa !44
  store <2 x i64> %193, ptr %190, align 1, !tbaa !44
  %194 = getelementptr inbounds i8, ptr %190, i64 16
  %195 = getelementptr inbounds i8, ptr %191, i64 32
  %196 = load <2 x i64>, ptr %195, align 1, !tbaa !44
  store <2 x i64> %196, ptr %194, align 1, !tbaa !44
  %197 = getelementptr inbounds i8, ptr %190, i64 32
  %198 = icmp ult ptr %197, %184
  br i1 %198, label %189, label %199, !llvm.loop !455

199:                                              ; preds = %189, %181, %178
  %200 = phi ptr [ %45, %181 ], [ %58, %178 ], [ %45, %189 ]
  %201 = phi ptr [ %184, %181 ], [ %154, %178 ], [ %184, %189 ]
  %202 = icmp ult ptr %200, %152
  br i1 %202, label %203, label %303

203:                                              ; preds = %199
  %204 = ptrtoint ptr %201 to i64
  %205 = ptrtoint ptr %200 to i64
  %206 = sub i64 %179, %205
  %207 = getelementptr i8, ptr %200, i64 %206
  %208 = icmp ult i64 %206, 8
  %209 = sub i64 %204, %205
  %210 = icmp ult i64 %209, 32
  %211 = select i1 %208, i1 true, i1 %210
  br i1 %211, label %247, label %212

212:                                              ; preds = %203
  %213 = icmp ult i64 %206, 32
  br i1 %213, label %233, label %214

214:                                              ; preds = %212
  %215 = and i64 %206, -32
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi i64 [ 0, %214 ], [ %224, %216 ]
  %218 = getelementptr i8, ptr %201, i64 %217
  %219 = getelementptr i8, ptr %200, i64 %217
  %220 = getelementptr i8, ptr %219, i64 16
  %221 = load <16 x i8>, ptr %219, align 1, !tbaa !44
  %222 = load <16 x i8>, ptr %220, align 1, !tbaa !44
  %223 = getelementptr i8, ptr %218, i64 16
  store <16 x i8> %221, ptr %218, align 1, !tbaa !44
  store <16 x i8> %222, ptr %223, align 1, !tbaa !44
  %224 = add nuw i64 %217, 32
  %225 = icmp eq i64 %224, %215
  br i1 %225, label %226, label %216, !llvm.loop !456

226:                                              ; preds = %216
  %227 = icmp eq i64 %206, %215
  br i1 %227, label %303, label %228

228:                                              ; preds = %226
  %229 = getelementptr i8, ptr %200, i64 %215
  %230 = getelementptr i8, ptr %201, i64 %215
  %231 = and i64 %206, 24
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %247, label %233

233:                                              ; preds = %212, %228
  %234 = phi i64 [ %215, %228 ], [ 0, %212 ]
  %235 = and i64 %206, -8
  %236 = getelementptr i8, ptr %201, i64 %235
  %237 = getelementptr i8, ptr %200, i64 %235
  br label %238

238:                                              ; preds = %238, %233
  %239 = phi i64 [ %234, %233 ], [ %243, %238 ]
  %240 = getelementptr i8, ptr %201, i64 %239
  %241 = getelementptr i8, ptr %200, i64 %239
  %242 = load <8 x i8>, ptr %241, align 1, !tbaa !44
  store <8 x i8> %242, ptr %240, align 1, !tbaa !44
  %243 = add nuw i64 %239, 8
  %244 = icmp eq i64 %243, %235
  br i1 %244, label %245, label %238, !llvm.loop !457

245:                                              ; preds = %238
  %246 = icmp eq i64 %206, %235
  br i1 %246, label %303, label %247

247:                                              ; preds = %203, %228, %245
  %248 = phi ptr [ %201, %203 ], [ %230, %228 ], [ %236, %245 ]
  %249 = phi ptr [ %200, %203 ], [ %229, %228 ], [ %237, %245 ]
  %250 = add i64 %60, %150
  %251 = ptrtoint ptr %249 to i64
  %252 = sub i64 %250, %251
  %253 = add i64 %60, -1
  %254 = add i64 %253, %150
  %255 = sub i64 %254, %251
  %256 = and i64 %252, 7
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %247, %258
  %259 = phi ptr [ %264, %258 ], [ %248, %247 ]
  %260 = phi ptr [ %262, %258 ], [ %249, %247 ]
  %261 = phi i64 [ %265, %258 ], [ 0, %247 ]
  %262 = getelementptr inbounds i8, ptr %260, i64 1
  %263 = load i8, ptr %260, align 1, !tbaa !44
  %264 = getelementptr inbounds i8, ptr %259, i64 1
  store i8 %263, ptr %259, align 1, !tbaa !44
  %265 = add i64 %261, 1
  %266 = icmp eq i64 %265, %256
  br i1 %266, label %267, label %258, !llvm.loop !458

267:                                              ; preds = %258, %247
  %268 = phi ptr [ %248, %247 ], [ %264, %258 ]
  %269 = phi ptr [ %249, %247 ], [ %262, %258 ]
  %270 = icmp ult i64 %255, 7
  br i1 %270, label %303, label %271

271:                                              ; preds = %267, %271
  %272 = phi ptr [ %297, %271 ], [ %268, %267 ]
  %273 = phi ptr [ %295, %271 ], [ %269, %267 ]
  %274 = getelementptr inbounds i8, ptr %273, i64 1
  %275 = load i8, ptr %273, align 1, !tbaa !44
  %276 = getelementptr inbounds i8, ptr %272, i64 1
  store i8 %275, ptr %272, align 1, !tbaa !44
  %277 = getelementptr inbounds i8, ptr %273, i64 2
  %278 = load i8, ptr %274, align 1, !tbaa !44
  %279 = getelementptr inbounds i8, ptr %272, i64 2
  store i8 %278, ptr %276, align 1, !tbaa !44
  %280 = getelementptr inbounds i8, ptr %273, i64 3
  %281 = load i8, ptr %277, align 1, !tbaa !44
  %282 = getelementptr inbounds i8, ptr %272, i64 3
  store i8 %281, ptr %279, align 1, !tbaa !44
  %283 = getelementptr inbounds i8, ptr %273, i64 4
  %284 = load i8, ptr %280, align 1, !tbaa !44
  %285 = getelementptr inbounds i8, ptr %272, i64 4
  store i8 %284, ptr %282, align 1, !tbaa !44
  %286 = getelementptr inbounds i8, ptr %273, i64 5
  %287 = load i8, ptr %283, align 1, !tbaa !44
  %288 = getelementptr inbounds i8, ptr %272, i64 5
  store i8 %287, ptr %285, align 1, !tbaa !44
  %289 = getelementptr inbounds i8, ptr %273, i64 6
  %290 = load i8, ptr %286, align 1, !tbaa !44
  %291 = getelementptr inbounds i8, ptr %272, i64 6
  store i8 %290, ptr %288, align 1, !tbaa !44
  %292 = getelementptr inbounds i8, ptr %273, i64 7
  %293 = load i8, ptr %289, align 1, !tbaa !44
  %294 = getelementptr inbounds i8, ptr %272, i64 7
  store i8 %293, ptr %291, align 1, !tbaa !44
  %295 = getelementptr inbounds i8, ptr %273, i64 8
  %296 = load i8, ptr %292, align 1, !tbaa !44
  %297 = getelementptr inbounds i8, ptr %272, i64 8
  store i8 %296, ptr %294, align 1, !tbaa !44
  %298 = icmp eq ptr %295, %207
  br i1 %298, label %303, label %271, !llvm.loop !459

299:                                              ; preds = %158, %155
  %300 = load ptr, ptr %46, align 8, !tbaa !204
  %301 = getelementptr inbounds i8, ptr %300, i64 %150
  store ptr %301, ptr %46, align 8, !tbaa !204
  %302 = load ptr, ptr %49, align 8, !tbaa !194
  br label %315

303:                                              ; preds = %168, %267, %271, %226, %245, %199
  %304 = load ptr, ptr %46, align 8, !tbaa !204
  %305 = getelementptr inbounds i8, ptr %304, i64 %150
  store ptr %305, ptr %46, align 8, !tbaa !204
  %306 = icmp ugt i32 %70, 65535
  %307 = load ptr, ptr %49, align 8, !tbaa !194
  br i1 %306, label %308, label %315, !prof !460

308:                                              ; preds = %303
  store i32 1, ptr %48, align 8, !tbaa !201
  %309 = load ptr, ptr %44, align 8, !tbaa !190
  %310 = ptrtoint ptr %307 to i64
  %311 = ptrtoint ptr %309 to i64
  %312 = sub i64 %310, %311
  %313 = lshr exact i64 %312, 3
  %314 = trunc i64 %313 to i32
  store i32 %314, ptr %50, align 4, !tbaa !202
  br label %315

315:                                              ; preds = %299, %308, %303
  %316 = phi ptr [ %302, %299 ], [ %307, %308 ], [ %307, %303 ]
  %317 = trunc i32 %70 to i16
  %318 = getelementptr inbounds %struct.SeqDef_s, ptr %316, i64 0, i32 1
  store i16 %317, ptr %318, align 4, !tbaa !195
  store i32 %117, ptr %316, align 4, !tbaa !198
  %319 = add nsw i64 %151, -3
  %320 = icmp ugt i64 %319, 65535
  br i1 %320, label %321, label %328, !prof !362

321:                                              ; preds = %315
  store i32 2, ptr %48, align 8, !tbaa !201
  %322 = load ptr, ptr %44, align 8, !tbaa !190
  %323 = ptrtoint ptr %316 to i64
  %324 = ptrtoint ptr %322 to i64
  %325 = sub i64 %323, %324
  %326 = lshr exact i64 %325, 3
  %327 = trunc i64 %326 to i32
  store i32 %327, ptr %50, align 4, !tbaa !202
  br label %328

328:                                              ; preds = %315, %321
  %329 = trunc i64 %319 to i16
  %330 = getelementptr inbounds %struct.SeqDef_s, ptr %316, i64 0, i32 2
  store i16 %329, ptr %330, align 2, !tbaa !199
  %331 = getelementptr inbounds %struct.SeqDef_s, ptr %316, i64 1
  store ptr %331, ptr %49, align 8, !tbaa !194
  %332 = add i32 %70, %63
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %58, i64 %333
  %335 = add i32 %57, 1
  %336 = zext i32 %335 to i64
  %337 = icmp ult i64 %336, %3
  br i1 %337, label %53, label %338, !llvm.loop !461

338:                                              ; preds = %328, %65, %26
  %339 = phi ptr [ %4, %26 ], [ %58, %65 ], [ %334, %328 ]
  %340 = phi i32 [ %9, %26 ], [ %57, %65 ], [ %335, %328 ]
  %341 = phi i64 [ %31, %26 ], [ %56, %65 ], [ %336, %328 ]
  %342 = icmp eq i64 %341, %3
  br i1 %342, label %408, label %343

343:                                              ; preds = %338
  %344 = icmp ne i32 %6, 2
  %345 = icmp eq i32 %340, %9
  %346 = select i1 %344, i1 true, i1 %345
  br i1 %346, label %384, label %347

347:                                              ; preds = %343
  %348 = add i32 %340, -1
  %349 = add i32 %9, 2
  %350 = icmp ult i32 %348, %349
  br i1 %350, label %365, label %351

351:                                              ; preds = %347
  %352 = add i32 %340, -3
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !219
  %356 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %355, ptr %356, align 8, !tbaa !45
  %357 = add i32 %340, -2
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !219
  %361 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %360, ptr %361, align 4, !tbaa !45
  %362 = zext i32 %348 to i64
  %363 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !219
  store i32 %364, ptr %8, align 8, !tbaa !45
  br label %384

365:                                              ; preds = %347
  %366 = icmp eq i32 %340, %349
  br i1 %366, label %367, label %378

367:                                              ; preds = %365
  %368 = load i32, ptr %8, align 8, !tbaa !45
  %369 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %368, ptr %369, align 8, !tbaa !45
  %370 = add i32 %340, -2
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !219
  %374 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %373, ptr %374, align 4, !tbaa !45
  %375 = zext i32 %348 to i64
  %376 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !219
  store i32 %377, ptr %8, align 8, !tbaa !45
  br label %384

378:                                              ; preds = %365
  %379 = getelementptr inbounds i32, ptr %8, i64 1
  %380 = load <2 x i32>, ptr %8, align 8, !tbaa !45
  store <2 x i32> %380, ptr %379, align 4, !tbaa !45
  %381 = zext i32 %348 to i64
  %382 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !219
  store i32 %383, ptr %8, align 8, !tbaa !45
  br label %384

384:                                              ; preds = %351, %378, %367, %343
  %385 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !359
  %387 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %386, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %387, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %388 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %341, i32 1
  %389 = load i32, ptr %388, align 4, !tbaa !222
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %403, label %391

391:                                              ; preds = %384
  %392 = zext i32 %389 to i64
  %393 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !204
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %394, ptr align 1 %339, i64 %392, i1 false)
  %395 = load ptr, ptr %393, align 8, !tbaa !204
  %396 = getelementptr inbounds i8, ptr %395, i64 %392
  store ptr %396, ptr %393, align 8, !tbaa !204
  %397 = load i32, ptr %388, align 4, !tbaa !222
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %339, i64 %398
  %400 = getelementptr inbounds %struct.ZSTD_SequencePosition, ptr %1, i64 0, i32 2
  %401 = load i64, ptr %400, align 8, !tbaa !454
  %402 = add i64 %401, %398
  store i64 %402, ptr %400, align 8, !tbaa !454
  br label %403

403:                                              ; preds = %384, %391
  %404 = phi ptr [ %399, %391 ], [ %339, %384 ]
  %405 = icmp eq ptr %404, %10
  br i1 %405, label %406, label %408

406:                                              ; preds = %403
  %407 = add i32 %340, 1
  store i32 %407, ptr %1, align 8, !tbaa !452
  br label %408

408:                                              ; preds = %143, %120, %134, %403, %338, %406
  %409 = phi i64 [ %5, %406 ], [ -107, %338 ], [ -107, %403 ], [ -107, %134 ], [ -107, %120 ], [ -107, %143 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #30
  ret i64 %409
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #23 {
  %3 = load i8, ptr %0, align 1, !tbaa !44
  %4 = zext i8 %3 to i64
  %5 = mul nuw i64 %4, 72340172838076673
  %6 = and i64 %1, 31
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %106, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = getelementptr i8, ptr %0, i64 %6
  %13 = getelementptr i8, ptr %12, i64 -7
  %14 = icmp ugt i64 %6, 8
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i64, ptr %0, align 1, !tbaa !110
  %17 = load i64, ptr %11, align 1, !tbaa !110
  %18 = xor i64 %17, %16
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = tail call i64 @llvm.cttz.i64(i64 %18, i1 true), !range !462
  %22 = lshr i64 %21, 3
  br label %80

23:                                               ; preds = %15, %29
  %24 = phi ptr [ %27, %29 ], [ %0, %15 ]
  %25 = phi ptr [ %26, %29 ], [ %11, %15 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  %27 = getelementptr inbounds i8, ptr %24, i64 8
  %28 = icmp ult ptr %26, %13
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i64, ptr %27, align 1, !tbaa !110
  %31 = load i64, ptr %26, align 1, !tbaa !110
  %32 = xor i64 %31, %30
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %23, label %34

34:                                               ; preds = %29
  %35 = tail call i64 @llvm.cttz.i64(i64 %32, i1 true), !range !462
  %36 = lshr i64 %35, 3
  %37 = getelementptr inbounds i8, ptr %26, i64 %36
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
  %47 = load i32, ptr %42, align 1, !tbaa !45
  %48 = load i32, ptr %43, align 1, !tbaa !45
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %43, i64 4
  %52 = getelementptr inbounds i8, ptr %42, i64 4
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = phi ptr [ %52, %50 ], [ %42, %46 ], [ %42, %41 ]
  %55 = phi ptr [ %51, %50 ], [ %43, %46 ], [ %43, %41 ]
  %56 = getelementptr inbounds i8, ptr %12, i64 -1
  %57 = icmp ult ptr %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i16, ptr %54, align 1, !tbaa !239
  %60 = load i16, ptr %55, align 1, !tbaa !239
  %61 = icmp eq i16 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %55, i64 2
  %64 = getelementptr inbounds i8, ptr %54, i64 2
  br label %65

65:                                               ; preds = %62, %58, %53
  %66 = phi ptr [ %64, %62 ], [ %54, %58 ], [ %54, %53 ]
  %67 = phi ptr [ %63, %62 ], [ %55, %58 ], [ %55, %53 ]
  %68 = icmp ult ptr %67, %12
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8, ptr %66, align 1, !tbaa !44
  %71 = load i8, ptr %67, align 1, !tbaa !44
  %72 = icmp eq i8 %70, %71
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i8, ptr %67, i64 %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi ptr [ %67, %65 ], [ %74, %69 ]
  %77 = ptrtoint ptr %76 to i64
  %78 = ptrtoint ptr %11 to i64
  %79 = sub i64 %77, %78
  br label %80

80:                                               ; preds = %20, %34, %75
  %81 = phi i64 [ %79, %75 ], [ %22, %20 ], [ %40, %34 ]
  %82 = add nsw i64 %6, -1
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %80, %8
  %85 = icmp ult i64 %1, 32
  br i1 %85, label %106, label %86

86:                                               ; preds = %84, %103
  %87 = phi i64 [ %104, %103 ], [ %6, %84 ]
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = load i64, ptr %88, align 1, !tbaa !110
  %90 = icmp eq i64 %89, %5
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, ptr %88, i64 8
  %93 = load i64, ptr %92, align 1, !tbaa !110
  %94 = icmp eq i64 %93, %5
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %88, i64 16
  %97 = load i64, ptr %96, align 1, !tbaa !110
  %98 = icmp eq i64 %97, %5
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %88, i64 24
  %101 = load i64, ptr %100, align 1, !tbaa !110
  %102 = icmp eq i64 %101, %5
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = add i64 %87, 32
  %105 = icmp eq i64 %104, %1
  br i1 %105, label %106, label %86, !llvm.loop !463

106:                                              ; preds = %103, %86, %91, %95, %99, %84, %80, %2
  %107 = phi i32 [ 1, %2 ], [ 0, %80 ], [ 1, %84 ], [ 1, %103 ], [ 0, %86 ], [ 0, %91 ], [ 0, %95 ], [ 0, %99 ]
  ret i32 %107
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #2 {
  %11 = alloca %struct.repcodes_s, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !464
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %123, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = load ptr, ptr %1, align 8, !tbaa !190
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !201
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %27 = load i32, ptr %26, align 4, !tbaa !202
  br label %28

28:                                               ; preds = %25, %13
  %29 = phi i32 [ %27, %25 ], [ %21, %13 ]
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i32, ptr %2, i64 1
  %33 = getelementptr inbounds i32, ptr %2, i64 2
  %34 = getelementptr inbounds i32, ptr %3, i64 1
  %35 = getelementptr inbounds i32, ptr %3, i64 2
  %36 = zext i32 %29 to i64
  %37 = and i64 %20, 4294967295
  br label %38

38:                                               ; preds = %120, %31
  %39 = phi i64 [ 0, %31 ], [ %121, %120 ]
  %40 = getelementptr inbounds %struct.SeqDef_s, ptr %16, i64 %39
  %41 = getelementptr inbounds %struct.SeqDef_s, ptr %16, i64 %39, i32 1
  %42 = load i16, ptr %41, align 4, !tbaa !195
  %43 = icmp eq i16 %42, 0
  %44 = icmp ne i64 %39, %36
  %45 = select i1 %43, i1 %44, i1 false
  %46 = zext i1 %45 to i32
  %47 = load i32, ptr %40, align 4, !tbaa !198
  %48 = add i32 %47, -1
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %70

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %48, %46
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4, !tbaa !45
  %55 = add i32 %54, -1
  %56 = load i32, ptr %3, align 4, !tbaa !45
  %57 = add i32 %56, -1
  br label %64

58:                                               ; preds = %50
  %59 = zext nneg i32 %51 to i64
  %60 = getelementptr inbounds i32, ptr %2, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !45
  %62 = getelementptr inbounds i32, ptr %3, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !45
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i32 [ %55, %53 ], [ %61, %58 ]
  %66 = phi i32 [ %57, %53 ], [ %63, %58 ]
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = add i32 %66, 3
  store i32 %69, ptr %40, align 4, !tbaa !198
  br label %70

70:                                               ; preds = %68, %38
  %71 = phi i32 [ %69, %68 ], [ %47, %38 ]
  %72 = icmp ugt i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load <2 x i32>, ptr %2, align 4, !tbaa !45
  store <2 x i32> %74, ptr %32, align 4, !tbaa !45
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
  %82 = load i32, ptr %2, align 4, !tbaa !45
  %83 = add i32 %82, -1
  br label %89

84:                                               ; preds = %76
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds i32, ptr %2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !45
  %88 = load i32, ptr %2, align 4, !tbaa !45
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i32 [ %82, %81 ], [ %88, %84 ]
  %91 = phi i32 [ %83, %81 ], [ %87, %84 ]
  %92 = icmp eq i32 %80, 1
  %93 = select i1 %92, ptr %33, ptr %32
  %94 = load i32, ptr %93, align 4, !tbaa !45
  store i32 %94, ptr %33, align 4, !tbaa !45
  store i32 %90, ptr %32, align 4, !tbaa !45
  br label %95

95:                                               ; preds = %89, %73
  %96 = phi i32 [ %91, %89 ], [ %75, %73 ]
  store i32 %96, ptr %2, align 4, !tbaa !45
  br label %97

97:                                               ; preds = %95, %76
  %98 = icmp ugt i32 %47, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load <2 x i32>, ptr %3, align 4, !tbaa !45
  store <2 x i32> %100, ptr %34, align 4, !tbaa !45
  %101 = add i32 %47, -3
  br label %118

102:                                              ; preds = %97
  %103 = add nsw i32 %48, %46
  switch i32 %103, label %107 [
    i32 0, label %120
    i32 3, label %104
  ]

104:                                              ; preds = %102
  %105 = load i32, ptr %3, align 4, !tbaa !45
  %106 = add i32 %105, -1
  br label %112

107:                                              ; preds = %102
  %108 = zext i32 %103 to i64
  %109 = getelementptr inbounds i32, ptr %3, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !45
  %111 = load i32, ptr %3, align 4, !tbaa !45
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i32 [ %105, %104 ], [ %111, %107 ]
  %114 = phi i32 [ %106, %104 ], [ %110, %107 ]
  %115 = icmp eq i32 %103, 1
  %116 = select i1 %115, ptr %35, ptr %34
  %117 = load i32, ptr %116, align 4, !tbaa !45
  store i32 %117, ptr %35, align 4, !tbaa !45
  store i32 %113, ptr %34, align 4, !tbaa !45
  br label %118

118:                                              ; preds = %112, %99
  %119 = phi i32 [ %114, %112 ], [ %101, %99 ]
  store i32 %119, ptr %3, align 4, !tbaa !45
  br label %120

120:                                              ; preds = %118, %102
  %121 = add nuw nsw i64 %39, 1
  %122 = icmp eq i64 %121, %37
  br i1 %122, label %123, label %38, !llvm.loop !465

123:                                              ; preds = %120, %28, %10
  %124 = icmp ult i64 %5, 3
  br i1 %124, label %233, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %127 = load ptr, ptr %126, align 8, !tbaa !59
  %128 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !359
  %130 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %131 = getelementptr inbounds i8, ptr %4, i64 3
  %132 = add i64 %5, -3
  %133 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %134 = load ptr, ptr %133, align 8, !tbaa !60
  %135 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  %136 = load i64, ptr %135, align 8, !tbaa !61
  %137 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !8
  %139 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !203
  %141 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !204
  %143 = ptrtoint ptr %142 to i64
  %144 = ptrtoint ptr %140 to i64
  %145 = sub i64 %143, %144
  %146 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %131, i64 noundef %132, ptr noundef %140, i64 noundef %145, ptr noundef %1, ptr noundef %127, ptr noundef %129, ptr noundef nonnull %130, ptr noundef %134, i64 noundef %136, i32 noundef %138)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %166, label %148

148:                                              ; preds = %125
  %149 = icmp eq i64 %146, -70
  %150 = icmp uge i64 %132, %7
  %151 = and i1 %150, %149
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = icmp ult i64 %146, -119
  br i1 %153, label %154, label %233

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 6
  %156 = load i32, ptr %155, align 4, !tbaa !85
  %157 = icmp ugt i32 %156, 7
  %158 = add i32 %156, -1
  %159 = select i1 %157, i32 %158, i32 6
  %160 = zext nneg i32 %159 to i64
  %161 = lshr i64 %7, %160
  %162 = add i64 %7, -2
  %163 = sub i64 %162, %161
  %164 = icmp ult i64 %146, %163
  %165 = select i1 %164, i64 %146, i64 0
  br label %166

166:                                              ; preds = %125, %148, %154
  %167 = phi i64 [ %165, %154 ], [ 0, %148 ], [ 0, %125 ]
  %168 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 18
  %169 = load i32, ptr %168, align 8, !tbaa !255
  %170 = icmp eq i32 %169, 0
  %171 = icmp ult i64 %167, 25
  %172 = and i1 %171, %170
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i64 %167, i64 1
  br label %177

177:                                              ; preds = %173, %166
  %178 = phi i64 [ %167, %166 ], [ %176, %173 ]
  %179 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 17
  %180 = load i32, ptr %179, align 8, !tbaa !256
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %177
  %183 = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %179, ptr noundef nonnull %1, ptr noundef nonnull %11), !range !438
  %184 = icmp ult i64 %183, -119
  br i1 %184, label %185, label %233

185:                                              ; preds = %182
  %186 = load <2 x ptr>, ptr %126, align 8, !tbaa !43
  %187 = shufflevector <2 x ptr> %186, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %187, ptr %126, align 8, !tbaa !43
  br label %233

188:                                              ; preds = %177
  switch i64 %178, label %214 [
    i64 0, label %189
    i64 1, label %202
  ]

189:                                              ; preds = %188
  %190 = add i64 %7, 3
  %191 = icmp ugt i64 %190, %5
  br i1 %191, label %233, label %192

192:                                              ; preds = %189
  %193 = trunc i64 %7 to i32
  %194 = shl i32 %193, 3
  %195 = add i32 %194, %8
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %4, align 1, !tbaa !239
  %197 = lshr i32 %195, 16
  %198 = trunc i32 %197 to i8
  %199 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %198, ptr %199, align 1, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %131, ptr align 1 %6, i64 %7, i1 false)
  %200 = icmp ult i64 %190, -119
  br i1 %200, label %201, label %233

201:                                              ; preds = %192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !464
  br label %226

202:                                              ; preds = %188
  %203 = icmp eq i64 %5, 3
  br i1 %203, label %233, label %204

204:                                              ; preds = %202
  %205 = load i8, ptr %6, align 1, !tbaa !44
  %206 = add nuw nsw i32 %8, 2
  %207 = trunc i64 %7 to i32
  %208 = shl i32 %207, 3
  %209 = add i32 %206, %208
  %210 = trunc i32 %209 to i16
  store i16 %210, ptr %4, align 1, !tbaa !239
  %211 = lshr i32 %209, 16
  %212 = trunc i32 %211 to i8
  %213 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %212, ptr %213, align 1, !tbaa !44
  store i8 %205, ptr %131, align 1, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !464
  br label %226

214:                                              ; preds = %188
  %215 = load <2 x ptr>, ptr %126, align 8, !tbaa !43
  %216 = shufflevector <2 x ptr> %215, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %216, ptr %126, align 8, !tbaa !43
  %217 = add nuw nsw i32 %8, 4
  %218 = trunc i64 %178 to i32
  %219 = shl i32 %218, 3
  %220 = add i32 %217, %219
  %221 = trunc i32 %220 to i16
  store i16 %221, ptr %4, align 1, !tbaa !239
  %222 = lshr i32 %220, 16
  %223 = trunc i32 %222 to i8
  %224 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %223, ptr %224, align 1, !tbaa !44
  %225 = add nuw i64 %178, 3
  br label %226

226:                                              ; preds = %204, %214, %201
  %227 = phi i64 [ %190, %201 ], [ 4, %204 ], [ %225, %214 ]
  %228 = load ptr, ptr %126, align 8, !tbaa !59
  %229 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %228, i64 0, i32 1, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !172
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 1, ptr %229, align 4, !tbaa !172
  br label %233

233:                                              ; preds = %202, %152, %189, %226, %232, %123, %182, %192, %185
  %234 = phi i64 [ 0, %185 ], [ %183, %182 ], [ %190, %192 ], [ -70, %123 ], [ %227, %232 ], [ %227, %226 ], [ -70, %189 ], [ %146, %152 ], [ -70, %202 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #30
  ret i64 %234
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #24 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !262
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %79, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !190
  %8 = getelementptr inbounds %struct.SeqDef_s, ptr %7, i64 %2
  %9 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !194
  %10 = load ptr, ptr %0, align 8, !tbaa !190
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %74, label %12

12:                                               ; preds = %6
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %10 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 3
  %17 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !202
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 9
  %21 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  %22 = and i64 %21, 1
  %23 = icmp ult i64 %16, 2
  br i1 %23, label %58, label %24

24:                                               ; preds = %12
  %25 = and i64 %21, -2
  br label %26

26:                                               ; preds = %53, %24
  %27 = phi i64 [ 0, %24 ], [ %54, %53 ]
  %28 = phi i64 [ 0, %24 ], [ %55, %53 ]
  %29 = phi i64 [ 0, %24 ], [ %56, %53 ]
  %30 = getelementptr inbounds %struct.SeqDef_s, ptr %10, i64 %28, i32 1
  %31 = load i16, ptr %30, align 4, !tbaa.struct !263
  %32 = zext i16 %31 to i64
  %33 = add i64 %27, %32
  %34 = icmp eq i64 %28, %19
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, ptr %20, align 8, !tbaa !201
  %37 = icmp eq i32 %36, 1
  %38 = add i64 %33, 65536
  %39 = select i1 %37, i64 %38, i64 %33
  br label %40

40:                                               ; preds = %35, %26
  %41 = phi i64 [ %33, %26 ], [ %39, %35 ]
  %42 = or disjoint i64 %28, 1
  %43 = getelementptr inbounds %struct.SeqDef_s, ptr %10, i64 %42, i32 1
  %44 = load i16, ptr %43, align 4, !tbaa.struct !263
  %45 = zext i16 %44 to i64
  %46 = add i64 %41, %45
  %47 = icmp eq i64 %42, %19
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, ptr %20, align 8, !tbaa !201
  %50 = icmp eq i32 %49, 1
  %51 = add i64 %46, 65536
  %52 = select i1 %50, i64 %51, i64 %46
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i64 [ %46, %40 ], [ %52, %48 ]
  %55 = add nuw i64 %28, 2
  %56 = add i64 %29, 2
  %57 = icmp eq i64 %56, %25
  br i1 %57, label %58, label %26, !llvm.loop !264

58:                                               ; preds = %53, %12
  %59 = phi i64 [ undef, %12 ], [ %54, %53 ]
  %60 = phi i64 [ 0, %12 ], [ %54, %53 ]
  %61 = phi i64 [ 0, %12 ], [ %55, %53 ]
  %62 = icmp eq i64 %22, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.SeqDef_s, ptr %10, i64 %61, i32 1
  %65 = load i16, ptr %64, align 4, !tbaa.struct !263
  %66 = zext i16 %65 to i64
  %67 = add i64 %60, %66
  %68 = icmp eq i64 %61, %19
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, ptr %20, align 8, !tbaa !201
  %71 = icmp eq i32 %70, 1
  %72 = add i64 %67, 65536
  %73 = select i1 %71, i64 %72, i64 %67
  br label %74

74:                                               ; preds = %58, %69, %63, %6
  %75 = phi i64 [ 0, %6 ], [ %59, %58 ], [ %67, %63 ], [ %73, %69 ]
  %76 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !203
  %78 = getelementptr inbounds i8, ptr %77, i64 %75
  store ptr %78, ptr %76, align 8, !tbaa !203
  br label %79

79:                                               ; preds = %74, %4
  %80 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !201
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %85 = load i32, ptr %84, align 4, !tbaa !202
  %86 = zext i32 %85 to i64
  %87 = icmp ult i64 %86, %2
  %88 = icmp ugt i64 %86, %3
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 9
  store i32 0, ptr %91, align 8, !tbaa !201
  br label %97

92:                                               ; preds = %83
  %93 = trunc i64 %2 to i32
  %94 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 10
  %95 = load i32, ptr %94, align 4, !tbaa !202
  %96 = sub i32 %95, %93
  store i32 %96, ptr %94, align 4, !tbaa !202
  br label %97

97:                                               ; preds = %90, %92, %79
  %98 = load ptr, ptr %1, align 8, !tbaa !190
  %99 = getelementptr inbounds %struct.SeqDef_s, ptr %98, i64 %2
  store ptr %99, ptr %0, align 8, !tbaa !190
  %100 = load ptr, ptr %1, align 8, !tbaa !190
  %101 = getelementptr inbounds %struct.SeqDef_s, ptr %100, i64 %3
  %102 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !194
  %103 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !194
  %105 = ptrtoint ptr %104 to i64
  %106 = ptrtoint ptr %100 to i64
  %107 = sub i64 %105, %106
  %108 = ashr exact i64 %107, 3
  %109 = icmp eq i64 %108, %3
  br i1 %109, label %180, label %110

110:                                              ; preds = %97
  %111 = icmp eq ptr %101, %99
  br i1 %111, label %174, label %112

112:                                              ; preds = %110
  %113 = ptrtoint ptr %101 to i64
  %114 = ptrtoint ptr %99 to i64
  %115 = sub i64 %113, %114
  %116 = ashr exact i64 %115, 3
  %117 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 10
  %118 = load i32, ptr %117, align 4, !tbaa !202
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 9
  %121 = tail call i64 @llvm.umax.i64(i64 %116, i64 1)
  %122 = and i64 %121, 1
  %123 = icmp ult i64 %116, 2
  br i1 %123, label %158, label %124

124:                                              ; preds = %112
  %125 = and i64 %121, -2
  br label %126

126:                                              ; preds = %153, %124
  %127 = phi i64 [ 0, %124 ], [ %154, %153 ]
  %128 = phi i64 [ 0, %124 ], [ %155, %153 ]
  %129 = phi i64 [ 0, %124 ], [ %156, %153 ]
  %130 = getelementptr inbounds %struct.SeqDef_s, ptr %99, i64 %128, i32 1
  %131 = load i16, ptr %130, align 4, !tbaa.struct !263
  %132 = zext i16 %131 to i64
  %133 = add i64 %127, %132
  %134 = icmp eq i64 %128, %119
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load i32, ptr %120, align 8, !tbaa !201
  %137 = icmp eq i32 %136, 1
  %138 = add i64 %133, 65536
  %139 = select i1 %137, i64 %138, i64 %133
  br label %140

140:                                              ; preds = %135, %126
  %141 = phi i64 [ %133, %126 ], [ %139, %135 ]
  %142 = or disjoint i64 %128, 1
  %143 = getelementptr inbounds %struct.SeqDef_s, ptr %99, i64 %142, i32 1
  %144 = load i16, ptr %143, align 4, !tbaa.struct !263
  %145 = zext i16 %144 to i64
  %146 = add i64 %141, %145
  %147 = icmp eq i64 %142, %119
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load i32, ptr %120, align 8, !tbaa !201
  %150 = icmp eq i32 %149, 1
  %151 = add i64 %146, 65536
  %152 = select i1 %150, i64 %151, i64 %146
  br label %153

153:                                              ; preds = %148, %140
  %154 = phi i64 [ %146, %140 ], [ %152, %148 ]
  %155 = add nuw i64 %128, 2
  %156 = add i64 %129, 2
  %157 = icmp eq i64 %156, %125
  br i1 %157, label %158, label %126, !llvm.loop !264

158:                                              ; preds = %153, %112
  %159 = phi i64 [ undef, %112 ], [ %154, %153 ]
  %160 = phi i64 [ 0, %112 ], [ %154, %153 ]
  %161 = phi i64 [ 0, %112 ], [ %155, %153 ]
  %162 = icmp eq i64 %122, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.SeqDef_s, ptr %99, i64 %161, i32 1
  %165 = load i16, ptr %164, align 4, !tbaa.struct !263
  %166 = zext i16 %165 to i64
  %167 = add i64 %160, %166
  %168 = icmp eq i64 %161, %119
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load i32, ptr %120, align 8, !tbaa !201
  %171 = icmp eq i32 %170, 1
  %172 = add i64 %167, 65536
  %173 = select i1 %171, i64 %172, i64 %167
  br label %174

174:                                              ; preds = %158, %169, %163, %110
  %175 = phi i64 [ 0, %110 ], [ %159, %158 ], [ %167, %163 ], [ %173, %169 ]
  %176 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !203
  %178 = getelementptr inbounds i8, ptr %177, i64 %175
  %179 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 3
  store ptr %178, ptr %179, align 8, !tbaa !204
  br label %180

180:                                              ; preds = %97, %174
  %181 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !191
  %183 = getelementptr inbounds i8, ptr %182, i64 %2
  store ptr %183, ptr %181, align 8, !tbaa !191
  %184 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !193
  %186 = getelementptr inbounds i8, ptr %185, i64 %2
  store ptr %186, ptr %184, align 8, !tbaa !193
  %187 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !192
  %189 = getelementptr inbounds i8, ptr %188, i64 %2
  store ptr %189, ptr %187, align 8, !tbaa !192
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.seqStoreSplits, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %3, i64 0, i32 47
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %3, i64 0, i32 47, i32 1
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %3, i64 0, i32 47, i32 2
  %10 = sub i64 %2, %1
  %11 = icmp ult i64 %10, 300
  br i1 %11, label %40, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %6, align 8, !tbaa !261
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
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull %0, i64 noundef %16, i64 noundef %18, ptr noundef %3, ptr noundef %4)
  %33 = trunc i64 %18 to i32
  %34 = load ptr, ptr %0, align 8, !tbaa !259
  %35 = load i64, ptr %6, align 8, !tbaa !261
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  store i32 %33, ptr %36, align 4, !tbaa !45
  %37 = add i64 %35, 1
  store i64 %37, ptr %6, align 8, !tbaa !261
  %38 = sub i64 %2, %18
  %39 = icmp ult i64 %38, 300
  br i1 %39, label %40, label %14

40:                                               ; preds = %32, %14, %27, %20, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 47, i32 6
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 25, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !359
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 27
  %16 = load i64, ptr %15, align 8, !tbaa !61
  %17 = tail call i64 @ZSTD_buildBlockEntropyStats(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %14, i64 noundef %16)
  %18 = icmp ult i64 %17, -119
  br i1 %18, label %19, label %193

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !203
  %22 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %21 to i64
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !192
  %29 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !191
  %31 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.SeqStore_t, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !194
  %35 = load ptr, ptr %0, align 8, !tbaa !190
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = load ptr, ptr %10, align 8, !tbaa !359
  %41 = load ptr, ptr %13, align 8, !tbaa !60
  %42 = load i64, ptr %15, align 8, !tbaa !61
  %43 = load i32, ptr %7, align 8, !tbaa !225
  %44 = icmp eq i32 %43, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #30
  store i32 255, ptr %6, align 4, !tbaa !45
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
  %56 = load i32, ptr %6, align 4, !tbaa !45
  %57 = call i64 @HUF_estimateCompressedSize(ptr noundef %40, ptr noundef %41, i32 noundef %56) #30
  br i1 %44, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 47, i32 6, i32 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !466
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
  %70 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %40, i64 0, i32 1
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 47, i32 6, i32 1
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 47, i32 6, i32 1, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !467
  %74 = getelementptr inbounds i8, ptr %28, i64 %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  store i32 31, ptr %5, align 4, !tbaa !45
  %75 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %5, ptr noundef %28, i64 noundef %39, ptr noundef %41, i64 noundef %42) #30
  switch i32 %73, label %79 [
    i32 0, label %76
    i32 1, label %88
  ]

76:                                               ; preds = %68
  %77 = load i32, ptr %5, align 4, !tbaa !45
  %78 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %41, i32 noundef %77) #30
  br label %85

79:                                               ; preds = %68
  %80 = and i32 %73, -2
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, ptr %5, align 4, !tbaa !45
  %84 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %70, ptr noundef %41, i32 noundef %83) #30
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i64 [ %78, %76 ], [ %84, %82 ]
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %99

88:                                               ; preds = %85, %79, %68
  %89 = phi i64 [ %86, %85 ], [ 0, %79 ], [ 0, %68 ]
  %90 = icmp sgt i64 %39, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %96, %91 ], [ %89, %88 ]
  %93 = phi ptr [ %97, %91 ], [ %28, %88 ]
  %94 = load i8, ptr %93, align 1, !tbaa !44
  %95 = zext i8 %94 to i64
  %96 = add i64 %92, %95
  %97 = getelementptr inbounds i8, ptr %93, i64 1
  %98 = icmp ult ptr %97, %74
  br i1 %98, label %91, label %101, !llvm.loop !468

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
  %106 = load i32, ptr %71, align 8, !tbaa !469
  %107 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %40, i64 0, i32 1, i32 2
  %108 = getelementptr inbounds i8, ptr %30, i64 %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  store i32 35, ptr %4, align 4, !tbaa !45
  %109 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %4, ptr noundef %30, i64 noundef %39, ptr noundef %41, i64 noundef %42) #30
  switch i32 %106, label %113 [
    i32 0, label %110
    i32 1, label %122
  ]

110:                                              ; preds = %104
  %111 = load i32, ptr %4, align 4, !tbaa !45
  %112 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %111) #30
  br label %119

113:                                              ; preds = %104
  %114 = and i32 %106, -2
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, ptr %4, align 4, !tbaa !45
  %118 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %107, ptr noundef %41, i32 noundef %117) #30
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi i64 [ %112, %110 ], [ %118, %116 ]
  %121 = icmp ult i64 %120, -119
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %113, %104
  %123 = phi i64 [ %120, %119 ], [ 0, %113 ], [ 0, %104 ]
  %124 = icmp sgt i64 %39, 0
  br i1 %124, label %127, label %138

125:                                              ; preds = %119
  %126 = mul i64 %39, 10
  br label %141

127:                                              ; preds = %122, %127
  %128 = phi i64 [ %135, %127 ], [ %123, %122 ]
  %129 = phi ptr [ %136, %127 ], [ %30, %122 ]
  %130 = load i8, ptr %129, align 1, !tbaa !44
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds i8, ptr @LL_bits, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !44
  %134 = zext i8 %133 to i64
  %135 = add i64 %128, %134
  %136 = getelementptr inbounds i8, ptr %129, i64 1
  %137 = icmp ult ptr %136, %108
  br i1 %137, label %127, label %138, !llvm.loop !468

138:                                              ; preds = %127, %122
  %139 = phi i64 [ %123, %122 ], [ %135, %127 ]
  %140 = lshr i64 %139, 3
  br label %141

141:                                              ; preds = %138, %125
  %142 = phi i64 [ %126, %125 ], [ %140, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  %143 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 47, i32 6, i32 1, i32 2
  %144 = load i32, ptr %143, align 8, !tbaa !236
  %145 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %40, i64 0, i32 1, i32 1
  %146 = getelementptr inbounds i8, ptr %32, i64 %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #30
  store i32 52, ptr %3, align 4, !tbaa !45
  %147 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %3, ptr noundef %32, i64 noundef %39, ptr noundef %41, i64 noundef %42) #30
  switch i32 %144, label %151 [
    i32 0, label %148
    i32 1, label %160
  ]

148:                                              ; preds = %141
  %149 = load i32, ptr %3, align 4, !tbaa !45
  %150 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %149) #30
  br label %157

151:                                              ; preds = %141
  %152 = and i32 %144, -2
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, ptr %3, align 4, !tbaa !45
  %156 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %145, ptr noundef %41, i32 noundef %155) #30
  br label %157

157:                                              ; preds = %154, %148
  %158 = phi i64 [ %150, %148 ], [ %156, %154 ]
  %159 = icmp ult i64 %158, -119
  br i1 %159, label %160, label %163

160:                                              ; preds = %157, %151, %141
  %161 = phi i64 [ %158, %157 ], [ 0, %151 ], [ 0, %141 ]
  %162 = icmp sgt i64 %39, 0
  br i1 %162, label %165, label %176

163:                                              ; preds = %157
  %164 = mul i64 %39, 10
  br label %179

165:                                              ; preds = %160, %165
  %166 = phi i64 [ %173, %165 ], [ %161, %160 ]
  %167 = phi ptr [ %174, %165 ], [ %32, %160 ]
  %168 = load i8, ptr %167, align 1, !tbaa !44
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds i8, ptr @ML_bits, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !44
  %172 = zext i8 %171 to i64
  %173 = add i64 %166, %172
  %174 = getelementptr inbounds i8, ptr %167, i64 1
  %175 = icmp ult ptr %174, %146
  br i1 %175, label %165, label %176, !llvm.loop !468

176:                                              ; preds = %165, %160
  %177 = phi i64 [ %161, %160 ], [ %173, %165 ]
  %178 = lshr i64 %177, 3
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i64 [ %164, %163 ], [ %178, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #30
  %181 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i64 0, i32 47, i32 6, i32 1, i32 4
  %182 = load i64, ptr %181, align 8, !tbaa !470
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
define internal fastcc noundef i64 @ZSTD_copyBlockSequences(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #15 {
  %4 = alloca %struct.repcodes_s, align 4
  %5 = load ptr, ptr %1, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !194
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !204
  %14 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = getelementptr inbounds %struct.SeqCollector, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !471
  %20 = getelementptr inbounds %struct.SeqCollector, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !472
  %22 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %21, i64 %19
  %23 = add nsw i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #30
  %24 = getelementptr inbounds %struct.SeqCollector, ptr %0, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !473
  %26 = sub i64 %25, %19
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %124, label %28

28:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %29 = icmp eq ptr %7, %5
  br i1 %29, label %115, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %4, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !202
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %36 = getelementptr inbounds i32, ptr %4, i64 1
  %37 = getelementptr inbounds i32, ptr %4, i64 2
  %38 = load i32, ptr %36, align 4
  %39 = load i32, ptr %37, align 4
  %40 = tail call i64 @llvm.umax.i64(i64 %11, i64 1)
  br label %41

41:                                               ; preds = %30, %107
  %42 = phi i32 [ %39, %30 ], [ %108, %107 ]
  %43 = phi i32 [ %38, %30 ], [ %109, %107 ]
  %44 = phi i64 [ 0, %30 ], [ %112, %107 ]
  %45 = phi i64 [ 0, %30 ], [ %113, %107 ]
  %46 = phi i32 [ %31, %30 ], [ %110, %107 ]
  %47 = getelementptr inbounds %struct.SeqDef_s, ptr %5, i64 %45
  %48 = getelementptr inbounds %struct.SeqDef_s, ptr %5, i64 %45, i32 1
  %49 = load i16, ptr %48, align 4, !tbaa !195
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %45
  %52 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %45, i32 1
  store i32 %50, ptr %52, align 4, !tbaa !222
  %53 = getelementptr inbounds %struct.SeqDef_s, ptr %5, i64 %45, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !199
  %55 = zext i16 %54 to i32
  %56 = add nuw nsw i32 %55, 3
  %57 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %45, i32 2
  store i32 %56, ptr %57, align 4, !tbaa !221
  %58 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %45, i32 3
  store i32 0, ptr %58, align 4, !tbaa !474
  %59 = icmp eq i64 %45, %34
  br i1 %59, label %60, label %66

60:                                               ; preds = %41
  %61 = load i32, ptr %35, align 8, !tbaa !201
  switch i32 %61, label %66 [
    i32 1, label %62
    i32 2, label %64
  ]

62:                                               ; preds = %60
  %63 = or disjoint i32 %50, 65536
  store i32 %63, ptr %52, align 4, !tbaa !222
  br label %66

64:                                               ; preds = %60
  %65 = add nuw nsw i32 %55, 65539
  store i32 %65, ptr %57, align 4, !tbaa !221
  br label %66

66:                                               ; preds = %60, %62, %64, %41
  %67 = phi i32 [ %50, %60 ], [ %63, %62 ], [ %50, %64 ], [ %50, %41 ]
  %68 = load i32, ptr %47, align 4, !tbaa !198
  %69 = add i32 %68, -1
  %70 = icmp ult i32 %69, 3
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  store i32 %68, ptr %58, align 4, !tbaa !474
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %71
  %74 = zext nneg i32 %69 to i64
  %75 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !45
  br label %85

77:                                               ; preds = %71
  %78 = icmp eq i32 %68, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = add i32 %46, -1
  br label %85

81:                                               ; preds = %77
  %82 = zext nneg i32 %68 to i64
  %83 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !45
  br label %85

85:                                               ; preds = %73, %81, %79
  %86 = phi i32 [ %84, %81 ], [ %80, %79 ], [ %76, %73 ]
  store i32 %86, ptr %51, align 4, !tbaa !219
  br label %90

87:                                               ; preds = %66
  %88 = add i32 %68, -3
  store i32 %88, ptr %51, align 4, !tbaa !219
  %89 = icmp ugt i32 %68, 3
  br i1 %89, label %104, label %90

90:                                               ; preds = %85, %87
  %91 = icmp ne i16 %49, 0
  %92 = sext i1 %91 to i32
  %93 = add nsw i32 %68, %92
  switch i32 %93, label %96 [
    i32 0, label %107
    i32 3, label %94
  ]

94:                                               ; preds = %90
  %95 = add i32 %46, -1
  br label %100

96:                                               ; preds = %90
  %97 = zext i32 %93 to i64
  %98 = getelementptr inbounds i32, ptr %4, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !45
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %95, %94 ], [ %99, %96 ]
  %102 = icmp eq i32 %93, 1
  %103 = select i1 %102, i32 %42, i32 %43
  br label %104

104:                                              ; preds = %87, %100
  %105 = phi i32 [ %103, %100 ], [ %43, %87 ]
  %106 = phi i32 [ %101, %100 ], [ %88, %87 ]
  store i32 %105, ptr %37, align 4, !tbaa !45
  store i32 %46, ptr %36, align 4, !tbaa !45
  store i32 %106, ptr %4, align 4, !tbaa !45
  br label %107

107:                                              ; preds = %90, %104
  %108 = phi i32 [ %42, %90 ], [ %105, %104 ]
  %109 = phi i32 [ %43, %90 ], [ %46, %104 ]
  %110 = phi i32 [ %46, %90 ], [ %106, %104 ]
  %111 = zext nneg i32 %67 to i64
  %112 = add i64 %44, %111
  %113 = add nuw i64 %45, 1
  %114 = icmp eq i64 %113, %40
  br i1 %114, label %115, label %41, !llvm.loop !475

115:                                              ; preds = %107, %28
  %116 = phi i64 [ 0, %28 ], [ %112, %107 ]
  %117 = add i64 %116, %17
  %118 = sub i64 %16, %117
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %11
  %121 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %11, i32 1
  store i32 %119, ptr %121, align 4, !tbaa !222
  %122 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %22, i64 %11, i32 2
  store i32 0, ptr %122, align 4, !tbaa !221
  store i32 0, ptr %120, align 4, !tbaa !219
  %123 = add i64 %23, %19
  store i64 %123, ptr %18, align 8, !tbaa !471
  br label %124

124:                                              ; preds = %3, %115
  %125 = phi i64 [ 0, %115 ], [ -70, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #30
  ret i64 %125
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) unnamed_addr #25 {
  %12 = alloca %struct.ZSTD_symbolEncodingTypeStats_t, align 8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %6, i64 0, i32 1
  %16 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %6, i64 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %6, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %4, align 8, !tbaa !190
  %19 = getelementptr inbounds %struct.SeqStore_t, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = getelementptr inbounds %struct.SeqStore_t, ptr %4, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !192
  %27 = getelementptr inbounds %struct.SeqStore_t, ptr %4, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !191
  %29 = getelementptr inbounds %struct.SeqStore_t, ptr %4, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !193
  %31 = getelementptr inbounds i8, ptr %0, i64 %1
  %32 = getelementptr inbounds i32, ptr %8, i64 53
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
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !90
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
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i64 0, i32 1, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !84
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %39, %43, %44, %46
  %52 = phi i32 [ 1, %43 ], [ 0, %39 ], [ 0, %44 ], [ %50, %46 ]
  %53 = tail call i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %32, i64 noundef %33, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %52, i32 noundef %40, i32 noundef %10) #30
  %54 = icmp ult i64 %53, -119
  %55 = getelementptr inbounds i8, ptr %0, i64 %53
  br i1 %54, label %56, label %125

56:                                               ; preds = %51
  %57 = ptrtoint ptr %31 to i64
  %58 = ptrtoint ptr %55 to i64
  %59 = sub i64 %57, %58
  %60 = icmp slt i64 %59, 4
  br i1 %60, label %125, label %61

61:                                               ; preds = %56
  %62 = icmp ult i64 %24, 128
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = trunc i64 %24 to i8
  %65 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %64, ptr %55, align 1, !tbaa !44
  br label %80

66:                                               ; preds = %61
  %67 = icmp ult i64 %24, 32512
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = lshr i64 %24, 8
  %70 = trunc i64 %69 to i8
  %71 = or disjoint i8 %70, -128
  store i8 %71, ptr %55, align 1, !tbaa !44
  %72 = trunc i64 %24 to i8
  %73 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %72, ptr %73, align 1, !tbaa !44
  %74 = getelementptr inbounds i8, ptr %55, i64 2
  br label %80

75:                                               ; preds = %66
  store i8 -1, ptr %55, align 1, !tbaa !44
  %76 = getelementptr inbounds i8, ptr %55, i64 1
  %77 = trunc i64 %24 to i16
  %78 = add i16 %77, -32512
  store i16 %78, ptr %76, align 1, !tbaa !239
  %79 = getelementptr inbounds i8, ptr %55, i64 3
  br label %80

80:                                               ; preds = %68, %75, %63
  %81 = phi ptr [ %65, %63 ], [ %74, %68 ], [ %79, %75 ]
  br i1 %34, label %82, label %87

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %5, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %15, ptr noundef nonnull align 8 dereferenceable(3552) %83, i64 3552, i1 false)
  %84 = ptrtoint ptr %81 to i64
  %85 = ptrtoint ptr %0 to i64
  %86 = sub i64 %84, %85
  br label %125

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, ptr %81, i64 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #30
  %89 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %5, i64 0, i32 1
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull %4, i64 noundef %24, ptr noundef nonnull %89, ptr noundef nonnull %15, ptr noundef nonnull %88, ptr noundef nonnull %31, i32 noundef %14, ptr noundef %8, ptr noundef nonnull %32, i64 noundef %33)
  %90 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %12, i64 0, i32 3
  %91 = load i64, ptr %90, align 8, !tbaa !433
  %92 = icmp ult i64 %91, -119
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #30
  br label %125

94:                                               ; preds = %87
  %95 = load i32, ptr %12, align 8, !tbaa !432
  %96 = shl i32 %95, 6
  %97 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %12, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !434
  %99 = shl i32 %98, 4
  %100 = add i32 %99, %96
  %101 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %12, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !435
  %103 = shl i32 %102, 2
  %104 = add i32 %100, %103
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %81, align 1, !tbaa !44
  %106 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %12, i64 0, i32 4
  %107 = load i64, ptr %106, align 8, !tbaa !429
  %108 = getelementptr inbounds i8, ptr %88, i64 %91
  %109 = getelementptr inbounds %struct.ZSTD_symbolEncodingTypeStats_t, ptr %12, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !431
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #30
  %111 = ptrtoint ptr %108 to i64
  %112 = sub i64 %57, %111
  %113 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %108, i64 noundef %112, ptr noundef nonnull %17, ptr noundef %30, ptr noundef nonnull %15, ptr noundef %26, ptr noundef nonnull %16, ptr noundef %28, ptr noundef %18, i64 noundef %24, i32 noundef %110, i32 noundef %10) #30
  %114 = icmp ult i64 %113, -119
  br i1 %114, label %115, label %125

115:                                              ; preds = %94
  %116 = icmp eq i64 %107, 0
  %117 = add i64 %113, %107
  %118 = icmp ugt i64 %117, 3
  %119 = or i1 %116, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = getelementptr inbounds i8, ptr %108, i64 %113
  %122 = ptrtoint ptr %121 to i64
  %123 = ptrtoint ptr %0 to i64
  %124 = sub i64 %122, %123
  br label %125

125:                                              ; preds = %94, %93, %56, %115, %51, %120, %82
  %126 = phi i64 [ %86, %82 ], [ %124, %120 ], [ 0, %115 ], [ %91, %93 ], [ %53, %51 ], [ -70, %56 ], [ %113, %94 ]
  ret i64 %126
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #11

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) unnamed_addr #2 {
  %12 = icmp eq ptr %5, null
  %13 = icmp ult i64 %6, 8
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = icmp eq i32 %7, 2
  %17 = select i1 %16, i64 -32, i64 0
  br label %49

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !45
  %20 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !167
  %21 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 3
  store i32 0, ptr %21, align 4, !tbaa !172
  %22 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 4
  store i32 0, ptr %22, align 8, !tbaa !173
  %23 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 5
  store i32 0, ptr %23, align 4, !tbaa !174
  %24 = icmp eq i32 %7, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %49

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 1, !tbaa !45
  %28 = icmp eq i32 %27, -332356553
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  switch i32 %7, label %31 [
    i32 0, label %30
    i32 2, label %49
  ]

30:                                               ; preds = %29
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %49

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds i8, ptr %5, i64 %6
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i64 0, i32 2, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !87
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %5, i64 4
  %38 = load i32, ptr %37, align 1, !tbaa !45
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i64 [ %39, %36 ], [ 0, %31 ]
  %42 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %5, i64 noundef %6)
  %43 = icmp ult i64 %42, -119
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %5, i64 %42
  %46 = ptrtoint ptr %32 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %45, i64 noundef %48, i32 noundef %8, i32 noundef %9)
  br label %49

49:                                               ; preds = %44, %40, %29, %15, %30, %25
  %50 = phi i64 [ 0, %25 ], [ 0, %30 ], [ %17, %15 ], [ -32, %29 ], [ %42, %40 ], [ %41, %44 ]
  ret i64 %50
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #2 {
  %9 = getelementptr inbounds i8, ptr %4, i64 %5
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = icmp eq i32 %11, 1
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  %15 = getelementptr %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  %19 = icmp eq i32 %7, 1
  %20 = and i1 %19, %18
  %21 = select i1 %20, i64 -16777214, i64 -3670015998
  %22 = select i1 %20, i64 16777214, i64 3670015998
  %23 = icmp ult i64 %22, %5
  %24 = getelementptr inbounds i8, ptr %9, i64 %21
  %25 = tail call i64 @llvm.umin.i64(i64 %22, i64 %5)
  %26 = select i1 %23, ptr %24, ptr %4
  %27 = icmp eq i64 %5, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %8
  %29 = load ptr, ptr %0, align 8, !tbaa !244
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !245
  %34 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !246
  %36 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !247
  br label %54

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !248
  %41 = ptrtoint ptr %29 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !247
  %46 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 4
  store i32 %45, ptr %46, align 4, !tbaa !246
  %47 = trunc i64 %43 to i32
  store i32 %47, ptr %44, align 8, !tbaa !247
  %48 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  store ptr %40, ptr %48, align 8, !tbaa !245
  %49 = sub i64 0, %43
  %50 = getelementptr inbounds i8, ptr %26, i64 %49
  store ptr %50, ptr %39, align 8, !tbaa !248
  %51 = sub i32 %47, %45
  %52 = icmp ult i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 %47, ptr %46, align 4, !tbaa !246
  br label %54

54:                                               ; preds = %53, %38, %31
  %55 = phi i32 [ %37, %31 ], [ %47, %53 ], [ %47, %38 ]
  %56 = phi i32 [ %35, %31 ], [ %47, %53 ], [ %45, %38 ]
  %57 = phi ptr [ %33, %31 ], [ %40, %53 ], [ %40, %38 ]
  %58 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %58, ptr %0, align 8, !tbaa !244
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  %61 = icmp ugt ptr %58, %60
  %62 = zext i32 %55 to i64
  %63 = getelementptr inbounds i8, ptr %57, i64 %62
  %64 = icmp ugt ptr %63, %26
  %65 = and i1 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 4
  %68 = ptrtoint ptr %58 to i64
  %69 = ptrtoint ptr %57 to i64
  %70 = sub i64 %68, %69
  %71 = icmp ugt i64 %70, %62
  %72 = trunc i64 %70 to i32
  %73 = select i1 %71, i32 %55, i32 %72
  store i32 %73, ptr %67, align 4, !tbaa !246
  br label %74

74:                                               ; preds = %54, %66
  br i1 %14, label %76, label %135

75:                                               ; preds = %8
  br i1 %14, label %121, label %135

76:                                               ; preds = %74
  %77 = load ptr, ptr %1, align 8, !tbaa !244
  %78 = icmp eq ptr %77, %26
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !245
  %82 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !246
  %84 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !247
  br label %102

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !248
  %89 = ptrtoint ptr %77 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !247
  %94 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 4
  store i32 %93, ptr %94, align 4, !tbaa !246
  %95 = trunc i64 %91 to i32
  store i32 %95, ptr %92, align 8, !tbaa !247
  %96 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 2
  store ptr %88, ptr %96, align 8, !tbaa !245
  %97 = sub i64 0, %91
  %98 = getelementptr inbounds i8, ptr %26, i64 %97
  store ptr %98, ptr %87, align 8, !tbaa !248
  %99 = sub i32 %95, %93
  %100 = icmp ult i32 %99, 8
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  store i32 %95, ptr %94, align 4, !tbaa !246
  br label %102

102:                                              ; preds = %101, %86, %79
  %103 = phi i32 [ %85, %79 ], [ %95, %101 ], [ %95, %86 ]
  %104 = phi i32 [ %83, %79 ], [ %95, %101 ], [ %93, %86 ]
  %105 = phi ptr [ %81, %79 ], [ %88, %101 ], [ %88, %86 ]
  store ptr %58, ptr %1, align 8, !tbaa !244
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, ptr %105, i64 %106
  %108 = icmp ugt ptr %58, %107
  %109 = zext i32 %103 to i64
  %110 = getelementptr inbounds i8, ptr %105, i64 %109
  %111 = icmp ugt ptr %110, %26
  %112 = and i1 %108, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 4
  %115 = ptrtoint ptr %58 to i64
  %116 = ptrtoint ptr %105 to i64
  %117 = sub i64 %115, %116
  %118 = icmp ugt i64 %117, %109
  %119 = trunc i64 %117 to i32
  %120 = select i1 %118, i32 %103, i32 %119
  store i32 %120, ptr %114, align 4, !tbaa !246
  br label %121

121:                                              ; preds = %75, %102, %113
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 4
  %123 = load i32, ptr %122, align 8, !tbaa !88
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !476
  %128 = ptrtoint ptr %9 to i64
  %129 = ptrtoint ptr %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  br label %132

132:                                              ; preds = %121, %125
  %133 = phi i32 [ %131, %125 ], [ 0, %121 ]
  %134 = getelementptr inbounds %struct.ldmState_t, ptr %1, i64 0, i32 2
  store i32 %133, ptr %134, align 8, !tbaa !477
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %9, ptr noundef nonnull %10) #30
  br label %135

135:                                              ; preds = %75, %132, %74
  %136 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !80
  %138 = add i32 %137, 3
  %139 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 1, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !81
  %141 = add i32 %140, 1
  %142 = tail call i32 @llvm.umax.i32(i32 %138, i32 %141)
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 31)
  %144 = shl nuw i32 1, %143
  %145 = zext i32 %144 to i64
  %146 = icmp ugt i64 %25, %145
  %147 = sub nsw i64 0, %145
  %148 = getelementptr inbounds i8, ptr %9, i64 %147
  %149 = select i1 %146, ptr %148, ptr %26
  %150 = tail call i64 @llvm.umin.i64(i64 %25, i64 %145)
  %151 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !443
  %153 = ptrtoint ptr %149 to i64
  %154 = ptrtoint ptr %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  store i32 %156, ptr %157, align 4, !tbaa !249
  %158 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 4
  %159 = load i32, ptr %158, align 8, !tbaa !88
  %160 = icmp eq i32 %159, 0
  %161 = ptrtoint ptr %9 to i64
  %162 = sub i64 %161, %154
  %163 = trunc i64 %162 to i32
  %164 = select i1 %160, i32 %163, i32 0
  %165 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 1
  store i32 %164, ptr %165, align 8, !tbaa !413
  %166 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 23
  %167 = load i32, ptr %166, align 4, !tbaa !103
  %168 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 12
  store i32 %167, ptr %168, align 8, !tbaa !243
  %169 = icmp ult i64 %150, 9
  br i1 %169, label %201, label %170

170:                                              ; preds = %135
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %149, ptr noundef %9)
  %171 = load i32, ptr %15, align 4, !tbaa !85
  switch i32 %171, label %196 [
    i32 1, label %172
    i32 2, label %173
    i32 3, label %174
    i32 4, label %174
    i32 5, label %174
    i32 6, label %194
    i32 7, label %194
    i32 8, label %194
    i32 9, label %194
  ]

172:                                              ; preds = %170
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef %9, i32 noundef %6, i32 noundef %7) #30
  br label %196

173:                                              ; preds = %170
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef %9, i32 noundef %6, i32 noundef %7) #30
  br label %196

174:                                              ; preds = %170, %170, %170
  %175 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 13
  %176 = load i32, ptr %175, align 4, !tbaa !410
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %179) #30
  br label %196

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i64 0, i32 22
  %182 = load i32, ptr %181, align 8, !tbaa !71
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, ptr %136, align 4, !tbaa !80
  %186 = zext nneg i32 %185 to i64
  %187 = shl nuw i64 1, %186
  %188 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %189, i8 0, i64 %187, i1 false)
  %190 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %190) #30
  br label %196

191:                                              ; preds = %180
  %192 = getelementptr inbounds i8, ptr %9, i64 -8
  %193 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %192) #30
  br label %196

194:                                              ; preds = %170, %170, %170, %170
  %195 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %195, ptr noundef %9) #30
  br label %196

196:                                              ; preds = %170, %178, %191, %184, %194, %173, %172
  %197 = load ptr, ptr %151, align 8, !tbaa !443
  %198 = ptrtoint ptr %197 to i64
  %199 = sub i64 %161, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, ptr %157, align 4, !tbaa !249
  br label %201

201:                                              ; preds = %135, %196
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
define internal i64 @ZSTD_transferSequences_noDelim(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 %6) unnamed_addr #22 {
  %8 = alloca %struct.repcodes_s, align 4
  %9 = load i32, ptr %1, align 8, !tbaa !452
  %10 = getelementptr inbounds %struct.ZSTD_SequencePosition, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !478
  %12 = trunc i64 %5 to i32
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #30
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %16, i64 0, i32 1
  br label %26

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 45, i32 1
  br label %26

26:                                               ; preds = %18, %24
  %27 = phi ptr [ %25, %24 ], [ %19, %18 ]
  %28 = load i64, ptr %27, align 8, !tbaa !110
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i64 [ 0, %20 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %32, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %33, i64 12, i1 false)
  %34 = icmp eq i32 %13, 0
  br i1 %34, label %372, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr %8, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1, i32 4
  %38 = getelementptr inbounds i32, ptr %8, i64 1
  %39 = getelementptr inbounds i32, ptr %8, i64 2
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 18
  %41 = getelementptr inbounds %struct.ZSTD_SequencePosition, ptr %1, i64 0, i32 2
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 1
  %43 = getelementptr %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 28
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 7
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %46 = getelementptr inbounds i8, ptr %14, i64 -32
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %48 = ptrtoint ptr %46 to i64
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %52 = load i32, ptr %38, align 4
  %53 = load i32, ptr %39, align 4
  br label %54

54:                                               ; preds = %35, %362
  %55 = phi i32 [ %53, %35 ], [ %148, %362 ]
  %56 = phi i32 [ %52, %35 ], [ %149, %362 ]
  %57 = phi i32 [ %9, %35 ], [ %370, %362 ]
  %58 = phi i32 [ %11, %35 ], [ %108, %362 ]
  %59 = phi i32 [ %13, %35 ], [ %109, %362 ]
  %60 = phi ptr [ %4, %35 ], [ %368, %362 ]
  %61 = phi i32 [ 0, %35 ], [ %104, %362 ]
  %62 = phi i32 [ 0, %35 ], [ %103, %362 ]
  %63 = phi i32 [ %36, %35 ], [ %150, %362 ]
  %64 = ptrtoint ptr %60 to i64
  %65 = zext i32 %57 to i64
  %66 = icmp ult i64 %65, %3
  %67 = icmp eq i32 %62, 0
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %372

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %2, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa.struct !126
  %72 = getelementptr inbounds i8, ptr %70, i64 4
  %73 = load i32, ptr %72, align 4, !tbaa.struct !52
  %74 = getelementptr inbounds i8, ptr %70, i64 8
  %75 = load i32, ptr %74, align 4, !tbaa.struct !127
  %76 = add i32 %75, %73
  %77 = icmp uge i32 %59, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = tail call i32 @llvm.usub.sat.i32(i32 %73, i32 %58)
  %80 = tail call i32 @llvm.usub.sat.i32(i32 %58, i32 %73)
  %81 = sub i32 %75, %80
  br label %102

82:                                               ; preds = %69
  %83 = icmp ugt i32 %59, %73
  br i1 %83, label %84, label %372

84:                                               ; preds = %82
  %85 = tail call i32 @llvm.usub.sat.i32(i32 %73, i32 %58)
  %86 = add i32 %58, %85
  %87 = sub i32 %59, %86
  %88 = zext i32 %75 to i64
  %89 = icmp ugt i64 %88, %5
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, ptr %37, align 4, !tbaa !439
  %92 = icmp ult i32 %87, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = sub i32 %76, %59
  %95 = icmp ult i32 %94, %91
  %96 = sub i32 %91, %94
  %97 = select i1 %95, i32 %96, i32 %61
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %91, i32 %94)
  %99 = sub i32 %87, %98
  br label %102

100:                                              ; preds = %84, %90
  %101 = sub i32 %59, %73
  br label %372

102:                                              ; preds = %93, %78
  %103 = phi i32 [ 0, %78 ], [ 1, %93 ]
  %104 = phi i32 [ %61, %78 ], [ %97, %93 ]
  %105 = phi i32 [ %79, %78 ], [ %85, %93 ]
  %106 = phi i32 [ %81, %78 ], [ %99, %93 ]
  %107 = phi i32 [ %76, %78 ], [ %98, %93 ]
  %108 = phi i32 [ 0, %78 ], [ %58, %93 ]
  %109 = sub i32 %59, %107
  %110 = icmp eq i32 %105, 0
  %111 = add i32 %71, 3
  %112 = icmp ne i32 %63, %71
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %102
  %115 = icmp eq i32 %56, %71
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = select i1 %110, i32 1, i32 2
  br label %128

118:                                              ; preds = %114
  %119 = icmp eq i32 %55, %71
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = select i1 %110, i32 2, i32 3
  br label %128

122:                                              ; preds = %118
  %123 = add i32 %63, -1
  %124 = icmp eq i32 %123, %71
  %125 = select i1 %110, i1 %124, i1 false
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = icmp ugt i32 %111, 3
  br i1 %127, label %143, label %128

128:                                              ; preds = %122, %102, %120, %116, %126
  %129 = phi i32 [ %111, %126 ], [ %121, %120 ], [ %117, %116 ], [ 1, %102 ], [ 3, %122 ]
  %130 = xor i1 %110, true
  %131 = sext i1 %130 to i32
  %132 = add nsw i32 %129, %131
  switch i32 %132, label %135 [
    i32 0, label %147
    i32 3, label %133
  ]

133:                                              ; preds = %128
  %134 = add i32 %63, -1
  br label %139

135:                                              ; preds = %128
  %136 = zext i32 %132 to i64
  %137 = getelementptr inbounds i32, ptr %8, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !45
  br label %139

139:                                              ; preds = %135, %133
  %140 = phi i32 [ %134, %133 ], [ %138, %135 ]
  %141 = icmp eq i32 %132, 1
  %142 = select i1 %141, i32 %55, i32 %56
  br label %143

143:                                              ; preds = %126, %139
  %144 = phi i32 [ %142, %139 ], [ %56, %126 ]
  %145 = phi i32 [ %129, %139 ], [ %111, %126 ]
  %146 = phi i32 [ %140, %139 ], [ %71, %126 ]
  store i32 %144, ptr %39, align 4, !tbaa !45
  store i32 %63, ptr %38, align 4, !tbaa !45
  store i32 %146, ptr %8, align 4, !tbaa !45
  br label %147

147:                                              ; preds = %128, %143
  %148 = phi i32 [ %55, %128 ], [ %144, %143 ]
  %149 = phi i32 [ %56, %128 ], [ %63, %143 ]
  %150 = phi i32 [ %63, %128 ], [ %146, %143 ]
  %151 = phi i32 [ %129, %128 ], [ %145, %143 ]
  %152 = load i32, ptr %40, align 8, !tbaa !375
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %147
  %155 = add i32 %106, %105
  %156 = zext i32 %155 to i64
  %157 = load i64, ptr %41, align 8, !tbaa !454
  %158 = add i64 %157, %156
  store i64 %158, ptr %41, align 8, !tbaa !454
  %159 = load i32, ptr %42, align 4, !tbaa !252
  %160 = shl nuw i32 1, %159
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %158, %161
  %163 = add i64 %158, %30
  %164 = select i1 %162, i64 %161, i64 %163
  %165 = zext i32 %151 to i64
  %166 = add i64 %164, 3
  %167 = icmp ult i64 %166, %165
  br i1 %167, label %399, label %168

168:                                              ; preds = %154
  %169 = load ptr, ptr %43, align 8, !tbaa !129
  %170 = icmp ne ptr %169, null
  %171 = load i32, ptr %37, align 4, !tbaa !439
  %172 = icmp eq i32 %171, 3
  %173 = or i1 %170, %172
  %174 = select i1 %173, i64 3, i64 4
  %175 = zext i32 %106 to i64
  %176 = icmp ugt i64 %174, %175
  br i1 %176, label %399, label %177

177:                                              ; preds = %168, %147
  %178 = load i32, ptr %1, align 8, !tbaa !452
  %179 = sub i32 %57, %178
  %180 = zext i32 %179 to i64
  %181 = load i64, ptr %44, align 8, !tbaa !364
  %182 = icmp ugt i64 %181, %180
  br i1 %182, label %183, label %399

183:                                              ; preds = %177
  %184 = zext i32 %105 to i64
  %185 = zext i32 %106 to i64
  %186 = getelementptr inbounds i8, ptr %60, i64 %184
  %187 = icmp ugt ptr %186, %46
  %188 = load ptr, ptr %47, align 8, !tbaa !204
  br i1 %187, label %212, label %189

189:                                              ; preds = %183
  %190 = load <2 x i64>, ptr %60, align 1, !tbaa !44
  store <2 x i64> %190, ptr %188, align 1, !tbaa !44
  %191 = icmp ugt i32 %105, 16
  br i1 %191, label %192, label %333

192:                                              ; preds = %189
  %193 = load ptr, ptr %47, align 8, !tbaa !204
  %194 = getelementptr inbounds i8, ptr %193, i64 16
  %195 = getelementptr inbounds i8, ptr %60, i64 16
  %196 = add nsw i64 %184, -16
  %197 = getelementptr inbounds i8, ptr %193, i64 %184
  %198 = load <2 x i64>, ptr %195, align 1, !tbaa !44
  store <2 x i64> %198, ptr %194, align 1, !tbaa !44
  %199 = icmp ult i64 %196, 17
  br i1 %199, label %333, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds i8, ptr %193, i64 32
  br label %202

202:                                              ; preds = %202, %200
  %203 = phi ptr [ %201, %200 ], [ %210, %202 ]
  %204 = phi ptr [ %195, %200 ], [ %208, %202 ]
  %205 = getelementptr inbounds i8, ptr %204, i64 16
  %206 = load <2 x i64>, ptr %205, align 1, !tbaa !44
  store <2 x i64> %206, ptr %203, align 1, !tbaa !44
  %207 = getelementptr inbounds i8, ptr %203, i64 16
  %208 = getelementptr inbounds i8, ptr %204, i64 32
  %209 = load <2 x i64>, ptr %208, align 1, !tbaa !44
  store <2 x i64> %209, ptr %207, align 1, !tbaa !44
  %210 = getelementptr inbounds i8, ptr %203, i64 32
  %211 = icmp ult ptr %210, %197
  br i1 %211, label %202, label %337, !llvm.loop !455

212:                                              ; preds = %183
  %213 = ptrtoint ptr %186 to i64
  %214 = icmp ugt ptr %60, %46
  br i1 %214, label %233, label %215

215:                                              ; preds = %212
  %216 = ptrtoint ptr %60 to i64
  %217 = sub i64 %48, %216
  %218 = getelementptr inbounds i8, ptr %188, i64 %217
  %219 = load <2 x i64>, ptr %60, align 1, !tbaa !44
  store <2 x i64> %219, ptr %188, align 1, !tbaa !44
  %220 = icmp ult i64 %217, 17
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds i8, ptr %188, i64 16
  br label %223

223:                                              ; preds = %223, %221
  %224 = phi ptr [ %222, %221 ], [ %231, %223 ]
  %225 = phi ptr [ %60, %221 ], [ %229, %223 ]
  %226 = getelementptr inbounds i8, ptr %225, i64 16
  %227 = load <2 x i64>, ptr %226, align 1, !tbaa !44
  store <2 x i64> %227, ptr %224, align 1, !tbaa !44
  %228 = getelementptr inbounds i8, ptr %224, i64 16
  %229 = getelementptr inbounds i8, ptr %225, i64 32
  %230 = load <2 x i64>, ptr %229, align 1, !tbaa !44
  store <2 x i64> %230, ptr %228, align 1, !tbaa !44
  %231 = getelementptr inbounds i8, ptr %224, i64 32
  %232 = icmp ult ptr %231, %218
  br i1 %232, label %223, label %233, !llvm.loop !455

233:                                              ; preds = %223, %215, %212
  %234 = phi ptr [ %46, %215 ], [ %60, %212 ], [ %46, %223 ]
  %235 = phi ptr [ %218, %215 ], [ %188, %212 ], [ %218, %223 ]
  %236 = icmp ult ptr %234, %186
  br i1 %236, label %237, label %337

237:                                              ; preds = %233
  %238 = ptrtoint ptr %235 to i64
  %239 = ptrtoint ptr %234 to i64
  %240 = sub i64 %213, %239
  %241 = getelementptr i8, ptr %234, i64 %240
  %242 = icmp ult i64 %240, 8
  %243 = sub i64 %238, %239
  %244 = icmp ult i64 %243, 32
  %245 = select i1 %242, i1 true, i1 %244
  br i1 %245, label %281, label %246

246:                                              ; preds = %237
  %247 = icmp ult i64 %240, 32
  br i1 %247, label %267, label %248

248:                                              ; preds = %246
  %249 = and i64 %240, -32
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi i64 [ 0, %248 ], [ %258, %250 ]
  %252 = getelementptr i8, ptr %235, i64 %251
  %253 = getelementptr i8, ptr %234, i64 %251
  %254 = getelementptr i8, ptr %253, i64 16
  %255 = load <16 x i8>, ptr %253, align 1, !tbaa !44
  %256 = load <16 x i8>, ptr %254, align 1, !tbaa !44
  %257 = getelementptr i8, ptr %252, i64 16
  store <16 x i8> %255, ptr %252, align 1, !tbaa !44
  store <16 x i8> %256, ptr %257, align 1, !tbaa !44
  %258 = add nuw i64 %251, 32
  %259 = icmp eq i64 %258, %249
  br i1 %259, label %260, label %250, !llvm.loop !479

260:                                              ; preds = %250
  %261 = icmp eq i64 %240, %249
  br i1 %261, label %337, label %262

262:                                              ; preds = %260
  %263 = getelementptr i8, ptr %234, i64 %249
  %264 = getelementptr i8, ptr %235, i64 %249
  %265 = and i64 %240, 24
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %281, label %267

267:                                              ; preds = %246, %262
  %268 = phi i64 [ %249, %262 ], [ 0, %246 ]
  %269 = and i64 %240, -8
  %270 = getelementptr i8, ptr %235, i64 %269
  %271 = getelementptr i8, ptr %234, i64 %269
  br label %272

272:                                              ; preds = %272, %267
  %273 = phi i64 [ %268, %267 ], [ %277, %272 ]
  %274 = getelementptr i8, ptr %235, i64 %273
  %275 = getelementptr i8, ptr %234, i64 %273
  %276 = load <8 x i8>, ptr %275, align 1, !tbaa !44
  store <8 x i8> %276, ptr %274, align 1, !tbaa !44
  %277 = add nuw i64 %273, 8
  %278 = icmp eq i64 %277, %269
  br i1 %278, label %279, label %272, !llvm.loop !480

279:                                              ; preds = %272
  %280 = icmp eq i64 %240, %269
  br i1 %280, label %337, label %281

281:                                              ; preds = %237, %262, %279
  %282 = phi ptr [ %235, %237 ], [ %264, %262 ], [ %270, %279 ]
  %283 = phi ptr [ %234, %237 ], [ %263, %262 ], [ %271, %279 ]
  %284 = add i64 %64, %184
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %284, %285
  %287 = add i64 %64, -1
  %288 = add i64 %287, %184
  %289 = sub i64 %288, %285
  %290 = and i64 %286, 7
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %301, label %292

292:                                              ; preds = %281, %292
  %293 = phi ptr [ %298, %292 ], [ %282, %281 ]
  %294 = phi ptr [ %296, %292 ], [ %283, %281 ]
  %295 = phi i64 [ %299, %292 ], [ 0, %281 ]
  %296 = getelementptr inbounds i8, ptr %294, i64 1
  %297 = load i8, ptr %294, align 1, !tbaa !44
  %298 = getelementptr inbounds i8, ptr %293, i64 1
  store i8 %297, ptr %293, align 1, !tbaa !44
  %299 = add i64 %295, 1
  %300 = icmp eq i64 %299, %290
  br i1 %300, label %301, label %292, !llvm.loop !481

301:                                              ; preds = %292, %281
  %302 = phi ptr [ %282, %281 ], [ %298, %292 ]
  %303 = phi ptr [ %283, %281 ], [ %296, %292 ]
  %304 = icmp ult i64 %289, 7
  br i1 %304, label %337, label %305

305:                                              ; preds = %301, %305
  %306 = phi ptr [ %331, %305 ], [ %302, %301 ]
  %307 = phi ptr [ %329, %305 ], [ %303, %301 ]
  %308 = getelementptr inbounds i8, ptr %307, i64 1
  %309 = load i8, ptr %307, align 1, !tbaa !44
  %310 = getelementptr inbounds i8, ptr %306, i64 1
  store i8 %309, ptr %306, align 1, !tbaa !44
  %311 = getelementptr inbounds i8, ptr %307, i64 2
  %312 = load i8, ptr %308, align 1, !tbaa !44
  %313 = getelementptr inbounds i8, ptr %306, i64 2
  store i8 %312, ptr %310, align 1, !tbaa !44
  %314 = getelementptr inbounds i8, ptr %307, i64 3
  %315 = load i8, ptr %311, align 1, !tbaa !44
  %316 = getelementptr inbounds i8, ptr %306, i64 3
  store i8 %315, ptr %313, align 1, !tbaa !44
  %317 = getelementptr inbounds i8, ptr %307, i64 4
  %318 = load i8, ptr %314, align 1, !tbaa !44
  %319 = getelementptr inbounds i8, ptr %306, i64 4
  store i8 %318, ptr %316, align 1, !tbaa !44
  %320 = getelementptr inbounds i8, ptr %307, i64 5
  %321 = load i8, ptr %317, align 1, !tbaa !44
  %322 = getelementptr inbounds i8, ptr %306, i64 5
  store i8 %321, ptr %319, align 1, !tbaa !44
  %323 = getelementptr inbounds i8, ptr %307, i64 6
  %324 = load i8, ptr %320, align 1, !tbaa !44
  %325 = getelementptr inbounds i8, ptr %306, i64 6
  store i8 %324, ptr %322, align 1, !tbaa !44
  %326 = getelementptr inbounds i8, ptr %307, i64 7
  %327 = load i8, ptr %323, align 1, !tbaa !44
  %328 = getelementptr inbounds i8, ptr %306, i64 7
  store i8 %327, ptr %325, align 1, !tbaa !44
  %329 = getelementptr inbounds i8, ptr %307, i64 8
  %330 = load i8, ptr %326, align 1, !tbaa !44
  %331 = getelementptr inbounds i8, ptr %306, i64 8
  store i8 %330, ptr %328, align 1, !tbaa !44
  %332 = icmp eq ptr %329, %241
  br i1 %332, label %337, label %305, !llvm.loop !482

333:                                              ; preds = %192, %189
  %334 = load ptr, ptr %47, align 8, !tbaa !204
  %335 = getelementptr inbounds i8, ptr %334, i64 %184
  store ptr %335, ptr %47, align 8, !tbaa !204
  %336 = load ptr, ptr %50, align 8, !tbaa !194
  br label %349

337:                                              ; preds = %202, %301, %305, %260, %279, %233
  %338 = load ptr, ptr %47, align 8, !tbaa !204
  %339 = getelementptr inbounds i8, ptr %338, i64 %184
  store ptr %339, ptr %47, align 8, !tbaa !204
  %340 = icmp ugt i32 %105, 65535
  %341 = load ptr, ptr %50, align 8, !tbaa !194
  br i1 %340, label %342, label %349, !prof !460

342:                                              ; preds = %337
  store i32 1, ptr %49, align 8, !tbaa !201
  %343 = load ptr, ptr %45, align 8, !tbaa !190
  %344 = ptrtoint ptr %341 to i64
  %345 = ptrtoint ptr %343 to i64
  %346 = sub i64 %344, %345
  %347 = lshr exact i64 %346, 3
  %348 = trunc i64 %347 to i32
  store i32 %348, ptr %51, align 4, !tbaa !202
  br label %349

349:                                              ; preds = %333, %342, %337
  %350 = phi ptr [ %336, %333 ], [ %341, %342 ], [ %341, %337 ]
  %351 = trunc i32 %105 to i16
  %352 = getelementptr inbounds %struct.SeqDef_s, ptr %350, i64 0, i32 1
  store i16 %351, ptr %352, align 4, !tbaa !195
  store i32 %151, ptr %350, align 4, !tbaa !198
  %353 = add nsw i64 %185, -3
  %354 = icmp ugt i64 %353, 65535
  br i1 %354, label %355, label %362, !prof !362

355:                                              ; preds = %349
  store i32 2, ptr %49, align 8, !tbaa !201
  %356 = load ptr, ptr %45, align 8, !tbaa !190
  %357 = ptrtoint ptr %350 to i64
  %358 = ptrtoint ptr %356 to i64
  %359 = sub i64 %357, %358
  %360 = lshr exact i64 %359, 3
  %361 = trunc i64 %360 to i32
  store i32 %361, ptr %51, align 4, !tbaa !202
  br label %362

362:                                              ; preds = %355, %349
  %363 = trunc i64 %353 to i16
  %364 = getelementptr inbounds %struct.SeqDef_s, ptr %350, i64 0, i32 2
  store i16 %363, ptr %364, align 2, !tbaa !199
  %365 = getelementptr inbounds %struct.SeqDef_s, ptr %350, i64 1
  store ptr %365, ptr %50, align 8, !tbaa !194
  %366 = add i32 %106, %105
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i8, ptr %60, i64 %367
  %369 = zext i1 %77 to i32
  %370 = add i32 %57, %369
  %371 = icmp eq i32 %109, 0
  br i1 %371, label %372, label %54

372:                                              ; preds = %54, %362, %82, %29, %100
  %373 = phi ptr [ %60, %100 ], [ %4, %29 ], [ %60, %54 ], [ %368, %362 ], [ %60, %82 ]
  %374 = phi i32 [ %57, %100 ], [ %9, %29 ], [ %57, %54 ], [ %370, %362 ], [ %57, %82 ]
  %375 = phi i32 [ %101, %100 ], [ 0, %29 ], [ %61, %54 ], [ %104, %362 ], [ %61, %82 ]
  %376 = phi i32 [ %73, %100 ], [ 0, %29 ], [ %59, %54 ], [ 0, %362 ], [ %59, %82 ]
  store i32 %374, ptr %1, align 8, !tbaa !452
  store i32 %376, ptr %10, align 4, !tbaa !478
  %377 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !359
  %379 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %378, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %379, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  %380 = zext i32 %375 to i64
  %381 = sub nsw i64 0, %380
  %382 = getelementptr inbounds i8, ptr %14, i64 %381
  %383 = icmp eq ptr %373, %382
  %384 = ptrtoint ptr %382 to i64
  br i1 %383, label %396, label %385

385:                                              ; preds = %372
  %386 = ptrtoint ptr %373 to i64
  %387 = sub i64 %384, %386
  %388 = and i64 %387, 4294967295
  %389 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !204
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %390, ptr align 1 %373, i64 %388, i1 false)
  %391 = load ptr, ptr %389, align 8, !tbaa !204
  %392 = getelementptr inbounds i8, ptr %391, i64 %388
  store ptr %392, ptr %389, align 8, !tbaa !204
  %393 = getelementptr inbounds %struct.ZSTD_SequencePosition, ptr %1, i64 0, i32 2
  %394 = load i64, ptr %393, align 8, !tbaa !454
  %395 = add i64 %394, %388
  store i64 %395, ptr %393, align 8, !tbaa !454
  br label %396

396:                                              ; preds = %372, %385
  %397 = ptrtoint ptr %4 to i64
  %398 = sub i64 %384, %397
  br label %399

399:                                              ; preds = %177, %154, %168, %396
  %400 = phi i64 [ %398, %396 ], [ -107, %168 ], [ -107, %154 ], [ -107, %177 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #30
  ret i64 %400
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
attributes #23 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{i64 1854270}
!6 = !{i64 1854368}
!7 = !{i64 1854482}
!8 = !{!9, !10, i64 8}
!9 = !{!"ZSTD_CCtx_s", !10, i64 0, !10, i64 4, !10, i64 8, !13, i64 16, !13, i64 240, !13, i64 464, !10, i64 688, !16, i64 696, !20, i64 704, !16, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !22, i64 808, !18, i64 896, !19, i64 920, !16, i64 928, !23, i64 936, !10, i64 968, !10, i64 972, !24, i64 976, !25, i64 1056, !19, i64 3168, !16, i64 3176, !27, i64 3184, !28, i64 3224, !19, i64 3544, !16, i64 3552, !10, i64 3560, !19, i64 3568, !16, i64 3576, !16, i64 3584, !16, i64 3592, !16, i64 3600, !19, i64 3608, !16, i64 3616, !16, i64 3624, !16, i64 3632, !10, i64 3640, !10, i64 3644, !31, i64 3648, !16, i64 3672, !16, i64 3680, !32, i64 3688, !19, i64 3728, !33, i64 3736, !21, i64 3760, !34, i64 3768, !19, i64 5264, !16, i64 5272}
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
!23 = !{!"", !10, i64 0, !19, i64 8, !16, i64 16, !16, i64 24}
!24 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !16, i64 56, !16, i64 64, !10, i64 72, !10, i64 76}
!25 = !{!"", !26, i64 0, !19, i64 40, !10, i64 48, !19, i64 56, !11, i64 64, !11, i64 576}
!26 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!27 = !{!"", !19, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!28 = !{!"", !19, i64 0, !19, i64 8, !29, i64 16}
!29 = !{!"ZSTD_MatchState_t", !26, i64 0, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !19, i64 56, !11, i64 64, !16, i64 96, !10, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !10, i64 136, !10, i64 140, !30, i64 144, !19, i64 248, !14, i64 256, !19, i64 288, !10, i64 296, !10, i64 300}
!30 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !19, i64 88, !10, i64 96}
!31 = !{!"ZSTD_inBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!32 = !{!"", !19, i64 0, !19, i64 8, !16, i64 16, !10, i64 24, !19, i64 32}
!33 = !{!"ZSTD_prefixDict_s", !19, i64 0, !16, i64 8, !10, i64 16}
!34 = !{!"", !24, i64 0, !24, i64 80, !24, i64 160, !24, i64 240, !24, i64 320, !11, i64 400, !35, i64 1184}
!35 = !{!"", !36, i64 0, !37, i64 144}
!36 = !{!"", !10, i64 0, !11, i64 4, !16, i64 136}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 12, !16, i64 152, !16, i64 160}
!38 = !{!13, !10, i64 44}
!39 = !{!13, !10, i64 32}
!40 = !{!18, !19, i64 0}
!41 = !{!18, !19, i64 8}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 1, !44, i64 60, i64 4, !45, i64 64, i64 4, !45, i64 68, i64 4, !45}
!43 = !{!19, !19, i64 0}
!44 = !{!11, !11, i64 0}
!45 = !{!10, !10, i64 0}
!46 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 1, !44, i64 52, i64 4, !45, i64 56, i64 4, !45, i64 60, i64 4, !45}
!47 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 1, !44, i64 44, i64 4, !45, i64 48, i64 4, !45, i64 52, i64 4, !45}
!48 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 1, !44, i64 36, i64 4, !45, i64 40, i64 4, !45, i64 44, i64 4, !45}
!49 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 1, !44, i64 28, i64 4, !45, i64 32, i64 4, !45, i64 36, i64 4, !45}
!50 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 1, !44, i64 20, i64 4, !45, i64 24, i64 4, !45, i64 28, i64 4, !45}
!51 = !{i64 0, i64 8, !43, i64 8, i64 1, !44, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45}
!52 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45}
!53 = !{i64 0, i64 4, !45}
!54 = !{!9, !16, i64 928}
!55 = !{!20, !11, i64 56}
!56 = !{!20, !19, i64 16}
!57 = !{!20, !19, i64 24}
!58 = !{!20, !19, i64 32}
!59 = !{!9, !19, i64 3224}
!60 = !{!9, !19, i64 3544}
!61 = !{!9, !16, i64 3552}
!62 = !{!20, !19, i64 0}
!63 = !{!20, !19, i64 8}
!64 = !{!14, !10, i64 0}
!65 = !{!14, !10, i64 4}
!66 = !{!14, !10, i64 8}
!67 = !{!14, !10, i64 12}
!68 = !{!14, !10, i64 16}
!69 = !{!14, !10, i64 24}
!70 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45, i64 24, i64 4, !45}
!71 = !{!13, !10, i64 160}
!72 = !{!13, !10, i64 140}
!73 = !{!13, !10, i64 96}
!74 = !{!13, !16, i64 152}
!75 = !{!13, !10, i64 216}
!76 = !{!9, !10, i64 3640}
!77 = !{!9, !10, i64 4}
!78 = !{!13, !10, i64 0}
!79 = !{!13, !10, i64 4}
!80 = !{!13, !10, i64 12}
!81 = !{!13, !10, i64 8}
!82 = !{!13, !10, i64 16}
!83 = !{!13, !10, i64 20}
!84 = !{!13, !10, i64 24}
!85 = !{!13, !10, i64 28}
!86 = !{!13, !10, i64 36}
!87 = !{!13, !10, i64 40}
!88 = !{!13, !10, i64 48}
!89 = !{!13, !10, i64 68}
!90 = !{!13, !10, i64 72}
!91 = !{!13, !10, i64 120}
!92 = !{!13, !10, i64 100}
!93 = !{!13, !10, i64 108}
!94 = !{!13, !10, i64 104}
!95 = !{!13, !10, i64 112}
!96 = !{!13, !16, i64 56}
!97 = !{!13, !10, i64 64}
!98 = !{!13, !10, i64 124}
!99 = !{!13, !10, i64 128}
!100 = !{!13, !10, i64 132}
!101 = !{!13, !10, i64 136}
!102 = !{!13, !10, i64 144}
!103 = !{!13, !10, i64 164}
!104 = !{!13, !10, i64 192}
!105 = !{!13, !10, i64 196}
!106 = !{i64 -40, i64 1}
!107 = !{!13, !10, i64 76}
!108 = !{!9, !19, i64 3728}
!109 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45, i64 24, i64 4, !45, i64 28, i64 4, !45, i64 32, i64 4, !45, i64 36, i64 4, !45, i64 40, i64 4, !45, i64 44, i64 4, !45, i64 48, i64 4, !45, i64 56, i64 8, !110, i64 64, i64 4, !45, i64 68, i64 4, !45, i64 72, i64 4, !45, i64 76, i64 4, !45, i64 80, i64 8, !110, i64 88, i64 4, !45, i64 92, i64 4, !45, i64 96, i64 4, !45, i64 100, i64 4, !45, i64 104, i64 4, !45, i64 108, i64 4, !45, i64 112, i64 4, !45, i64 116, i64 4, !45, i64 120, i64 4, !45, i64 124, i64 4, !45, i64 128, i64 4, !45, i64 132, i64 4, !45, i64 136, i64 4, !45, i64 140, i64 4, !45, i64 144, i64 4, !45, i64 152, i64 8, !110, i64 160, i64 4, !45, i64 164, i64 4, !45, i64 168, i64 8, !43, i64 176, i64 8, !43, i64 184, i64 8, !43, i64 192, i64 4, !45, i64 196, i64 4, !45, i64 200, i64 8, !43, i64 208, i64 8, !43, i64 216, i64 4, !45}
!110 = !{!16, !16, i64 0}
!111 = !{!9, !21, i64 784}
!112 = !{!9, !19, i64 3688}
!113 = !{!9, !19, i64 3696}
!114 = !{!9, !16, i64 3704}
!115 = !{!9, !10, i64 3712}
!116 = !{!9, !19, i64 3720}
!117 = !{i64 0, i64 8, !43, i64 8, i64 8, !43}
!118 = !{i64 0, i64 8, !43}
!119 = !{!9, !19, i64 920}
!120 = !{!9, !19, i64 3736}
!121 = !{!9, !16, i64 3744}
!122 = !{!9, !10, i64 3752}
!123 = !{i32 0, i32 33}
!124 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45, i64 20, i64 4, !45}
!125 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !45}
!126 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45}
!127 = !{i64 0, i64 4, !45, i64 4, i64 4, !45}
!128 = !{!17, !10, i64 0}
!129 = !{!13, !19, i64 208}
!130 = !{!131}
!131 = distinct !{!131, !132, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!132 = distinct !{!132, !"ZSTD_makeCCtxParamsFromCParams"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"ZSTD_getCParams_internal: argument 0"}
!135 = distinct !{!135, !"ZSTD_getCParams_internal"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"ZSTD_getCParams_internal: argument 0"}
!138 = distinct !{!138, !"ZSTD_getCParams_internal"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"ZSTD_getCParams_internal: argument 0"}
!141 = distinct !{!141, !"ZSTD_getCParams_internal"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"ZSTD_getCParams_internal: argument 0"}
!144 = distinct !{!144, !"ZSTD_getCParams_internal"}
!145 = !{}
!146 = distinct !{!146, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!150 = distinct !{!150, !"ZSTD_makeCCtxParamsFromCParams"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"ZSTD_getCParams_internal: argument 0"}
!153 = distinct !{!153, !"ZSTD_getCParams_internal"}
!154 = distinct !{!154, !147}
!155 = !{!9, !19, i64 3568}
!156 = !{!9, !16, i64 3592}
!157 = !{!9, !16, i64 3584}
!158 = !{!9, !21, i64 792}
!159 = !{!160, !21, i64 0}
!160 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !10, i64 32, !10, i64 36}
!161 = !{!160, !21, i64 8}
!162 = !{!9, !21, i64 800}
!163 = !{!160, !21, i64 16}
!164 = !{!160, !21, i64 24}
!165 = !{!160, !10, i64 32}
!166 = !{!160, !10, i64 36}
!167 = !{!168, !10, i64 2056}
!168 = !{!"", !169, i64 0, !11, i64 5616}
!169 = !{!"", !170, i64 0, !171, i64 2064}
!170 = !{!"", !11, i64 0, !10, i64 2056}
!171 = !{!"", !11, i64 0, !11, i64 772, !11, i64 2224, !10, i64 3540, !10, i64 3544, !10, i64 3548}
!172 = !{!168, !10, i64 5604}
!173 = !{!168, !10, i64 5608}
!174 = !{!168, !10, i64 5612}
!175 = !{!9, !10, i64 0}
!176 = !{!9, !10, i64 3560}
!177 = !{!9, !10, i64 400}
!178 = !{!9, !10, i64 380}
!179 = !{!9, !16, i64 392}
!180 = !{!9, !10, i64 268}
!181 = !{!9, !10, i64 248}
!182 = !{!9, !10, i64 252}
!183 = !{!9, !10, i64 3288}
!184 = !{!9, !19, i64 3352}
!185 = !{!9, !19, i64 3368}
!186 = !{!9, !19, i64 3360}
!187 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 4, !45, i64 28, i64 4, !45, i64 32, i64 4, !45}
!188 = !{!9, !10, i64 688}
!189 = !{!9, !16, i64 696}
!190 = !{!24, !19, i64 0}
!191 = !{!24, !19, i64 32}
!192 = !{!24, !19, i64 48}
!193 = !{!24, !19, i64 40}
!194 = !{!24, !19, i64 8}
!195 = !{!196, !197, i64 4}
!196 = !{!"SeqDef_s", !10, i64 0, !197, i64 4, !197, i64 6}
!197 = !{!"short", !11, i64 0}
!198 = !{!196, !10, i64 0}
!199 = !{!196, !197, i64 6}
!200 = distinct !{!200, !147}
!201 = !{!24, !10, i64 72}
!202 = !{!24, !10, i64 76}
!203 = !{!24, !19, i64 16}
!204 = !{!24, !19, i64 24}
!205 = !{i64 0, i64 4, !45, i64 8, i64 8, !43, i64 16, i64 8, !110, i64 24, i64 8, !110}
!206 = !{i64 0, i64 8, !43, i64 8, i64 8, !110, i64 16, i64 8, !110}
!207 = !{i64 0, i64 8, !110, i64 8, i64 8, !110}
!208 = !{i64 0, i64 8, !110}
!209 = !{!210, !19, i64 0}
!210 = !{!"ZSTD_outBuffer_s", !19, i64 0, !16, i64 8, !16, i64 16}
!211 = !{!210, !16, i64 8}
!212 = !{!210, !16, i64 16}
!213 = !{!31, !19, i64 0}
!214 = !{!31, !16, i64 8}
!215 = !{!31, !16, i64 16}
!216 = !{!9, !10, i64 140}
!217 = !{!9, !10, i64 144}
!218 = !{!9, !16, i64 952}
!219 = !{!220, !10, i64 0}
!220 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!221 = !{!220, !10, i64 8}
!222 = !{!220, !10, i64 4}
!223 = distinct !{!223, !147}
!224 = !{!170, !10, i64 2056}
!225 = !{!36, !10, i64 0}
!226 = !{!35, !16, i64 136}
!227 = !{!171, !10, i64 3548}
!228 = !{!229}
!229 = distinct !{!229, !230, !"ZSTD_buildDummySequencesStatistics: argument 0"}
!230 = distinct !{!230, !"ZSTD_buildDummySequencesStatistics"}
!231 = !{!171, !10, i64 3540}
!232 = !{!171, !10, i64 3544}
!233 = !{i64 0, i64 4, !45, i64 8, i64 8, !110, i64 16, i64 8, !110, i64 24, i64 4, !45}
!234 = !{i64 0, i64 8, !110, i64 8, i64 8, !110, i64 16, i64 4, !45}
!235 = !{i64 0, i64 8, !110, i64 8, i64 4, !45}
!236 = !{!37, !10, i64 8}
!237 = !{!37, !16, i64 160}
!238 = !{!35, !16, i64 296}
!239 = !{!197, !197, i64 0}
!240 = !{!9, !19, i64 3184}
!241 = !{!9, !16, i64 3208}
!242 = !{!9, !16, i64 3216}
!243 = !{!29, !10, i64 136}
!244 = !{!26, !19, i64 0}
!245 = !{!26, !19, i64 16}
!246 = !{!26, !10, i64 28}
!247 = !{!26, !10, i64 24}
!248 = !{!26, !19, i64 8}
!249 = !{!29, !10, i64 44}
!250 = !{!9, !10, i64 336}
!251 = !{!9, !16, i64 776}
!252 = !{!9, !10, i64 244}
!253 = !{!9, !10, i64 276}
!254 = !{!9, !10, i64 384}
!255 = !{!9, !10, i64 968}
!256 = !{!9, !10, i64 936}
!257 = !{!9, !19, i64 984}
!258 = !{!9, !19, i64 976}
!259 = !{!260, !19, i64 0}
!260 = !{!"", !19, i64 0, !16, i64 8}
!261 = !{!260, !16, i64 8}
!262 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !110, i64 64, i64 8, !110, i64 72, i64 4, !45, i64 76, i64 4, !45}
!263 = !{i64 0, i64 2, !239, i64 2, i64 2, !239}
!264 = distinct !{!264, !147}
!265 = !{i64 0, i64 2, !239}
!266 = distinct !{!266, !147}
!267 = distinct !{!267, !147}
!268 = distinct !{!268, !147}
!269 = distinct !{!269, !147}
!270 = !{!271, !16, i64 8}
!271 = !{!"ZSTD_CDict_s", !19, i64 0, !16, i64 8, !10, i64 16, !19, i64 24, !20, i64 32, !29, i64 104, !168, i64 408, !18, i64 6040, !10, i64 6064, !10, i64 6068, !10, i64 6072}
!272 = !{!9, !21, i64 3760}
!273 = !{!271, !10, i64 6068}
!274 = !{!271, !10, i64 244}
!275 = !{!271, !10, i64 6072}
!276 = !{!271, !19, i64 104}
!277 = !{!271, !19, i64 112}
!278 = !{!271, !10, i64 128}
!279 = !{!9, !19, i64 3488}
!280 = !{!9, !10, i64 3264}
!281 = !{!9, !19, i64 3240}
!282 = !{!9, !10, i64 3280}
!283 = !{!271, !10, i64 6064}
!284 = !{!271, !19, i64 216}
!285 = distinct !{!285, !147, !286, !287}
!286 = !{!"llvm.loop.isvectorized", i32 1}
!287 = !{!"llvm.loop.unroll.runtime.disable"}
!288 = distinct !{!288, !289}
!289 = !{!"llvm.loop.unroll.disable"}
!290 = distinct !{!290, !147, !286}
!291 = !{!271, !19, i64 232}
!292 = distinct !{!292, !147, !286, !287}
!293 = distinct !{!293, !289}
!294 = distinct !{!294, !147, !286}
!295 = !{!9, !19, i64 3296}
!296 = !{!271, !19, i64 160}
!297 = !{!271, !16, i64 200}
!298 = !{!9, !16, i64 3336}
!299 = !{!271, !19, i64 0}
!300 = !{!271, !10, i64 16}
!301 = !{!302, !304}
!302 = distinct !{!302, !303, !"ZSTD_getCParams_internal: argument 0"}
!303 = distinct !{!303, !"ZSTD_getCParams_internal"}
!304 = distinct !{!304, !305, !"ZSTD_getParams_internal: argument 0"}
!305 = distinct !{!305, !"ZSTD_getParams_internal"}
!306 = !{!9, !16, i64 3576}
!307 = !{!9, !16, i64 3616}
!308 = !{!9, !10, i64 316}
!309 = !{!310, !10, i64 0}
!310 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !19, i64 40, !19, i64 48, !19, i64 56}
!311 = !{!310, !10, i64 4}
!312 = !{!310, !10, i64 8}
!313 = !{!310, !16, i64 16}
!314 = !{!310, !16, i64 24}
!315 = !{!310, !16, i64 32}
!316 = !{!310, !19, i64 40}
!317 = !{!310, !19, i64 48}
!318 = !{!319}
!319 = distinct !{!319, !320, !"ZSTD_getParams_internal: argument 0"}
!320 = distinct !{!320, !"ZSTD_getParams_internal"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"ZSTD_getParams_internal: argument 0"}
!323 = distinct !{!323, !"ZSTD_getParams_internal"}
!324 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43}
!325 = !{!326}
!326 = distinct !{!326, !327, !"ZSTD_dedicatedDictSearch_getCParams: argument 0"}
!327 = distinct !{!327, !"ZSTD_dedicatedDictSearch_getCParams"}
!328 = !{i64 0, i64 1, !44, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45}
!329 = !{!20, !10, i64 64}
!330 = !{!271, !19, i64 24}
!331 = !{i64 -64, i64 1}
!332 = !{!333}
!333 = distinct !{!333, !334, !"ZSTD_getCParams: argument 0"}
!334 = distinct !{!334, !"ZSTD_getCParams"}
!335 = !{!9, !10, i64 364}
!336 = !{!9, !16, i64 3672}
!337 = !{!9, !16, i64 3600}
!338 = !{!9, !19, i64 3648}
!339 = !{!9, !16, i64 3656}
!340 = !{!9, !10, i64 16}
!341 = !{!9, !10, i64 368}
!342 = !{!9, !16, i64 3680}
!343 = distinct !{!343, !147}
!344 = !{!9, !16, i64 3624}
!345 = !{!9, !16, i64 3632}
!346 = !{!9, !10, i64 3644}
!347 = !{!9, !19, i64 3608}
!348 = !{i64 0, i64 8, !43, i64 8, i64 8, !110, i64 16, i64 4, !45}
!349 = !{!32, !19, i64 8}
!350 = !{!32, !19, i64 32}
!351 = !{!32, !16, i64 16}
!352 = !{!32, !10, i64 24}
!353 = !{!271, !10, i64 384}
!354 = !{!9, !10, i64 372}
!355 = distinct !{!355, !147}
!356 = !{!9, !10, i64 456}
!357 = !{ptr @ZSTD_transferSequences_noDelim, ptr @ZSTD_transferSequences_wBlockDelim}
!358 = distinct !{!358, !147}
!359 = !{!9, !19, i64 3232}
!360 = !{!28, !19, i64 0}
!361 = !{!28, !19, i64 8}
!362 = !{!"branch_weights", i32 1, i32 2000}
!363 = distinct !{!363, !147}
!364 = !{!9, !16, i64 1032}
!365 = !{!9, !10, i64 1048}
!366 = !{!9, !10, i64 1052}
!367 = !{!"branch_weights", i32 1125985, i32 2146357663}
!368 = distinct !{!368, !147}
!369 = distinct !{!369, !147}
!370 = distinct !{!370, !147}
!371 = !{!372, !16, i64 0}
!372 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!373 = !{!372, !16, i64 16}
!374 = !{!372, !16, i64 8}
!375 = !{!9, !10, i64 376}
!376 = !{!377}
!377 = distinct !{!377, !378, !"ZSTD_get1BlockSummary: argument 0"}
!378 = distinct !{!378, !"ZSTD_get1BlockSummary"}
!379 = !{i64 -107, i64 1}
!380 = !{!381}
!381 = distinct !{!381, !382, !"inBuffer_forEndFlush: argument 0"}
!382 = distinct !{!382, !"inBuffer_forEndFlush"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"inBuffer_forEndFlush: argument 0"}
!385 = distinct !{!385, !"inBuffer_forEndFlush"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"ZSTD_getParams_internal: argument 0"}
!388 = distinct !{!388, !"ZSTD_getParams_internal"}
!389 = !{!390, !10, i64 28}
!390 = !{!"", !14, i64 0, !15, i64 28}
!391 = !{!9, !10, i64 972}
!392 = !{!20, !10, i64 60}
!393 = !{!20, !19, i64 40}
!394 = !{!20, !19, i64 48}
!395 = !{!20, !10, i64 68}
!396 = !{!9, !10, i64 3536}
!397 = !{!9, !10, i64 272}
!398 = !{!9, !19, i64 1096}
!399 = !{!9, !19, i64 3168}
!400 = !{!9, !16, i64 3176}
!401 = !{!9, !10, i64 1104}
!402 = !{!9, !16, i64 5272}
!403 = !{!9, !19, i64 5264}
!404 = !{!9, !19, i64 992}
!405 = !{!9, !16, i64 1040}
!406 = !{!9, !19, i64 1112}
!407 = !{!9, !19, i64 1008}
!408 = !{!9, !19, i64 1016}
!409 = !{!9, !19, i64 1024}
!410 = !{!29, !10, i64 140}
!411 = !{!29, !10, i64 48}
!412 = !{!29, !10, i64 300}
!413 = !{!29, !10, i64 40}
!414 = !{!29, !10, i64 196}
!415 = !{!29, !19, i64 248}
!416 = !{!29, !19, i64 112}
!417 = !{!29, !19, i64 128}
!418 = !{!29, !19, i64 120}
!419 = !{!29, !19, i64 56}
!420 = !{!29, !16, i64 96}
!421 = !{!29, !10, i64 104}
!422 = !{!29, !10, i64 52}
!423 = !{!29, !19, i64 144}
!424 = !{!29, !19, i64 152}
!425 = !{!29, !19, i64 160}
!426 = !{!29, !19, i64 168}
!427 = !{!29, !19, i64 176}
!428 = !{!29, !19, i64 184}
!429 = !{!430, !16, i64 24}
!430 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !16, i64 16, !16, i64 24, !10, i64 32}
!431 = !{!430, !10, i64 32}
!432 = !{!430, !10, i64 0}
!433 = !{!430, !16, i64 16}
!434 = !{!430, !10, i64 4}
!435 = !{!430, !10, i64 8}
!436 = !{!26, !10, i64 32}
!437 = distinct !{!437, !147}
!438 = !{i64 -70, i64 1}
!439 = !{!9, !10, i64 260}
!440 = !{!29, !19, i64 232}
!441 = !{!9, !10, i64 312}
!442 = !{!29, !10, i64 240}
!443 = !{!29, !19, i64 8}
!444 = !{!9, !16, i64 3192}
!445 = !{!27, !19, i64 0}
!446 = !{!27, !16, i64 32}
!447 = !{!9, !19, i64 440}
!448 = !{!9, !10, i64 284}
!449 = distinct !{!449, !147}
!450 = !{!29, !19, i64 288}
!451 = !{!9, !10, i64 436}
!452 = !{!453, !10, i64 0}
!453 = !{!"", !10, i64 0, !10, i64 4, !16, i64 8}
!454 = !{!453, !16, i64 8}
!455 = distinct !{!455, !147}
!456 = distinct !{!456, !147, !286, !287}
!457 = distinct !{!457, !147, !286, !287}
!458 = distinct !{!458, !289}
!459 = distinct !{!459, !147, !286}
!460 = !{!"branch_weights", i32 1717128, i32 2145766520}
!461 = distinct !{!461, !147}
!462 = !{i64 0, i64 65}
!463 = distinct !{!463, !147}
!464 = !{i64 0, i64 12, !44}
!465 = distinct !{!465, !147}
!466 = !{!36, !16, i64 136}
!467 = !{!37, !10, i64 4}
!468 = distinct !{!468, !147}
!469 = !{!37, !10, i64 0}
!470 = !{!37, !16, i64 152}
!471 = !{!23, !16, i64 16}
!472 = !{!23, !19, i64 8}
!473 = !{!23, !16, i64 24}
!474 = !{!220, !10, i64 12}
!475 = distinct !{!475, !147}
!476 = !{!25, !19, i64 8}
!477 = !{!25, !10, i64 48}
!478 = !{!453, !10, i64 4}
!479 = distinct !{!479, !147, !286, !287}
!480 = distinct !{!480, !147, !286, !287}
!481 = distinct !{!481, !289}
!482 = distinct !{!482, !147, !286}
