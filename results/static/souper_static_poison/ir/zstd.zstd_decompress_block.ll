; ModuleID = '/mydata/zstd/lib/decompress/zstd_decompress_block.c'
source_filename = "/mydata/zstd/lib/decompress/zstd_decompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i64, %struct.ZSTD_FrameHeader, i64, i64, i32, i32, i32, i32, %struct.XXH64_state_s, i64, i32, i32, i32, ptr, %struct.ZSTD_customMem, i64, i64, i64, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, i32, i32, i32, %struct.ZSTD_outBuffer_s, ptr, ptr, i32, [65568 x i8], [18 x i8], i64, i64 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_FrameHeader = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_seqSymbol_header = type { i32, i32 }
%struct.seq_t = type { i64, i64, i64 }
%struct.seqState_t = type { %struct.BIT_DStream_t, %struct.ZSTD_fseState, %struct.ZSTD_fseState, %struct.ZSTD_fseState, [3 x i64] }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.ZSTD_fseState = type { i64, ptr }

@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16
@LL_bits = internal constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@LL_defaultDTable = internal constant [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 32, i8 6, i8 5, i32 64 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 256 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1024 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4096 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 32, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 512 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2048 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 32, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65536 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32768 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16384 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8192 }], align 16
@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 16
@OF_bits = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@OF_defaultDTable = internal constant [33 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 5, i32 509 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 5, i32 32765 }, %struct.ZSTD_seqSymbol { i16 0, i8 21, i8 5, i32 2097149 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 5, i32 4093 }, %struct.ZSTD_seqSymbol { i16 0, i8 18, i8 5, i32 262141 }, %struct.ZSTD_seqSymbol { i16 0, i8 23, i8 5, i32 8388605 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 5, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 5, i32 16381 }, %struct.ZSTD_seqSymbol { i16 0, i8 20, i8 5, i32 1048573 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 5, i32 2045 }, %struct.ZSTD_seqSymbol { i16 0, i8 17, i8 5, i32 131069 }, %struct.ZSTD_seqSymbol { i16 0, i8 22, i8 5, i32 4194301 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 13 }, %struct.ZSTD_seqSymbol { i16 16, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 5, i32 8189 }, %struct.ZSTD_seqSymbol { i16 0, i8 19, i8 5, i32 524285 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 5, i32 1021 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 5, i32 65533 }, %struct.ZSTD_seqSymbol { i16 0, i8 28, i8 5, i32 268435453 }, %struct.ZSTD_seqSymbol { i16 0, i8 27, i8 5, i32 134217725 }, %struct.ZSTD_seqSymbol { i16 0, i8 26, i8 5, i32 67108861 }, %struct.ZSTD_seqSymbol { i16 0, i8 25, i8 5, i32 33554429 }, %struct.ZSTD_seqSymbol { i16 0, i8 24, i8 5, i32 16777213 }], align 16
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 16
@ML_bits = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_defaultDTable = internal constant [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 19 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 25 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 31 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 34 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 37 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 41 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 47 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 59 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 83 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 6, i32 131 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 515 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 18 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 21 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 24 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 27 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 30 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 33 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 35 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 39 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 43 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 51 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 67 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 6, i32 99 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 259 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 17 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 23 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 26 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65539 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32771 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16387 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8195 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4099 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2051 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1027 }], align 16
@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8
@ZSTD_overlapCopy8.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@ZSTD_overlapCopy8.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_getcBlockSize(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %1, 3
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 1, !tbaa !5
  %7 = getelementptr i8, ptr %0, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = zext i16 %6 to i32
  %10 = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %9
  %13 = lshr i32 %12, 3
  %14 = and i32 %9, 1
  %15 = getelementptr inbounds %struct.blockProperties_t, ptr %2, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !10
  %16 = lshr i32 %9, 1
  %17 = and i32 %16, 3
  store i32 %17, ptr %2, align 4, !tbaa !13
  %18 = getelementptr inbounds %struct.blockProperties_t, ptr %2, i64 0, i32 2
  store i32 %13, ptr %18, align 4, !tbaa !14
  switch i32 %17, label %20 [
    i32 1, label %22
    i32 3, label %19
  ]

19:                                               ; preds = %5
  br label %22

20:                                               ; preds = %5
  %21 = zext nneg i32 %13 to i64
  br label %22

22:                                               ; preds = %19, %20, %5, %3
  %23 = phi i64 [ -72, %3 ], [ -20, %19 ], [ %21, %20 ], [ 1, %5 ]
  ret i64 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decodeLiteralsBlock_wrapper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0), !range !25
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = icmp ult i64 %2, 2
  br i1 %7, label %366, label %8

8:                                                ; preds = %6
  %9 = load i8, ptr %1, align 1, !tbaa !9
  %10 = and i8 %9, 3
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !26
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %8, %14
  %19 = phi i64 [ %17, %14 ], [ 131072, %8 ]
  switch i8 %10, label %365 [
    i8 3, label %20
    i8 2, label %24
    i8 0, label %187
    i8 1, label %281
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 8, !tbaa !27
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %366, label %24

24:                                               ; preds = %18, %20
  %25 = icmp ult i64 %2, 5
  br i1 %25, label %366, label %26

26:                                               ; preds = %24
  %27 = lshr i8 %9, 2
  %28 = and i8 %27, 3
  %29 = load i32, ptr %1, align 1, !tbaa !28
  %30 = tail call i64 @llvm.umin.i64(i64 %19, i64 %4)
  %31 = getelementptr i8, ptr %0, i64 30180
  %32 = load i32, ptr %31, align 4, !tbaa !29
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 37
  %36 = load i32, ptr %35, align 4, !tbaa !30
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 16
  %39 = or disjoint i32 %38, %34
  switch i8 %28, label %40 [
    i8 3, label %52
    i8 2, label %47
  ]

40:                                               ; preds = %26
  %41 = icmp ne i8 %28, 0
  %42 = lshr i32 %29, 4
  %43 = and i32 %42, 1023
  %44 = lshr i32 %29, 14
  %45 = and i32 %44, 1023
  %46 = zext nneg i32 %45 to i64
  br label %62

47:                                               ; preds = %26
  %48 = lshr i32 %29, 4
  %49 = and i32 %48, 16383
  %50 = lshr i32 %29, 18
  %51 = zext nneg i32 %50 to i64
  br label %62

52:                                               ; preds = %26
  %53 = lshr i32 %29, 4
  %54 = and i32 %53, 262143
  %55 = lshr i32 %29, 22
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %1, i64 4
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 10
  %61 = or disjoint i64 %60, %56
  br label %62

62:                                               ; preds = %40, %47, %52
  %63 = phi i1 [ %41, %40 ], [ true, %47 ], [ true, %52 ]
  %64 = phi i64 [ %46, %40 ], [ %51, %47 ], [ %61, %52 ]
  %65 = phi i32 [ %43, %40 ], [ %49, %47 ], [ %54, %52 ]
  %66 = phi i64 [ 3, %40 ], [ 4, %47 ], [ 5, %52 ]
  %67 = zext nneg i32 %65 to i64
  %68 = icmp ne i32 %65, 0
  %69 = icmp eq ptr %3, null
  %70 = and i1 %69, %68
  br i1 %70, label %366, label %71

71:                                               ; preds = %62
  %72 = icmp ult i64 %19, %67
  br i1 %72, label %366, label %73

73:                                               ; preds = %71
  %74 = icmp ult i32 %65, 6
  %75 = and i1 %63, %74
  br i1 %75, label %366, label %76

76:                                               ; preds = %73
  %77 = add nuw nsw i64 %66, %64
  %78 = icmp ugt i64 %77, %2
  br i1 %78, label %366, label %79

79:                                               ; preds = %76
  %80 = icmp ult i64 %30, %67
  br i1 %80, label %366, label %81

81:                                               ; preds = %79
  br i1 %13, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !26
  %85 = zext i32 %84 to i64
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i64 [ %85, %82 ], [ 131072, %81 ]
  %88 = icmp eq i32 %5, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %67, 64
  %91 = add nuw nsw i64 %90, %87
  %92 = icmp ult i64 %91, %4
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %3, i64 %87
  %95 = getelementptr inbounds i8, ptr %94, i64 32
  %96 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %95, ptr %96, align 8, !tbaa !31
  %97 = getelementptr inbounds i8, ptr %95, i64 %67
  br label %109

98:                                               ; preds = %89, %86
  %99 = icmp ult i32 %65, 65537
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %102 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %101, ptr %102, align 8, !tbaa !31
  %103 = getelementptr inbounds i8, ptr %101, i64 %67
  br label %109

104:                                              ; preds = %98
  %105 = getelementptr inbounds i8, ptr %3, i64 %30
  %106 = sub nsw i64 0, %67
  %107 = getelementptr inbounds i8, ptr %105, i64 %106
  %108 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %107, ptr %108, align 8
  br label %109

109:                                              ; preds = %93, %100, %104
  %110 = phi ptr [ %101, %100 ], [ %107, %104 ], [ %95, %93 ]
  %111 = phi ptr [ %103, %100 ], [ %105, %104 ], [ %97, %93 ]
  %112 = phi i32 [ 0, %100 ], [ 2, %104 ], [ 1, %93 ]
  %113 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  store ptr %111, ptr %113, align 8
  %114 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  store i32 %112, ptr %114, align 8, !tbaa !32
  %115 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %116 = load i32, ptr %115, align 4, !tbaa !33
  %117 = icmp ne i32 %116, 0
  %118 = icmp ugt i32 %65, 768
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %143

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  br label %123

123:                                              ; preds = %127, %120
  %124 = phi i64 [ 0, %120 ], [ %142, %127 ]
  %125 = getelementptr inbounds i8, ptr %122, i64 %124
  tail call void @llvm.prefetch.p0(ptr %125, i32 0, i32 2, i32 1)
  %126 = icmp ult i64 %124, 16324
  br i1 %126, label %127, label %143, !llvm.loop !35

127:                                              ; preds = %123
  %128 = or disjoint i64 %124, 64
  %129 = getelementptr inbounds i8, ptr %122, i64 %128
  tail call void @llvm.prefetch.p0(ptr nonnull %129, i32 0, i32 2, i32 1)
  %130 = or disjoint i64 %124, 128
  %131 = getelementptr inbounds i8, ptr %122, i64 %130
  tail call void @llvm.prefetch.p0(ptr nonnull %131, i32 0, i32 2, i32 1)
  %132 = or disjoint i64 %124, 192
  %133 = getelementptr inbounds i8, ptr %122, i64 %132
  tail call void @llvm.prefetch.p0(ptr nonnull %133, i32 0, i32 2, i32 1)
  %134 = or disjoint i64 %124, 256
  %135 = getelementptr inbounds i8, ptr %122, i64 %134
  tail call void @llvm.prefetch.p0(ptr nonnull %135, i32 0, i32 2, i32 1)
  %136 = or disjoint i64 %124, 320
  %137 = getelementptr inbounds i8, ptr %122, i64 %136
  tail call void @llvm.prefetch.p0(ptr nonnull %137, i32 0, i32 2, i32 1)
  %138 = or disjoint i64 %124, 384
  %139 = getelementptr inbounds i8, ptr %122, i64 %138
  tail call void @llvm.prefetch.p0(ptr nonnull %139, i32 0, i32 2, i32 1)
  %140 = or disjoint i64 %124, 448
  %141 = getelementptr inbounds i8, ptr %122, i64 %140
  tail call void @llvm.prefetch.p0(ptr nonnull %141, i32 0, i32 2, i32 1)
  %142 = add nuw nsw i64 %124, 512
  br label %123

143:                                              ; preds = %123, %109
  %144 = icmp eq i8 %10, 3
  br i1 %144, label %145, label %153

145:                                              ; preds = %143
  %146 = getelementptr inbounds i8, ptr %1, i64 %66
  %147 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  br i1 %63, label %151, label %149

149:                                              ; preds = %145
  %150 = tail call i64 @HUF_decompress1X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %146, i64 noundef %64, ptr noundef %148, i32 noundef %39) #16
  br label %161

151:                                              ; preds = %145
  %152 = tail call i64 @HUF_decompress4X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %146, i64 noundef %64, ptr noundef %148, i32 noundef %39) #16
  br label %161

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  %155 = getelementptr inbounds i8, ptr %1, i64 %66
  %156 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 5
  br i1 %63, label %159, label %157

157:                                              ; preds = %153
  %158 = tail call i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef nonnull %154, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %155, i64 noundef %64, ptr noundef nonnull %156, i64 noundef 2560, i32 noundef %39) #16
  br label %161

159:                                              ; preds = %153
  %160 = tail call i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef nonnull %154, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %155, i64 noundef %64, ptr noundef nonnull %156, i64 noundef 2560, i32 noundef %39) #16
  br label %161

161:                                              ; preds = %157, %159, %149, %151
  %162 = phi i64 [ %150, %149 ], [ %152, %151 ], [ %158, %157 ], [ %160, %159 ]
  %163 = load i32, ptr %114, align 8, !tbaa !32
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %167 = load ptr, ptr %113, align 8, !tbaa !37
  %168 = getelementptr inbounds i8, ptr %167, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %166, ptr noundef nonnull align 1 dereferenceable(65536) %168, i64 65536, i1 false)
  %169 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %170 = load ptr, ptr %169, align 8, !tbaa !31
  %171 = getelementptr inbounds i8, ptr %170, i64 65504
  %172 = add nsw i64 %67, -65536
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %171, ptr align 1 %170, i64 %172, i1 false)
  %173 = load <2 x ptr>, ptr %169, align 8, !tbaa !38
  %174 = getelementptr i8, <2 x ptr> %173, <2 x i64> <i64 65504, i64 -32>
  store <2 x ptr> %174, ptr %169, align 8, !tbaa !38
  br label %175

175:                                              ; preds = %161, %165
  %176 = icmp ult i64 %162, -119
  br i1 %176, label %177, label %366

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %179 = load ptr, ptr %178, align 8, !tbaa !31
  %180 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  store ptr %179, ptr %180, align 8, !tbaa !39
  %181 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 25
  store i64 %67, ptr %181, align 8, !tbaa !40
  %182 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 16
  store i32 1, ptr %182, align 8, !tbaa !27
  %183 = icmp eq i8 %10, 2
  br i1 %183, label %184, label %366

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  %186 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  store ptr %185, ptr %186, align 8, !tbaa !34
  br label %366

187:                                              ; preds = %18
  %188 = zext i8 %9 to i32
  %189 = lshr i32 %188, 2
  %190 = and i32 %189, 3
  %191 = tail call i64 @llvm.umin.i64(i64 %19, i64 %4)
  switch i32 %190, label %192 [
    i32 3, label %199
    i32 1, label %195
  ]

192:                                              ; preds = %187
  %193 = lshr i32 %188, 3
  %194 = zext nneg i32 %193 to i64
  br label %210

195:                                              ; preds = %187
  %196 = load i16, ptr %1, align 1, !tbaa !5
  %197 = lshr i16 %196, 4
  %198 = zext nneg i16 %197 to i64
  br label %210

199:                                              ; preds = %187
  %200 = icmp eq i64 %2, 2
  br i1 %200, label %366, label %201

201:                                              ; preds = %199
  %202 = load i16, ptr %1, align 1, !tbaa !5
  %203 = getelementptr i8, ptr %1, i64 2
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = zext i16 %202 to i64
  %206 = zext i8 %204 to i64
  %207 = shl nuw nsw i64 %206, 16
  %208 = or disjoint i64 %207, %205
  %209 = lshr i64 %208, 4
  br label %210

210:                                              ; preds = %192, %195, %201
  %211 = phi i64 [ %194, %192 ], [ %198, %195 ], [ %209, %201 ]
  %212 = phi i64 [ 1, %192 ], [ 2, %195 ], [ 3, %201 ]
  %213 = icmp ne i64 %211, 0
  %214 = icmp eq ptr %3, null
  %215 = and i1 %214, %213
  br i1 %215, label %366, label %216

216:                                              ; preds = %210
  %217 = icmp ugt i64 %211, %19
  br i1 %217, label %366, label %218

218:                                              ; preds = %216
  %219 = icmp ugt i64 %211, %4
  br i1 %219, label %366, label %220

220:                                              ; preds = %218
  br i1 %13, label %225, label %221

221:                                              ; preds = %220
  %222 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %223 = load i32, ptr %222, align 8, !tbaa !26
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %221, %220
  %226 = phi i64 [ %224, %221 ], [ 131072, %220 ]
  %227 = icmp eq i32 %5, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = add nuw nsw i64 %211, 64
  %230 = add nuw nsw i64 %229, %226
  %231 = icmp ult i64 %230, %4
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = getelementptr inbounds i8, ptr %3, i64 %226
  %234 = getelementptr inbounds i8, ptr %233, i64 32
  %235 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %234, ptr %235, align 8, !tbaa !31
  %236 = getelementptr inbounds i8, ptr %234, i64 %211
  br label %251

237:                                              ; preds = %228, %225
  %238 = icmp ult i64 %211, 65537
  br i1 %238, label %239, label %243

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %241 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %240, ptr %241, align 8, !tbaa !31
  %242 = getelementptr inbounds i8, ptr %240, i64 %211
  br label %251

243:                                              ; preds = %237
  %244 = getelementptr inbounds i8, ptr %3, i64 %191
  %245 = sub nsw i64 0, %211
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  %247 = getelementptr inbounds i8, ptr %246, i64 65504
  %248 = getelementptr inbounds i8, ptr %247, i64 %211
  %249 = getelementptr inbounds i8, ptr %248, i64 -65536
  %250 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %247, ptr %250, align 8
  br label %251

251:                                              ; preds = %232, %239, %243
  %252 = phi ptr [ %240, %239 ], [ %247, %243 ], [ %234, %232 ]
  %253 = phi ptr [ %242, %239 ], [ %249, %243 ], [ %236, %232 ]
  %254 = phi i1 [ false, %239 ], [ true, %243 ], [ false, %232 ]
  %255 = phi i32 [ 0, %239 ], [ 2, %243 ], [ 1, %232 ]
  %256 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  store ptr %253, ptr %256, align 8
  %257 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  store i32 %255, ptr %257, align 8, !tbaa !32
  %258 = add nuw nsw i64 %212, %211
  %259 = add nuw nsw i64 %258, 32
  %260 = icmp ugt i64 %259, %2
  br i1 %260, label %261, label %276

261:                                              ; preds = %251
  %262 = icmp ugt i64 %258, %2
  br i1 %262, label %366, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds i8, ptr %1, i64 %212
  br i1 %254, label %265, label %270

265:                                              ; preds = %263
  %266 = add nsw i64 %211, -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %252, ptr nonnull align 1 %264, i64 %266, i1 false)
  %267 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %268 = getelementptr inbounds i8, ptr %264, i64 %211
  %269 = getelementptr inbounds i8, ptr %268, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %267, ptr noundef nonnull align 1 dereferenceable(65536) %269, i64 65536, i1 false)
  br label %271

270:                                              ; preds = %263
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %252, ptr nonnull align 1 %264, i64 %211, i1 false)
  br label %271

271:                                              ; preds = %270, %265
  %272 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %273 = load ptr, ptr %272, align 8, !tbaa !31
  %274 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  store ptr %273, ptr %274, align 8, !tbaa !39
  %275 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 25
  store i64 %211, ptr %275, align 8, !tbaa !40
  br label %366

276:                                              ; preds = %251
  %277 = getelementptr inbounds i8, ptr %1, i64 %212
  %278 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  store ptr %277, ptr %278, align 8, !tbaa !39
  %279 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 25
  store i64 %211, ptr %279, align 8, !tbaa !40
  %280 = getelementptr inbounds i8, ptr %277, i64 %211
  store ptr %280, ptr %256, align 8, !tbaa !37
  store i32 0, ptr %257, align 8, !tbaa !32
  br label %366

281:                                              ; preds = %18
  %282 = zext i8 %9 to i32
  %283 = lshr i32 %282, 2
  %284 = and i32 %283, 3
  %285 = tail call i64 @llvm.umin.i64(i64 %19, i64 %4)
  switch i32 %284, label %286 [
    i32 3, label %295
    i32 1, label %289
  ]

286:                                              ; preds = %281
  %287 = lshr i32 %282, 3
  %288 = zext nneg i32 %287 to i64
  br label %306

289:                                              ; preds = %281
  %290 = icmp eq i64 %2, 2
  br i1 %290, label %366, label %291

291:                                              ; preds = %289
  %292 = load i16, ptr %1, align 1, !tbaa !5
  %293 = lshr i16 %292, 4
  %294 = zext nneg i16 %293 to i64
  br label %306

295:                                              ; preds = %281
  %296 = icmp ult i64 %2, 4
  br i1 %296, label %366, label %297

297:                                              ; preds = %295
  %298 = load i16, ptr %1, align 1, !tbaa !5
  %299 = getelementptr i8, ptr %1, i64 2
  %300 = load i8, ptr %299, align 1, !tbaa !9
  %301 = zext i16 %298 to i64
  %302 = zext i8 %300 to i64
  %303 = shl nuw nsw i64 %302, 16
  %304 = or disjoint i64 %303, %301
  %305 = lshr i64 %304, 4
  br label %306

306:                                              ; preds = %286, %291, %297
  %307 = phi i64 [ %288, %286 ], [ %294, %291 ], [ %305, %297 ]
  %308 = phi i64 [ 1, %286 ], [ 2, %291 ], [ 3, %297 ]
  %309 = icmp ne i64 %307, 0
  %310 = icmp eq ptr %3, null
  %311 = and i1 %310, %309
  br i1 %311, label %366, label %312

312:                                              ; preds = %306
  %313 = icmp ugt i64 %307, %19
  br i1 %313, label %366, label %314

314:                                              ; preds = %312
  %315 = icmp ugt i64 %307, %4
  br i1 %315, label %366, label %316

316:                                              ; preds = %314
  br i1 %13, label %321, label %317

317:                                              ; preds = %316
  %318 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %319 = load i32, ptr %318, align 8, !tbaa !26
  %320 = zext i32 %319 to i64
  br label %321

321:                                              ; preds = %317, %316
  %322 = phi i64 [ %320, %317 ], [ 131072, %316 ]
  %323 = icmp eq i32 %5, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = add nuw nsw i64 %307, 64
  %326 = add nuw nsw i64 %325, %322
  %327 = icmp ult i64 %326, %4
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = getelementptr inbounds i8, ptr %3, i64 %322
  %330 = getelementptr inbounds i8, ptr %329, i64 32
  br label %350

331:                                              ; preds = %324, %321
  %332 = icmp ult i64 %307, 65537
  br i1 %332, label %333, label %335

333:                                              ; preds = %331
  %334 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  br label %350

335:                                              ; preds = %331
  %336 = getelementptr inbounds i8, ptr %3, i64 %285
  %337 = sub nsw i64 0, %307
  %338 = getelementptr inbounds i8, ptr %336, i64 %337
  %339 = getelementptr inbounds i8, ptr %338, i64 65504
  %340 = getelementptr inbounds i8, ptr %339, i64 %307
  %341 = getelementptr inbounds i8, ptr %340, i64 -65536
  %342 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %339, ptr %342, align 8
  %343 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  store ptr %341, ptr %343, align 8
  %344 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  store i32 2, ptr %344, align 8, !tbaa !32
  %345 = getelementptr inbounds i8, ptr %1, i64 %308
  %346 = load i8, ptr %345, align 1, !tbaa !9
  %347 = add nsw i64 %307, -65536
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %339, i8 %346, i64 %347, i1 false)
  %348 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %349 = load i8, ptr %345, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %348, i8 %349, i64 65536, i1 false)
  br label %359

350:                                              ; preds = %333, %328
  %351 = phi ptr [ %334, %333 ], [ %330, %328 ]
  %352 = phi i32 [ 0, %333 ], [ 1, %328 ]
  %353 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  store ptr %351, ptr %353, align 8, !tbaa !31
  %354 = getelementptr inbounds i8, ptr %351, i64 %307
  %355 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  store ptr %354, ptr %355, align 8
  %356 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  store i32 %352, ptr %356, align 8, !tbaa !32
  %357 = getelementptr inbounds i8, ptr %1, i64 %308
  %358 = load i8, ptr %357, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %351, i8 %358, i64 %307, i1 false)
  br label %359

359:                                              ; preds = %350, %335
  %360 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %361 = load ptr, ptr %360, align 8, !tbaa !31
  %362 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  store ptr %361, ptr %362, align 8, !tbaa !39
  %363 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 25
  store i64 %307, ptr %363, align 8, !tbaa !40
  %364 = add nuw nsw i64 %308, 1
  br label %366

365:                                              ; preds = %18
  unreachable

366:                                              ; preds = %20, %24, %177, %184, %175, %79, %76, %73, %71, %62, %261, %218, %216, %210, %199, %276, %271, %314, %312, %306, %295, %289, %359, %6
  %367 = phi i64 [ -20, %6 ], [ -30, %20 ], [ -20, %24 ], [ -70, %62 ], [ -20, %71 ], [ -24, %73 ], [ -20, %76 ], [ -70, %79 ], [ -20, %175 ], [ %77, %184 ], [ %77, %177 ], [ %258, %271 ], [ %258, %276 ], [ -20, %199 ], [ -70, %210 ], [ -20, %216 ], [ -70, %218 ], [ -20, %261 ], [ %364, %359 ], [ -20, %289 ], [ -20, %295 ], [ -70, %306 ], [ -20, %312 ], [ -70, %314 ]
  ret i64 %367
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_buildFSETable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6, i64 %7, i32 noundef %8) local_unnamed_addr #3 {
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %266

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %0, i64 1
  %14 = add i32 %2, 1
  %15 = shl nuw i32 1, %5
  %16 = getelementptr inbounds i16, ptr %6, i64 53
  %17 = add i32 %15, -1
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  store i32 1, ptr %0, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %5, ptr %20, align 4
  %21 = lshr i32 %15, 1
  %22 = lshr i32 %15, 3
  %23 = add nuw nsw i32 %22, 3
  %24 = add nuw i32 %23, %21
  br label %113

25:                                               ; preds = %12
  %26 = add i32 %5, -1
  %27 = shl i32 65536, %26
  %28 = ashr exact i32 %27, 16
  %29 = zext i32 %14 to i64
  %30 = and i64 %29, 1
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %25
  %33 = and i64 %29, 4294967294
  br label %34

34:                                               ; preds = %69, %32
  %35 = phi i64 [ 0, %32 ], [ %74, %69 ]
  %36 = phi i32 [ %17, %32 ], [ %72, %69 ]
  %37 = phi i32 [ 1, %32 ], [ %71, %69 ]
  %38 = phi i64 [ 0, %32 ], [ %75, %69 ]
  %39 = getelementptr inbounds i16, ptr %1, i64 %35
  %40 = load i16, ptr %39, align 2, !tbaa !5
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = add i32 %36, -1
  %44 = zext i32 %36 to i64
  %45 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %44, i32 3
  %46 = trunc i64 %35 to i32
  store i32 %46, ptr %45, align 4, !tbaa !41
  br label %51

47:                                               ; preds = %34
  %48 = sext i16 %40 to i32
  %49 = icmp sgt i32 %28, %48
  %50 = select i1 %49, i32 %37, i32 0
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i16 [ 1, %42 ], [ %40, %47 ]
  %53 = phi i32 [ %37, %42 ], [ %50, %47 ]
  %54 = phi i32 [ %43, %42 ], [ %36, %47 ]
  %55 = getelementptr inbounds i16, ptr %6, i64 %35
  store i16 %52, ptr %55, align 2
  %56 = or disjoint i64 %35, 1
  %57 = getelementptr inbounds i16, ptr %1, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !5
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = sext i16 %58 to i32
  %62 = icmp sgt i32 %28, %61
  %63 = select i1 %62, i32 %53, i32 0
  br label %69

64:                                               ; preds = %51
  %65 = add i32 %54, -1
  %66 = zext i32 %54 to i64
  %67 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %66, i32 3
  %68 = trunc i64 %56 to i32
  store i32 %68, ptr %67, align 4, !tbaa !41
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i16 [ 1, %64 ], [ %58, %60 ]
  %71 = phi i32 [ %53, %64 ], [ %63, %60 ]
  %72 = phi i32 [ %65, %64 ], [ %54, %60 ]
  %73 = getelementptr inbounds i16, ptr %6, i64 %56
  store i16 %70, ptr %73, align 2
  %74 = add nuw nsw i64 %35, 2
  %75 = add i64 %38, 2
  %76 = icmp eq i64 %75, %33
  br i1 %76, label %77, label %34, !llvm.loop !43

77:                                               ; preds = %69, %25
  %78 = phi i32 [ undef, %25 ], [ %71, %69 ]
  %79 = phi i32 [ undef, %25 ], [ %72, %69 ]
  %80 = phi i64 [ 0, %25 ], [ %74, %69 ]
  %81 = phi i32 [ %17, %25 ], [ %72, %69 ]
  %82 = phi i32 [ 1, %25 ], [ %71, %69 ]
  %83 = icmp eq i64 %30, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds i16, ptr %1, i64 %80
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = icmp eq i16 %86, -1
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = sext i16 %86 to i32
  %90 = icmp sgt i32 %28, %89
  %91 = select i1 %90, i32 %82, i32 0
  br label %97

92:                                               ; preds = %84
  %93 = add i32 %81, -1
  %94 = zext i32 %81 to i64
  %95 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %94, i32 3
  %96 = trunc i64 %80 to i32
  store i32 %96, ptr %95, align 4, !tbaa !41
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i16 [ 1, %92 ], [ %86, %88 ]
  %99 = phi i32 [ %82, %92 ], [ %91, %88 ]
  %100 = phi i32 [ %93, %92 ], [ %81, %88 ]
  %101 = getelementptr inbounds i16, ptr %6, i64 %80
  store i16 %98, ptr %101, align 2
  br label %102

102:                                              ; preds = %77, %97
  %103 = phi i32 [ %78, %77 ], [ %99, %97 ]
  %104 = phi i32 [ %79, %77 ], [ %100, %97 ]
  store i32 %103, ptr %0, align 4
  %105 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %5, ptr %105, align 4
  %106 = icmp eq i32 %104, %17
  %107 = lshr i32 %15, 3
  br i1 %106, label %108, label %182

108:                                              ; preds = %102
  %109 = add nuw nsw i32 %107, 3
  br label %119

110:                                              ; preds = %157
  %111 = lshr i32 %15, 1
  %112 = add nuw i32 %109, %111
  br label %113

113:                                              ; preds = %110, %19
  %114 = phi i32 [ %24, %19 ], [ %112, %110 ]
  %115 = zext i32 %17 to i64
  %116 = zext i32 %114 to i64
  %117 = zext i32 %15 to i64
  %118 = shl nuw nsw i64 %116, 1
  br label %163

119:                                              ; preds = %157, %108
  %120 = phi i64 [ 0, %108 ], [ %160, %157 ]
  %121 = phi i64 [ 0, %108 ], [ %159, %157 ]
  %122 = phi i64 [ 0, %108 ], [ %161, %157 ]
  %123 = getelementptr inbounds i16, ptr %1, i64 %120
  %124 = load i16, ptr %123, align 2, !tbaa !5
  %125 = getelementptr inbounds i8, ptr %16, i64 %121
  store i64 %122, ptr %125, align 1, !tbaa !44
  %126 = icmp sgt i16 %124, 8
  br i1 %126, label %127, label %157

127:                                              ; preds = %119
  %128 = zext nneg i16 %124 to i64
  %129 = tail call i64 @llvm.umax.i64(i64 %128, i64 16)
  %130 = add nsw i64 %129, -9
  %131 = lshr i64 %130, 3
  %132 = add nuw nsw i64 %131, 1
  %133 = icmp ult i64 %130, 24
  br i1 %133, label %150, label %134

134:                                              ; preds = %127
  %135 = and i64 %132, 4611686018427387900
  %136 = shl i64 %135, 3
  %137 = or disjoint i64 %136, 8
  %138 = insertelement <2 x i64> poison, i64 %122, i64 0
  %139 = shufflevector <2 x i64> %138, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %140

140:                                              ; preds = %140, %134
  %141 = phi i64 [ 0, %134 ], [ %146, %140 ]
  %142 = shl i64 %141, 3
  %143 = or disjoint i64 %142, 8
  %144 = getelementptr inbounds i8, ptr %125, i64 %143
  %145 = getelementptr inbounds i64, ptr %144, i64 2
  store <2 x i64> %139, ptr %144, align 1, !tbaa !44
  store <2 x i64> %139, ptr %145, align 1, !tbaa !44
  %146 = add nuw i64 %141, 4
  %147 = icmp eq i64 %146, %135
  br i1 %147, label %148, label %140, !llvm.loop !45

148:                                              ; preds = %140
  %149 = icmp eq i64 %132, %135
  br i1 %149, label %157, label %150

150:                                              ; preds = %127, %148
  %151 = phi i64 [ 8, %127 ], [ %137, %148 ]
  br label %152

152:                                              ; preds = %150, %152
  %153 = phi i64 [ %155, %152 ], [ %151, %150 ]
  %154 = getelementptr inbounds i8, ptr %125, i64 %153
  store i64 %122, ptr %154, align 1, !tbaa !44
  %155 = add nuw nsw i64 %153, 8
  %156 = icmp ult i64 %155, %128
  br i1 %156, label %152, label %157, !llvm.loop !48

157:                                              ; preds = %152, %148, %119
  %158 = sext i16 %124 to i64
  %159 = add i64 %121, %158
  %160 = add nuw nsw i64 %120, 1
  %161 = add i64 %122, 72340172838076673
  %162 = icmp eq i64 %160, %29
  br i1 %162, label %110, label %119, !llvm.loop !49

163:                                              ; preds = %163, %113
  %164 = phi i64 [ 0, %113 ], [ %180, %163 ]
  %165 = phi i64 [ 0, %113 ], [ %179, %163 ]
  %166 = and i64 %165, %115
  %167 = getelementptr inbounds i8, ptr %16, i64 %164
  %168 = load i8, ptr %167, align 1, !tbaa !9
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %166, i32 3
  store i32 %169, ptr %170, align 4, !tbaa !41
  %171 = add nuw nsw i64 %165, %116
  %172 = and i64 %171, %115
  %173 = or disjoint i64 %164, 1
  %174 = getelementptr inbounds i8, ptr %16, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !9
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %172, i32 3
  store i32 %176, ptr %177, align 4, !tbaa !41
  %178 = add nuw nsw i64 %165, %118
  %179 = and i64 %178, %115
  %180 = add nuw nsw i64 %164, 2
  %181 = icmp ult i64 %180, %117
  br i1 %181, label %163, label %238, !llvm.loop !50

182:                                              ; preds = %102
  %183 = lshr i32 %15, 1
  %184 = add nuw nsw i32 %107, 3
  %185 = add nuw i32 %184, %183
  br label %186

186:                                              ; preds = %232, %182
  %187 = phi i64 [ 0, %182 ], [ %234, %232 ]
  %188 = phi i32 [ 0, %182 ], [ %233, %232 ]
  %189 = getelementptr inbounds i16, ptr %1, i64 %187
  %190 = load i16, ptr %189, align 2, !tbaa !5
  %191 = sext i16 %190 to i32
  %192 = icmp sgt i16 %190, 0
  br i1 %192, label %193, label %232

193:                                              ; preds = %186
  %194 = trunc i64 %187 to i32
  %195 = and i32 %191, 1
  %196 = icmp eq i16 %190, 1
  br i1 %196, label %220, label %197

197:                                              ; preds = %193
  %198 = and i32 %191, 32766
  br label %199

199:                                              ; preds = %217, %197
  %200 = phi i32 [ %188, %197 ], [ %215, %217 ]
  %201 = phi i32 [ 0, %197 ], [ %218, %217 ]
  %202 = zext i32 %200 to i64
  %203 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %202, i32 3
  store i32 %194, ptr %203, align 4, !tbaa !41
  br label %204

204:                                              ; preds = %204, %199
  %205 = phi i32 [ %200, %199 ], [ %207, %204 ]
  %206 = add i32 %185, %205
  %207 = and i32 %206, %17
  %208 = icmp ugt i32 %207, %104
  br i1 %208, label %204, label %209, !prof !51, !llvm.loop !52

209:                                              ; preds = %204
  %210 = zext i32 %207 to i64
  %211 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %210, i32 3
  store i32 %194, ptr %211, align 4, !tbaa !41
  br label %212

212:                                              ; preds = %212, %209
  %213 = phi i32 [ %207, %209 ], [ %215, %212 ]
  %214 = add i32 %185, %213
  %215 = and i32 %214, %17
  %216 = icmp ugt i32 %215, %104
  br i1 %216, label %212, label %217, !prof !51, !llvm.loop !52

217:                                              ; preds = %212
  %218 = add i32 %201, 2
  %219 = icmp eq i32 %218, %198
  br i1 %219, label %220, label %199, !llvm.loop !53

220:                                              ; preds = %217, %193
  %221 = phi i32 [ undef, %193 ], [ %215, %217 ]
  %222 = phi i32 [ %188, %193 ], [ %215, %217 ]
  %223 = icmp eq i32 %195, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %220
  %225 = zext i32 %222 to i64
  %226 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %225, i32 3
  store i32 %194, ptr %226, align 4, !tbaa !41
  br label %227

227:                                              ; preds = %227, %224
  %228 = phi i32 [ %222, %224 ], [ %230, %227 ]
  %229 = add i32 %185, %228
  %230 = and i32 %229, %17
  %231 = icmp ugt i32 %230, %104
  br i1 %231, label %227, label %232, !prof !51, !llvm.loop !52

232:                                              ; preds = %220, %227, %186
  %233 = phi i32 [ %188, %186 ], [ %221, %220 ], [ %230, %227 ]
  %234 = add nuw nsw i64 %187, 1
  %235 = icmp eq i64 %234, %29
  br i1 %235, label %236, label %186, !llvm.loop !54

236:                                              ; preds = %232
  %237 = zext i32 %15 to i64
  br label %238

238:                                              ; preds = %163, %236
  %239 = phi i64 [ %237, %236 ], [ %117, %163 ]
  br label %240

240:                                              ; preds = %240, %238
  %241 = phi i64 [ 0, %238 ], [ %264, %240 ]
  %242 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %241
  %243 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %241, i32 3
  %244 = load i32, ptr %243, align 4, !tbaa !41
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i16, ptr %6, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !5
  %248 = add i16 %247, 1
  store i16 %248, ptr %246, align 2, !tbaa !5
  %249 = zext i16 %247 to i32
  %250 = tail call i32 @llvm.ctlz.i32(i32 %249, i1 true), !range !55
  %251 = xor i32 %250, 31
  %252 = sub i32 %5, %251
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %241, i32 2
  store i8 %253, ptr %254, align 1, !tbaa !56
  %255 = and i32 %252, 255
  %256 = shl i32 %249, %255
  %257 = sub i32 %256, %15
  %258 = trunc i32 %257 to i16
  store i16 %258, ptr %242, align 4, !tbaa !57
  %259 = getelementptr inbounds i8, ptr %4, i64 %245
  %260 = load i8, ptr %259, align 1, !tbaa !9
  %261 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %13, i64 %241, i32 1
  store i8 %260, ptr %261, align 2, !tbaa !58
  %262 = getelementptr inbounds i32, ptr %3, i64 %245
  %263 = load i32, ptr %262, align 4, !tbaa !28
  store i32 %263, ptr %243, align 4, !tbaa !41
  %264 = add nuw nsw i64 %241, 1
  %265 = icmp eq i64 %264, %239
  br i1 %265, label %266, label %240, !llvm.loop !59

266:                                              ; preds = %240, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_buildFSETable_body_bmi2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #4 {
  %8 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %0, i64 1
  %9 = add i32 %2, 1
  %10 = shl nuw i32 1, %5
  %11 = getelementptr inbounds i16, ptr %6, i64 53
  %12 = add i32 %10, -1
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  store i32 1, ptr %0, align 4
  %15 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %5, ptr %15, align 4
  %16 = lshr i32 %10, 1
  %17 = lshr i32 %10, 3
  %18 = add nuw nsw i32 %17, 3
  %19 = add nuw i32 %18, %16
  br label %109

20:                                               ; preds = %7
  %21 = add i32 %5, -1
  %22 = shl i32 65536, %21
  %23 = ashr exact i32 %22, 16
  %24 = zext i32 %9 to i64
  %25 = and i64 %24, 1
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %20
  %28 = and i64 %24, 4294967294
  br label %29

29:                                               ; preds = %64, %27
  %30 = phi i64 [ 0, %27 ], [ %69, %64 ]
  %31 = phi i32 [ %12, %27 ], [ %67, %64 ]
  %32 = phi i32 [ 1, %27 ], [ %66, %64 ]
  %33 = phi i64 [ 0, %27 ], [ %70, %64 ]
  %34 = getelementptr inbounds i16, ptr %1, i64 %30
  %35 = load i16, ptr %34, align 2, !tbaa !5
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = add i32 %31, -1
  %39 = zext i32 %31 to i64
  %40 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %39, i32 3
  %41 = trunc i64 %30 to i32
  store i32 %41, ptr %40, align 4, !tbaa !41
  br label %46

42:                                               ; preds = %29
  %43 = sext i16 %35 to i32
  %44 = icmp sgt i32 %23, %43
  %45 = select i1 %44, i32 %32, i32 0
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i16 [ 1, %37 ], [ %35, %42 ]
  %48 = phi i32 [ %32, %37 ], [ %45, %42 ]
  %49 = phi i32 [ %38, %37 ], [ %31, %42 ]
  %50 = getelementptr inbounds i16, ptr %6, i64 %30
  store i16 %47, ptr %50, align 2
  %51 = or disjoint i64 %30, 1
  %52 = getelementptr inbounds i16, ptr %1, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !5
  %54 = icmp eq i16 %53, -1
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = sext i16 %53 to i32
  %57 = icmp sgt i32 %23, %56
  %58 = select i1 %57, i32 %48, i32 0
  br label %64

59:                                               ; preds = %46
  %60 = add i32 %49, -1
  %61 = zext i32 %49 to i64
  %62 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %61, i32 3
  %63 = trunc i64 %51 to i32
  store i32 %63, ptr %62, align 4, !tbaa !41
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i16 [ 1, %59 ], [ %53, %55 ]
  %66 = phi i32 [ %48, %59 ], [ %58, %55 ]
  %67 = phi i32 [ %60, %59 ], [ %49, %55 ]
  %68 = getelementptr inbounds i16, ptr %6, i64 %51
  store i16 %65, ptr %68, align 2
  %69 = add nuw nsw i64 %30, 2
  %70 = add i64 %33, 2
  %71 = icmp eq i64 %70, %28
  br i1 %71, label %72, label %29, !llvm.loop !43

72:                                               ; preds = %64, %20
  %73 = phi i32 [ undef, %20 ], [ %66, %64 ]
  %74 = phi i32 [ undef, %20 ], [ %67, %64 ]
  %75 = phi i64 [ 0, %20 ], [ %69, %64 ]
  %76 = phi i32 [ %12, %20 ], [ %67, %64 ]
  %77 = phi i32 [ 1, %20 ], [ %66, %64 ]
  %78 = icmp eq i64 %25, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds i16, ptr %1, i64 %75
  %81 = load i16, ptr %80, align 2, !tbaa !5
  %82 = icmp eq i16 %81, -1
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = sext i16 %81 to i32
  %85 = icmp sgt i32 %23, %84
  %86 = select i1 %85, i32 %77, i32 0
  br label %92

87:                                               ; preds = %79
  %88 = add i32 %76, -1
  %89 = zext i32 %76 to i64
  %90 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %89, i32 3
  %91 = trunc i64 %75 to i32
  store i32 %91, ptr %90, align 4, !tbaa !41
  br label %92

92:                                               ; preds = %87, %83
  %93 = phi i16 [ 1, %87 ], [ %81, %83 ]
  %94 = phi i32 [ %77, %87 ], [ %86, %83 ]
  %95 = phi i32 [ %88, %87 ], [ %76, %83 ]
  %96 = getelementptr inbounds i16, ptr %6, i64 %75
  store i16 %93, ptr %96, align 2
  br label %97

97:                                               ; preds = %72, %92
  %98 = phi i32 [ %73, %72 ], [ %94, %92 ]
  %99 = phi i32 [ %74, %72 ], [ %95, %92 ]
  store i32 %98, ptr %0, align 4
  %100 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %5, ptr %100, align 4
  %101 = icmp eq i32 %99, %12
  br i1 %101, label %102, label %178

102:                                              ; preds = %97
  %103 = lshr i32 %10, 1
  %104 = lshr i32 %10, 3
  %105 = add nuw nsw i32 %104, 3
  %106 = add nuw i32 %105, %103
  br i1 %13, label %109, label %107

107:                                              ; preds = %102
  %108 = zext i32 %9 to i64
  br label %115

109:                                              ; preds = %153, %14, %102
  %110 = phi i32 [ %19, %14 ], [ %106, %102 ], [ %106, %153 ]
  %111 = zext i32 %12 to i64
  %112 = zext i32 %110 to i64
  %113 = zext i32 %10 to i64
  %114 = shl nuw nsw i64 %112, 1
  br label %159

115:                                              ; preds = %107, %153
  %116 = phi i64 [ 0, %107 ], [ %156, %153 ]
  %117 = phi i64 [ 0, %107 ], [ %155, %153 ]
  %118 = phi i64 [ 0, %107 ], [ %157, %153 ]
  %119 = getelementptr inbounds i16, ptr %1, i64 %116
  %120 = load i16, ptr %119, align 2, !tbaa !5
  %121 = getelementptr inbounds i8, ptr %11, i64 %117
  store i64 %118, ptr %121, align 1, !tbaa !44
  %122 = icmp sgt i16 %120, 8
  br i1 %122, label %123, label %153

123:                                              ; preds = %115
  %124 = zext nneg i16 %120 to i64
  %125 = tail call i64 @llvm.umax.i64(i64 %124, i64 16)
  %126 = add nsw i64 %125, -9
  %127 = lshr i64 %126, 3
  %128 = add nuw nsw i64 %127, 1
  %129 = icmp ult i64 %126, 24
  br i1 %129, label %146, label %130

130:                                              ; preds = %123
  %131 = and i64 %128, 4611686018427387900
  %132 = shl i64 %131, 3
  %133 = or disjoint i64 %132, 8
  %134 = insertelement <2 x i64> poison, i64 %118, i64 0
  %135 = shufflevector <2 x i64> %134, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %136

136:                                              ; preds = %136, %130
  %137 = phi i64 [ 0, %130 ], [ %142, %136 ]
  %138 = shl i64 %137, 3
  %139 = or disjoint i64 %138, 8
  %140 = getelementptr inbounds i8, ptr %121, i64 %139
  %141 = getelementptr inbounds i64, ptr %140, i64 2
  store <2 x i64> %135, ptr %140, align 1, !tbaa !44
  store <2 x i64> %135, ptr %141, align 1, !tbaa !44
  %142 = add nuw i64 %137, 4
  %143 = icmp eq i64 %142, %131
  br i1 %143, label %144, label %136, !llvm.loop !60

144:                                              ; preds = %136
  %145 = icmp eq i64 %128, %131
  br i1 %145, label %153, label %146

146:                                              ; preds = %123, %144
  %147 = phi i64 [ 8, %123 ], [ %133, %144 ]
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi i64 [ %151, %148 ], [ %147, %146 ]
  %150 = getelementptr inbounds i8, ptr %121, i64 %149
  store i64 %118, ptr %150, align 1, !tbaa !44
  %151 = add nuw nsw i64 %149, 8
  %152 = icmp ult i64 %151, %124
  br i1 %152, label %148, label %153, !llvm.loop !61

153:                                              ; preds = %148, %144, %115
  %154 = sext i16 %120 to i64
  %155 = add i64 %117, %154
  %156 = add nuw nsw i64 %116, 1
  %157 = add i64 %118, 72340172838076673
  %158 = icmp eq i64 %156, %108
  br i1 %158, label %109, label %115, !llvm.loop !49

159:                                              ; preds = %109, %159
  %160 = phi i64 [ 0, %109 ], [ %176, %159 ]
  %161 = phi i64 [ 0, %109 ], [ %175, %159 ]
  %162 = and i64 %161, %111
  %163 = getelementptr inbounds i8, ptr %11, i64 %160
  %164 = load i8, ptr %163, align 1, !tbaa !9
  %165 = zext i8 %164 to i32
  %166 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %162, i32 3
  store i32 %165, ptr %166, align 4, !tbaa !41
  %167 = add nuw nsw i64 %161, %112
  %168 = and i64 %167, %111
  %169 = or disjoint i64 %160, 1
  %170 = getelementptr inbounds i8, ptr %11, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !9
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %168, i32 3
  store i32 %172, ptr %173, align 4, !tbaa !41
  %174 = add nuw nsw i64 %161, %114
  %175 = and i64 %174, %111
  %176 = add nuw nsw i64 %160, 2
  %177 = icmp ult i64 %176, %113
  br i1 %177, label %159, label %235, !llvm.loop !50

178:                                              ; preds = %97
  br i1 %13, label %235, label %179

179:                                              ; preds = %178
  %180 = lshr i32 %10, 3
  %181 = lshr i32 %10, 1
  %182 = add nuw nsw i32 %180, 3
  %183 = add nuw i32 %182, %181
  %184 = zext i32 %9 to i64
  br label %185

185:                                              ; preds = %179, %231
  %186 = phi i64 [ 0, %179 ], [ %233, %231 ]
  %187 = phi i32 [ 0, %179 ], [ %232, %231 ]
  %188 = getelementptr inbounds i16, ptr %1, i64 %186
  %189 = load i16, ptr %188, align 2, !tbaa !5
  %190 = sext i16 %189 to i32
  %191 = icmp sgt i16 %189, 0
  br i1 %191, label %192, label %231

192:                                              ; preds = %185
  %193 = trunc i64 %186 to i32
  %194 = and i32 %190, 1
  %195 = icmp eq i16 %189, 1
  br i1 %195, label %219, label %196

196:                                              ; preds = %192
  %197 = and i32 %190, 32766
  br label %198

198:                                              ; preds = %216, %196
  %199 = phi i32 [ %187, %196 ], [ %214, %216 ]
  %200 = phi i32 [ 0, %196 ], [ %217, %216 ]
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %201, i32 3
  store i32 %193, ptr %202, align 4, !tbaa !41
  br label %203

203:                                              ; preds = %203, %198
  %204 = phi i32 [ %199, %198 ], [ %206, %203 ]
  %205 = add i32 %183, %204
  %206 = and i32 %205, %12
  %207 = icmp ugt i32 %206, %99
  br i1 %207, label %203, label %208, !prof !51, !llvm.loop !52

208:                                              ; preds = %203
  %209 = zext i32 %206 to i64
  %210 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %209, i32 3
  store i32 %193, ptr %210, align 4, !tbaa !41
  br label %211

211:                                              ; preds = %211, %208
  %212 = phi i32 [ %206, %208 ], [ %214, %211 ]
  %213 = add i32 %183, %212
  %214 = and i32 %213, %12
  %215 = icmp ugt i32 %214, %99
  br i1 %215, label %211, label %216, !prof !51, !llvm.loop !52

216:                                              ; preds = %211
  %217 = add i32 %200, 2
  %218 = icmp eq i32 %217, %197
  br i1 %218, label %219, label %198, !llvm.loop !53

219:                                              ; preds = %216, %192
  %220 = phi i32 [ undef, %192 ], [ %214, %216 ]
  %221 = phi i32 [ %187, %192 ], [ %214, %216 ]
  %222 = icmp eq i32 %194, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %219
  %224 = zext i32 %221 to i64
  %225 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %224, i32 3
  store i32 %193, ptr %225, align 4, !tbaa !41
  br label %226

226:                                              ; preds = %226, %223
  %227 = phi i32 [ %221, %223 ], [ %229, %226 ]
  %228 = add i32 %183, %227
  %229 = and i32 %228, %12
  %230 = icmp ugt i32 %229, %99
  br i1 %230, label %226, label %231, !prof !51, !llvm.loop !52

231:                                              ; preds = %219, %226, %185
  %232 = phi i32 [ %187, %185 ], [ %220, %219 ], [ %229, %226 ]
  %233 = add nuw nsw i64 %186, 1
  %234 = icmp eq i64 %233, %184
  br i1 %234, label %235, label %185, !llvm.loop !54

235:                                              ; preds = %231, %159, %178
  %236 = zext i32 %10 to i64
  br label %237

237:                                              ; preds = %235, %237
  %238 = phi i64 [ 0, %235 ], [ %261, %237 ]
  %239 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %238
  %240 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %238, i32 3
  %241 = load i32, ptr %240, align 4, !tbaa !41
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i16, ptr %6, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !5
  %245 = add i16 %244, 1
  store i16 %245, ptr %243, align 2, !tbaa !5
  %246 = zext i16 %244 to i32
  %247 = tail call i32 @llvm.ctlz.i32(i32 %246, i1 true), !range !55
  %248 = xor i32 %247, 31
  %249 = sub i32 %5, %248
  %250 = trunc i32 %249 to i8
  %251 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %238, i32 2
  store i8 %250, ptr %251, align 1, !tbaa !56
  %252 = and i32 %249, 255
  %253 = shl i32 %246, %252
  %254 = sub i32 %253, %10
  %255 = trunc i32 %254 to i16
  store i16 %255, ptr %239, align 4, !tbaa !57
  %256 = getelementptr inbounds i8, ptr %4, i64 %242
  %257 = load i8, ptr %256, align 1, !tbaa !9
  %258 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %8, i64 %238, i32 1
  store i8 %257, ptr %258, align 2, !tbaa !58
  %259 = getelementptr inbounds i32, ptr %3, i64 %242
  %260 = load i32, ptr %259, align 4, !tbaa !28
  store i32 %260, ptr %240, align 4, !tbaa !41
  %261 = add nuw nsw i64 %238, 1
  %262 = icmp eq i64 %261, %236
  br i1 %262, label %263, label %237, !llvm.loop !59

263:                                              ; preds = %237
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds i8, ptr %2, i64 %3
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %93, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %2, i64 1
  %9 = load i8, ptr %2, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = icmp slt i8 %9, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = icmp eq i8 %9, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = icmp slt i64 %3, 3
  br i1 %15, label %93, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %2, i64 3
  %18 = load i16, ptr %8, align 1, !tbaa !5
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %19, 32512
  store i32 %20, ptr %1, align 4, !tbaa !28
  br label %37

21:                                               ; preds = %12
  %22 = icmp sgt i64 %3, 1
  br i1 %22, label %23, label %93

23:                                               ; preds = %21
  %24 = shl nuw nsw i32 %10, 8
  %25 = add nsw i32 %24, -32768
  %26 = load i8, ptr %8, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = or disjoint i32 %25, %27
  %29 = getelementptr inbounds i8, ptr %2, i64 2
  br label %30

30:                                               ; preds = %23, %7
  %31 = phi i32 [ %28, %23 ], [ %10, %7 ]
  %32 = phi ptr [ %29, %23 ], [ %8, %7 ]
  store i32 %31, ptr %1, align 4, !tbaa !28
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = icmp eq ptr %32, %5
  %36 = select i1 %35, i64 %3, i64 -20
  br label %93

37:                                               ; preds = %16, %30
  %38 = phi ptr [ %17, %16 ], [ %32, %30 ]
  %39 = phi i32 [ %20, %16 ], [ %31, %30 ]
  %40 = getelementptr inbounds i8, ptr %38, i64 1
  %41 = icmp ugt ptr %40, %5
  br i1 %41, label %93, label %42

42:                                               ; preds = %37
  %43 = load i8, ptr %38, align 1, !tbaa !9
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %42
  %48 = lshr i32 %44, 6
  %49 = lshr exact i32 %44, 2
  %50 = and i32 %49, 3
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4
  %52 = ptrtoint ptr %5 to i64
  %53 = ptrtoint ptr %40 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  %56 = load i32, ptr %55, align 4, !tbaa !62
  %57 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %58 = load i32, ptr %57, align 4, !tbaa !33
  %59 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 5
  %60 = getelementptr i8, ptr %0, i64 30180
  %61 = load i32, ptr %60, align 4, !tbaa !29
  %62 = tail call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %51, ptr noundef %0, i32 noundef %48, i32 noundef 35, i32 noundef 9, ptr noundef nonnull %40, i64 noundef %54, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, ptr noundef nonnull @LL_defaultDTable, i32 noundef %56, i32 noundef %58, i32 noundef %39, ptr noundef nonnull %59, i32 noundef %61)
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %64, label %93

64:                                               ; preds = %47
  %65 = getelementptr inbounds i8, ptr %40, i64 %62
  %66 = lshr i32 %44, 4
  %67 = and i32 %66, 3
  %68 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 1
  %69 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %70 = ptrtoint ptr %65 to i64
  %71 = sub i64 %52, %70
  %72 = load i32, ptr %55, align 4, !tbaa !62
  %73 = load i32, ptr %57, align 4, !tbaa !33
  %74 = load i32, ptr %60, align 4, !tbaa !29
  %75 = tail call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %68, ptr noundef nonnull %69, i32 noundef %67, i32 noundef 31, i32 noundef 8, ptr noundef nonnull %65, i64 noundef %71, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, ptr noundef nonnull @OF_defaultDTable, i32 noundef %72, i32 noundef %73, i32 noundef %39, ptr noundef nonnull %59, i32 noundef %74)
  %76 = icmp ult i64 %75, -119
  br i1 %76, label %77, label %93

77:                                               ; preds = %64
  %78 = getelementptr inbounds i8, ptr %65, i64 %75
  %79 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 2
  %80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %81 = ptrtoint ptr %78 to i64
  %82 = sub i64 %52, %81
  %83 = load i32, ptr %55, align 4, !tbaa !62
  %84 = load i32, ptr %57, align 4, !tbaa !33
  %85 = load i32, ptr %60, align 4, !tbaa !29
  %86 = tail call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %79, ptr noundef nonnull %80, i32 noundef %50, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %78, i64 noundef %82, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, ptr noundef nonnull @ML_defaultDTable, i32 noundef %83, i32 noundef %84, i32 noundef %39, ptr noundef nonnull %59, i32 noundef %85)
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = getelementptr inbounds i8, ptr %78, i64 %86
  %90 = ptrtoint ptr %89 to i64
  %91 = ptrtoint ptr %2 to i64
  %92 = sub i64 %90, %91
  br label %93

93:                                               ; preds = %34, %47, %64, %42, %37, %21, %14, %4, %77, %88
  %94 = phi i64 [ %92, %88 ], [ -20, %77 ], [ -72, %4 ], [ -72, %14 ], [ -72, %21 ], [ -72, %37 ], [ -20, %42 ], [ -20, %64 ], [ -20, %47 ], [ %36, %34 ]
  ret i64 %94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #5

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_buildSeqTable(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr nocapture noundef %13, i32 noundef %14) unnamed_addr #2 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [53 x i16], align 16
  store i32 %3, ptr %16, align 4, !tbaa !28
  switch i32 %2, label %64 [
    i32 1, label %19
    i32 0, label %36
    i32 3, label %37
    i32 2, label %54
  ]

19:                                               ; preds = %15
  %20 = icmp eq i64 %6, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %5, align 1, !tbaa !9
  %23 = zext i8 %22 to i32
  %24 = icmp ugt i32 %23, %3
  br i1 %24, label %65, label %25

25:                                               ; preds = %21
  %26 = zext i8 %22 to i64
  %27 = getelementptr inbounds i32, ptr %7, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = getelementptr inbounds i8, ptr %8, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %0, i64 1
  %32 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %0, i64 0, i32 1
  store i32 0, ptr %32, align 4, !tbaa !63
  store i32 0, ptr %0, align 4, !tbaa !65
  %33 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %0, i64 1, i32 2
  store i8 0, ptr %33, align 1, !tbaa !56
  store i16 0, ptr %31, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %0, i64 1, i32 1
  store i8 %30, ptr %34, align 2, !tbaa !58
  %35 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %0, i64 1, i32 3
  store i32 %28, ptr %35, align 4, !tbaa !41
  store ptr %0, ptr %1, align 8, !tbaa !38
  br label %65

36:                                               ; preds = %15
  store ptr %9, ptr %1, align 8, !tbaa !38
  br label %65

37:                                               ; preds = %15
  %38 = icmp eq i32 %10, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %37
  %40 = icmp ne i32 %11, 0
  %41 = icmp sgt i32 %12, 24
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load ptr, ptr %1, align 8, !tbaa !38
  %45 = shl nuw nsw i32 1, %4
  %46 = add nuw i32 %45, 1
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 3
  br label %49

49:                                               ; preds = %43, %49
  %50 = phi i64 [ 0, %43 ], [ %52, %49 ]
  %51 = getelementptr inbounds i8, ptr %44, i64 %50
  tail call void @llvm.prefetch.p0(ptr %51, i32 0, i32 2, i32 1)
  %52 = add nuw nsw i64 %50, 64
  %53 = icmp ult i64 %52, %48
  br i1 %53, label %49, label %65, !llvm.loop !66

54:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %18) #16
  %55 = call i64 @FSE_readNCount(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %5, i64 noundef %6) #16
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, ptr %17, align 4, !tbaa !28
  %59 = icmp ugt i32 %58, %4
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %16, align 4, !tbaa !28
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %61, ptr noundef %7, ptr noundef %8, i32 noundef %58, ptr noundef %13, i64 poison, i32 noundef %14)
  store ptr %0, ptr %1, align 8, !tbaa !38
  br label %62

62:                                               ; preds = %57, %54, %60
  %63 = phi i64 [ %55, %60 ], [ -20, %54 ], [ -20, %57 ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #16
  br label %65

64:                                               ; preds = %15
  unreachable

65:                                               ; preds = %49, %39, %37, %21, %19, %25, %36, %62
  %66 = phi i64 [ %63, %62 ], [ 0, %36 ], [ 1, %25 ], [ -72, %19 ], [ -20, %21 ], [ -20, %37 ], [ 0, %39 ], [ 0, %49 ]
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = zext i32 %13 to i64
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi i64 [ %14, %11 ], [ 131072, %6 ]
  %17 = icmp ult i64 %16, %4
  br i1 %17, label %100, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef %1, i64 noundef %2, i32 noundef %5), !range !25
  %20 = icmp ult i64 %19, -119
  %21 = getelementptr inbounds i8, ptr %3, i64 %19
  %22 = sub nsw i64 %4, %19
  br i1 %20, label %23, label %100

23:                                               ; preds = %18
  %24 = load i32, ptr %8, align 8, !tbaa !15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i64 @llvm.umin.i64(i64 %2, i64 131072)
  br label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !26
  %31 = zext i32 %30 to i64
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 %2)
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i64 [ %27, %26 ], [ %32, %28 ]
  %35 = getelementptr inbounds i8, ptr %1, i64 %34
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %42 = load i32, ptr %41, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %43 = call i64 @ZSTD_decodeSeqHeaders(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %21, i64 noundef %22)
  %44 = icmp ult i64 %43, -119
  br i1 %44, label %45, label %98

45:                                               ; preds = %33
  %46 = getelementptr inbounds i8, ptr %21, i64 %43
  %47 = sub i64 %22, %43
  %48 = icmp eq ptr %1, null
  %49 = icmp eq i64 %2, 0
  %50 = or i1 %48, %49
  %51 = load i32, ptr %7, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  %54 = icmp ugt ptr %1, inttoptr (i64 -1048577 to ptr)
  %55 = or i1 %54, %53
  br i1 %55, label %98, label %56

56:                                               ; preds = %45
  %57 = icmp eq i32 %42, 0
  %58 = icmp ugt i64 %40, 16777216
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp sgt i32 %51, 8
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  %65 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !63
  %67 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %64, i64 1
  br label %68

68:                                               ; preds = %68, %62
  %69 = phi i32 [ 0, %62 ], [ %77, %68 ]
  %70 = phi i32 [ 0, %62 ], [ %76, %68 ]
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %67, i64 %71, i32 1
  %73 = load i8, ptr %72, align 2, !tbaa !58
  %74 = icmp ugt i8 %73, 22
  %75 = zext i1 %74 to i32
  %76 = add i32 %70, %75
  %77 = add i32 %69, 1
  %78 = lshr i32 %77, %66
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %68, label %80, !llvm.loop !69

80:                                               ; preds = %68
  %81 = sub i32 8, %66
  %82 = shl i32 %76, %81
  %83 = icmp ugt i32 %82, 6
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %80, %56
  %86 = phi i32 [ %42, %56 ], [ %84, %80 ]
  store i32 0, ptr %41, align 4, !tbaa !33
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %98

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %92 = load i32, ptr %91, align 8, !tbaa !32
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %98

96:                                               ; preds = %90
  %97 = tail call fastcc i64 @ZSTD_decompressSequences(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %98

98:                                               ; preds = %45, %33, %96, %94, %88
  %99 = phi i64 [ %89, %88 ], [ %95, %94 ], [ %97, %96 ], [ %43, %33 ], [ -70, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %100

100:                                              ; preds = %15, %18, %98
  %101 = phi i64 [ %99, %98 ], [ %19, %18 ], [ -72, %15 ]
  ret i64 %101
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #7 {
  %7 = alloca ptr, align 8
  %8 = alloca [8 x %struct.seq_t], align 16
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr i8, ptr %0, i64 30180
  %11 = load i32, ptr %10, align 4, !tbaa !29
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %2343

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  br label %25

22:                                               ; preds = %15
  %23 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %21, %19 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  store ptr %28, ptr %7, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = icmp eq i32 %5, 0
  br i1 %37, label %2297, label %38

38:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #16
  %39 = ptrtoint ptr %32 to i64
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %40, align 4, !tbaa !62
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 0
  %42 = load i32, ptr %41, align 4, !tbaa !28
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 0
  store i64 %43, ptr %44, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !28
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 1
  store i64 %47, ptr %48, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  %50 = load i32, ptr %49, align 4, !tbaa !28
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 2
  store i64 %51, ptr %52, align 8, !tbaa !44
  %53 = tail call i32 @llvm.smin.i32(i32 %5, i32 8)
  %54 = ptrtoint ptr %1 to i64
  %55 = sub i64 %54, %39
  %56 = icmp eq i64 %4, 0
  br i1 %56, label %2295, label %57

57:                                               ; preds = %38
  %58 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 3
  store ptr %3, ptr %58, align 8, !tbaa !72
  %59 = getelementptr inbounds i8, ptr %3, i64 8
  %60 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !74
  %61 = icmp ugt i64 %4, 7
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = add nsw i64 %4, -8
  %64 = getelementptr inbounds i8, ptr %3, i64 %63
  %65 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !75
  %66 = load i64, ptr %64, align 1
  store i64 %66, ptr %9, align 8, !tbaa !76
  %67 = icmp ult i64 %66, 72057594037927936
  br i1 %67, label %2295, label %126

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %3, ptr %69, align 8, !tbaa !75
  %70 = load i8, ptr %3, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  store i64 %71, ptr %9, align 8, !tbaa !76
  switch i64 %4, label %113 [
    i64 7, label %72
    i64 6, label %78
    i64 5, label %85
    i64 4, label %92
    i64 3, label %99
    i64 2, label %106
  ]

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %3, i64 6
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 48
  %77 = or disjoint i64 %76, %71
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi i64 [ %71, %68 ], [ %77, %72 ]
  %80 = getelementptr inbounds i8, ptr %3, i64 5
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 40
  %84 = add nuw nsw i64 %83, %79
  br label %85

85:                                               ; preds = %78, %68
  %86 = phi i64 [ %71, %68 ], [ %84, %78 ]
  %87 = getelementptr inbounds i8, ptr %3, i64 4
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 32
  %91 = add nuw nsw i64 %90, %86
  br label %92

92:                                               ; preds = %85, %68
  %93 = phi i64 [ %71, %68 ], [ %91, %85 ]
  %94 = getelementptr inbounds i8, ptr %3, i64 3
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = zext i8 %95 to i64
  %97 = shl nuw nsw i64 %96, 24
  %98 = add nuw nsw i64 %97, %93
  br label %99

99:                                               ; preds = %92, %68
  %100 = phi i64 [ %71, %68 ], [ %98, %92 ]
  %101 = getelementptr inbounds i8, ptr %3, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !9
  %103 = zext i8 %102 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = add nuw nsw i64 %104, %100
  br label %106

106:                                              ; preds = %99, %68
  %107 = phi i64 [ %71, %68 ], [ %105, %99 ]
  %108 = getelementptr inbounds i8, ptr %3, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !9
  %110 = zext i8 %109 to i64
  %111 = shl nuw nsw i64 %110, 8
  %112 = add nuw nsw i64 %111, %107
  store i64 %112, ptr %9, align 8, !tbaa !76
  br label %113

113:                                              ; preds = %106, %68
  %114 = phi i64 [ %112, %106 ], [ %71, %68 ]
  %115 = getelementptr i8, ptr %3, i64 %4
  %116 = getelementptr i8, ptr %115, i64 -1
  %117 = load i8, ptr %116, align 1, !tbaa !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %2295, label %119

119:                                              ; preds = %113
  %120 = zext i8 %117 to i32
  %121 = tail call i32 @llvm.ctlz.i32(i32 %120, i1 true), !range !55
  %122 = trunc i64 %4 to i32
  %123 = shl nuw nsw i32 %122, 3
  %124 = sub nsw i32 %121, %123
  %125 = add nsw i32 %124, 41
  br label %133

126:                                              ; preds = %62
  %127 = lshr i64 %66, 56
  %128 = trunc i64 %127 to i32
  %129 = tail call i32 @llvm.ctlz.i32(i32 %128, i1 true), !range !55
  %130 = xor i32 %129, 31
  %131 = sub nuw nsw i32 8, %130
  %132 = icmp ult i64 %4, -119
  br i1 %132, label %133, label %2295

133:                                              ; preds = %126, %119
  %134 = phi i64 [ 0, %119 ], [ %63, %126 ]
  %135 = phi i32 [ %125, %119 ], [ %131, %126 ]
  %136 = phi i64 [ %114, %119 ], [ %66, %126 ]
  %137 = getelementptr inbounds i8, ptr %3, i64 %134
  %138 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1
  %139 = load ptr, ptr %0, align 8, !tbaa !77
  %140 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %139, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !63
  %142 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  %143 = add i32 %141, %135
  %144 = sub i32 0, %143
  %145 = and i32 %144, 63
  %146 = zext nneg i32 %145 to i64
  %147 = lshr i64 %136, %146
  %148 = zext nneg i32 %141 to i64
  %149 = shl nsw i64 -1, %148
  %150 = xor i64 %149, -1
  %151 = and i64 %147, %150
  store i64 %151, ptr %138, align 8, !tbaa !78
  %152 = icmp ugt i32 %143, 64
  %153 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  br i1 %152, label %154, label %155, !prof !51

154:                                              ; preds = %133
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75
  br label %180

155:                                              ; preds = %133
  %156 = icmp slt i64 %134, 8
  br i1 %156, label %164, label %157

157:                                              ; preds = %155
  %158 = lshr i32 %143, 3
  %159 = zext nneg i32 %158 to i64
  %160 = sub nsw i64 0, %159
  %161 = getelementptr inbounds i8, ptr %137, i64 %160
  store ptr %161, ptr %153, align 8, !tbaa !75
  %162 = and i32 %143, 7
  store i32 %162, ptr %142, align 8, !tbaa !80
  %163 = load i64, ptr %161, align 1, !tbaa !44
  store i64 %163, ptr %9, align 8, !tbaa !76
  br label %180

164:                                              ; preds = %155
  %165 = icmp eq i64 %134, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %164
  %167 = lshr i32 %143, 3
  %168 = zext nneg i32 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %137, i64 %169
  %171 = icmp ult ptr %170, %3
  %172 = trunc i64 %134 to i32
  %173 = select i1 %171, i32 %172, i32 %167
  %174 = zext i32 %173 to i64
  %175 = sub nsw i64 0, %174
  %176 = getelementptr inbounds i8, ptr %137, i64 %175
  store ptr %176, ptr %153, align 8, !tbaa !75
  %177 = shl i32 %173, 3
  %178 = sub i32 %143, %177
  store i32 %178, ptr %142, align 8, !tbaa !80
  %179 = load i64, ptr %176, align 1, !tbaa !44
  store i64 %179, ptr %9, align 8, !tbaa !76
  br label %180

180:                                              ; preds = %166, %164, %157, %154
  %181 = phi ptr [ @BIT_reloadDStream.zeroFilled, %154 ], [ %161, %157 ], [ %3, %164 ], [ %176, %166 ]
  %182 = phi i32 [ %143, %154 ], [ %162, %157 ], [ %143, %164 ], [ %178, %166 ]
  %183 = phi i64 [ %136, %154 ], [ %163, %157 ], [ %136, %164 ], [ %179, %166 ]
  %184 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %139, i64 1
  %185 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1, i32 1
  store ptr %184, ptr %185, align 8, !tbaa !81
  %186 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2
  %187 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !68
  %189 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %188, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !63
  %191 = add i32 %190, %182
  %192 = sub i32 0, %191
  %193 = and i32 %192, 63
  %194 = zext nneg i32 %193 to i64
  %195 = lshr i64 %183, %194
  %196 = zext nneg i32 %190 to i64
  %197 = shl nsw i64 -1, %196
  %198 = xor i64 %197, -1
  %199 = and i64 %195, %198
  store i64 %199, ptr %186, align 8, !tbaa !78
  %200 = icmp ugt i32 %191, 64
  br i1 %200, label %201, label %202, !prof !51

201:                                              ; preds = %180
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75
  br label %230

202:                                              ; preds = %180
  %203 = icmp ult ptr %181, %59
  br i1 %203, label %211, label %204

204:                                              ; preds = %202
  %205 = lshr i32 %191, 3
  %206 = zext nneg i32 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %181, i64 %207
  store ptr %208, ptr %153, align 8, !tbaa !75
  %209 = and i32 %191, 7
  %210 = load i64, ptr %208, align 1, !tbaa !44
  store i64 %210, ptr %9, align 8, !tbaa !76
  br label %230

211:                                              ; preds = %202
  %212 = icmp eq ptr %181, %3
  br i1 %212, label %230, label %213

213:                                              ; preds = %211
  %214 = lshr i32 %191, 3
  %215 = zext nneg i32 %214 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr inbounds i8, ptr %181, i64 %216
  %218 = icmp ult ptr %217, %3
  %219 = ptrtoint ptr %181 to i64
  %220 = ptrtoint ptr %3 to i64
  %221 = sub i64 %219, %220
  %222 = trunc i64 %221 to i32
  %223 = select i1 %218, i32 %222, i32 %214
  %224 = zext i32 %223 to i64
  %225 = sub nsw i64 0, %224
  %226 = getelementptr inbounds i8, ptr %181, i64 %225
  store ptr %226, ptr %153, align 8, !tbaa !75
  %227 = shl i32 %223, 3
  %228 = sub i32 %191, %227
  %229 = load i64, ptr %226, align 1, !tbaa !44
  store i64 %229, ptr %9, align 8, !tbaa !76
  br label %230

230:                                              ; preds = %213, %211, %204, %201
  %231 = phi ptr [ @BIT_reloadDStream.zeroFilled, %201 ], [ %208, %204 ], [ %3, %211 ], [ %226, %213 ]
  %232 = phi i32 [ %191, %201 ], [ %209, %204 ], [ %191, %211 ], [ %228, %213 ]
  %233 = phi i64 [ %183, %201 ], [ %210, %204 ], [ %183, %211 ], [ %229, %213 ]
  %234 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %188, i64 1
  %235 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2, i32 1
  store ptr %234, ptr %235, align 8, !tbaa !81
  %236 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3
  %237 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !82
  %239 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %238, i64 0, i32 1
  %240 = load i32, ptr %239, align 4, !tbaa !63
  %241 = add i32 %240, %232
  %242 = sub i32 0, %241
  %243 = and i32 %242, 63
  %244 = zext nneg i32 %243 to i64
  %245 = lshr i64 %233, %244
  %246 = zext nneg i32 %240 to i64
  %247 = shl nsw i64 -1, %246
  %248 = xor i64 %247, -1
  %249 = and i64 %245, %248
  store i32 %241, ptr %142, align 8, !tbaa !80
  store i64 %249, ptr %236, align 8, !tbaa !78
  %250 = icmp ugt i32 %241, 64
  br i1 %250, label %251, label %252, !prof !51

251:                                              ; preds = %230
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75
  br label %280

252:                                              ; preds = %230
  %253 = icmp ult ptr %231, %59
  br i1 %253, label %261, label %254

254:                                              ; preds = %252
  %255 = lshr i32 %241, 3
  %256 = zext nneg i32 %255 to i64
  %257 = sub nsw i64 0, %256
  %258 = getelementptr inbounds i8, ptr %231, i64 %257
  store ptr %258, ptr %153, align 8, !tbaa !75
  %259 = and i32 %241, 7
  store i32 %259, ptr %142, align 8, !tbaa !80
  %260 = load i64, ptr %258, align 1, !tbaa !44
  store i64 %260, ptr %9, align 8, !tbaa !76
  br label %280

261:                                              ; preds = %252
  %262 = icmp eq ptr %231, %3
  br i1 %262, label %280, label %263

263:                                              ; preds = %261
  %264 = lshr i32 %241, 3
  %265 = zext nneg i32 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, ptr %231, i64 %266
  %268 = icmp ult ptr %267, %3
  %269 = ptrtoint ptr %231 to i64
  %270 = ptrtoint ptr %3 to i64
  %271 = sub i64 %269, %270
  %272 = trunc i64 %271 to i32
  %273 = select i1 %268, i32 %272, i32 %264
  %274 = zext i32 %273 to i64
  %275 = sub nsw i64 0, %274
  %276 = getelementptr inbounds i8, ptr %231, i64 %275
  store ptr %276, ptr %153, align 8, !tbaa !75
  %277 = shl i32 %273, 3
  %278 = sub i32 %241, %277
  store i32 %278, ptr %142, align 8, !tbaa !80
  %279 = load i64, ptr %276, align 1, !tbaa !44
  store i64 %279, ptr %9, align 8, !tbaa !76
  br label %280

280:                                              ; preds = %263, %261, %254, %251
  %281 = phi i64 [ %233, %251 ], [ %260, %254 ], [ %233, %261 ], [ %279, %263 ]
  %282 = phi i32 [ %241, %251 ], [ %259, %254 ], [ %241, %261 ], [ %278, %263 ]
  %283 = phi ptr [ @BIT_reloadDStream.zeroFilled, %251 ], [ %258, %254 ], [ %3, %261 ], [ %276, %263 ]
  %284 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %238, i64 1
  %285 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3, i32 1
  store ptr %284, ptr %285, align 8, !tbaa !81
  %286 = icmp sgt i32 %5, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %280
  %288 = ptrtoint ptr %3 to i64
  %289 = add nsw i32 %5, -1
  %290 = zext nneg i32 %289 to i64
  %291 = zext nneg i32 %53 to i64
  br label %309

292:                                              ; preds = %536, %280
  %293 = phi i32 [ %282, %280 ], [ %539, %536 ]
  %294 = phi ptr [ %283, %280 ], [ %537, %536 ]
  %295 = phi i64 [ %55, %280 ], [ %551, %536 ]
  %296 = phi i32 [ 0, %280 ], [ %53, %536 ]
  %297 = icmp slt i32 %296, %5
  br i1 %297, label %298, label %1542

298:                                              ; preds = %292
  %299 = add nsw i32 %5, -1
  %300 = getelementptr inbounds i8, ptr %26, i64 -32
  %301 = ptrtoint ptr %34 to i64
  %302 = ptrtoint ptr %26 to i64
  %303 = getelementptr i8, ptr %0, i64 30372
  %304 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  %305 = getelementptr inbounds i8, ptr %0, i64 30388
  %306 = add i64 %39, 16
  %307 = add i64 %39, 16
  %308 = add i64 %39, 16
  br label %557

309:                                              ; preds = %536, %287
  %310 = phi ptr [ %283, %287 ], [ %537, %536 ]
  %311 = phi i64 [ 0, %287 ], [ %555, %536 ]
  %312 = phi i64 [ %47, %287 ], [ %406, %536 ]
  %313 = phi i64 [ %43, %287 ], [ %407, %536 ]
  %314 = phi i64 [ %55, %287 ], [ %551, %536 ]
  %315 = phi i64 [ %151, %287 ], [ %543, %536 ]
  %316 = phi i64 [ %249, %287 ], [ %542, %536 ]
  %317 = phi i64 [ %199, %287 ], [ %541, %536 ]
  %318 = phi i64 [ %281, %287 ], [ %540, %536 ]
  %319 = phi i32 [ %282, %287 ], [ %539, %536 ]
  %320 = phi ptr [ %283, %287 ], [ %538, %536 ]
  %321 = icmp eq i64 %311, %290
  %322 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %316, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !41, !noalias !83
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %184, i64 %315, i32 3
  %326 = load i32, ptr %325, align 4, !tbaa !41, !noalias !83
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %234, i64 %317, i32 3
  %329 = load i32, ptr %328, align 4, !tbaa !41, !noalias !83
  %330 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %184, i64 %315, i32 1
  %331 = load i8, ptr %330, align 2, !tbaa !58, !noalias !83
  %332 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %316, i32 1
  %333 = load i8, ptr %332, align 2, !tbaa !58, !noalias !83
  %334 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %234, i64 %317, i32 1
  %335 = load i8, ptr %334, align 2, !tbaa !58, !noalias !83
  %336 = zext i8 %331 to i32
  %337 = zext i8 %333 to i32
  %338 = add i8 %333, %331
  %339 = add i8 %338, %335
  %340 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %234, i64 %317
  %341 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %316
  %342 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %184, i64 %315
  %343 = load i16, ptr %342, align 4, !tbaa !57, !noalias !83
  %344 = load i16, ptr %341, align 4, !tbaa !57, !noalias !83
  %345 = load i16, ptr %340, align 4, !tbaa !57, !noalias !83
  %346 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %184, i64 %315, i32 2
  %347 = load i8, ptr %346, align 1, !tbaa !56, !noalias !83
  %348 = zext i8 %347 to i32
  %349 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %316, i32 2
  %350 = load i8, ptr %349, align 1, !tbaa !56, !noalias !83
  %351 = zext i8 %350 to i32
  %352 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %234, i64 %317, i32 2
  %353 = load i8, ptr %352, align 1, !tbaa !56, !noalias !83
  %354 = zext i8 %353 to i32
  %355 = icmp ugt i8 %335, 1
  br i1 %355, label %357, label %369

356:                                              ; preds = %1552
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !86
  unreachable, !nosanitize !86

357:                                              ; preds = %309
  %358 = zext i8 %335 to i32
  %359 = and i32 %319, 63
  %360 = zext nneg i32 %359 to i64
  %361 = shl i64 %318, %360
  %362 = sub nsw i32 0, %358
  %363 = and i32 %362, 63
  %364 = zext nneg i32 %363 to i64
  %365 = lshr i64 %361, %364
  %366 = add i32 %319, %358
  store i32 %366, ptr %142, align 8, !tbaa !80, !noalias !83
  %367 = zext i32 %329 to i64
  %368 = add i64 %365, %367
  store i64 %312, ptr %52, align 8, !tbaa !44, !noalias !83
  br label %405

369:                                              ; preds = %309
  %370 = icmp eq i32 %326, 0
  %371 = icmp eq i8 %335, 0
  br i1 %371, label %372, label %380, !prof !87

372:                                              ; preds = %369
  %373 = zext i1 %370 to i64
  %374 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %373
  %375 = load i64, ptr %374, align 8, !tbaa !44, !noalias !83
  %376 = xor i1 %370, true
  %377 = zext i1 %376 to i64
  %378 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %377
  %379 = load i64, ptr %378, align 8, !tbaa !44, !noalias !83
  br label %405

380:                                              ; preds = %369
  %381 = zext i1 %370 to i32
  %382 = add i32 %329, %381
  %383 = zext i32 %382 to i64
  %384 = and i32 %319, 63
  %385 = zext nneg i32 %384 to i64
  %386 = shl i64 %318, %385
  %387 = lshr i64 %386, 63
  %388 = add i32 %319, 1
  store i32 %388, ptr %142, align 8, !tbaa !80, !noalias !83
  %389 = add nuw nsw i64 %387, %383
  %390 = icmp eq i64 %389, 3
  br i1 %390, label %391, label %396

391:                                              ; preds = %380
  %392 = add i64 %313, -1
  %393 = icmp eq i64 %392, 0
  %394 = sext i1 %393 to i64
  %395 = add i64 %392, %394
  br label %403

396:                                              ; preds = %380
  %397 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %389
  %398 = load i64, ptr %397, align 8, !tbaa !44, !noalias !83
  %399 = icmp eq i64 %398, 0
  %400 = sext i1 %399 to i64
  %401 = add i64 %398, %400
  %402 = icmp eq i64 %389, 1
  br i1 %402, label %405, label %403

403:                                              ; preds = %396, %391
  %404 = phi i64 [ %395, %391 ], [ %401, %396 ]
  store i64 %312, ptr %52, align 8, !tbaa !44, !noalias !83
  br label %405

405:                                              ; preds = %403, %396, %372, %357
  %406 = phi i64 [ %379, %372 ], [ %313, %357 ], [ %313, %403 ], [ %313, %396 ]
  %407 = phi i64 [ %375, %372 ], [ %368, %357 ], [ %404, %403 ], [ %401, %396 ]
  %408 = phi i32 [ %319, %372 ], [ %366, %357 ], [ %388, %403 ], [ %388, %396 ]
  store i64 %406, ptr %48, align 8, !tbaa !44, !noalias !83
  store i64 %407, ptr %44, align 8, !tbaa !44, !noalias !83
  %409 = icmp eq i8 %333, 0
  br i1 %409, label %420, label %410

410:                                              ; preds = %405
  %411 = and i32 %408, 63
  %412 = zext nneg i32 %411 to i64
  %413 = shl i64 %318, %412
  %414 = sub nsw i32 0, %337
  %415 = and i32 %414, 63
  %416 = zext nneg i32 %415 to i64
  %417 = lshr i64 %413, %416
  %418 = add i32 %408, %337
  store i32 %418, ptr %142, align 8, !tbaa !80, !noalias !83
  %419 = add i64 %417, %324
  br label %420

420:                                              ; preds = %410, %405
  %421 = phi i32 [ %408, %405 ], [ %418, %410 ]
  %422 = phi i64 [ %324, %405 ], [ %419, %410 ]
  %423 = icmp ugt i8 %339, 30
  br i1 %423, label %424, label %454, !prof !51

424:                                              ; preds = %420
  %425 = icmp ugt i32 %421, 64
  br i1 %425, label %426, label %427, !prof !51

426:                                              ; preds = %424
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75, !noalias !83
  br label %454

427:                                              ; preds = %424
  %428 = icmp ult ptr %320, %59
  br i1 %428, label %436, label %429

429:                                              ; preds = %427
  %430 = lshr i32 %421, 3
  %431 = zext nneg i32 %430 to i64
  %432 = sub nsw i64 0, %431
  %433 = getelementptr inbounds i8, ptr %320, i64 %432
  store ptr %433, ptr %153, align 8, !tbaa !75, !noalias !83
  %434 = and i32 %421, 7
  store i32 %434, ptr %142, align 8, !tbaa !80, !noalias !83
  %435 = load i64, ptr %433, align 1, !tbaa !44, !noalias !83
  store i64 %435, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %454

436:                                              ; preds = %427
  %437 = icmp eq ptr %320, %3
  br i1 %437, label %454, label %438

438:                                              ; preds = %436
  %439 = lshr i32 %421, 3
  %440 = zext nneg i32 %439 to i64
  %441 = sub nsw i64 0, %440
  %442 = getelementptr inbounds i8, ptr %320, i64 %441
  %443 = icmp ult ptr %442, %3
  %444 = ptrtoint ptr %320 to i64
  %445 = sub i64 %444, %288
  %446 = trunc i64 %445 to i32
  %447 = select i1 %443, i32 %446, i32 %439
  %448 = zext i32 %447 to i64
  %449 = sub nsw i64 0, %448
  %450 = getelementptr inbounds i8, ptr %320, i64 %449
  store ptr %450, ptr %153, align 8, !tbaa !75, !noalias !83
  %451 = shl i32 %447, 3
  %452 = sub i32 %421, %451
  store i32 %452, ptr %142, align 8, !tbaa !80, !noalias !83
  %453 = load i64, ptr %450, align 1, !tbaa !44, !noalias !83
  store i64 %453, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %454

454:                                              ; preds = %438, %436, %429, %426, %420
  %455 = phi ptr [ %310, %436 ], [ %450, %438 ], [ %433, %429 ], [ @BIT_reloadDStream.zeroFilled, %426 ], [ %310, %420 ]
  %456 = phi ptr [ %3, %436 ], [ %450, %438 ], [ %433, %429 ], [ @BIT_reloadDStream.zeroFilled, %426 ], [ %320, %420 ]
  %457 = phi i32 [ %421, %436 ], [ %452, %438 ], [ %434, %429 ], [ %421, %426 ], [ %421, %420 ]
  %458 = phi i64 [ %318, %436 ], [ %453, %438 ], [ %435, %429 ], [ %318, %426 ], [ %318, %420 ]
  %459 = icmp eq i8 %331, 0
  br i1 %459, label %470, label %460

460:                                              ; preds = %454
  %461 = and i32 %457, 63
  %462 = zext nneg i32 %461 to i64
  %463 = shl i64 %458, %462
  %464 = sub nsw i32 0, %336
  %465 = and i32 %464, 63
  %466 = zext nneg i32 %465 to i64
  %467 = lshr i64 %463, %466
  %468 = add i32 %457, %336
  store i32 %468, ptr %142, align 8, !tbaa !80, !noalias !83
  %469 = add i64 %467, %327
  br label %470

470:                                              ; preds = %460, %454
  %471 = phi i32 [ %457, %454 ], [ %468, %460 ]
  %472 = phi i64 [ %327, %454 ], [ %469, %460 ]
  br i1 %321, label %536, label %473

473:                                              ; preds = %470
  %474 = add i32 %471, %348
  %475 = sub i32 0, %474
  %476 = and i32 %475, 63
  %477 = zext nneg i32 %476 to i64
  %478 = lshr i64 %458, %477
  %479 = zext nneg i8 %347 to i64
  %480 = shl nsw i64 -1, %479
  %481 = xor i64 %480, -1
  %482 = and i64 %478, %481
  %483 = zext i16 %343 to i64
  %484 = add nuw i64 %482, %483
  store i64 %484, ptr %138, align 8, !tbaa !78, !noalias !83
  %485 = add i32 %474, %351
  %486 = sub i32 0, %485
  %487 = and i32 %486, 63
  %488 = zext nneg i32 %487 to i64
  %489 = lshr i64 %458, %488
  %490 = zext nneg i8 %350 to i64
  %491 = shl nsw i64 -1, %490
  %492 = xor i64 %491, -1
  %493 = and i64 %489, %492
  %494 = zext i16 %344 to i64
  %495 = add nuw i64 %493, %494
  store i64 %495, ptr %236, align 8, !tbaa !78, !noalias !83
  %496 = add i32 %485, %354
  %497 = sub i32 0, %496
  %498 = and i32 %497, 63
  %499 = zext nneg i32 %498 to i64
  %500 = lshr i64 %458, %499
  %501 = zext nneg i8 %353 to i64
  %502 = shl nsw i64 -1, %501
  %503 = xor i64 %502, -1
  %504 = and i64 %500, %503
  store i32 %496, ptr %142, align 8, !tbaa !80, !noalias !83
  %505 = zext i16 %345 to i64
  %506 = add nuw i64 %504, %505
  store i64 %506, ptr %186, align 8, !tbaa !78, !noalias !83
  %507 = icmp ugt i32 %496, 64
  br i1 %507, label %508, label %509, !prof !51

508:                                              ; preds = %473
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75, !noalias !83
  br label %536

509:                                              ; preds = %473
  %510 = icmp ult ptr %456, %59
  br i1 %510, label %518, label %511

511:                                              ; preds = %509
  %512 = lshr i32 %496, 3
  %513 = zext nneg i32 %512 to i64
  %514 = sub nsw i64 0, %513
  %515 = getelementptr inbounds i8, ptr %456, i64 %514
  store ptr %515, ptr %153, align 8, !tbaa !75, !noalias !83
  %516 = and i32 %496, 7
  store i32 %516, ptr %142, align 8, !tbaa !80, !noalias !83
  %517 = load i64, ptr %515, align 1, !tbaa !44, !noalias !83
  store i64 %517, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %536

518:                                              ; preds = %509
  %519 = icmp eq ptr %456, %3
  br i1 %519, label %536, label %520

520:                                              ; preds = %518
  %521 = lshr i32 %496, 3
  %522 = zext nneg i32 %521 to i64
  %523 = sub nsw i64 0, %522
  %524 = getelementptr inbounds i8, ptr %456, i64 %523
  %525 = icmp ult ptr %524, %3
  %526 = ptrtoint ptr %456 to i64
  %527 = sub i64 %526, %288
  %528 = trunc i64 %527 to i32
  %529 = select i1 %525, i32 %528, i32 %521
  %530 = zext i32 %529 to i64
  %531 = sub nsw i64 0, %530
  %532 = getelementptr inbounds i8, ptr %456, i64 %531
  store ptr %532, ptr %153, align 8, !tbaa !75, !noalias !83
  %533 = shl i32 %529, 3
  %534 = sub i32 %496, %533
  store i32 %534, ptr %142, align 8, !tbaa !80, !noalias !83
  %535 = load i64, ptr %532, align 1, !tbaa !44, !noalias !83
  store i64 %535, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %536

536:                                              ; preds = %520, %518, %511, %508, %470
  %537 = phi ptr [ %455, %518 ], [ %532, %520 ], [ %515, %511 ], [ @BIT_reloadDStream.zeroFilled, %508 ], [ %455, %470 ]
  %538 = phi ptr [ %3, %518 ], [ %532, %520 ], [ %515, %511 ], [ @BIT_reloadDStream.zeroFilled, %508 ], [ %456, %470 ]
  %539 = phi i32 [ %496, %518 ], [ %534, %520 ], [ %516, %511 ], [ %496, %508 ], [ %471, %470 ]
  %540 = phi i64 [ %458, %518 ], [ %535, %520 ], [ %517, %511 ], [ %458, %508 ], [ %458, %470 ]
  %541 = phi i64 [ %506, %518 ], [ %506, %520 ], [ %506, %511 ], [ %506, %508 ], [ %317, %470 ]
  %542 = phi i64 [ %495, %518 ], [ %495, %520 ], [ %495, %511 ], [ %495, %508 ], [ %316, %470 ]
  %543 = phi i64 [ %484, %518 ], [ %484, %520 ], [ %484, %511 ], [ %484, %508 ], [ %315, %470 ]
  %544 = add i64 %472, %314
  %545 = icmp ugt i64 %407, %544
  %546 = select i1 %545, ptr %36, ptr %32
  %547 = getelementptr inbounds i8, ptr %546, i64 %544
  %548 = sub i64 0, %407
  %549 = getelementptr inbounds i8, ptr %547, i64 %548
  tail call void @llvm.prefetch.p0(ptr %549, i32 0, i32 3, i32 1)
  %550 = getelementptr inbounds i8, ptr %549, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %550, i32 0, i32 3, i32 1)
  %551 = add i64 %544, %422
  %552 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %311
  store i64 %472, ptr %552, align 8, !tbaa.struct !88
  %553 = getelementptr inbounds i8, ptr %552, i64 8
  store i64 %422, ptr %553, align 8, !tbaa.struct !89
  %554 = getelementptr inbounds i8, ptr %552, i64 16
  store i64 %407, ptr %554, align 8, !tbaa.struct !90
  %555 = add nuw nsw i64 %311, 1
  %556 = icmp eq i64 %555, %291
  br i1 %556, label %292, label %309, !llvm.loop !91

557:                                              ; preds = %1531, %298
  %558 = phi ptr [ %1, %298 ], [ %1534, %1531 ]
  %559 = phi ptr [ %30, %298 ], [ %1533, %1531 ]
  %560 = phi i32 [ %296, %298 ], [ %1536, %1531 ]
  %561 = phi i64 [ %295, %298 ], [ %1535, %1531 ]
  %562 = icmp eq i32 %560, %299
  %563 = load ptr, ptr %185, align 8, !tbaa !92, !noalias !94
  %564 = load i64, ptr %138, align 8, !tbaa !97, !noalias !94
  %565 = load ptr, ptr %285, align 8, !tbaa !98, !noalias !94
  %566 = load i64, ptr %236, align 8, !tbaa !99, !noalias !94
  %567 = load ptr, ptr %235, align 8, !tbaa !100, !noalias !94
  %568 = load i64, ptr %186, align 8, !tbaa !101, !noalias !94
  %569 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %565, i64 %566, i32 3
  %570 = load i32, ptr %569, align 4, !tbaa !41, !noalias !94
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %563, i64 %564, i32 3
  %573 = load i32, ptr %572, align 4, !tbaa !41, !noalias !94
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %567, i64 %568, i32 3
  %576 = load i32, ptr %575, align 4, !tbaa !41, !noalias !94
  %577 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %563, i64 %564, i32 1
  %578 = load i8, ptr %577, align 2, !tbaa !58, !noalias !94
  %579 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %565, i64 %566, i32 1
  %580 = load i8, ptr %579, align 2, !tbaa !58, !noalias !94
  %581 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %567, i64 %568, i32 1
  %582 = load i8, ptr %581, align 2, !tbaa !58, !noalias !94
  %583 = zext i8 %578 to i32
  %584 = zext i8 %580 to i32
  %585 = add i8 %580, %578
  %586 = add i8 %585, %582
  %587 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %567, i64 %568
  %588 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %565, i64 %566
  %589 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %563, i64 %564
  %590 = load i16, ptr %589, align 4, !tbaa !57, !noalias !94
  %591 = load i16, ptr %588, align 4, !tbaa !57, !noalias !94
  %592 = load i16, ptr %587, align 4, !tbaa !57, !noalias !94
  %593 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %563, i64 %564, i32 2
  %594 = load i8, ptr %593, align 1, !tbaa !56, !noalias !94
  %595 = zext i8 %594 to i32
  %596 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %565, i64 %566, i32 2
  %597 = load i8, ptr %596, align 1, !tbaa !56, !noalias !94
  %598 = zext i8 %597 to i32
  %599 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %567, i64 %568, i32 2
  %600 = load i8, ptr %599, align 1, !tbaa !56, !noalias !94
  %601 = zext i8 %600 to i32
  %602 = icmp ugt i8 %582, 1
  br i1 %602, label %603, label %618

603:                                              ; preds = %557
  %604 = zext i8 %582 to i32
  %605 = load i64, ptr %9, align 8, !tbaa !76, !noalias !94
  %606 = load i32, ptr %142, align 8, !tbaa !80, !noalias !94
  %607 = and i32 %606, 63
  %608 = zext nneg i32 %607 to i64
  %609 = shl i64 %605, %608
  %610 = sub nsw i32 0, %604
  %611 = and i32 %610, 63
  %612 = zext nneg i32 %611 to i64
  %613 = lshr i64 %609, %612
  %614 = add i32 %606, %604
  store i32 %614, ptr %142, align 8, !tbaa !80, !noalias !94
  %615 = zext i32 %576 to i64
  %616 = add i64 %613, %615
  %617 = load i64, ptr %48, align 8, !tbaa !44, !noalias !94
  store i64 %617, ptr %52, align 8, !tbaa !44, !noalias !94
  br label %657

618:                                              ; preds = %557
  %619 = icmp eq i32 %573, 0
  %620 = icmp eq i8 %582, 0
  br i1 %620, label %621, label %628, !prof !87

621:                                              ; preds = %618
  %622 = zext i1 %619 to i64
  %623 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %622
  %624 = load i64, ptr %623, align 8, !tbaa !44, !noalias !94
  %625 = xor i1 %619, true
  %626 = zext i1 %625 to i64
  %627 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %626
  br label %657

628:                                              ; preds = %618
  %629 = zext i1 %619 to i32
  %630 = add i32 %576, %629
  %631 = zext i32 %630 to i64
  %632 = load i64, ptr %9, align 8, !tbaa !76, !noalias !94
  %633 = load i32, ptr %142, align 8, !tbaa !80, !noalias !94
  %634 = and i32 %633, 63
  %635 = zext nneg i32 %634 to i64
  %636 = shl i64 %632, %635
  %637 = lshr i64 %636, 63
  %638 = add i32 %633, 1
  store i32 %638, ptr %142, align 8, !tbaa !80, !noalias !94
  %639 = add nuw nsw i64 %637, %631
  %640 = icmp eq i64 %639, 3
  br i1 %640, label %641, label %647

641:                                              ; preds = %628
  %642 = load i64, ptr %44, align 8, !tbaa !44, !noalias !94
  %643 = add i64 %642, -1
  %644 = icmp eq i64 %643, 0
  %645 = sext i1 %644 to i64
  %646 = add i64 %643, %645
  br label %654

647:                                              ; preds = %628
  %648 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %639
  %649 = load i64, ptr %648, align 8, !tbaa !44, !noalias !94
  %650 = icmp eq i64 %649, 0
  %651 = sext i1 %650 to i64
  %652 = add i64 %649, %651
  %653 = icmp eq i64 %639, 1
  br i1 %653, label %657, label %654

654:                                              ; preds = %647, %641
  %655 = phi i64 [ %646, %641 ], [ %652, %647 ]
  %656 = load i64, ptr %48, align 8, !tbaa !44, !noalias !94
  store i64 %656, ptr %52, align 8, !tbaa !44, !noalias !94
  br label %657

657:                                              ; preds = %654, %647, %621, %603
  %658 = phi ptr [ %627, %621 ], [ %44, %603 ], [ %44, %654 ], [ %44, %647 ]
  %659 = phi i64 [ %624, %621 ], [ %616, %603 ], [ %655, %654 ], [ %652, %647 ]
  %660 = load i64, ptr %658, align 8, !tbaa !44, !noalias !94
  store i64 %660, ptr %48, align 8, !tbaa !44, !noalias !94
  store i64 %659, ptr %44, align 8, !tbaa !44, !noalias !94
  %661 = icmp eq i8 %580, 0
  br i1 %661, label %674, label %662

662:                                              ; preds = %657
  %663 = load i64, ptr %9, align 8, !tbaa !76, !noalias !94
  %664 = load i32, ptr %142, align 8, !tbaa !80, !noalias !94
  %665 = and i32 %664, 63
  %666 = zext nneg i32 %665 to i64
  %667 = shl i64 %663, %666
  %668 = sub nsw i32 0, %584
  %669 = and i32 %668, 63
  %670 = zext nneg i32 %669 to i64
  %671 = lshr i64 %667, %670
  %672 = add i32 %664, %584
  store i32 %672, ptr %142, align 8, !tbaa !80, !noalias !94
  %673 = add i64 %671, %571
  br label %674

674:                                              ; preds = %662, %657
  %675 = phi i64 [ %571, %657 ], [ %673, %662 ]
  %676 = icmp ugt i8 %586, 30
  br i1 %676, label %677, label %712, !prof !51

677:                                              ; preds = %674
  %678 = load i32, ptr %142, align 8, !tbaa !80, !noalias !94
  %679 = icmp ugt i32 %678, 64
  br i1 %679, label %680, label %681, !prof !51

680:                                              ; preds = %677
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75, !noalias !94
  br label %712

681:                                              ; preds = %677
  %682 = load ptr, ptr %153, align 8, !tbaa !75, !noalias !94
  %683 = load ptr, ptr %60, align 8, !tbaa !74, !noalias !94
  %684 = icmp ult ptr %682, %683
  br i1 %684, label %692, label %685

685:                                              ; preds = %681
  %686 = lshr i32 %678, 3
  %687 = zext nneg i32 %686 to i64
  %688 = sub nsw i64 0, %687
  %689 = getelementptr inbounds i8, ptr %682, i64 %688
  store ptr %689, ptr %153, align 8, !tbaa !75, !noalias !94
  %690 = and i32 %678, 7
  store i32 %690, ptr %142, align 8, !tbaa !80, !noalias !94
  %691 = load i64, ptr %689, align 1, !tbaa !44, !noalias !94
  store i64 %691, ptr %9, align 8, !tbaa !76, !noalias !94
  br label %712

692:                                              ; preds = %681
  %693 = load ptr, ptr %58, align 8, !tbaa !72, !noalias !94
  %694 = icmp eq ptr %682, %693
  br i1 %694, label %712, label %695

695:                                              ; preds = %692
  %696 = lshr i32 %678, 3
  %697 = zext nneg i32 %696 to i64
  %698 = sub nsw i64 0, %697
  %699 = getelementptr inbounds i8, ptr %682, i64 %698
  %700 = icmp ult ptr %699, %693
  %701 = ptrtoint ptr %682 to i64
  %702 = ptrtoint ptr %693 to i64
  %703 = sub i64 %701, %702
  %704 = trunc i64 %703 to i32
  %705 = select i1 %700, i32 %704, i32 %696
  %706 = zext i32 %705 to i64
  %707 = sub nsw i64 0, %706
  %708 = getelementptr inbounds i8, ptr %682, i64 %707
  store ptr %708, ptr %153, align 8, !tbaa !75, !noalias !94
  %709 = shl i32 %705, 3
  %710 = sub i32 %678, %709
  store i32 %710, ptr %142, align 8, !tbaa !80, !noalias !94
  %711 = load i64, ptr %708, align 1, !tbaa !44, !noalias !94
  store i64 %711, ptr %9, align 8, !tbaa !76, !noalias !94
  br label %712

712:                                              ; preds = %695, %692, %685, %680, %674
  %713 = icmp eq i8 %578, 0
  br i1 %713, label %726, label %714

714:                                              ; preds = %712
  %715 = load i64, ptr %9, align 8, !tbaa !76, !noalias !94
  %716 = load i32, ptr %142, align 8, !tbaa !80, !noalias !94
  %717 = and i32 %716, 63
  %718 = zext nneg i32 %717 to i64
  %719 = shl i64 %715, %718
  %720 = sub nsw i32 0, %583
  %721 = and i32 %720, 63
  %722 = zext nneg i32 %721 to i64
  %723 = lshr i64 %719, %722
  %724 = add i32 %716, %583
  store i32 %724, ptr %142, align 8, !tbaa !80, !noalias !94
  %725 = add i64 %723, %574
  br label %726

726:                                              ; preds = %714, %712
  %727 = phi i64 [ %574, %712 ], [ %725, %714 ]
  br i1 %562, label %797, label %728

728:                                              ; preds = %726
  %729 = load i64, ptr %9, align 8, !tbaa !76, !noalias !94
  %730 = load i32, ptr %142, align 8, !tbaa !80, !noalias !94
  %731 = add i32 %730, %595
  %732 = sub i32 0, %731
  %733 = and i32 %732, 63
  %734 = zext nneg i32 %733 to i64
  %735 = lshr i64 %729, %734
  %736 = zext nneg i8 %594 to i64
  %737 = shl nsw i64 -1, %736
  %738 = xor i64 %737, -1
  %739 = and i64 %735, %738
  %740 = zext i16 %590 to i64
  %741 = add nuw i64 %739, %740
  store i64 %741, ptr %138, align 8, !tbaa !78, !noalias !94
  %742 = add i32 %731, %598
  %743 = sub i32 0, %742
  %744 = and i32 %743, 63
  %745 = zext nneg i32 %744 to i64
  %746 = lshr i64 %729, %745
  %747 = zext nneg i8 %597 to i64
  %748 = shl nsw i64 -1, %747
  %749 = xor i64 %748, -1
  %750 = and i64 %746, %749
  %751 = zext i16 %591 to i64
  %752 = add nuw i64 %750, %751
  store i64 %752, ptr %236, align 8, !tbaa !78, !noalias !94
  %753 = add i32 %742, %601
  %754 = sub i32 0, %753
  %755 = and i32 %754, 63
  %756 = zext nneg i32 %755 to i64
  %757 = lshr i64 %729, %756
  %758 = zext nneg i8 %600 to i64
  %759 = shl nsw i64 -1, %758
  %760 = xor i64 %759, -1
  %761 = and i64 %757, %760
  store i32 %753, ptr %142, align 8, !tbaa !80, !noalias !94
  %762 = zext i16 %592 to i64
  %763 = add nuw i64 %761, %762
  store i64 %763, ptr %186, align 8, !tbaa !78, !noalias !94
  %764 = icmp ugt i32 %753, 64
  br i1 %764, label %765, label %766, !prof !51

765:                                              ; preds = %728
  store ptr @BIT_reloadDStream.zeroFilled, ptr %153, align 8, !tbaa !75, !noalias !94
  br label %797

766:                                              ; preds = %728
  %767 = load ptr, ptr %153, align 8, !tbaa !75, !noalias !94
  %768 = load ptr, ptr %60, align 8, !tbaa !74, !noalias !94
  %769 = icmp ult ptr %767, %768
  br i1 %769, label %777, label %770

770:                                              ; preds = %766
  %771 = lshr i32 %753, 3
  %772 = zext nneg i32 %771 to i64
  %773 = sub nsw i64 0, %772
  %774 = getelementptr inbounds i8, ptr %767, i64 %773
  store ptr %774, ptr %153, align 8, !tbaa !75, !noalias !94
  %775 = and i32 %753, 7
  store i32 %775, ptr %142, align 8, !tbaa !80, !noalias !94
  %776 = load i64, ptr %774, align 1, !tbaa !44, !noalias !94
  store i64 %776, ptr %9, align 8, !tbaa !76, !noalias !94
  br label %797

777:                                              ; preds = %766
  %778 = load ptr, ptr %58, align 8, !tbaa !72, !noalias !94
  %779 = icmp eq ptr %767, %778
  br i1 %779, label %797, label %780

780:                                              ; preds = %777
  %781 = lshr i32 %753, 3
  %782 = zext nneg i32 %781 to i64
  %783 = sub nsw i64 0, %782
  %784 = getelementptr inbounds i8, ptr %767, i64 %783
  %785 = icmp ult ptr %784, %778
  %786 = ptrtoint ptr %767 to i64
  %787 = ptrtoint ptr %778 to i64
  %788 = sub i64 %786, %787
  %789 = trunc i64 %788 to i32
  %790 = select i1 %785, i32 %789, i32 %781
  %791 = zext i32 %790 to i64
  %792 = sub nsw i64 0, %791
  %793 = getelementptr inbounds i8, ptr %767, i64 %792
  store ptr %793, ptr %153, align 8, !tbaa !75, !noalias !94
  %794 = shl i32 %790, 3
  %795 = sub i32 %753, %794
  store i32 %795, ptr %142, align 8, !tbaa !80, !noalias !94
  %796 = load i64, ptr %793, align 1, !tbaa !44, !noalias !94
  store i64 %796, ptr %9, align 8, !tbaa !76, !noalias !94
  br label %797

797:                                              ; preds = %780, %777, %770, %765, %726
  %798 = load i32, ptr %16, align 8, !tbaa !32
  %799 = icmp eq i32 %798, 2
  br i1 %799, label %800, label %1333

800:                                              ; preds = %797
  %801 = load ptr, ptr %7, align 8, !tbaa !38
  %802 = and i32 %560, 7
  %803 = zext nneg i32 %802 to i64
  %804 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %803
  %805 = load i64, ptr %804, align 8
  %806 = getelementptr inbounds i8, ptr %801, i64 %805
  %807 = load ptr, ptr %29, align 8, !tbaa !37
  %808 = icmp ugt ptr %806, %807
  br i1 %808, label %809, label %1157

809:                                              ; preds = %800
  %810 = ptrtoint ptr %807 to i64
  %811 = ptrtoint ptr %801 to i64
  %812 = sub i64 %810, %811
  %813 = icmp eq ptr %807, %801
  br i1 %813, label %968, label %814

814:                                              ; preds = %809
  %815 = ptrtoint ptr %558 to i64
  %816 = sub i64 %302, %815
  %817 = icmp ugt i64 %812, %816
  br i1 %817, label %2295, label %818

818:                                              ; preds = %814
  %819 = sub i64 %815, %811
  %820 = getelementptr inbounds i8, ptr %558, i64 %812
  %821 = icmp ult i64 %812, 8
  %822 = icmp sgt i64 %819, -8
  %823 = or i1 %822, %821
  br i1 %823, label %824, label %880

824:                                              ; preds = %818
  %825 = icmp sgt i64 %812, 0
  br i1 %825, label %826, label %965

826:                                              ; preds = %824
  %827 = add i64 %815, %810
  %828 = sub i64 %827, %811
  %829 = add i64 %815, 1
  %830 = tail call i64 @llvm.umax.i64(i64 %828, i64 %829)
  %831 = sub i64 %830, %815
  %832 = icmp ult i64 %831, 8
  %833 = icmp ult i64 %819, 32
  %834 = or i1 %832, %833
  br i1 %834, label %870, label %835

835:                                              ; preds = %826
  %836 = icmp ult i64 %831, 32
  br i1 %836, label %856, label %837

837:                                              ; preds = %835
  %838 = and i64 %831, -32
  br label %839

839:                                              ; preds = %839, %837
  %840 = phi i64 [ 0, %837 ], [ %847, %839 ]
  %841 = getelementptr i8, ptr %558, i64 %840
  %842 = getelementptr i8, ptr %801, i64 %840
  %843 = getelementptr i8, ptr %842, i64 16
  %844 = load <16 x i8>, ptr %842, align 1, !tbaa !9
  %845 = load <16 x i8>, ptr %843, align 1, !tbaa !9
  %846 = getelementptr i8, ptr %841, i64 16
  store <16 x i8> %844, ptr %841, align 1, !tbaa !9
  store <16 x i8> %845, ptr %846, align 1, !tbaa !9
  %847 = add nuw i64 %840, 32
  %848 = icmp eq i64 %847, %838
  br i1 %848, label %849, label %839, !llvm.loop !102

849:                                              ; preds = %839
  %850 = icmp eq i64 %831, %838
  br i1 %850, label %965, label %851

851:                                              ; preds = %849
  %852 = getelementptr i8, ptr %801, i64 %838
  %853 = getelementptr i8, ptr %558, i64 %838
  %854 = and i64 %831, 24
  %855 = icmp eq i64 %854, 0
  br i1 %855, label %870, label %856

856:                                              ; preds = %835, %851
  %857 = phi i64 [ %838, %851 ], [ 0, %835 ]
  %858 = and i64 %831, -8
  %859 = getelementptr i8, ptr %558, i64 %858
  %860 = getelementptr i8, ptr %801, i64 %858
  br label %861

861:                                              ; preds = %861, %856
  %862 = phi i64 [ %857, %856 ], [ %866, %861 ]
  %863 = getelementptr i8, ptr %558, i64 %862
  %864 = getelementptr i8, ptr %801, i64 %862
  %865 = load <8 x i8>, ptr %864, align 1, !tbaa !9
  store <8 x i8> %865, ptr %863, align 1, !tbaa !9
  %866 = add nuw i64 %862, 8
  %867 = icmp eq i64 %866, %858
  br i1 %867, label %868, label %861, !llvm.loop !103

868:                                              ; preds = %861
  %869 = icmp eq i64 %831, %858
  br i1 %869, label %965, label %870

870:                                              ; preds = %826, %851, %868
  %871 = phi ptr [ %558, %826 ], [ %853, %851 ], [ %859, %868 ]
  %872 = phi ptr [ %801, %826 ], [ %852, %851 ], [ %860, %868 ]
  br label %873

873:                                              ; preds = %870, %873
  %874 = phi ptr [ %878, %873 ], [ %871, %870 ]
  %875 = phi ptr [ %876, %873 ], [ %872, %870 ]
  %876 = getelementptr inbounds i8, ptr %875, i64 1
  %877 = load i8, ptr %875, align 1, !tbaa !9
  %878 = getelementptr inbounds i8, ptr %874, i64 1
  store i8 %877, ptr %874, align 1, !tbaa !9
  %879 = icmp ult ptr %878, %820
  br i1 %879, label %873, label %965, !llvm.loop !104

880:                                              ; preds = %818
  %881 = getelementptr inbounds i8, ptr %820, i64 -32
  %882 = icmp uge ptr %881, %558
  %883 = icmp ult i64 %819, -16
  %884 = and i1 %883, %882
  br i1 %884, label %885, label %904

885:                                              ; preds = %880
  %886 = ptrtoint ptr %881 to i64
  %887 = sub i64 %886, %815
  %888 = load <2 x i64>, ptr %801, align 1, !tbaa !9
  store <2 x i64> %888, ptr %558, align 1, !tbaa !9
  %889 = icmp ult i64 %887, 17
  br i1 %889, label %902, label %890

890:                                              ; preds = %885
  %891 = getelementptr inbounds i8, ptr %558, i64 16
  br label %892

892:                                              ; preds = %892, %890
  %893 = phi ptr [ %891, %890 ], [ %900, %892 ]
  %894 = phi ptr [ %801, %890 ], [ %898, %892 ]
  %895 = getelementptr inbounds i8, ptr %894, i64 16
  %896 = load <2 x i64>, ptr %895, align 1, !tbaa !9
  store <2 x i64> %896, ptr %893, align 1, !tbaa !9
  %897 = getelementptr inbounds i8, ptr %893, i64 16
  %898 = getelementptr inbounds i8, ptr %894, i64 32
  %899 = load <2 x i64>, ptr %898, align 1, !tbaa !9
  store <2 x i64> %899, ptr %897, align 1, !tbaa !9
  %900 = getelementptr inbounds i8, ptr %893, i64 32
  %901 = icmp ult ptr %900, %881
  br i1 %901, label %892, label %902, !llvm.loop !105

902:                                              ; preds = %892, %885
  %903 = getelementptr inbounds i8, ptr %801, i64 %887
  br label %906

904:                                              ; preds = %880
  %905 = icmp sgt i64 %812, 0
  br i1 %905, label %906, label %965

906:                                              ; preds = %904, %902
  %907 = phi ptr [ %881, %902 ], [ %558, %904 ]
  %908 = phi ptr [ %903, %902 ], [ %801, %904 ]
  %909 = ptrtoint ptr %907 to i64
  %910 = add i64 %815, %810
  %911 = sub i64 %910, %811
  %912 = add nuw i64 %909, 1
  %913 = tail call i64 @llvm.umax.i64(i64 %911, i64 %912)
  %914 = sub i64 %913, %909
  %915 = icmp ult i64 %914, 8
  %916 = ptrtoint ptr %908 to i64
  %917 = sub i64 %909, %916
  %918 = icmp ult i64 %917, 32
  %919 = select i1 %915, i1 true, i1 %918
  br i1 %919, label %955, label %920

920:                                              ; preds = %906
  %921 = icmp ult i64 %914, 32
  br i1 %921, label %941, label %922

922:                                              ; preds = %920
  %923 = and i64 %914, -32
  br label %924

924:                                              ; preds = %924, %922
  %925 = phi i64 [ 0, %922 ], [ %932, %924 ]
  %926 = getelementptr i8, ptr %907, i64 %925
  %927 = getelementptr i8, ptr %908, i64 %925
  %928 = getelementptr i8, ptr %927, i64 16
  %929 = load <16 x i8>, ptr %927, align 1, !tbaa !9
  %930 = load <16 x i8>, ptr %928, align 1, !tbaa !9
  %931 = getelementptr i8, ptr %926, i64 16
  store <16 x i8> %929, ptr %926, align 1, !tbaa !9
  store <16 x i8> %930, ptr %931, align 1, !tbaa !9
  %932 = add nuw i64 %925, 32
  %933 = icmp eq i64 %932, %923
  br i1 %933, label %934, label %924, !llvm.loop !106

934:                                              ; preds = %924
  %935 = icmp eq i64 %914, %923
  br i1 %935, label %965, label %936

936:                                              ; preds = %934
  %937 = getelementptr i8, ptr %908, i64 %923
  %938 = getelementptr i8, ptr %907, i64 %923
  %939 = and i64 %914, 24
  %940 = icmp eq i64 %939, 0
  br i1 %940, label %955, label %941

941:                                              ; preds = %920, %936
  %942 = phi i64 [ %923, %936 ], [ 0, %920 ]
  %943 = and i64 %914, -8
  %944 = getelementptr i8, ptr %907, i64 %943
  %945 = getelementptr i8, ptr %908, i64 %943
  br label %946

946:                                              ; preds = %946, %941
  %947 = phi i64 [ %942, %941 ], [ %951, %946 ]
  %948 = getelementptr i8, ptr %907, i64 %947
  %949 = getelementptr i8, ptr %908, i64 %947
  %950 = load <8 x i8>, ptr %949, align 1, !tbaa !9
  store <8 x i8> %950, ptr %948, align 1, !tbaa !9
  %951 = add nuw i64 %947, 8
  %952 = icmp eq i64 %951, %943
  br i1 %952, label %953, label %946, !llvm.loop !107

953:                                              ; preds = %946
  %954 = icmp eq i64 %914, %943
  br i1 %954, label %965, label %955

955:                                              ; preds = %906, %936, %953
  %956 = phi ptr [ %907, %906 ], [ %938, %936 ], [ %944, %953 ]
  %957 = phi ptr [ %908, %906 ], [ %937, %936 ], [ %945, %953 ]
  br label %958

958:                                              ; preds = %955, %958
  %959 = phi ptr [ %963, %958 ], [ %956, %955 ]
  %960 = phi ptr [ %961, %958 ], [ %957, %955 ]
  %961 = getelementptr inbounds i8, ptr %960, i64 1
  %962 = load i8, ptr %960, align 1, !tbaa !9
  %963 = getelementptr inbounds i8, ptr %959, i64 1
  store i8 %962, ptr %959, align 1, !tbaa !9
  %964 = icmp ult ptr %963, %820
  br i1 %964, label %958, label %965, !llvm.loop !108

965:                                              ; preds = %958, %873, %934, %953, %849, %868, %904, %824
  %966 = load i64, ptr %804, align 8, !tbaa !109
  %967 = sub i64 %966, %812
  store i64 %967, ptr %804, align 8, !tbaa !109
  br label %968

968:                                              ; preds = %809, %965
  %969 = phi i64 [ %967, %965 ], [ %805, %809 ]
  %970 = phi ptr [ %820, %965 ], [ %558, %809 ]
  store ptr %303, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %16, align 8, !tbaa !32
  %971 = getelementptr inbounds i8, ptr %804, i64 8
  %972 = load i64, ptr %971, align 8
  %973 = getelementptr inbounds i8, ptr %804, i64 16
  %974 = load i64, ptr %973, align 8
  %975 = getelementptr i8, ptr %970, i64 %969
  %976 = add i64 %972, %969
  %977 = getelementptr i8, ptr %303, i64 %969
  %978 = sub i64 0, %974
  %979 = getelementptr inbounds i8, ptr %975, i64 %978
  %980 = icmp sgt i64 %969, 65536
  %981 = getelementptr inbounds i8, ptr %970, i64 %976
  %982 = icmp ugt ptr %981, %300
  %983 = select i1 %980, i1 true, i1 %982
  br i1 %983, label %987, label %984, !prof !111

984:                                              ; preds = %968
  %985 = load <2 x i64>, ptr %303, align 1, !tbaa !9
  store <2 x i64> %985, ptr %970, align 1, !tbaa !9
  %986 = icmp ugt i64 %969, 16
  br i1 %986, label %989, label %1006, !prof !51

987:                                              ; preds = %968
  %988 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %970, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %804, ptr noundef nonnull %7, ptr noundef nonnull %304, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1145

989:                                              ; preds = %984
  %990 = getelementptr inbounds i8, ptr %970, i64 16
  %991 = add i64 %969, -16
  %992 = load <2 x i64>, ptr %305, align 1, !tbaa !9
  store <2 x i64> %992, ptr %990, align 1, !tbaa !9
  %993 = icmp ult i64 %991, 17
  br i1 %993, label %1006, label %994

994:                                              ; preds = %989
  %995 = getelementptr inbounds i8, ptr %970, i64 32
  br label %996

996:                                              ; preds = %996, %994
  %997 = phi ptr [ %995, %994 ], [ %1004, %996 ]
  %998 = phi ptr [ %305, %994 ], [ %1002, %996 ]
  %999 = getelementptr inbounds i8, ptr %998, i64 16
  %1000 = load <2 x i64>, ptr %999, align 1, !tbaa !9
  store <2 x i64> %1000, ptr %997, align 1, !tbaa !9
  %1001 = getelementptr inbounds i8, ptr %997, i64 16
  %1002 = getelementptr inbounds i8, ptr %998, i64 32
  %1003 = load <2 x i64>, ptr %1002, align 1, !tbaa !9
  store <2 x i64> %1003, ptr %1001, align 1, !tbaa !9
  %1004 = getelementptr inbounds i8, ptr %997, i64 32
  %1005 = icmp ult ptr %1004, %975
  br i1 %1005, label %996, label %1006, !llvm.loop !105

1006:                                             ; preds = %996, %989, %984
  store ptr %977, ptr %7, align 8, !tbaa !38
  %1007 = ptrtoint ptr %975 to i64
  %1008 = sub i64 %1007, %39
  %1009 = icmp ugt i64 %974, %1008
  br i1 %1009, label %1010, label %1024

1010:                                             ; preds = %1006
  %1011 = sub i64 %1007, %301
  %1012 = icmp ugt i64 %974, %1011
  br i1 %1012, label %2295, label %1013, !prof !51

1013:                                             ; preds = %1010
  %1014 = ptrtoint ptr %979 to i64
  %1015 = sub i64 %1014, %39
  %1016 = getelementptr inbounds i8, ptr %36, i64 %1015
  %1017 = getelementptr inbounds i8, ptr %1016, i64 %972
  %1018 = icmp ugt ptr %1017, %36
  br i1 %1018, label %1020, label %1019

1019:                                             ; preds = %1013
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %975, ptr align 1 %1016, i64 %972, i1 false)
  br label %1145

1020:                                             ; preds = %1013
  %1021 = sub i64 0, %1015
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %975, ptr align 1 %1016, i64 %1021, i1 false)
  %1022 = getelementptr i8, ptr %975, i64 %1021
  %1023 = add i64 %1015, %972
  br label %1024

1024:                                             ; preds = %1020, %1006
  %1025 = phi i64 [ %1023, %1020 ], [ %972, %1006 ]
  %1026 = phi ptr [ %32, %1020 ], [ %979, %1006 ]
  %1027 = phi ptr [ %1022, %1020 ], [ %975, %1006 ]
  %1028 = icmp ugt i64 %974, 15
  br i1 %1028, label %1029, label %1045, !prof !87

1029:                                             ; preds = %1024
  %1030 = getelementptr inbounds i8, ptr %1027, i64 %1025
  %1031 = load <2 x i64>, ptr %1026, align 1, !tbaa !9
  store <2 x i64> %1031, ptr %1027, align 1, !tbaa !9
  %1032 = icmp ult i64 %1025, 17
  br i1 %1032, label %1145, label %1033

1033:                                             ; preds = %1029
  %1034 = getelementptr inbounds i8, ptr %1027, i64 16
  br label %1035

1035:                                             ; preds = %1035, %1033
  %1036 = phi ptr [ %1034, %1033 ], [ %1043, %1035 ]
  %1037 = phi ptr [ %1026, %1033 ], [ %1041, %1035 ]
  %1038 = getelementptr inbounds i8, ptr %1037, i64 16
  %1039 = load <2 x i64>, ptr %1038, align 1, !tbaa !9
  store <2 x i64> %1039, ptr %1036, align 1, !tbaa !9
  %1040 = getelementptr inbounds i8, ptr %1036, i64 16
  %1041 = getelementptr inbounds i8, ptr %1037, i64 32
  %1042 = load <2 x i64>, ptr %1041, align 1, !tbaa !9
  store <2 x i64> %1042, ptr %1040, align 1, !tbaa !9
  %1043 = getelementptr inbounds i8, ptr %1036, i64 32
  %1044 = icmp ult ptr %1043, %1030
  br i1 %1044, label %1035, label %1145, !llvm.loop !105

1045:                                             ; preds = %1024
  %1046 = icmp ult i64 %974, 8
  br i1 %1046, label %1047, label %1069

1047:                                             ; preds = %1045
  %1048 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %974
  %1049 = load i32, ptr %1048, align 4, !tbaa !28
  %1050 = load i8, ptr %1026, align 1, !tbaa !9
  store i8 %1050, ptr %1027, align 1, !tbaa !9
  %1051 = getelementptr inbounds i8, ptr %1026, i64 1
  %1052 = load i8, ptr %1051, align 1, !tbaa !9
  %1053 = getelementptr inbounds i8, ptr %1027, i64 1
  store i8 %1052, ptr %1053, align 1, !tbaa !9
  %1054 = getelementptr inbounds i8, ptr %1026, i64 2
  %1055 = load i8, ptr %1054, align 1, !tbaa !9
  %1056 = getelementptr inbounds i8, ptr %1027, i64 2
  store i8 %1055, ptr %1056, align 1, !tbaa !9
  %1057 = getelementptr inbounds i8, ptr %1026, i64 3
  %1058 = load i8, ptr %1057, align 1, !tbaa !9
  %1059 = getelementptr inbounds i8, ptr %1027, i64 3
  store i8 %1058, ptr %1059, align 1, !tbaa !9
  %1060 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %974
  %1061 = load i32, ptr %1060, align 4, !tbaa !28
  %1062 = zext i32 %1061 to i64
  %1063 = getelementptr inbounds i8, ptr %1026, i64 %1062
  %1064 = getelementptr inbounds i8, ptr %1027, i64 4
  %1065 = load i32, ptr %1063, align 1
  store i32 %1065, ptr %1064, align 1
  %1066 = sext i32 %1049 to i64
  %1067 = sub nsw i64 0, %1066
  %1068 = getelementptr inbounds i8, ptr %1063, i64 %1067
  br label %1071

1069:                                             ; preds = %1045
  %1070 = load i64, ptr %1026, align 1
  store i64 %1070, ptr %1027, align 1
  br label %1071

1071:                                             ; preds = %1069, %1047
  %1072 = phi ptr [ %1068, %1047 ], [ %1026, %1069 ]
  %1073 = getelementptr i8, ptr %1072, i64 8
  %1074 = getelementptr i8, ptr %1027, i64 8
  %1075 = icmp ugt i64 %1025, 8
  br i1 %1075, label %1076, label %1145

1076:                                             ; preds = %1071
  %1077 = ptrtoint ptr %1074 to i64
  %1078 = ptrtoint ptr %1073 to i64
  %1079 = sub i64 %1077, %1078
  %1080 = getelementptr inbounds i8, ptr %1027, i64 %1025
  %1081 = icmp slt i64 %1079, 16
  br i1 %1081, label %1082, label %1129

1082:                                             ; preds = %1076
  %1083 = add i64 %972, %39
  %1084 = tail call i64 @llvm.umin.i64(i64 %974, i64 %1008)
  %1085 = add i64 %1083, %1084
  %1086 = tail call i64 @llvm.umax.i64(i64 %974, i64 %1008)
  %1087 = add i64 %1085, %1086
  %1088 = sub i64 %1087, %974
  %1089 = add i64 %306, %1086
  %1090 = tail call i64 @llvm.umax.i64(i64 %1088, i64 %1089)
  %1091 = add i64 %1090, -9
  %1092 = add i64 %1086, %39
  %1093 = sub i64 %1091, %1092
  %1094 = lshr i64 %1093, 3
  %1095 = add nuw nsw i64 %1094, 1
  %1096 = icmp ult i64 %1093, 24
  %1097 = icmp ult i64 %1079, 32
  %1098 = or i1 %1096, %1097
  br i1 %1098, label %1119, label %1099

1099:                                             ; preds = %1082
  %1100 = and i64 %1095, 4611686018427387900
  %1101 = shl i64 %1100, 3
  %1102 = getelementptr i8, ptr %1074, i64 %1101
  %1103 = shl i64 %1100, 3
  %1104 = getelementptr i8, ptr %1073, i64 %1103
  br label %1105

1105:                                             ; preds = %1105, %1099
  %1106 = phi i64 [ 0, %1099 ], [ %1115, %1105 ]
  %1107 = shl i64 %1106, 3
  %1108 = getelementptr i8, ptr %1074, i64 %1107
  %1109 = shl i64 %1106, 3
  %1110 = getelementptr i8, ptr %1073, i64 %1109
  %1111 = getelementptr i64, ptr %1110, i64 2
  %1112 = load <2 x i64>, ptr %1110, align 1
  %1113 = load <2 x i64>, ptr %1111, align 1
  %1114 = getelementptr i64, ptr %1108, i64 2
  store <2 x i64> %1112, ptr %1108, align 1
  store <2 x i64> %1113, ptr %1114, align 1
  %1115 = add nuw i64 %1106, 4
  %1116 = icmp eq i64 %1115, %1100
  br i1 %1116, label %1117, label %1105, !llvm.loop !112

1117:                                             ; preds = %1105
  %1118 = icmp eq i64 %1095, %1100
  br i1 %1118, label %1145, label %1119

1119:                                             ; preds = %1082, %1117
  %1120 = phi ptr [ %1074, %1082 ], [ %1102, %1117 ]
  %1121 = phi ptr [ %1073, %1082 ], [ %1104, %1117 ]
  br label %1122

1122:                                             ; preds = %1119, %1122
  %1123 = phi ptr [ %1126, %1122 ], [ %1120, %1119 ]
  %1124 = phi ptr [ %1127, %1122 ], [ %1121, %1119 ]
  %1125 = load i64, ptr %1124, align 1
  store i64 %1125, ptr %1123, align 1
  %1126 = getelementptr inbounds i8, ptr %1123, i64 8
  %1127 = getelementptr inbounds i8, ptr %1124, i64 8
  %1128 = icmp ult ptr %1126, %1080
  br i1 %1128, label %1122, label %1145, !llvm.loop !113

1129:                                             ; preds = %1076
  %1130 = add i64 %1025, -8
  %1131 = load <2 x i64>, ptr %1073, align 1, !tbaa !9
  store <2 x i64> %1131, ptr %1074, align 1, !tbaa !9
  %1132 = icmp ult i64 %1130, 17
  br i1 %1132, label %1145, label %1133

1133:                                             ; preds = %1129
  %1134 = getelementptr inbounds i8, ptr %1027, i64 24
  br label %1135

1135:                                             ; preds = %1135, %1133
  %1136 = phi ptr [ %1134, %1133 ], [ %1143, %1135 ]
  %1137 = phi ptr [ %1073, %1133 ], [ %1141, %1135 ]
  %1138 = getelementptr inbounds i8, ptr %1137, i64 16
  %1139 = load <2 x i64>, ptr %1138, align 1, !tbaa !9
  store <2 x i64> %1139, ptr %1136, align 1, !tbaa !9
  %1140 = getelementptr inbounds i8, ptr %1136, i64 16
  %1141 = getelementptr inbounds i8, ptr %1137, i64 32
  %1142 = load <2 x i64>, ptr %1141, align 1, !tbaa !9
  store <2 x i64> %1142, ptr %1140, align 1, !tbaa !9
  %1143 = getelementptr inbounds i8, ptr %1136, i64 32
  %1144 = icmp ult ptr %1143, %1080
  br i1 %1144, label %1135, label %1145, !llvm.loop !105

1145:                                             ; preds = %1135, %1122, %1035, %1117, %1129, %1071, %1029, %1019, %987
  %1146 = phi i64 [ %988, %987 ], [ %976, %1019 ], [ %976, %1071 ], [ %976, %1029 ], [ %976, %1129 ], [ %976, %1117 ], [ %976, %1035 ], [ %976, %1122 ], [ %976, %1135 ]
  %1147 = icmp ult i64 %1146, -119
  br i1 %1147, label %1148, label %2295

1148:                                             ; preds = %1145
  %1149 = add i64 %727, %561
  %1150 = icmp ugt i64 %659, %1149
  %1151 = select i1 %1150, ptr %36, ptr %32
  %1152 = getelementptr inbounds i8, ptr %1151, i64 %1149
  %1153 = sub i64 0, %659
  %1154 = getelementptr inbounds i8, ptr %1152, i64 %1153
  tail call void @llvm.prefetch.p0(ptr %1154, i32 0, i32 3, i32 1)
  %1155 = getelementptr inbounds i8, ptr %1154, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1155, i32 0, i32 3, i32 1)
  store i64 %727, ptr %804, align 8, !tbaa.struct !88
  store i64 %675, ptr %971, align 8, !tbaa.struct !89
  store i64 %659, ptr %973, align 8, !tbaa.struct !90
  %1156 = getelementptr inbounds i8, ptr %970, i64 %1146
  br label %1531

1157:                                             ; preds = %800
  %1158 = getelementptr inbounds i8, ptr %806, i64 -32
  %1159 = getelementptr inbounds i8, ptr %804, i64 8
  %1160 = load i64, ptr %1159, align 8
  %1161 = getelementptr inbounds i8, ptr %804, i64 16
  %1162 = load i64, ptr %1161, align 8
  %1163 = getelementptr i8, ptr %558, i64 %805
  %1164 = add i64 %1160, %805
  %1165 = sub i64 0, %1162
  %1166 = getelementptr inbounds i8, ptr %1163, i64 %1165
  %1167 = icmp ugt ptr %806, %559
  %1168 = getelementptr inbounds i8, ptr %558, i64 %1164
  %1169 = icmp ugt ptr %1168, %1158
  %1170 = select i1 %1167, i1 true, i1 %1169
  br i1 %1170, label %1174, label %1171, !prof !111

1171:                                             ; preds = %1157
  %1172 = load <2 x i64>, ptr %801, align 1, !tbaa !9
  store <2 x i64> %1172, ptr %558, align 1, !tbaa !9
  %1173 = icmp ugt i64 %805, 16
  br i1 %1173, label %1176, label %1194, !prof !51

1174:                                             ; preds = %1157
  %1175 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %558, ptr noundef %26, ptr noundef nonnull %1158, ptr noundef nonnull byval(%struct.seq_t) align 8 %804, ptr noundef nonnull %7, ptr noundef %559, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1514

1176:                                             ; preds = %1171
  %1177 = getelementptr inbounds i8, ptr %558, i64 16
  %1178 = getelementptr inbounds i8, ptr %801, i64 16
  %1179 = add i64 %805, -16
  %1180 = load <2 x i64>, ptr %1178, align 1, !tbaa !9
  store <2 x i64> %1180, ptr %1177, align 1, !tbaa !9
  %1181 = icmp ult i64 %1179, 17
  br i1 %1181, label %1194, label %1182

1182:                                             ; preds = %1176
  %1183 = getelementptr inbounds i8, ptr %558, i64 32
  br label %1184

1184:                                             ; preds = %1184, %1182
  %1185 = phi ptr [ %1183, %1182 ], [ %1192, %1184 ]
  %1186 = phi ptr [ %1178, %1182 ], [ %1190, %1184 ]
  %1187 = getelementptr inbounds i8, ptr %1186, i64 16
  %1188 = load <2 x i64>, ptr %1187, align 1, !tbaa !9
  store <2 x i64> %1188, ptr %1185, align 1, !tbaa !9
  %1189 = getelementptr inbounds i8, ptr %1185, i64 16
  %1190 = getelementptr inbounds i8, ptr %1186, i64 32
  %1191 = load <2 x i64>, ptr %1190, align 1, !tbaa !9
  store <2 x i64> %1191, ptr %1189, align 1, !tbaa !9
  %1192 = getelementptr inbounds i8, ptr %1185, i64 32
  %1193 = icmp ult ptr %1192, %1163
  br i1 %1193, label %1184, label %1194, !llvm.loop !105

1194:                                             ; preds = %1184, %1176, %1171
  store ptr %806, ptr %7, align 8, !tbaa !38
  %1195 = ptrtoint ptr %1163 to i64
  %1196 = sub i64 %1195, %39
  %1197 = icmp ugt i64 %1162, %1196
  br i1 %1197, label %1198, label %1212

1198:                                             ; preds = %1194
  %1199 = sub i64 %1195, %301
  %1200 = icmp ugt i64 %1162, %1199
  br i1 %1200, label %2295, label %1201, !prof !51

1201:                                             ; preds = %1198
  %1202 = ptrtoint ptr %1166 to i64
  %1203 = sub i64 %1202, %39
  %1204 = getelementptr inbounds i8, ptr %36, i64 %1203
  %1205 = getelementptr inbounds i8, ptr %1204, i64 %1160
  %1206 = icmp ugt ptr %1205, %36
  br i1 %1206, label %1208, label %1207

1207:                                             ; preds = %1201
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1163, ptr align 1 %1204, i64 %1160, i1 false)
  br label %1514

1208:                                             ; preds = %1201
  %1209 = sub i64 0, %1203
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1163, ptr align 1 %1204, i64 %1209, i1 false)
  %1210 = getelementptr i8, ptr %1163, i64 %1209
  %1211 = add i64 %1203, %1160
  br label %1212

1212:                                             ; preds = %1208, %1194
  %1213 = phi i64 [ %1211, %1208 ], [ %1160, %1194 ]
  %1214 = phi ptr [ %32, %1208 ], [ %1166, %1194 ]
  %1215 = phi ptr [ %1210, %1208 ], [ %1163, %1194 ]
  %1216 = icmp ugt i64 %1162, 15
  br i1 %1216, label %1217, label %1233, !prof !87

1217:                                             ; preds = %1212
  %1218 = getelementptr inbounds i8, ptr %1215, i64 %1213
  %1219 = load <2 x i64>, ptr %1214, align 1, !tbaa !9
  store <2 x i64> %1219, ptr %1215, align 1, !tbaa !9
  %1220 = icmp ult i64 %1213, 17
  br i1 %1220, label %1514, label %1221

1221:                                             ; preds = %1217
  %1222 = getelementptr inbounds i8, ptr %1215, i64 16
  br label %1223

1223:                                             ; preds = %1223, %1221
  %1224 = phi ptr [ %1222, %1221 ], [ %1231, %1223 ]
  %1225 = phi ptr [ %1214, %1221 ], [ %1229, %1223 ]
  %1226 = getelementptr inbounds i8, ptr %1225, i64 16
  %1227 = load <2 x i64>, ptr %1226, align 1, !tbaa !9
  store <2 x i64> %1227, ptr %1224, align 1, !tbaa !9
  %1228 = getelementptr inbounds i8, ptr %1224, i64 16
  %1229 = getelementptr inbounds i8, ptr %1225, i64 32
  %1230 = load <2 x i64>, ptr %1229, align 1, !tbaa !9
  store <2 x i64> %1230, ptr %1228, align 1, !tbaa !9
  %1231 = getelementptr inbounds i8, ptr %1224, i64 32
  %1232 = icmp ult ptr %1231, %1218
  br i1 %1232, label %1223, label %1514, !llvm.loop !105

1233:                                             ; preds = %1212
  %1234 = icmp ult i64 %1162, 8
  br i1 %1234, label %1235, label %1257

1235:                                             ; preds = %1233
  %1236 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1162
  %1237 = load i32, ptr %1236, align 4, !tbaa !28
  %1238 = load i8, ptr %1214, align 1, !tbaa !9
  store i8 %1238, ptr %1215, align 1, !tbaa !9
  %1239 = getelementptr inbounds i8, ptr %1214, i64 1
  %1240 = load i8, ptr %1239, align 1, !tbaa !9
  %1241 = getelementptr inbounds i8, ptr %1215, i64 1
  store i8 %1240, ptr %1241, align 1, !tbaa !9
  %1242 = getelementptr inbounds i8, ptr %1214, i64 2
  %1243 = load i8, ptr %1242, align 1, !tbaa !9
  %1244 = getelementptr inbounds i8, ptr %1215, i64 2
  store i8 %1243, ptr %1244, align 1, !tbaa !9
  %1245 = getelementptr inbounds i8, ptr %1214, i64 3
  %1246 = load i8, ptr %1245, align 1, !tbaa !9
  %1247 = getelementptr inbounds i8, ptr %1215, i64 3
  store i8 %1246, ptr %1247, align 1, !tbaa !9
  %1248 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1162
  %1249 = load i32, ptr %1248, align 4, !tbaa !28
  %1250 = zext i32 %1249 to i64
  %1251 = getelementptr inbounds i8, ptr %1214, i64 %1250
  %1252 = getelementptr inbounds i8, ptr %1215, i64 4
  %1253 = load i32, ptr %1251, align 1
  store i32 %1253, ptr %1252, align 1
  %1254 = sext i32 %1237 to i64
  %1255 = sub nsw i64 0, %1254
  %1256 = getelementptr inbounds i8, ptr %1251, i64 %1255
  br label %1259

1257:                                             ; preds = %1233
  %1258 = load i64, ptr %1214, align 1
  store i64 %1258, ptr %1215, align 1
  br label %1259

1259:                                             ; preds = %1257, %1235
  %1260 = phi ptr [ %1256, %1235 ], [ %1214, %1257 ]
  %1261 = getelementptr i8, ptr %1260, i64 8
  %1262 = getelementptr i8, ptr %1215, i64 8
  %1263 = icmp ugt i64 %1213, 8
  br i1 %1263, label %1264, label %1514

1264:                                             ; preds = %1259
  %1265 = ptrtoint ptr %1262 to i64
  %1266 = ptrtoint ptr %1261 to i64
  %1267 = sub i64 %1265, %1266
  %1268 = getelementptr inbounds i8, ptr %1215, i64 %1213
  %1269 = icmp slt i64 %1267, 16
  br i1 %1269, label %1270, label %1317

1270:                                             ; preds = %1264
  %1271 = add i64 %1160, %39
  %1272 = tail call i64 @llvm.umin.i64(i64 %1162, i64 %1196)
  %1273 = add i64 %1271, %1272
  %1274 = tail call i64 @llvm.umax.i64(i64 %1162, i64 %1196)
  %1275 = add i64 %1273, %1274
  %1276 = sub i64 %1275, %1162
  %1277 = add i64 %307, %1274
  %1278 = tail call i64 @llvm.umax.i64(i64 %1276, i64 %1277)
  %1279 = add i64 %1278, -9
  %1280 = add i64 %1274, %39
  %1281 = sub i64 %1279, %1280
  %1282 = lshr i64 %1281, 3
  %1283 = add nuw nsw i64 %1282, 1
  %1284 = icmp ult i64 %1281, 24
  %1285 = icmp ult i64 %1267, 32
  %1286 = or i1 %1284, %1285
  br i1 %1286, label %1307, label %1287

1287:                                             ; preds = %1270
  %1288 = and i64 %1283, 4611686018427387900
  %1289 = shl i64 %1288, 3
  %1290 = getelementptr i8, ptr %1262, i64 %1289
  %1291 = shl i64 %1288, 3
  %1292 = getelementptr i8, ptr %1261, i64 %1291
  br label %1293

1293:                                             ; preds = %1293, %1287
  %1294 = phi i64 [ 0, %1287 ], [ %1303, %1293 ]
  %1295 = shl i64 %1294, 3
  %1296 = getelementptr i8, ptr %1262, i64 %1295
  %1297 = shl i64 %1294, 3
  %1298 = getelementptr i8, ptr %1261, i64 %1297
  %1299 = getelementptr i64, ptr %1298, i64 2
  %1300 = load <2 x i64>, ptr %1298, align 1
  %1301 = load <2 x i64>, ptr %1299, align 1
  %1302 = getelementptr i64, ptr %1296, i64 2
  store <2 x i64> %1300, ptr %1296, align 1
  store <2 x i64> %1301, ptr %1302, align 1
  %1303 = add nuw i64 %1294, 4
  %1304 = icmp eq i64 %1303, %1288
  br i1 %1304, label %1305, label %1293, !llvm.loop !114

1305:                                             ; preds = %1293
  %1306 = icmp eq i64 %1283, %1288
  br i1 %1306, label %1514, label %1307

1307:                                             ; preds = %1270, %1305
  %1308 = phi ptr [ %1262, %1270 ], [ %1290, %1305 ]
  %1309 = phi ptr [ %1261, %1270 ], [ %1292, %1305 ]
  br label %1310

1310:                                             ; preds = %1307, %1310
  %1311 = phi ptr [ %1314, %1310 ], [ %1308, %1307 ]
  %1312 = phi ptr [ %1315, %1310 ], [ %1309, %1307 ]
  %1313 = load i64, ptr %1312, align 1
  store i64 %1313, ptr %1311, align 1
  %1314 = getelementptr inbounds i8, ptr %1311, i64 8
  %1315 = getelementptr inbounds i8, ptr %1312, i64 8
  %1316 = icmp ult ptr %1314, %1268
  br i1 %1316, label %1310, label %1514, !llvm.loop !115

1317:                                             ; preds = %1264
  %1318 = add i64 %1213, -8
  %1319 = load <2 x i64>, ptr %1261, align 1, !tbaa !9
  store <2 x i64> %1319, ptr %1262, align 1, !tbaa !9
  %1320 = icmp ult i64 %1318, 17
  br i1 %1320, label %1514, label %1321

1321:                                             ; preds = %1317
  %1322 = getelementptr inbounds i8, ptr %1215, i64 24
  br label %1323

1323:                                             ; preds = %1323, %1321
  %1324 = phi ptr [ %1322, %1321 ], [ %1331, %1323 ]
  %1325 = phi ptr [ %1261, %1321 ], [ %1329, %1323 ]
  %1326 = getelementptr inbounds i8, ptr %1325, i64 16
  %1327 = load <2 x i64>, ptr %1326, align 1, !tbaa !9
  store <2 x i64> %1327, ptr %1324, align 1, !tbaa !9
  %1328 = getelementptr inbounds i8, ptr %1324, i64 16
  %1329 = getelementptr inbounds i8, ptr %1325, i64 32
  %1330 = load <2 x i64>, ptr %1329, align 1, !tbaa !9
  store <2 x i64> %1330, ptr %1328, align 1, !tbaa !9
  %1331 = getelementptr inbounds i8, ptr %1324, i64 32
  %1332 = icmp ult ptr %1331, %1268
  br i1 %1332, label %1323, label %1514, !llvm.loop !105

1333:                                             ; preds = %797
  %1334 = and i32 %560, 7
  %1335 = zext nneg i32 %1334 to i64
  %1336 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1335
  %1337 = load i64, ptr %1336, align 8
  %1338 = getelementptr inbounds i8, ptr %1336, i64 8
  %1339 = load i64, ptr %1338, align 8
  %1340 = getelementptr inbounds i8, ptr %1336, i64 16
  %1341 = load i64, ptr %1340, align 8
  %1342 = getelementptr i8, ptr %558, i64 %1337
  %1343 = add i64 %1339, %1337
  %1344 = load ptr, ptr %7, align 8, !tbaa !38
  %1345 = getelementptr inbounds i8, ptr %1344, i64 %1337
  %1346 = sub i64 0, %1341
  %1347 = getelementptr inbounds i8, ptr %1342, i64 %1346
  %1348 = icmp ugt ptr %1345, %559
  %1349 = getelementptr inbounds i8, ptr %558, i64 %1343
  %1350 = icmp ugt ptr %1349, %300
  %1351 = select i1 %1348, i1 true, i1 %1350
  br i1 %1351, label %1355, label %1352, !prof !111

1352:                                             ; preds = %1333
  %1353 = load <2 x i64>, ptr %1344, align 1, !tbaa !9
  store <2 x i64> %1353, ptr %558, align 1, !tbaa !9
  %1354 = icmp ugt i64 %1337, 16
  br i1 %1354, label %1357, label %1375, !prof !51

1355:                                             ; preds = %1333
  %1356 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %558, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %1336, ptr noundef nonnull %7, ptr noundef %559, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1514

1357:                                             ; preds = %1352
  %1358 = getelementptr inbounds i8, ptr %558, i64 16
  %1359 = getelementptr inbounds i8, ptr %1344, i64 16
  %1360 = add i64 %1337, -16
  %1361 = load <2 x i64>, ptr %1359, align 1, !tbaa !9
  store <2 x i64> %1361, ptr %1358, align 1, !tbaa !9
  %1362 = icmp ult i64 %1360, 17
  br i1 %1362, label %1375, label %1363

1363:                                             ; preds = %1357
  %1364 = getelementptr inbounds i8, ptr %558, i64 32
  br label %1365

1365:                                             ; preds = %1365, %1363
  %1366 = phi ptr [ %1364, %1363 ], [ %1373, %1365 ]
  %1367 = phi ptr [ %1359, %1363 ], [ %1371, %1365 ]
  %1368 = getelementptr inbounds i8, ptr %1367, i64 16
  %1369 = load <2 x i64>, ptr %1368, align 1, !tbaa !9
  store <2 x i64> %1369, ptr %1366, align 1, !tbaa !9
  %1370 = getelementptr inbounds i8, ptr %1366, i64 16
  %1371 = getelementptr inbounds i8, ptr %1367, i64 32
  %1372 = load <2 x i64>, ptr %1371, align 1, !tbaa !9
  store <2 x i64> %1372, ptr %1370, align 1, !tbaa !9
  %1373 = getelementptr inbounds i8, ptr %1366, i64 32
  %1374 = icmp ult ptr %1373, %1342
  br i1 %1374, label %1365, label %1375, !llvm.loop !105

1375:                                             ; preds = %1365, %1357, %1352
  store ptr %1345, ptr %7, align 8, !tbaa !38
  %1376 = ptrtoint ptr %1342 to i64
  %1377 = sub i64 %1376, %39
  %1378 = icmp ugt i64 %1341, %1377
  br i1 %1378, label %1379, label %1393

1379:                                             ; preds = %1375
  %1380 = sub i64 %1376, %301
  %1381 = icmp ugt i64 %1341, %1380
  br i1 %1381, label %2295, label %1382, !prof !51

1382:                                             ; preds = %1379
  %1383 = ptrtoint ptr %1347 to i64
  %1384 = sub i64 %1383, %39
  %1385 = getelementptr inbounds i8, ptr %36, i64 %1384
  %1386 = getelementptr inbounds i8, ptr %1385, i64 %1339
  %1387 = icmp ugt ptr %1386, %36
  br i1 %1387, label %1389, label %1388

1388:                                             ; preds = %1382
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1342, ptr align 1 %1385, i64 %1339, i1 false)
  br label %1514

1389:                                             ; preds = %1382
  %1390 = sub i64 0, %1384
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1342, ptr align 1 %1385, i64 %1390, i1 false)
  %1391 = getelementptr i8, ptr %1342, i64 %1390
  %1392 = add i64 %1384, %1339
  br label %1393

1393:                                             ; preds = %1389, %1375
  %1394 = phi i64 [ %1392, %1389 ], [ %1339, %1375 ]
  %1395 = phi ptr [ %32, %1389 ], [ %1347, %1375 ]
  %1396 = phi ptr [ %1391, %1389 ], [ %1342, %1375 ]
  %1397 = icmp ugt i64 %1341, 15
  br i1 %1397, label %1398, label %1414, !prof !87

1398:                                             ; preds = %1393
  %1399 = getelementptr inbounds i8, ptr %1396, i64 %1394
  %1400 = load <2 x i64>, ptr %1395, align 1, !tbaa !9
  store <2 x i64> %1400, ptr %1396, align 1, !tbaa !9
  %1401 = icmp ult i64 %1394, 17
  br i1 %1401, label %1514, label %1402

1402:                                             ; preds = %1398
  %1403 = getelementptr inbounds i8, ptr %1396, i64 16
  br label %1404

1404:                                             ; preds = %1404, %1402
  %1405 = phi ptr [ %1403, %1402 ], [ %1412, %1404 ]
  %1406 = phi ptr [ %1395, %1402 ], [ %1410, %1404 ]
  %1407 = getelementptr inbounds i8, ptr %1406, i64 16
  %1408 = load <2 x i64>, ptr %1407, align 1, !tbaa !9
  store <2 x i64> %1408, ptr %1405, align 1, !tbaa !9
  %1409 = getelementptr inbounds i8, ptr %1405, i64 16
  %1410 = getelementptr inbounds i8, ptr %1406, i64 32
  %1411 = load <2 x i64>, ptr %1410, align 1, !tbaa !9
  store <2 x i64> %1411, ptr %1409, align 1, !tbaa !9
  %1412 = getelementptr inbounds i8, ptr %1405, i64 32
  %1413 = icmp ult ptr %1412, %1399
  br i1 %1413, label %1404, label %1514, !llvm.loop !105

1414:                                             ; preds = %1393
  %1415 = icmp ult i64 %1341, 8
  br i1 %1415, label %1416, label %1438

1416:                                             ; preds = %1414
  %1417 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1341
  %1418 = load i32, ptr %1417, align 4, !tbaa !28
  %1419 = load i8, ptr %1395, align 1, !tbaa !9
  store i8 %1419, ptr %1396, align 1, !tbaa !9
  %1420 = getelementptr inbounds i8, ptr %1395, i64 1
  %1421 = load i8, ptr %1420, align 1, !tbaa !9
  %1422 = getelementptr inbounds i8, ptr %1396, i64 1
  store i8 %1421, ptr %1422, align 1, !tbaa !9
  %1423 = getelementptr inbounds i8, ptr %1395, i64 2
  %1424 = load i8, ptr %1423, align 1, !tbaa !9
  %1425 = getelementptr inbounds i8, ptr %1396, i64 2
  store i8 %1424, ptr %1425, align 1, !tbaa !9
  %1426 = getelementptr inbounds i8, ptr %1395, i64 3
  %1427 = load i8, ptr %1426, align 1, !tbaa !9
  %1428 = getelementptr inbounds i8, ptr %1396, i64 3
  store i8 %1427, ptr %1428, align 1, !tbaa !9
  %1429 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1341
  %1430 = load i32, ptr %1429, align 4, !tbaa !28
  %1431 = zext i32 %1430 to i64
  %1432 = getelementptr inbounds i8, ptr %1395, i64 %1431
  %1433 = getelementptr inbounds i8, ptr %1396, i64 4
  %1434 = load i32, ptr %1432, align 1
  store i32 %1434, ptr %1433, align 1
  %1435 = sext i32 %1418 to i64
  %1436 = sub nsw i64 0, %1435
  %1437 = getelementptr inbounds i8, ptr %1432, i64 %1436
  br label %1440

1438:                                             ; preds = %1414
  %1439 = load i64, ptr %1395, align 1
  store i64 %1439, ptr %1396, align 1
  br label %1440

1440:                                             ; preds = %1438, %1416
  %1441 = phi ptr [ %1437, %1416 ], [ %1395, %1438 ]
  %1442 = getelementptr i8, ptr %1441, i64 8
  %1443 = getelementptr i8, ptr %1396, i64 8
  %1444 = icmp ugt i64 %1394, 8
  br i1 %1444, label %1445, label %1514

1445:                                             ; preds = %1440
  %1446 = ptrtoint ptr %1443 to i64
  %1447 = ptrtoint ptr %1442 to i64
  %1448 = sub i64 %1446, %1447
  %1449 = getelementptr inbounds i8, ptr %1396, i64 %1394
  %1450 = icmp slt i64 %1448, 16
  br i1 %1450, label %1451, label %1498

1451:                                             ; preds = %1445
  %1452 = add i64 %1339, %39
  %1453 = tail call i64 @llvm.umin.i64(i64 %1341, i64 %1377)
  %1454 = add i64 %1452, %1453
  %1455 = tail call i64 @llvm.umax.i64(i64 %1341, i64 %1377)
  %1456 = add i64 %1454, %1455
  %1457 = sub i64 %1456, %1341
  %1458 = add i64 %308, %1455
  %1459 = tail call i64 @llvm.umax.i64(i64 %1457, i64 %1458)
  %1460 = add i64 %1459, -9
  %1461 = add i64 %1455, %39
  %1462 = sub i64 %1460, %1461
  %1463 = lshr i64 %1462, 3
  %1464 = add nuw nsw i64 %1463, 1
  %1465 = icmp ult i64 %1462, 24
  %1466 = icmp ult i64 %1448, 32
  %1467 = or i1 %1465, %1466
  br i1 %1467, label %1488, label %1468

1468:                                             ; preds = %1451
  %1469 = and i64 %1464, 4611686018427387900
  %1470 = shl i64 %1469, 3
  %1471 = getelementptr i8, ptr %1443, i64 %1470
  %1472 = shl i64 %1469, 3
  %1473 = getelementptr i8, ptr %1442, i64 %1472
  br label %1474

1474:                                             ; preds = %1474, %1468
  %1475 = phi i64 [ 0, %1468 ], [ %1484, %1474 ]
  %1476 = shl i64 %1475, 3
  %1477 = getelementptr i8, ptr %1443, i64 %1476
  %1478 = shl i64 %1475, 3
  %1479 = getelementptr i8, ptr %1442, i64 %1478
  %1480 = getelementptr i64, ptr %1479, i64 2
  %1481 = load <2 x i64>, ptr %1479, align 1
  %1482 = load <2 x i64>, ptr %1480, align 1
  %1483 = getelementptr i64, ptr %1477, i64 2
  store <2 x i64> %1481, ptr %1477, align 1
  store <2 x i64> %1482, ptr %1483, align 1
  %1484 = add nuw i64 %1475, 4
  %1485 = icmp eq i64 %1484, %1469
  br i1 %1485, label %1486, label %1474, !llvm.loop !116

1486:                                             ; preds = %1474
  %1487 = icmp eq i64 %1464, %1469
  br i1 %1487, label %1514, label %1488

1488:                                             ; preds = %1451, %1486
  %1489 = phi ptr [ %1443, %1451 ], [ %1471, %1486 ]
  %1490 = phi ptr [ %1442, %1451 ], [ %1473, %1486 ]
  br label %1491

1491:                                             ; preds = %1488, %1491
  %1492 = phi ptr [ %1495, %1491 ], [ %1489, %1488 ]
  %1493 = phi ptr [ %1496, %1491 ], [ %1490, %1488 ]
  %1494 = load i64, ptr %1493, align 1
  store i64 %1494, ptr %1492, align 1
  %1495 = getelementptr inbounds i8, ptr %1492, i64 8
  %1496 = getelementptr inbounds i8, ptr %1493, i64 8
  %1497 = icmp ult ptr %1495, %1449
  br i1 %1497, label %1491, label %1514, !llvm.loop !117

1498:                                             ; preds = %1445
  %1499 = add i64 %1394, -8
  %1500 = load <2 x i64>, ptr %1442, align 1, !tbaa !9
  store <2 x i64> %1500, ptr %1443, align 1, !tbaa !9
  %1501 = icmp ult i64 %1499, 17
  br i1 %1501, label %1514, label %1502

1502:                                             ; preds = %1498
  %1503 = getelementptr inbounds i8, ptr %1396, i64 24
  br label %1504

1504:                                             ; preds = %1504, %1502
  %1505 = phi ptr [ %1503, %1502 ], [ %1512, %1504 ]
  %1506 = phi ptr [ %1442, %1502 ], [ %1510, %1504 ]
  %1507 = getelementptr inbounds i8, ptr %1506, i64 16
  %1508 = load <2 x i64>, ptr %1507, align 1, !tbaa !9
  store <2 x i64> %1508, ptr %1505, align 1, !tbaa !9
  %1509 = getelementptr inbounds i8, ptr %1505, i64 16
  %1510 = getelementptr inbounds i8, ptr %1506, i64 32
  %1511 = load <2 x i64>, ptr %1510, align 1, !tbaa !9
  store <2 x i64> %1511, ptr %1509, align 1, !tbaa !9
  %1512 = getelementptr inbounds i8, ptr %1505, i64 32
  %1513 = icmp ult ptr %1512, %1449
  br i1 %1513, label %1504, label %1514, !llvm.loop !105

1514:                                             ; preds = %1504, %1491, %1404, %1323, %1310, %1223, %1486, %1305, %1355, %1388, %1398, %1440, %1498, %1174, %1207, %1217, %1259, %1317
  %1515 = phi i64 [ %1175, %1174 ], [ %1164, %1207 ], [ %1164, %1259 ], [ %1164, %1217 ], [ %1164, %1317 ], [ %1356, %1355 ], [ %1343, %1388 ], [ %1343, %1440 ], [ %1343, %1398 ], [ %1343, %1498 ], [ %1164, %1305 ], [ %1343, %1486 ], [ %1164, %1223 ], [ %1164, %1310 ], [ %1164, %1323 ], [ %1343, %1404 ], [ %1343, %1491 ], [ %1343, %1504 ]
  %1516 = icmp ult i64 %1515, -119
  br i1 %1516, label %1517, label %2295

1517:                                             ; preds = %1514
  %1518 = add i64 %727, %561
  %1519 = icmp ugt i64 %659, %1518
  %1520 = select i1 %1519, ptr %36, ptr %32
  %1521 = getelementptr inbounds i8, ptr %1520, i64 %1518
  %1522 = sub i64 0, %659
  %1523 = getelementptr inbounds i8, ptr %1521, i64 %1522
  tail call void @llvm.prefetch.p0(ptr %1523, i32 0, i32 3, i32 1)
  %1524 = getelementptr inbounds i8, ptr %1523, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1524, i32 0, i32 3, i32 1)
  %1525 = and i32 %560, 7
  %1526 = zext nneg i32 %1525 to i64
  %1527 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1526
  store i64 %727, ptr %1527, align 8, !tbaa.struct !88
  %1528 = getelementptr inbounds i8, ptr %1527, i64 8
  store i64 %675, ptr %1528, align 8, !tbaa.struct !89
  %1529 = getelementptr inbounds i8, ptr %1527, i64 16
  store i64 %659, ptr %1529, align 8, !tbaa.struct !90
  %1530 = getelementptr inbounds i8, ptr %558, i64 %1515
  br label %1531

1531:                                             ; preds = %1517, %1148
  %1532 = phi i64 [ %1518, %1517 ], [ %1149, %1148 ]
  %1533 = phi ptr [ %559, %1517 ], [ %304, %1148 ]
  %1534 = phi ptr [ %1530, %1517 ], [ %1156, %1148 ]
  %1535 = add i64 %1532, %675
  %1536 = add nuw nsw i32 %560, 1
  %1537 = icmp eq i32 %1536, %5
  br i1 %1537, label %1538, label %557, !llvm.loop !118

1538:                                             ; preds = %1531
  %1539 = load ptr, ptr %153, align 8, !tbaa !75
  %1540 = load ptr, ptr %58, align 8, !tbaa !72
  %1541 = load i32, ptr %142, align 8
  br label %1542

1542:                                             ; preds = %1538, %292
  %1543 = phi i32 [ %293, %292 ], [ %1541, %1538 ]
  %1544 = phi ptr [ %3, %292 ], [ %1540, %1538 ]
  %1545 = phi ptr [ %294, %292 ], [ %1539, %1538 ]
  %1546 = phi i32 [ %296, %292 ], [ %5, %1538 ]
  %1547 = phi ptr [ %30, %292 ], [ %1533, %1538 ]
  %1548 = phi ptr [ %1, %292 ], [ %1534, %1538 ]
  %1549 = icmp eq ptr %1545, %1544
  %1550 = icmp eq i32 %1543, 64
  %1551 = select i1 %1549, i1 %1550, i1 false
  br i1 %1551, label %1552, label %2295

1552:                                             ; preds = %1542
  %1553 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1546, i32 %53), !nosanitize !86
  %1554 = extractvalue { i32, i1 } %1553, 1, !nosanitize !86
  br i1 %1554, label %356, label %1555, !nosanitize !86

1555:                                             ; preds = %1552
  %1556 = extractvalue { i32, i1 } %1553, 0
  %1557 = icmp slt i32 %1556, %5
  br i1 %1557, label %1558, label %1568

1558:                                             ; preds = %1555
  %1559 = getelementptr inbounds i8, ptr %26, i64 -32
  %1560 = ptrtoint ptr %34 to i64
  %1561 = ptrtoint ptr %26 to i64
  %1562 = getelementptr i8, ptr %0, i64 30372
  %1563 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  %1564 = getelementptr inbounds i8, ptr %0, i64 30388
  %1565 = add i64 %39, 16
  %1566 = add i64 %39, 16
  %1567 = add i64 %39, 16
  br label %1577

1568:                                             ; preds = %2290, %1555
  %1569 = phi ptr [ %1547, %1555 ], [ %2291, %2290 ]
  %1570 = phi ptr [ %1548, %1555 ], [ %2292, %2290 ]
  %1571 = load <2 x i64>, ptr %44, align 8, !tbaa !44
  %1572 = trunc <2 x i64> %1571 to <2 x i32>
  store <2 x i32> %1572, ptr %41, align 4, !tbaa !28
  %1573 = load i64, ptr %52, align 8, !tbaa !44
  %1574 = trunc i64 %1573 to i32
  store i32 %1574, ptr %49, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #16
  %1575 = load i32, ptr %16, align 8, !tbaa !32
  %1576 = load ptr, ptr %7, align 8, !tbaa !38
  br label %2297

1577:                                             ; preds = %2290, %1558
  %1578 = phi i32 [ %1556, %1558 ], [ %2293, %2290 ]
  %1579 = phi ptr [ %1548, %1558 ], [ %2292, %2290 ]
  %1580 = phi ptr [ %1547, %1558 ], [ %2291, %2290 ]
  %1581 = and i32 %1578, 7
  %1582 = zext nneg i32 %1581 to i64
  %1583 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1582
  %1584 = load i32, ptr %16, align 8, !tbaa !32
  %1585 = icmp eq i32 %1584, 2
  br i1 %1585, label %1586, label %2108

1586:                                             ; preds = %1577
  %1587 = load ptr, ptr %7, align 8, !tbaa !38
  %1588 = load i64, ptr %1583, align 8
  %1589 = getelementptr inbounds i8, ptr %1587, i64 %1588
  %1590 = load ptr, ptr %29, align 8, !tbaa !37
  %1591 = icmp ugt ptr %1589, %1590
  br i1 %1591, label %1592, label %1932

1592:                                             ; preds = %1586
  %1593 = ptrtoint ptr %1590 to i64
  %1594 = ptrtoint ptr %1587 to i64
  %1595 = sub i64 %1593, %1594
  %1596 = icmp eq ptr %1590, %1587
  br i1 %1596, label %1751, label %1597

1597:                                             ; preds = %1592
  %1598 = ptrtoint ptr %1579 to i64
  %1599 = sub i64 %1561, %1598
  %1600 = icmp ugt i64 %1595, %1599
  br i1 %1600, label %2295, label %1601

1601:                                             ; preds = %1597
  %1602 = sub i64 %1598, %1594
  %1603 = getelementptr inbounds i8, ptr %1579, i64 %1595
  %1604 = icmp ult i64 %1595, 8
  %1605 = icmp sgt i64 %1602, -8
  %1606 = or i1 %1605, %1604
  br i1 %1606, label %1607, label %1663

1607:                                             ; preds = %1601
  %1608 = icmp sgt i64 %1595, 0
  br i1 %1608, label %1609, label %1748

1609:                                             ; preds = %1607
  %1610 = add i64 %1598, %1593
  %1611 = sub i64 %1610, %1594
  %1612 = add i64 %1598, 1
  %1613 = tail call i64 @llvm.umax.i64(i64 %1611, i64 %1612)
  %1614 = sub i64 %1613, %1598
  %1615 = icmp ult i64 %1614, 8
  %1616 = icmp ult i64 %1602, 32
  %1617 = or i1 %1615, %1616
  br i1 %1617, label %1653, label %1618

1618:                                             ; preds = %1609
  %1619 = icmp ult i64 %1614, 32
  br i1 %1619, label %1639, label %1620

1620:                                             ; preds = %1618
  %1621 = and i64 %1614, -32
  br label %1622

1622:                                             ; preds = %1622, %1620
  %1623 = phi i64 [ 0, %1620 ], [ %1630, %1622 ]
  %1624 = getelementptr i8, ptr %1579, i64 %1623
  %1625 = getelementptr i8, ptr %1587, i64 %1623
  %1626 = getelementptr i8, ptr %1625, i64 16
  %1627 = load <16 x i8>, ptr %1625, align 1, !tbaa !9
  %1628 = load <16 x i8>, ptr %1626, align 1, !tbaa !9
  %1629 = getelementptr i8, ptr %1624, i64 16
  store <16 x i8> %1627, ptr %1624, align 1, !tbaa !9
  store <16 x i8> %1628, ptr %1629, align 1, !tbaa !9
  %1630 = add nuw i64 %1623, 32
  %1631 = icmp eq i64 %1630, %1621
  br i1 %1631, label %1632, label %1622, !llvm.loop !119

1632:                                             ; preds = %1622
  %1633 = icmp eq i64 %1614, %1621
  br i1 %1633, label %1748, label %1634

1634:                                             ; preds = %1632
  %1635 = getelementptr i8, ptr %1587, i64 %1621
  %1636 = getelementptr i8, ptr %1579, i64 %1621
  %1637 = and i64 %1614, 24
  %1638 = icmp eq i64 %1637, 0
  br i1 %1638, label %1653, label %1639

1639:                                             ; preds = %1618, %1634
  %1640 = phi i64 [ %1621, %1634 ], [ 0, %1618 ]
  %1641 = and i64 %1614, -8
  %1642 = getelementptr i8, ptr %1579, i64 %1641
  %1643 = getelementptr i8, ptr %1587, i64 %1641
  br label %1644

1644:                                             ; preds = %1644, %1639
  %1645 = phi i64 [ %1640, %1639 ], [ %1649, %1644 ]
  %1646 = getelementptr i8, ptr %1579, i64 %1645
  %1647 = getelementptr i8, ptr %1587, i64 %1645
  %1648 = load <8 x i8>, ptr %1647, align 1, !tbaa !9
  store <8 x i8> %1648, ptr %1646, align 1, !tbaa !9
  %1649 = add nuw i64 %1645, 8
  %1650 = icmp eq i64 %1649, %1641
  br i1 %1650, label %1651, label %1644, !llvm.loop !120

1651:                                             ; preds = %1644
  %1652 = icmp eq i64 %1614, %1641
  br i1 %1652, label %1748, label %1653

1653:                                             ; preds = %1609, %1634, %1651
  %1654 = phi ptr [ %1579, %1609 ], [ %1636, %1634 ], [ %1642, %1651 ]
  %1655 = phi ptr [ %1587, %1609 ], [ %1635, %1634 ], [ %1643, %1651 ]
  br label %1656

1656:                                             ; preds = %1653, %1656
  %1657 = phi ptr [ %1661, %1656 ], [ %1654, %1653 ]
  %1658 = phi ptr [ %1659, %1656 ], [ %1655, %1653 ]
  %1659 = getelementptr inbounds i8, ptr %1658, i64 1
  %1660 = load i8, ptr %1658, align 1, !tbaa !9
  %1661 = getelementptr inbounds i8, ptr %1657, i64 1
  store i8 %1660, ptr %1657, align 1, !tbaa !9
  %1662 = icmp ult ptr %1661, %1603
  br i1 %1662, label %1656, label %1748, !llvm.loop !121

1663:                                             ; preds = %1601
  %1664 = getelementptr inbounds i8, ptr %1603, i64 -32
  %1665 = icmp uge ptr %1664, %1579
  %1666 = icmp ult i64 %1602, -16
  %1667 = and i1 %1666, %1665
  br i1 %1667, label %1668, label %1687

1668:                                             ; preds = %1663
  %1669 = ptrtoint ptr %1664 to i64
  %1670 = sub i64 %1669, %1598
  %1671 = load <2 x i64>, ptr %1587, align 1, !tbaa !9
  store <2 x i64> %1671, ptr %1579, align 1, !tbaa !9
  %1672 = icmp ult i64 %1670, 17
  br i1 %1672, label %1685, label %1673

1673:                                             ; preds = %1668
  %1674 = getelementptr inbounds i8, ptr %1579, i64 16
  br label %1675

1675:                                             ; preds = %1675, %1673
  %1676 = phi ptr [ %1674, %1673 ], [ %1683, %1675 ]
  %1677 = phi ptr [ %1587, %1673 ], [ %1681, %1675 ]
  %1678 = getelementptr inbounds i8, ptr %1677, i64 16
  %1679 = load <2 x i64>, ptr %1678, align 1, !tbaa !9
  store <2 x i64> %1679, ptr %1676, align 1, !tbaa !9
  %1680 = getelementptr inbounds i8, ptr %1676, i64 16
  %1681 = getelementptr inbounds i8, ptr %1677, i64 32
  %1682 = load <2 x i64>, ptr %1681, align 1, !tbaa !9
  store <2 x i64> %1682, ptr %1680, align 1, !tbaa !9
  %1683 = getelementptr inbounds i8, ptr %1676, i64 32
  %1684 = icmp ult ptr %1683, %1664
  br i1 %1684, label %1675, label %1685, !llvm.loop !105

1685:                                             ; preds = %1675, %1668
  %1686 = getelementptr inbounds i8, ptr %1587, i64 %1670
  br label %1689

1687:                                             ; preds = %1663
  %1688 = icmp sgt i64 %1595, 0
  br i1 %1688, label %1689, label %1748

1689:                                             ; preds = %1687, %1685
  %1690 = phi ptr [ %1664, %1685 ], [ %1579, %1687 ]
  %1691 = phi ptr [ %1686, %1685 ], [ %1587, %1687 ]
  %1692 = ptrtoint ptr %1690 to i64
  %1693 = add i64 %1598, %1593
  %1694 = sub i64 %1693, %1594
  %1695 = add nuw i64 %1692, 1
  %1696 = tail call i64 @llvm.umax.i64(i64 %1694, i64 %1695)
  %1697 = sub i64 %1696, %1692
  %1698 = icmp ult i64 %1697, 8
  %1699 = ptrtoint ptr %1691 to i64
  %1700 = sub i64 %1692, %1699
  %1701 = icmp ult i64 %1700, 32
  %1702 = select i1 %1698, i1 true, i1 %1701
  br i1 %1702, label %1738, label %1703

1703:                                             ; preds = %1689
  %1704 = icmp ult i64 %1697, 32
  br i1 %1704, label %1724, label %1705

1705:                                             ; preds = %1703
  %1706 = and i64 %1697, -32
  br label %1707

1707:                                             ; preds = %1707, %1705
  %1708 = phi i64 [ 0, %1705 ], [ %1715, %1707 ]
  %1709 = getelementptr i8, ptr %1690, i64 %1708
  %1710 = getelementptr i8, ptr %1691, i64 %1708
  %1711 = getelementptr i8, ptr %1710, i64 16
  %1712 = load <16 x i8>, ptr %1710, align 1, !tbaa !9
  %1713 = load <16 x i8>, ptr %1711, align 1, !tbaa !9
  %1714 = getelementptr i8, ptr %1709, i64 16
  store <16 x i8> %1712, ptr %1709, align 1, !tbaa !9
  store <16 x i8> %1713, ptr %1714, align 1, !tbaa !9
  %1715 = add nuw i64 %1708, 32
  %1716 = icmp eq i64 %1715, %1706
  br i1 %1716, label %1717, label %1707, !llvm.loop !122

1717:                                             ; preds = %1707
  %1718 = icmp eq i64 %1697, %1706
  br i1 %1718, label %1748, label %1719

1719:                                             ; preds = %1717
  %1720 = getelementptr i8, ptr %1691, i64 %1706
  %1721 = getelementptr i8, ptr %1690, i64 %1706
  %1722 = and i64 %1697, 24
  %1723 = icmp eq i64 %1722, 0
  br i1 %1723, label %1738, label %1724

1724:                                             ; preds = %1703, %1719
  %1725 = phi i64 [ %1706, %1719 ], [ 0, %1703 ]
  %1726 = and i64 %1697, -8
  %1727 = getelementptr i8, ptr %1690, i64 %1726
  %1728 = getelementptr i8, ptr %1691, i64 %1726
  br label %1729

1729:                                             ; preds = %1729, %1724
  %1730 = phi i64 [ %1725, %1724 ], [ %1734, %1729 ]
  %1731 = getelementptr i8, ptr %1690, i64 %1730
  %1732 = getelementptr i8, ptr %1691, i64 %1730
  %1733 = load <8 x i8>, ptr %1732, align 1, !tbaa !9
  store <8 x i8> %1733, ptr %1731, align 1, !tbaa !9
  %1734 = add nuw i64 %1730, 8
  %1735 = icmp eq i64 %1734, %1726
  br i1 %1735, label %1736, label %1729, !llvm.loop !123

1736:                                             ; preds = %1729
  %1737 = icmp eq i64 %1697, %1726
  br i1 %1737, label %1748, label %1738

1738:                                             ; preds = %1689, %1719, %1736
  %1739 = phi ptr [ %1690, %1689 ], [ %1721, %1719 ], [ %1727, %1736 ]
  %1740 = phi ptr [ %1691, %1689 ], [ %1720, %1719 ], [ %1728, %1736 ]
  br label %1741

1741:                                             ; preds = %1738, %1741
  %1742 = phi ptr [ %1746, %1741 ], [ %1739, %1738 ]
  %1743 = phi ptr [ %1744, %1741 ], [ %1740, %1738 ]
  %1744 = getelementptr inbounds i8, ptr %1743, i64 1
  %1745 = load i8, ptr %1743, align 1, !tbaa !9
  %1746 = getelementptr inbounds i8, ptr %1742, i64 1
  store i8 %1745, ptr %1742, align 1, !tbaa !9
  %1747 = icmp ult ptr %1746, %1603
  br i1 %1747, label %1741, label %1748, !llvm.loop !124

1748:                                             ; preds = %1741, %1656, %1717, %1736, %1632, %1651, %1687, %1607
  %1749 = load i64, ptr %1583, align 8, !tbaa !109
  %1750 = sub i64 %1749, %1595
  store i64 %1750, ptr %1583, align 8, !tbaa !109
  br label %1751

1751:                                             ; preds = %1592, %1748
  %1752 = phi i64 [ %1750, %1748 ], [ %1588, %1592 ]
  %1753 = phi ptr [ %1603, %1748 ], [ %1579, %1592 ]
  store ptr %1562, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %16, align 8, !tbaa !32
  %1754 = getelementptr inbounds i8, ptr %1583, i64 8
  %1755 = load i64, ptr %1754, align 8
  %1756 = getelementptr inbounds i8, ptr %1583, i64 16
  %1757 = load i64, ptr %1756, align 8
  %1758 = getelementptr i8, ptr %1753, i64 %1752
  %1759 = add i64 %1755, %1752
  %1760 = getelementptr i8, ptr %1562, i64 %1752
  %1761 = sub i64 0, %1757
  %1762 = getelementptr inbounds i8, ptr %1758, i64 %1761
  %1763 = icmp sgt i64 %1752, 65536
  %1764 = getelementptr inbounds i8, ptr %1753, i64 %1759
  %1765 = icmp ugt ptr %1764, %1559
  %1766 = select i1 %1763, i1 true, i1 %1765
  br i1 %1766, label %1770, label %1767, !prof !111

1767:                                             ; preds = %1751
  %1768 = load <2 x i64>, ptr %1562, align 1, !tbaa !9
  store <2 x i64> %1768, ptr %1753, align 1, !tbaa !9
  %1769 = icmp ugt i64 %1752, 16
  br i1 %1769, label %1772, label %1789, !prof !51

1770:                                             ; preds = %1751
  %1771 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1753, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %1583, ptr noundef nonnull %7, ptr noundef nonnull %1563, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1928

1772:                                             ; preds = %1767
  %1773 = getelementptr inbounds i8, ptr %1753, i64 16
  %1774 = add i64 %1752, -16
  %1775 = load <2 x i64>, ptr %1564, align 1, !tbaa !9
  store <2 x i64> %1775, ptr %1773, align 1, !tbaa !9
  %1776 = icmp ult i64 %1774, 17
  br i1 %1776, label %1789, label %1777

1777:                                             ; preds = %1772
  %1778 = getelementptr inbounds i8, ptr %1753, i64 32
  br label %1779

1779:                                             ; preds = %1779, %1777
  %1780 = phi ptr [ %1778, %1777 ], [ %1787, %1779 ]
  %1781 = phi ptr [ %1564, %1777 ], [ %1785, %1779 ]
  %1782 = getelementptr inbounds i8, ptr %1781, i64 16
  %1783 = load <2 x i64>, ptr %1782, align 1, !tbaa !9
  store <2 x i64> %1783, ptr %1780, align 1, !tbaa !9
  %1784 = getelementptr inbounds i8, ptr %1780, i64 16
  %1785 = getelementptr inbounds i8, ptr %1781, i64 32
  %1786 = load <2 x i64>, ptr %1785, align 1, !tbaa !9
  store <2 x i64> %1786, ptr %1784, align 1, !tbaa !9
  %1787 = getelementptr inbounds i8, ptr %1780, i64 32
  %1788 = icmp ult ptr %1787, %1758
  br i1 %1788, label %1779, label %1789, !llvm.loop !105

1789:                                             ; preds = %1779, %1772, %1767
  store ptr %1760, ptr %7, align 8, !tbaa !38
  %1790 = ptrtoint ptr %1758 to i64
  %1791 = sub i64 %1790, %39
  %1792 = icmp ugt i64 %1757, %1791
  br i1 %1792, label %1793, label %1807

1793:                                             ; preds = %1789
  %1794 = sub i64 %1790, %1560
  %1795 = icmp ugt i64 %1757, %1794
  br i1 %1795, label %2295, label %1796, !prof !51

1796:                                             ; preds = %1793
  %1797 = ptrtoint ptr %1762 to i64
  %1798 = sub i64 %1797, %39
  %1799 = getelementptr inbounds i8, ptr %36, i64 %1798
  %1800 = getelementptr inbounds i8, ptr %1799, i64 %1755
  %1801 = icmp ugt ptr %1800, %36
  br i1 %1801, label %1803, label %1802

1802:                                             ; preds = %1796
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1758, ptr align 1 %1799, i64 %1755, i1 false)
  br label %1928

1803:                                             ; preds = %1796
  %1804 = sub i64 0, %1798
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1758, ptr align 1 %1799, i64 %1804, i1 false)
  %1805 = getelementptr i8, ptr %1758, i64 %1804
  %1806 = add i64 %1798, %1755
  br label %1807

1807:                                             ; preds = %1803, %1789
  %1808 = phi i64 [ %1806, %1803 ], [ %1755, %1789 ]
  %1809 = phi ptr [ %32, %1803 ], [ %1762, %1789 ]
  %1810 = phi ptr [ %1805, %1803 ], [ %1758, %1789 ]
  %1811 = icmp ugt i64 %1757, 15
  br i1 %1811, label %1812, label %1828, !prof !87

1812:                                             ; preds = %1807
  %1813 = getelementptr inbounds i8, ptr %1810, i64 %1808
  %1814 = load <2 x i64>, ptr %1809, align 1, !tbaa !9
  store <2 x i64> %1814, ptr %1810, align 1, !tbaa !9
  %1815 = icmp ult i64 %1808, 17
  br i1 %1815, label %1928, label %1816

1816:                                             ; preds = %1812
  %1817 = getelementptr inbounds i8, ptr %1810, i64 16
  br label %1818

1818:                                             ; preds = %1818, %1816
  %1819 = phi ptr [ %1817, %1816 ], [ %1826, %1818 ]
  %1820 = phi ptr [ %1809, %1816 ], [ %1824, %1818 ]
  %1821 = getelementptr inbounds i8, ptr %1820, i64 16
  %1822 = load <2 x i64>, ptr %1821, align 1, !tbaa !9
  store <2 x i64> %1822, ptr %1819, align 1, !tbaa !9
  %1823 = getelementptr inbounds i8, ptr %1819, i64 16
  %1824 = getelementptr inbounds i8, ptr %1820, i64 32
  %1825 = load <2 x i64>, ptr %1824, align 1, !tbaa !9
  store <2 x i64> %1825, ptr %1823, align 1, !tbaa !9
  %1826 = getelementptr inbounds i8, ptr %1819, i64 32
  %1827 = icmp ult ptr %1826, %1813
  br i1 %1827, label %1818, label %1928, !llvm.loop !105

1828:                                             ; preds = %1807
  %1829 = icmp ult i64 %1757, 8
  br i1 %1829, label %1830, label %1852

1830:                                             ; preds = %1828
  %1831 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1757
  %1832 = load i32, ptr %1831, align 4, !tbaa !28
  %1833 = load i8, ptr %1809, align 1, !tbaa !9
  store i8 %1833, ptr %1810, align 1, !tbaa !9
  %1834 = getelementptr inbounds i8, ptr %1809, i64 1
  %1835 = load i8, ptr %1834, align 1, !tbaa !9
  %1836 = getelementptr inbounds i8, ptr %1810, i64 1
  store i8 %1835, ptr %1836, align 1, !tbaa !9
  %1837 = getelementptr inbounds i8, ptr %1809, i64 2
  %1838 = load i8, ptr %1837, align 1, !tbaa !9
  %1839 = getelementptr inbounds i8, ptr %1810, i64 2
  store i8 %1838, ptr %1839, align 1, !tbaa !9
  %1840 = getelementptr inbounds i8, ptr %1809, i64 3
  %1841 = load i8, ptr %1840, align 1, !tbaa !9
  %1842 = getelementptr inbounds i8, ptr %1810, i64 3
  store i8 %1841, ptr %1842, align 1, !tbaa !9
  %1843 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1757
  %1844 = load i32, ptr %1843, align 4, !tbaa !28
  %1845 = zext i32 %1844 to i64
  %1846 = getelementptr inbounds i8, ptr %1809, i64 %1845
  %1847 = getelementptr inbounds i8, ptr %1810, i64 4
  %1848 = load i32, ptr %1846, align 1
  store i32 %1848, ptr %1847, align 1
  %1849 = sext i32 %1832 to i64
  %1850 = sub nsw i64 0, %1849
  %1851 = getelementptr inbounds i8, ptr %1846, i64 %1850
  br label %1854

1852:                                             ; preds = %1828
  %1853 = load i64, ptr %1809, align 1
  store i64 %1853, ptr %1810, align 1
  br label %1854

1854:                                             ; preds = %1852, %1830
  %1855 = phi ptr [ %1851, %1830 ], [ %1809, %1852 ]
  %1856 = getelementptr i8, ptr %1855, i64 8
  %1857 = getelementptr i8, ptr %1810, i64 8
  %1858 = icmp ugt i64 %1808, 8
  br i1 %1858, label %1859, label %1928

1859:                                             ; preds = %1854
  %1860 = ptrtoint ptr %1857 to i64
  %1861 = ptrtoint ptr %1856 to i64
  %1862 = sub i64 %1860, %1861
  %1863 = getelementptr inbounds i8, ptr %1810, i64 %1808
  %1864 = icmp slt i64 %1862, 16
  br i1 %1864, label %1865, label %1912

1865:                                             ; preds = %1859
  %1866 = add i64 %1755, %39
  %1867 = tail call i64 @llvm.umin.i64(i64 %1757, i64 %1791)
  %1868 = add i64 %1866, %1867
  %1869 = tail call i64 @llvm.umax.i64(i64 %1757, i64 %1791)
  %1870 = add i64 %1868, %1869
  %1871 = sub i64 %1870, %1757
  %1872 = add i64 %1565, %1869
  %1873 = tail call i64 @llvm.umax.i64(i64 %1871, i64 %1872)
  %1874 = add i64 %1873, -9
  %1875 = add i64 %1869, %39
  %1876 = sub i64 %1874, %1875
  %1877 = lshr i64 %1876, 3
  %1878 = add nuw nsw i64 %1877, 1
  %1879 = icmp ult i64 %1876, 24
  %1880 = icmp ult i64 %1862, 32
  %1881 = or i1 %1879, %1880
  br i1 %1881, label %1902, label %1882

1882:                                             ; preds = %1865
  %1883 = and i64 %1878, 4611686018427387900
  %1884 = shl i64 %1883, 3
  %1885 = getelementptr i8, ptr %1857, i64 %1884
  %1886 = shl i64 %1883, 3
  %1887 = getelementptr i8, ptr %1856, i64 %1886
  br label %1888

1888:                                             ; preds = %1888, %1882
  %1889 = phi i64 [ 0, %1882 ], [ %1898, %1888 ]
  %1890 = shl i64 %1889, 3
  %1891 = getelementptr i8, ptr %1857, i64 %1890
  %1892 = shl i64 %1889, 3
  %1893 = getelementptr i8, ptr %1856, i64 %1892
  %1894 = getelementptr i64, ptr %1893, i64 2
  %1895 = load <2 x i64>, ptr %1893, align 1
  %1896 = load <2 x i64>, ptr %1894, align 1
  %1897 = getelementptr i64, ptr %1891, i64 2
  store <2 x i64> %1895, ptr %1891, align 1
  store <2 x i64> %1896, ptr %1897, align 1
  %1898 = add nuw i64 %1889, 4
  %1899 = icmp eq i64 %1898, %1883
  br i1 %1899, label %1900, label %1888, !llvm.loop !125

1900:                                             ; preds = %1888
  %1901 = icmp eq i64 %1878, %1883
  br i1 %1901, label %1928, label %1902

1902:                                             ; preds = %1865, %1900
  %1903 = phi ptr [ %1857, %1865 ], [ %1885, %1900 ]
  %1904 = phi ptr [ %1856, %1865 ], [ %1887, %1900 ]
  br label %1905

1905:                                             ; preds = %1902, %1905
  %1906 = phi ptr [ %1909, %1905 ], [ %1903, %1902 ]
  %1907 = phi ptr [ %1910, %1905 ], [ %1904, %1902 ]
  %1908 = load i64, ptr %1907, align 1
  store i64 %1908, ptr %1906, align 1
  %1909 = getelementptr inbounds i8, ptr %1906, i64 8
  %1910 = getelementptr inbounds i8, ptr %1907, i64 8
  %1911 = icmp ult ptr %1909, %1863
  br i1 %1911, label %1905, label %1928, !llvm.loop !126

1912:                                             ; preds = %1859
  %1913 = add i64 %1808, -8
  %1914 = load <2 x i64>, ptr %1856, align 1, !tbaa !9
  store <2 x i64> %1914, ptr %1857, align 1, !tbaa !9
  %1915 = icmp ult i64 %1913, 17
  br i1 %1915, label %1928, label %1916

1916:                                             ; preds = %1912
  %1917 = getelementptr inbounds i8, ptr %1810, i64 24
  br label %1918

1918:                                             ; preds = %1918, %1916
  %1919 = phi ptr [ %1917, %1916 ], [ %1926, %1918 ]
  %1920 = phi ptr [ %1856, %1916 ], [ %1924, %1918 ]
  %1921 = getelementptr inbounds i8, ptr %1920, i64 16
  %1922 = load <2 x i64>, ptr %1921, align 1, !tbaa !9
  store <2 x i64> %1922, ptr %1919, align 1, !tbaa !9
  %1923 = getelementptr inbounds i8, ptr %1919, i64 16
  %1924 = getelementptr inbounds i8, ptr %1920, i64 32
  %1925 = load <2 x i64>, ptr %1924, align 1, !tbaa !9
  store <2 x i64> %1925, ptr %1923, align 1, !tbaa !9
  %1926 = getelementptr inbounds i8, ptr %1919, i64 32
  %1927 = icmp ult ptr %1926, %1863
  br i1 %1927, label %1918, label %1928, !llvm.loop !105

1928:                                             ; preds = %1918, %1905, %1818, %1900, %1912, %1854, %1812, %1802, %1770
  %1929 = phi i64 [ %1771, %1770 ], [ %1759, %1802 ], [ %1759, %1854 ], [ %1759, %1812 ], [ %1759, %1912 ], [ %1759, %1900 ], [ %1759, %1818 ], [ %1759, %1905 ], [ %1759, %1918 ]
  %1930 = icmp ult i64 %1929, -119
  %1931 = getelementptr inbounds i8, ptr %1753, i64 %1929
  br i1 %1930, label %2290, label %2295

1932:                                             ; preds = %1586
  %1933 = getelementptr inbounds i8, ptr %1589, i64 -32
  %1934 = getelementptr inbounds i8, ptr %1583, i64 8
  %1935 = load i64, ptr %1934, align 8
  %1936 = getelementptr inbounds i8, ptr %1583, i64 16
  %1937 = load i64, ptr %1936, align 8
  %1938 = getelementptr i8, ptr %1579, i64 %1588
  %1939 = add i64 %1935, %1588
  %1940 = sub i64 0, %1937
  %1941 = getelementptr inbounds i8, ptr %1938, i64 %1940
  %1942 = icmp ugt ptr %1589, %1580
  %1943 = getelementptr inbounds i8, ptr %1579, i64 %1939
  %1944 = icmp ugt ptr %1943, %1933
  %1945 = select i1 %1942, i1 true, i1 %1944
  br i1 %1945, label %1949, label %1946, !prof !111

1946:                                             ; preds = %1932
  %1947 = load <2 x i64>, ptr %1587, align 1, !tbaa !9
  store <2 x i64> %1947, ptr %1579, align 1, !tbaa !9
  %1948 = icmp ugt i64 %1588, 16
  br i1 %1948, label %1951, label %1969, !prof !51

1949:                                             ; preds = %1932
  %1950 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1579, ptr noundef %26, ptr noundef nonnull %1933, ptr noundef nonnull byval(%struct.seq_t) align 8 %1583, ptr noundef nonnull %7, ptr noundef %1580, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %2286

1951:                                             ; preds = %1946
  %1952 = getelementptr inbounds i8, ptr %1579, i64 16
  %1953 = getelementptr inbounds i8, ptr %1587, i64 16
  %1954 = add i64 %1588, -16
  %1955 = load <2 x i64>, ptr %1953, align 1, !tbaa !9
  store <2 x i64> %1955, ptr %1952, align 1, !tbaa !9
  %1956 = icmp ult i64 %1954, 17
  br i1 %1956, label %1969, label %1957

1957:                                             ; preds = %1951
  %1958 = getelementptr inbounds i8, ptr %1579, i64 32
  br label %1959

1959:                                             ; preds = %1959, %1957
  %1960 = phi ptr [ %1958, %1957 ], [ %1967, %1959 ]
  %1961 = phi ptr [ %1953, %1957 ], [ %1965, %1959 ]
  %1962 = getelementptr inbounds i8, ptr %1961, i64 16
  %1963 = load <2 x i64>, ptr %1962, align 1, !tbaa !9
  store <2 x i64> %1963, ptr %1960, align 1, !tbaa !9
  %1964 = getelementptr inbounds i8, ptr %1960, i64 16
  %1965 = getelementptr inbounds i8, ptr %1961, i64 32
  %1966 = load <2 x i64>, ptr %1965, align 1, !tbaa !9
  store <2 x i64> %1966, ptr %1964, align 1, !tbaa !9
  %1967 = getelementptr inbounds i8, ptr %1960, i64 32
  %1968 = icmp ult ptr %1967, %1938
  br i1 %1968, label %1959, label %1969, !llvm.loop !105

1969:                                             ; preds = %1959, %1951, %1946
  store ptr %1589, ptr %7, align 8, !tbaa !38
  %1970 = ptrtoint ptr %1938 to i64
  %1971 = sub i64 %1970, %39
  %1972 = icmp ugt i64 %1937, %1971
  br i1 %1972, label %1973, label %1987

1973:                                             ; preds = %1969
  %1974 = sub i64 %1970, %1560
  %1975 = icmp ugt i64 %1937, %1974
  br i1 %1975, label %2295, label %1976, !prof !51

1976:                                             ; preds = %1973
  %1977 = ptrtoint ptr %1941 to i64
  %1978 = sub i64 %1977, %39
  %1979 = getelementptr inbounds i8, ptr %36, i64 %1978
  %1980 = getelementptr inbounds i8, ptr %1979, i64 %1935
  %1981 = icmp ugt ptr %1980, %36
  br i1 %1981, label %1983, label %1982

1982:                                             ; preds = %1976
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1938, ptr align 1 %1979, i64 %1935, i1 false)
  br label %2286

1983:                                             ; preds = %1976
  %1984 = sub i64 0, %1978
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1938, ptr align 1 %1979, i64 %1984, i1 false)
  %1985 = getelementptr i8, ptr %1938, i64 %1984
  %1986 = add i64 %1978, %1935
  br label %1987

1987:                                             ; preds = %1983, %1969
  %1988 = phi i64 [ %1986, %1983 ], [ %1935, %1969 ]
  %1989 = phi ptr [ %32, %1983 ], [ %1941, %1969 ]
  %1990 = phi ptr [ %1985, %1983 ], [ %1938, %1969 ]
  %1991 = icmp ugt i64 %1937, 15
  br i1 %1991, label %1992, label %2008, !prof !87

1992:                                             ; preds = %1987
  %1993 = getelementptr inbounds i8, ptr %1990, i64 %1988
  %1994 = load <2 x i64>, ptr %1989, align 1, !tbaa !9
  store <2 x i64> %1994, ptr %1990, align 1, !tbaa !9
  %1995 = icmp ult i64 %1988, 17
  br i1 %1995, label %2286, label %1996

1996:                                             ; preds = %1992
  %1997 = getelementptr inbounds i8, ptr %1990, i64 16
  br label %1998

1998:                                             ; preds = %1998, %1996
  %1999 = phi ptr [ %1997, %1996 ], [ %2006, %1998 ]
  %2000 = phi ptr [ %1989, %1996 ], [ %2004, %1998 ]
  %2001 = getelementptr inbounds i8, ptr %2000, i64 16
  %2002 = load <2 x i64>, ptr %2001, align 1, !tbaa !9
  store <2 x i64> %2002, ptr %1999, align 1, !tbaa !9
  %2003 = getelementptr inbounds i8, ptr %1999, i64 16
  %2004 = getelementptr inbounds i8, ptr %2000, i64 32
  %2005 = load <2 x i64>, ptr %2004, align 1, !tbaa !9
  store <2 x i64> %2005, ptr %2003, align 1, !tbaa !9
  %2006 = getelementptr inbounds i8, ptr %1999, i64 32
  %2007 = icmp ult ptr %2006, %1993
  br i1 %2007, label %1998, label %2286, !llvm.loop !105

2008:                                             ; preds = %1987
  %2009 = icmp ult i64 %1937, 8
  br i1 %2009, label %2010, label %2032

2010:                                             ; preds = %2008
  %2011 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1937
  %2012 = load i32, ptr %2011, align 4, !tbaa !28
  %2013 = load i8, ptr %1989, align 1, !tbaa !9
  store i8 %2013, ptr %1990, align 1, !tbaa !9
  %2014 = getelementptr inbounds i8, ptr %1989, i64 1
  %2015 = load i8, ptr %2014, align 1, !tbaa !9
  %2016 = getelementptr inbounds i8, ptr %1990, i64 1
  store i8 %2015, ptr %2016, align 1, !tbaa !9
  %2017 = getelementptr inbounds i8, ptr %1989, i64 2
  %2018 = load i8, ptr %2017, align 1, !tbaa !9
  %2019 = getelementptr inbounds i8, ptr %1990, i64 2
  store i8 %2018, ptr %2019, align 1, !tbaa !9
  %2020 = getelementptr inbounds i8, ptr %1989, i64 3
  %2021 = load i8, ptr %2020, align 1, !tbaa !9
  %2022 = getelementptr inbounds i8, ptr %1990, i64 3
  store i8 %2021, ptr %2022, align 1, !tbaa !9
  %2023 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1937
  %2024 = load i32, ptr %2023, align 4, !tbaa !28
  %2025 = zext i32 %2024 to i64
  %2026 = getelementptr inbounds i8, ptr %1989, i64 %2025
  %2027 = getelementptr inbounds i8, ptr %1990, i64 4
  %2028 = load i32, ptr %2026, align 1
  store i32 %2028, ptr %2027, align 1
  %2029 = sext i32 %2012 to i64
  %2030 = sub nsw i64 0, %2029
  %2031 = getelementptr inbounds i8, ptr %2026, i64 %2030
  br label %2034

2032:                                             ; preds = %2008
  %2033 = load i64, ptr %1989, align 1
  store i64 %2033, ptr %1990, align 1
  br label %2034

2034:                                             ; preds = %2032, %2010
  %2035 = phi ptr [ %2031, %2010 ], [ %1989, %2032 ]
  %2036 = getelementptr i8, ptr %2035, i64 8
  %2037 = getelementptr i8, ptr %1990, i64 8
  %2038 = icmp ugt i64 %1988, 8
  br i1 %2038, label %2039, label %2286

2039:                                             ; preds = %2034
  %2040 = ptrtoint ptr %2037 to i64
  %2041 = ptrtoint ptr %2036 to i64
  %2042 = sub i64 %2040, %2041
  %2043 = getelementptr inbounds i8, ptr %1990, i64 %1988
  %2044 = icmp slt i64 %2042, 16
  br i1 %2044, label %2045, label %2092

2045:                                             ; preds = %2039
  %2046 = add i64 %1935, %39
  %2047 = tail call i64 @llvm.umin.i64(i64 %1937, i64 %1971)
  %2048 = add i64 %2046, %2047
  %2049 = tail call i64 @llvm.umax.i64(i64 %1937, i64 %1971)
  %2050 = add i64 %2048, %2049
  %2051 = sub i64 %2050, %1937
  %2052 = add i64 %1566, %2049
  %2053 = tail call i64 @llvm.umax.i64(i64 %2051, i64 %2052)
  %2054 = add i64 %2053, -9
  %2055 = add i64 %2049, %39
  %2056 = sub i64 %2054, %2055
  %2057 = lshr i64 %2056, 3
  %2058 = add nuw nsw i64 %2057, 1
  %2059 = icmp ult i64 %2056, 24
  %2060 = icmp ult i64 %2042, 32
  %2061 = or i1 %2059, %2060
  br i1 %2061, label %2082, label %2062

2062:                                             ; preds = %2045
  %2063 = and i64 %2058, 4611686018427387900
  %2064 = shl i64 %2063, 3
  %2065 = getelementptr i8, ptr %2037, i64 %2064
  %2066 = shl i64 %2063, 3
  %2067 = getelementptr i8, ptr %2036, i64 %2066
  br label %2068

2068:                                             ; preds = %2068, %2062
  %2069 = phi i64 [ 0, %2062 ], [ %2078, %2068 ]
  %2070 = shl i64 %2069, 3
  %2071 = getelementptr i8, ptr %2037, i64 %2070
  %2072 = shl i64 %2069, 3
  %2073 = getelementptr i8, ptr %2036, i64 %2072
  %2074 = getelementptr i64, ptr %2073, i64 2
  %2075 = load <2 x i64>, ptr %2073, align 1
  %2076 = load <2 x i64>, ptr %2074, align 1
  %2077 = getelementptr i64, ptr %2071, i64 2
  store <2 x i64> %2075, ptr %2071, align 1
  store <2 x i64> %2076, ptr %2077, align 1
  %2078 = add nuw i64 %2069, 4
  %2079 = icmp eq i64 %2078, %2063
  br i1 %2079, label %2080, label %2068, !llvm.loop !127

2080:                                             ; preds = %2068
  %2081 = icmp eq i64 %2058, %2063
  br i1 %2081, label %2286, label %2082

2082:                                             ; preds = %2045, %2080
  %2083 = phi ptr [ %2037, %2045 ], [ %2065, %2080 ]
  %2084 = phi ptr [ %2036, %2045 ], [ %2067, %2080 ]
  br label %2085

2085:                                             ; preds = %2082, %2085
  %2086 = phi ptr [ %2089, %2085 ], [ %2083, %2082 ]
  %2087 = phi ptr [ %2090, %2085 ], [ %2084, %2082 ]
  %2088 = load i64, ptr %2087, align 1
  store i64 %2088, ptr %2086, align 1
  %2089 = getelementptr inbounds i8, ptr %2086, i64 8
  %2090 = getelementptr inbounds i8, ptr %2087, i64 8
  %2091 = icmp ult ptr %2089, %2043
  br i1 %2091, label %2085, label %2286, !llvm.loop !128

2092:                                             ; preds = %2039
  %2093 = add i64 %1988, -8
  %2094 = load <2 x i64>, ptr %2036, align 1, !tbaa !9
  store <2 x i64> %2094, ptr %2037, align 1, !tbaa !9
  %2095 = icmp ult i64 %2093, 17
  br i1 %2095, label %2286, label %2096

2096:                                             ; preds = %2092
  %2097 = getelementptr inbounds i8, ptr %1990, i64 24
  br label %2098

2098:                                             ; preds = %2098, %2096
  %2099 = phi ptr [ %2097, %2096 ], [ %2106, %2098 ]
  %2100 = phi ptr [ %2036, %2096 ], [ %2104, %2098 ]
  %2101 = getelementptr inbounds i8, ptr %2100, i64 16
  %2102 = load <2 x i64>, ptr %2101, align 1, !tbaa !9
  store <2 x i64> %2102, ptr %2099, align 1, !tbaa !9
  %2103 = getelementptr inbounds i8, ptr %2099, i64 16
  %2104 = getelementptr inbounds i8, ptr %2100, i64 32
  %2105 = load <2 x i64>, ptr %2104, align 1, !tbaa !9
  store <2 x i64> %2105, ptr %2103, align 1, !tbaa !9
  %2106 = getelementptr inbounds i8, ptr %2099, i64 32
  %2107 = icmp ult ptr %2106, %2043
  br i1 %2107, label %2098, label %2286, !llvm.loop !105

2108:                                             ; preds = %1577
  %2109 = load i64, ptr %1583, align 8
  %2110 = getelementptr inbounds i8, ptr %1583, i64 8
  %2111 = load i64, ptr %2110, align 8
  %2112 = getelementptr inbounds i8, ptr %1583, i64 16
  %2113 = load i64, ptr %2112, align 8
  %2114 = getelementptr i8, ptr %1579, i64 %2109
  %2115 = add i64 %2111, %2109
  %2116 = load ptr, ptr %7, align 8, !tbaa !38
  %2117 = getelementptr inbounds i8, ptr %2116, i64 %2109
  %2118 = sub i64 0, %2113
  %2119 = getelementptr inbounds i8, ptr %2114, i64 %2118
  %2120 = icmp ugt ptr %2117, %1580
  %2121 = getelementptr inbounds i8, ptr %1579, i64 %2115
  %2122 = icmp ugt ptr %2121, %1559
  %2123 = select i1 %2120, i1 true, i1 %2122
  br i1 %2123, label %2127, label %2124, !prof !111

2124:                                             ; preds = %2108
  %2125 = load <2 x i64>, ptr %2116, align 1, !tbaa !9
  store <2 x i64> %2125, ptr %1579, align 1, !tbaa !9
  %2126 = icmp ugt i64 %2109, 16
  br i1 %2126, label %2129, label %2147, !prof !51

2127:                                             ; preds = %2108
  %2128 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1579, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %1583, ptr noundef nonnull %7, ptr noundef %1580, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %2286

2129:                                             ; preds = %2124
  %2130 = getelementptr inbounds i8, ptr %1579, i64 16
  %2131 = getelementptr inbounds i8, ptr %2116, i64 16
  %2132 = add i64 %2109, -16
  %2133 = load <2 x i64>, ptr %2131, align 1, !tbaa !9
  store <2 x i64> %2133, ptr %2130, align 1, !tbaa !9
  %2134 = icmp ult i64 %2132, 17
  br i1 %2134, label %2147, label %2135

2135:                                             ; preds = %2129
  %2136 = getelementptr inbounds i8, ptr %1579, i64 32
  br label %2137

2137:                                             ; preds = %2137, %2135
  %2138 = phi ptr [ %2136, %2135 ], [ %2145, %2137 ]
  %2139 = phi ptr [ %2131, %2135 ], [ %2143, %2137 ]
  %2140 = getelementptr inbounds i8, ptr %2139, i64 16
  %2141 = load <2 x i64>, ptr %2140, align 1, !tbaa !9
  store <2 x i64> %2141, ptr %2138, align 1, !tbaa !9
  %2142 = getelementptr inbounds i8, ptr %2138, i64 16
  %2143 = getelementptr inbounds i8, ptr %2139, i64 32
  %2144 = load <2 x i64>, ptr %2143, align 1, !tbaa !9
  store <2 x i64> %2144, ptr %2142, align 1, !tbaa !9
  %2145 = getelementptr inbounds i8, ptr %2138, i64 32
  %2146 = icmp ult ptr %2145, %2114
  br i1 %2146, label %2137, label %2147, !llvm.loop !105

2147:                                             ; preds = %2137, %2129, %2124
  store ptr %2117, ptr %7, align 8, !tbaa !38
  %2148 = ptrtoint ptr %2114 to i64
  %2149 = sub i64 %2148, %39
  %2150 = icmp ugt i64 %2113, %2149
  br i1 %2150, label %2151, label %2165

2151:                                             ; preds = %2147
  %2152 = sub i64 %2148, %1560
  %2153 = icmp ugt i64 %2113, %2152
  br i1 %2153, label %2295, label %2154, !prof !51

2154:                                             ; preds = %2151
  %2155 = ptrtoint ptr %2119 to i64
  %2156 = sub i64 %2155, %39
  %2157 = getelementptr inbounds i8, ptr %36, i64 %2156
  %2158 = getelementptr inbounds i8, ptr %2157, i64 %2111
  %2159 = icmp ugt ptr %2158, %36
  br i1 %2159, label %2161, label %2160

2160:                                             ; preds = %2154
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2114, ptr align 1 %2157, i64 %2111, i1 false)
  br label %2286

2161:                                             ; preds = %2154
  %2162 = sub i64 0, %2156
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2114, ptr align 1 %2157, i64 %2162, i1 false)
  %2163 = getelementptr i8, ptr %2114, i64 %2162
  %2164 = add i64 %2156, %2111
  br label %2165

2165:                                             ; preds = %2161, %2147
  %2166 = phi i64 [ %2164, %2161 ], [ %2111, %2147 ]
  %2167 = phi ptr [ %32, %2161 ], [ %2119, %2147 ]
  %2168 = phi ptr [ %2163, %2161 ], [ %2114, %2147 ]
  %2169 = icmp ugt i64 %2113, 15
  br i1 %2169, label %2170, label %2186, !prof !87

2170:                                             ; preds = %2165
  %2171 = getelementptr inbounds i8, ptr %2168, i64 %2166
  %2172 = load <2 x i64>, ptr %2167, align 1, !tbaa !9
  store <2 x i64> %2172, ptr %2168, align 1, !tbaa !9
  %2173 = icmp ult i64 %2166, 17
  br i1 %2173, label %2286, label %2174

2174:                                             ; preds = %2170
  %2175 = getelementptr inbounds i8, ptr %2168, i64 16
  br label %2176

2176:                                             ; preds = %2176, %2174
  %2177 = phi ptr [ %2175, %2174 ], [ %2184, %2176 ]
  %2178 = phi ptr [ %2167, %2174 ], [ %2182, %2176 ]
  %2179 = getelementptr inbounds i8, ptr %2178, i64 16
  %2180 = load <2 x i64>, ptr %2179, align 1, !tbaa !9
  store <2 x i64> %2180, ptr %2177, align 1, !tbaa !9
  %2181 = getelementptr inbounds i8, ptr %2177, i64 16
  %2182 = getelementptr inbounds i8, ptr %2178, i64 32
  %2183 = load <2 x i64>, ptr %2182, align 1, !tbaa !9
  store <2 x i64> %2183, ptr %2181, align 1, !tbaa !9
  %2184 = getelementptr inbounds i8, ptr %2177, i64 32
  %2185 = icmp ult ptr %2184, %2171
  br i1 %2185, label %2176, label %2286, !llvm.loop !105

2186:                                             ; preds = %2165
  %2187 = icmp ult i64 %2113, 8
  br i1 %2187, label %2188, label %2210

2188:                                             ; preds = %2186
  %2189 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %2113
  %2190 = load i32, ptr %2189, align 4, !tbaa !28
  %2191 = load i8, ptr %2167, align 1, !tbaa !9
  store i8 %2191, ptr %2168, align 1, !tbaa !9
  %2192 = getelementptr inbounds i8, ptr %2167, i64 1
  %2193 = load i8, ptr %2192, align 1, !tbaa !9
  %2194 = getelementptr inbounds i8, ptr %2168, i64 1
  store i8 %2193, ptr %2194, align 1, !tbaa !9
  %2195 = getelementptr inbounds i8, ptr %2167, i64 2
  %2196 = load i8, ptr %2195, align 1, !tbaa !9
  %2197 = getelementptr inbounds i8, ptr %2168, i64 2
  store i8 %2196, ptr %2197, align 1, !tbaa !9
  %2198 = getelementptr inbounds i8, ptr %2167, i64 3
  %2199 = load i8, ptr %2198, align 1, !tbaa !9
  %2200 = getelementptr inbounds i8, ptr %2168, i64 3
  store i8 %2199, ptr %2200, align 1, !tbaa !9
  %2201 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %2113
  %2202 = load i32, ptr %2201, align 4, !tbaa !28
  %2203 = zext i32 %2202 to i64
  %2204 = getelementptr inbounds i8, ptr %2167, i64 %2203
  %2205 = getelementptr inbounds i8, ptr %2168, i64 4
  %2206 = load i32, ptr %2204, align 1
  store i32 %2206, ptr %2205, align 1
  %2207 = sext i32 %2190 to i64
  %2208 = sub nsw i64 0, %2207
  %2209 = getelementptr inbounds i8, ptr %2204, i64 %2208
  br label %2212

2210:                                             ; preds = %2186
  %2211 = load i64, ptr %2167, align 1
  store i64 %2211, ptr %2168, align 1
  br label %2212

2212:                                             ; preds = %2210, %2188
  %2213 = phi ptr [ %2209, %2188 ], [ %2167, %2210 ]
  %2214 = getelementptr i8, ptr %2213, i64 8
  %2215 = getelementptr i8, ptr %2168, i64 8
  %2216 = icmp ugt i64 %2166, 8
  br i1 %2216, label %2217, label %2286

2217:                                             ; preds = %2212
  %2218 = ptrtoint ptr %2215 to i64
  %2219 = ptrtoint ptr %2214 to i64
  %2220 = sub i64 %2218, %2219
  %2221 = getelementptr inbounds i8, ptr %2168, i64 %2166
  %2222 = icmp slt i64 %2220, 16
  br i1 %2222, label %2223, label %2270

2223:                                             ; preds = %2217
  %2224 = add i64 %2111, %39
  %2225 = tail call i64 @llvm.umin.i64(i64 %2113, i64 %2149)
  %2226 = add i64 %2224, %2225
  %2227 = tail call i64 @llvm.umax.i64(i64 %2113, i64 %2149)
  %2228 = add i64 %2226, %2227
  %2229 = sub i64 %2228, %2113
  %2230 = add i64 %1567, %2227
  %2231 = tail call i64 @llvm.umax.i64(i64 %2229, i64 %2230)
  %2232 = add i64 %2231, -9
  %2233 = add i64 %2227, %39
  %2234 = sub i64 %2232, %2233
  %2235 = lshr i64 %2234, 3
  %2236 = add nuw nsw i64 %2235, 1
  %2237 = icmp ult i64 %2234, 24
  %2238 = icmp ult i64 %2220, 32
  %2239 = or i1 %2237, %2238
  br i1 %2239, label %2260, label %2240

2240:                                             ; preds = %2223
  %2241 = and i64 %2236, 4611686018427387900
  %2242 = shl i64 %2241, 3
  %2243 = getelementptr i8, ptr %2215, i64 %2242
  %2244 = shl i64 %2241, 3
  %2245 = getelementptr i8, ptr %2214, i64 %2244
  br label %2246

2246:                                             ; preds = %2246, %2240
  %2247 = phi i64 [ 0, %2240 ], [ %2256, %2246 ]
  %2248 = shl i64 %2247, 3
  %2249 = getelementptr i8, ptr %2215, i64 %2248
  %2250 = shl i64 %2247, 3
  %2251 = getelementptr i8, ptr %2214, i64 %2250
  %2252 = getelementptr i64, ptr %2251, i64 2
  %2253 = load <2 x i64>, ptr %2251, align 1
  %2254 = load <2 x i64>, ptr %2252, align 1
  %2255 = getelementptr i64, ptr %2249, i64 2
  store <2 x i64> %2253, ptr %2249, align 1
  store <2 x i64> %2254, ptr %2255, align 1
  %2256 = add nuw i64 %2247, 4
  %2257 = icmp eq i64 %2256, %2241
  br i1 %2257, label %2258, label %2246, !llvm.loop !129

2258:                                             ; preds = %2246
  %2259 = icmp eq i64 %2236, %2241
  br i1 %2259, label %2286, label %2260

2260:                                             ; preds = %2223, %2258
  %2261 = phi ptr [ %2215, %2223 ], [ %2243, %2258 ]
  %2262 = phi ptr [ %2214, %2223 ], [ %2245, %2258 ]
  br label %2263

2263:                                             ; preds = %2260, %2263
  %2264 = phi ptr [ %2267, %2263 ], [ %2261, %2260 ]
  %2265 = phi ptr [ %2268, %2263 ], [ %2262, %2260 ]
  %2266 = load i64, ptr %2265, align 1
  store i64 %2266, ptr %2264, align 1
  %2267 = getelementptr inbounds i8, ptr %2264, i64 8
  %2268 = getelementptr inbounds i8, ptr %2265, i64 8
  %2269 = icmp ult ptr %2267, %2221
  br i1 %2269, label %2263, label %2286, !llvm.loop !130

2270:                                             ; preds = %2217
  %2271 = add i64 %2166, -8
  %2272 = load <2 x i64>, ptr %2214, align 1, !tbaa !9
  store <2 x i64> %2272, ptr %2215, align 1, !tbaa !9
  %2273 = icmp ult i64 %2271, 17
  br i1 %2273, label %2286, label %2274

2274:                                             ; preds = %2270
  %2275 = getelementptr inbounds i8, ptr %2168, i64 24
  br label %2276

2276:                                             ; preds = %2276, %2274
  %2277 = phi ptr [ %2275, %2274 ], [ %2284, %2276 ]
  %2278 = phi ptr [ %2214, %2274 ], [ %2282, %2276 ]
  %2279 = getelementptr inbounds i8, ptr %2278, i64 16
  %2280 = load <2 x i64>, ptr %2279, align 1, !tbaa !9
  store <2 x i64> %2280, ptr %2277, align 1, !tbaa !9
  %2281 = getelementptr inbounds i8, ptr %2277, i64 16
  %2282 = getelementptr inbounds i8, ptr %2278, i64 32
  %2283 = load <2 x i64>, ptr %2282, align 1, !tbaa !9
  store <2 x i64> %2283, ptr %2281, align 1, !tbaa !9
  %2284 = getelementptr inbounds i8, ptr %2277, i64 32
  %2285 = icmp ult ptr %2284, %2221
  br i1 %2285, label %2276, label %2286, !llvm.loop !105

2286:                                             ; preds = %2276, %2263, %2176, %2098, %2085, %1998, %2258, %2080, %2127, %2160, %2170, %2212, %2270, %1949, %1982, %1992, %2034, %2092
  %2287 = phi i64 [ %1950, %1949 ], [ %1939, %1982 ], [ %1939, %2034 ], [ %1939, %1992 ], [ %1939, %2092 ], [ %2128, %2127 ], [ %2115, %2160 ], [ %2115, %2212 ], [ %2115, %2170 ], [ %2115, %2270 ], [ %1939, %2080 ], [ %2115, %2258 ], [ %1939, %1998 ], [ %1939, %2085 ], [ %1939, %2098 ], [ %2115, %2176 ], [ %2115, %2263 ], [ %2115, %2276 ]
  %2288 = icmp ult i64 %2287, -119
  %2289 = getelementptr inbounds i8, ptr %1579, i64 %2287
  br i1 %2288, label %2290, label %2295

2290:                                             ; preds = %2286, %1928
  %2291 = phi ptr [ %1563, %1928 ], [ %1580, %2286 ]
  %2292 = phi ptr [ %1931, %1928 ], [ %2289, %2286 ]
  %2293 = add nsw i32 %1578, 1
  %2294 = icmp eq i32 %2293, %5
  br i1 %2294, label %1568, label %1577, !llvm.loop !131

2295:                                             ; preds = %1379, %1198, %1010, %1514, %1145, %814, %2151, %1973, %1793, %2286, %1928, %1597, %1542, %126, %113, %62, %38
  %2296 = phi i64 [ -20, %126 ], [ -20, %1542 ], [ -20, %38 ], [ -20, %62 ], [ -20, %113 ], [ -20, %2151 ], [ -20, %1973 ], [ -20, %1793 ], [ %2287, %2286 ], [ -70, %1597 ], [ %1929, %1928 ], [ -20, %1379 ], [ -20, %1198 ], [ -20, %1010 ], [ %1515, %1514 ], [ %1146, %1145 ], [ -70, %814 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #16
  br label %2341

2297:                                             ; preds = %1568, %25
  %2298 = phi ptr [ %1576, %1568 ], [ %28, %25 ]
  %2299 = phi i32 [ %1575, %1568 ], [ %17, %25 ]
  %2300 = phi ptr [ %1569, %1568 ], [ %30, %25 ]
  %2301 = phi ptr [ %1570, %1568 ], [ %1, %25 ]
  %2302 = icmp eq i32 %2299, 2
  br i1 %2302, label %2305, label %2303

2303:                                             ; preds = %2297
  %2304 = ptrtoint ptr %26 to i64
  br label %2321

2305:                                             ; preds = %2297
  %2306 = ptrtoint ptr %2300 to i64
  %2307 = ptrtoint ptr %2298 to i64
  %2308 = sub i64 %2306, %2307
  %2309 = ptrtoint ptr %26 to i64
  %2310 = ptrtoint ptr %2301 to i64
  %2311 = sub i64 %2309, %2310
  %2312 = icmp ugt i64 %2308, %2311
  br i1 %2312, label %2341, label %2313

2313:                                             ; preds = %2305
  %2314 = icmp eq ptr %2301, null
  br i1 %2314, label %2317, label %2315

2315:                                             ; preds = %2313
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2301, ptr align 1 %2298, i64 %2308, i1 false)
  %2316 = getelementptr inbounds i8, ptr %2301, i64 %2308
  br label %2317

2317:                                             ; preds = %2315, %2313
  %2318 = phi ptr [ %2316, %2315 ], [ null, %2313 ]
  %2319 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %2320 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  br label %2321

2321:                                             ; preds = %2317, %2303
  %2322 = phi i64 [ %2304, %2303 ], [ %2309, %2317 ]
  %2323 = phi ptr [ %2298, %2303 ], [ %2319, %2317 ]
  %2324 = phi ptr [ %2300, %2303 ], [ %2320, %2317 ]
  %2325 = phi ptr [ %2301, %2303 ], [ %2318, %2317 ]
  %2326 = ptrtoint ptr %2324 to i64
  %2327 = ptrtoint ptr %2323 to i64
  %2328 = sub i64 %2326, %2327
  %2329 = ptrtoint ptr %2325 to i64
  %2330 = sub i64 %2322, %2329
  %2331 = icmp ugt i64 %2328, %2330
  br i1 %2331, label %2341, label %2332

2332:                                             ; preds = %2321
  %2333 = icmp eq ptr %2325, null
  br i1 %2333, label %2337, label %2334

2334:                                             ; preds = %2332
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2325, ptr align 1 %2323, i64 %2328, i1 false)
  %2335 = getelementptr inbounds i8, ptr %2325, i64 %2328
  %2336 = ptrtoint ptr %2335 to i64
  br label %2337

2337:                                             ; preds = %2334, %2332
  %2338 = phi i64 [ 0, %2332 ], [ %2336, %2334 ]
  %2339 = ptrtoint ptr %1 to i64
  %2340 = sub i64 %2338, %2339
  br label %2341

2341:                                             ; preds = %2295, %2305, %2321, %2337
  %2342 = phi i64 [ %2340, %2337 ], [ %2296, %2295 ], [ -70, %2321 ], [ -70, %2305 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %2343

2343:                                             ; preds = %2341, %13
  %2344 = phi i64 [ %14, %13 ], [ %2342, %2341 ]
  ret i64 %2344
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #7 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca %struct.seq_t, align 8
  %9 = alloca %struct.seq_t, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.seqState_t, align 8
  %12 = getelementptr i8, ptr %0, i64 30180
  %13 = load i32, ptr %12, align 4, !tbaa !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %1546

17:                                               ; preds = %6
  %18 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  store ptr %21, ptr %10, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = icmp eq i32 %5, 0
  br i1 %30, label %1499, label %31

31:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %11) #16
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %32, align 4, !tbaa !62
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 0
  %34 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 0
  %35 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 1
  %36 = load <2 x i32>, ptr %33, align 4, !tbaa !28
  %37 = zext <2 x i32> %36 to <2 x i64>
  store <2 x i64> %37, ptr %34, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  %39 = load i32, ptr %38, align 4, !tbaa !28
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 2
  store i64 %40, ptr %41, align 8, !tbaa !44
  %42 = icmp eq i64 %4, 0
  br i1 %42, label %1497, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 3
  store ptr %3, ptr %44, align 8, !tbaa !72
  %45 = getelementptr inbounds i8, ptr %3, i64 8
  %46 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 4
  store ptr %45, ptr %46, align 8, !tbaa !74
  %47 = icmp ugt i64 %4, 7
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = add nsw i64 %4, -8
  %50 = getelementptr inbounds i8, ptr %3, i64 %49
  %51 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !75
  %52 = load i64, ptr %50, align 1
  store i64 %52, ptr %11, align 8, !tbaa !76
  %53 = icmp ult i64 %52, 72057594037927936
  br i1 %53, label %1497, label %112

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  store ptr %3, ptr %55, align 8, !tbaa !75
  %56 = load i8, ptr %3, align 1, !tbaa !9
  %57 = zext i8 %56 to i64
  store i64 %57, ptr %11, align 8, !tbaa !76
  switch i64 %4, label %99 [
    i64 7, label %58
    i64 6, label %64
    i64 5, label %71
    i64 4, label %78
    i64 3, label %85
    i64 2, label %92
  ]

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %3, i64 6
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 48
  %63 = or disjoint i64 %62, %57
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i64 [ %57, %54 ], [ %63, %58 ]
  %66 = getelementptr inbounds i8, ptr %3, i64 5
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 40
  %70 = add nuw nsw i64 %69, %65
  br label %71

71:                                               ; preds = %64, %54
  %72 = phi i64 [ %57, %54 ], [ %70, %64 ]
  %73 = getelementptr inbounds i8, ptr %3, i64 4
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 32
  %77 = add nuw nsw i64 %76, %72
  br label %78

78:                                               ; preds = %71, %54
  %79 = phi i64 [ %57, %54 ], [ %77, %71 ]
  %80 = getelementptr inbounds i8, ptr %3, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 24
  %84 = add nuw nsw i64 %83, %79
  br label %85

85:                                               ; preds = %78, %54
  %86 = phi i64 [ %57, %54 ], [ %84, %78 ]
  %87 = getelementptr inbounds i8, ptr %3, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 16
  %91 = add nuw nsw i64 %90, %86
  br label %92

92:                                               ; preds = %85, %54
  %93 = phi i64 [ %57, %54 ], [ %91, %85 ]
  %94 = getelementptr inbounds i8, ptr %3, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = zext i8 %95 to i64
  %97 = shl nuw nsw i64 %96, 8
  %98 = add nuw nsw i64 %97, %93
  store i64 %98, ptr %11, align 8, !tbaa !76
  br label %99

99:                                               ; preds = %92, %54
  %100 = phi i64 [ %98, %92 ], [ %57, %54 ]
  %101 = getelementptr i8, ptr %3, i64 %4
  %102 = getelementptr i8, ptr %101, i64 -1
  %103 = load i8, ptr %102, align 1, !tbaa !9
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %1497, label %105

105:                                              ; preds = %99
  %106 = zext i8 %103 to i32
  %107 = tail call i32 @llvm.ctlz.i32(i32 %106, i1 true), !range !55
  %108 = trunc i64 %4 to i32
  %109 = shl nuw nsw i32 %108, 3
  %110 = sub nsw i32 %107, %109
  %111 = add nsw i32 %110, 41
  br label %119

112:                                              ; preds = %48
  %113 = lshr i64 %52, 56
  %114 = trunc i64 %113 to i32
  %115 = tail call i32 @llvm.ctlz.i32(i32 %114, i1 true), !range !55
  %116 = xor i32 %115, 31
  %117 = sub nuw nsw i32 8, %116
  %118 = icmp ult i64 %4, -119
  br i1 %118, label %119, label %1497

119:                                              ; preds = %112, %105
  %120 = phi i64 [ 0, %105 ], [ %49, %112 ]
  %121 = phi i32 [ %111, %105 ], [ %117, %112 ]
  %122 = phi i64 [ %100, %105 ], [ %52, %112 ]
  %123 = getelementptr inbounds i8, ptr %3, i64 %120
  %124 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 1
  %125 = load ptr, ptr %0, align 8, !tbaa !77
  %126 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !63
  %128 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 1
  %129 = add i32 %127, %121
  %130 = sub i32 0, %129
  %131 = and i32 %130, 63
  %132 = zext nneg i32 %131 to i64
  %133 = lshr i64 %122, %132
  %134 = zext nneg i32 %127 to i64
  %135 = shl nsw i64 -1, %134
  %136 = xor i64 %135, -1
  %137 = and i64 %133, %136
  store i64 %137, ptr %124, align 8, !tbaa !78
  %138 = icmp ugt i32 %129, 64
  %139 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  br i1 %138, label %140, label %141, !prof !51

140:                                              ; preds = %119
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75
  br label %166

141:                                              ; preds = %119
  %142 = icmp slt i64 %120, 8
  br i1 %142, label %150, label %143

143:                                              ; preds = %141
  %144 = lshr i32 %129, 3
  %145 = zext nneg i32 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %123, i64 %146
  store ptr %147, ptr %139, align 8, !tbaa !75
  %148 = and i32 %129, 7
  store i32 %148, ptr %128, align 8, !tbaa !80
  %149 = load i64, ptr %147, align 1, !tbaa !44
  store i64 %149, ptr %11, align 8, !tbaa !76
  br label %166

150:                                              ; preds = %141
  %151 = icmp eq i64 %120, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %150
  %153 = lshr i32 %129, 3
  %154 = zext nneg i32 %153 to i64
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %123, i64 %155
  %157 = icmp ult ptr %156, %3
  %158 = trunc i64 %120 to i32
  %159 = select i1 %157, i32 %158, i32 %153
  %160 = zext i32 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %123, i64 %161
  store ptr %162, ptr %139, align 8, !tbaa !75
  %163 = shl i32 %159, 3
  %164 = sub i32 %129, %163
  store i32 %164, ptr %128, align 8, !tbaa !80
  %165 = load i64, ptr %162, align 1, !tbaa !44
  store i64 %165, ptr %11, align 8, !tbaa !76
  br label %166

166:                                              ; preds = %152, %150, %143, %140
  %167 = phi ptr [ @BIT_reloadDStream.zeroFilled, %140 ], [ %147, %143 ], [ %3, %150 ], [ %162, %152 ]
  %168 = phi i32 [ %129, %140 ], [ %148, %143 ], [ %129, %150 ], [ %164, %152 ]
  %169 = phi i64 [ %122, %140 ], [ %149, %143 ], [ %122, %150 ], [ %165, %152 ]
  %170 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %125, i64 1
  %171 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 1, i32 1
  store ptr %170, ptr %171, align 8, !tbaa !81
  %172 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 2
  %173 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !68
  %175 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %174, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !63
  %177 = add i32 %176, %168
  %178 = sub i32 0, %177
  %179 = and i32 %178, 63
  %180 = zext nneg i32 %179 to i64
  %181 = lshr i64 %169, %180
  %182 = zext nneg i32 %176 to i64
  %183 = shl nsw i64 -1, %182
  %184 = xor i64 %183, -1
  %185 = and i64 %181, %184
  store i64 %185, ptr %172, align 8, !tbaa !78
  %186 = icmp ugt i32 %177, 64
  br i1 %186, label %187, label %188, !prof !51

187:                                              ; preds = %166
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75
  br label %216

188:                                              ; preds = %166
  %189 = icmp ult ptr %167, %45
  br i1 %189, label %197, label %190

190:                                              ; preds = %188
  %191 = lshr i32 %177, 3
  %192 = zext nneg i32 %191 to i64
  %193 = sub nsw i64 0, %192
  %194 = getelementptr inbounds i8, ptr %167, i64 %193
  store ptr %194, ptr %139, align 8, !tbaa !75
  %195 = and i32 %177, 7
  %196 = load i64, ptr %194, align 1, !tbaa !44
  store i64 %196, ptr %11, align 8, !tbaa !76
  br label %216

197:                                              ; preds = %188
  %198 = icmp eq ptr %167, %3
  br i1 %198, label %216, label %199

199:                                              ; preds = %197
  %200 = lshr i32 %177, 3
  %201 = zext nneg i32 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, ptr %167, i64 %202
  %204 = icmp ult ptr %203, %3
  %205 = ptrtoint ptr %167 to i64
  %206 = ptrtoint ptr %3 to i64
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = select i1 %204, i32 %208, i32 %200
  %210 = zext i32 %209 to i64
  %211 = sub nsw i64 0, %210
  %212 = getelementptr inbounds i8, ptr %167, i64 %211
  store ptr %212, ptr %139, align 8, !tbaa !75
  %213 = shl i32 %209, 3
  %214 = sub i32 %177, %213
  %215 = load i64, ptr %212, align 1, !tbaa !44
  store i64 %215, ptr %11, align 8, !tbaa !76
  br label %216

216:                                              ; preds = %199, %197, %190, %187
  %217 = phi ptr [ @BIT_reloadDStream.zeroFilled, %187 ], [ %194, %190 ], [ %3, %197 ], [ %212, %199 ]
  %218 = phi i32 [ %177, %187 ], [ %195, %190 ], [ %177, %197 ], [ %214, %199 ]
  %219 = phi i64 [ %169, %187 ], [ %196, %190 ], [ %169, %197 ], [ %215, %199 ]
  %220 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %174, i64 1
  %221 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 2, i32 1
  store ptr %220, ptr %221, align 8, !tbaa !81
  %222 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 3
  %223 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !82
  %225 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %224, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !63
  %227 = add i32 %226, %218
  %228 = sub i32 0, %227
  %229 = and i32 %228, 63
  %230 = zext nneg i32 %229 to i64
  %231 = lshr i64 %219, %230
  %232 = zext nneg i32 %226 to i64
  %233 = shl nsw i64 -1, %232
  %234 = xor i64 %233, -1
  %235 = and i64 %231, %234
  store i32 %227, ptr %128, align 8, !tbaa !80
  store i64 %235, ptr %222, align 8, !tbaa !78
  %236 = icmp ugt i32 %227, 64
  br i1 %236, label %237, label %238, !prof !51

237:                                              ; preds = %216
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75
  br label %266

238:                                              ; preds = %216
  %239 = icmp ult ptr %217, %45
  br i1 %239, label %247, label %240

240:                                              ; preds = %238
  %241 = lshr i32 %227, 3
  %242 = zext nneg i32 %241 to i64
  %243 = sub nsw i64 0, %242
  %244 = getelementptr inbounds i8, ptr %217, i64 %243
  store ptr %244, ptr %139, align 8, !tbaa !75
  %245 = and i32 %227, 7
  store i32 %245, ptr %128, align 8, !tbaa !80
  %246 = load i64, ptr %244, align 1, !tbaa !44
  store i64 %246, ptr %11, align 8, !tbaa !76
  br label %266

247:                                              ; preds = %238
  %248 = icmp eq ptr %217, %3
  br i1 %248, label %266, label %249

249:                                              ; preds = %247
  %250 = lshr i32 %227, 3
  %251 = zext nneg i32 %250 to i64
  %252 = sub nsw i64 0, %251
  %253 = getelementptr inbounds i8, ptr %217, i64 %252
  %254 = icmp ult ptr %253, %3
  %255 = ptrtoint ptr %217 to i64
  %256 = ptrtoint ptr %3 to i64
  %257 = sub i64 %255, %256
  %258 = trunc i64 %257 to i32
  %259 = select i1 %254, i32 %258, i32 %250
  %260 = zext i32 %259 to i64
  %261 = sub nsw i64 0, %260
  %262 = getelementptr inbounds i8, ptr %217, i64 %261
  store ptr %262, ptr %139, align 8, !tbaa !75
  %263 = shl i32 %259, 3
  %264 = sub i32 %227, %263
  store i32 %264, ptr %128, align 8, !tbaa !80
  %265 = load i64, ptr %262, align 1, !tbaa !44
  store i64 %265, ptr %11, align 8, !tbaa !76
  br label %266

266:                                              ; preds = %249, %247, %240, %237
  %267 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %224, i64 1
  %268 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 3, i32 1
  store ptr %267, ptr %268, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !132
  %269 = getelementptr inbounds i8, ptr %7, i64 8
  %270 = getelementptr inbounds i8, ptr %7, i64 16
  %271 = ptrtoint ptr %25 to i64
  %272 = ptrtoint ptr %27 to i64
  br label %273

273:                                              ; preds = %704, %266
  %274 = phi i32 [ %5, %266 ], [ %705, %704 ]
  %275 = phi ptr [ %1, %266 ], [ %699, %704 ]
  %276 = icmp eq i32 %274, 1
  %277 = load ptr, ptr %171, align 8, !tbaa !92, !noalias !133
  %278 = load i64, ptr %124, align 8, !tbaa !97, !noalias !133
  %279 = load ptr, ptr %268, align 8, !tbaa !98, !noalias !133
  %280 = load i64, ptr %222, align 8, !tbaa !99, !noalias !133
  %281 = load ptr, ptr %221, align 8, !tbaa !100, !noalias !133
  %282 = load i64, ptr %172, align 8, !tbaa !101, !noalias !133
  %283 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %279, i64 %280, i32 3
  %284 = load i32, ptr %283, align 4, !tbaa !41, !noalias !133
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %277, i64 %278, i32 3
  %287 = load i32, ptr %286, align 4, !tbaa !41, !noalias !133
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %281, i64 %282, i32 3
  %290 = load i32, ptr %289, align 4, !tbaa !41, !noalias !133
  %291 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %277, i64 %278, i32 1
  %292 = load i8, ptr %291, align 2, !tbaa !58, !noalias !133
  %293 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %279, i64 %280, i32 1
  %294 = load i8, ptr %293, align 2, !tbaa !58, !noalias !133
  %295 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %281, i64 %282, i32 1
  %296 = load i8, ptr %295, align 2, !tbaa !58, !noalias !133
  %297 = zext i8 %292 to i32
  %298 = zext i8 %294 to i32
  %299 = add i8 %294, %292
  %300 = add i8 %299, %296
  %301 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %281, i64 %282
  %302 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %279, i64 %280
  %303 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %277, i64 %278
  %304 = load i16, ptr %303, align 4, !tbaa !57, !noalias !133
  %305 = load i16, ptr %302, align 4, !tbaa !57, !noalias !133
  %306 = load i16, ptr %301, align 4, !tbaa !57, !noalias !133
  %307 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %277, i64 %278, i32 2
  %308 = load i8, ptr %307, align 1, !tbaa !56, !noalias !133
  %309 = zext i8 %308 to i32
  %310 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %279, i64 %280, i32 2
  %311 = load i8, ptr %310, align 1, !tbaa !56, !noalias !133
  %312 = zext i8 %311 to i32
  %313 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %281, i64 %282, i32 2
  %314 = load i8, ptr %313, align 1, !tbaa !56, !noalias !133
  %315 = zext i8 %314 to i32
  %316 = icmp ugt i8 %296, 1
  br i1 %316, label %317, label %332

317:                                              ; preds = %273
  %318 = zext i8 %296 to i32
  %319 = load i64, ptr %11, align 8, !tbaa !76, !noalias !133
  %320 = load i32, ptr %128, align 8, !tbaa !80, !noalias !133
  %321 = and i32 %320, 63
  %322 = zext nneg i32 %321 to i64
  %323 = shl i64 %319, %322
  %324 = sub nsw i32 0, %318
  %325 = and i32 %324, 63
  %326 = zext nneg i32 %325 to i64
  %327 = lshr i64 %323, %326
  %328 = add i32 %320, %318
  store i32 %328, ptr %128, align 8, !tbaa !80, !noalias !133
  %329 = zext i32 %290 to i64
  %330 = add i64 %327, %329
  %331 = load i64, ptr %35, align 8, !tbaa !44, !noalias !133
  store i64 %331, ptr %41, align 8, !tbaa !44, !noalias !133
  br label %371

332:                                              ; preds = %273
  %333 = icmp eq i32 %287, 0
  %334 = icmp eq i8 %296, 0
  br i1 %334, label %335, label %342, !prof !87

335:                                              ; preds = %332
  %336 = zext i1 %333 to i64
  %337 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !44, !noalias !133
  %339 = xor i1 %333, true
  %340 = zext i1 %339 to i64
  %341 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %340
  br label %371

342:                                              ; preds = %332
  %343 = zext i1 %333 to i32
  %344 = add i32 %290, %343
  %345 = zext i32 %344 to i64
  %346 = load i64, ptr %11, align 8, !tbaa !76, !noalias !133
  %347 = load i32, ptr %128, align 8, !tbaa !80, !noalias !133
  %348 = and i32 %347, 63
  %349 = zext nneg i32 %348 to i64
  %350 = shl i64 %346, %349
  %351 = lshr i64 %350, 63
  %352 = add i32 %347, 1
  store i32 %352, ptr %128, align 8, !tbaa !80, !noalias !133
  %353 = add nuw nsw i64 %351, %345
  %354 = icmp eq i64 %353, 3
  br i1 %354, label %355, label %361

355:                                              ; preds = %342
  %356 = load i64, ptr %34, align 8, !tbaa !44, !noalias !133
  %357 = add i64 %356, -1
  %358 = icmp eq i64 %357, 0
  %359 = sext i1 %358 to i64
  %360 = add i64 %357, %359
  br label %368

361:                                              ; preds = %342
  %362 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %353
  %363 = load i64, ptr %362, align 8, !tbaa !44, !noalias !133
  %364 = icmp eq i64 %363, 0
  %365 = sext i1 %364 to i64
  %366 = add i64 %363, %365
  %367 = icmp eq i64 %353, 1
  br i1 %367, label %371, label %368

368:                                              ; preds = %361, %355
  %369 = phi i64 [ %360, %355 ], [ %366, %361 ]
  %370 = load i64, ptr %35, align 8, !tbaa !44, !noalias !133
  store i64 %370, ptr %41, align 8, !tbaa !44, !noalias !133
  br label %371

371:                                              ; preds = %368, %361, %335, %317
  %372 = phi ptr [ %341, %335 ], [ %34, %317 ], [ %34, %368 ], [ %34, %361 ]
  %373 = phi i64 [ %338, %335 ], [ %330, %317 ], [ %369, %368 ], [ %366, %361 ]
  %374 = load i64, ptr %372, align 8, !tbaa !44, !noalias !133
  store i64 %374, ptr %35, align 8, !tbaa !44, !noalias !133
  store i64 %373, ptr %34, align 8, !tbaa !44, !noalias !133
  %375 = icmp eq i8 %294, 0
  br i1 %375, label %388, label %376

376:                                              ; preds = %371
  %377 = load i64, ptr %11, align 8, !tbaa !76, !noalias !133
  %378 = load i32, ptr %128, align 8, !tbaa !80, !noalias !133
  %379 = and i32 %378, 63
  %380 = zext nneg i32 %379 to i64
  %381 = shl i64 %377, %380
  %382 = sub nsw i32 0, %298
  %383 = and i32 %382, 63
  %384 = zext nneg i32 %383 to i64
  %385 = lshr i64 %381, %384
  %386 = add i32 %378, %298
  store i32 %386, ptr %128, align 8, !tbaa !80, !noalias !133
  %387 = add i64 %385, %285
  br label %388

388:                                              ; preds = %376, %371
  %389 = phi i64 [ %285, %371 ], [ %387, %376 ]
  %390 = icmp ugt i8 %300, 30
  br i1 %390, label %391, label %426, !prof !51

391:                                              ; preds = %388
  %392 = load i32, ptr %128, align 8, !tbaa !80, !noalias !133
  %393 = icmp ugt i32 %392, 64
  br i1 %393, label %394, label %395, !prof !51

394:                                              ; preds = %391
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75, !noalias !133
  br label %426

395:                                              ; preds = %391
  %396 = load ptr, ptr %139, align 8, !tbaa !75, !noalias !133
  %397 = load ptr, ptr %46, align 8, !tbaa !74, !noalias !133
  %398 = icmp ult ptr %396, %397
  br i1 %398, label %406, label %399

399:                                              ; preds = %395
  %400 = lshr i32 %392, 3
  %401 = zext nneg i32 %400 to i64
  %402 = sub nsw i64 0, %401
  %403 = getelementptr inbounds i8, ptr %396, i64 %402
  store ptr %403, ptr %139, align 8, !tbaa !75, !noalias !133
  %404 = and i32 %392, 7
  store i32 %404, ptr %128, align 8, !tbaa !80, !noalias !133
  %405 = load i64, ptr %403, align 1, !tbaa !44, !noalias !133
  store i64 %405, ptr %11, align 8, !tbaa !76, !noalias !133
  br label %426

406:                                              ; preds = %395
  %407 = load ptr, ptr %44, align 8, !tbaa !72, !noalias !133
  %408 = icmp eq ptr %396, %407
  br i1 %408, label %426, label %409

409:                                              ; preds = %406
  %410 = lshr i32 %392, 3
  %411 = zext nneg i32 %410 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %396, i64 %412
  %414 = icmp ult ptr %413, %407
  %415 = ptrtoint ptr %396 to i64
  %416 = ptrtoint ptr %407 to i64
  %417 = sub i64 %415, %416
  %418 = trunc i64 %417 to i32
  %419 = select i1 %414, i32 %418, i32 %410
  %420 = zext i32 %419 to i64
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %396, i64 %421
  store ptr %422, ptr %139, align 8, !tbaa !75, !noalias !133
  %423 = shl i32 %419, 3
  %424 = sub i32 %392, %423
  store i32 %424, ptr %128, align 8, !tbaa !80, !noalias !133
  %425 = load i64, ptr %422, align 1, !tbaa !44, !noalias !133
  store i64 %425, ptr %11, align 8, !tbaa !76, !noalias !133
  br label %426

426:                                              ; preds = %409, %406, %399, %394, %388
  %427 = icmp eq i8 %292, 0
  br i1 %427, label %440, label %428

428:                                              ; preds = %426
  %429 = load i64, ptr %11, align 8, !tbaa !76, !noalias !133
  %430 = load i32, ptr %128, align 8, !tbaa !80, !noalias !133
  %431 = and i32 %430, 63
  %432 = zext nneg i32 %431 to i64
  %433 = shl i64 %429, %432
  %434 = sub nsw i32 0, %297
  %435 = and i32 %434, 63
  %436 = zext nneg i32 %435 to i64
  %437 = lshr i64 %433, %436
  %438 = add i32 %430, %297
  store i32 %438, ptr %128, align 8, !tbaa !80, !noalias !133
  %439 = add i64 %437, %288
  br label %440

440:                                              ; preds = %428, %426
  %441 = phi i64 [ %288, %426 ], [ %439, %428 ]
  br i1 %276, label %516, label %442

442:                                              ; preds = %440
  %443 = load i64, ptr %11, align 8, !tbaa !76, !noalias !133
  %444 = load i32, ptr %128, align 8, !tbaa !80, !noalias !133
  %445 = add i32 %444, %309
  %446 = sub i32 0, %445
  %447 = and i32 %446, 63
  %448 = zext nneg i32 %447 to i64
  %449 = lshr i64 %443, %448
  %450 = zext nneg i8 %308 to i64
  %451 = shl nsw i64 -1, %450
  %452 = xor i64 %451, -1
  %453 = and i64 %449, %452
  %454 = zext i16 %304 to i64
  %455 = add nuw i64 %453, %454
  store i64 %455, ptr %124, align 8, !tbaa !78, !noalias !133
  %456 = add i32 %445, %312
  %457 = sub i32 0, %456
  %458 = and i32 %457, 63
  %459 = zext nneg i32 %458 to i64
  %460 = lshr i64 %443, %459
  %461 = zext nneg i8 %311 to i64
  %462 = shl nsw i64 -1, %461
  %463 = xor i64 %462, -1
  %464 = and i64 %460, %463
  %465 = zext i16 %305 to i64
  %466 = add nuw i64 %464, %465
  store i64 %466, ptr %222, align 8, !tbaa !78, !noalias !133
  %467 = add i32 %456, %315
  %468 = sub i32 0, %467
  %469 = and i32 %468, 63
  %470 = zext nneg i32 %469 to i64
  %471 = lshr i64 %443, %470
  %472 = zext nneg i8 %314 to i64
  %473 = shl nsw i64 -1, %472
  %474 = xor i64 %473, -1
  %475 = and i64 %471, %474
  store i32 %467, ptr %128, align 8, !tbaa !80, !noalias !133
  %476 = zext i16 %306 to i64
  %477 = add nuw i64 %475, %476
  store i64 %477, ptr %172, align 8, !tbaa !78, !noalias !133
  %478 = icmp ugt i32 %467, 64
  br i1 %478, label %479, label %480, !prof !51

479:                                              ; preds = %442
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75, !noalias !133
  br label %511

480:                                              ; preds = %442
  %481 = load ptr, ptr %139, align 8, !tbaa !75, !noalias !133
  %482 = load ptr, ptr %46, align 8, !tbaa !74, !noalias !133
  %483 = icmp ult ptr %481, %482
  br i1 %483, label %491, label %484

484:                                              ; preds = %480
  %485 = lshr i32 %467, 3
  %486 = zext nneg i32 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %481, i64 %487
  store ptr %488, ptr %139, align 8, !tbaa !75, !noalias !133
  %489 = and i32 %467, 7
  store i32 %489, ptr %128, align 8, !tbaa !80, !noalias !133
  %490 = load i64, ptr %488, align 1, !tbaa !44, !noalias !133
  store i64 %490, ptr %11, align 8, !tbaa !76, !noalias !133
  br label %511

491:                                              ; preds = %480
  %492 = load ptr, ptr %44, align 8, !tbaa !72, !noalias !133
  %493 = icmp eq ptr %481, %492
  br i1 %493, label %511, label %494

494:                                              ; preds = %491
  %495 = lshr i32 %467, 3
  %496 = zext nneg i32 %495 to i64
  %497 = sub nsw i64 0, %496
  %498 = getelementptr inbounds i8, ptr %481, i64 %497
  %499 = icmp ult ptr %498, %492
  %500 = ptrtoint ptr %481 to i64
  %501 = ptrtoint ptr %492 to i64
  %502 = sub i64 %500, %501
  %503 = trunc i64 %502 to i32
  %504 = select i1 %499, i32 %503, i32 %495
  %505 = zext i32 %504 to i64
  %506 = sub nsw i64 0, %505
  %507 = getelementptr inbounds i8, ptr %481, i64 %506
  store ptr %507, ptr %139, align 8, !tbaa !75, !noalias !133
  %508 = shl i32 %504, 3
  %509 = sub i32 %467, %508
  store i32 %509, ptr %128, align 8, !tbaa !80, !noalias !133
  %510 = load i64, ptr %507, align 1, !tbaa !44, !noalias !133
  store i64 %510, ptr %11, align 8, !tbaa !76, !noalias !133
  br label %511

511:                                              ; preds = %494, %491, %484, %479
  %512 = load ptr, ptr %10, align 8, !tbaa !38
  %513 = getelementptr inbounds i8, ptr %512, i64 %441
  %514 = load ptr, ptr %22, align 8, !tbaa !37
  %515 = icmp ugt ptr %513, %514
  br i1 %515, label %707, label %521

516:                                              ; preds = %440
  %517 = load ptr, ptr %10, align 8, !tbaa !38
  %518 = getelementptr inbounds i8, ptr %517, i64 %441
  %519 = load ptr, ptr %22, align 8, !tbaa !37
  %520 = icmp ugt ptr %518, %519
  br i1 %520, label %709, label %521

521:                                              ; preds = %516, %511
  %522 = phi ptr [ %518, %516 ], [ %513, %511 ]
  %523 = phi ptr [ %517, %516 ], [ %512, %511 ]
  %524 = getelementptr inbounds i8, ptr %522, i64 -32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %441, ptr %7, align 8
  store i64 %389, ptr %269, align 8
  store i64 %373, ptr %270, align 8
  %525 = getelementptr inbounds i8, ptr %275, i64 %441
  %526 = add i64 %441, %389
  %527 = sub i64 0, %373
  %528 = getelementptr inbounds i8, ptr %525, i64 %527
  %529 = icmp ugt ptr %522, %23
  %530 = getelementptr inbounds i8, ptr %275, i64 %526
  %531 = icmp ugt ptr %530, %524
  %532 = select i1 %529, i1 true, i1 %531
  br i1 %532, label %536, label %533, !prof !111

533:                                              ; preds = %521
  %534 = load <2 x i64>, ptr %523, align 1, !tbaa !9
  store <2 x i64> %534, ptr %275, align 1, !tbaa !9
  %535 = icmp ugt i64 %441, 16
  br i1 %535, label %538, label %558, !prof !51

536:                                              ; preds = %521
  %537 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %275, ptr noundef %19, ptr noundef nonnull %524, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %10, ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %696

538:                                              ; preds = %533
  %539 = getelementptr inbounds i8, ptr %275, i64 16
  %540 = getelementptr inbounds i8, ptr %523, i64 16
  %541 = add i64 %441, -16
  %542 = load <2 x i64>, ptr %540, align 1, !tbaa !9
  store <2 x i64> %542, ptr %539, align 1, !tbaa !9
  %543 = icmp ult i64 %541, 17
  br i1 %543, label %558, label %544

544:                                              ; preds = %538
  %545 = getelementptr inbounds i8, ptr %275, i64 32
  br label %546

546:                                              ; preds = %546, %544
  %547 = phi ptr [ %545, %544 ], [ %554, %546 ]
  %548 = phi ptr [ %540, %544 ], [ %552, %546 ]
  %549 = getelementptr inbounds i8, ptr %548, i64 16
  %550 = load <2 x i64>, ptr %549, align 1, !tbaa !9
  store <2 x i64> %550, ptr %547, align 1, !tbaa !9
  %551 = getelementptr inbounds i8, ptr %547, i64 16
  %552 = getelementptr inbounds i8, ptr %548, i64 32
  %553 = load <2 x i64>, ptr %552, align 1, !tbaa !9
  store <2 x i64> %553, ptr %551, align 1, !tbaa !9
  %554 = getelementptr inbounds i8, ptr %547, i64 32
  %555 = icmp ult ptr %554, %525
  br i1 %555, label %546, label %556, !llvm.loop !105

556:                                              ; preds = %546
  %557 = load i64, ptr %270, align 8, !tbaa !136
  br label %558

558:                                              ; preds = %556, %538, %533
  %559 = phi i64 [ %557, %556 ], [ %373, %538 ], [ %373, %533 ]
  store ptr %522, ptr %10, align 8, !tbaa !38
  %560 = ptrtoint ptr %525 to i64
  %561 = sub i64 %560, %271
  %562 = icmp ugt i64 %559, %561
  br i1 %562, label %563, label %578

563:                                              ; preds = %558
  %564 = sub i64 %560, %272
  %565 = icmp ugt i64 %559, %564
  br i1 %565, label %566, label %567, !prof !51

566:                                              ; preds = %563
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %1497

567:                                              ; preds = %563
  %568 = ptrtoint ptr %528 to i64
  %569 = sub i64 %568, %271
  %570 = getelementptr inbounds i8, ptr %29, i64 %569
  %571 = getelementptr inbounds i8, ptr %570, i64 %389
  %572 = icmp ugt ptr %571, %29
  br i1 %572, label %574, label %573

573:                                              ; preds = %567
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %525, ptr align 1 %570, i64 %389, i1 false)
  br label %696

574:                                              ; preds = %567
  %575 = sub i64 0, %569
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %525, ptr align 1 %570, i64 %575, i1 false)
  %576 = getelementptr inbounds i8, ptr %525, i64 %575
  %577 = add i64 %569, %389
  store i64 %577, ptr %269, align 8, !tbaa !137
  br label %578

578:                                              ; preds = %574, %558
  %579 = phi i64 [ %577, %574 ], [ %389, %558 ]
  %580 = phi ptr [ %25, %574 ], [ %528, %558 ]
  %581 = phi ptr [ %576, %574 ], [ %525, %558 ]
  %582 = ptrtoint ptr %581 to i64
  %583 = icmp ugt i64 %559, 15
  br i1 %583, label %584, label %600, !prof !87

584:                                              ; preds = %578
  %585 = getelementptr inbounds i8, ptr %581, i64 %579
  %586 = load <2 x i64>, ptr %580, align 1, !tbaa !9
  store <2 x i64> %586, ptr %581, align 1, !tbaa !9
  %587 = icmp ult i64 %579, 17
  br i1 %587, label %696, label %588

588:                                              ; preds = %584
  %589 = getelementptr inbounds i8, ptr %581, i64 16
  br label %590

590:                                              ; preds = %590, %588
  %591 = phi ptr [ %589, %588 ], [ %598, %590 ]
  %592 = phi ptr [ %580, %588 ], [ %596, %590 ]
  %593 = getelementptr inbounds i8, ptr %592, i64 16
  %594 = load <2 x i64>, ptr %593, align 1, !tbaa !9
  store <2 x i64> %594, ptr %591, align 1, !tbaa !9
  %595 = getelementptr inbounds i8, ptr %591, i64 16
  %596 = getelementptr inbounds i8, ptr %592, i64 32
  %597 = load <2 x i64>, ptr %596, align 1, !tbaa !9
  store <2 x i64> %597, ptr %595, align 1, !tbaa !9
  %598 = getelementptr inbounds i8, ptr %591, i64 32
  %599 = icmp ult ptr %598, %585
  br i1 %599, label %590, label %696, !llvm.loop !105

600:                                              ; preds = %578
  %601 = icmp ult i64 %559, 8
  br i1 %601, label %602, label %625

602:                                              ; preds = %600
  %603 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %559
  %604 = load i32, ptr %603, align 4, !tbaa !28
  %605 = load i8, ptr %580, align 1, !tbaa !9
  store i8 %605, ptr %581, align 1, !tbaa !9
  %606 = getelementptr inbounds i8, ptr %580, i64 1
  %607 = load i8, ptr %606, align 1, !tbaa !9
  %608 = getelementptr inbounds i8, ptr %581, i64 1
  store i8 %607, ptr %608, align 1, !tbaa !9
  %609 = getelementptr inbounds i8, ptr %580, i64 2
  %610 = load i8, ptr %609, align 1, !tbaa !9
  %611 = getelementptr inbounds i8, ptr %581, i64 2
  store i8 %610, ptr %611, align 1, !tbaa !9
  %612 = getelementptr inbounds i8, ptr %580, i64 3
  %613 = load i8, ptr %612, align 1, !tbaa !9
  %614 = getelementptr inbounds i8, ptr %581, i64 3
  store i8 %613, ptr %614, align 1, !tbaa !9
  %615 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %559
  %616 = load i32, ptr %615, align 4, !tbaa !28
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %580, i64 %617
  %619 = getelementptr inbounds i8, ptr %581, i64 4
  %620 = load i32, ptr %618, align 1
  store i32 %620, ptr %619, align 1
  %621 = sext i32 %604 to i64
  %622 = sub nsw i64 0, %621
  %623 = getelementptr inbounds i8, ptr %618, i64 %622
  %624 = load i64, ptr %269, align 8, !tbaa !137
  br label %627

625:                                              ; preds = %600
  %626 = load i64, ptr %580, align 1
  store i64 %626, ptr %581, align 1
  br label %627

627:                                              ; preds = %625, %602
  %628 = phi i64 [ %624, %602 ], [ %579, %625 ]
  %629 = phi ptr [ %623, %602 ], [ %580, %625 ]
  %630 = getelementptr i8, ptr %629, i64 8
  %631 = getelementptr i8, ptr %581, i64 8
  %632 = icmp ugt i64 %628, 8
  br i1 %632, label %633, label %696

633:                                              ; preds = %627
  %634 = ptrtoint ptr %631 to i64
  %635 = ptrtoint ptr %630 to i64
  %636 = sub i64 %634, %635
  %637 = getelementptr inbounds i8, ptr %581, i64 %628
  %638 = icmp slt i64 %636, 16
  br i1 %638, label %639, label %680

639:                                              ; preds = %633
  %640 = add i64 %628, %582
  %641 = add i64 %582, 16
  %642 = tail call i64 @llvm.umax.i64(i64 %640, i64 %641)
  %643 = add i64 %642, -9
  %644 = sub i64 %643, %582
  %645 = lshr i64 %644, 3
  %646 = add nuw nsw i64 %645, 1
  %647 = icmp ult i64 %644, 24
  %648 = icmp ult i64 %636, 32
  %649 = or i1 %647, %648
  br i1 %649, label %670, label %650

650:                                              ; preds = %639
  %651 = and i64 %646, 4611686018427387900
  %652 = shl i64 %651, 3
  %653 = getelementptr i8, ptr %631, i64 %652
  %654 = shl i64 %651, 3
  %655 = getelementptr i8, ptr %630, i64 %654
  br label %656

656:                                              ; preds = %656, %650
  %657 = phi i64 [ 0, %650 ], [ %666, %656 ]
  %658 = shl i64 %657, 3
  %659 = getelementptr i8, ptr %631, i64 %658
  %660 = shl i64 %657, 3
  %661 = getelementptr i8, ptr %630, i64 %660
  %662 = getelementptr i64, ptr %661, i64 2
  %663 = load <2 x i64>, ptr %661, align 1
  %664 = load <2 x i64>, ptr %662, align 1
  %665 = getelementptr i64, ptr %659, i64 2
  store <2 x i64> %663, ptr %659, align 1
  store <2 x i64> %664, ptr %665, align 1
  %666 = add nuw i64 %657, 4
  %667 = icmp eq i64 %666, %651
  br i1 %667, label %668, label %656, !llvm.loop !138

668:                                              ; preds = %656
  %669 = icmp eq i64 %646, %651
  br i1 %669, label %696, label %670

670:                                              ; preds = %639, %668
  %671 = phi ptr [ %631, %639 ], [ %653, %668 ]
  %672 = phi ptr [ %630, %639 ], [ %655, %668 ]
  br label %673

673:                                              ; preds = %670, %673
  %674 = phi ptr [ %677, %673 ], [ %671, %670 ]
  %675 = phi ptr [ %678, %673 ], [ %672, %670 ]
  %676 = load i64, ptr %675, align 1
  store i64 %676, ptr %674, align 1
  %677 = getelementptr inbounds i8, ptr %674, i64 8
  %678 = getelementptr inbounds i8, ptr %675, i64 8
  %679 = icmp ult ptr %677, %637
  br i1 %679, label %673, label %696, !llvm.loop !139

680:                                              ; preds = %633
  %681 = add i64 %628, -8
  %682 = load <2 x i64>, ptr %630, align 1, !tbaa !9
  store <2 x i64> %682, ptr %631, align 1, !tbaa !9
  %683 = icmp ult i64 %681, 17
  br i1 %683, label %696, label %684

684:                                              ; preds = %680
  %685 = getelementptr inbounds i8, ptr %581, i64 24
  br label %686

686:                                              ; preds = %686, %684
  %687 = phi ptr [ %685, %684 ], [ %694, %686 ]
  %688 = phi ptr [ %630, %684 ], [ %692, %686 ]
  %689 = getelementptr inbounds i8, ptr %688, i64 16
  %690 = load <2 x i64>, ptr %689, align 1, !tbaa !9
  store <2 x i64> %690, ptr %687, align 1, !tbaa !9
  %691 = getelementptr inbounds i8, ptr %687, i64 16
  %692 = getelementptr inbounds i8, ptr %688, i64 32
  %693 = load <2 x i64>, ptr %692, align 1, !tbaa !9
  store <2 x i64> %693, ptr %691, align 1, !tbaa !9
  %694 = getelementptr inbounds i8, ptr %687, i64 32
  %695 = icmp ult ptr %694, %637
  br i1 %695, label %686, label %696, !llvm.loop !105

696:                                              ; preds = %686, %673, %590, %668, %680, %627, %584, %573, %536
  %697 = phi i64 [ %537, %536 ], [ %526, %573 ], [ %526, %627 ], [ %526, %584 ], [ %526, %680 ], [ %526, %668 ], [ %526, %590 ], [ %526, %673 ], [ %526, %686 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %698 = icmp ult i64 %697, -119
  %699 = getelementptr inbounds i8, ptr %275, i64 %697
  br i1 %698, label %700, label %1497

700:                                              ; preds = %696
  %701 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %274, i32 -1)
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !86
  br i1 %702, label %703, label %704, !nosanitize !86

703:                                              ; preds = %700
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !86
  unreachable, !nosanitize !86

704:                                              ; preds = %700
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !86
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %1482, label %273, !llvm.loop !140

707:                                              ; preds = %511
  %708 = icmp sgt i32 %274, 0
  br i1 %708, label %709, label %1497

709:                                              ; preds = %516, %707
  %710 = phi ptr [ %512, %707 ], [ %517, %516 ]
  %711 = phi ptr [ %514, %707 ], [ %519, %516 ]
  %712 = ptrtoint ptr %711 to i64
  %713 = ptrtoint ptr %710 to i64
  %714 = sub i64 %712, %713
  %715 = icmp eq ptr %711, %710
  br i1 %715, label %870, label %716

716:                                              ; preds = %709
  %717 = ptrtoint ptr %19 to i64
  %718 = ptrtoint ptr %275 to i64
  %719 = sub i64 %717, %718
  %720 = icmp ugt i64 %714, %719
  br i1 %720, label %1497, label %721

721:                                              ; preds = %716
  %722 = sub i64 %718, %713
  %723 = getelementptr inbounds i8, ptr %275, i64 %714
  %724 = icmp ult i64 %714, 8
  %725 = icmp sgt i64 %722, -8
  %726 = or i1 %725, %724
  br i1 %726, label %727, label %783

727:                                              ; preds = %721
  %728 = icmp sgt i64 %714, 0
  br i1 %728, label %729, label %868

729:                                              ; preds = %727
  %730 = add i64 %718, %712
  %731 = sub i64 %730, %713
  %732 = add i64 %718, 1
  %733 = tail call i64 @llvm.umax.i64(i64 %731, i64 %732)
  %734 = sub i64 %733, %718
  %735 = icmp ult i64 %734, 8
  %736 = icmp ult i64 %722, 32
  %737 = or i1 %735, %736
  br i1 %737, label %773, label %738

738:                                              ; preds = %729
  %739 = icmp ult i64 %734, 32
  br i1 %739, label %759, label %740

740:                                              ; preds = %738
  %741 = and i64 %734, -32
  br label %742

742:                                              ; preds = %742, %740
  %743 = phi i64 [ 0, %740 ], [ %750, %742 ]
  %744 = getelementptr i8, ptr %275, i64 %743
  %745 = getelementptr i8, ptr %710, i64 %743
  %746 = getelementptr i8, ptr %745, i64 16
  %747 = load <16 x i8>, ptr %745, align 1, !tbaa !9
  %748 = load <16 x i8>, ptr %746, align 1, !tbaa !9
  %749 = getelementptr i8, ptr %744, i64 16
  store <16 x i8> %747, ptr %744, align 1, !tbaa !9
  store <16 x i8> %748, ptr %749, align 1, !tbaa !9
  %750 = add nuw i64 %743, 32
  %751 = icmp eq i64 %750, %741
  br i1 %751, label %752, label %742, !llvm.loop !141

752:                                              ; preds = %742
  %753 = icmp eq i64 %734, %741
  br i1 %753, label %868, label %754

754:                                              ; preds = %752
  %755 = getelementptr i8, ptr %710, i64 %741
  %756 = getelementptr i8, ptr %275, i64 %741
  %757 = and i64 %734, 24
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %773, label %759

759:                                              ; preds = %738, %754
  %760 = phi i64 [ %741, %754 ], [ 0, %738 ]
  %761 = and i64 %734, -8
  %762 = getelementptr i8, ptr %275, i64 %761
  %763 = getelementptr i8, ptr %710, i64 %761
  br label %764

764:                                              ; preds = %764, %759
  %765 = phi i64 [ %760, %759 ], [ %769, %764 ]
  %766 = getelementptr i8, ptr %275, i64 %765
  %767 = getelementptr i8, ptr %710, i64 %765
  %768 = load <8 x i8>, ptr %767, align 1, !tbaa !9
  store <8 x i8> %768, ptr %766, align 1, !tbaa !9
  %769 = add nuw i64 %765, 8
  %770 = icmp eq i64 %769, %761
  br i1 %770, label %771, label %764, !llvm.loop !142

771:                                              ; preds = %764
  %772 = icmp eq i64 %734, %761
  br i1 %772, label %868, label %773

773:                                              ; preds = %729, %754, %771
  %774 = phi ptr [ %275, %729 ], [ %756, %754 ], [ %762, %771 ]
  %775 = phi ptr [ %710, %729 ], [ %755, %754 ], [ %763, %771 ]
  br label %776

776:                                              ; preds = %773, %776
  %777 = phi ptr [ %781, %776 ], [ %774, %773 ]
  %778 = phi ptr [ %779, %776 ], [ %775, %773 ]
  %779 = getelementptr inbounds i8, ptr %778, i64 1
  %780 = load i8, ptr %778, align 1, !tbaa !9
  %781 = getelementptr inbounds i8, ptr %777, i64 1
  store i8 %780, ptr %777, align 1, !tbaa !9
  %782 = icmp ult ptr %781, %723
  br i1 %782, label %776, label %868, !llvm.loop !143

783:                                              ; preds = %721
  %784 = getelementptr inbounds i8, ptr %723, i64 -32
  %785 = icmp uge ptr %784, %275
  %786 = icmp ult i64 %722, -16
  %787 = and i1 %786, %785
  br i1 %787, label %788, label %807

788:                                              ; preds = %783
  %789 = ptrtoint ptr %784 to i64
  %790 = sub i64 %789, %718
  %791 = load <2 x i64>, ptr %710, align 1, !tbaa !9
  store <2 x i64> %791, ptr %275, align 1, !tbaa !9
  %792 = icmp ult i64 %790, 17
  br i1 %792, label %805, label %793

793:                                              ; preds = %788
  %794 = getelementptr inbounds i8, ptr %275, i64 16
  br label %795

795:                                              ; preds = %795, %793
  %796 = phi ptr [ %794, %793 ], [ %803, %795 ]
  %797 = phi ptr [ %710, %793 ], [ %801, %795 ]
  %798 = getelementptr inbounds i8, ptr %797, i64 16
  %799 = load <2 x i64>, ptr %798, align 1, !tbaa !9
  store <2 x i64> %799, ptr %796, align 1, !tbaa !9
  %800 = getelementptr inbounds i8, ptr %796, i64 16
  %801 = getelementptr inbounds i8, ptr %797, i64 32
  %802 = load <2 x i64>, ptr %801, align 1, !tbaa !9
  store <2 x i64> %802, ptr %800, align 1, !tbaa !9
  %803 = getelementptr inbounds i8, ptr %796, i64 32
  %804 = icmp ult ptr %803, %784
  br i1 %804, label %795, label %805, !llvm.loop !105

805:                                              ; preds = %795, %788
  %806 = getelementptr inbounds i8, ptr %710, i64 %790
  br label %809

807:                                              ; preds = %783
  %808 = icmp sgt i64 %714, 0
  br i1 %808, label %809, label %868

809:                                              ; preds = %807, %805
  %810 = phi ptr [ %784, %805 ], [ %275, %807 ]
  %811 = phi ptr [ %806, %805 ], [ %710, %807 ]
  %812 = ptrtoint ptr %810 to i64
  %813 = add i64 %718, %712
  %814 = sub i64 %813, %713
  %815 = add nuw i64 %812, 1
  %816 = tail call i64 @llvm.umax.i64(i64 %814, i64 %815)
  %817 = sub i64 %816, %812
  %818 = icmp ult i64 %817, 8
  %819 = ptrtoint ptr %811 to i64
  %820 = sub i64 %812, %819
  %821 = icmp ult i64 %820, 32
  %822 = select i1 %818, i1 true, i1 %821
  br i1 %822, label %858, label %823

823:                                              ; preds = %809
  %824 = icmp ult i64 %817, 32
  br i1 %824, label %844, label %825

825:                                              ; preds = %823
  %826 = and i64 %817, -32
  br label %827

827:                                              ; preds = %827, %825
  %828 = phi i64 [ 0, %825 ], [ %835, %827 ]
  %829 = getelementptr i8, ptr %810, i64 %828
  %830 = getelementptr i8, ptr %811, i64 %828
  %831 = getelementptr i8, ptr %830, i64 16
  %832 = load <16 x i8>, ptr %830, align 1, !tbaa !9
  %833 = load <16 x i8>, ptr %831, align 1, !tbaa !9
  %834 = getelementptr i8, ptr %829, i64 16
  store <16 x i8> %832, ptr %829, align 1, !tbaa !9
  store <16 x i8> %833, ptr %834, align 1, !tbaa !9
  %835 = add nuw i64 %828, 32
  %836 = icmp eq i64 %835, %826
  br i1 %836, label %837, label %827, !llvm.loop !144

837:                                              ; preds = %827
  %838 = icmp eq i64 %817, %826
  br i1 %838, label %868, label %839

839:                                              ; preds = %837
  %840 = getelementptr i8, ptr %811, i64 %826
  %841 = getelementptr i8, ptr %810, i64 %826
  %842 = and i64 %817, 24
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %858, label %844

844:                                              ; preds = %823, %839
  %845 = phi i64 [ %826, %839 ], [ 0, %823 ]
  %846 = and i64 %817, -8
  %847 = getelementptr i8, ptr %810, i64 %846
  %848 = getelementptr i8, ptr %811, i64 %846
  br label %849

849:                                              ; preds = %849, %844
  %850 = phi i64 [ %845, %844 ], [ %854, %849 ]
  %851 = getelementptr i8, ptr %810, i64 %850
  %852 = getelementptr i8, ptr %811, i64 %850
  %853 = load <8 x i8>, ptr %852, align 1, !tbaa !9
  store <8 x i8> %853, ptr %851, align 1, !tbaa !9
  %854 = add nuw i64 %850, 8
  %855 = icmp eq i64 %854, %846
  br i1 %855, label %856, label %849, !llvm.loop !145

856:                                              ; preds = %849
  %857 = icmp eq i64 %817, %846
  br i1 %857, label %868, label %858

858:                                              ; preds = %809, %839, %856
  %859 = phi ptr [ %810, %809 ], [ %841, %839 ], [ %847, %856 ]
  %860 = phi ptr [ %811, %809 ], [ %840, %839 ], [ %848, %856 ]
  br label %861

861:                                              ; preds = %858, %861
  %862 = phi ptr [ %866, %861 ], [ %859, %858 ]
  %863 = phi ptr [ %864, %861 ], [ %860, %858 ]
  %864 = getelementptr inbounds i8, ptr %863, i64 1
  %865 = load i8, ptr %863, align 1, !tbaa !9
  %866 = getelementptr inbounds i8, ptr %862, i64 1
  store i8 %865, ptr %862, align 1, !tbaa !9
  %867 = icmp ult ptr %866, %723
  br i1 %867, label %861, label %868, !llvm.loop !146

868:                                              ; preds = %861, %776, %837, %856, %752, %771, %807, %727
  %869 = sub i64 %441, %714
  br label %870

870:                                              ; preds = %868, %709
  %871 = phi i64 [ %441, %709 ], [ %869, %868 ]
  %872 = phi ptr [ %275, %709 ], [ %723, %868 ]
  %873 = getelementptr inbounds i8, ptr %0, i64 30372
  store ptr %873, ptr %10, align 8, !tbaa !38
  %874 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  %875 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  store i32 0, ptr %875, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  store i64 %871, ptr %8, align 8
  %876 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 %389, ptr %876, align 8
  %877 = getelementptr inbounds i8, ptr %8, i64 16
  store i64 %373, ptr %877, align 8
  %878 = getelementptr inbounds i8, ptr %872, i64 %871
  %879 = add i64 %871, %389
  %880 = getelementptr i8, ptr %0, i64 %871
  %881 = getelementptr i8, ptr %880, i64 30372
  %882 = sub i64 0, %373
  %883 = getelementptr inbounds i8, ptr %878, i64 %882
  %884 = icmp sgt i64 %871, 65536
  %885 = getelementptr inbounds i8, ptr %19, i64 -32
  %886 = getelementptr inbounds i8, ptr %872, i64 %879
  %887 = icmp ugt ptr %886, %885
  %888 = select i1 %884, i1 true, i1 %887
  br i1 %888, label %893, label %889, !prof !111

889:                                              ; preds = %870
  %890 = load <2 x i64>, ptr %873, align 1, !tbaa !9
  store <2 x i64> %890, ptr %872, align 1, !tbaa !9
  %891 = load i64, ptr %8, align 8, !tbaa !109
  %892 = icmp ugt i64 %891, 16
  br i1 %892, label %895, label %914, !prof !51

893:                                              ; preds = %870
  %894 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %872, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %874, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %1052

895:                                              ; preds = %889
  %896 = getelementptr inbounds i8, ptr %872, i64 16
  %897 = getelementptr inbounds i8, ptr %0, i64 30388
  %898 = add i64 %891, -16
  %899 = getelementptr inbounds i8, ptr %872, i64 %891
  %900 = load <2 x i64>, ptr %897, align 1, !tbaa !9
  store <2 x i64> %900, ptr %896, align 1, !tbaa !9
  %901 = icmp ult i64 %898, 17
  br i1 %901, label %914, label %902

902:                                              ; preds = %895
  %903 = getelementptr inbounds i8, ptr %872, i64 32
  br label %904

904:                                              ; preds = %904, %902
  %905 = phi ptr [ %903, %902 ], [ %912, %904 ]
  %906 = phi ptr [ %897, %902 ], [ %910, %904 ]
  %907 = getelementptr inbounds i8, ptr %906, i64 16
  %908 = load <2 x i64>, ptr %907, align 1, !tbaa !9
  store <2 x i64> %908, ptr %905, align 1, !tbaa !9
  %909 = getelementptr inbounds i8, ptr %905, i64 16
  %910 = getelementptr inbounds i8, ptr %906, i64 32
  %911 = load <2 x i64>, ptr %910, align 1, !tbaa !9
  store <2 x i64> %911, ptr %909, align 1, !tbaa !9
  %912 = getelementptr inbounds i8, ptr %905, i64 32
  %913 = icmp ult ptr %912, %899
  br i1 %913, label %904, label %914, !llvm.loop !105

914:                                              ; preds = %904, %895, %889
  store ptr %881, ptr %10, align 8, !tbaa !38
  %915 = load i64, ptr %877, align 8, !tbaa !136
  %916 = ptrtoint ptr %878 to i64
  %917 = sub i64 %916, %271
  %918 = icmp ugt i64 %915, %917
  br i1 %918, label %919, label %935

919:                                              ; preds = %914
  %920 = sub i64 %916, %272
  %921 = icmp ugt i64 %915, %920
  br i1 %921, label %922, label %923, !prof !51

922:                                              ; preds = %919
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %1497

923:                                              ; preds = %919
  %924 = ptrtoint ptr %883 to i64
  %925 = sub i64 %924, %271
  %926 = getelementptr inbounds i8, ptr %29, i64 %925
  %927 = load i64, ptr %876, align 8, !tbaa !137
  %928 = getelementptr inbounds i8, ptr %926, i64 %927
  %929 = icmp ugt ptr %928, %29
  br i1 %929, label %931, label %930

930:                                              ; preds = %923
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %878, ptr align 1 %926, i64 %927, i1 false)
  br label %1052

931:                                              ; preds = %923
  %932 = sub i64 0, %925
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %878, ptr align 1 %926, i64 %932, i1 false)
  %933 = getelementptr inbounds i8, ptr %878, i64 %932
  %934 = add i64 %927, %925
  store i64 %934, ptr %876, align 8, !tbaa !137
  br label %935

935:                                              ; preds = %931, %914
  %936 = phi ptr [ %933, %931 ], [ %878, %914 ]
  %937 = phi ptr [ %25, %931 ], [ %883, %914 ]
  %938 = ptrtoint ptr %936 to i64
  %939 = icmp ugt i64 %915, 15
  br i1 %939, label %940, label %957, !prof !87

940:                                              ; preds = %935
  %941 = load i64, ptr %876, align 8, !tbaa !137
  %942 = getelementptr inbounds i8, ptr %936, i64 %941
  %943 = load <2 x i64>, ptr %937, align 1, !tbaa !9
  store <2 x i64> %943, ptr %936, align 1, !tbaa !9
  %944 = icmp ult i64 %941, 17
  br i1 %944, label %1052, label %945

945:                                              ; preds = %940
  %946 = getelementptr inbounds i8, ptr %936, i64 16
  br label %947

947:                                              ; preds = %947, %945
  %948 = phi ptr [ %946, %945 ], [ %955, %947 ]
  %949 = phi ptr [ %937, %945 ], [ %953, %947 ]
  %950 = getelementptr inbounds i8, ptr %949, i64 16
  %951 = load <2 x i64>, ptr %950, align 1, !tbaa !9
  store <2 x i64> %951, ptr %948, align 1, !tbaa !9
  %952 = getelementptr inbounds i8, ptr %948, i64 16
  %953 = getelementptr inbounds i8, ptr %949, i64 32
  %954 = load <2 x i64>, ptr %953, align 1, !tbaa !9
  store <2 x i64> %954, ptr %952, align 1, !tbaa !9
  %955 = getelementptr inbounds i8, ptr %948, i64 32
  %956 = icmp ult ptr %955, %942
  br i1 %956, label %947, label %1052, !llvm.loop !105

957:                                              ; preds = %935
  %958 = icmp ult i64 %915, 8
  br i1 %958, label %959, label %981

959:                                              ; preds = %957
  %960 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %915
  %961 = load i32, ptr %960, align 4, !tbaa !28
  %962 = load i8, ptr %937, align 1, !tbaa !9
  store i8 %962, ptr %936, align 1, !tbaa !9
  %963 = getelementptr inbounds i8, ptr %937, i64 1
  %964 = load i8, ptr %963, align 1, !tbaa !9
  %965 = getelementptr inbounds i8, ptr %936, i64 1
  store i8 %964, ptr %965, align 1, !tbaa !9
  %966 = getelementptr inbounds i8, ptr %937, i64 2
  %967 = load i8, ptr %966, align 1, !tbaa !9
  %968 = getelementptr inbounds i8, ptr %936, i64 2
  store i8 %967, ptr %968, align 1, !tbaa !9
  %969 = getelementptr inbounds i8, ptr %937, i64 3
  %970 = load i8, ptr %969, align 1, !tbaa !9
  %971 = getelementptr inbounds i8, ptr %936, i64 3
  store i8 %970, ptr %971, align 1, !tbaa !9
  %972 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %915
  %973 = load i32, ptr %972, align 4, !tbaa !28
  %974 = zext i32 %973 to i64
  %975 = getelementptr inbounds i8, ptr %937, i64 %974
  %976 = getelementptr inbounds i8, ptr %936, i64 4
  %977 = load i32, ptr %975, align 1
  store i32 %977, ptr %976, align 1
  %978 = sext i32 %961 to i64
  %979 = sub nsw i64 0, %978
  %980 = getelementptr inbounds i8, ptr %975, i64 %979
  br label %983

981:                                              ; preds = %957
  %982 = load i64, ptr %937, align 1
  store i64 %982, ptr %936, align 1
  br label %983

983:                                              ; preds = %981, %959
  %984 = phi ptr [ %980, %959 ], [ %937, %981 ]
  %985 = getelementptr i8, ptr %984, i64 8
  %986 = getelementptr i8, ptr %936, i64 8
  %987 = load i64, ptr %876, align 8, !tbaa !137
  %988 = icmp ugt i64 %987, 8
  br i1 %988, label %989, label %1052

989:                                              ; preds = %983
  %990 = ptrtoint ptr %986 to i64
  %991 = ptrtoint ptr %985 to i64
  %992 = sub i64 %990, %991
  %993 = getelementptr inbounds i8, ptr %936, i64 %987
  %994 = icmp slt i64 %992, 16
  br i1 %994, label %995, label %1036

995:                                              ; preds = %989
  %996 = add i64 %987, %938
  %997 = add i64 %938, 16
  %998 = tail call i64 @llvm.umax.i64(i64 %996, i64 %997)
  %999 = add i64 %998, -9
  %1000 = sub i64 %999, %938
  %1001 = lshr i64 %1000, 3
  %1002 = add nuw nsw i64 %1001, 1
  %1003 = icmp ult i64 %1000, 24
  %1004 = icmp ult i64 %992, 32
  %1005 = or i1 %1003, %1004
  br i1 %1005, label %1026, label %1006

1006:                                             ; preds = %995
  %1007 = and i64 %1002, 4611686018427387900
  %1008 = shl i64 %1007, 3
  %1009 = getelementptr i8, ptr %986, i64 %1008
  %1010 = shl i64 %1007, 3
  %1011 = getelementptr i8, ptr %985, i64 %1010
  br label %1012

1012:                                             ; preds = %1012, %1006
  %1013 = phi i64 [ 0, %1006 ], [ %1022, %1012 ]
  %1014 = shl i64 %1013, 3
  %1015 = getelementptr i8, ptr %986, i64 %1014
  %1016 = shl i64 %1013, 3
  %1017 = getelementptr i8, ptr %985, i64 %1016
  %1018 = getelementptr i64, ptr %1017, i64 2
  %1019 = load <2 x i64>, ptr %1017, align 1
  %1020 = load <2 x i64>, ptr %1018, align 1
  %1021 = getelementptr i64, ptr %1015, i64 2
  store <2 x i64> %1019, ptr %1015, align 1
  store <2 x i64> %1020, ptr %1021, align 1
  %1022 = add nuw i64 %1013, 4
  %1023 = icmp eq i64 %1022, %1007
  br i1 %1023, label %1024, label %1012, !llvm.loop !147

1024:                                             ; preds = %1012
  %1025 = icmp eq i64 %1002, %1007
  br i1 %1025, label %1052, label %1026

1026:                                             ; preds = %995, %1024
  %1027 = phi ptr [ %986, %995 ], [ %1009, %1024 ]
  %1028 = phi ptr [ %985, %995 ], [ %1011, %1024 ]
  br label %1029

1029:                                             ; preds = %1026, %1029
  %1030 = phi ptr [ %1033, %1029 ], [ %1027, %1026 ]
  %1031 = phi ptr [ %1034, %1029 ], [ %1028, %1026 ]
  %1032 = load i64, ptr %1031, align 1
  store i64 %1032, ptr %1030, align 1
  %1033 = getelementptr inbounds i8, ptr %1030, i64 8
  %1034 = getelementptr inbounds i8, ptr %1031, i64 8
  %1035 = icmp ult ptr %1033, %993
  br i1 %1035, label %1029, label %1052, !llvm.loop !148

1036:                                             ; preds = %989
  %1037 = add i64 %987, -8
  %1038 = load <2 x i64>, ptr %985, align 1, !tbaa !9
  store <2 x i64> %1038, ptr %986, align 1, !tbaa !9
  %1039 = icmp ult i64 %1037, 17
  br i1 %1039, label %1052, label %1040

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds i8, ptr %936, i64 24
  br label %1042

1042:                                             ; preds = %1042, %1040
  %1043 = phi ptr [ %1041, %1040 ], [ %1050, %1042 ]
  %1044 = phi ptr [ %985, %1040 ], [ %1048, %1042 ]
  %1045 = getelementptr inbounds i8, ptr %1044, i64 16
  %1046 = load <2 x i64>, ptr %1045, align 1, !tbaa !9
  store <2 x i64> %1046, ptr %1043, align 1, !tbaa !9
  %1047 = getelementptr inbounds i8, ptr %1043, i64 16
  %1048 = getelementptr inbounds i8, ptr %1044, i64 32
  %1049 = load <2 x i64>, ptr %1048, align 1, !tbaa !9
  store <2 x i64> %1049, ptr %1047, align 1, !tbaa !9
  %1050 = getelementptr inbounds i8, ptr %1043, i64 32
  %1051 = icmp ult ptr %1050, %993
  br i1 %1051, label %1042, label %1052, !llvm.loop !105

1052:                                             ; preds = %1042, %1029, %947, %1024, %1036, %983, %940, %930, %893
  %1053 = phi i64 [ %894, %893 ], [ %879, %930 ], [ %879, %983 ], [ %879, %940 ], [ %879, %1036 ], [ %879, %1024 ], [ %879, %947 ], [ %879, %1029 ], [ %879, %1042 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  %1054 = icmp ult i64 %1053, -119
  %1055 = getelementptr inbounds i8, ptr %872, i64 %1053
  %1056 = add nsw i32 %274, -1
  br i1 %1054, label %1057, label %1497

1057:                                             ; preds = %1052
  br i1 %276, label %1482, label %1058

1058:                                             ; preds = %1057
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !149
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !150
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !151
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !152
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !153
  %1059 = icmp eq i32 %1056, 0
  br i1 %1059, label %1482, label %1060

1060:                                             ; preds = %1058
  %1061 = getelementptr inbounds i8, ptr %9, i64 8
  %1062 = getelementptr inbounds i8, ptr %9, i64 16
  br label %1063

1063:                                             ; preds = %1478, %1060
  %1064 = phi i32 [ %1056, %1060 ], [ %1480, %1478 ]
  %1065 = phi ptr [ %1055, %1060 ], [ %1479, %1478 ]
  %1066 = icmp eq i32 %1064, 1
  %1067 = load ptr, ptr %171, align 8, !tbaa !92, !noalias !154
  %1068 = load i64, ptr %124, align 8, !tbaa !97, !noalias !154
  %1069 = load ptr, ptr %268, align 8, !tbaa !98, !noalias !154
  %1070 = load i64, ptr %222, align 8, !tbaa !99, !noalias !154
  %1071 = load ptr, ptr %221, align 8, !tbaa !100, !noalias !154
  %1072 = load i64, ptr %172, align 8, !tbaa !101, !noalias !154
  %1073 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1069, i64 %1070, i32 3
  %1074 = load i32, ptr %1073, align 4, !tbaa !41, !noalias !154
  %1075 = zext i32 %1074 to i64
  %1076 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1067, i64 %1068, i32 3
  %1077 = load i32, ptr %1076, align 4, !tbaa !41, !noalias !154
  %1078 = zext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1071, i64 %1072, i32 3
  %1080 = load i32, ptr %1079, align 4, !tbaa !41, !noalias !154
  %1081 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1067, i64 %1068, i32 1
  %1082 = load i8, ptr %1081, align 2, !tbaa !58, !noalias !154
  %1083 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1069, i64 %1070, i32 1
  %1084 = load i8, ptr %1083, align 2, !tbaa !58, !noalias !154
  %1085 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1071, i64 %1072, i32 1
  %1086 = load i8, ptr %1085, align 2, !tbaa !58, !noalias !154
  %1087 = zext i8 %1082 to i32
  %1088 = zext i8 %1084 to i32
  %1089 = add i8 %1084, %1082
  %1090 = add i8 %1089, %1086
  %1091 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1071, i64 %1072
  %1092 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1069, i64 %1070
  %1093 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1067, i64 %1068
  %1094 = load i16, ptr %1093, align 4, !tbaa !57, !noalias !154
  %1095 = load i16, ptr %1092, align 4, !tbaa !57, !noalias !154
  %1096 = load i16, ptr %1091, align 4, !tbaa !57, !noalias !154
  %1097 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1067, i64 %1068, i32 2
  %1098 = load i8, ptr %1097, align 1, !tbaa !56, !noalias !154
  %1099 = zext i8 %1098 to i32
  %1100 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1069, i64 %1070, i32 2
  %1101 = load i8, ptr %1100, align 1, !tbaa !56, !noalias !154
  %1102 = zext i8 %1101 to i32
  %1103 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1071, i64 %1072, i32 2
  %1104 = load i8, ptr %1103, align 1, !tbaa !56, !noalias !154
  %1105 = zext i8 %1104 to i32
  %1106 = icmp ugt i8 %1086, 1
  br i1 %1106, label %1107, label %1122

1107:                                             ; preds = %1063
  %1108 = zext i8 %1086 to i32
  %1109 = load i64, ptr %11, align 8, !tbaa !76, !noalias !154
  %1110 = load i32, ptr %128, align 8, !tbaa !80, !noalias !154
  %1111 = and i32 %1110, 63
  %1112 = zext nneg i32 %1111 to i64
  %1113 = shl i64 %1109, %1112
  %1114 = sub nsw i32 0, %1108
  %1115 = and i32 %1114, 63
  %1116 = zext nneg i32 %1115 to i64
  %1117 = lshr i64 %1113, %1116
  %1118 = add i32 %1110, %1108
  store i32 %1118, ptr %128, align 8, !tbaa !80, !noalias !154
  %1119 = zext i32 %1080 to i64
  %1120 = add i64 %1117, %1119
  %1121 = load i64, ptr %35, align 8, !tbaa !44, !noalias !154
  store i64 %1121, ptr %41, align 8, !tbaa !44, !noalias !154
  br label %1161

1122:                                             ; preds = %1063
  %1123 = icmp eq i32 %1077, 0
  %1124 = icmp eq i8 %1086, 0
  br i1 %1124, label %1125, label %1132, !prof !87

1125:                                             ; preds = %1122
  %1126 = zext i1 %1123 to i64
  %1127 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %1126
  %1128 = load i64, ptr %1127, align 8, !tbaa !44, !noalias !154
  %1129 = xor i1 %1123, true
  %1130 = zext i1 %1129 to i64
  %1131 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %1130
  br label %1161

1132:                                             ; preds = %1122
  %1133 = zext i1 %1123 to i32
  %1134 = add i32 %1080, %1133
  %1135 = zext i32 %1134 to i64
  %1136 = load i64, ptr %11, align 8, !tbaa !76, !noalias !154
  %1137 = load i32, ptr %128, align 8, !tbaa !80, !noalias !154
  %1138 = and i32 %1137, 63
  %1139 = zext nneg i32 %1138 to i64
  %1140 = shl i64 %1136, %1139
  %1141 = lshr i64 %1140, 63
  %1142 = add i32 %1137, 1
  store i32 %1142, ptr %128, align 8, !tbaa !80, !noalias !154
  %1143 = add nuw nsw i64 %1141, %1135
  %1144 = icmp eq i64 %1143, 3
  br i1 %1144, label %1145, label %1151

1145:                                             ; preds = %1132
  %1146 = load i64, ptr %34, align 8, !tbaa !44, !noalias !154
  %1147 = add i64 %1146, -1
  %1148 = icmp eq i64 %1147, 0
  %1149 = sext i1 %1148 to i64
  %1150 = add i64 %1147, %1149
  br label %1158

1151:                                             ; preds = %1132
  %1152 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %1143
  %1153 = load i64, ptr %1152, align 8, !tbaa !44, !noalias !154
  %1154 = icmp eq i64 %1153, 0
  %1155 = sext i1 %1154 to i64
  %1156 = add i64 %1153, %1155
  %1157 = icmp eq i64 %1143, 1
  br i1 %1157, label %1161, label %1158

1158:                                             ; preds = %1151, %1145
  %1159 = phi i64 [ %1150, %1145 ], [ %1156, %1151 ]
  %1160 = load i64, ptr %35, align 8, !tbaa !44, !noalias !154
  store i64 %1160, ptr %41, align 8, !tbaa !44, !noalias !154
  br label %1161

1161:                                             ; preds = %1158, %1151, %1125, %1107
  %1162 = phi ptr [ %1131, %1125 ], [ %34, %1107 ], [ %34, %1158 ], [ %34, %1151 ]
  %1163 = phi i64 [ %1128, %1125 ], [ %1120, %1107 ], [ %1159, %1158 ], [ %1156, %1151 ]
  %1164 = load i64, ptr %1162, align 8, !tbaa !44, !noalias !154
  store i64 %1164, ptr %35, align 8, !tbaa !44, !noalias !154
  store i64 %1163, ptr %34, align 8, !tbaa !44, !noalias !154
  %1165 = icmp eq i8 %1084, 0
  br i1 %1165, label %1178, label %1166

1166:                                             ; preds = %1161
  %1167 = load i64, ptr %11, align 8, !tbaa !76, !noalias !154
  %1168 = load i32, ptr %128, align 8, !tbaa !80, !noalias !154
  %1169 = and i32 %1168, 63
  %1170 = zext nneg i32 %1169 to i64
  %1171 = shl i64 %1167, %1170
  %1172 = sub nsw i32 0, %1088
  %1173 = and i32 %1172, 63
  %1174 = zext nneg i32 %1173 to i64
  %1175 = lshr i64 %1171, %1174
  %1176 = add i32 %1168, %1088
  store i32 %1176, ptr %128, align 8, !tbaa !80, !noalias !154
  %1177 = add i64 %1175, %1075
  br label %1178

1178:                                             ; preds = %1166, %1161
  %1179 = phi i64 [ %1075, %1161 ], [ %1177, %1166 ]
  %1180 = icmp ugt i8 %1090, 30
  br i1 %1180, label %1181, label %1216, !prof !51

1181:                                             ; preds = %1178
  %1182 = load i32, ptr %128, align 8, !tbaa !80, !noalias !154
  %1183 = icmp ugt i32 %1182, 64
  br i1 %1183, label %1184, label %1185, !prof !51

1184:                                             ; preds = %1181
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75, !noalias !154
  br label %1216

1185:                                             ; preds = %1181
  %1186 = load ptr, ptr %139, align 8, !tbaa !75, !noalias !154
  %1187 = load ptr, ptr %46, align 8, !tbaa !74, !noalias !154
  %1188 = icmp ult ptr %1186, %1187
  br i1 %1188, label %1196, label %1189

1189:                                             ; preds = %1185
  %1190 = lshr i32 %1182, 3
  %1191 = zext nneg i32 %1190 to i64
  %1192 = sub nsw i64 0, %1191
  %1193 = getelementptr inbounds i8, ptr %1186, i64 %1192
  store ptr %1193, ptr %139, align 8, !tbaa !75, !noalias !154
  %1194 = and i32 %1182, 7
  store i32 %1194, ptr %128, align 8, !tbaa !80, !noalias !154
  %1195 = load i64, ptr %1193, align 1, !tbaa !44, !noalias !154
  store i64 %1195, ptr %11, align 8, !tbaa !76, !noalias !154
  br label %1216

1196:                                             ; preds = %1185
  %1197 = load ptr, ptr %44, align 8, !tbaa !72, !noalias !154
  %1198 = icmp eq ptr %1186, %1197
  br i1 %1198, label %1216, label %1199

1199:                                             ; preds = %1196
  %1200 = lshr i32 %1182, 3
  %1201 = zext nneg i32 %1200 to i64
  %1202 = sub nsw i64 0, %1201
  %1203 = getelementptr inbounds i8, ptr %1186, i64 %1202
  %1204 = icmp ult ptr %1203, %1197
  %1205 = ptrtoint ptr %1186 to i64
  %1206 = ptrtoint ptr %1197 to i64
  %1207 = sub i64 %1205, %1206
  %1208 = trunc i64 %1207 to i32
  %1209 = select i1 %1204, i32 %1208, i32 %1200
  %1210 = zext i32 %1209 to i64
  %1211 = sub nsw i64 0, %1210
  %1212 = getelementptr inbounds i8, ptr %1186, i64 %1211
  store ptr %1212, ptr %139, align 8, !tbaa !75, !noalias !154
  %1213 = shl i32 %1209, 3
  %1214 = sub i32 %1182, %1213
  store i32 %1214, ptr %128, align 8, !tbaa !80, !noalias !154
  %1215 = load i64, ptr %1212, align 1, !tbaa !44, !noalias !154
  store i64 %1215, ptr %11, align 8, !tbaa !76, !noalias !154
  br label %1216

1216:                                             ; preds = %1199, %1196, %1189, %1184, %1178
  %1217 = icmp eq i8 %1082, 0
  br i1 %1217, label %1230, label %1218

1218:                                             ; preds = %1216
  %1219 = load i64, ptr %11, align 8, !tbaa !76, !noalias !154
  %1220 = load i32, ptr %128, align 8, !tbaa !80, !noalias !154
  %1221 = and i32 %1220, 63
  %1222 = zext nneg i32 %1221 to i64
  %1223 = shl i64 %1219, %1222
  %1224 = sub nsw i32 0, %1087
  %1225 = and i32 %1224, 63
  %1226 = zext nneg i32 %1225 to i64
  %1227 = lshr i64 %1223, %1226
  %1228 = add i32 %1220, %1087
  store i32 %1228, ptr %128, align 8, !tbaa !80, !noalias !154
  %1229 = add i64 %1227, %1078
  br label %1230

1230:                                             ; preds = %1218, %1216
  %1231 = phi i64 [ %1078, %1216 ], [ %1229, %1218 ]
  br i1 %1066, label %1301, label %1232

1232:                                             ; preds = %1230
  %1233 = load i64, ptr %11, align 8, !tbaa !76, !noalias !154
  %1234 = load i32, ptr %128, align 8, !tbaa !80, !noalias !154
  %1235 = add i32 %1234, %1099
  %1236 = sub i32 0, %1235
  %1237 = and i32 %1236, 63
  %1238 = zext nneg i32 %1237 to i64
  %1239 = lshr i64 %1233, %1238
  %1240 = zext nneg i8 %1098 to i64
  %1241 = shl nsw i64 -1, %1240
  %1242 = xor i64 %1241, -1
  %1243 = and i64 %1239, %1242
  %1244 = zext i16 %1094 to i64
  %1245 = add nuw i64 %1243, %1244
  store i64 %1245, ptr %124, align 8, !tbaa !78, !noalias !154
  %1246 = add i32 %1235, %1102
  %1247 = sub i32 0, %1246
  %1248 = and i32 %1247, 63
  %1249 = zext nneg i32 %1248 to i64
  %1250 = lshr i64 %1233, %1249
  %1251 = zext nneg i8 %1101 to i64
  %1252 = shl nsw i64 -1, %1251
  %1253 = xor i64 %1252, -1
  %1254 = and i64 %1250, %1253
  %1255 = zext i16 %1095 to i64
  %1256 = add nuw i64 %1254, %1255
  store i64 %1256, ptr %222, align 8, !tbaa !78, !noalias !154
  %1257 = add i32 %1246, %1105
  %1258 = sub i32 0, %1257
  %1259 = and i32 %1258, 63
  %1260 = zext nneg i32 %1259 to i64
  %1261 = lshr i64 %1233, %1260
  %1262 = zext nneg i8 %1104 to i64
  %1263 = shl nsw i64 -1, %1262
  %1264 = xor i64 %1263, -1
  %1265 = and i64 %1261, %1264
  store i32 %1257, ptr %128, align 8, !tbaa !80, !noalias !154
  %1266 = zext i16 %1096 to i64
  %1267 = add nuw i64 %1265, %1266
  store i64 %1267, ptr %172, align 8, !tbaa !78, !noalias !154
  %1268 = icmp ugt i32 %1257, 64
  br i1 %1268, label %1269, label %1270, !prof !51

1269:                                             ; preds = %1232
  store ptr @BIT_reloadDStream.zeroFilled, ptr %139, align 8, !tbaa !75, !noalias !154
  br label %1301

1270:                                             ; preds = %1232
  %1271 = load ptr, ptr %139, align 8, !tbaa !75, !noalias !154
  %1272 = load ptr, ptr %46, align 8, !tbaa !74, !noalias !154
  %1273 = icmp ult ptr %1271, %1272
  br i1 %1273, label %1281, label %1274

1274:                                             ; preds = %1270
  %1275 = lshr i32 %1257, 3
  %1276 = zext nneg i32 %1275 to i64
  %1277 = sub nsw i64 0, %1276
  %1278 = getelementptr inbounds i8, ptr %1271, i64 %1277
  store ptr %1278, ptr %139, align 8, !tbaa !75, !noalias !154
  %1279 = and i32 %1257, 7
  store i32 %1279, ptr %128, align 8, !tbaa !80, !noalias !154
  %1280 = load i64, ptr %1278, align 1, !tbaa !44, !noalias !154
  store i64 %1280, ptr %11, align 8, !tbaa !76, !noalias !154
  br label %1301

1281:                                             ; preds = %1270
  %1282 = load ptr, ptr %44, align 8, !tbaa !72, !noalias !154
  %1283 = icmp eq ptr %1271, %1282
  br i1 %1283, label %1301, label %1284

1284:                                             ; preds = %1281
  %1285 = lshr i32 %1257, 3
  %1286 = zext nneg i32 %1285 to i64
  %1287 = sub nsw i64 0, %1286
  %1288 = getelementptr inbounds i8, ptr %1271, i64 %1287
  %1289 = icmp ult ptr %1288, %1282
  %1290 = ptrtoint ptr %1271 to i64
  %1291 = ptrtoint ptr %1282 to i64
  %1292 = sub i64 %1290, %1291
  %1293 = trunc i64 %1292 to i32
  %1294 = select i1 %1289, i32 %1293, i32 %1285
  %1295 = zext i32 %1294 to i64
  %1296 = sub nsw i64 0, %1295
  %1297 = getelementptr inbounds i8, ptr %1271, i64 %1296
  store ptr %1297, ptr %139, align 8, !tbaa !75, !noalias !154
  %1298 = shl i32 %1294, 3
  %1299 = sub i32 %1257, %1298
  store i32 %1299, ptr %128, align 8, !tbaa !80, !noalias !154
  %1300 = load i64, ptr %1297, align 1, !tbaa !44, !noalias !154
  store i64 %1300, ptr %11, align 8, !tbaa !76, !noalias !154
  br label %1301

1301:                                             ; preds = %1284, %1281, %1274, %1269, %1230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  store i64 %1231, ptr %9, align 8
  store i64 %1179, ptr %1061, align 8
  store i64 %1163, ptr %1062, align 8
  %1302 = getelementptr inbounds i8, ptr %1065, i64 %1231
  %1303 = add i64 %1231, %1179
  %1304 = load ptr, ptr %10, align 8, !tbaa !38
  %1305 = getelementptr inbounds i8, ptr %1304, i64 %1231
  %1306 = sub i64 0, %1163
  %1307 = getelementptr inbounds i8, ptr %1302, i64 %1306
  %1308 = icmp ugt ptr %1305, %874
  %1309 = getelementptr inbounds i8, ptr %1065, i64 %1303
  %1310 = icmp ugt ptr %1309, %885
  %1311 = select i1 %1308, i1 true, i1 %1310
  br i1 %1311, label %1316, label %1312, !prof !111

1312:                                             ; preds = %1301
  %1313 = load <2 x i64>, ptr %1304, align 1, !tbaa !9
  store <2 x i64> %1313, ptr %1065, align 1, !tbaa !9
  %1314 = load i64, ptr %9, align 8, !tbaa !109
  %1315 = icmp ugt i64 %1314, 16
  br i1 %1315, label %1318, label %1337, !prof !51

1316:                                             ; preds = %1301
  %1317 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1065, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %874, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %1475

1318:                                             ; preds = %1312
  %1319 = getelementptr inbounds i8, ptr %1065, i64 16
  %1320 = getelementptr inbounds i8, ptr %1304, i64 16
  %1321 = add i64 %1314, -16
  %1322 = getelementptr inbounds i8, ptr %1065, i64 %1314
  %1323 = load <2 x i64>, ptr %1320, align 1, !tbaa !9
  store <2 x i64> %1323, ptr %1319, align 1, !tbaa !9
  %1324 = icmp ult i64 %1321, 17
  br i1 %1324, label %1337, label %1325

1325:                                             ; preds = %1318
  %1326 = getelementptr inbounds i8, ptr %1065, i64 32
  br label %1327

1327:                                             ; preds = %1327, %1325
  %1328 = phi ptr [ %1326, %1325 ], [ %1335, %1327 ]
  %1329 = phi ptr [ %1320, %1325 ], [ %1333, %1327 ]
  %1330 = getelementptr inbounds i8, ptr %1329, i64 16
  %1331 = load <2 x i64>, ptr %1330, align 1, !tbaa !9
  store <2 x i64> %1331, ptr %1328, align 1, !tbaa !9
  %1332 = getelementptr inbounds i8, ptr %1328, i64 16
  %1333 = getelementptr inbounds i8, ptr %1329, i64 32
  %1334 = load <2 x i64>, ptr %1333, align 1, !tbaa !9
  store <2 x i64> %1334, ptr %1332, align 1, !tbaa !9
  %1335 = getelementptr inbounds i8, ptr %1328, i64 32
  %1336 = icmp ult ptr %1335, %1322
  br i1 %1336, label %1327, label %1337, !llvm.loop !105

1337:                                             ; preds = %1327, %1318, %1312
  store ptr %1305, ptr %10, align 8, !tbaa !38
  %1338 = load i64, ptr %1062, align 8, !tbaa !136
  %1339 = ptrtoint ptr %1302 to i64
  %1340 = sub i64 %1339, %271
  %1341 = icmp ugt i64 %1338, %1340
  br i1 %1341, label %1342, label %1358

1342:                                             ; preds = %1337
  %1343 = sub i64 %1339, %272
  %1344 = icmp ugt i64 %1338, %1343
  br i1 %1344, label %1345, label %1346, !prof !51

1345:                                             ; preds = %1342
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  br label %1497

1346:                                             ; preds = %1342
  %1347 = ptrtoint ptr %1307 to i64
  %1348 = sub i64 %1347, %271
  %1349 = getelementptr inbounds i8, ptr %29, i64 %1348
  %1350 = load i64, ptr %1061, align 8, !tbaa !137
  %1351 = getelementptr inbounds i8, ptr %1349, i64 %1350
  %1352 = icmp ugt ptr %1351, %29
  br i1 %1352, label %1354, label %1353

1353:                                             ; preds = %1346
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1302, ptr align 1 %1349, i64 %1350, i1 false)
  br label %1475

1354:                                             ; preds = %1346
  %1355 = sub i64 0, %1348
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1302, ptr align 1 %1349, i64 %1355, i1 false)
  %1356 = getelementptr inbounds i8, ptr %1302, i64 %1355
  %1357 = add i64 %1350, %1348
  store i64 %1357, ptr %1061, align 8, !tbaa !137
  br label %1358

1358:                                             ; preds = %1354, %1337
  %1359 = phi ptr [ %1356, %1354 ], [ %1302, %1337 ]
  %1360 = phi ptr [ %25, %1354 ], [ %1307, %1337 ]
  %1361 = ptrtoint ptr %1359 to i64
  %1362 = icmp ugt i64 %1338, 15
  br i1 %1362, label %1363, label %1380, !prof !87

1363:                                             ; preds = %1358
  %1364 = load i64, ptr %1061, align 8, !tbaa !137
  %1365 = getelementptr inbounds i8, ptr %1359, i64 %1364
  %1366 = load <2 x i64>, ptr %1360, align 1, !tbaa !9
  store <2 x i64> %1366, ptr %1359, align 1, !tbaa !9
  %1367 = icmp ult i64 %1364, 17
  br i1 %1367, label %1475, label %1368

1368:                                             ; preds = %1363
  %1369 = getelementptr inbounds i8, ptr %1359, i64 16
  br label %1370

1370:                                             ; preds = %1370, %1368
  %1371 = phi ptr [ %1369, %1368 ], [ %1378, %1370 ]
  %1372 = phi ptr [ %1360, %1368 ], [ %1376, %1370 ]
  %1373 = getelementptr inbounds i8, ptr %1372, i64 16
  %1374 = load <2 x i64>, ptr %1373, align 1, !tbaa !9
  store <2 x i64> %1374, ptr %1371, align 1, !tbaa !9
  %1375 = getelementptr inbounds i8, ptr %1371, i64 16
  %1376 = getelementptr inbounds i8, ptr %1372, i64 32
  %1377 = load <2 x i64>, ptr %1376, align 1, !tbaa !9
  store <2 x i64> %1377, ptr %1375, align 1, !tbaa !9
  %1378 = getelementptr inbounds i8, ptr %1371, i64 32
  %1379 = icmp ult ptr %1378, %1365
  br i1 %1379, label %1370, label %1475, !llvm.loop !105

1380:                                             ; preds = %1358
  %1381 = icmp ult i64 %1338, 8
  br i1 %1381, label %1382, label %1404

1382:                                             ; preds = %1380
  %1383 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1338
  %1384 = load i32, ptr %1383, align 4, !tbaa !28
  %1385 = load i8, ptr %1360, align 1, !tbaa !9
  store i8 %1385, ptr %1359, align 1, !tbaa !9
  %1386 = getelementptr inbounds i8, ptr %1360, i64 1
  %1387 = load i8, ptr %1386, align 1, !tbaa !9
  %1388 = getelementptr inbounds i8, ptr %1359, i64 1
  store i8 %1387, ptr %1388, align 1, !tbaa !9
  %1389 = getelementptr inbounds i8, ptr %1360, i64 2
  %1390 = load i8, ptr %1389, align 1, !tbaa !9
  %1391 = getelementptr inbounds i8, ptr %1359, i64 2
  store i8 %1390, ptr %1391, align 1, !tbaa !9
  %1392 = getelementptr inbounds i8, ptr %1360, i64 3
  %1393 = load i8, ptr %1392, align 1, !tbaa !9
  %1394 = getelementptr inbounds i8, ptr %1359, i64 3
  store i8 %1393, ptr %1394, align 1, !tbaa !9
  %1395 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1338
  %1396 = load i32, ptr %1395, align 4, !tbaa !28
  %1397 = zext i32 %1396 to i64
  %1398 = getelementptr inbounds i8, ptr %1360, i64 %1397
  %1399 = getelementptr inbounds i8, ptr %1359, i64 4
  %1400 = load i32, ptr %1398, align 1
  store i32 %1400, ptr %1399, align 1
  %1401 = sext i32 %1384 to i64
  %1402 = sub nsw i64 0, %1401
  %1403 = getelementptr inbounds i8, ptr %1398, i64 %1402
  br label %1406

1404:                                             ; preds = %1380
  %1405 = load i64, ptr %1360, align 1
  store i64 %1405, ptr %1359, align 1
  br label %1406

1406:                                             ; preds = %1404, %1382
  %1407 = phi ptr [ %1403, %1382 ], [ %1360, %1404 ]
  %1408 = getelementptr i8, ptr %1407, i64 8
  %1409 = getelementptr i8, ptr %1359, i64 8
  %1410 = load i64, ptr %1061, align 8, !tbaa !137
  %1411 = icmp ugt i64 %1410, 8
  br i1 %1411, label %1412, label %1475

1412:                                             ; preds = %1406
  %1413 = ptrtoint ptr %1409 to i64
  %1414 = ptrtoint ptr %1408 to i64
  %1415 = sub i64 %1413, %1414
  %1416 = getelementptr inbounds i8, ptr %1359, i64 %1410
  %1417 = icmp slt i64 %1415, 16
  br i1 %1417, label %1418, label %1459

1418:                                             ; preds = %1412
  %1419 = add i64 %1410, %1361
  %1420 = add i64 %1361, 16
  %1421 = tail call i64 @llvm.umax.i64(i64 %1419, i64 %1420)
  %1422 = add i64 %1421, -9
  %1423 = sub i64 %1422, %1361
  %1424 = lshr i64 %1423, 3
  %1425 = add nuw nsw i64 %1424, 1
  %1426 = icmp ult i64 %1423, 24
  %1427 = icmp ult i64 %1415, 32
  %1428 = or i1 %1426, %1427
  br i1 %1428, label %1449, label %1429

1429:                                             ; preds = %1418
  %1430 = and i64 %1425, 4611686018427387900
  %1431 = shl i64 %1430, 3
  %1432 = getelementptr i8, ptr %1409, i64 %1431
  %1433 = shl i64 %1430, 3
  %1434 = getelementptr i8, ptr %1408, i64 %1433
  br label %1435

1435:                                             ; preds = %1435, %1429
  %1436 = phi i64 [ 0, %1429 ], [ %1445, %1435 ]
  %1437 = shl i64 %1436, 3
  %1438 = getelementptr i8, ptr %1409, i64 %1437
  %1439 = shl i64 %1436, 3
  %1440 = getelementptr i8, ptr %1408, i64 %1439
  %1441 = getelementptr i64, ptr %1440, i64 2
  %1442 = load <2 x i64>, ptr %1440, align 1
  %1443 = load <2 x i64>, ptr %1441, align 1
  %1444 = getelementptr i64, ptr %1438, i64 2
  store <2 x i64> %1442, ptr %1438, align 1
  store <2 x i64> %1443, ptr %1444, align 1
  %1445 = add nuw i64 %1436, 4
  %1446 = icmp eq i64 %1445, %1430
  br i1 %1446, label %1447, label %1435, !llvm.loop !157

1447:                                             ; preds = %1435
  %1448 = icmp eq i64 %1425, %1430
  br i1 %1448, label %1475, label %1449

1449:                                             ; preds = %1418, %1447
  %1450 = phi ptr [ %1409, %1418 ], [ %1432, %1447 ]
  %1451 = phi ptr [ %1408, %1418 ], [ %1434, %1447 ]
  br label %1452

1452:                                             ; preds = %1449, %1452
  %1453 = phi ptr [ %1456, %1452 ], [ %1450, %1449 ]
  %1454 = phi ptr [ %1457, %1452 ], [ %1451, %1449 ]
  %1455 = load i64, ptr %1454, align 1
  store i64 %1455, ptr %1453, align 1
  %1456 = getelementptr inbounds i8, ptr %1453, i64 8
  %1457 = getelementptr inbounds i8, ptr %1454, i64 8
  %1458 = icmp ult ptr %1456, %1416
  br i1 %1458, label %1452, label %1475, !llvm.loop !158

1459:                                             ; preds = %1412
  %1460 = add i64 %1410, -8
  %1461 = load <2 x i64>, ptr %1408, align 1, !tbaa !9
  store <2 x i64> %1461, ptr %1409, align 1, !tbaa !9
  %1462 = icmp ult i64 %1460, 17
  br i1 %1462, label %1475, label %1463

1463:                                             ; preds = %1459
  %1464 = getelementptr inbounds i8, ptr %1359, i64 24
  br label %1465

1465:                                             ; preds = %1465, %1463
  %1466 = phi ptr [ %1464, %1463 ], [ %1473, %1465 ]
  %1467 = phi ptr [ %1408, %1463 ], [ %1471, %1465 ]
  %1468 = getelementptr inbounds i8, ptr %1467, i64 16
  %1469 = load <2 x i64>, ptr %1468, align 1, !tbaa !9
  store <2 x i64> %1469, ptr %1466, align 1, !tbaa !9
  %1470 = getelementptr inbounds i8, ptr %1466, i64 16
  %1471 = getelementptr inbounds i8, ptr %1467, i64 32
  %1472 = load <2 x i64>, ptr %1471, align 1, !tbaa !9
  store <2 x i64> %1472, ptr %1470, align 1, !tbaa !9
  %1473 = getelementptr inbounds i8, ptr %1466, i64 32
  %1474 = icmp ult ptr %1473, %1416
  br i1 %1474, label %1465, label %1475, !llvm.loop !105

1475:                                             ; preds = %1465, %1452, %1370, %1447, %1459, %1406, %1363, %1353, %1316
  %1476 = phi i64 [ %1317, %1316 ], [ %1303, %1353 ], [ %1303, %1406 ], [ %1303, %1363 ], [ %1303, %1459 ], [ %1303, %1447 ], [ %1303, %1370 ], [ %1303, %1452 ], [ %1303, %1465 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  %1477 = icmp ult i64 %1476, -119
  br i1 %1477, label %1478, label %1497

1478:                                             ; preds = %1475
  %1479 = getelementptr inbounds i8, ptr %1065, i64 %1476
  %1480 = add i32 %1064, -1
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1482, label %1063, !llvm.loop !159

1482:                                             ; preds = %704, %1478, %1058, %1057
  %1483 = phi ptr [ %1055, %1058 ], [ %1055, %1057 ], [ %1479, %1478 ], [ %699, %704 ]
  %1484 = phi ptr [ %874, %1058 ], [ %874, %1057 ], [ %874, %1478 ], [ %23, %704 ]
  %1485 = load ptr, ptr %139, align 8, !tbaa !75
  %1486 = load ptr, ptr %44, align 8, !tbaa !72
  %1487 = icmp eq ptr %1485, %1486
  %1488 = load i32, ptr %128, align 8
  %1489 = icmp eq i32 %1488, 64
  %1490 = select i1 %1487, i1 %1489, i1 false
  br i1 %1490, label %1491, label %1497

1491:                                             ; preds = %1482
  %1492 = load <2 x i64>, ptr %34, align 8, !tbaa !44
  %1493 = trunc <2 x i64> %1492 to <2 x i32>
  store <2 x i32> %1493, ptr %33, align 4, !tbaa !28
  %1494 = load i64, ptr %41, align 8, !tbaa !44
  %1495 = trunc i64 %1494 to i32
  store i32 %1495, ptr %38, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #16
  %1496 = load ptr, ptr %10, align 8, !tbaa !38
  br label %1499

1497:                                             ; preds = %696, %1475, %1482, %1345, %1052, %922, %716, %707, %566, %112, %99, %48, %31
  %1498 = phi i64 [ -20, %1345 ], [ -20, %112 ], [ %1053, %1052 ], [ -70, %716 ], [ -20, %566 ], [ -20, %1482 ], [ -20, %707 ], [ -20, %922 ], [ -20, %31 ], [ -20, %48 ], [ -20, %99 ], [ %1476, %1475 ], [ %697, %696 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #16
  br label %1544

1499:                                             ; preds = %1491, %17
  %1500 = phi ptr [ %1496, %1491 ], [ %21, %17 ]
  %1501 = phi ptr [ %1484, %1491 ], [ %23, %17 ]
  %1502 = phi ptr [ %1483, %1491 ], [ %1, %17 ]
  %1503 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %1504 = load i32, ptr %1503, align 8, !tbaa !32
  %1505 = icmp eq i32 %1504, 2
  br i1 %1505, label %1508, label %1506

1506:                                             ; preds = %1499
  %1507 = ptrtoint ptr %19 to i64
  br label %1524

1508:                                             ; preds = %1499
  %1509 = ptrtoint ptr %1501 to i64
  %1510 = ptrtoint ptr %1500 to i64
  %1511 = sub i64 %1509, %1510
  %1512 = ptrtoint ptr %19 to i64
  %1513 = ptrtoint ptr %1502 to i64
  %1514 = sub i64 %1512, %1513
  %1515 = icmp ugt i64 %1511, %1514
  br i1 %1515, label %1544, label %1516

1516:                                             ; preds = %1508
  %1517 = icmp eq ptr %1502, null
  br i1 %1517, label %1520, label %1518

1518:                                             ; preds = %1516
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1502, ptr align 1 %1500, i64 %1511, i1 false)
  %1519 = getelementptr inbounds i8, ptr %1502, i64 %1511
  br label %1520

1520:                                             ; preds = %1518, %1516
  %1521 = phi ptr [ %1519, %1518 ], [ null, %1516 ]
  %1522 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %1523 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  store i32 0, ptr %1503, align 8, !tbaa !32
  br label %1524

1524:                                             ; preds = %1520, %1506
  %1525 = phi i64 [ %1507, %1506 ], [ %1512, %1520 ]
  %1526 = phi ptr [ %1500, %1506 ], [ %1522, %1520 ]
  %1527 = phi ptr [ %1501, %1506 ], [ %1523, %1520 ]
  %1528 = phi ptr [ %1502, %1506 ], [ %1521, %1520 ]
  %1529 = ptrtoint ptr %1527 to i64
  %1530 = ptrtoint ptr %1526 to i64
  %1531 = sub i64 %1529, %1530
  %1532 = ptrtoint ptr %1528 to i64
  %1533 = sub i64 %1525, %1532
  %1534 = icmp ugt i64 %1531, %1533
  br i1 %1534, label %1544, label %1535

1535:                                             ; preds = %1524
  %1536 = icmp eq ptr %1528, null
  br i1 %1536, label %1540, label %1537

1537:                                             ; preds = %1535
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1528, ptr align 1 %1526, i64 %1531, i1 false)
  %1538 = getelementptr inbounds i8, ptr %1528, i64 %1531
  %1539 = ptrtoint ptr %1538 to i64
  br label %1540

1540:                                             ; preds = %1537, %1535
  %1541 = phi i64 [ 0, %1535 ], [ %1539, %1537 ]
  %1542 = ptrtoint ptr %1 to i64
  %1543 = sub i64 %1541, %1542
  br label %1544

1544:                                             ; preds = %1497, %1508, %1524, %1540
  %1545 = phi i64 [ %1543, %1540 ], [ %1498, %1497 ], [ -70, %1524 ], [ -70, %1508 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %1546

1546:                                             ; preds = %1544, %15
  %1547 = phi i64 [ %16, %15 ], [ %1545, %1544 ]
  ret i64 %1547
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #7 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr i8, ptr %0, i64 30180
  %11 = load i32, ptr %10, align 4, !tbaa !29
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc i64 @ZSTD_decompressSequences_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %741

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %24 = load ptr, ptr %23, align 8, !tbaa !31
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %21, %19 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  store ptr %28, ptr %8, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 25
  %30 = load i64, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = icmp eq i32 %5, 0
  br i1 %38, label %720, label %39

39:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #16
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %40, align 4, !tbaa !62
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 0
  %42 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 0
  %43 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 1
  %44 = load <2 x i32>, ptr %41, align 4, !tbaa !28
  %45 = zext <2 x i32> %44 to <2 x i64>
  store <2 x i64> %45, ptr %42, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !28
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 2
  store i64 %48, ptr %49, align 8, !tbaa !44
  %50 = icmp eq i64 %4, 0
  br i1 %50, label %718, label %51

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 3
  store ptr %3, ptr %52, align 8, !tbaa !72
  %53 = getelementptr inbounds i8, ptr %3, i64 8
  %54 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !74
  %55 = icmp ugt i64 %4, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = add nsw i64 %4, -8
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  %59 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !75
  %60 = load i64, ptr %58, align 1
  store i64 %60, ptr %9, align 8, !tbaa !76
  %61 = icmp ult i64 %60, 72057594037927936
  br i1 %61, label %718, label %120

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %3, ptr %63, align 8, !tbaa !75
  %64 = load i8, ptr %3, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  store i64 %65, ptr %9, align 8, !tbaa !76
  switch i64 %4, label %107 [
    i64 7, label %66
    i64 6, label %72
    i64 5, label %79
    i64 4, label %86
    i64 3, label %93
    i64 2, label %100
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %3, i64 6
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 48
  %71 = or disjoint i64 %70, %65
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i64 [ %65, %62 ], [ %71, %66 ]
  %74 = getelementptr inbounds i8, ptr %3, i64 5
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 40
  %78 = add nuw nsw i64 %77, %73
  br label %79

79:                                               ; preds = %72, %62
  %80 = phi i64 [ %65, %62 ], [ %78, %72 ]
  %81 = getelementptr inbounds i8, ptr %3, i64 4
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 32
  %85 = add nuw nsw i64 %84, %80
  br label %86

86:                                               ; preds = %79, %62
  %87 = phi i64 [ %65, %62 ], [ %85, %79 ]
  %88 = getelementptr inbounds i8, ptr %3, i64 3
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 24
  %92 = add nuw nsw i64 %91, %87
  br label %93

93:                                               ; preds = %86, %62
  %94 = phi i64 [ %65, %62 ], [ %92, %86 ]
  %95 = getelementptr inbounds i8, ptr %3, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !9
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %62
  %101 = phi i64 [ %65, %62 ], [ %99, %93 ]
  %102 = getelementptr inbounds i8, ptr %3, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !9
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 8
  %106 = add nuw nsw i64 %105, %101
  store i64 %106, ptr %9, align 8, !tbaa !76
  br label %107

107:                                              ; preds = %100, %62
  %108 = phi i64 [ %106, %100 ], [ %65, %62 ]
  %109 = getelementptr i8, ptr %3, i64 %4
  %110 = getelementptr i8, ptr %109, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %718, label %113

113:                                              ; preds = %107
  %114 = zext i8 %111 to i32
  %115 = tail call i32 @llvm.ctlz.i32(i32 %114, i1 true), !range !55
  %116 = trunc i64 %4 to i32
  %117 = shl nuw nsw i32 %116, 3
  %118 = sub nsw i32 %115, %117
  %119 = add nsw i32 %118, 41
  br label %127

120:                                              ; preds = %56
  %121 = lshr i64 %60, 56
  %122 = trunc i64 %121 to i32
  %123 = tail call i32 @llvm.ctlz.i32(i32 %122, i1 true), !range !55
  %124 = xor i32 %123, 31
  %125 = sub nuw nsw i32 8, %124
  %126 = icmp ult i64 %4, -119
  br i1 %126, label %127, label %718

127:                                              ; preds = %120, %113
  %128 = phi i64 [ 0, %113 ], [ %57, %120 ]
  %129 = phi i32 [ %119, %113 ], [ %125, %120 ]
  %130 = phi i64 [ %108, %113 ], [ %60, %120 ]
  %131 = getelementptr inbounds i8, ptr %3, i64 %128
  %132 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1
  %133 = load ptr, ptr %0, align 8, !tbaa !77
  %134 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !63
  %136 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  %137 = add i32 %135, %129
  %138 = sub i32 0, %137
  %139 = and i32 %138, 63
  %140 = zext nneg i32 %139 to i64
  %141 = lshr i64 %130, %140
  %142 = zext nneg i32 %135 to i64
  %143 = shl nsw i64 -1, %142
  %144 = xor i64 %143, -1
  %145 = and i64 %141, %144
  store i64 %145, ptr %132, align 8, !tbaa !78
  %146 = icmp ugt i32 %137, 64
  %147 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  br i1 %146, label %148, label %149, !prof !51

148:                                              ; preds = %127
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %174

149:                                              ; preds = %127
  %150 = icmp slt i64 %128, 8
  br i1 %150, label %158, label %151

151:                                              ; preds = %149
  %152 = lshr i32 %137, 3
  %153 = zext nneg i32 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %131, i64 %154
  store ptr %155, ptr %147, align 8, !tbaa !75
  %156 = and i32 %137, 7
  store i32 %156, ptr %136, align 8, !tbaa !80
  %157 = load i64, ptr %155, align 1, !tbaa !44
  store i64 %157, ptr %9, align 8, !tbaa !76
  br label %174

158:                                              ; preds = %149
  %159 = icmp eq i64 %128, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %158
  %161 = lshr i32 %137, 3
  %162 = zext nneg i32 %161 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %131, i64 %163
  %165 = icmp ult ptr %164, %3
  %166 = trunc i64 %128 to i32
  %167 = select i1 %165, i32 %166, i32 %161
  %168 = zext i32 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %131, i64 %169
  store ptr %170, ptr %147, align 8, !tbaa !75
  %171 = shl i32 %167, 3
  %172 = sub i32 %137, %171
  store i32 %172, ptr %136, align 8, !tbaa !80
  %173 = load i64, ptr %170, align 1, !tbaa !44
  store i64 %173, ptr %9, align 8, !tbaa !76
  br label %174

174:                                              ; preds = %160, %158, %151, %148
  %175 = phi ptr [ @BIT_reloadDStream.zeroFilled, %148 ], [ %155, %151 ], [ %3, %158 ], [ %170, %160 ]
  %176 = phi i32 [ %137, %148 ], [ %156, %151 ], [ %137, %158 ], [ %172, %160 ]
  %177 = phi i64 [ %130, %148 ], [ %157, %151 ], [ %130, %158 ], [ %173, %160 ]
  %178 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %133, i64 1
  %179 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1, i32 1
  store ptr %178, ptr %179, align 8, !tbaa !81
  %180 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2
  %181 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !68
  %183 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %182, i64 0, i32 1
  %184 = load i32, ptr %183, align 4, !tbaa !63
  %185 = add i32 %184, %176
  %186 = sub i32 0, %185
  %187 = and i32 %186, 63
  %188 = zext nneg i32 %187 to i64
  %189 = lshr i64 %177, %188
  %190 = zext nneg i32 %184 to i64
  %191 = shl nsw i64 -1, %190
  %192 = xor i64 %191, -1
  %193 = and i64 %189, %192
  store i64 %193, ptr %180, align 8, !tbaa !78
  %194 = icmp ugt i32 %185, 64
  br i1 %194, label %195, label %196, !prof !51

195:                                              ; preds = %174
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %224

196:                                              ; preds = %174
  %197 = icmp ult ptr %175, %53
  br i1 %197, label %205, label %198

198:                                              ; preds = %196
  %199 = lshr i32 %185, 3
  %200 = zext nneg i32 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, ptr %175, i64 %201
  store ptr %202, ptr %147, align 8, !tbaa !75
  %203 = and i32 %185, 7
  %204 = load i64, ptr %202, align 1, !tbaa !44
  store i64 %204, ptr %9, align 8, !tbaa !76
  br label %224

205:                                              ; preds = %196
  %206 = icmp eq ptr %175, %3
  br i1 %206, label %224, label %207

207:                                              ; preds = %205
  %208 = lshr i32 %185, 3
  %209 = zext nneg i32 %208 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %175, i64 %210
  %212 = icmp ult ptr %211, %3
  %213 = ptrtoint ptr %175 to i64
  %214 = ptrtoint ptr %3 to i64
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  %217 = select i1 %212, i32 %216, i32 %208
  %218 = zext i32 %217 to i64
  %219 = sub nsw i64 0, %218
  %220 = getelementptr inbounds i8, ptr %175, i64 %219
  store ptr %220, ptr %147, align 8, !tbaa !75
  %221 = shl i32 %217, 3
  %222 = sub i32 %185, %221
  %223 = load i64, ptr %220, align 1, !tbaa !44
  store i64 %223, ptr %9, align 8, !tbaa !76
  br label %224

224:                                              ; preds = %207, %205, %198, %195
  %225 = phi ptr [ @BIT_reloadDStream.zeroFilled, %195 ], [ %202, %198 ], [ %3, %205 ], [ %220, %207 ]
  %226 = phi i32 [ %185, %195 ], [ %203, %198 ], [ %185, %205 ], [ %222, %207 ]
  %227 = phi i64 [ %177, %195 ], [ %204, %198 ], [ %177, %205 ], [ %223, %207 ]
  %228 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %182, i64 1
  %229 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2, i32 1
  store ptr %228, ptr %229, align 8, !tbaa !81
  %230 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3
  %231 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !82
  %233 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %232, i64 0, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !63
  %235 = add i32 %234, %226
  %236 = sub i32 0, %235
  %237 = and i32 %236, 63
  %238 = zext nneg i32 %237 to i64
  %239 = lshr i64 %227, %238
  %240 = zext nneg i32 %234 to i64
  %241 = shl nsw i64 -1, %240
  %242 = xor i64 %241, -1
  %243 = and i64 %239, %242
  store i32 %235, ptr %136, align 8, !tbaa !80
  store i64 %243, ptr %230, align 8, !tbaa !78
  %244 = icmp ugt i32 %235, 64
  br i1 %244, label %245, label %246, !prof !51

245:                                              ; preds = %224
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %274

246:                                              ; preds = %224
  %247 = icmp ult ptr %225, %53
  br i1 %247, label %255, label %248

248:                                              ; preds = %246
  %249 = lshr i32 %235, 3
  %250 = zext nneg i32 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, ptr %225, i64 %251
  store ptr %252, ptr %147, align 8, !tbaa !75
  %253 = and i32 %235, 7
  store i32 %253, ptr %136, align 8, !tbaa !80
  %254 = load i64, ptr %252, align 1, !tbaa !44
  store i64 %254, ptr %9, align 8, !tbaa !76
  br label %274

255:                                              ; preds = %246
  %256 = icmp eq ptr %225, %3
  br i1 %256, label %274, label %257

257:                                              ; preds = %255
  %258 = lshr i32 %235, 3
  %259 = zext nneg i32 %258 to i64
  %260 = sub nsw i64 0, %259
  %261 = getelementptr inbounds i8, ptr %225, i64 %260
  %262 = icmp ult ptr %261, %3
  %263 = ptrtoint ptr %225 to i64
  %264 = ptrtoint ptr %3 to i64
  %265 = sub i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = select i1 %262, i32 %266, i32 %258
  %268 = zext i32 %267 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, ptr %225, i64 %269
  store ptr %270, ptr %147, align 8, !tbaa !75
  %271 = shl i32 %267, 3
  %272 = sub i32 %235, %271
  store i32 %272, ptr %136, align 8, !tbaa !80
  %273 = load i64, ptr %270, align 1, !tbaa !44
  store i64 %273, ptr %9, align 8, !tbaa !76
  br label %274

274:                                              ; preds = %257, %255, %248, %245
  %275 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %232, i64 1
  %276 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3, i32 1
  store ptr %275, ptr %276, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !160
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !161
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !162
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !163
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !164
  %277 = getelementptr inbounds i8, ptr %7, i64 8
  %278 = getelementptr inbounds i8, ptr %7, i64 16
  %279 = getelementptr inbounds i8, ptr %26, i64 -32
  %280 = ptrtoint ptr %33 to i64
  %281 = ptrtoint ptr %35 to i64
  br label %282

282:                                              ; preds = %702, %274
  %283 = phi i32 [ %5, %274 ], [ %703, %702 ]
  %284 = phi ptr [ %1, %274 ], [ %697, %702 ]
  %285 = icmp eq i32 %283, 1
  %286 = load ptr, ptr %179, align 8, !tbaa !92, !noalias !165
  %287 = load i64, ptr %132, align 8, !tbaa !97, !noalias !165
  %288 = load ptr, ptr %276, align 8, !tbaa !98, !noalias !165
  %289 = load i64, ptr %230, align 8, !tbaa !99, !noalias !165
  %290 = load ptr, ptr %229, align 8, !tbaa !100, !noalias !165
  %291 = load i64, ptr %180, align 8, !tbaa !101, !noalias !165
  %292 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %288, i64 %289, i32 3
  %293 = load i32, ptr %292, align 4, !tbaa !41, !noalias !165
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %286, i64 %287, i32 3
  %296 = load i32, ptr %295, align 4, !tbaa !41, !noalias !165
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %290, i64 %291, i32 3
  %299 = load i32, ptr %298, align 4, !tbaa !41, !noalias !165
  %300 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %286, i64 %287, i32 1
  %301 = load i8, ptr %300, align 2, !tbaa !58, !noalias !165
  %302 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %288, i64 %289, i32 1
  %303 = load i8, ptr %302, align 2, !tbaa !58, !noalias !165
  %304 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %290, i64 %291, i32 1
  %305 = load i8, ptr %304, align 2, !tbaa !58, !noalias !165
  %306 = zext i8 %301 to i32
  %307 = zext i8 %303 to i32
  %308 = add i8 %303, %301
  %309 = add i8 %308, %305
  %310 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %290, i64 %291
  %311 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %288, i64 %289
  %312 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %286, i64 %287
  %313 = load i16, ptr %312, align 4, !tbaa !57, !noalias !165
  %314 = load i16, ptr %311, align 4, !tbaa !57, !noalias !165
  %315 = load i16, ptr %310, align 4, !tbaa !57, !noalias !165
  %316 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %286, i64 %287, i32 2
  %317 = load i8, ptr %316, align 1, !tbaa !56, !noalias !165
  %318 = zext i8 %317 to i32
  %319 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %288, i64 %289, i32 2
  %320 = load i8, ptr %319, align 1, !tbaa !56, !noalias !165
  %321 = zext i8 %320 to i32
  %322 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %290, i64 %291, i32 2
  %323 = load i8, ptr %322, align 1, !tbaa !56, !noalias !165
  %324 = zext i8 %323 to i32
  %325 = icmp ugt i8 %305, 1
  br i1 %325, label %326, label %341

326:                                              ; preds = %282
  %327 = zext i8 %305 to i32
  %328 = load i64, ptr %9, align 8, !tbaa !76, !noalias !165
  %329 = load i32, ptr %136, align 8, !tbaa !80, !noalias !165
  %330 = and i32 %329, 63
  %331 = zext nneg i32 %330 to i64
  %332 = shl i64 %328, %331
  %333 = sub nsw i32 0, %327
  %334 = and i32 %333, 63
  %335 = zext nneg i32 %334 to i64
  %336 = lshr i64 %332, %335
  %337 = add i32 %329, %327
  store i32 %337, ptr %136, align 8, !tbaa !80, !noalias !165
  %338 = zext i32 %299 to i64
  %339 = add i64 %336, %338
  %340 = load i64, ptr %43, align 8, !tbaa !44, !noalias !165
  store i64 %340, ptr %49, align 8, !tbaa !44, !noalias !165
  br label %380

341:                                              ; preds = %282
  %342 = icmp eq i32 %296, 0
  %343 = icmp eq i8 %305, 0
  br i1 %343, label %344, label %351, !prof !87

344:                                              ; preds = %341
  %345 = zext i1 %342 to i64
  %346 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !44, !noalias !165
  %348 = xor i1 %342, true
  %349 = zext i1 %348 to i64
  %350 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %349
  br label %380

351:                                              ; preds = %341
  %352 = zext i1 %342 to i32
  %353 = add i32 %299, %352
  %354 = zext i32 %353 to i64
  %355 = load i64, ptr %9, align 8, !tbaa !76, !noalias !165
  %356 = load i32, ptr %136, align 8, !tbaa !80, !noalias !165
  %357 = and i32 %356, 63
  %358 = zext nneg i32 %357 to i64
  %359 = shl i64 %355, %358
  %360 = lshr i64 %359, 63
  %361 = add i32 %356, 1
  store i32 %361, ptr %136, align 8, !tbaa !80, !noalias !165
  %362 = add nuw nsw i64 %360, %354
  %363 = icmp eq i64 %362, 3
  br i1 %363, label %364, label %370

364:                                              ; preds = %351
  %365 = load i64, ptr %42, align 8, !tbaa !44, !noalias !165
  %366 = add i64 %365, -1
  %367 = icmp eq i64 %366, 0
  %368 = sext i1 %367 to i64
  %369 = add i64 %366, %368
  br label %377

370:                                              ; preds = %351
  %371 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %362
  %372 = load i64, ptr %371, align 8, !tbaa !44, !noalias !165
  %373 = icmp eq i64 %372, 0
  %374 = sext i1 %373 to i64
  %375 = add i64 %372, %374
  %376 = icmp eq i64 %362, 1
  br i1 %376, label %380, label %377

377:                                              ; preds = %370, %364
  %378 = phi i64 [ %369, %364 ], [ %375, %370 ]
  %379 = load i64, ptr %43, align 8, !tbaa !44, !noalias !165
  store i64 %379, ptr %49, align 8, !tbaa !44, !noalias !165
  br label %380

380:                                              ; preds = %377, %370, %344, %326
  %381 = phi ptr [ %350, %344 ], [ %42, %326 ], [ %42, %377 ], [ %42, %370 ]
  %382 = phi i64 [ %347, %344 ], [ %339, %326 ], [ %378, %377 ], [ %375, %370 ]
  %383 = load i64, ptr %381, align 8, !tbaa !44, !noalias !165
  store i64 %383, ptr %43, align 8, !tbaa !44, !noalias !165
  store i64 %382, ptr %42, align 8, !tbaa !44, !noalias !165
  %384 = icmp eq i8 %303, 0
  br i1 %384, label %397, label %385

385:                                              ; preds = %380
  %386 = load i64, ptr %9, align 8, !tbaa !76, !noalias !165
  %387 = load i32, ptr %136, align 8, !tbaa !80, !noalias !165
  %388 = and i32 %387, 63
  %389 = zext nneg i32 %388 to i64
  %390 = shl i64 %386, %389
  %391 = sub nsw i32 0, %307
  %392 = and i32 %391, 63
  %393 = zext nneg i32 %392 to i64
  %394 = lshr i64 %390, %393
  %395 = add i32 %387, %307
  store i32 %395, ptr %136, align 8, !tbaa !80, !noalias !165
  %396 = add i64 %394, %294
  br label %397

397:                                              ; preds = %385, %380
  %398 = phi i64 [ %294, %380 ], [ %396, %385 ]
  %399 = icmp ugt i8 %309, 30
  br i1 %399, label %400, label %435, !prof !51

400:                                              ; preds = %397
  %401 = load i32, ptr %136, align 8, !tbaa !80, !noalias !165
  %402 = icmp ugt i32 %401, 64
  br i1 %402, label %403, label %404, !prof !51

403:                                              ; preds = %400
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !165
  br label %435

404:                                              ; preds = %400
  %405 = load ptr, ptr %147, align 8, !tbaa !75, !noalias !165
  %406 = load ptr, ptr %54, align 8, !tbaa !74, !noalias !165
  %407 = icmp ult ptr %405, %406
  br i1 %407, label %415, label %408

408:                                              ; preds = %404
  %409 = lshr i32 %401, 3
  %410 = zext nneg i32 %409 to i64
  %411 = sub nsw i64 0, %410
  %412 = getelementptr inbounds i8, ptr %405, i64 %411
  store ptr %412, ptr %147, align 8, !tbaa !75, !noalias !165
  %413 = and i32 %401, 7
  store i32 %413, ptr %136, align 8, !tbaa !80, !noalias !165
  %414 = load i64, ptr %412, align 1, !tbaa !44, !noalias !165
  store i64 %414, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %435

415:                                              ; preds = %404
  %416 = load ptr, ptr %52, align 8, !tbaa !72, !noalias !165
  %417 = icmp eq ptr %405, %416
  br i1 %417, label %435, label %418

418:                                              ; preds = %415
  %419 = lshr i32 %401, 3
  %420 = zext nneg i32 %419 to i64
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %405, i64 %421
  %423 = icmp ult ptr %422, %416
  %424 = ptrtoint ptr %405 to i64
  %425 = ptrtoint ptr %416 to i64
  %426 = sub i64 %424, %425
  %427 = trunc i64 %426 to i32
  %428 = select i1 %423, i32 %427, i32 %419
  %429 = zext i32 %428 to i64
  %430 = sub nsw i64 0, %429
  %431 = getelementptr inbounds i8, ptr %405, i64 %430
  store ptr %431, ptr %147, align 8, !tbaa !75, !noalias !165
  %432 = shl i32 %428, 3
  %433 = sub i32 %401, %432
  store i32 %433, ptr %136, align 8, !tbaa !80, !noalias !165
  %434 = load i64, ptr %431, align 1, !tbaa !44, !noalias !165
  store i64 %434, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %435

435:                                              ; preds = %418, %415, %408, %403, %397
  %436 = icmp eq i8 %301, 0
  br i1 %436, label %449, label %437

437:                                              ; preds = %435
  %438 = load i64, ptr %9, align 8, !tbaa !76, !noalias !165
  %439 = load i32, ptr %136, align 8, !tbaa !80, !noalias !165
  %440 = and i32 %439, 63
  %441 = zext nneg i32 %440 to i64
  %442 = shl i64 %438, %441
  %443 = sub nsw i32 0, %306
  %444 = and i32 %443, 63
  %445 = zext nneg i32 %444 to i64
  %446 = lshr i64 %442, %445
  %447 = add i32 %439, %306
  store i32 %447, ptr %136, align 8, !tbaa !80, !noalias !165
  %448 = add i64 %446, %297
  br label %449

449:                                              ; preds = %437, %435
  %450 = phi i64 [ %297, %435 ], [ %448, %437 ]
  br i1 %285, label %520, label %451

451:                                              ; preds = %449
  %452 = load i64, ptr %9, align 8, !tbaa !76, !noalias !165
  %453 = load i32, ptr %136, align 8, !tbaa !80, !noalias !165
  %454 = add i32 %453, %318
  %455 = sub i32 0, %454
  %456 = and i32 %455, 63
  %457 = zext nneg i32 %456 to i64
  %458 = lshr i64 %452, %457
  %459 = zext nneg i8 %317 to i64
  %460 = shl nsw i64 -1, %459
  %461 = xor i64 %460, -1
  %462 = and i64 %458, %461
  %463 = zext i16 %313 to i64
  %464 = add nuw i64 %462, %463
  store i64 %464, ptr %132, align 8, !tbaa !78, !noalias !165
  %465 = add i32 %454, %321
  %466 = sub i32 0, %465
  %467 = and i32 %466, 63
  %468 = zext nneg i32 %467 to i64
  %469 = lshr i64 %452, %468
  %470 = zext nneg i8 %320 to i64
  %471 = shl nsw i64 -1, %470
  %472 = xor i64 %471, -1
  %473 = and i64 %469, %472
  %474 = zext i16 %314 to i64
  %475 = add nuw i64 %473, %474
  store i64 %475, ptr %230, align 8, !tbaa !78, !noalias !165
  %476 = add i32 %465, %324
  %477 = sub i32 0, %476
  %478 = and i32 %477, 63
  %479 = zext nneg i32 %478 to i64
  %480 = lshr i64 %452, %479
  %481 = zext nneg i8 %323 to i64
  %482 = shl nsw i64 -1, %481
  %483 = xor i64 %482, -1
  %484 = and i64 %480, %483
  store i32 %476, ptr %136, align 8, !tbaa !80, !noalias !165
  %485 = zext i16 %315 to i64
  %486 = add nuw i64 %484, %485
  store i64 %486, ptr %180, align 8, !tbaa !78, !noalias !165
  %487 = icmp ugt i32 %476, 64
  br i1 %487, label %488, label %489, !prof !51

488:                                              ; preds = %451
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !165
  br label %520

489:                                              ; preds = %451
  %490 = load ptr, ptr %147, align 8, !tbaa !75, !noalias !165
  %491 = load ptr, ptr %54, align 8, !tbaa !74, !noalias !165
  %492 = icmp ult ptr %490, %491
  br i1 %492, label %500, label %493

493:                                              ; preds = %489
  %494 = lshr i32 %476, 3
  %495 = zext nneg i32 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, ptr %490, i64 %496
  store ptr %497, ptr %147, align 8, !tbaa !75, !noalias !165
  %498 = and i32 %476, 7
  store i32 %498, ptr %136, align 8, !tbaa !80, !noalias !165
  %499 = load i64, ptr %497, align 1, !tbaa !44, !noalias !165
  store i64 %499, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %520

500:                                              ; preds = %489
  %501 = load ptr, ptr %52, align 8, !tbaa !72, !noalias !165
  %502 = icmp eq ptr %490, %501
  br i1 %502, label %520, label %503

503:                                              ; preds = %500
  %504 = lshr i32 %476, 3
  %505 = zext nneg i32 %504 to i64
  %506 = sub nsw i64 0, %505
  %507 = getelementptr inbounds i8, ptr %490, i64 %506
  %508 = icmp ult ptr %507, %501
  %509 = ptrtoint ptr %490 to i64
  %510 = ptrtoint ptr %501 to i64
  %511 = sub i64 %509, %510
  %512 = trunc i64 %511 to i32
  %513 = select i1 %508, i32 %512, i32 %504
  %514 = zext i32 %513 to i64
  %515 = sub nsw i64 0, %514
  %516 = getelementptr inbounds i8, ptr %490, i64 %515
  store ptr %516, ptr %147, align 8, !tbaa !75, !noalias !165
  %517 = shl i32 %513, 3
  %518 = sub i32 %476, %517
  store i32 %518, ptr %136, align 8, !tbaa !80, !noalias !165
  %519 = load i64, ptr %516, align 1, !tbaa !44, !noalias !165
  store i64 %519, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %520

520:                                              ; preds = %503, %500, %493, %488, %449
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %450, ptr %7, align 8
  store i64 %398, ptr %277, align 8
  store i64 %382, ptr %278, align 8
  %521 = getelementptr inbounds i8, ptr %284, i64 %450
  %522 = add i64 %450, %398
  %523 = load ptr, ptr %8, align 8, !tbaa !38
  %524 = getelementptr inbounds i8, ptr %523, i64 %450
  %525 = sub i64 0, %382
  %526 = getelementptr inbounds i8, ptr %521, i64 %525
  %527 = icmp ugt ptr %524, %31
  %528 = getelementptr inbounds i8, ptr %284, i64 %522
  %529 = icmp ugt ptr %528, %279
  %530 = select i1 %527, i1 true, i1 %529
  br i1 %530, label %534, label %531, !prof !111

531:                                              ; preds = %520
  %532 = load <2 x i64>, ptr %523, align 1, !tbaa !9
  store <2 x i64> %532, ptr %284, align 1, !tbaa !9
  %533 = icmp ugt i64 %450, 16
  br i1 %533, label %536, label %556, !prof !51

534:                                              ; preds = %520
  %535 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %284, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef %37)
  br label %694

536:                                              ; preds = %531
  %537 = getelementptr inbounds i8, ptr %284, i64 16
  %538 = getelementptr inbounds i8, ptr %523, i64 16
  %539 = add i64 %450, -16
  %540 = load <2 x i64>, ptr %538, align 1, !tbaa !9
  store <2 x i64> %540, ptr %537, align 1, !tbaa !9
  %541 = icmp ult i64 %539, 17
  br i1 %541, label %556, label %542

542:                                              ; preds = %536
  %543 = getelementptr inbounds i8, ptr %284, i64 32
  br label %544

544:                                              ; preds = %544, %542
  %545 = phi ptr [ %543, %542 ], [ %552, %544 ]
  %546 = phi ptr [ %538, %542 ], [ %550, %544 ]
  %547 = getelementptr inbounds i8, ptr %546, i64 16
  %548 = load <2 x i64>, ptr %547, align 1, !tbaa !9
  store <2 x i64> %548, ptr %545, align 1, !tbaa !9
  %549 = getelementptr inbounds i8, ptr %545, i64 16
  %550 = getelementptr inbounds i8, ptr %546, i64 32
  %551 = load <2 x i64>, ptr %550, align 1, !tbaa !9
  store <2 x i64> %551, ptr %549, align 1, !tbaa !9
  %552 = getelementptr inbounds i8, ptr %545, i64 32
  %553 = icmp ult ptr %552, %521
  br i1 %553, label %544, label %554, !llvm.loop !105

554:                                              ; preds = %544
  %555 = load i64, ptr %278, align 8, !tbaa !136
  br label %556

556:                                              ; preds = %554, %536, %531
  %557 = phi i64 [ %555, %554 ], [ %382, %536 ], [ %382, %531 ]
  store ptr %524, ptr %8, align 8, !tbaa !38
  %558 = ptrtoint ptr %521 to i64
  %559 = sub i64 %558, %280
  %560 = icmp ugt i64 %557, %559
  br i1 %560, label %561, label %576

561:                                              ; preds = %556
  %562 = sub i64 %558, %281
  %563 = icmp ugt i64 %557, %562
  br i1 %563, label %564, label %565, !prof !51

564:                                              ; preds = %561
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %718

565:                                              ; preds = %561
  %566 = ptrtoint ptr %526 to i64
  %567 = sub i64 %566, %280
  %568 = getelementptr inbounds i8, ptr %37, i64 %567
  %569 = getelementptr inbounds i8, ptr %568, i64 %398
  %570 = icmp ugt ptr %569, %37
  br i1 %570, label %572, label %571

571:                                              ; preds = %565
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %521, ptr align 1 %568, i64 %398, i1 false)
  br label %694

572:                                              ; preds = %565
  %573 = sub i64 0, %567
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %521, ptr align 1 %568, i64 %573, i1 false)
  %574 = getelementptr inbounds i8, ptr %521, i64 %573
  %575 = add i64 %567, %398
  store i64 %575, ptr %277, align 8, !tbaa !137
  br label %576

576:                                              ; preds = %572, %556
  %577 = phi i64 [ %575, %572 ], [ %398, %556 ]
  %578 = phi ptr [ %33, %572 ], [ %526, %556 ]
  %579 = phi ptr [ %574, %572 ], [ %521, %556 ]
  %580 = ptrtoint ptr %579 to i64
  %581 = icmp ugt i64 %557, 15
  br i1 %581, label %582, label %598, !prof !87

582:                                              ; preds = %576
  %583 = getelementptr inbounds i8, ptr %579, i64 %577
  %584 = load <2 x i64>, ptr %578, align 1, !tbaa !9
  store <2 x i64> %584, ptr %579, align 1, !tbaa !9
  %585 = icmp ult i64 %577, 17
  br i1 %585, label %694, label %586

586:                                              ; preds = %582
  %587 = getelementptr inbounds i8, ptr %579, i64 16
  br label %588

588:                                              ; preds = %588, %586
  %589 = phi ptr [ %587, %586 ], [ %596, %588 ]
  %590 = phi ptr [ %578, %586 ], [ %594, %588 ]
  %591 = getelementptr inbounds i8, ptr %590, i64 16
  %592 = load <2 x i64>, ptr %591, align 1, !tbaa !9
  store <2 x i64> %592, ptr %589, align 1, !tbaa !9
  %593 = getelementptr inbounds i8, ptr %589, i64 16
  %594 = getelementptr inbounds i8, ptr %590, i64 32
  %595 = load <2 x i64>, ptr %594, align 1, !tbaa !9
  store <2 x i64> %595, ptr %593, align 1, !tbaa !9
  %596 = getelementptr inbounds i8, ptr %589, i64 32
  %597 = icmp ult ptr %596, %583
  br i1 %597, label %588, label %694, !llvm.loop !105

598:                                              ; preds = %576
  %599 = icmp ult i64 %557, 8
  br i1 %599, label %600, label %623

600:                                              ; preds = %598
  %601 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %557
  %602 = load i32, ptr %601, align 4, !tbaa !28
  %603 = load i8, ptr %578, align 1, !tbaa !9
  store i8 %603, ptr %579, align 1, !tbaa !9
  %604 = getelementptr inbounds i8, ptr %578, i64 1
  %605 = load i8, ptr %604, align 1, !tbaa !9
  %606 = getelementptr inbounds i8, ptr %579, i64 1
  store i8 %605, ptr %606, align 1, !tbaa !9
  %607 = getelementptr inbounds i8, ptr %578, i64 2
  %608 = load i8, ptr %607, align 1, !tbaa !9
  %609 = getelementptr inbounds i8, ptr %579, i64 2
  store i8 %608, ptr %609, align 1, !tbaa !9
  %610 = getelementptr inbounds i8, ptr %578, i64 3
  %611 = load i8, ptr %610, align 1, !tbaa !9
  %612 = getelementptr inbounds i8, ptr %579, i64 3
  store i8 %611, ptr %612, align 1, !tbaa !9
  %613 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %557
  %614 = load i32, ptr %613, align 4, !tbaa !28
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds i8, ptr %578, i64 %615
  %617 = getelementptr inbounds i8, ptr %579, i64 4
  %618 = load i32, ptr %616, align 1
  store i32 %618, ptr %617, align 1
  %619 = sext i32 %602 to i64
  %620 = sub nsw i64 0, %619
  %621 = getelementptr inbounds i8, ptr %616, i64 %620
  %622 = load i64, ptr %277, align 8, !tbaa !137
  br label %625

623:                                              ; preds = %598
  %624 = load i64, ptr %578, align 1
  store i64 %624, ptr %579, align 1
  br label %625

625:                                              ; preds = %623, %600
  %626 = phi i64 [ %622, %600 ], [ %577, %623 ]
  %627 = phi ptr [ %621, %600 ], [ %578, %623 ]
  %628 = getelementptr i8, ptr %627, i64 8
  %629 = getelementptr i8, ptr %579, i64 8
  %630 = icmp ugt i64 %626, 8
  br i1 %630, label %631, label %694

631:                                              ; preds = %625
  %632 = ptrtoint ptr %629 to i64
  %633 = ptrtoint ptr %628 to i64
  %634 = sub i64 %632, %633
  %635 = getelementptr inbounds i8, ptr %579, i64 %626
  %636 = icmp slt i64 %634, 16
  br i1 %636, label %637, label %678

637:                                              ; preds = %631
  %638 = add i64 %626, %580
  %639 = add i64 %580, 16
  %640 = tail call i64 @llvm.umax.i64(i64 %638, i64 %639)
  %641 = add i64 %640, -9
  %642 = sub i64 %641, %580
  %643 = lshr i64 %642, 3
  %644 = add nuw nsw i64 %643, 1
  %645 = icmp ult i64 %642, 24
  %646 = icmp ult i64 %634, 32
  %647 = or i1 %645, %646
  br i1 %647, label %668, label %648

648:                                              ; preds = %637
  %649 = and i64 %644, 4611686018427387900
  %650 = shl i64 %649, 3
  %651 = getelementptr i8, ptr %629, i64 %650
  %652 = shl i64 %649, 3
  %653 = getelementptr i8, ptr %628, i64 %652
  br label %654

654:                                              ; preds = %654, %648
  %655 = phi i64 [ 0, %648 ], [ %664, %654 ]
  %656 = shl i64 %655, 3
  %657 = getelementptr i8, ptr %629, i64 %656
  %658 = shl i64 %655, 3
  %659 = getelementptr i8, ptr %628, i64 %658
  %660 = getelementptr i64, ptr %659, i64 2
  %661 = load <2 x i64>, ptr %659, align 1
  %662 = load <2 x i64>, ptr %660, align 1
  %663 = getelementptr i64, ptr %657, i64 2
  store <2 x i64> %661, ptr %657, align 1
  store <2 x i64> %662, ptr %663, align 1
  %664 = add nuw i64 %655, 4
  %665 = icmp eq i64 %664, %649
  br i1 %665, label %666, label %654, !llvm.loop !168

666:                                              ; preds = %654
  %667 = icmp eq i64 %644, %649
  br i1 %667, label %694, label %668

668:                                              ; preds = %637, %666
  %669 = phi ptr [ %629, %637 ], [ %651, %666 ]
  %670 = phi ptr [ %628, %637 ], [ %653, %666 ]
  br label %671

671:                                              ; preds = %668, %671
  %672 = phi ptr [ %675, %671 ], [ %669, %668 ]
  %673 = phi ptr [ %676, %671 ], [ %670, %668 ]
  %674 = load i64, ptr %673, align 1
  store i64 %674, ptr %672, align 1
  %675 = getelementptr inbounds i8, ptr %672, i64 8
  %676 = getelementptr inbounds i8, ptr %673, i64 8
  %677 = icmp ult ptr %675, %635
  br i1 %677, label %671, label %694, !llvm.loop !169

678:                                              ; preds = %631
  %679 = add i64 %626, -8
  %680 = load <2 x i64>, ptr %628, align 1, !tbaa !9
  store <2 x i64> %680, ptr %629, align 1, !tbaa !9
  %681 = icmp ult i64 %679, 17
  br i1 %681, label %694, label %682

682:                                              ; preds = %678
  %683 = getelementptr inbounds i8, ptr %579, i64 24
  br label %684

684:                                              ; preds = %684, %682
  %685 = phi ptr [ %683, %682 ], [ %692, %684 ]
  %686 = phi ptr [ %628, %682 ], [ %690, %684 ]
  %687 = getelementptr inbounds i8, ptr %686, i64 16
  %688 = load <2 x i64>, ptr %687, align 1, !tbaa !9
  store <2 x i64> %688, ptr %685, align 1, !tbaa !9
  %689 = getelementptr inbounds i8, ptr %685, i64 16
  %690 = getelementptr inbounds i8, ptr %686, i64 32
  %691 = load <2 x i64>, ptr %690, align 1, !tbaa !9
  store <2 x i64> %691, ptr %689, align 1, !tbaa !9
  %692 = getelementptr inbounds i8, ptr %685, i64 32
  %693 = icmp ult ptr %692, %635
  br i1 %693, label %684, label %694, !llvm.loop !105

694:                                              ; preds = %684, %671, %588, %666, %678, %625, %582, %571, %534
  %695 = phi i64 [ %535, %534 ], [ %522, %571 ], [ %522, %625 ], [ %522, %582 ], [ %522, %678 ], [ %522, %666 ], [ %522, %588 ], [ %522, %671 ], [ %522, %684 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %696 = icmp ult i64 %695, -119
  %697 = getelementptr inbounds i8, ptr %284, i64 %695
  br i1 %696, label %698, label %718

698:                                              ; preds = %694
  %699 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %283, i32 -1)
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !86
  br i1 %700, label %701, label %702, !nosanitize !86

701:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !86
  unreachable, !nosanitize !86

702:                                              ; preds = %698
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !86
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %282, !llvm.loop !170

705:                                              ; preds = %702
  %706 = load ptr, ptr %147, align 8, !tbaa !75
  %707 = load ptr, ptr %52, align 8, !tbaa !72
  %708 = icmp eq ptr %706, %707
  %709 = load i32, ptr %136, align 8
  %710 = icmp eq i32 %709, 64
  %711 = select i1 %708, i1 %710, i1 false
  br i1 %711, label %712, label %718

712:                                              ; preds = %705
  %713 = load <2 x i64>, ptr %42, align 8, !tbaa !44
  %714 = trunc <2 x i64> %713 to <2 x i32>
  store <2 x i32> %714, ptr %41, align 4, !tbaa !28
  %715 = load i64, ptr %49, align 8, !tbaa !44
  %716 = trunc i64 %715 to i32
  store i32 %716, ptr %46, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  %717 = load ptr, ptr %8, align 8, !tbaa !38
  br label %720

718:                                              ; preds = %694, %705, %564, %120, %107, %56, %39
  %719 = phi i64 [ -20, %564 ], [ -20, %120 ], [ -20, %705 ], [ -20, %39 ], [ -20, %56 ], [ -20, %107 ], [ %695, %694 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  br label %739

720:                                              ; preds = %712, %25
  %721 = phi ptr [ %717, %712 ], [ %28, %25 ]
  %722 = phi ptr [ %697, %712 ], [ %1, %25 ]
  %723 = ptrtoint ptr %31 to i64
  %724 = ptrtoint ptr %721 to i64
  %725 = sub i64 %723, %724
  %726 = ptrtoint ptr %26 to i64
  %727 = ptrtoint ptr %722 to i64
  %728 = sub i64 %726, %727
  %729 = icmp ugt i64 %725, %728
  br i1 %729, label %739, label %730

730:                                              ; preds = %720
  %731 = icmp eq ptr %722, null
  br i1 %731, label %735, label %732

732:                                              ; preds = %730
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %722, ptr align 1 %721, i64 %725, i1 false)
  %733 = getelementptr inbounds i8, ptr %722, i64 %725
  %734 = ptrtoint ptr %733 to i64
  br label %735

735:                                              ; preds = %732, %730
  %736 = phi i64 [ 0, %730 ], [ %734, %732 ]
  %737 = ptrtoint ptr %1 to i64
  %738 = sub i64 %736, %737
  br label %739

739:                                              ; preds = %718, %720, %735
  %740 = phi i64 [ %738, %735 ], [ %719, %718 ], [ -70, %720 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %741

741:                                              ; preds = %739, %13
  %742 = phi i64 [ %14, %13 ], [ %740, %739 ]
  ret i64 %742
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_checkContinuity(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = icmp ne ptr %5, %1
  %7 = icmp ne i64 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr %5, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %14, %13
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %16, ptr %17, align 8, !tbaa !67
  store ptr %1, ptr %11, align 8, !tbaa !70
  store ptr %1, ptr %4, align 8, !tbaa !171
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !171
  %9 = icmp ne ptr %8, %1
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr %8, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %19, ptr %20, align 8, !tbaa !67
  store ptr %1, ptr %14, align 8, !tbaa !70
  store ptr %1, ptr %7, align 8, !tbaa !171
  br label %21

21:                                               ; preds = %5, %12
  %22 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %23 = icmp ult i64 %22, -119
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %1, i64 %22
  store ptr %25, ptr %7, align 8, !tbaa !171
  br label %26

26:                                               ; preds = %21, %24
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !171
  %9 = icmp ne ptr %8, %1
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr %8, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %19, ptr %20, align 8, !tbaa !67
  store ptr %1, ptr %14, align 8, !tbaa !70
  store ptr %1, ptr %7, align 8, !tbaa !171
  br label %21

21:                                               ; preds = %12, %5
  %22 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %23 = icmp ult i64 %22, -119
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %1, i64 %22
  store ptr %25, ptr %7, align 8, !tbaa !171
  br label %26

26:                                               ; preds = %21, %24
  ret i64 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #8

declare i64 @HUF_decompress1X_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare i64 @HUF_decompress4X_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #12 {
  %7 = alloca ptr, align 8
  %8 = alloca [8 x %struct.seq_t], align 16
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %11 = load i32, ptr %10, align 8, !tbaa !32
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  br label %19

16:                                               ; preds = %6
  %17 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %18 = getelementptr inbounds i8, ptr %1, i64 %17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %18, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  store ptr %22, ptr %7, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %2276, label %32

32:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #16
  %33 = ptrtoint ptr %26 to i64
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %34, align 4, !tbaa !62
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 0
  %36 = load i32, ptr %35, align 4, !tbaa !28
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 0
  store i64 %37, ptr %38, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !28
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 1
  store i64 %41, ptr %42, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !28
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 2
  store i64 %45, ptr %46, align 8, !tbaa !44
  %47 = tail call i32 @llvm.smin.i32(i32 %5, i32 8)
  %48 = ptrtoint ptr %1 to i64
  %49 = sub i64 %48, %33
  %50 = icmp eq i64 %4, 0
  br i1 %50, label %2274, label %51

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 3
  store ptr %3, ptr %52, align 8, !tbaa !72
  %53 = getelementptr inbounds i8, ptr %3, i64 8
  %54 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !74
  %55 = icmp ugt i64 %4, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = add nsw i64 %4, -8
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  %59 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !75
  %60 = load i64, ptr %58, align 1
  store i64 %60, ptr %9, align 8, !tbaa !76
  %61 = icmp ult i64 %60, 72057594037927936
  br i1 %61, label %2274, label %120

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %3, ptr %63, align 8, !tbaa !75
  %64 = load i8, ptr %3, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  store i64 %65, ptr %9, align 8, !tbaa !76
  switch i64 %4, label %107 [
    i64 7, label %66
    i64 6, label %72
    i64 5, label %79
    i64 4, label %86
    i64 3, label %93
    i64 2, label %100
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %3, i64 6
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 48
  %71 = or disjoint i64 %70, %65
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i64 [ %65, %62 ], [ %71, %66 ]
  %74 = getelementptr inbounds i8, ptr %3, i64 5
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 40
  %78 = add nuw nsw i64 %77, %73
  br label %79

79:                                               ; preds = %72, %62
  %80 = phi i64 [ %65, %62 ], [ %78, %72 ]
  %81 = getelementptr inbounds i8, ptr %3, i64 4
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 32
  %85 = add nuw nsw i64 %84, %80
  br label %86

86:                                               ; preds = %79, %62
  %87 = phi i64 [ %65, %62 ], [ %85, %79 ]
  %88 = getelementptr inbounds i8, ptr %3, i64 3
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 24
  %92 = add nuw nsw i64 %91, %87
  br label %93

93:                                               ; preds = %86, %62
  %94 = phi i64 [ %65, %62 ], [ %92, %86 ]
  %95 = getelementptr inbounds i8, ptr %3, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !9
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %62
  %101 = phi i64 [ %65, %62 ], [ %99, %93 ]
  %102 = getelementptr inbounds i8, ptr %3, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !9
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 8
  %106 = add nuw nsw i64 %105, %101
  store i64 %106, ptr %9, align 8, !tbaa !76
  br label %107

107:                                              ; preds = %100, %62
  %108 = phi i64 [ %106, %100 ], [ %65, %62 ]
  %109 = getelementptr i8, ptr %3, i64 %4
  %110 = getelementptr i8, ptr %109, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %2274, label %113

113:                                              ; preds = %107
  %114 = zext i8 %111 to i32
  %115 = tail call i32 @llvm.ctlz.i32(i32 %114, i1 true), !range !55
  %116 = trunc i64 %4 to i32
  %117 = shl nuw nsw i32 %116, 3
  %118 = sub nsw i32 %115, %117
  %119 = add nsw i32 %118, 41
  br label %127

120:                                              ; preds = %56
  %121 = lshr i64 %60, 56
  %122 = trunc i64 %121 to i32
  %123 = tail call i32 @llvm.ctlz.i32(i32 %122, i1 true), !range !55
  %124 = xor i32 %123, 31
  %125 = sub nuw nsw i32 8, %124
  %126 = icmp ult i64 %4, -119
  br i1 %126, label %127, label %2274

127:                                              ; preds = %113, %120
  %128 = phi i64 [ 0, %113 ], [ %57, %120 ]
  %129 = phi i32 [ %119, %113 ], [ %125, %120 ]
  %130 = phi i64 [ %108, %113 ], [ %60, %120 ]
  %131 = getelementptr inbounds i8, ptr %3, i64 %128
  %132 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1
  %133 = load ptr, ptr %0, align 8, !tbaa !77
  %134 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !63
  %136 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  %137 = add i32 %129, %135
  %138 = sub i32 0, %137
  %139 = and i32 %138, 63
  %140 = zext nneg i32 %139 to i64
  %141 = lshr i64 %130, %140
  %142 = zext nneg i32 %135 to i64
  %143 = shl nsw i64 -1, %142
  %144 = xor i64 %143, -1
  %145 = and i64 %141, %144
  store i64 %145, ptr %132, align 8, !tbaa !78
  %146 = icmp ugt i32 %137, 64
  %147 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  br i1 %146, label %148, label %149, !prof !51

148:                                              ; preds = %127
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %174

149:                                              ; preds = %127
  %150 = icmp slt i64 %128, 8
  br i1 %150, label %158, label %151

151:                                              ; preds = %149
  %152 = lshr i32 %137, 3
  %153 = zext nneg i32 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %131, i64 %154
  store ptr %155, ptr %147, align 8, !tbaa !75
  %156 = and i32 %137, 7
  store i32 %156, ptr %136, align 8, !tbaa !80
  %157 = load i64, ptr %155, align 1, !tbaa !44
  store i64 %157, ptr %9, align 8, !tbaa !76
  br label %174

158:                                              ; preds = %149
  %159 = icmp eq i64 %128, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %158
  %161 = lshr i32 %137, 3
  %162 = zext nneg i32 %161 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %131, i64 %163
  %165 = icmp ult ptr %164, %3
  %166 = trunc i64 %128 to i32
  %167 = select i1 %165, i32 %166, i32 %161
  %168 = zext i32 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %131, i64 %169
  store ptr %170, ptr %147, align 8, !tbaa !75
  %171 = shl i32 %167, 3
  %172 = sub i32 %137, %171
  store i32 %172, ptr %136, align 8, !tbaa !80
  %173 = load i64, ptr %170, align 1, !tbaa !44
  store i64 %173, ptr %9, align 8, !tbaa !76
  br label %174

174:                                              ; preds = %148, %151, %158, %160
  %175 = phi ptr [ @BIT_reloadDStream.zeroFilled, %148 ], [ %155, %151 ], [ %3, %158 ], [ %170, %160 ]
  %176 = phi i32 [ %137, %148 ], [ %156, %151 ], [ %137, %158 ], [ %172, %160 ]
  %177 = phi i64 [ %130, %148 ], [ %157, %151 ], [ %130, %158 ], [ %173, %160 ]
  %178 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %133, i64 1
  %179 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1, i32 1
  store ptr %178, ptr %179, align 8, !tbaa !81
  %180 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2
  %181 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !68
  %183 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %182, i64 0, i32 1
  %184 = load i32, ptr %183, align 4, !tbaa !63
  %185 = add i32 %176, %184
  %186 = sub i32 0, %185
  %187 = and i32 %186, 63
  %188 = zext nneg i32 %187 to i64
  %189 = lshr i64 %177, %188
  %190 = zext nneg i32 %184 to i64
  %191 = shl nsw i64 -1, %190
  %192 = xor i64 %191, -1
  %193 = and i64 %189, %192
  store i64 %193, ptr %180, align 8, !tbaa !78
  %194 = icmp ugt i32 %185, 64
  br i1 %194, label %195, label %196, !prof !51

195:                                              ; preds = %174
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %224

196:                                              ; preds = %174
  %197 = icmp ult ptr %175, %53
  br i1 %197, label %205, label %198

198:                                              ; preds = %196
  %199 = lshr i32 %185, 3
  %200 = zext nneg i32 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, ptr %175, i64 %201
  store ptr %202, ptr %147, align 8, !tbaa !75
  %203 = and i32 %185, 7
  %204 = load i64, ptr %202, align 1, !tbaa !44
  store i64 %204, ptr %9, align 8, !tbaa !76
  br label %224

205:                                              ; preds = %196
  %206 = icmp eq ptr %175, %3
  br i1 %206, label %224, label %207

207:                                              ; preds = %205
  %208 = lshr i32 %185, 3
  %209 = zext nneg i32 %208 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %175, i64 %210
  %212 = icmp ult ptr %211, %3
  %213 = ptrtoint ptr %175 to i64
  %214 = ptrtoint ptr %3 to i64
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  %217 = select i1 %212, i32 %216, i32 %208
  %218 = zext i32 %217 to i64
  %219 = sub nsw i64 0, %218
  %220 = getelementptr inbounds i8, ptr %175, i64 %219
  store ptr %220, ptr %147, align 8, !tbaa !75
  %221 = shl i32 %217, 3
  %222 = sub i32 %185, %221
  %223 = load i64, ptr %220, align 1, !tbaa !44
  store i64 %223, ptr %9, align 8, !tbaa !76
  br label %224

224:                                              ; preds = %195, %198, %205, %207
  %225 = phi ptr [ @BIT_reloadDStream.zeroFilled, %195 ], [ %202, %198 ], [ %3, %205 ], [ %220, %207 ]
  %226 = phi i32 [ %185, %195 ], [ %203, %198 ], [ %185, %205 ], [ %222, %207 ]
  %227 = phi i64 [ %177, %195 ], [ %204, %198 ], [ %177, %205 ], [ %223, %207 ]
  %228 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %182, i64 1
  %229 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2, i32 1
  store ptr %228, ptr %229, align 8, !tbaa !81
  %230 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3
  %231 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !82
  %233 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %232, i64 0, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !63
  %235 = add i32 %226, %234
  %236 = sub i32 0, %235
  %237 = and i32 %236, 63
  %238 = zext nneg i32 %237 to i64
  %239 = lshr i64 %227, %238
  %240 = zext nneg i32 %234 to i64
  %241 = shl nsw i64 -1, %240
  %242 = xor i64 %241, -1
  %243 = and i64 %239, %242
  store i32 %235, ptr %136, align 8, !tbaa !80
  store i64 %243, ptr %230, align 8, !tbaa !78
  %244 = icmp ugt i32 %235, 64
  br i1 %244, label %245, label %246, !prof !51

245:                                              ; preds = %224
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %274

246:                                              ; preds = %224
  %247 = icmp ult ptr %225, %53
  br i1 %247, label %255, label %248

248:                                              ; preds = %246
  %249 = lshr i32 %235, 3
  %250 = zext nneg i32 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, ptr %225, i64 %251
  store ptr %252, ptr %147, align 8, !tbaa !75
  %253 = and i32 %235, 7
  store i32 %253, ptr %136, align 8, !tbaa !80
  %254 = load i64, ptr %252, align 1, !tbaa !44
  store i64 %254, ptr %9, align 8, !tbaa !76
  br label %274

255:                                              ; preds = %246
  %256 = icmp eq ptr %225, %3
  br i1 %256, label %274, label %257

257:                                              ; preds = %255
  %258 = lshr i32 %235, 3
  %259 = zext nneg i32 %258 to i64
  %260 = sub nsw i64 0, %259
  %261 = getelementptr inbounds i8, ptr %225, i64 %260
  %262 = icmp ult ptr %261, %3
  %263 = ptrtoint ptr %225 to i64
  %264 = ptrtoint ptr %3 to i64
  %265 = sub i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = select i1 %262, i32 %266, i32 %258
  %268 = zext i32 %267 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, ptr %225, i64 %269
  store ptr %270, ptr %147, align 8, !tbaa !75
  %271 = shl i32 %267, 3
  %272 = sub i32 %235, %271
  store i32 %272, ptr %136, align 8, !tbaa !80
  %273 = load i64, ptr %270, align 1, !tbaa !44
  store i64 %273, ptr %9, align 8, !tbaa !76
  br label %274

274:                                              ; preds = %245, %248, %255, %257
  %275 = phi i64 [ %227, %245 ], [ %254, %248 ], [ %227, %255 ], [ %273, %257 ]
  %276 = phi i32 [ %235, %245 ], [ %253, %248 ], [ %235, %255 ], [ %272, %257 ]
  %277 = phi ptr [ @BIT_reloadDStream.zeroFilled, %245 ], [ %252, %248 ], [ %3, %255 ], [ %270, %257 ]
  %278 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %232, i64 1
  %279 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3, i32 1
  store ptr %278, ptr %279, align 8, !tbaa !81
  %280 = icmp sgt i32 %5, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = ptrtoint ptr %3 to i64
  %283 = add nsw i32 %5, -1
  %284 = zext nneg i32 %283 to i64
  %285 = zext nneg i32 %47 to i64
  br label %301

286:                                              ; preds = %528, %274
  %287 = phi i32 [ %276, %274 ], [ %531, %528 ]
  %288 = phi ptr [ %277, %274 ], [ %529, %528 ]
  %289 = phi i64 [ %49, %274 ], [ %543, %528 ]
  %290 = phi i32 [ 0, %274 ], [ %47, %528 ]
  %291 = icmp slt i32 %290, %5
  br i1 %291, label %292, label %1533

292:                                              ; preds = %286
  %293 = add nsw i32 %5, -1
  %294 = getelementptr inbounds i8, ptr %20, i64 -32
  %295 = ptrtoint ptr %28 to i64
  %296 = ptrtoint ptr %20 to i64
  %297 = getelementptr inbounds i8, ptr %0, i64 30372
  %298 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  %299 = getelementptr inbounds i8, ptr %0, i64 30388
  %300 = getelementptr i8, ptr %0, i64 30372
  br label %549

301:                                              ; preds = %281, %528
  %302 = phi ptr [ %277, %281 ], [ %529, %528 ]
  %303 = phi i64 [ 0, %281 ], [ %547, %528 ]
  %304 = phi i64 [ %41, %281 ], [ %398, %528 ]
  %305 = phi i64 [ %37, %281 ], [ %399, %528 ]
  %306 = phi i64 [ %49, %281 ], [ %543, %528 ]
  %307 = phi i64 [ %145, %281 ], [ %535, %528 ]
  %308 = phi i64 [ %243, %281 ], [ %534, %528 ]
  %309 = phi i64 [ %193, %281 ], [ %533, %528 ]
  %310 = phi i64 [ %275, %281 ], [ %532, %528 ]
  %311 = phi i32 [ %276, %281 ], [ %531, %528 ]
  %312 = phi ptr [ %277, %281 ], [ %530, %528 ]
  %313 = icmp eq i64 %303, %284
  %314 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %278, i64 %308, i32 3
  %315 = load i32, ptr %314, align 4, !tbaa !41, !noalias !172
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %178, i64 %307, i32 3
  %318 = load i32, ptr %317, align 4, !tbaa !41, !noalias !172
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %228, i64 %309, i32 3
  %321 = load i32, ptr %320, align 4, !tbaa !41, !noalias !172
  %322 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %178, i64 %307, i32 1
  %323 = load i8, ptr %322, align 2, !tbaa !58, !noalias !172
  %324 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %278, i64 %308, i32 1
  %325 = load i8, ptr %324, align 2, !tbaa !58, !noalias !172
  %326 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %228, i64 %309, i32 1
  %327 = load i8, ptr %326, align 2, !tbaa !58, !noalias !172
  %328 = zext i8 %323 to i32
  %329 = zext i8 %325 to i32
  %330 = add i8 %325, %323
  %331 = add i8 %330, %327
  %332 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %228, i64 %309
  %333 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %278, i64 %308
  %334 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %178, i64 %307
  %335 = load i16, ptr %334, align 4, !tbaa !57, !noalias !172
  %336 = load i16, ptr %333, align 4, !tbaa !57, !noalias !172
  %337 = load i16, ptr %332, align 4, !tbaa !57, !noalias !172
  %338 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %178, i64 %307, i32 2
  %339 = load i8, ptr %338, align 1, !tbaa !56, !noalias !172
  %340 = zext i8 %339 to i32
  %341 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %278, i64 %308, i32 2
  %342 = load i8, ptr %341, align 1, !tbaa !56, !noalias !172
  %343 = zext i8 %342 to i32
  %344 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %228, i64 %309, i32 2
  %345 = load i8, ptr %344, align 1, !tbaa !56, !noalias !172
  %346 = zext i8 %345 to i32
  %347 = icmp ugt i8 %327, 1
  br i1 %347, label %349, label %361

348:                                              ; preds = %1543
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !86
  unreachable, !nosanitize !86

349:                                              ; preds = %301
  %350 = zext i8 %327 to i32
  %351 = and i32 %311, 63
  %352 = zext nneg i32 %351 to i64
  %353 = shl i64 %310, %352
  %354 = sub nsw i32 0, %350
  %355 = and i32 %354, 63
  %356 = zext nneg i32 %355 to i64
  %357 = lshr i64 %353, %356
  %358 = add i32 %311, %350
  store i32 %358, ptr %136, align 8, !tbaa !80, !noalias !172
  %359 = zext i32 %321 to i64
  %360 = add i64 %357, %359
  store i64 %304, ptr %46, align 8, !tbaa !44, !noalias !172
  br label %397

361:                                              ; preds = %301
  %362 = icmp eq i32 %318, 0
  %363 = icmp eq i8 %327, 0
  br i1 %363, label %364, label %372, !prof !87

364:                                              ; preds = %361
  %365 = zext i1 %362 to i64
  %366 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !44, !noalias !172
  %368 = xor i1 %362, true
  %369 = zext i1 %368 to i64
  %370 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %369
  %371 = load i64, ptr %370, align 8, !tbaa !44, !noalias !172
  br label %397

372:                                              ; preds = %361
  %373 = zext i1 %362 to i32
  %374 = add i32 %321, %373
  %375 = zext i32 %374 to i64
  %376 = and i32 %311, 63
  %377 = zext nneg i32 %376 to i64
  %378 = shl i64 %310, %377
  %379 = lshr i64 %378, 63
  %380 = add i32 %311, 1
  store i32 %380, ptr %136, align 8, !tbaa !80, !noalias !172
  %381 = add nuw nsw i64 %379, %375
  %382 = icmp eq i64 %381, 3
  br i1 %382, label %383, label %388

383:                                              ; preds = %372
  %384 = add i64 %305, -1
  %385 = icmp eq i64 %384, 0
  %386 = sext i1 %385 to i64
  %387 = add i64 %384, %386
  br label %395

388:                                              ; preds = %372
  %389 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %381
  %390 = load i64, ptr %389, align 8, !tbaa !44, !noalias !172
  %391 = icmp eq i64 %390, 0
  %392 = sext i1 %391 to i64
  %393 = add i64 %390, %392
  %394 = icmp eq i64 %381, 1
  br i1 %394, label %397, label %395

395:                                              ; preds = %383, %388
  %396 = phi i64 [ %387, %383 ], [ %393, %388 ]
  store i64 %304, ptr %46, align 8, !tbaa !44, !noalias !172
  br label %397

397:                                              ; preds = %388, %395, %364, %349
  %398 = phi i64 [ %371, %364 ], [ %305, %349 ], [ %305, %395 ], [ %305, %388 ]
  %399 = phi i64 [ %367, %364 ], [ %360, %349 ], [ %396, %395 ], [ %393, %388 ]
  %400 = phi i32 [ %311, %364 ], [ %358, %349 ], [ %380, %395 ], [ %380, %388 ]
  store i64 %398, ptr %42, align 8, !tbaa !44, !noalias !172
  store i64 %399, ptr %38, align 8, !tbaa !44, !noalias !172
  %401 = icmp eq i8 %325, 0
  br i1 %401, label %412, label %402

402:                                              ; preds = %397
  %403 = and i32 %400, 63
  %404 = zext nneg i32 %403 to i64
  %405 = shl i64 %310, %404
  %406 = sub nsw i32 0, %329
  %407 = and i32 %406, 63
  %408 = zext nneg i32 %407 to i64
  %409 = lshr i64 %405, %408
  %410 = add i32 %400, %329
  store i32 %410, ptr %136, align 8, !tbaa !80, !noalias !172
  %411 = add i64 %409, %316
  br label %412

412:                                              ; preds = %402, %397
  %413 = phi i32 [ %400, %397 ], [ %410, %402 ]
  %414 = phi i64 [ %316, %397 ], [ %411, %402 ]
  %415 = icmp ugt i8 %331, 30
  br i1 %415, label %416, label %446, !prof !51

416:                                              ; preds = %412
  %417 = icmp ugt i32 %413, 64
  br i1 %417, label %418, label %419, !prof !51

418:                                              ; preds = %416
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !172
  br label %446

419:                                              ; preds = %416
  %420 = icmp ult ptr %312, %53
  br i1 %420, label %428, label %421

421:                                              ; preds = %419
  %422 = lshr i32 %413, 3
  %423 = zext nneg i32 %422 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %312, i64 %424
  store ptr %425, ptr %147, align 8, !tbaa !75, !noalias !172
  %426 = and i32 %413, 7
  store i32 %426, ptr %136, align 8, !tbaa !80, !noalias !172
  %427 = load i64, ptr %425, align 1, !tbaa !44, !noalias !172
  store i64 %427, ptr %9, align 8, !tbaa !76, !noalias !172
  br label %446

428:                                              ; preds = %419
  %429 = icmp eq ptr %312, %3
  br i1 %429, label %446, label %430

430:                                              ; preds = %428
  %431 = lshr i32 %413, 3
  %432 = zext nneg i32 %431 to i64
  %433 = sub nsw i64 0, %432
  %434 = getelementptr inbounds i8, ptr %312, i64 %433
  %435 = icmp ult ptr %434, %3
  %436 = ptrtoint ptr %312 to i64
  %437 = sub i64 %436, %282
  %438 = trunc i64 %437 to i32
  %439 = select i1 %435, i32 %438, i32 %431
  %440 = zext i32 %439 to i64
  %441 = sub nsw i64 0, %440
  %442 = getelementptr inbounds i8, ptr %312, i64 %441
  store ptr %442, ptr %147, align 8, !tbaa !75, !noalias !172
  %443 = shl i32 %439, 3
  %444 = sub i32 %413, %443
  store i32 %444, ptr %136, align 8, !tbaa !80, !noalias !172
  %445 = load i64, ptr %442, align 1, !tbaa !44, !noalias !172
  store i64 %445, ptr %9, align 8, !tbaa !76, !noalias !172
  br label %446

446:                                              ; preds = %428, %430, %421, %418, %412
  %447 = phi ptr [ %302, %428 ], [ %442, %430 ], [ %425, %421 ], [ @BIT_reloadDStream.zeroFilled, %418 ], [ %302, %412 ]
  %448 = phi ptr [ %3, %428 ], [ %442, %430 ], [ %425, %421 ], [ @BIT_reloadDStream.zeroFilled, %418 ], [ %312, %412 ]
  %449 = phi i32 [ %413, %428 ], [ %444, %430 ], [ %426, %421 ], [ %413, %418 ], [ %413, %412 ]
  %450 = phi i64 [ %310, %428 ], [ %445, %430 ], [ %427, %421 ], [ %310, %418 ], [ %310, %412 ]
  %451 = icmp eq i8 %323, 0
  br i1 %451, label %462, label %452

452:                                              ; preds = %446
  %453 = and i32 %449, 63
  %454 = zext nneg i32 %453 to i64
  %455 = shl i64 %450, %454
  %456 = sub nsw i32 0, %328
  %457 = and i32 %456, 63
  %458 = zext nneg i32 %457 to i64
  %459 = lshr i64 %455, %458
  %460 = add i32 %449, %328
  store i32 %460, ptr %136, align 8, !tbaa !80, !noalias !172
  %461 = add i64 %459, %319
  br label %462

462:                                              ; preds = %452, %446
  %463 = phi i32 [ %449, %446 ], [ %460, %452 ]
  %464 = phi i64 [ %319, %446 ], [ %461, %452 ]
  br i1 %313, label %528, label %465

465:                                              ; preds = %462
  %466 = add i32 %463, %340
  %467 = sub i32 0, %466
  %468 = and i32 %467, 63
  %469 = zext nneg i32 %468 to i64
  %470 = lshr i64 %450, %469
  %471 = zext nneg i8 %339 to i64
  %472 = shl nsw i64 -1, %471
  %473 = xor i64 %472, -1
  %474 = and i64 %470, %473
  %475 = zext i16 %335 to i64
  %476 = add nuw i64 %474, %475
  store i64 %476, ptr %132, align 8, !tbaa !78, !noalias !172
  %477 = add i32 %466, %343
  %478 = sub i32 0, %477
  %479 = and i32 %478, 63
  %480 = zext nneg i32 %479 to i64
  %481 = lshr i64 %450, %480
  %482 = zext nneg i8 %342 to i64
  %483 = shl nsw i64 -1, %482
  %484 = xor i64 %483, -1
  %485 = and i64 %481, %484
  %486 = zext i16 %336 to i64
  %487 = add nuw i64 %485, %486
  store i64 %487, ptr %230, align 8, !tbaa !78, !noalias !172
  %488 = add i32 %477, %346
  %489 = sub i32 0, %488
  %490 = and i32 %489, 63
  %491 = zext nneg i32 %490 to i64
  %492 = lshr i64 %450, %491
  %493 = zext nneg i8 %345 to i64
  %494 = shl nsw i64 -1, %493
  %495 = xor i64 %494, -1
  %496 = and i64 %492, %495
  store i32 %488, ptr %136, align 8, !tbaa !80, !noalias !172
  %497 = zext i16 %337 to i64
  %498 = add nuw i64 %496, %497
  store i64 %498, ptr %180, align 8, !tbaa !78, !noalias !172
  %499 = icmp ugt i32 %488, 64
  br i1 %499, label %500, label %501, !prof !51

500:                                              ; preds = %465
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !172
  br label %528

501:                                              ; preds = %465
  %502 = icmp ult ptr %448, %53
  br i1 %502, label %510, label %503

503:                                              ; preds = %501
  %504 = lshr i32 %488, 3
  %505 = zext nneg i32 %504 to i64
  %506 = sub nsw i64 0, %505
  %507 = getelementptr inbounds i8, ptr %448, i64 %506
  store ptr %507, ptr %147, align 8, !tbaa !75, !noalias !172
  %508 = and i32 %488, 7
  store i32 %508, ptr %136, align 8, !tbaa !80, !noalias !172
  %509 = load i64, ptr %507, align 1, !tbaa !44, !noalias !172
  store i64 %509, ptr %9, align 8, !tbaa !76, !noalias !172
  br label %528

510:                                              ; preds = %501
  %511 = icmp eq ptr %448, %3
  br i1 %511, label %528, label %512

512:                                              ; preds = %510
  %513 = lshr i32 %488, 3
  %514 = zext nneg i32 %513 to i64
  %515 = sub nsw i64 0, %514
  %516 = getelementptr inbounds i8, ptr %448, i64 %515
  %517 = icmp ult ptr %516, %3
  %518 = ptrtoint ptr %448 to i64
  %519 = sub i64 %518, %282
  %520 = trunc i64 %519 to i32
  %521 = select i1 %517, i32 %520, i32 %513
  %522 = zext i32 %521 to i64
  %523 = sub nsw i64 0, %522
  %524 = getelementptr inbounds i8, ptr %448, i64 %523
  store ptr %524, ptr %147, align 8, !tbaa !75, !noalias !172
  %525 = shl i32 %521, 3
  %526 = sub i32 %488, %525
  store i32 %526, ptr %136, align 8, !tbaa !80, !noalias !172
  %527 = load i64, ptr %524, align 1, !tbaa !44, !noalias !172
  store i64 %527, ptr %9, align 8, !tbaa !76, !noalias !172
  br label %528

528:                                              ; preds = %510, %512, %503, %500, %462
  %529 = phi ptr [ %447, %510 ], [ %524, %512 ], [ %507, %503 ], [ @BIT_reloadDStream.zeroFilled, %500 ], [ %447, %462 ]
  %530 = phi ptr [ %3, %510 ], [ %524, %512 ], [ %507, %503 ], [ @BIT_reloadDStream.zeroFilled, %500 ], [ %448, %462 ]
  %531 = phi i32 [ %488, %510 ], [ %526, %512 ], [ %508, %503 ], [ %488, %500 ], [ %463, %462 ]
  %532 = phi i64 [ %450, %510 ], [ %527, %512 ], [ %509, %503 ], [ %450, %500 ], [ %450, %462 ]
  %533 = phi i64 [ %498, %510 ], [ %498, %512 ], [ %498, %503 ], [ %498, %500 ], [ %309, %462 ]
  %534 = phi i64 [ %487, %510 ], [ %487, %512 ], [ %487, %503 ], [ %487, %500 ], [ %308, %462 ]
  %535 = phi i64 [ %476, %510 ], [ %476, %512 ], [ %476, %503 ], [ %476, %500 ], [ %307, %462 ]
  %536 = add i64 %464, %306
  %537 = icmp ugt i64 %399, %536
  %538 = select i1 %537, ptr %30, ptr %26
  %539 = getelementptr inbounds i8, ptr %538, i64 %536
  %540 = sub i64 0, %399
  %541 = getelementptr inbounds i8, ptr %539, i64 %540
  tail call void @llvm.prefetch.p0(ptr %541, i32 0, i32 3, i32 1)
  %542 = getelementptr inbounds i8, ptr %541, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %542, i32 0, i32 3, i32 1)
  %543 = add i64 %536, %414
  %544 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %303
  store i64 %464, ptr %544, align 8, !tbaa.struct !88
  %545 = getelementptr inbounds i8, ptr %544, i64 8
  store i64 %414, ptr %545, align 8, !tbaa.struct !89
  %546 = getelementptr inbounds i8, ptr %544, i64 16
  store i64 %399, ptr %546, align 8, !tbaa.struct !90
  %547 = add nuw nsw i64 %303, 1
  %548 = icmp eq i64 %547, %285
  br i1 %548, label %286, label %301, !llvm.loop !91

549:                                              ; preds = %292, %1522
  %550 = phi ptr [ %1, %292 ], [ %1525, %1522 ]
  %551 = phi ptr [ %24, %292 ], [ %1524, %1522 ]
  %552 = phi i32 [ %290, %292 ], [ %1527, %1522 ]
  %553 = phi i64 [ %289, %292 ], [ %1526, %1522 ]
  %554 = icmp eq i32 %552, %293
  %555 = load ptr, ptr %179, align 8, !tbaa !92, !noalias !175
  %556 = load i64, ptr %132, align 8, !tbaa !97, !noalias !175
  %557 = load ptr, ptr %279, align 8, !tbaa !98, !noalias !175
  %558 = load i64, ptr %230, align 8, !tbaa !99, !noalias !175
  %559 = load ptr, ptr %229, align 8, !tbaa !100, !noalias !175
  %560 = load i64, ptr %180, align 8, !tbaa !101, !noalias !175
  %561 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %557, i64 %558, i32 3
  %562 = load i32, ptr %561, align 4, !tbaa !41, !noalias !175
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %555, i64 %556, i32 3
  %565 = load i32, ptr %564, align 4, !tbaa !41, !noalias !175
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %559, i64 %560, i32 3
  %568 = load i32, ptr %567, align 4, !tbaa !41, !noalias !175
  %569 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %555, i64 %556, i32 1
  %570 = load i8, ptr %569, align 2, !tbaa !58, !noalias !175
  %571 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %557, i64 %558, i32 1
  %572 = load i8, ptr %571, align 2, !tbaa !58, !noalias !175
  %573 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %559, i64 %560, i32 1
  %574 = load i8, ptr %573, align 2, !tbaa !58, !noalias !175
  %575 = zext i8 %570 to i32
  %576 = zext i8 %572 to i32
  %577 = add i8 %572, %570
  %578 = add i8 %577, %574
  %579 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %559, i64 %560
  %580 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %557, i64 %558
  %581 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %555, i64 %556
  %582 = load i16, ptr %581, align 4, !tbaa !57, !noalias !175
  %583 = load i16, ptr %580, align 4, !tbaa !57, !noalias !175
  %584 = load i16, ptr %579, align 4, !tbaa !57, !noalias !175
  %585 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %555, i64 %556, i32 2
  %586 = load i8, ptr %585, align 1, !tbaa !56, !noalias !175
  %587 = zext i8 %586 to i32
  %588 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %557, i64 %558, i32 2
  %589 = load i8, ptr %588, align 1, !tbaa !56, !noalias !175
  %590 = zext i8 %589 to i32
  %591 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %559, i64 %560, i32 2
  %592 = load i8, ptr %591, align 1, !tbaa !56, !noalias !175
  %593 = zext i8 %592 to i32
  %594 = icmp ugt i8 %574, 1
  br i1 %594, label %595, label %610

595:                                              ; preds = %549
  %596 = zext i8 %574 to i32
  %597 = load i64, ptr %9, align 8, !tbaa !76, !noalias !175
  %598 = load i32, ptr %136, align 8, !tbaa !80, !noalias !175
  %599 = and i32 %598, 63
  %600 = zext nneg i32 %599 to i64
  %601 = shl i64 %597, %600
  %602 = sub nsw i32 0, %596
  %603 = and i32 %602, 63
  %604 = zext nneg i32 %603 to i64
  %605 = lshr i64 %601, %604
  %606 = add i32 %598, %596
  store i32 %606, ptr %136, align 8, !tbaa !80, !noalias !175
  %607 = zext i32 %568 to i64
  %608 = add i64 %605, %607
  %609 = load i64, ptr %42, align 8, !tbaa !44, !noalias !175
  store i64 %609, ptr %46, align 8, !tbaa !44, !noalias !175
  br label %649

610:                                              ; preds = %549
  %611 = icmp eq i32 %565, 0
  %612 = icmp eq i8 %574, 0
  br i1 %612, label %613, label %620, !prof !87

613:                                              ; preds = %610
  %614 = zext i1 %611 to i64
  %615 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %614
  %616 = load i64, ptr %615, align 8, !tbaa !44, !noalias !175
  %617 = xor i1 %611, true
  %618 = zext i1 %617 to i64
  %619 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %618
  br label %649

620:                                              ; preds = %610
  %621 = zext i1 %611 to i32
  %622 = add i32 %568, %621
  %623 = zext i32 %622 to i64
  %624 = load i64, ptr %9, align 8, !tbaa !76, !noalias !175
  %625 = load i32, ptr %136, align 8, !tbaa !80, !noalias !175
  %626 = and i32 %625, 63
  %627 = zext nneg i32 %626 to i64
  %628 = shl i64 %624, %627
  %629 = lshr i64 %628, 63
  %630 = add i32 %625, 1
  store i32 %630, ptr %136, align 8, !tbaa !80, !noalias !175
  %631 = add nuw nsw i64 %629, %623
  %632 = icmp eq i64 %631, 3
  br i1 %632, label %633, label %639

633:                                              ; preds = %620
  %634 = load i64, ptr %38, align 8, !tbaa !44, !noalias !175
  %635 = add i64 %634, -1
  %636 = icmp eq i64 %635, 0
  %637 = sext i1 %636 to i64
  %638 = add i64 %635, %637
  br label %646

639:                                              ; preds = %620
  %640 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %631
  %641 = load i64, ptr %640, align 8, !tbaa !44, !noalias !175
  %642 = icmp eq i64 %641, 0
  %643 = sext i1 %642 to i64
  %644 = add i64 %641, %643
  %645 = icmp eq i64 %631, 1
  br i1 %645, label %649, label %646

646:                                              ; preds = %633, %639
  %647 = phi i64 [ %638, %633 ], [ %644, %639 ]
  %648 = load i64, ptr %42, align 8, !tbaa !44, !noalias !175
  store i64 %648, ptr %46, align 8, !tbaa !44, !noalias !175
  br label %649

649:                                              ; preds = %639, %646, %613, %595
  %650 = phi ptr [ %619, %613 ], [ %38, %595 ], [ %38, %646 ], [ %38, %639 ]
  %651 = phi i64 [ %616, %613 ], [ %608, %595 ], [ %647, %646 ], [ %644, %639 ]
  %652 = load i64, ptr %650, align 8, !tbaa !44, !noalias !175
  store i64 %652, ptr %42, align 8, !tbaa !44, !noalias !175
  store i64 %651, ptr %38, align 8, !tbaa !44, !noalias !175
  %653 = icmp eq i8 %572, 0
  br i1 %653, label %666, label %654

654:                                              ; preds = %649
  %655 = load i64, ptr %9, align 8, !tbaa !76, !noalias !175
  %656 = load i32, ptr %136, align 8, !tbaa !80, !noalias !175
  %657 = and i32 %656, 63
  %658 = zext nneg i32 %657 to i64
  %659 = shl i64 %655, %658
  %660 = sub nsw i32 0, %576
  %661 = and i32 %660, 63
  %662 = zext nneg i32 %661 to i64
  %663 = lshr i64 %659, %662
  %664 = add i32 %656, %576
  store i32 %664, ptr %136, align 8, !tbaa !80, !noalias !175
  %665 = add i64 %663, %563
  br label %666

666:                                              ; preds = %654, %649
  %667 = phi i64 [ %563, %649 ], [ %665, %654 ]
  %668 = icmp ugt i8 %578, 30
  br i1 %668, label %669, label %704, !prof !51

669:                                              ; preds = %666
  %670 = load i32, ptr %136, align 8, !tbaa !80, !noalias !175
  %671 = icmp ugt i32 %670, 64
  br i1 %671, label %672, label %673, !prof !51

672:                                              ; preds = %669
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !175
  br label %704

673:                                              ; preds = %669
  %674 = load ptr, ptr %147, align 8, !tbaa !75, !noalias !175
  %675 = load ptr, ptr %54, align 8, !tbaa !74, !noalias !175
  %676 = icmp ult ptr %674, %675
  br i1 %676, label %684, label %677

677:                                              ; preds = %673
  %678 = lshr i32 %670, 3
  %679 = zext nneg i32 %678 to i64
  %680 = sub nsw i64 0, %679
  %681 = getelementptr inbounds i8, ptr %674, i64 %680
  store ptr %681, ptr %147, align 8, !tbaa !75, !noalias !175
  %682 = and i32 %670, 7
  store i32 %682, ptr %136, align 8, !tbaa !80, !noalias !175
  %683 = load i64, ptr %681, align 1, !tbaa !44, !noalias !175
  store i64 %683, ptr %9, align 8, !tbaa !76, !noalias !175
  br label %704

684:                                              ; preds = %673
  %685 = load ptr, ptr %52, align 8, !tbaa !72, !noalias !175
  %686 = icmp eq ptr %674, %685
  br i1 %686, label %704, label %687

687:                                              ; preds = %684
  %688 = lshr i32 %670, 3
  %689 = zext nneg i32 %688 to i64
  %690 = sub nsw i64 0, %689
  %691 = getelementptr inbounds i8, ptr %674, i64 %690
  %692 = icmp ult ptr %691, %685
  %693 = ptrtoint ptr %674 to i64
  %694 = ptrtoint ptr %685 to i64
  %695 = sub i64 %693, %694
  %696 = trunc i64 %695 to i32
  %697 = select i1 %692, i32 %696, i32 %688
  %698 = zext i32 %697 to i64
  %699 = sub nsw i64 0, %698
  %700 = getelementptr inbounds i8, ptr %674, i64 %699
  store ptr %700, ptr %147, align 8, !tbaa !75, !noalias !175
  %701 = shl i32 %697, 3
  %702 = sub i32 %670, %701
  store i32 %702, ptr %136, align 8, !tbaa !80, !noalias !175
  %703 = load i64, ptr %700, align 1, !tbaa !44, !noalias !175
  store i64 %703, ptr %9, align 8, !tbaa !76, !noalias !175
  br label %704

704:                                              ; preds = %684, %687, %677, %672, %666
  %705 = icmp eq i8 %570, 0
  br i1 %705, label %718, label %706

706:                                              ; preds = %704
  %707 = load i64, ptr %9, align 8, !tbaa !76, !noalias !175
  %708 = load i32, ptr %136, align 8, !tbaa !80, !noalias !175
  %709 = and i32 %708, 63
  %710 = zext nneg i32 %709 to i64
  %711 = shl i64 %707, %710
  %712 = sub nsw i32 0, %575
  %713 = and i32 %712, 63
  %714 = zext nneg i32 %713 to i64
  %715 = lshr i64 %711, %714
  %716 = add i32 %708, %575
  store i32 %716, ptr %136, align 8, !tbaa !80, !noalias !175
  %717 = add i64 %715, %566
  br label %718

718:                                              ; preds = %706, %704
  %719 = phi i64 [ %566, %704 ], [ %717, %706 ]
  br i1 %554, label %789, label %720

720:                                              ; preds = %718
  %721 = load i64, ptr %9, align 8, !tbaa !76, !noalias !175
  %722 = load i32, ptr %136, align 8, !tbaa !80, !noalias !175
  %723 = add i32 %722, %587
  %724 = sub i32 0, %723
  %725 = and i32 %724, 63
  %726 = zext nneg i32 %725 to i64
  %727 = lshr i64 %721, %726
  %728 = zext nneg i8 %586 to i64
  %729 = shl nsw i64 -1, %728
  %730 = xor i64 %729, -1
  %731 = and i64 %727, %730
  %732 = zext i16 %582 to i64
  %733 = add nuw i64 %731, %732
  store i64 %733, ptr %132, align 8, !tbaa !78, !noalias !175
  %734 = add i32 %723, %590
  %735 = sub i32 0, %734
  %736 = and i32 %735, 63
  %737 = zext nneg i32 %736 to i64
  %738 = lshr i64 %721, %737
  %739 = zext nneg i8 %589 to i64
  %740 = shl nsw i64 -1, %739
  %741 = xor i64 %740, -1
  %742 = and i64 %738, %741
  %743 = zext i16 %583 to i64
  %744 = add nuw i64 %742, %743
  store i64 %744, ptr %230, align 8, !tbaa !78, !noalias !175
  %745 = add i32 %734, %593
  %746 = sub i32 0, %745
  %747 = and i32 %746, 63
  %748 = zext nneg i32 %747 to i64
  %749 = lshr i64 %721, %748
  %750 = zext nneg i8 %592 to i64
  %751 = shl nsw i64 -1, %750
  %752 = xor i64 %751, -1
  %753 = and i64 %749, %752
  store i32 %745, ptr %136, align 8, !tbaa !80, !noalias !175
  %754 = zext i16 %584 to i64
  %755 = add nuw i64 %753, %754
  store i64 %755, ptr %180, align 8, !tbaa !78, !noalias !175
  %756 = icmp ugt i32 %745, 64
  br i1 %756, label %757, label %758, !prof !51

757:                                              ; preds = %720
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !175
  br label %789

758:                                              ; preds = %720
  %759 = load ptr, ptr %147, align 8, !tbaa !75, !noalias !175
  %760 = load ptr, ptr %54, align 8, !tbaa !74, !noalias !175
  %761 = icmp ult ptr %759, %760
  br i1 %761, label %769, label %762

762:                                              ; preds = %758
  %763 = lshr i32 %745, 3
  %764 = zext nneg i32 %763 to i64
  %765 = sub nsw i64 0, %764
  %766 = getelementptr inbounds i8, ptr %759, i64 %765
  store ptr %766, ptr %147, align 8, !tbaa !75, !noalias !175
  %767 = and i32 %745, 7
  store i32 %767, ptr %136, align 8, !tbaa !80, !noalias !175
  %768 = load i64, ptr %766, align 1, !tbaa !44, !noalias !175
  store i64 %768, ptr %9, align 8, !tbaa !76, !noalias !175
  br label %789

769:                                              ; preds = %758
  %770 = load ptr, ptr %52, align 8, !tbaa !72, !noalias !175
  %771 = icmp eq ptr %759, %770
  br i1 %771, label %789, label %772

772:                                              ; preds = %769
  %773 = lshr i32 %745, 3
  %774 = zext nneg i32 %773 to i64
  %775 = sub nsw i64 0, %774
  %776 = getelementptr inbounds i8, ptr %759, i64 %775
  %777 = icmp ult ptr %776, %770
  %778 = ptrtoint ptr %759 to i64
  %779 = ptrtoint ptr %770 to i64
  %780 = sub i64 %778, %779
  %781 = trunc i64 %780 to i32
  %782 = select i1 %777, i32 %781, i32 %773
  %783 = zext i32 %782 to i64
  %784 = sub nsw i64 0, %783
  %785 = getelementptr inbounds i8, ptr %759, i64 %784
  store ptr %785, ptr %147, align 8, !tbaa !75, !noalias !175
  %786 = shl i32 %782, 3
  %787 = sub i32 %745, %786
  store i32 %787, ptr %136, align 8, !tbaa !80, !noalias !175
  %788 = load i64, ptr %785, align 1, !tbaa !44, !noalias !175
  store i64 %788, ptr %9, align 8, !tbaa !76, !noalias !175
  br label %789

789:                                              ; preds = %769, %772, %762, %757, %718
  %790 = load i32, ptr %10, align 8, !tbaa !32
  %791 = icmp eq i32 %790, 2
  br i1 %791, label %792, label %1328

792:                                              ; preds = %789
  %793 = load ptr, ptr %7, align 8, !tbaa !38
  %794 = and i32 %552, 7
  %795 = zext nneg i32 %794 to i64
  %796 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %795
  %797 = load i64, ptr %796, align 8, !tbaa !109
  %798 = getelementptr inbounds i8, ptr %793, i64 %797
  %799 = load ptr, ptr %23, align 8, !tbaa !37
  %800 = icmp ugt ptr %798, %799
  br i1 %800, label %801, label %1150

801:                                              ; preds = %792
  %802 = ptrtoint ptr %799 to i64
  %803 = ptrtoint ptr %793 to i64
  %804 = sub i64 %802, %803
  %805 = icmp eq ptr %799, %793
  br i1 %805, label %960, label %806

806:                                              ; preds = %801
  %807 = ptrtoint ptr %550 to i64
  %808 = sub i64 %296, %807
  %809 = icmp ugt i64 %804, %808
  br i1 %809, label %2274, label %810

810:                                              ; preds = %806
  %811 = sub i64 %807, %803
  %812 = getelementptr inbounds i8, ptr %550, i64 %804
  %813 = icmp ult i64 %804, 8
  %814 = icmp sgt i64 %811, -8
  %815 = or i1 %814, %813
  br i1 %815, label %816, label %872

816:                                              ; preds = %810
  %817 = icmp sgt i64 %804, 0
  br i1 %817, label %818, label %957

818:                                              ; preds = %816
  %819 = add i64 %807, %802
  %820 = sub i64 %819, %803
  %821 = add i64 %807, 1
  %822 = tail call i64 @llvm.umax.i64(i64 %820, i64 %821)
  %823 = sub i64 %822, %807
  %824 = icmp ult i64 %823, 8
  %825 = icmp ult i64 %811, 32
  %826 = or i1 %824, %825
  br i1 %826, label %862, label %827

827:                                              ; preds = %818
  %828 = icmp ult i64 %823, 32
  br i1 %828, label %848, label %829

829:                                              ; preds = %827
  %830 = and i64 %823, -32
  br label %831

831:                                              ; preds = %831, %829
  %832 = phi i64 [ 0, %829 ], [ %839, %831 ]
  %833 = getelementptr i8, ptr %550, i64 %832
  %834 = getelementptr i8, ptr %793, i64 %832
  %835 = getelementptr i8, ptr %834, i64 16
  %836 = load <16 x i8>, ptr %834, align 1, !tbaa !9
  %837 = load <16 x i8>, ptr %835, align 1, !tbaa !9
  %838 = getelementptr i8, ptr %833, i64 16
  store <16 x i8> %836, ptr %833, align 1, !tbaa !9
  store <16 x i8> %837, ptr %838, align 1, !tbaa !9
  %839 = add nuw i64 %832, 32
  %840 = icmp eq i64 %839, %830
  br i1 %840, label %841, label %831, !llvm.loop !178

841:                                              ; preds = %831
  %842 = icmp eq i64 %823, %830
  br i1 %842, label %957, label %843

843:                                              ; preds = %841
  %844 = getelementptr i8, ptr %793, i64 %830
  %845 = getelementptr i8, ptr %550, i64 %830
  %846 = and i64 %823, 24
  %847 = icmp eq i64 %846, 0
  br i1 %847, label %862, label %848

848:                                              ; preds = %827, %843
  %849 = phi i64 [ %830, %843 ], [ 0, %827 ]
  %850 = and i64 %823, -8
  %851 = getelementptr i8, ptr %550, i64 %850
  %852 = getelementptr i8, ptr %793, i64 %850
  br label %853

853:                                              ; preds = %853, %848
  %854 = phi i64 [ %849, %848 ], [ %858, %853 ]
  %855 = getelementptr i8, ptr %550, i64 %854
  %856 = getelementptr i8, ptr %793, i64 %854
  %857 = load <8 x i8>, ptr %856, align 1, !tbaa !9
  store <8 x i8> %857, ptr %855, align 1, !tbaa !9
  %858 = add nuw i64 %854, 8
  %859 = icmp eq i64 %858, %850
  br i1 %859, label %860, label %853, !llvm.loop !179

860:                                              ; preds = %853
  %861 = icmp eq i64 %823, %850
  br i1 %861, label %957, label %862

862:                                              ; preds = %818, %843, %860
  %863 = phi ptr [ %550, %818 ], [ %845, %843 ], [ %851, %860 ]
  %864 = phi ptr [ %793, %818 ], [ %844, %843 ], [ %852, %860 ]
  br label %865

865:                                              ; preds = %862, %865
  %866 = phi ptr [ %870, %865 ], [ %863, %862 ]
  %867 = phi ptr [ %868, %865 ], [ %864, %862 ]
  %868 = getelementptr inbounds i8, ptr %867, i64 1
  %869 = load i8, ptr %867, align 1, !tbaa !9
  %870 = getelementptr inbounds i8, ptr %866, i64 1
  store i8 %869, ptr %866, align 1, !tbaa !9
  %871 = icmp ult ptr %870, %812
  br i1 %871, label %865, label %957, !llvm.loop !180

872:                                              ; preds = %810
  %873 = getelementptr inbounds i8, ptr %812, i64 -32
  %874 = icmp uge ptr %873, %550
  %875 = icmp ult i64 %811, -16
  %876 = and i1 %875, %874
  br i1 %876, label %877, label %896

877:                                              ; preds = %872
  %878 = ptrtoint ptr %873 to i64
  %879 = sub i64 %878, %807
  %880 = load <2 x i64>, ptr %793, align 1, !tbaa !9
  store <2 x i64> %880, ptr %550, align 1, !tbaa !9
  %881 = icmp ult i64 %879, 17
  br i1 %881, label %894, label %882

882:                                              ; preds = %877
  %883 = getelementptr inbounds i8, ptr %550, i64 16
  br label %884

884:                                              ; preds = %884, %882
  %885 = phi ptr [ %883, %882 ], [ %892, %884 ]
  %886 = phi ptr [ %793, %882 ], [ %890, %884 ]
  %887 = getelementptr inbounds i8, ptr %886, i64 16
  %888 = load <2 x i64>, ptr %887, align 1, !tbaa !9
  store <2 x i64> %888, ptr %885, align 1, !tbaa !9
  %889 = getelementptr inbounds i8, ptr %885, i64 16
  %890 = getelementptr inbounds i8, ptr %886, i64 32
  %891 = load <2 x i64>, ptr %890, align 1, !tbaa !9
  store <2 x i64> %891, ptr %889, align 1, !tbaa !9
  %892 = getelementptr inbounds i8, ptr %885, i64 32
  %893 = icmp ult ptr %892, %873
  br i1 %893, label %884, label %894, !llvm.loop !105

894:                                              ; preds = %884, %877
  %895 = getelementptr inbounds i8, ptr %793, i64 %879
  br label %898

896:                                              ; preds = %872
  %897 = icmp sgt i64 %804, 0
  br i1 %897, label %898, label %957

898:                                              ; preds = %896, %894
  %899 = phi ptr [ %873, %894 ], [ %550, %896 ]
  %900 = phi ptr [ %895, %894 ], [ %793, %896 ]
  %901 = ptrtoint ptr %899 to i64
  %902 = add i64 %807, %802
  %903 = sub i64 %902, %803
  %904 = add nuw i64 %901, 1
  %905 = tail call i64 @llvm.umax.i64(i64 %903, i64 %904)
  %906 = sub i64 %905, %901
  %907 = icmp ult i64 %906, 8
  %908 = ptrtoint ptr %900 to i64
  %909 = sub i64 %901, %908
  %910 = icmp ult i64 %909, 32
  %911 = select i1 %907, i1 true, i1 %910
  br i1 %911, label %947, label %912

912:                                              ; preds = %898
  %913 = icmp ult i64 %906, 32
  br i1 %913, label %933, label %914

914:                                              ; preds = %912
  %915 = and i64 %906, -32
  br label %916

916:                                              ; preds = %916, %914
  %917 = phi i64 [ 0, %914 ], [ %924, %916 ]
  %918 = getelementptr i8, ptr %899, i64 %917
  %919 = getelementptr i8, ptr %900, i64 %917
  %920 = getelementptr i8, ptr %919, i64 16
  %921 = load <16 x i8>, ptr %919, align 1, !tbaa !9
  %922 = load <16 x i8>, ptr %920, align 1, !tbaa !9
  %923 = getelementptr i8, ptr %918, i64 16
  store <16 x i8> %921, ptr %918, align 1, !tbaa !9
  store <16 x i8> %922, ptr %923, align 1, !tbaa !9
  %924 = add nuw i64 %917, 32
  %925 = icmp eq i64 %924, %915
  br i1 %925, label %926, label %916, !llvm.loop !181

926:                                              ; preds = %916
  %927 = icmp eq i64 %906, %915
  br i1 %927, label %957, label %928

928:                                              ; preds = %926
  %929 = getelementptr i8, ptr %900, i64 %915
  %930 = getelementptr i8, ptr %899, i64 %915
  %931 = and i64 %906, 24
  %932 = icmp eq i64 %931, 0
  br i1 %932, label %947, label %933

933:                                              ; preds = %912, %928
  %934 = phi i64 [ %915, %928 ], [ 0, %912 ]
  %935 = and i64 %906, -8
  %936 = getelementptr i8, ptr %899, i64 %935
  %937 = getelementptr i8, ptr %900, i64 %935
  br label %938

938:                                              ; preds = %938, %933
  %939 = phi i64 [ %934, %933 ], [ %943, %938 ]
  %940 = getelementptr i8, ptr %899, i64 %939
  %941 = getelementptr i8, ptr %900, i64 %939
  %942 = load <8 x i8>, ptr %941, align 1, !tbaa !9
  store <8 x i8> %942, ptr %940, align 1, !tbaa !9
  %943 = add nuw i64 %939, 8
  %944 = icmp eq i64 %943, %935
  br i1 %944, label %945, label %938, !llvm.loop !182

945:                                              ; preds = %938
  %946 = icmp eq i64 %906, %935
  br i1 %946, label %957, label %947

947:                                              ; preds = %898, %928, %945
  %948 = phi ptr [ %899, %898 ], [ %930, %928 ], [ %936, %945 ]
  %949 = phi ptr [ %900, %898 ], [ %929, %928 ], [ %937, %945 ]
  br label %950

950:                                              ; preds = %947, %950
  %951 = phi ptr [ %955, %950 ], [ %948, %947 ]
  %952 = phi ptr [ %953, %950 ], [ %949, %947 ]
  %953 = getelementptr inbounds i8, ptr %952, i64 1
  %954 = load i8, ptr %952, align 1, !tbaa !9
  %955 = getelementptr inbounds i8, ptr %951, i64 1
  store i8 %954, ptr %951, align 1, !tbaa !9
  %956 = icmp ult ptr %955, %812
  br i1 %956, label %950, label %957, !llvm.loop !183

957:                                              ; preds = %950, %865, %926, %945, %841, %860, %816, %896
  %958 = load i64, ptr %796, align 8, !tbaa !109
  %959 = sub i64 %958, %804
  store i64 %959, ptr %796, align 8, !tbaa !109
  br label %960

960:                                              ; preds = %957, %801
  %961 = phi ptr [ %812, %957 ], [ %550, %801 ]
  store ptr %297, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %10, align 8, !tbaa !32
  %962 = load i64, ptr %796, align 8
  %963 = getelementptr inbounds i8, ptr %796, i64 8
  %964 = load i64, ptr %963, align 8
  %965 = getelementptr inbounds i8, ptr %796, i64 16
  %966 = load i64, ptr %965, align 8
  %967 = getelementptr inbounds i8, ptr %961, i64 %962
  %968 = add i64 %964, %962
  %969 = getelementptr i8, ptr %300, i64 %962
  %970 = sub i64 0, %966
  %971 = getelementptr inbounds i8, ptr %967, i64 %970
  %972 = icmp sgt i64 %962, 65536
  %973 = getelementptr inbounds i8, ptr %961, i64 %968
  %974 = icmp ugt ptr %973, %294
  %975 = select i1 %972, i1 true, i1 %974
  br i1 %975, label %979, label %976, !prof !111

976:                                              ; preds = %960
  %977 = load <2 x i64>, ptr %297, align 1, !tbaa !9
  store <2 x i64> %977, ptr %961, align 1, !tbaa !9
  %978 = icmp ugt i64 %962, 16
  br i1 %978, label %981, label %999, !prof !51

979:                                              ; preds = %960
  %980 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %961, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %796, ptr noundef nonnull %7, ptr noundef nonnull %298, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1133

981:                                              ; preds = %976
  %982 = getelementptr inbounds i8, ptr %961, i64 16
  %983 = add i64 %962, -16
  %984 = getelementptr inbounds i8, ptr %961, i64 %962
  %985 = load <2 x i64>, ptr %299, align 1, !tbaa !9
  store <2 x i64> %985, ptr %982, align 1, !tbaa !9
  %986 = icmp ult i64 %983, 17
  br i1 %986, label %999, label %987

987:                                              ; preds = %981
  %988 = getelementptr inbounds i8, ptr %961, i64 32
  br label %989

989:                                              ; preds = %989, %987
  %990 = phi ptr [ %988, %987 ], [ %997, %989 ]
  %991 = phi ptr [ %299, %987 ], [ %995, %989 ]
  %992 = getelementptr inbounds i8, ptr %991, i64 16
  %993 = load <2 x i64>, ptr %992, align 1, !tbaa !9
  store <2 x i64> %993, ptr %990, align 1, !tbaa !9
  %994 = getelementptr inbounds i8, ptr %990, i64 16
  %995 = getelementptr inbounds i8, ptr %991, i64 32
  %996 = load <2 x i64>, ptr %995, align 1, !tbaa !9
  store <2 x i64> %996, ptr %994, align 1, !tbaa !9
  %997 = getelementptr inbounds i8, ptr %990, i64 32
  %998 = icmp ult ptr %997, %984
  br i1 %998, label %989, label %999, !llvm.loop !105

999:                                              ; preds = %989, %981, %976
  store ptr %969, ptr %7, align 8, !tbaa !38
  %1000 = ptrtoint ptr %967 to i64
  %1001 = sub i64 %1000, %33
  %1002 = icmp ugt i64 %966, %1001
  br i1 %1002, label %1003, label %1017

1003:                                             ; preds = %999
  %1004 = sub i64 %1000, %295
  %1005 = icmp ugt i64 %966, %1004
  br i1 %1005, label %2274, label %1006, !prof !51

1006:                                             ; preds = %1003
  %1007 = ptrtoint ptr %971 to i64
  %1008 = sub i64 %1007, %33
  %1009 = getelementptr inbounds i8, ptr %30, i64 %1008
  %1010 = getelementptr inbounds i8, ptr %1009, i64 %964
  %1011 = icmp ugt ptr %1010, %30
  br i1 %1011, label %1013, label %1012

1012:                                             ; preds = %1006
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %967, ptr align 1 %1009, i64 %964, i1 false)
  br label %1133

1013:                                             ; preds = %1006
  %1014 = sub i64 0, %1008
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %967, ptr align 1 %1009, i64 %1014, i1 false)
  %1015 = getelementptr inbounds i8, ptr %967, i64 %1014
  %1016 = add i64 %964, %1008
  br label %1017

1017:                                             ; preds = %1013, %999
  %1018 = phi i64 [ %1016, %1013 ], [ %964, %999 ]
  %1019 = phi ptr [ %26, %1013 ], [ %971, %999 ]
  %1020 = phi ptr [ %1015, %1013 ], [ %967, %999 ]
  %1021 = ptrtoint ptr %1020 to i64
  %1022 = icmp ugt i64 %966, 15
  br i1 %1022, label %1023, label %1039, !prof !87

1023:                                             ; preds = %1017
  %1024 = getelementptr inbounds i8, ptr %1020, i64 %1018
  %1025 = load <2 x i64>, ptr %1019, align 1, !tbaa !9
  store <2 x i64> %1025, ptr %1020, align 1, !tbaa !9
  %1026 = icmp ult i64 %1018, 17
  br i1 %1026, label %1133, label %1027

1027:                                             ; preds = %1023
  %1028 = getelementptr inbounds i8, ptr %1020, i64 16
  br label %1029

1029:                                             ; preds = %1029, %1027
  %1030 = phi ptr [ %1028, %1027 ], [ %1037, %1029 ]
  %1031 = phi ptr [ %1019, %1027 ], [ %1035, %1029 ]
  %1032 = getelementptr inbounds i8, ptr %1031, i64 16
  %1033 = load <2 x i64>, ptr %1032, align 1, !tbaa !9
  store <2 x i64> %1033, ptr %1030, align 1, !tbaa !9
  %1034 = getelementptr inbounds i8, ptr %1030, i64 16
  %1035 = getelementptr inbounds i8, ptr %1031, i64 32
  %1036 = load <2 x i64>, ptr %1035, align 1, !tbaa !9
  store <2 x i64> %1036, ptr %1034, align 1, !tbaa !9
  %1037 = getelementptr inbounds i8, ptr %1030, i64 32
  %1038 = icmp ult ptr %1037, %1024
  br i1 %1038, label %1029, label %1133, !llvm.loop !105

1039:                                             ; preds = %1017
  %1040 = icmp ult i64 %966, 8
  br i1 %1040, label %1041, label %1063

1041:                                             ; preds = %1039
  %1042 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %966
  %1043 = load i32, ptr %1042, align 4, !tbaa !28
  %1044 = load i8, ptr %1019, align 1, !tbaa !9
  store i8 %1044, ptr %1020, align 1, !tbaa !9
  %1045 = getelementptr inbounds i8, ptr %1019, i64 1
  %1046 = load i8, ptr %1045, align 1, !tbaa !9
  %1047 = getelementptr inbounds i8, ptr %1020, i64 1
  store i8 %1046, ptr %1047, align 1, !tbaa !9
  %1048 = getelementptr inbounds i8, ptr %1019, i64 2
  %1049 = load i8, ptr %1048, align 1, !tbaa !9
  %1050 = getelementptr inbounds i8, ptr %1020, i64 2
  store i8 %1049, ptr %1050, align 1, !tbaa !9
  %1051 = getelementptr inbounds i8, ptr %1019, i64 3
  %1052 = load i8, ptr %1051, align 1, !tbaa !9
  %1053 = getelementptr inbounds i8, ptr %1020, i64 3
  store i8 %1052, ptr %1053, align 1, !tbaa !9
  %1054 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %966
  %1055 = load i32, ptr %1054, align 4, !tbaa !28
  %1056 = zext i32 %1055 to i64
  %1057 = getelementptr inbounds i8, ptr %1019, i64 %1056
  %1058 = getelementptr inbounds i8, ptr %1020, i64 4
  %1059 = load i32, ptr %1057, align 1
  store i32 %1059, ptr %1058, align 1
  %1060 = sext i32 %1043 to i64
  %1061 = sub nsw i64 0, %1060
  %1062 = getelementptr inbounds i8, ptr %1057, i64 %1061
  br label %1065

1063:                                             ; preds = %1039
  %1064 = load i64, ptr %1019, align 1
  store i64 %1064, ptr %1020, align 1
  br label %1065

1065:                                             ; preds = %1041, %1063
  %1066 = phi ptr [ %1062, %1041 ], [ %1019, %1063 ]
  %1067 = getelementptr i8, ptr %1066, i64 8
  %1068 = getelementptr i8, ptr %1020, i64 8
  %1069 = icmp ugt i64 %1018, 8
  br i1 %1069, label %1070, label %1133

1070:                                             ; preds = %1065
  %1071 = ptrtoint ptr %1068 to i64
  %1072 = ptrtoint ptr %1067 to i64
  %1073 = sub i64 %1071, %1072
  %1074 = getelementptr inbounds i8, ptr %1020, i64 %1018
  %1075 = icmp slt i64 %1073, 16
  br i1 %1075, label %1076, label %1117

1076:                                             ; preds = %1070
  %1077 = add i64 %1018, %1021
  %1078 = add i64 %1021, 16
  %1079 = tail call i64 @llvm.umax.i64(i64 %1077, i64 %1078)
  %1080 = add i64 %1079, -9
  %1081 = sub i64 %1080, %1021
  %1082 = lshr i64 %1081, 3
  %1083 = add nuw nsw i64 %1082, 1
  %1084 = icmp ult i64 %1081, 24
  %1085 = icmp ult i64 %1073, 32
  %1086 = or i1 %1084, %1085
  br i1 %1086, label %1107, label %1087

1087:                                             ; preds = %1076
  %1088 = and i64 %1083, 4611686018427387900
  %1089 = shl i64 %1088, 3
  %1090 = getelementptr i8, ptr %1068, i64 %1089
  %1091 = shl i64 %1088, 3
  %1092 = getelementptr i8, ptr %1067, i64 %1091
  br label %1093

1093:                                             ; preds = %1093, %1087
  %1094 = phi i64 [ 0, %1087 ], [ %1103, %1093 ]
  %1095 = shl i64 %1094, 3
  %1096 = getelementptr i8, ptr %1068, i64 %1095
  %1097 = shl i64 %1094, 3
  %1098 = getelementptr i8, ptr %1067, i64 %1097
  %1099 = getelementptr i64, ptr %1098, i64 2
  %1100 = load <2 x i64>, ptr %1098, align 1
  %1101 = load <2 x i64>, ptr %1099, align 1
  %1102 = getelementptr i64, ptr %1096, i64 2
  store <2 x i64> %1100, ptr %1096, align 1
  store <2 x i64> %1101, ptr %1102, align 1
  %1103 = add nuw i64 %1094, 4
  %1104 = icmp eq i64 %1103, %1088
  br i1 %1104, label %1105, label %1093, !llvm.loop !184

1105:                                             ; preds = %1093
  %1106 = icmp eq i64 %1083, %1088
  br i1 %1106, label %1133, label %1107

1107:                                             ; preds = %1076, %1105
  %1108 = phi ptr [ %1068, %1076 ], [ %1090, %1105 ]
  %1109 = phi ptr [ %1067, %1076 ], [ %1092, %1105 ]
  br label %1110

1110:                                             ; preds = %1107, %1110
  %1111 = phi ptr [ %1114, %1110 ], [ %1108, %1107 ]
  %1112 = phi ptr [ %1115, %1110 ], [ %1109, %1107 ]
  %1113 = load i64, ptr %1112, align 1
  store i64 %1113, ptr %1111, align 1
  %1114 = getelementptr inbounds i8, ptr %1111, i64 8
  %1115 = getelementptr inbounds i8, ptr %1112, i64 8
  %1116 = icmp ult ptr %1114, %1074
  br i1 %1116, label %1110, label %1133, !llvm.loop !185

1117:                                             ; preds = %1070
  %1118 = add i64 %1018, -8
  %1119 = load <2 x i64>, ptr %1067, align 1, !tbaa !9
  store <2 x i64> %1119, ptr %1068, align 1, !tbaa !9
  %1120 = icmp ult i64 %1118, 17
  br i1 %1120, label %1133, label %1121

1121:                                             ; preds = %1117
  %1122 = getelementptr inbounds i8, ptr %1020, i64 24
  br label %1123

1123:                                             ; preds = %1123, %1121
  %1124 = phi ptr [ %1122, %1121 ], [ %1131, %1123 ]
  %1125 = phi ptr [ %1067, %1121 ], [ %1129, %1123 ]
  %1126 = getelementptr inbounds i8, ptr %1125, i64 16
  %1127 = load <2 x i64>, ptr %1126, align 1, !tbaa !9
  store <2 x i64> %1127, ptr %1124, align 1, !tbaa !9
  %1128 = getelementptr inbounds i8, ptr %1124, i64 16
  %1129 = getelementptr inbounds i8, ptr %1125, i64 32
  %1130 = load <2 x i64>, ptr %1129, align 1, !tbaa !9
  store <2 x i64> %1130, ptr %1128, align 1, !tbaa !9
  %1131 = getelementptr inbounds i8, ptr %1124, i64 32
  %1132 = icmp ult ptr %1131, %1074
  br i1 %1132, label %1123, label %1133, !llvm.loop !105

1133:                                             ; preds = %1123, %1110, %1029, %1105, %1117, %1023, %979, %1012, %1065
  %1134 = phi i64 [ %980, %979 ], [ %968, %1012 ], [ %968, %1065 ], [ %968, %1023 ], [ %968, %1117 ], [ %968, %1105 ], [ %968, %1029 ], [ %968, %1110 ], [ %968, %1123 ]
  %1135 = icmp ult i64 %1134, -119
  br i1 %1135, label %1136, label %2274

1136:                                             ; preds = %1133
  %1137 = add i64 %719, %553
  %1138 = icmp ugt i64 %651, %1137
  %1139 = select i1 %1138, ptr %30, ptr %26
  %1140 = getelementptr inbounds i8, ptr %1139, i64 %1137
  %1141 = sub i64 0, %651
  %1142 = getelementptr inbounds i8, ptr %1140, i64 %1141
  tail call void @llvm.prefetch.p0(ptr %1142, i32 0, i32 3, i32 1)
  %1143 = getelementptr inbounds i8, ptr %1142, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1143, i32 0, i32 3, i32 1)
  %1144 = and i32 %552, 7
  %1145 = zext nneg i32 %1144 to i64
  %1146 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1145
  store i64 %719, ptr %1146, align 8, !tbaa.struct !88
  %1147 = getelementptr inbounds i8, ptr %1146, i64 8
  store i64 %667, ptr %1147, align 8, !tbaa.struct !89
  %1148 = getelementptr inbounds i8, ptr %1146, i64 16
  store i64 %651, ptr %1148, align 8, !tbaa.struct !90
  %1149 = getelementptr inbounds i8, ptr %961, i64 %1134
  br label %1522

1150:                                             ; preds = %792
  %1151 = and i32 %552, 7
  %1152 = zext nneg i32 %1151 to i64
  %1153 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1152
  %1154 = load i64, ptr %1153, align 8
  %1155 = getelementptr inbounds i8, ptr %793, i64 %1154
  %1156 = getelementptr inbounds i8, ptr %1155, i64 -32
  %1157 = getelementptr inbounds i8, ptr %1153, i64 8
  %1158 = load i64, ptr %1157, align 8
  %1159 = getelementptr inbounds i8, ptr %1153, i64 16
  %1160 = load i64, ptr %1159, align 8
  %1161 = getelementptr inbounds i8, ptr %550, i64 %1154
  %1162 = add i64 %1158, %1154
  %1163 = getelementptr inbounds i8, ptr %793, i64 %1154
  %1164 = sub i64 0, %1160
  %1165 = getelementptr inbounds i8, ptr %1161, i64 %1164
  %1166 = icmp ugt ptr %1163, %551
  %1167 = getelementptr inbounds i8, ptr %550, i64 %1162
  %1168 = icmp ugt ptr %1167, %1156
  %1169 = select i1 %1166, i1 true, i1 %1168
  br i1 %1169, label %1173, label %1170, !prof !111

1170:                                             ; preds = %1150
  %1171 = load <2 x i64>, ptr %793, align 1, !tbaa !9
  store <2 x i64> %1171, ptr %550, align 1, !tbaa !9
  %1172 = icmp ugt i64 %1154, 16
  br i1 %1172, label %1175, label %1194, !prof !51

1173:                                             ; preds = %1150
  %1174 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %550, ptr noundef %20, ptr noundef nonnull %1156, ptr noundef nonnull byval(%struct.seq_t) align 8 %1153, ptr noundef nonnull %7, ptr noundef %551, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1505

1175:                                             ; preds = %1170
  %1176 = getelementptr inbounds i8, ptr %550, i64 16
  %1177 = getelementptr inbounds i8, ptr %793, i64 16
  %1178 = add i64 %1154, -16
  %1179 = getelementptr inbounds i8, ptr %550, i64 %1154
  %1180 = load <2 x i64>, ptr %1177, align 1, !tbaa !9
  store <2 x i64> %1180, ptr %1176, align 1, !tbaa !9
  %1181 = icmp ult i64 %1178, 17
  br i1 %1181, label %1194, label %1182

1182:                                             ; preds = %1175
  %1183 = getelementptr inbounds i8, ptr %550, i64 32
  br label %1184

1184:                                             ; preds = %1184, %1182
  %1185 = phi ptr [ %1183, %1182 ], [ %1192, %1184 ]
  %1186 = phi ptr [ %1177, %1182 ], [ %1190, %1184 ]
  %1187 = getelementptr inbounds i8, ptr %1186, i64 16
  %1188 = load <2 x i64>, ptr %1187, align 1, !tbaa !9
  store <2 x i64> %1188, ptr %1185, align 1, !tbaa !9
  %1189 = getelementptr inbounds i8, ptr %1185, i64 16
  %1190 = getelementptr inbounds i8, ptr %1186, i64 32
  %1191 = load <2 x i64>, ptr %1190, align 1, !tbaa !9
  store <2 x i64> %1191, ptr %1189, align 1, !tbaa !9
  %1192 = getelementptr inbounds i8, ptr %1185, i64 32
  %1193 = icmp ult ptr %1192, %1179
  br i1 %1193, label %1184, label %1194, !llvm.loop !105

1194:                                             ; preds = %1184, %1175, %1170
  store ptr %1163, ptr %7, align 8, !tbaa !38
  %1195 = ptrtoint ptr %1161 to i64
  %1196 = sub i64 %1195, %33
  %1197 = icmp ugt i64 %1160, %1196
  br i1 %1197, label %1198, label %1212

1198:                                             ; preds = %1194
  %1199 = sub i64 %1195, %295
  %1200 = icmp ugt i64 %1160, %1199
  br i1 %1200, label %1505, label %1201, !prof !51

1201:                                             ; preds = %1198
  %1202 = ptrtoint ptr %1165 to i64
  %1203 = sub i64 %1202, %33
  %1204 = getelementptr inbounds i8, ptr %30, i64 %1203
  %1205 = getelementptr inbounds i8, ptr %1204, i64 %1158
  %1206 = icmp ugt ptr %1205, %30
  br i1 %1206, label %1208, label %1207

1207:                                             ; preds = %1201
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1161, ptr align 1 %1204, i64 %1158, i1 false)
  br label %1505

1208:                                             ; preds = %1201
  %1209 = sub i64 0, %1203
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1161, ptr align 1 %1204, i64 %1209, i1 false)
  %1210 = getelementptr inbounds i8, ptr %1161, i64 %1209
  %1211 = add i64 %1158, %1203
  br label %1212

1212:                                             ; preds = %1208, %1194
  %1213 = phi i64 [ %1211, %1208 ], [ %1158, %1194 ]
  %1214 = phi ptr [ %26, %1208 ], [ %1165, %1194 ]
  %1215 = phi ptr [ %1210, %1208 ], [ %1161, %1194 ]
  %1216 = ptrtoint ptr %1215 to i64
  %1217 = icmp ugt i64 %1160, 15
  br i1 %1217, label %1218, label %1234, !prof !87

1218:                                             ; preds = %1212
  %1219 = getelementptr inbounds i8, ptr %1215, i64 %1213
  %1220 = load <2 x i64>, ptr %1214, align 1, !tbaa !9
  store <2 x i64> %1220, ptr %1215, align 1, !tbaa !9
  %1221 = icmp ult i64 %1213, 17
  br i1 %1221, label %1505, label %1222

1222:                                             ; preds = %1218
  %1223 = getelementptr inbounds i8, ptr %1215, i64 16
  br label %1224

1224:                                             ; preds = %1224, %1222
  %1225 = phi ptr [ %1223, %1222 ], [ %1232, %1224 ]
  %1226 = phi ptr [ %1214, %1222 ], [ %1230, %1224 ]
  %1227 = getelementptr inbounds i8, ptr %1226, i64 16
  %1228 = load <2 x i64>, ptr %1227, align 1, !tbaa !9
  store <2 x i64> %1228, ptr %1225, align 1, !tbaa !9
  %1229 = getelementptr inbounds i8, ptr %1225, i64 16
  %1230 = getelementptr inbounds i8, ptr %1226, i64 32
  %1231 = load <2 x i64>, ptr %1230, align 1, !tbaa !9
  store <2 x i64> %1231, ptr %1229, align 1, !tbaa !9
  %1232 = getelementptr inbounds i8, ptr %1225, i64 32
  %1233 = icmp ult ptr %1232, %1219
  br i1 %1233, label %1224, label %1505, !llvm.loop !105

1234:                                             ; preds = %1212
  %1235 = icmp ult i64 %1160, 8
  br i1 %1235, label %1236, label %1258

1236:                                             ; preds = %1234
  %1237 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1160
  %1238 = load i32, ptr %1237, align 4, !tbaa !28
  %1239 = load i8, ptr %1214, align 1, !tbaa !9
  store i8 %1239, ptr %1215, align 1, !tbaa !9
  %1240 = getelementptr inbounds i8, ptr %1214, i64 1
  %1241 = load i8, ptr %1240, align 1, !tbaa !9
  %1242 = getelementptr inbounds i8, ptr %1215, i64 1
  store i8 %1241, ptr %1242, align 1, !tbaa !9
  %1243 = getelementptr inbounds i8, ptr %1214, i64 2
  %1244 = load i8, ptr %1243, align 1, !tbaa !9
  %1245 = getelementptr inbounds i8, ptr %1215, i64 2
  store i8 %1244, ptr %1245, align 1, !tbaa !9
  %1246 = getelementptr inbounds i8, ptr %1214, i64 3
  %1247 = load i8, ptr %1246, align 1, !tbaa !9
  %1248 = getelementptr inbounds i8, ptr %1215, i64 3
  store i8 %1247, ptr %1248, align 1, !tbaa !9
  %1249 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1160
  %1250 = load i32, ptr %1249, align 4, !tbaa !28
  %1251 = zext i32 %1250 to i64
  %1252 = getelementptr inbounds i8, ptr %1214, i64 %1251
  %1253 = getelementptr inbounds i8, ptr %1215, i64 4
  %1254 = load i32, ptr %1252, align 1
  store i32 %1254, ptr %1253, align 1
  %1255 = sext i32 %1238 to i64
  %1256 = sub nsw i64 0, %1255
  %1257 = getelementptr inbounds i8, ptr %1252, i64 %1256
  br label %1260

1258:                                             ; preds = %1234
  %1259 = load i64, ptr %1214, align 1
  store i64 %1259, ptr %1215, align 1
  br label %1260

1260:                                             ; preds = %1236, %1258
  %1261 = phi ptr [ %1257, %1236 ], [ %1214, %1258 ]
  %1262 = getelementptr i8, ptr %1261, i64 8
  %1263 = getelementptr i8, ptr %1215, i64 8
  %1264 = icmp ugt i64 %1213, 8
  br i1 %1264, label %1265, label %1505

1265:                                             ; preds = %1260
  %1266 = ptrtoint ptr %1263 to i64
  %1267 = ptrtoint ptr %1262 to i64
  %1268 = sub i64 %1266, %1267
  %1269 = getelementptr inbounds i8, ptr %1215, i64 %1213
  %1270 = icmp slt i64 %1268, 16
  br i1 %1270, label %1271, label %1312

1271:                                             ; preds = %1265
  %1272 = add i64 %1213, %1216
  %1273 = add i64 %1216, 16
  %1274 = tail call i64 @llvm.umax.i64(i64 %1272, i64 %1273)
  %1275 = add i64 %1274, -9
  %1276 = sub i64 %1275, %1216
  %1277 = lshr i64 %1276, 3
  %1278 = add nuw nsw i64 %1277, 1
  %1279 = icmp ult i64 %1276, 24
  %1280 = icmp ult i64 %1268, 32
  %1281 = or i1 %1279, %1280
  br i1 %1281, label %1302, label %1282

1282:                                             ; preds = %1271
  %1283 = and i64 %1278, 4611686018427387900
  %1284 = shl i64 %1283, 3
  %1285 = getelementptr i8, ptr %1263, i64 %1284
  %1286 = shl i64 %1283, 3
  %1287 = getelementptr i8, ptr %1262, i64 %1286
  br label %1288

1288:                                             ; preds = %1288, %1282
  %1289 = phi i64 [ 0, %1282 ], [ %1298, %1288 ]
  %1290 = shl i64 %1289, 3
  %1291 = getelementptr i8, ptr %1263, i64 %1290
  %1292 = shl i64 %1289, 3
  %1293 = getelementptr i8, ptr %1262, i64 %1292
  %1294 = getelementptr i64, ptr %1293, i64 2
  %1295 = load <2 x i64>, ptr %1293, align 1
  %1296 = load <2 x i64>, ptr %1294, align 1
  %1297 = getelementptr i64, ptr %1291, i64 2
  store <2 x i64> %1295, ptr %1291, align 1
  store <2 x i64> %1296, ptr %1297, align 1
  %1298 = add nuw i64 %1289, 4
  %1299 = icmp eq i64 %1298, %1283
  br i1 %1299, label %1300, label %1288, !llvm.loop !186

1300:                                             ; preds = %1288
  %1301 = icmp eq i64 %1278, %1283
  br i1 %1301, label %1505, label %1302

1302:                                             ; preds = %1271, %1300
  %1303 = phi ptr [ %1263, %1271 ], [ %1285, %1300 ]
  %1304 = phi ptr [ %1262, %1271 ], [ %1287, %1300 ]
  br label %1305

1305:                                             ; preds = %1302, %1305
  %1306 = phi ptr [ %1309, %1305 ], [ %1303, %1302 ]
  %1307 = phi ptr [ %1310, %1305 ], [ %1304, %1302 ]
  %1308 = load i64, ptr %1307, align 1
  store i64 %1308, ptr %1306, align 1
  %1309 = getelementptr inbounds i8, ptr %1306, i64 8
  %1310 = getelementptr inbounds i8, ptr %1307, i64 8
  %1311 = icmp ult ptr %1309, %1269
  br i1 %1311, label %1305, label %1505, !llvm.loop !187

1312:                                             ; preds = %1265
  %1313 = add i64 %1213, -8
  %1314 = load <2 x i64>, ptr %1262, align 1, !tbaa !9
  store <2 x i64> %1314, ptr %1263, align 1, !tbaa !9
  %1315 = icmp ult i64 %1313, 17
  br i1 %1315, label %1505, label %1316

1316:                                             ; preds = %1312
  %1317 = getelementptr inbounds i8, ptr %1215, i64 24
  br label %1318

1318:                                             ; preds = %1318, %1316
  %1319 = phi ptr [ %1317, %1316 ], [ %1326, %1318 ]
  %1320 = phi ptr [ %1262, %1316 ], [ %1324, %1318 ]
  %1321 = getelementptr inbounds i8, ptr %1320, i64 16
  %1322 = load <2 x i64>, ptr %1321, align 1, !tbaa !9
  store <2 x i64> %1322, ptr %1319, align 1, !tbaa !9
  %1323 = getelementptr inbounds i8, ptr %1319, i64 16
  %1324 = getelementptr inbounds i8, ptr %1320, i64 32
  %1325 = load <2 x i64>, ptr %1324, align 1, !tbaa !9
  store <2 x i64> %1325, ptr %1323, align 1, !tbaa !9
  %1326 = getelementptr inbounds i8, ptr %1319, i64 32
  %1327 = icmp ult ptr %1326, %1269
  br i1 %1327, label %1318, label %1505, !llvm.loop !105

1328:                                             ; preds = %789
  %1329 = and i32 %552, 7
  %1330 = zext nneg i32 %1329 to i64
  %1331 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1330
  %1332 = load i64, ptr %1331, align 8
  %1333 = getelementptr inbounds i8, ptr %1331, i64 8
  %1334 = load i64, ptr %1333, align 8
  %1335 = getelementptr inbounds i8, ptr %1331, i64 16
  %1336 = load i64, ptr %1335, align 8
  %1337 = getelementptr inbounds i8, ptr %550, i64 %1332
  %1338 = add i64 %1334, %1332
  %1339 = load ptr, ptr %7, align 8, !tbaa !38
  %1340 = getelementptr inbounds i8, ptr %1339, i64 %1332
  %1341 = sub i64 0, %1336
  %1342 = getelementptr inbounds i8, ptr %1337, i64 %1341
  %1343 = icmp ugt ptr %1340, %551
  %1344 = getelementptr inbounds i8, ptr %550, i64 %1338
  %1345 = icmp ugt ptr %1344, %294
  %1346 = select i1 %1343, i1 true, i1 %1345
  br i1 %1346, label %1350, label %1347, !prof !111

1347:                                             ; preds = %1328
  %1348 = load <2 x i64>, ptr %1339, align 1, !tbaa !9
  store <2 x i64> %1348, ptr %550, align 1, !tbaa !9
  %1349 = icmp ugt i64 %1332, 16
  br i1 %1349, label %1352, label %1371, !prof !51

1350:                                             ; preds = %1328
  %1351 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %550, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1331, ptr noundef nonnull %7, ptr noundef %551, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1505

1352:                                             ; preds = %1347
  %1353 = getelementptr inbounds i8, ptr %550, i64 16
  %1354 = getelementptr inbounds i8, ptr %1339, i64 16
  %1355 = add i64 %1332, -16
  %1356 = getelementptr inbounds i8, ptr %550, i64 %1332
  %1357 = load <2 x i64>, ptr %1354, align 1, !tbaa !9
  store <2 x i64> %1357, ptr %1353, align 1, !tbaa !9
  %1358 = icmp ult i64 %1355, 17
  br i1 %1358, label %1371, label %1359

1359:                                             ; preds = %1352
  %1360 = getelementptr inbounds i8, ptr %550, i64 32
  br label %1361

1361:                                             ; preds = %1361, %1359
  %1362 = phi ptr [ %1360, %1359 ], [ %1369, %1361 ]
  %1363 = phi ptr [ %1354, %1359 ], [ %1367, %1361 ]
  %1364 = getelementptr inbounds i8, ptr %1363, i64 16
  %1365 = load <2 x i64>, ptr %1364, align 1, !tbaa !9
  store <2 x i64> %1365, ptr %1362, align 1, !tbaa !9
  %1366 = getelementptr inbounds i8, ptr %1362, i64 16
  %1367 = getelementptr inbounds i8, ptr %1363, i64 32
  %1368 = load <2 x i64>, ptr %1367, align 1, !tbaa !9
  store <2 x i64> %1368, ptr %1366, align 1, !tbaa !9
  %1369 = getelementptr inbounds i8, ptr %1362, i64 32
  %1370 = icmp ult ptr %1369, %1356
  br i1 %1370, label %1361, label %1371, !llvm.loop !105

1371:                                             ; preds = %1361, %1352, %1347
  store ptr %1340, ptr %7, align 8, !tbaa !38
  %1372 = ptrtoint ptr %1337 to i64
  %1373 = sub i64 %1372, %33
  %1374 = icmp ugt i64 %1336, %1373
  br i1 %1374, label %1375, label %1389

1375:                                             ; preds = %1371
  %1376 = sub i64 %1372, %295
  %1377 = icmp ugt i64 %1336, %1376
  br i1 %1377, label %1505, label %1378, !prof !51

1378:                                             ; preds = %1375
  %1379 = ptrtoint ptr %1342 to i64
  %1380 = sub i64 %1379, %33
  %1381 = getelementptr inbounds i8, ptr %30, i64 %1380
  %1382 = getelementptr inbounds i8, ptr %1381, i64 %1334
  %1383 = icmp ugt ptr %1382, %30
  br i1 %1383, label %1385, label %1384

1384:                                             ; preds = %1378
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1337, ptr align 1 %1381, i64 %1334, i1 false)
  br label %1505

1385:                                             ; preds = %1378
  %1386 = sub i64 0, %1380
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1337, ptr align 1 %1381, i64 %1386, i1 false)
  %1387 = getelementptr inbounds i8, ptr %1337, i64 %1386
  %1388 = add i64 %1334, %1380
  br label %1389

1389:                                             ; preds = %1385, %1371
  %1390 = phi i64 [ %1388, %1385 ], [ %1334, %1371 ]
  %1391 = phi ptr [ %26, %1385 ], [ %1342, %1371 ]
  %1392 = phi ptr [ %1387, %1385 ], [ %1337, %1371 ]
  %1393 = ptrtoint ptr %1392 to i64
  %1394 = icmp ugt i64 %1336, 15
  br i1 %1394, label %1395, label %1411, !prof !87

1395:                                             ; preds = %1389
  %1396 = getelementptr inbounds i8, ptr %1392, i64 %1390
  %1397 = load <2 x i64>, ptr %1391, align 1, !tbaa !9
  store <2 x i64> %1397, ptr %1392, align 1, !tbaa !9
  %1398 = icmp ult i64 %1390, 17
  br i1 %1398, label %1505, label %1399

1399:                                             ; preds = %1395
  %1400 = getelementptr inbounds i8, ptr %1392, i64 16
  br label %1401

1401:                                             ; preds = %1401, %1399
  %1402 = phi ptr [ %1400, %1399 ], [ %1409, %1401 ]
  %1403 = phi ptr [ %1391, %1399 ], [ %1407, %1401 ]
  %1404 = getelementptr inbounds i8, ptr %1403, i64 16
  %1405 = load <2 x i64>, ptr %1404, align 1, !tbaa !9
  store <2 x i64> %1405, ptr %1402, align 1, !tbaa !9
  %1406 = getelementptr inbounds i8, ptr %1402, i64 16
  %1407 = getelementptr inbounds i8, ptr %1403, i64 32
  %1408 = load <2 x i64>, ptr %1407, align 1, !tbaa !9
  store <2 x i64> %1408, ptr %1406, align 1, !tbaa !9
  %1409 = getelementptr inbounds i8, ptr %1402, i64 32
  %1410 = icmp ult ptr %1409, %1396
  br i1 %1410, label %1401, label %1505, !llvm.loop !105

1411:                                             ; preds = %1389
  %1412 = icmp ult i64 %1336, 8
  br i1 %1412, label %1413, label %1435

1413:                                             ; preds = %1411
  %1414 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1336
  %1415 = load i32, ptr %1414, align 4, !tbaa !28
  %1416 = load i8, ptr %1391, align 1, !tbaa !9
  store i8 %1416, ptr %1392, align 1, !tbaa !9
  %1417 = getelementptr inbounds i8, ptr %1391, i64 1
  %1418 = load i8, ptr %1417, align 1, !tbaa !9
  %1419 = getelementptr inbounds i8, ptr %1392, i64 1
  store i8 %1418, ptr %1419, align 1, !tbaa !9
  %1420 = getelementptr inbounds i8, ptr %1391, i64 2
  %1421 = load i8, ptr %1420, align 1, !tbaa !9
  %1422 = getelementptr inbounds i8, ptr %1392, i64 2
  store i8 %1421, ptr %1422, align 1, !tbaa !9
  %1423 = getelementptr inbounds i8, ptr %1391, i64 3
  %1424 = load i8, ptr %1423, align 1, !tbaa !9
  %1425 = getelementptr inbounds i8, ptr %1392, i64 3
  store i8 %1424, ptr %1425, align 1, !tbaa !9
  %1426 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1336
  %1427 = load i32, ptr %1426, align 4, !tbaa !28
  %1428 = zext i32 %1427 to i64
  %1429 = getelementptr inbounds i8, ptr %1391, i64 %1428
  %1430 = getelementptr inbounds i8, ptr %1392, i64 4
  %1431 = load i32, ptr %1429, align 1
  store i32 %1431, ptr %1430, align 1
  %1432 = sext i32 %1415 to i64
  %1433 = sub nsw i64 0, %1432
  %1434 = getelementptr inbounds i8, ptr %1429, i64 %1433
  br label %1437

1435:                                             ; preds = %1411
  %1436 = load i64, ptr %1391, align 1
  store i64 %1436, ptr %1392, align 1
  br label %1437

1437:                                             ; preds = %1413, %1435
  %1438 = phi ptr [ %1434, %1413 ], [ %1391, %1435 ]
  %1439 = getelementptr i8, ptr %1438, i64 8
  %1440 = getelementptr i8, ptr %1392, i64 8
  %1441 = icmp ugt i64 %1390, 8
  br i1 %1441, label %1442, label %1505

1442:                                             ; preds = %1437
  %1443 = ptrtoint ptr %1440 to i64
  %1444 = ptrtoint ptr %1439 to i64
  %1445 = sub i64 %1443, %1444
  %1446 = getelementptr inbounds i8, ptr %1392, i64 %1390
  %1447 = icmp slt i64 %1445, 16
  br i1 %1447, label %1448, label %1489

1448:                                             ; preds = %1442
  %1449 = add i64 %1390, %1393
  %1450 = add i64 %1393, 16
  %1451 = tail call i64 @llvm.umax.i64(i64 %1449, i64 %1450)
  %1452 = add i64 %1451, -9
  %1453 = sub i64 %1452, %1393
  %1454 = lshr i64 %1453, 3
  %1455 = add nuw nsw i64 %1454, 1
  %1456 = icmp ult i64 %1453, 24
  %1457 = icmp ult i64 %1445, 32
  %1458 = or i1 %1456, %1457
  br i1 %1458, label %1479, label %1459

1459:                                             ; preds = %1448
  %1460 = and i64 %1455, 4611686018427387900
  %1461 = shl i64 %1460, 3
  %1462 = getelementptr i8, ptr %1440, i64 %1461
  %1463 = shl i64 %1460, 3
  %1464 = getelementptr i8, ptr %1439, i64 %1463
  br label %1465

1465:                                             ; preds = %1465, %1459
  %1466 = phi i64 [ 0, %1459 ], [ %1475, %1465 ]
  %1467 = shl i64 %1466, 3
  %1468 = getelementptr i8, ptr %1440, i64 %1467
  %1469 = shl i64 %1466, 3
  %1470 = getelementptr i8, ptr %1439, i64 %1469
  %1471 = getelementptr i64, ptr %1470, i64 2
  %1472 = load <2 x i64>, ptr %1470, align 1
  %1473 = load <2 x i64>, ptr %1471, align 1
  %1474 = getelementptr i64, ptr %1468, i64 2
  store <2 x i64> %1472, ptr %1468, align 1
  store <2 x i64> %1473, ptr %1474, align 1
  %1475 = add nuw i64 %1466, 4
  %1476 = icmp eq i64 %1475, %1460
  br i1 %1476, label %1477, label %1465, !llvm.loop !188

1477:                                             ; preds = %1465
  %1478 = icmp eq i64 %1455, %1460
  br i1 %1478, label %1505, label %1479

1479:                                             ; preds = %1448, %1477
  %1480 = phi ptr [ %1440, %1448 ], [ %1462, %1477 ]
  %1481 = phi ptr [ %1439, %1448 ], [ %1464, %1477 ]
  br label %1482

1482:                                             ; preds = %1479, %1482
  %1483 = phi ptr [ %1486, %1482 ], [ %1480, %1479 ]
  %1484 = phi ptr [ %1487, %1482 ], [ %1481, %1479 ]
  %1485 = load i64, ptr %1484, align 1
  store i64 %1485, ptr %1483, align 1
  %1486 = getelementptr inbounds i8, ptr %1483, i64 8
  %1487 = getelementptr inbounds i8, ptr %1484, i64 8
  %1488 = icmp ult ptr %1486, %1446
  br i1 %1488, label %1482, label %1505, !llvm.loop !189

1489:                                             ; preds = %1442
  %1490 = add i64 %1390, -8
  %1491 = load <2 x i64>, ptr %1439, align 1, !tbaa !9
  store <2 x i64> %1491, ptr %1440, align 1, !tbaa !9
  %1492 = icmp ult i64 %1490, 17
  br i1 %1492, label %1505, label %1493

1493:                                             ; preds = %1489
  %1494 = getelementptr inbounds i8, ptr %1392, i64 24
  br label %1495

1495:                                             ; preds = %1495, %1493
  %1496 = phi ptr [ %1494, %1493 ], [ %1503, %1495 ]
  %1497 = phi ptr [ %1439, %1493 ], [ %1501, %1495 ]
  %1498 = getelementptr inbounds i8, ptr %1497, i64 16
  %1499 = load <2 x i64>, ptr %1498, align 1, !tbaa !9
  store <2 x i64> %1499, ptr %1496, align 1, !tbaa !9
  %1500 = getelementptr inbounds i8, ptr %1496, i64 16
  %1501 = getelementptr inbounds i8, ptr %1497, i64 32
  %1502 = load <2 x i64>, ptr %1501, align 1, !tbaa !9
  store <2 x i64> %1502, ptr %1500, align 1, !tbaa !9
  %1503 = getelementptr inbounds i8, ptr %1496, i64 32
  %1504 = icmp ult ptr %1503, %1446
  br i1 %1504, label %1495, label %1505, !llvm.loop !105

1505:                                             ; preds = %1437, %1384, %1375, %1350, %1395, %1489, %1477, %1401, %1482, %1495, %1260, %1207, %1198, %1173, %1218, %1312, %1300, %1224, %1305, %1318
  %1506 = phi i64 [ %1174, %1173 ], [ %1162, %1207 ], [ -20, %1198 ], [ %1162, %1260 ], [ %1162, %1218 ], [ %1162, %1312 ], [ %1162, %1300 ], [ %1162, %1224 ], [ %1162, %1305 ], [ %1162, %1318 ], [ %1351, %1350 ], [ %1338, %1384 ], [ -20, %1375 ], [ %1338, %1437 ], [ %1338, %1395 ], [ %1338, %1489 ], [ %1338, %1477 ], [ %1338, %1401 ], [ %1338, %1482 ], [ %1338, %1495 ]
  %1507 = icmp ult i64 %1506, -119
  br i1 %1507, label %1508, label %2274

1508:                                             ; preds = %1505
  %1509 = add i64 %719, %553
  %1510 = icmp ugt i64 %651, %1509
  %1511 = select i1 %1510, ptr %30, ptr %26
  %1512 = getelementptr inbounds i8, ptr %1511, i64 %1509
  %1513 = sub i64 0, %651
  %1514 = getelementptr inbounds i8, ptr %1512, i64 %1513
  tail call void @llvm.prefetch.p0(ptr %1514, i32 0, i32 3, i32 1)
  %1515 = getelementptr inbounds i8, ptr %1514, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1515, i32 0, i32 3, i32 1)
  %1516 = and i32 %552, 7
  %1517 = zext nneg i32 %1516 to i64
  %1518 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1517
  store i64 %719, ptr %1518, align 8, !tbaa.struct !88
  %1519 = getelementptr inbounds i8, ptr %1518, i64 8
  store i64 %667, ptr %1519, align 8, !tbaa.struct !89
  %1520 = getelementptr inbounds i8, ptr %1518, i64 16
  store i64 %651, ptr %1520, align 8, !tbaa.struct !90
  %1521 = getelementptr inbounds i8, ptr %550, i64 %1506
  br label %1522

1522:                                             ; preds = %1508, %1136
  %1523 = phi i64 [ %1509, %1508 ], [ %1137, %1136 ]
  %1524 = phi ptr [ %551, %1508 ], [ %298, %1136 ]
  %1525 = phi ptr [ %1521, %1508 ], [ %1149, %1136 ]
  %1526 = add i64 %1523, %667
  %1527 = add nuw nsw i32 %552, 1
  %1528 = icmp eq i32 %1527, %5
  br i1 %1528, label %1529, label %549, !llvm.loop !118

1529:                                             ; preds = %1522
  %1530 = load ptr, ptr %147, align 8, !tbaa !75
  %1531 = load ptr, ptr %52, align 8, !tbaa !72
  %1532 = load i32, ptr %136, align 8
  br label %1533

1533:                                             ; preds = %1529, %286
  %1534 = phi i32 [ %287, %286 ], [ %1532, %1529 ]
  %1535 = phi ptr [ %3, %286 ], [ %1531, %1529 ]
  %1536 = phi ptr [ %288, %286 ], [ %1530, %1529 ]
  %1537 = phi i32 [ %290, %286 ], [ %5, %1529 ]
  %1538 = phi ptr [ %24, %286 ], [ %1524, %1529 ]
  %1539 = phi ptr [ %1, %286 ], [ %1525, %1529 ]
  %1540 = icmp eq ptr %1536, %1535
  %1541 = icmp eq i32 %1534, 64
  %1542 = select i1 %1540, i1 %1541, i1 false
  br i1 %1542, label %1543, label %2274

1543:                                             ; preds = %1533
  %1544 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1537, i32 %47), !nosanitize !86
  %1545 = extractvalue { i32, i1 } %1544, 1, !nosanitize !86
  br i1 %1545, label %348, label %1546, !nosanitize !86

1546:                                             ; preds = %1543
  %1547 = extractvalue { i32, i1 } %1544, 0
  %1548 = icmp slt i32 %1547, %5
  br i1 %1548, label %1549, label %1557

1549:                                             ; preds = %1546
  %1550 = getelementptr inbounds i8, ptr %20, i64 -32
  %1551 = ptrtoint ptr %28 to i64
  %1552 = ptrtoint ptr %20 to i64
  %1553 = getelementptr inbounds i8, ptr %0, i64 30372
  %1554 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  %1555 = getelementptr inbounds i8, ptr %0, i64 30388
  %1556 = getelementptr i8, ptr %0, i64 30372
  br label %1566

1557:                                             ; preds = %2269, %1546
  %1558 = phi ptr [ %1538, %1546 ], [ %2270, %2269 ]
  %1559 = phi ptr [ %1539, %1546 ], [ %2271, %2269 ]
  %1560 = load <2 x i64>, ptr %38, align 8, !tbaa !44
  %1561 = trunc <2 x i64> %1560 to <2 x i32>
  store <2 x i32> %1561, ptr %35, align 4, !tbaa !28
  %1562 = load i64, ptr %46, align 8, !tbaa !44
  %1563 = trunc i64 %1562 to i32
  store i32 %1563, ptr %43, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #16
  %1564 = load i32, ptr %10, align 8, !tbaa !32
  %1565 = load ptr, ptr %7, align 8, !tbaa !38
  br label %2276

1566:                                             ; preds = %1549, %2269
  %1567 = phi i32 [ %1547, %1549 ], [ %2272, %2269 ]
  %1568 = phi ptr [ %1539, %1549 ], [ %2271, %2269 ]
  %1569 = phi ptr [ %1538, %1549 ], [ %2270, %2269 ]
  %1570 = and i32 %1567, 7
  %1571 = zext nneg i32 %1570 to i64
  %1572 = getelementptr inbounds [8 x %struct.seq_t], ptr %8, i64 0, i64 %1571
  %1573 = load i32, ptr %10, align 8, !tbaa !32
  %1574 = icmp eq i32 %1573, 2
  br i1 %1574, label %1575, label %2091

1575:                                             ; preds = %1566
  %1576 = load ptr, ptr %7, align 8, !tbaa !38
  %1577 = load i64, ptr %1572, align 8, !tbaa !109
  %1578 = getelementptr inbounds i8, ptr %1576, i64 %1577
  %1579 = load ptr, ptr %23, align 8, !tbaa !37
  %1580 = icmp ugt ptr %1578, %1579
  br i1 %1580, label %1581, label %1917

1581:                                             ; preds = %1575
  %1582 = ptrtoint ptr %1579 to i64
  %1583 = ptrtoint ptr %1576 to i64
  %1584 = sub i64 %1582, %1583
  %1585 = icmp eq ptr %1579, %1576
  br i1 %1585, label %1740, label %1586

1586:                                             ; preds = %1581
  %1587 = ptrtoint ptr %1568 to i64
  %1588 = sub i64 %1552, %1587
  %1589 = icmp ugt i64 %1584, %1588
  br i1 %1589, label %2274, label %1590

1590:                                             ; preds = %1586
  %1591 = sub i64 %1587, %1583
  %1592 = getelementptr inbounds i8, ptr %1568, i64 %1584
  %1593 = icmp ult i64 %1584, 8
  %1594 = icmp sgt i64 %1591, -8
  %1595 = or i1 %1594, %1593
  br i1 %1595, label %1596, label %1652

1596:                                             ; preds = %1590
  %1597 = icmp sgt i64 %1584, 0
  br i1 %1597, label %1598, label %1737

1598:                                             ; preds = %1596
  %1599 = add i64 %1587, %1582
  %1600 = sub i64 %1599, %1583
  %1601 = add i64 %1587, 1
  %1602 = tail call i64 @llvm.umax.i64(i64 %1600, i64 %1601)
  %1603 = sub i64 %1602, %1587
  %1604 = icmp ult i64 %1603, 8
  %1605 = icmp ult i64 %1591, 32
  %1606 = or i1 %1604, %1605
  br i1 %1606, label %1642, label %1607

1607:                                             ; preds = %1598
  %1608 = icmp ult i64 %1603, 32
  br i1 %1608, label %1628, label %1609

1609:                                             ; preds = %1607
  %1610 = and i64 %1603, -32
  br label %1611

1611:                                             ; preds = %1611, %1609
  %1612 = phi i64 [ 0, %1609 ], [ %1619, %1611 ]
  %1613 = getelementptr i8, ptr %1568, i64 %1612
  %1614 = getelementptr i8, ptr %1576, i64 %1612
  %1615 = getelementptr i8, ptr %1614, i64 16
  %1616 = load <16 x i8>, ptr %1614, align 1, !tbaa !9
  %1617 = load <16 x i8>, ptr %1615, align 1, !tbaa !9
  %1618 = getelementptr i8, ptr %1613, i64 16
  store <16 x i8> %1616, ptr %1613, align 1, !tbaa !9
  store <16 x i8> %1617, ptr %1618, align 1, !tbaa !9
  %1619 = add nuw i64 %1612, 32
  %1620 = icmp eq i64 %1619, %1610
  br i1 %1620, label %1621, label %1611, !llvm.loop !190

1621:                                             ; preds = %1611
  %1622 = icmp eq i64 %1603, %1610
  br i1 %1622, label %1737, label %1623

1623:                                             ; preds = %1621
  %1624 = getelementptr i8, ptr %1576, i64 %1610
  %1625 = getelementptr i8, ptr %1568, i64 %1610
  %1626 = and i64 %1603, 24
  %1627 = icmp eq i64 %1626, 0
  br i1 %1627, label %1642, label %1628

1628:                                             ; preds = %1607, %1623
  %1629 = phi i64 [ %1610, %1623 ], [ 0, %1607 ]
  %1630 = and i64 %1603, -8
  %1631 = getelementptr i8, ptr %1568, i64 %1630
  %1632 = getelementptr i8, ptr %1576, i64 %1630
  br label %1633

1633:                                             ; preds = %1633, %1628
  %1634 = phi i64 [ %1629, %1628 ], [ %1638, %1633 ]
  %1635 = getelementptr i8, ptr %1568, i64 %1634
  %1636 = getelementptr i8, ptr %1576, i64 %1634
  %1637 = load <8 x i8>, ptr %1636, align 1, !tbaa !9
  store <8 x i8> %1637, ptr %1635, align 1, !tbaa !9
  %1638 = add nuw i64 %1634, 8
  %1639 = icmp eq i64 %1638, %1630
  br i1 %1639, label %1640, label %1633, !llvm.loop !191

1640:                                             ; preds = %1633
  %1641 = icmp eq i64 %1603, %1630
  br i1 %1641, label %1737, label %1642

1642:                                             ; preds = %1598, %1623, %1640
  %1643 = phi ptr [ %1568, %1598 ], [ %1625, %1623 ], [ %1631, %1640 ]
  %1644 = phi ptr [ %1576, %1598 ], [ %1624, %1623 ], [ %1632, %1640 ]
  br label %1645

1645:                                             ; preds = %1642, %1645
  %1646 = phi ptr [ %1650, %1645 ], [ %1643, %1642 ]
  %1647 = phi ptr [ %1648, %1645 ], [ %1644, %1642 ]
  %1648 = getelementptr inbounds i8, ptr %1647, i64 1
  %1649 = load i8, ptr %1647, align 1, !tbaa !9
  %1650 = getelementptr inbounds i8, ptr %1646, i64 1
  store i8 %1649, ptr %1646, align 1, !tbaa !9
  %1651 = icmp ult ptr %1650, %1592
  br i1 %1651, label %1645, label %1737, !llvm.loop !192

1652:                                             ; preds = %1590
  %1653 = getelementptr inbounds i8, ptr %1592, i64 -32
  %1654 = icmp uge ptr %1653, %1568
  %1655 = icmp ult i64 %1591, -16
  %1656 = and i1 %1655, %1654
  br i1 %1656, label %1657, label %1676

1657:                                             ; preds = %1652
  %1658 = ptrtoint ptr %1653 to i64
  %1659 = sub i64 %1658, %1587
  %1660 = load <2 x i64>, ptr %1576, align 1, !tbaa !9
  store <2 x i64> %1660, ptr %1568, align 1, !tbaa !9
  %1661 = icmp ult i64 %1659, 17
  br i1 %1661, label %1674, label %1662

1662:                                             ; preds = %1657
  %1663 = getelementptr inbounds i8, ptr %1568, i64 16
  br label %1664

1664:                                             ; preds = %1664, %1662
  %1665 = phi ptr [ %1663, %1662 ], [ %1672, %1664 ]
  %1666 = phi ptr [ %1576, %1662 ], [ %1670, %1664 ]
  %1667 = getelementptr inbounds i8, ptr %1666, i64 16
  %1668 = load <2 x i64>, ptr %1667, align 1, !tbaa !9
  store <2 x i64> %1668, ptr %1665, align 1, !tbaa !9
  %1669 = getelementptr inbounds i8, ptr %1665, i64 16
  %1670 = getelementptr inbounds i8, ptr %1666, i64 32
  %1671 = load <2 x i64>, ptr %1670, align 1, !tbaa !9
  store <2 x i64> %1671, ptr %1669, align 1, !tbaa !9
  %1672 = getelementptr inbounds i8, ptr %1665, i64 32
  %1673 = icmp ult ptr %1672, %1653
  br i1 %1673, label %1664, label %1674, !llvm.loop !105

1674:                                             ; preds = %1664, %1657
  %1675 = getelementptr inbounds i8, ptr %1576, i64 %1659
  br label %1678

1676:                                             ; preds = %1652
  %1677 = icmp sgt i64 %1584, 0
  br i1 %1677, label %1678, label %1737

1678:                                             ; preds = %1676, %1674
  %1679 = phi ptr [ %1653, %1674 ], [ %1568, %1676 ]
  %1680 = phi ptr [ %1675, %1674 ], [ %1576, %1676 ]
  %1681 = ptrtoint ptr %1679 to i64
  %1682 = add i64 %1587, %1582
  %1683 = sub i64 %1682, %1583
  %1684 = add nuw i64 %1681, 1
  %1685 = tail call i64 @llvm.umax.i64(i64 %1683, i64 %1684)
  %1686 = sub i64 %1685, %1681
  %1687 = icmp ult i64 %1686, 8
  %1688 = ptrtoint ptr %1680 to i64
  %1689 = sub i64 %1681, %1688
  %1690 = icmp ult i64 %1689, 32
  %1691 = select i1 %1687, i1 true, i1 %1690
  br i1 %1691, label %1727, label %1692

1692:                                             ; preds = %1678
  %1693 = icmp ult i64 %1686, 32
  br i1 %1693, label %1713, label %1694

1694:                                             ; preds = %1692
  %1695 = and i64 %1686, -32
  br label %1696

1696:                                             ; preds = %1696, %1694
  %1697 = phi i64 [ 0, %1694 ], [ %1704, %1696 ]
  %1698 = getelementptr i8, ptr %1679, i64 %1697
  %1699 = getelementptr i8, ptr %1680, i64 %1697
  %1700 = getelementptr i8, ptr %1699, i64 16
  %1701 = load <16 x i8>, ptr %1699, align 1, !tbaa !9
  %1702 = load <16 x i8>, ptr %1700, align 1, !tbaa !9
  %1703 = getelementptr i8, ptr %1698, i64 16
  store <16 x i8> %1701, ptr %1698, align 1, !tbaa !9
  store <16 x i8> %1702, ptr %1703, align 1, !tbaa !9
  %1704 = add nuw i64 %1697, 32
  %1705 = icmp eq i64 %1704, %1695
  br i1 %1705, label %1706, label %1696, !llvm.loop !193

1706:                                             ; preds = %1696
  %1707 = icmp eq i64 %1686, %1695
  br i1 %1707, label %1737, label %1708

1708:                                             ; preds = %1706
  %1709 = getelementptr i8, ptr %1680, i64 %1695
  %1710 = getelementptr i8, ptr %1679, i64 %1695
  %1711 = and i64 %1686, 24
  %1712 = icmp eq i64 %1711, 0
  br i1 %1712, label %1727, label %1713

1713:                                             ; preds = %1692, %1708
  %1714 = phi i64 [ %1695, %1708 ], [ 0, %1692 ]
  %1715 = and i64 %1686, -8
  %1716 = getelementptr i8, ptr %1679, i64 %1715
  %1717 = getelementptr i8, ptr %1680, i64 %1715
  br label %1718

1718:                                             ; preds = %1718, %1713
  %1719 = phi i64 [ %1714, %1713 ], [ %1723, %1718 ]
  %1720 = getelementptr i8, ptr %1679, i64 %1719
  %1721 = getelementptr i8, ptr %1680, i64 %1719
  %1722 = load <8 x i8>, ptr %1721, align 1, !tbaa !9
  store <8 x i8> %1722, ptr %1720, align 1, !tbaa !9
  %1723 = add nuw i64 %1719, 8
  %1724 = icmp eq i64 %1723, %1715
  br i1 %1724, label %1725, label %1718, !llvm.loop !194

1725:                                             ; preds = %1718
  %1726 = icmp eq i64 %1686, %1715
  br i1 %1726, label %1737, label %1727

1727:                                             ; preds = %1678, %1708, %1725
  %1728 = phi ptr [ %1679, %1678 ], [ %1710, %1708 ], [ %1716, %1725 ]
  %1729 = phi ptr [ %1680, %1678 ], [ %1709, %1708 ], [ %1717, %1725 ]
  br label %1730

1730:                                             ; preds = %1727, %1730
  %1731 = phi ptr [ %1735, %1730 ], [ %1728, %1727 ]
  %1732 = phi ptr [ %1733, %1730 ], [ %1729, %1727 ]
  %1733 = getelementptr inbounds i8, ptr %1732, i64 1
  %1734 = load i8, ptr %1732, align 1, !tbaa !9
  %1735 = getelementptr inbounds i8, ptr %1731, i64 1
  store i8 %1734, ptr %1731, align 1, !tbaa !9
  %1736 = icmp ult ptr %1735, %1592
  br i1 %1736, label %1730, label %1737, !llvm.loop !195

1737:                                             ; preds = %1730, %1645, %1706, %1725, %1621, %1640, %1596, %1676
  %1738 = load i64, ptr %1572, align 8, !tbaa !109
  %1739 = sub i64 %1738, %1584
  store i64 %1739, ptr %1572, align 8, !tbaa !109
  br label %1740

1740:                                             ; preds = %1737, %1581
  %1741 = phi ptr [ %1592, %1737 ], [ %1568, %1581 ]
  store ptr %1553, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %10, align 8, !tbaa !32
  %1742 = load i64, ptr %1572, align 8
  %1743 = getelementptr inbounds i8, ptr %1572, i64 8
  %1744 = load i64, ptr %1743, align 8
  %1745 = getelementptr inbounds i8, ptr %1572, i64 16
  %1746 = load i64, ptr %1745, align 8
  %1747 = getelementptr inbounds i8, ptr %1741, i64 %1742
  %1748 = add i64 %1744, %1742
  %1749 = getelementptr i8, ptr %1556, i64 %1742
  %1750 = sub i64 0, %1746
  %1751 = getelementptr inbounds i8, ptr %1747, i64 %1750
  %1752 = icmp sgt i64 %1742, 65536
  %1753 = getelementptr inbounds i8, ptr %1741, i64 %1748
  %1754 = icmp ugt ptr %1753, %1550
  %1755 = select i1 %1752, i1 true, i1 %1754
  br i1 %1755, label %1759, label %1756, !prof !111

1756:                                             ; preds = %1740
  %1757 = load <2 x i64>, ptr %1553, align 1, !tbaa !9
  store <2 x i64> %1757, ptr %1741, align 1, !tbaa !9
  %1758 = icmp ugt i64 %1742, 16
  br i1 %1758, label %1761, label %1779, !prof !51

1759:                                             ; preds = %1740
  %1760 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1741, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1572, ptr noundef nonnull %7, ptr noundef nonnull %1554, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1913

1761:                                             ; preds = %1756
  %1762 = getelementptr inbounds i8, ptr %1741, i64 16
  %1763 = add i64 %1742, -16
  %1764 = getelementptr inbounds i8, ptr %1741, i64 %1742
  %1765 = load <2 x i64>, ptr %1555, align 1, !tbaa !9
  store <2 x i64> %1765, ptr %1762, align 1, !tbaa !9
  %1766 = icmp ult i64 %1763, 17
  br i1 %1766, label %1779, label %1767

1767:                                             ; preds = %1761
  %1768 = getelementptr inbounds i8, ptr %1741, i64 32
  br label %1769

1769:                                             ; preds = %1769, %1767
  %1770 = phi ptr [ %1768, %1767 ], [ %1777, %1769 ]
  %1771 = phi ptr [ %1555, %1767 ], [ %1775, %1769 ]
  %1772 = getelementptr inbounds i8, ptr %1771, i64 16
  %1773 = load <2 x i64>, ptr %1772, align 1, !tbaa !9
  store <2 x i64> %1773, ptr %1770, align 1, !tbaa !9
  %1774 = getelementptr inbounds i8, ptr %1770, i64 16
  %1775 = getelementptr inbounds i8, ptr %1771, i64 32
  %1776 = load <2 x i64>, ptr %1775, align 1, !tbaa !9
  store <2 x i64> %1776, ptr %1774, align 1, !tbaa !9
  %1777 = getelementptr inbounds i8, ptr %1770, i64 32
  %1778 = icmp ult ptr %1777, %1764
  br i1 %1778, label %1769, label %1779, !llvm.loop !105

1779:                                             ; preds = %1769, %1761, %1756
  store ptr %1749, ptr %7, align 8, !tbaa !38
  %1780 = ptrtoint ptr %1747 to i64
  %1781 = sub i64 %1780, %33
  %1782 = icmp ugt i64 %1746, %1781
  br i1 %1782, label %1783, label %1797

1783:                                             ; preds = %1779
  %1784 = sub i64 %1780, %1551
  %1785 = icmp ugt i64 %1746, %1784
  br i1 %1785, label %2274, label %1786, !prof !51

1786:                                             ; preds = %1783
  %1787 = ptrtoint ptr %1751 to i64
  %1788 = sub i64 %1787, %33
  %1789 = getelementptr inbounds i8, ptr %30, i64 %1788
  %1790 = getelementptr inbounds i8, ptr %1789, i64 %1744
  %1791 = icmp ugt ptr %1790, %30
  br i1 %1791, label %1793, label %1792

1792:                                             ; preds = %1786
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1747, ptr align 1 %1789, i64 %1744, i1 false)
  br label %1913

1793:                                             ; preds = %1786
  %1794 = sub i64 0, %1788
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1747, ptr align 1 %1789, i64 %1794, i1 false)
  %1795 = getelementptr inbounds i8, ptr %1747, i64 %1794
  %1796 = add i64 %1744, %1788
  br label %1797

1797:                                             ; preds = %1793, %1779
  %1798 = phi i64 [ %1796, %1793 ], [ %1744, %1779 ]
  %1799 = phi ptr [ %26, %1793 ], [ %1751, %1779 ]
  %1800 = phi ptr [ %1795, %1793 ], [ %1747, %1779 ]
  %1801 = ptrtoint ptr %1800 to i64
  %1802 = icmp ugt i64 %1746, 15
  br i1 %1802, label %1803, label %1819, !prof !87

1803:                                             ; preds = %1797
  %1804 = getelementptr inbounds i8, ptr %1800, i64 %1798
  %1805 = load <2 x i64>, ptr %1799, align 1, !tbaa !9
  store <2 x i64> %1805, ptr %1800, align 1, !tbaa !9
  %1806 = icmp ult i64 %1798, 17
  br i1 %1806, label %1913, label %1807

1807:                                             ; preds = %1803
  %1808 = getelementptr inbounds i8, ptr %1800, i64 16
  br label %1809

1809:                                             ; preds = %1809, %1807
  %1810 = phi ptr [ %1808, %1807 ], [ %1817, %1809 ]
  %1811 = phi ptr [ %1799, %1807 ], [ %1815, %1809 ]
  %1812 = getelementptr inbounds i8, ptr %1811, i64 16
  %1813 = load <2 x i64>, ptr %1812, align 1, !tbaa !9
  store <2 x i64> %1813, ptr %1810, align 1, !tbaa !9
  %1814 = getelementptr inbounds i8, ptr %1810, i64 16
  %1815 = getelementptr inbounds i8, ptr %1811, i64 32
  %1816 = load <2 x i64>, ptr %1815, align 1, !tbaa !9
  store <2 x i64> %1816, ptr %1814, align 1, !tbaa !9
  %1817 = getelementptr inbounds i8, ptr %1810, i64 32
  %1818 = icmp ult ptr %1817, %1804
  br i1 %1818, label %1809, label %1913, !llvm.loop !105

1819:                                             ; preds = %1797
  %1820 = icmp ult i64 %1746, 8
  br i1 %1820, label %1821, label %1843

1821:                                             ; preds = %1819
  %1822 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1746
  %1823 = load i32, ptr %1822, align 4, !tbaa !28
  %1824 = load i8, ptr %1799, align 1, !tbaa !9
  store i8 %1824, ptr %1800, align 1, !tbaa !9
  %1825 = getelementptr inbounds i8, ptr %1799, i64 1
  %1826 = load i8, ptr %1825, align 1, !tbaa !9
  %1827 = getelementptr inbounds i8, ptr %1800, i64 1
  store i8 %1826, ptr %1827, align 1, !tbaa !9
  %1828 = getelementptr inbounds i8, ptr %1799, i64 2
  %1829 = load i8, ptr %1828, align 1, !tbaa !9
  %1830 = getelementptr inbounds i8, ptr %1800, i64 2
  store i8 %1829, ptr %1830, align 1, !tbaa !9
  %1831 = getelementptr inbounds i8, ptr %1799, i64 3
  %1832 = load i8, ptr %1831, align 1, !tbaa !9
  %1833 = getelementptr inbounds i8, ptr %1800, i64 3
  store i8 %1832, ptr %1833, align 1, !tbaa !9
  %1834 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1746
  %1835 = load i32, ptr %1834, align 4, !tbaa !28
  %1836 = zext i32 %1835 to i64
  %1837 = getelementptr inbounds i8, ptr %1799, i64 %1836
  %1838 = getelementptr inbounds i8, ptr %1800, i64 4
  %1839 = load i32, ptr %1837, align 1
  store i32 %1839, ptr %1838, align 1
  %1840 = sext i32 %1823 to i64
  %1841 = sub nsw i64 0, %1840
  %1842 = getelementptr inbounds i8, ptr %1837, i64 %1841
  br label %1845

1843:                                             ; preds = %1819
  %1844 = load i64, ptr %1799, align 1
  store i64 %1844, ptr %1800, align 1
  br label %1845

1845:                                             ; preds = %1821, %1843
  %1846 = phi ptr [ %1842, %1821 ], [ %1799, %1843 ]
  %1847 = getelementptr i8, ptr %1846, i64 8
  %1848 = getelementptr i8, ptr %1800, i64 8
  %1849 = icmp ugt i64 %1798, 8
  br i1 %1849, label %1850, label %1913

1850:                                             ; preds = %1845
  %1851 = ptrtoint ptr %1848 to i64
  %1852 = ptrtoint ptr %1847 to i64
  %1853 = sub i64 %1851, %1852
  %1854 = getelementptr inbounds i8, ptr %1800, i64 %1798
  %1855 = icmp slt i64 %1853, 16
  br i1 %1855, label %1856, label %1897

1856:                                             ; preds = %1850
  %1857 = add i64 %1798, %1801
  %1858 = add i64 %1801, 16
  %1859 = tail call i64 @llvm.umax.i64(i64 %1857, i64 %1858)
  %1860 = add i64 %1859, -9
  %1861 = sub i64 %1860, %1801
  %1862 = lshr i64 %1861, 3
  %1863 = add nuw nsw i64 %1862, 1
  %1864 = icmp ult i64 %1861, 24
  %1865 = icmp ult i64 %1853, 32
  %1866 = or i1 %1864, %1865
  br i1 %1866, label %1887, label %1867

1867:                                             ; preds = %1856
  %1868 = and i64 %1863, 4611686018427387900
  %1869 = shl i64 %1868, 3
  %1870 = getelementptr i8, ptr %1848, i64 %1869
  %1871 = shl i64 %1868, 3
  %1872 = getelementptr i8, ptr %1847, i64 %1871
  br label %1873

1873:                                             ; preds = %1873, %1867
  %1874 = phi i64 [ 0, %1867 ], [ %1883, %1873 ]
  %1875 = shl i64 %1874, 3
  %1876 = getelementptr i8, ptr %1848, i64 %1875
  %1877 = shl i64 %1874, 3
  %1878 = getelementptr i8, ptr %1847, i64 %1877
  %1879 = getelementptr i64, ptr %1878, i64 2
  %1880 = load <2 x i64>, ptr %1878, align 1
  %1881 = load <2 x i64>, ptr %1879, align 1
  %1882 = getelementptr i64, ptr %1876, i64 2
  store <2 x i64> %1880, ptr %1876, align 1
  store <2 x i64> %1881, ptr %1882, align 1
  %1883 = add nuw i64 %1874, 4
  %1884 = icmp eq i64 %1883, %1868
  br i1 %1884, label %1885, label %1873, !llvm.loop !196

1885:                                             ; preds = %1873
  %1886 = icmp eq i64 %1863, %1868
  br i1 %1886, label %1913, label %1887

1887:                                             ; preds = %1856, %1885
  %1888 = phi ptr [ %1848, %1856 ], [ %1870, %1885 ]
  %1889 = phi ptr [ %1847, %1856 ], [ %1872, %1885 ]
  br label %1890

1890:                                             ; preds = %1887, %1890
  %1891 = phi ptr [ %1894, %1890 ], [ %1888, %1887 ]
  %1892 = phi ptr [ %1895, %1890 ], [ %1889, %1887 ]
  %1893 = load i64, ptr %1892, align 1
  store i64 %1893, ptr %1891, align 1
  %1894 = getelementptr inbounds i8, ptr %1891, i64 8
  %1895 = getelementptr inbounds i8, ptr %1892, i64 8
  %1896 = icmp ult ptr %1894, %1854
  br i1 %1896, label %1890, label %1913, !llvm.loop !197

1897:                                             ; preds = %1850
  %1898 = add i64 %1798, -8
  %1899 = load <2 x i64>, ptr %1847, align 1, !tbaa !9
  store <2 x i64> %1899, ptr %1848, align 1, !tbaa !9
  %1900 = icmp ult i64 %1898, 17
  br i1 %1900, label %1913, label %1901

1901:                                             ; preds = %1897
  %1902 = getelementptr inbounds i8, ptr %1800, i64 24
  br label %1903

1903:                                             ; preds = %1903, %1901
  %1904 = phi ptr [ %1902, %1901 ], [ %1911, %1903 ]
  %1905 = phi ptr [ %1847, %1901 ], [ %1909, %1903 ]
  %1906 = getelementptr inbounds i8, ptr %1905, i64 16
  %1907 = load <2 x i64>, ptr %1906, align 1, !tbaa !9
  store <2 x i64> %1907, ptr %1904, align 1, !tbaa !9
  %1908 = getelementptr inbounds i8, ptr %1904, i64 16
  %1909 = getelementptr inbounds i8, ptr %1905, i64 32
  %1910 = load <2 x i64>, ptr %1909, align 1, !tbaa !9
  store <2 x i64> %1910, ptr %1908, align 1, !tbaa !9
  %1911 = getelementptr inbounds i8, ptr %1904, i64 32
  %1912 = icmp ult ptr %1911, %1854
  br i1 %1912, label %1903, label %1913, !llvm.loop !105

1913:                                             ; preds = %1903, %1890, %1809, %1885, %1897, %1803, %1759, %1792, %1845
  %1914 = phi i64 [ %1760, %1759 ], [ %1748, %1792 ], [ %1748, %1845 ], [ %1748, %1803 ], [ %1748, %1897 ], [ %1748, %1885 ], [ %1748, %1809 ], [ %1748, %1890 ], [ %1748, %1903 ]
  %1915 = icmp ult i64 %1914, -119
  %1916 = getelementptr inbounds i8, ptr %1741, i64 %1914
  br i1 %1915, label %2269, label %2274

1917:                                             ; preds = %1575
  %1918 = getelementptr inbounds i8, ptr %1578, i64 -32
  %1919 = load i64, ptr %1572, align 8
  %1920 = getelementptr inbounds i8, ptr %1572, i64 8
  %1921 = load i64, ptr %1920, align 8
  %1922 = getelementptr inbounds i8, ptr %1572, i64 16
  %1923 = load i64, ptr %1922, align 8
  %1924 = getelementptr inbounds i8, ptr %1568, i64 %1919
  %1925 = add i64 %1921, %1919
  %1926 = getelementptr inbounds i8, ptr %1576, i64 %1919
  %1927 = sub i64 0, %1923
  %1928 = getelementptr inbounds i8, ptr %1924, i64 %1927
  %1929 = icmp ugt ptr %1926, %1569
  %1930 = getelementptr inbounds i8, ptr %1568, i64 %1925
  %1931 = icmp ugt ptr %1930, %1918
  %1932 = select i1 %1929, i1 true, i1 %1931
  br i1 %1932, label %1936, label %1933, !prof !111

1933:                                             ; preds = %1917
  %1934 = load <2 x i64>, ptr %1576, align 1, !tbaa !9
  store <2 x i64> %1934, ptr %1568, align 1, !tbaa !9
  %1935 = icmp ugt i64 %1919, 16
  br i1 %1935, label %1938, label %1957, !prof !51

1936:                                             ; preds = %1917
  %1937 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1568, ptr noundef %20, ptr noundef nonnull %1918, ptr noundef nonnull byval(%struct.seq_t) align 8 %1572, ptr noundef nonnull %7, ptr noundef %1569, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %2265

1938:                                             ; preds = %1933
  %1939 = getelementptr inbounds i8, ptr %1568, i64 16
  %1940 = getelementptr inbounds i8, ptr %1576, i64 16
  %1941 = add i64 %1919, -16
  %1942 = getelementptr inbounds i8, ptr %1568, i64 %1919
  %1943 = load <2 x i64>, ptr %1940, align 1, !tbaa !9
  store <2 x i64> %1943, ptr %1939, align 1, !tbaa !9
  %1944 = icmp ult i64 %1941, 17
  br i1 %1944, label %1957, label %1945

1945:                                             ; preds = %1938
  %1946 = getelementptr inbounds i8, ptr %1568, i64 32
  br label %1947

1947:                                             ; preds = %1947, %1945
  %1948 = phi ptr [ %1946, %1945 ], [ %1955, %1947 ]
  %1949 = phi ptr [ %1940, %1945 ], [ %1953, %1947 ]
  %1950 = getelementptr inbounds i8, ptr %1949, i64 16
  %1951 = load <2 x i64>, ptr %1950, align 1, !tbaa !9
  store <2 x i64> %1951, ptr %1948, align 1, !tbaa !9
  %1952 = getelementptr inbounds i8, ptr %1948, i64 16
  %1953 = getelementptr inbounds i8, ptr %1949, i64 32
  %1954 = load <2 x i64>, ptr %1953, align 1, !tbaa !9
  store <2 x i64> %1954, ptr %1952, align 1, !tbaa !9
  %1955 = getelementptr inbounds i8, ptr %1948, i64 32
  %1956 = icmp ult ptr %1955, %1942
  br i1 %1956, label %1947, label %1957, !llvm.loop !105

1957:                                             ; preds = %1947, %1938, %1933
  store ptr %1926, ptr %7, align 8, !tbaa !38
  %1958 = ptrtoint ptr %1924 to i64
  %1959 = sub i64 %1958, %33
  %1960 = icmp ugt i64 %1923, %1959
  br i1 %1960, label %1961, label %1975

1961:                                             ; preds = %1957
  %1962 = sub i64 %1958, %1551
  %1963 = icmp ugt i64 %1923, %1962
  br i1 %1963, label %2265, label %1964, !prof !51

1964:                                             ; preds = %1961
  %1965 = ptrtoint ptr %1928 to i64
  %1966 = sub i64 %1965, %33
  %1967 = getelementptr inbounds i8, ptr %30, i64 %1966
  %1968 = getelementptr inbounds i8, ptr %1967, i64 %1921
  %1969 = icmp ugt ptr %1968, %30
  br i1 %1969, label %1971, label %1970

1970:                                             ; preds = %1964
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1924, ptr align 1 %1967, i64 %1921, i1 false)
  br label %2265

1971:                                             ; preds = %1964
  %1972 = sub i64 0, %1966
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1924, ptr align 1 %1967, i64 %1972, i1 false)
  %1973 = getelementptr inbounds i8, ptr %1924, i64 %1972
  %1974 = add i64 %1921, %1966
  br label %1975

1975:                                             ; preds = %1971, %1957
  %1976 = phi i64 [ %1974, %1971 ], [ %1921, %1957 ]
  %1977 = phi ptr [ %26, %1971 ], [ %1928, %1957 ]
  %1978 = phi ptr [ %1973, %1971 ], [ %1924, %1957 ]
  %1979 = ptrtoint ptr %1978 to i64
  %1980 = icmp ugt i64 %1923, 15
  br i1 %1980, label %1981, label %1997, !prof !87

1981:                                             ; preds = %1975
  %1982 = getelementptr inbounds i8, ptr %1978, i64 %1976
  %1983 = load <2 x i64>, ptr %1977, align 1, !tbaa !9
  store <2 x i64> %1983, ptr %1978, align 1, !tbaa !9
  %1984 = icmp ult i64 %1976, 17
  br i1 %1984, label %2265, label %1985

1985:                                             ; preds = %1981
  %1986 = getelementptr inbounds i8, ptr %1978, i64 16
  br label %1987

1987:                                             ; preds = %1987, %1985
  %1988 = phi ptr [ %1986, %1985 ], [ %1995, %1987 ]
  %1989 = phi ptr [ %1977, %1985 ], [ %1993, %1987 ]
  %1990 = getelementptr inbounds i8, ptr %1989, i64 16
  %1991 = load <2 x i64>, ptr %1990, align 1, !tbaa !9
  store <2 x i64> %1991, ptr %1988, align 1, !tbaa !9
  %1992 = getelementptr inbounds i8, ptr %1988, i64 16
  %1993 = getelementptr inbounds i8, ptr %1989, i64 32
  %1994 = load <2 x i64>, ptr %1993, align 1, !tbaa !9
  store <2 x i64> %1994, ptr %1992, align 1, !tbaa !9
  %1995 = getelementptr inbounds i8, ptr %1988, i64 32
  %1996 = icmp ult ptr %1995, %1982
  br i1 %1996, label %1987, label %2265, !llvm.loop !105

1997:                                             ; preds = %1975
  %1998 = icmp ult i64 %1923, 8
  br i1 %1998, label %1999, label %2021

1999:                                             ; preds = %1997
  %2000 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1923
  %2001 = load i32, ptr %2000, align 4, !tbaa !28
  %2002 = load i8, ptr %1977, align 1, !tbaa !9
  store i8 %2002, ptr %1978, align 1, !tbaa !9
  %2003 = getelementptr inbounds i8, ptr %1977, i64 1
  %2004 = load i8, ptr %2003, align 1, !tbaa !9
  %2005 = getelementptr inbounds i8, ptr %1978, i64 1
  store i8 %2004, ptr %2005, align 1, !tbaa !9
  %2006 = getelementptr inbounds i8, ptr %1977, i64 2
  %2007 = load i8, ptr %2006, align 1, !tbaa !9
  %2008 = getelementptr inbounds i8, ptr %1978, i64 2
  store i8 %2007, ptr %2008, align 1, !tbaa !9
  %2009 = getelementptr inbounds i8, ptr %1977, i64 3
  %2010 = load i8, ptr %2009, align 1, !tbaa !9
  %2011 = getelementptr inbounds i8, ptr %1978, i64 3
  store i8 %2010, ptr %2011, align 1, !tbaa !9
  %2012 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1923
  %2013 = load i32, ptr %2012, align 4, !tbaa !28
  %2014 = zext i32 %2013 to i64
  %2015 = getelementptr inbounds i8, ptr %1977, i64 %2014
  %2016 = getelementptr inbounds i8, ptr %1978, i64 4
  %2017 = load i32, ptr %2015, align 1
  store i32 %2017, ptr %2016, align 1
  %2018 = sext i32 %2001 to i64
  %2019 = sub nsw i64 0, %2018
  %2020 = getelementptr inbounds i8, ptr %2015, i64 %2019
  br label %2023

2021:                                             ; preds = %1997
  %2022 = load i64, ptr %1977, align 1
  store i64 %2022, ptr %1978, align 1
  br label %2023

2023:                                             ; preds = %1999, %2021
  %2024 = phi ptr [ %2020, %1999 ], [ %1977, %2021 ]
  %2025 = getelementptr i8, ptr %2024, i64 8
  %2026 = getelementptr i8, ptr %1978, i64 8
  %2027 = icmp ugt i64 %1976, 8
  br i1 %2027, label %2028, label %2265

2028:                                             ; preds = %2023
  %2029 = ptrtoint ptr %2026 to i64
  %2030 = ptrtoint ptr %2025 to i64
  %2031 = sub i64 %2029, %2030
  %2032 = getelementptr inbounds i8, ptr %1978, i64 %1976
  %2033 = icmp slt i64 %2031, 16
  br i1 %2033, label %2034, label %2075

2034:                                             ; preds = %2028
  %2035 = add i64 %1976, %1979
  %2036 = add i64 %1979, 16
  %2037 = tail call i64 @llvm.umax.i64(i64 %2035, i64 %2036)
  %2038 = add i64 %2037, -9
  %2039 = sub i64 %2038, %1979
  %2040 = lshr i64 %2039, 3
  %2041 = add nuw nsw i64 %2040, 1
  %2042 = icmp ult i64 %2039, 24
  %2043 = icmp ult i64 %2031, 32
  %2044 = or i1 %2042, %2043
  br i1 %2044, label %2065, label %2045

2045:                                             ; preds = %2034
  %2046 = and i64 %2041, 4611686018427387900
  %2047 = shl i64 %2046, 3
  %2048 = getelementptr i8, ptr %2026, i64 %2047
  %2049 = shl i64 %2046, 3
  %2050 = getelementptr i8, ptr %2025, i64 %2049
  br label %2051

2051:                                             ; preds = %2051, %2045
  %2052 = phi i64 [ 0, %2045 ], [ %2061, %2051 ]
  %2053 = shl i64 %2052, 3
  %2054 = getelementptr i8, ptr %2026, i64 %2053
  %2055 = shl i64 %2052, 3
  %2056 = getelementptr i8, ptr %2025, i64 %2055
  %2057 = getelementptr i64, ptr %2056, i64 2
  %2058 = load <2 x i64>, ptr %2056, align 1
  %2059 = load <2 x i64>, ptr %2057, align 1
  %2060 = getelementptr i64, ptr %2054, i64 2
  store <2 x i64> %2058, ptr %2054, align 1
  store <2 x i64> %2059, ptr %2060, align 1
  %2061 = add nuw i64 %2052, 4
  %2062 = icmp eq i64 %2061, %2046
  br i1 %2062, label %2063, label %2051, !llvm.loop !198

2063:                                             ; preds = %2051
  %2064 = icmp eq i64 %2041, %2046
  br i1 %2064, label %2265, label %2065

2065:                                             ; preds = %2034, %2063
  %2066 = phi ptr [ %2026, %2034 ], [ %2048, %2063 ]
  %2067 = phi ptr [ %2025, %2034 ], [ %2050, %2063 ]
  br label %2068

2068:                                             ; preds = %2065, %2068
  %2069 = phi ptr [ %2072, %2068 ], [ %2066, %2065 ]
  %2070 = phi ptr [ %2073, %2068 ], [ %2067, %2065 ]
  %2071 = load i64, ptr %2070, align 1
  store i64 %2071, ptr %2069, align 1
  %2072 = getelementptr inbounds i8, ptr %2069, i64 8
  %2073 = getelementptr inbounds i8, ptr %2070, i64 8
  %2074 = icmp ult ptr %2072, %2032
  br i1 %2074, label %2068, label %2265, !llvm.loop !199

2075:                                             ; preds = %2028
  %2076 = add i64 %1976, -8
  %2077 = load <2 x i64>, ptr %2025, align 1, !tbaa !9
  store <2 x i64> %2077, ptr %2026, align 1, !tbaa !9
  %2078 = icmp ult i64 %2076, 17
  br i1 %2078, label %2265, label %2079

2079:                                             ; preds = %2075
  %2080 = getelementptr inbounds i8, ptr %1978, i64 24
  br label %2081

2081:                                             ; preds = %2081, %2079
  %2082 = phi ptr [ %2080, %2079 ], [ %2089, %2081 ]
  %2083 = phi ptr [ %2025, %2079 ], [ %2087, %2081 ]
  %2084 = getelementptr inbounds i8, ptr %2083, i64 16
  %2085 = load <2 x i64>, ptr %2084, align 1, !tbaa !9
  store <2 x i64> %2085, ptr %2082, align 1, !tbaa !9
  %2086 = getelementptr inbounds i8, ptr %2082, i64 16
  %2087 = getelementptr inbounds i8, ptr %2083, i64 32
  %2088 = load <2 x i64>, ptr %2087, align 1, !tbaa !9
  store <2 x i64> %2088, ptr %2086, align 1, !tbaa !9
  %2089 = getelementptr inbounds i8, ptr %2082, i64 32
  %2090 = icmp ult ptr %2089, %2032
  br i1 %2090, label %2081, label %2265, !llvm.loop !105

2091:                                             ; preds = %1566
  %2092 = load i64, ptr %1572, align 8
  %2093 = getelementptr inbounds i8, ptr %1572, i64 8
  %2094 = load i64, ptr %2093, align 8
  %2095 = getelementptr inbounds i8, ptr %1572, i64 16
  %2096 = load i64, ptr %2095, align 8
  %2097 = getelementptr inbounds i8, ptr %1568, i64 %2092
  %2098 = add i64 %2094, %2092
  %2099 = load ptr, ptr %7, align 8, !tbaa !38
  %2100 = getelementptr inbounds i8, ptr %2099, i64 %2092
  %2101 = sub i64 0, %2096
  %2102 = getelementptr inbounds i8, ptr %2097, i64 %2101
  %2103 = icmp ugt ptr %2100, %1569
  %2104 = getelementptr inbounds i8, ptr %1568, i64 %2098
  %2105 = icmp ugt ptr %2104, %1550
  %2106 = select i1 %2103, i1 true, i1 %2105
  br i1 %2106, label %2110, label %2107, !prof !111

2107:                                             ; preds = %2091
  %2108 = load <2 x i64>, ptr %2099, align 1, !tbaa !9
  store <2 x i64> %2108, ptr %1568, align 1, !tbaa !9
  %2109 = icmp ugt i64 %2092, 16
  br i1 %2109, label %2112, label %2131, !prof !51

2110:                                             ; preds = %2091
  %2111 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1568, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1572, ptr noundef nonnull %7, ptr noundef %1569, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %2265

2112:                                             ; preds = %2107
  %2113 = getelementptr inbounds i8, ptr %1568, i64 16
  %2114 = getelementptr inbounds i8, ptr %2099, i64 16
  %2115 = add i64 %2092, -16
  %2116 = getelementptr inbounds i8, ptr %1568, i64 %2092
  %2117 = load <2 x i64>, ptr %2114, align 1, !tbaa !9
  store <2 x i64> %2117, ptr %2113, align 1, !tbaa !9
  %2118 = icmp ult i64 %2115, 17
  br i1 %2118, label %2131, label %2119

2119:                                             ; preds = %2112
  %2120 = getelementptr inbounds i8, ptr %1568, i64 32
  br label %2121

2121:                                             ; preds = %2121, %2119
  %2122 = phi ptr [ %2120, %2119 ], [ %2129, %2121 ]
  %2123 = phi ptr [ %2114, %2119 ], [ %2127, %2121 ]
  %2124 = getelementptr inbounds i8, ptr %2123, i64 16
  %2125 = load <2 x i64>, ptr %2124, align 1, !tbaa !9
  store <2 x i64> %2125, ptr %2122, align 1, !tbaa !9
  %2126 = getelementptr inbounds i8, ptr %2122, i64 16
  %2127 = getelementptr inbounds i8, ptr %2123, i64 32
  %2128 = load <2 x i64>, ptr %2127, align 1, !tbaa !9
  store <2 x i64> %2128, ptr %2126, align 1, !tbaa !9
  %2129 = getelementptr inbounds i8, ptr %2122, i64 32
  %2130 = icmp ult ptr %2129, %2116
  br i1 %2130, label %2121, label %2131, !llvm.loop !105

2131:                                             ; preds = %2121, %2112, %2107
  store ptr %2100, ptr %7, align 8, !tbaa !38
  %2132 = ptrtoint ptr %2097 to i64
  %2133 = sub i64 %2132, %33
  %2134 = icmp ugt i64 %2096, %2133
  br i1 %2134, label %2135, label %2149

2135:                                             ; preds = %2131
  %2136 = sub i64 %2132, %1551
  %2137 = icmp ugt i64 %2096, %2136
  br i1 %2137, label %2265, label %2138, !prof !51

2138:                                             ; preds = %2135
  %2139 = ptrtoint ptr %2102 to i64
  %2140 = sub i64 %2139, %33
  %2141 = getelementptr inbounds i8, ptr %30, i64 %2140
  %2142 = getelementptr inbounds i8, ptr %2141, i64 %2094
  %2143 = icmp ugt ptr %2142, %30
  br i1 %2143, label %2145, label %2144

2144:                                             ; preds = %2138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2097, ptr align 1 %2141, i64 %2094, i1 false)
  br label %2265

2145:                                             ; preds = %2138
  %2146 = sub i64 0, %2140
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2097, ptr align 1 %2141, i64 %2146, i1 false)
  %2147 = getelementptr inbounds i8, ptr %2097, i64 %2146
  %2148 = add i64 %2094, %2140
  br label %2149

2149:                                             ; preds = %2145, %2131
  %2150 = phi i64 [ %2148, %2145 ], [ %2094, %2131 ]
  %2151 = phi ptr [ %26, %2145 ], [ %2102, %2131 ]
  %2152 = phi ptr [ %2147, %2145 ], [ %2097, %2131 ]
  %2153 = ptrtoint ptr %2152 to i64
  %2154 = icmp ugt i64 %2096, 15
  br i1 %2154, label %2155, label %2171, !prof !87

2155:                                             ; preds = %2149
  %2156 = getelementptr inbounds i8, ptr %2152, i64 %2150
  %2157 = load <2 x i64>, ptr %2151, align 1, !tbaa !9
  store <2 x i64> %2157, ptr %2152, align 1, !tbaa !9
  %2158 = icmp ult i64 %2150, 17
  br i1 %2158, label %2265, label %2159

2159:                                             ; preds = %2155
  %2160 = getelementptr inbounds i8, ptr %2152, i64 16
  br label %2161

2161:                                             ; preds = %2161, %2159
  %2162 = phi ptr [ %2160, %2159 ], [ %2169, %2161 ]
  %2163 = phi ptr [ %2151, %2159 ], [ %2167, %2161 ]
  %2164 = getelementptr inbounds i8, ptr %2163, i64 16
  %2165 = load <2 x i64>, ptr %2164, align 1, !tbaa !9
  store <2 x i64> %2165, ptr %2162, align 1, !tbaa !9
  %2166 = getelementptr inbounds i8, ptr %2162, i64 16
  %2167 = getelementptr inbounds i8, ptr %2163, i64 32
  %2168 = load <2 x i64>, ptr %2167, align 1, !tbaa !9
  store <2 x i64> %2168, ptr %2166, align 1, !tbaa !9
  %2169 = getelementptr inbounds i8, ptr %2162, i64 32
  %2170 = icmp ult ptr %2169, %2156
  br i1 %2170, label %2161, label %2265, !llvm.loop !105

2171:                                             ; preds = %2149
  %2172 = icmp ult i64 %2096, 8
  br i1 %2172, label %2173, label %2195

2173:                                             ; preds = %2171
  %2174 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %2096
  %2175 = load i32, ptr %2174, align 4, !tbaa !28
  %2176 = load i8, ptr %2151, align 1, !tbaa !9
  store i8 %2176, ptr %2152, align 1, !tbaa !9
  %2177 = getelementptr inbounds i8, ptr %2151, i64 1
  %2178 = load i8, ptr %2177, align 1, !tbaa !9
  %2179 = getelementptr inbounds i8, ptr %2152, i64 1
  store i8 %2178, ptr %2179, align 1, !tbaa !9
  %2180 = getelementptr inbounds i8, ptr %2151, i64 2
  %2181 = load i8, ptr %2180, align 1, !tbaa !9
  %2182 = getelementptr inbounds i8, ptr %2152, i64 2
  store i8 %2181, ptr %2182, align 1, !tbaa !9
  %2183 = getelementptr inbounds i8, ptr %2151, i64 3
  %2184 = load i8, ptr %2183, align 1, !tbaa !9
  %2185 = getelementptr inbounds i8, ptr %2152, i64 3
  store i8 %2184, ptr %2185, align 1, !tbaa !9
  %2186 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %2096
  %2187 = load i32, ptr %2186, align 4, !tbaa !28
  %2188 = zext i32 %2187 to i64
  %2189 = getelementptr inbounds i8, ptr %2151, i64 %2188
  %2190 = getelementptr inbounds i8, ptr %2152, i64 4
  %2191 = load i32, ptr %2189, align 1
  store i32 %2191, ptr %2190, align 1
  %2192 = sext i32 %2175 to i64
  %2193 = sub nsw i64 0, %2192
  %2194 = getelementptr inbounds i8, ptr %2189, i64 %2193
  br label %2197

2195:                                             ; preds = %2171
  %2196 = load i64, ptr %2151, align 1
  store i64 %2196, ptr %2152, align 1
  br label %2197

2197:                                             ; preds = %2173, %2195
  %2198 = phi ptr [ %2194, %2173 ], [ %2151, %2195 ]
  %2199 = getelementptr i8, ptr %2198, i64 8
  %2200 = getelementptr i8, ptr %2152, i64 8
  %2201 = icmp ugt i64 %2150, 8
  br i1 %2201, label %2202, label %2265

2202:                                             ; preds = %2197
  %2203 = ptrtoint ptr %2200 to i64
  %2204 = ptrtoint ptr %2199 to i64
  %2205 = sub i64 %2203, %2204
  %2206 = getelementptr inbounds i8, ptr %2152, i64 %2150
  %2207 = icmp slt i64 %2205, 16
  br i1 %2207, label %2208, label %2249

2208:                                             ; preds = %2202
  %2209 = add i64 %2150, %2153
  %2210 = add i64 %2153, 16
  %2211 = tail call i64 @llvm.umax.i64(i64 %2209, i64 %2210)
  %2212 = add i64 %2211, -9
  %2213 = sub i64 %2212, %2153
  %2214 = lshr i64 %2213, 3
  %2215 = add nuw nsw i64 %2214, 1
  %2216 = icmp ult i64 %2213, 24
  %2217 = icmp ult i64 %2205, 32
  %2218 = or i1 %2216, %2217
  br i1 %2218, label %2239, label %2219

2219:                                             ; preds = %2208
  %2220 = and i64 %2215, 4611686018427387900
  %2221 = shl i64 %2220, 3
  %2222 = getelementptr i8, ptr %2200, i64 %2221
  %2223 = shl i64 %2220, 3
  %2224 = getelementptr i8, ptr %2199, i64 %2223
  br label %2225

2225:                                             ; preds = %2225, %2219
  %2226 = phi i64 [ 0, %2219 ], [ %2235, %2225 ]
  %2227 = shl i64 %2226, 3
  %2228 = getelementptr i8, ptr %2200, i64 %2227
  %2229 = shl i64 %2226, 3
  %2230 = getelementptr i8, ptr %2199, i64 %2229
  %2231 = getelementptr i64, ptr %2230, i64 2
  %2232 = load <2 x i64>, ptr %2230, align 1
  %2233 = load <2 x i64>, ptr %2231, align 1
  %2234 = getelementptr i64, ptr %2228, i64 2
  store <2 x i64> %2232, ptr %2228, align 1
  store <2 x i64> %2233, ptr %2234, align 1
  %2235 = add nuw i64 %2226, 4
  %2236 = icmp eq i64 %2235, %2220
  br i1 %2236, label %2237, label %2225, !llvm.loop !200

2237:                                             ; preds = %2225
  %2238 = icmp eq i64 %2215, %2220
  br i1 %2238, label %2265, label %2239

2239:                                             ; preds = %2208, %2237
  %2240 = phi ptr [ %2200, %2208 ], [ %2222, %2237 ]
  %2241 = phi ptr [ %2199, %2208 ], [ %2224, %2237 ]
  br label %2242

2242:                                             ; preds = %2239, %2242
  %2243 = phi ptr [ %2246, %2242 ], [ %2240, %2239 ]
  %2244 = phi ptr [ %2247, %2242 ], [ %2241, %2239 ]
  %2245 = load i64, ptr %2244, align 1
  store i64 %2245, ptr %2243, align 1
  %2246 = getelementptr inbounds i8, ptr %2243, i64 8
  %2247 = getelementptr inbounds i8, ptr %2244, i64 8
  %2248 = icmp ult ptr %2246, %2206
  br i1 %2248, label %2242, label %2265, !llvm.loop !201

2249:                                             ; preds = %2202
  %2250 = add i64 %2150, -8
  %2251 = load <2 x i64>, ptr %2199, align 1, !tbaa !9
  store <2 x i64> %2251, ptr %2200, align 1, !tbaa !9
  %2252 = icmp ult i64 %2250, 17
  br i1 %2252, label %2265, label %2253

2253:                                             ; preds = %2249
  %2254 = getelementptr inbounds i8, ptr %2152, i64 24
  br label %2255

2255:                                             ; preds = %2255, %2253
  %2256 = phi ptr [ %2254, %2253 ], [ %2263, %2255 ]
  %2257 = phi ptr [ %2199, %2253 ], [ %2261, %2255 ]
  %2258 = getelementptr inbounds i8, ptr %2257, i64 16
  %2259 = load <2 x i64>, ptr %2258, align 1, !tbaa !9
  store <2 x i64> %2259, ptr %2256, align 1, !tbaa !9
  %2260 = getelementptr inbounds i8, ptr %2256, i64 16
  %2261 = getelementptr inbounds i8, ptr %2257, i64 32
  %2262 = load <2 x i64>, ptr %2261, align 1, !tbaa !9
  store <2 x i64> %2262, ptr %2260, align 1, !tbaa !9
  %2263 = getelementptr inbounds i8, ptr %2256, i64 32
  %2264 = icmp ult ptr %2263, %2206
  br i1 %2264, label %2255, label %2265, !llvm.loop !105

2265:                                             ; preds = %2197, %2144, %2135, %2110, %2155, %2249, %2237, %2161, %2242, %2255, %2023, %1970, %1961, %1936, %1981, %2075, %2063, %1987, %2068, %2081
  %2266 = phi i64 [ %1937, %1936 ], [ %1925, %1970 ], [ -20, %1961 ], [ %1925, %2023 ], [ %1925, %1981 ], [ %1925, %2075 ], [ %1925, %2063 ], [ %1925, %1987 ], [ %1925, %2068 ], [ %1925, %2081 ], [ %2111, %2110 ], [ %2098, %2144 ], [ -20, %2135 ], [ %2098, %2197 ], [ %2098, %2155 ], [ %2098, %2249 ], [ %2098, %2237 ], [ %2098, %2161 ], [ %2098, %2242 ], [ %2098, %2255 ]
  %2267 = icmp ult i64 %2266, -119
  %2268 = getelementptr inbounds i8, ptr %1568, i64 %2266
  br i1 %2267, label %2269, label %2274

2269:                                             ; preds = %2265, %1913
  %2270 = phi ptr [ %1554, %1913 ], [ %1569, %2265 ]
  %2271 = phi ptr [ %1916, %1913 ], [ %2268, %2265 ]
  %2272 = add nsw i32 %1567, 1
  %2273 = icmp eq i32 %2272, %5
  br i1 %2273, label %1557, label %1566, !llvm.loop !131

2274:                                             ; preds = %1505, %806, %1133, %2265, %1913, %1586, %1783, %1003, %107, %56, %32, %120, %1533
  %2275 = phi i64 [ -20, %120 ], [ -20, %1533 ], [ -20, %32 ], [ -20, %56 ], [ -20, %107 ], [ -20, %1003 ], [ -20, %1783 ], [ %1914, %1913 ], [ -70, %1586 ], [ %2266, %2265 ], [ -70, %806 ], [ %1134, %1133 ], [ %1506, %1505 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #16
  br label %2320

2276:                                             ; preds = %1557, %19
  %2277 = phi ptr [ %1565, %1557 ], [ %22, %19 ]
  %2278 = phi i32 [ %1564, %1557 ], [ %11, %19 ]
  %2279 = phi ptr [ %1558, %1557 ], [ %24, %19 ]
  %2280 = phi ptr [ %1559, %1557 ], [ %1, %19 ]
  %2281 = icmp eq i32 %2278, 2
  br i1 %2281, label %2284, label %2282

2282:                                             ; preds = %2276
  %2283 = ptrtoint ptr %20 to i64
  br label %2300

2284:                                             ; preds = %2276
  %2285 = ptrtoint ptr %2279 to i64
  %2286 = ptrtoint ptr %2277 to i64
  %2287 = sub i64 %2285, %2286
  %2288 = ptrtoint ptr %20 to i64
  %2289 = ptrtoint ptr %2280 to i64
  %2290 = sub i64 %2288, %2289
  %2291 = icmp ugt i64 %2287, %2290
  br i1 %2291, label %2320, label %2292

2292:                                             ; preds = %2284
  %2293 = icmp eq ptr %2280, null
  br i1 %2293, label %2296, label %2294

2294:                                             ; preds = %2292
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2280, ptr align 1 %2277, i64 %2287, i1 false)
  %2295 = getelementptr inbounds i8, ptr %2280, i64 %2287
  br label %2296

2296:                                             ; preds = %2292, %2294
  %2297 = phi ptr [ %2295, %2294 ], [ null, %2292 ]
  %2298 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %2299 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  br label %2300

2300:                                             ; preds = %2282, %2296
  %2301 = phi i64 [ %2283, %2282 ], [ %2288, %2296 ]
  %2302 = phi ptr [ %2277, %2282 ], [ %2298, %2296 ]
  %2303 = phi ptr [ %2279, %2282 ], [ %2299, %2296 ]
  %2304 = phi ptr [ %2280, %2282 ], [ %2297, %2296 ]
  %2305 = ptrtoint ptr %2303 to i64
  %2306 = ptrtoint ptr %2302 to i64
  %2307 = sub i64 %2305, %2306
  %2308 = ptrtoint ptr %2304 to i64
  %2309 = sub i64 %2301, %2308
  %2310 = icmp ugt i64 %2307, %2309
  br i1 %2310, label %2320, label %2311

2311:                                             ; preds = %2300
  %2312 = icmp eq ptr %2304, null
  br i1 %2312, label %2316, label %2313

2313:                                             ; preds = %2311
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2304, ptr align 1 %2302, i64 %2307, i1 false)
  %2314 = getelementptr inbounds i8, ptr %2304, i64 %2307
  %2315 = ptrtoint ptr %2314 to i64
  br label %2316

2316:                                             ; preds = %2313, %2311
  %2317 = phi i64 [ 0, %2311 ], [ %2315, %2313 ]
  %2318 = ptrtoint ptr %1 to i64
  %2319 = sub i64 %2317, %2318
  br label %2320

2320:                                             ; preds = %2284, %2300, %2274, %2316
  %2321 = phi i64 [ %2319, %2316 ], [ %2275, %2274 ], [ -70, %2300 ], [ -70, %2284 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret i64 %2321
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.seq_t) align 8 %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly %7) unnamed_addr #13 {
  %9 = load i64, ptr %2, align 8, !tbaa !109
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds %struct.seq_t, ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = add i64 %12, %9
  %14 = load ptr, ptr %3, align 8, !tbaa !38
  %15 = getelementptr inbounds i8, ptr %14, i64 %9
  %16 = getelementptr inbounds %struct.seq_t, ptr %2, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !136
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  %20 = getelementptr inbounds i8, ptr %1, i64 -32
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %13, %23
  br i1 %24, label %209, label %25

25:                                               ; preds = %8
  %26 = ptrtoint ptr %4 to i64
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %9, %28
  br i1 %29, label %209, label %30

30:                                               ; preds = %25
  %31 = icmp ult i64 %9, 8
  br i1 %31, label %32, label %88

32:                                               ; preds = %30
  %33 = icmp eq i64 %9, 0
  br i1 %33, label %185, label %34

34:                                               ; preds = %32
  %35 = add i64 %9, %22
  %36 = add i64 %22, 1
  %37 = tail call i64 @llvm.umax.i64(i64 %35, i64 %36)
  %38 = sub i64 %37, %22
  %39 = icmp ult i64 %38, 8
  %40 = sub i64 %22, %27
  %41 = icmp ult i64 %40, 32
  %42 = or i1 %39, %41
  br i1 %42, label %78, label %43

43:                                               ; preds = %34
  %44 = icmp ult i64 %38, 32
  br i1 %44, label %64, label %45

45:                                               ; preds = %43
  %46 = and i64 %38, -32
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 0, %45 ], [ %55, %47 ]
  %49 = getelementptr i8, ptr %14, i64 %48
  %50 = getelementptr i8, ptr %0, i64 %48
  %51 = getelementptr i8, ptr %49, i64 16
  %52 = load <16 x i8>, ptr %49, align 1, !tbaa !9
  %53 = load <16 x i8>, ptr %51, align 1, !tbaa !9
  %54 = getelementptr i8, ptr %50, i64 16
  store <16 x i8> %52, ptr %50, align 1, !tbaa !9
  store <16 x i8> %53, ptr %54, align 1, !tbaa !9
  %55 = add nuw i64 %48, 32
  %56 = icmp eq i64 %55, %46
  br i1 %56, label %57, label %47, !llvm.loop !202

57:                                               ; preds = %47
  %58 = icmp eq i64 %38, %46
  br i1 %58, label %185, label %59

59:                                               ; preds = %57
  %60 = getelementptr i8, ptr %0, i64 %46
  %61 = getelementptr i8, ptr %14, i64 %46
  %62 = and i64 %38, 24
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %43, %59
  %65 = phi i64 [ %46, %59 ], [ 0, %43 ]
  %66 = and i64 %38, -8
  %67 = getelementptr i8, ptr %14, i64 %66
  %68 = getelementptr i8, ptr %0, i64 %66
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i64 [ %65, %64 ], [ %74, %69 ]
  %71 = getelementptr i8, ptr %14, i64 %70
  %72 = getelementptr i8, ptr %0, i64 %70
  %73 = load <8 x i8>, ptr %71, align 1, !tbaa !9
  store <8 x i8> %73, ptr %72, align 1, !tbaa !9
  %74 = add nuw i64 %70, 8
  %75 = icmp eq i64 %74, %66
  br i1 %75, label %76, label %69, !llvm.loop !203

76:                                               ; preds = %69
  %77 = icmp eq i64 %38, %66
  br i1 %77, label %185, label %78

78:                                               ; preds = %34, %59, %76
  %79 = phi ptr [ %14, %34 ], [ %61, %59 ], [ %67, %76 ]
  %80 = phi ptr [ %0, %34 ], [ %60, %59 ], [ %68, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %78 ]
  %83 = phi ptr [ %86, %81 ], [ %80, %78 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  %85 = load i8, ptr %82, align 1, !tbaa !9
  %86 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %85, ptr %83, align 1, !tbaa !9
  %87 = icmp ult ptr %86, %10
  br i1 %87, label %81, label %185, !llvm.loop !204

88:                                               ; preds = %30
  %89 = icmp ugt ptr %10, %20
  br i1 %89, label %105, label %90

90:                                               ; preds = %88
  %91 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %91, ptr %0, align 1, !tbaa !9
  %92 = icmp ult i64 %9, 17
  br i1 %92, label %185, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %0, i64 16
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi ptr [ %94, %93 ], [ %103, %95 ]
  %97 = phi ptr [ %14, %93 ], [ %101, %95 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 16
  %99 = load <2 x i64>, ptr %98, align 1, !tbaa !9
  store <2 x i64> %99, ptr %96, align 1, !tbaa !9
  %100 = getelementptr inbounds i8, ptr %96, i64 16
  %101 = getelementptr inbounds i8, ptr %97, i64 32
  %102 = load <2 x i64>, ptr %101, align 1, !tbaa !9
  store <2 x i64> %102, ptr %100, align 1, !tbaa !9
  %103 = getelementptr inbounds i8, ptr %96, i64 32
  %104 = icmp ult ptr %103, %10
  br i1 %104, label %95, label %185, !llvm.loop !105

105:                                              ; preds = %88
  %106 = icmp ult ptr %20, %0
  br i1 %106, label %127, label %107

107:                                              ; preds = %105
  %108 = ptrtoint ptr %20 to i64
  %109 = sub i64 %108, %22
  %110 = getelementptr inbounds i8, ptr %0, i64 %109
  %111 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %111, ptr %0, align 1, !tbaa !9
  %112 = icmp ult i64 %109, 17
  br i1 %112, label %125, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds i8, ptr %0, i64 16
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi ptr [ %114, %113 ], [ %123, %115 ]
  %117 = phi ptr [ %14, %113 ], [ %121, %115 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 16
  %119 = load <2 x i64>, ptr %118, align 1, !tbaa !9
  store <2 x i64> %119, ptr %116, align 1, !tbaa !9
  %120 = getelementptr inbounds i8, ptr %116, i64 16
  %121 = getelementptr inbounds i8, ptr %117, i64 32
  %122 = load <2 x i64>, ptr %121, align 1, !tbaa !9
  store <2 x i64> %122, ptr %120, align 1, !tbaa !9
  %123 = getelementptr inbounds i8, ptr %116, i64 32
  %124 = icmp ult ptr %123, %20
  br i1 %124, label %115, label %125, !llvm.loop !105

125:                                              ; preds = %115, %107
  %126 = getelementptr i8, ptr %14, i64 %109
  br label %127

127:                                              ; preds = %125, %105
  %128 = phi ptr [ %0, %105 ], [ %110, %125 ]
  %129 = phi ptr [ %14, %105 ], [ %126, %125 ]
  %130 = icmp ult ptr %128, %10
  br i1 %130, label %131, label %185

131:                                              ; preds = %127
  %132 = add i64 %9, %22
  %133 = add i64 %21, -32
  %134 = tail call i64 @llvm.umax.i64(i64 %22, i64 %133)
  %135 = sub i64 %132, %134
  %136 = icmp ult i64 %135, 8
  %137 = sub i64 %22, %27
  %138 = icmp ult i64 %137, 32
  %139 = or i1 %136, %138
  br i1 %139, label %175, label %140

140:                                              ; preds = %131
  %141 = icmp ult i64 %135, 32
  br i1 %141, label %161, label %142

142:                                              ; preds = %140
  %143 = and i64 %135, -32
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i64 [ 0, %142 ], [ %152, %144 ]
  %146 = getelementptr i8, ptr %129, i64 %145
  %147 = getelementptr i8, ptr %128, i64 %145
  %148 = getelementptr i8, ptr %146, i64 16
  %149 = load <16 x i8>, ptr %146, align 1, !tbaa !9
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !9
  %151 = getelementptr i8, ptr %147, i64 16
  store <16 x i8> %149, ptr %147, align 1, !tbaa !9
  store <16 x i8> %150, ptr %151, align 1, !tbaa !9
  %152 = add nuw i64 %145, 32
  %153 = icmp eq i64 %152, %143
  br i1 %153, label %154, label %144, !llvm.loop !205

154:                                              ; preds = %144
  %155 = icmp eq i64 %135, %143
  br i1 %155, label %185, label %156

156:                                              ; preds = %154
  %157 = getelementptr i8, ptr %128, i64 %143
  %158 = getelementptr i8, ptr %129, i64 %143
  %159 = and i64 %135, 24
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %140, %156
  %162 = phi i64 [ %143, %156 ], [ 0, %140 ]
  %163 = and i64 %135, -8
  %164 = getelementptr i8, ptr %129, i64 %163
  %165 = getelementptr i8, ptr %128, i64 %163
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i64 [ %162, %161 ], [ %171, %166 ]
  %168 = getelementptr i8, ptr %129, i64 %167
  %169 = getelementptr i8, ptr %128, i64 %167
  %170 = load <8 x i8>, ptr %168, align 1, !tbaa !9
  store <8 x i8> %170, ptr %169, align 1, !tbaa !9
  %171 = add nuw i64 %167, 8
  %172 = icmp eq i64 %171, %163
  br i1 %172, label %173, label %166, !llvm.loop !206

173:                                              ; preds = %166
  %174 = icmp eq i64 %135, %163
  br i1 %174, label %185, label %175

175:                                              ; preds = %131, %156, %173
  %176 = phi ptr [ %129, %131 ], [ %158, %156 ], [ %164, %173 ]
  %177 = phi ptr [ %128, %131 ], [ %157, %156 ], [ %165, %173 ]
  br label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %181, %178 ], [ %176, %175 ]
  %180 = phi ptr [ %183, %178 ], [ %177, %175 ]
  %181 = getelementptr inbounds i8, ptr %179, i64 1
  %182 = load i8, ptr %179, align 1, !tbaa !9
  %183 = getelementptr inbounds i8, ptr %180, i64 1
  store i8 %182, ptr %180, align 1, !tbaa !9
  %184 = icmp ult ptr %183, %10
  br i1 %184, label %178, label %185, !llvm.loop !207

185:                                              ; preds = %95, %178, %81, %154, %173, %57, %76, %32, %90, %127
  store ptr %15, ptr %3, align 8, !tbaa !38
  %186 = ptrtoint ptr %10 to i64
  %187 = ptrtoint ptr %5 to i64
  %188 = sub i64 %186, %187
  %189 = icmp ugt i64 %17, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = ptrtoint ptr %6 to i64
  %192 = sub i64 %186, %191
  %193 = icmp ugt i64 %17, %192
  br i1 %193, label %209, label %194

194:                                              ; preds = %190
  %195 = ptrtoint ptr %19 to i64
  %196 = sub i64 %195, %187
  %197 = getelementptr inbounds i8, ptr %7, i64 %196
  %198 = getelementptr inbounds i8, ptr %197, i64 %12
  %199 = icmp ugt ptr %198, %7
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %197, i64 %12, i1 false)
  br label %209

201:                                              ; preds = %194
  %202 = sub i64 0, %196
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %197, i64 %202, i1 false)
  %203 = getelementptr inbounds i8, ptr %10, i64 %202
  %204 = add i64 %196, %12
  br label %205

205:                                              ; preds = %201, %185
  %206 = phi i64 [ %204, %201 ], [ %12, %185 ]
  %207 = phi ptr [ %5, %201 ], [ %19, %185 ]
  %208 = phi ptr [ %203, %201 ], [ %10, %185 ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %208, ptr noundef nonnull %20, ptr noundef %207, i64 noundef %206, i32 noundef 1)
  br label %209

209:                                              ; preds = %190, %25, %8, %205, %200
  %210 = phi i64 [ %13, %200 ], [ %13, %205 ], [ -70, %8 ], [ -20, %25 ], [ -20, %190 ]
  ret i64 %210
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_safecopy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #14 {
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = ptrtoint ptr %2 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds i8, ptr %0, i64 %3
  %14 = icmp ult i64 %3, 8
  br i1 %14, label %15, label %71

15:                                               ; preds = %5
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %299, label %17

17:                                               ; preds = %15
  %18 = add i64 %6, %3
  %19 = add i64 %6, 1
  %20 = tail call i64 @llvm.umax.i64(i64 %18, i64 %19)
  %21 = sub i64 %20, %6
  %22 = icmp ult i64 %21, 8
  %23 = sub i64 %8, %7
  %24 = icmp ult i64 %23, 32
  %25 = or i1 %22, %24
  br i1 %25, label %61, label %26

26:                                               ; preds = %17
  %27 = icmp ult i64 %21, 32
  br i1 %27, label %47, label %28

28:                                               ; preds = %26
  %29 = and i64 %21, -32
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %38, %30 ]
  %32 = getelementptr i8, ptr %2, i64 %31
  %33 = getelementptr i8, ptr %0, i64 %31
  %34 = getelementptr i8, ptr %32, i64 16
  %35 = load <16 x i8>, ptr %32, align 1, !tbaa !9
  %36 = load <16 x i8>, ptr %34, align 1, !tbaa !9
  %37 = getelementptr i8, ptr %33, i64 16
  store <16 x i8> %35, ptr %33, align 1, !tbaa !9
  store <16 x i8> %36, ptr %37, align 1, !tbaa !9
  %38 = add nuw i64 %31, 32
  %39 = icmp eq i64 %38, %29
  br i1 %39, label %40, label %30, !llvm.loop !208

40:                                               ; preds = %30
  %41 = icmp eq i64 %21, %29
  br i1 %41, label %299, label %42

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %0, i64 %29
  %44 = getelementptr i8, ptr %2, i64 %29
  %45 = and i64 %21, 24
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %26, %42
  %48 = phi i64 [ %29, %42 ], [ 0, %26 ]
  %49 = and i64 %21, -8
  %50 = getelementptr i8, ptr %2, i64 %49
  %51 = getelementptr i8, ptr %0, i64 %49
  br label %52

52:                                               ; preds = %52, %47
  %53 = phi i64 [ %48, %47 ], [ %57, %52 ]
  %54 = getelementptr i8, ptr %2, i64 %53
  %55 = getelementptr i8, ptr %0, i64 %53
  %56 = load <8 x i8>, ptr %54, align 1, !tbaa !9
  store <8 x i8> %56, ptr %55, align 1, !tbaa !9
  %57 = add nuw i64 %53, 8
  %58 = icmp eq i64 %57, %49
  br i1 %58, label %59, label %52, !llvm.loop !209

59:                                               ; preds = %52
  %60 = icmp eq i64 %21, %49
  br i1 %60, label %299, label %61

61:                                               ; preds = %17, %42, %59
  %62 = phi ptr [ %2, %17 ], [ %44, %42 ], [ %50, %59 ]
  %63 = phi ptr [ %0, %17 ], [ %43, %42 ], [ %51, %59 ]
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %67, %64 ], [ %62, %61 ]
  %66 = phi ptr [ %69, %64 ], [ %63, %61 ]
  %67 = getelementptr inbounds i8, ptr %65, i64 1
  %68 = load i8, ptr %65, align 1, !tbaa !9
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  store i8 %68, ptr %66, align 1, !tbaa !9
  %70 = icmp ult ptr %69, %13
  br i1 %70, label %64, label %299, !llvm.loop !210

71:                                               ; preds = %5
  %72 = icmp eq i32 %4, 1
  br i1 %72, label %73, label %104

73:                                               ; preds = %71
  %74 = icmp ult i64 %12, 8
  br i1 %74, label %75, label %97

75:                                               ; preds = %73
  %76 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %12
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = load i8, ptr %2, align 1, !tbaa !9
  store i8 %78, ptr %0, align 1, !tbaa !9
  %79 = getelementptr inbounds i8, ptr %2, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !9
  %81 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %80, ptr %81, align 1, !tbaa !9
  %82 = getelementptr inbounds i8, ptr %2, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %83, ptr %84, align 1, !tbaa !9
  %85 = getelementptr inbounds i8, ptr %2, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %86, ptr %87, align 1, !tbaa !9
  %88 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %12
  %89 = load i32, ptr %88, align 4, !tbaa !28
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %2, i64 %90
  %92 = getelementptr inbounds i8, ptr %0, i64 4
  %93 = load i32, ptr %91, align 1
  store i32 %93, ptr %92, align 1
  %94 = sext i32 %77 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr %91, i64 %95
  br label %99

97:                                               ; preds = %73
  %98 = load i64, ptr %2, align 1
  store i64 %98, ptr %0, align 1
  br label %99

99:                                               ; preds = %75, %97
  %100 = phi ptr [ %96, %75 ], [ %2, %97 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 8
  %102 = getelementptr inbounds i8, ptr %0, i64 8
  %103 = add i64 %3, -8
  br label %104

104:                                              ; preds = %99, %71
  %105 = phi ptr [ %102, %99 ], [ %0, %71 ]
  %106 = phi ptr [ %101, %99 ], [ %2, %71 ]
  %107 = phi i64 [ %103, %99 ], [ %3, %71 ]
  %108 = ptrtoint ptr %105 to i64
  %109 = ptrtoint ptr %106 to i64
  %110 = icmp ugt ptr %13, %1
  br i1 %110, label %174, label %111

111:                                              ; preds = %104
  %112 = ptrtoint ptr %105 to i64
  %113 = ptrtoint ptr %106 to i64
  %114 = sub i64 %112, %113
  %115 = getelementptr inbounds i8, ptr %105, i64 %107
  %116 = icmp slt i64 %114, 16
  %117 = and i1 %72, %116
  br i1 %117, label %118, label %159

118:                                              ; preds = %111
  %119 = add i64 %107, %112
  %120 = add i64 %112, 8
  %121 = tail call i64 @llvm.umax.i64(i64 %119, i64 %120)
  %122 = xor i64 %112, -1
  %123 = add i64 %121, %122
  %124 = lshr i64 %123, 3
  %125 = add nuw nsw i64 %124, 1
  %126 = icmp ult i64 %123, 24
  %127 = icmp ult i64 %114, 32
  %128 = or i1 %126, %127
  br i1 %128, label %149, label %129

129:                                              ; preds = %118
  %130 = and i64 %125, 4611686018427387900
  %131 = shl i64 %130, 3
  %132 = getelementptr i8, ptr %105, i64 %131
  %133 = shl i64 %130, 3
  %134 = getelementptr i8, ptr %106, i64 %133
  br label %135

135:                                              ; preds = %135, %129
  %136 = phi i64 [ 0, %129 ], [ %145, %135 ]
  %137 = shl i64 %136, 3
  %138 = getelementptr i8, ptr %105, i64 %137
  %139 = shl i64 %136, 3
  %140 = getelementptr i8, ptr %106, i64 %139
  %141 = getelementptr i64, ptr %140, i64 2
  %142 = load <2 x i64>, ptr %140, align 1
  %143 = load <2 x i64>, ptr %141, align 1
  %144 = getelementptr i64, ptr %138, i64 2
  store <2 x i64> %142, ptr %138, align 1
  store <2 x i64> %143, ptr %144, align 1
  %145 = add nuw i64 %136, 4
  %146 = icmp eq i64 %145, %130
  br i1 %146, label %147, label %135, !llvm.loop !211

147:                                              ; preds = %135
  %148 = icmp eq i64 %125, %130
  br i1 %148, label %299, label %149

149:                                              ; preds = %118, %147
  %150 = phi ptr [ %105, %118 ], [ %132, %147 ]
  %151 = phi ptr [ %106, %118 ], [ %134, %147 ]
  br label %152

152:                                              ; preds = %149, %152
  %153 = phi ptr [ %156, %152 ], [ %150, %149 ]
  %154 = phi ptr [ %157, %152 ], [ %151, %149 ]
  %155 = load i64, ptr %154, align 1
  store i64 %155, ptr %153, align 1
  %156 = getelementptr inbounds i8, ptr %153, i64 8
  %157 = getelementptr inbounds i8, ptr %154, i64 8
  %158 = icmp ult ptr %156, %115
  br i1 %158, label %152, label %299, !llvm.loop !212

159:                                              ; preds = %111
  %160 = load <2 x i64>, ptr %106, align 1, !tbaa !9
  store <2 x i64> %160, ptr %105, align 1, !tbaa !9
  %161 = icmp ult i64 %107, 17
  br i1 %161, label %299, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds i8, ptr %105, i64 16
  br label %164

164:                                              ; preds = %164, %162
  %165 = phi ptr [ %163, %162 ], [ %172, %164 ]
  %166 = phi ptr [ %106, %162 ], [ %170, %164 ]
  %167 = getelementptr inbounds i8, ptr %166, i64 16
  %168 = load <2 x i64>, ptr %167, align 1, !tbaa !9
  store <2 x i64> %168, ptr %165, align 1, !tbaa !9
  %169 = getelementptr inbounds i8, ptr %165, i64 16
  %170 = getelementptr inbounds i8, ptr %166, i64 32
  %171 = load <2 x i64>, ptr %170, align 1, !tbaa !9
  store <2 x i64> %171, ptr %169, align 1, !tbaa !9
  %172 = getelementptr inbounds i8, ptr %165, i64 32
  %173 = icmp ult ptr %172, %115
  br i1 %173, label %164, label %299, !llvm.loop !105

174:                                              ; preds = %104
  %175 = icmp ugt ptr %105, %1
  br i1 %175, label %242, label %176

176:                                              ; preds = %174
  %177 = ptrtoint ptr %1 to i64
  %178 = ptrtoint ptr %105 to i64
  %179 = sub i64 %177, %178
  %180 = ptrtoint ptr %106 to i64
  %181 = sub i64 %178, %180
  %182 = getelementptr inbounds i8, ptr %105, i64 %179
  %183 = icmp slt i64 %181, 16
  %184 = and i1 %72, %183
  br i1 %184, label %185, label %225

185:                                              ; preds = %176
  %186 = add i64 %178, 8
  %187 = tail call i64 @llvm.umax.i64(i64 %177, i64 %186)
  %188 = xor i64 %178, -1
  %189 = add i64 %187, %188
  %190 = lshr i64 %189, 3
  %191 = add nuw nsw i64 %190, 1
  %192 = icmp ult i64 %189, 24
  %193 = icmp ult i64 %181, 32
  %194 = or i1 %192, %193
  br i1 %194, label %215, label %195

195:                                              ; preds = %185
  %196 = and i64 %191, 4611686018427387900
  %197 = shl i64 %196, 3
  %198 = getelementptr i8, ptr %105, i64 %197
  %199 = shl i64 %196, 3
  %200 = getelementptr i8, ptr %106, i64 %199
  br label %201

201:                                              ; preds = %201, %195
  %202 = phi i64 [ 0, %195 ], [ %211, %201 ]
  %203 = shl i64 %202, 3
  %204 = getelementptr i8, ptr %105, i64 %203
  %205 = shl i64 %202, 3
  %206 = getelementptr i8, ptr %106, i64 %205
  %207 = getelementptr i64, ptr %206, i64 2
  %208 = load <2 x i64>, ptr %206, align 1
  %209 = load <2 x i64>, ptr %207, align 1
  %210 = getelementptr i64, ptr %204, i64 2
  store <2 x i64> %208, ptr %204, align 1
  store <2 x i64> %209, ptr %210, align 1
  %211 = add nuw i64 %202, 4
  %212 = icmp eq i64 %211, %196
  br i1 %212, label %213, label %201, !llvm.loop !213

213:                                              ; preds = %201
  %214 = icmp eq i64 %191, %196
  br i1 %214, label %240, label %215

215:                                              ; preds = %185, %213
  %216 = phi ptr [ %105, %185 ], [ %198, %213 ]
  %217 = phi ptr [ %106, %185 ], [ %200, %213 ]
  br label %218

218:                                              ; preds = %215, %218
  %219 = phi ptr [ %222, %218 ], [ %216, %215 ]
  %220 = phi ptr [ %223, %218 ], [ %217, %215 ]
  %221 = load i64, ptr %220, align 1
  store i64 %221, ptr %219, align 1
  %222 = getelementptr inbounds i8, ptr %219, i64 8
  %223 = getelementptr inbounds i8, ptr %220, i64 8
  %224 = icmp ult ptr %222, %182
  br i1 %224, label %218, label %240, !llvm.loop !214

225:                                              ; preds = %176
  %226 = load <2 x i64>, ptr %106, align 1, !tbaa !9
  store <2 x i64> %226, ptr %105, align 1, !tbaa !9
  %227 = icmp ult i64 %179, 17
  br i1 %227, label %240, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds i8, ptr %105, i64 16
  br label %230

230:                                              ; preds = %230, %228
  %231 = phi ptr [ %229, %228 ], [ %238, %230 ]
  %232 = phi ptr [ %106, %228 ], [ %236, %230 ]
  %233 = getelementptr inbounds i8, ptr %232, i64 16
  %234 = load <2 x i64>, ptr %233, align 1, !tbaa !9
  store <2 x i64> %234, ptr %231, align 1, !tbaa !9
  %235 = getelementptr inbounds i8, ptr %231, i64 16
  %236 = getelementptr inbounds i8, ptr %232, i64 32
  %237 = load <2 x i64>, ptr %236, align 1, !tbaa !9
  store <2 x i64> %237, ptr %235, align 1, !tbaa !9
  %238 = getelementptr inbounds i8, ptr %231, i64 32
  %239 = icmp ult ptr %238, %182
  br i1 %239, label %230, label %240, !llvm.loop !105

240:                                              ; preds = %230, %218, %213, %225
  %241 = getelementptr i8, ptr %106, i64 %179
  br label %242

242:                                              ; preds = %240, %174
  %243 = phi ptr [ %105, %174 ], [ %182, %240 ]
  %244 = phi ptr [ %106, %174 ], [ %241, %240 ]
  %245 = icmp ult ptr %243, %13
  br i1 %245, label %246, label %299

246:                                              ; preds = %242
  %247 = add i64 %10, %3
  %248 = tail call i64 @llvm.umax.i64(i64 %108, i64 %9)
  %249 = sub i64 %247, %248
  %250 = icmp ult i64 %249, 8
  %251 = sub i64 %108, %109
  %252 = icmp ult i64 %251, 32
  %253 = select i1 %250, i1 true, i1 %252
  br i1 %253, label %289, label %254

254:                                              ; preds = %246
  %255 = icmp ult i64 %249, 32
  br i1 %255, label %275, label %256

256:                                              ; preds = %254
  %257 = and i64 %249, -32
  br label %258

258:                                              ; preds = %258, %256
  %259 = phi i64 [ 0, %256 ], [ %266, %258 ]
  %260 = getelementptr i8, ptr %244, i64 %259
  %261 = getelementptr i8, ptr %243, i64 %259
  %262 = getelementptr i8, ptr %260, i64 16
  %263 = load <16 x i8>, ptr %260, align 1, !tbaa !9
  %264 = load <16 x i8>, ptr %262, align 1, !tbaa !9
  %265 = getelementptr i8, ptr %261, i64 16
  store <16 x i8> %263, ptr %261, align 1, !tbaa !9
  store <16 x i8> %264, ptr %265, align 1, !tbaa !9
  %266 = add nuw i64 %259, 32
  %267 = icmp eq i64 %266, %257
  br i1 %267, label %268, label %258, !llvm.loop !215

268:                                              ; preds = %258
  %269 = icmp eq i64 %249, %257
  br i1 %269, label %299, label %270

270:                                              ; preds = %268
  %271 = getelementptr i8, ptr %243, i64 %257
  %272 = getelementptr i8, ptr %244, i64 %257
  %273 = and i64 %249, 24
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %254, %270
  %276 = phi i64 [ %257, %270 ], [ 0, %254 ]
  %277 = and i64 %249, -8
  %278 = getelementptr i8, ptr %244, i64 %277
  %279 = getelementptr i8, ptr %243, i64 %277
  br label %280

280:                                              ; preds = %280, %275
  %281 = phi i64 [ %276, %275 ], [ %285, %280 ]
  %282 = getelementptr i8, ptr %244, i64 %281
  %283 = getelementptr i8, ptr %243, i64 %281
  %284 = load <8 x i8>, ptr %282, align 1, !tbaa !9
  store <8 x i8> %284, ptr %283, align 1, !tbaa !9
  %285 = add nuw i64 %281, 8
  %286 = icmp eq i64 %285, %277
  br i1 %286, label %287, label %280, !llvm.loop !216

287:                                              ; preds = %280
  %288 = icmp eq i64 %249, %277
  br i1 %288, label %299, label %289

289:                                              ; preds = %246, %270, %287
  %290 = phi ptr [ %244, %246 ], [ %272, %270 ], [ %278, %287 ]
  %291 = phi ptr [ %243, %246 ], [ %271, %270 ], [ %279, %287 ]
  br label %292

292:                                              ; preds = %289, %292
  %293 = phi ptr [ %295, %292 ], [ %290, %289 ]
  %294 = phi ptr [ %297, %292 ], [ %291, %289 ]
  %295 = getelementptr inbounds i8, ptr %293, i64 1
  %296 = load i8, ptr %293, align 1, !tbaa !9
  %297 = getelementptr inbounds i8, ptr %294, i64 1
  store i8 %296, ptr %294, align 1, !tbaa !9
  %298 = icmp ult ptr %297, %13
  br i1 %298, label %292, label %299, !llvm.loop !217

299:                                              ; preds = %164, %152, %292, %64, %147, %268, %287, %40, %59, %242, %15, %159
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly byval(%struct.seq_t) align 8 %3, ptr nocapture noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readonly %8) unnamed_addr #13 {
  %10 = load i64, ptr %3, align 8, !tbaa !109
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = getelementptr inbounds %struct.seq_t, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !137
  %14 = add i64 %13, %10
  %15 = load ptr, ptr %4, align 8, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %15, i64 %10
  %17 = getelementptr inbounds %struct.seq_t, ptr %3, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !136
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i8, ptr %11, i64 %19
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %14, %23
  br i1 %24, label %202, label %25

25:                                               ; preds = %9
  %26 = ptrtoint ptr %5 to i64
  %27 = ptrtoint ptr %15 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %202, label %30

30:                                               ; preds = %25
  %31 = icmp ult ptr %15, %0
  %32 = icmp ugt ptr %16, %0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %202, label %34

34:                                               ; preds = %30
  %35 = sub i64 %22, %27
  %36 = icmp ult i64 %10, 8
  %37 = icmp sgt i64 %35, -8
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = icmp sgt i64 %10, 0
  br i1 %40, label %41, label %178

41:                                               ; preds = %39
  %42 = add i64 %10, %22
  %43 = add i64 %22, 1
  %44 = tail call i64 @llvm.umax.i64(i64 %42, i64 %43)
  %45 = sub i64 %44, %22
  %46 = icmp ult i64 %45, 8
  %47 = icmp ult i64 %35, 32
  %48 = or i1 %46, %47
  br i1 %48, label %84, label %49

49:                                               ; preds = %41
  %50 = icmp ult i64 %45, 32
  br i1 %50, label %70, label %51

51:                                               ; preds = %49
  %52 = and i64 %45, -32
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i64 [ 0, %51 ], [ %61, %53 ]
  %55 = getelementptr i8, ptr %0, i64 %54
  %56 = getelementptr i8, ptr %15, i64 %54
  %57 = getelementptr i8, ptr %56, i64 16
  %58 = load <16 x i8>, ptr %56, align 1, !tbaa !9
  %59 = load <16 x i8>, ptr %57, align 1, !tbaa !9
  %60 = getelementptr i8, ptr %55, i64 16
  store <16 x i8> %58, ptr %55, align 1, !tbaa !9
  store <16 x i8> %59, ptr %60, align 1, !tbaa !9
  %61 = add nuw i64 %54, 32
  %62 = icmp eq i64 %61, %52
  br i1 %62, label %63, label %53, !llvm.loop !218

63:                                               ; preds = %53
  %64 = icmp eq i64 %45, %52
  br i1 %64, label %178, label %65

65:                                               ; preds = %63
  %66 = getelementptr i8, ptr %15, i64 %52
  %67 = getelementptr i8, ptr %0, i64 %52
  %68 = and i64 %45, 24
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %49, %65
  %71 = phi i64 [ %52, %65 ], [ 0, %49 ]
  %72 = and i64 %45, -8
  %73 = getelementptr i8, ptr %0, i64 %72
  %74 = getelementptr i8, ptr %15, i64 %72
  br label %75

75:                                               ; preds = %75, %70
  %76 = phi i64 [ %71, %70 ], [ %80, %75 ]
  %77 = getelementptr i8, ptr %0, i64 %76
  %78 = getelementptr i8, ptr %15, i64 %76
  %79 = load <8 x i8>, ptr %78, align 1, !tbaa !9
  store <8 x i8> %79, ptr %77, align 1, !tbaa !9
  %80 = add nuw i64 %76, 8
  %81 = icmp eq i64 %80, %72
  br i1 %81, label %82, label %75, !llvm.loop !219

82:                                               ; preds = %75
  %83 = icmp eq i64 %45, %72
  br i1 %83, label %178, label %84

84:                                               ; preds = %41, %65, %82
  %85 = phi ptr [ %0, %41 ], [ %67, %65 ], [ %73, %82 ]
  %86 = phi ptr [ %15, %41 ], [ %66, %65 ], [ %74, %82 ]
  br label %87

87:                                               ; preds = %84, %87
  %88 = phi ptr [ %92, %87 ], [ %85, %84 ]
  %89 = phi ptr [ %90, %87 ], [ %86, %84 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %89, align 1, !tbaa !9
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  store i8 %91, ptr %88, align 1, !tbaa !9
  %93 = icmp ult ptr %92, %11
  br i1 %93, label %87, label %178, !llvm.loop !220

94:                                               ; preds = %34
  %95 = getelementptr inbounds i8, ptr %11, i64 -32
  %96 = icmp uge ptr %95, %0
  %97 = icmp ult i64 %35, -16
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = ptrtoint ptr %95 to i64
  %101 = sub i64 %100, %22
  %102 = load <2 x i64>, ptr %15, align 1, !tbaa !9
  store <2 x i64> %102, ptr %0, align 1, !tbaa !9
  %103 = icmp ult i64 %101, 17
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds i8, ptr %0, i64 16
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi ptr [ %105, %104 ], [ %114, %106 ]
  %108 = phi ptr [ %15, %104 ], [ %112, %106 ]
  %109 = getelementptr inbounds i8, ptr %108, i64 16
  %110 = load <2 x i64>, ptr %109, align 1, !tbaa !9
  store <2 x i64> %110, ptr %107, align 1, !tbaa !9
  %111 = getelementptr inbounds i8, ptr %107, i64 16
  %112 = getelementptr inbounds i8, ptr %108, i64 32
  %113 = load <2 x i64>, ptr %112, align 1, !tbaa !9
  store <2 x i64> %113, ptr %111, align 1, !tbaa !9
  %114 = getelementptr inbounds i8, ptr %107, i64 32
  %115 = icmp ult ptr %114, %95
  br i1 %115, label %106, label %116, !llvm.loop !105

116:                                              ; preds = %106, %99
  %117 = getelementptr inbounds i8, ptr %15, i64 %101
  br label %120

118:                                              ; preds = %94
  %119 = icmp sgt i64 %10, 0
  br i1 %119, label %120, label %178

120:                                              ; preds = %118, %116
  %121 = phi ptr [ %95, %116 ], [ %0, %118 ]
  %122 = phi ptr [ %117, %116 ], [ %15, %118 ]
  %123 = ptrtoint ptr %121 to i64
  %124 = add i64 %10, %22
  %125 = add nuw i64 %123, 1
  %126 = tail call i64 @llvm.umax.i64(i64 %124, i64 %125)
  %127 = sub i64 %126, %123
  %128 = icmp ult i64 %127, 8
  %129 = ptrtoint ptr %122 to i64
  %130 = sub i64 %123, %129
  %131 = icmp ult i64 %130, 32
  %132 = select i1 %128, i1 true, i1 %131
  br i1 %132, label %168, label %133

133:                                              ; preds = %120
  %134 = icmp ult i64 %127, 32
  br i1 %134, label %154, label %135

135:                                              ; preds = %133
  %136 = and i64 %127, -32
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi i64 [ 0, %135 ], [ %145, %137 ]
  %139 = getelementptr i8, ptr %121, i64 %138
  %140 = getelementptr i8, ptr %122, i64 %138
  %141 = getelementptr i8, ptr %140, i64 16
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !9
  %143 = load <16 x i8>, ptr %141, align 1, !tbaa !9
  %144 = getelementptr i8, ptr %139, i64 16
  store <16 x i8> %142, ptr %139, align 1, !tbaa !9
  store <16 x i8> %143, ptr %144, align 1, !tbaa !9
  %145 = add nuw i64 %138, 32
  %146 = icmp eq i64 %145, %136
  br i1 %146, label %147, label %137, !llvm.loop !221

147:                                              ; preds = %137
  %148 = icmp eq i64 %127, %136
  br i1 %148, label %178, label %149

149:                                              ; preds = %147
  %150 = getelementptr i8, ptr %122, i64 %136
  %151 = getelementptr i8, ptr %121, i64 %136
  %152 = and i64 %127, 24
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %133, %149
  %155 = phi i64 [ %136, %149 ], [ 0, %133 ]
  %156 = and i64 %127, -8
  %157 = getelementptr i8, ptr %121, i64 %156
  %158 = getelementptr i8, ptr %122, i64 %156
  br label %159

159:                                              ; preds = %159, %154
  %160 = phi i64 [ %155, %154 ], [ %164, %159 ]
  %161 = getelementptr i8, ptr %121, i64 %160
  %162 = getelementptr i8, ptr %122, i64 %160
  %163 = load <8 x i8>, ptr %162, align 1, !tbaa !9
  store <8 x i8> %163, ptr %161, align 1, !tbaa !9
  %164 = add nuw i64 %160, 8
  %165 = icmp eq i64 %164, %156
  br i1 %165, label %166, label %159, !llvm.loop !222

166:                                              ; preds = %159
  %167 = icmp eq i64 %127, %156
  br i1 %167, label %178, label %168

168:                                              ; preds = %120, %149, %166
  %169 = phi ptr [ %121, %120 ], [ %151, %149 ], [ %157, %166 ]
  %170 = phi ptr [ %122, %120 ], [ %150, %149 ], [ %158, %166 ]
  br label %171

171:                                              ; preds = %168, %171
  %172 = phi ptr [ %176, %171 ], [ %169, %168 ]
  %173 = phi ptr [ %174, %171 ], [ %170, %168 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load i8, ptr %173, align 1, !tbaa !9
  %176 = getelementptr inbounds i8, ptr %172, i64 1
  store i8 %175, ptr %172, align 1, !tbaa !9
  %177 = icmp ult ptr %176, %11
  br i1 %177, label %171, label %178, !llvm.loop !223

178:                                              ; preds = %171, %87, %147, %166, %63, %82, %39, %118
  store ptr %16, ptr %4, align 8, !tbaa !38
  %179 = ptrtoint ptr %11 to i64
  %180 = ptrtoint ptr %6 to i64
  %181 = sub i64 %179, %180
  %182 = icmp ugt i64 %18, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %178
  %184 = ptrtoint ptr %7 to i64
  %185 = sub i64 %179, %184
  %186 = icmp ugt i64 %18, %185
  br i1 %186, label %202, label %187

187:                                              ; preds = %183
  %188 = ptrtoint ptr %20 to i64
  %189 = sub i64 %188, %180
  %190 = getelementptr inbounds i8, ptr %8, i64 %189
  %191 = getelementptr inbounds i8, ptr %190, i64 %13
  %192 = icmp ugt ptr %191, %8
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %190, i64 %13, i1 false)
  br label %202

194:                                              ; preds = %187
  %195 = sub i64 0, %189
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %190, i64 %195, i1 false)
  %196 = getelementptr inbounds i8, ptr %11, i64 %195
  %197 = add i64 %189, %13
  br label %198

198:                                              ; preds = %194, %178
  %199 = phi i64 [ %197, %194 ], [ %13, %178 ]
  %200 = phi ptr [ %196, %194 ], [ %11, %178 ]
  %201 = phi ptr [ %6, %194 ], [ %20, %178 ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %200, ptr noundef %2, ptr noundef %201, i64 noundef %199, i32 noundef 1)
  br label %202

202:                                              ; preds = %183, %30, %25, %9, %198, %193
  %203 = phi i64 [ %14, %193 ], [ %14, %198 ], [ -70, %9 ], [ -20, %25 ], [ -70, %30 ], [ -20, %183 ]
  ret i64 %203
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #12 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca %struct.seq_t, align 8
  %9 = alloca %struct.seq_t, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.seqState_t, align 8
  %12 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  store ptr %15, ptr %10, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 54
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = icmp eq i32 %5, 0
  br i1 %24, label %1493, label %25

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %11) #16
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %26, align 4, !tbaa !62
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 0
  %28 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 0
  %29 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 1
  %30 = load <2 x i32>, ptr %27, align 4, !tbaa !28
  %31 = zext <2 x i32> %30 to <2 x i64>
  store <2 x i64> %31, ptr %28, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  %33 = load i32, ptr %32, align 4, !tbaa !28
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 2
  store i64 %34, ptr %35, align 8, !tbaa !44
  %36 = icmp eq i64 %4, 0
  br i1 %36, label %1491, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 3
  store ptr %3, ptr %38, align 8, !tbaa !72
  %39 = getelementptr inbounds i8, ptr %3, i64 8
  %40 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !74
  %41 = icmp ugt i64 %4, 7
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = add nsw i64 %4, -8
  %44 = getelementptr inbounds i8, ptr %3, i64 %43
  %45 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !75
  %46 = load i64, ptr %44, align 1
  store i64 %46, ptr %11, align 8, !tbaa !76
  %47 = icmp ult i64 %46, 72057594037927936
  br i1 %47, label %1491, label %106

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  store ptr %3, ptr %49, align 8, !tbaa !75
  %50 = load i8, ptr %3, align 1, !tbaa !9
  %51 = zext i8 %50 to i64
  store i64 %51, ptr %11, align 8, !tbaa !76
  switch i64 %4, label %93 [
    i64 7, label %52
    i64 6, label %58
    i64 5, label %65
    i64 4, label %72
    i64 3, label %79
    i64 2, label %86
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %3, i64 6
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 48
  %57 = or disjoint i64 %56, %51
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi i64 [ %51, %48 ], [ %57, %52 ]
  %60 = getelementptr inbounds i8, ptr %3, i64 5
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 40
  %64 = add nuw nsw i64 %63, %59
  br label %65

65:                                               ; preds = %58, %48
  %66 = phi i64 [ %51, %48 ], [ %64, %58 ]
  %67 = getelementptr inbounds i8, ptr %3, i64 4
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 32
  %71 = add nuw nsw i64 %70, %66
  br label %72

72:                                               ; preds = %65, %48
  %73 = phi i64 [ %51, %48 ], [ %71, %65 ]
  %74 = getelementptr inbounds i8, ptr %3, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 24
  %78 = add nuw nsw i64 %77, %73
  br label %79

79:                                               ; preds = %72, %48
  %80 = phi i64 [ %51, %48 ], [ %78, %72 ]
  %81 = getelementptr inbounds i8, ptr %3, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 16
  %85 = add nuw nsw i64 %84, %80
  br label %86

86:                                               ; preds = %79, %48
  %87 = phi i64 [ %51, %48 ], [ %85, %79 ]
  %88 = getelementptr inbounds i8, ptr %3, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 8
  %92 = add nuw nsw i64 %91, %87
  store i64 %92, ptr %11, align 8, !tbaa !76
  br label %93

93:                                               ; preds = %86, %48
  %94 = phi i64 [ %92, %86 ], [ %51, %48 ]
  %95 = getelementptr i8, ptr %3, i64 %4
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %1491, label %99

99:                                               ; preds = %93
  %100 = zext i8 %97 to i32
  %101 = tail call i32 @llvm.ctlz.i32(i32 %100, i1 true), !range !55
  %102 = trunc i64 %4 to i32
  %103 = shl nuw nsw i32 %102, 3
  %104 = sub nsw i32 %101, %103
  %105 = add nsw i32 %104, 41
  br label %113

106:                                              ; preds = %42
  %107 = lshr i64 %46, 56
  %108 = trunc i64 %107 to i32
  %109 = tail call i32 @llvm.ctlz.i32(i32 %108, i1 true), !range !55
  %110 = xor i32 %109, 31
  %111 = sub nuw nsw i32 8, %110
  %112 = icmp ult i64 %4, -119
  br i1 %112, label %113, label %1491

113:                                              ; preds = %99, %106
  %114 = phi i64 [ 0, %99 ], [ %43, %106 ]
  %115 = phi i32 [ %105, %99 ], [ %111, %106 ]
  %116 = phi i64 [ %94, %99 ], [ %46, %106 ]
  %117 = getelementptr inbounds i8, ptr %3, i64 %114
  %118 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 1
  %119 = load ptr, ptr %0, align 8, !tbaa !77
  %120 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %119, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !63
  %122 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 1
  %123 = add i32 %115, %121
  %124 = sub i32 0, %123
  %125 = and i32 %124, 63
  %126 = zext nneg i32 %125 to i64
  %127 = lshr i64 %116, %126
  %128 = zext nneg i32 %121 to i64
  %129 = shl nsw i64 -1, %128
  %130 = xor i64 %129, -1
  %131 = and i64 %127, %130
  store i64 %131, ptr %118, align 8, !tbaa !78
  %132 = icmp ugt i32 %123, 64
  %133 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i64 0, i32 2
  br i1 %132, label %134, label %135, !prof !51

134:                                              ; preds = %113
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75
  br label %160

135:                                              ; preds = %113
  %136 = icmp slt i64 %114, 8
  br i1 %136, label %144, label %137

137:                                              ; preds = %135
  %138 = lshr i32 %123, 3
  %139 = zext nneg i32 %138 to i64
  %140 = sub nsw i64 0, %139
  %141 = getelementptr inbounds i8, ptr %117, i64 %140
  store ptr %141, ptr %133, align 8, !tbaa !75
  %142 = and i32 %123, 7
  store i32 %142, ptr %122, align 8, !tbaa !80
  %143 = load i64, ptr %141, align 1, !tbaa !44
  store i64 %143, ptr %11, align 8, !tbaa !76
  br label %160

144:                                              ; preds = %135
  %145 = icmp eq i64 %114, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %144
  %147 = lshr i32 %123, 3
  %148 = zext nneg i32 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = getelementptr inbounds i8, ptr %117, i64 %149
  %151 = icmp ult ptr %150, %3
  %152 = trunc i64 %114 to i32
  %153 = select i1 %151, i32 %152, i32 %147
  %154 = zext i32 %153 to i64
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %117, i64 %155
  store ptr %156, ptr %133, align 8, !tbaa !75
  %157 = shl i32 %153, 3
  %158 = sub i32 %123, %157
  store i32 %158, ptr %122, align 8, !tbaa !80
  %159 = load i64, ptr %156, align 1, !tbaa !44
  store i64 %159, ptr %11, align 8, !tbaa !76
  br label %160

160:                                              ; preds = %134, %137, %144, %146
  %161 = phi ptr [ @BIT_reloadDStream.zeroFilled, %134 ], [ %141, %137 ], [ %3, %144 ], [ %156, %146 ]
  %162 = phi i32 [ %123, %134 ], [ %142, %137 ], [ %123, %144 ], [ %158, %146 ]
  %163 = phi i64 [ %116, %134 ], [ %143, %137 ], [ %116, %144 ], [ %159, %146 ]
  %164 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %119, i64 1
  %165 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 1, i32 1
  store ptr %164, ptr %165, align 8, !tbaa !81
  %166 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 2
  %167 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !68
  %169 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !63
  %171 = add i32 %162, %170
  %172 = sub i32 0, %171
  %173 = and i32 %172, 63
  %174 = zext nneg i32 %173 to i64
  %175 = lshr i64 %163, %174
  %176 = zext nneg i32 %170 to i64
  %177 = shl nsw i64 -1, %176
  %178 = xor i64 %177, -1
  %179 = and i64 %175, %178
  store i64 %179, ptr %166, align 8, !tbaa !78
  %180 = icmp ugt i32 %171, 64
  br i1 %180, label %181, label %182, !prof !51

181:                                              ; preds = %160
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75
  br label %210

182:                                              ; preds = %160
  %183 = icmp ult ptr %161, %39
  br i1 %183, label %191, label %184

184:                                              ; preds = %182
  %185 = lshr i32 %171, 3
  %186 = zext nneg i32 %185 to i64
  %187 = sub nsw i64 0, %186
  %188 = getelementptr inbounds i8, ptr %161, i64 %187
  store ptr %188, ptr %133, align 8, !tbaa !75
  %189 = and i32 %171, 7
  %190 = load i64, ptr %188, align 1, !tbaa !44
  store i64 %190, ptr %11, align 8, !tbaa !76
  br label %210

191:                                              ; preds = %182
  %192 = icmp eq ptr %161, %3
  br i1 %192, label %210, label %193

193:                                              ; preds = %191
  %194 = lshr i32 %171, 3
  %195 = zext nneg i32 %194 to i64
  %196 = sub nsw i64 0, %195
  %197 = getelementptr inbounds i8, ptr %161, i64 %196
  %198 = icmp ult ptr %197, %3
  %199 = ptrtoint ptr %161 to i64
  %200 = ptrtoint ptr %3 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = select i1 %198, i32 %202, i32 %194
  %204 = zext i32 %203 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds i8, ptr %161, i64 %205
  store ptr %206, ptr %133, align 8, !tbaa !75
  %207 = shl i32 %203, 3
  %208 = sub i32 %171, %207
  %209 = load i64, ptr %206, align 1, !tbaa !44
  store i64 %209, ptr %11, align 8, !tbaa !76
  br label %210

210:                                              ; preds = %181, %184, %191, %193
  %211 = phi ptr [ @BIT_reloadDStream.zeroFilled, %181 ], [ %188, %184 ], [ %3, %191 ], [ %206, %193 ]
  %212 = phi i32 [ %171, %181 ], [ %189, %184 ], [ %171, %191 ], [ %208, %193 ]
  %213 = phi i64 [ %163, %181 ], [ %190, %184 ], [ %163, %191 ], [ %209, %193 ]
  %214 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %168, i64 1
  %215 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 2, i32 1
  store ptr %214, ptr %215, align 8, !tbaa !81
  %216 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 3
  %217 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !82
  %219 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %218, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !63
  %221 = add i32 %212, %220
  %222 = sub i32 0, %221
  %223 = and i32 %222, 63
  %224 = zext nneg i32 %223 to i64
  %225 = lshr i64 %213, %224
  %226 = zext nneg i32 %220 to i64
  %227 = shl nsw i64 -1, %226
  %228 = xor i64 %227, -1
  %229 = and i64 %225, %228
  store i32 %221, ptr %122, align 8, !tbaa !80
  store i64 %229, ptr %216, align 8, !tbaa !78
  %230 = icmp ugt i32 %221, 64
  br i1 %230, label %231, label %232, !prof !51

231:                                              ; preds = %210
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75
  br label %260

232:                                              ; preds = %210
  %233 = icmp ult ptr %211, %39
  br i1 %233, label %241, label %234

234:                                              ; preds = %232
  %235 = lshr i32 %221, 3
  %236 = zext nneg i32 %235 to i64
  %237 = sub nsw i64 0, %236
  %238 = getelementptr inbounds i8, ptr %211, i64 %237
  store ptr %238, ptr %133, align 8, !tbaa !75
  %239 = and i32 %221, 7
  store i32 %239, ptr %122, align 8, !tbaa !80
  %240 = load i64, ptr %238, align 1, !tbaa !44
  store i64 %240, ptr %11, align 8, !tbaa !76
  br label %260

241:                                              ; preds = %232
  %242 = icmp eq ptr %211, %3
  br i1 %242, label %260, label %243

243:                                              ; preds = %241
  %244 = lshr i32 %221, 3
  %245 = zext nneg i32 %244 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, ptr %211, i64 %246
  %248 = icmp ult ptr %247, %3
  %249 = ptrtoint ptr %211 to i64
  %250 = ptrtoint ptr %3 to i64
  %251 = sub i64 %249, %250
  %252 = trunc i64 %251 to i32
  %253 = select i1 %248, i32 %252, i32 %244
  %254 = zext i32 %253 to i64
  %255 = sub nsw i64 0, %254
  %256 = getelementptr inbounds i8, ptr %211, i64 %255
  store ptr %256, ptr %133, align 8, !tbaa !75
  %257 = shl i32 %253, 3
  %258 = sub i32 %221, %257
  store i32 %258, ptr %122, align 8, !tbaa !80
  %259 = load i64, ptr %256, align 1, !tbaa !44
  store i64 %259, ptr %11, align 8, !tbaa !76
  br label %260

260:                                              ; preds = %231, %234, %241, %243
  %261 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %218, i64 1
  %262 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 3, i32 1
  store ptr %261, ptr %262, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !132
  %263 = getelementptr inbounds i8, ptr %7, i64 8
  %264 = getelementptr inbounds i8, ptr %7, i64 16
  %265 = ptrtoint ptr %19 to i64
  %266 = ptrtoint ptr %21 to i64
  br label %267

267:                                              ; preds = %260, %698
  %268 = phi i32 [ %5, %260 ], [ %699, %698 ]
  %269 = phi ptr [ %1, %260 ], [ %693, %698 ]
  %270 = icmp eq i32 %268, 1
  %271 = load ptr, ptr %165, align 8, !tbaa !92, !noalias !224
  %272 = load i64, ptr %118, align 8, !tbaa !97, !noalias !224
  %273 = load ptr, ptr %262, align 8, !tbaa !98, !noalias !224
  %274 = load i64, ptr %216, align 8, !tbaa !99, !noalias !224
  %275 = load ptr, ptr %215, align 8, !tbaa !100, !noalias !224
  %276 = load i64, ptr %166, align 8, !tbaa !101, !noalias !224
  %277 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %273, i64 %274, i32 3
  %278 = load i32, ptr %277, align 4, !tbaa !41, !noalias !224
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %271, i64 %272, i32 3
  %281 = load i32, ptr %280, align 4, !tbaa !41, !noalias !224
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %275, i64 %276, i32 3
  %284 = load i32, ptr %283, align 4, !tbaa !41, !noalias !224
  %285 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %271, i64 %272, i32 1
  %286 = load i8, ptr %285, align 2, !tbaa !58, !noalias !224
  %287 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %273, i64 %274, i32 1
  %288 = load i8, ptr %287, align 2, !tbaa !58, !noalias !224
  %289 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %275, i64 %276, i32 1
  %290 = load i8, ptr %289, align 2, !tbaa !58, !noalias !224
  %291 = zext i8 %286 to i32
  %292 = zext i8 %288 to i32
  %293 = add i8 %288, %286
  %294 = add i8 %293, %290
  %295 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %275, i64 %276
  %296 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %273, i64 %274
  %297 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %271, i64 %272
  %298 = load i16, ptr %297, align 4, !tbaa !57, !noalias !224
  %299 = load i16, ptr %296, align 4, !tbaa !57, !noalias !224
  %300 = load i16, ptr %295, align 4, !tbaa !57, !noalias !224
  %301 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %271, i64 %272, i32 2
  %302 = load i8, ptr %301, align 1, !tbaa !56, !noalias !224
  %303 = zext i8 %302 to i32
  %304 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %273, i64 %274, i32 2
  %305 = load i8, ptr %304, align 1, !tbaa !56, !noalias !224
  %306 = zext i8 %305 to i32
  %307 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %275, i64 %276, i32 2
  %308 = load i8, ptr %307, align 1, !tbaa !56, !noalias !224
  %309 = zext i8 %308 to i32
  %310 = icmp ugt i8 %290, 1
  br i1 %310, label %311, label %326

311:                                              ; preds = %267
  %312 = zext i8 %290 to i32
  %313 = load i64, ptr %11, align 8, !tbaa !76, !noalias !224
  %314 = load i32, ptr %122, align 8, !tbaa !80, !noalias !224
  %315 = and i32 %314, 63
  %316 = zext nneg i32 %315 to i64
  %317 = shl i64 %313, %316
  %318 = sub nsw i32 0, %312
  %319 = and i32 %318, 63
  %320 = zext nneg i32 %319 to i64
  %321 = lshr i64 %317, %320
  %322 = add i32 %314, %312
  store i32 %322, ptr %122, align 8, !tbaa !80, !noalias !224
  %323 = zext i32 %284 to i64
  %324 = add i64 %321, %323
  %325 = load i64, ptr %29, align 8, !tbaa !44, !noalias !224
  store i64 %325, ptr %35, align 8, !tbaa !44, !noalias !224
  br label %365

326:                                              ; preds = %267
  %327 = icmp eq i32 %281, 0
  %328 = icmp eq i8 %290, 0
  br i1 %328, label %329, label %336, !prof !87

329:                                              ; preds = %326
  %330 = zext i1 %327 to i64
  %331 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %330
  %332 = load i64, ptr %331, align 8, !tbaa !44, !noalias !224
  %333 = xor i1 %327, true
  %334 = zext i1 %333 to i64
  %335 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %334
  br label %365

336:                                              ; preds = %326
  %337 = zext i1 %327 to i32
  %338 = add i32 %284, %337
  %339 = zext i32 %338 to i64
  %340 = load i64, ptr %11, align 8, !tbaa !76, !noalias !224
  %341 = load i32, ptr %122, align 8, !tbaa !80, !noalias !224
  %342 = and i32 %341, 63
  %343 = zext nneg i32 %342 to i64
  %344 = shl i64 %340, %343
  %345 = lshr i64 %344, 63
  %346 = add i32 %341, 1
  store i32 %346, ptr %122, align 8, !tbaa !80, !noalias !224
  %347 = add nuw nsw i64 %345, %339
  %348 = icmp eq i64 %347, 3
  br i1 %348, label %349, label %355

349:                                              ; preds = %336
  %350 = load i64, ptr %28, align 8, !tbaa !44, !noalias !224
  %351 = add i64 %350, -1
  %352 = icmp eq i64 %351, 0
  %353 = sext i1 %352 to i64
  %354 = add i64 %351, %353
  br label %362

355:                                              ; preds = %336
  %356 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %347
  %357 = load i64, ptr %356, align 8, !tbaa !44, !noalias !224
  %358 = icmp eq i64 %357, 0
  %359 = sext i1 %358 to i64
  %360 = add i64 %357, %359
  %361 = icmp eq i64 %347, 1
  br i1 %361, label %365, label %362

362:                                              ; preds = %349, %355
  %363 = phi i64 [ %354, %349 ], [ %360, %355 ]
  %364 = load i64, ptr %29, align 8, !tbaa !44, !noalias !224
  store i64 %364, ptr %35, align 8, !tbaa !44, !noalias !224
  br label %365

365:                                              ; preds = %355, %362, %329, %311
  %366 = phi ptr [ %335, %329 ], [ %28, %311 ], [ %28, %362 ], [ %28, %355 ]
  %367 = phi i64 [ %332, %329 ], [ %324, %311 ], [ %363, %362 ], [ %360, %355 ]
  %368 = load i64, ptr %366, align 8, !tbaa !44, !noalias !224
  store i64 %368, ptr %29, align 8, !tbaa !44, !noalias !224
  store i64 %367, ptr %28, align 8, !tbaa !44, !noalias !224
  %369 = icmp eq i8 %288, 0
  br i1 %369, label %382, label %370

370:                                              ; preds = %365
  %371 = load i64, ptr %11, align 8, !tbaa !76, !noalias !224
  %372 = load i32, ptr %122, align 8, !tbaa !80, !noalias !224
  %373 = and i32 %372, 63
  %374 = zext nneg i32 %373 to i64
  %375 = shl i64 %371, %374
  %376 = sub nsw i32 0, %292
  %377 = and i32 %376, 63
  %378 = zext nneg i32 %377 to i64
  %379 = lshr i64 %375, %378
  %380 = add i32 %372, %292
  store i32 %380, ptr %122, align 8, !tbaa !80, !noalias !224
  %381 = add i64 %379, %279
  br label %382

382:                                              ; preds = %370, %365
  %383 = phi i64 [ %279, %365 ], [ %381, %370 ]
  %384 = icmp ugt i8 %294, 30
  br i1 %384, label %385, label %420, !prof !51

385:                                              ; preds = %382
  %386 = load i32, ptr %122, align 8, !tbaa !80, !noalias !224
  %387 = icmp ugt i32 %386, 64
  br i1 %387, label %388, label %389, !prof !51

388:                                              ; preds = %385
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75, !noalias !224
  br label %420

389:                                              ; preds = %385
  %390 = load ptr, ptr %133, align 8, !tbaa !75, !noalias !224
  %391 = load ptr, ptr %40, align 8, !tbaa !74, !noalias !224
  %392 = icmp ult ptr %390, %391
  br i1 %392, label %400, label %393

393:                                              ; preds = %389
  %394 = lshr i32 %386, 3
  %395 = zext nneg i32 %394 to i64
  %396 = sub nsw i64 0, %395
  %397 = getelementptr inbounds i8, ptr %390, i64 %396
  store ptr %397, ptr %133, align 8, !tbaa !75, !noalias !224
  %398 = and i32 %386, 7
  store i32 %398, ptr %122, align 8, !tbaa !80, !noalias !224
  %399 = load i64, ptr %397, align 1, !tbaa !44, !noalias !224
  store i64 %399, ptr %11, align 8, !tbaa !76, !noalias !224
  br label %420

400:                                              ; preds = %389
  %401 = load ptr, ptr %38, align 8, !tbaa !72, !noalias !224
  %402 = icmp eq ptr %390, %401
  br i1 %402, label %420, label %403

403:                                              ; preds = %400
  %404 = lshr i32 %386, 3
  %405 = zext nneg i32 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %390, i64 %406
  %408 = icmp ult ptr %407, %401
  %409 = ptrtoint ptr %390 to i64
  %410 = ptrtoint ptr %401 to i64
  %411 = sub i64 %409, %410
  %412 = trunc i64 %411 to i32
  %413 = select i1 %408, i32 %412, i32 %404
  %414 = zext i32 %413 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %390, i64 %415
  store ptr %416, ptr %133, align 8, !tbaa !75, !noalias !224
  %417 = shl i32 %413, 3
  %418 = sub i32 %386, %417
  store i32 %418, ptr %122, align 8, !tbaa !80, !noalias !224
  %419 = load i64, ptr %416, align 1, !tbaa !44, !noalias !224
  store i64 %419, ptr %11, align 8, !tbaa !76, !noalias !224
  br label %420

420:                                              ; preds = %400, %388, %393, %403, %382
  %421 = icmp eq i8 %286, 0
  br i1 %421, label %434, label %422

422:                                              ; preds = %420
  %423 = load i64, ptr %11, align 8, !tbaa !76, !noalias !224
  %424 = load i32, ptr %122, align 8, !tbaa !80, !noalias !224
  %425 = and i32 %424, 63
  %426 = zext nneg i32 %425 to i64
  %427 = shl i64 %423, %426
  %428 = sub nsw i32 0, %291
  %429 = and i32 %428, 63
  %430 = zext nneg i32 %429 to i64
  %431 = lshr i64 %427, %430
  %432 = add i32 %424, %291
  store i32 %432, ptr %122, align 8, !tbaa !80, !noalias !224
  %433 = add i64 %431, %282
  br label %434

434:                                              ; preds = %422, %420
  %435 = phi i64 [ %282, %420 ], [ %433, %422 ]
  br i1 %270, label %510, label %436

436:                                              ; preds = %434
  %437 = load i64, ptr %11, align 8, !tbaa !76, !noalias !224
  %438 = load i32, ptr %122, align 8, !tbaa !80, !noalias !224
  %439 = add i32 %438, %303
  %440 = sub i32 0, %439
  %441 = and i32 %440, 63
  %442 = zext nneg i32 %441 to i64
  %443 = lshr i64 %437, %442
  %444 = zext nneg i8 %302 to i64
  %445 = shl nsw i64 -1, %444
  %446 = xor i64 %445, -1
  %447 = and i64 %443, %446
  %448 = zext i16 %298 to i64
  %449 = add nuw i64 %447, %448
  store i64 %449, ptr %118, align 8, !tbaa !78, !noalias !224
  %450 = add i32 %439, %306
  %451 = sub i32 0, %450
  %452 = and i32 %451, 63
  %453 = zext nneg i32 %452 to i64
  %454 = lshr i64 %437, %453
  %455 = zext nneg i8 %305 to i64
  %456 = shl nsw i64 -1, %455
  %457 = xor i64 %456, -1
  %458 = and i64 %454, %457
  %459 = zext i16 %299 to i64
  %460 = add nuw i64 %458, %459
  store i64 %460, ptr %216, align 8, !tbaa !78, !noalias !224
  %461 = add i32 %450, %309
  %462 = sub i32 0, %461
  %463 = and i32 %462, 63
  %464 = zext nneg i32 %463 to i64
  %465 = lshr i64 %437, %464
  %466 = zext nneg i8 %308 to i64
  %467 = shl nsw i64 -1, %466
  %468 = xor i64 %467, -1
  %469 = and i64 %465, %468
  store i32 %461, ptr %122, align 8, !tbaa !80, !noalias !224
  %470 = zext i16 %300 to i64
  %471 = add nuw i64 %469, %470
  store i64 %471, ptr %166, align 8, !tbaa !78, !noalias !224
  %472 = icmp ugt i32 %461, 64
  br i1 %472, label %473, label %474, !prof !51

473:                                              ; preds = %436
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75, !noalias !224
  br label %505

474:                                              ; preds = %436
  %475 = load ptr, ptr %133, align 8, !tbaa !75, !noalias !224
  %476 = load ptr, ptr %40, align 8, !tbaa !74, !noalias !224
  %477 = icmp ult ptr %475, %476
  br i1 %477, label %485, label %478

478:                                              ; preds = %474
  %479 = lshr i32 %461, 3
  %480 = zext nneg i32 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, ptr %475, i64 %481
  store ptr %482, ptr %133, align 8, !tbaa !75, !noalias !224
  %483 = and i32 %461, 7
  store i32 %483, ptr %122, align 8, !tbaa !80, !noalias !224
  %484 = load i64, ptr %482, align 1, !tbaa !44, !noalias !224
  store i64 %484, ptr %11, align 8, !tbaa !76, !noalias !224
  br label %505

485:                                              ; preds = %474
  %486 = load ptr, ptr %38, align 8, !tbaa !72, !noalias !224
  %487 = icmp eq ptr %475, %486
  br i1 %487, label %505, label %488

488:                                              ; preds = %485
  %489 = lshr i32 %461, 3
  %490 = zext nneg i32 %489 to i64
  %491 = sub nsw i64 0, %490
  %492 = getelementptr inbounds i8, ptr %475, i64 %491
  %493 = icmp ult ptr %492, %486
  %494 = ptrtoint ptr %475 to i64
  %495 = ptrtoint ptr %486 to i64
  %496 = sub i64 %494, %495
  %497 = trunc i64 %496 to i32
  %498 = select i1 %493, i32 %497, i32 %489
  %499 = zext i32 %498 to i64
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %475, i64 %500
  store ptr %501, ptr %133, align 8, !tbaa !75, !noalias !224
  %502 = shl i32 %498, 3
  %503 = sub i32 %461, %502
  store i32 %503, ptr %122, align 8, !tbaa !80, !noalias !224
  %504 = load i64, ptr %501, align 1, !tbaa !44, !noalias !224
  store i64 %504, ptr %11, align 8, !tbaa !76, !noalias !224
  br label %505

505:                                              ; preds = %485, %473, %478, %488
  %506 = load ptr, ptr %10, align 8, !tbaa !38
  %507 = getelementptr inbounds i8, ptr %506, i64 %435
  %508 = load ptr, ptr %16, align 8, !tbaa !37
  %509 = icmp ugt ptr %507, %508
  br i1 %509, label %701, label %515

510:                                              ; preds = %434
  %511 = load ptr, ptr %10, align 8, !tbaa !38
  %512 = getelementptr inbounds i8, ptr %511, i64 %435
  %513 = load ptr, ptr %16, align 8, !tbaa !37
  %514 = icmp ugt ptr %512, %513
  br i1 %514, label %703, label %515

515:                                              ; preds = %510, %505
  %516 = phi ptr [ %512, %510 ], [ %507, %505 ]
  %517 = phi ptr [ %511, %510 ], [ %506, %505 ]
  %518 = getelementptr inbounds i8, ptr %516, i64 -32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %435, ptr %7, align 8
  store i64 %383, ptr %263, align 8
  store i64 %367, ptr %264, align 8
  %519 = getelementptr inbounds i8, ptr %269, i64 %435
  %520 = add i64 %435, %383
  %521 = sub i64 0, %367
  %522 = getelementptr inbounds i8, ptr %519, i64 %521
  %523 = icmp ugt ptr %516, %17
  %524 = getelementptr inbounds i8, ptr %269, i64 %520
  %525 = icmp ugt ptr %524, %518
  %526 = select i1 %523, i1 true, i1 %525
  br i1 %526, label %530, label %527, !prof !111

527:                                              ; preds = %515
  %528 = load <2 x i64>, ptr %517, align 1, !tbaa !9
  store <2 x i64> %528, ptr %269, align 1, !tbaa !9
  %529 = icmp ugt i64 %435, 16
  br i1 %529, label %532, label %552, !prof !51

530:                                              ; preds = %515
  %531 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %269, ptr noundef %13, ptr noundef nonnull %518, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %10, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %690

532:                                              ; preds = %527
  %533 = getelementptr inbounds i8, ptr %269, i64 16
  %534 = getelementptr inbounds i8, ptr %517, i64 16
  %535 = add i64 %435, -16
  %536 = load <2 x i64>, ptr %534, align 1, !tbaa !9
  store <2 x i64> %536, ptr %533, align 1, !tbaa !9
  %537 = icmp ult i64 %535, 17
  br i1 %537, label %552, label %538

538:                                              ; preds = %532
  %539 = getelementptr inbounds i8, ptr %269, i64 32
  br label %540

540:                                              ; preds = %540, %538
  %541 = phi ptr [ %539, %538 ], [ %548, %540 ]
  %542 = phi ptr [ %534, %538 ], [ %546, %540 ]
  %543 = getelementptr inbounds i8, ptr %542, i64 16
  %544 = load <2 x i64>, ptr %543, align 1, !tbaa !9
  store <2 x i64> %544, ptr %541, align 1, !tbaa !9
  %545 = getelementptr inbounds i8, ptr %541, i64 16
  %546 = getelementptr inbounds i8, ptr %542, i64 32
  %547 = load <2 x i64>, ptr %546, align 1, !tbaa !9
  store <2 x i64> %547, ptr %545, align 1, !tbaa !9
  %548 = getelementptr inbounds i8, ptr %541, i64 32
  %549 = icmp ult ptr %548, %519
  br i1 %549, label %540, label %550, !llvm.loop !105

550:                                              ; preds = %540
  %551 = load i64, ptr %264, align 8, !tbaa !136
  br label %552

552:                                              ; preds = %550, %532, %527
  %553 = phi i64 [ %551, %550 ], [ %367, %532 ], [ %367, %527 ]
  store ptr %516, ptr %10, align 8, !tbaa !38
  %554 = ptrtoint ptr %519 to i64
  %555 = sub i64 %554, %265
  %556 = icmp ugt i64 %553, %555
  br i1 %556, label %557, label %572

557:                                              ; preds = %552
  %558 = sub i64 %554, %266
  %559 = icmp ugt i64 %553, %558
  br i1 %559, label %560, label %561, !prof !51

560:                                              ; preds = %557
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %1491

561:                                              ; preds = %557
  %562 = ptrtoint ptr %522 to i64
  %563 = sub i64 %562, %265
  %564 = getelementptr inbounds i8, ptr %23, i64 %563
  %565 = getelementptr inbounds i8, ptr %564, i64 %383
  %566 = icmp ugt ptr %565, %23
  br i1 %566, label %568, label %567

567:                                              ; preds = %561
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %519, ptr align 1 %564, i64 %383, i1 false)
  br label %690

568:                                              ; preds = %561
  %569 = sub i64 0, %563
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %519, ptr align 1 %564, i64 %569, i1 false)
  %570 = getelementptr inbounds i8, ptr %519, i64 %569
  %571 = add i64 %383, %563
  store i64 %571, ptr %263, align 8, !tbaa !137
  br label %572

572:                                              ; preds = %568, %552
  %573 = phi i64 [ %571, %568 ], [ %383, %552 ]
  %574 = phi ptr [ %19, %568 ], [ %522, %552 ]
  %575 = phi ptr [ %570, %568 ], [ %519, %552 ]
  %576 = ptrtoint ptr %575 to i64
  %577 = icmp ugt i64 %553, 15
  br i1 %577, label %578, label %594, !prof !87

578:                                              ; preds = %572
  %579 = getelementptr inbounds i8, ptr %575, i64 %573
  %580 = load <2 x i64>, ptr %574, align 1, !tbaa !9
  store <2 x i64> %580, ptr %575, align 1, !tbaa !9
  %581 = icmp ult i64 %573, 17
  br i1 %581, label %690, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds i8, ptr %575, i64 16
  br label %584

584:                                              ; preds = %584, %582
  %585 = phi ptr [ %583, %582 ], [ %592, %584 ]
  %586 = phi ptr [ %574, %582 ], [ %590, %584 ]
  %587 = getelementptr inbounds i8, ptr %586, i64 16
  %588 = load <2 x i64>, ptr %587, align 1, !tbaa !9
  store <2 x i64> %588, ptr %585, align 1, !tbaa !9
  %589 = getelementptr inbounds i8, ptr %585, i64 16
  %590 = getelementptr inbounds i8, ptr %586, i64 32
  %591 = load <2 x i64>, ptr %590, align 1, !tbaa !9
  store <2 x i64> %591, ptr %589, align 1, !tbaa !9
  %592 = getelementptr inbounds i8, ptr %585, i64 32
  %593 = icmp ult ptr %592, %579
  br i1 %593, label %584, label %690, !llvm.loop !105

594:                                              ; preds = %572
  %595 = icmp ult i64 %553, 8
  br i1 %595, label %596, label %619

596:                                              ; preds = %594
  %597 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %553
  %598 = load i32, ptr %597, align 4, !tbaa !28
  %599 = load i8, ptr %574, align 1, !tbaa !9
  store i8 %599, ptr %575, align 1, !tbaa !9
  %600 = getelementptr inbounds i8, ptr %574, i64 1
  %601 = load i8, ptr %600, align 1, !tbaa !9
  %602 = getelementptr inbounds i8, ptr %575, i64 1
  store i8 %601, ptr %602, align 1, !tbaa !9
  %603 = getelementptr inbounds i8, ptr %574, i64 2
  %604 = load i8, ptr %603, align 1, !tbaa !9
  %605 = getelementptr inbounds i8, ptr %575, i64 2
  store i8 %604, ptr %605, align 1, !tbaa !9
  %606 = getelementptr inbounds i8, ptr %574, i64 3
  %607 = load i8, ptr %606, align 1, !tbaa !9
  %608 = getelementptr inbounds i8, ptr %575, i64 3
  store i8 %607, ptr %608, align 1, !tbaa !9
  %609 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %553
  %610 = load i32, ptr %609, align 4, !tbaa !28
  %611 = zext i32 %610 to i64
  %612 = getelementptr inbounds i8, ptr %574, i64 %611
  %613 = getelementptr inbounds i8, ptr %575, i64 4
  %614 = load i32, ptr %612, align 1
  store i32 %614, ptr %613, align 1
  %615 = sext i32 %598 to i64
  %616 = sub nsw i64 0, %615
  %617 = getelementptr inbounds i8, ptr %612, i64 %616
  %618 = load i64, ptr %263, align 8, !tbaa !137
  br label %621

619:                                              ; preds = %594
  %620 = load i64, ptr %574, align 1
  store i64 %620, ptr %575, align 1
  br label %621

621:                                              ; preds = %619, %596
  %622 = phi i64 [ %618, %596 ], [ %573, %619 ]
  %623 = phi ptr [ %617, %596 ], [ %574, %619 ]
  %624 = getelementptr i8, ptr %623, i64 8
  %625 = getelementptr i8, ptr %575, i64 8
  %626 = icmp ugt i64 %622, 8
  br i1 %626, label %627, label %690

627:                                              ; preds = %621
  %628 = ptrtoint ptr %625 to i64
  %629 = ptrtoint ptr %624 to i64
  %630 = sub i64 %628, %629
  %631 = getelementptr inbounds i8, ptr %575, i64 %622
  %632 = icmp slt i64 %630, 16
  br i1 %632, label %633, label %674

633:                                              ; preds = %627
  %634 = add i64 %622, %576
  %635 = add i64 %576, 16
  %636 = tail call i64 @llvm.umax.i64(i64 %634, i64 %635)
  %637 = add i64 %636, -9
  %638 = sub i64 %637, %576
  %639 = lshr i64 %638, 3
  %640 = add nuw nsw i64 %639, 1
  %641 = icmp ult i64 %638, 24
  %642 = icmp ult i64 %630, 32
  %643 = or i1 %641, %642
  br i1 %643, label %664, label %644

644:                                              ; preds = %633
  %645 = and i64 %640, 4611686018427387900
  %646 = shl i64 %645, 3
  %647 = getelementptr i8, ptr %625, i64 %646
  %648 = shl i64 %645, 3
  %649 = getelementptr i8, ptr %624, i64 %648
  br label %650

650:                                              ; preds = %650, %644
  %651 = phi i64 [ 0, %644 ], [ %660, %650 ]
  %652 = shl i64 %651, 3
  %653 = getelementptr i8, ptr %625, i64 %652
  %654 = shl i64 %651, 3
  %655 = getelementptr i8, ptr %624, i64 %654
  %656 = getelementptr i64, ptr %655, i64 2
  %657 = load <2 x i64>, ptr %655, align 1
  %658 = load <2 x i64>, ptr %656, align 1
  %659 = getelementptr i64, ptr %653, i64 2
  store <2 x i64> %657, ptr %653, align 1
  store <2 x i64> %658, ptr %659, align 1
  %660 = add nuw i64 %651, 4
  %661 = icmp eq i64 %660, %645
  br i1 %661, label %662, label %650, !llvm.loop !227

662:                                              ; preds = %650
  %663 = icmp eq i64 %640, %645
  br i1 %663, label %690, label %664

664:                                              ; preds = %633, %662
  %665 = phi ptr [ %625, %633 ], [ %647, %662 ]
  %666 = phi ptr [ %624, %633 ], [ %649, %662 ]
  br label %667

667:                                              ; preds = %664, %667
  %668 = phi ptr [ %671, %667 ], [ %665, %664 ]
  %669 = phi ptr [ %672, %667 ], [ %666, %664 ]
  %670 = load i64, ptr %669, align 1
  store i64 %670, ptr %668, align 1
  %671 = getelementptr inbounds i8, ptr %668, i64 8
  %672 = getelementptr inbounds i8, ptr %669, i64 8
  %673 = icmp ult ptr %671, %631
  br i1 %673, label %667, label %690, !llvm.loop !228

674:                                              ; preds = %627
  %675 = add i64 %622, -8
  %676 = load <2 x i64>, ptr %624, align 1, !tbaa !9
  store <2 x i64> %676, ptr %625, align 1, !tbaa !9
  %677 = icmp ult i64 %675, 17
  br i1 %677, label %690, label %678

678:                                              ; preds = %674
  %679 = getelementptr inbounds i8, ptr %575, i64 24
  br label %680

680:                                              ; preds = %680, %678
  %681 = phi ptr [ %679, %678 ], [ %688, %680 ]
  %682 = phi ptr [ %624, %678 ], [ %686, %680 ]
  %683 = getelementptr inbounds i8, ptr %682, i64 16
  %684 = load <2 x i64>, ptr %683, align 1, !tbaa !9
  store <2 x i64> %684, ptr %681, align 1, !tbaa !9
  %685 = getelementptr inbounds i8, ptr %681, i64 16
  %686 = getelementptr inbounds i8, ptr %682, i64 32
  %687 = load <2 x i64>, ptr %686, align 1, !tbaa !9
  store <2 x i64> %687, ptr %685, align 1, !tbaa !9
  %688 = getelementptr inbounds i8, ptr %681, i64 32
  %689 = icmp ult ptr %688, %631
  br i1 %689, label %680, label %690, !llvm.loop !105

690:                                              ; preds = %680, %667, %584, %662, %674, %578, %621, %567, %530
  %691 = phi i64 [ %531, %530 ], [ %520, %567 ], [ %520, %621 ], [ %520, %578 ], [ %520, %674 ], [ %520, %662 ], [ %520, %584 ], [ %520, %667 ], [ %520, %680 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %692 = icmp ult i64 %691, -119
  %693 = getelementptr inbounds i8, ptr %269, i64 %691
  br i1 %692, label %694, label %1491

694:                                              ; preds = %690
  %695 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %268, i32 -1)
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !86
  br i1 %696, label %697, label %698, !nosanitize !86

697:                                              ; preds = %694
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !86
  unreachable, !nosanitize !86

698:                                              ; preds = %694
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !86
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %1476, label %267, !llvm.loop !140

701:                                              ; preds = %505
  %702 = icmp sgt i32 %268, 0
  br i1 %702, label %703, label %1491

703:                                              ; preds = %510, %701
  %704 = phi ptr [ %506, %701 ], [ %511, %510 ]
  %705 = phi ptr [ %508, %701 ], [ %513, %510 ]
  %706 = ptrtoint ptr %705 to i64
  %707 = ptrtoint ptr %704 to i64
  %708 = sub i64 %706, %707
  %709 = icmp eq ptr %705, %704
  br i1 %709, label %864, label %710

710:                                              ; preds = %703
  %711 = ptrtoint ptr %13 to i64
  %712 = ptrtoint ptr %269 to i64
  %713 = sub i64 %711, %712
  %714 = icmp ugt i64 %708, %713
  br i1 %714, label %1491, label %715

715:                                              ; preds = %710
  %716 = sub i64 %712, %707
  %717 = getelementptr inbounds i8, ptr %269, i64 %708
  %718 = icmp ult i64 %708, 8
  %719 = icmp sgt i64 %716, -8
  %720 = or i1 %718, %719
  br i1 %720, label %721, label %777

721:                                              ; preds = %715
  %722 = icmp sgt i64 %708, 0
  br i1 %722, label %723, label %862

723:                                              ; preds = %721
  %724 = add i64 %712, %706
  %725 = sub i64 %724, %707
  %726 = add i64 %712, 1
  %727 = tail call i64 @llvm.umax.i64(i64 %725, i64 %726)
  %728 = sub i64 %727, %712
  %729 = icmp ult i64 %728, 8
  %730 = icmp ult i64 %716, 32
  %731 = or i1 %729, %730
  br i1 %731, label %767, label %732

732:                                              ; preds = %723
  %733 = icmp ult i64 %728, 32
  br i1 %733, label %753, label %734

734:                                              ; preds = %732
  %735 = and i64 %728, -32
  br label %736

736:                                              ; preds = %736, %734
  %737 = phi i64 [ 0, %734 ], [ %744, %736 ]
  %738 = getelementptr i8, ptr %269, i64 %737
  %739 = getelementptr i8, ptr %704, i64 %737
  %740 = getelementptr i8, ptr %739, i64 16
  %741 = load <16 x i8>, ptr %739, align 1, !tbaa !9
  %742 = load <16 x i8>, ptr %740, align 1, !tbaa !9
  %743 = getelementptr i8, ptr %738, i64 16
  store <16 x i8> %741, ptr %738, align 1, !tbaa !9
  store <16 x i8> %742, ptr %743, align 1, !tbaa !9
  %744 = add nuw i64 %737, 32
  %745 = icmp eq i64 %744, %735
  br i1 %745, label %746, label %736, !llvm.loop !229

746:                                              ; preds = %736
  %747 = icmp eq i64 %728, %735
  br i1 %747, label %862, label %748

748:                                              ; preds = %746
  %749 = getelementptr i8, ptr %704, i64 %735
  %750 = getelementptr i8, ptr %269, i64 %735
  %751 = and i64 %728, 24
  %752 = icmp eq i64 %751, 0
  br i1 %752, label %767, label %753

753:                                              ; preds = %732, %748
  %754 = phi i64 [ %735, %748 ], [ 0, %732 ]
  %755 = and i64 %728, -8
  %756 = getelementptr i8, ptr %269, i64 %755
  %757 = getelementptr i8, ptr %704, i64 %755
  br label %758

758:                                              ; preds = %758, %753
  %759 = phi i64 [ %754, %753 ], [ %763, %758 ]
  %760 = getelementptr i8, ptr %269, i64 %759
  %761 = getelementptr i8, ptr %704, i64 %759
  %762 = load <8 x i8>, ptr %761, align 1, !tbaa !9
  store <8 x i8> %762, ptr %760, align 1, !tbaa !9
  %763 = add nuw i64 %759, 8
  %764 = icmp eq i64 %763, %755
  br i1 %764, label %765, label %758, !llvm.loop !230

765:                                              ; preds = %758
  %766 = icmp eq i64 %728, %755
  br i1 %766, label %862, label %767

767:                                              ; preds = %723, %748, %765
  %768 = phi ptr [ %269, %723 ], [ %750, %748 ], [ %756, %765 ]
  %769 = phi ptr [ %704, %723 ], [ %749, %748 ], [ %757, %765 ]
  br label %770

770:                                              ; preds = %767, %770
  %771 = phi ptr [ %775, %770 ], [ %768, %767 ]
  %772 = phi ptr [ %773, %770 ], [ %769, %767 ]
  %773 = getelementptr inbounds i8, ptr %772, i64 1
  %774 = load i8, ptr %772, align 1, !tbaa !9
  %775 = getelementptr inbounds i8, ptr %771, i64 1
  store i8 %774, ptr %771, align 1, !tbaa !9
  %776 = icmp ult ptr %775, %717
  br i1 %776, label %770, label %862, !llvm.loop !231

777:                                              ; preds = %715
  %778 = getelementptr inbounds i8, ptr %717, i64 -32
  %779 = icmp uge ptr %778, %269
  %780 = icmp ult i64 %716, -16
  %781 = and i1 %780, %779
  br i1 %781, label %782, label %801

782:                                              ; preds = %777
  %783 = ptrtoint ptr %778 to i64
  %784 = sub i64 %783, %712
  %785 = load <2 x i64>, ptr %704, align 1, !tbaa !9
  store <2 x i64> %785, ptr %269, align 1, !tbaa !9
  %786 = icmp ult i64 %784, 17
  br i1 %786, label %799, label %787

787:                                              ; preds = %782
  %788 = getelementptr inbounds i8, ptr %269, i64 16
  br label %789

789:                                              ; preds = %789, %787
  %790 = phi ptr [ %788, %787 ], [ %797, %789 ]
  %791 = phi ptr [ %704, %787 ], [ %795, %789 ]
  %792 = getelementptr inbounds i8, ptr %791, i64 16
  %793 = load <2 x i64>, ptr %792, align 1, !tbaa !9
  store <2 x i64> %793, ptr %790, align 1, !tbaa !9
  %794 = getelementptr inbounds i8, ptr %790, i64 16
  %795 = getelementptr inbounds i8, ptr %791, i64 32
  %796 = load <2 x i64>, ptr %795, align 1, !tbaa !9
  store <2 x i64> %796, ptr %794, align 1, !tbaa !9
  %797 = getelementptr inbounds i8, ptr %790, i64 32
  %798 = icmp ult ptr %797, %778
  br i1 %798, label %789, label %799, !llvm.loop !105

799:                                              ; preds = %789, %782
  %800 = getelementptr inbounds i8, ptr %704, i64 %784
  br label %803

801:                                              ; preds = %777
  %802 = icmp sgt i64 %708, 0
  br i1 %802, label %803, label %862

803:                                              ; preds = %801, %799
  %804 = phi ptr [ %778, %799 ], [ %269, %801 ]
  %805 = phi ptr [ %800, %799 ], [ %704, %801 ]
  %806 = ptrtoint ptr %804 to i64
  %807 = add i64 %712, %706
  %808 = sub i64 %807, %707
  %809 = add nuw i64 %806, 1
  %810 = tail call i64 @llvm.umax.i64(i64 %808, i64 %809)
  %811 = sub i64 %810, %806
  %812 = icmp ult i64 %811, 8
  %813 = ptrtoint ptr %805 to i64
  %814 = sub i64 %806, %813
  %815 = icmp ult i64 %814, 32
  %816 = select i1 %812, i1 true, i1 %815
  br i1 %816, label %852, label %817

817:                                              ; preds = %803
  %818 = icmp ult i64 %811, 32
  br i1 %818, label %838, label %819

819:                                              ; preds = %817
  %820 = and i64 %811, -32
  br label %821

821:                                              ; preds = %821, %819
  %822 = phi i64 [ 0, %819 ], [ %829, %821 ]
  %823 = getelementptr i8, ptr %804, i64 %822
  %824 = getelementptr i8, ptr %805, i64 %822
  %825 = getelementptr i8, ptr %824, i64 16
  %826 = load <16 x i8>, ptr %824, align 1, !tbaa !9
  %827 = load <16 x i8>, ptr %825, align 1, !tbaa !9
  %828 = getelementptr i8, ptr %823, i64 16
  store <16 x i8> %826, ptr %823, align 1, !tbaa !9
  store <16 x i8> %827, ptr %828, align 1, !tbaa !9
  %829 = add nuw i64 %822, 32
  %830 = icmp eq i64 %829, %820
  br i1 %830, label %831, label %821, !llvm.loop !232

831:                                              ; preds = %821
  %832 = icmp eq i64 %811, %820
  br i1 %832, label %862, label %833

833:                                              ; preds = %831
  %834 = getelementptr i8, ptr %805, i64 %820
  %835 = getelementptr i8, ptr %804, i64 %820
  %836 = and i64 %811, 24
  %837 = icmp eq i64 %836, 0
  br i1 %837, label %852, label %838

838:                                              ; preds = %817, %833
  %839 = phi i64 [ %820, %833 ], [ 0, %817 ]
  %840 = and i64 %811, -8
  %841 = getelementptr i8, ptr %804, i64 %840
  %842 = getelementptr i8, ptr %805, i64 %840
  br label %843

843:                                              ; preds = %843, %838
  %844 = phi i64 [ %839, %838 ], [ %848, %843 ]
  %845 = getelementptr i8, ptr %804, i64 %844
  %846 = getelementptr i8, ptr %805, i64 %844
  %847 = load <8 x i8>, ptr %846, align 1, !tbaa !9
  store <8 x i8> %847, ptr %845, align 1, !tbaa !9
  %848 = add nuw i64 %844, 8
  %849 = icmp eq i64 %848, %840
  br i1 %849, label %850, label %843, !llvm.loop !233

850:                                              ; preds = %843
  %851 = icmp eq i64 %811, %840
  br i1 %851, label %862, label %852

852:                                              ; preds = %803, %833, %850
  %853 = phi ptr [ %804, %803 ], [ %835, %833 ], [ %841, %850 ]
  %854 = phi ptr [ %805, %803 ], [ %834, %833 ], [ %842, %850 ]
  br label %855

855:                                              ; preds = %852, %855
  %856 = phi ptr [ %860, %855 ], [ %853, %852 ]
  %857 = phi ptr [ %858, %855 ], [ %854, %852 ]
  %858 = getelementptr inbounds i8, ptr %857, i64 1
  %859 = load i8, ptr %857, align 1, !tbaa !9
  %860 = getelementptr inbounds i8, ptr %856, i64 1
  store i8 %859, ptr %856, align 1, !tbaa !9
  %861 = icmp ult ptr %860, %717
  br i1 %861, label %855, label %862, !llvm.loop !234

862:                                              ; preds = %855, %770, %831, %850, %746, %765, %721, %801
  %863 = sub i64 %435, %708
  br label %864

864:                                              ; preds = %862, %703
  %865 = phi i64 [ %435, %703 ], [ %863, %862 ]
  %866 = phi ptr [ %269, %703 ], [ %717, %862 ]
  %867 = getelementptr inbounds i8, ptr %0, i64 30372
  store ptr %867, ptr %10, align 8, !tbaa !38
  %868 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  %869 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  store i32 0, ptr %869, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  store i64 %865, ptr %8, align 8
  %870 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 %383, ptr %870, align 8
  %871 = getelementptr inbounds i8, ptr %8, i64 16
  store i64 %367, ptr %871, align 8
  %872 = getelementptr inbounds i8, ptr %866, i64 %865
  %873 = add i64 %865, %383
  %874 = getelementptr i8, ptr %0, i64 %865
  %875 = getelementptr i8, ptr %874, i64 30372
  %876 = sub i64 0, %367
  %877 = getelementptr inbounds i8, ptr %872, i64 %876
  %878 = icmp sgt i64 %865, 65536
  %879 = getelementptr inbounds i8, ptr %13, i64 -32
  %880 = getelementptr inbounds i8, ptr %866, i64 %873
  %881 = icmp ugt ptr %880, %879
  %882 = select i1 %878, i1 true, i1 %881
  br i1 %882, label %887, label %883, !prof !111

883:                                              ; preds = %864
  %884 = load <2 x i64>, ptr %867, align 1, !tbaa !9
  store <2 x i64> %884, ptr %866, align 1, !tbaa !9
  %885 = load i64, ptr %8, align 8, !tbaa !109
  %886 = icmp ugt i64 %885, 16
  br i1 %886, label %889, label %908, !prof !51

887:                                              ; preds = %864
  %888 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %866, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %868, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %1046

889:                                              ; preds = %883
  %890 = getelementptr inbounds i8, ptr %866, i64 16
  %891 = getelementptr inbounds i8, ptr %0, i64 30388
  %892 = add i64 %885, -16
  %893 = getelementptr inbounds i8, ptr %866, i64 %885
  %894 = load <2 x i64>, ptr %891, align 1, !tbaa !9
  store <2 x i64> %894, ptr %890, align 1, !tbaa !9
  %895 = icmp ult i64 %892, 17
  br i1 %895, label %908, label %896

896:                                              ; preds = %889
  %897 = getelementptr inbounds i8, ptr %866, i64 32
  br label %898

898:                                              ; preds = %898, %896
  %899 = phi ptr [ %897, %896 ], [ %906, %898 ]
  %900 = phi ptr [ %891, %896 ], [ %904, %898 ]
  %901 = getelementptr inbounds i8, ptr %900, i64 16
  %902 = load <2 x i64>, ptr %901, align 1, !tbaa !9
  store <2 x i64> %902, ptr %899, align 1, !tbaa !9
  %903 = getelementptr inbounds i8, ptr %899, i64 16
  %904 = getelementptr inbounds i8, ptr %900, i64 32
  %905 = load <2 x i64>, ptr %904, align 1, !tbaa !9
  store <2 x i64> %905, ptr %903, align 1, !tbaa !9
  %906 = getelementptr inbounds i8, ptr %899, i64 32
  %907 = icmp ult ptr %906, %893
  br i1 %907, label %898, label %908, !llvm.loop !105

908:                                              ; preds = %898, %889, %883
  store ptr %875, ptr %10, align 8, !tbaa !38
  %909 = load i64, ptr %871, align 8, !tbaa !136
  %910 = ptrtoint ptr %872 to i64
  %911 = sub i64 %910, %265
  %912 = icmp ugt i64 %909, %911
  br i1 %912, label %913, label %929

913:                                              ; preds = %908
  %914 = sub i64 %910, %266
  %915 = icmp ugt i64 %909, %914
  br i1 %915, label %916, label %917, !prof !51

916:                                              ; preds = %913
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %1491

917:                                              ; preds = %913
  %918 = ptrtoint ptr %877 to i64
  %919 = sub i64 %918, %265
  %920 = getelementptr inbounds i8, ptr %23, i64 %919
  %921 = load i64, ptr %870, align 8, !tbaa !137
  %922 = getelementptr inbounds i8, ptr %920, i64 %921
  %923 = icmp ugt ptr %922, %23
  br i1 %923, label %925, label %924

924:                                              ; preds = %917
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %872, ptr align 1 %920, i64 %921, i1 false)
  br label %1046

925:                                              ; preds = %917
  %926 = sub i64 0, %919
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %872, ptr align 1 %920, i64 %926, i1 false)
  %927 = getelementptr inbounds i8, ptr %872, i64 %926
  %928 = add i64 %921, %919
  store i64 %928, ptr %870, align 8, !tbaa !137
  br label %929

929:                                              ; preds = %925, %908
  %930 = phi ptr [ %927, %925 ], [ %872, %908 ]
  %931 = phi ptr [ %19, %925 ], [ %877, %908 ]
  %932 = ptrtoint ptr %930 to i64
  %933 = icmp ugt i64 %909, 15
  br i1 %933, label %934, label %951, !prof !87

934:                                              ; preds = %929
  %935 = load i64, ptr %870, align 8, !tbaa !137
  %936 = getelementptr inbounds i8, ptr %930, i64 %935
  %937 = load <2 x i64>, ptr %931, align 1, !tbaa !9
  store <2 x i64> %937, ptr %930, align 1, !tbaa !9
  %938 = icmp ult i64 %935, 17
  br i1 %938, label %1046, label %939

939:                                              ; preds = %934
  %940 = getelementptr inbounds i8, ptr %930, i64 16
  br label %941

941:                                              ; preds = %941, %939
  %942 = phi ptr [ %940, %939 ], [ %949, %941 ]
  %943 = phi ptr [ %931, %939 ], [ %947, %941 ]
  %944 = getelementptr inbounds i8, ptr %943, i64 16
  %945 = load <2 x i64>, ptr %944, align 1, !tbaa !9
  store <2 x i64> %945, ptr %942, align 1, !tbaa !9
  %946 = getelementptr inbounds i8, ptr %942, i64 16
  %947 = getelementptr inbounds i8, ptr %943, i64 32
  %948 = load <2 x i64>, ptr %947, align 1, !tbaa !9
  store <2 x i64> %948, ptr %946, align 1, !tbaa !9
  %949 = getelementptr inbounds i8, ptr %942, i64 32
  %950 = icmp ult ptr %949, %936
  br i1 %950, label %941, label %1046, !llvm.loop !105

951:                                              ; preds = %929
  %952 = icmp ult i64 %909, 8
  br i1 %952, label %953, label %975

953:                                              ; preds = %951
  %954 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %909
  %955 = load i32, ptr %954, align 4, !tbaa !28
  %956 = load i8, ptr %931, align 1, !tbaa !9
  store i8 %956, ptr %930, align 1, !tbaa !9
  %957 = getelementptr inbounds i8, ptr %931, i64 1
  %958 = load i8, ptr %957, align 1, !tbaa !9
  %959 = getelementptr inbounds i8, ptr %930, i64 1
  store i8 %958, ptr %959, align 1, !tbaa !9
  %960 = getelementptr inbounds i8, ptr %931, i64 2
  %961 = load i8, ptr %960, align 1, !tbaa !9
  %962 = getelementptr inbounds i8, ptr %930, i64 2
  store i8 %961, ptr %962, align 1, !tbaa !9
  %963 = getelementptr inbounds i8, ptr %931, i64 3
  %964 = load i8, ptr %963, align 1, !tbaa !9
  %965 = getelementptr inbounds i8, ptr %930, i64 3
  store i8 %964, ptr %965, align 1, !tbaa !9
  %966 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %909
  %967 = load i32, ptr %966, align 4, !tbaa !28
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds i8, ptr %931, i64 %968
  %970 = getelementptr inbounds i8, ptr %930, i64 4
  %971 = load i32, ptr %969, align 1
  store i32 %971, ptr %970, align 1
  %972 = sext i32 %955 to i64
  %973 = sub nsw i64 0, %972
  %974 = getelementptr inbounds i8, ptr %969, i64 %973
  br label %977

975:                                              ; preds = %951
  %976 = load i64, ptr %931, align 1
  store i64 %976, ptr %930, align 1
  br label %977

977:                                              ; preds = %975, %953
  %978 = phi ptr [ %974, %953 ], [ %931, %975 ]
  %979 = getelementptr i8, ptr %978, i64 8
  %980 = getelementptr i8, ptr %930, i64 8
  %981 = load i64, ptr %870, align 8, !tbaa !137
  %982 = icmp ugt i64 %981, 8
  br i1 %982, label %983, label %1046

983:                                              ; preds = %977
  %984 = ptrtoint ptr %980 to i64
  %985 = ptrtoint ptr %979 to i64
  %986 = sub i64 %984, %985
  %987 = getelementptr inbounds i8, ptr %930, i64 %981
  %988 = icmp slt i64 %986, 16
  br i1 %988, label %989, label %1030

989:                                              ; preds = %983
  %990 = add i64 %981, %932
  %991 = add i64 %932, 16
  %992 = tail call i64 @llvm.umax.i64(i64 %990, i64 %991)
  %993 = add i64 %992, -9
  %994 = sub i64 %993, %932
  %995 = lshr i64 %994, 3
  %996 = add nuw nsw i64 %995, 1
  %997 = icmp ult i64 %994, 24
  %998 = icmp ult i64 %986, 32
  %999 = or i1 %997, %998
  br i1 %999, label %1020, label %1000

1000:                                             ; preds = %989
  %1001 = and i64 %996, 4611686018427387900
  %1002 = shl i64 %1001, 3
  %1003 = getelementptr i8, ptr %980, i64 %1002
  %1004 = shl i64 %1001, 3
  %1005 = getelementptr i8, ptr %979, i64 %1004
  br label %1006

1006:                                             ; preds = %1006, %1000
  %1007 = phi i64 [ 0, %1000 ], [ %1016, %1006 ]
  %1008 = shl i64 %1007, 3
  %1009 = getelementptr i8, ptr %980, i64 %1008
  %1010 = shl i64 %1007, 3
  %1011 = getelementptr i8, ptr %979, i64 %1010
  %1012 = getelementptr i64, ptr %1011, i64 2
  %1013 = load <2 x i64>, ptr %1011, align 1
  %1014 = load <2 x i64>, ptr %1012, align 1
  %1015 = getelementptr i64, ptr %1009, i64 2
  store <2 x i64> %1013, ptr %1009, align 1
  store <2 x i64> %1014, ptr %1015, align 1
  %1016 = add nuw i64 %1007, 4
  %1017 = icmp eq i64 %1016, %1001
  br i1 %1017, label %1018, label %1006, !llvm.loop !235

1018:                                             ; preds = %1006
  %1019 = icmp eq i64 %996, %1001
  br i1 %1019, label %1046, label %1020

1020:                                             ; preds = %989, %1018
  %1021 = phi ptr [ %980, %989 ], [ %1003, %1018 ]
  %1022 = phi ptr [ %979, %989 ], [ %1005, %1018 ]
  br label %1023

1023:                                             ; preds = %1020, %1023
  %1024 = phi ptr [ %1027, %1023 ], [ %1021, %1020 ]
  %1025 = phi ptr [ %1028, %1023 ], [ %1022, %1020 ]
  %1026 = load i64, ptr %1025, align 1
  store i64 %1026, ptr %1024, align 1
  %1027 = getelementptr inbounds i8, ptr %1024, i64 8
  %1028 = getelementptr inbounds i8, ptr %1025, i64 8
  %1029 = icmp ult ptr %1027, %987
  br i1 %1029, label %1023, label %1046, !llvm.loop !236

1030:                                             ; preds = %983
  %1031 = add i64 %981, -8
  %1032 = load <2 x i64>, ptr %979, align 1, !tbaa !9
  store <2 x i64> %1032, ptr %980, align 1, !tbaa !9
  %1033 = icmp ult i64 %1031, 17
  br i1 %1033, label %1046, label %1034

1034:                                             ; preds = %1030
  %1035 = getelementptr inbounds i8, ptr %930, i64 24
  br label %1036

1036:                                             ; preds = %1036, %1034
  %1037 = phi ptr [ %1035, %1034 ], [ %1044, %1036 ]
  %1038 = phi ptr [ %979, %1034 ], [ %1042, %1036 ]
  %1039 = getelementptr inbounds i8, ptr %1038, i64 16
  %1040 = load <2 x i64>, ptr %1039, align 1, !tbaa !9
  store <2 x i64> %1040, ptr %1037, align 1, !tbaa !9
  %1041 = getelementptr inbounds i8, ptr %1037, i64 16
  %1042 = getelementptr inbounds i8, ptr %1038, i64 32
  %1043 = load <2 x i64>, ptr %1042, align 1, !tbaa !9
  store <2 x i64> %1043, ptr %1041, align 1, !tbaa !9
  %1044 = getelementptr inbounds i8, ptr %1037, i64 32
  %1045 = icmp ult ptr %1044, %987
  br i1 %1045, label %1036, label %1046, !llvm.loop !105

1046:                                             ; preds = %1036, %1023, %941, %1018, %887, %924, %977, %934, %1030
  %1047 = phi i64 [ %888, %887 ], [ %873, %924 ], [ %873, %977 ], [ %873, %934 ], [ %873, %1030 ], [ %873, %1018 ], [ %873, %941 ], [ %873, %1023 ], [ %873, %1036 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  %1048 = icmp ult i64 %1047, -119
  %1049 = getelementptr inbounds i8, ptr %866, i64 %1047
  %1050 = add nsw i32 %268, -1
  br i1 %1048, label %1051, label %1491

1051:                                             ; preds = %1046
  br i1 %270, label %1476, label %1052

1052:                                             ; preds = %1051
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !149
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !150
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !151
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !152
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !153
  %1053 = icmp eq i32 %1050, 0
  br i1 %1053, label %1476, label %1054

1054:                                             ; preds = %1052
  %1055 = getelementptr inbounds i8, ptr %9, i64 8
  %1056 = getelementptr inbounds i8, ptr %9, i64 16
  br label %1057

1057:                                             ; preds = %1054, %1472
  %1058 = phi i32 [ %1050, %1054 ], [ %1474, %1472 ]
  %1059 = phi ptr [ %1049, %1054 ], [ %1473, %1472 ]
  %1060 = icmp eq i32 %1058, 1
  %1061 = load ptr, ptr %165, align 8, !tbaa !92, !noalias !237
  %1062 = load i64, ptr %118, align 8, !tbaa !97, !noalias !237
  %1063 = load ptr, ptr %262, align 8, !tbaa !98, !noalias !237
  %1064 = load i64, ptr %216, align 8, !tbaa !99, !noalias !237
  %1065 = load ptr, ptr %215, align 8, !tbaa !100, !noalias !237
  %1066 = load i64, ptr %166, align 8, !tbaa !101, !noalias !237
  %1067 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1063, i64 %1064, i32 3
  %1068 = load i32, ptr %1067, align 4, !tbaa !41, !noalias !237
  %1069 = zext i32 %1068 to i64
  %1070 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1061, i64 %1062, i32 3
  %1071 = load i32, ptr %1070, align 4, !tbaa !41, !noalias !237
  %1072 = zext i32 %1071 to i64
  %1073 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1065, i64 %1066, i32 3
  %1074 = load i32, ptr %1073, align 4, !tbaa !41, !noalias !237
  %1075 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1061, i64 %1062, i32 1
  %1076 = load i8, ptr %1075, align 2, !tbaa !58, !noalias !237
  %1077 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1063, i64 %1064, i32 1
  %1078 = load i8, ptr %1077, align 2, !tbaa !58, !noalias !237
  %1079 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1065, i64 %1066, i32 1
  %1080 = load i8, ptr %1079, align 2, !tbaa !58, !noalias !237
  %1081 = zext i8 %1076 to i32
  %1082 = zext i8 %1078 to i32
  %1083 = add i8 %1078, %1076
  %1084 = add i8 %1083, %1080
  %1085 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1065, i64 %1066
  %1086 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1063, i64 %1064
  %1087 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1061, i64 %1062
  %1088 = load i16, ptr %1087, align 4, !tbaa !57, !noalias !237
  %1089 = load i16, ptr %1086, align 4, !tbaa !57, !noalias !237
  %1090 = load i16, ptr %1085, align 4, !tbaa !57, !noalias !237
  %1091 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1061, i64 %1062, i32 2
  %1092 = load i8, ptr %1091, align 1, !tbaa !56, !noalias !237
  %1093 = zext i8 %1092 to i32
  %1094 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1063, i64 %1064, i32 2
  %1095 = load i8, ptr %1094, align 1, !tbaa !56, !noalias !237
  %1096 = zext i8 %1095 to i32
  %1097 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %1065, i64 %1066, i32 2
  %1098 = load i8, ptr %1097, align 1, !tbaa !56, !noalias !237
  %1099 = zext i8 %1098 to i32
  %1100 = icmp ugt i8 %1080, 1
  br i1 %1100, label %1101, label %1116

1101:                                             ; preds = %1057
  %1102 = zext i8 %1080 to i32
  %1103 = load i64, ptr %11, align 8, !tbaa !76, !noalias !237
  %1104 = load i32, ptr %122, align 8, !tbaa !80, !noalias !237
  %1105 = and i32 %1104, 63
  %1106 = zext nneg i32 %1105 to i64
  %1107 = shl i64 %1103, %1106
  %1108 = sub nsw i32 0, %1102
  %1109 = and i32 %1108, 63
  %1110 = zext nneg i32 %1109 to i64
  %1111 = lshr i64 %1107, %1110
  %1112 = add i32 %1104, %1102
  store i32 %1112, ptr %122, align 8, !tbaa !80, !noalias !237
  %1113 = zext i32 %1074 to i64
  %1114 = add i64 %1111, %1113
  %1115 = load i64, ptr %29, align 8, !tbaa !44, !noalias !237
  store i64 %1115, ptr %35, align 8, !tbaa !44, !noalias !237
  br label %1155

1116:                                             ; preds = %1057
  %1117 = icmp eq i32 %1071, 0
  %1118 = icmp eq i8 %1080, 0
  br i1 %1118, label %1119, label %1126, !prof !87

1119:                                             ; preds = %1116
  %1120 = zext i1 %1117 to i64
  %1121 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %1120
  %1122 = load i64, ptr %1121, align 8, !tbaa !44, !noalias !237
  %1123 = xor i1 %1117, true
  %1124 = zext i1 %1123 to i64
  %1125 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %1124
  br label %1155

1126:                                             ; preds = %1116
  %1127 = zext i1 %1117 to i32
  %1128 = add i32 %1074, %1127
  %1129 = zext i32 %1128 to i64
  %1130 = load i64, ptr %11, align 8, !tbaa !76, !noalias !237
  %1131 = load i32, ptr %122, align 8, !tbaa !80, !noalias !237
  %1132 = and i32 %1131, 63
  %1133 = zext nneg i32 %1132 to i64
  %1134 = shl i64 %1130, %1133
  %1135 = lshr i64 %1134, 63
  %1136 = add i32 %1131, 1
  store i32 %1136, ptr %122, align 8, !tbaa !80, !noalias !237
  %1137 = add nuw nsw i64 %1135, %1129
  %1138 = icmp eq i64 %1137, 3
  br i1 %1138, label %1139, label %1145

1139:                                             ; preds = %1126
  %1140 = load i64, ptr %28, align 8, !tbaa !44, !noalias !237
  %1141 = add i64 %1140, -1
  %1142 = icmp eq i64 %1141, 0
  %1143 = sext i1 %1142 to i64
  %1144 = add i64 %1141, %1143
  br label %1152

1145:                                             ; preds = %1126
  %1146 = getelementptr inbounds %struct.seqState_t, ptr %11, i64 0, i32 4, i64 %1137
  %1147 = load i64, ptr %1146, align 8, !tbaa !44, !noalias !237
  %1148 = icmp eq i64 %1147, 0
  %1149 = sext i1 %1148 to i64
  %1150 = add i64 %1147, %1149
  %1151 = icmp eq i64 %1137, 1
  br i1 %1151, label %1155, label %1152

1152:                                             ; preds = %1139, %1145
  %1153 = phi i64 [ %1144, %1139 ], [ %1150, %1145 ]
  %1154 = load i64, ptr %29, align 8, !tbaa !44, !noalias !237
  store i64 %1154, ptr %35, align 8, !tbaa !44, !noalias !237
  br label %1155

1155:                                             ; preds = %1145, %1152, %1119, %1101
  %1156 = phi ptr [ %1125, %1119 ], [ %28, %1101 ], [ %28, %1152 ], [ %28, %1145 ]
  %1157 = phi i64 [ %1122, %1119 ], [ %1114, %1101 ], [ %1153, %1152 ], [ %1150, %1145 ]
  %1158 = load i64, ptr %1156, align 8, !tbaa !44, !noalias !237
  store i64 %1158, ptr %29, align 8, !tbaa !44, !noalias !237
  store i64 %1157, ptr %28, align 8, !tbaa !44, !noalias !237
  %1159 = icmp eq i8 %1078, 0
  br i1 %1159, label %1172, label %1160

1160:                                             ; preds = %1155
  %1161 = load i64, ptr %11, align 8, !tbaa !76, !noalias !237
  %1162 = load i32, ptr %122, align 8, !tbaa !80, !noalias !237
  %1163 = and i32 %1162, 63
  %1164 = zext nneg i32 %1163 to i64
  %1165 = shl i64 %1161, %1164
  %1166 = sub nsw i32 0, %1082
  %1167 = and i32 %1166, 63
  %1168 = zext nneg i32 %1167 to i64
  %1169 = lshr i64 %1165, %1168
  %1170 = add i32 %1162, %1082
  store i32 %1170, ptr %122, align 8, !tbaa !80, !noalias !237
  %1171 = add i64 %1169, %1069
  br label %1172

1172:                                             ; preds = %1160, %1155
  %1173 = phi i64 [ %1069, %1155 ], [ %1171, %1160 ]
  %1174 = icmp ugt i8 %1084, 30
  br i1 %1174, label %1175, label %1210, !prof !51

1175:                                             ; preds = %1172
  %1176 = load i32, ptr %122, align 8, !tbaa !80, !noalias !237
  %1177 = icmp ugt i32 %1176, 64
  br i1 %1177, label %1178, label %1179, !prof !51

1178:                                             ; preds = %1175
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75, !noalias !237
  br label %1210

1179:                                             ; preds = %1175
  %1180 = load ptr, ptr %133, align 8, !tbaa !75, !noalias !237
  %1181 = load ptr, ptr %40, align 8, !tbaa !74, !noalias !237
  %1182 = icmp ult ptr %1180, %1181
  br i1 %1182, label %1190, label %1183

1183:                                             ; preds = %1179
  %1184 = lshr i32 %1176, 3
  %1185 = zext nneg i32 %1184 to i64
  %1186 = sub nsw i64 0, %1185
  %1187 = getelementptr inbounds i8, ptr %1180, i64 %1186
  store ptr %1187, ptr %133, align 8, !tbaa !75, !noalias !237
  %1188 = and i32 %1176, 7
  store i32 %1188, ptr %122, align 8, !tbaa !80, !noalias !237
  %1189 = load i64, ptr %1187, align 1, !tbaa !44, !noalias !237
  store i64 %1189, ptr %11, align 8, !tbaa !76, !noalias !237
  br label %1210

1190:                                             ; preds = %1179
  %1191 = load ptr, ptr %38, align 8, !tbaa !72, !noalias !237
  %1192 = icmp eq ptr %1180, %1191
  br i1 %1192, label %1210, label %1193

1193:                                             ; preds = %1190
  %1194 = lshr i32 %1176, 3
  %1195 = zext nneg i32 %1194 to i64
  %1196 = sub nsw i64 0, %1195
  %1197 = getelementptr inbounds i8, ptr %1180, i64 %1196
  %1198 = icmp ult ptr %1197, %1191
  %1199 = ptrtoint ptr %1180 to i64
  %1200 = ptrtoint ptr %1191 to i64
  %1201 = sub i64 %1199, %1200
  %1202 = trunc i64 %1201 to i32
  %1203 = select i1 %1198, i32 %1202, i32 %1194
  %1204 = zext i32 %1203 to i64
  %1205 = sub nsw i64 0, %1204
  %1206 = getelementptr inbounds i8, ptr %1180, i64 %1205
  store ptr %1206, ptr %133, align 8, !tbaa !75, !noalias !237
  %1207 = shl i32 %1203, 3
  %1208 = sub i32 %1176, %1207
  store i32 %1208, ptr %122, align 8, !tbaa !80, !noalias !237
  %1209 = load i64, ptr %1206, align 1, !tbaa !44, !noalias !237
  store i64 %1209, ptr %11, align 8, !tbaa !76, !noalias !237
  br label %1210

1210:                                             ; preds = %1190, %1178, %1183, %1193, %1172
  %1211 = icmp eq i8 %1076, 0
  br i1 %1211, label %1224, label %1212

1212:                                             ; preds = %1210
  %1213 = load i64, ptr %11, align 8, !tbaa !76, !noalias !237
  %1214 = load i32, ptr %122, align 8, !tbaa !80, !noalias !237
  %1215 = and i32 %1214, 63
  %1216 = zext nneg i32 %1215 to i64
  %1217 = shl i64 %1213, %1216
  %1218 = sub nsw i32 0, %1081
  %1219 = and i32 %1218, 63
  %1220 = zext nneg i32 %1219 to i64
  %1221 = lshr i64 %1217, %1220
  %1222 = add i32 %1214, %1081
  store i32 %1222, ptr %122, align 8, !tbaa !80, !noalias !237
  %1223 = add i64 %1221, %1072
  br label %1224

1224:                                             ; preds = %1212, %1210
  %1225 = phi i64 [ %1072, %1210 ], [ %1223, %1212 ]
  br i1 %1060, label %1295, label %1226

1226:                                             ; preds = %1224
  %1227 = load i64, ptr %11, align 8, !tbaa !76, !noalias !237
  %1228 = load i32, ptr %122, align 8, !tbaa !80, !noalias !237
  %1229 = add i32 %1228, %1093
  %1230 = sub i32 0, %1229
  %1231 = and i32 %1230, 63
  %1232 = zext nneg i32 %1231 to i64
  %1233 = lshr i64 %1227, %1232
  %1234 = zext nneg i8 %1092 to i64
  %1235 = shl nsw i64 -1, %1234
  %1236 = xor i64 %1235, -1
  %1237 = and i64 %1233, %1236
  %1238 = zext i16 %1088 to i64
  %1239 = add nuw i64 %1237, %1238
  store i64 %1239, ptr %118, align 8, !tbaa !78, !noalias !237
  %1240 = add i32 %1229, %1096
  %1241 = sub i32 0, %1240
  %1242 = and i32 %1241, 63
  %1243 = zext nneg i32 %1242 to i64
  %1244 = lshr i64 %1227, %1243
  %1245 = zext nneg i8 %1095 to i64
  %1246 = shl nsw i64 -1, %1245
  %1247 = xor i64 %1246, -1
  %1248 = and i64 %1244, %1247
  %1249 = zext i16 %1089 to i64
  %1250 = add nuw i64 %1248, %1249
  store i64 %1250, ptr %216, align 8, !tbaa !78, !noalias !237
  %1251 = add i32 %1240, %1099
  %1252 = sub i32 0, %1251
  %1253 = and i32 %1252, 63
  %1254 = zext nneg i32 %1253 to i64
  %1255 = lshr i64 %1227, %1254
  %1256 = zext nneg i8 %1098 to i64
  %1257 = shl nsw i64 -1, %1256
  %1258 = xor i64 %1257, -1
  %1259 = and i64 %1255, %1258
  store i32 %1251, ptr %122, align 8, !tbaa !80, !noalias !237
  %1260 = zext i16 %1090 to i64
  %1261 = add nuw i64 %1259, %1260
  store i64 %1261, ptr %166, align 8, !tbaa !78, !noalias !237
  %1262 = icmp ugt i32 %1251, 64
  br i1 %1262, label %1263, label %1264, !prof !51

1263:                                             ; preds = %1226
  store ptr @BIT_reloadDStream.zeroFilled, ptr %133, align 8, !tbaa !75, !noalias !237
  br label %1295

1264:                                             ; preds = %1226
  %1265 = load ptr, ptr %133, align 8, !tbaa !75, !noalias !237
  %1266 = load ptr, ptr %40, align 8, !tbaa !74, !noalias !237
  %1267 = icmp ult ptr %1265, %1266
  br i1 %1267, label %1275, label %1268

1268:                                             ; preds = %1264
  %1269 = lshr i32 %1251, 3
  %1270 = zext nneg i32 %1269 to i64
  %1271 = sub nsw i64 0, %1270
  %1272 = getelementptr inbounds i8, ptr %1265, i64 %1271
  store ptr %1272, ptr %133, align 8, !tbaa !75, !noalias !237
  %1273 = and i32 %1251, 7
  store i32 %1273, ptr %122, align 8, !tbaa !80, !noalias !237
  %1274 = load i64, ptr %1272, align 1, !tbaa !44, !noalias !237
  store i64 %1274, ptr %11, align 8, !tbaa !76, !noalias !237
  br label %1295

1275:                                             ; preds = %1264
  %1276 = load ptr, ptr %38, align 8, !tbaa !72, !noalias !237
  %1277 = icmp eq ptr %1265, %1276
  br i1 %1277, label %1295, label %1278

1278:                                             ; preds = %1275
  %1279 = lshr i32 %1251, 3
  %1280 = zext nneg i32 %1279 to i64
  %1281 = sub nsw i64 0, %1280
  %1282 = getelementptr inbounds i8, ptr %1265, i64 %1281
  %1283 = icmp ult ptr %1282, %1276
  %1284 = ptrtoint ptr %1265 to i64
  %1285 = ptrtoint ptr %1276 to i64
  %1286 = sub i64 %1284, %1285
  %1287 = trunc i64 %1286 to i32
  %1288 = select i1 %1283, i32 %1287, i32 %1279
  %1289 = zext i32 %1288 to i64
  %1290 = sub nsw i64 0, %1289
  %1291 = getelementptr inbounds i8, ptr %1265, i64 %1290
  store ptr %1291, ptr %133, align 8, !tbaa !75, !noalias !237
  %1292 = shl i32 %1288, 3
  %1293 = sub i32 %1251, %1292
  store i32 %1293, ptr %122, align 8, !tbaa !80, !noalias !237
  %1294 = load i64, ptr %1291, align 1, !tbaa !44, !noalias !237
  store i64 %1294, ptr %11, align 8, !tbaa !76, !noalias !237
  br label %1295

1295:                                             ; preds = %1275, %1263, %1268, %1278, %1224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  store i64 %1225, ptr %9, align 8
  store i64 %1173, ptr %1055, align 8
  store i64 %1157, ptr %1056, align 8
  %1296 = getelementptr inbounds i8, ptr %1059, i64 %1225
  %1297 = add i64 %1225, %1173
  %1298 = load ptr, ptr %10, align 8, !tbaa !38
  %1299 = getelementptr inbounds i8, ptr %1298, i64 %1225
  %1300 = sub i64 0, %1157
  %1301 = getelementptr inbounds i8, ptr %1296, i64 %1300
  %1302 = icmp ugt ptr %1299, %868
  %1303 = getelementptr inbounds i8, ptr %1059, i64 %1297
  %1304 = icmp ugt ptr %1303, %879
  %1305 = select i1 %1302, i1 true, i1 %1304
  br i1 %1305, label %1310, label %1306, !prof !111

1306:                                             ; preds = %1295
  %1307 = load <2 x i64>, ptr %1298, align 1, !tbaa !9
  store <2 x i64> %1307, ptr %1059, align 1, !tbaa !9
  %1308 = load i64, ptr %9, align 8, !tbaa !109
  %1309 = icmp ugt i64 %1308, 16
  br i1 %1309, label %1312, label %1331, !prof !51

1310:                                             ; preds = %1295
  %1311 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1059, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %868, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %1469

1312:                                             ; preds = %1306
  %1313 = getelementptr inbounds i8, ptr %1059, i64 16
  %1314 = getelementptr inbounds i8, ptr %1298, i64 16
  %1315 = add i64 %1308, -16
  %1316 = getelementptr inbounds i8, ptr %1059, i64 %1308
  %1317 = load <2 x i64>, ptr %1314, align 1, !tbaa !9
  store <2 x i64> %1317, ptr %1313, align 1, !tbaa !9
  %1318 = icmp ult i64 %1315, 17
  br i1 %1318, label %1331, label %1319

1319:                                             ; preds = %1312
  %1320 = getelementptr inbounds i8, ptr %1059, i64 32
  br label %1321

1321:                                             ; preds = %1321, %1319
  %1322 = phi ptr [ %1320, %1319 ], [ %1329, %1321 ]
  %1323 = phi ptr [ %1314, %1319 ], [ %1327, %1321 ]
  %1324 = getelementptr inbounds i8, ptr %1323, i64 16
  %1325 = load <2 x i64>, ptr %1324, align 1, !tbaa !9
  store <2 x i64> %1325, ptr %1322, align 1, !tbaa !9
  %1326 = getelementptr inbounds i8, ptr %1322, i64 16
  %1327 = getelementptr inbounds i8, ptr %1323, i64 32
  %1328 = load <2 x i64>, ptr %1327, align 1, !tbaa !9
  store <2 x i64> %1328, ptr %1326, align 1, !tbaa !9
  %1329 = getelementptr inbounds i8, ptr %1322, i64 32
  %1330 = icmp ult ptr %1329, %1316
  br i1 %1330, label %1321, label %1331, !llvm.loop !105

1331:                                             ; preds = %1321, %1312, %1306
  store ptr %1299, ptr %10, align 8, !tbaa !38
  %1332 = load i64, ptr %1056, align 8, !tbaa !136
  %1333 = ptrtoint ptr %1296 to i64
  %1334 = sub i64 %1333, %265
  %1335 = icmp ugt i64 %1332, %1334
  br i1 %1335, label %1336, label %1352

1336:                                             ; preds = %1331
  %1337 = sub i64 %1333, %266
  %1338 = icmp ugt i64 %1332, %1337
  br i1 %1338, label %1339, label %1340, !prof !51

1339:                                             ; preds = %1336
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  br label %1491

1340:                                             ; preds = %1336
  %1341 = ptrtoint ptr %1301 to i64
  %1342 = sub i64 %1341, %265
  %1343 = getelementptr inbounds i8, ptr %23, i64 %1342
  %1344 = load i64, ptr %1055, align 8, !tbaa !137
  %1345 = getelementptr inbounds i8, ptr %1343, i64 %1344
  %1346 = icmp ugt ptr %1345, %23
  br i1 %1346, label %1348, label %1347

1347:                                             ; preds = %1340
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1296, ptr align 1 %1343, i64 %1344, i1 false)
  br label %1469

1348:                                             ; preds = %1340
  %1349 = sub i64 0, %1342
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1296, ptr align 1 %1343, i64 %1349, i1 false)
  %1350 = getelementptr inbounds i8, ptr %1296, i64 %1349
  %1351 = add i64 %1344, %1342
  store i64 %1351, ptr %1055, align 8, !tbaa !137
  br label %1352

1352:                                             ; preds = %1348, %1331
  %1353 = phi ptr [ %1350, %1348 ], [ %1296, %1331 ]
  %1354 = phi ptr [ %19, %1348 ], [ %1301, %1331 ]
  %1355 = ptrtoint ptr %1353 to i64
  %1356 = icmp ugt i64 %1332, 15
  br i1 %1356, label %1357, label %1374, !prof !87

1357:                                             ; preds = %1352
  %1358 = load i64, ptr %1055, align 8, !tbaa !137
  %1359 = getelementptr inbounds i8, ptr %1353, i64 %1358
  %1360 = load <2 x i64>, ptr %1354, align 1, !tbaa !9
  store <2 x i64> %1360, ptr %1353, align 1, !tbaa !9
  %1361 = icmp ult i64 %1358, 17
  br i1 %1361, label %1469, label %1362

1362:                                             ; preds = %1357
  %1363 = getelementptr inbounds i8, ptr %1353, i64 16
  br label %1364

1364:                                             ; preds = %1364, %1362
  %1365 = phi ptr [ %1363, %1362 ], [ %1372, %1364 ]
  %1366 = phi ptr [ %1354, %1362 ], [ %1370, %1364 ]
  %1367 = getelementptr inbounds i8, ptr %1366, i64 16
  %1368 = load <2 x i64>, ptr %1367, align 1, !tbaa !9
  store <2 x i64> %1368, ptr %1365, align 1, !tbaa !9
  %1369 = getelementptr inbounds i8, ptr %1365, i64 16
  %1370 = getelementptr inbounds i8, ptr %1366, i64 32
  %1371 = load <2 x i64>, ptr %1370, align 1, !tbaa !9
  store <2 x i64> %1371, ptr %1369, align 1, !tbaa !9
  %1372 = getelementptr inbounds i8, ptr %1365, i64 32
  %1373 = icmp ult ptr %1372, %1359
  br i1 %1373, label %1364, label %1469, !llvm.loop !105

1374:                                             ; preds = %1352
  %1375 = icmp ult i64 %1332, 8
  br i1 %1375, label %1376, label %1398

1376:                                             ; preds = %1374
  %1377 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1332
  %1378 = load i32, ptr %1377, align 4, !tbaa !28
  %1379 = load i8, ptr %1354, align 1, !tbaa !9
  store i8 %1379, ptr %1353, align 1, !tbaa !9
  %1380 = getelementptr inbounds i8, ptr %1354, i64 1
  %1381 = load i8, ptr %1380, align 1, !tbaa !9
  %1382 = getelementptr inbounds i8, ptr %1353, i64 1
  store i8 %1381, ptr %1382, align 1, !tbaa !9
  %1383 = getelementptr inbounds i8, ptr %1354, i64 2
  %1384 = load i8, ptr %1383, align 1, !tbaa !9
  %1385 = getelementptr inbounds i8, ptr %1353, i64 2
  store i8 %1384, ptr %1385, align 1, !tbaa !9
  %1386 = getelementptr inbounds i8, ptr %1354, i64 3
  %1387 = load i8, ptr %1386, align 1, !tbaa !9
  %1388 = getelementptr inbounds i8, ptr %1353, i64 3
  store i8 %1387, ptr %1388, align 1, !tbaa !9
  %1389 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1332
  %1390 = load i32, ptr %1389, align 4, !tbaa !28
  %1391 = zext i32 %1390 to i64
  %1392 = getelementptr inbounds i8, ptr %1354, i64 %1391
  %1393 = getelementptr inbounds i8, ptr %1353, i64 4
  %1394 = load i32, ptr %1392, align 1
  store i32 %1394, ptr %1393, align 1
  %1395 = sext i32 %1378 to i64
  %1396 = sub nsw i64 0, %1395
  %1397 = getelementptr inbounds i8, ptr %1392, i64 %1396
  br label %1400

1398:                                             ; preds = %1374
  %1399 = load i64, ptr %1354, align 1
  store i64 %1399, ptr %1353, align 1
  br label %1400

1400:                                             ; preds = %1398, %1376
  %1401 = phi ptr [ %1397, %1376 ], [ %1354, %1398 ]
  %1402 = getelementptr i8, ptr %1401, i64 8
  %1403 = getelementptr i8, ptr %1353, i64 8
  %1404 = load i64, ptr %1055, align 8, !tbaa !137
  %1405 = icmp ugt i64 %1404, 8
  br i1 %1405, label %1406, label %1469

1406:                                             ; preds = %1400
  %1407 = ptrtoint ptr %1403 to i64
  %1408 = ptrtoint ptr %1402 to i64
  %1409 = sub i64 %1407, %1408
  %1410 = getelementptr inbounds i8, ptr %1353, i64 %1404
  %1411 = icmp slt i64 %1409, 16
  br i1 %1411, label %1412, label %1453

1412:                                             ; preds = %1406
  %1413 = add i64 %1404, %1355
  %1414 = add i64 %1355, 16
  %1415 = tail call i64 @llvm.umax.i64(i64 %1413, i64 %1414)
  %1416 = add i64 %1415, -9
  %1417 = sub i64 %1416, %1355
  %1418 = lshr i64 %1417, 3
  %1419 = add nuw nsw i64 %1418, 1
  %1420 = icmp ult i64 %1417, 24
  %1421 = icmp ult i64 %1409, 32
  %1422 = or i1 %1420, %1421
  br i1 %1422, label %1443, label %1423

1423:                                             ; preds = %1412
  %1424 = and i64 %1419, 4611686018427387900
  %1425 = shl i64 %1424, 3
  %1426 = getelementptr i8, ptr %1403, i64 %1425
  %1427 = shl i64 %1424, 3
  %1428 = getelementptr i8, ptr %1402, i64 %1427
  br label %1429

1429:                                             ; preds = %1429, %1423
  %1430 = phi i64 [ 0, %1423 ], [ %1439, %1429 ]
  %1431 = shl i64 %1430, 3
  %1432 = getelementptr i8, ptr %1403, i64 %1431
  %1433 = shl i64 %1430, 3
  %1434 = getelementptr i8, ptr %1402, i64 %1433
  %1435 = getelementptr i64, ptr %1434, i64 2
  %1436 = load <2 x i64>, ptr %1434, align 1
  %1437 = load <2 x i64>, ptr %1435, align 1
  %1438 = getelementptr i64, ptr %1432, i64 2
  store <2 x i64> %1436, ptr %1432, align 1
  store <2 x i64> %1437, ptr %1438, align 1
  %1439 = add nuw i64 %1430, 4
  %1440 = icmp eq i64 %1439, %1424
  br i1 %1440, label %1441, label %1429, !llvm.loop !240

1441:                                             ; preds = %1429
  %1442 = icmp eq i64 %1419, %1424
  br i1 %1442, label %1469, label %1443

1443:                                             ; preds = %1412, %1441
  %1444 = phi ptr [ %1403, %1412 ], [ %1426, %1441 ]
  %1445 = phi ptr [ %1402, %1412 ], [ %1428, %1441 ]
  br label %1446

1446:                                             ; preds = %1443, %1446
  %1447 = phi ptr [ %1450, %1446 ], [ %1444, %1443 ]
  %1448 = phi ptr [ %1451, %1446 ], [ %1445, %1443 ]
  %1449 = load i64, ptr %1448, align 1
  store i64 %1449, ptr %1447, align 1
  %1450 = getelementptr inbounds i8, ptr %1447, i64 8
  %1451 = getelementptr inbounds i8, ptr %1448, i64 8
  %1452 = icmp ult ptr %1450, %1410
  br i1 %1452, label %1446, label %1469, !llvm.loop !241

1453:                                             ; preds = %1406
  %1454 = add i64 %1404, -8
  %1455 = load <2 x i64>, ptr %1402, align 1, !tbaa !9
  store <2 x i64> %1455, ptr %1403, align 1, !tbaa !9
  %1456 = icmp ult i64 %1454, 17
  br i1 %1456, label %1469, label %1457

1457:                                             ; preds = %1453
  %1458 = getelementptr inbounds i8, ptr %1353, i64 24
  br label %1459

1459:                                             ; preds = %1459, %1457
  %1460 = phi ptr [ %1458, %1457 ], [ %1467, %1459 ]
  %1461 = phi ptr [ %1402, %1457 ], [ %1465, %1459 ]
  %1462 = getelementptr inbounds i8, ptr %1461, i64 16
  %1463 = load <2 x i64>, ptr %1462, align 1, !tbaa !9
  store <2 x i64> %1463, ptr %1460, align 1, !tbaa !9
  %1464 = getelementptr inbounds i8, ptr %1460, i64 16
  %1465 = getelementptr inbounds i8, ptr %1461, i64 32
  %1466 = load <2 x i64>, ptr %1465, align 1, !tbaa !9
  store <2 x i64> %1466, ptr %1464, align 1, !tbaa !9
  %1467 = getelementptr inbounds i8, ptr %1460, i64 32
  %1468 = icmp ult ptr %1467, %1410
  br i1 %1468, label %1459, label %1469, !llvm.loop !105

1469:                                             ; preds = %1459, %1446, %1364, %1441, %1453, %1357, %1400, %1347, %1310
  %1470 = phi i64 [ %1311, %1310 ], [ %1297, %1347 ], [ %1297, %1400 ], [ %1297, %1357 ], [ %1297, %1453 ], [ %1297, %1441 ], [ %1297, %1364 ], [ %1297, %1446 ], [ %1297, %1459 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  %1471 = icmp ult i64 %1470, -119
  br i1 %1471, label %1472, label %1491

1472:                                             ; preds = %1469
  %1473 = getelementptr inbounds i8, ptr %1059, i64 %1470
  %1474 = add i32 %1058, -1
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1476, label %1057, !llvm.loop !159

1476:                                             ; preds = %698, %1472, %1051, %1052
  %1477 = phi ptr [ %1049, %1052 ], [ %1049, %1051 ], [ %1473, %1472 ], [ %693, %698 ]
  %1478 = phi ptr [ %868, %1052 ], [ %868, %1051 ], [ %868, %1472 ], [ %17, %698 ]
  %1479 = load ptr, ptr %133, align 8, !tbaa !75
  %1480 = load ptr, ptr %38, align 8, !tbaa !72
  %1481 = icmp eq ptr %1479, %1480
  %1482 = load i32, ptr %122, align 8
  %1483 = icmp eq i32 %1482, 64
  %1484 = select i1 %1481, i1 %1483, i1 false
  br i1 %1484, label %1485, label %1491

1485:                                             ; preds = %1476
  %1486 = load <2 x i64>, ptr %28, align 8, !tbaa !44
  %1487 = trunc <2 x i64> %1486 to <2 x i32>
  store <2 x i32> %1487, ptr %27, align 4, !tbaa !28
  %1488 = load i64, ptr %35, align 8, !tbaa !44
  %1489 = trunc i64 %1488 to i32
  store i32 %1489, ptr %32, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #16
  %1490 = load ptr, ptr %10, align 8, !tbaa !38
  br label %1493

1491:                                             ; preds = %690, %1469, %93, %42, %25, %916, %701, %1046, %106, %1339, %560, %710, %1476
  %1492 = phi i64 [ -20, %1339 ], [ -20, %106 ], [ %1047, %1046 ], [ -70, %710 ], [ -20, %560 ], [ -20, %1476 ], [ -20, %701 ], [ -20, %916 ], [ -20, %25 ], [ -20, %42 ], [ -20, %93 ], [ %1470, %1469 ], [ %691, %690 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #16
  br label %1538

1493:                                             ; preds = %1485, %6
  %1494 = phi ptr [ %1490, %1485 ], [ %15, %6 ]
  %1495 = phi ptr [ %1478, %1485 ], [ %17, %6 ]
  %1496 = phi ptr [ %1477, %1485 ], [ %1, %6 ]
  %1497 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %1498 = load i32, ptr %1497, align 8, !tbaa !32
  %1499 = icmp eq i32 %1498, 2
  br i1 %1499, label %1502, label %1500

1500:                                             ; preds = %1493
  %1501 = ptrtoint ptr %13 to i64
  br label %1518

1502:                                             ; preds = %1493
  %1503 = ptrtoint ptr %1495 to i64
  %1504 = ptrtoint ptr %1494 to i64
  %1505 = sub i64 %1503, %1504
  %1506 = ptrtoint ptr %13 to i64
  %1507 = ptrtoint ptr %1496 to i64
  %1508 = sub i64 %1506, %1507
  %1509 = icmp ugt i64 %1505, %1508
  br i1 %1509, label %1538, label %1510

1510:                                             ; preds = %1502
  %1511 = icmp eq ptr %1496, null
  br i1 %1511, label %1514, label %1512

1512:                                             ; preds = %1510
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1496, ptr align 1 %1494, i64 %1505, i1 false)
  %1513 = getelementptr inbounds i8, ptr %1496, i64 %1505
  br label %1514

1514:                                             ; preds = %1510, %1512
  %1515 = phi ptr [ %1513, %1512 ], [ null, %1510 ]
  %1516 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56
  %1517 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 56, i64 65536
  store i32 0, ptr %1497, align 8, !tbaa !32
  br label %1518

1518:                                             ; preds = %1500, %1514
  %1519 = phi i64 [ %1501, %1500 ], [ %1506, %1514 ]
  %1520 = phi ptr [ %1494, %1500 ], [ %1516, %1514 ]
  %1521 = phi ptr [ %1495, %1500 ], [ %1517, %1514 ]
  %1522 = phi ptr [ %1496, %1500 ], [ %1515, %1514 ]
  %1523 = ptrtoint ptr %1521 to i64
  %1524 = ptrtoint ptr %1520 to i64
  %1525 = sub i64 %1523, %1524
  %1526 = ptrtoint ptr %1522 to i64
  %1527 = sub i64 %1519, %1526
  %1528 = icmp ugt i64 %1525, %1527
  br i1 %1528, label %1538, label %1529

1529:                                             ; preds = %1518
  %1530 = icmp eq ptr %1522, null
  br i1 %1530, label %1534, label %1531

1531:                                             ; preds = %1529
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1522, ptr align 1 %1520, i64 %1525, i1 false)
  %1532 = getelementptr inbounds i8, ptr %1522, i64 %1525
  %1533 = ptrtoint ptr %1532 to i64
  br label %1534

1534:                                             ; preds = %1531, %1529
  %1535 = phi i64 [ 0, %1529 ], [ %1533, %1531 ]
  %1536 = ptrtoint ptr %1 to i64
  %1537 = sub i64 %1535, %1536
  br label %1538

1538:                                             ; preds = %1502, %1518, %1491, %1534
  %1539 = phi i64 [ %1537, %1534 ], [ %1492, %1491 ], [ -70, %1518 ], [ -70, %1502 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  ret i64 %1539
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences_bmi2(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #12 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 55
  %11 = load i32, ptr %10, align 8, !tbaa !32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %19

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %18, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  store ptr %22, ptr %8, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 25
  %24 = load i64, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %714, label %33

33:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #16
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  store i32 1, ptr %34, align 4, !tbaa !62
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 0
  %36 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 0
  %37 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 1
  %38 = load <2 x i32>, ptr %35, align 4, !tbaa !28
  %39 = zext <2 x i32> %38 to <2 x i64>
  store <2 x i64> %39, ptr %36, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  %41 = load i32, ptr %40, align 4, !tbaa !28
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 2
  store i64 %42, ptr %43, align 8, !tbaa !44
  %44 = icmp eq i64 %4, 0
  br i1 %44, label %712, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 3
  store ptr %3, ptr %46, align 8, !tbaa !72
  %47 = getelementptr inbounds i8, ptr %3, i64 8
  %48 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 4
  store ptr %47, ptr %48, align 8, !tbaa !74
  %49 = icmp ugt i64 %4, 7
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = add nsw i64 %4, -8
  %52 = getelementptr inbounds i8, ptr %3, i64 %51
  %53 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !75
  %54 = load i64, ptr %52, align 1
  store i64 %54, ptr %9, align 8, !tbaa !76
  %55 = icmp ult i64 %54, 72057594037927936
  br i1 %55, label %712, label %114

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  store ptr %3, ptr %57, align 8, !tbaa !75
  %58 = load i8, ptr %3, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  store i64 %59, ptr %9, align 8, !tbaa !76
  switch i64 %4, label %101 [
    i64 7, label %60
    i64 6, label %66
    i64 5, label %73
    i64 4, label %80
    i64 3, label %87
    i64 2, label %94
  ]

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %3, i64 6
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 48
  %65 = or disjoint i64 %64, %59
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i64 [ %59, %56 ], [ %65, %60 ]
  %68 = getelementptr inbounds i8, ptr %3, i64 5
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 40
  %72 = add nuw nsw i64 %71, %67
  br label %73

73:                                               ; preds = %66, %56
  %74 = phi i64 [ %59, %56 ], [ %72, %66 ]
  %75 = getelementptr inbounds i8, ptr %3, i64 4
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 32
  %79 = add nuw nsw i64 %78, %74
  br label %80

80:                                               ; preds = %73, %56
  %81 = phi i64 [ %59, %56 ], [ %79, %73 ]
  %82 = getelementptr inbounds i8, ptr %3, i64 3
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 24
  %86 = add nuw nsw i64 %85, %81
  br label %87

87:                                               ; preds = %80, %56
  %88 = phi i64 [ %59, %56 ], [ %86, %80 ]
  %89 = getelementptr inbounds i8, ptr %3, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 16
  %93 = add nuw nsw i64 %92, %88
  br label %94

94:                                               ; preds = %87, %56
  %95 = phi i64 [ %59, %56 ], [ %93, %87 ]
  %96 = getelementptr inbounds i8, ptr %3, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = add nuw nsw i64 %99, %95
  store i64 %100, ptr %9, align 8, !tbaa !76
  br label %101

101:                                              ; preds = %94, %56
  %102 = phi i64 [ %100, %94 ], [ %59, %56 ]
  %103 = getelementptr i8, ptr %3, i64 %4
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %712, label %107

107:                                              ; preds = %101
  %108 = zext i8 %105 to i32
  %109 = tail call i32 @llvm.ctlz.i32(i32 %108, i1 true), !range !55
  %110 = trunc i64 %4 to i32
  %111 = shl nuw nsw i32 %110, 3
  %112 = sub nsw i32 %109, %111
  %113 = add nsw i32 %112, 41
  br label %121

114:                                              ; preds = %50
  %115 = lshr i64 %54, 56
  %116 = trunc i64 %115 to i32
  %117 = tail call i32 @llvm.ctlz.i32(i32 %116, i1 true), !range !55
  %118 = xor i32 %117, 31
  %119 = sub nuw nsw i32 8, %118
  %120 = icmp ult i64 %4, -119
  br i1 %120, label %121, label %712

121:                                              ; preds = %107, %114
  %122 = phi i64 [ 0, %107 ], [ %51, %114 ]
  %123 = phi i32 [ %113, %107 ], [ %119, %114 ]
  %124 = phi i64 [ %102, %107 ], [ %54, %114 ]
  %125 = getelementptr inbounds i8, ptr %3, i64 %122
  %126 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1
  %127 = load ptr, ptr %0, align 8, !tbaa !77
  %128 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %127, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !63
  %130 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 1
  %131 = add i32 %123, %129
  %132 = sub i32 0, %131
  %133 = and i32 %132, 63
  %134 = zext nneg i32 %133 to i64
  %135 = lshr i64 %124, %134
  %136 = zext nneg i32 %129 to i64
  %137 = shl nsw i64 -1, %136
  %138 = xor i64 %137, -1
  %139 = and i64 %135, %138
  store i64 %139, ptr %126, align 8, !tbaa !78
  %140 = icmp ugt i32 %131, 64
  %141 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i64 0, i32 2
  br i1 %140, label %142, label %143, !prof !51

142:                                              ; preds = %121
  store ptr @BIT_reloadDStream.zeroFilled, ptr %141, align 8, !tbaa !75
  br label %168

143:                                              ; preds = %121
  %144 = icmp slt i64 %122, 8
  br i1 %144, label %152, label %145

145:                                              ; preds = %143
  %146 = lshr i32 %131, 3
  %147 = zext nneg i32 %146 to i64
  %148 = sub nsw i64 0, %147
  %149 = getelementptr inbounds i8, ptr %125, i64 %148
  store ptr %149, ptr %141, align 8, !tbaa !75
  %150 = and i32 %131, 7
  store i32 %150, ptr %130, align 8, !tbaa !80
  %151 = load i64, ptr %149, align 1, !tbaa !44
  store i64 %151, ptr %9, align 8, !tbaa !76
  br label %168

152:                                              ; preds = %143
  %153 = icmp eq i64 %122, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %152
  %155 = lshr i32 %131, 3
  %156 = zext nneg i32 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %125, i64 %157
  %159 = icmp ult ptr %158, %3
  %160 = trunc i64 %122 to i32
  %161 = select i1 %159, i32 %160, i32 %155
  %162 = zext i32 %161 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %125, i64 %163
  store ptr %164, ptr %141, align 8, !tbaa !75
  %165 = shl i32 %161, 3
  %166 = sub i32 %131, %165
  store i32 %166, ptr %130, align 8, !tbaa !80
  %167 = load i64, ptr %164, align 1, !tbaa !44
  store i64 %167, ptr %9, align 8, !tbaa !76
  br label %168

168:                                              ; preds = %142, %145, %152, %154
  %169 = phi ptr [ @BIT_reloadDStream.zeroFilled, %142 ], [ %149, %145 ], [ %3, %152 ], [ %164, %154 ]
  %170 = phi i32 [ %131, %142 ], [ %150, %145 ], [ %131, %152 ], [ %166, %154 ]
  %171 = phi i64 [ %124, %142 ], [ %151, %145 ], [ %124, %152 ], [ %167, %154 ]
  %172 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %127, i64 1
  %173 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 1, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !81
  %174 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2
  %175 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !68
  %177 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %176, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !63
  %179 = add i32 %170, %178
  %180 = sub i32 0, %179
  %181 = and i32 %180, 63
  %182 = zext nneg i32 %181 to i64
  %183 = lshr i64 %171, %182
  %184 = zext nneg i32 %178 to i64
  %185 = shl nsw i64 -1, %184
  %186 = xor i64 %185, -1
  %187 = and i64 %183, %186
  store i64 %187, ptr %174, align 8, !tbaa !78
  %188 = icmp ugt i32 %179, 64
  br i1 %188, label %189, label %190, !prof !51

189:                                              ; preds = %168
  store ptr @BIT_reloadDStream.zeroFilled, ptr %141, align 8, !tbaa !75
  br label %218

190:                                              ; preds = %168
  %191 = icmp ult ptr %169, %47
  br i1 %191, label %199, label %192

192:                                              ; preds = %190
  %193 = lshr i32 %179, 3
  %194 = zext nneg i32 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %169, i64 %195
  store ptr %196, ptr %141, align 8, !tbaa !75
  %197 = and i32 %179, 7
  %198 = load i64, ptr %196, align 1, !tbaa !44
  store i64 %198, ptr %9, align 8, !tbaa !76
  br label %218

199:                                              ; preds = %190
  %200 = icmp eq ptr %169, %3
  br i1 %200, label %218, label %201

201:                                              ; preds = %199
  %202 = lshr i32 %179, 3
  %203 = zext nneg i32 %202 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr inbounds i8, ptr %169, i64 %204
  %206 = icmp ult ptr %205, %3
  %207 = ptrtoint ptr %169 to i64
  %208 = ptrtoint ptr %3 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  %211 = select i1 %206, i32 %210, i32 %202
  %212 = zext i32 %211 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, ptr %169, i64 %213
  store ptr %214, ptr %141, align 8, !tbaa !75
  %215 = shl i32 %211, 3
  %216 = sub i32 %179, %215
  %217 = load i64, ptr %214, align 1, !tbaa !44
  store i64 %217, ptr %9, align 8, !tbaa !76
  br label %218

218:                                              ; preds = %189, %192, %199, %201
  %219 = phi ptr [ @BIT_reloadDStream.zeroFilled, %189 ], [ %196, %192 ], [ %3, %199 ], [ %214, %201 ]
  %220 = phi i32 [ %179, %189 ], [ %197, %192 ], [ %179, %199 ], [ %216, %201 ]
  %221 = phi i64 [ %171, %189 ], [ %198, %192 ], [ %171, %199 ], [ %217, %201 ]
  %222 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %176, i64 1
  %223 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 2, i32 1
  store ptr %222, ptr %223, align 8, !tbaa !81
  %224 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3
  %225 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !82
  %227 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !63
  %229 = add i32 %220, %228
  %230 = sub i32 0, %229
  %231 = and i32 %230, 63
  %232 = zext nneg i32 %231 to i64
  %233 = lshr i64 %221, %232
  %234 = zext nneg i32 %228 to i64
  %235 = shl nsw i64 -1, %234
  %236 = xor i64 %235, -1
  %237 = and i64 %233, %236
  store i32 %229, ptr %130, align 8, !tbaa !80
  store i64 %237, ptr %224, align 8, !tbaa !78
  %238 = icmp ugt i32 %229, 64
  br i1 %238, label %239, label %240, !prof !51

239:                                              ; preds = %218
  store ptr @BIT_reloadDStream.zeroFilled, ptr %141, align 8, !tbaa !75
  br label %268

240:                                              ; preds = %218
  %241 = icmp ult ptr %219, %47
  br i1 %241, label %249, label %242

242:                                              ; preds = %240
  %243 = lshr i32 %229, 3
  %244 = zext nneg i32 %243 to i64
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %219, i64 %245
  store ptr %246, ptr %141, align 8, !tbaa !75
  %247 = and i32 %229, 7
  store i32 %247, ptr %130, align 8, !tbaa !80
  %248 = load i64, ptr %246, align 1, !tbaa !44
  store i64 %248, ptr %9, align 8, !tbaa !76
  br label %268

249:                                              ; preds = %240
  %250 = icmp eq ptr %219, %3
  br i1 %250, label %268, label %251

251:                                              ; preds = %249
  %252 = lshr i32 %229, 3
  %253 = zext nneg i32 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds i8, ptr %219, i64 %254
  %256 = icmp ult ptr %255, %3
  %257 = ptrtoint ptr %219 to i64
  %258 = ptrtoint ptr %3 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  %261 = select i1 %256, i32 %260, i32 %252
  %262 = zext i32 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %219, i64 %263
  store ptr %264, ptr %141, align 8, !tbaa !75
  %265 = shl i32 %261, 3
  %266 = sub i32 %229, %265
  store i32 %266, ptr %130, align 8, !tbaa !80
  %267 = load i64, ptr %264, align 1, !tbaa !44
  store i64 %267, ptr %9, align 8, !tbaa !76
  br label %268

268:                                              ; preds = %239, %242, %249, %251
  %269 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %226, i64 1
  %270 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 3, i32 1
  store ptr %269, ptr %270, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !160
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !161
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !162
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !163
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !164
  %271 = getelementptr inbounds i8, ptr %7, i64 8
  %272 = getelementptr inbounds i8, ptr %7, i64 16
  %273 = getelementptr inbounds i8, ptr %20, i64 -32
  %274 = ptrtoint ptr %27 to i64
  %275 = ptrtoint ptr %29 to i64
  br label %276

276:                                              ; preds = %268, %696
  %277 = phi i32 [ %5, %268 ], [ %697, %696 ]
  %278 = phi ptr [ %1, %268 ], [ %691, %696 ]
  %279 = icmp eq i32 %277, 1
  %280 = load ptr, ptr %173, align 8, !tbaa !92, !noalias !242
  %281 = load i64, ptr %126, align 8, !tbaa !97, !noalias !242
  %282 = load ptr, ptr %270, align 8, !tbaa !98, !noalias !242
  %283 = load i64, ptr %224, align 8, !tbaa !99, !noalias !242
  %284 = load ptr, ptr %223, align 8, !tbaa !100, !noalias !242
  %285 = load i64, ptr %174, align 8, !tbaa !101, !noalias !242
  %286 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %282, i64 %283, i32 3
  %287 = load i32, ptr %286, align 4, !tbaa !41, !noalias !242
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %280, i64 %281, i32 3
  %290 = load i32, ptr %289, align 4, !tbaa !41, !noalias !242
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %285, i32 3
  %293 = load i32, ptr %292, align 4, !tbaa !41, !noalias !242
  %294 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %280, i64 %281, i32 1
  %295 = load i8, ptr %294, align 2, !tbaa !58, !noalias !242
  %296 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %282, i64 %283, i32 1
  %297 = load i8, ptr %296, align 2, !tbaa !58, !noalias !242
  %298 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %285, i32 1
  %299 = load i8, ptr %298, align 2, !tbaa !58, !noalias !242
  %300 = zext i8 %295 to i32
  %301 = zext i8 %297 to i32
  %302 = add i8 %297, %295
  %303 = add i8 %302, %299
  %304 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %285
  %305 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %282, i64 %283
  %306 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %280, i64 %281
  %307 = load i16, ptr %306, align 4, !tbaa !57, !noalias !242
  %308 = load i16, ptr %305, align 4, !tbaa !57, !noalias !242
  %309 = load i16, ptr %304, align 4, !tbaa !57, !noalias !242
  %310 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %280, i64 %281, i32 2
  %311 = load i8, ptr %310, align 1, !tbaa !56, !noalias !242
  %312 = zext i8 %311 to i32
  %313 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %282, i64 %283, i32 2
  %314 = load i8, ptr %313, align 1, !tbaa !56, !noalias !242
  %315 = zext i8 %314 to i32
  %316 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %284, i64 %285, i32 2
  %317 = load i8, ptr %316, align 1, !tbaa !56, !noalias !242
  %318 = zext i8 %317 to i32
  %319 = icmp ugt i8 %299, 1
  br i1 %319, label %320, label %335

320:                                              ; preds = %276
  %321 = zext i8 %299 to i32
  %322 = load i64, ptr %9, align 8, !tbaa !76, !noalias !242
  %323 = load i32, ptr %130, align 8, !tbaa !80, !noalias !242
  %324 = and i32 %323, 63
  %325 = zext nneg i32 %324 to i64
  %326 = shl i64 %322, %325
  %327 = sub nsw i32 0, %321
  %328 = and i32 %327, 63
  %329 = zext nneg i32 %328 to i64
  %330 = lshr i64 %326, %329
  %331 = add i32 %323, %321
  store i32 %331, ptr %130, align 8, !tbaa !80, !noalias !242
  %332 = zext i32 %293 to i64
  %333 = add i64 %330, %332
  %334 = load i64, ptr %37, align 8, !tbaa !44, !noalias !242
  store i64 %334, ptr %43, align 8, !tbaa !44, !noalias !242
  br label %374

335:                                              ; preds = %276
  %336 = icmp eq i32 %290, 0
  %337 = icmp eq i8 %299, 0
  br i1 %337, label %338, label %345, !prof !87

338:                                              ; preds = %335
  %339 = zext i1 %336 to i64
  %340 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %339
  %341 = load i64, ptr %340, align 8, !tbaa !44, !noalias !242
  %342 = xor i1 %336, true
  %343 = zext i1 %342 to i64
  %344 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %343
  br label %374

345:                                              ; preds = %335
  %346 = zext i1 %336 to i32
  %347 = add i32 %293, %346
  %348 = zext i32 %347 to i64
  %349 = load i64, ptr %9, align 8, !tbaa !76, !noalias !242
  %350 = load i32, ptr %130, align 8, !tbaa !80, !noalias !242
  %351 = and i32 %350, 63
  %352 = zext nneg i32 %351 to i64
  %353 = shl i64 %349, %352
  %354 = lshr i64 %353, 63
  %355 = add i32 %350, 1
  store i32 %355, ptr %130, align 8, !tbaa !80, !noalias !242
  %356 = add nuw nsw i64 %354, %348
  %357 = icmp eq i64 %356, 3
  br i1 %357, label %358, label %364

358:                                              ; preds = %345
  %359 = load i64, ptr %36, align 8, !tbaa !44, !noalias !242
  %360 = add i64 %359, -1
  %361 = icmp eq i64 %360, 0
  %362 = sext i1 %361 to i64
  %363 = add i64 %360, %362
  br label %371

364:                                              ; preds = %345
  %365 = getelementptr inbounds %struct.seqState_t, ptr %9, i64 0, i32 4, i64 %356
  %366 = load i64, ptr %365, align 8, !tbaa !44, !noalias !242
  %367 = icmp eq i64 %366, 0
  %368 = sext i1 %367 to i64
  %369 = add i64 %366, %368
  %370 = icmp eq i64 %356, 1
  br i1 %370, label %374, label %371

371:                                              ; preds = %358, %364
  %372 = phi i64 [ %363, %358 ], [ %369, %364 ]
  %373 = load i64, ptr %37, align 8, !tbaa !44, !noalias !242
  store i64 %373, ptr %43, align 8, !tbaa !44, !noalias !242
  br label %374

374:                                              ; preds = %364, %371, %338, %320
  %375 = phi ptr [ %344, %338 ], [ %36, %320 ], [ %36, %371 ], [ %36, %364 ]
  %376 = phi i64 [ %341, %338 ], [ %333, %320 ], [ %372, %371 ], [ %369, %364 ]
  %377 = load i64, ptr %375, align 8, !tbaa !44, !noalias !242
  store i64 %377, ptr %37, align 8, !tbaa !44, !noalias !242
  store i64 %376, ptr %36, align 8, !tbaa !44, !noalias !242
  %378 = icmp eq i8 %297, 0
  br i1 %378, label %391, label %379

379:                                              ; preds = %374
  %380 = load i64, ptr %9, align 8, !tbaa !76, !noalias !242
  %381 = load i32, ptr %130, align 8, !tbaa !80, !noalias !242
  %382 = and i32 %381, 63
  %383 = zext nneg i32 %382 to i64
  %384 = shl i64 %380, %383
  %385 = sub nsw i32 0, %301
  %386 = and i32 %385, 63
  %387 = zext nneg i32 %386 to i64
  %388 = lshr i64 %384, %387
  %389 = add i32 %381, %301
  store i32 %389, ptr %130, align 8, !tbaa !80, !noalias !242
  %390 = add i64 %388, %288
  br label %391

391:                                              ; preds = %379, %374
  %392 = phi i64 [ %288, %374 ], [ %390, %379 ]
  %393 = icmp ugt i8 %303, 30
  br i1 %393, label %394, label %429, !prof !51

394:                                              ; preds = %391
  %395 = load i32, ptr %130, align 8, !tbaa !80, !noalias !242
  %396 = icmp ugt i32 %395, 64
  br i1 %396, label %397, label %398, !prof !51

397:                                              ; preds = %394
  store ptr @BIT_reloadDStream.zeroFilled, ptr %141, align 8, !tbaa !75, !noalias !242
  br label %429

398:                                              ; preds = %394
  %399 = load ptr, ptr %141, align 8, !tbaa !75, !noalias !242
  %400 = load ptr, ptr %48, align 8, !tbaa !74, !noalias !242
  %401 = icmp ult ptr %399, %400
  br i1 %401, label %409, label %402

402:                                              ; preds = %398
  %403 = lshr i32 %395, 3
  %404 = zext nneg i32 %403 to i64
  %405 = sub nsw i64 0, %404
  %406 = getelementptr inbounds i8, ptr %399, i64 %405
  store ptr %406, ptr %141, align 8, !tbaa !75, !noalias !242
  %407 = and i32 %395, 7
  store i32 %407, ptr %130, align 8, !tbaa !80, !noalias !242
  %408 = load i64, ptr %406, align 1, !tbaa !44, !noalias !242
  store i64 %408, ptr %9, align 8, !tbaa !76, !noalias !242
  br label %429

409:                                              ; preds = %398
  %410 = load ptr, ptr %46, align 8, !tbaa !72, !noalias !242
  %411 = icmp eq ptr %399, %410
  br i1 %411, label %429, label %412

412:                                              ; preds = %409
  %413 = lshr i32 %395, 3
  %414 = zext nneg i32 %413 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %399, i64 %415
  %417 = icmp ult ptr %416, %410
  %418 = ptrtoint ptr %399 to i64
  %419 = ptrtoint ptr %410 to i64
  %420 = sub i64 %418, %419
  %421 = trunc i64 %420 to i32
  %422 = select i1 %417, i32 %421, i32 %413
  %423 = zext i32 %422 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %399, i64 %424
  store ptr %425, ptr %141, align 8, !tbaa !75, !noalias !242
  %426 = shl i32 %422, 3
  %427 = sub i32 %395, %426
  store i32 %427, ptr %130, align 8, !tbaa !80, !noalias !242
  %428 = load i64, ptr %425, align 1, !tbaa !44, !noalias !242
  store i64 %428, ptr %9, align 8, !tbaa !76, !noalias !242
  br label %429

429:                                              ; preds = %409, %397, %402, %412, %391
  %430 = icmp eq i8 %295, 0
  br i1 %430, label %443, label %431

431:                                              ; preds = %429
  %432 = load i64, ptr %9, align 8, !tbaa !76, !noalias !242
  %433 = load i32, ptr %130, align 8, !tbaa !80, !noalias !242
  %434 = and i32 %433, 63
  %435 = zext nneg i32 %434 to i64
  %436 = shl i64 %432, %435
  %437 = sub nsw i32 0, %300
  %438 = and i32 %437, 63
  %439 = zext nneg i32 %438 to i64
  %440 = lshr i64 %436, %439
  %441 = add i32 %433, %300
  store i32 %441, ptr %130, align 8, !tbaa !80, !noalias !242
  %442 = add i64 %440, %291
  br label %443

443:                                              ; preds = %431, %429
  %444 = phi i64 [ %291, %429 ], [ %442, %431 ]
  br i1 %279, label %514, label %445

445:                                              ; preds = %443
  %446 = load i64, ptr %9, align 8, !tbaa !76, !noalias !242
  %447 = load i32, ptr %130, align 8, !tbaa !80, !noalias !242
  %448 = add i32 %447, %312
  %449 = sub i32 0, %448
  %450 = and i32 %449, 63
  %451 = zext nneg i32 %450 to i64
  %452 = lshr i64 %446, %451
  %453 = zext nneg i8 %311 to i64
  %454 = shl nsw i64 -1, %453
  %455 = xor i64 %454, -1
  %456 = and i64 %452, %455
  %457 = zext i16 %307 to i64
  %458 = add nuw i64 %456, %457
  store i64 %458, ptr %126, align 8, !tbaa !78, !noalias !242
  %459 = add i32 %448, %315
  %460 = sub i32 0, %459
  %461 = and i32 %460, 63
  %462 = zext nneg i32 %461 to i64
  %463 = lshr i64 %446, %462
  %464 = zext nneg i8 %314 to i64
  %465 = shl nsw i64 -1, %464
  %466 = xor i64 %465, -1
  %467 = and i64 %463, %466
  %468 = zext i16 %308 to i64
  %469 = add nuw i64 %467, %468
  store i64 %469, ptr %224, align 8, !tbaa !78, !noalias !242
  %470 = add i32 %459, %318
  %471 = sub i32 0, %470
  %472 = and i32 %471, 63
  %473 = zext nneg i32 %472 to i64
  %474 = lshr i64 %446, %473
  %475 = zext nneg i8 %317 to i64
  %476 = shl nsw i64 -1, %475
  %477 = xor i64 %476, -1
  %478 = and i64 %474, %477
  store i32 %470, ptr %130, align 8, !tbaa !80, !noalias !242
  %479 = zext i16 %309 to i64
  %480 = add nuw i64 %478, %479
  store i64 %480, ptr %174, align 8, !tbaa !78, !noalias !242
  %481 = icmp ugt i32 %470, 64
  br i1 %481, label %482, label %483, !prof !51

482:                                              ; preds = %445
  store ptr @BIT_reloadDStream.zeroFilled, ptr %141, align 8, !tbaa !75, !noalias !242
  br label %514

483:                                              ; preds = %445
  %484 = load ptr, ptr %141, align 8, !tbaa !75, !noalias !242
  %485 = load ptr, ptr %48, align 8, !tbaa !74, !noalias !242
  %486 = icmp ult ptr %484, %485
  br i1 %486, label %494, label %487

487:                                              ; preds = %483
  %488 = lshr i32 %470, 3
  %489 = zext nneg i32 %488 to i64
  %490 = sub nsw i64 0, %489
  %491 = getelementptr inbounds i8, ptr %484, i64 %490
  store ptr %491, ptr %141, align 8, !tbaa !75, !noalias !242
  %492 = and i32 %470, 7
  store i32 %492, ptr %130, align 8, !tbaa !80, !noalias !242
  %493 = load i64, ptr %491, align 1, !tbaa !44, !noalias !242
  store i64 %493, ptr %9, align 8, !tbaa !76, !noalias !242
  br label %514

494:                                              ; preds = %483
  %495 = load ptr, ptr %46, align 8, !tbaa !72, !noalias !242
  %496 = icmp eq ptr %484, %495
  br i1 %496, label %514, label %497

497:                                              ; preds = %494
  %498 = lshr i32 %470, 3
  %499 = zext nneg i32 %498 to i64
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %484, i64 %500
  %502 = icmp ult ptr %501, %495
  %503 = ptrtoint ptr %484 to i64
  %504 = ptrtoint ptr %495 to i64
  %505 = sub i64 %503, %504
  %506 = trunc i64 %505 to i32
  %507 = select i1 %502, i32 %506, i32 %498
  %508 = zext i32 %507 to i64
  %509 = sub nsw i64 0, %508
  %510 = getelementptr inbounds i8, ptr %484, i64 %509
  store ptr %510, ptr %141, align 8, !tbaa !75, !noalias !242
  %511 = shl i32 %507, 3
  %512 = sub i32 %470, %511
  store i32 %512, ptr %130, align 8, !tbaa !80, !noalias !242
  %513 = load i64, ptr %510, align 1, !tbaa !44, !noalias !242
  store i64 %513, ptr %9, align 8, !tbaa !76, !noalias !242
  br label %514

514:                                              ; preds = %494, %482, %487, %497, %443
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %444, ptr %7, align 8
  store i64 %392, ptr %271, align 8
  store i64 %376, ptr %272, align 8
  %515 = getelementptr inbounds i8, ptr %278, i64 %444
  %516 = add i64 %444, %392
  %517 = load ptr, ptr %8, align 8, !tbaa !38
  %518 = getelementptr inbounds i8, ptr %517, i64 %444
  %519 = sub i64 0, %376
  %520 = getelementptr inbounds i8, ptr %515, i64 %519
  %521 = icmp ugt ptr %518, %25
  %522 = getelementptr inbounds i8, ptr %278, i64 %516
  %523 = icmp ugt ptr %522, %273
  %524 = select i1 %521, i1 true, i1 %523
  br i1 %524, label %528, label %525, !prof !111

525:                                              ; preds = %514
  %526 = load <2 x i64>, ptr %517, align 1, !tbaa !9
  store <2 x i64> %526, ptr %278, align 1, !tbaa !9
  %527 = icmp ugt i64 %444, 16
  br i1 %527, label %530, label %550, !prof !51

528:                                              ; preds = %514
  %529 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %278, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31)
  br label %688

530:                                              ; preds = %525
  %531 = getelementptr inbounds i8, ptr %278, i64 16
  %532 = getelementptr inbounds i8, ptr %517, i64 16
  %533 = add i64 %444, -16
  %534 = load <2 x i64>, ptr %532, align 1, !tbaa !9
  store <2 x i64> %534, ptr %531, align 1, !tbaa !9
  %535 = icmp ult i64 %533, 17
  br i1 %535, label %550, label %536

536:                                              ; preds = %530
  %537 = getelementptr inbounds i8, ptr %278, i64 32
  br label %538

538:                                              ; preds = %538, %536
  %539 = phi ptr [ %537, %536 ], [ %546, %538 ]
  %540 = phi ptr [ %532, %536 ], [ %544, %538 ]
  %541 = getelementptr inbounds i8, ptr %540, i64 16
  %542 = load <2 x i64>, ptr %541, align 1, !tbaa !9
  store <2 x i64> %542, ptr %539, align 1, !tbaa !9
  %543 = getelementptr inbounds i8, ptr %539, i64 16
  %544 = getelementptr inbounds i8, ptr %540, i64 32
  %545 = load <2 x i64>, ptr %544, align 1, !tbaa !9
  store <2 x i64> %545, ptr %543, align 1, !tbaa !9
  %546 = getelementptr inbounds i8, ptr %539, i64 32
  %547 = icmp ult ptr %546, %515
  br i1 %547, label %538, label %548, !llvm.loop !105

548:                                              ; preds = %538
  %549 = load i64, ptr %272, align 8, !tbaa !136
  br label %550

550:                                              ; preds = %548, %530, %525
  %551 = phi i64 [ %549, %548 ], [ %376, %530 ], [ %376, %525 ]
  store ptr %518, ptr %8, align 8, !tbaa !38
  %552 = ptrtoint ptr %515 to i64
  %553 = sub i64 %552, %274
  %554 = icmp ugt i64 %551, %553
  br i1 %554, label %555, label %570

555:                                              ; preds = %550
  %556 = sub i64 %552, %275
  %557 = icmp ugt i64 %551, %556
  br i1 %557, label %558, label %559, !prof !51

558:                                              ; preds = %555
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %712

559:                                              ; preds = %555
  %560 = ptrtoint ptr %520 to i64
  %561 = sub i64 %560, %274
  %562 = getelementptr inbounds i8, ptr %31, i64 %561
  %563 = getelementptr inbounds i8, ptr %562, i64 %392
  %564 = icmp ugt ptr %563, %31
  br i1 %564, label %566, label %565

565:                                              ; preds = %559
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %515, ptr align 1 %562, i64 %392, i1 false)
  br label %688

566:                                              ; preds = %559
  %567 = sub i64 0, %561
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %515, ptr align 1 %562, i64 %567, i1 false)
  %568 = getelementptr inbounds i8, ptr %515, i64 %567
  %569 = add i64 %392, %561
  store i64 %569, ptr %271, align 8, !tbaa !137
  br label %570

570:                                              ; preds = %566, %550
  %571 = phi i64 [ %569, %566 ], [ %392, %550 ]
  %572 = phi ptr [ %27, %566 ], [ %520, %550 ]
  %573 = phi ptr [ %568, %566 ], [ %515, %550 ]
  %574 = ptrtoint ptr %573 to i64
  %575 = icmp ugt i64 %551, 15
  br i1 %575, label %576, label %592, !prof !87

576:                                              ; preds = %570
  %577 = getelementptr inbounds i8, ptr %573, i64 %571
  %578 = load <2 x i64>, ptr %572, align 1, !tbaa !9
  store <2 x i64> %578, ptr %573, align 1, !tbaa !9
  %579 = icmp ult i64 %571, 17
  br i1 %579, label %688, label %580

580:                                              ; preds = %576
  %581 = getelementptr inbounds i8, ptr %573, i64 16
  br label %582

582:                                              ; preds = %582, %580
  %583 = phi ptr [ %581, %580 ], [ %590, %582 ]
  %584 = phi ptr [ %572, %580 ], [ %588, %582 ]
  %585 = getelementptr inbounds i8, ptr %584, i64 16
  %586 = load <2 x i64>, ptr %585, align 1, !tbaa !9
  store <2 x i64> %586, ptr %583, align 1, !tbaa !9
  %587 = getelementptr inbounds i8, ptr %583, i64 16
  %588 = getelementptr inbounds i8, ptr %584, i64 32
  %589 = load <2 x i64>, ptr %588, align 1, !tbaa !9
  store <2 x i64> %589, ptr %587, align 1, !tbaa !9
  %590 = getelementptr inbounds i8, ptr %583, i64 32
  %591 = icmp ult ptr %590, %577
  br i1 %591, label %582, label %688, !llvm.loop !105

592:                                              ; preds = %570
  %593 = icmp ult i64 %551, 8
  br i1 %593, label %594, label %617

594:                                              ; preds = %592
  %595 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %551
  %596 = load i32, ptr %595, align 4, !tbaa !28
  %597 = load i8, ptr %572, align 1, !tbaa !9
  store i8 %597, ptr %573, align 1, !tbaa !9
  %598 = getelementptr inbounds i8, ptr %572, i64 1
  %599 = load i8, ptr %598, align 1, !tbaa !9
  %600 = getelementptr inbounds i8, ptr %573, i64 1
  store i8 %599, ptr %600, align 1, !tbaa !9
  %601 = getelementptr inbounds i8, ptr %572, i64 2
  %602 = load i8, ptr %601, align 1, !tbaa !9
  %603 = getelementptr inbounds i8, ptr %573, i64 2
  store i8 %602, ptr %603, align 1, !tbaa !9
  %604 = getelementptr inbounds i8, ptr %572, i64 3
  %605 = load i8, ptr %604, align 1, !tbaa !9
  %606 = getelementptr inbounds i8, ptr %573, i64 3
  store i8 %605, ptr %606, align 1, !tbaa !9
  %607 = getelementptr inbounds [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %551
  %608 = load i32, ptr %607, align 4, !tbaa !28
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds i8, ptr %572, i64 %609
  %611 = getelementptr inbounds i8, ptr %573, i64 4
  %612 = load i32, ptr %610, align 1
  store i32 %612, ptr %611, align 1
  %613 = sext i32 %596 to i64
  %614 = sub nsw i64 0, %613
  %615 = getelementptr inbounds i8, ptr %610, i64 %614
  %616 = load i64, ptr %271, align 8, !tbaa !137
  br label %619

617:                                              ; preds = %592
  %618 = load i64, ptr %572, align 1
  store i64 %618, ptr %573, align 1
  br label %619

619:                                              ; preds = %617, %594
  %620 = phi i64 [ %616, %594 ], [ %571, %617 ]
  %621 = phi ptr [ %615, %594 ], [ %572, %617 ]
  %622 = getelementptr i8, ptr %621, i64 8
  %623 = getelementptr i8, ptr %573, i64 8
  %624 = icmp ugt i64 %620, 8
  br i1 %624, label %625, label %688

625:                                              ; preds = %619
  %626 = ptrtoint ptr %623 to i64
  %627 = ptrtoint ptr %622 to i64
  %628 = sub i64 %626, %627
  %629 = getelementptr inbounds i8, ptr %573, i64 %620
  %630 = icmp slt i64 %628, 16
  br i1 %630, label %631, label %672

631:                                              ; preds = %625
  %632 = add i64 %620, %574
  %633 = add i64 %574, 16
  %634 = tail call i64 @llvm.umax.i64(i64 %632, i64 %633)
  %635 = add i64 %634, -9
  %636 = sub i64 %635, %574
  %637 = lshr i64 %636, 3
  %638 = add nuw nsw i64 %637, 1
  %639 = icmp ult i64 %636, 24
  %640 = icmp ult i64 %628, 32
  %641 = or i1 %639, %640
  br i1 %641, label %662, label %642

642:                                              ; preds = %631
  %643 = and i64 %638, 4611686018427387900
  %644 = shl i64 %643, 3
  %645 = getelementptr i8, ptr %623, i64 %644
  %646 = shl i64 %643, 3
  %647 = getelementptr i8, ptr %622, i64 %646
  br label %648

648:                                              ; preds = %648, %642
  %649 = phi i64 [ 0, %642 ], [ %658, %648 ]
  %650 = shl i64 %649, 3
  %651 = getelementptr i8, ptr %623, i64 %650
  %652 = shl i64 %649, 3
  %653 = getelementptr i8, ptr %622, i64 %652
  %654 = getelementptr i64, ptr %653, i64 2
  %655 = load <2 x i64>, ptr %653, align 1
  %656 = load <2 x i64>, ptr %654, align 1
  %657 = getelementptr i64, ptr %651, i64 2
  store <2 x i64> %655, ptr %651, align 1
  store <2 x i64> %656, ptr %657, align 1
  %658 = add nuw i64 %649, 4
  %659 = icmp eq i64 %658, %643
  br i1 %659, label %660, label %648, !llvm.loop !245

660:                                              ; preds = %648
  %661 = icmp eq i64 %638, %643
  br i1 %661, label %688, label %662

662:                                              ; preds = %631, %660
  %663 = phi ptr [ %623, %631 ], [ %645, %660 ]
  %664 = phi ptr [ %622, %631 ], [ %647, %660 ]
  br label %665

665:                                              ; preds = %662, %665
  %666 = phi ptr [ %669, %665 ], [ %663, %662 ]
  %667 = phi ptr [ %670, %665 ], [ %664, %662 ]
  %668 = load i64, ptr %667, align 1
  store i64 %668, ptr %666, align 1
  %669 = getelementptr inbounds i8, ptr %666, i64 8
  %670 = getelementptr inbounds i8, ptr %667, i64 8
  %671 = icmp ult ptr %669, %629
  br i1 %671, label %665, label %688, !llvm.loop !246

672:                                              ; preds = %625
  %673 = add i64 %620, -8
  %674 = load <2 x i64>, ptr %622, align 1, !tbaa !9
  store <2 x i64> %674, ptr %623, align 1, !tbaa !9
  %675 = icmp ult i64 %673, 17
  br i1 %675, label %688, label %676

676:                                              ; preds = %672
  %677 = getelementptr inbounds i8, ptr %573, i64 24
  br label %678

678:                                              ; preds = %678, %676
  %679 = phi ptr [ %677, %676 ], [ %686, %678 ]
  %680 = phi ptr [ %622, %676 ], [ %684, %678 ]
  %681 = getelementptr inbounds i8, ptr %680, i64 16
  %682 = load <2 x i64>, ptr %681, align 1, !tbaa !9
  store <2 x i64> %682, ptr %679, align 1, !tbaa !9
  %683 = getelementptr inbounds i8, ptr %679, i64 16
  %684 = getelementptr inbounds i8, ptr %680, i64 32
  %685 = load <2 x i64>, ptr %684, align 1, !tbaa !9
  store <2 x i64> %685, ptr %683, align 1, !tbaa !9
  %686 = getelementptr inbounds i8, ptr %679, i64 32
  %687 = icmp ult ptr %686, %629
  br i1 %687, label %678, label %688, !llvm.loop !105

688:                                              ; preds = %678, %665, %582, %660, %672, %576, %619, %565, %528
  %689 = phi i64 [ %529, %528 ], [ %516, %565 ], [ %516, %619 ], [ %516, %576 ], [ %516, %672 ], [ %516, %660 ], [ %516, %582 ], [ %516, %665 ], [ %516, %678 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %690 = icmp ult i64 %689, -119
  %691 = getelementptr inbounds i8, ptr %278, i64 %689
  br i1 %690, label %692, label %712

692:                                              ; preds = %688
  %693 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %277, i32 -1)
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !86
  br i1 %694, label %695, label %696, !nosanitize !86

695:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !86
  unreachable, !nosanitize !86

696:                                              ; preds = %692
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !86
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %276, !llvm.loop !170

699:                                              ; preds = %696
  %700 = load ptr, ptr %141, align 8, !tbaa !75
  %701 = load ptr, ptr %46, align 8, !tbaa !72
  %702 = icmp eq ptr %700, %701
  %703 = load i32, ptr %130, align 8
  %704 = icmp eq i32 %703, 64
  %705 = select i1 %702, i1 %704, i1 false
  br i1 %705, label %706, label %712

706:                                              ; preds = %699
  %707 = load <2 x i64>, ptr %36, align 8, !tbaa !44
  %708 = trunc <2 x i64> %707 to <2 x i32>
  store <2 x i32> %708, ptr %35, align 4, !tbaa !28
  %709 = load i64, ptr %43, align 8, !tbaa !44
  %710 = trunc i64 %709 to i32
  store i32 %710, ptr %40, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  %711 = load ptr, ptr %8, align 8, !tbaa !38
  br label %714

712:                                              ; preds = %688, %101, %50, %33, %114, %558, %699
  %713 = phi i64 [ -20, %558 ], [ -20, %114 ], [ -20, %699 ], [ -20, %33 ], [ -20, %50 ], [ -20, %101 ], [ %689, %688 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  br label %733

714:                                              ; preds = %706, %19
  %715 = phi ptr [ %711, %706 ], [ %22, %19 ]
  %716 = phi ptr [ %691, %706 ], [ %1, %19 ]
  %717 = ptrtoint ptr %25 to i64
  %718 = ptrtoint ptr %715 to i64
  %719 = sub i64 %717, %718
  %720 = ptrtoint ptr %20 to i64
  %721 = ptrtoint ptr %716 to i64
  %722 = sub i64 %720, %721
  %723 = icmp ugt i64 %719, %722
  br i1 %723, label %733, label %724

724:                                              ; preds = %714
  %725 = icmp eq ptr %716, null
  br i1 %725, label %729, label %726

726:                                              ; preds = %724
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %716, ptr align 1 %715, i64 %719, i1 false)
  %727 = getelementptr inbounds i8, ptr %716, i64 %719
  %728 = ptrtoint ptr %727 to i64
  br label %729

729:                                              ; preds = %726, %724
  %730 = phi i64 [ 0, %724 ], [ %728, %726 ]
  %731 = ptrtoint ptr %1 to i64
  %732 = sub i64 %730, %731
  br label %733

733:                                              ; preds = %714, %712, %729
  %734 = phi i64 [ %732, %729 ], [ %713, %712 ], [ -70, %714 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret i64 %734
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !12, i64 4}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!12 = !{!"int", !7, i64 0}
!13 = !{!11, !12, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!16, !12, i64 30176}
!16 = !{!"ZSTD_DCtx_s", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !18, i64 32, !7, i64 27324, !17, i64 29888, !17, i64 29896, !17, i64 29904, !17, i64 29912, !19, i64 29920, !20, i64 29928, !19, i64 29976, !19, i64 29984, !12, i64 29992, !12, i64 29996, !12, i64 30000, !12, i64 30004, !22, i64 30008, !19, i64 30096, !12, i64 30104, !12, i64 30108, !12, i64 30112, !17, i64 30120, !23, i64 30128, !19, i64 30152, !19, i64 30160, !19, i64 30168, !12, i64 30176, !12, i64 30180, !17, i64 30184, !17, i64 30192, !12, i64 30200, !12, i64 30204, !12, i64 30208, !17, i64 30216, !12, i64 30224, !12, i64 30228, !12, i64 30232, !12, i64 30236, !17, i64 30240, !19, i64 30248, !19, i64 30256, !19, i64 30264, !17, i64 30272, !19, i64 30280, !19, i64 30288, !19, i64 30296, !19, i64 30304, !12, i64 30312, !12, i64 30316, !12, i64 30320, !24, i64 30328, !17, i64 30352, !17, i64 30360, !12, i64 30368, !7, i64 30372, !7, i64 95940, !19, i64 95960, !21, i64 95968}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"", !7, i64 0, !7, i64 4104, !7, i64 6160, !7, i64 10264, !7, i64 26652, !7, i64 26664}
!19 = !{!"long", !7, i64 0}
!20 = !{!"", !21, i64 0, !21, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!21 = !{!"long long", !7, i64 0}
!22 = !{!"XXH64_state_s", !19, i64 0, !7, i64 8, !7, i64 40, !12, i64 72, !12, i64 76, !19, i64 80}
!23 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"ZSTD_outBuffer_s", !17, i64 0, !19, i64 8, !19, i64 16}
!25 = !{i64 -70, i64 4294967299}
!26 = !{!16, !12, i64 29944}
!27 = !{!16, !12, i64 30000}
!28 = !{!12, !12, i64 0}
!29 = !{!16, !12, i64 30180}
!30 = !{!16, !12, i64 30228}
!31 = !{!16, !17, i64 30352}
!32 = !{!16, !12, i64 30368}
!33 = !{!16, !12, i64 30204}
!34 = !{!16, !17, i64 24}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!16, !17, i64 30360}
!38 = !{!17, !17, i64 0}
!39 = !{!16, !17, i64 30120}
!40 = !{!16, !19, i64 30152}
!41 = !{!42, !12, i64 4}
!42 = !{!"", !6, i64 0, !7, i64 2, !7, i64 3, !12, i64 4}
!43 = distinct !{!43, !36}
!44 = !{!19, !19, i64 0}
!45 = distinct !{!45, !36, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !36, !47, !46}
!49 = distinct !{!49, !36}
!50 = distinct !{!50, !36}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = distinct !{!52, !36}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = !{i32 0, i32 33}
!56 = !{!42, !7, i64 3}
!57 = !{!42, !6, i64 0}
!58 = !{!42, !7, i64 2}
!59 = distinct !{!59, !36}
!60 = distinct !{!60, !36, !46, !47}
!61 = distinct !{!61, !36, !47, !46}
!62 = !{!16, !12, i64 30004}
!63 = !{!64, !12, i64 4}
!64 = !{!"", !12, i64 0, !12, i64 4}
!65 = !{!64, !12, i64 0}
!66 = distinct !{!66, !36}
!67 = !{!16, !17, i64 29904}
!68 = !{!16, !17, i64 16}
!69 = distinct !{!69, !36}
!70 = !{!16, !17, i64 29896}
!71 = !{!16, !17, i64 29912}
!72 = !{!73, !17, i64 24}
!73 = !{!"", !19, i64 0, !12, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!74 = !{!73, !17, i64 32}
!75 = !{!73, !17, i64 16}
!76 = !{!73, !19, i64 0}
!77 = !{!16, !17, i64 0}
!78 = !{!79, !19, i64 0}
!79 = !{!"", !19, i64 0, !17, i64 8}
!80 = !{!73, !12, i64 8}
!81 = !{!79, !17, i64 8}
!82 = !{!16, !17, i64 8}
!83 = !{!84}
!84 = distinct !{!84, !85, !"ZSTD_decodeSequence: argument 0"}
!85 = distinct !{!85, !"ZSTD_decodeSequence"}
!86 = !{}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!89 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!90 = !{i64 0, i64 8, !44}
!91 = distinct !{!91, !36}
!92 = !{!93, !17, i64 48}
!93 = !{!"", !73, i64 0, !79, i64 40, !79, i64 56, !79, i64 72, !7, i64 88}
!94 = !{!95}
!95 = distinct !{!95, !96, !"ZSTD_decodeSequence: argument 0"}
!96 = distinct !{!96, !"ZSTD_decodeSequence"}
!97 = !{!93, !19, i64 40}
!98 = !{!93, !17, i64 80}
!99 = !{!93, !19, i64 72}
!100 = !{!93, !17, i64 64}
!101 = !{!93, !19, i64 56}
!102 = distinct !{!102, !36, !46, !47}
!103 = distinct !{!103, !36, !46, !47}
!104 = distinct !{!104, !36, !46}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36, !46, !47}
!107 = distinct !{!107, !36, !46, !47}
!108 = distinct !{!108, !36, !46}
!109 = !{!110, !19, i64 0}
!110 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!111 = !{!"branch_weights", i32 4001, i32 4000000}
!112 = distinct !{!112, !36, !46, !47}
!113 = distinct !{!113, !36, !46}
!114 = distinct !{!114, !36, !46, !47}
!115 = distinct !{!115, !36, !46}
!116 = distinct !{!116, !36, !46, !47}
!117 = distinct !{!117, !36, !46}
!118 = distinct !{!118, !36}
!119 = distinct !{!119, !36, !46, !47}
!120 = distinct !{!120, !36, !46, !47}
!121 = distinct !{!121, !36, !46}
!122 = distinct !{!122, !36, !46, !47}
!123 = distinct !{!123, !36, !46, !47}
!124 = distinct !{!124, !36, !46}
!125 = distinct !{!125, !36, !46, !47}
!126 = distinct !{!126, !36, !46}
!127 = distinct !{!127, !36, !46, !47}
!128 = distinct !{!128, !36, !46}
!129 = distinct !{!129, !36, !46, !47}
!130 = distinct !{!130, !36, !46}
!131 = distinct !{!131, !36}
!132 = !{i64 72311}
!133 = !{!134}
!134 = distinct !{!134, !135, !"ZSTD_decodeSequence: argument 0"}
!135 = distinct !{!135, !"ZSTD_decodeSequence"}
!136 = !{!110, !19, i64 16}
!137 = !{!110, !19, i64 8}
!138 = distinct !{!138, !36, !46, !47}
!139 = distinct !{!139, !36, !46}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36, !46, !47}
!142 = distinct !{!142, !36, !46, !47}
!143 = distinct !{!143, !36, !46}
!144 = distinct !{!144, !36, !46, !47}
!145 = distinct !{!145, !36, !46, !47}
!146 = distinct !{!146, !36, !46}
!147 = distinct !{!147, !36, !46, !47}
!148 = distinct !{!148, !36, !46}
!149 = !{i64 75607}
!150 = !{i64 75642}
!151 = !{i64 75770}
!152 = !{i64 75805}
!153 = !{i64 75833}
!154 = !{!155}
!155 = distinct !{!155, !156, !"ZSTD_decodeSequence: argument 0"}
!156 = distinct !{!156, !"ZSTD_decodeSequence"}
!157 = distinct !{!157, !36, !46, !47}
!158 = distinct !{!158, !36, !46}
!159 = distinct !{!159, !36}
!160 = !{i64 80069}
!161 = !{i64 80104}
!162 = !{i64 80258}
!163 = !{i64 80293}
!164 = !{i64 80321}
!165 = !{!166}
!166 = distinct !{!166, !167, !"ZSTD_decodeSequence: argument 0"}
!167 = distinct !{!167, !"ZSTD_decodeSequence"}
!168 = distinct !{!168, !36, !46, !47}
!169 = distinct !{!169, !36, !46}
!170 = distinct !{!170, !36}
!171 = !{!16, !17, i64 29888}
!172 = !{!173}
!173 = distinct !{!173, !174, !"ZSTD_decodeSequence: argument 0"}
!174 = distinct !{!174, !"ZSTD_decodeSequence"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"ZSTD_decodeSequence: argument 0"}
!177 = distinct !{!177, !"ZSTD_decodeSequence"}
!178 = distinct !{!178, !36, !46, !47}
!179 = distinct !{!179, !36, !46, !47}
!180 = distinct !{!180, !36, !46}
!181 = distinct !{!181, !36, !46, !47}
!182 = distinct !{!182, !36, !46, !47}
!183 = distinct !{!183, !36, !46}
!184 = distinct !{!184, !36, !46, !47}
!185 = distinct !{!185, !36, !46}
!186 = distinct !{!186, !36, !46, !47}
!187 = distinct !{!187, !36, !46}
!188 = distinct !{!188, !36, !46, !47}
!189 = distinct !{!189, !36, !46}
!190 = distinct !{!190, !36, !46, !47}
!191 = distinct !{!191, !36, !46, !47}
!192 = distinct !{!192, !36, !46}
!193 = distinct !{!193, !36, !46, !47}
!194 = distinct !{!194, !36, !46, !47}
!195 = distinct !{!195, !36, !46}
!196 = distinct !{!196, !36, !46, !47}
!197 = distinct !{!197, !36, !46}
!198 = distinct !{!198, !36, !46, !47}
!199 = distinct !{!199, !36, !46}
!200 = distinct !{!200, !36, !46, !47}
!201 = distinct !{!201, !36, !46}
!202 = distinct !{!202, !36, !46, !47}
!203 = distinct !{!203, !36, !46, !47}
!204 = distinct !{!204, !36, !46}
!205 = distinct !{!205, !36, !46, !47}
!206 = distinct !{!206, !36, !46, !47}
!207 = distinct !{!207, !36, !46}
!208 = distinct !{!208, !36, !46, !47}
!209 = distinct !{!209, !36, !46, !47}
!210 = distinct !{!210, !36, !46}
!211 = distinct !{!211, !36, !46, !47}
!212 = distinct !{!212, !36, !46}
!213 = distinct !{!213, !36, !46, !47}
!214 = distinct !{!214, !36, !46}
!215 = distinct !{!215, !36, !46, !47}
!216 = distinct !{!216, !36, !46, !47}
!217 = distinct !{!217, !36, !46}
!218 = distinct !{!218, !36, !46, !47}
!219 = distinct !{!219, !36, !46, !47}
!220 = distinct !{!220, !36, !46}
!221 = distinct !{!221, !36, !46, !47}
!222 = distinct !{!222, !36, !46, !47}
!223 = distinct !{!223, !36, !46}
!224 = !{!225}
!225 = distinct !{!225, !226, !"ZSTD_decodeSequence: argument 0"}
!226 = distinct !{!226, !"ZSTD_decodeSequence"}
!227 = distinct !{!227, !36, !46, !47}
!228 = distinct !{!228, !36, !46}
!229 = distinct !{!229, !36, !46, !47}
!230 = distinct !{!230, !36, !46, !47}
!231 = distinct !{!231, !36, !46}
!232 = distinct !{!232, !36, !46, !47}
!233 = distinct !{!233, !36, !46, !47}
!234 = distinct !{!234, !36, !46}
!235 = distinct !{!235, !36, !46, !47}
!236 = distinct !{!236, !36, !46}
!237 = !{!238}
!238 = distinct !{!238, !239, !"ZSTD_decodeSequence: argument 0"}
!239 = distinct !{!239, !"ZSTD_decodeSequence"}
!240 = distinct !{!240, !36, !46, !47}
!241 = distinct !{!241, !36, !46}
!242 = !{!243}
!243 = distinct !{!243, !244, !"ZSTD_decodeSequence: argument 0"}
!244 = distinct !{!244, !"ZSTD_decodeSequence"}
!245 = distinct !{!245, !36, !46, !47}
!246 = distinct !{!246, !36, !46}
