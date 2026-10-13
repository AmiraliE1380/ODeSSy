; ModuleID = '/mydata/zstd/lib/dictBuilder/zdict.c'
source_filename = "/mydata/zstd/lib/dictBuilder/zdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }
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
define dso_local noundef i32 @ZDICT_isError(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZDICT_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, -119
  %3 = trunc i64 %0 to i32
  %4 = sub i32 0, %3
  %5 = select i1 %2, i32 0, i32 %4
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #16
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZDICT_getDictID(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ult i64 %1, 8
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i32 %5, -332356553
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i64 4
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
  %8 = tail call noalias dereferenceable_or_null(5632) ptr @malloc(i64 noundef 5632) #17
  %9 = tail call noalias dereferenceable_or_null(8704) ptr @malloc(i64 noundef 8704) #17
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @ZSTD_reset_compressedBlockState(ptr noundef nonnull %8) #16
  %14 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %0, i64 noundef %1) #16
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi i64 [ %14, %13 ], [ -64, %7 ]
  tail call void @free(ptr noundef %8) #16
  tail call void @free(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %2, %4, %15
  %18 = phi i64 [ %16, %15 ], [ -30, %4 ], [ -30, %2 ]
  ret i64 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @ZSTD_reset_compressedBlockState(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_loadCEntropy(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_finalizeDictionary(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef readonly byval(%struct.ZDICT_params_t) align 8 %7) local_unnamed_addr #1 {
  %9 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  %10 = load i32, ptr %7, align 8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 3, i32 %10
  %13 = getelementptr inbounds %struct.ZDICT_params_t, ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %15 = icmp ult i64 %1, %3
  %16 = icmp ult i64 %1, 256
  %17 = or i1 %16, %15
  br i1 %17, label %60, label %18

18:                                               ; preds = %8
  store i32 -332356553, ptr %9, align 16, !tbaa !5
  %19 = tail call i64 @ZSTD_XXH64(ptr nocapture noundef %2, i64 noundef %3, i64 noundef 0) #18
  %20 = urem i64 %19, 2147450880
  %21 = trunc i64 %20 to i32
  %22 = add nuw nsw i32 %21, 32768
  %23 = getelementptr inbounds %struct.ZDICT_params_t, ptr %7, i64 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %22, i32 %24
  %27 = getelementptr inbounds i8, ptr %9, i64 4
  store i32 %26, ptr %27, align 4, !tbaa !5
  %28 = icmp ugt i32 %14, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load ptr, ptr @stderr, align 8, !tbaa !11
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  %32 = load ptr, ptr @stderr, align 8, !tbaa !11
  %33 = tail call i32 @fflush(ptr noundef %32)
  %34 = load ptr, ptr @stderr, align 8, !tbaa !11
  %35 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %34) #19
  %36 = load ptr, ptr @stderr, align 8, !tbaa !11
  %37 = tail call i32 @fflush(ptr noundef %36)
  br label %38

38:                                               ; preds = %18, %29
  %39 = getelementptr inbounds i8, ptr %9, i64 8
  %40 = call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %39, i64 noundef 248, i32 noundef %12, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %14)
  %41 = icmp ult i64 %40, -119
  %42 = add i64 %40, 8
  br i1 %41, label %43, label %60

43:                                               ; preds = %38
  %44 = add i64 %42, %3
  %45 = icmp ugt i64 %44, %1
  %46 = sub i64 %1, %42
  %47 = select i1 %45, i64 %46, i64 %3
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = add nuw i64 %40, 16
  %51 = icmp ugt i64 %50, %1
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = sub nuw nsw i64 8, %47
  br label %54

54:                                               ; preds = %43, %52
  %55 = phi i64 [ %53, %52 ], [ 0, %43 ]
  %56 = add i64 %47, %42
  %57 = add i64 %56, %55
  %58 = getelementptr inbounds i8, ptr %0, i64 %42
  %59 = getelementptr inbounds i8, ptr %58, i64 %55
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %59, ptr align 1 %2, i64 %47, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %9, i64 %42, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %58, i8 0, i64 %55, i1 false)
  br label %60

60:                                               ; preds = %49, %8, %38, %54
  %61 = phi i64 [ %57, %54 ], [ %40, %38 ], [ -70, %8 ], [ -70, %49 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  ret i64 %61
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr nocapture noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_analyzeEntropy(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #1 {
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
  %21 = alloca %struct.ZSTD_parameters, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %13) #16
  %22 = trunc i64 %7 to i32
  %23 = add i32 %22, 131072
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 true), !range !13
  %25 = xor i32 %24, 31
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %19) #16
  %26 = icmp eq i32 %5, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %9
  %28 = zext i32 %5 to i64
  %29 = icmp ult i32 %5, 4
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = and i64 %28, 4294967292
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %42, %32 ]
  %34 = phi <2 x i64> [ zeroinitializer, %30 ], [ %40, %32 ]
  %35 = phi <2 x i64> [ zeroinitializer, %30 ], [ %41, %32 ]
  %36 = getelementptr inbounds i64, ptr %4, i64 %33
  %37 = getelementptr inbounds i64, ptr %36, i64 2
  %38 = load <2 x i64>, ptr %36, align 8, !tbaa !14
  %39 = load <2 x i64>, ptr %37, align 8, !tbaa !14
  %40 = add <2 x i64> %38, %34
  %41 = add <2 x i64> %39, %35
  %42 = add nuw i64 %33, 4
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %44, label %32, !llvm.loop !16

44:                                               ; preds = %32
  %45 = add <2 x i64> %41, %40
  %46 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %45)
  %47 = icmp eq i64 %31, %28
  br i1 %47, label %59, label %48

48:                                               ; preds = %27, %44
  %49 = phi i64 [ 0, %27 ], [ %31, %44 ]
  %50 = phi i64 [ 0, %27 ], [ %46, %44 ]
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i64 [ %57, %51 ], [ %49, %48 ]
  %53 = phi i64 [ %56, %51 ], [ %50, %48 ]
  %54 = getelementptr inbounds i64, ptr %4, i64 %52
  %55 = load i64, ptr %54, align 8, !tbaa !14
  %56 = add i64 %55, %53
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %57, %28
  br i1 %58, label %59, label %51, !llvm.loop !20

59:                                               ; preds = %51, %44, %9
  %60 = phi i64 [ 0, %9 ], [ %46, %44 ], [ %56, %51 ]
  %61 = zext i1 %26 to i32
  %62 = add i32 %61, %5
  %63 = zext i32 %62 to i64
  %64 = udiv i64 %60, %63
  call void @llvm.lifetime.start.p0(i64 4864, ptr nonnull %20) #16
  %65 = icmp eq i32 %24, 0
  br i1 %65, label %740, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, ptr %10, i64 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %10, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %67, align 16, !tbaa !5
  %68 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 8
  %69 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 12
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %68, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %69, align 16, !tbaa !5
  %70 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 16
  %71 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 20
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %70, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %71, align 16, !tbaa !5
  %72 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 24
  %73 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 28
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %72, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %73, align 16, !tbaa !5
  %74 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 32
  %75 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 36
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %74, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %75, align 16, !tbaa !5
  %76 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 40
  %77 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 44
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %76, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %77, align 16, !tbaa !5
  %78 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 48
  %79 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 52
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %78, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %79, align 16, !tbaa !5
  %80 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 56
  %81 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 60
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %80, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %81, align 16, !tbaa !5
  %82 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 64
  %83 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 68
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %82, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %83, align 16, !tbaa !5
  %84 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 72
  %85 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 76
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %84, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %85, align 16, !tbaa !5
  %86 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 80
  %87 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 84
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %86, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %87, align 16, !tbaa !5
  %88 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 88
  %89 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 92
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %88, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %89, align 16, !tbaa !5
  %90 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 96
  %91 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 100
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %90, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %91, align 16, !tbaa !5
  %92 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 104
  %93 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 108
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %92, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %93, align 16, !tbaa !5
  %94 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 112
  %95 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 116
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %94, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %95, align 16, !tbaa !5
  %96 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 120
  %97 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 124
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %96, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %97, align 16, !tbaa !5
  %98 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 128
  %99 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 132
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %98, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %99, align 16, !tbaa !5
  %100 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 136
  %101 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 140
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %100, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %101, align 16, !tbaa !5
  %102 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 144
  %103 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 148
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %102, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %103, align 16, !tbaa !5
  %104 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 152
  %105 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 156
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %104, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %105, align 16, !tbaa !5
  %106 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 160
  %107 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 164
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %106, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %107, align 16, !tbaa !5
  %108 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 168
  %109 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 172
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %108, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %109, align 16, !tbaa !5
  %110 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 176
  %111 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 180
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %110, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %111, align 16, !tbaa !5
  %112 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 184
  %113 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 188
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %112, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %113, align 16, !tbaa !5
  %114 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 192
  %115 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 196
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %114, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %115, align 16, !tbaa !5
  %116 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 200
  %117 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 204
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %116, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %117, align 16, !tbaa !5
  %118 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 208
  %119 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 212
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %118, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %119, align 16, !tbaa !5
  %120 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 216
  %121 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 220
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %120, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %121, align 16, !tbaa !5
  %122 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 224
  %123 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 228
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %122, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %123, align 16, !tbaa !5
  %124 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 232
  %125 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 236
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %124, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %125, align 16, !tbaa !5
  %126 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 240
  %127 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 244
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %126, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %127, align 16, !tbaa !5
  %128 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 248
  %129 = getelementptr inbounds [256 x i32], ptr %10, i64 0, i64 252
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %128, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %129, align 16, !tbaa !5
  %130 = sub nuw nsw i32 32, %24
  %131 = zext nneg i32 %130 to i64
  %132 = icmp ult i32 %23, 8
  br i1 %132, label %142, label %133

133:                                              ; preds = %66
  %134 = and i64 %131, 60
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %138, %135 ]
  %137 = getelementptr inbounds [31 x i32], ptr %12, i64 0, i64 %136
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %137, align 16, !tbaa !5
  %138 = add nuw i64 %136, 4
  %139 = icmp eq i64 %138, %134
  br i1 %139, label %140, label %135, !llvm.loop !21

140:                                              ; preds = %135
  %141 = icmp eq i64 %134, %131
  br i1 %141, label %149, label %142

142:                                              ; preds = %66, %140
  %143 = phi i64 [ 0, %66 ], [ %134, %140 ]
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi i64 [ %147, %144 ], [ %143, %142 ]
  %146 = getelementptr inbounds [31 x i32], ptr %12, i64 0, i64 %145
  store i32 1, ptr %146, align 4, !tbaa !5
  %147 = add nuw nsw i64 %145, 1
  %148 = icmp eq i64 %147, %131
  br i1 %148, label %149, label %144, !llvm.loop !22

149:                                              ; preds = %144, %140
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %14, align 16, !tbaa !5
  %150 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %150, align 16, !tbaa !5
  %151 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 8
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %151, align 16, !tbaa !5
  %152 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 12
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %152, align 16, !tbaa !5
  %153 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 16
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %153, align 16, !tbaa !5
  %154 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 20
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %154, align 16, !tbaa !5
  %155 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 24
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %155, align 16, !tbaa !5
  %156 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 28
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %156, align 16, !tbaa !5
  %157 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 32
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %157, align 16, !tbaa !5
  %158 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 36
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %158, align 16, !tbaa !5
  %159 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 40
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %159, align 16, !tbaa !5
  %160 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 44
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %160, align 16, !tbaa !5
  %161 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 48
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %161, align 16, !tbaa !5
  %162 = getelementptr inbounds [53 x i32], ptr %14, i64 0, i64 52
  store i32 1, ptr %162, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %16, align 16, !tbaa !5
  %163 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %163, align 16, !tbaa !5
  %164 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 8
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %164, align 16, !tbaa !5
  %165 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 12
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %165, align 16, !tbaa !5
  %166 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 16
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %166, align 16, !tbaa !5
  %167 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 20
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %167, align 16, !tbaa !5
  %168 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 24
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %168, align 16, !tbaa !5
  %169 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 28
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %169, align 16, !tbaa !5
  %170 = getelementptr inbounds [36 x i32], ptr %16, i64 0, i64 32
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %170, align 16, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %18, i8 0, i64 4096, i1 false)
  %171 = getelementptr inbounds [1024 x i32], ptr %18, i64 0, i64 8
  store i32 1, ptr %171, align 16, !tbaa !5
  %172 = getelementptr inbounds [1024 x i32], ptr %18, i64 0, i64 4
  store i32 1, ptr %172, align 16, !tbaa !5
  %173 = getelementptr inbounds [1024 x i32], ptr %18, i64 0, i64 1
  store i32 1, ptr %173, align 4, !tbaa !5
  %174 = icmp eq i32 %2, 0
  %175 = select i1 %174, i32 3, i32 %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %21) #16
  call void @ZSTD_getParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_parameters) align 4 %21, i32 noundef %175, i64 noundef %64, i64 noundef %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(40) %21, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %21) #16
  %176 = call ptr @ZSTD_createCDict_advanced(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %19, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #16
  %177 = call ptr @ZSTD_createCCtx() #16
  %178 = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #17
  %179 = icmp ne ptr %176, null
  %180 = icmp ne ptr %177, null
  %181 = select i1 %179, i1 %180, i1 false
  %182 = icmp ne ptr %178, null
  %183 = and i1 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %149
  br i1 %26, label %486, label %185

185:                                              ; preds = %184
  %186 = icmp eq i32 %8, 0
  %187 = icmp ugt i32 %8, 2
  %188 = zext i32 %5 to i64
  br label %196

189:                                              ; preds = %149
  %190 = icmp eq i32 %8, 0
  br i1 %190, label %740, label %191

191:                                              ; preds = %189
  %192 = load ptr, ptr @stderr, align 8, !tbaa !11
  %193 = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %192) #19
  %194 = load ptr, ptr @stderr, align 8, !tbaa !11
  %195 = call i32 @fflush(ptr noundef %194)
  br label %740

196:                                              ; preds = %185, %481
  %197 = phi i64 [ 0, %185 ], [ %484, %481 ]
  %198 = phi i64 [ 0, %185 ], [ %483, %481 ]
  %199 = getelementptr inbounds i64, ptr %4, i64 %197
  %200 = load i64, ptr %199, align 8, !tbaa !14
  %201 = load i32, ptr %19, align 8, !tbaa !24
  %202 = shl nuw i32 1, %201
  %203 = call i32 @llvm.smin.i32(i32 %202, i32 131072)
  %204 = sext i32 %203 to i64
  %205 = call i64 @llvm.umin.i64(i64 %204, i64 %200)
  %206 = call i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %177, ptr noundef %176) #16
  %207 = icmp ult i64 %206, -119
  br i1 %207, label %214, label %208

208:                                              ; preds = %196
  br i1 %186, label %481, label %209

209:                                              ; preds = %208
  %210 = load ptr, ptr @stderr, align 8, !tbaa !11
  %211 = call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %210) #19
  %212 = load ptr, ptr @stderr, align 8, !tbaa !11
  %213 = call i32 @fflush(ptr noundef %212)
  br label %481

214:                                              ; preds = %196
  %215 = getelementptr inbounds i8, ptr %3, i64 %198
  %216 = call i64 @ZSTD_compressBlock_deprecated(ptr noundef %177, ptr noundef %178, i64 noundef 131072, ptr noundef %215, i64 noundef %205) #16
  %217 = icmp ult i64 %216, -119
  br i1 %217, label %225, label %218

218:                                              ; preds = %214
  br i1 %187, label %219, label %481

219:                                              ; preds = %218
  %220 = load ptr, ptr @stderr, align 8, !tbaa !11
  %221 = trunc i64 %205 to i32
  %222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.17, i32 noundef %221) #19
  %223 = load ptr, ptr @stderr, align 8, !tbaa !11
  %224 = call i32 @fflush(ptr noundef %223)
  br label %481

225:                                              ; preds = %214
  %226 = icmp eq i64 %216, 0
  br i1 %226, label %481, label %227

227:                                              ; preds = %225
  %228 = call ptr @ZSTD_getSeqStore(ptr noundef %177) #16
  %229 = getelementptr inbounds %struct.SeqStore_t, ptr %228, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !27
  %231 = getelementptr inbounds %struct.SeqStore_t, ptr %228, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !29
  %233 = icmp ult ptr %230, %232
  br i1 %233, label %234, label %282

234:                                              ; preds = %227
  %235 = ptrtoint ptr %232 to i64
  %236 = ptrtoint ptr %230 to i64
  %237 = sub i64 %235, %236
  %238 = and i64 %237, 3
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %251, label %240

240:                                              ; preds = %234, %240
  %241 = phi ptr [ %248, %240 ], [ %230, %234 ]
  %242 = phi i64 [ %249, %240 ], [ 0, %234 ]
  %243 = load i8, ptr %241, align 1, !tbaa !30
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds i32, ptr %10, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !5
  %247 = add i32 %246, 1
  store i32 %247, ptr %245, align 4, !tbaa !5
  %248 = getelementptr inbounds i8, ptr %241, i64 1
  %249 = add i64 %242, 1
  %250 = icmp eq i64 %249, %238
  br i1 %250, label %251, label %240, !llvm.loop !31

251:                                              ; preds = %240, %234
  %252 = phi ptr [ %230, %234 ], [ %248, %240 ]
  %253 = sub i64 %236, %235
  %254 = icmp ugt i64 %253, -4
  br i1 %254, label %282, label %255

255:                                              ; preds = %251, %255
  %256 = phi ptr [ %280, %255 ], [ %252, %251 ]
  %257 = load i8, ptr %256, align 1, !tbaa !30
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds i32, ptr %10, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !5
  %261 = add i32 %260, 1
  store i32 %261, ptr %259, align 4, !tbaa !5
  %262 = getelementptr inbounds i8, ptr %256, i64 1
  %263 = load i8, ptr %262, align 1, !tbaa !30
  %264 = zext i8 %263 to i64
  %265 = getelementptr inbounds i32, ptr %10, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !5
  %267 = add i32 %266, 1
  store i32 %267, ptr %265, align 4, !tbaa !5
  %268 = getelementptr inbounds i8, ptr %256, i64 2
  %269 = load i8, ptr %268, align 1, !tbaa !30
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds i32, ptr %10, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !5
  %273 = add i32 %272, 1
  store i32 %273, ptr %271, align 4, !tbaa !5
  %274 = getelementptr inbounds i8, ptr %256, i64 3
  %275 = load i8, ptr %274, align 1, !tbaa !30
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds i32, ptr %10, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !5
  %279 = add i32 %278, 1
  store i32 %279, ptr %277, align 4, !tbaa !5
  %280 = getelementptr inbounds i8, ptr %256, i64 4
  %281 = icmp eq ptr %280, %232
  br i1 %281, label %282, label %255, !llvm.loop !33

282:                                              ; preds = %251, %255, %227
  %283 = getelementptr inbounds %struct.SeqStore_t, ptr %228, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !34
  %285 = load ptr, ptr %228, align 8, !tbaa !35
  %286 = ptrtoint ptr %284 to i64
  %287 = ptrtoint ptr %285 to i64
  %288 = sub i64 %286, %287
  %289 = lshr i64 %288, 3
  %290 = trunc i64 %289 to i32
  %291 = call i32 @ZSTD_seqToCodes(ptr noundef nonnull %228) #16
  %292 = getelementptr inbounds %struct.SeqStore_t, ptr %228, i64 0, i32 6
  %293 = load ptr, ptr %292, align 8, !tbaa !36
  %294 = icmp eq i32 %290, 0
  br i1 %294, label %481, label %295

295:                                              ; preds = %282
  %296 = and i64 %289, 4294967295
  %297 = add nsw i64 %296, -1
  %298 = and i64 %289, 3
  %299 = icmp ult i64 %297, 3
  br i1 %299, label %335, label %300

300:                                              ; preds = %295
  %301 = sub nsw i64 %296, %298
  br label %302

302:                                              ; preds = %302, %300
  %303 = phi i64 [ 0, %300 ], [ %332, %302 ]
  %304 = phi i64 [ 0, %300 ], [ %333, %302 ]
  %305 = getelementptr inbounds i8, ptr %293, i64 %303
  %306 = load i8, ptr %305, align 1, !tbaa !30
  %307 = zext i8 %306 to i64
  %308 = getelementptr inbounds i32, ptr %12, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !5
  %310 = add i32 %309, 1
  store i32 %310, ptr %308, align 4, !tbaa !5
  %311 = or disjoint i64 %303, 1
  %312 = getelementptr inbounds i8, ptr %293, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !30
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds i32, ptr %12, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !5
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 4, !tbaa !5
  %318 = or disjoint i64 %303, 2
  %319 = getelementptr inbounds i8, ptr %293, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !30
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds i32, ptr %12, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !5
  %324 = add i32 %323, 1
  store i32 %324, ptr %322, align 4, !tbaa !5
  %325 = or disjoint i64 %303, 3
  %326 = getelementptr inbounds i8, ptr %293, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !30
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds i32, ptr %12, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !5
  %331 = add i32 %330, 1
  store i32 %331, ptr %329, align 4, !tbaa !5
  %332 = add nuw nsw i64 %303, 4
  %333 = add i64 %304, 4
  %334 = icmp eq i64 %333, %301
  br i1 %334, label %335, label %302, !llvm.loop !37

335:                                              ; preds = %302, %295
  %336 = phi i64 [ 0, %295 ], [ %332, %302 ]
  %337 = icmp eq i64 %298, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %335, %338
  %339 = phi i64 [ %347, %338 ], [ %336, %335 ]
  %340 = phi i64 [ %348, %338 ], [ 0, %335 ]
  %341 = getelementptr inbounds i8, ptr %293, i64 %339
  %342 = load i8, ptr %341, align 1, !tbaa !30
  %343 = zext i8 %342 to i64
  %344 = getelementptr inbounds i32, ptr %12, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !5
  %346 = add i32 %345, 1
  store i32 %346, ptr %344, align 4, !tbaa !5
  %347 = add nuw nsw i64 %339, 1
  %348 = add i64 %340, 1
  %349 = icmp eq i64 %348, %298
  br i1 %349, label %350, label %338, !llvm.loop !38

350:                                              ; preds = %338, %335
  %351 = getelementptr inbounds %struct.SeqStore_t, ptr %228, i64 0, i32 5
  %352 = load ptr, ptr %351, align 8, !tbaa !39
  %353 = and i64 %289, 3
  %354 = icmp ult i64 %297, 3
  br i1 %354, label %390, label %355

355:                                              ; preds = %350
  %356 = sub nsw i64 %296, %353
  br label %357

357:                                              ; preds = %357, %355
  %358 = phi i64 [ 0, %355 ], [ %387, %357 ]
  %359 = phi i64 [ 0, %355 ], [ %388, %357 ]
  %360 = getelementptr inbounds i8, ptr %352, i64 %358
  %361 = load i8, ptr %360, align 1, !tbaa !30
  %362 = zext i8 %361 to i64
  %363 = getelementptr inbounds i32, ptr %14, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !5
  %365 = add i32 %364, 1
  store i32 %365, ptr %363, align 4, !tbaa !5
  %366 = or disjoint i64 %358, 1
  %367 = getelementptr inbounds i8, ptr %352, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !30
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds i32, ptr %14, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !5
  %372 = add i32 %371, 1
  store i32 %372, ptr %370, align 4, !tbaa !5
  %373 = or disjoint i64 %358, 2
  %374 = getelementptr inbounds i8, ptr %352, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !30
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds i32, ptr %14, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !5
  %379 = add i32 %378, 1
  store i32 %379, ptr %377, align 4, !tbaa !5
  %380 = or disjoint i64 %358, 3
  %381 = getelementptr inbounds i8, ptr %352, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !30
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds i32, ptr %14, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !5
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 4, !tbaa !5
  %387 = add nuw nsw i64 %358, 4
  %388 = add i64 %359, 4
  %389 = icmp eq i64 %388, %356
  br i1 %389, label %390, label %357, !llvm.loop !40

390:                                              ; preds = %357, %350
  %391 = phi i64 [ 0, %350 ], [ %387, %357 ]
  %392 = icmp eq i64 %353, 0
  br i1 %392, label %405, label %393

393:                                              ; preds = %390, %393
  %394 = phi i64 [ %402, %393 ], [ %391, %390 ]
  %395 = phi i64 [ %403, %393 ], [ 0, %390 ]
  %396 = getelementptr inbounds i8, ptr %352, i64 %394
  %397 = load i8, ptr %396, align 1, !tbaa !30
  %398 = zext i8 %397 to i64
  %399 = getelementptr inbounds i32, ptr %14, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !5
  %401 = add i32 %400, 1
  store i32 %401, ptr %399, align 4, !tbaa !5
  %402 = add nuw nsw i64 %394, 1
  %403 = add i64 %395, 1
  %404 = icmp eq i64 %403, %353
  br i1 %404, label %405, label %393, !llvm.loop !41

405:                                              ; preds = %393, %390
  %406 = getelementptr inbounds %struct.SeqStore_t, ptr %228, i64 0, i32 4
  %407 = load ptr, ptr %406, align 8, !tbaa !42
  %408 = and i64 %289, 3
  %409 = icmp ult i64 %297, 3
  br i1 %409, label %445, label %410

410:                                              ; preds = %405
  %411 = sub nsw i64 %296, %408
  br label %412

412:                                              ; preds = %412, %410
  %413 = phi i64 [ 0, %410 ], [ %442, %412 ]
  %414 = phi i64 [ 0, %410 ], [ %443, %412 ]
  %415 = getelementptr inbounds i8, ptr %407, i64 %413
  %416 = load i8, ptr %415, align 1, !tbaa !30
  %417 = zext i8 %416 to i64
  %418 = getelementptr inbounds i32, ptr %16, i64 %417
  %419 = load i32, ptr %418, align 4, !tbaa !5
  %420 = add i32 %419, 1
  store i32 %420, ptr %418, align 4, !tbaa !5
  %421 = or disjoint i64 %413, 1
  %422 = getelementptr inbounds i8, ptr %407, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !30
  %424 = zext i8 %423 to i64
  %425 = getelementptr inbounds i32, ptr %16, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !5
  %427 = add i32 %426, 1
  store i32 %427, ptr %425, align 4, !tbaa !5
  %428 = or disjoint i64 %413, 2
  %429 = getelementptr inbounds i8, ptr %407, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !30
  %431 = zext i8 %430 to i64
  %432 = getelementptr inbounds i32, ptr %16, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !5
  %434 = add i32 %433, 1
  store i32 %434, ptr %432, align 4, !tbaa !5
  %435 = or disjoint i64 %413, 3
  %436 = getelementptr inbounds i8, ptr %407, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !30
  %438 = zext i8 %437 to i64
  %439 = getelementptr inbounds i32, ptr %16, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !5
  %441 = add i32 %440, 1
  store i32 %441, ptr %439, align 4, !tbaa !5
  %442 = add nuw nsw i64 %413, 4
  %443 = add i64 %414, 4
  %444 = icmp eq i64 %443, %411
  br i1 %444, label %445, label %412, !llvm.loop !43

445:                                              ; preds = %412, %405
  %446 = phi i64 [ 0, %405 ], [ %442, %412 ]
  %447 = icmp eq i64 %408, 0
  br i1 %447, label %460, label %448

448:                                              ; preds = %445, %448
  %449 = phi i64 [ %457, %448 ], [ %446, %445 ]
  %450 = phi i64 [ %458, %448 ], [ 0, %445 ]
  %451 = getelementptr inbounds i8, ptr %407, i64 %449
  %452 = load i8, ptr %451, align 1, !tbaa !30
  %453 = zext i8 %452 to i64
  %454 = getelementptr inbounds i32, ptr %16, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !5
  %456 = add i32 %455, 1
  store i32 %456, ptr %454, align 4, !tbaa !5
  %457 = add nuw nsw i64 %449, 1
  %458 = add i64 %450, 1
  %459 = icmp eq i64 %458, %408
  br i1 %459, label %460, label %448, !llvm.loop !44

460:                                              ; preds = %448, %445
  %461 = icmp eq i32 %290, 1
  br i1 %461, label %481, label %462

462:                                              ; preds = %460
  %463 = load ptr, ptr %228, align 8, !tbaa !35
  %464 = load i32, ptr %463, align 4, !tbaa !45
  %465 = add i32 %464, -3
  %466 = getelementptr inbounds %struct.SeqDef_s, ptr %463, i64 1
  %467 = load i32, ptr %466, align 4, !tbaa !45
  %468 = add i32 %467, -3
  %469 = icmp ugt i32 %465, 1023
  %470 = select i1 %469, i32 0, i32 %465
  %471 = icmp ugt i32 %468, 1023
  %472 = select i1 %471, i32 0, i32 %468
  %473 = zext i32 %470 to i64
  %474 = getelementptr inbounds i32, ptr %18, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !5
  %476 = add i32 %475, 3
  store i32 %476, ptr %474, align 4, !tbaa !5
  %477 = zext i32 %472 to i64
  %478 = getelementptr inbounds i32, ptr %18, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !5
  %480 = add i32 %479, 1
  store i32 %480, ptr %478, align 4, !tbaa !5
  br label %481

481:                                              ; preds = %208, %209, %218, %219, %225, %282, %460, %462
  %482 = load i64, ptr %199, align 8, !tbaa !14
  %483 = add i64 %482, %198
  %484 = add nuw nsw i64 %197, 1
  %485 = icmp eq i64 %484, %188
  br i1 %485, label %486, label %196, !llvm.loop !48

486:                                              ; preds = %481, %184
  %487 = icmp ugt i32 %8, 3
  br i1 %487, label %488, label %504

488:                                              ; preds = %486
  %489 = load ptr, ptr @stderr, align 8, !tbaa !11
  %490 = call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %489) #19
  %491 = load ptr, ptr @stderr, align 8, !tbaa !11
  %492 = call i32 @fflush(ptr noundef %491)
  br label %493

493:                                              ; preds = %488, %493
  %494 = phi i64 [ 0, %488 ], [ %502, %493 ]
  %495 = load ptr, ptr @stderr, align 8, !tbaa !11
  %496 = getelementptr inbounds [31 x i32], ptr %12, i64 0, i64 %494
  %497 = load i32, ptr %496, align 4, !tbaa !5
  %498 = trunc i64 %494 to i32
  %499 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %495, ptr noundef nonnull @.str.5, i32 noundef %498, i32 noundef %497) #19
  %500 = load ptr, ptr @stderr, align 8, !tbaa !11
  %501 = call i32 @fflush(ptr noundef %500)
  %502 = add nuw nsw i64 %494, 1
  %503 = icmp eq i64 %502, %131
  br i1 %503, label %504, label %493, !llvm.loop !49

504:                                              ; preds = %493, %486
  %505 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #16
  %506 = icmp ult i64 %505, -119
  br i1 %506, label %514, label %507

507:                                              ; preds = %504
  %508 = icmp eq i32 %8, 0
  br i1 %508, label %740, label %509

509:                                              ; preds = %507
  %510 = load ptr, ptr @stderr, align 8, !tbaa !11
  %511 = call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr %510) #19
  %512 = load ptr, ptr @stderr, align 8, !tbaa !11
  %513 = call i32 @fflush(ptr noundef %512)
  br label %740

514:                                              ; preds = %504
  %515 = icmp eq i64 %505, 8
  br i1 %515, label %516, label %596

516:                                              ; preds = %514
  %517 = icmp ugt i32 %8, 1
  br i1 %517, label %518, label %523

518:                                              ; preds = %516
  %519 = load ptr, ptr @stderr, align 8, !tbaa !11
  %520 = call i64 @fwrite(ptr nonnull @.str.7, i64 99, i64 1, ptr %519) #19
  %521 = load ptr, ptr @stderr, align 8, !tbaa !11
  %522 = call i32 @fflush(ptr noundef %521)
  br label %523

523:                                              ; preds = %518, %516
  %524 = getelementptr inbounds i32, ptr %10, i64 1
  %525 = getelementptr inbounds i32, ptr %10, i64 5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %524, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %525, align 4, !tbaa !5
  %526 = getelementptr inbounds i32, ptr %10, i64 9
  %527 = getelementptr inbounds i32, ptr %10, i64 13
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %526, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %527, align 4, !tbaa !5
  %528 = getelementptr inbounds i32, ptr %10, i64 17
  %529 = getelementptr inbounds i32, ptr %10, i64 21
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %528, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %529, align 4, !tbaa !5
  %530 = getelementptr inbounds i32, ptr %10, i64 25
  %531 = getelementptr inbounds i32, ptr %10, i64 29
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %530, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %531, align 4, !tbaa !5
  %532 = getelementptr inbounds i32, ptr %10, i64 33
  %533 = getelementptr inbounds i32, ptr %10, i64 37
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %532, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %533, align 4, !tbaa !5
  %534 = getelementptr inbounds i32, ptr %10, i64 41
  %535 = getelementptr inbounds i32, ptr %10, i64 45
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %534, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %535, align 4, !tbaa !5
  %536 = getelementptr inbounds i32, ptr %10, i64 49
  %537 = getelementptr inbounds i32, ptr %10, i64 53
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %536, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %537, align 4, !tbaa !5
  %538 = getelementptr inbounds i32, ptr %10, i64 57
  %539 = getelementptr inbounds i32, ptr %10, i64 61
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %538, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %539, align 4, !tbaa !5
  %540 = getelementptr inbounds i32, ptr %10, i64 65
  %541 = getelementptr inbounds i32, ptr %10, i64 69
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %540, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %541, align 4, !tbaa !5
  %542 = getelementptr inbounds i32, ptr %10, i64 73
  %543 = getelementptr inbounds i32, ptr %10, i64 77
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %542, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %543, align 4, !tbaa !5
  %544 = getelementptr inbounds i32, ptr %10, i64 81
  %545 = getelementptr inbounds i32, ptr %10, i64 85
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %544, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %545, align 4, !tbaa !5
  %546 = getelementptr inbounds i32, ptr %10, i64 89
  %547 = getelementptr inbounds i32, ptr %10, i64 93
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %546, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %547, align 4, !tbaa !5
  %548 = getelementptr inbounds i32, ptr %10, i64 97
  %549 = getelementptr inbounds i32, ptr %10, i64 101
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %548, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %549, align 4, !tbaa !5
  %550 = getelementptr inbounds i32, ptr %10, i64 105
  %551 = getelementptr inbounds i32, ptr %10, i64 109
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %550, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %551, align 4, !tbaa !5
  %552 = getelementptr inbounds i32, ptr %10, i64 113
  %553 = getelementptr inbounds i32, ptr %10, i64 117
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %552, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %553, align 4, !tbaa !5
  %554 = getelementptr inbounds i32, ptr %10, i64 121
  %555 = getelementptr inbounds i32, ptr %10, i64 125
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %554, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %555, align 4, !tbaa !5
  %556 = getelementptr inbounds i32, ptr %10, i64 129
  %557 = getelementptr inbounds i32, ptr %10, i64 133
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %556, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %557, align 4, !tbaa !5
  %558 = getelementptr inbounds i32, ptr %10, i64 137
  %559 = getelementptr inbounds i32, ptr %10, i64 141
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %558, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %559, align 4, !tbaa !5
  %560 = getelementptr inbounds i32, ptr %10, i64 145
  %561 = getelementptr inbounds i32, ptr %10, i64 149
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %560, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %561, align 4, !tbaa !5
  %562 = getelementptr inbounds i32, ptr %10, i64 153
  %563 = getelementptr inbounds i32, ptr %10, i64 157
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %562, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %563, align 4, !tbaa !5
  %564 = getelementptr inbounds i32, ptr %10, i64 161
  %565 = getelementptr inbounds i32, ptr %10, i64 165
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %564, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %565, align 4, !tbaa !5
  %566 = getelementptr inbounds i32, ptr %10, i64 169
  %567 = getelementptr inbounds i32, ptr %10, i64 173
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %566, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %567, align 4, !tbaa !5
  %568 = getelementptr inbounds i32, ptr %10, i64 177
  %569 = getelementptr inbounds i32, ptr %10, i64 181
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %568, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %569, align 4, !tbaa !5
  %570 = getelementptr inbounds i32, ptr %10, i64 185
  %571 = getelementptr inbounds i32, ptr %10, i64 189
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %570, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %571, align 4, !tbaa !5
  %572 = getelementptr inbounds i32, ptr %10, i64 193
  %573 = getelementptr inbounds i32, ptr %10, i64 197
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %572, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %573, align 4, !tbaa !5
  %574 = getelementptr inbounds i32, ptr %10, i64 201
  %575 = getelementptr inbounds i32, ptr %10, i64 205
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %574, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %575, align 4, !tbaa !5
  %576 = getelementptr inbounds i32, ptr %10, i64 209
  %577 = getelementptr inbounds i32, ptr %10, i64 213
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %576, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %577, align 4, !tbaa !5
  %578 = getelementptr inbounds i32, ptr %10, i64 217
  %579 = getelementptr inbounds i32, ptr %10, i64 221
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %578, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %579, align 4, !tbaa !5
  %580 = getelementptr inbounds i32, ptr %10, i64 225
  %581 = getelementptr inbounds i32, ptr %10, i64 229
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %580, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %581, align 4, !tbaa !5
  %582 = getelementptr inbounds i32, ptr %10, i64 233
  %583 = getelementptr inbounds i32, ptr %10, i64 237
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %582, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %583, align 4, !tbaa !5
  %584 = getelementptr inbounds i32, ptr %10, i64 241
  %585 = getelementptr inbounds i32, ptr %10, i64 245
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %584, align 4, !tbaa !5
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, ptr %585, align 4, !tbaa !5
  %586 = getelementptr inbounds i32, ptr %10, i64 249
  store i32 2, ptr %586, align 4, !tbaa !5
  %587 = getelementptr inbounds i32, ptr %10, i64 250
  store i32 2, ptr %587, align 8, !tbaa !5
  %588 = getelementptr inbounds i32, ptr %10, i64 251
  store i32 2, ptr %588, align 4, !tbaa !5
  %589 = getelementptr inbounds i32, ptr %10, i64 252
  store i32 2, ptr %589, align 16, !tbaa !5
  %590 = getelementptr inbounds i32, ptr %10, i64 253
  store i32 2, ptr %590, align 4, !tbaa !5
  %591 = getelementptr inbounds i32, ptr %10, i64 254
  store i32 2, ptr %591, align 8, !tbaa !5
  %592 = getelementptr inbounds i32, ptr %10, i64 255
  store i32 2, ptr %592, align 4, !tbaa !5
  store i32 4, ptr %10, align 16, !tbaa !5
  %593 = getelementptr inbounds i32, ptr %10, i64 253
  store i32 1, ptr %593, align 4, !tbaa !5
  %594 = getelementptr inbounds i32, ptr %10, i64 254
  store i32 1, ptr %594, align 8, !tbaa !5
  %595 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #16
  br label %596

596:                                              ; preds = %514, %523
  %597 = phi i64 [ %595, %523 ], [ %505, %514 ]
  %598 = icmp ult i32 %23, 8
  br i1 %598, label %612, label %599

599:                                              ; preds = %596
  %600 = and i64 %131, 60
  br label %601

601:                                              ; preds = %601, %599
  %602 = phi i64 [ 0, %599 ], [ %607, %601 ]
  %603 = phi <4 x i32> [ zeroinitializer, %599 ], [ %606, %601 ]
  %604 = getelementptr inbounds [31 x i32], ptr %12, i64 0, i64 %602
  %605 = load <4 x i32>, ptr %604, align 16, !tbaa !5
  %606 = add <4 x i32> %605, %603
  %607 = add nuw i64 %602, 4
  %608 = icmp eq i64 %607, %600
  br i1 %608, label %609, label %601, !llvm.loop !50

609:                                              ; preds = %601
  %610 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %606)
  %611 = icmp eq i64 %600, %131
  br i1 %611, label %623, label %612

612:                                              ; preds = %596, %609
  %613 = phi i64 [ 0, %596 ], [ %600, %609 ]
  %614 = phi i32 [ 0, %596 ], [ %610, %609 ]
  br label %615

615:                                              ; preds = %612, %615
  %616 = phi i64 [ %621, %615 ], [ %613, %612 ]
  %617 = phi i32 [ %620, %615 ], [ %614, %612 ]
  %618 = getelementptr inbounds [31 x i32], ptr %12, i64 0, i64 %616
  %619 = load i32, ptr %618, align 4, !tbaa !5
  %620 = add i32 %619, %617
  %621 = add nuw nsw i64 %616, 1
  %622 = icmp eq i64 %621, %131
  br i1 %622, label %623, label %615, !llvm.loop !51

623:                                              ; preds = %615, %609
  %624 = phi i32 [ %610, %609 ], [ %620, %615 ]
  %625 = trunc i64 %597 to i32
  %626 = zext i32 %624 to i64
  %627 = call i64 @FSE_normalizeCount(ptr noundef nonnull %13, i32 noundef 8, ptr noundef nonnull %12, i64 noundef %626, i32 noundef %25, i32 noundef 1) #16
  %628 = icmp ult i64 %627, -119
  br i1 %628, label %636, label %629

629:                                              ; preds = %623
  %630 = icmp eq i32 %8, 0
  br i1 %630, label %740, label %631

631:                                              ; preds = %629
  %632 = load ptr, ptr @stderr, align 8, !tbaa !11
  %633 = call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %632) #19
  %634 = load ptr, ptr @stderr, align 8, !tbaa !11
  %635 = call i32 @fflush(ptr noundef %634)
  br label %740

636:                                              ; preds = %623
  %637 = load <32 x i32>, ptr %14, align 16, !tbaa !5
  %638 = load <16 x i32>, ptr %157, align 16, !tbaa !5
  %639 = load <4 x i32>, ptr %161, align 16, !tbaa !5
  %640 = load i32, ptr %162, align 16, !tbaa !5
  %641 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %637)
  %642 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %638)
  %643 = add i32 %641, %642
  %644 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %639)
  %645 = add i32 %643, %644
  %646 = add i32 %645, %640
  %647 = trunc i64 %627 to i32
  %648 = zext i32 %646 to i64
  %649 = call i64 @FSE_normalizeCount(ptr noundef nonnull %15, i32 noundef 9, ptr noundef nonnull %14, i64 noundef %648, i32 noundef 52, i32 noundef 1) #16
  %650 = icmp ult i64 %649, -119
  br i1 %650, label %658, label %651

651:                                              ; preds = %636
  %652 = icmp eq i32 %8, 0
  br i1 %652, label %740, label %653

653:                                              ; preds = %651
  %654 = load ptr, ptr @stderr, align 8, !tbaa !11
  %655 = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %654) #19
  %656 = load ptr, ptr @stderr, align 8, !tbaa !11
  %657 = call i32 @fflush(ptr noundef %656)
  br label %740

658:                                              ; preds = %636
  %659 = load <32 x i32>, ptr %16, align 16, !tbaa !5
  %660 = load <4 x i32>, ptr %170, align 16, !tbaa !5
  %661 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %659)
  %662 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %660)
  %663 = add i32 %661, %662
  %664 = trunc i64 %649 to i32
  %665 = zext i32 %663 to i64
  %666 = call i64 @FSE_normalizeCount(ptr noundef nonnull %17, i32 noundef 9, ptr noundef nonnull %16, i64 noundef %665, i32 noundef 35, i32 noundef 1) #16
  %667 = icmp ult i64 %666, -119
  br i1 %667, label %675, label %668

668:                                              ; preds = %658
  %669 = icmp eq i32 %8, 0
  br i1 %669, label %740, label %670

670:                                              ; preds = %668
  %671 = load ptr, ptr @stderr, align 8, !tbaa !11
  %672 = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %671) #19
  %673 = load ptr, ptr @stderr, align 8, !tbaa !11
  %674 = call i32 @fflush(ptr noundef %673)
  br label %740

675:                                              ; preds = %658
  %676 = trunc i64 %666 to i32
  %677 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %11, i32 noundef 255, i32 noundef %625, ptr noundef nonnull %20, i64 noundef 4864) #16
  %678 = icmp ult i64 %677, -119
  br i1 %678, label %686, label %679

679:                                              ; preds = %675
  %680 = icmp eq i32 %8, 0
  br i1 %680, label %740, label %681

681:                                              ; preds = %679
  %682 = load ptr, ptr @stderr, align 8, !tbaa !11
  %683 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %682) #19
  %684 = load ptr, ptr @stderr, align 8, !tbaa !11
  %685 = call i32 @fflush(ptr noundef %684)
  br label %740

686:                                              ; preds = %675
  %687 = getelementptr inbounds i8, ptr %0, i64 %677
  %688 = sub i64 %1, %677
  %689 = call i64 @FSE_writeNCount(ptr noundef %687, i64 noundef %688, ptr noundef nonnull %13, i32 noundef 30, i32 noundef %647) #16
  %690 = icmp ult i64 %689, -119
  br i1 %690, label %698, label %691

691:                                              ; preds = %686
  %692 = icmp eq i32 %8, 0
  br i1 %692, label %740, label %693

693:                                              ; preds = %691
  %694 = load ptr, ptr @stderr, align 8, !tbaa !11
  %695 = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %694) #19
  %696 = load ptr, ptr @stderr, align 8, !tbaa !11
  %697 = call i32 @fflush(ptr noundef %696)
  br label %740

698:                                              ; preds = %686
  %699 = getelementptr inbounds i8, ptr %687, i64 %689
  %700 = sub i64 %688, %689
  %701 = call i64 @FSE_writeNCount(ptr noundef %699, i64 noundef %700, ptr noundef nonnull %15, i32 noundef 52, i32 noundef %664) #16
  %702 = icmp ult i64 %701, -119
  br i1 %702, label %710, label %703

703:                                              ; preds = %698
  %704 = icmp eq i32 %8, 0
  br i1 %704, label %740, label %705

705:                                              ; preds = %703
  %706 = load ptr, ptr @stderr, align 8, !tbaa !11
  %707 = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %706) #19
  %708 = load ptr, ptr @stderr, align 8, !tbaa !11
  %709 = call i32 @fflush(ptr noundef %708)
  br label %740

710:                                              ; preds = %698
  %711 = getelementptr inbounds i8, ptr %699, i64 %701
  %712 = sub i64 %700, %701
  %713 = call i64 @FSE_writeNCount(ptr noundef %711, i64 noundef %712, ptr noundef nonnull %17, i32 noundef 35, i32 noundef %676) #16
  %714 = icmp ult i64 %713, -119
  br i1 %714, label %722, label %715

715:                                              ; preds = %710
  %716 = icmp eq i32 %8, 0
  br i1 %716, label %740, label %717

717:                                              ; preds = %715
  %718 = load ptr, ptr @stderr, align 8, !tbaa !11
  %719 = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %718) #19
  %720 = load ptr, ptr @stderr, align 8, !tbaa !11
  %721 = call i32 @fflush(ptr noundef %720)
  br label %740

722:                                              ; preds = %710
  %723 = sub i64 %712, %713
  %724 = icmp ult i64 %723, 12
  br i1 %724, label %725, label %732

725:                                              ; preds = %722
  %726 = icmp eq i32 %8, 0
  br i1 %726, label %740, label %727

727:                                              ; preds = %725
  %728 = load ptr, ptr @stderr, align 8, !tbaa !11
  %729 = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %728) #19
  %730 = load ptr, ptr @stderr, align 8, !tbaa !11
  %731 = call i32 @fflush(ptr noundef %730)
  br label %740

732:                                              ; preds = %722
  %733 = getelementptr inbounds i8, ptr %711, i64 %713
  store i32 1, ptr %733, align 1, !tbaa !5
  %734 = getelementptr inbounds i8, ptr %733, i64 4
  store i32 4, ptr %734, align 1, !tbaa !5
  %735 = getelementptr inbounds i8, ptr %733, i64 8
  store i32 8, ptr %735, align 1, !tbaa !5
  %736 = add nuw i64 %677, 12
  %737 = add i64 %736, %689
  %738 = add i64 %737, %701
  %739 = add i64 %738, %713
  br label %740

740:                                              ; preds = %715, %717, %703, %705, %691, %693, %679, %681, %507, %509, %59, %725, %727, %668, %670, %651, %653, %629, %631, %189, %191, %732
  %741 = phi ptr [ null, %59 ], [ %176, %725 ], [ %176, %727 ], [ %176, %732 ], [ %176, %668 ], [ %176, %670 ], [ %176, %651 ], [ %176, %653 ], [ %176, %629 ], [ %176, %631 ], [ %176, %189 ], [ %176, %191 ], [ %176, %509 ], [ %176, %507 ], [ %176, %681 ], [ %176, %679 ], [ %176, %693 ], [ %176, %691 ], [ %176, %705 ], [ %176, %703 ], [ %176, %717 ], [ %176, %715 ]
  %742 = phi ptr [ null, %59 ], [ %177, %725 ], [ %177, %727 ], [ %177, %732 ], [ %177, %668 ], [ %177, %670 ], [ %177, %651 ], [ %177, %653 ], [ %177, %629 ], [ %177, %631 ], [ %177, %189 ], [ %177, %191 ], [ %177, %509 ], [ %177, %507 ], [ %177, %681 ], [ %177, %679 ], [ %177, %693 ], [ %177, %691 ], [ %177, %705 ], [ %177, %703 ], [ %177, %717 ], [ %177, %715 ]
  %743 = phi ptr [ null, %59 ], [ %178, %725 ], [ %178, %727 ], [ %178, %732 ], [ %178, %668 ], [ %178, %670 ], [ %178, %651 ], [ %178, %653 ], [ %178, %629 ], [ %178, %631 ], [ %178, %189 ], [ %178, %191 ], [ %178, %509 ], [ %178, %507 ], [ %178, %681 ], [ %178, %679 ], [ %178, %693 ], [ %178, %691 ], [ %178, %705 ], [ %178, %703 ], [ %178, %717 ], [ %178, %715 ]
  %744 = phi i64 [ -34, %59 ], [ -70, %725 ], [ -70, %727 ], [ %739, %732 ], [ %666, %668 ], [ %666, %670 ], [ %649, %651 ], [ %649, %653 ], [ %627, %629 ], [ %627, %631 ], [ -64, %189 ], [ -64, %191 ], [ %505, %509 ], [ %505, %507 ], [ %677, %681 ], [ %677, %679 ], [ %689, %693 ], [ %689, %691 ], [ %701, %705 ], [ %701, %703 ], [ %713, %717 ], [ %713, %715 ]
  %745 = call i64 @ZSTD_freeCDict(ptr noundef %741) #16
  %746 = call i64 @ZSTD_freeCCtx(ptr noundef %742) #16
  call void @free(ptr noundef %743) #16
  call void @llvm.lifetime.end.p0(i64 4864, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #16
  ret i64 %744
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer_legacy(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly byval(%struct.ZDICT_legacy_params_t) align 8 %5) local_unnamed_addr #1 {
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  %9 = alloca [64 x i32], align 16
  %10 = alloca %struct.ZDICT_params_t, align 8
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %1403, label %12

12:                                               ; preds = %6
  %13 = zext i32 %4 to i64
  %14 = icmp ult i32 %4, 4
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = and i64 %13, 4294967292
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %27, %17 ]
  %19 = phi <2 x i64> [ zeroinitializer, %15 ], [ %25, %17 ]
  %20 = phi <2 x i64> [ zeroinitializer, %15 ], [ %26, %17 ]
  %21 = getelementptr inbounds i64, ptr %3, i64 %18
  %22 = getelementptr inbounds i64, ptr %21, i64 2
  %23 = load <2 x i64>, ptr %21, align 8, !tbaa !14
  %24 = load <2 x i64>, ptr %22, align 8, !tbaa !14
  %25 = add <2 x i64> %23, %19
  %26 = add <2 x i64> %24, %20
  %27 = add nuw i64 %18, 4
  %28 = icmp eq i64 %27, %16
  br i1 %28, label %29, label %17, !llvm.loop !52

29:                                               ; preds = %17
  %30 = add <2 x i64> %26, %25
  %31 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %30)
  %32 = icmp eq i64 %16, %13
  br i1 %32, label %44, label %33

33:                                               ; preds = %12, %29
  %34 = phi i64 [ 0, %12 ], [ %16, %29 ]
  %35 = phi i64 [ 0, %12 ], [ %31, %29 ]
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %42, %36 ], [ %34, %33 ]
  %38 = phi i64 [ %41, %36 ], [ %35, %33 ]
  %39 = getelementptr inbounds i64, ptr %3, i64 %37
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = add i64 %40, %38
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %13
  br i1 %43, label %44, label %36, !llvm.loop !53

44:                                               ; preds = %36, %29
  %45 = phi i64 [ %31, %29 ], [ %41, %36 ]
  %46 = icmp ult i64 %45, 512
  br i1 %46, label %1403, label %47

47:                                               ; preds = %44
  %48 = add i64 %45, 32
  %49 = tail call noalias ptr @malloc(i64 noundef %48) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %1403, label %51

51:                                               ; preds = %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %2, i64 %45, i1 false)
  %52 = getelementptr inbounds i8, ptr %49, i64 %45
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %52, align 1, !tbaa !30
  %53 = getelementptr inbounds i8, ptr %52, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %53, align 1, !tbaa !30
  %54 = load i32, ptr %5, align 8
  %55 = getelementptr inbounds i8, ptr %5, i64 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds i8, ptr %5, i64 8
  %58 = load <2 x i32>, ptr %57, align 8
  %59 = lshr i64 %1, 4
  %60 = trunc i64 %59 to i32
  %61 = tail call i32 @llvm.umax.i32(i32 %4, i32 %60)
  %62 = tail call i32 @llvm.umax.i32(i32 %61, i32 10000)
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, 12
  %65 = tail call noalias ptr @malloc(i64 noundef %64) #17
  %66 = icmp eq i32 %54, 0
  %67 = select i1 %66, i32 9, i32 %54
  %68 = lshr i32 %4, %67
  %69 = icmp ult i32 %4, 4
  br i1 %69, label %88, label %70

70:                                               ; preds = %51
  %71 = and i64 %13, 4294967292
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i64 [ 0, %70 ], [ %82, %72 ]
  %74 = phi <2 x i64> [ zeroinitializer, %70 ], [ %80, %72 ]
  %75 = phi <2 x i64> [ zeroinitializer, %70 ], [ %81, %72 ]
  %76 = getelementptr inbounds i64, ptr %3, i64 %73
  %77 = getelementptr inbounds i64, ptr %76, i64 2
  %78 = load <2 x i64>, ptr %76, align 8, !tbaa !14
  %79 = load <2 x i64>, ptr %77, align 8, !tbaa !14
  %80 = add <2 x i64> %78, %74
  %81 = add <2 x i64> %79, %75
  %82 = add nuw i64 %73, 4
  %83 = icmp eq i64 %82, %71
  br i1 %83, label %84, label %72, !llvm.loop !54

84:                                               ; preds = %72
  %85 = add <2 x i64> %81, %80
  %86 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %85)
  %87 = icmp eq i64 %71, %13
  br i1 %87, label %99, label %88

88:                                               ; preds = %51, %84
  %89 = phi i64 [ 0, %51 ], [ %71, %84 ]
  %90 = phi i64 [ 0, %51 ], [ %86, %84 ]
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %97, %91 ], [ %89, %88 ]
  %93 = phi i64 [ %96, %91 ], [ %90, %88 ]
  %94 = getelementptr inbounds i64, ptr %3, i64 %92
  %95 = load i64, ptr %94, align 8, !tbaa !14
  %96 = add i64 %95, %93
  %97 = add nuw nsw i64 %92, 1
  %98 = icmp eq i64 %97, %13
  br i1 %98, label %99, label %91, !llvm.loop !55

99:                                               ; preds = %91, %84
  %100 = phi i64 [ %86, %84 ], [ %96, %91 ]
  %101 = icmp ugt i32 %67, 30
  %102 = select i1 %101, i32 4, i32 %68
  %103 = icmp eq ptr %65, null
  br i1 %103, label %1401, label %104

104:                                              ; preds = %99
  %105 = icmp ult i64 %1, 256
  br i1 %105, label %1399, label %106

106:                                              ; preds = %104
  %107 = icmp ult i64 %100, 512
  br i1 %107, label %1399, label %108

108:                                              ; preds = %106
  store i32 1, ptr %65, align 4, !tbaa !56
  %109 = getelementptr inbounds %struct.dictItem, ptr %65, i64 0, i32 1
  store i32 0, ptr %109, align 4, !tbaa !9
  %110 = getelementptr inbounds %struct.dictItem, ptr %65, i64 0, i32 2
  store i32 -1, ptr %110, align 4, !tbaa !57
  %111 = shl i64 %100, 2
  %112 = add i64 %111, 8
  %113 = tail call noalias ptr @malloc(i64 noundef %112) #17
  %114 = getelementptr inbounds i32, ptr %113, i64 1
  %115 = tail call noalias ptr @malloc(i64 noundef %111) #17
  %116 = add i64 %100, 16
  %117 = tail call noalias ptr @malloc(i64 noundef %116) #17
  %118 = extractelement <2 x i32> %58, i64 0
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %125

120:                                              ; preds = %108
  %121 = load ptr, ptr @stderr, align 8, !tbaa !11
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  %123 = load ptr, ptr @stderr, align 8, !tbaa !11
  %124 = tail call i32 @fflush(ptr noundef %123)
  br label %125

125:                                              ; preds = %120, %108
  %126 = icmp ne ptr %113, null
  %127 = icmp ne ptr %115, null
  %128 = and i1 %126, %127
  %129 = icmp ne ptr %117, null
  %130 = and i1 %128, %129
  br i1 %130, label %131, label %1090

131:                                              ; preds = %125
  %132 = tail call i32 @llvm.umax.i32(i32 %102, i32 4)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %117, i8 0, i64 %116, i1 false)
  %133 = icmp ugt i64 %100, 2097152000
  %134 = icmp ugt i32 %118, 2
  %135 = and i1 %134, %133
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load ptr, ptr @stderr, align 8, !tbaa !11
  %138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.29, i32 noundef 2000) #19
  %139 = load ptr, ptr @stderr, align 8, !tbaa !11
  %140 = tail call i32 @fflush(ptr noundef %139)
  br label %142

141:                                              ; preds = %131
  br i1 %133, label %142, label %152

142:                                              ; preds = %141, %136
  br label %143

143:                                              ; preds = %142, %143
  %144 = phi i64 [ %150, %143 ], [ %100, %142 ]
  %145 = phi i32 [ %146, %143 ], [ %4, %142 ]
  %146 = add i32 %145, -1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i64, ptr %3, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !14
  %150 = sub i64 %144, %149
  %151 = icmp ugt i64 %150, 2097152000
  br i1 %151, label %143, label %152, !llvm.loop !58

152:                                              ; preds = %143, %141
  %153 = phi i32 [ %4, %141 ], [ %146, %143 ]
  %154 = phi i64 [ %100, %141 ], [ %150, %143 ]
  br i1 %119, label %155, label %162

155:                                              ; preds = %152
  %156 = load ptr, ptr @stderr, align 8, !tbaa !11
  %157 = lshr i64 %154, 20
  %158 = trunc i64 %157 to i32
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.30, i32 noundef %153, i32 noundef %158) #19
  %160 = load ptr, ptr @stderr, align 8, !tbaa !11
  %161 = tail call i32 @fflush(ptr noundef %160)
  br label %162

162:                                              ; preds = %155, %152
  %163 = trunc i64 %154 to i32
  %164 = tail call i32 @divsufsort(ptr noundef nonnull %49, ptr noundef nonnull %114, i32 noundef %163, i32 noundef 0) #16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %1090

166:                                              ; preds = %162
  %167 = getelementptr inbounds i32, ptr %114, i64 %154
  store i32 %163, ptr %167, align 4, !tbaa !5
  store i32 %163, ptr %113, align 4, !tbaa !5
  %168 = icmp eq i64 %154, 0
  br i1 %168, label %217, label %169

169:                                              ; preds = %166
  %170 = and i64 %154, 3
  %171 = icmp ult i64 %154, 4
  br i1 %171, label %203, label %172

172:                                              ; preds = %169
  %173 = and i64 %154, 2147483644
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi i64 [ 0, %172 ], [ %200, %174 ]
  %176 = phi i64 [ 0, %172 ], [ %201, %174 ]
  %177 = trunc i64 %175 to i32
  %178 = getelementptr inbounds i32, ptr %114, i64 %175
  %179 = load i32, ptr %178, align 4, !tbaa !5
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, ptr %115, i64 %180
  store i32 %177, ptr %181, align 4, !tbaa !5
  %182 = or disjoint i64 %175, 1
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds i32, ptr %114, i64 %182
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, ptr %115, i64 %186
  store i32 %183, ptr %187, align 4, !tbaa !5
  %188 = or disjoint i64 %175, 2
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds i32, ptr %114, i64 %188
  %191 = load i32, ptr %190, align 4, !tbaa !5
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, ptr %115, i64 %192
  store i32 %189, ptr %193, align 4, !tbaa !5
  %194 = or disjoint i64 %175, 3
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds i32, ptr %114, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !5
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %115, i64 %198
  store i32 %195, ptr %199, align 4, !tbaa !5
  %200 = add nuw nsw i64 %175, 4
  %201 = add i64 %176, 4
  %202 = icmp eq i64 %201, %173
  br i1 %202, label %203, label %174, !llvm.loop !59

203:                                              ; preds = %174, %169
  %204 = phi i64 [ 0, %169 ], [ %200, %174 ]
  %205 = icmp eq i64 %170, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %203, %206
  %207 = phi i64 [ %214, %206 ], [ %204, %203 ]
  %208 = phi i64 [ %215, %206 ], [ 0, %203 ]
  %209 = trunc i64 %207 to i32
  %210 = getelementptr inbounds i32, ptr %114, i64 %207
  %211 = load i32, ptr %210, align 4, !tbaa !5
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %115, i64 %212
  store i32 %209, ptr %213, align 4, !tbaa !5
  %214 = add nuw nsw i64 %207, 1
  %215 = add i64 %208, 1
  %216 = icmp eq i64 %215, %170
  br i1 %216, label %217, label %206, !llvm.loop !60

217:                                              ; preds = %203, %206, %166
  br i1 %119, label %218, label %228

218:                                              ; preds = %217
  %219 = load ptr, ptr @stderr, align 8, !tbaa !11
  %220 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %219) #19
  %221 = load ptr, ptr @stderr, align 8, !tbaa !11
  %222 = tail call i32 @fflush(ptr noundef %221)
  br i1 %134, label %223, label %228

223:                                              ; preds = %218
  %224 = load ptr, ptr @stderr, align 8, !tbaa !11
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef nonnull @.str.32, i32 noundef %132) #19
  %226 = load ptr, ptr @stderr, align 8, !tbaa !11
  %227 = tail call i32 @fflush(ptr noundef %226)
  br label %228

228:                                              ; preds = %223, %218, %217
  br i1 %168, label %1090, label %229

229:                                              ; preds = %228
  %230 = icmp ugt i32 %118, 3
  %231 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 63
  %232 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 63
  %233 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 62
  %234 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 61
  %235 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 60
  %236 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 59
  %237 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 58
  %238 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 57
  %239 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 56
  %240 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 55
  %241 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 54
  %242 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 53
  %243 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 52
  %244 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 51
  %245 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 50
  %246 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 49
  %247 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 48
  %248 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 47
  %249 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 46
  %250 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 45
  %251 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 44
  %252 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 43
  %253 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 42
  %254 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 41
  %255 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 40
  %256 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 39
  %257 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 38
  %258 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 37
  %259 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 36
  %260 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 35
  %261 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 34
  %262 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 33
  %263 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 32
  %264 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 31
  %265 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 30
  %266 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 29
  %267 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 28
  %268 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 27
  %269 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 26
  %270 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 25
  %271 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 24
  %272 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 23
  %273 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 22
  %274 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 21
  %275 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 20
  %276 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 19
  %277 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 18
  %278 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 17
  %279 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 16
  %280 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 15
  %281 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 14
  %282 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 13
  %283 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 12
  %284 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 11
  %285 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 10
  %286 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 9
  %287 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 8
  %288 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 7
  %289 = getelementptr inbounds [64 x i32], ptr %9, i64 0, i64 5
  %290 = add i32 %62, -1
  %291 = uitofp i64 %154 to double
  %292 = getelementptr i32, ptr %114, i64 1
  %293 = getelementptr i32, ptr %114, i64 2
  %294 = getelementptr i32, ptr %114, i64 3
  br label %295

295:                                              ; preds = %1083, %229
  %296 = phi i64 [ 0, %229 ], [ %1086, %1083 ]
  %297 = phi i64 [ 0, %229 ], [ %1085, %1083 ]
  %298 = phi i32 [ 0, %229 ], [ %1084, %1083 ]
  %299 = getelementptr inbounds i8, ptr %117, i64 %296
  %300 = load i8, ptr %299, align 1, !tbaa !30
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %295
  %303 = add i32 %298, 1
  br label %1083, !llvm.loop !61

304:                                              ; preds = %295
  %305 = getelementptr inbounds i32, ptr %115, i64 %296
  %306 = load i32, ptr %305, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %9, i8 0, i64 256, i1 false)
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %114, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !5
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i8, ptr %117, i64 %310
  store i8 1, ptr %311, align 1, !tbaa !30
  %312 = getelementptr i8, ptr %49, i64 %310
  %313 = load i16, ptr %312, align 1, !tbaa !62
  %314 = getelementptr inbounds i8, ptr %312, i64 2
  %315 = load i16, ptr %314, align 1, !tbaa !62
  %316 = icmp eq i16 %313, %315
  br i1 %316, label %330, label %317

317:                                              ; preds = %304
  %318 = getelementptr inbounds i8, ptr %312, i64 1
  %319 = load i16, ptr %318, align 1, !tbaa !62
  %320 = getelementptr inbounds i8, ptr %312, i64 3
  %321 = load i16, ptr %320, align 1, !tbaa !62
  %322 = icmp eq i16 %319, %321
  br i1 %322, label %330, label %323

323:                                              ; preds = %317
  %324 = getelementptr inbounds i8, ptr %312, i64 4
  %325 = load i16, ptr %324, align 1, !tbaa !62
  %326 = icmp eq i16 %315, %325
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = load i64, ptr %312, align 1, !tbaa !14
  %329 = ptrtoint ptr %312 to i64
  br label %357

330:                                              ; preds = %323, %317, %304
  %331 = getelementptr inbounds i8, ptr %312, i64 4
  %332 = load i16, ptr %331, align 1, !tbaa !62
  br label %333

333:                                              ; preds = %333, %330
  %334 = phi i32 [ %341, %333 ], [ 0, %330 ]
  %335 = phi i32 [ %340, %333 ], [ 6, %330 ]
  %336 = zext i32 %335 to i64
  %337 = getelementptr i8, ptr %312, i64 %336
  %338 = load i16, ptr %337, align 1
  %339 = icmp eq i16 %338, %332
  %340 = add i32 %335, 2
  %341 = add i32 %334, 1
  br i1 %339, label %333, label %342, !llvm.loop !63

342:                                              ; preds = %333
  %343 = icmp eq i32 %335, 0
  br i1 %343, label %976, label %344

344:                                              ; preds = %342
  %345 = getelementptr i8, ptr %312, i64 %336
  %346 = getelementptr i8, ptr %345, i64 -1
  %347 = load i8, ptr %346, align 1, !tbaa !30
  %348 = trunc i16 %338 to i8
  %349 = icmp eq i8 %347, %348
  %350 = zext i1 %349 to i32
  %351 = getelementptr i8, ptr %311, i64 1
  %352 = shl i32 %334, 1
  %353 = add i32 %352, 4
  %354 = or disjoint i32 %353, %350
  %355 = zext i32 %354 to i64
  %356 = add nuw nsw i64 %355, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %351, i8 1, i64 %356, i1 false), !tbaa !30
  br label %976

357:                                              ; preds = %378, %327
  %358 = phi i32 [ %387, %378 ], [ 0, %327 ]
  %359 = phi i32 [ %360, %378 ], [ %306, %327 ]
  %360 = add i32 %359, 1
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i32, ptr %114, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !5
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, ptr %49, i64 %364
  %366 = load i64, ptr %365, align 1, !tbaa !14
  %367 = xor i64 %366, %328
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %357, %369
  %370 = phi ptr [ %372, %369 ], [ %312, %357 ]
  %371 = phi ptr [ %373, %369 ], [ %365, %357 ]
  %372 = getelementptr inbounds i8, ptr %370, i64 8
  %373 = getelementptr inbounds i8, ptr %371, i64 8
  %374 = load i64, ptr %373, align 1, !tbaa !14
  %375 = load i64, ptr %372, align 1, !tbaa !14
  %376 = xor i64 %375, %374
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %369, label %378

378:                                              ; preds = %369, %357
  %379 = phi ptr [ %312, %357 ], [ %372, %369 ]
  %380 = phi i64 [ %367, %357 ], [ %376, %369 ]
  %381 = tail call i64 @llvm.cttz.i64(i64 %380, i1 true), !range !64
  %382 = lshr i64 %381, 3
  %383 = getelementptr inbounds i8, ptr %379, i64 %382
  %384 = ptrtoint ptr %383 to i64
  %385 = sub i64 %384, %329
  %386 = icmp ugt i64 %385, 6
  %387 = add i32 %358, 1
  br i1 %386, label %357, label %388, !llvm.loop !65

388:                                              ; preds = %378, %408
  %389 = phi i32 [ %418, %408 ], [ 0, %378 ]
  %390 = phi i32 [ %417, %408 ], [ %306, %378 ]
  %391 = zext i32 %390 to i64
  %392 = getelementptr i32, ptr %113, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !5
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds i8, ptr %49, i64 %394
  %396 = load i64, ptr %395, align 1, !tbaa !14
  %397 = xor i64 %396, %328
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %388, %399
  %400 = phi ptr [ %402, %399 ], [ %312, %388 ]
  %401 = phi ptr [ %403, %399 ], [ %395, %388 ]
  %402 = getelementptr inbounds i8, ptr %400, i64 8
  %403 = getelementptr inbounds i8, ptr %401, i64 8
  %404 = load i64, ptr %403, align 1, !tbaa !14
  %405 = load i64, ptr %402, align 1, !tbaa !14
  %406 = xor i64 %405, %404
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %399, label %408

408:                                              ; preds = %399, %388
  %409 = phi ptr [ %312, %388 ], [ %402, %399 ]
  %410 = phi i64 [ %397, %388 ], [ %406, %399 ]
  %411 = tail call i64 @llvm.cttz.i64(i64 %410, i1 true), !range !64
  %412 = lshr i64 %411, 3
  %413 = getelementptr inbounds i8, ptr %409, i64 %412
  %414 = ptrtoint ptr %413 to i64
  %415 = sub i64 %414, %329
  %416 = icmp ugt i64 %415, 6
  %417 = add i32 %390, -1
  %418 = add i32 %389, 1
  br i1 %416, label %388, label %419, !llvm.loop !66

419:                                              ; preds = %408
  %420 = sub i32 %360, %390
  %421 = icmp ult i32 %420, %132
  br i1 %421, label %422, label %462

422:                                              ; preds = %419
  %423 = icmp ult i32 %390, %360
  br i1 %423, label %424, label %976

424:                                              ; preds = %422
  %425 = add i32 %389, %358
  %426 = and i32 %420, 3
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %424, %428
  %429 = phi i64 [ %435, %428 ], [ %391, %424 ]
  %430 = phi i32 [ %436, %428 ], [ 0, %424 ]
  %431 = getelementptr inbounds i32, ptr %114, i64 %429
  %432 = load i32, ptr %431, align 4, !tbaa !5
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i8, ptr %117, i64 %433
  store i8 1, ptr %434, align 1, !tbaa !30
  %435 = add nuw nsw i64 %429, 1
  %436 = add i32 %430, 1
  %437 = icmp eq i32 %436, %426
  br i1 %437, label %438, label %428, !llvm.loop !67

438:                                              ; preds = %428, %424
  %439 = phi i64 [ %391, %424 ], [ %435, %428 ]
  %440 = icmp ult i32 %425, 3
  br i1 %440, label %976, label %441

441:                                              ; preds = %438, %441
  %442 = phi i64 [ %459, %441 ], [ %439, %438 ]
  %443 = getelementptr inbounds i32, ptr %114, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !5
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds i8, ptr %117, i64 %445
  store i8 1, ptr %446, align 1, !tbaa !30
  %447 = getelementptr i32, ptr %292, i64 %442
  %448 = load i32, ptr %447, align 4, !tbaa !5
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds i8, ptr %117, i64 %449
  store i8 1, ptr %450, align 1, !tbaa !30
  %451 = getelementptr i32, ptr %293, i64 %442
  %452 = load i32, ptr %451, align 4, !tbaa !5
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds i8, ptr %117, i64 %453
  store i8 1, ptr %454, align 1, !tbaa !30
  %455 = getelementptr i32, ptr %294, i64 %442
  %456 = load i32, ptr %455, align 4, !tbaa !5
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i8, ptr %117, i64 %457
  store i8 1, ptr %458, align 1, !tbaa !30
  %459 = add nuw nsw i64 %442, 4
  %460 = trunc i64 %459 to i32
  %461 = icmp eq i32 %360, %460
  br i1 %461, label %976, label %441, !llvm.loop !68

462:                                              ; preds = %419
  br i1 %230, label %463, label %476

463:                                              ; preds = %462
  %464 = load ptr, ptr @stderr, align 8, !tbaa !11
  %465 = tail call i32 @fputc(i32 10, ptr %464)
  %466 = load ptr, ptr @stderr, align 8, !tbaa !11
  %467 = tail call i32 @fflush(ptr noundef %466)
  %468 = load ptr, ptr @stderr, align 8, !tbaa !11
  %469 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %468, ptr noundef nonnull @.str.35, i32 noundef %420, i32 noundef 7, i32 noundef %309) #19
  %470 = load ptr, ptr @stderr, align 8, !tbaa !11
  %471 = tail call i32 @fflush(ptr noundef %470)
  %472 = load ptr, ptr @stderr, align 8, !tbaa !11
  %473 = tail call i32 @fputc(i32 10, ptr %472)
  %474 = load ptr, ptr @stderr, align 8, !tbaa !11
  %475 = tail call i32 @fflush(ptr noundef %474)
  br label %476

476:                                              ; preds = %463, %462
  br label %477

477:                                              ; preds = %476, %579
  %478 = phi i32 [ %583, %579 ], [ 7, %476 ]
  %479 = phi i32 [ %581, %579 ], [ %390, %476 ]
  %480 = phi i32 [ %582, %579 ], [ %360, %476 ]
  %481 = icmp ult i32 %479, %480
  br i1 %481, label %482, label %572

482:                                              ; preds = %477
  %483 = zext i32 %479 to i64
  %484 = zext i32 %480 to i64
  %485 = sub nsw i64 %484, %483
  %486 = and i64 %485, 1
  %487 = add nsw i64 %484, -1
  %488 = icmp eq i64 %487, %483
  br i1 %488, label %541, label %489

489:                                              ; preds = %482
  %490 = and i64 %485, -2
  br label %491

491:                                              ; preds = %531, %489
  %492 = phi i64 [ %483, %489 ], [ %538, %531 ]
  %493 = phi i32 [ %479, %489 ], [ %536, %531 ]
  %494 = phi i32 [ 0, %489 ], [ %535, %531 ]
  %495 = phi i32 [ %479, %489 ], [ %534, %531 ]
  %496 = phi i32 [ 0, %489 ], [ %537, %531 ]
  %497 = phi i8 [ 0, %489 ], [ %532, %531 ]
  %498 = phi i64 [ 0, %489 ], [ %539, %531 ]
  %499 = getelementptr inbounds i32, ptr %114, i64 %492
  %500 = load i32, ptr %499, align 4, !tbaa !5
  %501 = add i32 %500, %478
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds i8, ptr %49, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !30
  %505 = icmp eq i8 %504, %497
  br i1 %505, label %511, label %506

506:                                              ; preds = %491
  %507 = icmp ugt i32 %496, %494
  %508 = tail call i32 @llvm.umax.i32(i32 %496, i32 %494)
  %509 = select i1 %507, i32 %495, i32 %493
  %510 = trunc i64 %492 to i32
  br label %511

511:                                              ; preds = %506, %491
  %512 = phi i8 [ %504, %506 ], [ %497, %491 ]
  %513 = phi i32 [ 0, %506 ], [ %496, %491 ]
  %514 = phi i32 [ %510, %506 ], [ %495, %491 ]
  %515 = phi i32 [ %508, %506 ], [ %494, %491 ]
  %516 = phi i32 [ %509, %506 ], [ %493, %491 ]
  %517 = add i32 %513, 1
  %518 = add nuw nsw i64 %492, 1
  %519 = getelementptr inbounds i32, ptr %114, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !5
  %521 = add i32 %520, %478
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds i8, ptr %49, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !30
  %525 = icmp eq i8 %524, %512
  br i1 %525, label %531, label %526

526:                                              ; preds = %511
  %527 = icmp ugt i32 %517, %515
  %528 = tail call i32 @llvm.umax.i32(i32 %517, i32 %515)
  %529 = select i1 %527, i32 %514, i32 %516
  %530 = trunc i64 %518 to i32
  br label %531

531:                                              ; preds = %526, %511
  %532 = phi i8 [ %524, %526 ], [ %512, %511 ]
  %533 = phi i32 [ 0, %526 ], [ %517, %511 ]
  %534 = phi i32 [ %530, %526 ], [ %514, %511 ]
  %535 = phi i32 [ %528, %526 ], [ %515, %511 ]
  %536 = phi i32 [ %529, %526 ], [ %516, %511 ]
  %537 = add i32 %533, 1
  %538 = add nuw nsw i64 %492, 2
  %539 = add i64 %498, 2
  %540 = icmp eq i64 %539, %490
  br i1 %540, label %541, label %491, !llvm.loop !69

541:                                              ; preds = %531, %482
  %542 = phi i32 [ undef, %482 ], [ %534, %531 ]
  %543 = phi i32 [ undef, %482 ], [ %535, %531 ]
  %544 = phi i32 [ undef, %482 ], [ %536, %531 ]
  %545 = phi i32 [ undef, %482 ], [ %537, %531 ]
  %546 = phi i64 [ %483, %482 ], [ %538, %531 ]
  %547 = phi i32 [ %479, %482 ], [ %536, %531 ]
  %548 = phi i32 [ 0, %482 ], [ %535, %531 ]
  %549 = phi i32 [ %479, %482 ], [ %534, %531 ]
  %550 = phi i32 [ 0, %482 ], [ %537, %531 ]
  %551 = phi i8 [ 0, %482 ], [ %532, %531 ]
  %552 = icmp eq i64 %486, 0
  br i1 %552, label %572, label %553

553:                                              ; preds = %541
  %554 = getelementptr inbounds i32, ptr %114, i64 %546
  %555 = load i32, ptr %554, align 4, !tbaa !5
  %556 = add i32 %555, %478
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds i8, ptr %49, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !30
  %560 = icmp eq i8 %559, %551
  br i1 %560, label %566, label %561

561:                                              ; preds = %553
  %562 = icmp ugt i32 %550, %548
  %563 = tail call i32 @llvm.umax.i32(i32 %550, i32 %548)
  %564 = select i1 %562, i32 %549, i32 %547
  %565 = trunc i64 %546 to i32
  br label %566

566:                                              ; preds = %561, %553
  %567 = phi i32 [ 0, %561 ], [ %550, %553 ]
  %568 = phi i32 [ %565, %561 ], [ %549, %553 ]
  %569 = phi i32 [ %563, %561 ], [ %548, %553 ]
  %570 = phi i32 [ %564, %561 ], [ %547, %553 ]
  %571 = add i32 %567, 1
  br label %572

572:                                              ; preds = %566, %541, %477
  %573 = phi i32 [ 0, %477 ], [ %545, %541 ], [ %571, %566 ]
  %574 = phi i32 [ %479, %477 ], [ %542, %541 ], [ %568, %566 ]
  %575 = phi i32 [ 0, %477 ], [ %543, %541 ], [ %569, %566 ]
  %576 = phi i32 [ %479, %477 ], [ %544, %541 ], [ %570, %566 ]
  %577 = tail call i32 @llvm.umax.i32(i32 %573, i32 %575)
  %578 = icmp ult i32 %577, %132
  br i1 %578, label %584, label %579

579:                                              ; preds = %572
  %580 = icmp ugt i32 %573, %575
  %581 = select i1 %580, i32 %574, i32 %576
  %582 = add i32 %581, %577
  %583 = add i32 %478, 1
  br label %477

584:                                              ; preds = %572
  %585 = zext i32 %479 to i64
  %586 = getelementptr inbounds i32, ptr %114, i64 %585
  %587 = load i32, ptr %586, align 4, !tbaa !5
  %588 = zext i32 %587 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %589 = getelementptr inbounds i8, ptr %49, i64 %588
  %590 = load i64, ptr %589, align 1, !tbaa !14
  %591 = ptrtoint ptr %589 to i64
  br label %592

592:                                              ; preds = %612, %584
  %593 = phi i32 [ %594, %612 ], [ %479, %584 ]
  %594 = add i32 %593, 1
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds i32, ptr %114, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !5
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds i8, ptr %49, i64 %598
  %600 = load i64, ptr %599, align 1, !tbaa !14
  %601 = xor i64 %600, %590
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %603, label %612

603:                                              ; preds = %592, %603
  %604 = phi ptr [ %606, %603 ], [ %589, %592 ]
  %605 = phi ptr [ %607, %603 ], [ %599, %592 ]
  %606 = getelementptr inbounds i8, ptr %604, i64 8
  %607 = getelementptr inbounds i8, ptr %605, i64 8
  %608 = load i64, ptr %607, align 1, !tbaa !14
  %609 = load i64, ptr %606, align 1, !tbaa !14
  %610 = xor i64 %609, %608
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %603, label %612

612:                                              ; preds = %603, %592
  %613 = phi ptr [ %589, %592 ], [ %606, %603 ]
  %614 = phi i64 [ %601, %592 ], [ %610, %603 ]
  %615 = tail call i64 @llvm.cttz.i64(i64 %614, i1 true), !range !64
  %616 = lshr i64 %615, 3
  %617 = getelementptr inbounds i8, ptr %613, i64 %616
  %618 = ptrtoint ptr %617 to i64
  %619 = sub i64 %618, %591
  %620 = tail call i64 @llvm.umin.i64(i64 %619, i64 63)
  %621 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %620
  %622 = load i32, ptr %621, align 4, !tbaa !5
  %623 = add i32 %622, 1
  store i32 %623, ptr %621, align 4, !tbaa !5
  %624 = icmp ugt i64 %619, 6
  br i1 %624, label %592, label %625, !llvm.loop !70

625:                                              ; preds = %612
  %626 = icmp eq i32 %479, 0
  br i1 %626, label %663, label %627

627:                                              ; preds = %625, %647
  %628 = phi i32 [ %660, %647 ], [ %479, %625 ]
  %629 = add i32 %628, -1
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds i32, ptr %114, i64 %630
  %632 = load i32, ptr %631, align 4, !tbaa !5
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds i8, ptr %49, i64 %633
  %635 = load i64, ptr %634, align 1, !tbaa !14
  %636 = xor i64 %635, %590
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %638, label %647

638:                                              ; preds = %627, %638
  %639 = phi ptr [ %641, %638 ], [ %589, %627 ]
  %640 = phi ptr [ %642, %638 ], [ %634, %627 ]
  %641 = getelementptr inbounds i8, ptr %639, i64 8
  %642 = getelementptr inbounds i8, ptr %640, i64 8
  %643 = load i64, ptr %642, align 1, !tbaa !14
  %644 = load i64, ptr %641, align 1, !tbaa !14
  %645 = xor i64 %644, %643
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %638, label %647

647:                                              ; preds = %638, %627
  %648 = phi ptr [ %589, %627 ], [ %641, %638 ]
  %649 = phi i64 [ %636, %627 ], [ %645, %638 ]
  %650 = tail call i64 @llvm.cttz.i64(i64 %649, i1 true), !range !64
  %651 = lshr i64 %650, 3
  %652 = getelementptr inbounds i8, ptr %648, i64 %651
  %653 = ptrtoint ptr %652 to i64
  %654 = sub i64 %653, %591
  %655 = tail call i64 @llvm.umin.i64(i64 %654, i64 63)
  %656 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %655
  %657 = load i32, ptr %656, align 4, !tbaa !5
  %658 = add i32 %657, 1
  store i32 %658, ptr %656, align 4, !tbaa !5
  %659 = icmp ugt i64 %654, 6
  %660 = select i1 %659, i32 %629, i32 %628
  %661 = icmp ne i32 %660, 0
  %662 = and i1 %659, %661
  br i1 %662, label %627, label %663, !llvm.loop !71

663:                                              ; preds = %647, %625
  %664 = phi i32 [ 0, %625 ], [ %660, %647 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %8, i8 0, i64 256, i1 false)
  %665 = load i32, ptr %231, align 4, !tbaa !5
  store i32 %665, ptr %232, align 4, !tbaa !5
  br label %666

666:                                              ; preds = %666, %663
  %667 = phi i32 [ %665, %663 ], [ %681, %666 ]
  %668 = phi i64 [ 62, %663 ], [ %683, %666 ]
  %669 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %668
  %670 = load i32, ptr %669, align 4, !tbaa !5
  %671 = add i32 %670, %667
  %672 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %668
  store i32 %671, ptr %672, align 4, !tbaa !5
  %673 = add nsw i64 %668, -1
  %674 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %673
  %675 = load i32, ptr %674, align 4, !tbaa !5
  %676 = add i32 %675, %671
  %677 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %673
  store i32 %676, ptr %677, align 4, !tbaa !5
  %678 = add nsw i64 %668, -2
  %679 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !5
  %681 = add i32 %680, %676
  %682 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %678
  store i32 %681, ptr %682, align 4, !tbaa !5
  %683 = add nsw i64 %668, -3
  %684 = icmp eq i64 %678, 0
  br i1 %684, label %685, label %666, !llvm.loop !72

685:                                              ; preds = %666
  %686 = load i32, ptr %232, align 4, !tbaa !5
  %687 = icmp ult i32 %686, %132
  br i1 %687, label %688, label %857

688:                                              ; preds = %685
  %689 = load i32, ptr %233, align 8, !tbaa !5
  %690 = icmp ult i32 %689, %132
  br i1 %690, label %691, label %857

691:                                              ; preds = %688
  %692 = load i32, ptr %234, align 4, !tbaa !5
  %693 = icmp ult i32 %692, %132
  br i1 %693, label %694, label %857

694:                                              ; preds = %691
  %695 = load i32, ptr %235, align 16, !tbaa !5
  %696 = icmp ult i32 %695, %132
  br i1 %696, label %697, label %857

697:                                              ; preds = %694
  %698 = load i32, ptr %236, align 4, !tbaa !5
  %699 = icmp ult i32 %698, %132
  br i1 %699, label %700, label %857

700:                                              ; preds = %697
  %701 = load i32, ptr %237, align 8, !tbaa !5
  %702 = icmp ult i32 %701, %132
  br i1 %702, label %703, label %857

703:                                              ; preds = %700
  %704 = load i32, ptr %238, align 4, !tbaa !5
  %705 = icmp ult i32 %704, %132
  br i1 %705, label %706, label %857

706:                                              ; preds = %703
  %707 = load i32, ptr %239, align 16, !tbaa !5
  %708 = icmp ult i32 %707, %132
  br i1 %708, label %709, label %857

709:                                              ; preds = %706
  %710 = load i32, ptr %240, align 4, !tbaa !5
  %711 = icmp ult i32 %710, %132
  br i1 %711, label %712, label %857

712:                                              ; preds = %709
  %713 = load i32, ptr %241, align 8, !tbaa !5
  %714 = icmp ult i32 %713, %132
  br i1 %714, label %715, label %857

715:                                              ; preds = %712
  %716 = load i32, ptr %242, align 4, !tbaa !5
  %717 = icmp ult i32 %716, %132
  br i1 %717, label %718, label %857

718:                                              ; preds = %715
  %719 = load i32, ptr %243, align 16, !tbaa !5
  %720 = icmp ult i32 %719, %132
  br i1 %720, label %721, label %857

721:                                              ; preds = %718
  %722 = load i32, ptr %244, align 4, !tbaa !5
  %723 = icmp ult i32 %722, %132
  br i1 %723, label %724, label %857

724:                                              ; preds = %721
  %725 = load i32, ptr %245, align 8, !tbaa !5
  %726 = icmp ult i32 %725, %132
  br i1 %726, label %727, label %857

727:                                              ; preds = %724
  %728 = load i32, ptr %246, align 4, !tbaa !5
  %729 = icmp ult i32 %728, %132
  br i1 %729, label %730, label %857

730:                                              ; preds = %727
  %731 = load i32, ptr %247, align 16, !tbaa !5
  %732 = icmp ult i32 %731, %132
  br i1 %732, label %733, label %857

733:                                              ; preds = %730
  %734 = load i32, ptr %248, align 4, !tbaa !5
  %735 = icmp ult i32 %734, %132
  br i1 %735, label %736, label %857

736:                                              ; preds = %733
  %737 = load i32, ptr %249, align 8, !tbaa !5
  %738 = icmp ult i32 %737, %132
  br i1 %738, label %739, label %857

739:                                              ; preds = %736
  %740 = load i32, ptr %250, align 4, !tbaa !5
  %741 = icmp ult i32 %740, %132
  br i1 %741, label %742, label %857

742:                                              ; preds = %739
  %743 = load i32, ptr %251, align 16, !tbaa !5
  %744 = icmp ult i32 %743, %132
  br i1 %744, label %745, label %857

745:                                              ; preds = %742
  %746 = load i32, ptr %252, align 4, !tbaa !5
  %747 = icmp ult i32 %746, %132
  br i1 %747, label %748, label %857

748:                                              ; preds = %745
  %749 = load i32, ptr %253, align 8, !tbaa !5
  %750 = icmp ult i32 %749, %132
  br i1 %750, label %751, label %857

751:                                              ; preds = %748
  %752 = load i32, ptr %254, align 4, !tbaa !5
  %753 = icmp ult i32 %752, %132
  br i1 %753, label %754, label %857

754:                                              ; preds = %751
  %755 = load i32, ptr %255, align 16, !tbaa !5
  %756 = icmp ult i32 %755, %132
  br i1 %756, label %757, label %857

757:                                              ; preds = %754
  %758 = load i32, ptr %256, align 4, !tbaa !5
  %759 = icmp ult i32 %758, %132
  br i1 %759, label %760, label %857

760:                                              ; preds = %757
  %761 = load i32, ptr %257, align 8, !tbaa !5
  %762 = icmp ult i32 %761, %132
  br i1 %762, label %763, label %857

763:                                              ; preds = %760
  %764 = load i32, ptr %258, align 4, !tbaa !5
  %765 = icmp ult i32 %764, %132
  br i1 %765, label %766, label %857

766:                                              ; preds = %763
  %767 = load i32, ptr %259, align 16, !tbaa !5
  %768 = icmp ult i32 %767, %132
  br i1 %768, label %769, label %857

769:                                              ; preds = %766
  %770 = load i32, ptr %260, align 4, !tbaa !5
  %771 = icmp ult i32 %770, %132
  br i1 %771, label %772, label %857

772:                                              ; preds = %769
  %773 = load i32, ptr %261, align 8, !tbaa !5
  %774 = icmp ult i32 %773, %132
  br i1 %774, label %775, label %857

775:                                              ; preds = %772
  %776 = load i32, ptr %262, align 4, !tbaa !5
  %777 = icmp ult i32 %776, %132
  br i1 %777, label %778, label %857

778:                                              ; preds = %775
  %779 = load i32, ptr %263, align 16, !tbaa !5
  %780 = icmp ult i32 %779, %132
  br i1 %780, label %781, label %857

781:                                              ; preds = %778
  %782 = load i32, ptr %264, align 4, !tbaa !5
  %783 = icmp ult i32 %782, %132
  br i1 %783, label %784, label %857

784:                                              ; preds = %781
  %785 = load i32, ptr %265, align 8, !tbaa !5
  %786 = icmp ult i32 %785, %132
  br i1 %786, label %787, label %857

787:                                              ; preds = %784
  %788 = load i32, ptr %266, align 4, !tbaa !5
  %789 = icmp ult i32 %788, %132
  br i1 %789, label %790, label %857

790:                                              ; preds = %787
  %791 = load i32, ptr %267, align 16, !tbaa !5
  %792 = icmp ult i32 %791, %132
  br i1 %792, label %793, label %857

793:                                              ; preds = %790
  %794 = load i32, ptr %268, align 4, !tbaa !5
  %795 = icmp ult i32 %794, %132
  br i1 %795, label %796, label %857

796:                                              ; preds = %793
  %797 = load i32, ptr %269, align 8, !tbaa !5
  %798 = icmp ult i32 %797, %132
  br i1 %798, label %799, label %857

799:                                              ; preds = %796
  %800 = load i32, ptr %270, align 4, !tbaa !5
  %801 = icmp ult i32 %800, %132
  br i1 %801, label %802, label %857

802:                                              ; preds = %799
  %803 = load i32, ptr %271, align 16, !tbaa !5
  %804 = icmp ult i32 %803, %132
  br i1 %804, label %805, label %857

805:                                              ; preds = %802
  %806 = load i32, ptr %272, align 4, !tbaa !5
  %807 = icmp ult i32 %806, %132
  br i1 %807, label %808, label %857

808:                                              ; preds = %805
  %809 = load i32, ptr %273, align 8, !tbaa !5
  %810 = icmp ult i32 %809, %132
  br i1 %810, label %811, label %857

811:                                              ; preds = %808
  %812 = load i32, ptr %274, align 4, !tbaa !5
  %813 = icmp ult i32 %812, %132
  br i1 %813, label %814, label %857

814:                                              ; preds = %811
  %815 = load i32, ptr %275, align 16, !tbaa !5
  %816 = icmp ult i32 %815, %132
  br i1 %816, label %817, label %857

817:                                              ; preds = %814
  %818 = load i32, ptr %276, align 4, !tbaa !5
  %819 = icmp ult i32 %818, %132
  br i1 %819, label %820, label %857

820:                                              ; preds = %817
  %821 = load i32, ptr %277, align 8, !tbaa !5
  %822 = icmp ult i32 %821, %132
  br i1 %822, label %823, label %857

823:                                              ; preds = %820
  %824 = load i32, ptr %278, align 4, !tbaa !5
  %825 = icmp ult i32 %824, %132
  br i1 %825, label %826, label %857

826:                                              ; preds = %823
  %827 = load i32, ptr %279, align 16, !tbaa !5
  %828 = icmp ult i32 %827, %132
  br i1 %828, label %829, label %857

829:                                              ; preds = %826
  %830 = load i32, ptr %280, align 4, !tbaa !5
  %831 = icmp ult i32 %830, %132
  br i1 %831, label %832, label %857

832:                                              ; preds = %829
  %833 = load i32, ptr %281, align 8, !tbaa !5
  %834 = icmp ult i32 %833, %132
  br i1 %834, label %835, label %857

835:                                              ; preds = %832
  %836 = load i32, ptr %282, align 4, !tbaa !5
  %837 = icmp ult i32 %836, %132
  br i1 %837, label %838, label %857

838:                                              ; preds = %835
  %839 = load i32, ptr %283, align 16, !tbaa !5
  %840 = icmp ult i32 %839, %132
  br i1 %840, label %841, label %857

841:                                              ; preds = %838
  %842 = load i32, ptr %284, align 4, !tbaa !5
  %843 = icmp ult i32 %842, %132
  br i1 %843, label %844, label %857

844:                                              ; preds = %841
  %845 = load i32, ptr %285, align 8, !tbaa !5
  %846 = icmp ult i32 %845, %132
  br i1 %846, label %847, label %857

847:                                              ; preds = %844
  %848 = load i32, ptr %286, align 4, !tbaa !5
  %849 = icmp ult i32 %848, %132
  br i1 %849, label %850, label %857

850:                                              ; preds = %847
  %851 = load i32, ptr %287, align 16, !tbaa !5
  %852 = icmp ult i32 %851, %132
  br i1 %852, label %853, label %857

853:                                              ; preds = %850
  %854 = load i32, ptr %288, align 4, !tbaa !5
  %855 = icmp ult i32 %854, %132
  %856 = select i1 %855, i32 6, i32 7
  br label %857

857:                                              ; preds = %853, %850, %847, %844, %841, %838, %835, %832, %829, %826, %823, %820, %817, %814, %811, %808, %805, %802, %799, %796, %793, %790, %787, %784, %781, %778, %775, %772, %769, %766, %763, %760, %757, %754, %751, %748, %745, %742, %739, %736, %733, %730, %727, %724, %721, %718, %715, %712, %709, %706, %703, %700, %697, %694, %691, %688, %685
  %858 = phi i32 [ 63, %685 ], [ 62, %688 ], [ 61, %691 ], [ 60, %694 ], [ 59, %697 ], [ 58, %700 ], [ 57, %703 ], [ 56, %706 ], [ 55, %709 ], [ 54, %712 ], [ 53, %715 ], [ 52, %718 ], [ 51, %721 ], [ 50, %724 ], [ 49, %727 ], [ 48, %730 ], [ 47, %733 ], [ 46, %736 ], [ 45, %739 ], [ 44, %742 ], [ 43, %745 ], [ 42, %748 ], [ 41, %751 ], [ 40, %754 ], [ 39, %757 ], [ 38, %760 ], [ 37, %763 ], [ 36, %766 ], [ 35, %769 ], [ 34, %772 ], [ 33, %775 ], [ 32, %778 ], [ 31, %781 ], [ 30, %784 ], [ 29, %787 ], [ 28, %790 ], [ 27, %793 ], [ 26, %796 ], [ 25, %799 ], [ 24, %802 ], [ 23, %805 ], [ 22, %808 ], [ 21, %811 ], [ 20, %814 ], [ 19, %817 ], [ 18, %820 ], [ 17, %823 ], [ 16, %826 ], [ 15, %829 ], [ 14, %832 ], [ 13, %835 ], [ 12, %838 ], [ 11, %841 ], [ 10, %844 ], [ 9, %847 ], [ 8, %850 ], [ %856, %853 ]
  %859 = zext nneg i32 %858 to i64
  %860 = getelementptr i8, ptr %589, i64 %859
  %861 = getelementptr i8, ptr %860, i64 -1
  %862 = load i8, ptr %861, align 1, !tbaa !30
  %863 = getelementptr i8, ptr %589, i64 -2
  br label %864

864:                                              ; preds = %864, %857
  %865 = phi i32 [ %858, %857 ], [ %870, %864 ]
  %866 = zext i32 %865 to i64
  %867 = getelementptr i8, ptr %863, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !30
  %869 = icmp eq i8 %868, %862
  %870 = add i32 %865, -1
  br i1 %869, label %864, label %871, !llvm.loop !73

871:                                              ; preds = %864
  %872 = icmp ult i32 %865, 7
  br i1 %872, label %976, label %873

873:                                              ; preds = %871
  store i32 0, ptr %289, align 4, !tbaa !5
  %874 = and i64 %866, 1
  %875 = icmp eq i32 %865, 7
  br i1 %875, label %901, label %876

876:                                              ; preds = %873
  %877 = and i64 %866, 4294967294
  %878 = add nsw i64 %877, -8
  br label %879

879:                                              ; preds = %879, %876
  %880 = phi i32 [ 0, %876 ], [ %896, %879 ]
  %881 = phi i64 [ 7, %876 ], [ %898, %879 ]
  %882 = phi i64 [ 0, %876 ], [ %899, %879 ]
  %883 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %881
  %884 = load i32, ptr %883, align 4, !tbaa !5
  %885 = trunc i64 %881 to i32
  %886 = add i32 %885, -3
  %887 = mul i32 %886, %884
  %888 = add i32 %887, %880
  %889 = getelementptr inbounds [64 x i32], ptr %9, i64 0, i64 %881
  store i32 %888, ptr %889, align 4, !tbaa !5
  %890 = add nuw nsw i64 %881, 1
  %891 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %890
  %892 = load i32, ptr %891, align 4, !tbaa !5
  %893 = trunc i64 %890 to i32
  %894 = add i32 %893, -3
  %895 = mul i32 %894, %892
  %896 = add i32 %895, %888
  %897 = getelementptr inbounds [64 x i32], ptr %9, i64 0, i64 %890
  store i32 %896, ptr %897, align 4, !tbaa !5
  %898 = add nuw nsw i64 %881, 2
  %899 = add i64 %882, 2
  %900 = icmp eq i64 %882, %878
  br i1 %900, label %901, label %879, !llvm.loop !74

901:                                              ; preds = %879, %873
  %902 = phi i32 [ 0, %873 ], [ %896, %879 ]
  %903 = phi i64 [ 7, %873 ], [ %898, %879 ]
  %904 = icmp eq i64 %874, 0
  br i1 %904, label %913, label %905

905:                                              ; preds = %901
  %906 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %903
  %907 = load i32, ptr %906, align 4, !tbaa !5
  %908 = trunc i64 %903 to i32
  %909 = add i32 %908, -3
  %910 = mul i32 %909, %907
  %911 = add i32 %910, %902
  %912 = getelementptr inbounds [64 x i32], ptr %9, i64 0, i64 %903
  store i32 %911, ptr %912, align 4, !tbaa !5
  br label %913

913:                                              ; preds = %901, %905
  br i1 %230, label %917, label %914

914:                                              ; preds = %913
  %915 = getelementptr inbounds [64 x i32], ptr %9, i64 0, i64 %866
  %916 = load i32, ptr %915, align 4, !tbaa !5
  br label %927

917:                                              ; preds = %913
  %918 = load ptr, ptr @stderr, align 8, !tbaa !11
  %919 = getelementptr inbounds [64 x i32], ptr %9, i64 0, i64 %866
  %920 = load i32, ptr %919, align 4, !tbaa !5
  %921 = uitofp i32 %920 to double
  %922 = uitofp i32 %865 to double
  %923 = fdiv double %921, %922
  %924 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %918, ptr noundef nonnull @.str.36, i32 noundef %587, i32 noundef %865, i32 noundef %920, double noundef %923) #19
  %925 = load ptr, ptr @stderr, align 8, !tbaa !11
  %926 = tail call i32 @fflush(ptr noundef %925)
  br label %927

927:                                              ; preds = %917, %914
  %928 = phi i32 [ %916, %914 ], [ %920, %917 ]
  %929 = icmp ult i32 %664, %594
  br i1 %929, label %930, label %978

930:                                              ; preds = %927
  %931 = zext i32 %664 to i64
  br label %932

932:                                              ; preds = %973, %930
  %933 = phi i64 [ %931, %930 ], [ %974, %973 ]
  %934 = getelementptr inbounds i32, ptr %114, i64 %933
  %935 = load i32, ptr %934, align 4, !tbaa !5
  %936 = icmp eq i32 %935, %587
  br i1 %936, label %963, label %937

937:                                              ; preds = %932
  %938 = zext i32 %935 to i64
  %939 = getelementptr inbounds i8, ptr %49, i64 %938
  %940 = load i64, ptr %939, align 1, !tbaa !14
  %941 = load i64, ptr %589, align 1, !tbaa !14
  %942 = xor i64 %941, %940
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %944, label %953

944:                                              ; preds = %937, %944
  %945 = phi ptr [ %947, %944 ], [ %589, %937 ]
  %946 = phi ptr [ %948, %944 ], [ %939, %937 ]
  %947 = getelementptr inbounds i8, ptr %945, i64 8
  %948 = getelementptr inbounds i8, ptr %946, i64 8
  %949 = load i64, ptr %948, align 1, !tbaa !14
  %950 = load i64, ptr %947, align 1, !tbaa !14
  %951 = xor i64 %950, %949
  %952 = icmp eq i64 %951, 0
  br i1 %952, label %944, label %953

953:                                              ; preds = %944, %937
  %954 = phi ptr [ %589, %937 ], [ %947, %944 ]
  %955 = phi i64 [ %942, %937 ], [ %951, %944 ]
  %956 = tail call i64 @llvm.cttz.i64(i64 %955, i1 true), !range !64
  %957 = lshr i64 %956, 3
  %958 = getelementptr inbounds i8, ptr %954, i64 %957
  %959 = ptrtoint ptr %958 to i64
  %960 = sub i64 %959, %591
  %961 = trunc i64 %960 to i32
  %962 = tail call i32 @llvm.umin.i32(i32 %865, i32 %961)
  br label %963

963:                                              ; preds = %953, %932
  %964 = phi i32 [ %865, %932 ], [ %962, %953 ]
  %965 = add i32 %964, %935
  %966 = icmp ult i32 %935, %965
  br i1 %966, label %967, label %973

967:                                              ; preds = %963
  %968 = zext i32 %935 to i64
  %969 = getelementptr i8, ptr %117, i64 %968
  %970 = add i32 %964, -1
  %971 = zext i32 %970 to i64
  %972 = add nuw nsw i64 %971, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %969, i8 1, i64 %972, i1 false), !tbaa !30
  br label %973

973:                                              ; preds = %967, %963
  %974 = add nuw nsw i64 %933, 1
  %975 = icmp eq i64 %974, %595
  br i1 %975, label %978, label %932, !llvm.loop !75

976:                                              ; preds = %438, %441, %871, %422, %344, %342
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  %977 = add i32 %298, 1
  br label %1083, !llvm.loop !61

978:                                              ; preds = %973, %927
  %979 = shl nuw i64 %866, 32
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  %980 = or disjoint i64 %979, %588
  %981 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef %65, i64 %980, i32 %928, i32 noundef 0, ptr noundef nonnull %49)
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1032, label %983

983:                                              ; preds = %978
  %984 = zext i32 %981 to i64
  %985 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %984
  %986 = load i64, ptr %985, align 4
  %987 = getelementptr inbounds i8, ptr %985, i64 8
  %988 = load i32, ptr %987, align 4
  %989 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef %65, i64 %986, i32 %988, i32 noundef %981, ptr noundef nonnull %49)
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1059, label %991

991:                                              ; preds = %983, %1023
  %992 = phi i32 [ %1030, %1023 ], [ %989, %983 ]
  %993 = phi i64 [ %1025, %1023 ], [ %984, %983 ]
  %994 = phi i32 [ %992, %1023 ], [ %981, %983 ]
  %995 = load i32, ptr %65, align 4, !tbaa !56
  %996 = add i32 %995, -1
  %997 = icmp ugt i32 %996, %994
  br i1 %997, label %998, label %1023

998:                                              ; preds = %991
  %999 = zext i32 %996 to i64
  %1000 = sub nsw i64 %999, %993
  %1001 = and i64 %1000, 1
  %1002 = icmp eq i64 %1001, 0
  br i1 %1002, label %1007, label %1003

1003:                                             ; preds = %998
  %1004 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %993
  %1005 = add nuw nsw i64 %993, 1
  %1006 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1005
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1004, ptr noundef nonnull align 4 dereferenceable(12) %1006, i64 12, i1 false), !tbaa.struct !76
  br label %1007

1007:                                             ; preds = %1003, %998
  %1008 = phi i64 [ %993, %998 ], [ %1005, %1003 ]
  %1009 = add nsw i64 %999, -1
  %1010 = icmp eq i64 %993, %1009
  br i1 %1010, label %1020, label %1011

1011:                                             ; preds = %1007, %1011
  %1012 = phi i64 [ %1017, %1011 ], [ %1008, %1007 ]
  %1013 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1012
  %1014 = add nuw nsw i64 %1012, 1
  %1015 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1014
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1013, ptr noundef nonnull align 4 dereferenceable(12) %1015, i64 12, i1 false), !tbaa.struct !76
  %1016 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1014
  %1017 = add nuw nsw i64 %1012, 2
  %1018 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1017
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1016, ptr noundef nonnull align 4 dereferenceable(12) %1018, i64 12, i1 false), !tbaa.struct !76
  %1019 = icmp eq i64 %1017, %999
  br i1 %1019, label %1020, label %1011, !llvm.loop !77

1020:                                             ; preds = %1011, %1007
  %1021 = load i32, ptr %65, align 4, !tbaa !56
  %1022 = add i32 %1021, -1
  br label %1023

1023:                                             ; preds = %1020, %991
  %1024 = phi i32 [ %1022, %1020 ], [ %996, %991 ]
  store i32 %1024, ptr %65, align 4, !tbaa !56
  %1025 = zext i32 %992 to i64
  %1026 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1025
  %1027 = load i64, ptr %1026, align 4
  %1028 = getelementptr inbounds i8, ptr %1026, i64 8
  %1029 = load i32, ptr %1028, align 4
  %1030 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %65, i64 %1027, i32 %1029, i32 noundef %992, ptr noundef nonnull %49)
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1059, label %991, !llvm.loop !78

1032:                                             ; preds = %978
  %1033 = load i32, ptr %65, align 4, !tbaa !56
  %1034 = icmp ult i32 %1033, %62
  %1035 = select i1 %1034, i32 %1033, i32 %290
  %1036 = add i32 %1035, -1
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1037, i32 2
  %1039 = load i32, ptr %1038, align 4, !tbaa !57
  %1040 = icmp ult i32 %1039, %928
  br i1 %1040, label %1041, label %1053

1041:                                             ; preds = %1032, %1041
  %1042 = phi i64 [ %1049, %1041 ], [ %1037, %1032 ]
  %1043 = phi i32 [ %1048, %1041 ], [ %1036, %1032 ]
  %1044 = phi i32 [ %1043, %1041 ], [ %1035, %1032 ]
  %1045 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1042
  %1046 = zext i32 %1044 to i64
  %1047 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1047, ptr noundef nonnull align 4 dereferenceable(12) %1045, i64 12, i1 false), !tbaa.struct !76
  %1048 = add i32 %1043, -1
  %1049 = zext i32 %1048 to i64
  %1050 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1049, i32 2
  %1051 = load i32, ptr %1050, align 4, !tbaa !57
  %1052 = icmp ult i32 %1051, %928
  br i1 %1052, label %1041, label %1053, !llvm.loop !79

1053:                                             ; preds = %1041, %1032
  %1054 = phi i32 [ %1035, %1032 ], [ %1043, %1041 ]
  %1055 = zext i32 %1054 to i64
  %1056 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1055
  store i64 %980, ptr %1056, align 4, !tbaa.struct !76
  %1057 = getelementptr inbounds i8, ptr %1056, i64 8
  store i32 %928, ptr %1057, align 4, !tbaa.struct !80
  %1058 = add i32 %1035, 1
  store i32 %1058, ptr %65, align 4, !tbaa !56
  br label %1059

1059:                                             ; preds = %1023, %1053, %983
  %1060 = add i32 %865, %298
  br i1 %119, label %1061, label %1083

1061:                                             ; preds = %1059
  %1062 = tail call i64 @clock() #16
  %1063 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1062, i64 %297), !nosanitize !81
  %1064 = extractvalue { i64, i1 } %1063, 1, !nosanitize !81
  br i1 %1064, label %1065, label %1066, !nosanitize !81

1065:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !81
  unreachable, !nosanitize !81

1066:                                             ; preds = %1061
  %1067 = extractvalue { i64, i1 } %1063, 0, !nosanitize !81
  %1068 = icmp sgt i64 %1067, 300000
  br i1 %1068, label %1069, label %1078

1069:                                             ; preds = %1066
  %1070 = tail call i64 @clock() #16
  %1071 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1072 = uitofp i32 %1060 to double
  %1073 = fdiv double %1072, %291
  %1074 = fmul double %1073, 1.000000e+02
  %1075 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1071, ptr noundef nonnull @.str.33, double noundef %1074) #19
  %1076 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1077 = tail call i32 @fflush(ptr noundef %1076)
  br label %1078

1078:                                             ; preds = %1069, %1066
  %1079 = phi i64 [ %1070, %1069 ], [ %297, %1066 ]
  br i1 %230, label %1080, label %1083

1080:                                             ; preds = %1078
  %1081 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1082 = tail call i32 @fflush(ptr noundef %1081)
  br label %1083

1083:                                             ; preds = %1080, %1078, %1059, %976, %302
  %1084 = phi i32 [ %303, %302 ], [ %977, %976 ], [ %1060, %1078 ], [ %1060, %1080 ], [ %1060, %1059 ]
  %1085 = phi i64 [ %297, %302 ], [ %297, %976 ], [ %1079, %1078 ], [ %1079, %1080 ], [ %297, %1059 ]
  %1086 = zext i32 %1084 to i64
  %1087 = icmp ugt i64 %154, %1086
  br i1 %1087, label %295, label %1088

1088:                                             ; preds = %1083
  %1089 = load i32, ptr %65, align 4, !tbaa !56
  br label %1090

1090:                                             ; preds = %1088, %228, %162, %125
  %1091 = phi i32 [ %1089, %1088 ], [ 1, %125 ], [ 1, %162 ], [ 1, %228 ]
  tail call void @free(ptr noundef %113) #16
  tail call void @free(ptr noundef %115) #16
  tail call void @free(ptr noundef %117) #16
  %1092 = icmp ugt i32 %118, 2
  br i1 %1092, label %1093, label %1217

1093:                                             ; preds = %1090
  %1094 = tail call i32 @llvm.umin.i32(i32 %1091, i32 25)
  %1095 = icmp ugt i32 %1091, 1
  br i1 %1095, label %1096, label %1285

1096:                                             ; preds = %1093
  %1097 = zext i32 %1091 to i64
  %1098 = icmp ult i32 %1091, 10
  br i1 %1098, label %1149, label %1099

1099:                                             ; preds = %1096
  %1100 = add nsw i64 %1097, -1
  %1101 = and i64 %1100, 7
  %1102 = icmp eq i64 %1101, 0
  %1103 = select i1 %1102, i64 8, i64 %1101
  %1104 = sub nsw i64 %1100, %1103
  %1105 = add nsw i64 %1104, 1
  br label %1106

1106:                                             ; preds = %1106, %1099
  %1107 = phi i64 [ 0, %1099 ], [ %1144, %1106 ]
  %1108 = phi <4 x i32> [ zeroinitializer, %1099 ], [ %1142, %1106 ]
  %1109 = phi <4 x i32> [ zeroinitializer, %1099 ], [ %1143, %1106 ]
  %1110 = or disjoint i64 %1107, 1
  %1111 = or disjoint i64 %1107, 2
  %1112 = or disjoint i64 %1107, 3
  %1113 = or disjoint i64 %1107, 4
  %1114 = or disjoint i64 %1107, 5
  %1115 = or disjoint i64 %1107, 6
  %1116 = or disjoint i64 %1107, 7
  %1117 = add i64 %1107, 8
  %1118 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1110, i32 1
  %1119 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1111, i32 1
  %1120 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1112, i32 1
  %1121 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1113, i32 1
  %1122 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1114, i32 1
  %1123 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1115, i32 1
  %1124 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1116, i32 1
  %1125 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1117, i32 1
  %1126 = load i32, ptr %1118, align 4, !tbaa !9
  %1127 = load i32, ptr %1119, align 4, !tbaa !9
  %1128 = load i32, ptr %1120, align 4, !tbaa !9
  %1129 = load i32, ptr %1121, align 4, !tbaa !9
  %1130 = insertelement <4 x i32> poison, i32 %1126, i64 0
  %1131 = insertelement <4 x i32> %1130, i32 %1127, i64 1
  %1132 = insertelement <4 x i32> %1131, i32 %1128, i64 2
  %1133 = insertelement <4 x i32> %1132, i32 %1129, i64 3
  %1134 = load i32, ptr %1122, align 4, !tbaa !9
  %1135 = load i32, ptr %1123, align 4, !tbaa !9
  %1136 = load i32, ptr %1124, align 4, !tbaa !9
  %1137 = load i32, ptr %1125, align 4, !tbaa !9
  %1138 = insertelement <4 x i32> poison, i32 %1134, i64 0
  %1139 = insertelement <4 x i32> %1138, i32 %1135, i64 1
  %1140 = insertelement <4 x i32> %1139, i32 %1136, i64 2
  %1141 = insertelement <4 x i32> %1140, i32 %1137, i64 3
  %1142 = add <4 x i32> %1133, %1108
  %1143 = add <4 x i32> %1141, %1109
  %1144 = add nuw i64 %1107, 8
  %1145 = icmp eq i64 %1144, %1104
  br i1 %1145, label %1146, label %1106, !llvm.loop !82

1146:                                             ; preds = %1106
  %1147 = add <4 x i32> %1143, %1142
  %1148 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1147)
  br label %1149

1149:                                             ; preds = %1096, %1146
  %1150 = phi i64 [ 1, %1096 ], [ %1105, %1146 ]
  %1151 = phi i32 [ 0, %1096 ], [ %1148, %1146 ]
  br label %1152

1152:                                             ; preds = %1149, %1152
  %1153 = phi i64 [ %1158, %1152 ], [ %1150, %1149 ]
  %1154 = phi i32 [ %1157, %1152 ], [ %1151, %1149 ]
  %1155 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1153, i32 1
  %1156 = load i32, ptr %1155, align 4, !tbaa !9
  %1157 = add i32 %1156, %1154
  %1158 = add nuw nsw i64 %1153, 1
  %1159 = icmp eq i64 %1158, %1097
  br i1 %1159, label %1160, label %1152, !llvm.loop !83

1160:                                             ; preds = %1152
  %1161 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1162 = add i32 %1091, -1
  %1163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1161, ptr noundef nonnull @.str.18, i32 noundef %1162, i32 noundef %1157) #19
  %1164 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1165 = tail call i32 @fflush(ptr noundef %1164)
  %1166 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1167 = add nsw i32 %1094, -1
  %1168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1166, ptr noundef nonnull @.str.19, i32 noundef %1167) #19
  %1169 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1170 = tail call i32 @fflush(ptr noundef %1169)
  %1171 = zext nneg i32 %1094 to i64
  br label %1172

1172:                                             ; preds = %1210, %1160
  %1173 = phi i64 [ 1, %1160 ], [ %1215, %1210 ]
  %1174 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1173
  %1175 = load i32, ptr %1174, align 4, !tbaa !56
  %1176 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1173, i32 1
  %1177 = load i32, ptr %1176, align 4, !tbaa !9
  %1178 = zext i32 %1175 to i64
  %1179 = icmp ult i64 %100, %1178
  %1180 = add i32 %1177, %1175
  %1181 = zext i32 %1180 to i64
  %1182 = icmp ult i64 %100, %1181
  %1183 = select i1 %1179, i1 true, i1 %1182
  br i1 %1183, label %1399, label %1184

1184:                                             ; preds = %1172
  %1185 = tail call i32 @llvm.umin.i32(i32 %1177, i32 40)
  %1186 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1187 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1173, i32 2
  %1188 = load i32, ptr %1187, align 4, !tbaa !57
  %1189 = trunc i64 %1173 to i32
  %1190 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1186, ptr noundef nonnull @.str.20, i32 noundef %1189, i32 noundef %1177, i32 noundef %1175, i32 noundef %1188) #19
  %1191 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1192 = tail call i32 @fflush(ptr noundef %1191)
  %1193 = getelementptr inbounds i8, ptr %49, i64 %1178
  %1194 = zext nneg i32 %1185 to i64
  %1195 = icmp eq i32 %1177, 0
  br i1 %1195, label %1210, label %1196

1196:                                             ; preds = %1184, %1196
  %1197 = phi i64 [ %1208, %1196 ], [ 0, %1184 ]
  %1198 = getelementptr inbounds i8, ptr %1193, i64 %1197
  %1199 = load i8, ptr %1198, align 1, !tbaa !30
  %1200 = add i8 %1199, -127
  %1201 = icmp ult i8 %1200, -95
  %1202 = select i1 %1201, i8 46, i8 %1199
  %1203 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1204 = zext i8 %1202 to i32
  %1205 = tail call i32 @fputc(i32 %1204, ptr %1203)
  %1206 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1207 = tail call i32 @fflush(ptr noundef %1206)
  %1208 = add nuw nsw i64 %1197, 1
  %1209 = icmp eq i64 %1208, %1194
  br i1 %1209, label %1210, label %1196, !llvm.loop !84

1210:                                             ; preds = %1196, %1184
  %1211 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1212 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1211) #19
  %1213 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1214 = tail call i32 @fflush(ptr noundef %1213)
  %1215 = add nuw nsw i64 %1173, 1
  %1216 = icmp eq i64 %1215, %1171
  br i1 %1216, label %1217, label %1172, !llvm.loop !85

1217:                                             ; preds = %1210, %1090
  %1218 = icmp ugt i32 %1091, 1
  br i1 %1218, label %1219, label %1399

1219:                                             ; preds = %1217
  %1220 = zext i32 %1091 to i64
  %1221 = icmp ult i32 %1091, 10
  br i1 %1221, label %1272, label %1222

1222:                                             ; preds = %1219
  %1223 = add nsw i64 %1220, -1
  %1224 = and i64 %1223, 7
  %1225 = icmp eq i64 %1224, 0
  %1226 = select i1 %1225, i64 8, i64 %1224
  %1227 = sub nsw i64 %1223, %1226
  %1228 = add nsw i64 %1227, 1
  br label %1229

1229:                                             ; preds = %1229, %1222
  %1230 = phi i64 [ 0, %1222 ], [ %1267, %1229 ]
  %1231 = phi <4 x i32> [ zeroinitializer, %1222 ], [ %1265, %1229 ]
  %1232 = phi <4 x i32> [ zeroinitializer, %1222 ], [ %1266, %1229 ]
  %1233 = or disjoint i64 %1230, 1
  %1234 = or disjoint i64 %1230, 2
  %1235 = or disjoint i64 %1230, 3
  %1236 = or disjoint i64 %1230, 4
  %1237 = or disjoint i64 %1230, 5
  %1238 = or disjoint i64 %1230, 6
  %1239 = or disjoint i64 %1230, 7
  %1240 = add i64 %1230, 8
  %1241 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1233, i32 1
  %1242 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1234, i32 1
  %1243 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1235, i32 1
  %1244 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1236, i32 1
  %1245 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1237, i32 1
  %1246 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1238, i32 1
  %1247 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1239, i32 1
  %1248 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1240, i32 1
  %1249 = load i32, ptr %1241, align 4, !tbaa !9
  %1250 = load i32, ptr %1242, align 4, !tbaa !9
  %1251 = load i32, ptr %1243, align 4, !tbaa !9
  %1252 = load i32, ptr %1244, align 4, !tbaa !9
  %1253 = insertelement <4 x i32> poison, i32 %1249, i64 0
  %1254 = insertelement <4 x i32> %1253, i32 %1250, i64 1
  %1255 = insertelement <4 x i32> %1254, i32 %1251, i64 2
  %1256 = insertelement <4 x i32> %1255, i32 %1252, i64 3
  %1257 = load i32, ptr %1245, align 4, !tbaa !9
  %1258 = load i32, ptr %1246, align 4, !tbaa !9
  %1259 = load i32, ptr %1247, align 4, !tbaa !9
  %1260 = load i32, ptr %1248, align 4, !tbaa !9
  %1261 = insertelement <4 x i32> poison, i32 %1257, i64 0
  %1262 = insertelement <4 x i32> %1261, i32 %1258, i64 1
  %1263 = insertelement <4 x i32> %1262, i32 %1259, i64 2
  %1264 = insertelement <4 x i32> %1263, i32 %1260, i64 3
  %1265 = add <4 x i32> %1256, %1231
  %1266 = add <4 x i32> %1264, %1232
  %1267 = add nuw i64 %1230, 8
  %1268 = icmp eq i64 %1267, %1227
  br i1 %1268, label %1269, label %1229, !llvm.loop !86

1269:                                             ; preds = %1229
  %1270 = add <4 x i32> %1266, %1265
  %1271 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1270)
  br label %1272

1272:                                             ; preds = %1219, %1269
  %1273 = phi i64 [ 1, %1219 ], [ %1228, %1269 ]
  %1274 = phi i32 [ 0, %1219 ], [ %1271, %1269 ]
  br label %1275

1275:                                             ; preds = %1272, %1275
  %1276 = phi i64 [ %1281, %1275 ], [ %1273, %1272 ]
  %1277 = phi i32 [ %1280, %1275 ], [ %1274, %1272 ]
  %1278 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1276, i32 1
  %1279 = load i32, ptr %1278, align 4, !tbaa !9
  %1280 = add i32 %1279, %1277
  %1281 = add nuw nsw i64 %1276, 1
  %1282 = icmp eq i64 %1281, %1220
  br i1 %1282, label %1283, label %1275, !llvm.loop !87

1283:                                             ; preds = %1275
  %1284 = icmp ult i32 %1280, 128
  br i1 %1284, label %1399, label %1296

1285:                                             ; preds = %1093
  %1286 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1287 = add nsw i32 %1091, -1
  %1288 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1286, ptr noundef nonnull @.str.18, i32 noundef %1287, i32 noundef 0) #19
  %1289 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1290 = tail call i32 @fflush(ptr noundef %1289)
  %1291 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1292 = add nsw i32 %1094, -1
  %1293 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1291, ptr noundef nonnull @.str.19, i32 noundef %1292) #19
  %1294 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1295 = tail call i32 @fflush(ptr noundef %1294)
  br label %1399

1296:                                             ; preds = %1283
  %1297 = zext i32 %1280 to i64
  %1298 = lshr i64 %1, 2
  %1299 = icmp ugt i64 %1298, %1297
  %1300 = and i1 %119, %1299
  br i1 %1300, label %1301, label %1328

1301:                                             ; preds = %1296
  %1302 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1303 = trunc i64 %1 to i32
  %1304 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1302, ptr noundef nonnull @.str.22, i32 noundef %1280, i32 noundef %1303) #19
  %1305 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1306 = tail call i32 @fflush(ptr noundef %1305)
  %1307 = mul i64 %1, 10
  %1308 = icmp ult i64 %100, %1307
  br i1 %1308, label %1309, label %1316

1309:                                             ; preds = %1301
  %1310 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1311 = lshr i64 %100, 20
  %1312 = trunc i64 %1311 to i32
  %1313 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1310, ptr noundef nonnull @.str.23, i32 noundef %1312) #19
  %1314 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1315 = tail call i32 @fflush(ptr noundef %1314)
  br label %1316

1316:                                             ; preds = %1309, %1301
  %1317 = icmp ugt i32 %102, 4
  br i1 %1317, label %1318, label %1328

1318:                                             ; preds = %1316
  %1319 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1320 = add i32 %67, 1
  %1321 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1319, ptr noundef nonnull @.str.24, i32 noundef %1320) #19
  %1322 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1323 = tail call i32 @fflush(ptr noundef %1322)
  %1324 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1325 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %1324) #19
  %1326 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1327 = tail call i32 @fflush(ptr noundef %1326)
  br label %1328

1328:                                             ; preds = %1318, %1316, %1296
  %1329 = mul i64 %1, 3
  %1330 = icmp ult i64 %1329, %1297
  %1331 = icmp ugt i32 %4, 8
  %1332 = and i1 %1331, %1330
  %1333 = icmp ugt i32 %67, 1
  %1334 = select i1 %1332, i1 %1333, i1 false
  br i1 %1334, label %1335, label %1355

1335:                                             ; preds = %1328, %1335
  %1336 = phi i32 [ %1337, %1335 ], [ %67, %1328 ]
  %1337 = add i32 %1336, -1
  %1338 = lshr i32 %4, %1337
  %1339 = icmp ult i32 %1338, 5
  br i1 %1339, label %1335, label %1340, !llvm.loop !88

1340:                                             ; preds = %1335
  br i1 %119, label %1341, label %1355

1341:                                             ; preds = %1340
  %1342 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1343 = trunc i64 %1 to i32
  %1344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1342, ptr noundef nonnull @.str.26, i32 noundef %1280, i32 noundef %1343) #19
  %1345 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1346 = tail call i32 @fflush(ptr noundef %1345)
  %1347 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1347, ptr noundef nonnull @.str.27, i32 noundef %1337) #19
  %1349 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1350 = tail call i32 @fflush(ptr noundef %1349)
  %1351 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1352 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %1351) #19
  %1353 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1354 = tail call i32 @fflush(ptr noundef %1353)
  br label %1355

1355:                                             ; preds = %1341, %1340, %1328
  %1356 = tail call i32 @llvm.umax.i32(i32 %1091, i32 2)
  %1357 = zext i32 %1356 to i64
  br label %1358

1358:                                             ; preds = %1366, %1355
  %1359 = phi i64 [ 1, %1355 ], [ %1367, %1366 ]
  %1360 = phi i32 [ 0, %1355 ], [ %1363, %1366 ]
  %1361 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1359, i32 1
  %1362 = load i32, ptr %1361, align 4, !tbaa !9
  %1363 = add i32 %1362, %1360
  %1364 = zext i32 %1363 to i64
  %1365 = icmp ugt i64 %1364, %1
  br i1 %1365, label %1369, label %1366

1366:                                             ; preds = %1358
  %1367 = add nuw nsw i64 %1359, 1
  %1368 = icmp eq i64 %1367, %1357
  br i1 %1368, label %1374, label %1358, !llvm.loop !89

1369:                                             ; preds = %1358
  %1370 = and i64 %1359, 4294967294
  %1371 = icmp eq i64 %1370, 0
  br i1 %1371, label %1394, label %1372

1372:                                             ; preds = %1369
  %1373 = and i64 %1359, 4294967295
  br label %1374

1374:                                             ; preds = %1366, %1372
  %1375 = phi i64 [ %1373, %1372 ], [ %1357, %1366 ]
  %1376 = phi i32 [ %1360, %1372 ], [ %1363, %1366 ]
  %1377 = getelementptr inbounds i8, ptr %0, i64 %1
  br label %1378

1378:                                             ; preds = %1387, %1374
  %1379 = phi i64 [ 1, %1374 ], [ %1392, %1387 ]
  %1380 = phi ptr [ %1377, %1374 ], [ %1385, %1387 ]
  %1381 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1379, i32 1
  %1382 = load i32, ptr %1381, align 4, !tbaa !9
  %1383 = zext i32 %1382 to i64
  %1384 = sub nsw i64 0, %1383
  %1385 = getelementptr inbounds i8, ptr %1380, i64 %1384
  %1386 = icmp ult ptr %1385, %0
  br i1 %1386, label %1399, label %1387

1387:                                             ; preds = %1378
  %1388 = getelementptr inbounds %struct.dictItem, ptr %65, i64 %1379
  %1389 = load i32, ptr %1388, align 4, !tbaa !56
  %1390 = zext i32 %1389 to i64
  %1391 = getelementptr inbounds i8, ptr %49, i64 %1390
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1385, ptr nonnull align 1 %1391, i64 %1383, i1 false)
  %1392 = add nuw nsw i64 %1379, 1
  %1393 = icmp eq i64 %1392, %1375
  br i1 %1393, label %1394, label %1378, !llvm.loop !90

1394:                                             ; preds = %1387, %1369
  %1395 = phi i32 [ %1360, %1369 ], [ %1376, %1387 ]
  %1396 = zext i32 %1395 to i64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  store i32 %56, ptr %10, align 8, !tbaa.struct !76
  %1397 = getelementptr inbounds i8, ptr %10, i64 4
  store <2 x i32> %58, ptr %1397, align 4
  %1398 = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1396, i64 noundef %1, ptr noundef nonnull %49, ptr noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %10)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %1399

1399:                                             ; preds = %1172, %1378, %1394, %1285, %1283, %1217, %106, %104
  %1400 = phi i64 [ %1398, %1394 ], [ -70, %104 ], [ -34, %106 ], [ -34, %1285 ], [ -34, %1217 ], [ -34, %1283 ], [ -1, %1378 ], [ -1, %1172 ]
  tail call void @free(ptr noundef nonnull %65) #16
  br label %1401

1401:                                             ; preds = %99, %1399
  %1402 = phi i64 [ -64, %99 ], [ %1400, %1399 ]
  tail call void @free(ptr noundef %49) #16
  br label %1403

1403:                                             ; preds = %6, %47, %44, %1401
  %1404 = phi i64 [ %1402, %1401 ], [ 0, %44 ], [ -64, %47 ], [ 0, %6 ]
  ret i64 %1404
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZDICT_fastCover_params_t, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %7 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %6, i64 0, i32 1
  store i32 8, ptr %7, align 4, !tbaa !91
  %8 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %6, i64 0, i32 3
  store i32 4, ptr %8, align 4, !tbaa !94
  %9 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %6, i64 0, i32 9
  store i32 3, ptr %9, align 4, !tbaa !95
  %10 = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  ret i64 %10
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZDICT_params_t, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %8 = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %7)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly byval(%struct.ZDICT_params_t) align 8 %6) unnamed_addr #1 {
  %8 = load i32, ptr %6, align 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 3, i32 %8
  %11 = getelementptr inbounds %struct.ZDICT_params_t, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !9
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !tbaa !11
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  %17 = load ptr, ptr @stderr, align 8, !tbaa !11
  %18 = tail call i32 @fflush(ptr noundef %17)
  %19 = load ptr, ptr @stderr, align 8, !tbaa !11
  %20 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %19) #19
  %21 = load ptr, ptr @stderr, align 8, !tbaa !11
  %22 = tail call i32 @fflush(ptr noundef %21)
  br label %23

23:                                               ; preds = %7, %14
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = add i64 %2, -8
  %26 = getelementptr inbounds i8, ptr %0, i64 %2
  %27 = sub i64 0, %1
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %24, i64 noundef %25, i32 noundef %10, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %28, i64 noundef %1, i32 noundef %12)
  %30 = icmp ult i64 %29, -119
  %31 = add i64 %29, 8
  br i1 %30, label %32, label %48

32:                                               ; preds = %23
  store i32 -332356553, ptr %0, align 1, !tbaa !5
  %33 = tail call i64 @ZSTD_XXH64(ptr nocapture noundef nonnull %28, i64 noundef %1, i64 noundef 0) #18
  %34 = urem i64 %33, 2147450880
  %35 = trunc i64 %34 to i32
  %36 = add nuw nsw i32 %35, 32768
  %37 = getelementptr inbounds %struct.ZDICT_params_t, ptr %6, i64 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %36, i32 %38
  %41 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %40, ptr %41, align 1, !tbaa !5
  %42 = add i64 %31, %1
  %43 = icmp ult i64 %42, %2
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = getelementptr inbounds i8, ptr %0, i64 %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %28, i64 %1, i1 false)
  br label %46

46:                                               ; preds = %44, %32
  %47 = tail call i64 @llvm.umin.i64(i64 %42, i64 %2)
  br label %48

48:                                               ; preds = %23, %46
  %49 = phi i64 [ %47, %46 ], [ %29, %23 ]
  ret i64 %49
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
define internal fastcc i32 @ZDICT_tryMerge(ptr nocapture noundef %0, i64 %1, i32 %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = trunc i64 %1 to i32
  %7 = lshr i64 %1, 32
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %0, align 4, !tbaa !56
  %10 = add i32 %8, %6
  %11 = icmp ugt i32 %9, 1
  br i1 %11, label %12, label %159

12:                                               ; preds = %5
  %13 = zext i32 %3 to i64
  %14 = zext i32 %9 to i64
  br label %22

15:                                               ; preds = %65
  br i1 %11, label %16, label %159

16:                                               ; preds = %15
  %17 = getelementptr inbounds i8, ptr %4, i64 1
  %18 = and i64 %1, 4294967295
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = zext i32 %3 to i64
  %21 = zext i32 %9 to i64
  br label %68

22:                                               ; preds = %12, %65
  %23 = phi i64 [ 1, %12 ], [ %66, %65 ]
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %65, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %23
  %27 = load i32, ptr %26, align 4, !tbaa !56
  %28 = icmp ule i32 %27, %6
  %29 = icmp ugt i32 %27, %10
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %25
  %32 = trunc i64 %23 to i32
  %33 = sub i32 %27, %6
  %34 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %23, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 4, !tbaa !9
  store i32 %6, ptr %26, align 4, !tbaa !56
  %37 = mul i32 %33, %2
  %38 = udiv i32 %37, %8
  %39 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %23, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !57
  %41 = lshr i32 %8, 3
  %42 = add i32 %38, %41
  %43 = add i32 %42, %40
  store i32 %43, ptr %39, align 4, !tbaa !57
  %44 = load i64, ptr %26, align 4, !tbaa.struct !76
  %45 = icmp ugt i32 %32, 1
  br i1 %45, label %46, label %60

46:                                               ; preds = %31, %53
  %47 = phi i64 [ %48, %53 ], [ %23, %31 ]
  %48 = add nsw i64 %47, -1
  %49 = and i64 %48, 4294967295
  %50 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %49, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !57
  %52 = icmp ult i32 %51, %43
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %49
  %55 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %55, ptr noundef nonnull align 4 dereferenceable(12) %54, i64 12, i1 false), !tbaa.struct !76
  %56 = and i64 %48, 4294967294
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %60, label %46, !llvm.loop !96

58:                                               ; preds = %46
  %59 = trunc i64 %47 to i32
  br label %60

60:                                               ; preds = %53, %58, %31
  %61 = phi i32 [ %32, %31 ], [ %59, %58 ], [ 1, %53 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %62
  store i64 %44, ptr %63, align 4, !tbaa.struct !76
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  store i32 %43, ptr %64, align 4, !tbaa.struct !80
  br label %159

65:                                               ; preds = %25, %22
  %66 = add nuw nsw i64 %23, 1
  %67 = icmp eq i64 %66, %14
  br i1 %67, label %15, label %22, !llvm.loop !97

68:                                               ; preds = %16, %156
  %69 = phi i64 [ 1, %16 ], [ %157, %156 ]
  %70 = icmp eq i64 %69, %20
  br i1 %70, label %156, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !56
  %74 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %69, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !9
  %76 = add i32 %75, %73
  %77 = icmp uge i32 %76, %6
  %78 = icmp ult i32 %73, %6
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %120

80:                                               ; preds = %71
  %81 = trunc i64 %69 to i32
  %82 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %10, i32 %76), !nosanitize !81
  %83 = extractvalue { i32, i1 } %82, 0, !nosanitize !81
  %84 = extractvalue { i32, i1 } %82, 1, !nosanitize !81
  br i1 %84, label %85, label %86, !nosanitize !81

85:                                               ; preds = %80
  tail call void @llvm.ubsantrap(i8 21) #20, !nosanitize !81
  unreachable, !nosanitize !81

86:                                               ; preds = %80
  %87 = lshr i32 %8, 3
  %88 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %69, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !57
  %90 = add i32 %89, %87
  store i32 %90, ptr %88, align 4, !tbaa !57
  %91 = icmp sgt i32 %83, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = add i32 %83, %75
  store i32 %93, ptr %74, align 4, !tbaa !9
  %94 = mul i32 %83, %2
  %95 = udiv i32 %94, %8
  %96 = add i32 %95, %90
  store i32 %96, ptr %88, align 4, !tbaa !57
  br label %97

97:                                               ; preds = %92, %86
  %98 = phi i32 [ %96, %92 ], [ %90, %86 ]
  %99 = load i64, ptr %72, align 4, !tbaa.struct !76
  %100 = icmp ugt i32 %81, 1
  br i1 %100, label %101, label %115

101:                                              ; preds = %97, %108
  %102 = phi i64 [ %103, %108 ], [ %69, %97 ]
  %103 = add nsw i64 %102, -1
  %104 = and i64 %103, 4294967295
  %105 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %104, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !57
  %107 = icmp ult i32 %106, %98
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %104
  %110 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %110, ptr noundef nonnull align 4 dereferenceable(12) %109, i64 12, i1 false), !tbaa.struct !76
  %111 = and i64 %103, 4294967294
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %115, label %101, !llvm.loop !98

113:                                              ; preds = %101
  %114 = trunc i64 %102 to i32
  br label %115

115:                                              ; preds = %108, %113, %97
  %116 = phi i32 [ %81, %97 ], [ %114, %113 ], [ 1, %108 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %117
  store i64 %99, ptr %118, align 4, !tbaa.struct !76
  %119 = getelementptr inbounds i8, ptr %118, i64 8
  store i32 %98, ptr %119, align 4, !tbaa.struct !80
  br label %159

120:                                              ; preds = %71
  %121 = zext i32 %73 to i64
  %122 = getelementptr inbounds i8, ptr %4, i64 %121
  %123 = load i64, ptr %122, align 1, !tbaa !14
  %124 = load i64, ptr %19, align 1, !tbaa !14
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %120
  %127 = zext i32 %75 to i64
  %128 = icmp eq i32 %75, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %126, %136
  %130 = phi i64 [ %137, %136 ], [ 0, %126 ]
  %131 = getelementptr inbounds i8, ptr %122, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !30
  %133 = getelementptr inbounds i8, ptr %19, i64 %130
  %134 = load i8, ptr %133, align 1, !tbaa !30
  %135 = icmp eq i8 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = add nuw nsw i64 %130, 1
  %138 = icmp eq i64 %137, %127
  br i1 %138, label %142, label %129, !llvm.loop !99

139:                                              ; preds = %129, %126
  %140 = phi i64 [ 0, %126 ], [ %130, %129 ]
  %141 = icmp eq i64 %140, %127
  br i1 %141, label %142, label %156

142:                                              ; preds = %139, %136
  %143 = trunc i64 %69 to i32
  %144 = sub i32 %8, %75
  %145 = tail call i32 @llvm.umax.i32(i32 %144, i32 1)
  %146 = zext i32 %145 to i64
  store i32 %6, ptr %72, align 4, !tbaa !56
  %147 = zext i32 %2 to i64
  %148 = mul nuw i64 %146, %147
  %149 = udiv i64 %148, %7
  %150 = trunc i64 %149 to i32
  %151 = getelementptr inbounds %struct.dictItem, ptr %0, i64 %69, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !57
  %153 = add i32 %152, %150
  store i32 %153, ptr %151, align 4, !tbaa !57
  %154 = add i32 %75, 1
  %155 = tail call i32 @llvm.umin.i32(i32 %154, i32 %8)
  store i32 %155, ptr %74, align 4, !tbaa !9
  br label %159

156:                                              ; preds = %120, %139, %68
  %157 = add nuw nsw i64 %69, 1
  %158 = icmp eq i64 %157, %21
  br i1 %158, label %159, label %68, !llvm.loop !100

159:                                              ; preds = %156, %5, %15, %142, %115, %60
  %160 = phi i32 [ %61, %60 ], [ %116, %115 ], [ %143, %142 ], [ 0, %15 ], [ 0, %5 ], [ 0, %156 ]
  ret i32 %160
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #15

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
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 4}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{i32 0, i32 33}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17, !19, !18}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !17, !19, !18}
!23 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!24 = !{!25, !6, i64 0}
!25 = !{!"", !26, i64 0, !10, i64 28}
!26 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!27 = !{!28, !12, i64 16}
!28 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !15, i64 56, !15, i64 64, !6, i64 72, !6, i64 76}
!29 = !{!28, !12, i64 24}
!30 = !{!7, !7, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !17}
!34 = !{!28, !12, i64 8}
!35 = !{!28, !12, i64 0}
!36 = !{!28, !12, i64 48}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !32}
!39 = !{!28, !12, i64 40}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !32}
!42 = !{!28, !12, i64 32}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !32}
!45 = !{!46, !6, i64 0}
!46 = !{!"SeqDef_s", !6, i64 0, !47, i64 4, !47, i64 6}
!47 = !{!"short", !7, i64 0}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17, !18, !19}
!51 = distinct !{!51, !17, !19, !18}
!52 = distinct !{!52, !17, !18, !19}
!53 = distinct !{!53, !17, !19, !18}
!54 = distinct !{!54, !17, !18, !19}
!55 = distinct !{!55, !17, !19, !18}
!56 = !{!10, !6, i64 0}
!57 = !{!10, !6, i64 8}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !32}
!61 = distinct !{!61, !17}
!62 = !{!47, !47, i64 0}
!63 = distinct !{!63, !17}
!64 = !{i64 0, i64 65}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = !{i64 0, i64 4, !5}
!81 = !{}
!82 = distinct !{!82, !17, !18, !19}
!83 = distinct !{!83, !17, !19, !18}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17, !18, !19}
!87 = distinct !{!87, !17, !19, !18}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = !{!92, !6, i64 4}
!92 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !93, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !10, i64 44}
!93 = !{!"double", !7, i64 0}
!94 = !{!92, !6, i64 12}
!95 = !{!92, !6, i64 44}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
