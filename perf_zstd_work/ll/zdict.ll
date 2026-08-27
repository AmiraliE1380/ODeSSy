; ModuleID = '/mydata/zstd/lib/dictBuilder/zdict.c'
source_filename = "/mydata/zstd/lib/dictBuilder/zdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ZDICT_legacy_params_t = type { i32, %struct.ZDICT_params_t }
%struct.dictItem = type { i32, i32, i32 }
%struct.ZDICT_fastCover_params_t = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %struct.ZDICT_params_t }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"statistics ... \0A\00", align 1
@ZSTD_defaultCMem = internal constant %struct.ZSTD_customMem zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Not enough memory \0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Offset Code Frequencies : \0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%2u :%7u \0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" HUF_buildCTable error \0A\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"warning : pathological dataset : literals are not compressible : samples are noisy or too regular \0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"FSE_normalizeCount error with offcodeCount \0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"FSE_normalizeCount error with matchLengthCount \0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"FSE_normalizeCount error with litLengthCount \0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"HUF_writeCTable error \0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"FSE_writeNCount error with offcodeNCount \0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"FSE_writeNCount error with matchLengthNCount \0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"FSE_writeNCount error with litlengthNCount \0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"not enough space to write RepOffsets \0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"warning : ZSTD_compressBegin_usingCDict failed \0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"warning : could not compress sample size %u \0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\0A %u segments found, of total size %u \0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"list %u best segments \0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"%3u:%3u bytes at pos %8u, savings %7u bytes |\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"| \0A\00", align 1
@.str.22 = private unnamed_addr constant [79 x i8] c"!  warning : selected content significantly smaller than requested (%u < %u) \0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"!  consider increasing the number of samples (total size : %u MB)\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"!  consider increasing selectivity to produce larger dictionary (-s%u) \0A\00", align 1
@.str.25 = private unnamed_addr constant [91 x i8] c"!  note : larger dictionaries are not necessarily better, test its efficiency on samples \0A\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"!  note : calculated dictionary significantly larger than requested (%u > %u) \0A\00", align 1
@.str.27 = private unnamed_addr constant [78 x i8] c"!  consider increasing dictionary size, or produce denser dictionary (-s%u) \0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"!  always test dictionary efficiency on real samples \0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"sample set too large : reduced to %u MB ...\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"sorting %u files of total size %u MB ...\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"finding patterns ... \0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"minimum ratio : %u \0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"\0D%4.2f %% \0D\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"found %3u matches of length >= %i at pos %7u  \00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"Selected dict at position %u, of length %u : saves %u (ratio: %.2f)  \0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @ZDICT_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZDICT_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, -119
  %3 = trunc nsw i64 %0 to i32
  %4 = sub i32 0, %3
  %5 = select i1 %2, i32 0, i32 %4
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #17
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZDICT_getDictID(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ult i64 %1, 8
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i32 %5, -332356553
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 1, !tbaa !5
  br label %10

10:                                               ; preds = %4, %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_getDictHeaderSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ult i64 %1, 9
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i32 %5, -332356553
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = tail call noalias dereferenceable_or_null(5632) ptr @malloc(i64 noundef 5632) #18
  %9 = tail call noalias dereferenceable_or_null(8704) ptr @malloc(i64 noundef 8704) #18
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @ZSTD_reset_compressedBlockState(ptr noundef nonnull %8) #17
  %14 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %0, i64 noundef %1) #17
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi i64 [ %14, %13 ], [ -64, %7 ]
  tail call void @free(ptr noundef %8) #17
  tail call void @free(ptr noundef %9) #17
  br label %17

17:                                               ; preds = %2, %4, %15
  %18 = phi i64 [ %16, %15 ], [ -30, %4 ], [ -30, %2 ]
  ret i64 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @ZSTD_reset_compressedBlockState(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_loadCEntropy(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_finalizeDictionary(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef readonly captures(none) %5, i32 noundef %6, ptr noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %7) local_unnamed_addr #1 {
  %9 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #17
  %10 = load i32, ptr %7, align 8, !tbaa !9
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 3, i32 %10
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = icmp ult i64 %1, %3
  %16 = icmp ult i64 %1, 256
  %17 = or i1 %16, %15
  br i1 %17, label %52, label %18

18:                                               ; preds = %8
  store i32 -332356553, ptr %9, align 16, !tbaa !5
  %19 = tail call i64 @ZSTD_XXH64(ptr noundef captures(none) %2, i64 noundef %3, i64 noundef 0) #19
  %20 = urem i64 %19, 2147450880
  %21 = trunc nuw nsw i64 %20 to i32
  %22 = add nuw nsw i32 %21, 32768
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !12
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %22, i32 %24
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %26, ptr %27, align 4, !tbaa !5
  %28 = icmp ugt i32 %14, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  call void @ZDICT_finalizeDictionary.cold.1() #20
  br label %30

30:                                               ; preds = %29, %18
  %31 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %32 = call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %31, i64 noundef 248, i32 noundef %12, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %14)
  %33 = icmp ult i64 %32, -119
  %34 = add i64 %32, 8
  br i1 %33, label %35, label %52

35:                                               ; preds = %30
  %36 = add i64 %34, %3
  %37 = icmp ugt i64 %36, %1
  %38 = sub i64 %1, %34
  %39 = select i1 %37, i64 %38, i64 %3
  %40 = icmp ult i64 %39, 8
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = add nuw i64 %32, 16
  %43 = icmp ugt i64 %42, %1
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = sub nuw nsw i64 8, %39
  br label %46

46:                                               ; preds = %35, %44
  %47 = phi i64 [ %45, %44 ], [ 0, %35 ]
  %48 = add i64 %39, %34
  %49 = add i64 %48, %47
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %34
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 %47
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %51, ptr align 1 %2, i64 %39, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %9, i64 %34, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %50, i8 0, i64 %47, i1 false)
  br label %52

52:                                               ; preds = %41, %8, %30, %46
  %53 = phi i64 [ %49, %46 ], [ %32, %30 ], [ -70, %8 ], [ -70, %41 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #17
  ret i64 %53
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_analyzeEntropy(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #1 {
  %10 = alloca [256 x i32], align 16
  %11 = alloca [257 x i64], align 16
  %12 = alloca [31 x i32], align 16
  %13 = alloca [31 x i16], align 16
  %14 = alloca [53 x i32], align 16
  %15 = alloca [53 x i16], align 16
  %16 = alloca [36 x i32], align 16
  %17 = alloca [36 x i16], align 16
  %18 = alloca [1024 x i32], align 16
  %19 = alloca %struct.ZSTD_parameters, align 8
  %20 = alloca [1216 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %13) #17
  %21 = trunc i64 %7 to i32
  %22 = add i32 %21, 131072
  %23 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %22, i1 true)
  %24 = xor i32 %23, 31
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %19) #17
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %9
  %27 = zext i32 %5 to i64
  %28 = icmp ult i32 %5, 4
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = and i64 %27, 4294967292
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %41, %31 ]
  %33 = phi <2 x i64> [ zeroinitializer, %29 ], [ %39, %31 ]
  %34 = phi <2 x i64> [ zeroinitializer, %29 ], [ %40, %31 ]
  %35 = getelementptr inbounds nuw i64, ptr %4, i64 %32
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %37 = load <2 x i64>, ptr %35, align 8, !tbaa !13
  %38 = load <2 x i64>, ptr %36, align 8, !tbaa !13
  %39 = add <2 x i64> %37, %33
  %40 = add <2 x i64> %38, %34
  %41 = add nuw i64 %32, 4
  %42 = icmp eq i64 %41, %30
  br i1 %42, label %43, label %31, !llvm.loop !15

43:                                               ; preds = %31
  %44 = add <2 x i64> %40, %39
  %45 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %44)
  %46 = icmp eq i64 %30, %27
  br i1 %46, label %58, label %47

47:                                               ; preds = %26, %43
  %48 = phi i64 [ 0, %26 ], [ %30, %43 ]
  %49 = phi i64 [ 0, %26 ], [ %45, %43 ]
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %56, %50 ], [ %48, %47 ]
  %52 = phi i64 [ %55, %50 ], [ %49, %47 ]
  %53 = getelementptr inbounds nuw i64, ptr %4, i64 %51
  %54 = load i64, ptr %53, align 8, !tbaa !13
  %55 = add i64 %54, %52
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %27
  br i1 %57, label %58, label %50, !llvm.loop !19

58:                                               ; preds = %50, %43, %9
  %59 = phi i64 [ 0, %9 ], [ %45, %43 ], [ %55, %50 ]
  %60 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %61 = zext i32 %60 to i64
  %62 = udiv i64 %59, %61
  call void @llvm.lifetime.start.p0(i64 4864, ptr nonnull %20) #17
  %63 = icmp eq i32 %23, 0
  br i1 %63, label %676, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <4 x i32> splat (i32 1), ptr %10, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %65, align 16, !tbaa !5
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %67 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <4 x i32> splat (i32 1), ptr %66, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %67, align 16, !tbaa !5
  %68 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %69 = getelementptr inbounds nuw i8, ptr %10, i64 80
  store <4 x i32> splat (i32 1), ptr %68, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %69, align 16, !tbaa !5
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %71 = getelementptr inbounds nuw i8, ptr %10, i64 112
  store <4 x i32> splat (i32 1), ptr %70, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %71, align 16, !tbaa !5
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %73 = getelementptr inbounds nuw i8, ptr %10, i64 144
  store <4 x i32> splat (i32 1), ptr %72, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %73, align 16, !tbaa !5
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %75 = getelementptr inbounds nuw i8, ptr %10, i64 176
  store <4 x i32> splat (i32 1), ptr %74, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %75, align 16, !tbaa !5
  %76 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %77 = getelementptr inbounds nuw i8, ptr %10, i64 208
  store <4 x i32> splat (i32 1), ptr %76, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %77, align 16, !tbaa !5
  %78 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %79 = getelementptr inbounds nuw i8, ptr %10, i64 240
  store <4 x i32> splat (i32 1), ptr %78, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %79, align 16, !tbaa !5
  %80 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %81 = getelementptr inbounds nuw i8, ptr %10, i64 272
  store <4 x i32> splat (i32 1), ptr %80, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %81, align 16, !tbaa !5
  %82 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %83 = getelementptr inbounds nuw i8, ptr %10, i64 304
  store <4 x i32> splat (i32 1), ptr %82, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %83, align 16, !tbaa !5
  %84 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %85 = getelementptr inbounds nuw i8, ptr %10, i64 336
  store <4 x i32> splat (i32 1), ptr %84, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %85, align 16, !tbaa !5
  %86 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %87 = getelementptr inbounds nuw i8, ptr %10, i64 368
  store <4 x i32> splat (i32 1), ptr %86, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %87, align 16, !tbaa !5
  %88 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %89 = getelementptr inbounds nuw i8, ptr %10, i64 400
  store <4 x i32> splat (i32 1), ptr %88, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %89, align 16, !tbaa !5
  %90 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %91 = getelementptr inbounds nuw i8, ptr %10, i64 432
  store <4 x i32> splat (i32 1), ptr %90, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %91, align 16, !tbaa !5
  %92 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %93 = getelementptr inbounds nuw i8, ptr %10, i64 464
  store <4 x i32> splat (i32 1), ptr %92, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %93, align 16, !tbaa !5
  %94 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %95 = getelementptr inbounds nuw i8, ptr %10, i64 496
  store <4 x i32> splat (i32 1), ptr %94, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %95, align 16, !tbaa !5
  %96 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %97 = getelementptr inbounds nuw i8, ptr %10, i64 528
  store <4 x i32> splat (i32 1), ptr %96, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %97, align 16, !tbaa !5
  %98 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %99 = getelementptr inbounds nuw i8, ptr %10, i64 560
  store <4 x i32> splat (i32 1), ptr %98, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %99, align 16, !tbaa !5
  %100 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %101 = getelementptr inbounds nuw i8, ptr %10, i64 592
  store <4 x i32> splat (i32 1), ptr %100, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %101, align 16, !tbaa !5
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %103 = getelementptr inbounds nuw i8, ptr %10, i64 624
  store <4 x i32> splat (i32 1), ptr %102, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %103, align 16, !tbaa !5
  %104 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %105 = getelementptr inbounds nuw i8, ptr %10, i64 656
  store <4 x i32> splat (i32 1), ptr %104, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %105, align 16, !tbaa !5
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %107 = getelementptr inbounds nuw i8, ptr %10, i64 688
  store <4 x i32> splat (i32 1), ptr %106, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %107, align 16, !tbaa !5
  %108 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %109 = getelementptr inbounds nuw i8, ptr %10, i64 720
  store <4 x i32> splat (i32 1), ptr %108, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %109, align 16, !tbaa !5
  %110 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 752
  store <4 x i32> splat (i32 1), ptr %110, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %111, align 16, !tbaa !5
  %112 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %113 = getelementptr inbounds nuw i8, ptr %10, i64 784
  store <4 x i32> splat (i32 1), ptr %112, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %113, align 16, !tbaa !5
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 816
  store <4 x i32> splat (i32 1), ptr %114, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %115, align 16, !tbaa !5
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %117 = getelementptr inbounds nuw i8, ptr %10, i64 848
  store <4 x i32> splat (i32 1), ptr %116, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %117, align 16, !tbaa !5
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %119 = getelementptr inbounds nuw i8, ptr %10, i64 880
  store <4 x i32> splat (i32 1), ptr %118, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %119, align 16, !tbaa !5
  %120 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %121 = getelementptr inbounds nuw i8, ptr %10, i64 912
  store <4 x i32> splat (i32 1), ptr %120, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %121, align 16, !tbaa !5
  %122 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %123 = getelementptr inbounds nuw i8, ptr %10, i64 944
  store <4 x i32> splat (i32 1), ptr %122, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %123, align 16, !tbaa !5
  %124 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %125 = getelementptr inbounds nuw i8, ptr %10, i64 976
  store <4 x i32> splat (i32 1), ptr %124, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %125, align 16, !tbaa !5
  %126 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %127 = getelementptr inbounds nuw i8, ptr %10, i64 1008
  store <4 x i32> splat (i32 1), ptr %126, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %127, align 16, !tbaa !5
  %128 = sub nuw nsw i32 32, %23
  %129 = zext nneg i32 %128 to i64
  %130 = icmp ult i32 %22, 128
  br i1 %130, label %141, label %131

131:                                              ; preds = %64
  %132 = and i64 %129, 56
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %137, %133 ]
  %135 = getelementptr inbounds nuw [31 x i32], ptr %12, i64 0, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 16
  store <4 x i32> splat (i32 1), ptr %135, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %136, align 16, !tbaa !5
  %137 = add nuw i64 %134, 8
  %138 = icmp eq i64 %137, %132
  br i1 %138, label %139, label %133, !llvm.loop !20

139:                                              ; preds = %133
  %140 = icmp eq i64 %132, %129
  br i1 %140, label %148, label %141

141:                                              ; preds = %64, %139
  %142 = phi i64 [ 0, %64 ], [ %132, %139 ]
  br label %143

143:                                              ; preds = %141, %143
  %144 = phi i64 [ %146, %143 ], [ %142, %141 ]
  %145 = getelementptr inbounds nuw [31 x i32], ptr %12, i64 0, i64 %144
  store i32 1, ptr %145, align 4, !tbaa !5
  %146 = add nuw nsw i64 %144, 1
  %147 = icmp eq i64 %146, %129
  br i1 %147, label %148, label %143, !llvm.loop !21

148:                                              ; preds = %143, %139
  store <4 x i32> splat (i32 1), ptr %14, align 16, !tbaa !5
  %149 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x i32> splat (i32 1), ptr %149, align 16, !tbaa !5
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <4 x i32> splat (i32 1), ptr %150, align 16, !tbaa !5
  %151 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <4 x i32> splat (i32 1), ptr %151, align 16, !tbaa !5
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store <4 x i32> splat (i32 1), ptr %152, align 16, !tbaa !5
  %153 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store <4 x i32> splat (i32 1), ptr %153, align 16, !tbaa !5
  %154 = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <4 x i32> splat (i32 1), ptr %154, align 16, !tbaa !5
  %155 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store <4 x i32> splat (i32 1), ptr %155, align 16, !tbaa !5
  %156 = getelementptr inbounds nuw i8, ptr %14, i64 128
  store <4 x i32> splat (i32 1), ptr %156, align 16, !tbaa !5
  %157 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store <4 x i32> splat (i32 1), ptr %157, align 16, !tbaa !5
  %158 = getelementptr inbounds nuw i8, ptr %14, i64 160
  store <4 x i32> splat (i32 1), ptr %158, align 16, !tbaa !5
  %159 = getelementptr inbounds nuw i8, ptr %14, i64 176
  store <4 x i32> splat (i32 1), ptr %159, align 16, !tbaa !5
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 192
  store <4 x i32> splat (i32 1), ptr %160, align 16, !tbaa !5
  %161 = getelementptr inbounds nuw i8, ptr %14, i64 208
  store i32 1, ptr %161, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %16, align 16, !tbaa !5
  %162 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <4 x i32> splat (i32 1), ptr %162, align 16, !tbaa !5
  %163 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <4 x i32> splat (i32 1), ptr %163, align 16, !tbaa !5
  %164 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store <4 x i32> splat (i32 1), ptr %164, align 16, !tbaa !5
  %165 = getelementptr inbounds nuw i8, ptr %16, i64 64
  store <4 x i32> splat (i32 1), ptr %165, align 16, !tbaa !5
  %166 = getelementptr inbounds nuw i8, ptr %16, i64 80
  store <4 x i32> splat (i32 1), ptr %166, align 16, !tbaa !5
  %167 = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <4 x i32> splat (i32 1), ptr %167, align 16, !tbaa !5
  %168 = getelementptr inbounds nuw i8, ptr %16, i64 112
  store <4 x i32> splat (i32 1), ptr %168, align 16, !tbaa !5
  %169 = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <4 x i32> splat (i32 1), ptr %169, align 16, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %18, i8 0, i64 4096, i1 false)
  %170 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 1, ptr %170, align 16, !tbaa !5
  %171 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %171, align 16, !tbaa !5
  %172 = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 1, ptr %172, align 4, !tbaa !5
  %173 = icmp eq i32 %2, 0
  %174 = select i1 %173, i32 3, i32 %2
  call void @ZSTD_getParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_parameters) align 4 %19, i32 noundef %174, i64 noundef %62, i64 noundef %7) #17
  %175 = call ptr @ZSTD_createCDict_advanced(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %19, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #17
  %176 = call ptr @ZSTD_createCCtx() #17
  %177 = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #18
  %178 = icmp ne ptr %175, null
  %179 = icmp ne ptr %176, null
  %180 = select i1 %178, i1 %179, i1 false
  %181 = icmp ne ptr %177, null
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %148
  br i1 %25, label %472, label %184

184:                                              ; preds = %183
  %185 = load i32, ptr %19, align 8, !tbaa !22
  %186 = shl nuw i32 1, %185
  %187 = call i32 @llvm.smin.i32(i32 %186, i32 131072)
  %188 = sext i32 %187 to i64
  %189 = icmp eq i32 %8, 0
  %190 = icmp ugt i32 %8, 2
  %191 = zext i32 %5 to i64
  br label %195

192:                                              ; preds = %148
  %193 = icmp eq i32 %8, 0
  br i1 %193, label %676, label %194

194:                                              ; preds = %192
  call void @ZDICT_analyzeEntropy.cold.1() #20
  br label %676

195:                                              ; preds = %184, %467
  %196 = phi i64 [ 0, %184 ], [ %470, %467 ]
  %197 = phi i64 [ 0, %184 ], [ %469, %467 ]
  %198 = getelementptr inbounds nuw i64, ptr %4, i64 %196
  %199 = load i64, ptr %198, align 8, !tbaa !13
  %200 = call i64 @llvm.umin.i64(i64 %199, i64 %188)
  %201 = call i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %176, ptr noundef %175) #17
  %202 = icmp ult i64 %201, -119
  br i1 %202, label %205, label %203

203:                                              ; preds = %195
  br i1 %189, label %467, label %204

204:                                              ; preds = %203
  call void @ZDICT_analyzeEntropy.cold.2() #20
  br label %467

205:                                              ; preds = %195
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 %197
  %207 = call i64 @ZSTD_compressBlock_deprecated(ptr noundef %176, ptr noundef %177, i64 noundef 131072, ptr noundef %206, i64 noundef %200) #17
  %208 = icmp ult i64 %207, -119
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  br i1 %190, label %210, label %467

210:                                              ; preds = %209
  call void @ZDICT_analyzeEntropy.cold.3(i64 %200) #20
  br label %467

211:                                              ; preds = %205
  %212 = icmp eq i64 %207, 0
  br i1 %212, label %467, label %213

213:                                              ; preds = %211
  %214 = call ptr @ZSTD_getSeqStore(ptr noundef %176) #17
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !25
  %217 = getelementptr inbounds nuw i8, ptr %214, i64 24
  %218 = load ptr, ptr %217, align 8, !tbaa !30
  %219 = icmp ult ptr %216, %218
  br i1 %219, label %220, label %268

220:                                              ; preds = %213
  %221 = ptrtoint ptr %218 to i64
  %222 = ptrtoint ptr %216 to i64
  %223 = sub i64 %221, %222
  %224 = and i64 %223, 3
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %220, %226
  %227 = phi ptr [ %234, %226 ], [ %216, %220 ]
  %228 = phi i64 [ %235, %226 ], [ 0, %220 ]
  %229 = load i8, ptr %227, align 1, !tbaa !31
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds nuw i32, ptr %10, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !5
  %233 = add i32 %232, 1
  store i32 %233, ptr %231, align 4, !tbaa !5
  %234 = getelementptr inbounds nuw i8, ptr %227, i64 1
  %235 = add i64 %228, 1
  %236 = icmp eq i64 %235, %224
  br i1 %236, label %237, label %226, !llvm.loop !32

237:                                              ; preds = %226, %220
  %238 = phi ptr [ %216, %220 ], [ %234, %226 ]
  %239 = sub i64 %222, %221
  %240 = icmp ugt i64 %239, -4
  br i1 %240, label %268, label %241

241:                                              ; preds = %237, %241
  %242 = phi ptr [ %266, %241 ], [ %238, %237 ]
  %243 = load i8, ptr %242, align 1, !tbaa !31
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds nuw i32, ptr %10, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !5
  %247 = add i32 %246, 1
  store i32 %247, ptr %245, align 4, !tbaa !5
  %248 = getelementptr inbounds nuw i8, ptr %242, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !31
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds nuw i32, ptr %10, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !5
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 4, !tbaa !5
  %254 = getelementptr inbounds nuw i8, ptr %242, i64 2
  %255 = load i8, ptr %254, align 1, !tbaa !31
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds nuw i32, ptr %10, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !5
  %259 = add i32 %258, 1
  store i32 %259, ptr %257, align 4, !tbaa !5
  %260 = getelementptr inbounds nuw i8, ptr %242, i64 3
  %261 = load i8, ptr %260, align 1, !tbaa !31
  %262 = zext i8 %261 to i64
  %263 = getelementptr inbounds nuw i32, ptr %10, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !5
  %265 = add i32 %264, 1
  store i32 %265, ptr %263, align 4, !tbaa !5
  %266 = getelementptr inbounds nuw i8, ptr %242, i64 4
  %267 = icmp eq ptr %266, %218
  br i1 %267, label %268, label %241, !llvm.loop !34

268:                                              ; preds = %237, %241, %213
  %269 = getelementptr inbounds nuw i8, ptr %214, i64 8
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = load ptr, ptr %214, align 8, !tbaa !36
  %272 = ptrtoint ptr %270 to i64
  %273 = ptrtoint ptr %271 to i64
  %274 = sub i64 %272, %273
  %275 = lshr i64 %274, 3
  %276 = trunc i64 %275 to i32
  %277 = call i32 @ZSTD_seqToCodes(ptr noundef nonnull %214) #17
  %278 = getelementptr inbounds nuw i8, ptr %214, i64 48
  %279 = load ptr, ptr %278, align 8, !tbaa !37
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %467, label %281

281:                                              ; preds = %268
  %282 = and i64 %275, 4294967295
  %283 = add nsw i64 %282, -1
  %284 = and i64 %275, 3
  %285 = icmp ult i64 %283, 3
  br i1 %285, label %321, label %286

286:                                              ; preds = %281
  %287 = and i64 %275, 4294967292
  %288 = getelementptr inbounds i8, ptr %279, i64 1
  %289 = getelementptr inbounds i8, ptr %279, i64 2
  %290 = getelementptr inbounds i8, ptr %279, i64 3
  br label %291

291:                                              ; preds = %291, %286
  %292 = phi i64 [ 0, %286 ], [ %318, %291 ]
  %293 = phi i64 [ 0, %286 ], [ %319, %291 ]
  %294 = getelementptr inbounds nuw i8, ptr %279, i64 %292
  %295 = load i8, ptr %294, align 1, !tbaa !31
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds nuw i32, ptr %12, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !5
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 4, !tbaa !5
  %300 = getelementptr inbounds i8, ptr %288, i64 %292
  %301 = load i8, ptr %300, align 1, !tbaa !31
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds nuw i32, ptr %12, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !5
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 4, !tbaa !5
  %306 = getelementptr inbounds i8, ptr %289, i64 %292
  %307 = load i8, ptr %306, align 1, !tbaa !31
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds nuw i32, ptr %12, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !5
  %311 = add i32 %310, 1
  store i32 %311, ptr %309, align 4, !tbaa !5
  %312 = getelementptr inbounds i8, ptr %290, i64 %292
  %313 = load i8, ptr %312, align 1, !tbaa !31
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds nuw i32, ptr %12, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !5
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 4, !tbaa !5
  %318 = add nuw nsw i64 %292, 4
  %319 = add i64 %293, 4
  %320 = icmp eq i64 %319, %287
  br i1 %320, label %321, label %291, !llvm.loop !38

321:                                              ; preds = %291, %281
  %322 = phi i64 [ 0, %281 ], [ %318, %291 ]
  %323 = icmp eq i64 %284, 0
  br i1 %323, label %336, label %324

324:                                              ; preds = %321, %324
  %325 = phi i64 [ %333, %324 ], [ %322, %321 ]
  %326 = phi i64 [ %334, %324 ], [ 0, %321 ]
  %327 = getelementptr inbounds nuw i8, ptr %279, i64 %325
  %328 = load i8, ptr %327, align 1, !tbaa !31
  %329 = zext i8 %328 to i64
  %330 = getelementptr inbounds nuw i32, ptr %12, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !5
  %332 = add i32 %331, 1
  store i32 %332, ptr %330, align 4, !tbaa !5
  %333 = add nuw nsw i64 %325, 1
  %334 = add i64 %326, 1
  %335 = icmp eq i64 %334, %284
  br i1 %335, label %336, label %324, !llvm.loop !39

336:                                              ; preds = %324, %321
  %337 = getelementptr inbounds nuw i8, ptr %214, i64 40
  %338 = load ptr, ptr %337, align 8, !tbaa !40
  %339 = and i64 %275, 3
  %340 = icmp ult i64 %283, 3
  br i1 %340, label %376, label %341

341:                                              ; preds = %336
  %342 = and i64 %275, 4294967292
  %343 = getelementptr inbounds i8, ptr %338, i64 1
  %344 = getelementptr inbounds i8, ptr %338, i64 2
  %345 = getelementptr inbounds i8, ptr %338, i64 3
  br label %346

346:                                              ; preds = %346, %341
  %347 = phi i64 [ 0, %341 ], [ %373, %346 ]
  %348 = phi i64 [ 0, %341 ], [ %374, %346 ]
  %349 = getelementptr inbounds nuw i8, ptr %338, i64 %347
  %350 = load i8, ptr %349, align 1, !tbaa !31
  %351 = zext i8 %350 to i64
  %352 = getelementptr inbounds nuw i32, ptr %14, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !5
  %354 = add i32 %353, 1
  store i32 %354, ptr %352, align 4, !tbaa !5
  %355 = getelementptr inbounds i8, ptr %343, i64 %347
  %356 = load i8, ptr %355, align 1, !tbaa !31
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds nuw i32, ptr %14, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !5
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 4, !tbaa !5
  %361 = getelementptr inbounds i8, ptr %344, i64 %347
  %362 = load i8, ptr %361, align 1, !tbaa !31
  %363 = zext i8 %362 to i64
  %364 = getelementptr inbounds nuw i32, ptr %14, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !5
  %366 = add i32 %365, 1
  store i32 %366, ptr %364, align 4, !tbaa !5
  %367 = getelementptr inbounds i8, ptr %345, i64 %347
  %368 = load i8, ptr %367, align 1, !tbaa !31
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds nuw i32, ptr %14, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !5
  %372 = add i32 %371, 1
  store i32 %372, ptr %370, align 4, !tbaa !5
  %373 = add nuw nsw i64 %347, 4
  %374 = add i64 %348, 4
  %375 = icmp eq i64 %374, %342
  br i1 %375, label %376, label %346, !llvm.loop !41

376:                                              ; preds = %346, %336
  %377 = phi i64 [ 0, %336 ], [ %373, %346 ]
  %378 = icmp eq i64 %339, 0
  br i1 %378, label %391, label %379

379:                                              ; preds = %376, %379
  %380 = phi i64 [ %388, %379 ], [ %377, %376 ]
  %381 = phi i64 [ %389, %379 ], [ 0, %376 ]
  %382 = getelementptr inbounds nuw i8, ptr %338, i64 %380
  %383 = load i8, ptr %382, align 1, !tbaa !31
  %384 = zext i8 %383 to i64
  %385 = getelementptr inbounds nuw i32, ptr %14, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !5
  %387 = add i32 %386, 1
  store i32 %387, ptr %385, align 4, !tbaa !5
  %388 = add nuw nsw i64 %380, 1
  %389 = add i64 %381, 1
  %390 = icmp eq i64 %389, %339
  br i1 %390, label %391, label %379, !llvm.loop !42

391:                                              ; preds = %379, %376
  %392 = getelementptr inbounds nuw i8, ptr %214, i64 32
  %393 = load ptr, ptr %392, align 8, !tbaa !43
  %394 = and i64 %275, 3
  %395 = icmp ult i64 %283, 3
  br i1 %395, label %431, label %396

396:                                              ; preds = %391
  %397 = and i64 %275, 4294967292
  %398 = getelementptr inbounds i8, ptr %393, i64 1
  %399 = getelementptr inbounds i8, ptr %393, i64 2
  %400 = getelementptr inbounds i8, ptr %393, i64 3
  br label %401

401:                                              ; preds = %401, %396
  %402 = phi i64 [ 0, %396 ], [ %428, %401 ]
  %403 = phi i64 [ 0, %396 ], [ %429, %401 ]
  %404 = getelementptr inbounds nuw i8, ptr %393, i64 %402
  %405 = load i8, ptr %404, align 1, !tbaa !31
  %406 = zext i8 %405 to i64
  %407 = getelementptr inbounds nuw i32, ptr %16, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !5
  %409 = add i32 %408, 1
  store i32 %409, ptr %407, align 4, !tbaa !5
  %410 = getelementptr inbounds i8, ptr %398, i64 %402
  %411 = load i8, ptr %410, align 1, !tbaa !31
  %412 = zext i8 %411 to i64
  %413 = getelementptr inbounds nuw i32, ptr %16, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !5
  %415 = add i32 %414, 1
  store i32 %415, ptr %413, align 4, !tbaa !5
  %416 = getelementptr inbounds i8, ptr %399, i64 %402
  %417 = load i8, ptr %416, align 1, !tbaa !31
  %418 = zext i8 %417 to i64
  %419 = getelementptr inbounds nuw i32, ptr %16, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !5
  %421 = add i32 %420, 1
  store i32 %421, ptr %419, align 4, !tbaa !5
  %422 = getelementptr inbounds i8, ptr %400, i64 %402
  %423 = load i8, ptr %422, align 1, !tbaa !31
  %424 = zext i8 %423 to i64
  %425 = getelementptr inbounds nuw i32, ptr %16, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !5
  %427 = add i32 %426, 1
  store i32 %427, ptr %425, align 4, !tbaa !5
  %428 = add nuw nsw i64 %402, 4
  %429 = add i64 %403, 4
  %430 = icmp eq i64 %429, %397
  br i1 %430, label %431, label %401, !llvm.loop !44

431:                                              ; preds = %401, %391
  %432 = phi i64 [ 0, %391 ], [ %428, %401 ]
  %433 = icmp eq i64 %394, 0
  br i1 %433, label %446, label %434

434:                                              ; preds = %431, %434
  %435 = phi i64 [ %443, %434 ], [ %432, %431 ]
  %436 = phi i64 [ %444, %434 ], [ 0, %431 ]
  %437 = getelementptr inbounds nuw i8, ptr %393, i64 %435
  %438 = load i8, ptr %437, align 1, !tbaa !31
  %439 = zext i8 %438 to i64
  %440 = getelementptr inbounds nuw i32, ptr %16, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !5
  %442 = add i32 %441, 1
  store i32 %442, ptr %440, align 4, !tbaa !5
  %443 = add nuw nsw i64 %435, 1
  %444 = add i64 %436, 1
  %445 = icmp eq i64 %444, %394
  br i1 %445, label %446, label %434, !llvm.loop !45

446:                                              ; preds = %434, %431
  %447 = icmp eq i32 %276, 1
  br i1 %447, label %467, label %448

448:                                              ; preds = %446
  %449 = load ptr, ptr %214, align 8, !tbaa !36
  %450 = load i32, ptr %449, align 4, !tbaa !46
  %451 = add i32 %450, -3
  %452 = getelementptr inbounds nuw i8, ptr %449, i64 8
  %453 = load i32, ptr %452, align 4, !tbaa !46
  %454 = add i32 %453, -3
  %455 = icmp ugt i32 %451, 1023
  %456 = select i1 %455, i32 0, i32 %451
  %457 = icmp ugt i32 %454, 1023
  %458 = select i1 %457, i32 0, i32 %454
  %459 = zext i32 %456 to i64
  %460 = getelementptr inbounds nuw i32, ptr %18, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !5
  %462 = add i32 %461, 3
  store i32 %462, ptr %460, align 4, !tbaa !5
  %463 = zext i32 %458 to i64
  %464 = getelementptr inbounds nuw i32, ptr %18, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !5
  %466 = add i32 %465, 1
  store i32 %466, ptr %464, align 4, !tbaa !5
  br label %467

467:                                              ; preds = %210, %204, %203, %209, %211, %268, %446, %448
  %468 = load i64, ptr %198, align 8, !tbaa !13
  %469 = add i64 %468, %197
  %470 = add nuw nsw i64 %196, 1
  %471 = icmp eq i64 %470, %191
  br i1 %471, label %472, label %195, !llvm.loop !49

472:                                              ; preds = %467, %183
  %473 = icmp ugt i32 %8, 3
  br i1 %473, label %474, label %475

474:                                              ; preds = %472
  call void @ZDICT_analyzeEntropy.cold.4(ptr %12, i64 %129) #20
  br label %475

475:                                              ; preds = %474, %472
  %476 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #17
  %477 = icmp ult i64 %476, -119
  br i1 %477, label %481, label %478

478:                                              ; preds = %475
  %479 = icmp eq i32 %8, 0
  br i1 %479, label %676, label %480

480:                                              ; preds = %478
  call void @ZDICT_analyzeEntropy.cold.5() #20
  br label %676

481:                                              ; preds = %475
  %482 = icmp eq i64 %476, 8
  br i1 %482, label %483, label %559

483:                                              ; preds = %481
  %484 = icmp ugt i32 %8, 1
  br i1 %484, label %485, label %486

485:                                              ; preds = %483
  call void @ZDICT_analyzeEntropy.cold.6() #20
  br label %486

486:                                              ; preds = %485, %483
  %487 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %488 = getelementptr inbounds nuw i8, ptr %10, i64 20
  store <4 x i32> splat (i32 2), ptr %487, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %488, align 4, !tbaa !5
  %489 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %490 = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <4 x i32> splat (i32 2), ptr %489, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %490, align 4, !tbaa !5
  %491 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %492 = getelementptr inbounds nuw i8, ptr %10, i64 84
  store <4 x i32> splat (i32 2), ptr %491, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %492, align 4, !tbaa !5
  %493 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %494 = getelementptr inbounds nuw i8, ptr %10, i64 116
  store <4 x i32> splat (i32 2), ptr %493, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %494, align 4, !tbaa !5
  %495 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %496 = getelementptr inbounds nuw i8, ptr %10, i64 148
  store <4 x i32> splat (i32 2), ptr %495, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %496, align 4, !tbaa !5
  %497 = getelementptr inbounds nuw i8, ptr %10, i64 164
  %498 = getelementptr inbounds nuw i8, ptr %10, i64 180
  store <4 x i32> splat (i32 2), ptr %497, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %498, align 4, !tbaa !5
  %499 = getelementptr inbounds nuw i8, ptr %10, i64 196
  %500 = getelementptr inbounds nuw i8, ptr %10, i64 212
  store <4 x i32> splat (i32 2), ptr %499, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %500, align 4, !tbaa !5
  %501 = getelementptr inbounds nuw i8, ptr %10, i64 228
  %502 = getelementptr inbounds nuw i8, ptr %10, i64 244
  store <4 x i32> splat (i32 2), ptr %501, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %502, align 4, !tbaa !5
  %503 = getelementptr inbounds nuw i8, ptr %10, i64 260
  %504 = getelementptr inbounds nuw i8, ptr %10, i64 276
  store <4 x i32> splat (i32 2), ptr %503, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %504, align 4, !tbaa !5
  %505 = getelementptr inbounds nuw i8, ptr %10, i64 292
  %506 = getelementptr inbounds nuw i8, ptr %10, i64 308
  store <4 x i32> splat (i32 2), ptr %505, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %506, align 4, !tbaa !5
  %507 = getelementptr inbounds nuw i8, ptr %10, i64 324
  %508 = getelementptr inbounds nuw i8, ptr %10, i64 340
  store <4 x i32> splat (i32 2), ptr %507, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %508, align 4, !tbaa !5
  %509 = getelementptr inbounds nuw i8, ptr %10, i64 356
  %510 = getelementptr inbounds nuw i8, ptr %10, i64 372
  store <4 x i32> splat (i32 2), ptr %509, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %510, align 4, !tbaa !5
  %511 = getelementptr inbounds nuw i8, ptr %10, i64 388
  %512 = getelementptr inbounds nuw i8, ptr %10, i64 404
  store <4 x i32> splat (i32 2), ptr %511, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %512, align 4, !tbaa !5
  %513 = getelementptr inbounds nuw i8, ptr %10, i64 420
  %514 = getelementptr inbounds nuw i8, ptr %10, i64 436
  store <4 x i32> splat (i32 2), ptr %513, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %514, align 4, !tbaa !5
  %515 = getelementptr inbounds nuw i8, ptr %10, i64 452
  %516 = getelementptr inbounds nuw i8, ptr %10, i64 468
  store <4 x i32> splat (i32 2), ptr %515, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %516, align 4, !tbaa !5
  %517 = getelementptr inbounds nuw i8, ptr %10, i64 484
  %518 = getelementptr inbounds nuw i8, ptr %10, i64 500
  store <4 x i32> splat (i32 2), ptr %517, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %518, align 4, !tbaa !5
  %519 = getelementptr inbounds nuw i8, ptr %10, i64 516
  %520 = getelementptr inbounds nuw i8, ptr %10, i64 532
  store <4 x i32> splat (i32 2), ptr %519, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %520, align 4, !tbaa !5
  %521 = getelementptr inbounds nuw i8, ptr %10, i64 548
  %522 = getelementptr inbounds nuw i8, ptr %10, i64 564
  store <4 x i32> splat (i32 2), ptr %521, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %522, align 4, !tbaa !5
  %523 = getelementptr inbounds nuw i8, ptr %10, i64 580
  %524 = getelementptr inbounds nuw i8, ptr %10, i64 596
  store <4 x i32> splat (i32 2), ptr %523, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %524, align 4, !tbaa !5
  %525 = getelementptr inbounds nuw i8, ptr %10, i64 612
  %526 = getelementptr inbounds nuw i8, ptr %10, i64 628
  store <4 x i32> splat (i32 2), ptr %525, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %526, align 4, !tbaa !5
  %527 = getelementptr inbounds nuw i8, ptr %10, i64 644
  %528 = getelementptr inbounds nuw i8, ptr %10, i64 660
  store <4 x i32> splat (i32 2), ptr %527, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %528, align 4, !tbaa !5
  %529 = getelementptr inbounds nuw i8, ptr %10, i64 676
  %530 = getelementptr inbounds nuw i8, ptr %10, i64 692
  store <4 x i32> splat (i32 2), ptr %529, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %530, align 4, !tbaa !5
  %531 = getelementptr inbounds nuw i8, ptr %10, i64 708
  %532 = getelementptr inbounds nuw i8, ptr %10, i64 724
  store <4 x i32> splat (i32 2), ptr %531, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %532, align 4, !tbaa !5
  %533 = getelementptr inbounds nuw i8, ptr %10, i64 740
  %534 = getelementptr inbounds nuw i8, ptr %10, i64 756
  store <4 x i32> splat (i32 2), ptr %533, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %534, align 4, !tbaa !5
  %535 = getelementptr inbounds nuw i8, ptr %10, i64 772
  %536 = getelementptr inbounds nuw i8, ptr %10, i64 788
  store <4 x i32> splat (i32 2), ptr %535, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %536, align 4, !tbaa !5
  %537 = getelementptr inbounds nuw i8, ptr %10, i64 804
  %538 = getelementptr inbounds nuw i8, ptr %10, i64 820
  store <4 x i32> splat (i32 2), ptr %537, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %538, align 4, !tbaa !5
  %539 = getelementptr inbounds nuw i8, ptr %10, i64 836
  %540 = getelementptr inbounds nuw i8, ptr %10, i64 852
  store <4 x i32> splat (i32 2), ptr %539, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %540, align 4, !tbaa !5
  %541 = getelementptr inbounds nuw i8, ptr %10, i64 868
  %542 = getelementptr inbounds nuw i8, ptr %10, i64 884
  store <4 x i32> splat (i32 2), ptr %541, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %542, align 4, !tbaa !5
  %543 = getelementptr inbounds nuw i8, ptr %10, i64 900
  %544 = getelementptr inbounds nuw i8, ptr %10, i64 916
  store <4 x i32> splat (i32 2), ptr %543, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %544, align 4, !tbaa !5
  %545 = getelementptr inbounds nuw i8, ptr %10, i64 932
  %546 = getelementptr inbounds nuw i8, ptr %10, i64 948
  store <4 x i32> splat (i32 2), ptr %545, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %546, align 4, !tbaa !5
  %547 = getelementptr inbounds nuw i8, ptr %10, i64 964
  %548 = getelementptr inbounds nuw i8, ptr %10, i64 980
  store <4 x i32> splat (i32 2), ptr %547, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %548, align 4, !tbaa !5
  %549 = getelementptr inbounds nuw i8, ptr %10, i64 996
  store i32 2, ptr %549, align 4, !tbaa !5
  %550 = getelementptr inbounds nuw i8, ptr %10, i64 1000
  store i32 2, ptr %550, align 8, !tbaa !5
  %551 = getelementptr inbounds nuw i8, ptr %10, i64 1004
  store i32 2, ptr %551, align 4, !tbaa !5
  %552 = getelementptr inbounds nuw i8, ptr %10, i64 1008
  store i32 2, ptr %552, align 16, !tbaa !5
  %553 = getelementptr inbounds nuw i8, ptr %10, i64 1012
  store i32 2, ptr %553, align 4, !tbaa !5
  %554 = getelementptr inbounds nuw i8, ptr %10, i64 1016
  store i32 2, ptr %554, align 8, !tbaa !5
  %555 = getelementptr inbounds nuw i8, ptr %10, i64 1020
  store i32 2, ptr %555, align 4, !tbaa !5
  store i32 4, ptr %10, align 16, !tbaa !5
  %556 = getelementptr inbounds nuw i8, ptr %10, i64 1012
  store i32 1, ptr %556, align 4, !tbaa !5
  %557 = getelementptr inbounds nuw i8, ptr %10, i64 1016
  store i32 1, ptr %557, align 8, !tbaa !5
  %558 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #17
  br label %559

559:                                              ; preds = %481, %486
  %560 = phi i64 [ %558, %486 ], [ %476, %481 ]
  %561 = icmp ult i32 %22, 128
  br i1 %561, label %580, label %562

562:                                              ; preds = %559
  %563 = and i64 %129, 56
  br label %564

564:                                              ; preds = %564, %562
  %565 = phi i64 [ 0, %562 ], [ %574, %564 ]
  %566 = phi <4 x i32> [ zeroinitializer, %562 ], [ %572, %564 ]
  %567 = phi <4 x i32> [ zeroinitializer, %562 ], [ %573, %564 ]
  %568 = getelementptr inbounds nuw [31 x i32], ptr %12, i64 0, i64 %565
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 16
  %570 = load <4 x i32>, ptr %568, align 16, !tbaa !5
  %571 = load <4 x i32>, ptr %569, align 16, !tbaa !5
  %572 = add <4 x i32> %570, %566
  %573 = add <4 x i32> %571, %567
  %574 = add nuw i64 %565, 8
  %575 = icmp eq i64 %574, %563
  br i1 %575, label %576, label %564, !llvm.loop !50

576:                                              ; preds = %564
  %577 = add <4 x i32> %573, %572
  %578 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %577)
  %579 = icmp eq i64 %563, %129
  br i1 %579, label %591, label %580

580:                                              ; preds = %559, %576
  %581 = phi i64 [ 0, %559 ], [ %563, %576 ]
  %582 = phi i32 [ 0, %559 ], [ %578, %576 ]
  br label %583

583:                                              ; preds = %580, %583
  %584 = phi i64 [ %589, %583 ], [ %581, %580 ]
  %585 = phi i32 [ %588, %583 ], [ %582, %580 ]
  %586 = getelementptr inbounds nuw [31 x i32], ptr %12, i64 0, i64 %584
  %587 = load i32, ptr %586, align 4, !tbaa !5
  %588 = add i32 %587, %585
  %589 = add nuw nsw i64 %584, 1
  %590 = icmp eq i64 %589, %129
  br i1 %590, label %591, label %583, !llvm.loop !51

591:                                              ; preds = %583, %576
  %592 = phi i32 [ %578, %576 ], [ %588, %583 ]
  %593 = trunc i64 %560 to i32
  %594 = zext i32 %592 to i64
  %595 = call i64 @FSE_normalizeCount(ptr noundef nonnull %13, i32 noundef 8, ptr noundef nonnull %12, i64 noundef %594, i32 noundef %24, i32 noundef 1) #17
  %596 = icmp ult i64 %595, -119
  br i1 %596, label %600, label %597

597:                                              ; preds = %591
  %598 = icmp eq i32 %8, 0
  br i1 %598, label %676, label %599

599:                                              ; preds = %597
  call void @ZDICT_analyzeEntropy.cold.7() #20
  br label %676

600:                                              ; preds = %591
  %601 = load <32 x i32>, ptr %14, align 16, !tbaa !5
  %602 = load <20 x i32>, ptr %156, align 16, !tbaa !5
  %603 = load i32, ptr %161, align 16, !tbaa !5
  %604 = shufflevector <20 x i32> %602, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %605 = add <32 x i32> %601, %604
  %606 = shufflevector <32 x i32> %605, <32 x i32> %601, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %607 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %606)
  %608 = add i32 %607, %603
  %609 = trunc i64 %595 to i32
  %610 = zext i32 %608 to i64
  %611 = call i64 @FSE_normalizeCount(ptr noundef nonnull %15, i32 noundef 9, ptr noundef nonnull %14, i64 noundef %610, i32 noundef 52, i32 noundef 1) #17
  %612 = icmp ult i64 %611, -119
  br i1 %612, label %616, label %613

613:                                              ; preds = %600
  %614 = icmp eq i32 %8, 0
  br i1 %614, label %676, label %615

615:                                              ; preds = %613
  call void @ZDICT_analyzeEntropy.cold.8() #20
  br label %676

616:                                              ; preds = %600
  %617 = load <32 x i32>, ptr %16, align 16, !tbaa !5
  %618 = load <4 x i32>, ptr %169, align 16, !tbaa !5
  %619 = shufflevector <32 x i32> %617, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %620 = add <4 x i32> %619, %618
  %621 = shufflevector <4 x i32> %620, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %622 = shufflevector <32 x i32> %621, <32 x i32> %617, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %623 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %622)
  %624 = trunc i64 %611 to i32
  %625 = zext i32 %623 to i64
  %626 = call i64 @FSE_normalizeCount(ptr noundef nonnull %17, i32 noundef 9, ptr noundef nonnull %16, i64 noundef %625, i32 noundef 35, i32 noundef 1) #17
  %627 = icmp ult i64 %626, -119
  br i1 %627, label %631, label %628

628:                                              ; preds = %616
  %629 = icmp eq i32 %8, 0
  br i1 %629, label %676, label %630

630:                                              ; preds = %628
  call void @ZDICT_analyzeEntropy.cold.9() #20
  br label %676

631:                                              ; preds = %616
  %632 = trunc i64 %626 to i32
  %633 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %11, i32 noundef 255, i32 noundef %593, ptr noundef nonnull %20, i64 noundef 4864) #17
  %634 = icmp ult i64 %633, -119
  br i1 %634, label %638, label %635

635:                                              ; preds = %631
  %636 = icmp eq i32 %8, 0
  br i1 %636, label %676, label %637

637:                                              ; preds = %635
  call void @ZDICT_analyzeEntropy.cold.10() #20
  br label %676

638:                                              ; preds = %631
  %639 = getelementptr inbounds nuw i8, ptr %0, i64 %633
  %640 = sub i64 %1, %633
  %641 = call i64 @FSE_writeNCount(ptr noundef %639, i64 noundef %640, ptr noundef nonnull %13, i32 noundef 30, i32 noundef %609) #17
  %642 = icmp ult i64 %641, -119
  br i1 %642, label %646, label %643

643:                                              ; preds = %638
  %644 = icmp eq i32 %8, 0
  br i1 %644, label %676, label %645

645:                                              ; preds = %643
  call void @ZDICT_analyzeEntropy.cold.11() #20
  br label %676

646:                                              ; preds = %638
  %647 = getelementptr inbounds nuw i8, ptr %639, i64 %641
  %648 = sub i64 %640, %641
  %649 = call i64 @FSE_writeNCount(ptr noundef %647, i64 noundef %648, ptr noundef nonnull %15, i32 noundef 52, i32 noundef %624) #17
  %650 = icmp ult i64 %649, -119
  br i1 %650, label %654, label %651

651:                                              ; preds = %646
  %652 = icmp eq i32 %8, 0
  br i1 %652, label %676, label %653

653:                                              ; preds = %651
  call void @ZDICT_analyzeEntropy.cold.12() #20
  br label %676

654:                                              ; preds = %646
  %655 = getelementptr inbounds nuw i8, ptr %647, i64 %649
  %656 = sub i64 %648, %649
  %657 = call i64 @FSE_writeNCount(ptr noundef %655, i64 noundef %656, ptr noundef nonnull %17, i32 noundef 35, i32 noundef %632) #17
  %658 = icmp ult i64 %657, -119
  br i1 %658, label %662, label %659

659:                                              ; preds = %654
  %660 = icmp eq i32 %8, 0
  br i1 %660, label %676, label %661

661:                                              ; preds = %659
  call void @ZDICT_analyzeEntropy.cold.13() #20
  br label %676

662:                                              ; preds = %654
  %663 = sub i64 %656, %657
  %664 = icmp ult i64 %663, 12
  br i1 %664, label %665, label %668

665:                                              ; preds = %662
  %666 = icmp eq i32 %8, 0
  br i1 %666, label %676, label %667

667:                                              ; preds = %665
  call void @ZDICT_analyzeEntropy.cold.14() #20
  br label %676

668:                                              ; preds = %662
  %669 = getelementptr inbounds nuw i8, ptr %655, i64 %657
  store i32 1, ptr %669, align 1, !tbaa !5
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 4
  store i32 4, ptr %670, align 1, !tbaa !5
  %671 = getelementptr inbounds nuw i8, ptr %669, i64 8
  store i32 8, ptr %671, align 1, !tbaa !5
  %672 = add nuw i64 %633, 12
  %673 = add i64 %672, %641
  %674 = add i64 %673, %649
  %675 = add i64 %674, %657
  br label %676

676:                                              ; preds = %667, %661, %653, %645, %637, %630, %615, %599, %480, %194, %659, %651, %643, %635, %478, %58, %665, %628, %613, %597, %192, %668
  %677 = phi ptr [ null, %58 ], [ %175, %665 ], [ %175, %667 ], [ %175, %668 ], [ %175, %628 ], [ %175, %630 ], [ %175, %613 ], [ %175, %615 ], [ %175, %597 ], [ %175, %599 ], [ %175, %192 ], [ %175, %194 ], [ %175, %480 ], [ %175, %478 ], [ %175, %637 ], [ %175, %635 ], [ %175, %645 ], [ %175, %643 ], [ %175, %653 ], [ %175, %651 ], [ %175, %661 ], [ %175, %659 ]
  %678 = phi ptr [ null, %58 ], [ %176, %665 ], [ %176, %667 ], [ %176, %668 ], [ %176, %628 ], [ %176, %630 ], [ %176, %613 ], [ %176, %615 ], [ %176, %597 ], [ %176, %599 ], [ %176, %192 ], [ %176, %194 ], [ %176, %480 ], [ %176, %478 ], [ %176, %637 ], [ %176, %635 ], [ %176, %645 ], [ %176, %643 ], [ %176, %653 ], [ %176, %651 ], [ %176, %661 ], [ %176, %659 ]
  %679 = phi ptr [ null, %58 ], [ %177, %665 ], [ %177, %667 ], [ %177, %668 ], [ %177, %628 ], [ %177, %630 ], [ %177, %613 ], [ %177, %615 ], [ %177, %597 ], [ %177, %599 ], [ %177, %192 ], [ %177, %194 ], [ %177, %480 ], [ %177, %478 ], [ %177, %637 ], [ %177, %635 ], [ %177, %645 ], [ %177, %643 ], [ %177, %653 ], [ %177, %651 ], [ %177, %661 ], [ %177, %659 ]
  %680 = phi i64 [ -34, %58 ], [ -70, %665 ], [ -70, %667 ], [ %675, %668 ], [ %626, %628 ], [ %626, %630 ], [ %611, %613 ], [ %611, %615 ], [ %595, %597 ], [ %595, %599 ], [ -64, %192 ], [ -64, %194 ], [ %476, %480 ], [ %476, %478 ], [ %633, %637 ], [ %633, %635 ], [ %641, %645 ], [ %641, %643 ], [ %649, %653 ], [ %649, %651 ], [ %657, %661 ], [ %657, %659 ]
  %681 = call i64 @ZSTD_freeCDict(ptr noundef %677) #17
  %682 = call i64 @ZSTD_freeCCtx(ptr noundef %678) #17
  call void @free(ptr noundef %679) #17
  call void @llvm.lifetime.end.p0(i64 4864, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #17
  ret i64 %680
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer_legacy(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef readonly byval(%struct.ZDICT_legacy_params_t) align 8 captures(none) %5) local_unnamed_addr #1 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca [64 x i32], align 16
  %11 = alloca [64 x i32], align 16
  %12 = alloca %struct.ZDICT_params_t, align 8
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %1279, label %14

14:                                               ; preds = %6
  %15 = zext i32 %4 to i64
  %16 = icmp ult i32 %4, 4
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = and i64 %15, 4294967292
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %29, %19 ]
  %21 = phi <2 x i64> [ zeroinitializer, %17 ], [ %27, %19 ]
  %22 = phi <2 x i64> [ zeroinitializer, %17 ], [ %28, %19 ]
  %23 = getelementptr inbounds nuw i64, ptr %3, i64 %20
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !13
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !13
  %27 = add <2 x i64> %25, %21
  %28 = add <2 x i64> %26, %22
  %29 = add nuw i64 %20, 4
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %19, !llvm.loop !52

31:                                               ; preds = %19
  %32 = add <2 x i64> %28, %27
  %33 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %32)
  %34 = icmp eq i64 %18, %15
  br i1 %34, label %46, label %35

35:                                               ; preds = %14, %31
  %36 = phi i64 [ 0, %14 ], [ %18, %31 ]
  %37 = phi i64 [ 0, %14 ], [ %33, %31 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %44, %38 ], [ %36, %35 ]
  %40 = phi i64 [ %43, %38 ], [ %37, %35 ]
  %41 = getelementptr inbounds nuw i64, ptr %3, i64 %39
  %42 = load i64, ptr %41, align 8, !tbaa !13
  %43 = add i64 %42, %40
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, %15
  br i1 %45, label %46, label %38, !llvm.loop !53

46:                                               ; preds = %38, %31
  %47 = phi i64 [ %33, %31 ], [ %43, %38 ]
  %48 = icmp ult i64 %47, 512
  br i1 %48, label %1279, label %49

49:                                               ; preds = %46
  %50 = add i64 %47, 32
  %51 = tail call noalias ptr @malloc(i64 noundef %50) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %1279, label %53

53:                                               ; preds = %49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %51, ptr align 1 %2, i64 %47, i1 false)
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 %47
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %54, align 1, !tbaa !31
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %55, align 1, !tbaa !31
  %56 = load i32, ptr %5, align 8
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = load <2 x i32>, ptr %57, align 4
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %62 = load i32, ptr %61, align 4
  %63 = lshr i64 %1, 4
  %64 = trunc i64 %63 to i32
  %65 = tail call i32 @llvm.umax.i32(i32 %4, i32 %64)
  %66 = tail call i32 @llvm.umax.i32(i32 %65, i32 10000)
  %67 = zext i32 %66 to i64
  %68 = mul nuw nsw i64 %67, 12
  %69 = tail call noalias ptr @malloc(i64 noundef %68) #18
  %70 = icmp ult i32 %4, 4
  br i1 %70, label %89, label %71

71:                                               ; preds = %53
  %72 = and i64 %15, 4294967292
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i64 [ 0, %71 ], [ %83, %73 ]
  %75 = phi <2 x i64> [ zeroinitializer, %71 ], [ %81, %73 ]
  %76 = phi <2 x i64> [ zeroinitializer, %71 ], [ %82, %73 ]
  %77 = getelementptr inbounds nuw i64, ptr %3, i64 %74
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %79 = load <2 x i64>, ptr %77, align 8, !tbaa !13
  %80 = load <2 x i64>, ptr %78, align 8, !tbaa !13
  %81 = add <2 x i64> %79, %75
  %82 = add <2 x i64> %80, %76
  %83 = add nuw i64 %74, 4
  %84 = icmp eq i64 %83, %72
  br i1 %84, label %85, label %73, !llvm.loop !54

85:                                               ; preds = %73
  %86 = add <2 x i64> %82, %81
  %87 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %86)
  %88 = icmp eq i64 %72, %15
  br i1 %88, label %100, label %89

89:                                               ; preds = %53, %85
  %90 = phi i64 [ 0, %53 ], [ %72, %85 ]
  %91 = phi i64 [ 0, %53 ], [ %87, %85 ]
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi i64 [ %98, %92 ], [ %90, %89 ]
  %94 = phi i64 [ %97, %92 ], [ %91, %89 ]
  %95 = getelementptr inbounds nuw i64, ptr %3, i64 %93
  %96 = load i64, ptr %95, align 8, !tbaa !13
  %97 = add i64 %96, %94
  %98 = add nuw nsw i64 %93, 1
  %99 = icmp eq i64 %98, %15
  br i1 %99, label %100, label %92, !llvm.loop !55

100:                                              ; preds = %92, %85
  %101 = phi i64 [ %87, %85 ], [ %97, %92 ]
  %102 = icmp eq i32 %56, 0
  %103 = select i1 %102, i32 9, i32 %56
  %104 = icmp ugt i32 %103, 30
  %105 = lshr i32 %4, %103
  %106 = select i1 %104, i32 4, i32 %105
  %107 = icmp eq ptr %69, null
  br i1 %107, label %1277, label %108

108:                                              ; preds = %100
  %109 = icmp ult i64 %1, 256
  br i1 %109, label %1275, label %110

110:                                              ; preds = %108
  %111 = icmp ult i64 %101, 512
  br i1 %111, label %1275, label %112

112:                                              ; preds = %110
  store i32 1, ptr %69, align 4, !tbaa !9
  %113 = getelementptr inbounds nuw i8, ptr %69, i64 4
  store i32 0, ptr %113, align 4, !tbaa !11
  %114 = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i32 -1, ptr %114, align 4, !tbaa !12
  %115 = shl i64 %101, 2
  %116 = add i64 %115, 8
  %117 = tail call noalias ptr @malloc(i64 noundef %116) #18
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 4
  %119 = tail call noalias ptr @malloc(i64 noundef %115) #18
  %120 = add i64 %101, 16
  %121 = tail call noalias ptr @malloc(i64 noundef %120) #18
  %122 = icmp ugt i32 %59, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  call void @ZDICT_trainFromBuffer_legacy.cold.1() #20
  br label %124

124:                                              ; preds = %123, %112
  %125 = icmp ne ptr %117, null
  %126 = icmp ne ptr %119, null
  %127 = and i1 %125, %126
  %128 = icmp ne ptr %121, null
  %129 = and i1 %127, %128
  br i1 %129, label %130, label %1054

130:                                              ; preds = %124
  %131 = tail call i32 @llvm.umax.i32(i32 %106, i32 4)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %121, i8 0, i64 %120, i1 false)
  %132 = icmp ugt i64 %101, 2097152000
  %133 = icmp ugt i32 %59, 2
  %134 = and i1 %133, %132
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  call void @ZDICT_trainFromBuffer_legacy.cold.2() #20
  br label %137

136:                                              ; preds = %130
  br i1 %132, label %137, label %147

137:                                              ; preds = %135, %136
  br label %138

138:                                              ; preds = %137, %138
  %139 = phi i64 [ %145, %138 ], [ %101, %137 ]
  %140 = phi i32 [ %141, %138 ], [ %4, %137 ]
  %141 = add i32 %140, -1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds nuw i64, ptr %3, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !13
  %145 = sub i64 %139, %144
  %146 = icmp ugt i64 %145, 2097152000
  br i1 %146, label %138, label %147, !llvm.loop !56

147:                                              ; preds = %138, %136
  %148 = phi i32 [ %4, %136 ], [ %141, %138 ]
  %149 = phi i64 [ %101, %136 ], [ %145, %138 ]
  br i1 %122, label %150, label %151

150:                                              ; preds = %147
  call void @ZDICT_trainFromBuffer_legacy.cold.3(i64 %149, i32 %148) #20
  br label %151

151:                                              ; preds = %150, %147
  %152 = trunc nuw nsw i64 %149 to i32
  %153 = tail call i32 @divsufsort(ptr noundef nonnull %51, ptr noundef nonnull %118, i32 noundef %152, i32 noundef 0) #17
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %1054

155:                                              ; preds = %151
  %156 = getelementptr inbounds nuw i32, ptr %118, i64 %149
  store i32 %152, ptr %156, align 4, !tbaa !5
  store i32 %152, ptr %117, align 4, !tbaa !5
  %157 = icmp eq i64 %149, 0
  br i1 %157, label %206, label %158

158:                                              ; preds = %155
  %159 = and i64 %149, 3
  %160 = icmp ult i64 %149, 4
  br i1 %160, label %192, label %161

161:                                              ; preds = %158
  %162 = and i64 %149, 2147483644
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i64 [ 0, %161 ], [ %189, %163 ]
  %165 = phi i64 [ 0, %161 ], [ %190, %163 ]
  %166 = trunc nuw nsw i64 %164 to i32
  %167 = getelementptr inbounds nuw i32, ptr %118, i64 %164
  %168 = load i32, ptr %167, align 4, !tbaa !5
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw i32, ptr %119, i64 %169
  store i32 %166, ptr %170, align 4, !tbaa !5
  %171 = or disjoint i64 %164, 1
  %172 = trunc nuw nsw i64 %171 to i32
  %173 = getelementptr inbounds nuw i32, ptr %118, i64 %171
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds nuw i32, ptr %119, i64 %175
  store i32 %172, ptr %176, align 4, !tbaa !5
  %177 = or disjoint i64 %164, 2
  %178 = trunc nuw nsw i64 %177 to i32
  %179 = getelementptr inbounds nuw i32, ptr %118, i64 %177
  %180 = load i32, ptr %179, align 4, !tbaa !5
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds nuw i32, ptr %119, i64 %181
  store i32 %178, ptr %182, align 4, !tbaa !5
  %183 = or disjoint i64 %164, 3
  %184 = trunc nuw nsw i64 %183 to i32
  %185 = getelementptr inbounds nuw i32, ptr %118, i64 %183
  %186 = load i32, ptr %185, align 4, !tbaa !5
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds nuw i32, ptr %119, i64 %187
  store i32 %184, ptr %188, align 4, !tbaa !5
  %189 = add nuw nsw i64 %164, 4
  %190 = add i64 %165, 4
  %191 = icmp eq i64 %190, %162
  br i1 %191, label %192, label %163, !llvm.loop !57

192:                                              ; preds = %163, %158
  %193 = phi i64 [ 0, %158 ], [ %189, %163 ]
  %194 = icmp eq i64 %159, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %192, %195
  %196 = phi i64 [ %203, %195 ], [ %193, %192 ]
  %197 = phi i64 [ %204, %195 ], [ 0, %192 ]
  %198 = trunc nuw nsw i64 %196 to i32
  %199 = getelementptr inbounds nuw i32, ptr %118, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !5
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds nuw i32, ptr %119, i64 %201
  store i32 %198, ptr %202, align 4, !tbaa !5
  %203 = add nuw nsw i64 %196, 1
  %204 = add i64 %197, 1
  %205 = icmp eq i64 %204, %159
  br i1 %205, label %206, label %195, !llvm.loop !58

206:                                              ; preds = %192, %195, %155
  br i1 %122, label %207, label %208

207:                                              ; preds = %206
  call void @ZDICT_trainFromBuffer_legacy.cold.4(i1 %133, i32 %131) #20
  br label %208

208:                                              ; preds = %207, %206
  br i1 %157, label %1054, label %209

209:                                              ; preds = %208
  %210 = icmp ugt i32 %59, 3
  %211 = getelementptr inbounds nuw i8, ptr %9, i64 252
  %212 = getelementptr inbounds nuw i8, ptr %10, i64 252
  %213 = getelementptr inbounds nuw i8, ptr %10, i64 248
  %214 = getelementptr inbounds nuw i8, ptr %10, i64 244
  %215 = getelementptr inbounds nuw i8, ptr %10, i64 240
  %216 = getelementptr inbounds nuw i8, ptr %10, i64 236
  %217 = getelementptr inbounds nuw i8, ptr %10, i64 232
  %218 = getelementptr inbounds nuw i8, ptr %10, i64 228
  %219 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %220 = getelementptr inbounds nuw i8, ptr %10, i64 220
  %221 = getelementptr inbounds nuw i8, ptr %10, i64 216
  %222 = getelementptr inbounds nuw i8, ptr %10, i64 212
  %223 = getelementptr inbounds nuw i8, ptr %10, i64 208
  %224 = getelementptr inbounds nuw i8, ptr %10, i64 204
  %225 = getelementptr inbounds nuw i8, ptr %10, i64 200
  %226 = getelementptr inbounds nuw i8, ptr %10, i64 196
  %227 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %228 = getelementptr inbounds nuw i8, ptr %10, i64 188
  %229 = getelementptr inbounds nuw i8, ptr %10, i64 184
  %230 = getelementptr inbounds nuw i8, ptr %10, i64 180
  %231 = getelementptr inbounds nuw i8, ptr %10, i64 176
  %232 = getelementptr inbounds nuw i8, ptr %10, i64 172
  %233 = getelementptr inbounds nuw i8, ptr %10, i64 168
  %234 = getelementptr inbounds nuw i8, ptr %10, i64 164
  %235 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %236 = getelementptr inbounds nuw i8, ptr %10, i64 156
  %237 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %238 = getelementptr inbounds nuw i8, ptr %10, i64 148
  %239 = getelementptr inbounds nuw i8, ptr %10, i64 144
  %240 = getelementptr inbounds nuw i8, ptr %10, i64 140
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %242 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %243 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %244 = getelementptr inbounds nuw i8, ptr %10, i64 124
  %245 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %246 = getelementptr inbounds nuw i8, ptr %10, i64 116
  %247 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %248 = getelementptr inbounds nuw i8, ptr %10, i64 108
  %249 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %250 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %251 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %252 = getelementptr inbounds nuw i8, ptr %10, i64 92
  %253 = getelementptr inbounds nuw i8, ptr %10, i64 88
  %254 = getelementptr inbounds nuw i8, ptr %10, i64 84
  %255 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %256 = getelementptr inbounds nuw i8, ptr %10, i64 76
  %257 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %258 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %259 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %260 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %261 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %262 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %263 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %264 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %265 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %266 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %267 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %268 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %269 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %270 = add i32 %66, -1
  %271 = uitofp nneg i64 %149 to double
  %272 = getelementptr i8, ptr %118, i64 4
  %273 = getelementptr i8, ptr %118, i64 8
  %274 = getelementptr i8, ptr %118, i64 12
  br label %275

275:                                              ; preds = %1047, %209
  %276 = phi i64 [ 0, %209 ], [ %1050, %1047 ]
  %277 = phi i64 [ 0, %209 ], [ %1049, %1047 ]
  %278 = phi i32 [ 0, %209 ], [ %1048, %1047 ]
  %279 = getelementptr inbounds nuw i8, ptr %121, i64 %276
  %280 = load i8, ptr %279, align 1, !tbaa !31
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %275
  %283 = add i32 %278, 1
  br label %1047, !llvm.loop !59

284:                                              ; preds = %275
  %285 = getelementptr inbounds nuw i32, ptr %119, i64 %276
  %286 = load i32, ptr %285, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %11, i8 0, i64 256, i1 false)
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw i32, ptr %118, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !5
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds nuw i8, ptr %121, i64 %290
  store i8 1, ptr %291, align 1, !tbaa !31
  %292 = getelementptr inbounds nuw i8, ptr %51, i64 %290
  %293 = load i16, ptr %292, align 1, !tbaa !60
  %294 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %295 = load i16, ptr %294, align 1, !tbaa !60
  %296 = icmp eq i16 %293, %295
  br i1 %296, label %310, label %297

297:                                              ; preds = %284
  %298 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %299 = load i16, ptr %298, align 1, !tbaa !60
  %300 = getelementptr inbounds nuw i8, ptr %292, i64 3
  %301 = load i16, ptr %300, align 1, !tbaa !60
  %302 = icmp eq i16 %299, %301
  br i1 %302, label %310, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds nuw i8, ptr %292, i64 4
  %305 = load i16, ptr %304, align 1, !tbaa !60
  %306 = icmp eq i16 %295, %305
  br i1 %306, label %310, label %307

307:                                              ; preds = %303
  %308 = load i64, ptr %292, align 1, !tbaa !13
  %309 = ptrtoint ptr %292 to i64
  br label %334

310:                                              ; preds = %303, %297, %284
  %311 = getelementptr inbounds nuw i8, ptr %292, i64 4
  %312 = load i16, ptr %311, align 1, !tbaa !60
  br label %313

313:                                              ; preds = %313, %310
  %314 = phi i32 [ 6, %310 ], [ %319, %313 ]
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds nuw i8, ptr %292, i64 %315
  %317 = load i16, ptr %316, align 1
  %318 = icmp eq i16 %317, %312
  %319 = add i32 %314, 2
  br i1 %318, label %313, label %320, !llvm.loop !61

320:                                              ; preds = %313
  %321 = icmp eq i32 %314, 0
  br i1 %321, label %940, label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds nuw i8, ptr %292, i64 %315
  %324 = getelementptr i8, ptr %323, i64 -1
  %325 = load i8, ptr %324, align 1, !tbaa !31
  %326 = trunc i16 %317 to i8
  %327 = icmp eq i8 %325, %326
  %328 = zext i1 %327 to i32
  %329 = getelementptr i8, ptr %291, i64 1
  %330 = or disjoint i32 %314, %328
  %331 = tail call i32 @llvm.umax.i32(i32 %330, i32 2)
  %332 = add i32 %331, -1
  %333 = zext i32 %332 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %329, i8 1, i64 %333, i1 false), !tbaa !31
  br label %940

334:                                              ; preds = %352, %307
  %335 = phi i32 [ %286, %307 ], [ %336, %352 ]
  %336 = add i32 %335, 1
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds nuw i32, ptr %118, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !5
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds nuw i8, ptr %51, i64 %340
  %342 = load i64, ptr %341, align 1, !tbaa !13
  %343 = icmp eq i64 %342, %308
  br i1 %343, label %344, label %352

344:                                              ; preds = %334, %344
  %345 = phi ptr [ %347, %344 ], [ %292, %334 ]
  %346 = phi ptr [ %348, %344 ], [ %341, %334 ]
  %347 = getelementptr inbounds nuw i8, ptr %345, i64 8
  %348 = getelementptr inbounds nuw i8, ptr %346, i64 8
  %349 = load i64, ptr %348, align 1, !tbaa !13
  %350 = load i64, ptr %347, align 1, !tbaa !13
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %344, label %352

352:                                              ; preds = %344, %334
  %353 = phi ptr [ %292, %334 ], [ %347, %344 ]
  %354 = phi i64 [ %342, %334 ], [ %349, %344 ]
  %355 = phi i64 [ %308, %334 ], [ %350, %344 ]
  %356 = xor i64 %355, %354
  %357 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %356, i1 true)
  %358 = lshr i64 %357, 3
  %359 = getelementptr inbounds nuw i8, ptr %353, i64 %358
  %360 = ptrtoint ptr %359 to i64
  %361 = sub i64 %360, %309
  %362 = icmp ugt i64 %361, 6
  br i1 %362, label %334, label %363, !llvm.loop !62

363:                                              ; preds = %352, %381
  %364 = phi i32 [ %393, %381 ], [ 0, %352 ]
  %365 = phi i32 [ %392, %381 ], [ %286, %352 ]
  %366 = zext i32 %365 to i64
  %367 = getelementptr i32, ptr %117, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !5
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds nuw i8, ptr %51, i64 %369
  %371 = load i64, ptr %370, align 1, !tbaa !13
  %372 = icmp eq i64 %371, %308
  br i1 %372, label %373, label %381

373:                                              ; preds = %363, %373
  %374 = phi ptr [ %376, %373 ], [ %292, %363 ]
  %375 = phi ptr [ %377, %373 ], [ %370, %363 ]
  %376 = getelementptr inbounds nuw i8, ptr %374, i64 8
  %377 = getelementptr inbounds nuw i8, ptr %375, i64 8
  %378 = load i64, ptr %377, align 1, !tbaa !13
  %379 = load i64, ptr %376, align 1, !tbaa !13
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %373, label %381

381:                                              ; preds = %373, %363
  %382 = phi ptr [ %292, %363 ], [ %376, %373 ]
  %383 = phi i64 [ %371, %363 ], [ %378, %373 ]
  %384 = phi i64 [ %308, %363 ], [ %379, %373 ]
  %385 = xor i64 %384, %383
  %386 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %385, i1 true)
  %387 = lshr i64 %386, 3
  %388 = getelementptr inbounds nuw i8, ptr %382, i64 %387
  %389 = ptrtoint ptr %388 to i64
  %390 = sub i64 %389, %309
  %391 = icmp ugt i64 %390, 6
  %392 = add i32 %365, -1
  %393 = add i32 %364, 1
  br i1 %391, label %363, label %394, !llvm.loop !63

394:                                              ; preds = %381
  %395 = sub i32 %336, %365
  %396 = icmp ult i32 %395, %131
  br i1 %396, label %397, label %438

397:                                              ; preds = %394
  %398 = icmp ult i32 %365, %336
  br i1 %398, label %399, label %940

399:                                              ; preds = %397
  %400 = sub i32 %335, %286
  %401 = add i32 %364, %400
  %402 = and i32 %395, 3
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %414, label %404

404:                                              ; preds = %399, %404
  %405 = phi i64 [ %411, %404 ], [ %366, %399 ]
  %406 = phi i32 [ %412, %404 ], [ 0, %399 ]
  %407 = getelementptr inbounds nuw i32, ptr %118, i64 %405
  %408 = load i32, ptr %407, align 4, !tbaa !5
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds nuw i8, ptr %121, i64 %409
  store i8 1, ptr %410, align 1, !tbaa !31
  %411 = add nuw nsw i64 %405, 1
  %412 = add i32 %406, 1
  %413 = icmp eq i32 %412, %402
  br i1 %413, label %414, label %404, !llvm.loop !64

414:                                              ; preds = %404, %399
  %415 = phi i64 [ %366, %399 ], [ %411, %404 ]
  %416 = icmp ult i32 %401, 3
  br i1 %416, label %940, label %417

417:                                              ; preds = %414, %417
  %418 = phi i64 [ %435, %417 ], [ %415, %414 ]
  %419 = getelementptr inbounds nuw i32, ptr %118, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !5
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds nuw i8, ptr %121, i64 %421
  store i8 1, ptr %422, align 1, !tbaa !31
  %423 = getelementptr i32, ptr %272, i64 %418
  %424 = load i32, ptr %423, align 4, !tbaa !5
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds nuw i8, ptr %121, i64 %425
  store i8 1, ptr %426, align 1, !tbaa !31
  %427 = getelementptr i32, ptr %273, i64 %418
  %428 = load i32, ptr %427, align 4, !tbaa !5
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds nuw i8, ptr %121, i64 %429
  store i8 1, ptr %430, align 1, !tbaa !31
  %431 = getelementptr i32, ptr %274, i64 %418
  %432 = load i32, ptr %431, align 4, !tbaa !5
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds nuw i8, ptr %121, i64 %433
  store i8 1, ptr %434, align 1, !tbaa !31
  %435 = add nuw nsw i64 %418, 4
  %436 = trunc i64 %435 to i32
  %437 = icmp eq i32 %336, %436
  br i1 %437, label %940, label %417, !llvm.loop !65

438:                                              ; preds = %394
  br i1 %210, label %439, label %440

439:                                              ; preds = %438
  call void @ZDICT_trainFromBuffer_legacy.cold.5(i32 %395, i32 %289) #20
  br label %440

440:                                              ; preds = %439, %438
  br label %441

441:                                              ; preds = %440, %543
  %442 = phi i32 [ %547, %543 ], [ 7, %440 ]
  %443 = phi i32 [ %545, %543 ], [ %365, %440 ]
  %444 = phi i32 [ %546, %543 ], [ %336, %440 ]
  %445 = icmp ult i32 %443, %444
  br i1 %445, label %446, label %536

446:                                              ; preds = %441
  %447 = zext i32 %443 to i64
  %448 = zext i32 %444 to i64
  %449 = sub nsw i64 %448, %447
  %450 = and i64 %449, 1
  %451 = add nsw i64 %448, -1
  %452 = icmp eq i64 %451, %447
  br i1 %452, label %505, label %453

453:                                              ; preds = %446
  %454 = and i64 %449, -2
  br label %455

455:                                              ; preds = %495, %453
  %456 = phi i64 [ %447, %453 ], [ %502, %495 ]
  %457 = phi i32 [ %443, %453 ], [ %500, %495 ]
  %458 = phi i32 [ 0, %453 ], [ %499, %495 ]
  %459 = phi i32 [ %443, %453 ], [ %498, %495 ]
  %460 = phi i32 [ 0, %453 ], [ %501, %495 ]
  %461 = phi i8 [ 0, %453 ], [ %496, %495 ]
  %462 = phi i64 [ 0, %453 ], [ %503, %495 ]
  %463 = getelementptr inbounds nuw i32, ptr %118, i64 %456
  %464 = load i32, ptr %463, align 4, !tbaa !5
  %465 = add i32 %464, %442
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds nuw i8, ptr %51, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !31
  %469 = icmp eq i8 %468, %461
  br i1 %469, label %475, label %470

470:                                              ; preds = %455
  %471 = icmp ugt i32 %460, %458
  %472 = tail call i32 @llvm.umax.i32(i32 %460, i32 %458)
  %473 = select i1 %471, i32 %459, i32 %457
  %474 = trunc nuw i64 %456 to i32
  br label %475

475:                                              ; preds = %470, %455
  %476 = phi i8 [ %468, %470 ], [ %461, %455 ]
  %477 = phi i32 [ 0, %470 ], [ %460, %455 ]
  %478 = phi i32 [ %474, %470 ], [ %459, %455 ]
  %479 = phi i32 [ %472, %470 ], [ %458, %455 ]
  %480 = phi i32 [ %473, %470 ], [ %457, %455 ]
  %481 = add i32 %477, 1
  %482 = add nuw nsw i64 %456, 1
  %483 = getelementptr inbounds nuw i32, ptr %118, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !5
  %485 = add i32 %484, %442
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds nuw i8, ptr %51, i64 %486
  %488 = load i8, ptr %487, align 1, !tbaa !31
  %489 = icmp eq i8 %488, %476
  br i1 %489, label %495, label %490

490:                                              ; preds = %475
  %491 = icmp ugt i32 %481, %479
  %492 = tail call i32 @llvm.umax.i32(i32 %481, i32 %479)
  %493 = select i1 %491, i32 %478, i32 %480
  %494 = trunc nuw i64 %482 to i32
  br label %495

495:                                              ; preds = %490, %475
  %496 = phi i8 [ %488, %490 ], [ %476, %475 ]
  %497 = phi i32 [ 0, %490 ], [ %481, %475 ]
  %498 = phi i32 [ %494, %490 ], [ %478, %475 ]
  %499 = phi i32 [ %492, %490 ], [ %479, %475 ]
  %500 = phi i32 [ %493, %490 ], [ %480, %475 ]
  %501 = add i32 %497, 1
  %502 = add nuw nsw i64 %456, 2
  %503 = add i64 %462, 2
  %504 = icmp eq i64 %503, %454
  br i1 %504, label %505, label %455, !llvm.loop !66

505:                                              ; preds = %495, %446
  %506 = phi i32 [ poison, %446 ], [ %498, %495 ]
  %507 = phi i32 [ poison, %446 ], [ %499, %495 ]
  %508 = phi i32 [ poison, %446 ], [ %500, %495 ]
  %509 = phi i32 [ poison, %446 ], [ %501, %495 ]
  %510 = phi i64 [ %447, %446 ], [ %502, %495 ]
  %511 = phi i32 [ %443, %446 ], [ %500, %495 ]
  %512 = phi i32 [ 0, %446 ], [ %499, %495 ]
  %513 = phi i32 [ %443, %446 ], [ %498, %495 ]
  %514 = phi i32 [ 0, %446 ], [ %501, %495 ]
  %515 = phi i8 [ 0, %446 ], [ %496, %495 ]
  %516 = icmp eq i64 %450, 0
  br i1 %516, label %536, label %517

517:                                              ; preds = %505
  %518 = getelementptr inbounds nuw i32, ptr %118, i64 %510
  %519 = load i32, ptr %518, align 4, !tbaa !5
  %520 = add i32 %519, %442
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds nuw i8, ptr %51, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !31
  %524 = icmp eq i8 %523, %515
  br i1 %524, label %530, label %525

525:                                              ; preds = %517
  %526 = icmp ugt i32 %514, %512
  %527 = tail call i32 @llvm.umax.i32(i32 %514, i32 %512)
  %528 = select i1 %526, i32 %513, i32 %511
  %529 = trunc nuw i64 %510 to i32
  br label %530

530:                                              ; preds = %525, %517
  %531 = phi i32 [ 0, %525 ], [ %514, %517 ]
  %532 = phi i32 [ %529, %525 ], [ %513, %517 ]
  %533 = phi i32 [ %527, %525 ], [ %512, %517 ]
  %534 = phi i32 [ %528, %525 ], [ %511, %517 ]
  %535 = add i32 %531, 1
  br label %536

536:                                              ; preds = %530, %505, %441
  %537 = phi i32 [ 0, %441 ], [ %509, %505 ], [ %535, %530 ]
  %538 = phi i32 [ %443, %441 ], [ %506, %505 ], [ %532, %530 ]
  %539 = phi i32 [ 0, %441 ], [ %507, %505 ], [ %533, %530 ]
  %540 = phi i32 [ %443, %441 ], [ %508, %505 ], [ %534, %530 ]
  %541 = tail call i32 @llvm.umax.i32(i32 %537, i32 %539)
  %542 = icmp ult i32 %541, %131
  br i1 %542, label %548, label %543

543:                                              ; preds = %536
  %544 = icmp ugt i32 %537, %539
  %545 = select i1 %544, i32 %538, i32 %540
  %546 = add i32 %545, %541
  %547 = add i32 %442, 1
  br label %441

548:                                              ; preds = %536
  %549 = zext i32 %443 to i64
  %550 = getelementptr inbounds nuw i32, ptr %118, i64 %549
  %551 = load i32, ptr %550, align 4, !tbaa !5
  %552 = zext i32 %551 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %9, i8 0, i64 256, i1 false)
  %553 = getelementptr inbounds nuw i8, ptr %51, i64 %552
  %554 = load i64, ptr %553, align 1, !tbaa !13
  %555 = ptrtoint ptr %553 to i64
  br label %556

556:                                              ; preds = %574, %548
  %557 = phi i32 [ %558, %574 ], [ %443, %548 ]
  %558 = add i32 %557, 1
  %559 = zext i32 %558 to i64
  %560 = getelementptr inbounds nuw i32, ptr %118, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !5
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds nuw i8, ptr %51, i64 %562
  %564 = load i64, ptr %563, align 1, !tbaa !13
  %565 = icmp eq i64 %564, %554
  br i1 %565, label %566, label %574

566:                                              ; preds = %556, %566
  %567 = phi ptr [ %569, %566 ], [ %553, %556 ]
  %568 = phi ptr [ %570, %566 ], [ %563, %556 ]
  %569 = getelementptr inbounds nuw i8, ptr %567, i64 8
  %570 = getelementptr inbounds nuw i8, ptr %568, i64 8
  %571 = load i64, ptr %570, align 1, !tbaa !13
  %572 = load i64, ptr %569, align 1, !tbaa !13
  %573 = icmp eq i64 %571, %572
  br i1 %573, label %566, label %574

574:                                              ; preds = %566, %556
  %575 = phi ptr [ %553, %556 ], [ %569, %566 ]
  %576 = phi i64 [ %564, %556 ], [ %571, %566 ]
  %577 = phi i64 [ %554, %556 ], [ %572, %566 ]
  %578 = xor i64 %577, %576
  %579 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %578, i1 true)
  %580 = lshr i64 %579, 3
  %581 = getelementptr inbounds nuw i8, ptr %575, i64 %580
  %582 = ptrtoint ptr %581 to i64
  %583 = sub i64 %582, %555
  %584 = tail call i64 @llvm.umin.i64(i64 %583, i64 63)
  %585 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !5
  %587 = add i32 %586, 1
  store i32 %587, ptr %585, align 4, !tbaa !5
  %588 = icmp ugt i64 %583, 6
  br i1 %588, label %556, label %589, !llvm.loop !67

589:                                              ; preds = %574
  %590 = icmp eq i32 %443, 0
  br i1 %590, label %627, label %591

591:                                              ; preds = %589, %609
  %592 = phi i32 [ %624, %609 ], [ %443, %589 ]
  %593 = add i32 %592, -1
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds nuw i32, ptr %118, i64 %594
  %596 = load i32, ptr %595, align 4, !tbaa !5
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds nuw i8, ptr %51, i64 %597
  %599 = load i64, ptr %598, align 1, !tbaa !13
  %600 = icmp eq i64 %599, %554
  br i1 %600, label %601, label %609

601:                                              ; preds = %591, %601
  %602 = phi ptr [ %604, %601 ], [ %553, %591 ]
  %603 = phi ptr [ %605, %601 ], [ %598, %591 ]
  %604 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %605 = getelementptr inbounds nuw i8, ptr %603, i64 8
  %606 = load i64, ptr %605, align 1, !tbaa !13
  %607 = load i64, ptr %604, align 1, !tbaa !13
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %601, label %609

609:                                              ; preds = %601, %591
  %610 = phi ptr [ %553, %591 ], [ %604, %601 ]
  %611 = phi i64 [ %599, %591 ], [ %606, %601 ]
  %612 = phi i64 [ %554, %591 ], [ %607, %601 ]
  %613 = xor i64 %612, %611
  %614 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %613, i1 true)
  %615 = lshr i64 %614, 3
  %616 = getelementptr inbounds nuw i8, ptr %610, i64 %615
  %617 = ptrtoint ptr %616 to i64
  %618 = sub i64 %617, %555
  %619 = tail call i64 @llvm.umin.i64(i64 %618, i64 63)
  %620 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !5
  %622 = add i32 %621, 1
  store i32 %622, ptr %620, align 4, !tbaa !5
  %623 = icmp ugt i64 %618, 6
  %624 = select i1 %623, i32 %593, i32 %592
  %625 = icmp ne i32 %624, 0
  %626 = and i1 %623, %625
  br i1 %626, label %591, label %627, !llvm.loop !68

627:                                              ; preds = %609, %589
  %628 = phi i32 [ 0, %589 ], [ %624, %609 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %10, i8 0, i64 256, i1 false)
  %629 = load i32, ptr %211, align 4, !tbaa !5
  store i32 %629, ptr %212, align 4, !tbaa !5
  br label %630

630:                                              ; preds = %630, %627
  %631 = phi i32 [ %629, %627 ], [ %645, %630 ]
  %632 = phi i64 [ 62, %627 ], [ %647, %630 ]
  %633 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %632
  %634 = load i32, ptr %633, align 4, !tbaa !5
  %635 = add i32 %634, %631
  %636 = getelementptr inbounds nuw [64 x i32], ptr %10, i64 0, i64 %632
  store i32 %635, ptr %636, align 4, !tbaa !5
  %637 = add nsw i64 %632, -1
  %638 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !5
  %640 = add i32 %639, %635
  %641 = getelementptr inbounds nuw [64 x i32], ptr %10, i64 0, i64 %637
  store i32 %640, ptr %641, align 4, !tbaa !5
  %642 = add nsw i64 %632, -2
  %643 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %642
  %644 = load i32, ptr %643, align 4, !tbaa !5
  %645 = add i32 %644, %640
  %646 = getelementptr inbounds nuw [64 x i32], ptr %10, i64 0, i64 %642
  store i32 %645, ptr %646, align 4, !tbaa !5
  %647 = add nsw i64 %632, -3
  %648 = icmp eq i64 %642, 0
  br i1 %648, label %649, label %630, !llvm.loop !69

649:                                              ; preds = %630
  %650 = load i32, ptr %212, align 4, !tbaa !5
  %651 = icmp ult i32 %650, %131
  br i1 %651, label %652, label %821

652:                                              ; preds = %649
  %653 = load i32, ptr %213, align 8, !tbaa !5
  %654 = icmp ult i32 %653, %131
  br i1 %654, label %655, label %821

655:                                              ; preds = %652
  %656 = load i32, ptr %214, align 4, !tbaa !5
  %657 = icmp ult i32 %656, %131
  br i1 %657, label %658, label %821

658:                                              ; preds = %655
  %659 = load i32, ptr %215, align 16, !tbaa !5
  %660 = icmp ult i32 %659, %131
  br i1 %660, label %661, label %821

661:                                              ; preds = %658
  %662 = load i32, ptr %216, align 4, !tbaa !5
  %663 = icmp ult i32 %662, %131
  br i1 %663, label %664, label %821

664:                                              ; preds = %661
  %665 = load i32, ptr %217, align 8, !tbaa !5
  %666 = icmp ult i32 %665, %131
  br i1 %666, label %667, label %821

667:                                              ; preds = %664
  %668 = load i32, ptr %218, align 4, !tbaa !5
  %669 = icmp ult i32 %668, %131
  br i1 %669, label %670, label %821

670:                                              ; preds = %667
  %671 = load i32, ptr %219, align 16, !tbaa !5
  %672 = icmp ult i32 %671, %131
  br i1 %672, label %673, label %821

673:                                              ; preds = %670
  %674 = load i32, ptr %220, align 4, !tbaa !5
  %675 = icmp ult i32 %674, %131
  br i1 %675, label %676, label %821

676:                                              ; preds = %673
  %677 = load i32, ptr %221, align 8, !tbaa !5
  %678 = icmp ult i32 %677, %131
  br i1 %678, label %679, label %821

679:                                              ; preds = %676
  %680 = load i32, ptr %222, align 4, !tbaa !5
  %681 = icmp ult i32 %680, %131
  br i1 %681, label %682, label %821

682:                                              ; preds = %679
  %683 = load i32, ptr %223, align 16, !tbaa !5
  %684 = icmp ult i32 %683, %131
  br i1 %684, label %685, label %821

685:                                              ; preds = %682
  %686 = load i32, ptr %224, align 4, !tbaa !5
  %687 = icmp ult i32 %686, %131
  br i1 %687, label %688, label %821

688:                                              ; preds = %685
  %689 = load i32, ptr %225, align 8, !tbaa !5
  %690 = icmp ult i32 %689, %131
  br i1 %690, label %691, label %821

691:                                              ; preds = %688
  %692 = load i32, ptr %226, align 4, !tbaa !5
  %693 = icmp ult i32 %692, %131
  br i1 %693, label %694, label %821

694:                                              ; preds = %691
  %695 = load i32, ptr %227, align 16, !tbaa !5
  %696 = icmp ult i32 %695, %131
  br i1 %696, label %697, label %821

697:                                              ; preds = %694
  %698 = load i32, ptr %228, align 4, !tbaa !5
  %699 = icmp ult i32 %698, %131
  br i1 %699, label %700, label %821

700:                                              ; preds = %697
  %701 = load i32, ptr %229, align 8, !tbaa !5
  %702 = icmp ult i32 %701, %131
  br i1 %702, label %703, label %821

703:                                              ; preds = %700
  %704 = load i32, ptr %230, align 4, !tbaa !5
  %705 = icmp ult i32 %704, %131
  br i1 %705, label %706, label %821

706:                                              ; preds = %703
  %707 = load i32, ptr %231, align 16, !tbaa !5
  %708 = icmp ult i32 %707, %131
  br i1 %708, label %709, label %821

709:                                              ; preds = %706
  %710 = load i32, ptr %232, align 4, !tbaa !5
  %711 = icmp ult i32 %710, %131
  br i1 %711, label %712, label %821

712:                                              ; preds = %709
  %713 = load i32, ptr %233, align 8, !tbaa !5
  %714 = icmp ult i32 %713, %131
  br i1 %714, label %715, label %821

715:                                              ; preds = %712
  %716 = load i32, ptr %234, align 4, !tbaa !5
  %717 = icmp ult i32 %716, %131
  br i1 %717, label %718, label %821

718:                                              ; preds = %715
  %719 = load i32, ptr %235, align 16, !tbaa !5
  %720 = icmp ult i32 %719, %131
  br i1 %720, label %721, label %821

721:                                              ; preds = %718
  %722 = load i32, ptr %236, align 4, !tbaa !5
  %723 = icmp ult i32 %722, %131
  br i1 %723, label %724, label %821

724:                                              ; preds = %721
  %725 = load i32, ptr %237, align 8, !tbaa !5
  %726 = icmp ult i32 %725, %131
  br i1 %726, label %727, label %821

727:                                              ; preds = %724
  %728 = load i32, ptr %238, align 4, !tbaa !5
  %729 = icmp ult i32 %728, %131
  br i1 %729, label %730, label %821

730:                                              ; preds = %727
  %731 = load i32, ptr %239, align 16, !tbaa !5
  %732 = icmp ult i32 %731, %131
  br i1 %732, label %733, label %821

733:                                              ; preds = %730
  %734 = load i32, ptr %240, align 4, !tbaa !5
  %735 = icmp ult i32 %734, %131
  br i1 %735, label %736, label %821

736:                                              ; preds = %733
  %737 = load i32, ptr %241, align 8, !tbaa !5
  %738 = icmp ult i32 %737, %131
  br i1 %738, label %739, label %821

739:                                              ; preds = %736
  %740 = load i32, ptr %242, align 4, !tbaa !5
  %741 = icmp ult i32 %740, %131
  br i1 %741, label %742, label %821

742:                                              ; preds = %739
  %743 = load i32, ptr %243, align 16, !tbaa !5
  %744 = icmp ult i32 %743, %131
  br i1 %744, label %745, label %821

745:                                              ; preds = %742
  %746 = load i32, ptr %244, align 4, !tbaa !5
  %747 = icmp ult i32 %746, %131
  br i1 %747, label %748, label %821

748:                                              ; preds = %745
  %749 = load i32, ptr %245, align 8, !tbaa !5
  %750 = icmp ult i32 %749, %131
  br i1 %750, label %751, label %821

751:                                              ; preds = %748
  %752 = load i32, ptr %246, align 4, !tbaa !5
  %753 = icmp ult i32 %752, %131
  br i1 %753, label %754, label %821

754:                                              ; preds = %751
  %755 = load i32, ptr %247, align 16, !tbaa !5
  %756 = icmp ult i32 %755, %131
  br i1 %756, label %757, label %821

757:                                              ; preds = %754
  %758 = load i32, ptr %248, align 4, !tbaa !5
  %759 = icmp ult i32 %758, %131
  br i1 %759, label %760, label %821

760:                                              ; preds = %757
  %761 = load i32, ptr %249, align 8, !tbaa !5
  %762 = icmp ult i32 %761, %131
  br i1 %762, label %763, label %821

763:                                              ; preds = %760
  %764 = load i32, ptr %250, align 4, !tbaa !5
  %765 = icmp ult i32 %764, %131
  br i1 %765, label %766, label %821

766:                                              ; preds = %763
  %767 = load i32, ptr %251, align 16, !tbaa !5
  %768 = icmp ult i32 %767, %131
  br i1 %768, label %769, label %821

769:                                              ; preds = %766
  %770 = load i32, ptr %252, align 4, !tbaa !5
  %771 = icmp ult i32 %770, %131
  br i1 %771, label %772, label %821

772:                                              ; preds = %769
  %773 = load i32, ptr %253, align 8, !tbaa !5
  %774 = icmp ult i32 %773, %131
  br i1 %774, label %775, label %821

775:                                              ; preds = %772
  %776 = load i32, ptr %254, align 4, !tbaa !5
  %777 = icmp ult i32 %776, %131
  br i1 %777, label %778, label %821

778:                                              ; preds = %775
  %779 = load i32, ptr %255, align 16, !tbaa !5
  %780 = icmp ult i32 %779, %131
  br i1 %780, label %781, label %821

781:                                              ; preds = %778
  %782 = load i32, ptr %256, align 4, !tbaa !5
  %783 = icmp ult i32 %782, %131
  br i1 %783, label %784, label %821

784:                                              ; preds = %781
  %785 = load i32, ptr %257, align 8, !tbaa !5
  %786 = icmp ult i32 %785, %131
  br i1 %786, label %787, label %821

787:                                              ; preds = %784
  %788 = load i32, ptr %258, align 4, !tbaa !5
  %789 = icmp ult i32 %788, %131
  br i1 %789, label %790, label %821

790:                                              ; preds = %787
  %791 = load i32, ptr %259, align 16, !tbaa !5
  %792 = icmp ult i32 %791, %131
  br i1 %792, label %793, label %821

793:                                              ; preds = %790
  %794 = load i32, ptr %260, align 4, !tbaa !5
  %795 = icmp ult i32 %794, %131
  br i1 %795, label %796, label %821

796:                                              ; preds = %793
  %797 = load i32, ptr %261, align 8, !tbaa !5
  %798 = icmp ult i32 %797, %131
  br i1 %798, label %799, label %821

799:                                              ; preds = %796
  %800 = load i32, ptr %262, align 4, !tbaa !5
  %801 = icmp ult i32 %800, %131
  br i1 %801, label %802, label %821

802:                                              ; preds = %799
  %803 = load i32, ptr %263, align 16, !tbaa !5
  %804 = icmp ult i32 %803, %131
  br i1 %804, label %805, label %821

805:                                              ; preds = %802
  %806 = load i32, ptr %264, align 4, !tbaa !5
  %807 = icmp ult i32 %806, %131
  br i1 %807, label %808, label %821

808:                                              ; preds = %805
  %809 = load i32, ptr %265, align 8, !tbaa !5
  %810 = icmp ult i32 %809, %131
  br i1 %810, label %811, label %821

811:                                              ; preds = %808
  %812 = load i32, ptr %266, align 4, !tbaa !5
  %813 = icmp ult i32 %812, %131
  br i1 %813, label %814, label %821

814:                                              ; preds = %811
  %815 = load i32, ptr %267, align 16, !tbaa !5
  %816 = icmp ult i32 %815, %131
  br i1 %816, label %817, label %821

817:                                              ; preds = %814
  %818 = load i32, ptr %268, align 4, !tbaa !5
  %819 = icmp ult i32 %818, %131
  %820 = select i1 %819, i32 6, i32 7
  br label %821

821:                                              ; preds = %817, %814, %811, %808, %805, %802, %799, %796, %793, %790, %787, %784, %781, %778, %775, %772, %769, %766, %763, %760, %757, %754, %751, %748, %745, %742, %739, %736, %733, %730, %727, %724, %721, %718, %715, %712, %709, %706, %703, %700, %697, %694, %691, %688, %685, %682, %679, %676, %673, %670, %667, %664, %661, %658, %655, %652, %649
  %822 = phi i32 [ 63, %649 ], [ 62, %652 ], [ 61, %655 ], [ 60, %658 ], [ 59, %661 ], [ 58, %664 ], [ 57, %667 ], [ 56, %670 ], [ 55, %673 ], [ 54, %676 ], [ 53, %679 ], [ 52, %682 ], [ 51, %685 ], [ 50, %688 ], [ 49, %691 ], [ 48, %694 ], [ 47, %697 ], [ 46, %700 ], [ 45, %703 ], [ 44, %706 ], [ 43, %709 ], [ 42, %712 ], [ 41, %715 ], [ 40, %718 ], [ 39, %721 ], [ 38, %724 ], [ 37, %727 ], [ 36, %730 ], [ 35, %733 ], [ 34, %736 ], [ 33, %739 ], [ 32, %742 ], [ 31, %745 ], [ 30, %748 ], [ 29, %751 ], [ 28, %754 ], [ 27, %757 ], [ 26, %760 ], [ 25, %763 ], [ 24, %766 ], [ 23, %769 ], [ 22, %772 ], [ 21, %775 ], [ 20, %778 ], [ 19, %781 ], [ 18, %784 ], [ 17, %787 ], [ 16, %790 ], [ 15, %793 ], [ 14, %796 ], [ 13, %799 ], [ 12, %802 ], [ 11, %805 ], [ 10, %808 ], [ 9, %811 ], [ 8, %814 ], [ %820, %817 ]
  %823 = zext nneg i32 %822 to i64
  %824 = getelementptr i8, ptr %553, i64 %823
  %825 = getelementptr i8, ptr %824, i64 -1
  %826 = load i8, ptr %825, align 1, !tbaa !31
  %827 = getelementptr i8, ptr %553, i64 -2
  br label %828

828:                                              ; preds = %828, %821
  %829 = phi i32 [ %822, %821 ], [ %834, %828 ]
  %830 = zext i32 %829 to i64
  %831 = getelementptr i8, ptr %827, i64 %830
  %832 = load i8, ptr %831, align 1, !tbaa !31
  %833 = icmp eq i8 %832, %826
  %834 = add i32 %829, -1
  br i1 %833, label %828, label %835, !llvm.loop !70

835:                                              ; preds = %828
  %836 = icmp ult i32 %829, 7
  br i1 %836, label %940, label %837

837:                                              ; preds = %835
  store i32 0, ptr %269, align 4, !tbaa !5
  %838 = and i64 %830, 1
  %839 = icmp eq i32 %829, 7
  br i1 %839, label %865, label %840

840:                                              ; preds = %837
  %841 = and i64 %830, 4294967294
  %842 = add nsw i64 %841, -8
  br label %843

843:                                              ; preds = %843, %840
  %844 = phi i32 [ 0, %840 ], [ %860, %843 ]
  %845 = phi i64 [ 7, %840 ], [ %862, %843 ]
  %846 = phi i64 [ 0, %840 ], [ %863, %843 ]
  %847 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %845
  %848 = load i32, ptr %847, align 4, !tbaa !5
  %849 = trunc nuw i64 %845 to i32
  %850 = add i32 %849, -3
  %851 = mul i32 %850, %848
  %852 = add i32 %851, %844
  %853 = getelementptr inbounds nuw [64 x i32], ptr %11, i64 0, i64 %845
  store i32 %852, ptr %853, align 4, !tbaa !5
  %854 = add nuw nsw i64 %845, 1
  %855 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %854
  %856 = load i32, ptr %855, align 4, !tbaa !5
  %857 = trunc nuw i64 %854 to i32
  %858 = add i32 %857, -3
  %859 = mul i32 %858, %856
  %860 = add i32 %859, %852
  %861 = getelementptr inbounds nuw [64 x i32], ptr %11, i64 0, i64 %854
  store i32 %860, ptr %861, align 4, !tbaa !5
  %862 = add nuw nsw i64 %845, 2
  %863 = add i64 %846, 2
  %864 = icmp eq i64 %846, %842
  br i1 %864, label %865, label %843, !llvm.loop !71

865:                                              ; preds = %843, %837
  %866 = phi i32 [ 0, %837 ], [ %860, %843 ]
  %867 = phi i64 [ 7, %837 ], [ %862, %843 ]
  %868 = icmp eq i64 %838, 0
  br i1 %868, label %877, label %869

869:                                              ; preds = %865
  %870 = getelementptr inbounds nuw [64 x i32], ptr %9, i64 0, i64 %867
  %871 = load i32, ptr %870, align 4, !tbaa !5
  %872 = trunc nuw i64 %867 to i32
  %873 = add i32 %872, -3
  %874 = mul i32 %873, %871
  %875 = add i32 %874, %866
  %876 = getelementptr inbounds nuw [64 x i32], ptr %11, i64 0, i64 %867
  store i32 %875, ptr %876, align 4, !tbaa !5
  br label %877

877:                                              ; preds = %865, %869
  br i1 %210, label %881, label %878

878:                                              ; preds = %877
  %879 = getelementptr inbounds nuw [64 x i32], ptr %11, i64 0, i64 %830
  %880 = load i32, ptr %879, align 4, !tbaa !5
  br label %891

881:                                              ; preds = %877
  %882 = load ptr, ptr @stderr, align 8, !tbaa !72
  %883 = getelementptr inbounds nuw [64 x i32], ptr %11, i64 0, i64 %830
  %884 = load i32, ptr %883, align 4, !tbaa !5
  %885 = uitofp i32 %884 to double
  %886 = uitofp i32 %829 to double
  %887 = fdiv double %885, %886
  %888 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %882, ptr noundef nonnull @.str.36, i32 noundef %551, i32 noundef %829, i32 noundef %884, double noundef %887) #21
  %889 = load ptr, ptr @stderr, align 8, !tbaa !72
  %890 = tail call i32 @fflush(ptr noundef %889)
  br label %891

891:                                              ; preds = %881, %878
  %892 = phi i32 [ %880, %878 ], [ %884, %881 ]
  %893 = icmp ult i32 %628, %558
  br i1 %893, label %894, label %942

894:                                              ; preds = %891
  %895 = zext i32 %628 to i64
  br label %896

896:                                              ; preds = %937, %894
  %897 = phi i64 [ %895, %894 ], [ %938, %937 ]
  %898 = getelementptr inbounds nuw i32, ptr %118, i64 %897
  %899 = load i32, ptr %898, align 4, !tbaa !5
  %900 = icmp eq i32 %899, %551
  br i1 %900, label %927, label %901

901:                                              ; preds = %896
  %902 = zext i32 %899 to i64
  %903 = getelementptr inbounds nuw i8, ptr %51, i64 %902
  %904 = load i64, ptr %903, align 1, !tbaa !13
  %905 = load i64, ptr %553, align 1, !tbaa !13
  %906 = icmp eq i64 %904, %905
  br i1 %906, label %907, label %915

907:                                              ; preds = %901, %907
  %908 = phi ptr [ %910, %907 ], [ %553, %901 ]
  %909 = phi ptr [ %911, %907 ], [ %903, %901 ]
  %910 = getelementptr inbounds nuw i8, ptr %908, i64 8
  %911 = getelementptr inbounds nuw i8, ptr %909, i64 8
  %912 = load i64, ptr %911, align 1, !tbaa !13
  %913 = load i64, ptr %910, align 1, !tbaa !13
  %914 = icmp eq i64 %912, %913
  br i1 %914, label %907, label %915

915:                                              ; preds = %907, %901
  %916 = phi ptr [ %553, %901 ], [ %910, %907 ]
  %917 = phi i64 [ %904, %901 ], [ %912, %907 ]
  %918 = phi i64 [ %905, %901 ], [ %913, %907 ]
  %919 = xor i64 %918, %917
  %920 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %919, i1 true)
  %921 = lshr i64 %920, 3
  %922 = getelementptr inbounds nuw i8, ptr %916, i64 %921
  %923 = ptrtoint ptr %922 to i64
  %924 = sub i64 %923, %555
  %925 = trunc i64 %924 to i32
  %926 = tail call i32 @llvm.umin.i32(i32 %829, i32 %925)
  br label %927

927:                                              ; preds = %915, %896
  %928 = phi i32 [ %829, %896 ], [ %926, %915 ]
  %929 = add i32 %928, %899
  %930 = icmp ult i32 %899, %929
  br i1 %930, label %931, label %937

931:                                              ; preds = %927
  %932 = zext i32 %899 to i64
  %933 = getelementptr i8, ptr %121, i64 %932
  %934 = add i32 %928, -1
  %935 = zext i32 %934 to i64
  %936 = add nuw nsw i64 %935, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %933, i8 1, i64 %936, i1 false), !tbaa !31
  br label %937

937:                                              ; preds = %931, %927
  %938 = add nuw nsw i64 %897, 1
  %939 = icmp eq i64 %938, %559
  br i1 %939, label %942, label %896, !llvm.loop !74

940:                                              ; preds = %414, %417, %835, %397, %322, %320
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #17
  %941 = add i32 %278, 1
  br label %1047, !llvm.loop !59

942:                                              ; preds = %937, %891
  %943 = shl nuw i64 %830, 32
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #17
  %944 = or disjoint i64 %943, %552
  %945 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %69, i64 %944, i32 %892, i32 noundef 0, ptr noundef nonnull readonly %51)
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %996, label %947

947:                                              ; preds = %942
  %948 = zext i32 %945 to i64
  %949 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %948
  %950 = load i64, ptr %949, align 4
  %951 = getelementptr inbounds nuw i8, ptr %949, i64 8
  %952 = load i32, ptr %951, align 4
  %953 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %69, i64 %950, i32 %952, i32 noundef %945, ptr noundef nonnull readonly %51)
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1023, label %955

955:                                              ; preds = %947, %987
  %956 = phi i32 [ %994, %987 ], [ %953, %947 ]
  %957 = phi i64 [ %989, %987 ], [ %948, %947 ]
  %958 = phi i32 [ %956, %987 ], [ %945, %947 ]
  %959 = load i32, ptr %69, align 4, !tbaa !9
  %960 = add i32 %959, -1
  %961 = icmp ult i32 %958, %960
  br i1 %961, label %962, label %987

962:                                              ; preds = %955
  %963 = zext i32 %960 to i64
  %964 = sub nsw i64 %963, %957
  %965 = and i64 %964, 1
  %966 = icmp eq i64 %965, 0
  br i1 %966, label %971, label %967

967:                                              ; preds = %962
  %968 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %957
  %969 = add nuw nsw i64 %957, 1
  %970 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %969
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %968, ptr noundef nonnull align 4 dereferenceable(12) %970, i64 12, i1 false), !tbaa.struct !75
  br label %971

971:                                              ; preds = %967, %962
  %972 = phi i64 [ %957, %962 ], [ %969, %967 ]
  %973 = add nsw i64 %963, -1
  %974 = icmp eq i64 %957, %973
  br i1 %974, label %984, label %975

975:                                              ; preds = %971, %975
  %976 = phi i64 [ %981, %975 ], [ %972, %971 ]
  %977 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %976
  %978 = add nuw nsw i64 %976, 1
  %979 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %978
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %977, ptr noundef nonnull align 4 dereferenceable(12) %979, i64 12, i1 false), !tbaa.struct !75
  %980 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %978
  %981 = add nuw nsw i64 %976, 2
  %982 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %981
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %980, ptr noundef nonnull align 4 dereferenceable(12) %982, i64 12, i1 false), !tbaa.struct !75
  %983 = icmp eq i64 %981, %963
  br i1 %983, label %984, label %975, !llvm.loop !76

984:                                              ; preds = %975, %971
  %985 = load i32, ptr %69, align 4, !tbaa !9
  %986 = add i32 %985, -1
  br label %987

987:                                              ; preds = %984, %955
  %988 = phi i32 [ %986, %984 ], [ %960, %955 ]
  store i32 %988, ptr %69, align 4, !tbaa !9
  %989 = zext i32 %956 to i64
  %990 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %989
  %991 = load i64, ptr %990, align 4
  %992 = getelementptr inbounds nuw i8, ptr %990, i64 8
  %993 = load i32, ptr %992, align 4
  %994 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %69, i64 %991, i32 %993, i32 noundef %956, ptr noundef nonnull readonly %51)
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1023, label %955, !llvm.loop !77

996:                                              ; preds = %942
  %997 = load i32, ptr %69, align 4, !tbaa !9
  %998 = tail call i32 @llvm.umin.i32(i32 %997, i32 %270)
  %999 = add i32 %998, -1
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1000
  %1002 = getelementptr inbounds nuw i8, ptr %1001, i64 8
  %1003 = load i32, ptr %1002, align 4, !tbaa !12
  %1004 = icmp ult i32 %1003, %892
  br i1 %1004, label %1005, label %1017

1005:                                             ; preds = %996, %1005
  %1006 = phi ptr [ %1013, %1005 ], [ %1001, %996 ]
  %1007 = phi i32 [ %1011, %1005 ], [ %999, %996 ]
  %1008 = phi i32 [ %1007, %1005 ], [ %998, %996 ]
  %1009 = zext i32 %1008 to i64
  %1010 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1009
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1010, ptr noundef nonnull align 4 dereferenceable(12) %1006, i64 12, i1 false), !tbaa.struct !75
  %1011 = add i32 %1007, -1
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1012
  %1014 = getelementptr inbounds nuw i8, ptr %1013, i64 8
  %1015 = load i32, ptr %1014, align 4, !tbaa !12
  %1016 = icmp ult i32 %1015, %892
  br i1 %1016, label %1005, label %1017, !llvm.loop !78

1017:                                             ; preds = %1005, %996
  %1018 = phi i32 [ %998, %996 ], [ %1007, %1005 ]
  %1019 = zext i32 %1018 to i64
  %1020 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1019
  store i64 %944, ptr %1020, align 4
  %1021 = getelementptr inbounds nuw i8, ptr %1020, i64 8
  store i32 %892, ptr %1021, align 4, !tbaa !5
  %1022 = add nuw i32 %998, 1
  store i32 %1022, ptr %69, align 4, !tbaa !9
  br label %1023

1023:                                             ; preds = %987, %1017, %947
  %1024 = add i32 %829, %278
  br i1 %122, label %1025, label %1047

1025:                                             ; preds = %1023
  %1026 = tail call i64 @clock() #17
  %1027 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1026, i64 %277), !nosanitize !79
  %1028 = extractvalue { i64, i1 } %1027, 1, !nosanitize !79
  br i1 %1028, label %1029, label %1030, !prof !80, !nosanitize !79

1029:                                             ; preds = %1025
  tail call void @llvm.ubsantrap(i8 21) #22, !nosanitize !79
  unreachable, !nosanitize !79

1030:                                             ; preds = %1025
  %1031 = extractvalue { i64, i1 } %1027, 0, !nosanitize !79
  %1032 = icmp sgt i64 %1031, 300000
  br i1 %1032, label %1033, label %1042

1033:                                             ; preds = %1030
  %1034 = tail call i64 @clock() #17
  %1035 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1036 = uitofp i32 %1024 to double
  %1037 = fdiv double %1036, %271
  %1038 = fmul double %1037, 1.000000e+02
  %1039 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1035, ptr noundef nonnull @.str.33, double noundef %1038) #21
  %1040 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1041 = tail call i32 @fflush(ptr noundef %1040)
  br label %1042

1042:                                             ; preds = %1033, %1030
  %1043 = phi i64 [ %1034, %1033 ], [ %277, %1030 ]
  br i1 %210, label %1044, label %1047

1044:                                             ; preds = %1042
  %1045 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1046 = tail call i32 @fflush(ptr noundef %1045)
  br label %1047

1047:                                             ; preds = %1044, %1042, %1023, %940, %282
  %1048 = phi i32 [ %283, %282 ], [ %941, %940 ], [ %1024, %1042 ], [ %1024, %1044 ], [ %1024, %1023 ]
  %1049 = phi i64 [ %277, %282 ], [ %277, %940 ], [ %1043, %1042 ], [ %1043, %1044 ], [ %277, %1023 ]
  %1050 = zext i32 %1048 to i64
  %1051 = icmp samesign ugt i64 %149, %1050
  br i1 %1051, label %275, label %1052

1052:                                             ; preds = %1047
  %1053 = load i32, ptr %69, align 4, !tbaa !9
  br label %1054

1054:                                             ; preds = %1052, %208, %151, %124
  %1055 = phi i32 [ %1053, %1052 ], [ 1, %124 ], [ 1, %151 ], [ 1, %208 ]
  tail call void @free(ptr noundef %117) #17
  tail call void @free(ptr noundef %119) #17
  tail call void @free(ptr noundef %121) #17
  %1056 = icmp ugt i32 %59, 2
  br i1 %1056, label %1057, label %1134

1057:                                             ; preds = %1054
  %1058 = tail call i32 @llvm.umin.i32(i32 %1055, i32 25)
  %1059 = icmp ugt i32 %1055, 1
  br i1 %1059, label %1060, label %1202

1060:                                             ; preds = %1057
  %1061 = zext i32 %1055 to i64
  %1062 = icmp ult i32 %1055, 10
  br i1 %1062, label %1066, label %1063

1063:                                             ; preds = %1060
  call void @llvm.lifetime.start.p0(i64 -1, ptr %8)
  call void @llvm.lifetime.start.p0(i64 -1, ptr %7)
  call void @ZDICT_trainFromBuffer_legacy.cold.7(i64 %1061, ptr %69, ptr %8, ptr %7) #20
  %1064 = load i64, ptr %8, align 8
  %1065 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 -1, ptr %8)
  call void @llvm.lifetime.end.p0(i64 -1, ptr %7)
  br label %1066

1066:                                             ; preds = %1063, %1060
  %1067 = phi i64 [ 1, %1060 ], [ %1064, %1063 ]
  %1068 = phi i32 [ 0, %1060 ], [ %1065, %1063 ]
  br label %1069

1069:                                             ; preds = %1066, %1069
  %1070 = phi i64 [ %1075, %1069 ], [ %1067, %1066 ]
  %1071 = phi i32 [ %1074, %1069 ], [ %1068, %1066 ]
  %1072 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1070, i32 1
  %1073 = load i32, ptr %1072, align 4, !tbaa !11
  %1074 = add i32 %1073, %1071
  %1075 = add nuw nsw i64 %1070, 1
  %1076 = icmp eq i64 %1075, %1061
  br i1 %1076, label %1077, label %1069, !llvm.loop !81

1077:                                             ; preds = %1069
  %1078 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1079 = add i32 %1055, -1
  %1080 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1078, ptr noundef nonnull @.str.18, i32 noundef %1079, i32 noundef %1074) #21
  %1081 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1082 = tail call i32 @fflush(ptr noundef %1081)
  %1083 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1084 = add nsw i32 %1058, -1
  %1085 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1083, ptr noundef nonnull @.str.19, i32 noundef %1084) #21
  %1086 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1087 = tail call i32 @fflush(ptr noundef %1086)
  %1088 = zext nneg i32 %1058 to i64
  br label %1089

1089:                                             ; preds = %1127, %1077
  %1090 = phi i64 [ 1, %1077 ], [ %1132, %1127 ]
  %1091 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1090
  %1092 = load i32, ptr %1091, align 4, !tbaa !9
  %1093 = getelementptr inbounds nuw i8, ptr %1091, i64 4
  %1094 = load i32, ptr %1093, align 4, !tbaa !11
  %1095 = zext i32 %1092 to i64
  %1096 = icmp ult i64 %101, %1095
  %1097 = add i32 %1094, %1092
  %1098 = zext i32 %1097 to i64
  %1099 = icmp ult i64 %101, %1098
  %1100 = select i1 %1096, i1 true, i1 %1099
  br i1 %1100, label %1275, label %1101

1101:                                             ; preds = %1089
  %1102 = tail call i32 @llvm.umin.i32(i32 %1094, i32 40)
  %1103 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1104 = getelementptr inbounds nuw i8, ptr %1091, i64 8
  %1105 = load i32, ptr %1104, align 4, !tbaa !12
  %1106 = trunc nuw nsw i64 %1090 to i32
  %1107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1103, ptr noundef nonnull @.str.20, i32 noundef %1106, i32 noundef %1094, i32 noundef %1092, i32 noundef %1105) #21
  %1108 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1109 = tail call i32 @fflush(ptr noundef %1108)
  %1110 = getelementptr inbounds nuw i8, ptr %51, i64 %1095
  %1111 = zext nneg i32 %1102 to i64
  %1112 = icmp eq i32 %1094, 0
  br i1 %1112, label %1127, label %1113

1113:                                             ; preds = %1101, %1113
  %1114 = phi i64 [ %1125, %1113 ], [ 0, %1101 ]
  %1115 = getelementptr inbounds nuw i8, ptr %1110, i64 %1114
  %1116 = load i8, ptr %1115, align 1, !tbaa !31
  %1117 = add i8 %1116, -127
  %1118 = icmp ult i8 %1117, -95
  %1119 = select i1 %1118, i8 46, i8 %1116
  %1120 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1121 = zext i8 %1119 to i32
  %1122 = tail call i32 @fputc(i32 %1121, ptr %1120)
  %1123 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1124 = tail call i32 @fflush(ptr noundef %1123)
  %1125 = add nuw nsw i64 %1114, 1
  %1126 = icmp eq i64 %1125, %1111
  br i1 %1126, label %1127, label %1113, !llvm.loop !82

1127:                                             ; preds = %1113, %1101
  %1128 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1129 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1128) #23
  %1130 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1131 = tail call i32 @fflush(ptr noundef %1130)
  %1132 = add nuw nsw i64 %1090, 1
  %1133 = icmp eq i64 %1132, %1088
  br i1 %1133, label %1134, label %1089, !llvm.loop !83

1134:                                             ; preds = %1127, %1054
  %1135 = icmp ugt i32 %1055, 1
  br i1 %1135, label %1136, label %1275

1136:                                             ; preds = %1134
  %1137 = zext i32 %1055 to i64
  %1138 = icmp ult i32 %1055, 10
  br i1 %1138, label %1189, label %1139

1139:                                             ; preds = %1136
  %1140 = add nsw i64 %1137, -1
  %1141 = and i64 %1140, 7
  %1142 = icmp eq i64 %1141, 0
  %1143 = select i1 %1142, i64 8, i64 %1141
  %1144 = sub nsw i64 %1140, %1143
  %1145 = add nsw i64 %1144, 1
  br label %1146

1146:                                             ; preds = %1146, %1139
  %1147 = phi i64 [ 0, %1139 ], [ %1184, %1146 ]
  %1148 = phi <4 x i32> [ zeroinitializer, %1139 ], [ %1182, %1146 ]
  %1149 = phi <4 x i32> [ zeroinitializer, %1139 ], [ %1183, %1146 ]
  %1150 = or disjoint i64 %1147, 1
  %1151 = or disjoint i64 %1147, 2
  %1152 = or disjoint i64 %1147, 3
  %1153 = or disjoint i64 %1147, 4
  %1154 = or disjoint i64 %1147, 5
  %1155 = or disjoint i64 %1147, 6
  %1156 = or disjoint i64 %1147, 7
  %1157 = add i64 %1147, 8
  %1158 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1150, i32 1
  %1159 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1151, i32 1
  %1160 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1152, i32 1
  %1161 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1153, i32 1
  %1162 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1154, i32 1
  %1163 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1155, i32 1
  %1164 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1156, i32 1
  %1165 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1157, i32 1
  %1166 = load i32, ptr %1158, align 4, !tbaa !11
  %1167 = load i32, ptr %1159, align 4, !tbaa !11
  %1168 = load i32, ptr %1160, align 4, !tbaa !11
  %1169 = load i32, ptr %1161, align 4, !tbaa !11
  %1170 = insertelement <4 x i32> poison, i32 %1166, i64 0
  %1171 = insertelement <4 x i32> %1170, i32 %1167, i64 1
  %1172 = insertelement <4 x i32> %1171, i32 %1168, i64 2
  %1173 = insertelement <4 x i32> %1172, i32 %1169, i64 3
  %1174 = load i32, ptr %1162, align 4, !tbaa !11
  %1175 = load i32, ptr %1163, align 4, !tbaa !11
  %1176 = load i32, ptr %1164, align 4, !tbaa !11
  %1177 = load i32, ptr %1165, align 4, !tbaa !11
  %1178 = insertelement <4 x i32> poison, i32 %1174, i64 0
  %1179 = insertelement <4 x i32> %1178, i32 %1175, i64 1
  %1180 = insertelement <4 x i32> %1179, i32 %1176, i64 2
  %1181 = insertelement <4 x i32> %1180, i32 %1177, i64 3
  %1182 = add <4 x i32> %1173, %1148
  %1183 = add <4 x i32> %1181, %1149
  %1184 = add nuw i64 %1147, 8
  %1185 = icmp eq i64 %1184, %1144
  br i1 %1185, label %1186, label %1146, !llvm.loop !84

1186:                                             ; preds = %1146
  %1187 = add <4 x i32> %1183, %1182
  %1188 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1187)
  br label %1189

1189:                                             ; preds = %1136, %1186
  %1190 = phi i64 [ 1, %1136 ], [ %1145, %1186 ]
  %1191 = phi i32 [ 0, %1136 ], [ %1188, %1186 ]
  br label %1192

1192:                                             ; preds = %1189, %1192
  %1193 = phi i64 [ %1198, %1192 ], [ %1190, %1189 ]
  %1194 = phi i32 [ %1197, %1192 ], [ %1191, %1189 ]
  %1195 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1193, i32 1
  %1196 = load i32, ptr %1195, align 4, !tbaa !11
  %1197 = add i32 %1196, %1194
  %1198 = add nuw nsw i64 %1193, 1
  %1199 = icmp eq i64 %1198, %1137
  br i1 %1199, label %1200, label %1192, !llvm.loop !85

1200:                                             ; preds = %1192
  %1201 = icmp ult i32 %1197, 128
  br i1 %1201, label %1275, label %1203

1202:                                             ; preds = %1057
  call void @ZDICT_trainFromBuffer_legacy.cold.6(i32 %1055, i32 %1058) #20
  br label %1275

1203:                                             ; preds = %1200
  %1204 = zext i32 %1197 to i64
  %1205 = lshr i64 %1, 2
  %1206 = icmp samesign ugt i64 %1205, %1204
  %1207 = and i1 %122, %1206
  br i1 %1207, label %1208, label %1220

1208:                                             ; preds = %1203
  %1209 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1210 = trunc i64 %1 to i32
  %1211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1209, ptr noundef nonnull @.str.22, i32 noundef %1197, i32 noundef %1210) #21
  %1212 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1213 = tail call i32 @fflush(ptr noundef %1212)
  %1214 = mul i64 %1, 10
  %1215 = icmp ult i64 %101, %1214
  br i1 %1215, label %1216, label %1217

1216:                                             ; preds = %1208
  call void @ZDICT_trainFromBuffer_legacy.cold.8(i64 %101) #20
  br label %1217

1217:                                             ; preds = %1216, %1208
  %1218 = icmp ugt i32 %106, 4
  br i1 %1218, label %1219, label %1220

1219:                                             ; preds = %1217
  call void @ZDICT_trainFromBuffer_legacy.cold.9(i32 %103) #20
  br label %1220

1220:                                             ; preds = %1219, %1217, %1203
  %1221 = mul i64 %1, 3
  %1222 = icmp ult i64 %1221, %1204
  %1223 = icmp ugt i32 %4, 8
  %1224 = and i1 %1223, %1222
  %1225 = icmp ugt i32 %103, 1
  %1226 = select i1 %1224, i1 %1225, i1 false
  br i1 %1226, label %1227, label %1234

1227:                                             ; preds = %1220, %1227
  %1228 = phi i32 [ %1229, %1227 ], [ %103, %1220 ]
  %1229 = add i32 %1228, -1
  %1230 = lshr i32 %4, %1229
  %1231 = icmp ult i32 %1230, 5
  br i1 %1231, label %1227, label %1232, !llvm.loop !86

1232:                                             ; preds = %1227
  br i1 %122, label %1233, label %1234

1233:                                             ; preds = %1232
  call void @ZDICT_trainFromBuffer_legacy.cold.10(i64 %1, i32 %1197, i32 %1229) #20
  br label %1234

1234:                                             ; preds = %1233, %1232, %1220
  br label %1235

1235:                                             ; preds = %1234, %1243
  %1236 = phi i64 [ %1244, %1243 ], [ 1, %1234 ]
  %1237 = phi i32 [ %1240, %1243 ], [ 0, %1234 ]
  %1238 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1236, i32 1
  %1239 = load i32, ptr %1238, align 4, !tbaa !11
  %1240 = add i32 %1239, %1237
  %1241 = zext i32 %1240 to i64
  %1242 = icmp ult i64 %1, %1241
  br i1 %1242, label %1246, label %1243

1243:                                             ; preds = %1235
  %1244 = add nuw nsw i64 %1236, 1
  %1245 = icmp eq i64 %1244, %1137
  br i1 %1245, label %1248, label %1235, !llvm.loop !87

1246:                                             ; preds = %1235
  %1247 = trunc nuw i64 %1236 to i32
  br label %1248

1248:                                             ; preds = %1243, %1246
  %1249 = phi i32 [ %1237, %1246 ], [ %1240, %1243 ]
  %1250 = phi i32 [ %1247, %1246 ], [ %1055, %1243 ]
  %1251 = icmp ugt i32 %1250, 1
  br i1 %1251, label %1252, label %1271

1252:                                             ; preds = %1248
  %1253 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %1254 = zext i32 %1250 to i64
  br label %1255

1255:                                             ; preds = %1265, %1252
  %1256 = phi i64 [ 1, %1252 ], [ %1269, %1265 ]
  %1257 = phi ptr [ %1253, %1252 ], [ %1263, %1265 ]
  %1258 = getelementptr inbounds nuw %struct.dictItem, ptr %69, i64 %1256
  %1259 = getelementptr inbounds nuw i8, ptr %1258, i64 4
  %1260 = load i32, ptr %1259, align 4, !tbaa !11
  %1261 = zext i32 %1260 to i64
  %1262 = sub nsw i64 0, %1261
  %1263 = getelementptr inbounds i8, ptr %1257, i64 %1262
  %1264 = icmp ult ptr %1263, %0
  br i1 %1264, label %1275, label %1265

1265:                                             ; preds = %1255
  %1266 = load i32, ptr %1258, align 4, !tbaa !9
  %1267 = zext i32 %1266 to i64
  %1268 = getelementptr inbounds nuw i8, ptr %51, i64 %1267
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1263, ptr nonnull align 1 %1268, i64 %1261, i1 false)
  %1269 = add nuw nsw i64 %1256, 1
  %1270 = icmp eq i64 %1269, %1254
  br i1 %1270, label %1271, label %1255, !llvm.loop !88

1271:                                             ; preds = %1265, %1248
  %1272 = zext i32 %1249 to i64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  store <2 x i32> %60, ptr %12, align 8, !tbaa !5
  %1273 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %62, ptr %1273, align 8, !tbaa !5
  %1274 = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1272, i64 noundef %1, ptr noundef nonnull %51, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  br label %1275

1275:                                             ; preds = %1202, %1089, %1255, %1271, %1200, %1134, %110, %108
  %1276 = phi i64 [ %1274, %1271 ], [ -70, %108 ], [ -34, %110 ], [ -34, %1202 ], [ -34, %1134 ], [ -34, %1200 ], [ -1, %1255 ], [ -1, %1089 ]
  tail call void @free(ptr noundef nonnull %69) #17
  br label %1277

1277:                                             ; preds = %100, %1275
  %1278 = phi i64 [ -64, %100 ], [ %1276, %1275 ]
  tail call void @free(ptr noundef %51) #17
  br label %1279

1279:                                             ; preds = %6, %49, %46, %1277
  %1280 = phi i64 [ %1278, %1277 ], [ 0, %46 ], [ -64, %49 ], [ 0, %6 ]
  ret i64 %1280
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZDICT_fastCover_params_t, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 8, ptr %7, align 4, !tbaa !89
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %8, align 4, !tbaa !92
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 3, ptr %9, align 4, !tbaa !93
  %10 = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  ret i64 %10
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZDICT_params_t, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %8 = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %7)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5, ptr noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
  %8 = load i32, ptr %6, align 8, !tbaa !9
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 3, i32 %8
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  call void @ZDICT_addEntropyTablesFromBuffer_advanced.cold.1() #20
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = add i64 %2, -8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %19 = sub i64 0, %1
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %16, i64 noundef %17, i32 noundef %10, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %20, i64 noundef %1, i32 noundef %12)
  %22 = icmp ult i64 %21, -119
  %23 = add i64 %21, 8
  br i1 %22, label %24, label %40

24:                                               ; preds = %15
  store i32 -332356553, ptr %0, align 1, !tbaa !5
  %25 = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %20, i64 noundef %1, i64 noundef 0) #19
  %26 = urem i64 %25, 2147450880
  %27 = trunc nuw nsw i64 %26 to i32
  %28 = add nuw nsw i32 %27, 32768
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !12
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %28, i32 %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %32, ptr %33, align 1, !tbaa !5
  %34 = add i64 %23, %1
  %35 = icmp ult i64 %34, %2
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %37, ptr nonnull align 1 %20, i64 %1, i1 false)
  br label %38

38:                                               ; preds = %36, %24
  %39 = tail call i64 @llvm.umin.i64(i64 %2, i64 %34)
  br label %40

40:                                               ; preds = %15, %38
  %41 = phi i64 [ %39, %38 ], [ %21, %15 ]
  ret i64 %41
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #11

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #5

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #5

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #5

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #1 {
  %6 = trunc i64 %1 to i32
  %7 = lshr i64 %1, 32
  %8 = trunc nuw i64 %7 to i32
  %9 = load i32, ptr %0, align 4, !tbaa !9
  %10 = add i32 %8, %6
  %11 = icmp ugt i32 %9, 1
  br i1 %11, label %12, label %160

12:                                               ; preds = %5
  %13 = zext i32 %3 to i64
  %14 = zext i32 %9 to i64
  br label %21

15:                                               ; preds = %64
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %17 = and i64 %1, 4294967295
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  %19 = zext i32 %3 to i64
  %20 = zext i32 %9 to i64
  br label %67

21:                                               ; preds = %12, %64
  %22 = phi i64 [ 1, %12 ], [ %65, %64 ]
  %23 = icmp eq i64 %22, %13
  br i1 %23, label %64, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = icmp ule i32 %26, %6
  %28 = icmp ugt i32 %26, %10
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %64, label %30

30:                                               ; preds = %24
  %31 = trunc nuw nsw i64 %22 to i32
  %32 = sub nuw i32 %26, %6
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = add i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !11
  store i32 %6, ptr %25, align 4, !tbaa !9
  %36 = mul i32 %32, %2
  %37 = udiv i32 %36, %8
  %38 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %39 = load i32, ptr %38, align 4, !tbaa !12
  %40 = lshr i32 %8, 3
  %41 = add i32 %37, %40
  %42 = add i32 %41, %39
  store i32 %42, ptr %38, align 4, !tbaa !12
  %43 = load i64, ptr %25, align 4
  %44 = icmp samesign ugt i64 %22, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %30, %53
  %46 = phi i64 [ %47, %53 ], [ %22, %30 ]
  %47 = add nsw i64 %46, -1
  %48 = and i64 %47, 4294967295
  %49 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %48
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %51 = load i32, ptr %50, align 4, !tbaa !12
  %52 = icmp ult i32 %51, %42
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %54, ptr noundef nonnull align 4 dereferenceable(12) %49, i64 12, i1 false), !tbaa.struct !75
  %55 = and i64 %47, 4294967294
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %59, label %45, !llvm.loop !94

57:                                               ; preds = %45
  %58 = trunc nuw i64 %46 to i32
  br label %59

59:                                               ; preds = %53, %57, %30
  %60 = phi i32 [ %31, %30 ], [ %58, %57 ], [ 1, %53 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %61
  store i64 %43, ptr %62, align 4
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 %42, ptr %63, align 4, !tbaa !5
  br label %160

64:                                               ; preds = %24, %21
  %65 = add nuw nsw i64 %22, 1
  %66 = icmp eq i64 %65, %14
  br i1 %66, label %15, label %21, !llvm.loop !95

67:                                               ; preds = %15, %157
  %68 = phi i64 [ 1, %15 ], [ %158, %157 ]
  %69 = icmp eq i64 %68, %19
  br i1 %69, label %157, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %68
  %72 = load i32, ptr %71, align 4, !tbaa !9
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %74 = load i32, ptr %73, align 4, !tbaa !11
  %75 = add i32 %74, %72
  %76 = icmp uge i32 %75, %6
  %77 = icmp ult i32 %72, %6
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %120

79:                                               ; preds = %70
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %81 = trunc nuw nsw i64 %68 to i32
  %82 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %10, i32 %75), !nosanitize !79
  %83 = extractvalue { i32, i1 } %82, 0, !nosanitize !79
  %84 = extractvalue { i32, i1 } %82, 1, !nosanitize !79
  br i1 %84, label %85, label %86, !prof !80, !nosanitize !79

85:                                               ; preds = %79
  tail call void @llvm.ubsantrap(i8 21) #22, !nosanitize !79
  unreachable, !nosanitize !79

86:                                               ; preds = %79
  %87 = lshr i32 %8, 3
  %88 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %89 = load i32, ptr %88, align 4, !tbaa !12
  %90 = add i32 %89, %87
  store i32 %90, ptr %88, align 4, !tbaa !12
  %91 = icmp sgt i32 %83, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = add i32 %83, %74
  store i32 %93, ptr %80, align 4, !tbaa !11
  %94 = mul i32 %83, %2
  %95 = udiv i32 %94, %8
  %96 = add i32 %95, %90
  store i32 %96, ptr %88, align 4, !tbaa !12
  br label %97

97:                                               ; preds = %92, %86
  %98 = phi i32 [ %96, %92 ], [ %90, %86 ]
  %99 = load i64, ptr %71, align 4
  %100 = icmp samesign ugt i64 %68, 1
  br i1 %100, label %101, label %115

101:                                              ; preds = %97, %109
  %102 = phi i64 [ %103, %109 ], [ %68, %97 ]
  %103 = add nsw i64 %102, -1
  %104 = and i64 %103, 4294967295
  %105 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 8
  %107 = load i32, ptr %106, align 4, !tbaa !12
  %108 = icmp ult i32 %107, %98
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %110, ptr noundef nonnull align 4 dereferenceable(12) %105, i64 12, i1 false), !tbaa.struct !75
  %111 = and i64 %103, 4294967294
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %115, label %101, !llvm.loop !96

113:                                              ; preds = %101
  %114 = trunc nuw i64 %102 to i32
  br label %115

115:                                              ; preds = %109, %113, %97
  %116 = phi i32 [ %81, %97 ], [ %114, %113 ], [ 1, %109 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds nuw %struct.dictItem, ptr %0, i64 %117
  store i64 %99, ptr %118, align 4
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i32 %98, ptr %119, align 4, !tbaa !5
  br label %160

120:                                              ; preds = %70
  %121 = zext i32 %72 to i64
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 %121
  %123 = load i64, ptr %122, align 1, !tbaa !13
  %124 = load i64, ptr %18, align 1, !tbaa !13
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %120
  %127 = zext i32 %74 to i64
  %128 = icmp eq i32 %74, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %126, %136
  %130 = phi i64 [ %137, %136 ], [ 0, %126 ]
  %131 = getelementptr inbounds nuw i8, ptr %122, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !31
  %133 = getelementptr inbounds nuw i8, ptr %18, i64 %130
  %134 = load i8, ptr %133, align 1, !tbaa !31
  %135 = icmp eq i8 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = add nuw nsw i64 %130, 1
  %138 = icmp eq i64 %137, %127
  br i1 %138, label %142, label %129, !llvm.loop !97

139:                                              ; preds = %129, %126
  %140 = phi i64 [ 0, %126 ], [ %130, %129 ]
  %141 = icmp eq i64 %140, %127
  br i1 %141, label %142, label %157

142:                                              ; preds = %139, %136
  %143 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %144 = trunc i64 %68 to i32
  %145 = sub i32 %8, %74
  %146 = tail call i32 @llvm.umax.i32(i32 %145, i32 1)
  %147 = zext i32 %146 to i64
  store i32 %6, ptr %71, align 4, !tbaa !9
  %148 = zext i32 %2 to i64
  %149 = mul nuw i64 %147, %148
  %150 = udiv i64 %149, %7
  %151 = trunc i64 %150 to i32
  %152 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %153 = load i32, ptr %152, align 4, !tbaa !12
  %154 = add i32 %153, %151
  store i32 %154, ptr %152, align 4, !tbaa !12
  %155 = add i32 %74, 1
  %156 = tail call i32 @llvm.umin.i32(i32 %155, i32 %8)
  store i32 %156, ptr %143, align 4, !tbaa !11
  br label %160

157:                                              ; preds = %120, %139, %67
  %158 = add nuw nsw i64 %68, 1
  %159 = icmp eq i64 %158, %20
  br i1 %159, label %160, label %67, !llvm.loop !98

160:                                              ; preds = %157, %5, %142, %115, %59
  %161 = phi i32 [ %60, %59 ], [ %116, %115 ], [ %144, %142 ], [ 0, %5 ], [ 0, %157 ]
  ret i32 %161
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #15

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_finalizeDictionary.cold.1() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = tail call i32 @fflush(ptr noundef %4)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %6) #23
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.1() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.2() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.3(i64 %0) #16 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = trunc i64 %0 to i32
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %4) #21
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = call i32 @fflush(ptr noundef %6)
  br label %8

8:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.4(ptr %0, i64 %1) #16 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %4) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = call i32 @fflush(ptr noundef %6)
  br label %8

8:                                                ; preds = %3, %8
  %9 = phi i64 [ 0, %3 ], [ %17, %8 ]
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  %11 = getelementptr inbounds nuw [31 x i32], ptr %0, i64 0, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = trunc nuw nsw i64 %9 to i32
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %12) #21
  %15 = load ptr, ptr @stderr, align 8, !tbaa !72
  %16 = call i32 @fflush(ptr noundef %15)
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %8, !llvm.loop !99

19:                                               ; preds = %8
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.5() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.6() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.7, i64 99, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.7() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.8() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.9() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.10() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.11() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.12() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.13() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_analyzeEntropy.cold.14() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %2) #23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.1() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.2() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 2000) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.3(i64 %0, i32 %1) #16 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = lshr i64 %0, 20
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef %6) #21
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.4(i1 %0, i32 %1) #16 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %4) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i32 @fflush(ptr noundef %6)
  br i1 %0, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef %1) #21
  %11 = load ptr, ptr @stderr, align 8, !tbaa !72
  %12 = tail call i32 @fflush(ptr noundef %11)
  br label %13

13:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.5(i32 %0, i32 %1) #16 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i32 @fflush(ptr noundef %6)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef %0, i32 noundef 7, i32 noundef %1) #21
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  %11 = tail call i32 @fflush(ptr noundef %10)
  %12 = load ptr, ptr @stderr, align 8, !tbaa !72
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  %14 = load ptr, ptr @stderr, align 8, !tbaa !72
  %15 = tail call i32 @fflush(ptr noundef %14)
  br label %16

16:                                               ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.6(i32 %0, i32 %1) #16 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = add nsw i32 %0, -1
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef 0) #21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 @fflush(ptr noundef %7)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  %10 = add nsw i32 %1, -1
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %10) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !72
  %13 = tail call i32 @fflush(ptr noundef %12)
  br label %14

14:                                               ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.7(i64 %0, ptr %1, ptr %2, ptr %3) #16 {
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i64 %0, -1
  %7 = and i64 %6, 7
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i64 8, i64 %7
  %10 = sub nsw i64 %6, %9
  %11 = add nsw i64 %10, 1
  store i64 %11, ptr %2, align 8
  br label %15

12:                                               ; preds = %15
  %13 = add <4 x i32> %52, %51
  %14 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  store i32 %14, ptr %3, align 4
  br label %55

15:                                               ; preds = %15, %5
  %16 = phi i64 [ 0, %5 ], [ %53, %15 ]
  %17 = phi <4 x i32> [ zeroinitializer, %5 ], [ %51, %15 ]
  %18 = phi <4 x i32> [ zeroinitializer, %5 ], [ %52, %15 ]
  %19 = or disjoint i64 %16, 1
  %20 = or disjoint i64 %16, 2
  %21 = or disjoint i64 %16, 3
  %22 = or disjoint i64 %16, 4
  %23 = or disjoint i64 %16, 5
  %24 = or disjoint i64 %16, 6
  %25 = or disjoint i64 %16, 7
  %26 = add i64 %16, 8
  %27 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %19, i32 1
  %28 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %20, i32 1
  %29 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %21, i32 1
  %30 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %22, i32 1
  %31 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %23, i32 1
  %32 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %24, i32 1
  %33 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %25, i32 1
  %34 = getelementptr inbounds nuw %struct.dictItem, ptr %1, i64 %26, i32 1
  %35 = load i32, ptr %27, align 4, !tbaa !11
  %36 = load i32, ptr %28, align 4, !tbaa !11
  %37 = load i32, ptr %29, align 4, !tbaa !11
  %38 = load i32, ptr %30, align 4, !tbaa !11
  %39 = insertelement <4 x i32> poison, i32 %35, i64 0
  %40 = insertelement <4 x i32> %39, i32 %36, i64 1
  %41 = insertelement <4 x i32> %40, i32 %37, i64 2
  %42 = insertelement <4 x i32> %41, i32 %38, i64 3
  %43 = load i32, ptr %31, align 4, !tbaa !11
  %44 = load i32, ptr %32, align 4, !tbaa !11
  %45 = load i32, ptr %33, align 4, !tbaa !11
  %46 = load i32, ptr %34, align 4, !tbaa !11
  %47 = insertelement <4 x i32> poison, i32 %43, i64 0
  %48 = insertelement <4 x i32> %47, i32 %44, i64 1
  %49 = insertelement <4 x i32> %48, i32 %45, i64 2
  %50 = insertelement <4 x i32> %49, i32 %46, i64 3
  %51 = add <4 x i32> %42, %17
  %52 = add <4 x i32> %50, %18
  %53 = add nuw i64 %16, 8
  %54 = icmp eq i64 %53, %10
  br i1 %54, label %12, label %15, !llvm.loop !100

55:                                               ; preds = %12
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.8(i64 %0) #16 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = lshr i64 %0, 20
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5) #21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 @fflush(ptr noundef %7)
  br label %9

9:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.9(i32 %0) #16 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = add i32 %0, 1
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %4) #21
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i32 @fflush(ptr noundef %6)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %8) #23
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  %11 = tail call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_legacy.cold.10(i64 %0, i32 %1, i32 %2) #16 {
  br label %4

4:                                                ; preds = %3
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = trunc i64 %0 to i32
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %1, i32 noundef %6) #21
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 @fflush(ptr noundef %8)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %2) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !72
  %13 = tail call i32 @fflush(ptr noundef %12)
  %14 = load ptr, ptr @stderr, align 8, !tbaa !72
  %15 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %14) #23
  %16 = load ptr, ptr @stderr, align 8, !tbaa !72
  %17 = tail call i32 @fflush(ptr noundef %16)
  br label %18

18:                                               ; preds = %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_addEntropyTablesFromBuffer_advanced.cold.1() #16 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = tail call i32 @fflush(ptr noundef %4)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %6) #23
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 @fflush(ptr noundef %8)
  br label %10

10:                                               ; preds = %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noinline }
attributes #21 = { cold nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!10, !6, i64 4}
!12 = !{!10, !6, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !16, !18, !17}
!20 = distinct !{!20, !16, !17, !18}
!21 = distinct !{!21, !16, !18, !17}
!22 = !{!23, !6, i64 0}
!23 = !{!"", !24, i64 0, !10, i64 28}
!24 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!25 = !{!26, !29, i64 16}
!26 = !{!"", !27, i64 0, !27, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !14, i64 56, !14, i64 64, !6, i64 72, !6, i64 76}
!27 = !{!"p1 _ZTS8SeqDef_s", !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!26, !29, i64 24}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !16}
!35 = !{!26, !27, i64 8}
!36 = !{!26, !27, i64 0}
!37 = !{!26, !29, i64 48}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !33}
!40 = !{!26, !29, i64 40}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !33}
!43 = !{!26, !29, i64 32}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !33}
!46 = !{!47, !6, i64 0}
!47 = !{!"SeqDef_s", !6, i64 0, !48, i64 4, !48, i64 6}
!48 = !{!"short", !7, i64 0}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16, !17, !18}
!51 = distinct !{!51, !16, !18, !17}
!52 = distinct !{!52, !16, !17, !18}
!53 = distinct !{!53, !16, !18, !17}
!54 = distinct !{!54, !16, !17, !18}
!55 = distinct !{!55, !16, !18, !17}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !16}
!60 = !{!48, !48, i64 0}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTS8_IO_FILE", !28, i64 0}
!74 = distinct !{!74, !16}
!75 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = !{}
!80 = !{!"branch_weights", i32 1, i32 1048575}
!81 = distinct !{!81, !16, !18, !17}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16, !17, !18}
!85 = distinct !{!85, !16, !18, !17}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = !{!90, !6, i64 4}
!90 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !91, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !10, i64 44}
!91 = !{!"double", !7, i64 0}
!92 = !{!90, !6, i64 12}
!93 = !{!90, !6, i64 44}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16}
!100 = distinct !{!100, !16, !17, !18}
