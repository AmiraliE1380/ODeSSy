; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/zstd_decompress_block.ll'
source_filename = "/mydata/zstd/lib/decompress/zstd_decompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
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
define dso_local range(i64 -72, 2097152) i64 @ZSTD_getcBlockSize(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
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
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %14, ptr %15, align 4, !tbaa !10
  %16 = lshr i32 %9, 1
  %17 = and i32 %16, 3
  store i32 %17, ptr %2, align 4, !tbaa !13
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
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

22:                                               ; preds = %20, %19, %5, %3
  %23 = phi i64 [ -72, %3 ], [ -20, %19 ], [ %21, %20 ], [ 1, %5 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -70, 1048579) i64 @ZSTD_decodeLiteralsBlock_wrapper(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -70, 1048579) i64 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = icmp ult i64 %2, 2
  br i1 %7, label %599, label %8

8:                                                ; preds = %6
  %9 = load i8, ptr %1, align 1, !tbaa !9
  %10 = and i8 %9, 3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %16 = load i32, ptr %15, align 8, !tbaa !28
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i64 [ %17, %14 ], [ 131072, %8 ]
  switch i8 %10, label %default.unreachable16 [
    i8 3, label %20
    i8 2, label %24
    i8 0, label %421
    i8 1, label %515
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %599, label %24

24:                                               ; preds = %20, %18
  %25 = icmp ult i64 %2, 5
  br i1 %25, label %599, label %26

26:                                               ; preds = %24
  %27 = lshr i8 %9, 2
  %28 = and i8 %27, 3
  %29 = load i32, ptr %1, align 1, !tbaa !30
  %30 = tail call i64 @llvm.umin.i64(i64 %19, i64 %4)
  %31 = getelementptr i8, ptr %0, i64 30180
  %32 = load i32, ptr %31, align 4, !tbaa !31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 30228
  %36 = load i32, ptr %35, align 4, !tbaa !32
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
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 10
  %61 = or disjoint i64 %60, %56
  br label %62

62:                                               ; preds = %52, %47, %40
  %63 = phi i1 [ %41, %40 ], [ true, %52 ], [ true, %47 ]
  %64 = phi i64 [ %46, %40 ], [ %61, %52 ], [ %51, %47 ]
  %65 = phi i32 [ %43, %40 ], [ %54, %52 ], [ %49, %47 ]
  %66 = phi i64 [ 3, %40 ], [ 5, %52 ], [ 4, %47 ]
  %67 = zext nneg i32 %65 to i64
  %68 = icmp ne i32 %65, 0
  %69 = icmp eq ptr %3, null
  %70 = and i1 %69, %68
  br i1 %70, label %599, label %71

71:                                               ; preds = %62
  %72 = icmp samesign ult i64 %19, %67
  br i1 %72, label %599, label %73

73:                                               ; preds = %71
  %74 = icmp samesign ult i32 %65, 6
  %75 = select i1 %63, i1 %74, i1 false
  br i1 %75, label %599, label %76

76:                                               ; preds = %73
  %77 = add nuw nsw i64 %66, %64
  %78 = icmp ugt i64 %77, %2
  br i1 %78, label %599, label %79

79:                                               ; preds = %76
  %80 = icmp samesign ult i64 %30, %67
  br i1 %80, label %599, label %81

81:                                               ; preds = %79
  br i1 %13, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %84 = load i32, ptr %83, align 8, !tbaa !28
  %85 = zext i32 %84 to i64
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i64 [ %85, %82 ], [ 131072, %81 ]
  %88 = icmp eq i32 %5, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %67, 64
  %91 = add nuw nsw i64 %90, %87
  %92 = icmp ugt i64 %4, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 %87
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %95, ptr %96, align 8, !tbaa !33
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %67
  br label %109

98:                                               ; preds = %89, %86
  %99 = icmp samesign ult i32 %65, 65537
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %101, ptr %102, align 8, !tbaa !33
  %103 = getelementptr inbounds nuw i8, ptr %101, i64 %67
  br label %109

104:                                              ; preds = %98
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 %30
  %106 = sub nsw i64 0, %67
  %107 = getelementptr inbounds i8, ptr %105, i64 %106
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %107, ptr %108, align 8, !tbaa !33
  br label %109

109:                                              ; preds = %104, %100, %93
  %110 = phi ptr [ %101, %100 ], [ %107, %104 ], [ %95, %93 ]
  %111 = phi ptr [ %103, %100 ], [ %105, %104 ], [ %97, %93 ]
  %112 = phi i32 [ 0, %100 ], [ 2, %104 ], [ 1, %93 ]
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %111, ptr %113, align 8, !tbaa !34
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %112, ptr %114, align 8, !tbaa !35
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %116 = load i32, ptr %115, align 4, !tbaa !36
  %117 = icmp ne i32 %116, 0
  %118 = icmp samesign ugt i32 %65, 768
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %109
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %121 = load ptr, ptr %120, align 8, !tbaa !37
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 64
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 128
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 192
  %125 = getelementptr inbounds nuw i8, ptr %121, i64 256
  %126 = getelementptr inbounds nuw i8, ptr %121, i64 320
  %127 = getelementptr inbounds nuw i8, ptr %121, i64 384
  %128 = getelementptr inbounds nuw i8, ptr %121, i64 448
  tail call void @llvm.prefetch.p0(ptr %121, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %122, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %123, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %124, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %125, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %126, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %127, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %128, i32 0, i32 2, i32 1)
  %129 = getelementptr inbounds nuw i8, ptr %121, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %129, i32 0, i32 2, i32 1)
  %130 = getelementptr inbounds nuw i8, ptr %121, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %130, i32 0, i32 2, i32 1)
  %131 = getelementptr inbounds nuw i8, ptr %121, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %131, i32 0, i32 2, i32 1)
  %132 = getelementptr inbounds nuw i8, ptr %121, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %132, i32 0, i32 2, i32 1)
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %133, i32 0, i32 2, i32 1)
  %134 = getelementptr inbounds nuw i8, ptr %121, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %134, i32 0, i32 2, i32 1)
  %135 = getelementptr inbounds nuw i8, ptr %121, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull %135, i32 0, i32 2, i32 1)
  %136 = getelementptr inbounds nuw i8, ptr %121, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull %136, i32 0, i32 2, i32 1)
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %137, i32 0, i32 2, i32 1)
  %138 = getelementptr inbounds nuw i8, ptr %121, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %138, i32 0, i32 2, i32 1)
  %139 = getelementptr inbounds nuw i8, ptr %121, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %139, i32 0, i32 2, i32 1)
  %140 = getelementptr inbounds nuw i8, ptr %121, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %140, i32 0, i32 2, i32 1)
  %141 = getelementptr inbounds nuw i8, ptr %121, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %141, i32 0, i32 2, i32 1)
  %142 = getelementptr inbounds nuw i8, ptr %121, i64 1344
  tail call void @llvm.prefetch.p0(ptr nonnull %142, i32 0, i32 2, i32 1)
  %143 = getelementptr inbounds nuw i8, ptr %121, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull %143, i32 0, i32 2, i32 1)
  %144 = getelementptr inbounds nuw i8, ptr %121, i64 1472
  tail call void @llvm.prefetch.p0(ptr nonnull %144, i32 0, i32 2, i32 1)
  %145 = getelementptr inbounds nuw i8, ptr %121, i64 1536
  tail call void @llvm.prefetch.p0(ptr nonnull %145, i32 0, i32 2, i32 1)
  %146 = getelementptr inbounds nuw i8, ptr %121, i64 1600
  tail call void @llvm.prefetch.p0(ptr nonnull %146, i32 0, i32 2, i32 1)
  %147 = getelementptr inbounds nuw i8, ptr %121, i64 1664
  tail call void @llvm.prefetch.p0(ptr nonnull %147, i32 0, i32 2, i32 1)
  %148 = getelementptr inbounds nuw i8, ptr %121, i64 1728
  tail call void @llvm.prefetch.p0(ptr nonnull %148, i32 0, i32 2, i32 1)
  %149 = getelementptr inbounds nuw i8, ptr %121, i64 1792
  tail call void @llvm.prefetch.p0(ptr nonnull %149, i32 0, i32 2, i32 1)
  %150 = getelementptr inbounds nuw i8, ptr %121, i64 1856
  tail call void @llvm.prefetch.p0(ptr nonnull %150, i32 0, i32 2, i32 1)
  %151 = getelementptr inbounds nuw i8, ptr %121, i64 1920
  tail call void @llvm.prefetch.p0(ptr nonnull %151, i32 0, i32 2, i32 1)
  %152 = getelementptr inbounds nuw i8, ptr %121, i64 1984
  tail call void @llvm.prefetch.p0(ptr nonnull %152, i32 0, i32 2, i32 1)
  %153 = getelementptr inbounds nuw i8, ptr %121, i64 2048
  tail call void @llvm.prefetch.p0(ptr nonnull %153, i32 0, i32 2, i32 1)
  %154 = getelementptr inbounds nuw i8, ptr %121, i64 2112
  tail call void @llvm.prefetch.p0(ptr nonnull %154, i32 0, i32 2, i32 1)
  %155 = getelementptr inbounds nuw i8, ptr %121, i64 2176
  tail call void @llvm.prefetch.p0(ptr nonnull %155, i32 0, i32 2, i32 1)
  %156 = getelementptr inbounds nuw i8, ptr %121, i64 2240
  tail call void @llvm.prefetch.p0(ptr nonnull %156, i32 0, i32 2, i32 1)
  %157 = getelementptr inbounds nuw i8, ptr %121, i64 2304
  tail call void @llvm.prefetch.p0(ptr nonnull %157, i32 0, i32 2, i32 1)
  %158 = getelementptr inbounds nuw i8, ptr %121, i64 2368
  tail call void @llvm.prefetch.p0(ptr nonnull %158, i32 0, i32 2, i32 1)
  %159 = getelementptr inbounds nuw i8, ptr %121, i64 2432
  tail call void @llvm.prefetch.p0(ptr nonnull %159, i32 0, i32 2, i32 1)
  %160 = getelementptr inbounds nuw i8, ptr %121, i64 2496
  tail call void @llvm.prefetch.p0(ptr nonnull %160, i32 0, i32 2, i32 1)
  %161 = getelementptr inbounds nuw i8, ptr %121, i64 2560
  tail call void @llvm.prefetch.p0(ptr nonnull %161, i32 0, i32 2, i32 1)
  %162 = getelementptr inbounds nuw i8, ptr %121, i64 2624
  tail call void @llvm.prefetch.p0(ptr nonnull %162, i32 0, i32 2, i32 1)
  %163 = getelementptr inbounds nuw i8, ptr %121, i64 2688
  tail call void @llvm.prefetch.p0(ptr nonnull %163, i32 0, i32 2, i32 1)
  %164 = getelementptr inbounds nuw i8, ptr %121, i64 2752
  tail call void @llvm.prefetch.p0(ptr nonnull %164, i32 0, i32 2, i32 1)
  %165 = getelementptr inbounds nuw i8, ptr %121, i64 2816
  tail call void @llvm.prefetch.p0(ptr nonnull %165, i32 0, i32 2, i32 1)
  %166 = getelementptr inbounds nuw i8, ptr %121, i64 2880
  tail call void @llvm.prefetch.p0(ptr nonnull %166, i32 0, i32 2, i32 1)
  %167 = getelementptr inbounds nuw i8, ptr %121, i64 2944
  tail call void @llvm.prefetch.p0(ptr nonnull %167, i32 0, i32 2, i32 1)
  %168 = getelementptr inbounds nuw i8, ptr %121, i64 3008
  tail call void @llvm.prefetch.p0(ptr nonnull %168, i32 0, i32 2, i32 1)
  %169 = getelementptr inbounds nuw i8, ptr %121, i64 3072
  tail call void @llvm.prefetch.p0(ptr nonnull %169, i32 0, i32 2, i32 1)
  %170 = getelementptr inbounds nuw i8, ptr %121, i64 3136
  tail call void @llvm.prefetch.p0(ptr nonnull %170, i32 0, i32 2, i32 1)
  %171 = getelementptr inbounds nuw i8, ptr %121, i64 3200
  tail call void @llvm.prefetch.p0(ptr nonnull %171, i32 0, i32 2, i32 1)
  %172 = getelementptr inbounds nuw i8, ptr %121, i64 3264
  tail call void @llvm.prefetch.p0(ptr nonnull %172, i32 0, i32 2, i32 1)
  %173 = getelementptr inbounds nuw i8, ptr %121, i64 3328
  tail call void @llvm.prefetch.p0(ptr nonnull %173, i32 0, i32 2, i32 1)
  %174 = getelementptr inbounds nuw i8, ptr %121, i64 3392
  tail call void @llvm.prefetch.p0(ptr nonnull %174, i32 0, i32 2, i32 1)
  %175 = getelementptr inbounds nuw i8, ptr %121, i64 3456
  tail call void @llvm.prefetch.p0(ptr nonnull %175, i32 0, i32 2, i32 1)
  %176 = getelementptr inbounds nuw i8, ptr %121, i64 3520
  tail call void @llvm.prefetch.p0(ptr nonnull %176, i32 0, i32 2, i32 1)
  %177 = getelementptr inbounds nuw i8, ptr %121, i64 3584
  tail call void @llvm.prefetch.p0(ptr nonnull %177, i32 0, i32 2, i32 1)
  %178 = getelementptr inbounds nuw i8, ptr %121, i64 3648
  tail call void @llvm.prefetch.p0(ptr nonnull %178, i32 0, i32 2, i32 1)
  %179 = getelementptr inbounds nuw i8, ptr %121, i64 3712
  tail call void @llvm.prefetch.p0(ptr nonnull %179, i32 0, i32 2, i32 1)
  %180 = getelementptr inbounds nuw i8, ptr %121, i64 3776
  tail call void @llvm.prefetch.p0(ptr nonnull %180, i32 0, i32 2, i32 1)
  %181 = getelementptr inbounds nuw i8, ptr %121, i64 3840
  tail call void @llvm.prefetch.p0(ptr nonnull %181, i32 0, i32 2, i32 1)
  %182 = getelementptr inbounds nuw i8, ptr %121, i64 3904
  tail call void @llvm.prefetch.p0(ptr nonnull %182, i32 0, i32 2, i32 1)
  %183 = getelementptr inbounds nuw i8, ptr %121, i64 3968
  tail call void @llvm.prefetch.p0(ptr nonnull %183, i32 0, i32 2, i32 1)
  %184 = getelementptr inbounds nuw i8, ptr %121, i64 4032
  tail call void @llvm.prefetch.p0(ptr nonnull %184, i32 0, i32 2, i32 1)
  %185 = getelementptr inbounds nuw i8, ptr %121, i64 4096
  tail call void @llvm.prefetch.p0(ptr nonnull %185, i32 0, i32 2, i32 1)
  %186 = getelementptr inbounds nuw i8, ptr %121, i64 4160
  tail call void @llvm.prefetch.p0(ptr nonnull %186, i32 0, i32 2, i32 1)
  %187 = getelementptr inbounds nuw i8, ptr %121, i64 4224
  tail call void @llvm.prefetch.p0(ptr nonnull %187, i32 0, i32 2, i32 1)
  %188 = getelementptr inbounds nuw i8, ptr %121, i64 4288
  tail call void @llvm.prefetch.p0(ptr nonnull %188, i32 0, i32 2, i32 1)
  %189 = getelementptr inbounds nuw i8, ptr %121, i64 4352
  tail call void @llvm.prefetch.p0(ptr nonnull %189, i32 0, i32 2, i32 1)
  %190 = getelementptr inbounds nuw i8, ptr %121, i64 4416
  tail call void @llvm.prefetch.p0(ptr nonnull %190, i32 0, i32 2, i32 1)
  %191 = getelementptr inbounds nuw i8, ptr %121, i64 4480
  tail call void @llvm.prefetch.p0(ptr nonnull %191, i32 0, i32 2, i32 1)
  %192 = getelementptr inbounds nuw i8, ptr %121, i64 4544
  tail call void @llvm.prefetch.p0(ptr nonnull %192, i32 0, i32 2, i32 1)
  %193 = getelementptr inbounds nuw i8, ptr %121, i64 4608
  tail call void @llvm.prefetch.p0(ptr nonnull %193, i32 0, i32 2, i32 1)
  %194 = getelementptr inbounds nuw i8, ptr %121, i64 4672
  tail call void @llvm.prefetch.p0(ptr nonnull %194, i32 0, i32 2, i32 1)
  %195 = getelementptr inbounds nuw i8, ptr %121, i64 4736
  tail call void @llvm.prefetch.p0(ptr nonnull %195, i32 0, i32 2, i32 1)
  %196 = getelementptr inbounds nuw i8, ptr %121, i64 4800
  tail call void @llvm.prefetch.p0(ptr nonnull %196, i32 0, i32 2, i32 1)
  %197 = getelementptr inbounds nuw i8, ptr %121, i64 4864
  tail call void @llvm.prefetch.p0(ptr nonnull %197, i32 0, i32 2, i32 1)
  %198 = getelementptr inbounds nuw i8, ptr %121, i64 4928
  tail call void @llvm.prefetch.p0(ptr nonnull %198, i32 0, i32 2, i32 1)
  %199 = getelementptr inbounds nuw i8, ptr %121, i64 4992
  tail call void @llvm.prefetch.p0(ptr nonnull %199, i32 0, i32 2, i32 1)
  %200 = getelementptr inbounds nuw i8, ptr %121, i64 5056
  tail call void @llvm.prefetch.p0(ptr nonnull %200, i32 0, i32 2, i32 1)
  %201 = getelementptr inbounds nuw i8, ptr %121, i64 5120
  tail call void @llvm.prefetch.p0(ptr nonnull %201, i32 0, i32 2, i32 1)
  %202 = getelementptr inbounds nuw i8, ptr %121, i64 5184
  tail call void @llvm.prefetch.p0(ptr nonnull %202, i32 0, i32 2, i32 1)
  %203 = getelementptr inbounds nuw i8, ptr %121, i64 5248
  tail call void @llvm.prefetch.p0(ptr nonnull %203, i32 0, i32 2, i32 1)
  %204 = getelementptr inbounds nuw i8, ptr %121, i64 5312
  tail call void @llvm.prefetch.p0(ptr nonnull %204, i32 0, i32 2, i32 1)
  %205 = getelementptr inbounds nuw i8, ptr %121, i64 5376
  tail call void @llvm.prefetch.p0(ptr nonnull %205, i32 0, i32 2, i32 1)
  %206 = getelementptr inbounds nuw i8, ptr %121, i64 5440
  tail call void @llvm.prefetch.p0(ptr nonnull %206, i32 0, i32 2, i32 1)
  %207 = getelementptr inbounds nuw i8, ptr %121, i64 5504
  tail call void @llvm.prefetch.p0(ptr nonnull %207, i32 0, i32 2, i32 1)
  %208 = getelementptr inbounds nuw i8, ptr %121, i64 5568
  tail call void @llvm.prefetch.p0(ptr nonnull %208, i32 0, i32 2, i32 1)
  %209 = getelementptr inbounds nuw i8, ptr %121, i64 5632
  tail call void @llvm.prefetch.p0(ptr nonnull %209, i32 0, i32 2, i32 1)
  %210 = getelementptr inbounds nuw i8, ptr %121, i64 5696
  tail call void @llvm.prefetch.p0(ptr nonnull %210, i32 0, i32 2, i32 1)
  %211 = getelementptr inbounds nuw i8, ptr %121, i64 5760
  tail call void @llvm.prefetch.p0(ptr nonnull %211, i32 0, i32 2, i32 1)
  %212 = getelementptr inbounds nuw i8, ptr %121, i64 5824
  tail call void @llvm.prefetch.p0(ptr nonnull %212, i32 0, i32 2, i32 1)
  %213 = getelementptr inbounds nuw i8, ptr %121, i64 5888
  tail call void @llvm.prefetch.p0(ptr nonnull %213, i32 0, i32 2, i32 1)
  %214 = getelementptr inbounds nuw i8, ptr %121, i64 5952
  tail call void @llvm.prefetch.p0(ptr nonnull %214, i32 0, i32 2, i32 1)
  %215 = getelementptr inbounds nuw i8, ptr %121, i64 6016
  tail call void @llvm.prefetch.p0(ptr nonnull %215, i32 0, i32 2, i32 1)
  %216 = getelementptr inbounds nuw i8, ptr %121, i64 6080
  tail call void @llvm.prefetch.p0(ptr nonnull %216, i32 0, i32 2, i32 1)
  %217 = getelementptr inbounds nuw i8, ptr %121, i64 6144
  tail call void @llvm.prefetch.p0(ptr nonnull %217, i32 0, i32 2, i32 1)
  %218 = getelementptr inbounds nuw i8, ptr %121, i64 6208
  tail call void @llvm.prefetch.p0(ptr nonnull %218, i32 0, i32 2, i32 1)
  %219 = getelementptr inbounds nuw i8, ptr %121, i64 6272
  tail call void @llvm.prefetch.p0(ptr nonnull %219, i32 0, i32 2, i32 1)
  %220 = getelementptr inbounds nuw i8, ptr %121, i64 6336
  tail call void @llvm.prefetch.p0(ptr nonnull %220, i32 0, i32 2, i32 1)
  %221 = getelementptr inbounds nuw i8, ptr %121, i64 6400
  tail call void @llvm.prefetch.p0(ptr nonnull %221, i32 0, i32 2, i32 1)
  %222 = getelementptr inbounds nuw i8, ptr %121, i64 6464
  tail call void @llvm.prefetch.p0(ptr nonnull %222, i32 0, i32 2, i32 1)
  %223 = getelementptr inbounds nuw i8, ptr %121, i64 6528
  tail call void @llvm.prefetch.p0(ptr nonnull %223, i32 0, i32 2, i32 1)
  %224 = getelementptr inbounds nuw i8, ptr %121, i64 6592
  tail call void @llvm.prefetch.p0(ptr nonnull %224, i32 0, i32 2, i32 1)
  %225 = getelementptr inbounds nuw i8, ptr %121, i64 6656
  tail call void @llvm.prefetch.p0(ptr nonnull %225, i32 0, i32 2, i32 1)
  %226 = getelementptr inbounds nuw i8, ptr %121, i64 6720
  tail call void @llvm.prefetch.p0(ptr nonnull %226, i32 0, i32 2, i32 1)
  %227 = getelementptr inbounds nuw i8, ptr %121, i64 6784
  tail call void @llvm.prefetch.p0(ptr nonnull %227, i32 0, i32 2, i32 1)
  %228 = getelementptr inbounds nuw i8, ptr %121, i64 6848
  tail call void @llvm.prefetch.p0(ptr nonnull %228, i32 0, i32 2, i32 1)
  %229 = getelementptr inbounds nuw i8, ptr %121, i64 6912
  tail call void @llvm.prefetch.p0(ptr nonnull %229, i32 0, i32 2, i32 1)
  %230 = getelementptr inbounds nuw i8, ptr %121, i64 6976
  tail call void @llvm.prefetch.p0(ptr nonnull %230, i32 0, i32 2, i32 1)
  %231 = getelementptr inbounds nuw i8, ptr %121, i64 7040
  tail call void @llvm.prefetch.p0(ptr nonnull %231, i32 0, i32 2, i32 1)
  %232 = getelementptr inbounds nuw i8, ptr %121, i64 7104
  tail call void @llvm.prefetch.p0(ptr nonnull %232, i32 0, i32 2, i32 1)
  %233 = getelementptr inbounds nuw i8, ptr %121, i64 7168
  tail call void @llvm.prefetch.p0(ptr nonnull %233, i32 0, i32 2, i32 1)
  %234 = getelementptr inbounds nuw i8, ptr %121, i64 7232
  tail call void @llvm.prefetch.p0(ptr nonnull %234, i32 0, i32 2, i32 1)
  %235 = getelementptr inbounds nuw i8, ptr %121, i64 7296
  tail call void @llvm.prefetch.p0(ptr nonnull %235, i32 0, i32 2, i32 1)
  %236 = getelementptr inbounds nuw i8, ptr %121, i64 7360
  tail call void @llvm.prefetch.p0(ptr nonnull %236, i32 0, i32 2, i32 1)
  %237 = getelementptr inbounds nuw i8, ptr %121, i64 7424
  tail call void @llvm.prefetch.p0(ptr nonnull %237, i32 0, i32 2, i32 1)
  %238 = getelementptr inbounds nuw i8, ptr %121, i64 7488
  tail call void @llvm.prefetch.p0(ptr nonnull %238, i32 0, i32 2, i32 1)
  %239 = getelementptr inbounds nuw i8, ptr %121, i64 7552
  tail call void @llvm.prefetch.p0(ptr nonnull %239, i32 0, i32 2, i32 1)
  %240 = getelementptr inbounds nuw i8, ptr %121, i64 7616
  tail call void @llvm.prefetch.p0(ptr nonnull %240, i32 0, i32 2, i32 1)
  %241 = getelementptr inbounds nuw i8, ptr %121, i64 7680
  tail call void @llvm.prefetch.p0(ptr nonnull %241, i32 0, i32 2, i32 1)
  %242 = getelementptr inbounds nuw i8, ptr %121, i64 7744
  tail call void @llvm.prefetch.p0(ptr nonnull %242, i32 0, i32 2, i32 1)
  %243 = getelementptr inbounds nuw i8, ptr %121, i64 7808
  tail call void @llvm.prefetch.p0(ptr nonnull %243, i32 0, i32 2, i32 1)
  %244 = getelementptr inbounds nuw i8, ptr %121, i64 7872
  tail call void @llvm.prefetch.p0(ptr nonnull %244, i32 0, i32 2, i32 1)
  %245 = getelementptr inbounds nuw i8, ptr %121, i64 7936
  tail call void @llvm.prefetch.p0(ptr nonnull %245, i32 0, i32 2, i32 1)
  %246 = getelementptr inbounds nuw i8, ptr %121, i64 8000
  tail call void @llvm.prefetch.p0(ptr nonnull %246, i32 0, i32 2, i32 1)
  %247 = getelementptr inbounds nuw i8, ptr %121, i64 8064
  tail call void @llvm.prefetch.p0(ptr nonnull %247, i32 0, i32 2, i32 1)
  %248 = getelementptr inbounds nuw i8, ptr %121, i64 8128
  tail call void @llvm.prefetch.p0(ptr nonnull %248, i32 0, i32 2, i32 1)
  %249 = getelementptr inbounds nuw i8, ptr %121, i64 8192
  tail call void @llvm.prefetch.p0(ptr nonnull %249, i32 0, i32 2, i32 1)
  %250 = getelementptr inbounds nuw i8, ptr %121, i64 8256
  tail call void @llvm.prefetch.p0(ptr nonnull %250, i32 0, i32 2, i32 1)
  %251 = getelementptr inbounds nuw i8, ptr %121, i64 8320
  tail call void @llvm.prefetch.p0(ptr nonnull %251, i32 0, i32 2, i32 1)
  %252 = getelementptr inbounds nuw i8, ptr %121, i64 8384
  tail call void @llvm.prefetch.p0(ptr nonnull %252, i32 0, i32 2, i32 1)
  %253 = getelementptr inbounds nuw i8, ptr %121, i64 8448
  tail call void @llvm.prefetch.p0(ptr nonnull %253, i32 0, i32 2, i32 1)
  %254 = getelementptr inbounds nuw i8, ptr %121, i64 8512
  tail call void @llvm.prefetch.p0(ptr nonnull %254, i32 0, i32 2, i32 1)
  %255 = getelementptr inbounds nuw i8, ptr %121, i64 8576
  tail call void @llvm.prefetch.p0(ptr nonnull %255, i32 0, i32 2, i32 1)
  %256 = getelementptr inbounds nuw i8, ptr %121, i64 8640
  tail call void @llvm.prefetch.p0(ptr nonnull %256, i32 0, i32 2, i32 1)
  %257 = getelementptr inbounds nuw i8, ptr %121, i64 8704
  tail call void @llvm.prefetch.p0(ptr nonnull %257, i32 0, i32 2, i32 1)
  %258 = getelementptr inbounds nuw i8, ptr %121, i64 8768
  tail call void @llvm.prefetch.p0(ptr nonnull %258, i32 0, i32 2, i32 1)
  %259 = getelementptr inbounds nuw i8, ptr %121, i64 8832
  tail call void @llvm.prefetch.p0(ptr nonnull %259, i32 0, i32 2, i32 1)
  %260 = getelementptr inbounds nuw i8, ptr %121, i64 8896
  tail call void @llvm.prefetch.p0(ptr nonnull %260, i32 0, i32 2, i32 1)
  %261 = getelementptr inbounds nuw i8, ptr %121, i64 8960
  tail call void @llvm.prefetch.p0(ptr nonnull %261, i32 0, i32 2, i32 1)
  %262 = getelementptr inbounds nuw i8, ptr %121, i64 9024
  tail call void @llvm.prefetch.p0(ptr nonnull %262, i32 0, i32 2, i32 1)
  %263 = getelementptr inbounds nuw i8, ptr %121, i64 9088
  tail call void @llvm.prefetch.p0(ptr nonnull %263, i32 0, i32 2, i32 1)
  %264 = getelementptr inbounds nuw i8, ptr %121, i64 9152
  tail call void @llvm.prefetch.p0(ptr nonnull %264, i32 0, i32 2, i32 1)
  %265 = getelementptr inbounds nuw i8, ptr %121, i64 9216
  tail call void @llvm.prefetch.p0(ptr nonnull %265, i32 0, i32 2, i32 1)
  %266 = getelementptr inbounds nuw i8, ptr %121, i64 9280
  tail call void @llvm.prefetch.p0(ptr nonnull %266, i32 0, i32 2, i32 1)
  %267 = getelementptr inbounds nuw i8, ptr %121, i64 9344
  tail call void @llvm.prefetch.p0(ptr nonnull %267, i32 0, i32 2, i32 1)
  %268 = getelementptr inbounds nuw i8, ptr %121, i64 9408
  tail call void @llvm.prefetch.p0(ptr nonnull %268, i32 0, i32 2, i32 1)
  %269 = getelementptr inbounds nuw i8, ptr %121, i64 9472
  tail call void @llvm.prefetch.p0(ptr nonnull %269, i32 0, i32 2, i32 1)
  %270 = getelementptr inbounds nuw i8, ptr %121, i64 9536
  tail call void @llvm.prefetch.p0(ptr nonnull %270, i32 0, i32 2, i32 1)
  %271 = getelementptr inbounds nuw i8, ptr %121, i64 9600
  tail call void @llvm.prefetch.p0(ptr nonnull %271, i32 0, i32 2, i32 1)
  %272 = getelementptr inbounds nuw i8, ptr %121, i64 9664
  tail call void @llvm.prefetch.p0(ptr nonnull %272, i32 0, i32 2, i32 1)
  %273 = getelementptr inbounds nuw i8, ptr %121, i64 9728
  tail call void @llvm.prefetch.p0(ptr nonnull %273, i32 0, i32 2, i32 1)
  %274 = getelementptr inbounds nuw i8, ptr %121, i64 9792
  tail call void @llvm.prefetch.p0(ptr nonnull %274, i32 0, i32 2, i32 1)
  %275 = getelementptr inbounds nuw i8, ptr %121, i64 9856
  tail call void @llvm.prefetch.p0(ptr nonnull %275, i32 0, i32 2, i32 1)
  %276 = getelementptr inbounds nuw i8, ptr %121, i64 9920
  tail call void @llvm.prefetch.p0(ptr nonnull %276, i32 0, i32 2, i32 1)
  %277 = getelementptr inbounds nuw i8, ptr %121, i64 9984
  tail call void @llvm.prefetch.p0(ptr nonnull %277, i32 0, i32 2, i32 1)
  %278 = getelementptr inbounds nuw i8, ptr %121, i64 10048
  tail call void @llvm.prefetch.p0(ptr nonnull %278, i32 0, i32 2, i32 1)
  %279 = getelementptr inbounds nuw i8, ptr %121, i64 10112
  tail call void @llvm.prefetch.p0(ptr nonnull %279, i32 0, i32 2, i32 1)
  %280 = getelementptr inbounds nuw i8, ptr %121, i64 10176
  tail call void @llvm.prefetch.p0(ptr nonnull %280, i32 0, i32 2, i32 1)
  %281 = getelementptr inbounds nuw i8, ptr %121, i64 10240
  tail call void @llvm.prefetch.p0(ptr nonnull %281, i32 0, i32 2, i32 1)
  %282 = getelementptr inbounds nuw i8, ptr %121, i64 10304
  tail call void @llvm.prefetch.p0(ptr nonnull %282, i32 0, i32 2, i32 1)
  %283 = getelementptr inbounds nuw i8, ptr %121, i64 10368
  tail call void @llvm.prefetch.p0(ptr nonnull %283, i32 0, i32 2, i32 1)
  %284 = getelementptr inbounds nuw i8, ptr %121, i64 10432
  tail call void @llvm.prefetch.p0(ptr nonnull %284, i32 0, i32 2, i32 1)
  %285 = getelementptr inbounds nuw i8, ptr %121, i64 10496
  tail call void @llvm.prefetch.p0(ptr nonnull %285, i32 0, i32 2, i32 1)
  %286 = getelementptr inbounds nuw i8, ptr %121, i64 10560
  tail call void @llvm.prefetch.p0(ptr nonnull %286, i32 0, i32 2, i32 1)
  %287 = getelementptr inbounds nuw i8, ptr %121, i64 10624
  tail call void @llvm.prefetch.p0(ptr nonnull %287, i32 0, i32 2, i32 1)
  %288 = getelementptr inbounds nuw i8, ptr %121, i64 10688
  tail call void @llvm.prefetch.p0(ptr nonnull %288, i32 0, i32 2, i32 1)
  %289 = getelementptr inbounds nuw i8, ptr %121, i64 10752
  tail call void @llvm.prefetch.p0(ptr nonnull %289, i32 0, i32 2, i32 1)
  %290 = getelementptr inbounds nuw i8, ptr %121, i64 10816
  tail call void @llvm.prefetch.p0(ptr nonnull %290, i32 0, i32 2, i32 1)
  %291 = getelementptr inbounds nuw i8, ptr %121, i64 10880
  tail call void @llvm.prefetch.p0(ptr nonnull %291, i32 0, i32 2, i32 1)
  %292 = getelementptr inbounds nuw i8, ptr %121, i64 10944
  tail call void @llvm.prefetch.p0(ptr nonnull %292, i32 0, i32 2, i32 1)
  %293 = getelementptr inbounds nuw i8, ptr %121, i64 11008
  tail call void @llvm.prefetch.p0(ptr nonnull %293, i32 0, i32 2, i32 1)
  %294 = getelementptr inbounds nuw i8, ptr %121, i64 11072
  tail call void @llvm.prefetch.p0(ptr nonnull %294, i32 0, i32 2, i32 1)
  %295 = getelementptr inbounds nuw i8, ptr %121, i64 11136
  tail call void @llvm.prefetch.p0(ptr nonnull %295, i32 0, i32 2, i32 1)
  %296 = getelementptr inbounds nuw i8, ptr %121, i64 11200
  tail call void @llvm.prefetch.p0(ptr nonnull %296, i32 0, i32 2, i32 1)
  %297 = getelementptr inbounds nuw i8, ptr %121, i64 11264
  tail call void @llvm.prefetch.p0(ptr nonnull %297, i32 0, i32 2, i32 1)
  %298 = getelementptr inbounds nuw i8, ptr %121, i64 11328
  tail call void @llvm.prefetch.p0(ptr nonnull %298, i32 0, i32 2, i32 1)
  %299 = getelementptr inbounds nuw i8, ptr %121, i64 11392
  tail call void @llvm.prefetch.p0(ptr nonnull %299, i32 0, i32 2, i32 1)
  %300 = getelementptr inbounds nuw i8, ptr %121, i64 11456
  tail call void @llvm.prefetch.p0(ptr nonnull %300, i32 0, i32 2, i32 1)
  %301 = getelementptr inbounds nuw i8, ptr %121, i64 11520
  tail call void @llvm.prefetch.p0(ptr nonnull %301, i32 0, i32 2, i32 1)
  %302 = getelementptr inbounds nuw i8, ptr %121, i64 11584
  tail call void @llvm.prefetch.p0(ptr nonnull %302, i32 0, i32 2, i32 1)
  %303 = getelementptr inbounds nuw i8, ptr %121, i64 11648
  tail call void @llvm.prefetch.p0(ptr nonnull %303, i32 0, i32 2, i32 1)
  %304 = getelementptr inbounds nuw i8, ptr %121, i64 11712
  tail call void @llvm.prefetch.p0(ptr nonnull %304, i32 0, i32 2, i32 1)
  %305 = getelementptr inbounds nuw i8, ptr %121, i64 11776
  tail call void @llvm.prefetch.p0(ptr nonnull %305, i32 0, i32 2, i32 1)
  %306 = getelementptr inbounds nuw i8, ptr %121, i64 11840
  tail call void @llvm.prefetch.p0(ptr nonnull %306, i32 0, i32 2, i32 1)
  %307 = getelementptr inbounds nuw i8, ptr %121, i64 11904
  tail call void @llvm.prefetch.p0(ptr nonnull %307, i32 0, i32 2, i32 1)
  %308 = getelementptr inbounds nuw i8, ptr %121, i64 11968
  tail call void @llvm.prefetch.p0(ptr nonnull %308, i32 0, i32 2, i32 1)
  %309 = getelementptr inbounds nuw i8, ptr %121, i64 12032
  tail call void @llvm.prefetch.p0(ptr nonnull %309, i32 0, i32 2, i32 1)
  %310 = getelementptr inbounds nuw i8, ptr %121, i64 12096
  tail call void @llvm.prefetch.p0(ptr nonnull %310, i32 0, i32 2, i32 1)
  %311 = getelementptr inbounds nuw i8, ptr %121, i64 12160
  tail call void @llvm.prefetch.p0(ptr nonnull %311, i32 0, i32 2, i32 1)
  %312 = getelementptr inbounds nuw i8, ptr %121, i64 12224
  tail call void @llvm.prefetch.p0(ptr nonnull %312, i32 0, i32 2, i32 1)
  %313 = getelementptr inbounds nuw i8, ptr %121, i64 12288
  tail call void @llvm.prefetch.p0(ptr nonnull %313, i32 0, i32 2, i32 1)
  %314 = getelementptr inbounds nuw i8, ptr %121, i64 12352
  tail call void @llvm.prefetch.p0(ptr nonnull %314, i32 0, i32 2, i32 1)
  %315 = getelementptr inbounds nuw i8, ptr %121, i64 12416
  tail call void @llvm.prefetch.p0(ptr nonnull %315, i32 0, i32 2, i32 1)
  %316 = getelementptr inbounds nuw i8, ptr %121, i64 12480
  tail call void @llvm.prefetch.p0(ptr nonnull %316, i32 0, i32 2, i32 1)
  %317 = getelementptr inbounds nuw i8, ptr %121, i64 12544
  tail call void @llvm.prefetch.p0(ptr nonnull %317, i32 0, i32 2, i32 1)
  %318 = getelementptr inbounds nuw i8, ptr %121, i64 12608
  tail call void @llvm.prefetch.p0(ptr nonnull %318, i32 0, i32 2, i32 1)
  %319 = getelementptr inbounds nuw i8, ptr %121, i64 12672
  tail call void @llvm.prefetch.p0(ptr nonnull %319, i32 0, i32 2, i32 1)
  %320 = getelementptr inbounds nuw i8, ptr %121, i64 12736
  tail call void @llvm.prefetch.p0(ptr nonnull %320, i32 0, i32 2, i32 1)
  %321 = getelementptr inbounds nuw i8, ptr %121, i64 12800
  tail call void @llvm.prefetch.p0(ptr nonnull %321, i32 0, i32 2, i32 1)
  %322 = getelementptr inbounds nuw i8, ptr %121, i64 12864
  tail call void @llvm.prefetch.p0(ptr nonnull %322, i32 0, i32 2, i32 1)
  %323 = getelementptr inbounds nuw i8, ptr %121, i64 12928
  tail call void @llvm.prefetch.p0(ptr nonnull %323, i32 0, i32 2, i32 1)
  %324 = getelementptr inbounds nuw i8, ptr %121, i64 12992
  tail call void @llvm.prefetch.p0(ptr nonnull %324, i32 0, i32 2, i32 1)
  %325 = getelementptr inbounds nuw i8, ptr %121, i64 13056
  tail call void @llvm.prefetch.p0(ptr nonnull %325, i32 0, i32 2, i32 1)
  %326 = getelementptr inbounds nuw i8, ptr %121, i64 13120
  tail call void @llvm.prefetch.p0(ptr nonnull %326, i32 0, i32 2, i32 1)
  %327 = getelementptr inbounds nuw i8, ptr %121, i64 13184
  tail call void @llvm.prefetch.p0(ptr nonnull %327, i32 0, i32 2, i32 1)
  %328 = getelementptr inbounds nuw i8, ptr %121, i64 13248
  tail call void @llvm.prefetch.p0(ptr nonnull %328, i32 0, i32 2, i32 1)
  %329 = getelementptr inbounds nuw i8, ptr %121, i64 13312
  tail call void @llvm.prefetch.p0(ptr nonnull %329, i32 0, i32 2, i32 1)
  %330 = getelementptr inbounds nuw i8, ptr %121, i64 13376
  tail call void @llvm.prefetch.p0(ptr nonnull %330, i32 0, i32 2, i32 1)
  %331 = getelementptr inbounds nuw i8, ptr %121, i64 13440
  tail call void @llvm.prefetch.p0(ptr nonnull %331, i32 0, i32 2, i32 1)
  %332 = getelementptr inbounds nuw i8, ptr %121, i64 13504
  tail call void @llvm.prefetch.p0(ptr nonnull %332, i32 0, i32 2, i32 1)
  %333 = getelementptr inbounds nuw i8, ptr %121, i64 13568
  tail call void @llvm.prefetch.p0(ptr nonnull %333, i32 0, i32 2, i32 1)
  %334 = getelementptr inbounds nuw i8, ptr %121, i64 13632
  tail call void @llvm.prefetch.p0(ptr nonnull %334, i32 0, i32 2, i32 1)
  %335 = getelementptr inbounds nuw i8, ptr %121, i64 13696
  tail call void @llvm.prefetch.p0(ptr nonnull %335, i32 0, i32 2, i32 1)
  %336 = getelementptr inbounds nuw i8, ptr %121, i64 13760
  tail call void @llvm.prefetch.p0(ptr nonnull %336, i32 0, i32 2, i32 1)
  %337 = getelementptr inbounds nuw i8, ptr %121, i64 13824
  tail call void @llvm.prefetch.p0(ptr nonnull %337, i32 0, i32 2, i32 1)
  %338 = getelementptr inbounds nuw i8, ptr %121, i64 13888
  tail call void @llvm.prefetch.p0(ptr nonnull %338, i32 0, i32 2, i32 1)
  %339 = getelementptr inbounds nuw i8, ptr %121, i64 13952
  tail call void @llvm.prefetch.p0(ptr nonnull %339, i32 0, i32 2, i32 1)
  %340 = getelementptr inbounds nuw i8, ptr %121, i64 14016
  tail call void @llvm.prefetch.p0(ptr nonnull %340, i32 0, i32 2, i32 1)
  %341 = getelementptr inbounds nuw i8, ptr %121, i64 14080
  tail call void @llvm.prefetch.p0(ptr nonnull %341, i32 0, i32 2, i32 1)
  %342 = getelementptr inbounds nuw i8, ptr %121, i64 14144
  tail call void @llvm.prefetch.p0(ptr nonnull %342, i32 0, i32 2, i32 1)
  %343 = getelementptr inbounds nuw i8, ptr %121, i64 14208
  tail call void @llvm.prefetch.p0(ptr nonnull %343, i32 0, i32 2, i32 1)
  %344 = getelementptr inbounds nuw i8, ptr %121, i64 14272
  tail call void @llvm.prefetch.p0(ptr nonnull %344, i32 0, i32 2, i32 1)
  %345 = getelementptr inbounds nuw i8, ptr %121, i64 14336
  tail call void @llvm.prefetch.p0(ptr nonnull %345, i32 0, i32 2, i32 1)
  %346 = getelementptr inbounds nuw i8, ptr %121, i64 14400
  tail call void @llvm.prefetch.p0(ptr nonnull %346, i32 0, i32 2, i32 1)
  %347 = getelementptr inbounds nuw i8, ptr %121, i64 14464
  tail call void @llvm.prefetch.p0(ptr nonnull %347, i32 0, i32 2, i32 1)
  %348 = getelementptr inbounds nuw i8, ptr %121, i64 14528
  tail call void @llvm.prefetch.p0(ptr nonnull %348, i32 0, i32 2, i32 1)
  %349 = getelementptr inbounds nuw i8, ptr %121, i64 14592
  tail call void @llvm.prefetch.p0(ptr nonnull %349, i32 0, i32 2, i32 1)
  %350 = getelementptr inbounds nuw i8, ptr %121, i64 14656
  tail call void @llvm.prefetch.p0(ptr nonnull %350, i32 0, i32 2, i32 1)
  %351 = getelementptr inbounds nuw i8, ptr %121, i64 14720
  tail call void @llvm.prefetch.p0(ptr nonnull %351, i32 0, i32 2, i32 1)
  %352 = getelementptr inbounds nuw i8, ptr %121, i64 14784
  tail call void @llvm.prefetch.p0(ptr nonnull %352, i32 0, i32 2, i32 1)
  %353 = getelementptr inbounds nuw i8, ptr %121, i64 14848
  tail call void @llvm.prefetch.p0(ptr nonnull %353, i32 0, i32 2, i32 1)
  %354 = getelementptr inbounds nuw i8, ptr %121, i64 14912
  tail call void @llvm.prefetch.p0(ptr nonnull %354, i32 0, i32 2, i32 1)
  %355 = getelementptr inbounds nuw i8, ptr %121, i64 14976
  tail call void @llvm.prefetch.p0(ptr nonnull %355, i32 0, i32 2, i32 1)
  %356 = getelementptr inbounds nuw i8, ptr %121, i64 15040
  tail call void @llvm.prefetch.p0(ptr nonnull %356, i32 0, i32 2, i32 1)
  %357 = getelementptr inbounds nuw i8, ptr %121, i64 15104
  tail call void @llvm.prefetch.p0(ptr nonnull %357, i32 0, i32 2, i32 1)
  %358 = getelementptr inbounds nuw i8, ptr %121, i64 15168
  tail call void @llvm.prefetch.p0(ptr nonnull %358, i32 0, i32 2, i32 1)
  %359 = getelementptr inbounds nuw i8, ptr %121, i64 15232
  tail call void @llvm.prefetch.p0(ptr nonnull %359, i32 0, i32 2, i32 1)
  %360 = getelementptr inbounds nuw i8, ptr %121, i64 15296
  tail call void @llvm.prefetch.p0(ptr nonnull %360, i32 0, i32 2, i32 1)
  %361 = getelementptr inbounds nuw i8, ptr %121, i64 15360
  tail call void @llvm.prefetch.p0(ptr nonnull %361, i32 0, i32 2, i32 1)
  %362 = getelementptr inbounds nuw i8, ptr %121, i64 15424
  tail call void @llvm.prefetch.p0(ptr nonnull %362, i32 0, i32 2, i32 1)
  %363 = getelementptr inbounds nuw i8, ptr %121, i64 15488
  tail call void @llvm.prefetch.p0(ptr nonnull %363, i32 0, i32 2, i32 1)
  %364 = getelementptr inbounds nuw i8, ptr %121, i64 15552
  tail call void @llvm.prefetch.p0(ptr nonnull %364, i32 0, i32 2, i32 1)
  %365 = getelementptr inbounds nuw i8, ptr %121, i64 15616
  tail call void @llvm.prefetch.p0(ptr nonnull %365, i32 0, i32 2, i32 1)
  %366 = getelementptr inbounds nuw i8, ptr %121, i64 15680
  tail call void @llvm.prefetch.p0(ptr nonnull %366, i32 0, i32 2, i32 1)
  %367 = getelementptr inbounds nuw i8, ptr %121, i64 15744
  tail call void @llvm.prefetch.p0(ptr nonnull %367, i32 0, i32 2, i32 1)
  %368 = getelementptr inbounds nuw i8, ptr %121, i64 15808
  tail call void @llvm.prefetch.p0(ptr nonnull %368, i32 0, i32 2, i32 1)
  %369 = getelementptr inbounds nuw i8, ptr %121, i64 15872
  tail call void @llvm.prefetch.p0(ptr nonnull %369, i32 0, i32 2, i32 1)
  %370 = getelementptr inbounds nuw i8, ptr %121, i64 15936
  tail call void @llvm.prefetch.p0(ptr nonnull %370, i32 0, i32 2, i32 1)
  %371 = getelementptr inbounds nuw i8, ptr %121, i64 16000
  tail call void @llvm.prefetch.p0(ptr nonnull %371, i32 0, i32 2, i32 1)
  %372 = getelementptr inbounds nuw i8, ptr %121, i64 16064
  tail call void @llvm.prefetch.p0(ptr nonnull %372, i32 0, i32 2, i32 1)
  %373 = getelementptr inbounds nuw i8, ptr %121, i64 16128
  tail call void @llvm.prefetch.p0(ptr nonnull %373, i32 0, i32 2, i32 1)
  %374 = getelementptr inbounds nuw i8, ptr %121, i64 16192
  tail call void @llvm.prefetch.p0(ptr nonnull %374, i32 0, i32 2, i32 1)
  %375 = getelementptr inbounds nuw i8, ptr %121, i64 16256
  tail call void @llvm.prefetch.p0(ptr nonnull %375, i32 0, i32 2, i32 1)
  %376 = getelementptr inbounds nuw i8, ptr %121, i64 16320
  tail call void @llvm.prefetch.p0(ptr nonnull %376, i32 0, i32 2, i32 1)
  %377 = getelementptr inbounds nuw i8, ptr %121, i64 16384
  tail call void @llvm.prefetch.p0(ptr nonnull %377, i32 0, i32 2, i32 1)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %109
  %378 = icmp eq i8 %10, 3
  br i1 %378, label %379, label %387

379:                                              ; preds = %.loopexit
  %380 = getelementptr inbounds nuw i8, ptr %1, i64 %66
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %382 = load ptr, ptr %381, align 8, !tbaa !37
  br i1 %63, label %385, label %383

383:                                              ; preds = %379
  %384 = tail call i64 @HUF_decompress1X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %380, i64 noundef %64, ptr noundef %382, i32 noundef %39) #19
  br label %395

385:                                              ; preds = %379
  %386 = tail call i64 @HUF_decompress4X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %380, i64 noundef %64, ptr noundef %382, i32 noundef %39) #19
  br label %395

387:                                              ; preds = %.loopexit
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %389 = getelementptr inbounds nuw i8, ptr %1, i64 %66
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 27324
  br i1 %63, label %393, label %391

391:                                              ; preds = %387
  %392 = tail call i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef nonnull %388, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %389, i64 noundef %64, ptr noundef nonnull %390, i64 noundef 2560, i32 noundef %39) #19
  br label %395

393:                                              ; preds = %387
  %394 = tail call i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef nonnull %388, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %389, i64 noundef %64, ptr noundef nonnull %390, i64 noundef 2560, i32 noundef %39) #19
  br label %395

395:                                              ; preds = %393, %391, %385, %383
  %396 = phi i64 [ %384, %383 ], [ %386, %385 ], [ %392, %391 ], [ %394, %393 ]
  %397 = load i32, ptr %114, align 8, !tbaa !35
  %398 = icmp eq i32 %397, 2
  br i1 %398, label %399, label %409

399:                                              ; preds = %395
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %401 = load ptr, ptr %113, align 8, !tbaa !34
  %402 = getelementptr inbounds i8, ptr %401, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %400, ptr noundef nonnull align 1 dereferenceable(65536) %402, i64 65536, i1 false)
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %404 = load ptr, ptr %403, align 8, !tbaa !33
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 65504
  %406 = add nsw i64 %67, -65536
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %405, ptr align 1 %404, i64 %406, i1 false)
  %407 = load <2 x ptr>, ptr %403, align 8, !tbaa !38
  %408 = getelementptr i8, <2 x ptr> %407, <2 x i64> <i64 65504, i64 -32>
  store <2 x ptr> %408, ptr %403, align 8, !tbaa !38
  br label %409

409:                                              ; preds = %399, %395
  %410 = icmp ult i64 %396, -119
  br i1 %410, label %411, label %599

411:                                              ; preds = %409
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %413 = load ptr, ptr %412, align 8, !tbaa !33
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %413, ptr %414, align 8, !tbaa !39
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %67, ptr %415, align 8, !tbaa !40
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 30000
  store i32 1, ptr %416, align 8, !tbaa !29
  %417 = icmp eq i8 %10, 2
  br i1 %417, label %418, label %599

418:                                              ; preds = %411
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %419, ptr %420, align 8, !tbaa !37
  br label %599

421:                                              ; preds = %18
  %422 = zext i8 %9 to i32
  %423 = lshr i32 %422, 2
  %424 = and i32 %423, 3
  %425 = tail call i64 @llvm.umin.i64(i64 %19, i64 %4)
  switch i32 %424, label %426 [
    i32 3, label %433
    i32 1, label %429
  ]

426:                                              ; preds = %421
  %427 = lshr i32 %422, 3
  %428 = zext nneg i32 %427 to i64
  br label %444

429:                                              ; preds = %421
  %430 = load i16, ptr %1, align 1, !tbaa !5
  %431 = lshr i16 %430, 4
  %432 = zext nneg i16 %431 to i64
  br label %444

433:                                              ; preds = %421
  %434 = icmp eq i64 %2, 2
  br i1 %434, label %599, label %435

435:                                              ; preds = %433
  %436 = load i16, ptr %1, align 1, !tbaa !5
  %437 = getelementptr i8, ptr %1, i64 2
  %438 = load i8, ptr %437, align 1, !tbaa !9
  %439 = zext i16 %436 to i64
  %440 = zext i8 %438 to i64
  %441 = shl nuw nsw i64 %440, 16
  %442 = or disjoint i64 %441, %439
  %443 = lshr i64 %442, 4
  br label %444

444:                                              ; preds = %435, %429, %426
  %445 = phi i64 [ %428, %426 ], [ %443, %435 ], [ %432, %429 ]
  %446 = phi i64 [ 1, %426 ], [ 3, %435 ], [ 2, %429 ]
  %447 = icmp ne i64 %445, 0
  %448 = icmp eq ptr %3, null
  %449 = and i1 %448, %447
  br i1 %449, label %599, label %450

450:                                              ; preds = %444
  %451 = icmp samesign ugt i64 %445, %19
  br i1 %451, label %599, label %452

452:                                              ; preds = %450
  %453 = icmp ult i64 %4, %445
  br i1 %453, label %599, label %454

454:                                              ; preds = %452
  br i1 %13, label %459, label %455

455:                                              ; preds = %454
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %457 = load i32, ptr %456, align 8, !tbaa !28
  %458 = zext i32 %457 to i64
  br label %459

459:                                              ; preds = %455, %454
  %460 = phi i64 [ %458, %455 ], [ 131072, %454 ]
  %461 = icmp eq i32 %5, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %459
  %463 = add nuw nsw i64 %445, 64
  %464 = add nuw nsw i64 %463, %460
  %465 = icmp ugt i64 %4, %464
  br i1 %465, label %466, label %471

466:                                              ; preds = %462
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 %460
  %468 = getelementptr inbounds nuw i8, ptr %467, i64 32
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %468, ptr %469, align 8, !tbaa !33
  %470 = getelementptr inbounds nuw i8, ptr %468, i64 %445
  br label %485

471:                                              ; preds = %462, %459
  %472 = icmp samesign ult i64 %445, 65537
  br i1 %472, label %473, label %477

473:                                              ; preds = %471
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %474, ptr %475, align 8, !tbaa !33
  %476 = getelementptr inbounds nuw i8, ptr %474, i64 %445
  br label %485

477:                                              ; preds = %471
  %478 = getelementptr inbounds nuw i8, ptr %3, i64 %425
  %479 = sub nsw i64 0, %445
  %480 = getelementptr inbounds i8, ptr %478, i64 %479
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 65504
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 %445
  %483 = getelementptr inbounds i8, ptr %482, i64 -65536
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %481, ptr %484, align 8, !tbaa !33
  br label %485

485:                                              ; preds = %477, %473, %466
  %486 = phi ptr [ %474, %473 ], [ %481, %477 ], [ %468, %466 ]
  %487 = phi ptr [ %476, %473 ], [ %483, %477 ], [ %470, %466 ]
  %488 = phi i1 [ false, %473 ], [ true, %477 ], [ false, %466 ]
  %489 = phi i32 [ 0, %473 ], [ 2, %477 ], [ 1, %466 ]
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %487, ptr %490, align 8, !tbaa !34
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %489, ptr %491, align 8, !tbaa !35
  %492 = add nuw nsw i64 %446, %445
  %493 = add nuw nsw i64 %492, 32
  %494 = icmp ugt i64 %493, %2
  br i1 %494, label %495, label %510

495:                                              ; preds = %485
  %496 = icmp samesign ugt i64 %492, %2
  br i1 %496, label %599, label %497

497:                                              ; preds = %495
  %498 = getelementptr inbounds nuw i8, ptr %1, i64 %446
  br i1 %488, label %499, label %504

499:                                              ; preds = %497
  %500 = add nsw i64 %445, -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %486, ptr nonnull align 1 %498, i64 %500, i1 false)
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 %445
  %503 = getelementptr inbounds i8, ptr %502, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %501, ptr noundef nonnull align 1 dereferenceable(65536) %503, i64 65536, i1 false)
  br label %505

504:                                              ; preds = %497
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %486, ptr nonnull align 1 %498, i64 %445, i1 false)
  br label %505

505:                                              ; preds = %504, %499
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %507 = load ptr, ptr %506, align 8, !tbaa !33
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %507, ptr %508, align 8, !tbaa !39
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %445, ptr %509, align 8, !tbaa !40
  br label %599

510:                                              ; preds = %485
  %511 = getelementptr inbounds nuw i8, ptr %1, i64 %446
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %511, ptr %512, align 8, !tbaa !39
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %445, ptr %513, align 8, !tbaa !40
  %514 = getelementptr inbounds nuw i8, ptr %511, i64 %445
  store ptr %514, ptr %490, align 8, !tbaa !34
  store i32 0, ptr %491, align 8, !tbaa !35
  br label %599

515:                                              ; preds = %18
  %516 = zext i8 %9 to i32
  %517 = lshr i32 %516, 2
  %518 = and i32 %517, 3
  %519 = tail call i64 @llvm.umin.i64(i64 %19, i64 %4)
  switch i32 %518, label %520 [
    i32 3, label %529
    i32 1, label %523
  ]

520:                                              ; preds = %515
  %521 = lshr i32 %516, 3
  %522 = zext nneg i32 %521 to i64
  br label %540

523:                                              ; preds = %515
  %524 = icmp eq i64 %2, 2
  br i1 %524, label %599, label %525

525:                                              ; preds = %523
  %526 = load i16, ptr %1, align 1, !tbaa !5
  %527 = lshr i16 %526, 4
  %528 = zext nneg i16 %527 to i64
  br label %540

529:                                              ; preds = %515
  %530 = icmp ult i64 %2, 4
  br i1 %530, label %599, label %531

531:                                              ; preds = %529
  %532 = load i16, ptr %1, align 1, !tbaa !5
  %533 = getelementptr i8, ptr %1, i64 2
  %534 = load i8, ptr %533, align 1, !tbaa !9
  %535 = zext i16 %532 to i64
  %536 = zext i8 %534 to i64
  %537 = shl nuw nsw i64 %536, 16
  %538 = or disjoint i64 %537, %535
  %539 = lshr i64 %538, 4
  br label %540

540:                                              ; preds = %531, %525, %520
  %541 = phi i64 [ %522, %520 ], [ %539, %531 ], [ %528, %525 ]
  %542 = phi i64 [ 1, %520 ], [ 3, %531 ], [ 2, %525 ]
  %543 = icmp ne i64 %541, 0
  %544 = icmp eq ptr %3, null
  %545 = and i1 %544, %543
  br i1 %545, label %599, label %546

546:                                              ; preds = %540
  %547 = icmp samesign ugt i64 %541, %19
  br i1 %547, label %599, label %548

548:                                              ; preds = %546
  %549 = icmp ult i64 %4, %541
  br i1 %549, label %599, label %550

550:                                              ; preds = %548
  br i1 %13, label %555, label %551

551:                                              ; preds = %550
  %552 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %553 = load i32, ptr %552, align 8, !tbaa !28
  %554 = zext i32 %553 to i64
  br label %555

555:                                              ; preds = %551, %550
  %556 = phi i64 [ %554, %551 ], [ 131072, %550 ]
  %557 = icmp eq i32 %5, 0
  br i1 %557, label %558, label %565

558:                                              ; preds = %555
  %559 = add nuw nsw i64 %541, 64
  %560 = add nuw nsw i64 %559, %556
  %561 = icmp ugt i64 %4, %560
  br i1 %561, label %562, label %565

562:                                              ; preds = %558
  %563 = getelementptr inbounds nuw i8, ptr %3, i64 %556
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 32
  br label %584

565:                                              ; preds = %558, %555
  %566 = icmp samesign ult i64 %541, 65537
  br i1 %566, label %567, label %569

567:                                              ; preds = %565
  %568 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  br label %584

569:                                              ; preds = %565
  %570 = getelementptr inbounds nuw i8, ptr %3, i64 %519
  %571 = sub nsw i64 0, %541
  %572 = getelementptr inbounds i8, ptr %570, i64 %571
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 65504
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %541
  %575 = getelementptr inbounds i8, ptr %574, i64 -65536
  %576 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %573, ptr %576, align 8, !tbaa !33
  %577 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %575, ptr %577, align 8, !tbaa !34
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 2, ptr %578, align 8, !tbaa !35
  %579 = getelementptr inbounds nuw i8, ptr %1, i64 %542
  %580 = load i8, ptr %579, align 1, !tbaa !9
  %581 = add nsw i64 %541, -65536
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %573, i8 %580, i64 %581, i1 false)
  %582 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %583 = load i8, ptr %579, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %582, i8 %583, i64 65536, i1 false)
  br label %593

584:                                              ; preds = %567, %562
  %585 = phi ptr [ %568, %567 ], [ %564, %562 ]
  %586 = phi i32 [ 0, %567 ], [ 1, %562 ]
  %587 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %585, ptr %587, align 8, !tbaa !33
  %588 = getelementptr inbounds nuw i8, ptr %585, i64 %541
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %588, ptr %589, align 8, !tbaa !34
  %590 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %586, ptr %590, align 8, !tbaa !35
  %591 = getelementptr inbounds nuw i8, ptr %1, i64 %542
  %592 = load i8, ptr %591, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %585, i8 %592, i64 %541, i1 false)
  br label %593

593:                                              ; preds = %584, %569
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %595 = load ptr, ptr %594, align 8, !tbaa !33
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %595, ptr %596, align 8, !tbaa !39
  %597 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %541, ptr %597, align 8, !tbaa !40
  %598 = add nuw nsw i64 %542, 1
  br label %599

default.unreachable16:                            ; preds = %18
  unreachable

599:                                              ; preds = %593, %548, %546, %540, %529, %523, %510, %505, %495, %452, %450, %444, %433, %418, %411, %409, %79, %76, %73, %71, %62, %24, %20, %6
  %600 = phi i64 [ -20, %6 ], [ -30, %20 ], [ -20, %24 ], [ -70, %62 ], [ -20, %71 ], [ -24, %73 ], [ -20, %76 ], [ -70, %79 ], [ -20, %409 ], [ %77, %418 ], [ %77, %411 ], [ %492, %505 ], [ %492, %510 ], [ -20, %433 ], [ -70, %444 ], [ -20, %450 ], [ -70, %452 ], [ -20, %495 ], [ %598, %593 ], [ -20, %523 ], [ -20, %529 ], [ -70, %540 ], [ -20, %546 ], [ -70, %548 ]
  ret i64 %600
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_buildFSETable(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef captures(none) %6, i64 %7, i32 noundef %8) local_unnamed_addr #2 {
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %.loopexit

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = add i32 %2, 1
  %15 = shl nuw i32 1, %5
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 106
  %17 = add i32 %15, -1
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  store i32 1, ptr %0, align 4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %21, align 4
  br label %.loopexit18

22:                                               ; preds = %12
  %23 = add i32 %5, -1
  %24 = shl i32 65536, %23
  %25 = ashr exact i32 %24, 16
  %26 = zext i32 %14 to i64
  br label %27

27:                                               ; preds = %44, %22
  %28 = phi i64 [ 0, %22 ], [ %49, %44 ]
  %29 = phi i32 [ %17, %22 ], [ %47, %44 ]
  %30 = phi i32 [ 1, %22 ], [ %46, %44 ]
  %31 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %28
  %32 = load i16, ptr %31, align 2, !tbaa !5
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = add i32 %29, -1
  %36 = zext i32 %29 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = getelementptr inbounds nuw i8, ptr %18, i64 %37
  %39 = trunc nuw i64 %28 to i32
  store i32 %39, ptr %38, align 4, !tbaa !41
  br label %44

40:                                               ; preds = %27
  %41 = sext i16 %32 to i32
  %42 = icmp sgt i32 %25, %41
  %43 = select i1 %42, i32 %30, i32 0
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i16 [ 1, %34 ], [ %32, %40 ]
  %46 = phi i32 [ %30, %34 ], [ %43, %40 ]
  %47 = phi i32 [ %35, %34 ], [ %29, %40 ]
  %48 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %28
  store i16 %45, ptr %48, align 2, !tbaa !5
  %49 = add nuw nsw i64 %28, 1
  %50 = icmp eq i64 %49, %26
  br i1 %50, label %51, label %27, !llvm.loop !43

51:                                               ; preds = %44
  store i32 %46, ptr %0, align 4
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %52, align 4
  %53 = icmp eq i32 %47, %17
  br i1 %53, label %.preheader, label %122

.loopexit18:                                      ; preds = %.loopexit17, %20
  %54 = lshr i32 %15, 1
  %55 = lshr i32 %15, 3
  %56 = add nuw nsw i32 %55, 3
  %57 = add nuw nsw i32 %56, %54
  %58 = zext nneg i32 %17 to i64
  %59 = zext nneg i32 %57 to i64
  %60 = zext i32 %15 to i64
  %61 = shl nuw nsw i64 %59, 1
  br label %102

.preheader:                                       ; preds = %51, %.loopexit17
  %62 = phi i64 [ %99, %.loopexit17 ], [ 0, %51 ]
  %63 = phi i64 [ %98, %.loopexit17 ], [ 0, %51 ]
  %64 = phi i64 [ %100, %.loopexit17 ], [ 0, %51 ]
  %65 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %62
  %66 = load i16, ptr %65, align 2, !tbaa !5
  %67 = getelementptr inbounds nuw i8, ptr %16, i64 %63
  store i64 %64, ptr %67, align 1, !tbaa !45
  %68 = icmp sgt i16 %66, 8
  br i1 %68, label %69, label %.loopexit17

69:                                               ; preds = %.preheader
  %70 = zext nneg i16 %66 to i64
  %71 = tail call i64 @llvm.umax.i64(i64 %70, i64 16)
  %72 = add nsw i64 %71, -9
  %73 = lshr i64 %72, 3
  %74 = add nuw nsw i64 %73, 1
  %75 = icmp samesign ult i16 %66, 33
  br i1 %75, label %.preheader51, label %76

76:                                               ; preds = %69
  %77 = and i64 %74, 4611686018427387900
  %78 = insertelement <2 x i64> poison, i64 %64, i64 0
  %79 = shufflevector <2 x i64> %78, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %80

80:                                               ; preds = %80, %76
  %81 = phi i64 [ 0, %76 ], [ %86, %80 ]
  %82 = shl i64 %81, 3
  %83 = getelementptr inbounds nuw i8, ptr %67, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 24
  store <2 x i64> %79, ptr %84, align 1, !tbaa !45
  store <2 x i64> %79, ptr %85, align 1, !tbaa !45
  %86 = add nuw nsw i64 %81, 4
  %87 = icmp eq i64 %86, %77
  br i1 %87, label %88, label %80, !llvm.loop !46

88:                                               ; preds = %80
  %89 = shl nuw nsw i64 %77, 3
  %90 = or disjoint i64 %89, 8
  %91 = icmp eq i64 %74, %77
  br i1 %91, label %.loopexit17, label %.preheader51

.preheader51:                                     ; preds = %88, %69
  %.ph = phi i64 [ %90, %88 ], [ 8, %69 ]
  br label %92

92:                                               ; preds = %.preheader51, %92
  %93 = phi i64 [ %95, %92 ], [ %.ph, %.preheader51 ]
  %94 = getelementptr inbounds nuw i8, ptr %67, i64 %93
  store i64 %64, ptr %94, align 1, !tbaa !45
  %95 = add nuw nsw i64 %93, 8
  %96 = icmp samesign ult i64 %95, %70
  br i1 %96, label %92, label %.loopexit17, !llvm.loop !49

.loopexit17:                                      ; preds = %92, %88, %.preheader
  %97 = sext i16 %66 to i64
  %98 = add i64 %63, %97
  %99 = add nuw nsw i64 %62, 1
  %100 = add i64 %64, 72340172838076673
  %101 = icmp eq i64 %99, %26
  br i1 %101, label %.loopexit18, label %.preheader, !llvm.loop !50

102:                                              ; preds = %102, %.loopexit18
  %103 = phi i64 [ 0, %.loopexit18 ], [ %120, %102 ]
  %104 = phi i64 [ 0, %.loopexit18 ], [ %119, %102 ]
  %105 = getelementptr inbounds nuw i8, ptr %16, i64 %103
  %106 = and i64 %104, %58
  %107 = load i8, ptr %105, align 1, !tbaa !9
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i64 %106, 3
  %110 = getelementptr inbounds nuw i8, ptr %18, i64 %109
  store i32 %108, ptr %110, align 4, !tbaa !41
  %111 = add nuw nsw i64 %104, %59
  %112 = and i64 %111, %58
  %113 = getelementptr inbounds nuw i8, ptr %105, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !9
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i64 %112, 3
  %117 = getelementptr inbounds nuw i8, ptr %18, i64 %116
  store i32 %115, ptr %117, align 4, !tbaa !41
  %118 = add nuw nsw i64 %104, %61
  %119 = and i64 %118, %58
  %120 = add nuw nsw i64 %103, 2
  %121 = icmp samesign ult i64 %120, %60
  br i1 %121, label %102, label %.loopexit16, !llvm.loop !51

122:                                              ; preds = %51
  %123 = lshr i32 %15, 3
  %124 = lshr i32 %15, 1
  %125 = add nuw nsw i32 %123, 3
  %126 = add nuw nsw i32 %125, %124
  br label %127

127:                                              ; preds = %.loopexit19, %122
  %128 = phi i64 [ 0, %122 ], [ %175, %.loopexit19 ]
  %129 = phi i32 [ 0, %122 ], [ %174, %.loopexit19 ]
  %130 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %128
  %131 = load i16, ptr %130, align 2, !tbaa !5
  %132 = icmp sgt i16 %131, 0
  br i1 %132, label %133, label %.loopexit19

133:                                              ; preds = %127
  %134 = trunc nuw i64 %128 to i32
  %135 = icmp eq i16 %131, 1
  br i1 %135, label %.thread, label %136

136:                                              ; preds = %133
  %137 = and i16 %131, 32766
  %138 = zext nneg i16 %137 to i32
  br label %139

139:                                              ; preds = %159, %136
  %140 = phi i32 [ %129, %136 ], [ %157, %159 ]
  %141 = phi i32 [ 0, %136 ], [ %160, %159 ]
  %142 = zext nneg i32 %140 to i64
  %143 = shl nuw nsw i64 %142, 3
  %144 = getelementptr inbounds nuw i8, ptr %18, i64 %143
  store i32 %134, ptr %144, align 4, !tbaa !41
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i32 [ %140, %139 ], [ %148, %145 ]
  %147 = add nuw i32 %146, %126
  %148 = and i32 %147, %17
  %149 = icmp ugt i32 %148, %47
  br i1 %149, label %145, label %150, !prof !52, !llvm.loop !53

150:                                              ; preds = %145
  %151 = zext nneg i32 %148 to i64
  %152 = shl nuw nsw i64 %151, 3
  %153 = getelementptr inbounds nuw i8, ptr %18, i64 %152
  store i32 %134, ptr %153, align 4, !tbaa !41
  br label %154

154:                                              ; preds = %154, %150
  %155 = phi i32 [ %148, %150 ], [ %157, %154 ]
  %156 = add nuw i32 %155, %126
  %157 = and i32 %156, %17
  %158 = icmp ugt i32 %157, %47
  br i1 %158, label %154, label %159, !prof !52, !llvm.loop !53

159:                                              ; preds = %154
  %160 = add i32 %141, 2
  %161 = icmp eq i32 %160, %138
  br i1 %161, label %162, label %139, !llvm.loop !54

162:                                              ; preds = %159
  %163 = and i16 %131, 1
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %.loopexit19, label %.thread

.thread:                                          ; preds = %133, %162
  %165 = phi i32 [ %157, %162 ], [ %129, %133 ]
  %166 = zext nneg i32 %165 to i64
  %167 = shl nuw nsw i64 %166, 3
  %168 = getelementptr inbounds nuw i8, ptr %18, i64 %167
  store i32 %134, ptr %168, align 4, !tbaa !41
  br label %169

169:                                              ; preds = %169, %.thread
  %170 = phi i32 [ %165, %.thread ], [ %172, %169 ]
  %171 = add nuw i32 %170, %126
  %172 = and i32 %171, %17
  %173 = icmp ugt i32 %172, %47
  br i1 %173, label %169, label %.loopexit19, !prof !52, !llvm.loop !53

.loopexit19:                                      ; preds = %169, %162, %127
  %174 = phi i32 [ %129, %127 ], [ %157, %162 ], [ %172, %169 ]
  %175 = add nuw nsw i64 %128, 1
  %176 = icmp eq i64 %175, %26
  br i1 %176, label %177, label %127, !llvm.loop !55

177:                                              ; preds = %.loopexit19
  %178 = zext i32 %15 to i64
  br label %.loopexit16

.loopexit16:                                      ; preds = %102, %177
  %179 = phi i64 [ %178, %177 ], [ %60, %102 ]
  br label %180

180:                                              ; preds = %180, %.loopexit16
  %181 = phi i64 [ 0, %.loopexit16 ], [ %204, %180 ]
  %182 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %184 = load i32, ptr %183, align 4, !tbaa !41
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %185
  %187 = load i16, ptr %186, align 2, !tbaa !5
  %188 = add i16 %187, 1
  store i16 %188, ptr %186, align 2, !tbaa !5
  %189 = zext i16 %187 to i32
  %190 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %189, i1 true)
  %191 = xor i32 %190, 31
  %192 = sub i32 %5, %191
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds nuw i8, ptr %182, i64 3
  store i8 %193, ptr %194, align 1, !tbaa !56
  %195 = and i32 %192, 255
  %196 = shl i32 %189, %195
  %197 = sub i32 %196, %15
  %198 = trunc i32 %197 to i16
  store i16 %198, ptr %182, align 4, !tbaa !57
  %199 = getelementptr inbounds nuw i8, ptr %4, i64 %185
  %200 = load i8, ptr %199, align 1, !tbaa !9
  %201 = getelementptr inbounds nuw i8, ptr %182, i64 2
  store i8 %200, ptr %201, align 2, !tbaa !58
  %202 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %185
  %203 = load i32, ptr %202, align 4, !tbaa !30
  store i32 %203, ptr %183, align 4, !tbaa !41
  %204 = add nuw nsw i64 %181, 1
  %205 = icmp eq i64 %204, %179
  br i1 %205, label %.loopexit, label %180, !llvm.loop !59

.loopexit:                                        ; preds = %180, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef captures(none) %6) unnamed_addr #3 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = add i32 %2, 1
  %10 = shl nuw i32 1, %5
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 106
  %12 = add i32 %10, -1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  store i32 1, ptr %0, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %16, align 4
  br label %.loopexit16

17:                                               ; preds = %7
  %18 = add i32 %5, -1
  %19 = shl i32 65536, %18
  %20 = ashr exact i32 %19, 16
  %21 = zext i32 %9 to i64
  br label %22

22:                                               ; preds = %39, %17
  %23 = phi i64 [ 0, %17 ], [ %44, %39 ]
  %24 = phi i32 [ %12, %17 ], [ %42, %39 ]
  %25 = phi i32 [ 1, %17 ], [ %41, %39 ]
  %26 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %23
  %27 = load i16, ptr %26, align 2, !tbaa !5
  %28 = icmp eq i16 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = add i32 %24, -1
  %31 = zext i32 %24 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = getelementptr inbounds nuw i8, ptr %13, i64 %32
  %34 = trunc nuw i64 %23 to i32
  store i32 %34, ptr %33, align 4, !tbaa !41
  br label %39

35:                                               ; preds = %22
  %36 = sext i16 %27 to i32
  %37 = icmp sgt i32 %20, %36
  %38 = select i1 %37, i32 %25, i32 0
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i16 [ 1, %29 ], [ %27, %35 ]
  %41 = phi i32 [ %25, %29 ], [ %38, %35 ]
  %42 = phi i32 [ %30, %29 ], [ %24, %35 ]
  %43 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %23
  store i16 %40, ptr %43, align 2, !tbaa !5
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, %21
  br i1 %45, label %46, label %22, !llvm.loop !43

46:                                               ; preds = %39
  store i32 %41, ptr %0, align 4
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %47, align 4
  %48 = icmp eq i32 %42, %12
  br i1 %48, label %.preheader, label %117

.loopexit16:                                      ; preds = %.loopexit15, %15
  %49 = lshr i32 %10, 1
  %50 = lshr i32 %10, 3
  %51 = add nuw nsw i32 %50, 3
  %52 = add nuw nsw i32 %51, %49
  %53 = zext nneg i32 %12 to i64
  %54 = zext nneg i32 %52 to i64
  %55 = zext i32 %10 to i64
  %56 = shl nuw nsw i64 %54, 1
  br label %97

.preheader:                                       ; preds = %46, %.loopexit15
  %57 = phi i64 [ %94, %.loopexit15 ], [ 0, %46 ]
  %58 = phi i64 [ %93, %.loopexit15 ], [ 0, %46 ]
  %59 = phi i64 [ %95, %.loopexit15 ], [ 0, %46 ]
  %60 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %57
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = getelementptr inbounds nuw i8, ptr %11, i64 %58
  store i64 %59, ptr %62, align 1, !tbaa !45
  %63 = icmp sgt i16 %61, 8
  br i1 %63, label %64, label %.loopexit15

64:                                               ; preds = %.preheader
  %65 = zext nneg i16 %61 to i64
  %66 = tail call i64 @llvm.umax.i64(i64 %65, i64 16)
  %67 = add nsw i64 %66, -9
  %68 = lshr i64 %67, 3
  %69 = add nuw nsw i64 %68, 1
  %70 = icmp samesign ult i16 %61, 33
  br i1 %70, label %.preheader53, label %71

71:                                               ; preds = %64
  %72 = and i64 %69, 4611686018427387900
  %73 = insertelement <2 x i64> poison, i64 %59, i64 0
  %74 = shufflevector <2 x i64> %73, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi i64 [ 0, %71 ], [ %81, %75 ]
  %77 = shl i64 %76, 3
  %78 = getelementptr inbounds nuw i8, ptr %62, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 24
  store <2 x i64> %74, ptr %79, align 1, !tbaa !45
  store <2 x i64> %74, ptr %80, align 1, !tbaa !45
  %81 = add nuw nsw i64 %76, 4
  %82 = icmp eq i64 %81, %72
  br i1 %82, label %83, label %75, !llvm.loop !60

83:                                               ; preds = %75
  %84 = shl nuw nsw i64 %72, 3
  %85 = or disjoint i64 %84, 8
  %86 = icmp eq i64 %69, %72
  br i1 %86, label %.loopexit15, label %.preheader53

.preheader53:                                     ; preds = %83, %64
  %.ph = phi i64 [ %85, %83 ], [ 8, %64 ]
  br label %87

87:                                               ; preds = %.preheader53, %87
  %88 = phi i64 [ %90, %87 ], [ %.ph, %.preheader53 ]
  %89 = getelementptr inbounds nuw i8, ptr %62, i64 %88
  store i64 %59, ptr %89, align 1, !tbaa !45
  %90 = add nuw nsw i64 %88, 8
  %91 = icmp samesign ult i64 %90, %65
  br i1 %91, label %87, label %.loopexit15, !llvm.loop !61

.loopexit15:                                      ; preds = %87, %83, %.preheader
  %92 = sext i16 %61 to i64
  %93 = add i64 %58, %92
  %94 = add nuw nsw i64 %57, 1
  %95 = add i64 %59, 72340172838076673
  %96 = icmp eq i64 %94, %21
  br i1 %96, label %.loopexit16, label %.preheader, !llvm.loop !50

97:                                               ; preds = %97, %.loopexit16
  %98 = phi i64 [ 0, %.loopexit16 ], [ %115, %97 ]
  %99 = phi i64 [ 0, %.loopexit16 ], [ %114, %97 ]
  %100 = getelementptr inbounds nuw i8, ptr %11, i64 %98
  %101 = and i64 %99, %53
  %102 = load i8, ptr %100, align 1, !tbaa !9
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i64 %101, 3
  %105 = getelementptr inbounds nuw i8, ptr %13, i64 %104
  store i32 %103, ptr %105, align 4, !tbaa !41
  %106 = add nuw nsw i64 %99, %54
  %107 = and i64 %106, %53
  %108 = getelementptr inbounds nuw i8, ptr %100, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !9
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i64 %107, 3
  %112 = getelementptr inbounds nuw i8, ptr %13, i64 %111
  store i32 %110, ptr %112, align 4, !tbaa !41
  %113 = add nuw nsw i64 %99, %56
  %114 = and i64 %113, %53
  %115 = add nuw nsw i64 %98, 2
  %116 = icmp samesign ult i64 %115, %55
  br i1 %116, label %97, label %.loopexit, !llvm.loop !51

117:                                              ; preds = %46
  %118 = lshr i32 %10, 3
  %119 = lshr i32 %10, 1
  %120 = add nuw nsw i32 %118, 3
  %121 = add nuw nsw i32 %120, %119
  br label %122

122:                                              ; preds = %.loopexit17, %117
  %123 = phi i64 [ 0, %117 ], [ %170, %.loopexit17 ]
  %124 = phi i32 [ 0, %117 ], [ %169, %.loopexit17 ]
  %125 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %123
  %126 = load i16, ptr %125, align 2, !tbaa !5
  %127 = icmp sgt i16 %126, 0
  br i1 %127, label %128, label %.loopexit17

128:                                              ; preds = %122
  %129 = trunc nuw i64 %123 to i32
  %130 = icmp eq i16 %126, 1
  br i1 %130, label %.thread, label %131

131:                                              ; preds = %128
  %132 = and i16 %126, 32766
  %133 = zext nneg i16 %132 to i32
  br label %134

134:                                              ; preds = %154, %131
  %135 = phi i32 [ %124, %131 ], [ %152, %154 ]
  %136 = phi i32 [ 0, %131 ], [ %155, %154 ]
  %137 = zext nneg i32 %135 to i64
  %138 = shl nuw nsw i64 %137, 3
  %139 = getelementptr inbounds nuw i8, ptr %13, i64 %138
  store i32 %129, ptr %139, align 4, !tbaa !41
  br label %140

140:                                              ; preds = %140, %134
  %141 = phi i32 [ %135, %134 ], [ %143, %140 ]
  %142 = add nuw i32 %141, %121
  %143 = and i32 %142, %12
  %144 = icmp ugt i32 %143, %42
  br i1 %144, label %140, label %145, !prof !52, !llvm.loop !53

145:                                              ; preds = %140
  %146 = zext nneg i32 %143 to i64
  %147 = shl nuw nsw i64 %146, 3
  %148 = getelementptr inbounds nuw i8, ptr %13, i64 %147
  store i32 %129, ptr %148, align 4, !tbaa !41
  br label %149

149:                                              ; preds = %149, %145
  %150 = phi i32 [ %143, %145 ], [ %152, %149 ]
  %151 = add nuw i32 %150, %121
  %152 = and i32 %151, %12
  %153 = icmp ugt i32 %152, %42
  br i1 %153, label %149, label %154, !prof !52, !llvm.loop !53

154:                                              ; preds = %149
  %155 = add i32 %136, 2
  %156 = icmp eq i32 %155, %133
  br i1 %156, label %157, label %134, !llvm.loop !54

157:                                              ; preds = %154
  %158 = and i16 %126, 1
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %.loopexit17, label %.thread

.thread:                                          ; preds = %128, %157
  %160 = phi i32 [ %152, %157 ], [ %124, %128 ]
  %161 = zext nneg i32 %160 to i64
  %162 = shl nuw nsw i64 %161, 3
  %163 = getelementptr inbounds nuw i8, ptr %13, i64 %162
  store i32 %129, ptr %163, align 4, !tbaa !41
  br label %164

164:                                              ; preds = %164, %.thread
  %165 = phi i32 [ %160, %.thread ], [ %167, %164 ]
  %166 = add nuw i32 %165, %121
  %167 = and i32 %166, %12
  %168 = icmp ugt i32 %167, %42
  br i1 %168, label %164, label %.loopexit17, !prof !52, !llvm.loop !53

.loopexit17:                                      ; preds = %164, %157, %122
  %169 = phi i32 [ %124, %122 ], [ %152, %157 ], [ %167, %164 ]
  %170 = add nuw nsw i64 %123, 1
  %171 = icmp eq i64 %170, %21
  br i1 %171, label %.loopexit.loopexit23, label %122, !llvm.loop !55

.loopexit.loopexit23:                             ; preds = %.loopexit17
  %.pre = zext i32 %10 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %97, %.loopexit.loopexit23
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit23 ], [ %55, %97 ]
  br label %172

172:                                              ; preds = %172, %.loopexit
  %173 = phi i64 [ 0, %.loopexit ], [ %196, %172 ]
  %174 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %173
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %176 = load i32, ptr %175, align 4, !tbaa !41
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = add i16 %179, 1
  store i16 %180, ptr %178, align 2, !tbaa !5
  %181 = zext i16 %179 to i32
  %182 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %181, i1 true)
  %183 = xor i32 %182, 31
  %184 = sub i32 %5, %183
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds nuw i8, ptr %174, i64 3
  store i8 %185, ptr %186, align 1, !tbaa !56
  %187 = and i32 %184, 255
  %188 = shl i32 %181, %187
  %189 = sub i32 %188, %10
  %190 = trunc i32 %189 to i16
  store i16 %190, ptr %174, align 4, !tbaa !57
  %191 = getelementptr inbounds nuw i8, ptr %4, i64 %177
  %192 = load i8, ptr %191, align 1, !tbaa !9
  %193 = getelementptr inbounds nuw i8, ptr %174, i64 2
  store i8 %192, ptr %193, align 2, !tbaa !58
  %194 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %177
  %195 = load i32, ptr %194, align 4, !tbaa !30
  store i32 %195, ptr %175, align 4, !tbaa !41
  %196 = add nuw nsw i64 %173, 1
  %197 = icmp eq i64 %196, %.pre-phi
  br i1 %197, label %198, label %172, !llvm.loop !59

198:                                              ; preds = %172
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [53 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [53 x i16], align 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %268, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %15 = load i8, ptr %2, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = icmp slt i8 %15, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = icmp eq i8 %15, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = icmp samesign ult i64 %3, 3
  br i1 %21, label %268, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %24 = load i16, ptr %14, align 1, !tbaa !5
  %25 = zext i16 %24 to i32
  %26 = add nuw nsw i32 %25, 32512
  store i32 %26, ptr %1, align 4, !tbaa !30
  br label %43

27:                                               ; preds = %18
  %28 = icmp eq i64 %3, 1
  br i1 %28, label %268, label %29

29:                                               ; preds = %27
  %30 = shl nuw nsw i32 %16, 8
  %31 = add nsw i32 %30, -32768
  %32 = load i8, ptr %14, align 1, !tbaa !9
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %31, %33
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %36

36:                                               ; preds = %29, %13
  %37 = phi i32 [ %34, %29 ], [ %16, %13 ]
  %38 = phi ptr [ %35, %29 ], [ %14, %13 ]
  store i32 %37, ptr %1, align 4, !tbaa !30
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = icmp eq ptr %38, %11
  %42 = select i1 %41, i64 %3, i64 -20
  br label %268

43:                                               ; preds = %36, %22
  %44 = phi ptr [ %23, %22 ], [ %38, %36 ]
  %45 = phi i32 [ %26, %22 ], [ %37, %36 ]
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 1
  %47 = icmp ugt ptr %46, %11
  br i1 %47, label %268, label %48

48:                                               ; preds = %43
  %49 = load i8, ptr %44, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %268

53:                                               ; preds = %48
  %54 = lshr i32 %50, 6
  %55 = lshr i32 %50, 4
  %56 = and i32 %55, 3
  %57 = lshr exact i32 %50, 2
  %58 = and i32 %57, 3
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = ptrtoint ptr %11 to i64
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  %62 = load i32, ptr %61, align 4, !tbaa !62
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %64 = load i32, ptr %63, align 4, !tbaa !36
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 27324
  %66 = getelementptr i8, ptr %0, i64 30180
  %67 = load i32, ptr %66, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 35, ptr %8, align 4, !tbaa !30
  switch i32 %54, label %default.unreachable25 [
    i32 1, label %68
    i32 0, label %84
    i32 3, label %85
    i32 2, label %157
  ]

68:                                               ; preds = %53
  %69 = icmp eq ptr %11, %46
  br i1 %69, label %165, label %70

70:                                               ; preds = %68
  %71 = load i8, ptr %46, align 1, !tbaa !9
  %72 = icmp ugt i8 %71, 35
  br i1 %72, label %165, label %73

73:                                               ; preds = %70
  %74 = zext nneg i8 %71 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr @LL_base, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !30
  %77 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %74
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %80, align 4, !tbaa !63
  store i32 0, ptr %59, align 4, !tbaa !65
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 0, ptr %81, align 1, !tbaa !56
  store i16 0, ptr %79, align 4, !tbaa !57
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %78, ptr %82, align 2, !tbaa !58
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %76, ptr %83, align 4, !tbaa !41
  store ptr %59, ptr %0, align 8, !tbaa !66
  br label %169

84:                                               ; preds = %53
  store ptr @LL_defaultDTable, ptr %0, align 8, !tbaa !66
  br label %169

85:                                               ; preds = %53
  %86 = icmp eq i32 %62, 0
  br i1 %86, label %165, label %87

87:                                               ; preds = %85
  %88 = icmp ne i32 %64, 0
  %89 = icmp samesign ugt i32 %45, 24
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %169

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %92, i32 0, i32 2, i32 1)
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %93, i32 0, i32 2, i32 1)
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %94, i32 0, i32 2, i32 1)
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %95, i32 0, i32 2, i32 1)
  %96 = getelementptr inbounds nuw i8, ptr %92, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %96, i32 0, i32 2, i32 1)
  %97 = getelementptr inbounds nuw i8, ptr %92, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %97, i32 0, i32 2, i32 1)
  %98 = getelementptr inbounds nuw i8, ptr %92, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %98, i32 0, i32 2, i32 1)
  %99 = getelementptr inbounds nuw i8, ptr %92, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %99, i32 0, i32 2, i32 1)
  %100 = getelementptr inbounds nuw i8, ptr %92, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %100, i32 0, i32 2, i32 1)
  %101 = getelementptr inbounds nuw i8, ptr %92, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %101, i32 0, i32 2, i32 1)
  %102 = getelementptr inbounds nuw i8, ptr %92, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %102, i32 0, i32 2, i32 1)
  %103 = getelementptr inbounds nuw i8, ptr %92, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %103, i32 0, i32 2, i32 1)
  %104 = getelementptr inbounds nuw i8, ptr %92, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %104, i32 0, i32 2, i32 1)
  %105 = getelementptr inbounds nuw i8, ptr %92, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %105, i32 0, i32 2, i32 1)
  %106 = getelementptr inbounds nuw i8, ptr %92, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull %106, i32 0, i32 2, i32 1)
  %107 = getelementptr inbounds nuw i8, ptr %92, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull %107, i32 0, i32 2, i32 1)
  %108 = getelementptr inbounds nuw i8, ptr %92, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %108, i32 0, i32 2, i32 1)
  %109 = getelementptr inbounds nuw i8, ptr %92, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %109, i32 0, i32 2, i32 1)
  %110 = getelementptr inbounds nuw i8, ptr %92, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %110, i32 0, i32 2, i32 1)
  %111 = getelementptr inbounds nuw i8, ptr %92, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %111, i32 0, i32 2, i32 1)
  %112 = getelementptr inbounds nuw i8, ptr %92, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %112, i32 0, i32 2, i32 1)
  %113 = getelementptr inbounds nuw i8, ptr %92, i64 1344
  tail call void @llvm.prefetch.p0(ptr nonnull %113, i32 0, i32 2, i32 1)
  %114 = getelementptr inbounds nuw i8, ptr %92, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull %114, i32 0, i32 2, i32 1)
  %115 = getelementptr inbounds nuw i8, ptr %92, i64 1472
  tail call void @llvm.prefetch.p0(ptr nonnull %115, i32 0, i32 2, i32 1)
  %116 = getelementptr inbounds nuw i8, ptr %92, i64 1536
  tail call void @llvm.prefetch.p0(ptr nonnull %116, i32 0, i32 2, i32 1)
  %117 = getelementptr inbounds nuw i8, ptr %92, i64 1600
  tail call void @llvm.prefetch.p0(ptr nonnull %117, i32 0, i32 2, i32 1)
  %118 = getelementptr inbounds nuw i8, ptr %92, i64 1664
  tail call void @llvm.prefetch.p0(ptr nonnull %118, i32 0, i32 2, i32 1)
  %119 = getelementptr inbounds nuw i8, ptr %92, i64 1728
  tail call void @llvm.prefetch.p0(ptr nonnull %119, i32 0, i32 2, i32 1)
  %120 = getelementptr inbounds nuw i8, ptr %92, i64 1792
  tail call void @llvm.prefetch.p0(ptr nonnull %120, i32 0, i32 2, i32 1)
  %121 = getelementptr inbounds nuw i8, ptr %92, i64 1856
  tail call void @llvm.prefetch.p0(ptr nonnull %121, i32 0, i32 2, i32 1)
  %122 = getelementptr inbounds nuw i8, ptr %92, i64 1920
  tail call void @llvm.prefetch.p0(ptr nonnull %122, i32 0, i32 2, i32 1)
  %123 = getelementptr inbounds nuw i8, ptr %92, i64 1984
  tail call void @llvm.prefetch.p0(ptr nonnull %123, i32 0, i32 2, i32 1)
  %124 = getelementptr inbounds nuw i8, ptr %92, i64 2048
  tail call void @llvm.prefetch.p0(ptr nonnull %124, i32 0, i32 2, i32 1)
  %125 = getelementptr inbounds nuw i8, ptr %92, i64 2112
  tail call void @llvm.prefetch.p0(ptr nonnull %125, i32 0, i32 2, i32 1)
  %126 = getelementptr inbounds nuw i8, ptr %92, i64 2176
  tail call void @llvm.prefetch.p0(ptr nonnull %126, i32 0, i32 2, i32 1)
  %127 = getelementptr inbounds nuw i8, ptr %92, i64 2240
  tail call void @llvm.prefetch.p0(ptr nonnull %127, i32 0, i32 2, i32 1)
  %128 = getelementptr inbounds nuw i8, ptr %92, i64 2304
  tail call void @llvm.prefetch.p0(ptr nonnull %128, i32 0, i32 2, i32 1)
  %129 = getelementptr inbounds nuw i8, ptr %92, i64 2368
  tail call void @llvm.prefetch.p0(ptr nonnull %129, i32 0, i32 2, i32 1)
  %130 = getelementptr inbounds nuw i8, ptr %92, i64 2432
  tail call void @llvm.prefetch.p0(ptr nonnull %130, i32 0, i32 2, i32 1)
  %131 = getelementptr inbounds nuw i8, ptr %92, i64 2496
  tail call void @llvm.prefetch.p0(ptr nonnull %131, i32 0, i32 2, i32 1)
  %132 = getelementptr inbounds nuw i8, ptr %92, i64 2560
  tail call void @llvm.prefetch.p0(ptr nonnull %132, i32 0, i32 2, i32 1)
  %133 = getelementptr inbounds nuw i8, ptr %92, i64 2624
  tail call void @llvm.prefetch.p0(ptr nonnull %133, i32 0, i32 2, i32 1)
  %134 = getelementptr inbounds nuw i8, ptr %92, i64 2688
  tail call void @llvm.prefetch.p0(ptr nonnull %134, i32 0, i32 2, i32 1)
  %135 = getelementptr inbounds nuw i8, ptr %92, i64 2752
  tail call void @llvm.prefetch.p0(ptr nonnull %135, i32 0, i32 2, i32 1)
  %136 = getelementptr inbounds nuw i8, ptr %92, i64 2816
  tail call void @llvm.prefetch.p0(ptr nonnull %136, i32 0, i32 2, i32 1)
  %137 = getelementptr inbounds nuw i8, ptr %92, i64 2880
  tail call void @llvm.prefetch.p0(ptr nonnull %137, i32 0, i32 2, i32 1)
  %138 = getelementptr inbounds nuw i8, ptr %92, i64 2944
  tail call void @llvm.prefetch.p0(ptr nonnull %138, i32 0, i32 2, i32 1)
  %139 = getelementptr inbounds nuw i8, ptr %92, i64 3008
  tail call void @llvm.prefetch.p0(ptr nonnull %139, i32 0, i32 2, i32 1)
  %140 = getelementptr inbounds nuw i8, ptr %92, i64 3072
  tail call void @llvm.prefetch.p0(ptr nonnull %140, i32 0, i32 2, i32 1)
  %141 = getelementptr inbounds nuw i8, ptr %92, i64 3136
  tail call void @llvm.prefetch.p0(ptr nonnull %141, i32 0, i32 2, i32 1)
  %142 = getelementptr inbounds nuw i8, ptr %92, i64 3200
  tail call void @llvm.prefetch.p0(ptr nonnull %142, i32 0, i32 2, i32 1)
  %143 = getelementptr inbounds nuw i8, ptr %92, i64 3264
  tail call void @llvm.prefetch.p0(ptr nonnull %143, i32 0, i32 2, i32 1)
  %144 = getelementptr inbounds nuw i8, ptr %92, i64 3328
  tail call void @llvm.prefetch.p0(ptr nonnull %144, i32 0, i32 2, i32 1)
  %145 = getelementptr inbounds nuw i8, ptr %92, i64 3392
  tail call void @llvm.prefetch.p0(ptr nonnull %145, i32 0, i32 2, i32 1)
  %146 = getelementptr inbounds nuw i8, ptr %92, i64 3456
  tail call void @llvm.prefetch.p0(ptr nonnull %146, i32 0, i32 2, i32 1)
  %147 = getelementptr inbounds nuw i8, ptr %92, i64 3520
  tail call void @llvm.prefetch.p0(ptr nonnull %147, i32 0, i32 2, i32 1)
  %148 = getelementptr inbounds nuw i8, ptr %92, i64 3584
  tail call void @llvm.prefetch.p0(ptr nonnull %148, i32 0, i32 2, i32 1)
  %149 = getelementptr inbounds nuw i8, ptr %92, i64 3648
  tail call void @llvm.prefetch.p0(ptr nonnull %149, i32 0, i32 2, i32 1)
  %150 = getelementptr inbounds nuw i8, ptr %92, i64 3712
  tail call void @llvm.prefetch.p0(ptr nonnull %150, i32 0, i32 2, i32 1)
  %151 = getelementptr inbounds nuw i8, ptr %92, i64 3776
  tail call void @llvm.prefetch.p0(ptr nonnull %151, i32 0, i32 2, i32 1)
  %152 = getelementptr inbounds nuw i8, ptr %92, i64 3840
  tail call void @llvm.prefetch.p0(ptr nonnull %152, i32 0, i32 2, i32 1)
  %153 = getelementptr inbounds nuw i8, ptr %92, i64 3904
  tail call void @llvm.prefetch.p0(ptr nonnull %153, i32 0, i32 2, i32 1)
  %154 = getelementptr inbounds nuw i8, ptr %92, i64 3968
  tail call void @llvm.prefetch.p0(ptr nonnull %154, i32 0, i32 2, i32 1)
  %155 = getelementptr inbounds nuw i8, ptr %92, i64 4032
  tail call void @llvm.prefetch.p0(ptr nonnull %155, i32 0, i32 2, i32 1)
  %156 = getelementptr inbounds nuw i8, ptr %92, i64 4096
  tail call void @llvm.prefetch.p0(ptr nonnull %156, i32 0, i32 2, i32 1)
  br label %169

157:                                              ; preds = %53
  %158 = ptrtoint ptr %46 to i64
  %159 = sub i64 %60, %158
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %160 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %46, i64 noundef %159) #19
  %161 = icmp ult i64 %160, -119
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, ptr %9, align 4, !tbaa !30
  %164 = icmp ugt i32 %163, 9
  br i1 %164, label %166, label %167

default.unreachable25:                            ; preds = %169, %53
  unreachable

165:                                              ; preds = %85, %70, %68
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %268

166:                                              ; preds = %162, %157
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %268

167:                                              ; preds = %162
  %168 = load i32, ptr %8, align 4, !tbaa !30
  call void @ZSTD_buildFSETable(ptr noundef nonnull %59, ptr noundef nonnull %10, i32 noundef %168, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %163, ptr noundef nonnull %65, i64 poison, i32 noundef %67)
  store ptr %59, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %169

169:                                              ; preds = %167, %91, %87, %84, %73
  %170 = phi i64 [ %160, %167 ], [ 0, %87 ], [ 0, %84 ], [ 1, %73 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %171 = getelementptr inbounds nuw i8, ptr %46, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %174 = load i32, ptr %61, align 4, !tbaa !62
  %175 = load i32, ptr %63, align 4, !tbaa !36
  %176 = load i32, ptr %66, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 31, ptr %5, align 4, !tbaa !30
  switch i32 %56, label %default.unreachable25 [
    i32 1, label %177
    i32 0, label %193
    i32 3, label %194
    i32 2, label %234
  ]

177:                                              ; preds = %169
  %178 = icmp eq ptr %11, %171
  br i1 %178, label %244, label %179

179:                                              ; preds = %177
  %180 = load i8, ptr %171, align 1, !tbaa !9
  %181 = icmp ugt i8 %180, 31
  br i1 %181, label %244, label %182

182:                                              ; preds = %179
  %183 = zext nneg i8 %180 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr @OF_base, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !30
  %186 = getelementptr inbounds nuw i8, ptr @OF_bits, i64 %183
  %187 = load i8, ptr %186, align 1, !tbaa !9
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 4140
  store i32 0, ptr %189, align 4, !tbaa !63
  store i32 0, ptr %172, align 4, !tbaa !65
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 4147
  store i8 0, ptr %190, align 1, !tbaa !56
  store i16 0, ptr %188, align 4, !tbaa !57
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 4146
  store i8 %187, ptr %191, align 2, !tbaa !58
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 4148
  store i32 %185, ptr %192, align 4, !tbaa !41
  store ptr %172, ptr %173, align 8, !tbaa !66
  br label %242

193:                                              ; preds = %169
  store ptr @OF_defaultDTable, ptr %173, align 8, !tbaa !66
  br label %242

194:                                              ; preds = %169
  %195 = icmp eq i32 %174, 0
  br i1 %195, label %244, label %196

196:                                              ; preds = %194
  %197 = icmp ne i32 %175, 0
  %198 = icmp samesign ugt i32 %45, 24
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %200, label %242

200:                                              ; preds = %196
  %201 = load ptr, ptr %173, align 8, !tbaa !66
  call void @llvm.prefetch.p0(ptr %201, i32 0, i32 2, i32 1)
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %202, i32 0, i32 2, i32 1)
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %203, i32 0, i32 2, i32 1)
  %204 = getelementptr inbounds nuw i8, ptr %201, i64 192
  call void @llvm.prefetch.p0(ptr nonnull %204, i32 0, i32 2, i32 1)
  %205 = getelementptr inbounds nuw i8, ptr %201, i64 256
  call void @llvm.prefetch.p0(ptr nonnull %205, i32 0, i32 2, i32 1)
  %206 = getelementptr inbounds nuw i8, ptr %201, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %206, i32 0, i32 2, i32 1)
  %207 = getelementptr inbounds nuw i8, ptr %201, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %207, i32 0, i32 2, i32 1)
  %208 = getelementptr inbounds nuw i8, ptr %201, i64 448
  call void @llvm.prefetch.p0(ptr nonnull %208, i32 0, i32 2, i32 1)
  %209 = getelementptr inbounds nuw i8, ptr %201, i64 512
  call void @llvm.prefetch.p0(ptr nonnull %209, i32 0, i32 2, i32 1)
  %210 = getelementptr inbounds nuw i8, ptr %201, i64 576
  call void @llvm.prefetch.p0(ptr nonnull %210, i32 0, i32 2, i32 1)
  %211 = getelementptr inbounds nuw i8, ptr %201, i64 640
  call void @llvm.prefetch.p0(ptr nonnull %211, i32 0, i32 2, i32 1)
  %212 = getelementptr inbounds nuw i8, ptr %201, i64 704
  call void @llvm.prefetch.p0(ptr nonnull %212, i32 0, i32 2, i32 1)
  %213 = getelementptr inbounds nuw i8, ptr %201, i64 768
  call void @llvm.prefetch.p0(ptr nonnull %213, i32 0, i32 2, i32 1)
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 832
  call void @llvm.prefetch.p0(ptr nonnull %214, i32 0, i32 2, i32 1)
  %215 = getelementptr inbounds nuw i8, ptr %201, i64 896
  call void @llvm.prefetch.p0(ptr nonnull %215, i32 0, i32 2, i32 1)
  %216 = getelementptr inbounds nuw i8, ptr %201, i64 960
  call void @llvm.prefetch.p0(ptr nonnull %216, i32 0, i32 2, i32 1)
  %217 = getelementptr inbounds nuw i8, ptr %201, i64 1024
  call void @llvm.prefetch.p0(ptr nonnull %217, i32 0, i32 2, i32 1)
  %218 = getelementptr inbounds nuw i8, ptr %201, i64 1088
  call void @llvm.prefetch.p0(ptr nonnull %218, i32 0, i32 2, i32 1)
  %219 = getelementptr inbounds nuw i8, ptr %201, i64 1152
  call void @llvm.prefetch.p0(ptr nonnull %219, i32 0, i32 2, i32 1)
  %220 = getelementptr inbounds nuw i8, ptr %201, i64 1216
  call void @llvm.prefetch.p0(ptr nonnull %220, i32 0, i32 2, i32 1)
  %221 = getelementptr inbounds nuw i8, ptr %201, i64 1280
  call void @llvm.prefetch.p0(ptr nonnull %221, i32 0, i32 2, i32 1)
  %222 = getelementptr inbounds nuw i8, ptr %201, i64 1344
  call void @llvm.prefetch.p0(ptr nonnull %222, i32 0, i32 2, i32 1)
  %223 = getelementptr inbounds nuw i8, ptr %201, i64 1408
  call void @llvm.prefetch.p0(ptr nonnull %223, i32 0, i32 2, i32 1)
  %224 = getelementptr inbounds nuw i8, ptr %201, i64 1472
  call void @llvm.prefetch.p0(ptr nonnull %224, i32 0, i32 2, i32 1)
  %225 = getelementptr inbounds nuw i8, ptr %201, i64 1536
  call void @llvm.prefetch.p0(ptr nonnull %225, i32 0, i32 2, i32 1)
  %226 = getelementptr inbounds nuw i8, ptr %201, i64 1600
  call void @llvm.prefetch.p0(ptr nonnull %226, i32 0, i32 2, i32 1)
  %227 = getelementptr inbounds nuw i8, ptr %201, i64 1664
  call void @llvm.prefetch.p0(ptr nonnull %227, i32 0, i32 2, i32 1)
  %228 = getelementptr inbounds nuw i8, ptr %201, i64 1728
  call void @llvm.prefetch.p0(ptr nonnull %228, i32 0, i32 2, i32 1)
  %229 = getelementptr inbounds nuw i8, ptr %201, i64 1792
  call void @llvm.prefetch.p0(ptr nonnull %229, i32 0, i32 2, i32 1)
  %230 = getelementptr inbounds nuw i8, ptr %201, i64 1856
  call void @llvm.prefetch.p0(ptr nonnull %230, i32 0, i32 2, i32 1)
  %231 = getelementptr inbounds nuw i8, ptr %201, i64 1920
  call void @llvm.prefetch.p0(ptr nonnull %231, i32 0, i32 2, i32 1)
  %232 = getelementptr inbounds nuw i8, ptr %201, i64 1984
  call void @llvm.prefetch.p0(ptr nonnull %232, i32 0, i32 2, i32 1)
  %233 = getelementptr inbounds nuw i8, ptr %201, i64 2048
  call void @llvm.prefetch.p0(ptr nonnull %233, i32 0, i32 2, i32 1)
  br label %242

234:                                              ; preds = %169
  %235 = ptrtoint ptr %171 to i64
  %236 = sub i64 %60, %235
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %237 = call i64 @FSE_readNCount(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %171, i64 noundef %236) #19
  %238 = icmp ult i64 %237, -119
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i32, ptr %6, align 4, !tbaa !30
  %241 = icmp ugt i32 %240, 8
  br i1 %241, label %245, label %246

242:                                              ; preds = %200, %196, %193, %182
  %243 = phi i64 [ 0, %196 ], [ 0, %193 ], [ 1, %182 ], [ 0, %200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %251

244:                                              ; preds = %194, %179, %177
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %268

245:                                              ; preds = %239, %234
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %268

246:                                              ; preds = %239
  %247 = load i32, ptr %5, align 4, !tbaa !30
  call void @ZSTD_buildFSETable(ptr noundef nonnull %172, ptr noundef nonnull %7, i32 noundef %247, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %240, ptr noundef nonnull %65, i64 poison, i32 noundef %176)
  store ptr %172, ptr %173, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %248 = load i32, ptr %61, align 4, !tbaa !62
  %249 = load i32, ptr %63, align 4, !tbaa !36
  %250 = load i32, ptr %66, align 4, !tbaa !31
  br label %251

251:                                              ; preds = %246, %242
  %252 = phi i32 [ %176, %242 ], [ %250, %246 ]
  %253 = phi i32 [ %175, %242 ], [ %249, %246 ]
  %254 = phi i32 [ %174, %242 ], [ %248, %246 ]
  %255 = phi i64 [ %243, %242 ], [ %237, %246 ]
  %256 = getelementptr inbounds nuw i8, ptr %171, i64 %255
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %259 = ptrtoint ptr %256 to i64
  %260 = sub i64 %60, %259
  %261 = call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %257, ptr noundef nonnull %258, i32 noundef %58, ptr noundef nonnull %256, i64 noundef %260, i32 noundef %254, i32 noundef %253, i32 noundef %45, ptr noundef nonnull %65, i32 noundef %252)
  %262 = icmp ult i64 %261, -119
  br i1 %262, label %263, label %268

263:                                              ; preds = %251
  %264 = getelementptr inbounds nuw i8, ptr %256, i64 %261
  %265 = ptrtoint ptr %264 to i64
  %266 = ptrtoint ptr %2 to i64
  %267 = sub i64 %265, %266
  br label %268

268:                                              ; preds = %263, %251, %245, %244, %166, %165, %48, %43, %40, %27, %20, %4
  %269 = phi i64 [ %267, %263 ], [ -20, %251 ], [ -72, %4 ], [ -72, %20 ], [ -72, %27 ], [ -72, %43 ], [ -20, %48 ], [ -20, %165 ], [ -20, %166 ], [ -20, %244 ], [ -20, %245 ], [ %42, %40 ]
  ret i64 %269
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -20, -71) i64 @ZSTD_buildSeqTable(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 4) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 1, 98048) %7, ptr noundef captures(none) %8, i32 noundef %9) unnamed_addr #1 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [53 x i16], align 16
  store i32 52, ptr %11, align 4, !tbaa !30
  switch i32 %2, label %default.unreachable3 [
    i32 1, label %14
    i32 0, label %30
    i32 3, label %31
    i32 2, label %103
  ]

14:                                               ; preds = %10
  %15 = icmp eq i64 %4, 0
  br i1 %15, label %113, label %16

16:                                               ; preds = %14
  %17 = load i8, ptr %3, align 1, !tbaa !9
  %18 = icmp ugt i8 %17, 52
  br i1 %18, label %113, label %19

19:                                               ; preds = %16
  %20 = zext nneg i8 %17 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @ML_base, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !30
  %23 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %20
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %26, align 4, !tbaa !63
  store i32 0, ptr %0, align 4, !tbaa !65
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 0, ptr %27, align 1, !tbaa !56
  store i16 0, ptr %25, align 4, !tbaa !57
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %24, ptr %28, align 2, !tbaa !58
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %22, ptr %29, align 4, !tbaa !41
  store ptr %0, ptr %1, align 8, !tbaa !66
  br label %113

30:                                               ; preds = %10
  store ptr @ML_defaultDTable, ptr %1, align 8, !tbaa !66
  br label %113

31:                                               ; preds = %10
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %113, label %33

33:                                               ; preds = %31
  %34 = icmp ne i32 %6, 0
  %35 = icmp samesign ugt i32 %7, 24
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load ptr, ptr %1, align 8, !tbaa !66
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 64
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 128
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 192
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 256
  %43 = getelementptr inbounds nuw i8, ptr %38, i64 320
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 384
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 448
  tail call void @llvm.prefetch.p0(ptr %38, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %39, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %40, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %41, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %42, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %44, i32 0, i32 2, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %45, i32 0, i32 2, i32 1)
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %46, i32 0, i32 2, i32 1)
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %47, i32 0, i32 2, i32 1)
  %48 = getelementptr inbounds nuw i8, ptr %38, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %48, i32 0, i32 2, i32 1)
  %49 = getelementptr inbounds nuw i8, ptr %38, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %49, i32 0, i32 2, i32 1)
  %50 = getelementptr inbounds nuw i8, ptr %38, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %50, i32 0, i32 2, i32 1)
  %51 = getelementptr inbounds nuw i8, ptr %38, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull %51, i32 0, i32 2, i32 1)
  %52 = getelementptr inbounds nuw i8, ptr %38, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull %52, i32 0, i32 2, i32 1)
  %53 = getelementptr inbounds nuw i8, ptr %38, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull %53, i32 0, i32 2, i32 1)
  %54 = getelementptr inbounds nuw i8, ptr %38, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull %54, i32 0, i32 2, i32 1)
  %55 = getelementptr inbounds nuw i8, ptr %38, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull %55, i32 0, i32 2, i32 1)
  %56 = getelementptr inbounds nuw i8, ptr %38, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull %56, i32 0, i32 2, i32 1)
  %57 = getelementptr inbounds nuw i8, ptr %38, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull %57, i32 0, i32 2, i32 1)
  %58 = getelementptr inbounds nuw i8, ptr %38, i64 1280
  tail call void @llvm.prefetch.p0(ptr nonnull %58, i32 0, i32 2, i32 1)
  %59 = getelementptr inbounds nuw i8, ptr %38, i64 1344
  tail call void @llvm.prefetch.p0(ptr nonnull %59, i32 0, i32 2, i32 1)
  %60 = getelementptr inbounds nuw i8, ptr %38, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull %60, i32 0, i32 2, i32 1)
  %61 = getelementptr inbounds nuw i8, ptr %38, i64 1472
  tail call void @llvm.prefetch.p0(ptr nonnull %61, i32 0, i32 2, i32 1)
  %62 = getelementptr inbounds nuw i8, ptr %38, i64 1536
  tail call void @llvm.prefetch.p0(ptr nonnull %62, i32 0, i32 2, i32 1)
  %63 = getelementptr inbounds nuw i8, ptr %38, i64 1600
  tail call void @llvm.prefetch.p0(ptr nonnull %63, i32 0, i32 2, i32 1)
  %64 = getelementptr inbounds nuw i8, ptr %38, i64 1664
  tail call void @llvm.prefetch.p0(ptr nonnull %64, i32 0, i32 2, i32 1)
  %65 = getelementptr inbounds nuw i8, ptr %38, i64 1728
  tail call void @llvm.prefetch.p0(ptr nonnull %65, i32 0, i32 2, i32 1)
  %66 = getelementptr inbounds nuw i8, ptr %38, i64 1792
  tail call void @llvm.prefetch.p0(ptr nonnull %66, i32 0, i32 2, i32 1)
  %67 = getelementptr inbounds nuw i8, ptr %38, i64 1856
  tail call void @llvm.prefetch.p0(ptr nonnull %67, i32 0, i32 2, i32 1)
  %68 = getelementptr inbounds nuw i8, ptr %38, i64 1920
  tail call void @llvm.prefetch.p0(ptr nonnull %68, i32 0, i32 2, i32 1)
  %69 = getelementptr inbounds nuw i8, ptr %38, i64 1984
  tail call void @llvm.prefetch.p0(ptr nonnull %69, i32 0, i32 2, i32 1)
  %70 = getelementptr inbounds nuw i8, ptr %38, i64 2048
  tail call void @llvm.prefetch.p0(ptr nonnull %70, i32 0, i32 2, i32 1)
  %71 = getelementptr inbounds nuw i8, ptr %38, i64 2112
  tail call void @llvm.prefetch.p0(ptr nonnull %71, i32 0, i32 2, i32 1)
  %72 = getelementptr inbounds nuw i8, ptr %38, i64 2176
  tail call void @llvm.prefetch.p0(ptr nonnull %72, i32 0, i32 2, i32 1)
  %73 = getelementptr inbounds nuw i8, ptr %38, i64 2240
  tail call void @llvm.prefetch.p0(ptr nonnull %73, i32 0, i32 2, i32 1)
  %74 = getelementptr inbounds nuw i8, ptr %38, i64 2304
  tail call void @llvm.prefetch.p0(ptr nonnull %74, i32 0, i32 2, i32 1)
  %75 = getelementptr inbounds nuw i8, ptr %38, i64 2368
  tail call void @llvm.prefetch.p0(ptr nonnull %75, i32 0, i32 2, i32 1)
  %76 = getelementptr inbounds nuw i8, ptr %38, i64 2432
  tail call void @llvm.prefetch.p0(ptr nonnull %76, i32 0, i32 2, i32 1)
  %77 = getelementptr inbounds nuw i8, ptr %38, i64 2496
  tail call void @llvm.prefetch.p0(ptr nonnull %77, i32 0, i32 2, i32 1)
  %78 = getelementptr inbounds nuw i8, ptr %38, i64 2560
  tail call void @llvm.prefetch.p0(ptr nonnull %78, i32 0, i32 2, i32 1)
  %79 = getelementptr inbounds nuw i8, ptr %38, i64 2624
  tail call void @llvm.prefetch.p0(ptr nonnull %79, i32 0, i32 2, i32 1)
  %80 = getelementptr inbounds nuw i8, ptr %38, i64 2688
  tail call void @llvm.prefetch.p0(ptr nonnull %80, i32 0, i32 2, i32 1)
  %81 = getelementptr inbounds nuw i8, ptr %38, i64 2752
  tail call void @llvm.prefetch.p0(ptr nonnull %81, i32 0, i32 2, i32 1)
  %82 = getelementptr inbounds nuw i8, ptr %38, i64 2816
  tail call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 2, i32 1)
  %83 = getelementptr inbounds nuw i8, ptr %38, i64 2880
  tail call void @llvm.prefetch.p0(ptr nonnull %83, i32 0, i32 2, i32 1)
  %84 = getelementptr inbounds nuw i8, ptr %38, i64 2944
  tail call void @llvm.prefetch.p0(ptr nonnull %84, i32 0, i32 2, i32 1)
  %85 = getelementptr inbounds nuw i8, ptr %38, i64 3008
  tail call void @llvm.prefetch.p0(ptr nonnull %85, i32 0, i32 2, i32 1)
  %86 = getelementptr inbounds nuw i8, ptr %38, i64 3072
  tail call void @llvm.prefetch.p0(ptr nonnull %86, i32 0, i32 2, i32 1)
  %87 = getelementptr inbounds nuw i8, ptr %38, i64 3136
  tail call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 2, i32 1)
  %88 = getelementptr inbounds nuw i8, ptr %38, i64 3200
  tail call void @llvm.prefetch.p0(ptr nonnull %88, i32 0, i32 2, i32 1)
  %89 = getelementptr inbounds nuw i8, ptr %38, i64 3264
  tail call void @llvm.prefetch.p0(ptr nonnull %89, i32 0, i32 2, i32 1)
  %90 = getelementptr inbounds nuw i8, ptr %38, i64 3328
  tail call void @llvm.prefetch.p0(ptr nonnull %90, i32 0, i32 2, i32 1)
  %91 = getelementptr inbounds nuw i8, ptr %38, i64 3392
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 2, i32 1)
  %92 = getelementptr inbounds nuw i8, ptr %38, i64 3456
  tail call void @llvm.prefetch.p0(ptr nonnull %92, i32 0, i32 2, i32 1)
  %93 = getelementptr inbounds nuw i8, ptr %38, i64 3520
  tail call void @llvm.prefetch.p0(ptr nonnull %93, i32 0, i32 2, i32 1)
  %94 = getelementptr inbounds nuw i8, ptr %38, i64 3584
  tail call void @llvm.prefetch.p0(ptr nonnull %94, i32 0, i32 2, i32 1)
  %95 = getelementptr inbounds nuw i8, ptr %38, i64 3648
  tail call void @llvm.prefetch.p0(ptr nonnull %95, i32 0, i32 2, i32 1)
  %96 = getelementptr inbounds nuw i8, ptr %38, i64 3712
  tail call void @llvm.prefetch.p0(ptr nonnull %96, i32 0, i32 2, i32 1)
  %97 = getelementptr inbounds nuw i8, ptr %38, i64 3776
  tail call void @llvm.prefetch.p0(ptr nonnull %97, i32 0, i32 2, i32 1)
  %98 = getelementptr inbounds nuw i8, ptr %38, i64 3840
  tail call void @llvm.prefetch.p0(ptr nonnull %98, i32 0, i32 2, i32 1)
  %99 = getelementptr inbounds nuw i8, ptr %38, i64 3904
  tail call void @llvm.prefetch.p0(ptr nonnull %99, i32 0, i32 2, i32 1)
  %100 = getelementptr inbounds nuw i8, ptr %38, i64 3968
  tail call void @llvm.prefetch.p0(ptr nonnull %100, i32 0, i32 2, i32 1)
  %101 = getelementptr inbounds nuw i8, ptr %38, i64 4032
  tail call void @llvm.prefetch.p0(ptr nonnull %101, i32 0, i32 2, i32 1)
  %102 = getelementptr inbounds nuw i8, ptr %38, i64 4096
  tail call void @llvm.prefetch.p0(ptr nonnull %102, i32 0, i32 2, i32 1)
  br label %113

103:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %104 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %3, i64 noundef %4) #19
  %105 = icmp ult i64 %104, -119
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, ptr %12, align 4, !tbaa !30
  %108 = icmp ugt i32 %107, 9
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %11, align 4, !tbaa !30
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %110, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %107, ptr noundef %8, i64 poison, i32 noundef %9)
  store ptr %0, ptr %1, align 8, !tbaa !66
  br label %111

111:                                              ; preds = %109, %106, %103
  %112 = phi i64 [ %104, %109 ], [ -20, %103 ], [ -20, %106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %113

default.unreachable3:                             ; preds = %10
  unreachable

113:                                              ; preds = %37, %111, %33, %31, %30, %19, %16, %14
  %114 = phi i64 [ 1, %19 ], [ 0, %30 ], [ %112, %111 ], [ -72, %14 ], [ -20, %16 ], [ -20, %31 ], [ 0, %33 ], [ 0, %37 ]
  ret i64 %114
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = alloca ptr, align 8
  %8 = alloca [8 x %struct.seq_t], align 16
  %9 = alloca %struct.seqState_t, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %16 = load i32, ptr %15, align 8, !tbaa !28
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i64 [ %17, %14 ], [ 131072, %6 ]
  %20 = icmp ugt i64 %4, %19
  br i1 %20, label %2319, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef %1, i64 noundef %2, i32 noundef %5)
  %23 = icmp ult i64 %22, -119
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 %22
  %25 = sub nsw i64 %4, %22
  br i1 %23, label %26, label %2319

26:                                               ; preds = %21
  %27 = load i32, ptr %11, align 8, !tbaa !15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %31 = load i32, ptr %30, align 8, !tbaa !28
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %26, %29
  %.sink = phi i64 [ %32, %29 ], [ 131072, %26 ]
  %34 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sink)
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %42 = load i32, ptr %41, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %43 = call i64 @ZSTD_decodeSeqHeaders(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %24, i64 noundef %25)
  %44 = icmp ult i64 %43, -119
  br i1 %44, label %45, label %ZSTD_decompressSequencesLong.exit

45:                                               ; preds = %33
  %46 = getelementptr inbounds nuw i8, ptr %24, i64 %43
  %47 = sub i64 %25, %43
  %48 = icmp eq ptr %1, null
  %49 = icmp eq i64 %2, 0
  %50 = or i1 %48, %49
  %51 = load i32, ptr %10, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  %54 = icmp ugt ptr %1, inttoptr (i64 -1048577 to ptr)
  %55 = or i1 %54, %53
  br i1 %55, label %ZSTD_decompressSequencesLong.exit, label %56

56:                                               ; preds = %45
  %57 = icmp eq i32 %42, 0
  %58 = icmp ugt i64 %40, 16777216
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp sgt i32 %51, 8
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 4
  %66 = load i32, ptr %65, align 4, !tbaa !63
  %67 = getelementptr i8, ptr %64, i64 10
  br label %68

68:                                               ; preds = %68, %62
  %69 = phi i32 [ 0, %62 ], [ %78, %68 ]
  %70 = phi i32 [ 0, %62 ], [ %77, %68 ]
  %71 = zext i32 %69 to i64
  %72 = shl nuw nsw i64 %71, 3
  %73 = getelementptr i8, ptr %67, i64 %72
  %74 = load i8, ptr %73, align 2, !tbaa !58
  %75 = icmp ugt i8 %74, 22
  %76 = zext i1 %75 to i32
  %77 = add i32 %70, %76
  %78 = add i32 %69, 1
  %79 = lshr i32 %78, %66
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %68, label %ZSTD_getOffsetInfo.exit, !llvm.loop !69

ZSTD_getOffsetInfo.exit:                          ; preds = %68
  %81 = sub i32 8, %66
  %82 = shl i32 %77, %81
  %83 = icmp ugt i32 %82, 6
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %ZSTD_getOffsetInfo.exit, %56
  %86 = phi i32 [ %42, %56 ], [ %84, %ZSTD_getOffsetInfo.exit ]
  store i32 0, ptr %41, align 4, !tbaa !36
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %2310, label %88

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %0, i64 30180
  %90 = load i32, ptr %89, align 4, !tbaa !31
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = tail call fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %ZSTD_decompressSequencesLong.exit

94:                                               ; preds = %88
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %96 = load i32, ptr %95, align 8, !tbaa !35
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %100 = load ptr, ptr %99, align 8, !tbaa !33
  br label %104

101:                                              ; preds = %94
  %102 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 %102
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi ptr [ %100, %98 ], [ %103, %101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %107 = load ptr, ptr %106, align 8, !tbaa !39
  store ptr %107, ptr %7, align 8, !tbaa !38
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %111 = load ptr, ptr %110, align 8, !tbaa !70
  %112 = load ptr, ptr %36, align 8, !tbaa !67
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %114 = load ptr, ptr %113, align 8, !tbaa !71
  %115 = icmp eq i32 %51, 0
  br i1 %115, label %2264, label %116

116:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %117, align 4, !tbaa !62
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %119 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %120 = load i32, ptr %118, align 4, !tbaa !30
  %121 = zext i32 %120 to i64
  store i64 %121, ptr %119, align 8, !tbaa !45
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %123 = load i32, ptr %122, align 4, !tbaa !30
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %124, ptr %125, align 8, !tbaa !45
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %127 = load i32, ptr %126, align 4, !tbaa !30
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %128, ptr %129, align 8, !tbaa !45
  %130 = tail call i32 @llvm.smin.i32(i32 %51, i32 8)
  %131 = ptrtoint ptr %1 to i64
  %132 = ptrtoint ptr %111 to i64
  %133 = sub i64 %131, %132
  %134 = icmp eq i64 %25, %43
  br i1 %134, label %.loopexit149.i, label %135

135:                                              ; preds = %116
  %136 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %46, ptr %136, align 8, !tbaa !72
  %137 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %138 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %137, ptr %138, align 8, !tbaa !74
  %139 = icmp ugt i64 %47, 7
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = add nsw i64 %47, -8
  %142 = getelementptr inbounds i8, ptr %46, i64 %141
  %143 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %142, ptr %143, align 8, !tbaa !75
  %144 = load i64, ptr %142, align 1
  store i64 %144, ptr %9, align 8, !tbaa !76
  %145 = icmp ult i64 %144, 72057594037927936
  br i1 %145, label %.loopexit149.i, label %203

146:                                              ; preds = %135
  %147 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %46, ptr %147, align 8, !tbaa !75
  %148 = load i8, ptr %46, align 1, !tbaa !9
  %149 = zext i8 %148 to i64
  store i64 %149, ptr %9, align 8, !tbaa !76
  switch i64 %47, label %191 [
    i64 7, label %150
    i64 6, label %156
    i64 5, label %163
    i64 4, label %170
    i64 3, label %177
    i64 2, label %184
  ]

150:                                              ; preds = %146
  %151 = getelementptr inbounds nuw i8, ptr %46, i64 6
  %152 = load i8, ptr %151, align 1, !tbaa !9
  %153 = zext i8 %152 to i64
  %154 = shl nuw nsw i64 %153, 48
  %155 = or disjoint i64 %154, %149
  br label %156

156:                                              ; preds = %150, %146
  %157 = phi i64 [ %149, %146 ], [ %155, %150 ]
  %158 = getelementptr inbounds nuw i8, ptr %46, i64 5
  %159 = load i8, ptr %158, align 1, !tbaa !9
  %160 = zext i8 %159 to i64
  %161 = shl nuw nsw i64 %160, 40
  %162 = add nuw nsw i64 %161, %157
  br label %163

163:                                              ; preds = %156, %146
  %164 = phi i64 [ %149, %146 ], [ %162, %156 ]
  %165 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %166 = load i8, ptr %165, align 1, !tbaa !9
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 32
  %169 = add nuw nsw i64 %168, %164
  br label %170

170:                                              ; preds = %163, %146
  %171 = phi i64 [ %149, %146 ], [ %169, %163 ]
  %172 = getelementptr inbounds nuw i8, ptr %46, i64 3
  %173 = load i8, ptr %172, align 1, !tbaa !9
  %174 = zext i8 %173 to i64
  %175 = shl nuw nsw i64 %174, 24
  %176 = add nuw nsw i64 %175, %171
  br label %177

177:                                              ; preds = %170, %146
  %178 = phi i64 [ %149, %146 ], [ %176, %170 ]
  %179 = getelementptr inbounds nuw i8, ptr %46, i64 2
  %180 = load i8, ptr %179, align 1, !tbaa !9
  %181 = zext i8 %180 to i64
  %182 = shl nuw nsw i64 %181, 16
  %183 = add nuw nsw i64 %182, %178
  br label %184

184:                                              ; preds = %177, %146
  %185 = phi i64 [ %149, %146 ], [ %183, %177 ]
  %186 = getelementptr inbounds nuw i8, ptr %46, i64 1
  %187 = load i8, ptr %186, align 1, !tbaa !9
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 8
  %190 = add nuw nsw i64 %189, %185
  store i64 %190, ptr %9, align 8, !tbaa !76
  br label %191

191:                                              ; preds = %184, %146
  %192 = phi i64 [ %190, %184 ], [ %149, %146 ]
  %193 = getelementptr i8, ptr %3, i64 %4
  %194 = getelementptr i8, ptr %193, i64 -1
  %195 = load i8, ptr %194, align 1, !tbaa !9
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %.loopexit149.i, label %197

197:                                              ; preds = %191
  %198 = zext i8 %195 to i32
  %199 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %198, i1 true)
  %200 = trunc nuw nsw i64 %47 to i32
  %201 = shl nuw nsw i32 %200, 3
  %reass.sub = sub nsw i32 %199, %201
  %202 = add nsw i32 %reass.sub, 41
  br label %210

203:                                              ; preds = %140
  %204 = lshr i64 %144, 56
  %205 = trunc nuw nsw i64 %204 to i32
  %206 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %205, i1 true)
  %207 = xor i32 %206, 31
  %208 = sub nuw nsw i32 8, %207
  %209 = icmp ult i64 %47, -119
  br i1 %209, label %210, label %.loopexit149.i

210:                                              ; preds = %203, %197
  %211 = phi ptr [ %46, %197 ], [ %142, %203 ]
  %212 = phi i64 [ 0, %197 ], [ %141, %203 ]
  %213 = phi i32 [ %202, %197 ], [ %208, %203 ]
  %214 = phi i64 [ %192, %197 ], [ %144, %203 ]
  %215 = getelementptr inbounds i8, ptr %46, i64 %212
  %216 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %217 = load ptr, ptr %0, align 8, !tbaa !77
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %219 = load i32, ptr %218, align 4, !tbaa !63
  %220 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %221 = add i32 %219, %213
  %222 = sub i32 0, %221
  %223 = and i32 %222, 63
  %224 = zext nneg i32 %223 to i64
  %225 = lshr i64 %214, %224
  %226 = zext nneg i32 %219 to i64
  %227 = shl nsw i64 -1, %226
  %228 = xor i64 %227, -1
  %229 = and i64 %225, %228
  store i64 %229, ptr %216, align 8, !tbaa !78
  %230 = icmp ugt i32 %221, 64
  %231 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %230, label %232, label %233, !prof !52

232:                                              ; preds = %210
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75
  br label %255

233:                                              ; preds = %210
  %234 = icmp slt i64 %212, 8
  br i1 %234, label %242, label %235

235:                                              ; preds = %233
  %236 = lshr i32 %221, 3
  %237 = zext nneg i32 %236 to i64
  %238 = sub nsw i64 0, %237
  %239 = getelementptr inbounds i8, ptr %215, i64 %238
  store ptr %239, ptr %231, align 8, !tbaa !75
  %240 = and i32 %221, 7
  store i32 %240, ptr %220, align 8, !tbaa !80
  %241 = load i64, ptr %239, align 1, !tbaa !45
  store i64 %241, ptr %9, align 8, !tbaa !76
  br label %255

242:                                              ; preds = %233
  %243 = icmp eq i64 %212, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %242
  %245 = lshr i32 %221, 3
  %246 = zext nneg i32 %245 to i64
  %247 = tail call i64 @llvm.smin.i64(i64 %212, i64 %246)
  %248 = trunc i64 %247 to i32
  %249 = and i64 %247, 4294967295
  %250 = sub nsw i64 0, %249
  %251 = getelementptr inbounds i8, ptr %215, i64 %250
  store ptr %251, ptr %231, align 8, !tbaa !75
  %252 = shl i32 %248, 3
  %253 = sub i32 %221, %252
  store i32 %253, ptr %220, align 8, !tbaa !80
  %254 = load i64, ptr %251, align 1, !tbaa !45
  store i64 %254, ptr %9, align 8, !tbaa !76
  br label %255

255:                                              ; preds = %244, %242, %235, %232
  %256 = phi ptr [ @BIT_reloadDStream.zeroFilled, %232 ], [ %239, %235 ], [ %211, %242 ], [ %251, %244 ]
  %257 = phi ptr [ @BIT_reloadDStream.zeroFilled, %232 ], [ %239, %235 ], [ %46, %242 ], [ %251, %244 ]
  %258 = phi i32 [ %221, %232 ], [ %240, %235 ], [ %221, %242 ], [ %253, %244 ]
  %259 = phi i64 [ %214, %232 ], [ %241, %235 ], [ %214, %242 ], [ %254, %244 ]
  %260 = getelementptr inbounds nuw i8, ptr %217, i64 8
  %261 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %260, ptr %261, align 8, !tbaa !81
  %262 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %264 = load ptr, ptr %263, align 8, !tbaa !68
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 4
  %266 = load i32, ptr %265, align 4, !tbaa !63
  %267 = add i32 %266, %258
  %268 = sub i32 0, %267
  %269 = and i32 %268, 63
  %270 = zext nneg i32 %269 to i64
  %271 = lshr i64 %259, %270
  %272 = zext nneg i32 %266 to i64
  %273 = shl nsw i64 -1, %272
  %274 = xor i64 %273, -1
  %275 = and i64 %271, %274
  store i64 %275, ptr %262, align 8, !tbaa !78
  %276 = icmp ugt i32 %267, 64
  br i1 %276, label %277, label %278, !prof !52

277:                                              ; preds = %255
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75
  br label %306

278:                                              ; preds = %255
  %279 = icmp ult ptr %257, %137
  br i1 %279, label %287, label %280

280:                                              ; preds = %278
  %281 = lshr i32 %267, 3
  %282 = zext nneg i32 %281 to i64
  %283 = sub nsw i64 0, %282
  %284 = getelementptr inbounds i8, ptr %257, i64 %283
  store ptr %284, ptr %231, align 8, !tbaa !75
  %285 = and i32 %267, 7
  %286 = load i64, ptr %284, align 1, !tbaa !45
  store i64 %286, ptr %9, align 8, !tbaa !76
  br label %306

287:                                              ; preds = %278
  %288 = icmp eq ptr %257, %46
  br i1 %288, label %306, label %289

289:                                              ; preds = %287
  %290 = lshr i32 %267, 3
  %291 = zext nneg i32 %290 to i64
  %292 = sub nsw i64 0, %291
  %293 = getelementptr inbounds i8, ptr %257, i64 %292
  %294 = icmp ult ptr %293, %46
  %295 = ptrtoint ptr %257 to i64
  %296 = ptrtoint ptr %46 to i64
  %297 = sub i64 %295, %296
  %298 = trunc i64 %297 to i32
  %299 = select i1 %294, i32 %298, i32 %290
  %300 = zext i32 %299 to i64
  %301 = sub nsw i64 0, %300
  %302 = getelementptr inbounds i8, ptr %257, i64 %301
  store ptr %302, ptr %231, align 8, !tbaa !75
  %303 = shl i32 %299, 3
  %304 = sub i32 %267, %303
  %305 = load i64, ptr %302, align 1, !tbaa !45
  store i64 %305, ptr %9, align 8, !tbaa !76
  br label %306

306:                                              ; preds = %289, %287, %280, %277
  %307 = phi ptr [ @BIT_reloadDStream.zeroFilled, %277 ], [ %284, %280 ], [ %256, %287 ], [ %302, %289 ]
  %308 = phi ptr [ @BIT_reloadDStream.zeroFilled, %277 ], [ %284, %280 ], [ %257, %287 ], [ %302, %289 ]
  %309 = phi i32 [ %267, %277 ], [ %285, %280 ], [ %267, %287 ], [ %304, %289 ]
  %310 = phi i64 [ %259, %277 ], [ %286, %280 ], [ %259, %287 ], [ %305, %289 ]
  %311 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %312 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %311, ptr %312, align 8, !tbaa !81
  %313 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %315 = load ptr, ptr %314, align 8, !tbaa !82
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 4
  %317 = load i32, ptr %316, align 4, !tbaa !63
  %318 = add i32 %317, %309
  %319 = sub i32 0, %318
  %320 = and i32 %319, 63
  %321 = zext nneg i32 %320 to i64
  %322 = lshr i64 %310, %321
  %323 = zext nneg i32 %317 to i64
  %324 = shl nsw i64 -1, %323
  %325 = xor i64 %324, -1
  %326 = and i64 %322, %325
  store i32 %318, ptr %220, align 8, !tbaa !80
  store i64 %326, ptr %313, align 8, !tbaa !78
  %327 = icmp ugt i32 %318, 64
  br i1 %327, label %328, label %329, !prof !52

328:                                              ; preds = %306
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75
  br label %357

329:                                              ; preds = %306
  %330 = icmp ult ptr %308, %137
  br i1 %330, label %338, label %331

331:                                              ; preds = %329
  %332 = lshr i32 %318, 3
  %333 = zext nneg i32 %332 to i64
  %334 = sub nsw i64 0, %333
  %335 = getelementptr inbounds i8, ptr %308, i64 %334
  store ptr %335, ptr %231, align 8, !tbaa !75
  %336 = and i32 %318, 7
  store i32 %336, ptr %220, align 8, !tbaa !80
  %337 = load i64, ptr %335, align 1, !tbaa !45
  store i64 %337, ptr %9, align 8, !tbaa !76
  br label %357

338:                                              ; preds = %329
  %339 = icmp eq ptr %308, %46
  br i1 %339, label %357, label %340

340:                                              ; preds = %338
  %341 = lshr i32 %318, 3
  %342 = zext nneg i32 %341 to i64
  %343 = sub nsw i64 0, %342
  %344 = getelementptr inbounds i8, ptr %308, i64 %343
  %345 = icmp ult ptr %344, %46
  %346 = ptrtoint ptr %308 to i64
  %347 = ptrtoint ptr %46 to i64
  %348 = sub i64 %346, %347
  %349 = trunc i64 %348 to i32
  %350 = select i1 %345, i32 %349, i32 %341
  %351 = zext i32 %350 to i64
  %352 = sub nsw i64 0, %351
  %353 = getelementptr inbounds i8, ptr %308, i64 %352
  store ptr %353, ptr %231, align 8, !tbaa !75
  %354 = shl i32 %350, 3
  %355 = sub i32 %318, %354
  store i32 %355, ptr %220, align 8, !tbaa !80
  %356 = load i64, ptr %353, align 1, !tbaa !45
  store i64 %356, ptr %9, align 8, !tbaa !76
  br label %357

357:                                              ; preds = %340, %338, %331, %328
  %358 = phi ptr [ @BIT_reloadDStream.zeroFilled, %328 ], [ %335, %331 ], [ %307, %338 ], [ %353, %340 ]
  %359 = phi i64 [ %310, %328 ], [ %337, %331 ], [ %310, %338 ], [ %356, %340 ]
  %360 = phi i32 [ %318, %328 ], [ %336, %331 ], [ %318, %338 ], [ %355, %340 ]
  %361 = phi ptr [ @BIT_reloadDStream.zeroFilled, %328 ], [ %335, %331 ], [ %308, %338 ], [ %353, %340 ]
  %362 = getelementptr inbounds nuw i8, ptr %315, i64 8
  %363 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %362, ptr %363, align 8, !tbaa !81
  br i1 %52, label %364, label %.loopexit169.i

364:                                              ; preds = %357
  %365 = ptrtoint ptr %46 to i64
  %366 = add nsw i32 %51, -1
  %367 = zext nneg i32 %366 to i64
  %368 = zext nneg i32 %130 to i64
  br label %392

.loopexit169.i:                                   ; preds = %617, %357
  %369 = phi ptr [ %358, %357 ], [ %618, %617 ]
  %370 = phi i64 [ %359, %357 ], [ %624, %617 ]
  %371 = phi i32 [ %360, %357 ], [ %623, %617 ]
  %372 = phi ptr [ %361, %357 ], [ %622, %617 ]
  %373 = phi i64 [ %128, %357 ], [ %488, %617 ]
  %374 = phi i64 [ %124, %357 ], [ %486, %617 ]
  %375 = phi i64 [ %121, %357 ], [ %487, %617 ]
  %376 = phi i64 [ %326, %357 ], [ %619, %617 ]
  %377 = phi i64 [ %275, %357 ], [ %620, %617 ]
  %378 = phi i64 [ %229, %357 ], [ %621, %617 ]
  %379 = phi i64 [ %133, %357 ], [ %635, %617 ]
  %380 = phi i32 [ 0, %357 ], [ %130, %617 ]
  %381 = icmp slt i32 %380, %51
  br i1 %381, label %382, label %.loopexit168.i

382:                                              ; preds = %.loopexit169.i
  %383 = add nsw i32 %51, -1
  %384 = getelementptr inbounds i8, ptr %105, i64 -32
  %385 = ptrtoint ptr %112 to i64
  %386 = ptrtoint ptr %105 to i64
  %387 = getelementptr i8, ptr %0, i64 30372
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %390 = ptrtoint ptr %46 to i64
  %391 = add i64 %132, 16
  br label %641

392:                                              ; preds = %617, %364
  %393 = phi ptr [ %358, %364 ], [ %618, %617 ]
  %394 = phi i64 [ %128, %364 ], [ %488, %617 ]
  %395 = phi i64 [ %326, %364 ], [ %619, %617 ]
  %396 = phi i64 [ %275, %364 ], [ %620, %617 ]
  %397 = phi i64 [ %229, %364 ], [ %621, %617 ]
  %398 = phi i64 [ 0, %364 ], [ %639, %617 ]
  %399 = phi i64 [ %124, %364 ], [ %486, %617 ]
  %400 = phi i64 [ %121, %364 ], [ %487, %617 ]
  %401 = phi i64 [ %133, %364 ], [ %635, %617 ]
  %402 = phi i64 [ %229, %364 ], [ %627, %617 ]
  %403 = phi i64 [ %326, %364 ], [ %626, %617 ]
  %404 = phi i64 [ %275, %364 ], [ %625, %617 ]
  %405 = phi i64 [ %359, %364 ], [ %624, %617 ]
  %406 = phi i32 [ %360, %364 ], [ %623, %617 ]
  %407 = phi ptr [ %361, %364 ], [ %622, %617 ]
  %408 = icmp eq i64 %398, %367
  %409 = getelementptr inbounds nuw [8 x i8], ptr %260, i64 %402
  %410 = getelementptr inbounds nuw [8 x i8], ptr %362, i64 %403
  %411 = getelementptr inbounds nuw [8 x i8], ptr %311, i64 %404
  %412 = getelementptr inbounds nuw i8, ptr %410, i64 4
  %413 = load i32, ptr %412, align 4, !tbaa !41, !noalias !83
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds nuw i8, ptr %409, i64 4
  %416 = load i32, ptr %415, align 4, !tbaa !41, !noalias !83
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds nuw i8, ptr %411, i64 4
  %419 = load i32, ptr %418, align 4, !tbaa !41, !noalias !83
  %420 = getelementptr inbounds nuw i8, ptr %409, i64 2
  %421 = load i8, ptr %420, align 2, !tbaa !58, !noalias !83
  %422 = getelementptr inbounds nuw i8, ptr %410, i64 2
  %423 = load i8, ptr %422, align 2, !tbaa !58, !noalias !83
  %424 = getelementptr inbounds nuw i8, ptr %411, i64 2
  %425 = load i8, ptr %424, align 2, !tbaa !58, !noalias !83
  %426 = zext i8 %421 to i32
  %427 = zext i8 %423 to i32
  %428 = add i8 %423, %421
  %429 = add i8 %428, %425
  %430 = load i16, ptr %409, align 4, !tbaa !57, !noalias !83
  %431 = load i16, ptr %410, align 4, !tbaa !57, !noalias !83
  %432 = load i16, ptr %411, align 4, !tbaa !57, !noalias !83
  %433 = getelementptr inbounds nuw i8, ptr %409, i64 3
  %434 = load i8, ptr %433, align 1, !tbaa !56, !noalias !83
  %435 = zext i8 %434 to i32
  %436 = getelementptr inbounds nuw i8, ptr %410, i64 3
  %437 = load i8, ptr %436, align 1, !tbaa !56, !noalias !83
  %438 = zext i8 %437 to i32
  %439 = getelementptr inbounds nuw i8, ptr %411, i64 3
  %440 = load i8, ptr %439, align 1, !tbaa !56, !noalias !83
  %441 = zext i8 %440 to i32
  %442 = icmp ugt i8 %425, 1
  br i1 %442, label %444, label %456

443:                                              ; preds = %1572
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !86
  unreachable, !nosanitize !86

444:                                              ; preds = %392
  %445 = zext i8 %425 to i32
  %446 = and i32 %406, 63
  %447 = zext nneg i32 %446 to i64
  %448 = shl i64 %405, %447
  %449 = sub nsw i32 0, %445
  %450 = and i32 %449, 63
  %451 = zext nneg i32 %450 to i64
  %452 = lshr i64 %448, %451
  %453 = add i32 %406, %445
  store i32 %453, ptr %220, align 8, !tbaa !80, !noalias !83
  %454 = zext i32 %419 to i64
  %455 = add i64 %452, %454
  store i64 %399, ptr %129, align 8, !tbaa !45, !noalias !83
  br label %485

456:                                              ; preds = %392
  %457 = icmp eq i32 %416, 0
  %458 = icmp eq i8 %425, 0
  br i1 %458, label %459, label %462, !prof !87

459:                                              ; preds = %456
  %460 = select i1 %457, i64 %399, i64 %400
  %461 = select i1 %457, i64 %400, i64 %399
  br label %485

462:                                              ; preds = %456
  %463 = zext i1 %457 to i32
  %464 = add i32 %419, %463
  %465 = zext i32 %464 to i64
  %466 = and i32 %406, 63
  %467 = zext nneg i32 %466 to i64
  %468 = shl i64 %405, %467
  %469 = lshr i64 %468, 63
  %470 = add i32 %406, 1
  store i32 %470, ptr %220, align 8, !tbaa !80, !noalias !83
  %471 = add nuw nsw i64 %469, %465
  %472 = icmp eq i64 %471, 3
  br i1 %472, label %473, label %477

473:                                              ; preds = %462
  %474 = add i64 %400, -1
  %475 = icmp eq i64 %474, 0
  %476 = select i1 %475, i64 -1, i64 %474
  br label %483

477:                                              ; preds = %462
  %478 = getelementptr inbounds nuw [8 x i8], ptr %119, i64 %471
  %479 = load i64, ptr %478, align 8, !tbaa !45, !noalias !83
  %480 = icmp eq i64 %479, 0
  %481 = select i1 %480, i64 -1, i64 %479
  %482 = icmp eq i64 %471, 1
  br i1 %482, label %485, label %483

483:                                              ; preds = %477, %473
  %484 = phi i64 [ %476, %473 ], [ %481, %477 ]
  store i64 %399, ptr %129, align 8, !tbaa !45, !noalias !83
  br label %485

485:                                              ; preds = %483, %477, %459, %444
  %486 = phi i64 [ %461, %459 ], [ %400, %444 ], [ %400, %483 ], [ %400, %477 ]
  %487 = phi i64 [ %460, %459 ], [ %455, %444 ], [ %484, %483 ], [ %481, %477 ]
  %488 = phi i64 [ %394, %459 ], [ %399, %444 ], [ %399, %483 ], [ %394, %477 ]
  %489 = phi i32 [ %406, %459 ], [ %453, %444 ], [ %470, %483 ], [ %470, %477 ]
  store i64 %486, ptr %125, align 8, !tbaa !45, !noalias !83
  store i64 %487, ptr %119, align 8, !tbaa !45, !noalias !83
  %490 = icmp eq i8 %423, 0
  br i1 %490, label %501, label %491

491:                                              ; preds = %485
  %492 = and i32 %489, 63
  %493 = zext nneg i32 %492 to i64
  %494 = shl i64 %405, %493
  %495 = sub nsw i32 0, %427
  %496 = and i32 %495, 63
  %497 = zext nneg i32 %496 to i64
  %498 = lshr i64 %494, %497
  %499 = add i32 %489, %427
  store i32 %499, ptr %220, align 8, !tbaa !80, !noalias !83
  %500 = add i64 %498, %414
  br label %501

501:                                              ; preds = %491, %485
  %502 = phi i32 [ %489, %485 ], [ %499, %491 ]
  %503 = phi i64 [ %414, %485 ], [ %500, %491 ]
  %504 = icmp ugt i8 %429, 30
  br i1 %504, label %505, label %535, !prof !52

505:                                              ; preds = %501
  %506 = icmp ugt i32 %502, 64
  br i1 %506, label %507, label %508, !prof !52

507:                                              ; preds = %505
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75, !noalias !83
  br label %535

508:                                              ; preds = %505
  %509 = icmp ult ptr %407, %137
  br i1 %509, label %517, label %510

510:                                              ; preds = %508
  %511 = lshr i32 %502, 3
  %512 = zext nneg i32 %511 to i64
  %513 = sub nsw i64 0, %512
  %514 = getelementptr inbounds i8, ptr %407, i64 %513
  store ptr %514, ptr %231, align 8, !tbaa !75, !noalias !83
  %515 = and i32 %502, 7
  store i32 %515, ptr %220, align 8, !tbaa !80, !noalias !83
  %516 = load i64, ptr %514, align 1, !tbaa !45, !noalias !83
  store i64 %516, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %535

517:                                              ; preds = %508
  %518 = icmp eq ptr %407, %46
  br i1 %518, label %535, label %519

519:                                              ; preds = %517
  %520 = lshr i32 %502, 3
  %521 = zext nneg i32 %520 to i64
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %407, i64 %522
  %524 = icmp ult ptr %523, %46
  %525 = ptrtoint ptr %407 to i64
  %526 = sub i64 %525, %365
  %527 = trunc i64 %526 to i32
  %528 = select i1 %524, i32 %527, i32 %520
  %529 = zext i32 %528 to i64
  %530 = sub nsw i64 0, %529
  %531 = getelementptr inbounds i8, ptr %407, i64 %530
  store ptr %531, ptr %231, align 8, !tbaa !75, !noalias !83
  %532 = shl i32 %528, 3
  %533 = sub i32 %502, %532
  store i32 %533, ptr %220, align 8, !tbaa !80, !noalias !83
  %534 = load i64, ptr %531, align 1, !tbaa !45, !noalias !83
  store i64 %534, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %535

535:                                              ; preds = %519, %517, %510, %507, %501
  %536 = phi ptr [ %393, %517 ], [ %531, %519 ], [ %514, %510 ], [ @BIT_reloadDStream.zeroFilled, %507 ], [ %393, %501 ]
  %537 = phi ptr [ %407, %517 ], [ %531, %519 ], [ %514, %510 ], [ @BIT_reloadDStream.zeroFilled, %507 ], [ %407, %501 ]
  %538 = phi i32 [ %502, %517 ], [ %533, %519 ], [ %515, %510 ], [ %502, %507 ], [ %502, %501 ]
  %539 = phi i64 [ %405, %517 ], [ %534, %519 ], [ %516, %510 ], [ %405, %507 ], [ %405, %501 ]
  %540 = icmp eq i8 %421, 0
  br i1 %540, label %551, label %541

541:                                              ; preds = %535
  %542 = and i32 %538, 63
  %543 = zext nneg i32 %542 to i64
  %544 = shl i64 %539, %543
  %545 = sub nsw i32 0, %426
  %546 = and i32 %545, 63
  %547 = zext nneg i32 %546 to i64
  %548 = lshr i64 %544, %547
  %549 = add i32 %538, %426
  store i32 %549, ptr %220, align 8, !tbaa !80, !noalias !83
  %550 = add i64 %548, %417
  br label %551

551:                                              ; preds = %541, %535
  %552 = phi i32 [ %538, %535 ], [ %549, %541 ]
  %553 = phi i64 [ %417, %535 ], [ %550, %541 ]
  br i1 %408, label %617, label %554

554:                                              ; preds = %551
  %555 = add i32 %552, %435
  %556 = sub i32 0, %555
  %557 = and i32 %556, 63
  %558 = zext nneg i32 %557 to i64
  %559 = lshr i64 %539, %558
  %560 = zext nneg i8 %434 to i64
  %561 = shl nsw i64 -1, %560
  %562 = xor i64 %561, -1
  %563 = and i64 %559, %562
  %564 = zext i16 %430 to i64
  %565 = add nuw i64 %563, %564
  store i64 %565, ptr %216, align 8, !tbaa !78, !noalias !83
  %566 = add i32 %555, %438
  %567 = sub i32 0, %566
  %568 = and i32 %567, 63
  %569 = zext nneg i32 %568 to i64
  %570 = lshr i64 %539, %569
  %571 = zext nneg i8 %437 to i64
  %572 = shl nsw i64 -1, %571
  %573 = xor i64 %572, -1
  %574 = and i64 %570, %573
  %575 = zext i16 %431 to i64
  %576 = add nuw i64 %574, %575
  store i64 %576, ptr %313, align 8, !tbaa !78, !noalias !83
  %577 = add i32 %566, %441
  %578 = sub i32 0, %577
  %579 = and i32 %578, 63
  %580 = zext nneg i32 %579 to i64
  %581 = lshr i64 %539, %580
  %582 = zext nneg i8 %440 to i64
  %583 = shl nsw i64 -1, %582
  %584 = xor i64 %583, -1
  %585 = and i64 %581, %584
  store i32 %577, ptr %220, align 8, !tbaa !80, !noalias !83
  %586 = zext i16 %432 to i64
  %587 = add nuw i64 %585, %586
  store i64 %587, ptr %262, align 8, !tbaa !78, !noalias !83
  %588 = icmp ugt i32 %577, 64
  br i1 %588, label %589, label %590, !prof !52

589:                                              ; preds = %554
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75, !noalias !83
  br label %617

590:                                              ; preds = %554
  %591 = icmp ult ptr %537, %137
  br i1 %591, label %599, label %592

592:                                              ; preds = %590
  %593 = lshr i32 %577, 3
  %594 = zext nneg i32 %593 to i64
  %595 = sub nsw i64 0, %594
  %596 = getelementptr inbounds i8, ptr %537, i64 %595
  store ptr %596, ptr %231, align 8, !tbaa !75, !noalias !83
  %597 = and i32 %577, 7
  store i32 %597, ptr %220, align 8, !tbaa !80, !noalias !83
  %598 = load i64, ptr %596, align 1, !tbaa !45, !noalias !83
  store i64 %598, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %617

599:                                              ; preds = %590
  %600 = icmp eq ptr %537, %46
  br i1 %600, label %617, label %601

601:                                              ; preds = %599
  %602 = lshr i32 %577, 3
  %603 = zext nneg i32 %602 to i64
  %604 = sub nsw i64 0, %603
  %605 = getelementptr inbounds i8, ptr %537, i64 %604
  %606 = icmp ult ptr %605, %46
  %607 = ptrtoint ptr %537 to i64
  %608 = sub i64 %607, %365
  %609 = trunc i64 %608 to i32
  %610 = select i1 %606, i32 %609, i32 %602
  %611 = zext i32 %610 to i64
  %612 = sub nsw i64 0, %611
  %613 = getelementptr inbounds i8, ptr %537, i64 %612
  store ptr %613, ptr %231, align 8, !tbaa !75, !noalias !83
  %614 = shl i32 %610, 3
  %615 = sub i32 %577, %614
  store i32 %615, ptr %220, align 8, !tbaa !80, !noalias !83
  %616 = load i64, ptr %613, align 1, !tbaa !45, !noalias !83
  store i64 %616, ptr %9, align 8, !tbaa !76, !noalias !83
  br label %617

617:                                              ; preds = %601, %599, %592, %589, %551
  %618 = phi ptr [ %536, %599 ], [ %613, %601 ], [ %596, %592 ], [ @BIT_reloadDStream.zeroFilled, %589 ], [ %536, %551 ]
  %619 = phi i64 [ %576, %599 ], [ %576, %601 ], [ %576, %592 ], [ %576, %589 ], [ %395, %551 ]
  %620 = phi i64 [ %587, %599 ], [ %587, %601 ], [ %587, %592 ], [ %587, %589 ], [ %396, %551 ]
  %621 = phi i64 [ %565, %599 ], [ %565, %601 ], [ %565, %592 ], [ %565, %589 ], [ %397, %551 ]
  %622 = phi ptr [ %537, %599 ], [ %613, %601 ], [ %596, %592 ], [ @BIT_reloadDStream.zeroFilled, %589 ], [ %537, %551 ]
  %623 = phi i32 [ %577, %599 ], [ %615, %601 ], [ %597, %592 ], [ %577, %589 ], [ %552, %551 ]
  %624 = phi i64 [ %539, %599 ], [ %616, %601 ], [ %598, %592 ], [ %539, %589 ], [ %539, %551 ]
  %625 = phi i64 [ %587, %599 ], [ %587, %601 ], [ %587, %592 ], [ %587, %589 ], [ %404, %551 ]
  %626 = phi i64 [ %576, %599 ], [ %576, %601 ], [ %576, %592 ], [ %576, %589 ], [ %403, %551 ]
  %627 = phi i64 [ %565, %599 ], [ %565, %601 ], [ %565, %592 ], [ %565, %589 ], [ %402, %551 ]
  %628 = add i64 %553, %401
  %629 = icmp ugt i64 %487, %628
  %630 = select i1 %629, ptr %114, ptr %111
  %631 = getelementptr inbounds i8, ptr %630, i64 %628
  %632 = sub i64 0, %487
  %633 = getelementptr inbounds i8, ptr %631, i64 %632
  tail call void @llvm.prefetch.p0(ptr %633, i32 0, i32 3, i32 1)
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %634, i32 0, i32 3, i32 1)
  %635 = add i64 %628, %503
  %636 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %398
  store i64 %553, ptr %636, align 8, !tbaa !45
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 8
  store i64 %503, ptr %637, align 8, !tbaa !45
  %638 = getelementptr inbounds nuw i8, ptr %636, i64 16
  store i64 %487, ptr %638, align 8, !tbaa !45
  %639 = add nuw nsw i64 %398, 1
  %640 = icmp eq i64 %639, %368
  br i1 %640, label %.loopexit169.i, label %392, !llvm.loop !88

641:                                              ; preds = %1554, %382
  %642 = phi ptr [ %369, %382 ], [ %863, %1554 ]
  %643 = phi i32 [ %371, %382 ], [ %864, %1554 ]
  %644 = phi i64 [ %370, %382 ], [ %865, %1554 ]
  %645 = phi i64 [ %373, %382 ], [ %735, %1554 ]
  %646 = phi i64 [ %374, %382 ], [ %733, %1554 ]
  %647 = phi i64 [ %375, %382 ], [ %734, %1554 ]
  %648 = phi i64 [ %376, %382 ], [ %866, %1554 ]
  %649 = phi i64 [ %377, %382 ], [ %867, %1554 ]
  %650 = phi i64 [ %378, %382 ], [ %868, %1554 ]
  %651 = phi ptr [ %1, %382 ], [ %1557, %1554 ]
  %652 = phi ptr [ %109, %382 ], [ %1556, %1554 ]
  %653 = phi i32 [ %380, %382 ], [ %1559, %1554 ]
  %654 = phi i64 [ %379, %382 ], [ %1558, %1554 ]
  %655 = icmp eq i32 %653, %383
  %656 = getelementptr inbounds nuw [8 x i8], ptr %260, i64 %650
  %657 = getelementptr inbounds nuw [8 x i8], ptr %362, i64 %648
  %658 = getelementptr inbounds nuw [8 x i8], ptr %311, i64 %649
  %659 = getelementptr inbounds nuw i8, ptr %657, i64 4
  %660 = load i32, ptr %659, align 4, !tbaa !41, !noalias !89
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds nuw i8, ptr %656, i64 4
  %663 = load i32, ptr %662, align 4, !tbaa !41, !noalias !89
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds nuw i8, ptr %658, i64 4
  %666 = load i32, ptr %665, align 4, !tbaa !41, !noalias !89
  %667 = getelementptr inbounds nuw i8, ptr %656, i64 2
  %668 = load i8, ptr %667, align 2, !tbaa !58, !noalias !89
  %669 = getelementptr inbounds nuw i8, ptr %657, i64 2
  %670 = load i8, ptr %669, align 2, !tbaa !58, !noalias !89
  %671 = getelementptr inbounds nuw i8, ptr %658, i64 2
  %672 = load i8, ptr %671, align 2, !tbaa !58, !noalias !89
  %673 = zext i8 %668 to i32
  %674 = zext i8 %670 to i32
  %675 = add i8 %670, %668
  %676 = add i8 %675, %672
  %677 = load i16, ptr %656, align 4, !tbaa !57, !noalias !89
  %678 = load i16, ptr %657, align 4, !tbaa !57, !noalias !89
  %679 = load i16, ptr %658, align 4, !tbaa !57, !noalias !89
  %680 = getelementptr inbounds nuw i8, ptr %656, i64 3
  %681 = load i8, ptr %680, align 1, !tbaa !56, !noalias !89
  %682 = zext i8 %681 to i32
  %683 = getelementptr inbounds nuw i8, ptr %657, i64 3
  %684 = load i8, ptr %683, align 1, !tbaa !56, !noalias !89
  %685 = zext i8 %684 to i32
  %686 = getelementptr inbounds nuw i8, ptr %658, i64 3
  %687 = load i8, ptr %686, align 1, !tbaa !56, !noalias !89
  %688 = zext i8 %687 to i32
  %689 = icmp ugt i8 %672, 1
  br i1 %689, label %690, label %702

690:                                              ; preds = %641
  %691 = zext i8 %672 to i32
  %692 = and i32 %643, 63
  %693 = zext nneg i32 %692 to i64
  %694 = shl i64 %644, %693
  %695 = sub nsw i32 0, %691
  %696 = and i32 %695, 63
  %697 = zext nneg i32 %696 to i64
  %698 = lshr i64 %694, %697
  %699 = add i32 %643, %691
  store i32 %699, ptr %220, align 8, !tbaa !80, !noalias !89
  %700 = zext i32 %666 to i64
  %701 = add i64 %698, %700
  store i64 %646, ptr %129, align 8, !tbaa !45, !noalias !89
  br label %731

702:                                              ; preds = %641
  %703 = icmp eq i32 %663, 0
  %704 = icmp eq i8 %672, 0
  br i1 %704, label %705, label %708, !prof !87

705:                                              ; preds = %702
  %706 = select i1 %703, i64 %646, i64 %647
  %707 = select i1 %703, i64 %647, i64 %646
  br label %731

708:                                              ; preds = %702
  %709 = zext i1 %703 to i32
  %710 = add i32 %666, %709
  %711 = zext i32 %710 to i64
  %712 = and i32 %643, 63
  %713 = zext nneg i32 %712 to i64
  %714 = shl i64 %644, %713
  %715 = lshr i64 %714, 63
  %716 = add i32 %643, 1
  store i32 %716, ptr %220, align 8, !tbaa !80, !noalias !89
  %717 = add nuw nsw i64 %715, %711
  %718 = icmp eq i64 %717, 3
  br i1 %718, label %719, label %723

719:                                              ; preds = %708
  %720 = add i64 %647, -1
  %721 = icmp eq i64 %720, 0
  %722 = select i1 %721, i64 -1, i64 %720
  br label %729

723:                                              ; preds = %708
  %724 = getelementptr inbounds nuw [8 x i8], ptr %119, i64 %717
  %725 = load i64, ptr %724, align 8, !tbaa !45, !noalias !89
  %726 = icmp eq i64 %725, 0
  %727 = select i1 %726, i64 -1, i64 %725
  %728 = icmp eq i64 %717, 1
  br i1 %728, label %731, label %729

729:                                              ; preds = %723, %719
  %730 = phi i64 [ %722, %719 ], [ %727, %723 ]
  store i64 %646, ptr %129, align 8, !tbaa !45, !noalias !89
  br label %731

731:                                              ; preds = %729, %723, %705, %690
  %732 = phi i32 [ %643, %705 ], [ %699, %690 ], [ %716, %729 ], [ %716, %723 ]
  %733 = phi i64 [ %707, %705 ], [ %647, %690 ], [ %647, %729 ], [ %647, %723 ]
  %734 = phi i64 [ %706, %705 ], [ %701, %690 ], [ %730, %729 ], [ %727, %723 ]
  %735 = phi i64 [ %645, %705 ], [ %646, %690 ], [ %646, %729 ], [ %645, %723 ]
  store i64 %733, ptr %125, align 8, !tbaa !45, !noalias !89
  store i64 %734, ptr %119, align 8, !tbaa !45, !noalias !89
  %736 = icmp eq i8 %670, 0
  br i1 %736, label %747, label %737

737:                                              ; preds = %731
  %738 = and i32 %732, 63
  %739 = zext nneg i32 %738 to i64
  %740 = shl i64 %644, %739
  %741 = sub nsw i32 0, %674
  %742 = and i32 %741, 63
  %743 = zext nneg i32 %742 to i64
  %744 = lshr i64 %740, %743
  %745 = add i32 %732, %674
  store i32 %745, ptr %220, align 8, !tbaa !80, !noalias !89
  %746 = add i64 %744, %661
  br label %747

747:                                              ; preds = %737, %731
  %748 = phi i32 [ %732, %731 ], [ %745, %737 ]
  %749 = phi i64 [ %661, %731 ], [ %746, %737 ]
  %750 = icmp ugt i8 %676, 30
  br i1 %750, label %751, label %781, !prof !52

751:                                              ; preds = %747
  %752 = icmp ugt i32 %748, 64
  br i1 %752, label %753, label %754, !prof !52

753:                                              ; preds = %751
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75, !noalias !89
  br label %781

754:                                              ; preds = %751
  %755 = icmp ult ptr %642, %137
  br i1 %755, label %763, label %756

756:                                              ; preds = %754
  %757 = lshr i32 %748, 3
  %758 = zext nneg i32 %757 to i64
  %759 = sub nsw i64 0, %758
  %760 = getelementptr inbounds i8, ptr %642, i64 %759
  store ptr %760, ptr %231, align 8, !tbaa !75, !noalias !89
  %761 = and i32 %748, 7
  store i32 %761, ptr %220, align 8, !tbaa !80, !noalias !89
  %762 = load i64, ptr %760, align 1, !tbaa !45, !noalias !89
  store i64 %762, ptr %9, align 8, !tbaa !76, !noalias !89
  br label %781

763:                                              ; preds = %754
  %764 = icmp eq ptr %642, %46
  br i1 %764, label %781, label %765

765:                                              ; preds = %763
  %766 = lshr i32 %748, 3
  %767 = zext nneg i32 %766 to i64
  %768 = sub nsw i64 0, %767
  %769 = getelementptr inbounds i8, ptr %642, i64 %768
  %770 = icmp ult ptr %769, %46
  %771 = ptrtoint ptr %642 to i64
  %772 = sub i64 %771, %390
  %773 = trunc i64 %772 to i32
  %774 = select i1 %770, i32 %773, i32 %766
  %775 = zext i32 %774 to i64
  %776 = sub nsw i64 0, %775
  %777 = getelementptr inbounds i8, ptr %642, i64 %776
  store ptr %777, ptr %231, align 8, !tbaa !75, !noalias !89
  %778 = shl i32 %774, 3
  %779 = sub i32 %748, %778
  store i32 %779, ptr %220, align 8, !tbaa !80, !noalias !89
  %780 = load i64, ptr %777, align 1, !tbaa !45, !noalias !89
  store i64 %780, ptr %9, align 8, !tbaa !76, !noalias !89
  br label %781

781:                                              ; preds = %765, %763, %756, %753, %747
  %782 = phi ptr [ %777, %765 ], [ %642, %763 ], [ %760, %756 ], [ @BIT_reloadDStream.zeroFilled, %753 ], [ %642, %747 ]
  %783 = phi i32 [ %779, %765 ], [ %748, %763 ], [ %761, %756 ], [ %748, %753 ], [ %748, %747 ]
  %784 = phi i64 [ %780, %765 ], [ %644, %763 ], [ %762, %756 ], [ %644, %753 ], [ %644, %747 ]
  %785 = icmp eq i8 %668, 0
  br i1 %785, label %796, label %786

786:                                              ; preds = %781
  %787 = and i32 %783, 63
  %788 = zext nneg i32 %787 to i64
  %789 = shl i64 %784, %788
  %790 = sub nsw i32 0, %673
  %791 = and i32 %790, 63
  %792 = zext nneg i32 %791 to i64
  %793 = lshr i64 %789, %792
  %794 = add i32 %783, %673
  store i32 %794, ptr %220, align 8, !tbaa !80, !noalias !89
  %795 = add i64 %793, %664
  br label %796

796:                                              ; preds = %786, %781
  %797 = phi i32 [ %783, %781 ], [ %794, %786 ]
  %798 = phi i64 [ %664, %781 ], [ %795, %786 ]
  br i1 %655, label %862, label %799

799:                                              ; preds = %796
  %800 = add i32 %797, %682
  %801 = sub i32 0, %800
  %802 = and i32 %801, 63
  %803 = zext nneg i32 %802 to i64
  %804 = lshr i64 %784, %803
  %805 = zext nneg i8 %681 to i64
  %806 = shl nsw i64 -1, %805
  %807 = xor i64 %806, -1
  %808 = and i64 %804, %807
  %809 = zext i16 %677 to i64
  %810 = add nuw i64 %808, %809
  store i64 %810, ptr %216, align 8, !tbaa !78, !noalias !89
  %811 = add i32 %800, %685
  %812 = sub i32 0, %811
  %813 = and i32 %812, 63
  %814 = zext nneg i32 %813 to i64
  %815 = lshr i64 %784, %814
  %816 = zext nneg i8 %684 to i64
  %817 = shl nsw i64 -1, %816
  %818 = xor i64 %817, -1
  %819 = and i64 %815, %818
  %820 = zext i16 %678 to i64
  %821 = add nuw i64 %819, %820
  store i64 %821, ptr %313, align 8, !tbaa !78, !noalias !89
  %822 = add i32 %811, %688
  %823 = sub i32 0, %822
  %824 = and i32 %823, 63
  %825 = zext nneg i32 %824 to i64
  %826 = lshr i64 %784, %825
  %827 = zext nneg i8 %687 to i64
  %828 = shl nsw i64 -1, %827
  %829 = xor i64 %828, -1
  %830 = and i64 %826, %829
  store i32 %822, ptr %220, align 8, !tbaa !80, !noalias !89
  %831 = zext i16 %679 to i64
  %832 = add nuw i64 %830, %831
  store i64 %832, ptr %262, align 8, !tbaa !78, !noalias !89
  %833 = icmp ugt i32 %822, 64
  br i1 %833, label %834, label %835, !prof !52

834:                                              ; preds = %799
  store ptr @BIT_reloadDStream.zeroFilled, ptr %231, align 8, !tbaa !75, !noalias !89
  br label %862

835:                                              ; preds = %799
  %836 = icmp ult ptr %782, %137
  br i1 %836, label %844, label %837

837:                                              ; preds = %835
  %838 = lshr i32 %822, 3
  %839 = zext nneg i32 %838 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %782, i64 %840
  store ptr %841, ptr %231, align 8, !tbaa !75, !noalias !89
  %842 = and i32 %822, 7
  store i32 %842, ptr %220, align 8, !tbaa !80, !noalias !89
  %843 = load i64, ptr %841, align 1, !tbaa !45, !noalias !89
  store i64 %843, ptr %9, align 8, !tbaa !76, !noalias !89
  br label %862

844:                                              ; preds = %835
  %845 = icmp eq ptr %782, %46
  br i1 %845, label %862, label %846

846:                                              ; preds = %844
  %847 = lshr i32 %822, 3
  %848 = zext nneg i32 %847 to i64
  %849 = sub nsw i64 0, %848
  %850 = getelementptr inbounds i8, ptr %782, i64 %849
  %851 = icmp ult ptr %850, %46
  %852 = ptrtoint ptr %782 to i64
  %853 = sub i64 %852, %390
  %854 = trunc i64 %853 to i32
  %855 = select i1 %851, i32 %854, i32 %847
  %856 = zext i32 %855 to i64
  %857 = sub nsw i64 0, %856
  %858 = getelementptr inbounds i8, ptr %782, i64 %857
  store ptr %858, ptr %231, align 8, !tbaa !75, !noalias !89
  %859 = shl i32 %855, 3
  %860 = sub i32 %822, %859
  store i32 %860, ptr %220, align 8, !tbaa !80, !noalias !89
  %861 = load i64, ptr %858, align 1, !tbaa !45, !noalias !89
  store i64 %861, ptr %9, align 8, !tbaa !76, !noalias !89
  br label %862

862:                                              ; preds = %846, %844, %837, %834, %796
  %863 = phi ptr [ %782, %844 ], [ %858, %846 ], [ %841, %837 ], [ @BIT_reloadDStream.zeroFilled, %834 ], [ %782, %796 ]
  %864 = phi i32 [ %822, %844 ], [ %860, %846 ], [ %842, %837 ], [ %822, %834 ], [ %797, %796 ]
  %865 = phi i64 [ %784, %844 ], [ %861, %846 ], [ %843, %837 ], [ %784, %834 ], [ %784, %796 ]
  %866 = phi i64 [ %821, %844 ], [ %821, %846 ], [ %821, %837 ], [ %821, %834 ], [ %648, %796 ]
  %867 = phi i64 [ %832, %844 ], [ %832, %846 ], [ %832, %837 ], [ %832, %834 ], [ %649, %796 ]
  %868 = phi i64 [ %810, %844 ], [ %810, %846 ], [ %810, %837 ], [ %810, %834 ], [ %650, %796 ]
  %869 = load i32, ptr %95, align 8, !tbaa !35
  %870 = icmp eq i32 %869, 2
  br i1 %870, label %871, label %1367

871:                                              ; preds = %862
  %872 = load ptr, ptr %7, align 8, !tbaa !38
  %873 = and i32 %653, 7
  %874 = zext nneg i32 %873 to i64
  %875 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %874
  %876 = load i64, ptr %875, align 8, !tbaa !92
  %877 = getelementptr inbounds nuw i8, ptr %872, i64 %876
  %878 = load ptr, ptr %108, align 8, !tbaa !34
  %879 = icmp ugt ptr %877, %878
  br i1 %879, label %880, label %1201

880:                                              ; preds = %871
  %881 = ptrtoint ptr %878 to i64
  %882 = ptrtoint ptr %872 to i64
  %883 = sub i64 %881, %882
  %884 = icmp eq ptr %878, %872
  br i1 %884, label %1022, label %885

885:                                              ; preds = %880
  %886 = ptrtoint ptr %651 to i64
  %887 = sub i64 %386, %886
  %888 = icmp ugt i64 %883, %887
  br i1 %888, label %.loopexit149.i, label %889

889:                                              ; preds = %885
  %890 = sub i64 %886, %882
  %891 = getelementptr inbounds nuw i8, ptr %651, i64 %883
  %892 = icmp ult i64 %883, 8
  %893 = icmp sgt i64 %890, -8
  %894 = or i1 %893, %892
  br i1 %894, label %895, label %945

895:                                              ; preds = %889
  %896 = add i64 %890, %881
  %897 = add i64 %886, 1
  %898 = tail call i64 @llvm.umax.i64(i64 %896, i64 %897)
  %899 = sub i64 %898, %886
  %900 = icmp ult i64 %899, 4
  %901 = icmp ult i64 %890, 32
  %902 = or i1 %901, %900
  br i1 %902, label %.preheader356, label %903

903:                                              ; preds = %895
  %904 = icmp ult i64 %899, 32
  br i1 %904, label %924, label %905

905:                                              ; preds = %903
  %906 = and i64 %899, -32
  br label %907

907:                                              ; preds = %907, %905
  %908 = phi i64 [ 0, %905 ], [ %915, %907 ]
  %909 = getelementptr i8, ptr %651, i64 %908
  %910 = getelementptr i8, ptr %872, i64 %908
  %911 = getelementptr i8, ptr %910, i64 16
  %912 = load <16 x i8>, ptr %910, align 1, !tbaa !9
  %913 = load <16 x i8>, ptr %911, align 1, !tbaa !9
  %914 = getelementptr i8, ptr %909, i64 16
  store <16 x i8> %912, ptr %909, align 1, !tbaa !9
  store <16 x i8> %913, ptr %914, align 1, !tbaa !9
  %915 = add nuw i64 %908, 32
  %916 = icmp eq i64 %915, %906
  br i1 %916, label %917, label %907, !llvm.loop !94

917:                                              ; preds = %907
  %918 = icmp eq i64 %899, %906
  br i1 %918, label %.loopexit155.i, label %919

919:                                              ; preds = %917
  %920 = getelementptr i8, ptr %651, i64 %906
  %921 = getelementptr i8, ptr %872, i64 %906
  %922 = and i64 %899, 28
  %923 = icmp eq i64 %922, 0
  br i1 %923, label %.preheader356, label %924

924:                                              ; preds = %919, %903
  %925 = phi i64 [ %906, %919 ], [ 0, %903 ]
  %926 = and i64 %899, -4
  br label %927

927:                                              ; preds = %927, %924
  %928 = phi i64 [ %925, %924 ], [ %932, %927 ]
  %929 = getelementptr i8, ptr %651, i64 %928
  %930 = getelementptr i8, ptr %872, i64 %928
  %931 = load <4 x i8>, ptr %930, align 1, !tbaa !9
  store <4 x i8> %931, ptr %929, align 1, !tbaa !9
  %932 = add nuw i64 %928, 4
  %933 = icmp eq i64 %932, %926
  br i1 %933, label %934, label %927, !llvm.loop !95

934:                                              ; preds = %927
  %935 = getelementptr i8, ptr %651, i64 %926
  %936 = getelementptr i8, ptr %872, i64 %926
  %937 = icmp eq i64 %899, %926
  br i1 %937, label %.loopexit155.i, label %.preheader356

.preheader356:                                    ; preds = %934, %919, %895
  %.ph357 = phi ptr [ %935, %934 ], [ %920, %919 ], [ %651, %895 ]
  %.ph358 = phi ptr [ %936, %934 ], [ %921, %919 ], [ %872, %895 ]
  br label %938

938:                                              ; preds = %.preheader356, %938
  %939 = phi ptr [ %943, %938 ], [ %.ph357, %.preheader356 ]
  %940 = phi ptr [ %941, %938 ], [ %.ph358, %.preheader356 ]
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 1
  %942 = load i8, ptr %940, align 1, !tbaa !9
  %943 = getelementptr inbounds nuw i8, ptr %939, i64 1
  store i8 %942, ptr %939, align 1, !tbaa !9
  %944 = icmp ult ptr %943, %891
  br i1 %944, label %938, label %.loopexit155.i, !llvm.loop !96

945:                                              ; preds = %889
  %946 = icmp sgt i64 %883, 31
  %947 = icmp samesign ult i64 %890, -16
  %948 = and i1 %947, %946
  br i1 %948, label %949, label %969

949:                                              ; preds = %945
  %950 = getelementptr inbounds i8, ptr %891, i64 -32
  %951 = add nsw i64 %883, -32
  %952 = getelementptr inbounds nuw i8, ptr %651, i64 %951
  %953 = load <2 x i64>, ptr %872, align 1, !tbaa !9
  store <2 x i64> %953, ptr %651, align 1, !tbaa !9
  %954 = icmp samesign ult i64 %883, 49
  br i1 %954, label %.loopexit157.i, label %955

955:                                              ; preds = %949
  %956 = getelementptr inbounds nuw i8, ptr %651, i64 16
  br label %957

957:                                              ; preds = %957, %955
  %958 = phi ptr [ %956, %955 ], [ %965, %957 ]
  %959 = phi ptr [ %872, %955 ], [ %963, %957 ]
  %960 = getelementptr inbounds nuw i8, ptr %959, i64 16
  %961 = load <2 x i64>, ptr %960, align 1, !tbaa !9
  store <2 x i64> %961, ptr %958, align 1, !tbaa !9
  %962 = getelementptr inbounds nuw i8, ptr %958, i64 16
  %963 = getelementptr inbounds nuw i8, ptr %959, i64 32
  %964 = load <2 x i64>, ptr %963, align 1, !tbaa !9
  store <2 x i64> %964, ptr %962, align 1, !tbaa !9
  %965 = getelementptr inbounds nuw i8, ptr %958, i64 32
  %966 = icmp ult ptr %965, %952
  br i1 %966, label %957, label %.loopexit157.i, !llvm.loop !97

.loopexit157.i:                                   ; preds = %957, %949
  %967 = getelementptr inbounds nuw i8, ptr %872, i64 %951
  %.pre251.i = ptrtoint ptr %950 to i64
  %.pre253.i = ptrtoint ptr %967 to i64
  %.pre255.i = sub i64 %.pre251.i, %.pre253.i
  %968 = icmp ult i64 %.pre255.i, 32
  br label %969

969:                                              ; preds = %.loopexit157.i, %945
  %.pre-phi256.i = phi i1 [ %968, %.loopexit157.i ], [ false, %945 ]
  %.pre-phi252.i = phi i64 [ %.pre251.i, %.loopexit157.i ], [ %886, %945 ]
  %970 = phi ptr [ %950, %.loopexit157.i ], [ %651, %945 ]
  %971 = phi ptr [ %967, %.loopexit157.i ], [ %872, %945 ]
  %972 = add i64 %890, %881
  %973 = add nuw i64 %.pre-phi252.i, 1
  %974 = tail call i64 @llvm.umax.i64(i64 %972, i64 %973)
  %975 = sub i64 %974, %.pre-phi252.i
  %976 = icmp ult i64 %975, 4
  %977 = select i1 %976, i1 true, i1 %.pre-phi256.i
  br i1 %977, label %.preheader359, label %978

978:                                              ; preds = %969
  %979 = icmp ult i64 %975, 32
  br i1 %979, label %999, label %980

980:                                              ; preds = %978
  %981 = and i64 %975, -32
  br label %982

982:                                              ; preds = %982, %980
  %983 = phi i64 [ 0, %980 ], [ %990, %982 ]
  %984 = getelementptr i8, ptr %970, i64 %983
  %985 = getelementptr i8, ptr %971, i64 %983
  %986 = getelementptr i8, ptr %985, i64 16
  %987 = load <16 x i8>, ptr %985, align 1, !tbaa !9
  %988 = load <16 x i8>, ptr %986, align 1, !tbaa !9
  %989 = getelementptr i8, ptr %984, i64 16
  store <16 x i8> %987, ptr %984, align 1, !tbaa !9
  store <16 x i8> %988, ptr %989, align 1, !tbaa !9
  %990 = add nuw i64 %983, 32
  %991 = icmp eq i64 %990, %981
  br i1 %991, label %992, label %982, !llvm.loop !98

992:                                              ; preds = %982
  %993 = icmp eq i64 %975, %981
  br i1 %993, label %.loopexit155.i, label %994

994:                                              ; preds = %992
  %995 = getelementptr i8, ptr %970, i64 %981
  %996 = getelementptr i8, ptr %971, i64 %981
  %997 = and i64 %975, 28
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %.preheader359, label %999

999:                                              ; preds = %994, %978
  %1000 = phi i64 [ %981, %994 ], [ 0, %978 ]
  %1001 = and i64 %975, -4
  br label %1002

1002:                                             ; preds = %1002, %999
  %1003 = phi i64 [ %1000, %999 ], [ %1007, %1002 ]
  %1004 = getelementptr i8, ptr %970, i64 %1003
  %1005 = getelementptr i8, ptr %971, i64 %1003
  %1006 = load <4 x i8>, ptr %1005, align 1, !tbaa !9
  store <4 x i8> %1006, ptr %1004, align 1, !tbaa !9
  %1007 = add nuw i64 %1003, 4
  %1008 = icmp eq i64 %1007, %1001
  br i1 %1008, label %1009, label %1002, !llvm.loop !99

1009:                                             ; preds = %1002
  %1010 = getelementptr i8, ptr %970, i64 %1001
  %1011 = getelementptr i8, ptr %971, i64 %1001
  %1012 = icmp eq i64 %975, %1001
  br i1 %1012, label %.loopexit155.i, label %.preheader359

.preheader359:                                    ; preds = %1009, %994, %969
  %.ph360 = phi ptr [ %1010, %1009 ], [ %995, %994 ], [ %970, %969 ]
  %.ph361 = phi ptr [ %1011, %1009 ], [ %996, %994 ], [ %971, %969 ]
  br label %1013

1013:                                             ; preds = %.preheader359, %1013
  %1014 = phi ptr [ %1018, %1013 ], [ %.ph360, %.preheader359 ]
  %1015 = phi ptr [ %1016, %1013 ], [ %.ph361, %.preheader359 ]
  %1016 = getelementptr inbounds nuw i8, ptr %1015, i64 1
  %1017 = load i8, ptr %1015, align 1, !tbaa !9
  %1018 = getelementptr inbounds nuw i8, ptr %1014, i64 1
  store i8 %1017, ptr %1014, align 1, !tbaa !9
  %1019 = icmp ult ptr %1018, %891
  br i1 %1019, label %1013, label %.loopexit155.i, !llvm.loop !100

.loopexit155.i:                                   ; preds = %1013, %938, %1009, %992, %934, %917
  %1020 = load i64, ptr %875, align 8, !tbaa !92
  %1021 = sub i64 %1020, %883
  store i64 %1021, ptr %875, align 8, !tbaa !92
  br label %1022

1022:                                             ; preds = %.loopexit155.i, %880
  %1023 = phi i64 [ %1021, %.loopexit155.i ], [ %876, %880 ]
  %1024 = phi ptr [ %891, %.loopexit155.i ], [ %651, %880 ]
  store ptr %387, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %95, align 8, !tbaa !35
  %1025 = getelementptr inbounds nuw i8, ptr %875, i64 8
  %1026 = load i64, ptr %1025, align 8
  %1027 = getelementptr inbounds nuw i8, ptr %875, i64 16
  %1028 = load i64, ptr %1027, align 8
  %1029 = sub i64 0, %1028
  %1030 = getelementptr i8, ptr %1024, i64 %1023
  %1031 = add i64 %1026, %1023
  %1032 = getelementptr i8, ptr %387, i64 %1023
  %1033 = getelementptr inbounds i8, ptr %1030, i64 %1029
  %1034 = icmp sgt i64 %1023, 65536
  %1035 = getelementptr inbounds nuw i8, ptr %1024, i64 %1031
  %1036 = icmp ugt ptr %1035, %384
  %1037 = select i1 %1034, i1 true, i1 %1036
  br i1 %1037, label %1041, label %1038, !prof !101

1038:                                             ; preds = %1022
  %1039 = load <2 x i64>, ptr %387, align 1, !tbaa !9
  store <2 x i64> %1039, ptr %1024, align 1, !tbaa !9
  %1040 = icmp ugt i64 %1023, 16
  br i1 %1040, label %1043, label %.loopexit154.i, !prof !52

1041:                                             ; preds = %1022
  %1042 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1024, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %875, ptr noundef nonnull %7, ptr noundef nonnull %388, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit151.i

1043:                                             ; preds = %1038
  %1044 = getelementptr inbounds nuw i8, ptr %1024, i64 16
  %1045 = add i64 %1023, -16
  %1046 = load <2 x i64>, ptr %389, align 1, !tbaa !9
  store <2 x i64> %1046, ptr %1044, align 1, !tbaa !9
  %1047 = icmp ult i64 %1045, 17
  br i1 %1047, label %.loopexit154.i, label %1048

1048:                                             ; preds = %1043
  %1049 = getelementptr inbounds nuw i8, ptr %1024, i64 32
  br label %1050

1050:                                             ; preds = %1050, %1048
  %1051 = phi ptr [ %1049, %1048 ], [ %1058, %1050 ]
  %1052 = phi ptr [ %389, %1048 ], [ %1056, %1050 ]
  %1053 = getelementptr inbounds nuw i8, ptr %1052, i64 16
  %1054 = load <2 x i64>, ptr %1053, align 1, !tbaa !9
  store <2 x i64> %1054, ptr %1051, align 1, !tbaa !9
  %1055 = getelementptr inbounds nuw i8, ptr %1051, i64 16
  %1056 = getelementptr inbounds nuw i8, ptr %1052, i64 32
  %1057 = load <2 x i64>, ptr %1056, align 1, !tbaa !9
  store <2 x i64> %1057, ptr %1055, align 1, !tbaa !9
  %1058 = getelementptr inbounds nuw i8, ptr %1051, i64 32
  %1059 = icmp ult ptr %1058, %1030
  br i1 %1059, label %1050, label %.loopexit154.i, !llvm.loop !97

.loopexit154.i:                                   ; preds = %1050, %1043, %1038
  store ptr %1032, ptr %7, align 8, !tbaa !38
  %1060 = ptrtoint ptr %1030 to i64
  %1061 = sub i64 %1060, %132
  %1062 = icmp ugt i64 %1028, %1061
  br i1 %1062, label %1063, label %1076

1063:                                             ; preds = %.loopexit154.i
  %1064 = sub i64 %1060, %385
  %1065 = icmp ugt i64 %1028, %1064
  br i1 %1065, label %.loopexit149.i, label %1066, !prof !52

1066:                                             ; preds = %1063
  %1067 = ptrtoint ptr %1033 to i64
  %1068 = sub i64 %1067, %132
  %1069 = getelementptr inbounds i8, ptr %114, i64 %1068
  %1070 = add i64 %1068, %1026
  %1071 = icmp sgt i64 %1070, 0
  br i1 %1071, label %1073, label %1072

1072:                                             ; preds = %1066
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1030, ptr align 1 %1069, i64 %1026, i1 false)
  br label %.loopexit151.i

1073:                                             ; preds = %1066
  %1074 = sub nsw i64 0, %1068
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1030, ptr align 1 %1069, i64 %1074, i1 false)
  %1075 = getelementptr inbounds nuw i8, ptr %1030, i64 %1074
  br label %1076

1076:                                             ; preds = %1073, %.loopexit154.i
  %1077 = phi i64 [ %1070, %1073 ], [ %1026, %.loopexit154.i ]
  %1078 = phi ptr [ %111, %1073 ], [ %1033, %.loopexit154.i ]
  %1079 = phi ptr [ %1075, %1073 ], [ %1030, %.loopexit154.i ]
  %1080 = icmp ugt i64 %1028, 15
  br i1 %1080, label %1081, label %1097, !prof !87

1081:                                             ; preds = %1076
  %1082 = getelementptr inbounds nuw i8, ptr %1079, i64 %1077
  %1083 = load <2 x i64>, ptr %1078, align 1, !tbaa !9
  store <2 x i64> %1083, ptr %1079, align 1, !tbaa !9
  %1084 = icmp ult i64 %1077, 17
  br i1 %1084, label %.loopexit151.i, label %1085

1085:                                             ; preds = %1081
  %1086 = getelementptr inbounds nuw i8, ptr %1079, i64 16
  br label %1087

1087:                                             ; preds = %1087, %1085
  %1088 = phi ptr [ %1086, %1085 ], [ %1095, %1087 ]
  %1089 = phi ptr [ %1078, %1085 ], [ %1093, %1087 ]
  %1090 = getelementptr inbounds nuw i8, ptr %1089, i64 16
  %1091 = load <2 x i64>, ptr %1090, align 1, !tbaa !9
  store <2 x i64> %1091, ptr %1088, align 1, !tbaa !9
  %1092 = getelementptr inbounds nuw i8, ptr %1088, i64 16
  %1093 = getelementptr inbounds nuw i8, ptr %1089, i64 32
  %1094 = load <2 x i64>, ptr %1093, align 1, !tbaa !9
  store <2 x i64> %1094, ptr %1092, align 1, !tbaa !9
  %1095 = getelementptr inbounds nuw i8, ptr %1088, i64 32
  %1096 = icmp ult ptr %1095, %1082
  br i1 %1096, label %1087, label %.loopexit151.i, !llvm.loop !97

1097:                                             ; preds = %1076
  %1098 = icmp samesign ult i64 %1028, 8
  br i1 %1098, label %1099, label %1121

1099:                                             ; preds = %1097
  %1100 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1028
  %1101 = load i32, ptr %1100, align 4, !tbaa !30
  %1102 = load i8, ptr %1078, align 1, !tbaa !9
  store i8 %1102, ptr %1079, align 1, !tbaa !9
  %1103 = getelementptr inbounds nuw i8, ptr %1078, i64 1
  %1104 = load i8, ptr %1103, align 1, !tbaa !9
  %1105 = getelementptr inbounds nuw i8, ptr %1079, i64 1
  store i8 %1104, ptr %1105, align 1, !tbaa !9
  %1106 = getelementptr inbounds nuw i8, ptr %1078, i64 2
  %1107 = load i8, ptr %1106, align 1, !tbaa !9
  %1108 = getelementptr inbounds nuw i8, ptr %1079, i64 2
  store i8 %1107, ptr %1108, align 1, !tbaa !9
  %1109 = getelementptr inbounds nuw i8, ptr %1078, i64 3
  %1110 = load i8, ptr %1109, align 1, !tbaa !9
  %1111 = getelementptr inbounds nuw i8, ptr %1079, i64 3
  store i8 %1110, ptr %1111, align 1, !tbaa !9
  %1112 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1028
  %1113 = load i32, ptr %1112, align 4, !tbaa !30
  %1114 = zext i32 %1113 to i64
  %1115 = getelementptr inbounds nuw i8, ptr %1078, i64 %1114
  %1116 = getelementptr inbounds nuw i8, ptr %1079, i64 4
  %1117 = load i32, ptr %1115, align 1
  store i32 %1117, ptr %1116, align 1
  %1118 = sext i32 %1101 to i64
  %1119 = sub nsw i64 0, %1118
  %1120 = getelementptr inbounds i8, ptr %1115, i64 %1119
  br label %1123

1121:                                             ; preds = %1097
  %1122 = load i64, ptr %1078, align 1
  store i64 %1122, ptr %1079, align 1
  br label %1123

1123:                                             ; preds = %1121, %1099
  %1124 = phi ptr [ %1120, %1099 ], [ %1078, %1121 ]
  %1125 = getelementptr inbounds nuw i8, ptr %1124, i64 8
  %1126 = getelementptr inbounds nuw i8, ptr %1079, i64 8
  %1127 = icmp ugt i64 %1077, 8
  br i1 %1127, label %1128, label %.loopexit151.i

1128:                                             ; preds = %1123
  %1129 = ptrtoint ptr %1126 to i64
  %1130 = ptrtoint ptr %1125 to i64
  %1131 = sub i64 %1129, %1130
  %1132 = getelementptr i8, ptr %1079, i64 %1077
  %1133 = icmp slt i64 %1131, 16
  br i1 %1133, label %1134, label %1175

1134:                                             ; preds = %1128
  %1135 = add i64 %1026, %132
  %1136 = tail call i64 @llvm.umin.i64(i64 %1028, i64 %1061)
  %1137 = tail call i64 @llvm.umax.i64(i64 %1028, i64 %1061)
  %1138 = sub i64 %1135, %1028
  %1139 = add i64 %1138, %1136
  %1140 = add i64 %1139, %1137
  %1141 = add i64 %1137, %391
  %1142 = tail call i64 @llvm.umax.i64(i64 %1140, i64 %1141)
  %1143 = add i64 %1137, %132
  %reass.sub66 = sub i64 %1142, %1143
  %1144 = add i64 %reass.sub66, -9
  %1145 = lshr i64 %1144, 3
  %1146 = add nuw nsw i64 %1145, 1
  %1147 = icmp ult i64 %1144, 24
  %1148 = icmp ult i64 %1131, 32
  %1149 = or i1 %1147, %1148
  br i1 %1149, label %.preheader351, label %1150

1150:                                             ; preds = %1134
  %1151 = and i64 %1146, 4611686018427387900
  br label %1152

1152:                                             ; preds = %1152, %1150
  %1153 = phi i64 [ 0, %1150 ], [ %1161, %1152 ]
  %1154 = shl i64 %1153, 3
  %1155 = getelementptr i8, ptr %1126, i64 %1154
  %1156 = getelementptr i8, ptr %1125, i64 %1154
  %1157 = getelementptr i8, ptr %1156, i64 16
  %1158 = load <2 x i64>, ptr %1156, align 1
  %1159 = load <2 x i64>, ptr %1157, align 1
  %1160 = getelementptr i8, ptr %1155, i64 16
  store <2 x i64> %1158, ptr %1155, align 1
  store <2 x i64> %1159, ptr %1160, align 1
  %1161 = add nuw i64 %1153, 4
  %1162 = icmp eq i64 %1161, %1151
  br i1 %1162, label %1163, label %1152, !llvm.loop !102

1163:                                             ; preds = %1152
  %1164 = shl i64 %1151, 3
  %1165 = getelementptr i8, ptr %1126, i64 %1164
  %1166 = getelementptr i8, ptr %1125, i64 %1164
  %1167 = icmp eq i64 %1146, %1151
  br i1 %1167, label %.loopexit151.i, label %.preheader351

.preheader351:                                    ; preds = %1163, %1134
  %.ph352 = phi ptr [ %1165, %1163 ], [ %1126, %1134 ]
  %.ph353 = phi ptr [ %1166, %1163 ], [ %1125, %1134 ]
  br label %1168

1168:                                             ; preds = %.preheader351, %1168
  %1169 = phi ptr [ %1172, %1168 ], [ %.ph352, %.preheader351 ]
  %1170 = phi ptr [ %1173, %1168 ], [ %.ph353, %.preheader351 ]
  %1171 = load i64, ptr %1170, align 1
  store i64 %1171, ptr %1169, align 1
  %1172 = getelementptr inbounds nuw i8, ptr %1169, i64 8
  %1173 = getelementptr inbounds nuw i8, ptr %1170, i64 8
  %1174 = icmp ult ptr %1172, %1132
  br i1 %1174, label %1168, label %.loopexit151.i, !llvm.loop !103

1175:                                             ; preds = %1128
  %1176 = load <2 x i64>, ptr %1125, align 1, !tbaa !9
  store <2 x i64> %1176, ptr %1126, align 1, !tbaa !9
  %1177 = icmp ult i64 %1077, 25
  br i1 %1177, label %.loopexit151.i, label %1178

1178:                                             ; preds = %1175
  %1179 = getelementptr inbounds nuw i8, ptr %1079, i64 24
  br label %1180

1180:                                             ; preds = %1180, %1178
  %1181 = phi ptr [ %1179, %1178 ], [ %1188, %1180 ]
  %1182 = phi ptr [ %1125, %1178 ], [ %1186, %1180 ]
  %1183 = getelementptr inbounds nuw i8, ptr %1182, i64 16
  %1184 = load <2 x i64>, ptr %1183, align 1, !tbaa !9
  store <2 x i64> %1184, ptr %1181, align 1, !tbaa !9
  %1185 = getelementptr inbounds nuw i8, ptr %1181, i64 16
  %1186 = getelementptr inbounds nuw i8, ptr %1182, i64 32
  %1187 = load <2 x i64>, ptr %1186, align 1, !tbaa !9
  store <2 x i64> %1187, ptr %1185, align 1, !tbaa !9
  %1188 = getelementptr inbounds nuw i8, ptr %1181, i64 32
  %1189 = icmp ult ptr %1188, %1132
  br i1 %1189, label %1180, label %.loopexit151.i, !llvm.loop !97

.loopexit151.i:                                   ; preds = %1180, %1168, %1087, %1175, %1163, %1123, %1081, %1072, %1041
  %1190 = phi i64 [ %1042, %1041 ], [ %1031, %1072 ], [ %1031, %1123 ], [ %1031, %1081 ], [ %1031, %1175 ], [ %1031, %1163 ], [ %1031, %1087 ], [ %1031, %1168 ], [ %1031, %1180 ]
  %1191 = icmp ult i64 %1190, -119
  br i1 %1191, label %1192, label %.loopexit149.i

1192:                                             ; preds = %.loopexit151.i
  %1193 = add i64 %798, %654
  %1194 = icmp ugt i64 %734, %1193
  %1195 = select i1 %1194, ptr %114, ptr %111
  %1196 = getelementptr inbounds i8, ptr %1195, i64 %1193
  %1197 = sub i64 0, %734
  %1198 = getelementptr inbounds i8, ptr %1196, i64 %1197
  tail call void @llvm.prefetch.p0(ptr %1198, i32 0, i32 3, i32 1)
  %1199 = getelementptr inbounds nuw i8, ptr %1198, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1199, i32 0, i32 3, i32 1)
  store i64 %798, ptr %875, align 8, !tbaa !45
  store i64 %749, ptr %1025, align 8, !tbaa !45
  store i64 %734, ptr %1027, align 8, !tbaa !45
  %1200 = getelementptr inbounds nuw i8, ptr %1024, i64 %1190
  br label %1554

1201:                                             ; preds = %871
  %1202 = getelementptr inbounds i8, ptr %877, i64 -32
  %1203 = getelementptr inbounds nuw i8, ptr %875, i64 8
  %1204 = load i64, ptr %1203, align 8
  %1205 = getelementptr inbounds nuw i8, ptr %875, i64 16
  %1206 = load i64, ptr %1205, align 8
  %1207 = sub i64 0, %1206
  %1208 = getelementptr i8, ptr %651, i64 %876
  %1209 = add i64 %1204, %876
  %1210 = getelementptr inbounds i8, ptr %1208, i64 %1207
  %1211 = icmp ugt ptr %877, %652
  %1212 = getelementptr inbounds nuw i8, ptr %651, i64 %1209
  %1213 = icmp ugt ptr %1212, %1202
  %1214 = select i1 %1211, i1 true, i1 %1213
  br i1 %1214, label %1218, label %1215, !prof !101

1215:                                             ; preds = %1201
  %1216 = load <2 x i64>, ptr %872, align 1, !tbaa !9
  store <2 x i64> %1216, ptr %651, align 1, !tbaa !9
  %1217 = icmp ugt i64 %876, 16
  br i1 %1217, label %1220, label %.loopexit161.i, !prof !52

1218:                                             ; preds = %1201
  %1219 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %651, ptr noundef %105, ptr noundef nonnull %1202, ptr noundef nonnull byval(%struct.seq_t) align 8 %875, ptr noundef nonnull %7, ptr noundef %652, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit158.i

1220:                                             ; preds = %1215
  %1221 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %1222 = getelementptr inbounds nuw i8, ptr %872, i64 16
  %1223 = load <2 x i64>, ptr %1222, align 1, !tbaa !9
  store <2 x i64> %1223, ptr %1221, align 1, !tbaa !9
  %1224 = icmp ult i64 %876, 33
  br i1 %1224, label %.loopexit161.i, label %1225

1225:                                             ; preds = %1220
  %1226 = getelementptr inbounds nuw i8, ptr %651, i64 32
  br label %1227

1227:                                             ; preds = %1227, %1225
  %1228 = phi ptr [ %1226, %1225 ], [ %1235, %1227 ]
  %1229 = phi ptr [ %1222, %1225 ], [ %1233, %1227 ]
  %1230 = getelementptr inbounds nuw i8, ptr %1229, i64 16
  %1231 = load <2 x i64>, ptr %1230, align 1, !tbaa !9
  store <2 x i64> %1231, ptr %1228, align 1, !tbaa !9
  %1232 = getelementptr inbounds nuw i8, ptr %1228, i64 16
  %1233 = getelementptr inbounds nuw i8, ptr %1229, i64 32
  %1234 = load <2 x i64>, ptr %1233, align 1, !tbaa !9
  store <2 x i64> %1234, ptr %1232, align 1, !tbaa !9
  %1235 = getelementptr inbounds nuw i8, ptr %1228, i64 32
  %1236 = icmp ult ptr %1235, %1208
  br i1 %1236, label %1227, label %.loopexit161.i, !llvm.loop !97

.loopexit161.i:                                   ; preds = %1227, %1220, %1215
  store ptr %877, ptr %7, align 8, !tbaa !38
  %1237 = ptrtoint ptr %1208 to i64
  %1238 = sub i64 %1237, %132
  %1239 = icmp ugt i64 %1206, %1238
  br i1 %1239, label %1240, label %1253

1240:                                             ; preds = %.loopexit161.i
  %1241 = sub i64 %1237, %385
  %1242 = icmp ugt i64 %1206, %1241
  br i1 %1242, label %.loopexit149.i, label %1243, !prof !52

1243:                                             ; preds = %1240
  %1244 = ptrtoint ptr %1210 to i64
  %1245 = sub i64 %1244, %132
  %1246 = getelementptr inbounds i8, ptr %114, i64 %1245
  %1247 = add i64 %1245, %1204
  %1248 = icmp sgt i64 %1247, 0
  br i1 %1248, label %1250, label %1249

1249:                                             ; preds = %1243
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1208, ptr align 1 %1246, i64 %1204, i1 false)
  br label %.loopexit158.i

1250:                                             ; preds = %1243
  %1251 = sub nsw i64 0, %1245
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1208, ptr align 1 %1246, i64 %1251, i1 false)
  %1252 = getelementptr inbounds nuw i8, ptr %1208, i64 %1251
  br label %1253

1253:                                             ; preds = %1250, %.loopexit161.i
  %1254 = phi i64 [ %1247, %1250 ], [ %1204, %.loopexit161.i ]
  %1255 = phi ptr [ %111, %1250 ], [ %1210, %.loopexit161.i ]
  %1256 = phi ptr [ %1252, %1250 ], [ %1208, %.loopexit161.i ]
  %1257 = icmp ugt i64 %1206, 15
  br i1 %1257, label %1258, label %1274, !prof !87

1258:                                             ; preds = %1253
  %1259 = getelementptr inbounds nuw i8, ptr %1256, i64 %1254
  %1260 = load <2 x i64>, ptr %1255, align 1, !tbaa !9
  store <2 x i64> %1260, ptr %1256, align 1, !tbaa !9
  %1261 = icmp ult i64 %1254, 17
  br i1 %1261, label %.loopexit158.i, label %1262

1262:                                             ; preds = %1258
  %1263 = getelementptr inbounds nuw i8, ptr %1256, i64 16
  br label %1264

1264:                                             ; preds = %1264, %1262
  %1265 = phi ptr [ %1263, %1262 ], [ %1272, %1264 ]
  %1266 = phi ptr [ %1255, %1262 ], [ %1270, %1264 ]
  %1267 = getelementptr inbounds nuw i8, ptr %1266, i64 16
  %1268 = load <2 x i64>, ptr %1267, align 1, !tbaa !9
  store <2 x i64> %1268, ptr %1265, align 1, !tbaa !9
  %1269 = getelementptr inbounds nuw i8, ptr %1265, i64 16
  %1270 = getelementptr inbounds nuw i8, ptr %1266, i64 32
  %1271 = load <2 x i64>, ptr %1270, align 1, !tbaa !9
  store <2 x i64> %1271, ptr %1269, align 1, !tbaa !9
  %1272 = getelementptr inbounds nuw i8, ptr %1265, i64 32
  %1273 = icmp ult ptr %1272, %1259
  br i1 %1273, label %1264, label %.loopexit158.i, !llvm.loop !97

1274:                                             ; preds = %1253
  %1275 = icmp samesign ult i64 %1206, 8
  br i1 %1275, label %1276, label %1298

1276:                                             ; preds = %1274
  %1277 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1206
  %1278 = load i32, ptr %1277, align 4, !tbaa !30
  %1279 = load i8, ptr %1255, align 1, !tbaa !9
  store i8 %1279, ptr %1256, align 1, !tbaa !9
  %1280 = getelementptr inbounds nuw i8, ptr %1255, i64 1
  %1281 = load i8, ptr %1280, align 1, !tbaa !9
  %1282 = getelementptr inbounds nuw i8, ptr %1256, i64 1
  store i8 %1281, ptr %1282, align 1, !tbaa !9
  %1283 = getelementptr inbounds nuw i8, ptr %1255, i64 2
  %1284 = load i8, ptr %1283, align 1, !tbaa !9
  %1285 = getelementptr inbounds nuw i8, ptr %1256, i64 2
  store i8 %1284, ptr %1285, align 1, !tbaa !9
  %1286 = getelementptr inbounds nuw i8, ptr %1255, i64 3
  %1287 = load i8, ptr %1286, align 1, !tbaa !9
  %1288 = getelementptr inbounds nuw i8, ptr %1256, i64 3
  store i8 %1287, ptr %1288, align 1, !tbaa !9
  %1289 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1206
  %1290 = load i32, ptr %1289, align 4, !tbaa !30
  %1291 = zext i32 %1290 to i64
  %1292 = getelementptr inbounds nuw i8, ptr %1255, i64 %1291
  %1293 = getelementptr inbounds nuw i8, ptr %1256, i64 4
  %1294 = load i32, ptr %1292, align 1
  store i32 %1294, ptr %1293, align 1
  %1295 = sext i32 %1278 to i64
  %1296 = sub nsw i64 0, %1295
  %1297 = getelementptr inbounds i8, ptr %1292, i64 %1296
  br label %1300

1298:                                             ; preds = %1274
  %1299 = load i64, ptr %1255, align 1
  store i64 %1299, ptr %1256, align 1
  br label %1300

1300:                                             ; preds = %1298, %1276
  %1301 = phi ptr [ %1297, %1276 ], [ %1255, %1298 ]
  %1302 = getelementptr inbounds nuw i8, ptr %1301, i64 8
  %1303 = getelementptr inbounds nuw i8, ptr %1256, i64 8
  %1304 = icmp ugt i64 %1254, 8
  br i1 %1304, label %1305, label %.loopexit158.i

1305:                                             ; preds = %1300
  %1306 = ptrtoint ptr %1303 to i64
  %1307 = ptrtoint ptr %1302 to i64
  %1308 = sub i64 %1306, %1307
  %1309 = getelementptr i8, ptr %1256, i64 %1254
  %1310 = icmp slt i64 %1308, 16
  br i1 %1310, label %1311, label %1352

1311:                                             ; preds = %1305
  %1312 = add i64 %1204, %132
  %1313 = tail call i64 @llvm.umin.i64(i64 %1206, i64 %1238)
  %1314 = tail call i64 @llvm.umax.i64(i64 %1206, i64 %1238)
  %1315 = sub i64 %1312, %1206
  %1316 = add i64 %1315, %1313
  %1317 = add i64 %1316, %1314
  %1318 = add i64 %1314, %391
  %1319 = tail call i64 @llvm.umax.i64(i64 %1317, i64 %1318)
  %1320 = add i64 %1314, %132
  %reass.sub65 = sub i64 %1319, %1320
  %1321 = add i64 %reass.sub65, -9
  %1322 = lshr i64 %1321, 3
  %1323 = add nuw nsw i64 %1322, 1
  %1324 = icmp ult i64 %1321, 24
  %1325 = icmp ult i64 %1308, 32
  %1326 = or i1 %1324, %1325
  br i1 %1326, label %.preheader363, label %1327

1327:                                             ; preds = %1311
  %1328 = and i64 %1323, 4611686018427387900
  br label %1329

1329:                                             ; preds = %1329, %1327
  %1330 = phi i64 [ 0, %1327 ], [ %1338, %1329 ]
  %1331 = shl i64 %1330, 3
  %1332 = getelementptr i8, ptr %1303, i64 %1331
  %1333 = getelementptr i8, ptr %1302, i64 %1331
  %1334 = getelementptr i8, ptr %1333, i64 16
  %1335 = load <2 x i64>, ptr %1333, align 1
  %1336 = load <2 x i64>, ptr %1334, align 1
  %1337 = getelementptr i8, ptr %1332, i64 16
  store <2 x i64> %1335, ptr %1332, align 1
  store <2 x i64> %1336, ptr %1337, align 1
  %1338 = add nuw i64 %1330, 4
  %1339 = icmp eq i64 %1338, %1328
  br i1 %1339, label %1340, label %1329, !llvm.loop !104

1340:                                             ; preds = %1329
  %1341 = shl i64 %1328, 3
  %1342 = getelementptr i8, ptr %1303, i64 %1341
  %1343 = getelementptr i8, ptr %1302, i64 %1341
  %1344 = icmp eq i64 %1323, %1328
  br i1 %1344, label %.loopexit158.i, label %.preheader363

.preheader363:                                    ; preds = %1340, %1311
  %.ph364 = phi ptr [ %1342, %1340 ], [ %1303, %1311 ]
  %.ph365 = phi ptr [ %1343, %1340 ], [ %1302, %1311 ]
  br label %1345

1345:                                             ; preds = %.preheader363, %1345
  %1346 = phi ptr [ %1349, %1345 ], [ %.ph364, %.preheader363 ]
  %1347 = phi ptr [ %1350, %1345 ], [ %.ph365, %.preheader363 ]
  %1348 = load i64, ptr %1347, align 1
  store i64 %1348, ptr %1346, align 1
  %1349 = getelementptr inbounds nuw i8, ptr %1346, i64 8
  %1350 = getelementptr inbounds nuw i8, ptr %1347, i64 8
  %1351 = icmp ult ptr %1349, %1309
  br i1 %1351, label %1345, label %.loopexit158.i, !llvm.loop !105

1352:                                             ; preds = %1305
  %1353 = load <2 x i64>, ptr %1302, align 1, !tbaa !9
  store <2 x i64> %1353, ptr %1303, align 1, !tbaa !9
  %1354 = icmp ult i64 %1254, 25
  br i1 %1354, label %.loopexit158.i, label %1355

1355:                                             ; preds = %1352
  %1356 = getelementptr inbounds nuw i8, ptr %1256, i64 24
  br label %1357

1357:                                             ; preds = %1357, %1355
  %1358 = phi ptr [ %1356, %1355 ], [ %1365, %1357 ]
  %1359 = phi ptr [ %1302, %1355 ], [ %1363, %1357 ]
  %1360 = getelementptr inbounds nuw i8, ptr %1359, i64 16
  %1361 = load <2 x i64>, ptr %1360, align 1, !tbaa !9
  store <2 x i64> %1361, ptr %1358, align 1, !tbaa !9
  %1362 = getelementptr inbounds nuw i8, ptr %1358, i64 16
  %1363 = getelementptr inbounds nuw i8, ptr %1359, i64 32
  %1364 = load <2 x i64>, ptr %1363, align 1, !tbaa !9
  store <2 x i64> %1364, ptr %1362, align 1, !tbaa !9
  %1365 = getelementptr inbounds nuw i8, ptr %1358, i64 32
  %1366 = icmp ult ptr %1365, %1309
  br i1 %1366, label %1357, label %.loopexit158.i, !llvm.loop !97

1367:                                             ; preds = %862
  %1368 = and i32 %653, 7
  %1369 = zext nneg i32 %1368 to i64
  %1370 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1369
  %1371 = load i64, ptr %1370, align 8
  %1372 = getelementptr inbounds nuw i8, ptr %1370, i64 8
  %1373 = load i64, ptr %1372, align 8
  %1374 = getelementptr inbounds nuw i8, ptr %1370, i64 16
  %1375 = load i64, ptr %1374, align 8
  %1376 = sub i64 0, %1375
  %1377 = getelementptr i8, ptr %651, i64 %1371
  %1378 = add i64 %1373, %1371
  %1379 = load ptr, ptr %7, align 8, !tbaa !38
  %1380 = getelementptr inbounds nuw i8, ptr %1379, i64 %1371
  %1381 = getelementptr inbounds i8, ptr %1377, i64 %1376
  %1382 = icmp ugt ptr %1380, %652
  %1383 = getelementptr inbounds nuw i8, ptr %651, i64 %1378
  %1384 = icmp ugt ptr %1383, %384
  %1385 = select i1 %1382, i1 true, i1 %1384
  br i1 %1385, label %1389, label %1386, !prof !101

1386:                                             ; preds = %1367
  %1387 = load <2 x i64>, ptr %1379, align 1, !tbaa !9
  store <2 x i64> %1387, ptr %651, align 1, !tbaa !9
  %1388 = icmp ugt i64 %1371, 16
  br i1 %1388, label %1391, label %.loopexit165.i, !prof !52

1389:                                             ; preds = %1367
  %1390 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %651, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %1370, ptr noundef nonnull %7, ptr noundef %652, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit158.i

1391:                                             ; preds = %1386
  %1392 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %1393 = getelementptr inbounds nuw i8, ptr %1379, i64 16
  %1394 = load <2 x i64>, ptr %1393, align 1, !tbaa !9
  store <2 x i64> %1394, ptr %1392, align 1, !tbaa !9
  %1395 = icmp ult i64 %1371, 33
  br i1 %1395, label %.loopexit165.i, label %1396

1396:                                             ; preds = %1391
  %1397 = getelementptr inbounds nuw i8, ptr %651, i64 32
  br label %1398

1398:                                             ; preds = %1398, %1396
  %1399 = phi ptr [ %1397, %1396 ], [ %1406, %1398 ]
  %1400 = phi ptr [ %1393, %1396 ], [ %1404, %1398 ]
  %1401 = getelementptr inbounds nuw i8, ptr %1400, i64 16
  %1402 = load <2 x i64>, ptr %1401, align 1, !tbaa !9
  store <2 x i64> %1402, ptr %1399, align 1, !tbaa !9
  %1403 = getelementptr inbounds nuw i8, ptr %1399, i64 16
  %1404 = getelementptr inbounds nuw i8, ptr %1400, i64 32
  %1405 = load <2 x i64>, ptr %1404, align 1, !tbaa !9
  store <2 x i64> %1405, ptr %1403, align 1, !tbaa !9
  %1406 = getelementptr inbounds nuw i8, ptr %1399, i64 32
  %1407 = icmp ult ptr %1406, %1377
  br i1 %1407, label %1398, label %.loopexit165.i, !llvm.loop !97

.loopexit165.i:                                   ; preds = %1398, %1391, %1386
  store ptr %1380, ptr %7, align 8, !tbaa !38
  %1408 = ptrtoint ptr %1377 to i64
  %1409 = sub i64 %1408, %132
  %1410 = icmp ugt i64 %1375, %1409
  br i1 %1410, label %1411, label %1424

1411:                                             ; preds = %.loopexit165.i
  %1412 = sub i64 %1408, %385
  %1413 = icmp ugt i64 %1375, %1412
  br i1 %1413, label %.loopexit149.i, label %1414, !prof !52

1414:                                             ; preds = %1411
  %1415 = ptrtoint ptr %1381 to i64
  %1416 = sub i64 %1415, %132
  %1417 = getelementptr inbounds i8, ptr %114, i64 %1416
  %1418 = add i64 %1416, %1373
  %1419 = icmp sgt i64 %1418, 0
  br i1 %1419, label %1421, label %1420

1420:                                             ; preds = %1414
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1377, ptr align 1 %1417, i64 %1373, i1 false)
  br label %.loopexit158.i

1421:                                             ; preds = %1414
  %1422 = sub nsw i64 0, %1416
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1377, ptr align 1 %1417, i64 %1422, i1 false)
  %1423 = getelementptr inbounds nuw i8, ptr %1377, i64 %1422
  br label %1424

1424:                                             ; preds = %1421, %.loopexit165.i
  %1425 = phi i64 [ %1418, %1421 ], [ %1373, %.loopexit165.i ]
  %1426 = phi ptr [ %111, %1421 ], [ %1381, %.loopexit165.i ]
  %1427 = phi ptr [ %1423, %1421 ], [ %1377, %.loopexit165.i ]
  %1428 = icmp ugt i64 %1375, 15
  br i1 %1428, label %1429, label %1445, !prof !87

1429:                                             ; preds = %1424
  %1430 = getelementptr inbounds nuw i8, ptr %1427, i64 %1425
  %1431 = load <2 x i64>, ptr %1426, align 1, !tbaa !9
  store <2 x i64> %1431, ptr %1427, align 1, !tbaa !9
  %1432 = icmp ult i64 %1425, 17
  br i1 %1432, label %.loopexit158.i, label %1433

1433:                                             ; preds = %1429
  %1434 = getelementptr inbounds nuw i8, ptr %1427, i64 16
  br label %1435

1435:                                             ; preds = %1435, %1433
  %1436 = phi ptr [ %1434, %1433 ], [ %1443, %1435 ]
  %1437 = phi ptr [ %1426, %1433 ], [ %1441, %1435 ]
  %1438 = getelementptr inbounds nuw i8, ptr %1437, i64 16
  %1439 = load <2 x i64>, ptr %1438, align 1, !tbaa !9
  store <2 x i64> %1439, ptr %1436, align 1, !tbaa !9
  %1440 = getelementptr inbounds nuw i8, ptr %1436, i64 16
  %1441 = getelementptr inbounds nuw i8, ptr %1437, i64 32
  %1442 = load <2 x i64>, ptr %1441, align 1, !tbaa !9
  store <2 x i64> %1442, ptr %1440, align 1, !tbaa !9
  %1443 = getelementptr inbounds nuw i8, ptr %1436, i64 32
  %1444 = icmp ult ptr %1443, %1430
  br i1 %1444, label %1435, label %.loopexit158.i, !llvm.loop !97

1445:                                             ; preds = %1424
  %1446 = icmp samesign ult i64 %1375, 8
  br i1 %1446, label %1447, label %1469

1447:                                             ; preds = %1445
  %1448 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1375
  %1449 = load i32, ptr %1448, align 4, !tbaa !30
  %1450 = load i8, ptr %1426, align 1, !tbaa !9
  store i8 %1450, ptr %1427, align 1, !tbaa !9
  %1451 = getelementptr inbounds nuw i8, ptr %1426, i64 1
  %1452 = load i8, ptr %1451, align 1, !tbaa !9
  %1453 = getelementptr inbounds nuw i8, ptr %1427, i64 1
  store i8 %1452, ptr %1453, align 1, !tbaa !9
  %1454 = getelementptr inbounds nuw i8, ptr %1426, i64 2
  %1455 = load i8, ptr %1454, align 1, !tbaa !9
  %1456 = getelementptr inbounds nuw i8, ptr %1427, i64 2
  store i8 %1455, ptr %1456, align 1, !tbaa !9
  %1457 = getelementptr inbounds nuw i8, ptr %1426, i64 3
  %1458 = load i8, ptr %1457, align 1, !tbaa !9
  %1459 = getelementptr inbounds nuw i8, ptr %1427, i64 3
  store i8 %1458, ptr %1459, align 1, !tbaa !9
  %1460 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1375
  %1461 = load i32, ptr %1460, align 4, !tbaa !30
  %1462 = zext i32 %1461 to i64
  %1463 = getelementptr inbounds nuw i8, ptr %1426, i64 %1462
  %1464 = getelementptr inbounds nuw i8, ptr %1427, i64 4
  %1465 = load i32, ptr %1463, align 1
  store i32 %1465, ptr %1464, align 1
  %1466 = sext i32 %1449 to i64
  %1467 = sub nsw i64 0, %1466
  %1468 = getelementptr inbounds i8, ptr %1463, i64 %1467
  br label %1471

1469:                                             ; preds = %1445
  %1470 = load i64, ptr %1426, align 1
  store i64 %1470, ptr %1427, align 1
  br label %1471

1471:                                             ; preds = %1469, %1447
  %1472 = phi ptr [ %1468, %1447 ], [ %1426, %1469 ]
  %1473 = getelementptr inbounds nuw i8, ptr %1472, i64 8
  %1474 = getelementptr inbounds nuw i8, ptr %1427, i64 8
  %1475 = icmp ugt i64 %1425, 8
  br i1 %1475, label %1476, label %.loopexit158.i

1476:                                             ; preds = %1471
  %1477 = ptrtoint ptr %1474 to i64
  %1478 = ptrtoint ptr %1473 to i64
  %1479 = sub i64 %1477, %1478
  %1480 = getelementptr i8, ptr %1427, i64 %1425
  %1481 = icmp slt i64 %1479, 16
  br i1 %1481, label %1482, label %1523

1482:                                             ; preds = %1476
  %1483 = add i64 %1373, %132
  %1484 = tail call i64 @llvm.umin.i64(i64 %1375, i64 %1409)
  %1485 = tail call i64 @llvm.umax.i64(i64 %1375, i64 %1409)
  %1486 = sub i64 %1483, %1375
  %1487 = add i64 %1486, %1484
  %1488 = add i64 %1487, %1485
  %1489 = add i64 %1485, %391
  %1490 = tail call i64 @llvm.umax.i64(i64 %1488, i64 %1489)
  %1491 = add i64 %1485, %132
  %reass.sub64 = sub i64 %1490, %1491
  %1492 = add i64 %reass.sub64, -9
  %1493 = lshr i64 %1492, 3
  %1494 = add nuw nsw i64 %1493, 1
  %1495 = icmp ult i64 %1492, 24
  %1496 = icmp ult i64 %1479, 32
  %1497 = or i1 %1495, %1496
  br i1 %1497, label %.preheader369, label %1498

1498:                                             ; preds = %1482
  %1499 = and i64 %1494, 4611686018427387900
  br label %1500

1500:                                             ; preds = %1500, %1498
  %1501 = phi i64 [ 0, %1498 ], [ %1509, %1500 ]
  %1502 = shl i64 %1501, 3
  %1503 = getelementptr i8, ptr %1474, i64 %1502
  %1504 = getelementptr i8, ptr %1473, i64 %1502
  %1505 = getelementptr i8, ptr %1504, i64 16
  %1506 = load <2 x i64>, ptr %1504, align 1
  %1507 = load <2 x i64>, ptr %1505, align 1
  %1508 = getelementptr i8, ptr %1503, i64 16
  store <2 x i64> %1506, ptr %1503, align 1
  store <2 x i64> %1507, ptr %1508, align 1
  %1509 = add nuw i64 %1501, 4
  %1510 = icmp eq i64 %1509, %1499
  br i1 %1510, label %1511, label %1500, !llvm.loop !106

1511:                                             ; preds = %1500
  %1512 = shl i64 %1499, 3
  %1513 = getelementptr i8, ptr %1474, i64 %1512
  %1514 = getelementptr i8, ptr %1473, i64 %1512
  %1515 = icmp eq i64 %1494, %1499
  br i1 %1515, label %.loopexit158.i, label %.preheader369

.preheader369:                                    ; preds = %1511, %1482
  %.ph370 = phi ptr [ %1513, %1511 ], [ %1474, %1482 ]
  %.ph371 = phi ptr [ %1514, %1511 ], [ %1473, %1482 ]
  br label %1516

1516:                                             ; preds = %.preheader369, %1516
  %1517 = phi ptr [ %1520, %1516 ], [ %.ph370, %.preheader369 ]
  %1518 = phi ptr [ %1521, %1516 ], [ %.ph371, %.preheader369 ]
  %1519 = load i64, ptr %1518, align 1
  store i64 %1519, ptr %1517, align 1
  %1520 = getelementptr inbounds nuw i8, ptr %1517, i64 8
  %1521 = getelementptr inbounds nuw i8, ptr %1518, i64 8
  %1522 = icmp ult ptr %1520, %1480
  br i1 %1522, label %1516, label %.loopexit158.i, !llvm.loop !107

1523:                                             ; preds = %1476
  %1524 = load <2 x i64>, ptr %1473, align 1, !tbaa !9
  store <2 x i64> %1524, ptr %1474, align 1, !tbaa !9
  %1525 = icmp ult i64 %1425, 25
  br i1 %1525, label %.loopexit158.i, label %1526

1526:                                             ; preds = %1523
  %1527 = getelementptr inbounds nuw i8, ptr %1427, i64 24
  br label %1528

1528:                                             ; preds = %1528, %1526
  %1529 = phi ptr [ %1527, %1526 ], [ %1536, %1528 ]
  %1530 = phi ptr [ %1473, %1526 ], [ %1534, %1528 ]
  %1531 = getelementptr inbounds nuw i8, ptr %1530, i64 16
  %1532 = load <2 x i64>, ptr %1531, align 1, !tbaa !9
  store <2 x i64> %1532, ptr %1529, align 1, !tbaa !9
  %1533 = getelementptr inbounds nuw i8, ptr %1529, i64 16
  %1534 = getelementptr inbounds nuw i8, ptr %1530, i64 32
  %1535 = load <2 x i64>, ptr %1534, align 1, !tbaa !9
  store <2 x i64> %1535, ptr %1533, align 1, !tbaa !9
  %1536 = getelementptr inbounds nuw i8, ptr %1529, i64 32
  %1537 = icmp ult ptr %1536, %1480
  br i1 %1537, label %1528, label %.loopexit158.i, !llvm.loop !97

.loopexit158.i:                                   ; preds = %1528, %1516, %1435, %1357, %1345, %1264, %1523, %1511, %1471, %1429, %1420, %1389, %1352, %1340, %1300, %1258, %1249, %1218
  %1538 = phi i64 [ %1219, %1218 ], [ %1209, %1249 ], [ %1209, %1300 ], [ %1209, %1258 ], [ %1209, %1352 ], [ %1390, %1389 ], [ %1378, %1420 ], [ %1378, %1471 ], [ %1378, %1429 ], [ %1378, %1523 ], [ %1209, %1340 ], [ %1378, %1511 ], [ %1378, %1516 ], [ %1209, %1264 ], [ %1209, %1345 ], [ %1209, %1357 ], [ %1378, %1435 ], [ %1378, %1528 ]
  %1539 = icmp ult i64 %1538, -119
  br i1 %1539, label %1540, label %.loopexit149.i

1540:                                             ; preds = %.loopexit158.i
  %1541 = add i64 %798, %654
  %1542 = icmp ugt i64 %734, %1541
  %1543 = select i1 %1542, ptr %114, ptr %111
  %1544 = getelementptr inbounds i8, ptr %1543, i64 %1541
  %1545 = sub i64 0, %734
  %1546 = getelementptr inbounds i8, ptr %1544, i64 %1545
  tail call void @llvm.prefetch.p0(ptr %1546, i32 0, i32 3, i32 1)
  %1547 = getelementptr inbounds nuw i8, ptr %1546, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1547, i32 0, i32 3, i32 1)
  %1548 = and i32 %653, 7
  %1549 = zext nneg i32 %1548 to i64
  %1550 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1549
  store i64 %798, ptr %1550, align 8, !tbaa !45
  %1551 = getelementptr inbounds nuw i8, ptr %1550, i64 8
  store i64 %749, ptr %1551, align 8, !tbaa !45
  %1552 = getelementptr inbounds nuw i8, ptr %1550, i64 16
  store i64 %734, ptr %1552, align 8, !tbaa !45
  %1553 = getelementptr inbounds nuw i8, ptr %651, i64 %1538
  br label %1554

1554:                                             ; preds = %1540, %1192
  %1555 = phi i64 [ %1541, %1540 ], [ %1193, %1192 ]
  %1556 = phi ptr [ %652, %1540 ], [ %388, %1192 ]
  %1557 = phi ptr [ %1553, %1540 ], [ %1200, %1192 ]
  %1558 = add i64 %1555, %749
  %1559 = add nuw i32 %653, 1
  %1560 = icmp eq i32 %1559, %51
  br i1 %1560, label %.loopexit168.i, label %641, !llvm.loop !108

.loopexit168.i:                                   ; preds = %1554, %.loopexit169.i
  %1561 = phi i32 [ %371, %.loopexit169.i ], [ %864, %1554 ]
  %1562 = phi ptr [ %372, %.loopexit169.i ], [ %863, %1554 ]
  %1563 = phi i64 [ %373, %.loopexit169.i ], [ %735, %1554 ]
  %1564 = phi i64 [ %374, %.loopexit169.i ], [ %733, %1554 ]
  %1565 = phi i64 [ %375, %.loopexit169.i ], [ %734, %1554 ]
  %1566 = phi i32 [ %380, %.loopexit169.i ], [ %51, %1554 ]
  %1567 = phi ptr [ %109, %.loopexit169.i ], [ %1556, %1554 ]
  %1568 = phi ptr [ %1, %.loopexit169.i ], [ %1557, %1554 ]
  %1569 = icmp eq ptr %1562, %46
  %1570 = icmp eq i32 %1561, 64
  %1571 = select i1 %1569, i1 %1570, i1 false
  br i1 %1571, label %1572, label %.loopexit149.i

1572:                                             ; preds = %.loopexit168.i
  %1573 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1566, i32 %130), !nosanitize !86
  %1574 = extractvalue { i32, i1 } %1573, 1, !nosanitize !86
  br i1 %1574, label %443, label %1575, !prof !109, !nosanitize !86

1575:                                             ; preds = %1572
  %1576 = extractvalue { i32, i1 } %1573, 0
  %1577 = icmp slt i32 %1576, %51
  br i1 %1577, label %1578, label %.loopexit150.i

1578:                                             ; preds = %1575
  %1579 = getelementptr inbounds i8, ptr %105, i64 -32
  %1580 = ptrtoint ptr %112 to i64
  %1581 = ptrtoint ptr %105 to i64
  %1582 = getelementptr i8, ptr %0, i64 30372
  %1583 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %1584 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %1585 = add i64 %132, 16
  br label %1593

.loopexit150.i:                                   ; preds = %2258, %1575
  %1586 = phi ptr [ %1567, %1575 ], [ %2259, %2258 ]
  %1587 = phi ptr [ %1568, %1575 ], [ %2260, %2258 ]
  %1588 = trunc i64 %1565 to i32
  store i32 %1588, ptr %118, align 4, !tbaa !30
  %1589 = trunc i64 %1564 to i32
  store i32 %1589, ptr %122, align 4, !tbaa !30
  %1590 = trunc i64 %1563 to i32
  store i32 %1590, ptr %126, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1591 = load i32, ptr %95, align 8, !tbaa !35
  %1592 = load ptr, ptr %7, align 8, !tbaa !38
  br label %2264

1593:                                             ; preds = %2258, %1578
  %1594 = phi i32 [ %1576, %1578 ], [ %2261, %2258 ]
  %1595 = phi ptr [ %1568, %1578 ], [ %2260, %2258 ]
  %1596 = phi ptr [ %1567, %1578 ], [ %2259, %2258 ]
  %1597 = and i32 %1594, 7
  %1598 = zext nneg i32 %1597 to i64
  %1599 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1598
  %1600 = load i32, ptr %95, align 8, !tbaa !35
  %1601 = icmp eq i32 %1600, 2
  br i1 %1601, label %1602, label %2087

1602:                                             ; preds = %1593
  %1603 = load ptr, ptr %7, align 8, !tbaa !38
  %1604 = load i64, ptr %1599, align 8, !tbaa !92
  %1605 = getelementptr inbounds nuw i8, ptr %1603, i64 %1604
  %1606 = load ptr, ptr %108, align 8, !tbaa !34
  %1607 = icmp ugt ptr %1605, %1606
  br i1 %1607, label %1608, label %1921

1608:                                             ; preds = %1602
  %1609 = ptrtoint ptr %1606 to i64
  %1610 = ptrtoint ptr %1603 to i64
  %1611 = sub i64 %1609, %1610
  %1612 = icmp eq ptr %1606, %1603
  br i1 %1612, label %1750, label %1613

1613:                                             ; preds = %1608
  %1614 = ptrtoint ptr %1595 to i64
  %1615 = sub i64 %1581, %1614
  %1616 = icmp ugt i64 %1611, %1615
  br i1 %1616, label %.loopexit149.i, label %1617

1617:                                             ; preds = %1613
  %1618 = sub i64 %1614, %1610
  %1619 = getelementptr inbounds nuw i8, ptr %1595, i64 %1611
  %1620 = icmp ult i64 %1611, 8
  %1621 = icmp sgt i64 %1618, -8
  %1622 = or i1 %1621, %1620
  br i1 %1622, label %1623, label %1673

1623:                                             ; preds = %1617
  %1624 = add i64 %1618, %1609
  %1625 = add i64 %1614, 1
  %1626 = tail call i64 @llvm.umax.i64(i64 %1624, i64 %1625)
  %1627 = sub i64 %1626, %1614
  %1628 = icmp ult i64 %1627, 4
  %1629 = icmp ult i64 %1618, 32
  %1630 = or i1 %1629, %1628
  br i1 %1630, label %.preheader331, label %1631

1631:                                             ; preds = %1623
  %1632 = icmp ult i64 %1627, 32
  br i1 %1632, label %1652, label %1633

1633:                                             ; preds = %1631
  %1634 = and i64 %1627, -32
  br label %1635

1635:                                             ; preds = %1635, %1633
  %1636 = phi i64 [ 0, %1633 ], [ %1643, %1635 ]
  %1637 = getelementptr i8, ptr %1595, i64 %1636
  %1638 = getelementptr i8, ptr %1603, i64 %1636
  %1639 = getelementptr i8, ptr %1638, i64 16
  %1640 = load <16 x i8>, ptr %1638, align 1, !tbaa !9
  %1641 = load <16 x i8>, ptr %1639, align 1, !tbaa !9
  %1642 = getelementptr i8, ptr %1637, i64 16
  store <16 x i8> %1640, ptr %1637, align 1, !tbaa !9
  store <16 x i8> %1641, ptr %1642, align 1, !tbaa !9
  %1643 = add nuw i64 %1636, 32
  %1644 = icmp eq i64 %1643, %1634
  br i1 %1644, label %1645, label %1635, !llvm.loop !110

1645:                                             ; preds = %1635
  %1646 = icmp eq i64 %1627, %1634
  br i1 %1646, label %.loopexit138.i, label %1647

1647:                                             ; preds = %1645
  %1648 = getelementptr i8, ptr %1595, i64 %1634
  %1649 = getelementptr i8, ptr %1603, i64 %1634
  %1650 = and i64 %1627, 28
  %1651 = icmp eq i64 %1650, 0
  br i1 %1651, label %.preheader331, label %1652

1652:                                             ; preds = %1647, %1631
  %1653 = phi i64 [ %1634, %1647 ], [ 0, %1631 ]
  %1654 = and i64 %1627, -4
  br label %1655

1655:                                             ; preds = %1655, %1652
  %1656 = phi i64 [ %1653, %1652 ], [ %1660, %1655 ]
  %1657 = getelementptr i8, ptr %1595, i64 %1656
  %1658 = getelementptr i8, ptr %1603, i64 %1656
  %1659 = load <4 x i8>, ptr %1658, align 1, !tbaa !9
  store <4 x i8> %1659, ptr %1657, align 1, !tbaa !9
  %1660 = add nuw i64 %1656, 4
  %1661 = icmp eq i64 %1660, %1654
  br i1 %1661, label %1662, label %1655, !llvm.loop !111

1662:                                             ; preds = %1655
  %1663 = getelementptr i8, ptr %1595, i64 %1654
  %1664 = getelementptr i8, ptr %1603, i64 %1654
  %1665 = icmp eq i64 %1627, %1654
  br i1 %1665, label %.loopexit138.i, label %.preheader331

.preheader331:                                    ; preds = %1662, %1647, %1623
  %.ph332 = phi ptr [ %1663, %1662 ], [ %1648, %1647 ], [ %1595, %1623 ]
  %.ph333 = phi ptr [ %1664, %1662 ], [ %1649, %1647 ], [ %1603, %1623 ]
  br label %1666

1666:                                             ; preds = %.preheader331, %1666
  %1667 = phi ptr [ %1671, %1666 ], [ %.ph332, %.preheader331 ]
  %1668 = phi ptr [ %1669, %1666 ], [ %.ph333, %.preheader331 ]
  %1669 = getelementptr inbounds nuw i8, ptr %1668, i64 1
  %1670 = load i8, ptr %1668, align 1, !tbaa !9
  %1671 = getelementptr inbounds nuw i8, ptr %1667, i64 1
  store i8 %1670, ptr %1667, align 1, !tbaa !9
  %1672 = icmp ult ptr %1671, %1619
  br i1 %1672, label %1666, label %.loopexit138.i, !llvm.loop !112

1673:                                             ; preds = %1617
  %1674 = icmp sgt i64 %1611, 31
  %1675 = icmp samesign ult i64 %1618, -16
  %1676 = and i1 %1675, %1674
  br i1 %1676, label %1677, label %1697

1677:                                             ; preds = %1673
  %1678 = getelementptr inbounds i8, ptr %1619, i64 -32
  %1679 = add nsw i64 %1611, -32
  %1680 = getelementptr inbounds nuw i8, ptr %1595, i64 %1679
  %1681 = load <2 x i64>, ptr %1603, align 1, !tbaa !9
  store <2 x i64> %1681, ptr %1595, align 1, !tbaa !9
  %1682 = icmp samesign ult i64 %1611, 49
  br i1 %1682, label %.loopexit140.i, label %1683

1683:                                             ; preds = %1677
  %1684 = getelementptr inbounds nuw i8, ptr %1595, i64 16
  br label %1685

1685:                                             ; preds = %1685, %1683
  %1686 = phi ptr [ %1684, %1683 ], [ %1693, %1685 ]
  %1687 = phi ptr [ %1603, %1683 ], [ %1691, %1685 ]
  %1688 = getelementptr inbounds nuw i8, ptr %1687, i64 16
  %1689 = load <2 x i64>, ptr %1688, align 1, !tbaa !9
  store <2 x i64> %1689, ptr %1686, align 1, !tbaa !9
  %1690 = getelementptr inbounds nuw i8, ptr %1686, i64 16
  %1691 = getelementptr inbounds nuw i8, ptr %1687, i64 32
  %1692 = load <2 x i64>, ptr %1691, align 1, !tbaa !9
  store <2 x i64> %1692, ptr %1690, align 1, !tbaa !9
  %1693 = getelementptr inbounds nuw i8, ptr %1686, i64 32
  %1694 = icmp ult ptr %1693, %1680
  br i1 %1694, label %1685, label %.loopexit140.i, !llvm.loop !97

.loopexit140.i:                                   ; preds = %1685, %1677
  %1695 = getelementptr inbounds nuw i8, ptr %1603, i64 %1679
  %.pre.i = ptrtoint ptr %1678 to i64
  %.pre247.i = ptrtoint ptr %1695 to i64
  %.pre249.i = sub i64 %.pre.i, %.pre247.i
  %1696 = icmp ult i64 %.pre249.i, 32
  br label %1697

1697:                                             ; preds = %.loopexit140.i, %1673
  %.pre-phi250.i = phi i1 [ %1696, %.loopexit140.i ], [ false, %1673 ]
  %.pre-phi.i = phi i64 [ %.pre.i, %.loopexit140.i ], [ %1614, %1673 ]
  %1698 = phi ptr [ %1678, %.loopexit140.i ], [ %1595, %1673 ]
  %1699 = phi ptr [ %1695, %.loopexit140.i ], [ %1603, %1673 ]
  %1700 = add i64 %1618, %1609
  %1701 = add nuw i64 %.pre-phi.i, 1
  %1702 = tail call i64 @llvm.umax.i64(i64 %1700, i64 %1701)
  %1703 = sub i64 %1702, %.pre-phi.i
  %1704 = icmp ult i64 %1703, 4
  %1705 = select i1 %1704, i1 true, i1 %.pre-phi250.i
  br i1 %1705, label %.preheader334, label %1706

1706:                                             ; preds = %1697
  %1707 = icmp ult i64 %1703, 32
  br i1 %1707, label %1727, label %1708

1708:                                             ; preds = %1706
  %1709 = and i64 %1703, -32
  br label %1710

1710:                                             ; preds = %1710, %1708
  %1711 = phi i64 [ 0, %1708 ], [ %1718, %1710 ]
  %1712 = getelementptr i8, ptr %1698, i64 %1711
  %1713 = getelementptr i8, ptr %1699, i64 %1711
  %1714 = getelementptr i8, ptr %1713, i64 16
  %1715 = load <16 x i8>, ptr %1713, align 1, !tbaa !9
  %1716 = load <16 x i8>, ptr %1714, align 1, !tbaa !9
  %1717 = getelementptr i8, ptr %1712, i64 16
  store <16 x i8> %1715, ptr %1712, align 1, !tbaa !9
  store <16 x i8> %1716, ptr %1717, align 1, !tbaa !9
  %1718 = add nuw i64 %1711, 32
  %1719 = icmp eq i64 %1718, %1709
  br i1 %1719, label %1720, label %1710, !llvm.loop !113

1720:                                             ; preds = %1710
  %1721 = icmp eq i64 %1703, %1709
  br i1 %1721, label %.loopexit138.i, label %1722

1722:                                             ; preds = %1720
  %1723 = getelementptr i8, ptr %1698, i64 %1709
  %1724 = getelementptr i8, ptr %1699, i64 %1709
  %1725 = and i64 %1703, 28
  %1726 = icmp eq i64 %1725, 0
  br i1 %1726, label %.preheader334, label %1727

1727:                                             ; preds = %1722, %1706
  %1728 = phi i64 [ %1709, %1722 ], [ 0, %1706 ]
  %1729 = and i64 %1703, -4
  br label %1730

1730:                                             ; preds = %1730, %1727
  %1731 = phi i64 [ %1728, %1727 ], [ %1735, %1730 ]
  %1732 = getelementptr i8, ptr %1698, i64 %1731
  %1733 = getelementptr i8, ptr %1699, i64 %1731
  %1734 = load <4 x i8>, ptr %1733, align 1, !tbaa !9
  store <4 x i8> %1734, ptr %1732, align 1, !tbaa !9
  %1735 = add nuw i64 %1731, 4
  %1736 = icmp eq i64 %1735, %1729
  br i1 %1736, label %1737, label %1730, !llvm.loop !114

1737:                                             ; preds = %1730
  %1738 = getelementptr i8, ptr %1698, i64 %1729
  %1739 = getelementptr i8, ptr %1699, i64 %1729
  %1740 = icmp eq i64 %1703, %1729
  br i1 %1740, label %.loopexit138.i, label %.preheader334

.preheader334:                                    ; preds = %1737, %1722, %1697
  %.ph335 = phi ptr [ %1738, %1737 ], [ %1723, %1722 ], [ %1698, %1697 ]
  %.ph336 = phi ptr [ %1739, %1737 ], [ %1724, %1722 ], [ %1699, %1697 ]
  br label %1741

1741:                                             ; preds = %.preheader334, %1741
  %1742 = phi ptr [ %1746, %1741 ], [ %.ph335, %.preheader334 ]
  %1743 = phi ptr [ %1744, %1741 ], [ %.ph336, %.preheader334 ]
  %1744 = getelementptr inbounds nuw i8, ptr %1743, i64 1
  %1745 = load i8, ptr %1743, align 1, !tbaa !9
  %1746 = getelementptr inbounds nuw i8, ptr %1742, i64 1
  store i8 %1745, ptr %1742, align 1, !tbaa !9
  %1747 = icmp ult ptr %1746, %1619
  br i1 %1747, label %1741, label %.loopexit138.i, !llvm.loop !115

.loopexit138.i:                                   ; preds = %1741, %1666, %1737, %1720, %1662, %1645
  %1748 = load i64, ptr %1599, align 8, !tbaa !92
  %1749 = sub i64 %1748, %1611
  store i64 %1749, ptr %1599, align 8, !tbaa !92
  br label %1750

1750:                                             ; preds = %.loopexit138.i, %1608
  %1751 = phi i64 [ %1749, %.loopexit138.i ], [ %1604, %1608 ]
  %1752 = phi ptr [ %1619, %.loopexit138.i ], [ %1595, %1608 ]
  store ptr %1582, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %95, align 8, !tbaa !35
  %1753 = getelementptr inbounds nuw i8, ptr %1599, i64 8
  %1754 = load i64, ptr %1753, align 8
  %1755 = getelementptr inbounds nuw i8, ptr %1599, i64 16
  %1756 = load i64, ptr %1755, align 8
  %1757 = sub i64 0, %1756
  %1758 = getelementptr i8, ptr %1752, i64 %1751
  %1759 = add i64 %1754, %1751
  %1760 = getelementptr i8, ptr %1582, i64 %1751
  %1761 = getelementptr inbounds i8, ptr %1758, i64 %1757
  %1762 = icmp sgt i64 %1751, 65536
  %1763 = getelementptr inbounds nuw i8, ptr %1752, i64 %1759
  %1764 = icmp ugt ptr %1763, %1579
  %1765 = select i1 %1762, i1 true, i1 %1764
  br i1 %1765, label %1769, label %1766, !prof !101

1766:                                             ; preds = %1750
  %1767 = load <2 x i64>, ptr %1582, align 1, !tbaa !9
  store <2 x i64> %1767, ptr %1752, align 1, !tbaa !9
  %1768 = icmp ugt i64 %1751, 16
  br i1 %1768, label %1771, label %.loopexit137.i, !prof !52

1769:                                             ; preds = %1750
  %1770 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1752, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %1599, ptr noundef nonnull %7, ptr noundef nonnull %1583, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit.i

1771:                                             ; preds = %1766
  %1772 = getelementptr inbounds nuw i8, ptr %1752, i64 16
  %1773 = add i64 %1751, -16
  %1774 = load <2 x i64>, ptr %1584, align 1, !tbaa !9
  store <2 x i64> %1774, ptr %1772, align 1, !tbaa !9
  %1775 = icmp ult i64 %1773, 17
  br i1 %1775, label %.loopexit137.i, label %1776

1776:                                             ; preds = %1771
  %1777 = getelementptr inbounds nuw i8, ptr %1752, i64 32
  br label %1778

1778:                                             ; preds = %1778, %1776
  %1779 = phi ptr [ %1777, %1776 ], [ %1786, %1778 ]
  %1780 = phi ptr [ %1584, %1776 ], [ %1784, %1778 ]
  %1781 = getelementptr inbounds nuw i8, ptr %1780, i64 16
  %1782 = load <2 x i64>, ptr %1781, align 1, !tbaa !9
  store <2 x i64> %1782, ptr %1779, align 1, !tbaa !9
  %1783 = getelementptr inbounds nuw i8, ptr %1779, i64 16
  %1784 = getelementptr inbounds nuw i8, ptr %1780, i64 32
  %1785 = load <2 x i64>, ptr %1784, align 1, !tbaa !9
  store <2 x i64> %1785, ptr %1783, align 1, !tbaa !9
  %1786 = getelementptr inbounds nuw i8, ptr %1779, i64 32
  %1787 = icmp ult ptr %1786, %1758
  br i1 %1787, label %1778, label %.loopexit137.i, !llvm.loop !97

.loopexit137.i:                                   ; preds = %1778, %1771, %1766
  store ptr %1760, ptr %7, align 8, !tbaa !38
  %1788 = ptrtoint ptr %1758 to i64
  %1789 = sub i64 %1788, %132
  %1790 = icmp ugt i64 %1756, %1789
  br i1 %1790, label %1791, label %1804

1791:                                             ; preds = %.loopexit137.i
  %1792 = sub i64 %1788, %1580
  %1793 = icmp ugt i64 %1756, %1792
  br i1 %1793, label %.loopexit149.i, label %1794, !prof !52

1794:                                             ; preds = %1791
  %1795 = ptrtoint ptr %1761 to i64
  %1796 = sub i64 %1795, %132
  %1797 = getelementptr inbounds i8, ptr %114, i64 %1796
  %1798 = add i64 %1796, %1754
  %1799 = icmp sgt i64 %1798, 0
  br i1 %1799, label %1801, label %1800

1800:                                             ; preds = %1794
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1758, ptr align 1 %1797, i64 %1754, i1 false)
  br label %.loopexit.i

1801:                                             ; preds = %1794
  %1802 = sub nsw i64 0, %1796
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1758, ptr align 1 %1797, i64 %1802, i1 false)
  %1803 = getelementptr inbounds nuw i8, ptr %1758, i64 %1802
  br label %1804

1804:                                             ; preds = %1801, %.loopexit137.i
  %1805 = phi i64 [ %1798, %1801 ], [ %1754, %.loopexit137.i ]
  %1806 = phi ptr [ %111, %1801 ], [ %1761, %.loopexit137.i ]
  %1807 = phi ptr [ %1803, %1801 ], [ %1758, %.loopexit137.i ]
  %1808 = icmp ugt i64 %1756, 15
  br i1 %1808, label %1809, label %1825, !prof !87

1809:                                             ; preds = %1804
  %1810 = getelementptr inbounds nuw i8, ptr %1807, i64 %1805
  %1811 = load <2 x i64>, ptr %1806, align 1, !tbaa !9
  store <2 x i64> %1811, ptr %1807, align 1, !tbaa !9
  %1812 = icmp ult i64 %1805, 17
  br i1 %1812, label %.loopexit.i, label %1813

1813:                                             ; preds = %1809
  %1814 = getelementptr inbounds nuw i8, ptr %1807, i64 16
  br label %1815

1815:                                             ; preds = %1815, %1813
  %1816 = phi ptr [ %1814, %1813 ], [ %1823, %1815 ]
  %1817 = phi ptr [ %1806, %1813 ], [ %1821, %1815 ]
  %1818 = getelementptr inbounds nuw i8, ptr %1817, i64 16
  %1819 = load <2 x i64>, ptr %1818, align 1, !tbaa !9
  store <2 x i64> %1819, ptr %1816, align 1, !tbaa !9
  %1820 = getelementptr inbounds nuw i8, ptr %1816, i64 16
  %1821 = getelementptr inbounds nuw i8, ptr %1817, i64 32
  %1822 = load <2 x i64>, ptr %1821, align 1, !tbaa !9
  store <2 x i64> %1822, ptr %1820, align 1, !tbaa !9
  %1823 = getelementptr inbounds nuw i8, ptr %1816, i64 32
  %1824 = icmp ult ptr %1823, %1810
  br i1 %1824, label %1815, label %.loopexit.i, !llvm.loop !97

1825:                                             ; preds = %1804
  %1826 = icmp samesign ult i64 %1756, 8
  br i1 %1826, label %1827, label %1849

1827:                                             ; preds = %1825
  %1828 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1756
  %1829 = load i32, ptr %1828, align 4, !tbaa !30
  %1830 = load i8, ptr %1806, align 1, !tbaa !9
  store i8 %1830, ptr %1807, align 1, !tbaa !9
  %1831 = getelementptr inbounds nuw i8, ptr %1806, i64 1
  %1832 = load i8, ptr %1831, align 1, !tbaa !9
  %1833 = getelementptr inbounds nuw i8, ptr %1807, i64 1
  store i8 %1832, ptr %1833, align 1, !tbaa !9
  %1834 = getelementptr inbounds nuw i8, ptr %1806, i64 2
  %1835 = load i8, ptr %1834, align 1, !tbaa !9
  %1836 = getelementptr inbounds nuw i8, ptr %1807, i64 2
  store i8 %1835, ptr %1836, align 1, !tbaa !9
  %1837 = getelementptr inbounds nuw i8, ptr %1806, i64 3
  %1838 = load i8, ptr %1837, align 1, !tbaa !9
  %1839 = getelementptr inbounds nuw i8, ptr %1807, i64 3
  store i8 %1838, ptr %1839, align 1, !tbaa !9
  %1840 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1756
  %1841 = load i32, ptr %1840, align 4, !tbaa !30
  %1842 = zext i32 %1841 to i64
  %1843 = getelementptr inbounds nuw i8, ptr %1806, i64 %1842
  %1844 = getelementptr inbounds nuw i8, ptr %1807, i64 4
  %1845 = load i32, ptr %1843, align 1
  store i32 %1845, ptr %1844, align 1
  %1846 = sext i32 %1829 to i64
  %1847 = sub nsw i64 0, %1846
  %1848 = getelementptr inbounds i8, ptr %1843, i64 %1847
  br label %1851

1849:                                             ; preds = %1825
  %1850 = load i64, ptr %1806, align 1
  store i64 %1850, ptr %1807, align 1
  br label %1851

1851:                                             ; preds = %1849, %1827
  %1852 = phi ptr [ %1848, %1827 ], [ %1806, %1849 ]
  %1853 = getelementptr inbounds nuw i8, ptr %1852, i64 8
  %1854 = getelementptr inbounds nuw i8, ptr %1807, i64 8
  %1855 = icmp ugt i64 %1805, 8
  br i1 %1855, label %1856, label %.loopexit.i

1856:                                             ; preds = %1851
  %1857 = ptrtoint ptr %1854 to i64
  %1858 = ptrtoint ptr %1853 to i64
  %1859 = sub i64 %1857, %1858
  %1860 = getelementptr i8, ptr %1807, i64 %1805
  %1861 = icmp slt i64 %1859, 16
  br i1 %1861, label %1862, label %1903

1862:                                             ; preds = %1856
  %1863 = add i64 %1754, %132
  %1864 = tail call i64 @llvm.umin.i64(i64 %1756, i64 %1789)
  %1865 = tail call i64 @llvm.umax.i64(i64 %1756, i64 %1789)
  %1866 = sub i64 %1863, %1756
  %1867 = add i64 %1866, %1864
  %1868 = add i64 %1867, %1865
  %1869 = add i64 %1865, %1585
  %1870 = tail call i64 @llvm.umax.i64(i64 %1868, i64 %1869)
  %1871 = add i64 %1865, %132
  %reass.sub69 = sub i64 %1870, %1871
  %1872 = add i64 %reass.sub69, -9
  %1873 = lshr i64 %1872, 3
  %1874 = add nuw nsw i64 %1873, 1
  %1875 = icmp ult i64 %1872, 24
  %1876 = icmp ult i64 %1859, 32
  %1877 = or i1 %1875, %1876
  br i1 %1877, label %.preheader, label %1878

1878:                                             ; preds = %1862
  %1879 = and i64 %1874, 4611686018427387900
  br label %1880

1880:                                             ; preds = %1880, %1878
  %1881 = phi i64 [ 0, %1878 ], [ %1889, %1880 ]
  %1882 = shl i64 %1881, 3
  %1883 = getelementptr i8, ptr %1854, i64 %1882
  %1884 = getelementptr i8, ptr %1853, i64 %1882
  %1885 = getelementptr i8, ptr %1884, i64 16
  %1886 = load <2 x i64>, ptr %1884, align 1
  %1887 = load <2 x i64>, ptr %1885, align 1
  %1888 = getelementptr i8, ptr %1883, i64 16
  store <2 x i64> %1886, ptr %1883, align 1
  store <2 x i64> %1887, ptr %1888, align 1
  %1889 = add nuw i64 %1881, 4
  %1890 = icmp eq i64 %1889, %1879
  br i1 %1890, label %1891, label %1880, !llvm.loop !116

1891:                                             ; preds = %1880
  %1892 = shl i64 %1879, 3
  %1893 = getelementptr i8, ptr %1854, i64 %1892
  %1894 = getelementptr i8, ptr %1853, i64 %1892
  %1895 = icmp eq i64 %1874, %1879
  br i1 %1895, label %.loopexit.i, label %.preheader

.preheader:                                       ; preds = %1891, %1862
  %.ph = phi ptr [ %1893, %1891 ], [ %1854, %1862 ]
  %.ph328 = phi ptr [ %1894, %1891 ], [ %1853, %1862 ]
  br label %1896

1896:                                             ; preds = %.preheader, %1896
  %1897 = phi ptr [ %1900, %1896 ], [ %.ph, %.preheader ]
  %1898 = phi ptr [ %1901, %1896 ], [ %.ph328, %.preheader ]
  %1899 = load i64, ptr %1898, align 1
  store i64 %1899, ptr %1897, align 1
  %1900 = getelementptr inbounds nuw i8, ptr %1897, i64 8
  %1901 = getelementptr inbounds nuw i8, ptr %1898, i64 8
  %1902 = icmp ult ptr %1900, %1860
  br i1 %1902, label %1896, label %.loopexit.i, !llvm.loop !117

1903:                                             ; preds = %1856
  %1904 = load <2 x i64>, ptr %1853, align 1, !tbaa !9
  store <2 x i64> %1904, ptr %1854, align 1, !tbaa !9
  %1905 = icmp ult i64 %1805, 25
  br i1 %1905, label %.loopexit.i, label %1906

1906:                                             ; preds = %1903
  %1907 = getelementptr inbounds nuw i8, ptr %1807, i64 24
  br label %1908

1908:                                             ; preds = %1908, %1906
  %1909 = phi ptr [ %1907, %1906 ], [ %1916, %1908 ]
  %1910 = phi ptr [ %1853, %1906 ], [ %1914, %1908 ]
  %1911 = getelementptr inbounds nuw i8, ptr %1910, i64 16
  %1912 = load <2 x i64>, ptr %1911, align 1, !tbaa !9
  store <2 x i64> %1912, ptr %1909, align 1, !tbaa !9
  %1913 = getelementptr inbounds nuw i8, ptr %1909, i64 16
  %1914 = getelementptr inbounds nuw i8, ptr %1910, i64 32
  %1915 = load <2 x i64>, ptr %1914, align 1, !tbaa !9
  store <2 x i64> %1915, ptr %1913, align 1, !tbaa !9
  %1916 = getelementptr inbounds nuw i8, ptr %1909, i64 32
  %1917 = icmp ult ptr %1916, %1860
  br i1 %1917, label %1908, label %.loopexit.i, !llvm.loop !97

.loopexit.i:                                      ; preds = %1908, %1896, %1815, %1903, %1891, %1851, %1809, %1800, %1769
  %1918 = phi i64 [ %1770, %1769 ], [ %1759, %1800 ], [ %1759, %1851 ], [ %1759, %1809 ], [ %1759, %1903 ], [ %1759, %1891 ], [ %1759, %1815 ], [ %1759, %1896 ], [ %1759, %1908 ]
  %1919 = icmp ult i64 %1918, -119
  %1920 = getelementptr inbounds nuw i8, ptr %1752, i64 %1918
  br i1 %1919, label %2258, label %.loopexit149.i

1921:                                             ; preds = %1602
  %1922 = getelementptr inbounds i8, ptr %1605, i64 -32
  %1923 = getelementptr inbounds nuw i8, ptr %1599, i64 8
  %1924 = load i64, ptr %1923, align 8
  %1925 = getelementptr inbounds nuw i8, ptr %1599, i64 16
  %1926 = load i64, ptr %1925, align 8
  %1927 = sub i64 0, %1926
  %1928 = getelementptr i8, ptr %1595, i64 %1604
  %1929 = add i64 %1924, %1604
  %1930 = getelementptr inbounds i8, ptr %1928, i64 %1927
  %1931 = icmp ugt ptr %1605, %1596
  %1932 = getelementptr inbounds nuw i8, ptr %1595, i64 %1929
  %1933 = icmp ugt ptr %1932, %1922
  %1934 = select i1 %1931, i1 true, i1 %1933
  br i1 %1934, label %1938, label %1935, !prof !101

1935:                                             ; preds = %1921
  %1936 = load <2 x i64>, ptr %1603, align 1, !tbaa !9
  store <2 x i64> %1936, ptr %1595, align 1, !tbaa !9
  %1937 = icmp ugt i64 %1604, 16
  br i1 %1937, label %1940, label %.loopexit144.i, !prof !52

1938:                                             ; preds = %1921
  %1939 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1595, ptr noundef %105, ptr noundef nonnull %1922, ptr noundef nonnull byval(%struct.seq_t) align 8 %1599, ptr noundef nonnull %7, ptr noundef %1596, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit141.i

1940:                                             ; preds = %1935
  %1941 = getelementptr inbounds nuw i8, ptr %1595, i64 16
  %1942 = getelementptr inbounds nuw i8, ptr %1603, i64 16
  %1943 = load <2 x i64>, ptr %1942, align 1, !tbaa !9
  store <2 x i64> %1943, ptr %1941, align 1, !tbaa !9
  %1944 = icmp ult i64 %1604, 33
  br i1 %1944, label %.loopexit144.i, label %1945

1945:                                             ; preds = %1940
  %1946 = getelementptr inbounds nuw i8, ptr %1595, i64 32
  br label %1947

1947:                                             ; preds = %1947, %1945
  %1948 = phi ptr [ %1946, %1945 ], [ %1955, %1947 ]
  %1949 = phi ptr [ %1942, %1945 ], [ %1953, %1947 ]
  %1950 = getelementptr inbounds nuw i8, ptr %1949, i64 16
  %1951 = load <2 x i64>, ptr %1950, align 1, !tbaa !9
  store <2 x i64> %1951, ptr %1948, align 1, !tbaa !9
  %1952 = getelementptr inbounds nuw i8, ptr %1948, i64 16
  %1953 = getelementptr inbounds nuw i8, ptr %1949, i64 32
  %1954 = load <2 x i64>, ptr %1953, align 1, !tbaa !9
  store <2 x i64> %1954, ptr %1952, align 1, !tbaa !9
  %1955 = getelementptr inbounds nuw i8, ptr %1948, i64 32
  %1956 = icmp ult ptr %1955, %1928
  br i1 %1956, label %1947, label %.loopexit144.i, !llvm.loop !97

.loopexit144.i:                                   ; preds = %1947, %1940, %1935
  store ptr %1605, ptr %7, align 8, !tbaa !38
  %1957 = ptrtoint ptr %1928 to i64
  %1958 = sub i64 %1957, %132
  %1959 = icmp ugt i64 %1926, %1958
  br i1 %1959, label %1960, label %1973

1960:                                             ; preds = %.loopexit144.i
  %1961 = sub i64 %1957, %1580
  %1962 = icmp ugt i64 %1926, %1961
  br i1 %1962, label %.loopexit149.i, label %1963, !prof !52

1963:                                             ; preds = %1960
  %1964 = ptrtoint ptr %1930 to i64
  %1965 = sub i64 %1964, %132
  %1966 = getelementptr inbounds i8, ptr %114, i64 %1965
  %1967 = add i64 %1965, %1924
  %1968 = icmp sgt i64 %1967, 0
  br i1 %1968, label %1970, label %1969

1969:                                             ; preds = %1963
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1928, ptr align 1 %1966, i64 %1924, i1 false)
  br label %.loopexit141.i

1970:                                             ; preds = %1963
  %1971 = sub nsw i64 0, %1965
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1928, ptr align 1 %1966, i64 %1971, i1 false)
  %1972 = getelementptr inbounds nuw i8, ptr %1928, i64 %1971
  br label %1973

1973:                                             ; preds = %1970, %.loopexit144.i
  %1974 = phi i64 [ %1967, %1970 ], [ %1924, %.loopexit144.i ]
  %1975 = phi ptr [ %111, %1970 ], [ %1930, %.loopexit144.i ]
  %1976 = phi ptr [ %1972, %1970 ], [ %1928, %.loopexit144.i ]
  %1977 = icmp ugt i64 %1926, 15
  br i1 %1977, label %1978, label %1994, !prof !87

1978:                                             ; preds = %1973
  %1979 = getelementptr inbounds nuw i8, ptr %1976, i64 %1974
  %1980 = load <2 x i64>, ptr %1975, align 1, !tbaa !9
  store <2 x i64> %1980, ptr %1976, align 1, !tbaa !9
  %1981 = icmp ult i64 %1974, 17
  br i1 %1981, label %.loopexit141.i, label %1982

1982:                                             ; preds = %1978
  %1983 = getelementptr inbounds nuw i8, ptr %1976, i64 16
  br label %1984

1984:                                             ; preds = %1984, %1982
  %1985 = phi ptr [ %1983, %1982 ], [ %1992, %1984 ]
  %1986 = phi ptr [ %1975, %1982 ], [ %1990, %1984 ]
  %1987 = getelementptr inbounds nuw i8, ptr %1986, i64 16
  %1988 = load <2 x i64>, ptr %1987, align 1, !tbaa !9
  store <2 x i64> %1988, ptr %1985, align 1, !tbaa !9
  %1989 = getelementptr inbounds nuw i8, ptr %1985, i64 16
  %1990 = getelementptr inbounds nuw i8, ptr %1986, i64 32
  %1991 = load <2 x i64>, ptr %1990, align 1, !tbaa !9
  store <2 x i64> %1991, ptr %1989, align 1, !tbaa !9
  %1992 = getelementptr inbounds nuw i8, ptr %1985, i64 32
  %1993 = icmp ult ptr %1992, %1979
  br i1 %1993, label %1984, label %.loopexit141.i, !llvm.loop !97

1994:                                             ; preds = %1973
  %1995 = icmp samesign ult i64 %1926, 8
  br i1 %1995, label %1996, label %2018

1996:                                             ; preds = %1994
  %1997 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1926
  %1998 = load i32, ptr %1997, align 4, !tbaa !30
  %1999 = load i8, ptr %1975, align 1, !tbaa !9
  store i8 %1999, ptr %1976, align 1, !tbaa !9
  %2000 = getelementptr inbounds nuw i8, ptr %1975, i64 1
  %2001 = load i8, ptr %2000, align 1, !tbaa !9
  %2002 = getelementptr inbounds nuw i8, ptr %1976, i64 1
  store i8 %2001, ptr %2002, align 1, !tbaa !9
  %2003 = getelementptr inbounds nuw i8, ptr %1975, i64 2
  %2004 = load i8, ptr %2003, align 1, !tbaa !9
  %2005 = getelementptr inbounds nuw i8, ptr %1976, i64 2
  store i8 %2004, ptr %2005, align 1, !tbaa !9
  %2006 = getelementptr inbounds nuw i8, ptr %1975, i64 3
  %2007 = load i8, ptr %2006, align 1, !tbaa !9
  %2008 = getelementptr inbounds nuw i8, ptr %1976, i64 3
  store i8 %2007, ptr %2008, align 1, !tbaa !9
  %2009 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1926
  %2010 = load i32, ptr %2009, align 4, !tbaa !30
  %2011 = zext i32 %2010 to i64
  %2012 = getelementptr inbounds nuw i8, ptr %1975, i64 %2011
  %2013 = getelementptr inbounds nuw i8, ptr %1976, i64 4
  %2014 = load i32, ptr %2012, align 1
  store i32 %2014, ptr %2013, align 1
  %2015 = sext i32 %1998 to i64
  %2016 = sub nsw i64 0, %2015
  %2017 = getelementptr inbounds i8, ptr %2012, i64 %2016
  br label %2020

2018:                                             ; preds = %1994
  %2019 = load i64, ptr %1975, align 1
  store i64 %2019, ptr %1976, align 1
  br label %2020

2020:                                             ; preds = %2018, %1996
  %2021 = phi ptr [ %2017, %1996 ], [ %1975, %2018 ]
  %2022 = getelementptr inbounds nuw i8, ptr %2021, i64 8
  %2023 = getelementptr inbounds nuw i8, ptr %1976, i64 8
  %2024 = icmp ugt i64 %1974, 8
  br i1 %2024, label %2025, label %.loopexit141.i

2025:                                             ; preds = %2020
  %2026 = ptrtoint ptr %2023 to i64
  %2027 = ptrtoint ptr %2022 to i64
  %2028 = sub i64 %2026, %2027
  %2029 = getelementptr i8, ptr %1976, i64 %1974
  %2030 = icmp slt i64 %2028, 16
  br i1 %2030, label %2031, label %2072

2031:                                             ; preds = %2025
  %2032 = add i64 %1924, %132
  %2033 = tail call i64 @llvm.umin.i64(i64 %1926, i64 %1958)
  %2034 = tail call i64 @llvm.umax.i64(i64 %1926, i64 %1958)
  %2035 = sub i64 %2032, %1926
  %2036 = add i64 %2035, %2033
  %2037 = add i64 %2036, %2034
  %2038 = add i64 %2034, %1585
  %2039 = tail call i64 @llvm.umax.i64(i64 %2037, i64 %2038)
  %2040 = add i64 %2034, %132
  %reass.sub68 = sub i64 %2039, %2040
  %2041 = add i64 %reass.sub68, -9
  %2042 = lshr i64 %2041, 3
  %2043 = add nuw nsw i64 %2042, 1
  %2044 = icmp ult i64 %2041, 24
  %2045 = icmp ult i64 %2028, 32
  %2046 = or i1 %2044, %2045
  br i1 %2046, label %.preheader338, label %2047

2047:                                             ; preds = %2031
  %2048 = and i64 %2043, 4611686018427387900
  br label %2049

2049:                                             ; preds = %2049, %2047
  %2050 = phi i64 [ 0, %2047 ], [ %2058, %2049 ]
  %2051 = shl i64 %2050, 3
  %2052 = getelementptr i8, ptr %2023, i64 %2051
  %2053 = getelementptr i8, ptr %2022, i64 %2051
  %2054 = getelementptr i8, ptr %2053, i64 16
  %2055 = load <2 x i64>, ptr %2053, align 1
  %2056 = load <2 x i64>, ptr %2054, align 1
  %2057 = getelementptr i8, ptr %2052, i64 16
  store <2 x i64> %2055, ptr %2052, align 1
  store <2 x i64> %2056, ptr %2057, align 1
  %2058 = add nuw i64 %2050, 4
  %2059 = icmp eq i64 %2058, %2048
  br i1 %2059, label %2060, label %2049, !llvm.loop !118

2060:                                             ; preds = %2049
  %2061 = shl i64 %2048, 3
  %2062 = getelementptr i8, ptr %2023, i64 %2061
  %2063 = getelementptr i8, ptr %2022, i64 %2061
  %2064 = icmp eq i64 %2043, %2048
  br i1 %2064, label %.loopexit141.i, label %.preheader338

.preheader338:                                    ; preds = %2060, %2031
  %.ph339 = phi ptr [ %2062, %2060 ], [ %2023, %2031 ]
  %.ph340 = phi ptr [ %2063, %2060 ], [ %2022, %2031 ]
  br label %2065

2065:                                             ; preds = %.preheader338, %2065
  %2066 = phi ptr [ %2069, %2065 ], [ %.ph339, %.preheader338 ]
  %2067 = phi ptr [ %2070, %2065 ], [ %.ph340, %.preheader338 ]
  %2068 = load i64, ptr %2067, align 1
  store i64 %2068, ptr %2066, align 1
  %2069 = getelementptr inbounds nuw i8, ptr %2066, i64 8
  %2070 = getelementptr inbounds nuw i8, ptr %2067, i64 8
  %2071 = icmp ult ptr %2069, %2029
  br i1 %2071, label %2065, label %.loopexit141.i, !llvm.loop !119

2072:                                             ; preds = %2025
  %2073 = load <2 x i64>, ptr %2022, align 1, !tbaa !9
  store <2 x i64> %2073, ptr %2023, align 1, !tbaa !9
  %2074 = icmp ult i64 %1974, 25
  br i1 %2074, label %.loopexit141.i, label %2075

2075:                                             ; preds = %2072
  %2076 = getelementptr inbounds nuw i8, ptr %1976, i64 24
  br label %2077

2077:                                             ; preds = %2077, %2075
  %2078 = phi ptr [ %2076, %2075 ], [ %2085, %2077 ]
  %2079 = phi ptr [ %2022, %2075 ], [ %2083, %2077 ]
  %2080 = getelementptr inbounds nuw i8, ptr %2079, i64 16
  %2081 = load <2 x i64>, ptr %2080, align 1, !tbaa !9
  store <2 x i64> %2081, ptr %2078, align 1, !tbaa !9
  %2082 = getelementptr inbounds nuw i8, ptr %2078, i64 16
  %2083 = getelementptr inbounds nuw i8, ptr %2079, i64 32
  %2084 = load <2 x i64>, ptr %2083, align 1, !tbaa !9
  store <2 x i64> %2084, ptr %2082, align 1, !tbaa !9
  %2085 = getelementptr inbounds nuw i8, ptr %2078, i64 32
  %2086 = icmp ult ptr %2085, %2029
  br i1 %2086, label %2077, label %.loopexit141.i, !llvm.loop !97

2087:                                             ; preds = %1593
  %2088 = load i64, ptr %1599, align 8
  %2089 = getelementptr inbounds nuw i8, ptr %1599, i64 8
  %2090 = load i64, ptr %2089, align 8
  %2091 = getelementptr inbounds nuw i8, ptr %1599, i64 16
  %2092 = load i64, ptr %2091, align 8
  %2093 = sub i64 0, %2092
  %2094 = getelementptr i8, ptr %1595, i64 %2088
  %2095 = add i64 %2090, %2088
  %2096 = load ptr, ptr %7, align 8, !tbaa !38
  %2097 = getelementptr inbounds nuw i8, ptr %2096, i64 %2088
  %2098 = getelementptr inbounds i8, ptr %2094, i64 %2093
  %2099 = icmp ugt ptr %2097, %1596
  %2100 = getelementptr inbounds nuw i8, ptr %1595, i64 %2095
  %2101 = icmp ugt ptr %2100, %1579
  %2102 = select i1 %2099, i1 true, i1 %2101
  br i1 %2102, label %2106, label %2103, !prof !101

2103:                                             ; preds = %2087
  %2104 = load <2 x i64>, ptr %2096, align 1, !tbaa !9
  store <2 x i64> %2104, ptr %1595, align 1, !tbaa !9
  %2105 = icmp ugt i64 %2088, 16
  br i1 %2105, label %2108, label %.loopexit148.i, !prof !52

2106:                                             ; preds = %2087
  %2107 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1595, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %1599, ptr noundef nonnull %7, ptr noundef %1596, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit141.i

2108:                                             ; preds = %2103
  %2109 = getelementptr inbounds nuw i8, ptr %1595, i64 16
  %2110 = getelementptr inbounds nuw i8, ptr %2096, i64 16
  %2111 = load <2 x i64>, ptr %2110, align 1, !tbaa !9
  store <2 x i64> %2111, ptr %2109, align 1, !tbaa !9
  %2112 = icmp ult i64 %2088, 33
  br i1 %2112, label %.loopexit148.i, label %2113

2113:                                             ; preds = %2108
  %2114 = getelementptr inbounds nuw i8, ptr %1595, i64 32
  br label %2115

2115:                                             ; preds = %2115, %2113
  %2116 = phi ptr [ %2114, %2113 ], [ %2123, %2115 ]
  %2117 = phi ptr [ %2110, %2113 ], [ %2121, %2115 ]
  %2118 = getelementptr inbounds nuw i8, ptr %2117, i64 16
  %2119 = load <2 x i64>, ptr %2118, align 1, !tbaa !9
  store <2 x i64> %2119, ptr %2116, align 1, !tbaa !9
  %2120 = getelementptr inbounds nuw i8, ptr %2116, i64 16
  %2121 = getelementptr inbounds nuw i8, ptr %2117, i64 32
  %2122 = load <2 x i64>, ptr %2121, align 1, !tbaa !9
  store <2 x i64> %2122, ptr %2120, align 1, !tbaa !9
  %2123 = getelementptr inbounds nuw i8, ptr %2116, i64 32
  %2124 = icmp ult ptr %2123, %2094
  br i1 %2124, label %2115, label %.loopexit148.i, !llvm.loop !97

.loopexit148.i:                                   ; preds = %2115, %2108, %2103
  store ptr %2097, ptr %7, align 8, !tbaa !38
  %2125 = ptrtoint ptr %2094 to i64
  %2126 = sub i64 %2125, %132
  %2127 = icmp ugt i64 %2092, %2126
  br i1 %2127, label %2128, label %2141

2128:                                             ; preds = %.loopexit148.i
  %2129 = sub i64 %2125, %1580
  %2130 = icmp ugt i64 %2092, %2129
  br i1 %2130, label %.loopexit149.i, label %2131, !prof !52

2131:                                             ; preds = %2128
  %2132 = ptrtoint ptr %2098 to i64
  %2133 = sub i64 %2132, %132
  %2134 = getelementptr inbounds i8, ptr %114, i64 %2133
  %2135 = add i64 %2133, %2090
  %2136 = icmp sgt i64 %2135, 0
  br i1 %2136, label %2138, label %2137

2137:                                             ; preds = %2131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2094, ptr align 1 %2134, i64 %2090, i1 false)
  br label %.loopexit141.i

2138:                                             ; preds = %2131
  %2139 = sub nsw i64 0, %2133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2094, ptr align 1 %2134, i64 %2139, i1 false)
  %2140 = getelementptr inbounds nuw i8, ptr %2094, i64 %2139
  br label %2141

2141:                                             ; preds = %2138, %.loopexit148.i
  %2142 = phi i64 [ %2135, %2138 ], [ %2090, %.loopexit148.i ]
  %2143 = phi ptr [ %111, %2138 ], [ %2098, %.loopexit148.i ]
  %2144 = phi ptr [ %2140, %2138 ], [ %2094, %.loopexit148.i ]
  %2145 = icmp ugt i64 %2092, 15
  br i1 %2145, label %2146, label %2162, !prof !87

2146:                                             ; preds = %2141
  %2147 = getelementptr inbounds nuw i8, ptr %2144, i64 %2142
  %2148 = load <2 x i64>, ptr %2143, align 1, !tbaa !9
  store <2 x i64> %2148, ptr %2144, align 1, !tbaa !9
  %2149 = icmp ult i64 %2142, 17
  br i1 %2149, label %.loopexit141.i, label %2150

2150:                                             ; preds = %2146
  %2151 = getelementptr inbounds nuw i8, ptr %2144, i64 16
  br label %2152

2152:                                             ; preds = %2152, %2150
  %2153 = phi ptr [ %2151, %2150 ], [ %2160, %2152 ]
  %2154 = phi ptr [ %2143, %2150 ], [ %2158, %2152 ]
  %2155 = getelementptr inbounds nuw i8, ptr %2154, i64 16
  %2156 = load <2 x i64>, ptr %2155, align 1, !tbaa !9
  store <2 x i64> %2156, ptr %2153, align 1, !tbaa !9
  %2157 = getelementptr inbounds nuw i8, ptr %2153, i64 16
  %2158 = getelementptr inbounds nuw i8, ptr %2154, i64 32
  %2159 = load <2 x i64>, ptr %2158, align 1, !tbaa !9
  store <2 x i64> %2159, ptr %2157, align 1, !tbaa !9
  %2160 = getelementptr inbounds nuw i8, ptr %2153, i64 32
  %2161 = icmp ult ptr %2160, %2147
  br i1 %2161, label %2152, label %.loopexit141.i, !llvm.loop !97

2162:                                             ; preds = %2141
  %2163 = icmp samesign ult i64 %2092, 8
  br i1 %2163, label %2164, label %2186

2164:                                             ; preds = %2162
  %2165 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %2092
  %2166 = load i32, ptr %2165, align 4, !tbaa !30
  %2167 = load i8, ptr %2143, align 1, !tbaa !9
  store i8 %2167, ptr %2144, align 1, !tbaa !9
  %2168 = getelementptr inbounds nuw i8, ptr %2143, i64 1
  %2169 = load i8, ptr %2168, align 1, !tbaa !9
  %2170 = getelementptr inbounds nuw i8, ptr %2144, i64 1
  store i8 %2169, ptr %2170, align 1, !tbaa !9
  %2171 = getelementptr inbounds nuw i8, ptr %2143, i64 2
  %2172 = load i8, ptr %2171, align 1, !tbaa !9
  %2173 = getelementptr inbounds nuw i8, ptr %2144, i64 2
  store i8 %2172, ptr %2173, align 1, !tbaa !9
  %2174 = getelementptr inbounds nuw i8, ptr %2143, i64 3
  %2175 = load i8, ptr %2174, align 1, !tbaa !9
  %2176 = getelementptr inbounds nuw i8, ptr %2144, i64 3
  store i8 %2175, ptr %2176, align 1, !tbaa !9
  %2177 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %2092
  %2178 = load i32, ptr %2177, align 4, !tbaa !30
  %2179 = zext i32 %2178 to i64
  %2180 = getelementptr inbounds nuw i8, ptr %2143, i64 %2179
  %2181 = getelementptr inbounds nuw i8, ptr %2144, i64 4
  %2182 = load i32, ptr %2180, align 1
  store i32 %2182, ptr %2181, align 1
  %2183 = sext i32 %2166 to i64
  %2184 = sub nsw i64 0, %2183
  %2185 = getelementptr inbounds i8, ptr %2180, i64 %2184
  br label %2188

2186:                                             ; preds = %2162
  %2187 = load i64, ptr %2143, align 1
  store i64 %2187, ptr %2144, align 1
  br label %2188

2188:                                             ; preds = %2186, %2164
  %2189 = phi ptr [ %2185, %2164 ], [ %2143, %2186 ]
  %2190 = getelementptr inbounds nuw i8, ptr %2189, i64 8
  %2191 = getelementptr inbounds nuw i8, ptr %2144, i64 8
  %2192 = icmp ugt i64 %2142, 8
  br i1 %2192, label %2193, label %.loopexit141.i

2193:                                             ; preds = %2188
  %2194 = ptrtoint ptr %2191 to i64
  %2195 = ptrtoint ptr %2190 to i64
  %2196 = sub i64 %2194, %2195
  %2197 = getelementptr i8, ptr %2144, i64 %2142
  %2198 = icmp slt i64 %2196, 16
  br i1 %2198, label %2199, label %2240

2199:                                             ; preds = %2193
  %2200 = add i64 %2090, %132
  %2201 = tail call i64 @llvm.umin.i64(i64 %2092, i64 %2126)
  %2202 = tail call i64 @llvm.umax.i64(i64 %2092, i64 %2126)
  %2203 = sub i64 %2200, %2092
  %2204 = add i64 %2203, %2201
  %2205 = add i64 %2204, %2202
  %2206 = add i64 %2202, %1585
  %2207 = tail call i64 @llvm.umax.i64(i64 %2205, i64 %2206)
  %2208 = add i64 %2202, %132
  %reass.sub67 = sub i64 %2207, %2208
  %2209 = add i64 %reass.sub67, -9
  %2210 = lshr i64 %2209, 3
  %2211 = add nuw nsw i64 %2210, 1
  %2212 = icmp ult i64 %2209, 24
  %2213 = icmp ult i64 %2196, 32
  %2214 = or i1 %2212, %2213
  br i1 %2214, label %.preheader344, label %2215

2215:                                             ; preds = %2199
  %2216 = and i64 %2211, 4611686018427387900
  br label %2217

2217:                                             ; preds = %2217, %2215
  %2218 = phi i64 [ 0, %2215 ], [ %2226, %2217 ]
  %2219 = shl i64 %2218, 3
  %2220 = getelementptr i8, ptr %2191, i64 %2219
  %2221 = getelementptr i8, ptr %2190, i64 %2219
  %2222 = getelementptr i8, ptr %2221, i64 16
  %2223 = load <2 x i64>, ptr %2221, align 1
  %2224 = load <2 x i64>, ptr %2222, align 1
  %2225 = getelementptr i8, ptr %2220, i64 16
  store <2 x i64> %2223, ptr %2220, align 1
  store <2 x i64> %2224, ptr %2225, align 1
  %2226 = add nuw i64 %2218, 4
  %2227 = icmp eq i64 %2226, %2216
  br i1 %2227, label %2228, label %2217, !llvm.loop !120

2228:                                             ; preds = %2217
  %2229 = shl i64 %2216, 3
  %2230 = getelementptr i8, ptr %2191, i64 %2229
  %2231 = getelementptr i8, ptr %2190, i64 %2229
  %2232 = icmp eq i64 %2211, %2216
  br i1 %2232, label %.loopexit141.i, label %.preheader344

.preheader344:                                    ; preds = %2228, %2199
  %.ph345 = phi ptr [ %2230, %2228 ], [ %2191, %2199 ]
  %.ph346 = phi ptr [ %2231, %2228 ], [ %2190, %2199 ]
  br label %2233

2233:                                             ; preds = %.preheader344, %2233
  %2234 = phi ptr [ %2237, %2233 ], [ %.ph345, %.preheader344 ]
  %2235 = phi ptr [ %2238, %2233 ], [ %.ph346, %.preheader344 ]
  %2236 = load i64, ptr %2235, align 1
  store i64 %2236, ptr %2234, align 1
  %2237 = getelementptr inbounds nuw i8, ptr %2234, i64 8
  %2238 = getelementptr inbounds nuw i8, ptr %2235, i64 8
  %2239 = icmp ult ptr %2237, %2197
  br i1 %2239, label %2233, label %.loopexit141.i, !llvm.loop !121

2240:                                             ; preds = %2193
  %2241 = load <2 x i64>, ptr %2190, align 1, !tbaa !9
  store <2 x i64> %2241, ptr %2191, align 1, !tbaa !9
  %2242 = icmp ult i64 %2142, 25
  br i1 %2242, label %.loopexit141.i, label %2243

2243:                                             ; preds = %2240
  %2244 = getelementptr inbounds nuw i8, ptr %2144, i64 24
  br label %2245

2245:                                             ; preds = %2245, %2243
  %2246 = phi ptr [ %2244, %2243 ], [ %2253, %2245 ]
  %2247 = phi ptr [ %2190, %2243 ], [ %2251, %2245 ]
  %2248 = getelementptr inbounds nuw i8, ptr %2247, i64 16
  %2249 = load <2 x i64>, ptr %2248, align 1, !tbaa !9
  store <2 x i64> %2249, ptr %2246, align 1, !tbaa !9
  %2250 = getelementptr inbounds nuw i8, ptr %2246, i64 16
  %2251 = getelementptr inbounds nuw i8, ptr %2247, i64 32
  %2252 = load <2 x i64>, ptr %2251, align 1, !tbaa !9
  store <2 x i64> %2252, ptr %2250, align 1, !tbaa !9
  %2253 = getelementptr inbounds nuw i8, ptr %2246, i64 32
  %2254 = icmp ult ptr %2253, %2197
  br i1 %2254, label %2245, label %.loopexit141.i, !llvm.loop !97

.loopexit141.i:                                   ; preds = %2245, %2233, %2152, %2077, %2065, %1984, %2240, %2228, %2188, %2146, %2137, %2106, %2072, %2060, %2020, %1978, %1969, %1938
  %2255 = phi i64 [ %1939, %1938 ], [ %1929, %1969 ], [ %1929, %2020 ], [ %1929, %1978 ], [ %1929, %2072 ], [ %2107, %2106 ], [ %2095, %2137 ], [ %2095, %2188 ], [ %2095, %2146 ], [ %2095, %2240 ], [ %1929, %2060 ], [ %2095, %2228 ], [ %2095, %2233 ], [ %1929, %1984 ], [ %1929, %2065 ], [ %1929, %2077 ], [ %2095, %2152 ], [ %2095, %2245 ]
  %2256 = icmp ult i64 %2255, -119
  %2257 = getelementptr inbounds nuw i8, ptr %1595, i64 %2255
  br i1 %2256, label %2258, label %.loopexit149.i

2258:                                             ; preds = %.loopexit141.i, %.loopexit.i
  %2259 = phi ptr [ %1583, %.loopexit.i ], [ %1596, %.loopexit141.i ]
  %2260 = phi ptr [ %1920, %.loopexit.i ], [ %2257, %.loopexit141.i ]
  %2261 = add i32 %1594, 1
  %2262 = icmp eq i32 %2261, %51
  br i1 %2262, label %.loopexit150.i, label %1593, !llvm.loop !122

.loopexit149.i:                                   ; preds = %.loopexit158.i, %1411, %1240, %.loopexit151.i, %1063, %885, %.loopexit141.i, %2128, %1960, %.loopexit.i, %1791, %1613, %.loopexit168.i, %203, %191, %140, %116
  %2263 = phi i64 [ -20, %203 ], [ -20, %.loopexit168.i ], [ -20, %116 ], [ -20, %140 ], [ -20, %191 ], [ -20, %2128 ], [ -20, %1960 ], [ -20, %1791 ], [ %2255, %.loopexit141.i ], [ %1918, %.loopexit.i ], [ -70, %1613 ], [ -20, %1411 ], [ -20, %1240 ], [ -20, %1063 ], [ %1538, %.loopexit158.i ], [ %1190, %.loopexit151.i ], [ -70, %885 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %2308

2264:                                             ; preds = %.loopexit150.i, %104
  %2265 = phi ptr [ %1592, %.loopexit150.i ], [ %107, %104 ]
  %2266 = phi i32 [ %1591, %.loopexit150.i ], [ %96, %104 ]
  %2267 = phi ptr [ %1586, %.loopexit150.i ], [ %109, %104 ]
  %2268 = phi ptr [ %1587, %.loopexit150.i ], [ %1, %104 ]
  %2269 = icmp eq i32 %2266, 2
  br i1 %2269, label %2272, label %2270

2270:                                             ; preds = %2264
  %2271 = ptrtoint ptr %105 to i64
  br label %2288

2272:                                             ; preds = %2264
  %2273 = ptrtoint ptr %2267 to i64
  %2274 = ptrtoint ptr %2265 to i64
  %2275 = sub i64 %2273, %2274
  %2276 = ptrtoint ptr %105 to i64
  %2277 = ptrtoint ptr %2268 to i64
  %2278 = sub i64 %2276, %2277
  %2279 = icmp ugt i64 %2275, %2278
  br i1 %2279, label %2308, label %2280

2280:                                             ; preds = %2272
  %2281 = icmp eq ptr %2268, null
  br i1 %2281, label %2284, label %2282

2282:                                             ; preds = %2280
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2268, ptr align 1 %2265, i64 %2275, i1 false)
  %2283 = getelementptr inbounds nuw i8, ptr %2268, i64 %2275
  br label %2284

2284:                                             ; preds = %2282, %2280
  %2285 = phi ptr [ %2283, %2282 ], [ null, %2280 ]
  %2286 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %2287 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %2288

2288:                                             ; preds = %2284, %2270
  %2289 = phi i64 [ %2271, %2270 ], [ %2276, %2284 ]
  %2290 = phi ptr [ %2265, %2270 ], [ %2286, %2284 ]
  %2291 = phi ptr [ %2267, %2270 ], [ %2287, %2284 ]
  %2292 = phi ptr [ %2268, %2270 ], [ %2285, %2284 ]
  %2293 = ptrtoint ptr %2291 to i64
  %2294 = ptrtoint ptr %2290 to i64
  %2295 = sub i64 %2293, %2294
  %2296 = ptrtoint ptr %2292 to i64
  %2297 = sub i64 %2289, %2296
  %2298 = icmp ugt i64 %2295, %2297
  br i1 %2298, label %2308, label %2299

2299:                                             ; preds = %2288
  %2300 = icmp eq ptr %2292, null
  br i1 %2300, label %2304, label %2301

2301:                                             ; preds = %2299
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2292, ptr align 1 %2290, i64 %2295, i1 false)
  %2302 = getelementptr inbounds nuw i8, ptr %2292, i64 %2295
  %2303 = ptrtoint ptr %2302 to i64
  br label %2304

2304:                                             ; preds = %2301, %2299
  %2305 = phi i64 [ 0, %2299 ], [ %2303, %2301 ]
  %2306 = ptrtoint ptr %1 to i64
  %2307 = sub i64 %2305, %2306
  br label %2308

2308:                                             ; preds = %2304, %2288, %2272, %.loopexit149.i
  %2309 = phi i64 [ %2307, %2304 ], [ %2263, %.loopexit149.i ], [ -70, %2288 ], [ -70, %2272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %ZSTD_decompressSequencesLong.exit

2310:                                             ; preds = %85
  %2311 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %2312 = load i32, ptr %2311, align 8, !tbaa !35
  %2313 = icmp eq i32 %2312, 2
  br i1 %2313, label %2314, label %2316

2314:                                             ; preds = %2310
  %2315 = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %ZSTD_decompressSequencesLong.exit

2316:                                             ; preds = %2310
  %2317 = tail call fastcc i64 @ZSTD_decompressSequences(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %ZSTD_decompressSequencesLong.exit

ZSTD_decompressSequencesLong.exit:                ; preds = %2308, %92, %2316, %2314, %45, %33
  %2318 = phi i64 [ -70, %45 ], [ %2315, %2314 ], [ %2317, %2316 ], [ %43, %33 ], [ %93, %92 ], [ %2309, %2308 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %2319

2319:                                             ; preds = %ZSTD_decompressSequencesLong.exit, %21, %18
  %2320 = phi i64 [ %2318, %ZSTD_decompressSequencesLong.exit ], [ %22, %21 ], [ -72, %18 ]
  ret i64 %2320
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca %struct.seq_t, align 8
  %9 = alloca %struct.seq_t, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.seqState_t, align 8
  %12 = getelementptr i8, ptr %0, i64 30180
  %13 = load i32, ptr %12, align 4, !tbaa !31
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %1484

17:                                               ; preds = %6
  %18 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  store ptr %21, ptr %10, align 8, !tbaa !38
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = icmp eq i32 %5, 0
  br i1 %30, label %1437, label %31

31:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %32, align 4, !tbaa !62
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %35 = load i32, ptr %33, align 4, !tbaa !30
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %34, align 8, !tbaa !45
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %38 = load i32, ptr %37, align 4, !tbaa !30
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i64 %39, ptr %40, align 8, !tbaa !45
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %42 = load i32, ptr %41, align 4, !tbaa !30
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i64 %43, ptr %44, align 8, !tbaa !45
  %45 = icmp eq i64 %4, 0
  br i1 %45, label %.loopexit96, label %46

46:                                               ; preds = %31
  %47 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %3, ptr %47, align 8, !tbaa !72
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %48, ptr %49, align 8, !tbaa !74
  %50 = icmp ugt i64 %4, 7
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = add nsw i64 %4, -8
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %53, ptr %54, align 8, !tbaa !75
  %55 = load i64, ptr %53, align 1
  store i64 %55, ptr %11, align 8, !tbaa !76
  %56 = icmp ult i64 %55, 72057594037927936
  br i1 %56, label %.loopexit96, label %114

57:                                               ; preds = %46
  %58 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %58, align 8, !tbaa !75
  %59 = load i8, ptr %3, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  store i64 %60, ptr %11, align 8, !tbaa !76
  switch i64 %4, label %102 [
    i64 7, label %61
    i64 6, label %67
    i64 5, label %74
    i64 4, label %81
    i64 3, label %88
    i64 2, label %95
  ]

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 48
  %66 = or disjoint i64 %65, %60
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i64 [ %60, %57 ], [ %66, %61 ]
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 40
  %73 = add nuw nsw i64 %72, %68
  br label %74

74:                                               ; preds = %67, %57
  %75 = phi i64 [ %60, %57 ], [ %73, %67 ]
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 32
  %80 = add nuw nsw i64 %79, %75
  br label %81

81:                                               ; preds = %74, %57
  %82 = phi i64 [ %60, %57 ], [ %80, %74 ]
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 24
  %87 = add nuw nsw i64 %86, %82
  br label %88

88:                                               ; preds = %81, %57
  %89 = phi i64 [ %60, %57 ], [ %87, %81 ]
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 16
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %57
  %96 = phi i64 [ %60, %57 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 8
  %101 = add nuw nsw i64 %100, %96
  store i64 %101, ptr %11, align 8, !tbaa !76
  br label %102

102:                                              ; preds = %95, %57
  %103 = phi i64 [ %101, %95 ], [ %60, %57 ]
  %104 = getelementptr i8, ptr %3, i64 %4
  %105 = getelementptr i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %.loopexit96, label %108

108:                                              ; preds = %102
  %109 = zext i8 %106 to i32
  %110 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %109, i1 true)
  %111 = trunc nuw nsw i64 %4 to i32
  %112 = shl nuw nsw i32 %111, 3
  %reass.sub = sub nsw i32 %110, %112
  %113 = add nsw i32 %reass.sub, 41
  br label %121

114:                                              ; preds = %51
  %115 = lshr i64 %55, 56
  %116 = trunc nuw nsw i64 %115 to i32
  %117 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %116, i1 true)
  %118 = xor i32 %117, 31
  %119 = sub nuw nsw i32 8, %118
  %120 = icmp ult i64 %4, -119
  br i1 %120, label %121, label %.loopexit96

121:                                              ; preds = %114, %108
  %122 = phi ptr [ %3, %108 ], [ %53, %114 ]
  %123 = phi i64 [ 0, %108 ], [ %52, %114 ]
  %124 = phi i32 [ %113, %108 ], [ %119, %114 ]
  %125 = phi i64 [ %103, %108 ], [ %55, %114 ]
  %126 = getelementptr inbounds i8, ptr %3, i64 %123
  %127 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %128 = load ptr, ptr %0, align 8, !tbaa !77
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 4
  %130 = load i32, ptr %129, align 4, !tbaa !63
  %131 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %132 = add i32 %130, %124
  %133 = sub i32 0, %132
  %134 = and i32 %133, 63
  %135 = zext nneg i32 %134 to i64
  %136 = lshr i64 %125, %135
  %137 = zext nneg i32 %130 to i64
  %138 = shl nsw i64 -1, %137
  %139 = xor i64 %138, -1
  %140 = and i64 %136, %139
  store i64 %140, ptr %127, align 8, !tbaa !78
  %141 = icmp ugt i32 %132, 64
  %142 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %141, label %143, label %144, !prof !52

143:                                              ; preds = %121
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75
  br label %166

144:                                              ; preds = %121
  %145 = icmp slt i64 %123, 8
  br i1 %145, label %153, label %146

146:                                              ; preds = %144
  %147 = lshr i32 %132, 3
  %148 = zext nneg i32 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = getelementptr inbounds i8, ptr %126, i64 %149
  store ptr %150, ptr %142, align 8, !tbaa !75
  %151 = and i32 %132, 7
  store i32 %151, ptr %131, align 8, !tbaa !80
  %152 = load i64, ptr %150, align 1, !tbaa !45
  store i64 %152, ptr %11, align 8, !tbaa !76
  br label %166

153:                                              ; preds = %144
  %154 = icmp eq i64 %123, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %153
  %156 = lshr i32 %132, 3
  %157 = zext nneg i32 %156 to i64
  %158 = tail call i64 @llvm.smin.i64(i64 %123, i64 %157)
  %159 = trunc i64 %158 to i32
  %160 = and i64 %158, 4294967295
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %126, i64 %161
  store ptr %162, ptr %142, align 8, !tbaa !75
  %163 = shl i32 %159, 3
  %164 = sub i32 %132, %163
  store i32 %164, ptr %131, align 8, !tbaa !80
  %165 = load i64, ptr %162, align 1, !tbaa !45
  store i64 %165, ptr %11, align 8, !tbaa !76
  br label %166

166:                                              ; preds = %155, %153, %146, %143
  %167 = phi ptr [ @BIT_reloadDStream.zeroFilled, %143 ], [ %150, %146 ], [ %122, %153 ], [ %162, %155 ]
  %168 = phi ptr [ @BIT_reloadDStream.zeroFilled, %143 ], [ %150, %146 ], [ %3, %153 ], [ %162, %155 ]
  %169 = phi i32 [ %132, %143 ], [ %151, %146 ], [ %132, %153 ], [ %164, %155 ]
  %170 = phi i64 [ %125, %143 ], [ %152, %146 ], [ %125, %153 ], [ %165, %155 ]
  %171 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %172 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %171, ptr %172, align 8, !tbaa !81
  %173 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %175 = load ptr, ptr %174, align 8, !tbaa !68
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %177 = load i32, ptr %176, align 4, !tbaa !63
  %178 = add i32 %177, %169
  %179 = sub i32 0, %178
  %180 = and i32 %179, 63
  %181 = zext nneg i32 %180 to i64
  %182 = lshr i64 %170, %181
  %183 = zext nneg i32 %177 to i64
  %184 = shl nsw i64 -1, %183
  %185 = xor i64 %184, -1
  %186 = and i64 %182, %185
  store i64 %186, ptr %173, align 8, !tbaa !78
  %187 = icmp ugt i32 %178, 64
  br i1 %187, label %188, label %189, !prof !52

188:                                              ; preds = %166
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75
  br label %217

189:                                              ; preds = %166
  %190 = icmp ult ptr %168, %48
  br i1 %190, label %198, label %191

191:                                              ; preds = %189
  %192 = lshr i32 %178, 3
  %193 = zext nneg i32 %192 to i64
  %194 = sub nsw i64 0, %193
  %195 = getelementptr inbounds i8, ptr %168, i64 %194
  store ptr %195, ptr %142, align 8, !tbaa !75
  %196 = and i32 %178, 7
  %197 = load i64, ptr %195, align 1, !tbaa !45
  store i64 %197, ptr %11, align 8, !tbaa !76
  br label %217

198:                                              ; preds = %189
  %199 = icmp eq ptr %168, %3
  br i1 %199, label %217, label %200

200:                                              ; preds = %198
  %201 = lshr i32 %178, 3
  %202 = zext nneg i32 %201 to i64
  %203 = sub nsw i64 0, %202
  %204 = getelementptr inbounds i8, ptr %168, i64 %203
  %205 = icmp ult ptr %204, %3
  %206 = ptrtoint ptr %168 to i64
  %207 = ptrtoint ptr %3 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = select i1 %205, i32 %209, i32 %201
  %211 = zext i32 %210 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, ptr %168, i64 %212
  store ptr %213, ptr %142, align 8, !tbaa !75
  %214 = shl i32 %210, 3
  %215 = sub i32 %178, %214
  %216 = load i64, ptr %213, align 1, !tbaa !45
  store i64 %216, ptr %11, align 8, !tbaa !76
  br label %217

217:                                              ; preds = %200, %198, %191, %188
  %218 = phi ptr [ @BIT_reloadDStream.zeroFilled, %188 ], [ %195, %191 ], [ %167, %198 ], [ %213, %200 ]
  %219 = phi ptr [ @BIT_reloadDStream.zeroFilled, %188 ], [ %195, %191 ], [ %168, %198 ], [ %213, %200 ]
  %220 = phi i32 [ %178, %188 ], [ %196, %191 ], [ %178, %198 ], [ %215, %200 ]
  %221 = phi i64 [ %170, %188 ], [ %197, %191 ], [ %170, %198 ], [ %216, %200 ]
  %222 = getelementptr inbounds nuw i8, ptr %175, i64 8
  %223 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %222, ptr %223, align 8, !tbaa !81
  %224 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %226 = load ptr, ptr %225, align 8, !tbaa !82
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 4
  %228 = load i32, ptr %227, align 4, !tbaa !63
  %229 = add i32 %228, %220
  %230 = sub i32 0, %229
  %231 = and i32 %230, 63
  %232 = zext nneg i32 %231 to i64
  %233 = lshr i64 %221, %232
  %234 = zext nneg i32 %228 to i64
  %235 = shl nsw i64 -1, %234
  %236 = xor i64 %235, -1
  %237 = and i64 %233, %236
  store i32 %229, ptr %131, align 8, !tbaa !80
  store i64 %237, ptr %224, align 8, !tbaa !78
  %238 = icmp ugt i32 %229, 64
  br i1 %238, label %239, label %240, !prof !52

239:                                              ; preds = %217
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75
  br label %268

240:                                              ; preds = %217
  %241 = icmp ult ptr %219, %48
  br i1 %241, label %249, label %242

242:                                              ; preds = %240
  %243 = lshr i32 %229, 3
  %244 = zext nneg i32 %243 to i64
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %219, i64 %245
  store ptr %246, ptr %142, align 8, !tbaa !75
  %247 = and i32 %229, 7
  store i32 %247, ptr %131, align 8, !tbaa !80
  %248 = load i64, ptr %246, align 1, !tbaa !45
  store i64 %248, ptr %11, align 8, !tbaa !76
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
  store ptr %264, ptr %142, align 8, !tbaa !75
  %265 = shl i32 %261, 3
  %266 = sub i32 %229, %265
  store i32 %266, ptr %131, align 8, !tbaa !80
  %267 = load i64, ptr %264, align 1, !tbaa !45
  store i64 %267, ptr %11, align 8, !tbaa !76
  br label %268

268:                                              ; preds = %251, %249, %242, %239
  %269 = phi ptr [ %264, %251 ], [ %218, %249 ], [ %246, %242 ], [ @BIT_reloadDStream.zeroFilled, %239 ]
  %270 = phi i32 [ %266, %251 ], [ %229, %249 ], [ %247, %242 ], [ %229, %239 ]
  %271 = phi i64 [ %267, %251 ], [ %221, %249 ], [ %248, %242 ], [ %221, %239 ]
  %272 = getelementptr inbounds nuw i8, ptr %226, i64 8
  %273 = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %272, ptr %273, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !123
  %274 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %275 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %276 = ptrtoint ptr %25 to i64
  %277 = ptrtoint ptr %27 to i64
  %278 = ptrtoint ptr %3 to i64
  %279 = add i64 %276, 16
  br label %280

280:                                              ; preds = %690, %268
  %281 = phi ptr [ %269, %268 ], [ %514, %690 ]
  %282 = phi i32 [ %270, %268 ], [ %515, %690 ]
  %283 = phi i64 [ %271, %268 ], [ %516, %690 ]
  %284 = phi i64 [ %43, %268 ], [ %372, %690 ]
  %285 = phi i64 [ %39, %268 ], [ %370, %690 ]
  %286 = phi i64 [ %36, %268 ], [ %371, %690 ]
  %287 = phi i64 [ %237, %268 ], [ %521, %690 ]
  %288 = phi i64 [ %186, %268 ], [ %520, %690 ]
  %289 = phi i64 [ %140, %268 ], [ %519, %690 ]
  %290 = phi i32 [ %5, %268 ], [ %691, %690 ]
  %291 = phi ptr [ %1, %268 ], [ %685, %690 ]
  %292 = icmp eq i32 %290, 1
  %293 = getelementptr inbounds nuw [8 x i8], ptr %171, i64 %289
  %294 = getelementptr inbounds nuw [8 x i8], ptr %272, i64 %287
  %295 = getelementptr inbounds nuw [8 x i8], ptr %222, i64 %288
  %296 = getelementptr inbounds nuw i8, ptr %294, i64 4
  %297 = load i32, ptr %296, align 4, !tbaa !41, !noalias !124
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds nuw i8, ptr %293, i64 4
  %300 = load i32, ptr %299, align 4, !tbaa !41, !noalias !124
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %295, i64 4
  %303 = load i32, ptr %302, align 4, !tbaa !41, !noalias !124
  %304 = getelementptr inbounds nuw i8, ptr %293, i64 2
  %305 = load i8, ptr %304, align 2, !tbaa !58, !noalias !124
  %306 = getelementptr inbounds nuw i8, ptr %294, i64 2
  %307 = load i8, ptr %306, align 2, !tbaa !58, !noalias !124
  %308 = getelementptr inbounds nuw i8, ptr %295, i64 2
  %309 = load i8, ptr %308, align 2, !tbaa !58, !noalias !124
  %310 = zext i8 %305 to i32
  %311 = zext i8 %307 to i32
  %312 = add i8 %307, %305
  %313 = add i8 %312, %309
  %314 = load i16, ptr %293, align 4, !tbaa !57, !noalias !124
  %315 = load i16, ptr %294, align 4, !tbaa !57, !noalias !124
  %316 = load i16, ptr %295, align 4, !tbaa !57, !noalias !124
  %317 = getelementptr inbounds nuw i8, ptr %293, i64 3
  %318 = load i8, ptr %317, align 1, !tbaa !56, !noalias !124
  %319 = zext i8 %318 to i32
  %320 = getelementptr inbounds nuw i8, ptr %294, i64 3
  %321 = load i8, ptr %320, align 1, !tbaa !56, !noalias !124
  %322 = zext i8 %321 to i32
  %323 = getelementptr inbounds nuw i8, ptr %295, i64 3
  %324 = load i8, ptr %323, align 1, !tbaa !56, !noalias !124
  %325 = zext i8 %324 to i32
  %326 = icmp ugt i8 %309, 1
  br i1 %326, label %327, label %339

327:                                              ; preds = %280
  %328 = zext i8 %309 to i32
  %329 = and i32 %282, 63
  %330 = zext nneg i32 %329 to i64
  %331 = shl i64 %283, %330
  %332 = sub nsw i32 0, %328
  %333 = and i32 %332, 63
  %334 = zext nneg i32 %333 to i64
  %335 = lshr i64 %331, %334
  %336 = add i32 %282, %328
  store i32 %336, ptr %131, align 8, !tbaa !80, !noalias !124
  %337 = zext i32 %303 to i64
  %338 = add i64 %335, %337
  store i64 %285, ptr %44, align 8, !tbaa !45, !noalias !124
  br label %368

339:                                              ; preds = %280
  %340 = icmp eq i32 %300, 0
  %341 = icmp eq i8 %309, 0
  br i1 %341, label %342, label %345, !prof !87

342:                                              ; preds = %339
  %343 = select i1 %340, i64 %285, i64 %286
  %344 = select i1 %340, i64 %286, i64 %285
  br label %368

345:                                              ; preds = %339
  %346 = zext i1 %340 to i32
  %347 = add i32 %303, %346
  %348 = zext i32 %347 to i64
  %349 = and i32 %282, 63
  %350 = zext nneg i32 %349 to i64
  %351 = shl i64 %283, %350
  %352 = lshr i64 %351, 63
  %353 = add i32 %282, 1
  store i32 %353, ptr %131, align 8, !tbaa !80, !noalias !124
  %354 = add nuw nsw i64 %352, %348
  %355 = icmp eq i64 %354, 3
  br i1 %355, label %356, label %360

356:                                              ; preds = %345
  %357 = add i64 %286, -1
  %358 = icmp eq i64 %357, 0
  %359 = select i1 %358, i64 -1, i64 %357
  br label %366

360:                                              ; preds = %345
  %361 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %354
  %362 = load i64, ptr %361, align 8, !tbaa !45, !noalias !124
  %363 = icmp eq i64 %362, 0
  %364 = select i1 %363, i64 -1, i64 %362
  %365 = icmp eq i64 %354, 1
  br i1 %365, label %368, label %366

366:                                              ; preds = %360, %356
  %367 = phi i64 [ %359, %356 ], [ %364, %360 ]
  store i64 %285, ptr %44, align 8, !tbaa !45, !noalias !124
  br label %368

368:                                              ; preds = %366, %360, %342, %327
  %369 = phi i32 [ %282, %342 ], [ %336, %327 ], [ %353, %366 ], [ %353, %360 ]
  %370 = phi i64 [ %344, %342 ], [ %286, %327 ], [ %286, %366 ], [ %286, %360 ]
  %371 = phi i64 [ %343, %342 ], [ %338, %327 ], [ %367, %366 ], [ %364, %360 ]
  %372 = phi i64 [ %284, %342 ], [ %285, %327 ], [ %285, %366 ], [ %284, %360 ]
  %373 = sub i64 0, %371
  store i64 %370, ptr %40, align 8, !tbaa !45, !noalias !124
  store i64 %371, ptr %34, align 8, !tbaa !45, !noalias !124
  %374 = icmp eq i8 %307, 0
  br i1 %374, label %385, label %375

375:                                              ; preds = %368
  %376 = and i32 %369, 63
  %377 = zext nneg i32 %376 to i64
  %378 = shl i64 %283, %377
  %379 = sub nsw i32 0, %311
  %380 = and i32 %379, 63
  %381 = zext nneg i32 %380 to i64
  %382 = lshr i64 %378, %381
  %383 = add i32 %369, %311
  store i32 %383, ptr %131, align 8, !tbaa !80, !noalias !124
  %384 = add i64 %382, %298
  br label %385

385:                                              ; preds = %375, %368
  %386 = phi i32 [ %369, %368 ], [ %383, %375 ]
  %387 = phi i64 [ %298, %368 ], [ %384, %375 ]
  %388 = icmp ugt i8 %313, 30
  br i1 %388, label %389, label %419, !prof !52

389:                                              ; preds = %385
  %390 = icmp ugt i32 %386, 64
  br i1 %390, label %391, label %392, !prof !52

391:                                              ; preds = %389
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75, !noalias !124
  br label %419

392:                                              ; preds = %389
  %393 = icmp ult ptr %281, %48
  br i1 %393, label %401, label %394

394:                                              ; preds = %392
  %395 = lshr i32 %386, 3
  %396 = zext nneg i32 %395 to i64
  %397 = sub nsw i64 0, %396
  %398 = getelementptr inbounds i8, ptr %281, i64 %397
  store ptr %398, ptr %142, align 8, !tbaa !75, !noalias !124
  %399 = and i32 %386, 7
  store i32 %399, ptr %131, align 8, !tbaa !80, !noalias !124
  %400 = load i64, ptr %398, align 1, !tbaa !45, !noalias !124
  store i64 %400, ptr %11, align 8, !tbaa !76, !noalias !124
  br label %419

401:                                              ; preds = %392
  %402 = icmp eq ptr %281, %3
  br i1 %402, label %419, label %403

403:                                              ; preds = %401
  %404 = lshr i32 %386, 3
  %405 = zext nneg i32 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %281, i64 %406
  %408 = icmp ult ptr %407, %3
  %409 = ptrtoint ptr %281 to i64
  %410 = sub i64 %409, %278
  %411 = trunc i64 %410 to i32
  %412 = select i1 %408, i32 %411, i32 %404
  %413 = zext i32 %412 to i64
  %414 = sub nsw i64 0, %413
  %415 = getelementptr inbounds i8, ptr %281, i64 %414
  store ptr %415, ptr %142, align 8, !tbaa !75, !noalias !124
  %416 = shl i32 %412, 3
  %417 = sub i32 %386, %416
  store i32 %417, ptr %131, align 8, !tbaa !80, !noalias !124
  %418 = load i64, ptr %415, align 1, !tbaa !45, !noalias !124
  store i64 %418, ptr %11, align 8, !tbaa !76, !noalias !124
  br label %419

419:                                              ; preds = %403, %401, %394, %391, %385
  %420 = phi ptr [ %415, %403 ], [ %281, %401 ], [ %398, %394 ], [ @BIT_reloadDStream.zeroFilled, %391 ], [ %281, %385 ]
  %421 = phi i32 [ %417, %403 ], [ %386, %401 ], [ %399, %394 ], [ %386, %391 ], [ %386, %385 ]
  %422 = phi i64 [ %418, %403 ], [ %283, %401 ], [ %400, %394 ], [ %283, %391 ], [ %283, %385 ]
  %423 = icmp eq i8 %305, 0
  br i1 %423, label %434, label %424

424:                                              ; preds = %419
  %425 = and i32 %421, 63
  %426 = zext nneg i32 %425 to i64
  %427 = shl i64 %422, %426
  %428 = sub nsw i32 0, %310
  %429 = and i32 %428, 63
  %430 = zext nneg i32 %429 to i64
  %431 = lshr i64 %427, %430
  %432 = add i32 %421, %310
  store i32 %432, ptr %131, align 8, !tbaa !80, !noalias !124
  %433 = add i64 %431, %301
  br label %434

434:                                              ; preds = %424, %419
  %435 = phi i32 [ %421, %419 ], [ %432, %424 ]
  %436 = phi i64 [ %301, %419 ], [ %433, %424 ]
  br i1 %292, label %508, label %437

437:                                              ; preds = %434
  %438 = add i32 %435, %319
  %439 = sub i32 0, %438
  %440 = and i32 %439, 63
  %441 = zext nneg i32 %440 to i64
  %442 = lshr i64 %422, %441
  %443 = zext nneg i8 %318 to i64
  %444 = shl nsw i64 -1, %443
  %445 = xor i64 %444, -1
  %446 = and i64 %442, %445
  %447 = zext i16 %314 to i64
  %448 = add nuw i64 %446, %447
  store i64 %448, ptr %127, align 8, !tbaa !78, !noalias !124
  %449 = add i32 %438, %322
  %450 = sub i32 0, %449
  %451 = and i32 %450, 63
  %452 = zext nneg i32 %451 to i64
  %453 = lshr i64 %422, %452
  %454 = zext nneg i8 %321 to i64
  %455 = shl nsw i64 -1, %454
  %456 = xor i64 %455, -1
  %457 = and i64 %453, %456
  %458 = zext i16 %315 to i64
  %459 = add nuw i64 %457, %458
  store i64 %459, ptr %224, align 8, !tbaa !78, !noalias !124
  %460 = add i32 %449, %325
  %461 = sub i32 0, %460
  %462 = and i32 %461, 63
  %463 = zext nneg i32 %462 to i64
  %464 = lshr i64 %422, %463
  %465 = zext nneg i8 %324 to i64
  %466 = shl nsw i64 -1, %465
  %467 = xor i64 %466, -1
  %468 = and i64 %464, %467
  store i32 %460, ptr %131, align 8, !tbaa !80, !noalias !124
  %469 = zext i16 %316 to i64
  %470 = add nuw i64 %468, %469
  store i64 %470, ptr %173, align 8, !tbaa !78, !noalias !124
  %471 = icmp ugt i32 %460, 64
  br i1 %471, label %472, label %473, !prof !52

472:                                              ; preds = %437
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75, !noalias !124
  br label %500

473:                                              ; preds = %437
  %474 = icmp ult ptr %420, %48
  br i1 %474, label %482, label %475

475:                                              ; preds = %473
  %476 = lshr i32 %460, 3
  %477 = zext nneg i32 %476 to i64
  %478 = sub nsw i64 0, %477
  %479 = getelementptr inbounds i8, ptr %420, i64 %478
  store ptr %479, ptr %142, align 8, !tbaa !75, !noalias !124
  %480 = and i32 %460, 7
  store i32 %480, ptr %131, align 8, !tbaa !80, !noalias !124
  %481 = load i64, ptr %479, align 1, !tbaa !45, !noalias !124
  store i64 %481, ptr %11, align 8, !tbaa !76, !noalias !124
  br label %500

482:                                              ; preds = %473
  %483 = icmp eq ptr %420, %3
  br i1 %483, label %500, label %484

484:                                              ; preds = %482
  %485 = lshr i32 %460, 3
  %486 = zext nneg i32 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %420, i64 %487
  %489 = icmp ult ptr %488, %3
  %490 = ptrtoint ptr %420 to i64
  %491 = sub i64 %490, %278
  %492 = trunc i64 %491 to i32
  %493 = select i1 %489, i32 %492, i32 %485
  %494 = zext i32 %493 to i64
  %495 = sub nsw i64 0, %494
  %496 = getelementptr inbounds i8, ptr %420, i64 %495
  store ptr %496, ptr %142, align 8, !tbaa !75, !noalias !124
  %497 = shl i32 %493, 3
  %498 = sub i32 %460, %497
  store i32 %498, ptr %131, align 8, !tbaa !80, !noalias !124
  %499 = load i64, ptr %496, align 1, !tbaa !45, !noalias !124
  store i64 %499, ptr %11, align 8, !tbaa !76, !noalias !124
  br label %500

500:                                              ; preds = %484, %482, %475, %472
  %501 = phi ptr [ %496, %484 ], [ %420, %482 ], [ %479, %475 ], [ @BIT_reloadDStream.zeroFilled, %472 ]
  %502 = phi i32 [ %498, %484 ], [ %460, %482 ], [ %480, %475 ], [ %460, %472 ]
  %503 = phi i64 [ %499, %484 ], [ %422, %482 ], [ %481, %475 ], [ %422, %472 ]
  %504 = load ptr, ptr %10, align 8, !tbaa !38
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 %436
  %506 = load ptr, ptr %22, align 8, !tbaa !34
  %507 = icmp ugt ptr %505, %506
  br i1 %507, label %693, label %513

508:                                              ; preds = %434
  %509 = load ptr, ptr %10, align 8, !tbaa !38
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 %436
  %511 = load ptr, ptr %22, align 8, !tbaa !34
  %512 = icmp ugt ptr %510, %511
  br i1 %512, label %.loopexit109, label %513

513:                                              ; preds = %508, %500
  %514 = phi ptr [ %420, %508 ], [ %501, %500 ]
  %515 = phi i32 [ %435, %508 ], [ %502, %500 ]
  %516 = phi i64 [ %422, %508 ], [ %503, %500 ]
  %517 = phi ptr [ %510, %508 ], [ %505, %500 ]
  %518 = phi ptr [ %509, %508 ], [ %504, %500 ]
  %519 = phi i64 [ %289, %508 ], [ %448, %500 ]
  %520 = phi i64 [ %288, %508 ], [ %470, %500 ]
  %521 = phi i64 [ %287, %508 ], [ %459, %500 ]
  %522 = getelementptr inbounds i8, ptr %517, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %436, ptr %7, align 8
  store i64 %387, ptr %274, align 8
  store i64 %371, ptr %275, align 8
  %523 = getelementptr i8, ptr %291, i64 %436
  %524 = add i64 %436, %387
  %525 = getelementptr inbounds i8, ptr %523, i64 %373
  %526 = icmp ugt ptr %517, %23
  %527 = getelementptr inbounds nuw i8, ptr %291, i64 %524
  %528 = icmp ugt ptr %527, %522
  %529 = select i1 %526, i1 true, i1 %528
  br i1 %529, label %533, label %530, !prof !101

530:                                              ; preds = %513
  %531 = load <2 x i64>, ptr %518, align 1, !tbaa !9
  store <2 x i64> %531, ptr %291, align 1, !tbaa !9
  %532 = icmp ugt i64 %436, 16
  br i1 %532, label %535, label %.loopexit108, !prof !52

533:                                              ; preds = %513
  %534 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %291, ptr noundef %19, ptr noundef nonnull %522, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %10, ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %.loopexit105

535:                                              ; preds = %530
  %536 = getelementptr inbounds nuw i8, ptr %291, i64 16
  %537 = getelementptr inbounds nuw i8, ptr %518, i64 16
  %538 = load <2 x i64>, ptr %537, align 1, !tbaa !9
  store <2 x i64> %538, ptr %536, align 1, !tbaa !9
  %539 = icmp ult i64 %436, 33
  br i1 %539, label %.loopexit108, label %540

540:                                              ; preds = %535
  %541 = getelementptr inbounds nuw i8, ptr %291, i64 32
  br label %542

542:                                              ; preds = %542, %540
  %543 = phi ptr [ %541, %540 ], [ %550, %542 ]
  %544 = phi ptr [ %537, %540 ], [ %548, %542 ]
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 16
  %546 = load <2 x i64>, ptr %545, align 1, !tbaa !9
  store <2 x i64> %546, ptr %543, align 1, !tbaa !9
  %547 = getelementptr inbounds nuw i8, ptr %543, i64 16
  %548 = getelementptr inbounds nuw i8, ptr %544, i64 32
  %549 = load <2 x i64>, ptr %548, align 1, !tbaa !9
  store <2 x i64> %549, ptr %547, align 1, !tbaa !9
  %550 = getelementptr inbounds nuw i8, ptr %543, i64 32
  %551 = icmp ult ptr %550, %523
  br i1 %551, label %542, label %.loopexit108, !llvm.loop !97

.loopexit108:                                     ; preds = %542, %535, %530
  store ptr %517, ptr %10, align 8, !tbaa !38
  %552 = ptrtoint ptr %523 to i64
  %553 = sub i64 %552, %276
  %554 = icmp ugt i64 %371, %553
  br i1 %554, label %555, label %569

555:                                              ; preds = %.loopexit108
  %556 = sub i64 %552, %277
  %557 = icmp ugt i64 %371, %556
  br i1 %557, label %558, label %559, !prof !52

558:                                              ; preds = %555
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit96

559:                                              ; preds = %555
  %560 = ptrtoint ptr %525 to i64
  %561 = sub i64 %560, %276
  %562 = getelementptr inbounds i8, ptr %29, i64 %561
  %563 = add nsw i64 %561, %387
  %564 = icmp sgt i64 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %559
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %523, ptr align 1 %562, i64 %387, i1 false)
  br label %.loopexit105

566:                                              ; preds = %559
  %567 = sub nsw i64 0, %561
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %523, ptr align 1 %562, i64 %567, i1 false)
  %568 = getelementptr inbounds nuw i8, ptr %523, i64 %567
  store i64 %563, ptr %274, align 8, !tbaa !127
  br label %569

569:                                              ; preds = %566, %.loopexit108
  %570 = phi ptr [ %25, %566 ], [ %525, %.loopexit108 ]
  %571 = phi ptr [ %568, %566 ], [ %523, %.loopexit108 ]
  %572 = phi i64 [ %563, %566 ], [ %387, %.loopexit108 ]
  %573 = icmp ugt i64 %371, 15
  br i1 %573, label %574, label %590, !prof !87

574:                                              ; preds = %569
  %575 = getelementptr inbounds nuw i8, ptr %571, i64 %572
  %576 = load <2 x i64>, ptr %570, align 1, !tbaa !9
  store <2 x i64> %576, ptr %571, align 1, !tbaa !9
  %577 = icmp ult i64 %572, 17
  br i1 %577, label %.loopexit105, label %578

578:                                              ; preds = %574
  %579 = getelementptr inbounds nuw i8, ptr %571, i64 16
  br label %580

580:                                              ; preds = %580, %578
  %581 = phi ptr [ %579, %578 ], [ %588, %580 ]
  %582 = phi ptr [ %570, %578 ], [ %586, %580 ]
  %583 = getelementptr inbounds nuw i8, ptr %582, i64 16
  %584 = load <2 x i64>, ptr %583, align 1, !tbaa !9
  store <2 x i64> %584, ptr %581, align 1, !tbaa !9
  %585 = getelementptr inbounds nuw i8, ptr %581, i64 16
  %586 = getelementptr inbounds nuw i8, ptr %582, i64 32
  %587 = load <2 x i64>, ptr %586, align 1, !tbaa !9
  store <2 x i64> %587, ptr %585, align 1, !tbaa !9
  %588 = getelementptr inbounds nuw i8, ptr %581, i64 32
  %589 = icmp ult ptr %588, %575
  br i1 %589, label %580, label %.loopexit105, !llvm.loop !97

590:                                              ; preds = %569
  %591 = icmp samesign ult i64 %371, 8
  br i1 %591, label %592, label %614

592:                                              ; preds = %590
  %593 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %371
  %594 = load i32, ptr %593, align 4, !tbaa !30
  %595 = load i8, ptr %570, align 1, !tbaa !9
  store i8 %595, ptr %571, align 1, !tbaa !9
  %596 = getelementptr inbounds nuw i8, ptr %570, i64 1
  %597 = load i8, ptr %596, align 1, !tbaa !9
  %598 = getelementptr inbounds nuw i8, ptr %571, i64 1
  store i8 %597, ptr %598, align 1, !tbaa !9
  %599 = getelementptr inbounds nuw i8, ptr %570, i64 2
  %600 = load i8, ptr %599, align 1, !tbaa !9
  %601 = getelementptr inbounds nuw i8, ptr %571, i64 2
  store i8 %600, ptr %601, align 1, !tbaa !9
  %602 = getelementptr inbounds nuw i8, ptr %570, i64 3
  %603 = load i8, ptr %602, align 1, !tbaa !9
  %604 = getelementptr inbounds nuw i8, ptr %571, i64 3
  store i8 %603, ptr %604, align 1, !tbaa !9
  %605 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %371
  %606 = load i32, ptr %605, align 4, !tbaa !30
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds nuw i8, ptr %570, i64 %607
  %609 = getelementptr inbounds nuw i8, ptr %571, i64 4
  %610 = load i32, ptr %608, align 1
  store i32 %610, ptr %609, align 1
  %611 = sext i32 %594 to i64
  %612 = sub nsw i64 0, %611
  %613 = getelementptr inbounds i8, ptr %608, i64 %612
  br label %616

614:                                              ; preds = %590
  %615 = load i64, ptr %570, align 1
  store i64 %615, ptr %571, align 1
  br label %616

616:                                              ; preds = %614, %592
  %617 = phi ptr [ %613, %592 ], [ %570, %614 ]
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 8
  %619 = getelementptr inbounds nuw i8, ptr %571, i64 8
  %620 = icmp ugt i64 %572, 8
  br i1 %620, label %621, label %.loopexit105

621:                                              ; preds = %616
  %622 = ptrtoint ptr %619 to i64
  %623 = ptrtoint ptr %618 to i64
  %624 = sub i64 %622, %623
  %625 = getelementptr i8, ptr %571, i64 %572
  %626 = icmp slt i64 %624, 16
  br i1 %626, label %627, label %668

627:                                              ; preds = %621
  %628 = tail call i64 @llvm.umin.i64(i64 %371, i64 %553)
  %629 = tail call i64 @llvm.umax.i64(i64 %371, i64 %553)
  %630 = sub i64 %276, %371
  %631 = add i64 %630, %387
  %632 = add i64 %631, %628
  %633 = add i64 %632, %629
  %634 = add i64 %629, %279
  %635 = tail call i64 @llvm.umax.i64(i64 %633, i64 %634)
  %636 = add i64 %629, %276
  %reass.sub237 = sub i64 %635, %636
  %637 = add i64 %reass.sub237, -9
  %638 = lshr i64 %637, 3
  %639 = add nuw nsw i64 %638, 1
  %640 = icmp ult i64 %637, 24
  %641 = icmp ult i64 %624, 32
  %642 = or i1 %640, %641
  br i1 %642, label %.preheader762, label %643

643:                                              ; preds = %627
  %644 = and i64 %639, 4611686018427387900
  br label %645

645:                                              ; preds = %645, %643
  %646 = phi i64 [ 0, %643 ], [ %654, %645 ]
  %647 = shl i64 %646, 3
  %648 = getelementptr i8, ptr %619, i64 %647
  %649 = getelementptr i8, ptr %618, i64 %647
  %650 = getelementptr i8, ptr %649, i64 16
  %651 = load <2 x i64>, ptr %649, align 1
  %652 = load <2 x i64>, ptr %650, align 1
  %653 = getelementptr i8, ptr %648, i64 16
  store <2 x i64> %651, ptr %648, align 1
  store <2 x i64> %652, ptr %653, align 1
  %654 = add nuw i64 %646, 4
  %655 = icmp eq i64 %654, %644
  br i1 %655, label %656, label %645, !llvm.loop !128

656:                                              ; preds = %645
  %657 = shl i64 %644, 3
  %658 = getelementptr i8, ptr %619, i64 %657
  %659 = getelementptr i8, ptr %618, i64 %657
  %660 = icmp eq i64 %639, %644
  br i1 %660, label %.loopexit105, label %.preheader762

.preheader762:                                    ; preds = %656, %627
  %.ph763 = phi ptr [ %658, %656 ], [ %619, %627 ]
  %.ph764 = phi ptr [ %659, %656 ], [ %618, %627 ]
  br label %661

661:                                              ; preds = %.preheader762, %661
  %662 = phi ptr [ %665, %661 ], [ %.ph763, %.preheader762 ]
  %663 = phi ptr [ %666, %661 ], [ %.ph764, %.preheader762 ]
  %664 = load i64, ptr %663, align 1
  store i64 %664, ptr %662, align 1
  %665 = getelementptr inbounds nuw i8, ptr %662, i64 8
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 8
  %667 = icmp ult ptr %665, %625
  br i1 %667, label %661, label %.loopexit105, !llvm.loop !129

668:                                              ; preds = %621
  %669 = load <2 x i64>, ptr %618, align 1, !tbaa !9
  store <2 x i64> %669, ptr %619, align 1, !tbaa !9
  %670 = icmp ult i64 %572, 25
  br i1 %670, label %.loopexit105, label %671

671:                                              ; preds = %668
  %672 = getelementptr inbounds nuw i8, ptr %571, i64 24
  br label %673

673:                                              ; preds = %673, %671
  %674 = phi ptr [ %672, %671 ], [ %681, %673 ]
  %675 = phi ptr [ %618, %671 ], [ %679, %673 ]
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 16
  %677 = load <2 x i64>, ptr %676, align 1, !tbaa !9
  store <2 x i64> %677, ptr %674, align 1, !tbaa !9
  %678 = getelementptr inbounds nuw i8, ptr %674, i64 16
  %679 = getelementptr inbounds nuw i8, ptr %675, i64 32
  %680 = load <2 x i64>, ptr %679, align 1, !tbaa !9
  store <2 x i64> %680, ptr %678, align 1, !tbaa !9
  %681 = getelementptr inbounds nuw i8, ptr %674, i64 32
  %682 = icmp ult ptr %681, %625
  br i1 %682, label %673, label %.loopexit105, !llvm.loop !97

.loopexit105:                                     ; preds = %673, %661, %580, %668, %656, %616, %574, %565, %533
  %683 = phi i64 [ %534, %533 ], [ %524, %565 ], [ %524, %616 ], [ %524, %574 ], [ %524, %668 ], [ %524, %656 ], [ %524, %580 ], [ %524, %661 ], [ %524, %673 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %684 = icmp ult i64 %683, -119
  %685 = getelementptr inbounds nuw i8, ptr %291, i64 %683
  br i1 %684, label %686, label %.loopexit96

686:                                              ; preds = %.loopexit105
  %687 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %290, i32 -1)
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !86
  br i1 %688, label %689, label %690, !prof !109, !nosanitize !86

689:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !86
  unreachable, !nosanitize !86

690:                                              ; preds = %686
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !86
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %.loopexit97, label %280, !llvm.loop !130

693:                                              ; preds = %500
  %694 = icmp sgt i32 %290, 0
  br i1 %694, label %.loopexit109, label %.loopexit96

.loopexit109:                                     ; preds = %508, %693
  %695 = phi ptr [ %501, %693 ], [ %420, %508 ]
  %696 = phi i32 [ %502, %693 ], [ %435, %508 ]
  %697 = phi i64 [ %503, %693 ], [ %422, %508 ]
  %698 = phi i64 [ %459, %693 ], [ %287, %508 ]
  %699 = phi i64 [ %470, %693 ], [ %288, %508 ]
  %700 = phi i64 [ %448, %693 ], [ %289, %508 ]
  %701 = phi ptr [ %504, %693 ], [ %509, %508 ]
  %702 = phi ptr [ %506, %693 ], [ %511, %508 ]
  %703 = ptrtoint ptr %702 to i64
  %704 = ptrtoint ptr %701 to i64
  %705 = sub i64 %703, %704
  %706 = icmp eq ptr %702, %701
  br i1 %706, label %845, label %707

707:                                              ; preds = %.loopexit109
  %708 = ptrtoint ptr %19 to i64
  %709 = ptrtoint ptr %291 to i64
  %710 = sub i64 %708, %709
  %711 = icmp ugt i64 %705, %710
  br i1 %711, label %.loopexit96, label %712

712:                                              ; preds = %707
  %713 = sub i64 %709, %704
  %714 = getelementptr inbounds nuw i8, ptr %291, i64 %705
  %715 = icmp ult i64 %705, 8
  %716 = icmp sgt i64 %713, -8
  %717 = or i1 %716, %715
  br i1 %717, label %718, label %769

718:                                              ; preds = %712
  %719 = add i64 %703, %709
  %720 = sub i64 %719, %704
  %721 = add i64 %709, 1
  %722 = tail call i64 @llvm.umax.i64(i64 %720, i64 %721)
  %723 = sub i64 %722, %709
  %724 = icmp ult i64 %723, 4
  %725 = icmp ult i64 %713, 32
  %726 = or i1 %725, %724
  br i1 %726, label %.preheader755, label %727

727:                                              ; preds = %718
  %728 = icmp ult i64 %723, 32
  br i1 %728, label %748, label %729

729:                                              ; preds = %727
  %730 = and i64 %723, -32
  br label %731

731:                                              ; preds = %731, %729
  %732 = phi i64 [ 0, %729 ], [ %739, %731 ]
  %733 = getelementptr i8, ptr %291, i64 %732
  %734 = getelementptr i8, ptr %701, i64 %732
  %735 = getelementptr i8, ptr %734, i64 16
  %736 = load <16 x i8>, ptr %734, align 1, !tbaa !9
  %737 = load <16 x i8>, ptr %735, align 1, !tbaa !9
  %738 = getelementptr i8, ptr %733, i64 16
  store <16 x i8> %736, ptr %733, align 1, !tbaa !9
  store <16 x i8> %737, ptr %738, align 1, !tbaa !9
  %739 = add nuw i64 %732, 32
  %740 = icmp eq i64 %739, %730
  br i1 %740, label %741, label %731, !llvm.loop !131

741:                                              ; preds = %731
  %742 = icmp eq i64 %723, %730
  br i1 %742, label %.loopexit102, label %743

743:                                              ; preds = %741
  %744 = getelementptr i8, ptr %291, i64 %730
  %745 = getelementptr i8, ptr %701, i64 %730
  %746 = and i64 %723, 28
  %747 = icmp eq i64 %746, 0
  br i1 %747, label %.preheader755, label %748

748:                                              ; preds = %743, %727
  %749 = phi i64 [ %730, %743 ], [ 0, %727 ]
  %750 = and i64 %723, -4
  br label %751

751:                                              ; preds = %751, %748
  %752 = phi i64 [ %749, %748 ], [ %756, %751 ]
  %753 = getelementptr i8, ptr %291, i64 %752
  %754 = getelementptr i8, ptr %701, i64 %752
  %755 = load <4 x i8>, ptr %754, align 1, !tbaa !9
  store <4 x i8> %755, ptr %753, align 1, !tbaa !9
  %756 = add nuw i64 %752, 4
  %757 = icmp eq i64 %756, %750
  br i1 %757, label %758, label %751, !llvm.loop !132

758:                                              ; preds = %751
  %759 = getelementptr i8, ptr %291, i64 %750
  %760 = getelementptr i8, ptr %701, i64 %750
  %761 = icmp eq i64 %723, %750
  br i1 %761, label %.loopexit102, label %.preheader755

.preheader755:                                    ; preds = %758, %743, %718
  %.ph756 = phi ptr [ %759, %758 ], [ %744, %743 ], [ %291, %718 ]
  %.ph757 = phi ptr [ %760, %758 ], [ %745, %743 ], [ %701, %718 ]
  br label %762

762:                                              ; preds = %.preheader755, %762
  %763 = phi ptr [ %767, %762 ], [ %.ph756, %.preheader755 ]
  %764 = phi ptr [ %765, %762 ], [ %.ph757, %.preheader755 ]
  %765 = getelementptr inbounds nuw i8, ptr %764, i64 1
  %766 = load i8, ptr %764, align 1, !tbaa !9
  %767 = getelementptr inbounds nuw i8, ptr %763, i64 1
  store i8 %766, ptr %763, align 1, !tbaa !9
  %768 = icmp ult ptr %767, %714
  br i1 %768, label %762, label %.loopexit102, !llvm.loop !133

769:                                              ; preds = %712
  %770 = icmp sgt i64 %705, 31
  %771 = icmp samesign ult i64 %713, -16
  %772 = and i1 %771, %770
  br i1 %772, label %773, label %793

773:                                              ; preds = %769
  %774 = getelementptr inbounds i8, ptr %714, i64 -32
  %775 = add nsw i64 %705, -32
  %776 = getelementptr inbounds nuw i8, ptr %291, i64 %775
  %777 = load <2 x i64>, ptr %701, align 1, !tbaa !9
  store <2 x i64> %777, ptr %291, align 1, !tbaa !9
  %778 = icmp samesign ult i64 %705, 49
  br i1 %778, label %.loopexit104, label %779

779:                                              ; preds = %773
  %780 = getelementptr inbounds nuw i8, ptr %291, i64 16
  br label %781

781:                                              ; preds = %781, %779
  %782 = phi ptr [ %780, %779 ], [ %789, %781 ]
  %783 = phi ptr [ %701, %779 ], [ %787, %781 ]
  %784 = getelementptr inbounds nuw i8, ptr %783, i64 16
  %785 = load <2 x i64>, ptr %784, align 1, !tbaa !9
  store <2 x i64> %785, ptr %782, align 1, !tbaa !9
  %786 = getelementptr inbounds nuw i8, ptr %782, i64 16
  %787 = getelementptr inbounds nuw i8, ptr %783, i64 32
  %788 = load <2 x i64>, ptr %787, align 1, !tbaa !9
  store <2 x i64> %788, ptr %786, align 1, !tbaa !9
  %789 = getelementptr inbounds nuw i8, ptr %782, i64 32
  %790 = icmp ult ptr %789, %776
  br i1 %790, label %781, label %.loopexit104, !llvm.loop !97

.loopexit104:                                     ; preds = %781, %773
  %791 = getelementptr inbounds nuw i8, ptr %701, i64 %775
  %.pre = ptrtoint ptr %774 to i64
  %.pre375 = ptrtoint ptr %791 to i64
  %.pre377 = sub i64 %.pre, %.pre375
  %792 = icmp ult i64 %.pre377, 32
  br label %793

793:                                              ; preds = %.loopexit104, %769
  %.pre-phi378 = phi i1 [ %792, %.loopexit104 ], [ false, %769 ]
  %.pre-phi = phi i64 [ %.pre, %.loopexit104 ], [ %709, %769 ]
  %794 = phi ptr [ %774, %.loopexit104 ], [ %291, %769 ]
  %795 = phi ptr [ %791, %.loopexit104 ], [ %701, %769 ]
  %796 = add i64 %713, %703
  %797 = add nuw i64 %.pre-phi, 1
  %798 = tail call i64 @llvm.umax.i64(i64 %796, i64 %797)
  %799 = sub i64 %798, %.pre-phi
  %800 = icmp ult i64 %799, 4
  %801 = select i1 %800, i1 true, i1 %.pre-phi378
  br i1 %801, label %.preheader758, label %802

802:                                              ; preds = %793
  %803 = icmp ult i64 %799, 32
  br i1 %803, label %823, label %804

804:                                              ; preds = %802
  %805 = and i64 %799, -32
  br label %806

806:                                              ; preds = %806, %804
  %807 = phi i64 [ 0, %804 ], [ %814, %806 ]
  %808 = getelementptr i8, ptr %794, i64 %807
  %809 = getelementptr i8, ptr %795, i64 %807
  %810 = getelementptr i8, ptr %809, i64 16
  %811 = load <16 x i8>, ptr %809, align 1, !tbaa !9
  %812 = load <16 x i8>, ptr %810, align 1, !tbaa !9
  %813 = getelementptr i8, ptr %808, i64 16
  store <16 x i8> %811, ptr %808, align 1, !tbaa !9
  store <16 x i8> %812, ptr %813, align 1, !tbaa !9
  %814 = add nuw i64 %807, 32
  %815 = icmp eq i64 %814, %805
  br i1 %815, label %816, label %806, !llvm.loop !134

816:                                              ; preds = %806
  %817 = icmp eq i64 %799, %805
  br i1 %817, label %.loopexit102, label %818

818:                                              ; preds = %816
  %819 = getelementptr i8, ptr %794, i64 %805
  %820 = getelementptr i8, ptr %795, i64 %805
  %821 = and i64 %799, 28
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %.preheader758, label %823

823:                                              ; preds = %818, %802
  %824 = phi i64 [ %805, %818 ], [ 0, %802 ]
  %825 = and i64 %799, -4
  br label %826

826:                                              ; preds = %826, %823
  %827 = phi i64 [ %824, %823 ], [ %831, %826 ]
  %828 = getelementptr i8, ptr %794, i64 %827
  %829 = getelementptr i8, ptr %795, i64 %827
  %830 = load <4 x i8>, ptr %829, align 1, !tbaa !9
  store <4 x i8> %830, ptr %828, align 1, !tbaa !9
  %831 = add nuw i64 %827, 4
  %832 = icmp eq i64 %831, %825
  br i1 %832, label %833, label %826, !llvm.loop !135

833:                                              ; preds = %826
  %834 = getelementptr i8, ptr %794, i64 %825
  %835 = getelementptr i8, ptr %795, i64 %825
  %836 = icmp eq i64 %799, %825
  br i1 %836, label %.loopexit102, label %.preheader758

.preheader758:                                    ; preds = %833, %818, %793
  %.ph759 = phi ptr [ %834, %833 ], [ %819, %818 ], [ %794, %793 ]
  %.ph760 = phi ptr [ %835, %833 ], [ %820, %818 ], [ %795, %793 ]
  br label %837

837:                                              ; preds = %.preheader758, %837
  %838 = phi ptr [ %842, %837 ], [ %.ph759, %.preheader758 ]
  %839 = phi ptr [ %840, %837 ], [ %.ph760, %.preheader758 ]
  %840 = getelementptr inbounds nuw i8, ptr %839, i64 1
  %841 = load i8, ptr %839, align 1, !tbaa !9
  %842 = getelementptr inbounds nuw i8, ptr %838, i64 1
  store i8 %841, ptr %838, align 1, !tbaa !9
  %843 = icmp ult ptr %842, %714
  br i1 %843, label %837, label %.loopexit102, !llvm.loop !136

.loopexit102:                                     ; preds = %837, %762, %833, %816, %758, %741
  %844 = sub i64 %436, %705
  br label %845

845:                                              ; preds = %.loopexit102, %.loopexit109
  %846 = phi i64 [ %436, %.loopexit109 ], [ %844, %.loopexit102 ]
  %847 = phi ptr [ %291, %.loopexit109 ], [ %714, %.loopexit102 ]
  %848 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  store ptr %848, ptr %10, align 8, !tbaa !38
  %849 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %850 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %850, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %846, ptr %8, align 8
  %851 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %387, ptr %851, align 8
  %852 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %371, ptr %852, align 8
  %853 = getelementptr i8, ptr %847, i64 %846
  %854 = add i64 %846, %387
  %855 = getelementptr inbounds nuw i8, ptr %0, i64 %846
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 30372
  %857 = getelementptr inbounds i8, ptr %853, i64 %373
  %858 = icmp sgt i64 %846, 65536
  %859 = getelementptr inbounds i8, ptr %19, i64 -32
  %860 = getelementptr inbounds nuw i8, ptr %847, i64 %854
  %861 = icmp ugt ptr %860, %859
  %862 = select i1 %858, i1 true, i1 %861
  br i1 %862, label %866, label %863, !prof !101

863:                                              ; preds = %845
  %864 = load <2 x i64>, ptr %848, align 1, !tbaa !9
  store <2 x i64> %864, ptr %847, align 1, !tbaa !9
  %865 = icmp ugt i64 %846, 16
  br i1 %865, label %868, label %.loopexit101, !prof !52

866:                                              ; preds = %845
  %867 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %847, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %849, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %.loopexit98

868:                                              ; preds = %863
  %869 = getelementptr inbounds nuw i8, ptr %847, i64 16
  %870 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %871 = add i64 %846, -16
  %872 = load <2 x i64>, ptr %870, align 1, !tbaa !9
  store <2 x i64> %872, ptr %869, align 1, !tbaa !9
  %873 = icmp ult i64 %871, 17
  br i1 %873, label %.loopexit101, label %874

874:                                              ; preds = %868
  %875 = getelementptr inbounds nuw i8, ptr %847, i64 32
  br label %876

876:                                              ; preds = %876, %874
  %877 = phi ptr [ %875, %874 ], [ %884, %876 ]
  %878 = phi ptr [ %870, %874 ], [ %882, %876 ]
  %879 = getelementptr inbounds nuw i8, ptr %878, i64 16
  %880 = load <2 x i64>, ptr %879, align 1, !tbaa !9
  store <2 x i64> %880, ptr %877, align 1, !tbaa !9
  %881 = getelementptr inbounds nuw i8, ptr %877, i64 16
  %882 = getelementptr inbounds nuw i8, ptr %878, i64 32
  %883 = load <2 x i64>, ptr %882, align 1, !tbaa !9
  store <2 x i64> %883, ptr %881, align 1, !tbaa !9
  %884 = getelementptr inbounds nuw i8, ptr %877, i64 32
  %885 = icmp ult ptr %884, %853
  br i1 %885, label %876, label %.loopexit101, !llvm.loop !97

.loopexit101:                                     ; preds = %876, %868, %863
  store ptr %856, ptr %10, align 8, !tbaa !38
  %886 = ptrtoint ptr %853 to i64
  %887 = sub i64 %886, %276
  %888 = icmp ugt i64 %371, %887
  br i1 %888, label %889, label %903

889:                                              ; preds = %.loopexit101
  %890 = sub i64 %886, %277
  %891 = icmp ugt i64 %371, %890
  br i1 %891, label %892, label %893, !prof !52

892:                                              ; preds = %889
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit96

893:                                              ; preds = %889
  %894 = ptrtoint ptr %857 to i64
  %895 = sub i64 %894, %276
  %896 = getelementptr inbounds i8, ptr %29, i64 %895
  %897 = add nsw i64 %895, %387
  %898 = icmp sgt i64 %897, 0
  br i1 %898, label %900, label %899

899:                                              ; preds = %893
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %853, ptr align 1 %896, i64 %387, i1 false)
  br label %.loopexit98

900:                                              ; preds = %893
  %901 = sub nsw i64 0, %895
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %853, ptr align 1 %896, i64 %901, i1 false)
  %902 = getelementptr inbounds nuw i8, ptr %853, i64 %901
  store i64 %897, ptr %851, align 8, !tbaa !127
  br label %903

903:                                              ; preds = %900, %.loopexit101
  %904 = phi ptr [ %902, %900 ], [ %853, %.loopexit101 ]
  %905 = phi ptr [ %25, %900 ], [ %857, %.loopexit101 ]
  %906 = phi i64 [ %897, %900 ], [ %387, %.loopexit101 ]
  %907 = icmp ugt i64 %371, 15
  br i1 %907, label %908, label %924, !prof !87

908:                                              ; preds = %903
  %909 = getelementptr inbounds nuw i8, ptr %904, i64 %906
  %910 = load <2 x i64>, ptr %905, align 1, !tbaa !9
  store <2 x i64> %910, ptr %904, align 1, !tbaa !9
  %911 = icmp ult i64 %906, 17
  br i1 %911, label %.loopexit98, label %912

912:                                              ; preds = %908
  %913 = getelementptr inbounds nuw i8, ptr %904, i64 16
  br label %914

914:                                              ; preds = %914, %912
  %915 = phi ptr [ %913, %912 ], [ %922, %914 ]
  %916 = phi ptr [ %905, %912 ], [ %920, %914 ]
  %917 = getelementptr inbounds nuw i8, ptr %916, i64 16
  %918 = load <2 x i64>, ptr %917, align 1, !tbaa !9
  store <2 x i64> %918, ptr %915, align 1, !tbaa !9
  %919 = getelementptr inbounds nuw i8, ptr %915, i64 16
  %920 = getelementptr inbounds nuw i8, ptr %916, i64 32
  %921 = load <2 x i64>, ptr %920, align 1, !tbaa !9
  store <2 x i64> %921, ptr %919, align 1, !tbaa !9
  %922 = getelementptr inbounds nuw i8, ptr %915, i64 32
  %923 = icmp ult ptr %922, %909
  br i1 %923, label %914, label %.loopexit98, !llvm.loop !97

924:                                              ; preds = %903
  %925 = icmp samesign ult i64 %371, 8
  br i1 %925, label %926, label %948

926:                                              ; preds = %924
  %927 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %371
  %928 = load i32, ptr %927, align 4, !tbaa !30
  %929 = load i8, ptr %905, align 1, !tbaa !9
  store i8 %929, ptr %904, align 1, !tbaa !9
  %930 = getelementptr inbounds nuw i8, ptr %905, i64 1
  %931 = load i8, ptr %930, align 1, !tbaa !9
  %932 = getelementptr inbounds nuw i8, ptr %904, i64 1
  store i8 %931, ptr %932, align 1, !tbaa !9
  %933 = getelementptr inbounds nuw i8, ptr %905, i64 2
  %934 = load i8, ptr %933, align 1, !tbaa !9
  %935 = getelementptr inbounds nuw i8, ptr %904, i64 2
  store i8 %934, ptr %935, align 1, !tbaa !9
  %936 = getelementptr inbounds nuw i8, ptr %905, i64 3
  %937 = load i8, ptr %936, align 1, !tbaa !9
  %938 = getelementptr inbounds nuw i8, ptr %904, i64 3
  store i8 %937, ptr %938, align 1, !tbaa !9
  %939 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %371
  %940 = load i32, ptr %939, align 4, !tbaa !30
  %941 = zext i32 %940 to i64
  %942 = getelementptr inbounds nuw i8, ptr %905, i64 %941
  %943 = getelementptr inbounds nuw i8, ptr %904, i64 4
  %944 = load i32, ptr %942, align 1
  store i32 %944, ptr %943, align 1
  %945 = sext i32 %928 to i64
  %946 = sub nsw i64 0, %945
  %947 = getelementptr inbounds i8, ptr %942, i64 %946
  br label %950

948:                                              ; preds = %924
  %949 = load i64, ptr %905, align 1
  store i64 %949, ptr %904, align 1
  br label %950

950:                                              ; preds = %948, %926
  %951 = phi ptr [ %947, %926 ], [ %905, %948 ]
  %952 = getelementptr inbounds nuw i8, ptr %951, i64 8
  %953 = getelementptr inbounds nuw i8, ptr %904, i64 8
  %954 = icmp ugt i64 %906, 8
  br i1 %954, label %955, label %.loopexit98

955:                                              ; preds = %950
  %956 = ptrtoint ptr %953 to i64
  %957 = ptrtoint ptr %952 to i64
  %958 = sub i64 %956, %957
  %959 = getelementptr i8, ptr %904, i64 %906
  %960 = icmp slt i64 %958, 16
  br i1 %960, label %961, label %1002

961:                                              ; preds = %955
  %962 = tail call i64 @llvm.umin.i64(i64 %371, i64 %887)
  %963 = tail call i64 @llvm.umax.i64(i64 %371, i64 %887)
  %964 = sub i64 %276, %371
  %965 = add i64 %964, %387
  %966 = add i64 %965, %962
  %967 = add i64 %966, %963
  %968 = add i64 %963, %276
  %969 = add i64 %968, 16
  %970 = tail call i64 @llvm.umax.i64(i64 %967, i64 %969)
  %reass.sub238 = sub i64 %970, %968
  %971 = add i64 %reass.sub238, -9
  %972 = lshr i64 %971, 3
  %973 = add nuw nsw i64 %972, 1
  %974 = icmp ult i64 %971, 24
  %975 = icmp ult i64 %958, 32
  %976 = or i1 %974, %975
  br i1 %976, label %.preheader750, label %977

977:                                              ; preds = %961
  %978 = and i64 %973, 4611686018427387900
  br label %979

979:                                              ; preds = %979, %977
  %980 = phi i64 [ 0, %977 ], [ %988, %979 ]
  %981 = shl i64 %980, 3
  %982 = getelementptr i8, ptr %953, i64 %981
  %983 = getelementptr i8, ptr %952, i64 %981
  %984 = getelementptr i8, ptr %983, i64 16
  %985 = load <2 x i64>, ptr %983, align 1
  %986 = load <2 x i64>, ptr %984, align 1
  %987 = getelementptr i8, ptr %982, i64 16
  store <2 x i64> %985, ptr %982, align 1
  store <2 x i64> %986, ptr %987, align 1
  %988 = add nuw i64 %980, 4
  %989 = icmp eq i64 %988, %978
  br i1 %989, label %990, label %979, !llvm.loop !137

990:                                              ; preds = %979
  %991 = shl i64 %978, 3
  %992 = getelementptr i8, ptr %953, i64 %991
  %993 = getelementptr i8, ptr %952, i64 %991
  %994 = icmp eq i64 %973, %978
  br i1 %994, label %.loopexit98, label %.preheader750

.preheader750:                                    ; preds = %990, %961
  %.ph751 = phi ptr [ %992, %990 ], [ %953, %961 ]
  %.ph752 = phi ptr [ %993, %990 ], [ %952, %961 ]
  br label %995

995:                                              ; preds = %.preheader750, %995
  %996 = phi ptr [ %999, %995 ], [ %.ph751, %.preheader750 ]
  %997 = phi ptr [ %1000, %995 ], [ %.ph752, %.preheader750 ]
  %998 = load i64, ptr %997, align 1
  store i64 %998, ptr %996, align 1
  %999 = getelementptr inbounds nuw i8, ptr %996, i64 8
  %1000 = getelementptr inbounds nuw i8, ptr %997, i64 8
  %1001 = icmp ult ptr %999, %959
  br i1 %1001, label %995, label %.loopexit98, !llvm.loop !138

1002:                                             ; preds = %955
  %1003 = load <2 x i64>, ptr %952, align 1, !tbaa !9
  store <2 x i64> %1003, ptr %953, align 1, !tbaa !9
  %1004 = icmp ult i64 %906, 25
  br i1 %1004, label %.loopexit98, label %1005

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds nuw i8, ptr %904, i64 24
  br label %1007

1007:                                             ; preds = %1007, %1005
  %1008 = phi ptr [ %1006, %1005 ], [ %1015, %1007 ]
  %1009 = phi ptr [ %952, %1005 ], [ %1013, %1007 ]
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i64 16
  %1011 = load <2 x i64>, ptr %1010, align 1, !tbaa !9
  store <2 x i64> %1011, ptr %1008, align 1, !tbaa !9
  %1012 = getelementptr inbounds nuw i8, ptr %1008, i64 16
  %1013 = getelementptr inbounds nuw i8, ptr %1009, i64 32
  %1014 = load <2 x i64>, ptr %1013, align 1, !tbaa !9
  store <2 x i64> %1014, ptr %1012, align 1, !tbaa !9
  %1015 = getelementptr inbounds nuw i8, ptr %1008, i64 32
  %1016 = icmp ult ptr %1015, %959
  br i1 %1016, label %1007, label %.loopexit98, !llvm.loop !97

.loopexit98:                                      ; preds = %1007, %995, %914, %1002, %990, %950, %908, %899, %866
  %1017 = phi i64 [ %867, %866 ], [ %854, %899 ], [ %854, %950 ], [ %854, %908 ], [ %854, %1002 ], [ %854, %990 ], [ %854, %914 ], [ %854, %995 ], [ %854, %1007 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1018 = icmp ult i64 %1017, -119
  %1019 = getelementptr inbounds nuw i8, ptr %847, i64 %1017
  %1020 = add nsw i32 %290, -1
  br i1 %1018, label %1021, label %.loopexit96

1021:                                             ; preds = %.loopexit98
  %1022 = icmp eq i32 %1020, 0
  br i1 %1022, label %.loopexit97, label %1023

1023:                                             ; preds = %1021
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !139
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !140
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !142
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !143
  %1024 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1025 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %1026

1026:                                             ; preds = %1417, %1023
  %1027 = phi ptr [ %695, %1023 ], [ %1247, %1417 ]
  %1028 = phi i32 [ %696, %1023 ], [ %1248, %1417 ]
  %1029 = phi i64 [ %697, %1023 ], [ %1249, %1417 ]
  %1030 = phi i64 [ %372, %1023 ], [ %1118, %1417 ]
  %1031 = phi i64 [ %370, %1023 ], [ %1116, %1417 ]
  %1032 = phi i64 [ %371, %1023 ], [ %1117, %1417 ]
  %1033 = phi i64 [ %698, %1023 ], [ %1250, %1417 ]
  %1034 = phi i64 [ %699, %1023 ], [ %1251, %1417 ]
  %1035 = phi i64 [ %700, %1023 ], [ %1252, %1417 ]
  %1036 = phi i32 [ %1020, %1023 ], [ %1419, %1417 ]
  %1037 = phi ptr [ %1019, %1023 ], [ %1418, %1417 ]
  %1038 = icmp eq i32 %1036, 1
  %1039 = getelementptr inbounds nuw [8 x i8], ptr %171, i64 %1035
  %1040 = getelementptr inbounds nuw [8 x i8], ptr %272, i64 %1033
  %1041 = getelementptr inbounds nuw [8 x i8], ptr %222, i64 %1034
  %1042 = getelementptr inbounds nuw i8, ptr %1040, i64 4
  %1043 = load i32, ptr %1042, align 4, !tbaa !41, !noalias !144
  %1044 = zext i32 %1043 to i64
  %1045 = getelementptr inbounds nuw i8, ptr %1039, i64 4
  %1046 = load i32, ptr %1045, align 4, !tbaa !41, !noalias !144
  %1047 = zext i32 %1046 to i64
  %1048 = getelementptr inbounds nuw i8, ptr %1041, i64 4
  %1049 = load i32, ptr %1048, align 4, !tbaa !41, !noalias !144
  %1050 = getelementptr inbounds nuw i8, ptr %1039, i64 2
  %1051 = load i8, ptr %1050, align 2, !tbaa !58, !noalias !144
  %1052 = getelementptr inbounds nuw i8, ptr %1040, i64 2
  %1053 = load i8, ptr %1052, align 2, !tbaa !58, !noalias !144
  %1054 = getelementptr inbounds nuw i8, ptr %1041, i64 2
  %1055 = load i8, ptr %1054, align 2, !tbaa !58, !noalias !144
  %1056 = zext i8 %1051 to i32
  %1057 = zext i8 %1053 to i32
  %1058 = add i8 %1053, %1051
  %1059 = add i8 %1058, %1055
  %1060 = load i16, ptr %1039, align 4, !tbaa !57, !noalias !144
  %1061 = load i16, ptr %1040, align 4, !tbaa !57, !noalias !144
  %1062 = load i16, ptr %1041, align 4, !tbaa !57, !noalias !144
  %1063 = getelementptr inbounds nuw i8, ptr %1039, i64 3
  %1064 = load i8, ptr %1063, align 1, !tbaa !56, !noalias !144
  %1065 = zext i8 %1064 to i32
  %1066 = getelementptr inbounds nuw i8, ptr %1040, i64 3
  %1067 = load i8, ptr %1066, align 1, !tbaa !56, !noalias !144
  %1068 = zext i8 %1067 to i32
  %1069 = getelementptr inbounds nuw i8, ptr %1041, i64 3
  %1070 = load i8, ptr %1069, align 1, !tbaa !56, !noalias !144
  %1071 = zext i8 %1070 to i32
  %1072 = icmp ugt i8 %1055, 1
  br i1 %1072, label %1073, label %1085

1073:                                             ; preds = %1026
  %1074 = zext i8 %1055 to i32
  %1075 = and i32 %1028, 63
  %1076 = zext nneg i32 %1075 to i64
  %1077 = shl i64 %1029, %1076
  %1078 = sub nsw i32 0, %1074
  %1079 = and i32 %1078, 63
  %1080 = zext nneg i32 %1079 to i64
  %1081 = lshr i64 %1077, %1080
  %1082 = add i32 %1028, %1074
  store i32 %1082, ptr %131, align 8, !tbaa !80, !noalias !144
  %1083 = zext i32 %1049 to i64
  %1084 = add i64 %1081, %1083
  store i64 %1031, ptr %44, align 8, !tbaa !45, !noalias !144
  br label %1114

1085:                                             ; preds = %1026
  %1086 = icmp eq i32 %1046, 0
  %1087 = icmp eq i8 %1055, 0
  br i1 %1087, label %1088, label %1091, !prof !87

1088:                                             ; preds = %1085
  %1089 = select i1 %1086, i64 %1031, i64 %1032
  %1090 = select i1 %1086, i64 %1032, i64 %1031
  br label %1114

1091:                                             ; preds = %1085
  %1092 = zext i1 %1086 to i32
  %1093 = add i32 %1049, %1092
  %1094 = zext i32 %1093 to i64
  %1095 = and i32 %1028, 63
  %1096 = zext nneg i32 %1095 to i64
  %1097 = shl i64 %1029, %1096
  %1098 = lshr i64 %1097, 63
  %1099 = add i32 %1028, 1
  store i32 %1099, ptr %131, align 8, !tbaa !80, !noalias !144
  %1100 = add nuw nsw i64 %1098, %1094
  %1101 = icmp eq i64 %1100, 3
  br i1 %1101, label %1102, label %1106

1102:                                             ; preds = %1091
  %1103 = add i64 %1032, -1
  %1104 = icmp eq i64 %1103, 0
  %1105 = select i1 %1104, i64 -1, i64 %1103
  br label %1112

1106:                                             ; preds = %1091
  %1107 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %1100
  %1108 = load i64, ptr %1107, align 8, !tbaa !45, !noalias !144
  %1109 = icmp eq i64 %1108, 0
  %1110 = select i1 %1109, i64 -1, i64 %1108
  %1111 = icmp eq i64 %1100, 1
  br i1 %1111, label %1114, label %1112

1112:                                             ; preds = %1106, %1102
  %1113 = phi i64 [ %1105, %1102 ], [ %1110, %1106 ]
  store i64 %1031, ptr %44, align 8, !tbaa !45, !noalias !144
  br label %1114

1114:                                             ; preds = %1112, %1106, %1088, %1073
  %1115 = phi i32 [ %1028, %1088 ], [ %1082, %1073 ], [ %1099, %1112 ], [ %1099, %1106 ]
  %1116 = phi i64 [ %1090, %1088 ], [ %1032, %1073 ], [ %1032, %1112 ], [ %1032, %1106 ]
  %1117 = phi i64 [ %1089, %1088 ], [ %1084, %1073 ], [ %1113, %1112 ], [ %1110, %1106 ]
  %1118 = phi i64 [ %1030, %1088 ], [ %1031, %1073 ], [ %1031, %1112 ], [ %1030, %1106 ]
  %1119 = sub i64 0, %1117
  store i64 %1116, ptr %40, align 8, !tbaa !45, !noalias !144
  store i64 %1117, ptr %34, align 8, !tbaa !45, !noalias !144
  %1120 = icmp eq i8 %1053, 0
  br i1 %1120, label %1131, label %1121

1121:                                             ; preds = %1114
  %1122 = and i32 %1115, 63
  %1123 = zext nneg i32 %1122 to i64
  %1124 = shl i64 %1029, %1123
  %1125 = sub nsw i32 0, %1057
  %1126 = and i32 %1125, 63
  %1127 = zext nneg i32 %1126 to i64
  %1128 = lshr i64 %1124, %1127
  %1129 = add i32 %1115, %1057
  store i32 %1129, ptr %131, align 8, !tbaa !80, !noalias !144
  %1130 = add i64 %1128, %1044
  br label %1131

1131:                                             ; preds = %1121, %1114
  %1132 = phi i32 [ %1115, %1114 ], [ %1129, %1121 ]
  %1133 = phi i64 [ %1044, %1114 ], [ %1130, %1121 ]
  %1134 = icmp ugt i8 %1059, 30
  br i1 %1134, label %1135, label %1165, !prof !52

1135:                                             ; preds = %1131
  %1136 = icmp ugt i32 %1132, 64
  br i1 %1136, label %1137, label %1138, !prof !52

1137:                                             ; preds = %1135
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75, !noalias !144
  br label %1165

1138:                                             ; preds = %1135
  %1139 = icmp ult ptr %1027, %48
  br i1 %1139, label %1147, label %1140

1140:                                             ; preds = %1138
  %1141 = lshr i32 %1132, 3
  %1142 = zext nneg i32 %1141 to i64
  %1143 = sub nsw i64 0, %1142
  %1144 = getelementptr inbounds i8, ptr %1027, i64 %1143
  store ptr %1144, ptr %142, align 8, !tbaa !75, !noalias !144
  %1145 = and i32 %1132, 7
  store i32 %1145, ptr %131, align 8, !tbaa !80, !noalias !144
  %1146 = load i64, ptr %1144, align 1, !tbaa !45, !noalias !144
  store i64 %1146, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1165

1147:                                             ; preds = %1138
  %1148 = icmp eq ptr %1027, %3
  br i1 %1148, label %1165, label %1149

1149:                                             ; preds = %1147
  %1150 = lshr i32 %1132, 3
  %1151 = zext nneg i32 %1150 to i64
  %1152 = sub nsw i64 0, %1151
  %1153 = getelementptr inbounds i8, ptr %1027, i64 %1152
  %1154 = icmp ult ptr %1153, %3
  %1155 = ptrtoint ptr %1027 to i64
  %1156 = sub i64 %1155, %278
  %1157 = trunc i64 %1156 to i32
  %1158 = select i1 %1154, i32 %1157, i32 %1150
  %1159 = zext i32 %1158 to i64
  %1160 = sub nsw i64 0, %1159
  %1161 = getelementptr inbounds i8, ptr %1027, i64 %1160
  store ptr %1161, ptr %142, align 8, !tbaa !75, !noalias !144
  %1162 = shl i32 %1158, 3
  %1163 = sub i32 %1132, %1162
  store i32 %1163, ptr %131, align 8, !tbaa !80, !noalias !144
  %1164 = load i64, ptr %1161, align 1, !tbaa !45, !noalias !144
  store i64 %1164, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1165

1165:                                             ; preds = %1149, %1147, %1140, %1137, %1131
  %1166 = phi ptr [ %1161, %1149 ], [ %1027, %1147 ], [ %1144, %1140 ], [ @BIT_reloadDStream.zeroFilled, %1137 ], [ %1027, %1131 ]
  %1167 = phi i32 [ %1163, %1149 ], [ %1132, %1147 ], [ %1145, %1140 ], [ %1132, %1137 ], [ %1132, %1131 ]
  %1168 = phi i64 [ %1164, %1149 ], [ %1029, %1147 ], [ %1146, %1140 ], [ %1029, %1137 ], [ %1029, %1131 ]
  %1169 = icmp eq i8 %1051, 0
  br i1 %1169, label %1180, label %1170

1170:                                             ; preds = %1165
  %1171 = and i32 %1167, 63
  %1172 = zext nneg i32 %1171 to i64
  %1173 = shl i64 %1168, %1172
  %1174 = sub nsw i32 0, %1056
  %1175 = and i32 %1174, 63
  %1176 = zext nneg i32 %1175 to i64
  %1177 = lshr i64 %1173, %1176
  %1178 = add i32 %1167, %1056
  store i32 %1178, ptr %131, align 8, !tbaa !80, !noalias !144
  %1179 = add i64 %1177, %1047
  br label %1180

1180:                                             ; preds = %1170, %1165
  %1181 = phi i32 [ %1167, %1165 ], [ %1178, %1170 ]
  %1182 = phi i64 [ %1047, %1165 ], [ %1179, %1170 ]
  br i1 %1038, label %1246, label %1183

1183:                                             ; preds = %1180
  %1184 = add i32 %1181, %1065
  %1185 = sub i32 0, %1184
  %1186 = and i32 %1185, 63
  %1187 = zext nneg i32 %1186 to i64
  %1188 = lshr i64 %1168, %1187
  %1189 = zext nneg i8 %1064 to i64
  %1190 = shl nsw i64 -1, %1189
  %1191 = xor i64 %1190, -1
  %1192 = and i64 %1188, %1191
  %1193 = zext i16 %1060 to i64
  %1194 = add nuw i64 %1192, %1193
  store i64 %1194, ptr %127, align 8, !tbaa !78, !noalias !144
  %1195 = add i32 %1184, %1068
  %1196 = sub i32 0, %1195
  %1197 = and i32 %1196, 63
  %1198 = zext nneg i32 %1197 to i64
  %1199 = lshr i64 %1168, %1198
  %1200 = zext nneg i8 %1067 to i64
  %1201 = shl nsw i64 -1, %1200
  %1202 = xor i64 %1201, -1
  %1203 = and i64 %1199, %1202
  %1204 = zext i16 %1061 to i64
  %1205 = add nuw i64 %1203, %1204
  store i64 %1205, ptr %224, align 8, !tbaa !78, !noalias !144
  %1206 = add i32 %1195, %1071
  %1207 = sub i32 0, %1206
  %1208 = and i32 %1207, 63
  %1209 = zext nneg i32 %1208 to i64
  %1210 = lshr i64 %1168, %1209
  %1211 = zext nneg i8 %1070 to i64
  %1212 = shl nsw i64 -1, %1211
  %1213 = xor i64 %1212, -1
  %1214 = and i64 %1210, %1213
  store i32 %1206, ptr %131, align 8, !tbaa !80, !noalias !144
  %1215 = zext i16 %1062 to i64
  %1216 = add nuw i64 %1214, %1215
  store i64 %1216, ptr %173, align 8, !tbaa !78, !noalias !144
  %1217 = icmp ugt i32 %1206, 64
  br i1 %1217, label %1218, label %1219, !prof !52

1218:                                             ; preds = %1183
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75, !noalias !144
  br label %1246

1219:                                             ; preds = %1183
  %1220 = icmp ult ptr %1166, %48
  br i1 %1220, label %1228, label %1221

1221:                                             ; preds = %1219
  %1222 = lshr i32 %1206, 3
  %1223 = zext nneg i32 %1222 to i64
  %1224 = sub nsw i64 0, %1223
  %1225 = getelementptr inbounds i8, ptr %1166, i64 %1224
  store ptr %1225, ptr %142, align 8, !tbaa !75, !noalias !144
  %1226 = and i32 %1206, 7
  store i32 %1226, ptr %131, align 8, !tbaa !80, !noalias !144
  %1227 = load i64, ptr %1225, align 1, !tbaa !45, !noalias !144
  store i64 %1227, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1246

1228:                                             ; preds = %1219
  %1229 = icmp eq ptr %1166, %3
  br i1 %1229, label %1246, label %1230

1230:                                             ; preds = %1228
  %1231 = lshr i32 %1206, 3
  %1232 = zext nneg i32 %1231 to i64
  %1233 = sub nsw i64 0, %1232
  %1234 = getelementptr inbounds i8, ptr %1166, i64 %1233
  %1235 = icmp ult ptr %1234, %3
  %1236 = ptrtoint ptr %1166 to i64
  %1237 = sub i64 %1236, %278
  %1238 = trunc i64 %1237 to i32
  %1239 = select i1 %1235, i32 %1238, i32 %1231
  %1240 = zext i32 %1239 to i64
  %1241 = sub nsw i64 0, %1240
  %1242 = getelementptr inbounds i8, ptr %1166, i64 %1241
  store ptr %1242, ptr %142, align 8, !tbaa !75, !noalias !144
  %1243 = shl i32 %1239, 3
  %1244 = sub i32 %1206, %1243
  store i32 %1244, ptr %131, align 8, !tbaa !80, !noalias !144
  %1245 = load i64, ptr %1242, align 1, !tbaa !45, !noalias !144
  store i64 %1245, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1246

1246:                                             ; preds = %1230, %1228, %1221, %1218, %1180
  %1247 = phi ptr [ %1166, %1228 ], [ @BIT_reloadDStream.zeroFilled, %1218 ], [ %1225, %1221 ], [ %1242, %1230 ], [ %1166, %1180 ]
  %1248 = phi i32 [ %1206, %1228 ], [ %1206, %1218 ], [ %1226, %1221 ], [ %1244, %1230 ], [ %1181, %1180 ]
  %1249 = phi i64 [ %1168, %1228 ], [ %1168, %1218 ], [ %1227, %1221 ], [ %1245, %1230 ], [ %1168, %1180 ]
  %1250 = phi i64 [ %1205, %1228 ], [ %1205, %1218 ], [ %1205, %1221 ], [ %1205, %1230 ], [ %1033, %1180 ]
  %1251 = phi i64 [ %1216, %1228 ], [ %1216, %1218 ], [ %1216, %1221 ], [ %1216, %1230 ], [ %1034, %1180 ]
  %1252 = phi i64 [ %1194, %1228 ], [ %1194, %1218 ], [ %1194, %1221 ], [ %1194, %1230 ], [ %1035, %1180 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %1182, ptr %9, align 8
  store i64 %1133, ptr %1024, align 8
  store i64 %1117, ptr %1025, align 8
  %1253 = getelementptr i8, ptr %1037, i64 %1182
  %1254 = add i64 %1182, %1133
  %1255 = load ptr, ptr %10, align 8, !tbaa !38
  %1256 = getelementptr inbounds nuw i8, ptr %1255, i64 %1182
  %1257 = getelementptr inbounds i8, ptr %1253, i64 %1119
  %1258 = icmp ugt ptr %1256, %849
  %1259 = getelementptr inbounds nuw i8, ptr %1037, i64 %1254
  %1260 = icmp ugt ptr %1259, %859
  %1261 = select i1 %1258, i1 true, i1 %1260
  br i1 %1261, label %1265, label %1262, !prof !101

1262:                                             ; preds = %1246
  %1263 = load <2 x i64>, ptr %1255, align 1, !tbaa !9
  store <2 x i64> %1263, ptr %1037, align 1, !tbaa !9
  %1264 = icmp ugt i64 %1182, 16
  br i1 %1264, label %1267, label %.loopexit95, !prof !52

1265:                                             ; preds = %1246
  %1266 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1037, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %849, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %.loopexit

1267:                                             ; preds = %1262
  %1268 = getelementptr inbounds nuw i8, ptr %1037, i64 16
  %1269 = getelementptr inbounds nuw i8, ptr %1255, i64 16
  %1270 = load <2 x i64>, ptr %1269, align 1, !tbaa !9
  store <2 x i64> %1270, ptr %1268, align 1, !tbaa !9
  %1271 = icmp ult i64 %1182, 33
  br i1 %1271, label %.loopexit95, label %1272

1272:                                             ; preds = %1267
  %1273 = getelementptr inbounds nuw i8, ptr %1037, i64 32
  br label %1274

1274:                                             ; preds = %1274, %1272
  %1275 = phi ptr [ %1273, %1272 ], [ %1282, %1274 ]
  %1276 = phi ptr [ %1269, %1272 ], [ %1280, %1274 ]
  %1277 = getelementptr inbounds nuw i8, ptr %1276, i64 16
  %1278 = load <2 x i64>, ptr %1277, align 1, !tbaa !9
  store <2 x i64> %1278, ptr %1275, align 1, !tbaa !9
  %1279 = getelementptr inbounds nuw i8, ptr %1275, i64 16
  %1280 = getelementptr inbounds nuw i8, ptr %1276, i64 32
  %1281 = load <2 x i64>, ptr %1280, align 1, !tbaa !9
  store <2 x i64> %1281, ptr %1279, align 1, !tbaa !9
  %1282 = getelementptr inbounds nuw i8, ptr %1275, i64 32
  %1283 = icmp ult ptr %1282, %1253
  br i1 %1283, label %1274, label %.loopexit95, !llvm.loop !97

.loopexit95:                                      ; preds = %1274, %1267, %1262
  store ptr %1256, ptr %10, align 8, !tbaa !38
  %1284 = ptrtoint ptr %1253 to i64
  %1285 = sub i64 %1284, %276
  %1286 = icmp ugt i64 %1117, %1285
  br i1 %1286, label %1287, label %1301

1287:                                             ; preds = %.loopexit95
  %1288 = sub i64 %1284, %277
  %1289 = icmp ugt i64 %1117, %1288
  br i1 %1289, label %1290, label %1291, !prof !52

1290:                                             ; preds = %1287
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit96

1291:                                             ; preds = %1287
  %1292 = ptrtoint ptr %1257 to i64
  %1293 = sub i64 %1292, %276
  %1294 = getelementptr inbounds i8, ptr %29, i64 %1293
  %1295 = add nsw i64 %1293, %1133
  %1296 = icmp sgt i64 %1295, 0
  br i1 %1296, label %1298, label %1297

1297:                                             ; preds = %1291
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1253, ptr align 1 %1294, i64 %1133, i1 false)
  br label %.loopexit

1298:                                             ; preds = %1291
  %1299 = sub nsw i64 0, %1293
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1253, ptr align 1 %1294, i64 %1299, i1 false)
  %1300 = getelementptr inbounds nuw i8, ptr %1253, i64 %1299
  store i64 %1295, ptr %1024, align 8, !tbaa !127
  br label %1301

1301:                                             ; preds = %1298, %.loopexit95
  %1302 = phi ptr [ %1300, %1298 ], [ %1253, %.loopexit95 ]
  %1303 = phi ptr [ %25, %1298 ], [ %1257, %.loopexit95 ]
  %1304 = phi i64 [ %1295, %1298 ], [ %1133, %.loopexit95 ]
  %1305 = icmp ugt i64 %1117, 15
  br i1 %1305, label %1306, label %1322, !prof !87

1306:                                             ; preds = %1301
  %1307 = getelementptr inbounds nuw i8, ptr %1302, i64 %1304
  %1308 = load <2 x i64>, ptr %1303, align 1, !tbaa !9
  store <2 x i64> %1308, ptr %1302, align 1, !tbaa !9
  %1309 = icmp ult i64 %1304, 17
  br i1 %1309, label %.loopexit, label %1310

1310:                                             ; preds = %1306
  %1311 = getelementptr inbounds nuw i8, ptr %1302, i64 16
  br label %1312

1312:                                             ; preds = %1312, %1310
  %1313 = phi ptr [ %1311, %1310 ], [ %1320, %1312 ]
  %1314 = phi ptr [ %1303, %1310 ], [ %1318, %1312 ]
  %1315 = getelementptr inbounds nuw i8, ptr %1314, i64 16
  %1316 = load <2 x i64>, ptr %1315, align 1, !tbaa !9
  store <2 x i64> %1316, ptr %1313, align 1, !tbaa !9
  %1317 = getelementptr inbounds nuw i8, ptr %1313, i64 16
  %1318 = getelementptr inbounds nuw i8, ptr %1314, i64 32
  %1319 = load <2 x i64>, ptr %1318, align 1, !tbaa !9
  store <2 x i64> %1319, ptr %1317, align 1, !tbaa !9
  %1320 = getelementptr inbounds nuw i8, ptr %1313, i64 32
  %1321 = icmp ult ptr %1320, %1307
  br i1 %1321, label %1312, label %.loopexit, !llvm.loop !97

1322:                                             ; preds = %1301
  %1323 = icmp samesign ult i64 %1117, 8
  br i1 %1323, label %1324, label %1346

1324:                                             ; preds = %1322
  %1325 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1117
  %1326 = load i32, ptr %1325, align 4, !tbaa !30
  %1327 = load i8, ptr %1303, align 1, !tbaa !9
  store i8 %1327, ptr %1302, align 1, !tbaa !9
  %1328 = getelementptr inbounds nuw i8, ptr %1303, i64 1
  %1329 = load i8, ptr %1328, align 1, !tbaa !9
  %1330 = getelementptr inbounds nuw i8, ptr %1302, i64 1
  store i8 %1329, ptr %1330, align 1, !tbaa !9
  %1331 = getelementptr inbounds nuw i8, ptr %1303, i64 2
  %1332 = load i8, ptr %1331, align 1, !tbaa !9
  %1333 = getelementptr inbounds nuw i8, ptr %1302, i64 2
  store i8 %1332, ptr %1333, align 1, !tbaa !9
  %1334 = getelementptr inbounds nuw i8, ptr %1303, i64 3
  %1335 = load i8, ptr %1334, align 1, !tbaa !9
  %1336 = getelementptr inbounds nuw i8, ptr %1302, i64 3
  store i8 %1335, ptr %1336, align 1, !tbaa !9
  %1337 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1117
  %1338 = load i32, ptr %1337, align 4, !tbaa !30
  %1339 = zext i32 %1338 to i64
  %1340 = getelementptr inbounds nuw i8, ptr %1303, i64 %1339
  %1341 = getelementptr inbounds nuw i8, ptr %1302, i64 4
  %1342 = load i32, ptr %1340, align 1
  store i32 %1342, ptr %1341, align 1
  %1343 = sext i32 %1326 to i64
  %1344 = sub nsw i64 0, %1343
  %1345 = getelementptr inbounds i8, ptr %1340, i64 %1344
  br label %1348

1346:                                             ; preds = %1322
  %1347 = load i64, ptr %1303, align 1
  store i64 %1347, ptr %1302, align 1
  br label %1348

1348:                                             ; preds = %1346, %1324
  %1349 = phi ptr [ %1345, %1324 ], [ %1303, %1346 ]
  %1350 = getelementptr inbounds nuw i8, ptr %1349, i64 8
  %1351 = getelementptr inbounds nuw i8, ptr %1302, i64 8
  %1352 = icmp ugt i64 %1304, 8
  br i1 %1352, label %1353, label %.loopexit

1353:                                             ; preds = %1348
  %1354 = ptrtoint ptr %1351 to i64
  %1355 = ptrtoint ptr %1350 to i64
  %1356 = sub i64 %1354, %1355
  %1357 = getelementptr i8, ptr %1302, i64 %1304
  %1358 = icmp slt i64 %1356, 16
  br i1 %1358, label %1359, label %1400

1359:                                             ; preds = %1353
  %1360 = tail call i64 @llvm.umin.i64(i64 %1117, i64 %1285)
  %1361 = tail call i64 @llvm.umax.i64(i64 %1117, i64 %1285)
  %1362 = sub i64 %276, %1117
  %1363 = add i64 %1362, %1133
  %1364 = add i64 %1363, %1360
  %1365 = add i64 %1364, %1361
  %1366 = add i64 %1361, %279
  %1367 = tail call i64 @llvm.umax.i64(i64 %1365, i64 %1366)
  %1368 = add i64 %1361, %276
  %reass.sub239 = sub i64 %1367, %1368
  %1369 = add i64 %reass.sub239, -9
  %1370 = lshr i64 %1369, 3
  %1371 = add nuw nsw i64 %1370, 1
  %1372 = icmp ult i64 %1369, 24
  %1373 = icmp ult i64 %1356, 32
  %1374 = or i1 %1372, %1373
  br i1 %1374, label %.preheader, label %1375

1375:                                             ; preds = %1359
  %1376 = and i64 %1371, 4611686018427387900
  br label %1377

1377:                                             ; preds = %1377, %1375
  %1378 = phi i64 [ 0, %1375 ], [ %1386, %1377 ]
  %1379 = shl i64 %1378, 3
  %1380 = getelementptr i8, ptr %1351, i64 %1379
  %1381 = getelementptr i8, ptr %1350, i64 %1379
  %1382 = getelementptr i8, ptr %1381, i64 16
  %1383 = load <2 x i64>, ptr %1381, align 1
  %1384 = load <2 x i64>, ptr %1382, align 1
  %1385 = getelementptr i8, ptr %1380, i64 16
  store <2 x i64> %1383, ptr %1380, align 1
  store <2 x i64> %1384, ptr %1385, align 1
  %1386 = add nuw i64 %1378, 4
  %1387 = icmp eq i64 %1386, %1376
  br i1 %1387, label %1388, label %1377, !llvm.loop !147

1388:                                             ; preds = %1377
  %1389 = shl i64 %1376, 3
  %1390 = getelementptr i8, ptr %1351, i64 %1389
  %1391 = getelementptr i8, ptr %1350, i64 %1389
  %1392 = icmp eq i64 %1371, %1376
  br i1 %1392, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1388, %1359
  %.ph = phi ptr [ %1390, %1388 ], [ %1351, %1359 ]
  %.ph730 = phi ptr [ %1391, %1388 ], [ %1350, %1359 ]
  br label %1393

1393:                                             ; preds = %.preheader, %1393
  %1394 = phi ptr [ %1397, %1393 ], [ %.ph, %.preheader ]
  %1395 = phi ptr [ %1398, %1393 ], [ %.ph730, %.preheader ]
  %1396 = load i64, ptr %1395, align 1
  store i64 %1396, ptr %1394, align 1
  %1397 = getelementptr inbounds nuw i8, ptr %1394, i64 8
  %1398 = getelementptr inbounds nuw i8, ptr %1395, i64 8
  %1399 = icmp ult ptr %1397, %1357
  br i1 %1399, label %1393, label %.loopexit, !llvm.loop !148

1400:                                             ; preds = %1353
  %1401 = load <2 x i64>, ptr %1350, align 1, !tbaa !9
  store <2 x i64> %1401, ptr %1351, align 1, !tbaa !9
  %1402 = icmp ult i64 %1304, 25
  br i1 %1402, label %.loopexit, label %1403

1403:                                             ; preds = %1400
  %1404 = getelementptr inbounds nuw i8, ptr %1302, i64 24
  br label %1405

1405:                                             ; preds = %1405, %1403
  %1406 = phi ptr [ %1404, %1403 ], [ %1413, %1405 ]
  %1407 = phi ptr [ %1350, %1403 ], [ %1411, %1405 ]
  %1408 = getelementptr inbounds nuw i8, ptr %1407, i64 16
  %1409 = load <2 x i64>, ptr %1408, align 1, !tbaa !9
  store <2 x i64> %1409, ptr %1406, align 1, !tbaa !9
  %1410 = getelementptr inbounds nuw i8, ptr %1406, i64 16
  %1411 = getelementptr inbounds nuw i8, ptr %1407, i64 32
  %1412 = load <2 x i64>, ptr %1411, align 1, !tbaa !9
  store <2 x i64> %1412, ptr %1410, align 1, !tbaa !9
  %1413 = getelementptr inbounds nuw i8, ptr %1406, i64 32
  %1414 = icmp ult ptr %1413, %1357
  br i1 %1414, label %1405, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %1405, %1393, %1312, %1400, %1388, %1348, %1306, %1297, %1265
  %1415 = phi i64 [ %1266, %1265 ], [ %1254, %1297 ], [ %1254, %1348 ], [ %1254, %1306 ], [ %1254, %1400 ], [ %1254, %1388 ], [ %1254, %1312 ], [ %1254, %1393 ], [ %1254, %1405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1416 = icmp ult i64 %1415, -119
  br i1 %1416, label %1417, label %.loopexit96

1417:                                             ; preds = %.loopexit
  %1418 = getelementptr inbounds nuw i8, ptr %1037, i64 %1415
  %1419 = add nsw i32 %1036, -1
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %.loopexit97, label %1026, !llvm.loop !149

.loopexit97:                                      ; preds = %690, %1417, %1021
  %1421 = phi ptr [ %695, %1021 ], [ %1247, %1417 ], [ %514, %690 ]
  %1422 = phi i32 [ %696, %1021 ], [ %1248, %1417 ], [ %515, %690 ]
  %1423 = phi i64 [ %372, %1021 ], [ %1118, %1417 ], [ %372, %690 ]
  %1424 = phi i64 [ %370, %1021 ], [ %1116, %1417 ], [ %370, %690 ]
  %1425 = phi i64 [ %371, %1021 ], [ %1117, %1417 ], [ %371, %690 ]
  %1426 = phi ptr [ %1019, %1021 ], [ %1418, %1417 ], [ %685, %690 ]
  %1427 = phi ptr [ %849, %1021 ], [ %849, %1417 ], [ %23, %690 ]
  %1428 = icmp eq ptr %1421, %3
  %1429 = icmp eq i32 %1422, 64
  %1430 = select i1 %1428, i1 %1429, i1 false
  br i1 %1430, label %1431, label %.loopexit96

1431:                                             ; preds = %.loopexit97
  %1432 = trunc i64 %1425 to i32
  store i32 %1432, ptr %33, align 4, !tbaa !30
  %1433 = trunc i64 %1424 to i32
  store i32 %1433, ptr %37, align 4, !tbaa !30
  %1434 = trunc i64 %1423 to i32
  store i32 %1434, ptr %41, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %1435 = load ptr, ptr %10, align 8, !tbaa !38
  br label %1437

.loopexit96:                                      ; preds = %.loopexit105, %.loopexit, %.loopexit97, %1290, %.loopexit98, %892, %707, %693, %558, %114, %102, %51, %31
  %1436 = phi i64 [ -20, %693 ], [ -20, %1290 ], [ -20, %114 ], [ %1017, %.loopexit98 ], [ -70, %707 ], [ -20, %558 ], [ -20, %.loopexit97 ], [ -20, %892 ], [ -20, %31 ], [ -20, %51 ], [ -20, %102 ], [ %1415, %.loopexit ], [ %683, %.loopexit105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %1482

1437:                                             ; preds = %1431, %17
  %1438 = phi ptr [ %1435, %1431 ], [ %21, %17 ]
  %1439 = phi ptr [ %1427, %1431 ], [ %23, %17 ]
  %1440 = phi ptr [ %1426, %1431 ], [ %1, %17 ]
  %1441 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %1442 = load i32, ptr %1441, align 8, !tbaa !35
  %1443 = icmp eq i32 %1442, 2
  br i1 %1443, label %1446, label %1444

1444:                                             ; preds = %1437
  %1445 = ptrtoint ptr %19 to i64
  br label %1462

1446:                                             ; preds = %1437
  %1447 = ptrtoint ptr %1439 to i64
  %1448 = ptrtoint ptr %1438 to i64
  %1449 = sub i64 %1447, %1448
  %1450 = ptrtoint ptr %19 to i64
  %1451 = ptrtoint ptr %1440 to i64
  %1452 = sub i64 %1450, %1451
  %1453 = icmp ugt i64 %1449, %1452
  br i1 %1453, label %1482, label %1454

1454:                                             ; preds = %1446
  %1455 = icmp eq ptr %1440, null
  br i1 %1455, label %1458, label %1456

1456:                                             ; preds = %1454
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1440, ptr align 1 %1438, i64 %1449, i1 false)
  %1457 = getelementptr inbounds nuw i8, ptr %1440, i64 %1449
  br label %1458

1458:                                             ; preds = %1456, %1454
  %1459 = phi ptr [ %1457, %1456 ], [ null, %1454 ]
  %1460 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %1461 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %1441, align 8, !tbaa !35
  br label %1462

1462:                                             ; preds = %1458, %1444
  %1463 = phi i64 [ %1445, %1444 ], [ %1450, %1458 ]
  %1464 = phi ptr [ %1438, %1444 ], [ %1460, %1458 ]
  %1465 = phi ptr [ %1439, %1444 ], [ %1461, %1458 ]
  %1466 = phi ptr [ %1440, %1444 ], [ %1459, %1458 ]
  %1467 = ptrtoint ptr %1465 to i64
  %1468 = ptrtoint ptr %1464 to i64
  %1469 = sub i64 %1467, %1468
  %1470 = ptrtoint ptr %1466 to i64
  %1471 = sub i64 %1463, %1470
  %1472 = icmp ugt i64 %1469, %1471
  br i1 %1472, label %1482, label %1473

1473:                                             ; preds = %1462
  %1474 = icmp eq ptr %1466, null
  br i1 %1474, label %1478, label %1475

1475:                                             ; preds = %1473
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1466, ptr align 1 %1464, i64 %1469, i1 false)
  %1476 = getelementptr inbounds nuw i8, ptr %1466, i64 %1469
  %1477 = ptrtoint ptr %1476 to i64
  br label %1478

1478:                                             ; preds = %1475, %1473
  %1479 = phi i64 [ 0, %1473 ], [ %1477, %1475 ]
  %1480 = ptrtoint ptr %1 to i64
  %1481 = sub i64 %1479, %1480
  br label %1482

1482:                                             ; preds = %1478, %1462, %1446, %.loopexit96
  %1483 = phi i64 [ %1481, %1478 ], [ %1436, %.loopexit96 ], [ -70, %1462 ], [ -70, %1446 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %1484

1484:                                             ; preds = %1482, %15
  %1485 = phi i64 [ %16, %15 ], [ %1483, %1482 ]
  ret i64 %1485
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr i8, ptr %0, i64 30180
  %11 = load i32, ptr %10, align 4, !tbaa !31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc i64 @ZSTD_decompressSequences_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %719

15:                                               ; preds = %6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 %20
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %21, %19 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  store ptr %28, ptr %8, align 8, !tbaa !38
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  %30 = load i64, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = icmp eq i32 %5, 0
  br i1 %38, label %698, label %39

39:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %40, align 4, !tbaa !62
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %43 = load i32, ptr %41, align 4, !tbaa !30
  %44 = zext i32 %43 to i64
  store i64 %44, ptr %42, align 8, !tbaa !45
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %46 = load i32, ptr %45, align 4, !tbaa !30
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !45
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %50 = load i32, ptr %49, align 4, !tbaa !30
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %51, ptr %52, align 8, !tbaa !45
  %53 = icmp eq i64 %4, 0
  br i1 %53, label %.loopexit45, label %54

54:                                               ; preds = %39
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %55, align 8, !tbaa !72
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %57 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %56, ptr %57, align 8, !tbaa !74
  %58 = icmp ugt i64 %4, 7
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = add nsw i64 %4, -8
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %61, ptr %62, align 8, !tbaa !75
  %63 = load i64, ptr %61, align 1
  store i64 %63, ptr %9, align 8, !tbaa !76
  %64 = icmp ult i64 %63, 72057594037927936
  br i1 %64, label %.loopexit45, label %122

65:                                               ; preds = %54
  %66 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %66, align 8, !tbaa !75
  %67 = load i8, ptr %3, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  store i64 %68, ptr %9, align 8, !tbaa !76
  switch i64 %4, label %110 [
    i64 7, label %69
    i64 6, label %75
    i64 5, label %82
    i64 4, label %89
    i64 3, label %96
    i64 2, label %103
  ]

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 48
  %74 = or disjoint i64 %73, %68
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i64 [ %68, %65 ], [ %74, %69 ]
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 40
  %81 = add nuw nsw i64 %80, %76
  br label %82

82:                                               ; preds = %75, %65
  %83 = phi i64 [ %68, %65 ], [ %81, %75 ]
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %85 = load i8, ptr %84, align 1, !tbaa !9
  %86 = zext i8 %85 to i64
  %87 = shl nuw nsw i64 %86, 32
  %88 = add nuw nsw i64 %87, %83
  br label %89

89:                                               ; preds = %82, %65
  %90 = phi i64 [ %68, %65 ], [ %88, %82 ]
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = zext i8 %92 to i64
  %94 = shl nuw nsw i64 %93, 24
  %95 = add nuw nsw i64 %94, %90
  br label %96

96:                                               ; preds = %89, %65
  %97 = phi i64 [ %68, %65 ], [ %95, %89 ]
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !9
  %100 = zext i8 %99 to i64
  %101 = shl nuw nsw i64 %100, 16
  %102 = add nuw nsw i64 %101, %97
  br label %103

103:                                              ; preds = %96, %65
  %104 = phi i64 [ %68, %65 ], [ %102, %96 ]
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = zext i8 %106 to i64
  %108 = shl nuw nsw i64 %107, 8
  %109 = add nuw nsw i64 %108, %104
  store i64 %109, ptr %9, align 8, !tbaa !76
  br label %110

110:                                              ; preds = %103, %65
  %111 = phi i64 [ %109, %103 ], [ %68, %65 ]
  %112 = getelementptr i8, ptr %3, i64 %4
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = load i8, ptr %113, align 1, !tbaa !9
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %.loopexit45, label %116

116:                                              ; preds = %110
  %117 = zext i8 %114 to i32
  %118 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %117, i1 true)
  %119 = trunc nuw nsw i64 %4 to i32
  %120 = shl nuw nsw i32 %119, 3
  %reass.sub = sub nsw i32 %118, %120
  %121 = add nsw i32 %reass.sub, 41
  br label %129

122:                                              ; preds = %59
  %123 = lshr i64 %63, 56
  %124 = trunc nuw nsw i64 %123 to i32
  %125 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %124, i1 true)
  %126 = xor i32 %125, 31
  %127 = sub nuw nsw i32 8, %126
  %128 = icmp ult i64 %4, -119
  br i1 %128, label %129, label %.loopexit45

129:                                              ; preds = %122, %116
  %130 = phi ptr [ %3, %116 ], [ %61, %122 ]
  %131 = phi i64 [ 0, %116 ], [ %60, %122 ]
  %132 = phi i32 [ %121, %116 ], [ %127, %122 ]
  %133 = phi i64 [ %111, %116 ], [ %63, %122 ]
  %134 = getelementptr inbounds i8, ptr %3, i64 %131
  %135 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %136 = load ptr, ptr %0, align 8, !tbaa !77
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %138 = load i32, ptr %137, align 4, !tbaa !63
  %139 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %140 = add i32 %138, %132
  %141 = sub i32 0, %140
  %142 = and i32 %141, 63
  %143 = zext nneg i32 %142 to i64
  %144 = lshr i64 %133, %143
  %145 = zext nneg i32 %138 to i64
  %146 = shl nsw i64 -1, %145
  %147 = xor i64 %146, -1
  %148 = and i64 %144, %147
  store i64 %148, ptr %135, align 8, !tbaa !78
  %149 = icmp ugt i32 %140, 64
  %150 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %149, label %151, label %152, !prof !52

151:                                              ; preds = %129
  store ptr @BIT_reloadDStream.zeroFilled, ptr %150, align 8, !tbaa !75
  br label %174

152:                                              ; preds = %129
  %153 = icmp slt i64 %131, 8
  br i1 %153, label %161, label %154

154:                                              ; preds = %152
  %155 = lshr i32 %140, 3
  %156 = zext nneg i32 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %134, i64 %157
  store ptr %158, ptr %150, align 8, !tbaa !75
  %159 = and i32 %140, 7
  store i32 %159, ptr %139, align 8, !tbaa !80
  %160 = load i64, ptr %158, align 1, !tbaa !45
  store i64 %160, ptr %9, align 8, !tbaa !76
  br label %174

161:                                              ; preds = %152
  %162 = icmp eq i64 %131, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %161
  %164 = lshr i32 %140, 3
  %165 = zext nneg i32 %164 to i64
  %166 = tail call i64 @llvm.smin.i64(i64 %131, i64 %165)
  %167 = trunc i64 %166 to i32
  %168 = and i64 %166, 4294967295
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %134, i64 %169
  store ptr %170, ptr %150, align 8, !tbaa !75
  %171 = shl i32 %167, 3
  %172 = sub i32 %140, %171
  store i32 %172, ptr %139, align 8, !tbaa !80
  %173 = load i64, ptr %170, align 1, !tbaa !45
  store i64 %173, ptr %9, align 8, !tbaa !76
  br label %174

174:                                              ; preds = %163, %161, %154, %151
  %175 = phi ptr [ @BIT_reloadDStream.zeroFilled, %151 ], [ %158, %154 ], [ %130, %161 ], [ %170, %163 ]
  %176 = phi ptr [ @BIT_reloadDStream.zeroFilled, %151 ], [ %158, %154 ], [ %3, %161 ], [ %170, %163 ]
  %177 = phi i32 [ %140, %151 ], [ %159, %154 ], [ %140, %161 ], [ %172, %163 ]
  %178 = phi i64 [ %133, %151 ], [ %160, %154 ], [ %133, %161 ], [ %173, %163 ]
  %179 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %180 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %179, ptr %180, align 8, !tbaa !81
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %183 = load ptr, ptr %182, align 8, !tbaa !68
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 4
  %185 = load i32, ptr %184, align 4, !tbaa !63
  %186 = add i32 %185, %177
  %187 = sub i32 0, %186
  %188 = and i32 %187, 63
  %189 = zext nneg i32 %188 to i64
  %190 = lshr i64 %178, %189
  %191 = zext nneg i32 %185 to i64
  %192 = shl nsw i64 -1, %191
  %193 = xor i64 %192, -1
  %194 = and i64 %190, %193
  store i64 %194, ptr %181, align 8, !tbaa !78
  %195 = icmp ugt i32 %186, 64
  br i1 %195, label %196, label %197, !prof !52

196:                                              ; preds = %174
  store ptr @BIT_reloadDStream.zeroFilled, ptr %150, align 8, !tbaa !75
  br label %225

197:                                              ; preds = %174
  %198 = icmp ult ptr %176, %56
  br i1 %198, label %206, label %199

199:                                              ; preds = %197
  %200 = lshr i32 %186, 3
  %201 = zext nneg i32 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, ptr %176, i64 %202
  store ptr %203, ptr %150, align 8, !tbaa !75
  %204 = and i32 %186, 7
  %205 = load i64, ptr %203, align 1, !tbaa !45
  store i64 %205, ptr %9, align 8, !tbaa !76
  br label %225

206:                                              ; preds = %197
  %207 = icmp eq ptr %176, %3
  br i1 %207, label %225, label %208

208:                                              ; preds = %206
  %209 = lshr i32 %186, 3
  %210 = zext nneg i32 %209 to i64
  %211 = sub nsw i64 0, %210
  %212 = getelementptr inbounds i8, ptr %176, i64 %211
  %213 = icmp ult ptr %212, %3
  %214 = ptrtoint ptr %176 to i64
  %215 = ptrtoint ptr %3 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = select i1 %213, i32 %217, i32 %209
  %219 = zext i32 %218 to i64
  %220 = sub nsw i64 0, %219
  %221 = getelementptr inbounds i8, ptr %176, i64 %220
  store ptr %221, ptr %150, align 8, !tbaa !75
  %222 = shl i32 %218, 3
  %223 = sub i32 %186, %222
  %224 = load i64, ptr %221, align 1, !tbaa !45
  store i64 %224, ptr %9, align 8, !tbaa !76
  br label %225

225:                                              ; preds = %208, %206, %199, %196
  %226 = phi ptr [ @BIT_reloadDStream.zeroFilled, %196 ], [ %203, %199 ], [ %175, %206 ], [ %221, %208 ]
  %227 = phi ptr [ @BIT_reloadDStream.zeroFilled, %196 ], [ %203, %199 ], [ %176, %206 ], [ %221, %208 ]
  %228 = phi i32 [ %186, %196 ], [ %204, %199 ], [ %186, %206 ], [ %223, %208 ]
  %229 = phi i64 [ %178, %196 ], [ %205, %199 ], [ %178, %206 ], [ %224, %208 ]
  %230 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %231 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %230, ptr %231, align 8, !tbaa !81
  %232 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %234 = load ptr, ptr %233, align 8, !tbaa !82
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 4
  %236 = load i32, ptr %235, align 4, !tbaa !63
  %237 = add i32 %236, %228
  %238 = sub i32 0, %237
  %239 = and i32 %238, 63
  %240 = zext nneg i32 %239 to i64
  %241 = lshr i64 %229, %240
  %242 = zext nneg i32 %236 to i64
  %243 = shl nsw i64 -1, %242
  %244 = xor i64 %243, -1
  %245 = and i64 %241, %244
  store i32 %237, ptr %139, align 8, !tbaa !80
  store i64 %245, ptr %232, align 8, !tbaa !78
  %246 = icmp ugt i32 %237, 64
  br i1 %246, label %247, label %248, !prof !52

247:                                              ; preds = %225
  store ptr @BIT_reloadDStream.zeroFilled, ptr %150, align 8, !tbaa !75
  br label %276

248:                                              ; preds = %225
  %249 = icmp ult ptr %227, %56
  br i1 %249, label %257, label %250

250:                                              ; preds = %248
  %251 = lshr i32 %237, 3
  %252 = zext nneg i32 %251 to i64
  %253 = sub nsw i64 0, %252
  %254 = getelementptr inbounds i8, ptr %227, i64 %253
  store ptr %254, ptr %150, align 8, !tbaa !75
  %255 = and i32 %237, 7
  store i32 %255, ptr %139, align 8, !tbaa !80
  %256 = load i64, ptr %254, align 1, !tbaa !45
  store i64 %256, ptr %9, align 8, !tbaa !76
  br label %276

257:                                              ; preds = %248
  %258 = icmp eq ptr %227, %3
  br i1 %258, label %276, label %259

259:                                              ; preds = %257
  %260 = lshr i32 %237, 3
  %261 = zext nneg i32 %260 to i64
  %262 = sub nsw i64 0, %261
  %263 = getelementptr inbounds i8, ptr %227, i64 %262
  %264 = icmp ult ptr %263, %3
  %265 = ptrtoint ptr %227 to i64
  %266 = ptrtoint ptr %3 to i64
  %267 = sub i64 %265, %266
  %268 = trunc i64 %267 to i32
  %269 = select i1 %264, i32 %268, i32 %260
  %270 = zext i32 %269 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %227, i64 %271
  store ptr %272, ptr %150, align 8, !tbaa !75
  %273 = shl i32 %269, 3
  %274 = sub i32 %237, %273
  store i32 %274, ptr %139, align 8, !tbaa !80
  %275 = load i64, ptr %272, align 1, !tbaa !45
  store i64 %275, ptr %9, align 8, !tbaa !76
  br label %276

276:                                              ; preds = %259, %257, %250, %247
  %277 = phi ptr [ %272, %259 ], [ %226, %257 ], [ %254, %250 ], [ @BIT_reloadDStream.zeroFilled, %247 ]
  %278 = phi i32 [ %274, %259 ], [ %237, %257 ], [ %255, %250 ], [ %237, %247 ]
  %279 = phi i64 [ %275, %259 ], [ %229, %257 ], [ %256, %250 ], [ %229, %247 ]
  %280 = getelementptr inbounds nuw i8, ptr %234, i64 8
  %281 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %280, ptr %281, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !151
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !152
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !153
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !154
  %282 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %283 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %284 = getelementptr inbounds i8, ptr %26, i64 -32
  %285 = ptrtoint ptr %33 to i64
  %286 = ptrtoint ptr %35 to i64
  %287 = ptrtoint ptr %3 to i64
  %288 = add i64 %285, 16
  br label %289

289:                                              ; preds = %685, %276
  %290 = phi ptr [ %277, %276 ], [ %510, %685 ]
  %291 = phi i32 [ %278, %276 ], [ %511, %685 ]
  %292 = phi i64 [ %279, %276 ], [ %512, %685 ]
  %293 = phi i64 [ %51, %276 ], [ %381, %685 ]
  %294 = phi i64 [ %47, %276 ], [ %379, %685 ]
  %295 = phi i64 [ %44, %276 ], [ %380, %685 ]
  %296 = phi i64 [ %245, %276 ], [ %513, %685 ]
  %297 = phi i64 [ %194, %276 ], [ %514, %685 ]
  %298 = phi i64 [ %148, %276 ], [ %515, %685 ]
  %299 = phi i32 [ %5, %276 ], [ %686, %685 ]
  %300 = phi ptr [ %1, %276 ], [ %680, %685 ]
  %301 = icmp eq i32 %299, 1
  %302 = getelementptr inbounds nuw [8 x i8], ptr %179, i64 %298
  %303 = getelementptr inbounds nuw [8 x i8], ptr %280, i64 %296
  %304 = getelementptr inbounds nuw [8 x i8], ptr %230, i64 %297
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 4
  %306 = load i32, ptr %305, align 4, !tbaa !41, !noalias !155
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds nuw i8, ptr %302, i64 4
  %309 = load i32, ptr %308, align 4, !tbaa !41, !noalias !155
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds nuw i8, ptr %304, i64 4
  %312 = load i32, ptr %311, align 4, !tbaa !41, !noalias !155
  %313 = getelementptr inbounds nuw i8, ptr %302, i64 2
  %314 = load i8, ptr %313, align 2, !tbaa !58, !noalias !155
  %315 = getelementptr inbounds nuw i8, ptr %303, i64 2
  %316 = load i8, ptr %315, align 2, !tbaa !58, !noalias !155
  %317 = getelementptr inbounds nuw i8, ptr %304, i64 2
  %318 = load i8, ptr %317, align 2, !tbaa !58, !noalias !155
  %319 = zext i8 %314 to i32
  %320 = zext i8 %316 to i32
  %321 = add i8 %316, %314
  %322 = add i8 %321, %318
  %323 = load i16, ptr %302, align 4, !tbaa !57, !noalias !155
  %324 = load i16, ptr %303, align 4, !tbaa !57, !noalias !155
  %325 = load i16, ptr %304, align 4, !tbaa !57, !noalias !155
  %326 = getelementptr inbounds nuw i8, ptr %302, i64 3
  %327 = load i8, ptr %326, align 1, !tbaa !56, !noalias !155
  %328 = zext i8 %327 to i32
  %329 = getelementptr inbounds nuw i8, ptr %303, i64 3
  %330 = load i8, ptr %329, align 1, !tbaa !56, !noalias !155
  %331 = zext i8 %330 to i32
  %332 = getelementptr inbounds nuw i8, ptr %304, i64 3
  %333 = load i8, ptr %332, align 1, !tbaa !56, !noalias !155
  %334 = zext i8 %333 to i32
  %335 = icmp ugt i8 %318, 1
  br i1 %335, label %336, label %348

336:                                              ; preds = %289
  %337 = zext i8 %318 to i32
  %338 = and i32 %291, 63
  %339 = zext nneg i32 %338 to i64
  %340 = shl i64 %292, %339
  %341 = sub nsw i32 0, %337
  %342 = and i32 %341, 63
  %343 = zext nneg i32 %342 to i64
  %344 = lshr i64 %340, %343
  %345 = add i32 %291, %337
  store i32 %345, ptr %139, align 8, !tbaa !80, !noalias !155
  %346 = zext i32 %312 to i64
  %347 = add i64 %344, %346
  store i64 %294, ptr %52, align 8, !tbaa !45, !noalias !155
  br label %377

348:                                              ; preds = %289
  %349 = icmp eq i32 %309, 0
  %350 = icmp eq i8 %318, 0
  br i1 %350, label %351, label %354, !prof !87

351:                                              ; preds = %348
  %352 = select i1 %349, i64 %294, i64 %295
  %353 = select i1 %349, i64 %295, i64 %294
  br label %377

354:                                              ; preds = %348
  %355 = zext i1 %349 to i32
  %356 = add i32 %312, %355
  %357 = zext i32 %356 to i64
  %358 = and i32 %291, 63
  %359 = zext nneg i32 %358 to i64
  %360 = shl i64 %292, %359
  %361 = lshr i64 %360, 63
  %362 = add i32 %291, 1
  store i32 %362, ptr %139, align 8, !tbaa !80, !noalias !155
  %363 = add nuw nsw i64 %361, %357
  %364 = icmp eq i64 %363, 3
  br i1 %364, label %365, label %369

365:                                              ; preds = %354
  %366 = add i64 %295, -1
  %367 = icmp eq i64 %366, 0
  %368 = select i1 %367, i64 -1, i64 %366
  br label %375

369:                                              ; preds = %354
  %370 = getelementptr inbounds nuw [8 x i8], ptr %42, i64 %363
  %371 = load i64, ptr %370, align 8, !tbaa !45, !noalias !155
  %372 = icmp eq i64 %371, 0
  %373 = select i1 %372, i64 -1, i64 %371
  %374 = icmp eq i64 %363, 1
  br i1 %374, label %377, label %375

375:                                              ; preds = %369, %365
  %376 = phi i64 [ %368, %365 ], [ %373, %369 ]
  store i64 %294, ptr %52, align 8, !tbaa !45, !noalias !155
  br label %377

377:                                              ; preds = %375, %369, %351, %336
  %378 = phi i32 [ %291, %351 ], [ %345, %336 ], [ %362, %375 ], [ %362, %369 ]
  %379 = phi i64 [ %353, %351 ], [ %295, %336 ], [ %295, %375 ], [ %295, %369 ]
  %380 = phi i64 [ %352, %351 ], [ %347, %336 ], [ %376, %375 ], [ %373, %369 ]
  %381 = phi i64 [ %293, %351 ], [ %294, %336 ], [ %294, %375 ], [ %293, %369 ]
  %382 = sub i64 0, %380
  store i64 %379, ptr %48, align 8, !tbaa !45, !noalias !155
  store i64 %380, ptr %42, align 8, !tbaa !45, !noalias !155
  %383 = icmp eq i8 %316, 0
  br i1 %383, label %394, label %384

384:                                              ; preds = %377
  %385 = and i32 %378, 63
  %386 = zext nneg i32 %385 to i64
  %387 = shl i64 %292, %386
  %388 = sub nsw i32 0, %320
  %389 = and i32 %388, 63
  %390 = zext nneg i32 %389 to i64
  %391 = lshr i64 %387, %390
  %392 = add i32 %378, %320
  store i32 %392, ptr %139, align 8, !tbaa !80, !noalias !155
  %393 = add i64 %391, %307
  br label %394

394:                                              ; preds = %384, %377
  %395 = phi i32 [ %378, %377 ], [ %392, %384 ]
  %396 = phi i64 [ %307, %377 ], [ %393, %384 ]
  %397 = icmp ugt i8 %322, 30
  br i1 %397, label %398, label %428, !prof !52

398:                                              ; preds = %394
  %399 = icmp ugt i32 %395, 64
  br i1 %399, label %400, label %401, !prof !52

400:                                              ; preds = %398
  store ptr @BIT_reloadDStream.zeroFilled, ptr %150, align 8, !tbaa !75, !noalias !155
  br label %428

401:                                              ; preds = %398
  %402 = icmp ult ptr %290, %56
  br i1 %402, label %410, label %403

403:                                              ; preds = %401
  %404 = lshr i32 %395, 3
  %405 = zext nneg i32 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %290, i64 %406
  store ptr %407, ptr %150, align 8, !tbaa !75, !noalias !155
  %408 = and i32 %395, 7
  store i32 %408, ptr %139, align 8, !tbaa !80, !noalias !155
  %409 = load i64, ptr %407, align 1, !tbaa !45, !noalias !155
  store i64 %409, ptr %9, align 8, !tbaa !76, !noalias !155
  br label %428

410:                                              ; preds = %401
  %411 = icmp eq ptr %290, %3
  br i1 %411, label %428, label %412

412:                                              ; preds = %410
  %413 = lshr i32 %395, 3
  %414 = zext nneg i32 %413 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %290, i64 %415
  %417 = icmp ult ptr %416, %3
  %418 = ptrtoint ptr %290 to i64
  %419 = sub i64 %418, %287
  %420 = trunc i64 %419 to i32
  %421 = select i1 %417, i32 %420, i32 %413
  %422 = zext i32 %421 to i64
  %423 = sub nsw i64 0, %422
  %424 = getelementptr inbounds i8, ptr %290, i64 %423
  store ptr %424, ptr %150, align 8, !tbaa !75, !noalias !155
  %425 = shl i32 %421, 3
  %426 = sub i32 %395, %425
  store i32 %426, ptr %139, align 8, !tbaa !80, !noalias !155
  %427 = load i64, ptr %424, align 1, !tbaa !45, !noalias !155
  store i64 %427, ptr %9, align 8, !tbaa !76, !noalias !155
  br label %428

428:                                              ; preds = %412, %410, %403, %400, %394
  %429 = phi ptr [ %424, %412 ], [ %290, %410 ], [ %407, %403 ], [ @BIT_reloadDStream.zeroFilled, %400 ], [ %290, %394 ]
  %430 = phi i32 [ %426, %412 ], [ %395, %410 ], [ %408, %403 ], [ %395, %400 ], [ %395, %394 ]
  %431 = phi i64 [ %427, %412 ], [ %292, %410 ], [ %409, %403 ], [ %292, %400 ], [ %292, %394 ]
  %432 = icmp eq i8 %314, 0
  br i1 %432, label %443, label %433

433:                                              ; preds = %428
  %434 = and i32 %430, 63
  %435 = zext nneg i32 %434 to i64
  %436 = shl i64 %431, %435
  %437 = sub nsw i32 0, %319
  %438 = and i32 %437, 63
  %439 = zext nneg i32 %438 to i64
  %440 = lshr i64 %436, %439
  %441 = add i32 %430, %319
  store i32 %441, ptr %139, align 8, !tbaa !80, !noalias !155
  %442 = add i64 %440, %310
  br label %443

443:                                              ; preds = %433, %428
  %444 = phi i32 [ %430, %428 ], [ %441, %433 ]
  %445 = phi i64 [ %310, %428 ], [ %442, %433 ]
  br i1 %301, label %509, label %446

446:                                              ; preds = %443
  %447 = add i32 %444, %328
  %448 = sub i32 0, %447
  %449 = and i32 %448, 63
  %450 = zext nneg i32 %449 to i64
  %451 = lshr i64 %431, %450
  %452 = zext nneg i8 %327 to i64
  %453 = shl nsw i64 -1, %452
  %454 = xor i64 %453, -1
  %455 = and i64 %451, %454
  %456 = zext i16 %323 to i64
  %457 = add nuw i64 %455, %456
  store i64 %457, ptr %135, align 8, !tbaa !78, !noalias !155
  %458 = add i32 %447, %331
  %459 = sub i32 0, %458
  %460 = and i32 %459, 63
  %461 = zext nneg i32 %460 to i64
  %462 = lshr i64 %431, %461
  %463 = zext nneg i8 %330 to i64
  %464 = shl nsw i64 -1, %463
  %465 = xor i64 %464, -1
  %466 = and i64 %462, %465
  %467 = zext i16 %324 to i64
  %468 = add nuw i64 %466, %467
  store i64 %468, ptr %232, align 8, !tbaa !78, !noalias !155
  %469 = add i32 %458, %334
  %470 = sub i32 0, %469
  %471 = and i32 %470, 63
  %472 = zext nneg i32 %471 to i64
  %473 = lshr i64 %431, %472
  %474 = zext nneg i8 %333 to i64
  %475 = shl nsw i64 -1, %474
  %476 = xor i64 %475, -1
  %477 = and i64 %473, %476
  store i32 %469, ptr %139, align 8, !tbaa !80, !noalias !155
  %478 = zext i16 %325 to i64
  %479 = add nuw i64 %477, %478
  store i64 %479, ptr %181, align 8, !tbaa !78, !noalias !155
  %480 = icmp ugt i32 %469, 64
  br i1 %480, label %481, label %482, !prof !52

481:                                              ; preds = %446
  store ptr @BIT_reloadDStream.zeroFilled, ptr %150, align 8, !tbaa !75, !noalias !155
  br label %509

482:                                              ; preds = %446
  %483 = icmp ult ptr %429, %56
  br i1 %483, label %491, label %484

484:                                              ; preds = %482
  %485 = lshr i32 %469, 3
  %486 = zext nneg i32 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %429, i64 %487
  store ptr %488, ptr %150, align 8, !tbaa !75, !noalias !155
  %489 = and i32 %469, 7
  store i32 %489, ptr %139, align 8, !tbaa !80, !noalias !155
  %490 = load i64, ptr %488, align 1, !tbaa !45, !noalias !155
  store i64 %490, ptr %9, align 8, !tbaa !76, !noalias !155
  br label %509

491:                                              ; preds = %482
  %492 = icmp eq ptr %429, %3
  br i1 %492, label %509, label %493

493:                                              ; preds = %491
  %494 = lshr i32 %469, 3
  %495 = zext nneg i32 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, ptr %429, i64 %496
  %498 = icmp ult ptr %497, %3
  %499 = ptrtoint ptr %429 to i64
  %500 = sub i64 %499, %287
  %501 = trunc i64 %500 to i32
  %502 = select i1 %498, i32 %501, i32 %494
  %503 = zext i32 %502 to i64
  %504 = sub nsw i64 0, %503
  %505 = getelementptr inbounds i8, ptr %429, i64 %504
  store ptr %505, ptr %150, align 8, !tbaa !75, !noalias !155
  %506 = shl i32 %502, 3
  %507 = sub i32 %469, %506
  store i32 %507, ptr %139, align 8, !tbaa !80, !noalias !155
  %508 = load i64, ptr %505, align 1, !tbaa !45, !noalias !155
  store i64 %508, ptr %9, align 8, !tbaa !76, !noalias !155
  br label %509

509:                                              ; preds = %493, %491, %484, %481, %443
  %510 = phi ptr [ %429, %491 ], [ @BIT_reloadDStream.zeroFilled, %481 ], [ %488, %484 ], [ %505, %493 ], [ %429, %443 ]
  %511 = phi i32 [ %469, %491 ], [ %469, %481 ], [ %489, %484 ], [ %507, %493 ], [ %444, %443 ]
  %512 = phi i64 [ %431, %491 ], [ %431, %481 ], [ %490, %484 ], [ %508, %493 ], [ %431, %443 ]
  %513 = phi i64 [ %468, %491 ], [ %468, %481 ], [ %468, %484 ], [ %468, %493 ], [ %296, %443 ]
  %514 = phi i64 [ %479, %491 ], [ %479, %481 ], [ %479, %484 ], [ %479, %493 ], [ %297, %443 ]
  %515 = phi i64 [ %457, %491 ], [ %457, %481 ], [ %457, %484 ], [ %457, %493 ], [ %298, %443 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %445, ptr %7, align 8
  store i64 %396, ptr %282, align 8
  store i64 %380, ptr %283, align 8
  %516 = getelementptr i8, ptr %300, i64 %445
  %517 = add i64 %445, %396
  %518 = load ptr, ptr %8, align 8, !tbaa !38
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 %445
  %520 = getelementptr inbounds i8, ptr %516, i64 %382
  %521 = icmp ugt ptr %519, %31
  %522 = getelementptr inbounds nuw i8, ptr %300, i64 %517
  %523 = icmp ugt ptr %522, %284
  %524 = select i1 %521, i1 true, i1 %523
  br i1 %524, label %528, label %525, !prof !101

525:                                              ; preds = %509
  %526 = load <2 x i64>, ptr %518, align 1, !tbaa !9
  store <2 x i64> %526, ptr %300, align 1, !tbaa !9
  %527 = icmp ugt i64 %445, 16
  br i1 %527, label %530, label %.loopexit44, !prof !52

528:                                              ; preds = %509
  %529 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %300, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef %37)
  br label %.loopexit

530:                                              ; preds = %525
  %531 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %532 = getelementptr inbounds nuw i8, ptr %518, i64 16
  %533 = load <2 x i64>, ptr %532, align 1, !tbaa !9
  store <2 x i64> %533, ptr %531, align 1, !tbaa !9
  %534 = icmp ult i64 %445, 33
  br i1 %534, label %.loopexit44, label %535

535:                                              ; preds = %530
  %536 = getelementptr inbounds nuw i8, ptr %300, i64 32
  br label %537

537:                                              ; preds = %537, %535
  %538 = phi ptr [ %536, %535 ], [ %545, %537 ]
  %539 = phi ptr [ %532, %535 ], [ %543, %537 ]
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 16
  %541 = load <2 x i64>, ptr %540, align 1, !tbaa !9
  store <2 x i64> %541, ptr %538, align 1, !tbaa !9
  %542 = getelementptr inbounds nuw i8, ptr %538, i64 16
  %543 = getelementptr inbounds nuw i8, ptr %539, i64 32
  %544 = load <2 x i64>, ptr %543, align 1, !tbaa !9
  store <2 x i64> %544, ptr %542, align 1, !tbaa !9
  %545 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %546 = icmp ult ptr %545, %516
  br i1 %546, label %537, label %.loopexit44, !llvm.loop !97

.loopexit44:                                      ; preds = %537, %530, %525
  store ptr %519, ptr %8, align 8, !tbaa !38
  %547 = ptrtoint ptr %516 to i64
  %548 = sub i64 %547, %285
  %549 = icmp ugt i64 %380, %548
  br i1 %549, label %550, label %564

550:                                              ; preds = %.loopexit44
  %551 = sub i64 %547, %286
  %552 = icmp ugt i64 %380, %551
  br i1 %552, label %553, label %554, !prof !52

553:                                              ; preds = %550
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit45

554:                                              ; preds = %550
  %555 = ptrtoint ptr %520 to i64
  %556 = sub i64 %555, %285
  %557 = getelementptr inbounds i8, ptr %37, i64 %556
  %558 = add nsw i64 %556, %396
  %559 = icmp sgt i64 %558, 0
  br i1 %559, label %561, label %560

560:                                              ; preds = %554
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %516, ptr align 1 %557, i64 %396, i1 false)
  br label %.loopexit

561:                                              ; preds = %554
  %562 = sub nsw i64 0, %556
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %516, ptr align 1 %557, i64 %562, i1 false)
  %563 = getelementptr inbounds nuw i8, ptr %516, i64 %562
  store i64 %558, ptr %282, align 8, !tbaa !127
  br label %564

564:                                              ; preds = %561, %.loopexit44
  %565 = phi ptr [ %33, %561 ], [ %520, %.loopexit44 ]
  %566 = phi ptr [ %563, %561 ], [ %516, %.loopexit44 ]
  %567 = phi i64 [ %558, %561 ], [ %396, %.loopexit44 ]
  %568 = icmp ugt i64 %380, 15
  br i1 %568, label %569, label %585, !prof !87

569:                                              ; preds = %564
  %570 = getelementptr inbounds nuw i8, ptr %566, i64 %567
  %571 = load <2 x i64>, ptr %565, align 1, !tbaa !9
  store <2 x i64> %571, ptr %566, align 1, !tbaa !9
  %572 = icmp ult i64 %567, 17
  br i1 %572, label %.loopexit, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds nuw i8, ptr %566, i64 16
  br label %575

575:                                              ; preds = %575, %573
  %576 = phi ptr [ %574, %573 ], [ %583, %575 ]
  %577 = phi ptr [ %565, %573 ], [ %581, %575 ]
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 16
  %579 = load <2 x i64>, ptr %578, align 1, !tbaa !9
  store <2 x i64> %579, ptr %576, align 1, !tbaa !9
  %580 = getelementptr inbounds nuw i8, ptr %576, i64 16
  %581 = getelementptr inbounds nuw i8, ptr %577, i64 32
  %582 = load <2 x i64>, ptr %581, align 1, !tbaa !9
  store <2 x i64> %582, ptr %580, align 1, !tbaa !9
  %583 = getelementptr inbounds nuw i8, ptr %576, i64 32
  %584 = icmp ult ptr %583, %570
  br i1 %584, label %575, label %.loopexit, !llvm.loop !97

585:                                              ; preds = %564
  %586 = icmp samesign ult i64 %380, 8
  br i1 %586, label %587, label %609

587:                                              ; preds = %585
  %588 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %380
  %589 = load i32, ptr %588, align 4, !tbaa !30
  %590 = load i8, ptr %565, align 1, !tbaa !9
  store i8 %590, ptr %566, align 1, !tbaa !9
  %591 = getelementptr inbounds nuw i8, ptr %565, i64 1
  %592 = load i8, ptr %591, align 1, !tbaa !9
  %593 = getelementptr inbounds nuw i8, ptr %566, i64 1
  store i8 %592, ptr %593, align 1, !tbaa !9
  %594 = getelementptr inbounds nuw i8, ptr %565, i64 2
  %595 = load i8, ptr %594, align 1, !tbaa !9
  %596 = getelementptr inbounds nuw i8, ptr %566, i64 2
  store i8 %595, ptr %596, align 1, !tbaa !9
  %597 = getelementptr inbounds nuw i8, ptr %565, i64 3
  %598 = load i8, ptr %597, align 1, !tbaa !9
  %599 = getelementptr inbounds nuw i8, ptr %566, i64 3
  store i8 %598, ptr %599, align 1, !tbaa !9
  %600 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %380
  %601 = load i32, ptr %600, align 4, !tbaa !30
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds nuw i8, ptr %565, i64 %602
  %604 = getelementptr inbounds nuw i8, ptr %566, i64 4
  %605 = load i32, ptr %603, align 1
  store i32 %605, ptr %604, align 1
  %606 = sext i32 %589 to i64
  %607 = sub nsw i64 0, %606
  %608 = getelementptr inbounds i8, ptr %603, i64 %607
  br label %611

609:                                              ; preds = %585
  %610 = load i64, ptr %565, align 1
  store i64 %610, ptr %566, align 1
  br label %611

611:                                              ; preds = %609, %587
  %612 = phi ptr [ %608, %587 ], [ %565, %609 ]
  %613 = getelementptr inbounds nuw i8, ptr %612, i64 8
  %614 = getelementptr inbounds nuw i8, ptr %566, i64 8
  %615 = icmp ugt i64 %567, 8
  br i1 %615, label %616, label %.loopexit

616:                                              ; preds = %611
  %617 = ptrtoint ptr %614 to i64
  %618 = ptrtoint ptr %613 to i64
  %619 = sub i64 %617, %618
  %620 = getelementptr i8, ptr %566, i64 %567
  %621 = icmp slt i64 %619, 16
  br i1 %621, label %622, label %663

622:                                              ; preds = %616
  %623 = tail call i64 @llvm.umin.i64(i64 %380, i64 %548)
  %624 = tail call i64 @llvm.umax.i64(i64 %380, i64 %548)
  %625 = sub i64 %285, %380
  %626 = add i64 %625, %396
  %627 = add i64 %626, %623
  %628 = add i64 %627, %624
  %629 = add i64 %288, %624
  %630 = tail call i64 @llvm.umax.i64(i64 %628, i64 %629)
  %631 = add i64 %624, %285
  %reass.sub72 = sub i64 %630, %631
  %632 = add i64 %reass.sub72, -9
  %633 = lshr i64 %632, 3
  %634 = add nuw nsw i64 %633, 1
  %635 = icmp ult i64 %632, 24
  %636 = icmp ult i64 %619, 32
  %637 = or i1 %635, %636
  br i1 %637, label %.preheader, label %638

638:                                              ; preds = %622
  %639 = and i64 %634, 4611686018427387900
  br label %640

640:                                              ; preds = %640, %638
  %641 = phi i64 [ 0, %638 ], [ %649, %640 ]
  %642 = shl i64 %641, 3
  %643 = getelementptr i8, ptr %614, i64 %642
  %644 = getelementptr i8, ptr %613, i64 %642
  %645 = getelementptr i8, ptr %644, i64 16
  %646 = load <2 x i64>, ptr %644, align 1
  %647 = load <2 x i64>, ptr %645, align 1
  %648 = getelementptr i8, ptr %643, i64 16
  store <2 x i64> %646, ptr %643, align 1
  store <2 x i64> %647, ptr %648, align 1
  %649 = add nuw i64 %641, 4
  %650 = icmp eq i64 %649, %639
  br i1 %650, label %651, label %640, !llvm.loop !158

651:                                              ; preds = %640
  %652 = shl i64 %639, 3
  %653 = getelementptr i8, ptr %614, i64 %652
  %654 = getelementptr i8, ptr %613, i64 %652
  %655 = icmp eq i64 %634, %639
  br i1 %655, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %651, %622
  %.ph = phi ptr [ %653, %651 ], [ %614, %622 ]
  %.ph192 = phi ptr [ %654, %651 ], [ %613, %622 ]
  br label %656

656:                                              ; preds = %.preheader, %656
  %657 = phi ptr [ %660, %656 ], [ %.ph, %.preheader ]
  %658 = phi ptr [ %661, %656 ], [ %.ph192, %.preheader ]
  %659 = load i64, ptr %658, align 1
  store i64 %659, ptr %657, align 1
  %660 = getelementptr inbounds nuw i8, ptr %657, i64 8
  %661 = getelementptr inbounds nuw i8, ptr %658, i64 8
  %662 = icmp ult ptr %660, %620
  br i1 %662, label %656, label %.loopexit, !llvm.loop !159

663:                                              ; preds = %616
  %664 = load <2 x i64>, ptr %613, align 1, !tbaa !9
  store <2 x i64> %664, ptr %614, align 1, !tbaa !9
  %665 = icmp ult i64 %567, 25
  br i1 %665, label %.loopexit, label %666

666:                                              ; preds = %663
  %667 = getelementptr inbounds nuw i8, ptr %566, i64 24
  br label %668

668:                                              ; preds = %668, %666
  %669 = phi ptr [ %667, %666 ], [ %676, %668 ]
  %670 = phi ptr [ %613, %666 ], [ %674, %668 ]
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 16
  %672 = load <2 x i64>, ptr %671, align 1, !tbaa !9
  store <2 x i64> %672, ptr %669, align 1, !tbaa !9
  %673 = getelementptr inbounds nuw i8, ptr %669, i64 16
  %674 = getelementptr inbounds nuw i8, ptr %670, i64 32
  %675 = load <2 x i64>, ptr %674, align 1, !tbaa !9
  store <2 x i64> %675, ptr %673, align 1, !tbaa !9
  %676 = getelementptr inbounds nuw i8, ptr %669, i64 32
  %677 = icmp ult ptr %676, %620
  br i1 %677, label %668, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %668, %656, %575, %663, %651, %611, %569, %560, %528
  %678 = phi i64 [ %529, %528 ], [ %517, %560 ], [ %517, %611 ], [ %517, %569 ], [ %517, %663 ], [ %517, %651 ], [ %517, %575 ], [ %517, %656 ], [ %517, %668 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %679 = icmp ult i64 %678, -119
  %680 = getelementptr inbounds nuw i8, ptr %300, i64 %678
  br i1 %679, label %681, label %.loopexit45

681:                                              ; preds = %.loopexit
  %682 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %299, i32 -1)
  %683 = extractvalue { i32, i1 } %682, 1, !nosanitize !86
  br i1 %683, label %684, label %685, !prof !109, !nosanitize !86

684:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !86
  unreachable, !nosanitize !86

685:                                              ; preds = %681
  %686 = extractvalue { i32, i1 } %682, 0, !nosanitize !86
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %289, !llvm.loop !160

688:                                              ; preds = %685
  %689 = icmp eq ptr %510, %3
  %690 = icmp eq i32 %511, 64
  %691 = select i1 %689, i1 %690, i1 false
  br i1 %691, label %692, label %.loopexit45

692:                                              ; preds = %688
  %693 = trunc i64 %380 to i32
  store i32 %693, ptr %41, align 4, !tbaa !30
  %694 = trunc i64 %379 to i32
  store i32 %694, ptr %45, align 4, !tbaa !30
  %695 = trunc i64 %381 to i32
  store i32 %695, ptr %49, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %696 = load ptr, ptr %8, align 8, !tbaa !38
  br label %698

.loopexit45:                                      ; preds = %.loopexit, %688, %553, %122, %110, %59, %39
  %697 = phi i64 [ -20, %553 ], [ -20, %122 ], [ -20, %688 ], [ -20, %39 ], [ -20, %59 ], [ -20, %110 ], [ %678, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %717

698:                                              ; preds = %692, %25
  %699 = phi ptr [ %696, %692 ], [ %28, %25 ]
  %700 = phi ptr [ %680, %692 ], [ %1, %25 ]
  %701 = ptrtoint ptr %31 to i64
  %702 = ptrtoint ptr %699 to i64
  %703 = sub i64 %701, %702
  %704 = ptrtoint ptr %26 to i64
  %705 = ptrtoint ptr %700 to i64
  %706 = sub i64 %704, %705
  %707 = icmp ugt i64 %703, %706
  br i1 %707, label %717, label %708

708:                                              ; preds = %698
  %709 = icmp eq ptr %700, null
  br i1 %709, label %713, label %710

710:                                              ; preds = %708
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %700, ptr align 1 %699, i64 %703, i1 false)
  %711 = getelementptr inbounds nuw i8, ptr %700, i64 %703
  %712 = ptrtoint ptr %711 to i64
  br label %713

713:                                              ; preds = %710, %708
  %714 = phi i64 [ 0, %708 ], [ %712, %710 ]
  %715 = ptrtoint ptr %1 to i64
  %716 = sub i64 %714, %715
  br label %717

717:                                              ; preds = %713, %698, %.loopexit45
  %718 = phi i64 [ %716, %713 ], [ %697, %.loopexit45 ], [ -70, %698 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %719

719:                                              ; preds = %717, %13
  %720 = phi i64 [ %14, %13 ], [ %718, %717 ]
  ret i64 %720
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_checkContinuity(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %5 = load ptr, ptr %4, align 8, !tbaa !161
  %6 = icmp ne ptr %1, %5
  %7 = icmp ne i64 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %5, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %14, %13
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %16, ptr %17, align 8, !tbaa !67
  store ptr %1, ptr %11, align 8, !tbaa !70
  store ptr %1, ptr %4, align 8, !tbaa !161
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_deprecated(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = icmp ne ptr %1, %8
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %8, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %19, ptr %20, align 8, !tbaa !67
  store ptr %1, ptr %14, align 8, !tbaa !70
  store ptr %1, ptr %7, align 8, !tbaa !161
  br label %21

21:                                               ; preds = %12, %5
  %22 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %23 = icmp ult i64 %22, -119
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %22
  store ptr %25, ptr %7, align 8, !tbaa !161
  br label %26

26:                                               ; preds = %24, %21
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = icmp ne ptr %1, %8
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %8, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %19, ptr %20, align 8, !tbaa !67
  store ptr %1, ptr %14, align 8, !tbaa !70
  store ptr %1, ptr %7, align 8, !tbaa !161
  br label %21

21:                                               ; preds = %12, %5
  %22 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %23 = icmp ult i64 %22, -119
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %22
  store ptr %25, ptr %7, align 8, !tbaa !161
  br label %26

26:                                               ; preds = %24, %21
  ret i64 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #7

declare i64 @HUF_decompress1X_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i64 @HUF_decompress4X_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #12 {
  %7 = alloca ptr, align 8
  %8 = alloca [8 x %struct.seq_t], align 16
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %11 = load i32, ptr %10, align 8, !tbaa !35
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  br label %19

16:                                               ; preds = %6
  %17 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 %17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %18, %16 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  store ptr %22, ptr %7, align 8, !tbaa !38
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %2053, label %32

32:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %33, align 4, !tbaa !62
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %35 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %36 = load i32, ptr %34, align 4, !tbaa !30
  %37 = zext i32 %36 to i64
  store i64 %37, ptr %35, align 8, !tbaa !45
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %39 = load i32, ptr %38, align 4, !tbaa !30
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %40, ptr %41, align 8, !tbaa !45
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %43 = load i32, ptr %42, align 4, !tbaa !30
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %44, ptr %45, align 8, !tbaa !45
  %46 = tail call i32 @llvm.smin.i32(i32 %5, i32 8)
  %47 = ptrtoint ptr %1 to i64
  %48 = ptrtoint ptr %26 to i64
  %49 = sub i64 %47, %48
  %50 = icmp eq i64 %4, 0
  br i1 %50, label %.thread, label %51

51:                                               ; preds = %32
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %52, align 8, !tbaa !72
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %53, ptr %54, align 8, !tbaa !74
  %55 = icmp ugt i64 %4, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = add nsw i64 %4, -8
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %58, ptr %59, align 8, !tbaa !75
  %60 = load i64, ptr %58, align 1
  store i64 %60, ptr %9, align 8, !tbaa !76
  %61 = icmp ult i64 %60, 72057594037927936
  br i1 %61, label %.thread, label %119

62:                                               ; preds = %51
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 16
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
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 48
  %71 = or disjoint i64 %70, %65
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i64 [ %65, %62 ], [ %71, %66 ]
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 40
  %78 = add nuw nsw i64 %77, %73
  br label %79

79:                                               ; preds = %72, %62
  %80 = phi i64 [ %65, %62 ], [ %78, %72 ]
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 32
  %85 = add nuw nsw i64 %84, %80
  br label %86

86:                                               ; preds = %79, %62
  %87 = phi i64 [ %65, %62 ], [ %85, %79 ]
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 24
  %92 = add nuw nsw i64 %91, %87
  br label %93

93:                                               ; preds = %86, %62
  %94 = phi i64 [ %65, %62 ], [ %92, %86 ]
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !9
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = add nuw nsw i64 %98, %94
  br label %100

100:                                              ; preds = %93, %62
  %101 = phi i64 [ %65, %62 ], [ %99, %93 ]
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 1
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
  br i1 %112, label %.thread, label %113

113:                                              ; preds = %107
  %114 = zext i8 %111 to i32
  %115 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %114, i1 true)
  %116 = trunc nuw nsw i64 %4 to i32
  %117 = shl nuw nsw i32 %116, 3
  %reass.sub = sub nsw i32 %115, %117
  %118 = add nsw i32 %reass.sub, 41
  br label %126

119:                                              ; preds = %56
  %120 = lshr i64 %60, 56
  %121 = trunc nuw nsw i64 %120 to i32
  %122 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %121, i1 true)
  %123 = xor i32 %122, 31
  %124 = sub nuw nsw i32 8, %123
  %125 = icmp ult i64 %4, -119
  br i1 %125, label %126, label %.thread

126:                                              ; preds = %119, %113
  %127 = phi ptr [ %3, %113 ], [ %58, %119 ]
  %128 = phi i64 [ 0, %113 ], [ %57, %119 ]
  %129 = phi i32 [ %118, %113 ], [ %124, %119 ]
  %130 = phi i64 [ %108, %113 ], [ %60, %119 ]
  %131 = getelementptr inbounds i8, ptr %3, i64 %128
  %132 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %133 = load ptr, ptr %0, align 8, !tbaa !77
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 4
  %135 = load i32, ptr %134, align 4, !tbaa !63
  %136 = getelementptr inbounds nuw i8, ptr %9, i64 8
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
  %147 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %146, label %148, label %149, !prof !52

148:                                              ; preds = %126
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %171

149:                                              ; preds = %126
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
  %157 = load i64, ptr %155, align 1, !tbaa !45
  store i64 %157, ptr %9, align 8, !tbaa !76
  br label %171

158:                                              ; preds = %149
  %159 = icmp eq i64 %128, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %158
  %161 = lshr i32 %137, 3
  %162 = zext nneg i32 %161 to i64
  %163 = tail call i64 @llvm.smin.i64(i64 %128, i64 %162)
  %164 = trunc i64 %163 to i32
  %165 = and i64 %163, 4294967295
  %166 = sub nsw i64 0, %165
  %167 = getelementptr inbounds i8, ptr %131, i64 %166
  store ptr %167, ptr %147, align 8, !tbaa !75
  %168 = shl i32 %164, 3
  %169 = sub i32 %137, %168
  store i32 %169, ptr %136, align 8, !tbaa !80
  %170 = load i64, ptr %167, align 1, !tbaa !45
  store i64 %170, ptr %9, align 8, !tbaa !76
  br label %171

171:                                              ; preds = %160, %158, %151, %148
  %172 = phi ptr [ @BIT_reloadDStream.zeroFilled, %148 ], [ %155, %151 ], [ %127, %158 ], [ %167, %160 ]
  %173 = phi ptr [ @BIT_reloadDStream.zeroFilled, %148 ], [ %155, %151 ], [ %3, %158 ], [ %167, %160 ]
  %174 = phi i32 [ %137, %148 ], [ %156, %151 ], [ %137, %158 ], [ %169, %160 ]
  %175 = phi i64 [ %130, %148 ], [ %157, %151 ], [ %130, %158 ], [ %170, %160 ]
  %176 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %176, ptr %177, align 8, !tbaa !81
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %180 = load ptr, ptr %179, align 8, !tbaa !68
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 4
  %182 = load i32, ptr %181, align 4, !tbaa !63
  %183 = add i32 %182, %174
  %184 = sub i32 0, %183
  %185 = and i32 %184, 63
  %186 = zext nneg i32 %185 to i64
  %187 = lshr i64 %175, %186
  %188 = zext nneg i32 %182 to i64
  %189 = shl nsw i64 -1, %188
  %190 = xor i64 %189, -1
  %191 = and i64 %187, %190
  store i64 %191, ptr %178, align 8, !tbaa !78
  %192 = icmp ugt i32 %183, 64
  br i1 %192, label %193, label %194, !prof !52

193:                                              ; preds = %171
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %222

194:                                              ; preds = %171
  %195 = icmp ult ptr %173, %53
  br i1 %195, label %203, label %196

196:                                              ; preds = %194
  %197 = lshr i32 %183, 3
  %198 = zext nneg i32 %197 to i64
  %199 = sub nsw i64 0, %198
  %200 = getelementptr inbounds i8, ptr %173, i64 %199
  store ptr %200, ptr %147, align 8, !tbaa !75
  %201 = and i32 %183, 7
  %202 = load i64, ptr %200, align 1, !tbaa !45
  store i64 %202, ptr %9, align 8, !tbaa !76
  br label %222

203:                                              ; preds = %194
  %204 = icmp eq ptr %173, %3
  br i1 %204, label %222, label %205

205:                                              ; preds = %203
  %206 = lshr i32 %183, 3
  %207 = zext nneg i32 %206 to i64
  %208 = sub nsw i64 0, %207
  %209 = getelementptr inbounds i8, ptr %173, i64 %208
  %210 = icmp ult ptr %209, %3
  %211 = ptrtoint ptr %173 to i64
  %212 = ptrtoint ptr %3 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = select i1 %210, i32 %214, i32 %206
  %216 = zext i32 %215 to i64
  %217 = sub nsw i64 0, %216
  %218 = getelementptr inbounds i8, ptr %173, i64 %217
  store ptr %218, ptr %147, align 8, !tbaa !75
  %219 = shl i32 %215, 3
  %220 = sub i32 %183, %219
  %221 = load i64, ptr %218, align 1, !tbaa !45
  store i64 %221, ptr %9, align 8, !tbaa !76
  br label %222

222:                                              ; preds = %205, %203, %196, %193
  %223 = phi ptr [ @BIT_reloadDStream.zeroFilled, %193 ], [ %200, %196 ], [ %172, %203 ], [ %218, %205 ]
  %224 = phi ptr [ @BIT_reloadDStream.zeroFilled, %193 ], [ %200, %196 ], [ %173, %203 ], [ %218, %205 ]
  %225 = phi i32 [ %183, %193 ], [ %201, %196 ], [ %183, %203 ], [ %220, %205 ]
  %226 = phi i64 [ %175, %193 ], [ %202, %196 ], [ %175, %203 ], [ %221, %205 ]
  %227 = getelementptr inbounds nuw i8, ptr %180, i64 8
  %228 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %227, ptr %228, align 8, !tbaa !81
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %231 = load ptr, ptr %230, align 8, !tbaa !82
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 4
  %233 = load i32, ptr %232, align 4, !tbaa !63
  %234 = add i32 %233, %225
  %235 = sub i32 0, %234
  %236 = and i32 %235, 63
  %237 = zext nneg i32 %236 to i64
  %238 = lshr i64 %226, %237
  %239 = zext nneg i32 %233 to i64
  %240 = shl nsw i64 -1, %239
  %241 = xor i64 %240, -1
  %242 = and i64 %238, %241
  store i32 %234, ptr %136, align 8, !tbaa !80
  store i64 %242, ptr %229, align 8, !tbaa !78
  %243 = icmp ugt i32 %234, 64
  br i1 %243, label %244, label %245, !prof !52

244:                                              ; preds = %222
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75
  br label %273

245:                                              ; preds = %222
  %246 = icmp ult ptr %224, %53
  br i1 %246, label %254, label %247

247:                                              ; preds = %245
  %248 = lshr i32 %234, 3
  %249 = zext nneg i32 %248 to i64
  %250 = sub nsw i64 0, %249
  %251 = getelementptr inbounds i8, ptr %224, i64 %250
  store ptr %251, ptr %147, align 8, !tbaa !75
  %252 = and i32 %234, 7
  store i32 %252, ptr %136, align 8, !tbaa !80
  %253 = load i64, ptr %251, align 1, !tbaa !45
  store i64 %253, ptr %9, align 8, !tbaa !76
  br label %273

254:                                              ; preds = %245
  %255 = icmp eq ptr %224, %3
  br i1 %255, label %273, label %256

256:                                              ; preds = %254
  %257 = lshr i32 %234, 3
  %258 = zext nneg i32 %257 to i64
  %259 = sub nsw i64 0, %258
  %260 = getelementptr inbounds i8, ptr %224, i64 %259
  %261 = icmp ult ptr %260, %3
  %262 = ptrtoint ptr %224 to i64
  %263 = ptrtoint ptr %3 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  %266 = select i1 %261, i32 %265, i32 %257
  %267 = zext i32 %266 to i64
  %268 = sub nsw i64 0, %267
  %269 = getelementptr inbounds i8, ptr %224, i64 %268
  store ptr %269, ptr %147, align 8, !tbaa !75
  %270 = shl i32 %266, 3
  %271 = sub i32 %234, %270
  store i32 %271, ptr %136, align 8, !tbaa !80
  %272 = load i64, ptr %269, align 1, !tbaa !45
  store i64 %272, ptr %9, align 8, !tbaa !76
  br label %273

273:                                              ; preds = %256, %254, %247, %244
  %274 = phi ptr [ @BIT_reloadDStream.zeroFilled, %244 ], [ %251, %247 ], [ %223, %254 ], [ %269, %256 ]
  %275 = phi i64 [ %226, %244 ], [ %253, %247 ], [ %226, %254 ], [ %272, %256 ]
  %276 = phi i32 [ %234, %244 ], [ %252, %247 ], [ %234, %254 ], [ %271, %256 ]
  %277 = phi ptr [ @BIT_reloadDStream.zeroFilled, %244 ], [ %251, %247 ], [ %224, %254 ], [ %269, %256 ]
  %278 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %279 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %278, ptr %279, align 8, !tbaa !81
  %280 = icmp sgt i32 %5, 0
  br i1 %280, label %281, label %.loopexit159

281:                                              ; preds = %273
  %282 = ptrtoint ptr %3 to i64
  %283 = add nsw i32 %5, -1
  %284 = zext nneg i32 %283 to i64
  %285 = zext nneg i32 %46 to i64
  br label %308

.loopexit159:                                     ; preds = %533, %273
  %286 = phi ptr [ %274, %273 ], [ %534, %533 ]
  %287 = phi i64 [ %275, %273 ], [ %540, %533 ]
  %288 = phi i32 [ %276, %273 ], [ %539, %533 ]
  %289 = phi ptr [ %277, %273 ], [ %538, %533 ]
  %290 = phi i64 [ %44, %273 ], [ %404, %533 ]
  %291 = phi i64 [ %40, %273 ], [ %402, %533 ]
  %292 = phi i64 [ %37, %273 ], [ %403, %533 ]
  %293 = phi i64 [ %242, %273 ], [ %535, %533 ]
  %294 = phi i64 [ %191, %273 ], [ %536, %533 ]
  %295 = phi i64 [ %145, %273 ], [ %537, %533 ]
  %296 = phi i64 [ %49, %273 ], [ %551, %533 ]
  %297 = phi i32 [ 0, %273 ], [ %46, %533 ]
  %298 = icmp slt i32 %297, %5
  br i1 %298, label %299, label %.loopexit158

299:                                              ; preds = %.loopexit159
  %300 = add nsw i32 %5, -1
  %301 = getelementptr inbounds i8, ptr %20, i64 -32
  %302 = ptrtoint ptr %28 to i64
  %303 = ptrtoint ptr %20 to i64
  %304 = getelementptr i8, ptr %0, i64 30372
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %307 = ptrtoint ptr %3 to i64
  br label %557

308:                                              ; preds = %533, %281
  %309 = phi ptr [ %274, %281 ], [ %534, %533 ]
  %310 = phi i64 [ %44, %281 ], [ %404, %533 ]
  %311 = phi i64 [ %242, %281 ], [ %535, %533 ]
  %312 = phi i64 [ %191, %281 ], [ %536, %533 ]
  %313 = phi i64 [ %145, %281 ], [ %537, %533 ]
  %314 = phi i64 [ 0, %281 ], [ %555, %533 ]
  %315 = phi i64 [ %40, %281 ], [ %402, %533 ]
  %316 = phi i64 [ %37, %281 ], [ %403, %533 ]
  %317 = phi i64 [ %49, %281 ], [ %551, %533 ]
  %318 = phi i64 [ %145, %281 ], [ %543, %533 ]
  %319 = phi i64 [ %242, %281 ], [ %542, %533 ]
  %320 = phi i64 [ %191, %281 ], [ %541, %533 ]
  %321 = phi i64 [ %275, %281 ], [ %540, %533 ]
  %322 = phi i32 [ %276, %281 ], [ %539, %533 ]
  %323 = phi ptr [ %277, %281 ], [ %538, %533 ]
  %324 = icmp eq i64 %314, %284
  %325 = getelementptr inbounds nuw [8 x i8], ptr %176, i64 %318
  %326 = getelementptr inbounds nuw [8 x i8], ptr %278, i64 %319
  %327 = getelementptr inbounds nuw [8 x i8], ptr %227, i64 %320
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 4
  %329 = load i32, ptr %328, align 4, !tbaa !41, !noalias !162
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds nuw i8, ptr %325, i64 4
  %332 = load i32, ptr %331, align 4, !tbaa !41, !noalias !162
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds nuw i8, ptr %327, i64 4
  %335 = load i32, ptr %334, align 4, !tbaa !41, !noalias !162
  %336 = getelementptr inbounds nuw i8, ptr %325, i64 2
  %337 = load i8, ptr %336, align 2, !tbaa !58, !noalias !162
  %338 = getelementptr inbounds nuw i8, ptr %326, i64 2
  %339 = load i8, ptr %338, align 2, !tbaa !58, !noalias !162
  %340 = getelementptr inbounds nuw i8, ptr %327, i64 2
  %341 = load i8, ptr %340, align 2, !tbaa !58, !noalias !162
  %342 = zext i8 %337 to i32
  %343 = zext i8 %339 to i32
  %344 = add i8 %339, %337
  %345 = add i8 %344, %341
  %346 = load i16, ptr %325, align 4, !tbaa !57, !noalias !162
  %347 = load i16, ptr %326, align 4, !tbaa !57, !noalias !162
  %348 = load i16, ptr %327, align 4, !tbaa !57, !noalias !162
  %349 = getelementptr inbounds nuw i8, ptr %325, i64 3
  %350 = load i8, ptr %349, align 1, !tbaa !56, !noalias !162
  %351 = zext i8 %350 to i32
  %352 = getelementptr inbounds nuw i8, ptr %326, i64 3
  %353 = load i8, ptr %352, align 1, !tbaa !56, !noalias !162
  %354 = zext i8 %353 to i32
  %355 = getelementptr inbounds nuw i8, ptr %327, i64 3
  %356 = load i8, ptr %355, align 1, !tbaa !56, !noalias !162
  %357 = zext i8 %356 to i32
  %358 = icmp ugt i8 %341, 1
  br i1 %358, label %360, label %372

359:                                              ; preds = %1425
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !86
  unreachable, !nosanitize !86

360:                                              ; preds = %308
  %361 = zext i8 %341 to i32
  %362 = and i32 %322, 63
  %363 = zext nneg i32 %362 to i64
  %364 = shl i64 %321, %363
  %365 = sub nsw i32 0, %361
  %366 = and i32 %365, 63
  %367 = zext nneg i32 %366 to i64
  %368 = lshr i64 %364, %367
  %369 = add i32 %322, %361
  store i32 %369, ptr %136, align 8, !tbaa !80, !noalias !162
  %370 = zext i32 %335 to i64
  %371 = add i64 %368, %370
  store i64 %315, ptr %45, align 8, !tbaa !45, !noalias !162
  br label %401

372:                                              ; preds = %308
  %373 = icmp eq i32 %332, 0
  %374 = icmp eq i8 %341, 0
  br i1 %374, label %375, label %378, !prof !87

375:                                              ; preds = %372
  %376 = select i1 %373, i64 %315, i64 %316
  %377 = select i1 %373, i64 %316, i64 %315
  br label %401

378:                                              ; preds = %372
  %379 = zext i1 %373 to i32
  %380 = add i32 %335, %379
  %381 = zext i32 %380 to i64
  %382 = and i32 %322, 63
  %383 = zext nneg i32 %382 to i64
  %384 = shl i64 %321, %383
  %385 = lshr i64 %384, 63
  %386 = add i32 %322, 1
  store i32 %386, ptr %136, align 8, !tbaa !80, !noalias !162
  %387 = add nuw nsw i64 %385, %381
  %388 = icmp eq i64 %387, 3
  br i1 %388, label %389, label %393

389:                                              ; preds = %378
  %390 = add i64 %316, -1
  %391 = icmp eq i64 %390, 0
  %392 = select i1 %391, i64 -1, i64 %390
  br label %399

393:                                              ; preds = %378
  %394 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %387
  %395 = load i64, ptr %394, align 8, !tbaa !45, !noalias !162
  %396 = icmp eq i64 %395, 0
  %397 = select i1 %396, i64 -1, i64 %395
  %398 = icmp eq i64 %387, 1
  br i1 %398, label %401, label %399

399:                                              ; preds = %393, %389
  %400 = phi i64 [ %392, %389 ], [ %397, %393 ]
  store i64 %315, ptr %45, align 8, !tbaa !45, !noalias !162
  br label %401

401:                                              ; preds = %399, %393, %375, %360
  %402 = phi i64 [ %377, %375 ], [ %316, %360 ], [ %316, %399 ], [ %316, %393 ]
  %403 = phi i64 [ %376, %375 ], [ %371, %360 ], [ %400, %399 ], [ %397, %393 ]
  %404 = phi i64 [ %310, %375 ], [ %315, %360 ], [ %315, %399 ], [ %310, %393 ]
  %405 = phi i32 [ %322, %375 ], [ %369, %360 ], [ %386, %399 ], [ %386, %393 ]
  store i64 %402, ptr %41, align 8, !tbaa !45, !noalias !162
  store i64 %403, ptr %35, align 8, !tbaa !45, !noalias !162
  %406 = icmp eq i8 %339, 0
  br i1 %406, label %417, label %407

407:                                              ; preds = %401
  %408 = and i32 %405, 63
  %409 = zext nneg i32 %408 to i64
  %410 = shl i64 %321, %409
  %411 = sub nsw i32 0, %343
  %412 = and i32 %411, 63
  %413 = zext nneg i32 %412 to i64
  %414 = lshr i64 %410, %413
  %415 = add i32 %405, %343
  store i32 %415, ptr %136, align 8, !tbaa !80, !noalias !162
  %416 = add i64 %414, %330
  br label %417

417:                                              ; preds = %407, %401
  %418 = phi i32 [ %405, %401 ], [ %415, %407 ]
  %419 = phi i64 [ %330, %401 ], [ %416, %407 ]
  %420 = icmp ugt i8 %345, 30
  br i1 %420, label %421, label %451, !prof !52

421:                                              ; preds = %417
  %422 = icmp ugt i32 %418, 64
  br i1 %422, label %423, label %424, !prof !52

423:                                              ; preds = %421
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !162
  br label %451

424:                                              ; preds = %421
  %425 = icmp ult ptr %323, %53
  br i1 %425, label %433, label %426

426:                                              ; preds = %424
  %427 = lshr i32 %418, 3
  %428 = zext nneg i32 %427 to i64
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %323, i64 %429
  store ptr %430, ptr %147, align 8, !tbaa !75, !noalias !162
  %431 = and i32 %418, 7
  store i32 %431, ptr %136, align 8, !tbaa !80, !noalias !162
  %432 = load i64, ptr %430, align 1, !tbaa !45, !noalias !162
  store i64 %432, ptr %9, align 8, !tbaa !76, !noalias !162
  br label %451

433:                                              ; preds = %424
  %434 = icmp eq ptr %323, %3
  br i1 %434, label %451, label %435

435:                                              ; preds = %433
  %436 = lshr i32 %418, 3
  %437 = zext nneg i32 %436 to i64
  %438 = sub nsw i64 0, %437
  %439 = getelementptr inbounds i8, ptr %323, i64 %438
  %440 = icmp ult ptr %439, %3
  %441 = ptrtoint ptr %323 to i64
  %442 = sub i64 %441, %282
  %443 = trunc i64 %442 to i32
  %444 = select i1 %440, i32 %443, i32 %436
  %445 = zext i32 %444 to i64
  %446 = sub nsw i64 0, %445
  %447 = getelementptr inbounds i8, ptr %323, i64 %446
  store ptr %447, ptr %147, align 8, !tbaa !75, !noalias !162
  %448 = shl i32 %444, 3
  %449 = sub i32 %418, %448
  store i32 %449, ptr %136, align 8, !tbaa !80, !noalias !162
  %450 = load i64, ptr %447, align 1, !tbaa !45, !noalias !162
  store i64 %450, ptr %9, align 8, !tbaa !76, !noalias !162
  br label %451

451:                                              ; preds = %435, %433, %426, %423, %417
  %452 = phi ptr [ %309, %433 ], [ %447, %435 ], [ %430, %426 ], [ @BIT_reloadDStream.zeroFilled, %423 ], [ %309, %417 ]
  %453 = phi ptr [ %323, %433 ], [ %447, %435 ], [ %430, %426 ], [ @BIT_reloadDStream.zeroFilled, %423 ], [ %323, %417 ]
  %454 = phi i32 [ %418, %433 ], [ %449, %435 ], [ %431, %426 ], [ %418, %423 ], [ %418, %417 ]
  %455 = phi i64 [ %321, %433 ], [ %450, %435 ], [ %432, %426 ], [ %321, %423 ], [ %321, %417 ]
  %456 = icmp eq i8 %337, 0
  br i1 %456, label %467, label %457

457:                                              ; preds = %451
  %458 = and i32 %454, 63
  %459 = zext nneg i32 %458 to i64
  %460 = shl i64 %455, %459
  %461 = sub nsw i32 0, %342
  %462 = and i32 %461, 63
  %463 = zext nneg i32 %462 to i64
  %464 = lshr i64 %460, %463
  %465 = add i32 %454, %342
  store i32 %465, ptr %136, align 8, !tbaa !80, !noalias !162
  %466 = add i64 %464, %333
  br label %467

467:                                              ; preds = %457, %451
  %468 = phi i32 [ %454, %451 ], [ %465, %457 ]
  %469 = phi i64 [ %333, %451 ], [ %466, %457 ]
  br i1 %324, label %533, label %470

470:                                              ; preds = %467
  %471 = add i32 %468, %351
  %472 = sub i32 0, %471
  %473 = and i32 %472, 63
  %474 = zext nneg i32 %473 to i64
  %475 = lshr i64 %455, %474
  %476 = zext nneg i8 %350 to i64
  %477 = shl nsw i64 -1, %476
  %478 = xor i64 %477, -1
  %479 = and i64 %475, %478
  %480 = zext i16 %346 to i64
  %481 = add nuw i64 %479, %480
  store i64 %481, ptr %132, align 8, !tbaa !78, !noalias !162
  %482 = add i32 %471, %354
  %483 = sub i32 0, %482
  %484 = and i32 %483, 63
  %485 = zext nneg i32 %484 to i64
  %486 = lshr i64 %455, %485
  %487 = zext nneg i8 %353 to i64
  %488 = shl nsw i64 -1, %487
  %489 = xor i64 %488, -1
  %490 = and i64 %486, %489
  %491 = zext i16 %347 to i64
  %492 = add nuw i64 %490, %491
  store i64 %492, ptr %229, align 8, !tbaa !78, !noalias !162
  %493 = add i32 %482, %357
  %494 = sub i32 0, %493
  %495 = and i32 %494, 63
  %496 = zext nneg i32 %495 to i64
  %497 = lshr i64 %455, %496
  %498 = zext nneg i8 %356 to i64
  %499 = shl nsw i64 -1, %498
  %500 = xor i64 %499, -1
  %501 = and i64 %497, %500
  store i32 %493, ptr %136, align 8, !tbaa !80, !noalias !162
  %502 = zext i16 %348 to i64
  %503 = add nuw i64 %501, %502
  store i64 %503, ptr %178, align 8, !tbaa !78, !noalias !162
  %504 = icmp ugt i32 %493, 64
  br i1 %504, label %505, label %506, !prof !52

505:                                              ; preds = %470
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !162
  br label %533

506:                                              ; preds = %470
  %507 = icmp ult ptr %453, %53
  br i1 %507, label %515, label %508

508:                                              ; preds = %506
  %509 = lshr i32 %493, 3
  %510 = zext nneg i32 %509 to i64
  %511 = sub nsw i64 0, %510
  %512 = getelementptr inbounds i8, ptr %453, i64 %511
  store ptr %512, ptr %147, align 8, !tbaa !75, !noalias !162
  %513 = and i32 %493, 7
  store i32 %513, ptr %136, align 8, !tbaa !80, !noalias !162
  %514 = load i64, ptr %512, align 1, !tbaa !45, !noalias !162
  store i64 %514, ptr %9, align 8, !tbaa !76, !noalias !162
  br label %533

515:                                              ; preds = %506
  %516 = icmp eq ptr %453, %3
  br i1 %516, label %533, label %517

517:                                              ; preds = %515
  %518 = lshr i32 %493, 3
  %519 = zext nneg i32 %518 to i64
  %520 = sub nsw i64 0, %519
  %521 = getelementptr inbounds i8, ptr %453, i64 %520
  %522 = icmp ult ptr %521, %3
  %523 = ptrtoint ptr %453 to i64
  %524 = sub i64 %523, %282
  %525 = trunc i64 %524 to i32
  %526 = select i1 %522, i32 %525, i32 %518
  %527 = zext i32 %526 to i64
  %528 = sub nsw i64 0, %527
  %529 = getelementptr inbounds i8, ptr %453, i64 %528
  store ptr %529, ptr %147, align 8, !tbaa !75, !noalias !162
  %530 = shl i32 %526, 3
  %531 = sub i32 %493, %530
  store i32 %531, ptr %136, align 8, !tbaa !80, !noalias !162
  %532 = load i64, ptr %529, align 1, !tbaa !45, !noalias !162
  store i64 %532, ptr %9, align 8, !tbaa !76, !noalias !162
  br label %533

533:                                              ; preds = %517, %515, %508, %505, %467
  %534 = phi ptr [ %452, %515 ], [ %529, %517 ], [ %512, %508 ], [ @BIT_reloadDStream.zeroFilled, %505 ], [ %452, %467 ]
  %535 = phi i64 [ %492, %515 ], [ %492, %517 ], [ %492, %508 ], [ %492, %505 ], [ %311, %467 ]
  %536 = phi i64 [ %503, %515 ], [ %503, %517 ], [ %503, %508 ], [ %503, %505 ], [ %312, %467 ]
  %537 = phi i64 [ %481, %515 ], [ %481, %517 ], [ %481, %508 ], [ %481, %505 ], [ %313, %467 ]
  %538 = phi ptr [ %453, %515 ], [ %529, %517 ], [ %512, %508 ], [ @BIT_reloadDStream.zeroFilled, %505 ], [ %453, %467 ]
  %539 = phi i32 [ %493, %515 ], [ %531, %517 ], [ %513, %508 ], [ %493, %505 ], [ %468, %467 ]
  %540 = phi i64 [ %455, %515 ], [ %532, %517 ], [ %514, %508 ], [ %455, %505 ], [ %455, %467 ]
  %541 = phi i64 [ %503, %515 ], [ %503, %517 ], [ %503, %508 ], [ %503, %505 ], [ %320, %467 ]
  %542 = phi i64 [ %492, %515 ], [ %492, %517 ], [ %492, %508 ], [ %492, %505 ], [ %319, %467 ]
  %543 = phi i64 [ %481, %515 ], [ %481, %517 ], [ %481, %508 ], [ %481, %505 ], [ %318, %467 ]
  %544 = add i64 %469, %317
  %545 = icmp ugt i64 %403, %544
  %546 = select i1 %545, ptr %30, ptr %26
  %547 = getelementptr inbounds i8, ptr %546, i64 %544
  %548 = sub i64 0, %403
  %549 = getelementptr inbounds i8, ptr %547, i64 %548
  tail call void @llvm.prefetch.p0(ptr %549, i32 0, i32 3, i32 1)
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %550, i32 0, i32 3, i32 1)
  %551 = add i64 %544, %419
  %552 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %314
  store i64 %469, ptr %552, align 8, !tbaa !45
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 8
  store i64 %419, ptr %553, align 8, !tbaa !45
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 16
  store i64 %403, ptr %554, align 8, !tbaa !45
  %555 = add nuw nsw i64 %314, 1
  %556 = icmp eq i64 %555, %285
  br i1 %556, label %.loopexit159, label %308, !llvm.loop !88

557:                                              ; preds = %1407, %299
  %558 = phi ptr [ %286, %299 ], [ %779, %1407 ]
  %559 = phi i32 [ %288, %299 ], [ %780, %1407 ]
  %560 = phi i64 [ %287, %299 ], [ %781, %1407 ]
  %561 = phi i64 [ %290, %299 ], [ %651, %1407 ]
  %562 = phi i64 [ %291, %299 ], [ %649, %1407 ]
  %563 = phi i64 [ %292, %299 ], [ %650, %1407 ]
  %564 = phi i64 [ %293, %299 ], [ %782, %1407 ]
  %565 = phi i64 [ %294, %299 ], [ %783, %1407 ]
  %566 = phi i64 [ %295, %299 ], [ %784, %1407 ]
  %567 = phi ptr [ %1, %299 ], [ %1410, %1407 ]
  %568 = phi ptr [ %24, %299 ], [ %1409, %1407 ]
  %569 = phi i32 [ %297, %299 ], [ %1412, %1407 ]
  %570 = phi i64 [ %296, %299 ], [ %1411, %1407 ]
  %571 = icmp eq i32 %569, %300
  %572 = getelementptr inbounds nuw [8 x i8], ptr %176, i64 %566
  %573 = getelementptr inbounds nuw [8 x i8], ptr %278, i64 %564
  %574 = getelementptr inbounds nuw [8 x i8], ptr %227, i64 %565
  %575 = getelementptr inbounds nuw i8, ptr %573, i64 4
  %576 = load i32, ptr %575, align 4, !tbaa !41, !noalias !165
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds nuw i8, ptr %572, i64 4
  %579 = load i32, ptr %578, align 4, !tbaa !41, !noalias !165
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds nuw i8, ptr %574, i64 4
  %582 = load i32, ptr %581, align 4, !tbaa !41, !noalias !165
  %583 = getelementptr inbounds nuw i8, ptr %572, i64 2
  %584 = load i8, ptr %583, align 2, !tbaa !58, !noalias !165
  %585 = getelementptr inbounds nuw i8, ptr %573, i64 2
  %586 = load i8, ptr %585, align 2, !tbaa !58, !noalias !165
  %587 = getelementptr inbounds nuw i8, ptr %574, i64 2
  %588 = load i8, ptr %587, align 2, !tbaa !58, !noalias !165
  %589 = zext i8 %584 to i32
  %590 = zext i8 %586 to i32
  %591 = add i8 %586, %584
  %592 = add i8 %591, %588
  %593 = load i16, ptr %572, align 4, !tbaa !57, !noalias !165
  %594 = load i16, ptr %573, align 4, !tbaa !57, !noalias !165
  %595 = load i16, ptr %574, align 4, !tbaa !57, !noalias !165
  %596 = getelementptr inbounds nuw i8, ptr %572, i64 3
  %597 = load i8, ptr %596, align 1, !tbaa !56, !noalias !165
  %598 = zext i8 %597 to i32
  %599 = getelementptr inbounds nuw i8, ptr %573, i64 3
  %600 = load i8, ptr %599, align 1, !tbaa !56, !noalias !165
  %601 = zext i8 %600 to i32
  %602 = getelementptr inbounds nuw i8, ptr %574, i64 3
  %603 = load i8, ptr %602, align 1, !tbaa !56, !noalias !165
  %604 = zext i8 %603 to i32
  %605 = icmp ugt i8 %588, 1
  br i1 %605, label %606, label %618

606:                                              ; preds = %557
  %607 = zext i8 %588 to i32
  %608 = and i32 %559, 63
  %609 = zext nneg i32 %608 to i64
  %610 = shl i64 %560, %609
  %611 = sub nsw i32 0, %607
  %612 = and i32 %611, 63
  %613 = zext nneg i32 %612 to i64
  %614 = lshr i64 %610, %613
  %615 = add i32 %559, %607
  store i32 %615, ptr %136, align 8, !tbaa !80, !noalias !165
  %616 = zext i32 %582 to i64
  %617 = add i64 %614, %616
  store i64 %562, ptr %45, align 8, !tbaa !45, !noalias !165
  br label %647

618:                                              ; preds = %557
  %619 = icmp eq i32 %579, 0
  %620 = icmp eq i8 %588, 0
  br i1 %620, label %621, label %624, !prof !87

621:                                              ; preds = %618
  %622 = select i1 %619, i64 %562, i64 %563
  %623 = select i1 %619, i64 %563, i64 %562
  br label %647

624:                                              ; preds = %618
  %625 = zext i1 %619 to i32
  %626 = add i32 %582, %625
  %627 = zext i32 %626 to i64
  %628 = and i32 %559, 63
  %629 = zext nneg i32 %628 to i64
  %630 = shl i64 %560, %629
  %631 = lshr i64 %630, 63
  %632 = add i32 %559, 1
  store i32 %632, ptr %136, align 8, !tbaa !80, !noalias !165
  %633 = add nuw nsw i64 %631, %627
  %634 = icmp eq i64 %633, 3
  br i1 %634, label %635, label %639

635:                                              ; preds = %624
  %636 = add i64 %563, -1
  %637 = icmp eq i64 %636, 0
  %638 = select i1 %637, i64 -1, i64 %636
  br label %645

639:                                              ; preds = %624
  %640 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %633
  %641 = load i64, ptr %640, align 8, !tbaa !45, !noalias !165
  %642 = icmp eq i64 %641, 0
  %643 = select i1 %642, i64 -1, i64 %641
  %644 = icmp eq i64 %633, 1
  br i1 %644, label %647, label %645

645:                                              ; preds = %639, %635
  %646 = phi i64 [ %638, %635 ], [ %643, %639 ]
  store i64 %562, ptr %45, align 8, !tbaa !45, !noalias !165
  br label %647

647:                                              ; preds = %645, %639, %621, %606
  %648 = phi i32 [ %559, %621 ], [ %615, %606 ], [ %632, %645 ], [ %632, %639 ]
  %649 = phi i64 [ %623, %621 ], [ %563, %606 ], [ %563, %645 ], [ %563, %639 ]
  %650 = phi i64 [ %622, %621 ], [ %617, %606 ], [ %646, %645 ], [ %643, %639 ]
  %651 = phi i64 [ %561, %621 ], [ %562, %606 ], [ %562, %645 ], [ %561, %639 ]
  store i64 %649, ptr %41, align 8, !tbaa !45, !noalias !165
  store i64 %650, ptr %35, align 8, !tbaa !45, !noalias !165
  %652 = icmp eq i8 %586, 0
  br i1 %652, label %663, label %653

653:                                              ; preds = %647
  %654 = and i32 %648, 63
  %655 = zext nneg i32 %654 to i64
  %656 = shl i64 %560, %655
  %657 = sub nsw i32 0, %590
  %658 = and i32 %657, 63
  %659 = zext nneg i32 %658 to i64
  %660 = lshr i64 %656, %659
  %661 = add i32 %648, %590
  store i32 %661, ptr %136, align 8, !tbaa !80, !noalias !165
  %662 = add i64 %660, %577
  br label %663

663:                                              ; preds = %653, %647
  %664 = phi i32 [ %648, %647 ], [ %661, %653 ]
  %665 = phi i64 [ %577, %647 ], [ %662, %653 ]
  %666 = icmp ugt i8 %592, 30
  br i1 %666, label %667, label %697, !prof !52

667:                                              ; preds = %663
  %668 = icmp ugt i32 %664, 64
  br i1 %668, label %669, label %670, !prof !52

669:                                              ; preds = %667
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !165
  br label %697

670:                                              ; preds = %667
  %671 = icmp ult ptr %558, %53
  br i1 %671, label %679, label %672

672:                                              ; preds = %670
  %673 = lshr i32 %664, 3
  %674 = zext nneg i32 %673 to i64
  %675 = sub nsw i64 0, %674
  %676 = getelementptr inbounds i8, ptr %558, i64 %675
  store ptr %676, ptr %147, align 8, !tbaa !75, !noalias !165
  %677 = and i32 %664, 7
  store i32 %677, ptr %136, align 8, !tbaa !80, !noalias !165
  %678 = load i64, ptr %676, align 1, !tbaa !45, !noalias !165
  store i64 %678, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %697

679:                                              ; preds = %670
  %680 = icmp eq ptr %558, %3
  br i1 %680, label %697, label %681

681:                                              ; preds = %679
  %682 = lshr i32 %664, 3
  %683 = zext nneg i32 %682 to i64
  %684 = sub nsw i64 0, %683
  %685 = getelementptr inbounds i8, ptr %558, i64 %684
  %686 = icmp ult ptr %685, %3
  %687 = ptrtoint ptr %558 to i64
  %688 = sub i64 %687, %307
  %689 = trunc i64 %688 to i32
  %690 = select i1 %686, i32 %689, i32 %682
  %691 = zext i32 %690 to i64
  %692 = sub nsw i64 0, %691
  %693 = getelementptr inbounds i8, ptr %558, i64 %692
  store ptr %693, ptr %147, align 8, !tbaa !75, !noalias !165
  %694 = shl i32 %690, 3
  %695 = sub i32 %664, %694
  store i32 %695, ptr %136, align 8, !tbaa !80, !noalias !165
  %696 = load i64, ptr %693, align 1, !tbaa !45, !noalias !165
  store i64 %696, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %697

697:                                              ; preds = %681, %679, %672, %669, %663
  %698 = phi ptr [ %558, %679 ], [ %693, %681 ], [ %676, %672 ], [ @BIT_reloadDStream.zeroFilled, %669 ], [ %558, %663 ]
  %699 = phi i32 [ %664, %679 ], [ %695, %681 ], [ %677, %672 ], [ %664, %669 ], [ %664, %663 ]
  %700 = phi i64 [ %560, %679 ], [ %696, %681 ], [ %678, %672 ], [ %560, %669 ], [ %560, %663 ]
  %701 = icmp eq i8 %584, 0
  br i1 %701, label %712, label %702

702:                                              ; preds = %697
  %703 = and i32 %699, 63
  %704 = zext nneg i32 %703 to i64
  %705 = shl i64 %700, %704
  %706 = sub nsw i32 0, %589
  %707 = and i32 %706, 63
  %708 = zext nneg i32 %707 to i64
  %709 = lshr i64 %705, %708
  %710 = add i32 %699, %589
  store i32 %710, ptr %136, align 8, !tbaa !80, !noalias !165
  %711 = add i64 %709, %580
  br label %712

712:                                              ; preds = %702, %697
  %713 = phi i32 [ %699, %697 ], [ %710, %702 ]
  %714 = phi i64 [ %580, %697 ], [ %711, %702 ]
  br i1 %571, label %778, label %715

715:                                              ; preds = %712
  %716 = add i32 %713, %598
  %717 = sub i32 0, %716
  %718 = and i32 %717, 63
  %719 = zext nneg i32 %718 to i64
  %720 = lshr i64 %700, %719
  %721 = zext nneg i8 %597 to i64
  %722 = shl nsw i64 -1, %721
  %723 = xor i64 %722, -1
  %724 = and i64 %720, %723
  %725 = zext i16 %593 to i64
  %726 = add nuw i64 %724, %725
  store i64 %726, ptr %132, align 8, !tbaa !78, !noalias !165
  %727 = add i32 %716, %601
  %728 = sub i32 0, %727
  %729 = and i32 %728, 63
  %730 = zext nneg i32 %729 to i64
  %731 = lshr i64 %700, %730
  %732 = zext nneg i8 %600 to i64
  %733 = shl nsw i64 -1, %732
  %734 = xor i64 %733, -1
  %735 = and i64 %731, %734
  %736 = zext i16 %594 to i64
  %737 = add nuw i64 %735, %736
  store i64 %737, ptr %229, align 8, !tbaa !78, !noalias !165
  %738 = add i32 %727, %604
  %739 = sub i32 0, %738
  %740 = and i32 %739, 63
  %741 = zext nneg i32 %740 to i64
  %742 = lshr i64 %700, %741
  %743 = zext nneg i8 %603 to i64
  %744 = shl nsw i64 -1, %743
  %745 = xor i64 %744, -1
  %746 = and i64 %742, %745
  store i32 %738, ptr %136, align 8, !tbaa !80, !noalias !165
  %747 = zext i16 %595 to i64
  %748 = add nuw i64 %746, %747
  store i64 %748, ptr %178, align 8, !tbaa !78, !noalias !165
  %749 = icmp ugt i32 %738, 64
  br i1 %749, label %750, label %751, !prof !52

750:                                              ; preds = %715
  store ptr @BIT_reloadDStream.zeroFilled, ptr %147, align 8, !tbaa !75, !noalias !165
  br label %778

751:                                              ; preds = %715
  %752 = icmp ult ptr %698, %53
  br i1 %752, label %760, label %753

753:                                              ; preds = %751
  %754 = lshr i32 %738, 3
  %755 = zext nneg i32 %754 to i64
  %756 = sub nsw i64 0, %755
  %757 = getelementptr inbounds i8, ptr %698, i64 %756
  store ptr %757, ptr %147, align 8, !tbaa !75, !noalias !165
  %758 = and i32 %738, 7
  store i32 %758, ptr %136, align 8, !tbaa !80, !noalias !165
  %759 = load i64, ptr %757, align 1, !tbaa !45, !noalias !165
  store i64 %759, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %778

760:                                              ; preds = %751
  %761 = icmp eq ptr %698, %3
  br i1 %761, label %778, label %762

762:                                              ; preds = %760
  %763 = lshr i32 %738, 3
  %764 = zext nneg i32 %763 to i64
  %765 = sub nsw i64 0, %764
  %766 = getelementptr inbounds i8, ptr %698, i64 %765
  %767 = icmp ult ptr %766, %3
  %768 = ptrtoint ptr %698 to i64
  %769 = sub i64 %768, %307
  %770 = trunc i64 %769 to i32
  %771 = select i1 %767, i32 %770, i32 %763
  %772 = zext i32 %771 to i64
  %773 = sub nsw i64 0, %772
  %774 = getelementptr inbounds i8, ptr %698, i64 %773
  store ptr %774, ptr %147, align 8, !tbaa !75, !noalias !165
  %775 = shl i32 %771, 3
  %776 = sub i32 %738, %775
  store i32 %776, ptr %136, align 8, !tbaa !80, !noalias !165
  %777 = load i64, ptr %774, align 1, !tbaa !45, !noalias !165
  store i64 %777, ptr %9, align 8, !tbaa !76, !noalias !165
  br label %778

778:                                              ; preds = %762, %760, %753, %750, %712
  %779 = phi ptr [ %698, %760 ], [ %774, %762 ], [ %757, %753 ], [ @BIT_reloadDStream.zeroFilled, %750 ], [ %698, %712 ]
  %780 = phi i32 [ %738, %760 ], [ %776, %762 ], [ %758, %753 ], [ %738, %750 ], [ %713, %712 ]
  %781 = phi i64 [ %700, %760 ], [ %777, %762 ], [ %759, %753 ], [ %700, %750 ], [ %700, %712 ]
  %782 = phi i64 [ %737, %760 ], [ %737, %762 ], [ %737, %753 ], [ %737, %750 ], [ %564, %712 ]
  %783 = phi i64 [ %748, %760 ], [ %748, %762 ], [ %748, %753 ], [ %748, %750 ], [ %565, %712 ]
  %784 = phi i64 [ %726, %760 ], [ %726, %762 ], [ %726, %753 ], [ %726, %750 ], [ %566, %712 ]
  %785 = load i32, ptr %10, align 8, !tbaa !35
  %786 = icmp eq i32 %785, 2
  br i1 %786, label %787, label %1241

787:                                              ; preds = %778
  %788 = load ptr, ptr %7, align 8, !tbaa !38
  %789 = and i32 %569, 7
  %790 = zext nneg i32 %789 to i64
  %791 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %790
  %792 = load i64, ptr %791, align 8, !tbaa !92
  %793 = getelementptr inbounds nuw i8, ptr %788, i64 %792
  %794 = load ptr, ptr %23, align 8, !tbaa !34
  %795 = icmp ugt ptr %793, %794
  br i1 %795, label %796, label %1096

796:                                              ; preds = %787
  %797 = ptrtoint ptr %794 to i64
  %798 = ptrtoint ptr %788 to i64
  %799 = sub i64 %797, %798
  %800 = icmp eq ptr %794, %788
  br i1 %800, label %thread-pre-split, label %801

801:                                              ; preds = %796
  %802 = ptrtoint ptr %567 to i64
  %803 = sub i64 %303, %802
  %804 = icmp ugt i64 %799, %803
  br i1 %804, label %.thread, label %805

805:                                              ; preds = %801
  %806 = sub i64 %802, %798
  %807 = getelementptr inbounds nuw i8, ptr %567, i64 %799
  %808 = icmp ult i64 %799, 8
  %809 = icmp sgt i64 %806, -8
  %810 = or i1 %809, %808
  br i1 %810, label %811, label %862

811:                                              ; preds = %805
  %812 = add i64 %797, %802
  %813 = sub i64 %812, %798
  %814 = add i64 %802, 1
  %815 = tail call i64 @llvm.umax.i64(i64 %813, i64 %814)
  %816 = sub i64 %815, %802
  %817 = icmp ult i64 %816, 4
  %818 = icmp ult i64 %806, 32
  %819 = or i1 %818, %817
  br i1 %819, label %.preheader490, label %820

820:                                              ; preds = %811
  %821 = icmp ult i64 %816, 32
  br i1 %821, label %841, label %822

822:                                              ; preds = %820
  %823 = and i64 %816, -32
  br label %824

824:                                              ; preds = %824, %822
  %825 = phi i64 [ 0, %822 ], [ %832, %824 ]
  %826 = getelementptr i8, ptr %567, i64 %825
  %827 = getelementptr i8, ptr %788, i64 %825
  %828 = getelementptr i8, ptr %827, i64 16
  %829 = load <16 x i8>, ptr %827, align 1, !tbaa !9
  %830 = load <16 x i8>, ptr %828, align 1, !tbaa !9
  %831 = getelementptr i8, ptr %826, i64 16
  store <16 x i8> %829, ptr %826, align 1, !tbaa !9
  store <16 x i8> %830, ptr %831, align 1, !tbaa !9
  %832 = add nuw i64 %825, 32
  %833 = icmp eq i64 %832, %823
  br i1 %833, label %834, label %824, !llvm.loop !168

834:                                              ; preds = %824
  %835 = icmp eq i64 %816, %823
  br i1 %835, label %.loopexit147, label %836

836:                                              ; preds = %834
  %837 = getelementptr i8, ptr %567, i64 %823
  %838 = getelementptr i8, ptr %788, i64 %823
  %839 = and i64 %816, 28
  %840 = icmp eq i64 %839, 0
  br i1 %840, label %.preheader490, label %841

841:                                              ; preds = %836, %820
  %842 = phi i64 [ %823, %836 ], [ 0, %820 ]
  %843 = and i64 %816, -4
  br label %844

844:                                              ; preds = %844, %841
  %845 = phi i64 [ %842, %841 ], [ %849, %844 ]
  %846 = getelementptr i8, ptr %567, i64 %845
  %847 = getelementptr i8, ptr %788, i64 %845
  %848 = load <4 x i8>, ptr %847, align 1, !tbaa !9
  store <4 x i8> %848, ptr %846, align 1, !tbaa !9
  %849 = add nuw i64 %845, 4
  %850 = icmp eq i64 %849, %843
  br i1 %850, label %851, label %844, !llvm.loop !169

851:                                              ; preds = %844
  %852 = getelementptr i8, ptr %567, i64 %843
  %853 = getelementptr i8, ptr %788, i64 %843
  %854 = icmp eq i64 %816, %843
  br i1 %854, label %.loopexit147, label %.preheader490

.preheader490:                                    ; preds = %851, %836, %811
  %.ph491 = phi ptr [ %852, %851 ], [ %837, %836 ], [ %567, %811 ]
  %.ph492 = phi ptr [ %853, %851 ], [ %838, %836 ], [ %788, %811 ]
  br label %855

855:                                              ; preds = %.preheader490, %855
  %856 = phi ptr [ %860, %855 ], [ %.ph491, %.preheader490 ]
  %857 = phi ptr [ %858, %855 ], [ %.ph492, %.preheader490 ]
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 1
  %859 = load i8, ptr %857, align 1, !tbaa !9
  %860 = getelementptr inbounds nuw i8, ptr %856, i64 1
  store i8 %859, ptr %856, align 1, !tbaa !9
  %861 = icmp ult ptr %860, %807
  br i1 %861, label %855, label %.loopexit147, !llvm.loop !170

862:                                              ; preds = %805
  %863 = icmp sgt i64 %799, 31
  %864 = icmp samesign ult i64 %806, -16
  %865 = and i1 %864, %863
  br i1 %865, label %866, label %886

866:                                              ; preds = %862
  %867 = getelementptr inbounds i8, ptr %807, i64 -32
  %868 = add nsw i64 %799, -32
  %869 = getelementptr inbounds nuw i8, ptr %567, i64 %868
  %870 = load <2 x i64>, ptr %788, align 1, !tbaa !9
  store <2 x i64> %870, ptr %567, align 1, !tbaa !9
  %871 = icmp samesign ult i64 %799, 49
  br i1 %871, label %.loopexit149, label %872

872:                                              ; preds = %866
  %873 = getelementptr inbounds nuw i8, ptr %567, i64 16
  br label %874

874:                                              ; preds = %874, %872
  %875 = phi ptr [ %873, %872 ], [ %882, %874 ]
  %876 = phi ptr [ %788, %872 ], [ %880, %874 ]
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 16
  %878 = load <2 x i64>, ptr %877, align 1, !tbaa !9
  store <2 x i64> %878, ptr %875, align 1, !tbaa !9
  %879 = getelementptr inbounds nuw i8, ptr %875, i64 16
  %880 = getelementptr inbounds nuw i8, ptr %876, i64 32
  %881 = load <2 x i64>, ptr %880, align 1, !tbaa !9
  store <2 x i64> %881, ptr %879, align 1, !tbaa !9
  %882 = getelementptr inbounds nuw i8, ptr %875, i64 32
  %883 = icmp ult ptr %882, %869
  br i1 %883, label %874, label %.loopexit149, !llvm.loop !97

.loopexit149:                                     ; preds = %874, %866
  %884 = getelementptr inbounds nuw i8, ptr %788, i64 %868
  %.pre249 = ptrtoint ptr %867 to i64
  %.pre251 = ptrtoint ptr %884 to i64
  %.pre253 = sub i64 %.pre249, %.pre251
  %885 = icmp ult i64 %.pre253, 32
  br label %886

886:                                              ; preds = %.loopexit149, %862
  %.pre-phi254 = phi i1 [ %885, %.loopexit149 ], [ false, %862 ]
  %.pre-phi250 = phi i64 [ %.pre249, %.loopexit149 ], [ %802, %862 ]
  %887 = phi ptr [ %867, %.loopexit149 ], [ %567, %862 ]
  %888 = phi ptr [ %884, %.loopexit149 ], [ %788, %862 ]
  %889 = add i64 %806, %797
  %890 = add nuw i64 %.pre-phi250, 1
  %891 = tail call i64 @llvm.umax.i64(i64 %889, i64 %890)
  %892 = sub i64 %891, %.pre-phi250
  %893 = icmp ult i64 %892, 4
  %894 = select i1 %893, i1 true, i1 %.pre-phi254
  br i1 %894, label %.preheader493, label %895

895:                                              ; preds = %886
  %896 = icmp ult i64 %892, 32
  br i1 %896, label %916, label %897

897:                                              ; preds = %895
  %898 = and i64 %892, -32
  br label %899

899:                                              ; preds = %899, %897
  %900 = phi i64 [ 0, %897 ], [ %907, %899 ]
  %901 = getelementptr i8, ptr %887, i64 %900
  %902 = getelementptr i8, ptr %888, i64 %900
  %903 = getelementptr i8, ptr %902, i64 16
  %904 = load <16 x i8>, ptr %902, align 1, !tbaa !9
  %905 = load <16 x i8>, ptr %903, align 1, !tbaa !9
  %906 = getelementptr i8, ptr %901, i64 16
  store <16 x i8> %904, ptr %901, align 1, !tbaa !9
  store <16 x i8> %905, ptr %906, align 1, !tbaa !9
  %907 = add nuw i64 %900, 32
  %908 = icmp eq i64 %907, %898
  br i1 %908, label %909, label %899, !llvm.loop !171

909:                                              ; preds = %899
  %910 = icmp eq i64 %892, %898
  br i1 %910, label %.loopexit147, label %911

911:                                              ; preds = %909
  %912 = getelementptr i8, ptr %887, i64 %898
  %913 = getelementptr i8, ptr %888, i64 %898
  %914 = and i64 %892, 28
  %915 = icmp eq i64 %914, 0
  br i1 %915, label %.preheader493, label %916

916:                                              ; preds = %911, %895
  %917 = phi i64 [ %898, %911 ], [ 0, %895 ]
  %918 = and i64 %892, -4
  br label %919

919:                                              ; preds = %919, %916
  %920 = phi i64 [ %917, %916 ], [ %924, %919 ]
  %921 = getelementptr i8, ptr %887, i64 %920
  %922 = getelementptr i8, ptr %888, i64 %920
  %923 = load <4 x i8>, ptr %922, align 1, !tbaa !9
  store <4 x i8> %923, ptr %921, align 1, !tbaa !9
  %924 = add nuw i64 %920, 4
  %925 = icmp eq i64 %924, %918
  br i1 %925, label %926, label %919, !llvm.loop !172

926:                                              ; preds = %919
  %927 = getelementptr i8, ptr %887, i64 %918
  %928 = getelementptr i8, ptr %888, i64 %918
  %929 = icmp eq i64 %892, %918
  br i1 %929, label %.loopexit147, label %.preheader493

.preheader493:                                    ; preds = %926, %911, %886
  %.ph494 = phi ptr [ %927, %926 ], [ %912, %911 ], [ %887, %886 ]
  %.ph495 = phi ptr [ %928, %926 ], [ %913, %911 ], [ %888, %886 ]
  br label %930

930:                                              ; preds = %.preheader493, %930
  %931 = phi ptr [ %935, %930 ], [ %.ph494, %.preheader493 ]
  %932 = phi ptr [ %933, %930 ], [ %.ph495, %.preheader493 ]
  %933 = getelementptr inbounds nuw i8, ptr %932, i64 1
  %934 = load i8, ptr %932, align 1, !tbaa !9
  %935 = getelementptr inbounds nuw i8, ptr %931, i64 1
  store i8 %934, ptr %931, align 1, !tbaa !9
  %936 = icmp ult ptr %935, %807
  br i1 %936, label %930, label %.loopexit147, !llvm.loop !173

.loopexit147:                                     ; preds = %930, %855, %926, %909, %851, %834
  %937 = load i64, ptr %791, align 8, !tbaa !92
  %938 = sub i64 %937, %799
  store i64 %938, ptr %791, align 8, !tbaa !92
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %796, %.loopexit147
  %939 = phi i64 [ %938, %.loopexit147 ], [ %792, %796 ]
  %940 = phi ptr [ %807, %.loopexit147 ], [ %567, %796 ]
  store ptr %304, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %10, align 8, !tbaa !35
  %941 = getelementptr inbounds nuw i8, ptr %791, i64 8
  %942 = load i64, ptr %941, align 8
  %943 = getelementptr inbounds nuw i8, ptr %791, i64 16
  %944 = load i64, ptr %943, align 8
  %945 = getelementptr inbounds nuw i8, ptr %940, i64 %939
  %946 = add i64 %942, %939
  %947 = getelementptr i8, ptr %304, i64 %939
  %948 = sub i64 0, %944
  %949 = getelementptr inbounds i8, ptr %945, i64 %948
  %950 = icmp sgt i64 %939, 65536
  %951 = getelementptr inbounds nuw i8, ptr %940, i64 %946
  %952 = icmp ugt ptr %951, %301
  %953 = select i1 %950, i1 true, i1 %952
  br i1 %953, label %957, label %954, !prof !101

954:                                              ; preds = %thread-pre-split
  %955 = load <2 x i64>, ptr %304, align 1, !tbaa !9
  store <2 x i64> %955, ptr %940, align 1, !tbaa !9
  %956 = icmp ugt i64 %939, 16
  br i1 %956, label %959, label %960, !prof !52

957:                                              ; preds = %thread-pre-split
  %958 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %940, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %791, ptr noundef nonnull %7, ptr noundef nonnull %305, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit144

959:                                              ; preds = %954
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.3(ptr nonnull %940, i64 %939, ptr nonnull %306) #21
  br label %960

960:                                              ; preds = %959, %954
  store ptr %947, ptr %7, align 8, !tbaa !38
  %961 = ptrtoint ptr %945 to i64
  %962 = sub i64 %961, %48
  %963 = icmp ugt i64 %944, %962
  br i1 %963, label %964, label %977

964:                                              ; preds = %960
  %965 = sub i64 %961, %302
  %966 = icmp ugt i64 %944, %965
  br i1 %966, label %.thread, label %967, !prof !52

967:                                              ; preds = %964
  %968 = ptrtoint ptr %949 to i64
  %969 = sub i64 %968, %48
  %970 = getelementptr inbounds i8, ptr %30, i64 %969
  %971 = add i64 %969, %942
  %972 = icmp sgt i64 %971, 0
  br i1 %972, label %974, label %973

973:                                              ; preds = %967
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %945, ptr align 1 %970, i64 %942, i1 false)
  br label %.loopexit144

974:                                              ; preds = %967
  %975 = sub nsw i64 0, %969
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %945, ptr align 1 %970, i64 %975, i1 false)
  %976 = getelementptr inbounds nuw i8, ptr %945, i64 %975
  %.pre247 = ptrtoint ptr %976 to i64
  br label %977

977:                                              ; preds = %974, %960
  %.pre-phi248 = phi i64 [ %.pre247, %974 ], [ %961, %960 ]
  %978 = phi i64 [ %971, %974 ], [ %942, %960 ]
  %979 = phi ptr [ %26, %974 ], [ %949, %960 ]
  %980 = phi ptr [ %976, %974 ], [ %945, %960 ]
  %981 = icmp ugt i64 %944, 15
  br i1 %981, label %982, label %998, !prof !87

982:                                              ; preds = %977
  %983 = getelementptr inbounds nuw i8, ptr %980, i64 %978
  %984 = load <2 x i64>, ptr %979, align 1, !tbaa !9
  store <2 x i64> %984, ptr %980, align 1, !tbaa !9
  %985 = icmp ult i64 %978, 17
  br i1 %985, label %.loopexit144, label %986

986:                                              ; preds = %982
  %987 = getelementptr inbounds nuw i8, ptr %980, i64 16
  br label %988

988:                                              ; preds = %988, %986
  %989 = phi ptr [ %987, %986 ], [ %996, %988 ]
  %990 = phi ptr [ %979, %986 ], [ %994, %988 ]
  %991 = getelementptr inbounds nuw i8, ptr %990, i64 16
  %992 = load <2 x i64>, ptr %991, align 1, !tbaa !9
  store <2 x i64> %992, ptr %989, align 1, !tbaa !9
  %993 = getelementptr inbounds nuw i8, ptr %989, i64 16
  %994 = getelementptr inbounds nuw i8, ptr %990, i64 32
  %995 = load <2 x i64>, ptr %994, align 1, !tbaa !9
  store <2 x i64> %995, ptr %993, align 1, !tbaa !9
  %996 = getelementptr inbounds nuw i8, ptr %989, i64 32
  %997 = icmp ult ptr %996, %983
  br i1 %997, label %988, label %.loopexit144, !llvm.loop !97

998:                                              ; preds = %977
  %999 = icmp samesign ult i64 %944, 8
  br i1 %999, label %1000, label %1022

1000:                                             ; preds = %998
  %1001 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %944
  %1002 = load i32, ptr %1001, align 4, !tbaa !30
  %1003 = load i8, ptr %979, align 1, !tbaa !9
  store i8 %1003, ptr %980, align 1, !tbaa !9
  %1004 = getelementptr inbounds nuw i8, ptr %979, i64 1
  %1005 = load i8, ptr %1004, align 1, !tbaa !9
  %1006 = getelementptr inbounds nuw i8, ptr %980, i64 1
  store i8 %1005, ptr %1006, align 1, !tbaa !9
  %1007 = getelementptr inbounds nuw i8, ptr %979, i64 2
  %1008 = load i8, ptr %1007, align 1, !tbaa !9
  %1009 = getelementptr inbounds nuw i8, ptr %980, i64 2
  store i8 %1008, ptr %1009, align 1, !tbaa !9
  %1010 = getelementptr inbounds nuw i8, ptr %979, i64 3
  %1011 = load i8, ptr %1010, align 1, !tbaa !9
  %1012 = getelementptr inbounds nuw i8, ptr %980, i64 3
  store i8 %1011, ptr %1012, align 1, !tbaa !9
  %1013 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %944
  %1014 = load i32, ptr %1013, align 4, !tbaa !30
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds nuw i8, ptr %979, i64 %1015
  %1017 = getelementptr inbounds nuw i8, ptr %980, i64 4
  %1018 = load i32, ptr %1016, align 1
  store i32 %1018, ptr %1017, align 1
  %1019 = sext i32 %1002 to i64
  %1020 = sub nsw i64 0, %1019
  %1021 = getelementptr inbounds i8, ptr %1016, i64 %1020
  br label %1024

1022:                                             ; preds = %998
  %1023 = load i64, ptr %979, align 1
  store i64 %1023, ptr %980, align 1
  br label %1024

1024:                                             ; preds = %1022, %1000
  %1025 = phi ptr [ %1021, %1000 ], [ %979, %1022 ]
  %1026 = getelementptr inbounds nuw i8, ptr %1025, i64 8
  %1027 = getelementptr inbounds nuw i8, ptr %980, i64 8
  %1028 = icmp ugt i64 %978, 8
  br i1 %1028, label %1029, label %.loopexit144

1029:                                             ; preds = %1024
  %1030 = ptrtoint ptr %1027 to i64
  %1031 = ptrtoint ptr %1026 to i64
  %1032 = sub i64 %1030, %1031
  %1033 = getelementptr i8, ptr %980, i64 %978
  %1034 = icmp slt i64 %1032, 16
  br i1 %1034, label %1035, label %1070

1035:                                             ; preds = %1029
  %1036 = add i64 %978, %.pre-phi248
  %1037 = add i64 %.pre-phi248, 16
  %1038 = tail call i64 @llvm.umax.i64(i64 %1036, i64 %1037)
  %reass.sub187 = sub i64 %1038, %.pre-phi248
  %1039 = add i64 %reass.sub187, -9
  %1040 = lshr i64 %1039, 3
  %1041 = add nuw nsw i64 %1040, 1
  %1042 = icmp ult i64 %1039, 24
  %1043 = icmp ult i64 %1032, 32
  %1044 = or i1 %1042, %1043
  br i1 %1044, label %.preheader485, label %1045

1045:                                             ; preds = %1035
  %1046 = and i64 %1041, 4611686018427387900
  br label %1047

1047:                                             ; preds = %1047, %1045
  %1048 = phi i64 [ 0, %1045 ], [ %1056, %1047 ]
  %1049 = shl i64 %1048, 3
  %1050 = getelementptr i8, ptr %1027, i64 %1049
  %1051 = getelementptr i8, ptr %1026, i64 %1049
  %1052 = getelementptr i8, ptr %1051, i64 16
  %1053 = load <2 x i64>, ptr %1051, align 1
  %1054 = load <2 x i64>, ptr %1052, align 1
  %1055 = getelementptr i8, ptr %1050, i64 16
  store <2 x i64> %1053, ptr %1050, align 1
  store <2 x i64> %1054, ptr %1055, align 1
  %1056 = add nuw i64 %1048, 4
  %1057 = icmp eq i64 %1056, %1046
  br i1 %1057, label %1058, label %1047, !llvm.loop !174

1058:                                             ; preds = %1047
  %1059 = shl i64 %1046, 3
  %1060 = getelementptr i8, ptr %1027, i64 %1059
  %1061 = getelementptr i8, ptr %1026, i64 %1059
  %1062 = icmp eq i64 %1041, %1046
  br i1 %1062, label %.loopexit144, label %.preheader485

.preheader485:                                    ; preds = %1058, %1035
  %.ph486 = phi ptr [ %1060, %1058 ], [ %1027, %1035 ]
  %.ph487 = phi ptr [ %1061, %1058 ], [ %1026, %1035 ]
  br label %1063

1063:                                             ; preds = %.preheader485, %1063
  %1064 = phi ptr [ %1067, %1063 ], [ %.ph486, %.preheader485 ]
  %1065 = phi ptr [ %1068, %1063 ], [ %.ph487, %.preheader485 ]
  %1066 = load i64, ptr %1065, align 1
  store i64 %1066, ptr %1064, align 1
  %1067 = getelementptr inbounds nuw i8, ptr %1064, i64 8
  %1068 = getelementptr inbounds nuw i8, ptr %1065, i64 8
  %1069 = icmp ult ptr %1067, %1033
  br i1 %1069, label %1063, label %.loopexit144, !llvm.loop !175

1070:                                             ; preds = %1029
  %1071 = load <2 x i64>, ptr %1026, align 1, !tbaa !9
  store <2 x i64> %1071, ptr %1027, align 1, !tbaa !9
  %1072 = icmp ult i64 %978, 25
  br i1 %1072, label %.loopexit144, label %1073

1073:                                             ; preds = %1070
  %1074 = getelementptr inbounds nuw i8, ptr %980, i64 24
  br label %1075

1075:                                             ; preds = %1075, %1073
  %1076 = phi ptr [ %1074, %1073 ], [ %1083, %1075 ]
  %1077 = phi ptr [ %1026, %1073 ], [ %1081, %1075 ]
  %1078 = getelementptr inbounds nuw i8, ptr %1077, i64 16
  %1079 = load <2 x i64>, ptr %1078, align 1, !tbaa !9
  store <2 x i64> %1079, ptr %1076, align 1, !tbaa !9
  %1080 = getelementptr inbounds nuw i8, ptr %1076, i64 16
  %1081 = getelementptr inbounds nuw i8, ptr %1077, i64 32
  %1082 = load <2 x i64>, ptr %1081, align 1, !tbaa !9
  store <2 x i64> %1082, ptr %1080, align 1, !tbaa !9
  %1083 = getelementptr inbounds nuw i8, ptr %1076, i64 32
  %1084 = icmp ult ptr %1083, %1033
  br i1 %1084, label %1075, label %.loopexit144, !llvm.loop !97

.loopexit144:                                     ; preds = %1075, %1063, %988, %1070, %1058, %1024, %982, %973, %957
  %1085 = phi i64 [ %958, %957 ], [ %946, %973 ], [ %946, %1024 ], [ %946, %982 ], [ %946, %1070 ], [ %946, %1058 ], [ %946, %988 ], [ %946, %1063 ], [ %946, %1075 ]
  %1086 = icmp ult i64 %1085, -119
  br i1 %1086, label %1087, label %.thread

1087:                                             ; preds = %.loopexit144
  %1088 = add i64 %714, %570
  %1089 = icmp ugt i64 %650, %1088
  %1090 = select i1 %1089, ptr %30, ptr %26
  %1091 = getelementptr inbounds i8, ptr %1090, i64 %1088
  %1092 = sub i64 0, %650
  %1093 = getelementptr inbounds i8, ptr %1091, i64 %1092
  tail call void @llvm.prefetch.p0(ptr %1093, i32 0, i32 3, i32 1)
  %1094 = getelementptr inbounds nuw i8, ptr %1093, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1094, i32 0, i32 3, i32 1)
  store i64 %714, ptr %791, align 8, !tbaa !45
  store i64 %665, ptr %941, align 8, !tbaa !45
  store i64 %650, ptr %943, align 8, !tbaa !45
  %1095 = getelementptr inbounds nuw i8, ptr %940, i64 %1085
  br label %1407

1096:                                             ; preds = %787
  %1097 = getelementptr inbounds i8, ptr %793, i64 -32
  %1098 = getelementptr inbounds nuw i8, ptr %791, i64 8
  %1099 = load i64, ptr %1098, align 8
  %1100 = getelementptr inbounds nuw i8, ptr %791, i64 16
  %1101 = load i64, ptr %1100, align 8
  %1102 = getelementptr inbounds nuw i8, ptr %567, i64 %792
  %1103 = add i64 %1099, %792
  %1104 = sub i64 0, %1101
  %1105 = getelementptr inbounds i8, ptr %1102, i64 %1104
  %1106 = icmp ugt ptr %793, %568
  %1107 = getelementptr inbounds nuw i8, ptr %567, i64 %1103
  %1108 = icmp ugt ptr %1107, %1097
  %1109 = select i1 %1106, i1 true, i1 %1108
  br i1 %1109, label %1113, label %1110, !prof !101

1110:                                             ; preds = %1096
  %1111 = load <2 x i64>, ptr %788, align 1, !tbaa !9
  store <2 x i64> %1111, ptr %567, align 1, !tbaa !9
  %1112 = icmp ugt i64 %792, 16
  br i1 %1112, label %1115, label %1116, !prof !52

1113:                                             ; preds = %1096
  %1114 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %567, ptr noundef %20, ptr noundef nonnull %1097, ptr noundef nonnull byval(%struct.seq_t) align 8 %791, ptr noundef nonnull %7, ptr noundef %568, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit150

1115:                                             ; preds = %1110
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.2(ptr nonnull %567, ptr nonnull %788, i64 %792) #21
  br label %1116

1116:                                             ; preds = %1115, %1110
  store ptr %793, ptr %7, align 8, !tbaa !38
  %1117 = ptrtoint ptr %1102 to i64
  %1118 = sub i64 %1117, %48
  %1119 = icmp ugt i64 %1101, %1118
  br i1 %1119, label %1120, label %1133

1120:                                             ; preds = %1116
  %1121 = sub i64 %1117, %302
  %1122 = icmp ugt i64 %1101, %1121
  br i1 %1122, label %.thread, label %1123, !prof !52

1123:                                             ; preds = %1120
  %1124 = ptrtoint ptr %1105 to i64
  %1125 = sub i64 %1124, %48
  %1126 = getelementptr inbounds i8, ptr %30, i64 %1125
  %1127 = add i64 %1125, %1099
  %1128 = icmp sgt i64 %1127, 0
  br i1 %1128, label %1130, label %1129

1129:                                             ; preds = %1123
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1102, ptr align 1 %1126, i64 %1099, i1 false)
  br label %.loopexit150

1130:                                             ; preds = %1123
  %1131 = sub nsw i64 0, %1125
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1102, ptr align 1 %1126, i64 %1131, i1 false)
  %1132 = getelementptr inbounds nuw i8, ptr %1102, i64 %1131
  %.pre255 = ptrtoint ptr %1132 to i64
  br label %1133

1133:                                             ; preds = %1130, %1116
  %.pre-phi256 = phi i64 [ %.pre255, %1130 ], [ %1117, %1116 ]
  %1134 = phi i64 [ %1127, %1130 ], [ %1099, %1116 ]
  %1135 = phi ptr [ %26, %1130 ], [ %1105, %1116 ]
  %1136 = phi ptr [ %1132, %1130 ], [ %1102, %1116 ]
  %1137 = icmp ugt i64 %1101, 15
  br i1 %1137, label %1138, label %1154, !prof !87

1138:                                             ; preds = %1133
  %1139 = getelementptr inbounds nuw i8, ptr %1136, i64 %1134
  %1140 = load <2 x i64>, ptr %1135, align 1, !tbaa !9
  store <2 x i64> %1140, ptr %1136, align 1, !tbaa !9
  %1141 = icmp ult i64 %1134, 17
  br i1 %1141, label %.loopexit150, label %1142

1142:                                             ; preds = %1138
  %1143 = getelementptr inbounds nuw i8, ptr %1136, i64 16
  br label %1144

1144:                                             ; preds = %1144, %1142
  %1145 = phi ptr [ %1143, %1142 ], [ %1152, %1144 ]
  %1146 = phi ptr [ %1135, %1142 ], [ %1150, %1144 ]
  %1147 = getelementptr inbounds nuw i8, ptr %1146, i64 16
  %1148 = load <2 x i64>, ptr %1147, align 1, !tbaa !9
  store <2 x i64> %1148, ptr %1145, align 1, !tbaa !9
  %1149 = getelementptr inbounds nuw i8, ptr %1145, i64 16
  %1150 = getelementptr inbounds nuw i8, ptr %1146, i64 32
  %1151 = load <2 x i64>, ptr %1150, align 1, !tbaa !9
  store <2 x i64> %1151, ptr %1149, align 1, !tbaa !9
  %1152 = getelementptr inbounds nuw i8, ptr %1145, i64 32
  %1153 = icmp ult ptr %1152, %1139
  br i1 %1153, label %1144, label %.loopexit150, !llvm.loop !97

1154:                                             ; preds = %1133
  %1155 = icmp samesign ult i64 %1101, 8
  br i1 %1155, label %1156, label %1178

1156:                                             ; preds = %1154
  %1157 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1101
  %1158 = load i32, ptr %1157, align 4, !tbaa !30
  %1159 = load i8, ptr %1135, align 1, !tbaa !9
  store i8 %1159, ptr %1136, align 1, !tbaa !9
  %1160 = getelementptr inbounds nuw i8, ptr %1135, i64 1
  %1161 = load i8, ptr %1160, align 1, !tbaa !9
  %1162 = getelementptr inbounds nuw i8, ptr %1136, i64 1
  store i8 %1161, ptr %1162, align 1, !tbaa !9
  %1163 = getelementptr inbounds nuw i8, ptr %1135, i64 2
  %1164 = load i8, ptr %1163, align 1, !tbaa !9
  %1165 = getelementptr inbounds nuw i8, ptr %1136, i64 2
  store i8 %1164, ptr %1165, align 1, !tbaa !9
  %1166 = getelementptr inbounds nuw i8, ptr %1135, i64 3
  %1167 = load i8, ptr %1166, align 1, !tbaa !9
  %1168 = getelementptr inbounds nuw i8, ptr %1136, i64 3
  store i8 %1167, ptr %1168, align 1, !tbaa !9
  %1169 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1101
  %1170 = load i32, ptr %1169, align 4, !tbaa !30
  %1171 = zext i32 %1170 to i64
  %1172 = getelementptr inbounds nuw i8, ptr %1135, i64 %1171
  %1173 = getelementptr inbounds nuw i8, ptr %1136, i64 4
  %1174 = load i32, ptr %1172, align 1
  store i32 %1174, ptr %1173, align 1
  %1175 = sext i32 %1158 to i64
  %1176 = sub nsw i64 0, %1175
  %1177 = getelementptr inbounds i8, ptr %1172, i64 %1176
  br label %1180

1178:                                             ; preds = %1154
  %1179 = load i64, ptr %1135, align 1
  store i64 %1179, ptr %1136, align 1
  br label %1180

1180:                                             ; preds = %1178, %1156
  %1181 = phi ptr [ %1177, %1156 ], [ %1135, %1178 ]
  %1182 = getelementptr inbounds nuw i8, ptr %1181, i64 8
  %1183 = getelementptr inbounds nuw i8, ptr %1136, i64 8
  %1184 = icmp ugt i64 %1134, 8
  br i1 %1184, label %1185, label %.loopexit150

1185:                                             ; preds = %1180
  %1186 = ptrtoint ptr %1183 to i64
  %1187 = ptrtoint ptr %1182 to i64
  %1188 = sub i64 %1186, %1187
  %1189 = getelementptr i8, ptr %1136, i64 %1134
  %1190 = icmp slt i64 %1188, 16
  br i1 %1190, label %1191, label %1226

1191:                                             ; preds = %1185
  %1192 = add i64 %1134, %.pre-phi256
  %1193 = add i64 %.pre-phi256, 16
  %1194 = tail call i64 @llvm.umax.i64(i64 %1192, i64 %1193)
  %reass.sub186 = sub i64 %1194, %.pre-phi256
  %1195 = add i64 %reass.sub186, -9
  %1196 = lshr i64 %1195, 3
  %1197 = add nuw nsw i64 %1196, 1
  %1198 = icmp ult i64 %1195, 24
  %1199 = icmp ult i64 %1188, 32
  %1200 = or i1 %1198, %1199
  br i1 %1200, label %.preheader497, label %1201

1201:                                             ; preds = %1191
  %1202 = and i64 %1197, 4611686018427387900
  br label %1203

1203:                                             ; preds = %1203, %1201
  %1204 = phi i64 [ 0, %1201 ], [ %1212, %1203 ]
  %1205 = shl i64 %1204, 3
  %1206 = getelementptr i8, ptr %1183, i64 %1205
  %1207 = getelementptr i8, ptr %1182, i64 %1205
  %1208 = getelementptr i8, ptr %1207, i64 16
  %1209 = load <2 x i64>, ptr %1207, align 1
  %1210 = load <2 x i64>, ptr %1208, align 1
  %1211 = getelementptr i8, ptr %1206, i64 16
  store <2 x i64> %1209, ptr %1206, align 1
  store <2 x i64> %1210, ptr %1211, align 1
  %1212 = add nuw i64 %1204, 4
  %1213 = icmp eq i64 %1212, %1202
  br i1 %1213, label %1214, label %1203, !llvm.loop !176

1214:                                             ; preds = %1203
  %1215 = shl i64 %1202, 3
  %1216 = getelementptr i8, ptr %1183, i64 %1215
  %1217 = getelementptr i8, ptr %1182, i64 %1215
  %1218 = icmp eq i64 %1197, %1202
  br i1 %1218, label %.loopexit150, label %.preheader497

.preheader497:                                    ; preds = %1214, %1191
  %.ph498 = phi ptr [ %1216, %1214 ], [ %1183, %1191 ]
  %.ph499 = phi ptr [ %1217, %1214 ], [ %1182, %1191 ]
  br label %1219

1219:                                             ; preds = %.preheader497, %1219
  %1220 = phi ptr [ %1223, %1219 ], [ %.ph498, %.preheader497 ]
  %1221 = phi ptr [ %1224, %1219 ], [ %.ph499, %.preheader497 ]
  %1222 = load i64, ptr %1221, align 1
  store i64 %1222, ptr %1220, align 1
  %1223 = getelementptr inbounds nuw i8, ptr %1220, i64 8
  %1224 = getelementptr inbounds nuw i8, ptr %1221, i64 8
  %1225 = icmp ult ptr %1223, %1189
  br i1 %1225, label %1219, label %.loopexit150, !llvm.loop !177

1226:                                             ; preds = %1185
  %1227 = load <2 x i64>, ptr %1182, align 1, !tbaa !9
  store <2 x i64> %1227, ptr %1183, align 1, !tbaa !9
  %1228 = icmp ult i64 %1134, 25
  br i1 %1228, label %.loopexit150, label %1229

1229:                                             ; preds = %1226
  %1230 = getelementptr inbounds nuw i8, ptr %1136, i64 24
  br label %1231

1231:                                             ; preds = %1231, %1229
  %1232 = phi ptr [ %1230, %1229 ], [ %1239, %1231 ]
  %1233 = phi ptr [ %1182, %1229 ], [ %1237, %1231 ]
  %1234 = getelementptr inbounds nuw i8, ptr %1233, i64 16
  %1235 = load <2 x i64>, ptr %1234, align 1, !tbaa !9
  store <2 x i64> %1235, ptr %1232, align 1, !tbaa !9
  %1236 = getelementptr inbounds nuw i8, ptr %1232, i64 16
  %1237 = getelementptr inbounds nuw i8, ptr %1233, i64 32
  %1238 = load <2 x i64>, ptr %1237, align 1, !tbaa !9
  store <2 x i64> %1238, ptr %1236, align 1, !tbaa !9
  %1239 = getelementptr inbounds nuw i8, ptr %1232, i64 32
  %1240 = icmp ult ptr %1239, %1189
  br i1 %1240, label %1231, label %.loopexit150, !llvm.loop !97

1241:                                             ; preds = %778
  %1242 = and i32 %569, 7
  %1243 = zext nneg i32 %1242 to i64
  %1244 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1243
  %1245 = load i64, ptr %1244, align 8
  %1246 = getelementptr inbounds nuw i8, ptr %1244, i64 8
  %1247 = load i64, ptr %1246, align 8
  %1248 = getelementptr inbounds nuw i8, ptr %1244, i64 16
  %1249 = load i64, ptr %1248, align 8
  %1250 = getelementptr inbounds nuw i8, ptr %567, i64 %1245
  %1251 = add i64 %1247, %1245
  %1252 = load ptr, ptr %7, align 8, !tbaa !38
  %1253 = getelementptr inbounds nuw i8, ptr %1252, i64 %1245
  %1254 = sub i64 0, %1249
  %1255 = getelementptr inbounds i8, ptr %1250, i64 %1254
  %1256 = icmp ugt ptr %1253, %568
  %1257 = getelementptr inbounds nuw i8, ptr %567, i64 %1251
  %1258 = icmp ugt ptr %1257, %301
  %1259 = select i1 %1256, i1 true, i1 %1258
  br i1 %1259, label %1263, label %1260, !prof !101

1260:                                             ; preds = %1241
  %1261 = load <2 x i64>, ptr %1252, align 1, !tbaa !9
  store <2 x i64> %1261, ptr %567, align 1, !tbaa !9
  %1262 = icmp ugt i64 %1245, 16
  br i1 %1262, label %1265, label %1266, !prof !52

1263:                                             ; preds = %1241
  %1264 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %567, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1244, ptr noundef nonnull %7, ptr noundef %568, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit150

1265:                                             ; preds = %1260
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.1(ptr nonnull %567, ptr nonnull %1252, i64 %1245) #21
  br label %1266

1266:                                             ; preds = %1265, %1260
  store ptr %1253, ptr %7, align 8, !tbaa !38
  %1267 = ptrtoint ptr %1250 to i64
  %1268 = sub i64 %1267, %48
  %1269 = icmp ugt i64 %1249, %1268
  br i1 %1269, label %1270, label %1283

1270:                                             ; preds = %1266
  %1271 = sub i64 %1267, %302
  %1272 = icmp ugt i64 %1249, %1271
  br i1 %1272, label %.thread, label %1273, !prof !52

1273:                                             ; preds = %1270
  %1274 = ptrtoint ptr %1255 to i64
  %1275 = sub i64 %1274, %48
  %1276 = getelementptr inbounds i8, ptr %30, i64 %1275
  %1277 = add i64 %1275, %1247
  %1278 = icmp sgt i64 %1277, 0
  br i1 %1278, label %1280, label %1279

1279:                                             ; preds = %1273
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1250, ptr align 1 %1276, i64 %1247, i1 false)
  br label %.loopexit150

1280:                                             ; preds = %1273
  %1281 = sub nsw i64 0, %1275
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1250, ptr align 1 %1276, i64 %1281, i1 false)
  %1282 = getelementptr inbounds nuw i8, ptr %1250, i64 %1281
  %.pre257 = ptrtoint ptr %1282 to i64
  br label %1283

1283:                                             ; preds = %1280, %1266
  %.pre-phi258 = phi i64 [ %.pre257, %1280 ], [ %1267, %1266 ]
  %1284 = phi i64 [ %1277, %1280 ], [ %1247, %1266 ]
  %1285 = phi ptr [ %26, %1280 ], [ %1255, %1266 ]
  %1286 = phi ptr [ %1282, %1280 ], [ %1250, %1266 ]
  %1287 = icmp ugt i64 %1249, 15
  br i1 %1287, label %1288, label %1304, !prof !87

1288:                                             ; preds = %1283
  %1289 = getelementptr inbounds nuw i8, ptr %1286, i64 %1284
  %1290 = load <2 x i64>, ptr %1285, align 1, !tbaa !9
  store <2 x i64> %1290, ptr %1286, align 1, !tbaa !9
  %1291 = icmp ult i64 %1284, 17
  br i1 %1291, label %.loopexit150, label %1292

1292:                                             ; preds = %1288
  %1293 = getelementptr inbounds nuw i8, ptr %1286, i64 16
  br label %1294

1294:                                             ; preds = %1294, %1292
  %1295 = phi ptr [ %1293, %1292 ], [ %1302, %1294 ]
  %1296 = phi ptr [ %1285, %1292 ], [ %1300, %1294 ]
  %1297 = getelementptr inbounds nuw i8, ptr %1296, i64 16
  %1298 = load <2 x i64>, ptr %1297, align 1, !tbaa !9
  store <2 x i64> %1298, ptr %1295, align 1, !tbaa !9
  %1299 = getelementptr inbounds nuw i8, ptr %1295, i64 16
  %1300 = getelementptr inbounds nuw i8, ptr %1296, i64 32
  %1301 = load <2 x i64>, ptr %1300, align 1, !tbaa !9
  store <2 x i64> %1301, ptr %1299, align 1, !tbaa !9
  %1302 = getelementptr inbounds nuw i8, ptr %1295, i64 32
  %1303 = icmp ult ptr %1302, %1289
  br i1 %1303, label %1294, label %.loopexit150, !llvm.loop !97

1304:                                             ; preds = %1283
  %1305 = icmp samesign ult i64 %1249, 8
  br i1 %1305, label %1306, label %1328

1306:                                             ; preds = %1304
  %1307 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1249
  %1308 = load i32, ptr %1307, align 4, !tbaa !30
  %1309 = load i8, ptr %1285, align 1, !tbaa !9
  store i8 %1309, ptr %1286, align 1, !tbaa !9
  %1310 = getelementptr inbounds nuw i8, ptr %1285, i64 1
  %1311 = load i8, ptr %1310, align 1, !tbaa !9
  %1312 = getelementptr inbounds nuw i8, ptr %1286, i64 1
  store i8 %1311, ptr %1312, align 1, !tbaa !9
  %1313 = getelementptr inbounds nuw i8, ptr %1285, i64 2
  %1314 = load i8, ptr %1313, align 1, !tbaa !9
  %1315 = getelementptr inbounds nuw i8, ptr %1286, i64 2
  store i8 %1314, ptr %1315, align 1, !tbaa !9
  %1316 = getelementptr inbounds nuw i8, ptr %1285, i64 3
  %1317 = load i8, ptr %1316, align 1, !tbaa !9
  %1318 = getelementptr inbounds nuw i8, ptr %1286, i64 3
  store i8 %1317, ptr %1318, align 1, !tbaa !9
  %1319 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1249
  %1320 = load i32, ptr %1319, align 4, !tbaa !30
  %1321 = zext i32 %1320 to i64
  %1322 = getelementptr inbounds nuw i8, ptr %1285, i64 %1321
  %1323 = getelementptr inbounds nuw i8, ptr %1286, i64 4
  %1324 = load i32, ptr %1322, align 1
  store i32 %1324, ptr %1323, align 1
  %1325 = sext i32 %1308 to i64
  %1326 = sub nsw i64 0, %1325
  %1327 = getelementptr inbounds i8, ptr %1322, i64 %1326
  br label %1330

1328:                                             ; preds = %1304
  %1329 = load i64, ptr %1285, align 1
  store i64 %1329, ptr %1286, align 1
  br label %1330

1330:                                             ; preds = %1328, %1306
  %1331 = phi ptr [ %1327, %1306 ], [ %1285, %1328 ]
  %1332 = getelementptr inbounds nuw i8, ptr %1331, i64 8
  %1333 = getelementptr inbounds nuw i8, ptr %1286, i64 8
  %1334 = icmp ugt i64 %1284, 8
  br i1 %1334, label %1335, label %.loopexit150

1335:                                             ; preds = %1330
  %1336 = ptrtoint ptr %1333 to i64
  %1337 = ptrtoint ptr %1332 to i64
  %1338 = sub i64 %1336, %1337
  %1339 = getelementptr i8, ptr %1286, i64 %1284
  %1340 = icmp slt i64 %1338, 16
  br i1 %1340, label %1341, label %1376

1341:                                             ; preds = %1335
  %1342 = add i64 %1284, %.pre-phi258
  %1343 = add i64 %.pre-phi258, 16
  %1344 = tail call i64 @llvm.umax.i64(i64 %1342, i64 %1343)
  %reass.sub185 = sub i64 %1344, %.pre-phi258
  %1345 = add i64 %reass.sub185, -9
  %1346 = lshr i64 %1345, 3
  %1347 = add nuw nsw i64 %1346, 1
  %1348 = icmp ult i64 %1345, 24
  %1349 = icmp ult i64 %1338, 32
  %1350 = or i1 %1348, %1349
  br i1 %1350, label %.preheader503, label %1351

1351:                                             ; preds = %1341
  %1352 = and i64 %1347, 4611686018427387900
  br label %1353

1353:                                             ; preds = %1353, %1351
  %1354 = phi i64 [ 0, %1351 ], [ %1362, %1353 ]
  %1355 = shl i64 %1354, 3
  %1356 = getelementptr i8, ptr %1333, i64 %1355
  %1357 = getelementptr i8, ptr %1332, i64 %1355
  %1358 = getelementptr i8, ptr %1357, i64 16
  %1359 = load <2 x i64>, ptr %1357, align 1
  %1360 = load <2 x i64>, ptr %1358, align 1
  %1361 = getelementptr i8, ptr %1356, i64 16
  store <2 x i64> %1359, ptr %1356, align 1
  store <2 x i64> %1360, ptr %1361, align 1
  %1362 = add nuw i64 %1354, 4
  %1363 = icmp eq i64 %1362, %1352
  br i1 %1363, label %1364, label %1353, !llvm.loop !178

1364:                                             ; preds = %1353
  %1365 = shl i64 %1352, 3
  %1366 = getelementptr i8, ptr %1333, i64 %1365
  %1367 = getelementptr i8, ptr %1332, i64 %1365
  %1368 = icmp eq i64 %1347, %1352
  br i1 %1368, label %.loopexit150, label %.preheader503

.preheader503:                                    ; preds = %1364, %1341
  %.ph504 = phi ptr [ %1366, %1364 ], [ %1333, %1341 ]
  %.ph505 = phi ptr [ %1367, %1364 ], [ %1332, %1341 ]
  br label %1369

1369:                                             ; preds = %.preheader503, %1369
  %1370 = phi ptr [ %1373, %1369 ], [ %.ph504, %.preheader503 ]
  %1371 = phi ptr [ %1374, %1369 ], [ %.ph505, %.preheader503 ]
  %1372 = load i64, ptr %1371, align 1
  store i64 %1372, ptr %1370, align 1
  %1373 = getelementptr inbounds nuw i8, ptr %1370, i64 8
  %1374 = getelementptr inbounds nuw i8, ptr %1371, i64 8
  %1375 = icmp ult ptr %1373, %1339
  br i1 %1375, label %1369, label %.loopexit150, !llvm.loop !179

1376:                                             ; preds = %1335
  %1377 = load <2 x i64>, ptr %1332, align 1, !tbaa !9
  store <2 x i64> %1377, ptr %1333, align 1, !tbaa !9
  %1378 = icmp ult i64 %1284, 25
  br i1 %1378, label %.loopexit150, label %1379

1379:                                             ; preds = %1376
  %1380 = getelementptr inbounds nuw i8, ptr %1286, i64 24
  br label %1381

1381:                                             ; preds = %1381, %1379
  %1382 = phi ptr [ %1380, %1379 ], [ %1389, %1381 ]
  %1383 = phi ptr [ %1332, %1379 ], [ %1387, %1381 ]
  %1384 = getelementptr inbounds nuw i8, ptr %1383, i64 16
  %1385 = load <2 x i64>, ptr %1384, align 1, !tbaa !9
  store <2 x i64> %1385, ptr %1382, align 1, !tbaa !9
  %1386 = getelementptr inbounds nuw i8, ptr %1382, i64 16
  %1387 = getelementptr inbounds nuw i8, ptr %1383, i64 32
  %1388 = load <2 x i64>, ptr %1387, align 1, !tbaa !9
  store <2 x i64> %1388, ptr %1386, align 1, !tbaa !9
  %1389 = getelementptr inbounds nuw i8, ptr %1382, i64 32
  %1390 = icmp ult ptr %1389, %1339
  br i1 %1390, label %1381, label %.loopexit150, !llvm.loop !97

.loopexit150:                                     ; preds = %1381, %1369, %1294, %1231, %1219, %1144, %1376, %1364, %1330, %1288, %1279, %1263, %1226, %1214, %1180, %1138, %1129, %1113
  %1391 = phi i64 [ %1114, %1113 ], [ %1103, %1129 ], [ %1251, %1369 ], [ %1103, %1180 ], [ %1103, %1138 ], [ %1103, %1226 ], [ %1103, %1214 ], [ %1251, %1294 ], [ %1103, %1219 ], [ %1103, %1231 ], [ %1264, %1263 ], [ %1251, %1279 ], [ %1103, %1144 ], [ %1251, %1330 ], [ %1251, %1288 ], [ %1251, %1376 ], [ %1251, %1364 ], [ %1251, %1381 ]
  %1392 = icmp ult i64 %1391, -119
  br i1 %1392, label %1393, label %.thread

1393:                                             ; preds = %.loopexit150
  %1394 = add i64 %714, %570
  %1395 = icmp ugt i64 %650, %1394
  %1396 = select i1 %1395, ptr %30, ptr %26
  %1397 = getelementptr inbounds i8, ptr %1396, i64 %1394
  %1398 = sub i64 0, %650
  %1399 = getelementptr inbounds i8, ptr %1397, i64 %1398
  tail call void @llvm.prefetch.p0(ptr %1399, i32 0, i32 3, i32 1)
  %1400 = getelementptr inbounds nuw i8, ptr %1399, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1400, i32 0, i32 3, i32 1)
  %1401 = and i32 %569, 7
  %1402 = zext nneg i32 %1401 to i64
  %1403 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1402
  store i64 %714, ptr %1403, align 8, !tbaa !45
  %1404 = getelementptr inbounds nuw i8, ptr %1403, i64 8
  store i64 %665, ptr %1404, align 8, !tbaa !45
  %1405 = getelementptr inbounds nuw i8, ptr %1403, i64 16
  store i64 %650, ptr %1405, align 8, !tbaa !45
  %1406 = getelementptr inbounds nuw i8, ptr %567, i64 %1391
  br label %1407

1407:                                             ; preds = %1393, %1087
  %1408 = phi i64 [ %1394, %1393 ], [ %1088, %1087 ]
  %1409 = phi ptr [ %568, %1393 ], [ %305, %1087 ]
  %1410 = phi ptr [ %1406, %1393 ], [ %1095, %1087 ]
  %1411 = add i64 %1408, %665
  %1412 = add nuw i32 %569, 1
  %1413 = icmp eq i32 %1412, %5
  br i1 %1413, label %.loopexit158, label %557, !llvm.loop !108

.loopexit158:                                     ; preds = %1407, %.loopexit159
  %1414 = phi i32 [ %288, %.loopexit159 ], [ %780, %1407 ]
  %1415 = phi ptr [ %289, %.loopexit159 ], [ %779, %1407 ]
  %1416 = phi i64 [ %290, %.loopexit159 ], [ %651, %1407 ]
  %1417 = phi i64 [ %291, %.loopexit159 ], [ %649, %1407 ]
  %1418 = phi i64 [ %292, %.loopexit159 ], [ %650, %1407 ]
  %1419 = phi i32 [ %297, %.loopexit159 ], [ %5, %1407 ]
  %1420 = phi ptr [ %24, %.loopexit159 ], [ %1409, %1407 ]
  %1421 = phi ptr [ %1, %.loopexit159 ], [ %1410, %1407 ]
  %1422 = icmp eq ptr %1415, %3
  %1423 = icmp eq i32 %1414, 64
  %1424 = select i1 %1422, i1 %1423, i1 false
  br i1 %1424, label %1425, label %.thread

1425:                                             ; preds = %.loopexit158
  %1426 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1419, i32 %46), !nosanitize !86
  %1427 = extractvalue { i32, i1 } %1426, 1, !nosanitize !86
  br i1 %1427, label %359, label %1428, !prof !109, !nosanitize !86

1428:                                             ; preds = %1425
  %1429 = extractvalue { i32, i1 } %1426, 0
  %1430 = icmp slt i32 %1429, %5
  br i1 %1430, label %1431, label %.loopexit143

1431:                                             ; preds = %1428
  %1432 = getelementptr inbounds i8, ptr %20, i64 -32
  %1433 = ptrtoint ptr %28 to i64
  %1434 = ptrtoint ptr %20 to i64
  %1435 = getelementptr i8, ptr %0, i64 30372
  %1436 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %1437 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  br label %1445

.loopexit143:                                     ; preds = %2047, %1428
  %1438 = phi ptr [ %1420, %1428 ], [ %2048, %2047 ]
  %1439 = phi ptr [ %1421, %1428 ], [ %2049, %2047 ]
  %1440 = trunc i64 %1418 to i32
  store i32 %1440, ptr %34, align 4, !tbaa !30
  %1441 = trunc i64 %1417 to i32
  store i32 %1441, ptr %38, align 4, !tbaa !30
  %1442 = trunc i64 %1416 to i32
  store i32 %1442, ptr %42, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1443 = load i32, ptr %10, align 8, !tbaa !35
  %1444 = load ptr, ptr %7, align 8, !tbaa !38
  br label %2053

1445:                                             ; preds = %2047, %1431
  %1446 = phi i32 [ %1429, %1431 ], [ %2050, %2047 ]
  %1447 = phi ptr [ %1421, %1431 ], [ %2049, %2047 ]
  %1448 = phi ptr [ %1420, %1431 ], [ %2048, %2047 ]
  %1449 = and i32 %1446, 7
  %1450 = zext nneg i32 %1449 to i64
  %1451 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1450
  %1452 = load i32, ptr %10, align 8, !tbaa !35
  %1453 = icmp eq i32 %1452, 2
  br i1 %1453, label %1454, label %1897

1454:                                             ; preds = %1445
  %1455 = load ptr, ptr %7, align 8, !tbaa !38
  %1456 = load i64, ptr %1451, align 8, !tbaa !92
  %1457 = getelementptr inbounds nuw i8, ptr %1455, i64 %1456
  %1458 = load ptr, ptr %23, align 8, !tbaa !34
  %1459 = icmp ugt ptr %1457, %1458
  br i1 %1459, label %1460, label %1752

1460:                                             ; preds = %1454
  %1461 = ptrtoint ptr %1458 to i64
  %1462 = ptrtoint ptr %1455 to i64
  %1463 = sub i64 %1461, %1462
  %1464 = icmp eq ptr %1458, %1455
  br i1 %1464, label %thread-pre-split120, label %1465

1465:                                             ; preds = %1460
  %1466 = ptrtoint ptr %1447 to i64
  %1467 = sub i64 %1434, %1466
  %1468 = icmp ugt i64 %1463, %1467
  br i1 %1468, label %.thread, label %1469

1469:                                             ; preds = %1465
  %1470 = sub i64 %1466, %1462
  %1471 = getelementptr inbounds nuw i8, ptr %1447, i64 %1463
  %1472 = icmp ult i64 %1463, 8
  %1473 = icmp sgt i64 %1470, -8
  %1474 = or i1 %1473, %1472
  br i1 %1474, label %1475, label %1526

1475:                                             ; preds = %1469
  %1476 = add i64 %1461, %1466
  %1477 = sub i64 %1476, %1462
  %1478 = add i64 %1466, 1
  %1479 = tail call i64 @llvm.umax.i64(i64 %1477, i64 %1478)
  %1480 = sub i64 %1479, %1466
  %1481 = icmp ult i64 %1480, 4
  %1482 = icmp ult i64 %1470, 32
  %1483 = or i1 %1482, %1481
  br i1 %1483, label %.preheader465, label %1484

1484:                                             ; preds = %1475
  %1485 = icmp ult i64 %1480, 32
  br i1 %1485, label %1505, label %1486

1486:                                             ; preds = %1484
  %1487 = and i64 %1480, -32
  br label %1488

1488:                                             ; preds = %1488, %1486
  %1489 = phi i64 [ 0, %1486 ], [ %1496, %1488 ]
  %1490 = getelementptr i8, ptr %1447, i64 %1489
  %1491 = getelementptr i8, ptr %1455, i64 %1489
  %1492 = getelementptr i8, ptr %1491, i64 16
  %1493 = load <16 x i8>, ptr %1491, align 1, !tbaa !9
  %1494 = load <16 x i8>, ptr %1492, align 1, !tbaa !9
  %1495 = getelementptr i8, ptr %1490, i64 16
  store <16 x i8> %1493, ptr %1490, align 1, !tbaa !9
  store <16 x i8> %1494, ptr %1495, align 1, !tbaa !9
  %1496 = add nuw i64 %1489, 32
  %1497 = icmp eq i64 %1496, %1487
  br i1 %1497, label %1498, label %1488, !llvm.loop !180

1498:                                             ; preds = %1488
  %1499 = icmp eq i64 %1480, %1487
  br i1 %1499, label %.loopexit134, label %1500

1500:                                             ; preds = %1498
  %1501 = getelementptr i8, ptr %1447, i64 %1487
  %1502 = getelementptr i8, ptr %1455, i64 %1487
  %1503 = and i64 %1480, 28
  %1504 = icmp eq i64 %1503, 0
  br i1 %1504, label %.preheader465, label %1505

1505:                                             ; preds = %1500, %1484
  %1506 = phi i64 [ %1487, %1500 ], [ 0, %1484 ]
  %1507 = and i64 %1480, -4
  br label %1508

1508:                                             ; preds = %1508, %1505
  %1509 = phi i64 [ %1506, %1505 ], [ %1513, %1508 ]
  %1510 = getelementptr i8, ptr %1447, i64 %1509
  %1511 = getelementptr i8, ptr %1455, i64 %1509
  %1512 = load <4 x i8>, ptr %1511, align 1, !tbaa !9
  store <4 x i8> %1512, ptr %1510, align 1, !tbaa !9
  %1513 = add nuw i64 %1509, 4
  %1514 = icmp eq i64 %1513, %1507
  br i1 %1514, label %1515, label %1508, !llvm.loop !181

1515:                                             ; preds = %1508
  %1516 = getelementptr i8, ptr %1447, i64 %1507
  %1517 = getelementptr i8, ptr %1455, i64 %1507
  %1518 = icmp eq i64 %1480, %1507
  br i1 %1518, label %.loopexit134, label %.preheader465

.preheader465:                                    ; preds = %1515, %1500, %1475
  %.ph466 = phi ptr [ %1516, %1515 ], [ %1501, %1500 ], [ %1447, %1475 ]
  %.ph467 = phi ptr [ %1517, %1515 ], [ %1502, %1500 ], [ %1455, %1475 ]
  br label %1519

1519:                                             ; preds = %.preheader465, %1519
  %1520 = phi ptr [ %1524, %1519 ], [ %.ph466, %.preheader465 ]
  %1521 = phi ptr [ %1522, %1519 ], [ %.ph467, %.preheader465 ]
  %1522 = getelementptr inbounds nuw i8, ptr %1521, i64 1
  %1523 = load i8, ptr %1521, align 1, !tbaa !9
  %1524 = getelementptr inbounds nuw i8, ptr %1520, i64 1
  store i8 %1523, ptr %1520, align 1, !tbaa !9
  %1525 = icmp ult ptr %1524, %1471
  br i1 %1525, label %1519, label %.loopexit134, !llvm.loop !182

1526:                                             ; preds = %1469
  %1527 = icmp sgt i64 %1463, 31
  %1528 = icmp samesign ult i64 %1470, -16
  %1529 = and i1 %1528, %1527
  br i1 %1529, label %1530, label %1550

1530:                                             ; preds = %1526
  %1531 = getelementptr inbounds i8, ptr %1471, i64 -32
  %1532 = add nsw i64 %1463, -32
  %1533 = getelementptr inbounds nuw i8, ptr %1447, i64 %1532
  %1534 = load <2 x i64>, ptr %1455, align 1, !tbaa !9
  store <2 x i64> %1534, ptr %1447, align 1, !tbaa !9
  %1535 = icmp samesign ult i64 %1463, 49
  br i1 %1535, label %.loopexit136, label %1536

1536:                                             ; preds = %1530
  %1537 = getelementptr inbounds nuw i8, ptr %1447, i64 16
  br label %1538

1538:                                             ; preds = %1538, %1536
  %1539 = phi ptr [ %1537, %1536 ], [ %1546, %1538 ]
  %1540 = phi ptr [ %1455, %1536 ], [ %1544, %1538 ]
  %1541 = getelementptr inbounds nuw i8, ptr %1540, i64 16
  %1542 = load <2 x i64>, ptr %1541, align 1, !tbaa !9
  store <2 x i64> %1542, ptr %1539, align 1, !tbaa !9
  %1543 = getelementptr inbounds nuw i8, ptr %1539, i64 16
  %1544 = getelementptr inbounds nuw i8, ptr %1540, i64 32
  %1545 = load <2 x i64>, ptr %1544, align 1, !tbaa !9
  store <2 x i64> %1545, ptr %1543, align 1, !tbaa !9
  %1546 = getelementptr inbounds nuw i8, ptr %1539, i64 32
  %1547 = icmp ult ptr %1546, %1533
  br i1 %1547, label %1538, label %.loopexit136, !llvm.loop !97

.loopexit136:                                     ; preds = %1538, %1530
  %1548 = getelementptr inbounds nuw i8, ptr %1455, i64 %1532
  %.pre237 = ptrtoint ptr %1531 to i64
  %.pre239 = ptrtoint ptr %1548 to i64
  %.pre241 = sub i64 %.pre237, %.pre239
  %1549 = icmp ult i64 %.pre241, 32
  br label %1550

1550:                                             ; preds = %.loopexit136, %1526
  %.pre-phi242 = phi i1 [ %1549, %.loopexit136 ], [ false, %1526 ]
  %.pre-phi238 = phi i64 [ %.pre237, %.loopexit136 ], [ %1466, %1526 ]
  %1551 = phi ptr [ %1531, %.loopexit136 ], [ %1447, %1526 ]
  %1552 = phi ptr [ %1548, %.loopexit136 ], [ %1455, %1526 ]
  %1553 = add i64 %1470, %1461
  %1554 = add nuw i64 %.pre-phi238, 1
  %1555 = tail call i64 @llvm.umax.i64(i64 %1553, i64 %1554)
  %1556 = sub i64 %1555, %.pre-phi238
  %1557 = icmp ult i64 %1556, 4
  %1558 = select i1 %1557, i1 true, i1 %.pre-phi242
  br i1 %1558, label %.preheader468, label %1559

1559:                                             ; preds = %1550
  %1560 = icmp ult i64 %1556, 32
  br i1 %1560, label %1580, label %1561

1561:                                             ; preds = %1559
  %1562 = and i64 %1556, -32
  br label %1563

1563:                                             ; preds = %1563, %1561
  %1564 = phi i64 [ 0, %1561 ], [ %1571, %1563 ]
  %1565 = getelementptr i8, ptr %1551, i64 %1564
  %1566 = getelementptr i8, ptr %1552, i64 %1564
  %1567 = getelementptr i8, ptr %1566, i64 16
  %1568 = load <16 x i8>, ptr %1566, align 1, !tbaa !9
  %1569 = load <16 x i8>, ptr %1567, align 1, !tbaa !9
  %1570 = getelementptr i8, ptr %1565, i64 16
  store <16 x i8> %1568, ptr %1565, align 1, !tbaa !9
  store <16 x i8> %1569, ptr %1570, align 1, !tbaa !9
  %1571 = add nuw i64 %1564, 32
  %1572 = icmp eq i64 %1571, %1562
  br i1 %1572, label %1573, label %1563, !llvm.loop !183

1573:                                             ; preds = %1563
  %1574 = icmp eq i64 %1556, %1562
  br i1 %1574, label %.loopexit134, label %1575

1575:                                             ; preds = %1573
  %1576 = getelementptr i8, ptr %1551, i64 %1562
  %1577 = getelementptr i8, ptr %1552, i64 %1562
  %1578 = and i64 %1556, 28
  %1579 = icmp eq i64 %1578, 0
  br i1 %1579, label %.preheader468, label %1580

1580:                                             ; preds = %1575, %1559
  %1581 = phi i64 [ %1562, %1575 ], [ 0, %1559 ]
  %1582 = and i64 %1556, -4
  br label %1583

1583:                                             ; preds = %1583, %1580
  %1584 = phi i64 [ %1581, %1580 ], [ %1588, %1583 ]
  %1585 = getelementptr i8, ptr %1551, i64 %1584
  %1586 = getelementptr i8, ptr %1552, i64 %1584
  %1587 = load <4 x i8>, ptr %1586, align 1, !tbaa !9
  store <4 x i8> %1587, ptr %1585, align 1, !tbaa !9
  %1588 = add nuw i64 %1584, 4
  %1589 = icmp eq i64 %1588, %1582
  br i1 %1589, label %1590, label %1583, !llvm.loop !184

1590:                                             ; preds = %1583
  %1591 = getelementptr i8, ptr %1551, i64 %1582
  %1592 = getelementptr i8, ptr %1552, i64 %1582
  %1593 = icmp eq i64 %1556, %1582
  br i1 %1593, label %.loopexit134, label %.preheader468

.preheader468:                                    ; preds = %1590, %1575, %1550
  %.ph469 = phi ptr [ %1591, %1590 ], [ %1576, %1575 ], [ %1551, %1550 ]
  %.ph470 = phi ptr [ %1592, %1590 ], [ %1577, %1575 ], [ %1552, %1550 ]
  br label %1594

1594:                                             ; preds = %.preheader468, %1594
  %1595 = phi ptr [ %1599, %1594 ], [ %.ph469, %.preheader468 ]
  %1596 = phi ptr [ %1597, %1594 ], [ %.ph470, %.preheader468 ]
  %1597 = getelementptr inbounds nuw i8, ptr %1596, i64 1
  %1598 = load i8, ptr %1596, align 1, !tbaa !9
  %1599 = getelementptr inbounds nuw i8, ptr %1595, i64 1
  store i8 %1598, ptr %1595, align 1, !tbaa !9
  %1600 = icmp ult ptr %1599, %1471
  br i1 %1600, label %1594, label %.loopexit134, !llvm.loop !185

.loopexit134:                                     ; preds = %1594, %1519, %1590, %1573, %1515, %1498
  %1601 = load i64, ptr %1451, align 8, !tbaa !92
  %1602 = sub i64 %1601, %1463
  store i64 %1602, ptr %1451, align 8, !tbaa !92
  br label %thread-pre-split120

thread-pre-split120:                              ; preds = %1460, %.loopexit134
  %1603 = phi i64 [ %1602, %.loopexit134 ], [ %1456, %1460 ]
  %1604 = phi ptr [ %1471, %.loopexit134 ], [ %1447, %1460 ]
  store ptr %1435, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %10, align 8, !tbaa !35
  %1605 = getelementptr inbounds nuw i8, ptr %1451, i64 8
  %1606 = load i64, ptr %1605, align 8
  %1607 = getelementptr inbounds nuw i8, ptr %1451, i64 16
  %1608 = load i64, ptr %1607, align 8
  %1609 = getelementptr inbounds nuw i8, ptr %1604, i64 %1603
  %1610 = add i64 %1606, %1603
  %1611 = getelementptr i8, ptr %1435, i64 %1603
  %1612 = sub i64 0, %1608
  %1613 = getelementptr inbounds i8, ptr %1609, i64 %1612
  %1614 = icmp sgt i64 %1603, 65536
  %1615 = getelementptr inbounds nuw i8, ptr %1604, i64 %1610
  %1616 = icmp ugt ptr %1615, %1432
  %1617 = select i1 %1614, i1 true, i1 %1616
  br i1 %1617, label %1621, label %1618, !prof !101

1618:                                             ; preds = %thread-pre-split120
  %1619 = load <2 x i64>, ptr %1435, align 1, !tbaa !9
  store <2 x i64> %1619, ptr %1604, align 1, !tbaa !9
  %1620 = icmp ugt i64 %1603, 16
  br i1 %1620, label %1623, label %1624, !prof !52

1621:                                             ; preds = %thread-pre-split120
  %1622 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1604, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1451, ptr noundef nonnull %7, ptr noundef nonnull %1436, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit

1623:                                             ; preds = %1618
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.6(ptr nonnull %1604, i64 %1603, ptr nonnull %1437) #21
  br label %1624

1624:                                             ; preds = %1623, %1618
  store ptr %1611, ptr %7, align 8, !tbaa !38
  %1625 = ptrtoint ptr %1609 to i64
  %1626 = sub i64 %1625, %48
  %1627 = icmp ugt i64 %1608, %1626
  br i1 %1627, label %1628, label %1641

1628:                                             ; preds = %1624
  %1629 = sub i64 %1625, %1433
  %1630 = icmp ugt i64 %1608, %1629
  br i1 %1630, label %.thread, label %1631, !prof !52

1631:                                             ; preds = %1628
  %1632 = ptrtoint ptr %1613 to i64
  %1633 = sub i64 %1632, %48
  %1634 = getelementptr inbounds i8, ptr %30, i64 %1633
  %1635 = add i64 %1633, %1606
  %1636 = icmp sgt i64 %1635, 0
  br i1 %1636, label %1638, label %1637

1637:                                             ; preds = %1631
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1609, ptr align 1 %1634, i64 %1606, i1 false)
  br label %.loopexit

1638:                                             ; preds = %1631
  %1639 = sub nsw i64 0, %1633
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1609, ptr align 1 %1634, i64 %1639, i1 false)
  %1640 = getelementptr inbounds nuw i8, ptr %1609, i64 %1639
  %.pre = ptrtoint ptr %1640 to i64
  br label %1641

1641:                                             ; preds = %1638, %1624
  %.pre-phi = phi i64 [ %.pre, %1638 ], [ %1625, %1624 ]
  %1642 = phi i64 [ %1635, %1638 ], [ %1606, %1624 ]
  %1643 = phi ptr [ %26, %1638 ], [ %1613, %1624 ]
  %1644 = phi ptr [ %1640, %1638 ], [ %1609, %1624 ]
  %1645 = icmp ugt i64 %1608, 15
  br i1 %1645, label %1646, label %1662, !prof !87

1646:                                             ; preds = %1641
  %1647 = getelementptr inbounds nuw i8, ptr %1644, i64 %1642
  %1648 = load <2 x i64>, ptr %1643, align 1, !tbaa !9
  store <2 x i64> %1648, ptr %1644, align 1, !tbaa !9
  %1649 = icmp ult i64 %1642, 17
  br i1 %1649, label %.loopexit, label %1650

1650:                                             ; preds = %1646
  %1651 = getelementptr inbounds nuw i8, ptr %1644, i64 16
  br label %1652

1652:                                             ; preds = %1652, %1650
  %1653 = phi ptr [ %1651, %1650 ], [ %1660, %1652 ]
  %1654 = phi ptr [ %1643, %1650 ], [ %1658, %1652 ]
  %1655 = getelementptr inbounds nuw i8, ptr %1654, i64 16
  %1656 = load <2 x i64>, ptr %1655, align 1, !tbaa !9
  store <2 x i64> %1656, ptr %1653, align 1, !tbaa !9
  %1657 = getelementptr inbounds nuw i8, ptr %1653, i64 16
  %1658 = getelementptr inbounds nuw i8, ptr %1654, i64 32
  %1659 = load <2 x i64>, ptr %1658, align 1, !tbaa !9
  store <2 x i64> %1659, ptr %1657, align 1, !tbaa !9
  %1660 = getelementptr inbounds nuw i8, ptr %1653, i64 32
  %1661 = icmp ult ptr %1660, %1647
  br i1 %1661, label %1652, label %.loopexit, !llvm.loop !97

1662:                                             ; preds = %1641
  %1663 = icmp samesign ult i64 %1608, 8
  br i1 %1663, label %1664, label %1686

1664:                                             ; preds = %1662
  %1665 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1608
  %1666 = load i32, ptr %1665, align 4, !tbaa !30
  %1667 = load i8, ptr %1643, align 1, !tbaa !9
  store i8 %1667, ptr %1644, align 1, !tbaa !9
  %1668 = getelementptr inbounds nuw i8, ptr %1643, i64 1
  %1669 = load i8, ptr %1668, align 1, !tbaa !9
  %1670 = getelementptr inbounds nuw i8, ptr %1644, i64 1
  store i8 %1669, ptr %1670, align 1, !tbaa !9
  %1671 = getelementptr inbounds nuw i8, ptr %1643, i64 2
  %1672 = load i8, ptr %1671, align 1, !tbaa !9
  %1673 = getelementptr inbounds nuw i8, ptr %1644, i64 2
  store i8 %1672, ptr %1673, align 1, !tbaa !9
  %1674 = getelementptr inbounds nuw i8, ptr %1643, i64 3
  %1675 = load i8, ptr %1674, align 1, !tbaa !9
  %1676 = getelementptr inbounds nuw i8, ptr %1644, i64 3
  store i8 %1675, ptr %1676, align 1, !tbaa !9
  %1677 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1608
  %1678 = load i32, ptr %1677, align 4, !tbaa !30
  %1679 = zext i32 %1678 to i64
  %1680 = getelementptr inbounds nuw i8, ptr %1643, i64 %1679
  %1681 = getelementptr inbounds nuw i8, ptr %1644, i64 4
  %1682 = load i32, ptr %1680, align 1
  store i32 %1682, ptr %1681, align 1
  %1683 = sext i32 %1666 to i64
  %1684 = sub nsw i64 0, %1683
  %1685 = getelementptr inbounds i8, ptr %1680, i64 %1684
  br label %1688

1686:                                             ; preds = %1662
  %1687 = load i64, ptr %1643, align 1
  store i64 %1687, ptr %1644, align 1
  br label %1688

1688:                                             ; preds = %1686, %1664
  %1689 = phi ptr [ %1685, %1664 ], [ %1643, %1686 ]
  %1690 = getelementptr inbounds nuw i8, ptr %1689, i64 8
  %1691 = getelementptr inbounds nuw i8, ptr %1644, i64 8
  %1692 = icmp ugt i64 %1642, 8
  br i1 %1692, label %1693, label %.loopexit

1693:                                             ; preds = %1688
  %1694 = ptrtoint ptr %1691 to i64
  %1695 = ptrtoint ptr %1690 to i64
  %1696 = sub i64 %1694, %1695
  %1697 = getelementptr i8, ptr %1644, i64 %1642
  %1698 = icmp slt i64 %1696, 16
  br i1 %1698, label %1699, label %1734

1699:                                             ; preds = %1693
  %1700 = add i64 %1642, %.pre-phi
  %1701 = add i64 %.pre-phi, 16
  %1702 = tail call i64 @llvm.umax.i64(i64 %1700, i64 %1701)
  %reass.sub190 = sub i64 %1702, %.pre-phi
  %1703 = add i64 %reass.sub190, -9
  %1704 = lshr i64 %1703, 3
  %1705 = add nuw nsw i64 %1704, 1
  %1706 = icmp ult i64 %1703, 24
  %1707 = icmp ult i64 %1696, 32
  %1708 = or i1 %1706, %1707
  br i1 %1708, label %.preheader, label %1709

1709:                                             ; preds = %1699
  %1710 = and i64 %1705, 4611686018427387900
  br label %1711

1711:                                             ; preds = %1711, %1709
  %1712 = phi i64 [ 0, %1709 ], [ %1720, %1711 ]
  %1713 = shl i64 %1712, 3
  %1714 = getelementptr i8, ptr %1691, i64 %1713
  %1715 = getelementptr i8, ptr %1690, i64 %1713
  %1716 = getelementptr i8, ptr %1715, i64 16
  %1717 = load <2 x i64>, ptr %1715, align 1
  %1718 = load <2 x i64>, ptr %1716, align 1
  %1719 = getelementptr i8, ptr %1714, i64 16
  store <2 x i64> %1717, ptr %1714, align 1
  store <2 x i64> %1718, ptr %1719, align 1
  %1720 = add nuw i64 %1712, 4
  %1721 = icmp eq i64 %1720, %1710
  br i1 %1721, label %1722, label %1711, !llvm.loop !186

1722:                                             ; preds = %1711
  %1723 = shl i64 %1710, 3
  %1724 = getelementptr i8, ptr %1691, i64 %1723
  %1725 = getelementptr i8, ptr %1690, i64 %1723
  %1726 = icmp eq i64 %1705, %1710
  br i1 %1726, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1722, %1699
  %.ph = phi ptr [ %1724, %1722 ], [ %1691, %1699 ]
  %.ph462 = phi ptr [ %1725, %1722 ], [ %1690, %1699 ]
  br label %1727

1727:                                             ; preds = %.preheader, %1727
  %1728 = phi ptr [ %1731, %1727 ], [ %.ph, %.preheader ]
  %1729 = phi ptr [ %1732, %1727 ], [ %.ph462, %.preheader ]
  %1730 = load i64, ptr %1729, align 1
  store i64 %1730, ptr %1728, align 1
  %1731 = getelementptr inbounds nuw i8, ptr %1728, i64 8
  %1732 = getelementptr inbounds nuw i8, ptr %1729, i64 8
  %1733 = icmp ult ptr %1731, %1697
  br i1 %1733, label %1727, label %.loopexit, !llvm.loop !187

1734:                                             ; preds = %1693
  %1735 = load <2 x i64>, ptr %1690, align 1, !tbaa !9
  store <2 x i64> %1735, ptr %1691, align 1, !tbaa !9
  %1736 = icmp ult i64 %1642, 25
  br i1 %1736, label %.loopexit, label %1737

1737:                                             ; preds = %1734
  %1738 = getelementptr inbounds nuw i8, ptr %1644, i64 24
  br label %1739

1739:                                             ; preds = %1739, %1737
  %1740 = phi ptr [ %1738, %1737 ], [ %1747, %1739 ]
  %1741 = phi ptr [ %1690, %1737 ], [ %1745, %1739 ]
  %1742 = getelementptr inbounds nuw i8, ptr %1741, i64 16
  %1743 = load <2 x i64>, ptr %1742, align 1, !tbaa !9
  store <2 x i64> %1743, ptr %1740, align 1, !tbaa !9
  %1744 = getelementptr inbounds nuw i8, ptr %1740, i64 16
  %1745 = getelementptr inbounds nuw i8, ptr %1741, i64 32
  %1746 = load <2 x i64>, ptr %1745, align 1, !tbaa !9
  store <2 x i64> %1746, ptr %1744, align 1, !tbaa !9
  %1747 = getelementptr inbounds nuw i8, ptr %1740, i64 32
  %1748 = icmp ult ptr %1747, %1697
  br i1 %1748, label %1739, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %1739, %1727, %1652, %1734, %1722, %1688, %1646, %1637, %1621
  %1749 = phi i64 [ %1622, %1621 ], [ %1610, %1637 ], [ %1610, %1688 ], [ %1610, %1646 ], [ %1610, %1734 ], [ %1610, %1722 ], [ %1610, %1652 ], [ %1610, %1727 ], [ %1610, %1739 ]
  %1750 = icmp ult i64 %1749, -119
  %1751 = getelementptr inbounds nuw i8, ptr %1604, i64 %1749
  br i1 %1750, label %2047, label %.thread

1752:                                             ; preds = %1454
  %1753 = getelementptr inbounds i8, ptr %1457, i64 -32
  %1754 = getelementptr inbounds nuw i8, ptr %1451, i64 8
  %1755 = load i64, ptr %1754, align 8
  %1756 = getelementptr inbounds nuw i8, ptr %1451, i64 16
  %1757 = load i64, ptr %1756, align 8
  %1758 = getelementptr inbounds nuw i8, ptr %1447, i64 %1456
  %1759 = add i64 %1755, %1456
  %1760 = sub i64 0, %1757
  %1761 = getelementptr inbounds i8, ptr %1758, i64 %1760
  %1762 = icmp ugt ptr %1457, %1448
  %1763 = getelementptr inbounds nuw i8, ptr %1447, i64 %1759
  %1764 = icmp ugt ptr %1763, %1753
  %1765 = select i1 %1762, i1 true, i1 %1764
  br i1 %1765, label %1769, label %1766, !prof !101

1766:                                             ; preds = %1752
  %1767 = load <2 x i64>, ptr %1455, align 1, !tbaa !9
  store <2 x i64> %1767, ptr %1447, align 1, !tbaa !9
  %1768 = icmp ugt i64 %1456, 16
  br i1 %1768, label %1771, label %1772, !prof !52

1769:                                             ; preds = %1752
  %1770 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1447, ptr noundef %20, ptr noundef nonnull %1753, ptr noundef nonnull byval(%struct.seq_t) align 8 %1451, ptr noundef nonnull %7, ptr noundef %1448, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit137

1771:                                             ; preds = %1766
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.5(ptr nonnull %1447, ptr nonnull %1455, i64 %1456) #21
  br label %1772

1772:                                             ; preds = %1771, %1766
  store ptr %1457, ptr %7, align 8, !tbaa !38
  %1773 = ptrtoint ptr %1758 to i64
  %1774 = sub i64 %1773, %48
  %1775 = icmp ugt i64 %1757, %1774
  br i1 %1775, label %1776, label %1789

1776:                                             ; preds = %1772
  %1777 = sub i64 %1773, %1433
  %1778 = icmp ugt i64 %1757, %1777
  br i1 %1778, label %.thread, label %1779, !prof !52

1779:                                             ; preds = %1776
  %1780 = ptrtoint ptr %1761 to i64
  %1781 = sub i64 %1780, %48
  %1782 = getelementptr inbounds i8, ptr %30, i64 %1781
  %1783 = add i64 %1781, %1755
  %1784 = icmp sgt i64 %1783, 0
  br i1 %1784, label %1786, label %1785

1785:                                             ; preds = %1779
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1758, ptr align 1 %1782, i64 %1755, i1 false)
  br label %.loopexit137

1786:                                             ; preds = %1779
  %1787 = sub nsw i64 0, %1781
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1758, ptr align 1 %1782, i64 %1787, i1 false)
  %1788 = getelementptr inbounds nuw i8, ptr %1758, i64 %1787
  %.pre243 = ptrtoint ptr %1788 to i64
  br label %1789

1789:                                             ; preds = %1786, %1772
  %.pre-phi244 = phi i64 [ %.pre243, %1786 ], [ %1773, %1772 ]
  %1790 = phi i64 [ %1783, %1786 ], [ %1755, %1772 ]
  %1791 = phi ptr [ %26, %1786 ], [ %1761, %1772 ]
  %1792 = phi ptr [ %1788, %1786 ], [ %1758, %1772 ]
  %1793 = icmp ugt i64 %1757, 15
  br i1 %1793, label %1794, label %1810, !prof !87

1794:                                             ; preds = %1789
  %1795 = getelementptr inbounds nuw i8, ptr %1792, i64 %1790
  %1796 = load <2 x i64>, ptr %1791, align 1, !tbaa !9
  store <2 x i64> %1796, ptr %1792, align 1, !tbaa !9
  %1797 = icmp ult i64 %1790, 17
  br i1 %1797, label %.loopexit137, label %1798

1798:                                             ; preds = %1794
  %1799 = getelementptr inbounds nuw i8, ptr %1792, i64 16
  br label %1800

1800:                                             ; preds = %1800, %1798
  %1801 = phi ptr [ %1799, %1798 ], [ %1808, %1800 ]
  %1802 = phi ptr [ %1791, %1798 ], [ %1806, %1800 ]
  %1803 = getelementptr inbounds nuw i8, ptr %1802, i64 16
  %1804 = load <2 x i64>, ptr %1803, align 1, !tbaa !9
  store <2 x i64> %1804, ptr %1801, align 1, !tbaa !9
  %1805 = getelementptr inbounds nuw i8, ptr %1801, i64 16
  %1806 = getelementptr inbounds nuw i8, ptr %1802, i64 32
  %1807 = load <2 x i64>, ptr %1806, align 1, !tbaa !9
  store <2 x i64> %1807, ptr %1805, align 1, !tbaa !9
  %1808 = getelementptr inbounds nuw i8, ptr %1801, i64 32
  %1809 = icmp ult ptr %1808, %1795
  br i1 %1809, label %1800, label %.loopexit137, !llvm.loop !97

1810:                                             ; preds = %1789
  %1811 = icmp samesign ult i64 %1757, 8
  br i1 %1811, label %1812, label %1834

1812:                                             ; preds = %1810
  %1813 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1757
  %1814 = load i32, ptr %1813, align 4, !tbaa !30
  %1815 = load i8, ptr %1791, align 1, !tbaa !9
  store i8 %1815, ptr %1792, align 1, !tbaa !9
  %1816 = getelementptr inbounds nuw i8, ptr %1791, i64 1
  %1817 = load i8, ptr %1816, align 1, !tbaa !9
  %1818 = getelementptr inbounds nuw i8, ptr %1792, i64 1
  store i8 %1817, ptr %1818, align 1, !tbaa !9
  %1819 = getelementptr inbounds nuw i8, ptr %1791, i64 2
  %1820 = load i8, ptr %1819, align 1, !tbaa !9
  %1821 = getelementptr inbounds nuw i8, ptr %1792, i64 2
  store i8 %1820, ptr %1821, align 1, !tbaa !9
  %1822 = getelementptr inbounds nuw i8, ptr %1791, i64 3
  %1823 = load i8, ptr %1822, align 1, !tbaa !9
  %1824 = getelementptr inbounds nuw i8, ptr %1792, i64 3
  store i8 %1823, ptr %1824, align 1, !tbaa !9
  %1825 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1757
  %1826 = load i32, ptr %1825, align 4, !tbaa !30
  %1827 = zext i32 %1826 to i64
  %1828 = getelementptr inbounds nuw i8, ptr %1791, i64 %1827
  %1829 = getelementptr inbounds nuw i8, ptr %1792, i64 4
  %1830 = load i32, ptr %1828, align 1
  store i32 %1830, ptr %1829, align 1
  %1831 = sext i32 %1814 to i64
  %1832 = sub nsw i64 0, %1831
  %1833 = getelementptr inbounds i8, ptr %1828, i64 %1832
  br label %1836

1834:                                             ; preds = %1810
  %1835 = load i64, ptr %1791, align 1
  store i64 %1835, ptr %1792, align 1
  br label %1836

1836:                                             ; preds = %1834, %1812
  %1837 = phi ptr [ %1833, %1812 ], [ %1791, %1834 ]
  %1838 = getelementptr inbounds nuw i8, ptr %1837, i64 8
  %1839 = getelementptr inbounds nuw i8, ptr %1792, i64 8
  %1840 = icmp ugt i64 %1790, 8
  br i1 %1840, label %1841, label %.loopexit137

1841:                                             ; preds = %1836
  %1842 = ptrtoint ptr %1839 to i64
  %1843 = ptrtoint ptr %1838 to i64
  %1844 = sub i64 %1842, %1843
  %1845 = getelementptr i8, ptr %1792, i64 %1790
  %1846 = icmp slt i64 %1844, 16
  br i1 %1846, label %1847, label %1882

1847:                                             ; preds = %1841
  %1848 = add i64 %1790, %.pre-phi244
  %1849 = add i64 %.pre-phi244, 16
  %1850 = tail call i64 @llvm.umax.i64(i64 %1848, i64 %1849)
  %reass.sub189 = sub i64 %1850, %.pre-phi244
  %1851 = add i64 %reass.sub189, -9
  %1852 = lshr i64 %1851, 3
  %1853 = add nuw nsw i64 %1852, 1
  %1854 = icmp ult i64 %1851, 24
  %1855 = icmp ult i64 %1844, 32
  %1856 = or i1 %1854, %1855
  br i1 %1856, label %.preheader472, label %1857

1857:                                             ; preds = %1847
  %1858 = and i64 %1853, 4611686018427387900
  br label %1859

1859:                                             ; preds = %1859, %1857
  %1860 = phi i64 [ 0, %1857 ], [ %1868, %1859 ]
  %1861 = shl i64 %1860, 3
  %1862 = getelementptr i8, ptr %1839, i64 %1861
  %1863 = getelementptr i8, ptr %1838, i64 %1861
  %1864 = getelementptr i8, ptr %1863, i64 16
  %1865 = load <2 x i64>, ptr %1863, align 1
  %1866 = load <2 x i64>, ptr %1864, align 1
  %1867 = getelementptr i8, ptr %1862, i64 16
  store <2 x i64> %1865, ptr %1862, align 1
  store <2 x i64> %1866, ptr %1867, align 1
  %1868 = add nuw i64 %1860, 4
  %1869 = icmp eq i64 %1868, %1858
  br i1 %1869, label %1870, label %1859, !llvm.loop !188

1870:                                             ; preds = %1859
  %1871 = shl i64 %1858, 3
  %1872 = getelementptr i8, ptr %1839, i64 %1871
  %1873 = getelementptr i8, ptr %1838, i64 %1871
  %1874 = icmp eq i64 %1853, %1858
  br i1 %1874, label %.loopexit137, label %.preheader472

.preheader472:                                    ; preds = %1870, %1847
  %.ph473 = phi ptr [ %1872, %1870 ], [ %1839, %1847 ]
  %.ph474 = phi ptr [ %1873, %1870 ], [ %1838, %1847 ]
  br label %1875

1875:                                             ; preds = %.preheader472, %1875
  %1876 = phi ptr [ %1879, %1875 ], [ %.ph473, %.preheader472 ]
  %1877 = phi ptr [ %1880, %1875 ], [ %.ph474, %.preheader472 ]
  %1878 = load i64, ptr %1877, align 1
  store i64 %1878, ptr %1876, align 1
  %1879 = getelementptr inbounds nuw i8, ptr %1876, i64 8
  %1880 = getelementptr inbounds nuw i8, ptr %1877, i64 8
  %1881 = icmp ult ptr %1879, %1845
  br i1 %1881, label %1875, label %.loopexit137, !llvm.loop !189

1882:                                             ; preds = %1841
  %1883 = load <2 x i64>, ptr %1838, align 1, !tbaa !9
  store <2 x i64> %1883, ptr %1839, align 1, !tbaa !9
  %1884 = icmp ult i64 %1790, 25
  br i1 %1884, label %.loopexit137, label %1885

1885:                                             ; preds = %1882
  %1886 = getelementptr inbounds nuw i8, ptr %1792, i64 24
  br label %1887

1887:                                             ; preds = %1887, %1885
  %1888 = phi ptr [ %1886, %1885 ], [ %1895, %1887 ]
  %1889 = phi ptr [ %1838, %1885 ], [ %1893, %1887 ]
  %1890 = getelementptr inbounds nuw i8, ptr %1889, i64 16
  %1891 = load <2 x i64>, ptr %1890, align 1, !tbaa !9
  store <2 x i64> %1891, ptr %1888, align 1, !tbaa !9
  %1892 = getelementptr inbounds nuw i8, ptr %1888, i64 16
  %1893 = getelementptr inbounds nuw i8, ptr %1889, i64 32
  %1894 = load <2 x i64>, ptr %1893, align 1, !tbaa !9
  store <2 x i64> %1894, ptr %1892, align 1, !tbaa !9
  %1895 = getelementptr inbounds nuw i8, ptr %1888, i64 32
  %1896 = icmp ult ptr %1895, %1845
  br i1 %1896, label %1887, label %.loopexit137, !llvm.loop !97

1897:                                             ; preds = %1445
  %1898 = load i64, ptr %1451, align 8
  %1899 = getelementptr inbounds nuw i8, ptr %1451, i64 8
  %1900 = load i64, ptr %1899, align 8
  %1901 = getelementptr inbounds nuw i8, ptr %1451, i64 16
  %1902 = load i64, ptr %1901, align 8
  %1903 = getelementptr inbounds nuw i8, ptr %1447, i64 %1898
  %1904 = add i64 %1900, %1898
  %1905 = load ptr, ptr %7, align 8, !tbaa !38
  %1906 = getelementptr inbounds nuw i8, ptr %1905, i64 %1898
  %1907 = sub i64 0, %1902
  %1908 = getelementptr inbounds i8, ptr %1903, i64 %1907
  %1909 = icmp ugt ptr %1906, %1448
  %1910 = getelementptr inbounds nuw i8, ptr %1447, i64 %1904
  %1911 = icmp ugt ptr %1910, %1432
  %1912 = select i1 %1909, i1 true, i1 %1911
  br i1 %1912, label %1916, label %1913, !prof !101

1913:                                             ; preds = %1897
  %1914 = load <2 x i64>, ptr %1905, align 1, !tbaa !9
  store <2 x i64> %1914, ptr %1447, align 1, !tbaa !9
  %1915 = icmp ugt i64 %1898, 16
  br i1 %1915, label %1918, label %1919, !prof !52

1916:                                             ; preds = %1897
  %1917 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1447, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1451, ptr noundef nonnull %7, ptr noundef %1448, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit137

1918:                                             ; preds = %1913
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.4(ptr nonnull %1447, ptr nonnull %1905, i64 %1898) #21
  br label %1919

1919:                                             ; preds = %1918, %1913
  store ptr %1906, ptr %7, align 8, !tbaa !38
  %1920 = ptrtoint ptr %1903 to i64
  %1921 = sub i64 %1920, %48
  %1922 = icmp ugt i64 %1902, %1921
  br i1 %1922, label %1923, label %1936

1923:                                             ; preds = %1919
  %1924 = sub i64 %1920, %1433
  %1925 = icmp ugt i64 %1902, %1924
  br i1 %1925, label %.thread, label %1926, !prof !52

1926:                                             ; preds = %1923
  %1927 = ptrtoint ptr %1908 to i64
  %1928 = sub i64 %1927, %48
  %1929 = getelementptr inbounds i8, ptr %30, i64 %1928
  %1930 = add i64 %1928, %1900
  %1931 = icmp sgt i64 %1930, 0
  br i1 %1931, label %1933, label %1932

1932:                                             ; preds = %1926
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1903, ptr align 1 %1929, i64 %1900, i1 false)
  br label %.loopexit137

1933:                                             ; preds = %1926
  %1934 = sub nsw i64 0, %1928
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1903, ptr align 1 %1929, i64 %1934, i1 false)
  %1935 = getelementptr inbounds nuw i8, ptr %1903, i64 %1934
  %.pre245 = ptrtoint ptr %1935 to i64
  br label %1936

1936:                                             ; preds = %1933, %1919
  %.pre-phi246 = phi i64 [ %.pre245, %1933 ], [ %1920, %1919 ]
  %1937 = phi i64 [ %1930, %1933 ], [ %1900, %1919 ]
  %1938 = phi ptr [ %26, %1933 ], [ %1908, %1919 ]
  %1939 = phi ptr [ %1935, %1933 ], [ %1903, %1919 ]
  %1940 = icmp ugt i64 %1902, 15
  br i1 %1940, label %1941, label %1957, !prof !87

1941:                                             ; preds = %1936
  %1942 = getelementptr inbounds nuw i8, ptr %1939, i64 %1937
  %1943 = load <2 x i64>, ptr %1938, align 1, !tbaa !9
  store <2 x i64> %1943, ptr %1939, align 1, !tbaa !9
  %1944 = icmp ult i64 %1937, 17
  br i1 %1944, label %.loopexit137, label %1945

1945:                                             ; preds = %1941
  %1946 = getelementptr inbounds nuw i8, ptr %1939, i64 16
  br label %1947

1947:                                             ; preds = %1947, %1945
  %1948 = phi ptr [ %1946, %1945 ], [ %1955, %1947 ]
  %1949 = phi ptr [ %1938, %1945 ], [ %1953, %1947 ]
  %1950 = getelementptr inbounds nuw i8, ptr %1949, i64 16
  %1951 = load <2 x i64>, ptr %1950, align 1, !tbaa !9
  store <2 x i64> %1951, ptr %1948, align 1, !tbaa !9
  %1952 = getelementptr inbounds nuw i8, ptr %1948, i64 16
  %1953 = getelementptr inbounds nuw i8, ptr %1949, i64 32
  %1954 = load <2 x i64>, ptr %1953, align 1, !tbaa !9
  store <2 x i64> %1954, ptr %1952, align 1, !tbaa !9
  %1955 = getelementptr inbounds nuw i8, ptr %1948, i64 32
  %1956 = icmp ult ptr %1955, %1942
  br i1 %1956, label %1947, label %.loopexit137, !llvm.loop !97

1957:                                             ; preds = %1936
  %1958 = icmp samesign ult i64 %1902, 8
  br i1 %1958, label %1959, label %1981

1959:                                             ; preds = %1957
  %1960 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1902
  %1961 = load i32, ptr %1960, align 4, !tbaa !30
  %1962 = load i8, ptr %1938, align 1, !tbaa !9
  store i8 %1962, ptr %1939, align 1, !tbaa !9
  %1963 = getelementptr inbounds nuw i8, ptr %1938, i64 1
  %1964 = load i8, ptr %1963, align 1, !tbaa !9
  %1965 = getelementptr inbounds nuw i8, ptr %1939, i64 1
  store i8 %1964, ptr %1965, align 1, !tbaa !9
  %1966 = getelementptr inbounds nuw i8, ptr %1938, i64 2
  %1967 = load i8, ptr %1966, align 1, !tbaa !9
  %1968 = getelementptr inbounds nuw i8, ptr %1939, i64 2
  store i8 %1967, ptr %1968, align 1, !tbaa !9
  %1969 = getelementptr inbounds nuw i8, ptr %1938, i64 3
  %1970 = load i8, ptr %1969, align 1, !tbaa !9
  %1971 = getelementptr inbounds nuw i8, ptr %1939, i64 3
  store i8 %1970, ptr %1971, align 1, !tbaa !9
  %1972 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1902
  %1973 = load i32, ptr %1972, align 4, !tbaa !30
  %1974 = zext i32 %1973 to i64
  %1975 = getelementptr inbounds nuw i8, ptr %1938, i64 %1974
  %1976 = getelementptr inbounds nuw i8, ptr %1939, i64 4
  %1977 = load i32, ptr %1975, align 1
  store i32 %1977, ptr %1976, align 1
  %1978 = sext i32 %1961 to i64
  %1979 = sub nsw i64 0, %1978
  %1980 = getelementptr inbounds i8, ptr %1975, i64 %1979
  br label %1983

1981:                                             ; preds = %1957
  %1982 = load i64, ptr %1938, align 1
  store i64 %1982, ptr %1939, align 1
  br label %1983

1983:                                             ; preds = %1981, %1959
  %1984 = phi ptr [ %1980, %1959 ], [ %1938, %1981 ]
  %1985 = getelementptr inbounds nuw i8, ptr %1984, i64 8
  %1986 = getelementptr inbounds nuw i8, ptr %1939, i64 8
  %1987 = icmp ugt i64 %1937, 8
  br i1 %1987, label %1988, label %.loopexit137

1988:                                             ; preds = %1983
  %1989 = ptrtoint ptr %1986 to i64
  %1990 = ptrtoint ptr %1985 to i64
  %1991 = sub i64 %1989, %1990
  %1992 = getelementptr i8, ptr %1939, i64 %1937
  %1993 = icmp slt i64 %1991, 16
  br i1 %1993, label %1994, label %2029

1994:                                             ; preds = %1988
  %1995 = add i64 %1937, %.pre-phi246
  %1996 = add i64 %.pre-phi246, 16
  %1997 = tail call i64 @llvm.umax.i64(i64 %1995, i64 %1996)
  %reass.sub188 = sub i64 %1997, %.pre-phi246
  %1998 = add i64 %reass.sub188, -9
  %1999 = lshr i64 %1998, 3
  %2000 = add nuw nsw i64 %1999, 1
  %2001 = icmp ult i64 %1998, 24
  %2002 = icmp ult i64 %1991, 32
  %2003 = or i1 %2001, %2002
  br i1 %2003, label %.preheader478, label %2004

2004:                                             ; preds = %1994
  %2005 = and i64 %2000, 4611686018427387900
  br label %2006

2006:                                             ; preds = %2006, %2004
  %2007 = phi i64 [ 0, %2004 ], [ %2015, %2006 ]
  %2008 = shl i64 %2007, 3
  %2009 = getelementptr i8, ptr %1986, i64 %2008
  %2010 = getelementptr i8, ptr %1985, i64 %2008
  %2011 = getelementptr i8, ptr %2010, i64 16
  %2012 = load <2 x i64>, ptr %2010, align 1
  %2013 = load <2 x i64>, ptr %2011, align 1
  %2014 = getelementptr i8, ptr %2009, i64 16
  store <2 x i64> %2012, ptr %2009, align 1
  store <2 x i64> %2013, ptr %2014, align 1
  %2015 = add nuw i64 %2007, 4
  %2016 = icmp eq i64 %2015, %2005
  br i1 %2016, label %2017, label %2006, !llvm.loop !190

2017:                                             ; preds = %2006
  %2018 = shl i64 %2005, 3
  %2019 = getelementptr i8, ptr %1986, i64 %2018
  %2020 = getelementptr i8, ptr %1985, i64 %2018
  %2021 = icmp eq i64 %2000, %2005
  br i1 %2021, label %.loopexit137, label %.preheader478

.preheader478:                                    ; preds = %2017, %1994
  %.ph479 = phi ptr [ %2019, %2017 ], [ %1986, %1994 ]
  %.ph480 = phi ptr [ %2020, %2017 ], [ %1985, %1994 ]
  br label %2022

2022:                                             ; preds = %.preheader478, %2022
  %2023 = phi ptr [ %2026, %2022 ], [ %.ph479, %.preheader478 ]
  %2024 = phi ptr [ %2027, %2022 ], [ %.ph480, %.preheader478 ]
  %2025 = load i64, ptr %2024, align 1
  store i64 %2025, ptr %2023, align 1
  %2026 = getelementptr inbounds nuw i8, ptr %2023, i64 8
  %2027 = getelementptr inbounds nuw i8, ptr %2024, i64 8
  %2028 = icmp ult ptr %2026, %1992
  br i1 %2028, label %2022, label %.loopexit137, !llvm.loop !191

2029:                                             ; preds = %1988
  %2030 = load <2 x i64>, ptr %1985, align 1, !tbaa !9
  store <2 x i64> %2030, ptr %1986, align 1, !tbaa !9
  %2031 = icmp ult i64 %1937, 25
  br i1 %2031, label %.loopexit137, label %2032

2032:                                             ; preds = %2029
  %2033 = getelementptr inbounds nuw i8, ptr %1939, i64 24
  br label %2034

2034:                                             ; preds = %2034, %2032
  %2035 = phi ptr [ %2033, %2032 ], [ %2042, %2034 ]
  %2036 = phi ptr [ %1985, %2032 ], [ %2040, %2034 ]
  %2037 = getelementptr inbounds nuw i8, ptr %2036, i64 16
  %2038 = load <2 x i64>, ptr %2037, align 1, !tbaa !9
  store <2 x i64> %2038, ptr %2035, align 1, !tbaa !9
  %2039 = getelementptr inbounds nuw i8, ptr %2035, i64 16
  %2040 = getelementptr inbounds nuw i8, ptr %2036, i64 32
  %2041 = load <2 x i64>, ptr %2040, align 1, !tbaa !9
  store <2 x i64> %2041, ptr %2039, align 1, !tbaa !9
  %2042 = getelementptr inbounds nuw i8, ptr %2035, i64 32
  %2043 = icmp ult ptr %2042, %1992
  br i1 %2043, label %2034, label %.loopexit137, !llvm.loop !97

.loopexit137:                                     ; preds = %2034, %2022, %1947, %1887, %1875, %1800, %2029, %2017, %1983, %1941, %1932, %1916, %1882, %1870, %1836, %1794, %1785, %1769
  %2044 = phi i64 [ %1770, %1769 ], [ %1759, %1785 ], [ %1904, %2022 ], [ %1759, %1836 ], [ %1759, %1794 ], [ %1759, %1882 ], [ %1759, %1870 ], [ %1904, %1947 ], [ %1759, %1875 ], [ %1759, %1887 ], [ %1917, %1916 ], [ %1904, %1932 ], [ %1759, %1800 ], [ %1904, %1983 ], [ %1904, %1941 ], [ %1904, %2029 ], [ %1904, %2017 ], [ %1904, %2034 ]
  %2045 = icmp ult i64 %2044, -119
  %2046 = getelementptr inbounds nuw i8, ptr %1447, i64 %2044
  br i1 %2045, label %2047, label %.thread

2047:                                             ; preds = %.loopexit137, %.loopexit
  %2048 = phi ptr [ %1436, %.loopexit ], [ %1448, %.loopexit137 ]
  %2049 = phi ptr [ %1751, %.loopexit ], [ %2046, %.loopexit137 ]
  %2050 = add i32 %1446, 1
  %2051 = icmp eq i32 %2050, %5
  br i1 %2051, label %.loopexit143, label %1445, !llvm.loop !122

.thread:                                          ; preds = %1270, %1120, %.loopexit150, %.loopexit144, %964, %801, %1923, %1776, %.loopexit137, %.loopexit, %1628, %1465, %.loopexit158, %119, %107, %56, %32
  %2052 = phi i64 [ -20, %119 ], [ -20, %.loopexit158 ], [ -20, %32 ], [ -20, %56 ], [ -20, %107 ], [ -20, %1628 ], [ -20, %1923 ], [ -20, %1776 ], [ %2044, %.loopexit137 ], [ %1749, %.loopexit ], [ -70, %1465 ], [ -70, %801 ], [ -20, %1120 ], [ -20, %1270 ], [ %1391, %.loopexit150 ], [ %1085, %.loopexit144 ], [ -20, %964 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %2097

2053:                                             ; preds = %.loopexit143, %19
  %2054 = phi ptr [ %1444, %.loopexit143 ], [ %22, %19 ]
  %2055 = phi i32 [ %1443, %.loopexit143 ], [ %11, %19 ]
  %2056 = phi ptr [ %1438, %.loopexit143 ], [ %24, %19 ]
  %2057 = phi ptr [ %1439, %.loopexit143 ], [ %1, %19 ]
  %2058 = icmp eq i32 %2055, 2
  br i1 %2058, label %2061, label %2059

2059:                                             ; preds = %2053
  %2060 = ptrtoint ptr %20 to i64
  br label %2077

2061:                                             ; preds = %2053
  %2062 = ptrtoint ptr %2056 to i64
  %2063 = ptrtoint ptr %2054 to i64
  %2064 = sub i64 %2062, %2063
  %2065 = ptrtoint ptr %20 to i64
  %2066 = ptrtoint ptr %2057 to i64
  %2067 = sub i64 %2065, %2066
  %2068 = icmp ugt i64 %2064, %2067
  br i1 %2068, label %2097, label %2069

2069:                                             ; preds = %2061
  %2070 = icmp eq ptr %2057, null
  br i1 %2070, label %2073, label %2071

2071:                                             ; preds = %2069
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2057, ptr align 1 %2054, i64 %2064, i1 false)
  %2072 = getelementptr inbounds nuw i8, ptr %2057, i64 %2064
  br label %2073

2073:                                             ; preds = %2071, %2069
  %2074 = phi ptr [ %2072, %2071 ], [ null, %2069 ]
  %2075 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %2076 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %2077

2077:                                             ; preds = %2073, %2059
  %2078 = phi i64 [ %2060, %2059 ], [ %2065, %2073 ]
  %2079 = phi ptr [ %2054, %2059 ], [ %2075, %2073 ]
  %2080 = phi ptr [ %2056, %2059 ], [ %2076, %2073 ]
  %2081 = phi ptr [ %2057, %2059 ], [ %2074, %2073 ]
  %2082 = ptrtoint ptr %2080 to i64
  %2083 = ptrtoint ptr %2079 to i64
  %2084 = sub i64 %2082, %2083
  %2085 = ptrtoint ptr %2081 to i64
  %2086 = sub i64 %2078, %2085
  %2087 = icmp ugt i64 %2084, %2086
  br i1 %2087, label %2097, label %2088

2088:                                             ; preds = %2077
  %2089 = icmp eq ptr %2081, null
  br i1 %2089, label %2093, label %2090

2090:                                             ; preds = %2088
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2081, ptr align 1 %2079, i64 %2084, i1 false)
  %2091 = getelementptr inbounds nuw i8, ptr %2081, i64 %2084
  %2092 = ptrtoint ptr %2091 to i64
  br label %2093

2093:                                             ; preds = %2090, %2088
  %2094 = phi i64 [ 0, %2088 ], [ %2092, %2090 ]
  %2095 = ptrtoint ptr %1 to i64
  %2096 = sub i64 %2094, %2095
  br label %2097

2097:                                             ; preds = %2093, %2077, %2061, %.thread
  %2098 = phi i64 [ %2096, %2093 ], [ %2052, %.thread ], [ -70, %2077 ], [ -70, %2061 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %2098
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %0, ptr noundef %1, ptr noundef readonly byval(%struct.seq_t) align 8 captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7) unnamed_addr #13 {
  %9 = load i64, ptr %2, align 8, !tbaa !92
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !127
  %13 = add i64 %12, %9
  %14 = load ptr, ptr %3, align 8, !tbaa !38
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %9
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !192
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  %20 = getelementptr inbounds i8, ptr %1, i64 -32
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %13, %23
  br i1 %24, label %199, label %25

25:                                               ; preds = %8
  %26 = ptrtoint ptr %4 to i64
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %9, %28
  br i1 %29, label %199, label %30

30:                                               ; preds = %25
  %31 = icmp ult i64 %9, 8
  br i1 %31, label %32, label %85

32:                                               ; preds = %30
  %33 = icmp eq i64 %9, 0
  br i1 %33, label %.loopexit, label %34

34:                                               ; preds = %32
  %35 = add i64 %9, %22
  %36 = add i64 %22, 1
  %37 = tail call i64 @llvm.umax.i64(i64 %35, i64 %36)
  %38 = sub i64 %37, %22
  %39 = icmp ult i64 %38, 4
  %40 = sub i64 %22, %27
  %41 = icmp ult i64 %40, 32
  %42 = or i1 %39, %41
  br i1 %42, label %.preheader, label %43

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
  br i1 %56, label %57, label %47, !llvm.loop !193

57:                                               ; preds = %47
  %58 = icmp eq i64 %38, %46
  br i1 %58, label %.loopexit, label %59

59:                                               ; preds = %57
  %60 = getelementptr i8, ptr %14, i64 %46
  %61 = getelementptr i8, ptr %0, i64 %46
  %62 = and i64 %38, 28
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %.preheader, label %64

64:                                               ; preds = %59, %43
  %65 = phi i64 [ %46, %59 ], [ 0, %43 ]
  %66 = and i64 %38, -4
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ %65, %64 ], [ %72, %67 ]
  %69 = getelementptr i8, ptr %14, i64 %68
  %70 = getelementptr i8, ptr %0, i64 %68
  %71 = load <4 x i8>, ptr %69, align 1, !tbaa !9
  store <4 x i8> %71, ptr %70, align 1, !tbaa !9
  %72 = add nuw i64 %68, 4
  %73 = icmp eq i64 %72, %66
  br i1 %73, label %74, label %67, !llvm.loop !194

74:                                               ; preds = %67
  %75 = getelementptr i8, ptr %14, i64 %66
  %76 = getelementptr i8, ptr %0, i64 %66
  %77 = icmp eq i64 %38, %66
  br i1 %77, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %74, %59, %34
  %.ph = phi ptr [ %75, %74 ], [ %60, %59 ], [ %14, %34 ]
  %.ph38 = phi ptr [ %76, %74 ], [ %61, %59 ], [ %0, %34 ]
  br label %78

78:                                               ; preds = %.preheader, %78
  %79 = phi ptr [ %81, %78 ], [ %.ph, %.preheader ]
  %80 = phi ptr [ %83, %78 ], [ %.ph38, %.preheader ]
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 1
  %82 = load i8, ptr %79, align 1, !tbaa !9
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 1
  store i8 %82, ptr %80, align 1, !tbaa !9
  %84 = icmp ult ptr %83, %10
  br i1 %84, label %78, label %.loopexit, !llvm.loop !195

85:                                               ; preds = %30
  %86 = icmp ugt ptr %10, %20
  br i1 %86, label %102, label %87

87:                                               ; preds = %85
  %88 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %88, ptr %0, align 1, !tbaa !9
  %89 = icmp ult i64 %9, 17
  br i1 %89, label %.loopexit, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi ptr [ %91, %90 ], [ %100, %92 ]
  %94 = phi ptr [ %14, %90 ], [ %98, %92 ]
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 16
  %96 = load <2 x i64>, ptr %95, align 1, !tbaa !9
  store <2 x i64> %96, ptr %93, align 1, !tbaa !9
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %99 = load <2 x i64>, ptr %98, align 1, !tbaa !9
  store <2 x i64> %99, ptr %97, align 1, !tbaa !9
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %101 = icmp ult ptr %100, %10
  br i1 %101, label %92, label %.loopexit, !llvm.loop !97

102:                                              ; preds = %85
  %103 = icmp ugt ptr %0, %20
  br i1 %103, label %123, label %104

104:                                              ; preds = %102
  %105 = ptrtoint ptr %20 to i64
  %106 = sub i64 %105, %22
  %107 = getelementptr inbounds i8, ptr %0, i64 %106
  %108 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %108, ptr %0, align 1, !tbaa !9
  %109 = icmp ult i64 %106, 17
  br i1 %109, label %.loopexit15, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi ptr [ %111, %110 ], [ %120, %112 ]
  %114 = phi ptr [ %14, %110 ], [ %118, %112 ]
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %116 = load <2 x i64>, ptr %115, align 1, !tbaa !9
  store <2 x i64> %116, ptr %113, align 1, !tbaa !9
  %117 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %118 = getelementptr inbounds nuw i8, ptr %114, i64 32
  %119 = load <2 x i64>, ptr %118, align 1, !tbaa !9
  store <2 x i64> %119, ptr %117, align 1, !tbaa !9
  %120 = getelementptr inbounds nuw i8, ptr %113, i64 32
  %121 = icmp ult ptr %120, %20
  br i1 %121, label %112, label %.loopexit15, !llvm.loop !97

.loopexit15:                                      ; preds = %112, %104
  %122 = getelementptr inbounds i8, ptr %14, i64 %106
  br label %123

123:                                              ; preds = %.loopexit15, %102
  %124 = phi ptr [ %0, %102 ], [ %107, %.loopexit15 ]
  %125 = phi ptr [ %14, %102 ], [ %122, %.loopexit15 ]
  %126 = icmp ult ptr %124, %10
  br i1 %126, label %127, label %.loopexit

127:                                              ; preds = %123
  %128 = add i64 %21, -32
  %129 = tail call i64 @llvm.usub.sat.i64(i64 %128, i64 %22)
  %130 = sub i64 %9, %129
  %131 = icmp ult i64 %130, 4
  %132 = sub i64 %22, %27
  %133 = icmp ult i64 %132, 32
  %134 = or i1 %131, %133
  br i1 %134, label %.preheader39, label %135

135:                                              ; preds = %127
  %136 = icmp ult i64 %130, 32
  br i1 %136, label %156, label %137

137:                                              ; preds = %135
  %138 = and i64 %130, -32
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi i64 [ 0, %137 ], [ %147, %139 ]
  %141 = getelementptr i8, ptr %125, i64 %140
  %142 = getelementptr i8, ptr %124, i64 %140
  %143 = getelementptr i8, ptr %141, i64 16
  %144 = load <16 x i8>, ptr %141, align 1, !tbaa !9
  %145 = load <16 x i8>, ptr %143, align 1, !tbaa !9
  %146 = getelementptr i8, ptr %142, i64 16
  store <16 x i8> %144, ptr %142, align 1, !tbaa !9
  store <16 x i8> %145, ptr %146, align 1, !tbaa !9
  %147 = add nuw i64 %140, 32
  %148 = icmp eq i64 %147, %138
  br i1 %148, label %149, label %139, !llvm.loop !196

149:                                              ; preds = %139
  %150 = icmp eq i64 %130, %138
  br i1 %150, label %.loopexit, label %151

151:                                              ; preds = %149
  %152 = getelementptr i8, ptr %125, i64 %138
  %153 = getelementptr i8, ptr %124, i64 %138
  %154 = and i64 %130, 28
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %.preheader39, label %156

156:                                              ; preds = %151, %135
  %157 = phi i64 [ %138, %151 ], [ 0, %135 ]
  %158 = and i64 %130, -4
  br label %159

159:                                              ; preds = %159, %156
  %160 = phi i64 [ %157, %156 ], [ %164, %159 ]
  %161 = getelementptr i8, ptr %125, i64 %160
  %162 = getelementptr i8, ptr %124, i64 %160
  %163 = load <4 x i8>, ptr %161, align 1, !tbaa !9
  store <4 x i8> %163, ptr %162, align 1, !tbaa !9
  %164 = add nuw i64 %160, 4
  %165 = icmp eq i64 %164, %158
  br i1 %165, label %166, label %159, !llvm.loop !197

166:                                              ; preds = %159
  %167 = getelementptr i8, ptr %125, i64 %158
  %168 = getelementptr i8, ptr %124, i64 %158
  %169 = icmp eq i64 %130, %158
  br i1 %169, label %.loopexit, label %.preheader39

.preheader39:                                     ; preds = %166, %151, %127
  %.ph40 = phi ptr [ %167, %166 ], [ %152, %151 ], [ %125, %127 ]
  %.ph41 = phi ptr [ %168, %166 ], [ %153, %151 ], [ %124, %127 ]
  br label %170

170:                                              ; preds = %.preheader39, %170
  %171 = phi ptr [ %173, %170 ], [ %.ph40, %.preheader39 ]
  %172 = phi ptr [ %175, %170 ], [ %.ph41, %.preheader39 ]
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %174 = load i8, ptr %171, align 1, !tbaa !9
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 1
  store i8 %174, ptr %172, align 1, !tbaa !9
  %176 = icmp ult ptr %175, %10
  br i1 %176, label %170, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %92, %170, %78, %166, %149, %123, %87, %74, %57, %32
  store ptr %15, ptr %3, align 8, !tbaa !38
  %177 = ptrtoint ptr %10 to i64
  %178 = ptrtoint ptr %5 to i64
  %179 = sub i64 %177, %178
  %180 = icmp ugt i64 %17, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %.loopexit
  %182 = ptrtoint ptr %6 to i64
  %183 = sub i64 %177, %182
  %184 = icmp ugt i64 %17, %183
  br i1 %184, label %199, label %185

185:                                              ; preds = %181
  %186 = ptrtoint ptr %19 to i64
  %187 = sub i64 %186, %178
  %188 = getelementptr inbounds i8, ptr %7, i64 %187
  %189 = add nsw i64 %187, %12
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %188, i64 %12, i1 false)
  br label %199

192:                                              ; preds = %185
  %193 = sub nsw i64 0, %187
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %188, i64 %193, i1 false)
  %194 = getelementptr inbounds nuw i8, ptr %10, i64 %193
  br label %195

195:                                              ; preds = %192, %.loopexit
  %196 = phi i64 [ %189, %192 ], [ %12, %.loopexit ]
  %197 = phi ptr [ %5, %192 ], [ %19, %.loopexit ]
  %198 = phi ptr [ %194, %192 ], [ %10, %.loopexit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %198, ptr noundef nonnull %20, ptr noundef %197, i64 noundef %196)
  br label %199

199:                                              ; preds = %195, %191, %181, %25, %8
  %200 = phi i64 [ %13, %191 ], [ %13, %195 ], [ -70, %8 ], [ -20, %25 ], [ -20, %181 ]
  ret i64 %200
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_safecopy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #14 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %7, %5
  %9 = getelementptr i8, ptr %0, i64 %3
  %10 = icmp ult i64 %3, 8
  br i1 %10, label %11, label %63

11:                                               ; preds = %4
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %.loopexit, label %13

13:                                               ; preds = %11
  %14 = add i64 %3, %7
  %15 = add i64 %7, 1
  %16 = tail call i64 @llvm.umax.i64(i64 %14, i64 %15)
  %17 = sub i64 %16, %7
  %18 = icmp ult i64 %17, 4
  %19 = icmp ult i64 %8, 32
  %20 = or i1 %19, %18
  br i1 %20, label %.preheader, label %21

21:                                               ; preds = %13
  %22 = icmp ult i64 %17, 32
  br i1 %22, label %42, label %23

23:                                               ; preds = %21
  %24 = and i64 %17, -32
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %33, %25 ]
  %27 = getelementptr i8, ptr %2, i64 %26
  %28 = getelementptr i8, ptr %0, i64 %26
  %29 = getelementptr i8, ptr %27, i64 16
  %30 = load <16 x i8>, ptr %27, align 1, !tbaa !9
  %31 = load <16 x i8>, ptr %29, align 1, !tbaa !9
  %32 = getelementptr i8, ptr %28, i64 16
  store <16 x i8> %30, ptr %28, align 1, !tbaa !9
  store <16 x i8> %31, ptr %32, align 1, !tbaa !9
  %33 = add nuw i64 %26, 32
  %34 = icmp eq i64 %33, %24
  br i1 %34, label %35, label %25, !llvm.loop !199

35:                                               ; preds = %25
  %36 = icmp eq i64 %17, %24
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %2, i64 %24
  %39 = getelementptr i8, ptr %0, i64 %24
  %40 = and i64 %17, 28
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %.preheader, label %42

42:                                               ; preds = %37, %21
  %43 = phi i64 [ %24, %37 ], [ 0, %21 ]
  %44 = and i64 %17, -4
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i64 [ %43, %42 ], [ %50, %45 ]
  %47 = getelementptr i8, ptr %2, i64 %46
  %48 = getelementptr i8, ptr %0, i64 %46
  %49 = load <4 x i8>, ptr %47, align 1, !tbaa !9
  store <4 x i8> %49, ptr %48, align 1, !tbaa !9
  %50 = add nuw i64 %46, 4
  %51 = icmp eq i64 %50, %44
  br i1 %51, label %52, label %45, !llvm.loop !200

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %2, i64 %44
  %54 = getelementptr i8, ptr %0, i64 %44
  %55 = icmp eq i64 %17, %44
  br i1 %55, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %52, %37, %13
  %.ph = phi ptr [ %53, %52 ], [ %38, %37 ], [ %2, %13 ]
  %.ph5 = phi ptr [ %54, %52 ], [ %39, %37 ], [ %0, %13 ]
  br label %56

56:                                               ; preds = %.preheader, %56
  %57 = phi ptr [ %59, %56 ], [ %.ph, %.preheader ]
  %58 = phi ptr [ %61, %56 ], [ %.ph5, %.preheader ]
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 1
  %60 = load i8, ptr %57, align 1, !tbaa !9
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 1
  store i8 %60, ptr %58, align 1, !tbaa !9
  %62 = icmp ult ptr %61, %9
  br i1 %62, label %56, label %.loopexit, !llvm.loop !201

63:                                               ; preds = %4
  %64 = icmp ult i64 %8, 8
  br i1 %64, label %65, label %87

65:                                               ; preds = %63
  %66 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %8
  %67 = load i32, ptr %66, align 4, !tbaa !30
  %68 = load i8, ptr %2, align 1, !tbaa !9
  store i8 %68, ptr %0, align 1, !tbaa !9
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %70, ptr %71, align 1, !tbaa !9
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %73, ptr %74, align 1, !tbaa !9
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %76, ptr %77, align 1, !tbaa !9
  %78 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %8
  %79 = load i32, ptr %78, align 4, !tbaa !30
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %83 = load i32, ptr %81, align 1
  store i32 %83, ptr %82, align 1
  %84 = sext i32 %67 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, ptr %81, i64 %85
  br label %89

87:                                               ; preds = %63
  %88 = load i64, ptr %2, align 1
  store i64 %88, ptr %0, align 1
  br label %89

89:                                               ; preds = %87, %65
  %90 = phi ptr [ %86, %65 ], [ %2, %87 ]
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %93 = add i64 %3, -8
  %94 = ptrtoint ptr %92 to i64
  %95 = ptrtoint ptr %91 to i64
  %96 = icmp ugt ptr %9, %1
  br i1 %96, label %151, label %97

97:                                               ; preds = %89
  %98 = sub i64 %94, %95
  %99 = icmp slt i64 %98, 16
  br i1 %99, label %100, label %136

100:                                              ; preds = %97
  %101 = add i64 %93, %94
  %102 = add i64 %94, 8
  %103 = tail call i64 @llvm.umax.i64(i64 %101, i64 %102)
  %104 = xor i64 %94, -1
  %105 = add i64 %103, %104
  %106 = lshr i64 %105, 3
  %107 = add nuw nsw i64 %106, 1
  %108 = icmp ult i64 %105, 24
  %109 = icmp ult i64 %98, 32
  %110 = or i1 %108, %109
  br i1 %110, label %.preheader14, label %111

111:                                              ; preds = %100
  %112 = and i64 %107, 4611686018427387900
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i64 [ 0, %111 ], [ %122, %113 ]
  %115 = shl i64 %114, 3
  %116 = getelementptr i8, ptr %92, i64 %115
  %117 = getelementptr i8, ptr %91, i64 %115
  %118 = getelementptr i8, ptr %117, i64 16
  %119 = load <2 x i64>, ptr %117, align 1
  %120 = load <2 x i64>, ptr %118, align 1
  %121 = getelementptr i8, ptr %116, i64 16
  store <2 x i64> %119, ptr %116, align 1
  store <2 x i64> %120, ptr %121, align 1
  %122 = add nuw i64 %114, 4
  %123 = icmp eq i64 %122, %112
  br i1 %123, label %124, label %113, !llvm.loop !202

124:                                              ; preds = %113
  %125 = shl i64 %112, 3
  %126 = getelementptr i8, ptr %92, i64 %125
  %127 = getelementptr i8, ptr %91, i64 %125
  %128 = icmp eq i64 %107, %112
  br i1 %128, label %.loopexit, label %.preheader14

.preheader14:                                     ; preds = %124, %100
  %.ph15 = phi ptr [ %126, %124 ], [ %92, %100 ]
  %.ph16 = phi ptr [ %127, %124 ], [ %91, %100 ]
  br label %129

129:                                              ; preds = %.preheader14, %129
  %130 = phi ptr [ %133, %129 ], [ %.ph15, %.preheader14 ]
  %131 = phi ptr [ %134, %129 ], [ %.ph16, %.preheader14 ]
  %132 = load i64, ptr %131, align 1
  store i64 %132, ptr %130, align 1
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %135 = icmp ult ptr %133, %9
  br i1 %135, label %129, label %.loopexit, !llvm.loop !203

136:                                              ; preds = %97
  %137 = load <2 x i64>, ptr %91, align 1, !tbaa !9
  store <2 x i64> %137, ptr %92, align 1, !tbaa !9
  %138 = icmp ult i64 %93, 17
  br i1 %138, label %.loopexit, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %141

141:                                              ; preds = %141, %139
  %142 = phi ptr [ %140, %139 ], [ %149, %141 ]
  %143 = phi ptr [ %91, %139 ], [ %147, %141 ]
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %145 = load <2 x i64>, ptr %144, align 1, !tbaa !9
  store <2 x i64> %145, ptr %142, align 1, !tbaa !9
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %147 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %148 = load <2 x i64>, ptr %147, align 1, !tbaa !9
  store <2 x i64> %148, ptr %146, align 1, !tbaa !9
  %149 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %150 = icmp ult ptr %149, %9
  br i1 %150, label %141, label %.loopexit, !llvm.loop !97

151:                                              ; preds = %89
  %152 = icmp ugt ptr %92, %1
  br i1 %152, label %209, label %153

153:                                              ; preds = %151
  %154 = sub i64 %6, %94
  %155 = sub i64 %94, %95
  %156 = getelementptr inbounds i8, ptr %92, i64 %154
  %157 = icmp slt i64 %155, 16
  br i1 %157, label %158, label %193

158:                                              ; preds = %153
  %159 = add i64 %94, 8
  %160 = tail call i64 @llvm.umax.i64(i64 %6, i64 %159)
  %161 = xor i64 %94, -1
  %162 = add i64 %160, %161
  %163 = lshr i64 %162, 3
  %164 = add nuw nsw i64 %163, 1
  %165 = icmp ult i64 %162, 24
  %166 = icmp ult i64 %155, 32
  %167 = or i1 %165, %166
  br i1 %167, label %.preheader10, label %168

168:                                              ; preds = %158
  %169 = and i64 %164, 4611686018427387900
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi i64 [ 0, %168 ], [ %179, %170 ]
  %172 = shl i64 %171, 3
  %173 = getelementptr i8, ptr %92, i64 %172
  %174 = getelementptr i8, ptr %91, i64 %172
  %175 = getelementptr i8, ptr %174, i64 16
  %176 = load <2 x i64>, ptr %174, align 1
  %177 = load <2 x i64>, ptr %175, align 1
  %178 = getelementptr i8, ptr %173, i64 16
  store <2 x i64> %176, ptr %173, align 1
  store <2 x i64> %177, ptr %178, align 1
  %179 = add nuw i64 %171, 4
  %180 = icmp eq i64 %179, %169
  br i1 %180, label %181, label %170, !llvm.loop !204

181:                                              ; preds = %170
  %182 = shl i64 %169, 3
  %183 = getelementptr i8, ptr %92, i64 %182
  %184 = getelementptr i8, ptr %91, i64 %182
  %185 = icmp eq i64 %164, %169
  br i1 %185, label %.loopexit17, label %.preheader10

.preheader10:                                     ; preds = %181, %158
  %.ph11 = phi ptr [ %183, %181 ], [ %92, %158 ]
  %.ph12 = phi ptr [ %184, %181 ], [ %91, %158 ]
  br label %186

186:                                              ; preds = %.preheader10, %186
  %187 = phi ptr [ %190, %186 ], [ %.ph11, %.preheader10 ]
  %188 = phi ptr [ %191, %186 ], [ %.ph12, %.preheader10 ]
  %189 = load i64, ptr %188, align 1
  store i64 %189, ptr %187, align 1
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %192 = icmp ult ptr %190, %1
  br i1 %192, label %186, label %.loopexit17, !llvm.loop !205

193:                                              ; preds = %153
  %194 = load <2 x i64>, ptr %91, align 1, !tbaa !9
  store <2 x i64> %194, ptr %92, align 1, !tbaa !9
  %195 = icmp ult i64 %154, 17
  br i1 %195, label %.loopexit17, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %198

198:                                              ; preds = %198, %196
  %199 = phi ptr [ %197, %196 ], [ %206, %198 ]
  %200 = phi ptr [ %91, %196 ], [ %204, %198 ]
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 16
  %202 = load <2 x i64>, ptr %201, align 1, !tbaa !9
  store <2 x i64> %202, ptr %199, align 1, !tbaa !9
  %203 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %204 = getelementptr inbounds nuw i8, ptr %200, i64 32
  %205 = load <2 x i64>, ptr %204, align 1, !tbaa !9
  store <2 x i64> %205, ptr %203, align 1, !tbaa !9
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 32
  %207 = icmp ult ptr %206, %1
  br i1 %207, label %198, label %.loopexit17, !llvm.loop !97

.loopexit17:                                      ; preds = %198, %186, %193, %181
  %208 = getelementptr inbounds i8, ptr %91, i64 %154
  br label %209

209:                                              ; preds = %.loopexit17, %151
  %210 = phi ptr [ %92, %151 ], [ %156, %.loopexit17 ]
  %211 = phi ptr [ %91, %151 ], [ %208, %.loopexit17 ]
  %212 = icmp ult ptr %210, %9
  br i1 %212, label %213, label %.loopexit

213:                                              ; preds = %209
  %214 = add i64 %3, %7
  %215 = tail call i64 @llvm.umax.i64(i64 %94, i64 %6)
  %216 = sub i64 %214, %215
  %217 = icmp ult i64 %216, 4
  %218 = sub i64 %94, %95
  %219 = icmp ult i64 %218, 32
  %220 = select i1 %217, i1 true, i1 %219
  br i1 %220, label %.preheader6, label %221

221:                                              ; preds = %213
  %222 = icmp ult i64 %216, 32
  br i1 %222, label %242, label %223

223:                                              ; preds = %221
  %224 = and i64 %216, -32
  br label %225

225:                                              ; preds = %225, %223
  %226 = phi i64 [ 0, %223 ], [ %233, %225 ]
  %227 = getelementptr i8, ptr %211, i64 %226
  %228 = getelementptr i8, ptr %210, i64 %226
  %229 = getelementptr i8, ptr %227, i64 16
  %230 = load <16 x i8>, ptr %227, align 1, !tbaa !9
  %231 = load <16 x i8>, ptr %229, align 1, !tbaa !9
  %232 = getelementptr i8, ptr %228, i64 16
  store <16 x i8> %230, ptr %228, align 1, !tbaa !9
  store <16 x i8> %231, ptr %232, align 1, !tbaa !9
  %233 = add nuw i64 %226, 32
  %234 = icmp eq i64 %233, %224
  br i1 %234, label %235, label %225, !llvm.loop !206

235:                                              ; preds = %225
  %236 = icmp eq i64 %216, %224
  br i1 %236, label %.loopexit, label %237

237:                                              ; preds = %235
  %238 = getelementptr i8, ptr %211, i64 %224
  %239 = getelementptr i8, ptr %210, i64 %224
  %240 = and i64 %216, 28
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %.preheader6, label %242

242:                                              ; preds = %237, %221
  %243 = phi i64 [ %224, %237 ], [ 0, %221 ]
  %244 = and i64 %216, -4
  br label %245

245:                                              ; preds = %245, %242
  %246 = phi i64 [ %243, %242 ], [ %250, %245 ]
  %247 = getelementptr i8, ptr %211, i64 %246
  %248 = getelementptr i8, ptr %210, i64 %246
  %249 = load <4 x i8>, ptr %247, align 1, !tbaa !9
  store <4 x i8> %249, ptr %248, align 1, !tbaa !9
  %250 = add nuw i64 %246, 4
  %251 = icmp eq i64 %250, %244
  br i1 %251, label %252, label %245, !llvm.loop !207

252:                                              ; preds = %245
  %253 = getelementptr i8, ptr %211, i64 %244
  %254 = getelementptr i8, ptr %210, i64 %244
  %255 = icmp eq i64 %216, %244
  br i1 %255, label %.loopexit, label %.preheader6

.preheader6:                                      ; preds = %252, %237, %213
  %.ph7 = phi ptr [ %253, %252 ], [ %238, %237 ], [ %211, %213 ]
  %.ph8 = phi ptr [ %254, %252 ], [ %239, %237 ], [ %210, %213 ]
  br label %256

256:                                              ; preds = %.preheader6, %256
  %257 = phi ptr [ %259, %256 ], [ %.ph7, %.preheader6 ]
  %258 = phi ptr [ %261, %256 ], [ %.ph8, %.preheader6 ]
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 1
  %260 = load i8, ptr %257, align 1, !tbaa !9
  %261 = getelementptr inbounds nuw i8, ptr %258, i64 1
  store i8 %260, ptr %258, align 1, !tbaa !9
  %262 = icmp ult ptr %261, %9
  br i1 %262, label %256, label %.loopexit, !llvm.loop !208

.loopexit:                                        ; preds = %141, %129, %256, %56, %252, %235, %209, %136, %124, %52, %35, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly byval(%struct.seq_t) align 8 captures(none) %3, ptr noundef nonnull captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readonly captures(none) %8) unnamed_addr #13 {
  %10 = load i64, ptr %3, align 8, !tbaa !92
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !127
  %14 = add i64 %13, %10
  %15 = load ptr, ptr %4, align 8, !tbaa !38
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %10
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = load i64, ptr %17, align 8, !tbaa !192
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i8, ptr %11, i64 %19
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %14, %23
  br i1 %24, label %188, label %25

25:                                               ; preds = %9
  %26 = ptrtoint ptr %5 to i64
  %27 = ptrtoint ptr %15 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %188, label %30

30:                                               ; preds = %25
  %31 = icmp ugt ptr %0, %15
  %32 = icmp ult ptr %0, %16
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %188, label %34

34:                                               ; preds = %30
  %35 = sub i64 %22, %27
  %36 = icmp ult i64 %10, 8
  %37 = icmp sgt i64 %35, -8
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %34
  %40 = icmp eq i64 %10, 0
  br i1 %40, label %.loopexit, label %41

41:                                               ; preds = %39
  %42 = add i64 %10, %22
  %43 = add i64 %22, 1
  %44 = tail call i64 @llvm.umax.i64(i64 %42, i64 %43)
  %45 = sub i64 %44, %22
  %46 = icmp ult i64 %45, 4
  %47 = icmp ult i64 %35, 32
  %48 = or i1 %46, %47
  br i1 %48, label %.preheader, label %49

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
  br i1 %62, label %63, label %53, !llvm.loop !209

63:                                               ; preds = %53
  %64 = icmp eq i64 %45, %52
  br i1 %64, label %.loopexit, label %65

65:                                               ; preds = %63
  %66 = getelementptr i8, ptr %0, i64 %52
  %67 = getelementptr i8, ptr %15, i64 %52
  %68 = and i64 %45, 28
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %.preheader, label %70

70:                                               ; preds = %65, %49
  %71 = phi i64 [ %52, %65 ], [ 0, %49 ]
  %72 = and i64 %45, -4
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i64 [ %71, %70 ], [ %78, %73 ]
  %75 = getelementptr i8, ptr %0, i64 %74
  %76 = getelementptr i8, ptr %15, i64 %74
  %77 = load <4 x i8>, ptr %76, align 1, !tbaa !9
  store <4 x i8> %77, ptr %75, align 1, !tbaa !9
  %78 = add nuw i64 %74, 4
  %79 = icmp eq i64 %78, %72
  br i1 %79, label %80, label %73, !llvm.loop !210

80:                                               ; preds = %73
  %81 = getelementptr i8, ptr %0, i64 %72
  %82 = getelementptr i8, ptr %15, i64 %72
  %83 = icmp eq i64 %45, %72
  br i1 %83, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %80, %65, %41
  %.ph = phi ptr [ %81, %80 ], [ %66, %65 ], [ %0, %41 ]
  %.ph32 = phi ptr [ %82, %80 ], [ %67, %65 ], [ %15, %41 ]
  br label %84

84:                                               ; preds = %.preheader, %84
  %85 = phi ptr [ %89, %84 ], [ %.ph, %.preheader ]
  %86 = phi ptr [ %87, %84 ], [ %.ph32, %.preheader ]
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %88 = load i8, ptr %86, align 1, !tbaa !9
  %89 = getelementptr inbounds nuw i8, ptr %85, i64 1
  store i8 %88, ptr %85, align 1, !tbaa !9
  %90 = icmp ult ptr %89, %11
  br i1 %90, label %84, label %.loopexit, !llvm.loop !211

91:                                               ; preds = %34
  %92 = icmp sgt i64 %10, 31
  %93 = icmp samesign ult i64 %35, -16
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %11, i64 -32
  %97 = add nsw i64 %10, -32
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load <2 x i64>, ptr %15, align 1, !tbaa !9
  store <2 x i64> %99, ptr %0, align 1, !tbaa !9
  %100 = icmp samesign ult i64 %10, 49
  br i1 %100, label %.loopexit12, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi ptr [ %102, %101 ], [ %111, %103 ]
  %105 = phi ptr [ %15, %101 ], [ %109, %103 ]
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 16
  %107 = load <2 x i64>, ptr %106, align 1, !tbaa !9
  store <2 x i64> %107, ptr %104, align 1, !tbaa !9
  %108 = getelementptr inbounds nuw i8, ptr %104, i64 16
  %109 = getelementptr inbounds nuw i8, ptr %105, i64 32
  %110 = load <2 x i64>, ptr %109, align 1, !tbaa !9
  store <2 x i64> %110, ptr %108, align 1, !tbaa !9
  %111 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %112 = icmp ult ptr %111, %98
  br i1 %112, label %103, label %.loopexit12, !llvm.loop !97

.loopexit12:                                      ; preds = %103, %95
  %113 = getelementptr inbounds nuw i8, ptr %15, i64 %97
  %.pre = ptrtoint ptr %96 to i64
  %.pre16 = ptrtoint ptr %113 to i64
  %.pre18 = sub i64 %.pre, %.pre16
  %114 = icmp ult i64 %.pre18, 32
  br label %115

115:                                              ; preds = %.loopexit12, %91
  %.pre-phi19 = phi i1 [ %114, %.loopexit12 ], [ false, %91 ]
  %.pre-phi = phi i64 [ %.pre, %.loopexit12 ], [ %22, %91 ]
  %116 = phi ptr [ %96, %.loopexit12 ], [ %0, %91 ]
  %117 = phi ptr [ %113, %.loopexit12 ], [ %15, %91 ]
  %118 = add i64 %10, %22
  %119 = add nuw i64 %.pre-phi, 1
  %120 = tail call i64 @llvm.umax.i64(i64 %118, i64 %119)
  %121 = sub i64 %120, %.pre-phi
  %122 = icmp ult i64 %121, 4
  %123 = select i1 %122, i1 true, i1 %.pre-phi19
  br i1 %123, label %.preheader33, label %124

124:                                              ; preds = %115
  %125 = icmp ult i64 %121, 32
  br i1 %125, label %145, label %126

126:                                              ; preds = %124
  %127 = and i64 %121, -32
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %136, %128 ]
  %130 = getelementptr i8, ptr %116, i64 %129
  %131 = getelementptr i8, ptr %117, i64 %129
  %132 = getelementptr i8, ptr %131, i64 16
  %133 = load <16 x i8>, ptr %131, align 1, !tbaa !9
  %134 = load <16 x i8>, ptr %132, align 1, !tbaa !9
  %135 = getelementptr i8, ptr %130, i64 16
  store <16 x i8> %133, ptr %130, align 1, !tbaa !9
  store <16 x i8> %134, ptr %135, align 1, !tbaa !9
  %136 = add nuw i64 %129, 32
  %137 = icmp eq i64 %136, %127
  br i1 %137, label %138, label %128, !llvm.loop !212

138:                                              ; preds = %128
  %139 = icmp eq i64 %121, %127
  br i1 %139, label %.loopexit, label %140

140:                                              ; preds = %138
  %141 = getelementptr i8, ptr %116, i64 %127
  %142 = getelementptr i8, ptr %117, i64 %127
  %143 = and i64 %121, 28
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %.preheader33, label %145

145:                                              ; preds = %140, %124
  %146 = phi i64 [ %127, %140 ], [ 0, %124 ]
  %147 = and i64 %121, -4
  br label %148

148:                                              ; preds = %148, %145
  %149 = phi i64 [ %146, %145 ], [ %153, %148 ]
  %150 = getelementptr i8, ptr %116, i64 %149
  %151 = getelementptr i8, ptr %117, i64 %149
  %152 = load <4 x i8>, ptr %151, align 1, !tbaa !9
  store <4 x i8> %152, ptr %150, align 1, !tbaa !9
  %153 = add nuw i64 %149, 4
  %154 = icmp eq i64 %153, %147
  br i1 %154, label %155, label %148, !llvm.loop !213

155:                                              ; preds = %148
  %156 = getelementptr i8, ptr %116, i64 %147
  %157 = getelementptr i8, ptr %117, i64 %147
  %158 = icmp eq i64 %121, %147
  br i1 %158, label %.loopexit, label %.preheader33

.preheader33:                                     ; preds = %155, %140, %115
  %.ph34 = phi ptr [ %156, %155 ], [ %141, %140 ], [ %116, %115 ]
  %.ph35 = phi ptr [ %157, %155 ], [ %142, %140 ], [ %117, %115 ]
  br label %159

159:                                              ; preds = %.preheader33, %159
  %160 = phi ptr [ %164, %159 ], [ %.ph34, %.preheader33 ]
  %161 = phi ptr [ %162, %159 ], [ %.ph35, %.preheader33 ]
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 1
  %163 = load i8, ptr %161, align 1, !tbaa !9
  %164 = getelementptr inbounds nuw i8, ptr %160, i64 1
  store i8 %163, ptr %160, align 1, !tbaa !9
  %165 = icmp ult ptr %164, %11
  br i1 %165, label %159, label %.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %159, %84, %155, %138, %80, %63, %39
  store ptr %16, ptr %4, align 8, !tbaa !38
  %166 = ptrtoint ptr %11 to i64
  %167 = ptrtoint ptr %6 to i64
  %168 = sub i64 %166, %167
  %169 = icmp ugt i64 %18, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %.loopexit
  %171 = ptrtoint ptr %7 to i64
  %172 = sub i64 %166, %171
  %173 = icmp ugt i64 %18, %172
  br i1 %173, label %188, label %174

174:                                              ; preds = %170
  %175 = ptrtoint ptr %20 to i64
  %176 = sub i64 %175, %167
  %177 = getelementptr inbounds i8, ptr %8, i64 %176
  %178 = add nsw i64 %176, %13
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %174
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %177, i64 %13, i1 false)
  br label %188

181:                                              ; preds = %174
  %182 = sub nsw i64 0, %176
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %177, i64 %182, i1 false)
  %183 = getelementptr inbounds nuw i8, ptr %11, i64 %182
  br label %184

184:                                              ; preds = %181, %.loopexit
  %185 = phi i64 [ %178, %181 ], [ %13, %.loopexit ]
  %186 = phi ptr [ %183, %181 ], [ %11, %.loopexit ]
  %187 = phi ptr [ %6, %181 ], [ %20, %.loopexit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %186, ptr noundef %2, ptr noundef %187, i64 noundef %185)
  br label %188

188:                                              ; preds = %184, %180, %170, %30, %25, %9
  %189 = phi i64 [ %14, %180 ], [ %14, %184 ], [ -70, %9 ], [ -20, %25 ], [ -70, %30 ], [ -20, %170 ]
  ret i64 %189
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #15 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca %struct.seq_t, align 8
  %9 = alloca %struct.seq_t, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.seqState_t, align 8
  %12 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  store ptr %15, ptr %10, align 8, !tbaa !38
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = icmp eq i32 %5, 0
  br i1 %24, label %1431, label %25

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %26, align 4, !tbaa !62
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %28 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %29 = load i32, ptr %27, align 4, !tbaa !30
  %30 = zext i32 %29 to i64
  store i64 %30, ptr %28, align 8, !tbaa !45
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i64 %33, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %36 = load i32, ptr %35, align 4, !tbaa !30
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i64 %37, ptr %38, align 8, !tbaa !45
  %39 = icmp eq i64 %4, 0
  br i1 %39, label %.loopexit96, label %40

40:                                               ; preds = %25
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %3, ptr %41, align 8, !tbaa !72
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %42, ptr %43, align 8, !tbaa !74
  %44 = icmp ugt i64 %4, 7
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = add nsw i64 %4, -8
  %47 = getelementptr inbounds i8, ptr %3, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %47, ptr %48, align 8, !tbaa !75
  %49 = load i64, ptr %47, align 1
  store i64 %49, ptr %11, align 8, !tbaa !76
  %50 = icmp ult i64 %49, 72057594037927936
  br i1 %50, label %.loopexit96, label %108

51:                                               ; preds = %40
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %52, align 8, !tbaa !75
  %53 = load i8, ptr %3, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  store i64 %54, ptr %11, align 8, !tbaa !76
  switch i64 %4, label %96 [
    i64 7, label %55
    i64 6, label %61
    i64 5, label %68
    i64 4, label %75
    i64 3, label %82
    i64 2, label %89
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 48
  %60 = or disjoint i64 %59, %54
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i64 [ %54, %51 ], [ %60, %55 ]
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %64 = load i8, ptr %63, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 40
  %67 = add nuw nsw i64 %66, %62
  br label %68

68:                                               ; preds = %61, %51
  %69 = phi i64 [ %54, %51 ], [ %67, %61 ]
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 32
  %74 = add nuw nsw i64 %73, %69
  br label %75

75:                                               ; preds = %68, %51
  %76 = phi i64 [ %54, %51 ], [ %74, %68 ]
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 24
  %81 = add nuw nsw i64 %80, %76
  br label %82

82:                                               ; preds = %75, %51
  %83 = phi i64 [ %54, %51 ], [ %81, %75 ]
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !9
  %86 = zext i8 %85 to i64
  %87 = shl nuw nsw i64 %86, 16
  %88 = add nuw nsw i64 %87, %83
  br label %89

89:                                               ; preds = %82, %51
  %90 = phi i64 [ %54, %51 ], [ %88, %82 ]
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = zext i8 %92 to i64
  %94 = shl nuw nsw i64 %93, 8
  %95 = add nuw nsw i64 %94, %90
  store i64 %95, ptr %11, align 8, !tbaa !76
  br label %96

96:                                               ; preds = %89, %51
  %97 = phi i64 [ %95, %89 ], [ %54, %51 ]
  %98 = getelementptr i8, ptr %3, i64 %4
  %99 = getelementptr i8, ptr %98, i64 -1
  %100 = load i8, ptr %99, align 1, !tbaa !9
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %.loopexit96, label %102

102:                                              ; preds = %96
  %103 = zext i8 %100 to i32
  %104 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %103, i1 true)
  %105 = trunc nuw nsw i64 %4 to i32
  %106 = shl nuw nsw i32 %105, 3
  %reass.sub = sub nsw i32 %104, %106
  %107 = add nsw i32 %reass.sub, 41
  br label %115

108:                                              ; preds = %45
  %109 = lshr i64 %49, 56
  %110 = trunc nuw nsw i64 %109 to i32
  %111 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %110, i1 true)
  %112 = xor i32 %111, 31
  %113 = sub nuw nsw i32 8, %112
  %114 = icmp ult i64 %4, -119
  br i1 %114, label %115, label %.loopexit96

115:                                              ; preds = %108, %102
  %116 = phi ptr [ %3, %102 ], [ %47, %108 ]
  %117 = phi i64 [ 0, %102 ], [ %46, %108 ]
  %118 = phi i32 [ %107, %102 ], [ %113, %108 ]
  %119 = phi i64 [ %97, %102 ], [ %49, %108 ]
  %120 = getelementptr inbounds i8, ptr %3, i64 %117
  %121 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %122 = load ptr, ptr %0, align 8, !tbaa !77
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 4
  %124 = load i32, ptr %123, align 4, !tbaa !63
  %125 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %126 = add i32 %124, %118
  %127 = sub i32 0, %126
  %128 = and i32 %127, 63
  %129 = zext nneg i32 %128 to i64
  %130 = lshr i64 %119, %129
  %131 = zext nneg i32 %124 to i64
  %132 = shl nsw i64 -1, %131
  %133 = xor i64 %132, -1
  %134 = and i64 %130, %133
  store i64 %134, ptr %121, align 8, !tbaa !78
  %135 = icmp ugt i32 %126, 64
  %136 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %135, label %137, label %138, !prof !52

137:                                              ; preds = %115
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75
  br label %160

138:                                              ; preds = %115
  %139 = icmp slt i64 %117, 8
  br i1 %139, label %147, label %140

140:                                              ; preds = %138
  %141 = lshr i32 %126, 3
  %142 = zext nneg i32 %141 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %120, i64 %143
  store ptr %144, ptr %136, align 8, !tbaa !75
  %145 = and i32 %126, 7
  store i32 %145, ptr %125, align 8, !tbaa !80
  %146 = load i64, ptr %144, align 1, !tbaa !45
  store i64 %146, ptr %11, align 8, !tbaa !76
  br label %160

147:                                              ; preds = %138
  %148 = icmp eq i64 %117, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %147
  %150 = lshr i32 %126, 3
  %151 = zext nneg i32 %150 to i64
  %152 = tail call i64 @llvm.smin.i64(i64 %117, i64 %151)
  %153 = trunc i64 %152 to i32
  %154 = and i64 %152, 4294967295
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %120, i64 %155
  store ptr %156, ptr %136, align 8, !tbaa !75
  %157 = shl i32 %153, 3
  %158 = sub i32 %126, %157
  store i32 %158, ptr %125, align 8, !tbaa !80
  %159 = load i64, ptr %156, align 1, !tbaa !45
  store i64 %159, ptr %11, align 8, !tbaa !76
  br label %160

160:                                              ; preds = %149, %147, %140, %137
  %161 = phi ptr [ @BIT_reloadDStream.zeroFilled, %137 ], [ %144, %140 ], [ %116, %147 ], [ %156, %149 ]
  %162 = phi ptr [ @BIT_reloadDStream.zeroFilled, %137 ], [ %144, %140 ], [ %3, %147 ], [ %156, %149 ]
  %163 = phi i32 [ %126, %137 ], [ %145, %140 ], [ %126, %147 ], [ %158, %149 ]
  %164 = phi i64 [ %119, %137 ], [ %146, %140 ], [ %119, %147 ], [ %159, %149 ]
  %165 = getelementptr inbounds nuw i8, ptr %122, i64 8
  %166 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %165, ptr %166, align 8, !tbaa !81
  %167 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !68
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 4
  %171 = load i32, ptr %170, align 4, !tbaa !63
  %172 = add i32 %171, %163
  %173 = sub i32 0, %172
  %174 = and i32 %173, 63
  %175 = zext nneg i32 %174 to i64
  %176 = lshr i64 %164, %175
  %177 = zext nneg i32 %171 to i64
  %178 = shl nsw i64 -1, %177
  %179 = xor i64 %178, -1
  %180 = and i64 %176, %179
  store i64 %180, ptr %167, align 8, !tbaa !78
  %181 = icmp ugt i32 %172, 64
  br i1 %181, label %182, label %183, !prof !52

182:                                              ; preds = %160
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75
  br label %211

183:                                              ; preds = %160
  %184 = icmp ult ptr %162, %42
  br i1 %184, label %192, label %185

185:                                              ; preds = %183
  %186 = lshr i32 %172, 3
  %187 = zext nneg i32 %186 to i64
  %188 = sub nsw i64 0, %187
  %189 = getelementptr inbounds i8, ptr %162, i64 %188
  store ptr %189, ptr %136, align 8, !tbaa !75
  %190 = and i32 %172, 7
  %191 = load i64, ptr %189, align 1, !tbaa !45
  store i64 %191, ptr %11, align 8, !tbaa !76
  br label %211

192:                                              ; preds = %183
  %193 = icmp eq ptr %162, %3
  br i1 %193, label %211, label %194

194:                                              ; preds = %192
  %195 = lshr i32 %172, 3
  %196 = zext nneg i32 %195 to i64
  %197 = sub nsw i64 0, %196
  %198 = getelementptr inbounds i8, ptr %162, i64 %197
  %199 = icmp ult ptr %198, %3
  %200 = ptrtoint ptr %162 to i64
  %201 = ptrtoint ptr %3 to i64
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = select i1 %199, i32 %203, i32 %195
  %205 = zext i32 %204 to i64
  %206 = sub nsw i64 0, %205
  %207 = getelementptr inbounds i8, ptr %162, i64 %206
  store ptr %207, ptr %136, align 8, !tbaa !75
  %208 = shl i32 %204, 3
  %209 = sub i32 %172, %208
  %210 = load i64, ptr %207, align 1, !tbaa !45
  store i64 %210, ptr %11, align 8, !tbaa !76
  br label %211

211:                                              ; preds = %194, %192, %185, %182
  %212 = phi ptr [ @BIT_reloadDStream.zeroFilled, %182 ], [ %189, %185 ], [ %161, %192 ], [ %207, %194 ]
  %213 = phi ptr [ @BIT_reloadDStream.zeroFilled, %182 ], [ %189, %185 ], [ %162, %192 ], [ %207, %194 ]
  %214 = phi i32 [ %172, %182 ], [ %190, %185 ], [ %172, %192 ], [ %209, %194 ]
  %215 = phi i64 [ %164, %182 ], [ %191, %185 ], [ %164, %192 ], [ %210, %194 ]
  %216 = getelementptr inbounds nuw i8, ptr %169, i64 8
  %217 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %216, ptr %217, align 8, !tbaa !81
  %218 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %220 = load ptr, ptr %219, align 8, !tbaa !82
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 4
  %222 = load i32, ptr %221, align 4, !tbaa !63
  %223 = add i32 %222, %214
  %224 = sub i32 0, %223
  %225 = and i32 %224, 63
  %226 = zext nneg i32 %225 to i64
  %227 = lshr i64 %215, %226
  %228 = zext nneg i32 %222 to i64
  %229 = shl nsw i64 -1, %228
  %230 = xor i64 %229, -1
  %231 = and i64 %227, %230
  store i32 %223, ptr %125, align 8, !tbaa !80
  store i64 %231, ptr %218, align 8, !tbaa !78
  %232 = icmp ugt i32 %223, 64
  br i1 %232, label %233, label %234, !prof !52

233:                                              ; preds = %211
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75
  br label %262

234:                                              ; preds = %211
  %235 = icmp ult ptr %213, %42
  br i1 %235, label %243, label %236

236:                                              ; preds = %234
  %237 = lshr i32 %223, 3
  %238 = zext nneg i32 %237 to i64
  %239 = sub nsw i64 0, %238
  %240 = getelementptr inbounds i8, ptr %213, i64 %239
  store ptr %240, ptr %136, align 8, !tbaa !75
  %241 = and i32 %223, 7
  store i32 %241, ptr %125, align 8, !tbaa !80
  %242 = load i64, ptr %240, align 1, !tbaa !45
  store i64 %242, ptr %11, align 8, !tbaa !76
  br label %262

243:                                              ; preds = %234
  %244 = icmp eq ptr %213, %3
  br i1 %244, label %262, label %245

245:                                              ; preds = %243
  %246 = lshr i32 %223, 3
  %247 = zext nneg i32 %246 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %213, i64 %248
  %250 = icmp ult ptr %249, %3
  %251 = ptrtoint ptr %213 to i64
  %252 = ptrtoint ptr %3 to i64
  %253 = sub i64 %251, %252
  %254 = trunc i64 %253 to i32
  %255 = select i1 %250, i32 %254, i32 %246
  %256 = zext i32 %255 to i64
  %257 = sub nsw i64 0, %256
  %258 = getelementptr inbounds i8, ptr %213, i64 %257
  store ptr %258, ptr %136, align 8, !tbaa !75
  %259 = shl i32 %255, 3
  %260 = sub i32 %223, %259
  store i32 %260, ptr %125, align 8, !tbaa !80
  %261 = load i64, ptr %258, align 1, !tbaa !45
  store i64 %261, ptr %11, align 8, !tbaa !76
  br label %262

262:                                              ; preds = %245, %243, %236, %233
  %263 = phi ptr [ @BIT_reloadDStream.zeroFilled, %233 ], [ %240, %236 ], [ %212, %243 ], [ %258, %245 ]
  %264 = phi i32 [ %223, %233 ], [ %241, %236 ], [ %223, %243 ], [ %260, %245 ]
  %265 = phi i64 [ %215, %233 ], [ %242, %236 ], [ %215, %243 ], [ %261, %245 ]
  %266 = getelementptr inbounds nuw i8, ptr %220, i64 8
  %267 = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %266, ptr %267, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !123
  %268 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %269 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %270 = ptrtoint ptr %19 to i64
  %271 = ptrtoint ptr %21 to i64
  %272 = add i64 %270, 16
  %273 = ptrtoint ptr %3 to i64
  br label %274

274:                                              ; preds = %684, %262
  %275 = phi ptr [ %263, %262 ], [ %508, %684 ]
  %276 = phi i32 [ %264, %262 ], [ %509, %684 ]
  %277 = phi i64 [ %265, %262 ], [ %510, %684 ]
  %278 = phi i64 [ %37, %262 ], [ %366, %684 ]
  %279 = phi i64 [ %33, %262 ], [ %364, %684 ]
  %280 = phi i64 [ %30, %262 ], [ %365, %684 ]
  %281 = phi i64 [ %231, %262 ], [ %515, %684 ]
  %282 = phi i64 [ %180, %262 ], [ %514, %684 ]
  %283 = phi i64 [ %134, %262 ], [ %513, %684 ]
  %284 = phi i32 [ %5, %262 ], [ %685, %684 ]
  %285 = phi ptr [ %1, %262 ], [ %679, %684 ]
  %286 = icmp eq i32 %284, 1
  %287 = getelementptr inbounds nuw [8 x i8], ptr %165, i64 %283
  %288 = getelementptr inbounds nuw [8 x i8], ptr %266, i64 %281
  %289 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %282
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 4
  %291 = load i32, ptr %290, align 4, !tbaa !41, !noalias !215
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw i8, ptr %287, i64 4
  %294 = load i32, ptr %293, align 4, !tbaa !41, !noalias !215
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %297 = load i32, ptr %296, align 4, !tbaa !41, !noalias !215
  %298 = getelementptr inbounds nuw i8, ptr %287, i64 2
  %299 = load i8, ptr %298, align 2, !tbaa !58, !noalias !215
  %300 = getelementptr inbounds nuw i8, ptr %288, i64 2
  %301 = load i8, ptr %300, align 2, !tbaa !58, !noalias !215
  %302 = getelementptr inbounds nuw i8, ptr %289, i64 2
  %303 = load i8, ptr %302, align 2, !tbaa !58, !noalias !215
  %304 = zext i8 %299 to i32
  %305 = zext i8 %301 to i32
  %306 = add i8 %301, %299
  %307 = add i8 %306, %303
  %308 = load i16, ptr %287, align 4, !tbaa !57, !noalias !215
  %309 = load i16, ptr %288, align 4, !tbaa !57, !noalias !215
  %310 = load i16, ptr %289, align 4, !tbaa !57, !noalias !215
  %311 = getelementptr inbounds nuw i8, ptr %287, i64 3
  %312 = load i8, ptr %311, align 1, !tbaa !56, !noalias !215
  %313 = zext i8 %312 to i32
  %314 = getelementptr inbounds nuw i8, ptr %288, i64 3
  %315 = load i8, ptr %314, align 1, !tbaa !56, !noalias !215
  %316 = zext i8 %315 to i32
  %317 = getelementptr inbounds nuw i8, ptr %289, i64 3
  %318 = load i8, ptr %317, align 1, !tbaa !56, !noalias !215
  %319 = zext i8 %318 to i32
  %320 = icmp ugt i8 %303, 1
  br i1 %320, label %321, label %333

321:                                              ; preds = %274
  %322 = zext i8 %303 to i32
  %323 = and i32 %276, 63
  %324 = zext nneg i32 %323 to i64
  %325 = shl i64 %277, %324
  %326 = sub nsw i32 0, %322
  %327 = and i32 %326, 63
  %328 = zext nneg i32 %327 to i64
  %329 = lshr i64 %325, %328
  %330 = add i32 %276, %322
  store i32 %330, ptr %125, align 8, !tbaa !80, !noalias !215
  %331 = zext i32 %297 to i64
  %332 = add i64 %329, %331
  store i64 %279, ptr %38, align 8, !tbaa !45, !noalias !215
  br label %362

333:                                              ; preds = %274
  %334 = icmp eq i32 %294, 0
  %335 = icmp eq i8 %303, 0
  br i1 %335, label %336, label %339, !prof !87

336:                                              ; preds = %333
  %337 = select i1 %334, i64 %279, i64 %280
  %338 = select i1 %334, i64 %280, i64 %279
  br label %362

339:                                              ; preds = %333
  %340 = zext i1 %334 to i32
  %341 = add i32 %297, %340
  %342 = zext i32 %341 to i64
  %343 = and i32 %276, 63
  %344 = zext nneg i32 %343 to i64
  %345 = shl i64 %277, %344
  %346 = lshr i64 %345, 63
  %347 = add i32 %276, 1
  store i32 %347, ptr %125, align 8, !tbaa !80, !noalias !215
  %348 = add nuw nsw i64 %346, %342
  %349 = icmp eq i64 %348, 3
  br i1 %349, label %350, label %354

350:                                              ; preds = %339
  %351 = add i64 %280, -1
  %352 = icmp eq i64 %351, 0
  %353 = select i1 %352, i64 -1, i64 %351
  br label %360

354:                                              ; preds = %339
  %355 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %348
  %356 = load i64, ptr %355, align 8, !tbaa !45, !noalias !215
  %357 = icmp eq i64 %356, 0
  %358 = select i1 %357, i64 -1, i64 %356
  %359 = icmp eq i64 %348, 1
  br i1 %359, label %362, label %360

360:                                              ; preds = %354, %350
  %361 = phi i64 [ %353, %350 ], [ %358, %354 ]
  store i64 %279, ptr %38, align 8, !tbaa !45, !noalias !215
  br label %362

362:                                              ; preds = %360, %354, %336, %321
  %363 = phi i32 [ %276, %336 ], [ %330, %321 ], [ %347, %360 ], [ %347, %354 ]
  %364 = phi i64 [ %338, %336 ], [ %280, %321 ], [ %280, %360 ], [ %280, %354 ]
  %365 = phi i64 [ %337, %336 ], [ %332, %321 ], [ %361, %360 ], [ %358, %354 ]
  %366 = phi i64 [ %278, %336 ], [ %279, %321 ], [ %279, %360 ], [ %278, %354 ]
  %367 = sub i64 0, %365
  store i64 %364, ptr %34, align 8, !tbaa !45, !noalias !215
  store i64 %365, ptr %28, align 8, !tbaa !45, !noalias !215
  %368 = icmp eq i8 %301, 0
  br i1 %368, label %379, label %369

369:                                              ; preds = %362
  %370 = and i32 %363, 63
  %371 = zext nneg i32 %370 to i64
  %372 = shl i64 %277, %371
  %373 = sub nsw i32 0, %305
  %374 = and i32 %373, 63
  %375 = zext nneg i32 %374 to i64
  %376 = lshr i64 %372, %375
  %377 = add i32 %363, %305
  store i32 %377, ptr %125, align 8, !tbaa !80, !noalias !215
  %378 = add i64 %376, %292
  br label %379

379:                                              ; preds = %369, %362
  %380 = phi i32 [ %363, %362 ], [ %377, %369 ]
  %381 = phi i64 [ %292, %362 ], [ %378, %369 ]
  %382 = icmp ugt i8 %307, 30
  br i1 %382, label %383, label %413, !prof !52

383:                                              ; preds = %379
  %384 = icmp ugt i32 %380, 64
  br i1 %384, label %385, label %386, !prof !52

385:                                              ; preds = %383
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75, !noalias !215
  br label %413

386:                                              ; preds = %383
  %387 = icmp ult ptr %275, %42
  br i1 %387, label %395, label %388

388:                                              ; preds = %386
  %389 = lshr i32 %380, 3
  %390 = zext nneg i32 %389 to i64
  %391 = sub nsw i64 0, %390
  %392 = getelementptr inbounds i8, ptr %275, i64 %391
  store ptr %392, ptr %136, align 8, !tbaa !75, !noalias !215
  %393 = and i32 %380, 7
  store i32 %393, ptr %125, align 8, !tbaa !80, !noalias !215
  %394 = load i64, ptr %392, align 1, !tbaa !45, !noalias !215
  store i64 %394, ptr %11, align 8, !tbaa !76, !noalias !215
  br label %413

395:                                              ; preds = %386
  %396 = icmp eq ptr %275, %3
  br i1 %396, label %413, label %397

397:                                              ; preds = %395
  %398 = lshr i32 %380, 3
  %399 = zext nneg i32 %398 to i64
  %400 = sub nsw i64 0, %399
  %401 = getelementptr inbounds i8, ptr %275, i64 %400
  %402 = icmp ult ptr %401, %3
  %403 = ptrtoint ptr %275 to i64
  %404 = sub i64 %403, %273
  %405 = trunc i64 %404 to i32
  %406 = select i1 %402, i32 %405, i32 %398
  %407 = zext i32 %406 to i64
  %408 = sub nsw i64 0, %407
  %409 = getelementptr inbounds i8, ptr %275, i64 %408
  store ptr %409, ptr %136, align 8, !tbaa !75, !noalias !215
  %410 = shl i32 %406, 3
  %411 = sub i32 %380, %410
  store i32 %411, ptr %125, align 8, !tbaa !80, !noalias !215
  %412 = load i64, ptr %409, align 1, !tbaa !45, !noalias !215
  store i64 %412, ptr %11, align 8, !tbaa !76, !noalias !215
  br label %413

413:                                              ; preds = %397, %395, %388, %385, %379
  %414 = phi ptr [ %275, %395 ], [ @BIT_reloadDStream.zeroFilled, %385 ], [ %392, %388 ], [ %409, %397 ], [ %275, %379 ]
  %415 = phi i32 [ %380, %395 ], [ %380, %385 ], [ %393, %388 ], [ %411, %397 ], [ %380, %379 ]
  %416 = phi i64 [ %277, %395 ], [ %277, %385 ], [ %394, %388 ], [ %412, %397 ], [ %277, %379 ]
  %417 = icmp eq i8 %299, 0
  br i1 %417, label %428, label %418

418:                                              ; preds = %413
  %419 = and i32 %415, 63
  %420 = zext nneg i32 %419 to i64
  %421 = shl i64 %416, %420
  %422 = sub nsw i32 0, %304
  %423 = and i32 %422, 63
  %424 = zext nneg i32 %423 to i64
  %425 = lshr i64 %421, %424
  %426 = add i32 %415, %304
  store i32 %426, ptr %125, align 8, !tbaa !80, !noalias !215
  %427 = add i64 %425, %295
  br label %428

428:                                              ; preds = %418, %413
  %429 = phi i32 [ %415, %413 ], [ %426, %418 ]
  %430 = phi i64 [ %295, %413 ], [ %427, %418 ]
  br i1 %286, label %502, label %431

431:                                              ; preds = %428
  %432 = add i32 %429, %313
  %433 = sub i32 0, %432
  %434 = and i32 %433, 63
  %435 = zext nneg i32 %434 to i64
  %436 = lshr i64 %416, %435
  %437 = zext nneg i8 %312 to i64
  %438 = shl nsw i64 -1, %437
  %439 = xor i64 %438, -1
  %440 = and i64 %436, %439
  %441 = zext i16 %308 to i64
  %442 = add nuw i64 %440, %441
  store i64 %442, ptr %121, align 8, !tbaa !78, !noalias !215
  %443 = add i32 %432, %316
  %444 = sub i32 0, %443
  %445 = and i32 %444, 63
  %446 = zext nneg i32 %445 to i64
  %447 = lshr i64 %416, %446
  %448 = zext nneg i8 %315 to i64
  %449 = shl nsw i64 -1, %448
  %450 = xor i64 %449, -1
  %451 = and i64 %447, %450
  %452 = zext i16 %309 to i64
  %453 = add nuw i64 %451, %452
  store i64 %453, ptr %218, align 8, !tbaa !78, !noalias !215
  %454 = add i32 %443, %319
  %455 = sub i32 0, %454
  %456 = and i32 %455, 63
  %457 = zext nneg i32 %456 to i64
  %458 = lshr i64 %416, %457
  %459 = zext nneg i8 %318 to i64
  %460 = shl nsw i64 -1, %459
  %461 = xor i64 %460, -1
  %462 = and i64 %458, %461
  store i32 %454, ptr %125, align 8, !tbaa !80, !noalias !215
  %463 = zext i16 %310 to i64
  %464 = add nuw i64 %462, %463
  store i64 %464, ptr %167, align 8, !tbaa !78, !noalias !215
  %465 = icmp ugt i32 %454, 64
  br i1 %465, label %466, label %467, !prof !52

466:                                              ; preds = %431
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75, !noalias !215
  br label %494

467:                                              ; preds = %431
  %468 = icmp ult ptr %414, %42
  br i1 %468, label %476, label %469

469:                                              ; preds = %467
  %470 = lshr i32 %454, 3
  %471 = zext nneg i32 %470 to i64
  %472 = sub nsw i64 0, %471
  %473 = getelementptr inbounds i8, ptr %414, i64 %472
  store ptr %473, ptr %136, align 8, !tbaa !75, !noalias !215
  %474 = and i32 %454, 7
  store i32 %474, ptr %125, align 8, !tbaa !80, !noalias !215
  %475 = load i64, ptr %473, align 1, !tbaa !45, !noalias !215
  store i64 %475, ptr %11, align 8, !tbaa !76, !noalias !215
  br label %494

476:                                              ; preds = %467
  %477 = icmp eq ptr %414, %3
  br i1 %477, label %494, label %478

478:                                              ; preds = %476
  %479 = lshr i32 %454, 3
  %480 = zext nneg i32 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, ptr %414, i64 %481
  %483 = icmp ult ptr %482, %3
  %484 = ptrtoint ptr %414 to i64
  %485 = sub i64 %484, %273
  %486 = trunc i64 %485 to i32
  %487 = select i1 %483, i32 %486, i32 %479
  %488 = zext i32 %487 to i64
  %489 = sub nsw i64 0, %488
  %490 = getelementptr inbounds i8, ptr %414, i64 %489
  store ptr %490, ptr %136, align 8, !tbaa !75, !noalias !215
  %491 = shl i32 %487, 3
  %492 = sub i32 %454, %491
  store i32 %492, ptr %125, align 8, !tbaa !80, !noalias !215
  %493 = load i64, ptr %490, align 1, !tbaa !45, !noalias !215
  store i64 %493, ptr %11, align 8, !tbaa !76, !noalias !215
  br label %494

494:                                              ; preds = %478, %476, %469, %466
  %495 = phi ptr [ %414, %476 ], [ @BIT_reloadDStream.zeroFilled, %466 ], [ %473, %469 ], [ %490, %478 ]
  %496 = phi i32 [ %454, %476 ], [ %454, %466 ], [ %474, %469 ], [ %492, %478 ]
  %497 = phi i64 [ %416, %476 ], [ %416, %466 ], [ %475, %469 ], [ %493, %478 ]
  %498 = load ptr, ptr %10, align 8, !tbaa !38
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 %430
  %500 = load ptr, ptr %16, align 8, !tbaa !34
  %501 = icmp ugt ptr %499, %500
  br i1 %501, label %687, label %507

502:                                              ; preds = %428
  %503 = load ptr, ptr %10, align 8, !tbaa !38
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 %430
  %505 = load ptr, ptr %16, align 8, !tbaa !34
  %506 = icmp ugt ptr %504, %505
  br i1 %506, label %.loopexit109, label %507

507:                                              ; preds = %502, %494
  %508 = phi ptr [ %414, %502 ], [ %495, %494 ]
  %509 = phi i32 [ %429, %502 ], [ %496, %494 ]
  %510 = phi i64 [ %416, %502 ], [ %497, %494 ]
  %511 = phi ptr [ %504, %502 ], [ %499, %494 ]
  %512 = phi ptr [ %503, %502 ], [ %498, %494 ]
  %513 = phi i64 [ %283, %502 ], [ %442, %494 ]
  %514 = phi i64 [ %282, %502 ], [ %464, %494 ]
  %515 = phi i64 [ %281, %502 ], [ %453, %494 ]
  %516 = getelementptr inbounds i8, ptr %511, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %430, ptr %7, align 8
  store i64 %381, ptr %268, align 8
  store i64 %365, ptr %269, align 8
  %517 = getelementptr i8, ptr %285, i64 %430
  %518 = add i64 %430, %381
  %519 = getelementptr inbounds i8, ptr %517, i64 %367
  %520 = icmp ugt ptr %511, %17
  %521 = getelementptr inbounds nuw i8, ptr %285, i64 %518
  %522 = icmp ugt ptr %521, %516
  %523 = select i1 %520, i1 true, i1 %522
  br i1 %523, label %527, label %524, !prof !101

524:                                              ; preds = %507
  %525 = load <2 x i64>, ptr %512, align 1, !tbaa !9
  store <2 x i64> %525, ptr %285, align 1, !tbaa !9
  %526 = icmp ugt i64 %430, 16
  br i1 %526, label %529, label %.loopexit108, !prof !52

527:                                              ; preds = %507
  %528 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %285, ptr noundef %13, ptr noundef nonnull %516, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %10, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %.loopexit105

529:                                              ; preds = %524
  %530 = getelementptr inbounds nuw i8, ptr %285, i64 16
  %531 = getelementptr inbounds nuw i8, ptr %512, i64 16
  %532 = load <2 x i64>, ptr %531, align 1, !tbaa !9
  store <2 x i64> %532, ptr %530, align 1, !tbaa !9
  %533 = icmp ult i64 %430, 33
  br i1 %533, label %.loopexit108, label %534

534:                                              ; preds = %529
  %535 = getelementptr inbounds nuw i8, ptr %285, i64 32
  br label %536

536:                                              ; preds = %536, %534
  %537 = phi ptr [ %535, %534 ], [ %544, %536 ]
  %538 = phi ptr [ %531, %534 ], [ %542, %536 ]
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 16
  %540 = load <2 x i64>, ptr %539, align 1, !tbaa !9
  store <2 x i64> %540, ptr %537, align 1, !tbaa !9
  %541 = getelementptr inbounds nuw i8, ptr %537, i64 16
  %542 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %543 = load <2 x i64>, ptr %542, align 1, !tbaa !9
  store <2 x i64> %543, ptr %541, align 1, !tbaa !9
  %544 = getelementptr inbounds nuw i8, ptr %537, i64 32
  %545 = icmp ult ptr %544, %517
  br i1 %545, label %536, label %.loopexit108, !llvm.loop !97

.loopexit108:                                     ; preds = %536, %529, %524
  store ptr %511, ptr %10, align 8, !tbaa !38
  %546 = ptrtoint ptr %517 to i64
  %547 = sub i64 %546, %270
  %548 = icmp ugt i64 %365, %547
  br i1 %548, label %549, label %563

549:                                              ; preds = %.loopexit108
  %550 = sub i64 %546, %271
  %551 = icmp ugt i64 %365, %550
  br i1 %551, label %552, label %553, !prof !52

552:                                              ; preds = %549
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit96

553:                                              ; preds = %549
  %554 = ptrtoint ptr %519 to i64
  %555 = sub i64 %554, %270
  %556 = getelementptr inbounds i8, ptr %23, i64 %555
  %557 = add nsw i64 %555, %381
  %558 = icmp sgt i64 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %553
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %517, ptr align 1 %556, i64 %381, i1 false)
  br label %.loopexit105

560:                                              ; preds = %553
  %561 = sub nsw i64 0, %555
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %517, ptr align 1 %556, i64 %561, i1 false)
  %562 = getelementptr inbounds nuw i8, ptr %517, i64 %561
  store i64 %557, ptr %268, align 8, !tbaa !127
  br label %563

563:                                              ; preds = %560, %.loopexit108
  %564 = phi ptr [ %19, %560 ], [ %519, %.loopexit108 ]
  %565 = phi ptr [ %562, %560 ], [ %517, %.loopexit108 ]
  %566 = phi i64 [ %557, %560 ], [ %381, %.loopexit108 ]
  %567 = icmp ugt i64 %365, 15
  br i1 %567, label %568, label %584, !prof !87

568:                                              ; preds = %563
  %569 = getelementptr inbounds nuw i8, ptr %565, i64 %566
  %570 = load <2 x i64>, ptr %564, align 1, !tbaa !9
  store <2 x i64> %570, ptr %565, align 1, !tbaa !9
  %571 = icmp ult i64 %566, 17
  br i1 %571, label %.loopexit105, label %572

572:                                              ; preds = %568
  %573 = getelementptr inbounds nuw i8, ptr %565, i64 16
  br label %574

574:                                              ; preds = %574, %572
  %575 = phi ptr [ %573, %572 ], [ %582, %574 ]
  %576 = phi ptr [ %564, %572 ], [ %580, %574 ]
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 16
  %578 = load <2 x i64>, ptr %577, align 1, !tbaa !9
  store <2 x i64> %578, ptr %575, align 1, !tbaa !9
  %579 = getelementptr inbounds nuw i8, ptr %575, i64 16
  %580 = getelementptr inbounds nuw i8, ptr %576, i64 32
  %581 = load <2 x i64>, ptr %580, align 1, !tbaa !9
  store <2 x i64> %581, ptr %579, align 1, !tbaa !9
  %582 = getelementptr inbounds nuw i8, ptr %575, i64 32
  %583 = icmp ult ptr %582, %569
  br i1 %583, label %574, label %.loopexit105, !llvm.loop !97

584:                                              ; preds = %563
  %585 = icmp samesign ult i64 %365, 8
  br i1 %585, label %586, label %608

586:                                              ; preds = %584
  %587 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %365
  %588 = load i32, ptr %587, align 4, !tbaa !30
  %589 = load i8, ptr %564, align 1, !tbaa !9
  store i8 %589, ptr %565, align 1, !tbaa !9
  %590 = getelementptr inbounds nuw i8, ptr %564, i64 1
  %591 = load i8, ptr %590, align 1, !tbaa !9
  %592 = getelementptr inbounds nuw i8, ptr %565, i64 1
  store i8 %591, ptr %592, align 1, !tbaa !9
  %593 = getelementptr inbounds nuw i8, ptr %564, i64 2
  %594 = load i8, ptr %593, align 1, !tbaa !9
  %595 = getelementptr inbounds nuw i8, ptr %565, i64 2
  store i8 %594, ptr %595, align 1, !tbaa !9
  %596 = getelementptr inbounds nuw i8, ptr %564, i64 3
  %597 = load i8, ptr %596, align 1, !tbaa !9
  %598 = getelementptr inbounds nuw i8, ptr %565, i64 3
  store i8 %597, ptr %598, align 1, !tbaa !9
  %599 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %365
  %600 = load i32, ptr %599, align 4, !tbaa !30
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds nuw i8, ptr %564, i64 %601
  %603 = getelementptr inbounds nuw i8, ptr %565, i64 4
  %604 = load i32, ptr %602, align 1
  store i32 %604, ptr %603, align 1
  %605 = sext i32 %588 to i64
  %606 = sub nsw i64 0, %605
  %607 = getelementptr inbounds i8, ptr %602, i64 %606
  br label %610

608:                                              ; preds = %584
  %609 = load i64, ptr %564, align 1
  store i64 %609, ptr %565, align 1
  br label %610

610:                                              ; preds = %608, %586
  %611 = phi ptr [ %607, %586 ], [ %564, %608 ]
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 8
  %613 = getelementptr inbounds nuw i8, ptr %565, i64 8
  %614 = icmp ugt i64 %566, 8
  br i1 %614, label %615, label %.loopexit105

615:                                              ; preds = %610
  %616 = ptrtoint ptr %613 to i64
  %617 = ptrtoint ptr %612 to i64
  %618 = sub i64 %616, %617
  %619 = getelementptr i8, ptr %565, i64 %566
  %620 = icmp slt i64 %618, 16
  br i1 %620, label %621, label %662

621:                                              ; preds = %615
  %622 = tail call i64 @llvm.umin.i64(i64 %365, i64 %547)
  %623 = tail call i64 @llvm.umax.i64(i64 %365, i64 %547)
  %624 = sub i64 %270, %365
  %625 = add i64 %624, %381
  %626 = add i64 %625, %622
  %627 = add i64 %626, %623
  %628 = add i64 %623, %272
  %629 = tail call i64 @llvm.umax.i64(i64 %627, i64 %628)
  %630 = add i64 %623, %270
  %reass.sub237 = sub i64 %629, %630
  %631 = add i64 %reass.sub237, -9
  %632 = lshr i64 %631, 3
  %633 = add nuw nsw i64 %632, 1
  %634 = icmp ult i64 %631, 24
  %635 = icmp ult i64 %618, 32
  %636 = or i1 %634, %635
  br i1 %636, label %.preheader762, label %637

637:                                              ; preds = %621
  %638 = and i64 %633, 4611686018427387900
  br label %639

639:                                              ; preds = %639, %637
  %640 = phi i64 [ 0, %637 ], [ %648, %639 ]
  %641 = shl i64 %640, 3
  %642 = getelementptr i8, ptr %613, i64 %641
  %643 = getelementptr i8, ptr %612, i64 %641
  %644 = getelementptr i8, ptr %643, i64 16
  %645 = load <2 x i64>, ptr %643, align 1
  %646 = load <2 x i64>, ptr %644, align 1
  %647 = getelementptr i8, ptr %642, i64 16
  store <2 x i64> %645, ptr %642, align 1
  store <2 x i64> %646, ptr %647, align 1
  %648 = add nuw i64 %640, 4
  %649 = icmp eq i64 %648, %638
  br i1 %649, label %650, label %639, !llvm.loop !218

650:                                              ; preds = %639
  %651 = shl i64 %638, 3
  %652 = getelementptr i8, ptr %613, i64 %651
  %653 = getelementptr i8, ptr %612, i64 %651
  %654 = icmp eq i64 %633, %638
  br i1 %654, label %.loopexit105, label %.preheader762

.preheader762:                                    ; preds = %650, %621
  %.ph763 = phi ptr [ %652, %650 ], [ %613, %621 ]
  %.ph764 = phi ptr [ %653, %650 ], [ %612, %621 ]
  br label %655

655:                                              ; preds = %.preheader762, %655
  %656 = phi ptr [ %659, %655 ], [ %.ph763, %.preheader762 ]
  %657 = phi ptr [ %660, %655 ], [ %.ph764, %.preheader762 ]
  %658 = load i64, ptr %657, align 1
  store i64 %658, ptr %656, align 1
  %659 = getelementptr inbounds nuw i8, ptr %656, i64 8
  %660 = getelementptr inbounds nuw i8, ptr %657, i64 8
  %661 = icmp ult ptr %659, %619
  br i1 %661, label %655, label %.loopexit105, !llvm.loop !219

662:                                              ; preds = %615
  %663 = load <2 x i64>, ptr %612, align 1, !tbaa !9
  store <2 x i64> %663, ptr %613, align 1, !tbaa !9
  %664 = icmp ult i64 %566, 25
  br i1 %664, label %.loopexit105, label %665

665:                                              ; preds = %662
  %666 = getelementptr inbounds nuw i8, ptr %565, i64 24
  br label %667

667:                                              ; preds = %667, %665
  %668 = phi ptr [ %666, %665 ], [ %675, %667 ]
  %669 = phi ptr [ %612, %665 ], [ %673, %667 ]
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 16
  %671 = load <2 x i64>, ptr %670, align 1, !tbaa !9
  store <2 x i64> %671, ptr %668, align 1, !tbaa !9
  %672 = getelementptr inbounds nuw i8, ptr %668, i64 16
  %673 = getelementptr inbounds nuw i8, ptr %669, i64 32
  %674 = load <2 x i64>, ptr %673, align 1, !tbaa !9
  store <2 x i64> %674, ptr %672, align 1, !tbaa !9
  %675 = getelementptr inbounds nuw i8, ptr %668, i64 32
  %676 = icmp ult ptr %675, %619
  br i1 %676, label %667, label %.loopexit105, !llvm.loop !97

.loopexit105:                                     ; preds = %667, %655, %574, %662, %650, %610, %568, %559, %527
  %677 = phi i64 [ %528, %527 ], [ %518, %559 ], [ %518, %610 ], [ %518, %568 ], [ %518, %662 ], [ %518, %650 ], [ %518, %574 ], [ %518, %655 ], [ %518, %667 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %678 = icmp ult i64 %677, -119
  %679 = getelementptr inbounds nuw i8, ptr %285, i64 %677
  br i1 %678, label %680, label %.loopexit96

680:                                              ; preds = %.loopexit105
  %681 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 -1)
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !86
  br i1 %682, label %683, label %684, !prof !109, !nosanitize !86

683:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !86
  unreachable, !nosanitize !86

684:                                              ; preds = %680
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !86
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %.loopexit97, label %274, !llvm.loop !130

687:                                              ; preds = %494
  %688 = icmp sgt i32 %284, 0
  br i1 %688, label %.loopexit109, label %.loopexit96

.loopexit109:                                     ; preds = %502, %687
  %689 = phi ptr [ %495, %687 ], [ %414, %502 ]
  %690 = phi i32 [ %496, %687 ], [ %429, %502 ]
  %691 = phi i64 [ %497, %687 ], [ %416, %502 ]
  %692 = phi i64 [ %453, %687 ], [ %281, %502 ]
  %693 = phi i64 [ %464, %687 ], [ %282, %502 ]
  %694 = phi i64 [ %442, %687 ], [ %283, %502 ]
  %695 = phi ptr [ %498, %687 ], [ %503, %502 ]
  %696 = phi ptr [ %500, %687 ], [ %505, %502 ]
  %697 = ptrtoint ptr %696 to i64
  %698 = ptrtoint ptr %695 to i64
  %699 = sub i64 %697, %698
  %700 = icmp eq ptr %696, %695
  br i1 %700, label %839, label %701

701:                                              ; preds = %.loopexit109
  %702 = ptrtoint ptr %13 to i64
  %703 = ptrtoint ptr %285 to i64
  %704 = sub i64 %702, %703
  %705 = icmp ugt i64 %699, %704
  br i1 %705, label %.loopexit96, label %706

706:                                              ; preds = %701
  %707 = sub i64 %703, %698
  %708 = getelementptr inbounds nuw i8, ptr %285, i64 %699
  %709 = icmp ult i64 %699, 8
  %710 = icmp sgt i64 %707, -8
  %711 = or i1 %710, %709
  br i1 %711, label %712, label %763

712:                                              ; preds = %706
  %713 = add i64 %697, %703
  %714 = sub i64 %713, %698
  %715 = add i64 %703, 1
  %716 = tail call i64 @llvm.umax.i64(i64 %714, i64 %715)
  %717 = sub i64 %716, %703
  %718 = icmp ult i64 %717, 4
  %719 = icmp ult i64 %707, 32
  %720 = or i1 %719, %718
  br i1 %720, label %.preheader755, label %721

721:                                              ; preds = %712
  %722 = icmp ult i64 %717, 32
  br i1 %722, label %742, label %723

723:                                              ; preds = %721
  %724 = and i64 %717, -32
  br label %725

725:                                              ; preds = %725, %723
  %726 = phi i64 [ 0, %723 ], [ %733, %725 ]
  %727 = getelementptr i8, ptr %285, i64 %726
  %728 = getelementptr i8, ptr %695, i64 %726
  %729 = getelementptr i8, ptr %728, i64 16
  %730 = load <16 x i8>, ptr %728, align 1, !tbaa !9
  %731 = load <16 x i8>, ptr %729, align 1, !tbaa !9
  %732 = getelementptr i8, ptr %727, i64 16
  store <16 x i8> %730, ptr %727, align 1, !tbaa !9
  store <16 x i8> %731, ptr %732, align 1, !tbaa !9
  %733 = add nuw i64 %726, 32
  %734 = icmp eq i64 %733, %724
  br i1 %734, label %735, label %725, !llvm.loop !220

735:                                              ; preds = %725
  %736 = icmp eq i64 %717, %724
  br i1 %736, label %.loopexit102, label %737

737:                                              ; preds = %735
  %738 = getelementptr i8, ptr %285, i64 %724
  %739 = getelementptr i8, ptr %695, i64 %724
  %740 = and i64 %717, 28
  %741 = icmp eq i64 %740, 0
  br i1 %741, label %.preheader755, label %742

742:                                              ; preds = %737, %721
  %743 = phi i64 [ %724, %737 ], [ 0, %721 ]
  %744 = and i64 %717, -4
  br label %745

745:                                              ; preds = %745, %742
  %746 = phi i64 [ %743, %742 ], [ %750, %745 ]
  %747 = getelementptr i8, ptr %285, i64 %746
  %748 = getelementptr i8, ptr %695, i64 %746
  %749 = load <4 x i8>, ptr %748, align 1, !tbaa !9
  store <4 x i8> %749, ptr %747, align 1, !tbaa !9
  %750 = add nuw i64 %746, 4
  %751 = icmp eq i64 %750, %744
  br i1 %751, label %752, label %745, !llvm.loop !221

752:                                              ; preds = %745
  %753 = getelementptr i8, ptr %285, i64 %744
  %754 = getelementptr i8, ptr %695, i64 %744
  %755 = icmp eq i64 %717, %744
  br i1 %755, label %.loopexit102, label %.preheader755

.preheader755:                                    ; preds = %752, %737, %712
  %.ph756 = phi ptr [ %753, %752 ], [ %738, %737 ], [ %285, %712 ]
  %.ph757 = phi ptr [ %754, %752 ], [ %739, %737 ], [ %695, %712 ]
  br label %756

756:                                              ; preds = %.preheader755, %756
  %757 = phi ptr [ %761, %756 ], [ %.ph756, %.preheader755 ]
  %758 = phi ptr [ %759, %756 ], [ %.ph757, %.preheader755 ]
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 1
  %760 = load i8, ptr %758, align 1, !tbaa !9
  %761 = getelementptr inbounds nuw i8, ptr %757, i64 1
  store i8 %760, ptr %757, align 1, !tbaa !9
  %762 = icmp ult ptr %761, %708
  br i1 %762, label %756, label %.loopexit102, !llvm.loop !222

763:                                              ; preds = %706
  %764 = icmp sgt i64 %699, 31
  %765 = icmp samesign ult i64 %707, -16
  %766 = and i1 %765, %764
  br i1 %766, label %767, label %787

767:                                              ; preds = %763
  %768 = getelementptr inbounds i8, ptr %708, i64 -32
  %769 = add nsw i64 %699, -32
  %770 = getelementptr inbounds nuw i8, ptr %285, i64 %769
  %771 = load <2 x i64>, ptr %695, align 1, !tbaa !9
  store <2 x i64> %771, ptr %285, align 1, !tbaa !9
  %772 = icmp samesign ult i64 %699, 49
  br i1 %772, label %.loopexit104, label %773

773:                                              ; preds = %767
  %774 = getelementptr inbounds nuw i8, ptr %285, i64 16
  br label %775

775:                                              ; preds = %775, %773
  %776 = phi ptr [ %774, %773 ], [ %783, %775 ]
  %777 = phi ptr [ %695, %773 ], [ %781, %775 ]
  %778 = getelementptr inbounds nuw i8, ptr %777, i64 16
  %779 = load <2 x i64>, ptr %778, align 1, !tbaa !9
  store <2 x i64> %779, ptr %776, align 1, !tbaa !9
  %780 = getelementptr inbounds nuw i8, ptr %776, i64 16
  %781 = getelementptr inbounds nuw i8, ptr %777, i64 32
  %782 = load <2 x i64>, ptr %781, align 1, !tbaa !9
  store <2 x i64> %782, ptr %780, align 1, !tbaa !9
  %783 = getelementptr inbounds nuw i8, ptr %776, i64 32
  %784 = icmp ult ptr %783, %770
  br i1 %784, label %775, label %.loopexit104, !llvm.loop !97

.loopexit104:                                     ; preds = %775, %767
  %785 = getelementptr inbounds nuw i8, ptr %695, i64 %769
  %.pre = ptrtoint ptr %768 to i64
  %.pre375 = ptrtoint ptr %785 to i64
  %.pre377 = sub i64 %.pre, %.pre375
  %786 = icmp ult i64 %.pre377, 32
  br label %787

787:                                              ; preds = %.loopexit104, %763
  %.pre-phi378 = phi i1 [ %786, %.loopexit104 ], [ false, %763 ]
  %.pre-phi = phi i64 [ %.pre, %.loopexit104 ], [ %703, %763 ]
  %788 = phi ptr [ %768, %.loopexit104 ], [ %285, %763 ]
  %789 = phi ptr [ %785, %.loopexit104 ], [ %695, %763 ]
  %790 = add i64 %707, %697
  %791 = add nuw i64 %.pre-phi, 1
  %792 = tail call i64 @llvm.umax.i64(i64 %790, i64 %791)
  %793 = sub i64 %792, %.pre-phi
  %794 = icmp ult i64 %793, 4
  %795 = select i1 %794, i1 true, i1 %.pre-phi378
  br i1 %795, label %.preheader758, label %796

796:                                              ; preds = %787
  %797 = icmp ult i64 %793, 32
  br i1 %797, label %817, label %798

798:                                              ; preds = %796
  %799 = and i64 %793, -32
  br label %800

800:                                              ; preds = %800, %798
  %801 = phi i64 [ 0, %798 ], [ %808, %800 ]
  %802 = getelementptr i8, ptr %788, i64 %801
  %803 = getelementptr i8, ptr %789, i64 %801
  %804 = getelementptr i8, ptr %803, i64 16
  %805 = load <16 x i8>, ptr %803, align 1, !tbaa !9
  %806 = load <16 x i8>, ptr %804, align 1, !tbaa !9
  %807 = getelementptr i8, ptr %802, i64 16
  store <16 x i8> %805, ptr %802, align 1, !tbaa !9
  store <16 x i8> %806, ptr %807, align 1, !tbaa !9
  %808 = add nuw i64 %801, 32
  %809 = icmp eq i64 %808, %799
  br i1 %809, label %810, label %800, !llvm.loop !223

810:                                              ; preds = %800
  %811 = icmp eq i64 %793, %799
  br i1 %811, label %.loopexit102, label %812

812:                                              ; preds = %810
  %813 = getelementptr i8, ptr %788, i64 %799
  %814 = getelementptr i8, ptr %789, i64 %799
  %815 = and i64 %793, 28
  %816 = icmp eq i64 %815, 0
  br i1 %816, label %.preheader758, label %817

817:                                              ; preds = %812, %796
  %818 = phi i64 [ %799, %812 ], [ 0, %796 ]
  %819 = and i64 %793, -4
  br label %820

820:                                              ; preds = %820, %817
  %821 = phi i64 [ %818, %817 ], [ %825, %820 ]
  %822 = getelementptr i8, ptr %788, i64 %821
  %823 = getelementptr i8, ptr %789, i64 %821
  %824 = load <4 x i8>, ptr %823, align 1, !tbaa !9
  store <4 x i8> %824, ptr %822, align 1, !tbaa !9
  %825 = add nuw i64 %821, 4
  %826 = icmp eq i64 %825, %819
  br i1 %826, label %827, label %820, !llvm.loop !224

827:                                              ; preds = %820
  %828 = getelementptr i8, ptr %788, i64 %819
  %829 = getelementptr i8, ptr %789, i64 %819
  %830 = icmp eq i64 %793, %819
  br i1 %830, label %.loopexit102, label %.preheader758

.preheader758:                                    ; preds = %827, %812, %787
  %.ph759 = phi ptr [ %828, %827 ], [ %813, %812 ], [ %788, %787 ]
  %.ph760 = phi ptr [ %829, %827 ], [ %814, %812 ], [ %789, %787 ]
  br label %831

831:                                              ; preds = %.preheader758, %831
  %832 = phi ptr [ %836, %831 ], [ %.ph759, %.preheader758 ]
  %833 = phi ptr [ %834, %831 ], [ %.ph760, %.preheader758 ]
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 1
  %835 = load i8, ptr %833, align 1, !tbaa !9
  %836 = getelementptr inbounds nuw i8, ptr %832, i64 1
  store i8 %835, ptr %832, align 1, !tbaa !9
  %837 = icmp ult ptr %836, %708
  br i1 %837, label %831, label %.loopexit102, !llvm.loop !225

.loopexit102:                                     ; preds = %831, %756, %827, %810, %752, %735
  %838 = sub i64 %430, %699
  br label %839

839:                                              ; preds = %.loopexit102, %.loopexit109
  %840 = phi i64 [ %430, %.loopexit109 ], [ %838, %.loopexit102 ]
  %841 = phi ptr [ %285, %.loopexit109 ], [ %708, %.loopexit102 ]
  %842 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  store ptr %842, ptr %10, align 8, !tbaa !38
  %843 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %844 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %844, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %840, ptr %8, align 8
  %845 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %381, ptr %845, align 8
  %846 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %365, ptr %846, align 8
  %847 = getelementptr i8, ptr %841, i64 %840
  %848 = add i64 %840, %381
  %849 = getelementptr inbounds nuw i8, ptr %0, i64 %840
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 30372
  %851 = getelementptr inbounds i8, ptr %847, i64 %367
  %852 = icmp sgt i64 %840, 65536
  %853 = getelementptr inbounds i8, ptr %13, i64 -32
  %854 = getelementptr inbounds nuw i8, ptr %841, i64 %848
  %855 = icmp ugt ptr %854, %853
  %856 = select i1 %852, i1 true, i1 %855
  br i1 %856, label %860, label %857, !prof !101

857:                                              ; preds = %839
  %858 = load <2 x i64>, ptr %842, align 1, !tbaa !9
  store <2 x i64> %858, ptr %841, align 1, !tbaa !9
  %859 = icmp ugt i64 %840, 16
  br i1 %859, label %862, label %.loopexit101, !prof !52

860:                                              ; preds = %839
  %861 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %841, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %843, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %.loopexit98

862:                                              ; preds = %857
  %863 = getelementptr inbounds nuw i8, ptr %841, i64 16
  %864 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %865 = add i64 %840, -16
  %866 = load <2 x i64>, ptr %864, align 1, !tbaa !9
  store <2 x i64> %866, ptr %863, align 1, !tbaa !9
  %867 = icmp ult i64 %865, 17
  br i1 %867, label %.loopexit101, label %868

868:                                              ; preds = %862
  %869 = getelementptr inbounds nuw i8, ptr %841, i64 32
  br label %870

870:                                              ; preds = %870, %868
  %871 = phi ptr [ %869, %868 ], [ %878, %870 ]
  %872 = phi ptr [ %864, %868 ], [ %876, %870 ]
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 16
  %874 = load <2 x i64>, ptr %873, align 1, !tbaa !9
  store <2 x i64> %874, ptr %871, align 1, !tbaa !9
  %875 = getelementptr inbounds nuw i8, ptr %871, i64 16
  %876 = getelementptr inbounds nuw i8, ptr %872, i64 32
  %877 = load <2 x i64>, ptr %876, align 1, !tbaa !9
  store <2 x i64> %877, ptr %875, align 1, !tbaa !9
  %878 = getelementptr inbounds nuw i8, ptr %871, i64 32
  %879 = icmp ult ptr %878, %847
  br i1 %879, label %870, label %.loopexit101, !llvm.loop !97

.loopexit101:                                     ; preds = %870, %862, %857
  store ptr %850, ptr %10, align 8, !tbaa !38
  %880 = ptrtoint ptr %847 to i64
  %881 = sub i64 %880, %270
  %882 = icmp ugt i64 %365, %881
  br i1 %882, label %883, label %897

883:                                              ; preds = %.loopexit101
  %884 = sub i64 %880, %271
  %885 = icmp ugt i64 %365, %884
  br i1 %885, label %886, label %887, !prof !52

886:                                              ; preds = %883
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit96

887:                                              ; preds = %883
  %888 = ptrtoint ptr %851 to i64
  %889 = sub i64 %888, %270
  %890 = getelementptr inbounds i8, ptr %23, i64 %889
  %891 = add nsw i64 %889, %381
  %892 = icmp sgt i64 %891, 0
  br i1 %892, label %894, label %893

893:                                              ; preds = %887
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %847, ptr align 1 %890, i64 %381, i1 false)
  br label %.loopexit98

894:                                              ; preds = %887
  %895 = sub nsw i64 0, %889
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %847, ptr align 1 %890, i64 %895, i1 false)
  %896 = getelementptr inbounds nuw i8, ptr %847, i64 %895
  store i64 %891, ptr %845, align 8, !tbaa !127
  br label %897

897:                                              ; preds = %894, %.loopexit101
  %898 = phi ptr [ %896, %894 ], [ %847, %.loopexit101 ]
  %899 = phi ptr [ %19, %894 ], [ %851, %.loopexit101 ]
  %900 = phi i64 [ %891, %894 ], [ %381, %.loopexit101 ]
  %901 = icmp ugt i64 %365, 15
  br i1 %901, label %902, label %918, !prof !87

902:                                              ; preds = %897
  %903 = getelementptr inbounds nuw i8, ptr %898, i64 %900
  %904 = load <2 x i64>, ptr %899, align 1, !tbaa !9
  store <2 x i64> %904, ptr %898, align 1, !tbaa !9
  %905 = icmp ult i64 %900, 17
  br i1 %905, label %.loopexit98, label %906

906:                                              ; preds = %902
  %907 = getelementptr inbounds nuw i8, ptr %898, i64 16
  br label %908

908:                                              ; preds = %908, %906
  %909 = phi ptr [ %907, %906 ], [ %916, %908 ]
  %910 = phi ptr [ %899, %906 ], [ %914, %908 ]
  %911 = getelementptr inbounds nuw i8, ptr %910, i64 16
  %912 = load <2 x i64>, ptr %911, align 1, !tbaa !9
  store <2 x i64> %912, ptr %909, align 1, !tbaa !9
  %913 = getelementptr inbounds nuw i8, ptr %909, i64 16
  %914 = getelementptr inbounds nuw i8, ptr %910, i64 32
  %915 = load <2 x i64>, ptr %914, align 1, !tbaa !9
  store <2 x i64> %915, ptr %913, align 1, !tbaa !9
  %916 = getelementptr inbounds nuw i8, ptr %909, i64 32
  %917 = icmp ult ptr %916, %903
  br i1 %917, label %908, label %.loopexit98, !llvm.loop !97

918:                                              ; preds = %897
  %919 = icmp samesign ult i64 %365, 8
  br i1 %919, label %920, label %942

920:                                              ; preds = %918
  %921 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %365
  %922 = load i32, ptr %921, align 4, !tbaa !30
  %923 = load i8, ptr %899, align 1, !tbaa !9
  store i8 %923, ptr %898, align 1, !tbaa !9
  %924 = getelementptr inbounds nuw i8, ptr %899, i64 1
  %925 = load i8, ptr %924, align 1, !tbaa !9
  %926 = getelementptr inbounds nuw i8, ptr %898, i64 1
  store i8 %925, ptr %926, align 1, !tbaa !9
  %927 = getelementptr inbounds nuw i8, ptr %899, i64 2
  %928 = load i8, ptr %927, align 1, !tbaa !9
  %929 = getelementptr inbounds nuw i8, ptr %898, i64 2
  store i8 %928, ptr %929, align 1, !tbaa !9
  %930 = getelementptr inbounds nuw i8, ptr %899, i64 3
  %931 = load i8, ptr %930, align 1, !tbaa !9
  %932 = getelementptr inbounds nuw i8, ptr %898, i64 3
  store i8 %931, ptr %932, align 1, !tbaa !9
  %933 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %365
  %934 = load i32, ptr %933, align 4, !tbaa !30
  %935 = zext i32 %934 to i64
  %936 = getelementptr inbounds nuw i8, ptr %899, i64 %935
  %937 = getelementptr inbounds nuw i8, ptr %898, i64 4
  %938 = load i32, ptr %936, align 1
  store i32 %938, ptr %937, align 1
  %939 = sext i32 %922 to i64
  %940 = sub nsw i64 0, %939
  %941 = getelementptr inbounds i8, ptr %936, i64 %940
  br label %944

942:                                              ; preds = %918
  %943 = load i64, ptr %899, align 1
  store i64 %943, ptr %898, align 1
  br label %944

944:                                              ; preds = %942, %920
  %945 = phi ptr [ %941, %920 ], [ %899, %942 ]
  %946 = getelementptr inbounds nuw i8, ptr %945, i64 8
  %947 = getelementptr inbounds nuw i8, ptr %898, i64 8
  %948 = icmp ugt i64 %900, 8
  br i1 %948, label %949, label %.loopexit98

949:                                              ; preds = %944
  %950 = ptrtoint ptr %947 to i64
  %951 = ptrtoint ptr %946 to i64
  %952 = sub i64 %950, %951
  %953 = getelementptr i8, ptr %898, i64 %900
  %954 = icmp slt i64 %952, 16
  br i1 %954, label %955, label %996

955:                                              ; preds = %949
  %956 = tail call i64 @llvm.umin.i64(i64 %365, i64 %881)
  %957 = tail call i64 @llvm.umax.i64(i64 %365, i64 %881)
  %958 = sub i64 %270, %365
  %959 = add i64 %958, %381
  %960 = add i64 %959, %956
  %961 = add i64 %960, %957
  %962 = add i64 %957, %270
  %963 = add i64 %962, 16
  %964 = tail call i64 @llvm.umax.i64(i64 %961, i64 %963)
  %reass.sub238 = sub i64 %964, %962
  %965 = add i64 %reass.sub238, -9
  %966 = lshr i64 %965, 3
  %967 = add nuw nsw i64 %966, 1
  %968 = icmp ult i64 %965, 24
  %969 = icmp ult i64 %952, 32
  %970 = or i1 %968, %969
  br i1 %970, label %.preheader750, label %971

971:                                              ; preds = %955
  %972 = and i64 %967, 4611686018427387900
  br label %973

973:                                              ; preds = %973, %971
  %974 = phi i64 [ 0, %971 ], [ %982, %973 ]
  %975 = shl i64 %974, 3
  %976 = getelementptr i8, ptr %947, i64 %975
  %977 = getelementptr i8, ptr %946, i64 %975
  %978 = getelementptr i8, ptr %977, i64 16
  %979 = load <2 x i64>, ptr %977, align 1
  %980 = load <2 x i64>, ptr %978, align 1
  %981 = getelementptr i8, ptr %976, i64 16
  store <2 x i64> %979, ptr %976, align 1
  store <2 x i64> %980, ptr %981, align 1
  %982 = add nuw i64 %974, 4
  %983 = icmp eq i64 %982, %972
  br i1 %983, label %984, label %973, !llvm.loop !226

984:                                              ; preds = %973
  %985 = shl i64 %972, 3
  %986 = getelementptr i8, ptr %947, i64 %985
  %987 = getelementptr i8, ptr %946, i64 %985
  %988 = icmp eq i64 %967, %972
  br i1 %988, label %.loopexit98, label %.preheader750

.preheader750:                                    ; preds = %984, %955
  %.ph751 = phi ptr [ %986, %984 ], [ %947, %955 ]
  %.ph752 = phi ptr [ %987, %984 ], [ %946, %955 ]
  br label %989

989:                                              ; preds = %.preheader750, %989
  %990 = phi ptr [ %993, %989 ], [ %.ph751, %.preheader750 ]
  %991 = phi ptr [ %994, %989 ], [ %.ph752, %.preheader750 ]
  %992 = load i64, ptr %991, align 1
  store i64 %992, ptr %990, align 1
  %993 = getelementptr inbounds nuw i8, ptr %990, i64 8
  %994 = getelementptr inbounds nuw i8, ptr %991, i64 8
  %995 = icmp ult ptr %993, %953
  br i1 %995, label %989, label %.loopexit98, !llvm.loop !227

996:                                              ; preds = %949
  %997 = load <2 x i64>, ptr %946, align 1, !tbaa !9
  store <2 x i64> %997, ptr %947, align 1, !tbaa !9
  %998 = icmp ult i64 %900, 25
  br i1 %998, label %.loopexit98, label %999

999:                                              ; preds = %996
  %1000 = getelementptr inbounds nuw i8, ptr %898, i64 24
  br label %1001

1001:                                             ; preds = %1001, %999
  %1002 = phi ptr [ %1000, %999 ], [ %1009, %1001 ]
  %1003 = phi ptr [ %946, %999 ], [ %1007, %1001 ]
  %1004 = getelementptr inbounds nuw i8, ptr %1003, i64 16
  %1005 = load <2 x i64>, ptr %1004, align 1, !tbaa !9
  store <2 x i64> %1005, ptr %1002, align 1, !tbaa !9
  %1006 = getelementptr inbounds nuw i8, ptr %1002, i64 16
  %1007 = getelementptr inbounds nuw i8, ptr %1003, i64 32
  %1008 = load <2 x i64>, ptr %1007, align 1, !tbaa !9
  store <2 x i64> %1008, ptr %1006, align 1, !tbaa !9
  %1009 = getelementptr inbounds nuw i8, ptr %1002, i64 32
  %1010 = icmp ult ptr %1009, %953
  br i1 %1010, label %1001, label %.loopexit98, !llvm.loop !97

.loopexit98:                                      ; preds = %1001, %989, %908, %996, %984, %944, %902, %893, %860
  %1011 = phi i64 [ %861, %860 ], [ %848, %893 ], [ %848, %944 ], [ %848, %902 ], [ %848, %996 ], [ %848, %984 ], [ %848, %908 ], [ %848, %989 ], [ %848, %1001 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1012 = icmp ult i64 %1011, -119
  %1013 = getelementptr inbounds nuw i8, ptr %841, i64 %1011
  %1014 = add nsw i32 %284, -1
  br i1 %1012, label %1015, label %.loopexit96

1015:                                             ; preds = %.loopexit98
  %1016 = icmp eq i32 %1014, 0
  br i1 %1016, label %.loopexit97, label %1017

1017:                                             ; preds = %1015
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !139
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !140
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !142
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !143
  %1018 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1019 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %1020

1020:                                             ; preds = %1411, %1017
  %1021 = phi ptr [ %689, %1017 ], [ %1241, %1411 ]
  %1022 = phi i32 [ %690, %1017 ], [ %1242, %1411 ]
  %1023 = phi i64 [ %691, %1017 ], [ %1243, %1411 ]
  %1024 = phi i64 [ %366, %1017 ], [ %1112, %1411 ]
  %1025 = phi i64 [ %364, %1017 ], [ %1110, %1411 ]
  %1026 = phi i64 [ %365, %1017 ], [ %1111, %1411 ]
  %1027 = phi i64 [ %692, %1017 ], [ %1244, %1411 ]
  %1028 = phi i64 [ %693, %1017 ], [ %1245, %1411 ]
  %1029 = phi i64 [ %694, %1017 ], [ %1246, %1411 ]
  %1030 = phi i32 [ %1014, %1017 ], [ %1413, %1411 ]
  %1031 = phi ptr [ %1013, %1017 ], [ %1412, %1411 ]
  %1032 = icmp eq i32 %1030, 1
  %1033 = getelementptr inbounds nuw [8 x i8], ptr %165, i64 %1029
  %1034 = getelementptr inbounds nuw [8 x i8], ptr %266, i64 %1027
  %1035 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %1028
  %1036 = getelementptr inbounds nuw i8, ptr %1034, i64 4
  %1037 = load i32, ptr %1036, align 4, !tbaa !41, !noalias !228
  %1038 = zext i32 %1037 to i64
  %1039 = getelementptr inbounds nuw i8, ptr %1033, i64 4
  %1040 = load i32, ptr %1039, align 4, !tbaa !41, !noalias !228
  %1041 = zext i32 %1040 to i64
  %1042 = getelementptr inbounds nuw i8, ptr %1035, i64 4
  %1043 = load i32, ptr %1042, align 4, !tbaa !41, !noalias !228
  %1044 = getelementptr inbounds nuw i8, ptr %1033, i64 2
  %1045 = load i8, ptr %1044, align 2, !tbaa !58, !noalias !228
  %1046 = getelementptr inbounds nuw i8, ptr %1034, i64 2
  %1047 = load i8, ptr %1046, align 2, !tbaa !58, !noalias !228
  %1048 = getelementptr inbounds nuw i8, ptr %1035, i64 2
  %1049 = load i8, ptr %1048, align 2, !tbaa !58, !noalias !228
  %1050 = zext i8 %1045 to i32
  %1051 = zext i8 %1047 to i32
  %1052 = add i8 %1047, %1045
  %1053 = add i8 %1052, %1049
  %1054 = load i16, ptr %1033, align 4, !tbaa !57, !noalias !228
  %1055 = load i16, ptr %1034, align 4, !tbaa !57, !noalias !228
  %1056 = load i16, ptr %1035, align 4, !tbaa !57, !noalias !228
  %1057 = getelementptr inbounds nuw i8, ptr %1033, i64 3
  %1058 = load i8, ptr %1057, align 1, !tbaa !56, !noalias !228
  %1059 = zext i8 %1058 to i32
  %1060 = getelementptr inbounds nuw i8, ptr %1034, i64 3
  %1061 = load i8, ptr %1060, align 1, !tbaa !56, !noalias !228
  %1062 = zext i8 %1061 to i32
  %1063 = getelementptr inbounds nuw i8, ptr %1035, i64 3
  %1064 = load i8, ptr %1063, align 1, !tbaa !56, !noalias !228
  %1065 = zext i8 %1064 to i32
  %1066 = icmp ugt i8 %1049, 1
  br i1 %1066, label %1067, label %1079

1067:                                             ; preds = %1020
  %1068 = zext i8 %1049 to i32
  %1069 = and i32 %1022, 63
  %1070 = zext nneg i32 %1069 to i64
  %1071 = shl i64 %1023, %1070
  %1072 = sub nsw i32 0, %1068
  %1073 = and i32 %1072, 63
  %1074 = zext nneg i32 %1073 to i64
  %1075 = lshr i64 %1071, %1074
  %1076 = add i32 %1022, %1068
  store i32 %1076, ptr %125, align 8, !tbaa !80, !noalias !228
  %1077 = zext i32 %1043 to i64
  %1078 = add i64 %1075, %1077
  store i64 %1025, ptr %38, align 8, !tbaa !45, !noalias !228
  br label %1108

1079:                                             ; preds = %1020
  %1080 = icmp eq i32 %1040, 0
  %1081 = icmp eq i8 %1049, 0
  br i1 %1081, label %1082, label %1085, !prof !87

1082:                                             ; preds = %1079
  %1083 = select i1 %1080, i64 %1025, i64 %1026
  %1084 = select i1 %1080, i64 %1026, i64 %1025
  br label %1108

1085:                                             ; preds = %1079
  %1086 = zext i1 %1080 to i32
  %1087 = add i32 %1043, %1086
  %1088 = zext i32 %1087 to i64
  %1089 = and i32 %1022, 63
  %1090 = zext nneg i32 %1089 to i64
  %1091 = shl i64 %1023, %1090
  %1092 = lshr i64 %1091, 63
  %1093 = add i32 %1022, 1
  store i32 %1093, ptr %125, align 8, !tbaa !80, !noalias !228
  %1094 = add nuw nsw i64 %1092, %1088
  %1095 = icmp eq i64 %1094, 3
  br i1 %1095, label %1096, label %1100

1096:                                             ; preds = %1085
  %1097 = add i64 %1026, -1
  %1098 = icmp eq i64 %1097, 0
  %1099 = select i1 %1098, i64 -1, i64 %1097
  br label %1106

1100:                                             ; preds = %1085
  %1101 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %1094
  %1102 = load i64, ptr %1101, align 8, !tbaa !45, !noalias !228
  %1103 = icmp eq i64 %1102, 0
  %1104 = select i1 %1103, i64 -1, i64 %1102
  %1105 = icmp eq i64 %1094, 1
  br i1 %1105, label %1108, label %1106

1106:                                             ; preds = %1100, %1096
  %1107 = phi i64 [ %1099, %1096 ], [ %1104, %1100 ]
  store i64 %1025, ptr %38, align 8, !tbaa !45, !noalias !228
  br label %1108

1108:                                             ; preds = %1106, %1100, %1082, %1067
  %1109 = phi i32 [ %1022, %1082 ], [ %1076, %1067 ], [ %1093, %1106 ], [ %1093, %1100 ]
  %1110 = phi i64 [ %1084, %1082 ], [ %1026, %1067 ], [ %1026, %1106 ], [ %1026, %1100 ]
  %1111 = phi i64 [ %1083, %1082 ], [ %1078, %1067 ], [ %1107, %1106 ], [ %1104, %1100 ]
  %1112 = phi i64 [ %1024, %1082 ], [ %1025, %1067 ], [ %1025, %1106 ], [ %1024, %1100 ]
  %1113 = sub i64 0, %1111
  store i64 %1110, ptr %34, align 8, !tbaa !45, !noalias !228
  store i64 %1111, ptr %28, align 8, !tbaa !45, !noalias !228
  %1114 = icmp eq i8 %1047, 0
  br i1 %1114, label %1125, label %1115

1115:                                             ; preds = %1108
  %1116 = and i32 %1109, 63
  %1117 = zext nneg i32 %1116 to i64
  %1118 = shl i64 %1023, %1117
  %1119 = sub nsw i32 0, %1051
  %1120 = and i32 %1119, 63
  %1121 = zext nneg i32 %1120 to i64
  %1122 = lshr i64 %1118, %1121
  %1123 = add i32 %1109, %1051
  store i32 %1123, ptr %125, align 8, !tbaa !80, !noalias !228
  %1124 = add i64 %1122, %1038
  br label %1125

1125:                                             ; preds = %1115, %1108
  %1126 = phi i32 [ %1109, %1108 ], [ %1123, %1115 ]
  %1127 = phi i64 [ %1038, %1108 ], [ %1124, %1115 ]
  %1128 = icmp ugt i8 %1053, 30
  br i1 %1128, label %1129, label %1159, !prof !52

1129:                                             ; preds = %1125
  %1130 = icmp ugt i32 %1126, 64
  br i1 %1130, label %1131, label %1132, !prof !52

1131:                                             ; preds = %1129
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75, !noalias !228
  br label %1159

1132:                                             ; preds = %1129
  %1133 = icmp ult ptr %1021, %42
  br i1 %1133, label %1141, label %1134

1134:                                             ; preds = %1132
  %1135 = lshr i32 %1126, 3
  %1136 = zext nneg i32 %1135 to i64
  %1137 = sub nsw i64 0, %1136
  %1138 = getelementptr inbounds i8, ptr %1021, i64 %1137
  store ptr %1138, ptr %136, align 8, !tbaa !75, !noalias !228
  %1139 = and i32 %1126, 7
  store i32 %1139, ptr %125, align 8, !tbaa !80, !noalias !228
  %1140 = load i64, ptr %1138, align 1, !tbaa !45, !noalias !228
  store i64 %1140, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1159

1141:                                             ; preds = %1132
  %1142 = icmp eq ptr %1021, %3
  br i1 %1142, label %1159, label %1143

1143:                                             ; preds = %1141
  %1144 = lshr i32 %1126, 3
  %1145 = zext nneg i32 %1144 to i64
  %1146 = sub nsw i64 0, %1145
  %1147 = getelementptr inbounds i8, ptr %1021, i64 %1146
  %1148 = icmp ult ptr %1147, %3
  %1149 = ptrtoint ptr %1021 to i64
  %1150 = sub i64 %1149, %273
  %1151 = trunc i64 %1150 to i32
  %1152 = select i1 %1148, i32 %1151, i32 %1144
  %1153 = zext i32 %1152 to i64
  %1154 = sub nsw i64 0, %1153
  %1155 = getelementptr inbounds i8, ptr %1021, i64 %1154
  store ptr %1155, ptr %136, align 8, !tbaa !75, !noalias !228
  %1156 = shl i32 %1152, 3
  %1157 = sub i32 %1126, %1156
  store i32 %1157, ptr %125, align 8, !tbaa !80, !noalias !228
  %1158 = load i64, ptr %1155, align 1, !tbaa !45, !noalias !228
  store i64 %1158, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1159

1159:                                             ; preds = %1143, %1141, %1134, %1131, %1125
  %1160 = phi ptr [ %1021, %1141 ], [ @BIT_reloadDStream.zeroFilled, %1131 ], [ %1138, %1134 ], [ %1155, %1143 ], [ %1021, %1125 ]
  %1161 = phi i32 [ %1126, %1141 ], [ %1126, %1131 ], [ %1139, %1134 ], [ %1157, %1143 ], [ %1126, %1125 ]
  %1162 = phi i64 [ %1023, %1141 ], [ %1023, %1131 ], [ %1140, %1134 ], [ %1158, %1143 ], [ %1023, %1125 ]
  %1163 = icmp eq i8 %1045, 0
  br i1 %1163, label %1174, label %1164

1164:                                             ; preds = %1159
  %1165 = and i32 %1161, 63
  %1166 = zext nneg i32 %1165 to i64
  %1167 = shl i64 %1162, %1166
  %1168 = sub nsw i32 0, %1050
  %1169 = and i32 %1168, 63
  %1170 = zext nneg i32 %1169 to i64
  %1171 = lshr i64 %1167, %1170
  %1172 = add i32 %1161, %1050
  store i32 %1172, ptr %125, align 8, !tbaa !80, !noalias !228
  %1173 = add i64 %1171, %1041
  br label %1174

1174:                                             ; preds = %1164, %1159
  %1175 = phi i32 [ %1161, %1159 ], [ %1172, %1164 ]
  %1176 = phi i64 [ %1041, %1159 ], [ %1173, %1164 ]
  br i1 %1032, label %1240, label %1177

1177:                                             ; preds = %1174
  %1178 = add i32 %1175, %1059
  %1179 = sub i32 0, %1178
  %1180 = and i32 %1179, 63
  %1181 = zext nneg i32 %1180 to i64
  %1182 = lshr i64 %1162, %1181
  %1183 = zext nneg i8 %1058 to i64
  %1184 = shl nsw i64 -1, %1183
  %1185 = xor i64 %1184, -1
  %1186 = and i64 %1182, %1185
  %1187 = zext i16 %1054 to i64
  %1188 = add nuw i64 %1186, %1187
  store i64 %1188, ptr %121, align 8, !tbaa !78, !noalias !228
  %1189 = add i32 %1178, %1062
  %1190 = sub i32 0, %1189
  %1191 = and i32 %1190, 63
  %1192 = zext nneg i32 %1191 to i64
  %1193 = lshr i64 %1162, %1192
  %1194 = zext nneg i8 %1061 to i64
  %1195 = shl nsw i64 -1, %1194
  %1196 = xor i64 %1195, -1
  %1197 = and i64 %1193, %1196
  %1198 = zext i16 %1055 to i64
  %1199 = add nuw i64 %1197, %1198
  store i64 %1199, ptr %218, align 8, !tbaa !78, !noalias !228
  %1200 = add i32 %1189, %1065
  %1201 = sub i32 0, %1200
  %1202 = and i32 %1201, 63
  %1203 = zext nneg i32 %1202 to i64
  %1204 = lshr i64 %1162, %1203
  %1205 = zext nneg i8 %1064 to i64
  %1206 = shl nsw i64 -1, %1205
  %1207 = xor i64 %1206, -1
  %1208 = and i64 %1204, %1207
  store i32 %1200, ptr %125, align 8, !tbaa !80, !noalias !228
  %1209 = zext i16 %1056 to i64
  %1210 = add nuw i64 %1208, %1209
  store i64 %1210, ptr %167, align 8, !tbaa !78, !noalias !228
  %1211 = icmp ugt i32 %1200, 64
  br i1 %1211, label %1212, label %1213, !prof !52

1212:                                             ; preds = %1177
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75, !noalias !228
  br label %1240

1213:                                             ; preds = %1177
  %1214 = icmp ult ptr %1160, %42
  br i1 %1214, label %1222, label %1215

1215:                                             ; preds = %1213
  %1216 = lshr i32 %1200, 3
  %1217 = zext nneg i32 %1216 to i64
  %1218 = sub nsw i64 0, %1217
  %1219 = getelementptr inbounds i8, ptr %1160, i64 %1218
  store ptr %1219, ptr %136, align 8, !tbaa !75, !noalias !228
  %1220 = and i32 %1200, 7
  store i32 %1220, ptr %125, align 8, !tbaa !80, !noalias !228
  %1221 = load i64, ptr %1219, align 1, !tbaa !45, !noalias !228
  store i64 %1221, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1240

1222:                                             ; preds = %1213
  %1223 = icmp eq ptr %1160, %3
  br i1 %1223, label %1240, label %1224

1224:                                             ; preds = %1222
  %1225 = lshr i32 %1200, 3
  %1226 = zext nneg i32 %1225 to i64
  %1227 = sub nsw i64 0, %1226
  %1228 = getelementptr inbounds i8, ptr %1160, i64 %1227
  %1229 = icmp ult ptr %1228, %3
  %1230 = ptrtoint ptr %1160 to i64
  %1231 = sub i64 %1230, %273
  %1232 = trunc i64 %1231 to i32
  %1233 = select i1 %1229, i32 %1232, i32 %1225
  %1234 = zext i32 %1233 to i64
  %1235 = sub nsw i64 0, %1234
  %1236 = getelementptr inbounds i8, ptr %1160, i64 %1235
  store ptr %1236, ptr %136, align 8, !tbaa !75, !noalias !228
  %1237 = shl i32 %1233, 3
  %1238 = sub i32 %1200, %1237
  store i32 %1238, ptr %125, align 8, !tbaa !80, !noalias !228
  %1239 = load i64, ptr %1236, align 1, !tbaa !45, !noalias !228
  store i64 %1239, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1240

1240:                                             ; preds = %1224, %1222, %1215, %1212, %1174
  %1241 = phi ptr [ %1160, %1222 ], [ @BIT_reloadDStream.zeroFilled, %1212 ], [ %1219, %1215 ], [ %1236, %1224 ], [ %1160, %1174 ]
  %1242 = phi i32 [ %1200, %1222 ], [ %1200, %1212 ], [ %1220, %1215 ], [ %1238, %1224 ], [ %1175, %1174 ]
  %1243 = phi i64 [ %1162, %1222 ], [ %1162, %1212 ], [ %1221, %1215 ], [ %1239, %1224 ], [ %1162, %1174 ]
  %1244 = phi i64 [ %1199, %1222 ], [ %1199, %1212 ], [ %1199, %1215 ], [ %1199, %1224 ], [ %1027, %1174 ]
  %1245 = phi i64 [ %1210, %1222 ], [ %1210, %1212 ], [ %1210, %1215 ], [ %1210, %1224 ], [ %1028, %1174 ]
  %1246 = phi i64 [ %1188, %1222 ], [ %1188, %1212 ], [ %1188, %1215 ], [ %1188, %1224 ], [ %1029, %1174 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %1176, ptr %9, align 8
  store i64 %1127, ptr %1018, align 8
  store i64 %1111, ptr %1019, align 8
  %1247 = getelementptr i8, ptr %1031, i64 %1176
  %1248 = add i64 %1176, %1127
  %1249 = load ptr, ptr %10, align 8, !tbaa !38
  %1250 = getelementptr inbounds nuw i8, ptr %1249, i64 %1176
  %1251 = getelementptr inbounds i8, ptr %1247, i64 %1113
  %1252 = icmp ugt ptr %1250, %843
  %1253 = getelementptr inbounds nuw i8, ptr %1031, i64 %1248
  %1254 = icmp ugt ptr %1253, %853
  %1255 = select i1 %1252, i1 true, i1 %1254
  br i1 %1255, label %1259, label %1256, !prof !101

1256:                                             ; preds = %1240
  %1257 = load <2 x i64>, ptr %1249, align 1, !tbaa !9
  store <2 x i64> %1257, ptr %1031, align 1, !tbaa !9
  %1258 = icmp ugt i64 %1176, 16
  br i1 %1258, label %1261, label %.loopexit95, !prof !52

1259:                                             ; preds = %1240
  %1260 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1031, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %843, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %.loopexit

1261:                                             ; preds = %1256
  %1262 = getelementptr inbounds nuw i8, ptr %1031, i64 16
  %1263 = getelementptr inbounds nuw i8, ptr %1249, i64 16
  %1264 = load <2 x i64>, ptr %1263, align 1, !tbaa !9
  store <2 x i64> %1264, ptr %1262, align 1, !tbaa !9
  %1265 = icmp ult i64 %1176, 33
  br i1 %1265, label %.loopexit95, label %1266

1266:                                             ; preds = %1261
  %1267 = getelementptr inbounds nuw i8, ptr %1031, i64 32
  br label %1268

1268:                                             ; preds = %1268, %1266
  %1269 = phi ptr [ %1267, %1266 ], [ %1276, %1268 ]
  %1270 = phi ptr [ %1263, %1266 ], [ %1274, %1268 ]
  %1271 = getelementptr inbounds nuw i8, ptr %1270, i64 16
  %1272 = load <2 x i64>, ptr %1271, align 1, !tbaa !9
  store <2 x i64> %1272, ptr %1269, align 1, !tbaa !9
  %1273 = getelementptr inbounds nuw i8, ptr %1269, i64 16
  %1274 = getelementptr inbounds nuw i8, ptr %1270, i64 32
  %1275 = load <2 x i64>, ptr %1274, align 1, !tbaa !9
  store <2 x i64> %1275, ptr %1273, align 1, !tbaa !9
  %1276 = getelementptr inbounds nuw i8, ptr %1269, i64 32
  %1277 = icmp ult ptr %1276, %1247
  br i1 %1277, label %1268, label %.loopexit95, !llvm.loop !97

.loopexit95:                                      ; preds = %1268, %1261, %1256
  store ptr %1250, ptr %10, align 8, !tbaa !38
  %1278 = ptrtoint ptr %1247 to i64
  %1279 = sub i64 %1278, %270
  %1280 = icmp ugt i64 %1111, %1279
  br i1 %1280, label %1281, label %1295

1281:                                             ; preds = %.loopexit95
  %1282 = sub i64 %1278, %271
  %1283 = icmp ugt i64 %1111, %1282
  br i1 %1283, label %1284, label %1285, !prof !52

1284:                                             ; preds = %1281
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit96

1285:                                             ; preds = %1281
  %1286 = ptrtoint ptr %1251 to i64
  %1287 = sub i64 %1286, %270
  %1288 = getelementptr inbounds i8, ptr %23, i64 %1287
  %1289 = add nsw i64 %1287, %1127
  %1290 = icmp sgt i64 %1289, 0
  br i1 %1290, label %1292, label %1291

1291:                                             ; preds = %1285
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1247, ptr align 1 %1288, i64 %1127, i1 false)
  br label %.loopexit

1292:                                             ; preds = %1285
  %1293 = sub nsw i64 0, %1287
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1247, ptr align 1 %1288, i64 %1293, i1 false)
  %1294 = getelementptr inbounds nuw i8, ptr %1247, i64 %1293
  store i64 %1289, ptr %1018, align 8, !tbaa !127
  br label %1295

1295:                                             ; preds = %1292, %.loopexit95
  %1296 = phi ptr [ %1294, %1292 ], [ %1247, %.loopexit95 ]
  %1297 = phi ptr [ %19, %1292 ], [ %1251, %.loopexit95 ]
  %1298 = phi i64 [ %1289, %1292 ], [ %1127, %.loopexit95 ]
  %1299 = icmp ugt i64 %1111, 15
  br i1 %1299, label %1300, label %1316, !prof !87

1300:                                             ; preds = %1295
  %1301 = getelementptr inbounds nuw i8, ptr %1296, i64 %1298
  %1302 = load <2 x i64>, ptr %1297, align 1, !tbaa !9
  store <2 x i64> %1302, ptr %1296, align 1, !tbaa !9
  %1303 = icmp ult i64 %1298, 17
  br i1 %1303, label %.loopexit, label %1304

1304:                                             ; preds = %1300
  %1305 = getelementptr inbounds nuw i8, ptr %1296, i64 16
  br label %1306

1306:                                             ; preds = %1306, %1304
  %1307 = phi ptr [ %1305, %1304 ], [ %1314, %1306 ]
  %1308 = phi ptr [ %1297, %1304 ], [ %1312, %1306 ]
  %1309 = getelementptr inbounds nuw i8, ptr %1308, i64 16
  %1310 = load <2 x i64>, ptr %1309, align 1, !tbaa !9
  store <2 x i64> %1310, ptr %1307, align 1, !tbaa !9
  %1311 = getelementptr inbounds nuw i8, ptr %1307, i64 16
  %1312 = getelementptr inbounds nuw i8, ptr %1308, i64 32
  %1313 = load <2 x i64>, ptr %1312, align 1, !tbaa !9
  store <2 x i64> %1313, ptr %1311, align 1, !tbaa !9
  %1314 = getelementptr inbounds nuw i8, ptr %1307, i64 32
  %1315 = icmp ult ptr %1314, %1301
  br i1 %1315, label %1306, label %.loopexit, !llvm.loop !97

1316:                                             ; preds = %1295
  %1317 = icmp samesign ult i64 %1111, 8
  br i1 %1317, label %1318, label %1340

1318:                                             ; preds = %1316
  %1319 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1111
  %1320 = load i32, ptr %1319, align 4, !tbaa !30
  %1321 = load i8, ptr %1297, align 1, !tbaa !9
  store i8 %1321, ptr %1296, align 1, !tbaa !9
  %1322 = getelementptr inbounds nuw i8, ptr %1297, i64 1
  %1323 = load i8, ptr %1322, align 1, !tbaa !9
  %1324 = getelementptr inbounds nuw i8, ptr %1296, i64 1
  store i8 %1323, ptr %1324, align 1, !tbaa !9
  %1325 = getelementptr inbounds nuw i8, ptr %1297, i64 2
  %1326 = load i8, ptr %1325, align 1, !tbaa !9
  %1327 = getelementptr inbounds nuw i8, ptr %1296, i64 2
  store i8 %1326, ptr %1327, align 1, !tbaa !9
  %1328 = getelementptr inbounds nuw i8, ptr %1297, i64 3
  %1329 = load i8, ptr %1328, align 1, !tbaa !9
  %1330 = getelementptr inbounds nuw i8, ptr %1296, i64 3
  store i8 %1329, ptr %1330, align 1, !tbaa !9
  %1331 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1111
  %1332 = load i32, ptr %1331, align 4, !tbaa !30
  %1333 = zext i32 %1332 to i64
  %1334 = getelementptr inbounds nuw i8, ptr %1297, i64 %1333
  %1335 = getelementptr inbounds nuw i8, ptr %1296, i64 4
  %1336 = load i32, ptr %1334, align 1
  store i32 %1336, ptr %1335, align 1
  %1337 = sext i32 %1320 to i64
  %1338 = sub nsw i64 0, %1337
  %1339 = getelementptr inbounds i8, ptr %1334, i64 %1338
  br label %1342

1340:                                             ; preds = %1316
  %1341 = load i64, ptr %1297, align 1
  store i64 %1341, ptr %1296, align 1
  br label %1342

1342:                                             ; preds = %1340, %1318
  %1343 = phi ptr [ %1339, %1318 ], [ %1297, %1340 ]
  %1344 = getelementptr inbounds nuw i8, ptr %1343, i64 8
  %1345 = getelementptr inbounds nuw i8, ptr %1296, i64 8
  %1346 = icmp ugt i64 %1298, 8
  br i1 %1346, label %1347, label %.loopexit

1347:                                             ; preds = %1342
  %1348 = ptrtoint ptr %1345 to i64
  %1349 = ptrtoint ptr %1344 to i64
  %1350 = sub i64 %1348, %1349
  %1351 = getelementptr i8, ptr %1296, i64 %1298
  %1352 = icmp slt i64 %1350, 16
  br i1 %1352, label %1353, label %1394

1353:                                             ; preds = %1347
  %1354 = tail call i64 @llvm.umin.i64(i64 %1111, i64 %1279)
  %1355 = tail call i64 @llvm.umax.i64(i64 %1111, i64 %1279)
  %1356 = sub i64 %270, %1111
  %1357 = add i64 %1356, %1127
  %1358 = add i64 %1357, %1354
  %1359 = add i64 %1358, %1355
  %1360 = add i64 %1355, %272
  %1361 = tail call i64 @llvm.umax.i64(i64 %1359, i64 %1360)
  %1362 = add i64 %1355, %270
  %reass.sub239 = sub i64 %1361, %1362
  %1363 = add i64 %reass.sub239, -9
  %1364 = lshr i64 %1363, 3
  %1365 = add nuw nsw i64 %1364, 1
  %1366 = icmp ult i64 %1363, 24
  %1367 = icmp ult i64 %1350, 32
  %1368 = or i1 %1366, %1367
  br i1 %1368, label %.preheader, label %1369

1369:                                             ; preds = %1353
  %1370 = and i64 %1365, 4611686018427387900
  br label %1371

1371:                                             ; preds = %1371, %1369
  %1372 = phi i64 [ 0, %1369 ], [ %1380, %1371 ]
  %1373 = shl i64 %1372, 3
  %1374 = getelementptr i8, ptr %1345, i64 %1373
  %1375 = getelementptr i8, ptr %1344, i64 %1373
  %1376 = getelementptr i8, ptr %1375, i64 16
  %1377 = load <2 x i64>, ptr %1375, align 1
  %1378 = load <2 x i64>, ptr %1376, align 1
  %1379 = getelementptr i8, ptr %1374, i64 16
  store <2 x i64> %1377, ptr %1374, align 1
  store <2 x i64> %1378, ptr %1379, align 1
  %1380 = add nuw i64 %1372, 4
  %1381 = icmp eq i64 %1380, %1370
  br i1 %1381, label %1382, label %1371, !llvm.loop !231

1382:                                             ; preds = %1371
  %1383 = shl i64 %1370, 3
  %1384 = getelementptr i8, ptr %1345, i64 %1383
  %1385 = getelementptr i8, ptr %1344, i64 %1383
  %1386 = icmp eq i64 %1365, %1370
  br i1 %1386, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1382, %1353
  %.ph = phi ptr [ %1384, %1382 ], [ %1345, %1353 ]
  %.ph730 = phi ptr [ %1385, %1382 ], [ %1344, %1353 ]
  br label %1387

1387:                                             ; preds = %.preheader, %1387
  %1388 = phi ptr [ %1391, %1387 ], [ %.ph, %.preheader ]
  %1389 = phi ptr [ %1392, %1387 ], [ %.ph730, %.preheader ]
  %1390 = load i64, ptr %1389, align 1
  store i64 %1390, ptr %1388, align 1
  %1391 = getelementptr inbounds nuw i8, ptr %1388, i64 8
  %1392 = getelementptr inbounds nuw i8, ptr %1389, i64 8
  %1393 = icmp ult ptr %1391, %1351
  br i1 %1393, label %1387, label %.loopexit, !llvm.loop !232

1394:                                             ; preds = %1347
  %1395 = load <2 x i64>, ptr %1344, align 1, !tbaa !9
  store <2 x i64> %1395, ptr %1345, align 1, !tbaa !9
  %1396 = icmp ult i64 %1298, 25
  br i1 %1396, label %.loopexit, label %1397

1397:                                             ; preds = %1394
  %1398 = getelementptr inbounds nuw i8, ptr %1296, i64 24
  br label %1399

1399:                                             ; preds = %1399, %1397
  %1400 = phi ptr [ %1398, %1397 ], [ %1407, %1399 ]
  %1401 = phi ptr [ %1344, %1397 ], [ %1405, %1399 ]
  %1402 = getelementptr inbounds nuw i8, ptr %1401, i64 16
  %1403 = load <2 x i64>, ptr %1402, align 1, !tbaa !9
  store <2 x i64> %1403, ptr %1400, align 1, !tbaa !9
  %1404 = getelementptr inbounds nuw i8, ptr %1400, i64 16
  %1405 = getelementptr inbounds nuw i8, ptr %1401, i64 32
  %1406 = load <2 x i64>, ptr %1405, align 1, !tbaa !9
  store <2 x i64> %1406, ptr %1404, align 1, !tbaa !9
  %1407 = getelementptr inbounds nuw i8, ptr %1400, i64 32
  %1408 = icmp ult ptr %1407, %1351
  br i1 %1408, label %1399, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %1399, %1387, %1306, %1394, %1382, %1342, %1300, %1291, %1259
  %1409 = phi i64 [ %1260, %1259 ], [ %1248, %1291 ], [ %1248, %1342 ], [ %1248, %1300 ], [ %1248, %1394 ], [ %1248, %1382 ], [ %1248, %1306 ], [ %1248, %1387 ], [ %1248, %1399 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1410 = icmp ult i64 %1409, -119
  br i1 %1410, label %1411, label %.loopexit96

1411:                                             ; preds = %.loopexit
  %1412 = getelementptr inbounds nuw i8, ptr %1031, i64 %1409
  %1413 = add nsw i32 %1030, -1
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %.loopexit97, label %1020, !llvm.loop !149

.loopexit97:                                      ; preds = %684, %1411, %1015
  %1415 = phi ptr [ %689, %1015 ], [ %1241, %1411 ], [ %508, %684 ]
  %1416 = phi i32 [ %690, %1015 ], [ %1242, %1411 ], [ %509, %684 ]
  %1417 = phi i64 [ %366, %1015 ], [ %1112, %1411 ], [ %366, %684 ]
  %1418 = phi i64 [ %364, %1015 ], [ %1110, %1411 ], [ %364, %684 ]
  %1419 = phi i64 [ %365, %1015 ], [ %1111, %1411 ], [ %365, %684 ]
  %1420 = phi ptr [ %1013, %1015 ], [ %1412, %1411 ], [ %679, %684 ]
  %1421 = phi ptr [ %843, %1015 ], [ %843, %1411 ], [ %17, %684 ]
  %1422 = icmp eq ptr %1415, %3
  %1423 = icmp eq i32 %1416, 64
  %1424 = select i1 %1422, i1 %1423, i1 false
  br i1 %1424, label %1425, label %.loopexit96

1425:                                             ; preds = %.loopexit97
  %1426 = trunc i64 %1419 to i32
  store i32 %1426, ptr %27, align 4, !tbaa !30
  %1427 = trunc i64 %1418 to i32
  store i32 %1427, ptr %31, align 4, !tbaa !30
  %1428 = trunc i64 %1417 to i32
  store i32 %1428, ptr %35, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %1429 = load ptr, ptr %10, align 8, !tbaa !38
  br label %1431

.loopexit96:                                      ; preds = %.loopexit105, %.loopexit, %.loopexit97, %1284, %.loopexit98, %886, %701, %687, %552, %108, %96, %45, %25
  %1430 = phi i64 [ -20, %687 ], [ -20, %1284 ], [ -20, %108 ], [ %1011, %.loopexit98 ], [ -70, %701 ], [ -20, %552 ], [ -20, %.loopexit97 ], [ -20, %886 ], [ -20, %25 ], [ -20, %45 ], [ -20, %96 ], [ %1409, %.loopexit ], [ %677, %.loopexit105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %1476

1431:                                             ; preds = %1425, %6
  %1432 = phi ptr [ %1429, %1425 ], [ %15, %6 ]
  %1433 = phi ptr [ %1421, %1425 ], [ %17, %6 ]
  %1434 = phi ptr [ %1420, %1425 ], [ %1, %6 ]
  %1435 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %1436 = load i32, ptr %1435, align 8, !tbaa !35
  %1437 = icmp eq i32 %1436, 2
  br i1 %1437, label %1440, label %1438

1438:                                             ; preds = %1431
  %1439 = ptrtoint ptr %13 to i64
  br label %1456

1440:                                             ; preds = %1431
  %1441 = ptrtoint ptr %1433 to i64
  %1442 = ptrtoint ptr %1432 to i64
  %1443 = sub i64 %1441, %1442
  %1444 = ptrtoint ptr %13 to i64
  %1445 = ptrtoint ptr %1434 to i64
  %1446 = sub i64 %1444, %1445
  %1447 = icmp ugt i64 %1443, %1446
  br i1 %1447, label %1476, label %1448

1448:                                             ; preds = %1440
  %1449 = icmp eq ptr %1434, null
  br i1 %1449, label %1452, label %1450

1450:                                             ; preds = %1448
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1434, ptr align 1 %1432, i64 %1443, i1 false)
  %1451 = getelementptr inbounds nuw i8, ptr %1434, i64 %1443
  br label %1452

1452:                                             ; preds = %1450, %1448
  %1453 = phi ptr [ %1451, %1450 ], [ null, %1448 ]
  %1454 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %1455 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %1435, align 8, !tbaa !35
  br label %1456

1456:                                             ; preds = %1452, %1438
  %1457 = phi i64 [ %1439, %1438 ], [ %1444, %1452 ]
  %1458 = phi ptr [ %1432, %1438 ], [ %1454, %1452 ]
  %1459 = phi ptr [ %1433, %1438 ], [ %1455, %1452 ]
  %1460 = phi ptr [ %1434, %1438 ], [ %1453, %1452 ]
  %1461 = ptrtoint ptr %1459 to i64
  %1462 = ptrtoint ptr %1458 to i64
  %1463 = sub i64 %1461, %1462
  %1464 = ptrtoint ptr %1460 to i64
  %1465 = sub i64 %1457, %1464
  %1466 = icmp ugt i64 %1463, %1465
  br i1 %1466, label %1476, label %1467

1467:                                             ; preds = %1456
  %1468 = icmp eq ptr %1460, null
  br i1 %1468, label %1472, label %1469

1469:                                             ; preds = %1467
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1460, ptr align 1 %1458, i64 %1463, i1 false)
  %1470 = getelementptr inbounds nuw i8, ptr %1460, i64 %1463
  %1471 = ptrtoint ptr %1470 to i64
  br label %1472

1472:                                             ; preds = %1469, %1467
  %1473 = phi i64 [ 0, %1467 ], [ %1471, %1469 ]
  %1474 = ptrtoint ptr %1 to i64
  %1475 = sub i64 %1473, %1474
  br label %1476

1476:                                             ; preds = %1472, %1456, %1440, %.loopexit96
  %1477 = phi i64 [ %1475, %1472 ], [ %1430, %.loopexit96 ], [ -70, %1456 ], [ -70, %1440 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret i64 %1477
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences_bmi2(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #15 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %11 = load i32, ptr %10, align 8, !tbaa !35
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 %14
  br label %19

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %18, %16 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  store ptr %22, ptr %8, align 8, !tbaa !38
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  %24 = load i64, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %692, label %33

33:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %34, align 4, !tbaa !62
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %37 = load i32, ptr %35, align 4, !tbaa !30
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %36, align 8, !tbaa !45
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %40 = load i32, ptr %39, align 4, !tbaa !30
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %41, ptr %42, align 8, !tbaa !45
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %44 = load i32, ptr %43, align 4, !tbaa !30
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %45, ptr %46, align 8, !tbaa !45
  %47 = icmp eq i64 %4, 0
  br i1 %47, label %.loopexit45, label %48

48:                                               ; preds = %33
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %49, align 8, !tbaa !72
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %50, ptr %51, align 8, !tbaa !74
  %52 = icmp ugt i64 %4, 7
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = add nsw i64 %4, -8
  %55 = getelementptr inbounds i8, ptr %3, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %55, ptr %56, align 8, !tbaa !75
  %57 = load i64, ptr %55, align 1
  store i64 %57, ptr %9, align 8, !tbaa !76
  %58 = icmp ult i64 %57, 72057594037927936
  br i1 %58, label %.loopexit45, label %116

59:                                               ; preds = %48
  %60 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %60, align 8, !tbaa !75
  %61 = load i8, ptr %3, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  store i64 %62, ptr %9, align 8, !tbaa !76
  switch i64 %4, label %104 [
    i64 7, label %63
    i64 6, label %69
    i64 5, label %76
    i64 4, label %83
    i64 3, label %90
    i64 2, label %97
  ]

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 48
  %68 = or disjoint i64 %67, %62
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i64 [ %62, %59 ], [ %68, %63 ]
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %72 = load i8, ptr %71, align 1, !tbaa !9
  %73 = zext i8 %72 to i64
  %74 = shl nuw nsw i64 %73, 40
  %75 = add nuw nsw i64 %74, %70
  br label %76

76:                                               ; preds = %69, %59
  %77 = phi i64 [ %62, %59 ], [ %75, %69 ]
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %79 = load i8, ptr %78, align 1, !tbaa !9
  %80 = zext i8 %79 to i64
  %81 = shl nuw nsw i64 %80, 32
  %82 = add nuw nsw i64 %81, %77
  br label %83

83:                                               ; preds = %76, %59
  %84 = phi i64 [ %62, %59 ], [ %82, %76 ]
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 24
  %89 = add nuw nsw i64 %88, %84
  br label %90

90:                                               ; preds = %83, %59
  %91 = phi i64 [ %62, %59 ], [ %89, %83 ]
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %93 = load i8, ptr %92, align 1, !tbaa !9
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = add nuw nsw i64 %95, %91
  br label %97

97:                                               ; preds = %90, %59
  %98 = phi i64 [ %62, %59 ], [ %96, %90 ]
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !9
  %101 = zext i8 %100 to i64
  %102 = shl nuw nsw i64 %101, 8
  %103 = add nuw nsw i64 %102, %98
  store i64 %103, ptr %9, align 8, !tbaa !76
  br label %104

104:                                              ; preds = %97, %59
  %105 = phi i64 [ %103, %97 ], [ %62, %59 ]
  %106 = getelementptr i8, ptr %3, i64 %4
  %107 = getelementptr i8, ptr %106, i64 -1
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %.loopexit45, label %110

110:                                              ; preds = %104
  %111 = zext i8 %108 to i32
  %112 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %111, i1 true)
  %113 = trunc nuw nsw i64 %4 to i32
  %114 = shl nuw nsw i32 %113, 3
  %reass.sub = sub nsw i32 %112, %114
  %115 = add nsw i32 %reass.sub, 41
  br label %123

116:                                              ; preds = %53
  %117 = lshr i64 %57, 56
  %118 = trunc nuw nsw i64 %117 to i32
  %119 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %118, i1 true)
  %120 = xor i32 %119, 31
  %121 = sub nuw nsw i32 8, %120
  %122 = icmp ult i64 %4, -119
  br i1 %122, label %123, label %.loopexit45

123:                                              ; preds = %116, %110
  %124 = phi ptr [ %3, %110 ], [ %55, %116 ]
  %125 = phi i64 [ 0, %110 ], [ %54, %116 ]
  %126 = phi i32 [ %115, %110 ], [ %121, %116 ]
  %127 = phi i64 [ %105, %110 ], [ %57, %116 ]
  %128 = getelementptr inbounds i8, ptr %3, i64 %125
  %129 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %130 = load ptr, ptr %0, align 8, !tbaa !77
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %132 = load i32, ptr %131, align 4, !tbaa !63
  %133 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %134 = add i32 %132, %126
  %135 = sub i32 0, %134
  %136 = and i32 %135, 63
  %137 = zext nneg i32 %136 to i64
  %138 = lshr i64 %127, %137
  %139 = zext nneg i32 %132 to i64
  %140 = shl nsw i64 -1, %139
  %141 = xor i64 %140, -1
  %142 = and i64 %138, %141
  store i64 %142, ptr %129, align 8, !tbaa !78
  %143 = icmp ugt i32 %134, 64
  %144 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %143, label %145, label %146, !prof !52

145:                                              ; preds = %123
  store ptr @BIT_reloadDStream.zeroFilled, ptr %144, align 8, !tbaa !75
  br label %168

146:                                              ; preds = %123
  %147 = icmp slt i64 %125, 8
  br i1 %147, label %155, label %148

148:                                              ; preds = %146
  %149 = lshr i32 %134, 3
  %150 = zext nneg i32 %149 to i64
  %151 = sub nsw i64 0, %150
  %152 = getelementptr inbounds i8, ptr %128, i64 %151
  store ptr %152, ptr %144, align 8, !tbaa !75
  %153 = and i32 %134, 7
  store i32 %153, ptr %133, align 8, !tbaa !80
  %154 = load i64, ptr %152, align 1, !tbaa !45
  store i64 %154, ptr %9, align 8, !tbaa !76
  br label %168

155:                                              ; preds = %146
  %156 = icmp eq i64 %125, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %155
  %158 = lshr i32 %134, 3
  %159 = zext nneg i32 %158 to i64
  %160 = tail call i64 @llvm.smin.i64(i64 %125, i64 %159)
  %161 = trunc i64 %160 to i32
  %162 = and i64 %160, 4294967295
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %128, i64 %163
  store ptr %164, ptr %144, align 8, !tbaa !75
  %165 = shl i32 %161, 3
  %166 = sub i32 %134, %165
  store i32 %166, ptr %133, align 8, !tbaa !80
  %167 = load i64, ptr %164, align 1, !tbaa !45
  store i64 %167, ptr %9, align 8, !tbaa !76
  br label %168

168:                                              ; preds = %157, %155, %148, %145
  %169 = phi ptr [ @BIT_reloadDStream.zeroFilled, %145 ], [ %152, %148 ], [ %124, %155 ], [ %164, %157 ]
  %170 = phi ptr [ @BIT_reloadDStream.zeroFilled, %145 ], [ %152, %148 ], [ %3, %155 ], [ %164, %157 ]
  %171 = phi i32 [ %134, %145 ], [ %153, %148 ], [ %134, %155 ], [ %166, %157 ]
  %172 = phi i64 [ %127, %145 ], [ %154, %148 ], [ %127, %155 ], [ %167, %157 ]
  %173 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %174 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %173, ptr %174, align 8, !tbaa !81
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %177 = load ptr, ptr %176, align 8, !tbaa !68
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %179 = load i32, ptr %178, align 4, !tbaa !63
  %180 = add i32 %179, %171
  %181 = sub i32 0, %180
  %182 = and i32 %181, 63
  %183 = zext nneg i32 %182 to i64
  %184 = lshr i64 %172, %183
  %185 = zext nneg i32 %179 to i64
  %186 = shl nsw i64 -1, %185
  %187 = xor i64 %186, -1
  %188 = and i64 %184, %187
  store i64 %188, ptr %175, align 8, !tbaa !78
  %189 = icmp ugt i32 %180, 64
  br i1 %189, label %190, label %191, !prof !52

190:                                              ; preds = %168
  store ptr @BIT_reloadDStream.zeroFilled, ptr %144, align 8, !tbaa !75
  br label %219

191:                                              ; preds = %168
  %192 = icmp ult ptr %170, %50
  br i1 %192, label %200, label %193

193:                                              ; preds = %191
  %194 = lshr i32 %180, 3
  %195 = zext nneg i32 %194 to i64
  %196 = sub nsw i64 0, %195
  %197 = getelementptr inbounds i8, ptr %170, i64 %196
  store ptr %197, ptr %144, align 8, !tbaa !75
  %198 = and i32 %180, 7
  %199 = load i64, ptr %197, align 1, !tbaa !45
  store i64 %199, ptr %9, align 8, !tbaa !76
  br label %219

200:                                              ; preds = %191
  %201 = icmp eq ptr %170, %3
  br i1 %201, label %219, label %202

202:                                              ; preds = %200
  %203 = lshr i32 %180, 3
  %204 = zext nneg i32 %203 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds i8, ptr %170, i64 %205
  %207 = icmp ult ptr %206, %3
  %208 = ptrtoint ptr %170 to i64
  %209 = ptrtoint ptr %3 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = select i1 %207, i32 %211, i32 %203
  %213 = zext i32 %212 to i64
  %214 = sub nsw i64 0, %213
  %215 = getelementptr inbounds i8, ptr %170, i64 %214
  store ptr %215, ptr %144, align 8, !tbaa !75
  %216 = shl i32 %212, 3
  %217 = sub i32 %180, %216
  %218 = load i64, ptr %215, align 1, !tbaa !45
  store i64 %218, ptr %9, align 8, !tbaa !76
  br label %219

219:                                              ; preds = %202, %200, %193, %190
  %220 = phi ptr [ @BIT_reloadDStream.zeroFilled, %190 ], [ %197, %193 ], [ %169, %200 ], [ %215, %202 ]
  %221 = phi ptr [ @BIT_reloadDStream.zeroFilled, %190 ], [ %197, %193 ], [ %170, %200 ], [ %215, %202 ]
  %222 = phi i32 [ %180, %190 ], [ %198, %193 ], [ %180, %200 ], [ %217, %202 ]
  %223 = phi i64 [ %172, %190 ], [ %199, %193 ], [ %172, %200 ], [ %218, %202 ]
  %224 = getelementptr inbounds nuw i8, ptr %177, i64 8
  %225 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %224, ptr %225, align 8, !tbaa !81
  %226 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %228 = load ptr, ptr %227, align 8, !tbaa !82
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 4
  %230 = load i32, ptr %229, align 4, !tbaa !63
  %231 = add i32 %230, %222
  %232 = sub i32 0, %231
  %233 = and i32 %232, 63
  %234 = zext nneg i32 %233 to i64
  %235 = lshr i64 %223, %234
  %236 = zext nneg i32 %230 to i64
  %237 = shl nsw i64 -1, %236
  %238 = xor i64 %237, -1
  %239 = and i64 %235, %238
  store i32 %231, ptr %133, align 8, !tbaa !80
  store i64 %239, ptr %226, align 8, !tbaa !78
  %240 = icmp ugt i32 %231, 64
  br i1 %240, label %241, label %242, !prof !52

241:                                              ; preds = %219
  store ptr @BIT_reloadDStream.zeroFilled, ptr %144, align 8, !tbaa !75
  br label %270

242:                                              ; preds = %219
  %243 = icmp ult ptr %221, %50
  br i1 %243, label %251, label %244

244:                                              ; preds = %242
  %245 = lshr i32 %231, 3
  %246 = zext nneg i32 %245 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, ptr %221, i64 %247
  store ptr %248, ptr %144, align 8, !tbaa !75
  %249 = and i32 %231, 7
  store i32 %249, ptr %133, align 8, !tbaa !80
  %250 = load i64, ptr %248, align 1, !tbaa !45
  store i64 %250, ptr %9, align 8, !tbaa !76
  br label %270

251:                                              ; preds = %242
  %252 = icmp eq ptr %221, %3
  br i1 %252, label %270, label %253

253:                                              ; preds = %251
  %254 = lshr i32 %231, 3
  %255 = zext nneg i32 %254 to i64
  %256 = sub nsw i64 0, %255
  %257 = getelementptr inbounds i8, ptr %221, i64 %256
  %258 = icmp ult ptr %257, %3
  %259 = ptrtoint ptr %221 to i64
  %260 = ptrtoint ptr %3 to i64
  %261 = sub i64 %259, %260
  %262 = trunc i64 %261 to i32
  %263 = select i1 %258, i32 %262, i32 %254
  %264 = zext i32 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %221, i64 %265
  store ptr %266, ptr %144, align 8, !tbaa !75
  %267 = shl i32 %263, 3
  %268 = sub i32 %231, %267
  store i32 %268, ptr %133, align 8, !tbaa !80
  %269 = load i64, ptr %266, align 1, !tbaa !45
  store i64 %269, ptr %9, align 8, !tbaa !76
  br label %270

270:                                              ; preds = %253, %251, %244, %241
  %271 = phi ptr [ @BIT_reloadDStream.zeroFilled, %241 ], [ %248, %244 ], [ %220, %251 ], [ %266, %253 ]
  %272 = phi i32 [ %231, %241 ], [ %249, %244 ], [ %231, %251 ], [ %268, %253 ]
  %273 = phi i64 [ %223, %241 ], [ %250, %244 ], [ %223, %251 ], [ %269, %253 ]
  %274 = getelementptr inbounds nuw i8, ptr %228, i64 8
  %275 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %274, ptr %275, align 8, !tbaa !81
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !151
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !152
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !153
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !154
  %276 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %277 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %278 = getelementptr inbounds i8, ptr %20, i64 -32
  %279 = ptrtoint ptr %27 to i64
  %280 = ptrtoint ptr %29 to i64
  %281 = add i64 %279, 16
  %282 = ptrtoint ptr %3 to i64
  br label %283

283:                                              ; preds = %679, %270
  %284 = phi ptr [ %271, %270 ], [ %504, %679 ]
  %285 = phi i32 [ %272, %270 ], [ %505, %679 ]
  %286 = phi i64 [ %273, %270 ], [ %506, %679 ]
  %287 = phi i64 [ %45, %270 ], [ %375, %679 ]
  %288 = phi i64 [ %41, %270 ], [ %373, %679 ]
  %289 = phi i64 [ %38, %270 ], [ %374, %679 ]
  %290 = phi i64 [ %239, %270 ], [ %507, %679 ]
  %291 = phi i64 [ %188, %270 ], [ %508, %679 ]
  %292 = phi i64 [ %142, %270 ], [ %509, %679 ]
  %293 = phi i32 [ %5, %270 ], [ %680, %679 ]
  %294 = phi ptr [ %1, %270 ], [ %674, %679 ]
  %295 = icmp eq i32 %293, 1
  %296 = getelementptr inbounds nuw [8 x i8], ptr %173, i64 %292
  %297 = getelementptr inbounds nuw [8 x i8], ptr %274, i64 %290
  %298 = getelementptr inbounds nuw [8 x i8], ptr %224, i64 %291
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 4
  %300 = load i32, ptr %299, align 4, !tbaa !41, !noalias !233
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %296, i64 4
  %303 = load i32, ptr %302, align 4, !tbaa !41, !noalias !233
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds nuw i8, ptr %298, i64 4
  %306 = load i32, ptr %305, align 4, !tbaa !41, !noalias !233
  %307 = getelementptr inbounds nuw i8, ptr %296, i64 2
  %308 = load i8, ptr %307, align 2, !tbaa !58, !noalias !233
  %309 = getelementptr inbounds nuw i8, ptr %297, i64 2
  %310 = load i8, ptr %309, align 2, !tbaa !58, !noalias !233
  %311 = getelementptr inbounds nuw i8, ptr %298, i64 2
  %312 = load i8, ptr %311, align 2, !tbaa !58, !noalias !233
  %313 = zext i8 %308 to i32
  %314 = zext i8 %310 to i32
  %315 = add i8 %310, %308
  %316 = add i8 %315, %312
  %317 = load i16, ptr %296, align 4, !tbaa !57, !noalias !233
  %318 = load i16, ptr %297, align 4, !tbaa !57, !noalias !233
  %319 = load i16, ptr %298, align 4, !tbaa !57, !noalias !233
  %320 = getelementptr inbounds nuw i8, ptr %296, i64 3
  %321 = load i8, ptr %320, align 1, !tbaa !56, !noalias !233
  %322 = zext i8 %321 to i32
  %323 = getelementptr inbounds nuw i8, ptr %297, i64 3
  %324 = load i8, ptr %323, align 1, !tbaa !56, !noalias !233
  %325 = zext i8 %324 to i32
  %326 = getelementptr inbounds nuw i8, ptr %298, i64 3
  %327 = load i8, ptr %326, align 1, !tbaa !56, !noalias !233
  %328 = zext i8 %327 to i32
  %329 = icmp ugt i8 %312, 1
  br i1 %329, label %330, label %342

330:                                              ; preds = %283
  %331 = zext i8 %312 to i32
  %332 = and i32 %285, 63
  %333 = zext nneg i32 %332 to i64
  %334 = shl i64 %286, %333
  %335 = sub nsw i32 0, %331
  %336 = and i32 %335, 63
  %337 = zext nneg i32 %336 to i64
  %338 = lshr i64 %334, %337
  %339 = add i32 %285, %331
  store i32 %339, ptr %133, align 8, !tbaa !80, !noalias !233
  %340 = zext i32 %306 to i64
  %341 = add i64 %338, %340
  store i64 %288, ptr %46, align 8, !tbaa !45, !noalias !233
  br label %371

342:                                              ; preds = %283
  %343 = icmp eq i32 %303, 0
  %344 = icmp eq i8 %312, 0
  br i1 %344, label %345, label %348, !prof !87

345:                                              ; preds = %342
  %346 = select i1 %343, i64 %288, i64 %289
  %347 = select i1 %343, i64 %289, i64 %288
  br label %371

348:                                              ; preds = %342
  %349 = zext i1 %343 to i32
  %350 = add i32 %306, %349
  %351 = zext i32 %350 to i64
  %352 = and i32 %285, 63
  %353 = zext nneg i32 %352 to i64
  %354 = shl i64 %286, %353
  %355 = lshr i64 %354, 63
  %356 = add i32 %285, 1
  store i32 %356, ptr %133, align 8, !tbaa !80, !noalias !233
  %357 = add nuw nsw i64 %355, %351
  %358 = icmp eq i64 %357, 3
  br i1 %358, label %359, label %363

359:                                              ; preds = %348
  %360 = add i64 %289, -1
  %361 = icmp eq i64 %360, 0
  %362 = select i1 %361, i64 -1, i64 %360
  br label %369

363:                                              ; preds = %348
  %364 = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %357
  %365 = load i64, ptr %364, align 8, !tbaa !45, !noalias !233
  %366 = icmp eq i64 %365, 0
  %367 = select i1 %366, i64 -1, i64 %365
  %368 = icmp eq i64 %357, 1
  br i1 %368, label %371, label %369

369:                                              ; preds = %363, %359
  %370 = phi i64 [ %362, %359 ], [ %367, %363 ]
  store i64 %288, ptr %46, align 8, !tbaa !45, !noalias !233
  br label %371

371:                                              ; preds = %369, %363, %345, %330
  %372 = phi i32 [ %285, %345 ], [ %339, %330 ], [ %356, %369 ], [ %356, %363 ]
  %373 = phi i64 [ %347, %345 ], [ %289, %330 ], [ %289, %369 ], [ %289, %363 ]
  %374 = phi i64 [ %346, %345 ], [ %341, %330 ], [ %370, %369 ], [ %367, %363 ]
  %375 = phi i64 [ %287, %345 ], [ %288, %330 ], [ %288, %369 ], [ %287, %363 ]
  %376 = sub i64 0, %374
  store i64 %373, ptr %42, align 8, !tbaa !45, !noalias !233
  store i64 %374, ptr %36, align 8, !tbaa !45, !noalias !233
  %377 = icmp eq i8 %310, 0
  br i1 %377, label %388, label %378

378:                                              ; preds = %371
  %379 = and i32 %372, 63
  %380 = zext nneg i32 %379 to i64
  %381 = shl i64 %286, %380
  %382 = sub nsw i32 0, %314
  %383 = and i32 %382, 63
  %384 = zext nneg i32 %383 to i64
  %385 = lshr i64 %381, %384
  %386 = add i32 %372, %314
  store i32 %386, ptr %133, align 8, !tbaa !80, !noalias !233
  %387 = add i64 %385, %301
  br label %388

388:                                              ; preds = %378, %371
  %389 = phi i32 [ %372, %371 ], [ %386, %378 ]
  %390 = phi i64 [ %301, %371 ], [ %387, %378 ]
  %391 = icmp ugt i8 %316, 30
  br i1 %391, label %392, label %422, !prof !52

392:                                              ; preds = %388
  %393 = icmp ugt i32 %389, 64
  br i1 %393, label %394, label %395, !prof !52

394:                                              ; preds = %392
  store ptr @BIT_reloadDStream.zeroFilled, ptr %144, align 8, !tbaa !75, !noalias !233
  br label %422

395:                                              ; preds = %392
  %396 = icmp ult ptr %284, %50
  br i1 %396, label %404, label %397

397:                                              ; preds = %395
  %398 = lshr i32 %389, 3
  %399 = zext nneg i32 %398 to i64
  %400 = sub nsw i64 0, %399
  %401 = getelementptr inbounds i8, ptr %284, i64 %400
  store ptr %401, ptr %144, align 8, !tbaa !75, !noalias !233
  %402 = and i32 %389, 7
  store i32 %402, ptr %133, align 8, !tbaa !80, !noalias !233
  %403 = load i64, ptr %401, align 1, !tbaa !45, !noalias !233
  store i64 %403, ptr %9, align 8, !tbaa !76, !noalias !233
  br label %422

404:                                              ; preds = %395
  %405 = icmp eq ptr %284, %3
  br i1 %405, label %422, label %406

406:                                              ; preds = %404
  %407 = lshr i32 %389, 3
  %408 = zext nneg i32 %407 to i64
  %409 = sub nsw i64 0, %408
  %410 = getelementptr inbounds i8, ptr %284, i64 %409
  %411 = icmp ult ptr %410, %3
  %412 = ptrtoint ptr %284 to i64
  %413 = sub i64 %412, %282
  %414 = trunc i64 %413 to i32
  %415 = select i1 %411, i32 %414, i32 %407
  %416 = zext i32 %415 to i64
  %417 = sub nsw i64 0, %416
  %418 = getelementptr inbounds i8, ptr %284, i64 %417
  store ptr %418, ptr %144, align 8, !tbaa !75, !noalias !233
  %419 = shl i32 %415, 3
  %420 = sub i32 %389, %419
  store i32 %420, ptr %133, align 8, !tbaa !80, !noalias !233
  %421 = load i64, ptr %418, align 1, !tbaa !45, !noalias !233
  store i64 %421, ptr %9, align 8, !tbaa !76, !noalias !233
  br label %422

422:                                              ; preds = %406, %404, %397, %394, %388
  %423 = phi ptr [ %284, %404 ], [ @BIT_reloadDStream.zeroFilled, %394 ], [ %401, %397 ], [ %418, %406 ], [ %284, %388 ]
  %424 = phi i32 [ %389, %404 ], [ %389, %394 ], [ %402, %397 ], [ %420, %406 ], [ %389, %388 ]
  %425 = phi i64 [ %286, %404 ], [ %286, %394 ], [ %403, %397 ], [ %421, %406 ], [ %286, %388 ]
  %426 = icmp eq i8 %308, 0
  br i1 %426, label %437, label %427

427:                                              ; preds = %422
  %428 = and i32 %424, 63
  %429 = zext nneg i32 %428 to i64
  %430 = shl i64 %425, %429
  %431 = sub nsw i32 0, %313
  %432 = and i32 %431, 63
  %433 = zext nneg i32 %432 to i64
  %434 = lshr i64 %430, %433
  %435 = add i32 %424, %313
  store i32 %435, ptr %133, align 8, !tbaa !80, !noalias !233
  %436 = add i64 %434, %304
  br label %437

437:                                              ; preds = %427, %422
  %438 = phi i32 [ %424, %422 ], [ %435, %427 ]
  %439 = phi i64 [ %304, %422 ], [ %436, %427 ]
  br i1 %295, label %503, label %440

440:                                              ; preds = %437
  %441 = add i32 %438, %322
  %442 = sub i32 0, %441
  %443 = and i32 %442, 63
  %444 = zext nneg i32 %443 to i64
  %445 = lshr i64 %425, %444
  %446 = zext nneg i8 %321 to i64
  %447 = shl nsw i64 -1, %446
  %448 = xor i64 %447, -1
  %449 = and i64 %445, %448
  %450 = zext i16 %317 to i64
  %451 = add nuw i64 %449, %450
  store i64 %451, ptr %129, align 8, !tbaa !78, !noalias !233
  %452 = add i32 %441, %325
  %453 = sub i32 0, %452
  %454 = and i32 %453, 63
  %455 = zext nneg i32 %454 to i64
  %456 = lshr i64 %425, %455
  %457 = zext nneg i8 %324 to i64
  %458 = shl nsw i64 -1, %457
  %459 = xor i64 %458, -1
  %460 = and i64 %456, %459
  %461 = zext i16 %318 to i64
  %462 = add nuw i64 %460, %461
  store i64 %462, ptr %226, align 8, !tbaa !78, !noalias !233
  %463 = add i32 %452, %328
  %464 = sub i32 0, %463
  %465 = and i32 %464, 63
  %466 = zext nneg i32 %465 to i64
  %467 = lshr i64 %425, %466
  %468 = zext nneg i8 %327 to i64
  %469 = shl nsw i64 -1, %468
  %470 = xor i64 %469, -1
  %471 = and i64 %467, %470
  store i32 %463, ptr %133, align 8, !tbaa !80, !noalias !233
  %472 = zext i16 %319 to i64
  %473 = add nuw i64 %471, %472
  store i64 %473, ptr %175, align 8, !tbaa !78, !noalias !233
  %474 = icmp ugt i32 %463, 64
  br i1 %474, label %475, label %476, !prof !52

475:                                              ; preds = %440
  store ptr @BIT_reloadDStream.zeroFilled, ptr %144, align 8, !tbaa !75, !noalias !233
  br label %503

476:                                              ; preds = %440
  %477 = icmp ult ptr %423, %50
  br i1 %477, label %485, label %478

478:                                              ; preds = %476
  %479 = lshr i32 %463, 3
  %480 = zext nneg i32 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, ptr %423, i64 %481
  store ptr %482, ptr %144, align 8, !tbaa !75, !noalias !233
  %483 = and i32 %463, 7
  store i32 %483, ptr %133, align 8, !tbaa !80, !noalias !233
  %484 = load i64, ptr %482, align 1, !tbaa !45, !noalias !233
  store i64 %484, ptr %9, align 8, !tbaa !76, !noalias !233
  br label %503

485:                                              ; preds = %476
  %486 = icmp eq ptr %423, %3
  br i1 %486, label %503, label %487

487:                                              ; preds = %485
  %488 = lshr i32 %463, 3
  %489 = zext nneg i32 %488 to i64
  %490 = sub nsw i64 0, %489
  %491 = getelementptr inbounds i8, ptr %423, i64 %490
  %492 = icmp ult ptr %491, %3
  %493 = ptrtoint ptr %423 to i64
  %494 = sub i64 %493, %282
  %495 = trunc i64 %494 to i32
  %496 = select i1 %492, i32 %495, i32 %488
  %497 = zext i32 %496 to i64
  %498 = sub nsw i64 0, %497
  %499 = getelementptr inbounds i8, ptr %423, i64 %498
  store ptr %499, ptr %144, align 8, !tbaa !75, !noalias !233
  %500 = shl i32 %496, 3
  %501 = sub i32 %463, %500
  store i32 %501, ptr %133, align 8, !tbaa !80, !noalias !233
  %502 = load i64, ptr %499, align 1, !tbaa !45, !noalias !233
  store i64 %502, ptr %9, align 8, !tbaa !76, !noalias !233
  br label %503

503:                                              ; preds = %487, %485, %478, %475, %437
  %504 = phi ptr [ %423, %485 ], [ @BIT_reloadDStream.zeroFilled, %475 ], [ %482, %478 ], [ %499, %487 ], [ %423, %437 ]
  %505 = phi i32 [ %463, %485 ], [ %463, %475 ], [ %483, %478 ], [ %501, %487 ], [ %438, %437 ]
  %506 = phi i64 [ %425, %485 ], [ %425, %475 ], [ %484, %478 ], [ %502, %487 ], [ %425, %437 ]
  %507 = phi i64 [ %462, %485 ], [ %462, %475 ], [ %462, %478 ], [ %462, %487 ], [ %290, %437 ]
  %508 = phi i64 [ %473, %485 ], [ %473, %475 ], [ %473, %478 ], [ %473, %487 ], [ %291, %437 ]
  %509 = phi i64 [ %451, %485 ], [ %451, %475 ], [ %451, %478 ], [ %451, %487 ], [ %292, %437 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %439, ptr %7, align 8
  store i64 %390, ptr %276, align 8
  store i64 %374, ptr %277, align 8
  %510 = getelementptr i8, ptr %294, i64 %439
  %511 = add i64 %439, %390
  %512 = load ptr, ptr %8, align 8, !tbaa !38
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 %439
  %514 = getelementptr inbounds i8, ptr %510, i64 %376
  %515 = icmp ugt ptr %513, %25
  %516 = getelementptr inbounds nuw i8, ptr %294, i64 %511
  %517 = icmp ugt ptr %516, %278
  %518 = select i1 %515, i1 true, i1 %517
  br i1 %518, label %522, label %519, !prof !101

519:                                              ; preds = %503
  %520 = load <2 x i64>, ptr %512, align 1, !tbaa !9
  store <2 x i64> %520, ptr %294, align 1, !tbaa !9
  %521 = icmp ugt i64 %439, 16
  br i1 %521, label %524, label %.loopexit44, !prof !52

522:                                              ; preds = %503
  %523 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %294, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31)
  br label %.loopexit

524:                                              ; preds = %519
  %525 = getelementptr inbounds nuw i8, ptr %294, i64 16
  %526 = getelementptr inbounds nuw i8, ptr %512, i64 16
  %527 = load <2 x i64>, ptr %526, align 1, !tbaa !9
  store <2 x i64> %527, ptr %525, align 1, !tbaa !9
  %528 = icmp ult i64 %439, 33
  br i1 %528, label %.loopexit44, label %529

529:                                              ; preds = %524
  %530 = getelementptr inbounds nuw i8, ptr %294, i64 32
  br label %531

531:                                              ; preds = %531, %529
  %532 = phi ptr [ %530, %529 ], [ %539, %531 ]
  %533 = phi ptr [ %526, %529 ], [ %537, %531 ]
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 16
  %535 = load <2 x i64>, ptr %534, align 1, !tbaa !9
  store <2 x i64> %535, ptr %532, align 1, !tbaa !9
  %536 = getelementptr inbounds nuw i8, ptr %532, i64 16
  %537 = getelementptr inbounds nuw i8, ptr %533, i64 32
  %538 = load <2 x i64>, ptr %537, align 1, !tbaa !9
  store <2 x i64> %538, ptr %536, align 1, !tbaa !9
  %539 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %540 = icmp ult ptr %539, %510
  br i1 %540, label %531, label %.loopexit44, !llvm.loop !97

.loopexit44:                                      ; preds = %531, %524, %519
  store ptr %513, ptr %8, align 8, !tbaa !38
  %541 = ptrtoint ptr %510 to i64
  %542 = sub i64 %541, %279
  %543 = icmp ugt i64 %374, %542
  br i1 %543, label %544, label %558

544:                                              ; preds = %.loopexit44
  %545 = sub i64 %541, %280
  %546 = icmp ugt i64 %374, %545
  br i1 %546, label %547, label %548, !prof !52

547:                                              ; preds = %544
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit45

548:                                              ; preds = %544
  %549 = ptrtoint ptr %514 to i64
  %550 = sub i64 %549, %279
  %551 = getelementptr inbounds i8, ptr %31, i64 %550
  %552 = add nsw i64 %550, %390
  %553 = icmp sgt i64 %552, 0
  br i1 %553, label %555, label %554

554:                                              ; preds = %548
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %510, ptr align 1 %551, i64 %390, i1 false)
  br label %.loopexit

555:                                              ; preds = %548
  %556 = sub nsw i64 0, %550
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %510, ptr align 1 %551, i64 %556, i1 false)
  %557 = getelementptr inbounds nuw i8, ptr %510, i64 %556
  store i64 %552, ptr %276, align 8, !tbaa !127
  br label %558

558:                                              ; preds = %555, %.loopexit44
  %559 = phi ptr [ %27, %555 ], [ %514, %.loopexit44 ]
  %560 = phi ptr [ %557, %555 ], [ %510, %.loopexit44 ]
  %561 = phi i64 [ %552, %555 ], [ %390, %.loopexit44 ]
  %562 = icmp ugt i64 %374, 15
  br i1 %562, label %563, label %579, !prof !87

563:                                              ; preds = %558
  %564 = getelementptr inbounds nuw i8, ptr %560, i64 %561
  %565 = load <2 x i64>, ptr %559, align 1, !tbaa !9
  store <2 x i64> %565, ptr %560, align 1, !tbaa !9
  %566 = icmp ult i64 %561, 17
  br i1 %566, label %.loopexit, label %567

567:                                              ; preds = %563
  %568 = getelementptr inbounds nuw i8, ptr %560, i64 16
  br label %569

569:                                              ; preds = %569, %567
  %570 = phi ptr [ %568, %567 ], [ %577, %569 ]
  %571 = phi ptr [ %559, %567 ], [ %575, %569 ]
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 16
  %573 = load <2 x i64>, ptr %572, align 1, !tbaa !9
  store <2 x i64> %573, ptr %570, align 1, !tbaa !9
  %574 = getelementptr inbounds nuw i8, ptr %570, i64 16
  %575 = getelementptr inbounds nuw i8, ptr %571, i64 32
  %576 = load <2 x i64>, ptr %575, align 1, !tbaa !9
  store <2 x i64> %576, ptr %574, align 1, !tbaa !9
  %577 = getelementptr inbounds nuw i8, ptr %570, i64 32
  %578 = icmp ult ptr %577, %564
  br i1 %578, label %569, label %.loopexit, !llvm.loop !97

579:                                              ; preds = %558
  %580 = icmp samesign ult i64 %374, 8
  br i1 %580, label %581, label %603

581:                                              ; preds = %579
  %582 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %374
  %583 = load i32, ptr %582, align 4, !tbaa !30
  %584 = load i8, ptr %559, align 1, !tbaa !9
  store i8 %584, ptr %560, align 1, !tbaa !9
  %585 = getelementptr inbounds nuw i8, ptr %559, i64 1
  %586 = load i8, ptr %585, align 1, !tbaa !9
  %587 = getelementptr inbounds nuw i8, ptr %560, i64 1
  store i8 %586, ptr %587, align 1, !tbaa !9
  %588 = getelementptr inbounds nuw i8, ptr %559, i64 2
  %589 = load i8, ptr %588, align 1, !tbaa !9
  %590 = getelementptr inbounds nuw i8, ptr %560, i64 2
  store i8 %589, ptr %590, align 1, !tbaa !9
  %591 = getelementptr inbounds nuw i8, ptr %559, i64 3
  %592 = load i8, ptr %591, align 1, !tbaa !9
  %593 = getelementptr inbounds nuw i8, ptr %560, i64 3
  store i8 %592, ptr %593, align 1, !tbaa !9
  %594 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %374
  %595 = load i32, ptr %594, align 4, !tbaa !30
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds nuw i8, ptr %559, i64 %596
  %598 = getelementptr inbounds nuw i8, ptr %560, i64 4
  %599 = load i32, ptr %597, align 1
  store i32 %599, ptr %598, align 1
  %600 = sext i32 %583 to i64
  %601 = sub nsw i64 0, %600
  %602 = getelementptr inbounds i8, ptr %597, i64 %601
  br label %605

603:                                              ; preds = %579
  %604 = load i64, ptr %559, align 1
  store i64 %604, ptr %560, align 1
  br label %605

605:                                              ; preds = %603, %581
  %606 = phi ptr [ %602, %581 ], [ %559, %603 ]
  %607 = getelementptr inbounds nuw i8, ptr %606, i64 8
  %608 = getelementptr inbounds nuw i8, ptr %560, i64 8
  %609 = icmp ugt i64 %561, 8
  br i1 %609, label %610, label %.loopexit

610:                                              ; preds = %605
  %611 = ptrtoint ptr %608 to i64
  %612 = ptrtoint ptr %607 to i64
  %613 = sub i64 %611, %612
  %614 = getelementptr i8, ptr %560, i64 %561
  %615 = icmp slt i64 %613, 16
  br i1 %615, label %616, label %657

616:                                              ; preds = %610
  %617 = tail call i64 @llvm.umin.i64(i64 %374, i64 %542)
  %618 = tail call i64 @llvm.umax.i64(i64 %374, i64 %542)
  %619 = sub i64 %279, %374
  %620 = add i64 %619, %390
  %621 = add i64 %620, %617
  %622 = add i64 %621, %618
  %623 = add i64 %281, %618
  %624 = tail call i64 @llvm.umax.i64(i64 %622, i64 %623)
  %625 = add i64 %618, %279
  %reass.sub72 = sub i64 %624, %625
  %626 = add i64 %reass.sub72, -9
  %627 = lshr i64 %626, 3
  %628 = add nuw nsw i64 %627, 1
  %629 = icmp ult i64 %626, 24
  %630 = icmp ult i64 %613, 32
  %631 = or i1 %629, %630
  br i1 %631, label %.preheader, label %632

632:                                              ; preds = %616
  %633 = and i64 %628, 4611686018427387900
  br label %634

634:                                              ; preds = %634, %632
  %635 = phi i64 [ 0, %632 ], [ %643, %634 ]
  %636 = shl i64 %635, 3
  %637 = getelementptr i8, ptr %608, i64 %636
  %638 = getelementptr i8, ptr %607, i64 %636
  %639 = getelementptr i8, ptr %638, i64 16
  %640 = load <2 x i64>, ptr %638, align 1
  %641 = load <2 x i64>, ptr %639, align 1
  %642 = getelementptr i8, ptr %637, i64 16
  store <2 x i64> %640, ptr %637, align 1
  store <2 x i64> %641, ptr %642, align 1
  %643 = add nuw i64 %635, 4
  %644 = icmp eq i64 %643, %633
  br i1 %644, label %645, label %634, !llvm.loop !236

645:                                              ; preds = %634
  %646 = shl i64 %633, 3
  %647 = getelementptr i8, ptr %608, i64 %646
  %648 = getelementptr i8, ptr %607, i64 %646
  %649 = icmp eq i64 %628, %633
  br i1 %649, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %645, %616
  %.ph = phi ptr [ %647, %645 ], [ %608, %616 ]
  %.ph192 = phi ptr [ %648, %645 ], [ %607, %616 ]
  br label %650

650:                                              ; preds = %.preheader, %650
  %651 = phi ptr [ %654, %650 ], [ %.ph, %.preheader ]
  %652 = phi ptr [ %655, %650 ], [ %.ph192, %.preheader ]
  %653 = load i64, ptr %652, align 1
  store i64 %653, ptr %651, align 1
  %654 = getelementptr inbounds nuw i8, ptr %651, i64 8
  %655 = getelementptr inbounds nuw i8, ptr %652, i64 8
  %656 = icmp ult ptr %654, %614
  br i1 %656, label %650, label %.loopexit, !llvm.loop !237

657:                                              ; preds = %610
  %658 = load <2 x i64>, ptr %607, align 1, !tbaa !9
  store <2 x i64> %658, ptr %608, align 1, !tbaa !9
  %659 = icmp ult i64 %561, 25
  br i1 %659, label %.loopexit, label %660

660:                                              ; preds = %657
  %661 = getelementptr inbounds nuw i8, ptr %560, i64 24
  br label %662

662:                                              ; preds = %662, %660
  %663 = phi ptr [ %661, %660 ], [ %670, %662 ]
  %664 = phi ptr [ %607, %660 ], [ %668, %662 ]
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 16
  %666 = load <2 x i64>, ptr %665, align 1, !tbaa !9
  store <2 x i64> %666, ptr %663, align 1, !tbaa !9
  %667 = getelementptr inbounds nuw i8, ptr %663, i64 16
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 32
  %669 = load <2 x i64>, ptr %668, align 1, !tbaa !9
  store <2 x i64> %669, ptr %667, align 1, !tbaa !9
  %670 = getelementptr inbounds nuw i8, ptr %663, i64 32
  %671 = icmp ult ptr %670, %614
  br i1 %671, label %662, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %662, %650, %569, %657, %645, %605, %563, %554, %522
  %672 = phi i64 [ %523, %522 ], [ %511, %554 ], [ %511, %605 ], [ %511, %563 ], [ %511, %657 ], [ %511, %645 ], [ %511, %569 ], [ %511, %650 ], [ %511, %662 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %673 = icmp ult i64 %672, -119
  %674 = getelementptr inbounds nuw i8, ptr %294, i64 %672
  br i1 %673, label %675, label %.loopexit45

675:                                              ; preds = %.loopexit
  %676 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %293, i32 -1)
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !86
  br i1 %677, label %678, label %679, !prof !109, !nosanitize !86

678:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !86
  unreachable, !nosanitize !86

679:                                              ; preds = %675
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !86
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %682, label %283, !llvm.loop !160

682:                                              ; preds = %679
  %683 = icmp eq ptr %504, %3
  %684 = icmp eq i32 %505, 64
  %685 = select i1 %683, i1 %684, i1 false
  br i1 %685, label %686, label %.loopexit45

686:                                              ; preds = %682
  %687 = trunc i64 %374 to i32
  store i32 %687, ptr %35, align 4, !tbaa !30
  %688 = trunc i64 %373 to i32
  store i32 %688, ptr %39, align 4, !tbaa !30
  %689 = trunc i64 %375 to i32
  store i32 %689, ptr %43, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %690 = load ptr, ptr %8, align 8, !tbaa !38
  br label %692

.loopexit45:                                      ; preds = %.loopexit, %682, %547, %116, %104, %53, %33
  %691 = phi i64 [ -20, %547 ], [ -20, %116 ], [ -20, %682 ], [ -20, %33 ], [ -20, %53 ], [ -20, %104 ], [ %672, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %711

692:                                              ; preds = %686, %19
  %693 = phi ptr [ %690, %686 ], [ %22, %19 ]
  %694 = phi ptr [ %674, %686 ], [ %1, %19 ]
  %695 = ptrtoint ptr %25 to i64
  %696 = ptrtoint ptr %693 to i64
  %697 = sub i64 %695, %696
  %698 = ptrtoint ptr %20 to i64
  %699 = ptrtoint ptr %694 to i64
  %700 = sub i64 %698, %699
  %701 = icmp ugt i64 %697, %700
  br i1 %701, label %711, label %702

702:                                              ; preds = %692
  %703 = icmp eq ptr %694, null
  br i1 %703, label %707, label %704

704:                                              ; preds = %702
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %694, ptr align 1 %693, i64 %697, i1 false)
  %705 = getelementptr inbounds nuw i8, ptr %694, i64 %697
  %706 = ptrtoint ptr %705 to i64
  br label %707

707:                                              ; preds = %704, %702
  %708 = phi i64 [ 0, %702 ], [ %706, %704 ]
  %709 = ptrtoint ptr %1 to i64
  %710 = sub i64 %708, %709
  br label %711

711:                                              ; preds = %707, %692, %.loopexit45
  %712 = phi i64 [ %710, %707 ], [ %691, %.loopexit45 ], [ -70, %692 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %712
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.1(ptr writeonly captures(address) initializes((16, 32)) %0, ptr readonly captures(none) %1, i64 range(i64 17, 0) %2) unnamed_addr #16 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr i8, ptr %0, i64 %2
  %7 = load <2 x i64>, ptr %5, align 1, !tbaa !9
  store <2 x i64> %7, ptr %4, align 1, !tbaa !9
  %8 = icmp ult i64 %2, 33
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %19, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %15, ptr %12, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %18 = load <2 x i64>, ptr %17, align 1, !tbaa !9
  store <2 x i64> %18, ptr %16, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %11, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %11, %3
  ret void
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.2(ptr writeonly captures(address) initializes((16, 32)) %0, ptr readonly captures(none) %1, i64 range(i64 17, 0) %2) unnamed_addr #16 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr i8, ptr %0, i64 %2
  %7 = load <2 x i64>, ptr %5, align 1, !tbaa !9
  store <2 x i64> %7, ptr %4, align 1, !tbaa !9
  %8 = icmp ult i64 %2, 33
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %19, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %15, ptr %12, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %18 = load <2 x i64>, ptr %17, align 1, !tbaa !9
  store <2 x i64> %18, ptr %16, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %11, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %11, %3
  ret void
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.3(ptr writeonly captures(address) initializes((16, 32)) %0, i64 range(i64 -9223372036854775808, 65537) %1, ptr readonly captures(none) %2) unnamed_addr #16 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = add i64 %1, -16
  %6 = getelementptr i8, ptr %0, i64 %1
  %7 = load <2 x i64>, ptr %2, align 1, !tbaa !9
  store <2 x i64> %7, ptr %4, align 1, !tbaa !9
  %8 = icmp ult i64 %5, 17
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %19, %11 ]
  %13 = phi ptr [ %2, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %15, ptr %12, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %18 = load <2 x i64>, ptr %17, align 1, !tbaa !9
  store <2 x i64> %18, ptr %16, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %11, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %11, %3
  ret void
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.4(ptr writeonly captures(address) initializes((16, 32)) %0, ptr readonly captures(none) %1, i64 range(i64 17, 0) %2) unnamed_addr #16 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr i8, ptr %0, i64 %2
  %7 = load <2 x i64>, ptr %5, align 1, !tbaa !9
  store <2 x i64> %7, ptr %4, align 1, !tbaa !9
  %8 = icmp ult i64 %2, 33
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %19, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %15, ptr %12, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %18 = load <2 x i64>, ptr %17, align 1, !tbaa !9
  store <2 x i64> %18, ptr %16, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %11, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %11, %3
  ret void
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.5(ptr writeonly captures(address) initializes((16, 32)) %0, ptr readonly captures(none) %1, i64 range(i64 17, 0) %2) unnamed_addr #16 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr i8, ptr %0, i64 %2
  %7 = load <2 x i64>, ptr %5, align 1, !tbaa !9
  store <2 x i64> %7, ptr %4, align 1, !tbaa !9
  %8 = icmp ult i64 %2, 33
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %19, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %15, ptr %12, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %18 = load <2 x i64>, ptr %17, align 1, !tbaa !9
  store <2 x i64> %18, ptr %16, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %11, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %11, %3
  ret void
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.6(ptr writeonly captures(address) initializes((16, 32)) %0, i64 range(i64 -9223372036854775808, 65537) %1, ptr readonly captures(none) %2) unnamed_addr #16 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = add i64 %1, -16
  %6 = getelementptr i8, ptr %0, i64 %1
  %7 = load <2 x i64>, ptr %2, align 1, !tbaa !9
  store <2 x i64> %7, ptr %4, align 1, !tbaa !9
  %8 = icmp ult i64 %5, 17
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %19, %11 ]
  %13 = phi ptr [ %2, %9 ], [ %17, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %15, ptr %12, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %18 = load <2 x i64>, ptr %17, align 1, !tbaa !9
  store <2 x i64> %18, ptr %16, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %11, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
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
!16 = !{!"ZSTD_DCtx_s", !17, i64 0, !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 32, !7, i64 27324, !17, i64 29888, !17, i64 29896, !17, i64 29904, !17, i64 29912, !20, i64 29920, !21, i64 29928, !20, i64 29976, !20, i64 29984, !12, i64 29992, !12, i64 29996, !12, i64 30000, !12, i64 30004, !23, i64 30008, !20, i64 30096, !12, i64 30104, !12, i64 30108, !12, i64 30112, !24, i64 30120, !25, i64 30128, !20, i64 30152, !20, i64 30160, !20, i64 30168, !12, i64 30176, !12, i64 30180, !26, i64 30184, !26, i64 30192, !12, i64 30200, !12, i64 30204, !12, i64 30208, !17, i64 30216, !12, i64 30224, !12, i64 30228, !12, i64 30232, !12, i64 30236, !24, i64 30240, !20, i64 30248, !20, i64 30256, !20, i64 30264, !24, i64 30272, !20, i64 30280, !20, i64 30288, !20, i64 30296, !20, i64 30304, !12, i64 30312, !12, i64 30316, !12, i64 30320, !27, i64 30328, !24, i64 30352, !24, i64 30360, !12, i64 30368, !7, i64 30372, !7, i64 95940, !20, i64 95960, !22, i64 95968}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 int", !17, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4104, !7, i64 6160, !7, i64 10264, !7, i64 26652, !7, i64 26664}
!20 = !{!"long", !7, i64 0}
!21 = !{!"", !22, i64 0, !22, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!22 = !{!"long long", !7, i64 0}
!23 = !{!"XXH64_state_s", !20, i64 0, !7, i64 8, !7, i64 40, !12, i64 72, !12, i64 76, !20, i64 80}
!24 = !{!"p1 omnipotent char", !17, i64 0}
!25 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16}
!26 = !{!"p1 _ZTS12ZSTD_DDict_s", !17, i64 0}
!27 = !{!"ZSTD_outBuffer_s", !17, i64 0, !20, i64 8, !20, i64 16}
!28 = !{!16, !12, i64 29944}
!29 = !{!16, !12, i64 30000}
!30 = !{!12, !12, i64 0}
!31 = !{!16, !12, i64 30180}
!32 = !{!16, !12, i64 30228}
!33 = !{!16, !24, i64 30352}
!34 = !{!16, !24, i64 30360}
!35 = !{!16, !12, i64 30368}
!36 = !{!16, !12, i64 30204}
!37 = !{!16, !18, i64 24}
!38 = !{!24, !24, i64 0}
!39 = !{!16, !24, i64 30120}
!40 = !{!16, !20, i64 30152}
!41 = !{!42, !12, i64 4}
!42 = !{!"", !6, i64 0, !7, i64 2, !7, i64 3, !12, i64 4}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!20, !20, i64 0}
!46 = distinct !{!46, !44, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !44, !48, !47}
!50 = distinct !{!50, !44}
!51 = distinct !{!51, !44}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = !{!42, !7, i64 3}
!57 = !{!42, !6, i64 0}
!58 = !{!42, !7, i64 2}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44, !47, !48}
!61 = distinct !{!61, !44, !48, !47}
!62 = !{!16, !12, i64 30004}
!63 = !{!64, !12, i64 4}
!64 = !{!"", !12, i64 0, !12, i64 4}
!65 = !{!64, !12, i64 0}
!66 = !{!17, !17, i64 0}
!67 = !{!16, !17, i64 29904}
!68 = !{!16, !17, i64 16}
!69 = distinct !{!69, !44}
!70 = !{!16, !17, i64 29896}
!71 = !{!16, !17, i64 29912}
!72 = !{!73, !24, i64 24}
!73 = !{!"", !20, i64 0, !12, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!74 = !{!73, !24, i64 32}
!75 = !{!73, !24, i64 16}
!76 = !{!73, !20, i64 0}
!77 = !{!16, !17, i64 0}
!78 = !{!79, !20, i64 0}
!79 = !{!"", !20, i64 0, !17, i64 8}
!80 = !{!73, !12, i64 8}
!81 = !{!79, !17, i64 8}
!82 = !{!16, !17, i64 8}
!83 = !{!84}
!84 = distinct !{!84, !85, !"ZSTD_decodeSequence: argument 0"}
!85 = distinct !{!85, !"ZSTD_decodeSequence"}
!86 = !{}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = distinct !{!88, !44}
!89 = !{!90}
!90 = distinct !{!90, !91, !"ZSTD_decodeSequence: argument 0"}
!91 = distinct !{!91, !"ZSTD_decodeSequence"}
!92 = !{!93, !20, i64 0}
!93 = !{!"", !20, i64 0, !20, i64 8, !20, i64 16}
!94 = distinct !{!94, !44, !47, !48}
!95 = distinct !{!95, !44, !47, !48}
!96 = distinct !{!96, !44, !47}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44, !47, !48}
!99 = distinct !{!99, !44, !47, !48}
!100 = distinct !{!100, !44, !47}
!101 = !{!"branch_weights", i32 4001, i32 4000000}
!102 = distinct !{!102, !44, !47, !48}
!103 = distinct !{!103, !44, !47}
!104 = distinct !{!104, !44, !47, !48}
!105 = distinct !{!105, !44, !47}
!106 = distinct !{!106, !44, !47, !48}
!107 = distinct !{!107, !44, !47}
!108 = distinct !{!108, !44}
!109 = !{!"branch_weights", i32 1, i32 1048575}
!110 = distinct !{!110, !44, !47, !48}
!111 = distinct !{!111, !44, !47, !48}
!112 = distinct !{!112, !44, !47}
!113 = distinct !{!113, !44, !47, !48}
!114 = distinct !{!114, !44, !47, !48}
!115 = distinct !{!115, !44, !47}
!116 = distinct !{!116, !44, !47, !48}
!117 = distinct !{!117, !44, !47}
!118 = distinct !{!118, !44, !47, !48}
!119 = distinct !{!119, !44, !47}
!120 = distinct !{!120, !44, !47, !48}
!121 = distinct !{!121, !44, !47}
!122 = distinct !{!122, !44}
!123 = !{i64 72311}
!124 = !{!125}
!125 = distinct !{!125, !126, !"ZSTD_decodeSequence: argument 0"}
!126 = distinct !{!126, !"ZSTD_decodeSequence"}
!127 = !{!93, !20, i64 8}
!128 = distinct !{!128, !44, !47, !48}
!129 = distinct !{!129, !44, !47}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !44, !47, !48}
!132 = distinct !{!132, !44, !47, !48}
!133 = distinct !{!133, !44, !47}
!134 = distinct !{!134, !44, !47, !48}
!135 = distinct !{!135, !44, !47, !48}
!136 = distinct !{!136, !44, !47}
!137 = distinct !{!137, !44, !47, !48}
!138 = distinct !{!138, !44, !47}
!139 = !{i64 75607}
!140 = !{i64 75642}
!141 = !{i64 75770}
!142 = !{i64 75805}
!143 = !{i64 75833}
!144 = !{!145}
!145 = distinct !{!145, !146, !"ZSTD_decodeSequence: argument 0"}
!146 = distinct !{!146, !"ZSTD_decodeSequence"}
!147 = distinct !{!147, !44, !47, !48}
!148 = distinct !{!148, !44, !47}
!149 = distinct !{!149, !44}
!150 = !{i64 80069}
!151 = !{i64 80104}
!152 = !{i64 80258}
!153 = !{i64 80293}
!154 = !{i64 80321}
!155 = !{!156}
!156 = distinct !{!156, !157, !"ZSTD_decodeSequence: argument 0"}
!157 = distinct !{!157, !"ZSTD_decodeSequence"}
!158 = distinct !{!158, !44, !47, !48}
!159 = distinct !{!159, !44, !47}
!160 = distinct !{!160, !44}
!161 = !{!16, !17, i64 29888}
!162 = !{!163}
!163 = distinct !{!163, !164, !"ZSTD_decodeSequence: argument 0"}
!164 = distinct !{!164, !"ZSTD_decodeSequence"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"ZSTD_decodeSequence: argument 0"}
!167 = distinct !{!167, !"ZSTD_decodeSequence"}
!168 = distinct !{!168, !44, !47, !48}
!169 = distinct !{!169, !44, !47, !48}
!170 = distinct !{!170, !44, !47}
!171 = distinct !{!171, !44, !47, !48}
!172 = distinct !{!172, !44, !47, !48}
!173 = distinct !{!173, !44, !47}
!174 = distinct !{!174, !44, !47, !48}
!175 = distinct !{!175, !44, !47}
!176 = distinct !{!176, !44, !47, !48}
!177 = distinct !{!177, !44, !47}
!178 = distinct !{!178, !44, !47, !48}
!179 = distinct !{!179, !44, !47}
!180 = distinct !{!180, !44, !47, !48}
!181 = distinct !{!181, !44, !47, !48}
!182 = distinct !{!182, !44, !47}
!183 = distinct !{!183, !44, !47, !48}
!184 = distinct !{!184, !44, !47, !48}
!185 = distinct !{!185, !44, !47}
!186 = distinct !{!186, !44, !47, !48}
!187 = distinct !{!187, !44, !47}
!188 = distinct !{!188, !44, !47, !48}
!189 = distinct !{!189, !44, !47}
!190 = distinct !{!190, !44, !47, !48}
!191 = distinct !{!191, !44, !47}
!192 = !{!93, !20, i64 16}
!193 = distinct !{!193, !44, !47, !48}
!194 = distinct !{!194, !44, !47, !48}
!195 = distinct !{!195, !44, !47}
!196 = distinct !{!196, !44, !47, !48}
!197 = distinct !{!197, !44, !47, !48}
!198 = distinct !{!198, !44, !47}
!199 = distinct !{!199, !44, !47, !48}
!200 = distinct !{!200, !44, !47, !48}
!201 = distinct !{!201, !44, !47}
!202 = distinct !{!202, !44, !47, !48}
!203 = distinct !{!203, !44, !47}
!204 = distinct !{!204, !44, !47, !48}
!205 = distinct !{!205, !44, !47}
!206 = distinct !{!206, !44, !47, !48}
!207 = distinct !{!207, !44, !47, !48}
!208 = distinct !{!208, !44, !47}
!209 = distinct !{!209, !44, !47, !48}
!210 = distinct !{!210, !44, !47, !48}
!211 = distinct !{!211, !44, !47}
!212 = distinct !{!212, !44, !47, !48}
!213 = distinct !{!213, !44, !47, !48}
!214 = distinct !{!214, !44, !47}
!215 = !{!216}
!216 = distinct !{!216, !217, !"ZSTD_decodeSequence: argument 0"}
!217 = distinct !{!217, !"ZSTD_decodeSequence"}
!218 = distinct !{!218, !44, !47, !48}
!219 = distinct !{!219, !44, !47}
!220 = distinct !{!220, !44, !47, !48}
!221 = distinct !{!221, !44, !47, !48}
!222 = distinct !{!222, !44, !47}
!223 = distinct !{!223, !44, !47, !48}
!224 = distinct !{!224, !44, !47, !48}
!225 = distinct !{!225, !44, !47}
!226 = distinct !{!226, !44, !47, !48}
!227 = distinct !{!227, !44, !47}
!228 = !{!229}
!229 = distinct !{!229, !230, !"ZSTD_decodeSequence: argument 0"}
!230 = distinct !{!230, !"ZSTD_decodeSequence"}
!231 = distinct !{!231, !44, !47, !48}
!232 = distinct !{!232, !44, !47}
!233 = !{!234}
!234 = distinct !{!234, !235, !"ZSTD_decodeSequence: argument 0"}
!235 = distinct !{!235, !"ZSTD_decodeSequence"}
!236 = distinct !{!236, !44, !47, !48}
!237 = distinct !{!237, !44, !47}
