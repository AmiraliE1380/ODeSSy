; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/zstd_compress.ll.mid'
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

13:                                               ; preds = %3, %1
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i64 [ -72, %13 ], [ %11, %3 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtx() local_unnamed_addr #1 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #28, !srcloc !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #28, !srcloc !6
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #28, !srcloc !7
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

23:                                               ; preds = %17, %0
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCCtx_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #1 {
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
  %12 = tail call ptr %2(ptr noundef %11, i64 noundef 5280) #29
  br label %15

13:                                               ; preds = %8
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #30
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %16, i8 0, i64 5280, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %20 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #28, !srcloc !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #28, !srcloc !6
  %24 = icmp ugt i32 %20, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #28, !srcloc !7
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
define dso_local noundef ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ugt i64 %1, 5280
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5280
  %10 = icmp eq ptr %0, null
  br i1 %10, label %69, label %11

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
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 1, ptr %25, align 4, !tbaa !49
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %1, ptr %26, align 8, !tbaa !50
  %27 = add i64 %1, -5280
  %28 = sub i64 %27, %14
  %29 = icmp ult i64 %28, 20184
  br i1 %29, label %69, label %30

30:                                               ; preds = %11
  %31 = icmp samesign ult i64 %1, 10912
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 10912
  store ptr %34, ptr %19, align 8, !tbaa !52
  store ptr %34, ptr %20, align 8, !tbaa !53
  store ptr %34, ptr %21, align 8, !tbaa !54
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi ptr [ %9, %32 ], [ %34, %33 ]
  %37 = phi ptr [ null, %32 ], [ %9, %33 ]
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store ptr %37, ptr %38, align 8, !tbaa !55
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 5632
  %40 = icmp ugt ptr %39, %12
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %43

42:                                               ; preds = %35
  store ptr %39, ptr %19, align 8, !tbaa !52
  store ptr %39, ptr %20, align 8, !tbaa !53
  store ptr %39, ptr %21, align 8, !tbaa !54
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i64 [ 8920, %41 ], [ 14552, %42 ]
  %45 = phi ptr [ null, %41 ], [ %36, %42 ]
  %46 = phi ptr [ %36, %41 ], [ %39, %42 ]
  %47 = getelementptr inbounds nuw i8, ptr %36, i64 %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %45, ptr %48, align 8, !tbaa !56
  %49 = icmp ugt ptr %47, %12
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i8 1, ptr %24, align 8, !tbaa !51
  br label %52

51:                                               ; preds = %43
  store ptr %47, ptr %19, align 8, !tbaa !52
  store ptr %47, ptr %20, align 8, !tbaa !53
  store ptr %47, ptr %21, align 8, !tbaa !54
  br label %52

52:                                               ; preds = %51, %50
  %53 = phi ptr [ null, %50 ], [ %46, %51 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %53, ptr %54, align 8, !tbaa !57
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %55, align 8, !tbaa !58
  %56 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #28, !srcloc !5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #28, !srcloc !6
  %60 = icmp ugt i32 %56, 6
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #28, !srcloc !7
  %63 = extractvalue { i32, i32, i32 } %62, 1
  %64 = lshr i32 %63, 8
  %65 = and i32 %64, 1
  br label %66

66:                                               ; preds = %61, %58, %52
  %67 = phi i32 [ %65, %61 ], [ 0, %58 ], [ 0, %52 ]
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %67, ptr %68, align 8, !tbaa !8
  br label %69

69:                                               ; preds = %66, %11, %8, %2
  %70 = phi ptr [ %0, %66 ], [ null, %2 ], [ null, %11 ], [ null, %8 ]
  ret ptr %70
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #1 {
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
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #29
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #29
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #29
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #29
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
  %35 = phi i64 [ 0, %1 ], [ -64, %3 ], [ 0, %27 ], [ 0, %31 ], [ 0, %33 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CCtx(ptr noundef readonly captures(address) %0) local_unnamed_addr #4 {
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

38:                                               ; preds = %30, %1
  %39 = phi i64 [ %37, %30 ], [ 0, %1 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ZSTD_sizeof_CStream(ptr noundef readonly captures(address) %0) local_unnamed_addr #4 {
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

38:                                               ; preds = %30, %1
  %39 = phi i64 [ %37, %30 ], [ 0, %1 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ZSTD_getSeqStore(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 976
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ZSTD_createCCtxParams() local_unnamed_addr #5 {
  %1 = tail call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45
  br label %6

6:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #1 {
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
  tail call void %5(ptr noundef %9, ptr noundef nonnull %0) #29
  br label %11

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %0) #29
  br label %11

11:                                               ; preds = %10, %7, %1
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_reset(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %5, align 8, !tbaa !45
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i64 [ 0, %3 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -1, 1) i64 @ZSTD_CCtxParams_init(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %6, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i64 [ 0, %4 ], [ -1, %2 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #7 {
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

57:                                               ; preds = %52, %48, %47
  %58 = phi i32 [ 2, %48 ], [ %56, %52 ], [ 2, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %58, ptr %59, align 8, !tbaa !78
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 131072, ptr %60, align 8, !tbaa !79
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 2, ptr %61, align 8, !tbaa !80
  br label %62

62:                                               ; preds = %57, %32, %23, %18, %13, %8, %4, %2
  %63 = phi i64 [ 0, %57 ], [ -42, %32 ], [ -1, %2 ], [ -42, %4 ], [ -42, %8 ], [ -42, %13 ], [ -42, %18 ], [ -42, %23 ]
  ret i64 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -42, 1) i64 @ZSTD_checkCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #8 {
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

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
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
define dso_local range(i64 -60, 2147483648) i64 @ZSTD_CCtx_setParameter(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
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

17:                                               ; preds = %13, %11, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %18, i32 noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %17, %13, %10, %7
  %21 = phi i64 [ %19, %17 ], [ -40, %13 ], [ -40, %10 ], [ -60, %7 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -42, 2147483648) i64 @ZSTD_CCtxParams_setParameter(ptr noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
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

15:                                               ; preds = %12, %10, %8
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

219:                                              ; preds = %216, %214, %211, %206, %203, %201, %198, %196, %193, %191, %188, %186, %183, %181, %178, %176, %173, %171, %168, %166, %163, %161, %158, %156, %153, %151, %147, %144, %139, %137, %134, %132, %129, %124, %121, %116, %113, %111, %106, %103, %100, %97, %94, %91, %89, %86, %84, %79, %73, %68, %63, %60, %58, %55, %53, %50, %49, %46, %44, %41, %36, %33, %28, %25, %20, %15, %6, %4, %3
  %220 = phi i64 [ %7, %6 ], [ %27, %25 ], [ %35, %33 ], [ %43, %41 ], [ %48, %46 ], [ %52, %50 ], [ %57, %55 ], [ %62, %60 ], [ %67, %63 ], [ %72, %68 ], [ %78, %73 ], [ %83, %79 ], [ %110, %106 ], [ %115, %113 ], [ %123, %121 ], [ %131, %129 ], [ %136, %134 ], [ %141, %139 ], [ %149, %147 ], [ %155, %153 ], [ %160, %158 ], [ %165, %163 ], [ %170, %168 ], [ %175, %173 ], [ %180, %178 ], [ %185, %183 ], [ %190, %188 ], [ %195, %193 ], [ %200, %198 ], [ %205, %203 ], [ %212, %211 ], [ %218, %216 ], [ -42, %4 ], [ -42, %53 ], [ %88, %86 ], [ -42, %84 ], [ %93, %91 ], [ -42, %89 ], [ %96, %94 ], [ %99, %97 ], [ %102, %100 ], [ %105, %103 ], [ -42, %111 ], [ -42, %144 ], [ -42, %156 ], [ -42, %161 ], [ -42, %166 ], [ -42, %171 ], [ -42, %176 ], [ -42, %181 ], [ -42, %186 ], [ -42, %191 ], [ -42, %196 ], [ -42, %201 ], [ -42, %214 ], [ -40, %3 ], [ %19, %15 ], [ -42, %20 ], [ -42, %28 ], [ -42, %36 ], [ -42, %44 ], [ -42, %49 ], [ -42, %58 ], [ -42, %116 ], [ -42, %124 ], [ -42, %132 ], [ -42, %137 ], [ -42, %151 ], [ -42, %206 ]
  ret i64 %220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtx_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = tail call i64 @ZSTD_CCtxParams_getParameter(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -40, 1) i64 @ZSTD_CCtxParams_getParameter(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 {
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
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
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

12:                                               ; preds = %10, %6, %2
  %13 = phi i64 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setCParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1) local_unnamed_addr #7 {
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

47:                                               ; preds = %39, %35, %30, %21, %16, %11, %6, %2
  %48 = phi i64 [ -42, %30 ], [ 0, %39 ], [ -42, %2 ], [ -42, %6 ], [ -42, %11 ], [ -42, %16 ], [ -42, %21 ], [ -60, %35 ]
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setFParams(ptr noundef captures(none) %0, i64 %1, i32 %2) local_unnamed_addr #7 {
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

18:                                               ; preds = %7, %3
  %19 = phi i64 [ 0, %7 ], [ -60, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setParams(ptr noundef captures(none) %0, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %1) local_unnamed_addr #7 {
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
  store i32 %8, ptr %55, align 8, !tbaa !86
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %13, ptr %56, align 4, !tbaa !85
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %18, ptr %57, align 8, !tbaa !87
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %23, ptr %58, align 4, !tbaa !88
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %27, ptr %59, align 8, !tbaa !89
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %32, ptr %60, align 4, !tbaa !90
  br label %61

61:                                               ; preds = %39, %35, %30, %21, %16, %11, %6, %2
  %62 = phi i64 [ -42, %30 ], [ -42, %2 ], [ -42, %6 ], [ -42, %11 ], [ -42, %16 ], [ -42, %21 ], [ -60, %35 ], [ 0, %39 ]
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = add i64 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %7, ptr %8, align 8, !tbaa !115
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
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
  %26 = tail call ptr %21(ptr noundef %25, i64 noundef %2) #29
  br label %29

27:                                               ; preds = %19
  %28 = tail call noalias ptr @malloc(i64 noundef %2) #30
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %26, %23 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %1, i64 %2, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3688
  store ptr %30, ptr %33, align 8, !tbaa !116
  br label %34

34:                                               ; preds = %32, %13
  %35 = phi ptr [ %30, %32 ], [ %1, %13 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %35, ptr %36, align 8, !tbaa !117
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i64 %2, ptr %37, align 8, !tbaa !118
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i32 %4, ptr %38, align 8, !tbaa !119
  br label %39

39:                                               ; preds = %34, %29, %15, %9, %5
  %40 = phi i64 [ 0, %34 ], [ -60, %5 ], [ 0, %9 ], [ -64, %15 ], [ -64, %29 ]
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_clearAllDicts(ptr noundef captures(none) initializes((3696, 3720), (3728, 3760)) %0) unnamed_addr #1 {
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
  tail call void %5(ptr noundef %7, ptr noundef nonnull %3) #29
  br label %13

12:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %3) #29
  br label %13

13:                                               ; preds = %12, %11, %1
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
  tail call void %19(ptr noundef %21, ptr noundef nonnull %23) #29
  br label %35

35:                                               ; preds = %34, %29
  br i1 %30, label %37, label %41

36:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %23) #29
  br i1 %30, label %40, label %41

37:                                               ; preds = %35
  %38 = icmp eq ptr %19, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void %19(ptr noundef %21, ptr noundef nonnull %15) #29
  br label %41

40:                                               ; preds = %37, %36
  tail call void @free(ptr noundef nonnull %15) #29
  br label %41

41:                                               ; preds = %40, %39, %36, %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_loadDictionary_byReference(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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

15:                                               ; preds = %11, %7, %3
  %16 = phi i64 [ 0, %11 ], [ -60, %3 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_CCtx_loadDictionary(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
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
  %22 = tail call ptr %17(ptr noundef %21, i64 noundef %2) #29
  br label %25

23:                                               ; preds = %15
  %24 = tail call noalias ptr @malloc(i64 noundef %2) #30
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

33:                                               ; preds = %28, %25, %11, %7, %3
  %34 = phi i64 [ 0, %28 ], [ -60, %3 ], [ 0, %7 ], [ -64, %11 ], [ -64, %25 ]
  ret i64 %34
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refCDict(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @ZSTD_clearAllDicts(ptr noundef nonnull %0)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 3728
  store ptr %1, ptr %7, align 8, !tbaa !112
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refThreadPool(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %7, align 8, !tbaa !121
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i64 [ 0, %6 ], [ -60, %2 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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

15:                                               ; preds = %11, %7, %3
  %16 = phi i64 [ -60, %3 ], [ 0, %11 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_refPrefix_advanced(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
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

16:                                               ; preds = %12, %8, %4
  %17 = phi i64 [ -60, %4 ], [ 0, %12 ], [ 0, %8 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_CCtx_reset(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %6, align 8, !tbaa !81
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %7, align 8, !tbaa !115
  br label %8

8:                                                ; preds = %5, %2
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

19:                                               ; preds = %15, %11, %8
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
define dso_local void @ZSTD_adjustCParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
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
  %26 = icmp eq i64 %2, 0
  %27 = select i1 %26, i64 -1, i64 %2
  %28 = icmp ult i64 %27, 1073741825
  %29 = icmp ult i64 %3, 1073741825
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = add nuw nsw i64 %27, %3
  %33 = icmp samesign ult i64 %32, 64
  %34 = trunc nuw i64 %32 to i32
  %35 = add i32 %34, -1
  %36 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %35, i1 true)
  %37 = sub nuw nsw i32 32, %36
  %38 = select i1 %33, i32 6, i32 %37
  %39 = tail call i32 @llvm.umin.i32(i32 %16, i32 %38)
  br label %42

40:                                               ; preds = %4
  %41 = icmp eq i64 %27, -1
  br i1 %41, label %68, label %42

42:                                               ; preds = %40, %31
  %43 = phi i32 [ %39, %31 ], [ %16, %40 ]
  %44 = icmp eq i64 %3, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = zext nneg i32 %43 to i64
  %47 = shl nuw nsw i64 1, %46
  %48 = add i64 %47, %3
  %49 = add i64 %27, %3
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = icmp ugt i64 %48, 2147483647
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = trunc nuw nsw i64 %48 to i32
  %55 = add nsw i32 %54, -1
  %56 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %55, i1 true)
  %57 = sub nuw nsw i32 32, %56
  br label %58

58:                                               ; preds = %53, %51, %45, %42
  %59 = phi i32 [ %43, %42 ], [ %57, %53 ], [ %43, %45 ], [ 31, %51 ]
  %60 = icmp sgt i32 %14, 5
  %61 = sext i1 %60 to i32
  %62 = add nsw i32 %18, %61
  %63 = add nuw nsw i32 %59, 1
  %64 = tail call i32 @llvm.umin.i32(i32 %20, i32 %63)
  %65 = icmp samesign ugt i32 %62, %59
  %66 = sub nsw i32 %59, %61
  %67 = select i1 %65, i32 %66, i32 %18
  br label %68

68:                                               ; preds = %58, %40
  %69 = phi i32 [ %18, %40 ], [ %67, %58 ]
  %70 = phi i32 [ %20, %40 ], [ %64, %58 ]
  %71 = phi i32 [ %16, %40 ], [ %43, %58 ]
  %72 = add nsw i32 %24, -6
  %73 = icmp ult i32 %72, -3
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = tail call i32 @llvm.umax.i32(i32 %22, i32 4)
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 6)
  %77 = or disjoint i32 %76, 24
  %78 = tail call i32 @llvm.umin.i32(i32 %70, i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = phi i32 [ %70, %68 ], [ %78, %74 ]
  %81 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %25, <2 x i32> <i32 3, i32 0>)
  %82 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %81, <2 x i32> <i32 7, i32 131072>)
  %83 = tail call i32 @llvm.umax.i32(i32 %71, i32 10)
  store i32 %83, ptr %0, align 4, !tbaa !49
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %69, ptr %84, align 4, !tbaa !49
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %80, ptr %85, align 4, !tbaa !49
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %22, ptr %86, align 4, !tbaa !49
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %82, ptr %87, align 4
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %24, ptr %88, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %35 = load i32, ptr %28, align 8, !tbaa !78
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 27, i32 %18
  %38 = load i32, ptr %29, align 4, !tbaa !68
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  %41 = load i32, ptr %30, align 4, !tbaa !70
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %22, i32 %41
  %44 = load i32, ptr %31, align 8, !tbaa !69
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %20, i32 %44
  %47 = load i32, ptr %32, align 8, !tbaa !71
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

127:                                              ; preds = %122, %117, %114
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
define internal fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable writeonly align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #6 {
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

17:                                               ; preds = %11, %5
  %18 = phi i64 [ %16, %11 ], [ -1, %5 ]
  %19 = icmp ult i64 %18, 262145
  %20 = zext i1 %19 to i64
  %21 = icmp ult i64 %18, 131073
  %22 = zext i1 %21 to i64
  %23 = icmp ult i64 %18, 16385
  %24 = zext i1 %23 to i64
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = icmp slt i32 %1, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.umin.i32(i32 %1, i32 22)
  %30 = zext nneg i32 %29 to i64
  br label %31

31:                                               ; preds = %28, %26, %17
  %32 = phi i64 [ 3, %17 ], [ 0, %26 ], [ %30, %28 ]
  %33 = getelementptr inbounds nuw [644 x i8], ptr @ZSTD_defaultCParameters, i64 %20
  %34 = getelementptr inbounds nuw [644 x i8], ptr %33, i64 %22
  %.split = getelementptr inbounds nuw [644 x i8], ptr %34, i64 %24
  %35 = getelementptr inbounds nuw [28 x i8], ptr %.split, i64 %32
  %36 = load i32, ptr %35, align 4, !tbaa !49
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %40 = load i32, ptr %39, align 4, !tbaa !49
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %42 = load <2 x i32>, ptr %41, align 4
  %43 = extractelement <2 x i32> %42, i64 0
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 20
  %45 = load i32, ptr %44, align 4, !tbaa !49
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %47 = load i32, ptr %46, align 4, !tbaa !49
  switch i32 %4, label %53 [
    i32 1, label %52
    i32 2, label %48
  ]

48:                                               ; preds = %31
  %49 = icmp ne i64 %3, 0
  %50 = and i1 %8, %49
  %51 = select i1 %50, i64 513, i64 %2
  br label %53

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %48, %31
  %54 = phi i64 [ %3, %31 ], [ 0, %52 ], [ %3, %48 ]
  %55 = phi i64 [ %2, %31 ], [ %2, %52 ], [ %51, %48 ]
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

115:                                              ; preds = %110, %107, %104
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
define dso_local i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

17:                                               ; preds = %13, %8, %1
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
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #29
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

34:                                               ; preds = %26, %17
  %35 = phi i64 [ %33, %26 ], [ -1, %17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i64 %35
}

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 2, 1) %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i64 noundef %8) unnamed_addr #1 {
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
  %45 = add i64 %44, 56
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
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !125
  %67 = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !125
  %68 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %11, i64 noundef %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %69 = load i32, ptr %1, align 4, !tbaa !126
  %70 = icmp eq i32 %69, 1
  %71 = mul i64 %68, 12
  %72 = add i64 %71, 60
  %73 = and i64 %72, -64
  %74 = select i1 %70, i64 %73, i64 0
  %75 = icmp eq i32 %2, 0
  %76 = udiv i64 %38, 3
  %77 = lshr i64 %38, 10
  %78 = add nuw nsw i64 %77, 2
  %79 = add nuw nsw i64 %78, %76
  %80 = icmp eq i32 %7, 0
  %81 = shl i64 %79, 4
  %82 = add i64 %81, 48
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
define dso_local i64 @ZSTD_estimateCCtxSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
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
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull align 8 %2) #29
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

44:                                               ; preds = %40, %36, %30
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %9

9:                                                ; preds = %148, %1
  %10 = phi i32 [ %3, %1 ], [ %150, %148 ]
  %11 = phi i64 [ 0, %1 ], [ %149, %148 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
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
  %20 = getelementptr inbounds nuw [28 x i8], ptr getelementptr inbounds nuw (i8, ptr @ZSTD_defaultCParameters, i64 1932), i64 %19
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %52 = icmp slt i32 %10, 1
  %53 = select i1 %12, i64 3, i64 0
  %54 = tail call i32 @llvm.umin.i32(i32 %10, i32 22)
  %55 = zext nneg i32 %54 to i64
  %56 = select i1 %52, i64 %53, i64 %55
  %57 = getelementptr inbounds nuw [28 x i8], ptr getelementptr inbounds nuw (i8, ptr @ZSTD_defaultCParameters, i64 1288), i64 %56
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %86 = getelementptr inbounds nuw [28 x i8], ptr getelementptr inbounds nuw (i8, ptr @ZSTD_defaultCParameters, i64 644), i64 %56
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %115 = getelementptr inbounds nuw [28 x i8], ptr @ZSTD_defaultCParameters, i64 %56
  %116 = load i32, ptr %115, align 4, !tbaa !49, !noalias !140
  %117 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %118 = load i32, ptr %117, align 4, !tbaa !49, !noalias !140
  %119 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %120 = load i32, ptr %119, align 4, !tbaa !49, !noalias !140
  %121 = getelementptr inbounds nuw i8, ptr %115, i64 12
  %122 = load <2 x i32>, ptr %121, align 4
  %123 = getelementptr inbounds nuw i8, ptr %115, i64 20
  %124 = load i32, ptr %123, align 4, !tbaa !49, !noalias !140
  %125 = getelementptr inbounds nuw i8, ptr %115, i64 24
  %126 = load i32, ptr %125, align 4, !tbaa !49, !noalias !140
  %127 = add i32 %126, -6
  %128 = icmp ult i32 %127, -3
  br i1 %128, label %135, label %129

129:                                              ; preds = %113
  %130 = extractelement <2 x i32> %122, i64 0
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 4)
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 6)
  %133 = or disjoint i32 %132, 24
  %134 = tail call i32 @llvm.umin.i32(i32 %120, i32 %133)
  br label %135

135:                                              ; preds = %129, %113
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

143:                                              ; preds = %141, %135
  %144 = phi i64 [ %142, %141 ], [ %114, %135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1), !nosanitize !143
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !143
  br i1 %146, label %147, label %148, !prof !144, !nosanitize !143

147:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #32, !nosanitize !143
  unreachable, !nosanitize !143

148:                                              ; preds = %143
  %149 = tail call i64 @llvm.umax.i64(i64 %144, i64 %11)
  %150 = extractvalue { i32, i1 } %145, 0, !nosanitize !143
  %151 = icmp sgt i32 %150, %0
  br i1 %151, label %152, label %9, !llvm.loop !145

152:                                              ; preds = %148
  ret i64 %149
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ldmParams_t, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

37:                                               ; preds = %25, %7
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

52:                                               ; preds = %48, %43, %37
  %53 = phi i32 [ %51, %48 ], [ %40, %37 ], [ 2, %43 ]
  %54 = load i32, ptr %3, align 4, !tbaa !126
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %3, ptr noundef nonnull %2) #29
  %57 = load i64, ptr %9, align 8, !tbaa !79
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i64 [ %57, %56 ], [ %10, %52 ]
  %60 = getelementptr i8, ptr %0, i64 208
  %61 = load ptr, ptr %60, align 8, !tbaa !127
  %62 = icmp ne ptr %61, null
  %63 = zext i1 %62 to i32
  %64 = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %53, i64 noundef %21, i64 noundef %38, i64 noundef -1, i32 noundef %63, i64 noundef %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %65

65:                                               ; preds = %58, %1
  %66 = phi i64 [ %64, %58 ], [ -1, %1 ]
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize_usingCParams(ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
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
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %7, ptr noundef nonnull align 8 %2) #29
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

44:                                               ; preds = %40, %36, %30
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 8
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %9

9:                                                ; preds = %51, %1
  %10 = phi i32 [ %3, %1 ], [ %53, %51 ]
  %11 = phi i64 [ 0, %1 ], [ %52, %51 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
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
  %20 = getelementptr inbounds nuw [28 x i8], ptr @ZSTD_defaultCParameters, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !49, !noalias !150
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !49, !noalias !150
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %25 = load i32, ptr %24, align 4, !tbaa !49, !noalias !150
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 12
  %27 = load <2 x i32>, ptr %26, align 4
  %28 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %29 = load i32, ptr %28, align 4, !tbaa !49, !noalias !150
  %30 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !49, !noalias !150
  %32 = add i32 %31, -6
  %33 = icmp ult i32 %32, -3
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = extractelement <2 x i32> %27, i64 0
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 4)
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 6)
  %38 = or disjoint i32 %37, 24
  %39 = tail call i32 @llvm.umin.i32(i32 %25, i32 %38)
  br label %40

40:                                               ; preds = %34, %18
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1), !nosanitize !143
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !143
  br i1 %49, label %50, label %51, !prof !144, !nosanitize !143

50:                                               ; preds = %40
  tail call void @llvm.ubsantrap(i8 0) #32, !nosanitize !143
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
define dso_local void @ZSTD_getFrameProgression(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_frameProgression) align 8 captures(none) initializes((0, 40)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
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

12:                                               ; preds = %6, %2
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
define dso_local void @ZSTD_reset_compressedBlockState(ptr noundef writeonly captures(none) initializes((2056, 2060), (5604, 5628)) %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_invalidateRepCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 5616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false), !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -60, 1) i64 @ZSTD_copyCCtx(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
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

95:                                               ; preds = %83, %3
  %96 = phi i64 [ 0, %83 ], [ -60, %3 ]
  ret i64 %96
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @ZSTD_seqToCodes(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
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
  br i1 %15, label %.loopexit, label %16

16:                                               ; preds = %1
  %17 = lshr exact i64 %13, 3
  %18 = and i64 %17, 4294967295
  br label %19

19:                                               ; preds = %54, %16
  %20 = phi i64 [ 0, %16 ], [ %57, %54 ]
  %21 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %20
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
  %37 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !196
  br label %39

39:                                               ; preds = %35, %30
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
  %52 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !196
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i8 [ %49, %46 ], [ %53, %50 ]
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 %20
  store i8 %55, ptr %56, align 1, !tbaa !196
  %57 = add nuw nsw i64 %20, 1
  %58 = icmp eq i64 %57, %18
  br i1 %58, label %.loopexit, label %19, !llvm.loop !197

.loopexit:                                        ; preds = %54, %1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load i32, ptr %59, align 8, !tbaa !198
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %68

62:                                               ; preds = %.loopexit
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %64 = load i32, ptr %63, align 4, !tbaa !199
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 %65
  store i8 35, ptr %66, align 1, !tbaa !196
  %67 = load i32, ptr %59, align 8, !tbaa !198
  br label %68

68:                                               ; preds = %62, %.loopexit
  %69 = phi i32 [ %67, %62 ], [ %60, %.loopexit ]
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %73 = load i32, ptr %72, align 4, !tbaa !199
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 %74
  store i8 52, ptr %75, align 1, !tbaa !196
  br label %76

76:                                               ; preds = %71, %68
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %0, -6
  %5 = icmp ult i32 %4, -3
  %6 = icmp ne i32 %1, 1
  %7 = or i1 %5, %6
  %8 = sext i32 %2 to i64
  %.split = getelementptr inbounds [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %8
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr [8 x i8], ptr %.split, i64 %9
  %11 = getelementptr i8, ptr %10, i64 -24
  %12 = sext i32 %0 to i64
  %.split1 = getelementptr inbounds [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %8
  %13 = getelementptr inbounds [8 x i8], ptr %.split1, i64 %12
  %14 = select i1 %7, ptr %13, ptr %11
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  ret ptr %15
}

declare i64 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_resetSeqStore(ptr noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #7 {
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
define dso_local i64 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
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

20:                                               ; preds = %19, %9
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
  %31 = tail call noalias ptr @malloc(i64 noundef %21) #30
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i32> %46, ptr %38, align 4, !tbaa !49
  %49 = icmp ult i64 %47, -119
  %50 = icmp eq i64 %47, 0
  %51 = select i1 %50, i64 %48, i64 -70
  %52 = select i1 %49, i64 %51, i64 %47
  tail call void @free(ptr noundef nonnull %31) #29
  %53 = icmp ult i64 %52, -119
  br i1 %53, label %54, label %56

54:                                               ; preds = %33
  %55 = load i64, ptr %36, align 8, !tbaa !211
  br label %56

56:                                               ; preds = %54, %33, %30, %26, %20
  %57 = phi i64 [ %55, %54 ], [ %52, %33 ], [ -40, %26 ], [ -40, %20 ], [ -64, %30 ]
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress2(ptr noundef initializes((784, 792), (3640, 3644)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 8
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  store i32 0, ptr %10, align 8, !tbaa !81
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 0, ptr %11, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i32> %16, ptr %8, align 4, !tbaa !49
  %19 = icmp ult i64 %17, -119
  %20 = icmp eq i64 %17, 0
  %21 = select i1 %20, i64 %18, i64 -70
  %22 = select i1 %19, i64 %21, i64 %17
  ret i64 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_mergeBlockDelimiters(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #15 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.loopexit, label %7

7:                                                ; preds = %4
  %8 = add i64 %1, -2
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i64 [ 0, %7 ], [ %29, %28 ]
  %11 = phi i64 [ 0, %7 ], [ %30, %28 ]
  %12 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %11
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
  %26 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !216
  %27 = add i64 %10, 1
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i64 [ %10, %19 ], [ %27, %25 ]
  %30 = add nuw i64 %11, 1
  %31 = icmp eq i64 %11, %8
  br i1 %31, label %.loopexit, label %9, !llvm.loop !217

.loopexit:                                        ; preds = %28, %4
  %32 = phi i64 [ 0, %4 ], [ %29, %28 ]
  %33 = phi i64 [ 0, %4 ], [ %30, %28 ]
  %34 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !212
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %.loopexit
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %39 = load i32, ptr %38, align 4, !tbaa !214
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %.loopexit
  %42 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %42, ptr noundef nonnull align 4 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !216
  %43 = add i64 %32, 1
  br label %52

44:                                               ; preds = %37
  %45 = icmp eq i64 %33, %5
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !215
  %49 = getelementptr i8, ptr %34, i64 20
  %50 = load i32, ptr %49, align 4, !tbaa !215
  %51 = add i32 %50, %48
  store i32 %51, ptr %49, align 4, !tbaa !215
  br label %52

52:                                               ; preds = %46, %44, %41, %2
  %53 = phi i64 [ 0, %2 ], [ %32, %46 ], [ %32, %44 ], [ %43, %41 ]
  ret i64 %53
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_buildBlockEntropyStats(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 2064)) %2, ptr noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %90

24:                                               ; preds = %7
  %25 = icmp eq i32 %18, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %24, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 255, ptr %9, align 4, !tbaa !49
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %28 = load i32, ptr %27, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %31 = load i32, ptr %30, align 4, !tbaa !89
  %32 = icmp eq i32 %31, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 255, ptr %9, align 4, !tbaa !49
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %34 = load i32, ptr %33, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br i1 %32, label %35, label %90

35:                                               ; preds = %29, %26
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
  %45 = call i64 @HIST_count_wksp(ptr noundef %5, ptr noundef nonnull %9, ptr noundef %13, i64 noundef %16, ptr noundef %5, i64 noundef %6) #29
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
  %57 = call i32 @HUF_validateCTable(ptr noundef nonnull %1, ptr noundef %5, i32 noundef %56) #29
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %36, %53 ], [ %59, %55 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %2, i8 0, i64 2056, i1 false)
  %62 = load i32, ptr %9, align 4, !tbaa !49
  %63 = call i32 @HUF_optimalTableLog(i32 noundef 11, i64 noundef %16, i32 noundef %62, ptr noundef nonnull %38, i64 noundef %39, ptr noundef nonnull %2, ptr noundef %5, i32 noundef range(i32 0, 3) %20) #29
  %64 = load i32, ptr %9, align 4, !tbaa !49
  %65 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %2, ptr noundef %5, i32 noundef %64, i32 noundef %63, ptr noundef nonnull %38, i64 noundef %39) #29
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = trunc i64 %65 to i32
  %69 = load i32, ptr %9, align 4, !tbaa !49
  %70 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %69) #29
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %72 = load i32, ptr %9, align 4, !tbaa !49
  %73 = call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %71, i64 noundef 128, ptr noundef nonnull %2, i32 noundef %72, i32 noundef %68, ptr noundef nonnull %38, i64 noundef %39) #29
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %9, align 4, !tbaa !49
  %77 = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %76) #29
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

90:                                               ; preds = %89, %85, %49, %47, %35, %29, %23
  %91 = phi i32 [ 0, %89 ], [ 3, %85 ], [ 0, %23 ], [ 0, %29 ], [ 0, %35 ], [ 1, %47 ], [ 0, %49 ]
  store i32 %91, ptr %4, align 8, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %92, align 8, !tbaa !221
  br label %100

93:                                               ; preds = %60, %44
  %94 = phi i64 [ %45, %44 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %94, ptr %95, align 8, !tbaa !221
  br label %142

96:                                               ; preds = %86
  store i32 2, ptr %4, align 8, !tbaa !220
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 2056
  store i32 1, ptr %97, align 8, !tbaa !219
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %73, ptr %98, align 8, !tbaa !221
  %99 = icmp ult i64 %73, -119
  br i1 %99, label %100, label %142

100:                                              ; preds = %96, %90
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull readonly %0, i64 noundef %116, ptr noundef nonnull %112, ptr noundef nonnull %111, ptr noundef nonnull %119, ptr noundef nonnull %120, i32 noundef %121, ptr noundef %5, ptr noundef nonnull %118, i64 noundef %117)
  %122 = load <2 x i32>, ptr %8, align 8, !tbaa !49
  %123 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %124 = load i32, ptr %123, align 8, !tbaa !49
  %125 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %126 = load i64, ptr %125, align 8, !tbaa !114
  %127 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %128 = load i64, ptr %127, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
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

137:                                              ; preds = %130, %110
  %138 = phi i64 [ %126, %110 ], [ %132, %130 ]
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i64 %138, ptr %139, align 8, !tbaa !230
  %140 = icmp ult i64 %138, -119
  %141 = select i1 %140, i64 0, i64 %138
  br label %142

142:                                              ; preds = %137, %96, %93
  %143 = phi i64 [ %73, %96 ], [ %141, %137 ], [ %94, %93 ]
  ret i64 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 -72, 4294967304) i64 @ZSTD_writeSkippableFrame(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
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

17:                                               ; preds = %12, %10, %8, %5
  %18 = phi i64 [ %6, %12 ], [ -70, %5 ], [ -72, %8 ], [ -42, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i64 -70, 4) i64 @ZSTD_writeLastEmptyBlock(ptr noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp ult i64 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1, !tbaa !231
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %5, align 1, !tbaa !196
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ 3, %4 ], [ -70, %2 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_referenceExternalSequences(ptr noundef writeonly captures(none) initializes((3184, 3224)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
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
define dso_local i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
  %8 = alloca %struct.seqStoreSplits, align 8
  %9 = alloca %struct.repcodes_s, align 4
  %10 = alloca %struct.repcodes_s, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %12 = load i32, ptr %0, align 8, !tbaa !170
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %.loopexit52, label %14

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
  br i1 %26, label %27, label %.loopexit52

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
  br i1 %34, label %.loopexit52, label %35

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

84:                                               ; preds = %77, %65
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
  br label %683

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
  br i1 %152, label %.loopexit53, label %153, !prof !144, !nosanitize !143

.loopexit53:                                      ; preds = %660, %141
  tail call void @llvm.ubsantrap(i8 21) #32, !nosanitize !143
  unreachable, !nosanitize !143

153:                                              ; preds = %141
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %155 = load i32, ptr %154, align 4, !tbaa !245
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %159 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %158, ptr noundef captures(none) %3, i64 noundef range(i64 1, 0) %4) #29
  br label %160

160:                                              ; preds = %157, %153
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %163 = icmp ult i64 %143, 131072
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 3268
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %173 = getelementptr i8, ptr %0, i64 296
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %180 = getelementptr i8, ptr %0, i64 380
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 4008
  %184 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 4084
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 936
  br label %193

193:                                              ; preds = %669, %160
  %194 = phi { i64, i1 } [ %151, %160 ], [ %666, %669 ]
  %195 = phi i64 [ %32, %160 ], [ %672, %669 ]
  %196 = phi i64 [ %4, %160 ], [ %670, %669 ]
  %197 = phi ptr [ %3, %160 ], [ %230, %669 ]
  %198 = phi ptr [ %33, %160 ], [ %671, %669 ]
  %199 = extractvalue { i64, i1 } %194, 0
  %200 = load i32, ptr %161, align 8, !tbaa !246
  %201 = load i32, ptr %162, align 4, !tbaa !175
  %202 = icmp ult i64 %196, 131072
  %203 = or i1 %163, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %196, i64 %143)
  br label %224

206:                                              ; preds = %193
  %207 = icmp slt i64 %199, 3
  br i1 %207, label %224, label %208

208:                                              ; preds = %206
  switch i32 %200, label %213 [
    i32 1, label %224
    i32 0, label %209
  ]

209:                                              ; preds = %208
  %210 = zext i32 %201 to i64
  %211 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_optimalBlockSize.splitLevels, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !49
  br label %219

213:                                              ; preds = %208
  %214 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %200, i32 -2)
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !143
  br i1 %215, label %216, label %217, !prof !144, !nosanitize !143

216:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 21) #32, !nosanitize !143
  unreachable, !nosanitize !143

217:                                              ; preds = %213
  %218 = extractvalue { i32, i1 } %214, 0, !nosanitize !143
  br label %219

219:                                              ; preds = %217, %209
  %220 = phi i32 [ %212, %209 ], [ %218, %217 ]
  %221 = load ptr, ptr %164, align 8, !tbaa !57
  %222 = load i64, ptr %165, align 8, !tbaa !58
  %223 = tail call i64 @ZSTD_splitBlock(ptr noundef %197, i64 noundef %143, i32 noundef %220, ptr noundef %221, i64 noundef %222) #29
  br label %224

224:                                              ; preds = %219, %208, %206, %204
  %225 = phi i64 [ %205, %204 ], [ %223, %219 ], [ 131072, %206 ], [ 131072, %208 ]
  %226 = icmp eq i64 %225, %196
  %227 = select i1 %226, i32 %6, i32 0
  %228 = icmp ult i64 %195, 6
  br i1 %228, label %.loopexit52, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds nuw i8, ptr %197, i64 %225
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %11, ptr noundef nonnull %166, ptr noundef nonnull %88, ptr noundef %197, ptr noundef %230)
  %231 = load ptr, ptr %169, align 8, !tbaa !240
  %232 = ptrtoint ptr %230 to i64
  %233 = ptrtoint ptr %231 to i64
  %234 = sub i64 %232, %233
  %235 = trunc i64 %234 to i32
  %236 = load i32, ptr %167, align 8, !tbaa !49
  %237 = add i32 %236, %146
  %238 = icmp ult i32 %237, %235
  br i1 %238, label %242, label %239

239:                                              ; preds = %229
  %240 = load i32, ptr %170, align 8, !tbaa !239
  %241 = icmp eq i32 %236, %240
  br i1 %241, label %243, label %242

242:                                              ; preds = %239, %229
  store i32 0, ptr %167, align 4, !tbaa !49
  store ptr null, ptr %168, align 8, !tbaa !247
  br label %243

243:                                              ; preds = %242, %239
  %244 = phi i32 [ %236, %239 ], [ 0, %242 ]
  %245 = ptrtoint ptr %197 to i64
  %246 = sub i64 %245, %233
  %247 = trunc i64 %246 to i32
  %248 = add i32 %244, %146
  %249 = icmp ult i32 %248, %247
  %250 = load i32, ptr %171, align 4, !tbaa !248
  br i1 %249, label %251, label %261

251:                                              ; preds = %243
  %252 = sub i32 %247, %146
  %253 = icmp ult i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 %252, ptr %171, align 4, !tbaa !238
  br label %255

255:                                              ; preds = %254, %251
  %256 = phi i32 [ %252, %254 ], [ %250, %251 ]
  %257 = load i32, ptr %170, align 8, !tbaa !239
  %258 = icmp ult i32 %257, %256
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store i32 %256, ptr %170, align 8, !tbaa !239
  br label %260

260:                                              ; preds = %259, %255
  store i32 0, ptr %167, align 4, !tbaa !49
  store ptr null, ptr %168, align 8, !tbaa !247
  br label %261

261:                                              ; preds = %260, %243
  %262 = phi i32 [ %250, %243 ], [ %256, %260 ]
  %263 = load i32, ptr %172, align 4, !tbaa !241
  %264 = icmp ult i32 %263, %262
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  store i32 %262, ptr %172, align 4, !tbaa !241
  br label %266

266:                                              ; preds = %265, %261
  %267 = load i64, ptr %173, align 8, !tbaa !101
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %344, label %269

269:                                              ; preds = %266
  %270 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %197, i64 noundef %225)
  %271 = icmp ult i64 %270, -119
  br i1 %271, label %272, label %.loopexit52

272:                                              ; preds = %269
  %273 = icmp eq i64 %270, 0
  br i1 %273, label %274, label %324

274:                                              ; preds = %272
  %275 = load i32, ptr %174, align 8, !tbaa !249
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %274
  %278 = load ptr, ptr %176, align 8, !tbaa !190
  %279 = load ptr, ptr %175, align 8, !tbaa !186
  %280 = ptrtoint ptr %278 to i64
  %281 = ptrtoint ptr %279 to i64
  %282 = sub i64 %280, %281
  %283 = load ptr, ptr %177, align 8, !tbaa !201
  %284 = load ptr, ptr %178, align 8, !tbaa !200
  %285 = ptrtoint ptr %283 to i64
  %286 = ptrtoint ptr %284 to i64
  %287 = sub i64 %285, %286
  %288 = icmp ugt i64 %282, 31
  %289 = icmp ugt i64 %287, 9
  %290 = select i1 %288, i1 true, i1 %289
  br i1 %290, label %305, label %291

291:                                              ; preds = %277
  %292 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %197, i64 noundef %225)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %305, label %294

294:                                              ; preds = %291
  %295 = load i8, ptr %197, align 1, !tbaa !196
  %296 = trunc i64 %225 to i32
  %297 = shl i32 %296, 3
  %298 = or disjoint i32 %297, %227
  %299 = trunc i32 %298 to i16
  %300 = or disjoint i16 %299, 2
  store i16 %300, ptr %198, align 1, !tbaa !231
  %301 = lshr i32 %297, 16
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds nuw i8, ptr %198, i64 2
  store i8 %302, ptr %303, align 1, !tbaa !196
  %304 = getelementptr inbounds nuw i8, ptr %198, i64 3
  store i8 %295, ptr %304, align 1, !tbaa !196
  br label %337

305:                                              ; preds = %291, %277, %274
  %306 = tail call i64 @ZSTD_compressSuperBlock(ptr noundef nonnull %0, ptr noundef %198, i64 noundef range(i64 6, 0) %195, ptr noundef %197, i64 noundef %225, i32 noundef range(i32 0, 2) %227) #29
  %307 = icmp eq i64 %306, -70
  br i1 %307, label %324, label %308

308:                                              ; preds = %305
  %309 = icmp ult i64 %306, -119
  br i1 %309, label %310, label %.loopexit52

310:                                              ; preds = %308
  %311 = load i32, ptr %162, align 4, !tbaa !175
  %312 = tail call i32 @llvm.umax.i32(i32 %311, i32 7)
  %313 = add i32 %312, -1
  %314 = zext nneg i32 %313 to i64
  %315 = lshr i64 %225, %314
  %316 = icmp ne i64 %306, 0
  %317 = add i64 %225, 1
  %318 = sub i64 %317, %315
  %319 = icmp ult i64 %306, %318
  %320 = select i1 %316, i1 %319, i1 false
  br i1 %320, label %321, label %324

321:                                              ; preds = %310
  %322 = load <2 x ptr>, ptr %179, align 8, !tbaa !48
  %323 = shufflevector <2 x ptr> %322, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %323, ptr %179, align 8, !tbaa !48
  br label %337

324:                                              ; preds = %310, %305, %272
  %325 = add i64 %225, 3
  %326 = icmp ugt i64 %325, %195
  br i1 %326, label %.loopexit52, label %327

327:                                              ; preds = %324
  %328 = trunc i64 %225 to i32
  %329 = shl i32 %328, 3
  %330 = or disjoint i32 %329, %227
  %331 = trunc i32 %330 to i16
  store i16 %331, ptr %198, align 1, !tbaa !231
  %332 = lshr i32 %329, 16
  %333 = trunc i32 %332 to i8
  %334 = getelementptr inbounds nuw i8, ptr %198, i64 2
  store i8 %333, ptr %334, align 1, !tbaa !196
  %335 = getelementptr inbounds nuw i8, ptr %198, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %335, ptr readonly align 1 %197, i64 %225, i1 false)
  %336 = icmp ult i64 %325, -119
  br i1 %336, label %337, label %.loopexit52

337:                                              ; preds = %327, %321, %294
  %338 = phi i64 [ %325, %327 ], [ %306, %321 ], [ 4, %294 ]
  %339 = load ptr, ptr %179, align 8, !tbaa !55
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 5604
  %341 = load i32, ptr %340, align 4, !tbaa !167
  %342 = icmp eq i32 %341, 2
  br i1 %342, label %343, label %660

343:                                              ; preds = %337
  store i32 1, ptr %340, align 4, !tbaa !167
  br label %660

344:                                              ; preds = %266
  %345 = load i32, ptr %180, align 4, !tbaa !77
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %625

347:                                              ; preds = %344
  %348 = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef nonnull %0, ptr noundef %197, i64 noundef %225)
  %349 = icmp ult i64 %348, -119
  br i1 %349, label %350, label %.loopexit52

350:                                              ; preds = %347
  %351 = icmp eq i64 %348, 1
  br i1 %351, label %352, label %373

352:                                              ; preds = %350
  %353 = load ptr, ptr %179, align 8, !tbaa !55
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 5604
  %355 = load i32, ptr %354, align 4, !tbaa !167
  %356 = icmp eq i32 %355, 2
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  store i32 1, ptr %354, align 4, !tbaa !167
  br label %358

358:                                              ; preds = %357, %352
  %359 = load i32, ptr %192, align 8, !tbaa !250
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %.loopexit52

361:                                              ; preds = %358
  %362 = add i64 %225, 3
  %363 = icmp ugt i64 %362, %195
  br i1 %363, label %.loopexit52, label %364

364:                                              ; preds = %361
  %365 = trunc i64 %225 to i32
  %366 = shl i32 %365, 3
  %367 = or disjoint i32 %366, %227
  %368 = trunc i32 %367 to i16
  store i16 %368, ptr %198, align 1, !tbaa !231
  %369 = lshr i32 %366, 16
  %370 = trunc i32 %369 to i8
  %371 = getelementptr inbounds nuw i8, ptr %198, i64 2
  store i8 %370, ptr %371, align 1, !tbaa !196
  %372 = getelementptr inbounds nuw i8, ptr %198, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %372, ptr readonly align 1 %197, i64 %225, i1 false)
  br label %622

373:                                              ; preds = %350
  %374 = load ptr, ptr %176, align 8, !tbaa !251
  %375 = load ptr, ptr %175, align 8, !tbaa !252
  %376 = ptrtoint ptr %374 to i64
  %377 = ptrtoint ptr %375 to i64
  %378 = sub i64 %376, %377
  %379 = lshr exact i64 %378, 3
  %380 = trunc i64 %379 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %181, ptr %8, align 8, !tbaa !253
  store i64 0, ptr %184, align 8, !tbaa !255
  %381 = icmp ult i32 %380, 5
  br i1 %381, label %387, label %382

382:                                              ; preds = %373
  %383 = and i64 %379, 4294967295
  call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %8, i64 noundef 0, i64 noundef %383, ptr noundef nonnull %0, ptr noundef nonnull %175)
  %384 = load ptr, ptr %8, align 8, !tbaa !253
  %385 = load i64, ptr %184, align 8, !tbaa !255
  %386 = getelementptr inbounds nuw [4 x i8], ptr %384, i64 %385
  store i32 %380, ptr %386, align 4, !tbaa !49
  br label %387

387:                                              ; preds = %382, %373
  %388 = phi i64 [ %385, %382 ], [ 0, %373 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %389 = load ptr, ptr %179, align 8, !tbaa !55
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %390, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %390, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %182, i8 0, i64 80, i1 false)
  %391 = icmp eq i64 %388, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  %393 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %175, ptr noundef %9, ptr noundef %10, ptr noundef %198, i64 noundef range(i64 6, 0) %195, ptr noundef %197, i64 noundef %225, i32 noundef range(i32 0, 2) %227, i32 noundef 0)
  br label %.loopexit

394:                                              ; preds = %387
  %395 = load i32, ptr %181, align 4, !tbaa !49
  %396 = zext i32 %395 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %183, ptr noundef nonnull readonly align 8 dereferenceable(80) %175, i64 80, i1 false), !tbaa.struct !256
  %397 = load i32, ptr %185, align 8, !tbaa !198
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %394
  %400 = load i32, ptr %186, align 4, !tbaa !199
  %401 = icmp ult i32 %395, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  store i32 0, ptr %187, align 8, !tbaa !198
  br label %403

403:                                              ; preds = %402, %399, %394
  %404 = load ptr, ptr %175, align 8, !tbaa !186
  store ptr %404, ptr %183, align 8, !tbaa !186
  %405 = shl nuw nsw i64 %396, 3
  %406 = getelementptr inbounds nuw i8, ptr %404, i64 %405
  store ptr %406, ptr %188, align 8, !tbaa !190
  %407 = load ptr, ptr %176, align 8, !tbaa !190
  %408 = ptrtoint ptr %407 to i64
  %409 = ptrtoint ptr %404 to i64
  %410 = sub i64 %408, %409
  %411 = ashr exact i64 %410, 3
  %412 = icmp eq i64 %411, %396
  br i1 %412, label %.preheader, label %413

413:                                              ; preds = %403
  %414 = icmp eq i32 %395, 0
  br i1 %414, label %467, label %415

415:                                              ; preds = %413
  %416 = load i32, ptr %189, align 4, !tbaa !199
  %417 = zext i32 %416 to i64
  %418 = and i64 %396, 1
  %419 = icmp eq i32 %395, 1
  br i1 %419, label %.loopexit51, label %420

420:                                              ; preds = %415
  %421 = and i64 %396, 4294967294
  br label %422

422:                                              ; preds = %448, %420
  %423 = phi i64 [ 0, %420 ], [ %449, %448 ]
  %424 = phi i64 [ 0, %420 ], [ %450, %448 ]
  %.split = getelementptr inbounds nuw [8 x i8], ptr %404, i64 %424
  %425 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %426 = load i16, ptr %425, align 4, !tbaa !231
  %427 = zext i16 %426 to i64
  %428 = add i64 %423, %427
  %429 = icmp eq i64 %424, %417
  br i1 %429, label %430, label %435

430:                                              ; preds = %422
  %431 = load i32, ptr %187, align 8, !tbaa !198
  %432 = icmp eq i32 %431, 1
  %433 = add i64 %428, 65536
  %434 = select i1 %432, i64 %433, i64 %428
  br label %435

435:                                              ; preds = %430, %422
  %436 = phi i64 [ %428, %422 ], [ %434, %430 ]
  %437 = or disjoint i64 %424, 1
  %.split43 = getelementptr inbounds nuw [8 x i8], ptr %404, i64 %437
  %438 = getelementptr inbounds nuw i8, ptr %.split43, i64 4
  %439 = load i16, ptr %438, align 4, !tbaa !231
  %440 = zext i16 %439 to i64
  %441 = add i64 %436, %440
  %442 = icmp eq i64 %437, %417
  br i1 %442, label %443, label %448

443:                                              ; preds = %435
  %444 = load i32, ptr %187, align 8, !tbaa !198
  %445 = icmp eq i32 %444, 1
  %446 = add i64 %441, 65536
  %447 = select i1 %445, i64 %446, i64 %441
  br label %448

448:                                              ; preds = %443, %435
  %449 = phi i64 [ %441, %435 ], [ %447, %443 ]
  %450 = add nuw i64 %424, 2
  %451 = icmp eq i64 %450, %421
  br i1 %451, label %.loopexit51, label %422, !llvm.loop !258

.loopexit51:                                      ; preds = %448, %415
  %452 = phi i64 [ poison, %415 ], [ %449, %448 ]
  %453 = phi i64 [ 0, %415 ], [ %449, %448 ]
  %454 = phi i64 [ 0, %415 ], [ %421, %448 ]
  %455 = icmp eq i64 %418, 0
  br i1 %455, label %467, label %456

456:                                              ; preds = %.loopexit51
  %.split44 = getelementptr inbounds nuw [8 x i8], ptr %404, i64 %454
  %457 = getelementptr inbounds nuw i8, ptr %.split44, i64 4
  %458 = load i16, ptr %457, align 4, !tbaa !231
  %459 = zext i16 %458 to i64
  %460 = add i64 %453, %459
  %461 = icmp eq i64 %454, %417
  br i1 %461, label %462, label %467

462:                                              ; preds = %456
  %463 = load i32, ptr %187, align 8, !tbaa !198
  %464 = icmp eq i32 %463, 1
  %465 = add i64 %460, 65536
  %466 = select i1 %464, i64 %465, i64 %460
  br label %467

467:                                              ; preds = %462, %456, %.loopexit51, %413
  %468 = phi i64 [ 0, %413 ], [ %452, %.loopexit51 ], [ %460, %456 ], [ %466, %462 ]
  %469 = load ptr, ptr %190, align 8, !tbaa !200
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 %468
  store ptr %470, ptr %191, align 8, !tbaa !201
  br label %.preheader

.preheader:                                       ; preds = %467, %403
  br label %471

471:                                              ; preds = %.preheader, %611
  %472 = phi i64 [ %614, %611 ], [ %195, %.preheader ]
  %473 = phi i64 [ %615, %611 ], [ 0, %.preheader ]
  %474 = phi ptr [ %612, %611 ], [ %197, %.preheader ]
  %475 = phi ptr [ %613, %611 ], [ %198, %.preheader ]
  %476 = phi i64 [ %616, %611 ], [ 0, %.preheader ]
  %477 = phi i64 [ %596, %611 ], [ 0, %.preheader ]
  %478 = icmp eq i64 %476, %388
  %479 = load ptr, ptr %188, align 8, !tbaa !190
  %480 = load ptr, ptr %183, align 8, !tbaa !186
  %481 = icmp eq ptr %479, %480
  br i1 %481, label %594, label %482

482:                                              ; preds = %471
  %483 = ptrtoint ptr %479 to i64
  %484 = ptrtoint ptr %480 to i64
  %485 = sub i64 %483, %484
  %486 = ashr exact i64 %485, 3
  %487 = load i32, ptr %189, align 4, !tbaa !199
  %488 = zext i32 %487 to i64
  %489 = icmp eq i64 %485, 8
  br i1 %489, label %.thread, label %490

490:                                              ; preds = %482
  %491 = and i64 %486, -2
  br label %492

492:                                              ; preds = %518, %490
  %493 = phi i64 [ 0, %490 ], [ %519, %518 ]
  %494 = phi i64 [ 0, %490 ], [ %520, %518 ]
  %.split45 = getelementptr inbounds nuw [8 x i8], ptr %480, i64 %494
  %495 = getelementptr inbounds nuw i8, ptr %.split45, i64 4
  %496 = load i16, ptr %495, align 4, !tbaa !231
  %497 = zext i16 %496 to i64
  %498 = add i64 %493, %497
  %499 = icmp eq i64 %494, %488
  br i1 %499, label %500, label %505

500:                                              ; preds = %492
  %501 = load i32, ptr %187, align 8, !tbaa !198
  %502 = icmp eq i32 %501, 1
  %503 = add i64 %498, 65536
  %504 = select i1 %502, i64 %503, i64 %498
  br label %505

505:                                              ; preds = %500, %492
  %506 = phi i64 [ %498, %492 ], [ %504, %500 ]
  %507 = or disjoint i64 %494, 1
  %.split46 = getelementptr inbounds nuw [8 x i8], ptr %480, i64 %507
  %508 = getelementptr inbounds nuw i8, ptr %.split46, i64 4
  %509 = load i16, ptr %508, align 4, !tbaa !231
  %510 = zext i16 %509 to i64
  %511 = add i64 %506, %510
  %512 = icmp eq i64 %507, %488
  br i1 %512, label %513, label %518

513:                                              ; preds = %505
  %514 = load i32, ptr %187, align 8, !tbaa !198
  %515 = icmp eq i32 %514, 1
  %516 = add i64 %511, 65536
  %517 = select i1 %515, i64 %516, i64 %511
  br label %518

518:                                              ; preds = %513, %505
  %519 = phi i64 [ %511, %505 ], [ %517, %513 ]
  %520 = add i64 %494, 2
  %521 = icmp eq i64 %520, %491
  br i1 %521, label %522, label %492, !llvm.loop !258

522:                                              ; preds = %518
  %523 = and i64 %485, 8
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %537, label %.thread

.thread:                                          ; preds = %482, %522
  %525 = phi i64 [ %491, %522 ], [ 0, %482 ]
  %526 = phi i64 [ %519, %522 ], [ 0, %482 ]
  %.split47 = getelementptr inbounds nuw [8 x i8], ptr %480, i64 %525
  %527 = getelementptr inbounds nuw i8, ptr %.split47, i64 4
  %528 = load i16, ptr %527, align 4, !tbaa !231
  %529 = zext i16 %528 to i64
  %530 = add i64 %526, %529
  %531 = icmp eq i64 %525, %488
  br i1 %531, label %532, label %537

532:                                              ; preds = %.thread
  %533 = load i32, ptr %187, align 8, !tbaa !198
  %534 = icmp eq i32 %533, 1
  %535 = add i64 %530, 65536
  %536 = select i1 %534, i64 %535, i64 %530
  br label %537

537:                                              ; preds = %532, %.thread, %522
  %538 = phi i1 [ true, %522 ], [ false, %.thread ], [ false, %532 ]
  %539 = phi i64 [ %519, %522 ], [ %530, %.thread ], [ %536, %532 ]
  br i1 %489, label %576, label %540

540:                                              ; preds = %537
  %541 = and i64 %486, -2
  br label %542

542:                                              ; preds = %570, %540
  %543 = phi i64 [ 0, %540 ], [ %571, %570 ]
  %544 = phi i64 [ 0, %540 ], [ %572, %570 ]
  %.split48 = getelementptr inbounds nuw [8 x i8], ptr %480, i64 %544
  %545 = getelementptr inbounds nuw i8, ptr %.split48, i64 6
  %546 = load i16, ptr %545, align 2, !tbaa !231
  %547 = zext i16 %546 to i64
  %548 = add i64 %543, 3
  %549 = add i64 %548, %547
  %550 = icmp eq i64 %544, %488
  br i1 %550, label %551, label %556

551:                                              ; preds = %542
  %552 = load i32, ptr %187, align 8, !tbaa !198
  %553 = icmp eq i32 %552, 2
  %554 = add i64 %549, 65536
  %555 = select i1 %553, i64 %554, i64 %549
  br label %556

556:                                              ; preds = %551, %542
  %557 = phi i64 [ %549, %542 ], [ %555, %551 ]
  %558 = or disjoint i64 %544, 1
  %.split49 = getelementptr inbounds nuw [8 x i8], ptr %480, i64 %558
  %559 = getelementptr inbounds nuw i8, ptr %.split49, i64 6
  %560 = load i16, ptr %559, align 2, !tbaa !231
  %561 = zext i16 %560 to i64
  %562 = add i64 %557, 3
  %563 = add i64 %562, %561
  %564 = icmp eq i64 %558, %488
  br i1 %564, label %565, label %570

565:                                              ; preds = %556
  %566 = load i32, ptr %187, align 8, !tbaa !198
  %567 = icmp eq i32 %566, 2
  %568 = add i64 %563, 65536
  %569 = select i1 %567, i64 %568, i64 %563
  br label %570

570:                                              ; preds = %565, %556
  %571 = phi i64 [ %563, %556 ], [ %569, %565 ]
  %572 = add i64 %544, 2
  %573 = icmp eq i64 %572, %541
  br i1 %573, label %574, label %542, !llvm.loop !259

574:                                              ; preds = %570
  %575 = add i64 %571, 3
  br label %576

576:                                              ; preds = %574, %537
  %577 = phi i64 [ poison, %537 ], [ %571, %574 ]
  %578 = phi i64 [ 3, %537 ], [ %575, %574 ]
  %579 = phi i64 [ 0, %537 ], [ %541, %574 ]
  br i1 %538, label %591, label %580

580:                                              ; preds = %576
  %.split50 = getelementptr inbounds nuw [8 x i8], ptr %480, i64 %579
  %581 = getelementptr inbounds nuw i8, ptr %.split50, i64 6
  %582 = load i16, ptr %581, align 2, !tbaa !231
  %583 = zext i16 %582 to i64
  %584 = add i64 %578, %583
  %585 = icmp eq i64 %579, %488
  br i1 %585, label %586, label %591

586:                                              ; preds = %580
  %587 = load i32, ptr %187, align 8, !tbaa !198
  %588 = icmp eq i32 %587, 2
  %589 = add i64 %584, 65536
  %590 = select i1 %588, i64 %589, i64 %584
  br label %591

591:                                              ; preds = %586, %580, %576
  %592 = phi i64 [ %577, %576 ], [ %584, %580 ], [ %590, %586 ]
  %593 = add i64 %592, %539
  br label %594

594:                                              ; preds = %591, %471
  %595 = phi i64 [ 0, %471 ], [ %593, %591 ]
  %596 = add i64 %595, %477
  br i1 %478, label %597, label %599

597:                                              ; preds = %594
  %598 = sub i64 %225, %477
  br label %606

599:                                              ; preds = %594
  %600 = getelementptr inbounds nuw [4 x i8], ptr %181, i64 %476
  %601 = load i32, ptr %600, align 4, !tbaa !49
  %602 = zext i32 %601 to i64
  %603 = getelementptr i8, ptr %600, i64 4
  %604 = load i32, ptr %603, align 4, !tbaa !49
  %605 = zext i32 %604 to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %182, ptr noundef nonnull %175, i64 noundef %602, i64 noundef %605)
  br label %606

606:                                              ; preds = %599, %597
  %607 = phi i32 [ %227, %597 ], [ 0, %599 ]
  %608 = phi i64 [ %598, %597 ], [ %595, %599 ]
  %609 = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %183, ptr noundef %9, ptr noundef %10, ptr noundef %475, i64 noundef %472, ptr noundef %474, i64 noundef %608, i32 noundef %607, i32 noundef 1)
  %610 = icmp ult i64 %609, -119
  br i1 %610, label %611, label %.loopexit

611:                                              ; preds = %606
  %612 = getelementptr inbounds nuw i8, ptr %474, i64 %608
  %613 = getelementptr inbounds nuw i8, ptr %475, i64 %609
  %614 = sub i64 %472, %609
  %615 = add i64 %609, %473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %183, ptr noundef nonnull align 8 dereferenceable(80) %182, i64 80, i1 false), !tbaa.struct !256
  %616 = add i64 %476, 1
  %617 = icmp ugt i64 %616, %388
  br i1 %617, label %618, label %471, !llvm.loop !260

618:                                              ; preds = %611
  %619 = load ptr, ptr %179, align 8, !tbaa !55
  %620 = getelementptr inbounds nuw i8, ptr %619, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %620, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %606, %618, %392
  %621 = phi i64 [ %393, %392 ], [ %615, %618 ], [ %609, %606 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %622

622:                                              ; preds = %.loopexit, %364
  %623 = phi i64 [ %621, %.loopexit ], [ %362, %364 ]
  %624 = icmp ult i64 %623, -119
  br i1 %624, label %660, label %.loopexit52

625:                                              ; preds = %344
  %626 = getelementptr inbounds nuw i8, ptr %198, i64 3
  %627 = add i64 %195, -3
  %628 = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %626, i64 noundef %627, ptr noundef %197, i64 noundef %225, i32 noundef 1)
  %629 = icmp ult i64 %628, -119
  br i1 %629, label %630, label %.loopexit52

630:                                              ; preds = %625
  switch i64 %628, label %648 [
    i64 0, label %631
    i64 1, label %643
  ]

631:                                              ; preds = %630
  %632 = add i64 %225, 3
  %633 = icmp ugt i64 %632, %195
  br i1 %633, label %.loopexit52, label %634

634:                                              ; preds = %631
  %635 = trunc i64 %225 to i32
  %636 = shl i32 %635, 3
  %637 = or disjoint i32 %636, %227
  %638 = trunc i32 %637 to i16
  store i16 %638, ptr %198, align 1, !tbaa !231
  %639 = lshr i32 %636, 16
  %640 = trunc i32 %639 to i8
  %641 = getelementptr inbounds nuw i8, ptr %198, i64 2
  store i8 %640, ptr %641, align 1, !tbaa !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %626, ptr readonly align 1 %197, i64 %225, i1 false)
  %642 = icmp ult i64 %632, -119
  br i1 %642, label %660, label %.loopexit52

643:                                              ; preds = %630
  %644 = trunc i64 %225 to i32
  %645 = shl i32 %644, 3
  %646 = or disjoint i32 %227, %645
  %647 = or disjoint i32 %646, 2
  br label %653

648:                                              ; preds = %630
  %649 = trunc i64 %628 to i32
  %650 = shl i32 %649, 3
  %651 = or disjoint i32 %650, %227
  %652 = or disjoint i32 %651, 4
  br label %653

653:                                              ; preds = %648, %643
  %654 = phi i32 [ %647, %643 ], [ %652, %648 ]
  %655 = trunc i32 %654 to i16
  store i16 %655, ptr %198, align 1, !tbaa !231
  %656 = lshr i32 %654, 16
  %657 = trunc i32 %656 to i8
  %658 = getelementptr inbounds nuw i8, ptr %198, i64 2
  store i8 %657, ptr %658, align 1, !tbaa !196
  %659 = add nuw i64 %628, 3
  br label %660

660:                                              ; preds = %653, %634, %622, %343, %337
  %661 = phi i64 [ %623, %622 ], [ %632, %634 ], [ %659, %653 ], [ %338, %337 ], [ %338, %343 ]
  %662 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %225, i64 %661), !nosanitize !143
  %663 = extractvalue { i64, i1 } %662, 1, !nosanitize !143
  br i1 %663, label %.loopexit53, label %664, !prof !144, !nosanitize !143

664:                                              ; preds = %660
  %665 = extractvalue { i64, i1 } %662, 0, !nosanitize !143
  %666 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %665), !nosanitize !143
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !143
  br i1 %667, label %668, label %669, !prof !144, !nosanitize !143

668:                                              ; preds = %664
  tail call void @llvm.ubsantrap(i8 0) #32, !nosanitize !143
  unreachable, !nosanitize !143

669:                                              ; preds = %664
  %670 = sub i64 %196, %225
  %671 = getelementptr inbounds nuw i8, ptr %198, i64 %661
  %672 = sub i64 %195, %661
  store i32 0, ptr %174, align 8, !tbaa !249
  %673 = icmp eq i64 %670, 0
  br i1 %673, label %674, label %193, !llvm.loop !261

674:                                              ; preds = %669
  %675 = icmp ne i32 %6, 0
  %676 = icmp ugt ptr %671, %33
  %677 = select i1 %675, i1 %676, i1 false
  br i1 %677, label %678, label %679

678:                                              ; preds = %674
  store i32 3, ptr %0, align 8, !tbaa !170
  br label %679

679:                                              ; preds = %678, %674
  %680 = ptrtoint ptr %671 to i64
  %681 = ptrtoint ptr %33 to i64
  %682 = sub i64 %680, %681
  br label %683

683:                                              ; preds = %679, %138
  %684 = phi i64 [ %140, %138 ], [ %682, %679 ]
  %685 = icmp ult i64 %684, -119
  br i1 %685, label %686, label %.loopexit52

686:                                              ; preds = %683
  %687 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %688 = load i64, ptr %687, align 8, !tbaa !157
  %689 = add i64 %688, %4
  store i64 %689, ptr %687, align 8, !tbaa !157
  %690 = add nuw i64 %684, %31
  %691 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %692 = load i64, ptr %691, align 8, !tbaa !161
  %693 = add i64 %692, %690
  store i64 %693, ptr %691, align 8, !tbaa !161
  %694 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %695 = load i64, ptr %694, align 8, !tbaa !115
  %696 = icmp ne i64 %695, 0
  %697 = add i64 %689, 1
  %698 = icmp ugt i64 %697, %695
  %699 = select i1 %696, i1 %698, i1 false
  %700 = select i1 %699, i64 -72, i64 %690
  br label %.loopexit52

.loopexit52:                                      ; preds = %634, %631, %625, %622, %361, %358, %347, %327, %324, %308, %269, %224, %686, %683, %30, %18, %7
  %701 = phi i64 [ %25, %18 ], [ -60, %7 ], [ %31, %30 ], [ %684, %683 ], [ %700, %686 ], [ %628, %625 ], [ %632, %634 ], [ %623, %622 ], [ -70, %224 ], [ -70, %631 ], [ %306, %308 ], [ -70, %324 ], [ %270, %269 ], [ %325, %327 ], [ -70, %361 ], [ %348, %347 ], [ -106, %358 ]
  ret i64 %701
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
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
define dso_local i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
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

16:                                               ; preds = %14, %5
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
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

16:                                               ; preds = %14, %5
  %17 = phi i64 [ %15, %14 ], [ -72, %5 ]
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 31, ptr %6, align 4, !tbaa !49
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %18, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 255, ptr %7, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 1, ptr %8, align 4, !tbaa !49
  %19 = add i64 %3, -8
  %20 = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %17, i64 noundef %19, ptr noundef nonnull %8) #29
  %21 = load i32, ptr %8, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 255
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 2, ptr %18, align 8, !tbaa !166
  br label %27

27:                                               ; preds = %26, %4
  %28 = icmp ult i64 %20, -119
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %20
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %28, label %30, label %197

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %31 = sub i64 %19, %20
  %32 = call i64 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %29, i64 noundef %31) #29
  %33 = icmp ult i64 %32, -119
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, ptr %9, align 4, !tbaa !49
  %36 = icmp ugt i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %197

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %40 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %39, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %35, ptr noundef %1, i64 noundef 8704) #29
  %41 = icmp ult i64 %40, -119
  %42 = getelementptr inbounds nuw i8, ptr %29, i64 %32
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %41, label %43, label %197

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i32 52, ptr %11, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %44 = add i64 %20, %32
  %45 = sub i64 %19, %44
  %46 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %42, i64 noundef %45) #29
  %47 = icmp ult i64 %46, -119
  br i1 %47, label %48, label %84

48:                                               ; preds = %43
  %49 = load i32, ptr %12, align 4, !tbaa !49
  %50 = icmp ugt i32 %49, 9
  br i1 %50, label %84, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %53 = load i32, ptr %11, align 4, !tbaa !49
  %54 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %52, ptr noundef nonnull %10, i32 noundef %53, i32 noundef %49, ptr noundef %1, i64 noundef 8704) #29
  %55 = icmp ult i64 %54, -119
  br i1 %55, label %56, label %84

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
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 35, ptr %14, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %80 = add i64 %44, %46
  %81 = sub i64 %19, %80
  %82 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %79, i64 noundef %81) #29
  %83 = icmp ult i64 %82, -119
  br i1 %83, label %85, label %115

84:                                               ; preds = %51, %48, %43
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %197

85:                                               ; preds = %56
  %86 = load i32, ptr %15, align 4, !tbaa !49
  %87 = icmp ugt i32 %86, 9
  br i1 %87, label %115, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %90 = load i32, ptr %14, align 4, !tbaa !49
  %91 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %89, ptr noundef nonnull %13, i32 noundef %90, i32 noundef %86, ptr noundef %1, i64 noundef 8704) #29
  %92 = icmp ult i64 %91, -119
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load i32, ptr %14, align 4, !tbaa !49
  %95 = icmp ult i32 %94, 35
  %96 = load <32 x i16>, ptr %13, align 16
  %97 = freeze <32 x i16> %96
  %98 = icmp eq <32 x i16> %97, zeroinitializer
  %99 = getelementptr inbounds nuw i8, ptr %13, i64 64
  %100 = load <4 x i16>, ptr %99, align 16
  %101 = freeze <4 x i16> %100
  %102 = icmp eq <4 x i16> %101, zeroinitializer
  %103 = shufflevector <32 x i1> %98, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %104 = or <4 x i1> %103, %102
  %105 = shufflevector <4 x i1> %104, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %106 = shufflevector <32 x i1> %105, <32 x i1> %98, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %107 = bitcast <32 x i1> %106 to i32
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %95, i1 true, i1 %108
  %110 = select i1 %109, i32 1, i32 2
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 %110, ptr %111, align 4, !tbaa !169
  %112 = getelementptr inbounds nuw i8, ptr %79, i64 %82
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 12
  %114 = icmp ugt ptr %113, %16
  br i1 %114, label %197, label %116

115:                                              ; preds = %88, %85, %56
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %197

116:                                              ; preds = %93
  %117 = load i32, ptr %112, align 1, !tbaa !49
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 %117, ptr %118, align 8, !tbaa !49
  %119 = getelementptr inbounds nuw i8, ptr %112, i64 4
  %120 = load i32, ptr %119, align 1, !tbaa !49
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 5620
  store i32 %120, ptr %121, align 4, !tbaa !49
  %122 = getelementptr inbounds nuw i8, ptr %112, i64 8
  %123 = load i32, ptr %122, align 1, !tbaa !49
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store i32 %123, ptr %124, align 8, !tbaa !49
  %125 = add nuw i64 %20, 20
  %126 = add i64 %125, %32
  %127 = add i64 %126, %46
  %128 = add i64 %127, %82
  %129 = sub nsw i64 %3, %128
  %130 = icmp ult i64 %129, 4294836224
  %131 = trunc nuw i64 %129 to i32
  %132 = add nuw i32 %131, 131072
  %133 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %132, i1 true)
  %134 = xor i32 %133, 31
  %135 = select i1 %130, i32 %134, i32 31
  %136 = load i32, ptr %6, align 4, !tbaa !49
  %137 = icmp ult i32 %136, %135
  br i1 %137, label %.critedge, label %138

138:                                              ; preds = %116
  %139 = add nuw nsw i32 %135, 1
  %140 = zext nneg i32 %139 to i64
  %141 = and i64 %140, 56
  %142 = load <8 x i16>, ptr %5, align 16, !tbaa !231
  %143 = freeze <8 x i16> %142
  %144 = icmp eq <8 x i16> %143, zeroinitializer
  %145 = bitcast <8 x i1> %144 to i8
  %.not = icmp eq i8 %145, 0
  br i1 %.not, label %146, label %.critedge, !llvm.loop !262

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %148 = load <8 x i16>, ptr %147, align 16, !tbaa !231
  %149 = freeze <8 x i16> %148
  %150 = icmp eq <8 x i16> %149, zeroinitializer
  %151 = bitcast <8 x i1> %150 to i8
  %152 = icmp ne i8 %151, 0
  %153 = icmp eq i64 %141, 16
  %154 = or i1 %153, %152
  br i1 %154, label %170, label %155, !llvm.loop !262

155:                                              ; preds = %146
  %156 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %157 = load <8 x i16>, ptr %156, align 16, !tbaa !231
  %158 = freeze <8 x i16> %157
  %159 = icmp eq <8 x i16> %158, zeroinitializer
  %160 = bitcast <8 x i1> %159 to i8
  %161 = icmp ne i8 %160, 0
  %162 = icmp eq i64 %141, 24
  %163 = or i1 %162, %161
  br i1 %163, label %170, label %164, !llvm.loop !262

164:                                              ; preds = %155
  %165 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %166 = load <8 x i16>, ptr %165, align 16, !tbaa !231
  %167 = freeze <8 x i16> %166
  %168 = icmp eq <8 x i16> %167, zeroinitializer
  %169 = bitcast <8 x i1> %168 to i8
  %.not11 = icmp eq i8 %169, 0
  br i1 %.not11, label %172, label %.critedge

170:                                              ; preds = %155, %146
  %171 = phi i1 [ %161, %155 ], [ %152, %146 ]
  br i1 %171, label %.critedge, label %172

172:                                              ; preds = %164, %170
  %173 = icmp eq i64 %141, %140
  br i1 %173, label %.critedge, label %.preheader

174:                                              ; preds = %.preheader
  %175 = add nuw nsw i64 %177, 1
  %176 = icmp eq i64 %175, %140
  br i1 %176, label %.critedge, label %.preheader, !llvm.loop !265

.preheader:                                       ; preds = %172, %174
  %177 = phi i64 [ %175, %174 ], [ %141, %172 ]
  %178 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !231
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %.critedge, label %174

.critedge:                                        ; preds = %.preheader, %174, %164, %138, %172, %170, %116
  %181 = phi i32 [ 1, %116 ], [ 2, %172 ], [ 1, %170 ], [ 1, %138 ], [ 1, %164 ], [ 1, %.preheader ], [ 2, %174 ]
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %181, ptr %182, align 4, !tbaa !167
  %183 = icmp eq i32 %117, 0
  %184 = zext i32 %117 to i64
  %185 = icmp ult i64 %129, %184
  %186 = or i1 %183, %185
  br i1 %186, label %197, label %187

187:                                              ; preds = %.critedge
  %188 = icmp eq i32 %120, 0
  %189 = zext i32 %120 to i64
  %190 = icmp ult i64 %129, %189
  %191 = or i1 %188, %190
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = icmp eq i32 %123, 0
  %194 = zext i32 %123 to i64
  %195 = icmp ult i64 %129, %194
  %196 = or i1 %193, %195
  %spec.select = select i1 %196, i64 -30, i64 %128
  br label %197

197:                                              ; preds = %192, %187, %.critedge, %115, %93, %84, %38, %37, %27
  %198 = phi i64 [ -30, %.critedge ], [ -30, %38 ], [ -30, %27 ], [ -30, %93 ], [ -30, %37 ], [ -30, %84 ], [ -30, %115 ], [ %spec.select, %192 ], [ -30, %187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i64 %198
}

declare i64 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #1 {
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

32:                                               ; preds = %30, %16, %8
  %33 = phi i64 [ %31, %30 ], [ -42, %8 ], [ -42, %16 ]
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef readonly captures(none) %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #1 {
  %10 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %11 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %12 = icmp eq ptr %5, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !266
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ]
  %18 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #29
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i64 [ %20, %19 ], [ 0, %16 ]
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  store i64 %22, ptr %23, align 8, !tbaa !267
  br i1 %12, label %430, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !266
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %427, label %28

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
  br i1 %38, label %39, label %427

39:                                               ; preds = %35, %30, %28
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 68
  %41 = load i32, ptr %40, align 4, !tbaa !94
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %427, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 244
  %45 = load i32, ptr %44, align 4, !tbaa !269
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr i8, ptr %5, i64 384
  %48 = load i32, ptr %47, align 8, !tbaa !49
  br i1 %46, label %49, label %64

49:                                               ; preds = %43
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
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
  %75 = load i64, ptr %74, align 8
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
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %464

165:                                              ; preds = %60, %58, %56
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
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
  br i1 %174, label %175, label %426

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
  br label %280

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
  br i1 %224, label %280, label %225

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
  br i1 %240, label %.loopexit22, label %241

241:                                              ; preds = %238
  %242 = and i64 %230, -4
  br label %257

243:                                              ; preds = %225
  %244 = and i64 %230, -8
  br label %245

245:                                              ; preds = %245, %243
  %246 = phi i64 [ 0, %243 ], [ %255, %245 ]
  %247 = getelementptr inbounds nuw [4 x i8], ptr %226, i64 %246
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 16
  %249 = load <4 x i32>, ptr %247, align 4, !tbaa !49
  %250 = load <4 x i32>, ptr %248, align 4, !tbaa !49
  %251 = lshr <4 x i32> %249, splat (i32 8)
  %252 = lshr <4 x i32> %250, splat (i32 8)
  %253 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %246
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 16
  store <4 x i32> %251, ptr %253, align 4, !tbaa !49
  store <4 x i32> %252, ptr %254, align 4, !tbaa !49
  %255 = add nuw i64 %246, 8
  %256 = icmp eq i64 %255, %244
  br i1 %256, label %.loopexit21, label %245, !llvm.loop !281

257:                                              ; preds = %257, %241
  %258 = phi i64 [ 0, %241 ], [ %278, %257 ]
  %259 = getelementptr inbounds nuw [4 x i8], ptr %226, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !49
  %261 = lshr i32 %260, 8
  %262 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %258
  store i32 %261, ptr %262, align 4, !tbaa !49
  %263 = or disjoint i64 %258, 1
  %264 = getelementptr inbounds nuw [4 x i8], ptr %226, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !49
  %266 = lshr i32 %265, 8
  %267 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %263
  store i32 %266, ptr %267, align 4, !tbaa !49
  %268 = or disjoint i64 %258, 2
  %269 = getelementptr inbounds nuw [4 x i8], ptr %226, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !49
  %271 = lshr i32 %270, 8
  %272 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %268
  store i32 %271, ptr %272, align 4, !tbaa !49
  %273 = or disjoint i64 %258, 3
  %274 = getelementptr inbounds nuw [4 x i8], ptr %226, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !49
  %276 = lshr i32 %275, 8
  %277 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %273
  store i32 %276, ptr %277, align 4, !tbaa !49
  %278 = add nuw i64 %258, 4
  %279 = icmp eq i64 %278, %242
  br i1 %279, label %.loopexit22, label %257, !llvm.loop !282

280:                                              ; preds = %209, %198
  %281 = phi ptr [ %208, %198 ], [ %223, %209 ]
  %282 = phi ptr [ %206, %198 ], [ %221, %209 ]
  %283 = phi ptr [ %204, %198 ], [ %219, %209 ]
  %284 = phi ptr [ %203, %198 ], [ %218, %209 ]
  %285 = phi i64 [ %202, %198 ], [ %217, %209 ]
  %286 = phi i64 [ %201, %198 ], [ %216, %209 ]
  %287 = phi i64 [ 0, %198 ], [ %213, %209 ]
  %288 = shl i64 4, %286
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %282, ptr readonly align 4 %281, i64 %288, i1 false)
  br label %.loopexit21

.loopexit22:                                      ; preds = %257, %238
  %289 = phi i64 [ 0, %238 ], [ %242, %257 ]
  %290 = icmp eq i64 %239, 0
  br i1 %290, label %.loopexit21, label %.preheader20

.preheader20:                                     ; preds = %.loopexit22, %.preheader20
  %291 = phi i64 [ %297, %.preheader20 ], [ %289, %.loopexit22 ]
  %292 = phi i64 [ %298, %.preheader20 ], [ 0, %.loopexit22 ]
  %293 = getelementptr inbounds nuw [4 x i8], ptr %226, i64 %291
  %294 = load i32, ptr %293, align 4, !tbaa !49
  %295 = lshr i32 %294, 8
  %296 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %291
  store i32 %295, ptr %296, align 4, !tbaa !49
  %297 = add nuw nsw i64 %291, 1
  %298 = add nuw nsw i64 %292, 1
  %299 = icmp eq i64 %298, %239
  br i1 %299, label %.loopexit21, label %.preheader20, !llvm.loop !283

.loopexit21:                                      ; preds = %245, %.preheader20, %.loopexit22, %280
  %300 = phi ptr [ %283, %280 ], [ %228, %.preheader20 ], [ %228, %.loopexit22 ], [ %228, %245 ]
  %301 = phi ptr [ %284, %280 ], [ %229, %.preheader20 ], [ %229, %.loopexit22 ], [ %229, %245 ]
  %302 = phi i64 [ %285, %280 ], [ %230, %.preheader20 ], [ %230, %.loopexit22 ], [ %230, %245 ]
  %303 = phi i64 [ %287, %280 ], [ %231, %.preheader20 ], [ %231, %.loopexit22 ], [ %231, %245 ]
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %305 = load i32, ptr %304, align 4, !tbaa !175
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %.loopexit, label %307

307:                                              ; preds = %.loopexit21
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %309 = load i32, ptr %308, align 8, !tbaa !172
  %310 = add i32 %305, -3
  %311 = icmp ult i32 %310, 3
  %312 = icmp eq i32 %309, 1
  %313 = and i1 %311, %312
  br i1 %313, label %.loopexit, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %316 = load ptr, ptr %315, align 8, !tbaa !180
  %317 = ptrtoint ptr %316 to i64
  %318 = getelementptr inbounds nuw i8, ptr %5, i64 232
  %319 = load ptr, ptr %318, align 8, !tbaa !285
  %320 = ptrtoint ptr %319 to i64
  %321 = load i32, ptr %47, align 8, !tbaa !73
  %322 = add i32 %321, -3
  %323 = icmp ult i32 %322, -2
  br i1 %323, label %385, label %324

324:                                              ; preds = %314
  %325 = icmp eq i64 %303, 0
  br i1 %325, label %.loopexit, label %326

326:                                              ; preds = %324
  %327 = icmp ult i64 %303, 8
  %328 = sub i64 %317, %320
  %329 = icmp ult i64 %328, 32
  %330 = select i1 %327, i1 true, i1 %329
  br i1 %330, label %347, label %331

331:                                              ; preds = %326
  %332 = and i64 %303, -8
  br label %333

333:                                              ; preds = %333, %331
  %334 = phi i64 [ 0, %331 ], [ %343, %333 ]
  %335 = getelementptr inbounds nuw [4 x i8], ptr %319, i64 %334
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 16
  %337 = load <4 x i32>, ptr %335, align 4, !tbaa !49
  %338 = load <4 x i32>, ptr %336, align 4, !tbaa !49
  %339 = lshr <4 x i32> %337, splat (i32 8)
  %340 = lshr <4 x i32> %338, splat (i32 8)
  %341 = getelementptr inbounds nuw [4 x i8], ptr %316, i64 %334
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 16
  store <4 x i32> %339, ptr %341, align 4, !tbaa !49
  store <4 x i32> %340, ptr %342, align 4, !tbaa !49
  %343 = add nuw i64 %334, 8
  %344 = icmp eq i64 %343, %332
  br i1 %344, label %345, label %333, !llvm.loop !286

345:                                              ; preds = %333
  %346 = icmp eq i64 %303, %332
  br i1 %346, label %.loopexit, label %347

347:                                              ; preds = %345, %326
  %348 = phi i64 [ 0, %326 ], [ %332, %345 ]
  %349 = and i64 %303, 3
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %.loopexit19, label %.preheader18

.preheader18:                                     ; preds = %347, %.preheader18
  %351 = phi i64 [ %357, %.preheader18 ], [ %348, %347 ]
  %352 = phi i64 [ %358, %.preheader18 ], [ 0, %347 ]
  %353 = getelementptr inbounds nuw [4 x i8], ptr %319, i64 %351
  %354 = load i32, ptr %353, align 4, !tbaa !49
  %355 = lshr i32 %354, 8
  %356 = getelementptr inbounds nuw [4 x i8], ptr %316, i64 %351
  store i32 %355, ptr %356, align 4, !tbaa !49
  %357 = add nuw nsw i64 %351, 1
  %358 = add nuw nsw i64 %352, 1
  %359 = icmp eq i64 %358, %349
  br i1 %359, label %.loopexit19, label %.preheader18, !llvm.loop !287

.loopexit19:                                      ; preds = %.preheader18, %347
  %360 = phi i64 [ %348, %347 ], [ %357, %.preheader18 ]
  %361 = sub i64 %348, %303
  %362 = icmp ugt i64 %361, -4
  br i1 %362, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit19, %.preheader
  %363 = phi i64 [ %383, %.preheader ], [ %360, %.loopexit19 ]
  %364 = getelementptr inbounds nuw [4 x i8], ptr %319, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !49
  %366 = lshr i32 %365, 8
  %367 = getelementptr inbounds nuw [4 x i8], ptr %316, i64 %363
  store i32 %366, ptr %367, align 4, !tbaa !49
  %368 = add nuw i64 %363, 1
  %369 = getelementptr inbounds nuw [4 x i8], ptr %319, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !49
  %371 = lshr i32 %370, 8
  %372 = getelementptr inbounds nuw [4 x i8], ptr %316, i64 %368
  store i32 %371, ptr %372, align 4, !tbaa !49
  %373 = add nuw i64 %363, 2
  %374 = getelementptr inbounds nuw [4 x i8], ptr %319, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !49
  %376 = lshr i32 %375, 8
  %377 = getelementptr inbounds nuw [4 x i8], ptr %316, i64 %373
  store i32 %376, ptr %377, align 4, !tbaa !49
  %378 = add nuw i64 %363, 3
  %379 = getelementptr inbounds nuw [4 x i8], ptr %319, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !49
  %381 = lshr i32 %380, 8
  %382 = getelementptr inbounds nuw [4 x i8], ptr %316, i64 %378
  store i32 %381, ptr %382, align 4, !tbaa !49
  %383 = add nuw i64 %363, 4
  %384 = icmp eq i64 %383, %303
  br i1 %384, label %.loopexit, label %.preheader, !llvm.loop !288

385:                                              ; preds = %314
  %386 = shl i64 %303, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %316, ptr readonly align 4 %319, i64 %386, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %385, %.loopexit19, %345, %324, %307, %.loopexit21
  %387 = load i32, ptr %47, align 4, !tbaa !73
  %388 = load i32, ptr %170, align 8, !tbaa !270
  %389 = add i32 %387, -6
  %390 = icmp ult i32 %389, -3
  %391 = icmp ne i32 %388, 1
  %392 = or i1 %390, %391
  br i1 %392, label %401, label %393

393:                                              ; preds = %.loopexit
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %395 = load ptr, ptr %394, align 8, !tbaa !289
  %396 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %397 = load ptr, ptr %396, align 8, !tbaa !290
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %395, ptr noundef nonnull align 1 dereferenceable(1) %397, i64 %302, i1 false)
  %398 = getelementptr inbounds nuw i8, ptr %5, i64 200
  %399 = load i64, ptr %398, align 8, !tbaa !291
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 3336
  store i64 %399, ptr %400, align 8, !tbaa !292
  br label %401

401:                                              ; preds = %393, %.loopexit
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %403 = load i32, ptr %402, align 8, !tbaa !178
  %404 = icmp eq i32 %403, 0
  %405 = zext nneg i32 %403 to i64
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %407 = load ptr, ptr %406, align 8, !tbaa !181
  %408 = shl i64 4, %405
  %409 = select i1 %404, i64 0, i64 %408
  tail call void @llvm.memset.p0.i64(ptr align 4 %407, i8 0, i64 %409, i1 false)
  %410 = load ptr, ptr %178, align 8, !tbaa !54
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %412 = load ptr, ptr %411, align 8, !tbaa !53
  %413 = icmp ult ptr %410, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %401
  store ptr %412, ptr %178, align 8, !tbaa !54
  br label %415

415:                                              ; preds = %414, %401
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %300, ptr noundef nonnull readonly align 8 dereferenceable(40) %166, i64 40, i1 false), !tbaa.struct !182
  %416 = getelementptr inbounds nuw i8, ptr %5, i64 144
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %418 = load <2 x i32>, ptr %416, align 8, !tbaa !49
  store <2 x i32> %418, ptr %417, align 8, !tbaa !49
  %419 = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %420 = load i32, ptr %419, align 8, !tbaa !279
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %420, ptr %421, align 8, !tbaa !184
  %422 = load i64, ptr %25, align 8, !tbaa !266
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %422, ptr %423, align 8, !tbaa !185
  %424 = load ptr, ptr %301, align 8, !tbaa !55
  %425 = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %424, ptr noundef nonnull readonly align 8 dereferenceable(5632) %425, i64 5632, i1 false)
  br label %426

426:                                              ; preds = %415, %165
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %464

427:                                              ; preds = %39, %35, %24
  %428 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %429 = icmp ult i64 %428, -119
  br i1 %429, label %433, label %464

430:                                              ; preds = %21
  %431 = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %17, i32 noundef 0, i32 noundef %8)
  %432 = icmp ult i64 %431, -119
  br i1 %432, label %447, label %464

433:                                              ; preds = %427
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %435 = load ptr, ptr %434, align 8, !tbaa !55
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %440 = load ptr, ptr %5, align 8, !tbaa !293
  %441 = load i64, ptr %25, align 8, !tbaa !266
  %442 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %443 = load i32, ptr %442, align 8, !tbaa !294
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %445 = load ptr, ptr %444, align 8, !tbaa !57
  %446 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %435, ptr noundef nonnull %436, ptr noundef nonnull %437, ptr noundef nonnull %438, ptr noundef nonnull %439, ptr noundef %440, i64 noundef %441, i32 noundef %443, i32 noundef %4, i32 noundef 0, ptr noundef %445)
  br label %457

447:                                              ; preds = %430
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %449 = load ptr, ptr %448, align 8, !tbaa !55
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %455 = load ptr, ptr %454, align 8, !tbaa !57
  %456 = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %449, ptr noundef nonnull %450, ptr noundef nonnull %451, ptr noundef nonnull %452, ptr noundef nonnull %453, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef %455)
  br label %457

457:                                              ; preds = %447, %433
  %458 = phi i64 [ %446, %433 ], [ %456, %447 ]
  %459 = icmp ult i64 %458, -119
  br i1 %459, label %460, label %464

460:                                              ; preds = %457
  %461 = trunc nuw i64 %458 to i32
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %461, ptr %462, align 8, !tbaa !184
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %17, ptr %463, align 8, !tbaa !185
  br label %464

464:                                              ; preds = %460, %457, %430, %427, %426, %164
  %465 = phi i64 [ %428, %427 ], [ %127, %164 ], [ %173, %426 ], [ %458, %457 ], [ 0, %460 ], [ %431, %430 ]
  ret i64 %465
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
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

30:                                               ; preds = %24, %19, %18
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
  %58 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #29
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

99:                                               ; preds = %96, %84, %64
  %100 = phi i32 [ 0, %64 ], [ %93, %96 ], [ 0, %84 ]
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %100, ptr %101, align 8, !tbaa !184
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %102, align 8, !tbaa !185
  br label %103

103:                                              ; preds = %99, %92, %59, %41, %30
  %104 = phi i64 [ -42, %30 ], [ -42, %41 ], [ 0, %99 ], [ %62, %59 ], [ %94, %92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 %104
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = icmp eq i64 %2, 0
  %7 = add i64 %2, 499
  %8 = select i1 %6, i64 -1, i64 %7
  %9 = icmp ult i64 %8, 262145
  %10 = zext i1 %9 to i64
  %11 = icmp ult i64 %8, 131073
  %12 = zext i1 %11 to i64
  %13 = icmp ult i64 %8, 16385
  %14 = zext i1 %13 to i64
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = icmp slt i32 %3, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @llvm.umin.i32(i32 %3, i32 22)
  %20 = zext nneg i32 %19 to i64
  br label %21

21:                                               ; preds = %18, %16, %4
  %22 = phi i64 [ 3, %4 ], [ 0, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds nuw [644 x i8], ptr @ZSTD_defaultCParameters, i64 %10
  %24 = getelementptr inbounds nuw [644 x i8], ptr %23, i64 %12
  %.split = getelementptr inbounds nuw [644 x i8], ptr %24, i64 %14
  %25 = getelementptr inbounds nuw [28 x i8], ptr %.split, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !49, !noalias !295
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %28 = load i32, ptr %27, align 4, !tbaa !49, !noalias !295
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !49, !noalias !295
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 12
  %32 = load <2 x i32>, ptr %31, align 4
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa !49, !noalias !295
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %36 = load i32, ptr %35, align 4, !tbaa !49, !noalias !295
  %37 = add i32 %36, -6
  %38 = icmp ult i32 %37, -3
  br i1 %38, label %45, label %39

39:                                               ; preds = %21
  %40 = extractelement <2 x i32> %32, i64 0
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 4)
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 6)
  %43 = or disjoint i32 %42, 24
  %44 = tail call i32 @llvm.umin.i32(i32 %30, i32 %43)
  br label %45

45:                                               ; preds = %39, %21
  %46 = phi i32 [ %30, %21 ], [ %44, %39 ]
  %47 = tail call i32 @llvm.umax.i32(i32 %26, i32 10)
  %48 = icmp slt i32 %3, 0
  %49 = tail call i32 @llvm.umax.i32(i32 %3, i32 -131072)
  %50 = sub nsw i32 0, %49
  %51 = select i1 %48, i32 %50, i32 %34
  %52 = select i1 %15, i32 3, i32 %3
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

75:                                               ; preds = %70, %66, %65
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
  %84 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #29
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

125:                                              ; preds = %122, %110, %90
  %126 = phi i32 [ 0, %90 ], [ %119, %122 ], [ 0, %110 ]
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %126, ptr %127, align 8, !tbaa !184
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %2, ptr %128, align 8, !tbaa !185
  br label %129

129:                                              ; preds = %125, %118, %85
  %130 = phi i64 [ 0, %125 ], [ %88, %85 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i64 %130
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i64 @ZSTD_compressBegin_usingDict_deprecated(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_CCtx_trace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_Trace, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %5 = load i64, ptr %4, align 8, !tbaa !267
  %6 = icmp ne i64 %5, 0
  %7 = icmp ne ptr @ZSTD_trace_compress_end, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %41

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
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, i8 0, i64 56, i1 false)
  store i32 10600, ptr %3, align 8, !tbaa !303
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %23, ptr %25, align 4, !tbaa !308
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %27 = load i32, ptr %26, align 8, !tbaa !184
  store i32 %27, ptr %24, align 8, !tbaa !309
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %29 = load i64, ptr %28, align 8, !tbaa !185
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %29, ptr %30, align 8, !tbaa !310
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %32 = load i64, ptr %31, align 8, !tbaa !157
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %32, ptr %33, align 8, !tbaa !311
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %35 = load i64, ptr %34, align 8, !tbaa !161
  %36 = add i64 %35, %1
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %36, ptr %37, align 8, !tbaa !312
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %38, ptr %39, align 8, !tbaa !313
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %40, align 8, !tbaa !314
  call void @ZSTD_trace_compress_end(i64 noundef %5, ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %41

41:                                               ; preds = %22, %2
  store i64 0, ptr %4, align 8, !tbaa !267
  ret void
}

declare extern_weak void @ZSTD_trace_compress_end(i64 noundef, ptr noundef) #10

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 1)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %118

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %11 = sub i64 %2, %7
  %12 = load i32, ptr %0, align 8, !tbaa !170
  switch i32 %12, label %44 [
    i32 0, label %118
    i32 1, label %13
    i32 3, label %50
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
  br i1 %28, label %118, label %29

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
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 2
  store i32 2, ptr %0, align 8, !tbaa !170
  store i16 1, ptr %39, align 1, !tbaa !231
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 4
  store i8 0, ptr %40, align 1, !tbaa !196
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 5
  %42 = sub nuw i64 %11, %35
  %43 = add i64 %42, -5
  br label %50

44:                                               ; preds = %9
  %45 = icmp ugt i64 %11, 2
  br i1 %45, label %46, label %118

46:                                               ; preds = %44
  store i16 1, ptr %10, align 1, !tbaa !231
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 0, ptr %47, align 1, !tbaa !196
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 3
  %49 = add i64 %11, -3
  br label %50

50:                                               ; preds = %46, %34, %9
  %51 = phi ptr [ %41, %34 ], [ %48, %46 ], [ %10, %9 ]
  %52 = phi i64 [ %43, %34 ], [ %49, %46 ], [ %11, %9 ]
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i32, ptr %53, align 4, !tbaa !245
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = icmp ugt i64 %52, 3
  br i1 %57, label %58, label %118

58:                                               ; preds = %56
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %60 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %59) #33
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %51, align 1, !tbaa !49
  %62 = getelementptr inbounds nuw i8, ptr %51, i64 4
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi ptr [ %51, %50 ], [ %62, %58 ]
  store i32 0, ptr %0, align 8, !tbaa !170
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %10 to i64
  %67 = sub i64 %65, %66
  %68 = icmp ult i64 %67, -119
  br i1 %68, label %69, label %118

69:                                               ; preds = %63
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %71 = load i64, ptr %70, align 8, !tbaa !115
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %75 = load i64, ptr %74, align 8, !tbaa !157
  %76 = add i64 %75, 1
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %73, %69
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %80 = load i64, ptr %79, align 8, !tbaa !267
  %81 = icmp ne i64 %80, 0
  %82 = icmp ne ptr @ZSTD_trace_compress_end, null
  %83 = and i1 %82, %81
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %86 = load i64, ptr %85, align 8, !tbaa !300
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %90 = load i64, ptr %89, align 8, !tbaa !301
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %94 = load i32, ptr %93, align 4, !tbaa !302
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  br label %97

97:                                               ; preds = %92, %88, %84
  %98 = phi i32 [ 1, %88 ], [ 1, %84 ], [ %96, %92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %99 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %99, i8 0, i64 56, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !303
  %100 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %98, ptr %100, align 4, !tbaa !308
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %102 = load i32, ptr %101, align 8, !tbaa !184
  store i32 %102, ptr %99, align 8, !tbaa !309
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %104 = load i64, ptr %103, align 8, !tbaa !185
  %105 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %104, ptr %105, align 8, !tbaa !310
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %107 = load i64, ptr %106, align 8, !tbaa !157
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %107, ptr %108, align 8, !tbaa !311
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %110 = load i64, ptr %109, align 8, !tbaa !161
  %111 = add i64 %110, %67
  %112 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %111, ptr %112, align 8, !tbaa !312
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %113, ptr %114, align 8, !tbaa !313
  %115 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %0, ptr %115, align 8, !tbaa !314
  call void @ZSTD_trace_compress_end(i64 noundef %80, ptr noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %116

116:                                              ; preds = %97, %78
  store i64 0, ptr %79, align 8, !tbaa !267
  %117 = add i64 %67, %7
  br label %118

118:                                              ; preds = %116, %73, %63, %56, %44, %13, %9, %5
  %119 = phi i64 [ %117, %116 ], [ %67, %63 ], [ %7, %5 ], [ -72, %73 ], [ -70, %13 ], [ -70, %44 ], [ -70, %56 ], [ -60, %9 ]
  ret i64 %119
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %7) local_unnamed_addr #1 {
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

62:                                               ; preds = %57, %53, %52
  %63 = phi i32 [ 2, %53 ], [ %61, %57 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %63, ptr %64, align 8, !tbaa !78
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %65, align 8, !tbaa !79
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 2, ptr %66, align 8, !tbaa !80
  %67 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %42)
  br label %68

68:                                               ; preds = %62, %36, %27, %22, %17, %12, %8
  %69 = phi i64 [ %67, %62 ], [ -42, %36 ], [ -42, %8 ], [ -42, %12 ], [ -42, %17 ], [ -42, %22 ], [ -42, %27 ]
  ret i64 %69
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #1 {
  %9 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #29
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

52:                                               ; preds = %49, %37, %17
  %53 = phi i32 [ 0, %17 ], [ %46, %49 ], [ 0, %37 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %53, ptr %54, align 8, !tbaa !184
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %6, ptr %55, align 8, !tbaa !185
  %56 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %57

57:                                               ; preds = %52, %45, %12
  %58 = phi i64 [ %56, %52 ], [ %47, %45 ], [ %15, %12 ]
  ret i64 %58
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingDict(ptr noundef initializes((464, 688)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.ZSTD_compressionParameters, align 4
  %10 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %11 = icmp eq ptr %5, null
  %12 = select i1 %11, i64 0, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %9, i32 noundef %7, i64 noundef %4, i64 noundef %12, i32 noundef 0), !noalias !315
  %13 = load i32, ptr %9, align 4, !tbaa !49
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !125
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %16 = load i32, ptr %15, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
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

41:                                               ; preds = %36, %32, %31
  %42 = phi i32 [ 2, %32 ], [ %40, %36 ], [ 2, %31 ]
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %42, ptr %43, align 8, !tbaa !78
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %44, align 8, !tbaa !79
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %46 = icmp slt i32 %19, 10
  %47 = select i1 %46, i32 2, i32 1
  store i32 %47, ptr %45, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %48 = tail call i64 @ZSTD_compress_advanced_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %17)
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressCCtx(ptr noundef initializes((464, 688)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZSTD_compressionParameters, align 4
  %8 = alloca { i32, i32, i32, i32, i32 }, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %7, i32 noundef %5, i64 noundef %4, i64 noundef 0, i32 noundef 0), !noalias !318
  %9 = load i32, ptr %7, align 4, !tbaa !49
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !125
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %12 = load i32, ptr %11, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
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

37:                                               ; preds = %32, %28, %27
  %38 = phi i32 [ 2, %28 ], [ %36, %32 ], [ 2, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %38, ptr %39, align 8, !tbaa !78
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 131072, ptr %40, align 8, !tbaa !79
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %42 = icmp slt i32 %15, 10
  %43 = select i1 %42, i32 2, i32 1
  store i32 %43, ptr %41, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %44 = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = tail call i64 @ZSTD_trace_compress_begin(ptr noundef nonnull %0) #29
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

56:                                               ; preds = %52, %47
  %57 = phi i64 [ %55, %52 ], [ %50, %47 ]
  ret i64 %57
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_CCtx_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %7 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #28, !srcloc !5
  %8 = icmp eq i32 %7, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5280) %6, i8 0, i64 5280, i1 false)
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #28, !srcloc !6
  %11 = icmp ugt i32 %7, 6
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #28, !srcloc !7
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
  call void %32(ptr noundef %33, ptr noundef nonnull %31) #29
  br label %39

38:                                               ; preds = %35
  call void @free(ptr noundef nonnull %31) #29
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
  call void %44(ptr noundef %46, ptr noundef nonnull %48) #29
  br label %60

60:                                               ; preds = %59, %54
  br i1 %55, label %62, label %66

61:                                               ; preds = %57
  call void @free(ptr noundef nonnull %48) #29
  br i1 %55, label %65, label %66

62:                                               ; preds = %60
  %63 = icmp eq ptr %44, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  call void %44(ptr noundef %46, ptr noundef nonnull %40) #29
  br label %66

65:                                               ; preds = %62, %61
  call void @free(ptr noundef nonnull %40) #29
  br label %66

66:                                               ; preds = %65, %64, %61, %60, %39
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
  call void %68(ptr noundef %69, ptr noundef nonnull %70) #29
  br label %76

75:                                               ; preds = %72
  call void @free(ptr noundef nonnull %70) #29
  br label %76

76:                                               ; preds = %75, %74, %66
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_estimateCDictSize_advanced(i64 noundef %0, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
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
  %28 = add i64 %13, %27
  %29 = add i64 %28, %22
  %30 = add i64 %29, %21
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_estimateCDictSize(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_sizeof_CDict(ptr noundef readonly captures(address) %0) local_unnamed_addr #8 {
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

14:                                               ; preds = %3, %1
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  store i32 1, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !74
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !321
  %11 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 16
  %9 = alloca %struct.ZSTD_compressionParameters, align 16
  %10 = alloca %struct.ZSTD_compressionParameters, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %9, ptr noundef nonnull %4, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %53 = load <4 x i32>, ptr %9, align 16, !tbaa !49
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %55 = load <2 x i32>, ptr %54, align 16, !tbaa !49
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %57 = load i32, ptr %56, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %58

58:                                               ; preds = %52, %21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %10, ptr noundef nonnull %7, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %71 = load <4 x i32>, ptr %10, align 16, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %73 = load <2 x i32>, ptr %72, align 16, !tbaa !49
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %75 = load i32, ptr %74, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %76

76:                                               ; preds = %70, %58
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
  %133 = tail call ptr %11(ptr noundef %97, i64 noundef %131) #29
  br label %136

134:                                              ; preds = %111
  %135 = tail call noalias ptr @malloc(i64 noundef %131) #30
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
  tail call void %166(ptr noundef %167, ptr noundef nonnull %168) #29
  br label %179

179:                                              ; preds = %178, %173
  br i1 %174, label %181, label %185

180:                                              ; preds = %176
  tail call void @free(ptr noundef nonnull %168) #29
  br i1 %174, label %184, label %185

181:                                              ; preds = %179
  %182 = icmp eq ptr %166, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %181
  tail call void %166(ptr noundef %167, ptr noundef nonnull %137) #29
  br label %185

184:                                              ; preds = %181, %180
  tail call void @free(ptr noundef nonnull %137) #29
  br label %185

185:                                              ; preds = %184, %183, %180, %179, %139, %136, %6
  %186 = phi ptr [ null, %6 ], [ %137, %139 ], [ null, %179 ], [ null, %180 ], [ null, %183 ], [ null, %184 ], [ null, %136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %186
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_initCDict_internal(ptr noundef nonnull initializes((244, 248), (360, 388)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %5) unnamed_addr #1 {
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

32:                                               ; preds = %28, %19
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

58:                                               ; preds = %55, %53
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

82:                                               ; preds = %79, %70, %58, %34, %32
  %83 = phi i64 [ %68, %58 ], [ -64, %32 ], [ -64, %34 ], [ %77, %70 ], [ 0, %79 ]
  ret i64 %83
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeCDict(ptr noundef %0) local_unnamed_addr #1 {
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

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %17 = icmp eq ptr %9, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %5, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  tail call void %5(ptr noundef %7, ptr noundef nonnull %9) #29
  br label %21

21:                                               ; preds = %20, %15
  br i1 %16, label %23, label %27

22:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %9) #29
  br i1 %16, label %26, label %27

23:                                               ; preds = %21
  %24 = icmp eq ptr %5, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void %5(ptr noundef %7, ptr noundef nonnull %0) #29
  br label %27

26:                                               ; preds = %23, %22
  tail call void @free(ptr noundef nonnull %0) #29
  br label %27

27:                                               ; preds = %26, %25, %22, %21, %1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCDict(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !74
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
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
define dso_local ptr @ZSTD_createCDict_byReference(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %5, i32 noundef %2, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 224, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull readonly align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !74
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
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
define dso_local ptr @ZSTD_initStaticCDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %6) local_unnamed_addr #1 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = add i32 %10, -6
  %12 = icmp ult i32 %11, -3
  %13 = load i32, ptr %6, align 8
  %14 = icmp ult i32 %13, 15
  %15 = select i1 %12, i1 true, i1 %14
  %16 = select i1 %15, i32 2, i32 1
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = zext nneg i32 %18 to i64
  %20 = shl i64 4, %19
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !70
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = add nuw i64 %24, 63
  %26 = and i64 %25, -64
  %27 = select i1 %15, i64 0, i64 %26
  %28 = shl i64 4, %23
  %29 = icmp eq i32 %4, 1
  %30 = add i64 %3, 7
  %31 = and i64 %30, -8
  %32 = add i64 %31, 14912
  %33 = select i1 %29, i64 14912, i64 %32
  %34 = add i64 %20, %33
  %35 = add i64 %34, %28
  %36 = add i64 %35, %27
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %37 = ptrtoint ptr %0 to i64
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %7
  %41 = icmp samesign ult i64 %1, 6080
  %42 = icmp eq ptr %0, null
  %43 = or i1 %42, %41
  br i1 %43, label %72, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %47 = ptrtoint ptr %45 to i64
  %48 = and i64 %47, 63
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %51, align 8, !tbaa !48
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %45, ptr %52, align 8, !tbaa !48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %46, ptr %53, align 8, !tbaa !48
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %46, ptr %54, align 8, !tbaa !48
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %46, ptr %55, align 8, !tbaa !48
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %50, ptr %56, align 8, !tbaa !48
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %50, ptr %57, align 8, !tbaa !48
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %58, align 8, !tbaa !196
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %59, align 4, !tbaa !49
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %60, align 8, !tbaa !49
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %61, align 4, !tbaa !49
  %62 = icmp ult i64 %1, %36
  br i1 %62, label %72, label %63

63:                                               ; preds = %44
  %64 = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, i8 0, i64 224, i1 false)
  store i32 1, ptr %64, align 8, !tbaa !45
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %65, ptr noundef nonnull align 8 dereferenceable(28) %6, i64 28, i1 false), !tbaa.struct !74
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 %16, ptr %66, align 8, !tbaa !76
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 6072
  store i32 %16, ptr %67, align 8, !tbaa !270
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 6068
  store i32 0, ptr %68, align 4, !tbaa !268
  %69 = tail call fastcc i64 @ZSTD_initCDict_internal(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 8 %8)
  %70 = icmp ult i64 %69, -119
  %71 = select i1 %70, ptr %0, ptr null
  br label %72

72:                                               ; preds = %63, %44, %40, %7
  %73 = phi ptr [ null, %7 ], [ null, %44 ], [ %71, %63 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret ptr %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_getCParamsFromCDict(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
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

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %7 = alloca { i32, i32, i32, i32, i32 }, align 8
  %8 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %9 = icmp eq ptr %1, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias nonnull writable align 4 %8, i32 noundef %21, i64 noundef %4, i64 noundef %14, i32 noundef 3), !alias.scope !327
  %32 = load i32, ptr %8, align 4, !tbaa !49
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %33, i64 20, i1 false), !tbaa.struct !125
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %35 = load i32, ptr %34, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
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

62:                                               ; preds = %57, %53, %52
  %63 = phi i32 [ 2, %53 ], [ %61, %57 ], [ 2, %52 ]
  %64 = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %63, ptr %64, align 8, !tbaa !78
  %65 = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 131072, ptr %65, align 8, !tbaa !79
  %66 = getelementptr inbounds nuw i8, ptr %6, i64 216
  %67 = icmp slt i32 %37, 10
  %68 = select i1 %67, i32 2, i32 1
  store i32 %68, ptr %66, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
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

78:                                               ; preds = %72, %70
  %79 = phi i32 [ %77, %72 ], [ 1, %70 ]
  %80 = tail call i32 @llvm.umax.i32(i32 %39, i32 %79)
  store i32 %80, ptr %40, align 4, !tbaa !84
  br label %81

81:                                               ; preds = %78, %62
  %82 = call fastcc i64 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %6, i64 noundef %4, i32 noundef 0)
  br label %83

83:                                               ; preds = %81, %5
  %84 = phi i64 [ -32, %5 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 %84
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

41:                                               ; preds = %33, %2
  %42 = phi i64 [ -32, %2 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -119, 1) i64 @ZSTD_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

41:                                               ; preds = %33, %2
  %42 = phi i64 [ -32, %2 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef readonly byval(%struct.ZSTD_frameParameters) align 8 captures(none) %6) local_unnamed_addr #1 {
  %8 = load i64, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 %8, i32 %10, i64 noundef %4)
  %12 = icmp ult i64 %11, -119
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i64 [ %14, %13 ], [ %11, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compress_usingCDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = tail call fastcc i64 @ZSTD_compressBegin_usingCDict_internal(ptr noundef %0, ptr noundef %5, i64 1, i32 0, i64 noundef %4)
  %8 = icmp ult i64 %7, -119
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i64 @ZSTD_compressEnd_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ %7, %6 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ZSTD_createCStream() local_unnamed_addr #1 {
  %1 = tail call dereferenceable_or_null(5280) ptr @calloc(i64 1, i64 5280)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #28, !srcloc !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #28, !srcloc !6
  %8 = icmp ugt i32 %4, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #28, !srcloc !7
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

23:                                               ; preds = %17, %0
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createCStream_advanced(ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #1 {
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
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 5280) #29
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(5280) ptr @malloc(i64 noundef 5280) #30
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
  %22 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #28, !srcloc !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #28, !srcloc !6
  %26 = icmp ugt i32 %22, 6
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #28, !srcloc !7
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

41:                                               ; preds = %35, %15, %1
  %42 = phi ptr [ null, %1 ], [ %16, %35 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticCStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @ZSTD_initStaticCCtx(ptr noundef %0, i64 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #1 {
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
  tail call void %18(ptr noundef %20, ptr noundef nonnull %21) #29
  br label %27

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %21) #29
  br label %27

27:                                               ; preds = %26, %25, %15
  br i1 %16, label %28, label %34

28:                                               ; preds = %27
  %29 = load ptr, ptr %17, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8
  tail call void %29(ptr noundef %32, ptr noundef nonnull %0) #29
  br label %34

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %0) #29
  br label %34

34:                                               ; preds = %33, %31, %27, %3, %1
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
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_resetCStream(ptr noundef writeonly captures(none) initializes((784, 792), (3640, 3644)) %0, i64 noundef %1) local_unnamed_addr #6 {
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
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_internal(ptr noundef captures(none) initializes((16, 240), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #1 {
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
  %25 = tail call ptr %20(ptr noundef %24, i64 noundef %2) #29
  br label %28

26:                                               ; preds = %18
  %27 = tail call noalias ptr @malloc(i64 noundef %2) #30
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

38:                                               ; preds = %36, %31, %28, %14, %12
  %39 = phi i64 [ 0, %36 ], [ 0, %31 ], [ 0, %12 ], [ -64, %14 ], [ -64, %28 ]
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict_advanced(ptr noundef captures(none) initializes((48, 60), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #1 {
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
define dso_local noundef range(i64 -60, 1) i64 @ZSTD_initCStream_usingCDict(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef %1) local_unnamed_addr #1 {
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
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_advanced(ptr noundef captures(none) initializes((784, 792), (3640, 3644)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #1 {
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
  %65 = tail call ptr %60(ptr noundef %64, i64 noundef %2) #29
  br label %68

66:                                               ; preds = %58
  %67 = tail call noalias ptr @malloc(i64 noundef %2) #30
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

76:                                               ; preds = %71, %68, %54, %47, %42, %33, %28, %23, %18, %5
  %77 = phi i64 [ -42, %42 ], [ -42, %5 ], [ -42, %18 ], [ -42, %23 ], [ -42, %28 ], [ -42, %33 ], [ 0, %71 ], [ 0, %47 ], [ -64, %54 ], [ -64, %68 ]
  ret i64 %77
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTD_initCStream_usingDict(ptr noundef captures(none) initializes((60, 64), (784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
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

13:                                               ; preds = %10, %8, %4
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
  %30 = tail call ptr %25(ptr noundef %29, i64 noundef %2) #29
  br label %33

31:                                               ; preds = %23
  %32 = tail call noalias ptr @malloc(i64 noundef %2) #30
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
define dso_local range(i64 -60, 1) i64 @ZSTD_initCStream_srcSize(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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

12:                                               ; preds = %10, %3
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

25:                                               ; preds = %22, %19
  %26 = phi i64 [ 0, %22 ], [ -60, %19 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_initCStream(ptr noundef captures(none) initializes((784, 792), (3640, 3644), (3696, 3720), (3728, 3760)) %0, i32 noundef %1) local_unnamed_addr #1 {
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
  %18 = phi i32 [ -131072, %10 ], [ 22, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %18, ptr %19, align 4, !tbaa !44
  ret i64 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #1 {
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
define dso_local i64 @ZSTD_compressStream2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !205
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !204
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %.loopexit, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !208
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !207
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %.loopexit, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %.loopexit, label %18

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
  br i1 %44, label %45, label %.loopexit

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %47 = load i64, ptr %46, align 8, !tbaa !334
  %48 = icmp eq i64 %12, %47
  br i1 %48, label %49, label %.loopexit

49:                                               ; preds = %45, %38
  store i64 %14, ptr %11, align 8, !tbaa !208
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !335
  store i64 %29, ptr %27, align 8, !tbaa !331
  %51 = load i32, ptr %30, align 8, !tbaa !336
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 6, i64 2
  br label %.loopexit

54:                                               ; preds = %25
  %55 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %29)
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %.loopexit

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

72:                                               ; preds = %67, %63, %22
  %73 = phi i32 [ %24, %22 ], [ %59, %63 ], [ %59, %67 ]
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %75 = icmp eq i32 %73, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  %79 = load ptr, ptr %2, align 8, !tbaa !206
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %.loopexit

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %83 = load i64, ptr %82, align 8, !tbaa !114
  %84 = load i64, ptr %11, align 8, !tbaa !208
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %.loopexit

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
  br i1 %96, label %97, label %.loopexit

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

145:                                              ; preds = %.backedge, %128
  %146 = phi ptr [ %129, %128 ], [ %.be, %.backedge ]
  %147 = phi ptr [ %118, %128 ], [ %.be141, %.backedge ]
  %148 = load i32, ptr %19, align 8, !tbaa !81
  switch i32 %148, label %.split [
    i32 0, label %.loopexit
    i32 1, label %152
    i32 2, label %149
  ]

.split:                                           ; preds = %145, %.split
  br label %.split

149:                                              ; preds = %145
  %150 = load i64, ptr %142, align 8, !tbaa !339
  %151 = load i64, ptr %143, align 8, !tbaa !340
  br label %317

152:                                              ; preds = %145
  br i1 %130, label %153, label %184

153:                                              ; preds = %152
  %154 = ptrtoint ptr %147 to i64
  %155 = sub i64 %117, %154
  %156 = ptrtoint ptr %146 to i64
  %157 = sub i64 %131, %156
  %158 = icmp ugt i64 %157, -71777214294589697
  br i1 %158, label %169, label %159

159:                                              ; preds = %153
  %160 = lshr i64 %157, 8
  %161 = add nuw i64 %160, %157
  %162 = icmp ult i64 %157, 131072
  %163 = sub nuw nsw i64 131072, %157
  %164 = lshr i64 %163, 11
  %165 = select i1 %162, i64 %164, i64 0
  %166 = add i64 %161, %165
  %167 = freeze i64 %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159, %153
  br label %170

170:                                              ; preds = %169, %159
  %171 = phi i64 [ -72, %169 ], [ %167, %159 ]
  %172 = icmp ult i64 %155, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, ptr %87, align 8, !tbaa !337
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %184

176:                                              ; preds = %173, %170
  %177 = load i64, ptr %132, align 8, !tbaa !155
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %147, i64 noundef %155, ptr noundef %146, i64 noundef %157)
  %181 = icmp ult i64 %180, -119
  br i1 %181, label %182, label %.loopexit

182:                                              ; preds = %179
  %183 = getelementptr inbounds nuw i8, ptr %147, i64 %180
  store i32 1, ptr %140, align 4, !tbaa !341
  store i32 0, ptr %19, align 8, !tbaa !81
  store i64 0, ptr %144, align 8, !tbaa !115
  br label %.loopexit25

184:                                              ; preds = %176, %173, %152
  %185 = load i32, ptr %74, align 4, !tbaa !330
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %184
  %188 = load i64, ptr %135, align 8, !tbaa !332
  %189 = load i64, ptr %132, align 8, !tbaa !155
  %190 = sub i64 %188, %189
  %191 = ptrtoint ptr %146 to i64
  %192 = sub i64 %131, %191
  %193 = tail call i64 @llvm.umin.i64(i64 %190, i64 %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %187
  %196 = load ptr, ptr %136, align 8, !tbaa !154
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 %189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr readonly align 1 %146, i64 %193, i1 false)
  %198 = load i64, ptr %132, align 8, !tbaa !155
  br label %199

199:                                              ; preds = %195, %187
  %200 = phi i64 [ %189, %187 ], [ %198, %195 ]
  %201 = add i64 %200, %193
  store i64 %201, ptr %132, align 8, !tbaa !155
  %202 = icmp eq ptr %146, null
  %203 = getelementptr inbounds nuw i8, ptr %146, i64 %193
  %204 = select i1 %202, ptr null, ptr %203
  switch i32 %3, label %223 [
    i32 0, label %205
    i32 1, label %208
  ]

205:                                              ; preds = %199
  %206 = load i64, ptr %135, align 8, !tbaa !332
  %207 = icmp ult i64 %201, %206
  br i1 %207, label %.loopexit25, label %223

208:                                              ; preds = %199
  %209 = load i64, ptr %137, align 8, !tbaa !156
  %210 = icmp eq i64 %201, %209
  br i1 %210, label %.loopexit25, label %223

211:                                              ; preds = %184
  switch i32 %3, label %220 [
    i32 0, label %212
    i32 1, label %218
  ]

212:                                              ; preds = %211
  %213 = ptrtoint ptr %146 to i64
  %214 = sub i64 %131, %213
  %215 = load i64, ptr %133, align 8, !tbaa !243
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  store i64 %214, ptr %134, align 8, !tbaa !331
  br label %.loopexit25

218:                                              ; preds = %211
  %219 = icmp eq ptr %146, %106
  br i1 %219, label %.loopexit25, label %220

220:                                              ; preds = %218, %211
  %221 = ptrtoint ptr %147 to i64
  %222 = sub i64 %117, %221
  br label %233

223:                                              ; preds = %212, %208, %205, %199
  %224 = phi ptr [ %204, %205 ], [ %204, %199 ], [ %204, %208 ], [ %146, %212 ]
  %225 = load i32, ptr %74, align 4, !tbaa !330
  %226 = icmp eq i32 %225, 0
  %227 = ptrtoint ptr %147 to i64
  %228 = sub i64 %117, %227
  br i1 %226, label %229, label %233

229:                                              ; preds = %223
  %230 = load i64, ptr %132, align 8, !tbaa !155
  %231 = load i64, ptr %137, align 8, !tbaa !156
  %232 = sub i64 %230, %231
  br label %240

233:                                              ; preds = %223, %220
  %234 = phi i64 [ %222, %220 ], [ %228, %223 ]
  %235 = phi ptr [ %146, %220 ], [ %224, %223 ]
  %236 = ptrtoint ptr %235 to i64
  %237 = sub i64 %131, %236
  %238 = load i64, ptr %133, align 8, !tbaa !243
  %239 = tail call i64 @llvm.umin.i64(i64 %237, i64 %238)
  br label %240

240:                                              ; preds = %233, %229
  %241 = phi i64 [ %228, %229 ], [ %234, %233 ]
  %242 = phi i1 [ true, %229 ], [ false, %233 ]
  %243 = phi ptr [ %224, %229 ], [ %235, %233 ]
  %244 = phi i64 [ %232, %229 ], [ %239, %233 ]
  %245 = icmp ugt i64 %244, -71777214294589697
  br i1 %245, label %256, label %246

246:                                              ; preds = %240
  %247 = lshr i64 %244, 8
  %248 = add nuw i64 %247, %244
  %249 = icmp ult i64 %244, 131072
  %250 = sub nuw nsw i64 131072, %244
  %251 = lshr i64 %250, 11
  %252 = select i1 %249, i64 %251, i64 0
  %253 = add i64 %248, %252
  %254 = freeze i64 %253
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %246, %240
  br label %257

257:                                              ; preds = %256, %246
  %258 = phi i64 [ -72, %256 ], [ %254, %246 ]
  %259 = icmp ult i64 %241, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = load i32, ptr %87, align 8, !tbaa !337
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr %138, align 8, !tbaa !342
  %265 = load i64, ptr %139, align 8, !tbaa !301
  br label %266

266:                                              ; preds = %263, %260, %257
  %267 = phi i64 [ %265, %263 ], [ %241, %260 ], [ %241, %257 ]
  %268 = phi ptr [ %264, %263 ], [ %147, %260 ], [ %147, %257 ]
  br i1 %242, label %269, label %292

269:                                              ; preds = %266
  %270 = icmp eq ptr %243, %106
  %271 = select i1 %130, i1 %270, i1 false
  %272 = zext i1 %271 to i32
  %273 = load ptr, ptr %136, align 8, !tbaa !154
  %274 = load i64, ptr %137, align 8, !tbaa !156
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 %274
  br i1 %271, label %276, label %278

276:                                              ; preds = %269
  %277 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %268, i64 noundef %267, ptr noundef %275, i64 noundef %244)
  br label %280

278:                                              ; preds = %269
  %279 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %268, i64 noundef %267, ptr noundef %275, i64 noundef %244, i32 noundef 1, i32 noundef 0)
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i64 [ %277, %276 ], [ %279, %278 ]
  %282 = icmp ult i64 %281, -119
  br i1 %282, label %283, label %.loopexit

283:                                              ; preds = %280
  store i32 %272, ptr %140, align 4, !tbaa !341
  %284 = load i64, ptr %132, align 8, !tbaa !155
  %285 = load i64, ptr %133, align 8, !tbaa !243
  %286 = add i64 %285, %284
  store i64 %286, ptr %135, align 8, !tbaa !332
  %287 = load i64, ptr %141, align 8, !tbaa !300
  %288 = icmp ugt i64 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %283
  store i64 0, ptr %132, align 8, !tbaa !155
  store i64 %285, ptr %135, align 8, !tbaa !332
  br label %290

290:                                              ; preds = %289, %283
  %291 = phi i64 [ %284, %283 ], [ 0, %289 ]
  store i64 %291, ptr %137, align 8, !tbaa !156
  br label %307

292:                                              ; preds = %266
  %293 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  %294 = icmp eq ptr %293, %106
  %295 = select i1 %130, i1 %294, i1 false
  %296 = zext i1 %295 to i32
  br i1 %295, label %297, label %299

297:                                              ; preds = %292
  %298 = tail call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %0, ptr noundef %268, i64 noundef %267, ptr noundef %243, i64 noundef %244)
  br label %301

299:                                              ; preds = %292
  %300 = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %268, i64 noundef %267, ptr noundef %243, i64 noundef %244, i32 noundef 1, i32 noundef 0)
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i64 [ %298, %297 ], [ %300, %299 ]
  %303 = icmp ult i64 %302, -119
  br i1 %303, label %304, label %.loopexit

304:                                              ; preds = %301
  %305 = icmp eq ptr %243, null
  %306 = select i1 %305, ptr null, ptr %293
  store i32 %296, ptr %140, align 4, !tbaa !341
  br label %307

307:                                              ; preds = %304, %290
  %308 = phi i32 [ %272, %290 ], [ %296, %304 ]
  %309 = phi i64 [ %281, %290 ], [ %302, %304 ]
  %310 = phi ptr [ %243, %290 ], [ %306, %304 ]
  %311 = icmp eq ptr %268, %147
  br i1 %311, label %312, label %316

312:                                              ; preds = %307
  %313 = getelementptr inbounds nuw i8, ptr %147, i64 %309
  %314 = icmp eq i32 %308, 0
  br i1 %314, label %.backedge, label %315

315:                                              ; preds = %312
  store i32 0, ptr %19, align 8, !tbaa !81
  store i64 0, ptr %144, align 8, !tbaa !115
  br label %.loopexit25

316:                                              ; preds = %307
  store i64 %309, ptr %142, align 8, !tbaa !339
  store i64 0, ptr %143, align 8, !tbaa !340
  store i32 2, ptr %19, align 8, !tbaa !81
  br label %317

317:                                              ; preds = %316, %149
  %318 = phi i64 [ 0, %316 ], [ %151, %149 ]
  %319 = phi i64 [ %309, %316 ], [ %150, %149 ]
  %320 = phi ptr [ %310, %316 ], [ %146, %149 ]
  %321 = sub i64 %319, %318
  %322 = ptrtoint ptr %147 to i64
  %323 = sub i64 %117, %322
  %324 = tail call i64 @llvm.umin.i64(i64 %323, i64 %321)
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %317
  %327 = load ptr, ptr %138, align 8, !tbaa !342
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 %318
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr readonly align 1 %328, i64 %324, i1 false)
  %329 = load i64, ptr %143, align 8, !tbaa !340
  br label %330

330:                                              ; preds = %326, %317
  %331 = phi i64 [ %318, %317 ], [ %329, %326 ]
  %332 = getelementptr inbounds nuw i8, ptr %147, i64 %324
  %333 = add i64 %331, %324
  store i64 %333, ptr %143, align 8, !tbaa !340
  %334 = icmp ugt i64 %321, %323
  br i1 %334, label %.loopexit25, label %335

335:                                              ; preds = %330
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %142, i8 0, i64 16, i1 false)
  %336 = load i32, ptr %140, align 4, !tbaa !341
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %335
  store i32 0, ptr %19, align 8, !tbaa !81
  store i64 0, ptr %144, align 8, !tbaa !115
  br label %.loopexit25

339:                                              ; preds = %335
  store i32 1, ptr %19, align 8, !tbaa !81
  br label %.backedge

.backedge:                                        ; preds = %339, %312
  %.be = phi ptr [ %310, %312 ], [ %320, %339 ]
  %.be141 = phi ptr [ %313, %312 ], [ %332, %339 ]
  br label %145, !llvm.loop !343

.loopexit25:                                      ; preds = %330, %218, %208, %205, %338, %315, %217, %182
  %340 = phi ptr [ %313, %315 ], [ %183, %182 ], [ %332, %338 ], [ %147, %217 ], [ %147, %218 ], [ %332, %330 ], [ %147, %205 ], [ %147, %208 ]
  %341 = phi ptr [ %310, %315 ], [ %106, %182 ], [ %320, %338 ], [ %106, %217 ], [ %106, %218 ], [ %320, %330 ], [ %204, %205 ], [ %204, %208 ]
  %342 = ptrtoint ptr %341 to i64
  %343 = ptrtoint ptr %98 to i64
  %344 = sub i64 %342, %343
  store i64 %344, ptr %11, align 8, !tbaa !208
  %345 = ptrtoint ptr %340 to i64
  %346 = ptrtoint ptr %108 to i64
  %347 = sub i64 %345, %346
  store i64 %347, ptr %5, align 8, !tbaa !205
  %348 = load i32, ptr %140, align 4, !tbaa !341
  %349 = icmp eq i32 %348, 0
  %350 = load i32, ptr %74, align 4, !tbaa !330
  br i1 %349, label %351, label %367

351:                                              ; preds = %.loopexit25
  %352 = icmp eq i32 %350, 1
  br i1 %352, label %353, label %357

353:                                              ; preds = %351
  %354 = load i64, ptr %133, align 8, !tbaa !243
  %355 = load i64, ptr %134, align 8, !tbaa !331
  %356 = sub i64 %354, %355
  br label %364

357:                                              ; preds = %351
  %358 = load i64, ptr %135, align 8, !tbaa !332
  %359 = load i64, ptr %132, align 8, !tbaa !155
  %360 = sub i64 %358, %359
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = load i64, ptr %133, align 8, !tbaa !243
  br label %364

364:                                              ; preds = %362, %357, %353
  %365 = phi i64 [ %356, %353 ], [ %363, %362 ], [ %360, %357 ]
  %366 = icmp ult i64 %365, -119
  br i1 %366, label %367, label %.loopexit

367:                                              ; preds = %364, %.loopexit25
  %368 = icmp eq i32 %350, 1
  br i1 %368, label %369, label %371

369:                                              ; preds = %367
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %370, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !335
  br label %371

371:                                              ; preds = %369, %367
  %372 = load i32, ptr %87, align 8, !tbaa !337
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load i64, ptr %7, align 8, !tbaa !204
  %376 = load i64, ptr %5, align 8, !tbaa !205
  %377 = sub i64 %375, %376
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i64 %377, ptr %378, align 8, !tbaa !338
  br label %379

379:                                              ; preds = %374, %371
  %380 = load i64, ptr %142, align 8, !tbaa !339
  %381 = load i64, ptr %143, align 8, !tbaa !340
  %382 = sub i64 %380, %381
  br label %.loopexit

.loopexit:                                        ; preds = %301, %280, %145, %379, %364, %179, %90, %81, %76, %54, %49, %45, %40, %16, %10, %4
  %383 = phi i64 [ %382, %379 ], [ %365, %364 ], [ -70, %4 ], [ -72, %10 ], [ -42, %16 ], [ -50, %45 ], [ -50, %40 ], [ %55, %54 ], [ %53, %49 ], [ -50, %90 ], [ -50, %76 ], [ -50, %81 ], [ %180, %179 ], [ -62, %145 ], [ %302, %301 ], [ %281, %280 ]
  ret i64 %383
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i64 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
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

30:                                               ; preds = %28, %16, %3
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

42:                                               ; preds = %38, %34, %30
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

72:                                               ; preds = %64, %54
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
  %84 = getelementptr inbounds nuw [8 x i8], ptr @attachDictSizeCutoffs, i64 %83
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

96:                                               ; preds = %93, %90, %64, %50
  %97 = phi i64 [ %53, %50 ], [ %75, %93 ], [ %75, %90 ], [ %67, %64 ]
  %98 = phi i64 [ 0, %50 ], [ %76, %93 ], [ %76, %90 ], [ %10, %64 ]
  br label %99

99:                                               ; preds = %96, %93, %90, %72
  %100 = phi i64 [ %97, %96 ], [ %75, %72 ], [ %75, %90 ], [ %75, %93 ]
  %101 = phi i64 [ %98, %96 ], [ %76, %72 ], [ %76, %90 ], [ %76, %93 ]
  %102 = phi i32 [ 0, %96 ], [ 1, %72 ], [ 1, %90 ], [ 1, %93 ]
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %5, ptr noundef nonnull %4, i64 noundef %100, i64 noundef %101, i32 noundef %102)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %103, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
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

115:                                              ; preds = %111, %107, %99
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

128:                                              ; preds = %124, %120, %115
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

142:                                              ; preds = %138, %133, %128
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

169:                                              ; preds = %163, %158
  %170 = phi i64 [ %168, %163 ], [ 0, %158 ]
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 3600
  store i64 %170, ptr %171, align 8, !tbaa !332
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 3640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %172, i8 0, i64 16, i1 false)
  store i32 1, ptr %173, align 8, !tbaa !81
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 3644
  store i32 0, ptr %174, align 4, !tbaa !341
  br label %175

175:                                              ; preds = %169, %142, %20
  %176 = phi i64 [ -64, %20 ], [ %156, %142 ], [ 0, %169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i64 %176
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 8
  %10 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.ZSTD_SequencePosition, align 8
  %9 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %6)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %249

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
  %25 = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %24, ptr noundef captures(none) %5, i64 noundef %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %27 = load i32, ptr %26, align 4, !tbaa !349
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  br label %41

30:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %32 = load i32, ptr %31, align 4, !tbaa !349
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, ptr @ZSTD_transferSequences_wBlockDelim, ptr @ZSTD_transferSequences_noDelim
  %35 = icmp eq i64 %6, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = icmp ugt i64 %17, 3
  br i1 %37, label %38, label %.loopexit

38:                                               ; preds = %36
  store i32 1, ptr %16, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %39 = add nsw i64 %15, 3
  %40 = add i64 %17, -3
  br label %236

41:                                               ; preds = %30, %23
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

58:                                               ; preds = %222, %41
  %59 = phi i64 [ %17, %41 ], [ %225, %222 ]
  %60 = phi i64 [ 0, %41 ], [ %224, %222 ]
  %61 = phi i64 [ %6, %41 ], [ %226, %222 ]
  %62 = phi ptr [ %5, %41 ], [ %227, %222 ]
  %63 = phi ptr [ %16, %41 ], [ %228, %222 ]
  %64 = load i32, ptr %43, align 4, !tbaa !349
  %65 = load i64, ptr %44, align 8, !tbaa !243
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %58
  %68 = load i64, ptr %8, align 8
  %69 = and i64 %68, 4294967295
  %70 = icmp ult i64 %69, %4
  br i1 %70, label %.preheader, label %.loopexit

71:                                               ; preds = %.preheader
  %72 = add i64 %74, 1
  %73 = icmp eq i64 %72, %4
  br i1 %73, label %.loopexit, label %.preheader, !llvm.loop !350

.preheader:                                       ; preds = %67, %71
  %74 = phi i64 [ %72, %71 ], [ %69, %67 ]
  %75 = phi i64 [ %85, %71 ], [ 0, %67 ]
  %76 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !212
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 4
  %80 = load i32, ptr %79, align 4, !tbaa !215
  %81 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %82 = load i32, ptr %81, align 4, !tbaa !214
  %83 = add i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %75, %84
  br i1 %78, label %86, label %71

86:                                               ; preds = %.preheader
  %87 = icmp eq i32 %82, 0
  %88 = select i1 %87, i64 %85, i64 -107
  %89 = icmp ult i64 %88, -119
  br i1 %89, label %90, label %.loopexit

90:                                               ; preds = %86
  %91 = icmp ugt i64 %88, %65
  %92 = icmp ugt i64 %88, %61
  %93 = or i1 %91, %92
  br i1 %93, label %.loopexit, label %94

94:                                               ; preds = %90
  %95 = icmp eq i64 %88, %61
  br label %100

96:                                               ; preds = %58
  %97 = call i64 @llvm.umin.i64(i64 range(i64 1, 0) %61, i64 %65)
  %98 = icmp ule i64 %61, %65
  %99 = icmp ult i64 %97, -119
  br i1 %99, label %100, label %.loopexit

100:                                              ; preds = %96, %94
  %101 = phi i1 [ %95, %94 ], [ %98, %96 ]
  %102 = phi i64 [ %85, %94 ], [ %97, %96 ]
  %103 = zext i1 %101 to i32
  %104 = load ptr, ptr %46, align 8, !tbaa !200
  store ptr %104, ptr %47, align 8, !tbaa !201
  %105 = load ptr, ptr %45, align 8, !tbaa !186
  store ptr %105, ptr %48, align 8, !tbaa !190
  store i32 0, ptr %49, align 8, !tbaa !198
  %106 = load i32, ptr %50, align 8, !tbaa !351
  %107 = call i64 %42(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, i64 noundef %4, ptr noundef %62, i64 noundef %102, i32 noundef %106) #29, !callees !352
  %108 = icmp ult i64 %107, -119
  br i1 %108, label %109, label %.loopexit

109:                                              ; preds = %100
  %110 = icmp ult i64 %107, 7
  br i1 %110, label %111, label %122

111:                                              ; preds = %109
  %112 = add nuw nsw i64 %107, 3
  %113 = icmp ugt i64 %112, %59
  br i1 %113, label %.loopexit, label %114

114:                                              ; preds = %111
  %115 = trunc nuw nsw i64 %107 to i32
  %116 = shl nuw nsw i32 %115, 3
  %117 = or disjoint i32 %116, %103
  %118 = trunc nuw nsw i32 %117 to i16
  store i16 %118, ptr %63, align 1, !tbaa !231
  %119 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 0, ptr %119, align 1, !tbaa !196
  %120 = getelementptr inbounds nuw i8, ptr %63, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr readonly align 1 %62, i64 %107, i1 false)
  %121 = add i64 %112, %60
  br label %222, !llvm.loop !353

122:                                              ; preds = %109
  %123 = icmp ult i64 %59, 3
  br i1 %123, label %.loopexit, label %124

124:                                              ; preds = %122
  %125 = load ptr, ptr %51, align 8, !tbaa !55
  %126 = load ptr, ptr %52, align 8, !tbaa !56
  %127 = getelementptr inbounds nuw i8, ptr %63, i64 3
  %128 = add i64 %59, -3
  %129 = load ptr, ptr %53, align 8, !tbaa !57
  %130 = load i64, ptr %54, align 8, !tbaa !58
  %131 = load i32, ptr %55, align 8, !tbaa !8
  %132 = load ptr, ptr %46, align 8, !tbaa !200
  %133 = load ptr, ptr %47, align 8, !tbaa !201
  %134 = ptrtoint ptr %133 to i64
  %135 = ptrtoint ptr %132 to i64
  %136 = sub i64 %134, %135
  %137 = call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %127, i64 noundef %128, ptr noundef %132, i64 noundef %136, ptr noundef nonnull readonly %45, ptr noundef %125, ptr noundef %126, ptr noundef nonnull readonly %12, ptr noundef %129, i64 noundef %130, i32 noundef %131)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %124
  %140 = icmp eq i64 %137, -70
  %141 = icmp ule i64 %107, %128
  %142 = and i1 %141, %140
  br i1 %142, label %155, label %143

143:                                              ; preds = %139
  %144 = icmp ult i64 %137, -119
  br i1 %144, label %145, label %.loopexit

145:                                              ; preds = %143
  %146 = load i32, ptr %56, align 4, !tbaa !90
  %147 = call i32 @llvm.umax.i32(i32 %146, i32 7)
  %148 = add i32 %147, -1
  %149 = zext nneg i32 %148 to i64
  %150 = lshr i64 %107, %149
  %151 = add i64 %107, -2
  %152 = sub i64 %151, %150
  %153 = icmp ult i64 %137, %152
  %154 = select i1 %153, i64 %137, i64 0
  br label %155

155:                                              ; preds = %145, %139, %124
  %156 = phi i64 [ %154, %145 ], [ 0, %139 ], [ 0, %124 ]
  %157 = load i32, ptr %57, align 8, !tbaa !249
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = load ptr, ptr %48, align 8, !tbaa !190
  %161 = load ptr, ptr %45, align 8, !tbaa !186
  %162 = ptrtoint ptr %160 to i64
  %163 = ptrtoint ptr %161 to i64
  %164 = sub i64 %162, %163
  %165 = load ptr, ptr %47, align 8, !tbaa !201
  %166 = load ptr, ptr %46, align 8, !tbaa !200
  %167 = ptrtoint ptr %165 to i64
  %168 = ptrtoint ptr %166 to i64
  %169 = sub i64 %167, %168
  %170 = icmp ugt i64 %164, 31
  %171 = icmp ugt i64 %169, 9
  %172 = select i1 %170, i1 true, i1 %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %159
  %174 = call fastcc i32 @ZSTD_isRLE(ptr noundef %62, i64 noundef %107)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %173, %159, %155
  switch i64 %156, label %201 [
    i64 0, label %177
    i64 1, label %189
  ]

177:                                              ; preds = %176
  %178 = add nuw i64 %107, 3
  %179 = icmp ugt i64 %178, %59
  br i1 %179, label %.loopexit, label %180

180:                                              ; preds = %177
  %181 = trunc i64 %107 to i32
  %182 = shl i32 %181, 3
  %183 = or disjoint i32 %182, %103
  %184 = trunc i32 %183 to i16
  store i16 %184, ptr %63, align 1, !tbaa !231
  %185 = lshr i32 %182, 16
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %186, ptr %187, align 1, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %127, ptr readonly align 1 %62, i64 %107, i1 false)
  %188 = icmp ult i64 %107, -122
  br i1 %188, label %218, label %.loopexit

189:                                              ; preds = %176, %173
  %190 = icmp eq i64 %59, 3
  br i1 %190, label %.loopexit, label %191

191:                                              ; preds = %189
  %192 = load i8, ptr %62, align 1, !tbaa !196
  %193 = trunc i64 %107 to i32
  %194 = shl i32 %193, 3
  %195 = or disjoint i32 %194, %103
  %196 = trunc i32 %195 to i16
  %197 = or disjoint i16 %196, 2
  store i16 %197, ptr %63, align 1, !tbaa !231
  %198 = lshr i32 %194, 16
  %199 = trunc i32 %198 to i8
  %200 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %199, ptr %200, align 1, !tbaa !196
  store i8 %192, ptr %127, align 1, !tbaa !196
  br label %218

201:                                              ; preds = %176
  %202 = load ptr, ptr %51, align 8, !tbaa !354
  %203 = load ptr, ptr %52, align 8, !tbaa !355
  store ptr %203, ptr %51, align 8, !tbaa !354
  store ptr %202, ptr %52, align 8, !tbaa !355
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 5604
  %205 = load i32, ptr %204, align 4, !tbaa !167
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store i32 1, ptr %204, align 4, !tbaa !167
  br label %208

208:                                              ; preds = %207, %201
  %209 = select i1 %101, i32 5, i32 4
  %210 = trunc i64 %156 to i32
  %211 = shl i32 %210, 3
  %212 = or disjoint i32 %211, %209
  %213 = trunc i32 %212 to i16
  store i16 %213, ptr %63, align 1, !tbaa !231
  %214 = lshr i32 %211, 16
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %215, ptr %216, align 1, !tbaa !196
  %217 = add nuw i64 %156, 3
  br label %218

218:                                              ; preds = %208, %191, %180
  %219 = phi i64 [ %178, %180 ], [ %217, %208 ], [ 4, %191 ]
  %220 = add i64 %219, %60
  br i1 %101, label %231, label %221

221:                                              ; preds = %218
  store i32 0, ptr %57, align 8, !tbaa !249
  br label %222

222:                                              ; preds = %221, %114
  %223 = phi i64 [ %112, %114 ], [ %219, %221 ]
  %224 = phi i64 [ %121, %114 ], [ %220, %221 ]
  %225 = sub i64 %59, %223
  %226 = sub i64 %61, %107
  %227 = getelementptr inbounds nuw i8, ptr %62, i64 %107
  %228 = getelementptr inbounds nuw i8, ptr %63, i64 %223
  %229 = icmp eq i64 %226, 0
  br i1 %229, label %231, label %58

.loopexit:                                        ; preds = %189, %180, %177, %143, %122, %111, %100, %96, %90, %86, %67, %71, %36
  %230 = phi i64 [ -70, %36 ], [ -107, %71 ], [ %137, %143 ], [ -70, %111 ], [ -107, %67 ], [ -107, %90 ], [ %88, %86 ], [ -70, %177 ], [ -70, %122 ], [ %97, %96 ], [ %107, %100 ], [ %178, %180 ], [ -70, %189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %249

231:                                              ; preds = %222, %218
  %232 = phi i64 [ %224, %222 ], [ %220, %218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %233 = icmp ult i64 %232, -119
  %234 = add i64 %232, %15
  %235 = sub i64 %17, %232
  br i1 %233, label %236, label %249

236:                                              ; preds = %231, %38
  %237 = phi i64 [ %40, %38 ], [ %235, %231 ]
  %238 = phi i64 [ %39, %38 ], [ %234, %231 ]
  %239 = load i32, ptr %18, align 4, !tbaa !245
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %236
  %242 = icmp ugt i64 %237, 3
  br i1 %242, label %243, label %249

243:                                              ; preds = %241
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %245 = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %244) #33
  %246 = trunc i64 %245 to i32
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 %238
  store i32 %246, ptr %247, align 1, !tbaa !49
  %248 = add i64 %238, 4
  br label %249

249:                                              ; preds = %243, %241, %236, %231, %.loopexit, %7
  %250 = phi i64 [ %232, %231 ], [ %9, %7 ], [ %238, %236 ], [ %248, %243 ], [ -70, %241 ], [ %230, %.loopexit ]
  ret i64 %250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -70, 20) i64 @ZSTD_writeFrameHeader(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #7 {
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

76:                                               ; preds = %73, %69, %65, %63
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

95:                                               ; preds = %92, %88, %83, %79, %78, %42
  %96 = phi i64 [ -70, %42 ], [ %81, %79 ], [ %77, %78 ], [ %94, %92 ], [ %87, %83 ], [ %91, %88 ]
  ret i64 %96
}

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @convertSequences_noRepcodes(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %3
  %6 = add i64 %2, 1
  br label %7

7:                                                ; preds = %31, %5
  %8 = phi i64 [ 0, %5 ], [ %33, %31 ]
  %9 = phi i64 [ 0, %5 ], [ %32, %31 ]
  %10 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !212
  %12 = add i32 %11, 3
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %8
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

31:                                               ; preds = %29, %26
  %32 = phi i64 [ %30, %29 ], [ %27, %26 ]
  %33 = add nuw i64 %8, 1
  %34 = icmp eq i64 %33, %2
  br i1 %34, label %.loopexit, label %7, !llvm.loop !357

.loopexit:                                        ; preds = %31, %3
  %35 = phi i64 [ 0, %3 ], [ %32, %31 ]
  ret i64 %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -107, 1) i64 @ZSTD_convertBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = alloca %struct.repcodes_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %8 = load i64, ptr %7, align 8, !tbaa !358
  %9 = icmp ult i64 %2, %8
  br i1 %9, label %10, label %200

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
  br i1 %17, label %196, label %18

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
  br label %78

28:                                               ; preds = %10
  %29 = load ptr, ptr %6, align 8, !tbaa !252
  %30 = add i64 %2, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %.preheader

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %2
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %34, ptr %35, align 8, !tbaa !251
  br label %196

.preheader:                                       ; preds = %28, %59
  %36 = phi i64 [ %61, %59 ], [ 0, %28 ]
  %37 = phi i64 [ %60, %59 ], [ 0, %28 ]
  %38 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %36
  %39 = load i32, ptr %38, align 4, !tbaa !212
  %40 = add i32 %39, 3
  %41 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %36
  store i32 %40, ptr %41, align 4, !tbaa !194
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !215
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 4
  store i16 %44, ptr %45, align 4, !tbaa !191
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %47 = load i32, ptr %46, align 4, !tbaa !214
  %48 = trunc i32 %47 to i16
  %49 = add i16 %48, -3
  %50 = getelementptr inbounds nuw i8, ptr %41, i64 6
  store i16 %49, ptr %50, align 2, !tbaa !195
  %51 = icmp ugt i32 %47, 65538
  br i1 %51, label %52, label %54, !prof !356

52:                                               ; preds = %.preheader
  %53 = add nuw i64 %36, 1
  br label %54

54:                                               ; preds = %52, %.preheader
  %55 = phi i64 [ %53, %52 ], [ %37, %.preheader ]
  %56 = icmp ugt i32 %43, 65535
  br i1 %56, label %57, label %59, !prof !356

57:                                               ; preds = %54
  %58 = add i64 %36, %2
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i64 [ %58, %57 ], [ %55, %54 ]
  %61 = add nuw i64 %36, 1
  %62 = icmp eq i64 %61, %30
  br i1 %62, label %63, label %.preheader, !llvm.loop !357

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %2
  %65 = getelementptr inbounds i8, ptr %64, i64 -8
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %65, ptr %66, align 8, !tbaa !251
  %67 = icmp eq i64 %60, 0
  br i1 %67, label %163, label %68

68:                                               ; preds = %63
  %69 = icmp ugt i64 %60, %30
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  br i1 %69, label %75, label %72

72:                                               ; preds = %68
  store i32 2, ptr %70, align 8, !tbaa !359
  %73 = trunc i64 %60 to i32
  %74 = add i32 %73, -1
  store i32 %74, ptr %71, align 4, !tbaa !360
  br label %163

75:                                               ; preds = %68
  store i32 1, ptr %70, align 8, !tbaa !359
  %76 = sub i64 %60, %2
  %77 = trunc i64 %76 to i32
  store i32 %77, ptr %71, align 4, !tbaa !360
  br label %163

78:                                               ; preds = %156, %18
  %79 = phi ptr [ %27, %18 ], [ %135, %156 ]
  %80 = phi i32 [ %26, %18 ], [ %157, %156 ]
  %81 = phi i32 [ %25, %18 ], [ %158, %156 ]
  %82 = phi i64 [ 0, %18 ], [ %160, %156 ]
  %83 = phi i32 [ %19, %18 ], [ %159, %156 ]
  %84 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %82
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %86 = load i32, ptr %85, align 4, !tbaa !215
  %87 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %88 = load i32, ptr %87, align 4, !tbaa !214
  %89 = icmp eq i32 %86, 0
  %90 = zext i1 %89 to i32
  %91 = load i32, ptr %84, align 4, !tbaa !212
  %92 = add i32 %91, 3
  %93 = icmp ne i32 %91, %83
  %94 = select i1 %89, i1 true, i1 %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %78
  %96 = icmp eq i32 %91, %81
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  %98 = select i1 %89, i32 1, i32 2
  br label %108

99:                                               ; preds = %95
  %100 = icmp eq i32 %91, %80
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = xor i32 %90, 3
  br label %108

103:                                              ; preds = %99
  br i1 %89, label %104, label %108

104:                                              ; preds = %103
  %105 = add i32 %83, -1
  %106 = icmp eq i32 %91, %105
  %107 = select i1 %106, i32 3, i32 %92
  br label %118

108:                                              ; preds = %103, %101, %97, %78
  %109 = phi i32 [ %98, %97 ], [ %102, %101 ], [ %92, %103 ], [ 1, %78 ]
  %110 = icmp ugt i32 %86, 65535
  br i1 %110, label %111, label %118, !prof !361

111:                                              ; preds = %108
  store i32 1, ptr %22, align 8, !tbaa !198
  %112 = load ptr, ptr %6, align 8, !tbaa !186
  %113 = ptrtoint ptr %79 to i64
  %114 = ptrtoint ptr %112 to i64
  %115 = sub i64 %113, %114
  %116 = lshr exact i64 %115, 3
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %24, align 4, !tbaa !199
  br label %118

118:                                              ; preds = %111, %108, %104
  %119 = phi i32 [ %107, %104 ], [ %109, %111 ], [ %109, %108 ]
  %120 = zext i32 %88 to i64
  %121 = trunc i32 %86 to i16
  %122 = getelementptr inbounds nuw i8, ptr %79, i64 4
  store i16 %121, ptr %122, align 4, !tbaa !191
  store i32 %119, ptr %79, align 4, !tbaa !194
  %123 = add nsw i64 %120, -3
  %124 = icmp ugt i64 %123, 65535
  br i1 %124, label %125, label %132, !prof !356

125:                                              ; preds = %118
  store i32 2, ptr %22, align 8, !tbaa !198
  %126 = load ptr, ptr %6, align 8, !tbaa !186
  %127 = ptrtoint ptr %79 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = lshr exact i64 %129, 3
  %131 = trunc i64 %130 to i32
  store i32 %131, ptr %24, align 4, !tbaa !199
  br label %132

132:                                              ; preds = %125, %118
  %133 = trunc i64 %123 to i16
  %134 = getelementptr inbounds nuw i8, ptr %79, i64 6
  store i16 %133, ptr %134, align 2, !tbaa !195
  %135 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %136 = icmp ugt i32 %119, 3
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  store i32 %81, ptr %21, align 8, !tbaa !49
  store i32 %83, ptr %20, align 4, !tbaa !49
  %138 = add i32 %119, -3
  br label %153

139:                                              ; preds = %132
  %140 = xor i1 %89, true
  %141 = sext i1 %140 to i32
  %142 = add nsw i32 %119, %141
  switch i32 %142, label %145 [
    i32 0, label %156
    i32 3, label %143
  ]

143:                                              ; preds = %139
  %144 = add i32 %83, -1
  br label %149

145:                                              ; preds = %139
  %146 = zext i32 %142 to i64
  %147 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !49
  br label %149

149:                                              ; preds = %145, %143
  %150 = phi i32 [ %144, %143 ], [ %148, %145 ]
  %151 = icmp eq i32 %142, 1
  %152 = select i1 %151, i32 %80, i32 %81
  store i32 %152, ptr %21, align 8, !tbaa !49
  store i32 %83, ptr %20, align 4, !tbaa !49
  br label %153

153:                                              ; preds = %149, %137
  %154 = phi i32 [ %152, %149 ], [ %81, %137 ]
  %155 = phi i32 [ %150, %149 ], [ %138, %137 ]
  store i32 %155, ptr %5, align 8, !tbaa !49
  br label %156

156:                                              ; preds = %153, %139
  %157 = phi i32 [ %80, %139 ], [ %154, %153 ]
  %158 = phi i32 [ %81, %139 ], [ %83, %153 ]
  %159 = phi i32 [ %83, %139 ], [ %155, %153 ]
  %160 = add nuw i64 %82, 1
  %161 = icmp eq i64 %160, %16
  br i1 %161, label %162, label %78, !llvm.loop !362

162:                                              ; preds = %156
  store ptr %135, ptr %23, align 8, !tbaa !190
  br label %163

163:                                              ; preds = %162, %75, %72, %63
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
  %172 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !212
  %174 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %173, ptr %174, align 8, !tbaa !49
  %175 = add i64 %2, 4294967293
  %176 = and i64 %175, 4294967295
  %177 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !212
  %179 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %178, ptr %179, align 4, !tbaa !49
  %180 = and i64 %169, 4294967295
  %181 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !212
  store i32 %182, ptr %5, align 8, !tbaa !49
  br label %196

183:                                              ; preds = %166
  %184 = icmp eq i64 %2, 3
  br i1 %184, label %185, label %192

185:                                              ; preds = %183
  %186 = load i32, ptr %5, align 8, !tbaa !49
  %187 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %186, ptr %187, align 8, !tbaa !49
  %188 = load i32, ptr %1, align 4, !tbaa !212
  %189 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %188, ptr %189, align 4, !tbaa !49
  %190 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %191 = load i32, ptr %190, align 4, !tbaa !212
  store i32 %191, ptr %5, align 8, !tbaa !49
  br label %196

192:                                              ; preds = %183
  %193 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %194 = load <2 x i32>, ptr %5, align 8, !tbaa !49
  store <2 x i32> %194, ptr %193, align 4, !tbaa !49
  %195 = load i32, ptr %1, align 4, !tbaa !212
  store i32 %195, ptr %5, align 8, !tbaa !49
  br label %196

196:                                              ; preds = %192, %185, %168, %163, %32, %15
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %198 = load ptr, ptr %197, align 8, !tbaa !56
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %199, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  br label %200

200:                                              ; preds = %196, %4
  %201 = phi i64 [ 0, %196 ], [ -107, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i64 %201
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp ugt i64 %2, 3
  br i1 %4, label %5, label %.loopexit13

5:                                                ; preds = %3
  %6 = add i64 %2, -3
  br label %7

7:                                                ; preds = %35, %5
  %8 = phi i64 [ %21, %35 ], [ 0, %5 ]
  %9 = phi i64 [ %27, %35 ], [ 0, %5 ]
  %10 = phi i64 [ %33, %35 ], [ 0, %5 ]
  %11 = phi i64 [ %36, %35 ], [ 0, %5 ]
  %12 = phi i64 [ %15, %35 ], [ 0, %5 ]
  %.split = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %14 = load i64, ptr %13, align 1, !tbaa !114
  %15 = add i64 %14, %12
  %16 = icmp ugt i64 %14, 4294967295
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %7
  %18 = or disjoint i64 %11, 1
  %.split4 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %18
  %19 = getelementptr inbounds nuw i8, ptr %.split4, i64 4
  %20 = load i64, ptr %19, align 1, !tbaa !114
  %21 = add i64 %20, %8
  %22 = icmp ugt i64 %20, 4294967295
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %17
  %24 = or disjoint i64 %11, 2
  %.split5 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %24
  %25 = getelementptr inbounds nuw i8, ptr %.split5, i64 4
  %26 = load i64, ptr %25, align 1, !tbaa !114
  %27 = add i64 %26, %9
  %28 = icmp ugt i64 %26, 4294967295
  br i1 %28, label %29, label %.loopexit

29:                                               ; preds = %23
  %30 = or disjoint i64 %11, 3
  %.split6 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %30
  %31 = getelementptr inbounds nuw i8, ptr %.split6, i64 4
  %32 = load i64, ptr %31, align 1, !tbaa !114
  %33 = add i64 %32, %10
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %35, label %.loopexit

35:                                               ; preds = %29
  %36 = add i64 %11, 4
  %37 = icmp ult i64 %36, %6
  br i1 %37, label %7, label %.loopexit13, !llvm.loop !363

.loopexit13:                                      ; preds = %35, %3
  %38 = phi i64 [ 0, %3 ], [ %21, %35 ]
  %39 = phi i64 [ 0, %3 ], [ %27, %35 ]
  %40 = phi i64 [ 0, %3 ], [ %33, %35 ]
  %41 = phi i64 [ 0, %3 ], [ %36, %35 ]
  %42 = phi i64 [ 0, %3 ], [ %15, %35 ]
  %43 = icmp ult i64 %41, %2
  br i1 %43, label %.preheader, label %.loopexit8

.preheader:                                       ; preds = %.loopexit13, %50
  %44 = phi i64 [ %48, %50 ], [ %42, %.loopexit13 ]
  %45 = phi i64 [ %51, %50 ], [ %41, %.loopexit13 ]
  %.split7 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %45
  %46 = getelementptr inbounds nuw i8, ptr %.split7, i64 4
  %47 = load i64, ptr %46, align 1, !tbaa !114
  %48 = add i64 %47, %44
  %49 = icmp ugt i64 %47, 4294967295
  br i1 %49, label %50, label %.loopexit

50:                                               ; preds = %.preheader
  %51 = add i64 %45, 1
  %52 = icmp eq i64 %51, %2
  br i1 %52, label %.loopexit8, label %.preheader, !llvm.loop !364

.loopexit8:                                       ; preds = %50, %.loopexit13
  store i64 -107, ptr %0, align 8, !tbaa !365
  br label %67

.loopexit:                                        ; preds = %29, %23, %17, %7, %.preheader
  %53 = phi i64 [ %38, %.preheader ], [ %21, %23 ], [ %21, %17 ], [ %8, %7 ], [ %21, %29 ]
  %54 = phi i64 [ %39, %.preheader ], [ %27, %23 ], [ %9, %17 ], [ %9, %7 ], [ %27, %29 ]
  %55 = phi i64 [ %40, %.preheader ], [ %10, %23 ], [ %10, %17 ], [ %10, %7 ], [ %33, %29 ]
  %56 = phi i64 [ %45, %.preheader ], [ %24, %23 ], [ %18, %17 ], [ %11, %7 ], [ %30, %29 ]
  %57 = phi i64 [ %48, %.preheader ], [ %15, %7 ], [ %15, %17 ], [ %15, %23 ], [ %15, %29 ]
  %58 = add i64 %56, 1
  store i64 %58, ptr %0, align 8, !tbaa !365
  %59 = add i64 %54, %53
  %60 = add i64 %59, %55
  %61 = add i64 %60, %57
  %62 = and i64 %61, 4294967295
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %62, ptr %63, align 8, !tbaa !367
  %64 = lshr i64 %61, 32
  %65 = add nuw nsw i64 %62, %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %65, ptr %66, align 8, !tbaa !368
  br label %67

67:                                               ; preds = %.loopexit, %.loopexit8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSequencesAndLiterals(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #1 {
  %10 = icmp ult i64 %7, %6
  br i1 %10, label %190, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %8)
  %13 = icmp ult i64 %12, -119
  br i1 %13, label %14, label %190

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %17 = load i32, ptr %16, align 4, !tbaa !349
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %190, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %21 = load i32, ptr %20, align 8, !tbaa !369
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %190

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %25 = load i32, ptr %24, align 4, !tbaa !245
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %190

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %29 = load i32, ptr %28, align 8, !tbaa !184
  %30 = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %15, i64 noundef %8, i32 noundef %29)
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %32 = sub i64 %2, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %34 = load i32, ptr %33, align 8, !tbaa !351
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  switch i64 %4, label %47 [
    i64 0, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread
    i64 1, label %37
  ]

37:                                               ; preds = %27
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !215
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = icmp ugt i64 %32, 2
  br i1 %42, label %43, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

43:                                               ; preds = %41
  store i16 1, ptr %31, align 1, !tbaa !231
  %44 = getelementptr inbounds nuw i8, ptr %31, i64 2
  store i8 0, ptr %44, align 1, !tbaa !196
  %45 = getelementptr inbounds nuw i8, ptr %31, i64 3
  %46 = add i64 %32, -3
  br label %47

47:                                               ; preds = %43, %37, %27
  %48 = phi ptr [ %31, %37 ], [ %31, %27 ], [ %45, %43 ]
  %49 = phi i64 [ 0, %37 ], [ 0, %27 ], [ 3, %43 ]
  %50 = phi i64 [ %32, %37 ], [ %32, %27 ], [ %46, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 776
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %63

63:                                               ; preds = %170, %47
  %64 = phi ptr [ %48, %47 ], [ %181, %170 ]
  %65 = phi i64 [ %49, %47 ], [ %180, %170 ]
  %66 = phi i64 [ %8, %47 ], [ %145, %170 ]
  %67 = phi i64 [ %6, %47 ], [ %159, %170 ]
  %68 = phi ptr [ %5, %47 ], [ %160, %170 ]
  %69 = phi i64 [ %4, %47 ], [ %143, %170 ]
  %70 = phi ptr [ %3, %47 ], [ %142, %170 ]
  %71 = phi i64 [ %50, %47 ], [ %182, %170 ]
  %72 = icmp ugt i64 %69, 3
  br i1 %72, label %73, label %.loopexit24.i

73:                                               ; preds = %63
  %74 = add i64 %69, -3
  br label %75

75:                                               ; preds = %103, %73
  %76 = phi i64 [ %89, %103 ], [ 0, %73 ]
  %77 = phi i64 [ %95, %103 ], [ 0, %73 ]
  %78 = phi i64 [ %101, %103 ], [ 0, %73 ]
  %79 = phi i64 [ %104, %103 ], [ 0, %73 ]
  %80 = phi i64 [ %83, %103 ], [ 0, %73 ]
  %.split.i = getelementptr inbounds nuw [16 x i8], ptr %70, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %.split.i, i64 4
  %82 = load i64, ptr %81, align 1, !tbaa !114, !noalias !370
  %83 = add i64 %82, %80
  %84 = icmp ugt i64 %82, 4294967295
  br i1 %84, label %85, label %.loopexit.i

85:                                               ; preds = %75
  %86 = or disjoint i64 %79, 1
  %.split13.i = getelementptr inbounds nuw [16 x i8], ptr %70, i64 %86
  %87 = getelementptr inbounds nuw i8, ptr %.split13.i, i64 4
  %88 = load i64, ptr %87, align 1, !tbaa !114, !noalias !370
  %89 = add i64 %88, %76
  %90 = icmp ugt i64 %88, 4294967295
  br i1 %90, label %91, label %.loopexit.i

91:                                               ; preds = %85
  %92 = or disjoint i64 %79, 2
  %.split14.i = getelementptr inbounds nuw [16 x i8], ptr %70, i64 %92
  %93 = getelementptr inbounds nuw i8, ptr %.split14.i, i64 4
  %94 = load i64, ptr %93, align 1, !tbaa !114, !noalias !370
  %95 = add i64 %94, %77
  %96 = icmp ugt i64 %94, 4294967295
  br i1 %96, label %97, label %.loopexit.i

97:                                               ; preds = %91
  %98 = or disjoint i64 %79, 3
  %.split15.i = getelementptr inbounds nuw [16 x i8], ptr %70, i64 %98
  %99 = getelementptr inbounds nuw i8, ptr %.split15.i, i64 4
  %100 = load i64, ptr %99, align 1, !tbaa !114, !noalias !370
  %101 = add i64 %100, %78
  %102 = icmp ugt i64 %100, 4294967295
  br i1 %102, label %103, label %.loopexit.i

103:                                              ; preds = %97
  %104 = add i64 %79, 4
  %105 = icmp ult i64 %104, %74
  br i1 %105, label %75, label %.loopexit24.i, !llvm.loop !363

.loopexit24.i:                                    ; preds = %103, %63
  %106 = phi i64 [ 0, %63 ], [ %89, %103 ]
  %107 = phi i64 [ 0, %63 ], [ %95, %103 ]
  %108 = phi i64 [ 0, %63 ], [ %101, %103 ]
  %109 = phi i64 [ 0, %63 ], [ %104, %103 ]
  %110 = phi i64 [ 0, %63 ], [ %83, %103 ]
  %111 = icmp ult i64 %109, %69
  br i1 %111, label %.preheader.i, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

.preheader.i:                                     ; preds = %.loopexit24.i, %118
  %112 = phi i64 [ %116, %118 ], [ %110, %.loopexit24.i ]
  %113 = phi i64 [ %119, %118 ], [ %109, %.loopexit24.i ]
  %.split16.i = getelementptr inbounds nuw [16 x i8], ptr %70, i64 %113
  %114 = getelementptr inbounds nuw i8, ptr %.split16.i, i64 4
  %115 = load i64, ptr %114, align 1, !tbaa !114, !noalias !370
  %116 = add i64 %115, %112
  %117 = icmp ugt i64 %115, 4294967295
  br i1 %117, label %118, label %.loopexit.i

118:                                              ; preds = %.preheader.i
  %119 = add i64 %113, 1
  %120 = icmp eq i64 %119, %69
  br i1 %120, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread, label %.preheader.i, !llvm.loop !364

.loopexit.i:                                      ; preds = %97, %91, %85, %75, %.preheader.i
  %121 = phi i64 [ %106, %.preheader.i ], [ %89, %97 ], [ %89, %91 ], [ %89, %85 ], [ %76, %75 ]
  %122 = phi i64 [ %107, %.preheader.i ], [ %95, %97 ], [ %95, %91 ], [ %77, %85 ], [ %77, %75 ]
  %123 = phi i64 [ %108, %.preheader.i ], [ %101, %97 ], [ %78, %91 ], [ %78, %85 ], [ %78, %75 ]
  %124 = phi i64 [ %113, %.preheader.i ], [ %98, %97 ], [ %92, %91 ], [ %86, %85 ], [ %79, %75 ]
  %125 = phi i64 [ %116, %.preheader.i ], [ %83, %75 ], [ %83, %85 ], [ %83, %91 ], [ %83, %97 ]
  %126 = add i64 %124, 1
  %127 = add i64 %122, %121
  %128 = add i64 %127, %123
  %129 = add i64 %128, %125
  %130 = and i64 %129, 4294967295
  %131 = lshr i64 %129, 32
  %132 = icmp eq i64 %126, %69
  %133 = icmp ult i64 %126, -119
  br i1 %133, label %134, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

134:                                              ; preds = %.loopexit.i
  %135 = icmp ugt i64 %130, %67
  br i1 %135, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr %52, align 8, !tbaa !200
  store ptr %137, ptr %53, align 8, !tbaa !201
  %138 = load ptr, ptr %51, align 8, !tbaa !186
  store ptr %138, ptr %54, align 8, !tbaa !190
  store i32 0, ptr %55, align 8, !tbaa !198
  %139 = tail call i64 @ZSTD_convertBlockSequences(ptr noundef nonnull %0, ptr noundef nonnull %70, i64 noundef %126, i32 noundef %36)
  %140 = icmp ult i64 %139, -119
  br i1 %140, label %141, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

141:                                              ; preds = %136
  %142 = getelementptr inbounds nuw [16 x i8], ptr %70, i64 %126
  %143 = sub i64 %69, %126
  %144 = add nuw nsw i64 %131, %130
  %145 = sub i64 %66, %144
  %146 = icmp ult i64 %71, 3
  br i1 %146, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds nuw i8, ptr %64, i64 3
  %149 = add i64 %71, -3
  %150 = load ptr, ptr %56, align 8, !tbaa !55
  %151 = load ptr, ptr %57, align 8, !tbaa !56
  %152 = load ptr, ptr %58, align 8, !tbaa !57
  %153 = load i64, ptr %59, align 8, !tbaa !58
  %154 = load i32, ptr %60, align 8, !tbaa !8
  %155 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %148, i64 noundef %149, ptr noundef %68, i64 noundef %130, ptr noundef nonnull %51, ptr noundef %150, ptr noundef %151, ptr noundef nonnull %15, ptr noundef %152, i64 noundef %153, i32 noundef %154)
  %.fr = freeze i64 %155
  %156 = icmp ult i64 %.fr, -119
  br i1 %156, label %157, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

157:                                              ; preds = %147
  %158 = load i64, ptr %61, align 8, !tbaa !243
  %159 = sub i64 %67, %130
  %160 = getelementptr inbounds nuw i8, ptr %68, i64 %130
  %161 = add i64 %.fr, -1
  %162 = icmp ult i64 %161, %158
  br i1 %162, label %163, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

163:                                              ; preds = %157
  %164 = load ptr, ptr %56, align 8, !tbaa !354
  %165 = load ptr, ptr %57, align 8, !tbaa !355
  store ptr %165, ptr %56, align 8, !tbaa !354
  store ptr %164, ptr %57, align 8, !tbaa !355
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 5604
  %167 = load i32, ptr %166, align 4, !tbaa !167
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 1, ptr %166, align 4, !tbaa !167
  br label %170

170:                                              ; preds = %169, %163
  %171 = select i1 %132, i32 5, i32 4
  %172 = trunc i64 %.fr to i32
  %173 = shl i32 %172, 3
  %174 = or disjoint i32 %173, %171
  %175 = trunc i32 %174 to i16
  store i16 %175, ptr %64, align 1, !tbaa !231
  %176 = lshr i32 %173, 16
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %64, i64 2
  store i8 %177, ptr %178, align 1, !tbaa !196
  %179 = add nuw i64 %.fr, 3
  %180 = add i64 %179, %65
  %181 = getelementptr inbounds nuw i8, ptr %64, i64 %179
  %182 = sub i64 %71, %179
  store i32 0, ptr %62, align 8, !tbaa !249
  br i1 %132, label %183, label %63

183:                                              ; preds = %170
  %184 = icmp eq i64 %159, 0
  %185 = icmp eq i64 %145, 0
  %or.cond = select i1 %184, i1 %185, i1 false
  br i1 %or.cond, label %ZSTD_compressSequencesAndLiterals_internal.exit, label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

ZSTD_compressSequencesAndLiterals_internal.exit:  ; preds = %183
  %186 = icmp ult i64 %180, -119
  %spec.select = select i1 %186, i64 %30, i64 0
  br label %ZSTD_compressSequencesAndLiterals_internal.exit.thread

ZSTD_compressSequencesAndLiterals_internal.exit.thread: ; preds = %157, %.loopexit24.i, %147, %136, %.loopexit.i, %134, %141, %118, %ZSTD_compressSequencesAndLiterals_internal.exit, %41, %183, %27
  %187 = phi i64 [ -107, %183 ], [ %180, %ZSTD_compressSequencesAndLiterals_internal.exit ], [ -107, %118 ], [ -107, %27 ], [ -70, %41 ], [ -70, %141 ], [ -107, %134 ], [ %126, %.loopexit.i ], [ %139, %136 ], [ %.fr, %147 ], [ -107, %.loopexit24.i ], [ -49, %157 ]
  %188 = phi i64 [ 0, %183 ], [ %spec.select, %ZSTD_compressSequencesAndLiterals_internal.exit ], [ 0, %118 ], [ %4, %27 ], [ 0, %41 ], [ 0, %141 ], [ 0, %134 ], [ 0, %.loopexit.i ], [ 0, %136 ], [ 0, %147 ], [ 0, %.loopexit24.i ], [ 0, %157 ]
  %189 = add i64 %188, %187
  br label %190

190:                                              ; preds = %ZSTD_compressSequencesAndLiterals_internal.exit.thread, %23, %19, %14, %11, %9
  %191 = phi i64 [ %12, %11 ], [ -66, %9 ], [ -14, %14 ], [ -40, %19 ], [ -14, %23 ], [ %189, %ZSTD_compressSequencesAndLiterals_internal.exit.thread ]
  ret i64 %191
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_flushStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

12:                                               ; preds = %11, %7
  %13 = phi i64 [ %10, %7 ], [ 0, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %13, ptr %14, align 8, !tbaa !207
  %15 = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_endStream(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
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

10:                                               ; preds = %9, %7
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
  %19 = load i32, ptr %18, align 4, !tbaa !341
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
  tail call void @llvm.ubsantrap(i8 12) #32, !nosanitize !143
  unreachable, !nosanitize !143

29:                                               ; preds = %22, %17
  %30 = phi i32 [ 0, %17 ], [ %25, %22 ]
  %31 = sext i32 %30 to i64
  %32 = add nuw i64 %21, %11
  %33 = add i64 %32, %31
  br label %34

34:                                               ; preds = %29, %13, %10
  %35 = phi i64 [ %33, %29 ], [ %11, %10 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ZSTD_defaultCLevel() local_unnamed_addr #0 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_getCParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_compressionParameters) align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr dead_on_unwind noalias writable align 4 %0, i32 noundef %1, i64 noundef %6, i64 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_getParams(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_parameters) align 4 captures(none) initializes((0, 40)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
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
define dso_local void @ZSTD_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((216, 232)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %6, align 8, !tbaa !127
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %5, ptr %7, align 8, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ZSTD_CCtxParams_registerSequenceProducer(ptr noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr null, ptr %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %6, align 8, !tbaa !127
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %5, ptr %7, align 8, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

declare i64 @ZSTD_ldm_getTableSize(ptr noundef byval(%struct.ldmParams_t) align 8) local_unnamed_addr #10

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 1) i64 @ZSTD_resetCCtx_internal(ptr noundef initializes((240, 464), (968, 972)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #1 {
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
  tail call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %10, ptr noundef nonnull %14) #29
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

52:                                               ; preds = %40, %36
  %53 = phi i64 [ 0, %36 ], [ %51, %40 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 364
  %55 = load i32, ptr %54, align 4, !tbaa !103
  %56 = icmp eq i32 %55, 0
  %57 = add i64 %25, %22
  %58 = select i1 %56, i64 %57, i64 0
  br label %59

59:                                               ; preds = %52, %15
  %60 = phi i64 [ %53, %52 ], [ 0, %15 ]
  %61 = phi i64 [ %58, %52 ], [ 0, %15 ]
  %62 = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %25) #29
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
  br i1 %92, label %93, label %624

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
  tail call void @llvm.ubsantrap(i8 0) #32, !nosanitize !143
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

125:                                              ; preds = %121, %104
  %126 = phi i1 [ false, %104 ], [ %124, %121 ]
  %127 = select i1 %111, i1 true, i1 %126
  br i1 %127, label %128, label %181

128:                                              ; preds = %125
  br i1 %95, label %129, label %624

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
  tail call void %132(ptr noundef %134, ptr noundef nonnull %105) #29
  br label %140

139:                                              ; preds = %136
  tail call void @free(ptr noundef nonnull %105) #29
  br label %140

140:                                              ; preds = %139, %138, %129
  %141 = load ptr, ptr %130, align 8, !tbaa !46
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %133, align 8
  %145 = tail call ptr %141(ptr noundef %144, i64 noundef %91) #29
  br label %148

146:                                              ; preds = %140
  %147 = tail call noalias ptr @malloc(i64 noundef %91) #30
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi ptr [ %145, %143 ], [ %147, %146 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %624, label %151

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
  br label %624

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
  br label %624

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
  br label %624

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw i8, ptr %149, i64 20184
  store ptr %178, ptr %153, align 8, !tbaa !52
  store ptr %178, ptr %154, align 8, !tbaa !54
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store ptr %168, ptr %179, align 8, !tbaa !57
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i64 8920, ptr %180, align 8, !tbaa !58
  store ptr %178, ptr %112, align 8, !tbaa !53
  store i8 0, ptr %162, align 8, !tbaa !51
  br label %192

181:                                              ; preds = %125
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %183 = load ptr, ptr %182, align 8, !tbaa !52
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %185 = load i32, ptr %184, align 8, !tbaa !325
  %186 = and i64 %108, 63
  %187 = sub nsw i64 0, %186
  %188 = icmp ugt i32 %185, 1
  store ptr %183, ptr %112, align 8, !tbaa !53
  %189 = getelementptr inbounds i8, ptr %107, i64 %187
  store ptr %189, ptr %114, align 8, !tbaa !388
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %190, align 8, !tbaa !51
  br i1 %188, label %191, label %192

191:                                              ; preds = %181
  store i32 1, ptr %184, align 8, !tbaa !325
  br label %192

192:                                              ; preds = %191, %181, %177
  %193 = phi ptr [ %160, %177 ], [ %184, %181 ], [ %184, %191 ]
  %194 = phi ptr [ %162, %177 ], [ %190, %181 ], [ %190, %191 ]
  %195 = phi i32 [ 1, %177 ], [ %80, %181 ], [ %80, %191 ]
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 3496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %197, ptr noundef nonnull align 4 dereferenceable(28) %16, i64 28, i1 false), !tbaa.struct !74
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %199 = load i32, ptr %198, align 8, !tbaa !109
  %200 = icmp eq i32 %199, 1
  %201 = zext i1 %200 to i32
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i32 %201, ptr %202, align 8, !tbaa !391
  %203 = add i64 %2, 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i64 %203, ptr %204, align 8, !tbaa !115
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %206 = icmp eq i64 %2, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %205, i8 0, i64 16, i1 false)
  br i1 %206, label %207, label %209

207:                                              ; preds = %192
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %208, align 8, !tbaa !392
  br label %209

209:                                              ; preds = %207, %192
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 %25, ptr %210, align 8, !tbaa !243
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 808
  %212 = tail call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(none) %211, i64 noundef 0) #29
  store i32 1, ptr %0, align 8, !tbaa !170
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 0, ptr %213, align 8, !tbaa !184
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 0, ptr %214, align 8, !tbaa !185
  %215 = load ptr, ptr %63, align 8, !tbaa !55
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %216, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !49
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 2056
  store i32 0, ptr %217, align 8, !tbaa !166
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 5604
  store i32 0, ptr %218, align 4, !tbaa !167
  %219 = getelementptr inbounds nuw i8, ptr %215, i64 5608
  store i32 0, ptr %219, align 8, !tbaa !168
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 5612
  store i32 0, ptr %220, align 4, !tbaa !169
  %221 = load i32, ptr %85, align 8, !tbaa !76
  %222 = tail call fastcc i64 @ZSTD_reset_matchState(ptr noundef nonnull %64, ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %221, i32 noundef %4, i32 noundef %195, i32 noundef 1)
  %223 = icmp ult i64 %222, -119
  br i1 %223, label %224, label %624

224:                                              ; preds = %209
  %225 = shl i64 %34, 3
  %226 = add i64 %225, 56
  %227 = and i64 %226, -64
  %228 = load i32, ptr %193, align 8, !tbaa !325
  %229 = icmp ult i32 %228, 2
  br i1 %229, label %230, label %250

230:                                              ; preds = %224
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %230
  %233 = load ptr, ptr %196, align 8, !tbaa !52
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %233, ptr %234, align 8, !tbaa !54
  %235 = load ptr, ptr %106, align 8, !tbaa !60
  %236 = ptrtoint ptr %235 to i64
  %237 = and i64 %236, 63
  %238 = sub nsw i64 0, %237
  %239 = getelementptr inbounds i8, ptr %235, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %239, ptr %240, align 8, !tbaa !389
  %241 = ptrtoint ptr %233 to i64
  %242 = sub i64 0, %241
  %243 = and i64 %242, 63
  %244 = getelementptr inbounds nuw i8, ptr %233, i64 %243
  %245 = icmp ugt ptr %244, %235
  br i1 %245, label %266, label %246

246:                                              ; preds = %232
  store ptr %244, ptr %196, align 8, !tbaa !52
  store ptr %244, ptr %112, align 8, !tbaa !53
  %247 = icmp eq i64 %243, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %246
  store ptr %244, ptr %234, align 8, !tbaa !54
  br label %249

249:                                              ; preds = %248, %246, %230
  store i32 2, ptr %193, align 8, !tbaa !325
  br label %250

250:                                              ; preds = %249, %224
  %251 = phi i32 [ 2, %249 ], [ %228, %224 ]
  %252 = icmp eq i64 %227, 0
  br i1 %252, label %266, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr %114, align 8, !tbaa !388
  %255 = sub i64 0, %227
  %256 = getelementptr inbounds i8, ptr %254, i64 %255
  %257 = load ptr, ptr %112, align 8, !tbaa !53
  %258 = icmp ult ptr %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %266

260:                                              ; preds = %253
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %262 = load ptr, ptr %261, align 8, !tbaa !54
  %263 = icmp ult ptr %256, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store ptr %256, ptr %261, align 8, !tbaa !54
  br label %265

265:                                              ; preds = %264, %260
  store ptr %256, ptr %114, align 8, !tbaa !388
  br label %266

266:                                              ; preds = %265, %259, %250, %232
  %267 = phi i32 [ %251, %250 ], [ %251, %259 ], [ %251, %265 ], [ 0, %232 ]
  %268 = phi ptr [ null, %250 ], [ null, %259 ], [ %256, %265 ], [ null, %232 ]
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr %268, ptr %269, align 8, !tbaa !252
  %270 = load i32, ptr %10, align 8, !tbaa !78
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %369

272:                                              ; preds = %266
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 340
  %274 = load i32, ptr %273, align 4, !tbaa !97
  %275 = zext nneg i32 %274 to i64
  %276 = shl i64 8, %275
  %277 = add nuw i64 %276, 56
  %278 = and i64 %277, -64
  %279 = icmp ult i32 %267, 2
  br i1 %279, label %280, label %298

280:                                              ; preds = %272
  %281 = load ptr, ptr %196, align 8, !tbaa !52
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %281, ptr %282, align 8, !tbaa !54
  %283 = load ptr, ptr %106, align 8, !tbaa !60
  %284 = ptrtoint ptr %283 to i64
  %285 = and i64 %284, 63
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, ptr %283, i64 %286
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %287, ptr %288, align 8, !tbaa !389
  %289 = ptrtoint ptr %281 to i64
  %290 = sub i64 0, %289
  %291 = and i64 %290, 63
  %292 = getelementptr inbounds nuw i8, ptr %281, i64 %291
  %293 = icmp ugt ptr %292, %283
  br i1 %293, label %313, label %294

294:                                              ; preds = %280
  store ptr %292, ptr %196, align 8, !tbaa !52
  store ptr %292, ptr %112, align 8, !tbaa !53
  %295 = icmp eq i64 %291, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %294
  store ptr %292, ptr %282, align 8, !tbaa !54
  br label %297

297:                                              ; preds = %296, %294
  store i32 2, ptr %193, align 8, !tbaa !325
  br label %298

298:                                              ; preds = %297, %272
  %299 = icmp eq i64 %278, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %298
  %301 = load ptr, ptr %114, align 8, !tbaa !388
  %302 = sub i64 0, %278
  %303 = getelementptr inbounds i8, ptr %301, i64 %302
  %304 = load ptr, ptr %112, align 8, !tbaa !53
  %305 = icmp ult ptr %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %313

307:                                              ; preds = %300
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %309 = load ptr, ptr %308, align 8, !tbaa !54
  %310 = icmp ult ptr %303, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  store ptr %303, ptr %308, align 8, !tbaa !54
  br label %312

312:                                              ; preds = %311, %307
  store ptr %303, ptr %114, align 8, !tbaa !388
  br label %313

313:                                              ; preds = %312, %306, %298, %280
  %314 = phi ptr [ null, %298 ], [ null, %306 ], [ %303, %312 ], [ null, %280 ]
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %314, ptr %316, align 8, !tbaa !393
  tail call void @llvm.memset.p0.i64(ptr align 4 %314, i8 0, i64 %276, i1 false)
  %317 = mul i64 %62, 12
  %318 = add i64 %317, 60
  %319 = and i64 %318, -64
  %320 = load i32, ptr %193, align 8, !tbaa !325
  %321 = icmp ult i32 %320, 2
  br i1 %321, label %322, label %342

322:                                              ; preds = %313
  %323 = icmp eq i32 %320, 0
  br i1 %323, label %324, label %341

324:                                              ; preds = %322
  %325 = load ptr, ptr %196, align 8, !tbaa !52
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %325, ptr %326, align 8, !tbaa !54
  %327 = load ptr, ptr %106, align 8, !tbaa !60
  %328 = ptrtoint ptr %327 to i64
  %329 = and i64 %328, 63
  %330 = sub nsw i64 0, %329
  %331 = getelementptr inbounds i8, ptr %327, i64 %330
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %331, ptr %332, align 8, !tbaa !389
  %333 = ptrtoint ptr %325 to i64
  %334 = sub i64 0, %333
  %335 = and i64 %334, 63
  %336 = getelementptr inbounds nuw i8, ptr %325, i64 %335
  %337 = icmp ugt ptr %336, %327
  br i1 %337, label %358, label %338

338:                                              ; preds = %324
  store ptr %336, ptr %196, align 8, !tbaa !52
  store ptr %336, ptr %112, align 8, !tbaa !53
  %339 = icmp eq i64 %335, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %338
  store ptr %336, ptr %326, align 8, !tbaa !54
  br label %341

341:                                              ; preds = %340, %338, %322
  store i32 2, ptr %193, align 8, !tbaa !325
  br label %342

342:                                              ; preds = %341, %313
  %343 = phi i32 [ 2, %341 ], [ %320, %313 ]
  %344 = icmp eq i64 %319, 0
  br i1 %344, label %358, label %345

345:                                              ; preds = %342
  %346 = load ptr, ptr %114, align 8, !tbaa !388
  %347 = sub i64 0, %319
  %348 = getelementptr inbounds i8, ptr %346, i64 %347
  %349 = load ptr, ptr %112, align 8, !tbaa !53
  %350 = icmp ult ptr %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %358

352:                                              ; preds = %345
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %354 = load ptr, ptr %353, align 8, !tbaa !54
  %355 = icmp ult ptr %348, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  store ptr %348, ptr %353, align 8, !tbaa !54
  br label %357

357:                                              ; preds = %356, %352
  store ptr %348, ptr %114, align 8, !tbaa !388
  br label %358

358:                                              ; preds = %357, %351, %342, %324
  %359 = phi i32 [ %343, %342 ], [ %343, %351 ], [ %343, %357 ], [ 0, %324 ]
  %360 = phi ptr [ null, %342 ], [ null, %351 ], [ %348, %357 ], [ null, %324 ]
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store ptr %360, ptr %361, align 8, !tbaa !394
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i64 %62, ptr %362, align 8, !tbaa !395
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 0, ptr %363, align 8
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr @.str, ptr %364, align 8, !tbaa !240
  %365 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr @.str, ptr %365, align 8, !tbaa !237
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 2, ptr %366, align 8, !tbaa !239
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i32 2, ptr %367, align 4, !tbaa !238
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %315, align 8, !tbaa !236
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i32 0, ptr %368, align 8, !tbaa !396
  br label %369

369:                                              ; preds = %358, %266
  %370 = phi i32 [ %359, %358 ], [ %267, %266 ]
  %371 = load ptr, ptr %28, align 8, !tbaa !127
  %372 = icmp eq ptr %371, null
  br i1 %372, label %421, label %373

373:                                              ; preds = %369
  %374 = udiv i64 %25, 3
  %375 = lshr i64 %25, 10
  %376 = add nuw nsw i64 %375, 2
  %377 = add nuw nsw i64 %376, %374
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  store i64 %377, ptr %378, align 8, !tbaa !397
  %379 = shl i64 %377, 4
  %380 = add i64 %379, 48
  %381 = and i64 %380, -64
  %382 = icmp ult i32 %370, 2
  br i1 %382, label %383, label %401

383:                                              ; preds = %373
  %384 = load ptr, ptr %196, align 8, !tbaa !52
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %384, ptr %385, align 8, !tbaa !54
  %386 = load ptr, ptr %106, align 8, !tbaa !60
  %387 = ptrtoint ptr %386 to i64
  %388 = and i64 %387, 63
  %389 = sub nsw i64 0, %388
  %390 = getelementptr inbounds i8, ptr %386, i64 %389
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %390, ptr %391, align 8, !tbaa !389
  %392 = ptrtoint ptr %384 to i64
  %393 = sub i64 0, %392
  %394 = and i64 %393, 63
  %395 = getelementptr inbounds nuw i8, ptr %384, i64 %394
  %396 = icmp ugt ptr %395, %386
  br i1 %396, label %417, label %397

397:                                              ; preds = %383
  store ptr %395, ptr %196, align 8, !tbaa !52
  store ptr %395, ptr %112, align 8, !tbaa !53
  %398 = icmp eq i64 %394, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %397
  store ptr %395, ptr %385, align 8, !tbaa !54
  br label %400

400:                                              ; preds = %399, %397
  store i32 2, ptr %193, align 8, !tbaa !325
  br label %401

401:                                              ; preds = %400, %373
  %402 = phi i32 [ 2, %400 ], [ %370, %373 ]
  %403 = icmp eq i64 %381, 0
  br i1 %403, label %417, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %114, align 8, !tbaa !388
  %406 = sub i64 0, %381
  %407 = getelementptr inbounds i8, ptr %405, i64 %406
  %408 = load ptr, ptr %112, align 8, !tbaa !53
  %409 = icmp ult ptr %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %404
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %417

411:                                              ; preds = %404
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %413 = load ptr, ptr %412, align 8, !tbaa !54
  %414 = icmp ult ptr %407, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store ptr %407, ptr %412, align 8, !tbaa !54
  br label %416

416:                                              ; preds = %415, %411
  store ptr %407, ptr %114, align 8, !tbaa !388
  br label %417

417:                                              ; preds = %416, %410, %401, %383
  %418 = phi i32 [ %402, %401 ], [ %402, %410 ], [ %402, %416 ], [ 0, %383 ]
  %419 = phi ptr [ null, %401 ], [ null, %410 ], [ %407, %416 ], [ null, %383 ]
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  store ptr %419, ptr %420, align 8, !tbaa !398
  br label %421

421:                                              ; preds = %417, %369
  %422 = phi i32 [ %418, %417 ], [ %370, %369 ]
  %423 = icmp ult i32 %422, 3
  br i1 %423, label %424, label %444

424:                                              ; preds = %421
  %425 = icmp eq i32 %422, 0
  br i1 %425, label %426, label %443

426:                                              ; preds = %424
  %427 = load ptr, ptr %196, align 8, !tbaa !52
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %427, ptr %428, align 8, !tbaa !54
  %429 = load ptr, ptr %106, align 8, !tbaa !60
  %430 = ptrtoint ptr %429 to i64
  %431 = and i64 %430, 63
  %432 = sub nsw i64 0, %431
  %433 = getelementptr inbounds i8, ptr %429, i64 %432
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %433, ptr %434, align 8, !tbaa !389
  %435 = ptrtoint ptr %427 to i64
  %436 = sub i64 0, %435
  %437 = and i64 %436, 63
  %438 = getelementptr inbounds nuw i8, ptr %427, i64 %437
  %439 = icmp ugt ptr %438, %429
  br i1 %439, label %477, label %440

440:                                              ; preds = %426
  store ptr %438, ptr %196, align 8, !tbaa !52
  store ptr %438, ptr %112, align 8, !tbaa !53
  %441 = icmp eq i64 %437, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %440
  store ptr %438, ptr %428, align 8, !tbaa !54
  br label %443

443:                                              ; preds = %442, %440, %424
  store i32 3, ptr %193, align 8, !tbaa !325
  br label %444

444:                                              ; preds = %443, %421
  %445 = phi i32 [ %422, %421 ], [ 3, %443 ]
  %446 = load ptr, ptr %114, align 8, !tbaa !388
  %447 = sub nuw i64 -32, %25
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = load ptr, ptr %112, align 8, !tbaa !53
  %450 = icmp ult ptr %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %444
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %458

452:                                              ; preds = %444
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %454 = load ptr, ptr %453, align 8, !tbaa !54
  %455 = icmp ult ptr %448, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  store ptr %448, ptr %453, align 8, !tbaa !54
  br label %457

457:                                              ; preds = %456, %452
  store ptr %448, ptr %114, align 8, !tbaa !388
  br label %458

458:                                              ; preds = %451, %457
  %459 = phi ptr [ %448, %457 ], [ %446, %451 ]
  %460 = phi ptr [ %448, %457 ], [ null, %451 ]
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %460, ptr %461, align 8, !tbaa !399
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 %25, ptr %462, align 8, !tbaa !400
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %5, ptr %463, align 8, !tbaa !171
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i64 %61, ptr %464, align 8, !tbaa !300
  %465 = icmp eq i64 %61, 0
  br i1 %465, label %484, label %466

466:                                              ; preds = %458
  %467 = sub i64 0, %61
  %468 = getelementptr inbounds i8, ptr %459, i64 %467
  %469 = icmp ult ptr %468, %449
  br i1 %469, label %470, label %471

470:                                              ; preds = %466
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %484

471:                                              ; preds = %466
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %473 = load ptr, ptr %472, align 8, !tbaa !54
  %474 = icmp ult ptr %468, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  store ptr %468, ptr %472, align 8, !tbaa !54
  br label %476

476:                                              ; preds = %475, %471
  store ptr %468, ptr %114, align 8, !tbaa !388
  br label %484

477:                                              ; preds = %426
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr null, ptr %478, align 8, !tbaa !399
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 %25, ptr %479, align 8, !tbaa !400
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %5, ptr %480, align 8, !tbaa !171
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i64 %61, ptr %481, align 8, !tbaa !300
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store ptr null, ptr %482, align 8, !tbaa !154
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i64 %60, ptr %483, align 8, !tbaa !301
  store ptr %427, ptr %428, align 8, !tbaa !54
  store ptr %433, ptr %434, align 8, !tbaa !389
  br label %501

484:                                              ; preds = %458, %470, %476
  %485 = phi ptr [ %468, %476 ], [ %459, %470 ], [ %459, %458 ]
  %486 = phi ptr [ %468, %476 ], [ null, %470 ], [ null, %458 ]
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store ptr %486, ptr %487, align 8, !tbaa !154
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i64 %60, ptr %488, align 8, !tbaa !301
  %489 = icmp eq i64 %60, 0
  br i1 %489, label %501, label %490

490:                                              ; preds = %484
  %491 = sub i64 0, %60
  %492 = getelementptr inbounds i8, ptr %485, i64 %491
  %493 = icmp ult ptr %492, %449
  br i1 %493, label %494, label %495

494:                                              ; preds = %490
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %501

495:                                              ; preds = %490
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %497 = load ptr, ptr %496, align 8, !tbaa !54
  %498 = icmp ult ptr %492, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %495
  store ptr %492, ptr %496, align 8, !tbaa !54
  br label %500

500:                                              ; preds = %499, %495
  store ptr %492, ptr %114, align 8, !tbaa !388
  br label %501

501:                                              ; preds = %477, %500, %494, %484
  %502 = phi i32 [ %445, %484 ], [ %445, %494 ], [ %445, %500 ], [ 0, %477 ]
  %503 = phi ptr [ null, %484 ], [ null, %494 ], [ %492, %500 ], [ null, %477 ]
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store ptr %503, ptr %504, align 8, !tbaa !342
  %505 = load i32, ptr %10, align 8, !tbaa !78
  %506 = icmp eq i32 %505, 1
  br i1 %506, label %507, label %547

507:                                              ; preds = %501
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 340
  %509 = load i32, ptr %508, align 4, !tbaa !97
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %511 = load i32, ptr %510, align 8, !tbaa !99
  %512 = sub i32 %509, %511
  %513 = zext nneg i32 %512 to i64
  %514 = shl nuw i64 1, %513
  %515 = icmp ult i32 %502, 3
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 736
  br i1 %515, label %517, label %._crit_edge

._crit_edge:                                      ; preds = %507
  %.pre = load ptr, ptr %112, align 8, !tbaa !53
  %.pre41 = load ptr, ptr %516, align 8, !tbaa !54
  br label %534

517:                                              ; preds = %507
  %518 = load ptr, ptr %196, align 8, !tbaa !52
  store ptr %518, ptr %516, align 8, !tbaa !54
  %519 = load ptr, ptr %106, align 8, !tbaa !60
  %520 = ptrtoint ptr %519 to i64
  %521 = and i64 %520, 63
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %519, i64 %522
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %523, ptr %524, align 8, !tbaa !389
  %525 = ptrtoint ptr %518 to i64
  %526 = sub i64 0, %525
  %527 = and i64 %526, 63
  %528 = getelementptr inbounds nuw i8, ptr %518, i64 %527
  %529 = icmp ule ptr %528, %519
  tail call void @llvm.assume(i1 %529)
  store ptr %528, ptr %196, align 8, !tbaa !52
  store ptr %528, ptr %112, align 8, !tbaa !53
  %530 = icmp eq i64 %527, 0
  br i1 %530, label %532, label %531

531:                                              ; preds = %517
  store ptr %528, ptr %516, align 8, !tbaa !54
  br label %532

532:                                              ; preds = %531, %517
  %533 = phi ptr [ %528, %531 ], [ %518, %517 ]
  store i32 3, ptr %193, align 8, !tbaa !325
  br label %534

534:                                              ; preds = %._crit_edge, %532
  %535 = phi ptr [ %.pre41, %._crit_edge ], [ %533, %532 ]
  %536 = phi ptr [ %.pre, %._crit_edge ], [ %528, %532 ]
  %537 = load ptr, ptr %114, align 8, !tbaa !388
  %538 = sub i64 0, %514
  %539 = getelementptr inbounds i8, ptr %537, i64 %538
  %540 = icmp uge ptr %539, %536
  tail call void @llvm.assume(i1 %540)
  %541 = icmp ult ptr %539, %535
  br i1 %541, label %542, label %544

542:                                              ; preds = %534
  %543 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %539, ptr %543, align 8, !tbaa !54
  br label %544

544:                                              ; preds = %542, %534
  store ptr %539, ptr %114, align 8, !tbaa !388
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store ptr %539, ptr %545, align 8, !tbaa !401
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %539, i8 0, i64 %514, i1 false)
  %546 = load i32, ptr %193, align 8, !tbaa !325
  br label %547

547:                                              ; preds = %544, %501
  %548 = phi i32 [ %546, %544 ], [ %502, %501 ]
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %550 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %549, i8 0, i64 40, i1 false)
  store i64 %34, ptr %550, align 8, !tbaa !358
  %551 = icmp ult i32 %548, 3
  br i1 %551, label %552, label %572

552:                                              ; preds = %547
  %553 = icmp eq i32 %548, 0
  br i1 %553, label %554, label %571

554:                                              ; preds = %552
  %555 = load ptr, ptr %196, align 8, !tbaa !52
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %555, ptr %556, align 8, !tbaa !54
  %557 = load ptr, ptr %106, align 8, !tbaa !60
  %558 = ptrtoint ptr %557 to i64
  %559 = and i64 %558, 63
  %560 = sub nsw i64 0, %559
  %561 = getelementptr inbounds i8, ptr %557, i64 %560
  %562 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %561, ptr %562, align 8, !tbaa !389
  %563 = ptrtoint ptr %555 to i64
  %564 = sub i64 0, %563
  %565 = and i64 %564, 63
  %566 = getelementptr inbounds nuw i8, ptr %555, i64 %565
  %567 = icmp ugt ptr %566, %557
  br i1 %567, label %601, label %568

568:                                              ; preds = %554
  store ptr %566, ptr %196, align 8, !tbaa !52
  store ptr %566, ptr %112, align 8, !tbaa !53
  %569 = icmp eq i64 %565, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %568
  store ptr %566, ptr %556, align 8, !tbaa !54
  br label %571

571:                                              ; preds = %570, %568, %552
  store i32 3, ptr %193, align 8, !tbaa !325
  br label %572

572:                                              ; preds = %571, %547
  %573 = icmp ugt i64 %33, %25
  br i1 %573, label %604, label %574

574:                                              ; preds = %572
  %575 = load ptr, ptr %114, align 8, !tbaa !388
  %576 = sub nsw i64 0, %34
  %577 = getelementptr inbounds i8, ptr %575, i64 %576
  %578 = load ptr, ptr %112, align 8, !tbaa !53
  %579 = icmp ult ptr %577, %578
  br i1 %579, label %580, label %581

580:                                              ; preds = %574
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %587

581:                                              ; preds = %574
  %582 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %583 = load ptr, ptr %582, align 8, !tbaa !54
  %584 = icmp ult ptr %577, %583
  br i1 %584, label %585, label %586

585:                                              ; preds = %581
  store ptr %577, ptr %582, align 8, !tbaa !54
  br label %586

586:                                              ; preds = %585, %581
  store ptr %577, ptr %114, align 8, !tbaa !388
  br label %587

587:                                              ; preds = %580, %586
  %.ph = phi ptr [ null, %580 ], [ %577, %586 ]
  %588 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %.ph, ptr %588, align 8, !tbaa !402
  %589 = load ptr, ptr %114, align 8, !tbaa !388
  %590 = sub nsw i64 0, %34
  %591 = getelementptr inbounds i8, ptr %589, i64 %590
  %592 = load ptr, ptr %112, align 8, !tbaa !53
  %593 = icmp ult ptr %591, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %587
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %606

595:                                              ; preds = %587
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %597 = load ptr, ptr %596, align 8, !tbaa !54
  %598 = icmp ult ptr %591, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %595
  store ptr %591, ptr %596, align 8, !tbaa !54
  br label %600

600:                                              ; preds = %599, %595
  store ptr %591, ptr %114, align 8, !tbaa !388
  br label %606

601:                                              ; preds = %554
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr null, ptr %602, align 8, !tbaa !402
  %603 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr null, ptr %603, align 8, !tbaa !403
  store ptr %555, ptr %556, align 8, !tbaa !54
  store ptr %561, ptr %562, align 8, !tbaa !389
  br label %620

604:                                              ; preds = %572
  %605 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %605, i8 0, i64 16, i1 false)
  br label %620

606:                                              ; preds = %594, %600
  %.ph79 = phi ptr [ null, %594 ], [ %591, %600 ]
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %.ph79, ptr %607, align 8, !tbaa !403
  %608 = load ptr, ptr %114, align 8, !tbaa !388
  %609 = sub nsw i64 0, %34
  %610 = getelementptr inbounds i8, ptr %608, i64 %609
  %611 = load ptr, ptr %112, align 8, !tbaa !53
  %612 = icmp ult ptr %610, %611
  br i1 %612, label %613, label %614

613:                                              ; preds = %606
  store i8 1, ptr %194, align 8, !tbaa !51
  br label %620

614:                                              ; preds = %606
  %615 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %616 = load ptr, ptr %615, align 8, !tbaa !54
  %617 = icmp ult ptr %610, %616
  br i1 %617, label %618, label %619

618:                                              ; preds = %614
  store ptr %610, ptr %615, align 8, !tbaa !54
  br label %619

619:                                              ; preds = %618, %614
  store ptr %610, ptr %114, align 8, !tbaa !388
  br label %620

620:                                              ; preds = %604, %601, %619, %613
  %621 = phi ptr [ null, %604 ], [ null, %613 ], [ %610, %619 ], [ null, %601 ]
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %621, ptr %622, align 8, !tbaa !404
  %623 = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %623, align 4, !tbaa !386
  br label %624

624:                                              ; preds = %620, %209, %175, %170, %166, %148, %128, %79
  %625 = phi i64 [ 0, %620 ], [ %222, %209 ], [ %91, %79 ], [ -64, %175 ], [ -64, %170 ], [ -64, %166 ], [ -64, %128 ], [ -64, %148 ]
  ret i64 %625
}

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -64, 1) i64 @ZSTD_reset_matchState(ptr noundef captures(none) initializes((24, 32), (40, 52), (112, 136), (196, 200), (248, 256), (300, 304)) %0, ptr noundef initializes((24, 32)) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #13 {
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

22:                                               ; preds = %17, %7
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 4, %25
  br label %27

27:                                               ; preds = %22, %17, %15
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

40:                                               ; preds = %37, %33, %27
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

58:                                               ; preds = %51, %45
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
  br i1 %93, label %116, label %94

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

98:                                               ; preds = %97, %58
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
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 %28
  %112 = icmp ugt ptr %111, %102
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %114, align 8, !tbaa !51
  br label %119

115:                                              ; preds = %107
  store ptr %111, ptr %75, align 8, !tbaa !53
  br label %119

116:                                              ; preds = %80
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %117, align 8, !tbaa !411
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %118, align 8, !tbaa !412
  store ptr %59, ptr %81, align 8, !tbaa !54
  store ptr %87, ptr %88, align 8, !tbaa !389
  br label %130

119:                                              ; preds = %113, %115
  %120 = phi ptr [ %111, %115 ], [ %108, %113 ]
  %121 = phi ptr [ %108, %115 ], [ null, %113 ]
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %121, ptr %122, align 8, !tbaa !412
  %123 = shl nuw nsw i64 4, %43
  %124 = select i1 %42, i64 0, i64 %123
  %125 = getelementptr inbounds nuw i8, ptr %120, i64 %124
  %126 = icmp ugt ptr %125, %102
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %128, align 8, !tbaa !51
  br label %130

129:                                              ; preds = %119
  store ptr %125, ptr %75, align 8, !tbaa !53
  br label %130

130:                                              ; preds = %116, %129, %127
  %131 = phi ptr [ %120, %127 ], [ %125, %129 ], [ %59, %116 ]
  %132 = phi ptr [ null, %127 ], [ %120, %129 ], [ null, %116 ]
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %132, ptr %133, align 8, !tbaa !413
  %134 = getelementptr i8, ptr %1, i64 56
  %135 = load i8, ptr %134, align 8, !tbaa !51
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %396

137:                                              ; preds = %130
  %138 = icmp eq i32 %4, 0
  br i1 %138, label %139, label %.thread

139:                                              ; preds = %137
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  %142 = icmp ult ptr %141, %131
  br i1 %142, label %143, label %.thread

143:                                              ; preds = %139
  %144 = ptrtoint ptr %131 to i64
  %145 = ptrtoint ptr %141 to i64
  %146 = sub i64 %144, %145
  tail call void @llvm.memset.p0.i64(ptr align 1 %141, i8 0, i64 %146, i1 false)
  %147 = load ptr, ptr %140, align 8, !tbaa !54
  %148 = load ptr, ptr %75, align 8, !tbaa !53
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %150, label %.thread

150:                                              ; preds = %143
  store ptr %148, ptr %140, align 8, !tbaa !54
  br label %.thread

.thread:                                          ; preds = %139, %150, %143, %137
  %151 = phi ptr [ %148, %150 ], [ %148, %143 ], [ %131, %137 ], [ %131, %139 ]
  %152 = load i32, ptr %8, align 4, !tbaa !73
  %153 = add i32 %152, -6
  %154 = icmp ult i32 %153, -3
  %155 = icmp ne i32 %3, 1
  %156 = or i1 %155, %154
  br i1 %156, label %279, label %157

157:                                              ; preds = %.thread
  %158 = add nuw i64 %32, 63
  %159 = and i64 %158, -64
  %160 = load i32, ptr %77, align 8, !tbaa !325
  br i1 %13, label %161, label %234

161:                                              ; preds = %157
  %162 = icmp eq i32 %160, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %161
  %164 = load ptr, ptr %74, align 8, !tbaa !52
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %164, ptr %165, align 8, !tbaa !54
  %166 = getelementptr i8, ptr %1, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !60
  %168 = ptrtoint ptr %167 to i64
  %169 = and i64 %168, 63
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %167, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %171, ptr %172, align 8, !tbaa !389
  %173 = ptrtoint ptr %164 to i64
  %174 = sub i64 0, %173
  %175 = and i64 %174, 63
  %176 = getelementptr inbounds nuw i8, ptr %164, i64 %175
  %177 = icmp ugt ptr %176, %167
  br i1 %177, label %204, label %178

178:                                              ; preds = %163
  store ptr %176, ptr %74, align 8, !tbaa !52
  store ptr %176, ptr %75, align 8, !tbaa !53
  %179 = icmp eq i64 %175, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %178
  store ptr %176, ptr %165, align 8, !tbaa !54
  br label %181

181:                                              ; preds = %180, %178
  store i32 1, ptr %77, align 8, !tbaa !325
  br label %182

182:                                              ; preds = %181, %161
  %183 = phi ptr [ %151, %161 ], [ %176, %181 ]
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %185 = load ptr, ptr %184, align 8, !tbaa !388
  %186 = sub i64 0, %159
  %187 = getelementptr inbounds i8, ptr %185, i64 %186
  %188 = icmp ult ptr %187, %183
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %204

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %192 = load ptr, ptr %191, align 8, !tbaa !54
  %193 = icmp ult ptr %187, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store ptr %187, ptr %191, align 8, !tbaa !54
  br label %195

195:                                              ; preds = %194, %190
  store ptr %187, ptr %184, align 8, !tbaa !388
  %196 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %197 = load ptr, ptr %196, align 8, !tbaa !389
  %198 = icmp ult ptr %187, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = ptrtoint ptr %197 to i64
  %201 = ptrtoint ptr %187 to i64
  %202 = sub i64 %200, %201
  %203 = tail call i64 @llvm.umin.i64(i64 %202, i64 %159)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %187, i8 0, i64 %203, i1 false)
  store ptr %187, ptr %196, align 8, !tbaa !389
  br label %204

204:                                              ; preds = %199, %195, %189, %163
  %205 = phi ptr [ %187, %199 ], [ %187, %195 ], [ null, %189 ], [ null, %163 ]
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %205, ptr %206, align 8, !tbaa !414
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %208 = load i64, ptr %207, align 8, !tbaa !415
  %209 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 15)
  %210 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 40)
  %211 = xor i64 %209, %210
  %212 = xor i64 %211, %208
  %213 = mul i64 %212, -6939452855193903323
  %214 = lshr i64 %213, 35
  %215 = add nuw nsw i64 %214, 8
  %216 = xor i64 %215, %213
  %217 = mul i64 %216, -6939452855193903323
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %219 = load i32, ptr %218, align 8, !tbaa !416
  %220 = zext i32 %219 to i64
  %221 = shl nuw nsw i64 %220, 15
  %222 = tail call i64 @llvm.fshl.i64(i64 %220, i64 %220, i64 40)
  %223 = xor i64 %221, %222
  %224 = xor i64 %223, %220
  %225 = mul i64 %224, -6939452855193903323
  %226 = lshr i64 %225, 35
  %227 = add nuw nsw i64 %226, 4
  %228 = xor i64 %227, %225
  %229 = mul i64 %228, -6939452855193903323
  %230 = xor i64 %229, %217
  %231 = lshr i64 %230, 28
  %232 = xor i64 %217, %231
  %233 = xor i64 %232, %229
  store i64 %233, ptr %207, align 8, !tbaa !415
  br label %271

234:                                              ; preds = %157
  %235 = icmp ult i32 %160, 2
  br i1 %235, label %236, label %257

236:                                              ; preds = %234
  %237 = icmp eq i32 %160, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %236
  %239 = load ptr, ptr %74, align 8, !tbaa !52
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %239, ptr %240, align 8, !tbaa !54
  %241 = getelementptr i8, ptr %1, i64 8
  %242 = load ptr, ptr %241, align 8, !tbaa !60
  %243 = ptrtoint ptr %242 to i64
  %244 = and i64 %243, 63
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %242, i64 %245
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %246, ptr %247, align 8, !tbaa !389
  %248 = ptrtoint ptr %239 to i64
  %249 = sub i64 0, %248
  %250 = and i64 %249, 63
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 %250
  %252 = icmp ule ptr %251, %242
  tail call void @llvm.assume(i1 %252)
  store ptr %251, ptr %74, align 8, !tbaa !52
  store ptr %251, ptr %75, align 8, !tbaa !53
  %253 = icmp eq i64 %250, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %238
  store ptr %251, ptr %240, align 8, !tbaa !54
  br label %255

255:                                              ; preds = %254, %238, %236
  %256 = phi ptr [ %251, %254 ], [ %251, %238 ], [ %151, %236 ]
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %257

257:                                              ; preds = %255, %234
  %258 = phi ptr [ %151, %234 ], [ %256, %255 ]
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %260 = load ptr, ptr %259, align 8, !tbaa !388
  %261 = sub i64 0, %159
  %262 = getelementptr inbounds i8, ptr %260, i64 %261
  %263 = icmp uge ptr %262, %258
  tail call void @llvm.assume(i1 %263)
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %265 = load ptr, ptr %264, align 8, !tbaa !54
  %266 = icmp ult ptr %262, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %257
  store ptr %262, ptr %264, align 8, !tbaa !54
  br label %268

268:                                              ; preds = %267, %257
  store ptr %262, ptr %259, align 8, !tbaa !388
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %262, ptr %269, align 8, !tbaa !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %262, i8 0, i64 %32, i1 false)
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %270, align 8, !tbaa !415
  br label %271

271:                                              ; preds = %268, %204
  %272 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %273 = load i32, ptr %272, align 4, !tbaa !71
  %274 = tail call i32 @llvm.umax.i32(i32 %273, i32 4)
  %275 = tail call i32 @llvm.umin.i32(i32 %274, i32 6)
  %276 = load i32, ptr %29, align 4, !tbaa !70
  %277 = sub i32 %276, %275
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %277, ptr %278, align 4, !tbaa !417
  br label %279

279:                                              ; preds = %271, %.thread
  br i1 %13, label %280, label %391

280:                                              ; preds = %279
  %281 = load i32, ptr %8, align 4, !tbaa !73
  %282 = icmp ugt i32 %281, 6
  br i1 %282, label %283, label %391

283:                                              ; preds = %280
  %284 = load i32, ptr %77, align 8, !tbaa !325
  %285 = icmp ult i32 %284, 2
  br i1 %285, label %286, label %307

286:                                              ; preds = %283
  %287 = icmp eq i32 %284, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %286
  %289 = load ptr, ptr %74, align 8, !tbaa !52
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %289, ptr %290, align 8, !tbaa !54
  %291 = getelementptr i8, ptr %1, i64 8
  %292 = load ptr, ptr %291, align 8, !tbaa !60
  %293 = ptrtoint ptr %292 to i64
  %294 = and i64 %293, 63
  %295 = sub nsw i64 0, %294
  %296 = getelementptr inbounds i8, ptr %292, i64 %295
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %296, ptr %297, align 8, !tbaa !389
  %298 = ptrtoint ptr %289 to i64
  %299 = sub i64 0, %298
  %300 = and i64 %299, 63
  %301 = getelementptr inbounds nuw i8, ptr %289, i64 %300
  %302 = icmp ugt ptr %301, %292
  br i1 %302, label %372, label %303

303:                                              ; preds = %288
  store ptr %301, ptr %74, align 8, !tbaa !52
  store ptr %301, ptr %75, align 8, !tbaa !53
  %304 = icmp eq i64 %300, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %303
  store ptr %301, ptr %290, align 8, !tbaa !54
  br label %306

306:                                              ; preds = %305, %303, %286
  store i32 2, ptr %77, align 8, !tbaa !325
  br label %307

307:                                              ; preds = %306, %283
  %308 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %309 = load ptr, ptr %308, align 8, !tbaa !388
  %310 = getelementptr inbounds i8, ptr %309, i64 -1024
  %311 = load ptr, ptr %75, align 8, !tbaa !53
  %312 = icmp ult ptr %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %320

314:                                              ; preds = %307
  %315 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %316 = load ptr, ptr %315, align 8, !tbaa !54
  %317 = icmp ult ptr %310, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  store ptr %310, ptr %315, align 8, !tbaa !54
  br label %319

319:                                              ; preds = %318, %314
  store ptr %310, ptr %308, align 8, !tbaa !388
  br label %320

320:                                              ; preds = %313, %319
  %321 = phi ptr [ %310, %319 ], [ %309, %313 ]
  %322 = phi ptr [ %310, %319 ], [ null, %313 ]
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %322, ptr %323, align 8, !tbaa !418
  %324 = getelementptr inbounds i8, ptr %321, i64 -192
  %325 = icmp ult ptr %324, %311
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %333

327:                                              ; preds = %320
  %328 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %329 = load ptr, ptr %328, align 8, !tbaa !54
  %330 = icmp ult ptr %324, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  store ptr %324, ptr %328, align 8, !tbaa !54
  br label %332

332:                                              ; preds = %331, %327
  store ptr %324, ptr %308, align 8, !tbaa !388
  br label %333

333:                                              ; preds = %326, %332
  %334 = phi ptr [ %324, %332 ], [ %321, %326 ]
  %335 = phi ptr [ %324, %332 ], [ null, %326 ]
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %335, ptr %336, align 8, !tbaa !419
  %337 = getelementptr inbounds i8, ptr %334, i64 -256
  %338 = icmp ult ptr %337, %311
  br i1 %338, label %339, label %340

339:                                              ; preds = %333
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %346

340:                                              ; preds = %333
  %341 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %342 = load ptr, ptr %341, align 8, !tbaa !54
  %343 = icmp ult ptr %337, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  store ptr %337, ptr %341, align 8, !tbaa !54
  br label %345

345:                                              ; preds = %344, %340
  store ptr %337, ptr %308, align 8, !tbaa !388
  br label %346

346:                                              ; preds = %339, %345
  %347 = phi ptr [ %337, %345 ], [ %334, %339 ]
  %348 = phi ptr [ %337, %345 ], [ null, %339 ]
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %348, ptr %349, align 8, !tbaa !420
  %350 = getelementptr inbounds i8, ptr %347, i64 -128
  %351 = icmp ult ptr %350, %311
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %359

353:                                              ; preds = %346
  %354 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %355 = load ptr, ptr %354, align 8, !tbaa !54
  %356 = icmp ult ptr %350, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %353
  store ptr %350, ptr %354, align 8, !tbaa !54
  br label %358

358:                                              ; preds = %357, %353
  store ptr %350, ptr %308, align 8, !tbaa !388
  br label %359

359:                                              ; preds = %352, %358
  %360 = phi ptr [ %350, %358 ], [ %347, %352 ]
  %361 = phi ptr [ %350, %358 ], [ null, %352 ]
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %361, ptr %362, align 8, !tbaa !421
  %363 = getelementptr inbounds i8, ptr %360, i64 -32832
  %364 = icmp ult ptr %363, %311
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %375

366:                                              ; preds = %359
  %367 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %368 = load ptr, ptr %367, align 8, !tbaa !54
  %369 = icmp ult ptr %363, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store ptr %363, ptr %367, align 8, !tbaa !54
  br label %371

371:                                              ; preds = %370, %366
  store ptr %363, ptr %308, align 8, !tbaa !388
  br label %375

372:                                              ; preds = %288
  %373 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x ptr> zeroinitializer, ptr %373, align 8, !tbaa !422
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %374, align 8, !tbaa !423
  store ptr %289, ptr %290, align 8, !tbaa !54
  store ptr %296, ptr %297, align 8, !tbaa !389
  br label %388

375:                                              ; preds = %365, %371
  %376 = phi ptr [ %363, %371 ], [ %360, %365 ]
  %377 = phi ptr [ %363, %371 ], [ null, %365 ]
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %377, ptr %378, align 8, !tbaa !423
  %379 = getelementptr inbounds i8, ptr %376, i64 -114816
  %380 = icmp ult ptr %379, %311
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  store i8 1, ptr %134, align 8, !tbaa !51
  br label %388

382:                                              ; preds = %375
  %383 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %384 = load ptr, ptr %383, align 8, !tbaa !54
  %385 = icmp ult ptr %379, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  store ptr %379, ptr %383, align 8, !tbaa !54
  br label %387

387:                                              ; preds = %386, %382
  store ptr %379, ptr %308, align 8, !tbaa !388
  br label %388

388:                                              ; preds = %372, %387, %381
  %389 = phi ptr [ null, %381 ], [ %379, %387 ], [ null, %372 ]
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %389, ptr %390, align 8, !tbaa !424
  br label %391

391:                                              ; preds = %388, %280, %279
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %392, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !74
  %393 = load i8, ptr %134, align 8, !tbaa !51
  %394 = icmp eq i8 %393, 0
  %395 = select i1 %394, i64 0, i64 -64
  br label %396

396:                                              ; preds = %391, %130
  %397 = phi i64 [ -64, %130 ], [ %395, %391 ]
  ret i64 %397
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @HUF_optimalTableLog(i32 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((24, 32)) %0, ptr noundef readonly captures(none) %1, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #1 {
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
  store i64 0, ptr %23, align 8, !tbaa !425
  %24 = load ptr, ptr %1, align 8, !tbaa !186
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %27, %28
  %30 = and i64 %29, 34359738360
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit, label %32

32:                                               ; preds = %11
  %33 = lshr exact i64 %29, 3
  %34 = and i64 %33, 4294967295
  br label %35

35:                                               ; preds = %70, %32
  %36 = phi i64 [ 0, %32 ], [ %73, %70 ]
  %37 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %36
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
  %53 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %52
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
  %68 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !196
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i8 [ %65, %62 ], [ %69, %66 ]
  %72 = getelementptr inbounds nuw i8, ptr %22, i64 %36
  store i8 %71, ptr %72, align 1, !tbaa !196
  %73 = add nuw nsw i64 %36, 1
  %74 = icmp eq i64 %73, %34
  br i1 %74, label %.loopexit, label %35, !llvm.loop !197

.loopexit:                                        ; preds = %70, %11
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %76 = load i32, ptr %75, align 8, !tbaa !198
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %.loopexit
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %80 = load i32, ptr %79, align 4, !tbaa !199
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds nuw i8, ptr %20, i64 %81
  store i8 35, ptr %82, align 1, !tbaa !196
  %83 = load i32, ptr %75, align 8, !tbaa !198
  br label %84

84:                                               ; preds = %78, %.loopexit
  %85 = phi i32 [ %83, %78 ], [ %76, %.loopexit ]
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %89 = load i32, ptr %88, align 4, !tbaa !199
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds nuw i8, ptr %22, i64 %90
  store i8 52, ptr %91, align 1, !tbaa !196
  br label %92

92:                                               ; preds = %87, %84
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %93, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i32 35, ptr %12, align 4, !tbaa !49
  %94 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %12, ptr noundef %20, i64 noundef %2, ptr noundef %9, i64 noundef %10) #29
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 3548
  %96 = load i32, ptr %95, align 4, !tbaa !222
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 3548
  store i32 %96, ptr %97, align 4, !tbaa !222
  %98 = load i32, ptr %12, align 4, !tbaa !49
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 2224
  %100 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %97, ptr noundef %8, i32 noundef %98, i64 noundef %94, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %99, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #29
  store i32 %100, ptr %0, align 8, !tbaa !428
  %101 = ptrtoint ptr %6 to i64
  %102 = ptrtoint ptr %5 to i64
  %103 = sub i64 %101, %102
  %104 = load i32, ptr %12, align 4, !tbaa !49
  %105 = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %103, ptr noundef nonnull %15, i32 noundef 9, i32 noundef %100, ptr noundef %8, i32 noundef %104, ptr noundef %20, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %99, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #29
  %106 = icmp ult i64 %105, -119
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = icmp eq i32 %100, 2
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  store i64 %105, ptr %23, align 8, !tbaa !425
  br label %112

110:                                              ; preds = %92
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %105, ptr %111, align 8, !tbaa !429
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %157

112:                                              ; preds = %109, %107
  %113 = getelementptr inbounds nuw i8, ptr %5, i64 %105
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i32 31, ptr %13, align 4, !tbaa !49
  %114 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %13, ptr noundef %18, i64 noundef %2, ptr noundef %9, i64 noundef %10) #29
  %115 = load i32, ptr %13, align 4, !tbaa !49
  %116 = icmp ult i32 %115, 29
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %119 = load i32, ptr %118, align 4, !tbaa !226
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 3540
  store i32 %119, ptr %120, align 4, !tbaa !226
  %121 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %120, ptr noundef %8, i32 noundef %115, i64 noundef %114, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %117, i32 noundef %7) #29
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %121, ptr %122, align 4, !tbaa !430
  %123 = ptrtoint ptr %113 to i64
  %124 = sub i64 %101, %123
  %125 = load i32, ptr %13, align 4, !tbaa !49
  %126 = call i64 @ZSTD_buildCTable(ptr noundef %113, i64 noundef %124, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %121, ptr noundef %8, i32 noundef %125, ptr noundef %18, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #29
  %127 = icmp ult i64 %126, -119
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = icmp eq i32 %121, 2
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  store i64 %126, ptr %23, align 8, !tbaa !425
  br label %133

131:                                              ; preds = %112
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %126, ptr %132, align 8, !tbaa !429
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %157

133:                                              ; preds = %130, %128
  %134 = getelementptr inbounds nuw i8, ptr %113, i64 %126
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 52, ptr %14, align 4, !tbaa !49
  %135 = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %14, ptr noundef %22, i64 noundef %2, ptr noundef %9, i64 noundef %10) #29
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %137 = load i32, ptr %136, align 4, !tbaa !227
  %138 = getelementptr inbounds nuw i8, ptr %4, i64 3544
  store i32 %137, ptr %138, align 4, !tbaa !227
  %139 = load i32, ptr %14, align 4, !tbaa !49
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 772
  %141 = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %138, ptr noundef %8, i32 noundef %139, i64 noundef %135, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %140, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #29
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %141, ptr %142, align 8, !tbaa !431
  %143 = ptrtoint ptr %134 to i64
  %144 = sub i64 %101, %143
  %145 = load i32, ptr %14, align 4, !tbaa !49
  %146 = call i64 @ZSTD_buildCTable(ptr noundef %134, i64 noundef %144, ptr noundef nonnull %16, i32 noundef 9, i32 noundef %141, ptr noundef %8, i32 noundef %145, ptr noundef %22, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %140, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #29
  %147 = icmp ult i64 %146, -119
  br i1 %147, label %148, label %151

148:                                              ; preds = %133
  %149 = icmp eq i32 %141, 2
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  store i64 %146, ptr %23, align 8, !tbaa !425
  br label %153

151:                                              ; preds = %133
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %146, ptr %152, align 8, !tbaa !429
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %157

153:                                              ; preds = %150, %148
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %154 = add nuw nsw i64 %126, %105
  %155 = add nuw nsw i64 %154, %146
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %155, ptr %156, align 8, !tbaa !429
  br label %157

157:                                              ; preds = %153, %151, %131, %110
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 {
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = getelementptr i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = ptrtoint ptr %4 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = icmp ult i32 %13, -624951295
  br i1 %14, label %252, label %15

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
  %55 = load i32, ptr %54, align 8, !tbaa !432
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !432
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %58, ptr %59, align 8, !tbaa !54
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %61 = load i32, ptr %60, align 4, !tbaa !85
  %62 = shl nuw i32 1, %61
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %64 = load ptr, ptr %63, align 8, !tbaa !411
  %65 = sdiv i32 %62, 16
  %66 = icmp sgt i32 %62, 15
  br i1 %66, label %67, label %ZSTD_reduceTable.exit

67:                                               ; preds = %15
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %71 = insertelement <4 x i32> poison, i32 %45, i64 0
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> zeroinitializer
  %73 = insertelement <4 x i32> poison, i32 %37, i64 0
  %74 = shufflevector <4 x i32> %73, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %75, %67
  %76 = phi i64 [ 0, %67 ], [ %98, %75 ]
  %77 = phi i32 [ 0, %67 ], [ %99, %75 ]
  %78 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %76
  %79 = load <4 x i32>, ptr %78, align 4, !tbaa !49
  %80 = icmp ult <4 x i32> %79, %72
  %81 = sub <4 x i32> %79, %74
  %82 = select <4 x i1> %80, <4 x i32> zeroinitializer, <4 x i32> %81
  store <4 x i32> %82, ptr %78, align 4, !tbaa !49
  %83 = getelementptr inbounds nuw [4 x i8], ptr %68, i64 %76
  %84 = load <4 x i32>, ptr %83, align 4, !tbaa !49
  %85 = icmp ult <4 x i32> %84, %72
  %86 = sub <4 x i32> %84, %74
  %87 = select <4 x i1> %85, <4 x i32> zeroinitializer, <4 x i32> %86
  store <4 x i32> %87, ptr %83, align 4, !tbaa !49
  %88 = getelementptr inbounds nuw [4 x i8], ptr %69, i64 %76
  %89 = load <4 x i32>, ptr %88, align 4, !tbaa !49
  %90 = icmp ult <4 x i32> %89, %72
  %91 = sub <4 x i32> %89, %74
  %92 = select <4 x i1> %90, <4 x i32> zeroinitializer, <4 x i32> %91
  store <4 x i32> %92, ptr %88, align 4, !tbaa !49
  %93 = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %76
  %94 = load <4 x i32>, ptr %93, align 4, !tbaa !49
  %95 = icmp ult <4 x i32> %94, %72
  %96 = sub <4 x i32> %94, %74
  %97 = select <4 x i1> %95, <4 x i32> zeroinitializer, <4 x i32> %96
  store <4 x i32> %97, ptr %93, align 4, !tbaa !49
  %98 = add nuw nsw i64 %76, 16
  %99 = add nuw nsw i32 %77, 1
  %100 = icmp eq i32 %99, %65
  br i1 %100, label %ZSTD_reduceTable.exit.loopexit, label %75, !llvm.loop !433

ZSTD_reduceTable.exit.loopexit:                   ; preds = %75
  %.pre = load i32, ptr %20, align 4, !tbaa !90
  br label %ZSTD_reduceTable.exit

ZSTD_reduceTable.exit:                            ; preds = %ZSTD_reduceTable.exit.loopexit, %15
  %101 = phi i32 [ %.pre, %ZSTD_reduceTable.exit.loopexit ], [ %21, %15 ]
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %103 = load i32, ptr %102, align 8, !tbaa !76
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %105 = load i32, ptr %104, align 4, !tbaa !405
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %ZSTD_reduceTable.exit
  %108 = icmp eq i32 %101, 1
  br i1 %108, label %ZSTD_reduceTable.exit3, label %109

109:                                              ; preds = %107
  %110 = add i32 %101, -3
  %111 = icmp ult i32 %110, 3
  %112 = icmp eq i32 %103, 1
  %113 = and i1 %111, %112
  br i1 %113, label %ZSTD_reduceTable.exit3, label %114

114:                                              ; preds = %109, %ZSTD_reduceTable.exit
  %115 = load i32, ptr %6, align 4, !tbaa !86
  %116 = shl nuw i32 1, %115
  %117 = icmp eq i32 %101, 6
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %119 = load ptr, ptr %118, align 8, !tbaa !412
  %120 = sdiv i32 %116, 16
  %121 = icmp sgt i32 %116, 15
  br i1 %117, label %122, label %165

122:                                              ; preds = %114
  br i1 %121, label %123, label %ZSTD_reduceTable.exit3

123:                                              ; preds = %122
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 16
  %125 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %126 = getelementptr inbounds nuw i8, ptr %119, i64 48
  %127 = insertelement <4 x i32> poison, i32 %45, i64 0
  %128 = shufflevector <4 x i32> %127, <4 x i32> poison, <4 x i32> zeroinitializer
  %129 = insertelement <4 x i32> poison, i32 %37, i64 0
  %130 = shufflevector <4 x i32> %129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %131

131:                                              ; preds = %131, %123
  %132 = phi i64 [ 0, %123 ], [ %162, %131 ]
  %133 = phi i32 [ 0, %123 ], [ %163, %131 ]
  %134 = getelementptr inbounds nuw [4 x i8], ptr %119, i64 %132
  %135 = load <4 x i32>, ptr %134, align 4, !tbaa !49
  %136 = icmp eq <4 x i32> %135, splat (i32 1)
  %137 = icmp ult <4 x i32> %135, %128
  %138 = sub <4 x i32> %135, %130
  %139 = select <4 x i1> %137, <4 x i32> zeroinitializer, <4 x i32> %138
  %140 = select <4 x i1> %136, <4 x i32> splat (i32 1), <4 x i32> %139
  store <4 x i32> %140, ptr %134, align 4, !tbaa !49
  %141 = getelementptr inbounds nuw [4 x i8], ptr %124, i64 %132
  %142 = load <4 x i32>, ptr %141, align 4, !tbaa !49
  %143 = icmp eq <4 x i32> %142, splat (i32 1)
  %144 = icmp ult <4 x i32> %142, %128
  %145 = sub <4 x i32> %142, %130
  %146 = select <4 x i1> %144, <4 x i32> zeroinitializer, <4 x i32> %145
  %147 = select <4 x i1> %143, <4 x i32> splat (i32 1), <4 x i32> %146
  store <4 x i32> %147, ptr %141, align 4, !tbaa !49
  %148 = getelementptr inbounds nuw [4 x i8], ptr %125, i64 %132
  %149 = load <4 x i32>, ptr %148, align 4, !tbaa !49
  %150 = icmp eq <4 x i32> %149, splat (i32 1)
  %151 = icmp ult <4 x i32> %149, %128
  %152 = sub <4 x i32> %149, %130
  %153 = select <4 x i1> %151, <4 x i32> zeroinitializer, <4 x i32> %152
  %154 = select <4 x i1> %150, <4 x i32> splat (i32 1), <4 x i32> %153
  store <4 x i32> %154, ptr %148, align 4, !tbaa !49
  %155 = getelementptr inbounds nuw [4 x i8], ptr %126, i64 %132
  %156 = load <4 x i32>, ptr %155, align 4, !tbaa !49
  %157 = icmp eq <4 x i32> %156, splat (i32 1)
  %158 = icmp ult <4 x i32> %156, %128
  %159 = sub <4 x i32> %156, %130
  %160 = select <4 x i1> %158, <4 x i32> zeroinitializer, <4 x i32> %159
  %161 = select <4 x i1> %157, <4 x i32> splat (i32 1), <4 x i32> %160
  store <4 x i32> %161, ptr %155, align 4, !tbaa !49
  %162 = add nuw nsw i64 %132, 16
  %163 = add nuw nsw i32 %133, 1
  %164 = icmp eq i32 %163, %120
  br i1 %164, label %ZSTD_reduceTable.exit3, label %131, !llvm.loop !433

165:                                              ; preds = %114
  br i1 %121, label %166, label %ZSTD_reduceTable.exit3

166:                                              ; preds = %165
  %167 = getelementptr inbounds nuw i8, ptr %119, i64 16
  %168 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %169 = getelementptr inbounds nuw i8, ptr %119, i64 48
  %170 = insertelement <4 x i32> poison, i32 %45, i64 0
  %171 = shufflevector <4 x i32> %170, <4 x i32> poison, <4 x i32> zeroinitializer
  %172 = insertelement <4 x i32> poison, i32 %37, i64 0
  %173 = shufflevector <4 x i32> %172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %174

174:                                              ; preds = %174, %166
  %175 = phi i64 [ 0, %166 ], [ %197, %174 ]
  %176 = phi i32 [ 0, %166 ], [ %198, %174 ]
  %177 = getelementptr inbounds nuw [4 x i8], ptr %119, i64 %175
  %178 = load <4 x i32>, ptr %177, align 4, !tbaa !49
  %179 = icmp ult <4 x i32> %178, %171
  %180 = sub <4 x i32> %178, %173
  %181 = select <4 x i1> %179, <4 x i32> zeroinitializer, <4 x i32> %180
  store <4 x i32> %181, ptr %177, align 4, !tbaa !49
  %182 = getelementptr inbounds nuw [4 x i8], ptr %167, i64 %175
  %183 = load <4 x i32>, ptr %182, align 4, !tbaa !49
  %184 = icmp ult <4 x i32> %183, %171
  %185 = sub <4 x i32> %183, %173
  %186 = select <4 x i1> %184, <4 x i32> zeroinitializer, <4 x i32> %185
  store <4 x i32> %186, ptr %182, align 4, !tbaa !49
  %187 = getelementptr inbounds nuw [4 x i8], ptr %168, i64 %175
  %188 = load <4 x i32>, ptr %187, align 4, !tbaa !49
  %189 = icmp ult <4 x i32> %188, %171
  %190 = sub <4 x i32> %188, %173
  %191 = select <4 x i1> %189, <4 x i32> zeroinitializer, <4 x i32> %190
  store <4 x i32> %191, ptr %187, align 4, !tbaa !49
  %192 = getelementptr inbounds nuw [4 x i8], ptr %169, i64 %175
  %193 = load <4 x i32>, ptr %192, align 4, !tbaa !49
  %194 = icmp ult <4 x i32> %193, %171
  %195 = sub <4 x i32> %193, %173
  %196 = select <4 x i1> %194, <4 x i32> zeroinitializer, <4 x i32> %195
  store <4 x i32> %196, ptr %192, align 4, !tbaa !49
  %197 = add nuw nsw i64 %175, 16
  %198 = add nuw nsw i32 %176, 1
  %199 = icmp eq i32 %198, %120
  br i1 %199, label %ZSTD_reduceTable.exit3, label %174, !llvm.loop !433

ZSTD_reduceTable.exit3:                           ; preds = %174, %131, %165, %122, %109, %107
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %201 = load i32, ptr %200, align 8, !tbaa !406
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %ZSTD_reduceTable.exit4, label %203

203:                                              ; preds = %ZSTD_reduceTable.exit3
  %204 = shl nuw i32 1, %201
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %206 = load ptr, ptr %205, align 8, !tbaa !413
  %207 = sdiv i32 %204, 16
  %208 = icmp sgt i32 %204, 15
  br i1 %208, label %209, label %ZSTD_reduceTable.exit4

209:                                              ; preds = %203
  %210 = getelementptr inbounds nuw i8, ptr %206, i64 16
  %211 = getelementptr inbounds nuw i8, ptr %206, i64 32
  %212 = getelementptr inbounds nuw i8, ptr %206, i64 48
  %213 = insertelement <4 x i32> poison, i32 %45, i64 0
  %214 = shufflevector <4 x i32> %213, <4 x i32> poison, <4 x i32> zeroinitializer
  %215 = insertelement <4 x i32> poison, i32 %37, i64 0
  %216 = shufflevector <4 x i32> %215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %217

217:                                              ; preds = %217, %209
  %218 = phi i64 [ 0, %209 ], [ %240, %217 ]
  %219 = phi i32 [ 0, %209 ], [ %241, %217 ]
  %220 = getelementptr inbounds nuw [4 x i8], ptr %206, i64 %218
  %221 = load <4 x i32>, ptr %220, align 4, !tbaa !49
  %222 = icmp ult <4 x i32> %221, %214
  %223 = sub <4 x i32> %221, %216
  %224 = select <4 x i1> %222, <4 x i32> zeroinitializer, <4 x i32> %223
  store <4 x i32> %224, ptr %220, align 4, !tbaa !49
  %225 = getelementptr inbounds nuw [4 x i8], ptr %210, i64 %218
  %226 = load <4 x i32>, ptr %225, align 4, !tbaa !49
  %227 = icmp ult <4 x i32> %226, %214
  %228 = sub <4 x i32> %226, %216
  %229 = select <4 x i1> %227, <4 x i32> zeroinitializer, <4 x i32> %228
  store <4 x i32> %229, ptr %225, align 4, !tbaa !49
  %230 = getelementptr inbounds nuw [4 x i8], ptr %211, i64 %218
  %231 = load <4 x i32>, ptr %230, align 4, !tbaa !49
  %232 = icmp ult <4 x i32> %231, %214
  %233 = sub <4 x i32> %231, %216
  %234 = select <4 x i1> %232, <4 x i32> zeroinitializer, <4 x i32> %233
  store <4 x i32> %234, ptr %230, align 4, !tbaa !49
  %235 = getelementptr inbounds nuw [4 x i8], ptr %212, i64 %218
  %236 = load <4 x i32>, ptr %235, align 4, !tbaa !49
  %237 = icmp ult <4 x i32> %236, %214
  %238 = sub <4 x i32> %236, %216
  %239 = select <4 x i1> %237, <4 x i32> zeroinitializer, <4 x i32> %238
  store <4 x i32> %239, ptr %235, align 4, !tbaa !49
  %240 = add nuw nsw i64 %218, 16
  %241 = add nuw nsw i32 %219, 1
  %242 = icmp eq i32 %241, %207
  br i1 %242, label %ZSTD_reduceTable.exit4, label %217, !llvm.loop !433

ZSTD_reduceTable.exit4:                           ; preds = %217, %203, %ZSTD_reduceTable.exit3
  %243 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %244 = load ptr, ptr %243, align 8, !tbaa !53
  %245 = icmp ult ptr %58, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %ZSTD_reduceTable.exit4
  store ptr %244, ptr %59, align 8, !tbaa !54
  br label %247

247:                                              ; preds = %246, %ZSTD_reduceTable.exit4
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %249 = load i32, ptr %248, align 4, !tbaa !241
  %250 = tail call i32 @llvm.usub.sat.i32(i32 %249, i32 %37)
  store i32 %250, ptr %248, align 4, !tbaa !241
  store i32 0, ptr %7, align 8, !tbaa !408
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %251, align 8, !tbaa !410
  br label %252

252:                                              ; preds = %247, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
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

62:                                               ; preds = %51, %49, %45, %26
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

76:                                               ; preds = %71, %65, %62
  %77 = add i64 %63, -2
  %78 = icmp ult i64 %77, -121
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load <2 x ptr>, ptr %17, align 8, !tbaa !48
  %81 = shufflevector <2 x ptr> %80, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %81, ptr %17, align 8, !tbaa !48
  br label %82

82:                                               ; preds = %79, %76, %74, %14
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

90:                                               ; preds = %89, %82, %23, %19, %14, %6
  %91 = phi i64 [ 0, %23 ], [ %21, %19 ], [ %83, %89 ], [ %83, %82 ], [ -106, %14 ], [ %7, %6 ]
  ret i64 %91
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #11

declare i64 @ZSTD_splitBlock(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 2) i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
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
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef nonnull %13, i64 noundef %2) #29
  br label %266

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %17 = load i32, ptr %16, align 4, !tbaa !434
  tail call void @ZSTD_ldm_skipSequences(ptr noundef nonnull %13, i64 noundef %2, i32 noundef %17) #29
  br label %266

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
  store ptr %27, ptr %28, align 8, !tbaa !435
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %30 = load i32, ptr %29, align 8, !tbaa !436
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %30, ptr %31, align 8, !tbaa !437
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %33 = load ptr, ptr %32, align 8, !tbaa !438
  %34 = ptrtoint ptr %1 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %39 = load i32, ptr %38, align 4, !tbaa !241
  %40 = add i32 %39, 384
  %41 = icmp ult i32 %40, %37
  br i1 %41, label %42, label %46

42:                                               ; preds = %18
  %reass.sub = sub i32 %37, %39
  %43 = add i32 %reass.sub, -384
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 192)
  %45 = sub i32 %37, %44
  store i32 %45, ptr %38, align 4, !tbaa !241
  br label %46

46:                                               ; preds = %42, %18
  %47 = getelementptr i8, ptr %0, i64 3264
  %48 = load i32, ptr %47, align 8, !tbaa !239
  %49 = getelementptr i8, ptr %0, i64 3268
  %50 = load i32, ptr %49, align 4, !tbaa !238
  %51 = icmp ult i32 %50, %48
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %54 = load ptr, ptr %53, align 8, !tbaa !410
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 140
  %58 = load i32, ptr %57, align 4, !tbaa !405
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i64 2, i64 3
  br label %61

61:                                               ; preds = %56, %52, %46
  %62 = phi i64 [ 1, %46 ], [ %60, %56 ], [ 0, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 5616
  %67 = load i32, ptr %63, align 4, !tbaa !49
  store i32 %67, ptr %66, align 4, !tbaa !49
  %68 = getelementptr inbounds nuw i8, ptr %27, i64 5620
  %69 = load i32, ptr %68, align 4, !tbaa !49
  %70 = getelementptr inbounds nuw i8, ptr %65, i64 5620
  store i32 %69, ptr %70, align 4, !tbaa !49
  %71 = getelementptr inbounds nuw i8, ptr %27, i64 5624
  %72 = load i32, ptr %71, align 4, !tbaa !49
  %73 = getelementptr inbounds nuw i8, ptr %65, i64 5624
  store i32 %72, ptr %73, align 4, !tbaa !49
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %76 = load i64, ptr %75, align 8, !tbaa !439
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %78 = load i64, ptr %77, align 8, !tbaa !233
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %61
  %81 = getelementptr i8, ptr %0, i64 448
  %82 = load ptr, ptr %81, align 8, !tbaa !127
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %266

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %86 = load i32, ptr %85, align 8, !tbaa !172
  %87 = tail call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %74, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %66, i32 noundef %86, ptr noundef %1, i64 noundef %2) #29
  br label %258

88:                                               ; preds = %61
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %90 = load i32, ptr %89, align 8, !tbaa !242
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %93 = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  %94 = getelementptr i8, ptr %0, i64 448
  %95 = load ptr, ptr %94, align 8, !tbaa !127
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %99 = load ptr, ptr %98, align 8, !tbaa !394
  store ptr %99, ptr %4, align 8, !tbaa !440
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %101 = load i64, ptr %100, align 8, !tbaa !395
  %102 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %101, ptr %102, align 8, !tbaa !441
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %104 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %103, ptr noundef nonnull %4, ptr noundef nonnull %89, ptr noundef %1, i64 noundef %2) #29
  %105 = icmp ult i64 %104, -119
  br i1 %105, label %108, label %106

106:                                              ; preds = %97, %92
  %107 = phi i64 [ -41, %92 ], [ %104, %97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %266

108:                                              ; preds = %97
  %109 = load ptr, ptr %64, align 8, !tbaa !56
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 5616
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %112 = load i32, ptr %111, align 8, !tbaa !172
  %113 = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %110, i32 noundef %112, ptr noundef %1, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %258

114:                                              ; preds = %88
  %115 = getelementptr i8, ptr %0, i64 448
  %116 = load ptr, ptr %115, align 8, !tbaa !127
  %117 = icmp eq ptr %116, null
  br i1 %117, label %241, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %7, align 4, !tbaa !244
  %120 = shl nuw i32 1, %119
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %122 = load ptr, ptr %121, align 8, !tbaa !442
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 5264
  %124 = load ptr, ptr %123, align 8, !tbaa !398
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 5272
  %126 = load i64, ptr %125, align 8, !tbaa !397
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %128 = load i32, ptr %127, align 4, !tbaa !443
  %129 = zext i32 %120 to i64
  %130 = tail call i64 %116(ptr noundef %122, ptr noundef %124, i64 noundef %126, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %128, i64 noundef %129) #29
  %131 = load i64, ptr %125, align 8, !tbaa !397
  %132 = add i64 %130, -1
  %133 = icmp ult i64 %132, %131
  br i1 %133, label %134, label %217

134:                                              ; preds = %118
  %135 = load ptr, ptr %123, align 8, !tbaa !398
  %136 = getelementptr [16 x i8], ptr %135, i64 %130
  %137 = getelementptr i8, ptr %136, i64 -16
  %138 = load i32, ptr %137, align 4, !tbaa !49
  %139 = getelementptr i8, ptr %136, i64 -8
  %140 = load i32, ptr %139, align 4, !tbaa !49
  %141 = icmp eq i32 %138, 0
  %142 = icmp eq i32 %140, 0
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %148, label %144

144:                                              ; preds = %134
  %145 = icmp eq i64 %130, %131
  br i1 %145, label %217, label %146

146:                                              ; preds = %144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %136, i8 0, i64 16, i1 false)
  %147 = add i64 %130, 1
  br label %148

148:                                              ; preds = %146, %134
  %149 = phi i64 [ %147, %146 ], [ %130, %134 ]
  %150 = icmp ult i64 %149, -119
  br i1 %150, label %151, label %217

151:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %152 = load ptr, ptr %123, align 8, !tbaa !398
  %153 = icmp eq i64 %149, 0
  br i1 %153, label %.split, label %154

154:                                              ; preds = %151
  %155 = and i64 %149, 3
  %156 = icmp ult i64 %149, 4
  br i1 %156, label %.loopexit14, label %157

157:                                              ; preds = %154
  %158 = and i64 %149, -4
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i64 [ 0, %157 ], [ %179, %159 ]
  %161 = phi <2 x i64> [ zeroinitializer, %157 ], [ %178, %159 ]
  %162 = getelementptr inbounds nuw [16 x i8], ptr %152, i64 %160
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 4
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 20
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 36
  %166 = getelementptr inbounds nuw i8, ptr %162, i64 52
  %167 = load <2 x i32>, ptr %163, align 4, !tbaa !49
  %168 = zext <2 x i32> %167 to <2 x i64>
  %169 = add <2 x i64> %161, %168
  %170 = load <2 x i32>, ptr %164, align 4, !tbaa !49
  %171 = zext <2 x i32> %170 to <2 x i64>
  %172 = add <2 x i64> %169, %171
  %173 = load <2 x i32>, ptr %165, align 4, !tbaa !49
  %174 = zext <2 x i32> %173 to <2 x i64>
  %175 = add <2 x i64> %172, %174
  %176 = load <2 x i32>, ptr %166, align 4, !tbaa !49
  %177 = zext <2 x i32> %176 to <2 x i64>
  %178 = add <2 x i64> %175, %177
  %179 = add nuw i64 %160, 4
  %180 = icmp eq i64 %179, %158
  br i1 %180, label %.loopexit14.loopexit, label %159, !llvm.loop !444

.loopexit14.loopexit:                             ; preds = %159
  %181 = extractelement <2 x i64> %178, i64 1
  %182 = extractelement <2 x i64> %178, i64 0
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14.loopexit, %154
  %183 = phi i64 [ poison, %154 ], [ %182, %.loopexit14.loopexit ]
  %184 = phi i64 [ poison, %154 ], [ %181, %.loopexit14.loopexit ]
  %185 = phi i64 [ 0, %154 ], [ %158, %.loopexit14.loopexit ]
  %186 = phi i64 [ 0, %154 ], [ %182, %.loopexit14.loopexit ]
  %187 = phi i64 [ 0, %154 ], [ %181, %.loopexit14.loopexit ]
  %188 = icmp eq i64 %155, 0
  br i1 %188, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit14, %.preheader
  %189 = phi i64 [ %202, %.preheader ], [ %185, %.loopexit14 ]
  %190 = phi i64 [ %197, %.preheader ], [ %186, %.loopexit14 ]
  %191 = phi i64 [ %201, %.preheader ], [ %187, %.loopexit14 ]
  %192 = phi i64 [ %203, %.preheader ], [ 0, %.loopexit14 ]
  %193 = getelementptr inbounds nuw [16 x i8], ptr %152, i64 %189
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %195 = load i32, ptr %194, align 4, !tbaa !215
  %196 = zext i32 %195 to i64
  %197 = add i64 %190, %196
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %199 = load i32, ptr %198, align 4, !tbaa !214
  %200 = zext i32 %199 to i64
  %201 = add i64 %191, %200
  %202 = add nuw nsw i64 %189, 1
  %203 = add nuw nsw i64 %192, 1
  %204 = icmp eq i64 %203, %155
  br i1 %204, label %.loopexit, label %.preheader, !llvm.loop !445

.loopexit:                                        ; preds = %.preheader, %.loopexit14
  %205 = phi i64 [ %183, %.loopexit14 ], [ %197, %.preheader ]
  %206 = phi i64 [ %184, %.loopexit14 ], [ %201, %.preheader ]
  %207 = add i64 %206, %205
  %208 = icmp ugt i64 %207, %2
  br i1 %208, label %215, label %.split

.split:                                           ; preds = %.loopexit, %151
  %.sink = phi i64 [ 0, %151 ], [ %149, %.loopexit ]
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 456
  %210 = load i32, ptr %209, align 8, !tbaa !351
  %211 = call i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %152, i64 noundef %.sink, ptr noundef %1, i64 noundef %2, i32 noundef %210)
  %212 = icmp ult i64 %211, -119
  br i1 %212, label %213, label %215

213:                                              ; preds = %.split
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %214, align 8, !tbaa !446
  br label %215

215:                                              ; preds = %213, %.split, %.loopexit
  %216 = phi i64 [ 0, %213 ], [ %211, %.split ], [ -107, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %266

217:                                              ; preds = %148, %144, %118
  %218 = phi i64 [ %149, %148 ], [ -106, %118 ], [ -106, %144 ]
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 436
  %220 = load i32, ptr %219, align 4, !tbaa !447
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %266, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %224 = load i32, ptr %223, align 4, !tbaa !175
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %226 = load i32, ptr %225, align 8, !tbaa !172
  %227 = add i32 %224, -6
  %228 = icmp ult i32 %227, -3
  %229 = icmp ne i32 %226, 1
  %230 = or i1 %228, %229
  %.split10 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %62
  %231 = sext i32 %224 to i64
  %232 = getelementptr [8 x i8], ptr %.split10, i64 %231
  %233 = getelementptr i8, ptr %232, i64 -24
  %.split11 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %62
  %234 = getelementptr inbounds [8 x i8], ptr %.split11, i64 %231
  %235 = select i1 %230, ptr %234, ptr %233
  %236 = load ptr, ptr %235, align 8, !tbaa !48
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %237, align 8, !tbaa !446
  %238 = load ptr, ptr %64, align 8, !tbaa !56
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 5616
  %240 = tail call i64 %236(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %239, ptr noundef %1, i64 noundef %2) #29
  br label %258

241:                                              ; preds = %114
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %243 = load i32, ptr %242, align 4, !tbaa !175
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %245 = load i32, ptr %244, align 8, !tbaa !172
  %246 = add i32 %243, -6
  %247 = icmp ult i32 %246, -3
  %248 = icmp ne i32 %245, 1
  %249 = or i1 %247, %248
  %.split12 = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %62
  %250 = sext i32 %243 to i64
  %251 = getelementptr [8 x i8], ptr %.split12, i64 %250
  %252 = getelementptr i8, ptr %251, i64 -24
  %.split13 = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %62
  %253 = getelementptr inbounds [8 x i8], ptr %.split13, i64 %250
  %254 = select i1 %249, ptr %253, ptr %252
  %255 = load ptr, ptr %254, align 8, !tbaa !48
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %256, align 8, !tbaa !446
  %257 = tail call i64 %255(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %66, ptr noundef %1, i64 noundef %2) #29
  br label %258

258:                                              ; preds = %241, %222, %108, %84
  %259 = phi i64 [ %87, %84 ], [ %113, %108 ], [ %240, %222 ], [ %257, %241 ]
  %260 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %261 = sub i64 0, %259
  %262 = getelementptr inbounds i8, ptr %260, i64 %261
  %263 = load ptr, ptr %23, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr nonnull readonly align 1 %262, i64 %259, i1 false)
  %264 = load ptr, ptr %23, align 8, !tbaa !201
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 %259
  store ptr %265, ptr %23, align 8, !tbaa !201
  br label %266

266:                                              ; preds = %258, %217, %215, %106, %80, %15, %14
  %267 = phi i64 [ 0, %258 ], [ 1, %15 ], [ 1, %14 ], [ %107, %106 ], [ -41, %80 ], [ %218, %217 ], [ %216, %215 ]
  ret i64 %267
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #21 {
  %8 = alloca %struct.repcodes_s, align 8
  %9 = load i32, ptr %1, align 8, !tbaa !448
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
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

24:                                               ; preds = %21, %17, %14
  %25 = phi i64 [ %16, %14 ], [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %28, i64 12, i1 false)
  %29 = zext i32 %9 to i64
  %30 = icmp ugt i64 %3, %29
  br i1 %30, label %31, label %.loopexit28

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

52:                                               ; preds = %319, %31
  %53 = phi i32 [ %51, %31 ], [ %114, %319 ]
  %54 = phi i32 [ %50, %31 ], [ %115, %319 ]
  %55 = phi i64 [ %29, %31 ], [ %327, %319 ]
  %56 = phi i32 [ %9, %31 ], [ %326, %319 ]
  %57 = phi ptr [ %4, %31 ], [ %325, %319 ]
  %58 = phi i32 [ %32, %31 ], [ %116, %319 ]
  %59 = ptrtoint ptr %57 to i64
  %60 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %55
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !214
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, ptr %60, align 4, !tbaa !212
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %.loopexit28, label %67

67:                                               ; preds = %64, %52
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

94:                                               ; preds = %92, %88, %86, %82, %73
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
  %103 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !49
  br label %105

105:                                              ; preds = %101, %99
  %106 = phi i32 [ %100, %99 ], [ %104, %101 ]
  %107 = icmp eq i32 %98, 1
  %108 = select i1 %107, i32 %53, i32 %54
  br label %109

109:                                              ; preds = %105, %92
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
  %123 = load i64, ptr %37, align 8, !tbaa !450
  %124 = add i64 %123, %122
  store i64 %124, ptr %37, align 8, !tbaa !450
  %125 = load i32, ptr %38, align 4, !tbaa !244
  %126 = shl nuw i32 1, %125
  %127 = zext i32 %126 to i64
  %128 = icmp ugt i64 %124, %127
  %129 = add i64 %124, %39
  %130 = select i1 %128, i64 %127, i64 %129
  %131 = zext i32 %117 to i64
  %132 = add i64 %130, 3
  %133 = icmp ult i64 %132, %131
  br i1 %133, label %.loopexit31, label %134

134:                                              ; preds = %120
  %135 = load ptr, ptr %40, align 8, !tbaa !127
  %136 = icmp ne ptr %135, null
  %137 = load i32, ptr %41, align 4, !tbaa !434
  %138 = icmp eq i32 %137, 3
  %139 = or i1 %136, %138
  %140 = select i1 %139, i64 3, i64 4
  %141 = zext i32 %62 to i64
  %142 = icmp samesign ugt i64 %140, %141
  br i1 %142, label %.loopexit31, label %143

143:                                              ; preds = %134, %113
  %144 = load i32, ptr %1, align 8, !tbaa !448
  %145 = sub i32 %56, %144
  %146 = zext i32 %145 to i64
  %147 = load i64, ptr %42, align 8, !tbaa !358
  %148 = icmp ugt i64 %147, %146
  br i1 %148, label %149, label %.loopexit31

149:                                              ; preds = %143
  %150 = zext i32 %69 to i64
  %151 = zext i32 %62 to i64
  %152 = getelementptr inbounds nuw i8, ptr %57, i64 %150
  %153 = icmp ugt ptr %152, %44
  %154 = load ptr, ptr %45, align 8, !tbaa !201
  br i1 %153, label %177, label %155

155:                                              ; preds = %149
  %156 = load <2 x i64>, ptr %57, align 1, !tbaa !196
  store <2 x i64> %156, ptr %154, align 1, !tbaa !196
  %157 = icmp ugt i32 %69, 16
  br i1 %157, label %158, label %291

158:                                              ; preds = %155
  %159 = load ptr, ptr %45, align 8, !tbaa !201
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %161 = getelementptr inbounds nuw i8, ptr %57, i64 16
  %162 = getelementptr i8, ptr %159, i64 %150
  %163 = load <2 x i64>, ptr %161, align 1, !tbaa !196
  store <2 x i64> %163, ptr %160, align 1, !tbaa !196
  %164 = icmp ult i32 %69, 33
  br i1 %164, label %291, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds nuw i8, ptr %159, i64 32
  br label %167

167:                                              ; preds = %167, %165
  %168 = phi ptr [ %166, %165 ], [ %175, %167 ]
  %169 = phi ptr [ %161, %165 ], [ %173, %167 ]
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %171 = load <2 x i64>, ptr %170, align 1, !tbaa !196
  store <2 x i64> %171, ptr %168, align 1, !tbaa !196
  %172 = getelementptr inbounds nuw i8, ptr %168, i64 16
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %174 = load <2 x i64>, ptr %173, align 1, !tbaa !196
  store <2 x i64> %174, ptr %172, align 1, !tbaa !196
  %175 = getelementptr inbounds nuw i8, ptr %168, i64 32
  %176 = icmp ult ptr %175, %162
  br i1 %176, label %167, label %.loopexit, !llvm.loop !451

177:                                              ; preds = %149
  %178 = icmp ugt ptr %57, %44
  br i1 %178, label %.loopexit26, label %179

179:                                              ; preds = %177
  %180 = sub i64 %46, %59
  %181 = getelementptr inbounds i8, ptr %154, i64 %180
  %182 = load <2 x i64>, ptr %57, align 1, !tbaa !196
  store <2 x i64> %182, ptr %154, align 1, !tbaa !196
  %183 = icmp ult i64 %180, 17
  br i1 %183, label %.loopexit26, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw i8, ptr %154, i64 16
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi ptr [ %185, %184 ], [ %194, %186 ]
  %188 = phi ptr [ %57, %184 ], [ %192, %186 ]
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %190 = load <2 x i64>, ptr %189, align 1, !tbaa !196
  store <2 x i64> %190, ptr %187, align 1, !tbaa !196
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 16
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %193 = load <2 x i64>, ptr %192, align 1, !tbaa !196
  store <2 x i64> %193, ptr %191, align 1, !tbaa !196
  %194 = getelementptr inbounds nuw i8, ptr %187, i64 32
  %195 = icmp ult ptr %194, %181
  br i1 %195, label %186, label %.loopexit26, !llvm.loop !451

.loopexit26:                                      ; preds = %186, %179, %177
  %196 = phi ptr [ %44, %179 ], [ %57, %177 ], [ %44, %186 ]
  %197 = phi ptr [ %181, %179 ], [ %154, %177 ], [ %181, %186 ]
  %198 = icmp ult ptr %196, %152
  br i1 %198, label %199, label %.loopexit

199:                                              ; preds = %.loopexit26
  %200 = ptrtoint ptr %196 to i64
  %201 = ptrtoint ptr %197 to i64
  %202 = add i64 %150, %59
  %203 = sub i64 %202, %200
  %204 = icmp ult i64 %203, 4
  %205 = sub i64 %201, %200
  %206 = icmp ult i64 %205, 32
  %207 = select i1 %204, i1 true, i1 %206
  br i1 %207, label %243, label %208

208:                                              ; preds = %199
  %209 = icmp ult i64 %203, 32
  br i1 %209, label %229, label %210

210:                                              ; preds = %208
  %211 = and i64 %203, -32
  br label %212

212:                                              ; preds = %212, %210
  %213 = phi i64 [ 0, %210 ], [ %220, %212 ]
  %214 = getelementptr i8, ptr %197, i64 %213
  %215 = getelementptr i8, ptr %196, i64 %213
  %216 = getelementptr i8, ptr %215, i64 16
  %217 = load <16 x i8>, ptr %215, align 1, !tbaa !196
  %218 = load <16 x i8>, ptr %216, align 1, !tbaa !196
  %219 = getelementptr i8, ptr %214, i64 16
  store <16 x i8> %217, ptr %214, align 1, !tbaa !196
  store <16 x i8> %218, ptr %219, align 1, !tbaa !196
  %220 = add nuw i64 %213, 32
  %221 = icmp eq i64 %220, %211
  br i1 %221, label %222, label %212, !llvm.loop !452

222:                                              ; preds = %212
  %223 = icmp eq i64 %203, %211
  br i1 %223, label %.loopexit, label %224

224:                                              ; preds = %222
  %225 = getelementptr i8, ptr %197, i64 %211
  %226 = getelementptr i8, ptr %196, i64 %211
  %227 = and i64 %203, 28
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %224, %208
  %230 = phi i64 [ %211, %224 ], [ 0, %208 ]
  %231 = and i64 %203, -4
  br label %232

232:                                              ; preds = %232, %229
  %233 = phi i64 [ %230, %229 ], [ %237, %232 ]
  %234 = getelementptr i8, ptr %197, i64 %233
  %235 = getelementptr i8, ptr %196, i64 %233
  %236 = load <4 x i8>, ptr %235, align 1, !tbaa !196
  store <4 x i8> %236, ptr %234, align 1, !tbaa !196
  %237 = add nuw i64 %233, 4
  %238 = icmp eq i64 %237, %231
  br i1 %238, label %239, label %232, !llvm.loop !453

239:                                              ; preds = %232
  %240 = getelementptr i8, ptr %197, i64 %231
  %241 = getelementptr i8, ptr %196, i64 %231
  %242 = icmp eq i64 %203, %231
  br i1 %242, label %.loopexit, label %243

243:                                              ; preds = %239, %224, %199
  %244 = phi ptr [ %197, %199 ], [ %225, %224 ], [ %240, %239 ]
  %245 = phi ptr [ %196, %199 ], [ %226, %224 ], [ %241, %239 ]
  %246 = ptrtoint ptr %245 to i64
  %247 = sub i64 %202, %246
  %248 = add i64 %59, -1
  %249 = add i64 %248, %150
  %250 = sub i64 %249, %246
  %251 = and i64 %247, 7
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %243, %.preheader24
  %253 = phi ptr [ %258, %.preheader24 ], [ %244, %243 ]
  %254 = phi ptr [ %256, %.preheader24 ], [ %245, %243 ]
  %255 = phi i64 [ %259, %.preheader24 ], [ 0, %243 ]
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 1
  %257 = load i8, ptr %254, align 1, !tbaa !196
  %258 = getelementptr inbounds nuw i8, ptr %253, i64 1
  store i8 %257, ptr %253, align 1, !tbaa !196
  %259 = add nuw nsw i64 %255, 1
  %260 = icmp eq i64 %259, %251
  br i1 %260, label %.loopexit25, label %.preheader24, !llvm.loop !454

.loopexit25:                                      ; preds = %.preheader24, %243
  %261 = phi ptr [ %244, %243 ], [ %258, %.preheader24 ]
  %262 = phi ptr [ %245, %243 ], [ %256, %.preheader24 ]
  %263 = icmp ult i64 %250, 7
  br i1 %263, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit25, %.preheader
  %264 = phi ptr [ %289, %.preheader ], [ %261, %.loopexit25 ]
  %265 = phi ptr [ %287, %.preheader ], [ %262, %.loopexit25 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 1
  %267 = load i8, ptr %265, align 1, !tbaa !196
  %268 = getelementptr inbounds nuw i8, ptr %264, i64 1
  store i8 %267, ptr %264, align 1, !tbaa !196
  %269 = getelementptr inbounds nuw i8, ptr %265, i64 2
  %270 = load i8, ptr %266, align 1, !tbaa !196
  %271 = getelementptr inbounds nuw i8, ptr %264, i64 2
  store i8 %270, ptr %268, align 1, !tbaa !196
  %272 = getelementptr inbounds nuw i8, ptr %265, i64 3
  %273 = load i8, ptr %269, align 1, !tbaa !196
  %274 = getelementptr inbounds nuw i8, ptr %264, i64 3
  store i8 %273, ptr %271, align 1, !tbaa !196
  %275 = getelementptr inbounds nuw i8, ptr %265, i64 4
  %276 = load i8, ptr %272, align 1, !tbaa !196
  %277 = getelementptr inbounds nuw i8, ptr %264, i64 4
  store i8 %276, ptr %274, align 1, !tbaa !196
  %278 = getelementptr inbounds nuw i8, ptr %265, i64 5
  %279 = load i8, ptr %275, align 1, !tbaa !196
  %280 = getelementptr inbounds nuw i8, ptr %264, i64 5
  store i8 %279, ptr %277, align 1, !tbaa !196
  %281 = getelementptr inbounds nuw i8, ptr %265, i64 6
  %282 = load i8, ptr %278, align 1, !tbaa !196
  %283 = getelementptr inbounds nuw i8, ptr %264, i64 6
  store i8 %282, ptr %280, align 1, !tbaa !196
  %284 = getelementptr inbounds nuw i8, ptr %265, i64 7
  %285 = load i8, ptr %281, align 1, !tbaa !196
  %286 = getelementptr inbounds nuw i8, ptr %264, i64 7
  store i8 %285, ptr %283, align 1, !tbaa !196
  %287 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %288 = load i8, ptr %284, align 1, !tbaa !196
  %289 = getelementptr inbounds nuw i8, ptr %264, i64 8
  store i8 %288, ptr %286, align 1, !tbaa !196
  %290 = icmp eq ptr %287, %152
  br i1 %290, label %.loopexit, label %.preheader, !llvm.loop !455

291:                                              ; preds = %158, %155
  %292 = load ptr, ptr %45, align 8, !tbaa !201
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 %150
  store ptr %293, ptr %45, align 8, !tbaa !201
  %294 = load ptr, ptr %48, align 8, !tbaa !190
  br label %306

.loopexit:                                        ; preds = %167, %.preheader, %.loopexit25, %239, %222, %.loopexit26
  %295 = load ptr, ptr %45, align 8, !tbaa !201
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %150
  store ptr %296, ptr %45, align 8, !tbaa !201
  %297 = icmp ugt i32 %69, 65535
  %298 = load ptr, ptr %48, align 8, !tbaa !190
  br i1 %297, label %299, label %306, !prof !456

299:                                              ; preds = %.loopexit
  store i32 1, ptr %47, align 8, !tbaa !198
  %300 = load ptr, ptr %43, align 8, !tbaa !186
  %301 = ptrtoint ptr %298 to i64
  %302 = ptrtoint ptr %300 to i64
  %303 = sub i64 %301, %302
  %304 = lshr exact i64 %303, 3
  %305 = trunc i64 %304 to i32
  store i32 %305, ptr %49, align 4, !tbaa !199
  br label %306

306:                                              ; preds = %299, %.loopexit, %291
  %307 = phi ptr [ %294, %291 ], [ %298, %299 ], [ %298, %.loopexit ]
  %308 = trunc i32 %69 to i16
  %309 = getelementptr inbounds nuw i8, ptr %307, i64 4
  store i16 %308, ptr %309, align 4, !tbaa !191
  store i32 %117, ptr %307, align 4, !tbaa !194
  %310 = add nsw i64 %151, -3
  %311 = icmp ugt i64 %310, 65535
  br i1 %311, label %312, label %319, !prof !356

312:                                              ; preds = %306
  store i32 2, ptr %47, align 8, !tbaa !198
  %313 = load ptr, ptr %43, align 8, !tbaa !186
  %314 = ptrtoint ptr %307 to i64
  %315 = ptrtoint ptr %313 to i64
  %316 = sub i64 %314, %315
  %317 = lshr exact i64 %316, 3
  %318 = trunc i64 %317 to i32
  store i32 %318, ptr %49, align 4, !tbaa !199
  br label %319

319:                                              ; preds = %312, %306
  %320 = trunc i64 %310 to i16
  %321 = getelementptr inbounds nuw i8, ptr %307, i64 6
  store i16 %320, ptr %321, align 2, !tbaa !195
  %322 = getelementptr inbounds nuw i8, ptr %307, i64 8
  store ptr %322, ptr %48, align 8, !tbaa !190
  %323 = add i32 %69, %62
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds nuw i8, ptr %57, i64 %324
  %326 = add i32 %56, 1
  %327 = zext i32 %326 to i64
  %328 = icmp ugt i64 %3, %327
  br i1 %328, label %52, label %.loopexit28, !llvm.loop !457

.loopexit28:                                      ; preds = %319, %64, %24
  %329 = phi ptr [ %4, %24 ], [ %325, %319 ], [ %57, %64 ]
  %330 = phi i32 [ %9, %24 ], [ %326, %319 ], [ %56, %64 ]
  %331 = phi i64 [ %29, %24 ], [ %327, %319 ], [ %55, %64 ]
  %332 = icmp eq i64 %3, %331
  br i1 %332, label %.loopexit31, label %333

333:                                              ; preds = %.loopexit28
  %334 = icmp ne i32 %6, 2
  %335 = icmp eq i32 %330, %9
  %336 = select i1 %334, i1 true, i1 %335
  br i1 %336, label %369, label %337

337:                                              ; preds = %333
  %338 = add i32 %330, -1
  %339 = add i32 %9, 2
  %340 = icmp ult i32 %338, %339
  br i1 %340, label %352, label %341

341:                                              ; preds = %337
  %342 = add i32 %330, -3
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !212
  %346 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %345, ptr %346, align 8, !tbaa !49
  %347 = add i32 %330, -2
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !212
  %351 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %350, ptr %351, align 4, !tbaa !49
  br label %365

352:                                              ; preds = %337
  %353 = icmp eq i32 %330, %339
  br i1 %353, label %354, label %362

354:                                              ; preds = %352
  %355 = load i32, ptr %8, align 8, !tbaa !49
  %356 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %355, ptr %356, align 8, !tbaa !49
  %357 = add i32 %330, -2
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !212
  %361 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %360, ptr %361, align 4, !tbaa !49
  br label %365

362:                                              ; preds = %352
  %363 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %364 = load <2 x i32>, ptr %8, align 8, !tbaa !49
  store <2 x i32> %364, ptr %363, align 4, !tbaa !49
  br label %365

365:                                              ; preds = %362, %354, %341
  %366 = zext i32 %338 to i64
  %367 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !212
  store i32 %368, ptr %8, align 8, !tbaa !49
  br label %369

369:                                              ; preds = %365, %333
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %371 = load ptr, ptr %370, align 8, !tbaa !56
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %372, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %.split = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %331
  %373 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %374 = load i32, ptr %373, align 4, !tbaa !215
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %388, label %376

376:                                              ; preds = %369
  %377 = zext i32 %374 to i64
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %379 = load ptr, ptr %378, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %379, ptr readonly align 1 %329, i64 %377, i1 false)
  %380 = load ptr, ptr %378, align 8, !tbaa !201
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 %377
  store ptr %381, ptr %378, align 8, !tbaa !201
  %382 = load i32, ptr %373, align 4, !tbaa !215
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds nuw i8, ptr %329, i64 %383
  %385 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %386 = load i64, ptr %385, align 8, !tbaa !450
  %387 = add i64 %386, %383
  store i64 %387, ptr %385, align 8, !tbaa !450
  br label %388

388:                                              ; preds = %376, %369
  %389 = phi ptr [ %384, %376 ], [ %329, %369 ]
  %390 = icmp eq ptr %389, %10
  br i1 %390, label %391, label %.loopexit31

391:                                              ; preds = %388
  %392 = add i32 %330, 1
  store i32 %392, ptr %1, align 8, !tbaa !448
  br label %.loopexit31

.loopexit31:                                      ; preds = %143, %134, %120, %391, %388, %.loopexit28
  %393 = phi i64 [ %5, %391 ], [ -107, %.loopexit28 ], [ -107, %388 ], [ -107, %120 ], [ -107, %134 ], [ -107, %143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %393
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #22 {
  %3 = load i8, ptr %0, align 1, !tbaa !196
  %4 = zext i8 %3 to i64
  %5 = mul nuw i64 %4, 72340172838076673
  %6 = and i64 %1, 31
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %.loopexit, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %82, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %12 = getelementptr i8, ptr %0, i64 %6
  %13 = getelementptr i8, ptr %12, i64 -7
  %14 = icmp samesign ugt i64 %6, 8
  br i1 %14, label %15, label %.loopexit16

15:                                               ; preds = %10
  %16 = load i64, ptr %0, align 1, !tbaa !114
  %17 = load i64, ptr %11, align 1, !tbaa !114
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %.preheader15, label %19

19:                                               ; preds = %15
  %20 = xor i64 %17, %16
  %21 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %20, i1 true)
  %22 = lshr i64 %21, 3
  br label %78

.preheader15:                                     ; preds = %15, %28
  %23 = phi ptr [ %26, %28 ], [ %0, %15 ]
  %24 = phi ptr [ %25, %28 ], [ %11, %15 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %27 = icmp ult ptr %25, %13
  br i1 %27, label %28, label %.loopexit16

28:                                               ; preds = %.preheader15
  %29 = load i64, ptr %26, align 1, !tbaa !114
  %30 = load i64, ptr %25, align 1, !tbaa !114
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %.preheader15, label %32

32:                                               ; preds = %28
  %33 = xor i64 %30, %29
  %34 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %33, i1 true)
  %35 = lshr i64 %34, 3
  %36 = getelementptr inbounds nuw i8, ptr %25, i64 %35
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %11 to i64
  %39 = sub i64 %37, %38
  br label %78

.loopexit16:                                      ; preds = %.preheader15, %10
  %40 = phi ptr [ %0, %10 ], [ %26, %.preheader15 ]
  %41 = phi ptr [ %11, %10 ], [ %25, %.preheader15 ]
  %42 = getelementptr inbounds i8, ptr %12, i64 -3
  %43 = icmp ult ptr %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %.loopexit16
  %45 = load i32, ptr %40, align 1, !tbaa !49
  %46 = load i32, ptr %41, align 1, !tbaa !49
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %50 = getelementptr inbounds nuw i8, ptr %40, i64 4
  br label %51

51:                                               ; preds = %48, %44, %.loopexit16
  %52 = phi ptr [ %50, %48 ], [ %40, %44 ], [ %40, %.loopexit16 ]
  %53 = phi ptr [ %49, %48 ], [ %41, %44 ], [ %41, %.loopexit16 ]
  %54 = getelementptr inbounds i8, ptr %12, i64 -1
  %55 = icmp ult ptr %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i16, ptr %52, align 1, !tbaa !231
  %58 = load i16, ptr %53, align 1, !tbaa !231
  %59 = icmp eq i16 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %62 = getelementptr inbounds nuw i8, ptr %52, i64 2
  br label %63

63:                                               ; preds = %60, %56, %51
  %64 = phi ptr [ %62, %60 ], [ %52, %56 ], [ %52, %51 ]
  %65 = phi ptr [ %61, %60 ], [ %53, %56 ], [ %53, %51 ]
  %66 = icmp ult ptr %65, %12
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i8, ptr %64, align 1, !tbaa !196
  %69 = load i8, ptr %65, align 1, !tbaa !196
  %70 = icmp eq i8 %68, %69
  %71 = zext i1 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %65, i64 %71
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi ptr [ %65, %63 ], [ %72, %67 ]
  %75 = ptrtoint ptr %74 to i64
  %76 = ptrtoint ptr %11 to i64
  %77 = sub i64 %75, %76
  br label %78

78:                                               ; preds = %73, %32, %19
  %79 = phi i64 [ %77, %73 ], [ %22, %19 ], [ %39, %32 ]
  %80 = add nsw i64 %6, -1
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %.loopexit

82:                                               ; preds = %78, %8
  %83 = icmp ult i64 %1, 32
  br i1 %83, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %82, %100
  %84 = phi i64 [ %101, %100 ], [ %6, %82 ]
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 %84
  %86 = load i64, ptr %85, align 1, !tbaa !114
  %87 = icmp eq i64 %86, %5
  br i1 %87, label %88, label %.loopexit

88:                                               ; preds = %.preheader
  %89 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %90 = load i64, ptr %89, align 1, !tbaa !114
  %91 = icmp eq i64 %90, %5
  br i1 %91, label %92, label %.loopexit

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %94 = load i64, ptr %93, align 1, !tbaa !114
  %95 = icmp eq i64 %94, %5
  br i1 %95, label %96, label %.loopexit

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %85, i64 24
  %98 = load i64, ptr %97, align 1, !tbaa !114
  %99 = icmp eq i64 %98, %5
  br i1 %99, label %100, label %.loopexit

100:                                              ; preds = %96
  %101 = add i64 %84, 32
  %102 = icmp eq i64 %101, %1
  br i1 %102, label %.loopexit, label %.preheader, !llvm.loop !458

.loopexit:                                        ; preds = %100, %96, %92, %88, %.preheader, %82, %78, %2
  %103 = phi i32 [ 1, %2 ], [ 0, %78 ], [ 1, %82 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %.preheader ], [ 1, %100 ]
  ret i32 %103
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #1 {
  %11 = alloca %struct.repcodes_s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !459
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %.loopexit, label %13

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
  br i1 %30, label %.loopexit, label %31

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
  %40 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %39
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
  %60 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !49
  %62 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %59
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
  %86 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %85
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
  %109 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %108
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
  br i1 %122, label %.loopexit, label %38, !llvm.loop !460

.loopexit:                                        ; preds = %120, %28, %10
  %123 = icmp ult i64 %5, 3
  br i1 %123, label %231, label %124

124:                                              ; preds = %.loopexit
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %126 = load ptr, ptr %125, align 8, !tbaa !55
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %128 = load ptr, ptr %127, align 8, !tbaa !56
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %130 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %131 = add i64 %5, -3
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %133 = load ptr, ptr %132, align 8, !tbaa !57
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %135 = load i64, ptr %134, align 8, !tbaa !58
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !8
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %139 = load ptr, ptr %138, align 8, !tbaa !200
  %140 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %141 = load ptr, ptr %140, align 8, !tbaa !201
  %142 = ptrtoint ptr %141 to i64
  %143 = ptrtoint ptr %139 to i64
  %144 = sub i64 %142, %143
  %145 = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %130, i64 noundef %131, ptr noundef %139, i64 noundef %144, ptr noundef readonly %1, ptr noundef %126, ptr noundef %128, ptr noundef nonnull readonly %129, ptr noundef %133, i64 noundef %135, i32 noundef %137)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %164, label %147

147:                                              ; preds = %124
  %148 = icmp eq i64 %145, -70
  %149 = icmp ule i64 %7, %131
  %150 = and i1 %149, %148
  br i1 %150, label %164, label %151

151:                                              ; preds = %147
  %152 = icmp ult i64 %145, -119
  br i1 %152, label %153, label %231

153:                                              ; preds = %151
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %155 = load i32, ptr %154, align 4, !tbaa !90
  %156 = tail call i32 @llvm.umax.i32(i32 %155, i32 7)
  %157 = add i32 %156, -1
  %158 = zext nneg i32 %157 to i64
  %159 = lshr i64 %7, %158
  %160 = add i64 %7, -2
  %161 = sub i64 %160, %159
  %162 = icmp ult i64 %145, %161
  %163 = select i1 %162, i64 %145, i64 0
  br label %164

164:                                              ; preds = %153, %147, %124
  %165 = phi i64 [ %163, %153 ], [ 0, %147 ], [ 0, %124 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %167 = load i32, ptr %166, align 8, !tbaa !249
  %168 = icmp eq i32 %167, 0
  %169 = icmp ult i64 %165, 25
  %170 = and i1 %169, %168
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %6, i64 noundef %7)
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i64 %165, i64 1
  br label %175

175:                                              ; preds = %171, %164
  %176 = phi i64 [ %165, %164 ], [ %174, %171 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %178 = load i32, ptr %177, align 8, !tbaa !250
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %177, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %182 = icmp ult i64 %181, -119
  br i1 %182, label %183, label %231

183:                                              ; preds = %180
  %184 = load <2 x ptr>, ptr %125, align 8, !tbaa !48
  %185 = shufflevector <2 x ptr> %184, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %185, ptr %125, align 8, !tbaa !48
  br label %231

186:                                              ; preds = %175
  switch i64 %176, label %212 [
    i64 0, label %187
    i64 1, label %200
  ]

187:                                              ; preds = %186
  %188 = add i64 %7, 3
  %189 = icmp ugt i64 %188, %5
  br i1 %189, label %231, label %190

190:                                              ; preds = %187
  %191 = trunc i64 %7 to i32
  %192 = shl i32 %191, 3
  %193 = or disjoint i32 %192, %8
  %194 = trunc i32 %193 to i16
  store i16 %194, ptr %4, align 1, !tbaa !231
  %195 = lshr i32 %192, 16
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %196, ptr %197, align 1, !tbaa !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %130, ptr readonly align 1 %6, i64 %7, i1 false)
  %198 = icmp ult i64 %188, -119
  br i1 %198, label %199, label %231

199:                                              ; preds = %190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !459
  br label %224

200:                                              ; preds = %186
  %201 = icmp eq i64 %5, 3
  br i1 %201, label %231, label %202

202:                                              ; preds = %200
  %203 = load i8, ptr %6, align 1, !tbaa !196
  %204 = trunc i64 %7 to i32
  %205 = shl i32 %204, 3
  %206 = or disjoint i32 %205, %8
  %207 = trunc i32 %206 to i16
  %208 = or disjoint i16 %207, 2
  store i16 %208, ptr %4, align 1, !tbaa !231
  %209 = lshr i32 %205, 16
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %210, ptr %211, align 1, !tbaa !196
  store i8 %203, ptr %130, align 1, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !459
  br label %224

212:                                              ; preds = %186
  %213 = load <2 x ptr>, ptr %125, align 8, !tbaa !48
  %214 = shufflevector <2 x ptr> %213, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %214, ptr %125, align 8, !tbaa !48
  %215 = trunc i64 %176 to i32
  %216 = shl i32 %215, 3
  %217 = or disjoint i32 %216, %8
  %218 = trunc i32 %217 to i16
  %219 = or disjoint i16 %218, 4
  store i16 %219, ptr %4, align 1, !tbaa !231
  %220 = lshr i32 %216, 16
  %221 = trunc i32 %220 to i8
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %221, ptr %222, align 1, !tbaa !196
  %223 = add nuw i64 %176, 3
  br label %224

224:                                              ; preds = %212, %202, %199
  %225 = phi i64 [ %188, %199 ], [ 4, %202 ], [ %223, %212 ]
  %226 = load ptr, ptr %125, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 5604
  %228 = load i32, ptr %227, align 4, !tbaa !167
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i32 1, ptr %227, align 4, !tbaa !167
  br label %231

231:                                              ; preds = %230, %224, %200, %190, %187, %183, %180, %151, %.loopexit
  %232 = phi i64 [ 0, %183 ], [ %181, %180 ], [ %188, %190 ], [ -70, %.loopexit ], [ %225, %230 ], [ %225, %224 ], [ -70, %187 ], [ %145, %151 ], [ -70, %200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  ret i64 %232
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef captures(none) initializes((0, 80)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #23 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !256
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !186
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = load ptr, ptr %0, align 8, !tbaa !186
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %68, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !199
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %19 = icmp eq i64 %14, 8
  br i1 %19, label %.thread, label %20

20:                                               ; preds = %11
  %21 = ashr exact i64 %14, 3
  %22 = and i64 %21, -2
  br label %23

23:                                               ; preds = %49, %20
  %24 = phi i64 [ 0, %20 ], [ %50, %49 ]
  %25 = phi i64 [ 0, %20 ], [ %51, %49 ]
  %.split = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %25
  %26 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %27 = load i16, ptr %26, align 4, !tbaa !231
  %28 = zext i16 %27 to i64
  %29 = add i64 %24, %28
  %30 = icmp eq i64 %25, %17
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, ptr %18, align 8, !tbaa !198
  %33 = icmp eq i32 %32, 1
  %34 = add i64 %29, 65536
  %35 = select i1 %33, i64 %34, i64 %29
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i64 [ %29, %23 ], [ %35, %31 ]
  %38 = or disjoint i64 %25, 1
  %.split9 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %38
  %39 = getelementptr inbounds nuw i8, ptr %.split9, i64 4
  %40 = load i16, ptr %39, align 4, !tbaa !231
  %41 = zext i16 %40 to i64
  %42 = add i64 %37, %41
  %43 = icmp eq i64 %38, %17
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, ptr %18, align 8, !tbaa !198
  %46 = icmp eq i32 %45, 1
  %47 = add i64 %42, 65536
  %48 = select i1 %46, i64 %47, i64 %42
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i64 [ %42, %36 ], [ %48, %44 ]
  %51 = add i64 %25, 2
  %52 = icmp eq i64 %51, %22
  br i1 %52, label %53, label %23, !llvm.loop !258

53:                                               ; preds = %49
  %54 = and i64 %14, 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %68, label %.thread

.thread:                                          ; preds = %11, %53
  %56 = phi i64 [ %22, %53 ], [ 0, %11 ]
  %57 = phi i64 [ %50, %53 ], [ 0, %11 ]
  %.split10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %.split10, i64 4
  %59 = load i16, ptr %58, align 4, !tbaa !231
  %60 = zext i16 %59 to i64
  %61 = add i64 %57, %60
  %62 = icmp eq i64 %56, %17
  br i1 %62, label %63, label %68

63:                                               ; preds = %.thread
  %64 = load i32, ptr %18, align 8, !tbaa !198
  %65 = icmp eq i32 %64, 1
  %66 = add i64 %61, 65536
  %67 = select i1 %65, i64 %66, i64 %61
  br label %68

68:                                               ; preds = %63, %.thread, %53, %6
  %69 = phi i64 [ 0, %6 ], [ %50, %53 ], [ %61, %.thread ], [ %67, %63 ]
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !200
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %69
  store ptr %72, ptr %70, align 8, !tbaa !200
  br label %73

73:                                               ; preds = %68, %4
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %75 = load i32, ptr %74, align 8, !tbaa !198
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %79 = load i32, ptr %78, align 4, !tbaa !199
  %80 = zext i32 %79 to i64
  %81 = icmp ugt i64 %2, %80
  %82 = icmp samesign ult i64 %3, %80
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %85, align 8, !tbaa !198
  br label %91

86:                                               ; preds = %77
  %87 = trunc nuw i64 %2 to i32
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %89 = load i32, ptr %88, align 4, !tbaa !199
  %90 = sub i32 %89, %87
  store i32 %90, ptr %88, align 4, !tbaa !199
  br label %91

91:                                               ; preds = %86, %84, %73
  %92 = load ptr, ptr %1, align 8, !tbaa !186
  %93 = getelementptr inbounds nuw [8 x i8], ptr %92, i64 %2
  store ptr %93, ptr %0, align 8, !tbaa !186
  %94 = load ptr, ptr %1, align 8, !tbaa !186
  %95 = getelementptr inbounds nuw [8 x i8], ptr %94, i64 %3
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %95, ptr %96, align 8, !tbaa !190
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %98 = load ptr, ptr %97, align 8, !tbaa !190
  %99 = ptrtoint ptr %98 to i64
  %100 = ptrtoint ptr %94 to i64
  %101 = sub i64 %99, %100
  %102 = ashr exact i64 %101, 3
  %103 = icmp eq i64 %3, %102
  br i1 %103, label %169, label %104

104:                                              ; preds = %91
  %105 = icmp eq ptr %95, %93
  br i1 %105, label %163, label %106

106:                                              ; preds = %104
  %107 = ptrtoint ptr %95 to i64
  %108 = ptrtoint ptr %93 to i64
  %109 = sub i64 %107, %108
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %111 = load i32, ptr %110, align 4, !tbaa !199
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %114 = icmp eq i64 %109, 8
  br i1 %114, label %.thread14, label %115

115:                                              ; preds = %106
  %116 = ashr exact i64 %109, 3
  %117 = and i64 %116, -2
  br label %118

118:                                              ; preds = %144, %115
  %119 = phi i64 [ 0, %115 ], [ %145, %144 ]
  %120 = phi i64 [ 0, %115 ], [ %146, %144 ]
  %.split11 = getelementptr inbounds nuw [8 x i8], ptr %93, i64 %120
  %121 = getelementptr inbounds nuw i8, ptr %.split11, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !231
  %123 = zext i16 %122 to i64
  %124 = add i64 %119, %123
  %125 = icmp eq i64 %120, %112
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load i32, ptr %113, align 8, !tbaa !198
  %128 = icmp eq i32 %127, 1
  %129 = add i64 %124, 65536
  %130 = select i1 %128, i64 %129, i64 %124
  br label %131

131:                                              ; preds = %126, %118
  %132 = phi i64 [ %124, %118 ], [ %130, %126 ]
  %133 = or disjoint i64 %120, 1
  %.split12 = getelementptr inbounds nuw [8 x i8], ptr %93, i64 %133
  %134 = getelementptr inbounds nuw i8, ptr %.split12, i64 4
  %135 = load i16, ptr %134, align 4, !tbaa !231
  %136 = zext i16 %135 to i64
  %137 = add i64 %132, %136
  %138 = icmp eq i64 %133, %112
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i32, ptr %113, align 8, !tbaa !198
  %141 = icmp eq i32 %140, 1
  %142 = add i64 %137, 65536
  %143 = select i1 %141, i64 %142, i64 %137
  br label %144

144:                                              ; preds = %139, %131
  %145 = phi i64 [ %137, %131 ], [ %143, %139 ]
  %146 = add i64 %120, 2
  %147 = icmp eq i64 %146, %117
  br i1 %147, label %148, label %118, !llvm.loop !258

148:                                              ; preds = %144
  %149 = and i64 %109, 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %163, label %.thread14

.thread14:                                        ; preds = %106, %148
  %151 = phi i64 [ %117, %148 ], [ 0, %106 ]
  %152 = phi i64 [ %145, %148 ], [ 0, %106 ]
  %.split13 = getelementptr inbounds nuw [8 x i8], ptr %93, i64 %151
  %153 = getelementptr inbounds nuw i8, ptr %.split13, i64 4
  %154 = load i16, ptr %153, align 4, !tbaa !231
  %155 = zext i16 %154 to i64
  %156 = add i64 %152, %155
  %157 = icmp eq i64 %151, %112
  br i1 %157, label %158, label %163

158:                                              ; preds = %.thread14
  %159 = load i32, ptr %113, align 8, !tbaa !198
  %160 = icmp eq i32 %159, 1
  %161 = add i64 %156, 65536
  %162 = select i1 %160, i64 %161, i64 %156
  br label %163

163:                                              ; preds = %158, %.thread14, %148, %104
  %164 = phi i64 [ 0, %104 ], [ %145, %148 ], [ %156, %.thread14 ], [ %162, %158 ]
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !200
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 %164
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %167, ptr %168, align 8, !tbaa !201
  br label %169

169:                                              ; preds = %163, %91
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %171 = load ptr, ptr %170, align 8, !tbaa !187
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 %2
  store ptr %172, ptr %170, align 8, !tbaa !187
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %174 = load ptr, ptr %173, align 8, !tbaa !189
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 %2
  store ptr %175, ptr %173, align 8, !tbaa !189
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %177 = load ptr, ptr %176, align 8, !tbaa !188
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 %2
  store ptr %178, ptr %176, align 8, !tbaa !188
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 3768
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 3848
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 3928
  %10 = sub i64 %2, %1
  %11 = icmp ult i64 %10, 300
  br i1 %11, label %.loopexit, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %6, align 8, !tbaa !255
  br label %14

14:                                               ; preds = %32, %12
  %15 = phi i64 [ %37, %32 ], [ %13, %12 ]
  %16 = phi i64 [ %18, %32 ], [ %1, %12 ]
  %17 = add i64 %16, %2
  %18 = lshr i64 %17, 1
  %19 = icmp ugt i64 %15, 195
  br i1 %19, label %.loopexit, label %20

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
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %20
  %28 = icmp ult i64 %23, -119
  %29 = add i64 %23, %22
  %30 = icmp ult i64 %29, %21
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %.loopexit

32:                                               ; preds = %27
  tail call fastcc void @ZSTD_deriveBlockSplitsHelper(ptr noundef %0, i64 noundef %16, i64 noundef %18, ptr noundef nonnull %3, ptr noundef %4)
  %33 = trunc i64 %18 to i32
  %34 = load ptr, ptr %0, align 8, !tbaa !253
  %35 = load i64, ptr %6, align 8, !tbaa !255
  %36 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %35
  store i32 %33, ptr %36, align 4, !tbaa !49
  %37 = add i64 %35, 1
  store i64 %37, ptr %6, align 8, !tbaa !255
  %38 = sub nsw i64 %2, %18
  %39 = icmp ult i64 %38, 300
  br i1 %39, label %.loopexit, label %14

.loopexit:                                        ; preds = %32, %27, %20, %14, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
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
  br i1 %18, label %19, label %187

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
  %43 = load i32, ptr %7, align 8, !tbaa !461
  %44 = icmp eq i32 %43, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
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
  %53 = call i64 @HIST_count_wksp(ptr noundef %41, ptr noundef nonnull %6, ptr noundef %21, i64 noundef %26, ptr noundef %41, i64 noundef %42) #29
  %54 = icmp ult i64 %53, -119
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, ptr %6, align 4, !tbaa !49
  %57 = call i64 @HUF_estimateCompressedSize(ptr noundef %40, ptr noundef %41, i32 noundef %56) #29
  br i1 %44, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %60 = load i64, ptr %59, align 8, !tbaa !462
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %70 = getelementptr inbounds nuw i8, ptr %40, i64 2064
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 5100
  %73 = load i32, ptr %72, align 4, !tbaa !463
  %74 = getelementptr inbounds nuw i8, ptr %28, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 31, ptr %5, align 4, !tbaa !49
  %75 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %5, ptr noundef %28, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #29
  switch i32 %73, label %79 [
    i32 0, label %76
    i32 1, label %88
  ]

76:                                               ; preds = %68
  %77 = load i32, ptr %5, align 4, !tbaa !49
  %78 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %41, i32 noundef %77) #29
  br label %85

79:                                               ; preds = %68
  %80 = and i32 %73, -2
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, ptr %5, align 4, !tbaa !49
  %84 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %70, ptr noundef %41, i32 noundef %83) #29
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i64 [ %78, %76 ], [ %84, %82 ]
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %98

88:                                               ; preds = %85, %79, %68
  %89 = phi i64 [ %86, %85 ], [ 0, %79 ], [ 0, %68 ]
  %90 = icmp eq ptr %34, %35
  br i1 %90, label %.loopexit7, label %.preheader6

.preheader6:                                      ; preds = %88, %.preheader6
  %91 = phi i64 [ %95, %.preheader6 ], [ %89, %88 ]
  %92 = phi ptr [ %96, %.preheader6 ], [ %28, %88 ]
  %93 = load i8, ptr %92, align 1, !tbaa !196
  %94 = zext i8 %93 to i64
  %95 = add i64 %91, %94
  %96 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %97 = icmp ult ptr %96, %74
  br i1 %97, label %.preheader6, label %.loopexit7, !llvm.loop !464

98:                                               ; preds = %85
  %99 = mul i64 %39, 10
  br label %102

.loopexit7:                                       ; preds = %.preheader6, %88
  %100 = phi i64 [ %89, %88 ], [ %95, %.preheader6 ]
  %101 = lshr i64 %100, 3
  br label %102

102:                                              ; preds = %.loopexit7, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %.loopexit7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %104 = load i32, ptr %71, align 8, !tbaa !465
  %105 = getelementptr inbounds nuw i8, ptr %40, i64 4288
  %106 = getelementptr inbounds nuw i8, ptr %30, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 35, ptr %4, align 4, !tbaa !49
  %107 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %4, ptr noundef %30, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #29
  switch i32 %104, label %111 [
    i32 0, label %108
    i32 1, label %120
  ]

108:                                              ; preds = %102
  %109 = load i32, ptr %4, align 4, !tbaa !49
  %110 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %109) #29
  br label %117

111:                                              ; preds = %102
  %112 = and i32 %104, -2
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, ptr %4, align 4, !tbaa !49
  %116 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %105, ptr noundef %41, i32 noundef %115) #29
  br label %117

117:                                              ; preds = %114, %108
  %118 = phi i64 [ %110, %108 ], [ %116, %114 ]
  %119 = icmp ult i64 %118, -119
  br i1 %119, label %120, label %123

120:                                              ; preds = %117, %111, %102
  %121 = phi i64 [ %118, %117 ], [ 0, %111 ], [ 0, %102 ]
  %122 = icmp eq ptr %34, %35
  br i1 %122, label %.loopexit5, label %.preheader4

123:                                              ; preds = %117
  %124 = mul i64 %39, 10
  br label %137

.preheader4:                                      ; preds = %120, %.preheader4
  %125 = phi i64 [ %132, %.preheader4 ], [ %121, %120 ]
  %126 = phi ptr [ %133, %.preheader4 ], [ %30, %120 ]
  %127 = load i8, ptr %126, align 1, !tbaa !196
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !196
  %131 = zext i8 %130 to i64
  %132 = add i64 %125, %131
  %133 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %134 = icmp ult ptr %133, %106
  br i1 %134, label %.preheader4, label %.loopexit5, !llvm.loop !464

.loopexit5:                                       ; preds = %.preheader4, %120
  %135 = phi i64 [ %121, %120 ], [ %132, %.preheader4 ]
  %136 = lshr i64 %135, 3
  br label %137

137:                                              ; preds = %.loopexit5, %123
  %138 = phi i64 [ %124, %123 ], [ %136, %.loopexit5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %140 = load i32, ptr %139, align 8, !tbaa !228
  %141 = getelementptr inbounds nuw i8, ptr %40, i64 2836
  %142 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 52, ptr %3, align 4, !tbaa !49
  %143 = call i64 @HIST_countFast_wksp(ptr noundef %41, ptr noundef nonnull %3, ptr noundef %32, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %39, ptr noundef %41, i64 noundef %42) #29
  switch i32 %140, label %147 [
    i32 0, label %144
    i32 1, label %156
  ]

144:                                              ; preds = %137
  %145 = load i32, ptr %3, align 4, !tbaa !49
  %146 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %41, i32 noundef %145) #29
  br label %153

147:                                              ; preds = %137
  %148 = and i32 %140, -2
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, ptr %3, align 4, !tbaa !49
  %152 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %141, ptr noundef %41, i32 noundef %151) #29
  br label %153

153:                                              ; preds = %150, %144
  %154 = phi i64 [ %146, %144 ], [ %152, %150 ]
  %155 = icmp ult i64 %154, -119
  br i1 %155, label %156, label %159

156:                                              ; preds = %153, %147, %137
  %157 = phi i64 [ %154, %153 ], [ 0, %147 ], [ 0, %137 ]
  %158 = icmp eq ptr %34, %35
  br i1 %158, label %.loopexit, label %.preheader

159:                                              ; preds = %153
  %160 = mul i64 %39, 10
  br label %173

.preheader:                                       ; preds = %156, %.preheader
  %161 = phi i64 [ %168, %.preheader ], [ %157, %156 ]
  %162 = phi ptr [ %169, %.preheader ], [ %32, %156 ]
  %163 = load i8, ptr %162, align 1, !tbaa !196
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !196
  %167 = zext i8 %166 to i64
  %168 = add i64 %161, %167
  %169 = getelementptr inbounds nuw i8, ptr %162, i64 1
  %170 = icmp ult ptr %169, %142
  br i1 %170, label %.preheader, label %.loopexit, !llvm.loop !464

.loopexit:                                        ; preds = %.preheader, %156
  %171 = phi i64 [ %157, %156 ], [ %168, %.preheader ]
  %172 = lshr i64 %171, 3
  br label %173

173:                                              ; preds = %.loopexit, %159
  %174 = phi i64 [ %160, %159 ], [ %172, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 5248
  %176 = load i64, ptr %175, align 8, !tbaa !466
  %177 = icmp ugt i64 %39, 32511
  %178 = icmp ugt i64 %39, 127
  %179 = select i1 %178, i64 3, i64 2
  %180 = select i1 %177, i64 4, i64 3
  %181 = add nuw nsw i64 %180, %179
  %182 = add i64 %181, %69
  %183 = add i64 %182, %103
  %184 = add i64 %183, %138
  %185 = add i64 %184, %174
  %186 = add i64 %185, %176
  br label %187

187:                                              ; preds = %173, %2
  %188 = phi i64 [ %186, %173 ], [ %17, %2 ]
  ret i64 %188
}

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -70, 1) i64 @ZSTD_copyBlockSequences(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #14 {
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
  %19 = load i64, ptr %18, align 8, !tbaa !467
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !468
  %22 = getelementptr inbounds nuw [16 x i8], ptr %21, i64 %19
  %23 = add nsw i64 %11, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %25 = load i64, ptr %24, align 8, !tbaa !469
  %26 = sub i64 %25, %19
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %122, label %28

28:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %29 = icmp eq ptr %7, %5
  br i1 %29, label %.loopexit, label %30

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

40:                                               ; preds = %106, %30
  %41 = phi i32 [ %39, %30 ], [ %107, %106 ]
  %42 = phi i32 [ %38, %30 ], [ %108, %106 ]
  %43 = phi i64 [ 0, %30 ], [ %111, %106 ]
  %44 = phi i64 [ 0, %30 ], [ %112, %106 ]
  %45 = phi i32 [ %31, %30 ], [ %109, %106 ]
  %46 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %44
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i16, ptr %47, align 4, !tbaa !191
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %44
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i32 %49, ptr %51, align 4, !tbaa !215
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 6
  %53 = load i16, ptr %52, align 2, !tbaa !195
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, 3
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %55, ptr %56, align 4, !tbaa !214
  %57 = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 0, ptr %57, align 4, !tbaa !470
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

65:                                               ; preds = %63, %61, %59, %40
  %66 = phi i32 [ %49, %59 ], [ %62, %61 ], [ %49, %63 ], [ %49, %40 ]
  %67 = load i32, ptr %46, align 4, !tbaa !194
  %68 = add i32 %67, -1
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  store i32 %67, ptr %57, align 4, !tbaa !470
  %71 = icmp eq i32 %66, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = zext nneg i32 %68 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %73
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
  %82 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !49
  br label %84

84:                                               ; preds = %80, %78, %72
  %85 = phi i32 [ %83, %80 ], [ %79, %78 ], [ %75, %72 ]
  store i32 %85, ptr %50, align 4, !tbaa !212
  br label %89

86:                                               ; preds = %65
  %87 = add i32 %67, -3
  store i32 %87, ptr %50, align 4, !tbaa !212
  %88 = icmp ugt i32 %67, 3
  br i1 %88, label %103, label %89

89:                                               ; preds = %86, %84
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
  %97 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !49
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  %101 = icmp eq i32 %92, 1
  %102 = select i1 %101, i32 %41, i32 %42
  br label %103

103:                                              ; preds = %99, %86
  %104 = phi i32 [ %102, %99 ], [ %42, %86 ]
  %105 = phi i32 [ %100, %99 ], [ %87, %86 ]
  store i32 %104, ptr %37, align 4, !tbaa !49
  store i32 %45, ptr %36, align 4, !tbaa !49
  store i32 %105, ptr %4, align 4, !tbaa !49
  br label %106

106:                                              ; preds = %103, %89
  %107 = phi i32 [ %41, %89 ], [ %104, %103 ]
  %108 = phi i32 [ %42, %89 ], [ %45, %103 ]
  %109 = phi i32 [ %45, %89 ], [ %105, %103 ]
  %110 = zext nneg i32 %66 to i64
  %111 = add i64 %43, %110
  %112 = add nuw i64 %44, 1
  %113 = icmp eq i64 %112, %11
  br i1 %113, label %.loopexit, label %40, !llvm.loop !471

.loopexit:                                        ; preds = %106, %28
  %114 = phi i64 [ 0, %28 ], [ %111, %106 ]
  %115 = add i64 %114, %17
  %116 = sub i64 %16, %115
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %11
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 4
  store i32 %117, ptr %119, align 4, !tbaa !215
  %120 = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i32 0, ptr %120, align 4, !tbaa !214
  store i32 0, ptr %118, align 4, !tbaa !212
  %121 = add i64 %23, %19
  store i64 %121, ptr %18, align 8, !tbaa !467
  br label %122

122:                                              ; preds = %.loopexit, %3
  %123 = phi i64 [ 0, %.loopexit ], [ -70, %3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i64 %123
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) unnamed_addr #24 {
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

51:                                               ; preds = %46, %44, %43, %39
  %52 = phi i32 [ 1, %43 ], [ 0, %39 ], [ 0, %44 ], [ %50, %46 ]
  %53 = tail call i64 @ZSTD_compressLiterals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %32, i64 noundef %33, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %52, i32 noundef %40, i32 noundef %10) #29
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

79:                                               ; preds = %74, %67, %62
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
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 2064
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %4, i64 noundef %24, ptr noundef nonnull %88, ptr noundef nonnull %15, ptr noundef nonnull %87, ptr noundef nonnull %31, i32 noundef %14, ptr noundef nonnull %8, ptr noundef nonnull %32, i64 noundef %33)
  %89 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %90 = load i64, ptr %89, align 8, !tbaa !429
  %91 = icmp ult i64 %90, -119
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %124

93:                                               ; preds = %86
  %94 = load i32, ptr %12, align 8, !tbaa !428
  %95 = shl i32 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %97 = load i32, ptr %96, align 4, !tbaa !430
  %98 = shl i32 %97, 4
  %99 = add i32 %98, %95
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %101 = load i32, ptr %100, align 8, !tbaa !431
  %102 = shl i32 %101, 2
  %103 = add i32 %99, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %80, align 1, !tbaa !196
  %105 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %106 = load i64, ptr %105, align 8, !tbaa !425
  %107 = getelementptr inbounds nuw i8, ptr %87, i64 %90
  %108 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %109 = load i32, ptr %108, align 8, !tbaa !427
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %110 = ptrtoint ptr %107 to i64
  %111 = sub i64 %57, %110
  %112 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %107, i64 noundef %111, ptr noundef nonnull %17, ptr noundef %30, ptr noundef nonnull %15, ptr noundef %26, ptr noundef nonnull %16, ptr noundef %28, ptr noundef %18, i64 noundef %24, i32 noundef %109, i32 noundef %10) #29
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

124:                                              ; preds = %119, %114, %93, %92, %81, %56, %51
  %125 = phi i64 [ %85, %81 ], [ %123, %119 ], [ 0, %114 ], [ %90, %92 ], [ %53, %51 ], [ -70, %56 ], [ %112, %93 ]
  ret i64 %125
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #1 {
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

46:                                               ; preds = %43, %39, %30, %29, %25, %15
  %47 = phi i64 [ 0, %25 ], [ 0, %30 ], [ %17, %15 ], [ -32, %29 ], [ %41, %39 ], [ %40, %43 ]
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef initializes((40, 48), (136, 140)) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #1 {
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

73:                                               ; preds = %66, %54
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

119:                                              ; preds = %112, %101, %74
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %121 = load i32, ptr %120, align 8, !tbaa !93
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %125 = load ptr, ptr %124, align 8, !tbaa !472
  %126 = ptrtoint ptr %9 to i64
  %127 = ptrtoint ptr %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  br label %130

130:                                              ; preds = %123, %119
  %131 = phi i32 [ %129, %123 ], [ 0, %119 ]
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %131, ptr %132, align 8, !tbaa !473
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #29
  br label %133

133:                                              ; preds = %130, %74, %73
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
  %150 = load ptr, ptr %149, align 8, !tbaa !438
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
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #29
  br label %194

171:                                              ; preds = %168
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %6, i32 noundef %7) #29
  br label %194

172:                                              ; preds = %168, %168, %168
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %174 = load i32, ptr %173, align 4, !tbaa !405
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %177) #29
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
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %188) #29
  br label %194

189:                                              ; preds = %178
  %190 = getelementptr inbounds i8, ptr %9, i64 -8
  %191 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %190) #29
  br label %194

192:                                              ; preds = %168, %168, %168, %168
  %193 = getelementptr inbounds i8, ptr %9, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %193, ptr noundef nonnull %9) #29
  br label %194

194:                                              ; preds = %192, %189, %182, %176, %171, %170, %168
  %195 = load ptr, ptr %149, align 8, !tbaa !438
  %196 = ptrtoint ptr %195 to i64
  %197 = sub i64 %159, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, ptr %155, align 4, !tbaa !241
  br label %199

199:                                              ; preds = %194, %133
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @ZSTD_transferSequences_noDelim(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 %6) unnamed_addr #21 {
  %8 = alloca %struct.repcodes_s, align 4
  %9 = load i32, ptr %1, align 8, !tbaa !448
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !474
  %12 = trunc i64 %5 to i32
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
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

28:                                               ; preds = %25, %21, %18
  %29 = phi i64 [ %20, %18 ], [ %27, %25 ], [ 0, %21 ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %32, i64 12, i1 false)
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %.loopexit32, label %34

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

53:                                               ; preds = %353, %34
  %54 = phi i32 [ %52, %34 ], [ %148, %353 ]
  %55 = phi i32 [ %51, %34 ], [ %149, %353 ]
  %56 = phi i32 [ %9, %34 ], [ %361, %353 ]
  %57 = phi i32 [ %11, %34 ], [ %107, %353 ]
  %58 = phi i32 [ %13, %34 ], [ %108, %353 ]
  %59 = phi ptr [ %4, %34 ], [ %359, %353 ]
  %60 = phi i32 [ 0, %34 ], [ %103, %353 ]
  %61 = phi i32 [ 0, %34 ], [ %102, %353 ]
  %62 = phi i32 [ %35, %34 ], [ %150, %353 ]
  %63 = ptrtoint ptr %59 to i64
  %64 = zext i32 %56 to i64
  %65 = icmp ugt i64 %3, %64
  %66 = icmp eq i32 %61, 0
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %.loopexit32

68:                                               ; preds = %53
  %69 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %64
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
  br i1 %82, label %83, label %.loopexit32

83:                                               ; preds = %81
  %84 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %57)
  %85 = add i32 %57, %84
  %86 = sub i32 %58, %85
  %87 = zext i32 %74 to i64
  %88 = icmp ult i64 %5, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load i32, ptr %36, align 4, !tbaa !434
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

99:                                               ; preds = %89, %83
  %100 = sub i32 %58, %72
  br label %.loopexit32

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

128:                                              ; preds = %126, %122, %120, %116, %101
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
  %137 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !49
  br label %139

139:                                              ; preds = %135, %133
  %140 = phi i32 [ %134, %133 ], [ %138, %135 ]
  %141 = icmp eq i32 %132, 1
  %142 = select i1 %141, i32 %54, i32 %55
  br label %143

143:                                              ; preds = %139, %126
  %144 = phi i32 [ %142, %139 ], [ %55, %126 ]
  %145 = phi i32 [ %129, %139 ], [ %111, %126 ]
  %146 = phi i32 [ %140, %139 ], [ %70, %126 ]
  store i32 %144, ptr %38, align 4, !tbaa !49
  store i32 %62, ptr %37, align 4, !tbaa !49
  store i32 %146, ptr %8, align 4, !tbaa !49
  br label %147

147:                                              ; preds = %143, %128
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
  %157 = load i64, ptr %40, align 8, !tbaa !450
  %158 = add i64 %157, %156
  store i64 %158, ptr %40, align 8, !tbaa !450
  %159 = load i32, ptr %41, align 4, !tbaa !244
  %160 = shl nuw i32 1, %159
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %158, %161
  %163 = add i64 %158, %29
  %164 = select i1 %162, i64 %161, i64 %163
  %165 = zext i32 %151 to i64
  %166 = add i64 %164, 3
  %167 = icmp ult i64 %166, %165
  br i1 %167, label %.loopexit36, label %168

168:                                              ; preds = %154
  %169 = load ptr, ptr %42, align 8, !tbaa !127
  %170 = icmp ne ptr %169, null
  %171 = load i32, ptr %36, align 4, !tbaa !434
  %172 = icmp eq i32 %171, 3
  %173 = or i1 %170, %172
  %174 = select i1 %173, i64 3, i64 4
  %175 = zext i32 %105 to i64
  %176 = icmp samesign ugt i64 %174, %175
  br i1 %176, label %.loopexit36, label %177

177:                                              ; preds = %168, %147
  %178 = load i32, ptr %1, align 8, !tbaa !448
  %179 = sub i32 %56, %178
  %180 = zext i32 %179 to i64
  %181 = load i64, ptr %43, align 8, !tbaa !358
  %182 = icmp ugt i64 %181, %180
  br i1 %182, label %183, label %.loopexit36

183:                                              ; preds = %177
  %184 = zext i32 %104 to i64
  %185 = zext i32 %105 to i64
  %186 = getelementptr inbounds nuw i8, ptr %59, i64 %184
  %187 = icmp ugt ptr %186, %45
  %188 = load ptr, ptr %46, align 8, !tbaa !201
  br i1 %187, label %211, label %189

189:                                              ; preds = %183
  %190 = load <2 x i64>, ptr %59, align 1, !tbaa !196
  store <2 x i64> %190, ptr %188, align 1, !tbaa !196
  %191 = icmp ugt i32 %104, 16
  br i1 %191, label %192, label %325

192:                                              ; preds = %189
  %193 = load ptr, ptr %46, align 8, !tbaa !201
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 16
  %195 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %196 = getelementptr i8, ptr %193, i64 %184
  %197 = load <2 x i64>, ptr %195, align 1, !tbaa !196
  store <2 x i64> %197, ptr %194, align 1, !tbaa !196
  %198 = icmp ult i32 %104, 33
  br i1 %198, label %325, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds nuw i8, ptr %193, i64 32
  br label %201

201:                                              ; preds = %201, %199
  %202 = phi ptr [ %200, %199 ], [ %209, %201 ]
  %203 = phi ptr [ %195, %199 ], [ %207, %201 ]
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 16
  %205 = load <2 x i64>, ptr %204, align 1, !tbaa !196
  store <2 x i64> %205, ptr %202, align 1, !tbaa !196
  %206 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %207 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %208 = load <2 x i64>, ptr %207, align 1, !tbaa !196
  store <2 x i64> %208, ptr %206, align 1, !tbaa !196
  %209 = getelementptr inbounds nuw i8, ptr %202, i64 32
  %210 = icmp ult ptr %209, %196
  br i1 %210, label %201, label %.loopexit, !llvm.loop !451

211:                                              ; preds = %183
  %212 = icmp ugt ptr %59, %45
  br i1 %212, label %.loopexit30, label %213

213:                                              ; preds = %211
  %214 = sub i64 %47, %63
  %215 = getelementptr inbounds i8, ptr %188, i64 %214
  %216 = load <2 x i64>, ptr %59, align 1, !tbaa !196
  store <2 x i64> %216, ptr %188, align 1, !tbaa !196
  %217 = icmp ult i64 %214, 17
  br i1 %217, label %.loopexit30, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds nuw i8, ptr %188, i64 16
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi ptr [ %219, %218 ], [ %228, %220 ]
  %222 = phi ptr [ %59, %218 ], [ %226, %220 ]
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %224 = load <2 x i64>, ptr %223, align 1, !tbaa !196
  store <2 x i64> %224, ptr %221, align 1, !tbaa !196
  %225 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %226 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %227 = load <2 x i64>, ptr %226, align 1, !tbaa !196
  store <2 x i64> %227, ptr %225, align 1, !tbaa !196
  %228 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %229 = icmp ult ptr %228, %215
  br i1 %229, label %220, label %.loopexit30, !llvm.loop !451

.loopexit30:                                      ; preds = %220, %213, %211
  %230 = phi ptr [ %45, %213 ], [ %59, %211 ], [ %45, %220 ]
  %231 = phi ptr [ %215, %213 ], [ %188, %211 ], [ %215, %220 ]
  %232 = icmp ult ptr %230, %186
  br i1 %232, label %233, label %.loopexit

233:                                              ; preds = %.loopexit30
  %234 = ptrtoint ptr %230 to i64
  %235 = ptrtoint ptr %231 to i64
  %236 = add i64 %184, %63
  %237 = sub i64 %236, %234
  %238 = icmp ult i64 %237, 4
  %239 = sub i64 %235, %234
  %240 = icmp ult i64 %239, 32
  %241 = select i1 %238, i1 true, i1 %240
  br i1 %241, label %277, label %242

242:                                              ; preds = %233
  %243 = icmp ult i64 %237, 32
  br i1 %243, label %263, label %244

244:                                              ; preds = %242
  %245 = and i64 %237, -32
  br label %246

246:                                              ; preds = %246, %244
  %247 = phi i64 [ 0, %244 ], [ %254, %246 ]
  %248 = getelementptr i8, ptr %231, i64 %247
  %249 = getelementptr i8, ptr %230, i64 %247
  %250 = getelementptr i8, ptr %249, i64 16
  %251 = load <16 x i8>, ptr %249, align 1, !tbaa !196
  %252 = load <16 x i8>, ptr %250, align 1, !tbaa !196
  %253 = getelementptr i8, ptr %248, i64 16
  store <16 x i8> %251, ptr %248, align 1, !tbaa !196
  store <16 x i8> %252, ptr %253, align 1, !tbaa !196
  %254 = add nuw i64 %247, 32
  %255 = icmp eq i64 %254, %245
  br i1 %255, label %256, label %246, !llvm.loop !475

256:                                              ; preds = %246
  %257 = icmp eq i64 %237, %245
  br i1 %257, label %.loopexit, label %258

258:                                              ; preds = %256
  %259 = getelementptr i8, ptr %231, i64 %245
  %260 = getelementptr i8, ptr %230, i64 %245
  %261 = and i64 %237, 28
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %277, label %263

263:                                              ; preds = %258, %242
  %264 = phi i64 [ %245, %258 ], [ 0, %242 ]
  %265 = and i64 %237, -4
  br label %266

266:                                              ; preds = %266, %263
  %267 = phi i64 [ %264, %263 ], [ %271, %266 ]
  %268 = getelementptr i8, ptr %231, i64 %267
  %269 = getelementptr i8, ptr %230, i64 %267
  %270 = load <4 x i8>, ptr %269, align 1, !tbaa !196
  store <4 x i8> %270, ptr %268, align 1, !tbaa !196
  %271 = add nuw i64 %267, 4
  %272 = icmp eq i64 %271, %265
  br i1 %272, label %273, label %266, !llvm.loop !476

273:                                              ; preds = %266
  %274 = getelementptr i8, ptr %231, i64 %265
  %275 = getelementptr i8, ptr %230, i64 %265
  %276 = icmp eq i64 %237, %265
  br i1 %276, label %.loopexit, label %277

277:                                              ; preds = %273, %258, %233
  %278 = phi ptr [ %231, %233 ], [ %259, %258 ], [ %274, %273 ]
  %279 = phi ptr [ %230, %233 ], [ %260, %258 ], [ %275, %273 ]
  %280 = ptrtoint ptr %279 to i64
  %281 = sub i64 %236, %280
  %282 = add i64 %63, -1
  %283 = add i64 %282, %184
  %284 = sub i64 %283, %280
  %285 = and i64 %281, 7
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %.loopexit29, label %.preheader28

.preheader28:                                     ; preds = %277, %.preheader28
  %287 = phi ptr [ %292, %.preheader28 ], [ %278, %277 ]
  %288 = phi ptr [ %290, %.preheader28 ], [ %279, %277 ]
  %289 = phi i64 [ %293, %.preheader28 ], [ 0, %277 ]
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 1
  %291 = load i8, ptr %288, align 1, !tbaa !196
  %292 = getelementptr inbounds nuw i8, ptr %287, i64 1
  store i8 %291, ptr %287, align 1, !tbaa !196
  %293 = add nuw nsw i64 %289, 1
  %294 = icmp eq i64 %293, %285
  br i1 %294, label %.loopexit29, label %.preheader28, !llvm.loop !477

.loopexit29:                                      ; preds = %.preheader28, %277
  %295 = phi ptr [ %278, %277 ], [ %292, %.preheader28 ]
  %296 = phi ptr [ %279, %277 ], [ %290, %.preheader28 ]
  %297 = icmp ult i64 %284, 7
  br i1 %297, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit29, %.preheader
  %298 = phi ptr [ %323, %.preheader ], [ %295, %.loopexit29 ]
  %299 = phi ptr [ %321, %.preheader ], [ %296, %.loopexit29 ]
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 1
  %301 = load i8, ptr %299, align 1, !tbaa !196
  %302 = getelementptr inbounds nuw i8, ptr %298, i64 1
  store i8 %301, ptr %298, align 1, !tbaa !196
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 2
  %304 = load i8, ptr %300, align 1, !tbaa !196
  %305 = getelementptr inbounds nuw i8, ptr %298, i64 2
  store i8 %304, ptr %302, align 1, !tbaa !196
  %306 = getelementptr inbounds nuw i8, ptr %299, i64 3
  %307 = load i8, ptr %303, align 1, !tbaa !196
  %308 = getelementptr inbounds nuw i8, ptr %298, i64 3
  store i8 %307, ptr %305, align 1, !tbaa !196
  %309 = getelementptr inbounds nuw i8, ptr %299, i64 4
  %310 = load i8, ptr %306, align 1, !tbaa !196
  %311 = getelementptr inbounds nuw i8, ptr %298, i64 4
  store i8 %310, ptr %308, align 1, !tbaa !196
  %312 = getelementptr inbounds nuw i8, ptr %299, i64 5
  %313 = load i8, ptr %309, align 1, !tbaa !196
  %314 = getelementptr inbounds nuw i8, ptr %298, i64 5
  store i8 %313, ptr %311, align 1, !tbaa !196
  %315 = getelementptr inbounds nuw i8, ptr %299, i64 6
  %316 = load i8, ptr %312, align 1, !tbaa !196
  %317 = getelementptr inbounds nuw i8, ptr %298, i64 6
  store i8 %316, ptr %314, align 1, !tbaa !196
  %318 = getelementptr inbounds nuw i8, ptr %299, i64 7
  %319 = load i8, ptr %315, align 1, !tbaa !196
  %320 = getelementptr inbounds nuw i8, ptr %298, i64 7
  store i8 %319, ptr %317, align 1, !tbaa !196
  %321 = getelementptr inbounds nuw i8, ptr %299, i64 8
  %322 = load i8, ptr %318, align 1, !tbaa !196
  %323 = getelementptr inbounds nuw i8, ptr %298, i64 8
  store i8 %322, ptr %320, align 1, !tbaa !196
  %324 = icmp eq ptr %321, %186
  br i1 %324, label %.loopexit, label %.preheader, !llvm.loop !478

325:                                              ; preds = %192, %189
  %326 = load ptr, ptr %46, align 8, !tbaa !201
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %184
  store ptr %327, ptr %46, align 8, !tbaa !201
  %328 = load ptr, ptr %49, align 8, !tbaa !190
  br label %340

.loopexit:                                        ; preds = %201, %.preheader, %.loopexit29, %273, %256, %.loopexit30
  %329 = load ptr, ptr %46, align 8, !tbaa !201
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %184
  store ptr %330, ptr %46, align 8, !tbaa !201
  %331 = icmp ugt i32 %104, 65535
  %332 = load ptr, ptr %49, align 8, !tbaa !190
  br i1 %331, label %333, label %340, !prof !456

333:                                              ; preds = %.loopexit
  store i32 1, ptr %48, align 8, !tbaa !198
  %334 = load ptr, ptr %44, align 8, !tbaa !186
  %335 = ptrtoint ptr %332 to i64
  %336 = ptrtoint ptr %334 to i64
  %337 = sub i64 %335, %336
  %338 = lshr exact i64 %337, 3
  %339 = trunc i64 %338 to i32
  store i32 %339, ptr %50, align 4, !tbaa !199
  br label %340

340:                                              ; preds = %333, %.loopexit, %325
  %341 = phi ptr [ %328, %325 ], [ %332, %333 ], [ %332, %.loopexit ]
  %342 = trunc i32 %104 to i16
  %343 = getelementptr inbounds nuw i8, ptr %341, i64 4
  store i16 %342, ptr %343, align 4, !tbaa !191
  store i32 %151, ptr %341, align 4, !tbaa !194
  %344 = add nsw i64 %185, -3
  %345 = icmp ugt i64 %344, 65535
  br i1 %345, label %346, label %353, !prof !356

346:                                              ; preds = %340
  store i32 2, ptr %48, align 8, !tbaa !198
  %347 = load ptr, ptr %44, align 8, !tbaa !186
  %348 = ptrtoint ptr %341 to i64
  %349 = ptrtoint ptr %347 to i64
  %350 = sub i64 %348, %349
  %351 = lshr exact i64 %350, 3
  %352 = trunc i64 %351 to i32
  store i32 %352, ptr %50, align 4, !tbaa !199
  br label %353

353:                                              ; preds = %346, %340
  %354 = trunc i64 %344 to i16
  %355 = getelementptr inbounds nuw i8, ptr %341, i64 6
  store i16 %354, ptr %355, align 2, !tbaa !195
  %356 = getelementptr inbounds nuw i8, ptr %341, i64 8
  store ptr %356, ptr %49, align 8, !tbaa !190
  %357 = add i32 %105, %104
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i8, ptr %59, i64 %358
  %360 = zext i1 %76 to i32
  %361 = add i32 %56, %360
  %362 = icmp eq i32 %108, 0
  br i1 %362, label %.loopexit32, label %53

.loopexit32:                                      ; preds = %353, %81, %53, %99, %28
  %363 = phi ptr [ %59, %99 ], [ %4, %28 ], [ %59, %81 ], [ %359, %353 ], [ %59, %53 ]
  %364 = phi i32 [ %56, %99 ], [ %9, %28 ], [ %56, %81 ], [ %361, %353 ], [ %56, %53 ]
  %365 = phi i32 [ %100, %99 ], [ 0, %28 ], [ %60, %81 ], [ %103, %353 ], [ %60, %53 ]
  %366 = phi i32 [ %72, %99 ], [ 0, %28 ], [ %58, %81 ], [ 0, %353 ], [ %58, %53 ]
  store i32 %364, ptr %1, align 8, !tbaa !448
  store i32 %366, ptr %10, align 4, !tbaa !474
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %368 = load ptr, ptr %367, align 8, !tbaa !56
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %369, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  %370 = zext i32 %365 to i64
  %371 = sub nsw i64 0, %370
  %372 = getelementptr inbounds i8, ptr %14, i64 %371
  %373 = icmp eq ptr %363, %372
  br i1 %373, label %386, label %374

374:                                              ; preds = %.loopexit32
  %375 = ptrtoint ptr %372 to i64
  %376 = ptrtoint ptr %363 to i64
  %377 = sub i64 %375, %376
  %378 = and i64 %377, 4294967295
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %380 = load ptr, ptr %379, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %380, ptr readonly align 1 %363, i64 %378, i1 false)
  %381 = load ptr, ptr %379, align 8, !tbaa !201
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 %378
  store ptr %382, ptr %379, align 8, !tbaa !201
  %383 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %384 = load i64, ptr %383, align 8, !tbaa !450
  %385 = add i64 %384, %378
  store i64 %385, ptr %383, align 8, !tbaa !450
  br label %386

386:                                              ; preds = %374, %.loopexit32
  %387 = sub nsw i64 %5, %370
  br label %.loopexit36

.loopexit36:                                      ; preds = %177, %168, %154, %386
  %388 = phi i64 [ %387, %386 ], [ -107, %154 ], [ -107, %168 ], [ -107, %177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %388
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { nounwind memory(none) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

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
!339 = !{!9, !16, i64 3624}
!340 = !{!9, !16, i64 3632}
!341 = !{!9, !10, i64 3644}
!342 = !{!9, !27, i64 3608}
!343 = distinct !{!343, !146}
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
!422 = !{!33, !33, i64 0}
!423 = !{!32, !19, i64 176}
!424 = !{!32, !19, i64 184}
!425 = !{!426, !16, i64 24}
!426 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !16, i64 16, !16, i64 24, !10, i64 32}
!427 = !{!426, !10, i64 32}
!428 = !{!426, !10, i64 0}
!429 = !{!426, !16, i64 16}
!430 = !{!426, !10, i64 4}
!431 = !{!426, !10, i64 8}
!432 = !{!29, !10, i64 32}
!433 = distinct !{!433, !146}
!434 = !{!9, !10, i64 260}
!435 = !{!32, !19, i64 232}
!436 = !{!9, !10, i64 312}
!437 = !{!32, !10, i64 240}
!438 = !{!32, !27, i64 8}
!439 = !{!9, !16, i64 3192}
!440 = !{!30, !19, i64 0}
!441 = !{!30, !16, i64 32}
!442 = !{!9, !19, i64 440}
!443 = !{!9, !10, i64 284}
!444 = distinct !{!444, !146}
!445 = distinct !{!445, !284}
!446 = !{!32, !19, i64 288}
!447 = !{!9, !10, i64 436}
!448 = !{!449, !10, i64 0}
!449 = !{!"", !10, i64 0, !10, i64 4, !16, i64 8}
!450 = !{!449, !16, i64 8}
!451 = distinct !{!451, !146}
!452 = distinct !{!452, !146, !263, !264}
!453 = distinct !{!453, !146, !263, !264}
!454 = distinct !{!454, !284}
!455 = distinct !{!455, !146, !263}
!456 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!457 = distinct !{!457, !146}
!458 = distinct !{!458, !146}
!459 = !{i64 0, i64 12, !196}
!460 = distinct !{!460, !146}
!461 = !{!41, !10, i64 0}
!462 = !{!42, !16, i64 136}
!463 = !{!43, !10, i64 4}
!464 = distinct !{!464, !146}
!465 = !{!43, !10, i64 0}
!466 = !{!43, !16, i64 152}
!467 = !{!24, !16, i64 16}
!468 = !{!24, !19, i64 8}
!469 = !{!24, !16, i64 24}
!470 = !{!213, !10, i64 12}
!471 = distinct !{!471, !146}
!472 = !{!28, !27, i64 8}
!473 = !{!28, !10, i64 48}
!474 = !{!449, !10, i64 4}
!475 = distinct !{!475, !146, !263, !264}
!476 = distinct !{!476, !146, !263, !264}
!477 = distinct !{!477, !284}
!478 = distinct !{!478, !146, !263}
