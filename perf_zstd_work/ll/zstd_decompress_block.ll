; ModuleID = '/mydata/zstd/lib/decompress/zstd_decompress_block.c'
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

22:                                               ; preds = %19, %20, %5, %3
  %23 = phi i64 [ -72, %3 ], [ -20, %19 ], [ %21, %20 ], [ 1, %5 ]
  ret i64 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 -70, 1048579) i64 @ZSTD_decodeLiteralsBlock_wrapper(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -70, 1048579) i64 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = icmp ult i64 %2, 2
  br i1 %7, label %366, label %8

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

18:                                               ; preds = %8, %14
  %19 = phi i64 [ %17, %14 ], [ 131072, %8 ]
  switch i8 %10, label %365 [
    i8 3, label %20
    i8 2, label %24
    i8 0, label %187
    i8 1, label %281
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %366, label %24

24:                                               ; preds = %18, %20
  %25 = icmp ult i64 %2, 5
  br i1 %25, label %366, label %26

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

62:                                               ; preds = %40, %47, %52
  %63 = phi i1 [ %41, %40 ], [ true, %52 ], [ true, %47 ]
  %64 = phi i64 [ %46, %40 ], [ %61, %52 ], [ %51, %47 ]
  %65 = phi i32 [ %43, %40 ], [ %54, %52 ], [ %49, %47 ]
  %66 = phi i64 [ 3, %40 ], [ 5, %52 ], [ 4, %47 ]
  %67 = zext nneg i32 %65 to i64
  %68 = icmp ne i32 %65, 0
  %69 = icmp eq ptr %3, null
  %70 = and i1 %69, %68
  br i1 %70, label %366, label %71

71:                                               ; preds = %62
  %72 = icmp samesign ult i64 %19, %67
  br i1 %72, label %366, label %73

73:                                               ; preds = %71
  %74 = icmp samesign ult i32 %65, 6
  %75 = select i1 %63, i1 %74, i1 false
  br i1 %75, label %366, label %76

76:                                               ; preds = %73
  %77 = add nuw nsw i64 %66, %64
  %78 = icmp ugt i64 %77, %2
  br i1 %78, label %366, label %79

79:                                               ; preds = %76
  %80 = icmp samesign ult i64 %30, %67
  br i1 %80, label %366, label %81

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

109:                                              ; preds = %93, %100, %104
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
  br i1 %119, label %120, label %143

120:                                              ; preds = %109
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %122 = load ptr, ptr %121, align 8, !tbaa !37
  %123 = getelementptr inbounds i8, ptr %122, i64 64
  %124 = getelementptr inbounds i8, ptr %122, i64 128
  %125 = getelementptr inbounds i8, ptr %122, i64 192
  %126 = getelementptr inbounds i8, ptr %122, i64 256
  %127 = getelementptr inbounds i8, ptr %122, i64 320
  %128 = getelementptr inbounds i8, ptr %122, i64 384
  %129 = getelementptr inbounds i8, ptr %122, i64 448
  br label %130

130:                                              ; preds = %134, %120
  %131 = phi i64 [ 0, %120 ], [ %142, %134 ]
  %132 = getelementptr inbounds nuw i8, ptr %122, i64 %131
  tail call void @llvm.prefetch.p0(ptr %132, i32 0, i32 2, i32 1)
  %133 = icmp samesign ult i64 %131, 16324
  br i1 %133, label %134, label %143, !llvm.loop !38

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %123, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %135, i32 0, i32 2, i32 1)
  %136 = getelementptr inbounds i8, ptr %124, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %136, i32 0, i32 2, i32 1)
  %137 = getelementptr inbounds i8, ptr %125, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %137, i32 0, i32 2, i32 1)
  %138 = getelementptr inbounds i8, ptr %126, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %138, i32 0, i32 2, i32 1)
  %139 = getelementptr inbounds i8, ptr %127, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %139, i32 0, i32 2, i32 1)
  %140 = getelementptr inbounds i8, ptr %128, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %140, i32 0, i32 2, i32 1)
  %141 = getelementptr inbounds i8, ptr %129, i64 %131
  tail call void @llvm.prefetch.p0(ptr nonnull %141, i32 0, i32 2, i32 1)
  %142 = add nuw nsw i64 %131, 512
  br label %130

143:                                              ; preds = %130, %109
  %144 = icmp eq i8 %10, 3
  br i1 %144, label %145, label %153

145:                                              ; preds = %143
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 %66
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load ptr, ptr %147, align 8, !tbaa !37
  br i1 %63, label %151, label %149

149:                                              ; preds = %145
  %150 = tail call i64 @HUF_decompress1X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %146, i64 noundef %64, ptr noundef %148, i32 noundef %39) #18
  br label %161

151:                                              ; preds = %145
  %152 = tail call i64 @HUF_decompress4X_usingDTable(ptr noundef %110, i64 noundef %67, ptr noundef nonnull %146, i64 noundef %64, ptr noundef %148, i32 noundef %39) #18
  br label %161

153:                                              ; preds = %143
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 %66
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 27324
  br i1 %63, label %159, label %157

157:                                              ; preds = %153
  %158 = tail call i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef nonnull %154, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %155, i64 noundef %64, ptr noundef nonnull %156, i64 noundef 2560, i32 noundef %39) #18
  br label %161

159:                                              ; preds = %153
  %160 = tail call i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef nonnull %154, ptr noundef %110, i64 noundef %67, ptr noundef nonnull %155, i64 noundef %64, ptr noundef nonnull %156, i64 noundef 2560, i32 noundef %39) #18
  br label %161

161:                                              ; preds = %157, %159, %149, %151
  %162 = phi i64 [ %150, %149 ], [ %152, %151 ], [ %158, %157 ], [ %160, %159 ]
  %163 = load i32, ptr %114, align 8, !tbaa !35
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %167 = load ptr, ptr %113, align 8, !tbaa !34
  %168 = getelementptr inbounds i8, ptr %167, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %166, ptr noundef nonnull align 1 dereferenceable(65536) %168, i64 65536, i1 false)
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %170 = load ptr, ptr %169, align 8, !tbaa !33
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 65504
  %172 = add nsw i64 %67, -65536
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %171, ptr align 1 %170, i64 %172, i1 false)
  %173 = load <2 x ptr>, ptr %169, align 8, !tbaa !40
  %174 = getelementptr i8, <2 x ptr> %173, <2 x i64> <i64 65504, i64 -32>
  store <2 x ptr> %174, ptr %169, align 8, !tbaa !40
  br label %175

175:                                              ; preds = %161, %165
  %176 = icmp ult i64 %162, -119
  br i1 %176, label %177, label %366

177:                                              ; preds = %175
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %179 = load ptr, ptr %178, align 8, !tbaa !33
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %179, ptr %180, align 8, !tbaa !41
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %67, ptr %181, align 8, !tbaa !42
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 30000
  store i32 1, ptr %182, align 8, !tbaa !29
  %183 = icmp eq i8 %10, 2
  br i1 %183, label %184, label %366

184:                                              ; preds = %177
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 10296
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %185, ptr %186, align 8, !tbaa !37
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
  %211 = phi i64 [ %194, %192 ], [ %209, %201 ], [ %198, %195 ]
  %212 = phi i64 [ 1, %192 ], [ 3, %201 ], [ 2, %195 ]
  %213 = icmp ne i64 %211, 0
  %214 = icmp eq ptr %3, null
  %215 = and i1 %214, %213
  br i1 %215, label %366, label %216

216:                                              ; preds = %210
  %217 = icmp samesign ugt i64 %211, %19
  br i1 %217, label %366, label %218

218:                                              ; preds = %216
  %219 = icmp ult i64 %4, %211
  br i1 %219, label %366, label %220

220:                                              ; preds = %218
  br i1 %13, label %225, label %221

221:                                              ; preds = %220
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %223 = load i32, ptr %222, align 8, !tbaa !28
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %221, %220
  %226 = phi i64 [ %224, %221 ], [ 131072, %220 ]
  %227 = icmp eq i32 %5, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = add nuw nsw i64 %211, 64
  %230 = add nuw nsw i64 %229, %226
  %231 = icmp ugt i64 %4, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 %226
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 32
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %234, ptr %235, align 8, !tbaa !33
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 %211
  br label %251

237:                                              ; preds = %228, %225
  %238 = icmp samesign ult i64 %211, 65537
  br i1 %238, label %239, label %243

239:                                              ; preds = %237
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %240, ptr %241, align 8, !tbaa !33
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 %211
  br label %251

243:                                              ; preds = %237
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 %191
  %245 = sub nsw i64 0, %211
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 65504
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 %211
  %249 = getelementptr inbounds i8, ptr %248, i64 -65536
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %247, ptr %250, align 8, !tbaa !33
  br label %251

251:                                              ; preds = %232, %239, %243
  %252 = phi ptr [ %240, %239 ], [ %247, %243 ], [ %234, %232 ]
  %253 = phi ptr [ %242, %239 ], [ %249, %243 ], [ %236, %232 ]
  %254 = phi i1 [ false, %239 ], [ true, %243 ], [ false, %232 ]
  %255 = phi i32 [ 0, %239 ], [ 2, %243 ], [ 1, %232 ]
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %253, ptr %256, align 8, !tbaa !34
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %255, ptr %257, align 8, !tbaa !35
  %258 = add nuw nsw i64 %212, %211
  %259 = add nuw nsw i64 %258, 32
  %260 = icmp ugt i64 %259, %2
  br i1 %260, label %261, label %276

261:                                              ; preds = %251
  %262 = icmp samesign ugt i64 %258, %2
  br i1 %262, label %366, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 %212
  br i1 %254, label %265, label %270

265:                                              ; preds = %263
  %266 = add nsw i64 %211, -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %252, ptr nonnull align 1 %264, i64 %266, i1 false)
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %268 = getelementptr inbounds nuw i8, ptr %264, i64 %211
  %269 = getelementptr inbounds i8, ptr %268, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %267, ptr noundef nonnull align 1 dereferenceable(65536) %269, i64 65536, i1 false)
  br label %271

270:                                              ; preds = %263
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %252, ptr nonnull align 1 %264, i64 %211, i1 false)
  br label %271

271:                                              ; preds = %270, %265
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %273 = load ptr, ptr %272, align 8, !tbaa !33
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %273, ptr %274, align 8, !tbaa !41
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %211, ptr %275, align 8, !tbaa !42
  br label %366

276:                                              ; preds = %251
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 %212
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %277, ptr %278, align 8, !tbaa !41
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %211, ptr %279, align 8, !tbaa !42
  %280 = getelementptr inbounds nuw i8, ptr %277, i64 %211
  store ptr %280, ptr %256, align 8, !tbaa !34
  store i32 0, ptr %257, align 8, !tbaa !35
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
  %307 = phi i64 [ %288, %286 ], [ %305, %297 ], [ %294, %291 ]
  %308 = phi i64 [ 1, %286 ], [ 3, %297 ], [ 2, %291 ]
  %309 = icmp ne i64 %307, 0
  %310 = icmp eq ptr %3, null
  %311 = and i1 %310, %309
  br i1 %311, label %366, label %312

312:                                              ; preds = %306
  %313 = icmp samesign ugt i64 %307, %19
  br i1 %313, label %366, label %314

314:                                              ; preds = %312
  %315 = icmp ult i64 %4, %307
  br i1 %315, label %366, label %316

316:                                              ; preds = %314
  br i1 %13, label %321, label %317

317:                                              ; preds = %316
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %319 = load i32, ptr %318, align 8, !tbaa !28
  %320 = zext i32 %319 to i64
  br label %321

321:                                              ; preds = %317, %316
  %322 = phi i64 [ %320, %317 ], [ 131072, %316 ]
  %323 = icmp eq i32 %5, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = add nuw nsw i64 %307, 64
  %326 = add nuw nsw i64 %325, %322
  %327 = icmp ugt i64 %4, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = getelementptr inbounds nuw i8, ptr %3, i64 %322
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 32
  br label %350

331:                                              ; preds = %324, %321
  %332 = icmp samesign ult i64 %307, 65537
  br i1 %332, label %333, label %335

333:                                              ; preds = %331
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  br label %350

335:                                              ; preds = %331
  %336 = getelementptr inbounds nuw i8, ptr %3, i64 %285
  %337 = sub nsw i64 0, %307
  %338 = getelementptr inbounds i8, ptr %336, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 65504
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 %307
  %341 = getelementptr inbounds i8, ptr %340, i64 -65536
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %339, ptr %342, align 8, !tbaa !33
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %341, ptr %343, align 8, !tbaa !34
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 2, ptr %344, align 8, !tbaa !35
  %345 = getelementptr inbounds nuw i8, ptr %1, i64 %308
  %346 = load i8, ptr %345, align 1, !tbaa !9
  %347 = add nsw i64 %307, -65536
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %339, i8 %346, i64 %347, i1 false)
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %349 = load i8, ptr %345, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %348, i8 %349, i64 65536, i1 false)
  br label %359

350:                                              ; preds = %333, %328
  %351 = phi ptr [ %334, %333 ], [ %330, %328 ]
  %352 = phi i32 [ 0, %333 ], [ 1, %328 ]
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %351, ptr %353, align 8, !tbaa !33
  %354 = getelementptr inbounds nuw i8, ptr %351, i64 %307
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %354, ptr %355, align 8, !tbaa !34
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %352, ptr %356, align 8, !tbaa !35
  %357 = getelementptr inbounds nuw i8, ptr %1, i64 %308
  %358 = load i8, ptr %357, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %351, i8 %358, i64 %307, i1 false)
  br label %359

359:                                              ; preds = %350, %335
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %361 = load ptr, ptr %360, align 8, !tbaa !33
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %361, ptr %362, align 8, !tbaa !41
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %307, ptr %363, align 8, !tbaa !42
  %364 = add nuw nsw i64 %308, 1
  br label %366

365:                                              ; preds = %18
  unreachable

366:                                              ; preds = %20, %24, %177, %184, %175, %79, %76, %73, %71, %62, %261, %218, %216, %210, %199, %276, %271, %314, %312, %306, %295, %289, %359, %6
  %367 = phi i64 [ -20, %6 ], [ -30, %20 ], [ -20, %24 ], [ -70, %62 ], [ -20, %71 ], [ -24, %73 ], [ -20, %76 ], [ -70, %79 ], [ -20, %175 ], [ %77, %184 ], [ %77, %177 ], [ %258, %271 ], [ %258, %276 ], [ -20, %199 ], [ -70, %210 ], [ -20, %216 ], [ -70, %218 ], [ -20, %261 ], [ %364, %359 ], [ -20, %289 ], [ -20, %295 ], [ -70, %306 ], [ -20, %312 ], [ -70, %314 ]
  ret i64 %367
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_buildFSETable(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef captures(none) %6, i64 %7, i32 noundef %8) local_unnamed_addr #3 {
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %215

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
  br label %54

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
  %31 = getelementptr inbounds nuw i16, ptr %1, i64 %28
  %32 = load i16, ptr %31, align 2, !tbaa !5
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = add i32 %29, -1
  %36 = zext i32 %29 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = getelementptr inbounds nuw i8, ptr %18, i64 %37
  %39 = trunc nuw i64 %28 to i32
  store i32 %39, ptr %38, align 4, !tbaa !43
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
  %48 = getelementptr inbounds nuw i16, ptr %6, i64 %28
  store i16 %45, ptr %48, align 2, !tbaa !5
  %49 = add nuw nsw i64 %28, 1
  %50 = icmp eq i64 %49, %26
  br i1 %50, label %51, label %27, !llvm.loop !45

51:                                               ; preds = %44
  store i32 %46, ptr %0, align 4
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %52, align 4
  %53 = icmp eq i32 %47, %17
  br i1 %53, label %63, label %127

54:                                               ; preds = %101, %20
  %55 = lshr i32 %15, 1
  %56 = lshr i32 %15, 3
  %57 = add nuw nsw i32 %56, 3
  %58 = add nuw nsw i32 %57, %55
  %59 = zext nneg i32 %17 to i64
  %60 = zext nneg i32 %58 to i64
  %61 = zext i32 %15 to i64
  %62 = shl nuw nsw i64 %60, 1
  br label %107

63:                                               ; preds = %51, %101
  %64 = phi i64 [ %104, %101 ], [ 0, %51 ]
  %65 = phi i64 [ %103, %101 ], [ 0, %51 ]
  %66 = phi i64 [ %105, %101 ], [ 0, %51 ]
  %67 = getelementptr inbounds nuw i16, ptr %1, i64 %64
  %68 = load i16, ptr %67, align 2, !tbaa !5
  %69 = getelementptr inbounds nuw i8, ptr %16, i64 %65
  store i64 %66, ptr %69, align 1, !tbaa !46
  %70 = icmp sgt i16 %68, 8
  br i1 %70, label %71, label %101

71:                                               ; preds = %63
  %72 = zext nneg i16 %68 to i64
  %73 = tail call i64 @llvm.umax.i64(i64 %72, i64 16)
  %74 = add nsw i64 %73, -9
  %75 = lshr i64 %74, 3
  %76 = add nuw nsw i64 %75, 1
  %77 = icmp ult i64 %74, 24
  br i1 %77, label %94, label %78

78:                                               ; preds = %71
  %79 = and i64 %76, 4611686018427387900
  %80 = shl i64 %79, 3
  %81 = or disjoint i64 %80, 8
  %82 = insertelement <2 x i64> poison, i64 %66, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %84

84:                                               ; preds = %84, %78
  %85 = phi i64 [ 0, %78 ], [ %90, %84 ]
  %86 = shl i64 %85, 3
  %87 = getelementptr inbounds nuw i8, ptr %69, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 24
  store <2 x i64> %83, ptr %88, align 1, !tbaa !46
  store <2 x i64> %83, ptr %89, align 1, !tbaa !46
  %90 = add nuw i64 %85, 4
  %91 = icmp eq i64 %90, %79
  br i1 %91, label %92, label %84, !llvm.loop !47

92:                                               ; preds = %84
  %93 = icmp eq i64 %76, %79
  br i1 %93, label %101, label %94

94:                                               ; preds = %71, %92
  %95 = phi i64 [ 8, %71 ], [ %81, %92 ]
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ %99, %96 ], [ %95, %94 ]
  %98 = getelementptr inbounds nuw i8, ptr %69, i64 %97
  store i64 %66, ptr %98, align 1, !tbaa !46
  %99 = add nuw nsw i64 %97, 8
  %100 = icmp samesign ult i64 %99, %72
  br i1 %100, label %96, label %101, !llvm.loop !50

101:                                              ; preds = %96, %92, %63
  %102 = sext i16 %68 to i64
  %103 = add i64 %65, %102
  %104 = add nuw nsw i64 %64, 1
  %105 = add i64 %66, 72340172838076673
  %106 = icmp eq i64 %104, %26
  br i1 %106, label %54, label %63, !llvm.loop !51

107:                                              ; preds = %107, %54
  %108 = phi i64 [ 0, %54 ], [ %125, %107 ]
  %109 = phi i64 [ 0, %54 ], [ %124, %107 ]
  %110 = getelementptr inbounds nuw i8, ptr %16, i64 %108
  %111 = and i64 %109, %59
  %112 = load i8, ptr %110, align 1, !tbaa !9
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i64 %111, 3
  %115 = getelementptr inbounds nuw i8, ptr %18, i64 %114
  store i32 %113, ptr %115, align 4, !tbaa !43
  %116 = add nuw nsw i64 %109, %60
  %117 = and i64 %116, %59
  %118 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !9
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i64 %117, 3
  %122 = getelementptr inbounds nuw i8, ptr %18, i64 %121
  store i32 %120, ptr %122, align 4, !tbaa !43
  %123 = add nuw nsw i64 %109, %62
  %124 = and i64 %123, %59
  %125 = add nuw nsw i64 %108, 2
  %126 = icmp samesign ult i64 %125, %61
  br i1 %126, label %107, label %187, !llvm.loop !52

127:                                              ; preds = %51
  %128 = lshr i32 %15, 3
  %129 = lshr i32 %15, 1
  %130 = add nuw nsw i32 %128, 3
  %131 = add nuw nsw i32 %130, %129
  br label %132

132:                                              ; preds = %181, %127
  %133 = phi i64 [ 0, %127 ], [ %183, %181 ]
  %134 = phi i32 [ 0, %127 ], [ %182, %181 ]
  %135 = getelementptr inbounds nuw i16, ptr %1, i64 %133
  %136 = load i16, ptr %135, align 2, !tbaa !5
  %137 = icmp sgt i16 %136, 0
  br i1 %137, label %138, label %181

138:                                              ; preds = %132
  %139 = trunc nuw i64 %133 to i32
  %140 = icmp eq i16 %136, 1
  br i1 %140, label %167, label %141

141:                                              ; preds = %138
  %142 = and i16 %136, 32766
  %143 = zext nneg i16 %142 to i32
  br label %144

144:                                              ; preds = %164, %141
  %145 = phi i32 [ %134, %141 ], [ %162, %164 ]
  %146 = phi i32 [ 0, %141 ], [ %165, %164 ]
  %147 = zext nneg i32 %145 to i64
  %148 = shl nuw nsw i64 %147, 3
  %149 = getelementptr inbounds nuw i8, ptr %18, i64 %148
  store i32 %139, ptr %149, align 4, !tbaa !43
  br label %150

150:                                              ; preds = %150, %144
  %151 = phi i32 [ %145, %144 ], [ %153, %150 ]
  %152 = add nuw i32 %131, %151
  %153 = and i32 %152, %17
  %154 = icmp ugt i32 %153, %47
  br i1 %154, label %150, label %155, !prof !53, !llvm.loop !54

155:                                              ; preds = %150
  %156 = zext nneg i32 %153 to i64
  %157 = shl nuw nsw i64 %156, 3
  %158 = getelementptr inbounds nuw i8, ptr %18, i64 %157
  store i32 %139, ptr %158, align 4, !tbaa !43
  br label %159

159:                                              ; preds = %159, %155
  %160 = phi i32 [ %153, %155 ], [ %162, %159 ]
  %161 = add nuw i32 %131, %160
  %162 = and i32 %161, %17
  %163 = icmp ugt i32 %162, %47
  br i1 %163, label %159, label %164, !prof !53, !llvm.loop !54

164:                                              ; preds = %159
  %165 = add i32 %146, 2
  %166 = icmp eq i32 %165, %143
  br i1 %166, label %167, label %144, !llvm.loop !55

167:                                              ; preds = %164, %138
  %168 = phi i32 [ poison, %138 ], [ %162, %164 ]
  %169 = phi i32 [ %134, %138 ], [ %162, %164 ]
  %170 = and i16 %136, 1
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %167
  %173 = zext nneg i32 %169 to i64
  %174 = shl nuw nsw i64 %173, 3
  %175 = getelementptr inbounds nuw i8, ptr %18, i64 %174
  store i32 %139, ptr %175, align 4, !tbaa !43
  br label %176

176:                                              ; preds = %176, %172
  %177 = phi i32 [ %169, %172 ], [ %179, %176 ]
  %178 = add nuw i32 %131, %177
  %179 = and i32 %178, %17
  %180 = icmp ugt i32 %179, %47
  br i1 %180, label %176, label %181, !prof !53, !llvm.loop !54

181:                                              ; preds = %167, %176, %132
  %182 = phi i32 [ %134, %132 ], [ %168, %167 ], [ %179, %176 ]
  %183 = add nuw nsw i64 %133, 1
  %184 = icmp eq i64 %183, %26
  br i1 %184, label %185, label %132, !llvm.loop !56

185:                                              ; preds = %181
  %186 = zext i32 %15 to i64
  br label %187

187:                                              ; preds = %107, %185
  %188 = phi i64 [ %186, %185 ], [ %61, %107 ]
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi i64 [ 0, %187 ], [ %213, %189 ]
  %191 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %13, i64 %190
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %193 = load i32, ptr %192, align 4, !tbaa !43
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds nuw i16, ptr %6, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !5
  %197 = add i16 %196, 1
  store i16 %197, ptr %195, align 2, !tbaa !5
  %198 = zext i16 %196 to i32
  %199 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %198, i1 true)
  %200 = xor i32 %199, 31
  %201 = sub i32 %5, %200
  %202 = trunc i32 %201 to i8
  %203 = getelementptr inbounds nuw i8, ptr %191, i64 3
  store i8 %202, ptr %203, align 1, !tbaa !57
  %204 = and i32 %201, 255
  %205 = shl i32 %198, %204
  %206 = sub i32 %205, %15
  %207 = trunc i32 %206 to i16
  store i16 %207, ptr %191, align 4, !tbaa !58
  %208 = getelementptr inbounds nuw i8, ptr %4, i64 %194
  %209 = load i8, ptr %208, align 1, !tbaa !9
  %210 = getelementptr inbounds nuw i8, ptr %191, i64 2
  store i8 %209, ptr %210, align 2, !tbaa !59
  %211 = getelementptr inbounds nuw i32, ptr %3, i64 %194
  %212 = load i32, ptr %211, align 4, !tbaa !30
  store i32 %212, ptr %192, align 4, !tbaa !43
  %213 = add nuw nsw i64 %190, 1
  %214 = icmp eq i64 %213, %188
  br i1 %214, label %215, label %189, !llvm.loop !60

215:                                              ; preds = %189, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef captures(none) %6) unnamed_addr #4 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = add i32 %2, 1
  %10 = shl nuw i32 1, %5
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 106
  %12 = add i32 %10, -1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  store i32 1, ptr %0, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %16, align 4
  %17 = lshr i32 %10, 1
  %18 = lshr i32 %10, 3
  %19 = add nuw nsw i32 %18, 3
  %20 = add nuw nsw i32 %19, %17
  br label %59

21:                                               ; preds = %7
  %22 = add i32 %5, -1
  %23 = shl i32 65536, %22
  %24 = ashr exact i32 %23, 16
  %25 = zext i32 %9 to i64
  br label %26

26:                                               ; preds = %21, %43
  %27 = phi i64 [ 0, %21 ], [ %48, %43 ]
  %28 = phi i32 [ %12, %21 ], [ %46, %43 ]
  %29 = phi i32 [ 1, %21 ], [ %45, %43 ]
  %30 = getelementptr inbounds nuw i16, ptr %1, i64 %27
  %31 = load i16, ptr %30, align 2, !tbaa !5
  %32 = icmp eq i16 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = add i32 %28, -1
  %35 = zext i32 %28 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = getelementptr inbounds nuw i8, ptr %13, i64 %36
  %38 = trunc nuw i64 %27 to i32
  store i32 %38, ptr %37, align 4, !tbaa !43
  br label %43

39:                                               ; preds = %26
  %40 = sext i16 %31 to i32
  %41 = icmp sgt i32 %24, %40
  %42 = select i1 %41, i32 %29, i32 0
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i16 [ 1, %33 ], [ %31, %39 ]
  %45 = phi i32 [ %29, %33 ], [ %42, %39 ]
  %46 = phi i32 [ %34, %33 ], [ %28, %39 ]
  %47 = getelementptr inbounds nuw i16, ptr %6, i64 %27
  store i16 %44, ptr %47, align 2, !tbaa !5
  %48 = add nuw nsw i64 %27, 1
  %49 = icmp eq i64 %48, %25
  br i1 %49, label %50, label %26, !llvm.loop !45

50:                                               ; preds = %43
  store i32 %45, ptr %0, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %51, align 4
  %52 = icmp eq i32 %46, %12
  %53 = zext i32 %9 to i64
  br i1 %52, label %54, label %129

54:                                               ; preds = %50
  %55 = lshr i32 %10, 1
  %56 = lshr i32 %10, 3
  %57 = add nuw nsw i32 %56, 3
  %58 = add nuw nsw i32 %57, %55
  br label %65

59:                                               ; preds = %103, %15
  %60 = phi i32 [ %20, %15 ], [ %58, %103 ]
  %61 = zext i32 %12 to i64
  %62 = zext i32 %60 to i64
  %63 = zext i32 %10 to i64
  %64 = shl nuw nsw i64 %62, 1
  br label %109

65:                                               ; preds = %54, %103
  %66 = phi i64 [ 0, %54 ], [ %106, %103 ]
  %67 = phi i64 [ 0, %54 ], [ %105, %103 ]
  %68 = phi i64 [ 0, %54 ], [ %107, %103 ]
  %69 = getelementptr inbounds nuw i16, ptr %1, i64 %66
  %70 = load i16, ptr %69, align 2, !tbaa !5
  %71 = getelementptr inbounds nuw i8, ptr %11, i64 %67
  store i64 %68, ptr %71, align 1, !tbaa !46
  %72 = icmp sgt i16 %70, 8
  br i1 %72, label %73, label %103

73:                                               ; preds = %65
  %74 = zext nneg i16 %70 to i64
  %75 = tail call i64 @llvm.umax.i64(i64 %74, i64 16)
  %76 = add nsw i64 %75, -9
  %77 = lshr i64 %76, 3
  %78 = add nuw nsw i64 %77, 1
  %79 = icmp ult i64 %76, 24
  br i1 %79, label %96, label %80

80:                                               ; preds = %73
  %81 = and i64 %78, 4611686018427387900
  %82 = shl i64 %81, 3
  %83 = or disjoint i64 %82, 8
  %84 = insertelement <2 x i64> poison, i64 %68, i64 0
  %85 = shufflevector <2 x i64> %84, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %86

86:                                               ; preds = %86, %80
  %87 = phi i64 [ 0, %80 ], [ %92, %86 ]
  %88 = shl i64 %87, 3
  %89 = getelementptr inbounds nuw i8, ptr %71, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 24
  store <2 x i64> %85, ptr %90, align 1, !tbaa !46
  store <2 x i64> %85, ptr %91, align 1, !tbaa !46
  %92 = add nuw i64 %87, 4
  %93 = icmp eq i64 %92, %81
  br i1 %93, label %94, label %86, !llvm.loop !61

94:                                               ; preds = %86
  %95 = icmp eq i64 %78, %81
  br i1 %95, label %103, label %96

96:                                               ; preds = %73, %94
  %97 = phi i64 [ 8, %73 ], [ %83, %94 ]
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ %101, %98 ], [ %97, %96 ]
  %100 = getelementptr inbounds nuw i8, ptr %71, i64 %99
  store i64 %68, ptr %100, align 1, !tbaa !46
  %101 = add nuw nsw i64 %99, 8
  %102 = icmp samesign ult i64 %101, %74
  br i1 %102, label %98, label %103, !llvm.loop !62

103:                                              ; preds = %98, %94, %65
  %104 = sext i16 %70 to i64
  %105 = add i64 %67, %104
  %106 = add nuw nsw i64 %66, 1
  %107 = add i64 %68, 72340172838076673
  %108 = icmp eq i64 %106, %53
  br i1 %108, label %59, label %65, !llvm.loop !51

109:                                              ; preds = %59, %109
  %110 = phi i64 [ 0, %59 ], [ %127, %109 ]
  %111 = phi i64 [ 0, %59 ], [ %126, %109 ]
  %112 = getelementptr inbounds nuw i8, ptr %11, i64 %110
  %113 = and i64 %111, %61
  %114 = load i8, ptr %112, align 1, !tbaa !9
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i64 %113, 3
  %117 = getelementptr inbounds nuw i8, ptr %13, i64 %116
  store i32 %115, ptr %117, align 4, !tbaa !43
  %118 = add nuw nsw i64 %111, %62
  %119 = and i64 %118, %61
  %120 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !9
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i64 %119, 3
  %124 = getelementptr inbounds nuw i8, ptr %13, i64 %123
  store i32 %122, ptr %124, align 4, !tbaa !43
  %125 = add nuw nsw i64 %111, %64
  %126 = and i64 %125, %61
  %127 = add nuw nsw i64 %110, 2
  %128 = icmp samesign ult i64 %127, %63
  br i1 %128, label %109, label %187, !llvm.loop !52

129:                                              ; preds = %50
  %130 = lshr i32 %10, 3
  %131 = lshr i32 %10, 1
  %132 = add nuw nsw i32 %130, 3
  %133 = add nuw nsw i32 %132, %131
  br label %134

134:                                              ; preds = %129, %183
  %135 = phi i64 [ 0, %129 ], [ %185, %183 ]
  %136 = phi i32 [ 0, %129 ], [ %184, %183 ]
  %137 = getelementptr inbounds nuw i16, ptr %1, i64 %135
  %138 = load i16, ptr %137, align 2, !tbaa !5
  %139 = icmp sgt i16 %138, 0
  br i1 %139, label %140, label %183

140:                                              ; preds = %134
  %141 = trunc nuw i64 %135 to i32
  %142 = icmp eq i16 %138, 1
  br i1 %142, label %169, label %143

143:                                              ; preds = %140
  %144 = and i16 %138, 32766
  %145 = zext nneg i16 %144 to i32
  br label %146

146:                                              ; preds = %166, %143
  %147 = phi i32 [ %136, %143 ], [ %164, %166 ]
  %148 = phi i32 [ 0, %143 ], [ %167, %166 ]
  %149 = zext nneg i32 %147 to i64
  %150 = shl nuw nsw i64 %149, 3
  %151 = getelementptr inbounds nuw i8, ptr %13, i64 %150
  store i32 %141, ptr %151, align 4, !tbaa !43
  br label %152

152:                                              ; preds = %152, %146
  %153 = phi i32 [ %147, %146 ], [ %155, %152 ]
  %154 = add nuw i32 %133, %153
  %155 = and i32 %154, %12
  %156 = icmp ugt i32 %155, %46
  br i1 %156, label %152, label %157, !prof !53, !llvm.loop !54

157:                                              ; preds = %152
  %158 = zext nneg i32 %155 to i64
  %159 = shl nuw nsw i64 %158, 3
  %160 = getelementptr inbounds nuw i8, ptr %13, i64 %159
  store i32 %141, ptr %160, align 4, !tbaa !43
  br label %161

161:                                              ; preds = %161, %157
  %162 = phi i32 [ %155, %157 ], [ %164, %161 ]
  %163 = add nuw i32 %133, %162
  %164 = and i32 %163, %12
  %165 = icmp ugt i32 %164, %46
  br i1 %165, label %161, label %166, !prof !53, !llvm.loop !54

166:                                              ; preds = %161
  %167 = add i32 %148, 2
  %168 = icmp eq i32 %167, %145
  br i1 %168, label %169, label %146, !llvm.loop !55

169:                                              ; preds = %166, %140
  %170 = phi i32 [ poison, %140 ], [ %164, %166 ]
  %171 = phi i32 [ %136, %140 ], [ %164, %166 ]
  %172 = and i16 %138, 1
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %169
  %175 = zext nneg i32 %171 to i64
  %176 = shl nuw nsw i64 %175, 3
  %177 = getelementptr inbounds nuw i8, ptr %13, i64 %176
  store i32 %141, ptr %177, align 4, !tbaa !43
  br label %178

178:                                              ; preds = %178, %174
  %179 = phi i32 [ %171, %174 ], [ %181, %178 ]
  %180 = add nuw i32 %133, %179
  %181 = and i32 %180, %12
  %182 = icmp ugt i32 %181, %46
  br i1 %182, label %178, label %183, !prof !53, !llvm.loop !54

183:                                              ; preds = %169, %178, %134
  %184 = phi i32 [ %136, %134 ], [ %170, %169 ], [ %181, %178 ]
  %185 = add nuw nsw i64 %135, 1
  %186 = icmp eq i64 %185, %53
  br i1 %186, label %187, label %134, !llvm.loop !56

187:                                              ; preds = %183, %109
  %188 = zext i32 %10 to i64
  br label %189

189:                                              ; preds = %187, %189
  %190 = phi i64 [ 0, %187 ], [ %213, %189 ]
  %191 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %8, i64 %190
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %193 = load i32, ptr %192, align 4, !tbaa !43
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds nuw i16, ptr %6, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !5
  %197 = add i16 %196, 1
  store i16 %197, ptr %195, align 2, !tbaa !5
  %198 = zext i16 %196 to i32
  %199 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %198, i1 true)
  %200 = xor i32 %199, 31
  %201 = sub i32 %5, %200
  %202 = trunc i32 %201 to i8
  %203 = getelementptr inbounds nuw i8, ptr %191, i64 3
  store i8 %202, ptr %203, align 1, !tbaa !57
  %204 = and i32 %201, 255
  %205 = shl i32 %198, %204
  %206 = sub i32 %205, %10
  %207 = trunc i32 %206 to i16
  store i16 %207, ptr %191, align 4, !tbaa !58
  %208 = getelementptr inbounds nuw i8, ptr %4, i64 %194
  %209 = load i8, ptr %208, align 1, !tbaa !9
  %210 = getelementptr inbounds nuw i8, ptr %191, i64 2
  store i8 %209, ptr %210, align 2, !tbaa !59
  %211 = getelementptr inbounds nuw i32, ptr %3, i64 %194
  %212 = load i32, ptr %211, align 4, !tbaa !30
  store i32 %212, ptr %192, align 4, !tbaa !43
  %213 = add nuw nsw i64 %190, 1
  %214 = icmp eq i64 %213, %188
  br i1 %214, label %215, label %189, !llvm.loop !60

215:                                              ; preds = %189
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [53 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [53 x i16], align 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %269, label %13

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
  br i1 %21, label %269, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %24 = load i16, ptr %14, align 1, !tbaa !5
  %25 = zext i16 %24 to i32
  %26 = add nuw nsw i32 %25, 32512
  store i32 %26, ptr %1, align 4, !tbaa !30
  br label %43

27:                                               ; preds = %18
  %28 = icmp eq i64 %3, 1
  br i1 %28, label %269, label %29

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
  br label %269

43:                                               ; preds = %22, %36
  %44 = phi ptr [ %23, %22 ], [ %38, %36 ]
  %45 = phi i32 [ %26, %22 ], [ %37, %36 ]
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 1
  %47 = icmp ugt ptr %46, %11
  br i1 %47, label %269, label %48

48:                                               ; preds = %43
  %49 = load i8, ptr %44, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %269

53:                                               ; preds = %48
  %54 = lshr i32 %50, 6
  %55 = lshr i32 %50, 4
  %56 = and i32 %55, 3
  %57 = lshr exact i32 %50, 2
  %58 = and i32 %57, 3
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = ptrtoint ptr %11 to i64
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  %62 = load i32, ptr %61, align 4, !tbaa !63
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %64 = load i32, ptr %63, align 4, !tbaa !36
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 27324
  %66 = getelementptr i8, ptr %0, i64 30180
  %67 = load i32, ptr %66, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 35, ptr %8, align 4, !tbaa !30
  switch i32 %54, label %165 [
    i32 1, label %68
    i32 0, label %84
    i32 3, label %85
    i32 2, label %157
  ]

68:                                               ; preds = %53
  %69 = icmp eq ptr %11, %46
  br i1 %69, label %166, label %70

70:                                               ; preds = %68
  %71 = load i8, ptr %46, align 1, !tbaa !9
  %72 = icmp ugt i8 %71, 35
  br i1 %72, label %166, label %73

73:                                               ; preds = %70
  %74 = zext nneg i8 %71 to i64
  %75 = getelementptr inbounds nuw i32, ptr @LL_base, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !30
  %77 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %74
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %80, align 4, !tbaa !64
  store i32 0, ptr %59, align 4, !tbaa !66
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 0, ptr %81, align 1, !tbaa !57
  store i16 0, ptr %79, align 4, !tbaa !58
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %78, ptr %82, align 2, !tbaa !59
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %76, ptr %83, align 4, !tbaa !43
  store ptr %59, ptr %0, align 8, !tbaa !67
  br label %170

84:                                               ; preds = %53
  store ptr @LL_defaultDTable, ptr %0, align 8, !tbaa !67
  br label %170

85:                                               ; preds = %53
  %86 = icmp eq i32 %62, 0
  br i1 %86, label %166, label %87

87:                                               ; preds = %85
  %88 = icmp ne i32 %64, 0
  %89 = icmp samesign ugt i32 %45, 24
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %170

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8, !tbaa !67
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
  br label %170

157:                                              ; preds = %53
  %158 = ptrtoint ptr %46 to i64
  %159 = sub i64 %60, %158
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %10) #18
  %160 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %46, i64 noundef %159) #18
  %161 = icmp ult i64 %160, -119
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, ptr %9, align 4, !tbaa !30
  %164 = icmp ugt i32 %163, 9
  br i1 %164, label %167, label %168

165:                                              ; preds = %170, %53
  unreachable

166:                                              ; preds = %68, %70, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br label %269

167:                                              ; preds = %157, %162
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br label %269

168:                                              ; preds = %162
  %169 = load i32, ptr %8, align 4, !tbaa !30
  call void @ZSTD_buildFSETable(ptr noundef nonnull %59, ptr noundef nonnull %10, i32 noundef %169, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %163, ptr noundef nonnull %65, i64 poison, i32 noundef %67)
  store ptr %59, ptr %0, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  br label %170

170:                                              ; preds = %87, %84, %73, %91, %168
  %171 = phi i64 [ %160, %168 ], [ 0, %87 ], [ 0, %84 ], [ 1, %73 ], [ 0, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  %172 = getelementptr inbounds nuw i8, ptr %46, i64 %171
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %175 = load i32, ptr %61, align 4, !tbaa !63
  %176 = load i32, ptr %63, align 4, !tbaa !36
  %177 = load i32, ptr %66, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 31, ptr %5, align 4, !tbaa !30
  switch i32 %56, label %165 [
    i32 1, label %178
    i32 0, label %194
    i32 3, label %195
    i32 2, label %235
  ]

178:                                              ; preds = %170
  %179 = icmp eq ptr %11, %172
  br i1 %179, label %245, label %180

180:                                              ; preds = %178
  %181 = load i8, ptr %172, align 1, !tbaa !9
  %182 = icmp ugt i8 %181, 31
  br i1 %182, label %245, label %183

183:                                              ; preds = %180
  %184 = zext nneg i8 %181 to i64
  %185 = getelementptr inbounds nuw i32, ptr @OF_base, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !30
  %187 = getelementptr inbounds nuw i8, ptr @OF_bits, i64 %184
  %188 = load i8, ptr %187, align 1, !tbaa !9
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 4140
  store i32 0, ptr %190, align 4, !tbaa !64
  store i32 0, ptr %173, align 4, !tbaa !66
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 4147
  store i8 0, ptr %191, align 1, !tbaa !57
  store i16 0, ptr %189, align 4, !tbaa !58
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 4146
  store i8 %188, ptr %192, align 2, !tbaa !59
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 4148
  store i32 %186, ptr %193, align 4, !tbaa !43
  store ptr %173, ptr %174, align 8, !tbaa !67
  br label %243

194:                                              ; preds = %170
  store ptr @OF_defaultDTable, ptr %174, align 8, !tbaa !67
  br label %243

195:                                              ; preds = %170
  %196 = icmp eq i32 %175, 0
  br i1 %196, label %245, label %197

197:                                              ; preds = %195
  %198 = icmp ne i32 %176, 0
  %199 = icmp samesign ugt i32 %45, 24
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %201, label %243

201:                                              ; preds = %197
  %202 = load ptr, ptr %174, align 8, !tbaa !67
  call void @llvm.prefetch.p0(ptr %202, i32 0, i32 2, i32 1)
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %203, i32 0, i32 2, i32 1)
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %204, i32 0, i32 2, i32 1)
  %205 = getelementptr inbounds nuw i8, ptr %202, i64 192
  call void @llvm.prefetch.p0(ptr nonnull %205, i32 0, i32 2, i32 1)
  %206 = getelementptr inbounds nuw i8, ptr %202, i64 256
  call void @llvm.prefetch.p0(ptr nonnull %206, i32 0, i32 2, i32 1)
  %207 = getelementptr inbounds nuw i8, ptr %202, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %207, i32 0, i32 2, i32 1)
  %208 = getelementptr inbounds nuw i8, ptr %202, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %208, i32 0, i32 2, i32 1)
  %209 = getelementptr inbounds nuw i8, ptr %202, i64 448
  call void @llvm.prefetch.p0(ptr nonnull %209, i32 0, i32 2, i32 1)
  %210 = getelementptr inbounds nuw i8, ptr %202, i64 512
  call void @llvm.prefetch.p0(ptr nonnull %210, i32 0, i32 2, i32 1)
  %211 = getelementptr inbounds nuw i8, ptr %202, i64 576
  call void @llvm.prefetch.p0(ptr nonnull %211, i32 0, i32 2, i32 1)
  %212 = getelementptr inbounds nuw i8, ptr %202, i64 640
  call void @llvm.prefetch.p0(ptr nonnull %212, i32 0, i32 2, i32 1)
  %213 = getelementptr inbounds nuw i8, ptr %202, i64 704
  call void @llvm.prefetch.p0(ptr nonnull %213, i32 0, i32 2, i32 1)
  %214 = getelementptr inbounds nuw i8, ptr %202, i64 768
  call void @llvm.prefetch.p0(ptr nonnull %214, i32 0, i32 2, i32 1)
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 832
  call void @llvm.prefetch.p0(ptr nonnull %215, i32 0, i32 2, i32 1)
  %216 = getelementptr inbounds nuw i8, ptr %202, i64 896
  call void @llvm.prefetch.p0(ptr nonnull %216, i32 0, i32 2, i32 1)
  %217 = getelementptr inbounds nuw i8, ptr %202, i64 960
  call void @llvm.prefetch.p0(ptr nonnull %217, i32 0, i32 2, i32 1)
  %218 = getelementptr inbounds nuw i8, ptr %202, i64 1024
  call void @llvm.prefetch.p0(ptr nonnull %218, i32 0, i32 2, i32 1)
  %219 = getelementptr inbounds nuw i8, ptr %202, i64 1088
  call void @llvm.prefetch.p0(ptr nonnull %219, i32 0, i32 2, i32 1)
  %220 = getelementptr inbounds nuw i8, ptr %202, i64 1152
  call void @llvm.prefetch.p0(ptr nonnull %220, i32 0, i32 2, i32 1)
  %221 = getelementptr inbounds nuw i8, ptr %202, i64 1216
  call void @llvm.prefetch.p0(ptr nonnull %221, i32 0, i32 2, i32 1)
  %222 = getelementptr inbounds nuw i8, ptr %202, i64 1280
  call void @llvm.prefetch.p0(ptr nonnull %222, i32 0, i32 2, i32 1)
  %223 = getelementptr inbounds nuw i8, ptr %202, i64 1344
  call void @llvm.prefetch.p0(ptr nonnull %223, i32 0, i32 2, i32 1)
  %224 = getelementptr inbounds nuw i8, ptr %202, i64 1408
  call void @llvm.prefetch.p0(ptr nonnull %224, i32 0, i32 2, i32 1)
  %225 = getelementptr inbounds nuw i8, ptr %202, i64 1472
  call void @llvm.prefetch.p0(ptr nonnull %225, i32 0, i32 2, i32 1)
  %226 = getelementptr inbounds nuw i8, ptr %202, i64 1536
  call void @llvm.prefetch.p0(ptr nonnull %226, i32 0, i32 2, i32 1)
  %227 = getelementptr inbounds nuw i8, ptr %202, i64 1600
  call void @llvm.prefetch.p0(ptr nonnull %227, i32 0, i32 2, i32 1)
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 1664
  call void @llvm.prefetch.p0(ptr nonnull %228, i32 0, i32 2, i32 1)
  %229 = getelementptr inbounds nuw i8, ptr %202, i64 1728
  call void @llvm.prefetch.p0(ptr nonnull %229, i32 0, i32 2, i32 1)
  %230 = getelementptr inbounds nuw i8, ptr %202, i64 1792
  call void @llvm.prefetch.p0(ptr nonnull %230, i32 0, i32 2, i32 1)
  %231 = getelementptr inbounds nuw i8, ptr %202, i64 1856
  call void @llvm.prefetch.p0(ptr nonnull %231, i32 0, i32 2, i32 1)
  %232 = getelementptr inbounds nuw i8, ptr %202, i64 1920
  call void @llvm.prefetch.p0(ptr nonnull %232, i32 0, i32 2, i32 1)
  %233 = getelementptr inbounds nuw i8, ptr %202, i64 1984
  call void @llvm.prefetch.p0(ptr nonnull %233, i32 0, i32 2, i32 1)
  %234 = getelementptr inbounds nuw i8, ptr %202, i64 2048
  call void @llvm.prefetch.p0(ptr nonnull %234, i32 0, i32 2, i32 1)
  br label %243

235:                                              ; preds = %170
  %236 = ptrtoint ptr %172 to i64
  %237 = sub i64 %60, %236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %7) #18
  %238 = call i64 @FSE_readNCount(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %172, i64 noundef %237) #18
  %239 = icmp ult i64 %238, -119
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32, ptr %6, align 4, !tbaa !30
  %242 = icmp ugt i32 %241, 8
  br i1 %242, label %246, label %247

243:                                              ; preds = %201, %183, %194, %197
  %244 = phi i64 [ 0, %197 ], [ 0, %194 ], [ 1, %183 ], [ 0, %201 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %252

245:                                              ; preds = %178, %180, %195
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %269

246:                                              ; preds = %235, %240
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %269

247:                                              ; preds = %240
  %248 = load i32, ptr %5, align 4, !tbaa !30
  call void @ZSTD_buildFSETable(ptr noundef nonnull %173, ptr noundef nonnull %7, i32 noundef %248, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %241, ptr noundef nonnull %65, i64 poison, i32 noundef %177)
  store ptr %173, ptr %174, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %249 = load i32, ptr %61, align 4, !tbaa !63
  %250 = load i32, ptr %63, align 4, !tbaa !36
  %251 = load i32, ptr %66, align 4, !tbaa !31
  br label %252

252:                                              ; preds = %243, %247
  %253 = phi i32 [ %177, %243 ], [ %251, %247 ]
  %254 = phi i32 [ %176, %243 ], [ %250, %247 ]
  %255 = phi i32 [ %175, %243 ], [ %249, %247 ]
  %256 = phi i64 [ %244, %243 ], [ %238, %247 ]
  %257 = getelementptr inbounds nuw i8, ptr %172, i64 %256
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %260 = ptrtoint ptr %257 to i64
  %261 = sub i64 %60, %260
  %262 = call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %258, ptr noundef nonnull %259, i32 noundef %58, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %257, i64 noundef %261, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, ptr noundef nonnull @ML_defaultDTable, i32 noundef %255, i32 noundef %254, i32 noundef %45, ptr noundef nonnull %65, i32 noundef %253)
  %263 = icmp ult i64 %262, -119
  br i1 %263, label %264, label %269

264:                                              ; preds = %252
  %265 = getelementptr inbounds nuw i8, ptr %257, i64 %262
  %266 = ptrtoint ptr %265 to i64
  %267 = ptrtoint ptr %2 to i64
  %268 = sub i64 %266, %267
  br label %269

269:                                              ; preds = %40, %246, %245, %167, %166, %48, %43, %27, %20, %4, %252, %264
  %270 = phi i64 [ %268, %264 ], [ -20, %252 ], [ -72, %4 ], [ -72, %20 ], [ -72, %27 ], [ -72, %43 ], [ -20, %48 ], [ -20, %166 ], [ -20, %167 ], [ -20, %245 ], [ -20, %246 ], [ %42, %40 ]
  ret i64 %270
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #5

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -20, -71) i64 @ZSTD_buildSeqTable(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 4) %2, i32 noundef range(i32 31, 53) %3, i32 noundef range(i32 8, 10) %4, ptr noundef %5, i64 noundef %6, ptr noundef readonly captures(none) %7, ptr noundef readonly captures(none) %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef range(i32 1, 98048) %12, ptr noundef captures(none) %13, i32 noundef %14) unnamed_addr #2 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [53 x i16], align 16
  store i32 %3, ptr %16, align 4, !tbaa !30
  switch i32 %2, label %79 [
    i32 1, label %19
    i32 0, label %36
    i32 3, label %37
    i32 2, label %69
  ]

19:                                               ; preds = %15
  %20 = icmp eq i64 %6, 0
  br i1 %20, label %87, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %5, align 1, !tbaa !9
  %23 = zext i8 %22 to i32
  %24 = icmp samesign ult i32 %3, %23
  br i1 %24, label %87, label %25

25:                                               ; preds = %21
  %26 = zext i8 %22 to i64
  %27 = getelementptr inbounds nuw i32, ptr %7, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %32, align 4, !tbaa !64
  store i32 0, ptr %0, align 4, !tbaa !66
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 0, ptr %33, align 1, !tbaa !57
  store i16 0, ptr %31, align 4, !tbaa !58
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %30, ptr %34, align 2, !tbaa !59
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %28, ptr %35, align 4, !tbaa !43
  store ptr %0, ptr %1, align 8, !tbaa !67
  br label %87

36:                                               ; preds = %15
  store ptr %9, ptr %1, align 8, !tbaa !67
  br label %87

37:                                               ; preds = %15
  %38 = icmp eq i32 %10, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %37
  %40 = icmp ne i32 %11, 0
  %41 = icmp samesign ugt i32 %12, 24
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = load ptr, ptr %1, align 8, !tbaa !67
  %45 = shl nuw nsw i32 8, %4
  %46 = lshr exact i32 %45, 6
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 64
  %49 = getelementptr inbounds i8, ptr %44, i64 128
  %50 = getelementptr inbounds i8, ptr %44, i64 192
  %51 = getelementptr inbounds i8, ptr %44, i64 256
  %52 = getelementptr inbounds i8, ptr %44, i64 320
  %53 = getelementptr inbounds i8, ptr %44, i64 384
  %54 = getelementptr inbounds i8, ptr %44, i64 448
  br label %55

55:                                               ; preds = %55, %43
  %56 = phi i64 [ 0, %43 ], [ %66, %55 ]
  %57 = phi i64 [ 0, %43 ], [ %67, %55 ]
  %58 = getelementptr inbounds nuw i8, ptr %44, i64 %56
  tail call void @llvm.prefetch.p0(ptr %58, i32 0, i32 2, i32 1)
  %59 = getelementptr inbounds i8, ptr %48, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %59, i32 0, i32 2, i32 1)
  %60 = getelementptr inbounds i8, ptr %49, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %60, i32 0, i32 2, i32 1)
  %61 = getelementptr inbounds i8, ptr %50, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %61, i32 0, i32 2, i32 1)
  %62 = getelementptr inbounds i8, ptr %51, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %62, i32 0, i32 2, i32 1)
  %63 = getelementptr inbounds i8, ptr %52, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %63, i32 0, i32 2, i32 1)
  %64 = getelementptr inbounds i8, ptr %53, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %64, i32 0, i32 2, i32 1)
  %65 = getelementptr inbounds i8, ptr %54, i64 %56
  tail call void @llvm.prefetch.p0(ptr nonnull %65, i32 0, i32 2, i32 1)
  %66 = add nuw nsw i64 %56, 512
  %67 = add i64 %57, 8
  %68 = icmp eq i64 %67, %47
  br i1 %68, label %80, label %55, !llvm.loop !68

69:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %18) #18
  %70 = call i64 @FSE_readNCount(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %5, i64 noundef %6) #18
  %71 = icmp ult i64 %70, -119
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, ptr %17, align 4, !tbaa !30
  %74 = icmp ugt i32 %73, %4
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %16, align 4, !tbaa !30
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %76, ptr noundef %7, ptr noundef %8, i32 noundef %73, ptr noundef %13, i64 poison, i32 noundef %14)
  store ptr %0, ptr %1, align 8, !tbaa !67
  br label %77

77:                                               ; preds = %72, %69, %75
  %78 = phi i64 [ %70, %75 ], [ -20, %69 ], [ -20, %72 ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #18
  br label %87

79:                                               ; preds = %15
  unreachable

80:                                               ; preds = %55, %80
  %81 = phi i64 [ %84, %80 ], [ %66, %55 ]
  %82 = phi i64 [ %85, %80 ], [ 0, %55 ]
  %83 = getelementptr inbounds nuw i8, ptr %44, i64 %81
  tail call void @llvm.prefetch.p0(ptr %83, i32 0, i32 2, i32 1)
  %84 = add nuw nsw i64 %81, 64
  %85 = add i64 %82, 1
  %86 = icmp eq i64 %82, 0
  br i1 %86, label %87, label %80, !llvm.loop !69

87:                                               ; preds = %80, %39, %37, %21, %19, %25, %36, %77
  %88 = phi i64 [ 1, %25 ], [ 0, %36 ], [ %78, %77 ], [ -72, %19 ], [ -20, %21 ], [ -20, %37 ], [ 0, %39 ], [ 0, %80 ]
  ret i64 %88
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %13 = load i32, ptr %12, align 8, !tbaa !28
  %14 = zext i32 %13 to i64
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi i64 [ %14, %11 ], [ 131072, %6 ]
  %17 = icmp ugt i64 %4, %16
  br i1 %17, label %84, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef %1, i64 noundef %2, i32 noundef %5)
  %20 = icmp ult i64 %19, -119
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 %19
  %22 = sub nsw i64 %4, %19
  br i1 %20, label %23, label %84

23:                                               ; preds = %18
  %24 = load i32, ptr %8, align 8, !tbaa !15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i64 @llvm.umin.i64(i64 %2, i64 131072)
  br label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = zext i32 %30 to i64
  %32 = tail call i64 @llvm.umin.i64(i64 %2, i64 %31)
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i64 [ %27, %26 ], [ %32, %28 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %42 = load i32, ptr %41, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %43 = call i64 @ZSTD_decodeSeqHeaders(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %21, i64 noundef %22)
  %44 = icmp ult i64 %43, -119
  br i1 %44, label %45, label %82

45:                                               ; preds = %33
  %46 = getelementptr inbounds nuw i8, ptr %21, i64 %43
  %47 = sub i64 %22, %43
  %48 = icmp eq ptr %1, null
  %49 = icmp eq i64 %2, 0
  %50 = or i1 %48, %49
  %51 = load i32, ptr %7, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  %54 = icmp ugt ptr %1, inttoptr (i64 -1048577 to ptr)
  %55 = or i1 %54, %53
  br i1 %55, label %82, label %56

56:                                               ; preds = %45
  %57 = icmp eq i32 %42, 0
  %58 = icmp ugt i64 %40, 16777216
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp sgt i32 %51, 8
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %64 = load ptr, ptr %63, align 8, !tbaa !72
  %65 = tail call fastcc i64 @ZSTD_getOffsetInfo(ptr noundef %64, i32 noundef %51)
  %66 = trunc i64 %65 to i32
  %67 = icmp ugt i32 %66, 6
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i32 [ %42, %56 ], [ %68, %62 ]
  store i32 0, ptr %41, align 4, !tbaa !36
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = tail call fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %76 = load i32, ptr %75, align 8, !tbaa !35
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %82

80:                                               ; preds = %74
  %81 = tail call fastcc i64 @ZSTD_decompressSequences(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %46, i64 noundef %47, i32 noundef %51)
  br label %82

82:                                               ; preds = %45, %33, %80, %78, %72
  %83 = phi i64 [ %73, %72 ], [ %79, %78 ], [ %81, %80 ], [ %43, %33 ], [ -70, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %84

84:                                               ; preds = %15, %18, %82
  %85 = phi i64 [ %83, %82 ], [ %19, %18 ], [ -72, %15 ]
  ret i64 %85
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 0, 1099511627776) i64 @ZSTD_getOffsetInfo(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = getelementptr i8, ptr %0, i64 10
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ 0, %4 ], [ %21, %8 ]
  %10 = phi i32 [ 0, %4 ], [ %20, %8 ]
  %11 = phi i32 [ 0, %4 ], [ %17, %8 ]
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = getelementptr i8, ptr %7, i64 %13
  %15 = load i8, ptr %14, align 2, !tbaa !59
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @llvm.umax.i32(i32 %11, i32 %16)
  %18 = icmp ugt i8 %15, 22
  %19 = zext i1 %18 to i32
  %20 = add i32 %10, %19
  %21 = add i32 %9, 1
  %22 = lshr i32 %21, %6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %8, label %24, !llvm.loop !73

24:                                               ; preds = %8
  %25 = sub i32 8, %6
  %26 = shl i32 %20, %25
  %27 = zext nneg i32 %17 to i64
  %28 = shl nuw nsw i64 %27, 32
  %29 = zext i32 %26 to i64
  %30 = or disjoint i64 %28, %29
  br label %31

31:                                               ; preds = %24, %2
  %32 = phi i64 [ %30, %24 ], [ 0, %2 ]
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #8 {
  %7 = alloca ptr, align 8
  %8 = alloca [8 x %struct.seq_t], align 16
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr i8, ptr %0, i64 30180
  %11 = load i32, ptr %10, align 4, !tbaa !31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %2324

15:                                               ; preds = %6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  br label %25

22:                                               ; preds = %15
  %23 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %21, %19 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  store ptr %28, ptr %7, align 8, !tbaa !40
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %32 = load ptr, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = icmp eq i32 %5, 0
  br i1 %37, label %2278, label %38

38:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #18
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %39, align 4, !tbaa !63
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %41 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %42 = load i32, ptr %40, align 4, !tbaa !30
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %41, align 8, !tbaa !46
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %45 = load i32, ptr %44, align 4, !tbaa !30
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %46, ptr %47, align 8, !tbaa !46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %49 = load i32, ptr %48, align 4, !tbaa !30
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %50, ptr %51, align 8, !tbaa !46
  %52 = tail call i32 @llvm.smin.i32(i32 %5, i32 8)
  %53 = ptrtoint ptr %1 to i64
  %54 = ptrtoint ptr %32 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %4, 0
  br i1 %56, label %2276, label %57

57:                                               ; preds = %38
  %58 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %58, align 8, !tbaa !76
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %60 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %59, ptr %60, align 8, !tbaa !78
  %61 = icmp ugt i64 %4, 7
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = add nsw i64 %4, -8
  %64 = getelementptr inbounds i8, ptr %3, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %64, ptr %65, align 8, !tbaa !79
  %66 = load i64, ptr %64, align 1
  store i64 %66, ptr %9, align 8, !tbaa !80
  %67 = icmp ult i64 %66, 72057594037927936
  br i1 %67, label %2276, label %126

68:                                               ; preds = %57
  %69 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %69, align 8, !tbaa !79
  %70 = load i8, ptr %3, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  store i64 %71, ptr %9, align 8, !tbaa !80
  switch i64 %4, label %113 [
    i64 7, label %72
    i64 6, label %78
    i64 5, label %85
    i64 4, label %92
    i64 3, label %99
    i64 2, label %106
  ]

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 48
  %77 = or disjoint i64 %76, %71
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi i64 [ %71, %68 ], [ %77, %72 ]
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 40
  %84 = add nuw nsw i64 %83, %79
  br label %85

85:                                               ; preds = %78, %68
  %86 = phi i64 [ %71, %68 ], [ %84, %78 ]
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 32
  %91 = add nuw nsw i64 %90, %86
  br label %92

92:                                               ; preds = %85, %68
  %93 = phi i64 [ %71, %68 ], [ %91, %85 ]
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = zext i8 %95 to i64
  %97 = shl nuw nsw i64 %96, 24
  %98 = add nuw nsw i64 %97, %93
  br label %99

99:                                               ; preds = %92, %68
  %100 = phi i64 [ %71, %68 ], [ %98, %92 ]
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !9
  %103 = zext i8 %102 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = add nuw nsw i64 %104, %100
  br label %106

106:                                              ; preds = %99, %68
  %107 = phi i64 [ %71, %68 ], [ %105, %99 ]
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !9
  %110 = zext i8 %109 to i64
  %111 = shl nuw nsw i64 %110, 8
  %112 = add nuw nsw i64 %111, %107
  store i64 %112, ptr %9, align 8, !tbaa !80
  br label %113

113:                                              ; preds = %106, %68
  %114 = phi i64 [ %112, %106 ], [ %71, %68 ]
  %115 = getelementptr i8, ptr %3, i64 %4
  %116 = getelementptr i8, ptr %115, i64 -1
  %117 = load i8, ptr %116, align 1, !tbaa !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %2276, label %119

119:                                              ; preds = %113
  %120 = zext i8 %117 to i32
  %121 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %120, i1 true)
  %122 = trunc nuw nsw i64 %4 to i32
  %123 = shl nuw nsw i32 %122, 3
  %124 = sub nsw i32 %121, %123
  %125 = add nsw i32 %124, 41
  br label %133

126:                                              ; preds = %62
  %127 = lshr i64 %66, 56
  %128 = trunc nuw nsw i64 %127 to i32
  %129 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %128, i1 true)
  %130 = xor i32 %129, 31
  %131 = sub nuw nsw i32 8, %130
  %132 = icmp ult i64 %4, -119
  br i1 %132, label %133, label %2276

133:                                              ; preds = %126, %119
  %134 = phi ptr [ %3, %119 ], [ %64, %126 ]
  %135 = phi i64 [ 0, %119 ], [ %63, %126 ]
  %136 = phi i32 [ %125, %119 ], [ %131, %126 ]
  %137 = phi i64 [ %114, %119 ], [ %66, %126 ]
  %138 = getelementptr inbounds i8, ptr %3, i64 %135
  %139 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %140 = load ptr, ptr %0, align 8, !tbaa !81
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %142 = load i32, ptr %141, align 4, !tbaa !64
  %143 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %144 = add i32 %142, %136
  %145 = sub i32 0, %144
  %146 = and i32 %145, 63
  %147 = zext nneg i32 %146 to i64
  %148 = lshr i64 %137, %147
  %149 = zext nneg i32 %142 to i64
  %150 = shl nsw i64 -1, %149
  %151 = xor i64 %150, -1
  %152 = and i64 %148, %151
  store i64 %152, ptr %139, align 8, !tbaa !82
  %153 = icmp ugt i32 %144, 64
  %154 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %153, label %155, label %156, !prof !53

155:                                              ; preds = %133
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79
  br label %178

156:                                              ; preds = %133
  %157 = icmp slt i64 %135, 8
  br i1 %157, label %165, label %158

158:                                              ; preds = %156
  %159 = lshr i32 %144, 3
  %160 = zext nneg i32 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %138, i64 %161
  store ptr %162, ptr %154, align 8, !tbaa !79
  %163 = and i32 %144, 7
  store i32 %163, ptr %143, align 8, !tbaa !84
  %164 = load i64, ptr %162, align 1, !tbaa !46
  store i64 %164, ptr %9, align 8, !tbaa !80
  br label %178

165:                                              ; preds = %156
  %166 = icmp eq i64 %135, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %165
  %168 = lshr i32 %144, 3
  %169 = zext nneg i32 %168 to i64
  %170 = tail call i64 @llvm.smin.i64(i64 %135, i64 %169)
  %171 = trunc i64 %170 to i32
  %172 = and i64 %170, 4294967295
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, ptr %138, i64 %173
  store ptr %174, ptr %154, align 8, !tbaa !79
  %175 = shl i32 %171, 3
  %176 = sub i32 %144, %175
  store i32 %176, ptr %143, align 8, !tbaa !84
  %177 = load i64, ptr %174, align 1, !tbaa !46
  store i64 %177, ptr %9, align 8, !tbaa !80
  br label %178

178:                                              ; preds = %167, %165, %158, %155
  %179 = phi ptr [ @BIT_reloadDStream.zeroFilled, %155 ], [ %162, %158 ], [ %134, %165 ], [ %174, %167 ]
  %180 = phi ptr [ @BIT_reloadDStream.zeroFilled, %155 ], [ %162, %158 ], [ %3, %165 ], [ %174, %167 ]
  %181 = phi i32 [ %144, %155 ], [ %163, %158 ], [ %144, %165 ], [ %176, %167 ]
  %182 = phi i64 [ %137, %155 ], [ %164, %158 ], [ %137, %165 ], [ %177, %167 ]
  %183 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %184 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %183, ptr %184, align 8, !tbaa !85
  %185 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %187 = load ptr, ptr %186, align 8, !tbaa !72
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %189 = load i32, ptr %188, align 4, !tbaa !64
  %190 = add i32 %189, %181
  %191 = sub i32 0, %190
  %192 = and i32 %191, 63
  %193 = zext nneg i32 %192 to i64
  %194 = lshr i64 %182, %193
  %195 = zext nneg i32 %189 to i64
  %196 = shl nsw i64 -1, %195
  %197 = xor i64 %196, -1
  %198 = and i64 %194, %197
  store i64 %198, ptr %185, align 8, !tbaa !82
  %199 = icmp ugt i32 %190, 64
  br i1 %199, label %200, label %201, !prof !53

200:                                              ; preds = %178
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79
  br label %229

201:                                              ; preds = %178
  %202 = icmp ult ptr %180, %59
  br i1 %202, label %210, label %203

203:                                              ; preds = %201
  %204 = lshr i32 %190, 3
  %205 = zext nneg i32 %204 to i64
  %206 = sub nsw i64 0, %205
  %207 = getelementptr inbounds i8, ptr %180, i64 %206
  store ptr %207, ptr %154, align 8, !tbaa !79
  %208 = and i32 %190, 7
  %209 = load i64, ptr %207, align 1, !tbaa !46
  store i64 %209, ptr %9, align 8, !tbaa !80
  br label %229

210:                                              ; preds = %201
  %211 = icmp eq ptr %180, %3
  br i1 %211, label %229, label %212

212:                                              ; preds = %210
  %213 = lshr i32 %190, 3
  %214 = zext nneg i32 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %180, i64 %215
  %217 = icmp ult ptr %216, %3
  %218 = ptrtoint ptr %180 to i64
  %219 = ptrtoint ptr %3 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = select i1 %217, i32 %221, i32 %213
  %223 = zext i32 %222 to i64
  %224 = sub nsw i64 0, %223
  %225 = getelementptr inbounds i8, ptr %180, i64 %224
  store ptr %225, ptr %154, align 8, !tbaa !79
  %226 = shl i32 %222, 3
  %227 = sub i32 %190, %226
  %228 = load i64, ptr %225, align 1, !tbaa !46
  store i64 %228, ptr %9, align 8, !tbaa !80
  br label %229

229:                                              ; preds = %212, %210, %203, %200
  %230 = phi ptr [ @BIT_reloadDStream.zeroFilled, %200 ], [ %207, %203 ], [ %179, %210 ], [ %225, %212 ]
  %231 = phi ptr [ @BIT_reloadDStream.zeroFilled, %200 ], [ %207, %203 ], [ %180, %210 ], [ %225, %212 ]
  %232 = phi i32 [ %190, %200 ], [ %208, %203 ], [ %190, %210 ], [ %227, %212 ]
  %233 = phi i64 [ %182, %200 ], [ %209, %203 ], [ %182, %210 ], [ %228, %212 ]
  %234 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %235 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %234, ptr %235, align 8, !tbaa !85
  %236 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %238 = load ptr, ptr %237, align 8, !tbaa !86
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 4
  %240 = load i32, ptr %239, align 4, !tbaa !64
  %241 = add i32 %240, %232
  %242 = sub i32 0, %241
  %243 = and i32 %242, 63
  %244 = zext nneg i32 %243 to i64
  %245 = lshr i64 %233, %244
  %246 = zext nneg i32 %240 to i64
  %247 = shl nsw i64 -1, %246
  %248 = xor i64 %247, -1
  %249 = and i64 %245, %248
  store i32 %241, ptr %143, align 8, !tbaa !84
  store i64 %249, ptr %236, align 8, !tbaa !82
  %250 = icmp ugt i32 %241, 64
  br i1 %250, label %251, label %252, !prof !53

251:                                              ; preds = %229
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79
  br label %280

252:                                              ; preds = %229
  %253 = icmp ult ptr %231, %59
  br i1 %253, label %261, label %254

254:                                              ; preds = %252
  %255 = lshr i32 %241, 3
  %256 = zext nneg i32 %255 to i64
  %257 = sub nsw i64 0, %256
  %258 = getelementptr inbounds i8, ptr %231, i64 %257
  store ptr %258, ptr %154, align 8, !tbaa !79
  %259 = and i32 %241, 7
  store i32 %259, ptr %143, align 8, !tbaa !84
  %260 = load i64, ptr %258, align 1, !tbaa !46
  store i64 %260, ptr %9, align 8, !tbaa !80
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
  store ptr %276, ptr %154, align 8, !tbaa !79
  %277 = shl i32 %273, 3
  %278 = sub i32 %241, %277
  store i32 %278, ptr %143, align 8, !tbaa !84
  %279 = load i64, ptr %276, align 1, !tbaa !46
  store i64 %279, ptr %9, align 8, !tbaa !80
  br label %280

280:                                              ; preds = %263, %261, %254, %251
  %281 = phi ptr [ @BIT_reloadDStream.zeroFilled, %251 ], [ %258, %254 ], [ %230, %261 ], [ %276, %263 ]
  %282 = phi i64 [ %233, %251 ], [ %260, %254 ], [ %233, %261 ], [ %279, %263 ]
  %283 = phi i32 [ %241, %251 ], [ %259, %254 ], [ %241, %261 ], [ %278, %263 ]
  %284 = phi ptr [ @BIT_reloadDStream.zeroFilled, %251 ], [ %258, %254 ], [ %231, %261 ], [ %276, %263 ]
  %285 = getelementptr inbounds nuw i8, ptr %238, i64 8
  %286 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %285, ptr %286, align 8, !tbaa !85
  %287 = icmp sgt i32 %5, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %280
  %289 = ptrtoint ptr %3 to i64
  %290 = add nsw i32 %5, -1
  %291 = zext nneg i32 %290 to i64
  %292 = zext nneg i32 %52 to i64
  br label %319

293:                                              ; preds = %544, %280
  %294 = phi ptr [ %281, %280 ], [ %545, %544 ]
  %295 = phi i64 [ %282, %280 ], [ %551, %544 ]
  %296 = phi i32 [ %283, %280 ], [ %550, %544 ]
  %297 = phi ptr [ %284, %280 ], [ %549, %544 ]
  %298 = phi i64 [ %50, %280 ], [ %415, %544 ]
  %299 = phi i64 [ %46, %280 ], [ %413, %544 ]
  %300 = phi i64 [ %43, %280 ], [ %414, %544 ]
  %301 = phi i64 [ %249, %280 ], [ %546, %544 ]
  %302 = phi i64 [ %198, %280 ], [ %547, %544 ]
  %303 = phi i64 [ %152, %280 ], [ %548, %544 ]
  %304 = phi i64 [ %55, %280 ], [ %562, %544 ]
  %305 = phi i32 [ 0, %280 ], [ %52, %544 ]
  %306 = icmp slt i32 %305, %5
  br i1 %306, label %307, label %1529

307:                                              ; preds = %293
  %308 = add nsw i32 %5, -1
  %309 = getelementptr inbounds i8, ptr %26, i64 -32
  %310 = ptrtoint ptr %34 to i64
  %311 = ptrtoint ptr %26 to i64
  %312 = getelementptr i8, ptr %0, i64 30372
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %315 = ptrtoint ptr %3 to i64
  %316 = add i64 %54, 16
  %317 = add i64 %54, 16
  %318 = add i64 %54, 16
  br label %568

319:                                              ; preds = %544, %288
  %320 = phi ptr [ %281, %288 ], [ %545, %544 ]
  %321 = phi i64 [ %50, %288 ], [ %415, %544 ]
  %322 = phi i64 [ %249, %288 ], [ %546, %544 ]
  %323 = phi i64 [ %198, %288 ], [ %547, %544 ]
  %324 = phi i64 [ %152, %288 ], [ %548, %544 ]
  %325 = phi i64 [ 0, %288 ], [ %566, %544 ]
  %326 = phi i64 [ %46, %288 ], [ %413, %544 ]
  %327 = phi i64 [ %43, %288 ], [ %414, %544 ]
  %328 = phi i64 [ %55, %288 ], [ %562, %544 ]
  %329 = phi i64 [ %152, %288 ], [ %554, %544 ]
  %330 = phi i64 [ %249, %288 ], [ %553, %544 ]
  %331 = phi i64 [ %198, %288 ], [ %552, %544 ]
  %332 = phi i64 [ %282, %288 ], [ %551, %544 ]
  %333 = phi i32 [ %283, %288 ], [ %550, %544 ]
  %334 = phi ptr [ %284, %288 ], [ %549, %544 ]
  %335 = icmp eq i64 %325, %291
  %336 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %183, i64 %329
  %337 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %285, i64 %330
  %338 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %234, i64 %331
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 4
  %340 = load i32, ptr %339, align 4, !tbaa !43, !noalias !87
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds nuw i8, ptr %336, i64 4
  %343 = load i32, ptr %342, align 4, !tbaa !43, !noalias !87
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds nuw i8, ptr %338, i64 4
  %346 = load i32, ptr %345, align 4, !tbaa !43, !noalias !87
  %347 = getelementptr inbounds nuw i8, ptr %336, i64 2
  %348 = load i8, ptr %347, align 2, !tbaa !59, !noalias !87
  %349 = getelementptr inbounds nuw i8, ptr %337, i64 2
  %350 = load i8, ptr %349, align 2, !tbaa !59, !noalias !87
  %351 = getelementptr inbounds nuw i8, ptr %338, i64 2
  %352 = load i8, ptr %351, align 2, !tbaa !59, !noalias !87
  %353 = zext i8 %348 to i32
  %354 = zext i8 %350 to i32
  %355 = add i8 %350, %348
  %356 = add i8 %355, %352
  %357 = load i16, ptr %336, align 4, !tbaa !58, !noalias !87
  %358 = load i16, ptr %337, align 4, !tbaa !58, !noalias !87
  %359 = load i16, ptr %338, align 4, !tbaa !58, !noalias !87
  %360 = getelementptr inbounds nuw i8, ptr %336, i64 3
  %361 = load i8, ptr %360, align 1, !tbaa !57, !noalias !87
  %362 = zext i8 %361 to i32
  %363 = getelementptr inbounds nuw i8, ptr %337, i64 3
  %364 = load i8, ptr %363, align 1, !tbaa !57, !noalias !87
  %365 = zext i8 %364 to i32
  %366 = getelementptr inbounds nuw i8, ptr %338, i64 3
  %367 = load i8, ptr %366, align 1, !tbaa !57, !noalias !87
  %368 = zext i8 %367 to i32
  %369 = icmp ugt i8 %352, 1
  br i1 %369, label %371, label %383

370:                                              ; preds = %1541
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !90
  unreachable, !nosanitize !90

371:                                              ; preds = %319
  %372 = zext i8 %352 to i32
  %373 = and i32 %333, 63
  %374 = zext nneg i32 %373 to i64
  %375 = shl i64 %332, %374
  %376 = sub nsw i32 0, %372
  %377 = and i32 %376, 63
  %378 = zext nneg i32 %377 to i64
  %379 = lshr i64 %375, %378
  %380 = add i32 %333, %372
  store i32 %380, ptr %143, align 8, !tbaa !84, !noalias !87
  %381 = zext i32 %346 to i64
  %382 = add i64 %379, %381
  store i64 %326, ptr %51, align 8, !tbaa !46, !noalias !87
  br label %412

383:                                              ; preds = %319
  %384 = icmp eq i32 %343, 0
  %385 = icmp eq i8 %352, 0
  br i1 %385, label %386, label %389, !prof !91

386:                                              ; preds = %383
  %387 = select i1 %384, i64 %326, i64 %327
  %388 = select i1 %384, i64 %327, i64 %326
  br label %412

389:                                              ; preds = %383
  %390 = zext i1 %384 to i32
  %391 = add i32 %346, %390
  %392 = zext i32 %391 to i64
  %393 = and i32 %333, 63
  %394 = zext nneg i32 %393 to i64
  %395 = shl i64 %332, %394
  %396 = lshr i64 %395, 63
  %397 = add i32 %333, 1
  store i32 %397, ptr %143, align 8, !tbaa !84, !noalias !87
  %398 = add nuw nsw i64 %396, %392
  %399 = icmp eq i64 %398, 3
  br i1 %399, label %400, label %404

400:                                              ; preds = %389
  %401 = add i64 %327, -1
  %402 = icmp eq i64 %401, 0
  %403 = select i1 %402, i64 -1, i64 %401
  br label %410

404:                                              ; preds = %389
  %405 = getelementptr inbounds nuw [3 x i64], ptr %41, i64 0, i64 %398
  %406 = load i64, ptr %405, align 8, !tbaa !46, !noalias !87
  %407 = icmp eq i64 %406, 0
  %408 = select i1 %407, i64 -1, i64 %406
  %409 = icmp eq i64 %398, 1
  br i1 %409, label %412, label %410

410:                                              ; preds = %404, %400
  %411 = phi i64 [ %403, %400 ], [ %408, %404 ]
  store i64 %326, ptr %51, align 8, !tbaa !46, !noalias !87
  br label %412

412:                                              ; preds = %410, %404, %386, %371
  %413 = phi i64 [ %388, %386 ], [ %327, %371 ], [ %327, %410 ], [ %327, %404 ]
  %414 = phi i64 [ %387, %386 ], [ %382, %371 ], [ %411, %410 ], [ %408, %404 ]
  %415 = phi i64 [ %321, %386 ], [ %326, %371 ], [ %326, %410 ], [ %321, %404 ]
  %416 = phi i32 [ %333, %386 ], [ %380, %371 ], [ %397, %410 ], [ %397, %404 ]
  store i64 %413, ptr %47, align 8, !tbaa !46, !noalias !87
  store i64 %414, ptr %41, align 8, !tbaa !46, !noalias !87
  %417 = icmp eq i8 %350, 0
  br i1 %417, label %428, label %418

418:                                              ; preds = %412
  %419 = and i32 %416, 63
  %420 = zext nneg i32 %419 to i64
  %421 = shl i64 %332, %420
  %422 = sub nsw i32 0, %354
  %423 = and i32 %422, 63
  %424 = zext nneg i32 %423 to i64
  %425 = lshr i64 %421, %424
  %426 = add i32 %416, %354
  store i32 %426, ptr %143, align 8, !tbaa !84, !noalias !87
  %427 = add i64 %425, %341
  br label %428

428:                                              ; preds = %418, %412
  %429 = phi i32 [ %416, %412 ], [ %426, %418 ]
  %430 = phi i64 [ %341, %412 ], [ %427, %418 ]
  %431 = icmp ugt i8 %356, 30
  br i1 %431, label %432, label %462, !prof !53

432:                                              ; preds = %428
  %433 = icmp ugt i32 %429, 64
  br i1 %433, label %434, label %435, !prof !53

434:                                              ; preds = %432
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79, !noalias !87
  br label %462

435:                                              ; preds = %432
  %436 = icmp ult ptr %334, %59
  br i1 %436, label %444, label %437

437:                                              ; preds = %435
  %438 = lshr i32 %429, 3
  %439 = zext nneg i32 %438 to i64
  %440 = sub nsw i64 0, %439
  %441 = getelementptr inbounds i8, ptr %334, i64 %440
  store ptr %441, ptr %154, align 8, !tbaa !79, !noalias !87
  %442 = and i32 %429, 7
  store i32 %442, ptr %143, align 8, !tbaa !84, !noalias !87
  %443 = load i64, ptr %441, align 1, !tbaa !46, !noalias !87
  store i64 %443, ptr %9, align 8, !tbaa !80, !noalias !87
  br label %462

444:                                              ; preds = %435
  %445 = icmp eq ptr %334, %3
  br i1 %445, label %462, label %446

446:                                              ; preds = %444
  %447 = lshr i32 %429, 3
  %448 = zext nneg i32 %447 to i64
  %449 = sub nsw i64 0, %448
  %450 = getelementptr inbounds i8, ptr %334, i64 %449
  %451 = icmp ult ptr %450, %3
  %452 = ptrtoint ptr %334 to i64
  %453 = sub i64 %452, %289
  %454 = trunc i64 %453 to i32
  %455 = select i1 %451, i32 %454, i32 %447
  %456 = zext i32 %455 to i64
  %457 = sub nsw i64 0, %456
  %458 = getelementptr inbounds i8, ptr %334, i64 %457
  store ptr %458, ptr %154, align 8, !tbaa !79, !noalias !87
  %459 = shl i32 %455, 3
  %460 = sub i32 %429, %459
  store i32 %460, ptr %143, align 8, !tbaa !84, !noalias !87
  %461 = load i64, ptr %458, align 1, !tbaa !46, !noalias !87
  store i64 %461, ptr %9, align 8, !tbaa !80, !noalias !87
  br label %462

462:                                              ; preds = %446, %444, %437, %434, %428
  %463 = phi ptr [ %320, %444 ], [ %458, %446 ], [ %441, %437 ], [ @BIT_reloadDStream.zeroFilled, %434 ], [ %320, %428 ]
  %464 = phi ptr [ %334, %444 ], [ %458, %446 ], [ %441, %437 ], [ @BIT_reloadDStream.zeroFilled, %434 ], [ %334, %428 ]
  %465 = phi i32 [ %429, %444 ], [ %460, %446 ], [ %442, %437 ], [ %429, %434 ], [ %429, %428 ]
  %466 = phi i64 [ %332, %444 ], [ %461, %446 ], [ %443, %437 ], [ %332, %434 ], [ %332, %428 ]
  %467 = icmp eq i8 %348, 0
  br i1 %467, label %478, label %468

468:                                              ; preds = %462
  %469 = and i32 %465, 63
  %470 = zext nneg i32 %469 to i64
  %471 = shl i64 %466, %470
  %472 = sub nsw i32 0, %353
  %473 = and i32 %472, 63
  %474 = zext nneg i32 %473 to i64
  %475 = lshr i64 %471, %474
  %476 = add i32 %465, %353
  store i32 %476, ptr %143, align 8, !tbaa !84, !noalias !87
  %477 = add i64 %475, %344
  br label %478

478:                                              ; preds = %468, %462
  %479 = phi i32 [ %465, %462 ], [ %476, %468 ]
  %480 = phi i64 [ %344, %462 ], [ %477, %468 ]
  br i1 %335, label %544, label %481

481:                                              ; preds = %478
  %482 = add i32 %479, %362
  %483 = sub i32 0, %482
  %484 = and i32 %483, 63
  %485 = zext nneg i32 %484 to i64
  %486 = lshr i64 %466, %485
  %487 = zext nneg i8 %361 to i64
  %488 = shl nsw i64 -1, %487
  %489 = xor i64 %488, -1
  %490 = and i64 %486, %489
  %491 = zext i16 %357 to i64
  %492 = add nuw i64 %490, %491
  store i64 %492, ptr %139, align 8, !tbaa !82, !noalias !87
  %493 = add i32 %482, %365
  %494 = sub i32 0, %493
  %495 = and i32 %494, 63
  %496 = zext nneg i32 %495 to i64
  %497 = lshr i64 %466, %496
  %498 = zext nneg i8 %364 to i64
  %499 = shl nsw i64 -1, %498
  %500 = xor i64 %499, -1
  %501 = and i64 %497, %500
  %502 = zext i16 %358 to i64
  %503 = add nuw i64 %501, %502
  store i64 %503, ptr %236, align 8, !tbaa !82, !noalias !87
  %504 = add i32 %493, %368
  %505 = sub i32 0, %504
  %506 = and i32 %505, 63
  %507 = zext nneg i32 %506 to i64
  %508 = lshr i64 %466, %507
  %509 = zext nneg i8 %367 to i64
  %510 = shl nsw i64 -1, %509
  %511 = xor i64 %510, -1
  %512 = and i64 %508, %511
  store i32 %504, ptr %143, align 8, !tbaa !84, !noalias !87
  %513 = zext i16 %359 to i64
  %514 = add nuw i64 %512, %513
  store i64 %514, ptr %185, align 8, !tbaa !82, !noalias !87
  %515 = icmp ugt i32 %504, 64
  br i1 %515, label %516, label %517, !prof !53

516:                                              ; preds = %481
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79, !noalias !87
  br label %544

517:                                              ; preds = %481
  %518 = icmp ult ptr %464, %59
  br i1 %518, label %526, label %519

519:                                              ; preds = %517
  %520 = lshr i32 %504, 3
  %521 = zext nneg i32 %520 to i64
  %522 = sub nsw i64 0, %521
  %523 = getelementptr inbounds i8, ptr %464, i64 %522
  store ptr %523, ptr %154, align 8, !tbaa !79, !noalias !87
  %524 = and i32 %504, 7
  store i32 %524, ptr %143, align 8, !tbaa !84, !noalias !87
  %525 = load i64, ptr %523, align 1, !tbaa !46, !noalias !87
  store i64 %525, ptr %9, align 8, !tbaa !80, !noalias !87
  br label %544

526:                                              ; preds = %517
  %527 = icmp eq ptr %464, %3
  br i1 %527, label %544, label %528

528:                                              ; preds = %526
  %529 = lshr i32 %504, 3
  %530 = zext nneg i32 %529 to i64
  %531 = sub nsw i64 0, %530
  %532 = getelementptr inbounds i8, ptr %464, i64 %531
  %533 = icmp ult ptr %532, %3
  %534 = ptrtoint ptr %464 to i64
  %535 = sub i64 %534, %289
  %536 = trunc i64 %535 to i32
  %537 = select i1 %533, i32 %536, i32 %529
  %538 = zext i32 %537 to i64
  %539 = sub nsw i64 0, %538
  %540 = getelementptr inbounds i8, ptr %464, i64 %539
  store ptr %540, ptr %154, align 8, !tbaa !79, !noalias !87
  %541 = shl i32 %537, 3
  %542 = sub i32 %504, %541
  store i32 %542, ptr %143, align 8, !tbaa !84, !noalias !87
  %543 = load i64, ptr %540, align 1, !tbaa !46, !noalias !87
  store i64 %543, ptr %9, align 8, !tbaa !80, !noalias !87
  br label %544

544:                                              ; preds = %528, %526, %519, %516, %478
  %545 = phi ptr [ %463, %526 ], [ %540, %528 ], [ %523, %519 ], [ @BIT_reloadDStream.zeroFilled, %516 ], [ %463, %478 ]
  %546 = phi i64 [ %503, %526 ], [ %503, %528 ], [ %503, %519 ], [ %503, %516 ], [ %322, %478 ]
  %547 = phi i64 [ %514, %526 ], [ %514, %528 ], [ %514, %519 ], [ %514, %516 ], [ %323, %478 ]
  %548 = phi i64 [ %492, %526 ], [ %492, %528 ], [ %492, %519 ], [ %492, %516 ], [ %324, %478 ]
  %549 = phi ptr [ %464, %526 ], [ %540, %528 ], [ %523, %519 ], [ @BIT_reloadDStream.zeroFilled, %516 ], [ %464, %478 ]
  %550 = phi i32 [ %504, %526 ], [ %542, %528 ], [ %524, %519 ], [ %504, %516 ], [ %479, %478 ]
  %551 = phi i64 [ %466, %526 ], [ %543, %528 ], [ %525, %519 ], [ %466, %516 ], [ %466, %478 ]
  %552 = phi i64 [ %514, %526 ], [ %514, %528 ], [ %514, %519 ], [ %514, %516 ], [ %331, %478 ]
  %553 = phi i64 [ %503, %526 ], [ %503, %528 ], [ %503, %519 ], [ %503, %516 ], [ %330, %478 ]
  %554 = phi i64 [ %492, %526 ], [ %492, %528 ], [ %492, %519 ], [ %492, %516 ], [ %329, %478 ]
  %555 = add i64 %480, %328
  %556 = icmp ugt i64 %414, %555
  %557 = select i1 %556, ptr %36, ptr %32
  %558 = getelementptr inbounds i8, ptr %557, i64 %555
  %559 = sub i64 0, %414
  %560 = getelementptr inbounds i8, ptr %558, i64 %559
  tail call void @llvm.prefetch.p0(ptr %560, i32 0, i32 3, i32 1)
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %561, i32 0, i32 3, i32 1)
  %562 = add i64 %555, %430
  %563 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %325
  store i64 %480, ptr %563, align 8, !tbaa !46
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 8
  store i64 %430, ptr %564, align 8, !tbaa !46
  %565 = getelementptr inbounds nuw i8, ptr %563, i64 16
  store i64 %414, ptr %565, align 8, !tbaa !46
  %566 = add nuw nsw i64 %325, 1
  %567 = icmp eq i64 %566, %292
  br i1 %567, label %293, label %319, !llvm.loop !92

568:                                              ; preds = %1522, %307
  %569 = phi ptr [ %294, %307 ], [ %790, %1522 ]
  %570 = phi i32 [ %296, %307 ], [ %791, %1522 ]
  %571 = phi i64 [ %295, %307 ], [ %792, %1522 ]
  %572 = phi i64 [ %298, %307 ], [ %662, %1522 ]
  %573 = phi i64 [ %299, %307 ], [ %660, %1522 ]
  %574 = phi i64 [ %300, %307 ], [ %661, %1522 ]
  %575 = phi i64 [ %301, %307 ], [ %793, %1522 ]
  %576 = phi i64 [ %302, %307 ], [ %794, %1522 ]
  %577 = phi i64 [ %303, %307 ], [ %795, %1522 ]
  %578 = phi ptr [ %1, %307 ], [ %1525, %1522 ]
  %579 = phi ptr [ %30, %307 ], [ %1524, %1522 ]
  %580 = phi i32 [ %305, %307 ], [ %1527, %1522 ]
  %581 = phi i64 [ %304, %307 ], [ %1526, %1522 ]
  %582 = icmp eq i32 %580, %308
  %583 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %183, i64 %577
  %584 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %285, i64 %575
  %585 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %234, i64 %576
  %586 = getelementptr inbounds nuw i8, ptr %584, i64 4
  %587 = load i32, ptr %586, align 4, !tbaa !43, !noalias !93
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds nuw i8, ptr %583, i64 4
  %590 = load i32, ptr %589, align 4, !tbaa !43, !noalias !93
  %591 = zext i32 %590 to i64
  %592 = getelementptr inbounds nuw i8, ptr %585, i64 4
  %593 = load i32, ptr %592, align 4, !tbaa !43, !noalias !93
  %594 = getelementptr inbounds nuw i8, ptr %583, i64 2
  %595 = load i8, ptr %594, align 2, !tbaa !59, !noalias !93
  %596 = getelementptr inbounds nuw i8, ptr %584, i64 2
  %597 = load i8, ptr %596, align 2, !tbaa !59, !noalias !93
  %598 = getelementptr inbounds nuw i8, ptr %585, i64 2
  %599 = load i8, ptr %598, align 2, !tbaa !59, !noalias !93
  %600 = zext i8 %595 to i32
  %601 = zext i8 %597 to i32
  %602 = add i8 %597, %595
  %603 = add i8 %602, %599
  %604 = load i16, ptr %583, align 4, !tbaa !58, !noalias !93
  %605 = load i16, ptr %584, align 4, !tbaa !58, !noalias !93
  %606 = load i16, ptr %585, align 4, !tbaa !58, !noalias !93
  %607 = getelementptr inbounds nuw i8, ptr %583, i64 3
  %608 = load i8, ptr %607, align 1, !tbaa !57, !noalias !93
  %609 = zext i8 %608 to i32
  %610 = getelementptr inbounds nuw i8, ptr %584, i64 3
  %611 = load i8, ptr %610, align 1, !tbaa !57, !noalias !93
  %612 = zext i8 %611 to i32
  %613 = getelementptr inbounds nuw i8, ptr %585, i64 3
  %614 = load i8, ptr %613, align 1, !tbaa !57, !noalias !93
  %615 = zext i8 %614 to i32
  %616 = icmp ugt i8 %599, 1
  br i1 %616, label %617, label %629

617:                                              ; preds = %568
  %618 = zext i8 %599 to i32
  %619 = and i32 %570, 63
  %620 = zext nneg i32 %619 to i64
  %621 = shl i64 %571, %620
  %622 = sub nsw i32 0, %618
  %623 = and i32 %622, 63
  %624 = zext nneg i32 %623 to i64
  %625 = lshr i64 %621, %624
  %626 = add i32 %570, %618
  store i32 %626, ptr %143, align 8, !tbaa !84, !noalias !93
  %627 = zext i32 %593 to i64
  %628 = add i64 %625, %627
  store i64 %573, ptr %51, align 8, !tbaa !46, !noalias !93
  br label %658

629:                                              ; preds = %568
  %630 = icmp eq i32 %590, 0
  %631 = icmp eq i8 %599, 0
  br i1 %631, label %632, label %635, !prof !91

632:                                              ; preds = %629
  %633 = select i1 %630, i64 %573, i64 %574
  %634 = select i1 %630, i64 %574, i64 %573
  br label %658

635:                                              ; preds = %629
  %636 = zext i1 %630 to i32
  %637 = add i32 %593, %636
  %638 = zext i32 %637 to i64
  %639 = and i32 %570, 63
  %640 = zext nneg i32 %639 to i64
  %641 = shl i64 %571, %640
  %642 = lshr i64 %641, 63
  %643 = add i32 %570, 1
  store i32 %643, ptr %143, align 8, !tbaa !84, !noalias !93
  %644 = add nuw nsw i64 %642, %638
  %645 = icmp eq i64 %644, 3
  br i1 %645, label %646, label %650

646:                                              ; preds = %635
  %647 = add i64 %574, -1
  %648 = icmp eq i64 %647, 0
  %649 = select i1 %648, i64 -1, i64 %647
  br label %656

650:                                              ; preds = %635
  %651 = getelementptr inbounds nuw [3 x i64], ptr %41, i64 0, i64 %644
  %652 = load i64, ptr %651, align 8, !tbaa !46, !noalias !93
  %653 = icmp eq i64 %652, 0
  %654 = select i1 %653, i64 -1, i64 %652
  %655 = icmp eq i64 %644, 1
  br i1 %655, label %658, label %656

656:                                              ; preds = %650, %646
  %657 = phi i64 [ %649, %646 ], [ %654, %650 ]
  store i64 %573, ptr %51, align 8, !tbaa !46, !noalias !93
  br label %658

658:                                              ; preds = %656, %650, %632, %617
  %659 = phi i32 [ %570, %632 ], [ %626, %617 ], [ %643, %656 ], [ %643, %650 ]
  %660 = phi i64 [ %634, %632 ], [ %574, %617 ], [ %574, %656 ], [ %574, %650 ]
  %661 = phi i64 [ %633, %632 ], [ %628, %617 ], [ %657, %656 ], [ %654, %650 ]
  %662 = phi i64 [ %572, %632 ], [ %573, %617 ], [ %573, %656 ], [ %572, %650 ]
  store i64 %660, ptr %47, align 8, !tbaa !46, !noalias !93
  store i64 %661, ptr %41, align 8, !tbaa !46, !noalias !93
  %663 = icmp eq i8 %597, 0
  br i1 %663, label %674, label %664

664:                                              ; preds = %658
  %665 = and i32 %659, 63
  %666 = zext nneg i32 %665 to i64
  %667 = shl i64 %571, %666
  %668 = sub nsw i32 0, %601
  %669 = and i32 %668, 63
  %670 = zext nneg i32 %669 to i64
  %671 = lshr i64 %667, %670
  %672 = add i32 %659, %601
  store i32 %672, ptr %143, align 8, !tbaa !84, !noalias !93
  %673 = add i64 %671, %588
  br label %674

674:                                              ; preds = %664, %658
  %675 = phi i32 [ %659, %658 ], [ %672, %664 ]
  %676 = phi i64 [ %588, %658 ], [ %673, %664 ]
  %677 = icmp ugt i8 %603, 30
  br i1 %677, label %678, label %708, !prof !53

678:                                              ; preds = %674
  %679 = icmp ugt i32 %675, 64
  br i1 %679, label %680, label %681, !prof !53

680:                                              ; preds = %678
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79, !noalias !93
  br label %708

681:                                              ; preds = %678
  %682 = icmp ult ptr %569, %59
  br i1 %682, label %690, label %683

683:                                              ; preds = %681
  %684 = lshr i32 %675, 3
  %685 = zext nneg i32 %684 to i64
  %686 = sub nsw i64 0, %685
  %687 = getelementptr inbounds i8, ptr %569, i64 %686
  store ptr %687, ptr %154, align 8, !tbaa !79, !noalias !93
  %688 = and i32 %675, 7
  store i32 %688, ptr %143, align 8, !tbaa !84, !noalias !93
  %689 = load i64, ptr %687, align 1, !tbaa !46, !noalias !93
  store i64 %689, ptr %9, align 8, !tbaa !80, !noalias !93
  br label %708

690:                                              ; preds = %681
  %691 = icmp eq ptr %569, %3
  br i1 %691, label %708, label %692

692:                                              ; preds = %690
  %693 = lshr i32 %675, 3
  %694 = zext nneg i32 %693 to i64
  %695 = sub nsw i64 0, %694
  %696 = getelementptr inbounds i8, ptr %569, i64 %695
  %697 = icmp ult ptr %696, %3
  %698 = ptrtoint ptr %569 to i64
  %699 = sub i64 %698, %315
  %700 = trunc i64 %699 to i32
  %701 = select i1 %697, i32 %700, i32 %693
  %702 = zext i32 %701 to i64
  %703 = sub nsw i64 0, %702
  %704 = getelementptr inbounds i8, ptr %569, i64 %703
  store ptr %704, ptr %154, align 8, !tbaa !79, !noalias !93
  %705 = shl i32 %701, 3
  %706 = sub i32 %675, %705
  store i32 %706, ptr %143, align 8, !tbaa !84, !noalias !93
  %707 = load i64, ptr %704, align 1, !tbaa !46, !noalias !93
  store i64 %707, ptr %9, align 8, !tbaa !80, !noalias !93
  br label %708

708:                                              ; preds = %692, %690, %683, %680, %674
  %709 = phi ptr [ %704, %692 ], [ %569, %690 ], [ %687, %683 ], [ @BIT_reloadDStream.zeroFilled, %680 ], [ %569, %674 ]
  %710 = phi i32 [ %706, %692 ], [ %675, %690 ], [ %688, %683 ], [ %675, %680 ], [ %675, %674 ]
  %711 = phi i64 [ %707, %692 ], [ %571, %690 ], [ %689, %683 ], [ %571, %680 ], [ %571, %674 ]
  %712 = icmp eq i8 %595, 0
  br i1 %712, label %723, label %713

713:                                              ; preds = %708
  %714 = and i32 %710, 63
  %715 = zext nneg i32 %714 to i64
  %716 = shl i64 %711, %715
  %717 = sub nsw i32 0, %600
  %718 = and i32 %717, 63
  %719 = zext nneg i32 %718 to i64
  %720 = lshr i64 %716, %719
  %721 = add i32 %710, %600
  store i32 %721, ptr %143, align 8, !tbaa !84, !noalias !93
  %722 = add i64 %720, %591
  br label %723

723:                                              ; preds = %713, %708
  %724 = phi i32 [ %710, %708 ], [ %721, %713 ]
  %725 = phi i64 [ %591, %708 ], [ %722, %713 ]
  br i1 %582, label %789, label %726

726:                                              ; preds = %723
  %727 = add i32 %724, %609
  %728 = sub i32 0, %727
  %729 = and i32 %728, 63
  %730 = zext nneg i32 %729 to i64
  %731 = lshr i64 %711, %730
  %732 = zext nneg i8 %608 to i64
  %733 = shl nsw i64 -1, %732
  %734 = xor i64 %733, -1
  %735 = and i64 %731, %734
  %736 = zext i16 %604 to i64
  %737 = add nuw i64 %735, %736
  store i64 %737, ptr %139, align 8, !tbaa !82, !noalias !93
  %738 = add i32 %727, %612
  %739 = sub i32 0, %738
  %740 = and i32 %739, 63
  %741 = zext nneg i32 %740 to i64
  %742 = lshr i64 %711, %741
  %743 = zext nneg i8 %611 to i64
  %744 = shl nsw i64 -1, %743
  %745 = xor i64 %744, -1
  %746 = and i64 %742, %745
  %747 = zext i16 %605 to i64
  %748 = add nuw i64 %746, %747
  store i64 %748, ptr %236, align 8, !tbaa !82, !noalias !93
  %749 = add i32 %738, %615
  %750 = sub i32 0, %749
  %751 = and i32 %750, 63
  %752 = zext nneg i32 %751 to i64
  %753 = lshr i64 %711, %752
  %754 = zext nneg i8 %614 to i64
  %755 = shl nsw i64 -1, %754
  %756 = xor i64 %755, -1
  %757 = and i64 %753, %756
  store i32 %749, ptr %143, align 8, !tbaa !84, !noalias !93
  %758 = zext i16 %606 to i64
  %759 = add nuw i64 %757, %758
  store i64 %759, ptr %185, align 8, !tbaa !82, !noalias !93
  %760 = icmp ugt i32 %749, 64
  br i1 %760, label %761, label %762, !prof !53

761:                                              ; preds = %726
  store ptr @BIT_reloadDStream.zeroFilled, ptr %154, align 8, !tbaa !79, !noalias !93
  br label %789

762:                                              ; preds = %726
  %763 = icmp ult ptr %709, %59
  br i1 %763, label %771, label %764

764:                                              ; preds = %762
  %765 = lshr i32 %749, 3
  %766 = zext nneg i32 %765 to i64
  %767 = sub nsw i64 0, %766
  %768 = getelementptr inbounds i8, ptr %709, i64 %767
  store ptr %768, ptr %154, align 8, !tbaa !79, !noalias !93
  %769 = and i32 %749, 7
  store i32 %769, ptr %143, align 8, !tbaa !84, !noalias !93
  %770 = load i64, ptr %768, align 1, !tbaa !46, !noalias !93
  store i64 %770, ptr %9, align 8, !tbaa !80, !noalias !93
  br label %789

771:                                              ; preds = %762
  %772 = icmp eq ptr %709, %3
  br i1 %772, label %789, label %773

773:                                              ; preds = %771
  %774 = lshr i32 %749, 3
  %775 = zext nneg i32 %774 to i64
  %776 = sub nsw i64 0, %775
  %777 = getelementptr inbounds i8, ptr %709, i64 %776
  %778 = icmp ult ptr %777, %3
  %779 = ptrtoint ptr %709 to i64
  %780 = sub i64 %779, %315
  %781 = trunc i64 %780 to i32
  %782 = select i1 %778, i32 %781, i32 %774
  %783 = zext i32 %782 to i64
  %784 = sub nsw i64 0, %783
  %785 = getelementptr inbounds i8, ptr %709, i64 %784
  store ptr %785, ptr %154, align 8, !tbaa !79, !noalias !93
  %786 = shl i32 %782, 3
  %787 = sub i32 %749, %786
  store i32 %787, ptr %143, align 8, !tbaa !84, !noalias !93
  %788 = load i64, ptr %785, align 1, !tbaa !46, !noalias !93
  store i64 %788, ptr %9, align 8, !tbaa !80, !noalias !93
  br label %789

789:                                              ; preds = %773, %771, %764, %761, %723
  %790 = phi ptr [ %709, %771 ], [ %785, %773 ], [ %768, %764 ], [ @BIT_reloadDStream.zeroFilled, %761 ], [ %709, %723 ]
  %791 = phi i32 [ %749, %771 ], [ %787, %773 ], [ %769, %764 ], [ %749, %761 ], [ %724, %723 ]
  %792 = phi i64 [ %711, %771 ], [ %788, %773 ], [ %770, %764 ], [ %711, %761 ], [ %711, %723 ]
  %793 = phi i64 [ %748, %771 ], [ %748, %773 ], [ %748, %764 ], [ %748, %761 ], [ %575, %723 ]
  %794 = phi i64 [ %759, %771 ], [ %759, %773 ], [ %759, %764 ], [ %759, %761 ], [ %576, %723 ]
  %795 = phi i64 [ %737, %771 ], [ %737, %773 ], [ %737, %764 ], [ %737, %761 ], [ %577, %723 ]
  %796 = load i32, ptr %16, align 8, !tbaa !35
  %797 = icmp eq i32 %796, 2
  br i1 %797, label %798, label %1325

798:                                              ; preds = %789
  %799 = load ptr, ptr %7, align 8, !tbaa !40
  %800 = and i32 %580, 7
  %801 = zext nneg i32 %800 to i64
  %802 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %801
  %803 = load i64, ptr %802, align 8, !tbaa !96
  %804 = getelementptr inbounds nuw i8, ptr %799, i64 %803
  %805 = load ptr, ptr %29, align 8, !tbaa !34
  %806 = icmp ugt ptr %804, %805
  br i1 %806, label %807, label %1150

807:                                              ; preds = %798
  %808 = ptrtoint ptr %805 to i64
  %809 = ptrtoint ptr %799 to i64
  %810 = sub i64 %808, %809
  %811 = icmp eq ptr %805, %799
  br i1 %811, label %962, label %812

812:                                              ; preds = %807
  %813 = ptrtoint ptr %578 to i64
  %814 = sub i64 %311, %813
  %815 = icmp ugt i64 %810, %814
  br i1 %815, label %2276, label %816

816:                                              ; preds = %812
  %817 = sub i64 %813, %809
  %818 = getelementptr inbounds nuw i8, ptr %578, i64 %810
  %819 = icmp ult i64 %810, 8
  %820 = icmp sgt i64 %817, -8
  %821 = or i1 %820, %819
  br i1 %821, label %822, label %876

822:                                              ; preds = %816
  %823 = add i64 %813, %808
  %824 = sub i64 %823, %809
  %825 = add i64 %813, 1
  %826 = tail call i64 @llvm.umax.i64(i64 %824, i64 %825)
  %827 = sub i64 %826, %813
  %828 = icmp ult i64 %827, 4
  %829 = icmp ult i64 %817, 32
  %830 = or i1 %828, %829
  br i1 %830, label %866, label %831

831:                                              ; preds = %822
  %832 = icmp ult i64 %827, 32
  br i1 %832, label %852, label %833

833:                                              ; preds = %831
  %834 = and i64 %827, -32
  br label %835

835:                                              ; preds = %835, %833
  %836 = phi i64 [ 0, %833 ], [ %843, %835 ]
  %837 = getelementptr i8, ptr %578, i64 %836
  %838 = getelementptr i8, ptr %799, i64 %836
  %839 = getelementptr i8, ptr %838, i64 16
  %840 = load <16 x i8>, ptr %838, align 1, !tbaa !9
  %841 = load <16 x i8>, ptr %839, align 1, !tbaa !9
  %842 = getelementptr i8, ptr %837, i64 16
  store <16 x i8> %840, ptr %837, align 1, !tbaa !9
  store <16 x i8> %841, ptr %842, align 1, !tbaa !9
  %843 = add nuw i64 %836, 32
  %844 = icmp eq i64 %843, %834
  br i1 %844, label %845, label %835, !llvm.loop !98

845:                                              ; preds = %835
  %846 = icmp eq i64 %827, %834
  br i1 %846, label %959, label %847

847:                                              ; preds = %845
  %848 = getelementptr i8, ptr %578, i64 %834
  %849 = getelementptr i8, ptr %799, i64 %834
  %850 = and i64 %827, 28
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %866, label %852

852:                                              ; preds = %847, %831
  %853 = phi i64 [ %834, %847 ], [ 0, %831 ]
  %854 = and i64 %827, -4
  %855 = getelementptr i8, ptr %578, i64 %854
  %856 = getelementptr i8, ptr %799, i64 %854
  br label %857

857:                                              ; preds = %857, %852
  %858 = phi i64 [ %853, %852 ], [ %862, %857 ]
  %859 = getelementptr i8, ptr %578, i64 %858
  %860 = getelementptr i8, ptr %799, i64 %858
  %861 = load <4 x i8>, ptr %860, align 1, !tbaa !9
  store <4 x i8> %861, ptr %859, align 1, !tbaa !9
  %862 = add nuw i64 %858, 4
  %863 = icmp eq i64 %862, %854
  br i1 %863, label %864, label %857, !llvm.loop !99

864:                                              ; preds = %857
  %865 = icmp eq i64 %827, %854
  br i1 %865, label %959, label %866

866:                                              ; preds = %847, %864, %822
  %867 = phi ptr [ %578, %822 ], [ %848, %847 ], [ %855, %864 ]
  %868 = phi ptr [ %799, %822 ], [ %849, %847 ], [ %856, %864 ]
  br label %869

869:                                              ; preds = %866, %869
  %870 = phi ptr [ %874, %869 ], [ %867, %866 ]
  %871 = phi ptr [ %872, %869 ], [ %868, %866 ]
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 1
  %873 = load i8, ptr %871, align 1, !tbaa !9
  %874 = getelementptr inbounds nuw i8, ptr %870, i64 1
  store i8 %873, ptr %870, align 1, !tbaa !9
  %875 = icmp ult ptr %874, %818
  br i1 %875, label %869, label %959, !llvm.loop !100

876:                                              ; preds = %816
  %877 = icmp sgt i64 %810, 31
  %878 = icmp samesign ult i64 %817, -16
  %879 = and i1 %878, %877
  br i1 %879, label %880, label %900

880:                                              ; preds = %876
  %881 = getelementptr inbounds i8, ptr %818, i64 -32
  %882 = add nsw i64 %810, -32
  %883 = getelementptr inbounds nuw i8, ptr %578, i64 %882
  %884 = load <2 x i64>, ptr %799, align 1, !tbaa !9
  store <2 x i64> %884, ptr %578, align 1, !tbaa !9
  %885 = icmp samesign ult i64 %882, 17
  br i1 %885, label %898, label %886

886:                                              ; preds = %880
  %887 = getelementptr inbounds nuw i8, ptr %578, i64 16
  br label %888

888:                                              ; preds = %888, %886
  %889 = phi ptr [ %887, %886 ], [ %896, %888 ]
  %890 = phi ptr [ %799, %886 ], [ %894, %888 ]
  %891 = getelementptr inbounds nuw i8, ptr %890, i64 16
  %892 = load <2 x i64>, ptr %891, align 1, !tbaa !9
  store <2 x i64> %892, ptr %889, align 1, !tbaa !9
  %893 = getelementptr inbounds nuw i8, ptr %889, i64 16
  %894 = getelementptr inbounds nuw i8, ptr %890, i64 32
  %895 = load <2 x i64>, ptr %894, align 1, !tbaa !9
  store <2 x i64> %895, ptr %893, align 1, !tbaa !9
  %896 = getelementptr inbounds nuw i8, ptr %889, i64 32
  %897 = icmp ult ptr %896, %883
  br i1 %897, label %888, label %898, !llvm.loop !101

898:                                              ; preds = %888, %880
  %899 = getelementptr inbounds i8, ptr %799, i64 %882
  br label %900

900:                                              ; preds = %898, %876
  %901 = phi ptr [ %881, %898 ], [ %578, %876 ]
  %902 = phi ptr [ %899, %898 ], [ %799, %876 ]
  %903 = ptrtoint ptr %901 to i64
  %904 = add i64 %813, %808
  %905 = sub i64 %904, %809
  %906 = add nuw i64 %903, 1
  %907 = tail call i64 @llvm.umax.i64(i64 %905, i64 %906)
  %908 = sub i64 %907, %903
  %909 = icmp ult i64 %908, 4
  %910 = ptrtoint ptr %902 to i64
  %911 = sub i64 %903, %910
  %912 = icmp ult i64 %911, 32
  %913 = select i1 %909, i1 true, i1 %912
  br i1 %913, label %949, label %914

914:                                              ; preds = %900
  %915 = icmp ult i64 %908, 32
  br i1 %915, label %935, label %916

916:                                              ; preds = %914
  %917 = and i64 %908, -32
  br label %918

918:                                              ; preds = %918, %916
  %919 = phi i64 [ 0, %916 ], [ %926, %918 ]
  %920 = getelementptr i8, ptr %901, i64 %919
  %921 = getelementptr i8, ptr %902, i64 %919
  %922 = getelementptr i8, ptr %921, i64 16
  %923 = load <16 x i8>, ptr %921, align 1, !tbaa !9
  %924 = load <16 x i8>, ptr %922, align 1, !tbaa !9
  %925 = getelementptr i8, ptr %920, i64 16
  store <16 x i8> %923, ptr %920, align 1, !tbaa !9
  store <16 x i8> %924, ptr %925, align 1, !tbaa !9
  %926 = add nuw i64 %919, 32
  %927 = icmp eq i64 %926, %917
  br i1 %927, label %928, label %918, !llvm.loop !102

928:                                              ; preds = %918
  %929 = icmp eq i64 %908, %917
  br i1 %929, label %959, label %930

930:                                              ; preds = %928
  %931 = getelementptr i8, ptr %901, i64 %917
  %932 = getelementptr i8, ptr %902, i64 %917
  %933 = and i64 %908, 28
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %949, label %935

935:                                              ; preds = %930, %914
  %936 = phi i64 [ %917, %930 ], [ 0, %914 ]
  %937 = and i64 %908, -4
  %938 = getelementptr i8, ptr %901, i64 %937
  %939 = getelementptr i8, ptr %902, i64 %937
  br label %940

940:                                              ; preds = %940, %935
  %941 = phi i64 [ %936, %935 ], [ %945, %940 ]
  %942 = getelementptr i8, ptr %901, i64 %941
  %943 = getelementptr i8, ptr %902, i64 %941
  %944 = load <4 x i8>, ptr %943, align 1, !tbaa !9
  store <4 x i8> %944, ptr %942, align 1, !tbaa !9
  %945 = add nuw i64 %941, 4
  %946 = icmp eq i64 %945, %937
  br i1 %946, label %947, label %940, !llvm.loop !103

947:                                              ; preds = %940
  %948 = icmp eq i64 %908, %937
  br i1 %948, label %959, label %949

949:                                              ; preds = %930, %947, %900
  %950 = phi ptr [ %901, %900 ], [ %931, %930 ], [ %938, %947 ]
  %951 = phi ptr [ %902, %900 ], [ %932, %930 ], [ %939, %947 ]
  br label %952

952:                                              ; preds = %949, %952
  %953 = phi ptr [ %957, %952 ], [ %950, %949 ]
  %954 = phi ptr [ %955, %952 ], [ %951, %949 ]
  %955 = getelementptr inbounds nuw i8, ptr %954, i64 1
  %956 = load i8, ptr %954, align 1, !tbaa !9
  %957 = getelementptr inbounds nuw i8, ptr %953, i64 1
  store i8 %956, ptr %953, align 1, !tbaa !9
  %958 = icmp ult ptr %957, %818
  br i1 %958, label %952, label %959, !llvm.loop !104

959:                                              ; preds = %952, %869, %928, %947, %845, %864
  %960 = load i64, ptr %802, align 8, !tbaa !96
  %961 = sub i64 %960, %810
  store i64 %961, ptr %802, align 8, !tbaa !96
  br label %962

962:                                              ; preds = %807, %959
  %963 = phi i64 [ %961, %959 ], [ %803, %807 ]
  %964 = phi ptr [ %818, %959 ], [ %578, %807 ]
  store ptr %312, ptr %7, align 8, !tbaa !40
  store i32 0, ptr %16, align 8, !tbaa !35
  %965 = getelementptr inbounds nuw i8, ptr %802, i64 8
  %966 = load i64, ptr %965, align 8
  %967 = getelementptr inbounds nuw i8, ptr %802, i64 16
  %968 = load i64, ptr %967, align 8
  %969 = getelementptr i8, ptr %964, i64 %963
  %970 = add i64 %966, %963
  %971 = getelementptr i8, ptr %312, i64 %963
  %972 = sub i64 0, %968
  %973 = getelementptr inbounds i8, ptr %969, i64 %972
  %974 = icmp sgt i64 %963, 65536
  %975 = getelementptr inbounds nuw i8, ptr %964, i64 %970
  %976 = icmp ugt ptr %975, %309
  %977 = select i1 %974, i1 true, i1 %976
  br i1 %977, label %981, label %978, !prof !105

978:                                              ; preds = %962
  %979 = load <2 x i64>, ptr %312, align 1, !tbaa !9
  store <2 x i64> %979, ptr %964, align 1, !tbaa !9
  %980 = icmp ugt i64 %963, 16
  br i1 %980, label %983, label %1000, !prof !53

981:                                              ; preds = %962
  %982 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %964, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %802, ptr noundef nonnull %7, ptr noundef nonnull %313, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1138

983:                                              ; preds = %978
  %984 = getelementptr inbounds nuw i8, ptr %964, i64 16
  %985 = add i64 %963, -16
  %986 = load <2 x i64>, ptr %314, align 1, !tbaa !9
  store <2 x i64> %986, ptr %984, align 1, !tbaa !9
  %987 = icmp ult i64 %985, 17
  br i1 %987, label %1000, label %988

988:                                              ; preds = %983
  %989 = getelementptr inbounds nuw i8, ptr %964, i64 32
  br label %990

990:                                              ; preds = %990, %988
  %991 = phi ptr [ %989, %988 ], [ %998, %990 ]
  %992 = phi ptr [ %314, %988 ], [ %996, %990 ]
  %993 = getelementptr inbounds nuw i8, ptr %992, i64 16
  %994 = load <2 x i64>, ptr %993, align 1, !tbaa !9
  store <2 x i64> %994, ptr %991, align 1, !tbaa !9
  %995 = getelementptr inbounds nuw i8, ptr %991, i64 16
  %996 = getelementptr inbounds nuw i8, ptr %992, i64 32
  %997 = load <2 x i64>, ptr %996, align 1, !tbaa !9
  store <2 x i64> %997, ptr %995, align 1, !tbaa !9
  %998 = getelementptr inbounds nuw i8, ptr %991, i64 32
  %999 = icmp ult ptr %998, %969
  br i1 %999, label %990, label %1000, !llvm.loop !101

1000:                                             ; preds = %990, %983, %978
  store ptr %971, ptr %7, align 8, !tbaa !40
  %1001 = ptrtoint ptr %969 to i64
  %1002 = sub i64 %1001, %54
  %1003 = icmp ugt i64 %968, %1002
  br i1 %1003, label %1004, label %1017

1004:                                             ; preds = %1000
  %1005 = sub i64 %1001, %310
  %1006 = icmp ugt i64 %968, %1005
  br i1 %1006, label %2276, label %1007, !prof !53

1007:                                             ; preds = %1004
  %1008 = ptrtoint ptr %973 to i64
  %1009 = sub i64 %1008, %54
  %1010 = getelementptr inbounds i8, ptr %36, i64 %1009
  %1011 = add i64 %1009, %966
  %1012 = icmp sgt i64 %1011, 0
  br i1 %1012, label %1014, label %1013

1013:                                             ; preds = %1007
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %969, ptr align 1 %1010, i64 %966, i1 false)
  br label %1138

1014:                                             ; preds = %1007
  %1015 = sub nsw i64 0, %1009
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %969, ptr align 1 %1010, i64 %1015, i1 false)
  %1016 = getelementptr inbounds nuw i8, ptr %969, i64 %1015
  br label %1017

1017:                                             ; preds = %1014, %1000
  %1018 = phi i64 [ %1011, %1014 ], [ %966, %1000 ]
  %1019 = phi ptr [ %32, %1014 ], [ %973, %1000 ]
  %1020 = phi ptr [ %1016, %1014 ], [ %969, %1000 ]
  %1021 = icmp ugt i64 %968, 15
  br i1 %1021, label %1022, label %1038, !prof !91

1022:                                             ; preds = %1017
  %1023 = getelementptr inbounds nuw i8, ptr %1020, i64 %1018
  %1024 = load <2 x i64>, ptr %1019, align 1, !tbaa !9
  store <2 x i64> %1024, ptr %1020, align 1, !tbaa !9
  %1025 = icmp ult i64 %1018, 17
  br i1 %1025, label %1138, label %1026

1026:                                             ; preds = %1022
  %1027 = getelementptr inbounds nuw i8, ptr %1020, i64 16
  br label %1028

1028:                                             ; preds = %1028, %1026
  %1029 = phi ptr [ %1027, %1026 ], [ %1036, %1028 ]
  %1030 = phi ptr [ %1019, %1026 ], [ %1034, %1028 ]
  %1031 = getelementptr inbounds nuw i8, ptr %1030, i64 16
  %1032 = load <2 x i64>, ptr %1031, align 1, !tbaa !9
  store <2 x i64> %1032, ptr %1029, align 1, !tbaa !9
  %1033 = getelementptr inbounds nuw i8, ptr %1029, i64 16
  %1034 = getelementptr inbounds nuw i8, ptr %1030, i64 32
  %1035 = load <2 x i64>, ptr %1034, align 1, !tbaa !9
  store <2 x i64> %1035, ptr %1033, align 1, !tbaa !9
  %1036 = getelementptr inbounds nuw i8, ptr %1029, i64 32
  %1037 = icmp ult ptr %1036, %1023
  br i1 %1037, label %1028, label %1138, !llvm.loop !101

1038:                                             ; preds = %1017
  %1039 = icmp samesign ult i64 %968, 8
  br i1 %1039, label %1040, label %1062

1040:                                             ; preds = %1038
  %1041 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %968
  %1042 = load i32, ptr %1041, align 4, !tbaa !30
  %1043 = load i8, ptr %1019, align 1, !tbaa !9
  store i8 %1043, ptr %1020, align 1, !tbaa !9
  %1044 = getelementptr inbounds nuw i8, ptr %1019, i64 1
  %1045 = load i8, ptr %1044, align 1, !tbaa !9
  %1046 = getelementptr inbounds nuw i8, ptr %1020, i64 1
  store i8 %1045, ptr %1046, align 1, !tbaa !9
  %1047 = getelementptr inbounds nuw i8, ptr %1019, i64 2
  %1048 = load i8, ptr %1047, align 1, !tbaa !9
  %1049 = getelementptr inbounds nuw i8, ptr %1020, i64 2
  store i8 %1048, ptr %1049, align 1, !tbaa !9
  %1050 = getelementptr inbounds nuw i8, ptr %1019, i64 3
  %1051 = load i8, ptr %1050, align 1, !tbaa !9
  %1052 = getelementptr inbounds nuw i8, ptr %1020, i64 3
  store i8 %1051, ptr %1052, align 1, !tbaa !9
  %1053 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %968
  %1054 = load i32, ptr %1053, align 4, !tbaa !30
  %1055 = zext i32 %1054 to i64
  %1056 = getelementptr inbounds nuw i8, ptr %1019, i64 %1055
  %1057 = getelementptr inbounds nuw i8, ptr %1020, i64 4
  %1058 = load i32, ptr %1056, align 1
  store i32 %1058, ptr %1057, align 1
  %1059 = sext i32 %1042 to i64
  %1060 = sub nsw i64 0, %1059
  %1061 = getelementptr inbounds i8, ptr %1056, i64 %1060
  br label %1064

1062:                                             ; preds = %1038
  %1063 = load i64, ptr %1019, align 1
  store i64 %1063, ptr %1020, align 1
  br label %1064

1064:                                             ; preds = %1062, %1040
  %1065 = phi ptr [ %1061, %1040 ], [ %1019, %1062 ]
  %1066 = getelementptr inbounds nuw i8, ptr %1065, i64 8
  %1067 = getelementptr inbounds nuw i8, ptr %1020, i64 8
  %1068 = icmp ugt i64 %1018, 8
  br i1 %1068, label %1069, label %1138

1069:                                             ; preds = %1064
  %1070 = ptrtoint ptr %1067 to i64
  %1071 = ptrtoint ptr %1066 to i64
  %1072 = sub i64 %1070, %1071
  %1073 = getelementptr i8, ptr %1020, i64 %1018
  %1074 = icmp slt i64 %1072, 16
  br i1 %1074, label %1075, label %1122

1075:                                             ; preds = %1069
  %1076 = add i64 %966, %54
  %1077 = tail call i64 @llvm.umin.i64(i64 %968, i64 %1002)
  %1078 = add i64 %1076, %1077
  %1079 = tail call i64 @llvm.umax.i64(i64 %968, i64 %1002)
  %1080 = add i64 %1078, %1079
  %1081 = sub i64 %1080, %968
  %1082 = add i64 %316, %1079
  %1083 = tail call i64 @llvm.umax.i64(i64 %1081, i64 %1082)
  %1084 = add i64 %1083, -9
  %1085 = add i64 %1079, %54
  %1086 = sub i64 %1084, %1085
  %1087 = lshr i64 %1086, 3
  %1088 = add nuw nsw i64 %1087, 1
  %1089 = icmp ult i64 %1086, 24
  %1090 = icmp ult i64 %1072, 32
  %1091 = or i1 %1089, %1090
  br i1 %1091, label %1112, label %1092

1092:                                             ; preds = %1075
  %1093 = and i64 %1088, 4611686018427387900
  %1094 = shl i64 %1093, 3
  %1095 = getelementptr i8, ptr %1067, i64 %1094
  %1096 = shl i64 %1093, 3
  %1097 = getelementptr i8, ptr %1066, i64 %1096
  br label %1098

1098:                                             ; preds = %1098, %1092
  %1099 = phi i64 [ 0, %1092 ], [ %1108, %1098 ]
  %1100 = shl i64 %1099, 3
  %1101 = getelementptr i8, ptr %1067, i64 %1100
  %1102 = shl i64 %1099, 3
  %1103 = getelementptr i8, ptr %1066, i64 %1102
  %1104 = getelementptr i8, ptr %1103, i64 16
  %1105 = load <2 x i64>, ptr %1103, align 1
  %1106 = load <2 x i64>, ptr %1104, align 1
  %1107 = getelementptr i8, ptr %1101, i64 16
  store <2 x i64> %1105, ptr %1101, align 1
  store <2 x i64> %1106, ptr %1107, align 1
  %1108 = add nuw i64 %1099, 4
  %1109 = icmp eq i64 %1108, %1093
  br i1 %1109, label %1110, label %1098, !llvm.loop !106

1110:                                             ; preds = %1098
  %1111 = icmp eq i64 %1088, %1093
  br i1 %1111, label %1138, label %1112

1112:                                             ; preds = %1075, %1110
  %1113 = phi ptr [ %1067, %1075 ], [ %1095, %1110 ]
  %1114 = phi ptr [ %1066, %1075 ], [ %1097, %1110 ]
  br label %1115

1115:                                             ; preds = %1112, %1115
  %1116 = phi ptr [ %1119, %1115 ], [ %1113, %1112 ]
  %1117 = phi ptr [ %1120, %1115 ], [ %1114, %1112 ]
  %1118 = load i64, ptr %1117, align 1
  store i64 %1118, ptr %1116, align 1
  %1119 = getelementptr inbounds nuw i8, ptr %1116, i64 8
  %1120 = getelementptr inbounds nuw i8, ptr %1117, i64 8
  %1121 = icmp ult ptr %1119, %1073
  br i1 %1121, label %1115, label %1138, !llvm.loop !107

1122:                                             ; preds = %1069
  %1123 = add i64 %1018, -8
  %1124 = load <2 x i64>, ptr %1066, align 1, !tbaa !9
  store <2 x i64> %1124, ptr %1067, align 1, !tbaa !9
  %1125 = icmp ult i64 %1123, 17
  br i1 %1125, label %1138, label %1126

1126:                                             ; preds = %1122
  %1127 = getelementptr inbounds nuw i8, ptr %1020, i64 24
  br label %1128

1128:                                             ; preds = %1128, %1126
  %1129 = phi ptr [ %1127, %1126 ], [ %1136, %1128 ]
  %1130 = phi ptr [ %1066, %1126 ], [ %1134, %1128 ]
  %1131 = getelementptr inbounds nuw i8, ptr %1130, i64 16
  %1132 = load <2 x i64>, ptr %1131, align 1, !tbaa !9
  store <2 x i64> %1132, ptr %1129, align 1, !tbaa !9
  %1133 = getelementptr inbounds nuw i8, ptr %1129, i64 16
  %1134 = getelementptr inbounds nuw i8, ptr %1130, i64 32
  %1135 = load <2 x i64>, ptr %1134, align 1, !tbaa !9
  store <2 x i64> %1135, ptr %1133, align 1, !tbaa !9
  %1136 = getelementptr inbounds nuw i8, ptr %1129, i64 32
  %1137 = icmp ult ptr %1136, %1073
  br i1 %1137, label %1128, label %1138, !llvm.loop !101

1138:                                             ; preds = %1128, %1115, %1028, %1110, %1122, %1064, %1022, %1013, %981
  %1139 = phi i64 [ %982, %981 ], [ %970, %1013 ], [ %970, %1064 ], [ %970, %1022 ], [ %970, %1122 ], [ %970, %1110 ], [ %970, %1028 ], [ %970, %1115 ], [ %970, %1128 ]
  %1140 = icmp ult i64 %1139, -119
  br i1 %1140, label %1141, label %2276

1141:                                             ; preds = %1138
  %1142 = add i64 %725, %581
  %1143 = icmp ugt i64 %661, %1142
  %1144 = select i1 %1143, ptr %36, ptr %32
  %1145 = getelementptr inbounds i8, ptr %1144, i64 %1142
  %1146 = sub i64 0, %661
  %1147 = getelementptr inbounds i8, ptr %1145, i64 %1146
  tail call void @llvm.prefetch.p0(ptr %1147, i32 0, i32 3, i32 1)
  %1148 = getelementptr inbounds nuw i8, ptr %1147, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1148, i32 0, i32 3, i32 1)
  store i64 %725, ptr %802, align 8, !tbaa !46
  store i64 %676, ptr %965, align 8, !tbaa !46
  store i64 %661, ptr %967, align 8, !tbaa !46
  %1149 = getelementptr inbounds nuw i8, ptr %964, i64 %1139
  br label %1522

1150:                                             ; preds = %798
  %1151 = getelementptr inbounds i8, ptr %804, i64 -32
  %1152 = getelementptr inbounds nuw i8, ptr %802, i64 8
  %1153 = load i64, ptr %1152, align 8
  %1154 = getelementptr inbounds nuw i8, ptr %802, i64 16
  %1155 = load i64, ptr %1154, align 8
  %1156 = getelementptr i8, ptr %578, i64 %803
  %1157 = add i64 %1153, %803
  %1158 = sub i64 0, %1155
  %1159 = getelementptr inbounds i8, ptr %1156, i64 %1158
  %1160 = icmp ugt ptr %804, %579
  %1161 = getelementptr inbounds nuw i8, ptr %578, i64 %1157
  %1162 = icmp ugt ptr %1161, %1151
  %1163 = select i1 %1160, i1 true, i1 %1162
  br i1 %1163, label %1167, label %1164, !prof !105

1164:                                             ; preds = %1150
  %1165 = load <2 x i64>, ptr %799, align 1, !tbaa !9
  store <2 x i64> %1165, ptr %578, align 1, !tbaa !9
  %1166 = icmp ugt i64 %803, 16
  br i1 %1166, label %1169, label %1187, !prof !53

1167:                                             ; preds = %1150
  %1168 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %578, ptr noundef %26, ptr noundef nonnull %1151, ptr noundef nonnull byval(%struct.seq_t) align 8 %802, ptr noundef nonnull %7, ptr noundef %579, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1505

1169:                                             ; preds = %1164
  %1170 = getelementptr inbounds nuw i8, ptr %578, i64 16
  %1171 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %1172 = add i64 %803, -16
  %1173 = load <2 x i64>, ptr %1171, align 1, !tbaa !9
  store <2 x i64> %1173, ptr %1170, align 1, !tbaa !9
  %1174 = icmp ult i64 %1172, 17
  br i1 %1174, label %1187, label %1175

1175:                                             ; preds = %1169
  %1176 = getelementptr inbounds nuw i8, ptr %578, i64 32
  br label %1177

1177:                                             ; preds = %1177, %1175
  %1178 = phi ptr [ %1176, %1175 ], [ %1185, %1177 ]
  %1179 = phi ptr [ %1171, %1175 ], [ %1183, %1177 ]
  %1180 = getelementptr inbounds nuw i8, ptr %1179, i64 16
  %1181 = load <2 x i64>, ptr %1180, align 1, !tbaa !9
  store <2 x i64> %1181, ptr %1178, align 1, !tbaa !9
  %1182 = getelementptr inbounds nuw i8, ptr %1178, i64 16
  %1183 = getelementptr inbounds nuw i8, ptr %1179, i64 32
  %1184 = load <2 x i64>, ptr %1183, align 1, !tbaa !9
  store <2 x i64> %1184, ptr %1182, align 1, !tbaa !9
  %1185 = getelementptr inbounds nuw i8, ptr %1178, i64 32
  %1186 = icmp ult ptr %1185, %1156
  br i1 %1186, label %1177, label %1187, !llvm.loop !101

1187:                                             ; preds = %1177, %1169, %1164
  store ptr %804, ptr %7, align 8, !tbaa !40
  %1188 = ptrtoint ptr %1156 to i64
  %1189 = sub i64 %1188, %54
  %1190 = icmp ugt i64 %1155, %1189
  br i1 %1190, label %1191, label %1204

1191:                                             ; preds = %1187
  %1192 = sub i64 %1188, %310
  %1193 = icmp ugt i64 %1155, %1192
  br i1 %1193, label %2276, label %1194, !prof !53

1194:                                             ; preds = %1191
  %1195 = ptrtoint ptr %1159 to i64
  %1196 = sub i64 %1195, %54
  %1197 = getelementptr inbounds i8, ptr %36, i64 %1196
  %1198 = add i64 %1196, %1153
  %1199 = icmp sgt i64 %1198, 0
  br i1 %1199, label %1201, label %1200

1200:                                             ; preds = %1194
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1156, ptr align 1 %1197, i64 %1153, i1 false)
  br label %1505

1201:                                             ; preds = %1194
  %1202 = sub nsw i64 0, %1196
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1156, ptr align 1 %1197, i64 %1202, i1 false)
  %1203 = getelementptr inbounds nuw i8, ptr %1156, i64 %1202
  br label %1204

1204:                                             ; preds = %1201, %1187
  %1205 = phi i64 [ %1198, %1201 ], [ %1153, %1187 ]
  %1206 = phi ptr [ %32, %1201 ], [ %1159, %1187 ]
  %1207 = phi ptr [ %1203, %1201 ], [ %1156, %1187 ]
  %1208 = icmp ugt i64 %1155, 15
  br i1 %1208, label %1209, label %1225, !prof !91

1209:                                             ; preds = %1204
  %1210 = getelementptr inbounds nuw i8, ptr %1207, i64 %1205
  %1211 = load <2 x i64>, ptr %1206, align 1, !tbaa !9
  store <2 x i64> %1211, ptr %1207, align 1, !tbaa !9
  %1212 = icmp ult i64 %1205, 17
  br i1 %1212, label %1505, label %1213

1213:                                             ; preds = %1209
  %1214 = getelementptr inbounds nuw i8, ptr %1207, i64 16
  br label %1215

1215:                                             ; preds = %1215, %1213
  %1216 = phi ptr [ %1214, %1213 ], [ %1223, %1215 ]
  %1217 = phi ptr [ %1206, %1213 ], [ %1221, %1215 ]
  %1218 = getelementptr inbounds nuw i8, ptr %1217, i64 16
  %1219 = load <2 x i64>, ptr %1218, align 1, !tbaa !9
  store <2 x i64> %1219, ptr %1216, align 1, !tbaa !9
  %1220 = getelementptr inbounds nuw i8, ptr %1216, i64 16
  %1221 = getelementptr inbounds nuw i8, ptr %1217, i64 32
  %1222 = load <2 x i64>, ptr %1221, align 1, !tbaa !9
  store <2 x i64> %1222, ptr %1220, align 1, !tbaa !9
  %1223 = getelementptr inbounds nuw i8, ptr %1216, i64 32
  %1224 = icmp ult ptr %1223, %1210
  br i1 %1224, label %1215, label %1505, !llvm.loop !101

1225:                                             ; preds = %1204
  %1226 = icmp samesign ult i64 %1155, 8
  br i1 %1226, label %1227, label %1249

1227:                                             ; preds = %1225
  %1228 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1155
  %1229 = load i32, ptr %1228, align 4, !tbaa !30
  %1230 = load i8, ptr %1206, align 1, !tbaa !9
  store i8 %1230, ptr %1207, align 1, !tbaa !9
  %1231 = getelementptr inbounds nuw i8, ptr %1206, i64 1
  %1232 = load i8, ptr %1231, align 1, !tbaa !9
  %1233 = getelementptr inbounds nuw i8, ptr %1207, i64 1
  store i8 %1232, ptr %1233, align 1, !tbaa !9
  %1234 = getelementptr inbounds nuw i8, ptr %1206, i64 2
  %1235 = load i8, ptr %1234, align 1, !tbaa !9
  %1236 = getelementptr inbounds nuw i8, ptr %1207, i64 2
  store i8 %1235, ptr %1236, align 1, !tbaa !9
  %1237 = getelementptr inbounds nuw i8, ptr %1206, i64 3
  %1238 = load i8, ptr %1237, align 1, !tbaa !9
  %1239 = getelementptr inbounds nuw i8, ptr %1207, i64 3
  store i8 %1238, ptr %1239, align 1, !tbaa !9
  %1240 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1155
  %1241 = load i32, ptr %1240, align 4, !tbaa !30
  %1242 = zext i32 %1241 to i64
  %1243 = getelementptr inbounds nuw i8, ptr %1206, i64 %1242
  %1244 = getelementptr inbounds nuw i8, ptr %1207, i64 4
  %1245 = load i32, ptr %1243, align 1
  store i32 %1245, ptr %1244, align 1
  %1246 = sext i32 %1229 to i64
  %1247 = sub nsw i64 0, %1246
  %1248 = getelementptr inbounds i8, ptr %1243, i64 %1247
  br label %1251

1249:                                             ; preds = %1225
  %1250 = load i64, ptr %1206, align 1
  store i64 %1250, ptr %1207, align 1
  br label %1251

1251:                                             ; preds = %1249, %1227
  %1252 = phi ptr [ %1248, %1227 ], [ %1206, %1249 ]
  %1253 = getelementptr inbounds nuw i8, ptr %1252, i64 8
  %1254 = getelementptr inbounds nuw i8, ptr %1207, i64 8
  %1255 = icmp ugt i64 %1205, 8
  br i1 %1255, label %1256, label %1505

1256:                                             ; preds = %1251
  %1257 = ptrtoint ptr %1254 to i64
  %1258 = ptrtoint ptr %1253 to i64
  %1259 = sub i64 %1257, %1258
  %1260 = getelementptr i8, ptr %1207, i64 %1205
  %1261 = icmp slt i64 %1259, 16
  br i1 %1261, label %1262, label %1309

1262:                                             ; preds = %1256
  %1263 = add i64 %1153, %54
  %1264 = tail call i64 @llvm.umin.i64(i64 %1155, i64 %1189)
  %1265 = add i64 %1263, %1264
  %1266 = tail call i64 @llvm.umax.i64(i64 %1155, i64 %1189)
  %1267 = add i64 %1265, %1266
  %1268 = sub i64 %1267, %1155
  %1269 = add i64 %317, %1266
  %1270 = tail call i64 @llvm.umax.i64(i64 %1268, i64 %1269)
  %1271 = add i64 %1270, -9
  %1272 = add i64 %1266, %54
  %1273 = sub i64 %1271, %1272
  %1274 = lshr i64 %1273, 3
  %1275 = add nuw nsw i64 %1274, 1
  %1276 = icmp ult i64 %1273, 24
  %1277 = icmp ult i64 %1259, 32
  %1278 = or i1 %1276, %1277
  br i1 %1278, label %1299, label %1279

1279:                                             ; preds = %1262
  %1280 = and i64 %1275, 4611686018427387900
  %1281 = shl i64 %1280, 3
  %1282 = getelementptr i8, ptr %1254, i64 %1281
  %1283 = shl i64 %1280, 3
  %1284 = getelementptr i8, ptr %1253, i64 %1283
  br label %1285

1285:                                             ; preds = %1285, %1279
  %1286 = phi i64 [ 0, %1279 ], [ %1295, %1285 ]
  %1287 = shl i64 %1286, 3
  %1288 = getelementptr i8, ptr %1254, i64 %1287
  %1289 = shl i64 %1286, 3
  %1290 = getelementptr i8, ptr %1253, i64 %1289
  %1291 = getelementptr i8, ptr %1290, i64 16
  %1292 = load <2 x i64>, ptr %1290, align 1
  %1293 = load <2 x i64>, ptr %1291, align 1
  %1294 = getelementptr i8, ptr %1288, i64 16
  store <2 x i64> %1292, ptr %1288, align 1
  store <2 x i64> %1293, ptr %1294, align 1
  %1295 = add nuw i64 %1286, 4
  %1296 = icmp eq i64 %1295, %1280
  br i1 %1296, label %1297, label %1285, !llvm.loop !108

1297:                                             ; preds = %1285
  %1298 = icmp eq i64 %1275, %1280
  br i1 %1298, label %1505, label %1299

1299:                                             ; preds = %1262, %1297
  %1300 = phi ptr [ %1254, %1262 ], [ %1282, %1297 ]
  %1301 = phi ptr [ %1253, %1262 ], [ %1284, %1297 ]
  br label %1302

1302:                                             ; preds = %1299, %1302
  %1303 = phi ptr [ %1306, %1302 ], [ %1300, %1299 ]
  %1304 = phi ptr [ %1307, %1302 ], [ %1301, %1299 ]
  %1305 = load i64, ptr %1304, align 1
  store i64 %1305, ptr %1303, align 1
  %1306 = getelementptr inbounds nuw i8, ptr %1303, i64 8
  %1307 = getelementptr inbounds nuw i8, ptr %1304, i64 8
  %1308 = icmp ult ptr %1306, %1260
  br i1 %1308, label %1302, label %1505, !llvm.loop !109

1309:                                             ; preds = %1256
  %1310 = add i64 %1205, -8
  %1311 = load <2 x i64>, ptr %1253, align 1, !tbaa !9
  store <2 x i64> %1311, ptr %1254, align 1, !tbaa !9
  %1312 = icmp ult i64 %1310, 17
  br i1 %1312, label %1505, label %1313

1313:                                             ; preds = %1309
  %1314 = getelementptr inbounds nuw i8, ptr %1207, i64 24
  br label %1315

1315:                                             ; preds = %1315, %1313
  %1316 = phi ptr [ %1314, %1313 ], [ %1323, %1315 ]
  %1317 = phi ptr [ %1253, %1313 ], [ %1321, %1315 ]
  %1318 = getelementptr inbounds nuw i8, ptr %1317, i64 16
  %1319 = load <2 x i64>, ptr %1318, align 1, !tbaa !9
  store <2 x i64> %1319, ptr %1316, align 1, !tbaa !9
  %1320 = getelementptr inbounds nuw i8, ptr %1316, i64 16
  %1321 = getelementptr inbounds nuw i8, ptr %1317, i64 32
  %1322 = load <2 x i64>, ptr %1321, align 1, !tbaa !9
  store <2 x i64> %1322, ptr %1320, align 1, !tbaa !9
  %1323 = getelementptr inbounds nuw i8, ptr %1316, i64 32
  %1324 = icmp ult ptr %1323, %1260
  br i1 %1324, label %1315, label %1505, !llvm.loop !101

1325:                                             ; preds = %789
  %1326 = and i32 %580, 7
  %1327 = zext nneg i32 %1326 to i64
  %1328 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %1327
  %1329 = load i64, ptr %1328, align 8
  %1330 = getelementptr inbounds nuw i8, ptr %1328, i64 8
  %1331 = load i64, ptr %1330, align 8
  %1332 = getelementptr inbounds nuw i8, ptr %1328, i64 16
  %1333 = load i64, ptr %1332, align 8
  %1334 = getelementptr i8, ptr %578, i64 %1329
  %1335 = add i64 %1331, %1329
  %1336 = load ptr, ptr %7, align 8, !tbaa !40
  %1337 = getelementptr inbounds nuw i8, ptr %1336, i64 %1329
  %1338 = sub i64 0, %1333
  %1339 = getelementptr inbounds i8, ptr %1334, i64 %1338
  %1340 = icmp ugt ptr %1337, %579
  %1341 = getelementptr inbounds nuw i8, ptr %578, i64 %1335
  %1342 = icmp ugt ptr %1341, %309
  %1343 = select i1 %1340, i1 true, i1 %1342
  br i1 %1343, label %1347, label %1344, !prof !105

1344:                                             ; preds = %1325
  %1345 = load <2 x i64>, ptr %1336, align 1, !tbaa !9
  store <2 x i64> %1345, ptr %578, align 1, !tbaa !9
  %1346 = icmp ugt i64 %1329, 16
  br i1 %1346, label %1349, label %1367, !prof !53

1347:                                             ; preds = %1325
  %1348 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %578, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %1328, ptr noundef nonnull %7, ptr noundef %579, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1505

1349:                                             ; preds = %1344
  %1350 = getelementptr inbounds nuw i8, ptr %578, i64 16
  %1351 = getelementptr inbounds nuw i8, ptr %1336, i64 16
  %1352 = add i64 %1329, -16
  %1353 = load <2 x i64>, ptr %1351, align 1, !tbaa !9
  store <2 x i64> %1353, ptr %1350, align 1, !tbaa !9
  %1354 = icmp ult i64 %1352, 17
  br i1 %1354, label %1367, label %1355

1355:                                             ; preds = %1349
  %1356 = getelementptr inbounds nuw i8, ptr %578, i64 32
  br label %1357

1357:                                             ; preds = %1357, %1355
  %1358 = phi ptr [ %1356, %1355 ], [ %1365, %1357 ]
  %1359 = phi ptr [ %1351, %1355 ], [ %1363, %1357 ]
  %1360 = getelementptr inbounds nuw i8, ptr %1359, i64 16
  %1361 = load <2 x i64>, ptr %1360, align 1, !tbaa !9
  store <2 x i64> %1361, ptr %1358, align 1, !tbaa !9
  %1362 = getelementptr inbounds nuw i8, ptr %1358, i64 16
  %1363 = getelementptr inbounds nuw i8, ptr %1359, i64 32
  %1364 = load <2 x i64>, ptr %1363, align 1, !tbaa !9
  store <2 x i64> %1364, ptr %1362, align 1, !tbaa !9
  %1365 = getelementptr inbounds nuw i8, ptr %1358, i64 32
  %1366 = icmp ult ptr %1365, %1334
  br i1 %1366, label %1357, label %1367, !llvm.loop !101

1367:                                             ; preds = %1357, %1349, %1344
  store ptr %1337, ptr %7, align 8, !tbaa !40
  %1368 = ptrtoint ptr %1334 to i64
  %1369 = sub i64 %1368, %54
  %1370 = icmp ugt i64 %1333, %1369
  br i1 %1370, label %1371, label %1384

1371:                                             ; preds = %1367
  %1372 = sub i64 %1368, %310
  %1373 = icmp ugt i64 %1333, %1372
  br i1 %1373, label %2276, label %1374, !prof !53

1374:                                             ; preds = %1371
  %1375 = ptrtoint ptr %1339 to i64
  %1376 = sub i64 %1375, %54
  %1377 = getelementptr inbounds i8, ptr %36, i64 %1376
  %1378 = add i64 %1376, %1331
  %1379 = icmp sgt i64 %1378, 0
  br i1 %1379, label %1381, label %1380

1380:                                             ; preds = %1374
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1334, ptr align 1 %1377, i64 %1331, i1 false)
  br label %1505

1381:                                             ; preds = %1374
  %1382 = sub nsw i64 0, %1376
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1334, ptr align 1 %1377, i64 %1382, i1 false)
  %1383 = getelementptr inbounds nuw i8, ptr %1334, i64 %1382
  br label %1384

1384:                                             ; preds = %1381, %1367
  %1385 = phi i64 [ %1378, %1381 ], [ %1331, %1367 ]
  %1386 = phi ptr [ %32, %1381 ], [ %1339, %1367 ]
  %1387 = phi ptr [ %1383, %1381 ], [ %1334, %1367 ]
  %1388 = icmp ugt i64 %1333, 15
  br i1 %1388, label %1389, label %1405, !prof !91

1389:                                             ; preds = %1384
  %1390 = getelementptr inbounds nuw i8, ptr %1387, i64 %1385
  %1391 = load <2 x i64>, ptr %1386, align 1, !tbaa !9
  store <2 x i64> %1391, ptr %1387, align 1, !tbaa !9
  %1392 = icmp ult i64 %1385, 17
  br i1 %1392, label %1505, label %1393

1393:                                             ; preds = %1389
  %1394 = getelementptr inbounds nuw i8, ptr %1387, i64 16
  br label %1395

1395:                                             ; preds = %1395, %1393
  %1396 = phi ptr [ %1394, %1393 ], [ %1403, %1395 ]
  %1397 = phi ptr [ %1386, %1393 ], [ %1401, %1395 ]
  %1398 = getelementptr inbounds nuw i8, ptr %1397, i64 16
  %1399 = load <2 x i64>, ptr %1398, align 1, !tbaa !9
  store <2 x i64> %1399, ptr %1396, align 1, !tbaa !9
  %1400 = getelementptr inbounds nuw i8, ptr %1396, i64 16
  %1401 = getelementptr inbounds nuw i8, ptr %1397, i64 32
  %1402 = load <2 x i64>, ptr %1401, align 1, !tbaa !9
  store <2 x i64> %1402, ptr %1400, align 1, !tbaa !9
  %1403 = getelementptr inbounds nuw i8, ptr %1396, i64 32
  %1404 = icmp ult ptr %1403, %1390
  br i1 %1404, label %1395, label %1505, !llvm.loop !101

1405:                                             ; preds = %1384
  %1406 = icmp samesign ult i64 %1333, 8
  br i1 %1406, label %1407, label %1429

1407:                                             ; preds = %1405
  %1408 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1333
  %1409 = load i32, ptr %1408, align 4, !tbaa !30
  %1410 = load i8, ptr %1386, align 1, !tbaa !9
  store i8 %1410, ptr %1387, align 1, !tbaa !9
  %1411 = getelementptr inbounds nuw i8, ptr %1386, i64 1
  %1412 = load i8, ptr %1411, align 1, !tbaa !9
  %1413 = getelementptr inbounds nuw i8, ptr %1387, i64 1
  store i8 %1412, ptr %1413, align 1, !tbaa !9
  %1414 = getelementptr inbounds nuw i8, ptr %1386, i64 2
  %1415 = load i8, ptr %1414, align 1, !tbaa !9
  %1416 = getelementptr inbounds nuw i8, ptr %1387, i64 2
  store i8 %1415, ptr %1416, align 1, !tbaa !9
  %1417 = getelementptr inbounds nuw i8, ptr %1386, i64 3
  %1418 = load i8, ptr %1417, align 1, !tbaa !9
  %1419 = getelementptr inbounds nuw i8, ptr %1387, i64 3
  store i8 %1418, ptr %1419, align 1, !tbaa !9
  %1420 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1333
  %1421 = load i32, ptr %1420, align 4, !tbaa !30
  %1422 = zext i32 %1421 to i64
  %1423 = getelementptr inbounds nuw i8, ptr %1386, i64 %1422
  %1424 = getelementptr inbounds nuw i8, ptr %1387, i64 4
  %1425 = load i32, ptr %1423, align 1
  store i32 %1425, ptr %1424, align 1
  %1426 = sext i32 %1409 to i64
  %1427 = sub nsw i64 0, %1426
  %1428 = getelementptr inbounds i8, ptr %1423, i64 %1427
  br label %1431

1429:                                             ; preds = %1405
  %1430 = load i64, ptr %1386, align 1
  store i64 %1430, ptr %1387, align 1
  br label %1431

1431:                                             ; preds = %1429, %1407
  %1432 = phi ptr [ %1428, %1407 ], [ %1386, %1429 ]
  %1433 = getelementptr inbounds nuw i8, ptr %1432, i64 8
  %1434 = getelementptr inbounds nuw i8, ptr %1387, i64 8
  %1435 = icmp ugt i64 %1385, 8
  br i1 %1435, label %1436, label %1505

1436:                                             ; preds = %1431
  %1437 = ptrtoint ptr %1434 to i64
  %1438 = ptrtoint ptr %1433 to i64
  %1439 = sub i64 %1437, %1438
  %1440 = getelementptr i8, ptr %1387, i64 %1385
  %1441 = icmp slt i64 %1439, 16
  br i1 %1441, label %1442, label %1489

1442:                                             ; preds = %1436
  %1443 = add i64 %1331, %54
  %1444 = tail call i64 @llvm.umin.i64(i64 %1333, i64 %1369)
  %1445 = add i64 %1443, %1444
  %1446 = tail call i64 @llvm.umax.i64(i64 %1333, i64 %1369)
  %1447 = add i64 %1445, %1446
  %1448 = sub i64 %1447, %1333
  %1449 = add i64 %318, %1446
  %1450 = tail call i64 @llvm.umax.i64(i64 %1448, i64 %1449)
  %1451 = add i64 %1450, -9
  %1452 = add i64 %1446, %54
  %1453 = sub i64 %1451, %1452
  %1454 = lshr i64 %1453, 3
  %1455 = add nuw nsw i64 %1454, 1
  %1456 = icmp ult i64 %1453, 24
  %1457 = icmp ult i64 %1439, 32
  %1458 = or i1 %1456, %1457
  br i1 %1458, label %1479, label %1459

1459:                                             ; preds = %1442
  %1460 = and i64 %1455, 4611686018427387900
  %1461 = shl i64 %1460, 3
  %1462 = getelementptr i8, ptr %1434, i64 %1461
  %1463 = shl i64 %1460, 3
  %1464 = getelementptr i8, ptr %1433, i64 %1463
  br label %1465

1465:                                             ; preds = %1465, %1459
  %1466 = phi i64 [ 0, %1459 ], [ %1475, %1465 ]
  %1467 = shl i64 %1466, 3
  %1468 = getelementptr i8, ptr %1434, i64 %1467
  %1469 = shl i64 %1466, 3
  %1470 = getelementptr i8, ptr %1433, i64 %1469
  %1471 = getelementptr i8, ptr %1470, i64 16
  %1472 = load <2 x i64>, ptr %1470, align 1
  %1473 = load <2 x i64>, ptr %1471, align 1
  %1474 = getelementptr i8, ptr %1468, i64 16
  store <2 x i64> %1472, ptr %1468, align 1
  store <2 x i64> %1473, ptr %1474, align 1
  %1475 = add nuw i64 %1466, 4
  %1476 = icmp eq i64 %1475, %1460
  br i1 %1476, label %1477, label %1465, !llvm.loop !110

1477:                                             ; preds = %1465
  %1478 = icmp eq i64 %1455, %1460
  br i1 %1478, label %1505, label %1479

1479:                                             ; preds = %1442, %1477
  %1480 = phi ptr [ %1434, %1442 ], [ %1462, %1477 ]
  %1481 = phi ptr [ %1433, %1442 ], [ %1464, %1477 ]
  br label %1482

1482:                                             ; preds = %1479, %1482
  %1483 = phi ptr [ %1486, %1482 ], [ %1480, %1479 ]
  %1484 = phi ptr [ %1487, %1482 ], [ %1481, %1479 ]
  %1485 = load i64, ptr %1484, align 1
  store i64 %1485, ptr %1483, align 1
  %1486 = getelementptr inbounds nuw i8, ptr %1483, i64 8
  %1487 = getelementptr inbounds nuw i8, ptr %1484, i64 8
  %1488 = icmp ult ptr %1486, %1440
  br i1 %1488, label %1482, label %1505, !llvm.loop !111

1489:                                             ; preds = %1436
  %1490 = add i64 %1385, -8
  %1491 = load <2 x i64>, ptr %1433, align 1, !tbaa !9
  store <2 x i64> %1491, ptr %1434, align 1, !tbaa !9
  %1492 = icmp ult i64 %1490, 17
  br i1 %1492, label %1505, label %1493

1493:                                             ; preds = %1489
  %1494 = getelementptr inbounds nuw i8, ptr %1387, i64 24
  br label %1495

1495:                                             ; preds = %1495, %1493
  %1496 = phi ptr [ %1494, %1493 ], [ %1503, %1495 ]
  %1497 = phi ptr [ %1433, %1493 ], [ %1501, %1495 ]
  %1498 = getelementptr inbounds nuw i8, ptr %1497, i64 16
  %1499 = load <2 x i64>, ptr %1498, align 1, !tbaa !9
  store <2 x i64> %1499, ptr %1496, align 1, !tbaa !9
  %1500 = getelementptr inbounds nuw i8, ptr %1496, i64 16
  %1501 = getelementptr inbounds nuw i8, ptr %1497, i64 32
  %1502 = load <2 x i64>, ptr %1501, align 1, !tbaa !9
  store <2 x i64> %1502, ptr %1500, align 1, !tbaa !9
  %1503 = getelementptr inbounds nuw i8, ptr %1496, i64 32
  %1504 = icmp ult ptr %1503, %1440
  br i1 %1504, label %1495, label %1505, !llvm.loop !101

1505:                                             ; preds = %1495, %1482, %1395, %1315, %1302, %1215, %1477, %1297, %1347, %1380, %1389, %1431, %1489, %1167, %1200, %1209, %1251, %1309
  %1506 = phi i64 [ %1168, %1167 ], [ %1157, %1200 ], [ %1157, %1251 ], [ %1157, %1209 ], [ %1157, %1309 ], [ %1348, %1347 ], [ %1335, %1380 ], [ %1335, %1431 ], [ %1335, %1389 ], [ %1335, %1489 ], [ %1157, %1297 ], [ %1335, %1477 ], [ %1157, %1215 ], [ %1157, %1302 ], [ %1157, %1315 ], [ %1335, %1395 ], [ %1335, %1482 ], [ %1335, %1495 ]
  %1507 = icmp ult i64 %1506, -119
  br i1 %1507, label %1508, label %2276

1508:                                             ; preds = %1505
  %1509 = add i64 %725, %581
  %1510 = icmp ugt i64 %661, %1509
  %1511 = select i1 %1510, ptr %36, ptr %32
  %1512 = getelementptr inbounds i8, ptr %1511, i64 %1509
  %1513 = sub i64 0, %661
  %1514 = getelementptr inbounds i8, ptr %1512, i64 %1513
  tail call void @llvm.prefetch.p0(ptr %1514, i32 0, i32 3, i32 1)
  %1515 = getelementptr inbounds nuw i8, ptr %1514, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1515, i32 0, i32 3, i32 1)
  %1516 = and i32 %580, 7
  %1517 = zext nneg i32 %1516 to i64
  %1518 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %1517
  store i64 %725, ptr %1518, align 8, !tbaa !46
  %1519 = getelementptr inbounds nuw i8, ptr %1518, i64 8
  store i64 %676, ptr %1519, align 8, !tbaa !46
  %1520 = getelementptr inbounds nuw i8, ptr %1518, i64 16
  store i64 %661, ptr %1520, align 8, !tbaa !46
  %1521 = getelementptr inbounds nuw i8, ptr %578, i64 %1506
  br label %1522

1522:                                             ; preds = %1508, %1141
  %1523 = phi i64 [ %1509, %1508 ], [ %1142, %1141 ]
  %1524 = phi ptr [ %579, %1508 ], [ %313, %1141 ]
  %1525 = phi ptr [ %1521, %1508 ], [ %1149, %1141 ]
  %1526 = add i64 %1523, %676
  %1527 = add nuw i32 %580, 1
  %1528 = icmp eq i32 %1527, %5
  br i1 %1528, label %1529, label %568, !llvm.loop !112

1529:                                             ; preds = %1522, %293
  %1530 = phi i32 [ %296, %293 ], [ %791, %1522 ]
  %1531 = phi ptr [ %297, %293 ], [ %790, %1522 ]
  %1532 = phi i64 [ %298, %293 ], [ %662, %1522 ]
  %1533 = phi i64 [ %299, %293 ], [ %660, %1522 ]
  %1534 = phi i64 [ %300, %293 ], [ %661, %1522 ]
  %1535 = phi i32 [ %305, %293 ], [ %5, %1522 ]
  %1536 = phi ptr [ %30, %293 ], [ %1524, %1522 ]
  %1537 = phi ptr [ %1, %293 ], [ %1525, %1522 ]
  %1538 = icmp eq ptr %1531, %3
  %1539 = icmp eq i32 %1530, 64
  %1540 = select i1 %1538, i1 %1539, i1 false
  br i1 %1540, label %1541, label %2276

1541:                                             ; preds = %1529
  %1542 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1535, i32 %52), !nosanitize !90
  %1543 = extractvalue { i32, i1 } %1542, 1, !nosanitize !90
  br i1 %1543, label %370, label %1544, !prof !113, !nosanitize !90

1544:                                             ; preds = %1541
  %1545 = extractvalue { i32, i1 } %1542, 0
  %1546 = icmp slt i32 %1545, %5
  br i1 %1546, label %1547, label %1557

1547:                                             ; preds = %1544
  %1548 = getelementptr inbounds i8, ptr %26, i64 -32
  %1549 = ptrtoint ptr %34 to i64
  %1550 = ptrtoint ptr %26 to i64
  %1551 = getelementptr i8, ptr %0, i64 30372
  %1552 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %1553 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %1554 = add i64 %54, 16
  %1555 = add i64 %54, 16
  %1556 = add i64 %54, 16
  br label %1565

1557:                                             ; preds = %2271, %1544
  %1558 = phi ptr [ %1536, %1544 ], [ %2272, %2271 ]
  %1559 = phi ptr [ %1537, %1544 ], [ %2273, %2271 ]
  %1560 = trunc i64 %1534 to i32
  store i32 %1560, ptr %40, align 4, !tbaa !30
  %1561 = trunc i64 %1533 to i32
  store i32 %1561, ptr %44, align 4, !tbaa !30
  %1562 = trunc i64 %1532 to i32
  store i32 %1562, ptr %48, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #18
  %1563 = load i32, ptr %16, align 8, !tbaa !35
  %1564 = load ptr, ptr %7, align 8, !tbaa !40
  br label %2278

1565:                                             ; preds = %2271, %1547
  %1566 = phi i32 [ %1545, %1547 ], [ %2274, %2271 ]
  %1567 = phi ptr [ %1537, %1547 ], [ %2273, %2271 ]
  %1568 = phi ptr [ %1536, %1547 ], [ %2272, %2271 ]
  %1569 = and i32 %1566, 7
  %1570 = zext nneg i32 %1569 to i64
  %1571 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %1570
  %1572 = load i32, ptr %16, align 8, !tbaa !35
  %1573 = icmp eq i32 %1572, 2
  br i1 %1573, label %1574, label %2090

1574:                                             ; preds = %1565
  %1575 = load ptr, ptr %7, align 8, !tbaa !40
  %1576 = load i64, ptr %1571, align 8, !tbaa !96
  %1577 = getelementptr inbounds nuw i8, ptr %1575, i64 %1576
  %1578 = load ptr, ptr %29, align 8, !tbaa !34
  %1579 = icmp ugt ptr %1577, %1578
  br i1 %1579, label %1580, label %1915

1580:                                             ; preds = %1574
  %1581 = ptrtoint ptr %1578 to i64
  %1582 = ptrtoint ptr %1575 to i64
  %1583 = sub i64 %1581, %1582
  %1584 = icmp eq ptr %1578, %1575
  br i1 %1584, label %1735, label %1585

1585:                                             ; preds = %1580
  %1586 = ptrtoint ptr %1567 to i64
  %1587 = sub i64 %1550, %1586
  %1588 = icmp ugt i64 %1583, %1587
  br i1 %1588, label %2276, label %1589

1589:                                             ; preds = %1585
  %1590 = sub i64 %1586, %1582
  %1591 = getelementptr inbounds nuw i8, ptr %1567, i64 %1583
  %1592 = icmp ult i64 %1583, 8
  %1593 = icmp sgt i64 %1590, -8
  %1594 = or i1 %1593, %1592
  br i1 %1594, label %1595, label %1649

1595:                                             ; preds = %1589
  %1596 = add i64 %1586, %1581
  %1597 = sub i64 %1596, %1582
  %1598 = add i64 %1586, 1
  %1599 = tail call i64 @llvm.umax.i64(i64 %1597, i64 %1598)
  %1600 = sub i64 %1599, %1586
  %1601 = icmp ult i64 %1600, 4
  %1602 = icmp ult i64 %1590, 32
  %1603 = or i1 %1601, %1602
  br i1 %1603, label %1639, label %1604

1604:                                             ; preds = %1595
  %1605 = icmp ult i64 %1600, 32
  br i1 %1605, label %1625, label %1606

1606:                                             ; preds = %1604
  %1607 = and i64 %1600, -32
  br label %1608

1608:                                             ; preds = %1608, %1606
  %1609 = phi i64 [ 0, %1606 ], [ %1616, %1608 ]
  %1610 = getelementptr i8, ptr %1567, i64 %1609
  %1611 = getelementptr i8, ptr %1575, i64 %1609
  %1612 = getelementptr i8, ptr %1611, i64 16
  %1613 = load <16 x i8>, ptr %1611, align 1, !tbaa !9
  %1614 = load <16 x i8>, ptr %1612, align 1, !tbaa !9
  %1615 = getelementptr i8, ptr %1610, i64 16
  store <16 x i8> %1613, ptr %1610, align 1, !tbaa !9
  store <16 x i8> %1614, ptr %1615, align 1, !tbaa !9
  %1616 = add nuw i64 %1609, 32
  %1617 = icmp eq i64 %1616, %1607
  br i1 %1617, label %1618, label %1608, !llvm.loop !114

1618:                                             ; preds = %1608
  %1619 = icmp eq i64 %1600, %1607
  br i1 %1619, label %1732, label %1620

1620:                                             ; preds = %1618
  %1621 = getelementptr i8, ptr %1567, i64 %1607
  %1622 = getelementptr i8, ptr %1575, i64 %1607
  %1623 = and i64 %1600, 28
  %1624 = icmp eq i64 %1623, 0
  br i1 %1624, label %1639, label %1625

1625:                                             ; preds = %1620, %1604
  %1626 = phi i64 [ %1607, %1620 ], [ 0, %1604 ]
  %1627 = and i64 %1600, -4
  %1628 = getelementptr i8, ptr %1567, i64 %1627
  %1629 = getelementptr i8, ptr %1575, i64 %1627
  br label %1630

1630:                                             ; preds = %1630, %1625
  %1631 = phi i64 [ %1626, %1625 ], [ %1635, %1630 ]
  %1632 = getelementptr i8, ptr %1567, i64 %1631
  %1633 = getelementptr i8, ptr %1575, i64 %1631
  %1634 = load <4 x i8>, ptr %1633, align 1, !tbaa !9
  store <4 x i8> %1634, ptr %1632, align 1, !tbaa !9
  %1635 = add nuw i64 %1631, 4
  %1636 = icmp eq i64 %1635, %1627
  br i1 %1636, label %1637, label %1630, !llvm.loop !115

1637:                                             ; preds = %1630
  %1638 = icmp eq i64 %1600, %1627
  br i1 %1638, label %1732, label %1639

1639:                                             ; preds = %1620, %1637, %1595
  %1640 = phi ptr [ %1567, %1595 ], [ %1621, %1620 ], [ %1628, %1637 ]
  %1641 = phi ptr [ %1575, %1595 ], [ %1622, %1620 ], [ %1629, %1637 ]
  br label %1642

1642:                                             ; preds = %1639, %1642
  %1643 = phi ptr [ %1647, %1642 ], [ %1640, %1639 ]
  %1644 = phi ptr [ %1645, %1642 ], [ %1641, %1639 ]
  %1645 = getelementptr inbounds nuw i8, ptr %1644, i64 1
  %1646 = load i8, ptr %1644, align 1, !tbaa !9
  %1647 = getelementptr inbounds nuw i8, ptr %1643, i64 1
  store i8 %1646, ptr %1643, align 1, !tbaa !9
  %1648 = icmp ult ptr %1647, %1591
  br i1 %1648, label %1642, label %1732, !llvm.loop !116

1649:                                             ; preds = %1589
  %1650 = icmp sgt i64 %1583, 31
  %1651 = icmp samesign ult i64 %1590, -16
  %1652 = and i1 %1651, %1650
  br i1 %1652, label %1653, label %1673

1653:                                             ; preds = %1649
  %1654 = getelementptr inbounds i8, ptr %1591, i64 -32
  %1655 = add nsw i64 %1583, -32
  %1656 = getelementptr inbounds nuw i8, ptr %1567, i64 %1655
  %1657 = load <2 x i64>, ptr %1575, align 1, !tbaa !9
  store <2 x i64> %1657, ptr %1567, align 1, !tbaa !9
  %1658 = icmp samesign ult i64 %1655, 17
  br i1 %1658, label %1671, label %1659

1659:                                             ; preds = %1653
  %1660 = getelementptr inbounds nuw i8, ptr %1567, i64 16
  br label %1661

1661:                                             ; preds = %1661, %1659
  %1662 = phi ptr [ %1660, %1659 ], [ %1669, %1661 ]
  %1663 = phi ptr [ %1575, %1659 ], [ %1667, %1661 ]
  %1664 = getelementptr inbounds nuw i8, ptr %1663, i64 16
  %1665 = load <2 x i64>, ptr %1664, align 1, !tbaa !9
  store <2 x i64> %1665, ptr %1662, align 1, !tbaa !9
  %1666 = getelementptr inbounds nuw i8, ptr %1662, i64 16
  %1667 = getelementptr inbounds nuw i8, ptr %1663, i64 32
  %1668 = load <2 x i64>, ptr %1667, align 1, !tbaa !9
  store <2 x i64> %1668, ptr %1666, align 1, !tbaa !9
  %1669 = getelementptr inbounds nuw i8, ptr %1662, i64 32
  %1670 = icmp ult ptr %1669, %1656
  br i1 %1670, label %1661, label %1671, !llvm.loop !101

1671:                                             ; preds = %1661, %1653
  %1672 = getelementptr inbounds i8, ptr %1575, i64 %1655
  br label %1673

1673:                                             ; preds = %1671, %1649
  %1674 = phi ptr [ %1654, %1671 ], [ %1567, %1649 ]
  %1675 = phi ptr [ %1672, %1671 ], [ %1575, %1649 ]
  %1676 = ptrtoint ptr %1674 to i64
  %1677 = add i64 %1586, %1581
  %1678 = sub i64 %1677, %1582
  %1679 = add nuw i64 %1676, 1
  %1680 = tail call i64 @llvm.umax.i64(i64 %1678, i64 %1679)
  %1681 = sub i64 %1680, %1676
  %1682 = icmp ult i64 %1681, 4
  %1683 = ptrtoint ptr %1675 to i64
  %1684 = sub i64 %1676, %1683
  %1685 = icmp ult i64 %1684, 32
  %1686 = select i1 %1682, i1 true, i1 %1685
  br i1 %1686, label %1722, label %1687

1687:                                             ; preds = %1673
  %1688 = icmp ult i64 %1681, 32
  br i1 %1688, label %1708, label %1689

1689:                                             ; preds = %1687
  %1690 = and i64 %1681, -32
  br label %1691

1691:                                             ; preds = %1691, %1689
  %1692 = phi i64 [ 0, %1689 ], [ %1699, %1691 ]
  %1693 = getelementptr i8, ptr %1674, i64 %1692
  %1694 = getelementptr i8, ptr %1675, i64 %1692
  %1695 = getelementptr i8, ptr %1694, i64 16
  %1696 = load <16 x i8>, ptr %1694, align 1, !tbaa !9
  %1697 = load <16 x i8>, ptr %1695, align 1, !tbaa !9
  %1698 = getelementptr i8, ptr %1693, i64 16
  store <16 x i8> %1696, ptr %1693, align 1, !tbaa !9
  store <16 x i8> %1697, ptr %1698, align 1, !tbaa !9
  %1699 = add nuw i64 %1692, 32
  %1700 = icmp eq i64 %1699, %1690
  br i1 %1700, label %1701, label %1691, !llvm.loop !117

1701:                                             ; preds = %1691
  %1702 = icmp eq i64 %1681, %1690
  br i1 %1702, label %1732, label %1703

1703:                                             ; preds = %1701
  %1704 = getelementptr i8, ptr %1674, i64 %1690
  %1705 = getelementptr i8, ptr %1675, i64 %1690
  %1706 = and i64 %1681, 28
  %1707 = icmp eq i64 %1706, 0
  br i1 %1707, label %1722, label %1708

1708:                                             ; preds = %1703, %1687
  %1709 = phi i64 [ %1690, %1703 ], [ 0, %1687 ]
  %1710 = and i64 %1681, -4
  %1711 = getelementptr i8, ptr %1674, i64 %1710
  %1712 = getelementptr i8, ptr %1675, i64 %1710
  br label %1713

1713:                                             ; preds = %1713, %1708
  %1714 = phi i64 [ %1709, %1708 ], [ %1718, %1713 ]
  %1715 = getelementptr i8, ptr %1674, i64 %1714
  %1716 = getelementptr i8, ptr %1675, i64 %1714
  %1717 = load <4 x i8>, ptr %1716, align 1, !tbaa !9
  store <4 x i8> %1717, ptr %1715, align 1, !tbaa !9
  %1718 = add nuw i64 %1714, 4
  %1719 = icmp eq i64 %1718, %1710
  br i1 %1719, label %1720, label %1713, !llvm.loop !118

1720:                                             ; preds = %1713
  %1721 = icmp eq i64 %1681, %1710
  br i1 %1721, label %1732, label %1722

1722:                                             ; preds = %1703, %1720, %1673
  %1723 = phi ptr [ %1674, %1673 ], [ %1704, %1703 ], [ %1711, %1720 ]
  %1724 = phi ptr [ %1675, %1673 ], [ %1705, %1703 ], [ %1712, %1720 ]
  br label %1725

1725:                                             ; preds = %1722, %1725
  %1726 = phi ptr [ %1730, %1725 ], [ %1723, %1722 ]
  %1727 = phi ptr [ %1728, %1725 ], [ %1724, %1722 ]
  %1728 = getelementptr inbounds nuw i8, ptr %1727, i64 1
  %1729 = load i8, ptr %1727, align 1, !tbaa !9
  %1730 = getelementptr inbounds nuw i8, ptr %1726, i64 1
  store i8 %1729, ptr %1726, align 1, !tbaa !9
  %1731 = icmp ult ptr %1730, %1591
  br i1 %1731, label %1725, label %1732, !llvm.loop !119

1732:                                             ; preds = %1725, %1642, %1701, %1720, %1618, %1637
  %1733 = load i64, ptr %1571, align 8, !tbaa !96
  %1734 = sub i64 %1733, %1583
  store i64 %1734, ptr %1571, align 8, !tbaa !96
  br label %1735

1735:                                             ; preds = %1580, %1732
  %1736 = phi i64 [ %1734, %1732 ], [ %1576, %1580 ]
  %1737 = phi ptr [ %1591, %1732 ], [ %1567, %1580 ]
  store ptr %1551, ptr %7, align 8, !tbaa !40
  store i32 0, ptr %16, align 8, !tbaa !35
  %1738 = getelementptr inbounds nuw i8, ptr %1571, i64 8
  %1739 = load i64, ptr %1738, align 8
  %1740 = getelementptr inbounds nuw i8, ptr %1571, i64 16
  %1741 = load i64, ptr %1740, align 8
  %1742 = getelementptr i8, ptr %1737, i64 %1736
  %1743 = add i64 %1739, %1736
  %1744 = getelementptr i8, ptr %1551, i64 %1736
  %1745 = sub i64 0, %1741
  %1746 = getelementptr inbounds i8, ptr %1742, i64 %1745
  %1747 = icmp sgt i64 %1736, 65536
  %1748 = getelementptr inbounds nuw i8, ptr %1737, i64 %1743
  %1749 = icmp ugt ptr %1748, %1548
  %1750 = select i1 %1747, i1 true, i1 %1749
  br i1 %1750, label %1754, label %1751, !prof !105

1751:                                             ; preds = %1735
  %1752 = load <2 x i64>, ptr %1551, align 1, !tbaa !9
  store <2 x i64> %1752, ptr %1737, align 1, !tbaa !9
  %1753 = icmp ugt i64 %1736, 16
  br i1 %1753, label %1756, label %1773, !prof !53

1754:                                             ; preds = %1735
  %1755 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1737, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %1571, ptr noundef nonnull %7, ptr noundef nonnull %1552, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %1911

1756:                                             ; preds = %1751
  %1757 = getelementptr inbounds nuw i8, ptr %1737, i64 16
  %1758 = add i64 %1736, -16
  %1759 = load <2 x i64>, ptr %1553, align 1, !tbaa !9
  store <2 x i64> %1759, ptr %1757, align 1, !tbaa !9
  %1760 = icmp ult i64 %1758, 17
  br i1 %1760, label %1773, label %1761

1761:                                             ; preds = %1756
  %1762 = getelementptr inbounds nuw i8, ptr %1737, i64 32
  br label %1763

1763:                                             ; preds = %1763, %1761
  %1764 = phi ptr [ %1762, %1761 ], [ %1771, %1763 ]
  %1765 = phi ptr [ %1553, %1761 ], [ %1769, %1763 ]
  %1766 = getelementptr inbounds nuw i8, ptr %1765, i64 16
  %1767 = load <2 x i64>, ptr %1766, align 1, !tbaa !9
  store <2 x i64> %1767, ptr %1764, align 1, !tbaa !9
  %1768 = getelementptr inbounds nuw i8, ptr %1764, i64 16
  %1769 = getelementptr inbounds nuw i8, ptr %1765, i64 32
  %1770 = load <2 x i64>, ptr %1769, align 1, !tbaa !9
  store <2 x i64> %1770, ptr %1768, align 1, !tbaa !9
  %1771 = getelementptr inbounds nuw i8, ptr %1764, i64 32
  %1772 = icmp ult ptr %1771, %1742
  br i1 %1772, label %1763, label %1773, !llvm.loop !101

1773:                                             ; preds = %1763, %1756, %1751
  store ptr %1744, ptr %7, align 8, !tbaa !40
  %1774 = ptrtoint ptr %1742 to i64
  %1775 = sub i64 %1774, %54
  %1776 = icmp ugt i64 %1741, %1775
  br i1 %1776, label %1777, label %1790

1777:                                             ; preds = %1773
  %1778 = sub i64 %1774, %1549
  %1779 = icmp ugt i64 %1741, %1778
  br i1 %1779, label %2276, label %1780, !prof !53

1780:                                             ; preds = %1777
  %1781 = ptrtoint ptr %1746 to i64
  %1782 = sub i64 %1781, %54
  %1783 = getelementptr inbounds i8, ptr %36, i64 %1782
  %1784 = add i64 %1782, %1739
  %1785 = icmp sgt i64 %1784, 0
  br i1 %1785, label %1787, label %1786

1786:                                             ; preds = %1780
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1742, ptr align 1 %1783, i64 %1739, i1 false)
  br label %1911

1787:                                             ; preds = %1780
  %1788 = sub nsw i64 0, %1782
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1742, ptr align 1 %1783, i64 %1788, i1 false)
  %1789 = getelementptr inbounds nuw i8, ptr %1742, i64 %1788
  br label %1790

1790:                                             ; preds = %1787, %1773
  %1791 = phi i64 [ %1784, %1787 ], [ %1739, %1773 ]
  %1792 = phi ptr [ %32, %1787 ], [ %1746, %1773 ]
  %1793 = phi ptr [ %1789, %1787 ], [ %1742, %1773 ]
  %1794 = icmp ugt i64 %1741, 15
  br i1 %1794, label %1795, label %1811, !prof !91

1795:                                             ; preds = %1790
  %1796 = getelementptr inbounds nuw i8, ptr %1793, i64 %1791
  %1797 = load <2 x i64>, ptr %1792, align 1, !tbaa !9
  store <2 x i64> %1797, ptr %1793, align 1, !tbaa !9
  %1798 = icmp ult i64 %1791, 17
  br i1 %1798, label %1911, label %1799

1799:                                             ; preds = %1795
  %1800 = getelementptr inbounds nuw i8, ptr %1793, i64 16
  br label %1801

1801:                                             ; preds = %1801, %1799
  %1802 = phi ptr [ %1800, %1799 ], [ %1809, %1801 ]
  %1803 = phi ptr [ %1792, %1799 ], [ %1807, %1801 ]
  %1804 = getelementptr inbounds nuw i8, ptr %1803, i64 16
  %1805 = load <2 x i64>, ptr %1804, align 1, !tbaa !9
  store <2 x i64> %1805, ptr %1802, align 1, !tbaa !9
  %1806 = getelementptr inbounds nuw i8, ptr %1802, i64 16
  %1807 = getelementptr inbounds nuw i8, ptr %1803, i64 32
  %1808 = load <2 x i64>, ptr %1807, align 1, !tbaa !9
  store <2 x i64> %1808, ptr %1806, align 1, !tbaa !9
  %1809 = getelementptr inbounds nuw i8, ptr %1802, i64 32
  %1810 = icmp ult ptr %1809, %1796
  br i1 %1810, label %1801, label %1911, !llvm.loop !101

1811:                                             ; preds = %1790
  %1812 = icmp samesign ult i64 %1741, 8
  br i1 %1812, label %1813, label %1835

1813:                                             ; preds = %1811
  %1814 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1741
  %1815 = load i32, ptr %1814, align 4, !tbaa !30
  %1816 = load i8, ptr %1792, align 1, !tbaa !9
  store i8 %1816, ptr %1793, align 1, !tbaa !9
  %1817 = getelementptr inbounds nuw i8, ptr %1792, i64 1
  %1818 = load i8, ptr %1817, align 1, !tbaa !9
  %1819 = getelementptr inbounds nuw i8, ptr %1793, i64 1
  store i8 %1818, ptr %1819, align 1, !tbaa !9
  %1820 = getelementptr inbounds nuw i8, ptr %1792, i64 2
  %1821 = load i8, ptr %1820, align 1, !tbaa !9
  %1822 = getelementptr inbounds nuw i8, ptr %1793, i64 2
  store i8 %1821, ptr %1822, align 1, !tbaa !9
  %1823 = getelementptr inbounds nuw i8, ptr %1792, i64 3
  %1824 = load i8, ptr %1823, align 1, !tbaa !9
  %1825 = getelementptr inbounds nuw i8, ptr %1793, i64 3
  store i8 %1824, ptr %1825, align 1, !tbaa !9
  %1826 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1741
  %1827 = load i32, ptr %1826, align 4, !tbaa !30
  %1828 = zext i32 %1827 to i64
  %1829 = getelementptr inbounds nuw i8, ptr %1792, i64 %1828
  %1830 = getelementptr inbounds nuw i8, ptr %1793, i64 4
  %1831 = load i32, ptr %1829, align 1
  store i32 %1831, ptr %1830, align 1
  %1832 = sext i32 %1815 to i64
  %1833 = sub nsw i64 0, %1832
  %1834 = getelementptr inbounds i8, ptr %1829, i64 %1833
  br label %1837

1835:                                             ; preds = %1811
  %1836 = load i64, ptr %1792, align 1
  store i64 %1836, ptr %1793, align 1
  br label %1837

1837:                                             ; preds = %1835, %1813
  %1838 = phi ptr [ %1834, %1813 ], [ %1792, %1835 ]
  %1839 = getelementptr inbounds nuw i8, ptr %1838, i64 8
  %1840 = getelementptr inbounds nuw i8, ptr %1793, i64 8
  %1841 = icmp ugt i64 %1791, 8
  br i1 %1841, label %1842, label %1911

1842:                                             ; preds = %1837
  %1843 = ptrtoint ptr %1840 to i64
  %1844 = ptrtoint ptr %1839 to i64
  %1845 = sub i64 %1843, %1844
  %1846 = getelementptr i8, ptr %1793, i64 %1791
  %1847 = icmp slt i64 %1845, 16
  br i1 %1847, label %1848, label %1895

1848:                                             ; preds = %1842
  %1849 = add i64 %1739, %54
  %1850 = tail call i64 @llvm.umin.i64(i64 %1741, i64 %1775)
  %1851 = add i64 %1849, %1850
  %1852 = tail call i64 @llvm.umax.i64(i64 %1741, i64 %1775)
  %1853 = add i64 %1851, %1852
  %1854 = sub i64 %1853, %1741
  %1855 = add i64 %1554, %1852
  %1856 = tail call i64 @llvm.umax.i64(i64 %1854, i64 %1855)
  %1857 = add i64 %1856, -9
  %1858 = add i64 %1852, %54
  %1859 = sub i64 %1857, %1858
  %1860 = lshr i64 %1859, 3
  %1861 = add nuw nsw i64 %1860, 1
  %1862 = icmp ult i64 %1859, 24
  %1863 = icmp ult i64 %1845, 32
  %1864 = or i1 %1862, %1863
  br i1 %1864, label %1885, label %1865

1865:                                             ; preds = %1848
  %1866 = and i64 %1861, 4611686018427387900
  %1867 = shl i64 %1866, 3
  %1868 = getelementptr i8, ptr %1840, i64 %1867
  %1869 = shl i64 %1866, 3
  %1870 = getelementptr i8, ptr %1839, i64 %1869
  br label %1871

1871:                                             ; preds = %1871, %1865
  %1872 = phi i64 [ 0, %1865 ], [ %1881, %1871 ]
  %1873 = shl i64 %1872, 3
  %1874 = getelementptr i8, ptr %1840, i64 %1873
  %1875 = shl i64 %1872, 3
  %1876 = getelementptr i8, ptr %1839, i64 %1875
  %1877 = getelementptr i8, ptr %1876, i64 16
  %1878 = load <2 x i64>, ptr %1876, align 1
  %1879 = load <2 x i64>, ptr %1877, align 1
  %1880 = getelementptr i8, ptr %1874, i64 16
  store <2 x i64> %1878, ptr %1874, align 1
  store <2 x i64> %1879, ptr %1880, align 1
  %1881 = add nuw i64 %1872, 4
  %1882 = icmp eq i64 %1881, %1866
  br i1 %1882, label %1883, label %1871, !llvm.loop !120

1883:                                             ; preds = %1871
  %1884 = icmp eq i64 %1861, %1866
  br i1 %1884, label %1911, label %1885

1885:                                             ; preds = %1848, %1883
  %1886 = phi ptr [ %1840, %1848 ], [ %1868, %1883 ]
  %1887 = phi ptr [ %1839, %1848 ], [ %1870, %1883 ]
  br label %1888

1888:                                             ; preds = %1885, %1888
  %1889 = phi ptr [ %1892, %1888 ], [ %1886, %1885 ]
  %1890 = phi ptr [ %1893, %1888 ], [ %1887, %1885 ]
  %1891 = load i64, ptr %1890, align 1
  store i64 %1891, ptr %1889, align 1
  %1892 = getelementptr inbounds nuw i8, ptr %1889, i64 8
  %1893 = getelementptr inbounds nuw i8, ptr %1890, i64 8
  %1894 = icmp ult ptr %1892, %1846
  br i1 %1894, label %1888, label %1911, !llvm.loop !121

1895:                                             ; preds = %1842
  %1896 = add i64 %1791, -8
  %1897 = load <2 x i64>, ptr %1839, align 1, !tbaa !9
  store <2 x i64> %1897, ptr %1840, align 1, !tbaa !9
  %1898 = icmp ult i64 %1896, 17
  br i1 %1898, label %1911, label %1899

1899:                                             ; preds = %1895
  %1900 = getelementptr inbounds nuw i8, ptr %1793, i64 24
  br label %1901

1901:                                             ; preds = %1901, %1899
  %1902 = phi ptr [ %1900, %1899 ], [ %1909, %1901 ]
  %1903 = phi ptr [ %1839, %1899 ], [ %1907, %1901 ]
  %1904 = getelementptr inbounds nuw i8, ptr %1903, i64 16
  %1905 = load <2 x i64>, ptr %1904, align 1, !tbaa !9
  store <2 x i64> %1905, ptr %1902, align 1, !tbaa !9
  %1906 = getelementptr inbounds nuw i8, ptr %1902, i64 16
  %1907 = getelementptr inbounds nuw i8, ptr %1903, i64 32
  %1908 = load <2 x i64>, ptr %1907, align 1, !tbaa !9
  store <2 x i64> %1908, ptr %1906, align 1, !tbaa !9
  %1909 = getelementptr inbounds nuw i8, ptr %1902, i64 32
  %1910 = icmp ult ptr %1909, %1846
  br i1 %1910, label %1901, label %1911, !llvm.loop !101

1911:                                             ; preds = %1901, %1888, %1801, %1883, %1895, %1837, %1795, %1786, %1754
  %1912 = phi i64 [ %1755, %1754 ], [ %1743, %1786 ], [ %1743, %1837 ], [ %1743, %1795 ], [ %1743, %1895 ], [ %1743, %1883 ], [ %1743, %1801 ], [ %1743, %1888 ], [ %1743, %1901 ]
  %1913 = icmp ult i64 %1912, -119
  %1914 = getelementptr inbounds nuw i8, ptr %1737, i64 %1912
  br i1 %1913, label %2271, label %2276

1915:                                             ; preds = %1574
  %1916 = getelementptr inbounds i8, ptr %1577, i64 -32
  %1917 = getelementptr inbounds nuw i8, ptr %1571, i64 8
  %1918 = load i64, ptr %1917, align 8
  %1919 = getelementptr inbounds nuw i8, ptr %1571, i64 16
  %1920 = load i64, ptr %1919, align 8
  %1921 = getelementptr i8, ptr %1567, i64 %1576
  %1922 = add i64 %1918, %1576
  %1923 = sub i64 0, %1920
  %1924 = getelementptr inbounds i8, ptr %1921, i64 %1923
  %1925 = icmp ugt ptr %1577, %1568
  %1926 = getelementptr inbounds nuw i8, ptr %1567, i64 %1922
  %1927 = icmp ugt ptr %1926, %1916
  %1928 = select i1 %1925, i1 true, i1 %1927
  br i1 %1928, label %1932, label %1929, !prof !105

1929:                                             ; preds = %1915
  %1930 = load <2 x i64>, ptr %1575, align 1, !tbaa !9
  store <2 x i64> %1930, ptr %1567, align 1, !tbaa !9
  %1931 = icmp ugt i64 %1576, 16
  br i1 %1931, label %1934, label %1952, !prof !53

1932:                                             ; preds = %1915
  %1933 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1567, ptr noundef %26, ptr noundef nonnull %1916, ptr noundef nonnull byval(%struct.seq_t) align 8 %1571, ptr noundef nonnull %7, ptr noundef %1568, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %2267

1934:                                             ; preds = %1929
  %1935 = getelementptr inbounds nuw i8, ptr %1567, i64 16
  %1936 = getelementptr inbounds nuw i8, ptr %1575, i64 16
  %1937 = add i64 %1576, -16
  %1938 = load <2 x i64>, ptr %1936, align 1, !tbaa !9
  store <2 x i64> %1938, ptr %1935, align 1, !tbaa !9
  %1939 = icmp ult i64 %1937, 17
  br i1 %1939, label %1952, label %1940

1940:                                             ; preds = %1934
  %1941 = getelementptr inbounds nuw i8, ptr %1567, i64 32
  br label %1942

1942:                                             ; preds = %1942, %1940
  %1943 = phi ptr [ %1941, %1940 ], [ %1950, %1942 ]
  %1944 = phi ptr [ %1936, %1940 ], [ %1948, %1942 ]
  %1945 = getelementptr inbounds nuw i8, ptr %1944, i64 16
  %1946 = load <2 x i64>, ptr %1945, align 1, !tbaa !9
  store <2 x i64> %1946, ptr %1943, align 1, !tbaa !9
  %1947 = getelementptr inbounds nuw i8, ptr %1943, i64 16
  %1948 = getelementptr inbounds nuw i8, ptr %1944, i64 32
  %1949 = load <2 x i64>, ptr %1948, align 1, !tbaa !9
  store <2 x i64> %1949, ptr %1947, align 1, !tbaa !9
  %1950 = getelementptr inbounds nuw i8, ptr %1943, i64 32
  %1951 = icmp ult ptr %1950, %1921
  br i1 %1951, label %1942, label %1952, !llvm.loop !101

1952:                                             ; preds = %1942, %1934, %1929
  store ptr %1577, ptr %7, align 8, !tbaa !40
  %1953 = ptrtoint ptr %1921 to i64
  %1954 = sub i64 %1953, %54
  %1955 = icmp ugt i64 %1920, %1954
  br i1 %1955, label %1956, label %1969

1956:                                             ; preds = %1952
  %1957 = sub i64 %1953, %1549
  %1958 = icmp ugt i64 %1920, %1957
  br i1 %1958, label %2276, label %1959, !prof !53

1959:                                             ; preds = %1956
  %1960 = ptrtoint ptr %1924 to i64
  %1961 = sub i64 %1960, %54
  %1962 = getelementptr inbounds i8, ptr %36, i64 %1961
  %1963 = add i64 %1961, %1918
  %1964 = icmp sgt i64 %1963, 0
  br i1 %1964, label %1966, label %1965

1965:                                             ; preds = %1959
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1921, ptr align 1 %1962, i64 %1918, i1 false)
  br label %2267

1966:                                             ; preds = %1959
  %1967 = sub nsw i64 0, %1961
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1921, ptr align 1 %1962, i64 %1967, i1 false)
  %1968 = getelementptr inbounds nuw i8, ptr %1921, i64 %1967
  br label %1969

1969:                                             ; preds = %1966, %1952
  %1970 = phi i64 [ %1963, %1966 ], [ %1918, %1952 ]
  %1971 = phi ptr [ %32, %1966 ], [ %1924, %1952 ]
  %1972 = phi ptr [ %1968, %1966 ], [ %1921, %1952 ]
  %1973 = icmp ugt i64 %1920, 15
  br i1 %1973, label %1974, label %1990, !prof !91

1974:                                             ; preds = %1969
  %1975 = getelementptr inbounds nuw i8, ptr %1972, i64 %1970
  %1976 = load <2 x i64>, ptr %1971, align 1, !tbaa !9
  store <2 x i64> %1976, ptr %1972, align 1, !tbaa !9
  %1977 = icmp ult i64 %1970, 17
  br i1 %1977, label %2267, label %1978

1978:                                             ; preds = %1974
  %1979 = getelementptr inbounds nuw i8, ptr %1972, i64 16
  br label %1980

1980:                                             ; preds = %1980, %1978
  %1981 = phi ptr [ %1979, %1978 ], [ %1988, %1980 ]
  %1982 = phi ptr [ %1971, %1978 ], [ %1986, %1980 ]
  %1983 = getelementptr inbounds nuw i8, ptr %1982, i64 16
  %1984 = load <2 x i64>, ptr %1983, align 1, !tbaa !9
  store <2 x i64> %1984, ptr %1981, align 1, !tbaa !9
  %1985 = getelementptr inbounds nuw i8, ptr %1981, i64 16
  %1986 = getelementptr inbounds nuw i8, ptr %1982, i64 32
  %1987 = load <2 x i64>, ptr %1986, align 1, !tbaa !9
  store <2 x i64> %1987, ptr %1985, align 1, !tbaa !9
  %1988 = getelementptr inbounds nuw i8, ptr %1981, i64 32
  %1989 = icmp ult ptr %1988, %1975
  br i1 %1989, label %1980, label %2267, !llvm.loop !101

1990:                                             ; preds = %1969
  %1991 = icmp samesign ult i64 %1920, 8
  br i1 %1991, label %1992, label %2014

1992:                                             ; preds = %1990
  %1993 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1920
  %1994 = load i32, ptr %1993, align 4, !tbaa !30
  %1995 = load i8, ptr %1971, align 1, !tbaa !9
  store i8 %1995, ptr %1972, align 1, !tbaa !9
  %1996 = getelementptr inbounds nuw i8, ptr %1971, i64 1
  %1997 = load i8, ptr %1996, align 1, !tbaa !9
  %1998 = getelementptr inbounds nuw i8, ptr %1972, i64 1
  store i8 %1997, ptr %1998, align 1, !tbaa !9
  %1999 = getelementptr inbounds nuw i8, ptr %1971, i64 2
  %2000 = load i8, ptr %1999, align 1, !tbaa !9
  %2001 = getelementptr inbounds nuw i8, ptr %1972, i64 2
  store i8 %2000, ptr %2001, align 1, !tbaa !9
  %2002 = getelementptr inbounds nuw i8, ptr %1971, i64 3
  %2003 = load i8, ptr %2002, align 1, !tbaa !9
  %2004 = getelementptr inbounds nuw i8, ptr %1972, i64 3
  store i8 %2003, ptr %2004, align 1, !tbaa !9
  %2005 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1920
  %2006 = load i32, ptr %2005, align 4, !tbaa !30
  %2007 = zext i32 %2006 to i64
  %2008 = getelementptr inbounds nuw i8, ptr %1971, i64 %2007
  %2009 = getelementptr inbounds nuw i8, ptr %1972, i64 4
  %2010 = load i32, ptr %2008, align 1
  store i32 %2010, ptr %2009, align 1
  %2011 = sext i32 %1994 to i64
  %2012 = sub nsw i64 0, %2011
  %2013 = getelementptr inbounds i8, ptr %2008, i64 %2012
  br label %2016

2014:                                             ; preds = %1990
  %2015 = load i64, ptr %1971, align 1
  store i64 %2015, ptr %1972, align 1
  br label %2016

2016:                                             ; preds = %2014, %1992
  %2017 = phi ptr [ %2013, %1992 ], [ %1971, %2014 ]
  %2018 = getelementptr inbounds nuw i8, ptr %2017, i64 8
  %2019 = getelementptr inbounds nuw i8, ptr %1972, i64 8
  %2020 = icmp ugt i64 %1970, 8
  br i1 %2020, label %2021, label %2267

2021:                                             ; preds = %2016
  %2022 = ptrtoint ptr %2019 to i64
  %2023 = ptrtoint ptr %2018 to i64
  %2024 = sub i64 %2022, %2023
  %2025 = getelementptr i8, ptr %1972, i64 %1970
  %2026 = icmp slt i64 %2024, 16
  br i1 %2026, label %2027, label %2074

2027:                                             ; preds = %2021
  %2028 = add i64 %1918, %54
  %2029 = tail call i64 @llvm.umin.i64(i64 %1920, i64 %1954)
  %2030 = add i64 %2028, %2029
  %2031 = tail call i64 @llvm.umax.i64(i64 %1920, i64 %1954)
  %2032 = add i64 %2030, %2031
  %2033 = sub i64 %2032, %1920
  %2034 = add i64 %1555, %2031
  %2035 = tail call i64 @llvm.umax.i64(i64 %2033, i64 %2034)
  %2036 = add i64 %2035, -9
  %2037 = add i64 %2031, %54
  %2038 = sub i64 %2036, %2037
  %2039 = lshr i64 %2038, 3
  %2040 = add nuw nsw i64 %2039, 1
  %2041 = icmp ult i64 %2038, 24
  %2042 = icmp ult i64 %2024, 32
  %2043 = or i1 %2041, %2042
  br i1 %2043, label %2064, label %2044

2044:                                             ; preds = %2027
  %2045 = and i64 %2040, 4611686018427387900
  %2046 = shl i64 %2045, 3
  %2047 = getelementptr i8, ptr %2019, i64 %2046
  %2048 = shl i64 %2045, 3
  %2049 = getelementptr i8, ptr %2018, i64 %2048
  br label %2050

2050:                                             ; preds = %2050, %2044
  %2051 = phi i64 [ 0, %2044 ], [ %2060, %2050 ]
  %2052 = shl i64 %2051, 3
  %2053 = getelementptr i8, ptr %2019, i64 %2052
  %2054 = shl i64 %2051, 3
  %2055 = getelementptr i8, ptr %2018, i64 %2054
  %2056 = getelementptr i8, ptr %2055, i64 16
  %2057 = load <2 x i64>, ptr %2055, align 1
  %2058 = load <2 x i64>, ptr %2056, align 1
  %2059 = getelementptr i8, ptr %2053, i64 16
  store <2 x i64> %2057, ptr %2053, align 1
  store <2 x i64> %2058, ptr %2059, align 1
  %2060 = add nuw i64 %2051, 4
  %2061 = icmp eq i64 %2060, %2045
  br i1 %2061, label %2062, label %2050, !llvm.loop !122

2062:                                             ; preds = %2050
  %2063 = icmp eq i64 %2040, %2045
  br i1 %2063, label %2267, label %2064

2064:                                             ; preds = %2027, %2062
  %2065 = phi ptr [ %2019, %2027 ], [ %2047, %2062 ]
  %2066 = phi ptr [ %2018, %2027 ], [ %2049, %2062 ]
  br label %2067

2067:                                             ; preds = %2064, %2067
  %2068 = phi ptr [ %2071, %2067 ], [ %2065, %2064 ]
  %2069 = phi ptr [ %2072, %2067 ], [ %2066, %2064 ]
  %2070 = load i64, ptr %2069, align 1
  store i64 %2070, ptr %2068, align 1
  %2071 = getelementptr inbounds nuw i8, ptr %2068, i64 8
  %2072 = getelementptr inbounds nuw i8, ptr %2069, i64 8
  %2073 = icmp ult ptr %2071, %2025
  br i1 %2073, label %2067, label %2267, !llvm.loop !123

2074:                                             ; preds = %2021
  %2075 = add i64 %1970, -8
  %2076 = load <2 x i64>, ptr %2018, align 1, !tbaa !9
  store <2 x i64> %2076, ptr %2019, align 1, !tbaa !9
  %2077 = icmp ult i64 %2075, 17
  br i1 %2077, label %2267, label %2078

2078:                                             ; preds = %2074
  %2079 = getelementptr inbounds nuw i8, ptr %1972, i64 24
  br label %2080

2080:                                             ; preds = %2080, %2078
  %2081 = phi ptr [ %2079, %2078 ], [ %2088, %2080 ]
  %2082 = phi ptr [ %2018, %2078 ], [ %2086, %2080 ]
  %2083 = getelementptr inbounds nuw i8, ptr %2082, i64 16
  %2084 = load <2 x i64>, ptr %2083, align 1, !tbaa !9
  store <2 x i64> %2084, ptr %2081, align 1, !tbaa !9
  %2085 = getelementptr inbounds nuw i8, ptr %2081, i64 16
  %2086 = getelementptr inbounds nuw i8, ptr %2082, i64 32
  %2087 = load <2 x i64>, ptr %2086, align 1, !tbaa !9
  store <2 x i64> %2087, ptr %2085, align 1, !tbaa !9
  %2088 = getelementptr inbounds nuw i8, ptr %2081, i64 32
  %2089 = icmp ult ptr %2088, %2025
  br i1 %2089, label %2080, label %2267, !llvm.loop !101

2090:                                             ; preds = %1565
  %2091 = load i64, ptr %1571, align 8
  %2092 = getelementptr inbounds nuw i8, ptr %1571, i64 8
  %2093 = load i64, ptr %2092, align 8
  %2094 = getelementptr inbounds nuw i8, ptr %1571, i64 16
  %2095 = load i64, ptr %2094, align 8
  %2096 = getelementptr i8, ptr %1567, i64 %2091
  %2097 = add i64 %2093, %2091
  %2098 = load ptr, ptr %7, align 8, !tbaa !40
  %2099 = getelementptr inbounds nuw i8, ptr %2098, i64 %2091
  %2100 = sub i64 0, %2095
  %2101 = getelementptr inbounds i8, ptr %2096, i64 %2100
  %2102 = icmp ugt ptr %2099, %1568
  %2103 = getelementptr inbounds nuw i8, ptr %1567, i64 %2097
  %2104 = icmp ugt ptr %2103, %1548
  %2105 = select i1 %2102, i1 true, i1 %2104
  br i1 %2105, label %2109, label %2106, !prof !105

2106:                                             ; preds = %2090
  %2107 = load <2 x i64>, ptr %2098, align 1, !tbaa !9
  store <2 x i64> %2107, ptr %1567, align 1, !tbaa !9
  %2108 = icmp ugt i64 %2091, 16
  br i1 %2108, label %2111, label %2129, !prof !53

2109:                                             ; preds = %2090
  %2110 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1567, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %1571, ptr noundef nonnull %7, ptr noundef %1568, ptr noundef %32, ptr noundef %34, ptr noundef %36)
  br label %2267

2111:                                             ; preds = %2106
  %2112 = getelementptr inbounds nuw i8, ptr %1567, i64 16
  %2113 = getelementptr inbounds nuw i8, ptr %2098, i64 16
  %2114 = add i64 %2091, -16
  %2115 = load <2 x i64>, ptr %2113, align 1, !tbaa !9
  store <2 x i64> %2115, ptr %2112, align 1, !tbaa !9
  %2116 = icmp ult i64 %2114, 17
  br i1 %2116, label %2129, label %2117

2117:                                             ; preds = %2111
  %2118 = getelementptr inbounds nuw i8, ptr %1567, i64 32
  br label %2119

2119:                                             ; preds = %2119, %2117
  %2120 = phi ptr [ %2118, %2117 ], [ %2127, %2119 ]
  %2121 = phi ptr [ %2113, %2117 ], [ %2125, %2119 ]
  %2122 = getelementptr inbounds nuw i8, ptr %2121, i64 16
  %2123 = load <2 x i64>, ptr %2122, align 1, !tbaa !9
  store <2 x i64> %2123, ptr %2120, align 1, !tbaa !9
  %2124 = getelementptr inbounds nuw i8, ptr %2120, i64 16
  %2125 = getelementptr inbounds nuw i8, ptr %2121, i64 32
  %2126 = load <2 x i64>, ptr %2125, align 1, !tbaa !9
  store <2 x i64> %2126, ptr %2124, align 1, !tbaa !9
  %2127 = getelementptr inbounds nuw i8, ptr %2120, i64 32
  %2128 = icmp ult ptr %2127, %2096
  br i1 %2128, label %2119, label %2129, !llvm.loop !101

2129:                                             ; preds = %2119, %2111, %2106
  store ptr %2099, ptr %7, align 8, !tbaa !40
  %2130 = ptrtoint ptr %2096 to i64
  %2131 = sub i64 %2130, %54
  %2132 = icmp ugt i64 %2095, %2131
  br i1 %2132, label %2133, label %2146

2133:                                             ; preds = %2129
  %2134 = sub i64 %2130, %1549
  %2135 = icmp ugt i64 %2095, %2134
  br i1 %2135, label %2276, label %2136, !prof !53

2136:                                             ; preds = %2133
  %2137 = ptrtoint ptr %2101 to i64
  %2138 = sub i64 %2137, %54
  %2139 = getelementptr inbounds i8, ptr %36, i64 %2138
  %2140 = add i64 %2138, %2093
  %2141 = icmp sgt i64 %2140, 0
  br i1 %2141, label %2143, label %2142

2142:                                             ; preds = %2136
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2096, ptr align 1 %2139, i64 %2093, i1 false)
  br label %2267

2143:                                             ; preds = %2136
  %2144 = sub nsw i64 0, %2138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2096, ptr align 1 %2139, i64 %2144, i1 false)
  %2145 = getelementptr inbounds nuw i8, ptr %2096, i64 %2144
  br label %2146

2146:                                             ; preds = %2143, %2129
  %2147 = phi i64 [ %2140, %2143 ], [ %2093, %2129 ]
  %2148 = phi ptr [ %32, %2143 ], [ %2101, %2129 ]
  %2149 = phi ptr [ %2145, %2143 ], [ %2096, %2129 ]
  %2150 = icmp ugt i64 %2095, 15
  br i1 %2150, label %2151, label %2167, !prof !91

2151:                                             ; preds = %2146
  %2152 = getelementptr inbounds nuw i8, ptr %2149, i64 %2147
  %2153 = load <2 x i64>, ptr %2148, align 1, !tbaa !9
  store <2 x i64> %2153, ptr %2149, align 1, !tbaa !9
  %2154 = icmp ult i64 %2147, 17
  br i1 %2154, label %2267, label %2155

2155:                                             ; preds = %2151
  %2156 = getelementptr inbounds nuw i8, ptr %2149, i64 16
  br label %2157

2157:                                             ; preds = %2157, %2155
  %2158 = phi ptr [ %2156, %2155 ], [ %2165, %2157 ]
  %2159 = phi ptr [ %2148, %2155 ], [ %2163, %2157 ]
  %2160 = getelementptr inbounds nuw i8, ptr %2159, i64 16
  %2161 = load <2 x i64>, ptr %2160, align 1, !tbaa !9
  store <2 x i64> %2161, ptr %2158, align 1, !tbaa !9
  %2162 = getelementptr inbounds nuw i8, ptr %2158, i64 16
  %2163 = getelementptr inbounds nuw i8, ptr %2159, i64 32
  %2164 = load <2 x i64>, ptr %2163, align 1, !tbaa !9
  store <2 x i64> %2164, ptr %2162, align 1, !tbaa !9
  %2165 = getelementptr inbounds nuw i8, ptr %2158, i64 32
  %2166 = icmp ult ptr %2165, %2152
  br i1 %2166, label %2157, label %2267, !llvm.loop !101

2167:                                             ; preds = %2146
  %2168 = icmp samesign ult i64 %2095, 8
  br i1 %2168, label %2169, label %2191

2169:                                             ; preds = %2167
  %2170 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %2095
  %2171 = load i32, ptr %2170, align 4, !tbaa !30
  %2172 = load i8, ptr %2148, align 1, !tbaa !9
  store i8 %2172, ptr %2149, align 1, !tbaa !9
  %2173 = getelementptr inbounds nuw i8, ptr %2148, i64 1
  %2174 = load i8, ptr %2173, align 1, !tbaa !9
  %2175 = getelementptr inbounds nuw i8, ptr %2149, i64 1
  store i8 %2174, ptr %2175, align 1, !tbaa !9
  %2176 = getelementptr inbounds nuw i8, ptr %2148, i64 2
  %2177 = load i8, ptr %2176, align 1, !tbaa !9
  %2178 = getelementptr inbounds nuw i8, ptr %2149, i64 2
  store i8 %2177, ptr %2178, align 1, !tbaa !9
  %2179 = getelementptr inbounds nuw i8, ptr %2148, i64 3
  %2180 = load i8, ptr %2179, align 1, !tbaa !9
  %2181 = getelementptr inbounds nuw i8, ptr %2149, i64 3
  store i8 %2180, ptr %2181, align 1, !tbaa !9
  %2182 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %2095
  %2183 = load i32, ptr %2182, align 4, !tbaa !30
  %2184 = zext i32 %2183 to i64
  %2185 = getelementptr inbounds nuw i8, ptr %2148, i64 %2184
  %2186 = getelementptr inbounds nuw i8, ptr %2149, i64 4
  %2187 = load i32, ptr %2185, align 1
  store i32 %2187, ptr %2186, align 1
  %2188 = sext i32 %2171 to i64
  %2189 = sub nsw i64 0, %2188
  %2190 = getelementptr inbounds i8, ptr %2185, i64 %2189
  br label %2193

2191:                                             ; preds = %2167
  %2192 = load i64, ptr %2148, align 1
  store i64 %2192, ptr %2149, align 1
  br label %2193

2193:                                             ; preds = %2191, %2169
  %2194 = phi ptr [ %2190, %2169 ], [ %2148, %2191 ]
  %2195 = getelementptr inbounds nuw i8, ptr %2194, i64 8
  %2196 = getelementptr inbounds nuw i8, ptr %2149, i64 8
  %2197 = icmp ugt i64 %2147, 8
  br i1 %2197, label %2198, label %2267

2198:                                             ; preds = %2193
  %2199 = ptrtoint ptr %2196 to i64
  %2200 = ptrtoint ptr %2195 to i64
  %2201 = sub i64 %2199, %2200
  %2202 = getelementptr i8, ptr %2149, i64 %2147
  %2203 = icmp slt i64 %2201, 16
  br i1 %2203, label %2204, label %2251

2204:                                             ; preds = %2198
  %2205 = add i64 %2093, %54
  %2206 = tail call i64 @llvm.umin.i64(i64 %2095, i64 %2131)
  %2207 = add i64 %2205, %2206
  %2208 = tail call i64 @llvm.umax.i64(i64 %2095, i64 %2131)
  %2209 = add i64 %2207, %2208
  %2210 = sub i64 %2209, %2095
  %2211 = add i64 %1556, %2208
  %2212 = tail call i64 @llvm.umax.i64(i64 %2210, i64 %2211)
  %2213 = add i64 %2212, -9
  %2214 = add i64 %2208, %54
  %2215 = sub i64 %2213, %2214
  %2216 = lshr i64 %2215, 3
  %2217 = add nuw nsw i64 %2216, 1
  %2218 = icmp ult i64 %2215, 24
  %2219 = icmp ult i64 %2201, 32
  %2220 = or i1 %2218, %2219
  br i1 %2220, label %2241, label %2221

2221:                                             ; preds = %2204
  %2222 = and i64 %2217, 4611686018427387900
  %2223 = shl i64 %2222, 3
  %2224 = getelementptr i8, ptr %2196, i64 %2223
  %2225 = shl i64 %2222, 3
  %2226 = getelementptr i8, ptr %2195, i64 %2225
  br label %2227

2227:                                             ; preds = %2227, %2221
  %2228 = phi i64 [ 0, %2221 ], [ %2237, %2227 ]
  %2229 = shl i64 %2228, 3
  %2230 = getelementptr i8, ptr %2196, i64 %2229
  %2231 = shl i64 %2228, 3
  %2232 = getelementptr i8, ptr %2195, i64 %2231
  %2233 = getelementptr i8, ptr %2232, i64 16
  %2234 = load <2 x i64>, ptr %2232, align 1
  %2235 = load <2 x i64>, ptr %2233, align 1
  %2236 = getelementptr i8, ptr %2230, i64 16
  store <2 x i64> %2234, ptr %2230, align 1
  store <2 x i64> %2235, ptr %2236, align 1
  %2237 = add nuw i64 %2228, 4
  %2238 = icmp eq i64 %2237, %2222
  br i1 %2238, label %2239, label %2227, !llvm.loop !124

2239:                                             ; preds = %2227
  %2240 = icmp eq i64 %2217, %2222
  br i1 %2240, label %2267, label %2241

2241:                                             ; preds = %2204, %2239
  %2242 = phi ptr [ %2196, %2204 ], [ %2224, %2239 ]
  %2243 = phi ptr [ %2195, %2204 ], [ %2226, %2239 ]
  br label %2244

2244:                                             ; preds = %2241, %2244
  %2245 = phi ptr [ %2248, %2244 ], [ %2242, %2241 ]
  %2246 = phi ptr [ %2249, %2244 ], [ %2243, %2241 ]
  %2247 = load i64, ptr %2246, align 1
  store i64 %2247, ptr %2245, align 1
  %2248 = getelementptr inbounds nuw i8, ptr %2245, i64 8
  %2249 = getelementptr inbounds nuw i8, ptr %2246, i64 8
  %2250 = icmp ult ptr %2248, %2202
  br i1 %2250, label %2244, label %2267, !llvm.loop !125

2251:                                             ; preds = %2198
  %2252 = add i64 %2147, -8
  %2253 = load <2 x i64>, ptr %2195, align 1, !tbaa !9
  store <2 x i64> %2253, ptr %2196, align 1, !tbaa !9
  %2254 = icmp ult i64 %2252, 17
  br i1 %2254, label %2267, label %2255

2255:                                             ; preds = %2251
  %2256 = getelementptr inbounds nuw i8, ptr %2149, i64 24
  br label %2257

2257:                                             ; preds = %2257, %2255
  %2258 = phi ptr [ %2256, %2255 ], [ %2265, %2257 ]
  %2259 = phi ptr [ %2195, %2255 ], [ %2263, %2257 ]
  %2260 = getelementptr inbounds nuw i8, ptr %2259, i64 16
  %2261 = load <2 x i64>, ptr %2260, align 1, !tbaa !9
  store <2 x i64> %2261, ptr %2258, align 1, !tbaa !9
  %2262 = getelementptr inbounds nuw i8, ptr %2258, i64 16
  %2263 = getelementptr inbounds nuw i8, ptr %2259, i64 32
  %2264 = load <2 x i64>, ptr %2263, align 1, !tbaa !9
  store <2 x i64> %2264, ptr %2262, align 1, !tbaa !9
  %2265 = getelementptr inbounds nuw i8, ptr %2258, i64 32
  %2266 = icmp ult ptr %2265, %2202
  br i1 %2266, label %2257, label %2267, !llvm.loop !101

2267:                                             ; preds = %2257, %2244, %2157, %2080, %2067, %1980, %2239, %2062, %2109, %2142, %2151, %2193, %2251, %1932, %1965, %1974, %2016, %2074
  %2268 = phi i64 [ %1933, %1932 ], [ %1922, %1965 ], [ %1922, %2016 ], [ %1922, %1974 ], [ %1922, %2074 ], [ %2110, %2109 ], [ %2097, %2142 ], [ %2097, %2193 ], [ %2097, %2151 ], [ %2097, %2251 ], [ %1922, %2062 ], [ %2097, %2239 ], [ %1922, %1980 ], [ %1922, %2067 ], [ %1922, %2080 ], [ %2097, %2157 ], [ %2097, %2244 ], [ %2097, %2257 ]
  %2269 = icmp ult i64 %2268, -119
  %2270 = getelementptr inbounds nuw i8, ptr %1567, i64 %2268
  br i1 %2269, label %2271, label %2276

2271:                                             ; preds = %2267, %1911
  %2272 = phi ptr [ %1552, %1911 ], [ %1568, %2267 ]
  %2273 = phi ptr [ %1914, %1911 ], [ %2270, %2267 ]
  %2274 = add i32 %1566, 1
  %2275 = icmp eq i32 %2274, %5
  br i1 %2275, label %1557, label %1565, !llvm.loop !126

2276:                                             ; preds = %1371, %1191, %1004, %1505, %1138, %812, %2133, %1956, %1777, %2267, %1911, %1585, %1529, %126, %113, %62, %38
  %2277 = phi i64 [ -20, %126 ], [ -20, %1529 ], [ -20, %38 ], [ -20, %62 ], [ -20, %113 ], [ -20, %2133 ], [ -20, %1956 ], [ -20, %1777 ], [ %2268, %2267 ], [ %1912, %1911 ], [ -70, %1585 ], [ -20, %1371 ], [ -20, %1191 ], [ -20, %1004 ], [ %1506, %1505 ], [ %1139, %1138 ], [ -70, %812 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #18
  br label %2322

2278:                                             ; preds = %1557, %25
  %2279 = phi ptr [ %1564, %1557 ], [ %28, %25 ]
  %2280 = phi i32 [ %1563, %1557 ], [ %17, %25 ]
  %2281 = phi ptr [ %1558, %1557 ], [ %30, %25 ]
  %2282 = phi ptr [ %1559, %1557 ], [ %1, %25 ]
  %2283 = icmp eq i32 %2280, 2
  br i1 %2283, label %2286, label %2284

2284:                                             ; preds = %2278
  %2285 = ptrtoint ptr %26 to i64
  br label %2302

2286:                                             ; preds = %2278
  %2287 = ptrtoint ptr %2281 to i64
  %2288 = ptrtoint ptr %2279 to i64
  %2289 = sub i64 %2287, %2288
  %2290 = ptrtoint ptr %26 to i64
  %2291 = ptrtoint ptr %2282 to i64
  %2292 = sub i64 %2290, %2291
  %2293 = icmp ugt i64 %2289, %2292
  br i1 %2293, label %2322, label %2294

2294:                                             ; preds = %2286
  %2295 = icmp eq ptr %2282, null
  br i1 %2295, label %2298, label %2296

2296:                                             ; preds = %2294
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2282, ptr align 1 %2279, i64 %2289, i1 false)
  %2297 = getelementptr inbounds nuw i8, ptr %2282, i64 %2289
  br label %2298

2298:                                             ; preds = %2296, %2294
  %2299 = phi ptr [ %2297, %2296 ], [ null, %2294 ]
  %2300 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %2301 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %2302

2302:                                             ; preds = %2298, %2284
  %2303 = phi i64 [ %2285, %2284 ], [ %2290, %2298 ]
  %2304 = phi ptr [ %2279, %2284 ], [ %2300, %2298 ]
  %2305 = phi ptr [ %2281, %2284 ], [ %2301, %2298 ]
  %2306 = phi ptr [ %2282, %2284 ], [ %2299, %2298 ]
  %2307 = ptrtoint ptr %2305 to i64
  %2308 = ptrtoint ptr %2304 to i64
  %2309 = sub i64 %2307, %2308
  %2310 = ptrtoint ptr %2306 to i64
  %2311 = sub i64 %2303, %2310
  %2312 = icmp ugt i64 %2309, %2311
  br i1 %2312, label %2322, label %2313

2313:                                             ; preds = %2302
  %2314 = icmp eq ptr %2306, null
  br i1 %2314, label %2318, label %2315

2315:                                             ; preds = %2313
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2306, ptr align 1 %2304, i64 %2309, i1 false)
  %2316 = getelementptr inbounds nuw i8, ptr %2306, i64 %2309
  %2317 = ptrtoint ptr %2316 to i64
  br label %2318

2318:                                             ; preds = %2315, %2313
  %2319 = phi i64 [ 0, %2313 ], [ %2317, %2315 ]
  %2320 = ptrtoint ptr %1 to i64
  %2321 = sub i64 %2319, %2320
  br label %2322

2322:                                             ; preds = %2276, %2286, %2302, %2318
  %2323 = phi i64 [ %2321, %2318 ], [ %2277, %2276 ], [ -70, %2302 ], [ -70, %2286 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %2324

2324:                                             ; preds = %2322, %13
  %2325 = phi i64 [ %14, %13 ], [ %2323, %2322 ]
  ret i64 %2325
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #8 {
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
  br label %1532

17:                                               ; preds = %6
  %18 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  store ptr %21, ptr %10, align 8, !tbaa !40
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = icmp eq i32 %5, 0
  br i1 %30, label %1485, label %31

31:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %11) #18
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %32, align 4, !tbaa !63
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %35 = load i32, ptr %33, align 4, !tbaa !30
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %34, align 8, !tbaa !46
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %38 = load i32, ptr %37, align 4, !tbaa !30
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i64 %39, ptr %40, align 8, !tbaa !46
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %42 = load i32, ptr %41, align 4, !tbaa !30
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i64 %43, ptr %44, align 8, !tbaa !46
  %45 = icmp eq i64 %4, 0
  br i1 %45, label %1483, label %46

46:                                               ; preds = %31
  %47 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %3, ptr %47, align 8, !tbaa !76
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %48, ptr %49, align 8, !tbaa !78
  %50 = icmp ugt i64 %4, 7
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = add nsw i64 %4, -8
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %53, ptr %54, align 8, !tbaa !79
  %55 = load i64, ptr %53, align 1
  store i64 %55, ptr %11, align 8, !tbaa !80
  %56 = icmp ult i64 %55, 72057594037927936
  br i1 %56, label %1483, label %115

57:                                               ; preds = %46
  %58 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %58, align 8, !tbaa !79
  %59 = load i8, ptr %3, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  store i64 %60, ptr %11, align 8, !tbaa !80
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
  store i64 %101, ptr %11, align 8, !tbaa !80
  br label %102

102:                                              ; preds = %95, %57
  %103 = phi i64 [ %101, %95 ], [ %60, %57 ]
  %104 = getelementptr i8, ptr %3, i64 %4
  %105 = getelementptr i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %1483, label %108

108:                                              ; preds = %102
  %109 = zext i8 %106 to i32
  %110 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %109, i1 true)
  %111 = trunc nuw nsw i64 %4 to i32
  %112 = shl nuw nsw i32 %111, 3
  %113 = sub nsw i32 %110, %112
  %114 = add nsw i32 %113, 41
  br label %122

115:                                              ; preds = %51
  %116 = lshr i64 %55, 56
  %117 = trunc nuw nsw i64 %116 to i32
  %118 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %117, i1 true)
  %119 = xor i32 %118, 31
  %120 = sub nuw nsw i32 8, %119
  %121 = icmp ult i64 %4, -119
  br i1 %121, label %122, label %1483

122:                                              ; preds = %115, %108
  %123 = phi ptr [ %3, %108 ], [ %53, %115 ]
  %124 = phi i64 [ 0, %108 ], [ %52, %115 ]
  %125 = phi i32 [ %114, %108 ], [ %120, %115 ]
  %126 = phi i64 [ %103, %108 ], [ %55, %115 ]
  %127 = getelementptr inbounds i8, ptr %3, i64 %124
  %128 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %129 = load ptr, ptr %0, align 8, !tbaa !81
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 4
  %131 = load i32, ptr %130, align 4, !tbaa !64
  %132 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %133 = add i32 %131, %125
  %134 = sub i32 0, %133
  %135 = and i32 %134, 63
  %136 = zext nneg i32 %135 to i64
  %137 = lshr i64 %126, %136
  %138 = zext nneg i32 %131 to i64
  %139 = shl nsw i64 -1, %138
  %140 = xor i64 %139, -1
  %141 = and i64 %137, %140
  store i64 %141, ptr %128, align 8, !tbaa !82
  %142 = icmp ugt i32 %133, 64
  %143 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %142, label %144, label %145, !prof !53

144:                                              ; preds = %122
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79
  br label %167

145:                                              ; preds = %122
  %146 = icmp slt i64 %124, 8
  br i1 %146, label %154, label %147

147:                                              ; preds = %145
  %148 = lshr i32 %133, 3
  %149 = zext nneg i32 %148 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %127, i64 %150
  store ptr %151, ptr %143, align 8, !tbaa !79
  %152 = and i32 %133, 7
  store i32 %152, ptr %132, align 8, !tbaa !84
  %153 = load i64, ptr %151, align 1, !tbaa !46
  store i64 %153, ptr %11, align 8, !tbaa !80
  br label %167

154:                                              ; preds = %145
  %155 = icmp eq i64 %124, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %154
  %157 = lshr i32 %133, 3
  %158 = zext nneg i32 %157 to i64
  %159 = tail call i64 @llvm.smin.i64(i64 %124, i64 %158)
  %160 = trunc i64 %159 to i32
  %161 = and i64 %159, 4294967295
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %127, i64 %162
  store ptr %163, ptr %143, align 8, !tbaa !79
  %164 = shl i32 %160, 3
  %165 = sub i32 %133, %164
  store i32 %165, ptr %132, align 8, !tbaa !84
  %166 = load i64, ptr %163, align 1, !tbaa !46
  store i64 %166, ptr %11, align 8, !tbaa !80
  br label %167

167:                                              ; preds = %156, %154, %147, %144
  %168 = phi ptr [ @BIT_reloadDStream.zeroFilled, %144 ], [ %151, %147 ], [ %123, %154 ], [ %163, %156 ]
  %169 = phi ptr [ @BIT_reloadDStream.zeroFilled, %144 ], [ %151, %147 ], [ %3, %154 ], [ %163, %156 ]
  %170 = phi i32 [ %133, %144 ], [ %152, %147 ], [ %133, %154 ], [ %165, %156 ]
  %171 = phi i64 [ %126, %144 ], [ %153, %147 ], [ %126, %154 ], [ %166, %156 ]
  %172 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %173 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %172, ptr %173, align 8, !tbaa !85
  %174 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %176 = load ptr, ptr %175, align 8, !tbaa !72
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 4
  %178 = load i32, ptr %177, align 4, !tbaa !64
  %179 = add i32 %178, %170
  %180 = sub i32 0, %179
  %181 = and i32 %180, 63
  %182 = zext nneg i32 %181 to i64
  %183 = lshr i64 %171, %182
  %184 = zext nneg i32 %178 to i64
  %185 = shl nsw i64 -1, %184
  %186 = xor i64 %185, -1
  %187 = and i64 %183, %186
  store i64 %187, ptr %174, align 8, !tbaa !82
  %188 = icmp ugt i32 %179, 64
  br i1 %188, label %189, label %190, !prof !53

189:                                              ; preds = %167
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79
  br label %218

190:                                              ; preds = %167
  %191 = icmp ult ptr %169, %48
  br i1 %191, label %199, label %192

192:                                              ; preds = %190
  %193 = lshr i32 %179, 3
  %194 = zext nneg i32 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %169, i64 %195
  store ptr %196, ptr %143, align 8, !tbaa !79
  %197 = and i32 %179, 7
  %198 = load i64, ptr %196, align 1, !tbaa !46
  store i64 %198, ptr %11, align 8, !tbaa !80
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
  store ptr %214, ptr %143, align 8, !tbaa !79
  %215 = shl i32 %211, 3
  %216 = sub i32 %179, %215
  %217 = load i64, ptr %214, align 1, !tbaa !46
  store i64 %217, ptr %11, align 8, !tbaa !80
  br label %218

218:                                              ; preds = %201, %199, %192, %189
  %219 = phi ptr [ @BIT_reloadDStream.zeroFilled, %189 ], [ %196, %192 ], [ %168, %199 ], [ %214, %201 ]
  %220 = phi ptr [ @BIT_reloadDStream.zeroFilled, %189 ], [ %196, %192 ], [ %169, %199 ], [ %214, %201 ]
  %221 = phi i32 [ %179, %189 ], [ %197, %192 ], [ %179, %199 ], [ %216, %201 ]
  %222 = phi i64 [ %171, %189 ], [ %198, %192 ], [ %171, %199 ], [ %217, %201 ]
  %223 = getelementptr inbounds nuw i8, ptr %176, i64 8
  %224 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %223, ptr %224, align 8, !tbaa !85
  %225 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %227 = load ptr, ptr %226, align 8, !tbaa !86
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 4
  %229 = load i32, ptr %228, align 4, !tbaa !64
  %230 = add i32 %229, %221
  %231 = sub i32 0, %230
  %232 = and i32 %231, 63
  %233 = zext nneg i32 %232 to i64
  %234 = lshr i64 %222, %233
  %235 = zext nneg i32 %229 to i64
  %236 = shl nsw i64 -1, %235
  %237 = xor i64 %236, -1
  %238 = and i64 %234, %237
  store i32 %230, ptr %132, align 8, !tbaa !84
  store i64 %238, ptr %225, align 8, !tbaa !82
  %239 = icmp ugt i32 %230, 64
  br i1 %239, label %240, label %241, !prof !53

240:                                              ; preds = %218
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79
  br label %269

241:                                              ; preds = %218
  %242 = icmp ult ptr %220, %48
  br i1 %242, label %250, label %243

243:                                              ; preds = %241
  %244 = lshr i32 %230, 3
  %245 = zext nneg i32 %244 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, ptr %220, i64 %246
  store ptr %247, ptr %143, align 8, !tbaa !79
  %248 = and i32 %230, 7
  store i32 %248, ptr %132, align 8, !tbaa !84
  %249 = load i64, ptr %247, align 1, !tbaa !46
  store i64 %249, ptr %11, align 8, !tbaa !80
  br label %269

250:                                              ; preds = %241
  %251 = icmp eq ptr %220, %3
  br i1 %251, label %269, label %252

252:                                              ; preds = %250
  %253 = lshr i32 %230, 3
  %254 = zext nneg i32 %253 to i64
  %255 = sub nsw i64 0, %254
  %256 = getelementptr inbounds i8, ptr %220, i64 %255
  %257 = icmp ult ptr %256, %3
  %258 = ptrtoint ptr %220 to i64
  %259 = ptrtoint ptr %3 to i64
  %260 = sub i64 %258, %259
  %261 = trunc i64 %260 to i32
  %262 = select i1 %257, i32 %261, i32 %253
  %263 = zext i32 %262 to i64
  %264 = sub nsw i64 0, %263
  %265 = getelementptr inbounds i8, ptr %220, i64 %264
  store ptr %265, ptr %143, align 8, !tbaa !79
  %266 = shl i32 %262, 3
  %267 = sub i32 %230, %266
  store i32 %267, ptr %132, align 8, !tbaa !84
  %268 = load i64, ptr %265, align 1, !tbaa !46
  store i64 %268, ptr %11, align 8, !tbaa !80
  br label %269

269:                                              ; preds = %252, %250, %243, %240
  %270 = phi ptr [ %265, %252 ], [ %219, %250 ], [ %247, %243 ], [ @BIT_reloadDStream.zeroFilled, %240 ]
  %271 = phi i32 [ %267, %252 ], [ %230, %250 ], [ %248, %243 ], [ %230, %240 ]
  %272 = phi i64 [ %268, %252 ], [ %222, %250 ], [ %249, %243 ], [ %222, %240 ]
  %273 = getelementptr inbounds nuw i8, ptr %227, i64 8
  %274 = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %273, ptr %274, align 8, !tbaa !85
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !127
  %275 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %276 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %277 = ptrtoint ptr %25 to i64
  %278 = ptrtoint ptr %27 to i64
  %279 = ptrtoint ptr %3 to i64
  %280 = add i64 %277, 16
  br label %281

281:                                              ; preds = %701, %269
  %282 = phi ptr [ %270, %269 ], [ %514, %701 ]
  %283 = phi i32 [ %271, %269 ], [ %515, %701 ]
  %284 = phi i64 [ %272, %269 ], [ %516, %701 ]
  %285 = phi i64 [ %43, %269 ], [ %373, %701 ]
  %286 = phi i64 [ %39, %269 ], [ %371, %701 ]
  %287 = phi i64 [ %36, %269 ], [ %372, %701 ]
  %288 = phi i64 [ %238, %269 ], [ %521, %701 ]
  %289 = phi i64 [ %187, %269 ], [ %520, %701 ]
  %290 = phi i64 [ %141, %269 ], [ %519, %701 ]
  %291 = phi i32 [ %5, %269 ], [ %702, %701 ]
  %292 = phi ptr [ %1, %269 ], [ %696, %701 ]
  %293 = icmp eq i32 %291, 1
  %294 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %172, i64 %290
  %295 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %273, i64 %288
  %296 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %223, i64 %289
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 4
  %298 = load i32, ptr %297, align 4, !tbaa !43, !noalias !128
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw i8, ptr %294, i64 4
  %301 = load i32, ptr %300, align 4, !tbaa !43, !noalias !128
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds nuw i8, ptr %296, i64 4
  %304 = load i32, ptr %303, align 4, !tbaa !43, !noalias !128
  %305 = getelementptr inbounds nuw i8, ptr %294, i64 2
  %306 = load i8, ptr %305, align 2, !tbaa !59, !noalias !128
  %307 = getelementptr inbounds nuw i8, ptr %295, i64 2
  %308 = load i8, ptr %307, align 2, !tbaa !59, !noalias !128
  %309 = getelementptr inbounds nuw i8, ptr %296, i64 2
  %310 = load i8, ptr %309, align 2, !tbaa !59, !noalias !128
  %311 = zext i8 %306 to i32
  %312 = zext i8 %308 to i32
  %313 = add i8 %308, %306
  %314 = add i8 %313, %310
  %315 = load i16, ptr %294, align 4, !tbaa !58, !noalias !128
  %316 = load i16, ptr %295, align 4, !tbaa !58, !noalias !128
  %317 = load i16, ptr %296, align 4, !tbaa !58, !noalias !128
  %318 = getelementptr inbounds nuw i8, ptr %294, i64 3
  %319 = load i8, ptr %318, align 1, !tbaa !57, !noalias !128
  %320 = zext i8 %319 to i32
  %321 = getelementptr inbounds nuw i8, ptr %295, i64 3
  %322 = load i8, ptr %321, align 1, !tbaa !57, !noalias !128
  %323 = zext i8 %322 to i32
  %324 = getelementptr inbounds nuw i8, ptr %296, i64 3
  %325 = load i8, ptr %324, align 1, !tbaa !57, !noalias !128
  %326 = zext i8 %325 to i32
  %327 = icmp ugt i8 %310, 1
  br i1 %327, label %328, label %340

328:                                              ; preds = %281
  %329 = zext i8 %310 to i32
  %330 = and i32 %283, 63
  %331 = zext nneg i32 %330 to i64
  %332 = shl i64 %284, %331
  %333 = sub nsw i32 0, %329
  %334 = and i32 %333, 63
  %335 = zext nneg i32 %334 to i64
  %336 = lshr i64 %332, %335
  %337 = add i32 %283, %329
  store i32 %337, ptr %132, align 8, !tbaa !84, !noalias !128
  %338 = zext i32 %304 to i64
  %339 = add i64 %336, %338
  store i64 %286, ptr %44, align 8, !tbaa !46, !noalias !128
  br label %369

340:                                              ; preds = %281
  %341 = icmp eq i32 %301, 0
  %342 = icmp eq i8 %310, 0
  br i1 %342, label %343, label %346, !prof !91

343:                                              ; preds = %340
  %344 = select i1 %341, i64 %286, i64 %287
  %345 = select i1 %341, i64 %287, i64 %286
  br label %369

346:                                              ; preds = %340
  %347 = zext i1 %341 to i32
  %348 = add i32 %304, %347
  %349 = zext i32 %348 to i64
  %350 = and i32 %283, 63
  %351 = zext nneg i32 %350 to i64
  %352 = shl i64 %284, %351
  %353 = lshr i64 %352, 63
  %354 = add i32 %283, 1
  store i32 %354, ptr %132, align 8, !tbaa !84, !noalias !128
  %355 = add nuw nsw i64 %353, %349
  %356 = icmp eq i64 %355, 3
  br i1 %356, label %357, label %361

357:                                              ; preds = %346
  %358 = add i64 %287, -1
  %359 = icmp eq i64 %358, 0
  %360 = select i1 %359, i64 -1, i64 %358
  br label %367

361:                                              ; preds = %346
  %362 = getelementptr inbounds nuw [3 x i64], ptr %34, i64 0, i64 %355
  %363 = load i64, ptr %362, align 8, !tbaa !46, !noalias !128
  %364 = icmp eq i64 %363, 0
  %365 = select i1 %364, i64 -1, i64 %363
  %366 = icmp eq i64 %355, 1
  br i1 %366, label %369, label %367

367:                                              ; preds = %361, %357
  %368 = phi i64 [ %360, %357 ], [ %365, %361 ]
  store i64 %286, ptr %44, align 8, !tbaa !46, !noalias !128
  br label %369

369:                                              ; preds = %367, %361, %343, %328
  %370 = phi i32 [ %283, %343 ], [ %337, %328 ], [ %354, %367 ], [ %354, %361 ]
  %371 = phi i64 [ %345, %343 ], [ %287, %328 ], [ %287, %367 ], [ %287, %361 ]
  %372 = phi i64 [ %344, %343 ], [ %339, %328 ], [ %368, %367 ], [ %365, %361 ]
  %373 = phi i64 [ %285, %343 ], [ %286, %328 ], [ %286, %367 ], [ %285, %361 ]
  store i64 %371, ptr %40, align 8, !tbaa !46, !noalias !128
  store i64 %372, ptr %34, align 8, !tbaa !46, !noalias !128
  %374 = icmp eq i8 %308, 0
  br i1 %374, label %385, label %375

375:                                              ; preds = %369
  %376 = and i32 %370, 63
  %377 = zext nneg i32 %376 to i64
  %378 = shl i64 %284, %377
  %379 = sub nsw i32 0, %312
  %380 = and i32 %379, 63
  %381 = zext nneg i32 %380 to i64
  %382 = lshr i64 %378, %381
  %383 = add i32 %370, %312
  store i32 %383, ptr %132, align 8, !tbaa !84, !noalias !128
  %384 = add i64 %382, %299
  br label %385

385:                                              ; preds = %375, %369
  %386 = phi i32 [ %370, %369 ], [ %383, %375 ]
  %387 = phi i64 [ %299, %369 ], [ %384, %375 ]
  %388 = icmp ugt i8 %314, 30
  br i1 %388, label %389, label %419, !prof !53

389:                                              ; preds = %385
  %390 = icmp ugt i32 %386, 64
  br i1 %390, label %391, label %392, !prof !53

391:                                              ; preds = %389
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79, !noalias !128
  br label %419

392:                                              ; preds = %389
  %393 = icmp ult ptr %282, %48
  br i1 %393, label %401, label %394

394:                                              ; preds = %392
  %395 = lshr i32 %386, 3
  %396 = zext nneg i32 %395 to i64
  %397 = sub nsw i64 0, %396
  %398 = getelementptr inbounds i8, ptr %282, i64 %397
  store ptr %398, ptr %143, align 8, !tbaa !79, !noalias !128
  %399 = and i32 %386, 7
  store i32 %399, ptr %132, align 8, !tbaa !84, !noalias !128
  %400 = load i64, ptr %398, align 1, !tbaa !46, !noalias !128
  store i64 %400, ptr %11, align 8, !tbaa !80, !noalias !128
  br label %419

401:                                              ; preds = %392
  %402 = icmp eq ptr %282, %3
  br i1 %402, label %419, label %403

403:                                              ; preds = %401
  %404 = lshr i32 %386, 3
  %405 = zext nneg i32 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %282, i64 %406
  %408 = icmp ult ptr %407, %3
  %409 = ptrtoint ptr %282 to i64
  %410 = sub i64 %409, %279
  %411 = trunc i64 %410 to i32
  %412 = select i1 %408, i32 %411, i32 %404
  %413 = zext i32 %412 to i64
  %414 = sub nsw i64 0, %413
  %415 = getelementptr inbounds i8, ptr %282, i64 %414
  store ptr %415, ptr %143, align 8, !tbaa !79, !noalias !128
  %416 = shl i32 %412, 3
  %417 = sub i32 %386, %416
  store i32 %417, ptr %132, align 8, !tbaa !84, !noalias !128
  %418 = load i64, ptr %415, align 1, !tbaa !46, !noalias !128
  store i64 %418, ptr %11, align 8, !tbaa !80, !noalias !128
  br label %419

419:                                              ; preds = %403, %401, %394, %391, %385
  %420 = phi ptr [ %415, %403 ], [ %282, %401 ], [ %398, %394 ], [ @BIT_reloadDStream.zeroFilled, %391 ], [ %282, %385 ]
  %421 = phi i32 [ %417, %403 ], [ %386, %401 ], [ %399, %394 ], [ %386, %391 ], [ %386, %385 ]
  %422 = phi i64 [ %418, %403 ], [ %284, %401 ], [ %400, %394 ], [ %284, %391 ], [ %284, %385 ]
  %423 = icmp eq i8 %306, 0
  br i1 %423, label %434, label %424

424:                                              ; preds = %419
  %425 = and i32 %421, 63
  %426 = zext nneg i32 %425 to i64
  %427 = shl i64 %422, %426
  %428 = sub nsw i32 0, %311
  %429 = and i32 %428, 63
  %430 = zext nneg i32 %429 to i64
  %431 = lshr i64 %427, %430
  %432 = add i32 %421, %311
  store i32 %432, ptr %132, align 8, !tbaa !84, !noalias !128
  %433 = add i64 %431, %302
  br label %434

434:                                              ; preds = %424, %419
  %435 = phi i32 [ %421, %419 ], [ %432, %424 ]
  %436 = phi i64 [ %302, %419 ], [ %433, %424 ]
  br i1 %293, label %508, label %437

437:                                              ; preds = %434
  %438 = add i32 %435, %320
  %439 = sub i32 0, %438
  %440 = and i32 %439, 63
  %441 = zext nneg i32 %440 to i64
  %442 = lshr i64 %422, %441
  %443 = zext nneg i8 %319 to i64
  %444 = shl nsw i64 -1, %443
  %445 = xor i64 %444, -1
  %446 = and i64 %442, %445
  %447 = zext i16 %315 to i64
  %448 = add nuw i64 %446, %447
  store i64 %448, ptr %128, align 8, !tbaa !82, !noalias !128
  %449 = add i32 %438, %323
  %450 = sub i32 0, %449
  %451 = and i32 %450, 63
  %452 = zext nneg i32 %451 to i64
  %453 = lshr i64 %422, %452
  %454 = zext nneg i8 %322 to i64
  %455 = shl nsw i64 -1, %454
  %456 = xor i64 %455, -1
  %457 = and i64 %453, %456
  %458 = zext i16 %316 to i64
  %459 = add nuw i64 %457, %458
  store i64 %459, ptr %225, align 8, !tbaa !82, !noalias !128
  %460 = add i32 %449, %326
  %461 = sub i32 0, %460
  %462 = and i32 %461, 63
  %463 = zext nneg i32 %462 to i64
  %464 = lshr i64 %422, %463
  %465 = zext nneg i8 %325 to i64
  %466 = shl nsw i64 -1, %465
  %467 = xor i64 %466, -1
  %468 = and i64 %464, %467
  store i32 %460, ptr %132, align 8, !tbaa !84, !noalias !128
  %469 = zext i16 %317 to i64
  %470 = add nuw i64 %468, %469
  store i64 %470, ptr %174, align 8, !tbaa !82, !noalias !128
  %471 = icmp ugt i32 %460, 64
  br i1 %471, label %472, label %473, !prof !53

472:                                              ; preds = %437
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79, !noalias !128
  br label %500

473:                                              ; preds = %437
  %474 = icmp ult ptr %420, %48
  br i1 %474, label %482, label %475

475:                                              ; preds = %473
  %476 = lshr i32 %460, 3
  %477 = zext nneg i32 %476 to i64
  %478 = sub nsw i64 0, %477
  %479 = getelementptr inbounds i8, ptr %420, i64 %478
  store ptr %479, ptr %143, align 8, !tbaa !79, !noalias !128
  %480 = and i32 %460, 7
  store i32 %480, ptr %132, align 8, !tbaa !84, !noalias !128
  %481 = load i64, ptr %479, align 1, !tbaa !46, !noalias !128
  store i64 %481, ptr %11, align 8, !tbaa !80, !noalias !128
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
  %491 = sub i64 %490, %279
  %492 = trunc i64 %491 to i32
  %493 = select i1 %489, i32 %492, i32 %485
  %494 = zext i32 %493 to i64
  %495 = sub nsw i64 0, %494
  %496 = getelementptr inbounds i8, ptr %420, i64 %495
  store ptr %496, ptr %143, align 8, !tbaa !79, !noalias !128
  %497 = shl i32 %493, 3
  %498 = sub i32 %460, %497
  store i32 %498, ptr %132, align 8, !tbaa !84, !noalias !128
  %499 = load i64, ptr %496, align 1, !tbaa !46, !noalias !128
  store i64 %499, ptr %11, align 8, !tbaa !80, !noalias !128
  br label %500

500:                                              ; preds = %484, %482, %475, %472
  %501 = phi ptr [ %496, %484 ], [ %420, %482 ], [ %479, %475 ], [ @BIT_reloadDStream.zeroFilled, %472 ]
  %502 = phi i32 [ %498, %484 ], [ %460, %482 ], [ %480, %475 ], [ %460, %472 ]
  %503 = phi i64 [ %499, %484 ], [ %422, %482 ], [ %481, %475 ], [ %422, %472 ]
  %504 = load ptr, ptr %10, align 8, !tbaa !40
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 %436
  %506 = load ptr, ptr %22, align 8, !tbaa !34
  %507 = icmp ugt ptr %505, %506
  br i1 %507, label %704, label %513

508:                                              ; preds = %434
  %509 = load ptr, ptr %10, align 8, !tbaa !40
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 %436
  %511 = load ptr, ptr %22, align 8, !tbaa !34
  %512 = icmp ugt ptr %510, %511
  br i1 %512, label %706, label %513

513:                                              ; preds = %508, %500
  %514 = phi ptr [ %420, %508 ], [ %501, %500 ]
  %515 = phi i32 [ %435, %508 ], [ %502, %500 ]
  %516 = phi i64 [ %422, %508 ], [ %503, %500 ]
  %517 = phi ptr [ %510, %508 ], [ %505, %500 ]
  %518 = phi ptr [ %509, %508 ], [ %504, %500 ]
  %519 = phi i64 [ %290, %508 ], [ %448, %500 ]
  %520 = phi i64 [ %289, %508 ], [ %470, %500 ]
  %521 = phi i64 [ %288, %508 ], [ %459, %500 ]
  %522 = getelementptr inbounds i8, ptr %517, i64 -32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %436, ptr %7, align 8
  store i64 %387, ptr %275, align 8
  store i64 %372, ptr %276, align 8
  %523 = getelementptr i8, ptr %292, i64 %436
  %524 = add i64 %436, %387
  %525 = sub i64 0, %372
  %526 = getelementptr inbounds i8, ptr %523, i64 %525
  %527 = icmp ugt ptr %517, %23
  %528 = getelementptr inbounds nuw i8, ptr %292, i64 %524
  %529 = icmp ugt ptr %528, %522
  %530 = select i1 %527, i1 true, i1 %529
  br i1 %530, label %534, label %531, !prof !105

531:                                              ; preds = %513
  %532 = load <2 x i64>, ptr %518, align 1, !tbaa !9
  store <2 x i64> %532, ptr %292, align 1, !tbaa !9
  %533 = icmp ugt i64 %436, 16
  br i1 %533, label %536, label %554, !prof !53

534:                                              ; preds = %513
  %535 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %292, ptr noundef %19, ptr noundef nonnull %522, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %10, ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %693

536:                                              ; preds = %531
  %537 = getelementptr inbounds nuw i8, ptr %292, i64 16
  %538 = getelementptr inbounds nuw i8, ptr %518, i64 16
  %539 = add i64 %436, -16
  %540 = load <2 x i64>, ptr %538, align 1, !tbaa !9
  store <2 x i64> %540, ptr %537, align 1, !tbaa !9
  %541 = icmp ult i64 %539, 17
  br i1 %541, label %554, label %542

542:                                              ; preds = %536
  %543 = getelementptr inbounds nuw i8, ptr %292, i64 32
  br label %544

544:                                              ; preds = %544, %542
  %545 = phi ptr [ %543, %542 ], [ %552, %544 ]
  %546 = phi ptr [ %538, %542 ], [ %550, %544 ]
  %547 = getelementptr inbounds nuw i8, ptr %546, i64 16
  %548 = load <2 x i64>, ptr %547, align 1, !tbaa !9
  store <2 x i64> %548, ptr %545, align 1, !tbaa !9
  %549 = getelementptr inbounds nuw i8, ptr %545, i64 16
  %550 = getelementptr inbounds nuw i8, ptr %546, i64 32
  %551 = load <2 x i64>, ptr %550, align 1, !tbaa !9
  store <2 x i64> %551, ptr %549, align 1, !tbaa !9
  %552 = getelementptr inbounds nuw i8, ptr %545, i64 32
  %553 = icmp ult ptr %552, %523
  br i1 %553, label %544, label %554, !llvm.loop !101

554:                                              ; preds = %544, %536, %531
  store ptr %517, ptr %10, align 8, !tbaa !40
  %555 = ptrtoint ptr %523 to i64
  %556 = sub i64 %555, %277
  %557 = icmp ugt i64 %372, %556
  br i1 %557, label %558, label %572

558:                                              ; preds = %554
  %559 = sub i64 %555, %278
  %560 = icmp ugt i64 %372, %559
  br i1 %560, label %561, label %562, !prof !53

561:                                              ; preds = %558
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %1483

562:                                              ; preds = %558
  %563 = ptrtoint ptr %526 to i64
  %564 = sub i64 %563, %277
  %565 = getelementptr inbounds i8, ptr %29, i64 %564
  %566 = add nsw i64 %564, %387
  %567 = icmp sgt i64 %566, 0
  br i1 %567, label %569, label %568

568:                                              ; preds = %562
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %523, ptr align 1 %565, i64 %387, i1 false)
  br label %693

569:                                              ; preds = %562
  %570 = sub nsw i64 0, %564
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %523, ptr align 1 %565, i64 %570, i1 false)
  %571 = getelementptr inbounds nuw i8, ptr %523, i64 %570
  store i64 %566, ptr %275, align 8, !tbaa !131
  br label %572

572:                                              ; preds = %569, %554
  %573 = phi ptr [ %25, %569 ], [ %526, %554 ]
  %574 = phi ptr [ %571, %569 ], [ %523, %554 ]
  %575 = phi i64 [ %566, %569 ], [ %387, %554 ]
  %576 = icmp ugt i64 %372, 15
  br i1 %576, label %577, label %593, !prof !91

577:                                              ; preds = %572
  %578 = getelementptr inbounds nuw i8, ptr %574, i64 %575
  %579 = load <2 x i64>, ptr %573, align 1, !tbaa !9
  store <2 x i64> %579, ptr %574, align 1, !tbaa !9
  %580 = icmp ult i64 %575, 17
  br i1 %580, label %693, label %581

581:                                              ; preds = %577
  %582 = getelementptr inbounds nuw i8, ptr %574, i64 16
  br label %583

583:                                              ; preds = %583, %581
  %584 = phi ptr [ %582, %581 ], [ %591, %583 ]
  %585 = phi ptr [ %573, %581 ], [ %589, %583 ]
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 16
  %587 = load <2 x i64>, ptr %586, align 1, !tbaa !9
  store <2 x i64> %587, ptr %584, align 1, !tbaa !9
  %588 = getelementptr inbounds nuw i8, ptr %584, i64 16
  %589 = getelementptr inbounds nuw i8, ptr %585, i64 32
  %590 = load <2 x i64>, ptr %589, align 1, !tbaa !9
  store <2 x i64> %590, ptr %588, align 1, !tbaa !9
  %591 = getelementptr inbounds nuw i8, ptr %584, i64 32
  %592 = icmp ult ptr %591, %578
  br i1 %592, label %583, label %693, !llvm.loop !101

593:                                              ; preds = %572
  %594 = icmp samesign ult i64 %372, 8
  br i1 %594, label %595, label %617

595:                                              ; preds = %593
  %596 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %372
  %597 = load i32, ptr %596, align 4, !tbaa !30
  %598 = load i8, ptr %573, align 1, !tbaa !9
  store i8 %598, ptr %574, align 1, !tbaa !9
  %599 = getelementptr inbounds nuw i8, ptr %573, i64 1
  %600 = load i8, ptr %599, align 1, !tbaa !9
  %601 = getelementptr inbounds nuw i8, ptr %574, i64 1
  store i8 %600, ptr %601, align 1, !tbaa !9
  %602 = getelementptr inbounds nuw i8, ptr %573, i64 2
  %603 = load i8, ptr %602, align 1, !tbaa !9
  %604 = getelementptr inbounds nuw i8, ptr %574, i64 2
  store i8 %603, ptr %604, align 1, !tbaa !9
  %605 = getelementptr inbounds nuw i8, ptr %573, i64 3
  %606 = load i8, ptr %605, align 1, !tbaa !9
  %607 = getelementptr inbounds nuw i8, ptr %574, i64 3
  store i8 %606, ptr %607, align 1, !tbaa !9
  %608 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %372
  %609 = load i32, ptr %608, align 4, !tbaa !30
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds nuw i8, ptr %573, i64 %610
  %612 = getelementptr inbounds nuw i8, ptr %574, i64 4
  %613 = load i32, ptr %611, align 1
  store i32 %613, ptr %612, align 1
  %614 = sext i32 %597 to i64
  %615 = sub nsw i64 0, %614
  %616 = getelementptr inbounds i8, ptr %611, i64 %615
  br label %619

617:                                              ; preds = %593
  %618 = load i64, ptr %573, align 1
  store i64 %618, ptr %574, align 1
  br label %619

619:                                              ; preds = %617, %595
  %620 = phi ptr [ %616, %595 ], [ %573, %617 ]
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 8
  %622 = getelementptr inbounds nuw i8, ptr %574, i64 8
  %623 = icmp ugt i64 %575, 8
  br i1 %623, label %624, label %693

624:                                              ; preds = %619
  %625 = ptrtoint ptr %622 to i64
  %626 = ptrtoint ptr %621 to i64
  %627 = sub i64 %625, %626
  %628 = getelementptr i8, ptr %574, i64 %575
  %629 = icmp slt i64 %627, 16
  br i1 %629, label %630, label %677

630:                                              ; preds = %624
  %631 = add i64 %387, %277
  %632 = tail call i64 @llvm.umin.i64(i64 %372, i64 %556)
  %633 = add i64 %631, %632
  %634 = tail call i64 @llvm.umax.i64(i64 %372, i64 %556)
  %635 = add i64 %633, %634
  %636 = sub i64 %635, %372
  %637 = add i64 %280, %634
  %638 = tail call i64 @llvm.umax.i64(i64 %636, i64 %637)
  %639 = add i64 %638, -9
  %640 = add i64 %634, %277
  %641 = sub i64 %639, %640
  %642 = lshr i64 %641, 3
  %643 = add nuw nsw i64 %642, 1
  %644 = icmp ult i64 %641, 24
  %645 = icmp ult i64 %627, 32
  %646 = or i1 %644, %645
  br i1 %646, label %667, label %647

647:                                              ; preds = %630
  %648 = and i64 %643, 4611686018427387900
  %649 = shl i64 %648, 3
  %650 = getelementptr i8, ptr %622, i64 %649
  %651 = shl i64 %648, 3
  %652 = getelementptr i8, ptr %621, i64 %651
  br label %653

653:                                              ; preds = %653, %647
  %654 = phi i64 [ 0, %647 ], [ %663, %653 ]
  %655 = shl i64 %654, 3
  %656 = getelementptr i8, ptr %622, i64 %655
  %657 = shl i64 %654, 3
  %658 = getelementptr i8, ptr %621, i64 %657
  %659 = getelementptr i8, ptr %658, i64 16
  %660 = load <2 x i64>, ptr %658, align 1
  %661 = load <2 x i64>, ptr %659, align 1
  %662 = getelementptr i8, ptr %656, i64 16
  store <2 x i64> %660, ptr %656, align 1
  store <2 x i64> %661, ptr %662, align 1
  %663 = add nuw i64 %654, 4
  %664 = icmp eq i64 %663, %648
  br i1 %664, label %665, label %653, !llvm.loop !132

665:                                              ; preds = %653
  %666 = icmp eq i64 %643, %648
  br i1 %666, label %693, label %667

667:                                              ; preds = %630, %665
  %668 = phi ptr [ %622, %630 ], [ %650, %665 ]
  %669 = phi ptr [ %621, %630 ], [ %652, %665 ]
  br label %670

670:                                              ; preds = %667, %670
  %671 = phi ptr [ %674, %670 ], [ %668, %667 ]
  %672 = phi ptr [ %675, %670 ], [ %669, %667 ]
  %673 = load i64, ptr %672, align 1
  store i64 %673, ptr %671, align 1
  %674 = getelementptr inbounds nuw i8, ptr %671, i64 8
  %675 = getelementptr inbounds nuw i8, ptr %672, i64 8
  %676 = icmp ult ptr %674, %628
  br i1 %676, label %670, label %693, !llvm.loop !133

677:                                              ; preds = %624
  %678 = add i64 %575, -8
  %679 = load <2 x i64>, ptr %621, align 1, !tbaa !9
  store <2 x i64> %679, ptr %622, align 1, !tbaa !9
  %680 = icmp ult i64 %678, 17
  br i1 %680, label %693, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds nuw i8, ptr %574, i64 24
  br label %683

683:                                              ; preds = %683, %681
  %684 = phi ptr [ %682, %681 ], [ %691, %683 ]
  %685 = phi ptr [ %621, %681 ], [ %689, %683 ]
  %686 = getelementptr inbounds nuw i8, ptr %685, i64 16
  %687 = load <2 x i64>, ptr %686, align 1, !tbaa !9
  store <2 x i64> %687, ptr %684, align 1, !tbaa !9
  %688 = getelementptr inbounds nuw i8, ptr %684, i64 16
  %689 = getelementptr inbounds nuw i8, ptr %685, i64 32
  %690 = load <2 x i64>, ptr %689, align 1, !tbaa !9
  store <2 x i64> %690, ptr %688, align 1, !tbaa !9
  %691 = getelementptr inbounds nuw i8, ptr %684, i64 32
  %692 = icmp ult ptr %691, %628
  br i1 %692, label %683, label %693, !llvm.loop !101

693:                                              ; preds = %683, %670, %583, %665, %677, %619, %577, %568, %534
  %694 = phi i64 [ %535, %534 ], [ %524, %568 ], [ %524, %619 ], [ %524, %577 ], [ %524, %677 ], [ %524, %665 ], [ %524, %583 ], [ %524, %670 ], [ %524, %683 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %695 = icmp ult i64 %694, -119
  %696 = getelementptr inbounds nuw i8, ptr %292, i64 %694
  br i1 %695, label %697, label %1483

697:                                              ; preds = %693
  %698 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %291, i32 -1)
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !90
  br i1 %699, label %700, label %701, !prof !113, !nosanitize !90

700:                                              ; preds = %697
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !90
  unreachable, !nosanitize !90

701:                                              ; preds = %697
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !90
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %1467, label %281, !llvm.loop !134

704:                                              ; preds = %500
  %705 = icmp sgt i32 %291, 0
  br i1 %705, label %706, label %1483

706:                                              ; preds = %508, %704
  %707 = phi ptr [ %501, %704 ], [ %420, %508 ]
  %708 = phi i32 [ %502, %704 ], [ %435, %508 ]
  %709 = phi i64 [ %503, %704 ], [ %422, %508 ]
  %710 = phi i64 [ %459, %704 ], [ %288, %508 ]
  %711 = phi i64 [ %470, %704 ], [ %289, %508 ]
  %712 = phi i64 [ %448, %704 ], [ %290, %508 ]
  %713 = phi ptr [ %504, %704 ], [ %509, %508 ]
  %714 = phi ptr [ %506, %704 ], [ %511, %508 ]
  %715 = ptrtoint ptr %714 to i64
  %716 = ptrtoint ptr %713 to i64
  %717 = sub i64 %715, %716
  %718 = icmp eq ptr %714, %713
  br i1 %718, label %869, label %719

719:                                              ; preds = %706
  %720 = ptrtoint ptr %19 to i64
  %721 = ptrtoint ptr %292 to i64
  %722 = sub i64 %720, %721
  %723 = icmp ugt i64 %717, %722
  br i1 %723, label %1483, label %724

724:                                              ; preds = %719
  %725 = sub i64 %721, %716
  %726 = getelementptr inbounds nuw i8, ptr %292, i64 %717
  %727 = icmp ult i64 %717, 8
  %728 = icmp sgt i64 %725, -8
  %729 = or i1 %728, %727
  br i1 %729, label %730, label %784

730:                                              ; preds = %724
  %731 = add i64 %721, %715
  %732 = sub i64 %731, %716
  %733 = add i64 %721, 1
  %734 = tail call i64 @llvm.umax.i64(i64 %732, i64 %733)
  %735 = sub i64 %734, %721
  %736 = icmp ult i64 %735, 4
  %737 = icmp ult i64 %725, 32
  %738 = or i1 %736, %737
  br i1 %738, label %774, label %739

739:                                              ; preds = %730
  %740 = icmp ult i64 %735, 32
  br i1 %740, label %760, label %741

741:                                              ; preds = %739
  %742 = and i64 %735, -32
  br label %743

743:                                              ; preds = %743, %741
  %744 = phi i64 [ 0, %741 ], [ %751, %743 ]
  %745 = getelementptr i8, ptr %292, i64 %744
  %746 = getelementptr i8, ptr %713, i64 %744
  %747 = getelementptr i8, ptr %746, i64 16
  %748 = load <16 x i8>, ptr %746, align 1, !tbaa !9
  %749 = load <16 x i8>, ptr %747, align 1, !tbaa !9
  %750 = getelementptr i8, ptr %745, i64 16
  store <16 x i8> %748, ptr %745, align 1, !tbaa !9
  store <16 x i8> %749, ptr %750, align 1, !tbaa !9
  %751 = add nuw i64 %744, 32
  %752 = icmp eq i64 %751, %742
  br i1 %752, label %753, label %743, !llvm.loop !135

753:                                              ; preds = %743
  %754 = icmp eq i64 %735, %742
  br i1 %754, label %867, label %755

755:                                              ; preds = %753
  %756 = getelementptr i8, ptr %292, i64 %742
  %757 = getelementptr i8, ptr %713, i64 %742
  %758 = and i64 %735, 28
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %774, label %760

760:                                              ; preds = %755, %739
  %761 = phi i64 [ %742, %755 ], [ 0, %739 ]
  %762 = and i64 %735, -4
  %763 = getelementptr i8, ptr %292, i64 %762
  %764 = getelementptr i8, ptr %713, i64 %762
  br label %765

765:                                              ; preds = %765, %760
  %766 = phi i64 [ %761, %760 ], [ %770, %765 ]
  %767 = getelementptr i8, ptr %292, i64 %766
  %768 = getelementptr i8, ptr %713, i64 %766
  %769 = load <4 x i8>, ptr %768, align 1, !tbaa !9
  store <4 x i8> %769, ptr %767, align 1, !tbaa !9
  %770 = add nuw i64 %766, 4
  %771 = icmp eq i64 %770, %762
  br i1 %771, label %772, label %765, !llvm.loop !136

772:                                              ; preds = %765
  %773 = icmp eq i64 %735, %762
  br i1 %773, label %867, label %774

774:                                              ; preds = %755, %772, %730
  %775 = phi ptr [ %292, %730 ], [ %756, %755 ], [ %763, %772 ]
  %776 = phi ptr [ %713, %730 ], [ %757, %755 ], [ %764, %772 ]
  br label %777

777:                                              ; preds = %774, %777
  %778 = phi ptr [ %782, %777 ], [ %775, %774 ]
  %779 = phi ptr [ %780, %777 ], [ %776, %774 ]
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 1
  %781 = load i8, ptr %779, align 1, !tbaa !9
  %782 = getelementptr inbounds nuw i8, ptr %778, i64 1
  store i8 %781, ptr %778, align 1, !tbaa !9
  %783 = icmp ult ptr %782, %726
  br i1 %783, label %777, label %867, !llvm.loop !137

784:                                              ; preds = %724
  %785 = icmp sgt i64 %717, 31
  %786 = icmp samesign ult i64 %725, -16
  %787 = and i1 %786, %785
  br i1 %787, label %788, label %808

788:                                              ; preds = %784
  %789 = getelementptr inbounds i8, ptr %726, i64 -32
  %790 = add nsw i64 %717, -32
  %791 = getelementptr inbounds nuw i8, ptr %292, i64 %790
  %792 = load <2 x i64>, ptr %713, align 1, !tbaa !9
  store <2 x i64> %792, ptr %292, align 1, !tbaa !9
  %793 = icmp samesign ult i64 %790, 17
  br i1 %793, label %806, label %794

794:                                              ; preds = %788
  %795 = getelementptr inbounds nuw i8, ptr %292, i64 16
  br label %796

796:                                              ; preds = %796, %794
  %797 = phi ptr [ %795, %794 ], [ %804, %796 ]
  %798 = phi ptr [ %713, %794 ], [ %802, %796 ]
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 16
  %800 = load <2 x i64>, ptr %799, align 1, !tbaa !9
  store <2 x i64> %800, ptr %797, align 1, !tbaa !9
  %801 = getelementptr inbounds nuw i8, ptr %797, i64 16
  %802 = getelementptr inbounds nuw i8, ptr %798, i64 32
  %803 = load <2 x i64>, ptr %802, align 1, !tbaa !9
  store <2 x i64> %803, ptr %801, align 1, !tbaa !9
  %804 = getelementptr inbounds nuw i8, ptr %797, i64 32
  %805 = icmp ult ptr %804, %791
  br i1 %805, label %796, label %806, !llvm.loop !101

806:                                              ; preds = %796, %788
  %807 = getelementptr inbounds i8, ptr %713, i64 %790
  br label %808

808:                                              ; preds = %806, %784
  %809 = phi ptr [ %789, %806 ], [ %292, %784 ]
  %810 = phi ptr [ %807, %806 ], [ %713, %784 ]
  %811 = ptrtoint ptr %809 to i64
  %812 = add i64 %721, %715
  %813 = sub i64 %812, %716
  %814 = add nuw i64 %811, 1
  %815 = tail call i64 @llvm.umax.i64(i64 %813, i64 %814)
  %816 = sub i64 %815, %811
  %817 = icmp ult i64 %816, 4
  %818 = ptrtoint ptr %810 to i64
  %819 = sub i64 %811, %818
  %820 = icmp ult i64 %819, 32
  %821 = select i1 %817, i1 true, i1 %820
  br i1 %821, label %857, label %822

822:                                              ; preds = %808
  %823 = icmp ult i64 %816, 32
  br i1 %823, label %843, label %824

824:                                              ; preds = %822
  %825 = and i64 %816, -32
  br label %826

826:                                              ; preds = %826, %824
  %827 = phi i64 [ 0, %824 ], [ %834, %826 ]
  %828 = getelementptr i8, ptr %809, i64 %827
  %829 = getelementptr i8, ptr %810, i64 %827
  %830 = getelementptr i8, ptr %829, i64 16
  %831 = load <16 x i8>, ptr %829, align 1, !tbaa !9
  %832 = load <16 x i8>, ptr %830, align 1, !tbaa !9
  %833 = getelementptr i8, ptr %828, i64 16
  store <16 x i8> %831, ptr %828, align 1, !tbaa !9
  store <16 x i8> %832, ptr %833, align 1, !tbaa !9
  %834 = add nuw i64 %827, 32
  %835 = icmp eq i64 %834, %825
  br i1 %835, label %836, label %826, !llvm.loop !138

836:                                              ; preds = %826
  %837 = icmp eq i64 %816, %825
  br i1 %837, label %867, label %838

838:                                              ; preds = %836
  %839 = getelementptr i8, ptr %809, i64 %825
  %840 = getelementptr i8, ptr %810, i64 %825
  %841 = and i64 %816, 28
  %842 = icmp eq i64 %841, 0
  br i1 %842, label %857, label %843

843:                                              ; preds = %838, %822
  %844 = phi i64 [ %825, %838 ], [ 0, %822 ]
  %845 = and i64 %816, -4
  %846 = getelementptr i8, ptr %809, i64 %845
  %847 = getelementptr i8, ptr %810, i64 %845
  br label %848

848:                                              ; preds = %848, %843
  %849 = phi i64 [ %844, %843 ], [ %853, %848 ]
  %850 = getelementptr i8, ptr %809, i64 %849
  %851 = getelementptr i8, ptr %810, i64 %849
  %852 = load <4 x i8>, ptr %851, align 1, !tbaa !9
  store <4 x i8> %852, ptr %850, align 1, !tbaa !9
  %853 = add nuw i64 %849, 4
  %854 = icmp eq i64 %853, %845
  br i1 %854, label %855, label %848, !llvm.loop !139

855:                                              ; preds = %848
  %856 = icmp eq i64 %816, %845
  br i1 %856, label %867, label %857

857:                                              ; preds = %838, %855, %808
  %858 = phi ptr [ %809, %808 ], [ %839, %838 ], [ %846, %855 ]
  %859 = phi ptr [ %810, %808 ], [ %840, %838 ], [ %847, %855 ]
  br label %860

860:                                              ; preds = %857, %860
  %861 = phi ptr [ %865, %860 ], [ %858, %857 ]
  %862 = phi ptr [ %863, %860 ], [ %859, %857 ]
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 1
  %864 = load i8, ptr %862, align 1, !tbaa !9
  %865 = getelementptr inbounds nuw i8, ptr %861, i64 1
  store i8 %864, ptr %861, align 1, !tbaa !9
  %866 = icmp ult ptr %865, %726
  br i1 %866, label %860, label %867, !llvm.loop !140

867:                                              ; preds = %860, %777, %836, %855, %753, %772
  %868 = sub i64 %436, %717
  br label %869

869:                                              ; preds = %867, %706
  %870 = phi i64 [ %436, %706 ], [ %868, %867 ]
  %871 = phi ptr [ %292, %706 ], [ %726, %867 ]
  %872 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  store ptr %872, ptr %10, align 8, !tbaa !40
  %873 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %874 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %874, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  store i64 %870, ptr %8, align 8
  %875 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %387, ptr %875, align 8
  %876 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %372, ptr %876, align 8
  %877 = getelementptr i8, ptr %871, i64 %870
  %878 = add i64 %870, %387
  %879 = getelementptr inbounds nuw i8, ptr %0, i64 %870
  %880 = getelementptr inbounds nuw i8, ptr %879, i64 30372
  %881 = sub i64 0, %372
  %882 = getelementptr inbounds i8, ptr %877, i64 %881
  %883 = icmp sgt i64 %870, 65536
  %884 = getelementptr inbounds i8, ptr %19, i64 -32
  %885 = getelementptr inbounds nuw i8, ptr %871, i64 %878
  %886 = icmp ugt ptr %885, %884
  %887 = select i1 %883, i1 true, i1 %886
  br i1 %887, label %891, label %888, !prof !105

888:                                              ; preds = %869
  %889 = load <2 x i64>, ptr %872, align 1, !tbaa !9
  store <2 x i64> %889, ptr %871, align 1, !tbaa !9
  %890 = icmp ugt i64 %870, 16
  br i1 %890, label %893, label %911, !prof !53

891:                                              ; preds = %869
  %892 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %871, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %873, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %1051

893:                                              ; preds = %888
  %894 = getelementptr inbounds nuw i8, ptr %871, i64 16
  %895 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %896 = add i64 %870, -16
  %897 = load <2 x i64>, ptr %895, align 1, !tbaa !9
  store <2 x i64> %897, ptr %894, align 1, !tbaa !9
  %898 = icmp ult i64 %896, 17
  br i1 %898, label %911, label %899

899:                                              ; preds = %893
  %900 = getelementptr inbounds nuw i8, ptr %871, i64 32
  br label %901

901:                                              ; preds = %901, %899
  %902 = phi ptr [ %900, %899 ], [ %909, %901 ]
  %903 = phi ptr [ %895, %899 ], [ %907, %901 ]
  %904 = getelementptr inbounds nuw i8, ptr %903, i64 16
  %905 = load <2 x i64>, ptr %904, align 1, !tbaa !9
  store <2 x i64> %905, ptr %902, align 1, !tbaa !9
  %906 = getelementptr inbounds nuw i8, ptr %902, i64 16
  %907 = getelementptr inbounds nuw i8, ptr %903, i64 32
  %908 = load <2 x i64>, ptr %907, align 1, !tbaa !9
  store <2 x i64> %908, ptr %906, align 1, !tbaa !9
  %909 = getelementptr inbounds nuw i8, ptr %902, i64 32
  %910 = icmp ult ptr %909, %877
  br i1 %910, label %901, label %911, !llvm.loop !101

911:                                              ; preds = %901, %893, %888
  store ptr %880, ptr %10, align 8, !tbaa !40
  %912 = ptrtoint ptr %877 to i64
  %913 = sub i64 %912, %277
  %914 = icmp ugt i64 %372, %913
  br i1 %914, label %915, label %929

915:                                              ; preds = %911
  %916 = sub i64 %912, %278
  %917 = icmp ugt i64 %372, %916
  br i1 %917, label %918, label %919, !prof !53

918:                                              ; preds = %915
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %1483

919:                                              ; preds = %915
  %920 = ptrtoint ptr %882 to i64
  %921 = sub i64 %920, %277
  %922 = getelementptr inbounds i8, ptr %29, i64 %921
  %923 = add nsw i64 %921, %387
  %924 = icmp sgt i64 %923, 0
  br i1 %924, label %926, label %925

925:                                              ; preds = %919
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %877, ptr align 1 %922, i64 %387, i1 false)
  br label %1051

926:                                              ; preds = %919
  %927 = sub nsw i64 0, %921
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %877, ptr align 1 %922, i64 %927, i1 false)
  %928 = getelementptr inbounds nuw i8, ptr %877, i64 %927
  store i64 %923, ptr %875, align 8, !tbaa !131
  br label %929

929:                                              ; preds = %926, %911
  %930 = phi ptr [ %928, %926 ], [ %877, %911 ]
  %931 = phi ptr [ %25, %926 ], [ %882, %911 ]
  %932 = phi i64 [ %923, %926 ], [ %387, %911 ]
  %933 = icmp ugt i64 %372, 15
  br i1 %933, label %934, label %950, !prof !91

934:                                              ; preds = %929
  %935 = getelementptr inbounds nuw i8, ptr %930, i64 %932
  %936 = load <2 x i64>, ptr %931, align 1, !tbaa !9
  store <2 x i64> %936, ptr %930, align 1, !tbaa !9
  %937 = icmp ult i64 %932, 17
  br i1 %937, label %1051, label %938

938:                                              ; preds = %934
  %939 = getelementptr inbounds nuw i8, ptr %930, i64 16
  br label %940

940:                                              ; preds = %940, %938
  %941 = phi ptr [ %939, %938 ], [ %948, %940 ]
  %942 = phi ptr [ %931, %938 ], [ %946, %940 ]
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 16
  %944 = load <2 x i64>, ptr %943, align 1, !tbaa !9
  store <2 x i64> %944, ptr %941, align 1, !tbaa !9
  %945 = getelementptr inbounds nuw i8, ptr %941, i64 16
  %946 = getelementptr inbounds nuw i8, ptr %942, i64 32
  %947 = load <2 x i64>, ptr %946, align 1, !tbaa !9
  store <2 x i64> %947, ptr %945, align 1, !tbaa !9
  %948 = getelementptr inbounds nuw i8, ptr %941, i64 32
  %949 = icmp ult ptr %948, %935
  br i1 %949, label %940, label %1051, !llvm.loop !101

950:                                              ; preds = %929
  %951 = icmp samesign ult i64 %372, 8
  br i1 %951, label %952, label %974

952:                                              ; preds = %950
  %953 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %372
  %954 = load i32, ptr %953, align 4, !tbaa !30
  %955 = load i8, ptr %931, align 1, !tbaa !9
  store i8 %955, ptr %930, align 1, !tbaa !9
  %956 = getelementptr inbounds nuw i8, ptr %931, i64 1
  %957 = load i8, ptr %956, align 1, !tbaa !9
  %958 = getelementptr inbounds nuw i8, ptr %930, i64 1
  store i8 %957, ptr %958, align 1, !tbaa !9
  %959 = getelementptr inbounds nuw i8, ptr %931, i64 2
  %960 = load i8, ptr %959, align 1, !tbaa !9
  %961 = getelementptr inbounds nuw i8, ptr %930, i64 2
  store i8 %960, ptr %961, align 1, !tbaa !9
  %962 = getelementptr inbounds nuw i8, ptr %931, i64 3
  %963 = load i8, ptr %962, align 1, !tbaa !9
  %964 = getelementptr inbounds nuw i8, ptr %930, i64 3
  store i8 %963, ptr %964, align 1, !tbaa !9
  %965 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %372
  %966 = load i32, ptr %965, align 4, !tbaa !30
  %967 = zext i32 %966 to i64
  %968 = getelementptr inbounds nuw i8, ptr %931, i64 %967
  %969 = getelementptr inbounds nuw i8, ptr %930, i64 4
  %970 = load i32, ptr %968, align 1
  store i32 %970, ptr %969, align 1
  %971 = sext i32 %954 to i64
  %972 = sub nsw i64 0, %971
  %973 = getelementptr inbounds i8, ptr %968, i64 %972
  br label %976

974:                                              ; preds = %950
  %975 = load i64, ptr %931, align 1
  store i64 %975, ptr %930, align 1
  br label %976

976:                                              ; preds = %974, %952
  %977 = phi ptr [ %973, %952 ], [ %931, %974 ]
  %978 = getelementptr inbounds nuw i8, ptr %977, i64 8
  %979 = getelementptr inbounds nuw i8, ptr %930, i64 8
  %980 = icmp ugt i64 %932, 8
  br i1 %980, label %981, label %1051

981:                                              ; preds = %976
  %982 = ptrtoint ptr %979 to i64
  %983 = ptrtoint ptr %978 to i64
  %984 = sub i64 %982, %983
  %985 = getelementptr i8, ptr %930, i64 %932
  %986 = icmp slt i64 %984, 16
  br i1 %986, label %987, label %1035

987:                                              ; preds = %981
  %988 = add i64 %387, %277
  %989 = tail call i64 @llvm.umin.i64(i64 %372, i64 %913)
  %990 = add i64 %988, %989
  %991 = tail call i64 @llvm.umax.i64(i64 %372, i64 %913)
  %992 = add i64 %990, %991
  %993 = sub i64 %992, %372
  %994 = add i64 %991, %277
  %995 = add i64 %994, 16
  %996 = tail call i64 @llvm.umax.i64(i64 %993, i64 %995)
  %997 = add i64 %996, -9
  %998 = add i64 %991, %277
  %999 = sub i64 %997, %998
  %1000 = lshr i64 %999, 3
  %1001 = add nuw nsw i64 %1000, 1
  %1002 = icmp ult i64 %999, 24
  %1003 = icmp ult i64 %984, 32
  %1004 = or i1 %1002, %1003
  br i1 %1004, label %1025, label %1005

1005:                                             ; preds = %987
  %1006 = and i64 %1001, 4611686018427387900
  %1007 = shl i64 %1006, 3
  %1008 = getelementptr i8, ptr %979, i64 %1007
  %1009 = shl i64 %1006, 3
  %1010 = getelementptr i8, ptr %978, i64 %1009
  br label %1011

1011:                                             ; preds = %1011, %1005
  %1012 = phi i64 [ 0, %1005 ], [ %1021, %1011 ]
  %1013 = shl i64 %1012, 3
  %1014 = getelementptr i8, ptr %979, i64 %1013
  %1015 = shl i64 %1012, 3
  %1016 = getelementptr i8, ptr %978, i64 %1015
  %1017 = getelementptr i8, ptr %1016, i64 16
  %1018 = load <2 x i64>, ptr %1016, align 1
  %1019 = load <2 x i64>, ptr %1017, align 1
  %1020 = getelementptr i8, ptr %1014, i64 16
  store <2 x i64> %1018, ptr %1014, align 1
  store <2 x i64> %1019, ptr %1020, align 1
  %1021 = add nuw i64 %1012, 4
  %1022 = icmp eq i64 %1021, %1006
  br i1 %1022, label %1023, label %1011, !llvm.loop !141

1023:                                             ; preds = %1011
  %1024 = icmp eq i64 %1001, %1006
  br i1 %1024, label %1051, label %1025

1025:                                             ; preds = %987, %1023
  %1026 = phi ptr [ %979, %987 ], [ %1008, %1023 ]
  %1027 = phi ptr [ %978, %987 ], [ %1010, %1023 ]
  br label %1028

1028:                                             ; preds = %1025, %1028
  %1029 = phi ptr [ %1032, %1028 ], [ %1026, %1025 ]
  %1030 = phi ptr [ %1033, %1028 ], [ %1027, %1025 ]
  %1031 = load i64, ptr %1030, align 1
  store i64 %1031, ptr %1029, align 1
  %1032 = getelementptr inbounds nuw i8, ptr %1029, i64 8
  %1033 = getelementptr inbounds nuw i8, ptr %1030, i64 8
  %1034 = icmp ult ptr %1032, %985
  br i1 %1034, label %1028, label %1051, !llvm.loop !142

1035:                                             ; preds = %981
  %1036 = add i64 %932, -8
  %1037 = load <2 x i64>, ptr %978, align 1, !tbaa !9
  store <2 x i64> %1037, ptr %979, align 1, !tbaa !9
  %1038 = icmp ult i64 %1036, 17
  br i1 %1038, label %1051, label %1039

1039:                                             ; preds = %1035
  %1040 = getelementptr inbounds nuw i8, ptr %930, i64 24
  br label %1041

1041:                                             ; preds = %1041, %1039
  %1042 = phi ptr [ %1040, %1039 ], [ %1049, %1041 ]
  %1043 = phi ptr [ %978, %1039 ], [ %1047, %1041 ]
  %1044 = getelementptr inbounds nuw i8, ptr %1043, i64 16
  %1045 = load <2 x i64>, ptr %1044, align 1, !tbaa !9
  store <2 x i64> %1045, ptr %1042, align 1, !tbaa !9
  %1046 = getelementptr inbounds nuw i8, ptr %1042, i64 16
  %1047 = getelementptr inbounds nuw i8, ptr %1043, i64 32
  %1048 = load <2 x i64>, ptr %1047, align 1, !tbaa !9
  store <2 x i64> %1048, ptr %1046, align 1, !tbaa !9
  %1049 = getelementptr inbounds nuw i8, ptr %1042, i64 32
  %1050 = icmp ult ptr %1049, %985
  br i1 %1050, label %1041, label %1051, !llvm.loop !101

1051:                                             ; preds = %1041, %1028, %940, %1023, %1035, %976, %934, %925, %891
  %1052 = phi i64 [ %892, %891 ], [ %878, %925 ], [ %878, %976 ], [ %878, %934 ], [ %878, %1035 ], [ %878, %1023 ], [ %878, %940 ], [ %878, %1028 ], [ %878, %1041 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  %1053 = icmp ult i64 %1052, -119
  %1054 = getelementptr inbounds nuw i8, ptr %871, i64 %1052
  %1055 = add nsw i32 %291, -1
  br i1 %1053, label %1056, label %1483

1056:                                             ; preds = %1051
  %1057 = icmp eq i32 %1055, 0
  br i1 %1057, label %1467, label %1058

1058:                                             ; preds = %1056
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !143
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !144
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !145
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !146
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !147
  %1059 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1060 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %1061 = add i64 %277, 16
  br label %1062

1062:                                             ; preds = %1463, %1058
  %1063 = phi ptr [ %707, %1058 ], [ %1282, %1463 ]
  %1064 = phi i32 [ %708, %1058 ], [ %1283, %1463 ]
  %1065 = phi i64 [ %709, %1058 ], [ %1284, %1463 ]
  %1066 = phi i64 [ %373, %1058 ], [ %1154, %1463 ]
  %1067 = phi i64 [ %371, %1058 ], [ %1152, %1463 ]
  %1068 = phi i64 [ %372, %1058 ], [ %1153, %1463 ]
  %1069 = phi i64 [ %710, %1058 ], [ %1285, %1463 ]
  %1070 = phi i64 [ %711, %1058 ], [ %1286, %1463 ]
  %1071 = phi i64 [ %712, %1058 ], [ %1287, %1463 ]
  %1072 = phi i32 [ %1055, %1058 ], [ %1465, %1463 ]
  %1073 = phi ptr [ %1054, %1058 ], [ %1464, %1463 ]
  %1074 = icmp eq i32 %1072, 1
  %1075 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %172, i64 %1071
  %1076 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %273, i64 %1069
  %1077 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %223, i64 %1070
  %1078 = getelementptr inbounds nuw i8, ptr %1076, i64 4
  %1079 = load i32, ptr %1078, align 4, !tbaa !43, !noalias !148
  %1080 = zext i32 %1079 to i64
  %1081 = getelementptr inbounds nuw i8, ptr %1075, i64 4
  %1082 = load i32, ptr %1081, align 4, !tbaa !43, !noalias !148
  %1083 = zext i32 %1082 to i64
  %1084 = getelementptr inbounds nuw i8, ptr %1077, i64 4
  %1085 = load i32, ptr %1084, align 4, !tbaa !43, !noalias !148
  %1086 = getelementptr inbounds nuw i8, ptr %1075, i64 2
  %1087 = load i8, ptr %1086, align 2, !tbaa !59, !noalias !148
  %1088 = getelementptr inbounds nuw i8, ptr %1076, i64 2
  %1089 = load i8, ptr %1088, align 2, !tbaa !59, !noalias !148
  %1090 = getelementptr inbounds nuw i8, ptr %1077, i64 2
  %1091 = load i8, ptr %1090, align 2, !tbaa !59, !noalias !148
  %1092 = zext i8 %1087 to i32
  %1093 = zext i8 %1089 to i32
  %1094 = add i8 %1089, %1087
  %1095 = add i8 %1094, %1091
  %1096 = load i16, ptr %1075, align 4, !tbaa !58, !noalias !148
  %1097 = load i16, ptr %1076, align 4, !tbaa !58, !noalias !148
  %1098 = load i16, ptr %1077, align 4, !tbaa !58, !noalias !148
  %1099 = getelementptr inbounds nuw i8, ptr %1075, i64 3
  %1100 = load i8, ptr %1099, align 1, !tbaa !57, !noalias !148
  %1101 = zext i8 %1100 to i32
  %1102 = getelementptr inbounds nuw i8, ptr %1076, i64 3
  %1103 = load i8, ptr %1102, align 1, !tbaa !57, !noalias !148
  %1104 = zext i8 %1103 to i32
  %1105 = getelementptr inbounds nuw i8, ptr %1077, i64 3
  %1106 = load i8, ptr %1105, align 1, !tbaa !57, !noalias !148
  %1107 = zext i8 %1106 to i32
  %1108 = icmp ugt i8 %1091, 1
  br i1 %1108, label %1109, label %1121

1109:                                             ; preds = %1062
  %1110 = zext i8 %1091 to i32
  %1111 = and i32 %1064, 63
  %1112 = zext nneg i32 %1111 to i64
  %1113 = shl i64 %1065, %1112
  %1114 = sub nsw i32 0, %1110
  %1115 = and i32 %1114, 63
  %1116 = zext nneg i32 %1115 to i64
  %1117 = lshr i64 %1113, %1116
  %1118 = add i32 %1064, %1110
  store i32 %1118, ptr %132, align 8, !tbaa !84, !noalias !148
  %1119 = zext i32 %1085 to i64
  %1120 = add i64 %1117, %1119
  store i64 %1067, ptr %44, align 8, !tbaa !46, !noalias !148
  br label %1150

1121:                                             ; preds = %1062
  %1122 = icmp eq i32 %1082, 0
  %1123 = icmp eq i8 %1091, 0
  br i1 %1123, label %1124, label %1127, !prof !91

1124:                                             ; preds = %1121
  %1125 = select i1 %1122, i64 %1067, i64 %1068
  %1126 = select i1 %1122, i64 %1068, i64 %1067
  br label %1150

1127:                                             ; preds = %1121
  %1128 = zext i1 %1122 to i32
  %1129 = add i32 %1085, %1128
  %1130 = zext i32 %1129 to i64
  %1131 = and i32 %1064, 63
  %1132 = zext nneg i32 %1131 to i64
  %1133 = shl i64 %1065, %1132
  %1134 = lshr i64 %1133, 63
  %1135 = add i32 %1064, 1
  store i32 %1135, ptr %132, align 8, !tbaa !84, !noalias !148
  %1136 = add nuw nsw i64 %1134, %1130
  %1137 = icmp eq i64 %1136, 3
  br i1 %1137, label %1138, label %1142

1138:                                             ; preds = %1127
  %1139 = add i64 %1068, -1
  %1140 = icmp eq i64 %1139, 0
  %1141 = select i1 %1140, i64 -1, i64 %1139
  br label %1148

1142:                                             ; preds = %1127
  %1143 = getelementptr inbounds nuw [3 x i64], ptr %34, i64 0, i64 %1136
  %1144 = load i64, ptr %1143, align 8, !tbaa !46, !noalias !148
  %1145 = icmp eq i64 %1144, 0
  %1146 = select i1 %1145, i64 -1, i64 %1144
  %1147 = icmp eq i64 %1136, 1
  br i1 %1147, label %1150, label %1148

1148:                                             ; preds = %1142, %1138
  %1149 = phi i64 [ %1141, %1138 ], [ %1146, %1142 ]
  store i64 %1067, ptr %44, align 8, !tbaa !46, !noalias !148
  br label %1150

1150:                                             ; preds = %1148, %1142, %1124, %1109
  %1151 = phi i32 [ %1064, %1124 ], [ %1118, %1109 ], [ %1135, %1148 ], [ %1135, %1142 ]
  %1152 = phi i64 [ %1126, %1124 ], [ %1068, %1109 ], [ %1068, %1148 ], [ %1068, %1142 ]
  %1153 = phi i64 [ %1125, %1124 ], [ %1120, %1109 ], [ %1149, %1148 ], [ %1146, %1142 ]
  %1154 = phi i64 [ %1066, %1124 ], [ %1067, %1109 ], [ %1067, %1148 ], [ %1066, %1142 ]
  store i64 %1152, ptr %40, align 8, !tbaa !46, !noalias !148
  store i64 %1153, ptr %34, align 8, !tbaa !46, !noalias !148
  %1155 = icmp eq i8 %1089, 0
  br i1 %1155, label %1166, label %1156

1156:                                             ; preds = %1150
  %1157 = and i32 %1151, 63
  %1158 = zext nneg i32 %1157 to i64
  %1159 = shl i64 %1065, %1158
  %1160 = sub nsw i32 0, %1093
  %1161 = and i32 %1160, 63
  %1162 = zext nneg i32 %1161 to i64
  %1163 = lshr i64 %1159, %1162
  %1164 = add i32 %1151, %1093
  store i32 %1164, ptr %132, align 8, !tbaa !84, !noalias !148
  %1165 = add i64 %1163, %1080
  br label %1166

1166:                                             ; preds = %1156, %1150
  %1167 = phi i32 [ %1151, %1150 ], [ %1164, %1156 ]
  %1168 = phi i64 [ %1080, %1150 ], [ %1165, %1156 ]
  %1169 = icmp ugt i8 %1095, 30
  br i1 %1169, label %1170, label %1200, !prof !53

1170:                                             ; preds = %1166
  %1171 = icmp ugt i32 %1167, 64
  br i1 %1171, label %1172, label %1173, !prof !53

1172:                                             ; preds = %1170
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79, !noalias !148
  br label %1200

1173:                                             ; preds = %1170
  %1174 = icmp ult ptr %1063, %48
  br i1 %1174, label %1182, label %1175

1175:                                             ; preds = %1173
  %1176 = lshr i32 %1167, 3
  %1177 = zext nneg i32 %1176 to i64
  %1178 = sub nsw i64 0, %1177
  %1179 = getelementptr inbounds i8, ptr %1063, i64 %1178
  store ptr %1179, ptr %143, align 8, !tbaa !79, !noalias !148
  %1180 = and i32 %1167, 7
  store i32 %1180, ptr %132, align 8, !tbaa !84, !noalias !148
  %1181 = load i64, ptr %1179, align 1, !tbaa !46, !noalias !148
  store i64 %1181, ptr %11, align 8, !tbaa !80, !noalias !148
  br label %1200

1182:                                             ; preds = %1173
  %1183 = icmp eq ptr %1063, %3
  br i1 %1183, label %1200, label %1184

1184:                                             ; preds = %1182
  %1185 = lshr i32 %1167, 3
  %1186 = zext nneg i32 %1185 to i64
  %1187 = sub nsw i64 0, %1186
  %1188 = getelementptr inbounds i8, ptr %1063, i64 %1187
  %1189 = icmp ult ptr %1188, %3
  %1190 = ptrtoint ptr %1063 to i64
  %1191 = sub i64 %1190, %279
  %1192 = trunc i64 %1191 to i32
  %1193 = select i1 %1189, i32 %1192, i32 %1185
  %1194 = zext i32 %1193 to i64
  %1195 = sub nsw i64 0, %1194
  %1196 = getelementptr inbounds i8, ptr %1063, i64 %1195
  store ptr %1196, ptr %143, align 8, !tbaa !79, !noalias !148
  %1197 = shl i32 %1193, 3
  %1198 = sub i32 %1167, %1197
  store i32 %1198, ptr %132, align 8, !tbaa !84, !noalias !148
  %1199 = load i64, ptr %1196, align 1, !tbaa !46, !noalias !148
  store i64 %1199, ptr %11, align 8, !tbaa !80, !noalias !148
  br label %1200

1200:                                             ; preds = %1184, %1182, %1175, %1172, %1166
  %1201 = phi ptr [ %1196, %1184 ], [ %1063, %1182 ], [ %1179, %1175 ], [ @BIT_reloadDStream.zeroFilled, %1172 ], [ %1063, %1166 ]
  %1202 = phi i32 [ %1198, %1184 ], [ %1167, %1182 ], [ %1180, %1175 ], [ %1167, %1172 ], [ %1167, %1166 ]
  %1203 = phi i64 [ %1199, %1184 ], [ %1065, %1182 ], [ %1181, %1175 ], [ %1065, %1172 ], [ %1065, %1166 ]
  %1204 = icmp eq i8 %1087, 0
  br i1 %1204, label %1215, label %1205

1205:                                             ; preds = %1200
  %1206 = and i32 %1202, 63
  %1207 = zext nneg i32 %1206 to i64
  %1208 = shl i64 %1203, %1207
  %1209 = sub nsw i32 0, %1092
  %1210 = and i32 %1209, 63
  %1211 = zext nneg i32 %1210 to i64
  %1212 = lshr i64 %1208, %1211
  %1213 = add i32 %1202, %1092
  store i32 %1213, ptr %132, align 8, !tbaa !84, !noalias !148
  %1214 = add i64 %1212, %1083
  br label %1215

1215:                                             ; preds = %1205, %1200
  %1216 = phi i32 [ %1202, %1200 ], [ %1213, %1205 ]
  %1217 = phi i64 [ %1083, %1200 ], [ %1214, %1205 ]
  br i1 %1074, label %1281, label %1218

1218:                                             ; preds = %1215
  %1219 = add i32 %1216, %1101
  %1220 = sub i32 0, %1219
  %1221 = and i32 %1220, 63
  %1222 = zext nneg i32 %1221 to i64
  %1223 = lshr i64 %1203, %1222
  %1224 = zext nneg i8 %1100 to i64
  %1225 = shl nsw i64 -1, %1224
  %1226 = xor i64 %1225, -1
  %1227 = and i64 %1223, %1226
  %1228 = zext i16 %1096 to i64
  %1229 = add nuw i64 %1227, %1228
  store i64 %1229, ptr %128, align 8, !tbaa !82, !noalias !148
  %1230 = add i32 %1219, %1104
  %1231 = sub i32 0, %1230
  %1232 = and i32 %1231, 63
  %1233 = zext nneg i32 %1232 to i64
  %1234 = lshr i64 %1203, %1233
  %1235 = zext nneg i8 %1103 to i64
  %1236 = shl nsw i64 -1, %1235
  %1237 = xor i64 %1236, -1
  %1238 = and i64 %1234, %1237
  %1239 = zext i16 %1097 to i64
  %1240 = add nuw i64 %1238, %1239
  store i64 %1240, ptr %225, align 8, !tbaa !82, !noalias !148
  %1241 = add i32 %1230, %1107
  %1242 = sub i32 0, %1241
  %1243 = and i32 %1242, 63
  %1244 = zext nneg i32 %1243 to i64
  %1245 = lshr i64 %1203, %1244
  %1246 = zext nneg i8 %1106 to i64
  %1247 = shl nsw i64 -1, %1246
  %1248 = xor i64 %1247, -1
  %1249 = and i64 %1245, %1248
  store i32 %1241, ptr %132, align 8, !tbaa !84, !noalias !148
  %1250 = zext i16 %1098 to i64
  %1251 = add nuw i64 %1249, %1250
  store i64 %1251, ptr %174, align 8, !tbaa !82, !noalias !148
  %1252 = icmp ugt i32 %1241, 64
  br i1 %1252, label %1253, label %1254, !prof !53

1253:                                             ; preds = %1218
  store ptr @BIT_reloadDStream.zeroFilled, ptr %143, align 8, !tbaa !79, !noalias !148
  br label %1281

1254:                                             ; preds = %1218
  %1255 = icmp ult ptr %1201, %48
  br i1 %1255, label %1263, label %1256

1256:                                             ; preds = %1254
  %1257 = lshr i32 %1241, 3
  %1258 = zext nneg i32 %1257 to i64
  %1259 = sub nsw i64 0, %1258
  %1260 = getelementptr inbounds i8, ptr %1201, i64 %1259
  store ptr %1260, ptr %143, align 8, !tbaa !79, !noalias !148
  %1261 = and i32 %1241, 7
  store i32 %1261, ptr %132, align 8, !tbaa !84, !noalias !148
  %1262 = load i64, ptr %1260, align 1, !tbaa !46, !noalias !148
  store i64 %1262, ptr %11, align 8, !tbaa !80, !noalias !148
  br label %1281

1263:                                             ; preds = %1254
  %1264 = icmp eq ptr %1201, %3
  br i1 %1264, label %1281, label %1265

1265:                                             ; preds = %1263
  %1266 = lshr i32 %1241, 3
  %1267 = zext nneg i32 %1266 to i64
  %1268 = sub nsw i64 0, %1267
  %1269 = getelementptr inbounds i8, ptr %1201, i64 %1268
  %1270 = icmp ult ptr %1269, %3
  %1271 = ptrtoint ptr %1201 to i64
  %1272 = sub i64 %1271, %279
  %1273 = trunc i64 %1272 to i32
  %1274 = select i1 %1270, i32 %1273, i32 %1266
  %1275 = zext i32 %1274 to i64
  %1276 = sub nsw i64 0, %1275
  %1277 = getelementptr inbounds i8, ptr %1201, i64 %1276
  store ptr %1277, ptr %143, align 8, !tbaa !79, !noalias !148
  %1278 = shl i32 %1274, 3
  %1279 = sub i32 %1241, %1278
  store i32 %1279, ptr %132, align 8, !tbaa !84, !noalias !148
  %1280 = load i64, ptr %1277, align 1, !tbaa !46, !noalias !148
  store i64 %1280, ptr %11, align 8, !tbaa !80, !noalias !148
  br label %1281

1281:                                             ; preds = %1265, %1263, %1256, %1253, %1215
  %1282 = phi ptr [ %1201, %1263 ], [ @BIT_reloadDStream.zeroFilled, %1253 ], [ %1260, %1256 ], [ %1277, %1265 ], [ %1201, %1215 ]
  %1283 = phi i32 [ %1241, %1263 ], [ %1241, %1253 ], [ %1261, %1256 ], [ %1279, %1265 ], [ %1216, %1215 ]
  %1284 = phi i64 [ %1203, %1263 ], [ %1203, %1253 ], [ %1262, %1256 ], [ %1280, %1265 ], [ %1203, %1215 ]
  %1285 = phi i64 [ %1240, %1263 ], [ %1240, %1253 ], [ %1240, %1256 ], [ %1240, %1265 ], [ %1069, %1215 ]
  %1286 = phi i64 [ %1251, %1263 ], [ %1251, %1253 ], [ %1251, %1256 ], [ %1251, %1265 ], [ %1070, %1215 ]
  %1287 = phi i64 [ %1229, %1263 ], [ %1229, %1253 ], [ %1229, %1256 ], [ %1229, %1265 ], [ %1071, %1215 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  store i64 %1217, ptr %9, align 8
  store i64 %1168, ptr %1059, align 8
  store i64 %1153, ptr %1060, align 8
  %1288 = getelementptr i8, ptr %1073, i64 %1217
  %1289 = add i64 %1217, %1168
  %1290 = load ptr, ptr %10, align 8, !tbaa !40
  %1291 = getelementptr inbounds nuw i8, ptr %1290, i64 %1217
  %1292 = sub i64 0, %1153
  %1293 = getelementptr inbounds i8, ptr %1288, i64 %1292
  %1294 = icmp ugt ptr %1291, %873
  %1295 = getelementptr inbounds nuw i8, ptr %1073, i64 %1289
  %1296 = icmp ugt ptr %1295, %884
  %1297 = select i1 %1294, i1 true, i1 %1296
  br i1 %1297, label %1301, label %1298, !prof !105

1298:                                             ; preds = %1281
  %1299 = load <2 x i64>, ptr %1290, align 1, !tbaa !9
  store <2 x i64> %1299, ptr %1073, align 1, !tbaa !9
  %1300 = icmp ugt i64 %1217, 16
  br i1 %1300, label %1303, label %1321, !prof !53

1301:                                             ; preds = %1281
  %1302 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1073, ptr noundef %19, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %873, ptr noundef %25, ptr noundef %27, ptr noundef %29)
  br label %1460

1303:                                             ; preds = %1298
  %1304 = getelementptr inbounds nuw i8, ptr %1073, i64 16
  %1305 = getelementptr inbounds nuw i8, ptr %1290, i64 16
  %1306 = add i64 %1217, -16
  %1307 = load <2 x i64>, ptr %1305, align 1, !tbaa !9
  store <2 x i64> %1307, ptr %1304, align 1, !tbaa !9
  %1308 = icmp ult i64 %1306, 17
  br i1 %1308, label %1321, label %1309

1309:                                             ; preds = %1303
  %1310 = getelementptr inbounds nuw i8, ptr %1073, i64 32
  br label %1311

1311:                                             ; preds = %1311, %1309
  %1312 = phi ptr [ %1310, %1309 ], [ %1319, %1311 ]
  %1313 = phi ptr [ %1305, %1309 ], [ %1317, %1311 ]
  %1314 = getelementptr inbounds nuw i8, ptr %1313, i64 16
  %1315 = load <2 x i64>, ptr %1314, align 1, !tbaa !9
  store <2 x i64> %1315, ptr %1312, align 1, !tbaa !9
  %1316 = getelementptr inbounds nuw i8, ptr %1312, i64 16
  %1317 = getelementptr inbounds nuw i8, ptr %1313, i64 32
  %1318 = load <2 x i64>, ptr %1317, align 1, !tbaa !9
  store <2 x i64> %1318, ptr %1316, align 1, !tbaa !9
  %1319 = getelementptr inbounds nuw i8, ptr %1312, i64 32
  %1320 = icmp ult ptr %1319, %1288
  br i1 %1320, label %1311, label %1321, !llvm.loop !101

1321:                                             ; preds = %1311, %1303, %1298
  store ptr %1291, ptr %10, align 8, !tbaa !40
  %1322 = ptrtoint ptr %1288 to i64
  %1323 = sub i64 %1322, %277
  %1324 = icmp ugt i64 %1153, %1323
  br i1 %1324, label %1325, label %1339

1325:                                             ; preds = %1321
  %1326 = sub i64 %1322, %278
  %1327 = icmp ugt i64 %1153, %1326
  br i1 %1327, label %1328, label %1329, !prof !53

1328:                                             ; preds = %1325
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  br label %1483

1329:                                             ; preds = %1325
  %1330 = ptrtoint ptr %1293 to i64
  %1331 = sub i64 %1330, %277
  %1332 = getelementptr inbounds i8, ptr %29, i64 %1331
  %1333 = add nsw i64 %1331, %1168
  %1334 = icmp sgt i64 %1333, 0
  br i1 %1334, label %1336, label %1335

1335:                                             ; preds = %1329
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1288, ptr align 1 %1332, i64 %1168, i1 false)
  br label %1460

1336:                                             ; preds = %1329
  %1337 = sub nsw i64 0, %1331
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1288, ptr align 1 %1332, i64 %1337, i1 false)
  %1338 = getelementptr inbounds nuw i8, ptr %1288, i64 %1337
  store i64 %1333, ptr %1059, align 8, !tbaa !131
  br label %1339

1339:                                             ; preds = %1336, %1321
  %1340 = phi ptr [ %1338, %1336 ], [ %1288, %1321 ]
  %1341 = phi ptr [ %25, %1336 ], [ %1293, %1321 ]
  %1342 = phi i64 [ %1333, %1336 ], [ %1168, %1321 ]
  %1343 = icmp ugt i64 %1153, 15
  br i1 %1343, label %1344, label %1360, !prof !91

1344:                                             ; preds = %1339
  %1345 = getelementptr inbounds nuw i8, ptr %1340, i64 %1342
  %1346 = load <2 x i64>, ptr %1341, align 1, !tbaa !9
  store <2 x i64> %1346, ptr %1340, align 1, !tbaa !9
  %1347 = icmp ult i64 %1342, 17
  br i1 %1347, label %1460, label %1348

1348:                                             ; preds = %1344
  %1349 = getelementptr inbounds nuw i8, ptr %1340, i64 16
  br label %1350

1350:                                             ; preds = %1350, %1348
  %1351 = phi ptr [ %1349, %1348 ], [ %1358, %1350 ]
  %1352 = phi ptr [ %1341, %1348 ], [ %1356, %1350 ]
  %1353 = getelementptr inbounds nuw i8, ptr %1352, i64 16
  %1354 = load <2 x i64>, ptr %1353, align 1, !tbaa !9
  store <2 x i64> %1354, ptr %1351, align 1, !tbaa !9
  %1355 = getelementptr inbounds nuw i8, ptr %1351, i64 16
  %1356 = getelementptr inbounds nuw i8, ptr %1352, i64 32
  %1357 = load <2 x i64>, ptr %1356, align 1, !tbaa !9
  store <2 x i64> %1357, ptr %1355, align 1, !tbaa !9
  %1358 = getelementptr inbounds nuw i8, ptr %1351, i64 32
  %1359 = icmp ult ptr %1358, %1345
  br i1 %1359, label %1350, label %1460, !llvm.loop !101

1360:                                             ; preds = %1339
  %1361 = icmp samesign ult i64 %1153, 8
  br i1 %1361, label %1362, label %1384

1362:                                             ; preds = %1360
  %1363 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1153
  %1364 = load i32, ptr %1363, align 4, !tbaa !30
  %1365 = load i8, ptr %1341, align 1, !tbaa !9
  store i8 %1365, ptr %1340, align 1, !tbaa !9
  %1366 = getelementptr inbounds nuw i8, ptr %1341, i64 1
  %1367 = load i8, ptr %1366, align 1, !tbaa !9
  %1368 = getelementptr inbounds nuw i8, ptr %1340, i64 1
  store i8 %1367, ptr %1368, align 1, !tbaa !9
  %1369 = getelementptr inbounds nuw i8, ptr %1341, i64 2
  %1370 = load i8, ptr %1369, align 1, !tbaa !9
  %1371 = getelementptr inbounds nuw i8, ptr %1340, i64 2
  store i8 %1370, ptr %1371, align 1, !tbaa !9
  %1372 = getelementptr inbounds nuw i8, ptr %1341, i64 3
  %1373 = load i8, ptr %1372, align 1, !tbaa !9
  %1374 = getelementptr inbounds nuw i8, ptr %1340, i64 3
  store i8 %1373, ptr %1374, align 1, !tbaa !9
  %1375 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1153
  %1376 = load i32, ptr %1375, align 4, !tbaa !30
  %1377 = zext i32 %1376 to i64
  %1378 = getelementptr inbounds nuw i8, ptr %1341, i64 %1377
  %1379 = getelementptr inbounds nuw i8, ptr %1340, i64 4
  %1380 = load i32, ptr %1378, align 1
  store i32 %1380, ptr %1379, align 1
  %1381 = sext i32 %1364 to i64
  %1382 = sub nsw i64 0, %1381
  %1383 = getelementptr inbounds i8, ptr %1378, i64 %1382
  br label %1386

1384:                                             ; preds = %1360
  %1385 = load i64, ptr %1341, align 1
  store i64 %1385, ptr %1340, align 1
  br label %1386

1386:                                             ; preds = %1384, %1362
  %1387 = phi ptr [ %1383, %1362 ], [ %1341, %1384 ]
  %1388 = getelementptr inbounds nuw i8, ptr %1387, i64 8
  %1389 = getelementptr inbounds nuw i8, ptr %1340, i64 8
  %1390 = icmp ugt i64 %1342, 8
  br i1 %1390, label %1391, label %1460

1391:                                             ; preds = %1386
  %1392 = ptrtoint ptr %1389 to i64
  %1393 = ptrtoint ptr %1388 to i64
  %1394 = sub i64 %1392, %1393
  %1395 = getelementptr i8, ptr %1340, i64 %1342
  %1396 = icmp slt i64 %1394, 16
  br i1 %1396, label %1397, label %1444

1397:                                             ; preds = %1391
  %1398 = add i64 %1168, %277
  %1399 = tail call i64 @llvm.umin.i64(i64 %1153, i64 %1323)
  %1400 = add i64 %1398, %1399
  %1401 = tail call i64 @llvm.umax.i64(i64 %1153, i64 %1323)
  %1402 = add i64 %1400, %1401
  %1403 = sub i64 %1402, %1153
  %1404 = add i64 %1061, %1401
  %1405 = tail call i64 @llvm.umax.i64(i64 %1403, i64 %1404)
  %1406 = add i64 %1405, -9
  %1407 = add i64 %1401, %277
  %1408 = sub i64 %1406, %1407
  %1409 = lshr i64 %1408, 3
  %1410 = add nuw nsw i64 %1409, 1
  %1411 = icmp ult i64 %1408, 24
  %1412 = icmp ult i64 %1394, 32
  %1413 = or i1 %1411, %1412
  br i1 %1413, label %1434, label %1414

1414:                                             ; preds = %1397
  %1415 = and i64 %1410, 4611686018427387900
  %1416 = shl i64 %1415, 3
  %1417 = getelementptr i8, ptr %1389, i64 %1416
  %1418 = shl i64 %1415, 3
  %1419 = getelementptr i8, ptr %1388, i64 %1418
  br label %1420

1420:                                             ; preds = %1420, %1414
  %1421 = phi i64 [ 0, %1414 ], [ %1430, %1420 ]
  %1422 = shl i64 %1421, 3
  %1423 = getelementptr i8, ptr %1389, i64 %1422
  %1424 = shl i64 %1421, 3
  %1425 = getelementptr i8, ptr %1388, i64 %1424
  %1426 = getelementptr i8, ptr %1425, i64 16
  %1427 = load <2 x i64>, ptr %1425, align 1
  %1428 = load <2 x i64>, ptr %1426, align 1
  %1429 = getelementptr i8, ptr %1423, i64 16
  store <2 x i64> %1427, ptr %1423, align 1
  store <2 x i64> %1428, ptr %1429, align 1
  %1430 = add nuw i64 %1421, 4
  %1431 = icmp eq i64 %1430, %1415
  br i1 %1431, label %1432, label %1420, !llvm.loop !151

1432:                                             ; preds = %1420
  %1433 = icmp eq i64 %1410, %1415
  br i1 %1433, label %1460, label %1434

1434:                                             ; preds = %1397, %1432
  %1435 = phi ptr [ %1389, %1397 ], [ %1417, %1432 ]
  %1436 = phi ptr [ %1388, %1397 ], [ %1419, %1432 ]
  br label %1437

1437:                                             ; preds = %1434, %1437
  %1438 = phi ptr [ %1441, %1437 ], [ %1435, %1434 ]
  %1439 = phi ptr [ %1442, %1437 ], [ %1436, %1434 ]
  %1440 = load i64, ptr %1439, align 1
  store i64 %1440, ptr %1438, align 1
  %1441 = getelementptr inbounds nuw i8, ptr %1438, i64 8
  %1442 = getelementptr inbounds nuw i8, ptr %1439, i64 8
  %1443 = icmp ult ptr %1441, %1395
  br i1 %1443, label %1437, label %1460, !llvm.loop !152

1444:                                             ; preds = %1391
  %1445 = add i64 %1342, -8
  %1446 = load <2 x i64>, ptr %1388, align 1, !tbaa !9
  store <2 x i64> %1446, ptr %1389, align 1, !tbaa !9
  %1447 = icmp ult i64 %1445, 17
  br i1 %1447, label %1460, label %1448

1448:                                             ; preds = %1444
  %1449 = getelementptr inbounds nuw i8, ptr %1340, i64 24
  br label %1450

1450:                                             ; preds = %1450, %1448
  %1451 = phi ptr [ %1449, %1448 ], [ %1458, %1450 ]
  %1452 = phi ptr [ %1388, %1448 ], [ %1456, %1450 ]
  %1453 = getelementptr inbounds nuw i8, ptr %1452, i64 16
  %1454 = load <2 x i64>, ptr %1453, align 1, !tbaa !9
  store <2 x i64> %1454, ptr %1451, align 1, !tbaa !9
  %1455 = getelementptr inbounds nuw i8, ptr %1451, i64 16
  %1456 = getelementptr inbounds nuw i8, ptr %1452, i64 32
  %1457 = load <2 x i64>, ptr %1456, align 1, !tbaa !9
  store <2 x i64> %1457, ptr %1455, align 1, !tbaa !9
  %1458 = getelementptr inbounds nuw i8, ptr %1451, i64 32
  %1459 = icmp ult ptr %1458, %1395
  br i1 %1459, label %1450, label %1460, !llvm.loop !101

1460:                                             ; preds = %1450, %1437, %1350, %1432, %1444, %1386, %1344, %1335, %1301
  %1461 = phi i64 [ %1302, %1301 ], [ %1289, %1335 ], [ %1289, %1386 ], [ %1289, %1344 ], [ %1289, %1444 ], [ %1289, %1432 ], [ %1289, %1350 ], [ %1289, %1437 ], [ %1289, %1450 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  %1462 = icmp ult i64 %1461, -119
  br i1 %1462, label %1463, label %1483

1463:                                             ; preds = %1460
  %1464 = getelementptr inbounds nuw i8, ptr %1073, i64 %1461
  %1465 = add i32 %1072, -1
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1467, label %1062, !llvm.loop !153

1467:                                             ; preds = %701, %1463, %1056
  %1468 = phi ptr [ %707, %1056 ], [ %1282, %1463 ], [ %514, %701 ]
  %1469 = phi i32 [ %708, %1056 ], [ %1283, %1463 ], [ %515, %701 ]
  %1470 = phi i64 [ %373, %1056 ], [ %1154, %1463 ], [ %373, %701 ]
  %1471 = phi i64 [ %371, %1056 ], [ %1152, %1463 ], [ %371, %701 ]
  %1472 = phi i64 [ %372, %1056 ], [ %1153, %1463 ], [ %372, %701 ]
  %1473 = phi ptr [ %1054, %1056 ], [ %1464, %1463 ], [ %696, %701 ]
  %1474 = phi ptr [ %873, %1056 ], [ %873, %1463 ], [ %23, %701 ]
  %1475 = icmp eq ptr %1468, %3
  %1476 = icmp eq i32 %1469, 64
  %1477 = select i1 %1475, i1 %1476, i1 false
  br i1 %1477, label %1478, label %1483

1478:                                             ; preds = %1467
  %1479 = trunc i64 %1472 to i32
  store i32 %1479, ptr %33, align 4, !tbaa !30
  %1480 = trunc i64 %1471 to i32
  store i32 %1480, ptr %37, align 4, !tbaa !30
  %1481 = trunc i64 %1470 to i32
  store i32 %1481, ptr %41, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #18
  %1482 = load ptr, ptr %10, align 8, !tbaa !40
  br label %1485

1483:                                             ; preds = %693, %1460, %1467, %1328, %1051, %918, %719, %704, %561, %115, %102, %51, %31
  %1484 = phi i64 [ -20, %704 ], [ -20, %1328 ], [ -20, %115 ], [ %1052, %1051 ], [ -70, %719 ], [ -20, %561 ], [ -20, %1467 ], [ -20, %918 ], [ -20, %31 ], [ -20, %51 ], [ -20, %102 ], [ %1461, %1460 ], [ %694, %693 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #18
  br label %1530

1485:                                             ; preds = %1478, %17
  %1486 = phi ptr [ %1482, %1478 ], [ %21, %17 ]
  %1487 = phi ptr [ %1474, %1478 ], [ %23, %17 ]
  %1488 = phi ptr [ %1473, %1478 ], [ %1, %17 ]
  %1489 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %1490 = load i32, ptr %1489, align 8, !tbaa !35
  %1491 = icmp eq i32 %1490, 2
  br i1 %1491, label %1494, label %1492

1492:                                             ; preds = %1485
  %1493 = ptrtoint ptr %19 to i64
  br label %1510

1494:                                             ; preds = %1485
  %1495 = ptrtoint ptr %1487 to i64
  %1496 = ptrtoint ptr %1486 to i64
  %1497 = sub i64 %1495, %1496
  %1498 = ptrtoint ptr %19 to i64
  %1499 = ptrtoint ptr %1488 to i64
  %1500 = sub i64 %1498, %1499
  %1501 = icmp ugt i64 %1497, %1500
  br i1 %1501, label %1530, label %1502

1502:                                             ; preds = %1494
  %1503 = icmp eq ptr %1488, null
  br i1 %1503, label %1506, label %1504

1504:                                             ; preds = %1502
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1488, ptr align 1 %1486, i64 %1497, i1 false)
  %1505 = getelementptr inbounds nuw i8, ptr %1488, i64 %1497
  br label %1506

1506:                                             ; preds = %1504, %1502
  %1507 = phi ptr [ %1505, %1504 ], [ null, %1502 ]
  %1508 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %1509 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %1489, align 8, !tbaa !35
  br label %1510

1510:                                             ; preds = %1506, %1492
  %1511 = phi i64 [ %1493, %1492 ], [ %1498, %1506 ]
  %1512 = phi ptr [ %1486, %1492 ], [ %1508, %1506 ]
  %1513 = phi ptr [ %1487, %1492 ], [ %1509, %1506 ]
  %1514 = phi ptr [ %1488, %1492 ], [ %1507, %1506 ]
  %1515 = ptrtoint ptr %1513 to i64
  %1516 = ptrtoint ptr %1512 to i64
  %1517 = sub i64 %1515, %1516
  %1518 = ptrtoint ptr %1514 to i64
  %1519 = sub i64 %1511, %1518
  %1520 = icmp ugt i64 %1517, %1519
  br i1 %1520, label %1530, label %1521

1521:                                             ; preds = %1510
  %1522 = icmp eq ptr %1514, null
  br i1 %1522, label %1526, label %1523

1523:                                             ; preds = %1521
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1514, ptr align 1 %1512, i64 %1517, i1 false)
  %1524 = getelementptr inbounds nuw i8, ptr %1514, i64 %1517
  %1525 = ptrtoint ptr %1524 to i64
  br label %1526

1526:                                             ; preds = %1523, %1521
  %1527 = phi i64 [ 0, %1521 ], [ %1525, %1523 ]
  %1528 = ptrtoint ptr %1 to i64
  %1529 = sub i64 %1527, %1528
  br label %1530

1530:                                             ; preds = %1483, %1494, %1510, %1526
  %1531 = phi i64 [ %1529, %1526 ], [ %1484, %1483 ], [ -70, %1510 ], [ -70, %1494 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %1532

1532:                                             ; preds = %1530, %15
  %1533 = phi i64 [ %16, %15 ], [ %1531, %1530 ]
  ret i64 %1533
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #8 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.seqState_t, align 8
  %10 = getelementptr i8, ptr %0, i64 30180
  %11 = load i32, ptr %10, align 4, !tbaa !31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc i64 @ZSTD_decompressSequences_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %731

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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  store ptr %28, ptr %8, align 8, !tbaa !40
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  %30 = load i64, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = icmp eq i32 %5, 0
  br i1 %38, label %710, label %39

39:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #18
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %40, align 4, !tbaa !63
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %43 = load i32, ptr %41, align 4, !tbaa !30
  %44 = zext i32 %43 to i64
  store i64 %44, ptr %42, align 8, !tbaa !46
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %46 = load i32, ptr %45, align 4, !tbaa !30
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !46
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %50 = load i32, ptr %49, align 4, !tbaa !30
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %51, ptr %52, align 8, !tbaa !46
  %53 = icmp eq i64 %4, 0
  br i1 %53, label %708, label %54

54:                                               ; preds = %39
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %55, align 8, !tbaa !76
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %57 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %56, ptr %57, align 8, !tbaa !78
  %58 = icmp ugt i64 %4, 7
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = add nsw i64 %4, -8
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %61, ptr %62, align 8, !tbaa !79
  %63 = load i64, ptr %61, align 1
  store i64 %63, ptr %9, align 8, !tbaa !80
  %64 = icmp ult i64 %63, 72057594037927936
  br i1 %64, label %708, label %123

65:                                               ; preds = %54
  %66 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %66, align 8, !tbaa !79
  %67 = load i8, ptr %3, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  store i64 %68, ptr %9, align 8, !tbaa !80
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
  store i64 %109, ptr %9, align 8, !tbaa !80
  br label %110

110:                                              ; preds = %103, %65
  %111 = phi i64 [ %109, %103 ], [ %68, %65 ]
  %112 = getelementptr i8, ptr %3, i64 %4
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = load i8, ptr %113, align 1, !tbaa !9
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %708, label %116

116:                                              ; preds = %110
  %117 = zext i8 %114 to i32
  %118 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %117, i1 true)
  %119 = trunc nuw nsw i64 %4 to i32
  %120 = shl nuw nsw i32 %119, 3
  %121 = sub nsw i32 %118, %120
  %122 = add nsw i32 %121, 41
  br label %130

123:                                              ; preds = %59
  %124 = lshr i64 %63, 56
  %125 = trunc nuw nsw i64 %124 to i32
  %126 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %125, i1 true)
  %127 = xor i32 %126, 31
  %128 = sub nuw nsw i32 8, %127
  %129 = icmp ult i64 %4, -119
  br i1 %129, label %130, label %708

130:                                              ; preds = %123, %116
  %131 = phi ptr [ %3, %116 ], [ %61, %123 ]
  %132 = phi i64 [ 0, %116 ], [ %60, %123 ]
  %133 = phi i32 [ %122, %116 ], [ %128, %123 ]
  %134 = phi i64 [ %111, %116 ], [ %63, %123 ]
  %135 = getelementptr inbounds i8, ptr %3, i64 %132
  %136 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %137 = load ptr, ptr %0, align 8, !tbaa !81
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 4
  %139 = load i32, ptr %138, align 4, !tbaa !64
  %140 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %141 = add i32 %139, %133
  %142 = sub i32 0, %141
  %143 = and i32 %142, 63
  %144 = zext nneg i32 %143 to i64
  %145 = lshr i64 %134, %144
  %146 = zext nneg i32 %139 to i64
  %147 = shl nsw i64 -1, %146
  %148 = xor i64 %147, -1
  %149 = and i64 %145, %148
  store i64 %149, ptr %136, align 8, !tbaa !82
  %150 = icmp ugt i32 %141, 64
  %151 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %150, label %152, label %153, !prof !53

152:                                              ; preds = %130
  store ptr @BIT_reloadDStream.zeroFilled, ptr %151, align 8, !tbaa !79
  br label %175

153:                                              ; preds = %130
  %154 = icmp slt i64 %132, 8
  br i1 %154, label %162, label %155

155:                                              ; preds = %153
  %156 = lshr i32 %141, 3
  %157 = zext nneg i32 %156 to i64
  %158 = sub nsw i64 0, %157
  %159 = getelementptr inbounds i8, ptr %135, i64 %158
  store ptr %159, ptr %151, align 8, !tbaa !79
  %160 = and i32 %141, 7
  store i32 %160, ptr %140, align 8, !tbaa !84
  %161 = load i64, ptr %159, align 1, !tbaa !46
  store i64 %161, ptr %9, align 8, !tbaa !80
  br label %175

162:                                              ; preds = %153
  %163 = icmp eq i64 %132, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %162
  %165 = lshr i32 %141, 3
  %166 = zext nneg i32 %165 to i64
  %167 = tail call i64 @llvm.smin.i64(i64 %132, i64 %166)
  %168 = trunc i64 %167 to i32
  %169 = and i64 %167, 4294967295
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %135, i64 %170
  store ptr %171, ptr %151, align 8, !tbaa !79
  %172 = shl i32 %168, 3
  %173 = sub i32 %141, %172
  store i32 %173, ptr %140, align 8, !tbaa !84
  %174 = load i64, ptr %171, align 1, !tbaa !46
  store i64 %174, ptr %9, align 8, !tbaa !80
  br label %175

175:                                              ; preds = %164, %162, %155, %152
  %176 = phi ptr [ @BIT_reloadDStream.zeroFilled, %152 ], [ %159, %155 ], [ %131, %162 ], [ %171, %164 ]
  %177 = phi ptr [ @BIT_reloadDStream.zeroFilled, %152 ], [ %159, %155 ], [ %3, %162 ], [ %171, %164 ]
  %178 = phi i32 [ %141, %152 ], [ %160, %155 ], [ %141, %162 ], [ %173, %164 ]
  %179 = phi i64 [ %134, %152 ], [ %161, %155 ], [ %134, %162 ], [ %174, %164 ]
  %180 = getelementptr inbounds nuw i8, ptr %137, i64 8
  %181 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %180, ptr %181, align 8, !tbaa !85
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %184 = load ptr, ptr %183, align 8, !tbaa !72
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %186 = load i32, ptr %185, align 4, !tbaa !64
  %187 = add i32 %186, %178
  %188 = sub i32 0, %187
  %189 = and i32 %188, 63
  %190 = zext nneg i32 %189 to i64
  %191 = lshr i64 %179, %190
  %192 = zext nneg i32 %186 to i64
  %193 = shl nsw i64 -1, %192
  %194 = xor i64 %193, -1
  %195 = and i64 %191, %194
  store i64 %195, ptr %182, align 8, !tbaa !82
  %196 = icmp ugt i32 %187, 64
  br i1 %196, label %197, label %198, !prof !53

197:                                              ; preds = %175
  store ptr @BIT_reloadDStream.zeroFilled, ptr %151, align 8, !tbaa !79
  br label %226

198:                                              ; preds = %175
  %199 = icmp ult ptr %177, %56
  br i1 %199, label %207, label %200

200:                                              ; preds = %198
  %201 = lshr i32 %187, 3
  %202 = zext nneg i32 %201 to i64
  %203 = sub nsw i64 0, %202
  %204 = getelementptr inbounds i8, ptr %177, i64 %203
  store ptr %204, ptr %151, align 8, !tbaa !79
  %205 = and i32 %187, 7
  %206 = load i64, ptr %204, align 1, !tbaa !46
  store i64 %206, ptr %9, align 8, !tbaa !80
  br label %226

207:                                              ; preds = %198
  %208 = icmp eq ptr %177, %3
  br i1 %208, label %226, label %209

209:                                              ; preds = %207
  %210 = lshr i32 %187, 3
  %211 = zext nneg i32 %210 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, ptr %177, i64 %212
  %214 = icmp ult ptr %213, %3
  %215 = ptrtoint ptr %177 to i64
  %216 = ptrtoint ptr %3 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = select i1 %214, i32 %218, i32 %210
  %220 = zext i32 %219 to i64
  %221 = sub nsw i64 0, %220
  %222 = getelementptr inbounds i8, ptr %177, i64 %221
  store ptr %222, ptr %151, align 8, !tbaa !79
  %223 = shl i32 %219, 3
  %224 = sub i32 %187, %223
  %225 = load i64, ptr %222, align 1, !tbaa !46
  store i64 %225, ptr %9, align 8, !tbaa !80
  br label %226

226:                                              ; preds = %209, %207, %200, %197
  %227 = phi ptr [ @BIT_reloadDStream.zeroFilled, %197 ], [ %204, %200 ], [ %176, %207 ], [ %222, %209 ]
  %228 = phi ptr [ @BIT_reloadDStream.zeroFilled, %197 ], [ %204, %200 ], [ %177, %207 ], [ %222, %209 ]
  %229 = phi i32 [ %187, %197 ], [ %205, %200 ], [ %187, %207 ], [ %224, %209 ]
  %230 = phi i64 [ %179, %197 ], [ %206, %200 ], [ %179, %207 ], [ %225, %209 ]
  %231 = getelementptr inbounds nuw i8, ptr %184, i64 8
  %232 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %231, ptr %232, align 8, !tbaa !85
  %233 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !86
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 4
  %237 = load i32, ptr %236, align 4, !tbaa !64
  %238 = add i32 %237, %229
  %239 = sub i32 0, %238
  %240 = and i32 %239, 63
  %241 = zext nneg i32 %240 to i64
  %242 = lshr i64 %230, %241
  %243 = zext nneg i32 %237 to i64
  %244 = shl nsw i64 -1, %243
  %245 = xor i64 %244, -1
  %246 = and i64 %242, %245
  store i32 %238, ptr %140, align 8, !tbaa !84
  store i64 %246, ptr %233, align 8, !tbaa !82
  %247 = icmp ugt i32 %238, 64
  br i1 %247, label %248, label %249, !prof !53

248:                                              ; preds = %226
  store ptr @BIT_reloadDStream.zeroFilled, ptr %151, align 8, !tbaa !79
  br label %277

249:                                              ; preds = %226
  %250 = icmp ult ptr %228, %56
  br i1 %250, label %258, label %251

251:                                              ; preds = %249
  %252 = lshr i32 %238, 3
  %253 = zext nneg i32 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds i8, ptr %228, i64 %254
  store ptr %255, ptr %151, align 8, !tbaa !79
  %256 = and i32 %238, 7
  store i32 %256, ptr %140, align 8, !tbaa !84
  %257 = load i64, ptr %255, align 1, !tbaa !46
  store i64 %257, ptr %9, align 8, !tbaa !80
  br label %277

258:                                              ; preds = %249
  %259 = icmp eq ptr %228, %3
  br i1 %259, label %277, label %260

260:                                              ; preds = %258
  %261 = lshr i32 %238, 3
  %262 = zext nneg i32 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %228, i64 %263
  %265 = icmp ult ptr %264, %3
  %266 = ptrtoint ptr %228 to i64
  %267 = ptrtoint ptr %3 to i64
  %268 = sub i64 %266, %267
  %269 = trunc i64 %268 to i32
  %270 = select i1 %265, i32 %269, i32 %261
  %271 = zext i32 %270 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds i8, ptr %228, i64 %272
  store ptr %273, ptr %151, align 8, !tbaa !79
  %274 = shl i32 %270, 3
  %275 = sub i32 %238, %274
  store i32 %275, ptr %140, align 8, !tbaa !84
  %276 = load i64, ptr %273, align 1, !tbaa !46
  store i64 %276, ptr %9, align 8, !tbaa !80
  br label %277

277:                                              ; preds = %260, %258, %251, %248
  %278 = phi ptr [ %273, %260 ], [ %227, %258 ], [ %255, %251 ], [ @BIT_reloadDStream.zeroFilled, %248 ]
  %279 = phi i32 [ %275, %260 ], [ %238, %258 ], [ %256, %251 ], [ %238, %248 ]
  %280 = phi i64 [ %276, %260 ], [ %230, %258 ], [ %257, %251 ], [ %230, %248 ]
  %281 = getelementptr inbounds nuw i8, ptr %235, i64 8
  %282 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %281, ptr %282, align 8, !tbaa !85
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !154
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !155
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !156
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !157
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !158
  %283 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %284 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %285 = getelementptr inbounds i8, ptr %26, i64 -32
  %286 = ptrtoint ptr %33 to i64
  %287 = ptrtoint ptr %35 to i64
  %288 = ptrtoint ptr %3 to i64
  %289 = add i64 %286, 16
  br label %290

290:                                              ; preds = %696, %277
  %291 = phi ptr [ %278, %277 ], [ %510, %696 ]
  %292 = phi i32 [ %279, %277 ], [ %511, %696 ]
  %293 = phi i64 [ %280, %277 ], [ %512, %696 ]
  %294 = phi i64 [ %51, %277 ], [ %382, %696 ]
  %295 = phi i64 [ %47, %277 ], [ %380, %696 ]
  %296 = phi i64 [ %44, %277 ], [ %381, %696 ]
  %297 = phi i64 [ %246, %277 ], [ %513, %696 ]
  %298 = phi i64 [ %195, %277 ], [ %514, %696 ]
  %299 = phi i64 [ %149, %277 ], [ %515, %696 ]
  %300 = phi i32 [ %5, %277 ], [ %697, %696 ]
  %301 = phi ptr [ %1, %277 ], [ %691, %696 ]
  %302 = icmp eq i32 %300, 1
  %303 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %180, i64 %299
  %304 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %281, i64 %297
  %305 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %231, i64 %298
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 4
  %307 = load i32, ptr %306, align 4, !tbaa !43, !noalias !159
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %303, i64 4
  %310 = load i32, ptr %309, align 4, !tbaa !43, !noalias !159
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds nuw i8, ptr %305, i64 4
  %313 = load i32, ptr %312, align 4, !tbaa !43, !noalias !159
  %314 = getelementptr inbounds nuw i8, ptr %303, i64 2
  %315 = load i8, ptr %314, align 2, !tbaa !59, !noalias !159
  %316 = getelementptr inbounds nuw i8, ptr %304, i64 2
  %317 = load i8, ptr %316, align 2, !tbaa !59, !noalias !159
  %318 = getelementptr inbounds nuw i8, ptr %305, i64 2
  %319 = load i8, ptr %318, align 2, !tbaa !59, !noalias !159
  %320 = zext i8 %315 to i32
  %321 = zext i8 %317 to i32
  %322 = add i8 %317, %315
  %323 = add i8 %322, %319
  %324 = load i16, ptr %303, align 4, !tbaa !58, !noalias !159
  %325 = load i16, ptr %304, align 4, !tbaa !58, !noalias !159
  %326 = load i16, ptr %305, align 4, !tbaa !58, !noalias !159
  %327 = getelementptr inbounds nuw i8, ptr %303, i64 3
  %328 = load i8, ptr %327, align 1, !tbaa !57, !noalias !159
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds nuw i8, ptr %304, i64 3
  %331 = load i8, ptr %330, align 1, !tbaa !57, !noalias !159
  %332 = zext i8 %331 to i32
  %333 = getelementptr inbounds nuw i8, ptr %305, i64 3
  %334 = load i8, ptr %333, align 1, !tbaa !57, !noalias !159
  %335 = zext i8 %334 to i32
  %336 = icmp ugt i8 %319, 1
  br i1 %336, label %337, label %349

337:                                              ; preds = %290
  %338 = zext i8 %319 to i32
  %339 = and i32 %292, 63
  %340 = zext nneg i32 %339 to i64
  %341 = shl i64 %293, %340
  %342 = sub nsw i32 0, %338
  %343 = and i32 %342, 63
  %344 = zext nneg i32 %343 to i64
  %345 = lshr i64 %341, %344
  %346 = add i32 %292, %338
  store i32 %346, ptr %140, align 8, !tbaa !84, !noalias !159
  %347 = zext i32 %313 to i64
  %348 = add i64 %345, %347
  store i64 %295, ptr %52, align 8, !tbaa !46, !noalias !159
  br label %378

349:                                              ; preds = %290
  %350 = icmp eq i32 %310, 0
  %351 = icmp eq i8 %319, 0
  br i1 %351, label %352, label %355, !prof !91

352:                                              ; preds = %349
  %353 = select i1 %350, i64 %295, i64 %296
  %354 = select i1 %350, i64 %296, i64 %295
  br label %378

355:                                              ; preds = %349
  %356 = zext i1 %350 to i32
  %357 = add i32 %313, %356
  %358 = zext i32 %357 to i64
  %359 = and i32 %292, 63
  %360 = zext nneg i32 %359 to i64
  %361 = shl i64 %293, %360
  %362 = lshr i64 %361, 63
  %363 = add i32 %292, 1
  store i32 %363, ptr %140, align 8, !tbaa !84, !noalias !159
  %364 = add nuw nsw i64 %362, %358
  %365 = icmp eq i64 %364, 3
  br i1 %365, label %366, label %370

366:                                              ; preds = %355
  %367 = add i64 %296, -1
  %368 = icmp eq i64 %367, 0
  %369 = select i1 %368, i64 -1, i64 %367
  br label %376

370:                                              ; preds = %355
  %371 = getelementptr inbounds nuw [3 x i64], ptr %42, i64 0, i64 %364
  %372 = load i64, ptr %371, align 8, !tbaa !46, !noalias !159
  %373 = icmp eq i64 %372, 0
  %374 = select i1 %373, i64 -1, i64 %372
  %375 = icmp eq i64 %364, 1
  br i1 %375, label %378, label %376

376:                                              ; preds = %370, %366
  %377 = phi i64 [ %369, %366 ], [ %374, %370 ]
  store i64 %295, ptr %52, align 8, !tbaa !46, !noalias !159
  br label %378

378:                                              ; preds = %376, %370, %352, %337
  %379 = phi i32 [ %292, %352 ], [ %346, %337 ], [ %363, %376 ], [ %363, %370 ]
  %380 = phi i64 [ %354, %352 ], [ %296, %337 ], [ %296, %376 ], [ %296, %370 ]
  %381 = phi i64 [ %353, %352 ], [ %348, %337 ], [ %377, %376 ], [ %374, %370 ]
  %382 = phi i64 [ %294, %352 ], [ %295, %337 ], [ %295, %376 ], [ %294, %370 ]
  store i64 %380, ptr %48, align 8, !tbaa !46, !noalias !159
  store i64 %381, ptr %42, align 8, !tbaa !46, !noalias !159
  %383 = icmp eq i8 %317, 0
  br i1 %383, label %394, label %384

384:                                              ; preds = %378
  %385 = and i32 %379, 63
  %386 = zext nneg i32 %385 to i64
  %387 = shl i64 %293, %386
  %388 = sub nsw i32 0, %321
  %389 = and i32 %388, 63
  %390 = zext nneg i32 %389 to i64
  %391 = lshr i64 %387, %390
  %392 = add i32 %379, %321
  store i32 %392, ptr %140, align 8, !tbaa !84, !noalias !159
  %393 = add i64 %391, %308
  br label %394

394:                                              ; preds = %384, %378
  %395 = phi i32 [ %379, %378 ], [ %392, %384 ]
  %396 = phi i64 [ %308, %378 ], [ %393, %384 ]
  %397 = icmp ugt i8 %323, 30
  br i1 %397, label %398, label %428, !prof !53

398:                                              ; preds = %394
  %399 = icmp ugt i32 %395, 64
  br i1 %399, label %400, label %401, !prof !53

400:                                              ; preds = %398
  store ptr @BIT_reloadDStream.zeroFilled, ptr %151, align 8, !tbaa !79, !noalias !159
  br label %428

401:                                              ; preds = %398
  %402 = icmp ult ptr %291, %56
  br i1 %402, label %410, label %403

403:                                              ; preds = %401
  %404 = lshr i32 %395, 3
  %405 = zext nneg i32 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %291, i64 %406
  store ptr %407, ptr %151, align 8, !tbaa !79, !noalias !159
  %408 = and i32 %395, 7
  store i32 %408, ptr %140, align 8, !tbaa !84, !noalias !159
  %409 = load i64, ptr %407, align 1, !tbaa !46, !noalias !159
  store i64 %409, ptr %9, align 8, !tbaa !80, !noalias !159
  br label %428

410:                                              ; preds = %401
  %411 = icmp eq ptr %291, %3
  br i1 %411, label %428, label %412

412:                                              ; preds = %410
  %413 = lshr i32 %395, 3
  %414 = zext nneg i32 %413 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %291, i64 %415
  %417 = icmp ult ptr %416, %3
  %418 = ptrtoint ptr %291 to i64
  %419 = sub i64 %418, %288
  %420 = trunc i64 %419 to i32
  %421 = select i1 %417, i32 %420, i32 %413
  %422 = zext i32 %421 to i64
  %423 = sub nsw i64 0, %422
  %424 = getelementptr inbounds i8, ptr %291, i64 %423
  store ptr %424, ptr %151, align 8, !tbaa !79, !noalias !159
  %425 = shl i32 %421, 3
  %426 = sub i32 %395, %425
  store i32 %426, ptr %140, align 8, !tbaa !84, !noalias !159
  %427 = load i64, ptr %424, align 1, !tbaa !46, !noalias !159
  store i64 %427, ptr %9, align 8, !tbaa !80, !noalias !159
  br label %428

428:                                              ; preds = %412, %410, %403, %400, %394
  %429 = phi ptr [ %424, %412 ], [ %291, %410 ], [ %407, %403 ], [ @BIT_reloadDStream.zeroFilled, %400 ], [ %291, %394 ]
  %430 = phi i32 [ %426, %412 ], [ %395, %410 ], [ %408, %403 ], [ %395, %400 ], [ %395, %394 ]
  %431 = phi i64 [ %427, %412 ], [ %293, %410 ], [ %409, %403 ], [ %293, %400 ], [ %293, %394 ]
  %432 = icmp eq i8 %315, 0
  br i1 %432, label %443, label %433

433:                                              ; preds = %428
  %434 = and i32 %430, 63
  %435 = zext nneg i32 %434 to i64
  %436 = shl i64 %431, %435
  %437 = sub nsw i32 0, %320
  %438 = and i32 %437, 63
  %439 = zext nneg i32 %438 to i64
  %440 = lshr i64 %436, %439
  %441 = add i32 %430, %320
  store i32 %441, ptr %140, align 8, !tbaa !84, !noalias !159
  %442 = add i64 %440, %311
  br label %443

443:                                              ; preds = %433, %428
  %444 = phi i32 [ %430, %428 ], [ %441, %433 ]
  %445 = phi i64 [ %311, %428 ], [ %442, %433 ]
  br i1 %302, label %509, label %446

446:                                              ; preds = %443
  %447 = add i32 %444, %329
  %448 = sub i32 0, %447
  %449 = and i32 %448, 63
  %450 = zext nneg i32 %449 to i64
  %451 = lshr i64 %431, %450
  %452 = zext nneg i8 %328 to i64
  %453 = shl nsw i64 -1, %452
  %454 = xor i64 %453, -1
  %455 = and i64 %451, %454
  %456 = zext i16 %324 to i64
  %457 = add nuw i64 %455, %456
  store i64 %457, ptr %136, align 8, !tbaa !82, !noalias !159
  %458 = add i32 %447, %332
  %459 = sub i32 0, %458
  %460 = and i32 %459, 63
  %461 = zext nneg i32 %460 to i64
  %462 = lshr i64 %431, %461
  %463 = zext nneg i8 %331 to i64
  %464 = shl nsw i64 -1, %463
  %465 = xor i64 %464, -1
  %466 = and i64 %462, %465
  %467 = zext i16 %325 to i64
  %468 = add nuw i64 %466, %467
  store i64 %468, ptr %233, align 8, !tbaa !82, !noalias !159
  %469 = add i32 %458, %335
  %470 = sub i32 0, %469
  %471 = and i32 %470, 63
  %472 = zext nneg i32 %471 to i64
  %473 = lshr i64 %431, %472
  %474 = zext nneg i8 %334 to i64
  %475 = shl nsw i64 -1, %474
  %476 = xor i64 %475, -1
  %477 = and i64 %473, %476
  store i32 %469, ptr %140, align 8, !tbaa !84, !noalias !159
  %478 = zext i16 %326 to i64
  %479 = add nuw i64 %477, %478
  store i64 %479, ptr %182, align 8, !tbaa !82, !noalias !159
  %480 = icmp ugt i32 %469, 64
  br i1 %480, label %481, label %482, !prof !53

481:                                              ; preds = %446
  store ptr @BIT_reloadDStream.zeroFilled, ptr %151, align 8, !tbaa !79, !noalias !159
  br label %509

482:                                              ; preds = %446
  %483 = icmp ult ptr %429, %56
  br i1 %483, label %491, label %484

484:                                              ; preds = %482
  %485 = lshr i32 %469, 3
  %486 = zext nneg i32 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %429, i64 %487
  store ptr %488, ptr %151, align 8, !tbaa !79, !noalias !159
  %489 = and i32 %469, 7
  store i32 %489, ptr %140, align 8, !tbaa !84, !noalias !159
  %490 = load i64, ptr %488, align 1, !tbaa !46, !noalias !159
  store i64 %490, ptr %9, align 8, !tbaa !80, !noalias !159
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
  %500 = sub i64 %499, %288
  %501 = trunc i64 %500 to i32
  %502 = select i1 %498, i32 %501, i32 %494
  %503 = zext i32 %502 to i64
  %504 = sub nsw i64 0, %503
  %505 = getelementptr inbounds i8, ptr %429, i64 %504
  store ptr %505, ptr %151, align 8, !tbaa !79, !noalias !159
  %506 = shl i32 %502, 3
  %507 = sub i32 %469, %506
  store i32 %507, ptr %140, align 8, !tbaa !84, !noalias !159
  %508 = load i64, ptr %505, align 1, !tbaa !46, !noalias !159
  store i64 %508, ptr %9, align 8, !tbaa !80, !noalias !159
  br label %509

509:                                              ; preds = %493, %491, %484, %481, %443
  %510 = phi ptr [ %429, %491 ], [ @BIT_reloadDStream.zeroFilled, %481 ], [ %488, %484 ], [ %505, %493 ], [ %429, %443 ]
  %511 = phi i32 [ %469, %491 ], [ %469, %481 ], [ %489, %484 ], [ %507, %493 ], [ %444, %443 ]
  %512 = phi i64 [ %431, %491 ], [ %431, %481 ], [ %490, %484 ], [ %508, %493 ], [ %431, %443 ]
  %513 = phi i64 [ %468, %491 ], [ %468, %481 ], [ %468, %484 ], [ %468, %493 ], [ %297, %443 ]
  %514 = phi i64 [ %479, %491 ], [ %479, %481 ], [ %479, %484 ], [ %479, %493 ], [ %298, %443 ]
  %515 = phi i64 [ %457, %491 ], [ %457, %481 ], [ %457, %484 ], [ %457, %493 ], [ %299, %443 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %445, ptr %7, align 8
  store i64 %396, ptr %283, align 8
  store i64 %381, ptr %284, align 8
  %516 = getelementptr i8, ptr %301, i64 %445
  %517 = add i64 %445, %396
  %518 = load ptr, ptr %8, align 8, !tbaa !40
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 %445
  %520 = sub i64 0, %381
  %521 = getelementptr inbounds i8, ptr %516, i64 %520
  %522 = icmp ugt ptr %519, %31
  %523 = getelementptr inbounds nuw i8, ptr %301, i64 %517
  %524 = icmp ugt ptr %523, %285
  %525 = select i1 %522, i1 true, i1 %524
  br i1 %525, label %529, label %526, !prof !105

526:                                              ; preds = %509
  %527 = load <2 x i64>, ptr %518, align 1, !tbaa !9
  store <2 x i64> %527, ptr %301, align 1, !tbaa !9
  %528 = icmp ugt i64 %445, 16
  br i1 %528, label %531, label %549, !prof !53

529:                                              ; preds = %509
  %530 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %301, ptr noundef %26, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef %37)
  br label %688

531:                                              ; preds = %526
  %532 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 16
  %534 = add i64 %445, -16
  %535 = load <2 x i64>, ptr %533, align 1, !tbaa !9
  store <2 x i64> %535, ptr %532, align 1, !tbaa !9
  %536 = icmp ult i64 %534, 17
  br i1 %536, label %549, label %537

537:                                              ; preds = %531
  %538 = getelementptr inbounds nuw i8, ptr %301, i64 32
  br label %539

539:                                              ; preds = %539, %537
  %540 = phi ptr [ %538, %537 ], [ %547, %539 ]
  %541 = phi ptr [ %533, %537 ], [ %545, %539 ]
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 16
  %543 = load <2 x i64>, ptr %542, align 1, !tbaa !9
  store <2 x i64> %543, ptr %540, align 1, !tbaa !9
  %544 = getelementptr inbounds nuw i8, ptr %540, i64 16
  %545 = getelementptr inbounds nuw i8, ptr %541, i64 32
  %546 = load <2 x i64>, ptr %545, align 1, !tbaa !9
  store <2 x i64> %546, ptr %544, align 1, !tbaa !9
  %547 = getelementptr inbounds nuw i8, ptr %540, i64 32
  %548 = icmp ult ptr %547, %516
  br i1 %548, label %539, label %549, !llvm.loop !101

549:                                              ; preds = %539, %531, %526
  store ptr %519, ptr %8, align 8, !tbaa !40
  %550 = ptrtoint ptr %516 to i64
  %551 = sub i64 %550, %286
  %552 = icmp ugt i64 %381, %551
  br i1 %552, label %553, label %567

553:                                              ; preds = %549
  %554 = sub i64 %550, %287
  %555 = icmp ugt i64 %381, %554
  br i1 %555, label %556, label %557, !prof !53

556:                                              ; preds = %553
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %708

557:                                              ; preds = %553
  %558 = ptrtoint ptr %521 to i64
  %559 = sub i64 %558, %286
  %560 = getelementptr inbounds i8, ptr %37, i64 %559
  %561 = add nsw i64 %559, %396
  %562 = icmp sgt i64 %561, 0
  br i1 %562, label %564, label %563

563:                                              ; preds = %557
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %516, ptr align 1 %560, i64 %396, i1 false)
  br label %688

564:                                              ; preds = %557
  %565 = sub nsw i64 0, %559
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %516, ptr align 1 %560, i64 %565, i1 false)
  %566 = getelementptr inbounds nuw i8, ptr %516, i64 %565
  store i64 %561, ptr %283, align 8, !tbaa !131
  br label %567

567:                                              ; preds = %564, %549
  %568 = phi ptr [ %33, %564 ], [ %521, %549 ]
  %569 = phi ptr [ %566, %564 ], [ %516, %549 ]
  %570 = phi i64 [ %561, %564 ], [ %396, %549 ]
  %571 = icmp ugt i64 %381, 15
  br i1 %571, label %572, label %588, !prof !91

572:                                              ; preds = %567
  %573 = getelementptr inbounds nuw i8, ptr %569, i64 %570
  %574 = load <2 x i64>, ptr %568, align 1, !tbaa !9
  store <2 x i64> %574, ptr %569, align 1, !tbaa !9
  %575 = icmp ult i64 %570, 17
  br i1 %575, label %688, label %576

576:                                              ; preds = %572
  %577 = getelementptr inbounds nuw i8, ptr %569, i64 16
  br label %578

578:                                              ; preds = %578, %576
  %579 = phi ptr [ %577, %576 ], [ %586, %578 ]
  %580 = phi ptr [ %568, %576 ], [ %584, %578 ]
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 16
  %582 = load <2 x i64>, ptr %581, align 1, !tbaa !9
  store <2 x i64> %582, ptr %579, align 1, !tbaa !9
  %583 = getelementptr inbounds nuw i8, ptr %579, i64 16
  %584 = getelementptr inbounds nuw i8, ptr %580, i64 32
  %585 = load <2 x i64>, ptr %584, align 1, !tbaa !9
  store <2 x i64> %585, ptr %583, align 1, !tbaa !9
  %586 = getelementptr inbounds nuw i8, ptr %579, i64 32
  %587 = icmp ult ptr %586, %573
  br i1 %587, label %578, label %688, !llvm.loop !101

588:                                              ; preds = %567
  %589 = icmp samesign ult i64 %381, 8
  br i1 %589, label %590, label %612

590:                                              ; preds = %588
  %591 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %381
  %592 = load i32, ptr %591, align 4, !tbaa !30
  %593 = load i8, ptr %568, align 1, !tbaa !9
  store i8 %593, ptr %569, align 1, !tbaa !9
  %594 = getelementptr inbounds nuw i8, ptr %568, i64 1
  %595 = load i8, ptr %594, align 1, !tbaa !9
  %596 = getelementptr inbounds nuw i8, ptr %569, i64 1
  store i8 %595, ptr %596, align 1, !tbaa !9
  %597 = getelementptr inbounds nuw i8, ptr %568, i64 2
  %598 = load i8, ptr %597, align 1, !tbaa !9
  %599 = getelementptr inbounds nuw i8, ptr %569, i64 2
  store i8 %598, ptr %599, align 1, !tbaa !9
  %600 = getelementptr inbounds nuw i8, ptr %568, i64 3
  %601 = load i8, ptr %600, align 1, !tbaa !9
  %602 = getelementptr inbounds nuw i8, ptr %569, i64 3
  store i8 %601, ptr %602, align 1, !tbaa !9
  %603 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %381
  %604 = load i32, ptr %603, align 4, !tbaa !30
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds nuw i8, ptr %568, i64 %605
  %607 = getelementptr inbounds nuw i8, ptr %569, i64 4
  %608 = load i32, ptr %606, align 1
  store i32 %608, ptr %607, align 1
  %609 = sext i32 %592 to i64
  %610 = sub nsw i64 0, %609
  %611 = getelementptr inbounds i8, ptr %606, i64 %610
  br label %614

612:                                              ; preds = %588
  %613 = load i64, ptr %568, align 1
  store i64 %613, ptr %569, align 1
  br label %614

614:                                              ; preds = %612, %590
  %615 = phi ptr [ %611, %590 ], [ %568, %612 ]
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 8
  %617 = getelementptr inbounds nuw i8, ptr %569, i64 8
  %618 = icmp ugt i64 %570, 8
  br i1 %618, label %619, label %688

619:                                              ; preds = %614
  %620 = ptrtoint ptr %617 to i64
  %621 = ptrtoint ptr %616 to i64
  %622 = sub i64 %620, %621
  %623 = getelementptr i8, ptr %569, i64 %570
  %624 = icmp slt i64 %622, 16
  br i1 %624, label %625, label %672

625:                                              ; preds = %619
  %626 = add i64 %396, %286
  %627 = tail call i64 @llvm.umin.i64(i64 %381, i64 %551)
  %628 = add i64 %626, %627
  %629 = tail call i64 @llvm.umax.i64(i64 %381, i64 %551)
  %630 = add i64 %628, %629
  %631 = sub i64 %630, %381
  %632 = add i64 %289, %629
  %633 = tail call i64 @llvm.umax.i64(i64 %631, i64 %632)
  %634 = add i64 %633, -9
  %635 = add i64 %629, %286
  %636 = sub i64 %634, %635
  %637 = lshr i64 %636, 3
  %638 = add nuw nsw i64 %637, 1
  %639 = icmp ult i64 %636, 24
  %640 = icmp ult i64 %622, 32
  %641 = or i1 %639, %640
  br i1 %641, label %662, label %642

642:                                              ; preds = %625
  %643 = and i64 %638, 4611686018427387900
  %644 = shl i64 %643, 3
  %645 = getelementptr i8, ptr %617, i64 %644
  %646 = shl i64 %643, 3
  %647 = getelementptr i8, ptr %616, i64 %646
  br label %648

648:                                              ; preds = %648, %642
  %649 = phi i64 [ 0, %642 ], [ %658, %648 ]
  %650 = shl i64 %649, 3
  %651 = getelementptr i8, ptr %617, i64 %650
  %652 = shl i64 %649, 3
  %653 = getelementptr i8, ptr %616, i64 %652
  %654 = getelementptr i8, ptr %653, i64 16
  %655 = load <2 x i64>, ptr %653, align 1
  %656 = load <2 x i64>, ptr %654, align 1
  %657 = getelementptr i8, ptr %651, i64 16
  store <2 x i64> %655, ptr %651, align 1
  store <2 x i64> %656, ptr %657, align 1
  %658 = add nuw i64 %649, 4
  %659 = icmp eq i64 %658, %643
  br i1 %659, label %660, label %648, !llvm.loop !162

660:                                              ; preds = %648
  %661 = icmp eq i64 %638, %643
  br i1 %661, label %688, label %662

662:                                              ; preds = %625, %660
  %663 = phi ptr [ %617, %625 ], [ %645, %660 ]
  %664 = phi ptr [ %616, %625 ], [ %647, %660 ]
  br label %665

665:                                              ; preds = %662, %665
  %666 = phi ptr [ %669, %665 ], [ %663, %662 ]
  %667 = phi ptr [ %670, %665 ], [ %664, %662 ]
  %668 = load i64, ptr %667, align 1
  store i64 %668, ptr %666, align 1
  %669 = getelementptr inbounds nuw i8, ptr %666, i64 8
  %670 = getelementptr inbounds nuw i8, ptr %667, i64 8
  %671 = icmp ult ptr %669, %623
  br i1 %671, label %665, label %688, !llvm.loop !163

672:                                              ; preds = %619
  %673 = add i64 %570, -8
  %674 = load <2 x i64>, ptr %616, align 1, !tbaa !9
  store <2 x i64> %674, ptr %617, align 1, !tbaa !9
  %675 = icmp ult i64 %673, 17
  br i1 %675, label %688, label %676

676:                                              ; preds = %672
  %677 = getelementptr inbounds nuw i8, ptr %569, i64 24
  br label %678

678:                                              ; preds = %678, %676
  %679 = phi ptr [ %677, %676 ], [ %686, %678 ]
  %680 = phi ptr [ %616, %676 ], [ %684, %678 ]
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 16
  %682 = load <2 x i64>, ptr %681, align 1, !tbaa !9
  store <2 x i64> %682, ptr %679, align 1, !tbaa !9
  %683 = getelementptr inbounds nuw i8, ptr %679, i64 16
  %684 = getelementptr inbounds nuw i8, ptr %680, i64 32
  %685 = load <2 x i64>, ptr %684, align 1, !tbaa !9
  store <2 x i64> %685, ptr %683, align 1, !tbaa !9
  %686 = getelementptr inbounds nuw i8, ptr %679, i64 32
  %687 = icmp ult ptr %686, %623
  br i1 %687, label %678, label %688, !llvm.loop !101

688:                                              ; preds = %678, %665, %578, %660, %672, %614, %572, %563, %529
  %689 = phi i64 [ %530, %529 ], [ %517, %563 ], [ %517, %614 ], [ %517, %572 ], [ %517, %672 ], [ %517, %660 ], [ %517, %578 ], [ %517, %665 ], [ %517, %678 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %690 = icmp ult i64 %689, -119
  %691 = getelementptr inbounds nuw i8, ptr %301, i64 %689
  br i1 %690, label %692, label %708

692:                                              ; preds = %688
  %693 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %300, i32 -1)
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !90
  br i1 %694, label %695, label %696, !prof !113, !nosanitize !90

695:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !90
  unreachable, !nosanitize !90

696:                                              ; preds = %692
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !90
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %290, !llvm.loop !164

699:                                              ; preds = %696
  %700 = icmp eq ptr %510, %3
  %701 = icmp eq i32 %511, 64
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %703, label %708

703:                                              ; preds = %699
  %704 = trunc i64 %381 to i32
  store i32 %704, ptr %41, align 4, !tbaa !30
  %705 = trunc i64 %380 to i32
  store i32 %705, ptr %45, align 4, !tbaa !30
  %706 = trunc i64 %382 to i32
  store i32 %706, ptr %49, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  %707 = load ptr, ptr %8, align 8, !tbaa !40
  br label %710

708:                                              ; preds = %688, %699, %556, %123, %110, %59, %39
  %709 = phi i64 [ -20, %556 ], [ -20, %123 ], [ -20, %699 ], [ -20, %39 ], [ -20, %59 ], [ -20, %110 ], [ %689, %688 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  br label %729

710:                                              ; preds = %703, %25
  %711 = phi ptr [ %707, %703 ], [ %28, %25 ]
  %712 = phi ptr [ %691, %703 ], [ %1, %25 ]
  %713 = ptrtoint ptr %31 to i64
  %714 = ptrtoint ptr %711 to i64
  %715 = sub i64 %713, %714
  %716 = ptrtoint ptr %26 to i64
  %717 = ptrtoint ptr %712 to i64
  %718 = sub i64 %716, %717
  %719 = icmp ugt i64 %715, %718
  br i1 %719, label %729, label %720

720:                                              ; preds = %710
  %721 = icmp eq ptr %712, null
  br i1 %721, label %725, label %722

722:                                              ; preds = %720
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %712, ptr align 1 %711, i64 %715, i1 false)
  %723 = getelementptr inbounds nuw i8, ptr %712, i64 %715
  %724 = ptrtoint ptr %723 to i64
  br label %725

725:                                              ; preds = %722, %720
  %726 = phi i64 [ 0, %720 ], [ %724, %722 ]
  %727 = ptrtoint ptr %1 to i64
  %728 = sub i64 %726, %727
  br label %729

729:                                              ; preds = %708, %710, %725
  %730 = phi i64 [ %728, %725 ], [ %709, %708 ], [ -70, %710 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %731

731:                                              ; preds = %729, %13
  %732 = phi i64 [ %14, %13 ], [ %730, %729 ]
  ret i64 %732
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_checkContinuity(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = icmp ne ptr %1, %5
  %7 = icmp ne i64 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %5, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %14, %13
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %16, ptr %17, align 8, !tbaa !71
  store ptr %1, ptr %11, align 8, !tbaa !74
  store ptr %1, ptr %4, align 8, !tbaa !165
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_deprecated(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %8 = load ptr, ptr %7, align 8, !tbaa !165
  %9 = icmp ne ptr %1, %8
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %8, ptr %13, align 8, !tbaa !75
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %19, ptr %20, align 8, !tbaa !71
  store ptr %1, ptr %14, align 8, !tbaa !74
  store ptr %1, ptr %7, align 8, !tbaa !165
  br label %21

21:                                               ; preds = %5, %12
  %22 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %23 = icmp ult i64 %22, -119
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %22
  store ptr %25, ptr %7, align 8, !tbaa !165
  br label %26

26:                                               ; preds = %21, %24
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %8 = load ptr, ptr %7, align 8, !tbaa !165
  %9 = icmp ne ptr %1, %8
  %10 = icmp ne i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %8, ptr %13, align 8, !tbaa !75
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %17, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %19, ptr %20, align 8, !tbaa !71
  store ptr %1, ptr %14, align 8, !tbaa !74
  store ptr %1, ptr %7, align 8, !tbaa !165
  br label %21

21:                                               ; preds = %12, %5
  %22 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %23 = icmp ult i64 %22, -119
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %22
  store ptr %25, ptr %7, align 8, !tbaa !165
  br label %26

26:                                               ; preds = %21, %24
  ret i64 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #9

declare i64 @HUF_decompress1X_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i64 @HUF_decompress4X_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

declare i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #13 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  store ptr %22, ptr %7, align 8, !tbaa !40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %2149, label %32

32:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #18
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %33, align 4, !tbaa !63
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %35 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %36 = load i32, ptr %34, align 4, !tbaa !30
  %37 = zext i32 %36 to i64
  store i64 %37, ptr %35, align 8, !tbaa !46
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %39 = load i32, ptr %38, align 4, !tbaa !30
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %40, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %43 = load i32, ptr %42, align 4, !tbaa !30
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %44, ptr %45, align 8, !tbaa !46
  %46 = tail call i32 @llvm.smin.i32(i32 %5, i32 8)
  %47 = ptrtoint ptr %1 to i64
  %48 = ptrtoint ptr %26 to i64
  %49 = sub i64 %47, %48
  %50 = icmp eq i64 %4, 0
  br i1 %50, label %2147, label %51

51:                                               ; preds = %32
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %52, align 8, !tbaa !76
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %53, ptr %54, align 8, !tbaa !78
  %55 = icmp ugt i64 %4, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = add nsw i64 %4, -8
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %58, ptr %59, align 8, !tbaa !79
  %60 = load i64, ptr %58, align 1
  store i64 %60, ptr %9, align 8, !tbaa !80
  %61 = icmp ult i64 %60, 72057594037927936
  br i1 %61, label %2147, label %120

62:                                               ; preds = %51
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %63, align 8, !tbaa !79
  %64 = load i8, ptr %3, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  store i64 %65, ptr %9, align 8, !tbaa !80
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
  store i64 %106, ptr %9, align 8, !tbaa !80
  br label %107

107:                                              ; preds = %100, %62
  %108 = phi i64 [ %106, %100 ], [ %65, %62 ]
  %109 = getelementptr i8, ptr %3, i64 %4
  %110 = getelementptr i8, ptr %109, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %2147, label %113

113:                                              ; preds = %107
  %114 = zext i8 %111 to i32
  %115 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %114, i1 true)
  %116 = trunc nuw nsw i64 %4 to i32
  %117 = shl nuw nsw i32 %116, 3
  %118 = sub nsw i32 %115, %117
  %119 = add nsw i32 %118, 41
  br label %127

120:                                              ; preds = %56
  %121 = lshr i64 %60, 56
  %122 = trunc nuw nsw i64 %121 to i32
  %123 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %122, i1 true)
  %124 = xor i32 %123, 31
  %125 = sub nuw nsw i32 8, %124
  %126 = icmp ult i64 %4, -119
  br i1 %126, label %127, label %2147

127:                                              ; preds = %113, %120
  %128 = phi ptr [ %3, %113 ], [ %58, %120 ]
  %129 = phi i64 [ 0, %113 ], [ %57, %120 ]
  %130 = phi i32 [ %119, %113 ], [ %125, %120 ]
  %131 = phi i64 [ %108, %113 ], [ %60, %120 ]
  %132 = getelementptr inbounds i8, ptr %3, i64 %129
  %133 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %134 = load ptr, ptr %0, align 8, !tbaa !81
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 4
  %136 = load i32, ptr %135, align 4, !tbaa !64
  %137 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %138 = add i32 %130, %136
  %139 = sub i32 0, %138
  %140 = and i32 %139, 63
  %141 = zext nneg i32 %140 to i64
  %142 = lshr i64 %131, %141
  %143 = zext nneg i32 %136 to i64
  %144 = shl nsw i64 -1, %143
  %145 = xor i64 %144, -1
  %146 = and i64 %142, %145
  store i64 %146, ptr %133, align 8, !tbaa !82
  %147 = icmp ugt i32 %138, 64
  %148 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %147, label %149, label %150, !prof !53

149:                                              ; preds = %127
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79
  br label %172

150:                                              ; preds = %127
  %151 = icmp slt i64 %129, 8
  br i1 %151, label %159, label %152

152:                                              ; preds = %150
  %153 = lshr i32 %138, 3
  %154 = zext nneg i32 %153 to i64
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %132, i64 %155
  store ptr %156, ptr %148, align 8, !tbaa !79
  %157 = and i32 %138, 7
  store i32 %157, ptr %137, align 8, !tbaa !84
  %158 = load i64, ptr %156, align 1, !tbaa !46
  store i64 %158, ptr %9, align 8, !tbaa !80
  br label %172

159:                                              ; preds = %150
  %160 = icmp eq i64 %129, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %159
  %162 = lshr i32 %138, 3
  %163 = zext nneg i32 %162 to i64
  %164 = tail call i64 @llvm.smin.i64(i64 %129, i64 %163)
  %165 = trunc i64 %164 to i32
  %166 = and i64 %164, 4294967295
  %167 = sub nsw i64 0, %166
  %168 = getelementptr inbounds i8, ptr %132, i64 %167
  store ptr %168, ptr %148, align 8, !tbaa !79
  %169 = shl i32 %165, 3
  %170 = sub i32 %138, %169
  store i32 %170, ptr %137, align 8, !tbaa !84
  %171 = load i64, ptr %168, align 1, !tbaa !46
  store i64 %171, ptr %9, align 8, !tbaa !80
  br label %172

172:                                              ; preds = %149, %152, %159, %161
  %173 = phi ptr [ @BIT_reloadDStream.zeroFilled, %149 ], [ %156, %152 ], [ %128, %159 ], [ %168, %161 ]
  %174 = phi ptr [ @BIT_reloadDStream.zeroFilled, %149 ], [ %156, %152 ], [ %3, %159 ], [ %168, %161 ]
  %175 = phi i32 [ %138, %149 ], [ %157, %152 ], [ %138, %159 ], [ %170, %161 ]
  %176 = phi i64 [ %131, %149 ], [ %158, %152 ], [ %131, %159 ], [ %171, %161 ]
  %177 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %177, ptr %178, align 8, !tbaa !85
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %181 = load ptr, ptr %180, align 8, !tbaa !72
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 4
  %183 = load i32, ptr %182, align 4, !tbaa !64
  %184 = add i32 %175, %183
  %185 = sub i32 0, %184
  %186 = and i32 %185, 63
  %187 = zext nneg i32 %186 to i64
  %188 = lshr i64 %176, %187
  %189 = zext nneg i32 %183 to i64
  %190 = shl nsw i64 -1, %189
  %191 = xor i64 %190, -1
  %192 = and i64 %188, %191
  store i64 %192, ptr %179, align 8, !tbaa !82
  %193 = icmp ugt i32 %184, 64
  br i1 %193, label %194, label %195, !prof !53

194:                                              ; preds = %172
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79
  br label %223

195:                                              ; preds = %172
  %196 = icmp ult ptr %174, %53
  br i1 %196, label %204, label %197

197:                                              ; preds = %195
  %198 = lshr i32 %184, 3
  %199 = zext nneg i32 %198 to i64
  %200 = sub nsw i64 0, %199
  %201 = getelementptr inbounds i8, ptr %174, i64 %200
  store ptr %201, ptr %148, align 8, !tbaa !79
  %202 = and i32 %184, 7
  %203 = load i64, ptr %201, align 1, !tbaa !46
  store i64 %203, ptr %9, align 8, !tbaa !80
  br label %223

204:                                              ; preds = %195
  %205 = icmp eq ptr %174, %3
  br i1 %205, label %223, label %206

206:                                              ; preds = %204
  %207 = lshr i32 %184, 3
  %208 = zext nneg i32 %207 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %174, i64 %209
  %211 = icmp ult ptr %210, %3
  %212 = ptrtoint ptr %174 to i64
  %213 = ptrtoint ptr %3 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = select i1 %211, i32 %215, i32 %207
  %217 = zext i32 %216 to i64
  %218 = sub nsw i64 0, %217
  %219 = getelementptr inbounds i8, ptr %174, i64 %218
  store ptr %219, ptr %148, align 8, !tbaa !79
  %220 = shl i32 %216, 3
  %221 = sub i32 %184, %220
  %222 = load i64, ptr %219, align 1, !tbaa !46
  store i64 %222, ptr %9, align 8, !tbaa !80
  br label %223

223:                                              ; preds = %194, %197, %204, %206
  %224 = phi ptr [ @BIT_reloadDStream.zeroFilled, %194 ], [ %201, %197 ], [ %173, %204 ], [ %219, %206 ]
  %225 = phi ptr [ @BIT_reloadDStream.zeroFilled, %194 ], [ %201, %197 ], [ %174, %204 ], [ %219, %206 ]
  %226 = phi i32 [ %184, %194 ], [ %202, %197 ], [ %184, %204 ], [ %221, %206 ]
  %227 = phi i64 [ %176, %194 ], [ %203, %197 ], [ %176, %204 ], [ %222, %206 ]
  %228 = getelementptr inbounds nuw i8, ptr %181, i64 8
  %229 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %228, ptr %229, align 8, !tbaa !85
  %230 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %232 = load ptr, ptr %231, align 8, !tbaa !86
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %234 = load i32, ptr %233, align 4, !tbaa !64
  %235 = add i32 %226, %234
  %236 = sub i32 0, %235
  %237 = and i32 %236, 63
  %238 = zext nneg i32 %237 to i64
  %239 = lshr i64 %227, %238
  %240 = zext nneg i32 %234 to i64
  %241 = shl nsw i64 -1, %240
  %242 = xor i64 %241, -1
  %243 = and i64 %239, %242
  store i32 %235, ptr %137, align 8, !tbaa !84
  store i64 %243, ptr %230, align 8, !tbaa !82
  %244 = icmp ugt i32 %235, 64
  br i1 %244, label %245, label %246, !prof !53

245:                                              ; preds = %223
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79
  br label %274

246:                                              ; preds = %223
  %247 = icmp ult ptr %225, %53
  br i1 %247, label %255, label %248

248:                                              ; preds = %246
  %249 = lshr i32 %235, 3
  %250 = zext nneg i32 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, ptr %225, i64 %251
  store ptr %252, ptr %148, align 8, !tbaa !79
  %253 = and i32 %235, 7
  store i32 %253, ptr %137, align 8, !tbaa !84
  %254 = load i64, ptr %252, align 1, !tbaa !46
  store i64 %254, ptr %9, align 8, !tbaa !80
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
  store ptr %270, ptr %148, align 8, !tbaa !79
  %271 = shl i32 %267, 3
  %272 = sub i32 %235, %271
  store i32 %272, ptr %137, align 8, !tbaa !84
  %273 = load i64, ptr %270, align 1, !tbaa !46
  store i64 %273, ptr %9, align 8, !tbaa !80
  br label %274

274:                                              ; preds = %245, %248, %255, %257
  %275 = phi ptr [ @BIT_reloadDStream.zeroFilled, %245 ], [ %252, %248 ], [ %224, %255 ], [ %270, %257 ]
  %276 = phi i64 [ %227, %245 ], [ %254, %248 ], [ %227, %255 ], [ %273, %257 ]
  %277 = phi i32 [ %235, %245 ], [ %253, %248 ], [ %235, %255 ], [ %272, %257 ]
  %278 = phi ptr [ @BIT_reloadDStream.zeroFilled, %245 ], [ %252, %248 ], [ %225, %255 ], [ %270, %257 ]
  %279 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %280 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %279, ptr %280, align 8, !tbaa !85
  %281 = icmp sgt i32 %5, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %274
  %283 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %284 = getelementptr inbounds nuw i8, ptr %9, i64 104
  %285 = ptrtoint ptr %3 to i64
  %286 = add nsw i32 %5, -1
  %287 = zext nneg i32 %286 to i64
  %288 = zext nneg i32 %46 to i64
  br label %316

289:                                              ; preds = %541, %274
  %290 = phi ptr [ %275, %274 ], [ %542, %541 ]
  %291 = phi i64 [ %276, %274 ], [ %548, %541 ]
  %292 = phi i32 [ %277, %274 ], [ %547, %541 ]
  %293 = phi ptr [ %278, %274 ], [ %546, %541 ]
  %294 = phi i64 [ %44, %274 ], [ %412, %541 ]
  %295 = phi i64 [ %40, %274 ], [ %410, %541 ]
  %296 = phi i64 [ %37, %274 ], [ %411, %541 ]
  %297 = phi i64 [ %243, %274 ], [ %543, %541 ]
  %298 = phi i64 [ %192, %274 ], [ %544, %541 ]
  %299 = phi i64 [ %146, %274 ], [ %545, %541 ]
  %300 = phi i64 [ %49, %274 ], [ %559, %541 ]
  %301 = phi i32 [ 0, %274 ], [ %46, %541 ]
  %302 = icmp slt i32 %301, %5
  br i1 %302, label %303, label %1465

303:                                              ; preds = %289
  %304 = add nsw i32 %5, -1
  %305 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %306 = getelementptr inbounds nuw i8, ptr %9, i64 104
  %307 = getelementptr inbounds i8, ptr %20, i64 -32
  %308 = ptrtoint ptr %28 to i64
  %309 = ptrtoint ptr %20 to i64
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %311 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %313 = getelementptr i8, ptr %0, i64 30372
  %314 = ptrtoint ptr %3 to i64
  %315 = ptrtoint ptr %3 to i64
  br label %565

316:                                              ; preds = %282, %541
  %317 = phi ptr [ %275, %282 ], [ %542, %541 ]
  %318 = phi i64 [ %44, %282 ], [ %412, %541 ]
  %319 = phi i64 [ %243, %282 ], [ %543, %541 ]
  %320 = phi i64 [ %192, %282 ], [ %544, %541 ]
  %321 = phi i64 [ %146, %282 ], [ %545, %541 ]
  %322 = phi i64 [ 0, %282 ], [ %563, %541 ]
  %323 = phi i64 [ %40, %282 ], [ %410, %541 ]
  %324 = phi i64 [ %37, %282 ], [ %411, %541 ]
  %325 = phi i64 [ %49, %282 ], [ %559, %541 ]
  %326 = phi i64 [ %146, %282 ], [ %551, %541 ]
  %327 = phi i64 [ %243, %282 ], [ %550, %541 ]
  %328 = phi i64 [ %192, %282 ], [ %549, %541 ]
  %329 = phi i64 [ %276, %282 ], [ %548, %541 ]
  %330 = phi i32 [ %277, %282 ], [ %547, %541 ]
  %331 = phi ptr [ %278, %282 ], [ %546, %541 ]
  %332 = icmp eq i64 %322, %287
  %333 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %177, i64 %326
  %334 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %279, i64 %327
  %335 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %228, i64 %328
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 4
  %337 = load i32, ptr %336, align 4, !tbaa !43, !noalias !166
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds nuw i8, ptr %333, i64 4
  %340 = load i32, ptr %339, align 4, !tbaa !43, !noalias !166
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds nuw i8, ptr %335, i64 4
  %343 = load i32, ptr %342, align 4, !tbaa !43, !noalias !166
  %344 = getelementptr inbounds nuw i8, ptr %333, i64 2
  %345 = load i8, ptr %344, align 2, !tbaa !59, !noalias !166
  %346 = getelementptr inbounds nuw i8, ptr %334, i64 2
  %347 = load i8, ptr %346, align 2, !tbaa !59, !noalias !166
  %348 = getelementptr inbounds nuw i8, ptr %335, i64 2
  %349 = load i8, ptr %348, align 2, !tbaa !59, !noalias !166
  %350 = zext i8 %345 to i32
  %351 = zext i8 %347 to i32
  %352 = add i8 %347, %345
  %353 = add i8 %352, %349
  %354 = load i16, ptr %333, align 4, !tbaa !58, !noalias !166
  %355 = load i16, ptr %334, align 4, !tbaa !58, !noalias !166
  %356 = load i16, ptr %335, align 4, !tbaa !58, !noalias !166
  %357 = getelementptr inbounds nuw i8, ptr %333, i64 3
  %358 = load i8, ptr %357, align 1, !tbaa !57, !noalias !166
  %359 = zext i8 %358 to i32
  %360 = getelementptr inbounds nuw i8, ptr %334, i64 3
  %361 = load i8, ptr %360, align 1, !tbaa !57, !noalias !166
  %362 = zext i8 %361 to i32
  %363 = getelementptr inbounds nuw i8, ptr %335, i64 3
  %364 = load i8, ptr %363, align 1, !tbaa !57, !noalias !166
  %365 = zext i8 %364 to i32
  %366 = icmp ugt i8 %349, 1
  br i1 %366, label %368, label %380

367:                                              ; preds = %1477
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !90
  unreachable, !nosanitize !90

368:                                              ; preds = %316
  %369 = zext i8 %349 to i32
  %370 = and i32 %330, 63
  %371 = zext nneg i32 %370 to i64
  %372 = shl i64 %329, %371
  %373 = sub nsw i32 0, %369
  %374 = and i32 %373, 63
  %375 = zext nneg i32 %374 to i64
  %376 = lshr i64 %372, %375
  %377 = add i32 %330, %369
  store i32 %377, ptr %137, align 8, !tbaa !84, !noalias !166
  %378 = zext i32 %343 to i64
  %379 = add i64 %376, %378
  store i64 %323, ptr %284, align 8, !tbaa !46, !noalias !166
  br label %409

380:                                              ; preds = %316
  %381 = icmp eq i32 %340, 0
  %382 = icmp eq i8 %349, 0
  br i1 %382, label %383, label %386, !prof !91

383:                                              ; preds = %380
  %384 = select i1 %381, i64 %323, i64 %324
  %385 = select i1 %381, i64 %324, i64 %323
  br label %409

386:                                              ; preds = %380
  %387 = zext i1 %381 to i32
  %388 = add i32 %343, %387
  %389 = zext i32 %388 to i64
  %390 = and i32 %330, 63
  %391 = zext nneg i32 %390 to i64
  %392 = shl i64 %329, %391
  %393 = lshr i64 %392, 63
  %394 = add i32 %330, 1
  store i32 %394, ptr %137, align 8, !tbaa !84, !noalias !166
  %395 = add nuw nsw i64 %393, %389
  %396 = icmp eq i64 %395, 3
  br i1 %396, label %397, label %401

397:                                              ; preds = %386
  %398 = add i64 %324, -1
  %399 = icmp eq i64 %398, 0
  %400 = select i1 %399, i64 -1, i64 %398
  br label %407

401:                                              ; preds = %386
  %402 = getelementptr inbounds nuw [3 x i64], ptr %35, i64 0, i64 %395
  %403 = load i64, ptr %402, align 8, !tbaa !46, !noalias !166
  %404 = icmp eq i64 %403, 0
  %405 = select i1 %404, i64 -1, i64 %403
  %406 = icmp eq i64 %395, 1
  br i1 %406, label %409, label %407

407:                                              ; preds = %397, %401
  %408 = phi i64 [ %400, %397 ], [ %405, %401 ]
  store i64 %323, ptr %284, align 8, !tbaa !46, !noalias !166
  br label %409

409:                                              ; preds = %401, %407, %383, %368
  %410 = phi i64 [ %385, %383 ], [ %324, %368 ], [ %324, %407 ], [ %324, %401 ]
  %411 = phi i64 [ %384, %383 ], [ %379, %368 ], [ %408, %407 ], [ %405, %401 ]
  %412 = phi i64 [ %318, %383 ], [ %323, %368 ], [ %323, %407 ], [ %318, %401 ]
  %413 = phi i32 [ %330, %383 ], [ %377, %368 ], [ %394, %407 ], [ %394, %401 ]
  store i64 %410, ptr %283, align 8, !tbaa !46, !noalias !166
  store i64 %411, ptr %35, align 8, !tbaa !46, !noalias !166
  %414 = icmp eq i8 %347, 0
  br i1 %414, label %425, label %415

415:                                              ; preds = %409
  %416 = and i32 %413, 63
  %417 = zext nneg i32 %416 to i64
  %418 = shl i64 %329, %417
  %419 = sub nsw i32 0, %351
  %420 = and i32 %419, 63
  %421 = zext nneg i32 %420 to i64
  %422 = lshr i64 %418, %421
  %423 = add i32 %413, %351
  store i32 %423, ptr %137, align 8, !tbaa !84, !noalias !166
  %424 = add i64 %422, %338
  br label %425

425:                                              ; preds = %415, %409
  %426 = phi i32 [ %413, %409 ], [ %423, %415 ]
  %427 = phi i64 [ %338, %409 ], [ %424, %415 ]
  %428 = icmp ugt i8 %353, 30
  br i1 %428, label %429, label %459, !prof !53

429:                                              ; preds = %425
  %430 = icmp ugt i32 %426, 64
  br i1 %430, label %431, label %432, !prof !53

431:                                              ; preds = %429
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79, !noalias !166
  br label %459

432:                                              ; preds = %429
  %433 = icmp ult ptr %331, %53
  br i1 %433, label %441, label %434

434:                                              ; preds = %432
  %435 = lshr i32 %426, 3
  %436 = zext nneg i32 %435 to i64
  %437 = sub nsw i64 0, %436
  %438 = getelementptr inbounds i8, ptr %331, i64 %437
  store ptr %438, ptr %148, align 8, !tbaa !79, !noalias !166
  %439 = and i32 %426, 7
  store i32 %439, ptr %137, align 8, !tbaa !84, !noalias !166
  %440 = load i64, ptr %438, align 1, !tbaa !46, !noalias !166
  store i64 %440, ptr %9, align 8, !tbaa !80, !noalias !166
  br label %459

441:                                              ; preds = %432
  %442 = icmp eq ptr %331, %3
  br i1 %442, label %459, label %443

443:                                              ; preds = %441
  %444 = lshr i32 %426, 3
  %445 = zext nneg i32 %444 to i64
  %446 = sub nsw i64 0, %445
  %447 = getelementptr inbounds i8, ptr %331, i64 %446
  %448 = icmp ult ptr %447, %3
  %449 = ptrtoint ptr %331 to i64
  %450 = sub i64 %449, %285
  %451 = trunc i64 %450 to i32
  %452 = select i1 %448, i32 %451, i32 %444
  %453 = zext i32 %452 to i64
  %454 = sub nsw i64 0, %453
  %455 = getelementptr inbounds i8, ptr %331, i64 %454
  store ptr %455, ptr %148, align 8, !tbaa !79, !noalias !166
  %456 = shl i32 %452, 3
  %457 = sub i32 %426, %456
  store i32 %457, ptr %137, align 8, !tbaa !84, !noalias !166
  %458 = load i64, ptr %455, align 1, !tbaa !46, !noalias !166
  store i64 %458, ptr %9, align 8, !tbaa !80, !noalias !166
  br label %459

459:                                              ; preds = %441, %443, %434, %431, %425
  %460 = phi ptr [ %317, %441 ], [ %455, %443 ], [ %438, %434 ], [ @BIT_reloadDStream.zeroFilled, %431 ], [ %317, %425 ]
  %461 = phi ptr [ %331, %441 ], [ %455, %443 ], [ %438, %434 ], [ @BIT_reloadDStream.zeroFilled, %431 ], [ %331, %425 ]
  %462 = phi i32 [ %426, %441 ], [ %457, %443 ], [ %439, %434 ], [ %426, %431 ], [ %426, %425 ]
  %463 = phi i64 [ %329, %441 ], [ %458, %443 ], [ %440, %434 ], [ %329, %431 ], [ %329, %425 ]
  %464 = icmp eq i8 %345, 0
  br i1 %464, label %475, label %465

465:                                              ; preds = %459
  %466 = and i32 %462, 63
  %467 = zext nneg i32 %466 to i64
  %468 = shl i64 %463, %467
  %469 = sub nsw i32 0, %350
  %470 = and i32 %469, 63
  %471 = zext nneg i32 %470 to i64
  %472 = lshr i64 %468, %471
  %473 = add i32 %462, %350
  store i32 %473, ptr %137, align 8, !tbaa !84, !noalias !166
  %474 = add i64 %472, %341
  br label %475

475:                                              ; preds = %465, %459
  %476 = phi i32 [ %462, %459 ], [ %473, %465 ]
  %477 = phi i64 [ %341, %459 ], [ %474, %465 ]
  br i1 %332, label %541, label %478

478:                                              ; preds = %475
  %479 = add i32 %476, %359
  %480 = sub i32 0, %479
  %481 = and i32 %480, 63
  %482 = zext nneg i32 %481 to i64
  %483 = lshr i64 %463, %482
  %484 = zext nneg i8 %358 to i64
  %485 = shl nsw i64 -1, %484
  %486 = xor i64 %485, -1
  %487 = and i64 %483, %486
  %488 = zext i16 %354 to i64
  %489 = add nuw i64 %487, %488
  store i64 %489, ptr %133, align 8, !tbaa !82, !noalias !166
  %490 = add i32 %479, %362
  %491 = sub i32 0, %490
  %492 = and i32 %491, 63
  %493 = zext nneg i32 %492 to i64
  %494 = lshr i64 %463, %493
  %495 = zext nneg i8 %361 to i64
  %496 = shl nsw i64 -1, %495
  %497 = xor i64 %496, -1
  %498 = and i64 %494, %497
  %499 = zext i16 %355 to i64
  %500 = add nuw i64 %498, %499
  store i64 %500, ptr %230, align 8, !tbaa !82, !noalias !166
  %501 = add i32 %490, %365
  %502 = sub i32 0, %501
  %503 = and i32 %502, 63
  %504 = zext nneg i32 %503 to i64
  %505 = lshr i64 %463, %504
  %506 = zext nneg i8 %364 to i64
  %507 = shl nsw i64 -1, %506
  %508 = xor i64 %507, -1
  %509 = and i64 %505, %508
  store i32 %501, ptr %137, align 8, !tbaa !84, !noalias !166
  %510 = zext i16 %356 to i64
  %511 = add nuw i64 %509, %510
  store i64 %511, ptr %179, align 8, !tbaa !82, !noalias !166
  %512 = icmp ugt i32 %501, 64
  br i1 %512, label %513, label %514, !prof !53

513:                                              ; preds = %478
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79, !noalias !166
  br label %541

514:                                              ; preds = %478
  %515 = icmp ult ptr %461, %53
  br i1 %515, label %523, label %516

516:                                              ; preds = %514
  %517 = lshr i32 %501, 3
  %518 = zext nneg i32 %517 to i64
  %519 = sub nsw i64 0, %518
  %520 = getelementptr inbounds i8, ptr %461, i64 %519
  store ptr %520, ptr %148, align 8, !tbaa !79, !noalias !166
  %521 = and i32 %501, 7
  store i32 %521, ptr %137, align 8, !tbaa !84, !noalias !166
  %522 = load i64, ptr %520, align 1, !tbaa !46, !noalias !166
  store i64 %522, ptr %9, align 8, !tbaa !80, !noalias !166
  br label %541

523:                                              ; preds = %514
  %524 = icmp eq ptr %461, %3
  br i1 %524, label %541, label %525

525:                                              ; preds = %523
  %526 = lshr i32 %501, 3
  %527 = zext nneg i32 %526 to i64
  %528 = sub nsw i64 0, %527
  %529 = getelementptr inbounds i8, ptr %461, i64 %528
  %530 = icmp ult ptr %529, %3
  %531 = ptrtoint ptr %461 to i64
  %532 = sub i64 %531, %285
  %533 = trunc i64 %532 to i32
  %534 = select i1 %530, i32 %533, i32 %526
  %535 = zext i32 %534 to i64
  %536 = sub nsw i64 0, %535
  %537 = getelementptr inbounds i8, ptr %461, i64 %536
  store ptr %537, ptr %148, align 8, !tbaa !79, !noalias !166
  %538 = shl i32 %534, 3
  %539 = sub i32 %501, %538
  store i32 %539, ptr %137, align 8, !tbaa !84, !noalias !166
  %540 = load i64, ptr %537, align 1, !tbaa !46, !noalias !166
  store i64 %540, ptr %9, align 8, !tbaa !80, !noalias !166
  br label %541

541:                                              ; preds = %523, %525, %516, %513, %475
  %542 = phi ptr [ %460, %523 ], [ %537, %525 ], [ %520, %516 ], [ @BIT_reloadDStream.zeroFilled, %513 ], [ %460, %475 ]
  %543 = phi i64 [ %500, %523 ], [ %500, %525 ], [ %500, %516 ], [ %500, %513 ], [ %319, %475 ]
  %544 = phi i64 [ %511, %523 ], [ %511, %525 ], [ %511, %516 ], [ %511, %513 ], [ %320, %475 ]
  %545 = phi i64 [ %489, %523 ], [ %489, %525 ], [ %489, %516 ], [ %489, %513 ], [ %321, %475 ]
  %546 = phi ptr [ %461, %523 ], [ %537, %525 ], [ %520, %516 ], [ @BIT_reloadDStream.zeroFilled, %513 ], [ %461, %475 ]
  %547 = phi i32 [ %501, %523 ], [ %539, %525 ], [ %521, %516 ], [ %501, %513 ], [ %476, %475 ]
  %548 = phi i64 [ %463, %523 ], [ %540, %525 ], [ %522, %516 ], [ %463, %513 ], [ %463, %475 ]
  %549 = phi i64 [ %511, %523 ], [ %511, %525 ], [ %511, %516 ], [ %511, %513 ], [ %328, %475 ]
  %550 = phi i64 [ %500, %523 ], [ %500, %525 ], [ %500, %516 ], [ %500, %513 ], [ %327, %475 ]
  %551 = phi i64 [ %489, %523 ], [ %489, %525 ], [ %489, %516 ], [ %489, %513 ], [ %326, %475 ]
  %552 = add i64 %477, %325
  %553 = icmp ugt i64 %411, %552
  %554 = select i1 %553, ptr %30, ptr %26
  %555 = getelementptr inbounds i8, ptr %554, i64 %552
  %556 = sub i64 0, %411
  %557 = getelementptr inbounds i8, ptr %555, i64 %556
  tail call void @llvm.prefetch.p0(ptr %557, i32 0, i32 3, i32 1)
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %558, i32 0, i32 3, i32 1)
  %559 = add i64 %552, %427
  %560 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %322
  store i64 %477, ptr %560, align 8, !tbaa !46
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 8
  store i64 %427, ptr %561, align 8, !tbaa !46
  %562 = getelementptr inbounds nuw i8, ptr %560, i64 16
  store i64 %411, ptr %562, align 8, !tbaa !46
  %563 = add nuw nsw i64 %322, 1
  %564 = icmp eq i64 %563, %288
  br i1 %564, label %289, label %316, !llvm.loop !92

565:                                              ; preds = %303, %1458
  %566 = phi ptr [ %290, %303 ], [ %787, %1458 ]
  %567 = phi i32 [ %292, %303 ], [ %788, %1458 ]
  %568 = phi i64 [ %291, %303 ], [ %789, %1458 ]
  %569 = phi i64 [ %294, %303 ], [ %659, %1458 ]
  %570 = phi i64 [ %295, %303 ], [ %657, %1458 ]
  %571 = phi i64 [ %296, %303 ], [ %658, %1458 ]
  %572 = phi i64 [ %297, %303 ], [ %790, %1458 ]
  %573 = phi i64 [ %298, %303 ], [ %791, %1458 ]
  %574 = phi i64 [ %299, %303 ], [ %792, %1458 ]
  %575 = phi ptr [ %1, %303 ], [ %1461, %1458 ]
  %576 = phi ptr [ %24, %303 ], [ %1460, %1458 ]
  %577 = phi i32 [ %301, %303 ], [ %1463, %1458 ]
  %578 = phi i64 [ %300, %303 ], [ %1462, %1458 ]
  %579 = icmp eq i32 %577, %304
  %580 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %177, i64 %574
  %581 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %279, i64 %572
  %582 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %228, i64 %573
  %583 = getelementptr inbounds nuw i8, ptr %581, i64 4
  %584 = load i32, ptr %583, align 4, !tbaa !43, !noalias !169
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds nuw i8, ptr %580, i64 4
  %587 = load i32, ptr %586, align 4, !tbaa !43, !noalias !169
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds nuw i8, ptr %582, i64 4
  %590 = load i32, ptr %589, align 4, !tbaa !43, !noalias !169
  %591 = getelementptr inbounds nuw i8, ptr %580, i64 2
  %592 = load i8, ptr %591, align 2, !tbaa !59, !noalias !169
  %593 = getelementptr inbounds nuw i8, ptr %581, i64 2
  %594 = load i8, ptr %593, align 2, !tbaa !59, !noalias !169
  %595 = getelementptr inbounds nuw i8, ptr %582, i64 2
  %596 = load i8, ptr %595, align 2, !tbaa !59, !noalias !169
  %597 = zext i8 %592 to i32
  %598 = zext i8 %594 to i32
  %599 = add i8 %594, %592
  %600 = add i8 %599, %596
  %601 = load i16, ptr %580, align 4, !tbaa !58, !noalias !169
  %602 = load i16, ptr %581, align 4, !tbaa !58, !noalias !169
  %603 = load i16, ptr %582, align 4, !tbaa !58, !noalias !169
  %604 = getelementptr inbounds nuw i8, ptr %580, i64 3
  %605 = load i8, ptr %604, align 1, !tbaa !57, !noalias !169
  %606 = zext i8 %605 to i32
  %607 = getelementptr inbounds nuw i8, ptr %581, i64 3
  %608 = load i8, ptr %607, align 1, !tbaa !57, !noalias !169
  %609 = zext i8 %608 to i32
  %610 = getelementptr inbounds nuw i8, ptr %582, i64 3
  %611 = load i8, ptr %610, align 1, !tbaa !57, !noalias !169
  %612 = zext i8 %611 to i32
  %613 = icmp ugt i8 %596, 1
  br i1 %613, label %614, label %626

614:                                              ; preds = %565
  %615 = zext i8 %596 to i32
  %616 = and i32 %567, 63
  %617 = zext nneg i32 %616 to i64
  %618 = shl i64 %568, %617
  %619 = sub nsw i32 0, %615
  %620 = and i32 %619, 63
  %621 = zext nneg i32 %620 to i64
  %622 = lshr i64 %618, %621
  %623 = add i32 %567, %615
  store i32 %623, ptr %137, align 8, !tbaa !84, !noalias !169
  %624 = zext i32 %590 to i64
  %625 = add i64 %622, %624
  store i64 %570, ptr %306, align 8, !tbaa !46, !noalias !169
  br label %655

626:                                              ; preds = %565
  %627 = icmp eq i32 %587, 0
  %628 = icmp eq i8 %596, 0
  br i1 %628, label %629, label %632, !prof !91

629:                                              ; preds = %626
  %630 = select i1 %627, i64 %570, i64 %571
  %631 = select i1 %627, i64 %571, i64 %570
  br label %655

632:                                              ; preds = %626
  %633 = zext i1 %627 to i32
  %634 = add i32 %590, %633
  %635 = zext i32 %634 to i64
  %636 = and i32 %567, 63
  %637 = zext nneg i32 %636 to i64
  %638 = shl i64 %568, %637
  %639 = lshr i64 %638, 63
  %640 = add i32 %567, 1
  store i32 %640, ptr %137, align 8, !tbaa !84, !noalias !169
  %641 = add nuw nsw i64 %639, %635
  %642 = icmp eq i64 %641, 3
  br i1 %642, label %643, label %647

643:                                              ; preds = %632
  %644 = add i64 %571, -1
  %645 = icmp eq i64 %644, 0
  %646 = select i1 %645, i64 -1, i64 %644
  br label %653

647:                                              ; preds = %632
  %648 = getelementptr inbounds nuw [3 x i64], ptr %35, i64 0, i64 %641
  %649 = load i64, ptr %648, align 8, !tbaa !46, !noalias !169
  %650 = icmp eq i64 %649, 0
  %651 = select i1 %650, i64 -1, i64 %649
  %652 = icmp eq i64 %641, 1
  br i1 %652, label %655, label %653

653:                                              ; preds = %643, %647
  %654 = phi i64 [ %646, %643 ], [ %651, %647 ]
  store i64 %570, ptr %306, align 8, !tbaa !46, !noalias !169
  br label %655

655:                                              ; preds = %647, %653, %629, %614
  %656 = phi i32 [ %567, %629 ], [ %623, %614 ], [ %640, %653 ], [ %640, %647 ]
  %657 = phi i64 [ %631, %629 ], [ %571, %614 ], [ %571, %653 ], [ %571, %647 ]
  %658 = phi i64 [ %630, %629 ], [ %625, %614 ], [ %654, %653 ], [ %651, %647 ]
  %659 = phi i64 [ %569, %629 ], [ %570, %614 ], [ %570, %653 ], [ %569, %647 ]
  store i64 %657, ptr %305, align 8, !tbaa !46, !noalias !169
  store i64 %658, ptr %35, align 8, !tbaa !46, !noalias !169
  %660 = icmp eq i8 %594, 0
  br i1 %660, label %671, label %661

661:                                              ; preds = %655
  %662 = and i32 %656, 63
  %663 = zext nneg i32 %662 to i64
  %664 = shl i64 %568, %663
  %665 = sub nsw i32 0, %598
  %666 = and i32 %665, 63
  %667 = zext nneg i32 %666 to i64
  %668 = lshr i64 %664, %667
  %669 = add i32 %656, %598
  store i32 %669, ptr %137, align 8, !tbaa !84, !noalias !169
  %670 = add i64 %668, %585
  br label %671

671:                                              ; preds = %661, %655
  %672 = phi i32 [ %656, %655 ], [ %669, %661 ]
  %673 = phi i64 [ %585, %655 ], [ %670, %661 ]
  %674 = icmp ugt i8 %600, 30
  br i1 %674, label %675, label %705, !prof !53

675:                                              ; preds = %671
  %676 = icmp ugt i32 %672, 64
  br i1 %676, label %677, label %678, !prof !53

677:                                              ; preds = %675
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79, !noalias !169
  br label %705

678:                                              ; preds = %675
  %679 = icmp ult ptr %566, %53
  br i1 %679, label %687, label %680

680:                                              ; preds = %678
  %681 = lshr i32 %672, 3
  %682 = zext nneg i32 %681 to i64
  %683 = sub nsw i64 0, %682
  %684 = getelementptr inbounds i8, ptr %566, i64 %683
  store ptr %684, ptr %148, align 8, !tbaa !79, !noalias !169
  %685 = and i32 %672, 7
  store i32 %685, ptr %137, align 8, !tbaa !84, !noalias !169
  %686 = load i64, ptr %684, align 1, !tbaa !46, !noalias !169
  store i64 %686, ptr %9, align 8, !tbaa !80, !noalias !169
  br label %705

687:                                              ; preds = %678
  %688 = icmp eq ptr %566, %3
  br i1 %688, label %705, label %689

689:                                              ; preds = %687
  %690 = lshr i32 %672, 3
  %691 = zext nneg i32 %690 to i64
  %692 = sub nsw i64 0, %691
  %693 = getelementptr inbounds i8, ptr %566, i64 %692
  %694 = icmp ult ptr %693, %3
  %695 = ptrtoint ptr %566 to i64
  %696 = sub i64 %695, %314
  %697 = trunc i64 %696 to i32
  %698 = select i1 %694, i32 %697, i32 %690
  %699 = zext i32 %698 to i64
  %700 = sub nsw i64 0, %699
  %701 = getelementptr inbounds i8, ptr %566, i64 %700
  store ptr %701, ptr %148, align 8, !tbaa !79, !noalias !169
  %702 = shl i32 %698, 3
  %703 = sub i32 %672, %702
  store i32 %703, ptr %137, align 8, !tbaa !84, !noalias !169
  %704 = load i64, ptr %701, align 1, !tbaa !46, !noalias !169
  store i64 %704, ptr %9, align 8, !tbaa !80, !noalias !169
  br label %705

705:                                              ; preds = %687, %689, %680, %677, %671
  %706 = phi ptr [ %566, %687 ], [ %701, %689 ], [ %684, %680 ], [ @BIT_reloadDStream.zeroFilled, %677 ], [ %566, %671 ]
  %707 = phi i32 [ %672, %687 ], [ %703, %689 ], [ %685, %680 ], [ %672, %677 ], [ %672, %671 ]
  %708 = phi i64 [ %568, %687 ], [ %704, %689 ], [ %686, %680 ], [ %568, %677 ], [ %568, %671 ]
  %709 = icmp eq i8 %592, 0
  br i1 %709, label %720, label %710

710:                                              ; preds = %705
  %711 = and i32 %707, 63
  %712 = zext nneg i32 %711 to i64
  %713 = shl i64 %708, %712
  %714 = sub nsw i32 0, %597
  %715 = and i32 %714, 63
  %716 = zext nneg i32 %715 to i64
  %717 = lshr i64 %713, %716
  %718 = add i32 %707, %597
  store i32 %718, ptr %137, align 8, !tbaa !84, !noalias !169
  %719 = add i64 %717, %588
  br label %720

720:                                              ; preds = %710, %705
  %721 = phi i32 [ %707, %705 ], [ %718, %710 ]
  %722 = phi i64 [ %588, %705 ], [ %719, %710 ]
  br i1 %579, label %786, label %723

723:                                              ; preds = %720
  %724 = add i32 %721, %606
  %725 = sub i32 0, %724
  %726 = and i32 %725, 63
  %727 = zext nneg i32 %726 to i64
  %728 = lshr i64 %708, %727
  %729 = zext nneg i8 %605 to i64
  %730 = shl nsw i64 -1, %729
  %731 = xor i64 %730, -1
  %732 = and i64 %728, %731
  %733 = zext i16 %601 to i64
  %734 = add nuw i64 %732, %733
  store i64 %734, ptr %133, align 8, !tbaa !82, !noalias !169
  %735 = add i32 %724, %609
  %736 = sub i32 0, %735
  %737 = and i32 %736, 63
  %738 = zext nneg i32 %737 to i64
  %739 = lshr i64 %708, %738
  %740 = zext nneg i8 %608 to i64
  %741 = shl nsw i64 -1, %740
  %742 = xor i64 %741, -1
  %743 = and i64 %739, %742
  %744 = zext i16 %602 to i64
  %745 = add nuw i64 %743, %744
  store i64 %745, ptr %230, align 8, !tbaa !82, !noalias !169
  %746 = add i32 %735, %612
  %747 = sub i32 0, %746
  %748 = and i32 %747, 63
  %749 = zext nneg i32 %748 to i64
  %750 = lshr i64 %708, %749
  %751 = zext nneg i8 %611 to i64
  %752 = shl nsw i64 -1, %751
  %753 = xor i64 %752, -1
  %754 = and i64 %750, %753
  store i32 %746, ptr %137, align 8, !tbaa !84, !noalias !169
  %755 = zext i16 %603 to i64
  %756 = add nuw i64 %754, %755
  store i64 %756, ptr %179, align 8, !tbaa !82, !noalias !169
  %757 = icmp ugt i32 %746, 64
  br i1 %757, label %758, label %759, !prof !53

758:                                              ; preds = %723
  store ptr @BIT_reloadDStream.zeroFilled, ptr %148, align 8, !tbaa !79, !noalias !169
  br label %786

759:                                              ; preds = %723
  %760 = icmp ult ptr %706, %53
  br i1 %760, label %768, label %761

761:                                              ; preds = %759
  %762 = lshr i32 %746, 3
  %763 = zext nneg i32 %762 to i64
  %764 = sub nsw i64 0, %763
  %765 = getelementptr inbounds i8, ptr %706, i64 %764
  store ptr %765, ptr %148, align 8, !tbaa !79, !noalias !169
  %766 = and i32 %746, 7
  store i32 %766, ptr %137, align 8, !tbaa !84, !noalias !169
  %767 = load i64, ptr %765, align 1, !tbaa !46, !noalias !169
  store i64 %767, ptr %9, align 8, !tbaa !80, !noalias !169
  br label %786

768:                                              ; preds = %759
  %769 = icmp eq ptr %706, %3
  br i1 %769, label %786, label %770

770:                                              ; preds = %768
  %771 = lshr i32 %746, 3
  %772 = zext nneg i32 %771 to i64
  %773 = sub nsw i64 0, %772
  %774 = getelementptr inbounds i8, ptr %706, i64 %773
  %775 = icmp ult ptr %774, %3
  %776 = ptrtoint ptr %706 to i64
  %777 = sub i64 %776, %315
  %778 = trunc i64 %777 to i32
  %779 = select i1 %775, i32 %778, i32 %771
  %780 = zext i32 %779 to i64
  %781 = sub nsw i64 0, %780
  %782 = getelementptr inbounds i8, ptr %706, i64 %781
  store ptr %782, ptr %148, align 8, !tbaa !79, !noalias !169
  %783 = shl i32 %779, 3
  %784 = sub i32 %746, %783
  store i32 %784, ptr %137, align 8, !tbaa !84, !noalias !169
  %785 = load i64, ptr %782, align 1, !tbaa !46, !noalias !169
  store i64 %785, ptr %9, align 8, !tbaa !80, !noalias !169
  br label %786

786:                                              ; preds = %768, %770, %761, %758, %720
  %787 = phi ptr [ %706, %768 ], [ %782, %770 ], [ %765, %761 ], [ @BIT_reloadDStream.zeroFilled, %758 ], [ %706, %720 ]
  %788 = phi i32 [ %746, %768 ], [ %784, %770 ], [ %766, %761 ], [ %746, %758 ], [ %721, %720 ]
  %789 = phi i64 [ %708, %768 ], [ %785, %770 ], [ %767, %761 ], [ %708, %758 ], [ %708, %720 ]
  %790 = phi i64 [ %745, %768 ], [ %745, %770 ], [ %745, %761 ], [ %745, %758 ], [ %572, %720 ]
  %791 = phi i64 [ %756, %768 ], [ %756, %770 ], [ %756, %761 ], [ %756, %758 ], [ %573, %720 ]
  %792 = phi i64 [ %734, %768 ], [ %734, %770 ], [ %734, %761 ], [ %734, %758 ], [ %574, %720 ]
  %793 = load i32, ptr %10, align 8, !tbaa !35
  %794 = icmp eq i32 %793, 2
  br i1 %794, label %795, label %1283

795:                                              ; preds = %786
  %796 = load ptr, ptr %7, align 8, !tbaa !40
  %797 = and i32 %577, 7
  %798 = zext nneg i32 %797 to i64
  %799 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %798
  %800 = load i64, ptr %799, align 8, !tbaa !96
  %801 = getelementptr inbounds nuw i8, ptr %796, i64 %800
  %802 = load ptr, ptr %23, align 8, !tbaa !34
  %803 = icmp ugt ptr %801, %802
  br i1 %803, label %804, label %1128

804:                                              ; preds = %795
  %805 = ptrtoint ptr %802 to i64
  %806 = ptrtoint ptr %796 to i64
  %807 = sub i64 %805, %806
  %808 = icmp eq ptr %802, %796
  br i1 %808, label %959, label %809

809:                                              ; preds = %804
  %810 = ptrtoint ptr %575 to i64
  %811 = sub i64 %309, %810
  %812 = icmp ugt i64 %807, %811
  br i1 %812, label %2147, label %813

813:                                              ; preds = %809
  %814 = sub i64 %810, %806
  %815 = getelementptr inbounds nuw i8, ptr %575, i64 %807
  %816 = icmp ult i64 %807, 8
  %817 = icmp sgt i64 %814, -8
  %818 = or i1 %817, %816
  br i1 %818, label %819, label %873

819:                                              ; preds = %813
  %820 = add i64 %810, %805
  %821 = sub i64 %820, %806
  %822 = add i64 %810, 1
  %823 = tail call i64 @llvm.umax.i64(i64 %821, i64 %822)
  %824 = sub i64 %823, %810
  %825 = icmp ult i64 %824, 4
  %826 = icmp ult i64 %814, 32
  %827 = or i1 %825, %826
  br i1 %827, label %863, label %828

828:                                              ; preds = %819
  %829 = icmp ult i64 %824, 32
  br i1 %829, label %849, label %830

830:                                              ; preds = %828
  %831 = and i64 %824, -32
  br label %832

832:                                              ; preds = %832, %830
  %833 = phi i64 [ 0, %830 ], [ %840, %832 ]
  %834 = getelementptr i8, ptr %575, i64 %833
  %835 = getelementptr i8, ptr %796, i64 %833
  %836 = getelementptr i8, ptr %835, i64 16
  %837 = load <16 x i8>, ptr %835, align 1, !tbaa !9
  %838 = load <16 x i8>, ptr %836, align 1, !tbaa !9
  %839 = getelementptr i8, ptr %834, i64 16
  store <16 x i8> %837, ptr %834, align 1, !tbaa !9
  store <16 x i8> %838, ptr %839, align 1, !tbaa !9
  %840 = add nuw i64 %833, 32
  %841 = icmp eq i64 %840, %831
  br i1 %841, label %842, label %832, !llvm.loop !172

842:                                              ; preds = %832
  %843 = icmp eq i64 %824, %831
  br i1 %843, label %956, label %844

844:                                              ; preds = %842
  %845 = getelementptr i8, ptr %575, i64 %831
  %846 = getelementptr i8, ptr %796, i64 %831
  %847 = and i64 %824, 28
  %848 = icmp eq i64 %847, 0
  br i1 %848, label %863, label %849

849:                                              ; preds = %844, %828
  %850 = phi i64 [ %831, %844 ], [ 0, %828 ]
  %851 = and i64 %824, -4
  %852 = getelementptr i8, ptr %575, i64 %851
  %853 = getelementptr i8, ptr %796, i64 %851
  br label %854

854:                                              ; preds = %854, %849
  %855 = phi i64 [ %850, %849 ], [ %859, %854 ]
  %856 = getelementptr i8, ptr %575, i64 %855
  %857 = getelementptr i8, ptr %796, i64 %855
  %858 = load <4 x i8>, ptr %857, align 1, !tbaa !9
  store <4 x i8> %858, ptr %856, align 1, !tbaa !9
  %859 = add nuw i64 %855, 4
  %860 = icmp eq i64 %859, %851
  br i1 %860, label %861, label %854, !llvm.loop !173

861:                                              ; preds = %854
  %862 = icmp eq i64 %824, %851
  br i1 %862, label %956, label %863

863:                                              ; preds = %844, %861, %819
  %864 = phi ptr [ %575, %819 ], [ %845, %844 ], [ %852, %861 ]
  %865 = phi ptr [ %796, %819 ], [ %846, %844 ], [ %853, %861 ]
  br label %866

866:                                              ; preds = %863, %866
  %867 = phi ptr [ %871, %866 ], [ %864, %863 ]
  %868 = phi ptr [ %869, %866 ], [ %865, %863 ]
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 1
  %870 = load i8, ptr %868, align 1, !tbaa !9
  %871 = getelementptr inbounds nuw i8, ptr %867, i64 1
  store i8 %870, ptr %867, align 1, !tbaa !9
  %872 = icmp ult ptr %871, %815
  br i1 %872, label %866, label %956, !llvm.loop !174

873:                                              ; preds = %813
  %874 = icmp sgt i64 %807, 31
  %875 = icmp samesign ult i64 %814, -16
  %876 = and i1 %875, %874
  br i1 %876, label %877, label %897

877:                                              ; preds = %873
  %878 = getelementptr inbounds i8, ptr %815, i64 -32
  %879 = add nsw i64 %807, -32
  %880 = getelementptr inbounds nuw i8, ptr %575, i64 %879
  %881 = load <2 x i64>, ptr %796, align 1, !tbaa !9
  store <2 x i64> %881, ptr %575, align 1, !tbaa !9
  %882 = icmp samesign ult i64 %879, 17
  br i1 %882, label %895, label %883

883:                                              ; preds = %877
  %884 = getelementptr inbounds nuw i8, ptr %575, i64 16
  br label %885

885:                                              ; preds = %885, %883
  %886 = phi ptr [ %884, %883 ], [ %893, %885 ]
  %887 = phi ptr [ %796, %883 ], [ %891, %885 ]
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 16
  %889 = load <2 x i64>, ptr %888, align 1, !tbaa !9
  store <2 x i64> %889, ptr %886, align 1, !tbaa !9
  %890 = getelementptr inbounds nuw i8, ptr %886, i64 16
  %891 = getelementptr inbounds nuw i8, ptr %887, i64 32
  %892 = load <2 x i64>, ptr %891, align 1, !tbaa !9
  store <2 x i64> %892, ptr %890, align 1, !tbaa !9
  %893 = getelementptr inbounds nuw i8, ptr %886, i64 32
  %894 = icmp ult ptr %893, %880
  br i1 %894, label %885, label %895, !llvm.loop !101

895:                                              ; preds = %885, %877
  %896 = getelementptr inbounds i8, ptr %796, i64 %879
  br label %897

897:                                              ; preds = %873, %895
  %898 = phi ptr [ %878, %895 ], [ %575, %873 ]
  %899 = phi ptr [ %896, %895 ], [ %796, %873 ]
  %900 = ptrtoint ptr %898 to i64
  %901 = add i64 %810, %805
  %902 = sub i64 %901, %806
  %903 = add nuw i64 %900, 1
  %904 = tail call i64 @llvm.umax.i64(i64 %902, i64 %903)
  %905 = sub i64 %904, %900
  %906 = icmp ult i64 %905, 4
  %907 = ptrtoint ptr %899 to i64
  %908 = sub i64 %900, %907
  %909 = icmp ult i64 %908, 32
  %910 = select i1 %906, i1 true, i1 %909
  br i1 %910, label %946, label %911

911:                                              ; preds = %897
  %912 = icmp ult i64 %905, 32
  br i1 %912, label %932, label %913

913:                                              ; preds = %911
  %914 = and i64 %905, -32
  br label %915

915:                                              ; preds = %915, %913
  %916 = phi i64 [ 0, %913 ], [ %923, %915 ]
  %917 = getelementptr i8, ptr %898, i64 %916
  %918 = getelementptr i8, ptr %899, i64 %916
  %919 = getelementptr i8, ptr %918, i64 16
  %920 = load <16 x i8>, ptr %918, align 1, !tbaa !9
  %921 = load <16 x i8>, ptr %919, align 1, !tbaa !9
  %922 = getelementptr i8, ptr %917, i64 16
  store <16 x i8> %920, ptr %917, align 1, !tbaa !9
  store <16 x i8> %921, ptr %922, align 1, !tbaa !9
  %923 = add nuw i64 %916, 32
  %924 = icmp eq i64 %923, %914
  br i1 %924, label %925, label %915, !llvm.loop !175

925:                                              ; preds = %915
  %926 = icmp eq i64 %905, %914
  br i1 %926, label %956, label %927

927:                                              ; preds = %925
  %928 = getelementptr i8, ptr %898, i64 %914
  %929 = getelementptr i8, ptr %899, i64 %914
  %930 = and i64 %905, 28
  %931 = icmp eq i64 %930, 0
  br i1 %931, label %946, label %932

932:                                              ; preds = %927, %911
  %933 = phi i64 [ %914, %927 ], [ 0, %911 ]
  %934 = and i64 %905, -4
  %935 = getelementptr i8, ptr %898, i64 %934
  %936 = getelementptr i8, ptr %899, i64 %934
  br label %937

937:                                              ; preds = %937, %932
  %938 = phi i64 [ %933, %932 ], [ %942, %937 ]
  %939 = getelementptr i8, ptr %898, i64 %938
  %940 = getelementptr i8, ptr %899, i64 %938
  %941 = load <4 x i8>, ptr %940, align 1, !tbaa !9
  store <4 x i8> %941, ptr %939, align 1, !tbaa !9
  %942 = add nuw i64 %938, 4
  %943 = icmp eq i64 %942, %934
  br i1 %943, label %944, label %937, !llvm.loop !176

944:                                              ; preds = %937
  %945 = icmp eq i64 %905, %934
  br i1 %945, label %956, label %946

946:                                              ; preds = %927, %944, %897
  %947 = phi ptr [ %898, %897 ], [ %928, %927 ], [ %935, %944 ]
  %948 = phi ptr [ %899, %897 ], [ %929, %927 ], [ %936, %944 ]
  br label %949

949:                                              ; preds = %946, %949
  %950 = phi ptr [ %954, %949 ], [ %947, %946 ]
  %951 = phi ptr [ %952, %949 ], [ %948, %946 ]
  %952 = getelementptr inbounds nuw i8, ptr %951, i64 1
  %953 = load i8, ptr %951, align 1, !tbaa !9
  %954 = getelementptr inbounds nuw i8, ptr %950, i64 1
  store i8 %953, ptr %950, align 1, !tbaa !9
  %955 = icmp ult ptr %954, %815
  br i1 %955, label %949, label %956, !llvm.loop !177

956:                                              ; preds = %949, %866, %925, %944, %842, %861
  %957 = load i64, ptr %799, align 8, !tbaa !96
  %958 = sub i64 %957, %807
  store i64 %958, ptr %799, align 8, !tbaa !96
  br label %959

959:                                              ; preds = %956, %804
  %960 = phi ptr [ %815, %956 ], [ %575, %804 ]
  store ptr %310, ptr %7, align 8, !tbaa !40
  store i32 0, ptr %10, align 8, !tbaa !35
  %961 = load i64, ptr %799, align 8
  %962 = getelementptr inbounds nuw i8, ptr %799, i64 8
  %963 = load i64, ptr %962, align 8
  %964 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %965 = load i64, ptr %964, align 8
  %966 = getelementptr inbounds nuw i8, ptr %960, i64 %961
  %967 = add i64 %963, %961
  %968 = getelementptr i8, ptr %313, i64 %961
  %969 = sub i64 0, %965
  %970 = getelementptr inbounds i8, ptr %966, i64 %969
  %971 = icmp sgt i64 %961, 65536
  %972 = getelementptr inbounds nuw i8, ptr %960, i64 %967
  %973 = icmp ugt ptr %972, %307
  %974 = select i1 %971, i1 true, i1 %973
  br i1 %974, label %978, label %975, !prof !105

975:                                              ; preds = %959
  %976 = load <2 x i64>, ptr %310, align 1, !tbaa !9
  store <2 x i64> %976, ptr %960, align 1, !tbaa !9
  %977 = icmp ugt i64 %961, 16
  br i1 %977, label %980, label %981, !prof !53

978:                                              ; preds = %959
  %979 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %960, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %799, ptr noundef nonnull %7, ptr noundef nonnull %311, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1114

980:                                              ; preds = %975
  call void @ZSTD_decompressSequencesLong_bmi2.cold.3(ptr %960, i64 %961, ptr %312) #20
  br label %981

981:                                              ; preds = %980, %975
  store ptr %968, ptr %7, align 8, !tbaa !40
  %982 = ptrtoint ptr %966 to i64
  %983 = sub i64 %982, %48
  %984 = icmp ugt i64 %965, %983
  br i1 %984, label %985, label %998

985:                                              ; preds = %981
  %986 = sub i64 %982, %308
  %987 = icmp ugt i64 %965, %986
  br i1 %987, label %2147, label %988, !prof !53

988:                                              ; preds = %985
  %989 = ptrtoint ptr %970 to i64
  %990 = sub i64 %989, %48
  %991 = getelementptr inbounds i8, ptr %30, i64 %990
  %992 = add i64 %963, %990
  %993 = icmp sgt i64 %992, 0
  br i1 %993, label %995, label %994

994:                                              ; preds = %988
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %966, ptr align 1 %991, i64 %963, i1 false)
  br label %1114

995:                                              ; preds = %988
  %996 = sub nsw i64 0, %990
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %966, ptr align 1 %991, i64 %996, i1 false)
  %997 = getelementptr inbounds nuw i8, ptr %966, i64 %996
  br label %998

998:                                              ; preds = %995, %981
  %999 = phi i64 [ %992, %995 ], [ %963, %981 ]
  %1000 = phi ptr [ %26, %995 ], [ %970, %981 ]
  %1001 = phi ptr [ %997, %995 ], [ %966, %981 ]
  %1002 = ptrtoint ptr %1001 to i64
  %1003 = icmp ugt i64 %965, 15
  br i1 %1003, label %1004, label %1020, !prof !91

1004:                                             ; preds = %998
  %1005 = getelementptr inbounds nuw i8, ptr %1001, i64 %999
  %1006 = load <2 x i64>, ptr %1000, align 1, !tbaa !9
  store <2 x i64> %1006, ptr %1001, align 1, !tbaa !9
  %1007 = icmp ult i64 %999, 17
  br i1 %1007, label %1114, label %1008

1008:                                             ; preds = %1004
  %1009 = getelementptr inbounds nuw i8, ptr %1001, i64 16
  br label %1010

1010:                                             ; preds = %1010, %1008
  %1011 = phi ptr [ %1009, %1008 ], [ %1018, %1010 ]
  %1012 = phi ptr [ %1000, %1008 ], [ %1016, %1010 ]
  %1013 = getelementptr inbounds nuw i8, ptr %1012, i64 16
  %1014 = load <2 x i64>, ptr %1013, align 1, !tbaa !9
  store <2 x i64> %1014, ptr %1011, align 1, !tbaa !9
  %1015 = getelementptr inbounds nuw i8, ptr %1011, i64 16
  %1016 = getelementptr inbounds nuw i8, ptr %1012, i64 32
  %1017 = load <2 x i64>, ptr %1016, align 1, !tbaa !9
  store <2 x i64> %1017, ptr %1015, align 1, !tbaa !9
  %1018 = getelementptr inbounds nuw i8, ptr %1011, i64 32
  %1019 = icmp ult ptr %1018, %1005
  br i1 %1019, label %1010, label %1114, !llvm.loop !101

1020:                                             ; preds = %998
  %1021 = icmp samesign ult i64 %965, 8
  br i1 %1021, label %1022, label %1044

1022:                                             ; preds = %1020
  %1023 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %965
  %1024 = load i32, ptr %1023, align 4, !tbaa !30
  %1025 = load i8, ptr %1000, align 1, !tbaa !9
  store i8 %1025, ptr %1001, align 1, !tbaa !9
  %1026 = getelementptr inbounds nuw i8, ptr %1000, i64 1
  %1027 = load i8, ptr %1026, align 1, !tbaa !9
  %1028 = getelementptr inbounds nuw i8, ptr %1001, i64 1
  store i8 %1027, ptr %1028, align 1, !tbaa !9
  %1029 = getelementptr inbounds nuw i8, ptr %1000, i64 2
  %1030 = load i8, ptr %1029, align 1, !tbaa !9
  %1031 = getelementptr inbounds nuw i8, ptr %1001, i64 2
  store i8 %1030, ptr %1031, align 1, !tbaa !9
  %1032 = getelementptr inbounds nuw i8, ptr %1000, i64 3
  %1033 = load i8, ptr %1032, align 1, !tbaa !9
  %1034 = getelementptr inbounds nuw i8, ptr %1001, i64 3
  store i8 %1033, ptr %1034, align 1, !tbaa !9
  %1035 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %965
  %1036 = load i32, ptr %1035, align 4, !tbaa !30
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds nuw i8, ptr %1000, i64 %1037
  %1039 = getelementptr inbounds nuw i8, ptr %1001, i64 4
  %1040 = load i32, ptr %1038, align 1
  store i32 %1040, ptr %1039, align 1
  %1041 = sext i32 %1024 to i64
  %1042 = sub nsw i64 0, %1041
  %1043 = getelementptr inbounds i8, ptr %1038, i64 %1042
  br label %1046

1044:                                             ; preds = %1020
  %1045 = load i64, ptr %1000, align 1
  store i64 %1045, ptr %1001, align 1
  br label %1046

1046:                                             ; preds = %1022, %1044
  %1047 = phi ptr [ %1043, %1022 ], [ %1000, %1044 ]
  %1048 = getelementptr inbounds nuw i8, ptr %1047, i64 8
  %1049 = getelementptr inbounds nuw i8, ptr %1001, i64 8
  %1050 = icmp ugt i64 %999, 8
  br i1 %1050, label %1051, label %1114

1051:                                             ; preds = %1046
  %1052 = ptrtoint ptr %1049 to i64
  %1053 = ptrtoint ptr %1048 to i64
  %1054 = sub i64 %1052, %1053
  %1055 = getelementptr i8, ptr %1001, i64 %999
  %1056 = icmp slt i64 %1054, 16
  br i1 %1056, label %1057, label %1098

1057:                                             ; preds = %1051
  %1058 = add i64 %999, %1002
  %1059 = add i64 %1002, 16
  %1060 = tail call i64 @llvm.umax.i64(i64 %1058, i64 %1059)
  %1061 = add i64 %1060, -9
  %1062 = sub i64 %1061, %1002
  %1063 = lshr i64 %1062, 3
  %1064 = add nuw nsw i64 %1063, 1
  %1065 = icmp ult i64 %1062, 24
  %1066 = icmp ult i64 %1054, 32
  %1067 = or i1 %1065, %1066
  br i1 %1067, label %1088, label %1068

1068:                                             ; preds = %1057
  %1069 = and i64 %1064, 4611686018427387900
  %1070 = shl i64 %1069, 3
  %1071 = getelementptr i8, ptr %1049, i64 %1070
  %1072 = shl i64 %1069, 3
  %1073 = getelementptr i8, ptr %1048, i64 %1072
  br label %1074

1074:                                             ; preds = %1074, %1068
  %1075 = phi i64 [ 0, %1068 ], [ %1084, %1074 ]
  %1076 = shl i64 %1075, 3
  %1077 = getelementptr i8, ptr %1049, i64 %1076
  %1078 = shl i64 %1075, 3
  %1079 = getelementptr i8, ptr %1048, i64 %1078
  %1080 = getelementptr i8, ptr %1079, i64 16
  %1081 = load <2 x i64>, ptr %1079, align 1
  %1082 = load <2 x i64>, ptr %1080, align 1
  %1083 = getelementptr i8, ptr %1077, i64 16
  store <2 x i64> %1081, ptr %1077, align 1
  store <2 x i64> %1082, ptr %1083, align 1
  %1084 = add nuw i64 %1075, 4
  %1085 = icmp eq i64 %1084, %1069
  br i1 %1085, label %1086, label %1074, !llvm.loop !178

1086:                                             ; preds = %1074
  %1087 = icmp eq i64 %1064, %1069
  br i1 %1087, label %1114, label %1088

1088:                                             ; preds = %1057, %1086
  %1089 = phi ptr [ %1049, %1057 ], [ %1071, %1086 ]
  %1090 = phi ptr [ %1048, %1057 ], [ %1073, %1086 ]
  br label %1091

1091:                                             ; preds = %1088, %1091
  %1092 = phi ptr [ %1095, %1091 ], [ %1089, %1088 ]
  %1093 = phi ptr [ %1096, %1091 ], [ %1090, %1088 ]
  %1094 = load i64, ptr %1093, align 1
  store i64 %1094, ptr %1092, align 1
  %1095 = getelementptr inbounds nuw i8, ptr %1092, i64 8
  %1096 = getelementptr inbounds nuw i8, ptr %1093, i64 8
  %1097 = icmp ult ptr %1095, %1055
  br i1 %1097, label %1091, label %1114, !llvm.loop !179

1098:                                             ; preds = %1051
  %1099 = add i64 %999, -8
  %1100 = load <2 x i64>, ptr %1048, align 1, !tbaa !9
  store <2 x i64> %1100, ptr %1049, align 1, !tbaa !9
  %1101 = icmp ult i64 %1099, 17
  br i1 %1101, label %1114, label %1102

1102:                                             ; preds = %1098
  %1103 = getelementptr inbounds nuw i8, ptr %1001, i64 24
  br label %1104

1104:                                             ; preds = %1104, %1102
  %1105 = phi ptr [ %1103, %1102 ], [ %1112, %1104 ]
  %1106 = phi ptr [ %1048, %1102 ], [ %1110, %1104 ]
  %1107 = getelementptr inbounds nuw i8, ptr %1106, i64 16
  %1108 = load <2 x i64>, ptr %1107, align 1, !tbaa !9
  store <2 x i64> %1108, ptr %1105, align 1, !tbaa !9
  %1109 = getelementptr inbounds nuw i8, ptr %1105, i64 16
  %1110 = getelementptr inbounds nuw i8, ptr %1106, i64 32
  %1111 = load <2 x i64>, ptr %1110, align 1, !tbaa !9
  store <2 x i64> %1111, ptr %1109, align 1, !tbaa !9
  %1112 = getelementptr inbounds nuw i8, ptr %1105, i64 32
  %1113 = icmp ult ptr %1112, %1055
  br i1 %1113, label %1104, label %1114, !llvm.loop !101

1114:                                             ; preds = %1104, %1091, %1010, %1086, %1098, %1004, %978, %994, %1046
  %1115 = phi i64 [ %979, %978 ], [ %967, %994 ], [ %967, %1046 ], [ %967, %1004 ], [ %967, %1098 ], [ %967, %1086 ], [ %967, %1010 ], [ %967, %1091 ], [ %967, %1104 ]
  %1116 = icmp ult i64 %1115, -119
  br i1 %1116, label %1117, label %2147

1117:                                             ; preds = %1114
  %1118 = add i64 %722, %578
  %1119 = icmp ugt i64 %658, %1118
  %1120 = select i1 %1119, ptr %30, ptr %26
  %1121 = getelementptr inbounds i8, ptr %1120, i64 %1118
  %1122 = sub i64 0, %658
  %1123 = getelementptr inbounds i8, ptr %1121, i64 %1122
  tail call void @llvm.prefetch.p0(ptr %1123, i32 0, i32 3, i32 1)
  %1124 = getelementptr inbounds nuw i8, ptr %1123, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1124, i32 0, i32 3, i32 1)
  store i64 %722, ptr %799, align 8, !tbaa !46
  %1125 = getelementptr inbounds nuw i8, ptr %799, i64 8
  store i64 %673, ptr %1125, align 8, !tbaa !46
  %1126 = getelementptr inbounds nuw i8, ptr %799, i64 16
  store i64 %658, ptr %1126, align 8, !tbaa !46
  %1127 = getelementptr inbounds nuw i8, ptr %960, i64 %1115
  br label %1458

1128:                                             ; preds = %795
  %1129 = getelementptr inbounds i8, ptr %801, i64 -32
  %1130 = load i64, ptr %799, align 8
  %1131 = getelementptr inbounds nuw i8, ptr %799, i64 8
  %1132 = load i64, ptr %1131, align 8
  %1133 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %1134 = load i64, ptr %1133, align 8
  %1135 = getelementptr inbounds nuw i8, ptr %575, i64 %1130
  %1136 = add i64 %1132, %1130
  %1137 = getelementptr inbounds nuw i8, ptr %796, i64 %1130
  %1138 = sub i64 0, %1134
  %1139 = getelementptr inbounds i8, ptr %1135, i64 %1138
  %1140 = icmp ugt ptr %1137, %576
  %1141 = getelementptr inbounds nuw i8, ptr %575, i64 %1136
  %1142 = icmp ugt ptr %1141, %1129
  %1143 = select i1 %1140, i1 true, i1 %1142
  br i1 %1143, label %1147, label %1144, !prof !105

1144:                                             ; preds = %1128
  %1145 = load <2 x i64>, ptr %796, align 1, !tbaa !9
  store <2 x i64> %1145, ptr %575, align 1, !tbaa !9
  %1146 = icmp ugt i64 %1130, 16
  br i1 %1146, label %1149, label %1150, !prof !53

1147:                                             ; preds = %1128
  %1148 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %575, ptr noundef %20, ptr noundef nonnull %1129, ptr noundef nonnull byval(%struct.seq_t) align 8 %799, ptr noundef nonnull %7, ptr noundef %576, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1441

1149:                                             ; preds = %1144
  call void @ZSTD_decompressSequencesLong_bmi2.cold.2(ptr %575, ptr %796, i64 %1130) #20
  br label %1150

1150:                                             ; preds = %1149, %1144
  store ptr %1137, ptr %7, align 8, !tbaa !40
  %1151 = ptrtoint ptr %1135 to i64
  %1152 = sub i64 %1151, %48
  %1153 = icmp ugt i64 %1134, %1152
  br i1 %1153, label %1154, label %1167

1154:                                             ; preds = %1150
  %1155 = sub i64 %1151, %308
  %1156 = icmp ugt i64 %1134, %1155
  br i1 %1156, label %1441, label %1157, !prof !53

1157:                                             ; preds = %1154
  %1158 = ptrtoint ptr %1139 to i64
  %1159 = sub i64 %1158, %48
  %1160 = getelementptr inbounds i8, ptr %30, i64 %1159
  %1161 = add i64 %1132, %1159
  %1162 = icmp sgt i64 %1161, 0
  br i1 %1162, label %1164, label %1163

1163:                                             ; preds = %1157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1135, ptr align 1 %1160, i64 %1132, i1 false)
  br label %1441

1164:                                             ; preds = %1157
  %1165 = sub nsw i64 0, %1159
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1135, ptr align 1 %1160, i64 %1165, i1 false)
  %1166 = getelementptr inbounds nuw i8, ptr %1135, i64 %1165
  br label %1167

1167:                                             ; preds = %1164, %1150
  %1168 = phi i64 [ %1161, %1164 ], [ %1132, %1150 ]
  %1169 = phi ptr [ %26, %1164 ], [ %1139, %1150 ]
  %1170 = phi ptr [ %1166, %1164 ], [ %1135, %1150 ]
  %1171 = ptrtoint ptr %1170 to i64
  %1172 = icmp ugt i64 %1134, 15
  br i1 %1172, label %1173, label %1189, !prof !91

1173:                                             ; preds = %1167
  %1174 = getelementptr inbounds nuw i8, ptr %1170, i64 %1168
  %1175 = load <2 x i64>, ptr %1169, align 1, !tbaa !9
  store <2 x i64> %1175, ptr %1170, align 1, !tbaa !9
  %1176 = icmp ult i64 %1168, 17
  br i1 %1176, label %1441, label %1177

1177:                                             ; preds = %1173
  %1178 = getelementptr inbounds nuw i8, ptr %1170, i64 16
  br label %1179

1179:                                             ; preds = %1179, %1177
  %1180 = phi ptr [ %1178, %1177 ], [ %1187, %1179 ]
  %1181 = phi ptr [ %1169, %1177 ], [ %1185, %1179 ]
  %1182 = getelementptr inbounds nuw i8, ptr %1181, i64 16
  %1183 = load <2 x i64>, ptr %1182, align 1, !tbaa !9
  store <2 x i64> %1183, ptr %1180, align 1, !tbaa !9
  %1184 = getelementptr inbounds nuw i8, ptr %1180, i64 16
  %1185 = getelementptr inbounds nuw i8, ptr %1181, i64 32
  %1186 = load <2 x i64>, ptr %1185, align 1, !tbaa !9
  store <2 x i64> %1186, ptr %1184, align 1, !tbaa !9
  %1187 = getelementptr inbounds nuw i8, ptr %1180, i64 32
  %1188 = icmp ult ptr %1187, %1174
  br i1 %1188, label %1179, label %1441, !llvm.loop !101

1189:                                             ; preds = %1167
  %1190 = icmp samesign ult i64 %1134, 8
  br i1 %1190, label %1191, label %1213

1191:                                             ; preds = %1189
  %1192 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1134
  %1193 = load i32, ptr %1192, align 4, !tbaa !30
  %1194 = load i8, ptr %1169, align 1, !tbaa !9
  store i8 %1194, ptr %1170, align 1, !tbaa !9
  %1195 = getelementptr inbounds nuw i8, ptr %1169, i64 1
  %1196 = load i8, ptr %1195, align 1, !tbaa !9
  %1197 = getelementptr inbounds nuw i8, ptr %1170, i64 1
  store i8 %1196, ptr %1197, align 1, !tbaa !9
  %1198 = getelementptr inbounds nuw i8, ptr %1169, i64 2
  %1199 = load i8, ptr %1198, align 1, !tbaa !9
  %1200 = getelementptr inbounds nuw i8, ptr %1170, i64 2
  store i8 %1199, ptr %1200, align 1, !tbaa !9
  %1201 = getelementptr inbounds nuw i8, ptr %1169, i64 3
  %1202 = load i8, ptr %1201, align 1, !tbaa !9
  %1203 = getelementptr inbounds nuw i8, ptr %1170, i64 3
  store i8 %1202, ptr %1203, align 1, !tbaa !9
  %1204 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1134
  %1205 = load i32, ptr %1204, align 4, !tbaa !30
  %1206 = zext i32 %1205 to i64
  %1207 = getelementptr inbounds nuw i8, ptr %1169, i64 %1206
  %1208 = getelementptr inbounds nuw i8, ptr %1170, i64 4
  %1209 = load i32, ptr %1207, align 1
  store i32 %1209, ptr %1208, align 1
  %1210 = sext i32 %1193 to i64
  %1211 = sub nsw i64 0, %1210
  %1212 = getelementptr inbounds i8, ptr %1207, i64 %1211
  br label %1215

1213:                                             ; preds = %1189
  %1214 = load i64, ptr %1169, align 1
  store i64 %1214, ptr %1170, align 1
  br label %1215

1215:                                             ; preds = %1191, %1213
  %1216 = phi ptr [ %1212, %1191 ], [ %1169, %1213 ]
  %1217 = getelementptr inbounds nuw i8, ptr %1216, i64 8
  %1218 = getelementptr inbounds nuw i8, ptr %1170, i64 8
  %1219 = icmp ugt i64 %1168, 8
  br i1 %1219, label %1220, label %1441

1220:                                             ; preds = %1215
  %1221 = ptrtoint ptr %1218 to i64
  %1222 = ptrtoint ptr %1217 to i64
  %1223 = sub i64 %1221, %1222
  %1224 = getelementptr i8, ptr %1170, i64 %1168
  %1225 = icmp slt i64 %1223, 16
  br i1 %1225, label %1226, label %1267

1226:                                             ; preds = %1220
  %1227 = add i64 %1168, %1171
  %1228 = add i64 %1171, 16
  %1229 = tail call i64 @llvm.umax.i64(i64 %1227, i64 %1228)
  %1230 = add i64 %1229, -9
  %1231 = sub i64 %1230, %1171
  %1232 = lshr i64 %1231, 3
  %1233 = add nuw nsw i64 %1232, 1
  %1234 = icmp ult i64 %1231, 24
  %1235 = icmp ult i64 %1223, 32
  %1236 = or i1 %1234, %1235
  br i1 %1236, label %1257, label %1237

1237:                                             ; preds = %1226
  %1238 = and i64 %1233, 4611686018427387900
  %1239 = shl i64 %1238, 3
  %1240 = getelementptr i8, ptr %1218, i64 %1239
  %1241 = shl i64 %1238, 3
  %1242 = getelementptr i8, ptr %1217, i64 %1241
  br label %1243

1243:                                             ; preds = %1243, %1237
  %1244 = phi i64 [ 0, %1237 ], [ %1253, %1243 ]
  %1245 = shl i64 %1244, 3
  %1246 = getelementptr i8, ptr %1218, i64 %1245
  %1247 = shl i64 %1244, 3
  %1248 = getelementptr i8, ptr %1217, i64 %1247
  %1249 = getelementptr i8, ptr %1248, i64 16
  %1250 = load <2 x i64>, ptr %1248, align 1
  %1251 = load <2 x i64>, ptr %1249, align 1
  %1252 = getelementptr i8, ptr %1246, i64 16
  store <2 x i64> %1250, ptr %1246, align 1
  store <2 x i64> %1251, ptr %1252, align 1
  %1253 = add nuw i64 %1244, 4
  %1254 = icmp eq i64 %1253, %1238
  br i1 %1254, label %1255, label %1243, !llvm.loop !180

1255:                                             ; preds = %1243
  %1256 = icmp eq i64 %1233, %1238
  br i1 %1256, label %1441, label %1257

1257:                                             ; preds = %1226, %1255
  %1258 = phi ptr [ %1218, %1226 ], [ %1240, %1255 ]
  %1259 = phi ptr [ %1217, %1226 ], [ %1242, %1255 ]
  br label %1260

1260:                                             ; preds = %1257, %1260
  %1261 = phi ptr [ %1264, %1260 ], [ %1258, %1257 ]
  %1262 = phi ptr [ %1265, %1260 ], [ %1259, %1257 ]
  %1263 = load i64, ptr %1262, align 1
  store i64 %1263, ptr %1261, align 1
  %1264 = getelementptr inbounds nuw i8, ptr %1261, i64 8
  %1265 = getelementptr inbounds nuw i8, ptr %1262, i64 8
  %1266 = icmp ult ptr %1264, %1224
  br i1 %1266, label %1260, label %1441, !llvm.loop !181

1267:                                             ; preds = %1220
  %1268 = add i64 %1168, -8
  %1269 = load <2 x i64>, ptr %1217, align 1, !tbaa !9
  store <2 x i64> %1269, ptr %1218, align 1, !tbaa !9
  %1270 = icmp ult i64 %1268, 17
  br i1 %1270, label %1441, label %1271

1271:                                             ; preds = %1267
  %1272 = getelementptr inbounds nuw i8, ptr %1170, i64 24
  br label %1273

1273:                                             ; preds = %1273, %1271
  %1274 = phi ptr [ %1272, %1271 ], [ %1281, %1273 ]
  %1275 = phi ptr [ %1217, %1271 ], [ %1279, %1273 ]
  %1276 = getelementptr inbounds nuw i8, ptr %1275, i64 16
  %1277 = load <2 x i64>, ptr %1276, align 1, !tbaa !9
  store <2 x i64> %1277, ptr %1274, align 1, !tbaa !9
  %1278 = getelementptr inbounds nuw i8, ptr %1274, i64 16
  %1279 = getelementptr inbounds nuw i8, ptr %1275, i64 32
  %1280 = load <2 x i64>, ptr %1279, align 1, !tbaa !9
  store <2 x i64> %1280, ptr %1278, align 1, !tbaa !9
  %1281 = getelementptr inbounds nuw i8, ptr %1274, i64 32
  %1282 = icmp ult ptr %1281, %1224
  br i1 %1282, label %1273, label %1441, !llvm.loop !101

1283:                                             ; preds = %786
  %1284 = and i32 %577, 7
  %1285 = zext nneg i32 %1284 to i64
  %1286 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %1285
  %1287 = load i64, ptr %1286, align 8
  %1288 = getelementptr inbounds nuw i8, ptr %1286, i64 8
  %1289 = load i64, ptr %1288, align 8
  %1290 = getelementptr inbounds nuw i8, ptr %1286, i64 16
  %1291 = load i64, ptr %1290, align 8
  %1292 = getelementptr inbounds nuw i8, ptr %575, i64 %1287
  %1293 = add i64 %1289, %1287
  %1294 = load ptr, ptr %7, align 8, !tbaa !40
  %1295 = getelementptr inbounds nuw i8, ptr %1294, i64 %1287
  %1296 = sub i64 0, %1291
  %1297 = getelementptr inbounds i8, ptr %1292, i64 %1296
  %1298 = icmp ugt ptr %1295, %576
  %1299 = getelementptr inbounds nuw i8, ptr %575, i64 %1293
  %1300 = icmp ugt ptr %1299, %307
  %1301 = select i1 %1298, i1 true, i1 %1300
  br i1 %1301, label %1305, label %1302, !prof !105

1302:                                             ; preds = %1283
  %1303 = load <2 x i64>, ptr %1294, align 1, !tbaa !9
  store <2 x i64> %1303, ptr %575, align 1, !tbaa !9
  %1304 = icmp ugt i64 %1287, 16
  br i1 %1304, label %1307, label %1308, !prof !53

1305:                                             ; preds = %1283
  %1306 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %575, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1286, ptr noundef nonnull %7, ptr noundef %576, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1441

1307:                                             ; preds = %1302
  call void @ZSTD_decompressSequencesLong_bmi2.cold.1(ptr %575, ptr %1294, i64 %1287) #20
  br label %1308

1308:                                             ; preds = %1307, %1302
  store ptr %1295, ptr %7, align 8, !tbaa !40
  %1309 = ptrtoint ptr %1292 to i64
  %1310 = sub i64 %1309, %48
  %1311 = icmp ugt i64 %1291, %1310
  br i1 %1311, label %1312, label %1325

1312:                                             ; preds = %1308
  %1313 = sub i64 %1309, %308
  %1314 = icmp ugt i64 %1291, %1313
  br i1 %1314, label %1441, label %1315, !prof !53

1315:                                             ; preds = %1312
  %1316 = ptrtoint ptr %1297 to i64
  %1317 = sub i64 %1316, %48
  %1318 = getelementptr inbounds i8, ptr %30, i64 %1317
  %1319 = add i64 %1289, %1317
  %1320 = icmp sgt i64 %1319, 0
  br i1 %1320, label %1322, label %1321

1321:                                             ; preds = %1315
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1292, ptr align 1 %1318, i64 %1289, i1 false)
  br label %1441

1322:                                             ; preds = %1315
  %1323 = sub nsw i64 0, %1317
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1292, ptr align 1 %1318, i64 %1323, i1 false)
  %1324 = getelementptr inbounds nuw i8, ptr %1292, i64 %1323
  br label %1325

1325:                                             ; preds = %1322, %1308
  %1326 = phi i64 [ %1319, %1322 ], [ %1289, %1308 ]
  %1327 = phi ptr [ %26, %1322 ], [ %1297, %1308 ]
  %1328 = phi ptr [ %1324, %1322 ], [ %1292, %1308 ]
  %1329 = ptrtoint ptr %1328 to i64
  %1330 = icmp ugt i64 %1291, 15
  br i1 %1330, label %1331, label %1347, !prof !91

1331:                                             ; preds = %1325
  %1332 = getelementptr inbounds nuw i8, ptr %1328, i64 %1326
  %1333 = load <2 x i64>, ptr %1327, align 1, !tbaa !9
  store <2 x i64> %1333, ptr %1328, align 1, !tbaa !9
  %1334 = icmp ult i64 %1326, 17
  br i1 %1334, label %1441, label %1335

1335:                                             ; preds = %1331
  %1336 = getelementptr inbounds nuw i8, ptr %1328, i64 16
  br label %1337

1337:                                             ; preds = %1337, %1335
  %1338 = phi ptr [ %1336, %1335 ], [ %1345, %1337 ]
  %1339 = phi ptr [ %1327, %1335 ], [ %1343, %1337 ]
  %1340 = getelementptr inbounds nuw i8, ptr %1339, i64 16
  %1341 = load <2 x i64>, ptr %1340, align 1, !tbaa !9
  store <2 x i64> %1341, ptr %1338, align 1, !tbaa !9
  %1342 = getelementptr inbounds nuw i8, ptr %1338, i64 16
  %1343 = getelementptr inbounds nuw i8, ptr %1339, i64 32
  %1344 = load <2 x i64>, ptr %1343, align 1, !tbaa !9
  store <2 x i64> %1344, ptr %1342, align 1, !tbaa !9
  %1345 = getelementptr inbounds nuw i8, ptr %1338, i64 32
  %1346 = icmp ult ptr %1345, %1332
  br i1 %1346, label %1337, label %1441, !llvm.loop !101

1347:                                             ; preds = %1325
  %1348 = icmp samesign ult i64 %1291, 8
  br i1 %1348, label %1349, label %1371

1349:                                             ; preds = %1347
  %1350 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1291
  %1351 = load i32, ptr %1350, align 4, !tbaa !30
  %1352 = load i8, ptr %1327, align 1, !tbaa !9
  store i8 %1352, ptr %1328, align 1, !tbaa !9
  %1353 = getelementptr inbounds nuw i8, ptr %1327, i64 1
  %1354 = load i8, ptr %1353, align 1, !tbaa !9
  %1355 = getelementptr inbounds nuw i8, ptr %1328, i64 1
  store i8 %1354, ptr %1355, align 1, !tbaa !9
  %1356 = getelementptr inbounds nuw i8, ptr %1327, i64 2
  %1357 = load i8, ptr %1356, align 1, !tbaa !9
  %1358 = getelementptr inbounds nuw i8, ptr %1328, i64 2
  store i8 %1357, ptr %1358, align 1, !tbaa !9
  %1359 = getelementptr inbounds nuw i8, ptr %1327, i64 3
  %1360 = load i8, ptr %1359, align 1, !tbaa !9
  %1361 = getelementptr inbounds nuw i8, ptr %1328, i64 3
  store i8 %1360, ptr %1361, align 1, !tbaa !9
  %1362 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1291
  %1363 = load i32, ptr %1362, align 4, !tbaa !30
  %1364 = zext i32 %1363 to i64
  %1365 = getelementptr inbounds nuw i8, ptr %1327, i64 %1364
  %1366 = getelementptr inbounds nuw i8, ptr %1328, i64 4
  %1367 = load i32, ptr %1365, align 1
  store i32 %1367, ptr %1366, align 1
  %1368 = sext i32 %1351 to i64
  %1369 = sub nsw i64 0, %1368
  %1370 = getelementptr inbounds i8, ptr %1365, i64 %1369
  br label %1373

1371:                                             ; preds = %1347
  %1372 = load i64, ptr %1327, align 1
  store i64 %1372, ptr %1328, align 1
  br label %1373

1373:                                             ; preds = %1349, %1371
  %1374 = phi ptr [ %1370, %1349 ], [ %1327, %1371 ]
  %1375 = getelementptr inbounds nuw i8, ptr %1374, i64 8
  %1376 = getelementptr inbounds nuw i8, ptr %1328, i64 8
  %1377 = icmp ugt i64 %1326, 8
  br i1 %1377, label %1378, label %1441

1378:                                             ; preds = %1373
  %1379 = ptrtoint ptr %1376 to i64
  %1380 = ptrtoint ptr %1375 to i64
  %1381 = sub i64 %1379, %1380
  %1382 = getelementptr i8, ptr %1328, i64 %1326
  %1383 = icmp slt i64 %1381, 16
  br i1 %1383, label %1384, label %1425

1384:                                             ; preds = %1378
  %1385 = add i64 %1326, %1329
  %1386 = add i64 %1329, 16
  %1387 = tail call i64 @llvm.umax.i64(i64 %1385, i64 %1386)
  %1388 = add i64 %1387, -9
  %1389 = sub i64 %1388, %1329
  %1390 = lshr i64 %1389, 3
  %1391 = add nuw nsw i64 %1390, 1
  %1392 = icmp ult i64 %1389, 24
  %1393 = icmp ult i64 %1381, 32
  %1394 = or i1 %1392, %1393
  br i1 %1394, label %1415, label %1395

1395:                                             ; preds = %1384
  %1396 = and i64 %1391, 4611686018427387900
  %1397 = shl i64 %1396, 3
  %1398 = getelementptr i8, ptr %1376, i64 %1397
  %1399 = shl i64 %1396, 3
  %1400 = getelementptr i8, ptr %1375, i64 %1399
  br label %1401

1401:                                             ; preds = %1401, %1395
  %1402 = phi i64 [ 0, %1395 ], [ %1411, %1401 ]
  %1403 = shl i64 %1402, 3
  %1404 = getelementptr i8, ptr %1376, i64 %1403
  %1405 = shl i64 %1402, 3
  %1406 = getelementptr i8, ptr %1375, i64 %1405
  %1407 = getelementptr i8, ptr %1406, i64 16
  %1408 = load <2 x i64>, ptr %1406, align 1
  %1409 = load <2 x i64>, ptr %1407, align 1
  %1410 = getelementptr i8, ptr %1404, i64 16
  store <2 x i64> %1408, ptr %1404, align 1
  store <2 x i64> %1409, ptr %1410, align 1
  %1411 = add nuw i64 %1402, 4
  %1412 = icmp eq i64 %1411, %1396
  br i1 %1412, label %1413, label %1401, !llvm.loop !182

1413:                                             ; preds = %1401
  %1414 = icmp eq i64 %1391, %1396
  br i1 %1414, label %1441, label %1415

1415:                                             ; preds = %1384, %1413
  %1416 = phi ptr [ %1376, %1384 ], [ %1398, %1413 ]
  %1417 = phi ptr [ %1375, %1384 ], [ %1400, %1413 ]
  br label %1418

1418:                                             ; preds = %1415, %1418
  %1419 = phi ptr [ %1422, %1418 ], [ %1416, %1415 ]
  %1420 = phi ptr [ %1423, %1418 ], [ %1417, %1415 ]
  %1421 = load i64, ptr %1420, align 1
  store i64 %1421, ptr %1419, align 1
  %1422 = getelementptr inbounds nuw i8, ptr %1419, i64 8
  %1423 = getelementptr inbounds nuw i8, ptr %1420, i64 8
  %1424 = icmp ult ptr %1422, %1382
  br i1 %1424, label %1418, label %1441, !llvm.loop !183

1425:                                             ; preds = %1378
  %1426 = add i64 %1326, -8
  %1427 = load <2 x i64>, ptr %1375, align 1, !tbaa !9
  store <2 x i64> %1427, ptr %1376, align 1, !tbaa !9
  %1428 = icmp ult i64 %1426, 17
  br i1 %1428, label %1441, label %1429

1429:                                             ; preds = %1425
  %1430 = getelementptr inbounds nuw i8, ptr %1328, i64 24
  br label %1431

1431:                                             ; preds = %1431, %1429
  %1432 = phi ptr [ %1430, %1429 ], [ %1439, %1431 ]
  %1433 = phi ptr [ %1375, %1429 ], [ %1437, %1431 ]
  %1434 = getelementptr inbounds nuw i8, ptr %1433, i64 16
  %1435 = load <2 x i64>, ptr %1434, align 1, !tbaa !9
  store <2 x i64> %1435, ptr %1432, align 1, !tbaa !9
  %1436 = getelementptr inbounds nuw i8, ptr %1432, i64 16
  %1437 = getelementptr inbounds nuw i8, ptr %1433, i64 32
  %1438 = load <2 x i64>, ptr %1437, align 1, !tbaa !9
  store <2 x i64> %1438, ptr %1436, align 1, !tbaa !9
  %1439 = getelementptr inbounds nuw i8, ptr %1432, i64 32
  %1440 = icmp ult ptr %1439, %1382
  br i1 %1440, label %1431, label %1441, !llvm.loop !101

1441:                                             ; preds = %1373, %1321, %1312, %1305, %1331, %1425, %1413, %1337, %1418, %1431, %1215, %1163, %1154, %1147, %1173, %1267, %1255, %1179, %1260, %1273
  %1442 = phi i64 [ %1148, %1147 ], [ %1136, %1163 ], [ -20, %1154 ], [ %1136, %1215 ], [ %1136, %1173 ], [ %1136, %1267 ], [ %1136, %1255 ], [ %1136, %1179 ], [ %1136, %1260 ], [ %1136, %1273 ], [ %1306, %1305 ], [ %1293, %1321 ], [ -20, %1312 ], [ %1293, %1373 ], [ %1293, %1331 ], [ %1293, %1425 ], [ %1293, %1413 ], [ %1293, %1337 ], [ %1293, %1418 ], [ %1293, %1431 ]
  %1443 = icmp ult i64 %1442, -119
  br i1 %1443, label %1444, label %2147

1444:                                             ; preds = %1441
  %1445 = add i64 %722, %578
  %1446 = icmp ugt i64 %658, %1445
  %1447 = select i1 %1446, ptr %30, ptr %26
  %1448 = getelementptr inbounds i8, ptr %1447, i64 %1445
  %1449 = sub i64 0, %658
  %1450 = getelementptr inbounds i8, ptr %1448, i64 %1449
  tail call void @llvm.prefetch.p0(ptr %1450, i32 0, i32 3, i32 1)
  %1451 = getelementptr inbounds nuw i8, ptr %1450, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1451, i32 0, i32 3, i32 1)
  %1452 = and i32 %577, 7
  %1453 = zext nneg i32 %1452 to i64
  %1454 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %1453
  store i64 %722, ptr %1454, align 8, !tbaa !46
  %1455 = getelementptr inbounds nuw i8, ptr %1454, i64 8
  store i64 %673, ptr %1455, align 8, !tbaa !46
  %1456 = getelementptr inbounds nuw i8, ptr %1454, i64 16
  store i64 %658, ptr %1456, align 8, !tbaa !46
  %1457 = getelementptr inbounds nuw i8, ptr %575, i64 %1442
  br label %1458

1458:                                             ; preds = %1444, %1117
  %1459 = phi i64 [ %1445, %1444 ], [ %1118, %1117 ]
  %1460 = phi ptr [ %576, %1444 ], [ %311, %1117 ]
  %1461 = phi ptr [ %1457, %1444 ], [ %1127, %1117 ]
  %1462 = add i64 %1459, %673
  %1463 = add nuw i32 %577, 1
  %1464 = icmp eq i32 %1463, %5
  br i1 %1464, label %1465, label %565, !llvm.loop !112

1465:                                             ; preds = %1458, %289
  %1466 = phi i32 [ %292, %289 ], [ %788, %1458 ]
  %1467 = phi ptr [ %293, %289 ], [ %787, %1458 ]
  %1468 = phi i64 [ %294, %289 ], [ %659, %1458 ]
  %1469 = phi i64 [ %295, %289 ], [ %657, %1458 ]
  %1470 = phi i64 [ %296, %289 ], [ %658, %1458 ]
  %1471 = phi i32 [ %301, %289 ], [ %5, %1458 ]
  %1472 = phi ptr [ %24, %289 ], [ %1460, %1458 ]
  %1473 = phi ptr [ %1, %289 ], [ %1461, %1458 ]
  %1474 = icmp eq ptr %1467, %3
  %1475 = icmp eq i32 %1466, 64
  %1476 = select i1 %1474, i1 %1475, i1 false
  br i1 %1476, label %1477, label %2147

1477:                                             ; preds = %1465
  %1478 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1471, i32 %46), !nosanitize !90
  %1479 = extractvalue { i32, i1 } %1478, 1, !nosanitize !90
  br i1 %1479, label %367, label %1480, !prof !113, !nosanitize !90

1480:                                             ; preds = %1477
  %1481 = extractvalue { i32, i1 } %1478, 0
  %1482 = icmp slt i32 %1481, %5
  br i1 %1482, label %1483, label %1491

1483:                                             ; preds = %1480
  %1484 = getelementptr inbounds i8, ptr %20, i64 -32
  %1485 = ptrtoint ptr %28 to i64
  %1486 = ptrtoint ptr %20 to i64
  %1487 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %1488 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %1489 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %1490 = getelementptr i8, ptr %0, i64 30372
  br label %1499

1491:                                             ; preds = %2142, %1480
  %1492 = phi ptr [ %1472, %1480 ], [ %2143, %2142 ]
  %1493 = phi ptr [ %1473, %1480 ], [ %2144, %2142 ]
  %1494 = trunc i64 %1470 to i32
  store i32 %1494, ptr %34, align 4, !tbaa !30
  %1495 = trunc i64 %1469 to i32
  store i32 %1495, ptr %38, align 4, !tbaa !30
  %1496 = trunc i64 %1468 to i32
  store i32 %1496, ptr %42, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #18
  %1497 = load i32, ptr %10, align 8, !tbaa !35
  %1498 = load ptr, ptr %7, align 8, !tbaa !40
  br label %2149

1499:                                             ; preds = %1483, %2142
  %1500 = phi i32 [ %1481, %1483 ], [ %2145, %2142 ]
  %1501 = phi ptr [ %1473, %1483 ], [ %2144, %2142 ]
  %1502 = phi ptr [ %1472, %1483 ], [ %2143, %2142 ]
  %1503 = and i32 %1500, 7
  %1504 = zext nneg i32 %1503 to i64
  %1505 = getelementptr inbounds nuw [8 x %struct.seq_t], ptr %8, i64 0, i64 %1504
  %1506 = load i32, ptr %10, align 8, !tbaa !35
  %1507 = icmp eq i32 %1506, 2
  br i1 %1507, label %1508, label %1983

1508:                                             ; preds = %1499
  %1509 = load ptr, ptr %7, align 8, !tbaa !40
  %1510 = load i64, ptr %1505, align 8, !tbaa !96
  %1511 = getelementptr inbounds nuw i8, ptr %1509, i64 %1510
  %1512 = load ptr, ptr %23, align 8, !tbaa !34
  %1513 = icmp ugt ptr %1511, %1512
  br i1 %1513, label %1514, label %1828

1514:                                             ; preds = %1508
  %1515 = ptrtoint ptr %1512 to i64
  %1516 = ptrtoint ptr %1509 to i64
  %1517 = sub i64 %1515, %1516
  %1518 = icmp eq ptr %1512, %1509
  br i1 %1518, label %1669, label %1519

1519:                                             ; preds = %1514
  %1520 = ptrtoint ptr %1501 to i64
  %1521 = sub i64 %1486, %1520
  %1522 = icmp ugt i64 %1517, %1521
  br i1 %1522, label %2147, label %1523

1523:                                             ; preds = %1519
  %1524 = sub i64 %1520, %1516
  %1525 = getelementptr inbounds nuw i8, ptr %1501, i64 %1517
  %1526 = icmp ult i64 %1517, 8
  %1527 = icmp sgt i64 %1524, -8
  %1528 = or i1 %1527, %1526
  br i1 %1528, label %1529, label %1583

1529:                                             ; preds = %1523
  %1530 = add i64 %1520, %1515
  %1531 = sub i64 %1530, %1516
  %1532 = add i64 %1520, 1
  %1533 = tail call i64 @llvm.umax.i64(i64 %1531, i64 %1532)
  %1534 = sub i64 %1533, %1520
  %1535 = icmp ult i64 %1534, 4
  %1536 = icmp ult i64 %1524, 32
  %1537 = or i1 %1535, %1536
  br i1 %1537, label %1573, label %1538

1538:                                             ; preds = %1529
  %1539 = icmp ult i64 %1534, 32
  br i1 %1539, label %1559, label %1540

1540:                                             ; preds = %1538
  %1541 = and i64 %1534, -32
  br label %1542

1542:                                             ; preds = %1542, %1540
  %1543 = phi i64 [ 0, %1540 ], [ %1550, %1542 ]
  %1544 = getelementptr i8, ptr %1501, i64 %1543
  %1545 = getelementptr i8, ptr %1509, i64 %1543
  %1546 = getelementptr i8, ptr %1545, i64 16
  %1547 = load <16 x i8>, ptr %1545, align 1, !tbaa !9
  %1548 = load <16 x i8>, ptr %1546, align 1, !tbaa !9
  %1549 = getelementptr i8, ptr %1544, i64 16
  store <16 x i8> %1547, ptr %1544, align 1, !tbaa !9
  store <16 x i8> %1548, ptr %1549, align 1, !tbaa !9
  %1550 = add nuw i64 %1543, 32
  %1551 = icmp eq i64 %1550, %1541
  br i1 %1551, label %1552, label %1542, !llvm.loop !184

1552:                                             ; preds = %1542
  %1553 = icmp eq i64 %1534, %1541
  br i1 %1553, label %1666, label %1554

1554:                                             ; preds = %1552
  %1555 = getelementptr i8, ptr %1501, i64 %1541
  %1556 = getelementptr i8, ptr %1509, i64 %1541
  %1557 = and i64 %1534, 28
  %1558 = icmp eq i64 %1557, 0
  br i1 %1558, label %1573, label %1559

1559:                                             ; preds = %1554, %1538
  %1560 = phi i64 [ %1541, %1554 ], [ 0, %1538 ]
  %1561 = and i64 %1534, -4
  %1562 = getelementptr i8, ptr %1501, i64 %1561
  %1563 = getelementptr i8, ptr %1509, i64 %1561
  br label %1564

1564:                                             ; preds = %1564, %1559
  %1565 = phi i64 [ %1560, %1559 ], [ %1569, %1564 ]
  %1566 = getelementptr i8, ptr %1501, i64 %1565
  %1567 = getelementptr i8, ptr %1509, i64 %1565
  %1568 = load <4 x i8>, ptr %1567, align 1, !tbaa !9
  store <4 x i8> %1568, ptr %1566, align 1, !tbaa !9
  %1569 = add nuw i64 %1565, 4
  %1570 = icmp eq i64 %1569, %1561
  br i1 %1570, label %1571, label %1564, !llvm.loop !185

1571:                                             ; preds = %1564
  %1572 = icmp eq i64 %1534, %1561
  br i1 %1572, label %1666, label %1573

1573:                                             ; preds = %1554, %1571, %1529
  %1574 = phi ptr [ %1501, %1529 ], [ %1555, %1554 ], [ %1562, %1571 ]
  %1575 = phi ptr [ %1509, %1529 ], [ %1556, %1554 ], [ %1563, %1571 ]
  br label %1576

1576:                                             ; preds = %1573, %1576
  %1577 = phi ptr [ %1581, %1576 ], [ %1574, %1573 ]
  %1578 = phi ptr [ %1579, %1576 ], [ %1575, %1573 ]
  %1579 = getelementptr inbounds nuw i8, ptr %1578, i64 1
  %1580 = load i8, ptr %1578, align 1, !tbaa !9
  %1581 = getelementptr inbounds nuw i8, ptr %1577, i64 1
  store i8 %1580, ptr %1577, align 1, !tbaa !9
  %1582 = icmp ult ptr %1581, %1525
  br i1 %1582, label %1576, label %1666, !llvm.loop !186

1583:                                             ; preds = %1523
  %1584 = icmp sgt i64 %1517, 31
  %1585 = icmp samesign ult i64 %1524, -16
  %1586 = and i1 %1585, %1584
  br i1 %1586, label %1587, label %1607

1587:                                             ; preds = %1583
  %1588 = getelementptr inbounds i8, ptr %1525, i64 -32
  %1589 = add nsw i64 %1517, -32
  %1590 = getelementptr inbounds nuw i8, ptr %1501, i64 %1589
  %1591 = load <2 x i64>, ptr %1509, align 1, !tbaa !9
  store <2 x i64> %1591, ptr %1501, align 1, !tbaa !9
  %1592 = icmp samesign ult i64 %1589, 17
  br i1 %1592, label %1605, label %1593

1593:                                             ; preds = %1587
  %1594 = getelementptr inbounds nuw i8, ptr %1501, i64 16
  br label %1595

1595:                                             ; preds = %1595, %1593
  %1596 = phi ptr [ %1594, %1593 ], [ %1603, %1595 ]
  %1597 = phi ptr [ %1509, %1593 ], [ %1601, %1595 ]
  %1598 = getelementptr inbounds nuw i8, ptr %1597, i64 16
  %1599 = load <2 x i64>, ptr %1598, align 1, !tbaa !9
  store <2 x i64> %1599, ptr %1596, align 1, !tbaa !9
  %1600 = getelementptr inbounds nuw i8, ptr %1596, i64 16
  %1601 = getelementptr inbounds nuw i8, ptr %1597, i64 32
  %1602 = load <2 x i64>, ptr %1601, align 1, !tbaa !9
  store <2 x i64> %1602, ptr %1600, align 1, !tbaa !9
  %1603 = getelementptr inbounds nuw i8, ptr %1596, i64 32
  %1604 = icmp ult ptr %1603, %1590
  br i1 %1604, label %1595, label %1605, !llvm.loop !101

1605:                                             ; preds = %1595, %1587
  %1606 = getelementptr inbounds i8, ptr %1509, i64 %1589
  br label %1607

1607:                                             ; preds = %1583, %1605
  %1608 = phi ptr [ %1588, %1605 ], [ %1501, %1583 ]
  %1609 = phi ptr [ %1606, %1605 ], [ %1509, %1583 ]
  %1610 = ptrtoint ptr %1608 to i64
  %1611 = add i64 %1520, %1515
  %1612 = sub i64 %1611, %1516
  %1613 = add nuw i64 %1610, 1
  %1614 = tail call i64 @llvm.umax.i64(i64 %1612, i64 %1613)
  %1615 = sub i64 %1614, %1610
  %1616 = icmp ult i64 %1615, 4
  %1617 = ptrtoint ptr %1609 to i64
  %1618 = sub i64 %1610, %1617
  %1619 = icmp ult i64 %1618, 32
  %1620 = select i1 %1616, i1 true, i1 %1619
  br i1 %1620, label %1656, label %1621

1621:                                             ; preds = %1607
  %1622 = icmp ult i64 %1615, 32
  br i1 %1622, label %1642, label %1623

1623:                                             ; preds = %1621
  %1624 = and i64 %1615, -32
  br label %1625

1625:                                             ; preds = %1625, %1623
  %1626 = phi i64 [ 0, %1623 ], [ %1633, %1625 ]
  %1627 = getelementptr i8, ptr %1608, i64 %1626
  %1628 = getelementptr i8, ptr %1609, i64 %1626
  %1629 = getelementptr i8, ptr %1628, i64 16
  %1630 = load <16 x i8>, ptr %1628, align 1, !tbaa !9
  %1631 = load <16 x i8>, ptr %1629, align 1, !tbaa !9
  %1632 = getelementptr i8, ptr %1627, i64 16
  store <16 x i8> %1630, ptr %1627, align 1, !tbaa !9
  store <16 x i8> %1631, ptr %1632, align 1, !tbaa !9
  %1633 = add nuw i64 %1626, 32
  %1634 = icmp eq i64 %1633, %1624
  br i1 %1634, label %1635, label %1625, !llvm.loop !187

1635:                                             ; preds = %1625
  %1636 = icmp eq i64 %1615, %1624
  br i1 %1636, label %1666, label %1637

1637:                                             ; preds = %1635
  %1638 = getelementptr i8, ptr %1608, i64 %1624
  %1639 = getelementptr i8, ptr %1609, i64 %1624
  %1640 = and i64 %1615, 28
  %1641 = icmp eq i64 %1640, 0
  br i1 %1641, label %1656, label %1642

1642:                                             ; preds = %1637, %1621
  %1643 = phi i64 [ %1624, %1637 ], [ 0, %1621 ]
  %1644 = and i64 %1615, -4
  %1645 = getelementptr i8, ptr %1608, i64 %1644
  %1646 = getelementptr i8, ptr %1609, i64 %1644
  br label %1647

1647:                                             ; preds = %1647, %1642
  %1648 = phi i64 [ %1643, %1642 ], [ %1652, %1647 ]
  %1649 = getelementptr i8, ptr %1608, i64 %1648
  %1650 = getelementptr i8, ptr %1609, i64 %1648
  %1651 = load <4 x i8>, ptr %1650, align 1, !tbaa !9
  store <4 x i8> %1651, ptr %1649, align 1, !tbaa !9
  %1652 = add nuw i64 %1648, 4
  %1653 = icmp eq i64 %1652, %1644
  br i1 %1653, label %1654, label %1647, !llvm.loop !188

1654:                                             ; preds = %1647
  %1655 = icmp eq i64 %1615, %1644
  br i1 %1655, label %1666, label %1656

1656:                                             ; preds = %1637, %1654, %1607
  %1657 = phi ptr [ %1608, %1607 ], [ %1638, %1637 ], [ %1645, %1654 ]
  %1658 = phi ptr [ %1609, %1607 ], [ %1639, %1637 ], [ %1646, %1654 ]
  br label %1659

1659:                                             ; preds = %1656, %1659
  %1660 = phi ptr [ %1664, %1659 ], [ %1657, %1656 ]
  %1661 = phi ptr [ %1662, %1659 ], [ %1658, %1656 ]
  %1662 = getelementptr inbounds nuw i8, ptr %1661, i64 1
  %1663 = load i8, ptr %1661, align 1, !tbaa !9
  %1664 = getelementptr inbounds nuw i8, ptr %1660, i64 1
  store i8 %1663, ptr %1660, align 1, !tbaa !9
  %1665 = icmp ult ptr %1664, %1525
  br i1 %1665, label %1659, label %1666, !llvm.loop !189

1666:                                             ; preds = %1659, %1576, %1635, %1654, %1552, %1571
  %1667 = load i64, ptr %1505, align 8, !tbaa !96
  %1668 = sub i64 %1667, %1517
  store i64 %1668, ptr %1505, align 8, !tbaa !96
  br label %1669

1669:                                             ; preds = %1666, %1514
  %1670 = phi ptr [ %1525, %1666 ], [ %1501, %1514 ]
  store ptr %1487, ptr %7, align 8, !tbaa !40
  store i32 0, ptr %10, align 8, !tbaa !35
  %1671 = load i64, ptr %1505, align 8
  %1672 = getelementptr inbounds nuw i8, ptr %1505, i64 8
  %1673 = load i64, ptr %1672, align 8
  %1674 = getelementptr inbounds nuw i8, ptr %1505, i64 16
  %1675 = load i64, ptr %1674, align 8
  %1676 = getelementptr inbounds nuw i8, ptr %1670, i64 %1671
  %1677 = add i64 %1673, %1671
  %1678 = getelementptr i8, ptr %1490, i64 %1671
  %1679 = sub i64 0, %1675
  %1680 = getelementptr inbounds i8, ptr %1676, i64 %1679
  %1681 = icmp sgt i64 %1671, 65536
  %1682 = getelementptr inbounds nuw i8, ptr %1670, i64 %1677
  %1683 = icmp ugt ptr %1682, %1484
  %1684 = select i1 %1681, i1 true, i1 %1683
  br i1 %1684, label %1688, label %1685, !prof !105

1685:                                             ; preds = %1669
  %1686 = load <2 x i64>, ptr %1487, align 1, !tbaa !9
  store <2 x i64> %1686, ptr %1670, align 1, !tbaa !9
  %1687 = icmp ugt i64 %1671, 16
  br i1 %1687, label %1690, label %1691, !prof !53

1688:                                             ; preds = %1669
  %1689 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1670, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1505, ptr noundef nonnull %7, ptr noundef nonnull %1488, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %1824

1690:                                             ; preds = %1685
  call void @ZSTD_decompressSequencesLong_bmi2.cold.6(ptr %1670, i64 %1671, ptr %1489) #20
  br label %1691

1691:                                             ; preds = %1690, %1685
  store ptr %1678, ptr %7, align 8, !tbaa !40
  %1692 = ptrtoint ptr %1676 to i64
  %1693 = sub i64 %1692, %48
  %1694 = icmp ugt i64 %1675, %1693
  br i1 %1694, label %1695, label %1708

1695:                                             ; preds = %1691
  %1696 = sub i64 %1692, %1485
  %1697 = icmp ugt i64 %1675, %1696
  br i1 %1697, label %2147, label %1698, !prof !53

1698:                                             ; preds = %1695
  %1699 = ptrtoint ptr %1680 to i64
  %1700 = sub i64 %1699, %48
  %1701 = getelementptr inbounds i8, ptr %30, i64 %1700
  %1702 = add i64 %1673, %1700
  %1703 = icmp sgt i64 %1702, 0
  br i1 %1703, label %1705, label %1704

1704:                                             ; preds = %1698
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1676, ptr align 1 %1701, i64 %1673, i1 false)
  br label %1824

1705:                                             ; preds = %1698
  %1706 = sub nsw i64 0, %1700
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1676, ptr align 1 %1701, i64 %1706, i1 false)
  %1707 = getelementptr inbounds nuw i8, ptr %1676, i64 %1706
  br label %1708

1708:                                             ; preds = %1705, %1691
  %1709 = phi i64 [ %1702, %1705 ], [ %1673, %1691 ]
  %1710 = phi ptr [ %26, %1705 ], [ %1680, %1691 ]
  %1711 = phi ptr [ %1707, %1705 ], [ %1676, %1691 ]
  %1712 = ptrtoint ptr %1711 to i64
  %1713 = icmp ugt i64 %1675, 15
  br i1 %1713, label %1714, label %1730, !prof !91

1714:                                             ; preds = %1708
  %1715 = getelementptr inbounds nuw i8, ptr %1711, i64 %1709
  %1716 = load <2 x i64>, ptr %1710, align 1, !tbaa !9
  store <2 x i64> %1716, ptr %1711, align 1, !tbaa !9
  %1717 = icmp ult i64 %1709, 17
  br i1 %1717, label %1824, label %1718

1718:                                             ; preds = %1714
  %1719 = getelementptr inbounds nuw i8, ptr %1711, i64 16
  br label %1720

1720:                                             ; preds = %1720, %1718
  %1721 = phi ptr [ %1719, %1718 ], [ %1728, %1720 ]
  %1722 = phi ptr [ %1710, %1718 ], [ %1726, %1720 ]
  %1723 = getelementptr inbounds nuw i8, ptr %1722, i64 16
  %1724 = load <2 x i64>, ptr %1723, align 1, !tbaa !9
  store <2 x i64> %1724, ptr %1721, align 1, !tbaa !9
  %1725 = getelementptr inbounds nuw i8, ptr %1721, i64 16
  %1726 = getelementptr inbounds nuw i8, ptr %1722, i64 32
  %1727 = load <2 x i64>, ptr %1726, align 1, !tbaa !9
  store <2 x i64> %1727, ptr %1725, align 1, !tbaa !9
  %1728 = getelementptr inbounds nuw i8, ptr %1721, i64 32
  %1729 = icmp ult ptr %1728, %1715
  br i1 %1729, label %1720, label %1824, !llvm.loop !101

1730:                                             ; preds = %1708
  %1731 = icmp samesign ult i64 %1675, 8
  br i1 %1731, label %1732, label %1754

1732:                                             ; preds = %1730
  %1733 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1675
  %1734 = load i32, ptr %1733, align 4, !tbaa !30
  %1735 = load i8, ptr %1710, align 1, !tbaa !9
  store i8 %1735, ptr %1711, align 1, !tbaa !9
  %1736 = getelementptr inbounds nuw i8, ptr %1710, i64 1
  %1737 = load i8, ptr %1736, align 1, !tbaa !9
  %1738 = getelementptr inbounds nuw i8, ptr %1711, i64 1
  store i8 %1737, ptr %1738, align 1, !tbaa !9
  %1739 = getelementptr inbounds nuw i8, ptr %1710, i64 2
  %1740 = load i8, ptr %1739, align 1, !tbaa !9
  %1741 = getelementptr inbounds nuw i8, ptr %1711, i64 2
  store i8 %1740, ptr %1741, align 1, !tbaa !9
  %1742 = getelementptr inbounds nuw i8, ptr %1710, i64 3
  %1743 = load i8, ptr %1742, align 1, !tbaa !9
  %1744 = getelementptr inbounds nuw i8, ptr %1711, i64 3
  store i8 %1743, ptr %1744, align 1, !tbaa !9
  %1745 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1675
  %1746 = load i32, ptr %1745, align 4, !tbaa !30
  %1747 = zext i32 %1746 to i64
  %1748 = getelementptr inbounds nuw i8, ptr %1710, i64 %1747
  %1749 = getelementptr inbounds nuw i8, ptr %1711, i64 4
  %1750 = load i32, ptr %1748, align 1
  store i32 %1750, ptr %1749, align 1
  %1751 = sext i32 %1734 to i64
  %1752 = sub nsw i64 0, %1751
  %1753 = getelementptr inbounds i8, ptr %1748, i64 %1752
  br label %1756

1754:                                             ; preds = %1730
  %1755 = load i64, ptr %1710, align 1
  store i64 %1755, ptr %1711, align 1
  br label %1756

1756:                                             ; preds = %1732, %1754
  %1757 = phi ptr [ %1753, %1732 ], [ %1710, %1754 ]
  %1758 = getelementptr inbounds nuw i8, ptr %1757, i64 8
  %1759 = getelementptr inbounds nuw i8, ptr %1711, i64 8
  %1760 = icmp ugt i64 %1709, 8
  br i1 %1760, label %1761, label %1824

1761:                                             ; preds = %1756
  %1762 = ptrtoint ptr %1759 to i64
  %1763 = ptrtoint ptr %1758 to i64
  %1764 = sub i64 %1762, %1763
  %1765 = getelementptr i8, ptr %1711, i64 %1709
  %1766 = icmp slt i64 %1764, 16
  br i1 %1766, label %1767, label %1808

1767:                                             ; preds = %1761
  %1768 = add i64 %1709, %1712
  %1769 = add i64 %1712, 16
  %1770 = tail call i64 @llvm.umax.i64(i64 %1768, i64 %1769)
  %1771 = add i64 %1770, -9
  %1772 = sub i64 %1771, %1712
  %1773 = lshr i64 %1772, 3
  %1774 = add nuw nsw i64 %1773, 1
  %1775 = icmp ult i64 %1772, 24
  %1776 = icmp ult i64 %1764, 32
  %1777 = or i1 %1775, %1776
  br i1 %1777, label %1798, label %1778

1778:                                             ; preds = %1767
  %1779 = and i64 %1774, 4611686018427387900
  %1780 = shl i64 %1779, 3
  %1781 = getelementptr i8, ptr %1759, i64 %1780
  %1782 = shl i64 %1779, 3
  %1783 = getelementptr i8, ptr %1758, i64 %1782
  br label %1784

1784:                                             ; preds = %1784, %1778
  %1785 = phi i64 [ 0, %1778 ], [ %1794, %1784 ]
  %1786 = shl i64 %1785, 3
  %1787 = getelementptr i8, ptr %1759, i64 %1786
  %1788 = shl i64 %1785, 3
  %1789 = getelementptr i8, ptr %1758, i64 %1788
  %1790 = getelementptr i8, ptr %1789, i64 16
  %1791 = load <2 x i64>, ptr %1789, align 1
  %1792 = load <2 x i64>, ptr %1790, align 1
  %1793 = getelementptr i8, ptr %1787, i64 16
  store <2 x i64> %1791, ptr %1787, align 1
  store <2 x i64> %1792, ptr %1793, align 1
  %1794 = add nuw i64 %1785, 4
  %1795 = icmp eq i64 %1794, %1779
  br i1 %1795, label %1796, label %1784, !llvm.loop !190

1796:                                             ; preds = %1784
  %1797 = icmp eq i64 %1774, %1779
  br i1 %1797, label %1824, label %1798

1798:                                             ; preds = %1767, %1796
  %1799 = phi ptr [ %1759, %1767 ], [ %1781, %1796 ]
  %1800 = phi ptr [ %1758, %1767 ], [ %1783, %1796 ]
  br label %1801

1801:                                             ; preds = %1798, %1801
  %1802 = phi ptr [ %1805, %1801 ], [ %1799, %1798 ]
  %1803 = phi ptr [ %1806, %1801 ], [ %1800, %1798 ]
  %1804 = load i64, ptr %1803, align 1
  store i64 %1804, ptr %1802, align 1
  %1805 = getelementptr inbounds nuw i8, ptr %1802, i64 8
  %1806 = getelementptr inbounds nuw i8, ptr %1803, i64 8
  %1807 = icmp ult ptr %1805, %1765
  br i1 %1807, label %1801, label %1824, !llvm.loop !191

1808:                                             ; preds = %1761
  %1809 = add i64 %1709, -8
  %1810 = load <2 x i64>, ptr %1758, align 1, !tbaa !9
  store <2 x i64> %1810, ptr %1759, align 1, !tbaa !9
  %1811 = icmp ult i64 %1809, 17
  br i1 %1811, label %1824, label %1812

1812:                                             ; preds = %1808
  %1813 = getelementptr inbounds nuw i8, ptr %1711, i64 24
  br label %1814

1814:                                             ; preds = %1814, %1812
  %1815 = phi ptr [ %1813, %1812 ], [ %1822, %1814 ]
  %1816 = phi ptr [ %1758, %1812 ], [ %1820, %1814 ]
  %1817 = getelementptr inbounds nuw i8, ptr %1816, i64 16
  %1818 = load <2 x i64>, ptr %1817, align 1, !tbaa !9
  store <2 x i64> %1818, ptr %1815, align 1, !tbaa !9
  %1819 = getelementptr inbounds nuw i8, ptr %1815, i64 16
  %1820 = getelementptr inbounds nuw i8, ptr %1816, i64 32
  %1821 = load <2 x i64>, ptr %1820, align 1, !tbaa !9
  store <2 x i64> %1821, ptr %1819, align 1, !tbaa !9
  %1822 = getelementptr inbounds nuw i8, ptr %1815, i64 32
  %1823 = icmp ult ptr %1822, %1765
  br i1 %1823, label %1814, label %1824, !llvm.loop !101

1824:                                             ; preds = %1814, %1801, %1720, %1796, %1756, %1704, %1688, %1714, %1808
  %1825 = phi i64 [ %1689, %1688 ], [ %1677, %1704 ], [ %1677, %1756 ], [ %1677, %1714 ], [ %1677, %1808 ], [ %1677, %1796 ], [ %1677, %1720 ], [ %1677, %1801 ], [ %1677, %1814 ]
  %1826 = icmp ult i64 %1825, -119
  %1827 = getelementptr inbounds nuw i8, ptr %1670, i64 %1825
  br i1 %1826, label %2142, label %2147

1828:                                             ; preds = %1508
  %1829 = getelementptr inbounds i8, ptr %1511, i64 -32
  %1830 = load i64, ptr %1505, align 8
  %1831 = getelementptr inbounds nuw i8, ptr %1505, i64 8
  %1832 = load i64, ptr %1831, align 8
  %1833 = getelementptr inbounds nuw i8, ptr %1505, i64 16
  %1834 = load i64, ptr %1833, align 8
  %1835 = getelementptr inbounds nuw i8, ptr %1501, i64 %1830
  %1836 = add i64 %1832, %1830
  %1837 = getelementptr inbounds nuw i8, ptr %1509, i64 %1830
  %1838 = sub i64 0, %1834
  %1839 = getelementptr inbounds i8, ptr %1835, i64 %1838
  %1840 = icmp ugt ptr %1837, %1502
  %1841 = getelementptr inbounds nuw i8, ptr %1501, i64 %1836
  %1842 = icmp ugt ptr %1841, %1829
  %1843 = select i1 %1840, i1 true, i1 %1842
  br i1 %1843, label %1847, label %1844, !prof !105

1844:                                             ; preds = %1828
  %1845 = load <2 x i64>, ptr %1509, align 1, !tbaa !9
  store <2 x i64> %1845, ptr %1501, align 1, !tbaa !9
  %1846 = icmp ugt i64 %1830, 16
  br i1 %1846, label %1849, label %1850, !prof !53

1847:                                             ; preds = %1828
  %1848 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %1501, ptr noundef %20, ptr noundef nonnull %1829, ptr noundef nonnull byval(%struct.seq_t) align 8 %1505, ptr noundef nonnull %7, ptr noundef %1502, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %2138

1849:                                             ; preds = %1844
  call void @ZSTD_decompressSequencesLong_bmi2.cold.5(ptr %1501, ptr %1509, i64 %1830) #20
  br label %1850

1850:                                             ; preds = %1849, %1844
  store ptr %1837, ptr %7, align 8, !tbaa !40
  %1851 = ptrtoint ptr %1835 to i64
  %1852 = sub i64 %1851, %48
  %1853 = icmp ugt i64 %1834, %1852
  br i1 %1853, label %1854, label %1867

1854:                                             ; preds = %1850
  %1855 = sub i64 %1851, %1485
  %1856 = icmp ugt i64 %1834, %1855
  br i1 %1856, label %2138, label %1857, !prof !53

1857:                                             ; preds = %1854
  %1858 = ptrtoint ptr %1839 to i64
  %1859 = sub i64 %1858, %48
  %1860 = getelementptr inbounds i8, ptr %30, i64 %1859
  %1861 = add i64 %1832, %1859
  %1862 = icmp sgt i64 %1861, 0
  br i1 %1862, label %1864, label %1863

1863:                                             ; preds = %1857
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1835, ptr align 1 %1860, i64 %1832, i1 false)
  br label %2138

1864:                                             ; preds = %1857
  %1865 = sub nsw i64 0, %1859
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1835, ptr align 1 %1860, i64 %1865, i1 false)
  %1866 = getelementptr inbounds nuw i8, ptr %1835, i64 %1865
  br label %1867

1867:                                             ; preds = %1864, %1850
  %1868 = phi i64 [ %1861, %1864 ], [ %1832, %1850 ]
  %1869 = phi ptr [ %26, %1864 ], [ %1839, %1850 ]
  %1870 = phi ptr [ %1866, %1864 ], [ %1835, %1850 ]
  %1871 = ptrtoint ptr %1870 to i64
  %1872 = icmp ugt i64 %1834, 15
  br i1 %1872, label %1873, label %1889, !prof !91

1873:                                             ; preds = %1867
  %1874 = getelementptr inbounds nuw i8, ptr %1870, i64 %1868
  %1875 = load <2 x i64>, ptr %1869, align 1, !tbaa !9
  store <2 x i64> %1875, ptr %1870, align 1, !tbaa !9
  %1876 = icmp ult i64 %1868, 17
  br i1 %1876, label %2138, label %1877

1877:                                             ; preds = %1873
  %1878 = getelementptr inbounds nuw i8, ptr %1870, i64 16
  br label %1879

1879:                                             ; preds = %1879, %1877
  %1880 = phi ptr [ %1878, %1877 ], [ %1887, %1879 ]
  %1881 = phi ptr [ %1869, %1877 ], [ %1885, %1879 ]
  %1882 = getelementptr inbounds nuw i8, ptr %1881, i64 16
  %1883 = load <2 x i64>, ptr %1882, align 1, !tbaa !9
  store <2 x i64> %1883, ptr %1880, align 1, !tbaa !9
  %1884 = getelementptr inbounds nuw i8, ptr %1880, i64 16
  %1885 = getelementptr inbounds nuw i8, ptr %1881, i64 32
  %1886 = load <2 x i64>, ptr %1885, align 1, !tbaa !9
  store <2 x i64> %1886, ptr %1884, align 1, !tbaa !9
  %1887 = getelementptr inbounds nuw i8, ptr %1880, i64 32
  %1888 = icmp ult ptr %1887, %1874
  br i1 %1888, label %1879, label %2138, !llvm.loop !101

1889:                                             ; preds = %1867
  %1890 = icmp samesign ult i64 %1834, 8
  br i1 %1890, label %1891, label %1913

1891:                                             ; preds = %1889
  %1892 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1834
  %1893 = load i32, ptr %1892, align 4, !tbaa !30
  %1894 = load i8, ptr %1869, align 1, !tbaa !9
  store i8 %1894, ptr %1870, align 1, !tbaa !9
  %1895 = getelementptr inbounds nuw i8, ptr %1869, i64 1
  %1896 = load i8, ptr %1895, align 1, !tbaa !9
  %1897 = getelementptr inbounds nuw i8, ptr %1870, i64 1
  store i8 %1896, ptr %1897, align 1, !tbaa !9
  %1898 = getelementptr inbounds nuw i8, ptr %1869, i64 2
  %1899 = load i8, ptr %1898, align 1, !tbaa !9
  %1900 = getelementptr inbounds nuw i8, ptr %1870, i64 2
  store i8 %1899, ptr %1900, align 1, !tbaa !9
  %1901 = getelementptr inbounds nuw i8, ptr %1869, i64 3
  %1902 = load i8, ptr %1901, align 1, !tbaa !9
  %1903 = getelementptr inbounds nuw i8, ptr %1870, i64 3
  store i8 %1902, ptr %1903, align 1, !tbaa !9
  %1904 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1834
  %1905 = load i32, ptr %1904, align 4, !tbaa !30
  %1906 = zext i32 %1905 to i64
  %1907 = getelementptr inbounds nuw i8, ptr %1869, i64 %1906
  %1908 = getelementptr inbounds nuw i8, ptr %1870, i64 4
  %1909 = load i32, ptr %1907, align 1
  store i32 %1909, ptr %1908, align 1
  %1910 = sext i32 %1893 to i64
  %1911 = sub nsw i64 0, %1910
  %1912 = getelementptr inbounds i8, ptr %1907, i64 %1911
  br label %1915

1913:                                             ; preds = %1889
  %1914 = load i64, ptr %1869, align 1
  store i64 %1914, ptr %1870, align 1
  br label %1915

1915:                                             ; preds = %1891, %1913
  %1916 = phi ptr [ %1912, %1891 ], [ %1869, %1913 ]
  %1917 = getelementptr inbounds nuw i8, ptr %1916, i64 8
  %1918 = getelementptr inbounds nuw i8, ptr %1870, i64 8
  %1919 = icmp ugt i64 %1868, 8
  br i1 %1919, label %1920, label %2138

1920:                                             ; preds = %1915
  %1921 = ptrtoint ptr %1918 to i64
  %1922 = ptrtoint ptr %1917 to i64
  %1923 = sub i64 %1921, %1922
  %1924 = getelementptr i8, ptr %1870, i64 %1868
  %1925 = icmp slt i64 %1923, 16
  br i1 %1925, label %1926, label %1967

1926:                                             ; preds = %1920
  %1927 = add i64 %1868, %1871
  %1928 = add i64 %1871, 16
  %1929 = tail call i64 @llvm.umax.i64(i64 %1927, i64 %1928)
  %1930 = add i64 %1929, -9
  %1931 = sub i64 %1930, %1871
  %1932 = lshr i64 %1931, 3
  %1933 = add nuw nsw i64 %1932, 1
  %1934 = icmp ult i64 %1931, 24
  %1935 = icmp ult i64 %1923, 32
  %1936 = or i1 %1934, %1935
  br i1 %1936, label %1957, label %1937

1937:                                             ; preds = %1926
  %1938 = and i64 %1933, 4611686018427387900
  %1939 = shl i64 %1938, 3
  %1940 = getelementptr i8, ptr %1918, i64 %1939
  %1941 = shl i64 %1938, 3
  %1942 = getelementptr i8, ptr %1917, i64 %1941
  br label %1943

1943:                                             ; preds = %1943, %1937
  %1944 = phi i64 [ 0, %1937 ], [ %1953, %1943 ]
  %1945 = shl i64 %1944, 3
  %1946 = getelementptr i8, ptr %1918, i64 %1945
  %1947 = shl i64 %1944, 3
  %1948 = getelementptr i8, ptr %1917, i64 %1947
  %1949 = getelementptr i8, ptr %1948, i64 16
  %1950 = load <2 x i64>, ptr %1948, align 1
  %1951 = load <2 x i64>, ptr %1949, align 1
  %1952 = getelementptr i8, ptr %1946, i64 16
  store <2 x i64> %1950, ptr %1946, align 1
  store <2 x i64> %1951, ptr %1952, align 1
  %1953 = add nuw i64 %1944, 4
  %1954 = icmp eq i64 %1953, %1938
  br i1 %1954, label %1955, label %1943, !llvm.loop !192

1955:                                             ; preds = %1943
  %1956 = icmp eq i64 %1933, %1938
  br i1 %1956, label %2138, label %1957

1957:                                             ; preds = %1926, %1955
  %1958 = phi ptr [ %1918, %1926 ], [ %1940, %1955 ]
  %1959 = phi ptr [ %1917, %1926 ], [ %1942, %1955 ]
  br label %1960

1960:                                             ; preds = %1957, %1960
  %1961 = phi ptr [ %1964, %1960 ], [ %1958, %1957 ]
  %1962 = phi ptr [ %1965, %1960 ], [ %1959, %1957 ]
  %1963 = load i64, ptr %1962, align 1
  store i64 %1963, ptr %1961, align 1
  %1964 = getelementptr inbounds nuw i8, ptr %1961, i64 8
  %1965 = getelementptr inbounds nuw i8, ptr %1962, i64 8
  %1966 = icmp ult ptr %1964, %1924
  br i1 %1966, label %1960, label %2138, !llvm.loop !193

1967:                                             ; preds = %1920
  %1968 = add i64 %1868, -8
  %1969 = load <2 x i64>, ptr %1917, align 1, !tbaa !9
  store <2 x i64> %1969, ptr %1918, align 1, !tbaa !9
  %1970 = icmp ult i64 %1968, 17
  br i1 %1970, label %2138, label %1971

1971:                                             ; preds = %1967
  %1972 = getelementptr inbounds nuw i8, ptr %1870, i64 24
  br label %1973

1973:                                             ; preds = %1973, %1971
  %1974 = phi ptr [ %1972, %1971 ], [ %1981, %1973 ]
  %1975 = phi ptr [ %1917, %1971 ], [ %1979, %1973 ]
  %1976 = getelementptr inbounds nuw i8, ptr %1975, i64 16
  %1977 = load <2 x i64>, ptr %1976, align 1, !tbaa !9
  store <2 x i64> %1977, ptr %1974, align 1, !tbaa !9
  %1978 = getelementptr inbounds nuw i8, ptr %1974, i64 16
  %1979 = getelementptr inbounds nuw i8, ptr %1975, i64 32
  %1980 = load <2 x i64>, ptr %1979, align 1, !tbaa !9
  store <2 x i64> %1980, ptr %1978, align 1, !tbaa !9
  %1981 = getelementptr inbounds nuw i8, ptr %1974, i64 32
  %1982 = icmp ult ptr %1981, %1924
  br i1 %1982, label %1973, label %2138, !llvm.loop !101

1983:                                             ; preds = %1499
  %1984 = load i64, ptr %1505, align 8
  %1985 = getelementptr inbounds nuw i8, ptr %1505, i64 8
  %1986 = load i64, ptr %1985, align 8
  %1987 = getelementptr inbounds nuw i8, ptr %1505, i64 16
  %1988 = load i64, ptr %1987, align 8
  %1989 = getelementptr inbounds nuw i8, ptr %1501, i64 %1984
  %1990 = add i64 %1986, %1984
  %1991 = load ptr, ptr %7, align 8, !tbaa !40
  %1992 = getelementptr inbounds nuw i8, ptr %1991, i64 %1984
  %1993 = sub i64 0, %1988
  %1994 = getelementptr inbounds i8, ptr %1989, i64 %1993
  %1995 = icmp ugt ptr %1992, %1502
  %1996 = getelementptr inbounds nuw i8, ptr %1501, i64 %1990
  %1997 = icmp ugt ptr %1996, %1484
  %1998 = select i1 %1995, i1 true, i1 %1997
  br i1 %1998, label %2002, label %1999, !prof !105

1999:                                             ; preds = %1983
  %2000 = load <2 x i64>, ptr %1991, align 1, !tbaa !9
  store <2 x i64> %2000, ptr %1501, align 1, !tbaa !9
  %2001 = icmp ugt i64 %1984, 16
  br i1 %2001, label %2004, label %2005, !prof !53

2002:                                             ; preds = %1983
  %2003 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1501, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %1505, ptr noundef nonnull %7, ptr noundef %1502, ptr noundef %26, ptr noundef %28, ptr noundef %30)
  br label %2138

2004:                                             ; preds = %1999
  call void @ZSTD_decompressSequencesLong_bmi2.cold.4(ptr %1501, ptr %1991, i64 %1984) #20
  br label %2005

2005:                                             ; preds = %2004, %1999
  store ptr %1992, ptr %7, align 8, !tbaa !40
  %2006 = ptrtoint ptr %1989 to i64
  %2007 = sub i64 %2006, %48
  %2008 = icmp ugt i64 %1988, %2007
  br i1 %2008, label %2009, label %2022

2009:                                             ; preds = %2005
  %2010 = sub i64 %2006, %1485
  %2011 = icmp ugt i64 %1988, %2010
  br i1 %2011, label %2138, label %2012, !prof !53

2012:                                             ; preds = %2009
  %2013 = ptrtoint ptr %1994 to i64
  %2014 = sub i64 %2013, %48
  %2015 = getelementptr inbounds i8, ptr %30, i64 %2014
  %2016 = add i64 %1986, %2014
  %2017 = icmp sgt i64 %2016, 0
  br i1 %2017, label %2019, label %2018

2018:                                             ; preds = %2012
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1989, ptr align 1 %2015, i64 %1986, i1 false)
  br label %2138

2019:                                             ; preds = %2012
  %2020 = sub nsw i64 0, %2014
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1989, ptr align 1 %2015, i64 %2020, i1 false)
  %2021 = getelementptr inbounds nuw i8, ptr %1989, i64 %2020
  br label %2022

2022:                                             ; preds = %2019, %2005
  %2023 = phi i64 [ %2016, %2019 ], [ %1986, %2005 ]
  %2024 = phi ptr [ %26, %2019 ], [ %1994, %2005 ]
  %2025 = phi ptr [ %2021, %2019 ], [ %1989, %2005 ]
  %2026 = ptrtoint ptr %2025 to i64
  %2027 = icmp ugt i64 %1988, 15
  br i1 %2027, label %2028, label %2044, !prof !91

2028:                                             ; preds = %2022
  %2029 = getelementptr inbounds nuw i8, ptr %2025, i64 %2023
  %2030 = load <2 x i64>, ptr %2024, align 1, !tbaa !9
  store <2 x i64> %2030, ptr %2025, align 1, !tbaa !9
  %2031 = icmp ult i64 %2023, 17
  br i1 %2031, label %2138, label %2032

2032:                                             ; preds = %2028
  %2033 = getelementptr inbounds nuw i8, ptr %2025, i64 16
  br label %2034

2034:                                             ; preds = %2034, %2032
  %2035 = phi ptr [ %2033, %2032 ], [ %2042, %2034 ]
  %2036 = phi ptr [ %2024, %2032 ], [ %2040, %2034 ]
  %2037 = getelementptr inbounds nuw i8, ptr %2036, i64 16
  %2038 = load <2 x i64>, ptr %2037, align 1, !tbaa !9
  store <2 x i64> %2038, ptr %2035, align 1, !tbaa !9
  %2039 = getelementptr inbounds nuw i8, ptr %2035, i64 16
  %2040 = getelementptr inbounds nuw i8, ptr %2036, i64 32
  %2041 = load <2 x i64>, ptr %2040, align 1, !tbaa !9
  store <2 x i64> %2041, ptr %2039, align 1, !tbaa !9
  %2042 = getelementptr inbounds nuw i8, ptr %2035, i64 32
  %2043 = icmp ult ptr %2042, %2029
  br i1 %2043, label %2034, label %2138, !llvm.loop !101

2044:                                             ; preds = %2022
  %2045 = icmp samesign ult i64 %1988, 8
  br i1 %2045, label %2046, label %2068

2046:                                             ; preds = %2044
  %2047 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1988
  %2048 = load i32, ptr %2047, align 4, !tbaa !30
  %2049 = load i8, ptr %2024, align 1, !tbaa !9
  store i8 %2049, ptr %2025, align 1, !tbaa !9
  %2050 = getelementptr inbounds nuw i8, ptr %2024, i64 1
  %2051 = load i8, ptr %2050, align 1, !tbaa !9
  %2052 = getelementptr inbounds nuw i8, ptr %2025, i64 1
  store i8 %2051, ptr %2052, align 1, !tbaa !9
  %2053 = getelementptr inbounds nuw i8, ptr %2024, i64 2
  %2054 = load i8, ptr %2053, align 1, !tbaa !9
  %2055 = getelementptr inbounds nuw i8, ptr %2025, i64 2
  store i8 %2054, ptr %2055, align 1, !tbaa !9
  %2056 = getelementptr inbounds nuw i8, ptr %2024, i64 3
  %2057 = load i8, ptr %2056, align 1, !tbaa !9
  %2058 = getelementptr inbounds nuw i8, ptr %2025, i64 3
  store i8 %2057, ptr %2058, align 1, !tbaa !9
  %2059 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1988
  %2060 = load i32, ptr %2059, align 4, !tbaa !30
  %2061 = zext i32 %2060 to i64
  %2062 = getelementptr inbounds nuw i8, ptr %2024, i64 %2061
  %2063 = getelementptr inbounds nuw i8, ptr %2025, i64 4
  %2064 = load i32, ptr %2062, align 1
  store i32 %2064, ptr %2063, align 1
  %2065 = sext i32 %2048 to i64
  %2066 = sub nsw i64 0, %2065
  %2067 = getelementptr inbounds i8, ptr %2062, i64 %2066
  br label %2070

2068:                                             ; preds = %2044
  %2069 = load i64, ptr %2024, align 1
  store i64 %2069, ptr %2025, align 1
  br label %2070

2070:                                             ; preds = %2046, %2068
  %2071 = phi ptr [ %2067, %2046 ], [ %2024, %2068 ]
  %2072 = getelementptr inbounds nuw i8, ptr %2071, i64 8
  %2073 = getelementptr inbounds nuw i8, ptr %2025, i64 8
  %2074 = icmp ugt i64 %2023, 8
  br i1 %2074, label %2075, label %2138

2075:                                             ; preds = %2070
  %2076 = ptrtoint ptr %2073 to i64
  %2077 = ptrtoint ptr %2072 to i64
  %2078 = sub i64 %2076, %2077
  %2079 = getelementptr i8, ptr %2025, i64 %2023
  %2080 = icmp slt i64 %2078, 16
  br i1 %2080, label %2081, label %2122

2081:                                             ; preds = %2075
  %2082 = add i64 %2023, %2026
  %2083 = add i64 %2026, 16
  %2084 = tail call i64 @llvm.umax.i64(i64 %2082, i64 %2083)
  %2085 = add i64 %2084, -9
  %2086 = sub i64 %2085, %2026
  %2087 = lshr i64 %2086, 3
  %2088 = add nuw nsw i64 %2087, 1
  %2089 = icmp ult i64 %2086, 24
  %2090 = icmp ult i64 %2078, 32
  %2091 = or i1 %2089, %2090
  br i1 %2091, label %2112, label %2092

2092:                                             ; preds = %2081
  %2093 = and i64 %2088, 4611686018427387900
  %2094 = shl i64 %2093, 3
  %2095 = getelementptr i8, ptr %2073, i64 %2094
  %2096 = shl i64 %2093, 3
  %2097 = getelementptr i8, ptr %2072, i64 %2096
  br label %2098

2098:                                             ; preds = %2098, %2092
  %2099 = phi i64 [ 0, %2092 ], [ %2108, %2098 ]
  %2100 = shl i64 %2099, 3
  %2101 = getelementptr i8, ptr %2073, i64 %2100
  %2102 = shl i64 %2099, 3
  %2103 = getelementptr i8, ptr %2072, i64 %2102
  %2104 = getelementptr i8, ptr %2103, i64 16
  %2105 = load <2 x i64>, ptr %2103, align 1
  %2106 = load <2 x i64>, ptr %2104, align 1
  %2107 = getelementptr i8, ptr %2101, i64 16
  store <2 x i64> %2105, ptr %2101, align 1
  store <2 x i64> %2106, ptr %2107, align 1
  %2108 = add nuw i64 %2099, 4
  %2109 = icmp eq i64 %2108, %2093
  br i1 %2109, label %2110, label %2098, !llvm.loop !194

2110:                                             ; preds = %2098
  %2111 = icmp eq i64 %2088, %2093
  br i1 %2111, label %2138, label %2112

2112:                                             ; preds = %2081, %2110
  %2113 = phi ptr [ %2073, %2081 ], [ %2095, %2110 ]
  %2114 = phi ptr [ %2072, %2081 ], [ %2097, %2110 ]
  br label %2115

2115:                                             ; preds = %2112, %2115
  %2116 = phi ptr [ %2119, %2115 ], [ %2113, %2112 ]
  %2117 = phi ptr [ %2120, %2115 ], [ %2114, %2112 ]
  %2118 = load i64, ptr %2117, align 1
  store i64 %2118, ptr %2116, align 1
  %2119 = getelementptr inbounds nuw i8, ptr %2116, i64 8
  %2120 = getelementptr inbounds nuw i8, ptr %2117, i64 8
  %2121 = icmp ult ptr %2119, %2079
  br i1 %2121, label %2115, label %2138, !llvm.loop !195

2122:                                             ; preds = %2075
  %2123 = add i64 %2023, -8
  %2124 = load <2 x i64>, ptr %2072, align 1, !tbaa !9
  store <2 x i64> %2124, ptr %2073, align 1, !tbaa !9
  %2125 = icmp ult i64 %2123, 17
  br i1 %2125, label %2138, label %2126

2126:                                             ; preds = %2122
  %2127 = getelementptr inbounds nuw i8, ptr %2025, i64 24
  br label %2128

2128:                                             ; preds = %2128, %2126
  %2129 = phi ptr [ %2127, %2126 ], [ %2136, %2128 ]
  %2130 = phi ptr [ %2072, %2126 ], [ %2134, %2128 ]
  %2131 = getelementptr inbounds nuw i8, ptr %2130, i64 16
  %2132 = load <2 x i64>, ptr %2131, align 1, !tbaa !9
  store <2 x i64> %2132, ptr %2129, align 1, !tbaa !9
  %2133 = getelementptr inbounds nuw i8, ptr %2129, i64 16
  %2134 = getelementptr inbounds nuw i8, ptr %2130, i64 32
  %2135 = load <2 x i64>, ptr %2134, align 1, !tbaa !9
  store <2 x i64> %2135, ptr %2133, align 1, !tbaa !9
  %2136 = getelementptr inbounds nuw i8, ptr %2129, i64 32
  %2137 = icmp ult ptr %2136, %2079
  br i1 %2137, label %2128, label %2138, !llvm.loop !101

2138:                                             ; preds = %2070, %2018, %2009, %2002, %2028, %2122, %2110, %2034, %2115, %2128, %1915, %1863, %1854, %1847, %1873, %1967, %1955, %1879, %1960, %1973
  %2139 = phi i64 [ %1848, %1847 ], [ %1836, %1863 ], [ -20, %1854 ], [ %1836, %1915 ], [ %1836, %1873 ], [ %1836, %1967 ], [ %1836, %1955 ], [ %1836, %1879 ], [ %1836, %1960 ], [ %1836, %1973 ], [ %2003, %2002 ], [ %1990, %2018 ], [ -20, %2009 ], [ %1990, %2070 ], [ %1990, %2028 ], [ %1990, %2122 ], [ %1990, %2110 ], [ %1990, %2034 ], [ %1990, %2115 ], [ %1990, %2128 ]
  %2140 = icmp ult i64 %2139, -119
  %2141 = getelementptr inbounds nuw i8, ptr %1501, i64 %2139
  br i1 %2140, label %2142, label %2147

2142:                                             ; preds = %2138, %1824
  %2143 = phi ptr [ %1488, %1824 ], [ %1502, %2138 ]
  %2144 = phi ptr [ %1827, %1824 ], [ %2141, %2138 ]
  %2145 = add i32 %1500, 1
  %2146 = icmp eq i32 %2145, %5
  br i1 %2146, label %1491, label %1499, !llvm.loop !126

2147:                                             ; preds = %1441, %809, %1114, %1824, %2138, %1519, %1695, %985, %107, %56, %32, %120, %1465
  %2148 = phi i64 [ -20, %120 ], [ -20, %1465 ], [ -20, %32 ], [ -20, %56 ], [ -20, %107 ], [ -20, %985 ], [ -20, %1695 ], [ -70, %1519 ], [ %1825, %1824 ], [ %2139, %2138 ], [ -70, %809 ], [ %1115, %1114 ], [ %1442, %1441 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #18
  br label %2193

2149:                                             ; preds = %1491, %19
  %2150 = phi ptr [ %1498, %1491 ], [ %22, %19 ]
  %2151 = phi i32 [ %1497, %1491 ], [ %11, %19 ]
  %2152 = phi ptr [ %1492, %1491 ], [ %24, %19 ]
  %2153 = phi ptr [ %1493, %1491 ], [ %1, %19 ]
  %2154 = icmp eq i32 %2151, 2
  br i1 %2154, label %2157, label %2155

2155:                                             ; preds = %2149
  %2156 = ptrtoint ptr %20 to i64
  br label %2173

2157:                                             ; preds = %2149
  %2158 = ptrtoint ptr %2152 to i64
  %2159 = ptrtoint ptr %2150 to i64
  %2160 = sub i64 %2158, %2159
  %2161 = ptrtoint ptr %20 to i64
  %2162 = ptrtoint ptr %2153 to i64
  %2163 = sub i64 %2161, %2162
  %2164 = icmp ugt i64 %2160, %2163
  br i1 %2164, label %2193, label %2165

2165:                                             ; preds = %2157
  %2166 = icmp eq ptr %2153, null
  br i1 %2166, label %2169, label %2167

2167:                                             ; preds = %2165
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2153, ptr align 1 %2150, i64 %2160, i1 false)
  %2168 = getelementptr inbounds nuw i8, ptr %2153, i64 %2160
  br label %2169

2169:                                             ; preds = %2165, %2167
  %2170 = phi ptr [ %2168, %2167 ], [ null, %2165 ]
  %2171 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %2172 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %2173

2173:                                             ; preds = %2155, %2169
  %2174 = phi i64 [ %2156, %2155 ], [ %2161, %2169 ]
  %2175 = phi ptr [ %2150, %2155 ], [ %2171, %2169 ]
  %2176 = phi ptr [ %2152, %2155 ], [ %2172, %2169 ]
  %2177 = phi ptr [ %2153, %2155 ], [ %2170, %2169 ]
  %2178 = ptrtoint ptr %2176 to i64
  %2179 = ptrtoint ptr %2175 to i64
  %2180 = sub i64 %2178, %2179
  %2181 = ptrtoint ptr %2177 to i64
  %2182 = sub i64 %2174, %2181
  %2183 = icmp ugt i64 %2180, %2182
  br i1 %2183, label %2193, label %2184

2184:                                             ; preds = %2173
  %2185 = icmp eq ptr %2177, null
  br i1 %2185, label %2189, label %2186

2186:                                             ; preds = %2184
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2177, ptr align 1 %2175, i64 %2180, i1 false)
  %2187 = getelementptr inbounds nuw i8, ptr %2177, i64 %2180
  %2188 = ptrtoint ptr %2187 to i64
  br label %2189

2189:                                             ; preds = %2186, %2184
  %2190 = phi i64 [ 0, %2184 ], [ %2188, %2186 ]
  %2191 = ptrtoint ptr %1 to i64
  %2192 = sub i64 %2190, %2191
  br label %2193

2193:                                             ; preds = %2157, %2173, %2147, %2189
  %2194 = phi i64 [ %2192, %2189 ], [ %2148, %2147 ], [ -70, %2173 ], [ -70, %2157 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret i64 %2194
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %0, ptr noundef %1, ptr noundef readonly byval(%struct.seq_t) align 8 captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7) unnamed_addr #14 {
  %9 = load i64, ptr %2, align 8, !tbaa !96
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !131
  %13 = add i64 %12, %9
  %14 = load ptr, ptr %3, align 8, !tbaa !40
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %9
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !196
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  %20 = getelementptr inbounds i8, ptr %1, i64 -32
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %13, %23
  br i1 %24, label %208, label %25

25:                                               ; preds = %8
  %26 = ptrtoint ptr %4 to i64
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %9, %28
  br i1 %29, label %208, label %30

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
  %39 = icmp ult i64 %38, 4
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
  br i1 %56, label %57, label %47, !llvm.loop !197

57:                                               ; preds = %47
  %58 = icmp eq i64 %38, %46
  br i1 %58, label %185, label %59

59:                                               ; preds = %57
  %60 = getelementptr i8, ptr %14, i64 %46
  %61 = getelementptr i8, ptr %0, i64 %46
  %62 = and i64 %38, 28
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %59, %43
  %65 = phi i64 [ %46, %59 ], [ 0, %43 ]
  %66 = and i64 %38, -4
  %67 = getelementptr i8, ptr %14, i64 %66
  %68 = getelementptr i8, ptr %0, i64 %66
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i64 [ %65, %64 ], [ %74, %69 ]
  %71 = getelementptr i8, ptr %14, i64 %70
  %72 = getelementptr i8, ptr %0, i64 %70
  %73 = load <4 x i8>, ptr %71, align 1, !tbaa !9
  store <4 x i8> %73, ptr %72, align 1, !tbaa !9
  %74 = add nuw i64 %70, 4
  %75 = icmp eq i64 %74, %66
  br i1 %75, label %76, label %69, !llvm.loop !198

76:                                               ; preds = %69
  %77 = icmp eq i64 %38, %66
  br i1 %77, label %185, label %78

78:                                               ; preds = %59, %76, %34
  %79 = phi ptr [ %14, %34 ], [ %60, %59 ], [ %67, %76 ]
  %80 = phi ptr [ %0, %34 ], [ %61, %59 ], [ %68, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %78 ]
  %83 = phi ptr [ %86, %81 ], [ %80, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %85 = load i8, ptr %82, align 1, !tbaa !9
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 1
  store i8 %85, ptr %83, align 1, !tbaa !9
  %87 = icmp ult ptr %86, %10
  br i1 %87, label %81, label %185, !llvm.loop !199

88:                                               ; preds = %30
  %89 = icmp ugt ptr %10, %20
  br i1 %89, label %105, label %90

90:                                               ; preds = %88
  %91 = load <2 x i64>, ptr %14, align 1, !tbaa !9
  store <2 x i64> %91, ptr %0, align 1, !tbaa !9
  %92 = icmp ult i64 %9, 17
  br i1 %92, label %185, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi ptr [ %94, %93 ], [ %103, %95 ]
  %97 = phi ptr [ %14, %93 ], [ %101, %95 ]
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 16
  %99 = load <2 x i64>, ptr %98, align 1, !tbaa !9
  store <2 x i64> %99, ptr %96, align 1, !tbaa !9
  %100 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %101 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %102 = load <2 x i64>, ptr %101, align 1, !tbaa !9
  store <2 x i64> %102, ptr %100, align 1, !tbaa !9
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = icmp ult ptr %103, %10
  br i1 %104, label %95, label %185, !llvm.loop !101

105:                                              ; preds = %88
  %106 = icmp ugt ptr %0, %20
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
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi ptr [ %114, %113 ], [ %123, %115 ]
  %117 = phi ptr [ %14, %113 ], [ %121, %115 ]
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 16
  %119 = load <2 x i64>, ptr %118, align 1, !tbaa !9
  store <2 x i64> %119, ptr %116, align 1, !tbaa !9
  %120 = getelementptr inbounds nuw i8, ptr %116, i64 16
  %121 = getelementptr inbounds nuw i8, ptr %117, i64 32
  %122 = load <2 x i64>, ptr %121, align 1, !tbaa !9
  store <2 x i64> %122, ptr %120, align 1, !tbaa !9
  %123 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %124 = icmp ult ptr %123, %20
  br i1 %124, label %115, label %125, !llvm.loop !101

125:                                              ; preds = %115, %107
  %126 = getelementptr inbounds i8, ptr %14, i64 %109
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
  %136 = icmp ult i64 %135, 4
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
  br i1 %153, label %154, label %144, !llvm.loop !200

154:                                              ; preds = %144
  %155 = icmp eq i64 %135, %143
  br i1 %155, label %185, label %156

156:                                              ; preds = %154
  %157 = getelementptr i8, ptr %129, i64 %143
  %158 = getelementptr i8, ptr %128, i64 %143
  %159 = and i64 %135, 28
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %156, %140
  %162 = phi i64 [ %143, %156 ], [ 0, %140 ]
  %163 = and i64 %135, -4
  %164 = getelementptr i8, ptr %129, i64 %163
  %165 = getelementptr i8, ptr %128, i64 %163
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i64 [ %162, %161 ], [ %171, %166 ]
  %168 = getelementptr i8, ptr %129, i64 %167
  %169 = getelementptr i8, ptr %128, i64 %167
  %170 = load <4 x i8>, ptr %168, align 1, !tbaa !9
  store <4 x i8> %170, ptr %169, align 1, !tbaa !9
  %171 = add nuw i64 %167, 4
  %172 = icmp eq i64 %171, %163
  br i1 %172, label %173, label %166, !llvm.loop !201

173:                                              ; preds = %166
  %174 = icmp eq i64 %135, %163
  br i1 %174, label %185, label %175

175:                                              ; preds = %156, %173, %131
  %176 = phi ptr [ %129, %131 ], [ %157, %156 ], [ %164, %173 ]
  %177 = phi ptr [ %128, %131 ], [ %158, %156 ], [ %165, %173 ]
  br label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %181, %178 ], [ %176, %175 ]
  %180 = phi ptr [ %183, %178 ], [ %177, %175 ]
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %182 = load i8, ptr %179, align 1, !tbaa !9
  %183 = getelementptr inbounds nuw i8, ptr %180, i64 1
  store i8 %182, ptr %180, align 1, !tbaa !9
  %184 = icmp ult ptr %183, %10
  br i1 %184, label %178, label %185, !llvm.loop !202

185:                                              ; preds = %95, %178, %81, %154, %173, %57, %76, %32, %90, %127
  store ptr %15, ptr %3, align 8, !tbaa !40
  %186 = ptrtoint ptr %10 to i64
  %187 = ptrtoint ptr %5 to i64
  %188 = sub i64 %186, %187
  %189 = icmp ugt i64 %17, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %185
  %191 = ptrtoint ptr %6 to i64
  %192 = sub i64 %186, %191
  %193 = icmp ugt i64 %17, %192
  br i1 %193, label %208, label %194

194:                                              ; preds = %190
  %195 = ptrtoint ptr %19 to i64
  %196 = sub i64 %195, %187
  %197 = getelementptr inbounds i8, ptr %7, i64 %196
  %198 = add nsw i64 %196, %12
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %197, i64 %12, i1 false)
  br label %208

201:                                              ; preds = %194
  %202 = sub nsw i64 0, %196
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %197, i64 %202, i1 false)
  %203 = getelementptr inbounds nuw i8, ptr %10, i64 %202
  br label %204

204:                                              ; preds = %201, %185
  %205 = phi i64 [ %198, %201 ], [ %12, %185 ]
  %206 = phi ptr [ %5, %201 ], [ %19, %185 ]
  %207 = phi ptr [ %203, %201 ], [ %10, %185 ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %207, ptr noundef nonnull %20, ptr noundef %206, i64 noundef %205, i32 noundef 1)
  br label %208

208:                                              ; preds = %190, %25, %8, %204, %200
  %209 = phi i64 [ %13, %200 ], [ %13, %204 ], [ -70, %8 ], [ -20, %25 ], [ -20, %190 ]
  ret i64 %209
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_safecopy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #15 {
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %2 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %12 = icmp ult i64 %3, 8
  br i1 %12, label %13, label %69

13:                                               ; preds = %5
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %299, label %15

15:                                               ; preds = %13
  %16 = add i64 %3, %8
  %17 = add i64 %8, 1
  %18 = tail call i64 @llvm.umax.i64(i64 %16, i64 %17)
  %19 = sub i64 %18, %8
  %20 = icmp ult i64 %19, 4
  %21 = sub i64 %8, %6
  %22 = icmp ult i64 %21, 32
  %23 = or i1 %20, %22
  br i1 %23, label %59, label %24

24:                                               ; preds = %15
  %25 = icmp ult i64 %19, 32
  br i1 %25, label %45, label %26

26:                                               ; preds = %24
  %27 = and i64 %19, -32
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %36, %28 ]
  %30 = getelementptr i8, ptr %2, i64 %29
  %31 = getelementptr i8, ptr %0, i64 %29
  %32 = getelementptr i8, ptr %30, i64 16
  %33 = load <16 x i8>, ptr %30, align 1, !tbaa !9
  %34 = load <16 x i8>, ptr %32, align 1, !tbaa !9
  %35 = getelementptr i8, ptr %31, i64 16
  store <16 x i8> %33, ptr %31, align 1, !tbaa !9
  store <16 x i8> %34, ptr %35, align 1, !tbaa !9
  %36 = add nuw i64 %29, 32
  %37 = icmp eq i64 %36, %27
  br i1 %37, label %38, label %28, !llvm.loop !203

38:                                               ; preds = %28
  %39 = icmp eq i64 %19, %27
  br i1 %39, label %299, label %40

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %2, i64 %27
  %42 = getelementptr i8, ptr %0, i64 %27
  %43 = and i64 %19, 28
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40, %24
  %46 = phi i64 [ %27, %40 ], [ 0, %24 ]
  %47 = and i64 %19, -4
  %48 = getelementptr i8, ptr %2, i64 %47
  %49 = getelementptr i8, ptr %0, i64 %47
  br label %50

50:                                               ; preds = %50, %45
  %51 = phi i64 [ %46, %45 ], [ %55, %50 ]
  %52 = getelementptr i8, ptr %2, i64 %51
  %53 = getelementptr i8, ptr %0, i64 %51
  %54 = load <4 x i8>, ptr %52, align 1, !tbaa !9
  store <4 x i8> %54, ptr %53, align 1, !tbaa !9
  %55 = add nuw i64 %51, 4
  %56 = icmp eq i64 %55, %47
  br i1 %56, label %57, label %50, !llvm.loop !204

57:                                               ; preds = %50
  %58 = icmp eq i64 %19, %47
  br i1 %58, label %299, label %59

59:                                               ; preds = %40, %57, %15
  %60 = phi ptr [ %2, %15 ], [ %41, %40 ], [ %48, %57 ]
  %61 = phi ptr [ %0, %15 ], [ %42, %40 ], [ %49, %57 ]
  br label %62

62:                                               ; preds = %59, %62
  %63 = phi ptr [ %65, %62 ], [ %60, %59 ]
  %64 = phi ptr [ %67, %62 ], [ %61, %59 ]
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 1
  %66 = load i8, ptr %63, align 1, !tbaa !9
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 1
  store i8 %66, ptr %64, align 1, !tbaa !9
  %68 = icmp ult ptr %67, %11
  br i1 %68, label %62, label %299, !llvm.loop !205

69:                                               ; preds = %5
  %70 = icmp eq i32 %4, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %69
  %72 = icmp ult i64 %10, 8
  br i1 %72, label %73, label %95

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %10
  %75 = load i32, ptr %74, align 4, !tbaa !30
  %76 = load i8, ptr %2, align 1, !tbaa !9
  store i8 %76, ptr %0, align 1, !tbaa !9
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !9
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !9
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %84, ptr %85, align 1, !tbaa !9
  %86 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %10
  %87 = load i32, ptr %86, align 4, !tbaa !30
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %91 = load i32, ptr %89, align 1
  store i32 %91, ptr %90, align 1
  %92 = sext i32 %75 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %89, i64 %93
  br label %97

95:                                               ; preds = %71
  %96 = load i64, ptr %2, align 1
  store i64 %96, ptr %0, align 1
  br label %97

97:                                               ; preds = %73, %95
  %98 = phi ptr [ %94, %73 ], [ %2, %95 ]
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %101 = add i64 %3, -8
  br label %102

102:                                              ; preds = %97, %69
  %103 = phi ptr [ %0, %69 ], [ %100, %97 ]
  %104 = phi ptr [ %2, %69 ], [ %99, %97 ]
  %105 = phi i64 [ %3, %69 ], [ %101, %97 ]
  %106 = ptrtoint ptr %103 to i64
  %107 = ptrtoint ptr %104 to i64
  %108 = icmp ugt ptr %11, %1
  br i1 %108, label %173, label %109

109:                                              ; preds = %102
  %110 = ptrtoint ptr %103 to i64
  %111 = ptrtoint ptr %104 to i64
  %112 = sub i64 %110, %111
  %113 = getelementptr inbounds nuw i8, ptr %103, i64 %105
  %114 = icmp ne i32 %4, 0
  %115 = icmp slt i64 %112, 16
  %116 = and i1 %114, %115
  br i1 %116, label %117, label %158

117:                                              ; preds = %109
  %118 = add i64 %105, %110
  %119 = add i64 %110, 8
  %120 = tail call i64 @llvm.umax.i64(i64 %118, i64 %119)
  %121 = xor i64 %110, -1
  %122 = add i64 %120, %121
  %123 = lshr i64 %122, 3
  %124 = add nuw nsw i64 %123, 1
  %125 = icmp ult i64 %122, 24
  %126 = icmp ult i64 %112, 32
  %127 = or i1 %125, %126
  br i1 %127, label %148, label %128

128:                                              ; preds = %117
  %129 = and i64 %124, 4611686018427387900
  %130 = shl i64 %129, 3
  %131 = getelementptr i8, ptr %103, i64 %130
  %132 = shl i64 %129, 3
  %133 = getelementptr i8, ptr %104, i64 %132
  br label %134

134:                                              ; preds = %134, %128
  %135 = phi i64 [ 0, %128 ], [ %144, %134 ]
  %136 = shl i64 %135, 3
  %137 = getelementptr i8, ptr %103, i64 %136
  %138 = shl i64 %135, 3
  %139 = getelementptr i8, ptr %104, i64 %138
  %140 = getelementptr i8, ptr %139, i64 16
  %141 = load <2 x i64>, ptr %139, align 1
  %142 = load <2 x i64>, ptr %140, align 1
  %143 = getelementptr i8, ptr %137, i64 16
  store <2 x i64> %141, ptr %137, align 1
  store <2 x i64> %142, ptr %143, align 1
  %144 = add nuw i64 %135, 4
  %145 = icmp eq i64 %144, %129
  br i1 %145, label %146, label %134, !llvm.loop !206

146:                                              ; preds = %134
  %147 = icmp eq i64 %124, %129
  br i1 %147, label %299, label %148

148:                                              ; preds = %117, %146
  %149 = phi ptr [ %103, %117 ], [ %131, %146 ]
  %150 = phi ptr [ %104, %117 ], [ %133, %146 ]
  br label %151

151:                                              ; preds = %148, %151
  %152 = phi ptr [ %155, %151 ], [ %149, %148 ]
  %153 = phi ptr [ %156, %151 ], [ %150, %148 ]
  %154 = load i64, ptr %153, align 1
  store i64 %154, ptr %152, align 1
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 8
  %157 = icmp ult ptr %155, %113
  br i1 %157, label %151, label %299, !llvm.loop !207

158:                                              ; preds = %109
  %159 = load <2 x i64>, ptr %104, align 1, !tbaa !9
  store <2 x i64> %159, ptr %103, align 1, !tbaa !9
  %160 = icmp ult i64 %105, 17
  br i1 %160, label %299, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds nuw i8, ptr %103, i64 16
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi ptr [ %162, %161 ], [ %171, %163 ]
  %165 = phi ptr [ %104, %161 ], [ %169, %163 ]
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 16
  %167 = load <2 x i64>, ptr %166, align 1, !tbaa !9
  store <2 x i64> %167, ptr %164, align 1, !tbaa !9
  %168 = getelementptr inbounds nuw i8, ptr %164, i64 16
  %169 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %170 = load <2 x i64>, ptr %169, align 1, !tbaa !9
  store <2 x i64> %170, ptr %168, align 1, !tbaa !9
  %171 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %172 = icmp ult ptr %171, %113
  br i1 %172, label %163, label %299, !llvm.loop !101

173:                                              ; preds = %102
  %174 = icmp ugt ptr %103, %1
  br i1 %174, label %242, label %175

175:                                              ; preds = %173
  %176 = ptrtoint ptr %1 to i64
  %177 = ptrtoint ptr %103 to i64
  %178 = sub i64 %176, %177
  %179 = ptrtoint ptr %104 to i64
  %180 = sub i64 %177, %179
  %181 = getelementptr inbounds i8, ptr %103, i64 %178
  %182 = icmp ne i32 %4, 0
  %183 = icmp slt i64 %180, 16
  %184 = and i1 %182, %183
  br i1 %184, label %185, label %225

185:                                              ; preds = %175
  %186 = add i64 %177, 8
  %187 = tail call i64 @llvm.umax.i64(i64 %176, i64 %186)
  %188 = xor i64 %177, -1
  %189 = add i64 %187, %188
  %190 = lshr i64 %189, 3
  %191 = add nuw nsw i64 %190, 1
  %192 = icmp ult i64 %189, 24
  %193 = icmp ult i64 %180, 32
  %194 = or i1 %192, %193
  br i1 %194, label %215, label %195

195:                                              ; preds = %185
  %196 = and i64 %191, 4611686018427387900
  %197 = shl i64 %196, 3
  %198 = getelementptr i8, ptr %103, i64 %197
  %199 = shl i64 %196, 3
  %200 = getelementptr i8, ptr %104, i64 %199
  br label %201

201:                                              ; preds = %201, %195
  %202 = phi i64 [ 0, %195 ], [ %211, %201 ]
  %203 = shl i64 %202, 3
  %204 = getelementptr i8, ptr %103, i64 %203
  %205 = shl i64 %202, 3
  %206 = getelementptr i8, ptr %104, i64 %205
  %207 = getelementptr i8, ptr %206, i64 16
  %208 = load <2 x i64>, ptr %206, align 1
  %209 = load <2 x i64>, ptr %207, align 1
  %210 = getelementptr i8, ptr %204, i64 16
  store <2 x i64> %208, ptr %204, align 1
  store <2 x i64> %209, ptr %210, align 1
  %211 = add nuw i64 %202, 4
  %212 = icmp eq i64 %211, %196
  br i1 %212, label %213, label %201, !llvm.loop !208

213:                                              ; preds = %201
  %214 = icmp eq i64 %191, %196
  br i1 %214, label %240, label %215

215:                                              ; preds = %185, %213
  %216 = phi ptr [ %103, %185 ], [ %198, %213 ]
  %217 = phi ptr [ %104, %185 ], [ %200, %213 ]
  br label %218

218:                                              ; preds = %215, %218
  %219 = phi ptr [ %222, %218 ], [ %216, %215 ]
  %220 = phi ptr [ %223, %218 ], [ %217, %215 ]
  %221 = load i64, ptr %220, align 1
  store i64 %221, ptr %219, align 1
  %222 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 8
  %224 = icmp ult ptr %222, %1
  br i1 %224, label %218, label %240, !llvm.loop !209

225:                                              ; preds = %175
  %226 = load <2 x i64>, ptr %104, align 1, !tbaa !9
  store <2 x i64> %226, ptr %103, align 1, !tbaa !9
  %227 = icmp ult i64 %178, 17
  br i1 %227, label %240, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds nuw i8, ptr %103, i64 16
  br label %230

230:                                              ; preds = %230, %228
  %231 = phi ptr [ %229, %228 ], [ %238, %230 ]
  %232 = phi ptr [ %104, %228 ], [ %236, %230 ]
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 16
  %234 = load <2 x i64>, ptr %233, align 1, !tbaa !9
  store <2 x i64> %234, ptr %231, align 1, !tbaa !9
  %235 = getelementptr inbounds nuw i8, ptr %231, i64 16
  %236 = getelementptr inbounds nuw i8, ptr %232, i64 32
  %237 = load <2 x i64>, ptr %236, align 1, !tbaa !9
  store <2 x i64> %237, ptr %235, align 1, !tbaa !9
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 32
  %239 = icmp ult ptr %238, %1
  br i1 %239, label %230, label %240, !llvm.loop !101

240:                                              ; preds = %230, %218, %213, %225
  %241 = getelementptr inbounds i8, ptr %104, i64 %178
  br label %242

242:                                              ; preds = %240, %173
  %243 = phi ptr [ %103, %173 ], [ %181, %240 ]
  %244 = phi ptr [ %104, %173 ], [ %241, %240 ]
  %245 = icmp ult ptr %243, %11
  br i1 %245, label %246, label %299

246:                                              ; preds = %242
  %247 = add i64 %3, %8
  %248 = tail call i64 @llvm.umax.i64(i64 %106, i64 %7)
  %249 = sub i64 %247, %248
  %250 = icmp ult i64 %249, 4
  %251 = sub i64 %106, %107
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
  br i1 %267, label %268, label %258, !llvm.loop !210

268:                                              ; preds = %258
  %269 = icmp eq i64 %249, %257
  br i1 %269, label %299, label %270

270:                                              ; preds = %268
  %271 = getelementptr i8, ptr %244, i64 %257
  %272 = getelementptr i8, ptr %243, i64 %257
  %273 = and i64 %249, 28
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %270, %254
  %276 = phi i64 [ %257, %270 ], [ 0, %254 ]
  %277 = and i64 %249, -4
  %278 = getelementptr i8, ptr %244, i64 %277
  %279 = getelementptr i8, ptr %243, i64 %277
  br label %280

280:                                              ; preds = %280, %275
  %281 = phi i64 [ %276, %275 ], [ %285, %280 ]
  %282 = getelementptr i8, ptr %244, i64 %281
  %283 = getelementptr i8, ptr %243, i64 %281
  %284 = load <4 x i8>, ptr %282, align 1, !tbaa !9
  store <4 x i8> %284, ptr %283, align 1, !tbaa !9
  %285 = add nuw i64 %281, 4
  %286 = icmp eq i64 %285, %277
  br i1 %286, label %287, label %280, !llvm.loop !211

287:                                              ; preds = %280
  %288 = icmp eq i64 %249, %277
  br i1 %288, label %299, label %289

289:                                              ; preds = %270, %287, %246
  %290 = phi ptr [ %244, %246 ], [ %271, %270 ], [ %278, %287 ]
  %291 = phi ptr [ %243, %246 ], [ %272, %270 ], [ %279, %287 ]
  br label %292

292:                                              ; preds = %289, %292
  %293 = phi ptr [ %295, %292 ], [ %290, %289 ]
  %294 = phi ptr [ %297, %292 ], [ %291, %289 ]
  %295 = getelementptr inbounds nuw i8, ptr %293, i64 1
  %296 = load i8, ptr %293, align 1, !tbaa !9
  %297 = getelementptr inbounds nuw i8, ptr %294, i64 1
  store i8 %296, ptr %294, align 1, !tbaa !9
  %298 = icmp ult ptr %297, %11
  br i1 %298, label %292, label %299, !llvm.loop !212

299:                                              ; preds = %163, %151, %292, %62, %146, %268, %287, %38, %57, %242, %13, %158
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly byval(%struct.seq_t) align 8 captures(none) %3, ptr noundef nonnull captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readonly captures(none) %8) unnamed_addr #14 {
  %10 = load i64, ptr %3, align 8, !tbaa !96
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !131
  %14 = add i64 %13, %10
  %15 = load ptr, ptr %4, align 8, !tbaa !40
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %10
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = load i64, ptr %17, align 8, !tbaa !196
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i8, ptr %11, i64 %19
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = icmp ugt i64 %14, %23
  br i1 %24, label %199, label %25

25:                                               ; preds = %9
  %26 = ptrtoint ptr %5 to i64
  %27 = ptrtoint ptr %15 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %199, label %30

30:                                               ; preds = %25
  %31 = icmp ugt ptr %0, %15
  %32 = icmp ult ptr %0, %16
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %199, label %34

34:                                               ; preds = %30
  %35 = sub i64 %22, %27
  %36 = icmp ult i64 %10, 8
  %37 = icmp sgt i64 %35, -8
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = icmp eq i64 %10, 0
  br i1 %40, label %176, label %41

41:                                               ; preds = %39
  %42 = add i64 %10, %22
  %43 = add i64 %22, 1
  %44 = tail call i64 @llvm.umax.i64(i64 %42, i64 %43)
  %45 = sub i64 %44, %22
  %46 = icmp ult i64 %45, 4
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
  br i1 %62, label %63, label %53, !llvm.loop !213

63:                                               ; preds = %53
  %64 = icmp eq i64 %45, %52
  br i1 %64, label %176, label %65

65:                                               ; preds = %63
  %66 = getelementptr i8, ptr %0, i64 %52
  %67 = getelementptr i8, ptr %15, i64 %52
  %68 = and i64 %45, 28
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65, %49
  %71 = phi i64 [ %52, %65 ], [ 0, %49 ]
  %72 = and i64 %45, -4
  %73 = getelementptr i8, ptr %0, i64 %72
  %74 = getelementptr i8, ptr %15, i64 %72
  br label %75

75:                                               ; preds = %75, %70
  %76 = phi i64 [ %71, %70 ], [ %80, %75 ]
  %77 = getelementptr i8, ptr %0, i64 %76
  %78 = getelementptr i8, ptr %15, i64 %76
  %79 = load <4 x i8>, ptr %78, align 1, !tbaa !9
  store <4 x i8> %79, ptr %77, align 1, !tbaa !9
  %80 = add nuw i64 %76, 4
  %81 = icmp eq i64 %80, %72
  br i1 %81, label %82, label %75, !llvm.loop !214

82:                                               ; preds = %75
  %83 = icmp eq i64 %45, %72
  br i1 %83, label %176, label %84

84:                                               ; preds = %65, %82, %41
  %85 = phi ptr [ %0, %41 ], [ %66, %65 ], [ %73, %82 ]
  %86 = phi ptr [ %15, %41 ], [ %67, %65 ], [ %74, %82 ]
  br label %87

87:                                               ; preds = %84, %87
  %88 = phi ptr [ %92, %87 ], [ %85, %84 ]
  %89 = phi ptr [ %90, %87 ], [ %86, %84 ]
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 1
  %91 = load i8, ptr %89, align 1, !tbaa !9
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 1
  store i8 %91, ptr %88, align 1, !tbaa !9
  %93 = icmp ult ptr %92, %11
  br i1 %93, label %87, label %176, !llvm.loop !215

94:                                               ; preds = %34
  %95 = icmp sgt i64 %10, 31
  %96 = icmp samesign ult i64 %35, -16
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, ptr %11, i64 -32
  %100 = add nsw i64 %10, -32
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 %100
  %102 = load <2 x i64>, ptr %15, align 1, !tbaa !9
  store <2 x i64> %102, ptr %0, align 1, !tbaa !9
  %103 = icmp samesign ult i64 %100, 17
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi ptr [ %105, %104 ], [ %114, %106 ]
  %108 = phi ptr [ %15, %104 ], [ %112, %106 ]
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %110 = load <2 x i64>, ptr %109, align 1, !tbaa !9
  store <2 x i64> %110, ptr %107, align 1, !tbaa !9
  %111 = getelementptr inbounds nuw i8, ptr %107, i64 16
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %113 = load <2 x i64>, ptr %112, align 1, !tbaa !9
  store <2 x i64> %113, ptr %111, align 1, !tbaa !9
  %114 = getelementptr inbounds nuw i8, ptr %107, i64 32
  %115 = icmp ult ptr %114, %101
  br i1 %115, label %106, label %116, !llvm.loop !101

116:                                              ; preds = %106, %98
  %117 = getelementptr inbounds i8, ptr %15, i64 %100
  br label %118

118:                                              ; preds = %94, %116
  %119 = phi ptr [ %99, %116 ], [ %0, %94 ]
  %120 = phi ptr [ %117, %116 ], [ %15, %94 ]
  %121 = ptrtoint ptr %119 to i64
  %122 = add i64 %10, %22
  %123 = add nuw i64 %121, 1
  %124 = tail call i64 @llvm.umax.i64(i64 %122, i64 %123)
  %125 = sub i64 %124, %121
  %126 = icmp ult i64 %125, 4
  %127 = ptrtoint ptr %120 to i64
  %128 = sub i64 %121, %127
  %129 = icmp ult i64 %128, 32
  %130 = select i1 %126, i1 true, i1 %129
  br i1 %130, label %166, label %131

131:                                              ; preds = %118
  %132 = icmp ult i64 %125, 32
  br i1 %132, label %152, label %133

133:                                              ; preds = %131
  %134 = and i64 %125, -32
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %143, %135 ]
  %137 = getelementptr i8, ptr %119, i64 %136
  %138 = getelementptr i8, ptr %120, i64 %136
  %139 = getelementptr i8, ptr %138, i64 16
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !9
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !9
  %142 = getelementptr i8, ptr %137, i64 16
  store <16 x i8> %140, ptr %137, align 1, !tbaa !9
  store <16 x i8> %141, ptr %142, align 1, !tbaa !9
  %143 = add nuw i64 %136, 32
  %144 = icmp eq i64 %143, %134
  br i1 %144, label %145, label %135, !llvm.loop !216

145:                                              ; preds = %135
  %146 = icmp eq i64 %125, %134
  br i1 %146, label %176, label %147

147:                                              ; preds = %145
  %148 = getelementptr i8, ptr %119, i64 %134
  %149 = getelementptr i8, ptr %120, i64 %134
  %150 = and i64 %125, 28
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %147, %131
  %153 = phi i64 [ %134, %147 ], [ 0, %131 ]
  %154 = and i64 %125, -4
  %155 = getelementptr i8, ptr %119, i64 %154
  %156 = getelementptr i8, ptr %120, i64 %154
  br label %157

157:                                              ; preds = %157, %152
  %158 = phi i64 [ %153, %152 ], [ %162, %157 ]
  %159 = getelementptr i8, ptr %119, i64 %158
  %160 = getelementptr i8, ptr %120, i64 %158
  %161 = load <4 x i8>, ptr %160, align 1, !tbaa !9
  store <4 x i8> %161, ptr %159, align 1, !tbaa !9
  %162 = add nuw i64 %158, 4
  %163 = icmp eq i64 %162, %154
  br i1 %163, label %164, label %157, !llvm.loop !217

164:                                              ; preds = %157
  %165 = icmp eq i64 %125, %154
  br i1 %165, label %176, label %166

166:                                              ; preds = %147, %164, %118
  %167 = phi ptr [ %119, %118 ], [ %148, %147 ], [ %155, %164 ]
  %168 = phi ptr [ %120, %118 ], [ %149, %147 ], [ %156, %164 ]
  br label %169

169:                                              ; preds = %166, %169
  %170 = phi ptr [ %174, %169 ], [ %167, %166 ]
  %171 = phi ptr [ %172, %169 ], [ %168, %166 ]
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %173 = load i8, ptr %171, align 1, !tbaa !9
  %174 = getelementptr inbounds nuw i8, ptr %170, i64 1
  store i8 %173, ptr %170, align 1, !tbaa !9
  %175 = icmp ult ptr %174, %11
  br i1 %175, label %169, label %176, !llvm.loop !218

176:                                              ; preds = %169, %87, %145, %164, %63, %82, %39
  store ptr %16, ptr %4, align 8, !tbaa !40
  %177 = ptrtoint ptr %11 to i64
  %178 = ptrtoint ptr %6 to i64
  %179 = sub i64 %177, %178
  %180 = icmp ugt i64 %18, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %176
  %182 = ptrtoint ptr %7 to i64
  %183 = sub i64 %177, %182
  %184 = icmp ugt i64 %18, %183
  br i1 %184, label %199, label %185

185:                                              ; preds = %181
  %186 = ptrtoint ptr %20 to i64
  %187 = sub i64 %186, %178
  %188 = getelementptr inbounds i8, ptr %8, i64 %187
  %189 = add nsw i64 %187, %13
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %188, i64 %13, i1 false)
  br label %199

192:                                              ; preds = %185
  %193 = sub nsw i64 0, %187
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %188, i64 %193, i1 false)
  %194 = getelementptr inbounds nuw i8, ptr %11, i64 %193
  br label %195

195:                                              ; preds = %192, %176
  %196 = phi i64 [ %189, %192 ], [ %13, %176 ]
  %197 = phi ptr [ %194, %192 ], [ %11, %176 ]
  %198 = phi ptr [ %6, %192 ], [ %20, %176 ]
  tail call fastcc void @ZSTD_safecopy(ptr noundef %197, ptr noundef %2, ptr noundef %198, i64 noundef %196, i32 noundef 1)
  br label %199

199:                                              ; preds = %181, %30, %25, %9, %195, %191
  %200 = phi i64 [ %14, %191 ], [ %14, %195 ], [ -70, %9 ], [ -20, %25 ], [ -70, %30 ], [ -20, %181 ]
  ret i64 %200
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #13 {
  %7 = alloca %struct.seq_t, align 8
  %8 = alloca %struct.seq_t, align 8
  %9 = alloca %struct.seq_t, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.seqState_t, align 8
  %12 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  store ptr %15, ptr %10, align 8, !tbaa !40
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30360
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq i32 %5, 0
  br i1 %24, label %1484, label %25

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %11) #18
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %26, align 4, !tbaa !63
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %28 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %29 = load i32, ptr %27, align 4, !tbaa !30
  %30 = zext i32 %29 to i64
  store i64 %30, ptr %28, align 8, !tbaa !46
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i64 %33, ptr %34, align 8, !tbaa !46
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %36 = load i32, ptr %35, align 4, !tbaa !30
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i64 %37, ptr %38, align 8, !tbaa !46
  %39 = icmp eq i64 %4, 0
  br i1 %39, label %1482, label %40

40:                                               ; preds = %25
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %3, ptr %41, align 8, !tbaa !76
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %42, ptr %43, align 8, !tbaa !78
  %44 = icmp ugt i64 %4, 7
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = add nsw i64 %4, -8
  %47 = getelementptr inbounds i8, ptr %3, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %47, ptr %48, align 8, !tbaa !79
  %49 = load i64, ptr %47, align 1
  store i64 %49, ptr %11, align 8, !tbaa !80
  %50 = icmp ult i64 %49, 72057594037927936
  br i1 %50, label %1482, label %109

51:                                               ; preds = %40
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %3, ptr %52, align 8, !tbaa !79
  %53 = load i8, ptr %3, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  store i64 %54, ptr %11, align 8, !tbaa !80
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
  store i64 %95, ptr %11, align 8, !tbaa !80
  br label %96

96:                                               ; preds = %89, %51
  %97 = phi i64 [ %95, %89 ], [ %54, %51 ]
  %98 = getelementptr i8, ptr %3, i64 %4
  %99 = getelementptr i8, ptr %98, i64 -1
  %100 = load i8, ptr %99, align 1, !tbaa !9
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %1482, label %102

102:                                              ; preds = %96
  %103 = zext i8 %100 to i32
  %104 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %103, i1 true)
  %105 = trunc nuw nsw i64 %4 to i32
  %106 = shl nuw nsw i32 %105, 3
  %107 = sub nsw i32 %104, %106
  %108 = add nsw i32 %107, 41
  br label %116

109:                                              ; preds = %45
  %110 = lshr i64 %49, 56
  %111 = trunc nuw nsw i64 %110 to i32
  %112 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %111, i1 true)
  %113 = xor i32 %112, 31
  %114 = sub nuw nsw i32 8, %113
  %115 = icmp ult i64 %4, -119
  br i1 %115, label %116, label %1482

116:                                              ; preds = %102, %109
  %117 = phi ptr [ %3, %102 ], [ %47, %109 ]
  %118 = phi i64 [ 0, %102 ], [ %46, %109 ]
  %119 = phi i32 [ %108, %102 ], [ %114, %109 ]
  %120 = phi i64 [ %97, %102 ], [ %49, %109 ]
  %121 = getelementptr inbounds i8, ptr %3, i64 %118
  %122 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %123 = load ptr, ptr %0, align 8, !tbaa !81
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 4
  %125 = load i32, ptr %124, align 4, !tbaa !64
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %127 = add i32 %119, %125
  %128 = sub i32 0, %127
  %129 = and i32 %128, 63
  %130 = zext nneg i32 %129 to i64
  %131 = lshr i64 %120, %130
  %132 = zext nneg i32 %125 to i64
  %133 = shl nsw i64 -1, %132
  %134 = xor i64 %133, -1
  %135 = and i64 %131, %134
  store i64 %135, ptr %122, align 8, !tbaa !82
  %136 = icmp ugt i32 %127, 64
  %137 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %136, label %138, label %139, !prof !53

138:                                              ; preds = %116
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79
  br label %161

139:                                              ; preds = %116
  %140 = icmp slt i64 %118, 8
  br i1 %140, label %148, label %141

141:                                              ; preds = %139
  %142 = lshr i32 %127, 3
  %143 = zext nneg i32 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %121, i64 %144
  store ptr %145, ptr %137, align 8, !tbaa !79
  %146 = and i32 %127, 7
  store i32 %146, ptr %126, align 8, !tbaa !84
  %147 = load i64, ptr %145, align 1, !tbaa !46
  store i64 %147, ptr %11, align 8, !tbaa !80
  br label %161

148:                                              ; preds = %139
  %149 = icmp eq i64 %118, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %148
  %151 = lshr i32 %127, 3
  %152 = zext nneg i32 %151 to i64
  %153 = tail call i64 @llvm.smin.i64(i64 %118, i64 %152)
  %154 = trunc i64 %153 to i32
  %155 = and i64 %153, 4294967295
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %121, i64 %156
  store ptr %157, ptr %137, align 8, !tbaa !79
  %158 = shl i32 %154, 3
  %159 = sub i32 %127, %158
  store i32 %159, ptr %126, align 8, !tbaa !84
  %160 = load i64, ptr %157, align 1, !tbaa !46
  store i64 %160, ptr %11, align 8, !tbaa !80
  br label %161

161:                                              ; preds = %138, %141, %148, %150
  %162 = phi ptr [ @BIT_reloadDStream.zeroFilled, %138 ], [ %145, %141 ], [ %117, %148 ], [ %157, %150 ]
  %163 = phi ptr [ @BIT_reloadDStream.zeroFilled, %138 ], [ %145, %141 ], [ %3, %148 ], [ %157, %150 ]
  %164 = phi i32 [ %127, %138 ], [ %146, %141 ], [ %127, %148 ], [ %159, %150 ]
  %165 = phi i64 [ %120, %138 ], [ %147, %141 ], [ %120, %148 ], [ %160, %150 ]
  %166 = getelementptr inbounds nuw i8, ptr %123, i64 8
  %167 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %166, ptr %167, align 8, !tbaa !85
  %168 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %170 = load ptr, ptr %169, align 8, !tbaa !72
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 4
  %172 = load i32, ptr %171, align 4, !tbaa !64
  %173 = add i32 %164, %172
  %174 = sub i32 0, %173
  %175 = and i32 %174, 63
  %176 = zext nneg i32 %175 to i64
  %177 = lshr i64 %165, %176
  %178 = zext nneg i32 %172 to i64
  %179 = shl nsw i64 -1, %178
  %180 = xor i64 %179, -1
  %181 = and i64 %177, %180
  store i64 %181, ptr %168, align 8, !tbaa !82
  %182 = icmp ugt i32 %173, 64
  br i1 %182, label %183, label %184, !prof !53

183:                                              ; preds = %161
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79
  br label %212

184:                                              ; preds = %161
  %185 = icmp ult ptr %163, %42
  br i1 %185, label %193, label %186

186:                                              ; preds = %184
  %187 = lshr i32 %173, 3
  %188 = zext nneg i32 %187 to i64
  %189 = sub nsw i64 0, %188
  %190 = getelementptr inbounds i8, ptr %163, i64 %189
  store ptr %190, ptr %137, align 8, !tbaa !79
  %191 = and i32 %173, 7
  %192 = load i64, ptr %190, align 1, !tbaa !46
  store i64 %192, ptr %11, align 8, !tbaa !80
  br label %212

193:                                              ; preds = %184
  %194 = icmp eq ptr %163, %3
  br i1 %194, label %212, label %195

195:                                              ; preds = %193
  %196 = lshr i32 %173, 3
  %197 = zext nneg i32 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %163, i64 %198
  %200 = icmp ult ptr %199, %3
  %201 = ptrtoint ptr %163 to i64
  %202 = ptrtoint ptr %3 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = select i1 %200, i32 %204, i32 %196
  %206 = zext i32 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %163, i64 %207
  store ptr %208, ptr %137, align 8, !tbaa !79
  %209 = shl i32 %205, 3
  %210 = sub i32 %173, %209
  %211 = load i64, ptr %208, align 1, !tbaa !46
  store i64 %211, ptr %11, align 8, !tbaa !80
  br label %212

212:                                              ; preds = %183, %186, %193, %195
  %213 = phi ptr [ @BIT_reloadDStream.zeroFilled, %183 ], [ %190, %186 ], [ %162, %193 ], [ %208, %195 ]
  %214 = phi ptr [ @BIT_reloadDStream.zeroFilled, %183 ], [ %190, %186 ], [ %163, %193 ], [ %208, %195 ]
  %215 = phi i32 [ %173, %183 ], [ %191, %186 ], [ %173, %193 ], [ %210, %195 ]
  %216 = phi i64 [ %165, %183 ], [ %192, %186 ], [ %165, %193 ], [ %211, %195 ]
  %217 = getelementptr inbounds nuw i8, ptr %170, i64 8
  %218 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %217, ptr %218, align 8, !tbaa !85
  %219 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %221 = load ptr, ptr %220, align 8, !tbaa !86
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 4
  %223 = load i32, ptr %222, align 4, !tbaa !64
  %224 = add i32 %215, %223
  %225 = sub i32 0, %224
  %226 = and i32 %225, 63
  %227 = zext nneg i32 %226 to i64
  %228 = lshr i64 %216, %227
  %229 = zext nneg i32 %223 to i64
  %230 = shl nsw i64 -1, %229
  %231 = xor i64 %230, -1
  %232 = and i64 %228, %231
  store i32 %224, ptr %126, align 8, !tbaa !84
  store i64 %232, ptr %219, align 8, !tbaa !82
  %233 = icmp ugt i32 %224, 64
  br i1 %233, label %234, label %235, !prof !53

234:                                              ; preds = %212
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79
  br label %263

235:                                              ; preds = %212
  %236 = icmp ult ptr %214, %42
  br i1 %236, label %244, label %237

237:                                              ; preds = %235
  %238 = lshr i32 %224, 3
  %239 = zext nneg i32 %238 to i64
  %240 = sub nsw i64 0, %239
  %241 = getelementptr inbounds i8, ptr %214, i64 %240
  store ptr %241, ptr %137, align 8, !tbaa !79
  %242 = and i32 %224, 7
  store i32 %242, ptr %126, align 8, !tbaa !84
  %243 = load i64, ptr %241, align 1, !tbaa !46
  store i64 %243, ptr %11, align 8, !tbaa !80
  br label %263

244:                                              ; preds = %235
  %245 = icmp eq ptr %214, %3
  br i1 %245, label %263, label %246

246:                                              ; preds = %244
  %247 = lshr i32 %224, 3
  %248 = zext nneg i32 %247 to i64
  %249 = sub nsw i64 0, %248
  %250 = getelementptr inbounds i8, ptr %214, i64 %249
  %251 = icmp ult ptr %250, %3
  %252 = ptrtoint ptr %214 to i64
  %253 = ptrtoint ptr %3 to i64
  %254 = sub i64 %252, %253
  %255 = trunc i64 %254 to i32
  %256 = select i1 %251, i32 %255, i32 %247
  %257 = zext i32 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, ptr %214, i64 %258
  store ptr %259, ptr %137, align 8, !tbaa !79
  %260 = shl i32 %256, 3
  %261 = sub i32 %224, %260
  store i32 %261, ptr %126, align 8, !tbaa !84
  %262 = load i64, ptr %259, align 1, !tbaa !46
  store i64 %262, ptr %11, align 8, !tbaa !80
  br label %263

263:                                              ; preds = %234, %237, %244, %246
  %264 = phi ptr [ @BIT_reloadDStream.zeroFilled, %234 ], [ %241, %237 ], [ %213, %244 ], [ %259, %246 ]
  %265 = phi i32 [ %224, %234 ], [ %242, %237 ], [ %224, %244 ], [ %261, %246 ]
  %266 = phi i64 [ %216, %234 ], [ %243, %237 ], [ %216, %244 ], [ %262, %246 ]
  %267 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %268 = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %267, ptr %268, align 8, !tbaa !85
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !127
  %269 = getelementptr inbounds nuw i8, ptr %11, i64 96
  %270 = getelementptr inbounds nuw i8, ptr %11, i64 104
  %271 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %272 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %273 = ptrtoint ptr %19 to i64
  %274 = ptrtoint ptr %21 to i64
  %275 = add i64 %273, 16
  %276 = ptrtoint ptr %3 to i64
  %277 = ptrtoint ptr %3 to i64
  br label %278

278:                                              ; preds = %263, %698
  %279 = phi ptr [ %264, %263 ], [ %511, %698 ]
  %280 = phi i32 [ %265, %263 ], [ %512, %698 ]
  %281 = phi i64 [ %266, %263 ], [ %513, %698 ]
  %282 = phi i64 [ %37, %263 ], [ %370, %698 ]
  %283 = phi i64 [ %33, %263 ], [ %368, %698 ]
  %284 = phi i64 [ %30, %263 ], [ %369, %698 ]
  %285 = phi i64 [ %232, %263 ], [ %518, %698 ]
  %286 = phi i64 [ %181, %263 ], [ %517, %698 ]
  %287 = phi i64 [ %135, %263 ], [ %516, %698 ]
  %288 = phi i32 [ %5, %263 ], [ %699, %698 ]
  %289 = phi ptr [ %1, %263 ], [ %693, %698 ]
  %290 = icmp eq i32 %288, 1
  %291 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %166, i64 %287
  %292 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %267, i64 %285
  %293 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %217, i64 %286
  %294 = getelementptr inbounds nuw i8, ptr %292, i64 4
  %295 = load i32, ptr %294, align 4, !tbaa !43, !noalias !219
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw i8, ptr %291, i64 4
  %298 = load i32, ptr %297, align 4, !tbaa !43, !noalias !219
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw i8, ptr %293, i64 4
  %301 = load i32, ptr %300, align 4, !tbaa !43, !noalias !219
  %302 = getelementptr inbounds nuw i8, ptr %291, i64 2
  %303 = load i8, ptr %302, align 2, !tbaa !59, !noalias !219
  %304 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %305 = load i8, ptr %304, align 2, !tbaa !59, !noalias !219
  %306 = getelementptr inbounds nuw i8, ptr %293, i64 2
  %307 = load i8, ptr %306, align 2, !tbaa !59, !noalias !219
  %308 = zext i8 %303 to i32
  %309 = zext i8 %305 to i32
  %310 = add i8 %305, %303
  %311 = add i8 %310, %307
  %312 = load i16, ptr %291, align 4, !tbaa !58, !noalias !219
  %313 = load i16, ptr %292, align 4, !tbaa !58, !noalias !219
  %314 = load i16, ptr %293, align 4, !tbaa !58, !noalias !219
  %315 = getelementptr inbounds nuw i8, ptr %291, i64 3
  %316 = load i8, ptr %315, align 1, !tbaa !57, !noalias !219
  %317 = zext i8 %316 to i32
  %318 = getelementptr inbounds nuw i8, ptr %292, i64 3
  %319 = load i8, ptr %318, align 1, !tbaa !57, !noalias !219
  %320 = zext i8 %319 to i32
  %321 = getelementptr inbounds nuw i8, ptr %293, i64 3
  %322 = load i8, ptr %321, align 1, !tbaa !57, !noalias !219
  %323 = zext i8 %322 to i32
  %324 = icmp ugt i8 %307, 1
  br i1 %324, label %325, label %337

325:                                              ; preds = %278
  %326 = zext i8 %307 to i32
  %327 = and i32 %280, 63
  %328 = zext nneg i32 %327 to i64
  %329 = shl i64 %281, %328
  %330 = sub nsw i32 0, %326
  %331 = and i32 %330, 63
  %332 = zext nneg i32 %331 to i64
  %333 = lshr i64 %329, %332
  %334 = add i32 %280, %326
  store i32 %334, ptr %126, align 8, !tbaa !84, !noalias !219
  %335 = zext i32 %301 to i64
  %336 = add i64 %333, %335
  store i64 %283, ptr %270, align 8, !tbaa !46, !noalias !219
  br label %366

337:                                              ; preds = %278
  %338 = icmp eq i32 %298, 0
  %339 = icmp eq i8 %307, 0
  br i1 %339, label %340, label %343, !prof !91

340:                                              ; preds = %337
  %341 = select i1 %338, i64 %283, i64 %284
  %342 = select i1 %338, i64 %284, i64 %283
  br label %366

343:                                              ; preds = %337
  %344 = zext i1 %338 to i32
  %345 = add i32 %301, %344
  %346 = zext i32 %345 to i64
  %347 = and i32 %280, 63
  %348 = zext nneg i32 %347 to i64
  %349 = shl i64 %281, %348
  %350 = lshr i64 %349, 63
  %351 = add i32 %280, 1
  store i32 %351, ptr %126, align 8, !tbaa !84, !noalias !219
  %352 = add nuw nsw i64 %350, %346
  %353 = icmp eq i64 %352, 3
  br i1 %353, label %354, label %358

354:                                              ; preds = %343
  %355 = add i64 %284, -1
  %356 = icmp eq i64 %355, 0
  %357 = select i1 %356, i64 -1, i64 %355
  br label %364

358:                                              ; preds = %343
  %359 = getelementptr inbounds nuw [3 x i64], ptr %28, i64 0, i64 %352
  %360 = load i64, ptr %359, align 8, !tbaa !46, !noalias !219
  %361 = icmp eq i64 %360, 0
  %362 = select i1 %361, i64 -1, i64 %360
  %363 = icmp eq i64 %352, 1
  br i1 %363, label %366, label %364

364:                                              ; preds = %354, %358
  %365 = phi i64 [ %357, %354 ], [ %362, %358 ]
  store i64 %283, ptr %270, align 8, !tbaa !46, !noalias !219
  br label %366

366:                                              ; preds = %358, %364, %340, %325
  %367 = phi i32 [ %280, %340 ], [ %334, %325 ], [ %351, %364 ], [ %351, %358 ]
  %368 = phi i64 [ %342, %340 ], [ %284, %325 ], [ %284, %364 ], [ %284, %358 ]
  %369 = phi i64 [ %341, %340 ], [ %336, %325 ], [ %365, %364 ], [ %362, %358 ]
  %370 = phi i64 [ %282, %340 ], [ %283, %325 ], [ %283, %364 ], [ %282, %358 ]
  store i64 %368, ptr %269, align 8, !tbaa !46, !noalias !219
  store i64 %369, ptr %28, align 8, !tbaa !46, !noalias !219
  %371 = icmp eq i8 %305, 0
  br i1 %371, label %382, label %372

372:                                              ; preds = %366
  %373 = and i32 %367, 63
  %374 = zext nneg i32 %373 to i64
  %375 = shl i64 %281, %374
  %376 = sub nsw i32 0, %309
  %377 = and i32 %376, 63
  %378 = zext nneg i32 %377 to i64
  %379 = lshr i64 %375, %378
  %380 = add i32 %367, %309
  store i32 %380, ptr %126, align 8, !tbaa !84, !noalias !219
  %381 = add i64 %379, %296
  br label %382

382:                                              ; preds = %372, %366
  %383 = phi i32 [ %367, %366 ], [ %380, %372 ]
  %384 = phi i64 [ %296, %366 ], [ %381, %372 ]
  %385 = icmp ugt i8 %311, 30
  br i1 %385, label %386, label %416, !prof !53

386:                                              ; preds = %382
  %387 = icmp ugt i32 %383, 64
  br i1 %387, label %388, label %389, !prof !53

388:                                              ; preds = %386
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79, !noalias !219
  br label %416

389:                                              ; preds = %386
  %390 = icmp ult ptr %279, %42
  br i1 %390, label %398, label %391

391:                                              ; preds = %389
  %392 = lshr i32 %383, 3
  %393 = zext nneg i32 %392 to i64
  %394 = sub nsw i64 0, %393
  %395 = getelementptr inbounds i8, ptr %279, i64 %394
  store ptr %395, ptr %137, align 8, !tbaa !79, !noalias !219
  %396 = and i32 %383, 7
  store i32 %396, ptr %126, align 8, !tbaa !84, !noalias !219
  %397 = load i64, ptr %395, align 1, !tbaa !46, !noalias !219
  store i64 %397, ptr %11, align 8, !tbaa !80, !noalias !219
  br label %416

398:                                              ; preds = %389
  %399 = icmp eq ptr %279, %3
  br i1 %399, label %416, label %400

400:                                              ; preds = %398
  %401 = lshr i32 %383, 3
  %402 = zext nneg i32 %401 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %279, i64 %403
  %405 = icmp ult ptr %404, %3
  %406 = ptrtoint ptr %279 to i64
  %407 = sub i64 %406, %276
  %408 = trunc i64 %407 to i32
  %409 = select i1 %405, i32 %408, i32 %401
  %410 = zext i32 %409 to i64
  %411 = sub nsw i64 0, %410
  %412 = getelementptr inbounds i8, ptr %279, i64 %411
  store ptr %412, ptr %137, align 8, !tbaa !79, !noalias !219
  %413 = shl i32 %409, 3
  %414 = sub i32 %383, %413
  store i32 %414, ptr %126, align 8, !tbaa !84, !noalias !219
  %415 = load i64, ptr %412, align 1, !tbaa !46, !noalias !219
  store i64 %415, ptr %11, align 8, !tbaa !80, !noalias !219
  br label %416

416:                                              ; preds = %398, %388, %391, %400, %382
  %417 = phi ptr [ %279, %398 ], [ @BIT_reloadDStream.zeroFilled, %388 ], [ %395, %391 ], [ %412, %400 ], [ %279, %382 ]
  %418 = phi i32 [ %383, %398 ], [ %383, %388 ], [ %396, %391 ], [ %414, %400 ], [ %383, %382 ]
  %419 = phi i64 [ %281, %398 ], [ %281, %388 ], [ %397, %391 ], [ %415, %400 ], [ %281, %382 ]
  %420 = icmp eq i8 %303, 0
  br i1 %420, label %431, label %421

421:                                              ; preds = %416
  %422 = and i32 %418, 63
  %423 = zext nneg i32 %422 to i64
  %424 = shl i64 %419, %423
  %425 = sub nsw i32 0, %308
  %426 = and i32 %425, 63
  %427 = zext nneg i32 %426 to i64
  %428 = lshr i64 %424, %427
  %429 = add i32 %418, %308
  store i32 %429, ptr %126, align 8, !tbaa !84, !noalias !219
  %430 = add i64 %428, %299
  br label %431

431:                                              ; preds = %421, %416
  %432 = phi i32 [ %418, %416 ], [ %429, %421 ]
  %433 = phi i64 [ %299, %416 ], [ %430, %421 ]
  br i1 %290, label %505, label %434

434:                                              ; preds = %431
  %435 = add i32 %432, %317
  %436 = sub i32 0, %435
  %437 = and i32 %436, 63
  %438 = zext nneg i32 %437 to i64
  %439 = lshr i64 %419, %438
  %440 = zext nneg i8 %316 to i64
  %441 = shl nsw i64 -1, %440
  %442 = xor i64 %441, -1
  %443 = and i64 %439, %442
  %444 = zext i16 %312 to i64
  %445 = add nuw i64 %443, %444
  store i64 %445, ptr %122, align 8, !tbaa !82, !noalias !219
  %446 = add i32 %435, %320
  %447 = sub i32 0, %446
  %448 = and i32 %447, 63
  %449 = zext nneg i32 %448 to i64
  %450 = lshr i64 %419, %449
  %451 = zext nneg i8 %319 to i64
  %452 = shl nsw i64 -1, %451
  %453 = xor i64 %452, -1
  %454 = and i64 %450, %453
  %455 = zext i16 %313 to i64
  %456 = add nuw i64 %454, %455
  store i64 %456, ptr %219, align 8, !tbaa !82, !noalias !219
  %457 = add i32 %446, %323
  %458 = sub i32 0, %457
  %459 = and i32 %458, 63
  %460 = zext nneg i32 %459 to i64
  %461 = lshr i64 %419, %460
  %462 = zext nneg i8 %322 to i64
  %463 = shl nsw i64 -1, %462
  %464 = xor i64 %463, -1
  %465 = and i64 %461, %464
  store i32 %457, ptr %126, align 8, !tbaa !84, !noalias !219
  %466 = zext i16 %314 to i64
  %467 = add nuw i64 %465, %466
  store i64 %467, ptr %168, align 8, !tbaa !82, !noalias !219
  %468 = icmp ugt i32 %457, 64
  br i1 %468, label %469, label %470, !prof !53

469:                                              ; preds = %434
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79, !noalias !219
  br label %497

470:                                              ; preds = %434
  %471 = icmp ult ptr %417, %42
  br i1 %471, label %479, label %472

472:                                              ; preds = %470
  %473 = lshr i32 %457, 3
  %474 = zext nneg i32 %473 to i64
  %475 = sub nsw i64 0, %474
  %476 = getelementptr inbounds i8, ptr %417, i64 %475
  store ptr %476, ptr %137, align 8, !tbaa !79, !noalias !219
  %477 = and i32 %457, 7
  store i32 %477, ptr %126, align 8, !tbaa !84, !noalias !219
  %478 = load i64, ptr %476, align 1, !tbaa !46, !noalias !219
  store i64 %478, ptr %11, align 8, !tbaa !80, !noalias !219
  br label %497

479:                                              ; preds = %470
  %480 = icmp eq ptr %417, %3
  br i1 %480, label %497, label %481

481:                                              ; preds = %479
  %482 = lshr i32 %457, 3
  %483 = zext nneg i32 %482 to i64
  %484 = sub nsw i64 0, %483
  %485 = getelementptr inbounds i8, ptr %417, i64 %484
  %486 = icmp ult ptr %485, %3
  %487 = ptrtoint ptr %417 to i64
  %488 = sub i64 %487, %277
  %489 = trunc i64 %488 to i32
  %490 = select i1 %486, i32 %489, i32 %482
  %491 = zext i32 %490 to i64
  %492 = sub nsw i64 0, %491
  %493 = getelementptr inbounds i8, ptr %417, i64 %492
  store ptr %493, ptr %137, align 8, !tbaa !79, !noalias !219
  %494 = shl i32 %490, 3
  %495 = sub i32 %457, %494
  store i32 %495, ptr %126, align 8, !tbaa !84, !noalias !219
  %496 = load i64, ptr %493, align 1, !tbaa !46, !noalias !219
  store i64 %496, ptr %11, align 8, !tbaa !80, !noalias !219
  br label %497

497:                                              ; preds = %479, %469, %472, %481
  %498 = phi ptr [ %417, %479 ], [ @BIT_reloadDStream.zeroFilled, %469 ], [ %476, %472 ], [ %493, %481 ]
  %499 = phi i32 [ %457, %479 ], [ %457, %469 ], [ %477, %472 ], [ %495, %481 ]
  %500 = phi i64 [ %419, %479 ], [ %419, %469 ], [ %478, %472 ], [ %496, %481 ]
  %501 = load ptr, ptr %10, align 8, !tbaa !40
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 %433
  %503 = load ptr, ptr %16, align 8, !tbaa !34
  %504 = icmp ugt ptr %502, %503
  br i1 %504, label %701, label %510

505:                                              ; preds = %431
  %506 = load ptr, ptr %10, align 8, !tbaa !40
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 %433
  %508 = load ptr, ptr %16, align 8, !tbaa !34
  %509 = icmp ugt ptr %507, %508
  br i1 %509, label %703, label %510

510:                                              ; preds = %505, %497
  %511 = phi ptr [ %417, %505 ], [ %498, %497 ]
  %512 = phi i32 [ %432, %505 ], [ %499, %497 ]
  %513 = phi i64 [ %419, %505 ], [ %500, %497 ]
  %514 = phi ptr [ %507, %505 ], [ %502, %497 ]
  %515 = phi ptr [ %506, %505 ], [ %501, %497 ]
  %516 = phi i64 [ %287, %505 ], [ %445, %497 ]
  %517 = phi i64 [ %286, %505 ], [ %467, %497 ]
  %518 = phi i64 [ %285, %505 ], [ %456, %497 ]
  %519 = getelementptr inbounds i8, ptr %514, i64 -32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %433, ptr %7, align 8
  store i64 %384, ptr %271, align 8
  store i64 %369, ptr %272, align 8
  %520 = getelementptr i8, ptr %289, i64 %433
  %521 = add i64 %433, %384
  %522 = sub i64 0, %369
  %523 = getelementptr inbounds i8, ptr %520, i64 %522
  %524 = icmp ugt ptr %514, %17
  %525 = getelementptr inbounds nuw i8, ptr %289, i64 %521
  %526 = icmp ugt ptr %525, %519
  %527 = select i1 %524, i1 true, i1 %526
  br i1 %527, label %531, label %528, !prof !105

528:                                              ; preds = %510
  %529 = load <2 x i64>, ptr %515, align 1, !tbaa !9
  store <2 x i64> %529, ptr %289, align 1, !tbaa !9
  %530 = icmp ugt i64 %433, 16
  br i1 %530, label %533, label %551, !prof !53

531:                                              ; preds = %510
  %532 = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %289, ptr noundef %13, ptr noundef nonnull %519, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %10, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %690

533:                                              ; preds = %528
  %534 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %535 = getelementptr inbounds nuw i8, ptr %515, i64 16
  %536 = add i64 %433, -16
  %537 = load <2 x i64>, ptr %535, align 1, !tbaa !9
  store <2 x i64> %537, ptr %534, align 1, !tbaa !9
  %538 = icmp ult i64 %536, 17
  br i1 %538, label %551, label %539

539:                                              ; preds = %533
  %540 = getelementptr inbounds nuw i8, ptr %289, i64 32
  br label %541

541:                                              ; preds = %541, %539
  %542 = phi ptr [ %540, %539 ], [ %549, %541 ]
  %543 = phi ptr [ %535, %539 ], [ %547, %541 ]
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 16
  %545 = load <2 x i64>, ptr %544, align 1, !tbaa !9
  store <2 x i64> %545, ptr %542, align 1, !tbaa !9
  %546 = getelementptr inbounds nuw i8, ptr %542, i64 16
  %547 = getelementptr inbounds nuw i8, ptr %543, i64 32
  %548 = load <2 x i64>, ptr %547, align 1, !tbaa !9
  store <2 x i64> %548, ptr %546, align 1, !tbaa !9
  %549 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %550 = icmp ult ptr %549, %520
  br i1 %550, label %541, label %551, !llvm.loop !101

551:                                              ; preds = %541, %533, %528
  store ptr %514, ptr %10, align 8, !tbaa !40
  %552 = ptrtoint ptr %520 to i64
  %553 = sub i64 %552, %273
  %554 = icmp ugt i64 %369, %553
  br i1 %554, label %555, label %569

555:                                              ; preds = %551
  %556 = sub i64 %552, %274
  %557 = icmp ugt i64 %369, %556
  br i1 %557, label %558, label %559, !prof !53

558:                                              ; preds = %555
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %1482

559:                                              ; preds = %555
  %560 = ptrtoint ptr %523 to i64
  %561 = sub i64 %560, %273
  %562 = getelementptr inbounds i8, ptr %23, i64 %561
  %563 = add nsw i64 %561, %384
  %564 = icmp sgt i64 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %559
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %520, ptr align 1 %562, i64 %384, i1 false)
  br label %690

566:                                              ; preds = %559
  %567 = sub nsw i64 0, %561
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %520, ptr align 1 %562, i64 %567, i1 false)
  %568 = getelementptr inbounds nuw i8, ptr %520, i64 %567
  store i64 %563, ptr %271, align 8, !tbaa !131
  br label %569

569:                                              ; preds = %566, %551
  %570 = phi ptr [ %19, %566 ], [ %523, %551 ]
  %571 = phi ptr [ %568, %566 ], [ %520, %551 ]
  %572 = phi i64 [ %563, %566 ], [ %384, %551 ]
  %573 = icmp ugt i64 %369, 15
  br i1 %573, label %574, label %590, !prof !91

574:                                              ; preds = %569
  %575 = getelementptr inbounds nuw i8, ptr %571, i64 %572
  %576 = load <2 x i64>, ptr %570, align 1, !tbaa !9
  store <2 x i64> %576, ptr %571, align 1, !tbaa !9
  %577 = icmp ult i64 %572, 17
  br i1 %577, label %690, label %578

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
  br i1 %589, label %580, label %690, !llvm.loop !101

590:                                              ; preds = %569
  %591 = icmp samesign ult i64 %369, 8
  br i1 %591, label %592, label %614

592:                                              ; preds = %590
  %593 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %369
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
  %605 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %369
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
  br i1 %620, label %621, label %690

621:                                              ; preds = %616
  %622 = ptrtoint ptr %619 to i64
  %623 = ptrtoint ptr %618 to i64
  %624 = sub i64 %622, %623
  %625 = getelementptr i8, ptr %571, i64 %572
  %626 = icmp slt i64 %624, 16
  br i1 %626, label %627, label %674

627:                                              ; preds = %621
  %628 = add i64 %384, %273
  %629 = tail call i64 @llvm.umin.i64(i64 %369, i64 %553)
  %630 = add i64 %628, %629
  %631 = tail call i64 @llvm.umax.i64(i64 %369, i64 %553)
  %632 = add i64 %630, %631
  %633 = sub i64 %632, %369
  %634 = add i64 %275, %631
  %635 = tail call i64 @llvm.umax.i64(i64 %633, i64 %634)
  %636 = add i64 %635, -9
  %637 = add i64 %631, %273
  %638 = sub i64 %636, %637
  %639 = lshr i64 %638, 3
  %640 = add nuw nsw i64 %639, 1
  %641 = icmp ult i64 %638, 24
  %642 = icmp ult i64 %624, 32
  %643 = or i1 %641, %642
  br i1 %643, label %664, label %644

644:                                              ; preds = %627
  %645 = and i64 %640, 4611686018427387900
  %646 = shl i64 %645, 3
  %647 = getelementptr i8, ptr %619, i64 %646
  %648 = shl i64 %645, 3
  %649 = getelementptr i8, ptr %618, i64 %648
  br label %650

650:                                              ; preds = %650, %644
  %651 = phi i64 [ 0, %644 ], [ %660, %650 ]
  %652 = shl i64 %651, 3
  %653 = getelementptr i8, ptr %619, i64 %652
  %654 = shl i64 %651, 3
  %655 = getelementptr i8, ptr %618, i64 %654
  %656 = getelementptr i8, ptr %655, i64 16
  %657 = load <2 x i64>, ptr %655, align 1
  %658 = load <2 x i64>, ptr %656, align 1
  %659 = getelementptr i8, ptr %653, i64 16
  store <2 x i64> %657, ptr %653, align 1
  store <2 x i64> %658, ptr %659, align 1
  %660 = add nuw i64 %651, 4
  %661 = icmp eq i64 %660, %645
  br i1 %661, label %662, label %650, !llvm.loop !222

662:                                              ; preds = %650
  %663 = icmp eq i64 %640, %645
  br i1 %663, label %690, label %664

664:                                              ; preds = %627, %662
  %665 = phi ptr [ %619, %627 ], [ %647, %662 ]
  %666 = phi ptr [ %618, %627 ], [ %649, %662 ]
  br label %667

667:                                              ; preds = %664, %667
  %668 = phi ptr [ %671, %667 ], [ %665, %664 ]
  %669 = phi ptr [ %672, %667 ], [ %666, %664 ]
  %670 = load i64, ptr %669, align 1
  store i64 %670, ptr %668, align 1
  %671 = getelementptr inbounds nuw i8, ptr %668, i64 8
  %672 = getelementptr inbounds nuw i8, ptr %669, i64 8
  %673 = icmp ult ptr %671, %625
  br i1 %673, label %667, label %690, !llvm.loop !223

674:                                              ; preds = %621
  %675 = add i64 %572, -8
  %676 = load <2 x i64>, ptr %618, align 1, !tbaa !9
  store <2 x i64> %676, ptr %619, align 1, !tbaa !9
  %677 = icmp ult i64 %675, 17
  br i1 %677, label %690, label %678

678:                                              ; preds = %674
  %679 = getelementptr inbounds nuw i8, ptr %571, i64 24
  br label %680

680:                                              ; preds = %680, %678
  %681 = phi ptr [ %679, %678 ], [ %688, %680 ]
  %682 = phi ptr [ %618, %678 ], [ %686, %680 ]
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 16
  %684 = load <2 x i64>, ptr %683, align 1, !tbaa !9
  store <2 x i64> %684, ptr %681, align 1, !tbaa !9
  %685 = getelementptr inbounds nuw i8, ptr %681, i64 16
  %686 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %687 = load <2 x i64>, ptr %686, align 1, !tbaa !9
  store <2 x i64> %687, ptr %685, align 1, !tbaa !9
  %688 = getelementptr inbounds nuw i8, ptr %681, i64 32
  %689 = icmp ult ptr %688, %625
  br i1 %689, label %680, label %690, !llvm.loop !101

690:                                              ; preds = %680, %667, %580, %662, %674, %574, %616, %565, %531
  %691 = phi i64 [ %532, %531 ], [ %521, %565 ], [ %521, %616 ], [ %521, %574 ], [ %521, %674 ], [ %521, %662 ], [ %521, %580 ], [ %521, %667 ], [ %521, %680 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %692 = icmp ult i64 %691, -119
  %693 = getelementptr inbounds nuw i8, ptr %289, i64 %691
  br i1 %692, label %694, label %1482

694:                                              ; preds = %690
  %695 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %288, i32 -1)
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !90
  br i1 %696, label %697, label %698, !prof !113, !nosanitize !90

697:                                              ; preds = %694
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !90
  unreachable, !nosanitize !90

698:                                              ; preds = %694
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !90
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %1466, label %278, !llvm.loop !134

701:                                              ; preds = %497
  %702 = icmp sgt i32 %288, 0
  br i1 %702, label %703, label %1482

703:                                              ; preds = %505, %701
  %704 = phi ptr [ %498, %701 ], [ %417, %505 ]
  %705 = phi i32 [ %499, %701 ], [ %432, %505 ]
  %706 = phi i64 [ %500, %701 ], [ %419, %505 ]
  %707 = phi i64 [ %456, %701 ], [ %285, %505 ]
  %708 = phi i64 [ %467, %701 ], [ %286, %505 ]
  %709 = phi i64 [ %445, %701 ], [ %287, %505 ]
  %710 = phi ptr [ %501, %701 ], [ %506, %505 ]
  %711 = phi ptr [ %503, %701 ], [ %508, %505 ]
  %712 = ptrtoint ptr %711 to i64
  %713 = ptrtoint ptr %710 to i64
  %714 = sub i64 %712, %713
  %715 = icmp eq ptr %711, %710
  br i1 %715, label %866, label %716

716:                                              ; preds = %703
  %717 = ptrtoint ptr %13 to i64
  %718 = ptrtoint ptr %289 to i64
  %719 = sub i64 %717, %718
  %720 = icmp ugt i64 %714, %719
  br i1 %720, label %1482, label %721

721:                                              ; preds = %716
  %722 = sub i64 %718, %713
  %723 = getelementptr inbounds nuw i8, ptr %289, i64 %714
  %724 = icmp ult i64 %714, 8
  %725 = icmp sgt i64 %722, -8
  %726 = or i1 %724, %725
  br i1 %726, label %727, label %781

727:                                              ; preds = %721
  %728 = add i64 %718, %712
  %729 = sub i64 %728, %713
  %730 = add i64 %718, 1
  %731 = tail call i64 @llvm.umax.i64(i64 %729, i64 %730)
  %732 = sub i64 %731, %718
  %733 = icmp ult i64 %732, 4
  %734 = icmp ult i64 %722, 32
  %735 = or i1 %733, %734
  br i1 %735, label %771, label %736

736:                                              ; preds = %727
  %737 = icmp ult i64 %732, 32
  br i1 %737, label %757, label %738

738:                                              ; preds = %736
  %739 = and i64 %732, -32
  br label %740

740:                                              ; preds = %740, %738
  %741 = phi i64 [ 0, %738 ], [ %748, %740 ]
  %742 = getelementptr i8, ptr %289, i64 %741
  %743 = getelementptr i8, ptr %710, i64 %741
  %744 = getelementptr i8, ptr %743, i64 16
  %745 = load <16 x i8>, ptr %743, align 1, !tbaa !9
  %746 = load <16 x i8>, ptr %744, align 1, !tbaa !9
  %747 = getelementptr i8, ptr %742, i64 16
  store <16 x i8> %745, ptr %742, align 1, !tbaa !9
  store <16 x i8> %746, ptr %747, align 1, !tbaa !9
  %748 = add nuw i64 %741, 32
  %749 = icmp eq i64 %748, %739
  br i1 %749, label %750, label %740, !llvm.loop !224

750:                                              ; preds = %740
  %751 = icmp eq i64 %732, %739
  br i1 %751, label %864, label %752

752:                                              ; preds = %750
  %753 = getelementptr i8, ptr %289, i64 %739
  %754 = getelementptr i8, ptr %710, i64 %739
  %755 = and i64 %732, 28
  %756 = icmp eq i64 %755, 0
  br i1 %756, label %771, label %757

757:                                              ; preds = %752, %736
  %758 = phi i64 [ %739, %752 ], [ 0, %736 ]
  %759 = and i64 %732, -4
  %760 = getelementptr i8, ptr %289, i64 %759
  %761 = getelementptr i8, ptr %710, i64 %759
  br label %762

762:                                              ; preds = %762, %757
  %763 = phi i64 [ %758, %757 ], [ %767, %762 ]
  %764 = getelementptr i8, ptr %289, i64 %763
  %765 = getelementptr i8, ptr %710, i64 %763
  %766 = load <4 x i8>, ptr %765, align 1, !tbaa !9
  store <4 x i8> %766, ptr %764, align 1, !tbaa !9
  %767 = add nuw i64 %763, 4
  %768 = icmp eq i64 %767, %759
  br i1 %768, label %769, label %762, !llvm.loop !225

769:                                              ; preds = %762
  %770 = icmp eq i64 %732, %759
  br i1 %770, label %864, label %771

771:                                              ; preds = %752, %769, %727
  %772 = phi ptr [ %289, %727 ], [ %753, %752 ], [ %760, %769 ]
  %773 = phi ptr [ %710, %727 ], [ %754, %752 ], [ %761, %769 ]
  br label %774

774:                                              ; preds = %771, %774
  %775 = phi ptr [ %779, %774 ], [ %772, %771 ]
  %776 = phi ptr [ %777, %774 ], [ %773, %771 ]
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 1
  %778 = load i8, ptr %776, align 1, !tbaa !9
  %779 = getelementptr inbounds nuw i8, ptr %775, i64 1
  store i8 %778, ptr %775, align 1, !tbaa !9
  %780 = icmp ult ptr %779, %723
  br i1 %780, label %774, label %864, !llvm.loop !226

781:                                              ; preds = %721
  %782 = icmp sgt i64 %714, 31
  %783 = icmp samesign ult i64 %722, -16
  %784 = and i1 %782, %783
  br i1 %784, label %785, label %805

785:                                              ; preds = %781
  %786 = getelementptr inbounds i8, ptr %723, i64 -32
  %787 = add nsw i64 %714, -32
  %788 = getelementptr inbounds nuw i8, ptr %289, i64 %787
  %789 = load <2 x i64>, ptr %710, align 1, !tbaa !9
  store <2 x i64> %789, ptr %289, align 1, !tbaa !9
  %790 = icmp samesign ult i64 %787, 17
  br i1 %790, label %803, label %791

791:                                              ; preds = %785
  %792 = getelementptr inbounds nuw i8, ptr %289, i64 16
  br label %793

793:                                              ; preds = %793, %791
  %794 = phi ptr [ %792, %791 ], [ %801, %793 ]
  %795 = phi ptr [ %710, %791 ], [ %799, %793 ]
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 16
  %797 = load <2 x i64>, ptr %796, align 1, !tbaa !9
  store <2 x i64> %797, ptr %794, align 1, !tbaa !9
  %798 = getelementptr inbounds nuw i8, ptr %794, i64 16
  %799 = getelementptr inbounds nuw i8, ptr %795, i64 32
  %800 = load <2 x i64>, ptr %799, align 1, !tbaa !9
  store <2 x i64> %800, ptr %798, align 1, !tbaa !9
  %801 = getelementptr inbounds nuw i8, ptr %794, i64 32
  %802 = icmp ult ptr %801, %788
  br i1 %802, label %793, label %803, !llvm.loop !101

803:                                              ; preds = %793, %785
  %804 = getelementptr inbounds i8, ptr %710, i64 %787
  br label %805

805:                                              ; preds = %781, %803
  %806 = phi ptr [ %786, %803 ], [ %289, %781 ]
  %807 = phi ptr [ %804, %803 ], [ %710, %781 ]
  %808 = ptrtoint ptr %806 to i64
  %809 = add i64 %718, %712
  %810 = sub i64 %809, %713
  %811 = add nuw i64 %808, 1
  %812 = tail call i64 @llvm.umax.i64(i64 %810, i64 %811)
  %813 = sub i64 %812, %808
  %814 = icmp ult i64 %813, 4
  %815 = ptrtoint ptr %807 to i64
  %816 = sub i64 %808, %815
  %817 = icmp ult i64 %816, 32
  %818 = select i1 %814, i1 true, i1 %817
  br i1 %818, label %854, label %819

819:                                              ; preds = %805
  %820 = icmp ult i64 %813, 32
  br i1 %820, label %840, label %821

821:                                              ; preds = %819
  %822 = and i64 %813, -32
  br label %823

823:                                              ; preds = %823, %821
  %824 = phi i64 [ 0, %821 ], [ %831, %823 ]
  %825 = getelementptr i8, ptr %806, i64 %824
  %826 = getelementptr i8, ptr %807, i64 %824
  %827 = getelementptr i8, ptr %826, i64 16
  %828 = load <16 x i8>, ptr %826, align 1, !tbaa !9
  %829 = load <16 x i8>, ptr %827, align 1, !tbaa !9
  %830 = getelementptr i8, ptr %825, i64 16
  store <16 x i8> %828, ptr %825, align 1, !tbaa !9
  store <16 x i8> %829, ptr %830, align 1, !tbaa !9
  %831 = add nuw i64 %824, 32
  %832 = icmp eq i64 %831, %822
  br i1 %832, label %833, label %823, !llvm.loop !227

833:                                              ; preds = %823
  %834 = icmp eq i64 %813, %822
  br i1 %834, label %864, label %835

835:                                              ; preds = %833
  %836 = getelementptr i8, ptr %806, i64 %822
  %837 = getelementptr i8, ptr %807, i64 %822
  %838 = and i64 %813, 28
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %854, label %840

840:                                              ; preds = %835, %819
  %841 = phi i64 [ %822, %835 ], [ 0, %819 ]
  %842 = and i64 %813, -4
  %843 = getelementptr i8, ptr %806, i64 %842
  %844 = getelementptr i8, ptr %807, i64 %842
  br label %845

845:                                              ; preds = %845, %840
  %846 = phi i64 [ %841, %840 ], [ %850, %845 ]
  %847 = getelementptr i8, ptr %806, i64 %846
  %848 = getelementptr i8, ptr %807, i64 %846
  %849 = load <4 x i8>, ptr %848, align 1, !tbaa !9
  store <4 x i8> %849, ptr %847, align 1, !tbaa !9
  %850 = add nuw i64 %846, 4
  %851 = icmp eq i64 %850, %842
  br i1 %851, label %852, label %845, !llvm.loop !228

852:                                              ; preds = %845
  %853 = icmp eq i64 %813, %842
  br i1 %853, label %864, label %854

854:                                              ; preds = %835, %852, %805
  %855 = phi ptr [ %806, %805 ], [ %836, %835 ], [ %843, %852 ]
  %856 = phi ptr [ %807, %805 ], [ %837, %835 ], [ %844, %852 ]
  br label %857

857:                                              ; preds = %854, %857
  %858 = phi ptr [ %862, %857 ], [ %855, %854 ]
  %859 = phi ptr [ %860, %857 ], [ %856, %854 ]
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 1
  %861 = load i8, ptr %859, align 1, !tbaa !9
  %862 = getelementptr inbounds nuw i8, ptr %858, i64 1
  store i8 %861, ptr %858, align 1, !tbaa !9
  %863 = icmp ult ptr %862, %723
  br i1 %863, label %857, label %864, !llvm.loop !229

864:                                              ; preds = %857, %774, %833, %852, %750, %769
  %865 = sub i64 %433, %714
  br label %866

866:                                              ; preds = %864, %703
  %867 = phi i64 [ %433, %703 ], [ %865, %864 ]
  %868 = phi ptr [ %289, %703 ], [ %723, %864 ]
  %869 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  store ptr %869, ptr %10, align 8, !tbaa !40
  %870 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  %871 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %871, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  store i64 %867, ptr %8, align 8
  %872 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %384, ptr %872, align 8
  %873 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %369, ptr %873, align 8
  %874 = getelementptr i8, ptr %868, i64 %867
  %875 = add i64 %867, %384
  %876 = getelementptr inbounds nuw i8, ptr %0, i64 %867
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 30372
  %878 = sub i64 0, %369
  %879 = getelementptr inbounds i8, ptr %874, i64 %878
  %880 = icmp sgt i64 %867, 65536
  %881 = getelementptr inbounds i8, ptr %13, i64 -32
  %882 = getelementptr inbounds nuw i8, ptr %868, i64 %875
  %883 = icmp ugt ptr %882, %881
  %884 = select i1 %880, i1 true, i1 %883
  br i1 %884, label %888, label %885, !prof !105

885:                                              ; preds = %866
  %886 = load <2 x i64>, ptr %869, align 1, !tbaa !9
  store <2 x i64> %886, ptr %868, align 1, !tbaa !9
  %887 = icmp ugt i64 %867, 16
  br i1 %887, label %890, label %908, !prof !53

888:                                              ; preds = %866
  %889 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %868, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %10, ptr noundef nonnull %870, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %1048

890:                                              ; preds = %885
  %891 = getelementptr inbounds nuw i8, ptr %868, i64 16
  %892 = getelementptr inbounds nuw i8, ptr %0, i64 30388
  %893 = add i64 %867, -16
  %894 = load <2 x i64>, ptr %892, align 1, !tbaa !9
  store <2 x i64> %894, ptr %891, align 1, !tbaa !9
  %895 = icmp ult i64 %893, 17
  br i1 %895, label %908, label %896

896:                                              ; preds = %890
  %897 = getelementptr inbounds nuw i8, ptr %868, i64 32
  br label %898

898:                                              ; preds = %898, %896
  %899 = phi ptr [ %897, %896 ], [ %906, %898 ]
  %900 = phi ptr [ %892, %896 ], [ %904, %898 ]
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 16
  %902 = load <2 x i64>, ptr %901, align 1, !tbaa !9
  store <2 x i64> %902, ptr %899, align 1, !tbaa !9
  %903 = getelementptr inbounds nuw i8, ptr %899, i64 16
  %904 = getelementptr inbounds nuw i8, ptr %900, i64 32
  %905 = load <2 x i64>, ptr %904, align 1, !tbaa !9
  store <2 x i64> %905, ptr %903, align 1, !tbaa !9
  %906 = getelementptr inbounds nuw i8, ptr %899, i64 32
  %907 = icmp ult ptr %906, %874
  br i1 %907, label %898, label %908, !llvm.loop !101

908:                                              ; preds = %898, %890, %885
  store ptr %877, ptr %10, align 8, !tbaa !40
  %909 = ptrtoint ptr %874 to i64
  %910 = sub i64 %909, %273
  %911 = icmp ugt i64 %369, %910
  br i1 %911, label %912, label %926

912:                                              ; preds = %908
  %913 = sub i64 %909, %274
  %914 = icmp ugt i64 %369, %913
  br i1 %914, label %915, label %916, !prof !53

915:                                              ; preds = %912
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %1482

916:                                              ; preds = %912
  %917 = ptrtoint ptr %879 to i64
  %918 = sub i64 %917, %273
  %919 = getelementptr inbounds i8, ptr %23, i64 %918
  %920 = add nsw i64 %918, %384
  %921 = icmp sgt i64 %920, 0
  br i1 %921, label %923, label %922

922:                                              ; preds = %916
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %874, ptr align 1 %919, i64 %384, i1 false)
  br label %1048

923:                                              ; preds = %916
  %924 = sub nsw i64 0, %918
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %874, ptr align 1 %919, i64 %924, i1 false)
  %925 = getelementptr inbounds nuw i8, ptr %874, i64 %924
  store i64 %920, ptr %872, align 8, !tbaa !131
  br label %926

926:                                              ; preds = %923, %908
  %927 = phi ptr [ %925, %923 ], [ %874, %908 ]
  %928 = phi ptr [ %19, %923 ], [ %879, %908 ]
  %929 = phi i64 [ %920, %923 ], [ %384, %908 ]
  %930 = icmp ugt i64 %369, 15
  br i1 %930, label %931, label %947, !prof !91

931:                                              ; preds = %926
  %932 = getelementptr inbounds nuw i8, ptr %927, i64 %929
  %933 = load <2 x i64>, ptr %928, align 1, !tbaa !9
  store <2 x i64> %933, ptr %927, align 1, !tbaa !9
  %934 = icmp ult i64 %929, 17
  br i1 %934, label %1048, label %935

935:                                              ; preds = %931
  %936 = getelementptr inbounds nuw i8, ptr %927, i64 16
  br label %937

937:                                              ; preds = %937, %935
  %938 = phi ptr [ %936, %935 ], [ %945, %937 ]
  %939 = phi ptr [ %928, %935 ], [ %943, %937 ]
  %940 = getelementptr inbounds nuw i8, ptr %939, i64 16
  %941 = load <2 x i64>, ptr %940, align 1, !tbaa !9
  store <2 x i64> %941, ptr %938, align 1, !tbaa !9
  %942 = getelementptr inbounds nuw i8, ptr %938, i64 16
  %943 = getelementptr inbounds nuw i8, ptr %939, i64 32
  %944 = load <2 x i64>, ptr %943, align 1, !tbaa !9
  store <2 x i64> %944, ptr %942, align 1, !tbaa !9
  %945 = getelementptr inbounds nuw i8, ptr %938, i64 32
  %946 = icmp ult ptr %945, %932
  br i1 %946, label %937, label %1048, !llvm.loop !101

947:                                              ; preds = %926
  %948 = icmp samesign ult i64 %369, 8
  br i1 %948, label %949, label %971

949:                                              ; preds = %947
  %950 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %369
  %951 = load i32, ptr %950, align 4, !tbaa !30
  %952 = load i8, ptr %928, align 1, !tbaa !9
  store i8 %952, ptr %927, align 1, !tbaa !9
  %953 = getelementptr inbounds nuw i8, ptr %928, i64 1
  %954 = load i8, ptr %953, align 1, !tbaa !9
  %955 = getelementptr inbounds nuw i8, ptr %927, i64 1
  store i8 %954, ptr %955, align 1, !tbaa !9
  %956 = getelementptr inbounds nuw i8, ptr %928, i64 2
  %957 = load i8, ptr %956, align 1, !tbaa !9
  %958 = getelementptr inbounds nuw i8, ptr %927, i64 2
  store i8 %957, ptr %958, align 1, !tbaa !9
  %959 = getelementptr inbounds nuw i8, ptr %928, i64 3
  %960 = load i8, ptr %959, align 1, !tbaa !9
  %961 = getelementptr inbounds nuw i8, ptr %927, i64 3
  store i8 %960, ptr %961, align 1, !tbaa !9
  %962 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %369
  %963 = load i32, ptr %962, align 4, !tbaa !30
  %964 = zext i32 %963 to i64
  %965 = getelementptr inbounds nuw i8, ptr %928, i64 %964
  %966 = getelementptr inbounds nuw i8, ptr %927, i64 4
  %967 = load i32, ptr %965, align 1
  store i32 %967, ptr %966, align 1
  %968 = sext i32 %951 to i64
  %969 = sub nsw i64 0, %968
  %970 = getelementptr inbounds i8, ptr %965, i64 %969
  br label %973

971:                                              ; preds = %947
  %972 = load i64, ptr %928, align 1
  store i64 %972, ptr %927, align 1
  br label %973

973:                                              ; preds = %971, %949
  %974 = phi ptr [ %970, %949 ], [ %928, %971 ]
  %975 = getelementptr inbounds nuw i8, ptr %974, i64 8
  %976 = getelementptr inbounds nuw i8, ptr %927, i64 8
  %977 = icmp ugt i64 %929, 8
  br i1 %977, label %978, label %1048

978:                                              ; preds = %973
  %979 = ptrtoint ptr %976 to i64
  %980 = ptrtoint ptr %975 to i64
  %981 = sub i64 %979, %980
  %982 = getelementptr i8, ptr %927, i64 %929
  %983 = icmp slt i64 %981, 16
  br i1 %983, label %984, label %1032

984:                                              ; preds = %978
  %985 = add i64 %384, %273
  %986 = tail call i64 @llvm.umin.i64(i64 %369, i64 %910)
  %987 = add i64 %985, %986
  %988 = tail call i64 @llvm.umax.i64(i64 %369, i64 %910)
  %989 = add i64 %987, %988
  %990 = sub i64 %989, %369
  %991 = add i64 %988, %273
  %992 = add i64 %991, 16
  %993 = tail call i64 @llvm.umax.i64(i64 %990, i64 %992)
  %994 = add i64 %993, -9
  %995 = add i64 %988, %273
  %996 = sub i64 %994, %995
  %997 = lshr i64 %996, 3
  %998 = add nuw nsw i64 %997, 1
  %999 = icmp ult i64 %996, 24
  %1000 = icmp ult i64 %981, 32
  %1001 = or i1 %999, %1000
  br i1 %1001, label %1022, label %1002

1002:                                             ; preds = %984
  %1003 = and i64 %998, 4611686018427387900
  %1004 = shl i64 %1003, 3
  %1005 = getelementptr i8, ptr %976, i64 %1004
  %1006 = shl i64 %1003, 3
  %1007 = getelementptr i8, ptr %975, i64 %1006
  br label %1008

1008:                                             ; preds = %1008, %1002
  %1009 = phi i64 [ 0, %1002 ], [ %1018, %1008 ]
  %1010 = shl i64 %1009, 3
  %1011 = getelementptr i8, ptr %976, i64 %1010
  %1012 = shl i64 %1009, 3
  %1013 = getelementptr i8, ptr %975, i64 %1012
  %1014 = getelementptr i8, ptr %1013, i64 16
  %1015 = load <2 x i64>, ptr %1013, align 1
  %1016 = load <2 x i64>, ptr %1014, align 1
  %1017 = getelementptr i8, ptr %1011, i64 16
  store <2 x i64> %1015, ptr %1011, align 1
  store <2 x i64> %1016, ptr %1017, align 1
  %1018 = add nuw i64 %1009, 4
  %1019 = icmp eq i64 %1018, %1003
  br i1 %1019, label %1020, label %1008, !llvm.loop !230

1020:                                             ; preds = %1008
  %1021 = icmp eq i64 %998, %1003
  br i1 %1021, label %1048, label %1022

1022:                                             ; preds = %984, %1020
  %1023 = phi ptr [ %976, %984 ], [ %1005, %1020 ]
  %1024 = phi ptr [ %975, %984 ], [ %1007, %1020 ]
  br label %1025

1025:                                             ; preds = %1022, %1025
  %1026 = phi ptr [ %1029, %1025 ], [ %1023, %1022 ]
  %1027 = phi ptr [ %1030, %1025 ], [ %1024, %1022 ]
  %1028 = load i64, ptr %1027, align 1
  store i64 %1028, ptr %1026, align 1
  %1029 = getelementptr inbounds nuw i8, ptr %1026, i64 8
  %1030 = getelementptr inbounds nuw i8, ptr %1027, i64 8
  %1031 = icmp ult ptr %1029, %982
  br i1 %1031, label %1025, label %1048, !llvm.loop !231

1032:                                             ; preds = %978
  %1033 = add i64 %929, -8
  %1034 = load <2 x i64>, ptr %975, align 1, !tbaa !9
  store <2 x i64> %1034, ptr %976, align 1, !tbaa !9
  %1035 = icmp ult i64 %1033, 17
  br i1 %1035, label %1048, label %1036

1036:                                             ; preds = %1032
  %1037 = getelementptr inbounds nuw i8, ptr %927, i64 24
  br label %1038

1038:                                             ; preds = %1038, %1036
  %1039 = phi ptr [ %1037, %1036 ], [ %1046, %1038 ]
  %1040 = phi ptr [ %975, %1036 ], [ %1044, %1038 ]
  %1041 = getelementptr inbounds nuw i8, ptr %1040, i64 16
  %1042 = load <2 x i64>, ptr %1041, align 1, !tbaa !9
  store <2 x i64> %1042, ptr %1039, align 1, !tbaa !9
  %1043 = getelementptr inbounds nuw i8, ptr %1039, i64 16
  %1044 = getelementptr inbounds nuw i8, ptr %1040, i64 32
  %1045 = load <2 x i64>, ptr %1044, align 1, !tbaa !9
  store <2 x i64> %1045, ptr %1043, align 1, !tbaa !9
  %1046 = getelementptr inbounds nuw i8, ptr %1039, i64 32
  %1047 = icmp ult ptr %1046, %982
  br i1 %1047, label %1038, label %1048, !llvm.loop !101

1048:                                             ; preds = %1038, %1025, %937, %1020, %888, %922, %973, %931, %1032
  %1049 = phi i64 [ %889, %888 ], [ %875, %922 ], [ %875, %973 ], [ %875, %931 ], [ %875, %1032 ], [ %875, %1020 ], [ %875, %937 ], [ %875, %1025 ], [ %875, %1038 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  %1050 = icmp ult i64 %1049, -119
  %1051 = getelementptr inbounds nuw i8, ptr %868, i64 %1049
  %1052 = add nsw i32 %288, -1
  br i1 %1050, label %1053, label %1482

1053:                                             ; preds = %1048
  %1054 = icmp eq i32 %1052, 0
  br i1 %1054, label %1466, label %1055

1055:                                             ; preds = %1053
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !143
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !144
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !145
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !146
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !147
  %1056 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %1057 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %1058 = add i64 %273, 16
  %1059 = ptrtoint ptr %3 to i64
  %1060 = ptrtoint ptr %3 to i64
  br label %1061

1061:                                             ; preds = %1055, %1462
  %1062 = phi ptr [ %704, %1055 ], [ %1281, %1462 ]
  %1063 = phi i32 [ %705, %1055 ], [ %1282, %1462 ]
  %1064 = phi i64 [ %706, %1055 ], [ %1283, %1462 ]
  %1065 = phi i64 [ %370, %1055 ], [ %1153, %1462 ]
  %1066 = phi i64 [ %368, %1055 ], [ %1151, %1462 ]
  %1067 = phi i64 [ %369, %1055 ], [ %1152, %1462 ]
  %1068 = phi i64 [ %707, %1055 ], [ %1284, %1462 ]
  %1069 = phi i64 [ %708, %1055 ], [ %1285, %1462 ]
  %1070 = phi i64 [ %709, %1055 ], [ %1286, %1462 ]
  %1071 = phi i32 [ %1052, %1055 ], [ %1464, %1462 ]
  %1072 = phi ptr [ %1051, %1055 ], [ %1463, %1462 ]
  %1073 = icmp eq i32 %1071, 1
  %1074 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %166, i64 %1070
  %1075 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %267, i64 %1068
  %1076 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %217, i64 %1069
  %1077 = getelementptr inbounds nuw i8, ptr %1075, i64 4
  %1078 = load i32, ptr %1077, align 4, !tbaa !43, !noalias !232
  %1079 = zext i32 %1078 to i64
  %1080 = getelementptr inbounds nuw i8, ptr %1074, i64 4
  %1081 = load i32, ptr %1080, align 4, !tbaa !43, !noalias !232
  %1082 = zext i32 %1081 to i64
  %1083 = getelementptr inbounds nuw i8, ptr %1076, i64 4
  %1084 = load i32, ptr %1083, align 4, !tbaa !43, !noalias !232
  %1085 = getelementptr inbounds nuw i8, ptr %1074, i64 2
  %1086 = load i8, ptr %1085, align 2, !tbaa !59, !noalias !232
  %1087 = getelementptr inbounds nuw i8, ptr %1075, i64 2
  %1088 = load i8, ptr %1087, align 2, !tbaa !59, !noalias !232
  %1089 = getelementptr inbounds nuw i8, ptr %1076, i64 2
  %1090 = load i8, ptr %1089, align 2, !tbaa !59, !noalias !232
  %1091 = zext i8 %1086 to i32
  %1092 = zext i8 %1088 to i32
  %1093 = add i8 %1088, %1086
  %1094 = add i8 %1093, %1090
  %1095 = load i16, ptr %1074, align 4, !tbaa !58, !noalias !232
  %1096 = load i16, ptr %1075, align 4, !tbaa !58, !noalias !232
  %1097 = load i16, ptr %1076, align 4, !tbaa !58, !noalias !232
  %1098 = getelementptr inbounds nuw i8, ptr %1074, i64 3
  %1099 = load i8, ptr %1098, align 1, !tbaa !57, !noalias !232
  %1100 = zext i8 %1099 to i32
  %1101 = getelementptr inbounds nuw i8, ptr %1075, i64 3
  %1102 = load i8, ptr %1101, align 1, !tbaa !57, !noalias !232
  %1103 = zext i8 %1102 to i32
  %1104 = getelementptr inbounds nuw i8, ptr %1076, i64 3
  %1105 = load i8, ptr %1104, align 1, !tbaa !57, !noalias !232
  %1106 = zext i8 %1105 to i32
  %1107 = icmp ugt i8 %1090, 1
  br i1 %1107, label %1108, label %1120

1108:                                             ; preds = %1061
  %1109 = zext i8 %1090 to i32
  %1110 = and i32 %1063, 63
  %1111 = zext nneg i32 %1110 to i64
  %1112 = shl i64 %1064, %1111
  %1113 = sub nsw i32 0, %1109
  %1114 = and i32 %1113, 63
  %1115 = zext nneg i32 %1114 to i64
  %1116 = lshr i64 %1112, %1115
  %1117 = add i32 %1063, %1109
  store i32 %1117, ptr %126, align 8, !tbaa !84, !noalias !232
  %1118 = zext i32 %1084 to i64
  %1119 = add i64 %1116, %1118
  store i64 %1066, ptr %270, align 8, !tbaa !46, !noalias !232
  br label %1149

1120:                                             ; preds = %1061
  %1121 = icmp eq i32 %1081, 0
  %1122 = icmp eq i8 %1090, 0
  br i1 %1122, label %1123, label %1126, !prof !91

1123:                                             ; preds = %1120
  %1124 = select i1 %1121, i64 %1066, i64 %1067
  %1125 = select i1 %1121, i64 %1067, i64 %1066
  br label %1149

1126:                                             ; preds = %1120
  %1127 = zext i1 %1121 to i32
  %1128 = add i32 %1084, %1127
  %1129 = zext i32 %1128 to i64
  %1130 = and i32 %1063, 63
  %1131 = zext nneg i32 %1130 to i64
  %1132 = shl i64 %1064, %1131
  %1133 = lshr i64 %1132, 63
  %1134 = add i32 %1063, 1
  store i32 %1134, ptr %126, align 8, !tbaa !84, !noalias !232
  %1135 = add nuw nsw i64 %1133, %1129
  %1136 = icmp eq i64 %1135, 3
  br i1 %1136, label %1137, label %1141

1137:                                             ; preds = %1126
  %1138 = add i64 %1067, -1
  %1139 = icmp eq i64 %1138, 0
  %1140 = select i1 %1139, i64 -1, i64 %1138
  br label %1147

1141:                                             ; preds = %1126
  %1142 = getelementptr inbounds nuw [3 x i64], ptr %28, i64 0, i64 %1135
  %1143 = load i64, ptr %1142, align 8, !tbaa !46, !noalias !232
  %1144 = icmp eq i64 %1143, 0
  %1145 = select i1 %1144, i64 -1, i64 %1143
  %1146 = icmp eq i64 %1135, 1
  br i1 %1146, label %1149, label %1147

1147:                                             ; preds = %1137, %1141
  %1148 = phi i64 [ %1140, %1137 ], [ %1145, %1141 ]
  store i64 %1066, ptr %270, align 8, !tbaa !46, !noalias !232
  br label %1149

1149:                                             ; preds = %1141, %1147, %1123, %1108
  %1150 = phi i32 [ %1063, %1123 ], [ %1117, %1108 ], [ %1134, %1147 ], [ %1134, %1141 ]
  %1151 = phi i64 [ %1125, %1123 ], [ %1067, %1108 ], [ %1067, %1147 ], [ %1067, %1141 ]
  %1152 = phi i64 [ %1124, %1123 ], [ %1119, %1108 ], [ %1148, %1147 ], [ %1145, %1141 ]
  %1153 = phi i64 [ %1065, %1123 ], [ %1066, %1108 ], [ %1066, %1147 ], [ %1065, %1141 ]
  store i64 %1151, ptr %269, align 8, !tbaa !46, !noalias !232
  store i64 %1152, ptr %28, align 8, !tbaa !46, !noalias !232
  %1154 = icmp eq i8 %1088, 0
  br i1 %1154, label %1165, label %1155

1155:                                             ; preds = %1149
  %1156 = and i32 %1150, 63
  %1157 = zext nneg i32 %1156 to i64
  %1158 = shl i64 %1064, %1157
  %1159 = sub nsw i32 0, %1092
  %1160 = and i32 %1159, 63
  %1161 = zext nneg i32 %1160 to i64
  %1162 = lshr i64 %1158, %1161
  %1163 = add i32 %1150, %1092
  store i32 %1163, ptr %126, align 8, !tbaa !84, !noalias !232
  %1164 = add i64 %1162, %1079
  br label %1165

1165:                                             ; preds = %1155, %1149
  %1166 = phi i32 [ %1150, %1149 ], [ %1163, %1155 ]
  %1167 = phi i64 [ %1079, %1149 ], [ %1164, %1155 ]
  %1168 = icmp ugt i8 %1094, 30
  br i1 %1168, label %1169, label %1199, !prof !53

1169:                                             ; preds = %1165
  %1170 = icmp ugt i32 %1166, 64
  br i1 %1170, label %1171, label %1172, !prof !53

1171:                                             ; preds = %1169
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79, !noalias !232
  br label %1199

1172:                                             ; preds = %1169
  %1173 = icmp ult ptr %1062, %42
  br i1 %1173, label %1181, label %1174

1174:                                             ; preds = %1172
  %1175 = lshr i32 %1166, 3
  %1176 = zext nneg i32 %1175 to i64
  %1177 = sub nsw i64 0, %1176
  %1178 = getelementptr inbounds i8, ptr %1062, i64 %1177
  store ptr %1178, ptr %137, align 8, !tbaa !79, !noalias !232
  %1179 = and i32 %1166, 7
  store i32 %1179, ptr %126, align 8, !tbaa !84, !noalias !232
  %1180 = load i64, ptr %1178, align 1, !tbaa !46, !noalias !232
  store i64 %1180, ptr %11, align 8, !tbaa !80, !noalias !232
  br label %1199

1181:                                             ; preds = %1172
  %1182 = icmp eq ptr %1062, %3
  br i1 %1182, label %1199, label %1183

1183:                                             ; preds = %1181
  %1184 = lshr i32 %1166, 3
  %1185 = zext nneg i32 %1184 to i64
  %1186 = sub nsw i64 0, %1185
  %1187 = getelementptr inbounds i8, ptr %1062, i64 %1186
  %1188 = icmp ult ptr %1187, %3
  %1189 = ptrtoint ptr %1062 to i64
  %1190 = sub i64 %1189, %1059
  %1191 = trunc i64 %1190 to i32
  %1192 = select i1 %1188, i32 %1191, i32 %1184
  %1193 = zext i32 %1192 to i64
  %1194 = sub nsw i64 0, %1193
  %1195 = getelementptr inbounds i8, ptr %1062, i64 %1194
  store ptr %1195, ptr %137, align 8, !tbaa !79, !noalias !232
  %1196 = shl i32 %1192, 3
  %1197 = sub i32 %1166, %1196
  store i32 %1197, ptr %126, align 8, !tbaa !84, !noalias !232
  %1198 = load i64, ptr %1195, align 1, !tbaa !46, !noalias !232
  store i64 %1198, ptr %11, align 8, !tbaa !80, !noalias !232
  br label %1199

1199:                                             ; preds = %1181, %1171, %1174, %1183, %1165
  %1200 = phi ptr [ %1062, %1181 ], [ @BIT_reloadDStream.zeroFilled, %1171 ], [ %1178, %1174 ], [ %1195, %1183 ], [ %1062, %1165 ]
  %1201 = phi i32 [ %1166, %1181 ], [ %1166, %1171 ], [ %1179, %1174 ], [ %1197, %1183 ], [ %1166, %1165 ]
  %1202 = phi i64 [ %1064, %1181 ], [ %1064, %1171 ], [ %1180, %1174 ], [ %1198, %1183 ], [ %1064, %1165 ]
  %1203 = icmp eq i8 %1086, 0
  br i1 %1203, label %1214, label %1204

1204:                                             ; preds = %1199
  %1205 = and i32 %1201, 63
  %1206 = zext nneg i32 %1205 to i64
  %1207 = shl i64 %1202, %1206
  %1208 = sub nsw i32 0, %1091
  %1209 = and i32 %1208, 63
  %1210 = zext nneg i32 %1209 to i64
  %1211 = lshr i64 %1207, %1210
  %1212 = add i32 %1201, %1091
  store i32 %1212, ptr %126, align 8, !tbaa !84, !noalias !232
  %1213 = add i64 %1211, %1082
  br label %1214

1214:                                             ; preds = %1204, %1199
  %1215 = phi i32 [ %1201, %1199 ], [ %1212, %1204 ]
  %1216 = phi i64 [ %1082, %1199 ], [ %1213, %1204 ]
  br i1 %1073, label %1280, label %1217

1217:                                             ; preds = %1214
  %1218 = add i32 %1215, %1100
  %1219 = sub i32 0, %1218
  %1220 = and i32 %1219, 63
  %1221 = zext nneg i32 %1220 to i64
  %1222 = lshr i64 %1202, %1221
  %1223 = zext nneg i8 %1099 to i64
  %1224 = shl nsw i64 -1, %1223
  %1225 = xor i64 %1224, -1
  %1226 = and i64 %1222, %1225
  %1227 = zext i16 %1095 to i64
  %1228 = add nuw i64 %1226, %1227
  store i64 %1228, ptr %122, align 8, !tbaa !82, !noalias !232
  %1229 = add i32 %1218, %1103
  %1230 = sub i32 0, %1229
  %1231 = and i32 %1230, 63
  %1232 = zext nneg i32 %1231 to i64
  %1233 = lshr i64 %1202, %1232
  %1234 = zext nneg i8 %1102 to i64
  %1235 = shl nsw i64 -1, %1234
  %1236 = xor i64 %1235, -1
  %1237 = and i64 %1233, %1236
  %1238 = zext i16 %1096 to i64
  %1239 = add nuw i64 %1237, %1238
  store i64 %1239, ptr %219, align 8, !tbaa !82, !noalias !232
  %1240 = add i32 %1229, %1106
  %1241 = sub i32 0, %1240
  %1242 = and i32 %1241, 63
  %1243 = zext nneg i32 %1242 to i64
  %1244 = lshr i64 %1202, %1243
  %1245 = zext nneg i8 %1105 to i64
  %1246 = shl nsw i64 -1, %1245
  %1247 = xor i64 %1246, -1
  %1248 = and i64 %1244, %1247
  store i32 %1240, ptr %126, align 8, !tbaa !84, !noalias !232
  %1249 = zext i16 %1097 to i64
  %1250 = add nuw i64 %1248, %1249
  store i64 %1250, ptr %168, align 8, !tbaa !82, !noalias !232
  %1251 = icmp ugt i32 %1240, 64
  br i1 %1251, label %1252, label %1253, !prof !53

1252:                                             ; preds = %1217
  store ptr @BIT_reloadDStream.zeroFilled, ptr %137, align 8, !tbaa !79, !noalias !232
  br label %1280

1253:                                             ; preds = %1217
  %1254 = icmp ult ptr %1200, %42
  br i1 %1254, label %1262, label %1255

1255:                                             ; preds = %1253
  %1256 = lshr i32 %1240, 3
  %1257 = zext nneg i32 %1256 to i64
  %1258 = sub nsw i64 0, %1257
  %1259 = getelementptr inbounds i8, ptr %1200, i64 %1258
  store ptr %1259, ptr %137, align 8, !tbaa !79, !noalias !232
  %1260 = and i32 %1240, 7
  store i32 %1260, ptr %126, align 8, !tbaa !84, !noalias !232
  %1261 = load i64, ptr %1259, align 1, !tbaa !46, !noalias !232
  store i64 %1261, ptr %11, align 8, !tbaa !80, !noalias !232
  br label %1280

1262:                                             ; preds = %1253
  %1263 = icmp eq ptr %1200, %3
  br i1 %1263, label %1280, label %1264

1264:                                             ; preds = %1262
  %1265 = lshr i32 %1240, 3
  %1266 = zext nneg i32 %1265 to i64
  %1267 = sub nsw i64 0, %1266
  %1268 = getelementptr inbounds i8, ptr %1200, i64 %1267
  %1269 = icmp ult ptr %1268, %3
  %1270 = ptrtoint ptr %1200 to i64
  %1271 = sub i64 %1270, %1060
  %1272 = trunc i64 %1271 to i32
  %1273 = select i1 %1269, i32 %1272, i32 %1265
  %1274 = zext i32 %1273 to i64
  %1275 = sub nsw i64 0, %1274
  %1276 = getelementptr inbounds i8, ptr %1200, i64 %1275
  store ptr %1276, ptr %137, align 8, !tbaa !79, !noalias !232
  %1277 = shl i32 %1273, 3
  %1278 = sub i32 %1240, %1277
  store i32 %1278, ptr %126, align 8, !tbaa !84, !noalias !232
  %1279 = load i64, ptr %1276, align 1, !tbaa !46, !noalias !232
  store i64 %1279, ptr %11, align 8, !tbaa !80, !noalias !232
  br label %1280

1280:                                             ; preds = %1262, %1252, %1255, %1264, %1214
  %1281 = phi ptr [ %1200, %1262 ], [ @BIT_reloadDStream.zeroFilled, %1252 ], [ %1259, %1255 ], [ %1276, %1264 ], [ %1200, %1214 ]
  %1282 = phi i32 [ %1240, %1262 ], [ %1240, %1252 ], [ %1260, %1255 ], [ %1278, %1264 ], [ %1215, %1214 ]
  %1283 = phi i64 [ %1202, %1262 ], [ %1202, %1252 ], [ %1261, %1255 ], [ %1279, %1264 ], [ %1202, %1214 ]
  %1284 = phi i64 [ %1239, %1262 ], [ %1239, %1252 ], [ %1239, %1255 ], [ %1239, %1264 ], [ %1068, %1214 ]
  %1285 = phi i64 [ %1250, %1262 ], [ %1250, %1252 ], [ %1250, %1255 ], [ %1250, %1264 ], [ %1069, %1214 ]
  %1286 = phi i64 [ %1228, %1262 ], [ %1228, %1252 ], [ %1228, %1255 ], [ %1228, %1264 ], [ %1070, %1214 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  store i64 %1216, ptr %9, align 8
  store i64 %1167, ptr %1056, align 8
  store i64 %1152, ptr %1057, align 8
  %1287 = getelementptr i8, ptr %1072, i64 %1216
  %1288 = add i64 %1216, %1167
  %1289 = load ptr, ptr %10, align 8, !tbaa !40
  %1290 = getelementptr inbounds nuw i8, ptr %1289, i64 %1216
  %1291 = sub i64 0, %1152
  %1292 = getelementptr inbounds i8, ptr %1287, i64 %1291
  %1293 = icmp ugt ptr %1290, %870
  %1294 = getelementptr inbounds nuw i8, ptr %1072, i64 %1288
  %1295 = icmp ugt ptr %1294, %881
  %1296 = select i1 %1293, i1 true, i1 %1295
  br i1 %1296, label %1300, label %1297, !prof !105

1297:                                             ; preds = %1280
  %1298 = load <2 x i64>, ptr %1289, align 1, !tbaa !9
  store <2 x i64> %1298, ptr %1072, align 1, !tbaa !9
  %1299 = icmp ugt i64 %1216, 16
  br i1 %1299, label %1302, label %1320, !prof !53

1300:                                             ; preds = %1280
  %1301 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %1072, ptr noundef %13, ptr noundef nonnull byval(%struct.seq_t) align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %870, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  br label %1459

1302:                                             ; preds = %1297
  %1303 = getelementptr inbounds nuw i8, ptr %1072, i64 16
  %1304 = getelementptr inbounds nuw i8, ptr %1289, i64 16
  %1305 = add i64 %1216, -16
  %1306 = load <2 x i64>, ptr %1304, align 1, !tbaa !9
  store <2 x i64> %1306, ptr %1303, align 1, !tbaa !9
  %1307 = icmp ult i64 %1305, 17
  br i1 %1307, label %1320, label %1308

1308:                                             ; preds = %1302
  %1309 = getelementptr inbounds nuw i8, ptr %1072, i64 32
  br label %1310

1310:                                             ; preds = %1310, %1308
  %1311 = phi ptr [ %1309, %1308 ], [ %1318, %1310 ]
  %1312 = phi ptr [ %1304, %1308 ], [ %1316, %1310 ]
  %1313 = getelementptr inbounds nuw i8, ptr %1312, i64 16
  %1314 = load <2 x i64>, ptr %1313, align 1, !tbaa !9
  store <2 x i64> %1314, ptr %1311, align 1, !tbaa !9
  %1315 = getelementptr inbounds nuw i8, ptr %1311, i64 16
  %1316 = getelementptr inbounds nuw i8, ptr %1312, i64 32
  %1317 = load <2 x i64>, ptr %1316, align 1, !tbaa !9
  store <2 x i64> %1317, ptr %1315, align 1, !tbaa !9
  %1318 = getelementptr inbounds nuw i8, ptr %1311, i64 32
  %1319 = icmp ult ptr %1318, %1287
  br i1 %1319, label %1310, label %1320, !llvm.loop !101

1320:                                             ; preds = %1310, %1302, %1297
  store ptr %1290, ptr %10, align 8, !tbaa !40
  %1321 = ptrtoint ptr %1287 to i64
  %1322 = sub i64 %1321, %273
  %1323 = icmp ugt i64 %1152, %1322
  br i1 %1323, label %1324, label %1338

1324:                                             ; preds = %1320
  %1325 = sub i64 %1321, %274
  %1326 = icmp ugt i64 %1152, %1325
  br i1 %1326, label %1327, label %1328, !prof !53

1327:                                             ; preds = %1324
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  br label %1482

1328:                                             ; preds = %1324
  %1329 = ptrtoint ptr %1292 to i64
  %1330 = sub i64 %1329, %273
  %1331 = getelementptr inbounds i8, ptr %23, i64 %1330
  %1332 = add nsw i64 %1330, %1167
  %1333 = icmp sgt i64 %1332, 0
  br i1 %1333, label %1335, label %1334

1334:                                             ; preds = %1328
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1287, ptr align 1 %1331, i64 %1167, i1 false)
  br label %1459

1335:                                             ; preds = %1328
  %1336 = sub nsw i64 0, %1330
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1287, ptr align 1 %1331, i64 %1336, i1 false)
  %1337 = getelementptr inbounds nuw i8, ptr %1287, i64 %1336
  store i64 %1332, ptr %1056, align 8, !tbaa !131
  br label %1338

1338:                                             ; preds = %1335, %1320
  %1339 = phi ptr [ %1337, %1335 ], [ %1287, %1320 ]
  %1340 = phi ptr [ %19, %1335 ], [ %1292, %1320 ]
  %1341 = phi i64 [ %1332, %1335 ], [ %1167, %1320 ]
  %1342 = icmp ugt i64 %1152, 15
  br i1 %1342, label %1343, label %1359, !prof !91

1343:                                             ; preds = %1338
  %1344 = getelementptr inbounds nuw i8, ptr %1339, i64 %1341
  %1345 = load <2 x i64>, ptr %1340, align 1, !tbaa !9
  store <2 x i64> %1345, ptr %1339, align 1, !tbaa !9
  %1346 = icmp ult i64 %1341, 17
  br i1 %1346, label %1459, label %1347

1347:                                             ; preds = %1343
  %1348 = getelementptr inbounds nuw i8, ptr %1339, i64 16
  br label %1349

1349:                                             ; preds = %1349, %1347
  %1350 = phi ptr [ %1348, %1347 ], [ %1357, %1349 ]
  %1351 = phi ptr [ %1340, %1347 ], [ %1355, %1349 ]
  %1352 = getelementptr inbounds nuw i8, ptr %1351, i64 16
  %1353 = load <2 x i64>, ptr %1352, align 1, !tbaa !9
  store <2 x i64> %1353, ptr %1350, align 1, !tbaa !9
  %1354 = getelementptr inbounds nuw i8, ptr %1350, i64 16
  %1355 = getelementptr inbounds nuw i8, ptr %1351, i64 32
  %1356 = load <2 x i64>, ptr %1355, align 1, !tbaa !9
  store <2 x i64> %1356, ptr %1354, align 1, !tbaa !9
  %1357 = getelementptr inbounds nuw i8, ptr %1350, i64 32
  %1358 = icmp ult ptr %1357, %1344
  br i1 %1358, label %1349, label %1459, !llvm.loop !101

1359:                                             ; preds = %1338
  %1360 = icmp samesign ult i64 %1152, 8
  br i1 %1360, label %1361, label %1383

1361:                                             ; preds = %1359
  %1362 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %1152
  %1363 = load i32, ptr %1362, align 4, !tbaa !30
  %1364 = load i8, ptr %1340, align 1, !tbaa !9
  store i8 %1364, ptr %1339, align 1, !tbaa !9
  %1365 = getelementptr inbounds nuw i8, ptr %1340, i64 1
  %1366 = load i8, ptr %1365, align 1, !tbaa !9
  %1367 = getelementptr inbounds nuw i8, ptr %1339, i64 1
  store i8 %1366, ptr %1367, align 1, !tbaa !9
  %1368 = getelementptr inbounds nuw i8, ptr %1340, i64 2
  %1369 = load i8, ptr %1368, align 1, !tbaa !9
  %1370 = getelementptr inbounds nuw i8, ptr %1339, i64 2
  store i8 %1369, ptr %1370, align 1, !tbaa !9
  %1371 = getelementptr inbounds nuw i8, ptr %1340, i64 3
  %1372 = load i8, ptr %1371, align 1, !tbaa !9
  %1373 = getelementptr inbounds nuw i8, ptr %1339, i64 3
  store i8 %1372, ptr %1373, align 1, !tbaa !9
  %1374 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %1152
  %1375 = load i32, ptr %1374, align 4, !tbaa !30
  %1376 = zext i32 %1375 to i64
  %1377 = getelementptr inbounds nuw i8, ptr %1340, i64 %1376
  %1378 = getelementptr inbounds nuw i8, ptr %1339, i64 4
  %1379 = load i32, ptr %1377, align 1
  store i32 %1379, ptr %1378, align 1
  %1380 = sext i32 %1363 to i64
  %1381 = sub nsw i64 0, %1380
  %1382 = getelementptr inbounds i8, ptr %1377, i64 %1381
  br label %1385

1383:                                             ; preds = %1359
  %1384 = load i64, ptr %1340, align 1
  store i64 %1384, ptr %1339, align 1
  br label %1385

1385:                                             ; preds = %1383, %1361
  %1386 = phi ptr [ %1382, %1361 ], [ %1340, %1383 ]
  %1387 = getelementptr inbounds nuw i8, ptr %1386, i64 8
  %1388 = getelementptr inbounds nuw i8, ptr %1339, i64 8
  %1389 = icmp ugt i64 %1341, 8
  br i1 %1389, label %1390, label %1459

1390:                                             ; preds = %1385
  %1391 = ptrtoint ptr %1388 to i64
  %1392 = ptrtoint ptr %1387 to i64
  %1393 = sub i64 %1391, %1392
  %1394 = getelementptr i8, ptr %1339, i64 %1341
  %1395 = icmp slt i64 %1393, 16
  br i1 %1395, label %1396, label %1443

1396:                                             ; preds = %1390
  %1397 = add i64 %1167, %273
  %1398 = tail call i64 @llvm.umin.i64(i64 %1152, i64 %1322)
  %1399 = add i64 %1397, %1398
  %1400 = tail call i64 @llvm.umax.i64(i64 %1152, i64 %1322)
  %1401 = add i64 %1399, %1400
  %1402 = sub i64 %1401, %1152
  %1403 = add i64 %1058, %1400
  %1404 = tail call i64 @llvm.umax.i64(i64 %1402, i64 %1403)
  %1405 = add i64 %1404, -9
  %1406 = add i64 %1400, %273
  %1407 = sub i64 %1405, %1406
  %1408 = lshr i64 %1407, 3
  %1409 = add nuw nsw i64 %1408, 1
  %1410 = icmp ult i64 %1407, 24
  %1411 = icmp ult i64 %1393, 32
  %1412 = or i1 %1410, %1411
  br i1 %1412, label %1433, label %1413

1413:                                             ; preds = %1396
  %1414 = and i64 %1409, 4611686018427387900
  %1415 = shl i64 %1414, 3
  %1416 = getelementptr i8, ptr %1388, i64 %1415
  %1417 = shl i64 %1414, 3
  %1418 = getelementptr i8, ptr %1387, i64 %1417
  br label %1419

1419:                                             ; preds = %1419, %1413
  %1420 = phi i64 [ 0, %1413 ], [ %1429, %1419 ]
  %1421 = shl i64 %1420, 3
  %1422 = getelementptr i8, ptr %1388, i64 %1421
  %1423 = shl i64 %1420, 3
  %1424 = getelementptr i8, ptr %1387, i64 %1423
  %1425 = getelementptr i8, ptr %1424, i64 16
  %1426 = load <2 x i64>, ptr %1424, align 1
  %1427 = load <2 x i64>, ptr %1425, align 1
  %1428 = getelementptr i8, ptr %1422, i64 16
  store <2 x i64> %1426, ptr %1422, align 1
  store <2 x i64> %1427, ptr %1428, align 1
  %1429 = add nuw i64 %1420, 4
  %1430 = icmp eq i64 %1429, %1414
  br i1 %1430, label %1431, label %1419, !llvm.loop !235

1431:                                             ; preds = %1419
  %1432 = icmp eq i64 %1409, %1414
  br i1 %1432, label %1459, label %1433

1433:                                             ; preds = %1396, %1431
  %1434 = phi ptr [ %1388, %1396 ], [ %1416, %1431 ]
  %1435 = phi ptr [ %1387, %1396 ], [ %1418, %1431 ]
  br label %1436

1436:                                             ; preds = %1433, %1436
  %1437 = phi ptr [ %1440, %1436 ], [ %1434, %1433 ]
  %1438 = phi ptr [ %1441, %1436 ], [ %1435, %1433 ]
  %1439 = load i64, ptr %1438, align 1
  store i64 %1439, ptr %1437, align 1
  %1440 = getelementptr inbounds nuw i8, ptr %1437, i64 8
  %1441 = getelementptr inbounds nuw i8, ptr %1438, i64 8
  %1442 = icmp ult ptr %1440, %1394
  br i1 %1442, label %1436, label %1459, !llvm.loop !236

1443:                                             ; preds = %1390
  %1444 = add i64 %1341, -8
  %1445 = load <2 x i64>, ptr %1387, align 1, !tbaa !9
  store <2 x i64> %1445, ptr %1388, align 1, !tbaa !9
  %1446 = icmp ult i64 %1444, 17
  br i1 %1446, label %1459, label %1447

1447:                                             ; preds = %1443
  %1448 = getelementptr inbounds nuw i8, ptr %1339, i64 24
  br label %1449

1449:                                             ; preds = %1449, %1447
  %1450 = phi ptr [ %1448, %1447 ], [ %1457, %1449 ]
  %1451 = phi ptr [ %1387, %1447 ], [ %1455, %1449 ]
  %1452 = getelementptr inbounds nuw i8, ptr %1451, i64 16
  %1453 = load <2 x i64>, ptr %1452, align 1, !tbaa !9
  store <2 x i64> %1453, ptr %1450, align 1, !tbaa !9
  %1454 = getelementptr inbounds nuw i8, ptr %1450, i64 16
  %1455 = getelementptr inbounds nuw i8, ptr %1451, i64 32
  %1456 = load <2 x i64>, ptr %1455, align 1, !tbaa !9
  store <2 x i64> %1456, ptr %1454, align 1, !tbaa !9
  %1457 = getelementptr inbounds nuw i8, ptr %1450, i64 32
  %1458 = icmp ult ptr %1457, %1394
  br i1 %1458, label %1449, label %1459, !llvm.loop !101

1459:                                             ; preds = %1449, %1436, %1349, %1431, %1443, %1343, %1385, %1334, %1300
  %1460 = phi i64 [ %1301, %1300 ], [ %1288, %1334 ], [ %1288, %1385 ], [ %1288, %1343 ], [ %1288, %1443 ], [ %1288, %1431 ], [ %1288, %1349 ], [ %1288, %1436 ], [ %1288, %1449 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  %1461 = icmp ult i64 %1460, -119
  br i1 %1461, label %1462, label %1482

1462:                                             ; preds = %1459
  %1463 = getelementptr inbounds nuw i8, ptr %1072, i64 %1460
  %1464 = add i32 %1071, -1
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1466, label %1061, !llvm.loop !153

1466:                                             ; preds = %698, %1462, %1053
  %1467 = phi ptr [ %704, %1053 ], [ %1281, %1462 ], [ %511, %698 ]
  %1468 = phi i32 [ %705, %1053 ], [ %1282, %1462 ], [ %512, %698 ]
  %1469 = phi i64 [ %370, %1053 ], [ %1153, %1462 ], [ %370, %698 ]
  %1470 = phi i64 [ %368, %1053 ], [ %1151, %1462 ], [ %368, %698 ]
  %1471 = phi i64 [ %369, %1053 ], [ %1152, %1462 ], [ %369, %698 ]
  %1472 = phi ptr [ %1051, %1053 ], [ %1463, %1462 ], [ %693, %698 ]
  %1473 = phi ptr [ %870, %1053 ], [ %870, %1462 ], [ %17, %698 ]
  %1474 = icmp eq ptr %1467, %3
  %1475 = icmp eq i32 %1468, 64
  %1476 = select i1 %1474, i1 %1475, i1 false
  br i1 %1476, label %1477, label %1482

1477:                                             ; preds = %1466
  %1478 = trunc i64 %1471 to i32
  store i32 %1478, ptr %27, align 4, !tbaa !30
  %1479 = trunc i64 %1470 to i32
  store i32 %1479, ptr %31, align 4, !tbaa !30
  %1480 = trunc i64 %1469 to i32
  store i32 %1480, ptr %35, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #18
  %1481 = load ptr, ptr %10, align 8, !tbaa !40
  br label %1484

1482:                                             ; preds = %690, %1459, %96, %45, %25, %915, %1048, %109, %1327, %701, %558, %716, %1466
  %1483 = phi i64 [ -20, %701 ], [ -20, %1327 ], [ -20, %109 ], [ %1049, %1048 ], [ -70, %716 ], [ -20, %558 ], [ -20, %1466 ], [ -20, %915 ], [ -20, %25 ], [ -20, %45 ], [ -20, %96 ], [ %1460, %1459 ], [ %691, %690 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %11) #18
  br label %1529

1484:                                             ; preds = %1477, %6
  %1485 = phi ptr [ %1481, %1477 ], [ %15, %6 ]
  %1486 = phi ptr [ %1473, %1477 ], [ %17, %6 ]
  %1487 = phi ptr [ %1472, %1477 ], [ %1, %6 ]
  %1488 = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %1489 = load i32, ptr %1488, align 8, !tbaa !35
  %1490 = icmp eq i32 %1489, 2
  br i1 %1490, label %1493, label %1491

1491:                                             ; preds = %1484
  %1492 = ptrtoint ptr %13 to i64
  br label %1509

1493:                                             ; preds = %1484
  %1494 = ptrtoint ptr %1486 to i64
  %1495 = ptrtoint ptr %1485 to i64
  %1496 = sub i64 %1494, %1495
  %1497 = ptrtoint ptr %13 to i64
  %1498 = ptrtoint ptr %1487 to i64
  %1499 = sub i64 %1497, %1498
  %1500 = icmp ugt i64 %1496, %1499
  br i1 %1500, label %1529, label %1501

1501:                                             ; preds = %1493
  %1502 = icmp eq ptr %1487, null
  br i1 %1502, label %1505, label %1503

1503:                                             ; preds = %1501
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1487, ptr align 1 %1485, i64 %1496, i1 false)
  %1504 = getelementptr inbounds nuw i8, ptr %1487, i64 %1496
  br label %1505

1505:                                             ; preds = %1501, %1503
  %1506 = phi ptr [ %1504, %1503 ], [ null, %1501 ]
  %1507 = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %1508 = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %1488, align 8, !tbaa !35
  br label %1509

1509:                                             ; preds = %1491, %1505
  %1510 = phi i64 [ %1492, %1491 ], [ %1497, %1505 ]
  %1511 = phi ptr [ %1485, %1491 ], [ %1507, %1505 ]
  %1512 = phi ptr [ %1486, %1491 ], [ %1508, %1505 ]
  %1513 = phi ptr [ %1487, %1491 ], [ %1506, %1505 ]
  %1514 = ptrtoint ptr %1512 to i64
  %1515 = ptrtoint ptr %1511 to i64
  %1516 = sub i64 %1514, %1515
  %1517 = ptrtoint ptr %1513 to i64
  %1518 = sub i64 %1510, %1517
  %1519 = icmp ugt i64 %1516, %1518
  br i1 %1519, label %1529, label %1520

1520:                                             ; preds = %1509
  %1521 = icmp eq ptr %1513, null
  br i1 %1521, label %1525, label %1522

1522:                                             ; preds = %1520
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1513, ptr align 1 %1511, i64 %1516, i1 false)
  %1523 = getelementptr inbounds nuw i8, ptr %1513, i64 %1516
  %1524 = ptrtoint ptr %1523 to i64
  br label %1525

1525:                                             ; preds = %1522, %1520
  %1526 = phi i64 [ 0, %1520 ], [ %1524, %1522 ]
  %1527 = ptrtoint ptr %1 to i64
  %1528 = sub i64 %1526, %1527
  br label %1529

1529:                                             ; preds = %1493, %1509, %1482, %1525
  %1530 = phi i64 [ %1528, %1525 ], [ %1483, %1482 ], [ -70, %1509 ], [ -70, %1493 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  ret i64 %1530
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences_bmi2(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #13 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  store ptr %22, ptr %8, align 8, !tbaa !40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 30152
  %24 = load i64, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %707, label %33

33:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #18
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 30004
  store i32 1, ptr %34, align 4, !tbaa !63
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %37 = load i32, ptr %35, align 4, !tbaa !30
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %36, align 8, !tbaa !46
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 26688
  %40 = load i32, ptr %39, align 4, !tbaa !30
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i64 %41, ptr %42, align 8, !tbaa !46
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 26692
  %44 = load i32, ptr %43, align 4, !tbaa !30
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i64 %45, ptr %46, align 8, !tbaa !46
  %47 = icmp eq i64 %4, 0
  br i1 %47, label %705, label %48

48:                                               ; preds = %33
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %3, ptr %49, align 8, !tbaa !76
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %50, ptr %51, align 8, !tbaa !78
  %52 = icmp ugt i64 %4, 7
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = add nsw i64 %4, -8
  %55 = getelementptr inbounds i8, ptr %3, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %55, ptr %56, align 8, !tbaa !79
  %57 = load i64, ptr %55, align 1
  store i64 %57, ptr %9, align 8, !tbaa !80
  %58 = icmp ult i64 %57, 72057594037927936
  br i1 %58, label %705, label %117

59:                                               ; preds = %48
  %60 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %60, align 8, !tbaa !79
  %61 = load i8, ptr %3, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  store i64 %62, ptr %9, align 8, !tbaa !80
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
  store i64 %103, ptr %9, align 8, !tbaa !80
  br label %104

104:                                              ; preds = %97, %59
  %105 = phi i64 [ %103, %97 ], [ %62, %59 ]
  %106 = getelementptr i8, ptr %3, i64 %4
  %107 = getelementptr i8, ptr %106, i64 -1
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %705, label %110

110:                                              ; preds = %104
  %111 = zext i8 %108 to i32
  %112 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %111, i1 true)
  %113 = trunc nuw nsw i64 %4 to i32
  %114 = shl nuw nsw i32 %113, 3
  %115 = sub nsw i32 %112, %114
  %116 = add nsw i32 %115, 41
  br label %124

117:                                              ; preds = %53
  %118 = lshr i64 %57, 56
  %119 = trunc nuw nsw i64 %118 to i32
  %120 = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %119, i1 true)
  %121 = xor i32 %120, 31
  %122 = sub nuw nsw i32 8, %121
  %123 = icmp ult i64 %4, -119
  br i1 %123, label %124, label %705

124:                                              ; preds = %110, %117
  %125 = phi ptr [ %3, %110 ], [ %55, %117 ]
  %126 = phi i64 [ 0, %110 ], [ %54, %117 ]
  %127 = phi i32 [ %116, %110 ], [ %122, %117 ]
  %128 = phi i64 [ %105, %110 ], [ %57, %117 ]
  %129 = getelementptr inbounds i8, ptr %3, i64 %126
  %130 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %131 = load ptr, ptr %0, align 8, !tbaa !81
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %133 = load i32, ptr %132, align 4, !tbaa !64
  %134 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %135 = add i32 %127, %133
  %136 = sub i32 0, %135
  %137 = and i32 %136, 63
  %138 = zext nneg i32 %137 to i64
  %139 = lshr i64 %128, %138
  %140 = zext nneg i32 %133 to i64
  %141 = shl nsw i64 -1, %140
  %142 = xor i64 %141, -1
  %143 = and i64 %139, %142
  store i64 %143, ptr %130, align 8, !tbaa !82
  %144 = icmp ugt i32 %135, 64
  %145 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %144, label %146, label %147, !prof !53

146:                                              ; preds = %124
  store ptr @BIT_reloadDStream.zeroFilled, ptr %145, align 8, !tbaa !79
  br label %169

147:                                              ; preds = %124
  %148 = icmp slt i64 %126, 8
  br i1 %148, label %156, label %149

149:                                              ; preds = %147
  %150 = lshr i32 %135, 3
  %151 = zext nneg i32 %150 to i64
  %152 = sub nsw i64 0, %151
  %153 = getelementptr inbounds i8, ptr %129, i64 %152
  store ptr %153, ptr %145, align 8, !tbaa !79
  %154 = and i32 %135, 7
  store i32 %154, ptr %134, align 8, !tbaa !84
  %155 = load i64, ptr %153, align 1, !tbaa !46
  store i64 %155, ptr %9, align 8, !tbaa !80
  br label %169

156:                                              ; preds = %147
  %157 = icmp eq i64 %126, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %156
  %159 = lshr i32 %135, 3
  %160 = zext nneg i32 %159 to i64
  %161 = tail call i64 @llvm.smin.i64(i64 %126, i64 %160)
  %162 = trunc i64 %161 to i32
  %163 = and i64 %161, 4294967295
  %164 = sub nsw i64 0, %163
  %165 = getelementptr inbounds i8, ptr %129, i64 %164
  store ptr %165, ptr %145, align 8, !tbaa !79
  %166 = shl i32 %162, 3
  %167 = sub i32 %135, %166
  store i32 %167, ptr %134, align 8, !tbaa !84
  %168 = load i64, ptr %165, align 1, !tbaa !46
  store i64 %168, ptr %9, align 8, !tbaa !80
  br label %169

169:                                              ; preds = %146, %149, %156, %158
  %170 = phi ptr [ @BIT_reloadDStream.zeroFilled, %146 ], [ %153, %149 ], [ %125, %156 ], [ %165, %158 ]
  %171 = phi ptr [ @BIT_reloadDStream.zeroFilled, %146 ], [ %153, %149 ], [ %3, %156 ], [ %165, %158 ]
  %172 = phi i32 [ %135, %146 ], [ %154, %149 ], [ %135, %156 ], [ %167, %158 ]
  %173 = phi i64 [ %128, %146 ], [ %155, %149 ], [ %128, %156 ], [ %168, %158 ]
  %174 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %175 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %174, ptr %175, align 8, !tbaa !85
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %178 = load ptr, ptr %177, align 8, !tbaa !72
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 4
  %180 = load i32, ptr %179, align 4, !tbaa !64
  %181 = add i32 %172, %180
  %182 = sub i32 0, %181
  %183 = and i32 %182, 63
  %184 = zext nneg i32 %183 to i64
  %185 = lshr i64 %173, %184
  %186 = zext nneg i32 %180 to i64
  %187 = shl nsw i64 -1, %186
  %188 = xor i64 %187, -1
  %189 = and i64 %185, %188
  store i64 %189, ptr %176, align 8, !tbaa !82
  %190 = icmp ugt i32 %181, 64
  br i1 %190, label %191, label %192, !prof !53

191:                                              ; preds = %169
  store ptr @BIT_reloadDStream.zeroFilled, ptr %145, align 8, !tbaa !79
  br label %220

192:                                              ; preds = %169
  %193 = icmp ult ptr %171, %50
  br i1 %193, label %201, label %194

194:                                              ; preds = %192
  %195 = lshr i32 %181, 3
  %196 = zext nneg i32 %195 to i64
  %197 = sub nsw i64 0, %196
  %198 = getelementptr inbounds i8, ptr %171, i64 %197
  store ptr %198, ptr %145, align 8, !tbaa !79
  %199 = and i32 %181, 7
  %200 = load i64, ptr %198, align 1, !tbaa !46
  store i64 %200, ptr %9, align 8, !tbaa !80
  br label %220

201:                                              ; preds = %192
  %202 = icmp eq ptr %171, %3
  br i1 %202, label %220, label %203

203:                                              ; preds = %201
  %204 = lshr i32 %181, 3
  %205 = zext nneg i32 %204 to i64
  %206 = sub nsw i64 0, %205
  %207 = getelementptr inbounds i8, ptr %171, i64 %206
  %208 = icmp ult ptr %207, %3
  %209 = ptrtoint ptr %171 to i64
  %210 = ptrtoint ptr %3 to i64
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  %213 = select i1 %208, i32 %212, i32 %204
  %214 = zext i32 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %171, i64 %215
  store ptr %216, ptr %145, align 8, !tbaa !79
  %217 = shl i32 %213, 3
  %218 = sub i32 %181, %217
  %219 = load i64, ptr %216, align 1, !tbaa !46
  store i64 %219, ptr %9, align 8, !tbaa !80
  br label %220

220:                                              ; preds = %191, %194, %201, %203
  %221 = phi ptr [ @BIT_reloadDStream.zeroFilled, %191 ], [ %198, %194 ], [ %170, %201 ], [ %216, %203 ]
  %222 = phi ptr [ @BIT_reloadDStream.zeroFilled, %191 ], [ %198, %194 ], [ %171, %201 ], [ %216, %203 ]
  %223 = phi i32 [ %181, %191 ], [ %199, %194 ], [ %181, %201 ], [ %218, %203 ]
  %224 = phi i64 [ %173, %191 ], [ %200, %194 ], [ %173, %201 ], [ %219, %203 ]
  %225 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %226 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %225, ptr %226, align 8, !tbaa !85
  %227 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %229 = load ptr, ptr %228, align 8, !tbaa !86
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 4
  %231 = load i32, ptr %230, align 4, !tbaa !64
  %232 = add i32 %223, %231
  %233 = sub i32 0, %232
  %234 = and i32 %233, 63
  %235 = zext nneg i32 %234 to i64
  %236 = lshr i64 %224, %235
  %237 = zext nneg i32 %231 to i64
  %238 = shl nsw i64 -1, %237
  %239 = xor i64 %238, -1
  %240 = and i64 %236, %239
  store i32 %232, ptr %134, align 8, !tbaa !84
  store i64 %240, ptr %227, align 8, !tbaa !82
  %241 = icmp ugt i32 %232, 64
  br i1 %241, label %242, label %243, !prof !53

242:                                              ; preds = %220
  store ptr @BIT_reloadDStream.zeroFilled, ptr %145, align 8, !tbaa !79
  br label %271

243:                                              ; preds = %220
  %244 = icmp ult ptr %222, %50
  br i1 %244, label %252, label %245

245:                                              ; preds = %243
  %246 = lshr i32 %232, 3
  %247 = zext nneg i32 %246 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %222, i64 %248
  store ptr %249, ptr %145, align 8, !tbaa !79
  %250 = and i32 %232, 7
  store i32 %250, ptr %134, align 8, !tbaa !84
  %251 = load i64, ptr %249, align 1, !tbaa !46
  store i64 %251, ptr %9, align 8, !tbaa !80
  br label %271

252:                                              ; preds = %243
  %253 = icmp eq ptr %222, %3
  br i1 %253, label %271, label %254

254:                                              ; preds = %252
  %255 = lshr i32 %232, 3
  %256 = zext nneg i32 %255 to i64
  %257 = sub nsw i64 0, %256
  %258 = getelementptr inbounds i8, ptr %222, i64 %257
  %259 = icmp ult ptr %258, %3
  %260 = ptrtoint ptr %222 to i64
  %261 = ptrtoint ptr %3 to i64
  %262 = sub i64 %260, %261
  %263 = trunc i64 %262 to i32
  %264 = select i1 %259, i32 %263, i32 %255
  %265 = zext i32 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, ptr %222, i64 %266
  store ptr %267, ptr %145, align 8, !tbaa !79
  %268 = shl i32 %264, 3
  %269 = sub i32 %232, %268
  store i32 %269, ptr %134, align 8, !tbaa !84
  %270 = load i64, ptr %267, align 1, !tbaa !46
  store i64 %270, ptr %9, align 8, !tbaa !80
  br label %271

271:                                              ; preds = %242, %245, %252, %254
  %272 = phi ptr [ @BIT_reloadDStream.zeroFilled, %242 ], [ %249, %245 ], [ %221, %252 ], [ %267, %254 ]
  %273 = phi i32 [ %232, %242 ], [ %250, %245 ], [ %232, %252 ], [ %269, %254 ]
  %274 = phi i64 [ %224, %242 ], [ %251, %245 ], [ %224, %252 ], [ %270, %254 ]
  %275 = getelementptr inbounds nuw i8, ptr %229, i64 8
  %276 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %275, ptr %276, align 8, !tbaa !85
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !154
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !155
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !156
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !157
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !158
  %277 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %278 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %279 = getelementptr inbounds i8, ptr %20, i64 -32
  %280 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %281 = getelementptr inbounds nuw i8, ptr %9, i64 104
  %282 = ptrtoint ptr %27 to i64
  %283 = ptrtoint ptr %29 to i64
  %284 = add i64 %282, 16
  %285 = ptrtoint ptr %3 to i64
  %286 = ptrtoint ptr %3 to i64
  br label %287

287:                                              ; preds = %271, %693
  %288 = phi ptr [ %272, %271 ], [ %507, %693 ]
  %289 = phi i32 [ %273, %271 ], [ %508, %693 ]
  %290 = phi i64 [ %274, %271 ], [ %509, %693 ]
  %291 = phi i64 [ %45, %271 ], [ %379, %693 ]
  %292 = phi i64 [ %41, %271 ], [ %377, %693 ]
  %293 = phi i64 [ %38, %271 ], [ %378, %693 ]
  %294 = phi i64 [ %240, %271 ], [ %510, %693 ]
  %295 = phi i64 [ %189, %271 ], [ %511, %693 ]
  %296 = phi i64 [ %143, %271 ], [ %512, %693 ]
  %297 = phi i32 [ %5, %271 ], [ %694, %693 ]
  %298 = phi ptr [ %1, %271 ], [ %688, %693 ]
  %299 = icmp eq i32 %297, 1
  %300 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %174, i64 %296
  %301 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %275, i64 %294
  %302 = getelementptr inbounds nuw %struct.ZSTD_seqSymbol, ptr %225, i64 %295
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 4
  %304 = load i32, ptr %303, align 4, !tbaa !43, !noalias !237
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw i8, ptr %300, i64 4
  %307 = load i32, ptr %306, align 4, !tbaa !43, !noalias !237
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %302, i64 4
  %310 = load i32, ptr %309, align 4, !tbaa !43, !noalias !237
  %311 = getelementptr inbounds nuw i8, ptr %300, i64 2
  %312 = load i8, ptr %311, align 2, !tbaa !59, !noalias !237
  %313 = getelementptr inbounds nuw i8, ptr %301, i64 2
  %314 = load i8, ptr %313, align 2, !tbaa !59, !noalias !237
  %315 = getelementptr inbounds nuw i8, ptr %302, i64 2
  %316 = load i8, ptr %315, align 2, !tbaa !59, !noalias !237
  %317 = zext i8 %312 to i32
  %318 = zext i8 %314 to i32
  %319 = add i8 %314, %312
  %320 = add i8 %319, %316
  %321 = load i16, ptr %300, align 4, !tbaa !58, !noalias !237
  %322 = load i16, ptr %301, align 4, !tbaa !58, !noalias !237
  %323 = load i16, ptr %302, align 4, !tbaa !58, !noalias !237
  %324 = getelementptr inbounds nuw i8, ptr %300, i64 3
  %325 = load i8, ptr %324, align 1, !tbaa !57, !noalias !237
  %326 = zext i8 %325 to i32
  %327 = getelementptr inbounds nuw i8, ptr %301, i64 3
  %328 = load i8, ptr %327, align 1, !tbaa !57, !noalias !237
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds nuw i8, ptr %302, i64 3
  %331 = load i8, ptr %330, align 1, !tbaa !57, !noalias !237
  %332 = zext i8 %331 to i32
  %333 = icmp ugt i8 %316, 1
  br i1 %333, label %334, label %346

334:                                              ; preds = %287
  %335 = zext i8 %316 to i32
  %336 = and i32 %289, 63
  %337 = zext nneg i32 %336 to i64
  %338 = shl i64 %290, %337
  %339 = sub nsw i32 0, %335
  %340 = and i32 %339, 63
  %341 = zext nneg i32 %340 to i64
  %342 = lshr i64 %338, %341
  %343 = add i32 %289, %335
  store i32 %343, ptr %134, align 8, !tbaa !84, !noalias !237
  %344 = zext i32 %310 to i64
  %345 = add i64 %342, %344
  store i64 %292, ptr %281, align 8, !tbaa !46, !noalias !237
  br label %375

346:                                              ; preds = %287
  %347 = icmp eq i32 %307, 0
  %348 = icmp eq i8 %316, 0
  br i1 %348, label %349, label %352, !prof !91

349:                                              ; preds = %346
  %350 = select i1 %347, i64 %292, i64 %293
  %351 = select i1 %347, i64 %293, i64 %292
  br label %375

352:                                              ; preds = %346
  %353 = zext i1 %347 to i32
  %354 = add i32 %310, %353
  %355 = zext i32 %354 to i64
  %356 = and i32 %289, 63
  %357 = zext nneg i32 %356 to i64
  %358 = shl i64 %290, %357
  %359 = lshr i64 %358, 63
  %360 = add i32 %289, 1
  store i32 %360, ptr %134, align 8, !tbaa !84, !noalias !237
  %361 = add nuw nsw i64 %359, %355
  %362 = icmp eq i64 %361, 3
  br i1 %362, label %363, label %367

363:                                              ; preds = %352
  %364 = add i64 %293, -1
  %365 = icmp eq i64 %364, 0
  %366 = select i1 %365, i64 -1, i64 %364
  br label %373

367:                                              ; preds = %352
  %368 = getelementptr inbounds nuw [3 x i64], ptr %36, i64 0, i64 %361
  %369 = load i64, ptr %368, align 8, !tbaa !46, !noalias !237
  %370 = icmp eq i64 %369, 0
  %371 = select i1 %370, i64 -1, i64 %369
  %372 = icmp eq i64 %361, 1
  br i1 %372, label %375, label %373

373:                                              ; preds = %363, %367
  %374 = phi i64 [ %366, %363 ], [ %371, %367 ]
  store i64 %292, ptr %281, align 8, !tbaa !46, !noalias !237
  br label %375

375:                                              ; preds = %367, %373, %349, %334
  %376 = phi i32 [ %289, %349 ], [ %343, %334 ], [ %360, %373 ], [ %360, %367 ]
  %377 = phi i64 [ %351, %349 ], [ %293, %334 ], [ %293, %373 ], [ %293, %367 ]
  %378 = phi i64 [ %350, %349 ], [ %345, %334 ], [ %374, %373 ], [ %371, %367 ]
  %379 = phi i64 [ %291, %349 ], [ %292, %334 ], [ %292, %373 ], [ %291, %367 ]
  store i64 %377, ptr %280, align 8, !tbaa !46, !noalias !237
  store i64 %378, ptr %36, align 8, !tbaa !46, !noalias !237
  %380 = icmp eq i8 %314, 0
  br i1 %380, label %391, label %381

381:                                              ; preds = %375
  %382 = and i32 %376, 63
  %383 = zext nneg i32 %382 to i64
  %384 = shl i64 %290, %383
  %385 = sub nsw i32 0, %318
  %386 = and i32 %385, 63
  %387 = zext nneg i32 %386 to i64
  %388 = lshr i64 %384, %387
  %389 = add i32 %376, %318
  store i32 %389, ptr %134, align 8, !tbaa !84, !noalias !237
  %390 = add i64 %388, %305
  br label %391

391:                                              ; preds = %381, %375
  %392 = phi i32 [ %376, %375 ], [ %389, %381 ]
  %393 = phi i64 [ %305, %375 ], [ %390, %381 ]
  %394 = icmp ugt i8 %320, 30
  br i1 %394, label %395, label %425, !prof !53

395:                                              ; preds = %391
  %396 = icmp ugt i32 %392, 64
  br i1 %396, label %397, label %398, !prof !53

397:                                              ; preds = %395
  store ptr @BIT_reloadDStream.zeroFilled, ptr %145, align 8, !tbaa !79, !noalias !237
  br label %425

398:                                              ; preds = %395
  %399 = icmp ult ptr %288, %50
  br i1 %399, label %407, label %400

400:                                              ; preds = %398
  %401 = lshr i32 %392, 3
  %402 = zext nneg i32 %401 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %288, i64 %403
  store ptr %404, ptr %145, align 8, !tbaa !79, !noalias !237
  %405 = and i32 %392, 7
  store i32 %405, ptr %134, align 8, !tbaa !84, !noalias !237
  %406 = load i64, ptr %404, align 1, !tbaa !46, !noalias !237
  store i64 %406, ptr %9, align 8, !tbaa !80, !noalias !237
  br label %425

407:                                              ; preds = %398
  %408 = icmp eq ptr %288, %3
  br i1 %408, label %425, label %409

409:                                              ; preds = %407
  %410 = lshr i32 %392, 3
  %411 = zext nneg i32 %410 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %288, i64 %412
  %414 = icmp ult ptr %413, %3
  %415 = ptrtoint ptr %288 to i64
  %416 = sub i64 %415, %285
  %417 = trunc i64 %416 to i32
  %418 = select i1 %414, i32 %417, i32 %410
  %419 = zext i32 %418 to i64
  %420 = sub nsw i64 0, %419
  %421 = getelementptr inbounds i8, ptr %288, i64 %420
  store ptr %421, ptr %145, align 8, !tbaa !79, !noalias !237
  %422 = shl i32 %418, 3
  %423 = sub i32 %392, %422
  store i32 %423, ptr %134, align 8, !tbaa !84, !noalias !237
  %424 = load i64, ptr %421, align 1, !tbaa !46, !noalias !237
  store i64 %424, ptr %9, align 8, !tbaa !80, !noalias !237
  br label %425

425:                                              ; preds = %407, %397, %400, %409, %391
  %426 = phi ptr [ %288, %407 ], [ @BIT_reloadDStream.zeroFilled, %397 ], [ %404, %400 ], [ %421, %409 ], [ %288, %391 ]
  %427 = phi i32 [ %392, %407 ], [ %392, %397 ], [ %405, %400 ], [ %423, %409 ], [ %392, %391 ]
  %428 = phi i64 [ %290, %407 ], [ %290, %397 ], [ %406, %400 ], [ %424, %409 ], [ %290, %391 ]
  %429 = icmp eq i8 %312, 0
  br i1 %429, label %440, label %430

430:                                              ; preds = %425
  %431 = and i32 %427, 63
  %432 = zext nneg i32 %431 to i64
  %433 = shl i64 %428, %432
  %434 = sub nsw i32 0, %317
  %435 = and i32 %434, 63
  %436 = zext nneg i32 %435 to i64
  %437 = lshr i64 %433, %436
  %438 = add i32 %427, %317
  store i32 %438, ptr %134, align 8, !tbaa !84, !noalias !237
  %439 = add i64 %437, %308
  br label %440

440:                                              ; preds = %430, %425
  %441 = phi i32 [ %427, %425 ], [ %438, %430 ]
  %442 = phi i64 [ %308, %425 ], [ %439, %430 ]
  br i1 %299, label %506, label %443

443:                                              ; preds = %440
  %444 = add i32 %441, %326
  %445 = sub i32 0, %444
  %446 = and i32 %445, 63
  %447 = zext nneg i32 %446 to i64
  %448 = lshr i64 %428, %447
  %449 = zext nneg i8 %325 to i64
  %450 = shl nsw i64 -1, %449
  %451 = xor i64 %450, -1
  %452 = and i64 %448, %451
  %453 = zext i16 %321 to i64
  %454 = add nuw i64 %452, %453
  store i64 %454, ptr %130, align 8, !tbaa !82, !noalias !237
  %455 = add i32 %444, %329
  %456 = sub i32 0, %455
  %457 = and i32 %456, 63
  %458 = zext nneg i32 %457 to i64
  %459 = lshr i64 %428, %458
  %460 = zext nneg i8 %328 to i64
  %461 = shl nsw i64 -1, %460
  %462 = xor i64 %461, -1
  %463 = and i64 %459, %462
  %464 = zext i16 %322 to i64
  %465 = add nuw i64 %463, %464
  store i64 %465, ptr %227, align 8, !tbaa !82, !noalias !237
  %466 = add i32 %455, %332
  %467 = sub i32 0, %466
  %468 = and i32 %467, 63
  %469 = zext nneg i32 %468 to i64
  %470 = lshr i64 %428, %469
  %471 = zext nneg i8 %331 to i64
  %472 = shl nsw i64 -1, %471
  %473 = xor i64 %472, -1
  %474 = and i64 %470, %473
  store i32 %466, ptr %134, align 8, !tbaa !84, !noalias !237
  %475 = zext i16 %323 to i64
  %476 = add nuw i64 %474, %475
  store i64 %476, ptr %176, align 8, !tbaa !82, !noalias !237
  %477 = icmp ugt i32 %466, 64
  br i1 %477, label %478, label %479, !prof !53

478:                                              ; preds = %443
  store ptr @BIT_reloadDStream.zeroFilled, ptr %145, align 8, !tbaa !79, !noalias !237
  br label %506

479:                                              ; preds = %443
  %480 = icmp ult ptr %426, %50
  br i1 %480, label %488, label %481

481:                                              ; preds = %479
  %482 = lshr i32 %466, 3
  %483 = zext nneg i32 %482 to i64
  %484 = sub nsw i64 0, %483
  %485 = getelementptr inbounds i8, ptr %426, i64 %484
  store ptr %485, ptr %145, align 8, !tbaa !79, !noalias !237
  %486 = and i32 %466, 7
  store i32 %486, ptr %134, align 8, !tbaa !84, !noalias !237
  %487 = load i64, ptr %485, align 1, !tbaa !46, !noalias !237
  store i64 %487, ptr %9, align 8, !tbaa !80, !noalias !237
  br label %506

488:                                              ; preds = %479
  %489 = icmp eq ptr %426, %3
  br i1 %489, label %506, label %490

490:                                              ; preds = %488
  %491 = lshr i32 %466, 3
  %492 = zext nneg i32 %491 to i64
  %493 = sub nsw i64 0, %492
  %494 = getelementptr inbounds i8, ptr %426, i64 %493
  %495 = icmp ult ptr %494, %3
  %496 = ptrtoint ptr %426 to i64
  %497 = sub i64 %496, %286
  %498 = trunc i64 %497 to i32
  %499 = select i1 %495, i32 %498, i32 %491
  %500 = zext i32 %499 to i64
  %501 = sub nsw i64 0, %500
  %502 = getelementptr inbounds i8, ptr %426, i64 %501
  store ptr %502, ptr %145, align 8, !tbaa !79, !noalias !237
  %503 = shl i32 %499, 3
  %504 = sub i32 %466, %503
  store i32 %504, ptr %134, align 8, !tbaa !84, !noalias !237
  %505 = load i64, ptr %502, align 1, !tbaa !46, !noalias !237
  store i64 %505, ptr %9, align 8, !tbaa !80, !noalias !237
  br label %506

506:                                              ; preds = %488, %478, %481, %490, %440
  %507 = phi ptr [ %426, %488 ], [ @BIT_reloadDStream.zeroFilled, %478 ], [ %485, %481 ], [ %502, %490 ], [ %426, %440 ]
  %508 = phi i32 [ %466, %488 ], [ %466, %478 ], [ %486, %481 ], [ %504, %490 ], [ %441, %440 ]
  %509 = phi i64 [ %428, %488 ], [ %428, %478 ], [ %487, %481 ], [ %505, %490 ], [ %428, %440 ]
  %510 = phi i64 [ %465, %488 ], [ %465, %478 ], [ %465, %481 ], [ %465, %490 ], [ %294, %440 ]
  %511 = phi i64 [ %476, %488 ], [ %476, %478 ], [ %476, %481 ], [ %476, %490 ], [ %295, %440 ]
  %512 = phi i64 [ %454, %488 ], [ %454, %478 ], [ %454, %481 ], [ %454, %490 ], [ %296, %440 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store i64 %442, ptr %7, align 8
  store i64 %393, ptr %277, align 8
  store i64 %378, ptr %278, align 8
  %513 = getelementptr i8, ptr %298, i64 %442
  %514 = add i64 %442, %393
  %515 = load ptr, ptr %8, align 8, !tbaa !40
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 %442
  %517 = sub i64 0, %378
  %518 = getelementptr inbounds i8, ptr %513, i64 %517
  %519 = icmp ugt ptr %516, %25
  %520 = getelementptr inbounds nuw i8, ptr %298, i64 %514
  %521 = icmp ugt ptr %520, %279
  %522 = select i1 %519, i1 true, i1 %521
  br i1 %522, label %526, label %523, !prof !105

523:                                              ; preds = %506
  %524 = load <2 x i64>, ptr %515, align 1, !tbaa !9
  store <2 x i64> %524, ptr %298, align 1, !tbaa !9
  %525 = icmp ugt i64 %442, 16
  br i1 %525, label %528, label %546, !prof !53

526:                                              ; preds = %506
  %527 = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %298, ptr noundef %20, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31)
  br label %685

528:                                              ; preds = %523
  %529 = getelementptr inbounds nuw i8, ptr %298, i64 16
  %530 = getelementptr inbounds nuw i8, ptr %515, i64 16
  %531 = add i64 %442, -16
  %532 = load <2 x i64>, ptr %530, align 1, !tbaa !9
  store <2 x i64> %532, ptr %529, align 1, !tbaa !9
  %533 = icmp ult i64 %531, 17
  br i1 %533, label %546, label %534

534:                                              ; preds = %528
  %535 = getelementptr inbounds nuw i8, ptr %298, i64 32
  br label %536

536:                                              ; preds = %536, %534
  %537 = phi ptr [ %535, %534 ], [ %544, %536 ]
  %538 = phi ptr [ %530, %534 ], [ %542, %536 ]
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 16
  %540 = load <2 x i64>, ptr %539, align 1, !tbaa !9
  store <2 x i64> %540, ptr %537, align 1, !tbaa !9
  %541 = getelementptr inbounds nuw i8, ptr %537, i64 16
  %542 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %543 = load <2 x i64>, ptr %542, align 1, !tbaa !9
  store <2 x i64> %543, ptr %541, align 1, !tbaa !9
  %544 = getelementptr inbounds nuw i8, ptr %537, i64 32
  %545 = icmp ult ptr %544, %513
  br i1 %545, label %536, label %546, !llvm.loop !101

546:                                              ; preds = %536, %528, %523
  store ptr %516, ptr %8, align 8, !tbaa !40
  %547 = ptrtoint ptr %513 to i64
  %548 = sub i64 %547, %282
  %549 = icmp ugt i64 %378, %548
  br i1 %549, label %550, label %564

550:                                              ; preds = %546
  %551 = sub i64 %547, %283
  %552 = icmp ugt i64 %378, %551
  br i1 %552, label %553, label %554, !prof !53

553:                                              ; preds = %550
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %705

554:                                              ; preds = %550
  %555 = ptrtoint ptr %518 to i64
  %556 = sub i64 %555, %282
  %557 = getelementptr inbounds i8, ptr %31, i64 %556
  %558 = add nsw i64 %556, %393
  %559 = icmp sgt i64 %558, 0
  br i1 %559, label %561, label %560

560:                                              ; preds = %554
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %513, ptr align 1 %557, i64 %393, i1 false)
  br label %685

561:                                              ; preds = %554
  %562 = sub nsw i64 0, %556
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %513, ptr align 1 %557, i64 %562, i1 false)
  %563 = getelementptr inbounds nuw i8, ptr %513, i64 %562
  store i64 %558, ptr %277, align 8, !tbaa !131
  br label %564

564:                                              ; preds = %561, %546
  %565 = phi ptr [ %27, %561 ], [ %518, %546 ]
  %566 = phi ptr [ %563, %561 ], [ %513, %546 ]
  %567 = phi i64 [ %558, %561 ], [ %393, %546 ]
  %568 = icmp ugt i64 %378, 15
  br i1 %568, label %569, label %585, !prof !91

569:                                              ; preds = %564
  %570 = getelementptr inbounds nuw i8, ptr %566, i64 %567
  %571 = load <2 x i64>, ptr %565, align 1, !tbaa !9
  store <2 x i64> %571, ptr %566, align 1, !tbaa !9
  %572 = icmp ult i64 %567, 17
  br i1 %572, label %685, label %573

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
  br i1 %584, label %575, label %685, !llvm.loop !101

585:                                              ; preds = %564
  %586 = icmp samesign ult i64 %378, 8
  br i1 %586, label %587, label %609

587:                                              ; preds = %585
  %588 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i64 0, i64 %378
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
  %600 = getelementptr inbounds nuw [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i64 0, i64 %378
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
  br i1 %615, label %616, label %685

616:                                              ; preds = %611
  %617 = ptrtoint ptr %614 to i64
  %618 = ptrtoint ptr %613 to i64
  %619 = sub i64 %617, %618
  %620 = getelementptr i8, ptr %566, i64 %567
  %621 = icmp slt i64 %619, 16
  br i1 %621, label %622, label %669

622:                                              ; preds = %616
  %623 = add i64 %393, %282
  %624 = tail call i64 @llvm.umin.i64(i64 %378, i64 %548)
  %625 = add i64 %623, %624
  %626 = tail call i64 @llvm.umax.i64(i64 %378, i64 %548)
  %627 = add i64 %625, %626
  %628 = sub i64 %627, %378
  %629 = add i64 %284, %626
  %630 = tail call i64 @llvm.umax.i64(i64 %628, i64 %629)
  %631 = add i64 %630, -9
  %632 = add i64 %626, %282
  %633 = sub i64 %631, %632
  %634 = lshr i64 %633, 3
  %635 = add nuw nsw i64 %634, 1
  %636 = icmp ult i64 %633, 24
  %637 = icmp ult i64 %619, 32
  %638 = or i1 %636, %637
  br i1 %638, label %659, label %639

639:                                              ; preds = %622
  %640 = and i64 %635, 4611686018427387900
  %641 = shl i64 %640, 3
  %642 = getelementptr i8, ptr %614, i64 %641
  %643 = shl i64 %640, 3
  %644 = getelementptr i8, ptr %613, i64 %643
  br label %645

645:                                              ; preds = %645, %639
  %646 = phi i64 [ 0, %639 ], [ %655, %645 ]
  %647 = shl i64 %646, 3
  %648 = getelementptr i8, ptr %614, i64 %647
  %649 = shl i64 %646, 3
  %650 = getelementptr i8, ptr %613, i64 %649
  %651 = getelementptr i8, ptr %650, i64 16
  %652 = load <2 x i64>, ptr %650, align 1
  %653 = load <2 x i64>, ptr %651, align 1
  %654 = getelementptr i8, ptr %648, i64 16
  store <2 x i64> %652, ptr %648, align 1
  store <2 x i64> %653, ptr %654, align 1
  %655 = add nuw i64 %646, 4
  %656 = icmp eq i64 %655, %640
  br i1 %656, label %657, label %645, !llvm.loop !240

657:                                              ; preds = %645
  %658 = icmp eq i64 %635, %640
  br i1 %658, label %685, label %659

659:                                              ; preds = %622, %657
  %660 = phi ptr [ %614, %622 ], [ %642, %657 ]
  %661 = phi ptr [ %613, %622 ], [ %644, %657 ]
  br label %662

662:                                              ; preds = %659, %662
  %663 = phi ptr [ %666, %662 ], [ %660, %659 ]
  %664 = phi ptr [ %667, %662 ], [ %661, %659 ]
  %665 = load i64, ptr %664, align 1
  store i64 %665, ptr %663, align 1
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 8
  %667 = getelementptr inbounds nuw i8, ptr %664, i64 8
  %668 = icmp ult ptr %666, %620
  br i1 %668, label %662, label %685, !llvm.loop !241

669:                                              ; preds = %616
  %670 = add i64 %567, -8
  %671 = load <2 x i64>, ptr %613, align 1, !tbaa !9
  store <2 x i64> %671, ptr %614, align 1, !tbaa !9
  %672 = icmp ult i64 %670, 17
  br i1 %672, label %685, label %673

673:                                              ; preds = %669
  %674 = getelementptr inbounds nuw i8, ptr %566, i64 24
  br label %675

675:                                              ; preds = %675, %673
  %676 = phi ptr [ %674, %673 ], [ %683, %675 ]
  %677 = phi ptr [ %613, %673 ], [ %681, %675 ]
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 16
  %679 = load <2 x i64>, ptr %678, align 1, !tbaa !9
  store <2 x i64> %679, ptr %676, align 1, !tbaa !9
  %680 = getelementptr inbounds nuw i8, ptr %676, i64 16
  %681 = getelementptr inbounds nuw i8, ptr %677, i64 32
  %682 = load <2 x i64>, ptr %681, align 1, !tbaa !9
  store <2 x i64> %682, ptr %680, align 1, !tbaa !9
  %683 = getelementptr inbounds nuw i8, ptr %676, i64 32
  %684 = icmp ult ptr %683, %620
  br i1 %684, label %675, label %685, !llvm.loop !101

685:                                              ; preds = %675, %662, %575, %657, %669, %569, %611, %560, %526
  %686 = phi i64 [ %527, %526 ], [ %514, %560 ], [ %514, %611 ], [ %514, %569 ], [ %514, %669 ], [ %514, %657 ], [ %514, %575 ], [ %514, %662 ], [ %514, %675 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %687 = icmp ult i64 %686, -119
  %688 = getelementptr inbounds nuw i8, ptr %298, i64 %686
  br i1 %687, label %689, label %705

689:                                              ; preds = %685
  %690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %297, i32 -1)
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !90
  br i1 %691, label %692, label %693, !prof !113, !nosanitize !90

692:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !90
  unreachable, !nosanitize !90

693:                                              ; preds = %689
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !90
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %287, !llvm.loop !164

696:                                              ; preds = %693
  %697 = icmp eq ptr %507, %3
  %698 = icmp eq i32 %508, 64
  %699 = select i1 %697, i1 %698, i1 false
  br i1 %699, label %700, label %705

700:                                              ; preds = %696
  %701 = trunc i64 %378 to i32
  store i32 %701, ptr %35, align 4, !tbaa !30
  %702 = trunc i64 %377 to i32
  store i32 %702, ptr %39, align 4, !tbaa !30
  %703 = trunc i64 %379 to i32
  store i32 %703, ptr %43, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  %704 = load ptr, ptr %8, align 8, !tbaa !40
  br label %707

705:                                              ; preds = %685, %104, %53, %33, %117, %553, %696
  %706 = phi i64 [ -20, %553 ], [ -20, %117 ], [ -20, %696 ], [ -20, %33 ], [ -20, %53 ], [ -20, %104 ], [ %686, %685 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #18
  br label %726

707:                                              ; preds = %700, %19
  %708 = phi ptr [ %704, %700 ], [ %22, %19 ]
  %709 = phi ptr [ %688, %700 ], [ %1, %19 ]
  %710 = ptrtoint ptr %25 to i64
  %711 = ptrtoint ptr %708 to i64
  %712 = sub i64 %710, %711
  %713 = ptrtoint ptr %20 to i64
  %714 = ptrtoint ptr %709 to i64
  %715 = sub i64 %713, %714
  %716 = icmp ugt i64 %712, %715
  br i1 %716, label %726, label %717

717:                                              ; preds = %707
  %718 = icmp eq ptr %709, null
  br i1 %718, label %722, label %719

719:                                              ; preds = %717
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %709, ptr align 1 %708, i64 %712, i1 false)
  %720 = getelementptr inbounds nuw i8, ptr %709, i64 %712
  %721 = ptrtoint ptr %720 to i64
  br label %722

722:                                              ; preds = %719, %717
  %723 = phi i64 [ 0, %717 ], [ %721, %719 ]
  %724 = ptrtoint ptr %1 to i64
  %725 = sub i64 %723, %724
  br label %726

726:                                              ; preds = %707, %705, %722
  %727 = phi i64 [ %725, %722 ], [ %706, %705 ], [ -70, %707 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret i64 %727
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZSTD_decompressSequencesLong_bmi2.cold.1(ptr %0, ptr %1, i64 %2) #17 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = add i64 %2, -16
  %8 = getelementptr i8, ptr %0, i64 %2
  %9 = load <2 x i64>, ptr %6, align 1, !tbaa !9
  store <2 x i64> %9, ptr %5, align 1, !tbaa !9
  %10 = icmp ult i64 %7, 17
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %21, %13 ]
  %15 = phi ptr [ %6, %11 ], [ %19, %13 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = load <2 x i64>, ptr %16, align 1, !tbaa !9
  store <2 x i64> %17, ptr %14, align 1, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %20 = load <2 x i64>, ptr %19, align 1, !tbaa !9
  store <2 x i64> %20, ptr %18, align 1, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %22 = icmp ult ptr %21, %8
  br i1 %22, label %13, label %23, !llvm.loop !101

23:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZSTD_decompressSequencesLong_bmi2.cold.2(ptr %0, ptr %1, i64 %2) #17 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = add i64 %2, -16
  %8 = getelementptr i8, ptr %0, i64 %2
  %9 = load <2 x i64>, ptr %6, align 1, !tbaa !9
  store <2 x i64> %9, ptr %5, align 1, !tbaa !9
  %10 = icmp ult i64 %7, 17
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %21, %13 ]
  %15 = phi ptr [ %6, %11 ], [ %19, %13 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = load <2 x i64>, ptr %16, align 1, !tbaa !9
  store <2 x i64> %17, ptr %14, align 1, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %20 = load <2 x i64>, ptr %19, align 1, !tbaa !9
  store <2 x i64> %20, ptr %18, align 1, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %22 = icmp ult ptr %21, %8
  br i1 %22, label %13, label %23, !llvm.loop !101

23:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZSTD_decompressSequencesLong_bmi2.cold.3(ptr %0, i64 %1, ptr %2) #17 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = add i64 %1, -16
  %7 = getelementptr i8, ptr %0, i64 %1
  %8 = load <2 x i64>, ptr %2, align 1, !tbaa !9
  store <2 x i64> %8, ptr %5, align 1, !tbaa !9
  %9 = icmp ult i64 %6, 17
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %11, %10 ], [ %20, %12 ]
  %14 = phi ptr [ %2, %10 ], [ %18, %12 ]
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load <2 x i64>, ptr %15, align 1, !tbaa !9
  store <2 x i64> %16, ptr %13, align 1, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %19 = load <2 x i64>, ptr %18, align 1, !tbaa !9
  store <2 x i64> %19, ptr %17, align 1, !tbaa !9
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %21 = icmp ult ptr %20, %7
  br i1 %21, label %12, label %22, !llvm.loop !101

22:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZSTD_decompressSequencesLong_bmi2.cold.4(ptr %0, ptr %1, i64 %2) #17 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = add i64 %2, -16
  %8 = getelementptr i8, ptr %0, i64 %2
  %9 = load <2 x i64>, ptr %6, align 1, !tbaa !9
  store <2 x i64> %9, ptr %5, align 1, !tbaa !9
  %10 = icmp ult i64 %7, 17
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %21, %13 ]
  %15 = phi ptr [ %6, %11 ], [ %19, %13 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = load <2 x i64>, ptr %16, align 1, !tbaa !9
  store <2 x i64> %17, ptr %14, align 1, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %20 = load <2 x i64>, ptr %19, align 1, !tbaa !9
  store <2 x i64> %20, ptr %18, align 1, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %22 = icmp ult ptr %21, %8
  br i1 %22, label %13, label %23, !llvm.loop !101

23:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZSTD_decompressSequencesLong_bmi2.cold.5(ptr %0, ptr %1, i64 %2) #17 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = add i64 %2, -16
  %8 = getelementptr i8, ptr %0, i64 %2
  %9 = load <2 x i64>, ptr %6, align 1, !tbaa !9
  store <2 x i64> %9, ptr %5, align 1, !tbaa !9
  %10 = icmp ult i64 %7, 17
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %21, %13 ]
  %15 = phi ptr [ %6, %11 ], [ %19, %13 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = load <2 x i64>, ptr %16, align 1, !tbaa !9
  store <2 x i64> %17, ptr %14, align 1, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %20 = load <2 x i64>, ptr %19, align 1, !tbaa !9
  store <2 x i64> %20, ptr %18, align 1, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %22 = icmp ult ptr %21, %8
  br i1 %22, label %13, label %23, !llvm.loop !101

23:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZSTD_decompressSequencesLong_bmi2.cold.6(ptr %0, i64 %1, ptr %2) #17 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = add i64 %1, -16
  %7 = getelementptr i8, ptr %0, i64 %1
  %8 = load <2 x i64>, ptr %2, align 1, !tbaa !9
  store <2 x i64> %8, ptr %5, align 1, !tbaa !9
  %9 = icmp ult i64 %6, 17
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %11, %10 ], [ %20, %12 ]
  %14 = phi ptr [ %2, %10 ], [ %18, %12 ]
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load <2 x i64>, ptr %15, align 1, !tbaa !9
  store <2 x i64> %16, ptr %13, align 1, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %19 = load <2 x i64>, ptr %18, align 1, !tbaa !9
  store <2 x i64> %19, ptr %17, align 1, !tbaa !9
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %21 = icmp ult ptr %20, %7
  br i1 %21, label %12, label %22, !llvm.loop !101

22:                                               ; preds = %12, %4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!24, !24, i64 0}
!41 = !{!16, !24, i64 30120}
!42 = !{!16, !20, i64 30152}
!43 = !{!44, !12, i64 4}
!44 = !{!"", !6, i64 0, !7, i64 2, !7, i64 3, !12, i64 4}
!45 = distinct !{!45, !39}
!46 = !{!20, !20, i64 0}
!47 = distinct !{!47, !39, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !39, !49, !48}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = !{!44, !7, i64 3}
!58 = !{!44, !6, i64 0}
!59 = !{!44, !7, i64 2}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39, !48, !49}
!62 = distinct !{!62, !39, !49, !48}
!63 = !{!16, !12, i64 30004}
!64 = !{!65, !12, i64 4}
!65 = !{!"", !12, i64 0, !12, i64 4}
!66 = !{!65, !12, i64 0}
!67 = !{!17, !17, i64 0}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!16, !17, i64 29904}
!72 = !{!16, !17, i64 16}
!73 = distinct !{!73, !39}
!74 = !{!16, !17, i64 29896}
!75 = !{!16, !17, i64 29912}
!76 = !{!77, !24, i64 24}
!77 = !{!"", !20, i64 0, !12, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!78 = !{!77, !24, i64 32}
!79 = !{!77, !24, i64 16}
!80 = !{!77, !20, i64 0}
!81 = !{!16, !17, i64 0}
!82 = !{!83, !20, i64 0}
!83 = !{!"", !20, i64 0, !17, i64 8}
!84 = !{!77, !12, i64 8}
!85 = !{!83, !17, i64 8}
!86 = !{!16, !17, i64 8}
!87 = !{!88}
!88 = distinct !{!88, !89, !"ZSTD_decodeSequence: argument 0"}
!89 = distinct !{!89, !"ZSTD_decodeSequence"}
!90 = !{}
!91 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!92 = distinct !{!92, !39}
!93 = !{!94}
!94 = distinct !{!94, !95, !"ZSTD_decodeSequence: argument 0"}
!95 = distinct !{!95, !"ZSTD_decodeSequence"}
!96 = !{!97, !20, i64 0}
!97 = !{!"", !20, i64 0, !20, i64 8, !20, i64 16}
!98 = distinct !{!98, !39, !48, !49}
!99 = distinct !{!99, !39, !48, !49}
!100 = distinct !{!100, !39, !48}
!101 = distinct !{!101, !39}
!102 = distinct !{!102, !39, !48, !49}
!103 = distinct !{!103, !39, !48, !49}
!104 = distinct !{!104, !39, !48}
!105 = !{!"branch_weights", i32 4001, i32 4000000}
!106 = distinct !{!106, !39, !48, !49}
!107 = distinct !{!107, !39, !48}
!108 = distinct !{!108, !39, !48, !49}
!109 = distinct !{!109, !39, !48}
!110 = distinct !{!110, !39, !48, !49}
!111 = distinct !{!111, !39, !48}
!112 = distinct !{!112, !39}
!113 = !{!"branch_weights", i32 1, i32 1048575}
!114 = distinct !{!114, !39, !48, !49}
!115 = distinct !{!115, !39, !48, !49}
!116 = distinct !{!116, !39, !48}
!117 = distinct !{!117, !39, !48, !49}
!118 = distinct !{!118, !39, !48, !49}
!119 = distinct !{!119, !39, !48}
!120 = distinct !{!120, !39, !48, !49}
!121 = distinct !{!121, !39, !48}
!122 = distinct !{!122, !39, !48, !49}
!123 = distinct !{!123, !39, !48}
!124 = distinct !{!124, !39, !48, !49}
!125 = distinct !{!125, !39, !48}
!126 = distinct !{!126, !39}
!127 = !{i64 72311}
!128 = !{!129}
!129 = distinct !{!129, !130, !"ZSTD_decodeSequence: argument 0"}
!130 = distinct !{!130, !"ZSTD_decodeSequence"}
!131 = !{!97, !20, i64 8}
!132 = distinct !{!132, !39, !48, !49}
!133 = distinct !{!133, !39, !48}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !39, !48, !49}
!136 = distinct !{!136, !39, !48, !49}
!137 = distinct !{!137, !39, !48}
!138 = distinct !{!138, !39, !48, !49}
!139 = distinct !{!139, !39, !48, !49}
!140 = distinct !{!140, !39, !48}
!141 = distinct !{!141, !39, !48, !49}
!142 = distinct !{!142, !39, !48}
!143 = !{i64 75607}
!144 = !{i64 75642}
!145 = !{i64 75770}
!146 = !{i64 75805}
!147 = !{i64 75833}
!148 = !{!149}
!149 = distinct !{!149, !150, !"ZSTD_decodeSequence: argument 0"}
!150 = distinct !{!150, !"ZSTD_decodeSequence"}
!151 = distinct !{!151, !39, !48, !49}
!152 = distinct !{!152, !39, !48}
!153 = distinct !{!153, !39}
!154 = !{i64 80069}
!155 = !{i64 80104}
!156 = !{i64 80258}
!157 = !{i64 80293}
!158 = !{i64 80321}
!159 = !{!160}
!160 = distinct !{!160, !161, !"ZSTD_decodeSequence: argument 0"}
!161 = distinct !{!161, !"ZSTD_decodeSequence"}
!162 = distinct !{!162, !39, !48, !49}
!163 = distinct !{!163, !39, !48}
!164 = distinct !{!164, !39}
!165 = !{!16, !17, i64 29888}
!166 = !{!167}
!167 = distinct !{!167, !168, !"ZSTD_decodeSequence: argument 0"}
!168 = distinct !{!168, !"ZSTD_decodeSequence"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"ZSTD_decodeSequence: argument 0"}
!171 = distinct !{!171, !"ZSTD_decodeSequence"}
!172 = distinct !{!172, !39, !48, !49}
!173 = distinct !{!173, !39, !48, !49}
!174 = distinct !{!174, !39, !48}
!175 = distinct !{!175, !39, !48, !49}
!176 = distinct !{!176, !39, !48, !49}
!177 = distinct !{!177, !39, !48}
!178 = distinct !{!178, !39, !48, !49}
!179 = distinct !{!179, !39, !48}
!180 = distinct !{!180, !39, !48, !49}
!181 = distinct !{!181, !39, !48}
!182 = distinct !{!182, !39, !48, !49}
!183 = distinct !{!183, !39, !48}
!184 = distinct !{!184, !39, !48, !49}
!185 = distinct !{!185, !39, !48, !49}
!186 = distinct !{!186, !39, !48}
!187 = distinct !{!187, !39, !48, !49}
!188 = distinct !{!188, !39, !48, !49}
!189 = distinct !{!189, !39, !48}
!190 = distinct !{!190, !39, !48, !49}
!191 = distinct !{!191, !39, !48}
!192 = distinct !{!192, !39, !48, !49}
!193 = distinct !{!193, !39, !48}
!194 = distinct !{!194, !39, !48, !49}
!195 = distinct !{!195, !39, !48}
!196 = !{!97, !20, i64 16}
!197 = distinct !{!197, !39, !48, !49}
!198 = distinct !{!198, !39, !48, !49}
!199 = distinct !{!199, !39, !48}
!200 = distinct !{!200, !39, !48, !49}
!201 = distinct !{!201, !39, !48, !49}
!202 = distinct !{!202, !39, !48}
!203 = distinct !{!203, !39, !48, !49}
!204 = distinct !{!204, !39, !48, !49}
!205 = distinct !{!205, !39, !48}
!206 = distinct !{!206, !39, !48, !49}
!207 = distinct !{!207, !39, !48}
!208 = distinct !{!208, !39, !48, !49}
!209 = distinct !{!209, !39, !48}
!210 = distinct !{!210, !39, !48, !49}
!211 = distinct !{!211, !39, !48, !49}
!212 = distinct !{!212, !39, !48}
!213 = distinct !{!213, !39, !48, !49}
!214 = distinct !{!214, !39, !48, !49}
!215 = distinct !{!215, !39, !48}
!216 = distinct !{!216, !39, !48, !49}
!217 = distinct !{!217, !39, !48, !49}
!218 = distinct !{!218, !39, !48}
!219 = !{!220}
!220 = distinct !{!220, !221, !"ZSTD_decodeSequence: argument 0"}
!221 = distinct !{!221, !"ZSTD_decodeSequence"}
!222 = distinct !{!222, !39, !48, !49}
!223 = distinct !{!223, !39, !48}
!224 = distinct !{!224, !39, !48, !49}
!225 = distinct !{!225, !39, !48, !49}
!226 = distinct !{!226, !39, !48}
!227 = distinct !{!227, !39, !48, !49}
!228 = distinct !{!228, !39, !48, !49}
!229 = distinct !{!229, !39, !48}
!230 = distinct !{!230, !39, !48, !49}
!231 = distinct !{!231, !39, !48}
!232 = !{!233}
!233 = distinct !{!233, !234, !"ZSTD_decodeSequence: argument 0"}
!234 = distinct !{!234, !"ZSTD_decodeSequence"}
!235 = distinct !{!235, !39, !48, !49}
!236 = distinct !{!236, !39, !48}
!237 = !{!238}
!238 = distinct !{!238, !239, !"ZSTD_decodeSequence: argument 0"}
!239 = distinct !{!239, !"ZSTD_decodeSequence"}
!240 = distinct !{!240, !39, !48, !49}
!241 = distinct !{!241, !39, !48}
