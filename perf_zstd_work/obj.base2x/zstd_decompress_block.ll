; ModuleID = '<stdin>'
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
  switch i8 %10, label %default.unreachable15 [
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
  %384 = tail call i64 @HUF_decompress1X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %380, i64 noundef %64, ptr noundef %382, i32 noundef %39) #18
  br label %395

385:                                              ; preds = %379
  %386 = tail call i64 @HUF_decompress4X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %380, i64 noundef %64, ptr noundef %382, i32 noundef %39) #18
  br label %395

387:                                              ; preds = %.loopexit
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %389 = getelementptr inbounds nuw i8, ptr %1, i64 %66
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 27324
  br i1 %63, label %393, label %391

391:                                              ; preds = %387
  %392 = tail call i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef nonnull %388, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %389, i64 noundef %64, ptr noundef nonnull %390, i64 noundef 2560, i32 noundef %39) #18
  br label %395

393:                                              ; preds = %387
  %394 = tail call i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef nonnull %388, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %389, i64 noundef %64, ptr noundef nonnull %390, i64 noundef 2560, i32 noundef %39) #18
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

default.unreachable15:                            ; preds = %18
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
  br i1 %53, label %.preheader, label %121

.loopexit18:                                      ; preds = %.loopexit17, %20
  %54 = lshr i32 %15, 1
  %55 = lshr i32 %15, 3
  %56 = add nuw nsw i32 %55, 3
  %57 = add nuw nsw i32 %56, %54
  %58 = zext nneg i32 %17 to i64
  %59 = zext nneg i32 %57 to i64
  %60 = zext i32 %15 to i64
  %61 = shl nuw nsw i64 %59, 1
  br label %101

.preheader:                                       ; preds = %51, %.loopexit17
  %62 = phi i64 [ %98, %.loopexit17 ], [ 0, %51 ]
  %63 = phi i64 [ %97, %.loopexit17 ], [ 0, %51 ]
  %64 = phi i64 [ %99, %.loopexit17 ], [ 0, %51 ]
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
  br i1 %75, label %.preheader51.preheader, label %76

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
  br i1 %91, label %.loopexit17, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %88, %69
  %.ph = phi i64 [ 8, %69 ], [ %90, %88 ]
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %.preheader51
  %92 = phi i64 [ %94, %.preheader51 ], [ %.ph, %.preheader51.preheader ]
  %93 = getelementptr inbounds nuw i8, ptr %67, i64 %92
  store i64 %64, ptr %93, align 1, !tbaa !45
  %94 = add nuw nsw i64 %92, 8
  %95 = icmp samesign ult i64 %94, %70
  br i1 %95, label %.preheader51, label %.loopexit17, !llvm.loop !49

.loopexit17:                                      ; preds = %.preheader51, %88, %.preheader
  %96 = sext i16 %66 to i64
  %97 = add i64 %63, %96
  %98 = add nuw nsw i64 %62, 1
  %99 = add i64 %64, 72340172838076673
  %100 = icmp eq i64 %98, %26
  br i1 %100, label %.loopexit18, label %.preheader, !llvm.loop !50

101:                                              ; preds = %101, %.loopexit18
  %102 = phi i64 [ 0, %.loopexit18 ], [ %119, %101 ]
  %103 = phi i64 [ 0, %.loopexit18 ], [ %118, %101 ]
  %104 = getelementptr inbounds nuw i8, ptr %16, i64 %102
  %105 = and i64 %103, %58
  %106 = load i8, ptr %104, align 1, !tbaa !9
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i64 %105, 3
  %109 = getelementptr inbounds nuw i8, ptr %18, i64 %108
  store i32 %107, ptr %109, align 4, !tbaa !41
  %110 = add nuw nsw i64 %103, %59
  %111 = and i64 %110, %58
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !9
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i64 %111, 3
  %116 = getelementptr inbounds nuw i8, ptr %18, i64 %115
  store i32 %114, ptr %116, align 4, !tbaa !41
  %117 = add nuw nsw i64 %103, %61
  %118 = and i64 %117, %58
  %119 = add nuw nsw i64 %102, 2
  %120 = icmp samesign ult i64 %119, %60
  br i1 %120, label %101, label %.loopexit16, !llvm.loop !51

121:                                              ; preds = %51
  %122 = lshr i32 %15, 3
  %123 = lshr i32 %15, 1
  %124 = add nuw nsw i32 %122, 3
  %125 = add nuw nsw i32 %124, %123
  br label %126

126:                                              ; preds = %.loopexit19, %121
  %127 = phi i64 [ 0, %121 ], [ %174, %.loopexit19 ]
  %128 = phi i32 [ 0, %121 ], [ %173, %.loopexit19 ]
  %129 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %127
  %130 = load i16, ptr %129, align 2, !tbaa !5
  %131 = icmp sgt i16 %130, 0
  br i1 %131, label %132, label %.loopexit19

132:                                              ; preds = %126
  %133 = trunc nuw i64 %127 to i32
  %134 = icmp eq i16 %130, 1
  br i1 %134, label %.thread, label %135

135:                                              ; preds = %132
  %136 = and i16 %130, 32766
  %137 = zext nneg i16 %136 to i32
  br label %138

138:                                              ; preds = %158, %135
  %139 = phi i32 [ %128, %135 ], [ %156, %158 ]
  %140 = phi i32 [ 0, %135 ], [ %159, %158 ]
  %141 = zext nneg i32 %139 to i64
  %142 = shl nuw nsw i64 %141, 3
  %143 = getelementptr inbounds nuw i8, ptr %18, i64 %142
  store i32 %133, ptr %143, align 4, !tbaa !41
  br label %144

144:                                              ; preds = %144, %138
  %145 = phi i32 [ %139, %138 ], [ %147, %144 ]
  %146 = add nuw i32 %145, %125
  %147 = and i32 %146, %17
  %148 = icmp ugt i32 %147, %47
  br i1 %148, label %144, label %149, !prof !52, !llvm.loop !53

149:                                              ; preds = %144
  %150 = zext nneg i32 %147 to i64
  %151 = shl nuw nsw i64 %150, 3
  %152 = getelementptr inbounds nuw i8, ptr %18, i64 %151
  store i32 %133, ptr %152, align 4, !tbaa !41
  br label %153

153:                                              ; preds = %153, %149
  %154 = phi i32 [ %147, %149 ], [ %156, %153 ]
  %155 = add nuw i32 %154, %125
  %156 = and i32 %155, %17
  %157 = icmp ugt i32 %156, %47
  br i1 %157, label %153, label %158, !prof !52, !llvm.loop !53

158:                                              ; preds = %153
  %159 = add i32 %140, 2
  %160 = icmp eq i32 %159, %137
  br i1 %160, label %161, label %138, !llvm.loop !54

161:                                              ; preds = %158
  %162 = and i16 %130, 1
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %.loopexit19, label %.thread

.thread:                                          ; preds = %161, %132
  %164 = phi i32 [ %156, %161 ], [ %128, %132 ]
  %165 = zext nneg i32 %164 to i64
  %166 = shl nuw nsw i64 %165, 3
  %167 = getelementptr inbounds nuw i8, ptr %18, i64 %166
  store i32 %133, ptr %167, align 4, !tbaa !41
  br label %168

168:                                              ; preds = %168, %.thread
  %169 = phi i32 [ %164, %.thread ], [ %171, %168 ]
  %170 = add nuw i32 %169, %125
  %171 = and i32 %170, %17
  %172 = icmp ugt i32 %171, %47
  br i1 %172, label %168, label %.loopexit19, !prof !52, !llvm.loop !53

.loopexit19:                                      ; preds = %168, %161, %126
  %173 = phi i32 [ %128, %126 ], [ %156, %161 ], [ %171, %168 ]
  %174 = add nuw nsw i64 %127, 1
  %175 = icmp eq i64 %174, %26
  br i1 %175, label %176, label %126, !llvm.loop !55

176:                                              ; preds = %.loopexit19
  %177 = zext i32 %15 to i64
  br label %.loopexit16

.loopexit16:                                      ; preds = %101, %176
  %178 = phi i64 [ %177, %176 ], [ %60, %101 ]
  br label %179

179:                                              ; preds = %179, %.loopexit16
  %180 = phi i64 [ 0, %.loopexit16 ], [ %203, %179 ]
  %181 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 4
  %183 = load i32, ptr %182, align 4, !tbaa !41
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !5
  %187 = add i16 %186, 1
  store i16 %187, ptr %185, align 2, !tbaa !5
  %188 = zext i16 %186 to i32
  %189 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %188, i1 true)
  %190 = xor i32 %189, 31
  %191 = sub i32 %5, %190
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds nuw i8, ptr %181, i64 3
  store i8 %192, ptr %193, align 1, !tbaa !56
  %194 = and i32 %191, 255
  %195 = shl i32 %188, %194
  %196 = sub i32 %195, %15
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %181, align 4, !tbaa !57
  %198 = getelementptr inbounds nuw i8, ptr %4, i64 %184
  %199 = load i8, ptr %198, align 1, !tbaa !9
  %200 = getelementptr inbounds nuw i8, ptr %181, i64 2
  store i8 %199, ptr %200, align 2, !tbaa !58
  %201 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %184
  %202 = load i32, ptr %201, align 4, !tbaa !30
  store i32 %202, ptr %182, align 4, !tbaa !41
  %203 = add nuw nsw i64 %180, 1
  %204 = icmp eq i64 %203, %178
  br i1 %204, label %.loopexit, label %179, !llvm.loop !59

.loopexit:                                        ; preds = %179, %11
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
  br i1 %48, label %.preheader, label %116

.loopexit16:                                      ; preds = %.loopexit15, %15
  %49 = lshr i32 %10, 1
  %50 = lshr i32 %10, 3
  %51 = add nuw nsw i32 %50, 3
  %52 = add nuw nsw i32 %51, %49
  %53 = zext nneg i32 %12 to i64
  %54 = zext nneg i32 %52 to i64
  %55 = zext i32 %10 to i64
  %56 = shl nuw nsw i64 %54, 1
  br label %96

.preheader:                                       ; preds = %46, %.loopexit15
  %57 = phi i64 [ %93, %.loopexit15 ], [ 0, %46 ]
  %58 = phi i64 [ %92, %.loopexit15 ], [ 0, %46 ]
  %59 = phi i64 [ %94, %.loopexit15 ], [ 0, %46 ]
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
  br i1 %70, label %.preheader53.preheader, label %71

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
  br i1 %86, label %.loopexit15, label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %83, %64
  %.ph = phi i64 [ 8, %64 ], [ %85, %83 ]
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.preheader, %.preheader53
  %87 = phi i64 [ %89, %.preheader53 ], [ %.ph, %.preheader53.preheader ]
  %88 = getelementptr inbounds nuw i8, ptr %62, i64 %87
  store i64 %59, ptr %88, align 1, !tbaa !45
  %89 = add nuw nsw i64 %87, 8
  %90 = icmp samesign ult i64 %89, %65
  br i1 %90, label %.preheader53, label %.loopexit15, !llvm.loop !61

.loopexit15:                                      ; preds = %.preheader53, %83, %.preheader
  %91 = sext i16 %61 to i64
  %92 = add i64 %58, %91
  %93 = add nuw nsw i64 %57, 1
  %94 = add i64 %59, 72340172838076673
  %95 = icmp eq i64 %93, %21
  br i1 %95, label %.loopexit16, label %.preheader, !llvm.loop !50

96:                                               ; preds = %96, %.loopexit16
  %97 = phi i64 [ 0, %.loopexit16 ], [ %114, %96 ]
  %98 = phi i64 [ 0, %.loopexit16 ], [ %113, %96 ]
  %99 = getelementptr inbounds nuw i8, ptr %11, i64 %97
  %100 = and i64 %98, %53
  %101 = load i8, ptr %99, align 1, !tbaa !9
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i64 %100, 3
  %104 = getelementptr inbounds nuw i8, ptr %13, i64 %103
  store i32 %102, ptr %104, align 4, !tbaa !41
  %105 = add nuw nsw i64 %98, %54
  %106 = and i64 %105, %53
  %107 = getelementptr inbounds nuw i8, ptr %99, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i64 %106, 3
  %111 = getelementptr inbounds nuw i8, ptr %13, i64 %110
  store i32 %109, ptr %111, align 4, !tbaa !41
  %112 = add nuw nsw i64 %98, %56
  %113 = and i64 %112, %53
  %114 = add nuw nsw i64 %97, 2
  %115 = icmp samesign ult i64 %114, %55
  br i1 %115, label %96, label %.loopexit, !llvm.loop !51

116:                                              ; preds = %46
  %117 = lshr i32 %10, 3
  %118 = lshr i32 %10, 1
  %119 = add nuw nsw i32 %117, 3
  %120 = add nuw nsw i32 %119, %118
  br label %121

121:                                              ; preds = %.loopexit17, %116
  %122 = phi i64 [ 0, %116 ], [ %169, %.loopexit17 ]
  %123 = phi i32 [ 0, %116 ], [ %168, %.loopexit17 ]
  %124 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %122
  %125 = load i16, ptr %124, align 2, !tbaa !5
  %126 = icmp sgt i16 %125, 0
  br i1 %126, label %127, label %.loopexit17

127:                                              ; preds = %121
  %128 = trunc nuw i64 %122 to i32
  %129 = icmp eq i16 %125, 1
  br i1 %129, label %.thread, label %130

130:                                              ; preds = %127
  %131 = and i16 %125, 32766
  %132 = zext nneg i16 %131 to i32
  br label %133

133:                                              ; preds = %153, %130
  %134 = phi i32 [ %123, %130 ], [ %151, %153 ]
  %135 = phi i32 [ 0, %130 ], [ %154, %153 ]
  %136 = zext nneg i32 %134 to i64
  %137 = shl nuw nsw i64 %136, 3
  %138 = getelementptr inbounds nuw i8, ptr %13, i64 %137
  store i32 %128, ptr %138, align 4, !tbaa !41
  br label %139

139:                                              ; preds = %139, %133
  %140 = phi i32 [ %134, %133 ], [ %142, %139 ]
  %141 = add nuw i32 %140, %120
  %142 = and i32 %141, %12
  %143 = icmp ugt i32 %142, %42
  br i1 %143, label %139, label %144, !prof !52, !llvm.loop !53

144:                                              ; preds = %139
  %145 = zext nneg i32 %142 to i64
  %146 = shl nuw nsw i64 %145, 3
  %147 = getelementptr inbounds nuw i8, ptr %13, i64 %146
  store i32 %128, ptr %147, align 4, !tbaa !41
  br label %148

148:                                              ; preds = %148, %144
  %149 = phi i32 [ %142, %144 ], [ %151, %148 ]
  %150 = add nuw i32 %149, %120
  %151 = and i32 %150, %12
  %152 = icmp ugt i32 %151, %42
  br i1 %152, label %148, label %153, !prof !52, !llvm.loop !53

153:                                              ; preds = %148
  %154 = add i32 %135, 2
  %155 = icmp eq i32 %154, %132
  br i1 %155, label %156, label %133, !llvm.loop !54

156:                                              ; preds = %153
  %157 = and i16 %125, 1
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %.loopexit17, label %.thread

.thread:                                          ; preds = %156, %127
  %159 = phi i32 [ %151, %156 ], [ %123, %127 ]
  %160 = zext nneg i32 %159 to i64
  %161 = shl nuw nsw i64 %160, 3
  %162 = getelementptr inbounds nuw i8, ptr %13, i64 %161
  store i32 %128, ptr %162, align 4, !tbaa !41
  br label %163

163:                                              ; preds = %163, %.thread
  %164 = phi i32 [ %159, %.thread ], [ %166, %163 ]
  %165 = add nuw i32 %164, %120
  %166 = and i32 %165, %12
  %167 = icmp ugt i32 %166, %42
  br i1 %167, label %163, label %.loopexit17, !prof !52, !llvm.loop !53

.loopexit17:                                      ; preds = %163, %156, %121
  %168 = phi i32 [ %123, %121 ], [ %151, %156 ], [ %166, %163 ]
  %169 = add nuw nsw i64 %122, 1
  %170 = icmp eq i64 %169, %21
  br i1 %170, label %.loopexit.loopexit23, label %121, !llvm.loop !55

.loopexit.loopexit23:                             ; preds = %.loopexit17
  %.pre = zext i32 %10 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %96, %.loopexit.loopexit23
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit23 ], [ %55, %96 ]
  br label %171

171:                                              ; preds = %171, %.loopexit
  %172 = phi i64 [ 0, %.loopexit ], [ %195, %171 ]
  %173 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %172
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 4
  %175 = load i32, ptr %174, align 4, !tbaa !41
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !5
  %179 = add i16 %178, 1
  store i16 %179, ptr %177, align 2, !tbaa !5
  %180 = zext i16 %178 to i32
  %181 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %180, i1 true)
  %182 = xor i32 %181, 31
  %183 = sub i32 %5, %182
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds nuw i8, ptr %173, i64 3
  store i8 %184, ptr %185, align 1, !tbaa !56
  %186 = and i32 %183, 255
  %187 = shl i32 %180, %186
  %188 = sub i32 %187, %10
  %189 = trunc i32 %188 to i16
  store i16 %189, ptr %173, align 4, !tbaa !57
  %190 = getelementptr inbounds nuw i8, ptr %4, i64 %176
  %191 = load i8, ptr %190, align 1, !tbaa !9
  %192 = getelementptr inbounds nuw i8, ptr %173, i64 2
  store i8 %191, ptr %192, align 2, !tbaa !58
  %193 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %176
  %194 = load i32, ptr %193, align 4, !tbaa !30
  store i32 %194, ptr %174, align 4, !tbaa !41
  %195 = add nuw nsw i64 %172, 1
  %196 = icmp eq i64 %195, %.pre-phi
  br i1 %196, label %197, label %171, !llvm.loop !59

197:                                              ; preds = %171
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
  %160 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %46, i64 noundef %159) #18
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
  %237 = call i64 @FSE_readNCount(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %171, i64 noundef %236) #18
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
  switch i32 %2, label %default.unreachable5 [
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
  %104 = call i64 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %3, i64 noundef %4) #18
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

default.unreachable5:                             ; preds = %10
  unreachable

113:                                              ; preds = %111, %37, %33, %31, %30, %19, %16, %14
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
  br i1 %20, label %2309, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef %1, i64 noundef %2, i32 noundef %5)
  %23 = icmp ult i64 %22, -119
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 %22
  %25 = sub nsw i64 %4, %22
  br i1 %23, label %26, label %2309

26:                                               ; preds = %21
  %27 = load i32, ptr %11, align 8, !tbaa !15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %31 = load i32, ptr %30, align 8, !tbaa !28
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %29, %26
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
  br i1 %87, label %2300, label %88

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
  br i1 %115, label %2254, label %116

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
  %reass.sub184 = sub nsw i32 %199, %201
  %202 = add nsw i32 %reass.sub184, 41
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

443:                                              ; preds = %1567
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !86
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

641:                                              ; preds = %1549, %382
  %642 = phi ptr [ %369, %382 ], [ %863, %1549 ]
  %643 = phi i32 [ %371, %382 ], [ %864, %1549 ]
  %644 = phi i64 [ %370, %382 ], [ %865, %1549 ]
  %645 = phi i64 [ %373, %382 ], [ %735, %1549 ]
  %646 = phi i64 [ %374, %382 ], [ %733, %1549 ]
  %647 = phi i64 [ %375, %382 ], [ %734, %1549 ]
  %648 = phi i64 [ %376, %382 ], [ %866, %1549 ]
  %649 = phi i64 [ %377, %382 ], [ %867, %1549 ]
  %650 = phi i64 [ %378, %382 ], [ %868, %1549 ]
  %651 = phi ptr [ %1, %382 ], [ %1552, %1549 ]
  %652 = phi ptr [ %109, %382 ], [ %1551, %1549 ]
  %653 = phi i32 [ %380, %382 ], [ %1554, %1549 ]
  %654 = phi i64 [ %379, %382 ], [ %1553, %1549 ]
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
  br i1 %870, label %871, label %1363

871:                                              ; preds = %862
  %872 = load ptr, ptr %7, align 8, !tbaa !38
  %873 = and i32 %653, 7
  %874 = zext nneg i32 %873 to i64
  %875 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %874
  %876 = load i64, ptr %875, align 8, !tbaa !92
  %877 = getelementptr inbounds nuw i8, ptr %872, i64 %876
  %878 = load ptr, ptr %108, align 8, !tbaa !34
  %879 = icmp ugt ptr %877, %878
  br i1 %879, label %880, label %1198

880:                                              ; preds = %871
  %881 = ptrtoint ptr %878 to i64
  %882 = ptrtoint ptr %872 to i64
  %883 = sub i64 %881, %882
  %884 = icmp eq ptr %878, %872
  br i1 %884, label %1020, label %885

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
  br i1 %894, label %895, label %944

895:                                              ; preds = %889
  %896 = add i64 %890, %881
  %897 = add i64 %886, 1
  %898 = tail call i64 @llvm.umax.i64(i64 %896, i64 %897)
  %899 = sub i64 %898, %886
  %900 = icmp ult i64 %899, 4
  %901 = icmp ult i64 %890, 32
  %902 = or i1 %901, %900
  br i1 %902, label %.preheader356.preheader, label %903

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
  br i1 %923, label %.preheader356.preheader, label %924

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
  br i1 %937, label %.loopexit155.i, label %.preheader356.preheader

.preheader356.preheader:                          ; preds = %934, %919, %895
  %.ph475 = phi ptr [ %651, %895 ], [ %920, %919 ], [ %935, %934 ]
  %.ph476 = phi ptr [ %872, %895 ], [ %921, %919 ], [ %936, %934 ]
  br label %.preheader356

.preheader356:                                    ; preds = %.preheader356.preheader, %.preheader356
  %938 = phi ptr [ %942, %.preheader356 ], [ %.ph475, %.preheader356.preheader ]
  %939 = phi ptr [ %940, %.preheader356 ], [ %.ph476, %.preheader356.preheader ]
  %940 = getelementptr inbounds nuw i8, ptr %939, i64 1
  %941 = load i8, ptr %939, align 1, !tbaa !9
  %942 = getelementptr inbounds nuw i8, ptr %938, i64 1
  store i8 %941, ptr %938, align 1, !tbaa !9
  %943 = icmp ult ptr %942, %891
  br i1 %943, label %.preheader356, label %.loopexit155.i, !llvm.loop !96

944:                                              ; preds = %889
  %945 = icmp sgt i64 %883, 31
  %946 = icmp samesign ult i64 %890, -16
  %947 = and i1 %946, %945
  br i1 %947, label %948, label %968

948:                                              ; preds = %944
  %949 = getelementptr inbounds i8, ptr %891, i64 -32
  %950 = add nsw i64 %883, -32
  %951 = getelementptr inbounds nuw i8, ptr %651, i64 %950
  %952 = load <2 x i64>, ptr %872, align 1, !tbaa !9
  store <2 x i64> %952, ptr %651, align 1, !tbaa !9
  %953 = icmp samesign ult i64 %883, 49
  br i1 %953, label %.loopexit157.i, label %954

954:                                              ; preds = %948
  %955 = getelementptr inbounds nuw i8, ptr %651, i64 16
  br label %956

956:                                              ; preds = %956, %954
  %957 = phi ptr [ %955, %954 ], [ %964, %956 ]
  %958 = phi ptr [ %872, %954 ], [ %962, %956 ]
  %959 = getelementptr inbounds nuw i8, ptr %958, i64 16
  %960 = load <2 x i64>, ptr %959, align 1, !tbaa !9
  store <2 x i64> %960, ptr %957, align 1, !tbaa !9
  %961 = getelementptr inbounds nuw i8, ptr %957, i64 16
  %962 = getelementptr inbounds nuw i8, ptr %958, i64 32
  %963 = load <2 x i64>, ptr %962, align 1, !tbaa !9
  store <2 x i64> %963, ptr %961, align 1, !tbaa !9
  %964 = getelementptr inbounds nuw i8, ptr %957, i64 32
  %965 = icmp ult ptr %964, %951
  br i1 %965, label %956, label %.loopexit157.i, !llvm.loop !97

.loopexit157.i:                                   ; preds = %956, %948
  %966 = getelementptr inbounds nuw i8, ptr %872, i64 %950
  %.pre251.i = ptrtoint ptr %949 to i64
  %.pre253.i = ptrtoint ptr %966 to i64
  %.pre255.i = sub i64 %.pre251.i, %.pre253.i
  %967 = icmp ult i64 %.pre255.i, 32
  br label %968

968:                                              ; preds = %.loopexit157.i, %944
  %.pre-phi256.i = phi i1 [ %967, %.loopexit157.i ], [ false, %944 ]
  %.pre-phi252.i = phi i64 [ %.pre251.i, %.loopexit157.i ], [ %886, %944 ]
  %969 = phi ptr [ %949, %.loopexit157.i ], [ %651, %944 ]
  %970 = phi ptr [ %966, %.loopexit157.i ], [ %872, %944 ]
  %971 = add i64 %890, %881
  %972 = add nuw i64 %.pre-phi252.i, 1
  %973 = tail call i64 @llvm.umax.i64(i64 %971, i64 %972)
  %974 = sub i64 %973, %.pre-phi252.i
  %975 = icmp ult i64 %974, 4
  %976 = select i1 %975, i1 true, i1 %.pre-phi256.i
  br i1 %976, label %.preheader359.preheader, label %977

977:                                              ; preds = %968
  %978 = icmp ult i64 %974, 32
  br i1 %978, label %998, label %979

979:                                              ; preds = %977
  %980 = and i64 %974, -32
  br label %981

981:                                              ; preds = %981, %979
  %982 = phi i64 [ 0, %979 ], [ %989, %981 ]
  %983 = getelementptr i8, ptr %969, i64 %982
  %984 = getelementptr i8, ptr %970, i64 %982
  %985 = getelementptr i8, ptr %984, i64 16
  %986 = load <16 x i8>, ptr %984, align 1, !tbaa !9
  %987 = load <16 x i8>, ptr %985, align 1, !tbaa !9
  %988 = getelementptr i8, ptr %983, i64 16
  store <16 x i8> %986, ptr %983, align 1, !tbaa !9
  store <16 x i8> %987, ptr %988, align 1, !tbaa !9
  %989 = add nuw i64 %982, 32
  %990 = icmp eq i64 %989, %980
  br i1 %990, label %991, label %981, !llvm.loop !98

991:                                              ; preds = %981
  %992 = icmp eq i64 %974, %980
  br i1 %992, label %.loopexit155.i, label %993

993:                                              ; preds = %991
  %994 = getelementptr i8, ptr %969, i64 %980
  %995 = getelementptr i8, ptr %970, i64 %980
  %996 = and i64 %974, 28
  %997 = icmp eq i64 %996, 0
  br i1 %997, label %.preheader359.preheader, label %998

998:                                              ; preds = %993, %977
  %999 = phi i64 [ %980, %993 ], [ 0, %977 ]
  %1000 = and i64 %974, -4
  br label %1001

1001:                                             ; preds = %1001, %998
  %1002 = phi i64 [ %999, %998 ], [ %1006, %1001 ]
  %1003 = getelementptr i8, ptr %969, i64 %1002
  %1004 = getelementptr i8, ptr %970, i64 %1002
  %1005 = load <4 x i8>, ptr %1004, align 1, !tbaa !9
  store <4 x i8> %1005, ptr %1003, align 1, !tbaa !9
  %1006 = add nuw i64 %1002, 4
  %1007 = icmp eq i64 %1006, %1000
  br i1 %1007, label %1008, label %1001, !llvm.loop !99

1008:                                             ; preds = %1001
  %1009 = getelementptr i8, ptr %969, i64 %1000
  %1010 = getelementptr i8, ptr %970, i64 %1000
  %1011 = icmp eq i64 %974, %1000
  br i1 %1011, label %.loopexit155.i, label %.preheader359.preheader

.preheader359.preheader:                          ; preds = %1008, %993, %968
  %.ph477 = phi ptr [ %969, %968 ], [ %994, %993 ], [ %1009, %1008 ]
  %.ph478 = phi ptr [ %970, %968 ], [ %995, %993 ], [ %1010, %1008 ]
  br label %.preheader359

.preheader359:                                    ; preds = %.preheader359.preheader, %.preheader359
  %1012 = phi ptr [ %1016, %.preheader359 ], [ %.ph477, %.preheader359.preheader ]
  %1013 = phi ptr [ %1014, %.preheader359 ], [ %.ph478, %.preheader359.preheader ]
  %1014 = getelementptr inbounds nuw i8, ptr %1013, i64 1
  %1015 = load i8, ptr %1013, align 1, !tbaa !9
  %1016 = getelementptr inbounds nuw i8, ptr %1012, i64 1
  store i8 %1015, ptr %1012, align 1, !tbaa !9
  %1017 = icmp ult ptr %1016, %891
  br i1 %1017, label %.preheader359, label %.loopexit155.i, !llvm.loop !100

.loopexit155.i:                                   ; preds = %.preheader359, %.preheader356, %1008, %991, %934, %917
  %1018 = load i64, ptr %875, align 8, !tbaa !92
  %1019 = sub i64 %1018, %883
  store i64 %1019, ptr %875, align 8, !tbaa !92
  br label %1020

1020:                                             ; preds = %.loopexit155.i, %880
  %1021 = phi i64 [ %1019, %.loopexit155.i ], [ %876, %880 ]
  %1022 = phi ptr [ %891, %.loopexit155.i ], [ %651, %880 ]
  store ptr %387, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %95, align 8, !tbaa !35
  %1023 = getelementptr inbounds nuw i8, ptr %875, i64 8
  %1024 = load i64, ptr %1023, align 8
  %1025 = getelementptr inbounds nuw i8, ptr %875, i64 16
  %1026 = load i64, ptr %1025, align 8
  %1027 = sub i64 0, %1026
  %1028 = getelementptr i8, ptr %1022, i64 %1021
  %1029 = add i64 %1024, %1021
  %1030 = getelementptr i8, ptr %387, i64 %1021
  %1031 = getelementptr inbounds i8, ptr %1028, i64 %1027
  %1032 = icmp sgt i64 %1021, 65536
  %1033 = getelementptr inbounds nuw i8, ptr %1022, i64 %1029
  %1034 = icmp ugt ptr %1033, %384
  %1035 = select i1 %1032, i1 true, i1 %1034
  br i1 %1035, label %1039, label %1036, !prof !101

1036:                                             ; preds = %1020
  %1037 = load <2 x i64>, ptr %387, align 1, !tbaa !9
  store <2 x i64> %1037, ptr %1022, align 1, !tbaa !9
  %1038 = icmp ugt i64 %1021, 16
  br i1 %1038, label %1041, label %.loopexit154.i, !prof !52

1039:                                             ; preds = %1020
  %1040 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1022, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %875, ptr noundef nonnull %7, ptr noundef nonnull %388, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit151.i

1041:                                             ; preds = %1036
  %1042 = getelementptr inbounds nuw i8, ptr %1022, i64 16
  %1043 = add i64 %1021, -16
  %1044 = load <2 x i64>, ptr %389, align 1, !tbaa !9
  store <2 x i64> %1044, ptr %1042, align 1, !tbaa !9
  %1045 = icmp ult i64 %1043, 17
  br i1 %1045, label %.loopexit154.i, label %1046

1046:                                             ; preds = %1041
  %1047 = getelementptr inbounds nuw i8, ptr %1022, i64 32
  br label %1048

1048:                                             ; preds = %1048, %1046
  %1049 = phi ptr [ %1047, %1046 ], [ %1056, %1048 ]
  %1050 = phi ptr [ %389, %1046 ], [ %1054, %1048 ]
  %1051 = getelementptr inbounds nuw i8, ptr %1050, i64 16
  %1052 = load <2 x i64>, ptr %1051, align 1, !tbaa !9
  store <2 x i64> %1052, ptr %1049, align 1, !tbaa !9
  %1053 = getelementptr inbounds nuw i8, ptr %1049, i64 16
  %1054 = getelementptr inbounds nuw i8, ptr %1050, i64 32
  %1055 = load <2 x i64>, ptr %1054, align 1, !tbaa !9
  store <2 x i64> %1055, ptr %1053, align 1, !tbaa !9
  %1056 = getelementptr inbounds nuw i8, ptr %1049, i64 32
  %1057 = icmp ult ptr %1056, %1028
  br i1 %1057, label %1048, label %.loopexit154.i, !llvm.loop !97

.loopexit154.i:                                   ; preds = %1048, %1041, %1036
  store ptr %1030, ptr %7, align 8, !tbaa !38
  %1058 = ptrtoint ptr %1028 to i64
  %1059 = sub i64 %1058, %132
  %1060 = icmp ugt i64 %1026, %1059
  br i1 %1060, label %1061, label %1074

1061:                                             ; preds = %.loopexit154.i
  %1062 = sub i64 %1058, %385
  %1063 = icmp ugt i64 %1026, %1062
  br i1 %1063, label %.loopexit149.i, label %1064, !prof !52

1064:                                             ; preds = %1061
  %1065 = ptrtoint ptr %1031 to i64
  %1066 = sub i64 %1065, %132
  %1067 = getelementptr inbounds i8, ptr %114, i64 %1066
  %1068 = add i64 %1066, %1024
  %1069 = icmp sgt i64 %1068, 0
  br i1 %1069, label %1071, label %1070

1070:                                             ; preds = %1064
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1028, ptr align 1 %1067, i64 %1024, i1 false)
  br label %.loopexit151.i

1071:                                             ; preds = %1064
  %1072 = sub nsw i64 0, %1066
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1028, ptr align 1 %1067, i64 %1072, i1 false)
  %1073 = getelementptr inbounds nuw i8, ptr %1028, i64 %1072
  br label %1074

1074:                                             ; preds = %1071, %.loopexit154.i
  %1075 = phi i64 [ %1068, %1071 ], [ %1024, %.loopexit154.i ]
  %1076 = phi ptr [ %111, %1071 ], [ %1031, %.loopexit154.i ]
  %1077 = phi ptr [ %1073, %1071 ], [ %1028, %.loopexit154.i ]
  %1078 = icmp ugt i64 %1026, 15
  br i1 %1078, label %1079, label %1095, !prof !87

1079:                                             ; preds = %1074
  %1080 = getelementptr inbounds nuw i8, ptr %1077, i64 %1075
  %1081 = load <2 x i64>, ptr %1076, align 1, !tbaa !9
  store <2 x i64> %1081, ptr %1077, align 1, !tbaa !9
  %1082 = icmp ult i64 %1075, 17
  br i1 %1082, label %.loopexit151.i, label %1083

1083:                                             ; preds = %1079
  %1084 = getelementptr inbounds nuw i8, ptr %1077, i64 16
  br label %1085

1085:                                             ; preds = %1085, %1083
  %1086 = phi ptr [ %1084, %1083 ], [ %1093, %1085 ]
  %1087 = phi ptr [ %1076, %1083 ], [ %1091, %1085 ]
  %1088 = getelementptr inbounds nuw i8, ptr %1087, i64 16
  %1089 = load <2 x i64>, ptr %1088, align 1, !tbaa !9
  store <2 x i64> %1089, ptr %1086, align 1, !tbaa !9
  %1090 = getelementptr inbounds nuw i8, ptr %1086, i64 16
  %1091 = getelementptr inbounds nuw i8, ptr %1087, i64 32
  %1092 = load <2 x i64>, ptr %1091, align 1, !tbaa !9
  store <2 x i64> %1092, ptr %1090, align 1, !tbaa !9
  %1093 = getelementptr inbounds nuw i8, ptr %1086, i64 32
  %1094 = icmp ult ptr %1093, %1080
  br i1 %1094, label %1085, label %.loopexit151.i, !llvm.loop !97

1095:                                             ; preds = %1074
  %1096 = icmp samesign ult i64 %1026, 8
  br i1 %1096, label %1097, label %1119

1097:                                             ; preds = %1095
  %1098 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1026
  %1099 = load i32, ptr %1098, align 4, !tbaa !30
  %1100 = load i8, ptr %1076, align 1, !tbaa !9
  store i8 %1100, ptr %1077, align 1, !tbaa !9
  %1101 = getelementptr inbounds nuw i8, ptr %1076, i64 1
  %1102 = load i8, ptr %1101, align 1, !tbaa !9
  %1103 = getelementptr inbounds nuw i8, ptr %1077, i64 1
  store i8 %1102, ptr %1103, align 1, !tbaa !9
  %1104 = getelementptr inbounds nuw i8, ptr %1076, i64 2
  %1105 = load i8, ptr %1104, align 1, !tbaa !9
  %1106 = getelementptr inbounds nuw i8, ptr %1077, i64 2
  store i8 %1105, ptr %1106, align 1, !tbaa !9
  %1107 = getelementptr inbounds nuw i8, ptr %1076, i64 3
  %1108 = load i8, ptr %1107, align 1, !tbaa !9
  %1109 = getelementptr inbounds nuw i8, ptr %1077, i64 3
  store i8 %1108, ptr %1109, align 1, !tbaa !9
  %1110 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1026
  %1111 = load i32, ptr %1110, align 4, !tbaa !30
  %1112 = zext i32 %1111 to i64
  %1113 = getelementptr inbounds nuw i8, ptr %1076, i64 %1112
  %1114 = getelementptr inbounds nuw i8, ptr %1077, i64 4
  %1115 = load i32, ptr %1113, align 1
  store i32 %1115, ptr %1114, align 1
  %1116 = sext i32 %1099 to i64
  %1117 = sub nsw i64 0, %1116
  %1118 = getelementptr inbounds i8, ptr %1113, i64 %1117
  br label %1121

1119:                                             ; preds = %1095
  %1120 = load i64, ptr %1076, align 1
  store i64 %1120, ptr %1077, align 1
  br label %1121

1121:                                             ; preds = %1119, %1097
  %1122 = phi ptr [ %1118, %1097 ], [ %1076, %1119 ]
  %1123 = getelementptr inbounds nuw i8, ptr %1122, i64 8
  %1124 = getelementptr inbounds nuw i8, ptr %1077, i64 8
  %1125 = icmp ugt i64 %1075, 8
  br i1 %1125, label %1126, label %.loopexit151.i

1126:                                             ; preds = %1121
  %1127 = ptrtoint ptr %1124 to i64
  %1128 = ptrtoint ptr %1123 to i64
  %1129 = sub i64 %1127, %1128
  %1130 = getelementptr i8, ptr %1077, i64 %1075
  %1131 = icmp slt i64 %1129, 16
  br i1 %1131, label %1132, label %1172

1132:                                             ; preds = %1126
  %1133 = add i64 %1024, %132
  %1134 = tail call i64 @llvm.umin.i64(i64 %1026, i64 %1059)
  %1135 = tail call i64 @llvm.umax.i64(i64 %1026, i64 %1059)
  %1136 = sub i64 %1133, %1026
  %1137 = add i64 %1136, %1134
  %1138 = add i64 %1137, %1135
  %1139 = add i64 %1135, %391
  %1140 = tail call i64 @llvm.umax.i64(i64 %1138, i64 %1139)
  %1141 = add i64 %1135, %132
  %reass.sub186 = sub i64 %1140, %1141
  %1142 = add i64 %reass.sub186, -9
  %1143 = lshr i64 %1142, 3
  %1144 = add nuw nsw i64 %1143, 1
  %1145 = icmp ult i64 %1142, 24
  %1146 = icmp ult i64 %1129, 32
  %1147 = or i1 %1145, %1146
  br i1 %1147, label %.preheader351.preheader, label %1148

1148:                                             ; preds = %1132
  %1149 = and i64 %1144, 4611686018427387900
  br label %1150

1150:                                             ; preds = %1150, %1148
  %1151 = phi i64 [ 0, %1148 ], [ %1159, %1150 ]
  %1152 = shl i64 %1151, 3
  %1153 = getelementptr i8, ptr %1124, i64 %1152
  %1154 = getelementptr i8, ptr %1123, i64 %1152
  %1155 = getelementptr i8, ptr %1154, i64 16
  %1156 = load <2 x i64>, ptr %1154, align 1
  %1157 = load <2 x i64>, ptr %1155, align 1
  %1158 = getelementptr i8, ptr %1153, i64 16
  store <2 x i64> %1156, ptr %1153, align 1
  store <2 x i64> %1157, ptr %1158, align 1
  %1159 = add nuw i64 %1151, 4
  %1160 = icmp eq i64 %1159, %1149
  br i1 %1160, label %1161, label %1150, !llvm.loop !102

1161:                                             ; preds = %1150
  %1162 = shl i64 %1149, 3
  %1163 = getelementptr i8, ptr %1124, i64 %1162
  %1164 = getelementptr i8, ptr %1123, i64 %1162
  %1165 = icmp eq i64 %1144, %1149
  br i1 %1165, label %.loopexit151.i, label %.preheader351.preheader

.preheader351.preheader:                          ; preds = %1161, %1132
  %.ph471 = phi ptr [ %1124, %1132 ], [ %1163, %1161 ]
  %.ph472 = phi ptr [ %1123, %1132 ], [ %1164, %1161 ]
  br label %.preheader351

.preheader351:                                    ; preds = %.preheader351.preheader, %.preheader351
  %1166 = phi ptr [ %1169, %.preheader351 ], [ %.ph471, %.preheader351.preheader ]
  %1167 = phi ptr [ %1170, %.preheader351 ], [ %.ph472, %.preheader351.preheader ]
  %1168 = load i64, ptr %1167, align 1
  store i64 %1168, ptr %1166, align 1
  %1169 = getelementptr inbounds nuw i8, ptr %1166, i64 8
  %1170 = getelementptr inbounds nuw i8, ptr %1167, i64 8
  %1171 = icmp ult ptr %1169, %1130
  br i1 %1171, label %.preheader351, label %.loopexit151.i, !llvm.loop !103

1172:                                             ; preds = %1126
  %1173 = load <2 x i64>, ptr %1123, align 1, !tbaa !9
  store <2 x i64> %1173, ptr %1124, align 1, !tbaa !9
  %1174 = icmp ult i64 %1075, 25
  br i1 %1174, label %.loopexit151.i, label %1175

1175:                                             ; preds = %1172
  %1176 = getelementptr inbounds nuw i8, ptr %1077, i64 24
  br label %1177

1177:                                             ; preds = %1177, %1175
  %1178 = phi ptr [ %1176, %1175 ], [ %1185, %1177 ]
  %1179 = phi ptr [ %1123, %1175 ], [ %1183, %1177 ]
  %1180 = getelementptr inbounds nuw i8, ptr %1179, i64 16
  %1181 = load <2 x i64>, ptr %1180, align 1, !tbaa !9
  store <2 x i64> %1181, ptr %1178, align 1, !tbaa !9
  %1182 = getelementptr inbounds nuw i8, ptr %1178, i64 16
  %1183 = getelementptr inbounds nuw i8, ptr %1179, i64 32
  %1184 = load <2 x i64>, ptr %1183, align 1, !tbaa !9
  store <2 x i64> %1184, ptr %1182, align 1, !tbaa !9
  %1185 = getelementptr inbounds nuw i8, ptr %1178, i64 32
  %1186 = icmp ult ptr %1185, %1130
  br i1 %1186, label %1177, label %.loopexit151.i, !llvm.loop !97

.loopexit151.i:                                   ; preds = %1177, %.preheader351, %1085, %1172, %1161, %1121, %1079, %1070, %1039
  %1187 = phi i64 [ %1040, %1039 ], [ %1029, %1070 ], [ %1029, %1121 ], [ %1029, %1079 ], [ %1029, %1172 ], [ %1029, %1161 ], [ %1029, %1085 ], [ %1029, %.preheader351 ], [ %1029, %1177 ]
  %1188 = icmp ult i64 %1187, -119
  br i1 %1188, label %1189, label %.loopexit149.i

1189:                                             ; preds = %.loopexit151.i
  %1190 = add i64 %798, %654
  %1191 = icmp ugt i64 %734, %1190
  %1192 = select i1 %1191, ptr %114, ptr %111
  %1193 = getelementptr inbounds i8, ptr %1192, i64 %1190
  %1194 = sub i64 0, %734
  %1195 = getelementptr inbounds i8, ptr %1193, i64 %1194
  tail call void @llvm.prefetch.p0(ptr %1195, i32 0, i32 3, i32 1)
  %1196 = getelementptr inbounds nuw i8, ptr %1195, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1196, i32 0, i32 3, i32 1)
  store i64 %798, ptr %875, align 8, !tbaa !45
  store i64 %749, ptr %1023, align 8, !tbaa !45
  store i64 %734, ptr %1025, align 8, !tbaa !45
  %1197 = getelementptr inbounds nuw i8, ptr %1022, i64 %1187
  br label %1549

1198:                                             ; preds = %871
  %1199 = getelementptr inbounds i8, ptr %877, i64 -32
  %1200 = getelementptr inbounds nuw i8, ptr %875, i64 8
  %1201 = load i64, ptr %1200, align 8
  %1202 = getelementptr inbounds nuw i8, ptr %875, i64 16
  %1203 = load i64, ptr %1202, align 8
  %1204 = sub i64 0, %1203
  %1205 = getelementptr i8, ptr %651, i64 %876
  %1206 = add i64 %1201, %876
  %1207 = getelementptr inbounds i8, ptr %1205, i64 %1204
  %1208 = icmp ugt ptr %877, %652
  %1209 = getelementptr inbounds nuw i8, ptr %651, i64 %1206
  %1210 = icmp ugt ptr %1209, %1199
  %1211 = select i1 %1208, i1 true, i1 %1210
  br i1 %1211, label %1215, label %1212, !prof !101

1212:                                             ; preds = %1198
  %1213 = load <2 x i64>, ptr %872, align 1, !tbaa !9
  store <2 x i64> %1213, ptr %651, align 1, !tbaa !9
  %1214 = icmp ugt i64 %876, 16
  br i1 %1214, label %1217, label %.loopexit161.i, !prof !52

1215:                                             ; preds = %1198
  %1216 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %651, ptr noundef %105, ptr noundef nonnull %1199, ptr noundef nonnull byval(%struct.seq_t) align 8 %875, ptr noundef nonnull %7, ptr noundef %652, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit158.i

1217:                                             ; preds = %1212
  %1218 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %1219 = getelementptr inbounds nuw i8, ptr %872, i64 16
  %1220 = load <2 x i64>, ptr %1219, align 1, !tbaa !9
  store <2 x i64> %1220, ptr %1218, align 1, !tbaa !9
  %1221 = icmp ult i64 %876, 33
  br i1 %1221, label %.loopexit161.i, label %1222

1222:                                             ; preds = %1217
  %1223 = getelementptr inbounds nuw i8, ptr %651, i64 32
  br label %1224

1224:                                             ; preds = %1224, %1222
  %1225 = phi ptr [ %1223, %1222 ], [ %1232, %1224 ]
  %1226 = phi ptr [ %1219, %1222 ], [ %1230, %1224 ]
  %1227 = getelementptr inbounds nuw i8, ptr %1226, i64 16
  %1228 = load <2 x i64>, ptr %1227, align 1, !tbaa !9
  store <2 x i64> %1228, ptr %1225, align 1, !tbaa !9
  %1229 = getelementptr inbounds nuw i8, ptr %1225, i64 16
  %1230 = getelementptr inbounds nuw i8, ptr %1226, i64 32
  %1231 = load <2 x i64>, ptr %1230, align 1, !tbaa !9
  store <2 x i64> %1231, ptr %1229, align 1, !tbaa !9
  %1232 = getelementptr inbounds nuw i8, ptr %1225, i64 32
  %1233 = icmp ult ptr %1232, %1205
  br i1 %1233, label %1224, label %.loopexit161.i, !llvm.loop !97

.loopexit161.i:                                   ; preds = %1224, %1217, %1212
  store ptr %877, ptr %7, align 8, !tbaa !38
  %1234 = ptrtoint ptr %1205 to i64
  %1235 = sub i64 %1234, %132
  %1236 = icmp ugt i64 %1203, %1235
  br i1 %1236, label %1237, label %1250

1237:                                             ; preds = %.loopexit161.i
  %1238 = sub i64 %1234, %385
  %1239 = icmp ugt i64 %1203, %1238
  br i1 %1239, label %.loopexit149.i, label %1240, !prof !52

1240:                                             ; preds = %1237
  %1241 = ptrtoint ptr %1207 to i64
  %1242 = sub i64 %1241, %132
  %1243 = getelementptr inbounds i8, ptr %114, i64 %1242
  %1244 = add i64 %1242, %1201
  %1245 = icmp sgt i64 %1244, 0
  br i1 %1245, label %1247, label %1246

1246:                                             ; preds = %1240
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1205, ptr align 1 %1243, i64 %1201, i1 false)
  br label %.loopexit158.i

1247:                                             ; preds = %1240
  %1248 = sub nsw i64 0, %1242
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1205, ptr align 1 %1243, i64 %1248, i1 false)
  %1249 = getelementptr inbounds nuw i8, ptr %1205, i64 %1248
  br label %1250

1250:                                             ; preds = %1247, %.loopexit161.i
  %1251 = phi i64 [ %1244, %1247 ], [ %1201, %.loopexit161.i ]
  %1252 = phi ptr [ %111, %1247 ], [ %1207, %.loopexit161.i ]
  %1253 = phi ptr [ %1249, %1247 ], [ %1205, %.loopexit161.i ]
  %1254 = icmp ugt i64 %1203, 15
  br i1 %1254, label %1255, label %1271, !prof !87

1255:                                             ; preds = %1250
  %1256 = getelementptr inbounds nuw i8, ptr %1253, i64 %1251
  %1257 = load <2 x i64>, ptr %1252, align 1, !tbaa !9
  store <2 x i64> %1257, ptr %1253, align 1, !tbaa !9
  %1258 = icmp ult i64 %1251, 17
  br i1 %1258, label %.loopexit158.i, label %1259

1259:                                             ; preds = %1255
  %1260 = getelementptr inbounds nuw i8, ptr %1253, i64 16
  br label %1261

1261:                                             ; preds = %1261, %1259
  %1262 = phi ptr [ %1260, %1259 ], [ %1269, %1261 ]
  %1263 = phi ptr [ %1252, %1259 ], [ %1267, %1261 ]
  %1264 = getelementptr inbounds nuw i8, ptr %1263, i64 16
  %1265 = load <2 x i64>, ptr %1264, align 1, !tbaa !9
  store <2 x i64> %1265, ptr %1262, align 1, !tbaa !9
  %1266 = getelementptr inbounds nuw i8, ptr %1262, i64 16
  %1267 = getelementptr inbounds nuw i8, ptr %1263, i64 32
  %1268 = load <2 x i64>, ptr %1267, align 1, !tbaa !9
  store <2 x i64> %1268, ptr %1266, align 1, !tbaa !9
  %1269 = getelementptr inbounds nuw i8, ptr %1262, i64 32
  %1270 = icmp ult ptr %1269, %1256
  br i1 %1270, label %1261, label %.loopexit158.i, !llvm.loop !97

1271:                                             ; preds = %1250
  %1272 = icmp samesign ult i64 %1203, 8
  br i1 %1272, label %1273, label %1295

1273:                                             ; preds = %1271
  %1274 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1203
  %1275 = load i32, ptr %1274, align 4, !tbaa !30
  %1276 = load i8, ptr %1252, align 1, !tbaa !9
  store i8 %1276, ptr %1253, align 1, !tbaa !9
  %1277 = getelementptr inbounds nuw i8, ptr %1252, i64 1
  %1278 = load i8, ptr %1277, align 1, !tbaa !9
  %1279 = getelementptr inbounds nuw i8, ptr %1253, i64 1
  store i8 %1278, ptr %1279, align 1, !tbaa !9
  %1280 = getelementptr inbounds nuw i8, ptr %1252, i64 2
  %1281 = load i8, ptr %1280, align 1, !tbaa !9
  %1282 = getelementptr inbounds nuw i8, ptr %1253, i64 2
  store i8 %1281, ptr %1282, align 1, !tbaa !9
  %1283 = getelementptr inbounds nuw i8, ptr %1252, i64 3
  %1284 = load i8, ptr %1283, align 1, !tbaa !9
  %1285 = getelementptr inbounds nuw i8, ptr %1253, i64 3
  store i8 %1284, ptr %1285, align 1, !tbaa !9
  %1286 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1203
  %1287 = load i32, ptr %1286, align 4, !tbaa !30
  %1288 = zext i32 %1287 to i64
  %1289 = getelementptr inbounds nuw i8, ptr %1252, i64 %1288
  %1290 = getelementptr inbounds nuw i8, ptr %1253, i64 4
  %1291 = load i32, ptr %1289, align 1
  store i32 %1291, ptr %1290, align 1
  %1292 = sext i32 %1275 to i64
  %1293 = sub nsw i64 0, %1292
  %1294 = getelementptr inbounds i8, ptr %1289, i64 %1293
  br label %1297

1295:                                             ; preds = %1271
  %1296 = load i64, ptr %1252, align 1
  store i64 %1296, ptr %1253, align 1
  br label %1297

1297:                                             ; preds = %1295, %1273
  %1298 = phi ptr [ %1294, %1273 ], [ %1252, %1295 ]
  %1299 = getelementptr inbounds nuw i8, ptr %1298, i64 8
  %1300 = getelementptr inbounds nuw i8, ptr %1253, i64 8
  %1301 = icmp ugt i64 %1251, 8
  br i1 %1301, label %1302, label %.loopexit158.i

1302:                                             ; preds = %1297
  %1303 = ptrtoint ptr %1300 to i64
  %1304 = ptrtoint ptr %1299 to i64
  %1305 = sub i64 %1303, %1304
  %1306 = getelementptr i8, ptr %1253, i64 %1251
  %1307 = icmp slt i64 %1305, 16
  br i1 %1307, label %1308, label %1348

1308:                                             ; preds = %1302
  %1309 = add i64 %1201, %132
  %1310 = tail call i64 @llvm.umin.i64(i64 %1203, i64 %1235)
  %1311 = tail call i64 @llvm.umax.i64(i64 %1203, i64 %1235)
  %1312 = sub i64 %1309, %1203
  %1313 = add i64 %1312, %1310
  %1314 = add i64 %1313, %1311
  %1315 = add i64 %1311, %391
  %1316 = tail call i64 @llvm.umax.i64(i64 %1314, i64 %1315)
  %1317 = add i64 %1311, %132
  %reass.sub185 = sub i64 %1316, %1317
  %1318 = add i64 %reass.sub185, -9
  %1319 = lshr i64 %1318, 3
  %1320 = add nuw nsw i64 %1319, 1
  %1321 = icmp ult i64 %1318, 24
  %1322 = icmp ult i64 %1305, 32
  %1323 = or i1 %1321, %1322
  br i1 %1323, label %.preheader363.preheader, label %1324

1324:                                             ; preds = %1308
  %1325 = and i64 %1320, 4611686018427387900
  br label %1326

1326:                                             ; preds = %1326, %1324
  %1327 = phi i64 [ 0, %1324 ], [ %1335, %1326 ]
  %1328 = shl i64 %1327, 3
  %1329 = getelementptr i8, ptr %1300, i64 %1328
  %1330 = getelementptr i8, ptr %1299, i64 %1328
  %1331 = getelementptr i8, ptr %1330, i64 16
  %1332 = load <2 x i64>, ptr %1330, align 1
  %1333 = load <2 x i64>, ptr %1331, align 1
  %1334 = getelementptr i8, ptr %1329, i64 16
  store <2 x i64> %1332, ptr %1329, align 1
  store <2 x i64> %1333, ptr %1334, align 1
  %1335 = add nuw i64 %1327, 4
  %1336 = icmp eq i64 %1335, %1325
  br i1 %1336, label %1337, label %1326, !llvm.loop !104

1337:                                             ; preds = %1326
  %1338 = shl i64 %1325, 3
  %1339 = getelementptr i8, ptr %1300, i64 %1338
  %1340 = getelementptr i8, ptr %1299, i64 %1338
  %1341 = icmp eq i64 %1320, %1325
  br i1 %1341, label %.loopexit158.i, label %.preheader363.preheader

.preheader363.preheader:                          ; preds = %1337, %1308
  %.ph480 = phi ptr [ %1300, %1308 ], [ %1339, %1337 ]
  %.ph481 = phi ptr [ %1299, %1308 ], [ %1340, %1337 ]
  br label %.preheader363

.preheader363:                                    ; preds = %.preheader363.preheader, %.preheader363
  %1342 = phi ptr [ %1345, %.preheader363 ], [ %.ph480, %.preheader363.preheader ]
  %1343 = phi ptr [ %1346, %.preheader363 ], [ %.ph481, %.preheader363.preheader ]
  %1344 = load i64, ptr %1343, align 1
  store i64 %1344, ptr %1342, align 1
  %1345 = getelementptr inbounds nuw i8, ptr %1342, i64 8
  %1346 = getelementptr inbounds nuw i8, ptr %1343, i64 8
  %1347 = icmp ult ptr %1345, %1306
  br i1 %1347, label %.preheader363, label %.loopexit158.i, !llvm.loop !105

1348:                                             ; preds = %1302
  %1349 = load <2 x i64>, ptr %1299, align 1, !tbaa !9
  store <2 x i64> %1349, ptr %1300, align 1, !tbaa !9
  %1350 = icmp ult i64 %1251, 25
  br i1 %1350, label %.loopexit158.i, label %1351

1351:                                             ; preds = %1348
  %1352 = getelementptr inbounds nuw i8, ptr %1253, i64 24
  br label %1353

1353:                                             ; preds = %1353, %1351
  %1354 = phi ptr [ %1352, %1351 ], [ %1361, %1353 ]
  %1355 = phi ptr [ %1299, %1351 ], [ %1359, %1353 ]
  %1356 = getelementptr inbounds nuw i8, ptr %1355, i64 16
  %1357 = load <2 x i64>, ptr %1356, align 1, !tbaa !9
  store <2 x i64> %1357, ptr %1354, align 1, !tbaa !9
  %1358 = getelementptr inbounds nuw i8, ptr %1354, i64 16
  %1359 = getelementptr inbounds nuw i8, ptr %1355, i64 32
  %1360 = load <2 x i64>, ptr %1359, align 1, !tbaa !9
  store <2 x i64> %1360, ptr %1358, align 1, !tbaa !9
  %1361 = getelementptr inbounds nuw i8, ptr %1354, i64 32
  %1362 = icmp ult ptr %1361, %1306
  br i1 %1362, label %1353, label %.loopexit158.i, !llvm.loop !97

1363:                                             ; preds = %862
  %1364 = and i32 %653, 7
  %1365 = zext nneg i32 %1364 to i64
  %1366 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1365
  %1367 = load i64, ptr %1366, align 8
  %1368 = getelementptr inbounds nuw i8, ptr %1366, i64 8
  %1369 = load i64, ptr %1368, align 8
  %1370 = getelementptr inbounds nuw i8, ptr %1366, i64 16
  %1371 = load i64, ptr %1370, align 8
  %1372 = sub i64 0, %1371
  %1373 = getelementptr i8, ptr %651, i64 %1367
  %1374 = add i64 %1369, %1367
  %1375 = load ptr, ptr %7, align 8, !tbaa !38
  %1376 = getelementptr inbounds nuw i8, ptr %1375, i64 %1367
  %1377 = getelementptr inbounds i8, ptr %1373, i64 %1372
  %1378 = icmp ugt ptr %1376, %652
  %1379 = getelementptr inbounds nuw i8, ptr %651, i64 %1374
  %1380 = icmp ugt ptr %1379, %384
  %1381 = select i1 %1378, i1 true, i1 %1380
  br i1 %1381, label %1385, label %1382, !prof !101

1382:                                             ; preds = %1363
  %1383 = load <2 x i64>, ptr %1375, align 1, !tbaa !9
  store <2 x i64> %1383, ptr %651, align 1, !tbaa !9
  %1384 = icmp ugt i64 %1367, 16
  br i1 %1384, label %1387, label %.loopexit165.i, !prof !52

1385:                                             ; preds = %1363
  %1386 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %651, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %1366, ptr noundef nonnull %7, ptr noundef %652, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit158.i

1387:                                             ; preds = %1382
  %1388 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %1389 = getelementptr inbounds nuw i8, ptr %1375, i64 16
  %1390 = load <2 x i64>, ptr %1389, align 1, !tbaa !9
  store <2 x i64> %1390, ptr %1388, align 1, !tbaa !9
  %1391 = icmp ult i64 %1367, 33
  br i1 %1391, label %.loopexit165.i, label %1392

1392:                                             ; preds = %1387
  %1393 = getelementptr inbounds nuw i8, ptr %651, i64 32
  br label %1394

1394:                                             ; preds = %1394, %1392
  %1395 = phi ptr [ %1393, %1392 ], [ %1402, %1394 ]
  %1396 = phi ptr [ %1389, %1392 ], [ %1400, %1394 ]
  %1397 = getelementptr inbounds nuw i8, ptr %1396, i64 16
  %1398 = load <2 x i64>, ptr %1397, align 1, !tbaa !9
  store <2 x i64> %1398, ptr %1395, align 1, !tbaa !9
  %1399 = getelementptr inbounds nuw i8, ptr %1395, i64 16
  %1400 = getelementptr inbounds nuw i8, ptr %1396, i64 32
  %1401 = load <2 x i64>, ptr %1400, align 1, !tbaa !9
  store <2 x i64> %1401, ptr %1399, align 1, !tbaa !9
  %1402 = getelementptr inbounds nuw i8, ptr %1395, i64 32
  %1403 = icmp ult ptr %1402, %1373
  br i1 %1403, label %1394, label %.loopexit165.i, !llvm.loop !97

.loopexit165.i:                                   ; preds = %1394, %1387, %1382
  store ptr %1376, ptr %7, align 8, !tbaa !38
  %1404 = ptrtoint ptr %1373 to i64
  %1405 = sub i64 %1404, %132
  %1406 = icmp ugt i64 %1371, %1405
  br i1 %1406, label %1407, label %1420

1407:                                             ; preds = %.loopexit165.i
  %1408 = sub i64 %1404, %385
  %1409 = icmp ugt i64 %1371, %1408
  br i1 %1409, label %.loopexit149.i, label %1410, !prof !52

1410:                                             ; preds = %1407
  %1411 = ptrtoint ptr %1377 to i64
  %1412 = sub i64 %1411, %132
  %1413 = getelementptr inbounds i8, ptr %114, i64 %1412
  %1414 = add i64 %1412, %1369
  %1415 = icmp sgt i64 %1414, 0
  br i1 %1415, label %1417, label %1416

1416:                                             ; preds = %1410
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1373, ptr align 1 %1413, i64 %1369, i1 false)
  br label %.loopexit158.i

1417:                                             ; preds = %1410
  %1418 = sub nsw i64 0, %1412
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1373, ptr align 1 %1413, i64 %1418, i1 false)
  %1419 = getelementptr inbounds nuw i8, ptr %1373, i64 %1418
  br label %1420

1420:                                             ; preds = %1417, %.loopexit165.i
  %1421 = phi i64 [ %1414, %1417 ], [ %1369, %.loopexit165.i ]
  %1422 = phi ptr [ %111, %1417 ], [ %1377, %.loopexit165.i ]
  %1423 = phi ptr [ %1419, %1417 ], [ %1373, %.loopexit165.i ]
  %1424 = icmp ugt i64 %1371, 15
  br i1 %1424, label %1425, label %1441, !prof !87

1425:                                             ; preds = %1420
  %1426 = getelementptr inbounds nuw i8, ptr %1423, i64 %1421
  %1427 = load <2 x i64>, ptr %1422, align 1, !tbaa !9
  store <2 x i64> %1427, ptr %1423, align 1, !tbaa !9
  %1428 = icmp ult i64 %1421, 17
  br i1 %1428, label %.loopexit158.i, label %1429

1429:                                             ; preds = %1425
  %1430 = getelementptr inbounds nuw i8, ptr %1423, i64 16
  br label %1431

1431:                                             ; preds = %1431, %1429
  %1432 = phi ptr [ %1430, %1429 ], [ %1439, %1431 ]
  %1433 = phi ptr [ %1422, %1429 ], [ %1437, %1431 ]
  %1434 = getelementptr inbounds nuw i8, ptr %1433, i64 16
  %1435 = load <2 x i64>, ptr %1434, align 1, !tbaa !9
  store <2 x i64> %1435, ptr %1432, align 1, !tbaa !9
  %1436 = getelementptr inbounds nuw i8, ptr %1432, i64 16
  %1437 = getelementptr inbounds nuw i8, ptr %1433, i64 32
  %1438 = load <2 x i64>, ptr %1437, align 1, !tbaa !9
  store <2 x i64> %1438, ptr %1436, align 1, !tbaa !9
  %1439 = getelementptr inbounds nuw i8, ptr %1432, i64 32
  %1440 = icmp ult ptr %1439, %1426
  br i1 %1440, label %1431, label %.loopexit158.i, !llvm.loop !97

1441:                                             ; preds = %1420
  %1442 = icmp samesign ult i64 %1371, 8
  br i1 %1442, label %1443, label %1465

1443:                                             ; preds = %1441
  %1444 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1371
  %1445 = load i32, ptr %1444, align 4, !tbaa !30
  %1446 = load i8, ptr %1422, align 1, !tbaa !9
  store i8 %1446, ptr %1423, align 1, !tbaa !9
  %1447 = getelementptr inbounds nuw i8, ptr %1422, i64 1
  %1448 = load i8, ptr %1447, align 1, !tbaa !9
  %1449 = getelementptr inbounds nuw i8, ptr %1423, i64 1
  store i8 %1448, ptr %1449, align 1, !tbaa !9
  %1450 = getelementptr inbounds nuw i8, ptr %1422, i64 2
  %1451 = load i8, ptr %1450, align 1, !tbaa !9
  %1452 = getelementptr inbounds nuw i8, ptr %1423, i64 2
  store i8 %1451, ptr %1452, align 1, !tbaa !9
  %1453 = getelementptr inbounds nuw i8, ptr %1422, i64 3
  %1454 = load i8, ptr %1453, align 1, !tbaa !9
  %1455 = getelementptr inbounds nuw i8, ptr %1423, i64 3
  store i8 %1454, ptr %1455, align 1, !tbaa !9
  %1456 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1371
  %1457 = load i32, ptr %1456, align 4, !tbaa !30
  %1458 = zext i32 %1457 to i64
  %1459 = getelementptr inbounds nuw i8, ptr %1422, i64 %1458
  %1460 = getelementptr inbounds nuw i8, ptr %1423, i64 4
  %1461 = load i32, ptr %1459, align 1
  store i32 %1461, ptr %1460, align 1
  %1462 = sext i32 %1445 to i64
  %1463 = sub nsw i64 0, %1462
  %1464 = getelementptr inbounds i8, ptr %1459, i64 %1463
  br label %1467

1465:                                             ; preds = %1441
  %1466 = load i64, ptr %1422, align 1
  store i64 %1466, ptr %1423, align 1
  br label %1467

1467:                                             ; preds = %1465, %1443
  %1468 = phi ptr [ %1464, %1443 ], [ %1422, %1465 ]
  %1469 = getelementptr inbounds nuw i8, ptr %1468, i64 8
  %1470 = getelementptr inbounds nuw i8, ptr %1423, i64 8
  %1471 = icmp ugt i64 %1421, 8
  br i1 %1471, label %1472, label %.loopexit158.i

1472:                                             ; preds = %1467
  %1473 = ptrtoint ptr %1470 to i64
  %1474 = ptrtoint ptr %1469 to i64
  %1475 = sub i64 %1473, %1474
  %1476 = getelementptr i8, ptr %1423, i64 %1421
  %1477 = icmp slt i64 %1475, 16
  br i1 %1477, label %1478, label %1518

1478:                                             ; preds = %1472
  %1479 = add i64 %1369, %132
  %1480 = tail call i64 @llvm.umin.i64(i64 %1371, i64 %1405)
  %1481 = tail call i64 @llvm.umax.i64(i64 %1371, i64 %1405)
  %1482 = sub i64 %1479, %1371
  %1483 = add i64 %1482, %1480
  %1484 = add i64 %1483, %1481
  %1485 = add i64 %1481, %391
  %1486 = tail call i64 @llvm.umax.i64(i64 %1484, i64 %1485)
  %1487 = add i64 %1481, %132
  %reass.sub = sub i64 %1486, %1487
  %1488 = add i64 %reass.sub, -9
  %1489 = lshr i64 %1488, 3
  %1490 = add nuw nsw i64 %1489, 1
  %1491 = icmp ult i64 %1488, 24
  %1492 = icmp ult i64 %1475, 32
  %1493 = or i1 %1491, %1492
  br i1 %1493, label %.preheader369.preheader, label %1494

1494:                                             ; preds = %1478
  %1495 = and i64 %1490, 4611686018427387900
  br label %1496

1496:                                             ; preds = %1496, %1494
  %1497 = phi i64 [ 0, %1494 ], [ %1505, %1496 ]
  %1498 = shl i64 %1497, 3
  %1499 = getelementptr i8, ptr %1470, i64 %1498
  %1500 = getelementptr i8, ptr %1469, i64 %1498
  %1501 = getelementptr i8, ptr %1500, i64 16
  %1502 = load <2 x i64>, ptr %1500, align 1
  %1503 = load <2 x i64>, ptr %1501, align 1
  %1504 = getelementptr i8, ptr %1499, i64 16
  store <2 x i64> %1502, ptr %1499, align 1
  store <2 x i64> %1503, ptr %1504, align 1
  %1505 = add nuw i64 %1497, 4
  %1506 = icmp eq i64 %1505, %1495
  br i1 %1506, label %1507, label %1496, !llvm.loop !106

1507:                                             ; preds = %1496
  %1508 = shl i64 %1495, 3
  %1509 = getelementptr i8, ptr %1470, i64 %1508
  %1510 = getelementptr i8, ptr %1469, i64 %1508
  %1511 = icmp eq i64 %1490, %1495
  br i1 %1511, label %.loopexit158.i, label %.preheader369.preheader

.preheader369.preheader:                          ; preds = %1507, %1478
  %.ph485 = phi ptr [ %1470, %1478 ], [ %1509, %1507 ]
  %.ph486 = phi ptr [ %1469, %1478 ], [ %1510, %1507 ]
  br label %.preheader369

.preheader369:                                    ; preds = %.preheader369.preheader, %.preheader369
  %1512 = phi ptr [ %1515, %.preheader369 ], [ %.ph485, %.preheader369.preheader ]
  %1513 = phi ptr [ %1516, %.preheader369 ], [ %.ph486, %.preheader369.preheader ]
  %1514 = load i64, ptr %1513, align 1
  store i64 %1514, ptr %1512, align 1
  %1515 = getelementptr inbounds nuw i8, ptr %1512, i64 8
  %1516 = getelementptr inbounds nuw i8, ptr %1513, i64 8
  %1517 = icmp ult ptr %1515, %1476
  br i1 %1517, label %.preheader369, label %.loopexit158.i, !llvm.loop !107

1518:                                             ; preds = %1472
  %1519 = load <2 x i64>, ptr %1469, align 1, !tbaa !9
  store <2 x i64> %1519, ptr %1470, align 1, !tbaa !9
  %1520 = icmp ult i64 %1421, 25
  br i1 %1520, label %.loopexit158.i, label %1521

1521:                                             ; preds = %1518
  %1522 = getelementptr inbounds nuw i8, ptr %1423, i64 24
  br label %1523

1523:                                             ; preds = %1523, %1521
  %1524 = phi ptr [ %1522, %1521 ], [ %1531, %1523 ]
  %1525 = phi ptr [ %1469, %1521 ], [ %1529, %1523 ]
  %1526 = getelementptr inbounds nuw i8, ptr %1525, i64 16
  %1527 = load <2 x i64>, ptr %1526, align 1, !tbaa !9
  store <2 x i64> %1527, ptr %1524, align 1, !tbaa !9
  %1528 = getelementptr inbounds nuw i8, ptr %1524, i64 16
  %1529 = getelementptr inbounds nuw i8, ptr %1525, i64 32
  %1530 = load <2 x i64>, ptr %1529, align 1, !tbaa !9
  store <2 x i64> %1530, ptr %1528, align 1, !tbaa !9
  %1531 = getelementptr inbounds nuw i8, ptr %1524, i64 32
  %1532 = icmp ult ptr %1531, %1476
  br i1 %1532, label %1523, label %.loopexit158.i, !llvm.loop !97

.loopexit158.i:                                   ; preds = %1523, %.preheader369, %1431, %1353, %.preheader363, %1261, %1518, %1507, %1467, %1425, %1416, %1385, %1348, %1337, %1297, %1255, %1246, %1215
  %1533 = phi i64 [ %1216, %1215 ], [ %1206, %1246 ], [ %1206, %1297 ], [ %1206, %1255 ], [ %1206, %1348 ], [ %1386, %1385 ], [ %1374, %1416 ], [ %1374, %1467 ], [ %1374, %1425 ], [ %1374, %1518 ], [ %1206, %1337 ], [ %1374, %1507 ], [ %1374, %.preheader369 ], [ %1206, %1261 ], [ %1206, %.preheader363 ], [ %1206, %1353 ], [ %1374, %1431 ], [ %1374, %1523 ]
  %1534 = icmp ult i64 %1533, -119
  br i1 %1534, label %1535, label %.loopexit149.i

1535:                                             ; preds = %.loopexit158.i
  %1536 = add i64 %798, %654
  %1537 = icmp ugt i64 %734, %1536
  %1538 = select i1 %1537, ptr %114, ptr %111
  %1539 = getelementptr inbounds i8, ptr %1538, i64 %1536
  %1540 = sub i64 0, %734
  %1541 = getelementptr inbounds i8, ptr %1539, i64 %1540
  tail call void @llvm.prefetch.p0(ptr %1541, i32 0, i32 3, i32 1)
  %1542 = getelementptr inbounds nuw i8, ptr %1541, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1542, i32 0, i32 3, i32 1)
  %1543 = and i32 %653, 7
  %1544 = zext nneg i32 %1543 to i64
  %1545 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1544
  store i64 %798, ptr %1545, align 8, !tbaa !45
  %1546 = getelementptr inbounds nuw i8, ptr %1545, i64 8
  store i64 %749, ptr %1546, align 8, !tbaa !45
  %1547 = getelementptr inbounds nuw i8, ptr %1545, i64 16
  store i64 %734, ptr %1547, align 8, !tbaa !45
  %1548 = getelementptr inbounds nuw i8, ptr %651, i64 %1533
  br label %1549

1549:                                             ; preds = %1535, %1189
  %1550 = phi i64 [ %1536, %1535 ], [ %1190, %1189 ]
  %1551 = phi ptr [ %652, %1535 ], [ %388, %1189 ]
  %1552 = phi ptr [ %1548, %1535 ], [ %1197, %1189 ]
  %1553 = add i64 %1550, %749
  %1554 = add nuw i32 %653, 1
  %1555 = icmp eq i32 %1554, %51
  br i1 %1555, label %.loopexit168.i, label %641, !llvm.loop !108

.loopexit168.i:                                   ; preds = %1549, %.loopexit169.i
  %1556 = phi i32 [ %371, %.loopexit169.i ], [ %864, %1549 ]
  %1557 = phi ptr [ %372, %.loopexit169.i ], [ %863, %1549 ]
  %1558 = phi i64 [ %373, %.loopexit169.i ], [ %735, %1549 ]
  %1559 = phi i64 [ %374, %.loopexit169.i ], [ %733, %1549 ]
  %1560 = phi i64 [ %375, %.loopexit169.i ], [ %734, %1549 ]
  %1561 = phi i32 [ %380, %.loopexit169.i ], [ %51, %1549 ]
  %1562 = phi ptr [ %109, %.loopexit169.i ], [ %1551, %1549 ]
  %1563 = phi ptr [ %1, %.loopexit169.i ], [ %1552, %1549 ]
  %1564 = icmp eq ptr %1557, %46
  %1565 = icmp eq i32 %1556, 64
  %1566 = select i1 %1564, i1 %1565, i1 false
  br i1 %1566, label %1567, label %.loopexit149.i

1567:                                             ; preds = %.loopexit168.i
  %1568 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1561, i32 %130), !nosanitize !86
  %1569 = extractvalue { i32, i1 } %1568, 1, !nosanitize !86
  br i1 %1569, label %443, label %1570, !prof !109, !nosanitize !86

1570:                                             ; preds = %1567
  %1571 = extractvalue { i32, i1 } %1568, 0
  %1572 = icmp slt i32 %1571, %51
  br i1 %1572, label %1573, label %.loopexit150.i

1573:                                             ; preds = %1570
  %1574 = getelementptr inbounds i8, ptr %105, i64 -32
  %1575 = ptrtoint ptr %112 to i64
  %1576 = ptrtoint ptr %105 to i64
  %1577 = getelementptr i8, ptr %0, i64 30372
  %1578 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %1579 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %1580 = add i64 %132, 16
  br label %1588

.loopexit150.i:                                   ; preds = %2248, %1570
  %1581 = phi ptr [ %1562, %1570 ], [ %2249, %2248 ]
  %1582 = phi ptr [ %1563, %1570 ], [ %2250, %2248 ]
  %1583 = trunc i64 %1560 to i32
  store i32 %1583, ptr %118, align 4, !tbaa !30
  %1584 = trunc i64 %1559 to i32
  store i32 %1584, ptr %122, align 4, !tbaa !30
  %1585 = trunc i64 %1558 to i32
  store i32 %1585, ptr %126, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1586 = load i32, ptr %95, align 8, !tbaa !35
  %1587 = load ptr, ptr %7, align 8, !tbaa !38
  br label %2254

1588:                                             ; preds = %2248, %1573
  %1589 = phi i32 [ %1571, %1573 ], [ %2251, %2248 ]
  %1590 = phi ptr [ %1563, %1573 ], [ %2250, %2248 ]
  %1591 = phi ptr [ %1562, %1573 ], [ %2249, %2248 ]
  %1592 = and i32 %1589, 7
  %1593 = zext nneg i32 %1592 to i64
  %1594 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1593
  %1595 = load i32, ptr %95, align 8, !tbaa !35
  %1596 = icmp eq i32 %1595, 2
  br i1 %1596, label %1597, label %2078

1597:                                             ; preds = %1588
  %1598 = load ptr, ptr %7, align 8, !tbaa !38
  %1599 = load i64, ptr %1594, align 8, !tbaa !92
  %1600 = getelementptr inbounds nuw i8, ptr %1598, i64 %1599
  %1601 = load ptr, ptr %108, align 8, !tbaa !34
  %1602 = icmp ugt ptr %1600, %1601
  br i1 %1602, label %1603, label %1913

1603:                                             ; preds = %1597
  %1604 = ptrtoint ptr %1601 to i64
  %1605 = ptrtoint ptr %1598 to i64
  %1606 = sub i64 %1604, %1605
  %1607 = icmp eq ptr %1601, %1598
  br i1 %1607, label %1743, label %1608

1608:                                             ; preds = %1603
  %1609 = ptrtoint ptr %1590 to i64
  %1610 = sub i64 %1576, %1609
  %1611 = icmp ugt i64 %1606, %1610
  br i1 %1611, label %.loopexit149.i, label %1612

1612:                                             ; preds = %1608
  %1613 = sub i64 %1609, %1605
  %1614 = getelementptr inbounds nuw i8, ptr %1590, i64 %1606
  %1615 = icmp ult i64 %1606, 8
  %1616 = icmp sgt i64 %1613, -8
  %1617 = or i1 %1616, %1615
  br i1 %1617, label %1618, label %1667

1618:                                             ; preds = %1612
  %1619 = add i64 %1613, %1604
  %1620 = add i64 %1609, 1
  %1621 = tail call i64 @llvm.umax.i64(i64 %1619, i64 %1620)
  %1622 = sub i64 %1621, %1609
  %1623 = icmp ult i64 %1622, 4
  %1624 = icmp ult i64 %1613, 32
  %1625 = or i1 %1624, %1623
  br i1 %1625, label %.preheader331.preheader, label %1626

1626:                                             ; preds = %1618
  %1627 = icmp ult i64 %1622, 32
  br i1 %1627, label %1647, label %1628

1628:                                             ; preds = %1626
  %1629 = and i64 %1622, -32
  br label %1630

1630:                                             ; preds = %1630, %1628
  %1631 = phi i64 [ 0, %1628 ], [ %1638, %1630 ]
  %1632 = getelementptr i8, ptr %1590, i64 %1631
  %1633 = getelementptr i8, ptr %1598, i64 %1631
  %1634 = getelementptr i8, ptr %1633, i64 16
  %1635 = load <16 x i8>, ptr %1633, align 1, !tbaa !9
  %1636 = load <16 x i8>, ptr %1634, align 1, !tbaa !9
  %1637 = getelementptr i8, ptr %1632, i64 16
  store <16 x i8> %1635, ptr %1632, align 1, !tbaa !9
  store <16 x i8> %1636, ptr %1637, align 1, !tbaa !9
  %1638 = add nuw i64 %1631, 32
  %1639 = icmp eq i64 %1638, %1629
  br i1 %1639, label %1640, label %1630, !llvm.loop !110

1640:                                             ; preds = %1630
  %1641 = icmp eq i64 %1622, %1629
  br i1 %1641, label %.loopexit138.i, label %1642

1642:                                             ; preds = %1640
  %1643 = getelementptr i8, ptr %1590, i64 %1629
  %1644 = getelementptr i8, ptr %1598, i64 %1629
  %1645 = and i64 %1622, 28
  %1646 = icmp eq i64 %1645, 0
  br i1 %1646, label %.preheader331.preheader, label %1647

1647:                                             ; preds = %1642, %1626
  %1648 = phi i64 [ %1629, %1642 ], [ 0, %1626 ]
  %1649 = and i64 %1622, -4
  br label %1650

1650:                                             ; preds = %1650, %1647
  %1651 = phi i64 [ %1648, %1647 ], [ %1655, %1650 ]
  %1652 = getelementptr i8, ptr %1590, i64 %1651
  %1653 = getelementptr i8, ptr %1598, i64 %1651
  %1654 = load <4 x i8>, ptr %1653, align 1, !tbaa !9
  store <4 x i8> %1654, ptr %1652, align 1, !tbaa !9
  %1655 = add nuw i64 %1651, 4
  %1656 = icmp eq i64 %1655, %1649
  br i1 %1656, label %1657, label %1650, !llvm.loop !111

1657:                                             ; preds = %1650
  %1658 = getelementptr i8, ptr %1590, i64 %1649
  %1659 = getelementptr i8, ptr %1598, i64 %1649
  %1660 = icmp eq i64 %1622, %1649
  br i1 %1660, label %.loopexit138.i, label %.preheader331.preheader

.preheader331.preheader:                          ; preds = %1657, %1642, %1618
  %.ph455 = phi ptr [ %1590, %1618 ], [ %1643, %1642 ], [ %1658, %1657 ]
  %.ph456 = phi ptr [ %1598, %1618 ], [ %1644, %1642 ], [ %1659, %1657 ]
  br label %.preheader331

.preheader331:                                    ; preds = %.preheader331.preheader, %.preheader331
  %1661 = phi ptr [ %1665, %.preheader331 ], [ %.ph455, %.preheader331.preheader ]
  %1662 = phi ptr [ %1663, %.preheader331 ], [ %.ph456, %.preheader331.preheader ]
  %1663 = getelementptr inbounds nuw i8, ptr %1662, i64 1
  %1664 = load i8, ptr %1662, align 1, !tbaa !9
  %1665 = getelementptr inbounds nuw i8, ptr %1661, i64 1
  store i8 %1664, ptr %1661, align 1, !tbaa !9
  %1666 = icmp ult ptr %1665, %1614
  br i1 %1666, label %.preheader331, label %.loopexit138.i, !llvm.loop !112

1667:                                             ; preds = %1612
  %1668 = icmp sgt i64 %1606, 31
  %1669 = icmp samesign ult i64 %1613, -16
  %1670 = and i1 %1669, %1668
  br i1 %1670, label %1671, label %1691

1671:                                             ; preds = %1667
  %1672 = getelementptr inbounds i8, ptr %1614, i64 -32
  %1673 = add nsw i64 %1606, -32
  %1674 = getelementptr inbounds nuw i8, ptr %1590, i64 %1673
  %1675 = load <2 x i64>, ptr %1598, align 1, !tbaa !9
  store <2 x i64> %1675, ptr %1590, align 1, !tbaa !9
  %1676 = icmp samesign ult i64 %1606, 49
  br i1 %1676, label %.loopexit140.i, label %1677

1677:                                             ; preds = %1671
  %1678 = getelementptr inbounds nuw i8, ptr %1590, i64 16
  br label %1679

1679:                                             ; preds = %1679, %1677
  %1680 = phi ptr [ %1678, %1677 ], [ %1687, %1679 ]
  %1681 = phi ptr [ %1598, %1677 ], [ %1685, %1679 ]
  %1682 = getelementptr inbounds nuw i8, ptr %1681, i64 16
  %1683 = load <2 x i64>, ptr %1682, align 1, !tbaa !9
  store <2 x i64> %1683, ptr %1680, align 1, !tbaa !9
  %1684 = getelementptr inbounds nuw i8, ptr %1680, i64 16
  %1685 = getelementptr inbounds nuw i8, ptr %1681, i64 32
  %1686 = load <2 x i64>, ptr %1685, align 1, !tbaa !9
  store <2 x i64> %1686, ptr %1684, align 1, !tbaa !9
  %1687 = getelementptr inbounds nuw i8, ptr %1680, i64 32
  %1688 = icmp ult ptr %1687, %1674
  br i1 %1688, label %1679, label %.loopexit140.i, !llvm.loop !97

.loopexit140.i:                                   ; preds = %1679, %1671
  %1689 = getelementptr inbounds nuw i8, ptr %1598, i64 %1673
  %.pre.i = ptrtoint ptr %1672 to i64
  %.pre247.i = ptrtoint ptr %1689 to i64
  %.pre249.i = sub i64 %.pre.i, %.pre247.i
  %1690 = icmp ult i64 %.pre249.i, 32
  br label %1691

1691:                                             ; preds = %.loopexit140.i, %1667
  %.pre-phi250.i = phi i1 [ %1690, %.loopexit140.i ], [ false, %1667 ]
  %.pre-phi.i = phi i64 [ %.pre.i, %.loopexit140.i ], [ %1609, %1667 ]
  %1692 = phi ptr [ %1672, %.loopexit140.i ], [ %1590, %1667 ]
  %1693 = phi ptr [ %1689, %.loopexit140.i ], [ %1598, %1667 ]
  %1694 = add i64 %1613, %1604
  %1695 = add nuw i64 %.pre-phi.i, 1
  %1696 = tail call i64 @llvm.umax.i64(i64 %1694, i64 %1695)
  %1697 = sub i64 %1696, %.pre-phi.i
  %1698 = icmp ult i64 %1697, 4
  %1699 = select i1 %1698, i1 true, i1 %.pre-phi250.i
  br i1 %1699, label %.preheader334.preheader, label %1700

1700:                                             ; preds = %1691
  %1701 = icmp ult i64 %1697, 32
  br i1 %1701, label %1721, label %1702

1702:                                             ; preds = %1700
  %1703 = and i64 %1697, -32
  br label %1704

1704:                                             ; preds = %1704, %1702
  %1705 = phi i64 [ 0, %1702 ], [ %1712, %1704 ]
  %1706 = getelementptr i8, ptr %1692, i64 %1705
  %1707 = getelementptr i8, ptr %1693, i64 %1705
  %1708 = getelementptr i8, ptr %1707, i64 16
  %1709 = load <16 x i8>, ptr %1707, align 1, !tbaa !9
  %1710 = load <16 x i8>, ptr %1708, align 1, !tbaa !9
  %1711 = getelementptr i8, ptr %1706, i64 16
  store <16 x i8> %1709, ptr %1706, align 1, !tbaa !9
  store <16 x i8> %1710, ptr %1711, align 1, !tbaa !9
  %1712 = add nuw i64 %1705, 32
  %1713 = icmp eq i64 %1712, %1703
  br i1 %1713, label %1714, label %1704, !llvm.loop !113

1714:                                             ; preds = %1704
  %1715 = icmp eq i64 %1697, %1703
  br i1 %1715, label %.loopexit138.i, label %1716

1716:                                             ; preds = %1714
  %1717 = getelementptr i8, ptr %1692, i64 %1703
  %1718 = getelementptr i8, ptr %1693, i64 %1703
  %1719 = and i64 %1697, 28
  %1720 = icmp eq i64 %1719, 0
  br i1 %1720, label %.preheader334.preheader, label %1721

1721:                                             ; preds = %1716, %1700
  %1722 = phi i64 [ %1703, %1716 ], [ 0, %1700 ]
  %1723 = and i64 %1697, -4
  br label %1724

1724:                                             ; preds = %1724, %1721
  %1725 = phi i64 [ %1722, %1721 ], [ %1729, %1724 ]
  %1726 = getelementptr i8, ptr %1692, i64 %1725
  %1727 = getelementptr i8, ptr %1693, i64 %1725
  %1728 = load <4 x i8>, ptr %1727, align 1, !tbaa !9
  store <4 x i8> %1728, ptr %1726, align 1, !tbaa !9
  %1729 = add nuw i64 %1725, 4
  %1730 = icmp eq i64 %1729, %1723
  br i1 %1730, label %1731, label %1724, !llvm.loop !114

1731:                                             ; preds = %1724
  %1732 = getelementptr i8, ptr %1692, i64 %1723
  %1733 = getelementptr i8, ptr %1693, i64 %1723
  %1734 = icmp eq i64 %1697, %1723
  br i1 %1734, label %.loopexit138.i, label %.preheader334.preheader

.preheader334.preheader:                          ; preds = %1731, %1716, %1691
  %.ph457 = phi ptr [ %1692, %1691 ], [ %1717, %1716 ], [ %1732, %1731 ]
  %.ph458 = phi ptr [ %1693, %1691 ], [ %1718, %1716 ], [ %1733, %1731 ]
  br label %.preheader334

.preheader334:                                    ; preds = %.preheader334.preheader, %.preheader334
  %1735 = phi ptr [ %1739, %.preheader334 ], [ %.ph457, %.preheader334.preheader ]
  %1736 = phi ptr [ %1737, %.preheader334 ], [ %.ph458, %.preheader334.preheader ]
  %1737 = getelementptr inbounds nuw i8, ptr %1736, i64 1
  %1738 = load i8, ptr %1736, align 1, !tbaa !9
  %1739 = getelementptr inbounds nuw i8, ptr %1735, i64 1
  store i8 %1738, ptr %1735, align 1, !tbaa !9
  %1740 = icmp ult ptr %1739, %1614
  br i1 %1740, label %.preheader334, label %.loopexit138.i, !llvm.loop !115

.loopexit138.i:                                   ; preds = %.preheader334, %.preheader331, %1731, %1714, %1657, %1640
  %1741 = load i64, ptr %1594, align 8, !tbaa !92
  %1742 = sub i64 %1741, %1606
  store i64 %1742, ptr %1594, align 8, !tbaa !92
  br label %1743

1743:                                             ; preds = %.loopexit138.i, %1603
  %1744 = phi i64 [ %1742, %.loopexit138.i ], [ %1599, %1603 ]
  %1745 = phi ptr [ %1614, %.loopexit138.i ], [ %1590, %1603 ]
  store ptr %1577, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %95, align 8, !tbaa !35
  %1746 = getelementptr inbounds nuw i8, ptr %1594, i64 8
  %1747 = load i64, ptr %1746, align 8
  %1748 = getelementptr inbounds nuw i8, ptr %1594, i64 16
  %1749 = load i64, ptr %1748, align 8
  %1750 = sub i64 0, %1749
  %1751 = getelementptr i8, ptr %1745, i64 %1744
  %1752 = add i64 %1747, %1744
  %1753 = getelementptr i8, ptr %1577, i64 %1744
  %1754 = getelementptr inbounds i8, ptr %1751, i64 %1750
  %1755 = icmp sgt i64 %1744, 65536
  %1756 = getelementptr inbounds nuw i8, ptr %1745, i64 %1752
  %1757 = icmp ugt ptr %1756, %1574
  %1758 = select i1 %1755, i1 true, i1 %1757
  br i1 %1758, label %1762, label %1759, !prof !101

1759:                                             ; preds = %1743
  %1760 = load <2 x i64>, ptr %1577, align 1, !tbaa !9
  store <2 x i64> %1760, ptr %1745, align 1, !tbaa !9
  %1761 = icmp ugt i64 %1744, 16
  br i1 %1761, label %1764, label %.loopexit137.i, !prof !52

1762:                                             ; preds = %1743
  %1763 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1745, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %1594, ptr noundef nonnull %7, ptr noundef nonnull %1578, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit.i

1764:                                             ; preds = %1759
  %1765 = getelementptr inbounds nuw i8, ptr %1745, i64 16
  %1766 = add i64 %1744, -16
  %1767 = load <2 x i64>, ptr %1579, align 1, !tbaa !9
  store <2 x i64> %1767, ptr %1765, align 1, !tbaa !9
  %1768 = icmp ult i64 %1766, 17
  br i1 %1768, label %.loopexit137.i, label %1769

1769:                                             ; preds = %1764
  %1770 = getelementptr inbounds nuw i8, ptr %1745, i64 32
  br label %1771

1771:                                             ; preds = %1771, %1769
  %1772 = phi ptr [ %1770, %1769 ], [ %1779, %1771 ]
  %1773 = phi ptr [ %1579, %1769 ], [ %1777, %1771 ]
  %1774 = getelementptr inbounds nuw i8, ptr %1773, i64 16
  %1775 = load <2 x i64>, ptr %1774, align 1, !tbaa !9
  store <2 x i64> %1775, ptr %1772, align 1, !tbaa !9
  %1776 = getelementptr inbounds nuw i8, ptr %1772, i64 16
  %1777 = getelementptr inbounds nuw i8, ptr %1773, i64 32
  %1778 = load <2 x i64>, ptr %1777, align 1, !tbaa !9
  store <2 x i64> %1778, ptr %1776, align 1, !tbaa !9
  %1779 = getelementptr inbounds nuw i8, ptr %1772, i64 32
  %1780 = icmp ult ptr %1779, %1751
  br i1 %1780, label %1771, label %.loopexit137.i, !llvm.loop !97

.loopexit137.i:                                   ; preds = %1771, %1764, %1759
  store ptr %1753, ptr %7, align 8, !tbaa !38
  %1781 = ptrtoint ptr %1751 to i64
  %1782 = sub i64 %1781, %132
  %1783 = icmp ugt i64 %1749, %1782
  br i1 %1783, label %1784, label %1797

1784:                                             ; preds = %.loopexit137.i
  %1785 = sub i64 %1781, %1575
  %1786 = icmp ugt i64 %1749, %1785
  br i1 %1786, label %.loopexit149.i, label %1787, !prof !52

1787:                                             ; preds = %1784
  %1788 = ptrtoint ptr %1754 to i64
  %1789 = sub i64 %1788, %132
  %1790 = getelementptr inbounds i8, ptr %114, i64 %1789
  %1791 = add i64 %1789, %1747
  %1792 = icmp sgt i64 %1791, 0
  br i1 %1792, label %1794, label %1793

1793:                                             ; preds = %1787
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1751, ptr align 1 %1790, i64 %1747, i1 false)
  br label %.loopexit.i

1794:                                             ; preds = %1787
  %1795 = sub nsw i64 0, %1789
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1751, ptr align 1 %1790, i64 %1795, i1 false)
  %1796 = getelementptr inbounds nuw i8, ptr %1751, i64 %1795
  br label %1797

1797:                                             ; preds = %1794, %.loopexit137.i
  %1798 = phi i64 [ %1791, %1794 ], [ %1747, %.loopexit137.i ]
  %1799 = phi ptr [ %111, %1794 ], [ %1754, %.loopexit137.i ]
  %1800 = phi ptr [ %1796, %1794 ], [ %1751, %.loopexit137.i ]
  %1801 = icmp ugt i64 %1749, 15
  br i1 %1801, label %1802, label %1818, !prof !87

1802:                                             ; preds = %1797
  %1803 = getelementptr inbounds nuw i8, ptr %1800, i64 %1798
  %1804 = load <2 x i64>, ptr %1799, align 1, !tbaa !9
  store <2 x i64> %1804, ptr %1800, align 1, !tbaa !9
  %1805 = icmp ult i64 %1798, 17
  br i1 %1805, label %.loopexit.i, label %1806

1806:                                             ; preds = %1802
  %1807 = getelementptr inbounds nuw i8, ptr %1800, i64 16
  br label %1808

1808:                                             ; preds = %1808, %1806
  %1809 = phi ptr [ %1807, %1806 ], [ %1816, %1808 ]
  %1810 = phi ptr [ %1799, %1806 ], [ %1814, %1808 ]
  %1811 = getelementptr inbounds nuw i8, ptr %1810, i64 16
  %1812 = load <2 x i64>, ptr %1811, align 1, !tbaa !9
  store <2 x i64> %1812, ptr %1809, align 1, !tbaa !9
  %1813 = getelementptr inbounds nuw i8, ptr %1809, i64 16
  %1814 = getelementptr inbounds nuw i8, ptr %1810, i64 32
  %1815 = load <2 x i64>, ptr %1814, align 1, !tbaa !9
  store <2 x i64> %1815, ptr %1813, align 1, !tbaa !9
  %1816 = getelementptr inbounds nuw i8, ptr %1809, i64 32
  %1817 = icmp ult ptr %1816, %1803
  br i1 %1817, label %1808, label %.loopexit.i, !llvm.loop !97

1818:                                             ; preds = %1797
  %1819 = icmp samesign ult i64 %1749, 8
  br i1 %1819, label %1820, label %1842

1820:                                             ; preds = %1818
  %1821 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1749
  %1822 = load i32, ptr %1821, align 4, !tbaa !30
  %1823 = load i8, ptr %1799, align 1, !tbaa !9
  store i8 %1823, ptr %1800, align 1, !tbaa !9
  %1824 = getelementptr inbounds nuw i8, ptr %1799, i64 1
  %1825 = load i8, ptr %1824, align 1, !tbaa !9
  %1826 = getelementptr inbounds nuw i8, ptr %1800, i64 1
  store i8 %1825, ptr %1826, align 1, !tbaa !9
  %1827 = getelementptr inbounds nuw i8, ptr %1799, i64 2
  %1828 = load i8, ptr %1827, align 1, !tbaa !9
  %1829 = getelementptr inbounds nuw i8, ptr %1800, i64 2
  store i8 %1828, ptr %1829, align 1, !tbaa !9
  %1830 = getelementptr inbounds nuw i8, ptr %1799, i64 3
  %1831 = load i8, ptr %1830, align 1, !tbaa !9
  %1832 = getelementptr inbounds nuw i8, ptr %1800, i64 3
  store i8 %1831, ptr %1832, align 1, !tbaa !9
  %1833 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1749
  %1834 = load i32, ptr %1833, align 4, !tbaa !30
  %1835 = zext i32 %1834 to i64
  %1836 = getelementptr inbounds nuw i8, ptr %1799, i64 %1835
  %1837 = getelementptr inbounds nuw i8, ptr %1800, i64 4
  %1838 = load i32, ptr %1836, align 1
  store i32 %1838, ptr %1837, align 1
  %1839 = sext i32 %1822 to i64
  %1840 = sub nsw i64 0, %1839
  %1841 = getelementptr inbounds i8, ptr %1836, i64 %1840
  br label %1844

1842:                                             ; preds = %1818
  %1843 = load i64, ptr %1799, align 1
  store i64 %1843, ptr %1800, align 1
  br label %1844

1844:                                             ; preds = %1842, %1820
  %1845 = phi ptr [ %1841, %1820 ], [ %1799, %1842 ]
  %1846 = getelementptr inbounds nuw i8, ptr %1845, i64 8
  %1847 = getelementptr inbounds nuw i8, ptr %1800, i64 8
  %1848 = icmp ugt i64 %1798, 8
  br i1 %1848, label %1849, label %.loopexit.i

1849:                                             ; preds = %1844
  %1850 = ptrtoint ptr %1847 to i64
  %1851 = ptrtoint ptr %1846 to i64
  %1852 = sub i64 %1850, %1851
  %1853 = getelementptr i8, ptr %1800, i64 %1798
  %1854 = icmp slt i64 %1852, 16
  br i1 %1854, label %1855, label %1895

1855:                                             ; preds = %1849
  %1856 = add i64 %1747, %132
  %1857 = tail call i64 @llvm.umin.i64(i64 %1749, i64 %1782)
  %1858 = tail call i64 @llvm.umax.i64(i64 %1749, i64 %1782)
  %1859 = sub i64 %1856, %1749
  %1860 = add i64 %1859, %1857
  %1861 = add i64 %1860, %1858
  %1862 = add i64 %1858, %1580
  %1863 = tail call i64 @llvm.umax.i64(i64 %1861, i64 %1862)
  %1864 = add i64 %1858, %132
  %reass.sub189 = sub i64 %1863, %1864
  %1865 = add i64 %reass.sub189, -9
  %1866 = lshr i64 %1865, 3
  %1867 = add nuw nsw i64 %1866, 1
  %1868 = icmp ult i64 %1865, 24
  %1869 = icmp ult i64 %1852, 32
  %1870 = or i1 %1868, %1869
  br i1 %1870, label %.preheader.preheader, label %1871

1871:                                             ; preds = %1855
  %1872 = and i64 %1867, 4611686018427387900
  br label %1873

1873:                                             ; preds = %1873, %1871
  %1874 = phi i64 [ 0, %1871 ], [ %1882, %1873 ]
  %1875 = shl i64 %1874, 3
  %1876 = getelementptr i8, ptr %1847, i64 %1875
  %1877 = getelementptr i8, ptr %1846, i64 %1875
  %1878 = getelementptr i8, ptr %1877, i64 16
  %1879 = load <2 x i64>, ptr %1877, align 1
  %1880 = load <2 x i64>, ptr %1878, align 1
  %1881 = getelementptr i8, ptr %1876, i64 16
  store <2 x i64> %1879, ptr %1876, align 1
  store <2 x i64> %1880, ptr %1881, align 1
  %1882 = add nuw i64 %1874, 4
  %1883 = icmp eq i64 %1882, %1872
  br i1 %1883, label %1884, label %1873, !llvm.loop !116

1884:                                             ; preds = %1873
  %1885 = shl i64 %1872, 3
  %1886 = getelementptr i8, ptr %1847, i64 %1885
  %1887 = getelementptr i8, ptr %1846, i64 %1885
  %1888 = icmp eq i64 %1867, %1872
  br i1 %1888, label %.loopexit.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1884, %1855
  %.ph = phi ptr [ %1847, %1855 ], [ %1886, %1884 ]
  %.ph452 = phi ptr [ %1846, %1855 ], [ %1887, %1884 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %1889 = phi ptr [ %1892, %.preheader ], [ %.ph, %.preheader.preheader ]
  %1890 = phi ptr [ %1893, %.preheader ], [ %.ph452, %.preheader.preheader ]
  %1891 = load i64, ptr %1890, align 1
  store i64 %1891, ptr %1889, align 1
  %1892 = getelementptr inbounds nuw i8, ptr %1889, i64 8
  %1893 = getelementptr inbounds nuw i8, ptr %1890, i64 8
  %1894 = icmp ult ptr %1892, %1853
  br i1 %1894, label %.preheader, label %.loopexit.i, !llvm.loop !117

1895:                                             ; preds = %1849
  %1896 = load <2 x i64>, ptr %1846, align 1, !tbaa !9
  store <2 x i64> %1896, ptr %1847, align 1, !tbaa !9
  %1897 = icmp ult i64 %1798, 25
  br i1 %1897, label %.loopexit.i, label %1898

1898:                                             ; preds = %1895
  %1899 = getelementptr inbounds nuw i8, ptr %1800, i64 24
  br label %1900

1900:                                             ; preds = %1900, %1898
  %1901 = phi ptr [ %1899, %1898 ], [ %1908, %1900 ]
  %1902 = phi ptr [ %1846, %1898 ], [ %1906, %1900 ]
  %1903 = getelementptr inbounds nuw i8, ptr %1902, i64 16
  %1904 = load <2 x i64>, ptr %1903, align 1, !tbaa !9
  store <2 x i64> %1904, ptr %1901, align 1, !tbaa !9
  %1905 = getelementptr inbounds nuw i8, ptr %1901, i64 16
  %1906 = getelementptr inbounds nuw i8, ptr %1902, i64 32
  %1907 = load <2 x i64>, ptr %1906, align 1, !tbaa !9
  store <2 x i64> %1907, ptr %1905, align 1, !tbaa !9
  %1908 = getelementptr inbounds nuw i8, ptr %1901, i64 32
  %1909 = icmp ult ptr %1908, %1853
  br i1 %1909, label %1900, label %.loopexit.i, !llvm.loop !97

.loopexit.i:                                      ; preds = %1900, %.preheader, %1808, %1895, %1884, %1844, %1802, %1793, %1762
  %1910 = phi i64 [ %1763, %1762 ], [ %1752, %1793 ], [ %1752, %1844 ], [ %1752, %1802 ], [ %1752, %1895 ], [ %1752, %1884 ], [ %1752, %1808 ], [ %1752, %.preheader ], [ %1752, %1900 ]
  %1911 = icmp ult i64 %1910, -119
  %1912 = getelementptr inbounds nuw i8, ptr %1745, i64 %1910
  br i1 %1911, label %2248, label %.loopexit149.i

1913:                                             ; preds = %1597
  %1914 = getelementptr inbounds i8, ptr %1600, i64 -32
  %1915 = getelementptr inbounds nuw i8, ptr %1594, i64 8
  %1916 = load i64, ptr %1915, align 8
  %1917 = getelementptr inbounds nuw i8, ptr %1594, i64 16
  %1918 = load i64, ptr %1917, align 8
  %1919 = sub i64 0, %1918
  %1920 = getelementptr i8, ptr %1590, i64 %1599
  %1921 = add i64 %1916, %1599
  %1922 = getelementptr inbounds i8, ptr %1920, i64 %1919
  %1923 = icmp ugt ptr %1600, %1591
  %1924 = getelementptr inbounds nuw i8, ptr %1590, i64 %1921
  %1925 = icmp ugt ptr %1924, %1914
  %1926 = select i1 %1923, i1 true, i1 %1925
  br i1 %1926, label %1930, label %1927, !prof !101

1927:                                             ; preds = %1913
  %1928 = load <2 x i64>, ptr %1598, align 1, !tbaa !9
  store <2 x i64> %1928, ptr %1590, align 1, !tbaa !9
  %1929 = icmp ugt i64 %1599, 16
  br i1 %1929, label %1932, label %.loopexit144.i, !prof !52

1930:                                             ; preds = %1913
  %1931 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1590, ptr noundef %105, ptr noundef nonnull %1914, ptr noundef nonnull byval(%struct.seq_t) align 8 %1594, ptr noundef nonnull %7, ptr noundef %1591, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit141.i

1932:                                             ; preds = %1927
  %1933 = getelementptr inbounds nuw i8, ptr %1590, i64 16
  %1934 = getelementptr inbounds nuw i8, ptr %1598, i64 16
  %1935 = load <2 x i64>, ptr %1934, align 1, !tbaa !9
  store <2 x i64> %1935, ptr %1933, align 1, !tbaa !9
  %1936 = icmp ult i64 %1599, 33
  br i1 %1936, label %.loopexit144.i, label %1937

1937:                                             ; preds = %1932
  %1938 = getelementptr inbounds nuw i8, ptr %1590, i64 32
  br label %1939

1939:                                             ; preds = %1939, %1937
  %1940 = phi ptr [ %1938, %1937 ], [ %1947, %1939 ]
  %1941 = phi ptr [ %1934, %1937 ], [ %1945, %1939 ]
  %1942 = getelementptr inbounds nuw i8, ptr %1941, i64 16
  %1943 = load <2 x i64>, ptr %1942, align 1, !tbaa !9
  store <2 x i64> %1943, ptr %1940, align 1, !tbaa !9
  %1944 = getelementptr inbounds nuw i8, ptr %1940, i64 16
  %1945 = getelementptr inbounds nuw i8, ptr %1941, i64 32
  %1946 = load <2 x i64>, ptr %1945, align 1, !tbaa !9
  store <2 x i64> %1946, ptr %1944, align 1, !tbaa !9
  %1947 = getelementptr inbounds nuw i8, ptr %1940, i64 32
  %1948 = icmp ult ptr %1947, %1920
  br i1 %1948, label %1939, label %.loopexit144.i, !llvm.loop !97

.loopexit144.i:                                   ; preds = %1939, %1932, %1927
  store ptr %1600, ptr %7, align 8, !tbaa !38
  %1949 = ptrtoint ptr %1920 to i64
  %1950 = sub i64 %1949, %132
  %1951 = icmp ugt i64 %1918, %1950
  br i1 %1951, label %1952, label %1965

1952:                                             ; preds = %.loopexit144.i
  %1953 = sub i64 %1949, %1575
  %1954 = icmp ugt i64 %1918, %1953
  br i1 %1954, label %.loopexit149.i, label %1955, !prof !52

1955:                                             ; preds = %1952
  %1956 = ptrtoint ptr %1922 to i64
  %1957 = sub i64 %1956, %132
  %1958 = getelementptr inbounds i8, ptr %114, i64 %1957
  %1959 = add i64 %1957, %1916
  %1960 = icmp sgt i64 %1959, 0
  br i1 %1960, label %1962, label %1961

1961:                                             ; preds = %1955
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1920, ptr align 1 %1958, i64 %1916, i1 false)
  br label %.loopexit141.i

1962:                                             ; preds = %1955
  %1963 = sub nsw i64 0, %1957
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1920, ptr align 1 %1958, i64 %1963, i1 false)
  %1964 = getelementptr inbounds nuw i8, ptr %1920, i64 %1963
  br label %1965

1965:                                             ; preds = %1962, %.loopexit144.i
  %1966 = phi i64 [ %1959, %1962 ], [ %1916, %.loopexit144.i ]
  %1967 = phi ptr [ %111, %1962 ], [ %1922, %.loopexit144.i ]
  %1968 = phi ptr [ %1964, %1962 ], [ %1920, %.loopexit144.i ]
  %1969 = icmp ugt i64 %1918, 15
  br i1 %1969, label %1970, label %1986, !prof !87

1970:                                             ; preds = %1965
  %1971 = getelementptr inbounds nuw i8, ptr %1968, i64 %1966
  %1972 = load <2 x i64>, ptr %1967, align 1, !tbaa !9
  store <2 x i64> %1972, ptr %1968, align 1, !tbaa !9
  %1973 = icmp ult i64 %1966, 17
  br i1 %1973, label %.loopexit141.i, label %1974

1974:                                             ; preds = %1970
  %1975 = getelementptr inbounds nuw i8, ptr %1968, i64 16
  br label %1976

1976:                                             ; preds = %1976, %1974
  %1977 = phi ptr [ %1975, %1974 ], [ %1984, %1976 ]
  %1978 = phi ptr [ %1967, %1974 ], [ %1982, %1976 ]
  %1979 = getelementptr inbounds nuw i8, ptr %1978, i64 16
  %1980 = load <2 x i64>, ptr %1979, align 1, !tbaa !9
  store <2 x i64> %1980, ptr %1977, align 1, !tbaa !9
  %1981 = getelementptr inbounds nuw i8, ptr %1977, i64 16
  %1982 = getelementptr inbounds nuw i8, ptr %1978, i64 32
  %1983 = load <2 x i64>, ptr %1982, align 1, !tbaa !9
  store <2 x i64> %1983, ptr %1981, align 1, !tbaa !9
  %1984 = getelementptr inbounds nuw i8, ptr %1977, i64 32
  %1985 = icmp ult ptr %1984, %1971
  br i1 %1985, label %1976, label %.loopexit141.i, !llvm.loop !97

1986:                                             ; preds = %1965
  %1987 = icmp samesign ult i64 %1918, 8
  br i1 %1987, label %1988, label %2010

1988:                                             ; preds = %1986
  %1989 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1918
  %1990 = load i32, ptr %1989, align 4, !tbaa !30
  %1991 = load i8, ptr %1967, align 1, !tbaa !9
  store i8 %1991, ptr %1968, align 1, !tbaa !9
  %1992 = getelementptr inbounds nuw i8, ptr %1967, i64 1
  %1993 = load i8, ptr %1992, align 1, !tbaa !9
  %1994 = getelementptr inbounds nuw i8, ptr %1968, i64 1
  store i8 %1993, ptr %1994, align 1, !tbaa !9
  %1995 = getelementptr inbounds nuw i8, ptr %1967, i64 2
  %1996 = load i8, ptr %1995, align 1, !tbaa !9
  %1997 = getelementptr inbounds nuw i8, ptr %1968, i64 2
  store i8 %1996, ptr %1997, align 1, !tbaa !9
  %1998 = getelementptr inbounds nuw i8, ptr %1967, i64 3
  %1999 = load i8, ptr %1998, align 1, !tbaa !9
  %2000 = getelementptr inbounds nuw i8, ptr %1968, i64 3
  store i8 %1999, ptr %2000, align 1, !tbaa !9
  %2001 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1918
  %2002 = load i32, ptr %2001, align 4, !tbaa !30
  %2003 = zext i32 %2002 to i64
  %2004 = getelementptr inbounds nuw i8, ptr %1967, i64 %2003
  %2005 = getelementptr inbounds nuw i8, ptr %1968, i64 4
  %2006 = load i32, ptr %2004, align 1
  store i32 %2006, ptr %2005, align 1
  %2007 = sext i32 %1990 to i64
  %2008 = sub nsw i64 0, %2007
  %2009 = getelementptr inbounds i8, ptr %2004, i64 %2008
  br label %2012

2010:                                             ; preds = %1986
  %2011 = load i64, ptr %1967, align 1
  store i64 %2011, ptr %1968, align 1
  br label %2012

2012:                                             ; preds = %2010, %1988
  %2013 = phi ptr [ %2009, %1988 ], [ %1967, %2010 ]
  %2014 = getelementptr inbounds nuw i8, ptr %2013, i64 8
  %2015 = getelementptr inbounds nuw i8, ptr %1968, i64 8
  %2016 = icmp ugt i64 %1966, 8
  br i1 %2016, label %2017, label %.loopexit141.i

2017:                                             ; preds = %2012
  %2018 = ptrtoint ptr %2015 to i64
  %2019 = ptrtoint ptr %2014 to i64
  %2020 = sub i64 %2018, %2019
  %2021 = getelementptr i8, ptr %1968, i64 %1966
  %2022 = icmp slt i64 %2020, 16
  br i1 %2022, label %2023, label %2063

2023:                                             ; preds = %2017
  %2024 = add i64 %1916, %132
  %2025 = tail call i64 @llvm.umin.i64(i64 %1918, i64 %1950)
  %2026 = tail call i64 @llvm.umax.i64(i64 %1918, i64 %1950)
  %2027 = sub i64 %2024, %1918
  %2028 = add i64 %2027, %2025
  %2029 = add i64 %2028, %2026
  %2030 = add i64 %2026, %1580
  %2031 = tail call i64 @llvm.umax.i64(i64 %2029, i64 %2030)
  %2032 = add i64 %2026, %132
  %reass.sub188 = sub i64 %2031, %2032
  %2033 = add i64 %reass.sub188, -9
  %2034 = lshr i64 %2033, 3
  %2035 = add nuw nsw i64 %2034, 1
  %2036 = icmp ult i64 %2033, 24
  %2037 = icmp ult i64 %2020, 32
  %2038 = or i1 %2036, %2037
  br i1 %2038, label %.preheader338.preheader, label %2039

2039:                                             ; preds = %2023
  %2040 = and i64 %2035, 4611686018427387900
  br label %2041

2041:                                             ; preds = %2041, %2039
  %2042 = phi i64 [ 0, %2039 ], [ %2050, %2041 ]
  %2043 = shl i64 %2042, 3
  %2044 = getelementptr i8, ptr %2015, i64 %2043
  %2045 = getelementptr i8, ptr %2014, i64 %2043
  %2046 = getelementptr i8, ptr %2045, i64 16
  %2047 = load <2 x i64>, ptr %2045, align 1
  %2048 = load <2 x i64>, ptr %2046, align 1
  %2049 = getelementptr i8, ptr %2044, i64 16
  store <2 x i64> %2047, ptr %2044, align 1
  store <2 x i64> %2048, ptr %2049, align 1
  %2050 = add nuw i64 %2042, 4
  %2051 = icmp eq i64 %2050, %2040
  br i1 %2051, label %2052, label %2041, !llvm.loop !118

2052:                                             ; preds = %2041
  %2053 = shl i64 %2040, 3
  %2054 = getelementptr i8, ptr %2015, i64 %2053
  %2055 = getelementptr i8, ptr %2014, i64 %2053
  %2056 = icmp eq i64 %2035, %2040
  br i1 %2056, label %.loopexit141.i, label %.preheader338.preheader

.preheader338.preheader:                          ; preds = %2052, %2023
  %.ph460 = phi ptr [ %2015, %2023 ], [ %2054, %2052 ]
  %.ph461 = phi ptr [ %2014, %2023 ], [ %2055, %2052 ]
  br label %.preheader338

.preheader338:                                    ; preds = %.preheader338.preheader, %.preheader338
  %2057 = phi ptr [ %2060, %.preheader338 ], [ %.ph460, %.preheader338.preheader ]
  %2058 = phi ptr [ %2061, %.preheader338 ], [ %.ph461, %.preheader338.preheader ]
  %2059 = load i64, ptr %2058, align 1
  store i64 %2059, ptr %2057, align 1
  %2060 = getelementptr inbounds nuw i8, ptr %2057, i64 8
  %2061 = getelementptr inbounds nuw i8, ptr %2058, i64 8
  %2062 = icmp ult ptr %2060, %2021
  br i1 %2062, label %.preheader338, label %.loopexit141.i, !llvm.loop !119

2063:                                             ; preds = %2017
  %2064 = load <2 x i64>, ptr %2014, align 1, !tbaa !9
  store <2 x i64> %2064, ptr %2015, align 1, !tbaa !9
  %2065 = icmp ult i64 %1966, 25
  br i1 %2065, label %.loopexit141.i, label %2066

2066:                                             ; preds = %2063
  %2067 = getelementptr inbounds nuw i8, ptr %1968, i64 24
  br label %2068

2068:                                             ; preds = %2068, %2066
  %2069 = phi ptr [ %2067, %2066 ], [ %2076, %2068 ]
  %2070 = phi ptr [ %2014, %2066 ], [ %2074, %2068 ]
  %2071 = getelementptr inbounds nuw i8, ptr %2070, i64 16
  %2072 = load <2 x i64>, ptr %2071, align 1, !tbaa !9
  store <2 x i64> %2072, ptr %2069, align 1, !tbaa !9
  %2073 = getelementptr inbounds nuw i8, ptr %2069, i64 16
  %2074 = getelementptr inbounds nuw i8, ptr %2070, i64 32
  %2075 = load <2 x i64>, ptr %2074, align 1, !tbaa !9
  store <2 x i64> %2075, ptr %2073, align 1, !tbaa !9
  %2076 = getelementptr inbounds nuw i8, ptr %2069, i64 32
  %2077 = icmp ult ptr %2076, %2021
  br i1 %2077, label %2068, label %.loopexit141.i, !llvm.loop !97

2078:                                             ; preds = %1588
  %2079 = load i64, ptr %1594, align 8
  %2080 = getelementptr inbounds nuw i8, ptr %1594, i64 8
  %2081 = load i64, ptr %2080, align 8
  %2082 = getelementptr inbounds nuw i8, ptr %1594, i64 16
  %2083 = load i64, ptr %2082, align 8
  %2084 = sub i64 0, %2083
  %2085 = getelementptr i8, ptr %1590, i64 %2079
  %2086 = add i64 %2081, %2079
  %2087 = load ptr, ptr %7, align 8, !tbaa !38
  %2088 = getelementptr inbounds nuw i8, ptr %2087, i64 %2079
  %2089 = getelementptr inbounds i8, ptr %2085, i64 %2084
  %2090 = icmp ugt ptr %2088, %1591
  %2091 = getelementptr inbounds nuw i8, ptr %1590, i64 %2086
  %2092 = icmp ugt ptr %2091, %1574
  %2093 = select i1 %2090, i1 true, i1 %2092
  br i1 %2093, label %2097, label %2094, !prof !101

2094:                                             ; preds = %2078
  %2095 = load <2 x i64>, ptr %2087, align 1, !tbaa !9
  store <2 x i64> %2095, ptr %1590, align 1, !tbaa !9
  %2096 = icmp ugt i64 %2079, 16
  br i1 %2096, label %2099, label %.loopexit148.i, !prof !52

2097:                                             ; preds = %2078
  %2098 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1590, ptr noundef %105, ptr noundef nonnull byval(%struct.seq_t) align 8 %1594, ptr noundef nonnull %7, ptr noundef %1591, ptr noundef %111, ptr noundef %112, ptr noundef %114)
  br label %.loopexit141.i

2099:                                             ; preds = %2094
  %2100 = getelementptr inbounds nuw i8, ptr %1590, i64 16
  %2101 = getelementptr inbounds nuw i8, ptr %2087, i64 16
  %2102 = load <2 x i64>, ptr %2101, align 1, !tbaa !9
  store <2 x i64> %2102, ptr %2100, align 1, !tbaa !9
  %2103 = icmp ult i64 %2079, 33
  br i1 %2103, label %.loopexit148.i, label %2104

2104:                                             ; preds = %2099
  %2105 = getelementptr inbounds nuw i8, ptr %1590, i64 32
  br label %2106

2106:                                             ; preds = %2106, %2104
  %2107 = phi ptr [ %2105, %2104 ], [ %2114, %2106 ]
  %2108 = phi ptr [ %2101, %2104 ], [ %2112, %2106 ]
  %2109 = getelementptr inbounds nuw i8, ptr %2108, i64 16
  %2110 = load <2 x i64>, ptr %2109, align 1, !tbaa !9
  store <2 x i64> %2110, ptr %2107, align 1, !tbaa !9
  %2111 = getelementptr inbounds nuw i8, ptr %2107, i64 16
  %2112 = getelementptr inbounds nuw i8, ptr %2108, i64 32
  %2113 = load <2 x i64>, ptr %2112, align 1, !tbaa !9
  store <2 x i64> %2113, ptr %2111, align 1, !tbaa !9
  %2114 = getelementptr inbounds nuw i8, ptr %2107, i64 32
  %2115 = icmp ult ptr %2114, %2085
  br i1 %2115, label %2106, label %.loopexit148.i, !llvm.loop !97

.loopexit148.i:                                   ; preds = %2106, %2099, %2094
  store ptr %2088, ptr %7, align 8, !tbaa !38
  %2116 = ptrtoint ptr %2085 to i64
  %2117 = sub i64 %2116, %132
  %2118 = icmp ugt i64 %2083, %2117
  br i1 %2118, label %2119, label %2132

2119:                                             ; preds = %.loopexit148.i
  %2120 = sub i64 %2116, %1575
  %2121 = icmp ugt i64 %2083, %2120
  br i1 %2121, label %.loopexit149.i, label %2122, !prof !52

2122:                                             ; preds = %2119
  %2123 = ptrtoint ptr %2089 to i64
  %2124 = sub i64 %2123, %132
  %2125 = getelementptr inbounds i8, ptr %114, i64 %2124
  %2126 = add i64 %2124, %2081
  %2127 = icmp sgt i64 %2126, 0
  br i1 %2127, label %2129, label %2128

2128:                                             ; preds = %2122
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2085, ptr align 1 %2125, i64 %2081, i1 false)
  br label %.loopexit141.i

2129:                                             ; preds = %2122
  %2130 = sub nsw i64 0, %2124
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2085, ptr align 1 %2125, i64 %2130, i1 false)
  %2131 = getelementptr inbounds nuw i8, ptr %2085, i64 %2130
  br label %2132

2132:                                             ; preds = %2129, %.loopexit148.i
  %2133 = phi i64 [ %2126, %2129 ], [ %2081, %.loopexit148.i ]
  %2134 = phi ptr [ %111, %2129 ], [ %2089, %.loopexit148.i ]
  %2135 = phi ptr [ %2131, %2129 ], [ %2085, %.loopexit148.i ]
  %2136 = icmp ugt i64 %2083, 15
  br i1 %2136, label %2137, label %2153, !prof !87

2137:                                             ; preds = %2132
  %2138 = getelementptr inbounds nuw i8, ptr %2135, i64 %2133
  %2139 = load <2 x i64>, ptr %2134, align 1, !tbaa !9
  store <2 x i64> %2139, ptr %2135, align 1, !tbaa !9
  %2140 = icmp ult i64 %2133, 17
  br i1 %2140, label %.loopexit141.i, label %2141

2141:                                             ; preds = %2137
  %2142 = getelementptr inbounds nuw i8, ptr %2135, i64 16
  br label %2143

2143:                                             ; preds = %2143, %2141
  %2144 = phi ptr [ %2142, %2141 ], [ %2151, %2143 ]
  %2145 = phi ptr [ %2134, %2141 ], [ %2149, %2143 ]
  %2146 = getelementptr inbounds nuw i8, ptr %2145, i64 16
  %2147 = load <2 x i64>, ptr %2146, align 1, !tbaa !9
  store <2 x i64> %2147, ptr %2144, align 1, !tbaa !9
  %2148 = getelementptr inbounds nuw i8, ptr %2144, i64 16
  %2149 = getelementptr inbounds nuw i8, ptr %2145, i64 32
  %2150 = load <2 x i64>, ptr %2149, align 1, !tbaa !9
  store <2 x i64> %2150, ptr %2148, align 1, !tbaa !9
  %2151 = getelementptr inbounds nuw i8, ptr %2144, i64 32
  %2152 = icmp ult ptr %2151, %2138
  br i1 %2152, label %2143, label %.loopexit141.i, !llvm.loop !97

2153:                                             ; preds = %2132
  %2154 = icmp samesign ult i64 %2083, 8
  br i1 %2154, label %2155, label %2177

2155:                                             ; preds = %2153
  %2156 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %2083
  %2157 = load i32, ptr %2156, align 4, !tbaa !30
  %2158 = load i8, ptr %2134, align 1, !tbaa !9
  store i8 %2158, ptr %2135, align 1, !tbaa !9
  %2159 = getelementptr inbounds nuw i8, ptr %2134, i64 1
  %2160 = load i8, ptr %2159, align 1, !tbaa !9
  %2161 = getelementptr inbounds nuw i8, ptr %2135, i64 1
  store i8 %2160, ptr %2161, align 1, !tbaa !9
  %2162 = getelementptr inbounds nuw i8, ptr %2134, i64 2
  %2163 = load i8, ptr %2162, align 1, !tbaa !9
  %2164 = getelementptr inbounds nuw i8, ptr %2135, i64 2
  store i8 %2163, ptr %2164, align 1, !tbaa !9
  %2165 = getelementptr inbounds nuw i8, ptr %2134, i64 3
  %2166 = load i8, ptr %2165, align 1, !tbaa !9
  %2167 = getelementptr inbounds nuw i8, ptr %2135, i64 3
  store i8 %2166, ptr %2167, align 1, !tbaa !9
  %2168 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %2083
  %2169 = load i32, ptr %2168, align 4, !tbaa !30
  %2170 = zext i32 %2169 to i64
  %2171 = getelementptr inbounds nuw i8, ptr %2134, i64 %2170
  %2172 = getelementptr inbounds nuw i8, ptr %2135, i64 4
  %2173 = load i32, ptr %2171, align 1
  store i32 %2173, ptr %2172, align 1
  %2174 = sext i32 %2157 to i64
  %2175 = sub nsw i64 0, %2174
  %2176 = getelementptr inbounds i8, ptr %2171, i64 %2175
  br label %2179

2177:                                             ; preds = %2153
  %2178 = load i64, ptr %2134, align 1
  store i64 %2178, ptr %2135, align 1
  br label %2179

2179:                                             ; preds = %2177, %2155
  %2180 = phi ptr [ %2176, %2155 ], [ %2134, %2177 ]
  %2181 = getelementptr inbounds nuw i8, ptr %2180, i64 8
  %2182 = getelementptr inbounds nuw i8, ptr %2135, i64 8
  %2183 = icmp ugt i64 %2133, 8
  br i1 %2183, label %2184, label %.loopexit141.i

2184:                                             ; preds = %2179
  %2185 = ptrtoint ptr %2182 to i64
  %2186 = ptrtoint ptr %2181 to i64
  %2187 = sub i64 %2185, %2186
  %2188 = getelementptr i8, ptr %2135, i64 %2133
  %2189 = icmp slt i64 %2187, 16
  br i1 %2189, label %2190, label %2230

2190:                                             ; preds = %2184
  %2191 = add i64 %2081, %132
  %2192 = tail call i64 @llvm.umin.i64(i64 %2083, i64 %2117)
  %2193 = tail call i64 @llvm.umax.i64(i64 %2083, i64 %2117)
  %2194 = sub i64 %2191, %2083
  %2195 = add i64 %2194, %2192
  %2196 = add i64 %2195, %2193
  %2197 = add i64 %2193, %1580
  %2198 = tail call i64 @llvm.umax.i64(i64 %2196, i64 %2197)
  %2199 = add i64 %2193, %132
  %reass.sub187 = sub i64 %2198, %2199
  %2200 = add i64 %reass.sub187, -9
  %2201 = lshr i64 %2200, 3
  %2202 = add nuw nsw i64 %2201, 1
  %2203 = icmp ult i64 %2200, 24
  %2204 = icmp ult i64 %2187, 32
  %2205 = or i1 %2203, %2204
  br i1 %2205, label %.preheader344.preheader, label %2206

2206:                                             ; preds = %2190
  %2207 = and i64 %2202, 4611686018427387900
  br label %2208

2208:                                             ; preds = %2208, %2206
  %2209 = phi i64 [ 0, %2206 ], [ %2217, %2208 ]
  %2210 = shl i64 %2209, 3
  %2211 = getelementptr i8, ptr %2182, i64 %2210
  %2212 = getelementptr i8, ptr %2181, i64 %2210
  %2213 = getelementptr i8, ptr %2212, i64 16
  %2214 = load <2 x i64>, ptr %2212, align 1
  %2215 = load <2 x i64>, ptr %2213, align 1
  %2216 = getelementptr i8, ptr %2211, i64 16
  store <2 x i64> %2214, ptr %2211, align 1
  store <2 x i64> %2215, ptr %2216, align 1
  %2217 = add nuw i64 %2209, 4
  %2218 = icmp eq i64 %2217, %2207
  br i1 %2218, label %2219, label %2208, !llvm.loop !120

2219:                                             ; preds = %2208
  %2220 = shl i64 %2207, 3
  %2221 = getelementptr i8, ptr %2182, i64 %2220
  %2222 = getelementptr i8, ptr %2181, i64 %2220
  %2223 = icmp eq i64 %2202, %2207
  br i1 %2223, label %.loopexit141.i, label %.preheader344.preheader

.preheader344.preheader:                          ; preds = %2219, %2190
  %.ph465 = phi ptr [ %2182, %2190 ], [ %2221, %2219 ]
  %.ph466 = phi ptr [ %2181, %2190 ], [ %2222, %2219 ]
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader344.preheader, %.preheader344
  %2224 = phi ptr [ %2227, %.preheader344 ], [ %.ph465, %.preheader344.preheader ]
  %2225 = phi ptr [ %2228, %.preheader344 ], [ %.ph466, %.preheader344.preheader ]
  %2226 = load i64, ptr %2225, align 1
  store i64 %2226, ptr %2224, align 1
  %2227 = getelementptr inbounds nuw i8, ptr %2224, i64 8
  %2228 = getelementptr inbounds nuw i8, ptr %2225, i64 8
  %2229 = icmp ult ptr %2227, %2188
  br i1 %2229, label %.preheader344, label %.loopexit141.i, !llvm.loop !121

2230:                                             ; preds = %2184
  %2231 = load <2 x i64>, ptr %2181, align 1, !tbaa !9
  store <2 x i64> %2231, ptr %2182, align 1, !tbaa !9
  %2232 = icmp ult i64 %2133, 25
  br i1 %2232, label %.loopexit141.i, label %2233

2233:                                             ; preds = %2230
  %2234 = getelementptr inbounds nuw i8, ptr %2135, i64 24
  br label %2235

2235:                                             ; preds = %2235, %2233
  %2236 = phi ptr [ %2234, %2233 ], [ %2243, %2235 ]
  %2237 = phi ptr [ %2181, %2233 ], [ %2241, %2235 ]
  %2238 = getelementptr inbounds nuw i8, ptr %2237, i64 16
  %2239 = load <2 x i64>, ptr %2238, align 1, !tbaa !9
  store <2 x i64> %2239, ptr %2236, align 1, !tbaa !9
  %2240 = getelementptr inbounds nuw i8, ptr %2236, i64 16
  %2241 = getelementptr inbounds nuw i8, ptr %2237, i64 32
  %2242 = load <2 x i64>, ptr %2241, align 1, !tbaa !9
  store <2 x i64> %2242, ptr %2240, align 1, !tbaa !9
  %2243 = getelementptr inbounds nuw i8, ptr %2236, i64 32
  %2244 = icmp ult ptr %2243, %2188
  br i1 %2244, label %2235, label %.loopexit141.i, !llvm.loop !97

.loopexit141.i:                                   ; preds = %2235, %.preheader344, %2143, %2068, %.preheader338, %1976, %2230, %2219, %2179, %2137, %2128, %2097, %2063, %2052, %2012, %1970, %1961, %1930
  %2245 = phi i64 [ %1931, %1930 ], [ %1921, %1961 ], [ %1921, %2012 ], [ %1921, %1970 ], [ %1921, %2063 ], [ %2098, %2097 ], [ %2086, %2128 ], [ %2086, %2179 ], [ %2086, %2137 ], [ %2086, %2230 ], [ %1921, %2052 ], [ %2086, %2219 ], [ %2086, %.preheader344 ], [ %1921, %1976 ], [ %1921, %.preheader338 ], [ %1921, %2068 ], [ %2086, %2143 ], [ %2086, %2235 ]
  %2246 = icmp ult i64 %2245, -119
  %2247 = getelementptr inbounds nuw i8, ptr %1590, i64 %2245
  br i1 %2246, label %2248, label %.loopexit149.i

2248:                                             ; preds = %.loopexit141.i, %.loopexit.i
  %2249 = phi ptr [ %1578, %.loopexit.i ], [ %1591, %.loopexit141.i ]
  %2250 = phi ptr [ %1912, %.loopexit.i ], [ %2247, %.loopexit141.i ]
  %2251 = add i32 %1589, 1
  %2252 = icmp eq i32 %2251, %51
  br i1 %2252, label %.loopexit150.i, label %1588, !llvm.loop !122

.loopexit149.i:                                   ; preds = %.loopexit158.i, %1407, %1237, %.loopexit151.i, %1061, %885, %.loopexit141.i, %2119, %1952, %.loopexit.i, %1784, %1608, %.loopexit168.i, %203, %191, %140, %116
  %2253 = phi i64 [ -20, %203 ], [ -20, %.loopexit168.i ], [ -20, %116 ], [ -20, %140 ], [ -20, %191 ], [ -20, %2119 ], [ -70, %1608 ], [ %1910, %.loopexit.i ], [ %2245, %.loopexit141.i ], [ -20, %1784 ], [ -20, %1952 ], [ -70, %885 ], [ %1187, %.loopexit151.i ], [ %1533, %.loopexit158.i ], [ -20, %1061 ], [ -20, %1237 ], [ -20, %1407 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %2298

2254:                                             ; preds = %.loopexit150.i, %104
  %2255 = phi ptr [ %1587, %.loopexit150.i ], [ %107, %104 ]
  %2256 = phi i32 [ %1586, %.loopexit150.i ], [ %96, %104 ]
  %2257 = phi ptr [ %1581, %.loopexit150.i ], [ %109, %104 ]
  %2258 = phi ptr [ %1582, %.loopexit150.i ], [ %1, %104 ]
  %2259 = icmp eq i32 %2256, 2
  br i1 %2259, label %2262, label %2260

2260:                                             ; preds = %2254
  %2261 = ptrtoint ptr %105 to i64
  br label %2278

2262:                                             ; preds = %2254
  %2263 = ptrtoint ptr %2257 to i64
  %2264 = ptrtoint ptr %2255 to i64
  %2265 = sub i64 %2263, %2264
  %2266 = ptrtoint ptr %105 to i64
  %2267 = ptrtoint ptr %2258 to i64
  %2268 = sub i64 %2266, %2267
  %2269 = icmp ugt i64 %2265, %2268
  br i1 %2269, label %2298, label %2270

2270:                                             ; preds = %2262
  %2271 = icmp eq ptr %2258, null
  br i1 %2271, label %2274, label %2272

2272:                                             ; preds = %2270
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2258, ptr align 1 %2255, i64 %2265, i1 false)
  %2273 = getelementptr inbounds nuw i8, ptr %2258, i64 %2265
  br label %2274

2274:                                             ; preds = %2272, %2270
  %2275 = phi ptr [ %2273, %2272 ], [ null, %2270 ]
  %2276 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %2277 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %2278

2278:                                             ; preds = %2274, %2260
  %2279 = phi i64 [ %2261, %2260 ], [ %2266, %2274 ]
  %2280 = phi ptr [ %2255, %2260 ], [ %2276, %2274 ]
  %2281 = phi ptr [ %2257, %2260 ], [ %2277, %2274 ]
  %2282 = phi ptr [ %2258, %2260 ], [ %2275, %2274 ]
  %2283 = ptrtoint ptr %2281 to i64
  %2284 = ptrtoint ptr %2280 to i64
  %2285 = sub i64 %2283, %2284
  %2286 = ptrtoint ptr %2282 to i64
  %2287 = sub i64 %2279, %2286
  %2288 = icmp ugt i64 %2285, %2287
  br i1 %2288, label %2298, label %2289

2289:                                             ; preds = %2278
  %2290 = icmp eq ptr %2282, null
  br i1 %2290, label %2294, label %2291

2291:                                             ; preds = %2289
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2282, ptr align 1 %2280, i64 %2285, i1 false)
  %2292 = getelementptr inbounds nuw i8, ptr %2282, i64 %2285
  %2293 = ptrtoint ptr %2292 to i64
  br label %2294

2294:                                             ; preds = %2291, %2289
  %2295 = phi i64 [ 0, %2289 ], [ %2293, %2291 ]
  %2296 = ptrtoint ptr %1 to i64
  %2297 = sub i64 %2295, %2296
  br label %2298

2298:                                             ; preds = %2294, %2278, %2262, %.loopexit149.i
  %2299 = phi i64 [ %2297, %2294 ], [ %2253, %.loopexit149.i ], [ -70, %2278 ], [ -70, %2262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %ZSTD_decompressSequencesLong.exit

2300:                                             ; preds = %85
  %2301 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %2302 = load i32, ptr %2301, align 8, !tbaa !35
  %2303 = icmp eq i32 %2302, 2
  br i1 %2303, label %2304, label %2306

2304:                                             ; preds = %2300
  %2305 = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %ZSTD_decompressSequencesLong.exit

2306:                                             ; preds = %2300
  %2307 = tail call fastcc i64 @ZSTD_decompressSequences(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %ZSTD_decompressSequencesLong.exit

ZSTD_decompressSequencesLong.exit:                ; preds = %2306, %2304, %2298, %92, %45, %33
  %2308 = phi i64 [ -70, %45 ], [ %2305, %2304 ], [ %2307, %2306 ], [ %43, %33 ], [ %93, %92 ], [ %2299, %2298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %2309

2309:                                             ; preds = %ZSTD_decompressSequencesLong.exit, %21, %18
  %2310 = phi i64 [ %2308, %ZSTD_decompressSequencesLong.exit ], [ %22, %21 ], [ -72, %18 ]
  ret i64 %2310
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
  br label %1478

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
  br i1 %30, label %1431, label %31

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
  %reass.sub226 = sub nsw i32 %110, %112
  %113 = add nsw i32 %reass.sub226, 41
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
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !123
  %274 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %275 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %276 = ptrtoint ptr %25 to i64
  %277 = ptrtoint ptr %27 to i64
  %278 = ptrtoint ptr %3 to i64
  %279 = add i64 %276, 16
  br label %280

280:                                              ; preds = %689, %268
  %281 = phi ptr [ %269, %268 ], [ %514, %689 ]
  %282 = phi i32 [ %270, %268 ], [ %515, %689 ]
  %283 = phi i64 [ %271, %268 ], [ %516, %689 ]
  %284 = phi i64 [ %43, %268 ], [ %372, %689 ]
  %285 = phi i64 [ %39, %268 ], [ %370, %689 ]
  %286 = phi i64 [ %36, %268 ], [ %371, %689 ]
  %287 = phi i64 [ %237, %268 ], [ %521, %689 ]
  %288 = phi i64 [ %186, %268 ], [ %520, %689 ]
  %289 = phi i64 [ %140, %268 ], [ %519, %689 ]
  %290 = phi i32 [ %5, %268 ], [ %690, %689 ]
  %291 = phi ptr [ %1, %268 ], [ %684, %689 ]
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
  br i1 %507, label %692, label %513

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
  br i1 %626, label %627, label %667

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
  %reass.sub = sub i64 %635, %636
  %637 = add i64 %reass.sub, -9
  %638 = lshr i64 %637, 3
  %639 = add nuw nsw i64 %638, 1
  %640 = icmp ult i64 %637, 24
  %641 = icmp ult i64 %624, 32
  %642 = or i1 %640, %641
  br i1 %642, label %.preheader762.preheader, label %643

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
  br i1 %660, label %.loopexit105, label %.preheader762.preheader

.preheader762.preheader:                          ; preds = %656, %627
  %.ph743 = phi ptr [ %619, %627 ], [ %658, %656 ]
  %.ph744 = phi ptr [ %618, %627 ], [ %659, %656 ]
  br label %.preheader762

.preheader762:                                    ; preds = %.preheader762.preheader, %.preheader762
  %661 = phi ptr [ %664, %.preheader762 ], [ %.ph743, %.preheader762.preheader ]
  %662 = phi ptr [ %665, %.preheader762 ], [ %.ph744, %.preheader762.preheader ]
  %663 = load i64, ptr %662, align 1
  store i64 %663, ptr %661, align 1
  %664 = getelementptr inbounds nuw i8, ptr %661, i64 8
  %665 = getelementptr inbounds nuw i8, ptr %662, i64 8
  %666 = icmp ult ptr %664, %625
  br i1 %666, label %.preheader762, label %.loopexit105, !llvm.loop !129

667:                                              ; preds = %621
  %668 = load <2 x i64>, ptr %618, align 1, !tbaa !9
  store <2 x i64> %668, ptr %619, align 1, !tbaa !9
  %669 = icmp ult i64 %572, 25
  br i1 %669, label %.loopexit105, label %670

670:                                              ; preds = %667
  %671 = getelementptr inbounds nuw i8, ptr %571, i64 24
  br label %672

672:                                              ; preds = %672, %670
  %673 = phi ptr [ %671, %670 ], [ %680, %672 ]
  %674 = phi ptr [ %618, %670 ], [ %678, %672 ]
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 16
  %676 = load <2 x i64>, ptr %675, align 1, !tbaa !9
  store <2 x i64> %676, ptr %673, align 1, !tbaa !9
  %677 = getelementptr inbounds nuw i8, ptr %673, i64 16
  %678 = getelementptr inbounds nuw i8, ptr %674, i64 32
  %679 = load <2 x i64>, ptr %678, align 1, !tbaa !9
  store <2 x i64> %679, ptr %677, align 1, !tbaa !9
  %680 = getelementptr inbounds nuw i8, ptr %673, i64 32
  %681 = icmp ult ptr %680, %625
  br i1 %681, label %672, label %.loopexit105, !llvm.loop !97

.loopexit105:                                     ; preds = %672, %.preheader762, %580, %667, %656, %616, %574, %565, %533
  %682 = phi i64 [ %534, %533 ], [ %524, %565 ], [ %524, %616 ], [ %524, %574 ], [ %524, %667 ], [ %524, %656 ], [ %524, %580 ], [ %524, %.preheader762 ], [ %524, %672 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %683 = icmp ult i64 %682, -119
  %684 = getelementptr inbounds nuw i8, ptr %291, i64 %682
  br i1 %683, label %685, label %.loopexit96

685:                                              ; preds = %.loopexit105
  %686 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %290, i32 -1)
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !86
  br i1 %687, label %688, label %689, !prof !109, !nosanitize !86

688:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !86
  unreachable, !nosanitize !86

689:                                              ; preds = %685
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !86
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %.loopexit97, label %280, !llvm.loop !130

692:                                              ; preds = %500
  %693 = icmp sgt i32 %290, 0
  br i1 %693, label %.loopexit109, label %.loopexit96

.loopexit109:                                     ; preds = %508, %692
  %694 = phi ptr [ %501, %692 ], [ %420, %508 ]
  %695 = phi i32 [ %502, %692 ], [ %435, %508 ]
  %696 = phi i64 [ %503, %692 ], [ %422, %508 ]
  %697 = phi i64 [ %459, %692 ], [ %287, %508 ]
  %698 = phi i64 [ %470, %692 ], [ %288, %508 ]
  %699 = phi i64 [ %448, %692 ], [ %289, %508 ]
  %700 = phi ptr [ %504, %692 ], [ %509, %508 ]
  %701 = phi ptr [ %506, %692 ], [ %511, %508 ]
  %702 = ptrtoint ptr %701 to i64
  %703 = ptrtoint ptr %700 to i64
  %704 = sub i64 %702, %703
  %705 = icmp eq ptr %701, %700
  br i1 %705, label %841, label %706

706:                                              ; preds = %.loopexit109
  %707 = ptrtoint ptr %19 to i64
  %708 = ptrtoint ptr %291 to i64
  %709 = sub i64 %707, %708
  %710 = icmp ugt i64 %704, %709
  br i1 %710, label %.loopexit96, label %711

711:                                              ; preds = %706
  %712 = sub i64 %708, %703
  %713 = getelementptr inbounds nuw i8, ptr %291, i64 %704
  %714 = icmp ult i64 %704, 8
  %715 = icmp sgt i64 %712, -8
  %716 = or i1 %715, %714
  br i1 %716, label %717, label %766

717:                                              ; preds = %711
  %718 = add i64 %712, %702
  %719 = add i64 %708, 1
  %720 = tail call i64 @llvm.umax.i64(i64 %718, i64 %719)
  %721 = sub i64 %720, %708
  %722 = icmp ult i64 %721, 4
  %723 = icmp ult i64 %712, 32
  %724 = or i1 %723, %722
  br i1 %724, label %.preheader755.preheader, label %725

725:                                              ; preds = %717
  %726 = icmp ult i64 %721, 32
  br i1 %726, label %746, label %727

727:                                              ; preds = %725
  %728 = and i64 %721, -32
  br label %729

729:                                              ; preds = %729, %727
  %730 = phi i64 [ 0, %727 ], [ %737, %729 ]
  %731 = getelementptr i8, ptr %291, i64 %730
  %732 = getelementptr i8, ptr %700, i64 %730
  %733 = getelementptr i8, ptr %732, i64 16
  %734 = load <16 x i8>, ptr %732, align 1, !tbaa !9
  %735 = load <16 x i8>, ptr %733, align 1, !tbaa !9
  %736 = getelementptr i8, ptr %731, i64 16
  store <16 x i8> %734, ptr %731, align 1, !tbaa !9
  store <16 x i8> %735, ptr %736, align 1, !tbaa !9
  %737 = add nuw i64 %730, 32
  %738 = icmp eq i64 %737, %728
  br i1 %738, label %739, label %729, !llvm.loop !131

739:                                              ; preds = %729
  %740 = icmp eq i64 %721, %728
  br i1 %740, label %.loopexit102, label %741

741:                                              ; preds = %739
  %742 = getelementptr i8, ptr %291, i64 %728
  %743 = getelementptr i8, ptr %700, i64 %728
  %744 = and i64 %721, 28
  %745 = icmp eq i64 %744, 0
  br i1 %745, label %.preheader755.preheader, label %746

746:                                              ; preds = %741, %725
  %747 = phi i64 [ %728, %741 ], [ 0, %725 ]
  %748 = and i64 %721, -4
  br label %749

749:                                              ; preds = %749, %746
  %750 = phi i64 [ %747, %746 ], [ %754, %749 ]
  %751 = getelementptr i8, ptr %291, i64 %750
  %752 = getelementptr i8, ptr %700, i64 %750
  %753 = load <4 x i8>, ptr %752, align 1, !tbaa !9
  store <4 x i8> %753, ptr %751, align 1, !tbaa !9
  %754 = add nuw i64 %750, 4
  %755 = icmp eq i64 %754, %748
  br i1 %755, label %756, label %749, !llvm.loop !132

756:                                              ; preds = %749
  %757 = getelementptr i8, ptr %291, i64 %748
  %758 = getelementptr i8, ptr %700, i64 %748
  %759 = icmp eq i64 %721, %748
  br i1 %759, label %.loopexit102, label %.preheader755.preheader

.preheader755.preheader:                          ; preds = %756, %741, %717
  %.ph738 = phi ptr [ %291, %717 ], [ %742, %741 ], [ %757, %756 ]
  %.ph739 = phi ptr [ %700, %717 ], [ %743, %741 ], [ %758, %756 ]
  br label %.preheader755

.preheader755:                                    ; preds = %.preheader755.preheader, %.preheader755
  %760 = phi ptr [ %764, %.preheader755 ], [ %.ph738, %.preheader755.preheader ]
  %761 = phi ptr [ %762, %.preheader755 ], [ %.ph739, %.preheader755.preheader ]
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 1
  %763 = load i8, ptr %761, align 1, !tbaa !9
  %764 = getelementptr inbounds nuw i8, ptr %760, i64 1
  store i8 %763, ptr %760, align 1, !tbaa !9
  %765 = icmp ult ptr %764, %713
  br i1 %765, label %.preheader755, label %.loopexit102, !llvm.loop !133

766:                                              ; preds = %711
  %767 = icmp sgt i64 %704, 31
  %768 = icmp samesign ult i64 %712, -16
  %769 = and i1 %768, %767
  br i1 %769, label %770, label %790

770:                                              ; preds = %766
  %771 = getelementptr inbounds i8, ptr %713, i64 -32
  %772 = add nsw i64 %704, -32
  %773 = getelementptr inbounds nuw i8, ptr %291, i64 %772
  %774 = load <2 x i64>, ptr %700, align 1, !tbaa !9
  store <2 x i64> %774, ptr %291, align 1, !tbaa !9
  %775 = icmp samesign ult i64 %704, 49
  br i1 %775, label %.loopexit104, label %776

776:                                              ; preds = %770
  %777 = getelementptr inbounds nuw i8, ptr %291, i64 16
  br label %778

778:                                              ; preds = %778, %776
  %779 = phi ptr [ %777, %776 ], [ %786, %778 ]
  %780 = phi ptr [ %700, %776 ], [ %784, %778 ]
  %781 = getelementptr inbounds nuw i8, ptr %780, i64 16
  %782 = load <2 x i64>, ptr %781, align 1, !tbaa !9
  store <2 x i64> %782, ptr %779, align 1, !tbaa !9
  %783 = getelementptr inbounds nuw i8, ptr %779, i64 16
  %784 = getelementptr inbounds nuw i8, ptr %780, i64 32
  %785 = load <2 x i64>, ptr %784, align 1, !tbaa !9
  store <2 x i64> %785, ptr %783, align 1, !tbaa !9
  %786 = getelementptr inbounds nuw i8, ptr %779, i64 32
  %787 = icmp ult ptr %786, %773
  br i1 %787, label %778, label %.loopexit104, !llvm.loop !97

.loopexit104:                                     ; preds = %778, %770
  %788 = getelementptr inbounds nuw i8, ptr %700, i64 %772
  %.pre = ptrtoint ptr %771 to i64
  %.pre375 = ptrtoint ptr %788 to i64
  %.pre377 = sub i64 %.pre, %.pre375
  %789 = icmp ult i64 %.pre377, 32
  br label %790

790:                                              ; preds = %.loopexit104, %766
  %.pre-phi378 = phi i1 [ %789, %.loopexit104 ], [ false, %766 ]
  %.pre-phi = phi i64 [ %.pre, %.loopexit104 ], [ %708, %766 ]
  %791 = phi ptr [ %771, %.loopexit104 ], [ %291, %766 ]
  %792 = phi ptr [ %788, %.loopexit104 ], [ %700, %766 ]
  %793 = add i64 %712, %702
  %794 = add nuw i64 %.pre-phi, 1
  %795 = tail call i64 @llvm.umax.i64(i64 %793, i64 %794)
  %796 = sub i64 %795, %.pre-phi
  %797 = icmp ult i64 %796, 4
  %798 = select i1 %797, i1 true, i1 %.pre-phi378
  br i1 %798, label %.preheader758.preheader, label %799

799:                                              ; preds = %790
  %800 = icmp ult i64 %796, 32
  br i1 %800, label %820, label %801

801:                                              ; preds = %799
  %802 = and i64 %796, -32
  br label %803

803:                                              ; preds = %803, %801
  %804 = phi i64 [ 0, %801 ], [ %811, %803 ]
  %805 = getelementptr i8, ptr %791, i64 %804
  %806 = getelementptr i8, ptr %792, i64 %804
  %807 = getelementptr i8, ptr %806, i64 16
  %808 = load <16 x i8>, ptr %806, align 1, !tbaa !9
  %809 = load <16 x i8>, ptr %807, align 1, !tbaa !9
  %810 = getelementptr i8, ptr %805, i64 16
  store <16 x i8> %808, ptr %805, align 1, !tbaa !9
  store <16 x i8> %809, ptr %810, align 1, !tbaa !9
  %811 = add nuw i64 %804, 32
  %812 = icmp eq i64 %811, %802
  br i1 %812, label %813, label %803, !llvm.loop !134

813:                                              ; preds = %803
  %814 = icmp eq i64 %796, %802
  br i1 %814, label %.loopexit102, label %815

815:                                              ; preds = %813
  %816 = getelementptr i8, ptr %791, i64 %802
  %817 = getelementptr i8, ptr %792, i64 %802
  %818 = and i64 %796, 28
  %819 = icmp eq i64 %818, 0
  br i1 %819, label %.preheader758.preheader, label %820

820:                                              ; preds = %815, %799
  %821 = phi i64 [ %802, %815 ], [ 0, %799 ]
  %822 = and i64 %796, -4
  br label %823

823:                                              ; preds = %823, %820
  %824 = phi i64 [ %821, %820 ], [ %828, %823 ]
  %825 = getelementptr i8, ptr %791, i64 %824
  %826 = getelementptr i8, ptr %792, i64 %824
  %827 = load <4 x i8>, ptr %826, align 1, !tbaa !9
  store <4 x i8> %827, ptr %825, align 1, !tbaa !9
  %828 = add nuw i64 %824, 4
  %829 = icmp eq i64 %828, %822
  br i1 %829, label %830, label %823, !llvm.loop !135

830:                                              ; preds = %823
  %831 = getelementptr i8, ptr %791, i64 %822
  %832 = getelementptr i8, ptr %792, i64 %822
  %833 = icmp eq i64 %796, %822
  br i1 %833, label %.loopexit102, label %.preheader758.preheader

.preheader758.preheader:                          ; preds = %830, %815, %790
  %.ph740 = phi ptr [ %791, %790 ], [ %816, %815 ], [ %831, %830 ]
  %.ph741 = phi ptr [ %792, %790 ], [ %817, %815 ], [ %832, %830 ]
  br label %.preheader758

.preheader758:                                    ; preds = %.preheader758.preheader, %.preheader758
  %834 = phi ptr [ %838, %.preheader758 ], [ %.ph740, %.preheader758.preheader ]
  %835 = phi ptr [ %836, %.preheader758 ], [ %.ph741, %.preheader758.preheader ]
  %836 = getelementptr inbounds nuw i8, ptr %835, i64 1
  %837 = load i8, ptr %835, align 1, !tbaa !9
  %838 = getelementptr inbounds nuw i8, ptr %834, i64 1
  store i8 %837, ptr %834, align 1, !tbaa !9
  %839 = icmp ult ptr %838, %713
  br i1 %839, label %.preheader758, label %.loopexit102, !llvm.loop !136

.loopexit102:                                     ; preds = %.preheader758, %.preheader755, %830, %813, %756, %739
  %840 = sub i64 %436, %704
  br label %841

841:                                              ; preds = %.loopexit102, %.loopexit109
  %842 = phi i64 [ %436, %.loopexit109 ], [ %840, %.loopexit102 ]
  %843 = phi ptr [ %291, %.loopexit109 ], [ %713, %.loopexit102 ]
  %844 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  store ptr %844, ptr %10, align 8, !tbaa !38
  %845 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %846 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %846, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %842, ptr %8, align 8
  %847 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %387, ptr %847, align 8
  %848 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %371, ptr %848, align 8
  %849 = getelementptr i8, ptr %843, i64 %842
  %850 = add i64 %842, %387
  %851 = getelementptr inbounds nuw i8, ptr %0, i64 %842
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 30372
  %853 = getelementptr inbounds i8, ptr %849, i64 %373
  %854 = icmp sgt i64 %842, 65536
  %855 = getelementptr inbounds i8, ptr %19, i64 -32
  %856 = getelementptr inbounds nuw i8, ptr %843, i64 %850
  %857 = icmp ugt ptr %856, %855
  %858 = select i1 %854, i1 true, i1 %857
  br i1 %858, label %862, label %859, !prof !101

859:                                              ; preds = %841
  %860 = load <2 x i64>, ptr %844, align 1, !tbaa !9
  store <2 x i64> %860, ptr %843, align 1, !tbaa !9
  %861 = icmp ugt i64 %842, 16
  br i1 %861, label %864, label %.loopexit101, !prof !52

862:                                              ; preds = %841
  %863 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %843, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %845, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %.loopexit98

864:                                              ; preds = %859
  %865 = getelementptr inbounds nuw i8, ptr %843, i64 16
  %866 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %867 = add i64 %842, -16
  %868 = load <2 x i64>, ptr %866, align 1, !tbaa !9
  store <2 x i64> %868, ptr %865, align 1, !tbaa !9
  %869 = icmp ult i64 %867, 17
  br i1 %869, label %.loopexit101, label %870

870:                                              ; preds = %864
  %871 = getelementptr inbounds nuw i8, ptr %843, i64 32
  br label %872

872:                                              ; preds = %872, %870
  %873 = phi ptr [ %871, %870 ], [ %880, %872 ]
  %874 = phi ptr [ %866, %870 ], [ %878, %872 ]
  %875 = getelementptr inbounds nuw i8, ptr %874, i64 16
  %876 = load <2 x i64>, ptr %875, align 1, !tbaa !9
  store <2 x i64> %876, ptr %873, align 1, !tbaa !9
  %877 = getelementptr inbounds nuw i8, ptr %873, i64 16
  %878 = getelementptr inbounds nuw i8, ptr %874, i64 32
  %879 = load <2 x i64>, ptr %878, align 1, !tbaa !9
  store <2 x i64> %879, ptr %877, align 1, !tbaa !9
  %880 = getelementptr inbounds nuw i8, ptr %873, i64 32
  %881 = icmp ult ptr %880, %849
  br i1 %881, label %872, label %.loopexit101, !llvm.loop !97

.loopexit101:                                     ; preds = %872, %864, %859
  store ptr %852, ptr %10, align 8, !tbaa !38
  %882 = ptrtoint ptr %849 to i64
  %883 = sub i64 %882, %276
  %884 = icmp ugt i64 %371, %883
  br i1 %884, label %885, label %899

885:                                              ; preds = %.loopexit101
  %886 = sub i64 %882, %277
  %887 = icmp ugt i64 %371, %886
  br i1 %887, label %888, label %889, !prof !52

888:                                              ; preds = %885
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit96

889:                                              ; preds = %885
  %890 = ptrtoint ptr %853 to i64
  %891 = sub i64 %890, %276
  %892 = getelementptr inbounds i8, ptr %29, i64 %891
  %893 = add nsw i64 %891, %387
  %894 = icmp sgt i64 %893, 0
  br i1 %894, label %896, label %895

895:                                              ; preds = %889
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %849, ptr align 1 %892, i64 %387, i1 false)
  br label %.loopexit98

896:                                              ; preds = %889
  %897 = sub nsw i64 0, %891
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %849, ptr align 1 %892, i64 %897, i1 false)
  %898 = getelementptr inbounds nuw i8, ptr %849, i64 %897
  store i64 %893, ptr %847, align 8, !tbaa !127
  br label %899

899:                                              ; preds = %896, %.loopexit101
  %900 = phi ptr [ %898, %896 ], [ %849, %.loopexit101 ]
  %901 = phi ptr [ %25, %896 ], [ %853, %.loopexit101 ]
  %902 = phi i64 [ %893, %896 ], [ %387, %.loopexit101 ]
  %903 = icmp ugt i64 %371, 15
  br i1 %903, label %904, label %920, !prof !87

904:                                              ; preds = %899
  %905 = getelementptr inbounds nuw i8, ptr %900, i64 %902
  %906 = load <2 x i64>, ptr %901, align 1, !tbaa !9
  store <2 x i64> %906, ptr %900, align 1, !tbaa !9
  %907 = icmp ult i64 %902, 17
  br i1 %907, label %.loopexit98, label %908

908:                                              ; preds = %904
  %909 = getelementptr inbounds nuw i8, ptr %900, i64 16
  br label %910

910:                                              ; preds = %910, %908
  %911 = phi ptr [ %909, %908 ], [ %918, %910 ]
  %912 = phi ptr [ %901, %908 ], [ %916, %910 ]
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 16
  %914 = load <2 x i64>, ptr %913, align 1, !tbaa !9
  store <2 x i64> %914, ptr %911, align 1, !tbaa !9
  %915 = getelementptr inbounds nuw i8, ptr %911, i64 16
  %916 = getelementptr inbounds nuw i8, ptr %912, i64 32
  %917 = load <2 x i64>, ptr %916, align 1, !tbaa !9
  store <2 x i64> %917, ptr %915, align 1, !tbaa !9
  %918 = getelementptr inbounds nuw i8, ptr %911, i64 32
  %919 = icmp ult ptr %918, %905
  br i1 %919, label %910, label %.loopexit98, !llvm.loop !97

920:                                              ; preds = %899
  %921 = icmp samesign ult i64 %371, 8
  br i1 %921, label %922, label %944

922:                                              ; preds = %920
  %923 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %371
  %924 = load i32, ptr %923, align 4, !tbaa !30
  %925 = load i8, ptr %901, align 1, !tbaa !9
  store i8 %925, ptr %900, align 1, !tbaa !9
  %926 = getelementptr inbounds nuw i8, ptr %901, i64 1
  %927 = load i8, ptr %926, align 1, !tbaa !9
  %928 = getelementptr inbounds nuw i8, ptr %900, i64 1
  store i8 %927, ptr %928, align 1, !tbaa !9
  %929 = getelementptr inbounds nuw i8, ptr %901, i64 2
  %930 = load i8, ptr %929, align 1, !tbaa !9
  %931 = getelementptr inbounds nuw i8, ptr %900, i64 2
  store i8 %930, ptr %931, align 1, !tbaa !9
  %932 = getelementptr inbounds nuw i8, ptr %901, i64 3
  %933 = load i8, ptr %932, align 1, !tbaa !9
  %934 = getelementptr inbounds nuw i8, ptr %900, i64 3
  store i8 %933, ptr %934, align 1, !tbaa !9
  %935 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %371
  %936 = load i32, ptr %935, align 4, !tbaa !30
  %937 = zext i32 %936 to i64
  %938 = getelementptr inbounds nuw i8, ptr %901, i64 %937
  %939 = getelementptr inbounds nuw i8, ptr %900, i64 4
  %940 = load i32, ptr %938, align 1
  store i32 %940, ptr %939, align 1
  %941 = sext i32 %924 to i64
  %942 = sub nsw i64 0, %941
  %943 = getelementptr inbounds i8, ptr %938, i64 %942
  br label %946

944:                                              ; preds = %920
  %945 = load i64, ptr %901, align 1
  store i64 %945, ptr %900, align 1
  br label %946

946:                                              ; preds = %944, %922
  %947 = phi ptr [ %943, %922 ], [ %901, %944 ]
  %948 = getelementptr inbounds nuw i8, ptr %947, i64 8
  %949 = getelementptr inbounds nuw i8, ptr %900, i64 8
  %950 = icmp ugt i64 %902, 8
  br i1 %950, label %951, label %.loopexit98

951:                                              ; preds = %946
  %952 = ptrtoint ptr %949 to i64
  %953 = ptrtoint ptr %948 to i64
  %954 = sub i64 %952, %953
  %955 = getelementptr i8, ptr %900, i64 %902
  %956 = icmp slt i64 %954, 16
  br i1 %956, label %957, label %997

957:                                              ; preds = %951
  %958 = tail call i64 @llvm.umin.i64(i64 %371, i64 %883)
  %959 = tail call i64 @llvm.umax.i64(i64 %371, i64 %883)
  %960 = sub i64 %276, %371
  %961 = add i64 %960, %387
  %962 = add i64 %961, %958
  %963 = add i64 %962, %959
  %964 = add i64 %959, %276
  %965 = add i64 %964, 16
  %966 = tail call i64 @llvm.umax.i64(i64 %963, i64 %965)
  %reass.sub238 = sub i64 %966, %964
  %967 = add i64 %reass.sub238, -9
  %968 = lshr i64 %967, 3
  %969 = add nuw nsw i64 %968, 1
  %970 = icmp ult i64 %967, 24
  %971 = icmp ult i64 %954, 32
  %972 = or i1 %970, %971
  br i1 %972, label %.preheader750.preheader, label %973

973:                                              ; preds = %957
  %974 = and i64 %969, 4611686018427387900
  br label %975

975:                                              ; preds = %975, %973
  %976 = phi i64 [ 0, %973 ], [ %984, %975 ]
  %977 = shl i64 %976, 3
  %978 = getelementptr i8, ptr %949, i64 %977
  %979 = getelementptr i8, ptr %948, i64 %977
  %980 = getelementptr i8, ptr %979, i64 16
  %981 = load <2 x i64>, ptr %979, align 1
  %982 = load <2 x i64>, ptr %980, align 1
  %983 = getelementptr i8, ptr %978, i64 16
  store <2 x i64> %981, ptr %978, align 1
  store <2 x i64> %982, ptr %983, align 1
  %984 = add nuw i64 %976, 4
  %985 = icmp eq i64 %984, %974
  br i1 %985, label %986, label %975, !llvm.loop !137

986:                                              ; preds = %975
  %987 = shl i64 %974, 3
  %988 = getelementptr i8, ptr %949, i64 %987
  %989 = getelementptr i8, ptr %948, i64 %987
  %990 = icmp eq i64 %969, %974
  br i1 %990, label %.loopexit98, label %.preheader750.preheader

.preheader750.preheader:                          ; preds = %986, %957
  %.ph734 = phi ptr [ %949, %957 ], [ %988, %986 ]
  %.ph735 = phi ptr [ %948, %957 ], [ %989, %986 ]
  br label %.preheader750

.preheader750:                                    ; preds = %.preheader750.preheader, %.preheader750
  %991 = phi ptr [ %994, %.preheader750 ], [ %.ph734, %.preheader750.preheader ]
  %992 = phi ptr [ %995, %.preheader750 ], [ %.ph735, %.preheader750.preheader ]
  %993 = load i64, ptr %992, align 1
  store i64 %993, ptr %991, align 1
  %994 = getelementptr inbounds nuw i8, ptr %991, i64 8
  %995 = getelementptr inbounds nuw i8, ptr %992, i64 8
  %996 = icmp ult ptr %994, %955
  br i1 %996, label %.preheader750, label %.loopexit98, !llvm.loop !138

997:                                              ; preds = %951
  %998 = load <2 x i64>, ptr %948, align 1, !tbaa !9
  store <2 x i64> %998, ptr %949, align 1, !tbaa !9
  %999 = icmp ult i64 %902, 25
  br i1 %999, label %.loopexit98, label %1000

1000:                                             ; preds = %997
  %1001 = getelementptr inbounds nuw i8, ptr %900, i64 24
  br label %1002

1002:                                             ; preds = %1002, %1000
  %1003 = phi ptr [ %1001, %1000 ], [ %1010, %1002 ]
  %1004 = phi ptr [ %948, %1000 ], [ %1008, %1002 ]
  %1005 = getelementptr inbounds nuw i8, ptr %1004, i64 16
  %1006 = load <2 x i64>, ptr %1005, align 1, !tbaa !9
  store <2 x i64> %1006, ptr %1003, align 1, !tbaa !9
  %1007 = getelementptr inbounds nuw i8, ptr %1003, i64 16
  %1008 = getelementptr inbounds nuw i8, ptr %1004, i64 32
  %1009 = load <2 x i64>, ptr %1008, align 1, !tbaa !9
  store <2 x i64> %1009, ptr %1007, align 1, !tbaa !9
  %1010 = getelementptr inbounds nuw i8, ptr %1003, i64 32
  %1011 = icmp ult ptr %1010, %955
  br i1 %1011, label %1002, label %.loopexit98, !llvm.loop !97

.loopexit98:                                      ; preds = %1002, %.preheader750, %910, %997, %986, %946, %904, %895, %862
  %1012 = phi i64 [ %863, %862 ], [ %850, %895 ], [ %850, %946 ], [ %850, %904 ], [ %850, %997 ], [ %850, %986 ], [ %850, %910 ], [ %850, %.preheader750 ], [ %850, %1002 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1013 = icmp ult i64 %1012, -119
  %1014 = getelementptr inbounds nuw i8, ptr %843, i64 %1012
  %1015 = add nsw i32 %290, -1
  br i1 %1013, label %1016, label %.loopexit96

1016:                                             ; preds = %.loopexit98
  %1017 = icmp eq i32 %1015, 0
  br i1 %1017, label %.loopexit97, label %1018

1018:                                             ; preds = %1016
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !139
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !140
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !142
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !143
  %1019 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1020 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %1021

1021:                                             ; preds = %1411, %1018
  %1022 = phi ptr [ %694, %1018 ], [ %1242, %1411 ]
  %1023 = phi i32 [ %695, %1018 ], [ %1243, %1411 ]
  %1024 = phi i64 [ %696, %1018 ], [ %1244, %1411 ]
  %1025 = phi i64 [ %372, %1018 ], [ %1113, %1411 ]
  %1026 = phi i64 [ %370, %1018 ], [ %1111, %1411 ]
  %1027 = phi i64 [ %371, %1018 ], [ %1112, %1411 ]
  %1028 = phi i64 [ %697, %1018 ], [ %1245, %1411 ]
  %1029 = phi i64 [ %698, %1018 ], [ %1246, %1411 ]
  %1030 = phi i64 [ %699, %1018 ], [ %1247, %1411 ]
  %1031 = phi i32 [ %1015, %1018 ], [ %1413, %1411 ]
  %1032 = phi ptr [ %1014, %1018 ], [ %1412, %1411 ]
  %1033 = icmp eq i32 %1031, 1
  %1034 = getelementptr inbounds nuw [8 x i8], ptr %171, i64 %1030
  %1035 = getelementptr inbounds nuw [8 x i8], ptr %272, i64 %1028
  %1036 = getelementptr inbounds nuw [8 x i8], ptr %222, i64 %1029
  %1037 = getelementptr inbounds nuw i8, ptr %1035, i64 4
  %1038 = load i32, ptr %1037, align 4, !tbaa !41, !noalias !144
  %1039 = zext i32 %1038 to i64
  %1040 = getelementptr inbounds nuw i8, ptr %1034, i64 4
  %1041 = load i32, ptr %1040, align 4, !tbaa !41, !noalias !144
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds nuw i8, ptr %1036, i64 4
  %1044 = load i32, ptr %1043, align 4, !tbaa !41, !noalias !144
  %1045 = getelementptr inbounds nuw i8, ptr %1034, i64 2
  %1046 = load i8, ptr %1045, align 2, !tbaa !58, !noalias !144
  %1047 = getelementptr inbounds nuw i8, ptr %1035, i64 2
  %1048 = load i8, ptr %1047, align 2, !tbaa !58, !noalias !144
  %1049 = getelementptr inbounds nuw i8, ptr %1036, i64 2
  %1050 = load i8, ptr %1049, align 2, !tbaa !58, !noalias !144
  %1051 = zext i8 %1046 to i32
  %1052 = zext i8 %1048 to i32
  %1053 = add i8 %1048, %1046
  %1054 = add i8 %1053, %1050
  %1055 = load i16, ptr %1034, align 4, !tbaa !57, !noalias !144
  %1056 = load i16, ptr %1035, align 4, !tbaa !57, !noalias !144
  %1057 = load i16, ptr %1036, align 4, !tbaa !57, !noalias !144
  %1058 = getelementptr inbounds nuw i8, ptr %1034, i64 3
  %1059 = load i8, ptr %1058, align 1, !tbaa !56, !noalias !144
  %1060 = zext i8 %1059 to i32
  %1061 = getelementptr inbounds nuw i8, ptr %1035, i64 3
  %1062 = load i8, ptr %1061, align 1, !tbaa !56, !noalias !144
  %1063 = zext i8 %1062 to i32
  %1064 = getelementptr inbounds nuw i8, ptr %1036, i64 3
  %1065 = load i8, ptr %1064, align 1, !tbaa !56, !noalias !144
  %1066 = zext i8 %1065 to i32
  %1067 = icmp ugt i8 %1050, 1
  br i1 %1067, label %1068, label %1080

1068:                                             ; preds = %1021
  %1069 = zext i8 %1050 to i32
  %1070 = and i32 %1023, 63
  %1071 = zext nneg i32 %1070 to i64
  %1072 = shl i64 %1024, %1071
  %1073 = sub nsw i32 0, %1069
  %1074 = and i32 %1073, 63
  %1075 = zext nneg i32 %1074 to i64
  %1076 = lshr i64 %1072, %1075
  %1077 = add i32 %1023, %1069
  store i32 %1077, ptr %131, align 8, !tbaa !80, !noalias !144
  %1078 = zext i32 %1044 to i64
  %1079 = add i64 %1076, %1078
  store i64 %1026, ptr %44, align 8, !tbaa !45, !noalias !144
  br label %1109

1080:                                             ; preds = %1021
  %1081 = icmp eq i32 %1041, 0
  %1082 = icmp eq i8 %1050, 0
  br i1 %1082, label %1083, label %1086, !prof !87

1083:                                             ; preds = %1080
  %1084 = select i1 %1081, i64 %1026, i64 %1027
  %1085 = select i1 %1081, i64 %1027, i64 %1026
  br label %1109

1086:                                             ; preds = %1080
  %1087 = zext i1 %1081 to i32
  %1088 = add i32 %1044, %1087
  %1089 = zext i32 %1088 to i64
  %1090 = and i32 %1023, 63
  %1091 = zext nneg i32 %1090 to i64
  %1092 = shl i64 %1024, %1091
  %1093 = lshr i64 %1092, 63
  %1094 = add i32 %1023, 1
  store i32 %1094, ptr %131, align 8, !tbaa !80, !noalias !144
  %1095 = add nuw nsw i64 %1093, %1089
  %1096 = icmp eq i64 %1095, 3
  br i1 %1096, label %1097, label %1101

1097:                                             ; preds = %1086
  %1098 = add i64 %1027, -1
  %1099 = icmp eq i64 %1098, 0
  %1100 = select i1 %1099, i64 -1, i64 %1098
  br label %1107

1101:                                             ; preds = %1086
  %1102 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %1095
  %1103 = load i64, ptr %1102, align 8, !tbaa !45, !noalias !144
  %1104 = icmp eq i64 %1103, 0
  %1105 = select i1 %1104, i64 -1, i64 %1103
  %1106 = icmp eq i64 %1095, 1
  br i1 %1106, label %1109, label %1107

1107:                                             ; preds = %1101, %1097
  %1108 = phi i64 [ %1100, %1097 ], [ %1105, %1101 ]
  store i64 %1026, ptr %44, align 8, !tbaa !45, !noalias !144
  br label %1109

1109:                                             ; preds = %1107, %1101, %1083, %1068
  %1110 = phi i32 [ %1023, %1083 ], [ %1077, %1068 ], [ %1094, %1107 ], [ %1094, %1101 ]
  %1111 = phi i64 [ %1085, %1083 ], [ %1027, %1068 ], [ %1027, %1107 ], [ %1027, %1101 ]
  %1112 = phi i64 [ %1084, %1083 ], [ %1079, %1068 ], [ %1108, %1107 ], [ %1105, %1101 ]
  %1113 = phi i64 [ %1025, %1083 ], [ %1026, %1068 ], [ %1026, %1107 ], [ %1025, %1101 ]
  %1114 = sub i64 0, %1112
  store i64 %1111, ptr %40, align 8, !tbaa !45, !noalias !144
  store i64 %1112, ptr %34, align 8, !tbaa !45, !noalias !144
  %1115 = icmp eq i8 %1048, 0
  br i1 %1115, label %1126, label %1116

1116:                                             ; preds = %1109
  %1117 = and i32 %1110, 63
  %1118 = zext nneg i32 %1117 to i64
  %1119 = shl i64 %1024, %1118
  %1120 = sub nsw i32 0, %1052
  %1121 = and i32 %1120, 63
  %1122 = zext nneg i32 %1121 to i64
  %1123 = lshr i64 %1119, %1122
  %1124 = add i32 %1110, %1052
  store i32 %1124, ptr %131, align 8, !tbaa !80, !noalias !144
  %1125 = add i64 %1123, %1039
  br label %1126

1126:                                             ; preds = %1116, %1109
  %1127 = phi i32 [ %1110, %1109 ], [ %1124, %1116 ]
  %1128 = phi i64 [ %1039, %1109 ], [ %1125, %1116 ]
  %1129 = icmp ugt i8 %1054, 30
  br i1 %1129, label %1130, label %1160, !prof !52

1130:                                             ; preds = %1126
  %1131 = icmp ugt i32 %1127, 64
  br i1 %1131, label %1132, label %1133, !prof !52

1132:                                             ; preds = %1130
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75, !noalias !144
  br label %1160

1133:                                             ; preds = %1130
  %1134 = icmp ult ptr %1022, %48
  br i1 %1134, label %1142, label %1135

1135:                                             ; preds = %1133
  %1136 = lshr i32 %1127, 3
  %1137 = zext nneg i32 %1136 to i64
  %1138 = sub nsw i64 0, %1137
  %1139 = getelementptr inbounds i8, ptr %1022, i64 %1138
  store ptr %1139, ptr %142, align 8, !tbaa !75, !noalias !144
  %1140 = and i32 %1127, 7
  store i32 %1140, ptr %131, align 8, !tbaa !80, !noalias !144
  %1141 = load i64, ptr %1139, align 1, !tbaa !45, !noalias !144
  store i64 %1141, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1160

1142:                                             ; preds = %1133
  %1143 = icmp eq ptr %1022, %3
  br i1 %1143, label %1160, label %1144

1144:                                             ; preds = %1142
  %1145 = lshr i32 %1127, 3
  %1146 = zext nneg i32 %1145 to i64
  %1147 = sub nsw i64 0, %1146
  %1148 = getelementptr inbounds i8, ptr %1022, i64 %1147
  %1149 = icmp ult ptr %1148, %3
  %1150 = ptrtoint ptr %1022 to i64
  %1151 = sub i64 %1150, %278
  %1152 = trunc i64 %1151 to i32
  %1153 = select i1 %1149, i32 %1152, i32 %1145
  %1154 = zext i32 %1153 to i64
  %1155 = sub nsw i64 0, %1154
  %1156 = getelementptr inbounds i8, ptr %1022, i64 %1155
  store ptr %1156, ptr %142, align 8, !tbaa !75, !noalias !144
  %1157 = shl i32 %1153, 3
  %1158 = sub i32 %1127, %1157
  store i32 %1158, ptr %131, align 8, !tbaa !80, !noalias !144
  %1159 = load i64, ptr %1156, align 1, !tbaa !45, !noalias !144
  store i64 %1159, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1160

1160:                                             ; preds = %1144, %1142, %1135, %1132, %1126
  %1161 = phi ptr [ %1156, %1144 ], [ %1022, %1142 ], [ %1139, %1135 ], [ @BIT_reloadDStream.zeroFilled, %1132 ], [ %1022, %1126 ]
  %1162 = phi i32 [ %1158, %1144 ], [ %1127, %1142 ], [ %1140, %1135 ], [ %1127, %1132 ], [ %1127, %1126 ]
  %1163 = phi i64 [ %1159, %1144 ], [ %1024, %1142 ], [ %1141, %1135 ], [ %1024, %1132 ], [ %1024, %1126 ]
  %1164 = icmp eq i8 %1046, 0
  br i1 %1164, label %1175, label %1165

1165:                                             ; preds = %1160
  %1166 = and i32 %1162, 63
  %1167 = zext nneg i32 %1166 to i64
  %1168 = shl i64 %1163, %1167
  %1169 = sub nsw i32 0, %1051
  %1170 = and i32 %1169, 63
  %1171 = zext nneg i32 %1170 to i64
  %1172 = lshr i64 %1168, %1171
  %1173 = add i32 %1162, %1051
  store i32 %1173, ptr %131, align 8, !tbaa !80, !noalias !144
  %1174 = add i64 %1172, %1042
  br label %1175

1175:                                             ; preds = %1165, %1160
  %1176 = phi i32 [ %1162, %1160 ], [ %1173, %1165 ]
  %1177 = phi i64 [ %1042, %1160 ], [ %1174, %1165 ]
  br i1 %1033, label %1241, label %1178

1178:                                             ; preds = %1175
  %1179 = add i32 %1176, %1060
  %1180 = sub i32 0, %1179
  %1181 = and i32 %1180, 63
  %1182 = zext nneg i32 %1181 to i64
  %1183 = lshr i64 %1163, %1182
  %1184 = zext nneg i8 %1059 to i64
  %1185 = shl nsw i64 -1, %1184
  %1186 = xor i64 %1185, -1
  %1187 = and i64 %1183, %1186
  %1188 = zext i16 %1055 to i64
  %1189 = add nuw i64 %1187, %1188
  store i64 %1189, ptr %127, align 8, !tbaa !78, !noalias !144
  %1190 = add i32 %1179, %1063
  %1191 = sub i32 0, %1190
  %1192 = and i32 %1191, 63
  %1193 = zext nneg i32 %1192 to i64
  %1194 = lshr i64 %1163, %1193
  %1195 = zext nneg i8 %1062 to i64
  %1196 = shl nsw i64 -1, %1195
  %1197 = xor i64 %1196, -1
  %1198 = and i64 %1194, %1197
  %1199 = zext i16 %1056 to i64
  %1200 = add nuw i64 %1198, %1199
  store i64 %1200, ptr %224, align 8, !tbaa !78, !noalias !144
  %1201 = add i32 %1190, %1066
  %1202 = sub i32 0, %1201
  %1203 = and i32 %1202, 63
  %1204 = zext nneg i32 %1203 to i64
  %1205 = lshr i64 %1163, %1204
  %1206 = zext nneg i8 %1065 to i64
  %1207 = shl nsw i64 -1, %1206
  %1208 = xor i64 %1207, -1
  %1209 = and i64 %1205, %1208
  store i32 %1201, ptr %131, align 8, !tbaa !80, !noalias !144
  %1210 = zext i16 %1057 to i64
  %1211 = add nuw i64 %1209, %1210
  store i64 %1211, ptr %173, align 8, !tbaa !78, !noalias !144
  %1212 = icmp ugt i32 %1201, 64
  br i1 %1212, label %1213, label %1214, !prof !52

1213:                                             ; preds = %1178
  store ptr @BIT_reloadDStream.zeroFilled, ptr %142, align 8, !tbaa !75, !noalias !144
  br label %1241

1214:                                             ; preds = %1178
  %1215 = icmp ult ptr %1161, %48
  br i1 %1215, label %1223, label %1216

1216:                                             ; preds = %1214
  %1217 = lshr i32 %1201, 3
  %1218 = zext nneg i32 %1217 to i64
  %1219 = sub nsw i64 0, %1218
  %1220 = getelementptr inbounds i8, ptr %1161, i64 %1219
  store ptr %1220, ptr %142, align 8, !tbaa !75, !noalias !144
  %1221 = and i32 %1201, 7
  store i32 %1221, ptr %131, align 8, !tbaa !80, !noalias !144
  %1222 = load i64, ptr %1220, align 1, !tbaa !45, !noalias !144
  store i64 %1222, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1241

1223:                                             ; preds = %1214
  %1224 = icmp eq ptr %1161, %3
  br i1 %1224, label %1241, label %1225

1225:                                             ; preds = %1223
  %1226 = lshr i32 %1201, 3
  %1227 = zext nneg i32 %1226 to i64
  %1228 = sub nsw i64 0, %1227
  %1229 = getelementptr inbounds i8, ptr %1161, i64 %1228
  %1230 = icmp ult ptr %1229, %3
  %1231 = ptrtoint ptr %1161 to i64
  %1232 = sub i64 %1231, %278
  %1233 = trunc i64 %1232 to i32
  %1234 = select i1 %1230, i32 %1233, i32 %1226
  %1235 = zext i32 %1234 to i64
  %1236 = sub nsw i64 0, %1235
  %1237 = getelementptr inbounds i8, ptr %1161, i64 %1236
  store ptr %1237, ptr %142, align 8, !tbaa !75, !noalias !144
  %1238 = shl i32 %1234, 3
  %1239 = sub i32 %1201, %1238
  store i32 %1239, ptr %131, align 8, !tbaa !80, !noalias !144
  %1240 = load i64, ptr %1237, align 1, !tbaa !45, !noalias !144
  store i64 %1240, ptr %11, align 8, !tbaa !76, !noalias !144
  br label %1241

1241:                                             ; preds = %1225, %1223, %1216, %1213, %1175
  %1242 = phi ptr [ %1161, %1223 ], [ @BIT_reloadDStream.zeroFilled, %1213 ], [ %1220, %1216 ], [ %1237, %1225 ], [ %1161, %1175 ]
  %1243 = phi i32 [ %1201, %1223 ], [ %1201, %1213 ], [ %1221, %1216 ], [ %1239, %1225 ], [ %1176, %1175 ]
  %1244 = phi i64 [ %1163, %1223 ], [ %1163, %1213 ], [ %1222, %1216 ], [ %1240, %1225 ], [ %1163, %1175 ]
  %1245 = phi i64 [ %1200, %1223 ], [ %1200, %1213 ], [ %1200, %1216 ], [ %1200, %1225 ], [ %1028, %1175 ]
  %1246 = phi i64 [ %1211, %1223 ], [ %1211, %1213 ], [ %1211, %1216 ], [ %1211, %1225 ], [ %1029, %1175 ]
  %1247 = phi i64 [ %1189, %1223 ], [ %1189, %1213 ], [ %1189, %1216 ], [ %1189, %1225 ], [ %1030, %1175 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %1177, ptr %9, align 8
  store i64 %1128, ptr %1019, align 8
  store i64 %1112, ptr %1020, align 8
  %1248 = getelementptr i8, ptr %1032, i64 %1177
  %1249 = add i64 %1177, %1128
  %1250 = load ptr, ptr %10, align 8, !tbaa !38
  %1251 = getelementptr inbounds nuw i8, ptr %1250, i64 %1177
  %1252 = getelementptr inbounds i8, ptr %1248, i64 %1114
  %1253 = icmp ugt ptr %1251, %845
  %1254 = getelementptr inbounds nuw i8, ptr %1032, i64 %1249
  %1255 = icmp ugt ptr %1254, %855
  %1256 = select i1 %1253, i1 true, i1 %1255
  br i1 %1256, label %1260, label %1257, !prof !101

1257:                                             ; preds = %1241
  %1258 = load <2 x i64>, ptr %1250, align 1, !tbaa !9
  store <2 x i64> %1258, ptr %1032, align 1, !tbaa !9
  %1259 = icmp ugt i64 %1177, 16
  br i1 %1259, label %1262, label %.loopexit95, !prof !52

1260:                                             ; preds = %1241
  %1261 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1032, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %845, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %.loopexit

1262:                                             ; preds = %1257
  %1263 = getelementptr inbounds nuw i8, ptr %1032, i64 16
  %1264 = getelementptr inbounds nuw i8, ptr %1250, i64 16
  %1265 = load <2 x i64>, ptr %1264, align 1, !tbaa !9
  store <2 x i64> %1265, ptr %1263, align 1, !tbaa !9
  %1266 = icmp ult i64 %1177, 33
  br i1 %1266, label %.loopexit95, label %1267

1267:                                             ; preds = %1262
  %1268 = getelementptr inbounds nuw i8, ptr %1032, i64 32
  br label %1269

1269:                                             ; preds = %1269, %1267
  %1270 = phi ptr [ %1268, %1267 ], [ %1277, %1269 ]
  %1271 = phi ptr [ %1264, %1267 ], [ %1275, %1269 ]
  %1272 = getelementptr inbounds nuw i8, ptr %1271, i64 16
  %1273 = load <2 x i64>, ptr %1272, align 1, !tbaa !9
  store <2 x i64> %1273, ptr %1270, align 1, !tbaa !9
  %1274 = getelementptr inbounds nuw i8, ptr %1270, i64 16
  %1275 = getelementptr inbounds nuw i8, ptr %1271, i64 32
  %1276 = load <2 x i64>, ptr %1275, align 1, !tbaa !9
  store <2 x i64> %1276, ptr %1274, align 1, !tbaa !9
  %1277 = getelementptr inbounds nuw i8, ptr %1270, i64 32
  %1278 = icmp ult ptr %1277, %1248
  br i1 %1278, label %1269, label %.loopexit95, !llvm.loop !97

.loopexit95:                                      ; preds = %1269, %1262, %1257
  store ptr %1251, ptr %10, align 8, !tbaa !38
  %1279 = ptrtoint ptr %1248 to i64
  %1280 = sub i64 %1279, %276
  %1281 = icmp ugt i64 %1112, %1280
  br i1 %1281, label %1282, label %1296

1282:                                             ; preds = %.loopexit95
  %1283 = sub i64 %1279, %277
  %1284 = icmp ugt i64 %1112, %1283
  br i1 %1284, label %1285, label %1286, !prof !52

1285:                                             ; preds = %1282
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit96

1286:                                             ; preds = %1282
  %1287 = ptrtoint ptr %1252 to i64
  %1288 = sub i64 %1287, %276
  %1289 = getelementptr inbounds i8, ptr %29, i64 %1288
  %1290 = add nsw i64 %1288, %1128
  %1291 = icmp sgt i64 %1290, 0
  br i1 %1291, label %1293, label %1292

1292:                                             ; preds = %1286
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1248, ptr align 1 %1289, i64 %1128, i1 false)
  br label %.loopexit

1293:                                             ; preds = %1286
  %1294 = sub nsw i64 0, %1288
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1248, ptr align 1 %1289, i64 %1294, i1 false)
  %1295 = getelementptr inbounds nuw i8, ptr %1248, i64 %1294
  store i64 %1290, ptr %1019, align 8, !tbaa !127
  br label %1296

1296:                                             ; preds = %1293, %.loopexit95
  %1297 = phi ptr [ %1295, %1293 ], [ %1248, %.loopexit95 ]
  %1298 = phi ptr [ %25, %1293 ], [ %1252, %.loopexit95 ]
  %1299 = phi i64 [ %1290, %1293 ], [ %1128, %.loopexit95 ]
  %1300 = icmp ugt i64 %1112, 15
  br i1 %1300, label %1301, label %1317, !prof !87

1301:                                             ; preds = %1296
  %1302 = getelementptr inbounds nuw i8, ptr %1297, i64 %1299
  %1303 = load <2 x i64>, ptr %1298, align 1, !tbaa !9
  store <2 x i64> %1303, ptr %1297, align 1, !tbaa !9
  %1304 = icmp ult i64 %1299, 17
  br i1 %1304, label %.loopexit, label %1305

1305:                                             ; preds = %1301
  %1306 = getelementptr inbounds nuw i8, ptr %1297, i64 16
  br label %1307

1307:                                             ; preds = %1307, %1305
  %1308 = phi ptr [ %1306, %1305 ], [ %1315, %1307 ]
  %1309 = phi ptr [ %1298, %1305 ], [ %1313, %1307 ]
  %1310 = getelementptr inbounds nuw i8, ptr %1309, i64 16
  %1311 = load <2 x i64>, ptr %1310, align 1, !tbaa !9
  store <2 x i64> %1311, ptr %1308, align 1, !tbaa !9
  %1312 = getelementptr inbounds nuw i8, ptr %1308, i64 16
  %1313 = getelementptr inbounds nuw i8, ptr %1309, i64 32
  %1314 = load <2 x i64>, ptr %1313, align 1, !tbaa !9
  store <2 x i64> %1314, ptr %1312, align 1, !tbaa !9
  %1315 = getelementptr inbounds nuw i8, ptr %1308, i64 32
  %1316 = icmp ult ptr %1315, %1302
  br i1 %1316, label %1307, label %.loopexit, !llvm.loop !97

1317:                                             ; preds = %1296
  %1318 = icmp samesign ult i64 %1112, 8
  br i1 %1318, label %1319, label %1341

1319:                                             ; preds = %1317
  %1320 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1112
  %1321 = load i32, ptr %1320, align 4, !tbaa !30
  %1322 = load i8, ptr %1298, align 1, !tbaa !9
  store i8 %1322, ptr %1297, align 1, !tbaa !9
  %1323 = getelementptr inbounds nuw i8, ptr %1298, i64 1
  %1324 = load i8, ptr %1323, align 1, !tbaa !9
  %1325 = getelementptr inbounds nuw i8, ptr %1297, i64 1
  store i8 %1324, ptr %1325, align 1, !tbaa !9
  %1326 = getelementptr inbounds nuw i8, ptr %1298, i64 2
  %1327 = load i8, ptr %1326, align 1, !tbaa !9
  %1328 = getelementptr inbounds nuw i8, ptr %1297, i64 2
  store i8 %1327, ptr %1328, align 1, !tbaa !9
  %1329 = getelementptr inbounds nuw i8, ptr %1298, i64 3
  %1330 = load i8, ptr %1329, align 1, !tbaa !9
  %1331 = getelementptr inbounds nuw i8, ptr %1297, i64 3
  store i8 %1330, ptr %1331, align 1, !tbaa !9
  %1332 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1112
  %1333 = load i32, ptr %1332, align 4, !tbaa !30
  %1334 = zext i32 %1333 to i64
  %1335 = getelementptr inbounds nuw i8, ptr %1298, i64 %1334
  %1336 = getelementptr inbounds nuw i8, ptr %1297, i64 4
  %1337 = load i32, ptr %1335, align 1
  store i32 %1337, ptr %1336, align 1
  %1338 = sext i32 %1321 to i64
  %1339 = sub nsw i64 0, %1338
  %1340 = getelementptr inbounds i8, ptr %1335, i64 %1339
  br label %1343

1341:                                             ; preds = %1317
  %1342 = load i64, ptr %1298, align 1
  store i64 %1342, ptr %1297, align 1
  br label %1343

1343:                                             ; preds = %1341, %1319
  %1344 = phi ptr [ %1340, %1319 ], [ %1298, %1341 ]
  %1345 = getelementptr inbounds nuw i8, ptr %1344, i64 8
  %1346 = getelementptr inbounds nuw i8, ptr %1297, i64 8
  %1347 = icmp ugt i64 %1299, 8
  br i1 %1347, label %1348, label %.loopexit

1348:                                             ; preds = %1343
  %1349 = ptrtoint ptr %1346 to i64
  %1350 = ptrtoint ptr %1345 to i64
  %1351 = sub i64 %1349, %1350
  %1352 = getelementptr i8, ptr %1297, i64 %1299
  %1353 = icmp slt i64 %1351, 16
  br i1 %1353, label %1354, label %1394

1354:                                             ; preds = %1348
  %1355 = tail call i64 @llvm.umin.i64(i64 %1112, i64 %1280)
  %1356 = tail call i64 @llvm.umax.i64(i64 %1112, i64 %1280)
  %1357 = sub i64 %276, %1112
  %1358 = add i64 %1357, %1128
  %1359 = add i64 %1358, %1355
  %1360 = add i64 %1359, %1356
  %1361 = add i64 %1356, %279
  %1362 = tail call i64 @llvm.umax.i64(i64 %1360, i64 %1361)
  %1363 = add i64 %1356, %276
  %reass.sub227 = sub i64 %1362, %1363
  %1364 = add i64 %reass.sub227, -9
  %1365 = lshr i64 %1364, 3
  %1366 = add nuw nsw i64 %1365, 1
  %1367 = icmp ult i64 %1364, 24
  %1368 = icmp ult i64 %1351, 32
  %1369 = or i1 %1367, %1368
  br i1 %1369, label %.preheader.preheader, label %1370

1370:                                             ; preds = %1354
  %1371 = and i64 %1366, 4611686018427387900
  br label %1372

1372:                                             ; preds = %1372, %1370
  %1373 = phi i64 [ 0, %1370 ], [ %1381, %1372 ]
  %1374 = shl i64 %1373, 3
  %1375 = getelementptr i8, ptr %1346, i64 %1374
  %1376 = getelementptr i8, ptr %1345, i64 %1374
  %1377 = getelementptr i8, ptr %1376, i64 16
  %1378 = load <2 x i64>, ptr %1376, align 1
  %1379 = load <2 x i64>, ptr %1377, align 1
  %1380 = getelementptr i8, ptr %1375, i64 16
  store <2 x i64> %1378, ptr %1375, align 1
  store <2 x i64> %1379, ptr %1380, align 1
  %1381 = add nuw i64 %1373, 4
  %1382 = icmp eq i64 %1381, %1371
  br i1 %1382, label %1383, label %1372, !llvm.loop !147

1383:                                             ; preds = %1372
  %1384 = shl i64 %1371, 3
  %1385 = getelementptr i8, ptr %1346, i64 %1384
  %1386 = getelementptr i8, ptr %1345, i64 %1384
  %1387 = icmp eq i64 %1366, %1371
  br i1 %1387, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1383, %1354
  %.ph = phi ptr [ %1346, %1354 ], [ %1385, %1383 ]
  %.ph714 = phi ptr [ %1345, %1354 ], [ %1386, %1383 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %1388 = phi ptr [ %1391, %.preheader ], [ %.ph, %.preheader.preheader ]
  %1389 = phi ptr [ %1392, %.preheader ], [ %.ph714, %.preheader.preheader ]
  %1390 = load i64, ptr %1389, align 1
  store i64 %1390, ptr %1388, align 1
  %1391 = getelementptr inbounds nuw i8, ptr %1388, i64 8
  %1392 = getelementptr inbounds nuw i8, ptr %1389, i64 8
  %1393 = icmp ult ptr %1391, %1352
  br i1 %1393, label %.preheader, label %.loopexit, !llvm.loop !148

1394:                                             ; preds = %1348
  %1395 = load <2 x i64>, ptr %1345, align 1, !tbaa !9
  store <2 x i64> %1395, ptr %1346, align 1, !tbaa !9
  %1396 = icmp ult i64 %1299, 25
  br i1 %1396, label %.loopexit, label %1397

1397:                                             ; preds = %1394
  %1398 = getelementptr inbounds nuw i8, ptr %1297, i64 24
  br label %1399

1399:                                             ; preds = %1399, %1397
  %1400 = phi ptr [ %1398, %1397 ], [ %1407, %1399 ]
  %1401 = phi ptr [ %1345, %1397 ], [ %1405, %1399 ]
  %1402 = getelementptr inbounds nuw i8, ptr %1401, i64 16
  %1403 = load <2 x i64>, ptr %1402, align 1, !tbaa !9
  store <2 x i64> %1403, ptr %1400, align 1, !tbaa !9
  %1404 = getelementptr inbounds nuw i8, ptr %1400, i64 16
  %1405 = getelementptr inbounds nuw i8, ptr %1401, i64 32
  %1406 = load <2 x i64>, ptr %1405, align 1, !tbaa !9
  store <2 x i64> %1406, ptr %1404, align 1, !tbaa !9
  %1407 = getelementptr inbounds nuw i8, ptr %1400, i64 32
  %1408 = icmp ult ptr %1407, %1352
  br i1 %1408, label %1399, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %1399, %.preheader, %1307, %1394, %1383, %1343, %1301, %1292, %1260
  %1409 = phi i64 [ %1261, %1260 ], [ %1249, %1292 ], [ %1249, %1343 ], [ %1249, %1301 ], [ %1249, %1394 ], [ %1249, %1383 ], [ %1249, %1307 ], [ %1249, %.preheader ], [ %1249, %1399 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1410 = icmp ult i64 %1409, -119
  br i1 %1410, label %1411, label %.loopexit96

1411:                                             ; preds = %.loopexit
  %1412 = getelementptr inbounds nuw i8, ptr %1032, i64 %1409
  %1413 = add nsw i32 %1031, -1
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %.loopexit97, label %1021, !llvm.loop !149

.loopexit97:                                      ; preds = %689, %1411, %1016
  %1415 = phi ptr [ %694, %1016 ], [ %1242, %1411 ], [ %514, %689 ]
  %1416 = phi i32 [ %695, %1016 ], [ %1243, %1411 ], [ %515, %689 ]
  %1417 = phi i64 [ %372, %1016 ], [ %1113, %1411 ], [ %372, %689 ]
  %1418 = phi i64 [ %370, %1016 ], [ %1111, %1411 ], [ %370, %689 ]
  %1419 = phi i64 [ %371, %1016 ], [ %1112, %1411 ], [ %371, %689 ]
  %1420 = phi ptr [ %1014, %1016 ], [ %1412, %1411 ], [ %684, %689 ]
  %1421 = phi ptr [ %845, %1016 ], [ %845, %1411 ], [ %23, %689 ]
  %1422 = icmp eq ptr %1415, %3
  %1423 = icmp eq i32 %1416, 64
  %1424 = select i1 %1422, i1 %1423, i1 false
  br i1 %1424, label %1425, label %.loopexit96

1425:                                             ; preds = %.loopexit97
  %1426 = trunc i64 %1419 to i32
  store i32 %1426, ptr %33, align 4, !tbaa !30
  %1427 = trunc i64 %1418 to i32
  store i32 %1427, ptr %37, align 4, !tbaa !30
  %1428 = trunc i64 %1417 to i32
  store i32 %1428, ptr %41, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %1429 = load ptr, ptr %10, align 8, !tbaa !38
  br label %1431

.loopexit96:                                      ; preds = %.loopexit105, %.loopexit, %.loopexit97, %1285, %.loopexit98, %888, %706, %692, %558, %114, %102, %51, %31
  %1430 = phi i64 [ -20, %692 ], [ -20, %1285 ], [ -20, %114 ], [ %1012, %.loopexit98 ], [ -70, %706 ], [ -20, %558 ], [ -20, %.loopexit97 ], [ -20, %888 ], [ -20, %31 ], [ -20, %51 ], [ -20, %102 ], [ %1409, %.loopexit ], [ %682, %.loopexit105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %1476

1431:                                             ; preds = %1425, %17
  %1432 = phi ptr [ %1429, %1425 ], [ %21, %17 ]
  %1433 = phi ptr [ %1421, %1425 ], [ %23, %17 ]
  %1434 = phi ptr [ %1420, %1425 ], [ %1, %17 ]
  %1435 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %1436 = load i32, ptr %1435, align 8, !tbaa !35
  %1437 = icmp eq i32 %1436, 2
  br i1 %1437, label %1440, label %1438

1438:                                             ; preds = %1431
  %1439 = ptrtoint ptr %19 to i64
  br label %1456

1440:                                             ; preds = %1431
  %1441 = ptrtoint ptr %1433 to i64
  %1442 = ptrtoint ptr %1432 to i64
  %1443 = sub i64 %1441, %1442
  %1444 = ptrtoint ptr %19 to i64
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
  br label %1478

1478:                                             ; preds = %1476, %15
  %1479 = phi i64 [ %16, %15 ], [ %1477, %1476 ]
  ret i64 %1479
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
  br label %718

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
  br i1 %38, label %697, label %39

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
  %reass.sub70 = sub nsw i32 %118, %120
  %121 = add nsw i32 %reass.sub70, 41
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
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !151
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !152
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !153
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !154
  %282 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %283 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %284 = getelementptr inbounds i8, ptr %26, i64 -32
  %285 = ptrtoint ptr %33 to i64
  %286 = ptrtoint ptr %35 to i64
  %287 = ptrtoint ptr %3 to i64
  %288 = add i64 %285, 16
  br label %289

289:                                              ; preds = %684, %276
  %290 = phi ptr [ %277, %276 ], [ %510, %684 ]
  %291 = phi i32 [ %278, %276 ], [ %511, %684 ]
  %292 = phi i64 [ %279, %276 ], [ %512, %684 ]
  %293 = phi i64 [ %51, %276 ], [ %381, %684 ]
  %294 = phi i64 [ %47, %276 ], [ %379, %684 ]
  %295 = phi i64 [ %44, %276 ], [ %380, %684 ]
  %296 = phi i64 [ %245, %276 ], [ %513, %684 ]
  %297 = phi i64 [ %194, %276 ], [ %514, %684 ]
  %298 = phi i64 [ %148, %276 ], [ %515, %684 ]
  %299 = phi i32 [ %5, %276 ], [ %685, %684 ]
  %300 = phi ptr [ %1, %276 ], [ %679, %684 ]
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
  br i1 %621, label %622, label %662

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
  %reass.sub = sub i64 %630, %631
  %632 = add i64 %reass.sub, -9
  %633 = lshr i64 %632, 3
  %634 = add nuw nsw i64 %633, 1
  %635 = icmp ult i64 %632, 24
  %636 = icmp ult i64 %619, 32
  %637 = or i1 %635, %636
  br i1 %637, label %.preheader.preheader, label %638

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
  br i1 %655, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %651, %622
  %.ph = phi ptr [ %614, %622 ], [ %653, %651 ]
  %.ph190 = phi ptr [ %613, %622 ], [ %654, %651 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %656 = phi ptr [ %659, %.preheader ], [ %.ph, %.preheader.preheader ]
  %657 = phi ptr [ %660, %.preheader ], [ %.ph190, %.preheader.preheader ]
  %658 = load i64, ptr %657, align 1
  store i64 %658, ptr %656, align 1
  %659 = getelementptr inbounds nuw i8, ptr %656, i64 8
  %660 = getelementptr inbounds nuw i8, ptr %657, i64 8
  %661 = icmp ult ptr %659, %620
  br i1 %661, label %.preheader, label %.loopexit, !llvm.loop !159

662:                                              ; preds = %616
  %663 = load <2 x i64>, ptr %613, align 1, !tbaa !9
  store <2 x i64> %663, ptr %614, align 1, !tbaa !9
  %664 = icmp ult i64 %567, 25
  br i1 %664, label %.loopexit, label %665

665:                                              ; preds = %662
  %666 = getelementptr inbounds nuw i8, ptr %566, i64 24
  br label %667

667:                                              ; preds = %667, %665
  %668 = phi ptr [ %666, %665 ], [ %675, %667 ]
  %669 = phi ptr [ %613, %665 ], [ %673, %667 ]
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 16
  %671 = load <2 x i64>, ptr %670, align 1, !tbaa !9
  store <2 x i64> %671, ptr %668, align 1, !tbaa !9
  %672 = getelementptr inbounds nuw i8, ptr %668, i64 16
  %673 = getelementptr inbounds nuw i8, ptr %669, i64 32
  %674 = load <2 x i64>, ptr %673, align 1, !tbaa !9
  store <2 x i64> %674, ptr %672, align 1, !tbaa !9
  %675 = getelementptr inbounds nuw i8, ptr %668, i64 32
  %676 = icmp ult ptr %675, %620
  br i1 %676, label %667, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %667, %.preheader, %575, %662, %651, %611, %569, %560, %528
  %677 = phi i64 [ %529, %528 ], [ %517, %560 ], [ %517, %611 ], [ %517, %569 ], [ %517, %662 ], [ %517, %651 ], [ %517, %575 ], [ %517, %.preheader ], [ %517, %667 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %678 = icmp ult i64 %677, -119
  %679 = getelementptr inbounds nuw i8, ptr %300, i64 %677
  br i1 %678, label %680, label %.loopexit45

680:                                              ; preds = %.loopexit
  %681 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %299, i32 -1)
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !86
  br i1 %682, label %683, label %684, !prof !109, !nosanitize !86

683:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !86
  unreachable, !nosanitize !86

684:                                              ; preds = %680
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !86
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %289, !llvm.loop !160

687:                                              ; preds = %684
  %688 = icmp eq ptr %510, %3
  %689 = icmp eq i32 %511, 64
  %690 = select i1 %688, i1 %689, i1 false
  br i1 %690, label %691, label %.loopexit45

691:                                              ; preds = %687
  %692 = trunc i64 %380 to i32
  store i32 %692, ptr %41, align 4, !tbaa !30
  %693 = trunc i64 %379 to i32
  store i32 %693, ptr %45, align 4, !tbaa !30
  %694 = trunc i64 %381 to i32
  store i32 %694, ptr %49, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %695 = load ptr, ptr %8, align 8, !tbaa !38
  br label %697

.loopexit45:                                      ; preds = %.loopexit, %687, %553, %122, %110, %59, %39
  %696 = phi i64 [ -20, %553 ], [ -20, %122 ], [ -20, %687 ], [ -20, %39 ], [ -20, %59 ], [ -20, %110 ], [ %677, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %716

697:                                              ; preds = %691, %25
  %698 = phi ptr [ %695, %691 ], [ %28, %25 ]
  %699 = phi ptr [ %679, %691 ], [ %1, %25 ]
  %700 = ptrtoint ptr %31 to i64
  %701 = ptrtoint ptr %698 to i64
  %702 = sub i64 %700, %701
  %703 = ptrtoint ptr %26 to i64
  %704 = ptrtoint ptr %699 to i64
  %705 = sub i64 %703, %704
  %706 = icmp ugt i64 %702, %705
  br i1 %706, label %716, label %707

707:                                              ; preds = %697
  %708 = icmp eq ptr %699, null
  br i1 %708, label %712, label %709

709:                                              ; preds = %707
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %699, ptr align 1 %698, i64 %702, i1 false)
  %710 = getelementptr inbounds nuw i8, ptr %699, i64 %702
  %711 = ptrtoint ptr %710 to i64
  br label %712

712:                                              ; preds = %709, %707
  %713 = phi i64 [ 0, %707 ], [ %711, %709 ]
  %714 = ptrtoint ptr %1 to i64
  %715 = sub i64 %713, %714
  br label %716

716:                                              ; preds = %712, %697, %.loopexit45
  %717 = phi i64 [ %715, %712 ], [ %696, %.loopexit45 ], [ -70, %697 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %718

718:                                              ; preds = %716, %13
  %719 = phi i64 [ %14, %13 ], [ %717, %716 ]
  ret i64 %719
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
  br i1 %31, label %2041, label %32

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
  %reass.sub166 = sub nsw i32 %115, %117
  %118 = add nsw i32 %reass.sub166, 41
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

359:                                              ; preds = %1419
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !86
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

557:                                              ; preds = %1401, %299
  %558 = phi ptr [ %286, %299 ], [ %779, %1401 ]
  %559 = phi i32 [ %288, %299 ], [ %780, %1401 ]
  %560 = phi i64 [ %287, %299 ], [ %781, %1401 ]
  %561 = phi i64 [ %290, %299 ], [ %651, %1401 ]
  %562 = phi i64 [ %291, %299 ], [ %649, %1401 ]
  %563 = phi i64 [ %292, %299 ], [ %650, %1401 ]
  %564 = phi i64 [ %293, %299 ], [ %782, %1401 ]
  %565 = phi i64 [ %294, %299 ], [ %783, %1401 ]
  %566 = phi i64 [ %295, %299 ], [ %784, %1401 ]
  %567 = phi ptr [ %1, %299 ], [ %1404, %1401 ]
  %568 = phi ptr [ %24, %299 ], [ %1403, %1401 ]
  %569 = phi i32 [ %297, %299 ], [ %1406, %1401 ]
  %570 = phi i64 [ %296, %299 ], [ %1405, %1401 ]
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
  br i1 %786, label %787, label %1236

787:                                              ; preds = %778
  %788 = load ptr, ptr %7, align 8, !tbaa !38
  %789 = and i32 %569, 7
  %790 = zext nneg i32 %789 to i64
  %791 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %790
  %792 = load i64, ptr %791, align 8, !tbaa !92
  %793 = getelementptr inbounds nuw i8, ptr %788, i64 %792
  %794 = load ptr, ptr %23, align 8, !tbaa !34
  %795 = icmp ugt ptr %793, %794
  br i1 %795, label %796, label %1092

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
  br i1 %810, label %811, label %860

811:                                              ; preds = %805
  %812 = add i64 %806, %797
  %813 = add i64 %802, 1
  %814 = tail call i64 @llvm.umax.i64(i64 %812, i64 %813)
  %815 = sub i64 %814, %802
  %816 = icmp ult i64 %815, 4
  %817 = icmp ult i64 %806, 32
  %818 = or i1 %817, %816
  br i1 %818, label %.preheader490.preheader, label %819

819:                                              ; preds = %811
  %820 = icmp ult i64 %815, 32
  br i1 %820, label %840, label %821

821:                                              ; preds = %819
  %822 = and i64 %815, -32
  br label %823

823:                                              ; preds = %823, %821
  %824 = phi i64 [ 0, %821 ], [ %831, %823 ]
  %825 = getelementptr i8, ptr %567, i64 %824
  %826 = getelementptr i8, ptr %788, i64 %824
  %827 = getelementptr i8, ptr %826, i64 16
  %828 = load <16 x i8>, ptr %826, align 1, !tbaa !9
  %829 = load <16 x i8>, ptr %827, align 1, !tbaa !9
  %830 = getelementptr i8, ptr %825, i64 16
  store <16 x i8> %828, ptr %825, align 1, !tbaa !9
  store <16 x i8> %829, ptr %830, align 1, !tbaa !9
  %831 = add nuw i64 %824, 32
  %832 = icmp eq i64 %831, %822
  br i1 %832, label %833, label %823, !llvm.loop !168

833:                                              ; preds = %823
  %834 = icmp eq i64 %815, %822
  br i1 %834, label %.loopexit147, label %835

835:                                              ; preds = %833
  %836 = getelementptr i8, ptr %567, i64 %822
  %837 = getelementptr i8, ptr %788, i64 %822
  %838 = and i64 %815, 28
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %.preheader490.preheader, label %840

840:                                              ; preds = %835, %819
  %841 = phi i64 [ %822, %835 ], [ 0, %819 ]
  %842 = and i64 %815, -4
  br label %843

843:                                              ; preds = %843, %840
  %844 = phi i64 [ %841, %840 ], [ %848, %843 ]
  %845 = getelementptr i8, ptr %567, i64 %844
  %846 = getelementptr i8, ptr %788, i64 %844
  %847 = load <4 x i8>, ptr %846, align 1, !tbaa !9
  store <4 x i8> %847, ptr %845, align 1, !tbaa !9
  %848 = add nuw i64 %844, 4
  %849 = icmp eq i64 %848, %842
  br i1 %849, label %850, label %843, !llvm.loop !169

850:                                              ; preds = %843
  %851 = getelementptr i8, ptr %567, i64 %842
  %852 = getelementptr i8, ptr %788, i64 %842
  %853 = icmp eq i64 %815, %842
  br i1 %853, label %.loopexit147, label %.preheader490.preheader

.preheader490.preheader:                          ; preds = %850, %835, %811
  %.ph442 = phi ptr [ %567, %811 ], [ %836, %835 ], [ %851, %850 ]
  %.ph443 = phi ptr [ %788, %811 ], [ %837, %835 ], [ %852, %850 ]
  br label %.preheader490

.preheader490:                                    ; preds = %.preheader490.preheader, %.preheader490
  %854 = phi ptr [ %858, %.preheader490 ], [ %.ph442, %.preheader490.preheader ]
  %855 = phi ptr [ %856, %.preheader490 ], [ %.ph443, %.preheader490.preheader ]
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 1
  %857 = load i8, ptr %855, align 1, !tbaa !9
  %858 = getelementptr inbounds nuw i8, ptr %854, i64 1
  store i8 %857, ptr %854, align 1, !tbaa !9
  %859 = icmp ult ptr %858, %807
  br i1 %859, label %.preheader490, label %.loopexit147, !llvm.loop !170

860:                                              ; preds = %805
  %861 = icmp sgt i64 %799, 31
  %862 = icmp samesign ult i64 %806, -16
  %863 = and i1 %862, %861
  br i1 %863, label %864, label %884

864:                                              ; preds = %860
  %865 = getelementptr inbounds i8, ptr %807, i64 -32
  %866 = add nsw i64 %799, -32
  %867 = getelementptr inbounds nuw i8, ptr %567, i64 %866
  %868 = load <2 x i64>, ptr %788, align 1, !tbaa !9
  store <2 x i64> %868, ptr %567, align 1, !tbaa !9
  %869 = icmp samesign ult i64 %799, 49
  br i1 %869, label %.loopexit149, label %870

870:                                              ; preds = %864
  %871 = getelementptr inbounds nuw i8, ptr %567, i64 16
  br label %872

872:                                              ; preds = %872, %870
  %873 = phi ptr [ %871, %870 ], [ %880, %872 ]
  %874 = phi ptr [ %788, %870 ], [ %878, %872 ]
  %875 = getelementptr inbounds nuw i8, ptr %874, i64 16
  %876 = load <2 x i64>, ptr %875, align 1, !tbaa !9
  store <2 x i64> %876, ptr %873, align 1, !tbaa !9
  %877 = getelementptr inbounds nuw i8, ptr %873, i64 16
  %878 = getelementptr inbounds nuw i8, ptr %874, i64 32
  %879 = load <2 x i64>, ptr %878, align 1, !tbaa !9
  store <2 x i64> %879, ptr %877, align 1, !tbaa !9
  %880 = getelementptr inbounds nuw i8, ptr %873, i64 32
  %881 = icmp ult ptr %880, %867
  br i1 %881, label %872, label %.loopexit149, !llvm.loop !97

.loopexit149:                                     ; preds = %872, %864
  %882 = getelementptr inbounds nuw i8, ptr %788, i64 %866
  %.pre249 = ptrtoint ptr %865 to i64
  %.pre251 = ptrtoint ptr %882 to i64
  %.pre253 = sub i64 %.pre249, %.pre251
  %883 = icmp ult i64 %.pre253, 32
  br label %884

884:                                              ; preds = %.loopexit149, %860
  %.pre-phi254 = phi i1 [ %883, %.loopexit149 ], [ false, %860 ]
  %.pre-phi250 = phi i64 [ %.pre249, %.loopexit149 ], [ %802, %860 ]
  %885 = phi ptr [ %865, %.loopexit149 ], [ %567, %860 ]
  %886 = phi ptr [ %882, %.loopexit149 ], [ %788, %860 ]
  %887 = add i64 %806, %797
  %888 = add nuw i64 %.pre-phi250, 1
  %889 = tail call i64 @llvm.umax.i64(i64 %887, i64 %888)
  %890 = sub i64 %889, %.pre-phi250
  %891 = icmp ult i64 %890, 4
  %892 = select i1 %891, i1 true, i1 %.pre-phi254
  br i1 %892, label %.preheader493.preheader, label %893

893:                                              ; preds = %884
  %894 = icmp ult i64 %890, 32
  br i1 %894, label %914, label %895

895:                                              ; preds = %893
  %896 = and i64 %890, -32
  br label %897

897:                                              ; preds = %897, %895
  %898 = phi i64 [ 0, %895 ], [ %905, %897 ]
  %899 = getelementptr i8, ptr %885, i64 %898
  %900 = getelementptr i8, ptr %886, i64 %898
  %901 = getelementptr i8, ptr %900, i64 16
  %902 = load <16 x i8>, ptr %900, align 1, !tbaa !9
  %903 = load <16 x i8>, ptr %901, align 1, !tbaa !9
  %904 = getelementptr i8, ptr %899, i64 16
  store <16 x i8> %902, ptr %899, align 1, !tbaa !9
  store <16 x i8> %903, ptr %904, align 1, !tbaa !9
  %905 = add nuw i64 %898, 32
  %906 = icmp eq i64 %905, %896
  br i1 %906, label %907, label %897, !llvm.loop !171

907:                                              ; preds = %897
  %908 = icmp eq i64 %890, %896
  br i1 %908, label %.loopexit147, label %909

909:                                              ; preds = %907
  %910 = getelementptr i8, ptr %885, i64 %896
  %911 = getelementptr i8, ptr %886, i64 %896
  %912 = and i64 %890, 28
  %913 = icmp eq i64 %912, 0
  br i1 %913, label %.preheader493.preheader, label %914

914:                                              ; preds = %909, %893
  %915 = phi i64 [ %896, %909 ], [ 0, %893 ]
  %916 = and i64 %890, -4
  br label %917

917:                                              ; preds = %917, %914
  %918 = phi i64 [ %915, %914 ], [ %922, %917 ]
  %919 = getelementptr i8, ptr %885, i64 %918
  %920 = getelementptr i8, ptr %886, i64 %918
  %921 = load <4 x i8>, ptr %920, align 1, !tbaa !9
  store <4 x i8> %921, ptr %919, align 1, !tbaa !9
  %922 = add nuw i64 %918, 4
  %923 = icmp eq i64 %922, %916
  br i1 %923, label %924, label %917, !llvm.loop !172

924:                                              ; preds = %917
  %925 = getelementptr i8, ptr %885, i64 %916
  %926 = getelementptr i8, ptr %886, i64 %916
  %927 = icmp eq i64 %890, %916
  br i1 %927, label %.loopexit147, label %.preheader493.preheader

.preheader493.preheader:                          ; preds = %924, %909, %884
  %.ph444 = phi ptr [ %885, %884 ], [ %910, %909 ], [ %925, %924 ]
  %.ph445 = phi ptr [ %886, %884 ], [ %911, %909 ], [ %926, %924 ]
  br label %.preheader493

.preheader493:                                    ; preds = %.preheader493.preheader, %.preheader493
  %928 = phi ptr [ %932, %.preheader493 ], [ %.ph444, %.preheader493.preheader ]
  %929 = phi ptr [ %930, %.preheader493 ], [ %.ph445, %.preheader493.preheader ]
  %930 = getelementptr inbounds nuw i8, ptr %929, i64 1
  %931 = load i8, ptr %929, align 1, !tbaa !9
  %932 = getelementptr inbounds nuw i8, ptr %928, i64 1
  store i8 %931, ptr %928, align 1, !tbaa !9
  %933 = icmp ult ptr %932, %807
  br i1 %933, label %.preheader493, label %.loopexit147, !llvm.loop !173

.loopexit147:                                     ; preds = %.preheader493, %.preheader490, %924, %907, %850, %833
  %934 = load i64, ptr %791, align 8, !tbaa !92
  %935 = sub i64 %934, %799
  store i64 %935, ptr %791, align 8, !tbaa !92
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.loopexit147, %796
  %936 = phi i64 [ %935, %.loopexit147 ], [ %792, %796 ]
  %937 = phi ptr [ %807, %.loopexit147 ], [ %567, %796 ]
  store ptr %304, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %10, align 8, !tbaa !35
  %938 = getelementptr inbounds nuw i8, ptr %791, i64 8
  %939 = load i64, ptr %938, align 8
  %940 = getelementptr inbounds nuw i8, ptr %791, i64 16
  %941 = load i64, ptr %940, align 8
  %942 = getelementptr inbounds nuw i8, ptr %937, i64 %936
  %943 = add i64 %939, %936
  %944 = getelementptr i8, ptr %304, i64 %936
  %945 = sub i64 0, %941
  %946 = getelementptr inbounds i8, ptr %942, i64 %945
  %947 = icmp sgt i64 %936, 65536
  %948 = getelementptr inbounds nuw i8, ptr %937, i64 %943
  %949 = icmp ugt ptr %948, %301
  %950 = select i1 %947, i1 true, i1 %949
  br i1 %950, label %954, label %951, !prof !101

951:                                              ; preds = %thread-pre-split
  %952 = load <2 x i64>, ptr %304, align 1, !tbaa !9
  store <2 x i64> %952, ptr %937, align 1, !tbaa !9
  %953 = icmp ugt i64 %936, 16
  br i1 %953, label %956, label %957, !prof !52

954:                                              ; preds = %thread-pre-split
  %955 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %937, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %791, ptr noundef nonnull %7, ptr noundef nonnull %305, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit144

956:                                              ; preds = %951
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.3(ptr nonnull %937, i64 %936, ptr nonnull %306) #20
  br label %957

957:                                              ; preds = %956, %951
  store ptr %944, ptr %7, align 8, !tbaa !38
  %958 = ptrtoint ptr %942 to i64
  %959 = sub i64 %958, %48
  %960 = icmp ugt i64 %941, %959
  br i1 %960, label %961, label %974

961:                                              ; preds = %957
  %962 = sub i64 %958, %302
  %963 = icmp ugt i64 %941, %962
  br i1 %963, label %.thread, label %964, !prof !52

964:                                              ; preds = %961
  %965 = ptrtoint ptr %946 to i64
  %966 = sub i64 %965, %48
  %967 = getelementptr inbounds i8, ptr %30, i64 %966
  %968 = add i64 %966, %939
  %969 = icmp sgt i64 %968, 0
  br i1 %969, label %971, label %970

970:                                              ; preds = %964
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %942, ptr align 1 %967, i64 %939, i1 false)
  br label %.loopexit144

971:                                              ; preds = %964
  %972 = sub nsw i64 0, %966
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %942, ptr align 1 %967, i64 %972, i1 false)
  %973 = getelementptr inbounds nuw i8, ptr %942, i64 %972
  %.pre247 = ptrtoint ptr %973 to i64
  br label %974

974:                                              ; preds = %971, %957
  %.pre-phi248 = phi i64 [ %.pre247, %971 ], [ %958, %957 ]
  %975 = phi i64 [ %968, %971 ], [ %939, %957 ]
  %976 = phi ptr [ %26, %971 ], [ %946, %957 ]
  %977 = phi ptr [ %973, %971 ], [ %942, %957 ]
  %978 = icmp ugt i64 %941, 15
  br i1 %978, label %979, label %995, !prof !87

979:                                              ; preds = %974
  %980 = getelementptr inbounds nuw i8, ptr %977, i64 %975
  %981 = load <2 x i64>, ptr %976, align 1, !tbaa !9
  store <2 x i64> %981, ptr %977, align 1, !tbaa !9
  %982 = icmp ult i64 %975, 17
  br i1 %982, label %.loopexit144, label %983

983:                                              ; preds = %979
  %984 = getelementptr inbounds nuw i8, ptr %977, i64 16
  br label %985

985:                                              ; preds = %985, %983
  %986 = phi ptr [ %984, %983 ], [ %993, %985 ]
  %987 = phi ptr [ %976, %983 ], [ %991, %985 ]
  %988 = getelementptr inbounds nuw i8, ptr %987, i64 16
  %989 = load <2 x i64>, ptr %988, align 1, !tbaa !9
  store <2 x i64> %989, ptr %986, align 1, !tbaa !9
  %990 = getelementptr inbounds nuw i8, ptr %986, i64 16
  %991 = getelementptr inbounds nuw i8, ptr %987, i64 32
  %992 = load <2 x i64>, ptr %991, align 1, !tbaa !9
  store <2 x i64> %992, ptr %990, align 1, !tbaa !9
  %993 = getelementptr inbounds nuw i8, ptr %986, i64 32
  %994 = icmp ult ptr %993, %980
  br i1 %994, label %985, label %.loopexit144, !llvm.loop !97

995:                                              ; preds = %974
  %996 = icmp samesign ult i64 %941, 8
  br i1 %996, label %997, label %1019

997:                                              ; preds = %995
  %998 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %941
  %999 = load i32, ptr %998, align 4, !tbaa !30
  %1000 = load i8, ptr %976, align 1, !tbaa !9
  store i8 %1000, ptr %977, align 1, !tbaa !9
  %1001 = getelementptr inbounds nuw i8, ptr %976, i64 1
  %1002 = load i8, ptr %1001, align 1, !tbaa !9
  %1003 = getelementptr inbounds nuw i8, ptr %977, i64 1
  store i8 %1002, ptr %1003, align 1, !tbaa !9
  %1004 = getelementptr inbounds nuw i8, ptr %976, i64 2
  %1005 = load i8, ptr %1004, align 1, !tbaa !9
  %1006 = getelementptr inbounds nuw i8, ptr %977, i64 2
  store i8 %1005, ptr %1006, align 1, !tbaa !9
  %1007 = getelementptr inbounds nuw i8, ptr %976, i64 3
  %1008 = load i8, ptr %1007, align 1, !tbaa !9
  %1009 = getelementptr inbounds nuw i8, ptr %977, i64 3
  store i8 %1008, ptr %1009, align 1, !tbaa !9
  %1010 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %941
  %1011 = load i32, ptr %1010, align 4, !tbaa !30
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds nuw i8, ptr %976, i64 %1012
  %1014 = getelementptr inbounds nuw i8, ptr %977, i64 4
  %1015 = load i32, ptr %1013, align 1
  store i32 %1015, ptr %1014, align 1
  %1016 = sext i32 %999 to i64
  %1017 = sub nsw i64 0, %1016
  %1018 = getelementptr inbounds i8, ptr %1013, i64 %1017
  br label %1021

1019:                                             ; preds = %995
  %1020 = load i64, ptr %976, align 1
  store i64 %1020, ptr %977, align 1
  br label %1021

1021:                                             ; preds = %1019, %997
  %1022 = phi ptr [ %1018, %997 ], [ %976, %1019 ]
  %1023 = getelementptr inbounds nuw i8, ptr %1022, i64 8
  %1024 = getelementptr inbounds nuw i8, ptr %977, i64 8
  %1025 = icmp ugt i64 %975, 8
  br i1 %1025, label %1026, label %.loopexit144

1026:                                             ; preds = %1021
  %1027 = ptrtoint ptr %1024 to i64
  %1028 = ptrtoint ptr %1023 to i64
  %1029 = sub i64 %1027, %1028
  %1030 = getelementptr i8, ptr %977, i64 %975
  %1031 = icmp slt i64 %1029, 16
  br i1 %1031, label %1032, label %1066

1032:                                             ; preds = %1026
  %1033 = add i64 %975, %.pre-phi248
  %1034 = add i64 %.pre-phi248, 16
  %1035 = tail call i64 @llvm.umax.i64(i64 %1033, i64 %1034)
  %reass.sub187 = sub i64 %1035, %.pre-phi248
  %1036 = add i64 %reass.sub187, -9
  %1037 = lshr i64 %1036, 3
  %1038 = add nuw nsw i64 %1037, 1
  %1039 = icmp ult i64 %1036, 24
  %1040 = icmp ult i64 %1029, 32
  %1041 = or i1 %1039, %1040
  br i1 %1041, label %.preheader485.preheader, label %1042

1042:                                             ; preds = %1032
  %1043 = and i64 %1038, 4611686018427387900
  br label %1044

1044:                                             ; preds = %1044, %1042
  %1045 = phi i64 [ 0, %1042 ], [ %1053, %1044 ]
  %1046 = shl i64 %1045, 3
  %1047 = getelementptr i8, ptr %1024, i64 %1046
  %1048 = getelementptr i8, ptr %1023, i64 %1046
  %1049 = getelementptr i8, ptr %1048, i64 16
  %1050 = load <2 x i64>, ptr %1048, align 1
  %1051 = load <2 x i64>, ptr %1049, align 1
  %1052 = getelementptr i8, ptr %1047, i64 16
  store <2 x i64> %1050, ptr %1047, align 1
  store <2 x i64> %1051, ptr %1052, align 1
  %1053 = add nuw i64 %1045, 4
  %1054 = icmp eq i64 %1053, %1043
  br i1 %1054, label %1055, label %1044, !llvm.loop !174

1055:                                             ; preds = %1044
  %1056 = shl i64 %1043, 3
  %1057 = getelementptr i8, ptr %1024, i64 %1056
  %1058 = getelementptr i8, ptr %1023, i64 %1056
  %1059 = icmp eq i64 %1038, %1043
  br i1 %1059, label %.loopexit144, label %.preheader485.preheader

.preheader485.preheader:                          ; preds = %1055, %1032
  %.ph438 = phi ptr [ %1024, %1032 ], [ %1057, %1055 ]
  %.ph439 = phi ptr [ %1023, %1032 ], [ %1058, %1055 ]
  br label %.preheader485

.preheader485:                                    ; preds = %.preheader485.preheader, %.preheader485
  %1060 = phi ptr [ %1063, %.preheader485 ], [ %.ph438, %.preheader485.preheader ]
  %1061 = phi ptr [ %1064, %.preheader485 ], [ %.ph439, %.preheader485.preheader ]
  %1062 = load i64, ptr %1061, align 1
  store i64 %1062, ptr %1060, align 1
  %1063 = getelementptr inbounds nuw i8, ptr %1060, i64 8
  %1064 = getelementptr inbounds nuw i8, ptr %1061, i64 8
  %1065 = icmp ult ptr %1063, %1030
  br i1 %1065, label %.preheader485, label %.loopexit144, !llvm.loop !175

1066:                                             ; preds = %1026
  %1067 = load <2 x i64>, ptr %1023, align 1, !tbaa !9
  store <2 x i64> %1067, ptr %1024, align 1, !tbaa !9
  %1068 = icmp ult i64 %975, 25
  br i1 %1068, label %.loopexit144, label %1069

1069:                                             ; preds = %1066
  %1070 = getelementptr inbounds nuw i8, ptr %977, i64 24
  br label %1071

1071:                                             ; preds = %1071, %1069
  %1072 = phi ptr [ %1070, %1069 ], [ %1079, %1071 ]
  %1073 = phi ptr [ %1023, %1069 ], [ %1077, %1071 ]
  %1074 = getelementptr inbounds nuw i8, ptr %1073, i64 16
  %1075 = load <2 x i64>, ptr %1074, align 1, !tbaa !9
  store <2 x i64> %1075, ptr %1072, align 1, !tbaa !9
  %1076 = getelementptr inbounds nuw i8, ptr %1072, i64 16
  %1077 = getelementptr inbounds nuw i8, ptr %1073, i64 32
  %1078 = load <2 x i64>, ptr %1077, align 1, !tbaa !9
  store <2 x i64> %1078, ptr %1076, align 1, !tbaa !9
  %1079 = getelementptr inbounds nuw i8, ptr %1072, i64 32
  %1080 = icmp ult ptr %1079, %1030
  br i1 %1080, label %1071, label %.loopexit144, !llvm.loop !97

.loopexit144:                                     ; preds = %1071, %.preheader485, %985, %1066, %1055, %1021, %979, %970, %954
  %1081 = phi i64 [ %955, %954 ], [ %943, %970 ], [ %943, %1021 ], [ %943, %979 ], [ %943, %1066 ], [ %943, %1055 ], [ %943, %985 ], [ %943, %.preheader485 ], [ %943, %1071 ]
  %1082 = icmp ult i64 %1081, -119
  br i1 %1082, label %1083, label %.thread

1083:                                             ; preds = %.loopexit144
  %1084 = add i64 %714, %570
  %1085 = icmp ugt i64 %650, %1084
  %1086 = select i1 %1085, ptr %30, ptr %26
  %1087 = getelementptr inbounds i8, ptr %1086, i64 %1084
  %1088 = sub i64 0, %650
  %1089 = getelementptr inbounds i8, ptr %1087, i64 %1088
  tail call void @llvm.prefetch.p0(ptr %1089, i32 0, i32 3, i32 1)
  %1090 = getelementptr inbounds nuw i8, ptr %1089, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1090, i32 0, i32 3, i32 1)
  store i64 %714, ptr %791, align 8, !tbaa !45
  store i64 %665, ptr %938, align 8, !tbaa !45
  store i64 %650, ptr %940, align 8, !tbaa !45
  %1091 = getelementptr inbounds nuw i8, ptr %937, i64 %1081
  br label %1401

1092:                                             ; preds = %787
  %1093 = getelementptr inbounds i8, ptr %793, i64 -32
  %1094 = getelementptr inbounds nuw i8, ptr %791, i64 8
  %1095 = load i64, ptr %1094, align 8
  %1096 = getelementptr inbounds nuw i8, ptr %791, i64 16
  %1097 = load i64, ptr %1096, align 8
  %1098 = getelementptr inbounds nuw i8, ptr %567, i64 %792
  %1099 = add i64 %1095, %792
  %1100 = sub i64 0, %1097
  %1101 = getelementptr inbounds i8, ptr %1098, i64 %1100
  %1102 = icmp ugt ptr %793, %568
  %1103 = getelementptr inbounds nuw i8, ptr %567, i64 %1099
  %1104 = icmp ugt ptr %1103, %1093
  %1105 = select i1 %1102, i1 true, i1 %1104
  br i1 %1105, label %1109, label %1106, !prof !101

1106:                                             ; preds = %1092
  %1107 = load <2 x i64>, ptr %788, align 1, !tbaa !9
  store <2 x i64> %1107, ptr %567, align 1, !tbaa !9
  %1108 = icmp ugt i64 %792, 16
  br i1 %1108, label %1111, label %1112, !prof !52

1109:                                             ; preds = %1092
  %1110 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %567, ptr noundef %20, ptr noundef nonnull %1093, ptr noundef nonnull byval(%struct.seq_t) align 8 %791, ptr noundef nonnull %7, ptr noundef %568, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit150

1111:                                             ; preds = %1106
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.2(ptr nonnull %567, ptr nonnull %788, i64 %792) #20
  br label %1112

1112:                                             ; preds = %1111, %1106
  store ptr %793, ptr %7, align 8, !tbaa !38
  %1113 = ptrtoint ptr %1098 to i64
  %1114 = sub i64 %1113, %48
  %1115 = icmp ugt i64 %1097, %1114
  br i1 %1115, label %1116, label %1129

1116:                                             ; preds = %1112
  %1117 = sub i64 %1113, %302
  %1118 = icmp ugt i64 %1097, %1117
  br i1 %1118, label %.thread, label %1119, !prof !52

1119:                                             ; preds = %1116
  %1120 = ptrtoint ptr %1101 to i64
  %1121 = sub i64 %1120, %48
  %1122 = getelementptr inbounds i8, ptr %30, i64 %1121
  %1123 = add i64 %1121, %1095
  %1124 = icmp sgt i64 %1123, 0
  br i1 %1124, label %1126, label %1125

1125:                                             ; preds = %1119
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1098, ptr align 1 %1122, i64 %1095, i1 false)
  br label %.loopexit150

1126:                                             ; preds = %1119
  %1127 = sub nsw i64 0, %1121
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1098, ptr align 1 %1122, i64 %1127, i1 false)
  %1128 = getelementptr inbounds nuw i8, ptr %1098, i64 %1127
  %.pre255 = ptrtoint ptr %1128 to i64
  br label %1129

1129:                                             ; preds = %1126, %1112
  %.pre-phi256 = phi i64 [ %.pre255, %1126 ], [ %1113, %1112 ]
  %1130 = phi i64 [ %1123, %1126 ], [ %1095, %1112 ]
  %1131 = phi ptr [ %26, %1126 ], [ %1101, %1112 ]
  %1132 = phi ptr [ %1128, %1126 ], [ %1098, %1112 ]
  %1133 = icmp ugt i64 %1097, 15
  br i1 %1133, label %1134, label %1150, !prof !87

1134:                                             ; preds = %1129
  %1135 = getelementptr inbounds nuw i8, ptr %1132, i64 %1130
  %1136 = load <2 x i64>, ptr %1131, align 1, !tbaa !9
  store <2 x i64> %1136, ptr %1132, align 1, !tbaa !9
  %1137 = icmp ult i64 %1130, 17
  br i1 %1137, label %.loopexit150, label %1138

1138:                                             ; preds = %1134
  %1139 = getelementptr inbounds nuw i8, ptr %1132, i64 16
  br label %1140

1140:                                             ; preds = %1140, %1138
  %1141 = phi ptr [ %1139, %1138 ], [ %1148, %1140 ]
  %1142 = phi ptr [ %1131, %1138 ], [ %1146, %1140 ]
  %1143 = getelementptr inbounds nuw i8, ptr %1142, i64 16
  %1144 = load <2 x i64>, ptr %1143, align 1, !tbaa !9
  store <2 x i64> %1144, ptr %1141, align 1, !tbaa !9
  %1145 = getelementptr inbounds nuw i8, ptr %1141, i64 16
  %1146 = getelementptr inbounds nuw i8, ptr %1142, i64 32
  %1147 = load <2 x i64>, ptr %1146, align 1, !tbaa !9
  store <2 x i64> %1147, ptr %1145, align 1, !tbaa !9
  %1148 = getelementptr inbounds nuw i8, ptr %1141, i64 32
  %1149 = icmp ult ptr %1148, %1135
  br i1 %1149, label %1140, label %.loopexit150, !llvm.loop !97

1150:                                             ; preds = %1129
  %1151 = icmp samesign ult i64 %1097, 8
  br i1 %1151, label %1152, label %1174

1152:                                             ; preds = %1150
  %1153 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1097
  %1154 = load i32, ptr %1153, align 4, !tbaa !30
  %1155 = load i8, ptr %1131, align 1, !tbaa !9
  store i8 %1155, ptr %1132, align 1, !tbaa !9
  %1156 = getelementptr inbounds nuw i8, ptr %1131, i64 1
  %1157 = load i8, ptr %1156, align 1, !tbaa !9
  %1158 = getelementptr inbounds nuw i8, ptr %1132, i64 1
  store i8 %1157, ptr %1158, align 1, !tbaa !9
  %1159 = getelementptr inbounds nuw i8, ptr %1131, i64 2
  %1160 = load i8, ptr %1159, align 1, !tbaa !9
  %1161 = getelementptr inbounds nuw i8, ptr %1132, i64 2
  store i8 %1160, ptr %1161, align 1, !tbaa !9
  %1162 = getelementptr inbounds nuw i8, ptr %1131, i64 3
  %1163 = load i8, ptr %1162, align 1, !tbaa !9
  %1164 = getelementptr inbounds nuw i8, ptr %1132, i64 3
  store i8 %1163, ptr %1164, align 1, !tbaa !9
  %1165 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1097
  %1166 = load i32, ptr %1165, align 4, !tbaa !30
  %1167 = zext i32 %1166 to i64
  %1168 = getelementptr inbounds nuw i8, ptr %1131, i64 %1167
  %1169 = getelementptr inbounds nuw i8, ptr %1132, i64 4
  %1170 = load i32, ptr %1168, align 1
  store i32 %1170, ptr %1169, align 1
  %1171 = sext i32 %1154 to i64
  %1172 = sub nsw i64 0, %1171
  %1173 = getelementptr inbounds i8, ptr %1168, i64 %1172
  br label %1176

1174:                                             ; preds = %1150
  %1175 = load i64, ptr %1131, align 1
  store i64 %1175, ptr %1132, align 1
  br label %1176

1176:                                             ; preds = %1174, %1152
  %1177 = phi ptr [ %1173, %1152 ], [ %1131, %1174 ]
  %1178 = getelementptr inbounds nuw i8, ptr %1177, i64 8
  %1179 = getelementptr inbounds nuw i8, ptr %1132, i64 8
  %1180 = icmp ugt i64 %1130, 8
  br i1 %1180, label %1181, label %.loopexit150

1181:                                             ; preds = %1176
  %1182 = ptrtoint ptr %1179 to i64
  %1183 = ptrtoint ptr %1178 to i64
  %1184 = sub i64 %1182, %1183
  %1185 = getelementptr i8, ptr %1132, i64 %1130
  %1186 = icmp slt i64 %1184, 16
  br i1 %1186, label %1187, label %1221

1187:                                             ; preds = %1181
  %1188 = add i64 %1130, %.pre-phi256
  %1189 = add i64 %.pre-phi256, 16
  %1190 = tail call i64 @llvm.umax.i64(i64 %1188, i64 %1189)
  %reass.sub186 = sub i64 %1190, %.pre-phi256
  %1191 = add i64 %reass.sub186, -9
  %1192 = lshr i64 %1191, 3
  %1193 = add nuw nsw i64 %1192, 1
  %1194 = icmp ult i64 %1191, 24
  %1195 = icmp ult i64 %1184, 32
  %1196 = or i1 %1194, %1195
  br i1 %1196, label %.preheader497.preheader, label %1197

1197:                                             ; preds = %1187
  %1198 = and i64 %1193, 4611686018427387900
  br label %1199

1199:                                             ; preds = %1199, %1197
  %1200 = phi i64 [ 0, %1197 ], [ %1208, %1199 ]
  %1201 = shl i64 %1200, 3
  %1202 = getelementptr i8, ptr %1179, i64 %1201
  %1203 = getelementptr i8, ptr %1178, i64 %1201
  %1204 = getelementptr i8, ptr %1203, i64 16
  %1205 = load <2 x i64>, ptr %1203, align 1
  %1206 = load <2 x i64>, ptr %1204, align 1
  %1207 = getelementptr i8, ptr %1202, i64 16
  store <2 x i64> %1205, ptr %1202, align 1
  store <2 x i64> %1206, ptr %1207, align 1
  %1208 = add nuw i64 %1200, 4
  %1209 = icmp eq i64 %1208, %1198
  br i1 %1209, label %1210, label %1199, !llvm.loop !176

1210:                                             ; preds = %1199
  %1211 = shl i64 %1198, 3
  %1212 = getelementptr i8, ptr %1179, i64 %1211
  %1213 = getelementptr i8, ptr %1178, i64 %1211
  %1214 = icmp eq i64 %1193, %1198
  br i1 %1214, label %.loopexit150, label %.preheader497.preheader

.preheader497.preheader:                          ; preds = %1210, %1187
  %.ph447 = phi ptr [ %1179, %1187 ], [ %1212, %1210 ]
  %.ph448 = phi ptr [ %1178, %1187 ], [ %1213, %1210 ]
  br label %.preheader497

.preheader497:                                    ; preds = %.preheader497.preheader, %.preheader497
  %1215 = phi ptr [ %1218, %.preheader497 ], [ %.ph447, %.preheader497.preheader ]
  %1216 = phi ptr [ %1219, %.preheader497 ], [ %.ph448, %.preheader497.preheader ]
  %1217 = load i64, ptr %1216, align 1
  store i64 %1217, ptr %1215, align 1
  %1218 = getelementptr inbounds nuw i8, ptr %1215, i64 8
  %1219 = getelementptr inbounds nuw i8, ptr %1216, i64 8
  %1220 = icmp ult ptr %1218, %1185
  br i1 %1220, label %.preheader497, label %.loopexit150, !llvm.loop !177

1221:                                             ; preds = %1181
  %1222 = load <2 x i64>, ptr %1178, align 1, !tbaa !9
  store <2 x i64> %1222, ptr %1179, align 1, !tbaa !9
  %1223 = icmp ult i64 %1130, 25
  br i1 %1223, label %.loopexit150, label %1224

1224:                                             ; preds = %1221
  %1225 = getelementptr inbounds nuw i8, ptr %1132, i64 24
  br label %1226

1226:                                             ; preds = %1226, %1224
  %1227 = phi ptr [ %1225, %1224 ], [ %1234, %1226 ]
  %1228 = phi ptr [ %1178, %1224 ], [ %1232, %1226 ]
  %1229 = getelementptr inbounds nuw i8, ptr %1228, i64 16
  %1230 = load <2 x i64>, ptr %1229, align 1, !tbaa !9
  store <2 x i64> %1230, ptr %1227, align 1, !tbaa !9
  %1231 = getelementptr inbounds nuw i8, ptr %1227, i64 16
  %1232 = getelementptr inbounds nuw i8, ptr %1228, i64 32
  %1233 = load <2 x i64>, ptr %1232, align 1, !tbaa !9
  store <2 x i64> %1233, ptr %1231, align 1, !tbaa !9
  %1234 = getelementptr inbounds nuw i8, ptr %1227, i64 32
  %1235 = icmp ult ptr %1234, %1185
  br i1 %1235, label %1226, label %.loopexit150, !llvm.loop !97

1236:                                             ; preds = %778
  %1237 = and i32 %569, 7
  %1238 = zext nneg i32 %1237 to i64
  %1239 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1238
  %1240 = load i64, ptr %1239, align 8
  %1241 = getelementptr inbounds nuw i8, ptr %1239, i64 8
  %1242 = load i64, ptr %1241, align 8
  %1243 = getelementptr inbounds nuw i8, ptr %1239, i64 16
  %1244 = load i64, ptr %1243, align 8
  %1245 = getelementptr inbounds nuw i8, ptr %567, i64 %1240
  %1246 = add i64 %1242, %1240
  %1247 = load ptr, ptr %7, align 8, !tbaa !38
  %1248 = getelementptr inbounds nuw i8, ptr %1247, i64 %1240
  %1249 = sub i64 0, %1244
  %1250 = getelementptr inbounds i8, ptr %1245, i64 %1249
  %1251 = icmp ugt ptr %1248, %568
  %1252 = getelementptr inbounds nuw i8, ptr %567, i64 %1246
  %1253 = icmp ugt ptr %1252, %301
  %1254 = select i1 %1251, i1 true, i1 %1253
  br i1 %1254, label %1258, label %1255, !prof !101

1255:                                             ; preds = %1236
  %1256 = load <2 x i64>, ptr %1247, align 1, !tbaa !9
  store <2 x i64> %1256, ptr %567, align 1, !tbaa !9
  %1257 = icmp ugt i64 %1240, 16
  br i1 %1257, label %1260, label %1261, !prof !52

1258:                                             ; preds = %1236
  %1259 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %567, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1239, ptr noundef nonnull %7, ptr noundef %568, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit150

1260:                                             ; preds = %1255
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.1(ptr nonnull %567, ptr nonnull %1247, i64 %1240) #20
  br label %1261

1261:                                             ; preds = %1260, %1255
  store ptr %1248, ptr %7, align 8, !tbaa !38
  %1262 = ptrtoint ptr %1245 to i64
  %1263 = sub i64 %1262, %48
  %1264 = icmp ugt i64 %1244, %1263
  br i1 %1264, label %1265, label %1278

1265:                                             ; preds = %1261
  %1266 = sub i64 %1262, %302
  %1267 = icmp ugt i64 %1244, %1266
  br i1 %1267, label %.thread, label %1268, !prof !52

1268:                                             ; preds = %1265
  %1269 = ptrtoint ptr %1250 to i64
  %1270 = sub i64 %1269, %48
  %1271 = getelementptr inbounds i8, ptr %30, i64 %1270
  %1272 = add i64 %1270, %1242
  %1273 = icmp sgt i64 %1272, 0
  br i1 %1273, label %1275, label %1274

1274:                                             ; preds = %1268
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1245, ptr align 1 %1271, i64 %1242, i1 false)
  br label %.loopexit150

1275:                                             ; preds = %1268
  %1276 = sub nsw i64 0, %1270
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1245, ptr align 1 %1271, i64 %1276, i1 false)
  %1277 = getelementptr inbounds nuw i8, ptr %1245, i64 %1276
  %.pre257 = ptrtoint ptr %1277 to i64
  br label %1278

1278:                                             ; preds = %1275, %1261
  %.pre-phi258 = phi i64 [ %.pre257, %1275 ], [ %1262, %1261 ]
  %1279 = phi i64 [ %1272, %1275 ], [ %1242, %1261 ]
  %1280 = phi ptr [ %26, %1275 ], [ %1250, %1261 ]
  %1281 = phi ptr [ %1277, %1275 ], [ %1245, %1261 ]
  %1282 = icmp ugt i64 %1244, 15
  br i1 %1282, label %1283, label %1299, !prof !87

1283:                                             ; preds = %1278
  %1284 = getelementptr inbounds nuw i8, ptr %1281, i64 %1279
  %1285 = load <2 x i64>, ptr %1280, align 1, !tbaa !9
  store <2 x i64> %1285, ptr %1281, align 1, !tbaa !9
  %1286 = icmp ult i64 %1279, 17
  br i1 %1286, label %.loopexit150, label %1287

1287:                                             ; preds = %1283
  %1288 = getelementptr inbounds nuw i8, ptr %1281, i64 16
  br label %1289

1289:                                             ; preds = %1289, %1287
  %1290 = phi ptr [ %1288, %1287 ], [ %1297, %1289 ]
  %1291 = phi ptr [ %1280, %1287 ], [ %1295, %1289 ]
  %1292 = getelementptr inbounds nuw i8, ptr %1291, i64 16
  %1293 = load <2 x i64>, ptr %1292, align 1, !tbaa !9
  store <2 x i64> %1293, ptr %1290, align 1, !tbaa !9
  %1294 = getelementptr inbounds nuw i8, ptr %1290, i64 16
  %1295 = getelementptr inbounds nuw i8, ptr %1291, i64 32
  %1296 = load <2 x i64>, ptr %1295, align 1, !tbaa !9
  store <2 x i64> %1296, ptr %1294, align 1, !tbaa !9
  %1297 = getelementptr inbounds nuw i8, ptr %1290, i64 32
  %1298 = icmp ult ptr %1297, %1284
  br i1 %1298, label %1289, label %.loopexit150, !llvm.loop !97

1299:                                             ; preds = %1278
  %1300 = icmp samesign ult i64 %1244, 8
  br i1 %1300, label %1301, label %1323

1301:                                             ; preds = %1299
  %1302 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1244
  %1303 = load i32, ptr %1302, align 4, !tbaa !30
  %1304 = load i8, ptr %1280, align 1, !tbaa !9
  store i8 %1304, ptr %1281, align 1, !tbaa !9
  %1305 = getelementptr inbounds nuw i8, ptr %1280, i64 1
  %1306 = load i8, ptr %1305, align 1, !tbaa !9
  %1307 = getelementptr inbounds nuw i8, ptr %1281, i64 1
  store i8 %1306, ptr %1307, align 1, !tbaa !9
  %1308 = getelementptr inbounds nuw i8, ptr %1280, i64 2
  %1309 = load i8, ptr %1308, align 1, !tbaa !9
  %1310 = getelementptr inbounds nuw i8, ptr %1281, i64 2
  store i8 %1309, ptr %1310, align 1, !tbaa !9
  %1311 = getelementptr inbounds nuw i8, ptr %1280, i64 3
  %1312 = load i8, ptr %1311, align 1, !tbaa !9
  %1313 = getelementptr inbounds nuw i8, ptr %1281, i64 3
  store i8 %1312, ptr %1313, align 1, !tbaa !9
  %1314 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1244
  %1315 = load i32, ptr %1314, align 4, !tbaa !30
  %1316 = zext i32 %1315 to i64
  %1317 = getelementptr inbounds nuw i8, ptr %1280, i64 %1316
  %1318 = getelementptr inbounds nuw i8, ptr %1281, i64 4
  %1319 = load i32, ptr %1317, align 1
  store i32 %1319, ptr %1318, align 1
  %1320 = sext i32 %1303 to i64
  %1321 = sub nsw i64 0, %1320
  %1322 = getelementptr inbounds i8, ptr %1317, i64 %1321
  br label %1325

1323:                                             ; preds = %1299
  %1324 = load i64, ptr %1280, align 1
  store i64 %1324, ptr %1281, align 1
  br label %1325

1325:                                             ; preds = %1323, %1301
  %1326 = phi ptr [ %1322, %1301 ], [ %1280, %1323 ]
  %1327 = getelementptr inbounds nuw i8, ptr %1326, i64 8
  %1328 = getelementptr inbounds nuw i8, ptr %1281, i64 8
  %1329 = icmp ugt i64 %1279, 8
  br i1 %1329, label %1330, label %.loopexit150

1330:                                             ; preds = %1325
  %1331 = ptrtoint ptr %1328 to i64
  %1332 = ptrtoint ptr %1327 to i64
  %1333 = sub i64 %1331, %1332
  %1334 = getelementptr i8, ptr %1281, i64 %1279
  %1335 = icmp slt i64 %1333, 16
  br i1 %1335, label %1336, label %1370

1336:                                             ; preds = %1330
  %1337 = add i64 %1279, %.pre-phi258
  %1338 = add i64 %.pre-phi258, 16
  %1339 = tail call i64 @llvm.umax.i64(i64 %1337, i64 %1338)
  %reass.sub185 = sub i64 %1339, %.pre-phi258
  %1340 = add i64 %reass.sub185, -9
  %1341 = lshr i64 %1340, 3
  %1342 = add nuw nsw i64 %1341, 1
  %1343 = icmp ult i64 %1340, 24
  %1344 = icmp ult i64 %1333, 32
  %1345 = or i1 %1343, %1344
  br i1 %1345, label %.preheader503.preheader, label %1346

1346:                                             ; preds = %1336
  %1347 = and i64 %1342, 4611686018427387900
  br label %1348

1348:                                             ; preds = %1348, %1346
  %1349 = phi i64 [ 0, %1346 ], [ %1357, %1348 ]
  %1350 = shl i64 %1349, 3
  %1351 = getelementptr i8, ptr %1328, i64 %1350
  %1352 = getelementptr i8, ptr %1327, i64 %1350
  %1353 = getelementptr i8, ptr %1352, i64 16
  %1354 = load <2 x i64>, ptr %1352, align 1
  %1355 = load <2 x i64>, ptr %1353, align 1
  %1356 = getelementptr i8, ptr %1351, i64 16
  store <2 x i64> %1354, ptr %1351, align 1
  store <2 x i64> %1355, ptr %1356, align 1
  %1357 = add nuw i64 %1349, 4
  %1358 = icmp eq i64 %1357, %1347
  br i1 %1358, label %1359, label %1348, !llvm.loop !178

1359:                                             ; preds = %1348
  %1360 = shl i64 %1347, 3
  %1361 = getelementptr i8, ptr %1328, i64 %1360
  %1362 = getelementptr i8, ptr %1327, i64 %1360
  %1363 = icmp eq i64 %1342, %1347
  br i1 %1363, label %.loopexit150, label %.preheader503.preheader

.preheader503.preheader:                          ; preds = %1359, %1336
  %.ph452 = phi ptr [ %1328, %1336 ], [ %1361, %1359 ]
  %.ph453 = phi ptr [ %1327, %1336 ], [ %1362, %1359 ]
  br label %.preheader503

.preheader503:                                    ; preds = %.preheader503.preheader, %.preheader503
  %1364 = phi ptr [ %1367, %.preheader503 ], [ %.ph452, %.preheader503.preheader ]
  %1365 = phi ptr [ %1368, %.preheader503 ], [ %.ph453, %.preheader503.preheader ]
  %1366 = load i64, ptr %1365, align 1
  store i64 %1366, ptr %1364, align 1
  %1367 = getelementptr inbounds nuw i8, ptr %1364, i64 8
  %1368 = getelementptr inbounds nuw i8, ptr %1365, i64 8
  %1369 = icmp ult ptr %1367, %1334
  br i1 %1369, label %.preheader503, label %.loopexit150, !llvm.loop !179

1370:                                             ; preds = %1330
  %1371 = load <2 x i64>, ptr %1327, align 1, !tbaa !9
  store <2 x i64> %1371, ptr %1328, align 1, !tbaa !9
  %1372 = icmp ult i64 %1279, 25
  br i1 %1372, label %.loopexit150, label %1373

1373:                                             ; preds = %1370
  %1374 = getelementptr inbounds nuw i8, ptr %1281, i64 24
  br label %1375

1375:                                             ; preds = %1375, %1373
  %1376 = phi ptr [ %1374, %1373 ], [ %1383, %1375 ]
  %1377 = phi ptr [ %1327, %1373 ], [ %1381, %1375 ]
  %1378 = getelementptr inbounds nuw i8, ptr %1377, i64 16
  %1379 = load <2 x i64>, ptr %1378, align 1, !tbaa !9
  store <2 x i64> %1379, ptr %1376, align 1, !tbaa !9
  %1380 = getelementptr inbounds nuw i8, ptr %1376, i64 16
  %1381 = getelementptr inbounds nuw i8, ptr %1377, i64 32
  %1382 = load <2 x i64>, ptr %1381, align 1, !tbaa !9
  store <2 x i64> %1382, ptr %1380, align 1, !tbaa !9
  %1383 = getelementptr inbounds nuw i8, ptr %1376, i64 32
  %1384 = icmp ult ptr %1383, %1334
  br i1 %1384, label %1375, label %.loopexit150, !llvm.loop !97

.loopexit150:                                     ; preds = %1375, %.preheader503, %1289, %1226, %.preheader497, %1140, %1370, %1359, %1325, %1283, %1274, %1258, %1221, %1210, %1176, %1134, %1125, %1109
  %1385 = phi i64 [ %1110, %1109 ], [ %1099, %1125 ], [ %1246, %.preheader503 ], [ %1099, %1176 ], [ %1099, %1134 ], [ %1099, %1221 ], [ %1099, %1210 ], [ %1246, %1289 ], [ %1099, %.preheader497 ], [ %1099, %1226 ], [ %1259, %1258 ], [ %1246, %1274 ], [ %1099, %1140 ], [ %1246, %1325 ], [ %1246, %1283 ], [ %1246, %1370 ], [ %1246, %1359 ], [ %1246, %1375 ]
  %1386 = icmp ult i64 %1385, -119
  br i1 %1386, label %1387, label %.thread

1387:                                             ; preds = %.loopexit150
  %1388 = add i64 %714, %570
  %1389 = icmp ugt i64 %650, %1388
  %1390 = select i1 %1389, ptr %30, ptr %26
  %1391 = getelementptr inbounds i8, ptr %1390, i64 %1388
  %1392 = sub i64 0, %650
  %1393 = getelementptr inbounds i8, ptr %1391, i64 %1392
  tail call void @llvm.prefetch.p0(ptr %1393, i32 0, i32 3, i32 1)
  %1394 = getelementptr inbounds nuw i8, ptr %1393, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1394, i32 0, i32 3, i32 1)
  %1395 = and i32 %569, 7
  %1396 = zext nneg i32 %1395 to i64
  %1397 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1396
  store i64 %714, ptr %1397, align 8, !tbaa !45
  %1398 = getelementptr inbounds nuw i8, ptr %1397, i64 8
  store i64 %665, ptr %1398, align 8, !tbaa !45
  %1399 = getelementptr inbounds nuw i8, ptr %1397, i64 16
  store i64 %650, ptr %1399, align 8, !tbaa !45
  %1400 = getelementptr inbounds nuw i8, ptr %567, i64 %1385
  br label %1401

1401:                                             ; preds = %1387, %1083
  %1402 = phi i64 [ %1388, %1387 ], [ %1084, %1083 ]
  %1403 = phi ptr [ %568, %1387 ], [ %305, %1083 ]
  %1404 = phi ptr [ %1400, %1387 ], [ %1091, %1083 ]
  %1405 = add i64 %1402, %665
  %1406 = add nuw i32 %569, 1
  %1407 = icmp eq i32 %1406, %5
  br i1 %1407, label %.loopexit158, label %557, !llvm.loop !108

.loopexit158:                                     ; preds = %1401, %.loopexit159
  %1408 = phi i32 [ %288, %.loopexit159 ], [ %780, %1401 ]
  %1409 = phi ptr [ %289, %.loopexit159 ], [ %779, %1401 ]
  %1410 = phi i64 [ %290, %.loopexit159 ], [ %651, %1401 ]
  %1411 = phi i64 [ %291, %.loopexit159 ], [ %649, %1401 ]
  %1412 = phi i64 [ %292, %.loopexit159 ], [ %650, %1401 ]
  %1413 = phi i32 [ %297, %.loopexit159 ], [ %5, %1401 ]
  %1414 = phi ptr [ %24, %.loopexit159 ], [ %1403, %1401 ]
  %1415 = phi ptr [ %1, %.loopexit159 ], [ %1404, %1401 ]
  %1416 = icmp eq ptr %1409, %3
  %1417 = icmp eq i32 %1408, 64
  %1418 = select i1 %1416, i1 %1417, i1 false
  br i1 %1418, label %1419, label %.thread

1419:                                             ; preds = %.loopexit158
  %1420 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1413, i32 %46), !nosanitize !86
  %1421 = extractvalue { i32, i1 } %1420, 1, !nosanitize !86
  br i1 %1421, label %359, label %1422, !prof !109, !nosanitize !86

1422:                                             ; preds = %1419
  %1423 = extractvalue { i32, i1 } %1420, 0
  %1424 = icmp slt i32 %1423, %5
  br i1 %1424, label %1425, label %.loopexit143

1425:                                             ; preds = %1422
  %1426 = getelementptr inbounds i8, ptr %20, i64 -32
  %1427 = ptrtoint ptr %28 to i64
  %1428 = ptrtoint ptr %20 to i64
  %1429 = getelementptr i8, ptr %0, i64 30372
  %1430 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %1431 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  br label %1439

.loopexit143:                                     ; preds = %2035, %1422
  %1432 = phi ptr [ %1414, %1422 ], [ %2036, %2035 ]
  %1433 = phi ptr [ %1415, %1422 ], [ %2037, %2035 ]
  %1434 = trunc i64 %1412 to i32
  store i32 %1434, ptr %34, align 4, !tbaa !30
  %1435 = trunc i64 %1411 to i32
  store i32 %1435, ptr %38, align 4, !tbaa !30
  %1436 = trunc i64 %1410 to i32
  store i32 %1436, ptr %42, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1437 = load i32, ptr %10, align 8, !tbaa !35
  %1438 = load ptr, ptr %7, align 8, !tbaa !38
  br label %2041

1439:                                             ; preds = %2035, %1425
  %1440 = phi i32 [ %1423, %1425 ], [ %2038, %2035 ]
  %1441 = phi ptr [ %1415, %1425 ], [ %2037, %2035 ]
  %1442 = phi ptr [ %1414, %1425 ], [ %2036, %2035 ]
  %1443 = and i32 %1440, 7
  %1444 = zext nneg i32 %1443 to i64
  %1445 = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %1444
  %1446 = load i32, ptr %10, align 8, !tbaa !35
  %1447 = icmp eq i32 %1446, 2
  br i1 %1447, label %1448, label %1886

1448:                                             ; preds = %1439
  %1449 = load ptr, ptr %7, align 8, !tbaa !38
  %1450 = load i64, ptr %1445, align 8, !tbaa !92
  %1451 = getelementptr inbounds nuw i8, ptr %1449, i64 %1450
  %1452 = load ptr, ptr %23, align 8, !tbaa !34
  %1453 = icmp ugt ptr %1451, %1452
  br i1 %1453, label %1454, label %1742

1454:                                             ; preds = %1448
  %1455 = ptrtoint ptr %1452 to i64
  %1456 = ptrtoint ptr %1449 to i64
  %1457 = sub i64 %1455, %1456
  %1458 = icmp eq ptr %1452, %1449
  br i1 %1458, label %thread-pre-split120, label %1459

1459:                                             ; preds = %1454
  %1460 = ptrtoint ptr %1441 to i64
  %1461 = sub i64 %1428, %1460
  %1462 = icmp ugt i64 %1457, %1461
  br i1 %1462, label %.thread, label %1463

1463:                                             ; preds = %1459
  %1464 = sub i64 %1460, %1456
  %1465 = getelementptr inbounds nuw i8, ptr %1441, i64 %1457
  %1466 = icmp ult i64 %1457, 8
  %1467 = icmp sgt i64 %1464, -8
  %1468 = or i1 %1467, %1466
  br i1 %1468, label %1469, label %1518

1469:                                             ; preds = %1463
  %1470 = add i64 %1464, %1455
  %1471 = add i64 %1460, 1
  %1472 = tail call i64 @llvm.umax.i64(i64 %1470, i64 %1471)
  %1473 = sub i64 %1472, %1460
  %1474 = icmp ult i64 %1473, 4
  %1475 = icmp ult i64 %1464, 32
  %1476 = or i1 %1475, %1474
  br i1 %1476, label %.preheader465.preheader, label %1477

1477:                                             ; preds = %1469
  %1478 = icmp ult i64 %1473, 32
  br i1 %1478, label %1498, label %1479

1479:                                             ; preds = %1477
  %1480 = and i64 %1473, -32
  br label %1481

1481:                                             ; preds = %1481, %1479
  %1482 = phi i64 [ 0, %1479 ], [ %1489, %1481 ]
  %1483 = getelementptr i8, ptr %1441, i64 %1482
  %1484 = getelementptr i8, ptr %1449, i64 %1482
  %1485 = getelementptr i8, ptr %1484, i64 16
  %1486 = load <16 x i8>, ptr %1484, align 1, !tbaa !9
  %1487 = load <16 x i8>, ptr %1485, align 1, !tbaa !9
  %1488 = getelementptr i8, ptr %1483, i64 16
  store <16 x i8> %1486, ptr %1483, align 1, !tbaa !9
  store <16 x i8> %1487, ptr %1488, align 1, !tbaa !9
  %1489 = add nuw i64 %1482, 32
  %1490 = icmp eq i64 %1489, %1480
  br i1 %1490, label %1491, label %1481, !llvm.loop !180

1491:                                             ; preds = %1481
  %1492 = icmp eq i64 %1473, %1480
  br i1 %1492, label %.loopexit134, label %1493

1493:                                             ; preds = %1491
  %1494 = getelementptr i8, ptr %1441, i64 %1480
  %1495 = getelementptr i8, ptr %1449, i64 %1480
  %1496 = and i64 %1473, 28
  %1497 = icmp eq i64 %1496, 0
  br i1 %1497, label %.preheader465.preheader, label %1498

1498:                                             ; preds = %1493, %1477
  %1499 = phi i64 [ %1480, %1493 ], [ 0, %1477 ]
  %1500 = and i64 %1473, -4
  br label %1501

1501:                                             ; preds = %1501, %1498
  %1502 = phi i64 [ %1499, %1498 ], [ %1506, %1501 ]
  %1503 = getelementptr i8, ptr %1441, i64 %1502
  %1504 = getelementptr i8, ptr %1449, i64 %1502
  %1505 = load <4 x i8>, ptr %1504, align 1, !tbaa !9
  store <4 x i8> %1505, ptr %1503, align 1, !tbaa !9
  %1506 = add nuw i64 %1502, 4
  %1507 = icmp eq i64 %1506, %1500
  br i1 %1507, label %1508, label %1501, !llvm.loop !181

1508:                                             ; preds = %1501
  %1509 = getelementptr i8, ptr %1441, i64 %1500
  %1510 = getelementptr i8, ptr %1449, i64 %1500
  %1511 = icmp eq i64 %1473, %1500
  br i1 %1511, label %.loopexit134, label %.preheader465.preheader

.preheader465.preheader:                          ; preds = %1508, %1493, %1469
  %.ph422 = phi ptr [ %1441, %1469 ], [ %1494, %1493 ], [ %1509, %1508 ]
  %.ph423 = phi ptr [ %1449, %1469 ], [ %1495, %1493 ], [ %1510, %1508 ]
  br label %.preheader465

.preheader465:                                    ; preds = %.preheader465.preheader, %.preheader465
  %1512 = phi ptr [ %1516, %.preheader465 ], [ %.ph422, %.preheader465.preheader ]
  %1513 = phi ptr [ %1514, %.preheader465 ], [ %.ph423, %.preheader465.preheader ]
  %1514 = getelementptr inbounds nuw i8, ptr %1513, i64 1
  %1515 = load i8, ptr %1513, align 1, !tbaa !9
  %1516 = getelementptr inbounds nuw i8, ptr %1512, i64 1
  store i8 %1515, ptr %1512, align 1, !tbaa !9
  %1517 = icmp ult ptr %1516, %1465
  br i1 %1517, label %.preheader465, label %.loopexit134, !llvm.loop !182

1518:                                             ; preds = %1463
  %1519 = icmp sgt i64 %1457, 31
  %1520 = icmp samesign ult i64 %1464, -16
  %1521 = and i1 %1520, %1519
  br i1 %1521, label %1522, label %1542

1522:                                             ; preds = %1518
  %1523 = getelementptr inbounds i8, ptr %1465, i64 -32
  %1524 = add nsw i64 %1457, -32
  %1525 = getelementptr inbounds nuw i8, ptr %1441, i64 %1524
  %1526 = load <2 x i64>, ptr %1449, align 1, !tbaa !9
  store <2 x i64> %1526, ptr %1441, align 1, !tbaa !9
  %1527 = icmp samesign ult i64 %1457, 49
  br i1 %1527, label %.loopexit136, label %1528

1528:                                             ; preds = %1522
  %1529 = getelementptr inbounds nuw i8, ptr %1441, i64 16
  br label %1530

1530:                                             ; preds = %1530, %1528
  %1531 = phi ptr [ %1529, %1528 ], [ %1538, %1530 ]
  %1532 = phi ptr [ %1449, %1528 ], [ %1536, %1530 ]
  %1533 = getelementptr inbounds nuw i8, ptr %1532, i64 16
  %1534 = load <2 x i64>, ptr %1533, align 1, !tbaa !9
  store <2 x i64> %1534, ptr %1531, align 1, !tbaa !9
  %1535 = getelementptr inbounds nuw i8, ptr %1531, i64 16
  %1536 = getelementptr inbounds nuw i8, ptr %1532, i64 32
  %1537 = load <2 x i64>, ptr %1536, align 1, !tbaa !9
  store <2 x i64> %1537, ptr %1535, align 1, !tbaa !9
  %1538 = getelementptr inbounds nuw i8, ptr %1531, i64 32
  %1539 = icmp ult ptr %1538, %1525
  br i1 %1539, label %1530, label %.loopexit136, !llvm.loop !97

.loopexit136:                                     ; preds = %1530, %1522
  %1540 = getelementptr inbounds nuw i8, ptr %1449, i64 %1524
  %.pre237 = ptrtoint ptr %1523 to i64
  %.pre239 = ptrtoint ptr %1540 to i64
  %.pre241 = sub i64 %.pre237, %.pre239
  %1541 = icmp ult i64 %.pre241, 32
  br label %1542

1542:                                             ; preds = %.loopexit136, %1518
  %.pre-phi242 = phi i1 [ %1541, %.loopexit136 ], [ false, %1518 ]
  %.pre-phi238 = phi i64 [ %.pre237, %.loopexit136 ], [ %1460, %1518 ]
  %1543 = phi ptr [ %1523, %.loopexit136 ], [ %1441, %1518 ]
  %1544 = phi ptr [ %1540, %.loopexit136 ], [ %1449, %1518 ]
  %1545 = add i64 %1464, %1455
  %1546 = add nuw i64 %.pre-phi238, 1
  %1547 = tail call i64 @llvm.umax.i64(i64 %1545, i64 %1546)
  %1548 = sub i64 %1547, %.pre-phi238
  %1549 = icmp ult i64 %1548, 4
  %1550 = select i1 %1549, i1 true, i1 %.pre-phi242
  br i1 %1550, label %.preheader468.preheader, label %1551

1551:                                             ; preds = %1542
  %1552 = icmp ult i64 %1548, 32
  br i1 %1552, label %1572, label %1553

1553:                                             ; preds = %1551
  %1554 = and i64 %1548, -32
  br label %1555

1555:                                             ; preds = %1555, %1553
  %1556 = phi i64 [ 0, %1553 ], [ %1563, %1555 ]
  %1557 = getelementptr i8, ptr %1543, i64 %1556
  %1558 = getelementptr i8, ptr %1544, i64 %1556
  %1559 = getelementptr i8, ptr %1558, i64 16
  %1560 = load <16 x i8>, ptr %1558, align 1, !tbaa !9
  %1561 = load <16 x i8>, ptr %1559, align 1, !tbaa !9
  %1562 = getelementptr i8, ptr %1557, i64 16
  store <16 x i8> %1560, ptr %1557, align 1, !tbaa !9
  store <16 x i8> %1561, ptr %1562, align 1, !tbaa !9
  %1563 = add nuw i64 %1556, 32
  %1564 = icmp eq i64 %1563, %1554
  br i1 %1564, label %1565, label %1555, !llvm.loop !183

1565:                                             ; preds = %1555
  %1566 = icmp eq i64 %1548, %1554
  br i1 %1566, label %.loopexit134, label %1567

1567:                                             ; preds = %1565
  %1568 = getelementptr i8, ptr %1543, i64 %1554
  %1569 = getelementptr i8, ptr %1544, i64 %1554
  %1570 = and i64 %1548, 28
  %1571 = icmp eq i64 %1570, 0
  br i1 %1571, label %.preheader468.preheader, label %1572

1572:                                             ; preds = %1567, %1551
  %1573 = phi i64 [ %1554, %1567 ], [ 0, %1551 ]
  %1574 = and i64 %1548, -4
  br label %1575

1575:                                             ; preds = %1575, %1572
  %1576 = phi i64 [ %1573, %1572 ], [ %1580, %1575 ]
  %1577 = getelementptr i8, ptr %1543, i64 %1576
  %1578 = getelementptr i8, ptr %1544, i64 %1576
  %1579 = load <4 x i8>, ptr %1578, align 1, !tbaa !9
  store <4 x i8> %1579, ptr %1577, align 1, !tbaa !9
  %1580 = add nuw i64 %1576, 4
  %1581 = icmp eq i64 %1580, %1574
  br i1 %1581, label %1582, label %1575, !llvm.loop !184

1582:                                             ; preds = %1575
  %1583 = getelementptr i8, ptr %1543, i64 %1574
  %1584 = getelementptr i8, ptr %1544, i64 %1574
  %1585 = icmp eq i64 %1548, %1574
  br i1 %1585, label %.loopexit134, label %.preheader468.preheader

.preheader468.preheader:                          ; preds = %1582, %1567, %1542
  %.ph424 = phi ptr [ %1543, %1542 ], [ %1568, %1567 ], [ %1583, %1582 ]
  %.ph425 = phi ptr [ %1544, %1542 ], [ %1569, %1567 ], [ %1584, %1582 ]
  br label %.preheader468

.preheader468:                                    ; preds = %.preheader468.preheader, %.preheader468
  %1586 = phi ptr [ %1590, %.preheader468 ], [ %.ph424, %.preheader468.preheader ]
  %1587 = phi ptr [ %1588, %.preheader468 ], [ %.ph425, %.preheader468.preheader ]
  %1588 = getelementptr inbounds nuw i8, ptr %1587, i64 1
  %1589 = load i8, ptr %1587, align 1, !tbaa !9
  %1590 = getelementptr inbounds nuw i8, ptr %1586, i64 1
  store i8 %1589, ptr %1586, align 1, !tbaa !9
  %1591 = icmp ult ptr %1590, %1465
  br i1 %1591, label %.preheader468, label %.loopexit134, !llvm.loop !185

.loopexit134:                                     ; preds = %.preheader468, %.preheader465, %1582, %1565, %1508, %1491
  %1592 = load i64, ptr %1445, align 8, !tbaa !92
  %1593 = sub i64 %1592, %1457
  store i64 %1593, ptr %1445, align 8, !tbaa !92
  br label %thread-pre-split120

thread-pre-split120:                              ; preds = %.loopexit134, %1454
  %1594 = phi i64 [ %1593, %.loopexit134 ], [ %1450, %1454 ]
  %1595 = phi ptr [ %1465, %.loopexit134 ], [ %1441, %1454 ]
  store ptr %1429, ptr %7, align 8, !tbaa !38
  store i32 0, ptr %10, align 8, !tbaa !35
  %1596 = getelementptr inbounds nuw i8, ptr %1445, i64 8
  %1597 = load i64, ptr %1596, align 8
  %1598 = getelementptr inbounds nuw i8, ptr %1445, i64 16
  %1599 = load i64, ptr %1598, align 8
  %1600 = getelementptr inbounds nuw i8, ptr %1595, i64 %1594
  %1601 = add i64 %1597, %1594
  %1602 = getelementptr i8, ptr %1429, i64 %1594
  %1603 = sub i64 0, %1599
  %1604 = getelementptr inbounds i8, ptr %1600, i64 %1603
  %1605 = icmp sgt i64 %1594, 65536
  %1606 = getelementptr inbounds nuw i8, ptr %1595, i64 %1601
  %1607 = icmp ugt ptr %1606, %1426
  %1608 = select i1 %1605, i1 true, i1 %1607
  br i1 %1608, label %1612, label %1609, !prof !101

1609:                                             ; preds = %thread-pre-split120
  %1610 = load <2 x i64>, ptr %1429, align 1, !tbaa !9
  store <2 x i64> %1610, ptr %1595, align 1, !tbaa !9
  %1611 = icmp ugt i64 %1594, 16
  br i1 %1611, label %1614, label %1615, !prof !52

1612:                                             ; preds = %thread-pre-split120
  %1613 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1595, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1445, ptr noundef nonnull %7, ptr noundef nonnull %1430, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit

1614:                                             ; preds = %1609
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.6(ptr nonnull %1595, i64 %1594, ptr nonnull %1431) #20
  br label %1615

1615:                                             ; preds = %1614, %1609
  store ptr %1602, ptr %7, align 8, !tbaa !38
  %1616 = ptrtoint ptr %1600 to i64
  %1617 = sub i64 %1616, %48
  %1618 = icmp ugt i64 %1599, %1617
  br i1 %1618, label %1619, label %1632

1619:                                             ; preds = %1615
  %1620 = sub i64 %1616, %1427
  %1621 = icmp ugt i64 %1599, %1620
  br i1 %1621, label %.thread, label %1622, !prof !52

1622:                                             ; preds = %1619
  %1623 = ptrtoint ptr %1604 to i64
  %1624 = sub i64 %1623, %48
  %1625 = getelementptr inbounds i8, ptr %30, i64 %1624
  %1626 = add i64 %1624, %1597
  %1627 = icmp sgt i64 %1626, 0
  br i1 %1627, label %1629, label %1628

1628:                                             ; preds = %1622
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1600, ptr align 1 %1625, i64 %1597, i1 false)
  br label %.loopexit

1629:                                             ; preds = %1622
  %1630 = sub nsw i64 0, %1624
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1600, ptr align 1 %1625, i64 %1630, i1 false)
  %1631 = getelementptr inbounds nuw i8, ptr %1600, i64 %1630
  %.pre = ptrtoint ptr %1631 to i64
  br label %1632

1632:                                             ; preds = %1629, %1615
  %.pre-phi = phi i64 [ %.pre, %1629 ], [ %1616, %1615 ]
  %1633 = phi i64 [ %1626, %1629 ], [ %1597, %1615 ]
  %1634 = phi ptr [ %26, %1629 ], [ %1604, %1615 ]
  %1635 = phi ptr [ %1631, %1629 ], [ %1600, %1615 ]
  %1636 = icmp ugt i64 %1599, 15
  br i1 %1636, label %1637, label %1653, !prof !87

1637:                                             ; preds = %1632
  %1638 = getelementptr inbounds nuw i8, ptr %1635, i64 %1633
  %1639 = load <2 x i64>, ptr %1634, align 1, !tbaa !9
  store <2 x i64> %1639, ptr %1635, align 1, !tbaa !9
  %1640 = icmp ult i64 %1633, 17
  br i1 %1640, label %.loopexit, label %1641

1641:                                             ; preds = %1637
  %1642 = getelementptr inbounds nuw i8, ptr %1635, i64 16
  br label %1643

1643:                                             ; preds = %1643, %1641
  %1644 = phi ptr [ %1642, %1641 ], [ %1651, %1643 ]
  %1645 = phi ptr [ %1634, %1641 ], [ %1649, %1643 ]
  %1646 = getelementptr inbounds nuw i8, ptr %1645, i64 16
  %1647 = load <2 x i64>, ptr %1646, align 1, !tbaa !9
  store <2 x i64> %1647, ptr %1644, align 1, !tbaa !9
  %1648 = getelementptr inbounds nuw i8, ptr %1644, i64 16
  %1649 = getelementptr inbounds nuw i8, ptr %1645, i64 32
  %1650 = load <2 x i64>, ptr %1649, align 1, !tbaa !9
  store <2 x i64> %1650, ptr %1648, align 1, !tbaa !9
  %1651 = getelementptr inbounds nuw i8, ptr %1644, i64 32
  %1652 = icmp ult ptr %1651, %1638
  br i1 %1652, label %1643, label %.loopexit, !llvm.loop !97

1653:                                             ; preds = %1632
  %1654 = icmp samesign ult i64 %1599, 8
  br i1 %1654, label %1655, label %1677

1655:                                             ; preds = %1653
  %1656 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1599
  %1657 = load i32, ptr %1656, align 4, !tbaa !30
  %1658 = load i8, ptr %1634, align 1, !tbaa !9
  store i8 %1658, ptr %1635, align 1, !tbaa !9
  %1659 = getelementptr inbounds nuw i8, ptr %1634, i64 1
  %1660 = load i8, ptr %1659, align 1, !tbaa !9
  %1661 = getelementptr inbounds nuw i8, ptr %1635, i64 1
  store i8 %1660, ptr %1661, align 1, !tbaa !9
  %1662 = getelementptr inbounds nuw i8, ptr %1634, i64 2
  %1663 = load i8, ptr %1662, align 1, !tbaa !9
  %1664 = getelementptr inbounds nuw i8, ptr %1635, i64 2
  store i8 %1663, ptr %1664, align 1, !tbaa !9
  %1665 = getelementptr inbounds nuw i8, ptr %1634, i64 3
  %1666 = load i8, ptr %1665, align 1, !tbaa !9
  %1667 = getelementptr inbounds nuw i8, ptr %1635, i64 3
  store i8 %1666, ptr %1667, align 1, !tbaa !9
  %1668 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1599
  %1669 = load i32, ptr %1668, align 4, !tbaa !30
  %1670 = zext i32 %1669 to i64
  %1671 = getelementptr inbounds nuw i8, ptr %1634, i64 %1670
  %1672 = getelementptr inbounds nuw i8, ptr %1635, i64 4
  %1673 = load i32, ptr %1671, align 1
  store i32 %1673, ptr %1672, align 1
  %1674 = sext i32 %1657 to i64
  %1675 = sub nsw i64 0, %1674
  %1676 = getelementptr inbounds i8, ptr %1671, i64 %1675
  br label %1679

1677:                                             ; preds = %1653
  %1678 = load i64, ptr %1634, align 1
  store i64 %1678, ptr %1635, align 1
  br label %1679

1679:                                             ; preds = %1677, %1655
  %1680 = phi ptr [ %1676, %1655 ], [ %1634, %1677 ]
  %1681 = getelementptr inbounds nuw i8, ptr %1680, i64 8
  %1682 = getelementptr inbounds nuw i8, ptr %1635, i64 8
  %1683 = icmp ugt i64 %1633, 8
  br i1 %1683, label %1684, label %.loopexit

1684:                                             ; preds = %1679
  %1685 = ptrtoint ptr %1682 to i64
  %1686 = ptrtoint ptr %1681 to i64
  %1687 = sub i64 %1685, %1686
  %1688 = getelementptr i8, ptr %1635, i64 %1633
  %1689 = icmp slt i64 %1687, 16
  br i1 %1689, label %1690, label %1724

1690:                                             ; preds = %1684
  %1691 = add i64 %1633, %.pre-phi
  %1692 = add i64 %.pre-phi, 16
  %1693 = tail call i64 @llvm.umax.i64(i64 %1691, i64 %1692)
  %reass.sub190 = sub i64 %1693, %.pre-phi
  %1694 = add i64 %reass.sub190, -9
  %1695 = lshr i64 %1694, 3
  %1696 = add nuw nsw i64 %1695, 1
  %1697 = icmp ult i64 %1694, 24
  %1698 = icmp ult i64 %1687, 32
  %1699 = or i1 %1697, %1698
  br i1 %1699, label %.preheader.preheader, label %1700

1700:                                             ; preds = %1690
  %1701 = and i64 %1696, 4611686018427387900
  br label %1702

1702:                                             ; preds = %1702, %1700
  %1703 = phi i64 [ 0, %1700 ], [ %1711, %1702 ]
  %1704 = shl i64 %1703, 3
  %1705 = getelementptr i8, ptr %1682, i64 %1704
  %1706 = getelementptr i8, ptr %1681, i64 %1704
  %1707 = getelementptr i8, ptr %1706, i64 16
  %1708 = load <2 x i64>, ptr %1706, align 1
  %1709 = load <2 x i64>, ptr %1707, align 1
  %1710 = getelementptr i8, ptr %1705, i64 16
  store <2 x i64> %1708, ptr %1705, align 1
  store <2 x i64> %1709, ptr %1710, align 1
  %1711 = add nuw i64 %1703, 4
  %1712 = icmp eq i64 %1711, %1701
  br i1 %1712, label %1713, label %1702, !llvm.loop !186

1713:                                             ; preds = %1702
  %1714 = shl i64 %1701, 3
  %1715 = getelementptr i8, ptr %1682, i64 %1714
  %1716 = getelementptr i8, ptr %1681, i64 %1714
  %1717 = icmp eq i64 %1696, %1701
  br i1 %1717, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1713, %1690
  %.ph = phi ptr [ %1682, %1690 ], [ %1715, %1713 ]
  %.ph419 = phi ptr [ %1681, %1690 ], [ %1716, %1713 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %1718 = phi ptr [ %1721, %.preheader ], [ %.ph, %.preheader.preheader ]
  %1719 = phi ptr [ %1722, %.preheader ], [ %.ph419, %.preheader.preheader ]
  %1720 = load i64, ptr %1719, align 1
  store i64 %1720, ptr %1718, align 1
  %1721 = getelementptr inbounds nuw i8, ptr %1718, i64 8
  %1722 = getelementptr inbounds nuw i8, ptr %1719, i64 8
  %1723 = icmp ult ptr %1721, %1688
  br i1 %1723, label %.preheader, label %.loopexit, !llvm.loop !187

1724:                                             ; preds = %1684
  %1725 = load <2 x i64>, ptr %1681, align 1, !tbaa !9
  store <2 x i64> %1725, ptr %1682, align 1, !tbaa !9
  %1726 = icmp ult i64 %1633, 25
  br i1 %1726, label %.loopexit, label %1727

1727:                                             ; preds = %1724
  %1728 = getelementptr inbounds nuw i8, ptr %1635, i64 24
  br label %1729

1729:                                             ; preds = %1729, %1727
  %1730 = phi ptr [ %1728, %1727 ], [ %1737, %1729 ]
  %1731 = phi ptr [ %1681, %1727 ], [ %1735, %1729 ]
  %1732 = getelementptr inbounds nuw i8, ptr %1731, i64 16
  %1733 = load <2 x i64>, ptr %1732, align 1, !tbaa !9
  store <2 x i64> %1733, ptr %1730, align 1, !tbaa !9
  %1734 = getelementptr inbounds nuw i8, ptr %1730, i64 16
  %1735 = getelementptr inbounds nuw i8, ptr %1731, i64 32
  %1736 = load <2 x i64>, ptr %1735, align 1, !tbaa !9
  store <2 x i64> %1736, ptr %1734, align 1, !tbaa !9
  %1737 = getelementptr inbounds nuw i8, ptr %1730, i64 32
  %1738 = icmp ult ptr %1737, %1688
  br i1 %1738, label %1729, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %1729, %.preheader, %1643, %1724, %1713, %1679, %1637, %1628, %1612
  %1739 = phi i64 [ %1613, %1612 ], [ %1601, %1628 ], [ %1601, %1679 ], [ %1601, %1637 ], [ %1601, %1724 ], [ %1601, %1713 ], [ %1601, %1643 ], [ %1601, %.preheader ], [ %1601, %1729 ]
  %1740 = icmp ult i64 %1739, -119
  %1741 = getelementptr inbounds nuw i8, ptr %1595, i64 %1739
  br i1 %1740, label %2035, label %.thread

1742:                                             ; preds = %1448
  %1743 = getelementptr inbounds i8, ptr %1451, i64 -32
  %1744 = getelementptr inbounds nuw i8, ptr %1445, i64 8
  %1745 = load i64, ptr %1744, align 8
  %1746 = getelementptr inbounds nuw i8, ptr %1445, i64 16
  %1747 = load i64, ptr %1746, align 8
  %1748 = getelementptr inbounds nuw i8, ptr %1441, i64 %1450
  %1749 = add i64 %1745, %1450
  %1750 = sub i64 0, %1747
  %1751 = getelementptr inbounds i8, ptr %1748, i64 %1750
  %1752 = icmp ugt ptr %1451, %1442
  %1753 = getelementptr inbounds nuw i8, ptr %1441, i64 %1749
  %1754 = icmp ugt ptr %1753, %1743
  %1755 = select i1 %1752, i1 true, i1 %1754
  br i1 %1755, label %1759, label %1756, !prof !101

1756:                                             ; preds = %1742
  %1757 = load <2 x i64>, ptr %1449, align 1, !tbaa !9
  store <2 x i64> %1757, ptr %1441, align 1, !tbaa !9
  %1758 = icmp ugt i64 %1450, 16
  br i1 %1758, label %1761, label %1762, !prof !52

1759:                                             ; preds = %1742
  %1760 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1441, ptr noundef %20, ptr noundef nonnull %1743, ptr noundef nonnull byval(%struct.seq_t) align 8 %1445, ptr noundef nonnull %7, ptr noundef %1442, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit137

1761:                                             ; preds = %1756
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.5(ptr nonnull %1441, ptr nonnull %1449, i64 %1450) #20
  br label %1762

1762:                                             ; preds = %1761, %1756
  store ptr %1451, ptr %7, align 8, !tbaa !38
  %1763 = ptrtoint ptr %1748 to i64
  %1764 = sub i64 %1763, %48
  %1765 = icmp ugt i64 %1747, %1764
  br i1 %1765, label %1766, label %1779

1766:                                             ; preds = %1762
  %1767 = sub i64 %1763, %1427
  %1768 = icmp ugt i64 %1747, %1767
  br i1 %1768, label %.thread, label %1769, !prof !52

1769:                                             ; preds = %1766
  %1770 = ptrtoint ptr %1751 to i64
  %1771 = sub i64 %1770, %48
  %1772 = getelementptr inbounds i8, ptr %30, i64 %1771
  %1773 = add i64 %1771, %1745
  %1774 = icmp sgt i64 %1773, 0
  br i1 %1774, label %1776, label %1775

1775:                                             ; preds = %1769
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1748, ptr align 1 %1772, i64 %1745, i1 false)
  br label %.loopexit137

1776:                                             ; preds = %1769
  %1777 = sub nsw i64 0, %1771
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1748, ptr align 1 %1772, i64 %1777, i1 false)
  %1778 = getelementptr inbounds nuw i8, ptr %1748, i64 %1777
  %.pre243 = ptrtoint ptr %1778 to i64
  br label %1779

1779:                                             ; preds = %1776, %1762
  %.pre-phi244 = phi i64 [ %.pre243, %1776 ], [ %1763, %1762 ]
  %1780 = phi i64 [ %1773, %1776 ], [ %1745, %1762 ]
  %1781 = phi ptr [ %26, %1776 ], [ %1751, %1762 ]
  %1782 = phi ptr [ %1778, %1776 ], [ %1748, %1762 ]
  %1783 = icmp ugt i64 %1747, 15
  br i1 %1783, label %1784, label %1800, !prof !87

1784:                                             ; preds = %1779
  %1785 = getelementptr inbounds nuw i8, ptr %1782, i64 %1780
  %1786 = load <2 x i64>, ptr %1781, align 1, !tbaa !9
  store <2 x i64> %1786, ptr %1782, align 1, !tbaa !9
  %1787 = icmp ult i64 %1780, 17
  br i1 %1787, label %.loopexit137, label %1788

1788:                                             ; preds = %1784
  %1789 = getelementptr inbounds nuw i8, ptr %1782, i64 16
  br label %1790

1790:                                             ; preds = %1790, %1788
  %1791 = phi ptr [ %1789, %1788 ], [ %1798, %1790 ]
  %1792 = phi ptr [ %1781, %1788 ], [ %1796, %1790 ]
  %1793 = getelementptr inbounds nuw i8, ptr %1792, i64 16
  %1794 = load <2 x i64>, ptr %1793, align 1, !tbaa !9
  store <2 x i64> %1794, ptr %1791, align 1, !tbaa !9
  %1795 = getelementptr inbounds nuw i8, ptr %1791, i64 16
  %1796 = getelementptr inbounds nuw i8, ptr %1792, i64 32
  %1797 = load <2 x i64>, ptr %1796, align 1, !tbaa !9
  store <2 x i64> %1797, ptr %1795, align 1, !tbaa !9
  %1798 = getelementptr inbounds nuw i8, ptr %1791, i64 32
  %1799 = icmp ult ptr %1798, %1785
  br i1 %1799, label %1790, label %.loopexit137, !llvm.loop !97

1800:                                             ; preds = %1779
  %1801 = icmp samesign ult i64 %1747, 8
  br i1 %1801, label %1802, label %1824

1802:                                             ; preds = %1800
  %1803 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1747
  %1804 = load i32, ptr %1803, align 4, !tbaa !30
  %1805 = load i8, ptr %1781, align 1, !tbaa !9
  store i8 %1805, ptr %1782, align 1, !tbaa !9
  %1806 = getelementptr inbounds nuw i8, ptr %1781, i64 1
  %1807 = load i8, ptr %1806, align 1, !tbaa !9
  %1808 = getelementptr inbounds nuw i8, ptr %1782, i64 1
  store i8 %1807, ptr %1808, align 1, !tbaa !9
  %1809 = getelementptr inbounds nuw i8, ptr %1781, i64 2
  %1810 = load i8, ptr %1809, align 1, !tbaa !9
  %1811 = getelementptr inbounds nuw i8, ptr %1782, i64 2
  store i8 %1810, ptr %1811, align 1, !tbaa !9
  %1812 = getelementptr inbounds nuw i8, ptr %1781, i64 3
  %1813 = load i8, ptr %1812, align 1, !tbaa !9
  %1814 = getelementptr inbounds nuw i8, ptr %1782, i64 3
  store i8 %1813, ptr %1814, align 1, !tbaa !9
  %1815 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1747
  %1816 = load i32, ptr %1815, align 4, !tbaa !30
  %1817 = zext i32 %1816 to i64
  %1818 = getelementptr inbounds nuw i8, ptr %1781, i64 %1817
  %1819 = getelementptr inbounds nuw i8, ptr %1782, i64 4
  %1820 = load i32, ptr %1818, align 1
  store i32 %1820, ptr %1819, align 1
  %1821 = sext i32 %1804 to i64
  %1822 = sub nsw i64 0, %1821
  %1823 = getelementptr inbounds i8, ptr %1818, i64 %1822
  br label %1826

1824:                                             ; preds = %1800
  %1825 = load i64, ptr %1781, align 1
  store i64 %1825, ptr %1782, align 1
  br label %1826

1826:                                             ; preds = %1824, %1802
  %1827 = phi ptr [ %1823, %1802 ], [ %1781, %1824 ]
  %1828 = getelementptr inbounds nuw i8, ptr %1827, i64 8
  %1829 = getelementptr inbounds nuw i8, ptr %1782, i64 8
  %1830 = icmp ugt i64 %1780, 8
  br i1 %1830, label %1831, label %.loopexit137

1831:                                             ; preds = %1826
  %1832 = ptrtoint ptr %1829 to i64
  %1833 = ptrtoint ptr %1828 to i64
  %1834 = sub i64 %1832, %1833
  %1835 = getelementptr i8, ptr %1782, i64 %1780
  %1836 = icmp slt i64 %1834, 16
  br i1 %1836, label %1837, label %1871

1837:                                             ; preds = %1831
  %1838 = add i64 %1780, %.pre-phi244
  %1839 = add i64 %.pre-phi244, 16
  %1840 = tail call i64 @llvm.umax.i64(i64 %1838, i64 %1839)
  %reass.sub189 = sub i64 %1840, %.pre-phi244
  %1841 = add i64 %reass.sub189, -9
  %1842 = lshr i64 %1841, 3
  %1843 = add nuw nsw i64 %1842, 1
  %1844 = icmp ult i64 %1841, 24
  %1845 = icmp ult i64 %1834, 32
  %1846 = or i1 %1844, %1845
  br i1 %1846, label %.preheader472.preheader, label %1847

1847:                                             ; preds = %1837
  %1848 = and i64 %1843, 4611686018427387900
  br label %1849

1849:                                             ; preds = %1849, %1847
  %1850 = phi i64 [ 0, %1847 ], [ %1858, %1849 ]
  %1851 = shl i64 %1850, 3
  %1852 = getelementptr i8, ptr %1829, i64 %1851
  %1853 = getelementptr i8, ptr %1828, i64 %1851
  %1854 = getelementptr i8, ptr %1853, i64 16
  %1855 = load <2 x i64>, ptr %1853, align 1
  %1856 = load <2 x i64>, ptr %1854, align 1
  %1857 = getelementptr i8, ptr %1852, i64 16
  store <2 x i64> %1855, ptr %1852, align 1
  store <2 x i64> %1856, ptr %1857, align 1
  %1858 = add nuw i64 %1850, 4
  %1859 = icmp eq i64 %1858, %1848
  br i1 %1859, label %1860, label %1849, !llvm.loop !188

1860:                                             ; preds = %1849
  %1861 = shl i64 %1848, 3
  %1862 = getelementptr i8, ptr %1829, i64 %1861
  %1863 = getelementptr i8, ptr %1828, i64 %1861
  %1864 = icmp eq i64 %1843, %1848
  br i1 %1864, label %.loopexit137, label %.preheader472.preheader

.preheader472.preheader:                          ; preds = %1860, %1837
  %.ph427 = phi ptr [ %1829, %1837 ], [ %1862, %1860 ]
  %.ph428 = phi ptr [ %1828, %1837 ], [ %1863, %1860 ]
  br label %.preheader472

.preheader472:                                    ; preds = %.preheader472.preheader, %.preheader472
  %1865 = phi ptr [ %1868, %.preheader472 ], [ %.ph427, %.preheader472.preheader ]
  %1866 = phi ptr [ %1869, %.preheader472 ], [ %.ph428, %.preheader472.preheader ]
  %1867 = load i64, ptr %1866, align 1
  store i64 %1867, ptr %1865, align 1
  %1868 = getelementptr inbounds nuw i8, ptr %1865, i64 8
  %1869 = getelementptr inbounds nuw i8, ptr %1866, i64 8
  %1870 = icmp ult ptr %1868, %1835
  br i1 %1870, label %.preheader472, label %.loopexit137, !llvm.loop !189

1871:                                             ; preds = %1831
  %1872 = load <2 x i64>, ptr %1828, align 1, !tbaa !9
  store <2 x i64> %1872, ptr %1829, align 1, !tbaa !9
  %1873 = icmp ult i64 %1780, 25
  br i1 %1873, label %.loopexit137, label %1874

1874:                                             ; preds = %1871
  %1875 = getelementptr inbounds nuw i8, ptr %1782, i64 24
  br label %1876

1876:                                             ; preds = %1876, %1874
  %1877 = phi ptr [ %1875, %1874 ], [ %1884, %1876 ]
  %1878 = phi ptr [ %1828, %1874 ], [ %1882, %1876 ]
  %1879 = getelementptr inbounds nuw i8, ptr %1878, i64 16
  %1880 = load <2 x i64>, ptr %1879, align 1, !tbaa !9
  store <2 x i64> %1880, ptr %1877, align 1, !tbaa !9
  %1881 = getelementptr inbounds nuw i8, ptr %1877, i64 16
  %1882 = getelementptr inbounds nuw i8, ptr %1878, i64 32
  %1883 = load <2 x i64>, ptr %1882, align 1, !tbaa !9
  store <2 x i64> %1883, ptr %1881, align 1, !tbaa !9
  %1884 = getelementptr inbounds nuw i8, ptr %1877, i64 32
  %1885 = icmp ult ptr %1884, %1835
  br i1 %1885, label %1876, label %.loopexit137, !llvm.loop !97

1886:                                             ; preds = %1439
  %1887 = load i64, ptr %1445, align 8
  %1888 = getelementptr inbounds nuw i8, ptr %1445, i64 8
  %1889 = load i64, ptr %1888, align 8
  %1890 = getelementptr inbounds nuw i8, ptr %1445, i64 16
  %1891 = load i64, ptr %1890, align 8
  %1892 = getelementptr inbounds nuw i8, ptr %1441, i64 %1887
  %1893 = add i64 %1889, %1887
  %1894 = load ptr, ptr %7, align 8, !tbaa !38
  %1895 = getelementptr inbounds nuw i8, ptr %1894, i64 %1887
  %1896 = sub i64 0, %1891
  %1897 = getelementptr inbounds i8, ptr %1892, i64 %1896
  %1898 = icmp ugt ptr %1895, %1442
  %1899 = getelementptr inbounds nuw i8, ptr %1441, i64 %1893
  %1900 = icmp ugt ptr %1899, %1426
  %1901 = select i1 %1898, i1 true, i1 %1900
  br i1 %1901, label %1905, label %1902, !prof !101

1902:                                             ; preds = %1886
  %1903 = load <2 x i64>, ptr %1894, align 1, !tbaa !9
  store <2 x i64> %1903, ptr %1441, align 1, !tbaa !9
  %1904 = icmp ugt i64 %1887, 16
  br i1 %1904, label %1907, label %1908, !prof !52

1905:                                             ; preds = %1886
  %1906 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1441, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1445, ptr noundef nonnull %7, ptr noundef %1442, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %.loopexit137

1907:                                             ; preds = %1902
  tail call fastcc void @ZSTD_decompressSequencesLong_bmi2.cold.4(ptr nonnull %1441, ptr nonnull %1894, i64 %1887) #20
  br label %1908

1908:                                             ; preds = %1907, %1902
  store ptr %1895, ptr %7, align 8, !tbaa !38
  %1909 = ptrtoint ptr %1892 to i64
  %1910 = sub i64 %1909, %48
  %1911 = icmp ugt i64 %1891, %1910
  br i1 %1911, label %1912, label %1925

1912:                                             ; preds = %1908
  %1913 = sub i64 %1909, %1427
  %1914 = icmp ugt i64 %1891, %1913
  br i1 %1914, label %.thread, label %1915, !prof !52

1915:                                             ; preds = %1912
  %1916 = ptrtoint ptr %1897 to i64
  %1917 = sub i64 %1916, %48
  %1918 = getelementptr inbounds i8, ptr %30, i64 %1917
  %1919 = add i64 %1917, %1889
  %1920 = icmp sgt i64 %1919, 0
  br i1 %1920, label %1922, label %1921

1921:                                             ; preds = %1915
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1892, ptr align 1 %1918, i64 %1889, i1 false)
  br label %.loopexit137

1922:                                             ; preds = %1915
  %1923 = sub nsw i64 0, %1917
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1892, ptr align 1 %1918, i64 %1923, i1 false)
  %1924 = getelementptr inbounds nuw i8, ptr %1892, i64 %1923
  %.pre245 = ptrtoint ptr %1924 to i64
  br label %1925

1925:                                             ; preds = %1922, %1908
  %.pre-phi246 = phi i64 [ %.pre245, %1922 ], [ %1909, %1908 ]
  %1926 = phi i64 [ %1919, %1922 ], [ %1889, %1908 ]
  %1927 = phi ptr [ %26, %1922 ], [ %1897, %1908 ]
  %1928 = phi ptr [ %1924, %1922 ], [ %1892, %1908 ]
  %1929 = icmp ugt i64 %1891, 15
  br i1 %1929, label %1930, label %1946, !prof !87

1930:                                             ; preds = %1925
  %1931 = getelementptr inbounds nuw i8, ptr %1928, i64 %1926
  %1932 = load <2 x i64>, ptr %1927, align 1, !tbaa !9
  store <2 x i64> %1932, ptr %1928, align 1, !tbaa !9
  %1933 = icmp ult i64 %1926, 17
  br i1 %1933, label %.loopexit137, label %1934

1934:                                             ; preds = %1930
  %1935 = getelementptr inbounds nuw i8, ptr %1928, i64 16
  br label %1936

1936:                                             ; preds = %1936, %1934
  %1937 = phi ptr [ %1935, %1934 ], [ %1944, %1936 ]
  %1938 = phi ptr [ %1927, %1934 ], [ %1942, %1936 ]
  %1939 = getelementptr inbounds nuw i8, ptr %1938, i64 16
  %1940 = load <2 x i64>, ptr %1939, align 1, !tbaa !9
  store <2 x i64> %1940, ptr %1937, align 1, !tbaa !9
  %1941 = getelementptr inbounds nuw i8, ptr %1937, i64 16
  %1942 = getelementptr inbounds nuw i8, ptr %1938, i64 32
  %1943 = load <2 x i64>, ptr %1942, align 1, !tbaa !9
  store <2 x i64> %1943, ptr %1941, align 1, !tbaa !9
  %1944 = getelementptr inbounds nuw i8, ptr %1937, i64 32
  %1945 = icmp ult ptr %1944, %1931
  br i1 %1945, label %1936, label %.loopexit137, !llvm.loop !97

1946:                                             ; preds = %1925
  %1947 = icmp samesign ult i64 %1891, 8
  br i1 %1947, label %1948, label %1970

1948:                                             ; preds = %1946
  %1949 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1891
  %1950 = load i32, ptr %1949, align 4, !tbaa !30
  %1951 = load i8, ptr %1927, align 1, !tbaa !9
  store i8 %1951, ptr %1928, align 1, !tbaa !9
  %1952 = getelementptr inbounds nuw i8, ptr %1927, i64 1
  %1953 = load i8, ptr %1952, align 1, !tbaa !9
  %1954 = getelementptr inbounds nuw i8, ptr %1928, i64 1
  store i8 %1953, ptr %1954, align 1, !tbaa !9
  %1955 = getelementptr inbounds nuw i8, ptr %1927, i64 2
  %1956 = load i8, ptr %1955, align 1, !tbaa !9
  %1957 = getelementptr inbounds nuw i8, ptr %1928, i64 2
  store i8 %1956, ptr %1957, align 1, !tbaa !9
  %1958 = getelementptr inbounds nuw i8, ptr %1927, i64 3
  %1959 = load i8, ptr %1958, align 1, !tbaa !9
  %1960 = getelementptr inbounds nuw i8, ptr %1928, i64 3
  store i8 %1959, ptr %1960, align 1, !tbaa !9
  %1961 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1891
  %1962 = load i32, ptr %1961, align 4, !tbaa !30
  %1963 = zext i32 %1962 to i64
  %1964 = getelementptr inbounds nuw i8, ptr %1927, i64 %1963
  %1965 = getelementptr inbounds nuw i8, ptr %1928, i64 4
  %1966 = load i32, ptr %1964, align 1
  store i32 %1966, ptr %1965, align 1
  %1967 = sext i32 %1950 to i64
  %1968 = sub nsw i64 0, %1967
  %1969 = getelementptr inbounds i8, ptr %1964, i64 %1968
  br label %1972

1970:                                             ; preds = %1946
  %1971 = load i64, ptr %1927, align 1
  store i64 %1971, ptr %1928, align 1
  br label %1972

1972:                                             ; preds = %1970, %1948
  %1973 = phi ptr [ %1969, %1948 ], [ %1927, %1970 ]
  %1974 = getelementptr inbounds nuw i8, ptr %1973, i64 8
  %1975 = getelementptr inbounds nuw i8, ptr %1928, i64 8
  %1976 = icmp ugt i64 %1926, 8
  br i1 %1976, label %1977, label %.loopexit137

1977:                                             ; preds = %1972
  %1978 = ptrtoint ptr %1975 to i64
  %1979 = ptrtoint ptr %1974 to i64
  %1980 = sub i64 %1978, %1979
  %1981 = getelementptr i8, ptr %1928, i64 %1926
  %1982 = icmp slt i64 %1980, 16
  br i1 %1982, label %1983, label %2017

1983:                                             ; preds = %1977
  %1984 = add i64 %1926, %.pre-phi246
  %1985 = add i64 %.pre-phi246, 16
  %1986 = tail call i64 @llvm.umax.i64(i64 %1984, i64 %1985)
  %reass.sub188 = sub i64 %1986, %.pre-phi246
  %1987 = add i64 %reass.sub188, -9
  %1988 = lshr i64 %1987, 3
  %1989 = add nuw nsw i64 %1988, 1
  %1990 = icmp ult i64 %1987, 24
  %1991 = icmp ult i64 %1980, 32
  %1992 = or i1 %1990, %1991
  br i1 %1992, label %.preheader478.preheader, label %1993

1993:                                             ; preds = %1983
  %1994 = and i64 %1989, 4611686018427387900
  br label %1995

1995:                                             ; preds = %1995, %1993
  %1996 = phi i64 [ 0, %1993 ], [ %2004, %1995 ]
  %1997 = shl i64 %1996, 3
  %1998 = getelementptr i8, ptr %1975, i64 %1997
  %1999 = getelementptr i8, ptr %1974, i64 %1997
  %2000 = getelementptr i8, ptr %1999, i64 16
  %2001 = load <2 x i64>, ptr %1999, align 1
  %2002 = load <2 x i64>, ptr %2000, align 1
  %2003 = getelementptr i8, ptr %1998, i64 16
  store <2 x i64> %2001, ptr %1998, align 1
  store <2 x i64> %2002, ptr %2003, align 1
  %2004 = add nuw i64 %1996, 4
  %2005 = icmp eq i64 %2004, %1994
  br i1 %2005, label %2006, label %1995, !llvm.loop !190

2006:                                             ; preds = %1995
  %2007 = shl i64 %1994, 3
  %2008 = getelementptr i8, ptr %1975, i64 %2007
  %2009 = getelementptr i8, ptr %1974, i64 %2007
  %2010 = icmp eq i64 %1989, %1994
  br i1 %2010, label %.loopexit137, label %.preheader478.preheader

.preheader478.preheader:                          ; preds = %2006, %1983
  %.ph432 = phi ptr [ %1975, %1983 ], [ %2008, %2006 ]
  %.ph433 = phi ptr [ %1974, %1983 ], [ %2009, %2006 ]
  br label %.preheader478

.preheader478:                                    ; preds = %.preheader478.preheader, %.preheader478
  %2011 = phi ptr [ %2014, %.preheader478 ], [ %.ph432, %.preheader478.preheader ]
  %2012 = phi ptr [ %2015, %.preheader478 ], [ %.ph433, %.preheader478.preheader ]
  %2013 = load i64, ptr %2012, align 1
  store i64 %2013, ptr %2011, align 1
  %2014 = getelementptr inbounds nuw i8, ptr %2011, i64 8
  %2015 = getelementptr inbounds nuw i8, ptr %2012, i64 8
  %2016 = icmp ult ptr %2014, %1981
  br i1 %2016, label %.preheader478, label %.loopexit137, !llvm.loop !191

2017:                                             ; preds = %1977
  %2018 = load <2 x i64>, ptr %1974, align 1, !tbaa !9
  store <2 x i64> %2018, ptr %1975, align 1, !tbaa !9
  %2019 = icmp ult i64 %1926, 25
  br i1 %2019, label %.loopexit137, label %2020

2020:                                             ; preds = %2017
  %2021 = getelementptr inbounds nuw i8, ptr %1928, i64 24
  br label %2022

2022:                                             ; preds = %2022, %2020
  %2023 = phi ptr [ %2021, %2020 ], [ %2030, %2022 ]
  %2024 = phi ptr [ %1974, %2020 ], [ %2028, %2022 ]
  %2025 = getelementptr inbounds nuw i8, ptr %2024, i64 16
  %2026 = load <2 x i64>, ptr %2025, align 1, !tbaa !9
  store <2 x i64> %2026, ptr %2023, align 1, !tbaa !9
  %2027 = getelementptr inbounds nuw i8, ptr %2023, i64 16
  %2028 = getelementptr inbounds nuw i8, ptr %2024, i64 32
  %2029 = load <2 x i64>, ptr %2028, align 1, !tbaa !9
  store <2 x i64> %2029, ptr %2027, align 1, !tbaa !9
  %2030 = getelementptr inbounds nuw i8, ptr %2023, i64 32
  %2031 = icmp ult ptr %2030, %1981
  br i1 %2031, label %2022, label %.loopexit137, !llvm.loop !97

.loopexit137:                                     ; preds = %2022, %.preheader478, %1936, %1876, %.preheader472, %1790, %2017, %2006, %1972, %1930, %1921, %1905, %1871, %1860, %1826, %1784, %1775, %1759
  %2032 = phi i64 [ %1760, %1759 ], [ %1749, %1775 ], [ %1893, %.preheader478 ], [ %1749, %1826 ], [ %1749, %1784 ], [ %1749, %1871 ], [ %1749, %1860 ], [ %1893, %1936 ], [ %1749, %.preheader472 ], [ %1749, %1876 ], [ %1906, %1905 ], [ %1893, %1921 ], [ %1749, %1790 ], [ %1893, %1972 ], [ %1893, %1930 ], [ %1893, %2017 ], [ %1893, %2006 ], [ %1893, %2022 ]
  %2033 = icmp ult i64 %2032, -119
  %2034 = getelementptr inbounds nuw i8, ptr %1441, i64 %2032
  br i1 %2033, label %2035, label %.thread

2035:                                             ; preds = %.loopexit137, %.loopexit
  %2036 = phi ptr [ %1430, %.loopexit ], [ %1442, %.loopexit137 ]
  %2037 = phi ptr [ %1741, %.loopexit ], [ %2034, %.loopexit137 ]
  %2038 = add i32 %1440, 1
  %2039 = icmp eq i32 %2038, %5
  br i1 %2039, label %.loopexit143, label %1439, !llvm.loop !122

.thread:                                          ; preds = %.loopexit150, %1265, %1116, %.loopexit144, %961, %801, %.loopexit137, %1912, %1766, %.loopexit, %1619, %1459, %.loopexit158, %119, %107, %56, %32
  %2040 = phi i64 [ -20, %119 ], [ -20, %.loopexit158 ], [ -20, %32 ], [ -20, %56 ], [ -20, %107 ], [ -20, %1619 ], [ -70, %1459 ], [ %1739, %.loopexit ], [ %2032, %.loopexit137 ], [ -20, %1766 ], [ -20, %1912 ], [ -20, %961 ], [ %1081, %.loopexit144 ], [ %1385, %.loopexit150 ], [ -20, %1265 ], [ -20, %1116 ], [ -70, %801 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %2085

2041:                                             ; preds = %.loopexit143, %19
  %2042 = phi ptr [ %1438, %.loopexit143 ], [ %22, %19 ]
  %2043 = phi i32 [ %1437, %.loopexit143 ], [ %11, %19 ]
  %2044 = phi ptr [ %1432, %.loopexit143 ], [ %24, %19 ]
  %2045 = phi ptr [ %1433, %.loopexit143 ], [ %1, %19 ]
  %2046 = icmp eq i32 %2043, 2
  br i1 %2046, label %2049, label %2047

2047:                                             ; preds = %2041
  %2048 = ptrtoint ptr %20 to i64
  br label %2065

2049:                                             ; preds = %2041
  %2050 = ptrtoint ptr %2044 to i64
  %2051 = ptrtoint ptr %2042 to i64
  %2052 = sub i64 %2050, %2051
  %2053 = ptrtoint ptr %20 to i64
  %2054 = ptrtoint ptr %2045 to i64
  %2055 = sub i64 %2053, %2054
  %2056 = icmp ugt i64 %2052, %2055
  br i1 %2056, label %2085, label %2057

2057:                                             ; preds = %2049
  %2058 = icmp eq ptr %2045, null
  br i1 %2058, label %2061, label %2059

2059:                                             ; preds = %2057
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2045, ptr align 1 %2042, i64 %2052, i1 false)
  %2060 = getelementptr inbounds nuw i8, ptr %2045, i64 %2052
  br label %2061

2061:                                             ; preds = %2059, %2057
  %2062 = phi ptr [ %2060, %2059 ], [ null, %2057 ]
  %2063 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %2064 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %2065

2065:                                             ; preds = %2061, %2047
  %2066 = phi i64 [ %2048, %2047 ], [ %2053, %2061 ]
  %2067 = phi ptr [ %2042, %2047 ], [ %2063, %2061 ]
  %2068 = phi ptr [ %2044, %2047 ], [ %2064, %2061 ]
  %2069 = phi ptr [ %2045, %2047 ], [ %2062, %2061 ]
  %2070 = ptrtoint ptr %2068 to i64
  %2071 = ptrtoint ptr %2067 to i64
  %2072 = sub i64 %2070, %2071
  %2073 = ptrtoint ptr %2069 to i64
  %2074 = sub i64 %2066, %2073
  %2075 = icmp ugt i64 %2072, %2074
  br i1 %2075, label %2085, label %2076

2076:                                             ; preds = %2065
  %2077 = icmp eq ptr %2069, null
  br i1 %2077, label %2081, label %2078

2078:                                             ; preds = %2076
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2069, ptr align 1 %2067, i64 %2072, i1 false)
  %2079 = getelementptr inbounds nuw i8, ptr %2069, i64 %2072
  %2080 = ptrtoint ptr %2079 to i64
  br label %2081

2081:                                             ; preds = %2078, %2076
  %2082 = phi i64 [ 0, %2076 ], [ %2080, %2078 ]
  %2083 = ptrtoint ptr %1 to i64
  %2084 = sub i64 %2082, %2083
  br label %2085

2085:                                             ; preds = %2081, %2065, %2049, %.thread
  %2086 = phi i64 [ %2084, %2081 ], [ %2040, %.thread ], [ -70, %2065 ], [ -70, %2049 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %2086
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
  br i1 %24, label %197, label %25

25:                                               ; preds = %8
  %26 = ptrtoint ptr %4 to i64
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %9, %28
  br i1 %29, label %197, label %30

30:                                               ; preds = %25
  %31 = icmp ult i64 %9, 8
  br i1 %31, label %32, label %84

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
  br i1 %42, label %.preheader.preheader, label %43

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
  br i1 %63, label %.preheader.preheader, label %64

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
  br i1 %77, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %74, %59, %34
  %.ph = phi ptr [ %14, %34 ], [ %60, %59 ], [ %75, %74 ]
  %.ph37 = phi ptr [ %0, %34 ], [ %61, %59 ], [ %76, %74 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %78 = phi ptr [ %80, %.preheader ], [ %.ph, %.preheader.preheader ]
  %79 = phi ptr [ %82, %.preheader ], [ %.ph37, %.preheader.preheader ]
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 1
  %81 = load i8, ptr %78, align 1, !tbaa !9
  %82 = getelementptr inbounds nuw i8, ptr %79, i64 1
  store i8 %81, ptr %79, align 1, !tbaa !9
  %83 = icmp ult ptr %82, %10
  br i1 %83, label %.preheader, label %.loopexit, !llvm.loop !195

84:                                               ; preds = %30
  %85 = icmp ugt ptr %10, %20
  br i1 %85, label %101, label %86

86:                                               ; preds = %84
  %87 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %87, ptr %0, align 1, !tbaa !9
  %88 = icmp ult i64 %9, 17
  br i1 %88, label %.loopexit, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi ptr [ %90, %89 ], [ %99, %91 ]
  %93 = phi ptr [ %14, %89 ], [ %97, %91 ]
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %95 = load <2 x i64>, ptr %94, align 1, !tbaa !9
  store <2 x i64> %95, ptr %92, align 1, !tbaa !9
  %96 = getelementptr inbounds nuw i8, ptr %92, i64 16
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %98 = load <2 x i64>, ptr %97, align 1, !tbaa !9
  store <2 x i64> %98, ptr %96, align 1, !tbaa !9
  %99 = getelementptr inbounds nuw i8, ptr %92, i64 32
  %100 = icmp ult ptr %99, %10
  br i1 %100, label %91, label %.loopexit, !llvm.loop !97

101:                                              ; preds = %84
  %102 = icmp ugt ptr %0, %20
  br i1 %102, label %122, label %103

103:                                              ; preds = %101
  %104 = ptrtoint ptr %20 to i64
  %105 = sub i64 %104, %22
  %106 = getelementptr inbounds i8, ptr %0, i64 %105
  %107 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %107, ptr %0, align 1, !tbaa !9
  %108 = icmp ult i64 %105, 17
  br i1 %108, label %.loopexit15, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %111

111:                                              ; preds = %111, %109
  %112 = phi ptr [ %110, %109 ], [ %119, %111 ]
  %113 = phi ptr [ %14, %109 ], [ %117, %111 ]
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %115 = load <2 x i64>, ptr %114, align 1, !tbaa !9
  store <2 x i64> %115, ptr %112, align 1, !tbaa !9
  %116 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %117 = getelementptr inbounds nuw i8, ptr %113, i64 32
  %118 = load <2 x i64>, ptr %117, align 1, !tbaa !9
  store <2 x i64> %118, ptr %116, align 1, !tbaa !9
  %119 = getelementptr inbounds nuw i8, ptr %112, i64 32
  %120 = icmp ult ptr %119, %20
  br i1 %120, label %111, label %.loopexit15, !llvm.loop !97

.loopexit15:                                      ; preds = %111, %103
  %121 = getelementptr inbounds i8, ptr %14, i64 %105
  br label %122

122:                                              ; preds = %.loopexit15, %101
  %123 = phi ptr [ %0, %101 ], [ %106, %.loopexit15 ]
  %124 = phi ptr [ %14, %101 ], [ %121, %.loopexit15 ]
  %125 = icmp ult ptr %123, %10
  br i1 %125, label %126, label %.loopexit

126:                                              ; preds = %122
  %127 = add i64 %21, -32
  %128 = tail call i64 @llvm.usub.sat.i64(i64 %127, i64 %22)
  %129 = sub i64 %9, %128
  %130 = icmp ult i64 %129, 4
  %131 = sub i64 %22, %27
  %132 = icmp ult i64 %131, 32
  %133 = or i1 %130, %132
  br i1 %133, label %.preheader39.preheader, label %134

134:                                              ; preds = %126
  %135 = icmp ult i64 %129, 32
  br i1 %135, label %155, label %136

136:                                              ; preds = %134
  %137 = and i64 %129, -32
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %146, %138 ]
  %140 = getelementptr i8, ptr %124, i64 %139
  %141 = getelementptr i8, ptr %123, i64 %139
  %142 = getelementptr i8, ptr %140, i64 16
  %143 = load <16 x i8>, ptr %140, align 1, !tbaa !9
  %144 = load <16 x i8>, ptr %142, align 1, !tbaa !9
  %145 = getelementptr i8, ptr %141, i64 16
  store <16 x i8> %143, ptr %141, align 1, !tbaa !9
  store <16 x i8> %144, ptr %145, align 1, !tbaa !9
  %146 = add nuw i64 %139, 32
  %147 = icmp eq i64 %146, %137
  br i1 %147, label %148, label %138, !llvm.loop !196

148:                                              ; preds = %138
  %149 = icmp eq i64 %129, %137
  br i1 %149, label %.loopexit, label %150

150:                                              ; preds = %148
  %151 = getelementptr i8, ptr %124, i64 %137
  %152 = getelementptr i8, ptr %123, i64 %137
  %153 = and i64 %129, 28
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %.preheader39.preheader, label %155

155:                                              ; preds = %150, %134
  %156 = phi i64 [ %137, %150 ], [ 0, %134 ]
  %157 = and i64 %129, -4
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i64 [ %156, %155 ], [ %163, %158 ]
  %160 = getelementptr i8, ptr %124, i64 %159
  %161 = getelementptr i8, ptr %123, i64 %159
  %162 = load <4 x i8>, ptr %160, align 1, !tbaa !9
  store <4 x i8> %162, ptr %161, align 1, !tbaa !9
  %163 = add nuw i64 %159, 4
  %164 = icmp eq i64 %163, %157
  br i1 %164, label %165, label %158, !llvm.loop !197

165:                                              ; preds = %158
  %166 = getelementptr i8, ptr %124, i64 %157
  %167 = getelementptr i8, ptr %123, i64 %157
  %168 = icmp eq i64 %129, %157
  br i1 %168, label %.loopexit, label %.preheader39.preheader

.preheader39.preheader:                           ; preds = %165, %150, %126
  %.ph38 = phi ptr [ %124, %126 ], [ %151, %150 ], [ %166, %165 ]
  %.ph39 = phi ptr [ %123, %126 ], [ %152, %150 ], [ %167, %165 ]
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.preheader, %.preheader39
  %169 = phi ptr [ %171, %.preheader39 ], [ %.ph38, %.preheader39.preheader ]
  %170 = phi ptr [ %173, %.preheader39 ], [ %.ph39, %.preheader39.preheader ]
  %171 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %172 = load i8, ptr %169, align 1, !tbaa !9
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 1
  store i8 %172, ptr %170, align 1, !tbaa !9
  %174 = icmp ult ptr %173, %10
  br i1 %174, label %.preheader39, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %91, %.preheader39, %.preheader, %165, %148, %122, %86, %74, %57, %32
  store ptr %15, ptr %3, align 8, !tbaa !38
  %175 = ptrtoint ptr %10 to i64
  %176 = ptrtoint ptr %5 to i64
  %177 = sub i64 %175, %176
  %178 = icmp ugt i64 %17, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %.loopexit
  %180 = ptrtoint ptr %6 to i64
  %181 = sub i64 %175, %180
  %182 = icmp ugt i64 %17, %181
  br i1 %182, label %197, label %183

183:                                              ; preds = %179
  %184 = ptrtoint ptr %19 to i64
  %185 = sub i64 %184, %176
  %186 = getelementptr inbounds i8, ptr %7, i64 %185
  %187 = add nsw i64 %185, %12
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %186, i64 %12, i1 false)
  br label %197

190:                                              ; preds = %183
  %191 = sub nsw i64 0, %185
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %186, i64 %191, i1 false)
  %192 = getelementptr inbounds nuw i8, ptr %10, i64 %191
  br label %193

193:                                              ; preds = %190, %.loopexit
  %194 = phi i64 [ %187, %190 ], [ %12, %.loopexit ]
  %195 = phi ptr [ %5, %190 ], [ %19, %.loopexit ]
  %196 = phi ptr [ %192, %190 ], [ %10, %.loopexit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %196, ptr noundef nonnull %20, ptr noundef %195, i64 noundef %194)
  br label %197

197:                                              ; preds = %193, %189, %179, %25, %8
  %198 = phi i64 [ %13, %189 ], [ %13, %193 ], [ -70, %8 ], [ -20, %25 ], [ -20, %179 ]
  ret i64 %198
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_safecopy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #14 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %7, %5
  %9 = getelementptr i8, ptr %0, i64 %3
  %10 = icmp ult i64 %3, 8
  br i1 %10, label %11, label %62

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
  br i1 %20, label %.preheader.preheader, label %21

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
  br i1 %41, label %.preheader.preheader, label %42

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
  br i1 %55, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %52, %37, %13
  %.ph = phi ptr [ %2, %13 ], [ %38, %37 ], [ %53, %52 ]
  %.ph51 = phi ptr [ %0, %13 ], [ %39, %37 ], [ %54, %52 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %56 = phi ptr [ %58, %.preheader ], [ %.ph, %.preheader.preheader ]
  %57 = phi ptr [ %60, %.preheader ], [ %.ph51, %.preheader.preheader ]
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %59 = load i8, ptr %56, align 1, !tbaa !9
  %60 = getelementptr inbounds nuw i8, ptr %57, i64 1
  store i8 %59, ptr %57, align 1, !tbaa !9
  %61 = icmp ult ptr %60, %9
  br i1 %61, label %.preheader, label %.loopexit, !llvm.loop !201

62:                                               ; preds = %4
  %63 = icmp ult i64 %8, 8
  br i1 %63, label %64, label %86

64:                                               ; preds = %62
  %65 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %8
  %66 = load i32, ptr %65, align 4, !tbaa !30
  %67 = load i8, ptr %2, align 1, !tbaa !9
  store i8 %67, ptr %0, align 1, !tbaa !9
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %69, ptr %70, align 1, !tbaa !9
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !9
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %72, ptr %73, align 1, !tbaa !9
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %75, ptr %76, align 1, !tbaa !9
  %77 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %8
  %78 = load i32, ptr %77, align 4, !tbaa !30
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %82 = load i32, ptr %80, align 1
  store i32 %82, ptr %81, align 1
  %83 = sext i32 %66 to i64
  %84 = sub nsw i64 0, %83
  %85 = getelementptr inbounds i8, ptr %80, i64 %84
  br label %88

86:                                               ; preds = %62
  %87 = load i64, ptr %2, align 1
  store i64 %87, ptr %0, align 1
  br label %88

88:                                               ; preds = %86, %64
  %89 = phi ptr [ %85, %64 ], [ %2, %86 ]
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %92 = add i64 %3, -8
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %90 to i64
  %95 = icmp ugt ptr %9, %1
  br i1 %95, label %149, label %96

96:                                               ; preds = %88
  %97 = sub i64 %93, %94
  %98 = icmp slt i64 %97, 16
  br i1 %98, label %99, label %134

99:                                               ; preds = %96
  %100 = add i64 %92, %93
  %101 = add i64 %93, 8
  %102 = tail call i64 @llvm.umax.i64(i64 %100, i64 %101)
  %103 = xor i64 %93, -1
  %104 = add i64 %102, %103
  %105 = lshr i64 %104, 3
  %106 = add nuw nsw i64 %105, 1
  %107 = icmp ult i64 %104, 24
  %108 = icmp ult i64 %97, 32
  %109 = or i1 %107, %108
  br i1 %109, label %.preheader14.preheader, label %110

110:                                              ; preds = %99
  %111 = and i64 %106, 4611686018427387900
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i64 [ 0, %110 ], [ %121, %112 ]
  %114 = shl i64 %113, 3
  %115 = getelementptr i8, ptr %91, i64 %114
  %116 = getelementptr i8, ptr %90, i64 %114
  %117 = getelementptr i8, ptr %116, i64 16
  %118 = load <2 x i64>, ptr %116, align 1
  %119 = load <2 x i64>, ptr %117, align 1
  %120 = getelementptr i8, ptr %115, i64 16
  store <2 x i64> %118, ptr %115, align 1
  store <2 x i64> %119, ptr %120, align 1
  %121 = add nuw i64 %113, 4
  %122 = icmp eq i64 %121, %111
  br i1 %122, label %123, label %112, !llvm.loop !202

123:                                              ; preds = %112
  %124 = shl i64 %111, 3
  %125 = getelementptr i8, ptr %91, i64 %124
  %126 = getelementptr i8, ptr %90, i64 %124
  %127 = icmp eq i64 %106, %111
  br i1 %127, label %.loopexit, label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %123, %99
  %.ph58 = phi ptr [ %91, %99 ], [ %125, %123 ]
  %.ph59 = phi ptr [ %90, %99 ], [ %126, %123 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %128 = phi ptr [ %131, %.preheader14 ], [ %.ph58, %.preheader14.preheader ]
  %129 = phi ptr [ %132, %.preheader14 ], [ %.ph59, %.preheader14.preheader ]
  %130 = load i64, ptr %129, align 1
  store i64 %130, ptr %128, align 1
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %133 = icmp ult ptr %131, %9
  br i1 %133, label %.preheader14, label %.loopexit, !llvm.loop !203

134:                                              ; preds = %96
  %135 = load <2 x i64>, ptr %90, align 1, !tbaa !9
  store <2 x i64> %135, ptr %91, align 1, !tbaa !9
  %136 = icmp ult i64 %92, 17
  br i1 %136, label %.loopexit, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi ptr [ %138, %137 ], [ %147, %139 ]
  %141 = phi ptr [ %90, %137 ], [ %145, %139 ]
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 16
  %143 = load <2 x i64>, ptr %142, align 1, !tbaa !9
  store <2 x i64> %143, ptr %140, align 1, !tbaa !9
  %144 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 32
  %146 = load <2 x i64>, ptr %145, align 1, !tbaa !9
  store <2 x i64> %146, ptr %144, align 1, !tbaa !9
  %147 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %148 = icmp ult ptr %147, %9
  br i1 %148, label %139, label %.loopexit, !llvm.loop !97

149:                                              ; preds = %88
  %150 = icmp ugt ptr %91, %1
  br i1 %150, label %206, label %151

151:                                              ; preds = %149
  %152 = sub i64 %6, %93
  %153 = sub i64 %93, %94
  %154 = getelementptr inbounds i8, ptr %91, i64 %152
  %155 = icmp slt i64 %153, 16
  br i1 %155, label %156, label %190

156:                                              ; preds = %151
  %157 = add i64 %93, 8
  %158 = tail call i64 @llvm.umax.i64(i64 %6, i64 %157)
  %159 = xor i64 %93, -1
  %160 = add i64 %158, %159
  %161 = lshr i64 %160, 3
  %162 = add nuw nsw i64 %161, 1
  %163 = icmp ult i64 %160, 24
  %164 = icmp ult i64 %153, 32
  %165 = or i1 %163, %164
  br i1 %165, label %.preheader10.preheader, label %166

166:                                              ; preds = %156
  %167 = and i64 %162, 4611686018427387900
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi i64 [ 0, %166 ], [ %177, %168 ]
  %170 = shl i64 %169, 3
  %171 = getelementptr i8, ptr %91, i64 %170
  %172 = getelementptr i8, ptr %90, i64 %170
  %173 = getelementptr i8, ptr %172, i64 16
  %174 = load <2 x i64>, ptr %172, align 1
  %175 = load <2 x i64>, ptr %173, align 1
  %176 = getelementptr i8, ptr %171, i64 16
  store <2 x i64> %174, ptr %171, align 1
  store <2 x i64> %175, ptr %176, align 1
  %177 = add nuw i64 %169, 4
  %178 = icmp eq i64 %177, %167
  br i1 %178, label %179, label %168, !llvm.loop !204

179:                                              ; preds = %168
  %180 = shl i64 %167, 3
  %181 = getelementptr i8, ptr %91, i64 %180
  %182 = getelementptr i8, ptr %90, i64 %180
  %183 = icmp eq i64 %162, %167
  br i1 %183, label %.loopexit17, label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %179, %156
  %.ph55 = phi ptr [ %91, %156 ], [ %181, %179 ]
  %.ph56 = phi ptr [ %90, %156 ], [ %182, %179 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %184 = phi ptr [ %187, %.preheader10 ], [ %.ph55, %.preheader10.preheader ]
  %185 = phi ptr [ %188, %.preheader10 ], [ %.ph56, %.preheader10.preheader ]
  %186 = load i64, ptr %185, align 1
  store i64 %186, ptr %184, align 1
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 8
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 8
  %189 = icmp ult ptr %187, %1
  br i1 %189, label %.preheader10, label %.loopexit17, !llvm.loop !205

190:                                              ; preds = %151
  %191 = load <2 x i64>, ptr %90, align 1, !tbaa !9
  store <2 x i64> %191, ptr %91, align 1, !tbaa !9
  %192 = icmp ult i64 %152, 17
  br i1 %192, label %.loopexit17, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %195

195:                                              ; preds = %195, %193
  %196 = phi ptr [ %194, %193 ], [ %203, %195 ]
  %197 = phi ptr [ %90, %193 ], [ %201, %195 ]
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 16
  %199 = load <2 x i64>, ptr %198, align 1, !tbaa !9
  store <2 x i64> %199, ptr %196, align 1, !tbaa !9
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %201 = getelementptr inbounds nuw i8, ptr %197, i64 32
  %202 = load <2 x i64>, ptr %201, align 1, !tbaa !9
  store <2 x i64> %202, ptr %200, align 1, !tbaa !9
  %203 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %204 = icmp ult ptr %203, %1
  br i1 %204, label %195, label %.loopexit17, !llvm.loop !97

.loopexit17:                                      ; preds = %195, %.preheader10, %190, %179
  %205 = getelementptr inbounds i8, ptr %90, i64 %152
  br label %206

206:                                              ; preds = %.loopexit17, %149
  %207 = phi ptr [ %91, %149 ], [ %154, %.loopexit17 ]
  %208 = phi ptr [ %90, %149 ], [ %205, %.loopexit17 ]
  %209 = icmp ult ptr %207, %9
  br i1 %209, label %210, label %.loopexit

210:                                              ; preds = %206
  %211 = add i64 %3, %7
  %212 = tail call i64 @llvm.umax.i64(i64 %93, i64 %6)
  %213 = sub i64 %211, %212
  %214 = icmp ult i64 %213, 4
  %215 = sub i64 %93, %94
  %216 = icmp ult i64 %215, 32
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %.preheader6.preheader, label %218

218:                                              ; preds = %210
  %219 = icmp ult i64 %213, 32
  br i1 %219, label %239, label %220

220:                                              ; preds = %218
  %221 = and i64 %213, -32
  br label %222

222:                                              ; preds = %222, %220
  %223 = phi i64 [ 0, %220 ], [ %230, %222 ]
  %224 = getelementptr i8, ptr %208, i64 %223
  %225 = getelementptr i8, ptr %207, i64 %223
  %226 = getelementptr i8, ptr %224, i64 16
  %227 = load <16 x i8>, ptr %224, align 1, !tbaa !9
  %228 = load <16 x i8>, ptr %226, align 1, !tbaa !9
  %229 = getelementptr i8, ptr %225, i64 16
  store <16 x i8> %227, ptr %225, align 1, !tbaa !9
  store <16 x i8> %228, ptr %229, align 1, !tbaa !9
  %230 = add nuw i64 %223, 32
  %231 = icmp eq i64 %230, %221
  br i1 %231, label %232, label %222, !llvm.loop !206

232:                                              ; preds = %222
  %233 = icmp eq i64 %213, %221
  br i1 %233, label %.loopexit, label %234

234:                                              ; preds = %232
  %235 = getelementptr i8, ptr %208, i64 %221
  %236 = getelementptr i8, ptr %207, i64 %221
  %237 = and i64 %213, 28
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %.preheader6.preheader, label %239

239:                                              ; preds = %234, %218
  %240 = phi i64 [ %221, %234 ], [ 0, %218 ]
  %241 = and i64 %213, -4
  br label %242

242:                                              ; preds = %242, %239
  %243 = phi i64 [ %240, %239 ], [ %247, %242 ]
  %244 = getelementptr i8, ptr %208, i64 %243
  %245 = getelementptr i8, ptr %207, i64 %243
  %246 = load <4 x i8>, ptr %244, align 1, !tbaa !9
  store <4 x i8> %246, ptr %245, align 1, !tbaa !9
  %247 = add nuw i64 %243, 4
  %248 = icmp eq i64 %247, %241
  br i1 %248, label %249, label %242, !llvm.loop !207

249:                                              ; preds = %242
  %250 = getelementptr i8, ptr %208, i64 %241
  %251 = getelementptr i8, ptr %207, i64 %241
  %252 = icmp eq i64 %213, %241
  br i1 %252, label %.loopexit, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %249, %234, %210
  %.ph52 = phi ptr [ %208, %210 ], [ %235, %234 ], [ %250, %249 ]
  %.ph53 = phi ptr [ %207, %210 ], [ %236, %234 ], [ %251, %249 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %253 = phi ptr [ %255, %.preheader6 ], [ %.ph52, %.preheader6.preheader ]
  %254 = phi ptr [ %257, %.preheader6 ], [ %.ph53, %.preheader6.preheader ]
  %255 = getelementptr inbounds nuw i8, ptr %253, i64 1
  %256 = load i8, ptr %253, align 1, !tbaa !9
  %257 = getelementptr inbounds nuw i8, ptr %254, i64 1
  store i8 %256, ptr %254, align 1, !tbaa !9
  %258 = icmp ult ptr %257, %9
  br i1 %258, label %.preheader6, label %.loopexit, !llvm.loop !208

.loopexit:                                        ; preds = %139, %.preheader14, %.preheader6, %.preheader, %249, %232, %206, %134, %123, %52, %35, %11
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
  br i1 %24, label %186, label %25

25:                                               ; preds = %9
  %26 = ptrtoint ptr %5 to i64
  %27 = ptrtoint ptr %15 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %186, label %30

30:                                               ; preds = %25
  %31 = icmp ugt ptr %0, %15
  %32 = icmp ult ptr %0, %16
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %186, label %34

34:                                               ; preds = %30
  %35 = sub i64 %22, %27
  %36 = icmp ult i64 %10, 8
  %37 = icmp sgt i64 %35, -8
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %90

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
  br i1 %48, label %.preheader.preheader, label %49

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
  br i1 %69, label %.preheader.preheader, label %70

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
  br i1 %83, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %80, %65, %41
  %.ph = phi ptr [ %0, %41 ], [ %66, %65 ], [ %81, %80 ]
  %.ph27 = phi ptr [ %15, %41 ], [ %67, %65 ], [ %82, %80 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %84 = phi ptr [ %88, %.preheader ], [ %.ph, %.preheader.preheader ]
  %85 = phi ptr [ %86, %.preheader ], [ %.ph27, %.preheader.preheader ]
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 1
  %87 = load i8, ptr %85, align 1, !tbaa !9
  %88 = getelementptr inbounds nuw i8, ptr %84, i64 1
  store i8 %87, ptr %84, align 1, !tbaa !9
  %89 = icmp ult ptr %88, %11
  br i1 %89, label %.preheader, label %.loopexit, !llvm.loop !211

90:                                               ; preds = %34
  %91 = icmp sgt i64 %10, 31
  %92 = icmp samesign ult i64 %35, -16
  %93 = and i1 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %11, i64 -32
  %96 = add nsw i64 %10, -32
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = load <2 x i64>, ptr %15, align 1, !tbaa !9
  store <2 x i64> %98, ptr %0, align 1, !tbaa !9
  %99 = icmp samesign ult i64 %10, 49
  br i1 %99, label %.loopexit12, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi ptr [ %101, %100 ], [ %110, %102 ]
  %104 = phi ptr [ %15, %100 ], [ %108, %102 ]
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 16
  %106 = load <2 x i64>, ptr %105, align 1, !tbaa !9
  store <2 x i64> %106, ptr %103, align 1, !tbaa !9
  %107 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %108 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %109 = load <2 x i64>, ptr %108, align 1, !tbaa !9
  store <2 x i64> %109, ptr %107, align 1, !tbaa !9
  %110 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %111 = icmp ult ptr %110, %97
  br i1 %111, label %102, label %.loopexit12, !llvm.loop !97

.loopexit12:                                      ; preds = %102, %94
  %112 = getelementptr inbounds nuw i8, ptr %15, i64 %96
  %.pre = ptrtoint ptr %95 to i64
  %.pre16 = ptrtoint ptr %112 to i64
  %.pre18 = sub i64 %.pre, %.pre16
  %113 = icmp ult i64 %.pre18, 32
  br label %114

114:                                              ; preds = %.loopexit12, %90
  %.pre-phi19 = phi i1 [ %113, %.loopexit12 ], [ false, %90 ]
  %.pre-phi = phi i64 [ %.pre, %.loopexit12 ], [ %22, %90 ]
  %115 = phi ptr [ %95, %.loopexit12 ], [ %0, %90 ]
  %116 = phi ptr [ %112, %.loopexit12 ], [ %15, %90 ]
  %117 = add i64 %10, %22
  %118 = add nuw i64 %.pre-phi, 1
  %119 = tail call i64 @llvm.umax.i64(i64 %117, i64 %118)
  %120 = sub i64 %119, %.pre-phi
  %121 = icmp ult i64 %120, 4
  %122 = select i1 %121, i1 true, i1 %.pre-phi19
  br i1 %122, label %.preheader33.preheader, label %123

123:                                              ; preds = %114
  %124 = icmp ult i64 %120, 32
  br i1 %124, label %144, label %125

125:                                              ; preds = %123
  %126 = and i64 %120, -32
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i64 [ 0, %125 ], [ %135, %127 ]
  %129 = getelementptr i8, ptr %115, i64 %128
  %130 = getelementptr i8, ptr %116, i64 %128
  %131 = getelementptr i8, ptr %130, i64 16
  %132 = load <16 x i8>, ptr %130, align 1, !tbaa !9
  %133 = load <16 x i8>, ptr %131, align 1, !tbaa !9
  %134 = getelementptr i8, ptr %129, i64 16
  store <16 x i8> %132, ptr %129, align 1, !tbaa !9
  store <16 x i8> %133, ptr %134, align 1, !tbaa !9
  %135 = add nuw i64 %128, 32
  %136 = icmp eq i64 %135, %126
  br i1 %136, label %137, label %127, !llvm.loop !212

137:                                              ; preds = %127
  %138 = icmp eq i64 %120, %126
  br i1 %138, label %.loopexit, label %139

139:                                              ; preds = %137
  %140 = getelementptr i8, ptr %115, i64 %126
  %141 = getelementptr i8, ptr %116, i64 %126
  %142 = and i64 %120, 28
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %.preheader33.preheader, label %144

144:                                              ; preds = %139, %123
  %145 = phi i64 [ %126, %139 ], [ 0, %123 ]
  %146 = and i64 %120, -4
  br label %147

147:                                              ; preds = %147, %144
  %148 = phi i64 [ %145, %144 ], [ %152, %147 ]
  %149 = getelementptr i8, ptr %115, i64 %148
  %150 = getelementptr i8, ptr %116, i64 %148
  %151 = load <4 x i8>, ptr %150, align 1, !tbaa !9
  store <4 x i8> %151, ptr %149, align 1, !tbaa !9
  %152 = add nuw i64 %148, 4
  %153 = icmp eq i64 %152, %146
  br i1 %153, label %154, label %147, !llvm.loop !213

154:                                              ; preds = %147
  %155 = getelementptr i8, ptr %115, i64 %146
  %156 = getelementptr i8, ptr %116, i64 %146
  %157 = icmp eq i64 %120, %146
  br i1 %157, label %.loopexit, label %.preheader33.preheader

.preheader33.preheader:                           ; preds = %154, %139, %114
  %.ph28 = phi ptr [ %115, %114 ], [ %140, %139 ], [ %155, %154 ]
  %.ph29 = phi ptr [ %116, %114 ], [ %141, %139 ], [ %156, %154 ]
  br label %.preheader33

.preheader33:                                     ; preds = %.preheader33.preheader, %.preheader33
  %158 = phi ptr [ %162, %.preheader33 ], [ %.ph28, %.preheader33.preheader ]
  %159 = phi ptr [ %160, %.preheader33 ], [ %.ph29, %.preheader33.preheader ]
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 1
  %161 = load i8, ptr %159, align 1, !tbaa !9
  %162 = getelementptr inbounds nuw i8, ptr %158, i64 1
  store i8 %161, ptr %158, align 1, !tbaa !9
  %163 = icmp ult ptr %162, %11
  br i1 %163, label %.preheader33, label %.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %.preheader33, %.preheader, %154, %137, %80, %63, %39
  store ptr %16, ptr %4, align 8, !tbaa !38
  %164 = ptrtoint ptr %11 to i64
  %165 = ptrtoint ptr %6 to i64
  %166 = sub i64 %164, %165
  %167 = icmp ugt i64 %18, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %.loopexit
  %169 = ptrtoint ptr %7 to i64
  %170 = sub i64 %164, %169
  %171 = icmp ugt i64 %18, %170
  br i1 %171, label %186, label %172

172:                                              ; preds = %168
  %173 = ptrtoint ptr %20 to i64
  %174 = sub i64 %173, %165
  %175 = getelementptr inbounds i8, ptr %8, i64 %174
  %176 = add nsw i64 %174, %13
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %175, i64 %13, i1 false)
  br label %186

179:                                              ; preds = %172
  %180 = sub nsw i64 0, %174
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %175, i64 %180, i1 false)
  %181 = getelementptr inbounds nuw i8, ptr %11, i64 %180
  br label %182

182:                                              ; preds = %179, %.loopexit
  %183 = phi i64 [ %176, %179 ], [ %13, %.loopexit ]
  %184 = phi ptr [ %181, %179 ], [ %11, %.loopexit ]
  %185 = phi ptr [ %6, %179 ], [ %20, %.loopexit ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %184, ptr noundef %2, ptr noundef %185, i64 noundef %183)
  br label %186

186:                                              ; preds = %182, %178, %168, %30, %25, %9
  %187 = phi i64 [ %14, %178 ], [ %14, %182 ], [ -70, %9 ], [ -20, %25 ], [ -70, %30 ], [ -20, %168 ]
  ret i64 %187
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
  br i1 %24, label %1425, label %25

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
  %reass.sub226 = sub nsw i32 %104, %106
  %107 = add nsw i32 %reass.sub226, 41
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
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !123
  %268 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %269 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %270 = ptrtoint ptr %19 to i64
  %271 = ptrtoint ptr %21 to i64
  %272 = add i64 %270, 16
  %273 = ptrtoint ptr %3 to i64
  br label %274

274:                                              ; preds = %683, %262
  %275 = phi ptr [ %263, %262 ], [ %508, %683 ]
  %276 = phi i32 [ %264, %262 ], [ %509, %683 ]
  %277 = phi i64 [ %265, %262 ], [ %510, %683 ]
  %278 = phi i64 [ %37, %262 ], [ %366, %683 ]
  %279 = phi i64 [ %33, %262 ], [ %364, %683 ]
  %280 = phi i64 [ %30, %262 ], [ %365, %683 ]
  %281 = phi i64 [ %231, %262 ], [ %515, %683 ]
  %282 = phi i64 [ %180, %262 ], [ %514, %683 ]
  %283 = phi i64 [ %134, %262 ], [ %513, %683 ]
  %284 = phi i32 [ %5, %262 ], [ %684, %683 ]
  %285 = phi ptr [ %1, %262 ], [ %678, %683 ]
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
  br i1 %501, label %686, label %507

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
  br i1 %620, label %621, label %661

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
  %reass.sub = sub i64 %629, %630
  %631 = add i64 %reass.sub, -9
  %632 = lshr i64 %631, 3
  %633 = add nuw nsw i64 %632, 1
  %634 = icmp ult i64 %631, 24
  %635 = icmp ult i64 %618, 32
  %636 = or i1 %634, %635
  br i1 %636, label %.preheader762.preheader, label %637

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
  br i1 %654, label %.loopexit105, label %.preheader762.preheader

.preheader762.preheader:                          ; preds = %650, %621
  %.ph743 = phi ptr [ %613, %621 ], [ %652, %650 ]
  %.ph744 = phi ptr [ %612, %621 ], [ %653, %650 ]
  br label %.preheader762

.preheader762:                                    ; preds = %.preheader762.preheader, %.preheader762
  %655 = phi ptr [ %658, %.preheader762 ], [ %.ph743, %.preheader762.preheader ]
  %656 = phi ptr [ %659, %.preheader762 ], [ %.ph744, %.preheader762.preheader ]
  %657 = load i64, ptr %656, align 1
  store i64 %657, ptr %655, align 1
  %658 = getelementptr inbounds nuw i8, ptr %655, i64 8
  %659 = getelementptr inbounds nuw i8, ptr %656, i64 8
  %660 = icmp ult ptr %658, %619
  br i1 %660, label %.preheader762, label %.loopexit105, !llvm.loop !219

661:                                              ; preds = %615
  %662 = load <2 x i64>, ptr %612, align 1, !tbaa !9
  store <2 x i64> %662, ptr %613, align 1, !tbaa !9
  %663 = icmp ult i64 %566, 25
  br i1 %663, label %.loopexit105, label %664

664:                                              ; preds = %661
  %665 = getelementptr inbounds nuw i8, ptr %565, i64 24
  br label %666

666:                                              ; preds = %666, %664
  %667 = phi ptr [ %665, %664 ], [ %674, %666 ]
  %668 = phi ptr [ %612, %664 ], [ %672, %666 ]
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 16
  %670 = load <2 x i64>, ptr %669, align 1, !tbaa !9
  store <2 x i64> %670, ptr %667, align 1, !tbaa !9
  %671 = getelementptr inbounds nuw i8, ptr %667, i64 16
  %672 = getelementptr inbounds nuw i8, ptr %668, i64 32
  %673 = load <2 x i64>, ptr %672, align 1, !tbaa !9
  store <2 x i64> %673, ptr %671, align 1, !tbaa !9
  %674 = getelementptr inbounds nuw i8, ptr %667, i64 32
  %675 = icmp ult ptr %674, %619
  br i1 %675, label %666, label %.loopexit105, !llvm.loop !97

.loopexit105:                                     ; preds = %666, %.preheader762, %574, %661, %650, %610, %568, %559, %527
  %676 = phi i64 [ %528, %527 ], [ %518, %559 ], [ %518, %610 ], [ %518, %568 ], [ %518, %661 ], [ %518, %650 ], [ %518, %574 ], [ %518, %.preheader762 ], [ %518, %666 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %677 = icmp ult i64 %676, -119
  %678 = getelementptr inbounds nuw i8, ptr %285, i64 %676
  br i1 %677, label %679, label %.loopexit96

679:                                              ; preds = %.loopexit105
  %680 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %284, i32 -1)
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !86
  br i1 %681, label %682, label %683, !prof !109, !nosanitize !86

682:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !86
  unreachable, !nosanitize !86

683:                                              ; preds = %679
  %684 = extractvalue { i32, i1 } %680, 0, !nosanitize !86
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %.loopexit97, label %274, !llvm.loop !130

686:                                              ; preds = %494
  %687 = icmp sgt i32 %284, 0
  br i1 %687, label %.loopexit109, label %.loopexit96

.loopexit109:                                     ; preds = %502, %686
  %688 = phi ptr [ %495, %686 ], [ %414, %502 ]
  %689 = phi i32 [ %496, %686 ], [ %429, %502 ]
  %690 = phi i64 [ %497, %686 ], [ %416, %502 ]
  %691 = phi i64 [ %453, %686 ], [ %281, %502 ]
  %692 = phi i64 [ %464, %686 ], [ %282, %502 ]
  %693 = phi i64 [ %442, %686 ], [ %283, %502 ]
  %694 = phi ptr [ %498, %686 ], [ %503, %502 ]
  %695 = phi ptr [ %500, %686 ], [ %505, %502 ]
  %696 = ptrtoint ptr %695 to i64
  %697 = ptrtoint ptr %694 to i64
  %698 = sub i64 %696, %697
  %699 = icmp eq ptr %695, %694
  br i1 %699, label %835, label %700

700:                                              ; preds = %.loopexit109
  %701 = ptrtoint ptr %13 to i64
  %702 = ptrtoint ptr %285 to i64
  %703 = sub i64 %701, %702
  %704 = icmp ugt i64 %698, %703
  br i1 %704, label %.loopexit96, label %705

705:                                              ; preds = %700
  %706 = sub i64 %702, %697
  %707 = getelementptr inbounds nuw i8, ptr %285, i64 %698
  %708 = icmp ult i64 %698, 8
  %709 = icmp sgt i64 %706, -8
  %710 = or i1 %709, %708
  br i1 %710, label %711, label %760

711:                                              ; preds = %705
  %712 = add i64 %706, %696
  %713 = add i64 %702, 1
  %714 = tail call i64 @llvm.umax.i64(i64 %712, i64 %713)
  %715 = sub i64 %714, %702
  %716 = icmp ult i64 %715, 4
  %717 = icmp ult i64 %706, 32
  %718 = or i1 %717, %716
  br i1 %718, label %.preheader755.preheader, label %719

719:                                              ; preds = %711
  %720 = icmp ult i64 %715, 32
  br i1 %720, label %740, label %721

721:                                              ; preds = %719
  %722 = and i64 %715, -32
  br label %723

723:                                              ; preds = %723, %721
  %724 = phi i64 [ 0, %721 ], [ %731, %723 ]
  %725 = getelementptr i8, ptr %285, i64 %724
  %726 = getelementptr i8, ptr %694, i64 %724
  %727 = getelementptr i8, ptr %726, i64 16
  %728 = load <16 x i8>, ptr %726, align 1, !tbaa !9
  %729 = load <16 x i8>, ptr %727, align 1, !tbaa !9
  %730 = getelementptr i8, ptr %725, i64 16
  store <16 x i8> %728, ptr %725, align 1, !tbaa !9
  store <16 x i8> %729, ptr %730, align 1, !tbaa !9
  %731 = add nuw i64 %724, 32
  %732 = icmp eq i64 %731, %722
  br i1 %732, label %733, label %723, !llvm.loop !220

733:                                              ; preds = %723
  %734 = icmp eq i64 %715, %722
  br i1 %734, label %.loopexit102, label %735

735:                                              ; preds = %733
  %736 = getelementptr i8, ptr %285, i64 %722
  %737 = getelementptr i8, ptr %694, i64 %722
  %738 = and i64 %715, 28
  %739 = icmp eq i64 %738, 0
  br i1 %739, label %.preheader755.preheader, label %740

740:                                              ; preds = %735, %719
  %741 = phi i64 [ %722, %735 ], [ 0, %719 ]
  %742 = and i64 %715, -4
  br label %743

743:                                              ; preds = %743, %740
  %744 = phi i64 [ %741, %740 ], [ %748, %743 ]
  %745 = getelementptr i8, ptr %285, i64 %744
  %746 = getelementptr i8, ptr %694, i64 %744
  %747 = load <4 x i8>, ptr %746, align 1, !tbaa !9
  store <4 x i8> %747, ptr %745, align 1, !tbaa !9
  %748 = add nuw i64 %744, 4
  %749 = icmp eq i64 %748, %742
  br i1 %749, label %750, label %743, !llvm.loop !221

750:                                              ; preds = %743
  %751 = getelementptr i8, ptr %285, i64 %742
  %752 = getelementptr i8, ptr %694, i64 %742
  %753 = icmp eq i64 %715, %742
  br i1 %753, label %.loopexit102, label %.preheader755.preheader

.preheader755.preheader:                          ; preds = %750, %735, %711
  %.ph738 = phi ptr [ %285, %711 ], [ %736, %735 ], [ %751, %750 ]
  %.ph739 = phi ptr [ %694, %711 ], [ %737, %735 ], [ %752, %750 ]
  br label %.preheader755

.preheader755:                                    ; preds = %.preheader755.preheader, %.preheader755
  %754 = phi ptr [ %758, %.preheader755 ], [ %.ph738, %.preheader755.preheader ]
  %755 = phi ptr [ %756, %.preheader755 ], [ %.ph739, %.preheader755.preheader ]
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 1
  %757 = load i8, ptr %755, align 1, !tbaa !9
  %758 = getelementptr inbounds nuw i8, ptr %754, i64 1
  store i8 %757, ptr %754, align 1, !tbaa !9
  %759 = icmp ult ptr %758, %707
  br i1 %759, label %.preheader755, label %.loopexit102, !llvm.loop !222

760:                                              ; preds = %705
  %761 = icmp sgt i64 %698, 31
  %762 = icmp samesign ult i64 %706, -16
  %763 = and i1 %762, %761
  br i1 %763, label %764, label %784

764:                                              ; preds = %760
  %765 = getelementptr inbounds i8, ptr %707, i64 -32
  %766 = add nsw i64 %698, -32
  %767 = getelementptr inbounds nuw i8, ptr %285, i64 %766
  %768 = load <2 x i64>, ptr %694, align 1, !tbaa !9
  store <2 x i64> %768, ptr %285, align 1, !tbaa !9
  %769 = icmp samesign ult i64 %698, 49
  br i1 %769, label %.loopexit104, label %770

770:                                              ; preds = %764
  %771 = getelementptr inbounds nuw i8, ptr %285, i64 16
  br label %772

772:                                              ; preds = %772, %770
  %773 = phi ptr [ %771, %770 ], [ %780, %772 ]
  %774 = phi ptr [ %694, %770 ], [ %778, %772 ]
  %775 = getelementptr inbounds nuw i8, ptr %774, i64 16
  %776 = load <2 x i64>, ptr %775, align 1, !tbaa !9
  store <2 x i64> %776, ptr %773, align 1, !tbaa !9
  %777 = getelementptr inbounds nuw i8, ptr %773, i64 16
  %778 = getelementptr inbounds nuw i8, ptr %774, i64 32
  %779 = load <2 x i64>, ptr %778, align 1, !tbaa !9
  store <2 x i64> %779, ptr %777, align 1, !tbaa !9
  %780 = getelementptr inbounds nuw i8, ptr %773, i64 32
  %781 = icmp ult ptr %780, %767
  br i1 %781, label %772, label %.loopexit104, !llvm.loop !97

.loopexit104:                                     ; preds = %772, %764
  %782 = getelementptr inbounds nuw i8, ptr %694, i64 %766
  %.pre = ptrtoint ptr %765 to i64
  %.pre375 = ptrtoint ptr %782 to i64
  %.pre377 = sub i64 %.pre, %.pre375
  %783 = icmp ult i64 %.pre377, 32
  br label %784

784:                                              ; preds = %.loopexit104, %760
  %.pre-phi378 = phi i1 [ %783, %.loopexit104 ], [ false, %760 ]
  %.pre-phi = phi i64 [ %.pre, %.loopexit104 ], [ %702, %760 ]
  %785 = phi ptr [ %765, %.loopexit104 ], [ %285, %760 ]
  %786 = phi ptr [ %782, %.loopexit104 ], [ %694, %760 ]
  %787 = add i64 %706, %696
  %788 = add nuw i64 %.pre-phi, 1
  %789 = tail call i64 @llvm.umax.i64(i64 %787, i64 %788)
  %790 = sub i64 %789, %.pre-phi
  %791 = icmp ult i64 %790, 4
  %792 = select i1 %791, i1 true, i1 %.pre-phi378
  br i1 %792, label %.preheader758.preheader, label %793

793:                                              ; preds = %784
  %794 = icmp ult i64 %790, 32
  br i1 %794, label %814, label %795

795:                                              ; preds = %793
  %796 = and i64 %790, -32
  br label %797

797:                                              ; preds = %797, %795
  %798 = phi i64 [ 0, %795 ], [ %805, %797 ]
  %799 = getelementptr i8, ptr %785, i64 %798
  %800 = getelementptr i8, ptr %786, i64 %798
  %801 = getelementptr i8, ptr %800, i64 16
  %802 = load <16 x i8>, ptr %800, align 1, !tbaa !9
  %803 = load <16 x i8>, ptr %801, align 1, !tbaa !9
  %804 = getelementptr i8, ptr %799, i64 16
  store <16 x i8> %802, ptr %799, align 1, !tbaa !9
  store <16 x i8> %803, ptr %804, align 1, !tbaa !9
  %805 = add nuw i64 %798, 32
  %806 = icmp eq i64 %805, %796
  br i1 %806, label %807, label %797, !llvm.loop !223

807:                                              ; preds = %797
  %808 = icmp eq i64 %790, %796
  br i1 %808, label %.loopexit102, label %809

809:                                              ; preds = %807
  %810 = getelementptr i8, ptr %785, i64 %796
  %811 = getelementptr i8, ptr %786, i64 %796
  %812 = and i64 %790, 28
  %813 = icmp eq i64 %812, 0
  br i1 %813, label %.preheader758.preheader, label %814

814:                                              ; preds = %809, %793
  %815 = phi i64 [ %796, %809 ], [ 0, %793 ]
  %816 = and i64 %790, -4
  br label %817

817:                                              ; preds = %817, %814
  %818 = phi i64 [ %815, %814 ], [ %822, %817 ]
  %819 = getelementptr i8, ptr %785, i64 %818
  %820 = getelementptr i8, ptr %786, i64 %818
  %821 = load <4 x i8>, ptr %820, align 1, !tbaa !9
  store <4 x i8> %821, ptr %819, align 1, !tbaa !9
  %822 = add nuw i64 %818, 4
  %823 = icmp eq i64 %822, %816
  br i1 %823, label %824, label %817, !llvm.loop !224

824:                                              ; preds = %817
  %825 = getelementptr i8, ptr %785, i64 %816
  %826 = getelementptr i8, ptr %786, i64 %816
  %827 = icmp eq i64 %790, %816
  br i1 %827, label %.loopexit102, label %.preheader758.preheader

.preheader758.preheader:                          ; preds = %824, %809, %784
  %.ph740 = phi ptr [ %785, %784 ], [ %810, %809 ], [ %825, %824 ]
  %.ph741 = phi ptr [ %786, %784 ], [ %811, %809 ], [ %826, %824 ]
  br label %.preheader758

.preheader758:                                    ; preds = %.preheader758.preheader, %.preheader758
  %828 = phi ptr [ %832, %.preheader758 ], [ %.ph740, %.preheader758.preheader ]
  %829 = phi ptr [ %830, %.preheader758 ], [ %.ph741, %.preheader758.preheader ]
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 1
  %831 = load i8, ptr %829, align 1, !tbaa !9
  %832 = getelementptr inbounds nuw i8, ptr %828, i64 1
  store i8 %831, ptr %828, align 1, !tbaa !9
  %833 = icmp ult ptr %832, %707
  br i1 %833, label %.preheader758, label %.loopexit102, !llvm.loop !225

.loopexit102:                                     ; preds = %.preheader758, %.preheader755, %824, %807, %750, %733
  %834 = sub i64 %430, %698
  br label %835

835:                                              ; preds = %.loopexit102, %.loopexit109
  %836 = phi i64 [ %430, %.loopexit109 ], [ %834, %.loopexit102 ]
  %837 = phi ptr [ %285, %.loopexit109 ], [ %707, %.loopexit102 ]
  %838 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  store ptr %838, ptr %10, align 8, !tbaa !38
  %839 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %840 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %840, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %836, ptr %8, align 8
  %841 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %381, ptr %841, align 8
  %842 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %365, ptr %842, align 8
  %843 = getelementptr i8, ptr %837, i64 %836
  %844 = add i64 %836, %381
  %845 = getelementptr inbounds nuw i8, ptr %0, i64 %836
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 30372
  %847 = getelementptr inbounds i8, ptr %843, i64 %367
  %848 = icmp sgt i64 %836, 65536
  %849 = getelementptr inbounds i8, ptr %13, i64 -32
  %850 = getelementptr inbounds nuw i8, ptr %837, i64 %844
  %851 = icmp ugt ptr %850, %849
  %852 = select i1 %848, i1 true, i1 %851
  br i1 %852, label %856, label %853, !prof !101

853:                                              ; preds = %835
  %854 = load <2 x i64>, ptr %838, align 1, !tbaa !9
  store <2 x i64> %854, ptr %837, align 1, !tbaa !9
  %855 = icmp ugt i64 %836, 16
  br i1 %855, label %858, label %.loopexit101, !prof !52

856:                                              ; preds = %835
  %857 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %837, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %839, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %.loopexit98

858:                                              ; preds = %853
  %859 = getelementptr inbounds nuw i8, ptr %837, i64 16
  %860 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %861 = add i64 %836, -16
  %862 = load <2 x i64>, ptr %860, align 1, !tbaa !9
  store <2 x i64> %862, ptr %859, align 1, !tbaa !9
  %863 = icmp ult i64 %861, 17
  br i1 %863, label %.loopexit101, label %864

864:                                              ; preds = %858
  %865 = getelementptr inbounds nuw i8, ptr %837, i64 32
  br label %866

866:                                              ; preds = %866, %864
  %867 = phi ptr [ %865, %864 ], [ %874, %866 ]
  %868 = phi ptr [ %860, %864 ], [ %872, %866 ]
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 16
  %870 = load <2 x i64>, ptr %869, align 1, !tbaa !9
  store <2 x i64> %870, ptr %867, align 1, !tbaa !9
  %871 = getelementptr inbounds nuw i8, ptr %867, i64 16
  %872 = getelementptr inbounds nuw i8, ptr %868, i64 32
  %873 = load <2 x i64>, ptr %872, align 1, !tbaa !9
  store <2 x i64> %873, ptr %871, align 1, !tbaa !9
  %874 = getelementptr inbounds nuw i8, ptr %867, i64 32
  %875 = icmp ult ptr %874, %843
  br i1 %875, label %866, label %.loopexit101, !llvm.loop !97

.loopexit101:                                     ; preds = %866, %858, %853
  store ptr %846, ptr %10, align 8, !tbaa !38
  %876 = ptrtoint ptr %843 to i64
  %877 = sub i64 %876, %270
  %878 = icmp ugt i64 %365, %877
  br i1 %878, label %879, label %893

879:                                              ; preds = %.loopexit101
  %880 = sub i64 %876, %271
  %881 = icmp ugt i64 %365, %880
  br i1 %881, label %882, label %883, !prof !52

882:                                              ; preds = %879
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit96

883:                                              ; preds = %879
  %884 = ptrtoint ptr %847 to i64
  %885 = sub i64 %884, %270
  %886 = getelementptr inbounds i8, ptr %23, i64 %885
  %887 = add nsw i64 %885, %381
  %888 = icmp sgt i64 %887, 0
  br i1 %888, label %890, label %889

889:                                              ; preds = %883
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %843, ptr align 1 %886, i64 %381, i1 false)
  br label %.loopexit98

890:                                              ; preds = %883
  %891 = sub nsw i64 0, %885
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %843, ptr align 1 %886, i64 %891, i1 false)
  %892 = getelementptr inbounds nuw i8, ptr %843, i64 %891
  store i64 %887, ptr %841, align 8, !tbaa !127
  br label %893

893:                                              ; preds = %890, %.loopexit101
  %894 = phi ptr [ %892, %890 ], [ %843, %.loopexit101 ]
  %895 = phi ptr [ %19, %890 ], [ %847, %.loopexit101 ]
  %896 = phi i64 [ %887, %890 ], [ %381, %.loopexit101 ]
  %897 = icmp ugt i64 %365, 15
  br i1 %897, label %898, label %914, !prof !87

898:                                              ; preds = %893
  %899 = getelementptr inbounds nuw i8, ptr %894, i64 %896
  %900 = load <2 x i64>, ptr %895, align 1, !tbaa !9
  store <2 x i64> %900, ptr %894, align 1, !tbaa !9
  %901 = icmp ult i64 %896, 17
  br i1 %901, label %.loopexit98, label %902

902:                                              ; preds = %898
  %903 = getelementptr inbounds nuw i8, ptr %894, i64 16
  br label %904

904:                                              ; preds = %904, %902
  %905 = phi ptr [ %903, %902 ], [ %912, %904 ]
  %906 = phi ptr [ %895, %902 ], [ %910, %904 ]
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 16
  %908 = load <2 x i64>, ptr %907, align 1, !tbaa !9
  store <2 x i64> %908, ptr %905, align 1, !tbaa !9
  %909 = getelementptr inbounds nuw i8, ptr %905, i64 16
  %910 = getelementptr inbounds nuw i8, ptr %906, i64 32
  %911 = load <2 x i64>, ptr %910, align 1, !tbaa !9
  store <2 x i64> %911, ptr %909, align 1, !tbaa !9
  %912 = getelementptr inbounds nuw i8, ptr %905, i64 32
  %913 = icmp ult ptr %912, %899
  br i1 %913, label %904, label %.loopexit98, !llvm.loop !97

914:                                              ; preds = %893
  %915 = icmp samesign ult i64 %365, 8
  br i1 %915, label %916, label %938

916:                                              ; preds = %914
  %917 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %365
  %918 = load i32, ptr %917, align 4, !tbaa !30
  %919 = load i8, ptr %895, align 1, !tbaa !9
  store i8 %919, ptr %894, align 1, !tbaa !9
  %920 = getelementptr inbounds nuw i8, ptr %895, i64 1
  %921 = load i8, ptr %920, align 1, !tbaa !9
  %922 = getelementptr inbounds nuw i8, ptr %894, i64 1
  store i8 %921, ptr %922, align 1, !tbaa !9
  %923 = getelementptr inbounds nuw i8, ptr %895, i64 2
  %924 = load i8, ptr %923, align 1, !tbaa !9
  %925 = getelementptr inbounds nuw i8, ptr %894, i64 2
  store i8 %924, ptr %925, align 1, !tbaa !9
  %926 = getelementptr inbounds nuw i8, ptr %895, i64 3
  %927 = load i8, ptr %926, align 1, !tbaa !9
  %928 = getelementptr inbounds nuw i8, ptr %894, i64 3
  store i8 %927, ptr %928, align 1, !tbaa !9
  %929 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %365
  %930 = load i32, ptr %929, align 4, !tbaa !30
  %931 = zext i32 %930 to i64
  %932 = getelementptr inbounds nuw i8, ptr %895, i64 %931
  %933 = getelementptr inbounds nuw i8, ptr %894, i64 4
  %934 = load i32, ptr %932, align 1
  store i32 %934, ptr %933, align 1
  %935 = sext i32 %918 to i64
  %936 = sub nsw i64 0, %935
  %937 = getelementptr inbounds i8, ptr %932, i64 %936
  br label %940

938:                                              ; preds = %914
  %939 = load i64, ptr %895, align 1
  store i64 %939, ptr %894, align 1
  br label %940

940:                                              ; preds = %938, %916
  %941 = phi ptr [ %937, %916 ], [ %895, %938 ]
  %942 = getelementptr inbounds nuw i8, ptr %941, i64 8
  %943 = getelementptr inbounds nuw i8, ptr %894, i64 8
  %944 = icmp ugt i64 %896, 8
  br i1 %944, label %945, label %.loopexit98

945:                                              ; preds = %940
  %946 = ptrtoint ptr %943 to i64
  %947 = ptrtoint ptr %942 to i64
  %948 = sub i64 %946, %947
  %949 = getelementptr i8, ptr %894, i64 %896
  %950 = icmp slt i64 %948, 16
  br i1 %950, label %951, label %991

951:                                              ; preds = %945
  %952 = tail call i64 @llvm.umin.i64(i64 %365, i64 %877)
  %953 = tail call i64 @llvm.umax.i64(i64 %365, i64 %877)
  %954 = sub i64 %270, %365
  %955 = add i64 %954, %381
  %956 = add i64 %955, %952
  %957 = add i64 %956, %953
  %958 = add i64 %953, %270
  %959 = add i64 %958, 16
  %960 = tail call i64 @llvm.umax.i64(i64 %957, i64 %959)
  %reass.sub238 = sub i64 %960, %958
  %961 = add i64 %reass.sub238, -9
  %962 = lshr i64 %961, 3
  %963 = add nuw nsw i64 %962, 1
  %964 = icmp ult i64 %961, 24
  %965 = icmp ult i64 %948, 32
  %966 = or i1 %964, %965
  br i1 %966, label %.preheader750.preheader, label %967

967:                                              ; preds = %951
  %968 = and i64 %963, 4611686018427387900
  br label %969

969:                                              ; preds = %969, %967
  %970 = phi i64 [ 0, %967 ], [ %978, %969 ]
  %971 = shl i64 %970, 3
  %972 = getelementptr i8, ptr %943, i64 %971
  %973 = getelementptr i8, ptr %942, i64 %971
  %974 = getelementptr i8, ptr %973, i64 16
  %975 = load <2 x i64>, ptr %973, align 1
  %976 = load <2 x i64>, ptr %974, align 1
  %977 = getelementptr i8, ptr %972, i64 16
  store <2 x i64> %975, ptr %972, align 1
  store <2 x i64> %976, ptr %977, align 1
  %978 = add nuw i64 %970, 4
  %979 = icmp eq i64 %978, %968
  br i1 %979, label %980, label %969, !llvm.loop !226

980:                                              ; preds = %969
  %981 = shl i64 %968, 3
  %982 = getelementptr i8, ptr %943, i64 %981
  %983 = getelementptr i8, ptr %942, i64 %981
  %984 = icmp eq i64 %963, %968
  br i1 %984, label %.loopexit98, label %.preheader750.preheader

.preheader750.preheader:                          ; preds = %980, %951
  %.ph734 = phi ptr [ %943, %951 ], [ %982, %980 ]
  %.ph735 = phi ptr [ %942, %951 ], [ %983, %980 ]
  br label %.preheader750

.preheader750:                                    ; preds = %.preheader750.preheader, %.preheader750
  %985 = phi ptr [ %988, %.preheader750 ], [ %.ph734, %.preheader750.preheader ]
  %986 = phi ptr [ %989, %.preheader750 ], [ %.ph735, %.preheader750.preheader ]
  %987 = load i64, ptr %986, align 1
  store i64 %987, ptr %985, align 1
  %988 = getelementptr inbounds nuw i8, ptr %985, i64 8
  %989 = getelementptr inbounds nuw i8, ptr %986, i64 8
  %990 = icmp ult ptr %988, %949
  br i1 %990, label %.preheader750, label %.loopexit98, !llvm.loop !227

991:                                              ; preds = %945
  %992 = load <2 x i64>, ptr %942, align 1, !tbaa !9
  store <2 x i64> %992, ptr %943, align 1, !tbaa !9
  %993 = icmp ult i64 %896, 25
  br i1 %993, label %.loopexit98, label %994

994:                                              ; preds = %991
  %995 = getelementptr inbounds nuw i8, ptr %894, i64 24
  br label %996

996:                                              ; preds = %996, %994
  %997 = phi ptr [ %995, %994 ], [ %1004, %996 ]
  %998 = phi ptr [ %942, %994 ], [ %1002, %996 ]
  %999 = getelementptr inbounds nuw i8, ptr %998, i64 16
  %1000 = load <2 x i64>, ptr %999, align 1, !tbaa !9
  store <2 x i64> %1000, ptr %997, align 1, !tbaa !9
  %1001 = getelementptr inbounds nuw i8, ptr %997, i64 16
  %1002 = getelementptr inbounds nuw i8, ptr %998, i64 32
  %1003 = load <2 x i64>, ptr %1002, align 1, !tbaa !9
  store <2 x i64> %1003, ptr %1001, align 1, !tbaa !9
  %1004 = getelementptr inbounds nuw i8, ptr %997, i64 32
  %1005 = icmp ult ptr %1004, %949
  br i1 %1005, label %996, label %.loopexit98, !llvm.loop !97

.loopexit98:                                      ; preds = %996, %.preheader750, %904, %991, %980, %940, %898, %889, %856
  %1006 = phi i64 [ %857, %856 ], [ %844, %889 ], [ %844, %940 ], [ %844, %898 ], [ %844, %991 ], [ %844, %980 ], [ %844, %904 ], [ %844, %.preheader750 ], [ %844, %996 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %1007 = icmp ult i64 %1006, -119
  %1008 = getelementptr inbounds nuw i8, ptr %837, i64 %1006
  %1009 = add nsw i32 %284, -1
  br i1 %1007, label %1010, label %.loopexit96

1010:                                             ; preds = %.loopexit98
  %1011 = icmp eq i32 %1009, 0
  br i1 %1011, label %.loopexit97, label %1012

1012:                                             ; preds = %1010
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !139
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !140
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !142
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !143
  %1013 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1014 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %1015

1015:                                             ; preds = %1405, %1012
  %1016 = phi ptr [ %688, %1012 ], [ %1236, %1405 ]
  %1017 = phi i32 [ %689, %1012 ], [ %1237, %1405 ]
  %1018 = phi i64 [ %690, %1012 ], [ %1238, %1405 ]
  %1019 = phi i64 [ %366, %1012 ], [ %1107, %1405 ]
  %1020 = phi i64 [ %364, %1012 ], [ %1105, %1405 ]
  %1021 = phi i64 [ %365, %1012 ], [ %1106, %1405 ]
  %1022 = phi i64 [ %691, %1012 ], [ %1239, %1405 ]
  %1023 = phi i64 [ %692, %1012 ], [ %1240, %1405 ]
  %1024 = phi i64 [ %693, %1012 ], [ %1241, %1405 ]
  %1025 = phi i32 [ %1009, %1012 ], [ %1407, %1405 ]
  %1026 = phi ptr [ %1008, %1012 ], [ %1406, %1405 ]
  %1027 = icmp eq i32 %1025, 1
  %1028 = getelementptr inbounds nuw [8 x i8], ptr %165, i64 %1024
  %1029 = getelementptr inbounds nuw [8 x i8], ptr %266, i64 %1022
  %1030 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %1023
  %1031 = getelementptr inbounds nuw i8, ptr %1029, i64 4
  %1032 = load i32, ptr %1031, align 4, !tbaa !41, !noalias !228
  %1033 = zext i32 %1032 to i64
  %1034 = getelementptr inbounds nuw i8, ptr %1028, i64 4
  %1035 = load i32, ptr %1034, align 4, !tbaa !41, !noalias !228
  %1036 = zext i32 %1035 to i64
  %1037 = getelementptr inbounds nuw i8, ptr %1030, i64 4
  %1038 = load i32, ptr %1037, align 4, !tbaa !41, !noalias !228
  %1039 = getelementptr inbounds nuw i8, ptr %1028, i64 2
  %1040 = load i8, ptr %1039, align 2, !tbaa !58, !noalias !228
  %1041 = getelementptr inbounds nuw i8, ptr %1029, i64 2
  %1042 = load i8, ptr %1041, align 2, !tbaa !58, !noalias !228
  %1043 = getelementptr inbounds nuw i8, ptr %1030, i64 2
  %1044 = load i8, ptr %1043, align 2, !tbaa !58, !noalias !228
  %1045 = zext i8 %1040 to i32
  %1046 = zext i8 %1042 to i32
  %1047 = add i8 %1042, %1040
  %1048 = add i8 %1047, %1044
  %1049 = load i16, ptr %1028, align 4, !tbaa !57, !noalias !228
  %1050 = load i16, ptr %1029, align 4, !tbaa !57, !noalias !228
  %1051 = load i16, ptr %1030, align 4, !tbaa !57, !noalias !228
  %1052 = getelementptr inbounds nuw i8, ptr %1028, i64 3
  %1053 = load i8, ptr %1052, align 1, !tbaa !56, !noalias !228
  %1054 = zext i8 %1053 to i32
  %1055 = getelementptr inbounds nuw i8, ptr %1029, i64 3
  %1056 = load i8, ptr %1055, align 1, !tbaa !56, !noalias !228
  %1057 = zext i8 %1056 to i32
  %1058 = getelementptr inbounds nuw i8, ptr %1030, i64 3
  %1059 = load i8, ptr %1058, align 1, !tbaa !56, !noalias !228
  %1060 = zext i8 %1059 to i32
  %1061 = icmp ugt i8 %1044, 1
  br i1 %1061, label %1062, label %1074

1062:                                             ; preds = %1015
  %1063 = zext i8 %1044 to i32
  %1064 = and i32 %1017, 63
  %1065 = zext nneg i32 %1064 to i64
  %1066 = shl i64 %1018, %1065
  %1067 = sub nsw i32 0, %1063
  %1068 = and i32 %1067, 63
  %1069 = zext nneg i32 %1068 to i64
  %1070 = lshr i64 %1066, %1069
  %1071 = add i32 %1017, %1063
  store i32 %1071, ptr %125, align 8, !tbaa !80, !noalias !228
  %1072 = zext i32 %1038 to i64
  %1073 = add i64 %1070, %1072
  store i64 %1020, ptr %38, align 8, !tbaa !45, !noalias !228
  br label %1103

1074:                                             ; preds = %1015
  %1075 = icmp eq i32 %1035, 0
  %1076 = icmp eq i8 %1044, 0
  br i1 %1076, label %1077, label %1080, !prof !87

1077:                                             ; preds = %1074
  %1078 = select i1 %1075, i64 %1020, i64 %1021
  %1079 = select i1 %1075, i64 %1021, i64 %1020
  br label %1103

1080:                                             ; preds = %1074
  %1081 = zext i1 %1075 to i32
  %1082 = add i32 %1038, %1081
  %1083 = zext i32 %1082 to i64
  %1084 = and i32 %1017, 63
  %1085 = zext nneg i32 %1084 to i64
  %1086 = shl i64 %1018, %1085
  %1087 = lshr i64 %1086, 63
  %1088 = add i32 %1017, 1
  store i32 %1088, ptr %125, align 8, !tbaa !80, !noalias !228
  %1089 = add nuw nsw i64 %1087, %1083
  %1090 = icmp eq i64 %1089, 3
  br i1 %1090, label %1091, label %1095

1091:                                             ; preds = %1080
  %1092 = add i64 %1021, -1
  %1093 = icmp eq i64 %1092, 0
  %1094 = select i1 %1093, i64 -1, i64 %1092
  br label %1101

1095:                                             ; preds = %1080
  %1096 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %1089
  %1097 = load i64, ptr %1096, align 8, !tbaa !45, !noalias !228
  %1098 = icmp eq i64 %1097, 0
  %1099 = select i1 %1098, i64 -1, i64 %1097
  %1100 = icmp eq i64 %1089, 1
  br i1 %1100, label %1103, label %1101

1101:                                             ; preds = %1095, %1091
  %1102 = phi i64 [ %1094, %1091 ], [ %1099, %1095 ]
  store i64 %1020, ptr %38, align 8, !tbaa !45, !noalias !228
  br label %1103

1103:                                             ; preds = %1101, %1095, %1077, %1062
  %1104 = phi i32 [ %1017, %1077 ], [ %1071, %1062 ], [ %1088, %1101 ], [ %1088, %1095 ]
  %1105 = phi i64 [ %1079, %1077 ], [ %1021, %1062 ], [ %1021, %1101 ], [ %1021, %1095 ]
  %1106 = phi i64 [ %1078, %1077 ], [ %1073, %1062 ], [ %1102, %1101 ], [ %1099, %1095 ]
  %1107 = phi i64 [ %1019, %1077 ], [ %1020, %1062 ], [ %1020, %1101 ], [ %1019, %1095 ]
  %1108 = sub i64 0, %1106
  store i64 %1105, ptr %34, align 8, !tbaa !45, !noalias !228
  store i64 %1106, ptr %28, align 8, !tbaa !45, !noalias !228
  %1109 = icmp eq i8 %1042, 0
  br i1 %1109, label %1120, label %1110

1110:                                             ; preds = %1103
  %1111 = and i32 %1104, 63
  %1112 = zext nneg i32 %1111 to i64
  %1113 = shl i64 %1018, %1112
  %1114 = sub nsw i32 0, %1046
  %1115 = and i32 %1114, 63
  %1116 = zext nneg i32 %1115 to i64
  %1117 = lshr i64 %1113, %1116
  %1118 = add i32 %1104, %1046
  store i32 %1118, ptr %125, align 8, !tbaa !80, !noalias !228
  %1119 = add i64 %1117, %1033
  br label %1120

1120:                                             ; preds = %1110, %1103
  %1121 = phi i32 [ %1104, %1103 ], [ %1118, %1110 ]
  %1122 = phi i64 [ %1033, %1103 ], [ %1119, %1110 ]
  %1123 = icmp ugt i8 %1048, 30
  br i1 %1123, label %1124, label %1154, !prof !52

1124:                                             ; preds = %1120
  %1125 = icmp ugt i32 %1121, 64
  br i1 %1125, label %1126, label %1127, !prof !52

1126:                                             ; preds = %1124
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75, !noalias !228
  br label %1154

1127:                                             ; preds = %1124
  %1128 = icmp ult ptr %1016, %42
  br i1 %1128, label %1136, label %1129

1129:                                             ; preds = %1127
  %1130 = lshr i32 %1121, 3
  %1131 = zext nneg i32 %1130 to i64
  %1132 = sub nsw i64 0, %1131
  %1133 = getelementptr inbounds i8, ptr %1016, i64 %1132
  store ptr %1133, ptr %136, align 8, !tbaa !75, !noalias !228
  %1134 = and i32 %1121, 7
  store i32 %1134, ptr %125, align 8, !tbaa !80, !noalias !228
  %1135 = load i64, ptr %1133, align 1, !tbaa !45, !noalias !228
  store i64 %1135, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1154

1136:                                             ; preds = %1127
  %1137 = icmp eq ptr %1016, %3
  br i1 %1137, label %1154, label %1138

1138:                                             ; preds = %1136
  %1139 = lshr i32 %1121, 3
  %1140 = zext nneg i32 %1139 to i64
  %1141 = sub nsw i64 0, %1140
  %1142 = getelementptr inbounds i8, ptr %1016, i64 %1141
  %1143 = icmp ult ptr %1142, %3
  %1144 = ptrtoint ptr %1016 to i64
  %1145 = sub i64 %1144, %273
  %1146 = trunc i64 %1145 to i32
  %1147 = select i1 %1143, i32 %1146, i32 %1139
  %1148 = zext i32 %1147 to i64
  %1149 = sub nsw i64 0, %1148
  %1150 = getelementptr inbounds i8, ptr %1016, i64 %1149
  store ptr %1150, ptr %136, align 8, !tbaa !75, !noalias !228
  %1151 = shl i32 %1147, 3
  %1152 = sub i32 %1121, %1151
  store i32 %1152, ptr %125, align 8, !tbaa !80, !noalias !228
  %1153 = load i64, ptr %1150, align 1, !tbaa !45, !noalias !228
  store i64 %1153, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1154

1154:                                             ; preds = %1138, %1136, %1129, %1126, %1120
  %1155 = phi ptr [ %1016, %1136 ], [ @BIT_reloadDStream.zeroFilled, %1126 ], [ %1133, %1129 ], [ %1150, %1138 ], [ %1016, %1120 ]
  %1156 = phi i32 [ %1121, %1136 ], [ %1121, %1126 ], [ %1134, %1129 ], [ %1152, %1138 ], [ %1121, %1120 ]
  %1157 = phi i64 [ %1018, %1136 ], [ %1018, %1126 ], [ %1135, %1129 ], [ %1153, %1138 ], [ %1018, %1120 ]
  %1158 = icmp eq i8 %1040, 0
  br i1 %1158, label %1169, label %1159

1159:                                             ; preds = %1154
  %1160 = and i32 %1156, 63
  %1161 = zext nneg i32 %1160 to i64
  %1162 = shl i64 %1157, %1161
  %1163 = sub nsw i32 0, %1045
  %1164 = and i32 %1163, 63
  %1165 = zext nneg i32 %1164 to i64
  %1166 = lshr i64 %1162, %1165
  %1167 = add i32 %1156, %1045
  store i32 %1167, ptr %125, align 8, !tbaa !80, !noalias !228
  %1168 = add i64 %1166, %1036
  br label %1169

1169:                                             ; preds = %1159, %1154
  %1170 = phi i32 [ %1156, %1154 ], [ %1167, %1159 ]
  %1171 = phi i64 [ %1036, %1154 ], [ %1168, %1159 ]
  br i1 %1027, label %1235, label %1172

1172:                                             ; preds = %1169
  %1173 = add i32 %1170, %1054
  %1174 = sub i32 0, %1173
  %1175 = and i32 %1174, 63
  %1176 = zext nneg i32 %1175 to i64
  %1177 = lshr i64 %1157, %1176
  %1178 = zext nneg i8 %1053 to i64
  %1179 = shl nsw i64 -1, %1178
  %1180 = xor i64 %1179, -1
  %1181 = and i64 %1177, %1180
  %1182 = zext i16 %1049 to i64
  %1183 = add nuw i64 %1181, %1182
  store i64 %1183, ptr %121, align 8, !tbaa !78, !noalias !228
  %1184 = add i32 %1173, %1057
  %1185 = sub i32 0, %1184
  %1186 = and i32 %1185, 63
  %1187 = zext nneg i32 %1186 to i64
  %1188 = lshr i64 %1157, %1187
  %1189 = zext nneg i8 %1056 to i64
  %1190 = shl nsw i64 -1, %1189
  %1191 = xor i64 %1190, -1
  %1192 = and i64 %1188, %1191
  %1193 = zext i16 %1050 to i64
  %1194 = add nuw i64 %1192, %1193
  store i64 %1194, ptr %218, align 8, !tbaa !78, !noalias !228
  %1195 = add i32 %1184, %1060
  %1196 = sub i32 0, %1195
  %1197 = and i32 %1196, 63
  %1198 = zext nneg i32 %1197 to i64
  %1199 = lshr i64 %1157, %1198
  %1200 = zext nneg i8 %1059 to i64
  %1201 = shl nsw i64 -1, %1200
  %1202 = xor i64 %1201, -1
  %1203 = and i64 %1199, %1202
  store i32 %1195, ptr %125, align 8, !tbaa !80, !noalias !228
  %1204 = zext i16 %1051 to i64
  %1205 = add nuw i64 %1203, %1204
  store i64 %1205, ptr %167, align 8, !tbaa !78, !noalias !228
  %1206 = icmp ugt i32 %1195, 64
  br i1 %1206, label %1207, label %1208, !prof !52

1207:                                             ; preds = %1172
  store ptr @BIT_reloadDStream.zeroFilled, ptr %136, align 8, !tbaa !75, !noalias !228
  br label %1235

1208:                                             ; preds = %1172
  %1209 = icmp ult ptr %1155, %42
  br i1 %1209, label %1217, label %1210

1210:                                             ; preds = %1208
  %1211 = lshr i32 %1195, 3
  %1212 = zext nneg i32 %1211 to i64
  %1213 = sub nsw i64 0, %1212
  %1214 = getelementptr inbounds i8, ptr %1155, i64 %1213
  store ptr %1214, ptr %136, align 8, !tbaa !75, !noalias !228
  %1215 = and i32 %1195, 7
  store i32 %1215, ptr %125, align 8, !tbaa !80, !noalias !228
  %1216 = load i64, ptr %1214, align 1, !tbaa !45, !noalias !228
  store i64 %1216, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1235

1217:                                             ; preds = %1208
  %1218 = icmp eq ptr %1155, %3
  br i1 %1218, label %1235, label %1219

1219:                                             ; preds = %1217
  %1220 = lshr i32 %1195, 3
  %1221 = zext nneg i32 %1220 to i64
  %1222 = sub nsw i64 0, %1221
  %1223 = getelementptr inbounds i8, ptr %1155, i64 %1222
  %1224 = icmp ult ptr %1223, %3
  %1225 = ptrtoint ptr %1155 to i64
  %1226 = sub i64 %1225, %273
  %1227 = trunc i64 %1226 to i32
  %1228 = select i1 %1224, i32 %1227, i32 %1220
  %1229 = zext i32 %1228 to i64
  %1230 = sub nsw i64 0, %1229
  %1231 = getelementptr inbounds i8, ptr %1155, i64 %1230
  store ptr %1231, ptr %136, align 8, !tbaa !75, !noalias !228
  %1232 = shl i32 %1228, 3
  %1233 = sub i32 %1195, %1232
  store i32 %1233, ptr %125, align 8, !tbaa !80, !noalias !228
  %1234 = load i64, ptr %1231, align 1, !tbaa !45, !noalias !228
  store i64 %1234, ptr %11, align 8, !tbaa !76, !noalias !228
  br label %1235

1235:                                             ; preds = %1219, %1217, %1210, %1207, %1169
  %1236 = phi ptr [ %1155, %1217 ], [ @BIT_reloadDStream.zeroFilled, %1207 ], [ %1214, %1210 ], [ %1231, %1219 ], [ %1155, %1169 ]
  %1237 = phi i32 [ %1195, %1217 ], [ %1195, %1207 ], [ %1215, %1210 ], [ %1233, %1219 ], [ %1170, %1169 ]
  %1238 = phi i64 [ %1157, %1217 ], [ %1157, %1207 ], [ %1216, %1210 ], [ %1234, %1219 ], [ %1157, %1169 ]
  %1239 = phi i64 [ %1194, %1217 ], [ %1194, %1207 ], [ %1194, %1210 ], [ %1194, %1219 ], [ %1022, %1169 ]
  %1240 = phi i64 [ %1205, %1217 ], [ %1205, %1207 ], [ %1205, %1210 ], [ %1205, %1219 ], [ %1023, %1169 ]
  %1241 = phi i64 [ %1183, %1217 ], [ %1183, %1207 ], [ %1183, %1210 ], [ %1183, %1219 ], [ %1024, %1169 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %1171, ptr %9, align 8
  store i64 %1122, ptr %1013, align 8
  store i64 %1106, ptr %1014, align 8
  %1242 = getelementptr i8, ptr %1026, i64 %1171
  %1243 = add i64 %1171, %1122
  %1244 = load ptr, ptr %10, align 8, !tbaa !38
  %1245 = getelementptr inbounds nuw i8, ptr %1244, i64 %1171
  %1246 = getelementptr inbounds i8, ptr %1242, i64 %1108
  %1247 = icmp ugt ptr %1245, %839
  %1248 = getelementptr inbounds nuw i8, ptr %1026, i64 %1243
  %1249 = icmp ugt ptr %1248, %849
  %1250 = select i1 %1247, i1 true, i1 %1249
  br i1 %1250, label %1254, label %1251, !prof !101

1251:                                             ; preds = %1235
  %1252 = load <2 x i64>, ptr %1244, align 1, !tbaa !9
  store <2 x i64> %1252, ptr %1026, align 1, !tbaa !9
  %1253 = icmp ugt i64 %1171, 16
  br i1 %1253, label %1256, label %.loopexit95, !prof !52

1254:                                             ; preds = %1235
  %1255 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1026, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %839, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %.loopexit

1256:                                             ; preds = %1251
  %1257 = getelementptr inbounds nuw i8, ptr %1026, i64 16
  %1258 = getelementptr inbounds nuw i8, ptr %1244, i64 16
  %1259 = load <2 x i64>, ptr %1258, align 1, !tbaa !9
  store <2 x i64> %1259, ptr %1257, align 1, !tbaa !9
  %1260 = icmp ult i64 %1171, 33
  br i1 %1260, label %.loopexit95, label %1261

1261:                                             ; preds = %1256
  %1262 = getelementptr inbounds nuw i8, ptr %1026, i64 32
  br label %1263

1263:                                             ; preds = %1263, %1261
  %1264 = phi ptr [ %1262, %1261 ], [ %1271, %1263 ]
  %1265 = phi ptr [ %1258, %1261 ], [ %1269, %1263 ]
  %1266 = getelementptr inbounds nuw i8, ptr %1265, i64 16
  %1267 = load <2 x i64>, ptr %1266, align 1, !tbaa !9
  store <2 x i64> %1267, ptr %1264, align 1, !tbaa !9
  %1268 = getelementptr inbounds nuw i8, ptr %1264, i64 16
  %1269 = getelementptr inbounds nuw i8, ptr %1265, i64 32
  %1270 = load <2 x i64>, ptr %1269, align 1, !tbaa !9
  store <2 x i64> %1270, ptr %1268, align 1, !tbaa !9
  %1271 = getelementptr inbounds nuw i8, ptr %1264, i64 32
  %1272 = icmp ult ptr %1271, %1242
  br i1 %1272, label %1263, label %.loopexit95, !llvm.loop !97

.loopexit95:                                      ; preds = %1263, %1256, %1251
  store ptr %1245, ptr %10, align 8, !tbaa !38
  %1273 = ptrtoint ptr %1242 to i64
  %1274 = sub i64 %1273, %270
  %1275 = icmp ugt i64 %1106, %1274
  br i1 %1275, label %1276, label %1290

1276:                                             ; preds = %.loopexit95
  %1277 = sub i64 %1273, %271
  %1278 = icmp ugt i64 %1106, %1277
  br i1 %1278, label %1279, label %1280, !prof !52

1279:                                             ; preds = %1276
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit96

1280:                                             ; preds = %1276
  %1281 = ptrtoint ptr %1246 to i64
  %1282 = sub i64 %1281, %270
  %1283 = getelementptr inbounds i8, ptr %23, i64 %1282
  %1284 = add nsw i64 %1282, %1122
  %1285 = icmp sgt i64 %1284, 0
  br i1 %1285, label %1287, label %1286

1286:                                             ; preds = %1280
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1242, ptr align 1 %1283, i64 %1122, i1 false)
  br label %.loopexit

1287:                                             ; preds = %1280
  %1288 = sub nsw i64 0, %1282
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1242, ptr align 1 %1283, i64 %1288, i1 false)
  %1289 = getelementptr inbounds nuw i8, ptr %1242, i64 %1288
  store i64 %1284, ptr %1013, align 8, !tbaa !127
  br label %1290

1290:                                             ; preds = %1287, %.loopexit95
  %1291 = phi ptr [ %1289, %1287 ], [ %1242, %.loopexit95 ]
  %1292 = phi ptr [ %19, %1287 ], [ %1246, %.loopexit95 ]
  %1293 = phi i64 [ %1284, %1287 ], [ %1122, %.loopexit95 ]
  %1294 = icmp ugt i64 %1106, 15
  br i1 %1294, label %1295, label %1311, !prof !87

1295:                                             ; preds = %1290
  %1296 = getelementptr inbounds nuw i8, ptr %1291, i64 %1293
  %1297 = load <2 x i64>, ptr %1292, align 1, !tbaa !9
  store <2 x i64> %1297, ptr %1291, align 1, !tbaa !9
  %1298 = icmp ult i64 %1293, 17
  br i1 %1298, label %.loopexit, label %1299

1299:                                             ; preds = %1295
  %1300 = getelementptr inbounds nuw i8, ptr %1291, i64 16
  br label %1301

1301:                                             ; preds = %1301, %1299
  %1302 = phi ptr [ %1300, %1299 ], [ %1309, %1301 ]
  %1303 = phi ptr [ %1292, %1299 ], [ %1307, %1301 ]
  %1304 = getelementptr inbounds nuw i8, ptr %1303, i64 16
  %1305 = load <2 x i64>, ptr %1304, align 1, !tbaa !9
  store <2 x i64> %1305, ptr %1302, align 1, !tbaa !9
  %1306 = getelementptr inbounds nuw i8, ptr %1302, i64 16
  %1307 = getelementptr inbounds nuw i8, ptr %1303, i64 32
  %1308 = load <2 x i64>, ptr %1307, align 1, !tbaa !9
  store <2 x i64> %1308, ptr %1306, align 1, !tbaa !9
  %1309 = getelementptr inbounds nuw i8, ptr %1302, i64 32
  %1310 = icmp ult ptr %1309, %1296
  br i1 %1310, label %1301, label %.loopexit, !llvm.loop !97

1311:                                             ; preds = %1290
  %1312 = icmp samesign ult i64 %1106, 8
  br i1 %1312, label %1313, label %1335

1313:                                             ; preds = %1311
  %1314 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %1106
  %1315 = load i32, ptr %1314, align 4, !tbaa !30
  %1316 = load i8, ptr %1292, align 1, !tbaa !9
  store i8 %1316, ptr %1291, align 1, !tbaa !9
  %1317 = getelementptr inbounds nuw i8, ptr %1292, i64 1
  %1318 = load i8, ptr %1317, align 1, !tbaa !9
  %1319 = getelementptr inbounds nuw i8, ptr %1291, i64 1
  store i8 %1318, ptr %1319, align 1, !tbaa !9
  %1320 = getelementptr inbounds nuw i8, ptr %1292, i64 2
  %1321 = load i8, ptr %1320, align 1, !tbaa !9
  %1322 = getelementptr inbounds nuw i8, ptr %1291, i64 2
  store i8 %1321, ptr %1322, align 1, !tbaa !9
  %1323 = getelementptr inbounds nuw i8, ptr %1292, i64 3
  %1324 = load i8, ptr %1323, align 1, !tbaa !9
  %1325 = getelementptr inbounds nuw i8, ptr %1291, i64 3
  store i8 %1324, ptr %1325, align 1, !tbaa !9
  %1326 = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %1106
  %1327 = load i32, ptr %1326, align 4, !tbaa !30
  %1328 = zext i32 %1327 to i64
  %1329 = getelementptr inbounds nuw i8, ptr %1292, i64 %1328
  %1330 = getelementptr inbounds nuw i8, ptr %1291, i64 4
  %1331 = load i32, ptr %1329, align 1
  store i32 %1331, ptr %1330, align 1
  %1332 = sext i32 %1315 to i64
  %1333 = sub nsw i64 0, %1332
  %1334 = getelementptr inbounds i8, ptr %1329, i64 %1333
  br label %1337

1335:                                             ; preds = %1311
  %1336 = load i64, ptr %1292, align 1
  store i64 %1336, ptr %1291, align 1
  br label %1337

1337:                                             ; preds = %1335, %1313
  %1338 = phi ptr [ %1334, %1313 ], [ %1292, %1335 ]
  %1339 = getelementptr inbounds nuw i8, ptr %1338, i64 8
  %1340 = getelementptr inbounds nuw i8, ptr %1291, i64 8
  %1341 = icmp ugt i64 %1293, 8
  br i1 %1341, label %1342, label %.loopexit

1342:                                             ; preds = %1337
  %1343 = ptrtoint ptr %1340 to i64
  %1344 = ptrtoint ptr %1339 to i64
  %1345 = sub i64 %1343, %1344
  %1346 = getelementptr i8, ptr %1291, i64 %1293
  %1347 = icmp slt i64 %1345, 16
  br i1 %1347, label %1348, label %1388

1348:                                             ; preds = %1342
  %1349 = tail call i64 @llvm.umin.i64(i64 %1106, i64 %1274)
  %1350 = tail call i64 @llvm.umax.i64(i64 %1106, i64 %1274)
  %1351 = sub i64 %270, %1106
  %1352 = add i64 %1351, %1122
  %1353 = add i64 %1352, %1349
  %1354 = add i64 %1353, %1350
  %1355 = add i64 %1350, %272
  %1356 = tail call i64 @llvm.umax.i64(i64 %1354, i64 %1355)
  %1357 = add i64 %1350, %270
  %reass.sub227 = sub i64 %1356, %1357
  %1358 = add i64 %reass.sub227, -9
  %1359 = lshr i64 %1358, 3
  %1360 = add nuw nsw i64 %1359, 1
  %1361 = icmp ult i64 %1358, 24
  %1362 = icmp ult i64 %1345, 32
  %1363 = or i1 %1361, %1362
  br i1 %1363, label %.preheader.preheader, label %1364

1364:                                             ; preds = %1348
  %1365 = and i64 %1360, 4611686018427387900
  br label %1366

1366:                                             ; preds = %1366, %1364
  %1367 = phi i64 [ 0, %1364 ], [ %1375, %1366 ]
  %1368 = shl i64 %1367, 3
  %1369 = getelementptr i8, ptr %1340, i64 %1368
  %1370 = getelementptr i8, ptr %1339, i64 %1368
  %1371 = getelementptr i8, ptr %1370, i64 16
  %1372 = load <2 x i64>, ptr %1370, align 1
  %1373 = load <2 x i64>, ptr %1371, align 1
  %1374 = getelementptr i8, ptr %1369, i64 16
  store <2 x i64> %1372, ptr %1369, align 1
  store <2 x i64> %1373, ptr %1374, align 1
  %1375 = add nuw i64 %1367, 4
  %1376 = icmp eq i64 %1375, %1365
  br i1 %1376, label %1377, label %1366, !llvm.loop !231

1377:                                             ; preds = %1366
  %1378 = shl i64 %1365, 3
  %1379 = getelementptr i8, ptr %1340, i64 %1378
  %1380 = getelementptr i8, ptr %1339, i64 %1378
  %1381 = icmp eq i64 %1360, %1365
  br i1 %1381, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1377, %1348
  %.ph = phi ptr [ %1340, %1348 ], [ %1379, %1377 ]
  %.ph714 = phi ptr [ %1339, %1348 ], [ %1380, %1377 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %1382 = phi ptr [ %1385, %.preheader ], [ %.ph, %.preheader.preheader ]
  %1383 = phi ptr [ %1386, %.preheader ], [ %.ph714, %.preheader.preheader ]
  %1384 = load i64, ptr %1383, align 1
  store i64 %1384, ptr %1382, align 1
  %1385 = getelementptr inbounds nuw i8, ptr %1382, i64 8
  %1386 = getelementptr inbounds nuw i8, ptr %1383, i64 8
  %1387 = icmp ult ptr %1385, %1346
  br i1 %1387, label %.preheader, label %.loopexit, !llvm.loop !232

1388:                                             ; preds = %1342
  %1389 = load <2 x i64>, ptr %1339, align 1, !tbaa !9
  store <2 x i64> %1389, ptr %1340, align 1, !tbaa !9
  %1390 = icmp ult i64 %1293, 25
  br i1 %1390, label %.loopexit, label %1391

1391:                                             ; preds = %1388
  %1392 = getelementptr inbounds nuw i8, ptr %1291, i64 24
  br label %1393

1393:                                             ; preds = %1393, %1391
  %1394 = phi ptr [ %1392, %1391 ], [ %1401, %1393 ]
  %1395 = phi ptr [ %1339, %1391 ], [ %1399, %1393 ]
  %1396 = getelementptr inbounds nuw i8, ptr %1395, i64 16
  %1397 = load <2 x i64>, ptr %1396, align 1, !tbaa !9
  store <2 x i64> %1397, ptr %1394, align 1, !tbaa !9
  %1398 = getelementptr inbounds nuw i8, ptr %1394, i64 16
  %1399 = getelementptr inbounds nuw i8, ptr %1395, i64 32
  %1400 = load <2 x i64>, ptr %1399, align 1, !tbaa !9
  store <2 x i64> %1400, ptr %1398, align 1, !tbaa !9
  %1401 = getelementptr inbounds nuw i8, ptr %1394, i64 32
  %1402 = icmp ult ptr %1401, %1346
  br i1 %1402, label %1393, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %1393, %.preheader, %1301, %1388, %1377, %1337, %1295, %1286, %1254
  %1403 = phi i64 [ %1255, %1254 ], [ %1243, %1286 ], [ %1243, %1337 ], [ %1243, %1295 ], [ %1243, %1388 ], [ %1243, %1377 ], [ %1243, %1301 ], [ %1243, %.preheader ], [ %1243, %1393 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1404 = icmp ult i64 %1403, -119
  br i1 %1404, label %1405, label %.loopexit96

1405:                                             ; preds = %.loopexit
  %1406 = getelementptr inbounds nuw i8, ptr %1026, i64 %1403
  %1407 = add nsw i32 %1025, -1
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %.loopexit97, label %1015, !llvm.loop !149

.loopexit97:                                      ; preds = %683, %1405, %1010
  %1409 = phi ptr [ %688, %1010 ], [ %1236, %1405 ], [ %508, %683 ]
  %1410 = phi i32 [ %689, %1010 ], [ %1237, %1405 ], [ %509, %683 ]
  %1411 = phi i64 [ %366, %1010 ], [ %1107, %1405 ], [ %366, %683 ]
  %1412 = phi i64 [ %364, %1010 ], [ %1105, %1405 ], [ %364, %683 ]
  %1413 = phi i64 [ %365, %1010 ], [ %1106, %1405 ], [ %365, %683 ]
  %1414 = phi ptr [ %1008, %1010 ], [ %1406, %1405 ], [ %678, %683 ]
  %1415 = phi ptr [ %839, %1010 ], [ %839, %1405 ], [ %17, %683 ]
  %1416 = icmp eq ptr %1409, %3
  %1417 = icmp eq i32 %1410, 64
  %1418 = select i1 %1416, i1 %1417, i1 false
  br i1 %1418, label %1419, label %.loopexit96

1419:                                             ; preds = %.loopexit97
  %1420 = trunc i64 %1413 to i32
  store i32 %1420, ptr %27, align 4, !tbaa !30
  %1421 = trunc i64 %1412 to i32
  store i32 %1421, ptr %31, align 4, !tbaa !30
  %1422 = trunc i64 %1411 to i32
  store i32 %1422, ptr %35, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %1423 = load ptr, ptr %10, align 8, !tbaa !38
  br label %1425

.loopexit96:                                      ; preds = %.loopexit105, %.loopexit, %.loopexit97, %1279, %.loopexit98, %882, %700, %686, %552, %108, %96, %45, %25
  %1424 = phi i64 [ -20, %686 ], [ -20, %1279 ], [ -20, %108 ], [ %1006, %.loopexit98 ], [ -70, %700 ], [ -20, %552 ], [ -20, %.loopexit97 ], [ -20, %882 ], [ -20, %25 ], [ -20, %45 ], [ -20, %96 ], [ %1403, %.loopexit ], [ %676, %.loopexit105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %1470

1425:                                             ; preds = %1419, %6
  %1426 = phi ptr [ %1423, %1419 ], [ %15, %6 ]
  %1427 = phi ptr [ %1415, %1419 ], [ %17, %6 ]
  %1428 = phi ptr [ %1414, %1419 ], [ %1, %6 ]
  %1429 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %1430 = load i32, ptr %1429, align 8, !tbaa !35
  %1431 = icmp eq i32 %1430, 2
  br i1 %1431, label %1434, label %1432

1432:                                             ; preds = %1425
  %1433 = ptrtoint ptr %13 to i64
  br label %1450

1434:                                             ; preds = %1425
  %1435 = ptrtoint ptr %1427 to i64
  %1436 = ptrtoint ptr %1426 to i64
  %1437 = sub i64 %1435, %1436
  %1438 = ptrtoint ptr %13 to i64
  %1439 = ptrtoint ptr %1428 to i64
  %1440 = sub i64 %1438, %1439
  %1441 = icmp ugt i64 %1437, %1440
  br i1 %1441, label %1470, label %1442

1442:                                             ; preds = %1434
  %1443 = icmp eq ptr %1428, null
  br i1 %1443, label %1446, label %1444

1444:                                             ; preds = %1442
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1428, ptr align 1 %1426, i64 %1437, i1 false)
  %1445 = getelementptr inbounds nuw i8, ptr %1428, i64 %1437
  br label %1446

1446:                                             ; preds = %1444, %1442
  %1447 = phi ptr [ %1445, %1444 ], [ null, %1442 ]
  %1448 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %1449 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %1429, align 8, !tbaa !35
  br label %1450

1450:                                             ; preds = %1446, %1432
  %1451 = phi i64 [ %1433, %1432 ], [ %1438, %1446 ]
  %1452 = phi ptr [ %1426, %1432 ], [ %1448, %1446 ]
  %1453 = phi ptr [ %1427, %1432 ], [ %1449, %1446 ]
  %1454 = phi ptr [ %1428, %1432 ], [ %1447, %1446 ]
  %1455 = ptrtoint ptr %1453 to i64
  %1456 = ptrtoint ptr %1452 to i64
  %1457 = sub i64 %1455, %1456
  %1458 = ptrtoint ptr %1454 to i64
  %1459 = sub i64 %1451, %1458
  %1460 = icmp ugt i64 %1457, %1459
  br i1 %1460, label %1470, label %1461

1461:                                             ; preds = %1450
  %1462 = icmp eq ptr %1454, null
  br i1 %1462, label %1466, label %1463

1463:                                             ; preds = %1461
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1454, ptr align 1 %1452, i64 %1457, i1 false)
  %1464 = getelementptr inbounds nuw i8, ptr %1454, i64 %1457
  %1465 = ptrtoint ptr %1464 to i64
  br label %1466

1466:                                             ; preds = %1463, %1461
  %1467 = phi i64 [ 0, %1461 ], [ %1465, %1463 ]
  %1468 = ptrtoint ptr %1 to i64
  %1469 = sub i64 %1467, %1468
  br label %1470

1470:                                             ; preds = %1466, %1450, %1434, %.loopexit96
  %1471 = phi i64 [ %1469, %1466 ], [ %1424, %.loopexit96 ], [ -70, %1450 ], [ -70, %1434 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret i64 %1471
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
  br i1 %32, label %691, label %33

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
  %reass.sub70 = sub nsw i32 %112, %114
  %115 = add nsw i32 %reass.sub70, 41
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
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !151
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !152
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !153
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !154
  %276 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %277 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %278 = getelementptr inbounds i8, ptr %20, i64 -32
  %279 = ptrtoint ptr %27 to i64
  %280 = ptrtoint ptr %29 to i64
  %281 = add i64 %279, 16
  %282 = ptrtoint ptr %3 to i64
  br label %283

283:                                              ; preds = %678, %270
  %284 = phi ptr [ %271, %270 ], [ %504, %678 ]
  %285 = phi i32 [ %272, %270 ], [ %505, %678 ]
  %286 = phi i64 [ %273, %270 ], [ %506, %678 ]
  %287 = phi i64 [ %45, %270 ], [ %375, %678 ]
  %288 = phi i64 [ %41, %270 ], [ %373, %678 ]
  %289 = phi i64 [ %38, %270 ], [ %374, %678 ]
  %290 = phi i64 [ %239, %270 ], [ %507, %678 ]
  %291 = phi i64 [ %188, %270 ], [ %508, %678 ]
  %292 = phi i64 [ %142, %270 ], [ %509, %678 ]
  %293 = phi i32 [ %5, %270 ], [ %679, %678 ]
  %294 = phi ptr [ %1, %270 ], [ %673, %678 ]
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
  br i1 %615, label %616, label %656

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
  %reass.sub = sub i64 %624, %625
  %626 = add i64 %reass.sub, -9
  %627 = lshr i64 %626, 3
  %628 = add nuw nsw i64 %627, 1
  %629 = icmp ult i64 %626, 24
  %630 = icmp ult i64 %613, 32
  %631 = or i1 %629, %630
  br i1 %631, label %.preheader.preheader, label %632

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
  br i1 %649, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %645, %616
  %.ph = phi ptr [ %608, %616 ], [ %647, %645 ]
  %.ph190 = phi ptr [ %607, %616 ], [ %648, %645 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %650 = phi ptr [ %653, %.preheader ], [ %.ph, %.preheader.preheader ]
  %651 = phi ptr [ %654, %.preheader ], [ %.ph190, %.preheader.preheader ]
  %652 = load i64, ptr %651, align 1
  store i64 %652, ptr %650, align 1
  %653 = getelementptr inbounds nuw i8, ptr %650, i64 8
  %654 = getelementptr inbounds nuw i8, ptr %651, i64 8
  %655 = icmp ult ptr %653, %614
  br i1 %655, label %.preheader, label %.loopexit, !llvm.loop !237

656:                                              ; preds = %610
  %657 = load <2 x i64>, ptr %607, align 1, !tbaa !9
  store <2 x i64> %657, ptr %608, align 1, !tbaa !9
  %658 = icmp ult i64 %561, 25
  br i1 %658, label %.loopexit, label %659

659:                                              ; preds = %656
  %660 = getelementptr inbounds nuw i8, ptr %560, i64 24
  br label %661

661:                                              ; preds = %661, %659
  %662 = phi ptr [ %660, %659 ], [ %669, %661 ]
  %663 = phi ptr [ %607, %659 ], [ %667, %661 ]
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 16
  %665 = load <2 x i64>, ptr %664, align 1, !tbaa !9
  store <2 x i64> %665, ptr %662, align 1, !tbaa !9
  %666 = getelementptr inbounds nuw i8, ptr %662, i64 16
  %667 = getelementptr inbounds nuw i8, ptr %663, i64 32
  %668 = load <2 x i64>, ptr %667, align 1, !tbaa !9
  store <2 x i64> %668, ptr %666, align 1, !tbaa !9
  %669 = getelementptr inbounds nuw i8, ptr %662, i64 32
  %670 = icmp ult ptr %669, %614
  br i1 %670, label %661, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %661, %.preheader, %569, %656, %645, %605, %563, %554, %522
  %671 = phi i64 [ %523, %522 ], [ %511, %554 ], [ %511, %605 ], [ %511, %563 ], [ %511, %656 ], [ %511, %645 ], [ %511, %569 ], [ %511, %.preheader ], [ %511, %661 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %672 = icmp ult i64 %671, -119
  %673 = getelementptr inbounds nuw i8, ptr %294, i64 %671
  br i1 %672, label %674, label %.loopexit45

674:                                              ; preds = %.loopexit
  %675 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %293, i32 -1)
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !86
  br i1 %676, label %677, label %678, !prof !109, !nosanitize !86

677:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !86
  unreachable, !nosanitize !86

678:                                              ; preds = %674
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !86
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %283, !llvm.loop !160

681:                                              ; preds = %678
  %682 = icmp eq ptr %504, %3
  %683 = icmp eq i32 %505, 64
  %684 = select i1 %682, i1 %683, i1 false
  br i1 %684, label %685, label %.loopexit45

685:                                              ; preds = %681
  %686 = trunc i64 %374 to i32
  store i32 %686, ptr %35, align 4, !tbaa !30
  %687 = trunc i64 %373 to i32
  store i32 %687, ptr %39, align 4, !tbaa !30
  %688 = trunc i64 %375 to i32
  store i32 %688, ptr %43, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %689 = load ptr, ptr %8, align 8, !tbaa !38
  br label %691

.loopexit45:                                      ; preds = %.loopexit, %681, %547, %116, %104, %53, %33
  %690 = phi i64 [ -20, %547 ], [ -20, %116 ], [ -20, %681 ], [ -20, %33 ], [ -20, %53 ], [ -20, %104 ], [ %671, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %710

691:                                              ; preds = %685, %19
  %692 = phi ptr [ %689, %685 ], [ %22, %19 ]
  %693 = phi ptr [ %673, %685 ], [ %1, %19 ]
  %694 = ptrtoint ptr %25 to i64
  %695 = ptrtoint ptr %692 to i64
  %696 = sub i64 %694, %695
  %697 = ptrtoint ptr %20 to i64
  %698 = ptrtoint ptr %693 to i64
  %699 = sub i64 %697, %698
  %700 = icmp ugt i64 %696, %699
  br i1 %700, label %710, label %701

701:                                              ; preds = %691
  %702 = icmp eq ptr %693, null
  br i1 %702, label %706, label %703

703:                                              ; preds = %701
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %693, ptr align 1 %692, i64 %696, i1 false)
  %704 = getelementptr inbounds nuw i8, ptr %693, i64 %696
  %705 = ptrtoint ptr %704 to i64
  br label %706

706:                                              ; preds = %703, %701
  %707 = phi i64 [ 0, %701 ], [ %705, %703 ]
  %708 = ptrtoint ptr %1 to i64
  %709 = sub i64 %707, %708
  br label %710

710:                                              ; preds = %706, %691, %.loopexit45
  %711 = phi i64 [ %709, %706 ], [ %690, %.loopexit45 ], [ -70, %691 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %711
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

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
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noinline }

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
